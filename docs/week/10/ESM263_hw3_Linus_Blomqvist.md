---
title: "ESM 263: Assignment 3"
author: "Linus Blomqvist"
output:
  html_document:
    code_folding: show
---

```{r setup}
# Set knitr options: show code and do not show messages
knitr::opts_knit$set(root.dir = rprojroot::find_rstudio_root_file())
knitr::opts_chunk$set(echo = TRUE, message = FALSE, warning = FALSE)
```

## Preliminaries
If you've never done GIS in R, you might need to install GDAL and RGDAL on your machine. Instructions can be found [here](https://r-spatial.github.io/sf/). For the spatial work I do below, you'll also need the `sf` package (for vector data) and the `raster` package for raster data. These are all automatically installed and loaded in the chunk below.

```{r load_packages}
# Load packages
library("sf")
library("raster")
library("tmap")
library("tidyverse")
library("units")
#pacman::p_load(units, scales, rgdal, rgeos, sp)
```

## The vector approach
I will use a vector approach to this assignment, where I will use the various layers to create a set of new features (multipolygons) that represent suitable areas by each criterion. The intersection of all these features is the set of suitable areas for wind development.

## Read in data
We're given three data files for this assignment: `basemaps.gpkg`, `inputs.gpkg`, and `Wind2002.tif`. Let's see what's in `inputs.gpkg`:

```{r}
# Create a list of layer names of inputs.gpkg and display them
gpgk_path = "data_hw3/inputs.gpkg"
input_layers <- st_layers(gpgk_path)$name
input_layers
```

We could read these into a single `sf` object using a for loop, but in this case I'll keep them as separate objects, so I'll just read them in one by one. The `read_sf` function will automatically recognize the format of the file to be read in, so we just need to specify the layer (using the list of layer names created in the previous code chunk).

```{r}
# Read in input layers individually

airports <- read_sf(gpgk_path, layer = "airports")
roads <- read_sf(gpgk_path, layer = "roads")
fireLRA <- read_sf(gpgk_path, layer = "FireLRA")
fireSRA <- read_sf(gpgk_path, layer = "FireSRA")
county <- read_sf(gpgk_path, layer =  "county")
urban <- read_sf(gpgk_path, layer = "urban")
parcels <- read_sf(gpgk_path, layer = "Parcels")
```

The `roads` layer (along with all the other layers) has the following CRS:
```{r}
# Check CRS
st_crs(roads)$input
```

Finally, we read in the wind raster data. For this we need to use the `raster` function from the `raster` package.

```{r}
# Read in raster
wind_raster <- raster("data_hw3/wind.tif")
```

```{r}
reclass_row1 = c(0, 6, 0)
reclass_row2 = c(6, 100, 1)
reclass_table = rbind(reclass_row1, reclass_row2)

wind_raster = reclassify(wind_raster, reclass_table)
```

## Wind
I now convert the raster data to polygons. I use the function `rasterToPolygons` with the option to dissolve, which gives me just one multipolygon per wind speed class. I then use `st_as_sf` to convert it to an `sf` object. I'm also going to rename the wind variable.

```{r wind_raster_to_vector, message = FALSE}
# Convert raster data to polygons, then turn that into sf object
wind_sf <- wind_raster %>%
  rasterToPolygons(dissolve = TRUE) %>% # turn raster to vector
  st_as_sf() # make it sf object
```
It doesn't hurt to check that this object has the same CRS as the ones previously loaded:
```{r}
# Check that CRS's are identical
st_crs(wind_sf) == st_crs(roads)
```

Since we require wind speeds above 6 m/s, I filter for mask values == 1

```{r}
# Subset to wind classes 3 to 7
wind_suitable <- wind_sf %>%
  filter(wind %in% 1:1)
```

We can map this now.

```{r}
tm_shape(county) +
  tm_borders(col = "black", 
             lwd = 1.5) +
  tm_shape(wind_suitable) +
  tm_fill(col = "lightgreen") +
  tm_layout(main.title = "Wind speed of at least 6 m/s", 
            frame = FALSE, 
            main.title.size = 1.5)
```

## Roads
This requirement states that sites need to be within 7.5 km of a major road. The `roads` data comes in the form of MULTILINESTRING (you can check this with `st_geometry_type(roads, by_geometry = FALSE))`, so we can just make a buffer around those lines. I'll also clip the roads buffer to the county so it doesn't unnecessarily extend outside it.

```{r}
# 7.5 km buffer around roads
road_suitable <- roads %>%
  st_buffer(dist = 7500) %>% # first take buffer
  st_union() # then dissolve

# Clip roads buffer layer to the county
road_suitable <- st_intersection(road_suitable, county)
```

We can plot this to make sure it looks reasonable.

```{r}
tm_shape(county) +
  tm_borders(col = "black", 
             lwd = 1.5) +
  tm_shape(road_suitable) +
  tm_fill(col = "lightgreen") +
  tm_shape(roads) +
  tm_lines(col = "red", 
           lwd = 0.5) +
  tm_layout(frame = FALSE) +
  tm_add_legend(type = "line", 
                col = "red", 
                labels = "Road") +
  tm_add_legend(type = "fill", 
                col = "lightgreen", 
                labels = "Within 7.5 km of road")
```

## Airports

We need to identify areas that are more than 7.5 km from an airport. This is equivalent to being inside the county but outside an airport buffer. First I'll make a buffer and dissolve it into a single multipolygon.

```{r}
# Create buffer around airports and dissolve
airport_buffer <- airports %>%
  st_buffer(dist = 7500) %>% # buffer
  st_union() # dissolve
```

The operation we need to find suitable areas here is `st_difference` which, with arguments $x$ and $y$, gives us the area that is in $y$ but not in $x$.

```{r}
# Take difference with county to create layer for suitable area
airports_suitable <- st_difference(county, airport_buffer)
```

We can plot this to make sure we got it right:

```{r}
tm_shape(county) +
  tm_borders(col = "black", 
             lwd = 1.5) +
  tm_shape(airports) +
  tm_polygons(col = "red") +
  tm_shape(airports_suitable) +
  tm_fill(col = "lightgreen") +
  tm_layout(frame = FALSE) +
  tm_add_legend(type = "fill", 
                col = "red", 
                labels = "Airports") +
  tm_add_legend(type = "fill", 
                col = "lightgreen", 
                labels = "> 7.5 km from airport")
```

## Urban area

Similar to the above, we need to identify areas not within 1 mile of an existing urban area. As for airports, we make a buffer and then take the difference between the buffer and the county.

```{r}
# Create urban buffer and dissolve
urban_buffer <- urban %>%
  st_buffer(dist = 1609) %>%
  st_union()

# Take difference with county to create layer for suitable area
urban_suitable <- st_difference(county, urban_buffer)
```

And plot it as a sanity check:

```{r}
tm_shape(county) +
  tm_borders(col = "black", 
             lwd = 1.5) +
  tm_shape(urban_suitable) +
  tm_fill(col = "lightgreen") +
  tm_shape(urban) +
  tm_fill(col = "red") +
  tm_layout(frame = FALSE) +
  tm_add_legend(type = "fill", 
                col = "red", 
                labels = "Urban area") +
  tm_add_legend(type = "fill", 
                col = "lightgreen", 
                labels = "> 1 mile from urban area")
```

## Fire

For Fire LRA, the data are already filtered to only include areas with very high fire risk. For fire SRA, I'll filter for features with `HAZ_CODE = 3`. I will take the union of the two, make it a single multipolygon, and take the difference with the county.

```{r}
# Create fire zone layer
fire_zones <- fireSRA %>% # start with SRA
  filter(HAZ_CODE == 3) %>% # subset to haz code 3
  st_union() %>% st_buffer(1) # dissolve
  #st_union(fireLRA) %>% # merge with LRA

# Take difference with county to create layer for suitable area
fire_suitable <- st_difference(county, fire_zones) 
```

We can now look at the fire zones and the areas outside them.

```{r}
tm_shape(county) +
  tm_borders(col = "black", 
             lwd = 1.5) +
  tm_shape(fire_zones) +
  tm_fill(col = "red") +
  tm_add_legend(type = "fill", 
                col = "red", 
                labels = "Fire zones") +
  tm_shape(fire_suitable) +
  tm_fill(col = "lightgreen") +
  tm_layout(frame = FALSE) +
  tm_add_legend(type = "fill", 
                col = "lightgreen", 
                labels = "Outside fire zones")
```
## Public land

We want to exclude any areas that are on public land. Public land in the `parcels` data have a USECODE that starts with 6, 7, or 8, so we can first exclude that to create a public lands layer.

```{r}
# Subset for public land use codes
public_land <- parcels %>%
  filter(USECODE >= 6000 & USECODE < 9000) %>% # pick use codes starting with 6, 7, 8
  st_union() # dissolve
```

As before, we take the difference in order to find the areas that are not on public land.

```{r}
# Take difference with county to create layer for suitable area
public_land_suitable <- st_difference(county, public_land)
```

Let's map this.

```{r}
tm_shape(county) +
  tm_borders(col = "black", 
             lwd = 1.5) +
  tm_shape(public_land) +
  tm_fill(col = "red") +
  tm_shape(public_land_suitable) +
  tm_fill(col = "lightgreen") +
  tm_layout(frame = FALSE) +
  tm_add_legend(type = "fill", 
                col = "red", 
                labels = "Public land") +
  tm_add_legend(type = "fill", 
                col = "lightgreen", 
                labels = "Outside public land")
```

## Final list
Now we have six layers where wind development is suitable by corresponding criteria. To find out where wind is suitable by all criteria, we find the intersection of all these layers.

```{r}
# Intersection of all suitable areas
suitable_all <- fire_suitable %>% 
  st_intersection(wind_suitable) %>% 
  st_intersection(road_suitable) %>% 
  st_intersection(airports_suitable) %>% 
  st_intersection(public_land_suitable) %>% 
  st_intersection(urban_suitable) 
```

Now we have one more thing to do, based on this part of the assignment:

* The Energy Division wants a ranked list of 10 potential sites, each with at least 4 contiguous hectares

I take this to mean that each suitable polygon has to be at least 4 hectares. What I have in my `suitable_all` layer is a multipolygon with only one layer, so I'll transform ("cast") this into separate polygons.

```{r}
# Turn suitable areas into individual polygons
suitable_all <- st_collection_extract(suitable_all, "POLYGON")
```

~~suitable_all <- st_cast(suitable_all, "POLYGON")~~

Now let's calculate the area for each of these polygons, and then create a list of polygons that are at least 4 hectares. Since we also want to rank the polygons, I'll select the polygons with the highest wind speed class (7), then rank by area, and pick the top ten.

```{r}
# Calculate area of each polygon
suitable_all$area <- suitable_all %>%
  st_area() %>%
  drop_units() # need to drop units to make calculations below

# Top ten
final_list <- suitable_all %>%
  filter(area >= 40000) %>% # at least 4 ha
  arrange(desc(area)) %>% # sort by area
  head(10) # select the first 10
```

Now we can have a closer look at these top 10 areas (in red), with the full extent of suitable areas in green. In this case, I'll use an interactive map where you can zoom in and out, choose your preferred base layer, etc.

```{r}
tmap_mode("view")
tm_shape(suitable_all) +
  tm_fill(col = "green", 
          alpha = 0.5) +
  tm_shape(final_list) +
  tm_polygons(col = "red")
```

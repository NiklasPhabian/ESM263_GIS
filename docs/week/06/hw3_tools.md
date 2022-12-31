## Tools for assignment 3

**CONTENTS**
- TOC
{:toc}
### Vector tools

- data
  - [Natural Earth low resolution](naturalearth_lowres.gpkg)

- reference
  - QGIS Training Manual: [6.2. Vector Analysis](https://docs.qgis.org/3.22/en/docs/training_manual/vector_analysis/basic_analysis.html)


#### Buffer

- [manual](https://docs.qgis.org/3.22/en/docs/user_manual/processing_algs/qgis/vectorgeometry.html#qgisbuffer)

#### Difference

- [manual](https://docs.qgis.org/3.22/en/docs/user_manual/processing_algs/qgis/vectoroverlay.html#qgisdifference)

#### Extract by attribute

- [manual](https://docs.qgis.org/3.22/en/docs/user_manual/processing_algs/qgis/vectorselection.html#qgisextractbyattribute)

#### Merge vector layers

- [manual](https://docs.qgis.org/3.22/en/docs/user_manual/processing_algs/qgis/vectorgeneral.html#qgismergevectorlayers)

#### Field calculator

- [manual](https://docs.qgis.org/3.22/en/docs/user_manual/processing_algs/qgis/vectortable.html#qgisfieldcalculator)

#### Rasterize (vector to raster)

- [manual](https://docs.qgis.org/3.22/en/docs/user_manual/processing_algs/gdal/vectorconversion.html#gdalrasterize)
- Clear the *Assign a specified nodata value* field

### Raster tools

- data (download all of these into the same folder)
  - [Landsat 7 ETM image](Landsat-7-ETM-042036-2005110.tif)
  - [SB county outline](SBCounty.gpkg)
  - [NDVI.qgz](NDVI.qgz)
    - A QGIS project with a sample NDVI model that also illustrates the problem with the *Clip raster by mask layer* tool.
- reference
  - [Landsat imagery and NDVI](Landsat_and_NDVI.md)
  - QGIS Training Manual
    - [7.1. Working with Raster Data](https://docs.qgis.org/3.22/en/docs/training_manual/rasters/data_manipulation.html)
    - [7.2. Lesson: Changing Raster Symbology](https://docs.qgis.org/3.22/en/docs/training_manual/rasters/changing_symbology.html)
  


#### Raster calculator

- [manual](https://docs.qgis.org/3.22/en/docs/user_manual/processing_algs/gdal/rastermiscellaneous.html#gdalrastercalculator)
- `A.astype(float)`

#### Reclassify by table

- [manual](https://docs.qgis.org/3.22/en/docs/user_manual/processing_algs/qgis/rasteranalysis.html#qgisreclassifybytable)


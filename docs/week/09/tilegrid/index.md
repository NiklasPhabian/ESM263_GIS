## MODIS tilegrid

![](MODIS_sinusoidal_grid.gif)

### Find Upper-Left Corner

```
x_0 = 10 * h * n_x * l_x
y_0 = -10 * v * n_y * l_y
```

For 1 km Resolution:
```
n_y = 1200
n_x = 1200
l_x = 926.625433055556
l_y = -926.625433055556
```

For California/SB: 
```
h=08
v=05
```

Therefore:
```
x_0=11119505.196667 
y_0=-4447802.078667
```

### PROJ String

```
+proj=sinu +lon_0=0 +x_0=11119505.196667 +y_0=-4447802.078667 +R=6371007.181 +to_meter=926.625433055556 +no_defs +type=crs 
```

### WKT


```
PROJCRS["unknown",
    BASEGEOGCRS["unknown",
        DATUM["unknown",
            ELLIPSOID["unknown",6371007,0,
                LENGTHUNIT["metre",1,]]],
        PRIMEM["Greenwich",0,
            ANGLEUNIT["degree",0.0174532925199433]]],
    CONVERSION["unknown",
        METHOD["Sinusoidal"],
        PARAMETER["Longitude of natural origin",0,
            ANGLEUNIT["degree",0.0174532925199433]],
        PARAMETER["False easting",11119505.196667,
            LENGTHUNIT["metre",1]],
        PARAMETER["False northing",-4447802.078667,
            LENGTHUNIT["metre",1]]],
    CS[Cartesian,2],
        AXIS["(E)",east,
            ORDER[1],
            LENGTHUNIT["metre",926.625433055556]],
        AXIS["(N)",north,
            ORDER[2],
            LENGTHUNIT["metre",-926.625433055556]]]
```


More explicit:

```
PROJCRS["unknown",
    BASEGEOGCRS["unknown",
        DATUM["unknown",
            ELLIPSOID["unknown",6371007,0,
                LENGTHUNIT["metre",1,
                    ID["EPSG",9001]]]],
        PRIMEM["Greenwich",0,
            ANGLEUNIT["degree",0.0174532925199433],
            ID["EPSG",8901]]],
    CONVERSION["unknown",
        METHOD["Sinusoidal"],
        PARAMETER["Longitude of natural origin",0,
            ANGLEUNIT["degree",0.0174532925199433],
            ID["EPSG",8802]],
        PARAMETER["False easting",11119505.196667,
            LENGTHUNIT["metre",1],
            ID["EPSG",8806]],
        PARAMETER["False northing",-4447802.078667,
            LENGTHUNIT["metre",1],
            ID["EPSG",8807]]],
    CS[Cartesian,2],
        AXIS["(E)",east,
            ORDER[1],
            LENGTHUNIT["metre",926.625433055556,
                ID["EPSG",9001]]],
        AXIS["(N)",north,
            ORDER[2],
            LENGTHUNIT["metre",-926.625433055556,
                ID["EPSG",9001]]]]                
```

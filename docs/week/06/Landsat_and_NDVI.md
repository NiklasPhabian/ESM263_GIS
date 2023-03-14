## Landsat imagery and NDVI
[What are the band designations for the Landsat satellites?](https://www.usgs.gov/faqs/what-are-band-designations-landsat-satellites)

### Landsat 7 imagery
- [Landsat 7 ETM+](https://landsat.gsfc.nasa.gov/the-enhanced-thematic-mapper-plus-etm/) sensor
- Videos
    - [9 Things About Landsat 9](https://www.youtube.com/watch?v=DGE-N8_LQBo)
    - [Landsat: Celebrating 50 Years](https://www.youtube.com/watch?v=7XKVSTX1vdE)
    - [Landsat 8: Band by Band](https://www.youtube.com/watch?v=A6WzAc1FTeA)
- 30m resolution.
- Band values are 8-bit unsigned integers (0..255)
- spectral bands:

| band |    from  |      to  | note                       |
| ---: | ------:  | ------:  | :------------------------- |
|    1 |   450 nm |   515 nm | visible: blue              |
|    2 |   525 nm |   605 nm | visible: green             |
|    3 |   630 nm |   690 nm | visible: red               |
|    4 |   775 nm |   900 nm | near-infrared (NIR)        |
|    5 |  1550 nm |  1750 nm | short-wave infrared (SWIR) |
|    6 | 10400 nm | 12500 nm | thermal	                  |
|    7 |  2090 nm |  2350 nm | shortwave Infrared (SWIR)  |
|    8 |   520 nm |   900 nm | Panchromatic               |

    
- True-color symbology:
    - Red = Band 3
    - Green = Band 2
    - Blue = Band 1

- False-color symbology: What shows up as red now?
    - Red = Band 4
    - Green = Band 3
    - Blue = Band 2

### Landsat 8 imagery


Landsat 8/9 has an additional ultraviolet band; therefore blue is band 2, green is band 3, red is band 4, and NIR is band 5.

| band |    from  |      to  | note                       |
| ---: | ------:  | ------:  | :------------------------- |
|    1 |   430 nm |   450 nm | visible: Coastal aerosol   |
|    2 |   450 nm |   515 nm | visible: blue              |
|    3 |   525 nm |   605 nm | visible: green             |
|    4 |   630 nm |   690 nm | visible: red               |
|    5 |   775 nm |   900 nm | near-infrared (NIR)        |
|    6 |  1550 nm |  1750 nm | short-wave infrared (SWIR) 1 |
|    7 |  2110 nm |  2290 nm | short-wave infrared (SWIR) 2 |
|    8 |   500 nm |   680 nm | Panchromatic               |
|    9 |  1360 nm |  1380 nm | Cirrus                     |
|   10 | 10600 nm | 11190 nm | Thermal Infrared (TIRS) 1  |
|   11 | 11500 nm | 12510 nm | Thermal Infrared (TIRS) 2  |


- True-color symbology:
    - Red = Band 4
    - Green = Band 3
    - Blue = Band 2

- False-color symbology: What shows up as red now?
    - Red = Band 5
    - Green = Band 4
    - Blue = Band 3

### NDVI (normalized difference vegetation index)

- Detects vegetation in remote sensing imagery
- Index value is a real number from -1.0 (barren) to 1.0 (lush)
- Exploits the fact that live "green" vegetation reflects NIR **much** more than red light
    - `NDVI = (NIR - Red) / (NIR + Red)`
- references:
    - R.D. Jackson and A.R. Huete (1991) Interpreting vegetation indices. *Preventive Veterinary Medicine* 11: 3–4, pp. 185–200. [DOI:10.1016/S0167-5877(05)80004-2](https://doi.org/10.1016/S0167-5877%2805%2980004-2)
    - [Landsat Normalized Difference Vegetation Index](https://www.usgs.gov/land-resources/nli/landsat/landsat-normalized-difference-vegetation-index)


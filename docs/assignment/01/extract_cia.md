```python
import geopandas
from bs4 import BeautifulSoup
import pandas
import requests
import time
import random
import numpy
```


```python
path = geopandas.datasets.get_path("naturalearth_lowres")
world = geopandas.read_file(path)
```

# Get From CIA


```python
ret = requests.get('https://www.cia.gov/the-world-factbook/references/guide-to-country-comparisons/')
soup = BeautifulSoup(ret.text, 'html.parser')
```


```python
links = soup.find_all("a", {"class": "link-button bold"})
```


```python
for link in links:
    name = link.text    
    try:
        table = pandas.read_html('https://www.cia.gov/' + link['href'])[0]
    except ValueError as e:
        print(e)
        continue
    table = table.drop(columns=['Rank', 'Date of Information'] )
    table = table.rename(columns={table.columns[1]: name, 'Country':'name'})
    try:
        world = world.join(table.set_index('name'), on='name')
    except ValueError as e:
        print(e)
        continue            
    time.sleep(random.random())    
```

    No tables found
    No tables found
    columns overlap but no suffix specified: Index(['Youth unemployment rate (ages 15-24)'], dtype='object')



```python
world.plot()
```




    <AxesSubplot: >




    
![png](output_6_1.png)
    



```python
def remove_dollar(row):
    if isinstance(row, (float, int)):
        return row
    row = row.replace('$','')
    row = row.replace(',','')
    row = row.strip()
    return row
```


```python
keys = ['Real GDP (purchasing power parity)', 
        'Real GDP per capita', 
        'Current account balance', 
        'Exports', 
        'Imports', 
        'Reserves of foreign exchange and gold', 
        'Debt - external']
for key in keys:
    world[key] = world[key].map(remove_dollar).astype(float)
```


```python
world.info()
```

    <class 'geopandas.geodataframe.GeoDataFrame'>
    RangeIndex: 177 entries, 0 to 176
    Data columns (total 55 columns):
     #   Column                                                  Non-Null Count  Dtype   
    ---  ------                                                  --------------  -----   
     0   pop_est                                                 177 non-null    float64 
     1   continent                                               177 non-null    object  
     2   name                                                    177 non-null    object  
     3   iso_a3                                                  177 non-null    object  
     4   gdp_md_est                                              177 non-null    int64   
     5   geometry                                                177 non-null    geometry
     6   Area                                                    154 non-null    float64 
     7   Population                                              153 non-null    float64 
     8   Median age                                              153 non-null    float64 
     9   Population growth rate                                  153 non-null    float64 
     10  Birth rate                                              153 non-null    float64 
     11  Death rate                                              153 non-null    float64 
     12  Net migration rate                                      153 non-null    float64 
     13  Maternal mortality ratio                                149 non-null    float64 
     14  Infant mortality rate                                   153 non-null    float64 
     15  Life expectancy at birth                                153 non-null    float64 
     16  Total fertility rate                                    153 non-null    float64 
     17  HIV/AIDS - adult prevalence rate                        99 non-null     float64 
     18  Obesity - adult prevalence rate                         148 non-null    float64 
     19  Alcohol consumption per capita                          148 non-null    float64 
     20  Tobacco use                                             131 non-null    float64 
     21  Children under the age of 5 years underweight           104 non-null    float64 
     22  Education expenditures                                  142 non-null    float64 
     23  Youth unemployment rate (ages 15-24)                    142 non-null    float64 
     24  Real GDP (purchasing power parity)                      153 non-null    float64 
     25  Real GDP growth rate                                    153 non-null    float64 
     26  Real GDP per capita                                     153 non-null    float64 
     27  Inflation rate (consumer prices)                        153 non-null    float64 
     28  Industrial production growth rate                       152 non-null    float64 
     29  Labor force                                             153 non-null    float64 
     30  Unemployment rate                                       148 non-null    float64 
     31  Gini Index coefficient - distribution of family income  140 non-null    float64 
     32  Budget surplus (+) or deficit (-)                       153 non-null    float64 
     33  Public debt                                             153 non-null    float64 
     34  Taxes and other revenues                                153 non-null    float64 
     35  Current account balance                                 152 non-null    float64 
     36  Exports                                                 153 non-null    float64 
     37  Imports                                                 153 non-null    float64 
     38  Reserves of foreign exchange and gold                   150 non-null    float64 
     39  Debt - external                                         153 non-null    float64 
     40  Refined petroleum products - production                 153 non-null    float64 
     41  Refined petroleum products - exports                    153 non-null    float64 
     42  Refined petroleum products - imports                    153 non-null    float64 
     43  Carbon dioxide emissions                                154 non-null    float64 
     44  Energy consumption per capita                           151 non-null    float64 
     45  Telephones - fixed lines                                152 non-null    float64 
     46  Telephones - mobile cellular                            153 non-null    float64 
     47  Internet users                                          154 non-null    float64 
     48  Broadband - fixed subscriptions                         150 non-null    float64 
     49  Airports                                                154 non-null    float64 
     50  Railways                                                120 non-null    float64 
     51  Roadways                                                149 non-null    float64 
     52  Waterways                                               105 non-null    float64 
     53  Merchant marine                                         130 non-null    float64 
     54  Military expenditures                                   144 non-null    float64 
    dtypes: float64(50), geometry(1), int64(1), object(3)
    memory usage: 76.2+ KB



```python
world = world.fillna(-99)
world.to_file('world.gpkg')
```


```python

```

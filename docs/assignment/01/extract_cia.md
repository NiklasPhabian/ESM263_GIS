```python
import geopandas
from bs4 import BeautifulSoup
import pandas
import requests
import time
import random
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


```python
world.plot()
```


```python
world = world.fillna(-99)
world.to_file('world.gpkg')
```


```python

```

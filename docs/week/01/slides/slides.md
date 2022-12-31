---
theme: default
class:     
    - invert
    - fit
paginate: true
backgroundColor: #000
#backgroundImage: url('https://marp.app/assets/hero-background.svg')
---

<!-- _class: lead gaia -->

# Geographic Information - Introduction

ESM 263 - Winter 2023

---

# Agenda

- Administrative
- What is GIS?
- Representing geography

---

# What is GIS?
- Geographic: related to the Earth’s surface
- Information: data and metadata (context)
- System: functional components & connections

Burrough and McDonnell, 1998:
“a set of tools for collecting, storing, retrieving at will, transforming, and displaying spatial data from the real world”

---

# Geographic is ...
- Location: where?
    - x = longitude
    - y = latitude
    - z = elevation
- Resolution: how precise?
- Accuracy: how reliable?
- Distance: how close?
- Area: how big?
- Distribution: how likely?
- Scale: how relevant?


---
# Geographic data is...
- Multidimensional: x, y, z?, t?, attributes ...
- Projected: 3d Earth → 2d workspace
- Displayed: render results as maps

---
# Location ↔ Information
- What’s here?
{ obj ... } = f(x, y, z)

- Where’s this?
{ (x, y, z) ... } = f(obj)

- Everything GIS does is an elaboration of these two functions

---
# GIS software
- ESRI, Inc.’s ArcGIS
    - ESRI founded 1969
    - many UCSB connections
- Open-source GIS
    - QGIS (ArcGIS work-alike)
    - more at OSGeo ...
- Google Earth
    - (map display; not a GIS)
    
---
# Representing geography
– What is representation?
– Paper maps
– Digital representations
– The fundamental problem
– Discrete objects and fields

--- 
# Representing the World
- Representation standardizes and simplifies ...
    - complex information encoded in simple structures
    - BUT: information that doesn't fit the structure may be
        - discarded
        - misrepresented
- the indirect and remote ...
    - space: maps, images, ...
    - time: recorded history
- to extend the direct and personal ...
    - space: here → horizon (~5 km)
    - time: 1 human lifetime

---
# The Paper Map
![bg right](goleta.png)

- long and rich history
- scale (aka representative fraction)
    - ratio map distance : ground distance
- but: what about direction? area? stay tuned ...
- major (historic) GIS data source
    - digitize or scan
    - register to Earth coordinates


----
# The Digital Representation
- Digital data are binary
    - logically: 2 values (0|1, true|false, present|absent, ...)
    - physically: bistable device (on|off, +|-, N|S, ...)    
- N bits → 2N distinct values
    - e.g. 8 bits → 256 values
    - integer: 0..255, -128..127
    - code: character, attribute, ...
- Formats: how bit patterns are interpreted
    - JPEG: photos
    - MP3: music
    - GIS data formats: stay tuned ...

---
# The Digital Advantage
- Economies of scale
    - One technology for all information
- Simplicity
    - Everything is a sequence of bits
- Reliability
    - Perfect copies
-  Easy to detect and (usually) correct errors
-  Speed
    - Closer to c than to H
    
---

# The Fundamental Geographic Information Problem
Geographic information links:
- Objects
    - things located in space-time
    - {point,line,area,cell} is-a {tree,road,city,...} 
        - 1:1
-  Attributes
    - physical, social, economic, demographic, environmental, ...
    - {tree,road,city,...} has-a {DBH,route-number,population,...}
        - 1:many

For example: On 2013-03-01 at 3 pm local time, the north wall of Bren Hall had a brightness temperature of 288.7°K

---
# The Fundamental Problem (cont’d.)
- Given potentially infinite
    - n places
    - n times
    - detail (The more closely we look at the world, the more detail it reveals)
- How do we represent
    - spatial objects
        - discrete features
        - continuous fields
    - and their attributes
    
---
# Features
- Points, lines, and areas
    - single location: point
    - implicitly connected sequence of locations
        - open: line
        - closed: ring -> Polygons
    - countable
    - persistent (through time)
    - perhaps mobile
    
For example:
- biological organisms (animals, trees, ...)
- human-made objects (vehicles, houses, fire hydrants, ...)

---
# Fields
- Phenomena that vary continuously in space
    - value is a function of location
    - property can be any attribute type (including direction)
- Canonical example: elevation
    - single value at every point on Earth’s surface
    - how we speak about fields:
    “high”, “low”, “steep”, “peak”, ...
- Other examples
    - soil moisture
    - atmospheric pressure
    - albedo
---
# Feature or Field?
- Population density
    - depends on scale
- Land ownership
    - continuous, but defined in terms of features
- Lake
    - how defined?
- Weather
    - systems, fronts, ...

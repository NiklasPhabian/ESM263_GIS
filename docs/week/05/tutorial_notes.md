## Week 5 lab - tutorial notes

to accompany "[Automating Complex Workflows using Processing Modeler (QGIS3)](https://www.qgistutorials.com/en/docs/3/processing_graphical_modeler.html)"

**CONTENTS**

- TOC
{:toc}
### step 1

- You don't need to expand the `.zip` files; QGIS can access them directly

### step 2

- Skip this step. (`ASAM_events.shp` *does* have a CRS)

### step 4

- OK to leave *Group* blank

### step 5

- **Don't** *Save Model*. Instead, do:
  
  1. *Save Model in Project*
  1. *Save Project*
  
  every time you make a significant change to your model
  
  - "significant" = would be a PITA to have to re-enter
  
- **Don't** use your mouse's scroll wheel to zoom/shrink the model.

### step 7

- Check *View→Enable Snapping* to help align model components

### step 24

- Insert *Create spatial index* between *Create grid* and *Extract by location*
  - Make *Extract by location* depend on *Create spatial index*


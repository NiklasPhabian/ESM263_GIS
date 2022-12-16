## Configuring QGIS

Before we start using QGIS, we'll configure some default behaviors that will make our lives easier.

**CONTENTS**
- TOC
{:toc}

### Start up QGIS with a new project

QGIS normally starts up displaying news and miscellaneous hooyah where the map would be. We'll skip this stuff and go straight to a fresh empty map:

1. Select *Settings&rarr;Options...*
1. Select *General* tab
   - **Un**-check *Application&rarr;Show QGIS news feed on welcome page*
   - Set *Project Files&rarr;Open project on launch* to *New*

### Use default datum transformations

Normally QGIS will ask you to select a datum transformation when you load a new layer into your map. 99.44% of the time, this is more tweaking than you care about. We'll tell QGIS to just use the "best" transformation for the layer's coordinate system:

1. Select *Settings&rarr;Options...*
1. Select *Transformations* tab
   - **Un**-check *Ask for datum transformation if several are available*

> Note: We'll show you how to override this for those 0.56% situations where you really care which datum transformation to use.

---

[more here as the course progresses…]


## macOS "Cannot find proj.db" error

If tools in your *Processing Toolbox* (or *Algorithms* in your graphical model) start giving you errors like

```
ERROR 1: PROJ: proj_create_from_database: Cannot find proj.db
```

the you can probably fix them by:

1. If *QGIS* is running, quit it.
1. Open a new *Finder* window.
1. Click *Go→Go to Folder…*
1. In the *Go to the folder:* box, type
    `/Users/`*`username`*`/Library/Application Support/QGIS/QGIS3/`
    where *`username`* is your macOS user name.
    - This dance is necessary because the `Library` folder is normally not visible in the *Finder*.
1. Download [`startup.py`](startup.py)
1. Drag `startup.py` from wherever it landed (usually your `Downloads` folder) to the `QGIS3` folder you opened in step 3.

From now on, your QGIS should be immunized against the "fugitive `proj.db`" problem.


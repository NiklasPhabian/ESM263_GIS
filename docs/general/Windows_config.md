## Configuring your system (Windows)

When working with QGIS, you need to have a few tweaks applied to your Windows environment.

You should only have to do these once.

> NOTE: These instructions apply to Windows 10. I expect they also apply to Windows 11, but I have no Windows 11 system to test them on.

### Configure File Explorer

Start up File Explorer.

- You should already have a File Explorer shortcut on your Taskbar. If you **don't**, then:
    1. Click *Start→Programs→Windows System→File Explorer*
    1. Right-click the File Explorer icon in your Taskbar
    1. Click *Pin to taskbar*

Configure File Explorer so it shows you full filenames (including extensions) and the complete folder hierarchy:

1. Click *File→Change folder and search options*
1. Select the *View* tab
   1. In the *Advanced settings* box:
      - In *Files and Folders*:
        1. **Check** *Display the full path in the title bar*
        1. In *Hidden files and folders*:
           - Select *Show hidden files, folders, or drives*
        1. **Un**-check *Hide extensions for known file types*
   1. Click *Apply*
   1. In the *Folder Views* box:
      - Click *Apply to Folders*
        - Click *Yes* in the popup
   1. Click *OK*

### Set up Windows Taskbar

To make sure you'll notice when you have multiple QGIS map documents open simultaneously (so you can close all but one of them—multiple QGISs don't fight with each other like multiple ArcGISs do, but they can still consume a lot of computer resources.):

1. Right-click on an unused portion of the Taskbar and select *Taskbar settings*
1. In the *Combine taskbar buttons* pull-down menu, select *Never*
1. Close the *Settings* window


<!---
### Optional: 7zip 

https://www.7-zip.org/
--->

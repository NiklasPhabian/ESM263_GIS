## Organizing your files (Windows)

QGIS stores its persistent information in Windows *files*. The Windows *file system* is organized into *drives* (once upon a time these were actual physical disk drives), which contain *files* and/or *folders*. (A folder is just a special kind of file in which Windows stashes information about other files or folders.) Together, drives, folders, and files implement a simple *hierarchical* information management system, which lets you group bags of information (files) into nested categories (folders).

> **NOTE:** Frew may occasionally refer to a folder as a *directory* (what they're called on Planet UNIX, where he grew up.) Don't freak out; the terms are identical.

**CONTENTS**

- TOC
{:toc}

### Pathnames

The combination of a drive name, one or more folder names, and a file name is called a *pathname*. Windows pathnames are written as follows:

- First, a *drive*:
    - a single letter, followed by `:```
        - e.g. `C:`
          
          > NOTE: Windows computers *always* have a `C:` drive. If your computer only has 1 drive, it will be `C:`.
- Then, the drive's *root folder*:
    - a single `\`
        - e.g. `C:\`
- Then, zero or more *folders*:
    - folder name(s), separated by `\`
        - e.g. `C:\Users\frew\Desktop\ESM263\HW1`
- Finally, zero or one *file*:
    - file name, optionally followed by "." and an *extension*
        - e.g. `C:\Users\frew\Desktop\ESM263\HW1\CountryWatch.htm`
    - the name and extension are usually referred to collectively as the *filename*.

### Current folder

Any time you're working on Windows, there's a notion in effect called the *current folder* (AKA the *working* folder). For a Windows application, the current folder is usually the folder containing the document that it was started up with.

- For example, if you start QGIS by double-clicking on a map document (a file with a `.qgs` or `.qgz` extension), then QGIS's current folder will be the folder containing the map document.
- When you first login to Windows, your working folder is set to your *home folder*. By default this is `C:\Users\`*yourname*, where *yourname* is your Windows username.

### Relative pathnames

A pathname that *doesn't* begin with a drive and a root folder is called a *relative* pathname. A relative pathname is assumed to have the pathname of the current folder prepended to it.

For example, if the current folder is ``C:\Users\frew\Desktop\ESM263`, then `HW1\CountryWatch.htm` and `C:\Users\frew\Desktop\ESM263\HW1\CountryWatch.htm` both refer to the same file.

A pathname that begins with a `\`, but not a drive, is assumed to have the current *drive* prepended to it

- For example, if the current drive is `C:`, then `\Users\frew` is the same folder as `C:\Users\frew`

The special folder name `..` (two periods) is often used in relative pathnames to refer to the *parent* folder of the current folder.

- For example, if the current folder is `C:\Users\frew\Desktop\ESM263`, then `..\arf.txt` and `C:\Users\frew\Desktop\arf.txt` both refer to the same file.

### ESM 263 pathname convention

In the documentation for this course, we assume you have a folder on your computer named `ESM263`, and that all of the folders and files you use for the course will live in this folder (or one of its subfolders). When we refer to a pathname beginning with `ESM263\`, we're referring to this folder.

- If you're not sure where to put it, your desktop is a good choice, which would make its full pathnamne `C:\Users\`*`yourname`*`\Desktop\ESM263`

### Naming rule

When working with QGIS, it's **essential** that you follow this simple rule when naming files or folders:

> Use only **letters**, **numbers**, and **\_** (underscores) in file or folder names.

- **DON'T USE SPACES!** Use underscores instead.
    - (QGIS is more forgiving than ArcGIS of spaces in pathnames, but "more" doesn't mean "completely"...)

**YOU'VE BEEN WARNED!**

### For more information

If you'd like even more detail on how filenames work (or don't work), see:

- [Naming Files, Paths, and Namespaces](https://docs.microsoft.com/en-us/windows/desktop/FileIO/naming-a-file)
    - everything about Windows filenames
- [Sync isn’t working—troubleshoot issues with incompatible characters and bad filenames](https://www.dropbox.com/help/syncing-uploads/files-not-syncing)
    - Dropbox's advice on making filenames portable across different operating systems

### P.S.:

Did I mention:

**DON'T USE SPACES IN PATHNAMES!**

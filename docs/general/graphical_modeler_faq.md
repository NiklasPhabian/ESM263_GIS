## QGIS Graphical Modeler FAQs

**CONTENTS**

- TOC
{:toc}
### Saving models

QGIS can save your Graphical Modeler models in either of 2 locations:

- When you click ***Save model in project***, the model is saved inside the current project's `.qgz` file.

  Models saved this way appear in the *Processing Toolbox* panel, under *Project models*, and are only accessible from the current QGIS project.

- When you click ***Save***, the model is saved in a single default per-user folder, managed by QGIS.

  - For example, on a Mac, this folder is *your-home-folder*`/Library/Application Support/QGIS/QGIS3/profiles/default/processing/models/` … not exactly obvious.

  Models saved this way appear in the *Processing Toolbox* panel, under *Models*, and are accessible from any of your QGIS projects.

For the purposes of ESM 263, you should use ***Save model in project***:

- You're not going to be building general-purpose models for this class, so there's no advantage to sharing models between projects.

- Saving the model in your `.qgz` file means you can just hand in the `.qgz` file when you're required to submit a model. This may also help us debug your model if there's a problem with it, since the `.qgz` file will let us at least partially reproduce the context in which the problem occurs.

If you ever need to save a model as a stand-alone file, you can use ***Save model as…***, which saves the model in a file with a `.model3` extension. This shouldn't be necessary, since saving it in the `.qgz` file is equally effective, and less buggy.

### Opening/editing a saved model

Once saved, a model can be invoked just like any other tool, either independently, or from another model.

In the graphical modeler, you'll find the models you saved in the *Algorithms* panel. This allows you to add the saved model to another model as a submodel.

To **edit** a saved model, find it in the Processing Toolbox panel in the main QGIS window (i.e., **not** the graphical modeler). It should be all the way at the bottom. **Right click** the model and select *Edit*. (Don't double-click it; that will run it.)

### Terminating runaway models

Occasionally a model will stop responding, and cause QGIS to freeze as well. Usually this is due to an incorrect parameter setting that causes the model to run at too fine a resolution, or over too large an area, or (etc. etc.) Of course, sometimes it's just a bug. If you've been careful about frequently saving your model and your project, you should be able to force-quit QGIS without causing yourself too much pain:

- on **macOS**: Type *command-option-esc*, which will bring up a *Force Quit Applications* dialog. Select QGIS from the menu of applications, and click *Force Quit*.

- on **Windows**: right-click on the taskbar and select *Task Manager*. Select the QGIS task and click *End task*.


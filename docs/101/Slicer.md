# The Slicer

The slicer is a tool you use to convert 3d models downloaded or made on your computer to instructions for layer-by-layer fabrication by your Cocoa Press.  Since each 3d printer is different, we need to use a specific "profile", or machine configuration, to tell the Slicer to produce information for the Cocoa Press specifically.

![](../img/101/slicer.png)

PrusaSlicer is the slicer you'll be using for your Cocoa Press machine to make custom chocolate prints, developed as open source software and forked (split off from) the original [Slic3r](https://slic3r.org/) software.

You can download PrusaSlicer [here.](https://www.prusa3d.com/page/prusaslicer_424/)


[PrusaSlicer Download :material-download:](https://www.prusa3d.com/page/prusaslicer_424/){ .md-button .md-button--primary}

!!! note
    These steps may change as Cocoa Press is added to the formal releases of PrusaSlicer.  Keep your eyes peeled for when that happens.

## PrusaSlicer Menus

Many of the top-bar menus in PrusaSlicer (File, Edit, Window, etc.) either have on-screen controls to be used without the top-menu, or keyboard shortcuts to make it easier to use on repeat viewings.

File -> Import (++ctrl+i++) allows you to import models that other people have made as STLs, OBJ, STEP, and other file formats.

File -> Open (++ctrl+o++) is used to open existing PrusaSlicer projects, such as models you've set up and configured for printing.

## Model View / 3D View

Window -> 3D (++ctrl+5++)  This is the view of your model before it's been processed into instructions for your printer to follow.  You can also use the button in the bottom left to get back to this view.

## Sliced View / Preview View

Window -> Preview (++ctrl+6++) The process of turning your imported model(s) into instructions your printer can follow can be done with the button in the bottom right menu, called the "Slice" button (++ctrl+r++).  

## File Exports

## Useful Settings

- macOS instance switch thing
- override settings
- pause print
- insert message
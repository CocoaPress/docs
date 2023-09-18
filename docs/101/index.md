# Printing 101

Here we'll discuss the basics of 3D printing, and the steps you'll need to get your printer working, tuned, and dialed in for crisp-looking, tasty prints!

### FFF And You

FFF, or [Fused Filament Fabrication](https://en.wikipedia.org/wiki/Fused_filament_fabrication), is typically the category of addictive manufacturing where some material is extruded through some nozzle and moved to produce a design in 3-dimensional space.  In simpler terms, a computer controlled hot glue gun, where instead of hot glue, it extrudes chocolate (or plastics).   Fused Filament Fabrication typically refers to plastic 3D printers, but in our case, is that of fused *food* fabrication.

The Cocoa Press works similarly to plastic printers in theory, the extruder is moved around the workspace of the printer, extruding warm material (chocolate) and cooling through ambient temperatures to produce novel and interesting designs!

### The Slicer

The slicer is a tool you use to convert 3d models downloaded or made on your computer to instructions for layer-by-layer fabrication by your Cocoa Press.  Since each 3d printer is different, we need to use a specific "profile", or machine configuration, to tell the Slicer to produce information for the Cocoa Press specifically. This tool is akin to the printer driver configuration for a paper printer.  One might change the collation settings, margins, rotation, resolution, black and white or color printing, and more.  The Slicer does the same *type* of work to prep your printer for making your delicious creations.

![](../img/101/slicer.png)

### Layer Height & Z-Offset

The "layer height" is the literal height of the layer of chocolate before the printer lowers the bed to print the next layer.  Different nozzle sizes change the maximum layer height, and by extension, how fast you can print the same model, but there's a resolution tradeoff.  The finer the layer height, the slower the print is.

![Layer Height Explainer](../img/layer_height_diagram.png)

## Nozzle Size

The Nozzle of a printer describes the diameter of the hole the additive material is extruded through.  Many plastic 3D printers use a .4 or .6mm nozzle, and your Cocoa Press comes with a .8mm nozzle. This means that the smallest size a single line the printer can print is .8mm, and any thicknesses greater than that will either use infill to compensate, or  make the innermost layer(s) extrude less material as though it had a smaller nozzle.

![](../img/101/nozzle_size_dia.png)

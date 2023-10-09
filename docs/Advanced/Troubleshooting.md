# Troubleshooting For Advanced Users

## Extrusion & Printing Troubleshooting

### First Layer Height Issues

To ensure a consistent and reliable first layer with your Cocoa Press, you'll need to ensure your Z probe is mounted ridigly via the two M3 screws, and that your extruder doesn't wobble during normal operation.

You'll also need to ensure that your printer has probed the print bed for consistently and leveling.  

### Probe Mesh Area

This can be checked in the menu under Menu -> Mesh Leveling -> Probe Mesh.

The printer will take about three minutes and probe the printable area of the bed.  If this step collides with anything, you'll want to look into [adjusting your extruder height.](#adjusting-extruder-height)

![](../img/printer/probing_mesh_main_menu.jpg)

### Z-Offset

If probing completes successfully, you'll need a sheet of plain printer paper to adjust the Z-offset.  Using the Menu -> Probe Z Offset.  Follow the steps on screen to adjust the spacing between your nozzle and bed for a consistent first layer.

Your paper should slide under the nozzle with a small amount of resistance, but not enough to tear or catch. This will ensure the nozzle can skim the top surface of the silicone baking sheet would damaging it, and keeping the first layer consistent.

### Adjusting Extruder Height

Your Cocoa Press includes an M5 screw inside the extruder motor assembly that can be used to raise and lower the extruder relative to the extrusion it's mounted to.

![](../img/printer/render_extruder_adjustment_m5.png)

First, loosen the four M5 screws on the side holding the printed housing pieces to the extrusion.

![](../img/troubleshooting/move_extruder_screw.jpg)

Then, Turn the M5 screw in the top left or right to raise or lower the screw.  

!!! note
    Turning clockwise will *lower* the assembly closer to the bed, so to avoid colliding with the bed, you'll want to turn it counter-clockwise.

Once the extruder is in a place where the bed can be raised to a space to trigger the Z-probe *without *colliding with the silicone baking sheet or the bed, re-tighten the four M5 screws on the extruder printed parts.

Then, re-probe your bed mesh and run the Z Adjust Offset wizard again to ensure no data from before the adjustment is present.

### Extruded Line is Wobbly

![](../img/troubleshooting/extruder_latch_wobbly_print.jpg)

If your print has lines or vibrations that appear during fast moves, you may need to tighten the bolt used to latch the extruder's pivot in place.

<!-- add close-up photo of extruder pivot -->

If this doesn't resolve the issue, you may also want to check the screw in the pivot of the extruder, as well as the button head used to retain the socket head screw listed above when latched.

### Chocolate Won't Extrude

Use the nozzle unclogger on the nozzle while the chocolate is preheated and then attempt to extrude.  This may take several attempts due to how chocolate cools and the amount of force needed to clear the nozzle.

## Frame & Mechanical Troubleshooting

### Extruder Making Clicking Noise

It's fairly common for the extruder to skip steps (or make noise where the motor can't deliver enough energy to overcome friction) when loading chocolate. Only use the Load / Unload buttons until it makes this noise and *no further* until preheating is complete.  

It's also possible your cartridge has a clogged nozzle and may need to be fixed using the [unclogger in the Cleaning Kit](https://cocoapress.com/products/cleaning-tools) 

### Bed Looks Slanted

If your printer's bed looks slanted when looking at it head on, but the printer can successfully probe the meshing area, use the `View Mesh` button to inspect the major differences between corners. 

<!-- TODO add photo of "view mesh" button -->

The maximum we'd suggest is about 3mm, and if your printer exceeds this, it's highly suggested you perform the initial assembly steps in the [Assembly Manua] where the bed screws are adjusted.

<!-- TODO add photo of warped bed supports vs good ones -->

Furthering this, you may also need to inspect and potentially re-print the plastic pieces supporting the bed, as warping in this area can signficantly effect the bed leveling.

### Wobbly or Loose Frame

In the event of major movement or vibration, your printer's fasteners may loosen over time.  Tightening these again like done during initial setup should help with this.

### Printer Rocks During Printing

It's possible the rubber feet on the printer may have become dislodged during printing.  Replacing the missing foot or producing a leveling shim may resolve the issue temporarily.

If all rubber feet are present, inspecting that the printed pieces aren't warped and that the frame itself is level and square is a useful mitigation.

In the event of further issues, you'll want to contact support for help via the email "hello [ at ] cocoapress.com".
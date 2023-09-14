# Quickstart Guide

To bring up your Cocoa Press, there are some checks and steps you’ll want to take before assuming your printer is completely ready.  

## Electronics Checks

 - [ ] Is your power supply switch in the correct mode for your region?
 - [ ] When power is applied to the printer, the status indicator light on the power switch should light up, even if the switch isn't in the on position.  Is the light on?

<!-- TODO Add photo of funky power switch. -->
- When power is turned on, do the lights on your main board turn on?  If so, it’s been successfully wired.

## Firmware Checks
 - [ ] Does the temperature display on screen show a reasonable value for your area (typically 18-23C)
 - [ ] In the Menu, enter the "XYZ Move" menu, and attempt to Move X negative (starting at 140mm, reduce to 130mm)
   - [ ] The extruder should move to the left.

 - [ ] Repeat the same test for the Y axis as a sanity check.
   - [ ] If the movement was corrected in the last check, this is redundant.  If the motion is still incorrect, check connector wiring and/or contact support.

 - [ ] Using the spatula that came with your printer, test that the Z proximity switch light changes when pressed to the bottom of the switch.
 - [ ] In the Homing menu, attempt to home all axes.
    - [ ] Ensure you do not have a cartridge loaded when doing this test.
    - [ ] Afterwards, load one *without a chocolatey core inside*.

## Integration Checks 
 - [ ] In the Menu, disable Stepper Motors and use the Limit Switch menu to monitor the Z-probe state in software.
 - [ ] Using your hands, move the Bed Z leadscrew up until the proximity switch changes state on screen.  The LED in the probe should also change state.
    - [ ] If the nozzle collides with the bed or the silicone baking sheet, you'll need to adjust the extruder as described [here.](../Advanced/Troubleshooting.md#adjusting-extruder-height)

## Good to go!

If you've made it this far, you should be ready to print your culinary creations!

## Loading Chocolate

To print with chocolate, you'll want to follow the loading steps to minimize potential failure modes, as well as increase the quality of your prints.

[Load Chocolate :material-arrow-right: ](Loading.md){ .md-button .md-button--primary}

## Cleaning Your Cartridges

To re-use your chocolate cartridges, it's important to clean and sanitize them to avoid any potential contamination.

[Cleaning Cartridges :material-arrow-right: ](Cleaning.md){ .md-button .md-button--primary}
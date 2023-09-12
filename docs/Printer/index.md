# Quickstart Guide

To bring up your Cocoa Press, there are some checks and steps you’ll want to take before assuming your printer is completely ready.  

## Electronics Checks

- Is your power supply switch in the correct mode for your region?
- When power is applied to the printer, the status indicator light on the power switch should light up, even if the switch isn't in the on position.  Is the light on?

<!-- TODO Add photo of funky power switch. -->
- When power is turned on, do the lights on your main board turn on?  If so, it’s been successfully wired.

## Firmware Checks
- Does the temperature display on screen show a reasonable value for your area (typically 18-23C)
- In the Menu, enter the “XYZ Move” menu, and attempt to Move X negative (starting at 140mm, reduce to 130mm)
  - The extruder should move to the left.

- Repeat the same test for the Y axis as a sanity check.
  - If the movement was corrected in the last check, this is redundant.  If the motion is still incorrect, check connector wiring and/or contact support.

- Using the spatula that came with your printer, test that the Z proximity switch light changes when pressed to the bottom of the switch.
- In the Homing menu, attempt to home all axes.
- Ensure you do not have a chocolate cartridge loaded when doing this test.

In the Menu, run the Mesh Bed Leveling routine to have the printer calculate bed tilt, deflection, and more for printing.

## Loading A Chocolate Core
Follow the steps [here.](./Loading.md)

## Loading Chocolate

To print with chocolate, you'll want to follow the loading steps to minimize potential failure modes, as well as increase the quality of your prints.

[Load Chocolate :material-arrow-right: ](Loading.md){ .md-button .md-button--primary}

## Cleaning Your Cartridges

To re-use your chocolate cartridges, it's important to clean and sanitize them to avoid any potential contamination.

[Cleaning Cartridges :material-arrow-right: ](Cleaning.md){ .md-button .md-button--primary}

## Updating Your Cocoa Press' Firmware

As new features are released for the printer, or quality of life improvements are published, you'll likely want to update your firmware to be able to use them as soon as possible.  Here's what you need to update your firmware, and get even more out of your Cocoa Press!

[Firmware Update Steps :material-arrow-right: ](Flashing.md){ .md-button .md-button--primary}
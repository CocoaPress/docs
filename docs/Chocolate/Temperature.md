# Temperature & Tempering of Chocolate

## Basic Use

While we suggest the [environment](#environment) be controlled fairly well, and as close to 60F / 15.5C as reasonably possible, you may find your region or altitude needs to have the temperature adjusted before extruding correctly.  Increasing the temperature by 0.1F and waiting 2-3 minutes before attempting to extrude the Cocoa Core during the [Cocoa Core loading ](../Printer/Loading.md) may help, repeat until flowing but not liquedous.

Also remember that the colder the environment, the more likely clogs are to form during the loading and heating step of printer use.  They can be often unblocked by waiting 5m, or by using the nozzle unclogger from the [Cleaning Kit.](../Printer/Cleaning.md)

!!! warning
    Take care to not increase the temperature too quickly when finding the temperatures in colder environments.  The heater is a large thermal mass and takes much longer to cool off than to heat up.

## Environment

Because the Cocoa Press isn't in an enclosed environment, you'll need to keep the room it's in clean and cooler.  Please store at room temperature between 60°F and 75°F and under 60% humidity.

The printer, same with temperatures, will also be susceptible to breezes or cyclic air conditioning.  Try to avoid directly putting a narrow fan in front of the nozzle, as the moving air current during printing, can cause more frequent clogging.

## Temper

Because the Cocoa Cores by default are compound chocolates, you generally don't need to worry about about shock and cooling, as well as overshoot.  That said, if using home-made Cocoa Cores, you may run into issues where the varied densities and expansion of the liquedous Cocoa Core causes different temperature needs, or to be more susceptible to overshoot.  As such, advanced users can manually adjust the Control Algorithims used for extruder heating via `M301` to set hotend PID manually.

If as a user you have more advanced needs that involve fully tempering the machine, please let us know with 
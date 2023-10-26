# Temperature & Tempering of Chocolate

## Basic Use

While we suggest the (environment)[#environment] be controlled fairly well, and as close to 60F / 15.5C as reasonably possible, you may find your region or altitude needs to have the temperature adjusted before extruding correctly.  Increasing the temperature by 0.1F and waiting 2-3 minutes before attempting to extrude the Cocoa Core during the [Loading Step](../Printer/Loading.md) may help, repeat until liquedous.  

Also remember that the colder the environment, the more likely clogs are to form during the loading and heating step of printer use.  They can be often unblocked by waiting 5m, or by using the nozzle unclogger from the [Cleaning Kit](../Printer/Cleaning.md)

## Environment

Because the Cocoa Press isn't in an enclosed environment, you'll need to keep the room it's in clean and cooler.  Please store at room temperature between 60°F and 75°F and under 60% humidity.

## Temper

Because the Cocoa Cores by default are compound chocolates, you'll not have to worry as much about shock and cooling, as well as overshoot.  That said, if using home-made Cocoa Cores, you may run into issues where the varied densities and expansion of the liquedous Cocoa Core causes different temperature needs, or to be more susceptible to overshoot.  As such, advanced users can manually adjust the Control Algorithims used for extruder heating via `M301` to set hotend PID manually.
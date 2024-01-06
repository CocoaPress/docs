# Troubleshooting Walkthrough

A choose-your-adventure in making fixing your Cocoa Press not quite as much of an adventure.  Not all potential issues are reflected below, please check the [Advanced Troubleshooting](../Advanced/Troubleshooting.md) for more troubleshooting steps.

??? question "Screen Won't Turn On"

    In the rear of the unit, are there any illuminated lights?

    The power switch should have an amber indicator when power is applied.

    ??? failure "Power Switch Won't Illuminate"

        Verify that your power switch matches the diagram as shown in the [Assembly Manual] on/around page 174.  Failure to do so may cause further electrical issues.

    ![](../img/troubleshooting/power_switch_illuminated.jpg)

    ??? success "Power Switch Is Illuminated"

        Peering through the fan grill on the rear of the printer, are there lights visible?  

        A normally functioning printer should have a solid green light as depicted below (power), and a flashing red light below it (fan).   

        ??? failure "No Lights"

            You'll want to verify that your power supply output wiring mirrors the assembly manual on/around page 183 and that your region switch is on "110V" if in the United States or Canada.

            Additionally, ensure that a fuse is in the fuse holder of the power connector unit, and that it's not damaged or tripped.

        ![](../img/troubleshooting/fangrille_green_only.jpg)

        ??? warning "Only The Green Light is On"
        
            It's possible that your printer did not have the full release firmware applied to it through an odd flashing bug in production.  Please refer to the [Flashing Steps](../Advanced/Flashing.md) to apply the current production firmware to your printer.

        ??? success "Both Lights Are Visible"

            Given this, it's possible that one of the ribbon cables to your display are connected incorrectly, or got subtly swapped.  If the cables are swapped, and the printer rebooted (with a ten second wait between power off and power on) does the screen light up?

            ??? failure "Still Nothing on Screen / The screen is all white"

                The flat flex cable in your printer that connects the display panel to the display controller is a delicate connector, and may need to be reinserted.  Small amounts of dust or debris can damage or render the connection unstable.
                
                Follow the assembly manual section and re-verify that the cable is fully seated in the connector of the display controller.

            ??? success "The screen shows the Cocoa Press logo!  Yay!"

                Given this, you've successfully gotten through the initial electrical issues your printer might have.  Please refer to [Advanced Troubleshooting](../Advanced/Troubleshooting.md) if more issues persist.


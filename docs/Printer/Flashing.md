# Flashing New Firmware

To update the firmware on your printer, you'll need to use Shumatech BOSSA, the preferred flashing tool for the brains of the Cocoa Press.

## Prep

<!-- TODO Add printer hardware button -->

- turn printer off
- hold erase button in USB port while turning printer back on
- plug printer in via USB
- screen should be off, etc.

## Download

Download the preferred version of BOSSA for your computer from GitHub [here.](https://github.com/shumatech/BOSSA/releases)

!!! caution
    There are known issues with BOSSA not working correctly on macOS M1/M2 computers.  We're watching [a potential fix](https://github.com/shumatech/BOSSA/issues/76), but at this moment it's suggested you use another computer to flash new firmware should you need to.  Windows and older macOS computers should still work fine for this.

    If you're a technical user, there appears to be a workaround listed [here](https://forum.duet3d.com/topic/11445/flashing-firmware-on-mac-os-x/2), but you should only use this fix if you know what you're doing.

Download the latest Cocoa Press firmware from [here.](#) <!-- TODO ADD FIRMWARE LINK -->

When opening BOSSA, it should look like this.  

![](../img/flashing_firmware/bossa_1.png){ align=center}

Use the "File" section to choose the firmware for the printer.  

Select the appropriate serial port for your printer.  

!!! info
    BOSSA will show "connected" with a string of letters and numbers including "SAM" if it's the correct connected device.  

Select "Erase All" and "Boot to flash", then "Write" to put the new firmware on your printer.

<!-- TODO: Check BOSSA.js tool that Marcio is working on!? : https://github.com/drunken-octopus/drunken-octopus-downloader/tree/main>
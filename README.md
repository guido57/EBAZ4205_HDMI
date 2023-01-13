# EBAZ4205_HDMI

## Description

This repository contains the Vivado project, the PetaLinux project, and the Vitis software projects (both Standalone and Linux) to implement the EBAZ4205 board with an HDMI video out port.

The result will be an EBAZ4205:
* loading from the SD Card
* running Linux (PetaLinux):
    * connected to a local network via Ethernet (IP obtained by DHCP)
    * with a serial console connected to the J7 connector of EBAZ4205 (serial)
    * with a SSH server connectable with any SSH client and/or WinSCP  
    * any application running on a linux console
    * with a HDMi video out port (640x480 or 800x600 or 1080x720) 

## Requirement

### Hardware

See my  * [EBAZ4205](https://github.com/guido57/EBAZ4205)
 repository and Hackaday project
* Zynq EBAZ4205 Board (cost-reduced version)
  * **No** 25MHz crystal (Y3) is required. The Ethernet transceiver (U24) clock is supplied by the ZYNQ (U31). However, it also works on a board on which a crystal is mounted
  * microSD card slot (U7) required
  * SD card boot support is required. Short the resistor (R2577)
  * Short the diode (D24) to supply power from the power connector (J4) (Optional)
  * Mount the tactile switch (S3), the capacitor (C2410) and the resistor (R2641A). The resistor (R2641A) can be shorted instead of mounting a 0 ohm resistor. I used 4.7uF for the capacitor (C2410) (Optional)


### Software tools

* Vivado 2021.2 on Windows 10 or 11
* VMWare VirtualBox 6.1 on Windows 10 or 11
* Ubuntu 20.04.1 on VMWare VirtualBox 6.1
* Petalinux 2021.2 on Ubuntu 20.04.1

## How to Build 
* Read carefully my Hackaday Project: [Cheap (35$) and powerful FPGA programming](https://hackaday.io/project/187351-cheap-35-and-powerful-fpga-programming)
* Create the block design, the bitstream and the hardware definition with Vivado
* [Use the hardware definition to build an bootable SD Card with petalinux and test it on EBAZ4205](./docs/how-to-build.md)



## References

### My Hackaday projects with EBAZ4205
* [Cheap (35$) and powerful FPGA programming](https://hackaday.io/project/187351-cheap-35-and-powerful-fpga-programming)
* [30Mhz spectrum and SDR in a FPGA](https://hackaday.io/project/186329-30mhz-spectrum-and-sdr-in-a-fpga)

### EBAZ4205

* [KeitetsuWorks EBAZ4205](https://github.com/KeitetsuWorks/EBAZ4205)

### Xilinx

* [UG585 - Zynq-7000 SoC Technical Reference Manual (v1.12.2)](https://www.xilinx.com/support/documentation/user_guides/ug585-Zynq-7000-TRM.pdf)
* [XC7Z010CLG400 ピン配置ファイル](https://japan.xilinx.com/support/packagefiles/z7packages/xc7z010clg400pkg.txt)
* [UG1144 - PetaLinux Tools Documentation Reference Guide (v2021.2)](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2021_2/ug1144-petalinux-tools-reference-guide.pdf)


## License

* MIT

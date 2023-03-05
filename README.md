# EBAZ4205_HDMI

## Description

This repository contains the Vivado project, the PetaLinux project, and the Vitis software projects for Linux to implement the EBAZ4205 board with an HDMI video out port.

![](./docs/EBAZ4205-HDMI.png)

The result will be an EBAZ4205:
* loading from the SD Card
* with a hardware HDMI out port directly connected to the J1 EBAZ4205 connector (no extra hardware required)
* running Linux (PetaLinux):
    * connected to a local network via Ethernet (IP obtained by DHCP)
    * with an serial console connected to the J7 connector of EBAZ4205 (serial). User: ebaz  Pwd: ebaz
    * with an SSH server connectable with any SSH client. User: ebaz  Pwd: ebaz
    * with an SFTP server connectable with any sftp client like WinSCP or FileZilla. User: ebaz  Pwd: ebaz 
    * with a TCF server to connect to by Vitis (IP obtained by DHCP, port: 1534) to cross compile and remote debugging 
    * with a colorbars application /etc/init.d/colorbars to test different resolutions or color patterns 
    * with a HDMI video out port (640x480 or 800x600 or 1280x720) 

## Getting Started
Just to test your hardware (EBAZ4205 with an HDMI cable connected to port J2) without building the FPGA hardware (PL) and the software (Linux Kernel, Root File System and programs), you can simply download my SD card image.
In this case, follow these steps.
* Build the HDMI hardware port. See my Hackaday project [EBAZ4205 HDMI Video Out](https://hackaday.io/project/189164-ebaz4205-hdmi-video-out)
* Download my SD card "wic" [ebaz4205-hdmi-colorbars.wic 6GB](https://bit.ly/3ZoYBp8)
* Flash it on an SD card (with Balena-Etcher or similar program)
* Insert the just programmed SD card into the EBAZ4205 and power supply it
* After a few seconds, you'll see the colorbars on the HDMI monitor 
 
This solution is not trivial at all, because it lets you to do all the things listed in the "Description", approaching the complex world of Zynq-7000 (FPGA programming + Embedded Linux building) step bt step.

## Hardware Requirements
* EBAZ4205 (with or without 25MHz crystal)
* HDMI cable and HDMI display (I use an old TV set with an HDMI port) 

See also:
* [Cheap (35$) and powerful FPGA programming](https://hackaday.io/project/187351-cheap-35-and-powerful-fpga-programming)
 for preparing the EBAZ4205 (power supply, JTAG and serial connections, Ethernet)
* [My Hackaday project to connect the HDMI cable to the EBAZ4205](https://hackaday.io/project/189164-ebaz4205-hdmi-video-out)
 
## Software tools
* Vivado 2022.2 on Ubuntu 20.04 or Windows 10 or 11
* Petalinux 2022.2 on Ubuntu 20.04
* Vitis 2022.2 on Ubuntu 20.04 or Windows 10 or 11

## How to build the software from scratch
### Vitis: to modify my colorbars software or build other similar utilities

1) Follow the "Getting Started" instructions
2) Download or clone this repository or at least the Vitis folder into an Ubuntu 20.04 or Windows 10 or 11 host PC.
3) Install Vitis 2022.2 in the same host PC
4) Run Vitis and select the Vitis workspace (the folder where ide.log is)
5) In Vitis:
   * build the EBAZ4205_SDR_HDMI_PS2 project
   * modify the IP address of the remote target with the IP assigned to the EBAZ4205 by the DHCP (of course the EBA4205 Ethernet port must be connected to your home router)
   * run Debug
6) If everything is OK, Vitis will connect to the TCF server running on the EBAZ4205 and you'll be able to debug/run.

## References

### My Hackaday projects with EBAZ4205
* [Cheap (35$) and powerful FPGA programming](https://hackaday.io/project/187351-cheap-35-and-powerful-fpga-programming)

### EBAZ4205
* [KeitetsuWorks EBAZ4205](https://github.com/KeitetsuWorks/EBAZ4205)

## License
* MIT

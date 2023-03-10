#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/guido/Xilinx-tools/Vitis/2022.2/bin:/home/guido/Xilinx-tools/Vivado/2022.2/ids_lite/ISE/bin/lin64:/home/guido/Xilinx-tools/Vivado/2022.2/bin
else
  PATH=/home/guido/Xilinx-tools/Vitis/2022.2/bin:/home/guido/Xilinx-tools/Vivado/2022.2/ids_lite/ISE/bin/lin64:/home/guido/Xilinx-tools/Vivado/2022.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/media/guido/Acer/EBAZ4205_SDR_HDMI_PS2/Vivado/Vivado.runs/ebaz4205_axi_gpio_1_0_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log ebaz4205_axi_gpio_1_0.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source ebaz4205_axi_gpio_1_0.tcl

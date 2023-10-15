Alchitry Au+
============

# Info

- FPGA part number: `xc7a100tftg256-1`.
- [FPGA Datasheet](https://www.mouser.ie/datasheet/2/903/ds180_7Series_Overview-1591537.pdf) 
- [Board Schematics](https://cdn.sparkfun.com/assets/a/2/2/0/a/alchitry_au_sch_update-2.pdf)
- [Developer](https://alchitry.com/)
- [Base Project](https://github.com/alchitry/Au-Base-Project)

# FTDI in Vivado

Full article: [https://docs.xilinx.com/r/en-US/ug908-vivado-programming-debugging/Programming-FTDI-Devices-for-Vivado-Hardware-Manager-Support]

We need to use `program_ftdi` utility (from Tcl console) to configure Channel A to be used as a USB-to-JTAG interface:

```tcl
# read serial (optional)
program_ftdi -read

program_ftdi -write -ftdi FT2232H -serial AUP4QS52EA -vendor Alchitry -board "Au+" -desc "Alchitry Au+ Board"
```

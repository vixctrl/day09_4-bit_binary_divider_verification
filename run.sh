#!/bin/bash
iverilog -o divider_4bit divider_4bit.v tb_divider_4bit.v
vvp divider_4bit
gtkwave output.vcd &

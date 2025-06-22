I designed a parametrizable N-bit counter in VHDL. It uses generic parameters to configure the number of bits and the counting limit. The input signals control reset, count enable, 
counting direction (up or down), and loading of an external value set via the board’s switches. I also developed a frequency divider module with selectable division rates, allowing 
dynamic control over the counter’s clock frequency. I tested the design through simulation and on a Nexys A7-100T FPGA board.

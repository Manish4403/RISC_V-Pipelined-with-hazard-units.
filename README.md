# RISC_V-Pipelined-with-hazard-units.
I've completed a project on Processor design. In which i designed a RISC-V cpu with 37 instructions. There are separate MUXs for selection of all Load, Store and Branch instructions. Alu unit has branch flag which tells whether to take branch or not. Hazard unit was given to remove the data and control hazards.
Find a maximum number out of 10 program is ran on it. It produces the result succesfully.
$\textbf{The result took 10.5 clock cycles}$. (0.5) because i've triggered the register file with negedge of clock.


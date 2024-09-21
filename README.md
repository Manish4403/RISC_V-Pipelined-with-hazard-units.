# RISC_V-Pipelined-with-hazard-units.
I've completed a project on Processor design. In which i designed a RISC-V cpu with 37 instructions. There are separate MUXs for selection of all Load, Store and Branch instructions. Alu unit has branch flag which tells whether to take branch or not. Hazard unit was given to remove the data and control hazards.
Find a maximum number out of 10 program is ran on it. It produces the result succesfully.
$\textbf{The result took 123 clock cycles in contrast to multicycle design which takes 220 cycle to execute the same program}$. (0.5) because i've triggered the register file with negedge of clock.
## The maximum frequency achieved is 100Mhz.


![Power](https://github.com/user-attachments/assets/2c50f5e1-0273-4f42-8390-80c10eb43b83)
![Screenshot 2024-09-20 201118](https://github.com/user-attachments/assets/37cfc0ff-8dca-4043-ab4e-26e09462660b)
![Timing](https://github.com/user-attachments/assets/a76fdbfb-138f-48de-ab89-da24cba57105)
![Delay](https://github.com/user-attachments/assets/4383962d-e7f2-4584-b4e9-e033c5d8b611)

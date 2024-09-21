# RISC_V-Pipelined-with-hazard-units.
I've completed a project on Processor design. In which i designed a RISC-V cpu with 37 instructions. There are separate MUXs for selection of all Load, Store and Branch instructions. Alu unit has branch flag which tells whether to take branch or not. Hazard unit was given to remove the data and control hazards.
Find a maximum number out of 10 program is ran on it. It produces the result succesfully.
$\textbf{The result took 123 clock cycles in contrast to multicycle design which takes 220 cycle to execute the same program}$. (0.5) because i've triggered the register file with negedge of clock.
## The maximum frequency achieved is 100Mhz.


![Power](https://github.com/user-attachments/assets/2c50f5e1-0273-4f42-8390-80c10eb43b83)
![Screenshot 2024-09-20 201118](https://github.com/user-attachments/assets/37cfc0ff-8dca-4043-ab4e-26e09462660b)
![Timing](https://github.com/user-attachments/assets/a76fdbfb-138f-48de-ab89-da24cba57105)
![Screenshot 2024-09-21 104246](https://github.com/user-attachments/assets/27131874-ac4b-4305-af4e-94a3992b5856)
![Screenshot 2024-09-21 104447](https://github.com/user-attachments/assets/cff08bfd-fb15-4e8a-9251-0d10dc8b568a)
![Screenshot 2024-09-21 105937](https://github.com/user-attachments/assets/f04a8779-3015-43d3-a0b9-5f467bf46597)

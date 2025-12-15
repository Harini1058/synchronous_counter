# synchronous_counter
# AIM:

To implement 4 bit synchronous up counter and validate functionality.

# SOFTWARE REQUIRED:

Quartus prime

# THEORY

4 bit synchronous UP Counter

If we enable each J-K flip-flop to toggle based on whether or not all preceding flip-flop outputs (Q) are “high,” we can obtain the same counting sequence as the asynchronous circuit without the ripple effect, since each flip-flop in this circuit will be clocked at exactly the same time:

<img width="565" height="338" alt="Screenshot 2025-12-15 235249" src="https://github.com/user-attachments/assets/3c189b68-b1a0-4f46-ad61-c8f33fd96d35" />

<img width="760" height="400" alt="Screenshot 2025-12-15 235259" src="https://github.com/user-attachments/assets/50d517dc-e390-4215-b23f-ad3421bdc136" />


Each flip-flop in this circuit will be clocked at exactly the same time. The result is a four-bit synchronous “up” counter. Each of the higher-order flip-flops are made ready to toggle (both J and K inputs “high”) if the Q outputs of all previous flip-flops are “high.” Otherwise, the J and K inputs for that flip-flop will both be “low,” placing it into the “latch” mode where it will maintain its present output state at the next clock pulse. Since the first (LSB) flip-flop needs to toggle at every clock pulse, its J and K inputs are connected to Vcc or Vdd, where they will be “high” all the time. The next flip-flop need only “recognize” that the first flip-flop’s Q output is high to be made ready to toggle, so no AND gate is needed. However, the remaining flip-flops should be made ready to toggle only when all lower-order output bits are “high,” thus the need for AND gates.

# Procedure

Open Quartus software and create a new Verilog file. Paste the code and save it.
Compile the program to check for errors.
Generate the RTL schematic via the RTL Viewer and save the logic diagram.
Use the Waveform Editor to assign nodes for clk, rstn, and out.
Simulate the design with different clk and rstn combinations to generate the timing diagram, and save the results.

# PROGRAM


# Developed by: HARINI G
# RegisterNumber: 25015377

module synchronous_up_counter (
    input  wire clk,      
    input  wire rst,      
    output reg  [2:0] q   
);

always @(posedge clk) begin
    if (rst)
        q <= 3'b000;     
    else
        q <= q + 1;       
end

endmodule

# RTL LOGIC UP COUNTER

<img width="1532" height="704" alt="Screenshot 2025-12-15 232000" src="https://github.com/user-attachments/assets/80f0519b-a2e1-4ae6-a8bd-d72097bac4dc" />


# TIMING DIAGRAM FOR IP COUNTER

<img width="1025" height="546" alt="Screenshot 2025-12-16 000342" src="https://github.com/user-attachments/assets/555438f5-d0a7-41c8-ab26-a44c880ab1cc" />


# TRUTH TABLE

<img width="702" height="360" alt="image" src="https://github.com/user-attachments/assets/4382448a-43b4-4abb-8f60-f0c4b288c2d2" />


# RESULTS

Thus,Program for flipflops and verified its truth table in quartus using Verilog programming.


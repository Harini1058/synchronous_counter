module SISO_shiftregister(clk, rst, q);
    input clk;
    input rst;
    output [3:0] q;
    reg [3:0] q;

    always @(posedge clk or posedge rst)
    begin
        if (rst) begin
            q <= 4'b0000;      
        end
        else begin
            q[0] <= q[3];      
            q[1] <= q[0];
            q[2] <= q[1];
            q[3] <= q[2];
        end
    end
endmodule
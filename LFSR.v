module LFSR(clk, set, Q);
input clk; //I clock in
input set; //I set
output [3:1] Q; // O Result
reg [3:1] Q;

always@ (posedge clk)
 begin
    if (set)begin
        Q[3]<=1;
        Q[2]<=1;
        Q[1]<=0;
    end
    else begin
       Q[3]<=Q[2];
       Q[2]<=Q[1];
       Q[1]<=Q[1]^Q[3];
    end
        
   
 end
endmodule

//pipo_shift_reg//
module pi_po_reg(input clk,rst,input [3:0]din,output reg [3:0]dout);
always @(posedge clk)
begin
if(rst)
dout<=4'b0;
else
dout<=din;
end
endmodule


//tb_shift_reg//
module tb_pi_po_reg;
reg clk,rst;
reg [3:0]din;
wire [3:0]dout;
pi_po_reg btt(.*);
always #50 clk=~clk;
initial begin
$monitor("clk=%b,rst=%b,din=%b,dout=%b",clk,rst,din,dout);
clk=1'b0;
rst=1'b1;
din=4'b1101;
#100 rst=1'b0;din=4'b1101;
#500 rst=1'b0;din=4'b1010;
end
endmodule

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




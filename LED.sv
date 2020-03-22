
module LED (clk,rst,LEDpin,Number);
input clk, rst;
input [3:0] Number;
output [6:0] LEDpin;
reg [6:0] LEDpin;

always @ (posedge clk or negedge rst)
begin 
if (rst==0)

begin
LEDpin= 7'b00000000;
end

else
 
begin
 case(Number)
 4'b0000: LEDpin = 7'b0000001; // "0"  
 4'b0001: LEDpin = 7'b1001111; // "1" 
 4'b0010: LEDpin = 7'b0010010; // "2" 
 4'b0011: LEDpin = 7'b0000110; // "3" 
 4'b0100: LEDpin = 7'b1001100; // "4" 
 4'b0101: LEDpin = 7'b0100100; // "5" 
 4'b0110: LEDpin = 7'b0100000; // "6" 
 4'b0111: LEDpin = 7'b0001111; // "7" 
 4'b1000: LEDpin = 7'b0000000; // "8"  
 4'b1001: LEDpin = 7'b0000100; // "9" 
 endcase
 end
end
 
 endmodule
 

module divider(input_frequency,output_frequency);
input input_frequency; 
output output_frequency; 
reg[27:0] c=28'd0;
parameter d = 28'd10; //10 for the simulation, and 50000000 for the actual test
always @(posedge input_frequency)
begin
 c <= c + 28'd1;
 if(c>=(d-1))
  c <= 28'd0;
end

assign output_frequency = (c<d/2)?1'b0:1'b1;


endmodule

module demux8_1_tb;
reg [2:0] sel_tb;
reg in_tb;
wire [7:0] y_tb;
integer m;
demux8_1 DUT(.sel(sel_tb), .in(in_tb), .y(y_tb) );

initial begin
 
 $monitor ("values of inputs and outputs are Time=%0t, sel_tb=%b, in_tb=%b, y_tb=%b", $time, sel_tb, in_tb, y_tb);
 
 for(m=0;m<16;m=m+1)begin
  {sel_tb,in_tb} = m[3:0];
  #1;
  
  end
  
  #3;
  $finish;
  
  end 
  


endmodule

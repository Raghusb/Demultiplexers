module demux2_1_tb;
reg s_tb;
reg in_tb;
wire [1:0] y_tb;
integer n;

demux2_1 DUT (.s(s_tb), .in(in_tb), .y(y_tb) );

initial begin
$monitor ("Values of the inputs and outputs are Time=%0t, s_tb=%b, in_tb=%b, y_tb=%b", $time, s_tb, in_tb, y_tb );

for(n=0;n<4;n=n+1)begin
  {s_tb,in_tb}=n;
  #1;
  end
  
  #2;
  $finish;
  end
  

endmodule

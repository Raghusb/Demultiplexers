module demux4_1_tb;

 reg [1:0] sel_tb;
 reg in_tb;
 wire [3:0] y_tb;
 integer i;
 
 demux4_1 DUT (.sel(sel_tb), .in(in_tb), .y(y_tb) );
 
 initial begin
 $monitor ("Values of inputs and outputs are TIME=%0t,sel_tb=%0b, in_tb=%0b, y_tb=%0b",$time,sel_tb,in_tb,y_tb);
 
 for( i=0;i<8;i=i+1)begin
 {sel_tb,in_tb} =i;
 
 #2;
 end
 
 $finish;
 end
 
 
endmodule


module demux2_1( input s, input in , output reg [1:0] y

    );
    always@(*)
    begin
    case(s)
    0: 
      begin
      y[0] = in;
      y[1] = 0;
      end      
    1: 
       begin
       y[1] = in;
       y[0] = 0;
       end 
       default: y=0;
    
    endcase
    end
           
endmodule

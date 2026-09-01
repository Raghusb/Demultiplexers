module demux8_1(input [2:0] sel, input in, output reg [7:0] y

    );
    
    always@(*) 
    begin
    y=8'b0;
    case(sel)
    3'd0:y[0]=in;
    3'd1: y[1]=in;
    3'd2: y[2]=in;
    3'd3: y[3]=in;
    3'd4: y[4]=in;
    3'd5: y[5]=in;
    3'd6: y[6]=in;
    3'd7: y[7]=in;
    
    default: y=0;
    endcase
    end
    
endmodule

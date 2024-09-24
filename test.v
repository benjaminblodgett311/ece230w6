`timescale 1ns/1ps

module test();
    reg [9:0] sw;
    wire [13:0] led;
    integer i;
    
    top uut(
        .sw(sw),
        .led(led)
    );
    
    initial begin
        $dumpvars(0, test);
        sw = 0;
        #2 sw = 'b01;
        #2 sw = 'b10;
        #2 sw = 'b11;
        #2 sw = 0;
        #2 sw = 'b0010111000;
        #2 sw = 0;
        for (i = 0; i < 256; i = i + 1) begin
            #2 sw[9:2] = i;
        end
        #2 sw = 0;
        #2 $finish;
    end

endmodule

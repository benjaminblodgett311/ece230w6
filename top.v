module top (
	input [9:0] sw,
	output [13:0] led
);

	halfsub half(
		.A(sw[0]),
		.B(sw[1]),
        .Y(led[0]),
        .Borrow(led[1])
	);

    onescompliment ones(
        .A(sw[5:2]),
        .B(sw[6:9]),
        .Y(led[5:2])
    
	);
    
     twoscompliment twos(
        .A(sw[9:2]),
        .Y(led[13:6])
	);
    

    endmodule
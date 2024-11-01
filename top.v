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

    onescompliment onescomp(
        .A(sw[5:2]),
        .B(sw[9:6]),
        .Ones(led[5:2]) 
	);
    
     twoscompliment twos(
        .A(sw[9:2]),
        .Twos(led[13:6])
	);
    

    endmodule
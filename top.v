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
        .A0(sw[2]),
		.A1(sw[3]),
        .A2(sw[4]),
        .A3(sw[5]),
        .B0(sw[6]),
        .B1(sw[7]),
        .B2(sw[8]),
        .B3(sw[9]),
        .Ones0(led[2]),
        .Ones1(led[3]),
        .Ones2(led[4]),
        .Ones3(led[5])
	);

     twoscompliment twos(
        .A0(sw[2]),
		.A1(sw[3]),
        .A2(sw[4]),
        .A3(sw[5]),
        .A4(sw[6]),
        .A5(sw[7]),
        .A6(sw[8]),
        .A7(sw[9]),
        .Twos0(led[6]),
        .Twos1(led[7]),
        .Twos2(led[8]),
        .Twos3(led[9]),
        .Twos4(led[10]),
        .Twos5(led[11]),
        .Twos6(led[12]),
        .Twos7(led[13])
	);
    

    endmodule
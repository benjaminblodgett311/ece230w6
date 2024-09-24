module onescompliment(
    input A0, A1, A2, A3, B0, B1, B2, B3, 
   
    output Ones0, Ones1, Ones2, Ones3
);

assign Ones0 = A0 ^ B0;
assign Ones1 = A1 ^ B1; 
assign Ones2 = A2 ^ B2;
assign Ones3 = A3 ^ B3; 







endmodule
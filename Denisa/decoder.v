module testbanch;
reg A, B;
wire D, S;

initial begin
A = 0; B = 0;
#1 $display("C=%b,S=%b ", C, S);
A = 0; B = 1;
#1 $display("C = %b
A = 1; B = 0;
#1 $display;
A = 1; B = 1;
#1 $display;
end





endmodule

module XoR(A, B, S)



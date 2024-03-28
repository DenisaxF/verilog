module fulladder(a,b,cin,sum,cout);

input a,b,cin;
output sum,cout;
wire w1,w2,w3,w4,w5,w6,w7;

nand n1(w1, a,b);
nand n2(w3,a,w1);
nand n3(w2,w1,b);
nand n4(w4,w3,w2);
nand n5(w5,w3,cin);
nand n6(w6,w4,w5);
nand n7(w7,w5,cin);
nand n8(cout, w1,w5);
nand n9(sum,w6,w7);

endmodule

module Testbench;

reg A1,B1,A2,B2,A3,B3,A4,B4,CIN;
wire w1,w2,w3,cout;
wire sum1,sum2,sum3,sum4;

fulladder f1(A1,B1,CIN,sum1,w1);
fulladder f2(A2,B2,w1,sum2,w2);
fulladder f3(A3,B3,w2,sum3,w3);
fulladder f4(A4,B4,w3,sum4,cout);

initial begin
A1 = 1; A2 = 0; A3=0;A4=0; B1=1;B2=1;B3=1;B4=1;
#1 $display("sum1=%b,sum2=%b,sum3=%b,sum4=%b,cout=%b ", sum1,sum2,sum3,sum4,cout);
end

endmodule

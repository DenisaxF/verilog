module XOR(in1, in2, out);
input in1, in2;
output out;
assign out=in1^in2;
endmodule
                      
module AND(in1,in2,out);
input in1, in2;
output out;
assign out=in1&in2;
endmodule

module OR(in1, in2, out);
input in1, in2;
output out;
assign out=in1^in2;
endmodule
        
module testbanch;
reg I1, I2, C1;
wire w1, w2,w3,sum,cout;

XOR  X1(I1, I2, w1);
XOR X2(w1,C1,sum);
AND A1(C1,w1,w2);
AND A2(I1,I2,w3);

OR O1(w2,w3,cout);


initial begin
I1 = 0; I2 = 0;C1=0;
#1 $display("sum=%b,cout=%b ", sum, cout);
I1 = 0; I2 = 0;C1=1;
#1 $display("sum=%b,cout=%b ", sum, cout);
I1 = 0; I2 = 1;C1=0;
#1 $display("sum=%b,cout=%b ", sum, cout);
I1 = 0; I2 = 1;C1=1;
#1 $display("sum=%b,cout=%b ", sum, cout);
I1 = 1; I2 = 0;C1=0;
#1 $display("sum=%b,cout=%b ", sum, cout);
I1 = 1; I2 = 0;C1=1;
#1 $display("sum=%b,cout=%b ", sum, cout);
I1 = 1; I2 = 1;C1=0;
#1 $display("sum=%b,cout=%b ", sum, cout);
I1 = 1; I2 = 1;C1=1;
#1 $display("sum=%b,cout=%b ", sum, cout);

end





endmodule

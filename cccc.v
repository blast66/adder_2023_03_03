module cccc(x, y, c0, s, cout);
input [3:0] x, y;
input c0;
output [3:0] s;
output cout;

wire c1,c2,c3;

F2_adder fa0(x[0],y[0],c0,s[0],c1);
F2_adder fa1(x[1],y[1],c1,s[1],c2);
F2_adder fa2(x[2],y[2],c2,s[2],c3);
F2_adder fa3(x[3],y[3],c3,s[3],cout);

endmodule

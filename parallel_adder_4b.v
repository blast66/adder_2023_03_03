module parallel_adder_4b(x,y,c0,s,cout);
input [3:0] x,y;
input c0;
output [3:0] s;
output cout;
wire c1,c2,c3;

assign {c1,s[0]} = full_adder(x[0],y[0],c0);
assign {c2,s[1]} = full_adder(x[1],y[1],c1);
assign {c3,s[2]} = full_adder(x[2],y[2],c2);
assign {cin,s[3]} = full_adder(x[3],y[3],c3);

function [1:0] full_adder;
input a, b, cin;
full_adder = a + b + cin;
endfunction

endmodule
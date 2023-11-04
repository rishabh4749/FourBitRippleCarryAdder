module fulladder(a,b,c,sum,carry);
  input a;
  input b;
  input c;
  output carry;
  output sum;
  assign sum=a^b^c;
  assign carry=(a&b)|(b&c)|(c&a);
endmodule
module fourbitripplecarryadder(A,B,cin,sum,carries);
  input [3:0]A;
  input [3:0]B;
  input [1:0]cin;
  output [3:0]carries;
  output [3:0]sum;
  // instantiation
  // no need for clock since combinational ckt
  fulladder adder0(A[0],B[0],cin,sum[0],carries[0]);
  fulladder adder1(A[1],B[1],carries[0],sum[1],carries[1]);
  fulladder adder2(A[2],B[2],carries[1],sum[2],carries[2]);
  fulladder adder3(A[3],B[3],carries[2],sum[3],carries[3]);
endmodule
  
module tb;
  reg [3:0]A;
  reg [3:0]B;
  reg [1:0]cin;
  wire [3:0]carry;
  wire [3:0]sum;
  fourbitripplecarryadder a0(A,B,cin,sum,carry);
  initial
    begin
      A<=4'b1111;
      B<=4'b0000;
      cin<=1'b0;
    end
  initial
    begin
    $dumpfile("fourbitripplecarryadder.vcd");
  $dumpvars(0,tb);
      $monitor(" A=%b B=%b cin=%b Sum=%b carry=%b ",A,B,cin,sum,carry[3]);
      // carry[3] since last carry is the one supposed to be in the output
  end
endmodule
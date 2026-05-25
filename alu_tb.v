module alu_tb;
 reg [7:0] A, B;
 reg [2:0] opcode;
 wire [15:0] result;
 alu uut (
  .A(A),
  .B(B),
  .opcode(opcode),
  .result(result)
 );

 initial begin
  // Waveform dump
  $dumpfile("dump.vcd");
  $dumpvars(0, alu_tb);
  // Inputs
  A = 8'd5;
  B = 8'd4;
  opcode = 3'b000; #10;
  $display("ADD Result = %0d", result);
  opcode = 3'b001; #10;
  $display("SUB Result = %0d", result);
  opcode = 3'b010; #10;
   $display("AND Result = %0d", result);
  opcode = 3'b011; #10;
  $display("OR Result = %0d", result);
  opcode = 3'b100; #10;
  $display("XOR Result = %0d", result);
  opcode = 3'b101; #10;
  $display("MUL Result = %0d", result);
  opcode = 3'b110; #10;
  $display("CMP Result = %0d", result);
  opcode = 3'b111; #10;
  $display("NOP Result = %0d", result);

  $finish;

 end

endmodule

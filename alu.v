module alu (
 input [7:0] A, B,
 input [2:0] opcode,
 output reg [15:0] result
);
 always @(*) begin
  case (opcode)
   3'b000: result = A + B;    // ADD
   3'b001: result = A - B;    // SUB
   3'b010: result = A & B;    // AND
   3'b011: result = A | B;    // OR
   3'b100: result = A ^ B;    // XOR
   3'b101: result = A * B;    // MUL
   3'b110: result = (A == B);  // CMP
   3'b111: result = 0;      // NOP
   default: result = 0;
  endcase
 end
endmodule

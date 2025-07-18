module alu_32_bit (
  input wire [31:0] A,
  input wire [31:0] B,
  input wire [3:0] control,
  output reg [31:0] result,
  output wire zero_flag
);

  // Operation codes
  localparam ADD  = 4'b0000;
  localparam SUB  = 4'b0001;
  localparam AND_ = 4'b0010;
  localparam OR_  = 4'b0011;
  localparam XOR_ = 4'b0100;
  localparam SLL  = 4'b0101;  
  localparam SRL  = 4'b0110; 
  localparam SRA  = 4'b0111;  
  localparam SLT  = 4'b1000;  
  localparam NOR  = 4'b1001;  
  localparam MUL  = 4'b1010;  

  wire [31:0] sra_result;
  wire [31:0] slt_result;

  assign sra_result = (A[31] == 1'b0) ? (A >> B[4:0]) : ((A >> B[4:0]) | (~(32'hFFFFFFFF >> B[4:0])));


  assign slt_result = (
    (A[31] != B[31]) ? (A[31] ? 32'd1 : 32'd0) :
    (A < B) ? 32'd1 : 32'd0
  );

  always @(*) begin
    case (control)
      ADD:  result = A + B;
      SUB:  result = A - B;
      AND_: result = A & B;
      OR_:  result = A | B;
      XOR_: result = A ^ B;
      SLL:  result = A << B[4:0];
      SRL:  result = A >> B[4:0];
      SRA:  result = sra_result;
      SLT:  result = slt_result;
      NOR:  result = ~(A | B);
      MUL:  result = A * B;
      default: result = 32'h00000000;
    endcase
  end

  assign zero_flag = (result == 32'h00000000) ? 1'b1 : 1'b0;

endmodule


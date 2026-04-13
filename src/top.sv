`include "src/decoder.sv"
`include "src/adder.sv"

module top (
    input wire [3:0] val1,
    input wire [3:0] val2,
    output logic [7:0] seg7
);

logic [4:0] res;

adder adder_test (
    .val1(val1),
    .val2(val2),
    .res(res)
);

decoder decoder_test (
    .bcd(res[3:0]),
    .seg7(seg7[6:0])
);

assign seg7[7] = res[4];


endmodule

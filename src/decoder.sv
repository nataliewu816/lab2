module decoder(
    input wire [3:0] bcd,
    output logic [6:0] seg7
);

always_comb begin
    case (bcd)
        4'h0: seg7 = 7'b0111111; // 0
        4'h1: seg7 = 7'b0000110; // 1
        4'h2: seg7 = 7'b1011011; // 2
        4'h3: seg7 = 7'b1001111; // 3
        4'h4: seg7 = 7'b1100110; // 4
        4'h5: seg7 = 7'b1101101; // 5
        4'h6: seg7 = 7'b1111101; // 6
        4'h7: seg7 = 7'b0000111; // 7
        4'h8: seg7 = 7'b1111111; // 8
        4'h9: seg7 = 7'b1101111; // 9
        4'hA: seg7 = 7'b1110111; // A
        4'hB: seg7 = 7'b1111100; // B
        4'hC: seg7 = 7'b0111001; // C
        4'hD: seg7 = 7'b1011110; // D
        4'hE: seg7 = 7'b1111001; // E
        4'hF: seg7 = 7'b1110001; // F
        default: seg7 = 7'b0000000;
    endcase
end

endmodule
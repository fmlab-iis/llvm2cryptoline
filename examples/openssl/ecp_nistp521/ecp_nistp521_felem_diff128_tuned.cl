(* NOTE: range property does not hold *)
(* quine: -v -btor -isafety -jobs 20
Parsing Cryptoline file:                [OK]            0.001432 seconds
Checking well-formedness:               [OK]            0.000426 seconds
Transforming to SSA form:               [OK]            0.000867 seconds
Rewriting assignments:                  [OK]            0.000261 seconds
Verifying program safety:               [OK]            0.282650 seconds
Verifying range specification:          [OK]            0.013466 seconds
Verifying algebraic specification:      [OK]            0.032381 seconds
Verification result:                    [OK]            0.331874 seconds
*)

proc main (in0_L, in0_H, in1_L, in1_H, in2_L, in2_H, in3_L, in3_H,
           in4_L, in4_H, in5_L, in5_H, in6_L, in6_H, in7_L, in7_H,
           in8_L, in8_H,
           out0_L, out0_H, out1_L, out1_H, out2_L, out2_H, out3_L, out3_H,
           out4_L, out4_H, out5_L, out5_H, out6_L, out6_H, out7_L, out7_H,
           out8_L, out8_H) =
{
  bveTrue
  |
  bvrands [
    limbs 64 [bvrvar in0_L, bvrvar in0_H] < bvrconst 128 (2^126),
    limbs 64 [bvrvar in1_L, bvrvar in1_H] < bvrconst 128 (2^126),
    limbs 64 [bvrvar in2_L, bvrvar in2_H] < bvrconst 128 (2^126),
    limbs 64 [bvrvar in3_L, bvrvar in3_H] < bvrconst 128 (2^126),
    limbs 64 [bvrvar in4_L, bvrvar in4_H] < bvrconst 128 (2^126),
    limbs 64 [bvrvar in5_L, bvrvar in5_H] < bvrconst 128 (2^126),
    limbs 64 [bvrvar in6_L, bvrvar in6_H] < bvrconst 128 (2^126),
    limbs 64 [bvrvar in7_L, bvrvar in7_H] < bvrconst 128 (2^126),
    limbs 64 [bvrvar in8_L, bvrvar in8_H] < bvrconst 128 (2^126),
    limbs 64 [bvrvar out0_L, bvrvar out0_H] < bvrconst 128 (2^126),
    limbs 64 [bvrvar out1_L, bvrvar out1_H] < bvrconst 128 (2^126),
    limbs 64 [bvrvar out2_L, bvrvar out2_H] < bvrconst 128 (2^126),
    limbs 64 [bvrvar out3_L, bvrvar out3_H] < bvrconst 128 (2^126),
    limbs 64 [bvrvar out4_L, bvrvar out4_H] < bvrconst 128 (2^126),
    limbs 64 [bvrvar out5_L, bvrvar out5_H] < bvrconst 128 (2^126),
    limbs 64 [bvrvar out6_L, bvrvar out6_H] < bvrconst 128 (2^126),
    limbs 64 [bvrvar out7_L, bvrvar out7_H] < bvrconst 128 (2^126),
    limbs 64 [bvrvar out8_L, bvrvar out8_H] < bvrconst 128 (2^126)
  ]
}

bvAssign   L0_0 (bvVar in0_L);
bvAssign   L0_8 (bvVar in0_H);
bvAssign  L0_16 (bvVar in1_L);
bvAssign  L0_24 (bvVar in1_H);
bvAssign  L0_32 (bvVar in2_L);
bvAssign  L0_40 (bvVar in2_H);
bvAssign  L0_48 (bvVar in3_L);
bvAssign  L0_56 (bvVar in3_H);
bvAssign  L0_64 (bvVar in4_L);
bvAssign  L0_72 (bvVar in4_H);
bvAssign  L0_80 (bvVar in5_L);
bvAssign  L0_88 (bvVar in5_H);
bvAssign  L0_96 (bvVar in6_L);
bvAssign L0_104 (bvVar in6_H);
bvAssign L0_112 (bvVar in7_L);
bvAssign L0_120 (bvVar in7_H);
bvAssign L0_128 (bvVar in8_L);
bvAssign L0_136 (bvVar in8_H);

bvAssign   L1_0 (bvVar out0_L);
bvAssign   L1_8 (bvVar out0_H);
bvAssign  L1_16 (bvVar out1_L);
bvAssign  L1_24 (bvVar out1_H);
bvAssign  L1_32 (bvVar out2_L);
bvAssign  L1_40 (bvVar out2_H);
bvAssign  L1_48 (bvVar out3_L);
bvAssign  L1_56 (bvVar out3_H);
bvAssign  L1_64 (bvVar out4_L);
bvAssign  L1_72 (bvVar out4_H);
bvAssign  L1_80 (bvVar out5_L);
bvAssign  L1_88 (bvVar out5_H);
bvAssign  L1_96 (bvVar out6_L);
bvAssign L1_104 (bvVar out6_H);
bvAssign L1_112 (bvVar out7_L);
bvAssign L1_120 (bvVar out7_H);
bvAssign L1_128 (bvVar out8_L);
bvAssign L1_136 (bvVar out8_H);

(*  %0 = load i128, i128* %in, align 16, !tbaa !2 *)
bvAssign v0_L (bvVar L0_0);
bvAssign v0_H (bvVar L0_8);
(*  %sub = sub i128 170141183460469230551095682998472802304, %0 *)
bvSubC carry sub_L (bvConst 0) (bvVar v0_L);
bvSbb sub_H (bvConst 9223372036854775744) (bvVar v0_H) carry;
(*  %1 = load i128, i128* %out, align 16, !tbaa !2 *)
bvAssign v1_L (bvVar L1_0);
bvAssign v1_H (bvVar L1_8);
(*  %add = add i128 %sub, %1 *)
bvAddC carry add_L (bvVar sub_L) (bvVar v1_L);
bvAdc add_H (bvVar sub_H) (bvVar v1_H) carry;
(*  store i128 %add, i128* %out, align 16, !tbaa !2 *)
bvAssign L1_0 (bvVar add_L);
bvAssign L1_8 (bvVar add_H);
(*  %arrayidx2 = getelementptr inbounds i128, i128* %in, i64 1 *)
(*  %2 = load i128, i128* %arrayidx2, align 16, !tbaa !2 *)
bvAssign v2_L (bvVar L0_16);
bvAssign v2_H (bvVar L0_24);
(*  %sub3 = sub i128 170141183460469231141391493357178454016, %2 *)
bvSubC carry sub3_L (bvConst 0) (bvVar v2_L);
bvSbb sub3_H (bvConst 9223372036854775776) (bvVar v2_H) carry;
(*  %arrayidx4 = getelementptr inbounds i128, i128* %out, i64 1 *)
(*  %3 = load i128, i128* %arrayidx4, align 16, !tbaa !2 *)
bvAssign v3_L (bvVar L1_16);
bvAssign v3_H (bvVar L1_24);
(*  %add5 = add i128 %sub3, %3 *)
bvAddC carry add5_L (bvVar sub3_L) (bvVar v3_L);
bvAdc add5_H (bvVar sub3_H) (bvVar v3_H) carry;
(*  store i128 %add5, i128* %arrayidx4, align 16, !tbaa !2 *)
bvAssign L1_16 (bvVar add5_L);
bvAssign L1_24 (bvVar add5_H);
(*  %arrayidx6 = getelementptr inbounds i128, i128* %in, i64 2 *)
(*  %4 = load i128, i128* %arrayidx6, align 16, !tbaa !2 *)
bvAssign v4_L (bvVar L0_32);
bvAssign v4_H (bvVar L0_40);
(*  %sub7 = sub i128 170141183460469231141391493357178454016, %4 *)
bvSubC carry sub7_L (bvConst 0) (bvVar v4_L);
bvSbb sub7_H (bvConst 9223372036854775776) (bvVar v4_H) carry;
(*  %arrayidx8 = getelementptr inbounds i128, i128* %out, i64 2 *)
(*  %5 = load i128, i128* %arrayidx8, align 16, !tbaa !2 *)
bvAssign v5_L (bvVar L1_32);
bvAssign v5_H (bvVar L1_40);
(*  %add9 = add i128 %sub7, %5 *)
bvAddC carry add9_L (bvVar sub7_L) (bvVar v5_L);
bvAdc add9_H (bvVar sub7_H) (bvVar v5_H) carry;
(*  store i128 %add9, i128* %arrayidx8, align 16, !tbaa !2 *)
bvAssign L1_32 (bvVar add9_L);
bvAssign L1_40 (bvVar add9_H);
(*  %arrayidx10 = getelementptr inbounds i128, i128* %in, i64 3 *)
(*  %6 = load i128, i128* %arrayidx10, align 16, !tbaa !2 *)
bvAssign v6_L (bvVar L0_48);
bvAssign v6_H (bvVar L0_56);
(*  %sub11 = sub i128 170141183460469231141391493357178454016, %6 *)
bvSubC carry sub11_L (bvConst 0) (bvVar v6_L);
bvSbb sub11_H (bvConst 9223372036854775776) (bvVar v6_H) carry;
(*  %arrayidx12 = getelementptr inbounds i128, i128* %out, i64 3 *)
(*  %7 = load i128, i128* %arrayidx12, align 16, !tbaa !2 *)
bvAssign v7_L (bvVar L1_48);
bvAssign v7_H (bvVar L1_56);
(*  %add13 = add i128 %sub11, %7 *)
bvAddC carry add13_L (bvVar sub11_L) (bvVar v7_L);
bvAdc add13_H (bvVar sub11_H) (bvVar v7_H) carry;
(*  store i128 %add13, i128* %arrayidx12, align 16, !tbaa !2 *)
bvAssign L1_48 (bvVar add13_L);
bvAssign L1_56 (bvVar add13_H);
(*  %arrayidx14 = getelementptr inbounds i128, i128* %in, i64 4 *)
(*  %8 = load i128, i128* %arrayidx14, align 16, !tbaa !2 *)
bvAssign v8_L (bvVar L0_64);
bvAssign v8_H (bvVar L0_72);
(*  %sub15 = sub i128 170141183460469231141391493357178454016, %8 *)
bvSubC carry sub15_L (bvConst 0) (bvVar v8_L);
bvSbb sub15_H (bvConst 9223372036854775776) (bvVar v8_H) carry;
(*  %arrayidx16 = getelementptr inbounds i128, i128* %out, i64 4 *)
(*  %9 = load i128, i128* %arrayidx16, align 16, !tbaa !2 *)
bvAssign v9_L (bvVar L1_64);
bvAssign v9_H (bvVar L1_72);
(*  %add17 = add i128 %sub15, %9 *)
bvAddC carry add17_L (bvVar sub15_L) (bvVar v9_L);
bvAdc add17_H (bvVar sub15_H) (bvVar v9_H) carry;
(*  store i128 %add17, i128* %arrayidx16, align 16, !tbaa !2 *)
bvAssign L1_64 (bvVar add17_L);
bvAssign L1_72 (bvVar add17_H);
(*  %arrayidx18 = getelementptr inbounds i128, i128* %in, i64 5 *)
(*  %10 = load i128, i128* %arrayidx18, align 16, !tbaa !2 *)
bvAssign v10_L (bvVar L0_80);
bvAssign v10_H (bvVar L0_88);
(*  %sub19 = sub i128 170141183460469231141391493357178454016, %10 *)
bvSubC carry sub19_L (bvConst 0) (bvVar v10_L);
bvSbb sub19_H (bvConst 9223372036854775776) (bvVar v10_H) carry;
(*  %arrayidx20 = getelementptr inbounds i128, i128* %out, i64 5 *)
(*  %11 = load i128, i128* %arrayidx20, align 16, !tbaa !2 *)
bvAssign v11_L (bvVar L1_80);
bvAssign v11_H (bvVar L1_88);
(*  %add21 = add i128 %sub19, %11 *)
bvAddC carry add21_L (bvVar sub19_L) (bvVar v11_L);
bvAdc add21_H (bvVar sub19_H) (bvVar v11_H) carry;
(*  store i128 %add21, i128* %arrayidx20, align 16, !tbaa !2 *)
bvAssign L1_80 (bvVar add21_L);
bvAssign L1_88 (bvVar add21_H);
(*  %arrayidx22 = getelementptr inbounds i128, i128* %in, i64 6 *)
(*  %12 = load i128, i128* %arrayidx22, align 16, !tbaa !2 *)
bvAssign v12_L (bvVar L0_96);
bvAssign v12_H (bvVar L0_104);
(*  %sub23 = sub i128 170141183460469231141391493357178454016, %12 *)
bvSubC carry sub23_L (bvConst 0) (bvVar v12_L);
bvSbb sub23_H (bvConst 9223372036854775776) (bvVar v12_H) carry;
(*  %arrayidx24 = getelementptr inbounds i128, i128* %out, i64 6 *)
(*  %13 = load i128, i128* %arrayidx24, align 16, !tbaa !2 *)
bvAssign v13_L (bvVar L1_96);
bvAssign v13_H (bvVar L1_104);
(*  %add25 = add i128 %sub23, %13 *)
bvAddC carry add25_L (bvVar sub23_L) (bvVar v13_L);
bvAdc add25_H (bvVar sub23_H) (bvVar v13_H) carry;
(*  store i128 %add25, i128* %arrayidx24, align 16, !tbaa !2 *)
bvAssign L1_96 (bvVar add25_L);
bvAssign L1_104 (bvVar add25_H);
(*  %arrayidx26 = getelementptr inbounds i128, i128* %in, i64 7 *)
(*  %14 = load i128, i128* %arrayidx26, align 16, !tbaa !2 *)
bvAssign v14_L (bvVar L0_112);
bvAssign v14_H (bvVar L0_120);
(*  %sub27 = sub i128 170141183460469231141391493357178454016, %14 *)
bvSubC carry sub27_L (bvConst 0) (bvVar v14_L);
bvSbb sub27_H (bvConst 9223372036854775776) (bvVar v14_H) carry;
(*  %arrayidx28 = getelementptr inbounds i128, i128* %out, i64 7 *)
(*  %15 = load i128, i128* %arrayidx28, align 16, !tbaa !2 *)
bvAssign v15_L (bvVar L1_112);
bvAssign v15_H (bvVar L1_120);
(*  %add29 = add i128 %sub27, %15 *)
bvAddC carry add29_L (bvVar sub27_L) (bvVar v15_L);
bvAdc add29_H (bvVar sub27_H) (bvVar v15_H) carry;
(*  store i128 %add29, i128* %arrayidx28, align 16, !tbaa !2 *)
bvAssign L1_112 (bvVar add29_L);
bvAssign L1_120 (bvVar add29_H);
(*  %arrayidx30 = getelementptr inbounds i128, i128* %in, i64 8 *)
(*  %16 = load i128, i128* %arrayidx30, align 16, !tbaa !2 *)
bvAssign v16_L (bvVar L0_128);
bvAssign v16_H (bvVar L0_136);
(*  %sub31 = sub i128 170141183460469231141391493357178454016, %16 *)
bvSubC carry sub31_L (bvConst 0) (bvVar v16_L);
bvSbb sub31_H (bvConst 9223372036854775776) (bvVar v16_H) carry;
(*  %arrayidx32 = getelementptr inbounds i128, i128* %out, i64 8 *)
(*  %17 = load i128, i128* %arrayidx32, align 16, !tbaa !2 *)
bvAssign v17_L (bvVar L1_128);
bvAssign v17_H (bvVar L1_136);
(*  %add33 = add i128 %sub31, %17 *)
bvAddC carry add33_L (bvVar sub31_L) (bvVar v17_L);
bvAdc add33_H (bvVar sub31_H) (bvVar v17_H) carry;
(*  store i128 %add33, i128* %arrayidx32, align 16, !tbaa !2 *)
bvAssign L1_128 (bvVar add33_L);
bvAssign L1_136 (bvVar add33_H);
(*  ret void *)

bvAssign ret0_L (bvVar   L1_0);
bvAssign ret0_H (bvVar   L1_8);
bvAssign ret1_L (bvVar  L1_16);
bvAssign ret1_H (bvVar  L1_24);
bvAssign ret2_L (bvVar  L1_32);
bvAssign ret2_H (bvVar  L1_40);
bvAssign ret3_L (bvVar  L1_48);
bvAssign ret3_H (bvVar  L1_56);
bvAssign ret4_L (bvVar  L1_64);
bvAssign ret4_H (bvVar  L1_72);
bvAssign ret5_L (bvVar  L1_80);
bvAssign ret5_H (bvVar  L1_88);
bvAssign ret6_L (bvVar  L1_96);
bvAssign ret6_H (bvVar L1_104);
bvAssign ret7_L (bvVar L1_112);
bvAssign ret7_H (bvVar L1_120);
bvAssign ret8_L (bvVar L1_128);
bvAssign ret8_H (bvVar L1_136);

{
  bveEqMod (limbs 58 [limbs 64 [bvvar ret0_L, bvvar ret0_H],
                      limbs 64 [bvvar ret1_L, bvvar ret1_H],
                      limbs 64 [bvvar ret2_L, bvvar ret2_H],
                      limbs 64 [bvvar ret3_L, bvvar ret3_H],
                      limbs 64 [bvvar ret4_L, bvvar ret4_H],
                      limbs 64 [bvvar ret5_L, bvvar ret5_H],
                      limbs 64 [bvvar ret6_L, bvvar ret6_H],
                      limbs 64 [bvvar ret7_L, bvvar ret7_H],
                      limbs 64 [bvvar ret8_L, bvvar ret8_H]])
           ((limbs 58 [limbs 64 [bvvar out0_L, bvvar out0_H],
                       limbs 64 [bvvar out1_L, bvvar out1_H],
                       limbs 64 [bvvar out2_L, bvvar out2_H],
                       limbs 64 [bvvar out3_L, bvvar out3_H],
                       limbs 64 [bvvar out4_L, bvvar out4_H],
                       limbs 64 [bvvar out5_L, bvvar out5_H],
                       limbs 64 [bvvar out6_L, bvvar out6_H],
                       limbs 64 [bvvar out7_L, bvvar out7_H],
                       limbs 64 [bvvar out8_L, bvvar out8_H]])
            -
            (limbs 58 [limbs 64 [bvvar in0_L, bvvar in0_H],
                       limbs 64 [bvvar in1_L, bvvar in1_H],
                       limbs 64 [bvvar in2_L, bvvar in2_H],
                       limbs 64 [bvvar in3_L, bvvar in3_H],
                       limbs 64 [bvvar in4_L, bvvar in4_H],
                       limbs 64 [bvvar in5_L, bvvar in5_H],
                       limbs 64 [bvvar in6_L, bvvar in6_H],
                       limbs 64 [bvvar in7_L, bvvar in7_H],
                       limbs 64 [bvvar in8_L, bvvar in8_H]]))
           ((bvconst 2^521) - bvconst 1)
  |
 (* bvrTrue*)
  (* postcondition in C does not hold?! *)

  bvrands [
    limbs 64 [bvrvar ret0_L, bvrvar ret0_H] <=
    bvradd (limbs 64 [bvrvar out0_L, bvrvar out0_H])
           (bvrsub (bvrconst 128 (2^127)) (bvrconst 128 (2^69))),
    limbs 64 [bvrvar ret1_L, bvrvar ret1_H] <=
    bvradd (limbs 64 [bvrvar out1_L, bvrvar out1_H])
           (bvrsub (bvrconst 128 (2^127)) (bvrconst 128 (2^69))),
    limbs 64 [bvrvar ret2_L, bvrvar ret2_H] <=
    bvradd (limbs 64 [bvrvar out2_L, bvrvar out2_H])
           (bvrsub (bvrconst 128 (2^127)) (bvrconst 128 (2^69))),
    limbs 64 [bvrvar ret3_L, bvrvar ret3_H] <=
    bvradd (limbs 64 [bvrvar out3_L, bvrvar out3_H])
           (bvrsub (bvrconst 128 (2^127)) (bvrconst 128 (2^69))),
    limbs 64 [bvrvar ret4_L, bvrvar ret4_H] <=
    bvradd (limbs 64 [bvrvar out4_L, bvrvar out4_H])
           (bvrsub (bvrconst 128 (2^127)) (bvrconst 128 (2^69))),
    limbs 64 [bvrvar ret5_L, bvrvar ret5_H] <=
    bvradd (limbs 64 [bvrvar out5_L, bvrvar out5_H])
           (bvrsub (bvrconst 128 (2^127)) (bvrconst 128 (2^69))),
    limbs 64 [bvrvar ret6_L, bvrvar ret6_H] <=
    bvradd (limbs 64 [bvrvar out6_L, bvrvar out6_H])
           (bvrsub (bvrconst 128 (2^127)) (bvrconst 128 (2^69))),
    limbs 64 [bvrvar ret7_L, bvrvar ret7_H] <=
    bvradd (limbs 64 [bvrvar out7_L, bvrvar out7_H])
           (bvrsub (bvrconst 128 (2^127)) (bvrconst 128 (2^69))),
    limbs 64 [bvrvar ret8_L, bvrvar ret8_H] <=
    bvradd (limbs 64 [bvrvar out8_L, bvrvar out8_H])
           (bvrsub (bvrconst 128 (2^127)) (bvrconst 128 (2^69)))
  ]

}
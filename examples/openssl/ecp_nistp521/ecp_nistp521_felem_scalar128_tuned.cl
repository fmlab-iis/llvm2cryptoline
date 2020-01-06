(* quine: -v -btor -isafety -jobs 20 
Parsing Cryptoline file:                [OK]            0.000900 seconds
Checking well-formedness:               [OK]            0.000296 seconds
Transforming to SSA form:               [OK]            0.000452 seconds
Rewriting assignments:                  [OK]            0.000293 seconds
Verifying program safety:               [OK]            0.446532 seconds
Verifying range specification:          [OK]            0.013327 seconds
Verifying algebraic specification:      [OK]            0.014880 seconds
Verification result:                    [OK]            0.476998 seconds
*)

proc main (out0_L, out0_H, out1_L, out1_H, out2_L, out2_H, out3_L, out3_H,
           out4_L, out4_H, out5_L, out5_H, out6_L, out6_H, out7_L, out7_H,
           out8_L, out8_H, scalar) =
{
  bveTrue
  |
  bvrands [
    limbs 64 [bvrvar out0_L, bvvar out0_H] < bvconst 128 (2^125),
    limbs 64 [bvrvar out1_L, bvvar out1_H] < bvconst 128 (2^125),
    limbs 64 [bvrvar out2_L, bvvar out2_H] < bvconst 128 (2^125),
    limbs 64 [bvrvar out3_L, bvvar out3_H] < bvconst 128 (2^125),
    limbs 64 [bvrvar out4_L, bvvar out4_H] < bvconst 128 (2^125),
    limbs 64 [bvrvar out5_L, bvvar out5_H] < bvconst 128 (2^125),
    limbs 64 [bvrvar out6_L, bvvar out6_H] < bvconst 128 (2^125),
    limbs 64 [bvrvar out7_L, bvvar out7_H] < bvconst 128 (2^125),
    limbs 64 [bvrvar out8_L, bvvar out8_H] < bvconst 128 (2^125),
    bvvar scalar < bvconst 64 9
  ]
}

bvAssign   L0_0 (bvVar out0_L);
bvAssign   L0_8 (bvVar out0_H);
bvAssign  L0_16 (bvVar out1_L);
bvAssign  L0_24 (bvVar out1_H);
bvAssign  L0_32 (bvVar out2_L);
bvAssign  L0_40 (bvVar out2_H);
bvAssign  L0_48 (bvVar out3_L);
bvAssign  L0_56 (bvVar out3_H);
bvAssign  L0_64 (bvVar out4_L);
bvAssign  L0_72 (bvVar out4_H);
bvAssign  L0_80 (bvVar out5_L);
bvAssign  L0_88 (bvVar out5_H);
bvAssign  L0_96 (bvVar out6_L);
bvAssign L0_104 (bvVar out6_H);
bvAssign L0_112 (bvVar out7_L);
bvAssign L0_120 (bvVar out7_H);
bvAssign L0_128 (bvVar out8_L);
bvAssign L0_136 (bvVar out8_H);

(*  %conv = zext i64 %scalar to i128 *)
bvAssign conv_L (bvVar scalar);
bvAssign conv_H (bvConst 0);
(*  %0 = load i128, i128* %out, align 16, !tbaa !2 *)
bvAssign v0_L (bvVar L0_0);
bvAssign v0_H (bvVar L0_8);
(*  %mul = mul i128 %0, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar v0_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar v0_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar v0_L) (bvVar conv_H);
bvAssign mul_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul_H (bvVar tmp) (bvVar tmpLL_H);
(*  store i128 %mul, i128* %out, align 16, !tbaa !2 *)
bvAssign L0_0 (bvVar mul_L);
bvAssign L0_8 (bvVar mul_H);
(*  %arrayidx2 = getelementptr inbounds i128, i128* %out, i64 1 *)
(*  %1 = load i128, i128* %arrayidx2, align 16, !tbaa !2 *)
bvAssign v1_L (bvVar L0_16);
bvAssign v1_H (bvVar L0_24);
(*  %mul3 = mul i128 %1, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar v1_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar v1_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar v1_L) (bvVar conv_H);
bvAssign mul3_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul3_H (bvVar tmp) (bvVar tmpLL_H);
(*  store i128 %mul3, i128* %arrayidx2, align 16, !tbaa !2 *)
bvAssign L0_16 (bvVar mul3_L);
bvAssign L0_24 (bvVar mul3_H);
(*  %arrayidx5 = getelementptr inbounds i128, i128* %out, i64 2 *)
(*  %2 = load i128, i128* %arrayidx5, align 16, !tbaa !2 *)
bvAssign v2_L (bvVar L0_32);
bvAssign v2_H (bvVar L0_40);
(*  %mul6 = mul i128 %2, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar v2_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar v2_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar v2_L) (bvVar conv_H);
bvAssign mul6_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul6_H (bvVar tmp) (bvVar tmpLL_H);
(*  store i128 %mul6, i128* %arrayidx5, align 16, !tbaa !2 *)
bvAssign L0_32 (bvVar mul6_L);
bvAssign L0_40 (bvVar mul6_H);
(*  %arrayidx8 = getelementptr inbounds i128, i128* %out, i64 3 *)
(*  %3 = load i128, i128* %arrayidx8, align 16, !tbaa !2 *)
bvAssign v3_L (bvVar L0_48);
bvAssign v3_H (bvVar L0_56);
(*  %mul9 = mul i128 %3, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar v3_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar v3_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar v3_L) (bvVar conv_H);
bvAssign mul9_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul9_H (bvVar tmp) (bvVar tmpLL_H);
(*  store i128 %mul9, i128* %arrayidx8, align 16, !tbaa !2 *)
bvAssign L0_48 (bvVar mul9_L);
bvAssign L0_56 (bvVar mul9_H);
(*  %arrayidx11 = getelementptr inbounds i128, i128* %out, i64 4 *)
(*  %4 = load i128, i128* %arrayidx11, align 16, !tbaa !2 *)
bvAssign v4_L (bvVar L0_64);
bvAssign v4_H (bvVar L0_72);
(*  %mul12 = mul i128 %4, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar v4_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar v4_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar v4_L) (bvVar conv_H);
bvAssign mul12_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul12_H (bvVar tmp) (bvVar tmpLL_H);
(*  store i128 %mul12, i128* %arrayidx11, align 16, !tbaa !2 *)
bvAssign L0_64 (bvVar mul12_L);
bvAssign L0_72 (bvVar mul12_H);
(*  %arrayidx14 = getelementptr inbounds i128, i128* %out, i64 5 *)
(*  %5 = load i128, i128* %arrayidx14, align 16, !tbaa !2 *)
bvAssign v5_L (bvVar L0_80);
bvAssign v5_H (bvVar L0_88);
(*  %mul15 = mul i128 %5, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar v5_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar v5_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar v5_L) (bvVar conv_H);
bvAssign mul15_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul15_H (bvVar tmp) (bvVar tmpLL_H);
(*  store i128 %mul15, i128* %arrayidx14, align 16, !tbaa !2 *)
bvAssign L0_80 (bvVar mul15_L);
bvAssign L0_88 (bvVar mul15_H);
(*  %arrayidx17 = getelementptr inbounds i128, i128* %out, i64 6 *)
(*  %6 = load i128, i128* %arrayidx17, align 16, !tbaa !2 *)
bvAssign v6_L (bvVar L0_96);
bvAssign v6_H (bvVar L0_104);
(*  %mul18 = mul i128 %6, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar v6_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar v6_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar v6_L) (bvVar conv_H);
bvAssign mul18_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul18_H (bvVar tmp) (bvVar tmpLL_H);
(*  store i128 %mul18, i128* %arrayidx17, align 16, !tbaa !2 *)
bvAssign L0_96 (bvVar mul18_L);
bvAssign L0_104 (bvVar mul18_H);
(*  %arrayidx20 = getelementptr inbounds i128, i128* %out, i64 7 *)
(*  %7 = load i128, i128* %arrayidx20, align 16, !tbaa !2 *)
bvAssign v7_L (bvVar L0_112);
bvAssign v7_H (bvVar L0_120);
(*  %mul21 = mul i128 %7, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar v7_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar v7_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar v7_L) (bvVar conv_H);
bvAssign mul21_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul21_H (bvVar tmp) (bvVar tmpLL_H);
(*  store i128 %mul21, i128* %arrayidx20, align 16, !tbaa !2 *)
bvAssign L0_112 (bvVar mul21_L);
bvAssign L0_120 (bvVar mul21_H);
(*  %arrayidx23 = getelementptr inbounds i128, i128* %out, i64 8 *)
(*  %8 = load i128, i128* %arrayidx23, align 16, !tbaa !2 *)
bvAssign v8_L (bvVar L0_128);
bvAssign v8_H (bvVar L0_136);
(*  %mul24 = mul i128 %8, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar v8_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar v8_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar v8_L) (bvVar conv_H);
bvAssign mul24_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul24_H (bvVar tmp) (bvVar tmpLL_H);
(*  store i128 %mul24, i128* %arrayidx23, align 16, !tbaa !2 *)
bvAssign L0_128 (bvVar mul24_L);
bvAssign L0_136 (bvVar mul24_H);
(*  ret void *)

bvAssign ret0_L (bvVar   L0_0);
bvAssign ret0_H (bvVar   L0_8);
bvAssign ret1_L (bvVar  L0_16);
bvAssign ret1_H (bvVar  L0_24);
bvAssign ret2_L (bvVar  L0_32);
bvAssign ret2_H (bvVar  L0_40);
bvAssign ret3_L (bvVar  L0_48);
bvAssign ret3_H (bvVar  L0_56);
bvAssign ret4_L (bvVar  L0_64);
bvAssign ret4_H (bvVar  L0_72);
bvAssign ret5_L (bvVar  L0_80);
bvAssign ret5_H (bvVar  L0_88);
bvAssign ret6_L (bvVar  L0_96);
bvAssign ret6_H (bvVar L0_104);
bvAssign ret7_L (bvVar L0_112);
bvAssign ret7_H (bvVar L0_120);
bvAssign ret8_L (bvVar L0_128);
bvAssign ret8_H (bvVar L0_136);

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
            *
            (bvvar scalar))
           ((bvconst 2^521) - (bvconst 1))
  |
  bvrTrue
}


(* quine: -btor -v -jobs 8 -isafety 
Parsing Cryptoline file:                [OK]            0.001557 seconds
Checking well-formedness:               [OK]            0.000706 seconds
Transforming to SSA form:               [OK]            0.001081 seconds
Rewriting assignments:                  [OK]            0.000543 seconds
Verifying program safety:               [OK]            0.840380 seconds
Verifying assertions:                   [OK]            0.229015 seconds
Verifying range specification:          [OK]            0.192854 seconds
Verifying algebraic specification:      [OK]            0.019512 seconds
Verification result:                    [OK]            1.286196 seconds
*)

proc main (in0, in1, in2, in3) =
{
  bveTrue
  |
  bvrTrue
}

bvAssign  L0_0 (bvVar in0);
bvAssign  L0_8 (bvVar in1);
bvAssign L0_16 (bvVar in2);
bvAssign L0_24 (bvVar in3);

(*  %0 = load i64, i64* %small, align 8, !tbaa !2 *)
bvAssign v0 (bvVar L0_0);
(*  %conv = zext i64 %0 to i128 *)
bvAssign conv_L (bvVar v0);
bvAssign conv_H (bvConst 0);
(*  %mul = mul nuw i128 %conv, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar conv_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar conv_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar conv_L) (bvVar conv_H);
bvAssign mul_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr = lshr i128 %mul, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr_L (bvVar mul_H);
bvAssign shr_H (bvConst 0);
(*  %conv5 = and i128 %mul, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv5_L (bvVar mul_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv5_L) (bvvar mul_L);
bvAssume bveEq (bvvar conv5_L) (bvvar mul_L) | bvrTrue;
bvAndb conv5_H (bvVar mul_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv5_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv5_H) (bvconst 0) | bvrTrue;
(*  store i128 %conv5, i128* %out, align 16, !tbaa !6 *)
bvAssign L1_0 (bvVar conv5_L);
bvAssign L1_8 (bvVar conv5_H);
(*  %arrayidx8 = getelementptr inbounds i128, i128* %out, i64 1 *)
(*  %arrayidx11 = getelementptr inbounds i64, i64* %small, i64 1 *)
(*  %1 = load i64, i64* %arrayidx11, align 8, !tbaa !2 *)
bvAssign v1 (bvVar L0_8);
(*  %conv12 = zext i64 %1 to i128 *)
bvAssign conv12_L (bvVar v1);
bvAssign conv12_H (bvConst 0);
(*  %mul13 = mul nuw i128 %conv12, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar conv12_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar conv12_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar conv12_L) (bvVar conv_H);
bvAssign mul13_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul13_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr15 = lshr i128 %mul13, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr15_L (bvVar mul13_H);
bvAssign shr15_H (bvConst 0);
(*
NOTE: mul13 = small[0] * small[1]
C code is
  a = ((uint128_t) small[0]) * small[1];
  low = (u64)a;
  out[1] += low;
  out[1] += low;
*)
(*  %conv17 = shl i128 %mul13, 1 *)
(* bvConcatShl conv17_H tmp (bvVar mul13_H) (bvVar mul13_L) 1; *)
(* NOTE: ignore mul13_H because it was masked out *)
bvConcatShl conv17_H tmp (bvConst 0) (bvVar mul13_L) 1;
bvShl conv17_L (bvVar tmp) 1;
(*  %factor = and i128 %conv17, 36893488147419103230 *)
(* You may need to modify here *)
bvAndb factor_L (bvVar conv17_L) (bvConst 0xFFFFFFFFFFFFFFFE);
bvAndb factor_H (bvVar conv17_H) (bvConst 0x1);
(* NOTE: [factor_L, factor_H] == 2 * mul13_L *)
bvAssert bveTrue |
         bvrEq (limbs 64 [bvvar factor_L, bvvar factor_H])
               (bvrmul (bvconst 128 2)
                       (limbs 64 [bvvar mul13_L, bvconst 64 0]));
bvAssume bveEq (limbs 64 [bvvar factor_L, bvvar factor_H])
               ((bvconst 2) * (bvvar mul13_L)) |
         bvTrue;
(*  %add21 = add nuw nsw i128 %factor, %shr *)
bvAddC carry add21_L (bvVar factor_L) (bvVar shr_L);
bvAdc add21_H (bvVar factor_H) (bvVar shr_H) carry;
(*  store i128 %add21, i128* %arrayidx8, align 16, !tbaa !6 *)
bvAssign L1_16 (bvVar add21_L);
bvAssign L1_24 (bvVar add21_H);
(*  %arrayidx23 = getelementptr inbounds i128, i128* %out, i64 2 *)
(*  %arrayidx26 = getelementptr inbounds i64, i64* %small, i64 2 *)
(*  %2 = load i64, i64* %arrayidx26, align 8, !tbaa !2 *)
bvAssign v2 (bvVar L0_16);
(*  %conv27 = zext i64 %2 to i128 *)
bvAssign conv27_L (bvVar v2);
bvAssign conv27_H (bvConst 0);
(*  %mul28 = mul nuw i128 %conv27, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar conv27_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar conv27_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar conv27_L) (bvVar conv_H);
bvAssign mul28_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul28_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr30 = lshr i128 %mul28, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr30_L (bvVar mul28_H);
bvAssign shr30_H (bvConst 0);
(*  %conv32 = and i128 %mul28, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv32_L (bvVar mul28_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv32_L) (bvvar mul28_L);
bvAssume bveEq (bvvar conv32_L) (bvvar mul28_L) | bvrTrue;
bvAndb conv32_H (bvVar mul28_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv32_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv32_H) (bvconst 0) | bvrTrue;
(*  %add34 = add nuw nsw i128 %conv32, %shr15 *)
bvAddC carry add34_L (bvVar conv32_L) (bvVar shr15_L);
bvAdc add34_H (bvVar conv32_H) (bvVar shr15_H) carry;
(*  %mul36 = shl nuw nsw i128 %add34, 1 *)
bvConcatShl mul36_H tmp (bvVar add34_H) (bvVar add34_L) 1;
bvShl mul36_L (bvVar tmp) 1;
(*  %arrayidx38 = getelementptr inbounds i128, i128* %out, i64 3 *)
(*  %arrayidx41 = getelementptr inbounds i64, i64* %small, i64 3 *)
(*  %3 = load i64, i64* %arrayidx41, align 8, !tbaa !2 *)
bvAssign v3 (bvVar L0_24);
(*  %conv42 = zext i64 %3 to i128 *)
bvAssign conv42_L (bvVar v3);
bvAssign conv42_H (bvConst 0);
(*  %mul43 = mul nuw i128 %conv42, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar conv42_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar conv42_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar conv42_L) (bvVar conv_H);
bvAssign mul43_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul43_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr45 = lshr i128 %mul43, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr45_L (bvVar mul43_H);
bvAssign shr45_H (bvConst 0);
(*  %conv47 = and i128 %mul43, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv47_L (bvVar mul43_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv47_L) (bvvar mul43_L);
bvAssume bveEq (bvvar conv47_L) (bvvar mul43_L) | bvrTrue;
bvAndb conv47_H (bvVar mul43_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv47_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv47_H) (bvconst 0) | bvrTrue;
(*  %add49 = add nuw nsw i128 %conv47, %shr30 *)
bvAddC carry add49_L (bvVar conv47_L) (bvVar shr30_L);
bvAdc add49_H (bvVar conv47_H) (bvVar shr30_H) carry;
(*  %arrayidx51 = getelementptr inbounds i128, i128* %out, i64 4 *)
(*  %mul56 = mul nuw i128 %conv27, %conv12 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv27_L) (bvVar conv12_L);
bvMul tmpHL_L (bvVar conv27_H) (bvVar conv12_L);
bvMul tmpLH_L (bvVar conv27_L) (bvVar conv12_H);
bvAssign mul56_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul56_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr58 = lshr i128 %mul56, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr58_L (bvVar mul56_H);
bvAssign shr58_H (bvConst 0);
(*  %conv60 = and i128 %mul56, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv60_L (bvVar mul56_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv60_L) (bvvar mul56_L);
bvAssume bveEq (bvvar conv60_L) (bvvar mul56_L) | bvrTrue;
bvAndb conv60_H (bvVar mul56_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv60_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv60_H) (bvconst 0) | bvrTrue;
(*  %add62 = add nuw nsw i128 %conv60, %add49 *)
bvAddC carry add62_L (bvVar conv60_L) (bvVar add49_L);
bvAdc add62_H (bvVar conv60_H) (bvVar add49_H) carry;
(*  %mul64 = shl nuw nsw i128 %add62, 1 *)
bvConcatShl mul64_H tmp (bvVar add62_H) (bvVar add62_L) 1;
bvShl mul64_L (bvVar tmp) 1;
(*  %add67 = add nuw nsw i128 %shr58, %shr45 *)
bvAddC carry add67_L (bvVar shr58_L) (bvVar shr45_L);
bvAdc add67_H (bvVar shr58_H) (bvVar shr45_H) carry;
(*  %mul72 = mul nuw i128 %conv12, %conv12 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv12_L) (bvVar conv12_L);
bvMul tmpHL_L (bvVar conv12_H) (bvVar conv12_L);
bvMul tmpLH_L (bvVar conv12_L) (bvVar conv12_H);
bvAssign mul72_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul72_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr74 = lshr i128 %mul72, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr74_L (bvVar mul72_H);
bvAssign shr74_H (bvConst 0);
(*  %conv76 = and i128 %mul72, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv76_L (bvVar mul72_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv76_L) (bvvar mul72_L);
bvAssume bveEq (bvvar conv76_L) (bvvar mul72_L) | bvrTrue;
bvAndb conv76_H (bvVar mul72_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv76_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv76_H) (bvconst 0) | bvrTrue;
(*  %add78 = add nuw nsw i128 %conv76, %mul36 *)
bvAddC carry add78_L (bvVar conv76_L) (bvVar mul36_L);
bvAdc add78_H (bvVar conv76_H) (bvVar mul36_H) carry;
(*  store i128 %add78, i128* %arrayidx23, align 16, !tbaa !6 *)
bvAssign L1_32 (bvVar add78_L);
bvAssign L1_40 (bvVar add78_H);
(*  %add81 = add nuw nsw i128 %shr74, %mul64 *)
bvAddC carry add81_L (bvVar shr74_L) (bvVar mul64_L);
bvAdc add81_H (bvVar shr74_H) (bvVar mul64_H) carry;
(*  store i128 %add81, i128* %arrayidx38, align 16, !tbaa !6 *)
bvAssign L1_48 (bvVar add81_L);
bvAssign L1_56 (bvVar add81_H);
(*  %mul86 = mul nuw i128 %conv42, %conv12 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv42_L) (bvVar conv12_L);
bvMul tmpHL_L (bvVar conv42_H) (bvVar conv12_L);
bvMul tmpLH_L (bvVar conv42_L) (bvVar conv12_H);
bvAssign mul86_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul86_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr88 = lshr i128 %mul86, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr88_L (bvVar mul86_H);
bvAssign shr88_H (bvConst 0);
(*  %conv90 = and i128 %mul86, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv90_L (bvVar mul86_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv90_L) (bvvar mul86_L);
bvAssume bveEq (bvvar conv90_L) (bvvar mul86_L) | bvrTrue;
bvAndb conv90_H (bvVar mul86_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv90_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv90_H) (bvconst 0) | bvrTrue;
(*  %add92 = add nuw nsw i128 %conv90, %add67 *)
bvAddC carry add92_L (bvVar conv90_L) (bvVar add67_L);
bvAdc add92_H (bvVar conv90_H) (bvVar add67_H) carry;
(*  %mul94 = shl nuw nsw i128 %add92, 1 *)
bvConcatShl mul94_H tmp (bvVar add92_H) (bvVar add92_L) 1;
bvShl mul94_L (bvVar tmp) 1;
(*  %arrayidx96 = getelementptr inbounds i128, i128* %out, i64 5 *)
(*  %mul101 = mul nuw i128 %conv42, %conv27 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv42_L) (bvVar conv27_L);
bvMul tmpHL_L (bvVar conv42_H) (bvVar conv27_L);
bvMul tmpLH_L (bvVar conv42_L) (bvVar conv27_H);
bvAssign mul101_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul101_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr103 = lshr i128 %mul101, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr103_L (bvVar mul101_H);
bvAssign shr103_H (bvConst 0);
(*  %conv105 = and i128 %mul101, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv105_L (bvVar mul101_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv105_L) (bvvar mul101_L);
bvAssume bveEq (bvvar conv105_L) (bvvar mul101_L) | bvrTrue;
bvAndb conv105_H (bvVar mul101_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv105_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv105_H) (bvconst 0) | bvrTrue;
(*  %add107 = add nuw nsw i128 %conv105, %shr88 *)
bvAddC carry add107_L (bvVar conv105_L) (bvVar shr88_L);
bvAdc add107_H (bvVar conv105_H) (bvVar shr88_H) carry;
(*  %mul109 = shl nuw nsw i128 %add107, 1 *)
bvConcatShl mul109_H tmp (bvVar add107_H) (bvVar add107_L) 1;
bvShl mul109_L (bvVar tmp) 1;
(*  %arrayidx111 = getelementptr inbounds i128, i128* %out, i64 6 *)
(*  %add114 = shl nuw nsw i128 %shr103, 1 *)
bvConcatShl add114_H tmp (bvVar shr103_H) (bvVar shr103_L) 1;
bvShl add114_L (bvVar tmp) 1;
(*  %mul119 = mul nuw i128 %conv27, %conv27 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv27_L) (bvVar conv27_L);
bvMul tmpHL_L (bvVar conv27_H) (bvVar conv27_L);
bvMul tmpLH_L (bvVar conv27_L) (bvVar conv27_H);
bvAssign mul119_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul119_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr121 = lshr i128 %mul119, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr121_L (bvVar mul119_H);
bvAssign shr121_H (bvConst 0);
(*  %conv123 = and i128 %mul119, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv123_L (bvVar mul119_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv123_L) (bvvar mul119_L);
bvAssume bveEq (bvvar conv123_L) (bvvar mul119_L) | bvrTrue;
bvAndb conv123_H (bvVar mul119_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv123_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv123_H) (bvconst 0) | bvrTrue;
(*  %add125 = add nuw nsw i128 %conv123, %mul94 *)
bvAddC carry add125_L (bvVar conv123_L) (bvVar mul94_L);
bvAdc add125_H (bvVar conv123_H) (bvVar mul94_H) carry;
(*  store i128 %add125, i128* %arrayidx51, align 16, !tbaa !6 *)
bvAssign L1_64 (bvVar add125_L);
bvAssign L1_72 (bvVar add125_H);
(*  %add128 = add nuw nsw i128 %shr121, %mul109 *)
bvAddC carry add128_L (bvVar shr121_L) (bvVar mul109_L);
bvAdc add128_H (bvVar shr121_H) (bvVar mul109_H) carry;
(*  store i128 %add128, i128* %arrayidx96, align 16, !tbaa !6 *)
bvAssign L1_80 (bvVar add128_L);
bvAssign L1_88 (bvVar add128_H);
(*  %mul133 = mul nuw i128 %conv42, %conv42 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv42_L) (bvVar conv42_L);
bvMul tmpHL_L (bvVar conv42_H) (bvVar conv42_L);
bvMul tmpLH_L (bvVar conv42_L) (bvVar conv42_H);
bvAssign mul133_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul133_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr135 = lshr i128 %mul133, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr135_L (bvVar mul133_H);
bvAssign shr135_H (bvConst 0);
(*  %conv137 = and i128 %mul133, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv137_L (bvVar mul133_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv137_L) (bvvar mul133_L);
bvAssume bveEq (bvvar conv137_L) (bvvar mul133_L) | bvrTrue;
bvAndb conv137_H (bvVar mul133_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv137_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv137_H) (bvconst 0) | bvrTrue;
(*  %add139 = add nuw nsw i128 %conv137, %add114 *)
bvAddC carry add139_L (bvVar conv137_L) (bvVar add114_L);
bvAdc add139_H (bvVar conv137_H) (bvVar add114_H) carry;
(*  store i128 %add139, i128* %arrayidx111, align 16, !tbaa !6 *)
bvAssign L1_96 (bvVar add139_L);
bvAssign L1_104 (bvVar add139_H);
(*  %arrayidx141 = getelementptr inbounds i128, i128* %out, i64 7 *)
(*  store i128 %shr135, i128* %arrayidx141, align 16, !tbaa !6 *)
bvAssign L1_112 (bvVar shr135_L);
bvAssign L1_120 (bvVar shr135_H);
(*  ret void *)

bvAssign  out0 (bvVar   L1_0);
bvAssign  out1 (bvVar   L1_8);
bvAssign  out2 (bvVar  L1_16);
bvAssign  out3 (bvVar  L1_24);
bvAssign  out4 (bvVar  L1_32);
bvAssign  out5 (bvVar  L1_40);
bvAssign  out6 (bvVar  L1_48);
bvAssign  out7 (bvVar  L1_56);
bvAssign  out8 (bvVar  L1_64);
bvAssign  out9 (bvVar  L1_72);
bvAssign out10 (bvVar  L1_80);
bvAssign out11 (bvVar  L1_88);
bvAssign out12 (bvVar  L1_96);
bvAssign out13 (bvVar L1_104);
bvAssign out14 (bvVar L1_112);
bvAssign out15 (bvVar L1_120);

{
  bveEq    ((limbs 64 [bvevar in0, bvevar in1, bvevar in2, bvevar in3])
            *
            (limbs 64 [bvevar in0, bvevar in1, bvevar in2, bvevar in3]))
           (limbs 64 [bvevar  out0,
                      bvevar  out1 + bvevar  out2, bvevar  out3 +  bvevar out4,
                      bvevar  out5 + bvevar  out6, bvevar  out7 +  bvevar out8,
                      bvevar  out9 + bvevar out10, bvevar out11 + bvevar out12,
                      bvevar out13 + bvevar out14, bvevar out15])
  |
  bvrands [
    limbs 64 [bvrvar  out0, bvrvar  out1] <
      bvrmul (bvrconst 128 7) (bvrconst 128 (2^64)),
    limbs 64 [bvrvar  out2, bvrvar  out3] <
      bvrmul (bvrconst 128 7) (bvrconst 128 (2^64)),
    limbs 64 [bvrvar  out4, bvrvar  out5] <
      bvrmul (bvrconst 128 7) (bvrconst 128 (2^64)),
    limbs 64 [bvrvar  out6, bvrvar  out7] <
      bvrmul (bvrconst 128 7) (bvrconst 128 (2^64)),
    limbs 64 [bvrvar  out8, bvrvar  out9] <
      bvrmul (bvrconst 128 7) (bvrconst 128 (2^64)),
    limbs 64 [bvrvar out10, bvrvar out11] <
      bvrmul (bvrconst 128 7) (bvrconst 128 (2^64)),
    limbs 64 [bvrvar out12, bvrvar out13] <
      bvrmul (bvrconst 128 7) (bvrconst 128 (2^64)),
    limbs 64 [bvrvar out14, bvrvar out15] <
      bvrmul (bvrconst 128 7) (bvrconst 128 (2^64))
  ]
}


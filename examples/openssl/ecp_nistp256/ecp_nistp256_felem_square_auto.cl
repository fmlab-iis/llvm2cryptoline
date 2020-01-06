proc main (L0_24, L0_16, L0_8, L0_40, L0_32, L0_0, or_i, L0_56, L0_48) =
{
  bveTrue
  |
  bvrTrue
}



(*  %arrayidx.i = getelementptr inbounds i128, i128* %in, i64 3 *)
(*  %0 = load i128, i128* %arrayidx.i, align 16, !tbaa !2 *)
bvAssign v0_L (bvVar L0_48);
bvAssign v0_H (bvVar L0_56);
(*  %add.i = add i128 %0, 18446744069414584320 *)
bvAddC carry add_i_L (bvVar v0_L) (bvConst 18446744069414584320);
bvAdc add_i_H (bvVar v0_H) (bvConst 0) carry;
(*  %arrayidx6.i = getelementptr inbounds i128, i128* %in, i64 2 *)
(*  %1 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2 *)
bvAssign v1_L (bvVar L0_32);
bvAssign v1_H (bvVar L0_40);
(*  %shr.i = lshr i128 %1, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr_i_L (bvVar v1_H);
bvAssign shr_i_H (bvConst 0);
(*  %add8.i = add i128 %add.i, %shr.i *)
bvAddC carry add8_i_L (bvVar add_i_L) (bvVar shr_i_L);
bvAdc add8_i_H (bvVar add_i_H) (bvVar shr_i_H) carry;
(*  %conv12.i = and i128 %1, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv12_i_L (bvVar v1_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv12_i_L) (bvvar v1_L);
bvAssume bveEq (bvvar conv12_i_L) (bvvar v1_L) | bvrTrue;
bvAndb conv12_i_H (bvVar v1_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv12_i_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv12_i_H) (bvconst 0) | bvrTrue;
(*  %add13.i = add nuw nsw i128 %conv12.i, 18446673704965373952 *)
bvAddC carry add13_i_L (bvVar conv12_i_L) (bvConst 18446673704965373952);
bvAdc add13_i_H (bvVar conv12_i_H) (bvConst 0) carry;
(*  %2 = load i128, i128* %in, align 16, !tbaa !2 *)
bvAssign v2_L (bvVar L0_0);
bvAssign v2_H (bvVar L0_8);
(*  %add16.i = add i128 %2, 18446744073709551615 *)
bvAddC carry add16_i_L (bvVar v2_L) (bvConst 18446744073709551615);
bvAdc add16_i_H (bvVar v2_H) (bvConst 0) carry;
(*  %arrayidx18.i = getelementptr inbounds i128, i128* %in, i64 1 *)
(*  %3 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2 *)
bvAssign v3_L (bvVar L0_16);
bvAssign v3_H (bvVar L0_24);
(*  %add19.i = add i128 %3, 1298074214633706907132628377272319 *)
bvAddC carry add19_i_L (bvVar v3_L) (bvConst 4294967295);
bvAdc add19_i_H (bvVar v3_H) (bvConst 70368744177664) carry;
(*  %shr22.i = lshr i128 %add8.i, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr22_i_L (bvVar add8_i_H);
bvAssign shr22_i_H (bvConst 0);
(*  %conv23.i = trunc i128 %shr22.i to i64 *)
bvAssign conv23_i (bvVar shr22_i_L);
(*  %conv26.i = and i128 %add8.i, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv26_i_L (bvVar add8_i_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv26_i_L) (bvvar add8_i_L);
bvAssume bveEq (bvvar conv26_i_L) (bvvar add8_i_L) | bvrTrue;
bvAndb conv26_i_H (bvVar add8_i_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv26_i_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv26_i_H) (bvconst 0) | bvrTrue;
(*  %sub.i = sub nsw i128 %conv26.i, %shr22.i *)
bvSubC carry sub_i_L (bvVar conv26_i_L) (bvVar shr22_i_L);
bvSbb sub_i_H (bvVar conv26_i_H) (bvVar shr22_i_H) carry;
(*  %shl.i = shl nuw nsw i128 %shr22.i, 32 *)
bvConcatShl shl_i_H tmp (bvVar shr22_i_H) (bvVar shr22_i_L) 32;
bvShl shl_i_L (bvVar tmp) 32;
(*  %add32.i = add nsw i128 %sub.i, %shl.i *)
bvAddC carry add32_i_L (bvVar sub_i_L) (bvVar shl_i_L);
bvAdc add32_i_H (bvVar sub_i_H) (bvVar shl_i_H) carry;
(*  %shr34.i = lshr i128 %add32.i, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr34_i_L (bvVar add32_i_H);
bvAssign shr34_i_H (bvConst 0);
(*  %conv35.i = trunc i128 %shr34.i to i64 *)
bvAssign conv35_i (bvVar shr34_i_L);
(*  %add36.i = add i64 %conv35.i, %conv23.i *)
bvAdd add36_i (bvVar conv35_i) (bvVar conv23_i);
(*  %conv39.i = and i128 %add32.i, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv39_i_L (bvVar add32_i_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv39_i_L) (bvvar add32_i_L);
bvAssume bveEq (bvvar conv39_i_L) (bvvar add32_i_L) | bvrTrue;
bvAndb conv39_i_H (bvVar add32_i_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv39_i_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv39_i_H) (bvconst 0) | bvrTrue;
(*  %sub43.i = sub nsw i128 %conv39.i, %shr34.i *)
bvSubC carry sub43_i_L (bvVar conv39_i_L) (bvVar shr34_i_L);
bvSbb sub43_i_H (bvVar conv39_i_H) (bvVar shr34_i_H) carry;
(*  %shl45.i = shl nuw nsw i128 %shr34.i, 32 *)
bvConcatShl shl45_i_H tmp (bvVar shr34_i_H) (bvVar shr34_i_L) 32;
bvShl shl45_i_L (bvVar tmp) 32;
(*  %add47.i = add nsw i128 %sub43.i, %shl45.i *)
bvAddC carry add47_i_L (bvVar sub43_i_L) (bvVar shl45_i_L);
bvAdc add47_i_H (bvVar sub43_i_H) (bvVar shl45_i_H) carry;
(*  %conv48.i = zext i64 %add36.i to i128 *)
bvAssign conv48_i_L (bvVar add36_i);
bvAssign conv48_i_H (bvConst 0);
(*  %add50.i = add i128 %add16.i, %conv48.i *)
bvAddC carry add50_i_L (bvVar add16_i_L) (bvVar conv48_i_L);
bvAdc add50_i_H (bvVar add16_i_H) (bvVar conv48_i_H) carry;
(*  %shl52.i = shl nuw nsw i128 %conv48.i, 32 *)
bvConcatShl shl52_i_H tmp (bvVar conv48_i_H) (bvVar conv48_i_L) 32;
bvShl shl52_i_L (bvVar tmp) 32;
(*  %sub54.i = sub i128 %add19.i, %shl52.i *)
bvSubC carry sub54_i_L (bvVar add19_i_L) (bvVar shl52_i_L);
bvSbb sub54_i_H (bvVar add19_i_H) (bvVar shl52_i_H) carry;
(*  %shr56.i = lshr i128 %add47.i, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr56_i_L (bvVar add47_i_H);
bvAssign shr56_i_H (bvConst 0);
(*  %conv57.i = trunc i128 %shr56.i to i64 *)
bvAssign conv57_i (bvVar shr56_i_L);
(*  %sub58.i = sub i64 0, %conv57.i *)
bvSub sub58_i (bvConst 0) (bvVar conv57_i);
(*  %conv60.i = trunc i128 %add47.i to i64 *)
bvAssign conv60_i (bvVar add47_i_L);
(*  %and.i = and i64 %conv60.i, 9223372036854775807 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and_i (bvVar conv60_i) (bvConst 0x7FFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and_i) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and_i) (bvvar tmp_to_be_used) | bvrTrue;
(*  %neg.i = sub nsw i64 9223372032559808512, %and.i *)
bvSub neg_i (bvConst 9223372032559808512) (bvVar and_i);
(*  %sub62177.i = and i64 %neg.i, %conv60.i *)
(*  %and66.i = ashr i64 %sub62177.i, 63 *)
(*  %or.i = or i64 %and66.i, %sub58.i *)
(*  %conv68.i = zext i64 %or.i to i128 *)
bvAssign conv68_i_L (bvVar or_i);
bvAssign conv68_i_H (bvConst 0);
(*  %sub70.i = sub i128 %add50.i, %conv68.i *)
bvSubC carry sub70_i_L (bvVar add50_i_L) (bvVar conv68_i_L);
bvSbb sub70_i_H (bvVar add50_i_H) (bvVar conv68_i_H) carry;
(*  %and71.i = and i64 %or.i, 4294967295 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and71_i (bvVar or_i) (bvConst 0xFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and71_i) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and71_i) (bvvar tmp_to_be_used) | bvrTrue;
(*  %conv72.i = zext i64 %and71.i to i128 *)
bvAssign conv72_i_L (bvVar and71_i);
bvAssign conv72_i_H (bvConst 0);
(*  %sub74.i = sub i128 %sub54.i, %conv72.i *)
bvSubC carry sub74_i_L (bvVar sub54_i_L) (bvVar conv72_i_L);
bvSbb sub74_i_H (bvVar sub54_i_H) (bvVar conv72_i_H) carry;
(*  %and75.i = and i64 %or.i, -4294967295 *)
(* You may need to modify here *)
bvAndb and75_i (bvVar or_i) (bvConst 0xFFFFFFFF00000001);
(*  %conv76.i = zext i64 %and75.i to i128 *)
bvAssign conv76_i_L (bvVar and75_i);
bvAssign conv76_i_H (bvConst 0);
(*  %sub78.i = sub nsw i128 %add47.i, %conv76.i *)
bvSubC carry sub78_i_L (bvVar add47_i_L) (bvVar conv76_i_L);
bvSbb sub78_i_H (bvVar add47_i_H) (bvVar conv76_i_H) carry;
(*  %shr80.i = lshr i128 %sub70.i, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr80_i_L (bvVar sub70_i_H);
bvAssign shr80_i_H (bvConst 0);
(*  %add84.i = add i128 %sub74.i, %shr80.i *)
bvAddC carry add84_i_L (bvVar sub74_i_L) (bvVar shr80_i_L);
bvAdc add84_i_H (bvVar sub74_i_H) (bvVar shr80_i_H) carry;
(*  %shr90.i = lshr i128 %add84.i, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr90_i_L (bvVar add84_i_H);
bvAssign shr90_i_H (bvConst 0);
(*  %add94.i = add nuw nsw i128 %add13.i, %shr90.i *)
bvAddC carry add94_i_L (bvVar add13_i_L) (bvVar shr90_i_L);
bvAdc add94_i_H (bvVar add13_i_H) (bvVar shr90_i_H) carry;
(*  %shr100.i = lshr i128 %add94.i, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr100_i_L (bvVar add94_i_H);
bvAssign shr100_i_H (bvConst 0);
(*  %add104.i = add nsw i128 %sub78.i, %shr100.i *)
bvAddC carry add104_i_L (bvVar sub78_i_L) (bvVar shr100_i_L);
bvAdc add104_i_H (bvVar sub78_i_H) (bvVar shr100_i_H) carry;
(*  %conv.i = and i128 %sub70.i, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv_i_L (bvVar sub70_i_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv_i_L) (bvvar sub70_i_L);
bvAssume bveEq (bvvar conv_i_L) (bvvar sub70_i_L) | bvrTrue;
bvAndb conv_i_H (bvVar sub70_i_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv_i_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv_i_H) (bvconst 0) | bvrTrue;
(*  %mul.i = mul nuw i128 %conv.i, %conv.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv_i_L) (bvVar conv_i_L);
bvMul tmpHL_L (bvVar conv_i_H) (bvVar conv_i_L);
bvMul tmpLH_L (bvVar conv_i_L) (bvVar conv_i_H);
bvAssign mul_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr.i.2 = lshr i128 %mul.i, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr_i_2_L (bvVar mul_i_H);
bvAssign shr_i_2_H (bvConst 0);
(*  %conv5.i = and i128 %mul.i, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv5_i_L (bvVar mul_i_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv5_i_L) (bvvar mul_i_L);
bvAssume bveEq (bvvar conv5_i_L) (bvvar mul_i_L) | bvrTrue;
bvAndb conv5_i_H (bvVar mul_i_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv5_i_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv5_i_H) (bvconst 0) | bvrTrue;
(*  store i128 %conv5.i, i128* %out, align 16, !tbaa !2 *)
bvAssign L1_0 (bvVar conv5_i_L);
bvAssign L1_8 (bvVar conv5_i_H);
(*  %arrayidx8.i = getelementptr inbounds i128, i128* %out, i64 1 *)
(*  %conv12.i.3 = and i128 %add84.i, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv12_i_3_L (bvVar add84_i_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv12_i_3_L) (bvvar add84_i_L);
bvAssume bveEq (bvvar conv12_i_3_L) (bvvar add84_i_L) | bvrTrue;
bvAndb conv12_i_3_H (bvVar add84_i_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv12_i_3_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv12_i_3_H) (bvconst 0) | bvrTrue;
(*  %mul13.i = mul nuw i128 %conv12.i.3, %conv.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv12_i_3_L) (bvVar conv_i_L);
bvMul tmpHL_L (bvVar conv12_i_3_H) (bvVar conv_i_L);
bvMul tmpLH_L (bvVar conv12_i_3_L) (bvVar conv_i_H);
bvAssign mul13_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul13_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr15.i = lshr i128 %mul13.i, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr15_i_L (bvVar mul13_i_H);
bvAssign shr15_i_H (bvConst 0);
(*  %conv17.i = shl i128 %mul13.i, 1 *)
bvConcatShl conv17_i_H tmp (bvVar mul13_i_H) (bvVar mul13_i_L) 1;
bvShl conv17_i_L (bvVar tmp) 1;
(*  %factor.i = and i128 %conv17.i, 36893488147419103230 *)
(* You may need to modify here *)
bvAndb factor_i_L (bvVar conv17_i_L) (bvConst 0xFFFFFFFFFFFFFFFE);
bvAndb factor_i_H (bvVar conv17_i_H) (bvConst 0x1);
(*  %add21.i = add nuw nsw i128 %factor.i, %shr.i.2 *)
bvAddC carry add21_i_L (bvVar factor_i_L) (bvVar shr_i_2_L);
bvAdc add21_i_H (bvVar factor_i_H) (bvVar shr_i_2_H) carry;
(*  store i128 %add21.i, i128* %arrayidx8.i, align 16, !tbaa !2 *)
bvAssign L1_16 (bvVar add21_i_L);
bvAssign L1_24 (bvVar add21_i_H);
(*  %arrayidx23.i = getelementptr inbounds i128, i128* %out, i64 2 *)
(*  %conv27.i = and i128 %add94.i, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv27_i_L (bvVar add94_i_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv27_i_L) (bvvar add94_i_L);
bvAssume bveEq (bvvar conv27_i_L) (bvvar add94_i_L) | bvrTrue;
bvAndb conv27_i_H (bvVar add94_i_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv27_i_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv27_i_H) (bvconst 0) | bvrTrue;
(*  %mul28.i = mul nuw i128 %conv27.i, %conv.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv27_i_L) (bvVar conv_i_L);
bvMul tmpHL_L (bvVar conv27_i_H) (bvVar conv_i_L);
bvMul tmpLH_L (bvVar conv27_i_L) (bvVar conv_i_H);
bvAssign mul28_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul28_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr30.i = lshr i128 %mul28.i, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr30_i_L (bvVar mul28_i_H);
bvAssign shr30_i_H (bvConst 0);
(*  %conv32.i = and i128 %mul28.i, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv32_i_L (bvVar mul28_i_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv32_i_L) (bvvar mul28_i_L);
bvAssume bveEq (bvvar conv32_i_L) (bvvar mul28_i_L) | bvrTrue;
bvAndb conv32_i_H (bvVar mul28_i_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv32_i_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv32_i_H) (bvconst 0) | bvrTrue;
(*  %add34.i = add nuw nsw i128 %conv32.i, %shr15.i *)
bvAddC carry add34_i_L (bvVar conv32_i_L) (bvVar shr15_i_L);
bvAdc add34_i_H (bvVar conv32_i_H) (bvVar shr15_i_H) carry;
(*  %mul36.i = shl nuw nsw i128 %add34.i, 1 *)
bvConcatShl mul36_i_H tmp (bvVar add34_i_H) (bvVar add34_i_L) 1;
bvShl mul36_i_L (bvVar tmp) 1;
(*  %arrayidx38.i = getelementptr inbounds i128, i128* %out, i64 3 *)
(*  %conv42.i = and i128 %add104.i, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv42_i_L (bvVar add104_i_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv42_i_L) (bvvar add104_i_L);
bvAssume bveEq (bvvar conv42_i_L) (bvvar add104_i_L) | bvrTrue;
bvAndb conv42_i_H (bvVar add104_i_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv42_i_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv42_i_H) (bvconst 0) | bvrTrue;
(*  %mul43.i = mul nuw i128 %conv42.i, %conv.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv42_i_L) (bvVar conv_i_L);
bvMul tmpHL_L (bvVar conv42_i_H) (bvVar conv_i_L);
bvMul tmpLH_L (bvVar conv42_i_L) (bvVar conv_i_H);
bvAssign mul43_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul43_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr45.i = lshr i128 %mul43.i, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr45_i_L (bvVar mul43_i_H);
bvAssign shr45_i_H (bvConst 0);
(*  %conv47.i = and i128 %mul43.i, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv47_i_L (bvVar mul43_i_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv47_i_L) (bvvar mul43_i_L);
bvAssume bveEq (bvvar conv47_i_L) (bvvar mul43_i_L) | bvrTrue;
bvAndb conv47_i_H (bvVar mul43_i_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv47_i_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv47_i_H) (bvconst 0) | bvrTrue;
(*  %arrayidx51.i = getelementptr inbounds i128, i128* %out, i64 4 *)
(*  %mul56.i = mul nuw i128 %conv27.i, %conv12.i.3 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv27_i_L) (bvVar conv12_i_3_L);
bvMul tmpHL_L (bvVar conv27_i_H) (bvVar conv12_i_3_L);
bvMul tmpLH_L (bvVar conv27_i_L) (bvVar conv12_i_3_H);
bvAssign mul56_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul56_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr58.i = lshr i128 %mul56.i, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr58_i_L (bvVar mul56_i_H);
bvAssign shr58_i_H (bvConst 0);
(*  %conv60.i.4 = and i128 %mul56.i, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv60_i_4_L (bvVar mul56_i_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv60_i_4_L) (bvvar mul56_i_L);
bvAssume bveEq (bvvar conv60_i_4_L) (bvvar mul56_i_L) | bvrTrue;
bvAndb conv60_i_4_H (bvVar mul56_i_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv60_i_4_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv60_i_4_H) (bvconst 0) | bvrTrue;
(*  %add49.i = add nuw nsw i128 %conv60.i.4, %shr30.i *)
bvAddC carry add49_i_L (bvVar conv60_i_4_L) (bvVar shr30_i_L);
bvAdc add49_i_H (bvVar conv60_i_4_H) (bvVar shr30_i_H) carry;
(*  %add62.i = add nuw nsw i128 %add49.i, %conv47.i *)
bvAddC carry add62_i_L (bvVar add49_i_L) (bvVar conv47_i_L);
bvAdc add62_i_H (bvVar add49_i_H) (bvVar conv47_i_H) carry;
(*  %mul64.i = shl nuw nsw i128 %add62.i, 1 *)
bvConcatShl mul64_i_H tmp (bvVar add62_i_H) (bvVar add62_i_L) 1;
bvShl mul64_i_L (bvVar tmp) 1;
(*  %add67.i = add nuw nsw i128 %shr45.i, %shr58.i *)
bvAddC carry add67_i_L (bvVar shr45_i_L) (bvVar shr58_i_L);
bvAdc add67_i_H (bvVar shr45_i_H) (bvVar shr58_i_H) carry;
(*  %mul72.i = mul nuw i128 %conv12.i.3, %conv12.i.3 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv12_i_3_L) (bvVar conv12_i_3_L);
bvMul tmpHL_L (bvVar conv12_i_3_H) (bvVar conv12_i_3_L);
bvMul tmpLH_L (bvVar conv12_i_3_L) (bvVar conv12_i_3_H);
bvAssign mul72_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul72_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr74.i = lshr i128 %mul72.i, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr74_i_L (bvVar mul72_i_H);
bvAssign shr74_i_H (bvConst 0);
(*  %conv76.i.5 = and i128 %mul72.i, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv76_i_5_L (bvVar mul72_i_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv76_i_5_L) (bvvar mul72_i_L);
bvAssume bveEq (bvvar conv76_i_5_L) (bvvar mul72_i_L) | bvrTrue;
bvAndb conv76_i_5_H (bvVar mul72_i_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv76_i_5_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv76_i_5_H) (bvconst 0) | bvrTrue;
(*  %add78.i = add nuw nsw i128 %mul36.i, %conv76.i.5 *)
bvAddC carry add78_i_L (bvVar mul36_i_L) (bvVar conv76_i_5_L);
bvAdc add78_i_H (bvVar mul36_i_H) (bvVar conv76_i_5_H) carry;
(*  store i128 %add78.i, i128* %arrayidx23.i, align 16, !tbaa !2 *)
bvAssign L1_32 (bvVar add78_i_L);
bvAssign L1_40 (bvVar add78_i_H);
(*  %add81.i = add nuw nsw i128 %mul64.i, %shr74.i *)
bvAddC carry add81_i_L (bvVar mul64_i_L) (bvVar shr74_i_L);
bvAdc add81_i_H (bvVar mul64_i_H) (bvVar shr74_i_H) carry;
(*  store i128 %add81.i, i128* %arrayidx38.i, align 16, !tbaa !2 *)
bvAssign L1_48 (bvVar add81_i_L);
bvAssign L1_56 (bvVar add81_i_H);
(*  %mul86.i = mul nuw i128 %conv42.i, %conv12.i.3 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv42_i_L) (bvVar conv12_i_3_L);
bvMul tmpHL_L (bvVar conv42_i_H) (bvVar conv12_i_3_L);
bvMul tmpLH_L (bvVar conv42_i_L) (bvVar conv12_i_3_H);
bvAssign mul86_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul86_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr88.i = lshr i128 %mul86.i, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr88_i_L (bvVar mul86_i_H);
bvAssign shr88_i_H (bvConst 0);
(*  %conv90.i = and i128 %mul86.i, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv90_i_L (bvVar mul86_i_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv90_i_L) (bvvar mul86_i_L);
bvAssume bveEq (bvvar conv90_i_L) (bvvar mul86_i_L) | bvrTrue;
bvAndb conv90_i_H (bvVar mul86_i_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv90_i_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv90_i_H) (bvconst 0) | bvrTrue;
(*  %add92.i = add nuw nsw i128 %add67.i, %conv90.i *)
bvAddC carry add92_i_L (bvVar add67_i_L) (bvVar conv90_i_L);
bvAdc add92_i_H (bvVar add67_i_H) (bvVar conv90_i_H) carry;
(*  %mul94.i = shl nuw nsw i128 %add92.i, 1 *)
bvConcatShl mul94_i_H tmp (bvVar add92_i_H) (bvVar add92_i_L) 1;
bvShl mul94_i_L (bvVar tmp) 1;
(*  %arrayidx96.i = getelementptr inbounds i128, i128* %out, i64 5 *)
(*  %mul101.i = mul nuw i128 %conv42.i, %conv27.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv42_i_L) (bvVar conv27_i_L);
bvMul tmpHL_L (bvVar conv42_i_H) (bvVar conv27_i_L);
bvMul tmpLH_L (bvVar conv42_i_L) (bvVar conv27_i_H);
bvAssign mul101_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul101_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr103.i = lshr i128 %mul101.i, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr103_i_L (bvVar mul101_i_H);
bvAssign shr103_i_H (bvConst 0);
(*  %conv105.i = and i128 %mul101.i, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv105_i_L (bvVar mul101_i_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv105_i_L) (bvvar mul101_i_L);
bvAssume bveEq (bvvar conv105_i_L) (bvvar mul101_i_L) | bvrTrue;
bvAndb conv105_i_H (bvVar mul101_i_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv105_i_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv105_i_H) (bvconst 0) | bvrTrue;
(*  %add107.i = add nuw nsw i128 %conv105.i, %shr88.i *)
bvAddC carry add107_i_L (bvVar conv105_i_L) (bvVar shr88_i_L);
bvAdc add107_i_H (bvVar conv105_i_H) (bvVar shr88_i_H) carry;
(*  %mul109.i = shl nuw nsw i128 %add107.i, 1 *)
bvConcatShl mul109_i_H tmp (bvVar add107_i_H) (bvVar add107_i_L) 1;
bvShl mul109_i_L (bvVar tmp) 1;
(*  %arrayidx111.i = getelementptr inbounds i128, i128* %out, i64 6 *)
(*  %add114.i = shl nuw nsw i128 %shr103.i, 1 *)
bvConcatShl add114_i_H tmp (bvVar shr103_i_H) (bvVar shr103_i_L) 1;
bvShl add114_i_L (bvVar tmp) 1;
(*  %mul119.i = mul nuw i128 %conv27.i, %conv27.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv27_i_L) (bvVar conv27_i_L);
bvMul tmpHL_L (bvVar conv27_i_H) (bvVar conv27_i_L);
bvMul tmpLH_L (bvVar conv27_i_L) (bvVar conv27_i_H);
bvAssign mul119_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul119_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr121.i = lshr i128 %mul119.i, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr121_i_L (bvVar mul119_i_H);
bvAssign shr121_i_H (bvConst 0);
(*  %conv123.i = and i128 %mul119.i, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv123_i_L (bvVar mul119_i_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv123_i_L) (bvvar mul119_i_L);
bvAssume bveEq (bvvar conv123_i_L) (bvvar mul119_i_L) | bvrTrue;
bvAndb conv123_i_H (bvVar mul119_i_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv123_i_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv123_i_H) (bvconst 0) | bvrTrue;
(*  %add125.i = add nuw nsw i128 %mul94.i, %conv123.i *)
bvAddC carry add125_i_L (bvVar mul94_i_L) (bvVar conv123_i_L);
bvAdc add125_i_H (bvVar mul94_i_H) (bvVar conv123_i_H) carry;
(*  store i128 %add125.i, i128* %arrayidx51.i, align 16, !tbaa !2 *)
bvAssign L1_64 (bvVar add125_i_L);
bvAssign L1_72 (bvVar add125_i_H);
(*  %add128.i = add nuw nsw i128 %mul109.i, %shr121.i *)
bvAddC carry add128_i_L (bvVar mul109_i_L) (bvVar shr121_i_L);
bvAdc add128_i_H (bvVar mul109_i_H) (bvVar shr121_i_H) carry;
(*  store i128 %add128.i, i128* %arrayidx96.i, align 16, !tbaa !2 *)
bvAssign L1_80 (bvVar add128_i_L);
bvAssign L1_88 (bvVar add128_i_H);
(*  %mul133.i = mul nuw i128 %conv42.i, %conv42.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv42_i_L) (bvVar conv42_i_L);
bvMul tmpHL_L (bvVar conv42_i_H) (bvVar conv42_i_L);
bvMul tmpLH_L (bvVar conv42_i_L) (bvVar conv42_i_H);
bvAssign mul133_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul133_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr135.i = lshr i128 %mul133.i, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr135_i_L (bvVar mul133_i_H);
bvAssign shr135_i_H (bvConst 0);
(*  %conv137.i = and i128 %mul133.i, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv137_i_L (bvVar mul133_i_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv137_i_L) (bvvar mul133_i_L);
bvAssume bveEq (bvvar conv137_i_L) (bvvar mul133_i_L) | bvrTrue;
bvAndb conv137_i_H (bvVar mul133_i_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv137_i_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv137_i_H) (bvconst 0) | bvrTrue;
(*  %add139.i = add nuw nsw i128 %add114.i, %conv137.i *)
bvAddC carry add139_i_L (bvVar add114_i_L) (bvVar conv137_i_L);
bvAdc add139_i_H (bvVar add114_i_H) (bvVar conv137_i_H) carry;
(*  store i128 %add139.i, i128* %arrayidx111.i, align 16, !tbaa !2 *)
bvAssign L1_96 (bvVar add139_i_L);
bvAssign L1_104 (bvVar add139_i_H);
(*  %arrayidx141.i = getelementptr inbounds i128, i128* %out, i64 7 *)
(*  store i128 %shr135.i, i128* %arrayidx141.i, align 16, !tbaa !2 *)
bvAssign L1_112 (bvVar shr135_i_L);
bvAssign L1_120 (bvVar shr135_i_H);
(*  ret void *)


{
  bveTrue
  |
  bvrTrue
}


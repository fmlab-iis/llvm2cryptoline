proc main (L1_16, L1_8, L1_0, L1_24, L1_32, L1_56, L1_40, or_i, L1_48) =
{
  bveTrue
  |
  bvrTrue
}



(*  %small2 = alloca [4 x i64], align 16 *)
(*  %0 = bitcast [4 x i64]* %small2 to i8* *)
(*  call void @llvm.lifetime.start(i64 32, i8* %0) #1 *)
(*  %arraydecay = getelementptr inbounds [4 x i64], [4 x i64]* %small2, i64 0, i64 0 *)
(*  %arrayidx.i = getelementptr inbounds i128, i128* %in2, i64 3 *)
(*  %1 = load i128, i128* %arrayidx.i, align 16, !tbaa !2 *)
bvAssign v1_L (bvVar L1_48);
bvAssign v1_H (bvVar L1_56);
(*  %add.i = add i128 %1, 18446744069414584320 *)
bvAddC carry add_i_L (bvVar v1_L) (bvConst 18446744069414584320);
bvAdc add_i_H (bvVar v1_H) (bvConst 0) carry;
(*  %arrayidx6.i = getelementptr inbounds i128, i128* %in2, i64 2 *)
(*  %2 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2 *)
bvAssign v2_L (bvVar L1_32);
bvAssign v2_H (bvVar L1_40);
(*  %shr.i = lshr i128 %2, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr_i_L (bvVar v2_H);
bvAssign shr_i_H (bvConst 0);
(*  %add8.i = add i128 %add.i, %shr.i *)
bvAddC carry add8_i_L (bvVar add_i_L) (bvVar shr_i_L);
bvAdc add8_i_H (bvVar add_i_H) (bvVar shr_i_H) carry;
(*  %conv12.i = and i128 %2, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv12_i_L (bvVar v2_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv12_i_L) (bvvar v2_L);
bvAssume bveEq (bvvar conv12_i_L) (bvvar v2_L) | bvrTrue;
bvAndb conv12_i_H (bvVar v2_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv12_i_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv12_i_H) (bvconst 0) | bvrTrue;
(*  %add13.i = add nuw nsw i128 %conv12.i, 18446673704965373952 *)
bvAddC carry add13_i_L (bvVar conv12_i_L) (bvConst 18446673704965373952);
bvAdc add13_i_H (bvVar conv12_i_H) (bvConst 0) carry;
(*  %3 = load i128, i128* %in2, align 16, !tbaa !2 *)
bvAssign v3_L (bvVar L1_0);
bvAssign v3_H (bvVar L1_8);
(*  %add16.i = add i128 %3, 18446744073709551615 *)
bvAddC carry add16_i_L (bvVar v3_L) (bvConst 18446744073709551615);
bvAdc add16_i_H (bvVar v3_H) (bvConst 0) carry;
(*  %arrayidx18.i = getelementptr inbounds i128, i128* %in2, i64 1 *)
(*  %4 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2 *)
bvAssign v4_L (bvVar L1_16);
bvAssign v4_H (bvVar L1_24);
(*  %add19.i = add i128 %4, 1298074214633706907132628377272319 *)
bvAddC carry add19_i_L (bvVar v4_L) (bvConst 4294967295);
bvAdc add19_i_H (bvVar v4_H) (bvConst 70368744177664) carry;
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
(*  %conv86.i = trunc i128 %sub70.i to i64 *)
bvAssign conv86_i (bvVar sub70_i_L);
(*  %shr90.i = lshr i128 %add84.i, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr90_i_L (bvVar add84_i_H);
bvAssign shr90_i_H (bvConst 0);
(*  %add94.i = add nuw nsw i128 %add13.i, %shr90.i *)
bvAddC carry add94_i_L (bvVar add13_i_L) (bvVar shr90_i_L);
bvAdc add94_i_H (bvVar add13_i_H) (bvVar shr90_i_H) carry;
(*  %conv96.i = trunc i128 %add84.i to i64 *)
bvAssign conv96_i (bvVar add84_i_L);
(*  %shr100.i = lshr i128 %add94.i, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr100_i_L (bvVar add94_i_H);
bvAssign shr100_i_H (bvConst 0);
(*  %add104.i = add nsw i128 %sub78.i, %shr100.i *)
bvAddC carry add104_i_L (bvVar sub78_i_L) (bvVar shr100_i_L);
bvAdc add104_i_H (bvVar sub78_i_H) (bvVar shr100_i_H) carry;
(*  %conv106.i = trunc i128 %add94.i to i64 *)
bvAssign conv106_i (bvVar add94_i_L);
(*  store i64 %conv86.i, i64* %arraydecay, align 16, !tbaa !6 *)
bvAssign L0_0 (bvVar conv86_i);
(*  %arrayidx114.i = getelementptr inbounds [4 x i64], [4 x i64]* %small2, i64 0, i64 1 *)
(*  store i64 %conv96.i, i64* %arrayidx114.i, align 8, !tbaa !6 *)
bvAssign L0_8 (bvVar conv96_i);
(*  %arrayidx117.i = getelementptr inbounds [4 x i64], [4 x i64]* %small2, i64 0, i64 2 *)
(*  store i64 %conv106.i, i64* %arrayidx117.i, align 16, !tbaa !6 *)
bvAssign L0_16 (bvVar conv106_i);
(*  %conv119.i = trunc i128 %add104.i to i64 *)
bvAssign conv119_i (bvVar add104_i_L);
(*  %arrayidx120.i = getelementptr inbounds [4 x i64], [4 x i64]* %small2, i64 0, i64 3 *)
(*  store i64 %conv119.i, i64* %arrayidx120.i, align 8, !tbaa !6 *)
bvAssign L0_24 (bvVar conv119_i);
(*  call fastcc void @smallfelem_mul(i128* %out, i64* %small1, i64* %arraydecay) *)
(*  call void @llvm.lifetime.end(i64 32, i8* %0) #1 *)
(*  ret void *)


{
  bveTrue
  |
  bvrTrue
}


proc main (L3_24, L3_16, L3_0, L3_40, or_i_39, L3_32, L3_48, L3_56, L1_16, L1_8, L1_56, L1_0, L1_24, L1_32, L1_40, or_i, L3_8, L1_48) =
{
  bveTrue
  |
  bvrTrue
}



(*  %small1 = alloca [4 x i64], align 16 *)
(*  %small2 = alloca [4 x i64], align 16 *)
(*  %0 = bitcast [4 x i64]* %small1 to i8* *)
(*  call void @llvm.lifetime.start(i64 32, i8* %0) #1 *)
(*  %1 = bitcast [4 x i64]* %small2 to i8* *)
(*  call void @llvm.lifetime.start(i64 32, i8* %1) #1 *)
(*  %arraydecay = getelementptr inbounds [4 x i64], [4 x i64]* %small1, i64 0, i64 0 *)
(*  %arrayidx.i = getelementptr inbounds i128, i128* %in1, i64 3 *)
(*  %2 = load i128, i128* %arrayidx.i, align 16, !tbaa !2 *)
bvAssign v2_L (bvVar L1_48);
bvAssign v2_H (bvVar L1_56);
(*  %add.i = add i128 %2, 18446744069414584320 *)
bvAddC carry add_i_L (bvVar v2_L) (bvConst 18446744069414584320);
bvAdc add_i_H (bvVar v2_H) (bvConst 0) carry;
(*  %arrayidx6.i = getelementptr inbounds i128, i128* %in1, i64 2 *)
(*  %3 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2 *)
bvAssign v3_L (bvVar L1_32);
bvAssign v3_H (bvVar L1_40);
(*  %shr.i = lshr i128 %3, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr_i_L (bvVar v3_H);
bvAssign shr_i_H (bvConst 0);
(*  %add8.i = add i128 %add.i, %shr.i *)
bvAddC carry add8_i_L (bvVar add_i_L) (bvVar shr_i_L);
bvAdc add8_i_H (bvVar add_i_H) (bvVar shr_i_H) carry;
(*  %conv12.i = and i128 %3, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv12_i_L (bvVar v3_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv12_i_L) (bvvar v3_L);
bvAssume bveEq (bvvar conv12_i_L) (bvvar v3_L) | bvrTrue;
bvAndb conv12_i_H (bvVar v3_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv12_i_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv12_i_H) (bvconst 0) | bvrTrue;
(*  %add13.i = add nuw nsw i128 %conv12.i, 18446673704965373952 *)
bvAddC carry add13_i_L (bvVar conv12_i_L) (bvConst 18446673704965373952);
bvAdc add13_i_H (bvVar conv12_i_H) (bvConst 0) carry;
(*  %4 = load i128, i128* %in1, align 16, !tbaa !2 *)
bvAssign v4_L (bvVar L1_0);
bvAssign v4_H (bvVar L1_8);
(*  %add16.i = add i128 %4, 18446744073709551615 *)
bvAddC carry add16_i_L (bvVar v4_L) (bvConst 18446744073709551615);
bvAdc add16_i_H (bvVar v4_H) (bvConst 0) carry;
(*  %arrayidx18.i = getelementptr inbounds i128, i128* %in1, i64 1 *)
(*  %5 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2 *)
bvAssign v5_L (bvVar L1_16);
bvAssign v5_H (bvVar L1_24);
(*  %add19.i = add i128 %5, 1298074214633706907132628377272319 *)
bvAddC carry add19_i_L (bvVar v5_L) (bvConst 4294967295);
bvAdc add19_i_H (bvVar v5_H) (bvConst 70368744177664) carry;
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
(*  %arrayidx114.i = getelementptr inbounds [4 x i64], [4 x i64]* %small1, i64 0, i64 1 *)
(*  store i64 %conv96.i, i64* %arrayidx114.i, align 8, !tbaa !6 *)
bvAssign L0_8 (bvVar conv96_i);
(*  %arrayidx117.i = getelementptr inbounds [4 x i64], [4 x i64]* %small1, i64 0, i64 2 *)
(*  store i64 %conv106.i, i64* %arrayidx117.i, align 16, !tbaa !6 *)
bvAssign L0_16 (bvVar conv106_i);
(*  %conv119.i = trunc i128 %add104.i to i64 *)
bvAssign conv119_i (bvVar add104_i_L);
(*  %arrayidx120.i = getelementptr inbounds [4 x i64], [4 x i64]* %small1, i64 0, i64 3 *)
(*  store i64 %conv119.i, i64* %arrayidx120.i, align 8, !tbaa !6 *)
bvAssign L0_24 (bvVar conv119_i);
(*  %arraydecay1 = getelementptr inbounds [4 x i64], [4 x i64]* %small2, i64 0, i64 0 *)
(*  %arrayidx.i.4 = getelementptr inbounds i128, i128* %in2, i64 3 *)
(*  %6 = load i128, i128* %arrayidx.i.4, align 16, !tbaa !2 *)
bvAssign v6_L (bvVar L3_48);
bvAssign v6_H (bvVar L3_56);
(*  %add.i.5 = add i128 %6, 18446744069414584320 *)
bvAddC carry add_i_5_L (bvVar v6_L) (bvConst 18446744069414584320);
bvAdc add_i_5_H (bvVar v6_H) (bvConst 0) carry;
(*  %arrayidx6.i.6 = getelementptr inbounds i128, i128* %in2, i64 2 *)
(*  %7 = load i128, i128* %arrayidx6.i.6, align 16, !tbaa !2 *)
bvAssign v7_L (bvVar L3_32);
bvAssign v7_H (bvVar L3_40);
(*  %shr.i.7 = lshr i128 %7, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr_i_7_L (bvVar v7_H);
bvAssign shr_i_7_H (bvConst 0);
(*  %add8.i.8 = add i128 %add.i.5, %shr.i.7 *)
bvAddC carry add8_i_8_L (bvVar add_i_5_L) (bvVar shr_i_7_L);
bvAdc add8_i_8_H (bvVar add_i_5_H) (bvVar shr_i_7_H) carry;
(*  %conv12.i.9 = and i128 %7, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv12_i_9_L (bvVar v7_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv12_i_9_L) (bvvar v7_L);
bvAssume bveEq (bvvar conv12_i_9_L) (bvvar v7_L) | bvrTrue;
bvAndb conv12_i_9_H (bvVar v7_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv12_i_9_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv12_i_9_H) (bvconst 0) | bvrTrue;
(*  %add13.i.10 = add nuw nsw i128 %conv12.i.9, 18446673704965373952 *)
bvAddC carry add13_i_10_L (bvVar conv12_i_9_L) (bvConst 18446673704965373952);
bvAdc add13_i_10_H (bvVar conv12_i_9_H) (bvConst 0) carry;
(*  %8 = load i128, i128* %in2, align 16, !tbaa !2 *)
bvAssign v8_L (bvVar L3_0);
bvAssign v8_H (bvVar L3_8);
(*  %add16.i.11 = add i128 %8, 18446744073709551615 *)
bvAddC carry add16_i_11_L (bvVar v8_L) (bvConst 18446744073709551615);
bvAdc add16_i_11_H (bvVar v8_H) (bvConst 0) carry;
(*  %arrayidx18.i.12 = getelementptr inbounds i128, i128* %in2, i64 1 *)
(*  %9 = load i128, i128* %arrayidx18.i.12, align 16, !tbaa !2 *)
bvAssign v9_L (bvVar L3_16);
bvAssign v9_H (bvVar L3_24);
(*  %add19.i.13 = add i128 %9, 1298074214633706907132628377272319 *)
bvAddC carry add19_i_13_L (bvVar v9_L) (bvConst 4294967295);
bvAdc add19_i_13_H (bvVar v9_H) (bvConst 70368744177664) carry;
(*  %shr22.i.14 = lshr i128 %add8.i.8, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr22_i_14_L (bvVar add8_i_8_H);
bvAssign shr22_i_14_H (bvConst 0);
(*  %conv23.i.15 = trunc i128 %shr22.i.14 to i64 *)
bvAssign conv23_i_15 (bvVar shr22_i_14_L);
(*  %conv26.i.16 = and i128 %add8.i.8, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv26_i_16_L (bvVar add8_i_8_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv26_i_16_L) (bvvar add8_i_8_L);
bvAssume bveEq (bvvar conv26_i_16_L) (bvvar add8_i_8_L) | bvrTrue;
bvAndb conv26_i_16_H (bvVar add8_i_8_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv26_i_16_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv26_i_16_H) (bvconst 0) | bvrTrue;
(*  %sub.i.17 = sub nsw i128 %conv26.i.16, %shr22.i.14 *)
bvSubC carry sub_i_17_L (bvVar conv26_i_16_L) (bvVar shr22_i_14_L);
bvSbb sub_i_17_H (bvVar conv26_i_16_H) (bvVar shr22_i_14_H) carry;
(*  %shl.i.18 = shl nuw nsw i128 %shr22.i.14, 32 *)
bvConcatShl shl_i_18_H tmp (bvVar shr22_i_14_H) (bvVar shr22_i_14_L) 32;
bvShl shl_i_18_L (bvVar tmp) 32;
(*  %add32.i.19 = add nsw i128 %sub.i.17, %shl.i.18 *)
bvAddC carry add32_i_19_L (bvVar sub_i_17_L) (bvVar shl_i_18_L);
bvAdc add32_i_19_H (bvVar sub_i_17_H) (bvVar shl_i_18_H) carry;
(*  %shr34.i.20 = lshr i128 %add32.i.19, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr34_i_20_L (bvVar add32_i_19_H);
bvAssign shr34_i_20_H (bvConst 0);
(*  %conv35.i.21 = trunc i128 %shr34.i.20 to i64 *)
bvAssign conv35_i_21 (bvVar shr34_i_20_L);
(*  %add36.i.22 = add i64 %conv35.i.21, %conv23.i.15 *)
bvAdd add36_i_22 (bvVar conv35_i_21) (bvVar conv23_i_15);
(*  %conv39.i.23 = and i128 %add32.i.19, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv39_i_23_L (bvVar add32_i_19_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv39_i_23_L) (bvvar add32_i_19_L);
bvAssume bveEq (bvvar conv39_i_23_L) (bvvar add32_i_19_L) | bvrTrue;
bvAndb conv39_i_23_H (bvVar add32_i_19_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv39_i_23_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv39_i_23_H) (bvconst 0) | bvrTrue;
(*  %sub43.i.24 = sub nsw i128 %conv39.i.23, %shr34.i.20 *)
bvSubC carry sub43_i_24_L (bvVar conv39_i_23_L) (bvVar shr34_i_20_L);
bvSbb sub43_i_24_H (bvVar conv39_i_23_H) (bvVar shr34_i_20_H) carry;
(*  %shl45.i.25 = shl nuw nsw i128 %shr34.i.20, 32 *)
bvConcatShl shl45_i_25_H tmp (bvVar shr34_i_20_H) (bvVar shr34_i_20_L) 32;
bvShl shl45_i_25_L (bvVar tmp) 32;
(*  %add47.i.26 = add nsw i128 %sub43.i.24, %shl45.i.25 *)
bvAddC carry add47_i_26_L (bvVar sub43_i_24_L) (bvVar shl45_i_25_L);
bvAdc add47_i_26_H (bvVar sub43_i_24_H) (bvVar shl45_i_25_H) carry;
(*  %conv48.i.27 = zext i64 %add36.i.22 to i128 *)
bvAssign conv48_i_27_L (bvVar add36_i_22);
bvAssign conv48_i_27_H (bvConst 0);
(*  %add50.i.28 = add i128 %add16.i.11, %conv48.i.27 *)
bvAddC carry add50_i_28_L (bvVar add16_i_11_L) (bvVar conv48_i_27_L);
bvAdc add50_i_28_H (bvVar add16_i_11_H) (bvVar conv48_i_27_H) carry;
(*  %shl52.i.29 = shl nuw nsw i128 %conv48.i.27, 32 *)
bvConcatShl shl52_i_29_H tmp (bvVar conv48_i_27_H) (bvVar conv48_i_27_L) 32;
bvShl shl52_i_29_L (bvVar tmp) 32;
(*  %sub54.i.30 = sub i128 %add19.i.13, %shl52.i.29 *)
bvSubC carry sub54_i_30_L (bvVar add19_i_13_L) (bvVar shl52_i_29_L);
bvSbb sub54_i_30_H (bvVar add19_i_13_H) (bvVar shl52_i_29_H) carry;
(*  %shr56.i.31 = lshr i128 %add47.i.26, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr56_i_31_L (bvVar add47_i_26_H);
bvAssign shr56_i_31_H (bvConst 0);
(*  %conv57.i.32 = trunc i128 %shr56.i.31 to i64 *)
bvAssign conv57_i_32 (bvVar shr56_i_31_L);
(*  %sub58.i.33 = sub i64 0, %conv57.i.32 *)
bvSub sub58_i_33 (bvConst 0) (bvVar conv57_i_32);
(*  %conv60.i.34 = trunc i128 %add47.i.26 to i64 *)
bvAssign conv60_i_34 (bvVar add47_i_26_L);
(*  %and.i.35 = and i64 %conv60.i.34, 9223372036854775807 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and_i_35 (bvVar conv60_i_34) (bvConst 0x7FFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and_i_35) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and_i_35) (bvvar tmp_to_be_used) | bvrTrue;
(*  %neg.i.36 = sub nsw i64 9223372032559808512, %and.i.35 *)
bvSub neg_i_36 (bvConst 9223372032559808512) (bvVar and_i_35);
(*  %sub62177.i.37 = and i64 %neg.i.36, %conv60.i.34 *)
(*  %and66.i.38 = ashr i64 %sub62177.i.37, 63 *)
(*  %or.i.39 = or i64 %and66.i.38, %sub58.i.33 *)
(*  %conv68.i.40 = zext i64 %or.i.39 to i128 *)
bvAssign conv68_i_40_L (bvVar or_i_39);
bvAssign conv68_i_40_H (bvConst 0);
(*  %sub70.i.41 = sub i128 %add50.i.28, %conv68.i.40 *)
bvSubC carry sub70_i_41_L (bvVar add50_i_28_L) (bvVar conv68_i_40_L);
bvSbb sub70_i_41_H (bvVar add50_i_28_H) (bvVar conv68_i_40_H) carry;
(*  %and71.i.42 = and i64 %or.i.39, 4294967295 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and71_i_42 (bvVar or_i_39) (bvConst 0xFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and71_i_42) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and71_i_42) (bvvar tmp_to_be_used) | bvrTrue;
(*  %conv72.i.43 = zext i64 %and71.i.42 to i128 *)
bvAssign conv72_i_43_L (bvVar and71_i_42);
bvAssign conv72_i_43_H (bvConst 0);
(*  %sub74.i.44 = sub i128 %sub54.i.30, %conv72.i.43 *)
bvSubC carry sub74_i_44_L (bvVar sub54_i_30_L) (bvVar conv72_i_43_L);
bvSbb sub74_i_44_H (bvVar sub54_i_30_H) (bvVar conv72_i_43_H) carry;
(*  %and75.i.45 = and i64 %or.i.39, -4294967295 *)
(* You may need to modify here *)
bvAndb and75_i_45 (bvVar or_i_39) (bvConst 0xFFFFFFFF00000001);
(*  %conv76.i.46 = zext i64 %and75.i.45 to i128 *)
bvAssign conv76_i_46_L (bvVar and75_i_45);
bvAssign conv76_i_46_H (bvConst 0);
(*  %sub78.i.47 = sub nsw i128 %add47.i.26, %conv76.i.46 *)
bvSubC carry sub78_i_47_L (bvVar add47_i_26_L) (bvVar conv76_i_46_L);
bvSbb sub78_i_47_H (bvVar add47_i_26_H) (bvVar conv76_i_46_H) carry;
(*  %shr80.i.48 = lshr i128 %sub70.i.41, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr80_i_48_L (bvVar sub70_i_41_H);
bvAssign shr80_i_48_H (bvConst 0);
(*  %add84.i.49 = add i128 %sub74.i.44, %shr80.i.48 *)
bvAddC carry add84_i_49_L (bvVar sub74_i_44_L) (bvVar shr80_i_48_L);
bvAdc add84_i_49_H (bvVar sub74_i_44_H) (bvVar shr80_i_48_H) carry;
(*  %conv86.i.50 = trunc i128 %sub70.i.41 to i64 *)
bvAssign conv86_i_50 (bvVar sub70_i_41_L);
(*  %shr90.i.51 = lshr i128 %add84.i.49, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr90_i_51_L (bvVar add84_i_49_H);
bvAssign shr90_i_51_H (bvConst 0);
(*  %add94.i.52 = add nuw nsw i128 %add13.i.10, %shr90.i.51 *)
bvAddC carry add94_i_52_L (bvVar add13_i_10_L) (bvVar shr90_i_51_L);
bvAdc add94_i_52_H (bvVar add13_i_10_H) (bvVar shr90_i_51_H) carry;
(*  %conv96.i.53 = trunc i128 %add84.i.49 to i64 *)
bvAssign conv96_i_53 (bvVar add84_i_49_L);
(*  %shr100.i.54 = lshr i128 %add94.i.52, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr100_i_54_L (bvVar add94_i_52_H);
bvAssign shr100_i_54_H (bvConst 0);
(*  %add104.i.55 = add nsw i128 %sub78.i.47, %shr100.i.54 *)
bvAddC carry add104_i_55_L (bvVar sub78_i_47_L) (bvVar shr100_i_54_L);
bvAdc add104_i_55_H (bvVar sub78_i_47_H) (bvVar shr100_i_54_H) carry;
(*  %conv106.i.56 = trunc i128 %add94.i.52 to i64 *)
bvAssign conv106_i_56 (bvVar add94_i_52_L);
(*  store i64 %conv86.i.50, i64* %arraydecay1, align 16, !tbaa !6 *)
bvAssign L2_0 (bvVar conv86_i_50);
(*  %arrayidx114.i.57 = getelementptr inbounds [4 x i64], [4 x i64]* %small2, i64 0, i64 1 *)
(*  store i64 %conv96.i.53, i64* %arrayidx114.i.57, align 8, !tbaa !6 *)
bvAssign L2_8 (bvVar conv96_i_53);
(*  %arrayidx117.i.58 = getelementptr inbounds [4 x i64], [4 x i64]* %small2, i64 0, i64 2 *)
(*  store i64 %conv106.i.56, i64* %arrayidx117.i.58, align 16, !tbaa !6 *)
bvAssign L2_16 (bvVar conv106_i_56);
(*  %conv119.i.59 = trunc i128 %add104.i.55 to i64 *)
bvAssign conv119_i_59 (bvVar add104_i_55_L);
(*  %arrayidx120.i.60 = getelementptr inbounds [4 x i64], [4 x i64]* %small2, i64 0, i64 3 *)
(*  store i64 %conv119.i.59, i64* %arrayidx120.i.60, align 8, !tbaa !6 *)
bvAssign L2_24 (bvVar conv119_i_59);
(*  call fastcc void @smallfelem_mul(i128* %out, i64* %arraydecay, i64* %arraydecay1) *)
(*  call void @llvm.lifetime.end(i64 32, i8* %1) #1 *)
(*  call void @llvm.lifetime.end(i64 32, i8* %0) #1 *)
(*  ret void *)


{
  bveTrue
  |
  bvrTrue
}


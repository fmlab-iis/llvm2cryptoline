(* frege: -v 
Parsing Cryptoline file:		[OK]		0.002363 seconds
Checking well-formedness:		[OK]		0.000867 seconds
Transforming to SSA form:		[OK]		0.001093 seconds
Rewriting assignments:		 	[OK]		0.001930 seconds
Verifying program safety: 		[OK]		0.049833 seconds
Verifying assertions:			[OK]		0.231828 seconds
Verifying range specification:		[OK]		0.023779 seconds
Verifying algebraic specification:	[OK]		0.069747 seconds
Verification result:		 	[OK]		0.382096 seconds
*)

proc main (a0_L, a0_H, a1_L, a1_H, a2_L, a2_H, a3_L, a3_H) =
{
  bveTrue
  |
  bvrands [
  (* a[i] < 2^109 *)
    limbs 64 [ bvvar a0_L, bvvar a0_H ] < bvconst 128 (2^109),
    limbs 64 [ bvvar a1_L, bvvar a1_H ] < bvconst 128 (2^109),
    limbs 64 [ bvvar a2_L, bvvar a2_H ] < bvconst 128 (2^109),
    limbs 64 [ bvvar a3_L, bvvar a3_H ] < bvconst 128 (2^109)
  ]  
}

bvAssign L0_0 (bvVar a0_L);
bvAssign L0_8 (bvVar a0_H);
bvAssign L0_16 (bvVar a1_L);
bvAssign L0_24 (bvVar a1_H);
bvAssign L0_32 (bvVar a2_L);
bvAssign L0_40 (bvVar a2_H);
bvAssign L0_48 (bvVar a3_L);
bvAssign L0_56 (bvVar a3_H);

(*  %arrayidx = getelementptr inbounds i128, i128* %in, i64 3 *)
(*  %0 = load i128, i128* %arrayidx, align 16, !tbaa !2 *)
bvAssign v0_L (bvVar L0_48);
bvAssign v0_H (bvVar L0_56);
(*  %add = add i128 %0, 18446744069414584320 *)
bvAddC carry add_L (bvVar v0_L) (bvConst 18446744069414584320);
bvAdc add_H (bvVar v0_H) (bvConst 0) carry;
(*  %arrayidx6 = getelementptr inbounds i128, i128* %in, i64 2 *)
(*  %1 = load i128, i128* %arrayidx6, align 16, !tbaa !2 *)
bvAssign v1_L (bvVar L0_32);
bvAssign v1_H (bvVar L0_40);
(*  %shr = lshr i128 %1, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr_L (bvVar v1_H);
bvAssign shr_H (bvConst 0);
(*  %add8 = add i128 %add, %shr *)
bvAddC carry add8_L (bvVar add_L) (bvVar shr_L);
bvAdc add8_H (bvVar add_H) (bvVar shr_H) carry;
(*  %conv12 = and i128 %1, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv12_L (bvVar v1_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv12_L) (bvvar v1_L);
bvAssume bveEq (bvvar conv12_L) (bvvar v1_L) | bvrTrue;
bvAndb conv12_H (bvVar v1_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv12_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv12_H) (bvconst 0) | bvrTrue;
(*  %add13 = add nuw nsw i128 %conv12, 18446673704965373952 *)
bvAddC carry add13_L (bvVar conv12_L) (bvConst 18446673704965373952);
bvAdc add13_H (bvVar conv12_H) (bvConst 0) carry;
(*  %2 = load i128, i128* %in, align 16, !tbaa !2 *)
bvAssign v2_L (bvVar L0_0);
bvAssign v2_H (bvVar L0_8);
(*  %add16 = add i128 %2, 18446744073709551615 *)
bvAddC carry add16_L (bvVar v2_L) (bvConst 18446744073709551615);
bvAdc add16_H (bvVar v2_H) (bvConst 0) carry;
(*  %arrayidx18 = getelementptr inbounds i128, i128* %in, i64 1 *)
(*  %3 = load i128, i128* %arrayidx18, align 16, !tbaa !2 *)
bvAssign v3_L (bvVar L0_16);
bvAssign v3_H (bvVar L0_24);
(*  %add19 = add i128 %3, 1298074214633706907132628377272319 *)
bvAddC carry add19_L (bvVar v3_L) (bvConst 4294967295);
bvAdc add19_H (bvVar v3_H) (bvConst 70368744177664) carry;
(*  %shr22 = lshr i128 %add8, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr22_L (bvVar add8_H);
bvAssign shr22_H (bvConst 0);
(*  %conv23 = trunc i128 %shr22 to i64 *)
bvAssign conv23 (bvVar shr22_L);
(*  %conv26 = and i128 %add8, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv26_L (bvVar add8_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv26_L) (bvvar add8_L);
bvAssume bveEq (bvvar conv26_L) (bvvar add8_L) | bvrTrue;
bvAndb conv26_H (bvVar add8_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv26_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv26_H) (bvconst 0) | bvrTrue;
(*  %sub = sub nsw i128 %conv26, %shr22 *)
bvSubC carry sub_L (bvVar conv26_L) (bvVar shr22_L);
(* == modified == *)
(*bvSbb sub_H (bvVar conv26_H) (bvVar shr22_H) carry;*)
bvSbbC b sub_H (bvVar conv26_H) (bvVar shr22_H) carry;
(*  %shl = shl nuw nsw i128 %shr22, 32 *)
bvConcatShl shl_H tmp (bvVar shr22_H) (bvVar shr22_L) 32;
bvShl shl_L (bvVar tmp) 32;
(*  %add32 = add nsw i128 %sub, %shl *)
bvAddC carry add32_L (bvVar sub_L) (bvVar shl_L);
(* == modified == *)
(*bvAdc add32_H (bvVar sub_H) (bvVar shl_H) carry;*)
bvAdcC c add32_H (bvVar sub_H) (bvVar shl_H) carry;
bvAssert bveTrue | bvrEq (bvvar b) (bvvar c);
bvAssume bveEq (bvvar b) (bvvar c) | bvrTrue;
(*  %shr34 = lshr i128 %add32, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr34_L (bvVar add32_H);
bvAssign shr34_H (bvConst 0);
(*  %conv35 = trunc i128 %shr34 to i64 *)
bvAssign conv35 (bvVar shr34_L);
(*  %add36 = add i64 %conv35, %conv23 *)
bvAdd add36 (bvVar conv35) (bvVar conv23);
(*  %conv39 = and i128 %add32, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv39_L (bvVar add32_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv39_L) (bvvar add32_L);
bvAssume bveEq (bvvar conv39_L) (bvvar add32_L) | bvrTrue;
bvAndb conv39_H (bvVar add32_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv39_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv39_H) (bvconst 0) | bvrTrue;
(*  %sub43 = sub nsw i128 %conv39, %shr34 *)
bvSubC carry sub43_L (bvVar conv39_L) (bvVar shr34_L);
(* == modified == *)
(*bvSbb sub43_H (bvVar conv39_H) (bvVar shr34_H) carry;*)
bvSbbC b sub43_H (bvVar conv39_H) (bvVar shr34_H) carry;
(*  %shl45 = shl nuw nsw i128 %shr34, 32 *)
bvConcatShl shl45_H tmp (bvVar shr34_H) (bvVar shr34_L) 32;
bvShl shl45_L (bvVar tmp) 32;
(* modified *)
bvAssert bveTrue | bvrEq (bvvar shl45_H) (bvconst 64 0);
bvAssume bveEq (bvvar shl45_H) (bvconst 0) | bvrTrue;
(*  %add47 = add nsw i128 %sub43, %shl45 *)
bvAddC carry add47_L (bvVar sub43_L) (bvVar shl45_L);
(* == modified == *)
(*bvAdc add47_H (bvVar sub43_H) (bvVar shl45_H) carry;*)
bvAdcC c add47_H (bvVar sub43_H) (bvVar shl45_H) carry;
(*  %conv48 = zext i64 %add36 to i128 *)
bvAssign conv48_L (bvVar add36);
bvAssign conv48_H (bvConst 0);
(*  %add50 = add i128 %add16, %conv48 *)
bvAddC carry add50_L (bvVar add16_L) (bvVar conv48_L);
bvAdc add50_H (bvVar add16_H) (bvVar conv48_H) carry;
(*  %shl52 = shl nuw nsw i128 %conv48, 32 *)
bvConcatShl shl52_H tmp (bvVar conv48_H) (bvVar conv48_L) 32;
bvShl shl52_L (bvVar tmp) 32;
(*  %sub54 = sub i128 %add19, %shl52 *)
bvSubC carry sub54_L (bvVar add19_L) (bvVar shl52_L);
bvSbb sub54_H (bvVar add19_H) (bvVar shl52_H) carry;
(*  %shr56 = lshr i128 %add47, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr56_L (bvVar add47_H);
bvAssign shr56_H (bvConst 0);
(*  %conv57 = trunc i128 %shr56 to i64 *)
bvAssign conv57 (bvVar shr56_L);
(*  %sub58 = sub i64 0, %conv57 *)
(*bvSub sub58 (bvConst 0) (bvVar conv57);*)
(* modified *)
bvSubC high sub58 (bvConst 0) (bvVar conv57);
(*  %conv60 = trunc i128 %add47 to i64 *)
bvAssign conv60 (bvVar add47_L);
(*  %and = and i64 %conv60, 9223372036854775807 *)
(* You may need to modify here *)
(*bvAndb and (bvVar conv60) (bvConst 0x7FFFFFFFFFFFFFFF);*)
(* modified *)
bvSplit low_h1bit low_l63bit (bvVar conv60) 63;
bvSubC mask discarded (bvConst 0) (bvVar low_h1bit);
(*  %neg = sub nsw i64 9223372032559808512, %and *)
(*bvSub neg (bvConst 9223372032559808512) (bvVar and);*)
(* modified *)
(* if low_l63bit >= 0x7fffffff00000001, then low = 1; otherwise low = 0 *)
bvSubC borrow discarded (bvVar low_l63bit) (bvConst 0x7fffffff00000001);
bvSubC low discarded (bvVar borrow) (bvConst 1);
(*  %sub62177 = and i64 %neg, %conv60 *)
(*  %and66 = ashr i64 %sub62177, 63 *)
(*  %or = or i64 %and66, %sub58 *)
(* modified *)
bvCmove condition_left mask (bvVar low) (bvConst 0);
bvSubC condition_left discarded (bvConst 0) (bvVar condition_left);
bvCmove condition condition_left (bvConst 1) (bvVar high);
bvSubC condition discarded (bvConst 0) (bvVar condition);
(*  %conv68 = zext i64 %or to i128 *)
(*
bvAssign conv68_L (bvVar or);
bvAssign conv68_H (bvConst 0);
*)
(*  %sub70 = sub i128 %add50, %conv68 *)
(*
bvSubC carry sub70_L (bvVar add50_L) (bvVar conv68_L);
bvSbb sub70_H (bvVar add50_H) (bvVar conv68_H) carry;
*)
(* modified *)
bvCmove kPrime0_L condition (bvConst 0xffffffffffffffff) (bvConst 0);
bvAssign kPrime0_H (bvConst 0);
bvSubC carry sub70_L (bvVar add50_L) (bvVar kPrime0_L);
bvSbb sub70_H (bvVar add50_H) (bvVar kPrime0_H) carry;
(*  %and71 = and i64 %or, 4294967295 *)
(* You may need to modify here *)
(*bvAndb and71 (bvVar or) (bvConst 0xFFFFFFFF);*)
(* modified *)
bvCmove and71 condition (bvConst 0xFFFFFFFF) (bvConst 0);
(*  %conv72 = zext i64 %and71 to i128 *)
bvAssign conv72_L (bvVar and71);
bvAssign conv72_H (bvConst 0);
(*  %sub74 = sub i128 %sub54, %conv72 *)
bvSubC carry sub74_L (bvVar sub54_L) (bvVar conv72_L);
bvSbb sub74_H (bvVar sub54_H) (bvVar conv72_H) carry;
(*  %and75 = and i64 %or, -4294967295 *)
(* You may need to modify here *)
(*bvAndb and75 (bvVar or) (bvConst 0xFFFFFFFF00000001);*)
(* modified *)
bvCmove and75 condition (bvConst 0xFFFFFFFF00000001) (bvConst 0);
(*  %conv76 = zext i64 %and75 to i128 *)
bvAssign conv76_L (bvVar and75);
bvAssign conv76_H (bvConst 0);
(*  %sub78 = sub nsw i128 %add47, %conv76 *)
bvSubC carry sub78_L (bvVar add47_L) (bvVar conv76_L);
bvSbb sub78_H (bvVar add47_H) (bvVar conv76_H) carry;
(* modified *)
bvAssert bvtrue | bveq (bvvar sub78_H) (bvconst 64 0);
bvAssume (bvvar sub78_H) = (bvconst 0) | bvtrue;
(*  %shr80 = lshr i128 %sub70, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr80_L (bvVar sub70_H);
bvAssign shr80_H (bvConst 0);
(*  %add84 = add i128 %sub74, %shr80 *)
bvAddC carry add84_L (bvVar sub74_L) (bvVar shr80_L);
bvAdc add84_H (bvVar sub74_H) (bvVar shr80_H) carry;
(*  %conv86 = trunc i128 %sub70 to i64 *)
bvAssign conv86 (bvVar sub70_L);
(*  %shr90 = lshr i128 %add84, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr90_L (bvVar add84_H);
bvAssign shr90_H (bvConst 0);
(*  %add94 = add nuw nsw i128 %add13, %shr90 *)
bvAddC carry add94_L (bvVar add13_L) (bvVar shr90_L);
bvAdc add94_H (bvVar add13_H) (bvVar shr90_H) carry;
(*  %conv96 = trunc i128 %add84 to i64 *)
bvAssign conv96 (bvVar add84_L);
(*  %shr100 = lshr i128 %add94, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr100_L (bvVar add94_H);
bvAssign shr100_H (bvConst 0);
(*  %add104 = add nsw i128 %sub78, %shr100 *)
bvAddC carry add104_L (bvVar sub78_L) (bvVar shr100_L);
bvAdc add104_H (bvVar sub78_H) (bvVar shr100_H) carry;
(* modified *)
bvAssert bvtrue | bveq (bvvar add104_H) (bvconst 64 0);
bvAssume (bvvar add104_H) = (bvconst 0) | bvtrue;
(*  %conv106 = trunc i128 %add94 to i64 *)
bvAssign conv106 (bvVar add94_L);
(*  store i64 %conv86, i64* %out, align 8, !tbaa !6 *)
bvAssign L1_0 (bvVar conv86);
(*  %arrayidx114 = getelementptr inbounds i64, i64* %out, i64 1 *)
(*  store i64 %conv96, i64* %arrayidx114, align 8, !tbaa !6 *)
bvAssign L1_8 (bvVar conv96);
(*  %arrayidx117 = getelementptr inbounds i64, i64* %out, i64 2 *)
(*  store i64 %conv106, i64* %arrayidx117, align 8, !tbaa !6 *)
bvAssign L1_16 (bvVar conv106);
(*  %conv119 = trunc i128 %add104 to i64 *)
bvAssign conv119 (bvVar add104_L);
(*  %arrayidx120 = getelementptr inbounds i64, i64* %out, i64 3 *)
(*  store i64 %conv119, i64* %arrayidx120, align 8, !tbaa !6 *)
bvAssign L1_24 (bvVar conv119);
(*  ret void *)

bvAssign c0 (bvVar L1_0);
bvAssign c1 (bvVar L1_8);
bvAssign c2 (bvVar L1_16);
bvAssign c3 (bvVar L1_24);

{
  bveEqMod ( limbs 64 [ bvvar a0_L,
                        bvvar a0_H + bvvar a1_L,
			bvvar a1_H + bvvar a2_L,
			bvvar a2_H + bvvar a3_L,
			bvvar a3_H ] )
	   ( limbs 64 [ bvvar c0, bvvar c1, bvvar c2, bvvar c3 ] )
           ( limbs 64 [ bvconst 18446744073709551615,
                        bvconst 4294967295,
                        bvconst 0,
                        bvconst 18446744069414584321 ] )
  |
  bvrTrue
}


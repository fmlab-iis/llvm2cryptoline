(* -v -btor -isafety
Parsing Cryptoline file:		[OK]		0.001866 seconds
Checking well-formedness:		[OK]		0.000476 seconds
Transforming to SSA form:		[OK]		0.001136 seconds
Rewriting assignments:			[OK]		0.000147 seconds
Verifying program safety:			[OK]		2.979945 seconds
Verifying assertions:			[OK]		0.647123 seconds
Verifying range specification:		[OK]		0.820297 seconds
Verifying algebraic specification:	[OK]		0.117593 seconds
Verification result:			[OK]		4.569119 seconds
*)
proc main (L0_0, L0_8, L0_16, L0_24, L0_32, L0_40, L0_48, L0_56, L0_64, L0_72, L0_80, L0_88, L0_96, L0_104) =
{
  bveTrue
  |
  bvands [
    limbs 64 [bvvar L0_0, bvvar L0_8] < bvconst 128 (2^126),
    limbs 64 [bvvar L0_16, bvvar L0_24] < bvconst 128 (2^126),
    limbs 64 [bvvar L0_32, bvvar L0_40] < bvconst 128 (2^126),
    limbs 64 [bvvar L0_48, bvvar L0_56] < bvconst 128 (2^126),
    limbs 64 [bvvar L0_64, bvvar L0_72] < bvconst 128 (2^126),
    limbs 64 [bvvar L0_80, bvvar L0_88] < bvconst 128 (2^126),
    limbs 64 [bvvar L0_96, bvvar L0_104] < bvconst 128 (2^126)
  ]
}



(*  %0 = load i128, i128* %in, align 16, !tbaa !2 *)
bvAssign v0_L (bvVar L0_0);
bvAssign v0_H (bvVar L0_8);
(*  %add = add i128 %0, -170141183460469231731687303715884072960 *)
bvAddC carry add_L (bvVar v0_L) (bvConst 32768);
bvAdc add_H (bvVar v0_H) (bvConst 9223372036854775808) carry;
(*  %arrayidx2 = getelementptr inbounds i128, i128* %in, i64 1 *)
(*  %1 = load i128, i128* %arrayidx2, align 16, !tbaa !2 *)
bvAssign v1_L (bvVar L0_16);
bvAssign v1_H (bvVar L0_24);
(*  %add3 = add i128 %1, 170141183460469229370468033484042534912 *)
bvAddC carry add3_L (bvVar v1_L) (bvConst 18410715276690587648);
bvAdc add3_H (bvVar v1_H) (bvConst 9223372036854775679) carry;
(*  %arrayidx5 = getelementptr inbounds i128, i128* %in, i64 2 *)
(*  %2 = load i128, i128* %arrayidx5, align 16, !tbaa !2 *)
bvAssign v2_L (bvVar L0_32);
bvAssign v2_H (bvVar L0_40);
(*  %add6 = add i128 %2, 170141183460469229370504062281061498880 *)
bvAddC carry add6_L (bvVar v2_L) (bvConst 0);
bvAdc add6_H (bvVar v2_H) (bvConst 9223372036854775680) carry;
(*  %arrayidx8 = getelementptr inbounds i128, i128* %in, i64 3 *)
(*  %3 = load i128, i128* %arrayidx8, align 16, !tbaa !2 *)
bvAssign v3_L (bvVar L0_48);
bvAssign v3_H (bvVar L0_56);
(*  %arrayidx10 = getelementptr inbounds i128, i128* %in, i64 4 *)
(*  %4 = load i128, i128* %arrayidx10, align 16, !tbaa !2 *)
bvAssign v4_L (bvVar L0_64);
bvAssign v4_H (bvVar L0_72);
(*  %arrayidx12 = getelementptr inbounds i128, i128* %in, i64 6 *)
(*  %5 = load i128, i128* %arrayidx12, align 16, !tbaa !2 *)
bvAssign v5_L (bvVar L0_96);
bvAssign v5_H (bvVar L0_104);
(*  %shr = lshr i128 %5, 16 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar v5_L) 16;
bvSplit tmpH_h tmpH_l (bvVar v5_H) 16;
bvShl tmp (bvVar tmpH_l) 48;
bvAdd shr_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr_H (bvVar tmpH_h);
(*  %add14 = add i128 %shr, %4 *)
bvAddC carry add14_L (bvVar shr_L) (bvVar v4_L);
bvAdc add14_H (bvVar shr_H) (bvVar v4_H) carry;
(* Do shl first and then bit-wise AND will cause overflow.
   Split the high 64-bit to avoid overflow. *)
(*  %and = shl i128 %5, 40 *)
bvSplit tmpH_H tmpH_L (bvVar v5_H) 24;
bvConcatShl and_H tmp (bvVar tmpH_L) (bvVar v5_L) 40;
bvShl and_L (bvVar tmp) 40;
(*  %shl = and i128 %and, 72056494526300160 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb shl_L (bvVar and_L) (bvConst 0xFFFF0000000000);
bvAndb shl_H (bvVar and_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar shl_H) (bvconst 64 0);
bvAssume bveEq (bvvar shl_H) (bvconst 0) | bvrTrue;
bvAssert bveTrue | bvrEq (bvvar shl_L) (bvmul (bvvar tmp_to_be_used) (bvconst 64 (2^40)));
bvAssume bveEq (bvvar shl_L) (bvvar tmp_to_be_used * bvconst (2^40)) | bvrTrue;
(*  %add17 = add i128 %shl, %3 *)
bvAddC carry add17_L (bvVar shl_L) (bvVar v3_L);
bvAdc add17_H (bvVar shl_H) (bvVar v3_H) carry;
(*  %sub = sub i128 %add6, %5 *)
bvSubC carry sub_L (bvVar add6_L) (bvVar v5_L);
bvSbb sub_H (bvVar add6_H) (bvVar v5_H) carry;
(*  %arrayidx20 = getelementptr inbounds i128, i128* %in, i64 5 *)
(*  %6 = load i128, i128* %arrayidx20, align 16, !tbaa !2 *)
bvAssign v6_L (bvVar L0_80);
bvAssign v6_H (bvVar L0_88);
(*  %shr21 = lshr i128 %6, 16 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar v6_L) 16;
bvSplit tmpH_h tmpH_l (bvVar v6_H) 16;
bvShl tmp (bvVar tmpH_l) 48;
bvAdd shr21_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr21_H (bvVar tmpH_h);
(*  %add23 = add i128 %add17, %shr21 *)
bvAddC carry add23_L (bvVar add17_L) (bvVar shr21_L);
bvAdc add23_H (bvVar add17_H) (bvVar shr21_H) carry;
(* Do shl first and then bit-wise AND will cause overflow.
   Split the high 64-bit to avoid overflow. *)
(*  %and25 = shl i128 %6, 40 *)
bvSplit tmpH_H tmpH_L (bvVar v6_H) 24;
bvConcatShl and25_H tmp (bvVar tmpH_L) (bvVar v6_L) 40;
bvShl and25_L (bvVar tmp) 40;
(*  %shl26 = and i128 %and25, 72056494526300160 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb shl26_L (bvVar and25_L) (bvConst 0xFFFF0000000000);
bvAndb shl26_H (bvVar and25_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar shl26_H) (bvconst 64 0);
bvAssume bveEq (bvvar shl26_H) (bvconst 0) | bvrTrue;
bvAssert bveTrue | bvrEq (bvvar shl26_L) (bvmul (bvvar tmp_to_be_used) (bvconst 64 (2^40)));
bvAssume bveEq (bvvar shl26_L) (bvvar tmp_to_be_used * bvconst (2^40)) | bvrTrue;
(*  %add28 = add i128 %sub, %shl26 *)
bvAddC carry add28_L (bvVar sub_L) (bvVar shl26_L);
bvAdc add28_H (bvVar sub_H) (bvVar shl26_H) carry;
(*  %sub31 = sub i128 %add3, %6 *)
bvSubC carry sub31_L (bvVar add3_L) (bvVar v6_L);
bvSbb sub31_H (bvVar add3_H) (bvVar v6_H) carry;
(*  %shr33 = lshr i128 %add14, 16 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add14_L) 16;
bvSplit tmpH_h tmpH_l (bvVar add14_H) 16;
bvShl tmp (bvVar tmpH_l) 48;
bvAdd shr33_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr33_H (bvVar tmpH_h);
(*  %add35 = add i128 %add28, %shr33 *)
bvAddC carry add35_L (bvVar add28_L) (bvVar shr33_L);
bvAdc add35_H (bvVar add28_H) (bvVar shr33_H) carry;
(* Do shl first and then bit-wise AND will cause overflow.
   Split the high 64-bit to avoid overflow. *)
(*  %and37 = shl i128 %add14, 40 *)
bvSplit tmpH_H tmpH_L (bvVar add14_H) 24;
bvConcatShl and37_H tmp (bvVar tmpH_L) (bvVar add14_L) 40;
bvShl and37_L (bvVar tmp) 40;
(*  %shl38 = and i128 %and37, 72056494526300160 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb shl38_L (bvVar and37_L) (bvConst 0xFFFF0000000000);
bvAndb shl38_H (bvVar and37_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar shl38_H) (bvconst 64 0);
bvAssume bveEq (bvvar shl38_H) (bvconst 0) | bvrTrue;
bvAssert bveTrue | bvrEq (bvvar shl38_L) (bvmul (bvvar tmp_to_be_used) (bvconst 64 (2^40)));
bvAssume bveEq (bvvar shl38_L) (bvvar tmp_to_be_used * bvconst (2^40)) | bvrTrue;
(*  %add40 = add i128 %sub31, %shl38 *)
bvAddC carry add40_L (bvVar sub31_L) (bvVar shl38_L);
bvAdc add40_H (bvVar sub31_H) (bvVar shl38_H) carry;
(*  %sub43 = sub i128 %add, %add14 *)
bvSubC carry sub43_L (bvVar add_L) (bvVar add14_L);
bvSbb sub43_H (bvVar add_H) (bvVar add14_H) carry;
(*  %shr45 = lshr i128 %add35, 56 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add35_L) 56;
bvSplit tmpH_h tmpH_l (bvVar add35_H) 56;
bvShl tmp (bvVar tmpH_l) 8;
bvAdd shr45_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr45_H (bvVar tmpH_h);
(*  %add47 = add i128 %add23, %shr45 *)
bvAddC carry add47_L (bvVar add23_L) (bvVar shr45_L);
bvAdc add47_H (bvVar add23_H) (bvVar shr45_H) carry;
(*  %and49 = and i128 %add35, 72057594037927935 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and49_L (bvVar add35_L) (bvConst 0xFFFFFFFFFFFFFF);
bvAndb and49_H (bvVar add35_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar and49_H) (bvconst 64 0);
bvAssume bveEq (bvvar and49_H) (bvconst 0) | bvrTrue;
bvAssert bveTrue | bvrEq (bvvar and49_L) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and49_L) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr51 = lshr i128 %add47, 56 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add47_L) 56;
bvSplit tmpH_h tmpH_l (bvVar add47_H) 56;
bvShl tmp (bvVar tmpH_l) 8;
bvAdd shr51_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr51_H (bvVar tmpH_h);
(*  %and54 = and i128 %add47, 72057594037927935 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and54_L (bvVar add47_L) (bvConst 0xFFFFFFFFFFFFFF);
bvAndb and54_H (bvVar add47_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar and54_H) (bvconst 64 0);
bvAssume bveEq (bvvar and54_H) (bvconst 0) | bvrTrue;
bvAssert bveTrue | bvrEq (bvvar and54_L) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and54_L) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr56 = lshr i128 %add47, 72 *)
(* You may need to modify here *)
bvSplit shr56_L tmp_to_be_used (bvVar add47_H) 8;
bvAssign shr56_H (bvConst 0);
(*  %add58 = add nuw nsw i128 %shr56, %and49 *)
bvAddC carry add58_L (bvVar shr56_L) (bvVar and49_L);
bvAdc add58_H (bvVar shr56_H) (bvVar and49_H) carry;
(* Here do shl first and then and will NOT cause overflow.
   But we need the first 16 bits of shr51 to describe a relation required for verification.
   We should do and first and then shl. *)
(*  %and60 = shl nuw nsw i128 %shr51, 40 *)
bvConcatShl and60_H tmp (bvVar shr51_H) (bvVar shr51_L) 40;
bvShl and60_L (bvVar tmp) 40;
(*  %shl61 = and i128 %and60, 72056494526300160 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb shl61_L (bvVar and60_L) (bvConst 0xFFFF0000000000);
bvAndb shl61_H (bvVar and60_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar shl61_H) (bvconst 64 0);
bvAssume bveEq (bvvar shl61_H) (bvconst 0) | bvrTrue;
(* NOTE: the following assertion is required for verifying algebraic specification *)
bvAssert
  bvtrue
  |
  bvadd
    (limbs 64 [bvvar shl61_L, bvconst 64 0])
    (bvmul
      (bvmul
        (limbs 64 [bvvar shr56_L, bvvar shr56_H])
        (bvconst 128 (2^40))
      )
      (bvconst 128 (2^16))
    )
  =
  bvmul (limbs 64 [bvvar shr51_L, bvvar shr51_H]) (bvconst 128 (2^40));
bvAssume
  bvadd
    (limbs 64 [bvvar shl61_L, bvconst 0])
    (bvmul
      (bvmul
        (limbs 64 [bvvar shr56_L, bvvar shr56_H])
        (bvconst (2^40))
      )
      (bvconst (2^16))
    )
  =
  bvmul (limbs 64 [bvvar shr51_L, bvvar shr51_H]) (bvconst (2^40))
  |
  bvtrue;
(*  %add63 = add i128 %add40, %shl61 *)
bvAddC carry add63_L (bvVar add40_L) (bvVar shl61_L);
bvAdc add63_H (bvVar add40_H) (bvVar shl61_H) carry;
(*  %sub66 = sub i128 %sub43, %shr51 *)
bvSubC carry sub66_L (bvVar sub43_L) (bvVar shr51_L);
bvSbb sub66_H (bvVar sub43_H) (bvVar shr51_H) carry;
(*  %shr68 = lshr i128 %sub66, 56 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar sub66_L) 56;
bvSplit tmpH_h tmpH_l (bvVar sub66_H) 56;
bvShl tmp (bvVar tmpH_l) 8;
bvAdd shr68_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr68_H (bvVar tmpH_h);
(*  %add70 = add i128 %add63, %shr68 *)
bvAddC carry add70_L (bvVar add63_L) (bvVar shr68_L);
bvAdc add70_H (bvVar add63_H) (bvVar shr68_H) carry;
(*  %sub66.tr = trunc i128 %sub66 to i64 *)
bvAssign sub66_tr (bvVar sub66_L);
(*  %conv = and i64 %sub66.tr, 72057594037927935 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv (bvVar sub66_tr) (bvConst 0xFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar conv) (bvvar tmp_to_be_used) | bvrTrue;
(*  store i64 %conv, i64* %out, align 8, !tbaa !6 *)
bvAssign L1_0 (bvVar conv);
(*  %shr75 = lshr i128 %add70, 56 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add70_L) 56;
bvSplit tmpH_h tmpH_l (bvVar add70_H) 56;
bvShl tmp (bvVar tmpH_l) 8;
bvAdd shr75_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr75_H (bvVar tmpH_h);
(*  %add77 = add nuw nsw i128 %add58, %shr75 *)
bvAddC carry add77_L (bvVar add58_L) (bvVar shr75_L);
bvAdc add77_H (bvVar add58_H) (bvVar shr75_H) carry;
(*  %add70.tr = trunc i128 %add70 to i64 *)
bvAssign add70_tr (bvVar add70_L);
(*  %conv80 = and i64 %add70.tr, 72057594037927935 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv80 (bvVar add70_tr) (bvConst 0xFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv80) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar conv80) (bvvar tmp_to_be_used) | bvrTrue;
(*  %arrayidx81 = getelementptr inbounds i64, i64* %out, i64 1 *)
(*  store i64 %conv80, i64* %arrayidx81, align 8, !tbaa !6 *)
bvAssign L1_8 (bvVar conv80);
(*  %shr83 = lshr i128 %add77, 56 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add77_L) 56;
bvSplit tmpH_h tmpH_l (bvVar add77_H) 56;
bvShl tmp (bvVar tmpH_l) 8;
bvAdd shr83_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr83_H (bvVar tmpH_h);
(*  %add85 = add nuw nsw i128 %shr83, %and54 *)
bvAddC carry add85_L (bvVar shr83_L) (bvVar and54_L);
bvAdc add85_H (bvVar shr83_H) (bvVar and54_H) carry;
bvAssert bveTrue | bveq (bvvar add85_H) (bvconst 64 0);
bvAssume bveq (bvvar add85_H) (bvconst 0) | bvrTrue;
(*  %add77.tr = trunc i128 %add77 to i64 *)
bvAssign add77_tr (bvVar add77_L);
(*  %conv88 = and i64 %add77.tr, 72057594037927935 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv88 (bvVar add77_tr) (bvConst 0xFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv88) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar conv88) (bvvar tmp_to_be_used) | bvrTrue;
(*  %arrayidx89 = getelementptr inbounds i64, i64* %out, i64 2 *)
(*  store i64 %conv88, i64* %arrayidx89, align 8, !tbaa !6 *)
bvAssign L1_16 (bvVar conv88);
(*  %conv91 = trunc i128 %add85 to i64 *)
bvAssign conv91 (bvVar add85_L);
(*  %arrayidx92 = getelementptr inbounds i64, i64* %out, i64 3 *)
(*  store i64 %conv91, i64* %arrayidx92, align 8, !tbaa !6 *)
bvAssign L1_24 (bvVar conv91);
(*  ret void *)


{
  bveqmod
    (limbs 56 [limbs 64 [bvvar L0_0, bvvar L0_8], limbs 64 [bvvar L0_16, bvvar L0_24], limbs 64 [bvvar L0_32, bvvar L0_40], limbs 64 [bvvar L0_48, bvvar L0_56],
               limbs 64 [bvvar L0_64, bvvar L0_72], limbs 64 [bvvar L0_80, bvvar L0_88], limbs 64 [bvvar L0_96, bvvar L0_104]])
    (limbs 56 [bvvar L1_0, bvvar L1_8, bvvar L1_16, bvvar L1_24])
    (bvconst (2^224) - bvconst (2^96) + bvconst 1)
  |
  bvands [
    bvvar L1_0 < bvconst 64 (2^56),
    bvvar L1_8 < bvconst 64 (2^56),
    bvvar L1_16 < bvconst 64 (2^56),
    bvvar L1_24 < bvadd (bvconst 64 (2^56)) (bvconst 64 (2^16))
  ]
}


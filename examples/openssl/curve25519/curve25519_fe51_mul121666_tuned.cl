proc main (a0, a1, a2, a3, a4) =
{
  bveTrue
  |
  bvrands
  [
    bvvar a0 < bvconst 64 (2^51),
    bvvar a1 < bvconst 64 (2^51),
    bvvar a2 < bvconst 64 (2^51),
    bvvar a3 < bvconst 64 (2^51),
    bvvar a4 < bvconst 64 (2^51)
  ]
}

bvAssign L0_0 (bvVar a0);
bvAssign L0_8 (bvVar a1);
bvAssign L0_16 (bvVar a2);
bvAssign L0_24 (bvVar a3);
bvAssign L0_32 (bvVar a4);


(*  %0 = load i64, i64* %f, align 8, !tbaa !2 *)
bvAssign v0 (bvVar L0_0);
(*  %conv = zext i64 %0 to i128 *)
bvAssign conv_L (bvVar v0);
bvAssign conv_H (bvConst 0);
(*  %mul = mul nuw nsw i128 %conv, 121666 *)
bvMulf tmpLC_H tmpLC_L (bvVar conv_L) (bvConst 121666);
bvMul tmpHC_L (bvVar conv_H) (bvConst 121666);
bvAssign mul_L (bvVar tmpLC_L);
bvAdd mul_H (bvVar tmpLC_H) (bvVar tmpHC_L);
(*  %arrayidx1 = getelementptr inbounds i64, i64* %f, i64 1 *)
(*  %1 = load i64, i64* %arrayidx1, align 8, !tbaa !2 *)
bvAssign v1 (bvVar L0_8);
(*  %conv2 = zext i64 %1 to i128 *)
bvAssign conv2_L (bvVar v1);
bvAssign conv2_H (bvConst 0);
(*  %mul3 = mul nuw nsw i128 %conv2, 121666 *)
bvMulf tmpLC_H tmpLC_L (bvVar conv2_L) (bvConst 121666);
bvMul tmpHC_L (bvVar conv2_H) (bvConst 121666);
bvAssign mul3_L (bvVar tmpLC_L);
bvAdd mul3_H (bvVar tmpLC_H) (bvVar tmpHC_L);
(*  %arrayidx4 = getelementptr inbounds i64, i64* %f, i64 2 *)
(*  %2 = load i64, i64* %arrayidx4, align 8, !tbaa !2 *)
bvAssign v2 (bvVar L0_16);
(*  %conv5 = zext i64 %2 to i128 *)
bvAssign conv5_L (bvVar v2);
bvAssign conv5_H (bvConst 0);
(*  %mul6 = mul nuw nsw i128 %conv5, 121666 *)
bvMulf tmpLC_H tmpLC_L (bvVar conv5_L) (bvConst 121666);
bvMul tmpHC_L (bvVar conv5_H) (bvConst 121666);
bvAssign mul6_L (bvVar tmpLC_L);
bvAdd mul6_H (bvVar tmpLC_H) (bvVar tmpHC_L);
(*  %arrayidx7 = getelementptr inbounds i64, i64* %f, i64 3 *)
(*  %3 = load i64, i64* %arrayidx7, align 8, !tbaa !2 *)
bvAssign v3 (bvVar L0_24);
(*  %conv8 = zext i64 %3 to i128 *)
bvAssign conv8_L (bvVar v3);
bvAssign conv8_H (bvConst 0);
(*  %mul9 = mul nuw nsw i128 %conv8, 121666 *)
bvMulf tmpLC_H tmpLC_L (bvVar conv8_L) (bvConst 121666);
bvMul tmpHC_L (bvVar conv8_H) (bvConst 121666);
bvAssign mul9_L (bvVar tmpLC_L);
bvAdd mul9_H (bvVar tmpLC_H) (bvVar tmpHC_L);
(*  %arrayidx10 = getelementptr inbounds i64, i64* %f, i64 4 *)
(*  %4 = load i64, i64* %arrayidx10, align 8, !tbaa !2 *)
bvAssign v4 (bvVar L0_32);
(*  %conv11 = zext i64 %4 to i128 *)
bvAssign conv11_L (bvVar v4);
bvAssign conv11_H (bvConst 0);
(*  %mul12 = mul nuw nsw i128 %conv11, 121666 *)
bvMulf tmpLC_H tmpLC_L (bvVar conv11_L) (bvConst 121666);
bvMul tmpHC_L (bvVar conv11_H) (bvConst 121666);
bvAssign mul12_L (bvVar tmpLC_L);
bvAdd mul12_H (bvVar tmpLC_H) (bvVar tmpHC_L);
(*  %shr = lshr i128 %mul6, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar mul6_L) 51;
bvSplit tmpH_h tmpH_l (bvVar mul6_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr_H (bvVar tmpH_h);
(*  %add = add nuw nsw i128 %mul9, %shr *)
bvAddC carry add_L (bvVar mul9_L) (bvVar shr_L);
bvAdc add_H (bvVar mul9_H) (bvVar shr_H) carry;
(*  %conv15 = trunc i128 %mul6 to i64 *)
bvAssign conv15 (bvVar mul6_L);
(*  %and = and i64 %conv15, 2251799813685246 *)
(* You may need to modify here *)
bvAndb and (bvVar conv15) (bvConst 0x7FFFFFFFFFFFE);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmp_to_be_used) (bvvar and);
bvAssume bveEq (bvvar tmp_to_be_used) (bvvar and) | bvrTrue;
(*  %shr16 = lshr i128 %mul, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar mul_L) 51;
bvSplit tmpH_h tmpH_l (bvVar mul_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr16_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr16_H (bvVar tmpH_h);
(*  %add19 = add nuw nsw i128 %mul3, %shr16 *)
bvAddC carry add19_L (bvVar mul3_L) (bvVar shr16_L);
bvAdc add19_H (bvVar mul3_H) (bvVar shr16_H) carry;
(*  %conv20 = trunc i128 %mul to i64 *)
bvAssign conv20 (bvVar mul_L);
(*  %and21 = and i64 %conv20, 2251799813685246 *)
(* You may need to modify here *)
bvAndb and21 (bvVar conv20) (bvConst 0x7FFFFFFFFFFFE);
bvAssert bveTrue | bvrEq (bvvar tmp_to_be_used) (bvvar and21);
bvAssume bveEq (bvvar tmp_to_be_used) (bvvar and21) | bvrTrue;
(*  %shr22 = lshr i128 %add, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr22_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr22_H (bvVar tmpH_h);
(*  %add25 = add nuw nsw i128 %shr22, %mul12 *)
bvAddC carry add25_L (bvVar shr22_L) (bvVar mul12_L);
bvAdc add25_H (bvVar shr22_H) (bvVar mul12_H) carry;
(*  %conv26 = trunc i128 %add to i64 *)
bvAssign conv26 (bvVar add_L);
(*  %and27 = and i64 %conv26, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and27 (bvVar conv26) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and27) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and27) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr28 = lshr i128 %add19, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add19_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add19_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr28_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr28_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv29 = trunc i128 %shr28 to i64 *)
bvAssign conv29 (bvVar shr28_L);
(*  %add30 = add nuw nsw i64 %and, %conv29 *)
bvAdd add30 (bvVar and) (bvVar conv29);
(*  %conv31 = trunc i128 %add19 to i64 *)
bvAssign conv31 (bvVar add19_L);
(*  %and32 = and i64 %conv31, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and32 (bvVar conv31) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and32) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and32) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr33 = lshr i128 %add25, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add25_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add25_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr33_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr33_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv34 = trunc i128 %shr33 to i64 *)
bvAssign conv34 (bvVar shr33_L);
(*  %mul35 = mul nuw nsw i64 %conv34, 19 *)
bvMul mul35 (bvVar conv34) (bvConst 19);
(*  %add36 = add nuw nsw i64 %mul35, %and21 *)
bvAdd add36 (bvVar mul35) (bvVar and21);
(*  %conv37 = trunc i128 %add25 to i64 *)
bvAssign conv37 (bvVar add25_L);
(*  %and38 = and i64 %conv37, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and38 (bvVar conv37) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and38) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and38) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr39 = lshr i64 %add30, 51 *)
(* You may need to modify here *)
bvSplit shr39 tmp_to_be_used (bvVar add30) 51;
(*  %add40 = add nuw nsw i64 %and27, %shr39 *)
bvAdd add40 (bvVar and27) (bvVar shr39);
(*  %and41 = and i64 %add30, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and41 (bvVar add30) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and41) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and41) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr42 = lshr i64 %add36, 51 *)
(* You may need to modify here *)
bvSplit shr42 tmp_to_be_used (bvVar add36) 51;
(*  %add43 = add nuw nsw i64 %shr42, %and32 *)
bvAdd add43 (bvVar shr42) (bvVar and32);
(*  %and44 = and i64 %add36, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and44 (bvVar add36) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and44) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and44) (bvvar tmp_to_be_used) | bvrTrue;
(*  store i64 %and44, i64* %h, align 8, !tbaa !2 *)
bvAssign L1_0 (bvVar and44);
(*  %arrayidx46 = getelementptr inbounds i64, i64* %h, i64 1 *)
(*  store i64 %add43, i64* %arrayidx46, align 8, !tbaa !2 *)
bvAssign L1_8 (bvVar add43);
(*  %arrayidx47 = getelementptr inbounds i64, i64* %h, i64 2 *)
(*  store i64 %and41, i64* %arrayidx47, align 8, !tbaa !2 *)
bvAssign L1_16 (bvVar and41);
(*  %arrayidx48 = getelementptr inbounds i64, i64* %h, i64 3 *)
(*  store i64 %add40, i64* %arrayidx48, align 8, !tbaa !2 *)
bvAssign L1_24 (bvVar add40);
(*  %arrayidx49 = getelementptr inbounds i64, i64* %h, i64 4 *)
(*  store i64 %and38, i64* %arrayidx49, align 8, !tbaa !2 *)
bvAssign L1_32 (bvVar and38);
(*  ret void *)


bvAssign c0 (bvVar L1_0);
bvAssign c1 (bvVar L1_8);
bvAssign c2 (bvVar L1_16);
bvAssign c3 (bvVar L1_24);
bvAssign c4 (bvVar L1_32);


{
  bveEqMod
    (limbs 51 [bvvar c0, bvvar c1, bvvar c2, bvvar c3, bvvar c4])

    (
      (limbs 51 [bvvar a0, bvvar a1, bvvar a2, bvvar a3, bvvar a4])
      *
      (bvconst 121666)
    )

    (
      (limbs 255 [bvconst 0, bvconst 1])
      -
      (bvconst 19)
    )
  |
  bvrTrue
}

proc main (L0_0, L0_8, L0_16, L0_24) =
{
  bveTrue
  |
  bvands [
    bvvar L0_0 < bvconst 64 (2^57),
    bvvar L0_8 < bvconst 64 (2^57),
    bvvar L0_16 < bvconst 64 (2^57),
    bvvar L0_24 < bvconst 64 (2^57)
  ]
}


(*  %0 = load i64, i64* %in, align 8, !tbaa !2 *)
bvAssign v0 (bvVar L0_0);
(*  %conv.i = zext i64 %0 to i128 *)
bvAssign conv_i_L (bvVar v0);
bvAssign conv_i_H (bvConst 0);
(*  %arrayidx9.i = getelementptr inbounds i64, i64* %in, i64 1 *)
(*  %1 = load i64, i64* %arrayidx9.i, align 8, !tbaa !2 *)
bvAssign v1 (bvVar L0_8);
(*  %conv10.i = zext i64 %1 to i128 *)
bvAssign conv10_i_L (bvVar v1);
bvAssign conv10_i_H (bvConst 0);
(*  %arrayidx13.i = getelementptr inbounds i64, i64* %in, i64 2 *)
(*  %2 = load i64, i64* %arrayidx13.i, align 8, !tbaa !2 *)
bvAssign v2 (bvVar L0_16);
(*  %conv14.i = zext i64 %2 to i128 *)
bvAssign conv14_i_L (bvVar v2);
bvAssign conv14_i_H (bvConst 0);
(*  %sub16.i = sub nsw i128 18446744073709551360, %conv14.i *)
bvSubC carry sub16_i_L (bvConst 18446744073709551360) (bvVar conv14_i_L);
bvSbb sub16_i_H (bvConst 0) (bvVar conv14_i_H) carry;
(*  %arrayidx17.i = getelementptr inbounds i64, i64* %in, i64 3 *)
(*  %3 = load i64, i64* %arrayidx17.i, align 8, !tbaa !2 *)
bvAssign v3 (bvVar L0_24);
(*  %conv18.i = zext i64 %3 to i128 *)
bvAssign conv18_i_L (bvVar v3);
bvAssign conv18_i_H (bvConst 0);
(*  %sub20.i = sub nsw i128 18446744073709551360, %conv18.i *)
bvSubC carry sub20_i_L (bvConst 18446744073709551360) (bvVar conv18_i_L);
bvSbb sub20_i_H (bvConst 0) (bvVar conv18_i_H) carry;
(*  %add6.i.4 = add i128 %sub16.i, 170141183460469229370504062281061498880 *)
bvAddC carry add6_i_4_L (bvVar sub16_i_L) (bvConst 0);
bvAdc add6_i_4_H (bvVar sub16_i_H) (bvConst 9223372036854775680) carry;
(*  %shr45.i = lshr i128 %add6.i.4, 56 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add6_i_4_L) 56;
bvSplit tmpH_h tmpH_l (bvVar add6_i_4_H) 56;
bvShl tmp (bvVar tmpH_l) 8;
bvAdd shr45_i_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr45_i_H (bvVar tmpH_h);
(*  %add47.i = add nsw i128 %shr45.i, %sub20.i *)
bvAddC carry add47_i_L (bvVar shr45_i_L) (bvVar sub20_i_L);
bvAdc add47_i_H (bvVar shr45_i_H) (bvVar sub20_i_H) carry;
(*  %and49.i = and i128 %add6.i.4, 72057594037927935 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and49_i_L (bvVar add6_i_4_L) (bvConst 0xFFFFFFFFFFFFFF);
bvAndb and49_i_H (bvVar add6_i_4_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar and49_i_H) (bvconst 64 0);
bvAssume bveEq (bvvar and49_i_H) (bvconst 0) | bvrTrue;
bvAssert bveTrue | bvrEq (bvvar and49_i_L) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and49_i_L) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr51.i = lshr i128 %add47.i, 56 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add47_i_L) 56;
bvSplit tmpH_h tmpH_l (bvVar add47_i_H) 56;
bvShl tmp (bvVar tmpH_l) 8;
bvAdd shr51_i_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr51_i_H (bvVar tmpH_h);
(*  %and54.i = and i128 %add47.i, 72057594037927935 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and54_i_L (bvVar add47_i_L) (bvConst 0xFFFFFFFFFFFFFF);
bvAndb and54_i_H (bvVar add47_i_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar and54_i_H) (bvconst 64 0);
bvAssume bveEq (bvvar and54_i_H) (bvconst 0) | bvrTrue;
bvAssert bveTrue | bvrEq (bvvar and54_i_L) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and54_i_L) (bvvar tmp_to_be_used) | bvrTrue;
(* This is equivalent to shr51_i >> 16 *)
(*  %shr56.i = lshr i128 %add47.i, 72 *)
(* You may need to modify here *)
bvSplit shr56_i_L tmp_to_be_used (bvVar add47_i_H) 8;
bvAssign shr56_i_H (bvConst 0);
(*  %add58.i = add nuw nsw i128 %shr56.i, %and49.i *)
bvAddC carry add58_i_L (bvVar shr56_i_L) (bvVar and49_i_L);
bvAdc add58_i_H (bvVar shr56_i_H) (bvVar and49_i_H) carry;
(* Do shl first and then and will cause overflow.
   We should do and first and then shl. *)
(*  %and60.i = shl nuw nsw i128 %shr51.i, 40 *)
(*
bvConcatShl and60_i_H tmp (bvVar shr51_i_H) (bvVar shr51_i_L) 40;
bvShl and60_i_L (bvVar tmp) 40;
*)
(*  %shl61.i = and i128 %and60.i, 72056494526300160 *)
(* You may need to modify here *)
(* Heuristics applied. *)
(*
bvAndb shl61_i_L (bvVar and60_i_L) (bvConst 0xFFFF0000000000);
bvAndb shl61_i_H (bvVar and60_i_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar shl61_i_H) (bvconst 64 0);
bvAssume bveEq (bvvar shl61_i_H) (bvconst 0) | bvrTrue;
*)
bvAndb and60_i_L (bvVar shr51_i_L) (bvConst 0xFFFF);
bvAssert bveTrue 
       | bvrEq (bvvar and60_i_L) 
               (bvadd (bvmul (bvvar tmp_to_be_used) (bvconst 64 (2^8)))
                             (bvvar tmpL_h));
bvAssume bveEq (bvvar and60_i_L) 
               (((bvvar tmp_to_be_used) * (bvconst (2^8))) + (bvvar tmpL_h))
       | bvrTrue;
bvShl shl61_i_L (bvVar and60_i_L) 40;
bvAssign shl61_i_H (bvConst 0);
(*  %add.i.2 = sub nuw i128 -170141183460469231713240559642174521088, %conv.i *)
bvSubC carry add_i_2_L (bvConst 33024) (bvVar conv_i_L);
bvSbb add_i_2_H (bvConst 9223372036854775809) (bvVar conv_i_H) carry;
(*  %sub66.i = sub nuw i128 %add.i.2, %shr51.i *)
bvSubC carry sub66_i_L (bvVar add_i_2_L) (bvVar shr51_i_L);
bvSbb sub66_i_H (bvVar add_i_2_H) (bvVar shr51_i_H) carry;
(*  %shr68.i = lshr i128 %sub66.i, 56 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar sub66_i_L) 56;
bvSplit tmpH_h tmpH_l (bvVar sub66_i_H) 56;
bvShl tmp (bvVar tmpH_l) 8;
bvAdd shr68_i_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr68_i_H (bvVar tmpH_h);
(*  %add3.i = sub nsw i128 170141183460469229388914496082775375616, %conv10.i *)
bvSubC carry add3_i_L (bvConst 18410433801713876736) (bvVar conv10_i_L);
bvSbb add3_i_H (bvConst 9223372036854775680) (bvVar conv10_i_H) carry;
(*  %add63.i = add nuw i128 %add3.i, %shl61.i *)
bvAddC carry add63_i_L (bvVar add3_i_L) (bvVar shl61_i_L);
bvAdc add63_i_H (bvVar add3_i_H) (bvVar shl61_i_H) carry;
(*  %add70.i = add i128 %add63.i, %shr68.i *)
bvAddC carry add70_i_L (bvVar add63_i_L) (bvVar shr68_i_L);
bvAdc add70_i_H (bvVar add63_i_H) (bvVar shr68_i_H) carry;
(*  %sub66.tr.i = trunc i128 %sub66.i to i64 *)
bvAssign sub66_tr_i (bvVar sub66_i_L);
(*  %conv.i.6 = and i64 %sub66.tr.i, 72057594037927935 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv_i_6 (bvVar sub66_tr_i) (bvConst 0xFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv_i_6) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar conv_i_6) (bvvar tmp_to_be_used) | bvrTrue;
(*  store i64 %conv.i.6, i64* %out, align 8, !tbaa !2 *)
bvAssign L1_0 (bvVar conv_i_6);
(*  %shr75.i = lshr i128 %add70.i, 56 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add70_i_L) 56;
bvSplit tmpH_h tmpH_l (bvVar add70_i_H) 56;
bvShl tmp (bvVar tmpH_l) 8;
bvAdd shr75_i_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr75_i_H (bvVar tmpH_h);
(*  %add77.i = add nuw nsw i128 %add58.i, %shr75.i *)
bvAddC carry add77_i_L (bvVar add58_i_L) (bvVar shr75_i_L);
bvAdc add77_i_H (bvVar add58_i_H) (bvVar shr75_i_H) carry;
(*  %add70.tr.i = trunc i128 %add70.i to i64 *)
bvAssign add70_tr_i (bvVar add70_i_L);
(*  %conv80.i = and i64 %add70.tr.i, 72057594037927935 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv80_i (bvVar add70_tr_i) (bvConst 0xFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv80_i) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar conv80_i) (bvvar tmp_to_be_used) | bvrTrue;
(*  %arrayidx81.i = getelementptr inbounds i64, i64* %out, i64 1 *)
(*  store i64 %conv80.i, i64* %arrayidx81.i, align 8, !tbaa !2 *)
bvAssign L1_8 (bvVar conv80_i);
(*  %shr83.i = lshr i128 %add77.i, 56 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add77_i_L) 56;
bvSplit tmpH_h tmpH_l (bvVar add77_i_H) 56;
bvShl tmp (bvVar tmpH_l) 8;
bvAdd shr83_i_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr83_i_H (bvVar tmpH_h);
(*  %add85.i = add nuw nsw i128 %shr83.i, %and54.i *)
bvAddC carry add85_i_L (bvVar shr83_i_L) (bvVar and54_i_L);
bvAdc add85_i_H (bvVar shr83_i_H) (bvVar and54_i_H) carry;
bvAssert bveTrue | bveq (bvvar add85_i_H) (bvconst 64 0);
bvAssume bveq (bvvar add85_i_H) (bvconst 0) | bvrTrue;
(*  %add77.tr.i = trunc i128 %add77.i to i64 *)
bvAssign add77_tr_i (bvVar add77_i_L);
(*  %conv88.i = and i64 %add77.tr.i, 72057594037927935 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv88_i (bvVar add77_tr_i) (bvConst 0xFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv88_i) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar conv88_i) (bvvar tmp_to_be_used) | bvrTrue;
(*  %arrayidx89.i = getelementptr inbounds i64, i64* %out, i64 2 *)
(*  store i64 %conv88.i, i64* %arrayidx89.i, align 8, !tbaa !2 *)
bvAssign L1_16 (bvVar conv88_i);
(*  %conv91.i = trunc i128 %add85.i to i64 *)
bvAssign conv91_i (bvVar add85_i_L);
(*  %arrayidx92.i = getelementptr inbounds i64, i64* %out, i64 3 *)
(*  store i64 %conv91.i, i64* %arrayidx92.i, align 8, !tbaa !2 *)
bvAssign L1_24 (bvVar conv91_i);
(*  ret void *)

{
  bveqmod
    (limbs 56 [bvvar L0_0, bvvar L0_8, bvvar L0_16, bvvar L0_24])
    (
      (bvconst 0)
      -
      (limbs 56 [bvvar L1_0, bvvar L1_8, bvvar L1_16, bvvar L1_24])
    )
    (bvconst (2^224) - bvconst (2^96) + bvconst 1)
  |
  bvands [
    bvvar L1_0 < bvconst 64 (2^56),
    bvvar L1_8 < bvconst 64 (2^56),
    bvvar L1_16 < bvconst 64 (2^56),
    bvvar L1_24 < bvadd (bvconst 64 (2^56)) (bvconst 64 (2^16))
  ]
}
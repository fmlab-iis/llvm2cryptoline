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
(*  %arrayidx1 = getelementptr inbounds i64, i64* %f, i64 1 *)
(*  %1 = load i64, i64* %arrayidx1, align 8, !tbaa !2 *)
bvAssign v1 (bvVar L0_8);
(*  %arrayidx2 = getelementptr inbounds i64, i64* %f, i64 2 *)
(*  %2 = load i64, i64* %arrayidx2, align 8, !tbaa !2 *)
bvAssign v2 (bvVar L0_16);
(*  %arrayidx3 = getelementptr inbounds i64, i64* %f, i64 3 *)
(*  %3 = load i64, i64* %arrayidx3, align 8, !tbaa !2 *)
bvAssign v3 (bvVar L0_24);
(*  %arrayidx4 = getelementptr inbounds i64, i64* %f, i64 4 *)
(*  %4 = load i64, i64* %arrayidx4, align 8, !tbaa !2 *)
bvAssign v4 (bvVar L0_32);
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
(*  %mul6 = shl i64 %0, 1 *)
bvShl mul6 (bvVar v0) 1;
(*  %conv7 = zext i64 %mul6 to i128 *)
bvAssign conv7_L (bvVar mul6);
bvAssign conv7_H (bvConst 0);
(*  %conv8 = zext i64 %1 to i128 *)
bvAssign conv8_L (bvVar v1);
bvAssign conv8_H (bvConst 0);
(*  %mul9 = mul nuw i128 %conv7, %conv8 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv7_L) (bvVar conv8_L);
bvMul tmpHL_L (bvVar conv7_H) (bvVar conv8_L);
bvMul tmpLH_L (bvVar conv7_L) (bvVar conv8_H);
bvAssign mul9_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul9_H (bvVar tmp) (bvVar tmpLL_H);
(*  %conv11 = zext i64 %2 to i128 *)
bvAssign conv11_L (bvVar v2);
bvAssign conv11_H (bvConst 0);
(*  %mul12 = mul nuw i128 %conv11, %conv7 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv11_L) (bvVar conv7_L);
bvMul tmpHL_L (bvVar conv11_H) (bvVar conv7_L);
bvMul tmpLH_L (bvVar conv11_L) (bvVar conv7_H);
bvAssign mul12_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul12_H (bvVar tmp) (bvVar tmpLL_H);
(*  %conv14 = zext i64 %3 to i128 *)
bvAssign conv14_L (bvVar v3);
bvAssign conv14_H (bvConst 0);
(*  %mul15 = mul nuw i128 %conv14, %conv7 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv14_L) (bvVar conv7_L);
bvMul tmpHL_L (bvVar conv14_H) (bvVar conv7_L);
bvMul tmpLH_L (bvVar conv14_L) (bvVar conv7_H);
bvAssign mul15_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul15_H (bvVar tmp) (bvVar tmpLL_H);
(*  %conv17 = zext i64 %4 to i128 *)
bvAssign conv17_L (bvVar v4);
bvAssign conv17_H (bvConst 0);
(*  %mul18 = mul nuw i128 %conv17, %conv7 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv17_L) (bvVar conv7_L);
bvMul tmpHL_L (bvVar conv17_H) (bvVar conv7_L);
bvMul tmpLH_L (bvVar conv17_L) (bvVar conv7_H);
bvAssign mul18_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul18_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul20 = mul i64 %4, 19 *)
bvMul mul20 (bvVar v4) (bvConst 19);
(*  %conv21 = zext i64 %mul20 to i128 *)
bvAssign conv21_L (bvVar mul20);
bvAssign conv21_H (bvConst 0);
(*  %mul22 = mul nuw i128 %conv21, %conv17 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv21_L) (bvVar conv17_L);
bvMul tmpHL_L (bvVar conv21_H) (bvVar conv17_L);
bvMul tmpLH_L (bvVar conv21_L) (bvVar conv17_H);
bvAssign mul22_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul22_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul25 = mul nuw i128 %conv8, %conv8 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv8_L) (bvVar conv8_L);
bvMul tmpHL_L (bvVar conv8_H) (bvVar conv8_L);
bvMul tmpLH_L (bvVar conv8_L) (bvVar conv8_H);
bvAssign mul25_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul25_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add26 = add i128 %mul12, %mul25 *)
bvAddC carry add26_L (bvVar mul12_L) (bvVar mul25_L);
bvAdc add26_H (bvVar mul12_H) (bvVar mul25_H) carry;
(*  %mul27 = shl i64 %1, 1 *)
bvShl mul27 (bvVar v1) 1;
(*  %conv28 = zext i64 %mul27 to i128 *)
bvAssign conv28_L (bvVar mul27);
bvAssign conv28_H (bvConst 0);
(*  %mul30 = mul nuw i128 %conv28, %conv11 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv28_L) (bvVar conv11_L);
bvMul tmpHL_L (bvVar conv28_H) (bvVar conv11_L);
bvMul tmpLH_L (bvVar conv28_L) (bvVar conv11_H);
bvAssign mul30_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul30_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul34 = mul nuw i128 %conv14, %conv28 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv14_L) (bvVar conv28_L);
bvMul tmpHL_L (bvVar conv14_H) (bvVar conv28_L);
bvMul tmpLH_L (bvVar conv14_L) (bvVar conv28_H);
bvAssign mul34_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul34_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul38 = mul nuw i128 %conv21, %conv28 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv21_L) (bvVar conv28_L);
bvMul tmpHL_L (bvVar conv21_H) (bvVar conv28_L);
bvMul tmpLH_L (bvVar conv21_L) (bvVar conv28_H);
bvAssign mul38_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul38_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul41 = mul i64 %3, 19 *)
bvMul mul41 (bvVar v3) (bvConst 19);
(*  %conv42 = zext i64 %mul41 to i128 *)
bvAssign conv42_L (bvVar mul41);
bvAssign conv42_H (bvConst 0);
(*  %mul43 = mul nuw i128 %conv42, %conv14 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv42_L) (bvVar conv14_L);
bvMul tmpHL_L (bvVar conv42_H) (bvVar conv14_L);
bvMul tmpLH_L (bvVar conv42_L) (bvVar conv14_H);
bvAssign mul43_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul43_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add44 = add i128 %mul43, %mul9 *)
bvAddC carry add44_L (bvVar mul43_L) (bvVar mul9_L);
bvAdc add44_H (bvVar mul43_H) (bvVar mul9_H) carry;
(*  %mul45 = shl i64 %3, 1 *)
bvShl mul45 (bvVar v3) 1;
(*  %conv46 = zext i64 %mul45 to i128 *)
bvAssign conv46_L (bvVar mul45);
bvAssign conv46_H (bvConst 0);
(*  %mul48 = mul nuw i128 %conv21, %conv46 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv21_L) (bvVar conv46_L);
bvMul tmpHL_L (bvVar conv21_H) (bvVar conv46_L);
bvMul tmpLH_L (bvVar conv21_L) (bvVar conv46_H);
bvAssign mul48_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul48_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add49 = add i128 %add26, %mul48 *)
bvAddC carry add49_L (bvVar add26_L) (bvVar mul48_L);
bvAdc add49_H (bvVar add26_H) (bvVar mul48_H) carry;
(*  %mul52 = mul nuw i128 %conv11, %conv11 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv11_L) (bvVar conv11_L);
bvMul tmpHL_L (bvVar conv11_H) (bvVar conv11_L);
bvMul tmpLH_L (bvVar conv11_L) (bvVar conv11_H);
bvAssign mul52_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul52_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul54 = shl i64 %2, 1 *)
bvShl mul54 (bvVar v2) 1;
(*  %conv55 = zext i64 %mul54 to i128 *)
bvAssign conv55_L (bvVar mul54);
bvAssign conv55_H (bvConst 0);
(*  %mul57 = mul nuw i128 %conv42, %conv55 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv42_L) (bvVar conv55_L);
bvMul tmpHL_L (bvVar conv42_H) (bvVar conv55_L);
bvMul tmpLH_L (bvVar conv42_L) (bvVar conv55_H);
bvAssign mul57_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul57_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add39 = add i128 %mul57, %mul *)
bvAddC carry add39_L (bvVar mul57_L) (bvVar mul_L);
bvAdc add39_H (bvVar mul57_H) (bvVar mul_H) carry;
(*  %add58 = add i128 %add39, %mul38 *)
bvAddC carry add58_L (bvVar add39_L) (bvVar mul38_L);
bvAdc add58_H (bvVar add39_H) (bvVar mul38_H) carry;
(*  %mul61 = mul nuw i128 %conv21, %conv55 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv21_L) (bvVar conv55_L);
bvMul tmpHL_L (bvVar conv21_H) (bvVar conv55_L);
bvMul tmpLH_L (bvVar conv21_L) (bvVar conv55_H);
bvAssign mul61_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul61_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add62 = add i128 %add44, %mul61 *)
bvAddC carry add62_L (bvVar add44_L) (bvVar mul61_L);
bvAdc add62_H (bvVar add44_H) (bvVar mul61_H) carry;
(*  %shr = lshr i128 %add49, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add49_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add49_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv64 = and i128 %shr, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv64_L (bvVar shr_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv64_L) (bvvar shr_L);
bvAssume bveEq (bvvar conv64_L) (bvvar shr_L) | bvrTrue;
bvAndb conv64_H (bvVar shr_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv64_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv64_H) (bvconst 0) | bvrTrue;
(*  %add = add i128 %mul15, %mul30 *)
bvAddC carry add_L (bvVar mul15_L) (bvVar mul30_L);
bvAdc add_H (bvVar mul15_H) (bvVar mul30_H) carry;
(*  %add31 = add i128 %add, %mul22 *)
bvAddC carry add31_L (bvVar add_L) (bvVar mul22_L);
bvAdc add31_H (bvVar add_H) (bvVar mul22_H) carry;
(*  %add65 = add i128 %add31, %conv64 *)
bvAddC carry add65_L (bvVar add31_L) (bvVar conv64_L);
bvAdc add65_H (bvVar add31_H) (bvVar conv64_H) carry;
(*  %conv66 = trunc i128 %add49 to i64 *)
bvAssign conv66 (bvVar add49_L);
(*  %and = and i64 %conv66, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and (bvVar conv66) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr67 = lshr i128 %add58, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add58_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add58_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr67_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr67_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv69 = and i128 %shr67, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv69_L (bvVar shr67_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv69_L) (bvvar shr67_L);
bvAssume bveEq (bvvar conv69_L) (bvvar shr67_L) | bvrTrue;
bvAndb conv69_H (bvVar shr67_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv69_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv69_H) (bvconst 0) | bvrTrue;
(*  %add70 = add i128 %add62, %conv69 *)
bvAddC carry add70_L (bvVar add62_L) (bvVar conv69_L);
bvAdc add70_H (bvVar add62_H) (bvVar conv69_H) carry;
(*  %conv71 = trunc i128 %add58 to i64 *)
bvAssign conv71 (bvVar add58_L);
(*  %and72 = and i64 %conv71, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and72 (bvVar conv71) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and72) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and72) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr73 = lshr i128 %add65, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add65_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add65_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr73_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr73_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv75 = and i128 %shr73, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv75_L (bvVar shr73_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv75_L) (bvvar shr73_L);
bvAssume bveEq (bvvar conv75_L) (bvvar shr73_L) | bvrTrue;
bvAndb conv75_H (bvVar shr73_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv75_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv75_H) (bvconst 0) | bvrTrue;
(*  %add35 = add i128 %mul34, %mul52 *)
bvAddC carry add35_L (bvVar mul34_L) (bvVar mul52_L);
bvAdc add35_H (bvVar mul34_H) (bvVar mul52_H) carry;
(*  %add53 = add i128 %add35, %mul18 *)
bvAddC carry add53_L (bvVar add35_L) (bvVar mul18_L);
bvAdc add53_H (bvVar add35_H) (bvVar mul18_H) carry;
(*  %add76 = add i128 %add53, %conv75 *)
bvAddC carry add76_L (bvVar add53_L) (bvVar conv75_L);
bvAdc add76_H (bvVar add53_H) (bvVar conv75_H) carry;
(*  %conv77 = trunc i128 %add65 to i64 *)
bvAssign conv77 (bvVar add65_L);
(*  %and78 = and i64 %conv77, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and78 (bvVar conv77) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and78) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and78) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr79 = lshr i128 %add70, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add70_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add70_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr79_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr79_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv80 = trunc i128 %shr79 to i64 *)
bvAssign conv80 (bvVar shr79_L);
(*  %add81 = add i64 %conv80, %and *)
bvAdd add81 (bvVar conv80) (bvVar and);
(*  %conv82 = trunc i128 %add70 to i64 *)
bvAssign conv82 (bvVar add70_L);
(*  %and83 = and i64 %conv82, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and83 (bvVar conv82) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and83) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and83) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr84 = lshr i128 %add76, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add76_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add76_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr84_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr84_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv85 = trunc i128 %shr84 to i64 *)
bvAssign conv85 (bvVar shr84_L);
(*  %mul86 = mul i64 %conv85, 19 *)
bvMul mul86 (bvVar conv85) (bvConst 19);
(*  %add87 = add i64 %mul86, %and72 *)
bvAdd add87 (bvVar mul86) (bvVar and72);
(*  %conv88 = trunc i128 %add76 to i64 *)
bvAssign conv88 (bvVar add76_L);
(*  %and89 = and i64 %conv88, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and89 (bvVar conv88) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and89) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and89) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr90 = lshr i64 %add81, 51 *)
(* You may need to modify here *)
bvSplit shr90 tmp_to_be_used (bvVar add81) 51;
(*  %add91 = add nuw nsw i64 %shr90, %and78 *)
bvAdd add91 (bvVar shr90) (bvVar and78);
(*  %fold = add i64 %conv80, %conv66 *)
(* == modified == *)
(* bvAdd fold (bvVar conv80) (bvVar conv66); *)
bvAddC c fold (bvVar conv80) (bvVar conv66);
(*  %and92 = and i64 %fold, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and92 (bvVar fold) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and92) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and92) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr93 = lshr i64 %add87, 51 *)
(* You may need to modify here *)
bvSplit shr93 tmp_to_be_used (bvVar add87) 51;
(*  %add94 = add nuw nsw i64 %shr93, %and83 *)
bvAdd add94 (bvVar shr93) (bvVar and83);
(*  %fold180 = add i64 %mul86, %conv71 *)
(* == modified == *)
(* bvAdd fold180 (bvVar mul86) (bvVar conv71); *)
bvAddC c fold180 (bvVar mul86) (bvVar conv71);
(*  %and95 = and i64 %fold180, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and95 (bvVar fold180) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and95) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and95) (bvvar tmp_to_be_used) | bvrTrue;
(*  store i64 %and95, i64* %h, align 8, !tbaa !2 *)
bvAssign L1_0 (bvVar and95);
(*  %arrayidx97 = getelementptr inbounds i64, i64* %h, i64 1 *)
(*  store i64 %add94, i64* %arrayidx97, align 8, !tbaa !2 *)
bvAssign L1_8 (bvVar add94);
(*  %arrayidx98 = getelementptr inbounds i64, i64* %h, i64 2 *)
(*  store i64 %and92, i64* %arrayidx98, align 8, !tbaa !2 *)
bvAssign L1_16 (bvVar and92);
(*  %arrayidx99 = getelementptr inbounds i64, i64* %h, i64 3 *)
(*  store i64 %add91, i64* %arrayidx99, align 8, !tbaa !2 *)
bvAssign L1_24 (bvVar add91);
(*  %arrayidx100 = getelementptr inbounds i64, i64* %h, i64 4 *)
(*  store i64 %and89, i64* %arrayidx100, align 8, !tbaa !2 *)
bvAssign L1_32 (bvVar and89);
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
      (limbs 51 [bvvar a0, bvvar a1, bvvar a2, bvvar a3, bvvar a4])
    )

    (
      (limbs 255 [bvconst 0, bvconst 1])
      -
      (bvconst 19)
    )
  |
  bvrTrue
}
proc main (a0, a1, a2, a3, a4, b0, b1, b2, b3, b4) =
{
  bveTrue
  |
  bvrands
  [
    bvvar a0 < bvconst 64 (2^51),
    bvvar a1 < bvconst 64 (2^51),
    bvvar a2 < bvconst 64 (2^51),
    bvvar a3 < bvconst 64 (2^51),
    bvvar a4 < bvconst 64 (2^51),
    bvvar b0 < bvconst 64 (2^51),
    bvvar b1 < bvconst 64 (2^51),
    bvvar b2 < bvconst 64 (2^51),
    bvvar b3 < bvconst 64 (2^51),
    bvvar b4 < bvconst 64 (2^51)
  ]
}

bvAssign L0_0 (bvVar a0);
bvAssign L0_8 (bvVar a1);
bvAssign L0_16 (bvVar a2);
bvAssign L0_24 (bvVar a3);
bvAssign L0_32 (bvVar a4);
bvAssign L1_0 (bvVar b0);
bvAssign L1_8 (bvVar b1);
bvAssign L1_16 (bvVar b2);
bvAssign L1_24 (bvVar b3);
bvAssign L1_32 (bvVar b4);


(*  %0 = load i64, i64* %f, align 8, !tbaa !2 *)
bvAssign v0 (bvVar L0_0);
(*  %conv = zext i64 %0 to i128 *)
bvAssign conv_L (bvVar v0);
bvAssign conv_H (bvConst 0);
(*  %1 = load i64, i64* %g, align 8, !tbaa !2 *)
bvAssign v1 (bvVar L1_0);
(*  %conv2 = zext i64 %1 to i128 *)
bvAssign conv2_L (bvVar v1);
bvAssign conv2_H (bvConst 0);
(*  %mul = mul nuw i128 %conv2, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar conv2_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar conv2_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar conv2_L) (bvVar conv_H);
bvAssign mul_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul_H (bvVar tmp) (bvVar tmpLL_H);
(*  %arrayidx4 = getelementptr inbounds i64, i64* %g, i64 1 *)
(*  %2 = load i64, i64* %arrayidx4, align 8, !tbaa !2 *)
bvAssign v2 (bvVar L1_8);
(*  %conv5 = zext i64 %2 to i128 *)
bvAssign conv5_L (bvVar v2);
bvAssign conv5_H (bvConst 0);
(*  %mul6 = mul nuw i128 %conv5, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar conv5_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar conv5_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar conv5_L) (bvVar conv_H);
bvAssign mul6_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul6_H (bvVar tmp) (bvVar tmpLL_H);
(*  %arrayidx8 = getelementptr inbounds i64, i64* %g, i64 2 *)
(*  %3 = load i64, i64* %arrayidx8, align 8, !tbaa !2 *)
bvAssign v3 (bvVar L1_16);
(*  %conv9 = zext i64 %3 to i128 *)
bvAssign conv9_L (bvVar v3);
bvAssign conv9_H (bvConst 0);
(*  %mul10 = mul nuw i128 %conv9, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar conv9_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar conv9_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar conv9_L) (bvVar conv_H);
bvAssign mul10_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul10_H (bvVar tmp) (bvVar tmpLL_H);
(*  %arrayidx12 = getelementptr inbounds i64, i64* %g, i64 3 *)
(*  %4 = load i64, i64* %arrayidx12, align 8, !tbaa !2 *)
bvAssign v4 (bvVar L1_24);
(*  %conv13 = zext i64 %4 to i128 *)
bvAssign conv13_L (bvVar v4);
bvAssign conv13_H (bvConst 0);
(*  %mul14 = mul nuw i128 %conv13, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar conv13_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar conv13_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar conv13_L) (bvVar conv_H);
bvAssign mul14_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul14_H (bvVar tmp) (bvVar tmpLL_H);
(*  %arrayidx16 = getelementptr inbounds i64, i64* %g, i64 4 *)
(*  %5 = load i64, i64* %arrayidx16, align 8, !tbaa !2 *)
bvAssign v5 (bvVar L1_32);
(*  %conv17 = zext i64 %5 to i128 *)
bvAssign conv17_L (bvVar v5);
bvAssign conv17_H (bvConst 0);
(*  %mul18 = mul nuw i128 %conv17, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar conv17_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar conv17_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar conv17_L) (bvVar conv_H);
bvAssign mul18_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul18_H (bvVar tmp) (bvVar tmpLL_H);
(*  %arrayidx19 = getelementptr inbounds i64, i64* %f, i64 1 *)
(*  %6 = load i64, i64* %arrayidx19, align 8, !tbaa !2 *)
bvAssign v6 (bvVar L0_8);
(*  %conv20 = zext i64 %6 to i128 *)
bvAssign conv20_L (bvVar v6);
bvAssign conv20_H (bvConst 0);
(*  %mul21 = mul i64 %5, 19 *)
bvMul mul21 (bvVar v5) (bvConst 19);
(*  %conv22 = zext i64 %mul21 to i128 *)
bvAssign conv22_L (bvVar mul21);
bvAssign conv22_H (bvConst 0);
(*  %mul23 = mul nuw i128 %conv20, %conv22 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv20_L) (bvVar conv22_L);
bvMul tmpHL_L (bvVar conv20_H) (bvVar conv22_L);
bvMul tmpLH_L (bvVar conv20_L) (bvVar conv22_H);
bvAssign mul23_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul23_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add = add i128 %mul23, %mul *)
bvAddC carry add_L (bvVar mul23_L) (bvVar mul_L);
bvAdc add_H (bvVar mul23_H) (bvVar mul_H) carry;
(*  %mul26 = mul nuw i128 %conv20, %conv2 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv20_L) (bvVar conv2_L);
bvMul tmpHL_L (bvVar conv20_H) (bvVar conv2_L);
bvMul tmpLH_L (bvVar conv20_L) (bvVar conv2_H);
bvAssign mul26_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul26_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add27 = add i128 %mul26, %mul6 *)
bvAddC carry add27_L (bvVar mul26_L) (bvVar mul6_L);
bvAdc add27_H (bvVar mul26_H) (bvVar mul6_H) carry;
(*  %mul30 = mul nuw i128 %conv20, %conv5 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv20_L) (bvVar conv5_L);
bvMul tmpHL_L (bvVar conv20_H) (bvVar conv5_L);
bvMul tmpLH_L (bvVar conv20_L) (bvVar conv5_H);
bvAssign mul30_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul30_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add31 = add i128 %mul30, %mul10 *)
bvAddC carry add31_L (bvVar mul30_L) (bvVar mul10_L);
bvAdc add31_H (bvVar mul30_H) (bvVar mul10_H) carry;
(*  %mul34 = mul nuw i128 %conv20, %conv9 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv20_L) (bvVar conv9_L);
bvMul tmpHL_L (bvVar conv20_H) (bvVar conv9_L);
bvMul tmpLH_L (bvVar conv20_L) (bvVar conv9_H);
bvAssign mul34_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul34_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add35 = add i128 %mul34, %mul14 *)
bvAddC carry add35_L (bvVar mul34_L) (bvVar mul14_L);
bvAdc add35_H (bvVar mul34_H) (bvVar mul14_H) carry;
(*  %mul38 = mul nuw i128 %conv20, %conv13 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv20_L) (bvVar conv13_L);
bvMul tmpHL_L (bvVar conv20_H) (bvVar conv13_L);
bvMul tmpLH_L (bvVar conv20_L) (bvVar conv13_H);
bvAssign mul38_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul38_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add39 = add i128 %mul38, %mul18 *)
bvAddC carry add39_L (bvVar mul38_L) (bvVar mul18_L);
bvAdc add39_H (bvVar mul38_H) (bvVar mul18_H) carry;
(*  %arrayidx40 = getelementptr inbounds i64, i64* %f, i64 2 *)
(*  %7 = load i64, i64* %arrayidx40, align 8, !tbaa !2 *)
bvAssign v7 (bvVar L0_16);
(*  %conv41 = zext i64 %7 to i128 *)
bvAssign conv41_L (bvVar v7);
bvAssign conv41_H (bvConst 0);
(*  %mul42 = mul i64 %4, 19 *)
bvMul mul42 (bvVar v4) (bvConst 19);
(*  %conv43 = zext i64 %mul42 to i128 *)
bvAssign conv43_L (bvVar mul42);
bvAssign conv43_H (bvConst 0);
(*  %mul44 = mul nuw i128 %conv41, %conv43 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv41_L) (bvVar conv43_L);
bvMul tmpHL_L (bvVar conv41_H) (bvVar conv43_L);
bvMul tmpLH_L (bvVar conv41_L) (bvVar conv43_H);
bvAssign mul44_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul44_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add45 = add i128 %add, %mul44 *)
bvAddC carry add45_L (bvVar add_L) (bvVar mul44_L);
bvAdc add45_H (bvVar add_H) (bvVar mul44_H) carry;
(*  %mul48 = mul nuw i128 %conv41, %conv22 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv41_L) (bvVar conv22_L);
bvMul tmpHL_L (bvVar conv41_H) (bvVar conv22_L);
bvMul tmpLH_L (bvVar conv41_L) (bvVar conv22_H);
bvAssign mul48_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul48_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add49 = add i128 %add27, %mul48 *)
bvAddC carry add49_L (bvVar add27_L) (bvVar mul48_L);
bvAdc add49_H (bvVar add27_H) (bvVar mul48_H) carry;
(*  %mul52 = mul nuw i128 %conv41, %conv2 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv41_L) (bvVar conv2_L);
bvMul tmpHL_L (bvVar conv41_H) (bvVar conv2_L);
bvMul tmpLH_L (bvVar conv41_L) (bvVar conv2_H);
bvAssign mul52_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul52_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add53 = add i128 %add31, %mul52 *)
bvAddC carry add53_L (bvVar add31_L) (bvVar mul52_L);
bvAdc add53_H (bvVar add31_H) (bvVar mul52_H) carry;
(*  %mul56 = mul nuw i128 %conv41, %conv5 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv41_L) (bvVar conv5_L);
bvMul tmpHL_L (bvVar conv41_H) (bvVar conv5_L);
bvMul tmpLH_L (bvVar conv41_L) (bvVar conv5_H);
bvAssign mul56_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul56_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add57 = add i128 %add35, %mul56 *)
bvAddC carry add57_L (bvVar add35_L) (bvVar mul56_L);
bvAdc add57_H (bvVar add35_H) (bvVar mul56_H) carry;
(*  %mul60 = mul nuw i128 %conv41, %conv9 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv41_L) (bvVar conv9_L);
bvMul tmpHL_L (bvVar conv41_H) (bvVar conv9_L);
bvMul tmpLH_L (bvVar conv41_L) (bvVar conv9_H);
bvAssign mul60_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul60_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add61 = add i128 %add39, %mul60 *)
bvAddC carry add61_L (bvVar add39_L) (bvVar mul60_L);
bvAdc add61_H (bvVar add39_H) (bvVar mul60_H) carry;
(*  %arrayidx62 = getelementptr inbounds i64, i64* %f, i64 3 *)
(*  %8 = load i64, i64* %arrayidx62, align 8, !tbaa !2 *)
bvAssign v8 (bvVar L0_24);
(*  %conv63 = zext i64 %8 to i128 *)
bvAssign conv63_L (bvVar v8);
bvAssign conv63_H (bvConst 0);
(*  %mul64 = mul i64 %3, 19 *)
bvMul mul64 (bvVar v3) (bvConst 19);
(*  %conv65 = zext i64 %mul64 to i128 *)
bvAssign conv65_L (bvVar mul64);
bvAssign conv65_H (bvConst 0);
(*  %mul66 = mul nuw i128 %conv63, %conv65 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv63_L) (bvVar conv65_L);
bvMul tmpHL_L (bvVar conv63_H) (bvVar conv65_L);
bvMul tmpLH_L (bvVar conv63_L) (bvVar conv65_H);
bvAssign mul66_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul66_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add67 = add i128 %add45, %mul66 *)
bvAddC carry add67_L (bvVar add45_L) (bvVar mul66_L);
bvAdc add67_H (bvVar add45_H) (bvVar mul66_H) carry;
(*  %mul70 = mul nuw i128 %conv63, %conv43 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv63_L) (bvVar conv43_L);
bvMul tmpHL_L (bvVar conv63_H) (bvVar conv43_L);
bvMul tmpLH_L (bvVar conv63_L) (bvVar conv43_H);
bvAssign mul70_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul70_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add71 = add i128 %add49, %mul70 *)
bvAddC carry add71_L (bvVar add49_L) (bvVar mul70_L);
bvAdc add71_H (bvVar add49_H) (bvVar mul70_H) carry;
(*  %mul74 = mul nuw i128 %conv63, %conv22 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv63_L) (bvVar conv22_L);
bvMul tmpHL_L (bvVar conv63_H) (bvVar conv22_L);
bvMul tmpLH_L (bvVar conv63_L) (bvVar conv22_H);
bvAssign mul74_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul74_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add75 = add i128 %add53, %mul74 *)
bvAddC carry add75_L (bvVar add53_L) (bvVar mul74_L);
bvAdc add75_H (bvVar add53_H) (bvVar mul74_H) carry;
(*  %mul78 = mul nuw i128 %conv63, %conv2 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv63_L) (bvVar conv2_L);
bvMul tmpHL_L (bvVar conv63_H) (bvVar conv2_L);
bvMul tmpLH_L (bvVar conv63_L) (bvVar conv2_H);
bvAssign mul78_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul78_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add79 = add i128 %add57, %mul78 *)
bvAddC carry add79_L (bvVar add57_L) (bvVar mul78_L);
bvAdc add79_H (bvVar add57_H) (bvVar mul78_H) carry;
(*  %mul82 = mul nuw i128 %conv63, %conv5 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv63_L) (bvVar conv5_L);
bvMul tmpHL_L (bvVar conv63_H) (bvVar conv5_L);
bvMul tmpLH_L (bvVar conv63_L) (bvVar conv5_H);
bvAssign mul82_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul82_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add83 = add i128 %add61, %mul82 *)
bvAddC carry add83_L (bvVar add61_L) (bvVar mul82_L);
bvAdc add83_H (bvVar add61_H) (bvVar mul82_H) carry;
(*  %arrayidx84 = getelementptr inbounds i64, i64* %f, i64 4 *)
(*  %9 = load i64, i64* %arrayidx84, align 8, !tbaa !2 *)
bvAssign v9 (bvVar L0_32);
(*  %conv85 = zext i64 %9 to i128 *)
bvAssign conv85_L (bvVar v9);
bvAssign conv85_H (bvConst 0);
(*  %mul86 = mul i64 %2, 19 *)
bvMul mul86 (bvVar v2) (bvConst 19);
(*  %conv87 = zext i64 %mul86 to i128 *)
bvAssign conv87_L (bvVar mul86);
bvAssign conv87_H (bvConst 0);
(*  %mul88 = mul nuw i128 %conv85, %conv87 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv85_L) (bvVar conv87_L);
bvMul tmpHL_L (bvVar conv85_H) (bvVar conv87_L);
bvMul tmpLH_L (bvVar conv85_L) (bvVar conv87_H);
bvAssign mul88_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul88_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add89 = add i128 %add67, %mul88 *)
bvAddC carry add89_L (bvVar add67_L) (bvVar mul88_L);
bvAdc add89_H (bvVar add67_H) (bvVar mul88_H) carry;
(*  %mul92 = mul nuw i128 %conv85, %conv65 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv85_L) (bvVar conv65_L);
bvMul tmpHL_L (bvVar conv85_H) (bvVar conv65_L);
bvMul tmpLH_L (bvVar conv85_L) (bvVar conv65_H);
bvAssign mul92_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul92_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add93 = add i128 %add71, %mul92 *)
bvAddC carry add93_L (bvVar add71_L) (bvVar mul92_L);
bvAdc add93_H (bvVar add71_H) (bvVar mul92_H) carry;
(*  %mul96 = mul nuw i128 %conv85, %conv43 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv85_L) (bvVar conv43_L);
bvMul tmpHL_L (bvVar conv85_H) (bvVar conv43_L);
bvMul tmpLH_L (bvVar conv85_L) (bvVar conv43_H);
bvAssign mul96_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul96_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add97 = add i128 %add75, %mul96 *)
bvAddC carry add97_L (bvVar add75_L) (bvVar mul96_L);
bvAdc add97_H (bvVar add75_H) (bvVar mul96_H) carry;
(*  %mul100 = mul nuw i128 %conv85, %conv22 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv85_L) (bvVar conv22_L);
bvMul tmpHL_L (bvVar conv85_H) (bvVar conv22_L);
bvMul tmpLH_L (bvVar conv85_L) (bvVar conv22_H);
bvAssign mul100_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul100_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add101 = add i128 %add79, %mul100 *)
bvAddC carry add101_L (bvVar add79_L) (bvVar mul100_L);
bvAdc add101_H (bvVar add79_H) (bvVar mul100_H) carry;
(*  %mul104 = mul nuw i128 %conv85, %conv2 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv85_L) (bvVar conv2_L);
bvMul tmpHL_L (bvVar conv85_H) (bvVar conv2_L);
bvMul tmpLH_L (bvVar conv85_L) (bvVar conv2_H);
bvAssign mul104_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul104_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add105 = add i128 %add83, %mul104 *)
bvAddC carry add105_L (bvVar add83_L) (bvVar mul104_L);
bvAdc add105_H (bvVar add83_H) (bvVar mul104_H) carry;
(*  %shr = lshr i128 %add97, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add97_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add97_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv107 = and i128 %shr, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv107_L (bvVar shr_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv107_L) (bvvar shr_L);
bvAssume bveEq (bvvar conv107_L) (bvvar shr_L) | bvrTrue;
bvAndb conv107_H (bvVar shr_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv107_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv107_H) (bvconst 0) | bvrTrue;
(*  %add108 = add i128 %add101, %conv107 *)
bvAddC carry add108_L (bvVar add101_L) (bvVar conv107_L);
bvAdc add108_H (bvVar add101_H) (bvVar conv107_H) carry;
(*  %conv109 = trunc i128 %add97 to i64 *)
bvAssign conv109 (bvVar add97_L);
(*  %and = and i64 %conv109, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and (bvVar conv109) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr110 = lshr i128 %add89, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add89_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add89_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr110_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr110_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv112 = and i128 %shr110, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv112_L (bvVar shr110_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv112_L) (bvvar shr110_L);
bvAssume bveEq (bvvar conv112_L) (bvvar shr110_L) | bvrTrue;
bvAndb conv112_H (bvVar shr110_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv112_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv112_H) (bvconst 0) | bvrTrue;
(*  %add113 = add i128 %add93, %conv112 *)
bvAddC carry add113_L (bvVar add93_L) (bvVar conv112_L);
bvAdc add113_H (bvVar add93_H) (bvVar conv112_H) carry;
(*  %conv114 = trunc i128 %add89 to i64 *)
bvAssign conv114 (bvVar add89_L);
(*  %and115 = and i64 %conv114, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and115 (bvVar conv114) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and115) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and115) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr116 = lshr i128 %add108, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add108_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add108_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr116_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr116_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv118 = and i128 %shr116, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv118_L (bvVar shr116_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv118_L) (bvvar shr116_L);
bvAssume bveEq (bvvar conv118_L) (bvvar shr116_L) | bvrTrue;
bvAndb conv118_H (bvVar shr116_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv118_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv118_H) (bvconst 0) | bvrTrue;
(*  %add119 = add i128 %add105, %conv118 *)
bvAddC carry add119_L (bvVar add105_L) (bvVar conv118_L);
bvAdc add119_H (bvVar add105_H) (bvVar conv118_H) carry;
(*  %conv120 = trunc i128 %add108 to i64 *)
bvAssign conv120 (bvVar add108_L);
(*  %and121 = and i64 %conv120, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and121 (bvVar conv120) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and121) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and121) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr122 = lshr i128 %add113, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add113_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add113_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr122_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr122_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv123 = trunc i128 %shr122 to i64 *)
bvAssign conv123 (bvVar shr122_L);
(*  %add124 = add i64 %conv123, %and *)
bvAdd add124 (bvVar conv123) (bvVar and);
(*  %conv125 = trunc i128 %add113 to i64 *)
bvAssign conv125 (bvVar add113_L);
(*  %and126 = and i64 %conv125, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and126 (bvVar conv125) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and126) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and126) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr127 = lshr i128 %add119, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add119_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add119_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr127_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr127_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv128 = trunc i128 %shr127 to i64 *)
bvAssign conv128 (bvVar shr127_L);
(*  %mul129 = mul i64 %conv128, 19 *)
bvMul mul129 (bvVar conv128) (bvConst 19);
(*  %add130 = add i64 %mul129, %and115 *)
bvAdd add130 (bvVar mul129) (bvVar and115);
(*  %conv131 = trunc i128 %add119 to i64 *)
bvAssign conv131 (bvVar add119_L);
(*  %and132 = and i64 %conv131, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and132 (bvVar conv131) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and132) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and132) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr133 = lshr i64 %add124, 51 *)
(* You may need to modify here *)
bvSplit shr133 tmp_to_be_used (bvVar add124) 51;
(*  %add134 = add nuw nsw i64 %shr133, %and121 *)
bvAdd add134 (bvVar shr133) (bvVar and121);
(*  %fold = add i64 %conv123, %conv109 *)
(* == modified == *)
(* bvAdd fold (bvVar conv123) (bvVar conv109); *)
bvAddC c fold (bvVar conv123) (bvVar conv109);
(*  %and135 = and i64 %fold, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and135 (bvVar fold) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and135) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and135) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr136 = lshr i64 %add130, 51 *)
(* You may need to modify here *)
bvSplit shr136 tmp_to_be_used (bvVar add130) 51;
(*  %add137 = add nuw nsw i64 %shr136, %and126 *)
bvAdd add137 (bvVar shr136) (bvVar and126);
(*  %fold247 = add i64 %mul129, %conv114 *)
(* == modified == *)
(* bvAdd fold247 (bvVar mul129) (bvVar conv114); *)
bvAddC c fold247 (bvVar mul129) (bvVar conv114);
(*  %and138 = and i64 %fold247, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and138 (bvVar fold247) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and138) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and138) (bvvar tmp_to_be_used) | bvrTrue;
(*  store i64 %and138, i64* %h, align 8, !tbaa !2 *)
bvAssign L2_0 (bvVar and138);
(*  %arrayidx140 = getelementptr inbounds i64, i64* %h, i64 1 *)
(*  store i64 %add137, i64* %arrayidx140, align 8, !tbaa !2 *)
bvAssign L2_8 (bvVar add137);
(*  %arrayidx141 = getelementptr inbounds i64, i64* %h, i64 2 *)
(*  store i64 %and135, i64* %arrayidx141, align 8, !tbaa !2 *)
bvAssign L2_16 (bvVar and135);
(*  %arrayidx142 = getelementptr inbounds i64, i64* %h, i64 3 *)
(*  store i64 %add134, i64* %arrayidx142, align 8, !tbaa !2 *)
bvAssign L2_24 (bvVar add134);
(*  %arrayidx143 = getelementptr inbounds i64, i64* %h, i64 4 *)
(*  store i64 %and132, i64* %arrayidx143, align 8, !tbaa !2 *)
bvAssign L2_32 (bvVar and132);
(*  ret void *)


bvAssign c0 (bvVar L2_0);
bvAssign c1 (bvVar L2_8);
bvAssign c2 (bvVar L2_16);
bvAssign c3 (bvVar L2_24);
bvAssign c4 (bvVar L2_32);


{
  bveEqMod
    (limbs 51 [bvvar c0, bvvar c1, bvvar c2, bvvar c3, bvvar c4])

    (
      (limbs 51 [bvvar a0, bvvar a1, bvvar a2, bvvar a3, bvvar a4])
      *
      (limbs 51 [bvvar b0, bvvar b1, bvvar b2, bvvar b3, bvvar b4])
    )

    (
      (limbs 255 [bvconst 0, bvconst 1])
      -
      (bvconst 19)
    )
  |
  bvrTrue
}


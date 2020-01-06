proc fe51_mul (a0, a1, a2, a3, a4, b0, b1, b2, b3, b4; c0, c1, c2, c3, c4) =

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



(* ================== ladder step =================== *)

proc main (X1|0..4, X2|0..4, Z2|0..4, X3|0..4, Z3|0..4) =
{
  bveTrue
  |
  bvrands [
    (bvrvar X1_0) <= (bvrconst 64 (2^51)),
    (bvrvar X1_1) <= (bvrconst 64 (2^51)),
    (bvrvar X1_2) <= (bvrconst 64 (2^51)),
    (bvrvar X1_3) <= (bvrconst 64 (2^51)),
    (bvrvar X1_4) <= (bvrconst 64 (2^51)),
    (bvrvar X2_0) <= (bvrconst 64 (2^51)),
    (bvrvar X2_1) <= (bvrconst 64 (2^51)),
    (bvrvar X2_2) <= (bvrconst 64 (2^51)),
    (bvrvar X2_3) <= (bvrconst 64 (2^51)),
    (bvrvar X2_4) <= (bvrconst 64 (2^51)),
    (bvrvar Z2_0) <= (bvrconst 64 (2^51)),
    (bvrvar Z2_1) <= (bvrconst 64 (2^51)),
    (bvrvar Z2_2) <= (bvrconst 64 (2^51)),
    (bvrvar Z2_3) <= (bvrconst 64 (2^51)),
    (bvrvar Z2_4) <= (bvrconst 64 (2^51)),
    (bvrvar X3_0) <= (bvrconst 64 (2^51)),
    (bvrvar X3_1) <= (bvrconst 64 (2^51)),
    (bvrvar X3_2) <= (bvrconst 64 (2^51)),
    (bvrvar X3_3) <= (bvrconst 64 (2^51)),
    (bvrvar X3_4) <= (bvrconst 64 (2^51)),
    (bvrvar Z3_0) <= (bvrconst 64 (2^51)),
    (bvrvar Z3_1) <= (bvrconst 64 (2^51)),
    (bvrvar Z3_2) <= (bvrconst 64 (2^51)),
    (bvrvar Z3_3) <= (bvrconst 64 (2^51)),
    (bvrvar Z3_4) <= (bvrconst 64 (2^51))
  ]
}

bvAssign arraydecay_0 (bvVar X1_0);
bvAssign arraydecay_8 (bvVar X1_1);
bvAssign arraydecay_16 (bvVar X1_2);
bvAssign arraydecay_24 (bvVar X1_3);
bvAssign arraydecay_32 (bvVar X1_4);
bvAssign xor6_i (bvVar X2_0);
bvAssign xor6_1_i (bvVar X2_1);
bvAssign xor6_2_i (bvVar X2_2);
bvAssign xor6_3_i (bvVar X2_3);
bvAssign xor6_4_i (bvVar X2_4);
bvAssign xor6_i_107 (bvVar Z2_0);
bvAssign xor6_1_i_113 (bvVar Z2_1);
bvAssign xor6_2_i_119 (bvVar Z2_2);
bvAssign xor6_3_i_125 (bvVar Z2_3);
bvAssign xor6_4_i_131 (bvVar Z2_4);
bvAssign xor9_i (bvVar X3_0);
bvAssign xor9_1_i (bvVar X3_1);
bvAssign xor9_2_i (bvVar X3_2);
bvAssign xor9_3_i (bvVar X3_3);
bvAssign xor9_4_i (bvVar X3_4);
bvAssign xor9_i_108 (bvVar Z3_0);
bvAssign xor9_1_i_114 (bvVar Z3_1);
bvAssign xor9_2_i_120 (bvVar Z3_2);
bvAssign xor9_3_i_126 (bvVar Z3_3);
bvAssign xor9_4_i_132 (bvVar Z3_4);


(*  %add.i.133 = add i64 %xor9.i, 4503599627370458 *)
bvAdd add_i_133 (bvVar xor9_i) (bvConst 4503599627370458);
(*  %sub.i.134 = sub i64 %add.i.133, %xor9.i.108 *)
bvSub sub_i_134 (bvVar add_i_133) (bvVar xor9_i_108);
(*  store i64 %sub.i.134, i64* %arraydecay23, align 16, !tbaa !5 *)
bvAssign L6_0 (bvVar sub_i_134);
(*  %add4.i = add i64 %xor9.1.i, 4503599627370494 *)
bvAdd add4_i (bvVar xor9_1_i) (bvConst 4503599627370494);
(*  %sub6.i = sub i64 %add4.i, %xor9.1.i.114 *)
bvSub sub6_i (bvVar add4_i) (bvVar xor9_1_i_114);
(*  store i64 %sub6.i, i64* %arrayidx7.i.137, align 8, !tbaa !5 *)
bvAssign L7_0 (bvVar sub6_i);
(*  %add9.i.139 = add i64 %xor9.2.i, 4503599627370494 *)
bvAdd add9_i_139 (bvVar xor9_2_i) (bvConst 4503599627370494);
(*  %sub11.i = sub i64 %add9.i.139, %xor9.2.i.120 *)
bvSub sub11_i (bvVar add9_i_139) (bvVar xor9_2_i_120);
(*  store i64 %sub11.i, i64* %arrayidx12.i, align 16, !tbaa !5 *)
bvAssign L8_0 (bvVar sub11_i);
(*  %add14.i = add i64 %xor9.3.i, 4503599627370494 *)
bvAdd add14_i (bvVar xor9_3_i) (bvConst 4503599627370494);
(*  %sub16.i = sub i64 %add14.i, %xor9.3.i.126 *)
bvSub sub16_i (bvVar add14_i) (bvVar xor9_3_i_126);
(*  store i64 %sub16.i, i64* %arrayidx17.i, align 8, !tbaa !5 *)
bvAssign L9_0 (bvVar sub16_i);
(*  %add19.i = add i64 %xor9.4.i, 4503599627370494 *)
bvAdd add19_i (bvVar xor9_4_i) (bvConst 4503599627370494);
(*  %sub21.i = sub i64 %add19.i, %xor9.4.i.132 *)
bvSub sub21_i (bvVar add19_i) (bvVar xor9_4_i_132);
(*  store i64 %sub21.i, i64* %arrayidx22.i.140, align 16, !tbaa !5 *)
bvAssign L10_0 (bvVar sub21_i);
(*  %add.i.141 = add i64 %xor6.i, 4503599627370458 *)
bvAdd add_i_141 (bvVar xor6_i) (bvConst 4503599627370458);
(*  %sub.i.142 = sub i64 %add.i.141, %xor6.i.107 *)
bvSub sub_i_142 (bvVar add_i_141) (bvVar xor6_i_107);
(*  store i64 %sub.i.142, i64* %arraydecay26, align 16, !tbaa !5 *)
bvAssign L11_0 (bvVar sub_i_142);
(*  %add4.i.144 = add i64 %xor6.1.i, 4503599627370494 *)
bvAdd add4_i_144 (bvVar xor6_1_i) (bvConst 4503599627370494);
(*  %sub6.i.146 = sub i64 %add4.i.144, %xor6.1.i.113 *)
bvSub sub6_i_146 (bvVar add4_i_144) (bvVar xor6_1_i_113);
(*  store i64 %sub6.i.146, i64* %arrayidx7.i.147, align 8, !tbaa !5 *)
bvAssign L12_0 (bvVar sub6_i_146);
(*  %add9.i.149 = add i64 %xor6.2.i, 4503599627370494 *)
bvAdd add9_i_149 (bvVar xor6_2_i) (bvConst 4503599627370494);
(*  %sub11.i.151 = sub i64 %add9.i.149, %xor6.2.i.119 *)
bvSub sub11_i_151 (bvVar add9_i_149) (bvVar xor6_2_i_119);
(*  store i64 %sub11.i.151, i64* %arrayidx12.i.152, align 16, !tbaa !5 *)
bvAssign L13_0 (bvVar sub11_i_151);
(*  %add14.i.154 = add i64 %xor6.3.i, 4503599627370494 *)
bvAdd add14_i_154 (bvVar xor6_3_i) (bvConst 4503599627370494);
(*  %sub16.i.156 = sub i64 %add14.i.154, %xor6.3.i.125 *)
bvSub sub16_i_156 (bvVar add14_i_154) (bvVar xor6_3_i_125);
(*  store i64 %sub16.i.156, i64* %arrayidx17.i.157, align 8, !tbaa !5 *)
bvAssign L14_0 (bvVar sub16_i_156);
(*  %add19.i.159 = add i64 %xor6.4.i, 4503599627370494 *)
bvAdd add19_i_159 (bvVar xor6_4_i) (bvConst 4503599627370494);
(*  %sub21.i.161 = sub i64 %add19.i.159, %xor6.4.i.131 *)
bvSub sub21_i_161 (bvVar add19_i_159) (bvVar xor6_4_i_131);
(*  store i64 %sub21.i.161, i64* %arrayidx22.i.162, align 16, !tbaa !5 *)
bvAssign L15_0 (bvVar sub21_i_161);
(*  %add.i.163 = add i64 %xor6.i.107, %xor6.i *)
bvAdd add_i_163 (bvVar xor6_i_107) (bvVar xor6_i);
(*  store i64 %add.i.163, i64* %arraydecay9, align 16, !tbaa !5 *)
bvAssign L16_0 (bvVar add_i_163);
(*  %add5.i.166 = add i64 %xor6.1.i.113, %xor6.1.i *)
bvAdd add5_i_166 (bvVar xor6_1_i_113) (bvVar xor6_1_i);
(*  store i64 %add5.i.166, i64* %arrayidx1.i.92, align 8, !tbaa !5 *)
bvAssign L17_0 (bvVar add5_i_166);
(*  %add9.i.170 = add i64 %xor6.2.i.119, %xor6.2.i *)
bvAdd add9_i_170 (bvVar xor6_2_i_119) (bvVar xor6_2_i);
(*  store i64 %add9.i.170, i64* %arrayidx.2.i, align 16, !tbaa !5 *)
bvAssign L18_0 (bvVar add9_i_170);
(*  %add13.i.173 = add i64 %xor6.3.i.125, %xor6.3.i *)
bvAdd add13_i_173 (bvVar xor6_3_i_125) (bvVar xor6_3_i);
(*  store i64 %add13.i.173, i64* %arrayidx.3.i, align 8, !tbaa !5 *)
bvAssign L19_0 (bvVar add13_i_173);
(*  %add17.i.175 = add i64 %xor6.4.i.131, %xor6.4.i *)
bvAdd add17_i_175 (bvVar xor6_4_i_131) (bvVar xor6_4_i);
(*  store i64 %add17.i.175, i64* %arrayidx.4.i, align 16, !tbaa !5 *)
bvAssign L20_0 (bvVar add17_i_175);
(*  %add.i.177 = add i64 %xor9.i.108, %xor9.i *)
bvAdd add_i_177 (bvVar xor9_i_108) (bvVar xor9_i);
(*  store i64 %add.i.177, i64* %arraydecay10, align 16, !tbaa !5 *)
bvAssign L21_0 (bvVar add_i_177);
(*  %add5.i.180 = add i64 %xor9.1.i.114, %xor9.1.i *)
bvAdd add5_i_180 (bvVar xor9_1_i_114) (bvVar xor9_1_i);
(*  store i64 %add5.i.180, i64* %arrayidx.1.i.109, align 8, !tbaa !5 *)
bvAssign L22_0 (bvVar add5_i_180);
(*  %add9.i.184 = add i64 %xor9.2.i.120, %xor9.2.i *)
bvAdd add9_i_184 (bvVar xor9_2_i_120) (bvVar xor9_2_i);
(*  store i64 %add9.i.184, i64* %arrayidx.2.i.115, align 16, !tbaa !5 *)
bvAssign L23_0 (bvVar add9_i_184);
(*  %add13.i.188 = add i64 %xor9.3.i.126, %xor9.3.i *)
bvAdd add13_i_188 (bvVar xor9_3_i_126) (bvVar xor9_3_i);
(*  store i64 %add13.i.188, i64* %arrayidx.3.i.121, align 8, !tbaa !5 *)
bvAssign L24_0 (bvVar add13_i_188);
(*  %add17.i.192 = add i64 %xor9.4.i.132, %xor9.4.i *)
bvAdd add17_i_192 (bvVar xor9_4_i_132) (bvVar xor9_4_i);
(*  store i64 %add17.i.192, i64* %arrayidx.4.i.127, align 16, !tbaa !5 *)
bvAssign L25_0 (bvVar add17_i_192);
(*  call fastcc void @fe51_mul(i64* %arraydecay13, i64* %arraydecay23, i64* %arraydecay9) *)
(* == modified == *)
call fe51_mul(L6_0, L7_0, L8_0, L9_0, L10_0, L16_0, L17_0, L18_0, L19_0, L20_0, L1_0, L2_0, L3_0, L4_0, L5_0);
(*  call fastcc void @fe51_mul(i64* %arraydecay10, i64* %arraydecay10, i64* %arraydecay26) *)
(* == modified == *)
call fe51_mul(L21_0, L22_0, L23_0, L24_0, L25_0, L11_0, L12_0, L13_0, L14_0, L15_0, L21_0, L22_0, L23_0, L24_0, L25_0);
(*  %conv.i.198 = zext i64 %sub.i.142 to i128 *)
bvAssign conv_i_198_L (bvVar sub_i_142);
bvAssign conv_i_198_H (bvConst 0);
(*  %mul.i.199 = mul nuw i128 %conv.i.198, %conv.i.198 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv_i_198_L) (bvVar conv_i_198_L);
bvMul tmpHL_L (bvVar conv_i_198_H) (bvVar conv_i_198_L);
bvMul tmpLH_L (bvVar conv_i_198_L) (bvVar conv_i_198_H);
bvAssign mul_i_199_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul_i_199_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul6.i = shl i64 %sub.i.142, 1 *)
bvShl mul6_i (bvVar sub_i_142) 1;
(*  %conv7.i = zext i64 %mul6.i to i128 *)
bvAssign conv7_i_L (bvVar mul6_i);
bvAssign conv7_i_H (bvConst 0);
(*  %conv8.i = zext i64 %sub6.i.146 to i128 *)
bvAssign conv8_i_L (bvVar sub6_i_146);
bvAssign conv8_i_H (bvConst 0);
(*  %mul9.i = mul nuw i128 %conv7.i, %conv8.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv7_i_L) (bvVar conv8_i_L);
bvMul tmpHL_L (bvVar conv7_i_H) (bvVar conv8_i_L);
bvMul tmpLH_L (bvVar conv7_i_L) (bvVar conv8_i_H);
bvAssign mul9_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul9_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %conv11.i = zext i64 %sub11.i.151 to i128 *)
bvAssign conv11_i_L (bvVar sub11_i_151);
bvAssign conv11_i_H (bvConst 0);
(*  %mul12.i = mul nuw i128 %conv11.i, %conv7.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv11_i_L) (bvVar conv7_i_L);
bvMul tmpHL_L (bvVar conv11_i_H) (bvVar conv7_i_L);
bvMul tmpLH_L (bvVar conv11_i_L) (bvVar conv7_i_H);
bvAssign mul12_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul12_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %conv14.i = zext i64 %sub16.i.156 to i128 *)
bvAssign conv14_i_L (bvVar sub16_i_156);
bvAssign conv14_i_H (bvConst 0);
(*  %mul15.i = mul nuw i128 %conv14.i, %conv7.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv14_i_L) (bvVar conv7_i_L);
bvMul tmpHL_L (bvVar conv14_i_H) (bvVar conv7_i_L);
bvMul tmpLH_L (bvVar conv14_i_L) (bvVar conv7_i_H);
bvAssign mul15_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul15_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %conv17.i = zext i64 %sub21.i.161 to i128 *)
bvAssign conv17_i_L (bvVar sub21_i_161);
bvAssign conv17_i_H (bvConst 0);
(*  %mul18.i = mul nuw i128 %conv17.i, %conv7.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv17_i_L) (bvVar conv7_i_L);
bvMul tmpHL_L (bvVar conv17_i_H) (bvVar conv7_i_L);
bvMul tmpLH_L (bvVar conv17_i_L) (bvVar conv7_i_H);
bvAssign mul18_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul18_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul20.i = mul i64 %sub21.i.161, 19 *)
bvMul mul20_i (bvVar sub21_i_161) (bvConst 19);
(*  %conv21.i = zext i64 %mul20.i to i128 *)
bvAssign conv21_i_L (bvVar mul20_i);
bvAssign conv21_i_H (bvConst 0);
(*  %mul22.i = mul nuw i128 %conv21.i, %conv17.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv21_i_L) (bvVar conv17_i_L);
bvMul tmpHL_L (bvVar conv21_i_H) (bvVar conv17_i_L);
bvMul tmpLH_L (bvVar conv21_i_L) (bvVar conv17_i_H);
bvAssign mul22_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul22_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul25.i = mul nuw i128 %conv8.i, %conv8.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv8_i_L) (bvVar conv8_i_L);
bvMul tmpHL_L (bvVar conv8_i_H) (bvVar conv8_i_L);
bvMul tmpLH_L (bvVar conv8_i_L) (bvVar conv8_i_H);
bvAssign mul25_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul25_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add26.i = add i128 %mul12.i, %mul25.i *)
bvAddC carry add26_i_L (bvVar mul12_i_L) (bvVar mul25_i_L);
bvAdc add26_i_H (bvVar mul12_i_H) (bvVar mul25_i_H) carry;
(*  %mul27.i = shl i64 %sub6.i.146, 1 *)
bvShl mul27_i (bvVar sub6_i_146) 1;
(*  %conv28.i = zext i64 %mul27.i to i128 *)
bvAssign conv28_i_L (bvVar mul27_i);
bvAssign conv28_i_H (bvConst 0);
(*  %mul30.i = mul nuw i128 %conv28.i, %conv11.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv28_i_L) (bvVar conv11_i_L);
bvMul tmpHL_L (bvVar conv28_i_H) (bvVar conv11_i_L);
bvMul tmpLH_L (bvVar conv28_i_L) (bvVar conv11_i_H);
bvAssign mul30_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul30_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul34.i = mul nuw i128 %conv14.i, %conv28.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv14_i_L) (bvVar conv28_i_L);
bvMul tmpHL_L (bvVar conv14_i_H) (bvVar conv28_i_L);
bvMul tmpLH_L (bvVar conv14_i_L) (bvVar conv28_i_H);
bvAssign mul34_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul34_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul38.i = mul nuw i128 %conv21.i, %conv28.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv21_i_L) (bvVar conv28_i_L);
bvMul tmpHL_L (bvVar conv21_i_H) (bvVar conv28_i_L);
bvMul tmpLH_L (bvVar conv21_i_L) (bvVar conv28_i_H);
bvAssign mul38_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul38_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul41.i = mul i64 %sub16.i.156, 19 *)
bvMul mul41_i (bvVar sub16_i_156) (bvConst 19);
(*  %conv42.i = zext i64 %mul41.i to i128 *)
bvAssign conv42_i_L (bvVar mul41_i);
bvAssign conv42_i_H (bvConst 0);
(*  %mul43.i = mul nuw i128 %conv42.i, %conv14.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv42_i_L) (bvVar conv14_i_L);
bvMul tmpHL_L (bvVar conv42_i_H) (bvVar conv14_i_L);
bvMul tmpLH_L (bvVar conv42_i_L) (bvVar conv14_i_H);
bvAssign mul43_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul43_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add44.i = add i128 %mul43.i, %mul9.i *)
bvAddC carry add44_i_L (bvVar mul43_i_L) (bvVar mul9_i_L);
bvAdc add44_i_H (bvVar mul43_i_H) (bvVar mul9_i_H) carry;
(*  %mul45.i = shl i64 %sub16.i.156, 1 *)
bvShl mul45_i (bvVar sub16_i_156) 1;
(*  %conv46.i.200 = zext i64 %mul45.i to i128 *)
bvAssign conv46_i_200_L (bvVar mul45_i);
bvAssign conv46_i_200_H (bvConst 0);
(*  %mul48.i = mul nuw i128 %conv21.i, %conv46.i.200 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv21_i_L) (bvVar conv46_i_200_L);
bvMul tmpHL_L (bvVar conv21_i_H) (bvVar conv46_i_200_L);
bvMul tmpLH_L (bvVar conv21_i_L) (bvVar conv46_i_200_H);
bvAssign mul48_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul48_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add49.i = add i128 %add26.i, %mul48.i *)
bvAddC carry add49_i_L (bvVar add26_i_L) (bvVar mul48_i_L);
bvAdc add49_i_H (bvVar add26_i_H) (bvVar mul48_i_H) carry;
(*  %mul52.i = mul nuw i128 %conv11.i, %conv11.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv11_i_L) (bvVar conv11_i_L);
bvMul tmpHL_L (bvVar conv11_i_H) (bvVar conv11_i_L);
bvMul tmpLH_L (bvVar conv11_i_L) (bvVar conv11_i_H);
bvAssign mul52_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul52_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul54.i = shl i64 %sub11.i.151, 1 *)
bvShl mul54_i (bvVar sub11_i_151) 1;
(*  %conv55.i.201 = zext i64 %mul54.i to i128 *)
bvAssign conv55_i_201_L (bvVar mul54_i);
bvAssign conv55_i_201_H (bvConst 0);
(*  %mul57.i = mul nuw i128 %conv42.i, %conv55.i.201 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv42_i_L) (bvVar conv55_i_201_L);
bvMul tmpHL_L (bvVar conv42_i_H) (bvVar conv55_i_201_L);
bvMul tmpLH_L (bvVar conv42_i_L) (bvVar conv55_i_201_H);
bvAssign mul57_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul57_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add39.i = add i128 %mul57.i, %mul.i.199 *)
bvAddC carry add39_i_L (bvVar mul57_i_L) (bvVar mul_i_199_L);
bvAdc add39_i_H (bvVar mul57_i_H) (bvVar mul_i_199_H) carry;
(*  %add58.i = add i128 %add39.i, %mul38.i *)
bvAddC carry add58_i_L (bvVar add39_i_L) (bvVar mul38_i_L);
bvAdc add58_i_H (bvVar add39_i_H) (bvVar mul38_i_H) carry;
(*  %mul61.i = mul nuw i128 %conv21.i, %conv55.i.201 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv21_i_L) (bvVar conv55_i_201_L);
bvMul tmpHL_L (bvVar conv21_i_H) (bvVar conv55_i_201_L);
bvMul tmpLH_L (bvVar conv21_i_L) (bvVar conv55_i_201_H);
bvAssign mul61_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul61_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add62.i = add i128 %add44.i, %mul61.i *)
bvAddC carry add62_i_L (bvVar add44_i_L) (bvVar mul61_i_L);
bvAdc add62_i_H (bvVar add44_i_H) (bvVar mul61_i_H) carry;
(*  %shr.i.202 = lshr i128 %add49.i, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add49_i_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add49_i_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr_i_202_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr_i_202_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv64.i = and i128 %shr.i.202, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv64_i_L (bvVar shr_i_202_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv64_i_L) (bvvar shr_i_202_L);
bvAssume bveEq (bvvar conv64_i_L) (bvvar shr_i_202_L) | bvrTrue;
bvAndb conv64_i_H (bvVar shr_i_202_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv64_i_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv64_i_H) (bvconst 0) | bvrTrue;
(*  %add.i.203 = add i128 %mul15.i, %mul30.i *)
bvAddC carry add_i_203_L (bvVar mul15_i_L) (bvVar mul30_i_L);
bvAdc add_i_203_H (bvVar mul15_i_H) (bvVar mul30_i_H) carry;
(*  %add31.i = add i128 %add.i.203, %mul22.i *)
bvAddC carry add31_i_L (bvVar add_i_203_L) (bvVar mul22_i_L);
bvAdc add31_i_H (bvVar add_i_203_H) (bvVar mul22_i_H) carry;
(*  %add65.i = add i128 %add31.i, %conv64.i *)
bvAddC carry add65_i_L (bvVar add31_i_L) (bvVar conv64_i_L);
bvAdc add65_i_H (bvVar add31_i_H) (bvVar conv64_i_H) carry;
(*  %conv66.i = trunc i128 %add49.i to i64 *)
bvAssign conv66_i (bvVar add49_i_L);
(*  %and.i.204 = and i64 %conv66.i, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and_i_204 (bvVar conv66_i) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and_i_204) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and_i_204) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr67.i = lshr i128 %add58.i, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add58_i_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add58_i_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr67_i_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr67_i_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv69.i = and i128 %shr67.i, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv69_i_L (bvVar shr67_i_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv69_i_L) (bvvar shr67_i_L);
bvAssume bveEq (bvvar conv69_i_L) (bvvar shr67_i_L) | bvrTrue;
bvAndb conv69_i_H (bvVar shr67_i_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv69_i_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv69_i_H) (bvconst 0) | bvrTrue;
(*  %add70.i = add i128 %add62.i, %conv69.i *)
bvAddC carry add70_i_L (bvVar add62_i_L) (bvVar conv69_i_L);
bvAdc add70_i_H (bvVar add62_i_H) (bvVar conv69_i_H) carry;
(*  %conv71.i.205 = trunc i128 %add58.i to i64 *)
bvAssign conv71_i_205 (bvVar add58_i_L);
(*  %and72.i = and i64 %conv71.i.205, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and72_i (bvVar conv71_i_205) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and72_i) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and72_i) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr73.i.206 = lshr i128 %add65.i, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add65_i_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add65_i_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr73_i_206_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr73_i_206_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv75.i = and i128 %shr73.i.206, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv75_i_L (bvVar shr73_i_206_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv75_i_L) (bvvar shr73_i_206_L);
bvAssume bveEq (bvvar conv75_i_L) (bvvar shr73_i_206_L) | bvrTrue;
bvAndb conv75_i_H (bvVar shr73_i_206_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv75_i_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv75_i_H) (bvconst 0) | bvrTrue;
(*  %add35.i = add i128 %mul34.i, %mul52.i *)
bvAddC carry add35_i_L (bvVar mul34_i_L) (bvVar mul52_i_L);
bvAdc add35_i_H (bvVar mul34_i_H) (bvVar mul52_i_H) carry;
(*  %add53.i = add i128 %add35.i, %mul18.i *)
bvAddC carry add53_i_L (bvVar add35_i_L) (bvVar mul18_i_L);
bvAdc add53_i_H (bvVar add35_i_H) (bvVar mul18_i_H) carry;
(*  %add76.i = add i128 %add53.i, %conv75.i *)
bvAddC carry add76_i_L (bvVar add53_i_L) (bvVar conv75_i_L);
bvAdc add76_i_H (bvVar add53_i_H) (bvVar conv75_i_H) carry;
(*  %conv77.i.207 = trunc i128 %add65.i to i64 *)
bvAssign conv77_i_207 (bvVar add65_i_L);
(*  %and78.i = and i64 %conv77.i.207, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and78_i (bvVar conv77_i_207) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and78_i) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and78_i) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr79.i.208 = lshr i128 %add70.i, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add70_i_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add70_i_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr79_i_208_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr79_i_208_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv80.i.209 = trunc i128 %shr79.i.208 to i64 *)
bvAssign conv80_i_209 (bvVar shr79_i_208_L);
(*  %add81.i = add i64 %conv80.i.209, %and.i.204 *)
bvAdd add81_i (bvVar conv80_i_209) (bvVar and_i_204);
(*  %conv82.i = trunc i128 %add70.i to i64 *)
bvAssign conv82_i (bvVar add70_i_L);
(*  %and83.i = and i64 %conv82.i, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and83_i (bvVar conv82_i) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and83_i) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and83_i) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr84.i = lshr i128 %add76.i, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add76_i_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add76_i_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr84_i_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr84_i_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv85.i = trunc i128 %shr84.i to i64 *)
bvAssign conv85_i (bvVar shr84_i_L);
(*  %mul86.i = mul i64 %conv85.i, 19 *)
bvMul mul86_i (bvVar conv85_i) (bvConst 19);
(*  %add87.i = add i64 %mul86.i, %and72.i *)
bvAdd add87_i (bvVar mul86_i) (bvVar and72_i);
(*  %conv88.i = trunc i128 %add76.i to i64 *)
bvAssign conv88_i (bvVar add76_i_L);
(*  %and89.i = and i64 %conv88.i, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and89_i (bvVar conv88_i) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and89_i) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and89_i) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr90.i = lshr i64 %add81.i, 51 *)
(* You may need to modify here *)
bvSplit shr90_i tmp_to_be_used (bvVar add81_i) 51;
(*  %add91.i = add nuw nsw i64 %shr90.i, %and78.i *)
bvAdd add91_i (bvVar shr90_i) (bvVar and78_i);
(*  %fold.i = add i64 %conv80.i.209, %conv66.i *)
(* == modified == *)
(*bvAdd fold_i (bvVar conv80_i_209) (bvVar conv66_i);*)
bvAddC c fold_i (bvVar conv80_i_209) (bvVar conv66_i);
(*  %and92.i = and i64 %fold.i, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and92_i (bvVar fold_i) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and92_i) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and92_i) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr93.i = lshr i64 %add87.i, 51 *)
(* You may need to modify here *)
bvSplit shr93_i tmp_to_be_used (bvVar add87_i) 51;
(*  %add94.i = add nuw nsw i64 %shr93.i, %and83.i *)
bvAdd add94_i (bvVar shr93_i) (bvVar and83_i);
(*  %fold180.i = add i64 %mul86.i, %conv71.i.205 *)
(* == modified == *)
(*bvAdd fold180_i (bvVar mul86_i) (bvVar conv71_i_205);*)
bvAddC c fold180_i (bvVar mul86_i) (bvVar conv71_i_205);
(*  %and95.i = and i64 %fold180.i, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and95_i (bvVar fold180_i) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and95_i) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and95_i) (bvvar tmp_to_be_used) | bvrTrue;
(*  store i64 %and95.i, i64* %arraydecay23, align 16, !tbaa !5 *)
bvAssign L6_0 (bvVar and95_i);
(*  store i64 %add94.i, i64* %arrayidx7.i.137, align 8, !tbaa !5 *)
bvAssign L7_0 (bvVar add94_i);
(*  store i64 %and92.i, i64* %arrayidx12.i, align 16, !tbaa !5 *)
bvAssign L8_0 (bvVar and92_i);
(*  store i64 %add91.i, i64* %arrayidx17.i, align 8, !tbaa !5 *)
bvAssign L9_0 (bvVar add91_i);
(*  store i64 %and89.i, i64* %arrayidx22.i.140, align 16, !tbaa !5 *)
bvAssign L10_0 (bvVar and89_i);
(*  %67 = load i64, i64* %arraydecay9, align 16, !tbaa !5 *)
bvAssign v67 (bvVar L16_0);
(*  %68 = load i64, i64* %arrayidx1.i.92, align 8, !tbaa !5 *)
bvAssign v68 (bvVar L17_0);
(*  %69 = load i64, i64* %arrayidx.2.i, align 16, !tbaa !5 *)
bvAssign v69 (bvVar L18_0);
(*  %conv.i.216 = zext i64 %67 to i128 *)
bvAssign conv_i_216_L (bvVar v67);
bvAssign conv_i_216_H (bvConst 0);
(*  %mul.i.217 = mul nuw i128 %conv.i.216, %conv.i.216 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv_i_216_L) (bvVar conv_i_216_L);
bvMul tmpHL_L (bvVar conv_i_216_H) (bvVar conv_i_216_L);
bvMul tmpLH_L (bvVar conv_i_216_L) (bvVar conv_i_216_H);
bvAssign mul_i_217_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul_i_217_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul6.i.218 = shl i64 %67, 1 *)
bvShl mul6_i_218 (bvVar v67) 1;
(*  %conv7.i.219 = zext i64 %mul6.i.218 to i128 *)
bvAssign conv7_i_219_L (bvVar mul6_i_218);
bvAssign conv7_i_219_H (bvConst 0);
(*  %conv8.i.220 = zext i64 %68 to i128 *)
bvAssign conv8_i_220_L (bvVar v68);
bvAssign conv8_i_220_H (bvConst 0);
(*  %mul9.i.221 = mul nuw i128 %conv7.i.219, %conv8.i.220 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv7_i_219_L) (bvVar conv8_i_220_L);
bvMul tmpHL_L (bvVar conv7_i_219_H) (bvVar conv8_i_220_L);
bvMul tmpLH_L (bvVar conv7_i_219_L) (bvVar conv8_i_220_H);
bvAssign mul9_i_221_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul9_i_221_H (bvVar tmp) (bvVar tmpLL_H);
(*  %conv11.i.222 = zext i64 %69 to i128 *)
bvAssign conv11_i_222_L (bvVar v69);
bvAssign conv11_i_222_H (bvConst 0);
(*  %mul12.i.223 = mul nuw i128 %conv11.i.222, %conv7.i.219 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv11_i_222_L) (bvVar conv7_i_219_L);
bvMul tmpHL_L (bvVar conv11_i_222_H) (bvVar conv7_i_219_L);
bvMul tmpLH_L (bvVar conv11_i_222_L) (bvVar conv7_i_219_H);
bvAssign mul12_i_223_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul12_i_223_H (bvVar tmp) (bvVar tmpLL_H);
(*  %conv14.i.224 = zext i64 %add13.i.173 to i128 *)
bvAssign conv14_i_224_L (bvVar add13_i_173);
bvAssign conv14_i_224_H (bvConst 0);
(*  %mul15.i.225 = mul nuw i128 %conv14.i.224, %conv7.i.219 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv14_i_224_L) (bvVar conv7_i_219_L);
bvMul tmpHL_L (bvVar conv14_i_224_H) (bvVar conv7_i_219_L);
bvMul tmpLH_L (bvVar conv14_i_224_L) (bvVar conv7_i_219_H);
bvAssign mul15_i_225_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul15_i_225_H (bvVar tmp) (bvVar tmpLL_H);
(*  %conv17.i.226 = zext i64 %add17.i.175 to i128 *)
bvAssign conv17_i_226_L (bvVar add17_i_175);
bvAssign conv17_i_226_H (bvConst 0);
(*  %mul18.i.227 = mul nuw i128 %conv17.i.226, %conv7.i.219 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv17_i_226_L) (bvVar conv7_i_219_L);
bvMul tmpHL_L (bvVar conv17_i_226_H) (bvVar conv7_i_219_L);
bvMul tmpLH_L (bvVar conv17_i_226_L) (bvVar conv7_i_219_H);
bvAssign mul18_i_227_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul18_i_227_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul20.i.228 = mul i64 %add17.i.175, 19 *)
bvMul mul20_i_228 (bvVar add17_i_175) (bvConst 19);
(*  %conv21.i.229 = zext i64 %mul20.i.228 to i128 *)
bvAssign conv21_i_229_L (bvVar mul20_i_228);
bvAssign conv21_i_229_H (bvConst 0);
(*  %mul22.i.230 = mul nuw i128 %conv21.i.229, %conv17.i.226 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv21_i_229_L) (bvVar conv17_i_226_L);
bvMul tmpHL_L (bvVar conv21_i_229_H) (bvVar conv17_i_226_L);
bvMul tmpLH_L (bvVar conv21_i_229_L) (bvVar conv17_i_226_H);
bvAssign mul22_i_230_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul22_i_230_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul25.i.231 = mul nuw i128 %conv8.i.220, %conv8.i.220 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv8_i_220_L) (bvVar conv8_i_220_L);
bvMul tmpHL_L (bvVar conv8_i_220_H) (bvVar conv8_i_220_L);
bvMul tmpLH_L (bvVar conv8_i_220_L) (bvVar conv8_i_220_H);
bvAssign mul25_i_231_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul25_i_231_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add26.i.232 = add i128 %mul12.i.223, %mul25.i.231 *)
bvAddC carry add26_i_232_L (bvVar mul12_i_223_L) (bvVar mul25_i_231_L);
bvAdc add26_i_232_H (bvVar mul12_i_223_H) (bvVar mul25_i_231_H) carry;
(*  %mul27.i.233 = shl i64 %68, 1 *)
bvShl mul27_i_233 (bvVar v68) 1;
(*  %conv28.i.234 = zext i64 %mul27.i.233 to i128 *)
bvAssign conv28_i_234_L (bvVar mul27_i_233);
bvAssign conv28_i_234_H (bvConst 0);
(*  %mul30.i.235 = mul nuw i128 %conv28.i.234, %conv11.i.222 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv28_i_234_L) (bvVar conv11_i_222_L);
bvMul tmpHL_L (bvVar conv28_i_234_H) (bvVar conv11_i_222_L);
bvMul tmpLH_L (bvVar conv28_i_234_L) (bvVar conv11_i_222_H);
bvAssign mul30_i_235_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul30_i_235_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul34.i.236 = mul nuw i128 %conv14.i.224, %conv28.i.234 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv14_i_224_L) (bvVar conv28_i_234_L);
bvMul tmpHL_L (bvVar conv14_i_224_H) (bvVar conv28_i_234_L);
bvMul tmpLH_L (bvVar conv14_i_224_L) (bvVar conv28_i_234_H);
bvAssign mul34_i_236_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul34_i_236_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul38.i.237 = mul nuw i128 %conv21.i.229, %conv28.i.234 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv21_i_229_L) (bvVar conv28_i_234_L);
bvMul tmpHL_L (bvVar conv21_i_229_H) (bvVar conv28_i_234_L);
bvMul tmpLH_L (bvVar conv21_i_229_L) (bvVar conv28_i_234_H);
bvAssign mul38_i_237_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul38_i_237_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul41.i.238 = mul i64 %add13.i.173, 19 *)
bvMul mul41_i_238 (bvVar add13_i_173) (bvConst 19);
(*  %conv42.i.239 = zext i64 %mul41.i.238 to i128 *)
bvAssign conv42_i_239_L (bvVar mul41_i_238);
bvAssign conv42_i_239_H (bvConst 0);
(*  %mul43.i.240 = mul nuw i128 %conv42.i.239, %conv14.i.224 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv42_i_239_L) (bvVar conv14_i_224_L);
bvMul tmpHL_L (bvVar conv42_i_239_H) (bvVar conv14_i_224_L);
bvMul tmpLH_L (bvVar conv42_i_239_L) (bvVar conv14_i_224_H);
bvAssign mul43_i_240_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul43_i_240_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add44.i.241 = add i128 %mul43.i.240, %mul9.i.221 *)
bvAddC carry add44_i_241_L (bvVar mul43_i_240_L) (bvVar mul9_i_221_L);
bvAdc add44_i_241_H (bvVar mul43_i_240_H) (bvVar mul9_i_221_H) carry;
(*  %mul45.i.242 = shl i64 %add13.i.173, 1 *)
bvShl mul45_i_242 (bvVar add13_i_173) 1;
(*  %conv46.i.243 = zext i64 %mul45.i.242 to i128 *)
bvAssign conv46_i_243_L (bvVar mul45_i_242);
bvAssign conv46_i_243_H (bvConst 0);
(*  %mul48.i.244 = mul nuw i128 %conv21.i.229, %conv46.i.243 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv21_i_229_L) (bvVar conv46_i_243_L);
bvMul tmpHL_L (bvVar conv21_i_229_H) (bvVar conv46_i_243_L);
bvMul tmpLH_L (bvVar conv21_i_229_L) (bvVar conv46_i_243_H);
bvAssign mul48_i_244_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul48_i_244_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add49.i.245 = add i128 %add26.i.232, %mul48.i.244 *)
bvAddC carry add49_i_245_L (bvVar add26_i_232_L) (bvVar mul48_i_244_L);
bvAdc add49_i_245_H (bvVar add26_i_232_H) (bvVar mul48_i_244_H) carry;
(*  %mul52.i.246 = mul nuw i128 %conv11.i.222, %conv11.i.222 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv11_i_222_L) (bvVar conv11_i_222_L);
bvMul tmpHL_L (bvVar conv11_i_222_H) (bvVar conv11_i_222_L);
bvMul tmpLH_L (bvVar conv11_i_222_L) (bvVar conv11_i_222_H);
bvAssign mul52_i_246_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul52_i_246_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul54.i.247 = shl i64 %69, 1 *)
bvShl mul54_i_247 (bvVar v69) 1;
(*  %conv55.i.248 = zext i64 %mul54.i.247 to i128 *)
bvAssign conv55_i_248_L (bvVar mul54_i_247);
bvAssign conv55_i_248_H (bvConst 0);
(*  %mul57.i.249 = mul nuw i128 %conv42.i.239, %conv55.i.248 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv42_i_239_L) (bvVar conv55_i_248_L);
bvMul tmpHL_L (bvVar conv42_i_239_H) (bvVar conv55_i_248_L);
bvMul tmpLH_L (bvVar conv42_i_239_L) (bvVar conv55_i_248_H);
bvAssign mul57_i_249_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul57_i_249_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add39.i.250 = add i128 %mul57.i.249, %mul.i.217 *)
bvAddC carry add39_i_250_L (bvVar mul57_i_249_L) (bvVar mul_i_217_L);
bvAdc add39_i_250_H (bvVar mul57_i_249_H) (bvVar mul_i_217_H) carry;
(*  %add58.i.251 = add i128 %add39.i.250, %mul38.i.237 *)
bvAddC carry add58_i_251_L (bvVar add39_i_250_L) (bvVar mul38_i_237_L);
bvAdc add58_i_251_H (bvVar add39_i_250_H) (bvVar mul38_i_237_H) carry;
(*  %mul61.i.252 = mul nuw i128 %conv21.i.229, %conv55.i.248 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv21_i_229_L) (bvVar conv55_i_248_L);
bvMul tmpHL_L (bvVar conv21_i_229_H) (bvVar conv55_i_248_L);
bvMul tmpLH_L (bvVar conv21_i_229_L) (bvVar conv55_i_248_H);
bvAssign mul61_i_252_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul61_i_252_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add62.i.253 = add i128 %add44.i.241, %mul61.i.252 *)
bvAddC carry add62_i_253_L (bvVar add44_i_241_L) (bvVar mul61_i_252_L);
bvAdc add62_i_253_H (bvVar add44_i_241_H) (bvVar mul61_i_252_H) carry;
(*  %shr.i.254 = lshr i128 %add49.i.245, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add49_i_245_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add49_i_245_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr_i_254_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr_i_254_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv64.i.255 = and i128 %shr.i.254, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv64_i_255_L (bvVar shr_i_254_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv64_i_255_L) (bvvar shr_i_254_L);
bvAssume bveEq (bvvar conv64_i_255_L) (bvvar shr_i_254_L) | bvrTrue;
bvAndb conv64_i_255_H (bvVar shr_i_254_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv64_i_255_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv64_i_255_H) (bvconst 0) | bvrTrue;
(*  %add.i.256 = add i128 %mul15.i.225, %mul30.i.235 *)
bvAddC carry add_i_256_L (bvVar mul15_i_225_L) (bvVar mul30_i_235_L);
bvAdc add_i_256_H (bvVar mul15_i_225_H) (bvVar mul30_i_235_H) carry;
(*  %add31.i.257 = add i128 %add.i.256, %mul22.i.230 *)
bvAddC carry add31_i_257_L (bvVar add_i_256_L) (bvVar mul22_i_230_L);
bvAdc add31_i_257_H (bvVar add_i_256_H) (bvVar mul22_i_230_H) carry;
(*  %add65.i.258 = add i128 %add31.i.257, %conv64.i.255 *)
bvAddC carry add65_i_258_L (bvVar add31_i_257_L) (bvVar conv64_i_255_L);
bvAdc add65_i_258_H (bvVar add31_i_257_H) (bvVar conv64_i_255_H) carry;
(*  %conv66.i.259 = trunc i128 %add49.i.245 to i64 *)
bvAssign conv66_i_259 (bvVar add49_i_245_L);
(*  %and.i.260 = and i64 %conv66.i.259, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and_i_260 (bvVar conv66_i_259) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and_i_260) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and_i_260) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr67.i.261 = lshr i128 %add58.i.251, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add58_i_251_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add58_i_251_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr67_i_261_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr67_i_261_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv69.i.262 = and i128 %shr67.i.261, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv69_i_262_L (bvVar shr67_i_261_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv69_i_262_L) (bvvar shr67_i_261_L);
bvAssume bveEq (bvvar conv69_i_262_L) (bvvar shr67_i_261_L) | bvrTrue;
bvAndb conv69_i_262_H (bvVar shr67_i_261_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv69_i_262_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv69_i_262_H) (bvconst 0) | bvrTrue;
(*  %add70.i.263 = add i128 %add62.i.253, %conv69.i.262 *)
bvAddC carry add70_i_263_L (bvVar add62_i_253_L) (bvVar conv69_i_262_L);
bvAdc add70_i_263_H (bvVar add62_i_253_H) (bvVar conv69_i_262_H) carry;
(*  %conv71.i.264 = trunc i128 %add58.i.251 to i64 *)
bvAssign conv71_i_264 (bvVar add58_i_251_L);
(*  %and72.i.265 = and i64 %conv71.i.264, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and72_i_265 (bvVar conv71_i_264) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and72_i_265) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and72_i_265) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr73.i.266 = lshr i128 %add65.i.258, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add65_i_258_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add65_i_258_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr73_i_266_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr73_i_266_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv75.i.267 = and i128 %shr73.i.266, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv75_i_267_L (bvVar shr73_i_266_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv75_i_267_L) (bvvar shr73_i_266_L);
bvAssume bveEq (bvvar conv75_i_267_L) (bvvar shr73_i_266_L) | bvrTrue;
bvAndb conv75_i_267_H (bvVar shr73_i_266_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv75_i_267_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv75_i_267_H) (bvconst 0) | bvrTrue;
(*  %add35.i.268 = add i128 %mul34.i.236, %mul52.i.246 *)
bvAddC carry add35_i_268_L (bvVar mul34_i_236_L) (bvVar mul52_i_246_L);
bvAdc add35_i_268_H (bvVar mul34_i_236_H) (bvVar mul52_i_246_H) carry;
(*  %add53.i.269 = add i128 %add35.i.268, %mul18.i.227 *)
bvAddC carry add53_i_269_L (bvVar add35_i_268_L) (bvVar mul18_i_227_L);
bvAdc add53_i_269_H (bvVar add35_i_268_H) (bvVar mul18_i_227_H) carry;
(*  %add76.i.270 = add i128 %add53.i.269, %conv75.i.267 *)
bvAddC carry add76_i_270_L (bvVar add53_i_269_L) (bvVar conv75_i_267_L);
bvAdc add76_i_270_H (bvVar add53_i_269_H) (bvVar conv75_i_267_H) carry;
(*  %conv77.i.271 = trunc i128 %add65.i.258 to i64 *)
bvAssign conv77_i_271 (bvVar add65_i_258_L);
(*  %and78.i.272 = and i64 %conv77.i.271, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and78_i_272 (bvVar conv77_i_271) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and78_i_272) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and78_i_272) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr79.i.273 = lshr i128 %add70.i.263, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add70_i_263_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add70_i_263_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr79_i_273_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr79_i_273_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv80.i.274 = trunc i128 %shr79.i.273 to i64 *)
bvAssign conv80_i_274 (bvVar shr79_i_273_L);
(*  %add81.i.275 = add i64 %conv80.i.274, %and.i.260 *)
bvAdd add81_i_275 (bvVar conv80_i_274) (bvVar and_i_260);
(*  %conv82.i.276 = trunc i128 %add70.i.263 to i64 *)
bvAssign conv82_i_276 (bvVar add70_i_263_L);
(*  %and83.i.277 = and i64 %conv82.i.276, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and83_i_277 (bvVar conv82_i_276) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and83_i_277) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and83_i_277) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr84.i.278 = lshr i128 %add76.i.270, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add76_i_270_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add76_i_270_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr84_i_278_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr84_i_278_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv85.i.279 = trunc i128 %shr84.i.278 to i64 *)
bvAssign conv85_i_279 (bvVar shr84_i_278_L);
(*  %mul86.i.280 = mul i64 %conv85.i.279, 19 *)
bvMul mul86_i_280 (bvVar conv85_i_279) (bvConst 19);
(*  %add87.i.281 = add i64 %mul86.i.280, %and72.i.265 *)
bvAdd add87_i_281 (bvVar mul86_i_280) (bvVar and72_i_265);
(*  %conv88.i.282 = trunc i128 %add76.i.270 to i64 *)
bvAssign conv88_i_282 (bvVar add76_i_270_L);
(*  %and89.i.283 = and i64 %conv88.i.282, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and89_i_283 (bvVar conv88_i_282) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and89_i_283) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and89_i_283) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr90.i.284 = lshr i64 %add81.i.275, 51 *)
(* You may need to modify here *)
bvSplit shr90_i_284 tmp_to_be_used (bvVar add81_i_275) 51;
(*  %add91.i.285 = add nuw nsw i64 %shr90.i.284, %and78.i.272 *)
bvAdd add91_i_285 (bvVar shr90_i_284) (bvVar and78_i_272);
(*  %fold.i.286 = add i64 %conv80.i.274, %conv66.i.259 *)
(* == modified == *)
(*bvAdd fold_i_286 (bvVar conv80_i_274) (bvVar conv66_i_259);*)
bvAddC c fold_i_286 (bvVar conv80_i_274) (bvVar conv66_i_259);
(*  %and92.i.287 = and i64 %fold.i.286, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and92_i_287 (bvVar fold_i_286) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and92_i_287) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and92_i_287) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr93.i.288 = lshr i64 %add87.i.281, 51 *)
(* You may need to modify here *)
bvSplit shr93_i_288 tmp_to_be_used (bvVar add87_i_281) 51;
(*  %add94.i.289 = add nuw nsw i64 %shr93.i.288, %and83.i.277 *)
bvAdd add94_i_289 (bvVar shr93_i_288) (bvVar and83_i_277);
(*  %fold180.i.290 = add i64 %mul86.i.280, %conv71.i.264 *)
(* == modified == *)
(*bvAdd fold180_i_290 (bvVar mul86_i_280) (bvVar conv71_i_264);*)
bvAddC c fold180_i_290 (bvVar mul86_i_280) (bvVar conv71_i_264);
(*  %and95.i.291 = and i64 %fold180.i.290, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and95_i_291 (bvVar fold180_i_290) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and95_i_291) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and95_i_291) (bvvar tmp_to_be_used) | bvrTrue;
(*  store i64 %and95.i.291, i64* %arraydecay26, align 16, !tbaa !5 *)
bvAssign L11_0 (bvVar and95_i_291);
(*  store i64 %add94.i.289, i64* %arrayidx7.i.147, align 8, !tbaa !5 *)
bvAssign L12_0 (bvVar add94_i_289);
(*  store i64 %and92.i.287, i64* %arrayidx12.i.152, align 16, !tbaa !5 *)
bvAssign L13_0 (bvVar and92_i_287);
(*  store i64 %add91.i.285, i64* %arrayidx17.i.157, align 8, !tbaa !5 *)
bvAssign L14_0 (bvVar add91_i_285);
(*  store i64 %and89.i.283, i64* %arrayidx22.i.162, align 16, !tbaa !5 *)
bvAssign L15_0 (bvVar and89_i_283);
(*  %70 = load i64, i64* %arraydecay13, align 16, !tbaa !5 *)
bvAssign v70 (bvVar L1_0);
(*  %71 = load i64, i64* %arraydecay10, align 16, !tbaa !5 *)
bvAssign v71 (bvVar L21_0);
(*  %add.i.296 = add i64 %71, %70 *)
bvAdd add_i_296 (bvVar v71) (bvVar v70);
(*  %72 = load i64, i64* %arrayidx1.i.100, align 8, !tbaa !5 *)
bvAssign v72 (bvVar L2_0);
(*  %73 = load i64, i64* %arrayidx.1.i.109, align 8, !tbaa !5 *)
bvAssign v73 (bvVar L22_0);
(*  %add5.i.299 = add i64 %73, %72 *)
bvAdd add5_i_299 (bvVar v73) (bvVar v72);
(*  %74 = load i64, i64* %arrayidx3.2.i.116, align 16, !tbaa !5 *)
bvAssign v74 (bvVar L3_0);
(*  %75 = load i64, i64* %arrayidx.2.i.115, align 16, !tbaa !5 *)
bvAssign v75 (bvVar L23_0);
(*  %add9.i.303 = add i64 %75, %74 *)
bvAdd add9_i_303 (bvVar v75) (bvVar v74);
(*  %76 = load i64, i64* %arrayidx3.3.i.122, align 8, !tbaa !5 *)
bvAssign v76 (bvVar L4_0);
(*  %77 = load i64, i64* %arrayidx.3.i.121, align 8, !tbaa !5 *)
bvAssign v77 (bvVar L24_0);
(*  %add13.i.307 = add i64 %77, %76 *)
bvAdd add13_i_307 (bvVar v77) (bvVar v76);
(*  %78 = load i64, i64* %arrayidx3.4.i.128, align 16, !tbaa !5 *)
bvAssign v78 (bvVar L5_0);
(*  %79 = load i64, i64* %arrayidx.4.i.127, align 16, !tbaa !5 *)
bvAssign v79 (bvVar L25_0);
(*  %add17.i.311 = add i64 %79, %78 *)
bvAdd add17_i_311 (bvVar v79) (bvVar v78);
(*  %add.i.313 = add i64 %70, 4503599627370458 *)
bvAdd add_i_313 (bvVar v70) (bvConst 4503599627370458);
(*  %sub.i.314 = sub i64 %add.i.313, %71 *)
bvSub sub_i_314 (bvVar add_i_313) (bvVar v71);
(*  store i64 %sub.i.314, i64* %arraydecay10, align 16, !tbaa !5 *)
bvAssign L21_0 (bvVar sub_i_314);
(*  %add4.i.316 = add i64 %72, 4503599627370494 *)
bvAdd add4_i_316 (bvVar v72) (bvConst 4503599627370494);
(*  %sub6.i.318 = sub i64 %add4.i.316, %73 *)
bvSub sub6_i_318 (bvVar add4_i_316) (bvVar v73);
(*  store i64 %sub6.i.318, i64* %arrayidx.1.i.109, align 8, !tbaa !5 *)
bvAssign L22_0 (bvVar sub6_i_318);
(*  %add9.i.321 = add i64 %74, 4503599627370494 *)
bvAdd add9_i_321 (bvVar v74) (bvConst 4503599627370494);
(*  %sub11.i.323 = sub i64 %add9.i.321, %75 *)
bvSub sub11_i_323 (bvVar add9_i_321) (bvVar v75);
(*  store i64 %sub11.i.323, i64* %arrayidx.2.i.115, align 16, !tbaa !5 *)
bvAssign L23_0 (bvVar sub11_i_323);
(*  %add14.i.326 = add i64 %76, 4503599627370494 *)
bvAdd add14_i_326 (bvVar v76) (bvConst 4503599627370494);
(*  %sub16.i.328 = sub i64 %add14.i.326, %77 *)
bvSub sub16_i_328 (bvVar add14_i_326) (bvVar v77);
(*  store i64 %sub16.i.328, i64* %arrayidx.3.i.121, align 8, !tbaa !5 *)
bvAssign L24_0 (bvVar sub16_i_328);
(*  %add19.i.331 = add i64 %78, 4503599627370494 *)
bvAdd add19_i_331 (bvVar v78) (bvConst 4503599627370494);
(*  %sub21.i.333 = sub i64 %add19.i.331, %79 *)
bvSub sub21_i_333 (bvVar add19_i_331) (bvVar v79);
(*  store i64 %sub21.i.333, i64* %arrayidx.4.i.127, align 16, !tbaa !5 *)
bvAssign L25_0 (bvVar sub21_i_333);
(*  call fastcc void @fe51_mul(i64* %arraydecay9, i64* %arraydecay26, i64* %arraydecay23) *)
call fe51_mul(L11_0, L12_0, L13_0, L14_0, L15_0, L6_0, L7_0, L8_0, L9_0, L10_0, L16_0, L17_0, L18_0, L19_0, L20_0);
(*  %add.i.541 = add nuw nsw i64 %and95.i.291, 4503599627370458 *)
bvAdd add_i_541 (bvVar and95_i_291) (bvConst 4503599627370458);
(*  %80 = load i64, i64* %arraydecay23, align 16, !tbaa !5 *)
bvAssign v80 (bvVar L6_0);
(*  %sub.i.542 = sub i64 %add.i.541, %80 *)
bvSub sub_i_542 (bvVar add_i_541) (bvVar v80);
(*  store i64 %sub.i.542, i64* %arraydecay26, align 16, !tbaa !5 *)
bvAssign L11_0 (bvVar sub_i_542);
(*  %add4.i.544 = add nuw nsw i64 %add94.i.289, 4503599627370494 *)
bvAdd add4_i_544 (bvVar add94_i_289) (bvConst 4503599627370494);
(*  %81 = load i64, i64* %arrayidx7.i.137, align 8, !tbaa !5 *)
bvAssign v81 (bvVar L7_0);
(*  %sub6.i.546 = sub i64 %add4.i.544, %81 *)
bvSub sub6_i_546 (bvVar add4_i_544) (bvVar v81);
(*  store i64 %sub6.i.546, i64* %arrayidx7.i.147, align 8, !tbaa !5 *)
bvAssign L12_0 (bvVar sub6_i_546);
(*  %add9.i.549 = add nuw nsw i64 %and92.i.287, 4503599627370494 *)
bvAdd add9_i_549 (bvVar and92_i_287) (bvConst 4503599627370494);
(*  %82 = load i64, i64* %arrayidx12.i, align 16, !tbaa !5 *)
bvAssign v82 (bvVar L8_0);
(*  %sub11.i.551 = sub i64 %add9.i.549, %82 *)
bvSub sub11_i_551 (bvVar add9_i_549) (bvVar v82);
(*  store i64 %sub11.i.551, i64* %arrayidx12.i.152, align 16, !tbaa !5 *)
bvAssign L13_0 (bvVar sub11_i_551);
(*  %add14.i.554 = add nuw nsw i64 %add91.i.285, 4503599627370494 *)
bvAdd add14_i_554 (bvVar add91_i_285) (bvConst 4503599627370494);
(*  %83 = load i64, i64* %arrayidx17.i, align 8, !tbaa !5 *)
bvAssign v83 (bvVar L9_0);
(*  %sub16.i.556 = sub i64 %add14.i.554, %83 *)
bvSub sub16_i_556 (bvVar add14_i_554) (bvVar v83);
(*  store i64 %sub16.i.556, i64* %arrayidx17.i.157, align 8, !tbaa !5 *)
bvAssign L14_0 (bvVar sub16_i_556);
(*  %add19.i.559 = add nuw nsw i64 %and89.i.283, 4503599627370494 *)
bvAdd add19_i_559 (bvVar and89_i_283) (bvConst 4503599627370494);
(*  %84 = load i64, i64* %arrayidx22.i.140, align 16, !tbaa !5 *)
bvAssign v84 (bvVar L10_0);
(*  %sub21.i.561 = sub i64 %add19.i.559, %84 *)
bvSub sub21_i_561 (bvVar add19_i_559) (bvVar v84);
(*  store i64 %sub21.i.561, i64* %arrayidx22.i.162, align 16, !tbaa !5 *)
bvAssign L15_0 (bvVar sub21_i_561);
(*  %conv.i.461 = zext i64 %sub.i.314 to i128 *)
bvAssign conv_i_461_L (bvVar sub_i_314);
bvAssign conv_i_461_H (bvConst 0);
(*  %mul.i.462 = mul nuw i128 %conv.i.461, %conv.i.461 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv_i_461_L) (bvVar conv_i_461_L);
bvMul tmpHL_L (bvVar conv_i_461_H) (bvVar conv_i_461_L);
bvMul tmpLH_L (bvVar conv_i_461_L) (bvVar conv_i_461_H);
bvAssign mul_i_462_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul_i_462_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul6.i.463 = shl i64 %sub.i.314, 1 *)
bvShl mul6_i_463 (bvVar sub_i_314) 1;
(*  %conv7.i.464 = zext i64 %mul6.i.463 to i128 *)
bvAssign conv7_i_464_L (bvVar mul6_i_463);
bvAssign conv7_i_464_H (bvConst 0);
(*  %conv8.i.465 = zext i64 %sub6.i.318 to i128 *)
bvAssign conv8_i_465_L (bvVar sub6_i_318);
bvAssign conv8_i_465_H (bvConst 0);
(*  %mul9.i.466 = mul nuw i128 %conv7.i.464, %conv8.i.465 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv7_i_464_L) (bvVar conv8_i_465_L);
bvMul tmpHL_L (bvVar conv7_i_464_H) (bvVar conv8_i_465_L);
bvMul tmpLH_L (bvVar conv7_i_464_L) (bvVar conv8_i_465_H);
bvAssign mul9_i_466_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul9_i_466_H (bvVar tmp) (bvVar tmpLL_H);
(*  %conv11.i.467 = zext i64 %sub11.i.323 to i128 *)
bvAssign conv11_i_467_L (bvVar sub11_i_323);
bvAssign conv11_i_467_H (bvConst 0);
(*  %mul12.i.468 = mul nuw i128 %conv11.i.467, %conv7.i.464 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv11_i_467_L) (bvVar conv7_i_464_L);
bvMul tmpHL_L (bvVar conv11_i_467_H) (bvVar conv7_i_464_L);
bvMul tmpLH_L (bvVar conv11_i_467_L) (bvVar conv7_i_464_H);
bvAssign mul12_i_468_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul12_i_468_H (bvVar tmp) (bvVar tmpLL_H);
(*  %conv14.i.469 = zext i64 %sub16.i.328 to i128 *)
bvAssign conv14_i_469_L (bvVar sub16_i_328);
bvAssign conv14_i_469_H (bvConst 0);
(*  %mul15.i.470 = mul nuw i128 %conv14.i.469, %conv7.i.464 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv14_i_469_L) (bvVar conv7_i_464_L);
bvMul tmpHL_L (bvVar conv14_i_469_H) (bvVar conv7_i_464_L);
bvMul tmpLH_L (bvVar conv14_i_469_L) (bvVar conv7_i_464_H);
bvAssign mul15_i_470_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul15_i_470_H (bvVar tmp) (bvVar tmpLL_H);
(*  %conv17.i.471 = zext i64 %sub21.i.333 to i128 *)
bvAssign conv17_i_471_L (bvVar sub21_i_333);
bvAssign conv17_i_471_H (bvConst 0);
(*  %mul18.i.472 = mul nuw i128 %conv17.i.471, %conv7.i.464 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv17_i_471_L) (bvVar conv7_i_464_L);
bvMul tmpHL_L (bvVar conv17_i_471_H) (bvVar conv7_i_464_L);
bvMul tmpLH_L (bvVar conv17_i_471_L) (bvVar conv7_i_464_H);
bvAssign mul18_i_472_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul18_i_472_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul20.i.473 = mul i64 %sub21.i.333, 19 *)
bvMul mul20_i_473 (bvVar sub21_i_333) (bvConst 19);
(*  %conv21.i.474 = zext i64 %mul20.i.473 to i128 *)
bvAssign conv21_i_474_L (bvVar mul20_i_473);
bvAssign conv21_i_474_H (bvConst 0);
(*  %mul22.i.475 = mul nuw i128 %conv21.i.474, %conv17.i.471 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv21_i_474_L) (bvVar conv17_i_471_L);
bvMul tmpHL_L (bvVar conv21_i_474_H) (bvVar conv17_i_471_L);
bvMul tmpLH_L (bvVar conv21_i_474_L) (bvVar conv17_i_471_H);
bvAssign mul22_i_475_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul22_i_475_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul25.i.476 = mul nuw i128 %conv8.i.465, %conv8.i.465 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv8_i_465_L) (bvVar conv8_i_465_L);
bvMul tmpHL_L (bvVar conv8_i_465_H) (bvVar conv8_i_465_L);
bvMul tmpLH_L (bvVar conv8_i_465_L) (bvVar conv8_i_465_H);
bvAssign mul25_i_476_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul25_i_476_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add26.i.477 = add i128 %mul12.i.468, %mul25.i.476 *)
bvAddC carry add26_i_477_L (bvVar mul12_i_468_L) (bvVar mul25_i_476_L);
bvAdc add26_i_477_H (bvVar mul12_i_468_H) (bvVar mul25_i_476_H) carry;
(*  %mul27.i.478 = shl i64 %sub6.i.318, 1 *)
bvShl mul27_i_478 (bvVar sub6_i_318) 1;
(*  %conv28.i.479 = zext i64 %mul27.i.478 to i128 *)
bvAssign conv28_i_479_L (bvVar mul27_i_478);
bvAssign conv28_i_479_H (bvConst 0);
(*  %mul30.i.480 = mul nuw i128 %conv28.i.479, %conv11.i.467 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv28_i_479_L) (bvVar conv11_i_467_L);
bvMul tmpHL_L (bvVar conv28_i_479_H) (bvVar conv11_i_467_L);
bvMul tmpLH_L (bvVar conv28_i_479_L) (bvVar conv11_i_467_H);
bvAssign mul30_i_480_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul30_i_480_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul34.i.481 = mul nuw i128 %conv14.i.469, %conv28.i.479 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv14_i_469_L) (bvVar conv28_i_479_L);
bvMul tmpHL_L (bvVar conv14_i_469_H) (bvVar conv28_i_479_L);
bvMul tmpLH_L (bvVar conv14_i_469_L) (bvVar conv28_i_479_H);
bvAssign mul34_i_481_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul34_i_481_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul38.i.482 = mul nuw i128 %conv21.i.474, %conv28.i.479 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv21_i_474_L) (bvVar conv28_i_479_L);
bvMul tmpHL_L (bvVar conv21_i_474_H) (bvVar conv28_i_479_L);
bvMul tmpLH_L (bvVar conv21_i_474_L) (bvVar conv28_i_479_H);
bvAssign mul38_i_482_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul38_i_482_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul41.i.483 = mul i64 %sub16.i.328, 19 *)
bvMul mul41_i_483 (bvVar sub16_i_328) (bvConst 19);
(*  %conv42.i.484 = zext i64 %mul41.i.483 to i128 *)
bvAssign conv42_i_484_L (bvVar mul41_i_483);
bvAssign conv42_i_484_H (bvConst 0);
(*  %mul43.i.485 = mul nuw i128 %conv42.i.484, %conv14.i.469 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv42_i_484_L) (bvVar conv14_i_469_L);
bvMul tmpHL_L (bvVar conv42_i_484_H) (bvVar conv14_i_469_L);
bvMul tmpLH_L (bvVar conv42_i_484_L) (bvVar conv14_i_469_H);
bvAssign mul43_i_485_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul43_i_485_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add44.i.486 = add i128 %mul43.i.485, %mul9.i.466 *)
bvAddC carry add44_i_486_L (bvVar mul43_i_485_L) (bvVar mul9_i_466_L);
bvAdc add44_i_486_H (bvVar mul43_i_485_H) (bvVar mul9_i_466_H) carry;
(*  %mul45.i.487 = shl i64 %sub16.i.328, 1 *)
bvShl mul45_i_487 (bvVar sub16_i_328) 1;
(*  %conv46.i.488 = zext i64 %mul45.i.487 to i128 *)
bvAssign conv46_i_488_L (bvVar mul45_i_487);
bvAssign conv46_i_488_H (bvConst 0);
(*  %mul48.i.489 = mul nuw i128 %conv21.i.474, %conv46.i.488 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv21_i_474_L) (bvVar conv46_i_488_L);
bvMul tmpHL_L (bvVar conv21_i_474_H) (bvVar conv46_i_488_L);
bvMul tmpLH_L (bvVar conv21_i_474_L) (bvVar conv46_i_488_H);
bvAssign mul48_i_489_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul48_i_489_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add49.i.490 = add i128 %add26.i.477, %mul48.i.489 *)
bvAddC carry add49_i_490_L (bvVar add26_i_477_L) (bvVar mul48_i_489_L);
bvAdc add49_i_490_H (bvVar add26_i_477_H) (bvVar mul48_i_489_H) carry;
(*  %mul52.i.491 = mul nuw i128 %conv11.i.467, %conv11.i.467 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv11_i_467_L) (bvVar conv11_i_467_L);
bvMul tmpHL_L (bvVar conv11_i_467_H) (bvVar conv11_i_467_L);
bvMul tmpLH_L (bvVar conv11_i_467_L) (bvVar conv11_i_467_H);
bvAssign mul52_i_491_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul52_i_491_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul54.i.492 = shl i64 %sub11.i.323, 1 *)
bvShl mul54_i_492 (bvVar sub11_i_323) 1;
(*  %conv55.i.493 = zext i64 %mul54.i.492 to i128 *)
bvAssign conv55_i_493_L (bvVar mul54_i_492);
bvAssign conv55_i_493_H (bvConst 0);
(*  %mul57.i.494 = mul nuw i128 %conv42.i.484, %conv55.i.493 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv42_i_484_L) (bvVar conv55_i_493_L);
bvMul tmpHL_L (bvVar conv42_i_484_H) (bvVar conv55_i_493_L);
bvMul tmpLH_L (bvVar conv42_i_484_L) (bvVar conv55_i_493_H);
bvAssign mul57_i_494_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul57_i_494_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add39.i.495 = add i128 %mul57.i.494, %mul.i.462 *)
bvAddC carry add39_i_495_L (bvVar mul57_i_494_L) (bvVar mul_i_462_L);
bvAdc add39_i_495_H (bvVar mul57_i_494_H) (bvVar mul_i_462_H) carry;
(*  %add58.i.496 = add i128 %add39.i.495, %mul38.i.482 *)
bvAddC carry add58_i_496_L (bvVar add39_i_495_L) (bvVar mul38_i_482_L);
bvAdc add58_i_496_H (bvVar add39_i_495_H) (bvVar mul38_i_482_H) carry;
(*  %mul61.i.497 = mul nuw i128 %conv21.i.474, %conv55.i.493 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv21_i_474_L) (bvVar conv55_i_493_L);
bvMul tmpHL_L (bvVar conv21_i_474_H) (bvVar conv55_i_493_L);
bvMul tmpLH_L (bvVar conv21_i_474_L) (bvVar conv55_i_493_H);
bvAssign mul61_i_497_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul61_i_497_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add62.i.498 = add i128 %add44.i.486, %mul61.i.497 *)
bvAddC carry add62_i_498_L (bvVar add44_i_486_L) (bvVar mul61_i_497_L);
bvAdc add62_i_498_H (bvVar add44_i_486_H) (bvVar mul61_i_497_H) carry;
(*  %shr.i.499 = lshr i128 %add49.i.490, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add49_i_490_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add49_i_490_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr_i_499_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr_i_499_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv64.i.500 = and i128 %shr.i.499, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv64_i_500_L (bvVar shr_i_499_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv64_i_500_L) (bvvar shr_i_499_L);
bvAssume bveEq (bvvar conv64_i_500_L) (bvvar shr_i_499_L) | bvrTrue;
bvAndb conv64_i_500_H (bvVar shr_i_499_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv64_i_500_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv64_i_500_H) (bvconst 0) | bvrTrue;
(*  %add.i.501 = add i128 %mul15.i.470, %mul30.i.480 *)
bvAddC carry add_i_501_L (bvVar mul15_i_470_L) (bvVar mul30_i_480_L);
bvAdc add_i_501_H (bvVar mul15_i_470_H) (bvVar mul30_i_480_H) carry;
(*  %add31.i.502 = add i128 %add.i.501, %mul22.i.475 *)
bvAddC carry add31_i_502_L (bvVar add_i_501_L) (bvVar mul22_i_475_L);
bvAdc add31_i_502_H (bvVar add_i_501_H) (bvVar mul22_i_475_H) carry;
(*  %add65.i.503 = add i128 %add31.i.502, %conv64.i.500 *)
bvAddC carry add65_i_503_L (bvVar add31_i_502_L) (bvVar conv64_i_500_L);
bvAdc add65_i_503_H (bvVar add31_i_502_H) (bvVar conv64_i_500_H) carry;
(*  %conv66.i.504 = trunc i128 %add49.i.490 to i64 *)
bvAssign conv66_i_504 (bvVar add49_i_490_L);
(*  %and.i.505 = and i64 %conv66.i.504, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and_i_505 (bvVar conv66_i_504) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and_i_505) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and_i_505) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr67.i.506 = lshr i128 %add58.i.496, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add58_i_496_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add58_i_496_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr67_i_506_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr67_i_506_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv69.i.507 = and i128 %shr67.i.506, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv69_i_507_L (bvVar shr67_i_506_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv69_i_507_L) (bvvar shr67_i_506_L);
bvAssume bveEq (bvvar conv69_i_507_L) (bvvar shr67_i_506_L) | bvrTrue;
bvAndb conv69_i_507_H (bvVar shr67_i_506_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv69_i_507_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv69_i_507_H) (bvconst 0) | bvrTrue;
(*  %add70.i.508 = add i128 %add62.i.498, %conv69.i.507 *)
bvAddC carry add70_i_508_L (bvVar add62_i_498_L) (bvVar conv69_i_507_L);
bvAdc add70_i_508_H (bvVar add62_i_498_H) (bvVar conv69_i_507_H) carry;
(*  %conv71.i.509 = trunc i128 %add58.i.496 to i64 *)
bvAssign conv71_i_509 (bvVar add58_i_496_L);
(*  %and72.i.510 = and i64 %conv71.i.509, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and72_i_510 (bvVar conv71_i_509) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and72_i_510) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and72_i_510) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr73.i.511 = lshr i128 %add65.i.503, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add65_i_503_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add65_i_503_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr73_i_511_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr73_i_511_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv75.i.512 = and i128 %shr73.i.511, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv75_i_512_L (bvVar shr73_i_511_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv75_i_512_L) (bvvar shr73_i_511_L);
bvAssume bveEq (bvvar conv75_i_512_L) (bvvar shr73_i_511_L) | bvrTrue;
bvAndb conv75_i_512_H (bvVar shr73_i_511_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv75_i_512_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv75_i_512_H) (bvconst 0) | bvrTrue;
(*  %add35.i.513 = add i128 %mul34.i.481, %mul52.i.491 *)
bvAddC carry add35_i_513_L (bvVar mul34_i_481_L) (bvVar mul52_i_491_L);
bvAdc add35_i_513_H (bvVar mul34_i_481_H) (bvVar mul52_i_491_H) carry;
(*  %add53.i.514 = add i128 %add35.i.513, %mul18.i.472 *)
bvAddC carry add53_i_514_L (bvVar add35_i_513_L) (bvVar mul18_i_472_L);
bvAdc add53_i_514_H (bvVar add35_i_513_H) (bvVar mul18_i_472_H) carry;
(*  %add76.i.515 = add i128 %add53.i.514, %conv75.i.512 *)
bvAddC carry add76_i_515_L (bvVar add53_i_514_L) (bvVar conv75_i_512_L);
bvAdc add76_i_515_H (bvVar add53_i_514_H) (bvVar conv75_i_512_H) carry;
(*  %conv77.i.516 = trunc i128 %add65.i.503 to i64 *)
bvAssign conv77_i_516 (bvVar add65_i_503_L);
(*  %and78.i.517 = and i64 %conv77.i.516, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and78_i_517 (bvVar conv77_i_516) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and78_i_517) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and78_i_517) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr79.i.518 = lshr i128 %add70.i.508, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add70_i_508_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add70_i_508_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr79_i_518_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr79_i_518_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv80.i.519 = trunc i128 %shr79.i.518 to i64 *)
bvAssign conv80_i_519 (bvVar shr79_i_518_L);
(*  %add81.i.520 = add i64 %conv80.i.519, %and.i.505 *)
bvAdd add81_i_520 (bvVar conv80_i_519) (bvVar and_i_505);
(*  %conv82.i.521 = trunc i128 %add70.i.508 to i64 *)
bvAssign conv82_i_521 (bvVar add70_i_508_L);
(*  %and83.i.522 = and i64 %conv82.i.521, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and83_i_522 (bvVar conv82_i_521) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and83_i_522) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and83_i_522) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr84.i.523 = lshr i128 %add76.i.515, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add76_i_515_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add76_i_515_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr84_i_523_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr84_i_523_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv85.i.524 = trunc i128 %shr84.i.523 to i64 *)
bvAssign conv85_i_524 (bvVar shr84_i_523_L);
(*  %mul86.i.525 = mul i64 %conv85.i.524, 19 *)
bvMul mul86_i_525 (bvVar conv85_i_524) (bvConst 19);
(*  %add87.i.526 = add i64 %mul86.i.525, %and72.i.510 *)
bvAdd add87_i_526 (bvVar mul86_i_525) (bvVar and72_i_510);
(*  %conv88.i.527 = trunc i128 %add76.i.515 to i64 *)
bvAssign conv88_i_527 (bvVar add76_i_515_L);
(*  %and89.i.528 = and i64 %conv88.i.527, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and89_i_528 (bvVar conv88_i_527) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and89_i_528) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and89_i_528) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr90.i.529 = lshr i64 %add81.i.520, 51 *)
(* You may need to modify here *)
bvSplit shr90_i_529 tmp_to_be_used (bvVar add81_i_520) 51;
(*  %add91.i.530 = add nuw nsw i64 %shr90.i.529, %and78.i.517 *)
bvAdd add91_i_530 (bvVar shr90_i_529) (bvVar and78_i_517);
(*  %fold.i.531 = add i64 %conv80.i.519, %conv66.i.504 *)
(* == modified == *)
(*bvAdd fold_i_531 (bvVar conv80_i_519) (bvVar conv66_i_504);*)
bvAddC c fold_i_531 (bvVar conv80_i_519) (bvVar conv66_i_504);
(*  %and92.i.532 = and i64 %fold.i.531, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and92_i_532 (bvVar fold_i_531) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and92_i_532) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and92_i_532) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr93.i.533 = lshr i64 %add87.i.526, 51 *)
(* You may need to modify here *)
bvSplit shr93_i_533 tmp_to_be_used (bvVar add87_i_526) 51;
(*  %add94.i.534 = add nuw nsw i64 %shr93.i.533, %and83.i.522 *)
bvAdd add94_i_534 (bvVar shr93_i_533) (bvVar and83_i_522);
(*  %fold180.i.535 = add i64 %mul86.i.525, %conv71.i.509 *)
(* == modified == *)
(*bvAdd fold180_i_535 (bvVar mul86_i_525) (bvVar conv71_i_509);*)
bvAddC c fold180_i_535 (bvVar mul86_i_525) (bvVar conv71_i_509);
(*  %and95.i.536 = and i64 %fold180.i.535, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and95_i_536 (bvVar fold180_i_535) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and95_i_536) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and95_i_536) (bvvar tmp_to_be_used) | bvrTrue;
(*  store i64 %and95.i.536, i64* %arraydecay10, align 16, !tbaa !5 *)
bvAssign L21_0 (bvVar and95_i_536);
(*  store i64 %add94.i.534, i64* %arrayidx.1.i.109, align 8, !tbaa !5 *)
bvAssign L22_0 (bvVar add94_i_534);
(*  store i64 %and92.i.532, i64* %arrayidx.2.i.115, align 16, !tbaa !5 *)
bvAssign L23_0 (bvVar and92_i_532);
(*  store i64 %add91.i.530, i64* %arrayidx.3.i.121, align 8, !tbaa !5 *)
bvAssign L24_0 (bvVar add91_i_530);
(*  store i64 %and89.i.528, i64* %arrayidx.4.i.127, align 16, !tbaa !5 *)
bvAssign L25_0 (bvVar and89_i_528);
(*  %conv.i.436 = zext i64 %sub.i.542 to i128 *)
bvAssign conv_i_436_L (bvVar sub_i_542);
bvAssign conv_i_436_H (bvConst 0);
(*  %mul.i.437 = mul nuw nsw i128 %conv.i.436, 121666 *)
bvMulf tmpLC_H tmpLC_L (bvVar conv_i_436_L) (bvConst 121666);
bvMul tmpHC_L (bvVar conv_i_436_H) (bvConst 121666);
bvAssign mul_i_437_L (bvVar tmpLC_L);
bvAdd mul_i_437_H (bvVar tmpLC_H) (bvVar tmpHC_L);
(*  %conv2.i = zext i64 %sub6.i.546 to i128 *)
bvAssign conv2_i_L (bvVar sub6_i_546);
bvAssign conv2_i_H (bvConst 0);
(*  %mul3.i = mul nuw nsw i128 %conv2.i, 121666 *)
bvMulf tmpLC_H tmpLC_L (bvVar conv2_i_L) (bvConst 121666);
bvMul tmpHC_L (bvVar conv2_i_H) (bvConst 121666);
bvAssign mul3_i_L (bvVar tmpLC_L);
bvAdd mul3_i_H (bvVar tmpLC_H) (bvVar tmpHC_L);
(*  %conv5.i = zext i64 %sub11.i.551 to i128 *)
bvAssign conv5_i_L (bvVar sub11_i_551);
bvAssign conv5_i_H (bvConst 0);
(*  %mul6.i.440 = mul nuw nsw i128 %conv5.i, 121666 *)
bvMulf tmpLC_H tmpLC_L (bvVar conv5_i_L) (bvConst 121666);
bvMul tmpHC_L (bvVar conv5_i_H) (bvConst 121666);
bvAssign mul6_i_440_L (bvVar tmpLC_L);
bvAdd mul6_i_440_H (bvVar tmpLC_H) (bvVar tmpHC_L);
(*  %conv8.i.442 = zext i64 %sub16.i.556 to i128 *)
bvAssign conv8_i_442_L (bvVar sub16_i_556);
bvAssign conv8_i_442_H (bvConst 0);
(*  %mul9.i.443 = mul nuw nsw i128 %conv8.i.442, 121666 *)
bvMulf tmpLC_H tmpLC_L (bvVar conv8_i_442_L) (bvConst 121666);
bvMul tmpHC_L (bvVar conv8_i_442_H) (bvConst 121666);
bvAssign mul9_i_443_L (bvVar tmpLC_L);
bvAdd mul9_i_443_H (bvVar tmpLC_H) (bvVar tmpHC_L);
(*  %conv11.i.445 = zext i64 %sub21.i.561 to i128 *)
bvAssign conv11_i_445_L (bvVar sub21_i_561);
bvAssign conv11_i_445_H (bvConst 0);
(*  %mul12.i.446 = mul nuw nsw i128 %conv11.i.445, 121666 *)
bvMulf tmpLC_H tmpLC_L (bvVar conv11_i_445_L) (bvConst 121666);
bvMul tmpHC_L (bvVar conv11_i_445_H) (bvConst 121666);
bvAssign mul12_i_446_L (bvVar tmpLC_L);
bvAdd mul12_i_446_H (bvVar tmpLC_H) (bvVar tmpHC_L);
(*  %shr.i.447 = lshr i128 %mul6.i.440, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar mul6_i_440_L) 51;
bvSplit tmpH_h tmpH_l (bvVar mul6_i_440_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr_i_447_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr_i_447_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %add.i.448 = add nuw nsw i128 %mul9.i.443, %shr.i.447 *)
bvAddC carry add_i_448_L (bvVar mul9_i_443_L) (bvVar shr_i_447_L);
bvAdc add_i_448_H (bvVar mul9_i_443_H) (bvVar shr_i_447_H) carry;
(*  %conv15.i = trunc i128 %mul6.i.440 to i64 *)
bvAssign conv15_i (bvVar mul6_i_440_L);
(*  %and.i.449 = and i64 %conv15.i, 2251799813685246 *)
(* You may need to modify here *)
bvAndb and_i_449 (bvVar conv15_i) (bvConst 0x7FFFFFFFFFFFE);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar and_i_449) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and_i_449) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr16.i.450 = lshr i128 %mul.i.437, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar mul_i_437_L) 51;
bvSplit tmpH_h tmpH_l (bvVar mul_i_437_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr16_i_450_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr16_i_450_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %add19.i.451 = add nuw nsw i128 %mul3.i, %shr16.i.450 *)
bvAddC carry add19_i_451_L (bvVar mul3_i_L) (bvVar shr16_i_450_L);
bvAdc add19_i_451_H (bvVar mul3_i_H) (bvVar shr16_i_450_H) carry;
(*  %conv20.i = trunc i128 %mul.i.437 to i64 *)
bvAssign conv20_i (bvVar mul_i_437_L);
(*  %and21.i.452 = and i64 %conv20.i, 2251799813685246 *)
(* You may need to modify here *)
bvAndb and21_i_452 (bvVar conv20_i) (bvConst 0x7FFFFFFFFFFFE);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar and21_i_452) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and21_i_452) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr22.i.453 = lshr i128 %add.i.448, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add_i_448_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add_i_448_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr22_i_453_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr22_i_453_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %add25.i = add nuw nsw i128 %shr22.i.453, %mul12.i.446 *)
bvAddC carry add25_i_L (bvVar shr22_i_453_L) (bvVar mul12_i_446_L);
bvAdc add25_i_H (bvVar shr22_i_453_H) (bvVar mul12_i_446_H) carry;
(*  %conv26.i = trunc i128 %add.i.448 to i64 *)
bvAssign conv26_i (bvVar add_i_448_L);
(*  %and27.i = and i64 %conv26.i, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and27_i (bvVar conv26_i) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and27_i) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and27_i) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr28.i.454 = lshr i128 %add19.i.451, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add19_i_451_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add19_i_451_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr28_i_454_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr28_i_454_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv29.i.455 = trunc i128 %shr28.i.454 to i64 *)
bvAssign conv29_i_455 (bvVar shr28_i_454_L);
(*  %add30.i = add nuw nsw i64 %and.i.449, %conv29.i.455 *)
bvAdd add30_i (bvVar and_i_449) (bvVar conv29_i_455);
(*  %conv31.i = trunc i128 %add19.i.451 to i64 *)
bvAssign conv31_i (bvVar add19_i_451_L);
(*  %and32.i = and i64 %conv31.i, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and32_i (bvVar conv31_i) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and32_i) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and32_i) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr33.i = lshr i128 %add25.i, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add25_i_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add25_i_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr33_i_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr33_i_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv34.i = trunc i128 %shr33.i to i64 *)
bvAssign conv34_i (bvVar shr33_i_L);
(*  %mul35.i = mul nuw nsw i64 %conv34.i, 19 *)
bvMul mul35_i (bvVar conv34_i) (bvConst 19);
(*  %add36.i = add nuw nsw i64 %mul35.i, %and21.i.452 *)
bvAdd add36_i (bvVar mul35_i) (bvVar and21_i_452);
(*  %conv37.i = trunc i128 %add25.i to i64 *)
bvAssign conv37_i (bvVar add25_i_L);
(*  %and38.i = and i64 %conv37.i, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and38_i (bvVar conv37_i) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and38_i) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and38_i) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr39.i = lshr i64 %add30.i, 51 *)
(* You may need to modify here *)
bvSplit shr39_i tmp_to_be_used (bvVar add30_i) 51;
(*  %add40.i = add nuw nsw i64 %and27.i, %shr39.i *)
bvAdd add40_i (bvVar and27_i) (bvVar shr39_i);
(*  %and41.i = and i64 %add30.i, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and41_i (bvVar add30_i) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and41_i) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and41_i) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr42.i = lshr i64 %add36.i, 51 *)
(* You may need to modify here *)
bvSplit shr42_i tmp_to_be_used (bvVar add36_i) 51;
(*  %add43.i = add nuw nsw i64 %shr42.i, %and32.i *)
bvAdd add43_i (bvVar shr42_i) (bvVar and32_i);
(*  %and44.i = and i64 %add36.i, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and44_i (bvVar add36_i) (bvConst 0x7FFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and44_i) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and44_i) (bvvar tmp_to_be_used) | bvrTrue;
(*  store i64 %and44.i, i64* %arraydecay13, align 16, !tbaa !5 *)
bvAssign L1_0 (bvVar and44_i);
(*  store i64 %add43.i, i64* %arrayidx1.i.100, align 8, !tbaa !5 *)
bvAssign L2_0 (bvVar add43_i);
(*  store i64 %and41.i, i64* %arrayidx3.2.i.116, align 16, !tbaa !5 *)
bvAssign L3_0 (bvVar and41_i);
(*  store i64 %add40.i, i64* %arrayidx3.3.i.122, align 8, !tbaa !5 *)
bvAssign L4_0 (bvVar add40_i);
(*  store i64 %and38.i, i64* %arrayidx3.4.i.128, align 16, !tbaa !5 *)
bvAssign L5_0 (bvVar and38_i);
(*  %conv.i.356 = zext i64 %add.i.296 to i128 *)
bvAssign conv_i_356_L (bvVar add_i_296);
bvAssign conv_i_356_H (bvConst 0);
(*  %mul.i.357 = mul nuw i128 %conv.i.356, %conv.i.356 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv_i_356_L) (bvVar conv_i_356_L);
bvMul tmpHL_L (bvVar conv_i_356_H) (bvVar conv_i_356_L);
bvMul tmpLH_L (bvVar conv_i_356_L) (bvVar conv_i_356_H);
bvAssign mul_i_357_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul_i_357_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul6.i.358 = shl i64 %add.i.296, 1 *)
bvShl mul6_i_358 (bvVar add_i_296) 1;
(*  %conv7.i.359 = zext i64 %mul6.i.358 to i128 *)
bvAssign conv7_i_359_L (bvVar mul6_i_358);
bvAssign conv7_i_359_H (bvConst 0);
(*  %conv8.i.360 = zext i64 %add5.i.299 to i128 *)
bvAssign conv8_i_360_L (bvVar add5_i_299);
bvAssign conv8_i_360_H (bvConst 0);
(*  %mul9.i.361 = mul nuw i128 %conv8.i.360, %conv7.i.359 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv8_i_360_L) (bvVar conv7_i_359_L);
bvMul tmpHL_L (bvVar conv8_i_360_H) (bvVar conv7_i_359_L);
bvMul tmpLH_L (bvVar conv8_i_360_L) (bvVar conv7_i_359_H);
bvAssign mul9_i_361_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul9_i_361_H (bvVar tmp) (bvVar tmpLL_H);
(*  %conv11.i.362 = zext i64 %add9.i.303 to i128 *)
bvAssign conv11_i_362_L (bvVar add9_i_303);
bvAssign conv11_i_362_H (bvConst 0);
(*  %mul12.i.363 = mul nuw i128 %conv11.i.362, %conv7.i.359 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv11_i_362_L) (bvVar conv7_i_359_L);
bvMul tmpHL_L (bvVar conv11_i_362_H) (bvVar conv7_i_359_L);
bvMul tmpLH_L (bvVar conv11_i_362_L) (bvVar conv7_i_359_H);
bvAssign mul12_i_363_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul12_i_363_H (bvVar tmp) (bvVar tmpLL_H);
(*  %conv14.i.364 = zext i64 %add13.i.307 to i128 *)
bvAssign conv14_i_364_L (bvVar add13_i_307);
bvAssign conv14_i_364_H (bvConst 0);
(*  %mul15.i.365 = mul nuw i128 %conv14.i.364, %conv7.i.359 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv14_i_364_L) (bvVar conv7_i_359_L);
bvMul tmpHL_L (bvVar conv14_i_364_H) (bvVar conv7_i_359_L);
bvMul tmpLH_L (bvVar conv14_i_364_L) (bvVar conv7_i_359_H);
bvAssign mul15_i_365_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul15_i_365_H (bvVar tmp) (bvVar tmpLL_H);
(*  %conv17.i.366 = zext i64 %add17.i.311 to i128 *)
bvAssign conv17_i_366_L (bvVar add17_i_311);
bvAssign conv17_i_366_H (bvConst 0);
(*  %mul18.i.367 = mul nuw i128 %conv17.i.366, %conv7.i.359 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv17_i_366_L) (bvVar conv7_i_359_L);
bvMul tmpHL_L (bvVar conv17_i_366_H) (bvVar conv7_i_359_L);
bvMul tmpLH_L (bvVar conv17_i_366_L) (bvVar conv7_i_359_H);
bvAssign mul18_i_367_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul18_i_367_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul20.i.368 = mul i64 %add17.i.311, 19 *)
bvMul mul20_i_368 (bvVar add17_i_311) (bvConst 19);
(*  %conv21.i.369 = zext i64 %mul20.i.368 to i128 *)
bvAssign conv21_i_369_L (bvVar mul20_i_368);
bvAssign conv21_i_369_H (bvConst 0);
(*  %mul22.i.370 = mul nuw i128 %conv21.i.369, %conv17.i.366 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv21_i_369_L) (bvVar conv17_i_366_L);
bvMul tmpHL_L (bvVar conv21_i_369_H) (bvVar conv17_i_366_L);
bvMul tmpLH_L (bvVar conv21_i_369_L) (bvVar conv17_i_366_H);
bvAssign mul22_i_370_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul22_i_370_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul25.i.371 = mul nuw i128 %conv8.i.360, %conv8.i.360 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv8_i_360_L) (bvVar conv8_i_360_L);
bvMul tmpHL_L (bvVar conv8_i_360_H) (bvVar conv8_i_360_L);
bvMul tmpLH_L (bvVar conv8_i_360_L) (bvVar conv8_i_360_H);
bvAssign mul25_i_371_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul25_i_371_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add26.i.372 = add i128 %mul12.i.363, %mul25.i.371 *)
bvAddC carry add26_i_372_L (bvVar mul12_i_363_L) (bvVar mul25_i_371_L);
bvAdc add26_i_372_H (bvVar mul12_i_363_H) (bvVar mul25_i_371_H) carry;
(*  %mul27.i.373 = shl i64 %add5.i.299, 1 *)
bvShl mul27_i_373 (bvVar add5_i_299) 1;
(*  %conv28.i.374 = zext i64 %mul27.i.373 to i128 *)
bvAssign conv28_i_374_L (bvVar mul27_i_373);
bvAssign conv28_i_374_H (bvConst 0);
(*  %mul30.i.375 = mul nuw i128 %conv11.i.362, %conv28.i.374 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv11_i_362_L) (bvVar conv28_i_374_L);
bvMul tmpHL_L (bvVar conv11_i_362_H) (bvVar conv28_i_374_L);
bvMul tmpLH_L (bvVar conv11_i_362_L) (bvVar conv28_i_374_H);
bvAssign mul30_i_375_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul30_i_375_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul34.i.376 = mul nuw i128 %conv14.i.364, %conv28.i.374 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv14_i_364_L) (bvVar conv28_i_374_L);
bvMul tmpHL_L (bvVar conv14_i_364_H) (bvVar conv28_i_374_L);
bvMul tmpLH_L (bvVar conv14_i_364_L) (bvVar conv28_i_374_H);
bvAssign mul34_i_376_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul34_i_376_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul38.i.377 = mul nuw i128 %conv21.i.369, %conv28.i.374 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv21_i_369_L) (bvVar conv28_i_374_L);
bvMul tmpHL_L (bvVar conv21_i_369_H) (bvVar conv28_i_374_L);
bvMul tmpLH_L (bvVar conv21_i_369_L) (bvVar conv28_i_374_H);
bvAssign mul38_i_377_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul38_i_377_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul41.i.378 = mul i64 %add13.i.307, 19 *)
bvMul mul41_i_378 (bvVar add13_i_307) (bvConst 19);
(*  %conv42.i.379 = zext i64 %mul41.i.378 to i128 *)
bvAssign conv42_i_379_L (bvVar mul41_i_378);
bvAssign conv42_i_379_H (bvConst 0);
(*  %mul43.i.380 = mul nuw i128 %conv42.i.379, %conv14.i.364 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv42_i_379_L) (bvVar conv14_i_364_L);
bvMul tmpHL_L (bvVar conv42_i_379_H) (bvVar conv14_i_364_L);
bvMul tmpLH_L (bvVar conv42_i_379_L) (bvVar conv14_i_364_H);
bvAssign mul43_i_380_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul43_i_380_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add44.i.381 = add i128 %mul43.i.380, %mul9.i.361 *)
bvAddC carry add44_i_381_L (bvVar mul43_i_380_L) (bvVar mul9_i_361_L);
bvAdc add44_i_381_H (bvVar mul43_i_380_H) (bvVar mul9_i_361_H) carry;
(*  %mul45.i.382 = shl i64 %add13.i.307, 1 *)
bvShl mul45_i_382 (bvVar add13_i_307) 1;
(*  %conv46.i.383 = zext i64 %mul45.i.382 to i128 *)
bvAssign conv46_i_383_L (bvVar mul45_i_382);
bvAssign conv46_i_383_H (bvConst 0);
(*  %mul48.i.384 = mul nuw i128 %conv21.i.369, %conv46.i.383 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv21_i_369_L) (bvVar conv46_i_383_L);
bvMul tmpHL_L (bvVar conv21_i_369_H) (bvVar conv46_i_383_L);
bvMul tmpLH_L (bvVar conv21_i_369_L) (bvVar conv46_i_383_H);
bvAssign mul48_i_384_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul48_i_384_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add49.i.385 = add i128 %add26.i.372, %mul48.i.384 *)
bvAddC carry add49_i_385_L (bvVar add26_i_372_L) (bvVar mul48_i_384_L);
bvAdc add49_i_385_H (bvVar add26_i_372_H) (bvVar mul48_i_384_H) carry;
(*  %mul52.i.386 = mul nuw i128 %conv11.i.362, %conv11.i.362 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv11_i_362_L) (bvVar conv11_i_362_L);
bvMul tmpHL_L (bvVar conv11_i_362_H) (bvVar conv11_i_362_L);
bvMul tmpLH_L (bvVar conv11_i_362_L) (bvVar conv11_i_362_H);
bvAssign mul52_i_386_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul52_i_386_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul54.i.387 = shl i64 %add9.i.303, 1 *)
bvShl mul54_i_387 (bvVar add9_i_303) 1;
(*  %conv55.i.388 = zext i64 %mul54.i.387 to i128 *)
bvAssign conv55_i_388_L (bvVar mul54_i_387);
bvAssign conv55_i_388_H (bvConst 0);
(*  %mul57.i.389 = mul nuw i128 %conv42.i.379, %conv55.i.388 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv42_i_379_L) (bvVar conv55_i_388_L);
bvMul tmpHL_L (bvVar conv42_i_379_H) (bvVar conv55_i_388_L);
bvMul tmpLH_L (bvVar conv42_i_379_L) (bvVar conv55_i_388_H);
bvAssign mul57_i_389_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul57_i_389_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add39.i.390 = add i128 %mul57.i.389, %mul.i.357 *)
bvAddC carry add39_i_390_L (bvVar mul57_i_389_L) (bvVar mul_i_357_L);
bvAdc add39_i_390_H (bvVar mul57_i_389_H) (bvVar mul_i_357_H) carry;
(*  %add58.i.391 = add i128 %add39.i.390, %mul38.i.377 *)
bvAddC carry add58_i_391_L (bvVar add39_i_390_L) (bvVar mul38_i_377_L);
bvAdc add58_i_391_H (bvVar add39_i_390_H) (bvVar mul38_i_377_H) carry;
(*  %mul61.i.392 = mul nuw i128 %conv21.i.369, %conv55.i.388 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv21_i_369_L) (bvVar conv55_i_388_L);
bvMul tmpHL_L (bvVar conv21_i_369_H) (bvVar conv55_i_388_L);
bvMul tmpLH_L (bvVar conv21_i_369_L) (bvVar conv55_i_388_H);
bvAssign mul61_i_392_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul61_i_392_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add62.i.393 = add i128 %add44.i.381, %mul61.i.392 *)
bvAddC carry add62_i_393_L (bvVar add44_i_381_L) (bvVar mul61_i_392_L);
bvAdc add62_i_393_H (bvVar add44_i_381_H) (bvVar mul61_i_392_H) carry;
(*  %shr.i.394 = lshr i128 %add49.i.385, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used_1 (bvVar add49_i_385_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add49_i_385_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr_i_394_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr_i_394_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv64.i.395 = and i128 %shr.i.394, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv64_i_395_L (bvVar shr_i_394_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv64_i_395_L) (bvvar shr_i_394_L);
bvAssume bveEq (bvvar conv64_i_395_L) (bvvar shr_i_394_L) | bvrTrue;
bvAndb conv64_i_395_H (bvVar shr_i_394_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv64_i_395_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv64_i_395_H) (bvconst 0) | bvrTrue;
(*  %add.i.396 = add i128 %mul15.i.365, %mul30.i.375 *)
bvAddC carry add_i_396_L (bvVar mul15_i_365_L) (bvVar mul30_i_375_L);
bvAdc add_i_396_H (bvVar mul15_i_365_H) (bvVar mul30_i_375_H) carry;
(*  %add31.i.397 = add i128 %add.i.396, %mul22.i.370 *)
bvAddC carry add31_i_397_L (bvVar add_i_396_L) (bvVar mul22_i_370_L);
bvAdc add31_i_397_H (bvVar add_i_396_H) (bvVar mul22_i_370_H) carry;
(*  %add65.i.398 = add i128 %add31.i.397, %conv64.i.395 *)
bvAddC carry add65_i_398_L (bvVar add31_i_397_L) (bvVar conv64_i_395_L);
bvAdc add65_i_398_H (bvVar add31_i_397_H) (bvVar conv64_i_395_H) carry;
(*  %conv66.i.399 = trunc i128 %add49.i.385 to i64 *)
bvAssign conv66_i_399 (bvVar add49_i_385_L);
(*  %shr67.i.401 = lshr i128 %add58.i.391, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used_2 (bvVar add58_i_391_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add58_i_391_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr67_i_401_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr67_i_401_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv69.i.402 = and i128 %shr67.i.401, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv69_i_402_L (bvVar shr67_i_401_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv69_i_402_L) (bvvar shr67_i_401_L);
bvAssume bveEq (bvvar conv69_i_402_L) (bvvar shr67_i_401_L) | bvrTrue;
bvAndb conv69_i_402_H (bvVar shr67_i_401_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv69_i_402_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv69_i_402_H) (bvconst 0) | bvrTrue;
(*  %add70.i.403 = add i128 %add62.i.393, %conv69.i.402 *)
bvAddC carry add70_i_403_L (bvVar add62_i_393_L) (bvVar conv69_i_402_L);
bvAdc add70_i_403_H (bvVar add62_i_393_H) (bvVar conv69_i_402_H) carry;
(*  %conv71.i.404 = trunc i128 %add58.i.391 to i64 *)
bvAssign conv71_i_404 (bvVar add58_i_391_L);
(*  %shr73.i.406 = lshr i128 %add65.i.398, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used_3 (bvVar add65_i_398_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add65_i_398_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr73_i_406_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr73_i_406_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv75.i.407 = and i128 %shr73.i.406, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv75_i_407_L (bvVar shr73_i_406_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv75_i_407_L) (bvvar shr73_i_406_L);
bvAssume bveEq (bvvar conv75_i_407_L) (bvvar shr73_i_406_L) | bvrTrue;
bvAndb conv75_i_407_H (bvVar shr73_i_406_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv75_i_407_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv75_i_407_H) (bvconst 0) | bvrTrue;
(*  %add35.i.408 = add i128 %mul34.i.376, %mul52.i.386 *)
bvAddC carry add35_i_408_L (bvVar mul34_i_376_L) (bvVar mul52_i_386_L);
bvAdc add35_i_408_H (bvVar mul34_i_376_H) (bvVar mul52_i_386_H) carry;
(*  %add53.i.409 = add i128 %add35.i.408, %mul18.i.367 *)
bvAddC carry add53_i_409_L (bvVar add35_i_408_L) (bvVar mul18_i_367_L);
bvAdc add53_i_409_H (bvVar add35_i_408_H) (bvVar mul18_i_367_H) carry;
(*  %add76.i.410 = add i128 %add53.i.409, %conv75.i.407 *)
bvAddC carry add76_i_410_L (bvVar add53_i_409_L) (bvVar conv75_i_407_L);
bvAdc add76_i_410_H (bvVar add53_i_409_H) (bvVar conv75_i_407_H) carry;
(*  %shr79.i.413 = lshr i128 %add70.i.403, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used_4 (bvVar add70_i_403_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add70_i_403_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr79_i_413_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr79_i_413_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv80.i.414 = trunc i128 %shr79.i.413 to i64 *)
bvAssign conv80_i_414 (bvVar shr79_i_413_L);
(*  %shr84.i.418 = lshr i128 %add76.i.410, 51 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used_5 (bvVar add76_i_410_L) 51;
bvSplit tmpH_h tmpH_l (bvVar add76_i_410_H) 51;
bvShl tmp (bvVar tmpH_l) 13;
bvAdd shr84_i_418_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr84_i_418_H (bvVar tmpH_h);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar tmpH_h) (bvconst 64 0);
bvAssume bveEq (bvvar tmpH_h) (bvconst 0) | bvrTrue;
(*  %conv85.i.419 = trunc i128 %shr84.i.418 to i64 *)
bvAssign conv85_i_419 (bvVar shr84_i_418_L);
(*  %mul86.i.420 = mul i64 %conv85.i.419, 19 *)
bvMul mul86_i_420 (bvVar conv85_i_419) (bvConst 19);
(*  %85 = load i64, i64* %arraydecay23, align 16, !tbaa !5 *)
bvAssign v85 (bvVar L6_0);
(*  %add.i.335 = add i64 %and44.i, %85 *)
bvAdd add_i_335 (bvVar and44_i) (bvVar v85);
(*  store i64 %add.i.335, i64* %arraydecay23, align 16, !tbaa !5 *)
bvAssign L6_0 (bvVar add_i_335);
(*  %86 = load <2 x i64>, <2 x i64>* %46, align 8, !tbaa !5 *)
(* == modified == *)
(*bvAssign v86_0 (bvVar L26_0);*)
(*bvAssign v86_1 (bvVar L26_8);*)
bvAssign v86_0 (bvVar L7_0);
bvAssign v86_1 (bvVar L8_0);
(*  %87 = insertelement <2 x i64> undef, i64 %add43.i, i32 0 *)
bvNondet undef_0;
bvAssign v87_0 (bvVar add43_i);
bvNondet undef_1;
bvAssign v87_1 (bvVar undef_1);
(*  %88 = insertelement <2 x i64> %87, i64 %and41.i, i32 1 *)
bvAssign v88_0 (bvVar v87_0);
bvAssign v88_1 (bvVar and41_i);
(*  %89 = add <2 x i64> %88, %86 *)
bvAdd v89_0 (bvVar v88_0) (bvVar v86_0);
bvAdd v89_1 (bvVar v88_1) (bvVar v86_1);
(*  store <2 x i64> %89, <2 x i64>* %47, align 8, !tbaa !5 *)
(* == modified, due to %47==%46 == *)
(*bvAssign L27_0 (bvVar v89_0);*)
(*bvAssign L27_8 (bvVar v89_1);*)
bvAssign L7_0 (bvVar v89_0);
bvAssign L8_0 (bvVar v89_1);
(*  %90 = load <2 x i64>, <2 x i64>* %48, align 8, !tbaa !5 *)
(* == modified == *)
(*bvAssign v90_0 (bvVar L28_0);*)
(*bvAssign v90_1 (bvVar L28_8);*)
bvAssign v90_0 (bvVar L9_0);
bvAssign v90_1 (bvVar L10_0);
(*  %91 = insertelement <2 x i64> undef, i64 %add40.i, i32 0 *)
bvNondet undef_0;
bvAssign v91_0 (bvVar add40_i);
bvNondet undef_1;
bvAssign v91_1 (bvVar undef_1);
(*  %92 = insertelement <2 x i64> %91, i64 %and38.i, i32 1 *)
bvAssign v92_0 (bvVar v91_0);
bvAssign v92_1 (bvVar and38_i);
(*  %93 = add <2 x i64> %92, %90 *)
bvAdd v93_0 (bvVar v92_0) (bvVar v90_0);
bvAdd v93_1 (bvVar v92_1) (bvVar v90_1);
(*  store <2 x i64> %93, <2 x i64>* %49, align 8, !tbaa !5 *)
(* == modified, due to %49==%48 == *)
(*bvAssign L29_0 (bvVar v93_0);*)
(*bvAssign L29_8 (bvVar v93_1);*)
bvAssign L9_0 (bvVar v93_0);
bvAssign L10_0 (bvVar v93_1);
(*  call fastcc void @fe51_mul(i64* %arraydecay13, i64* %arraydecay, i64* %arraydecay10) *)
call fe51_mul(arraydecay_0, arraydecay_8, arraydecay_16, arraydecay_24, arraydecay_32, L21_0, L22_0, L23_0, L24_0, L25_0, L1_0, L2_0, L3_0, L4_0, L5_0);
(*  call fastcc void @fe51_mul(i64* %arraydecay10, i64* %arraydecay26, i64* %arraydecay23) *)
call fe51_mul(L11_0, L12_0, L13_0, L14_0, L15_0, L6_0, L7_0, L8_0, L9_0, L10_0, L21_0, L22_0, L23_0, L24_0, L25_0);
(*  %cmp = icmp sgt i32 %pos.0615, 0 *)
(*  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end *)


(* == the following code is translated from the block == *)
(* == for.body.for.body_crit_edge == *)


(*  %dec = add nsw i32 %pos.0615, -1 *)
(*  %fold180.i.430 = add i64 %mul86.i.420, %conv71.i.404 *)
(* == modified == *)
(*bvAdd fold180_i_430 (bvVar mul86_i_420) (bvVar conv71_i_404);*)
bvAddC c fold180_i_430 (bvVar mul86_i_420) (bvVar conv71_i_404);
(*  %and95.i.431 = and i64 %fold180.i.430, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
(* == modified == *)
bvAndb and95_i_431 (bvVar fold180_i_430) (bvConst 0x7FFFFFFFFFFFF);
(*bvAssert bveTrue | bvrEq (bvvar and95_i_431) (bvvar tmp_to_be_used);*)
(*bvAssume bveEq (bvvar and95_i_431) (bvvar tmp_to_be_used) | bvrTrue;*)
(*  %and72.i.405 = and i64 %conv71.i.404, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and72_i_405 (bvVar conv71_i_404) (bvConst 0x7FFFFFFFFFFFF);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar and72_i_405) (bvvar tmp_to_be_used_2);
bvAssume bveEq (bvvar and72_i_405) (bvvar tmp_to_be_used_2) | bvrTrue;
(*  %add87.i.421 = add i64 %mul86.i.420, %and72.i.405 *)
bvAdd add87_i_421 (bvVar mul86_i_420) (bvVar and72_i_405);
(*  %shr93.i.428 = lshr i64 %add87.i.421, 51 *)
(* You may need to modify here *)
bvSplit shr93_i_428 tmp_to_be_used (bvVar add87_i_421) 51;
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar and95_i_431) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and95_i_431) (bvvar tmp_to_be_used) | bvrTrue;
(*  %conv82.i.416 = trunc i128 %add70.i.403 to i64 *)
bvAssign conv82_i_416 (bvVar add70_i_403_L);
(*  %and83.i.417 = and i64 %conv82.i.416, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and83_i_417 (bvVar conv82_i_416) (bvConst 0x7FFFFFFFFFFFF);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar and83_i_417) (bvvar tmp_to_be_used_4);
bvAssume bveEq (bvvar and83_i_417) (bvvar tmp_to_be_used_4) | bvrTrue;
(*  %add94.i.429 = add nuw nsw i64 %shr93.i.428, %and83.i.417 *)
bvAdd add94_i_429 (bvVar shr93_i_428) (bvVar and83_i_417);
(*  %fold.i.426 = add i64 %conv80.i.414, %conv66.i.399 *)
(* == modified == *)
(*bvAdd fold_i_426 (bvVar conv80_i_414) (bvVar conv66_i_399);*)
bvAddC c fold_i_426 (bvVar conv80_i_414) (bvVar conv66_i_399);
(*  %and92.i.427 = and i64 %fold.i.426, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and92_i_427 (bvVar fold_i_426) (bvConst 0x7FFFFFFFFFFFF);
(* == modified == *)
(*bvAssert bveTrue | bvrEq (bvvar and92_i_427) (bvvar tmp_to_be_used);*)
(*bvAssume bveEq (bvvar and92_i_427) (bvvar tmp_to_be_used) | bvrTrue;*)
(*  %and.i.400 = and i64 %conv66.i.399, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and_i_400 (bvVar conv66_i_399) (bvConst 0x7FFFFFFFFFFFF);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar and_i_400) (bvvar tmp_to_be_used_1);
bvAssume bveEq (bvvar and_i_400) (bvvar tmp_to_be_used_1) | bvrTrue;
(*  %add81.i.415 = add i64 %conv80.i.414, %and.i.400 *)
bvAdd add81_i_415 (bvVar conv80_i_414) (bvVar and_i_400);
(*  %shr90.i.424 = lshr i64 %add81.i.415, 51 *)
(* You may need to modify here *)
bvSplit shr90_i_424 tmp_to_be_used (bvVar add81_i_415) 51;
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar and92_i_427) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and92_i_427) (bvvar tmp_to_be_used) | bvrTrue;
(*  %conv77.i.411 = trunc i128 %add65.i.398 to i64 *)
bvAssign conv77_i_411 (bvVar add65_i_398_L);
(*  %and78.i.412 = and i64 %conv77.i.411, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and78_i_412 (bvVar conv77_i_411) (bvConst 0x7FFFFFFFFFFFF);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar and78_i_412) (bvvar tmp_to_be_used_3);
bvAssume bveEq (bvvar and78_i_412) (bvvar tmp_to_be_used_3) | bvrTrue;
(*  %add91.i.425 = add nuw nsw i64 %shr90.i.424, %and78.i.412 *)
bvAdd add91_i_425 (bvVar shr90_i_424) (bvVar and78_i_412);
(*  %conv88.i.422 = trunc i128 %add76.i.410 to i64 *)
bvAssign conv88_i_422 (bvVar add76_i_410_L);
(*  %and89.i.423 = and i64 %conv88.i.422, 2251799813685247 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and89_i_423 (bvVar conv88_i_422) (bvConst 0x7FFFFFFFFFFFF);
(* == modified == *)
bvAssert bveTrue | bvrEq (bvvar and89_i_423) (bvvar tmp_to_be_used_5);
bvAssume bveEq (bvvar and89_i_423) (bvvar tmp_to_be_used_5) | bvrTrue;


bvAssign X4_0 (bvVar L16_0);
bvAssign X4_1 (bvVar L17_0);
bvAssign X4_2 (bvVar L18_0);
bvAssign X4_3 (bvVar L19_0);
bvAssign X4_4 (bvVar L20_0);
bvAssign Z4_0 (bvVar L21_0);
bvAssign Z4_1 (bvVar L22_0);
bvAssign Z4_2 (bvVar L23_0);
bvAssign Z4_3 (bvVar L24_0);
bvAssign Z4_4 (bvVar L25_0);
bvAssign X5_0 (bvVar and95_i_431);
bvAssign X5_1 (bvVar add94_i_429);
bvAssign X5_2 (bvVar and92_i_427);
bvAssign X5_3 (bvVar add91_i_425);
bvAssign X5_4 (bvVar and89_i_423);
bvAssign Z5_0 (bvVar L1_0);
bvAssign Z5_1 (bvVar L2_0);
bvAssign Z5_2 (bvVar L3_0);
bvAssign Z5_3 (bvVar L4_0);
bvAssign Z5_4 (bvVar L5_0);

{
  bveands
  [
    (* condition 1 *)
    
    bveEqMod
      (limbs 51 [bvevars X4|0..4])
      (bvesq (bvesub
                (bvesq (limbs 51 [bvevars X2|0..4]))
                (bvesq (limbs 51 [bvevars Z2|0..4]))))
      (bveconst (2^255 - 19)),
    

    (* condition 2 *)
    
    bveEqMod
      (limbs 51 [bvevars Z4|0..4])
      (bvemuls
       [
         bveconst 4,
         limbs 51 [bvevars X2|0..4],
         limbs 51 [bvevars Z2|0..4],
         bveadds [bvesq (limbs 51 [bvevars X2|0..4]),
                  bvemuls [bveconst 486662,
                           limbs 51 [bvevars X2|0..4],
                           limbs 51 [bvevars Z2|0..4]],
                  bvesq (limbs 51 [bvevars Z2|0..4])]
       ])
      (bveconst (2^255 - 19)),
    

    (* condition 3-1 *)

    bveEqMod
      (limbs 51 [bvevars X5|0..4])
      (bvemul
         (bveconst 4)
         (bvesq (bvesub
	           (bvemul (limbs 51 [bvevars X2|0..4]) (limbs 51 [bvevars X3|0..4]))
                   (bvemul (limbs 51 [bvevars Z2|0..4]) (limbs 51 [bvevars Z3|0..4])))))
      (bveconst (2^255 - 19)),
    

    (* condition 3-2 *)

    bveEqMod
      (limbs 51 [bvevars Z5|0..4])
      (bvemul
         (bveconst 4)
         (bvemul
	    (limbs 51 [bvevars X1|0..4])
            (bvesq (bvesub
	              (bvemul (limbs 51 [bvevars X3|0..4]) (limbs 51 [bvevars Z2|0..4]))
                      (bvemul (limbs 51 [bvevars X2|0..4]) (limbs 51 [bvevars Z3|0..4]))))))
      (bveconst (2^255 - 19)),
    

    (* condition 3 *)

    bveEqMod
      (bvemul (limbs 51 [bvevars X5|0..4])
              (bvemul (limbs 51 [bvevars X1|0..4])
                      (bvesq (bvesub
		                (bvemul (limbs 51 [bvevars X3|0..4])
                                        (limbs 51 [bvevars Z2|0..4]))
                                (bvemul (limbs 51 [bvevars X2|0..4])
                                        (limbs 51 [bvevars Z3|0..4]))))))
      (bvemul (limbs 51 [bvevars Z5|0..4])
              (bvesq (bvesub
	                (bvemul (limbs 51 [bvevars X2|0..4])
                                (limbs 51 [bvevars X3|0..4]))
                        (bvemul (limbs 51 [bvevars Z2|0..4])
      	                        (limbs 51 [bvevars Z3|0..4])))))
      (bveconst (2^255 - 19))

  ]
  |
  bvrTrue
}

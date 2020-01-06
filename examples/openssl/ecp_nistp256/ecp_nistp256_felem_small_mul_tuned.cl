proc smallfelem_mul (a0, a1, a2, a3, b0, b1, b2, b3; c0_L, c0_H, c1_L, c1_H, c2_L, c2_H, c3_L, c3_H, c4_L, c4_H, c5_L, c5_H, c6_L, c6_H, c7_L, c7_H) =

bvAssign L0_0 (bvVar a0);
bvAssign L0_8 (bvVar a1);
bvAssign L0_16 (bvVar a2);
bvAssign L0_24 (bvVar a3);
bvAssign L1_0 (bvVar b0);
bvAssign L1_8 (bvVar b1);
bvAssign L1_16 (bvVar b2);
bvAssign L1_24 (bvVar b3);

(*  %0 = load i64, i64* %small1, align 8, !tbaa !2 *)
bvAssign v0 (bvVar L0_0);
(*  %conv = zext i64 %0 to i128 *)
bvAssign conv_L (bvVar v0);
bvAssign conv_H (bvConst 0);
(*  %1 = load i64, i64* %small2, align 8, !tbaa !2 *)
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
(*  %shr = lshr i128 %mul, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr_L (bvVar mul_H);
bvAssign shr_H (bvConst 0);
(*  %conv5 = and i128 %mul, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv5_L (bvVar mul_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv5_L) (bvvar mul_L);
bvAssume bveEq (bvvar conv5_L) (bvvar mul_L) | bvrTrue;
bvAndb conv5_H (bvVar mul_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv5_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv5_H) (bvconst 0) | bvrTrue;
(*  store i128 %conv5, i128* %out, align 16, !tbaa !6 *)
bvAssign L2_0 (bvVar conv5_L);
bvAssign L2_8 (bvVar conv5_H);
(*  %arrayidx8 = getelementptr inbounds i128, i128* %out, i64 1 *)
(*  %arrayidx11 = getelementptr inbounds i64, i64* %small2, i64 1 *)
(*  %2 = load i64, i64* %arrayidx11, align 8, !tbaa !2 *)
bvAssign v2 (bvVar L1_8);
(*  %conv12 = zext i64 %2 to i128 *)
bvAssign conv12_L (bvVar v2);
bvAssign conv12_H (bvConst 0);
(*  %mul13 = mul nuw i128 %conv12, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar conv12_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar conv12_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar conv12_L) (bvVar conv_H);
bvAssign mul13_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul13_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr15 = lshr i128 %mul13, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr15_L (bvVar mul13_H);
bvAssign shr15_H (bvConst 0);
(*  %conv17 = and i128 %mul13, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv17_L (bvVar mul13_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv17_L) (bvvar mul13_L);
bvAssume bveEq (bvvar conv17_L) (bvvar mul13_L) | bvrTrue;
bvAndb conv17_H (bvVar mul13_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv17_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv17_H) (bvconst 0) | bvrTrue;
(*  %add = add nuw nsw i128 %conv17, %shr *)
bvAddC carry add_L (bvVar conv17_L) (bvVar shr_L);
bvAdc add_H (bvVar conv17_H) (bvVar shr_H) carry;
(*  %arrayidx20 = getelementptr inbounds i128, i128* %out, i64 2 *)
(*  %arrayidx21 = getelementptr inbounds i64, i64* %small1, i64 1 *)
(*  %3 = load i64, i64* %arrayidx21, align 8, !tbaa !2 *)
bvAssign v3 (bvVar L0_8);
(*  %conv22 = zext i64 %3 to i128 *)
bvAssign conv22_L (bvVar v3);
bvAssign conv22_H (bvConst 0);
(*  %mul25 = mul nuw i128 %conv2, %conv22 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv2_L) (bvVar conv22_L);
bvMul tmpHL_L (bvVar conv2_H) (bvVar conv22_L);
bvMul tmpLH_L (bvVar conv2_L) (bvVar conv22_H);
bvAssign mul25_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul25_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr27 = lshr i128 %mul25, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr27_L (bvVar mul25_H);
bvAssign shr27_H (bvConst 0);
(*  %conv29 = and i128 %mul25, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv29_L (bvVar mul25_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv29_L) (bvvar mul25_L);
bvAssume bveEq (bvvar conv29_L) (bvvar mul25_L) | bvrTrue;
bvAndb conv29_H (bvVar mul25_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv29_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv29_H) (bvconst 0) | bvrTrue;
(*  %add31 = add nuw nsw i128 %conv29, %add *)
bvAddC carry add31_L (bvVar conv29_L) (bvVar add_L);
bvAdc add31_H (bvVar conv29_H) (bvVar add_H) carry;
(*  store i128 %add31, i128* %arrayidx8, align 16, !tbaa !6 *)
bvAssign L2_16 (bvVar add31_L);
bvAssign L2_24 (bvVar add31_H);
(*  %add34 = add nuw nsw i128 %shr27, %shr15 *)
bvAddC carry add34_L (bvVar shr27_L) (bvVar shr15_L);
bvAdc add34_H (bvVar shr27_H) (bvVar shr15_H) carry;
(*  %arrayidx37 = getelementptr inbounds i64, i64* %small2, i64 2 *)
(*  %4 = load i64, i64* %arrayidx37, align 8, !tbaa !2 *)
bvAssign v4 (bvVar L1_16);
(*  %conv38 = zext i64 %4 to i128 *)
bvAssign conv38_L (bvVar v4);
bvAssign conv38_H (bvConst 0);
(*  %mul39 = mul nuw i128 %conv38, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar conv38_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar conv38_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar conv38_L) (bvVar conv_H);
bvAssign mul39_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul39_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr41 = lshr i128 %mul39, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr41_L (bvVar mul39_H);
bvAssign shr41_H (bvConst 0);
(*  %conv43 = and i128 %mul39, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv43_L (bvVar mul39_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv43_L) (bvvar mul39_L);
bvAssume bveEq (bvvar conv43_L) (bvvar mul39_L) | bvrTrue;
bvAndb conv43_H (bvVar mul39_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv43_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv43_H) (bvconst 0) | bvrTrue;
(*  %add45 = add nuw nsw i128 %conv43, %add34 *)
bvAddC carry add45_L (bvVar conv43_L) (bvVar add34_L);
bvAdc add45_H (bvVar conv43_H) (bvVar add34_H) carry;
(*  %arrayidx47 = getelementptr inbounds i128, i128* %out, i64 3 *)
(*  %mul52 = mul nuw i128 %conv12, %conv22 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv12_L) (bvVar conv22_L);
bvMul tmpHL_L (bvVar conv12_H) (bvVar conv22_L);
bvMul tmpLH_L (bvVar conv12_L) (bvVar conv22_H);
bvAssign mul52_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul52_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr54 = lshr i128 %mul52, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr54_L (bvVar mul52_H);
bvAssign shr54_H (bvConst 0);
(*  %conv56 = and i128 %mul52, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv56_L (bvVar mul52_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv56_L) (bvvar mul52_L);
bvAssume bveEq (bvvar conv56_L) (bvvar mul52_L) | bvrTrue;
bvAndb conv56_H (bvVar mul52_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv56_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv56_H) (bvconst 0) | bvrTrue;
(*  %add58 = add nuw nsw i128 %conv56, %add45 *)
bvAddC carry add58_L (bvVar conv56_L) (bvVar add45_L);
bvAdc add58_H (bvVar conv56_H) (bvVar add45_H) carry;
(*  %add61 = add nuw nsw i128 %shr54, %shr41 *)
bvAddC carry add61_L (bvVar shr54_L) (bvVar shr41_L);
bvAdc add61_H (bvVar shr54_H) (bvVar shr41_H) carry;
(*  %arrayidx62 = getelementptr inbounds i64, i64* %small1, i64 2 *)
(*  %5 = load i64, i64* %arrayidx62, align 8, !tbaa !2 *)
bvAssign v5 (bvVar L0_16);
(*  %conv63 = zext i64 %5 to i128 *)
bvAssign conv63_L (bvVar v5);
bvAssign conv63_H (bvConst 0);
(*  %mul66 = mul nuw i128 %conv2, %conv63 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv2_L) (bvVar conv63_L);
bvMul tmpHL_L (bvVar conv2_H) (bvVar conv63_L);
bvMul tmpLH_L (bvVar conv2_L) (bvVar conv63_H);
bvAssign mul66_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul66_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr68 = lshr i128 %mul66, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr68_L (bvVar mul66_H);
bvAssign shr68_H (bvConst 0);
(*  %conv70 = and i128 %mul66, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv70_L (bvVar mul66_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv70_L) (bvvar mul66_L);
bvAssume bveEq (bvvar conv70_L) (bvvar mul66_L) | bvrTrue;
bvAndb conv70_H (bvVar mul66_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv70_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv70_H) (bvconst 0) | bvrTrue;
(*  %add72 = add nuw nsw i128 %conv70, %add58 *)
bvAddC carry add72_L (bvVar conv70_L) (bvVar add58_L);
bvAdc add72_H (bvVar conv70_H) (bvVar add58_H) carry;
(*  store i128 %add72, i128* %arrayidx20, align 16, !tbaa !6 *)
bvAssign L2_32 (bvVar add72_L);
bvAssign L2_40 (bvVar add72_H);
(*  %add75 = add nuw nsw i128 %shr68, %add61 *)
bvAddC carry add75_L (bvVar shr68_L) (bvVar add61_L);
bvAdc add75_H (bvVar shr68_H) (bvVar add61_H) carry;
(*  %arrayidx78 = getelementptr inbounds i64, i64* %small2, i64 3 *)
(*  %6 = load i64, i64* %arrayidx78, align 8, !tbaa !2 *)
bvAssign v6 (bvVar L1_24);
(*  %conv79 = zext i64 %6 to i128 *)
bvAssign conv79_L (bvVar v6);
bvAssign conv79_H (bvConst 0);
(*  %mul80 = mul nuw i128 %conv79, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar conv79_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar conv79_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar conv79_L) (bvVar conv_H);
bvAssign mul80_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul80_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr82 = lshr i128 %mul80, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr82_L (bvVar mul80_H);
bvAssign shr82_H (bvConst 0);
(*  %conv84 = and i128 %mul80, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv84_L (bvVar mul80_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv84_L) (bvvar mul80_L);
bvAssume bveEq (bvvar conv84_L) (bvvar mul80_L) | bvrTrue;
bvAndb conv84_H (bvVar mul80_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv84_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv84_H) (bvconst 0) | bvrTrue;
(*  %add86 = add nuw nsw i128 %conv84, %add75 *)
bvAddC carry add86_L (bvVar conv84_L) (bvVar add75_L);
bvAdc add86_H (bvVar conv84_H) (bvVar add75_H) carry;
(*  %arrayidx88 = getelementptr inbounds i128, i128* %out, i64 4 *)
(*  %mul93 = mul nuw i128 %conv38, %conv22 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv38_L) (bvVar conv22_L);
bvMul tmpHL_L (bvVar conv38_H) (bvVar conv22_L);
bvMul tmpLH_L (bvVar conv38_L) (bvVar conv22_H);
bvAssign mul93_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul93_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr95 = lshr i128 %mul93, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr95_L (bvVar mul93_H);
bvAssign shr95_H (bvConst 0);
(*  %conv97 = and i128 %mul93, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv97_L (bvVar mul93_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv97_L) (bvvar mul93_L);
bvAssume bveEq (bvvar conv97_L) (bvvar mul93_L) | bvrTrue;
bvAndb conv97_H (bvVar mul93_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv97_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv97_H) (bvconst 0) | bvrTrue;
(*  %add99 = add nuw nsw i128 %conv97, %add86 *)
bvAddC carry add99_L (bvVar conv97_L) (bvVar add86_L);
bvAdc add99_H (bvVar conv97_H) (bvVar add86_H) carry;
(*  %add102 = add nuw nsw i128 %shr95, %shr82 *)
bvAddC carry add102_L (bvVar shr95_L) (bvVar shr82_L);
bvAdc add102_H (bvVar shr95_H) (bvVar shr82_H) carry;
(*  %mul107 = mul nuw i128 %conv12, %conv63 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv12_L) (bvVar conv63_L);
bvMul tmpHL_L (bvVar conv12_H) (bvVar conv63_L);
bvMul tmpLH_L (bvVar conv12_L) (bvVar conv63_H);
bvAssign mul107_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul107_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr109 = lshr i128 %mul107, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr109_L (bvVar mul107_H);
bvAssign shr109_H (bvConst 0);
(*  %conv111 = and i128 %mul107, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv111_L (bvVar mul107_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv111_L) (bvvar mul107_L);
bvAssume bveEq (bvvar conv111_L) (bvvar mul107_L) | bvrTrue;
bvAndb conv111_H (bvVar mul107_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv111_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv111_H) (bvconst 0) | bvrTrue;
(*  %add113 = add nuw nsw i128 %conv111, %add99 *)
bvAddC carry add113_L (bvVar conv111_L) (bvVar add99_L);
bvAdc add113_H (bvVar conv111_H) (bvVar add99_H) carry;
(*  %add116 = add nuw nsw i128 %shr109, %add102 *)
bvAddC carry add116_L (bvVar shr109_L) (bvVar add102_L);
bvAdc add116_H (bvVar shr109_H) (bvVar add102_H) carry;
(*  %arrayidx117 = getelementptr inbounds i64, i64* %small1, i64 3 *)
(*  %7 = load i64, i64* %arrayidx117, align 8, !tbaa !2 *)
bvAssign v7 (bvVar L0_24);
(*  %conv118 = zext i64 %7 to i128 *)
bvAssign conv118_L (bvVar v7);
bvAssign conv118_H (bvConst 0);
(*  %mul121 = mul nuw i128 %conv2, %conv118 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv2_L) (bvVar conv118_L);
bvMul tmpHL_L (bvVar conv2_H) (bvVar conv118_L);
bvMul tmpLH_L (bvVar conv2_L) (bvVar conv118_H);
bvAssign mul121_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul121_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr123 = lshr i128 %mul121, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr123_L (bvVar mul121_H);
bvAssign shr123_H (bvConst 0);
(*  %conv125 = and i128 %mul121, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv125_L (bvVar mul121_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv125_L) (bvvar mul121_L);
bvAssume bveEq (bvvar conv125_L) (bvvar mul121_L) | bvrTrue;
bvAndb conv125_H (bvVar mul121_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv125_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv125_H) (bvconst 0) | bvrTrue;
(*  %add127 = add nuw nsw i128 %conv125, %add113 *)
bvAddC carry add127_L (bvVar conv125_L) (bvVar add113_L);
bvAdc add127_H (bvVar conv125_H) (bvVar add113_H) carry;
(*  store i128 %add127, i128* %arrayidx47, align 16, !tbaa !6 *)
bvAssign L2_48 (bvVar add127_L);
bvAssign L2_56 (bvVar add127_H);
(*  %add130 = add nuw nsw i128 %shr123, %add116 *)
bvAddC carry add130_L (bvVar shr123_L) (bvVar add116_L);
bvAdc add130_H (bvVar shr123_H) (bvVar add116_H) carry;
(*  %mul135 = mul nuw i128 %conv79, %conv22 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv79_L) (bvVar conv22_L);
bvMul tmpHL_L (bvVar conv79_H) (bvVar conv22_L);
bvMul tmpLH_L (bvVar conv79_L) (bvVar conv22_H);
bvAssign mul135_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul135_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr137 = lshr i128 %mul135, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr137_L (bvVar mul135_H);
bvAssign shr137_H (bvConst 0);
(*  %conv139 = and i128 %mul135, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv139_L (bvVar mul135_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv139_L) (bvvar mul135_L);
bvAssume bveEq (bvvar conv139_L) (bvvar mul135_L) | bvrTrue;
bvAndb conv139_H (bvVar mul135_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv139_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv139_H) (bvconst 0) | bvrTrue;
(*  %add141 = add nuw nsw i128 %conv139, %add130 *)
bvAddC carry add141_L (bvVar conv139_L) (bvVar add130_L);
bvAdc add141_H (bvVar conv139_H) (bvVar add130_H) carry;
(*  %arrayidx143 = getelementptr inbounds i128, i128* %out, i64 5 *)
(*  %mul148 = mul nuw i128 %conv38, %conv63 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv38_L) (bvVar conv63_L);
bvMul tmpHL_L (bvVar conv38_H) (bvVar conv63_L);
bvMul tmpLH_L (bvVar conv38_L) (bvVar conv63_H);
bvAssign mul148_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul148_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr150 = lshr i128 %mul148, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr150_L (bvVar mul148_H);
bvAssign shr150_H (bvConst 0);
(*  %conv152 = and i128 %mul148, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv152_L (bvVar mul148_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv152_L) (bvvar mul148_L);
bvAssume bveEq (bvvar conv152_L) (bvvar mul148_L) | bvrTrue;
bvAndb conv152_H (bvVar mul148_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv152_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv152_H) (bvconst 0) | bvrTrue;
(*  %add154 = add nuw nsw i128 %conv152, %add141 *)
bvAddC carry add154_L (bvVar conv152_L) (bvVar add141_L);
bvAdc add154_H (bvVar conv152_H) (bvVar add141_H) carry;
(*  %add157 = add nuw nsw i128 %shr150, %shr137 *)
bvAddC carry add157_L (bvVar shr150_L) (bvVar shr137_L);
bvAdc add157_H (bvVar shr150_H) (bvVar shr137_H) carry;
(*  %mul162 = mul nuw i128 %conv12, %conv118 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv12_L) (bvVar conv118_L);
bvMul tmpHL_L (bvVar conv12_H) (bvVar conv118_L);
bvMul tmpLH_L (bvVar conv12_L) (bvVar conv118_H);
bvAssign mul162_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul162_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr164 = lshr i128 %mul162, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr164_L (bvVar mul162_H);
bvAssign shr164_H (bvConst 0);
(*  %conv166 = and i128 %mul162, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv166_L (bvVar mul162_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv166_L) (bvvar mul162_L);
bvAssume bveEq (bvvar conv166_L) (bvvar mul162_L) | bvrTrue;
bvAndb conv166_H (bvVar mul162_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv166_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv166_H) (bvconst 0) | bvrTrue;
(*  %add168 = add nuw nsw i128 %conv166, %add154 *)
bvAddC carry add168_L (bvVar conv166_L) (bvVar add154_L);
bvAdc add168_H (bvVar conv166_H) (bvVar add154_H) carry;
(*  store i128 %add168, i128* %arrayidx88, align 16, !tbaa !6 *)
bvAssign L2_64 (bvVar add168_L);
bvAssign L2_72 (bvVar add168_H);
(*  %add171 = add nuw nsw i128 %shr164, %add157 *)
bvAddC carry add171_L (bvVar shr164_L) (bvVar add157_L);
bvAdc add171_H (bvVar shr164_H) (bvVar add157_H) carry;
(*  %mul176 = mul nuw i128 %conv79, %conv63 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv79_L) (bvVar conv63_L);
bvMul tmpHL_L (bvVar conv79_H) (bvVar conv63_L);
bvMul tmpLH_L (bvVar conv79_L) (bvVar conv63_H);
bvAssign mul176_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul176_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr178 = lshr i128 %mul176, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr178_L (bvVar mul176_H);
bvAssign shr178_H (bvConst 0);
(*  %conv180 = and i128 %mul176, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv180_L (bvVar mul176_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv180_L) (bvvar mul176_L);
bvAssume bveEq (bvvar conv180_L) (bvvar mul176_L) | bvrTrue;
bvAndb conv180_H (bvVar mul176_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv180_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv180_H) (bvconst 0) | bvrTrue;
(*  %add182 = add nuw nsw i128 %conv180, %add171 *)
bvAddC carry add182_L (bvVar conv180_L) (bvVar add171_L);
bvAdc add182_H (bvVar conv180_H) (bvVar add171_H) carry;
(*  %arrayidx184 = getelementptr inbounds i128, i128* %out, i64 6 *)
(*  %mul189 = mul nuw i128 %conv38, %conv118 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv38_L) (bvVar conv118_L);
bvMul tmpHL_L (bvVar conv38_H) (bvVar conv118_L);
bvMul tmpLH_L (bvVar conv38_L) (bvVar conv118_H);
bvAssign mul189_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul189_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr191 = lshr i128 %mul189, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr191_L (bvVar mul189_H);
bvAssign shr191_H (bvConst 0);
(*  %conv193 = and i128 %mul189, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv193_L (bvVar mul189_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv193_L) (bvvar mul189_L);
bvAssume bveEq (bvvar conv193_L) (bvvar mul189_L) | bvrTrue;
bvAndb conv193_H (bvVar mul189_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv193_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv193_H) (bvconst 0) | bvrTrue;
(*  %add195 = add nuw nsw i128 %conv193, %add182 *)
bvAddC carry add195_L (bvVar conv193_L) (bvVar add182_L);
bvAdc add195_H (bvVar conv193_H) (bvVar add182_H) carry;
(*  store i128 %add195, i128* %arrayidx143, align 16, !tbaa !6 *)
bvAssign L2_80 (bvVar add195_L);
bvAssign L2_88 (bvVar add195_H);
(*  %add198 = add nuw nsw i128 %shr191, %shr178 *)
bvAddC carry add198_L (bvVar shr191_L) (bvVar shr178_L);
bvAdc add198_H (bvVar shr191_H) (bvVar shr178_H) carry;
(*  %mul203 = mul nuw i128 %conv79, %conv118 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv79_L) (bvVar conv118_L);
bvMul tmpHL_L (bvVar conv79_H) (bvVar conv118_L);
bvMul tmpLH_L (bvVar conv79_L) (bvVar conv118_H);
bvAssign mul203_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul203_H (bvVar tmp) (bvVar tmpLL_H);
(*  %shr205 = lshr i128 %mul203, 64 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAssign shr205_L (bvVar mul203_H);
bvAssign shr205_H (bvConst 0);
(*  %conv207 = and i128 %mul203, 18446744073709551615 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv207_L (bvVar mul203_L) (bvConst 0xFFFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv207_L) (bvvar mul203_L);
bvAssume bveEq (bvvar conv207_L) (bvvar mul203_L) | bvrTrue;
bvAndb conv207_H (bvVar mul203_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar conv207_H) (bvconst 64 0);
bvAssume bveEq (bvvar conv207_H) (bvconst 0) | bvrTrue;
(*  %add209 = add nuw nsw i128 %conv207, %add198 *)
bvAddC carry add209_L (bvVar conv207_L) (bvVar add198_L);
bvAdc add209_H (bvVar conv207_H) (bvVar add198_H) carry;
(*  store i128 %add209, i128* %arrayidx184, align 16, !tbaa !6 *)
bvAssign L2_96 (bvVar add209_L);
bvAssign L2_104 (bvVar add209_H);
(*  %arrayidx211 = getelementptr inbounds i128, i128* %out, i64 7 *)
(*  store i128 %shr205, i128* %arrayidx211, align 16, !tbaa !6 *)
bvAssign L2_112 (bvVar shr205_L);
bvAssign L2_120 (bvVar shr205_H);
(*  ret void *)

bvAssign c0_L (bvVar L2_0);
bvAssign c0_H (bvVar L2_8);
bvAssign c1_L (bvVar L2_16);
bvAssign c1_H (bvVar L2_24);
bvAssign c2_L (bvVar L2_32);
bvAssign c2_H (bvVar L2_40);
bvAssign c3_L (bvVar L2_48);
bvAssign c3_H (bvVar L2_56);
bvAssign c4_L (bvVar L2_64);
bvAssign c4_H (bvVar L2_72);
bvAssign c5_L (bvVar L2_80);
bvAssign c5_H (bvVar L2_88);
bvAssign c6_L (bvVar L2_96);
bvAssign c6_H (bvVar L2_104);
bvAssign c7_L (bvVar L2_112);
bvAssign c7_H (bvVar L2_120);


proc main (L1_0, L1_8, L1_16, L1_24, L1_32, L1_40, L1_48, L1_56, L2_0, L2_8, L2_16, L2_24) =
{
  bveTrue
  |
  bvrands [
  (* a[i] < 2^109 *)
    limbs 64 [ bvvar L1_0, bvvar L1_8 ] < bvconst 128 (2^109),
    limbs 64 [ bvvar L1_16, bvvar L1_24 ] < bvconst 128 (2^109),
    limbs 64 [ bvvar L1_32, bvvar L1_40 ] < bvconst 128 (2^109),
    limbs 64 [ bvvar L1_48, bvvar L1_56 ] < bvconst 128 (2^109)
  ]
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
(* == modified == *)
(* bvSbb sub_i_H (bvVar conv26_i_H) (bvVar shr22_i_H) carry; *)
bvSbbC b sub_i_H (bvVar conv26_i_H) (bvVar shr22_i_H) carry;
(*  %shl.i = shl nuw nsw i128 %shr22.i, 32 *)
bvConcatShl shl_i_H tmp (bvVar shr22_i_H) (bvVar shr22_i_L) 32;
bvShl shl_i_L (bvVar tmp) 32;
(*  %add32.i = add nsw i128 %sub.i, %shl.i *)
bvAddC carry add32_i_L (bvVar sub_i_L) (bvVar shl_i_L);
(* == modified == *)
(* bvAdc add32_i_H (bvVar sub_i_H) (bvVar shl_i_H) carry; *)
bvAdcC c add32_i_H (bvVar sub_i_H) (bvVar shl_i_H) carry;
bvAssert bveTrue | bvrEq (bvvar b) (bvvar c);
bvAssume bveEq (bvvar b) (bvvar c) | bvrTrue;
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
(* == modified == *)
(* bvSbb sub43_i_H (bvVar conv39_i_H) (bvVar shr34_i_H) carry; *)
bvSbbC b sub43_i_H (bvVar conv39_i_H) (bvVar shr34_i_H) carry;
(*  %shl45.i = shl nuw nsw i128 %shr34.i, 32 *)
bvConcatShl shl45_i_H tmp (bvVar shr34_i_H) (bvVar shr34_i_L) 32;
bvShl shl45_i_L (bvVar tmp) 32;
(* modified *)
bvAssert bveTrue | bvrEq (bvvar shl45_i_H) (bvconst 64 0);
bvAssume bveEq (bvvar shl45_i_H) (bvconst 0) | bvrTrue;
(*  %add47.i = add nsw i128 %sub43.i, %shl45.i *)
bvAddC carry add47_i_L (bvVar sub43_i_L) (bvVar shl45_i_L);
(* == modified == *)
(* bvAdc add47_i_H (bvVar sub43_i_H) (bvVar shl45_i_H) carry; *)
bvAdcC c add47_i_H (bvVar sub43_i_H) (bvVar shl45_i_H) carry;
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
(* == modified == *)
(* bvSub sub58_i (bvConst 0) (bvVar conv57_i); *)
bvSubC high sub58_i (bvConst 0) (bvVar conv57_i);
(*  %conv60.i = trunc i128 %add47.i to i64 *)
bvAssign conv60_i (bvVar add47_i_L);
(*  %and.i = and i64 %conv60.i, 9223372036854775807 *)
(* You may need to modify here *)
(* Heuristics applied. *)
(* == modified == *)
(* bvAndb and_i (bvVar conv60_i) (bvConst 0x7FFFFFFFFFFFFFFF); *)
bvSplit low_h1bit low_l63bit (bvVar conv60_i) 63;
bvSubC mask discarded (bvConst 0) (bvVar low_h1bit);
(*  %neg.i = sub nsw i64 9223372032559808512, %and.i *)
(* == modified == *)
(* bvSub neg_i (bvConst 9223372032559808512) (bvVar and_i); *)
(* if low_l63bit >= 0x7fffffff00000001, then low = 1; otherwise low = 0 *)
bvSubC borrow discarded (bvVar low_l63bit) (bvConst 0x7fffffff00000001);
bvSubC low discarded (bvVar borrow) (bvConst 1);
(*  %sub62177.i = and i64 %neg.i, %conv60.i *)
(*  %and66.i = ashr i64 %sub62177.i, 63 *)
(*  %or.i = or i64 %and66.i, %sub58.i *)
(* modified *)
bvCmove condition_left mask (bvVar low) (bvConst 0);
bvSubC condition_left discarded (bvConst 0) (bvVar condition_left);
bvCmove condition condition_left (bvConst 1) (bvVar high);
bvSubC condition discarded (bvConst 0) (bvVar condition);
(*  %conv68.i = zext i64 %or.i to i128 *)
(*
bvAssign conv68_i_L (bvVar or_i);
bvAssign conv68_i_H (bvConst 0);
*)
(*  %sub70.i = sub i128 %add50.i, %conv68.i *)
(*
bvSubC carry sub70_i_L (bvVar add50_i_L) (bvVar conv68_i_L);
bvSbb sub70_i_H (bvVar add50_i_H) (bvVar conv68_i_H) carry;
*)
(* modified *)
bvCmove kPrime0_L condition (bvConst 0xffffffffffffffff) (bvConst 0);
bvAssign kPrime0_H (bvConst 0);
bvSubC carry sub70_i_L (bvVar add50_i_L) (bvVar kPrime0_L);
bvSbb sub70_i_H (bvVar add50_i_H) (bvVar kPrime0_H) carry;
(*  %and71.i = and i64 %or.i, 4294967295 *)
(* You may need to modify here *)
(* Heuristics applied. *)
(* == modified == *)
(* bvAndb and71_i (bvVar or_i) (bvConst 0xFFFFFFFF); *)
bvCmove and71_i condition (bvConst 0xFFFFFFFF) (bvConst 0);
(*  %conv72.i = zext i64 %and71.i to i128 *)
bvAssign conv72_i_L (bvVar and71_i);
bvAssign conv72_i_H (bvConst 0);
(*  %sub74.i = sub i128 %sub54.i, %conv72.i *)
bvSubC carry sub74_i_L (bvVar sub54_i_L) (bvVar conv72_i_L);
bvSbb sub74_i_H (bvVar sub54_i_H) (bvVar conv72_i_H) carry;
(*  %and75.i = and i64 %or.i, -4294967295 *)
(* You may need to modify here *)
(* == modified == *)
(* bvAndb and75_i (bvVar or_i) (bvConst 0xFFFFFFFF00000001); *)
bvCmove and75_i condition (bvConst 0xFFFFFFFF00000001) (bvConst 0);
(*  %conv76.i = zext i64 %and75.i to i128 *)
bvAssign conv76_i_L (bvVar and75_i);
bvAssign conv76_i_H (bvConst 0);
(*  %sub78.i = sub nsw i128 %add47.i, %conv76.i *)
bvSubC carry sub78_i_L (bvVar add47_i_L) (bvVar conv76_i_L);
bvSbb sub78_i_H (bvVar add47_i_H) (bvVar conv76_i_H) carry;
(* modified *)
bvAssert bvtrue | bveq (bvvar sub78_i_H) (bvconst 64 0);
bvAssume (bvvar sub78_i_H) = (bvconst 0) | bvtrue;
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
(* modified *)
bvAssert bvtrue | bveq (bvvar add104_i_H) (bvconst 64 0);
bvAssume (bvvar add104_i_H) = (bvconst 0) | bvtrue;
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
call smallfelem_mul(L0_0, L0_8, L0_16, L0_24, L2_0, L2_8, L2_16, L2_24, c0_L, c0_H, c1_L, c1_H, c2_L, c2_H, c3_L, c3_H, c4_L, c4_H, c5_L, c5_H, c6_L, c6_H, c7_L, c7_H);
(*  call void @llvm.lifetime.end(i64 32, i8* %0) #1 *)
(*  ret void *)


{
  bveEqMod
    (limbs 64 [ bvvar c0_L,
                bvvar c0_H + bvvar c1_L,
                bvvar c1_H + bvvar c2_L,
                bvvar c2_H + bvvar c3_L,
                bvvar c3_H + bvvar c4_L,
                bvvar c4_H + bvvar c5_L,
                bvvar c5_H + bvvar c6_L,
                bvvar c6_H + bvvar c7_L,
                bvvar c7_H ])
    (
      (limbs 64 [ bvvar L1_0,
                  bvvar L1_8 + bvvar L1_16,
                  bvvar L1_24 + bvvar L1_32,
                  bvvar L1_40 + bvvar L1_48,
                  bvvar L1_56 ])
      *
      (limbs 64 [ bvvar L2_0, bvvar L2_8, bvvar L2_16, bvvar L2_24 ])
    )
    (limbs 64 [ bvconst 18446744073709551615,
                bvconst 4294967295,
                bvconst 0,
                bvconst 18446744069414584321 ])
  |
  (* c[i] < 7 * 2^64 *)
  bvrands [
    limbs 64 [ bvvar c0_L, bvvar c0_H ] < bvconst 128 (7 * 2^64),
    limbs 64 [ bvvar c1_L, bvvar c1_H ] < bvconst 128 (7 * 2^64),
    limbs 64 [ bvvar c2_L, bvvar c2_H ] < bvconst 128 (7 * 2^64),
    limbs 64 [ bvvar c3_L, bvvar c3_H ] < bvconst 128 (7 * 2^64),
    limbs 64 [ bvvar c4_L, bvvar c4_H ] < bvconst 128 (7 * 2^64),
    limbs 64 [ bvvar c5_L, bvvar c5_H ] < bvconst 128 (7 * 2^64),
    limbs 64 [ bvvar c6_L, bvvar c6_H ] < bvconst 128 (7 * 2^64),
    limbs 64 [ bvvar c7_L, bvvar c7_H ] < bvconst 128 (7 * 2^64)
  ]
}

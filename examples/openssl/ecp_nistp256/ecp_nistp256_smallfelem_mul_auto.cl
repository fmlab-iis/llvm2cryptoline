proc main (L1_24, L0_16, L0_8, L1_16, L1_8, L0_24, L1_0, L0_0) =
{
  bveTrue
  |
  bvrTrue
}



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


{
  bveTrue
  |
  bvrTrue
}


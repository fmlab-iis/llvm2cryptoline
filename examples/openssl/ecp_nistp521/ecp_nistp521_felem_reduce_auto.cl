proc main (L0_136, L0_112, L0_104, L0_96, L0_72, L0_120, L0_32, L0_56, L0_48, L0_40, L0_128, L0_80, L0_64, L0_0, L0_24, L0_88, L0_8, L0_16) =
{
  bveTrue
  |
  bvrTrue
}



(*  %0 = load i128, i128* %in, align 16, !tbaa !2 *)
bvAssign v0_L (bvVar L0_0);
bvAssign v0_H (bvVar L0_8);
(*  %conv = trunc i128 %0 to i64 *)
bvAssign conv (bvVar v0_L);
(*  %and = and i64 %conv, 288230376151711743 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and (bvVar conv) (bvConst 0x3FFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and) (bvvar tmp_to_be_used) | bvrTrue;
(*  store i64 %and, i64* %out, align 8, !tbaa !6 *)
bvAssign L1_0 (bvVar and);
(*  %arrayidx2 = getelementptr inbounds i128, i128* %in, i64 1 *)
(*  %1 = load i128, i128* %arrayidx2, align 16, !tbaa !2 *)
bvAssign v1_L (bvVar L0_16);
bvAssign v1_H (bvVar L0_24);
(*  %conv3 = trunc i128 %1 to i64 *)
bvAssign conv3 (bvVar v1_L);
(*  %and4 = and i64 %conv3, 288230376151711743 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and4 (bvVar conv3) (bvConst 0x3FFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and4) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and4) (bvvar tmp_to_be_used) | bvrTrue;
(*  %arrayidx5 = getelementptr inbounds i64, i64* %out, i64 1 *)
(*  %arrayidx6 = getelementptr inbounds i128, i128* %in, i64 2 *)
(*  %2 = load i128, i128* %arrayidx6, align 16, !tbaa !2 *)
bvAssign v2_L (bvVar L0_32);
bvAssign v2_H (bvVar L0_40);
(*  %conv7 = trunc i128 %2 to i64 *)
bvAssign conv7 (bvVar v2_L);
(*  %and8 = and i64 %conv7, 288230376151711743 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and8 (bvVar conv7) (bvConst 0x3FFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and8) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and8) (bvvar tmp_to_be_used) | bvrTrue;
(*  %arrayidx9 = getelementptr inbounds i64, i64* %out, i64 2 *)
(*  %arrayidx10 = getelementptr inbounds i128, i128* %in, i64 3 *)
(*  %3 = load i128, i128* %arrayidx10, align 16, !tbaa !2 *)
bvAssign v3_L (bvVar L0_48);
bvAssign v3_H (bvVar L0_56);
(*  %conv11 = trunc i128 %3 to i64 *)
bvAssign conv11 (bvVar v3_L);
(*  %and12 = and i64 %conv11, 288230376151711743 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and12 (bvVar conv11) (bvConst 0x3FFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and12) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and12) (bvvar tmp_to_be_used) | bvrTrue;
(*  %arrayidx13 = getelementptr inbounds i64, i64* %out, i64 3 *)
(*  %arrayidx14 = getelementptr inbounds i128, i128* %in, i64 4 *)
(*  %4 = load i128, i128* %arrayidx14, align 16, !tbaa !2 *)
bvAssign v4_L (bvVar L0_64);
bvAssign v4_H (bvVar L0_72);
(*  %conv15 = trunc i128 %4 to i64 *)
bvAssign conv15 (bvVar v4_L);
(*  %and16 = and i64 %conv15, 288230376151711743 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and16 (bvVar conv15) (bvConst 0x3FFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and16) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and16) (bvvar tmp_to_be_used) | bvrTrue;
(*  %arrayidx17 = getelementptr inbounds i64, i64* %out, i64 4 *)
(*  %arrayidx18 = getelementptr inbounds i128, i128* %in, i64 5 *)
(*  %5 = load i128, i128* %arrayidx18, align 16, !tbaa !2 *)
bvAssign v5_L (bvVar L0_80);
bvAssign v5_H (bvVar L0_88);
(*  %conv19 = trunc i128 %5 to i64 *)
bvAssign conv19 (bvVar v5_L);
(*  %and20 = and i64 %conv19, 288230376151711743 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and20 (bvVar conv19) (bvConst 0x3FFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and20) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and20) (bvvar tmp_to_be_used) | bvrTrue;
(*  %arrayidx21 = getelementptr inbounds i64, i64* %out, i64 5 *)
(*  %arrayidx22 = getelementptr inbounds i128, i128* %in, i64 6 *)
(*  %6 = load i128, i128* %arrayidx22, align 16, !tbaa !2 *)
bvAssign v6_L (bvVar L0_96);
bvAssign v6_H (bvVar L0_104);
(*  %conv23 = trunc i128 %6 to i64 *)
bvAssign conv23 (bvVar v6_L);
(*  %and24 = and i64 %conv23, 288230376151711743 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and24 (bvVar conv23) (bvConst 0x3FFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and24) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and24) (bvvar tmp_to_be_used) | bvrTrue;
(*  %arrayidx25 = getelementptr inbounds i64, i64* %out, i64 6 *)
(*  %arrayidx26 = getelementptr inbounds i128, i128* %in, i64 7 *)
(*  %7 = load i128, i128* %arrayidx26, align 16, !tbaa !2 *)
bvAssign v7_L (bvVar L0_112);
bvAssign v7_H (bvVar L0_120);
(*  %conv27 = trunc i128 %7 to i64 *)
bvAssign conv27 (bvVar v7_L);
(*  %and28 = and i64 %conv27, 288230376151711743 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and28 (bvVar conv27) (bvConst 0x3FFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and28) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and28) (bvvar tmp_to_be_used) | bvrTrue;
(*  %arrayidx29 = getelementptr inbounds i64, i64* %out, i64 7 *)
(*  %arrayidx30 = getelementptr inbounds i128, i128* %in, i64 8 *)
(*  %8 = load i128, i128* %arrayidx30, align 16, !tbaa !2 *)
bvAssign v8_L (bvVar L0_128);
bvAssign v8_H (bvVar L0_136);
(*  %conv31 = trunc i128 %8 to i64 *)
bvAssign conv31 (bvVar v8_L);
(*  %and32 = and i64 %conv31, 288230376151711743 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and32 (bvVar conv31) (bvConst 0x3FFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and32) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and32) (bvvar tmp_to_be_used) | bvrTrue;
(*  %arrayidx33 = getelementptr inbounds i64, i64* %out, i64 8 *)
(*  %shr = lshr i64 %conv, 58 *)
(* You may need to modify here *)
bvSplit shr tmp_to_be_used (bvVar conv) 58;
(*  %add = add nuw nsw i64 %shr, %and4 *)
bvAdd add (bvVar shr) (bvVar and4);
(*  %9 = lshr i128 %0, 58 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar v0_L) 58;
bvSplit tmpH_h tmpH_l (bvVar v0_H) 58;
bvShl tmp (bvVar tmpH_l) 6;
bvAdd v9_L (bvVar tmp) (bvVar tmpL_h);
bvAssign v9_H (bvVar tmpH_h);
(*  %and40 = trunc i128 %9 to i64 *)
bvAssign and40 (bvVar v9_L);
(*  %shl = and i64 %and40, 288230376151711680 *)
(* You may need to modify here *)
bvAndb shl (bvVar and40) (bvConst 0x3FFFFFFFFFFFFC0);
(*  %add42 = add nuw nsw i64 %shl, %add *)
bvAdd add42 (bvVar shl) (bvVar add);
(*  store i64 %add42, i64* %arrayidx5, align 8, !tbaa !6 *)
bvAssign L1_8 (bvVar add42);
(*  %shr44 = lshr i128 %0, 116 *)
(* You may need to modify here *)
bvSplit shr44_L tmp_to_be_used (bvVar v0_H) 52;
bvAssign shr44_H (bvConst 0);
(*  %shr46 = trunc i128 %shr44 to i64 *)
bvAssign shr46 (bvVar shr44_L);
(*  %add48 = add nuw nsw i64 %shr46, %and8 *)
bvAdd add48 (bvVar shr46) (bvVar and8);
(*  %shr51 = lshr i64 %conv3, 58 *)
(* You may need to modify here *)
bvSplit shr51 tmp_to_be_used (bvVar conv3) 58;
(*  %add53 = add nuw nsw i64 %shr51, %add48 *)
bvAdd add53 (bvVar shr51) (bvVar add48);
(*  %10 = lshr i128 %1, 58 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar v1_L) 58;
bvSplit tmpH_h tmpH_l (bvVar v1_H) 58;
bvShl tmp (bvVar tmpH_l) 6;
bvAdd v10_L (bvVar tmp) (bvVar tmpL_h);
bvAssign v10_H (bvVar tmpH_h);
(*  %and57 = trunc i128 %10 to i64 *)
bvAssign and57 (bvVar v10_L);
(*  %shl58 = and i64 %and57, 288230376151711680 *)
(* You may need to modify here *)
bvAndb shl58 (bvVar and57) (bvConst 0x3FFFFFFFFFFFFC0);
(*  %add60 = add nuw nsw i64 %shl58, %add53 *)
bvAdd add60 (bvVar shl58) (bvVar add53);
(*  store i64 %add60, i64* %arrayidx9, align 8, !tbaa !6 *)
bvAssign L1_16 (bvVar add60);
(*  %shr62 = lshr i128 %1, 116 *)
(* You may need to modify here *)
bvSplit shr62_L tmp_to_be_used (bvVar v1_H) 52;
bvAssign shr62_H (bvConst 0);
(*  %shr64 = trunc i128 %shr62 to i64 *)
bvAssign shr64 (bvVar shr62_L);
(*  %add66 = add nuw nsw i64 %shr64, %and12 *)
bvAdd add66 (bvVar shr64) (bvVar and12);
(*  %shr69 = lshr i64 %conv7, 58 *)
(* You may need to modify here *)
bvSplit shr69 tmp_to_be_used (bvVar conv7) 58;
(*  %add71 = add nuw nsw i64 %shr69, %add66 *)
bvAdd add71 (bvVar shr69) (bvVar add66);
(*  %11 = lshr i128 %2, 58 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar v2_L) 58;
bvSplit tmpH_h tmpH_l (bvVar v2_H) 58;
bvShl tmp (bvVar tmpH_l) 6;
bvAdd v11_L (bvVar tmp) (bvVar tmpL_h);
bvAssign v11_H (bvVar tmpH_h);
(*  %and75 = trunc i128 %11 to i64 *)
bvAssign and75 (bvVar v11_L);
(*  %shl76 = and i64 %and75, 288230376151711680 *)
(* You may need to modify here *)
bvAndb shl76 (bvVar and75) (bvConst 0x3FFFFFFFFFFFFC0);
(*  %add78 = add nuw nsw i64 %shl76, %add71 *)
bvAdd add78 (bvVar shl76) (bvVar add71);
(*  store i64 %add78, i64* %arrayidx13, align 8, !tbaa !6 *)
bvAssign L1_24 (bvVar add78);
(*  %shr80 = lshr i128 %2, 116 *)
(* You may need to modify here *)
bvSplit shr80_L tmp_to_be_used (bvVar v2_H) 52;
bvAssign shr80_H (bvConst 0);
(*  %shr82 = trunc i128 %shr80 to i64 *)
bvAssign shr82 (bvVar shr80_L);
(*  %add84 = add nuw nsw i64 %shr82, %and16 *)
bvAdd add84 (bvVar shr82) (bvVar and16);
(*  %shr87 = lshr i64 %conv11, 58 *)
(* You may need to modify here *)
bvSplit shr87 tmp_to_be_used (bvVar conv11) 58;
(*  %add89 = add nuw nsw i64 %shr87, %add84 *)
bvAdd add89 (bvVar shr87) (bvVar add84);
(*  %12 = lshr i128 %3, 58 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar v3_L) 58;
bvSplit tmpH_h tmpH_l (bvVar v3_H) 58;
bvShl tmp (bvVar tmpH_l) 6;
bvAdd v12_L (bvVar tmp) (bvVar tmpL_h);
bvAssign v12_H (bvVar tmpH_h);
(*  %and93 = trunc i128 %12 to i64 *)
bvAssign and93 (bvVar v12_L);
(*  %shl94 = and i64 %and93, 288230376151711680 *)
(* You may need to modify here *)
bvAndb shl94 (bvVar and93) (bvConst 0x3FFFFFFFFFFFFC0);
(*  %add96 = add nuw nsw i64 %shl94, %add89 *)
bvAdd add96 (bvVar shl94) (bvVar add89);
(*  store i64 %add96, i64* %arrayidx17, align 8, !tbaa !6 *)
bvAssign L1_32 (bvVar add96);
(*  %shr98 = lshr i128 %3, 116 *)
(* You may need to modify here *)
bvSplit shr98_L tmp_to_be_used (bvVar v3_H) 52;
bvAssign shr98_H (bvConst 0);
(*  %shr100 = trunc i128 %shr98 to i64 *)
bvAssign shr100 (bvVar shr98_L);
(*  %add102 = add nuw nsw i64 %shr100, %and20 *)
bvAdd add102 (bvVar shr100) (bvVar and20);
(*  %shr105 = lshr i64 %conv15, 58 *)
(* You may need to modify here *)
bvSplit shr105 tmp_to_be_used (bvVar conv15) 58;
(*  %add107 = add nuw nsw i64 %shr105, %add102 *)
bvAdd add107 (bvVar shr105) (bvVar add102);
(*  %13 = lshr i128 %4, 58 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar v4_L) 58;
bvSplit tmpH_h tmpH_l (bvVar v4_H) 58;
bvShl tmp (bvVar tmpH_l) 6;
bvAdd v13_L (bvVar tmp) (bvVar tmpL_h);
bvAssign v13_H (bvVar tmpH_h);
(*  %and111 = trunc i128 %13 to i64 *)
bvAssign and111 (bvVar v13_L);
(*  %shl112 = and i64 %and111, 288230376151711680 *)
(* You may need to modify here *)
bvAndb shl112 (bvVar and111) (bvConst 0x3FFFFFFFFFFFFC0);
(*  %add114 = add nuw nsw i64 %shl112, %add107 *)
bvAdd add114 (bvVar shl112) (bvVar add107);
(*  store i64 %add114, i64* %arrayidx21, align 8, !tbaa !6 *)
bvAssign L1_40 (bvVar add114);
(*  %shr116 = lshr i128 %4, 116 *)
(* You may need to modify here *)
bvSplit shr116_L tmp_to_be_used (bvVar v4_H) 52;
bvAssign shr116_H (bvConst 0);
(*  %shr118 = trunc i128 %shr116 to i64 *)
bvAssign shr118 (bvVar shr116_L);
(*  %add120 = add nuw nsw i64 %shr118, %and24 *)
bvAdd add120 (bvVar shr118) (bvVar and24);
(*  %shr123 = lshr i64 %conv19, 58 *)
(* You may need to modify here *)
bvSplit shr123 tmp_to_be_used (bvVar conv19) 58;
(*  %add125 = add nuw nsw i64 %shr123, %add120 *)
bvAdd add125 (bvVar shr123) (bvVar add120);
(*  %14 = lshr i128 %5, 58 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar v5_L) 58;
bvSplit tmpH_h tmpH_l (bvVar v5_H) 58;
bvShl tmp (bvVar tmpH_l) 6;
bvAdd v14_L (bvVar tmp) (bvVar tmpL_h);
bvAssign v14_H (bvVar tmpH_h);
(*  %and129 = trunc i128 %14 to i64 *)
bvAssign and129 (bvVar v14_L);
(*  %shl130 = and i64 %and129, 288230376151711680 *)
(* You may need to modify here *)
bvAndb shl130 (bvVar and129) (bvConst 0x3FFFFFFFFFFFFC0);
(*  %add132 = add nuw nsw i64 %shl130, %add125 *)
bvAdd add132 (bvVar shl130) (bvVar add125);
(*  store i64 %add132, i64* %arrayidx25, align 8, !tbaa !6 *)
bvAssign L1_48 (bvVar add132);
(*  %shr134 = lshr i128 %5, 116 *)
(* You may need to modify here *)
bvSplit shr134_L tmp_to_be_used (bvVar v5_H) 52;
bvAssign shr134_H (bvConst 0);
(*  %shr136 = trunc i128 %shr134 to i64 *)
bvAssign shr136 (bvVar shr134_L);
(*  %add138 = add nuw nsw i64 %shr136, %and28 *)
bvAdd add138 (bvVar shr136) (bvVar and28);
(*  %shr141 = lshr i64 %conv23, 58 *)
(* You may need to modify here *)
bvSplit shr141 tmp_to_be_used (bvVar conv23) 58;
(*  %add143 = add nuw nsw i64 %shr141, %add138 *)
bvAdd add143 (bvVar shr141) (bvVar add138);
(*  %15 = lshr i128 %6, 58 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar v6_L) 58;
bvSplit tmpH_h tmpH_l (bvVar v6_H) 58;
bvShl tmp (bvVar tmpH_l) 6;
bvAdd v15_L (bvVar tmp) (bvVar tmpL_h);
bvAssign v15_H (bvVar tmpH_h);
(*  %and147 = trunc i128 %15 to i64 *)
bvAssign and147 (bvVar v15_L);
(*  %shl148 = and i64 %and147, 288230376151711680 *)
(* You may need to modify here *)
bvAndb shl148 (bvVar and147) (bvConst 0x3FFFFFFFFFFFFC0);
(*  %add150 = add nuw nsw i64 %shl148, %add143 *)
bvAdd add150 (bvVar shl148) (bvVar add143);
(*  store i64 %add150, i64* %arrayidx29, align 8, !tbaa !6 *)
bvAssign L1_56 (bvVar add150);
(*  %shr152 = lshr i128 %6, 116 *)
(* You may need to modify here *)
bvSplit shr152_L tmp_to_be_used (bvVar v6_H) 52;
bvAssign shr152_H (bvConst 0);
(*  %shr154 = trunc i128 %shr152 to i64 *)
bvAssign shr154 (bvVar shr152_L);
(*  %add156 = add nuw nsw i64 %shr154, %and32 *)
bvAdd add156 (bvVar shr154) (bvVar and32);
(*  %shr159 = lshr i64 %conv27, 58 *)
(* You may need to modify here *)
bvSplit shr159 tmp_to_be_used (bvVar conv27) 58;
(*  %add161 = add nuw nsw i64 %shr159, %add156 *)
bvAdd add161 (bvVar shr159) (bvVar add156);
(*  %16 = lshr i128 %7, 58 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar v7_L) 58;
bvSplit tmpH_h tmpH_l (bvVar v7_H) 58;
bvShl tmp (bvVar tmpH_l) 6;
bvAdd v16_L (bvVar tmp) (bvVar tmpL_h);
bvAssign v16_H (bvVar tmpH_h);
(*  %and165 = trunc i128 %16 to i64 *)
bvAssign and165 (bvVar v16_L);
(*  %shl166 = and i64 %and165, 288230376151711680 *)
(* You may need to modify here *)
bvAndb shl166 (bvVar and165) (bvConst 0x3FFFFFFFFFFFFC0);
(*  %add168 = add nuw nsw i64 %shl166, %add161 *)
bvAdd add168 (bvVar shl166) (bvVar add161);
(*  store i64 %add168, i64* %arrayidx33, align 8, !tbaa !6 *)
bvAssign L1_64 (bvVar add168);
(*  %17 = load i128, i128* %arrayidx26, align 16, !tbaa !2 *)
bvAssign v17_L (bvVar L0_112);
bvAssign v17_H (bvVar L0_120);
(*  %shr170 = lshr i128 %17, 116 *)
(* You may need to modify here *)
bvSplit shr170_L tmp_to_be_used (bvVar v17_H) 52;
bvAssign shr170_H (bvConst 0);
(*  %shr172 = trunc i128 %shr170 to i64 *)
bvAssign shr172 (bvVar shr170_L);
(*  %18 = load i128, i128* %arrayidx30, align 16, !tbaa !2 *)
bvAssign v18_L (bvVar L0_128);
bvAssign v18_H (bvVar L0_136);
(*  %conv174 = trunc i128 %18 to i64 *)
bvAssign conv174 (bvVar v18_L);
(*  %shr175 = lshr i64 %conv174, 58 *)
(* You may need to modify here *)
bvSplit shr175 tmp_to_be_used (bvVar conv174) 58;
(*  %add176 = add nuw nsw i64 %shr175, %shr172 *)
bvAdd add176 (bvVar shr175) (bvVar shr172);
(*  %19 = lshr i128 %18, 58 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar v18_L) 58;
bvSplit tmpH_h tmpH_l (bvVar v18_H) 58;
bvShl tmp (bvVar tmpH_l) 6;
bvAdd v19_L (bvVar tmp) (bvVar tmpL_h);
bvAssign v19_H (bvVar tmpH_h);
(*  %and180 = trunc i128 %19 to i64 *)
bvAssign and180 (bvVar v19_L);
(*  %shl181 = and i64 %and180, 288230376151711680 *)
(* You may need to modify here *)
bvAndb shl181 (bvVar and180) (bvConst 0x3FFFFFFFFFFFFC0);
(*  %add182 = add nuw nsw i64 %add176, %shl181 *)
bvAdd add182 (bvVar add176) (bvVar shl181);
(*  %shl187 = shl nuw nsw i64 %add182, 1 *)
bvShl shl187 (bvVar add182) 1;
(*  %20 = lshr i128 %18, 115 *)
(* You may need to modify here *)
bvSplit v20_L tmp_to_be_used (bvVar v18_H) 51;
bvAssign v20_H (bvConst 0);
(*  %.tr = trunc i128 %20 to i64 *)
bvAssign _tr (bvVar v20_L);
(*  %shl188 = and i64 %.tr, 8190 *)
(* You may need to modify here *)
bvAndb shl188 (bvVar _tr) (bvConst 0x1FFE);
(*  %21 = load i64, i64* %out, align 8, !tbaa !6 *)
bvAssign v21 (bvVar L1_0);
(*  %add190 = add i64 %shl187, %21 *)
bvAdd add190 (bvVar shl187) (bvVar v21);
(*  %22 = load i64, i64* %arrayidx5, align 8, !tbaa !6 *)
bvAssign v22 (bvVar L1_8);
(*  %add192 = add i64 %shl188, %22 *)
bvAdd add192 (bvVar shl188) (bvVar v22);
(*  %shr194 = lshr i64 %add190, 58 *)
(* You may need to modify here *)
bvSplit shr194 tmp_to_be_used (bvVar add190) 58;
(*  %add196 = add i64 %add192, %shr194 *)
bvAdd add196 (bvVar add192) (bvVar shr194);
(*  store i64 %add196, i64* %arrayidx5, align 8, !tbaa !6 *)
bvAssign L1_8 (bvVar add196);
(*  %and198 = and i64 %add190, 288230376151711743 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and198 (bvVar add190) (bvConst 0x3FFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar and198) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and198) (bvvar tmp_to_be_used) | bvrTrue;
(*  store i64 %and198, i64* %out, align 8, !tbaa !6 *)
bvAssign L1_0 (bvVar and198);
(*  ret void *)


{
  bveTrue
  |
  bvrTrue
}


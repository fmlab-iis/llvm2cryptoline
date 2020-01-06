proc main (L1_104, L1_96, L0_24, L1_32, L1_48, L1_16, L0_8, L0_88, L1_8, L1_56, L1_24, L1_0, L0_16, L0_48, L1_40, L0_104, L1_72, L0_96, L0_72, L1_88, L0_32, L0_56, L1_64, L0_40, L0_80, L0_64, L1_80, L0_0) =
{
  bveTrue
  |
  bvrTrue
}



(*  %0 = load i128, i128* %out, align 16, !tbaa !2 *)
bvAssign v0_L (bvVar L0_0);
bvAssign v0_H (bvVar L0_8);
(*  %add = add i128 %0, 1329227995784915872903807060280344576 *)
bvAddC carry add_L (bvVar v0_L) (bvConst 0);
bvAdc add_H (bvVar v0_H) (bvConst 72057594037927936) carry;
(*  store i128 %add, i128* %out, align 16, !tbaa !2 *)
bvAssign L0_0 (bvVar add_L);
bvAssign L0_8 (bvVar add_H);
(*  %arrayidx1 = getelementptr inbounds i128, i128* %out, i64 1 *)
(*  %1 = load i128, i128* %arrayidx1, align 16, !tbaa !2 *)
bvAssign v1_L (bvVar L0_16);
bvAssign v1_H (bvVar L0_24);
(*  %add2 = add i128 %1, 1329227995784915854457062986570792960 *)
bvAddC carry add2_L (bvVar v1_L) (bvConst 0);
bvAdc add2_H (bvVar v1_H) (bvConst 72057594037927935) carry;
(*  store i128 %add2, i128* %arrayidx1, align 16, !tbaa !2 *)
bvAssign L0_16 (bvVar add2_L);
bvAssign L0_24 (bvVar add2_H);
(*  %arrayidx3 = getelementptr inbounds i128, i128* %out, i64 2 *)
(*  %2 = load i128, i128* %arrayidx3, align 16, !tbaa !2 *)
bvAssign v2_L (bvVar L0_32);
bvAssign v2_H (bvVar L0_40);
(*  %add4 = add i128 %2, 1329227995784915854457062986570792960 *)
bvAddC carry add4_L (bvVar v2_L) (bvConst 0);
bvAdc add4_H (bvVar v2_H) (bvConst 72057594037927935) carry;
(*  store i128 %add4, i128* %arrayidx3, align 16, !tbaa !2 *)
bvAssign L0_32 (bvVar add4_L);
bvAssign L0_40 (bvVar add4_H);
(*  %arrayidx5 = getelementptr inbounds i128, i128* %out, i64 3 *)
(*  %3 = load i128, i128* %arrayidx5, align 16, !tbaa !2 *)
bvAssign v3_L (bvVar L0_48);
bvAssign v3_H (bvVar L0_56);
(*  %add6 = add i128 %3, 1329227995784915872903807060280344576 *)
bvAddC carry add6_L (bvVar v3_L) (bvConst 0);
bvAdc add6_H (bvVar v3_H) (bvConst 72057594037927936) carry;
(*  store i128 %add6, i128* %arrayidx5, align 16, !tbaa !2 *)
bvAssign L0_48 (bvVar add6_L);
bvAssign L0_56 (bvVar add6_H);
(*  %arrayidx7 = getelementptr inbounds i128, i128* %out, i64 4 *)
(*  %4 = load i128, i128* %arrayidx7, align 16, !tbaa !2 *)
bvAssign v4_L (bvVar L0_64);
bvAssign v4_H (bvVar L0_72);
(*  %add8 = add i128 %4, 1329207713375312202786639039319506944 *)
bvAddC carry add8_L (bvVar v4_L) (bvConst 0);
bvAdc add8_H (bvVar v4_H) (bvConst 72056494526300159) carry;
(*  store i128 %add8, i128* %arrayidx7, align 16, !tbaa !2 *)
bvAssign L0_64 (bvVar add8_L);
bvAssign L0_72 (bvVar add8_H);
(*  %arrayidx9 = getelementptr inbounds i128, i128* %out, i64 5 *)
(*  %5 = load i128, i128* %arrayidx9, align 16, !tbaa !2 *)
bvAssign v5_L (bvVar L0_80);
bvAssign v5_H (bvVar L0_88);
(*  %add10 = add i128 %5, 1329227995784915854457062986570792960 *)
bvAddC carry add10_L (bvVar v5_L) (bvConst 0);
bvAdc add10_H (bvVar v5_H) (bvConst 72057594037927935) carry;
(*  store i128 %add10, i128* %arrayidx9, align 16, !tbaa !2 *)
bvAssign L0_80 (bvVar add10_L);
bvAssign L0_88 (bvVar add10_H);
(*  %arrayidx11 = getelementptr inbounds i128, i128* %out, i64 6 *)
(*  %6 = load i128, i128* %arrayidx11, align 16, !tbaa !2 *)
bvAssign v6_L (bvVar L0_96);
bvAssign v6_H (bvVar L0_104);
(*  %add12 = add i128 %6, 1329227995784915854457062986570792960 *)
bvAddC carry add12_L (bvVar v6_L) (bvConst 0);
bvAdc add12_H (bvVar v6_H) (bvConst 72057594037927935) carry;
(*  store i128 %add12, i128* %arrayidx11, align 16, !tbaa !2 *)
bvAssign L0_96 (bvVar add12_L);
bvAssign L0_104 (bvVar add12_H);
(*  %7 = load i128, i128* %in, align 16, !tbaa !2 *)
bvAssign v7_L (bvVar L1_0);
bvAssign v7_H (bvVar L1_8);
(*  %sub = sub i128 %add, %7 *)
bvSubC carry sub_L (bvVar add_L) (bvVar v7_L);
bvSbb sub_H (bvVar add_H) (bvVar v7_H) carry;
(*  store i128 %sub, i128* %out, align 16, !tbaa !2 *)
bvAssign L0_0 (bvVar sub_L);
bvAssign L0_8 (bvVar sub_H);
(*  %arrayidx15 = getelementptr inbounds i128, i128* %in, i64 1 *)
(*  %8 = load i128, i128* %arrayidx15, align 16, !tbaa !2 *)
bvAssign v8_L (bvVar L1_16);
bvAssign v8_H (bvVar L1_24);
(*  %sub17 = sub i128 %add2, %8 *)
bvSubC carry sub17_L (bvVar add2_L) (bvVar v8_L);
bvSbb sub17_H (bvVar add2_H) (bvVar v8_H) carry;
(*  store i128 %sub17, i128* %arrayidx1, align 16, !tbaa !2 *)
bvAssign L0_16 (bvVar sub17_L);
bvAssign L0_24 (bvVar sub17_H);
(*  %arrayidx18 = getelementptr inbounds i128, i128* %in, i64 2 *)
(*  %9 = load i128, i128* %arrayidx18, align 16, !tbaa !2 *)
bvAssign v9_L (bvVar L1_32);
bvAssign v9_H (bvVar L1_40);
(*  %sub20 = sub i128 %add4, %9 *)
bvSubC carry sub20_L (bvVar add4_L) (bvVar v9_L);
bvSbb sub20_H (bvVar add4_H) (bvVar v9_H) carry;
(*  store i128 %sub20, i128* %arrayidx3, align 16, !tbaa !2 *)
bvAssign L0_32 (bvVar sub20_L);
bvAssign L0_40 (bvVar sub20_H);
(*  %arrayidx21 = getelementptr inbounds i128, i128* %in, i64 3 *)
(*  %10 = load i128, i128* %arrayidx21, align 16, !tbaa !2 *)
bvAssign v10_L (bvVar L1_48);
bvAssign v10_H (bvVar L1_56);
(*  %sub23 = sub i128 %add6, %10 *)
bvSubC carry sub23_L (bvVar add6_L) (bvVar v10_L);
bvSbb sub23_H (bvVar add6_H) (bvVar v10_H) carry;
(*  store i128 %sub23, i128* %arrayidx5, align 16, !tbaa !2 *)
bvAssign L0_48 (bvVar sub23_L);
bvAssign L0_56 (bvVar sub23_H);
(*  %arrayidx24 = getelementptr inbounds i128, i128* %in, i64 4 *)
(*  %11 = load i128, i128* %arrayidx24, align 16, !tbaa !2 *)
bvAssign v11_L (bvVar L1_64);
bvAssign v11_H (bvVar L1_72);
(*  %sub26 = sub i128 %add8, %11 *)
bvSubC carry sub26_L (bvVar add8_L) (bvVar v11_L);
bvSbb sub26_H (bvVar add8_H) (bvVar v11_H) carry;
(*  store i128 %sub26, i128* %arrayidx7, align 16, !tbaa !2 *)
bvAssign L0_64 (bvVar sub26_L);
bvAssign L0_72 (bvVar sub26_H);
(*  %arrayidx27 = getelementptr inbounds i128, i128* %in, i64 5 *)
(*  %12 = load i128, i128* %arrayidx27, align 16, !tbaa !2 *)
bvAssign v12_L (bvVar L1_80);
bvAssign v12_H (bvVar L1_88);
(*  %sub29 = sub i128 %add10, %12 *)
bvSubC carry sub29_L (bvVar add10_L) (bvVar v12_L);
bvSbb sub29_H (bvVar add10_H) (bvVar v12_H) carry;
(*  store i128 %sub29, i128* %arrayidx9, align 16, !tbaa !2 *)
bvAssign L0_80 (bvVar sub29_L);
bvAssign L0_88 (bvVar sub29_H);
(*  %arrayidx30 = getelementptr inbounds i128, i128* %in, i64 6 *)
(*  %13 = load i128, i128* %arrayidx30, align 16, !tbaa !2 *)
bvAssign v13_L (bvVar L1_96);
bvAssign v13_H (bvVar L1_104);
(*  %sub32 = sub i128 %add12, %13 *)
bvSubC carry sub32_L (bvVar add12_L) (bvVar v13_L);
bvSbb sub32_H (bvVar add12_H) (bvVar v13_H) carry;
(*  store i128 %sub32, i128* %arrayidx11, align 16, !tbaa !2 *)
bvAssign L0_96 (bvVar sub32_L);
bvAssign L0_104 (bvVar sub32_H);
(*  ret void *)


{
  bveTrue
  |
  bvrTrue
}


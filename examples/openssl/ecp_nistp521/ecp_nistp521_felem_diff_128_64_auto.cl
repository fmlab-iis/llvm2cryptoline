proc main (L0_64, L1_112, L1_104, L1_120, L1_96, L1_40, L0_16, L0_48, L0_32, L1_88, L1_136, L0_40, L1_64, L0_56, L0_24, L1_48, L1_32, L1_56, L1_0, L1_24, L1_128, L1_8, L0_8, L0_0, L1_80, L1_16, L1_72) =
{
  bveTrue
  |
  bvrTrue
}



(*  %0 = load i64, i64* %in, align 8, !tbaa !2 *)
bvAssign v0 (bvVar L0_0);
(*  %sub = sub i64 4611686018427387872, %0 *)
bvSub sub (bvConst 4611686018427387872) (bvVar v0);
(*  %conv = zext i64 %sub to i128 *)
bvAssign conv_L (bvVar sub);
bvAssign conv_H (bvConst 0);
(*  %1 = load i128, i128* %out, align 16, !tbaa !6 *)
bvAssign v1_L (bvVar L1_0);
bvAssign v1_H (bvVar L1_8);
(*  %add = add i128 %conv, %1 *)
bvAddC carry add_L (bvVar conv_L) (bvVar v1_L);
bvAdc add_H (bvVar conv_H) (bvVar v1_H) carry;
(*  store i128 %add, i128* %out, align 16, !tbaa !6 *)
bvAssign L1_0 (bvVar add_L);
bvAssign L1_8 (bvVar add_H);
(*  %arrayidx2 = getelementptr inbounds i64, i64* %in, i64 1 *)
(*  %2 = load i64, i64* %arrayidx2, align 8, !tbaa !2 *)
bvAssign v2 (bvVar L0_8);
(*  %sub3 = sub i64 4611686018427387888, %2 *)
bvSub sub3 (bvConst 4611686018427387888) (bvVar v2);
(*  %conv4 = zext i64 %sub3 to i128 *)
bvAssign conv4_L (bvVar sub3);
bvAssign conv4_H (bvConst 0);
(*  %arrayidx5 = getelementptr inbounds i128, i128* %out, i64 1 *)
(*  %3 = load i128, i128* %arrayidx5, align 16, !tbaa !6 *)
bvAssign v3_L (bvVar L1_16);
bvAssign v3_H (bvVar L1_24);
(*  %add6 = add i128 %conv4, %3 *)
bvAddC carry add6_L (bvVar conv4_L) (bvVar v3_L);
bvAdc add6_H (bvVar conv4_H) (bvVar v3_H) carry;
(*  store i128 %add6, i128* %arrayidx5, align 16, !tbaa !6 *)
bvAssign L1_16 (bvVar add6_L);
bvAssign L1_24 (bvVar add6_H);
(*  %arrayidx7 = getelementptr inbounds i64, i64* %in, i64 2 *)
(*  %4 = load i64, i64* %arrayidx7, align 8, !tbaa !2 *)
bvAssign v4 (bvVar L0_16);
(*  %sub8 = sub i64 4611686018427387888, %4 *)
bvSub sub8 (bvConst 4611686018427387888) (bvVar v4);
(*  %conv9 = zext i64 %sub8 to i128 *)
bvAssign conv9_L (bvVar sub8);
bvAssign conv9_H (bvConst 0);
(*  %arrayidx10 = getelementptr inbounds i128, i128* %out, i64 2 *)
(*  %5 = load i128, i128* %arrayidx10, align 16, !tbaa !6 *)
bvAssign v5_L (bvVar L1_32);
bvAssign v5_H (bvVar L1_40);
(*  %add11 = add i128 %conv9, %5 *)
bvAddC carry add11_L (bvVar conv9_L) (bvVar v5_L);
bvAdc add11_H (bvVar conv9_H) (bvVar v5_H) carry;
(*  store i128 %add11, i128* %arrayidx10, align 16, !tbaa !6 *)
bvAssign L1_32 (bvVar add11_L);
bvAssign L1_40 (bvVar add11_H);
(*  %arrayidx12 = getelementptr inbounds i64, i64* %in, i64 3 *)
(*  %6 = load i64, i64* %arrayidx12, align 8, !tbaa !2 *)
bvAssign v6 (bvVar L0_24);
(*  %sub13 = sub i64 4611686018427387888, %6 *)
bvSub sub13 (bvConst 4611686018427387888) (bvVar v6);
(*  %conv14 = zext i64 %sub13 to i128 *)
bvAssign conv14_L (bvVar sub13);
bvAssign conv14_H (bvConst 0);
(*  %arrayidx15 = getelementptr inbounds i128, i128* %out, i64 3 *)
(*  %7 = load i128, i128* %arrayidx15, align 16, !tbaa !6 *)
bvAssign v7_L (bvVar L1_48);
bvAssign v7_H (bvVar L1_56);
(*  %add16 = add i128 %conv14, %7 *)
bvAddC carry add16_L (bvVar conv14_L) (bvVar v7_L);
bvAdc add16_H (bvVar conv14_H) (bvVar v7_H) carry;
(*  store i128 %add16, i128* %arrayidx15, align 16, !tbaa !6 *)
bvAssign L1_48 (bvVar add16_L);
bvAssign L1_56 (bvVar add16_H);
(*  %arrayidx17 = getelementptr inbounds i64, i64* %in, i64 4 *)
(*  %8 = load i64, i64* %arrayidx17, align 8, !tbaa !2 *)
bvAssign v8 (bvVar L0_32);
(*  %sub18 = sub i64 4611686018427387888, %8 *)
bvSub sub18 (bvConst 4611686018427387888) (bvVar v8);
(*  %conv19 = zext i64 %sub18 to i128 *)
bvAssign conv19_L (bvVar sub18);
bvAssign conv19_H (bvConst 0);
(*  %arrayidx20 = getelementptr inbounds i128, i128* %out, i64 4 *)
(*  %9 = load i128, i128* %arrayidx20, align 16, !tbaa !6 *)
bvAssign v9_L (bvVar L1_64);
bvAssign v9_H (bvVar L1_72);
(*  %add21 = add i128 %conv19, %9 *)
bvAddC carry add21_L (bvVar conv19_L) (bvVar v9_L);
bvAdc add21_H (bvVar conv19_H) (bvVar v9_H) carry;
(*  store i128 %add21, i128* %arrayidx20, align 16, !tbaa !6 *)
bvAssign L1_64 (bvVar add21_L);
bvAssign L1_72 (bvVar add21_H);
(*  %arrayidx22 = getelementptr inbounds i64, i64* %in, i64 5 *)
(*  %10 = load i64, i64* %arrayidx22, align 8, !tbaa !2 *)
bvAssign v10 (bvVar L0_40);
(*  %sub23 = sub i64 4611686018427387888, %10 *)
bvSub sub23 (bvConst 4611686018427387888) (bvVar v10);
(*  %conv24 = zext i64 %sub23 to i128 *)
bvAssign conv24_L (bvVar sub23);
bvAssign conv24_H (bvConst 0);
(*  %arrayidx25 = getelementptr inbounds i128, i128* %out, i64 5 *)
(*  %11 = load i128, i128* %arrayidx25, align 16, !tbaa !6 *)
bvAssign v11_L (bvVar L1_80);
bvAssign v11_H (bvVar L1_88);
(*  %add26 = add i128 %conv24, %11 *)
bvAddC carry add26_L (bvVar conv24_L) (bvVar v11_L);
bvAdc add26_H (bvVar conv24_H) (bvVar v11_H) carry;
(*  store i128 %add26, i128* %arrayidx25, align 16, !tbaa !6 *)
bvAssign L1_80 (bvVar add26_L);
bvAssign L1_88 (bvVar add26_H);
(*  %arrayidx27 = getelementptr inbounds i64, i64* %in, i64 6 *)
(*  %12 = load i64, i64* %arrayidx27, align 8, !tbaa !2 *)
bvAssign v12 (bvVar L0_48);
(*  %sub28 = sub i64 4611686018427387888, %12 *)
bvSub sub28 (bvConst 4611686018427387888) (bvVar v12);
(*  %conv29 = zext i64 %sub28 to i128 *)
bvAssign conv29_L (bvVar sub28);
bvAssign conv29_H (bvConst 0);
(*  %arrayidx30 = getelementptr inbounds i128, i128* %out, i64 6 *)
(*  %13 = load i128, i128* %arrayidx30, align 16, !tbaa !6 *)
bvAssign v13_L (bvVar L1_96);
bvAssign v13_H (bvVar L1_104);
(*  %add31 = add i128 %conv29, %13 *)
bvAddC carry add31_L (bvVar conv29_L) (bvVar v13_L);
bvAdc add31_H (bvVar conv29_H) (bvVar v13_H) carry;
(*  store i128 %add31, i128* %arrayidx30, align 16, !tbaa !6 *)
bvAssign L1_96 (bvVar add31_L);
bvAssign L1_104 (bvVar add31_H);
(*  %arrayidx32 = getelementptr inbounds i64, i64* %in, i64 7 *)
(*  %14 = load i64, i64* %arrayidx32, align 8, !tbaa !2 *)
bvAssign v14 (bvVar L0_56);
(*  %sub33 = sub i64 4611686018427387888, %14 *)
bvSub sub33 (bvConst 4611686018427387888) (bvVar v14);
(*  %conv34 = zext i64 %sub33 to i128 *)
bvAssign conv34_L (bvVar sub33);
bvAssign conv34_H (bvConst 0);
(*  %arrayidx35 = getelementptr inbounds i128, i128* %out, i64 7 *)
(*  %15 = load i128, i128* %arrayidx35, align 16, !tbaa !6 *)
bvAssign v15_L (bvVar L1_112);
bvAssign v15_H (bvVar L1_120);
(*  %add36 = add i128 %conv34, %15 *)
bvAddC carry add36_L (bvVar conv34_L) (bvVar v15_L);
bvAdc add36_H (bvVar conv34_H) (bvVar v15_H) carry;
(*  store i128 %add36, i128* %arrayidx35, align 16, !tbaa !6 *)
bvAssign L1_112 (bvVar add36_L);
bvAssign L1_120 (bvVar add36_H);
(*  %arrayidx37 = getelementptr inbounds i64, i64* %in, i64 8 *)
(*  %16 = load i64, i64* %arrayidx37, align 8, !tbaa !2 *)
bvAssign v16 (bvVar L0_64);
(*  %sub38 = sub i64 4611686018427387888, %16 *)
bvSub sub38 (bvConst 4611686018427387888) (bvVar v16);
(*  %conv39 = zext i64 %sub38 to i128 *)
bvAssign conv39_L (bvVar sub38);
bvAssign conv39_H (bvConst 0);
(*  %arrayidx40 = getelementptr inbounds i128, i128* %out, i64 8 *)
(*  %17 = load i128, i128* %arrayidx40, align 16, !tbaa !6 *)
bvAssign v17_L (bvVar L1_128);
bvAssign v17_H (bvVar L1_136);
(*  %add41 = add i128 %conv39, %17 *)
bvAddC carry add41_L (bvVar conv39_L) (bvVar v17_L);
bvAdc add41_H (bvVar conv39_H) (bvVar v17_H) carry;
(*  store i128 %add41, i128* %arrayidx40, align 16, !tbaa !6 *)
bvAssign L1_128 (bvVar add41_L);
bvAssign L1_136 (bvVar add41_H);
(*  ret void *)


{
  bveTrue
  |
  bvrTrue
}


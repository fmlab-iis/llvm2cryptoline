proc main (L1_48, L0_48, L0_40, L1_40, L1_32, L1_56, L1_0, L1_24, L1_16, L1_8, L0_24, L0_8, L0_16, L0_56, L0_32, L0_0) =
{
  bveTrue
  |
  bvrTrue
}



(*  %0 = load i128, i128* %in, align 16, !tbaa !2 *)
bvAssign v0_L (bvVar L0_0);
bvAssign v0_H (bvVar L0_8);
(*  %1 = load i128, i128* %out, align 16, !tbaa !2 *)
bvAssign v1_L (bvVar L1_0);
bvAssign v1_H (bvVar L1_8);
(*  %add = add i128 %1, %0 *)
bvAddC carry add_L (bvVar v1_L) (bvVar v0_L);
bvAdc add_H (bvVar v1_H) (bvVar v0_H) carry;
(*  store i128 %add, i128* %out, align 16, !tbaa !2 *)
bvAssign L1_0 (bvVar add_L);
bvAssign L1_8 (bvVar add_H);
(*  %arrayidx2 = getelementptr inbounds i128, i128* %in, i64 1 *)
(*  %2 = load i128, i128* %arrayidx2, align 16, !tbaa !2 *)
bvAssign v2_L (bvVar L0_16);
bvAssign v2_H (bvVar L0_24);
(*  %arrayidx3 = getelementptr inbounds i128, i128* %out, i64 1 *)
(*  %3 = load i128, i128* %arrayidx3, align 16, !tbaa !2 *)
bvAssign v3_L (bvVar L1_16);
bvAssign v3_H (bvVar L1_24);
(*  %add4 = add i128 %3, %2 *)
bvAddC carry add4_L (bvVar v3_L) (bvVar v2_L);
bvAdc add4_H (bvVar v3_H) (bvVar v2_H) carry;
(*  store i128 %add4, i128* %arrayidx3, align 16, !tbaa !2 *)
bvAssign L1_16 (bvVar add4_L);
bvAssign L1_24 (bvVar add4_H);
(*  %arrayidx5 = getelementptr inbounds i128, i128* %in, i64 2 *)
(*  %4 = load i128, i128* %arrayidx5, align 16, !tbaa !2 *)
bvAssign v4_L (bvVar L0_32);
bvAssign v4_H (bvVar L0_40);
(*  %arrayidx6 = getelementptr inbounds i128, i128* %out, i64 2 *)
(*  %5 = load i128, i128* %arrayidx6, align 16, !tbaa !2 *)
bvAssign v5_L (bvVar L1_32);
bvAssign v5_H (bvVar L1_40);
(*  %add7 = add i128 %5, %4 *)
bvAddC carry add7_L (bvVar v5_L) (bvVar v4_L);
bvAdc add7_H (bvVar v5_H) (bvVar v4_H) carry;
(*  store i128 %add7, i128* %arrayidx6, align 16, !tbaa !2 *)
bvAssign L1_32 (bvVar add7_L);
bvAssign L1_40 (bvVar add7_H);
(*  %arrayidx8 = getelementptr inbounds i128, i128* %in, i64 3 *)
(*  %6 = load i128, i128* %arrayidx8, align 16, !tbaa !2 *)
bvAssign v6_L (bvVar L0_48);
bvAssign v6_H (bvVar L0_56);
(*  %arrayidx9 = getelementptr inbounds i128, i128* %out, i64 3 *)
(*  %7 = load i128, i128* %arrayidx9, align 16, !tbaa !2 *)
bvAssign v7_L (bvVar L1_48);
bvAssign v7_H (bvVar L1_56);
(*  %add10 = add i128 %7, %6 *)
bvAddC carry add10_L (bvVar v7_L) (bvVar v6_L);
bvAdc add10_H (bvVar v7_H) (bvVar v6_H) carry;
(*  store i128 %add10, i128* %arrayidx9, align 16, !tbaa !2 *)
bvAssign L1_48 (bvVar add10_L);
bvAssign L1_56 (bvVar add10_H);
(*  ret void *)


{
  bveTrue
  |
  bvrTrue
}


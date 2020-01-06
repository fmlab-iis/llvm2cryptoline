proc main (L0_136, L0_112, L0_96, L0_128, L0_80, L0_72, L0_120, L0_32, L0_56, L0_48, L0_40, L0_16, L0_64, L0_0, L0_104, scalar, L0_24, L0_88, L0_8) =
{
  bveTrue
  |
  bvrTrue
}



(*  %conv = zext i64 %scalar to i128 *)
bvAssign conv_L (bvVar scalar);
bvAssign conv_H (bvConst 0);
(*  %0 = load i128, i128* %out, align 16, !tbaa !2 *)
bvAssign v0_L (bvVar L0_0);
bvAssign v0_H (bvVar L0_8);
(*  %mul = mul i128 %0, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar v0_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar v0_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar v0_L) (bvVar conv_H);
bvAssign mul_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul_H (bvVar tmp) (bvVar tmpLL_H);
(*  store i128 %mul, i128* %out, align 16, !tbaa !2 *)
bvAssign L0_0 (bvVar mul_L);
bvAssign L0_8 (bvVar mul_H);
(*  %arrayidx2 = getelementptr inbounds i128, i128* %out, i64 1 *)
(*  %1 = load i128, i128* %arrayidx2, align 16, !tbaa !2 *)
bvAssign v1_L (bvVar L0_16);
bvAssign v1_H (bvVar L0_24);
(*  %mul3 = mul i128 %1, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar v1_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar v1_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar v1_L) (bvVar conv_H);
bvAssign mul3_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul3_H (bvVar tmp) (bvVar tmpLL_H);
(*  store i128 %mul3, i128* %arrayidx2, align 16, !tbaa !2 *)
bvAssign L0_16 (bvVar mul3_L);
bvAssign L0_24 (bvVar mul3_H);
(*  %arrayidx5 = getelementptr inbounds i128, i128* %out, i64 2 *)
(*  %2 = load i128, i128* %arrayidx5, align 16, !tbaa !2 *)
bvAssign v2_L (bvVar L0_32);
bvAssign v2_H (bvVar L0_40);
(*  %mul6 = mul i128 %2, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar v2_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar v2_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar v2_L) (bvVar conv_H);
bvAssign mul6_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul6_H (bvVar tmp) (bvVar tmpLL_H);
(*  store i128 %mul6, i128* %arrayidx5, align 16, !tbaa !2 *)
bvAssign L0_32 (bvVar mul6_L);
bvAssign L0_40 (bvVar mul6_H);
(*  %arrayidx8 = getelementptr inbounds i128, i128* %out, i64 3 *)
(*  %3 = load i128, i128* %arrayidx8, align 16, !tbaa !2 *)
bvAssign v3_L (bvVar L0_48);
bvAssign v3_H (bvVar L0_56);
(*  %mul9 = mul i128 %3, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar v3_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar v3_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar v3_L) (bvVar conv_H);
bvAssign mul9_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul9_H (bvVar tmp) (bvVar tmpLL_H);
(*  store i128 %mul9, i128* %arrayidx8, align 16, !tbaa !2 *)
bvAssign L0_48 (bvVar mul9_L);
bvAssign L0_56 (bvVar mul9_H);
(*  %arrayidx11 = getelementptr inbounds i128, i128* %out, i64 4 *)
(*  %4 = load i128, i128* %arrayidx11, align 16, !tbaa !2 *)
bvAssign v4_L (bvVar L0_64);
bvAssign v4_H (bvVar L0_72);
(*  %mul12 = mul i128 %4, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar v4_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar v4_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar v4_L) (bvVar conv_H);
bvAssign mul12_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul12_H (bvVar tmp) (bvVar tmpLL_H);
(*  store i128 %mul12, i128* %arrayidx11, align 16, !tbaa !2 *)
bvAssign L0_64 (bvVar mul12_L);
bvAssign L0_72 (bvVar mul12_H);
(*  %arrayidx14 = getelementptr inbounds i128, i128* %out, i64 5 *)
(*  %5 = load i128, i128* %arrayidx14, align 16, !tbaa !2 *)
bvAssign v5_L (bvVar L0_80);
bvAssign v5_H (bvVar L0_88);
(*  %mul15 = mul i128 %5, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar v5_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar v5_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar v5_L) (bvVar conv_H);
bvAssign mul15_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul15_H (bvVar tmp) (bvVar tmpLL_H);
(*  store i128 %mul15, i128* %arrayidx14, align 16, !tbaa !2 *)
bvAssign L0_80 (bvVar mul15_L);
bvAssign L0_88 (bvVar mul15_H);
(*  %arrayidx17 = getelementptr inbounds i128, i128* %out, i64 6 *)
(*  %6 = load i128, i128* %arrayidx17, align 16, !tbaa !2 *)
bvAssign v6_L (bvVar L0_96);
bvAssign v6_H (bvVar L0_104);
(*  %mul18 = mul i128 %6, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar v6_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar v6_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar v6_L) (bvVar conv_H);
bvAssign mul18_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul18_H (bvVar tmp) (bvVar tmpLL_H);
(*  store i128 %mul18, i128* %arrayidx17, align 16, !tbaa !2 *)
bvAssign L0_96 (bvVar mul18_L);
bvAssign L0_104 (bvVar mul18_H);
(*  %arrayidx20 = getelementptr inbounds i128, i128* %out, i64 7 *)
(*  %7 = load i128, i128* %arrayidx20, align 16, !tbaa !2 *)
bvAssign v7_L (bvVar L0_112);
bvAssign v7_H (bvVar L0_120);
(*  %mul21 = mul i128 %7, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar v7_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar v7_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar v7_L) (bvVar conv_H);
bvAssign mul21_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul21_H (bvVar tmp) (bvVar tmpLL_H);
(*  store i128 %mul21, i128* %arrayidx20, align 16, !tbaa !2 *)
bvAssign L0_112 (bvVar mul21_L);
bvAssign L0_120 (bvVar mul21_H);
(*  %arrayidx23 = getelementptr inbounds i128, i128* %out, i64 8 *)
(*  %8 = load i128, i128* %arrayidx23, align 16, !tbaa !2 *)
bvAssign v8_L (bvVar L0_128);
bvAssign v8_H (bvVar L0_136);
(*  %mul24 = mul i128 %8, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar v8_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar v8_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar v8_L) (bvVar conv_H);
bvAssign mul24_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul24_H (bvVar tmp) (bvVar tmpLL_H);
(*  store i128 %mul24, i128* %arrayidx23, align 16, !tbaa !2 *)
bvAssign L0_128 (bvVar mul24_L);
bvAssign L0_136 (bvVar mul24_H);
(*  ret void *)


{
  bveTrue
  |
  bvrTrue
}


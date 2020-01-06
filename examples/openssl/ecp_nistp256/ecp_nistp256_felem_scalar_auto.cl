proc main (L0_56, L0_48, L0_40, L0_16, L0_32, L0_0, scalar, L0_24, L0_8) =
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
(*  ret void *)


{
  bveTrue
  |
  bvrTrue
}


proc main (L0_104, L0_80, L0_72, L0_48, L0_24, L0_16, L0_96, scalar_sroa_0_0_insert_insert_H, L0_88, L0_8, scalar_sroa_0_0_insert_insert_L, L0_56, L0_32, L0_0, L0_40, scalar_coerce0, L0_64, scalar_coerce1) =
{
  bveTrue
  |
  bvrTrue
}



(*  %scalar.sroa.2.0.insert.ext = zext i64 %scalar.coerce1 to i128 *)
bvAssign scalar_sroa_2_0_insert_ext_L (bvVar scalar_coerce1);
bvAssign scalar_sroa_2_0_insert_ext_H (bvConst 0);
(*  %scalar.sroa.2.0.insert.shift = shl nuw i128 %scalar.sroa.2.0.insert.ext, 64 *)
(* Heuristics applied. *)
bvAssign scalar_sroa_2_0_insert_shift_L (bvConst 0);
bvAssign scalar_sroa_2_0_insert_shift_H (bvVar scalar_sroa_2_0_insert_ext_L);
(*  %scalar.sroa.0.0.insert.ext = zext i64 %scalar.coerce0 to i128 *)
bvAssign scalar_sroa_0_0_insert_ext_L (bvVar scalar_coerce0);
bvAssign scalar_sroa_0_0_insert_ext_H (bvConst 0);
(*  %scalar.sroa.0.0.insert.insert = or i128 %scalar.sroa.2.0.insert.shift, %scalar.sroa.0.0.insert.ext *)
(*  %0 = load i128, i128* %out, align 16, !tbaa !2 *)
bvAssign v0_L (bvVar L0_0);
bvAssign v0_H (bvVar L0_8);
(*  %mul = mul i128 %0, %scalar.sroa.0.0.insert.insert *)
bvMulf tmpLL_H tmpLL_L (bvVar v0_L) (bvVar scalar_sroa_0_0_insert_insert_L);
bvMul tmpHL_L (bvVar v0_H) (bvVar scalar_sroa_0_0_insert_insert_L);
bvMul tmpLH_L (bvVar v0_L) (bvVar scalar_sroa_0_0_insert_insert_H);
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
(*  %mul3 = mul i128 %1, %scalar.sroa.0.0.insert.insert *)
bvMulf tmpLL_H tmpLL_L (bvVar v1_L) (bvVar scalar_sroa_0_0_insert_insert_L);
bvMul tmpHL_L (bvVar v1_H) (bvVar scalar_sroa_0_0_insert_insert_L);
bvMul tmpLH_L (bvVar v1_L) (bvVar scalar_sroa_0_0_insert_insert_H);
bvAssign mul3_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul3_H (bvVar tmp) (bvVar tmpLL_H);
(*  store i128 %mul3, i128* %arrayidx2, align 16, !tbaa !2 *)
bvAssign L0_16 (bvVar mul3_L);
bvAssign L0_24 (bvVar mul3_H);
(*  %arrayidx4 = getelementptr inbounds i128, i128* %out, i64 2 *)
(*  %2 = load i128, i128* %arrayidx4, align 16, !tbaa !2 *)
bvAssign v2_L (bvVar L0_32);
bvAssign v2_H (bvVar L0_40);
(*  %mul5 = mul i128 %2, %scalar.sroa.0.0.insert.insert *)
bvMulf tmpLL_H tmpLL_L (bvVar v2_L) (bvVar scalar_sroa_0_0_insert_insert_L);
bvMul tmpHL_L (bvVar v2_H) (bvVar scalar_sroa_0_0_insert_insert_L);
bvMul tmpLH_L (bvVar v2_L) (bvVar scalar_sroa_0_0_insert_insert_H);
bvAssign mul5_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul5_H (bvVar tmp) (bvVar tmpLL_H);
(*  store i128 %mul5, i128* %arrayidx4, align 16, !tbaa !2 *)
bvAssign L0_32 (bvVar mul5_L);
bvAssign L0_40 (bvVar mul5_H);
(*  %arrayidx6 = getelementptr inbounds i128, i128* %out, i64 3 *)
(*  %3 = load i128, i128* %arrayidx6, align 16, !tbaa !2 *)
bvAssign v3_L (bvVar L0_48);
bvAssign v3_H (bvVar L0_56);
(*  %mul7 = mul i128 %3, %scalar.sroa.0.0.insert.insert *)
bvMulf tmpLL_H tmpLL_L (bvVar v3_L) (bvVar scalar_sroa_0_0_insert_insert_L);
bvMul tmpHL_L (bvVar v3_H) (bvVar scalar_sroa_0_0_insert_insert_L);
bvMul tmpLH_L (bvVar v3_L) (bvVar scalar_sroa_0_0_insert_insert_H);
bvAssign mul7_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul7_H (bvVar tmp) (bvVar tmpLL_H);
(*  store i128 %mul7, i128* %arrayidx6, align 16, !tbaa !2 *)
bvAssign L0_48 (bvVar mul7_L);
bvAssign L0_56 (bvVar mul7_H);
(*  %arrayidx8 = getelementptr inbounds i128, i128* %out, i64 4 *)
(*  %4 = load i128, i128* %arrayidx8, align 16, !tbaa !2 *)
bvAssign v4_L (bvVar L0_64);
bvAssign v4_H (bvVar L0_72);
(*  %mul9 = mul i128 %4, %scalar.sroa.0.0.insert.insert *)
bvMulf tmpLL_H tmpLL_L (bvVar v4_L) (bvVar scalar_sroa_0_0_insert_insert_L);
bvMul tmpHL_L (bvVar v4_H) (bvVar scalar_sroa_0_0_insert_insert_L);
bvMul tmpLH_L (bvVar v4_L) (bvVar scalar_sroa_0_0_insert_insert_H);
bvAssign mul9_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul9_H (bvVar tmp) (bvVar tmpLL_H);
(*  store i128 %mul9, i128* %arrayidx8, align 16, !tbaa !2 *)
bvAssign L0_64 (bvVar mul9_L);
bvAssign L0_72 (bvVar mul9_H);
(*  %arrayidx10 = getelementptr inbounds i128, i128* %out, i64 5 *)
(*  %5 = load i128, i128* %arrayidx10, align 16, !tbaa !2 *)
bvAssign v5_L (bvVar L0_80);
bvAssign v5_H (bvVar L0_88);
(*  %mul11 = mul i128 %5, %scalar.sroa.0.0.insert.insert *)
bvMulf tmpLL_H tmpLL_L (bvVar v5_L) (bvVar scalar_sroa_0_0_insert_insert_L);
bvMul tmpHL_L (bvVar v5_H) (bvVar scalar_sroa_0_0_insert_insert_L);
bvMul tmpLH_L (bvVar v5_L) (bvVar scalar_sroa_0_0_insert_insert_H);
bvAssign mul11_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul11_H (bvVar tmp) (bvVar tmpLL_H);
(*  store i128 %mul11, i128* %arrayidx10, align 16, !tbaa !2 *)
bvAssign L0_80 (bvVar mul11_L);
bvAssign L0_88 (bvVar mul11_H);
(*  %arrayidx12 = getelementptr inbounds i128, i128* %out, i64 6 *)
(*  %6 = load i128, i128* %arrayidx12, align 16, !tbaa !2 *)
bvAssign v6_L (bvVar L0_96);
bvAssign v6_H (bvVar L0_104);
(*  %mul13 = mul i128 %6, %scalar.sroa.0.0.insert.insert *)
bvMulf tmpLL_H tmpLL_L (bvVar v6_L) (bvVar scalar_sroa_0_0_insert_insert_L);
bvMul tmpHL_L (bvVar v6_H) (bvVar scalar_sroa_0_0_insert_insert_L);
bvMul tmpLH_L (bvVar v6_L) (bvVar scalar_sroa_0_0_insert_insert_H);
bvAssign mul13_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul13_H (bvVar tmp) (bvVar tmpLL_H);
(*  store i128 %mul13, i128* %arrayidx12, align 16, !tbaa !2 *)
bvAssign L0_96 (bvVar mul13_L);
bvAssign L0_104 (bvVar mul13_H);
(*  ret void *)


{
  bveTrue
  |
  bvrTrue
}


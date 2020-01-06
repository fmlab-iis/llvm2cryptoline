proc main (L0_0, L0_8, L0_16, L0_24, L0_32, L0_40, L0_48, L0_56, L0_64, L0_72, L0_80, L0_88, L0_96, L0_104,
           scalar_coerce0, scalar_coerce1) =
{
  bveTrue
  |
  bvands [
    limbs 64 [bvvar L0_0, bvvar L0_8] < bvconst 128 (2^116),
    limbs 64 [bvvar L0_16, bvvar L0_24] < bvconst 128 (2^116),
    limbs 64 [bvvar L0_32, bvvar L0_40] < bvconst 128 (2^116),
    limbs 64 [bvvar L0_48, bvvar L0_56] < bvconst 128 (2^116),
    limbs 64 [bvvar L0_64, bvvar L0_72] < bvconst 128 (2^116),
    limbs 64 [bvvar L0_80, bvvar L0_88] < bvconst 128 (2^116),
    limbs 64 [bvvar L0_96, bvvar L0_104] < bvconst 128 (2^116),
    limbs 64 [bvvar scalar_coerce0, bvvar scalar_coerce1] <= bvconst 128 8
  ]
}

bvAssert bvtrue | bvvar scalar_coerce1 = bvconst 64 0;
bvAssume bveq (bvvar scalar_coerce1) (bvconst 0) | bvtrue;

bvGhost
  a0_L, a0_H, a1_L, a1_H, a2_L, a2_H, a3_L, a3_H, a4_L, a4_H, a5_L, a5_H, a6_L, a6_H :
  bvands [
    bvvar L0_0 = bvvar a0_L,
    bvvar L0_8 = bvvar a0_H,
    bvvar L0_16 = bvvar a1_L,
    bvvar L0_24 = bvvar a1_H,
    bvvar L0_32 = bvvar a2_L,
    bvvar L0_40 = bvvar a2_H,
    bvvar L0_48 = bvvar a3_L,
    bvvar L0_56 = bvvar a3_H,
    bvvar L0_64 = bvvar a4_L,
    bvvar L0_72 = bvvar a4_H,
    bvvar L0_80 = bvvar a5_L,
    bvvar L0_88 = bvvar a5_H,
    bvvar L0_96 = bvvar a6_L,
    bvvar L0_104 = bvvar a6_H
  ] | bvtrue;


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
bvOrb scalar_sroa_0_0_insert_insert_L (bvVar scalar_sroa_2_0_insert_shift_L) (bvVar scalar_sroa_0_0_insert_ext_L);
bvOrb scalar_sroa_0_0_insert_insert_H (bvVar scalar_sroa_2_0_insert_shift_H) (bvVar scalar_sroa_0_0_insert_ext_H);
bvAssert
  bvtrue
  |
  bvands [
    bveq (bvvar scalar_sroa_0_0_insert_insert_L) (bvvar scalar_coerce0),
    bveq (bvvar scalar_sroa_0_0_insert_insert_H) (bvvar scalar_coerce1)
  ];
bvAssume
  bvands [
    bveq (bvvar scalar_sroa_0_0_insert_insert_L) (bvvar scalar_coerce0),
    bveq (bvvar scalar_sroa_0_0_insert_insert_H) (bvvar scalar_coerce1)
  ]
  |
  bvtrue;
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
  bveq
    (limbs 56 [limbs 64 [bvvar L0_0, bvvar L0_8], limbs 64 [bvvar L0_16, bvvar L0_24], limbs 64 [bvvar L0_32, bvvar L0_40], limbs 64 [bvvar L0_48, bvvar L0_56],
               limbs 64 [bvvar L0_64, bvvar L0_72], limbs 64 [bvvar L0_80, bvvar L0_88], limbs 64 [bvvar L0_96, bvvar L0_104]])
    (
      (limbs 56 [limbs 64 [bvvar a0_L, bvvar a0_H], limbs 64 [bvvar a1_L, bvvar a1_H], limbs 64 [bvvar a2_L, bvvar a2_H], limbs 64 [bvvar a3_L, bvvar a3_H],
                 limbs 64 [bvvar a4_L, bvvar a4_H], limbs 64 [bvvar a5_L, bvvar a5_H], limbs 64 [bvvar a6_L, bvvar a6_H]])
      *
      (limbs 64 [bvvar scalar_coerce0, bvvar scalar_coerce1])
    )
  |
  bvands [
    limbs 64 [bvvar L0_0, bvvar L0_8] < bvconst 128 (2^119),
    limbs 64 [bvvar L0_16, bvvar L0_24] < bvconst 128 (2^119),
    limbs 64 [bvvar L0_32, bvvar L0_40] < bvconst 128 (2^119),
    limbs 64 [bvvar L0_48, bvvar L0_56] < bvconst 128 (2^119),
    limbs 64 [bvvar L0_64, bvvar L0_72] < bvconst 128 (2^119),
    limbs 64 [bvvar L0_80, bvvar L0_88] < bvconst 128 (2^119),
    limbs 64 [bvvar L0_96, bvvar L0_104] < bvconst 128 (2^119)
  ]
}

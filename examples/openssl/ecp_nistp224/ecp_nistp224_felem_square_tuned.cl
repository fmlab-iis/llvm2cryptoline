(* -v -btor -isafety
Parsing Cryptoline file:		[OK]		0.001085 seconds
Checking well-formedness:		[OK]		0.000310 seconds
Transforming to SSA form:		[OK]		0.000395 seconds
Rewriting assignments:			[OK]		0.000245 seconds
Verifying program safety:			[OK]		3.689729 seconds
Verifying range specification:		[OK]		0.553509 seconds
Verifying algebraic specification:	[OK]		0.072267 seconds
Verification result:			[OK]		4.317929 seconds*)
proc main (L0_0, L0_8, L0_16, L0_24) =
{
  bveTrue
  |
  bvands [
    bvvar L0_0 < bvconst 64 (2^58),
    bvvar L0_8 < bvconst 64 (2^58),
    bvvar L0_16 < bvconst 64 (2^58),
    bvvar L0_24 < bvconst 64 (2^58)
  ]
}



(*  %0 = load i64, i64* %in, align 8, !tbaa !2 *)
bvAssign v0 (bvVar L0_0);
(*  %mul = shl i64 %0, 1 *)
bvShl mul (bvVar v0) 1;
(*  %arrayidx1 = getelementptr inbounds i64, i64* %in, i64 1 *)
(*  %1 = load i64, i64* %arrayidx1, align 8, !tbaa !2 *)
bvAssign v1 (bvVar L0_8);
(*  %mul2 = shl i64 %1, 1 *)
bvShl mul2 (bvVar v1) 1;
(*  %arrayidx3 = getelementptr inbounds i64, i64* %in, i64 2 *)
(*  %2 = load i64, i64* %arrayidx3, align 8, !tbaa !2 *)
bvAssign v2 (bvVar L0_16);
(*  %mul4 = shl i64 %2, 1 *)
bvShl mul4 (bvVar v2) 1;
(*  %conv = zext i64 %0 to i128 *)
bvAssign conv_L (bvVar v0);
bvAssign conv_H (bvConst 0);
(*  %mul8 = mul nuw i128 %conv, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar conv_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar conv_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar conv_L) (bvVar conv_H);
bvAssign mul8_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul8_H (bvVar tmp) (bvVar tmpLL_H);
(*  store i128 %mul8, i128* %out, align 16, !tbaa !6 *)
bvAssign L1_0 (bvVar mul8_L);
bvAssign L1_8 (bvVar mul8_H);
(*  %conv12 = zext i64 %mul2 to i128 *)
bvAssign conv12_L (bvVar mul2);
bvAssign conv12_H (bvConst 0);
(*  %mul13 = mul nuw i128 %conv, %conv12 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv_L) (bvVar conv12_L);
bvMul tmpHL_L (bvVar conv_H) (bvVar conv12_L);
bvMul tmpLH_L (bvVar conv_L) (bvVar conv12_H);
bvAssign mul13_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul13_H (bvVar tmp) (bvVar tmpLL_H);
(*  %arrayidx14 = getelementptr inbounds i128, i128* %out, i64 1 *)
(*  store i128 %mul13, i128* %arrayidx14, align 16, !tbaa !6 *)
bvAssign L1_16 (bvVar mul13_L);
bvAssign L1_24 (bvVar mul13_H);
(*  %conv17 = zext i64 %mul4 to i128 *)
bvAssign conv17_L (bvVar mul4);
bvAssign conv17_H (bvConst 0);
(*  %mul18 = mul nuw i128 %conv, %conv17 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv_L) (bvVar conv17_L);
bvMul tmpHL_L (bvVar conv_H) (bvVar conv17_L);
bvMul tmpLH_L (bvVar conv_L) (bvVar conv17_H);
bvAssign mul18_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul18_H (bvVar tmp) (bvVar tmpLL_H);
(*  %conv20 = zext i64 %1 to i128 *)
bvAssign conv20_L (bvVar v1);
bvAssign conv20_H (bvConst 0);
(*  %mul23 = mul nuw i128 %conv20, %conv20 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv20_L) (bvVar conv20_L);
bvMul tmpHL_L (bvVar conv20_H) (bvVar conv20_L);
bvMul tmpLH_L (bvVar conv20_L) (bvVar conv20_H);
bvAssign mul23_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul23_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add = add i128 %mul23, %mul18 *)
bvAddC carry add_L (bvVar mul23_L) (bvVar mul18_L);
bvAdc add_H (bvVar mul23_H) (bvVar mul18_H) carry;
(*  %arrayidx24 = getelementptr inbounds i128, i128* %out, i64 2 *)
(*  store i128 %add, i128* %arrayidx24, align 16, !tbaa !6 *)
bvAssign L1_32 (bvVar add_L);
bvAssign L1_40 (bvVar add_H);
(*  %arrayidx25 = getelementptr inbounds i64, i64* %in, i64 3 *)
(*  %3 = load i64, i64* %arrayidx25, align 8, !tbaa !2 *)
bvAssign v3 (bvVar L0_24);
(*  %conv26 = zext i64 %3 to i128 *)
bvAssign conv26_L (bvVar v3);
bvAssign conv26_H (bvConst 0);
(*  %conv27 = zext i64 %mul to i128 *)
bvAssign conv27_L (bvVar mul);
bvAssign conv27_H (bvConst 0);
(*  %mul28 = mul nuw i128 %conv26, %conv27 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv26_L) (bvVar conv27_L);
bvMul tmpHL_L (bvVar conv26_H) (bvVar conv27_L);
bvMul tmpLH_L (bvVar conv26_L) (bvVar conv27_H);
bvAssign mul28_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul28_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul32 = mul nuw i128 %conv20, %conv17 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv20_L) (bvVar conv17_L);
bvMul tmpHL_L (bvVar conv20_H) (bvVar conv17_L);
bvMul tmpLH_L (bvVar conv20_L) (bvVar conv17_H);
bvAssign mul32_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul32_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add33 = add i128 %mul32, %mul28 *)
bvAddC carry add33_L (bvVar mul32_L) (bvVar mul28_L);
bvAdc add33_H (bvVar mul32_H) (bvVar mul28_H) carry;
(*  %arrayidx34 = getelementptr inbounds i128, i128* %out, i64 3 *)
(*  store i128 %add33, i128* %arrayidx34, align 16, !tbaa !6 *)
bvAssign L1_48 (bvVar add33_L);
bvAssign L1_56 (bvVar add33_H);
(*  %mul38 = mul nuw i128 %conv26, %conv12 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv26_L) (bvVar conv12_L);
bvMul tmpHL_L (bvVar conv26_H) (bvVar conv12_L);
bvMul tmpLH_L (bvVar conv26_L) (bvVar conv12_H);
bvAssign mul38_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul38_H (bvVar tmp) (bvVar tmpLL_H);
(*  %conv40 = zext i64 %2 to i128 *)
bvAssign conv40_L (bvVar v2);
bvAssign conv40_H (bvConst 0);
(*  %mul43 = mul nuw i128 %conv40, %conv40 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv40_L) (bvVar conv40_L);
bvMul tmpHL_L (bvVar conv40_H) (bvVar conv40_L);
bvMul tmpLH_L (bvVar conv40_L) (bvVar conv40_H);
bvAssign mul43_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul43_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add44 = add i128 %mul43, %mul38 *)
bvAddC carry add44_L (bvVar mul43_L) (bvVar mul38_L);
bvAdc add44_H (bvVar mul43_H) (bvVar mul38_H) carry;
(*  %arrayidx45 = getelementptr inbounds i128, i128* %out, i64 4 *)
(*  store i128 %add44, i128* %arrayidx45, align 16, !tbaa !6 *)
bvAssign L1_64 (bvVar add44_L);
bvAssign L1_72 (bvVar add44_H);
(*  %mul49 = mul nuw i128 %conv26, %conv17 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv26_L) (bvVar conv17_L);
bvMul tmpHL_L (bvVar conv26_H) (bvVar conv17_L);
bvMul tmpLH_L (bvVar conv26_L) (bvVar conv17_H);
bvAssign mul49_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul49_H (bvVar tmp) (bvVar tmpLL_H);
(*  %arrayidx50 = getelementptr inbounds i128, i128* %out, i64 5 *)
(*  store i128 %mul49, i128* %arrayidx50, align 16, !tbaa !6 *)
bvAssign L1_80 (bvVar mul49_L);
bvAssign L1_88 (bvVar mul49_H);
(*  %mul55 = mul nuw i128 %conv26, %conv26 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv26_L) (bvVar conv26_L);
bvMul tmpHL_L (bvVar conv26_H) (bvVar conv26_L);
bvMul tmpLH_L (bvVar conv26_L) (bvVar conv26_H);
bvAssign mul55_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul55_H (bvVar tmp) (bvVar tmpLL_H);
(*  %arrayidx56 = getelementptr inbounds i128, i128* %out, i64 6 *)
(*  store i128 %mul55, i128* %arrayidx56, align 16, !tbaa !6 *)
bvAssign L1_96 (bvVar mul55_L);
bvAssign L1_104 (bvVar mul55_H);
(*  ret void *)


{
  bveq
    (limbs 56 [limbs 64 [bvvar L1_0, bvvar L1_8], limbs 64 [bvvar L1_16, bvvar L1_24], limbs 64 [bvvar L1_32, bvvar L1_40], limbs 64 [bvvar L1_48, bvvar L1_56],
               limbs 64 [bvvar L1_64, bvvar L1_72], limbs 64 [bvvar L1_80, bvvar L1_88], limbs 64 [bvvar L1_96, bvvar L1_104]])
    (
      (limbs 56 [bvvar L0_0, bvvar L0_8, bvvar L0_16, bvvar L0_24])
      *
      (limbs 56 [bvvar L0_0, bvvar L0_8, bvvar L0_16, bvvar L0_24])
    )
  |
  bvands [
    limbs 64 [bvvar L1_0, bvvar L1_8] < bvconst 128 (2^118),
    limbs 64 [bvvar L1_16, bvvar L1_24] < bvconst 128 (2^118),
    limbs 64 [bvvar L1_32, bvvar L1_40] < bvconst 128 (2^118),
    limbs 64 [bvvar L1_48, bvvar L1_56] < bvconst 128 (2^118),
    limbs 64 [bvvar L1_64, bvvar L1_72] < bvconst 128 (2^118),
    limbs 64 [bvvar L1_80, bvvar L1_88] < bvconst 128 (2^118),
    limbs 64 [bvvar L1_96, bvvar L1_104] < bvconst 128 (2^118)
  ]
}


proc main (L1_24, L0_16, L0_8, L1_16, L1_8, L0_24, L1_0, L0_0) =
{
  bveTrue
  |
  bvrTrue
}



(*  %0 = load i64, i64* %in1, align 8, !tbaa !2 *)
bvAssign v0 (bvVar L0_0);
(*  %conv = zext i64 %0 to i128 *)
bvAssign conv_L (bvVar v0);
bvAssign conv_H (bvConst 0);
(*  %1 = load i64, i64* %in2, align 8, !tbaa !2 *)
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
(*  store i128 %mul, i128* %out, align 16, !tbaa !6 *)
bvAssign L2_0 (bvVar mul_L);
bvAssign L2_8 (bvVar mul_H);
(*  %arrayidx6 = getelementptr inbounds i64, i64* %in2, i64 1 *)
(*  %2 = load i64, i64* %arrayidx6, align 8, !tbaa !2 *)
bvAssign v2 (bvVar L1_8);
(*  %conv7 = zext i64 %2 to i128 *)
bvAssign conv7_L (bvVar v2);
bvAssign conv7_H (bvConst 0);
(*  %mul8 = mul nuw i128 %conv7, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar conv7_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar conv7_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar conv7_L) (bvVar conv_H);
bvAssign mul8_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul8_H (bvVar tmp) (bvVar tmpLL_H);
(*  %arrayidx9 = getelementptr inbounds i64, i64* %in1, i64 1 *)
(*  %3 = load i64, i64* %arrayidx9, align 8, !tbaa !2 *)
bvAssign v3 (bvVar L0_8);
(*  %conv10 = zext i64 %3 to i128 *)
bvAssign conv10_L (bvVar v3);
bvAssign conv10_H (bvConst 0);
(*  %mul13 = mul nuw i128 %conv2, %conv10 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv2_L) (bvVar conv10_L);
bvMul tmpHL_L (bvVar conv2_H) (bvVar conv10_L);
bvMul tmpLH_L (bvVar conv2_L) (bvVar conv10_H);
bvAssign mul13_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul13_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add = add i128 %mul13, %mul8 *)
bvAddC carry add_L (bvVar mul13_L) (bvVar mul8_L);
bvAdc add_H (bvVar mul13_H) (bvVar mul8_H) carry;
(*  %arrayidx14 = getelementptr inbounds i128, i128* %out, i64 1 *)
(*  store i128 %add, i128* %arrayidx14, align 16, !tbaa !6 *)
bvAssign L2_16 (bvVar add_L);
bvAssign L2_24 (bvVar add_H);
(*  %arrayidx17 = getelementptr inbounds i64, i64* %in2, i64 2 *)
(*  %4 = load i64, i64* %arrayidx17, align 8, !tbaa !2 *)
bvAssign v4 (bvVar L1_16);
(*  %conv18 = zext i64 %4 to i128 *)
bvAssign conv18_L (bvVar v4);
bvAssign conv18_H (bvConst 0);
(*  %mul19 = mul nuw i128 %conv18, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar conv18_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar conv18_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar conv18_L) (bvVar conv_H);
bvAssign mul19_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul19_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul24 = mul nuw i128 %conv7, %conv10 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv7_L) (bvVar conv10_L);
bvMul tmpHL_L (bvVar conv7_H) (bvVar conv10_L);
bvMul tmpLH_L (bvVar conv7_L) (bvVar conv10_H);
bvAssign mul24_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul24_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add25 = add i128 %mul24, %mul19 *)
bvAddC carry add25_L (bvVar mul24_L) (bvVar mul19_L);
bvAdc add25_H (bvVar mul24_H) (bvVar mul19_H) carry;
(*  %arrayidx26 = getelementptr inbounds i64, i64* %in1, i64 2 *)
(*  %5 = load i64, i64* %arrayidx26, align 8, !tbaa !2 *)
bvAssign v5 (bvVar L0_16);
(*  %conv27 = zext i64 %5 to i128 *)
bvAssign conv27_L (bvVar v5);
bvAssign conv27_H (bvConst 0);
(*  %mul30 = mul nuw i128 %conv2, %conv27 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv2_L) (bvVar conv27_L);
bvMul tmpHL_L (bvVar conv2_H) (bvVar conv27_L);
bvMul tmpLH_L (bvVar conv2_L) (bvVar conv27_H);
bvAssign mul30_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul30_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add31 = add i128 %add25, %mul30 *)
bvAddC carry add31_L (bvVar add25_L) (bvVar mul30_L);
bvAdc add31_H (bvVar add25_H) (bvVar mul30_H) carry;
(*  %arrayidx32 = getelementptr inbounds i128, i128* %out, i64 2 *)
(*  store i128 %add31, i128* %arrayidx32, align 16, !tbaa !6 *)
bvAssign L2_32 (bvVar add31_L);
bvAssign L2_40 (bvVar add31_H);
(*  %arrayidx35 = getelementptr inbounds i64, i64* %in2, i64 3 *)
(*  %6 = load i64, i64* %arrayidx35, align 8, !tbaa !2 *)
bvAssign v6 (bvVar L1_24);
(*  %conv36 = zext i64 %6 to i128 *)
bvAssign conv36_L (bvVar v6);
bvAssign conv36_H (bvConst 0);
(*  %mul37 = mul nuw i128 %conv36, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar conv36_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar conv36_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar conv36_L) (bvVar conv_H);
bvAssign mul37_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul37_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul42 = mul nuw i128 %conv18, %conv10 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv18_L) (bvVar conv10_L);
bvMul tmpHL_L (bvVar conv18_H) (bvVar conv10_L);
bvMul tmpLH_L (bvVar conv18_L) (bvVar conv10_H);
bvAssign mul42_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul42_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add43 = add i128 %mul42, %mul37 *)
bvAddC carry add43_L (bvVar mul42_L) (bvVar mul37_L);
bvAdc add43_H (bvVar mul42_H) (bvVar mul37_H) carry;
(*  %mul48 = mul nuw i128 %conv7, %conv27 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv7_L) (bvVar conv27_L);
bvMul tmpHL_L (bvVar conv7_H) (bvVar conv27_L);
bvMul tmpLH_L (bvVar conv7_L) (bvVar conv27_H);
bvAssign mul48_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul48_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add49 = add i128 %add43, %mul48 *)
bvAddC carry add49_L (bvVar add43_L) (bvVar mul48_L);
bvAdc add49_H (bvVar add43_H) (bvVar mul48_H) carry;
(*  %arrayidx50 = getelementptr inbounds i64, i64* %in1, i64 3 *)
(*  %7 = load i64, i64* %arrayidx50, align 8, !tbaa !2 *)
bvAssign v7 (bvVar L0_24);
(*  %conv51 = zext i64 %7 to i128 *)
bvAssign conv51_L (bvVar v7);
bvAssign conv51_H (bvConst 0);
(*  %mul54 = mul nuw i128 %conv2, %conv51 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv2_L) (bvVar conv51_L);
bvMul tmpHL_L (bvVar conv2_H) (bvVar conv51_L);
bvMul tmpLH_L (bvVar conv2_L) (bvVar conv51_H);
bvAssign mul54_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul54_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add55 = add i128 %add49, %mul54 *)
bvAddC carry add55_L (bvVar add49_L) (bvVar mul54_L);
bvAdc add55_H (bvVar add49_H) (bvVar mul54_H) carry;
(*  %arrayidx56 = getelementptr inbounds i128, i128* %out, i64 3 *)
(*  store i128 %add55, i128* %arrayidx56, align 16, !tbaa !6 *)
bvAssign L2_48 (bvVar add55_L);
bvAssign L2_56 (bvVar add55_H);
(*  %mul61 = mul nuw i128 %conv36, %conv10 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv36_L) (bvVar conv10_L);
bvMul tmpHL_L (bvVar conv36_H) (bvVar conv10_L);
bvMul tmpLH_L (bvVar conv36_L) (bvVar conv10_H);
bvAssign mul61_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul61_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul66 = mul nuw i128 %conv18, %conv27 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv18_L) (bvVar conv27_L);
bvMul tmpHL_L (bvVar conv18_H) (bvVar conv27_L);
bvMul tmpLH_L (bvVar conv18_L) (bvVar conv27_H);
bvAssign mul66_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul66_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add67 = add i128 %mul66, %mul61 *)
bvAddC carry add67_L (bvVar mul66_L) (bvVar mul61_L);
bvAdc add67_H (bvVar mul66_H) (bvVar mul61_H) carry;
(*  %mul72 = mul nuw i128 %conv7, %conv51 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv7_L) (bvVar conv51_L);
bvMul tmpHL_L (bvVar conv7_H) (bvVar conv51_L);
bvMul tmpLH_L (bvVar conv7_L) (bvVar conv51_H);
bvAssign mul72_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul72_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add73 = add i128 %add67, %mul72 *)
bvAddC carry add73_L (bvVar add67_L) (bvVar mul72_L);
bvAdc add73_H (bvVar add67_H) (bvVar mul72_H) carry;
(*  %arrayidx74 = getelementptr inbounds i128, i128* %out, i64 4 *)
(*  store i128 %add73, i128* %arrayidx74, align 16, !tbaa !6 *)
bvAssign L2_64 (bvVar add73_L);
bvAssign L2_72 (bvVar add73_H);
(*  %mul79 = mul nuw i128 %conv36, %conv27 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv36_L) (bvVar conv27_L);
bvMul tmpHL_L (bvVar conv36_H) (bvVar conv27_L);
bvMul tmpLH_L (bvVar conv36_L) (bvVar conv27_H);
bvAssign mul79_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul79_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul84 = mul nuw i128 %conv18, %conv51 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv18_L) (bvVar conv51_L);
bvMul tmpHL_L (bvVar conv18_H) (bvVar conv51_L);
bvMul tmpLH_L (bvVar conv18_L) (bvVar conv51_H);
bvAssign mul84_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul84_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add85 = add i128 %mul84, %mul79 *)
bvAddC carry add85_L (bvVar mul84_L) (bvVar mul79_L);
bvAdc add85_H (bvVar mul84_H) (bvVar mul79_H) carry;
(*  %arrayidx86 = getelementptr inbounds i128, i128* %out, i64 5 *)
(*  store i128 %add85, i128* %arrayidx86, align 16, !tbaa !6 *)
bvAssign L2_80 (bvVar add85_L);
bvAssign L2_88 (bvVar add85_H);
(*  %mul91 = mul nuw i128 %conv36, %conv51 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv36_L) (bvVar conv51_L);
bvMul tmpHL_L (bvVar conv36_H) (bvVar conv51_L);
bvMul tmpLH_L (bvVar conv36_L) (bvVar conv51_H);
bvAssign mul91_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul91_H (bvVar tmp) (bvVar tmpLL_H);
(*  %arrayidx92 = getelementptr inbounds i128, i128* %out, i64 6 *)
(*  store i128 %mul91, i128* %arrayidx92, align 16, !tbaa !6 *)
bvAssign L2_96 (bvVar mul91_L);
bvAssign L2_104 (bvVar mul91_H);
(*  ret void *)


{
  bveTrue
  |
  bvrTrue
}


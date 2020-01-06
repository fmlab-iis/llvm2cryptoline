(* safety check fails, range property cannot be specified *)
(* The input range specified in C comments can overflow *)
(* each limb <= 2^62 - 2^57 passes *)
(* each limb <= 2^62 - 2^56 fails  *)

proc main (in1_0, in1_1, in1_2, in1_3, in1_4, in1_5, in1_6, in1_7, in1_8,
           in2_0, in2_1, in2_2, in2_3, in2_4, in2_5, in2_6, in2_7, in2_8) =
{
  bveTrue
  |
  bvrands [
    bvrvar in1_0 <= bvrconst 64 (2^62),
    bvrvar in1_1 <= bvrconst 64 (2^62) - bvconst 64 (2^57),
    bvrvar in1_2 <= bvrconst 64 (2^62) - bvconst 64 (2^57),
    bvrvar in1_3 <= bvrconst 64 (2^62) - bvconst 64 (2^57),
    bvrvar in1_4 <= bvrconst 64 (2^62) - bvconst 64 (2^57),
    bvrvar in1_5 <= bvrconst 64 (2^62) - bvconst 64 (2^57),
    bvrvar in1_6 <= bvrconst 64 (2^62) - bvconst 64 (2^57),
    bvrvar in1_7 <= bvrconst 64 (2^62) - bvconst 64 (2^57),
    bvrvar in1_8 <= bvrconst 64 (2^62) - bvconst 64 (2^57),
    bvrvar in2_0 <= bvrconst 64 (2^62) - bvconst 64 (2^57),
    bvrvar in2_1 <= bvrconst 64 (2^62) - bvconst 64 (2^57), 
    bvrvar in2_2 <= bvrconst 64 (2^62) - bvconst 64 (2^57),
    bvrvar in2_3 <= bvrconst 64 (2^62) - bvconst 64 (2^57), 
    bvrvar in2_4 <= bvrconst 64 (2^62) - bvconst 64 (2^57),
    bvrvar in2_5 <= bvrconst 64 (2^62) - bvconst 64 (2^57),
    bvrvar in2_6 <= bvrconst 64 (2^62) - bvconst 64 (2^57),
    bvrvar in2_7 <= bvrconst 64 (2^62) - bvconst 64 (2^57), 
    bvrvar in2_8 <= bvrconst 64 (2^62) - bvconst 64 (2^57)
  ]
}

bvAssign  L1_0 (bvVar in1_0);
bvAssign  L1_8 (bvVar in1_1);
bvAssign L1_16 (bvVar in1_2);
bvAssign L1_24 (bvVar in1_3);
bvAssign L1_32 (bvVar in1_4);
bvAssign L1_40 (bvVar in1_5);
bvAssign L1_48 (bvVar in1_6);
bvAssign L1_56 (bvVar in1_7);
bvAssign L1_64 (bvVar in1_8);

bvAssign  L0_0 (bvVar in2_0);
bvAssign  L0_8 (bvVar in2_1);
bvAssign L0_16 (bvVar in2_2);
bvAssign L0_24 (bvVar in2_3);
bvAssign L0_32 (bvVar in2_4);
bvAssign L0_40 (bvVar in2_5);
bvAssign L0_48 (bvVar in2_6);
bvAssign L0_56 (bvVar in2_7);
bvAssign L0_64 (bvVar in2_8);

(*  %0 = load i64, i64* %in2, align 8, !tbaa !2 *)
bvAssign v0 (bvVar L0_0);
(*  %arrayidx2.i = getelementptr inbounds i64, i64* %in2, i64 1 *)
(*  %1 = load i64, i64* %arrayidx2.i, align 8, !tbaa !2 *)
bvAssign v1 (bvVar L0_8);
(*  %mul3.i = shl i64 %1, 1 *)
bvShl mul3_i (bvVar v1) 1;
(*  %arrayidx5.i = getelementptr inbounds i64, i64* %in2, i64 2 *)
(*  %2 = load i64, i64* %arrayidx5.i, align 8, !tbaa !2 *)
bvAssign v2 (bvVar L0_16);
(*  %mul6.i = shl i64 %2, 1 *)
bvShl mul6_i (bvVar v2) 1;
(*  %arrayidx8.i = getelementptr inbounds i64, i64* %in2, i64 3 *)
(*  %3 = load i64, i64* %arrayidx8.i, align 8, !tbaa !2 *)
bvAssign v3 (bvVar L0_24);
(*  %mul9.i = shl i64 %3, 1 *)
bvShl mul9_i (bvVar v3) 1;
(*  %arrayidx11.i = getelementptr inbounds i64, i64* %in2, i64 4 *)
(*  %4 = load i64, i64* %arrayidx11.i, align 8, !tbaa !2 *)
bvAssign v4 (bvVar L0_32);
(*  %mul12.i = shl i64 %4, 1 *)
bvShl mul12_i (bvVar v4) 1;
(*  %arrayidx14.i = getelementptr inbounds i64, i64* %in2, i64 5 *)
(*  %5 = load i64, i64* %arrayidx14.i, align 8, !tbaa !2 *)
bvAssign v5 (bvVar L0_40);
(*  %mul15.i = shl i64 %5, 1 *)
bvShl mul15_i (bvVar v5) 1;
(*  %arrayidx17.i = getelementptr inbounds i64, i64* %in2, i64 6 *)
(*  %6 = load i64, i64* %arrayidx17.i, align 8, !tbaa !2 *)
bvAssign v6 (bvVar L0_48);
(*  %mul18.i = shl i64 %6, 1 *)
bvShl mul18_i (bvVar v6) 1;
(*  %arrayidx20.i = getelementptr inbounds i64, i64* %in2, i64 7 *)
(*  %7 = load i64, i64* %arrayidx20.i, align 8, !tbaa !2 *)
bvAssign v7 (bvVar L0_56);
(*  %mul21.i = shl i64 %7, 1 *)
bvShl mul21_i (bvVar v7) 1;
(*  %arrayidx23.i = getelementptr inbounds i64, i64* %in2, i64 8 *)
(*  %8 = load i64, i64* %arrayidx23.i, align 8, !tbaa !2 *)
bvAssign v8 (bvVar L0_64);
(*  %mul24.i = shl i64 %8, 1 *)
bvShl mul24_i (bvVar v8) 1;
(*  %9 = load i64, i64* %in1, align 8, !tbaa !2 *)
bvAssign v9 (bvVar L1_0);
(*  %conv = zext i64 %9 to i128 *)
bvAssign conv_L (bvVar v9);
bvAssign conv_H (bvConst 0);
(*  %conv2 = zext i64 %0 to i128 *)
bvAssign conv2_L (bvVar v0);
bvAssign conv2_H (bvConst 0);
(*  %mul = mul nuw i128 %conv, %conv2 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv_L) (bvVar conv2_L);
bvMul tmpHL_L (bvVar conv_H) (bvVar conv2_L);
bvMul tmpLH_L (bvVar conv_L) (bvVar conv2_H);
bvAssign mul_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul_H (bvVar tmp) (bvVar tmpLL_H);
(*  store i128 %mul, i128* %out, align 16, !tbaa !6 *)
bvAssign L2_0 (bvVar mul_L);
bvAssign L2_8 (bvVar mul_H);
(*  %conv7 = zext i64 %1 to i128 *)
bvAssign conv7_L (bvVar v1);
bvAssign conv7_H (bvConst 0);
(*  %mul8 = mul nuw i128 %conv7, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar conv7_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar conv7_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar conv7_L) (bvVar conv_H);
bvAssign mul8_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul8_H (bvVar tmp) (bvVar tmpLL_H);
(*  %arrayidx9 = getelementptr inbounds i64, i64* %in1, i64 1 *)
(*  %10 = load i64, i64* %arrayidx9, align 8, !tbaa !2 *)
bvAssign v10 (bvVar L1_8);
(*  %conv10 = zext i64 %10 to i128 *)
bvAssign conv10_L (bvVar v10);
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
(*  %conv18 = zext i64 %2 to i128 *)
bvAssign conv18_L (bvVar v2);
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
(*  %11 = load i64, i64* %arrayidx26, align 8, !tbaa !2 *)
bvAssign v11 (bvVar L1_16);
(*  %conv27 = zext i64 %11 to i128 *)
bvAssign conv27_L (bvVar v11);
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
(*  %conv36 = zext i64 %3 to i128 *)
bvAssign conv36_L (bvVar v3);
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
(*  %12 = load i64, i64* %arrayidx50, align 8, !tbaa !2 *)
bvAssign v12 (bvVar L1_24);
(*  %conv51 = zext i64 %12 to i128 *)
bvAssign conv51_L (bvVar v12);
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
(*  %conv60 = zext i64 %4 to i128 *)
bvAssign conv60_L (bvVar v4);
bvAssign conv60_H (bvConst 0);
(*  %mul61 = mul nuw i128 %conv60, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar conv60_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar conv60_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar conv60_L) (bvVar conv_H);
bvAssign mul61_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul61_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul66 = mul nuw i128 %conv36, %conv10 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv36_L) (bvVar conv10_L);
bvMul tmpHL_L (bvVar conv36_H) (bvVar conv10_L);
bvMul tmpLH_L (bvVar conv36_L) (bvVar conv10_H);
bvAssign mul66_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul66_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add67 = add i128 %mul66, %mul61 *)
bvAddC carry add67_L (bvVar mul66_L) (bvVar mul61_L);
bvAdc add67_H (bvVar mul66_H) (bvVar mul61_H) carry;
(*  %mul72 = mul nuw i128 %conv18, %conv27 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv18_L) (bvVar conv27_L);
bvMul tmpHL_L (bvVar conv18_H) (bvVar conv27_L);
bvMul tmpLH_L (bvVar conv18_L) (bvVar conv27_H);
bvAssign mul72_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul72_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add73 = add i128 %add67, %mul72 *)
bvAddC carry add73_L (bvVar add67_L) (bvVar mul72_L);
bvAdc add73_H (bvVar add67_H) (bvVar mul72_H) carry;
(*  %mul78 = mul nuw i128 %conv7, %conv51 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv7_L) (bvVar conv51_L);
bvMul tmpHL_L (bvVar conv7_H) (bvVar conv51_L);
bvMul tmpLH_L (bvVar conv7_L) (bvVar conv51_H);
bvAssign mul78_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul78_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add79 = add i128 %add73, %mul78 *)
bvAddC carry add79_L (bvVar add73_L) (bvVar mul78_L);
bvAdc add79_H (bvVar add73_H) (bvVar mul78_H) carry;
(*  %arrayidx80 = getelementptr inbounds i64, i64* %in1, i64 4 *)
(*  %13 = load i64, i64* %arrayidx80, align 8, !tbaa !2 *)
bvAssign v13 (bvVar L1_32);
(*  %conv81 = zext i64 %13 to i128 *)
bvAssign conv81_L (bvVar v13);
bvAssign conv81_H (bvConst 0);
(*  %mul84 = mul nuw i128 %conv2, %conv81 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv2_L) (bvVar conv81_L);
bvMul tmpHL_L (bvVar conv2_H) (bvVar conv81_L);
bvMul tmpLH_L (bvVar conv2_L) (bvVar conv81_H);
bvAssign mul84_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul84_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add85 = add i128 %add79, %mul84 *)
bvAddC carry add85_L (bvVar add79_L) (bvVar mul84_L);
bvAdc add85_H (bvVar add79_H) (bvVar mul84_H) carry;
(*  %arrayidx86 = getelementptr inbounds i128, i128* %out, i64 4 *)
(*  store i128 %add85, i128* %arrayidx86, align 16, !tbaa !6 *)
bvAssign L2_64 (bvVar add85_L);
bvAssign L2_72 (bvVar add85_H);
(*  %conv90 = zext i64 %5 to i128 *)
bvAssign conv90_L (bvVar v5);
bvAssign conv90_H (bvConst 0);
(*  %mul91 = mul nuw i128 %conv90, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar conv90_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar conv90_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar conv90_L) (bvVar conv_H);
bvAssign mul91_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul91_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul96 = mul nuw i128 %conv60, %conv10 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv60_L) (bvVar conv10_L);
bvMul tmpHL_L (bvVar conv60_H) (bvVar conv10_L);
bvMul tmpLH_L (bvVar conv60_L) (bvVar conv10_H);
bvAssign mul96_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul96_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add97 = add i128 %mul96, %mul91 *)
bvAddC carry add97_L (bvVar mul96_L) (bvVar mul91_L);
bvAdc add97_H (bvVar mul96_H) (bvVar mul91_H) carry;
(*  %mul102 = mul nuw i128 %conv36, %conv27 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv36_L) (bvVar conv27_L);
bvMul tmpHL_L (bvVar conv36_H) (bvVar conv27_L);
bvMul tmpLH_L (bvVar conv36_L) (bvVar conv27_H);
bvAssign mul102_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul102_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add103 = add i128 %add97, %mul102 *)
bvAddC carry add103_L (bvVar add97_L) (bvVar mul102_L);
bvAdc add103_H (bvVar add97_H) (bvVar mul102_H) carry;
(*  %mul108 = mul nuw i128 %conv18, %conv51 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv18_L) (bvVar conv51_L);
bvMul tmpHL_L (bvVar conv18_H) (bvVar conv51_L);
bvMul tmpLH_L (bvVar conv18_L) (bvVar conv51_H);
bvAssign mul108_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul108_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add109 = add i128 %add103, %mul108 *)
bvAddC carry add109_L (bvVar add103_L) (bvVar mul108_L);
bvAdc add109_H (bvVar add103_H) (bvVar mul108_H) carry;
(*  %mul114 = mul nuw i128 %conv7, %conv81 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv7_L) (bvVar conv81_L);
bvMul tmpHL_L (bvVar conv7_H) (bvVar conv81_L);
bvMul tmpLH_L (bvVar conv7_L) (bvVar conv81_H);
bvAssign mul114_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul114_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add115 = add i128 %add109, %mul114 *)
bvAddC carry add115_L (bvVar add109_L) (bvVar mul114_L);
bvAdc add115_H (bvVar add109_H) (bvVar mul114_H) carry;
(*  %arrayidx116 = getelementptr inbounds i64, i64* %in1, i64 5 *)
(*  %14 = load i64, i64* %arrayidx116, align 8, !tbaa !2 *)
bvAssign v14 (bvVar L1_40);
(*  %conv117 = zext i64 %14 to i128 *)
bvAssign conv117_L (bvVar v14);
bvAssign conv117_H (bvConst 0);
(*  %mul120 = mul nuw i128 %conv2, %conv117 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv2_L) (bvVar conv117_L);
bvMul tmpHL_L (bvVar conv2_H) (bvVar conv117_L);
bvMul tmpLH_L (bvVar conv2_L) (bvVar conv117_H);
bvAssign mul120_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul120_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add121 = add i128 %add115, %mul120 *)
bvAddC carry add121_L (bvVar add115_L) (bvVar mul120_L);
bvAdc add121_H (bvVar add115_H) (bvVar mul120_H) carry;
(*  %arrayidx122 = getelementptr inbounds i128, i128* %out, i64 5 *)
(*  store i128 %add121, i128* %arrayidx122, align 16, !tbaa !6 *)
bvAssign L2_80 (bvVar add121_L);
bvAssign L2_88 (bvVar add121_H);
(*  %conv126 = zext i64 %6 to i128 *)
bvAssign conv126_L (bvVar v6);
bvAssign conv126_H (bvConst 0);
(*  %mul127 = mul nuw i128 %conv126, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar conv126_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar conv126_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar conv126_L) (bvVar conv_H);
bvAssign mul127_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul127_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul132 = mul nuw i128 %conv90, %conv10 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv90_L) (bvVar conv10_L);
bvMul tmpHL_L (bvVar conv90_H) (bvVar conv10_L);
bvMul tmpLH_L (bvVar conv90_L) (bvVar conv10_H);
bvAssign mul132_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul132_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add133 = add i128 %mul132, %mul127 *)
bvAddC carry add133_L (bvVar mul132_L) (bvVar mul127_L);
bvAdc add133_H (bvVar mul132_H) (bvVar mul127_H) carry;
(*  %mul138 = mul nuw i128 %conv60, %conv27 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv60_L) (bvVar conv27_L);
bvMul tmpHL_L (bvVar conv60_H) (bvVar conv27_L);
bvMul tmpLH_L (bvVar conv60_L) (bvVar conv27_H);
bvAssign mul138_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul138_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add139 = add i128 %add133, %mul138 *)
bvAddC carry add139_L (bvVar add133_L) (bvVar mul138_L);
bvAdc add139_H (bvVar add133_H) (bvVar mul138_H) carry;
(*  %mul144 = mul nuw i128 %conv36, %conv51 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv36_L) (bvVar conv51_L);
bvMul tmpHL_L (bvVar conv36_H) (bvVar conv51_L);
bvMul tmpLH_L (bvVar conv36_L) (bvVar conv51_H);
bvAssign mul144_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul144_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add145 = add i128 %add139, %mul144 *)
bvAddC carry add145_L (bvVar add139_L) (bvVar mul144_L);
bvAdc add145_H (bvVar add139_H) (bvVar mul144_H) carry;
(*  %mul150 = mul nuw i128 %conv18, %conv81 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv18_L) (bvVar conv81_L);
bvMul tmpHL_L (bvVar conv18_H) (bvVar conv81_L);
bvMul tmpLH_L (bvVar conv18_L) (bvVar conv81_H);
bvAssign mul150_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul150_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add151 = add i128 %add145, %mul150 *)
bvAddC carry add151_L (bvVar add145_L) (bvVar mul150_L);
bvAdc add151_H (bvVar add145_H) (bvVar mul150_H) carry;
(*  %15 = load i64, i64* %arrayidx2.i, align 8, !tbaa !2 *)
bvAssign v15 (bvVar L0_8);
(*  %conv155 = zext i64 %15 to i128 *)
bvAssign conv155_L (bvVar v15);
bvAssign conv155_H (bvConst 0);
(*  %mul156 = mul nuw i128 %conv155, %conv117 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv155_L) (bvVar conv117_L);
bvMul tmpHL_L (bvVar conv155_H) (bvVar conv117_L);
bvMul tmpLH_L (bvVar conv155_L) (bvVar conv117_H);
bvAssign mul156_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul156_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add157 = add i128 %add151, %mul156 *)
bvAddC carry add157_L (bvVar add151_L) (bvVar mul156_L);
bvAdc add157_H (bvVar add151_H) (bvVar mul156_H) carry;
(*  %arrayidx158 = getelementptr inbounds i64, i64* %in1, i64 6 *)
(*  %16 = load i64, i64* %arrayidx158, align 8, !tbaa !2 *)
bvAssign v16 (bvVar L1_48);
(*  %conv159 = zext i64 %16 to i128 *)
bvAssign conv159_L (bvVar v16);
bvAssign conv159_H (bvConst 0);
(*  %17 = load i64, i64* %in2, align 8, !tbaa !2 *)
bvAssign v17 (bvVar L0_0);
(*  %conv161 = zext i64 %17 to i128 *)
bvAssign conv161_L (bvVar v17);
bvAssign conv161_H (bvConst 0);
(*  %mul162 = mul nuw i128 %conv161, %conv159 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv161_L) (bvVar conv159_L);
bvMul tmpHL_L (bvVar conv161_H) (bvVar conv159_L);
bvMul tmpLH_L (bvVar conv161_L) (bvVar conv159_H);
bvAssign mul162_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul162_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add163 = add i128 %add157, %mul162 *)
bvAddC carry add163_L (bvVar add157_L) (bvVar mul162_L);
bvAdc add163_H (bvVar add157_H) (bvVar mul162_H) carry;
(*  %arrayidx164 = getelementptr inbounds i128, i128* %out, i64 6 *)
(*  store i128 %add163, i128* %arrayidx164, align 16, !tbaa !6 *)
bvAssign L2_96 (bvVar add163_L);
bvAssign L2_104 (bvVar add163_H);
(*  %conv168 = zext i64 %7 to i128 *)
bvAssign conv168_L (bvVar v7);
bvAssign conv168_H (bvConst 0);
(*  %mul169 = mul nuw i128 %conv168, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar conv168_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar conv168_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar conv168_L) (bvVar conv_H);
bvAssign mul169_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul169_H (bvVar tmp) (bvVar tmpLL_H);
(*  %18 = load i64, i64* %arrayidx17.i, align 8, !tbaa !2 *)
bvAssign v18 (bvVar L0_48);
(*  %conv173 = zext i64 %18 to i128 *)
bvAssign conv173_L (bvVar v18);
bvAssign conv173_H (bvConst 0);
(*  %mul174 = mul nuw i128 %conv173, %conv10 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv173_L) (bvVar conv10_L);
bvMul tmpHL_L (bvVar conv173_H) (bvVar conv10_L);
bvMul tmpLH_L (bvVar conv173_L) (bvVar conv10_H);
bvAssign mul174_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul174_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add175 = add i128 %mul174, %mul169 *)
bvAddC carry add175_L (bvVar mul174_L) (bvVar mul169_L);
bvAdc add175_H (bvVar mul174_H) (bvVar mul169_H) carry;
(*  %19 = load i64, i64* %arrayidx14.i, align 8, !tbaa !2 *)
bvAssign v19 (bvVar L0_40);
(*  %conv179 = zext i64 %19 to i128 *)
bvAssign conv179_L (bvVar v19);
bvAssign conv179_H (bvConst 0);
(*  %mul180 = mul nuw i128 %conv179, %conv27 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv179_L) (bvVar conv27_L);
bvMul tmpHL_L (bvVar conv179_H) (bvVar conv27_L);
bvMul tmpLH_L (bvVar conv179_L) (bvVar conv27_H);
bvAssign mul180_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul180_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add181 = add i128 %add175, %mul180 *)
bvAddC carry add181_L (bvVar add175_L) (bvVar mul180_L);
bvAdc add181_H (bvVar add175_H) (bvVar mul180_H) carry;
(*  %20 = load i64, i64* %arrayidx11.i, align 8, !tbaa !2 *)
bvAssign v20 (bvVar L0_32);
(*  %conv185 = zext i64 %20 to i128 *)
bvAssign conv185_L (bvVar v20);
bvAssign conv185_H (bvConst 0);
(*  %mul186 = mul nuw i128 %conv185, %conv51 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv185_L) (bvVar conv51_L);
bvMul tmpHL_L (bvVar conv185_H) (bvVar conv51_L);
bvMul tmpLH_L (bvVar conv185_L) (bvVar conv51_H);
bvAssign mul186_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul186_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add187 = add i128 %add181, %mul186 *)
bvAddC carry add187_L (bvVar add181_L) (bvVar mul186_L);
bvAdc add187_H (bvVar add181_H) (bvVar mul186_H) carry;
(*  %21 = load i64, i64* %arrayidx8.i, align 8, !tbaa !2 *)
bvAssign v21 (bvVar L0_24);
(*  %conv191 = zext i64 %21 to i128 *)
bvAssign conv191_L (bvVar v21);
bvAssign conv191_H (bvConst 0);
(*  %mul192 = mul nuw i128 %conv191, %conv81 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv191_L) (bvVar conv81_L);
bvMul tmpHL_L (bvVar conv191_H) (bvVar conv81_L);
bvMul tmpLH_L (bvVar conv191_L) (bvVar conv81_H);
bvAssign mul192_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul192_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add193 = add i128 %add187, %mul192 *)
bvAddC carry add193_L (bvVar add187_L) (bvVar mul192_L);
bvAdc add193_H (bvVar add187_H) (bvVar mul192_H) carry;
(*  %22 = load i64, i64* %arrayidx5.i, align 8, !tbaa !2 *)
bvAssign v22 (bvVar L0_16);
(*  %conv197 = zext i64 %22 to i128 *)
bvAssign conv197_L (bvVar v22);
bvAssign conv197_H (bvConst 0);
(*  %mul198 = mul nuw i128 %conv197, %conv117 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv197_L) (bvVar conv117_L);
bvMul tmpHL_L (bvVar conv197_H) (bvVar conv117_L);
bvMul tmpLH_L (bvVar conv197_L) (bvVar conv117_H);
bvAssign mul198_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul198_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add199 = add i128 %add193, %mul198 *)
bvAddC carry add199_L (bvVar add193_L) (bvVar mul198_L);
bvAdc add199_H (bvVar add193_H) (bvVar mul198_H) carry;
(*  %mul204 = mul nuw i128 %conv155, %conv159 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv155_L) (bvVar conv159_L);
bvMul tmpHL_L (bvVar conv155_H) (bvVar conv159_L);
bvMul tmpLH_L (bvVar conv155_L) (bvVar conv159_H);
bvAssign mul204_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul204_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add205 = add i128 %add199, %mul204 *)
bvAddC carry add205_L (bvVar add199_L) (bvVar mul204_L);
bvAdc add205_H (bvVar add199_H) (bvVar mul204_H) carry;
(*  %arrayidx206 = getelementptr inbounds i64, i64* %in1, i64 7 *)
(*  %23 = load i64, i64* %arrayidx206, align 8, !tbaa !2 *)
bvAssign v23 (bvVar L1_56);
(*  %conv207 = zext i64 %23 to i128 *)
bvAssign conv207_L (bvVar v23);
bvAssign conv207_H (bvConst 0);
(*  %mul210 = mul nuw i128 %conv161, %conv207 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv161_L) (bvVar conv207_L);
bvMul tmpHL_L (bvVar conv161_H) (bvVar conv207_L);
bvMul tmpLH_L (bvVar conv161_L) (bvVar conv207_H);
bvAssign mul210_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul210_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add211 = add i128 %add205, %mul210 *)
bvAddC carry add211_L (bvVar add205_L) (bvVar mul210_L);
bvAdc add211_H (bvVar add205_H) (bvVar mul210_H) carry;
(*  %arrayidx212 = getelementptr inbounds i128, i128* %out, i64 7 *)
(*  store i128 %add211, i128* %arrayidx212, align 16, !tbaa !6 *)
bvAssign L2_112 (bvVar add211_L);
bvAssign L2_120 (bvVar add211_H);
(*  %24 = load i64, i64* %in1, align 8, !tbaa !2 *)
bvAssign v24 (bvVar L1_0);
(*  %conv214 = zext i64 %24 to i128 *)
bvAssign conv214_L (bvVar v24);
bvAssign conv214_H (bvConst 0);
(*  %25 = load i64, i64* %arrayidx23.i, align 8, !tbaa !2 *)
bvAssign v25 (bvVar L0_64);
(*  %conv216 = zext i64 %25 to i128 *)
bvAssign conv216_L (bvVar v25);
bvAssign conv216_H (bvConst 0);
(*  %mul217 = mul nuw i128 %conv216, %conv214 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv216_L) (bvVar conv214_L);
bvMul tmpHL_L (bvVar conv216_H) (bvVar conv214_L);
bvMul tmpLH_L (bvVar conv216_L) (bvVar conv214_H);
bvAssign mul217_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul217_H (bvVar tmp) (bvVar tmpLL_H);
(*  %26 = load i64, i64* %arrayidx9, align 8, !tbaa !2 *)
bvAssign v26 (bvVar L1_8);
(*  %conv219 = zext i64 %26 to i128 *)
bvAssign conv219_L (bvVar v26);
bvAssign conv219_H (bvConst 0);
(*  %27 = load i64, i64* %arrayidx20.i, align 8, !tbaa !2 *)
bvAssign v27 (bvVar L0_56);
(*  %conv221 = zext i64 %27 to i128 *)
bvAssign conv221_L (bvVar v27);
bvAssign conv221_H (bvConst 0);
(*  %mul222 = mul nuw i128 %conv221, %conv219 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv221_L) (bvVar conv219_L);
bvMul tmpHL_L (bvVar conv221_H) (bvVar conv219_L);
bvMul tmpLH_L (bvVar conv221_L) (bvVar conv219_H);
bvAssign mul222_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul222_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add223 = add i128 %mul222, %mul217 *)
bvAddC carry add223_L (bvVar mul222_L) (bvVar mul217_L);
bvAdc add223_H (bvVar mul222_H) (bvVar mul217_H) carry;
(*  %28 = load i64, i64* %arrayidx26, align 8, !tbaa !2 *)
bvAssign v28 (bvVar L1_16);
(*  %conv225 = zext i64 %28 to i128 *)
bvAssign conv225_L (bvVar v28);
bvAssign conv225_H (bvConst 0);
(*  %mul228 = mul nuw i128 %conv173, %conv225 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv173_L) (bvVar conv225_L);
bvMul tmpHL_L (bvVar conv173_H) (bvVar conv225_L);
bvMul tmpLH_L (bvVar conv173_L) (bvVar conv225_H);
bvAssign mul228_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul228_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add229 = add i128 %add223, %mul228 *)
bvAddC carry add229_L (bvVar add223_L) (bvVar mul228_L);
bvAdc add229_H (bvVar add223_H) (bvVar mul228_H) carry;
(*  %29 = load i64, i64* %arrayidx50, align 8, !tbaa !2 *)
bvAssign v29 (bvVar L1_24);
(*  %conv231 = zext i64 %29 to i128 *)
bvAssign conv231_L (bvVar v29);
bvAssign conv231_H (bvConst 0);
(*  %mul234 = mul nuw i128 %conv179, %conv231 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv179_L) (bvVar conv231_L);
bvMul tmpHL_L (bvVar conv179_H) (bvVar conv231_L);
bvMul tmpLH_L (bvVar conv179_L) (bvVar conv231_H);
bvAssign mul234_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul234_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add235 = add i128 %add229, %mul234 *)
bvAddC carry add235_L (bvVar add229_L) (bvVar mul234_L);
bvAdc add235_H (bvVar add229_H) (bvVar mul234_H) carry;
(*  %mul240 = mul nuw i128 %conv185, %conv81 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv185_L) (bvVar conv81_L);
bvMul tmpHL_L (bvVar conv185_H) (bvVar conv81_L);
bvMul tmpLH_L (bvVar conv185_L) (bvVar conv81_H);
bvAssign mul240_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul240_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add241 = add i128 %add235, %mul240 *)
bvAddC carry add241_L (bvVar add235_L) (bvVar mul240_L);
bvAdc add241_H (bvVar add235_H) (bvVar mul240_H) carry;
(*  %mul246 = mul nuw i128 %conv191, %conv117 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv191_L) (bvVar conv117_L);
bvMul tmpHL_L (bvVar conv191_H) (bvVar conv117_L);
bvMul tmpLH_L (bvVar conv191_L) (bvVar conv117_H);
bvAssign mul246_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul246_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add247 = add i128 %add241, %mul246 *)
bvAddC carry add247_L (bvVar add241_L) (bvVar mul246_L);
bvAdc add247_H (bvVar add241_H) (bvVar mul246_H) carry;
(*  %mul252 = mul nuw i128 %conv197, %conv159 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv197_L) (bvVar conv159_L);
bvMul tmpHL_L (bvVar conv197_H) (bvVar conv159_L);
bvMul tmpLH_L (bvVar conv197_L) (bvVar conv159_H);
bvAssign mul252_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul252_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add253 = add i128 %add247, %mul252 *)
bvAddC carry add253_L (bvVar add247_L) (bvVar mul252_L);
bvAdc add253_H (bvVar add247_H) (bvVar mul252_H) carry;
(*  %mul258 = mul nuw i128 %conv155, %conv207 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv155_L) (bvVar conv207_L);
bvMul tmpHL_L (bvVar conv155_H) (bvVar conv207_L);
bvMul tmpLH_L (bvVar conv155_L) (bvVar conv207_H);
bvAssign mul258_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul258_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add259 = add i128 %add253, %mul258 *)
bvAddC carry add259_L (bvVar add253_L) (bvVar mul258_L);
bvAdc add259_H (bvVar add253_H) (bvVar mul258_H) carry;
(*  %arrayidx260 = getelementptr inbounds i64, i64* %in1, i64 8 *)
(*  %30 = load i64, i64* %arrayidx260, align 8, !tbaa !2 *)
bvAssign v30 (bvVar L1_64);
(*  %conv261 = zext i64 %30 to i128 *)
bvAssign conv261_L (bvVar v30);
bvAssign conv261_H (bvConst 0);
(*  %mul264 = mul nuw i128 %conv161, %conv261 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv161_L) (bvVar conv261_L);
bvMul tmpHL_L (bvVar conv161_H) (bvVar conv261_L);
bvMul tmpLH_L (bvVar conv161_L) (bvVar conv261_H);
bvAssign mul264_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul264_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add265 = add i128 %add259, %mul264 *)
bvAddC carry add265_L (bvVar add259_L) (bvVar mul264_L);
bvAdc add265_H (bvVar add259_H) (bvVar mul264_H) carry;
(*  %arrayidx266 = getelementptr inbounds i128, i128* %out, i64 8 *)
(*  store i128 %add265, i128* %arrayidx266, align 16, !tbaa !6 *)
bvAssign L2_128 (bvVar add265_L);
bvAssign L2_136 (bvVar add265_H);
(*  %conv270 = zext i64 %mul24.i to i128 *)
bvAssign conv270_L (bvVar mul24_i);
bvAssign conv270_H (bvConst 0);
(*  %mul271 = mul nuw i128 %conv219, %conv270 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv219_L) (bvVar conv270_L);
bvMul tmpHL_L (bvVar conv219_H) (bvVar conv270_L);
bvMul tmpLH_L (bvVar conv219_L) (bvVar conv270_H);
bvAssign mul271_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul271_H (bvVar tmp) (bvVar tmpLL_H);
(*  %conv275 = zext i64 %mul21.i to i128 *)
bvAssign conv275_L (bvVar mul21_i);
bvAssign conv275_H (bvConst 0);
(*  %mul276 = mul nuw i128 %conv225, %conv275 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv225_L) (bvVar conv275_L);
bvMul tmpHL_L (bvVar conv225_H) (bvVar conv275_L);
bvMul tmpLH_L (bvVar conv225_L) (bvVar conv275_H);
bvAssign mul276_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul276_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add277 = add i128 %mul276, %mul271 *)
bvAddC carry add277_L (bvVar mul276_L) (bvVar mul271_L);
bvAdc add277_H (bvVar mul276_H) (bvVar mul271_H) carry;
(*  %conv281 = zext i64 %mul18.i to i128 *)
bvAssign conv281_L (bvVar mul18_i);
bvAssign conv281_H (bvConst 0);
(*  %mul282 = mul nuw i128 %conv231, %conv281 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv231_L) (bvVar conv281_L);
bvMul tmpHL_L (bvVar conv231_H) (bvVar conv281_L);
bvMul tmpLH_L (bvVar conv231_L) (bvVar conv281_H);
bvAssign mul282_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul282_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add283 = add i128 %add277, %mul282 *)
bvAddC carry add283_L (bvVar add277_L) (bvVar mul282_L);
bvAdc add283_H (bvVar add277_H) (bvVar mul282_H) carry;
(*  %31 = load i64, i64* %arrayidx80, align 8, !tbaa !2 *)
bvAssign v31 (bvVar L1_32);
(*  %conv285 = zext i64 %31 to i128 *)
bvAssign conv285_L (bvVar v31);
bvAssign conv285_H (bvConst 0);
(*  %conv287 = zext i64 %mul15.i to i128 *)
bvAssign conv287_L (bvVar mul15_i);
bvAssign conv287_H (bvConst 0);
(*  %mul288 = mul nuw i128 %conv285, %conv287 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv285_L) (bvVar conv287_L);
bvMul tmpHL_L (bvVar conv285_H) (bvVar conv287_L);
bvMul tmpLH_L (bvVar conv285_L) (bvVar conv287_H);
bvAssign mul288_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul288_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add289 = add i128 %add283, %mul288 *)
bvAddC carry add289_L (bvVar add283_L) (bvVar mul288_L);
bvAdc add289_H (bvVar add283_H) (bvVar mul288_H) carry;
(*  %32 = load i64, i64* %arrayidx116, align 8, !tbaa !2 *)
bvAssign v32 (bvVar L1_40);
(*  %conv291 = zext i64 %32 to i128 *)
bvAssign conv291_L (bvVar v32);
bvAssign conv291_H (bvConst 0);
(*  %conv293 = zext i64 %mul12.i to i128 *)
bvAssign conv293_L (bvVar mul12_i);
bvAssign conv293_H (bvConst 0);
(*  %mul294 = mul nuw i128 %conv291, %conv293 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv291_L) (bvVar conv293_L);
bvMul tmpHL_L (bvVar conv291_H) (bvVar conv293_L);
bvMul tmpLH_L (bvVar conv291_L) (bvVar conv293_H);
bvAssign mul294_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul294_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add295 = add i128 %add289, %mul294 *)
bvAddC carry add295_L (bvVar add289_L) (bvVar mul294_L);
bvAdc add295_H (bvVar add289_H) (bvVar mul294_H) carry;
(*  %conv299 = zext i64 %mul9.i to i128 *)
bvAssign conv299_L (bvVar mul9_i);
bvAssign conv299_H (bvConst 0);
(*  %mul300 = mul nuw i128 %conv159, %conv299 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv159_L) (bvVar conv299_L);
bvMul tmpHL_L (bvVar conv159_H) (bvVar conv299_L);
bvMul tmpLH_L (bvVar conv159_L) (bvVar conv299_H);
bvAssign mul300_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul300_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add301 = add i128 %add295, %mul300 *)
bvAddC carry add301_L (bvVar add295_L) (bvVar mul300_L);
bvAdc add301_H (bvVar add295_H) (bvVar mul300_H) carry;
(*  %conv305 = zext i64 %mul6.i to i128 *)
bvAssign conv305_L (bvVar mul6_i);
bvAssign conv305_H (bvConst 0);
(*  %mul306 = mul nuw i128 %conv207, %conv305 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv207_L) (bvVar conv305_L);
bvMul tmpHL_L (bvVar conv207_H) (bvVar conv305_L);
bvMul tmpLH_L (bvVar conv207_L) (bvVar conv305_H);
bvAssign mul306_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul306_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add307 = add i128 %add301, %mul306 *)
bvAddC carry add307_L (bvVar add301_L) (bvVar mul306_L);
bvAdc add307_H (bvVar add301_H) (bvVar mul306_H) carry;
(*  %conv311 = zext i64 %mul3.i to i128 *)
bvAssign conv311_L (bvVar mul3_i);
bvAssign conv311_H (bvConst 0);
(*  %mul312 = mul nuw i128 %conv261, %conv311 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv261_L) (bvVar conv311_L);
bvMul tmpHL_L (bvVar conv261_H) (bvVar conv311_L);
bvMul tmpLH_L (bvVar conv261_L) (bvVar conv311_H);
bvAssign mul312_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul312_H (bvVar tmp) (bvVar tmpLL_H);
(*  %33 = load i128, i128* %out, align 16, !tbaa !6 *)
bvAssign v33_L (bvVar L2_0);
bvAssign v33_H (bvVar L2_8);
(*  %add313 = add i128 %add307, %33 *)
bvAddC carry add313_L (bvVar add307_L) (bvVar v33_L);
bvAdc add313_H (bvVar add307_H) (bvVar v33_H) carry;
(*  %add315 = add i128 %add313, %mul312 *)
bvAddC carry add315_L (bvVar add313_L) (bvVar mul312_L);
bvAdc add315_H (bvVar add313_H) (bvVar mul312_H) carry;
(*  store i128 %add315, i128* %out, align 16, !tbaa !6 *)
bvAssign L2_0 (bvVar add315_L);
bvAssign L2_8 (bvVar add315_H);
(*  %mul320 = mul nuw i128 %conv225, %conv270 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv225_L) (bvVar conv270_L);
bvMul tmpHL_L (bvVar conv225_H) (bvVar conv270_L);
bvMul tmpLH_L (bvVar conv225_L) (bvVar conv270_H);
bvAssign mul320_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul320_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul325 = mul nuw i128 %conv231, %conv275 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv231_L) (bvVar conv275_L);
bvMul tmpHL_L (bvVar conv231_H) (bvVar conv275_L);
bvMul tmpLH_L (bvVar conv231_L) (bvVar conv275_H);
bvAssign mul325_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul325_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add326 = add i128 %mul325, %mul320 *)
bvAddC carry add326_L (bvVar mul325_L) (bvVar mul320_L);
bvAdc add326_H (bvVar mul325_H) (bvVar mul320_H) carry;
(*  %mul331 = mul nuw i128 %conv285, %conv281 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv285_L) (bvVar conv281_L);
bvMul tmpHL_L (bvVar conv285_H) (bvVar conv281_L);
bvMul tmpLH_L (bvVar conv285_L) (bvVar conv281_H);
bvAssign mul331_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul331_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add332 = add i128 %add326, %mul331 *)
bvAddC carry add332_L (bvVar add326_L) (bvVar mul331_L);
bvAdc add332_H (bvVar add326_H) (bvVar mul331_H) carry;
(*  %mul337 = mul nuw i128 %conv291, %conv287 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv291_L) (bvVar conv287_L);
bvMul tmpHL_L (bvVar conv291_H) (bvVar conv287_L);
bvMul tmpLH_L (bvVar conv291_L) (bvVar conv287_H);
bvAssign mul337_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul337_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add338 = add i128 %add332, %mul337 *)
bvAddC carry add338_L (bvVar add332_L) (bvVar mul337_L);
bvAdc add338_H (bvVar add332_H) (bvVar mul337_H) carry;
(*  %34 = load i64, i64* %arrayidx158, align 8, !tbaa !2 *)
bvAssign v34 (bvVar L1_48);
(*  %conv340 = zext i64 %34 to i128 *)
bvAssign conv340_L (bvVar v34);
bvAssign conv340_H (bvConst 0);
(*  %mul343 = mul nuw i128 %conv340, %conv293 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv340_L) (bvVar conv293_L);
bvMul tmpHL_L (bvVar conv340_H) (bvVar conv293_L);
bvMul tmpLH_L (bvVar conv340_L) (bvVar conv293_H);
bvAssign mul343_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul343_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add344 = add i128 %add338, %mul343 *)
bvAddC carry add344_L (bvVar add338_L) (bvVar mul343_L);
bvAdc add344_H (bvVar add338_H) (bvVar mul343_H) carry;
(*  %mul349 = mul nuw i128 %conv207, %conv299 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv207_L) (bvVar conv299_L);
bvMul tmpHL_L (bvVar conv207_H) (bvVar conv299_L);
bvMul tmpLH_L (bvVar conv207_L) (bvVar conv299_H);
bvAssign mul349_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul349_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add350 = add i128 %add344, %mul349 *)
bvAddC carry add350_L (bvVar add344_L) (bvVar mul349_L);
bvAdc add350_H (bvVar add344_H) (bvVar mul349_H) carry;
(*  %mul355 = mul nuw i128 %conv261, %conv305 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv261_L) (bvVar conv305_L);
bvMul tmpHL_L (bvVar conv261_H) (bvVar conv305_L);
bvMul tmpLH_L (bvVar conv261_L) (bvVar conv305_H);
bvAssign mul355_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul355_H (bvVar tmp) (bvVar tmpLL_H);
(*  %35 = load i128, i128* %arrayidx14, align 16, !tbaa !6 *)
bvAssign v35_L (bvVar L2_16);
bvAssign v35_H (bvVar L2_24);
(*  %add356 = add i128 %add350, %35 *)
bvAddC carry add356_L (bvVar add350_L) (bvVar v35_L);
bvAdc add356_H (bvVar add350_H) (bvVar v35_H) carry;
(*  %add358 = add i128 %add356, %mul355 *)
bvAddC carry add358_L (bvVar add356_L) (bvVar mul355_L);
bvAdc add358_H (bvVar add356_H) (bvVar mul355_H) carry;
(*  store i128 %add358, i128* %arrayidx14, align 16, !tbaa !6 *)
bvAssign L2_16 (bvVar add358_L);
bvAssign L2_24 (bvVar add358_H);
(*  %mul363 = mul nuw i128 %conv231, %conv270 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv231_L) (bvVar conv270_L);
bvMul tmpHL_L (bvVar conv231_H) (bvVar conv270_L);
bvMul tmpLH_L (bvVar conv231_L) (bvVar conv270_H);
bvAssign mul363_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul363_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul368 = mul nuw i128 %conv285, %conv275 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv285_L) (bvVar conv275_L);
bvMul tmpHL_L (bvVar conv285_H) (bvVar conv275_L);
bvMul tmpLH_L (bvVar conv285_L) (bvVar conv275_H);
bvAssign mul368_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul368_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add369 = add i128 %mul368, %mul363 *)
bvAddC carry add369_L (bvVar mul368_L) (bvVar mul363_L);
bvAdc add369_H (bvVar mul368_H) (bvVar mul363_H) carry;
(*  %mul374 = mul nuw i128 %conv291, %conv281 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv291_L) (bvVar conv281_L);
bvMul tmpHL_L (bvVar conv291_H) (bvVar conv281_L);
bvMul tmpLH_L (bvVar conv291_L) (bvVar conv281_H);
bvAssign mul374_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul374_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add375 = add i128 %add369, %mul374 *)
bvAddC carry add375_L (bvVar add369_L) (bvVar mul374_L);
bvAdc add375_H (bvVar add369_H) (bvVar mul374_H) carry;
(*  %mul380 = mul nuw i128 %conv340, %conv287 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv340_L) (bvVar conv287_L);
bvMul tmpHL_L (bvVar conv340_H) (bvVar conv287_L);
bvMul tmpLH_L (bvVar conv340_L) (bvVar conv287_H);
bvAssign mul380_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul380_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add381 = add i128 %add375, %mul380 *)
bvAddC carry add381_L (bvVar add375_L) (bvVar mul380_L);
bvAdc add381_H (bvVar add375_H) (bvVar mul380_H) carry;
(*  %mul386 = mul nuw i128 %conv207, %conv293 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv207_L) (bvVar conv293_L);
bvMul tmpHL_L (bvVar conv207_H) (bvVar conv293_L);
bvMul tmpLH_L (bvVar conv207_L) (bvVar conv293_H);
bvAssign mul386_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul386_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add387 = add i128 %add381, %mul386 *)
bvAddC carry add387_L (bvVar add381_L) (bvVar mul386_L);
bvAdc add387_H (bvVar add381_H) (bvVar mul386_H) carry;
(*  %mul392 = mul nuw i128 %conv261, %conv299 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv261_L) (bvVar conv299_L);
bvMul tmpHL_L (bvVar conv261_H) (bvVar conv299_L);
bvMul tmpLH_L (bvVar conv261_L) (bvVar conv299_H);
bvAssign mul392_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul392_H (bvVar tmp) (bvVar tmpLL_H);
(*  %36 = load i128, i128* %arrayidx32, align 16, !tbaa !6 *)
bvAssign v36_L (bvVar L2_32);
bvAssign v36_H (bvVar L2_40);
(*  %add393 = add i128 %add387, %36 *)
bvAddC carry add393_L (bvVar add387_L) (bvVar v36_L);
bvAdc add393_H (bvVar add387_H) (bvVar v36_H) carry;
(*  %add395 = add i128 %add393, %mul392 *)
bvAddC carry add395_L (bvVar add393_L) (bvVar mul392_L);
bvAdc add395_H (bvVar add393_H) (bvVar mul392_H) carry;
(*  store i128 %add395, i128* %arrayidx32, align 16, !tbaa !6 *)
bvAssign L2_32 (bvVar add395_L);
bvAssign L2_40 (bvVar add395_H);
(*  %mul400 = mul nuw i128 %conv285, %conv270 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv285_L) (bvVar conv270_L);
bvMul tmpHL_L (bvVar conv285_H) (bvVar conv270_L);
bvMul tmpLH_L (bvVar conv285_L) (bvVar conv270_H);
bvAssign mul400_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul400_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul405 = mul nuw i128 %conv291, %conv275 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv291_L) (bvVar conv275_L);
bvMul tmpHL_L (bvVar conv291_H) (bvVar conv275_L);
bvMul tmpLH_L (bvVar conv291_L) (bvVar conv275_H);
bvAssign mul405_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul405_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add406 = add i128 %mul405, %mul400 *)
bvAddC carry add406_L (bvVar mul405_L) (bvVar mul400_L);
bvAdc add406_H (bvVar mul405_H) (bvVar mul400_H) carry;
(*  %mul411 = mul nuw i128 %conv340, %conv281 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv340_L) (bvVar conv281_L);
bvMul tmpHL_L (bvVar conv340_H) (bvVar conv281_L);
bvMul tmpLH_L (bvVar conv340_L) (bvVar conv281_H);
bvAssign mul411_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul411_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add412 = add i128 %add406, %mul411 *)
bvAddC carry add412_L (bvVar add406_L) (bvVar mul411_L);
bvAdc add412_H (bvVar add406_H) (bvVar mul411_H) carry;
(*  %37 = load i64, i64* %arrayidx206, align 8, !tbaa !2 *)
bvAssign v37 (bvVar L1_56);
(*  %conv414 = zext i64 %37 to i128 *)
bvAssign conv414_L (bvVar v37);
bvAssign conv414_H (bvConst 0);
(*  %mul417 = mul nuw i128 %conv414, %conv287 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv414_L) (bvVar conv287_L);
bvMul tmpHL_L (bvVar conv414_H) (bvVar conv287_L);
bvMul tmpLH_L (bvVar conv414_L) (bvVar conv287_H);
bvAssign mul417_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul417_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add418 = add i128 %add412, %mul417 *)
bvAddC carry add418_L (bvVar add412_L) (bvVar mul417_L);
bvAdc add418_H (bvVar add412_H) (bvVar mul417_H) carry;
(*  %mul423 = mul nuw i128 %conv261, %conv293 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv261_L) (bvVar conv293_L);
bvMul tmpHL_L (bvVar conv261_H) (bvVar conv293_L);
bvMul tmpLH_L (bvVar conv261_L) (bvVar conv293_H);
bvAssign mul423_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul423_H (bvVar tmp) (bvVar tmpLL_H);
(*  %38 = load i128, i128* %arrayidx56, align 16, !tbaa !6 *)
bvAssign v38_L (bvVar L2_48);
bvAssign v38_H (bvVar L2_56);
(*  %add424 = add i128 %add418, %38 *)
bvAddC carry add424_L (bvVar add418_L) (bvVar v38_L);
bvAdc add424_H (bvVar add418_H) (bvVar v38_H) carry;
(*  %add426 = add i128 %add424, %mul423 *)
bvAddC carry add426_L (bvVar add424_L) (bvVar mul423_L);
bvAdc add426_H (bvVar add424_H) (bvVar mul423_H) carry;
(*  store i128 %add426, i128* %arrayidx56, align 16, !tbaa !6 *)
bvAssign L2_48 (bvVar add426_L);
bvAssign L2_56 (bvVar add426_H);
(*  %mul431 = mul nuw i128 %conv291, %conv270 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv291_L) (bvVar conv270_L);
bvMul tmpHL_L (bvVar conv291_H) (bvVar conv270_L);
bvMul tmpLH_L (bvVar conv291_L) (bvVar conv270_H);
bvAssign mul431_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul431_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul436 = mul nuw i128 %conv340, %conv275 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv340_L) (bvVar conv275_L);
bvMul tmpHL_L (bvVar conv340_H) (bvVar conv275_L);
bvMul tmpLH_L (bvVar conv340_L) (bvVar conv275_H);
bvAssign mul436_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul436_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add437 = add i128 %mul436, %mul431 *)
bvAddC carry add437_L (bvVar mul436_L) (bvVar mul431_L);
bvAdc add437_H (bvVar mul436_H) (bvVar mul431_H) carry;
(*  %mul442 = mul nuw i128 %conv414, %conv281 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv414_L) (bvVar conv281_L);
bvMul tmpHL_L (bvVar conv414_H) (bvVar conv281_L);
bvMul tmpLH_L (bvVar conv414_L) (bvVar conv281_H);
bvAssign mul442_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul442_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add443 = add i128 %add437, %mul442 *)
bvAddC carry add443_L (bvVar add437_L) (bvVar mul442_L);
bvAdc add443_H (bvVar add437_H) (bvVar mul442_H) carry;
(*  %mul448 = mul nuw i128 %conv261, %conv287 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv261_L) (bvVar conv287_L);
bvMul tmpHL_L (bvVar conv261_H) (bvVar conv287_L);
bvMul tmpLH_L (bvVar conv261_L) (bvVar conv287_H);
bvAssign mul448_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul448_H (bvVar tmp) (bvVar tmpLL_H);
(*  %39 = load i128, i128* %arrayidx86, align 16, !tbaa !6 *)
bvAssign v39_L (bvVar L2_64);
bvAssign v39_H (bvVar L2_72);
(*  %add449 = add i128 %add443, %39 *)
bvAddC carry add449_L (bvVar add443_L) (bvVar v39_L);
bvAdc add449_H (bvVar add443_H) (bvVar v39_H) carry;
(*  %add451 = add i128 %add449, %mul448 *)
bvAddC carry add451_L (bvVar add449_L) (bvVar mul448_L);
bvAdc add451_H (bvVar add449_H) (bvVar mul448_H) carry;
(*  store i128 %add451, i128* %arrayidx86, align 16, !tbaa !6 *)
bvAssign L2_64 (bvVar add451_L);
bvAssign L2_72 (bvVar add451_H);
(*  %mul456 = mul nuw i128 %conv340, %conv270 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv340_L) (bvVar conv270_L);
bvMul tmpHL_L (bvVar conv340_H) (bvVar conv270_L);
bvMul tmpLH_L (bvVar conv340_L) (bvVar conv270_H);
bvAssign mul456_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul456_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul461 = mul nuw i128 %conv414, %conv275 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv414_L) (bvVar conv275_L);
bvMul tmpHL_L (bvVar conv414_H) (bvVar conv275_L);
bvMul tmpLH_L (bvVar conv414_L) (bvVar conv275_H);
bvAssign mul461_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul461_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add462 = add i128 %mul461, %mul456 *)
bvAddC carry add462_L (bvVar mul461_L) (bvVar mul456_L);
bvAdc add462_H (bvVar mul461_H) (bvVar mul456_H) carry;
(*  %mul467 = mul nuw i128 %conv261, %conv281 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv261_L) (bvVar conv281_L);
bvMul tmpHL_L (bvVar conv261_H) (bvVar conv281_L);
bvMul tmpLH_L (bvVar conv261_L) (bvVar conv281_H);
bvAssign mul467_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul467_H (bvVar tmp) (bvVar tmpLL_H);
(*  %40 = load i128, i128* %arrayidx122, align 16, !tbaa !6 *)
bvAssign v40_L (bvVar L2_80);
bvAssign v40_H (bvVar L2_88);
(*  %add468 = add i128 %add462, %40 *)
bvAddC carry add468_L (bvVar add462_L) (bvVar v40_L);
bvAdc add468_H (bvVar add462_H) (bvVar v40_H) carry;
(*  %add470 = add i128 %add468, %mul467 *)
bvAddC carry add470_L (bvVar add468_L) (bvVar mul467_L);
bvAdc add470_H (bvVar add468_H) (bvVar mul467_H) carry;
(*  store i128 %add470, i128* %arrayidx122, align 16, !tbaa !6 *)
bvAssign L2_80 (bvVar add470_L);
bvAssign L2_88 (bvVar add470_H);
(*  %mul475 = mul nuw i128 %conv414, %conv270 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv414_L) (bvVar conv270_L);
bvMul tmpHL_L (bvVar conv414_H) (bvVar conv270_L);
bvMul tmpLH_L (bvVar conv414_L) (bvVar conv270_H);
bvAssign mul475_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul475_H (bvVar tmp) (bvVar tmpLL_H);
(*  %41 = load i64, i64* %arrayidx260, align 8, !tbaa !2 *)
bvAssign v41 (bvVar L1_64);
(*  %conv477 = zext i64 %41 to i128 *)
bvAssign conv477_L (bvVar v41);
bvAssign conv477_H (bvConst 0);
(*  %mul480 = mul nuw i128 %conv477, %conv275 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv477_L) (bvVar conv275_L);
bvMul tmpHL_L (bvVar conv477_H) (bvVar conv275_L);
bvMul tmpLH_L (bvVar conv477_L) (bvVar conv275_H);
bvAssign mul480_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul480_H (bvVar tmp) (bvVar tmpLL_H);
(*  %42 = load i128, i128* %arrayidx164, align 16, !tbaa !6 *)
bvAssign v42_L (bvVar L2_96);
bvAssign v42_H (bvVar L2_104);
(*  %add481 = add i128 %42, %mul475 *)
bvAddC carry add481_L (bvVar v42_L) (bvVar mul475_L);
bvAdc add481_H (bvVar v42_H) (bvVar mul475_H) carry;
(*  %add483 = add i128 %add481, %mul480 *)
bvAddC carry add483_L (bvVar add481_L) (bvVar mul480_L);
bvAdc add483_H (bvVar add481_H) (bvVar mul480_H) carry;
(*  store i128 %add483, i128* %arrayidx164, align 16, !tbaa !6 *)
bvAssign L2_96 (bvVar add483_L);
bvAssign L2_104 (bvVar add483_H);
(*  %mul488 = mul nuw i128 %conv477, %conv270 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv477_L) (bvVar conv270_L);
bvMul tmpHL_L (bvVar conv477_H) (bvVar conv270_L);
bvMul tmpLH_L (bvVar conv477_L) (bvVar conv270_H);
bvAssign mul488_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul488_H (bvVar tmp) (bvVar tmpLL_H);
(*  %43 = load i128, i128* %arrayidx212, align 16, !tbaa !6 *)
bvAssign v43_L (bvVar L2_112);
bvAssign v43_H (bvVar L2_120);
(*  %add490 = add i128 %mul488, %43 *)
bvAddC carry add490_L (bvVar mul488_L) (bvVar v43_L);
bvAdc add490_H (bvVar mul488_H) (bvVar v43_H) carry;
(*  store i128 %add490, i128* %arrayidx212, align 16, !tbaa !6 *)
bvAssign L2_112 (bvVar add490_L);
bvAssign L2_120 (bvVar add490_H);
(*  ret void *)

bvAssign out0_L (bvVar   L2_0);
bvAssign out0_H (bvVar   L2_8);
bvAssign out1_L (bvVar  L2_16);
bvAssign out1_H (bvVar  L2_24);
bvAssign out2_L (bvVar  L2_32);
bvAssign out2_H (bvVar  L2_40);
bvAssign out3_L (bvVar  L2_48);
bvAssign out3_H (bvVar  L2_56);
bvAssign out4_L (bvVar  L2_64);
bvAssign out4_H (bvVar  L2_72);
bvAssign out5_L (bvVar  L2_80);
bvAssign out5_H (bvVar  L2_88);
bvAssign out6_L (bvVar  L2_96);
bvAssign out6_H (bvVar L2_104);
bvAssign out7_L (bvVar L2_112);
bvAssign out7_H (bvVar L2_120);
bvAssign out8_L (bvVar L2_128);
bvAssign out8_H (bvVar L2_136);

{
  bveEqMod (limbs 58 [limbs 64 [bvvar out0_L, bvvar out0_H],
                      limbs 64 [bvvar out1_L, bvvar out1_H],
                      limbs 64 [bvvar out2_L, bvvar out2_H],
                      limbs 64 [bvvar out3_L, bvvar out3_H],
                      limbs 64 [bvvar out4_L, bvvar out4_H],
                      limbs 64 [bvvar out5_L, bvvar out5_H],
                      limbs 64 [bvvar out6_L, bvvar out6_H],
                      limbs 64 [bvvar out7_L, bvvar out7_H],
                      limbs 64 [bvvar out8_L, bvvar out8_H]])
           ((limbs 58 [bvvar in1_0, bvvar in1_1, bvvar in1_2, bvvar in1_3,
                       bvvar in1_4, bvvar in1_5, bvvar in1_6, bvvar in1_7,
                       bvvar in1_8])
            *
            (limbs 58 [bvvar in2_0, bvvar in2_1, bvvar in2_2, bvvar in2_3,
                       bvvar in2_4, bvvar in2_5, bvvar in2_6, bvvar in2_7,
                       bvvar in2_8]))
           ((bvconst 2^521) - (bvconst 1))
  |
  bvrTrue
  (* out[i] < 17 * max(in1[i]) * max(in2[i]) *)
}


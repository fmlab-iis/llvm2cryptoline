proc main (L0_56, L0_48, L0_40, L0_64, L0_0, L0_32, L0_24, L0_8, L0_16) =
{
  bveTrue
  |
  bvrTrue
}



(*  %0 = load i64, i64* %in, align 8, !tbaa !2 *)
bvAssign v0 (bvVar L0_0);
(*  %arrayidx2.i = getelementptr inbounds i64, i64* %in, i64 1 *)
(*  %1 = load i64, i64* %arrayidx2.i, align 8, !tbaa !2 *)
bvAssign v1 (bvVar L0_8);
(*  %mul3.i = shl i64 %1, 1 *)
bvShl mul3_i (bvVar v1) 1;
(*  %arrayidx5.i = getelementptr inbounds i64, i64* %in, i64 2 *)
(*  %2 = load i64, i64* %arrayidx5.i, align 8, !tbaa !2 *)
bvAssign v2 (bvVar L0_16);
(*  %mul6.i = shl i64 %2, 1 *)
bvShl mul6_i (bvVar v2) 1;
(*  %arrayidx8.i = getelementptr inbounds i64, i64* %in, i64 3 *)
(*  %3 = load i64, i64* %arrayidx8.i, align 8, !tbaa !2 *)
bvAssign v3 (bvVar L0_24);
(*  %mul9.i = shl i64 %3, 1 *)
bvShl mul9_i (bvVar v3) 1;
(*  %arrayidx11.i = getelementptr inbounds i64, i64* %in, i64 4 *)
(*  %4 = load i64, i64* %arrayidx11.i, align 8, !tbaa !2 *)
bvAssign v4 (bvVar L0_32);
(*  %mul12.i = shl i64 %4, 1 *)
bvShl mul12_i (bvVar v4) 1;
(*  %arrayidx14.i = getelementptr inbounds i64, i64* %in, i64 5 *)
(*  %5 = load i64, i64* %arrayidx14.i, align 8, !tbaa !2 *)
bvAssign v5 (bvVar L0_40);
(*  %mul15.i = shl i64 %5, 1 *)
bvShl mul15_i (bvVar v5) 1;
(*  %arrayidx17.i = getelementptr inbounds i64, i64* %in, i64 6 *)
(*  %6 = load i64, i64* %arrayidx17.i, align 8, !tbaa !2 *)
bvAssign v6 (bvVar L0_48);
(*  %mul18.i = shl i64 %6, 1 *)
bvShl mul18_i (bvVar v6) 1;
(*  %arrayidx20.i = getelementptr inbounds i64, i64* %in, i64 7 *)
(*  %7 = load i64, i64* %arrayidx20.i, align 8, !tbaa !2 *)
bvAssign v7 (bvVar L0_56);
(*  %mul21.i = shl i64 %7, 1 *)
bvShl mul21_i (bvVar v7) 1;
(*  %arrayidx23.i = getelementptr inbounds i64, i64* %in, i64 8 *)
(*  %8 = load i64, i64* %arrayidx23.i, align 8, !tbaa !2 *)
bvAssign v8 (bvVar L0_64);
(*  %mul24.i = shl i64 %8, 1 *)
bvShl mul24_i (bvVar v8) 1;
(*  %mul15.i.357 = shl i64 %5, 2 *)
bvShl mul15_i_357 (bvVar v5) 2;
(*  %mul18.i.360 = shl i64 %6, 2 *)
bvShl mul18_i_360 (bvVar v6) 2;
(*  %mul21.i.363 = shl i64 %7, 2 *)
bvShl mul21_i_363 (bvVar v7) 2;
(*  %mul24.i.366 = shl i64 %8, 2 *)
bvShl mul24_i_366 (bvVar v8) 2;
(*  %conv = zext i64 %0 to i128 *)
bvAssign conv_L (bvVar v0);
bvAssign conv_H (bvConst 0);
(*  %mul = mul nuw i128 %conv, %conv *)
bvMulf tmpLL_H tmpLL_L (bvVar conv_L) (bvVar conv_L);
bvMul tmpHL_L (bvVar conv_H) (bvVar conv_L);
bvMul tmpLH_L (bvVar conv_L) (bvVar conv_H);
bvAssign mul_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul_H (bvVar tmp) (bvVar tmpLL_H);
(*  %conv8 = zext i64 %mul3.i to i128 *)
bvAssign conv8_L (bvVar mul3_i);
bvAssign conv8_H (bvConst 0);
(*  %mul9 = mul nuw i128 %conv, %conv8 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv_L) (bvVar conv8_L);
bvMul tmpHL_L (bvVar conv_H) (bvVar conv8_L);
bvMul tmpLH_L (bvVar conv_L) (bvVar conv8_H);
bvAssign mul9_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul9_H (bvVar tmp) (bvVar tmpLL_H);
(*  %arrayidx10 = getelementptr inbounds i128, i128* %out, i64 1 *)
(*  %conv14 = zext i64 %mul6.i to i128 *)
bvAssign conv14_L (bvVar mul6_i);
bvAssign conv14_H (bvConst 0);
(*  %mul15 = mul nuw i128 %conv, %conv14 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv_L) (bvVar conv14_L);
bvMul tmpHL_L (bvVar conv_H) (bvVar conv14_L);
bvMul tmpLH_L (bvVar conv_L) (bvVar conv14_H);
bvAssign mul15_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul15_H (bvVar tmp) (bvVar tmpLL_H);
(*  %conv17 = zext i64 %1 to i128 *)
bvAssign conv17_L (bvVar v1);
bvAssign conv17_H (bvConst 0);
(*  %mul20 = mul nuw i128 %conv17, %conv17 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv17_L) (bvVar conv17_L);
bvMul tmpHL_L (bvVar conv17_H) (bvVar conv17_L);
bvMul tmpLH_L (bvVar conv17_L) (bvVar conv17_H);
bvAssign mul20_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul20_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add = add i128 %mul20, %mul15 *)
bvAddC carry add_L (bvVar mul20_L) (bvVar mul15_L);
bvAdc add_H (bvVar mul20_H) (bvVar mul15_H) carry;
(*  %arrayidx21 = getelementptr inbounds i128, i128* %out, i64 2 *)
(*  %conv25 = zext i64 %mul9.i to i128 *)
bvAssign conv25_L (bvVar mul9_i);
bvAssign conv25_H (bvConst 0);
(*  %mul26 = mul nuw i128 %conv, %conv25 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv_L) (bvVar conv25_L);
bvMul tmpHL_L (bvVar conv_H) (bvVar conv25_L);
bvMul tmpLH_L (bvVar conv_L) (bvVar conv25_H);
bvAssign mul26_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul26_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul31 = mul nuw i128 %conv17, %conv14 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv17_L) (bvVar conv14_L);
bvMul tmpHL_L (bvVar conv17_H) (bvVar conv14_L);
bvMul tmpLH_L (bvVar conv17_L) (bvVar conv14_H);
bvAssign mul31_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul31_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add32 = add i128 %mul31, %mul26 *)
bvAddC carry add32_L (bvVar mul31_L) (bvVar mul26_L);
bvAdc add32_H (bvVar mul31_H) (bvVar mul26_H) carry;
(*  %arrayidx33 = getelementptr inbounds i128, i128* %out, i64 3 *)
(*  %conv37 = zext i64 %mul12.i to i128 *)
bvAssign conv37_L (bvVar mul12_i);
bvAssign conv37_H (bvConst 0);
(*  %mul38 = mul nuw i128 %conv, %conv37 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv_L) (bvVar conv37_L);
bvMul tmpHL_L (bvVar conv_H) (bvVar conv37_L);
bvMul tmpLH_L (bvVar conv_L) (bvVar conv37_H);
bvAssign mul38_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul38_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul43 = mul nuw i128 %conv17, %conv25 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv17_L) (bvVar conv25_L);
bvMul tmpHL_L (bvVar conv17_H) (bvVar conv25_L);
bvMul tmpLH_L (bvVar conv17_L) (bvVar conv25_H);
bvAssign mul43_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul43_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add44 = add i128 %mul43, %mul38 *)
bvAddC carry add44_L (bvVar mul43_L) (bvVar mul38_L);
bvAdc add44_H (bvVar mul43_H) (bvVar mul38_H) carry;
(*  %conv46 = zext i64 %2 to i128 *)
bvAssign conv46_L (bvVar v2);
bvAssign conv46_H (bvConst 0);
(*  %mul49 = mul nuw i128 %conv46, %conv46 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv46_L) (bvVar conv46_L);
bvMul tmpHL_L (bvVar conv46_H) (bvVar conv46_L);
bvMul tmpLH_L (bvVar conv46_L) (bvVar conv46_H);
bvAssign mul49_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul49_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add50 = add i128 %add44, %mul49 *)
bvAddC carry add50_L (bvVar add44_L) (bvVar mul49_L);
bvAdc add50_H (bvVar add44_H) (bvVar mul49_H) carry;
(*  %arrayidx51 = getelementptr inbounds i128, i128* %out, i64 4 *)
(*  %conv55 = zext i64 %mul15.i to i128 *)
bvAssign conv55_L (bvVar mul15_i);
bvAssign conv55_H (bvConst 0);
(*  %mul56 = mul nuw i128 %conv, %conv55 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv_L) (bvVar conv55_L);
bvMul tmpHL_L (bvVar conv_H) (bvVar conv55_L);
bvMul tmpLH_L (bvVar conv_L) (bvVar conv55_H);
bvAssign mul56_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul56_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul61 = mul nuw i128 %conv17, %conv37 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv17_L) (bvVar conv37_L);
bvMul tmpHL_L (bvVar conv17_H) (bvVar conv37_L);
bvMul tmpLH_L (bvVar conv17_L) (bvVar conv37_H);
bvAssign mul61_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul61_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add62 = add i128 %mul61, %mul56 *)
bvAddC carry add62_L (bvVar mul61_L) (bvVar mul56_L);
bvAdc add62_H (bvVar mul61_H) (bvVar mul56_H) carry;
(*  %mul67 = mul nuw i128 %conv46, %conv25 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv46_L) (bvVar conv25_L);
bvMul tmpHL_L (bvVar conv46_H) (bvVar conv25_L);
bvMul tmpLH_L (bvVar conv46_L) (bvVar conv25_H);
bvAssign mul67_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul67_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add68 = add i128 %add62, %mul67 *)
bvAddC carry add68_L (bvVar add62_L) (bvVar mul67_L);
bvAdc add68_H (bvVar add62_H) (bvVar mul67_H) carry;
(*  %arrayidx69 = getelementptr inbounds i128, i128* %out, i64 5 *)
(*  %conv73 = zext i64 %mul18.i to i128 *)
bvAssign conv73_L (bvVar mul18_i);
bvAssign conv73_H (bvConst 0);
(*  %mul74 = mul nuw i128 %conv, %conv73 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv_L) (bvVar conv73_L);
bvMul tmpHL_L (bvVar conv_H) (bvVar conv73_L);
bvMul tmpLH_L (bvVar conv_L) (bvVar conv73_H);
bvAssign mul74_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul74_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul79 = mul nuw i128 %conv17, %conv55 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv17_L) (bvVar conv55_L);
bvMul tmpHL_L (bvVar conv17_H) (bvVar conv55_L);
bvMul tmpLH_L (bvVar conv17_L) (bvVar conv55_H);
bvAssign mul79_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul79_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add80 = add i128 %mul79, %mul74 *)
bvAddC carry add80_L (bvVar mul79_L) (bvVar mul74_L);
bvAdc add80_H (bvVar mul79_H) (bvVar mul74_H) carry;
(*  %mul85 = mul nuw i128 %conv46, %conv37 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv46_L) (bvVar conv37_L);
bvMul tmpHL_L (bvVar conv46_H) (bvVar conv37_L);
bvMul tmpLH_L (bvVar conv46_L) (bvVar conv37_H);
bvAssign mul85_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul85_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add86 = add i128 %add80, %mul85 *)
bvAddC carry add86_L (bvVar add80_L) (bvVar mul85_L);
bvAdc add86_H (bvVar add80_H) (bvVar mul85_H) carry;
(*  %conv88 = zext i64 %3 to i128 *)
bvAssign conv88_L (bvVar v3);
bvAssign conv88_H (bvConst 0);
(*  %mul91 = mul nuw i128 %conv88, %conv88 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv88_L) (bvVar conv88_L);
bvMul tmpHL_L (bvVar conv88_H) (bvVar conv88_L);
bvMul tmpLH_L (bvVar conv88_L) (bvVar conv88_H);
bvAssign mul91_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul91_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add92 = add i128 %add86, %mul91 *)
bvAddC carry add92_L (bvVar add86_L) (bvVar mul91_L);
bvAdc add92_H (bvVar add86_H) (bvVar mul91_H) carry;
(*  %arrayidx93 = getelementptr inbounds i128, i128* %out, i64 6 *)
(*  %conv97 = zext i64 %mul21.i to i128 *)
bvAssign conv97_L (bvVar mul21_i);
bvAssign conv97_H (bvConst 0);
(*  %mul98 = mul nuw i128 %conv, %conv97 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv_L) (bvVar conv97_L);
bvMul tmpHL_L (bvVar conv_H) (bvVar conv97_L);
bvMul tmpLH_L (bvVar conv_L) (bvVar conv97_H);
bvAssign mul98_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul98_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul103 = mul nuw i128 %conv17, %conv73 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv17_L) (bvVar conv73_L);
bvMul tmpHL_L (bvVar conv17_H) (bvVar conv73_L);
bvMul tmpLH_L (bvVar conv17_L) (bvVar conv73_H);
bvAssign mul103_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul103_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add104 = add i128 %mul103, %mul98 *)
bvAddC carry add104_L (bvVar mul103_L) (bvVar mul98_L);
bvAdc add104_H (bvVar mul103_H) (bvVar mul98_H) carry;
(*  %mul109 = mul nuw i128 %conv46, %conv55 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv46_L) (bvVar conv55_L);
bvMul tmpHL_L (bvVar conv46_H) (bvVar conv55_L);
bvMul tmpLH_L (bvVar conv46_L) (bvVar conv55_H);
bvAssign mul109_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul109_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add110 = add i128 %add104, %mul109 *)
bvAddC carry add110_L (bvVar add104_L) (bvVar mul109_L);
bvAdc add110_H (bvVar add104_H) (bvVar mul109_H) carry;
(*  %mul115 = mul nuw i128 %conv88, %conv37 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv88_L) (bvVar conv37_L);
bvMul tmpHL_L (bvVar conv88_H) (bvVar conv37_L);
bvMul tmpLH_L (bvVar conv88_L) (bvVar conv37_H);
bvAssign mul115_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul115_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add116 = add i128 %add110, %mul115 *)
bvAddC carry add116_L (bvVar add110_L) (bvVar mul115_L);
bvAdc add116_H (bvVar add110_H) (bvVar mul115_H) carry;
(*  %arrayidx117 = getelementptr inbounds i128, i128* %out, i64 7 *)
(*  %conv121 = zext i64 %mul24.i to i128 *)
bvAssign conv121_L (bvVar mul24_i);
bvAssign conv121_H (bvConst 0);
(*  %mul122 = mul nuw i128 %conv, %conv121 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv_L) (bvVar conv121_L);
bvMul tmpHL_L (bvVar conv_H) (bvVar conv121_L);
bvMul tmpLH_L (bvVar conv_L) (bvVar conv121_H);
bvAssign mul122_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul122_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul127 = mul nuw i128 %conv17, %conv97 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv17_L) (bvVar conv97_L);
bvMul tmpHL_L (bvVar conv17_H) (bvVar conv97_L);
bvMul tmpLH_L (bvVar conv17_L) (bvVar conv97_H);
bvAssign mul127_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul127_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add128 = add i128 %mul127, %mul122 *)
bvAddC carry add128_L (bvVar mul127_L) (bvVar mul122_L);
bvAdc add128_H (bvVar mul127_H) (bvVar mul122_H) carry;
(*  %mul133 = mul nuw i128 %conv46, %conv73 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv46_L) (bvVar conv73_L);
bvMul tmpHL_L (bvVar conv46_H) (bvVar conv73_L);
bvMul tmpLH_L (bvVar conv46_L) (bvVar conv73_H);
bvAssign mul133_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul133_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add134 = add i128 %add128, %mul133 *)
bvAddC carry add134_L (bvVar add128_L) (bvVar mul133_L);
bvAdc add134_H (bvVar add128_H) (bvVar mul133_H) carry;
(*  %mul139 = mul nuw i128 %conv88, %conv55 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv88_L) (bvVar conv55_L);
bvMul tmpHL_L (bvVar conv88_H) (bvVar conv55_L);
bvMul tmpLH_L (bvVar conv88_L) (bvVar conv55_H);
bvAssign mul139_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul139_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add140 = add i128 %add134, %mul139 *)
bvAddC carry add140_L (bvVar add134_L) (bvVar mul139_L);
bvAdc add140_H (bvVar add134_H) (bvVar mul139_H) carry;
(*  %conv142 = zext i64 %4 to i128 *)
bvAssign conv142_L (bvVar v4);
bvAssign conv142_H (bvConst 0);
(*  %mul145 = mul nuw i128 %conv142, %conv142 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv142_L) (bvVar conv142_L);
bvMul tmpHL_L (bvVar conv142_H) (bvVar conv142_L);
bvMul tmpLH_L (bvVar conv142_L) (bvVar conv142_H);
bvAssign mul145_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul145_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add146 = add i128 %add140, %mul145 *)
bvAddC carry add146_L (bvVar add140_L) (bvVar mul145_L);
bvAdc add146_H (bvVar add140_H) (bvVar mul145_H) carry;
(*  %arrayidx147 = getelementptr inbounds i128, i128* %out, i64 8 *)
(*  store i128 %add146, i128* %arrayidx147, align 16, !tbaa !6 *)
bvAssign L1_128 (bvVar add146_L);
bvAssign L1_136 (bvVar add146_H);
(*  %conv151 = zext i64 %mul24.i.366 to i128 *)
bvAssign conv151_L (bvVar mul24_i_366);
bvAssign conv151_H (bvConst 0);
(*  %mul152 = mul nuw i128 %conv17, %conv151 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv17_L) (bvVar conv151_L);
bvMul tmpHL_L (bvVar conv17_H) (bvVar conv151_L);
bvMul tmpLH_L (bvVar conv17_L) (bvVar conv151_H);
bvAssign mul152_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul152_H (bvVar tmp) (bvVar tmpLL_H);
(*  %conv156 = zext i64 %mul21.i.363 to i128 *)
bvAssign conv156_L (bvVar mul21_i_363);
bvAssign conv156_H (bvConst 0);
(*  %mul157 = mul nuw i128 %conv46, %conv156 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv46_L) (bvVar conv156_L);
bvMul tmpHL_L (bvVar conv46_H) (bvVar conv156_L);
bvMul tmpLH_L (bvVar conv46_L) (bvVar conv156_H);
bvAssign mul157_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul157_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add158 = add i128 %mul157, %mul152 *)
bvAddC carry add158_L (bvVar mul157_L) (bvVar mul152_L);
bvAdc add158_H (bvVar mul157_H) (bvVar mul152_H) carry;
(*  %conv162 = zext i64 %mul18.i.360 to i128 *)
bvAssign conv162_L (bvVar mul18_i_360);
bvAssign conv162_H (bvConst 0);
(*  %mul163 = mul nuw i128 %conv88, %conv162 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv88_L) (bvVar conv162_L);
bvMul tmpHL_L (bvVar conv88_H) (bvVar conv162_L);
bvMul tmpLH_L (bvVar conv88_L) (bvVar conv162_H);
bvAssign mul163_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul163_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add164 = add i128 %add158, %mul163 *)
bvAddC carry add164_L (bvVar add158_L) (bvVar mul163_L);
bvAdc add164_H (bvVar add158_H) (bvVar mul163_H) carry;
(*  %conv168 = zext i64 %mul15.i.357 to i128 *)
bvAssign conv168_L (bvVar mul15_i_357);
bvAssign conv168_H (bvConst 0);
(*  %mul169 = mul nuw i128 %conv142, %conv168 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv142_L) (bvVar conv168_L);
bvMul tmpHL_L (bvVar conv142_H) (bvVar conv168_L);
bvMul tmpLH_L (bvVar conv142_L) (bvVar conv168_H);
bvAssign mul169_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul169_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add170 = add i128 %add164, %mul *)
bvAddC carry add170_L (bvVar add164_L) (bvVar mul_L);
bvAdc add170_H (bvVar add164_H) (bvVar mul_H) carry;
(*  %add172 = add i128 %add170, %mul169 *)
bvAddC carry add172_L (bvVar add170_L) (bvVar mul169_L);
bvAdc add172_H (bvVar add170_H) (bvVar mul169_H) carry;
(*  store i128 %add172, i128* %out, align 16, !tbaa !6 *)
bvAssign L1_0 (bvVar add172_L);
bvAssign L1_8 (bvVar add172_H);
(*  %9 = load i64, i64* %arrayidx5.i, align 8, !tbaa !2 *)
bvAssign v9 (bvVar L0_16);
(*  %conv174 = zext i64 %9 to i128 *)
bvAssign conv174_L (bvVar v9);
bvAssign conv174_H (bvConst 0);
(*  %mul177 = mul nuw i128 %conv174, %conv151 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv174_L) (bvVar conv151_L);
bvMul tmpHL_L (bvVar conv174_H) (bvVar conv151_L);
bvMul tmpLH_L (bvVar conv174_L) (bvVar conv151_H);
bvAssign mul177_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul177_H (bvVar tmp) (bvVar tmpLL_H);
(*  %10 = load i64, i64* %arrayidx8.i, align 8, !tbaa !2 *)
bvAssign v10 (bvVar L0_24);
(*  %conv179 = zext i64 %10 to i128 *)
bvAssign conv179_L (bvVar v10);
bvAssign conv179_H (bvConst 0);
(*  %mul182 = mul nuw i128 %conv179, %conv156 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv179_L) (bvVar conv156_L);
bvMul tmpHL_L (bvVar conv179_H) (bvVar conv156_L);
bvMul tmpLH_L (bvVar conv179_L) (bvVar conv156_H);
bvAssign mul182_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul182_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add183 = add i128 %mul182, %mul177 *)
bvAddC carry add183_L (bvVar mul182_L) (bvVar mul177_L);
bvAdc add183_H (bvVar mul182_H) (bvVar mul177_H) carry;
(*  %11 = load i64, i64* %arrayidx11.i, align 8, !tbaa !2 *)
bvAssign v11 (bvVar L0_32);
(*  %conv185 = zext i64 %11 to i128 *)
bvAssign conv185_L (bvVar v11);
bvAssign conv185_H (bvConst 0);
(*  %mul188 = mul nuw i128 %conv185, %conv162 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv185_L) (bvVar conv162_L);
bvMul tmpHL_L (bvVar conv185_H) (bvVar conv162_L);
bvMul tmpLH_L (bvVar conv185_L) (bvVar conv162_H);
bvAssign mul188_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul188_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add189 = add i128 %add183, %mul188 *)
bvAddC carry add189_L (bvVar add183_L) (bvVar mul188_L);
bvAdc add189_H (bvVar add183_H) (bvVar mul188_H) carry;
(*  %12 = load i64, i64* %arrayidx14.i, align 8, !tbaa !2 *)
bvAssign v12 (bvVar L0_40);
(*  %conv191 = zext i64 %12 to i128 *)
bvAssign conv191_L (bvVar v12);
bvAssign conv191_H (bvConst 0);
(*  %mul194 = mul nuw i128 %conv191, %conv55 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv191_L) (bvVar conv55_L);
bvMul tmpHL_L (bvVar conv191_H) (bvVar conv55_L);
bvMul tmpLH_L (bvVar conv191_L) (bvVar conv55_H);
bvAssign mul194_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul194_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add195 = add i128 %add189, %mul9 *)
bvAddC carry add195_L (bvVar add189_L) (bvVar mul9_L);
bvAdc add195_H (bvVar add189_H) (bvVar mul9_H) carry;
(*  %add197 = add i128 %add195, %mul194 *)
bvAddC carry add197_L (bvVar add195_L) (bvVar mul194_L);
bvAdc add197_H (bvVar add195_H) (bvVar mul194_H) carry;
(*  store i128 %add197, i128* %arrayidx10, align 16, !tbaa !6 *)
bvAssign L1_16 (bvVar add197_L);
bvAssign L1_24 (bvVar add197_H);
(*  %mul202 = mul nuw i128 %conv179, %conv151 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv179_L) (bvVar conv151_L);
bvMul tmpHL_L (bvVar conv179_H) (bvVar conv151_L);
bvMul tmpLH_L (bvVar conv179_L) (bvVar conv151_H);
bvAssign mul202_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul202_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul207 = mul nuw i128 %conv185, %conv156 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv185_L) (bvVar conv156_L);
bvMul tmpHL_L (bvVar conv185_H) (bvVar conv156_L);
bvMul tmpLH_L (bvVar conv185_L) (bvVar conv156_H);
bvAssign mul207_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul207_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add208 = add i128 %mul207, %mul202 *)
bvAddC carry add208_L (bvVar mul207_L) (bvVar mul202_L);
bvAdc add208_H (bvVar mul207_H) (bvVar mul202_H) carry;
(*  %mul213 = mul nuw i128 %conv191, %conv162 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv191_L) (bvVar conv162_L);
bvMul tmpHL_L (bvVar conv191_H) (bvVar conv162_L);
bvMul tmpLH_L (bvVar conv191_L) (bvVar conv162_H);
bvAssign mul213_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul213_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add214 = add i128 %add208, %add *)
bvAddC carry add214_L (bvVar add208_L) (bvVar add_L);
bvAdc add214_H (bvVar add208_H) (bvVar add_H) carry;
(*  %add216 = add i128 %add214, %mul213 *)
bvAddC carry add216_L (bvVar add214_L) (bvVar mul213_L);
bvAdc add216_H (bvVar add214_H) (bvVar mul213_H) carry;
(*  store i128 %add216, i128* %arrayidx21, align 16, !tbaa !6 *)
bvAssign L1_32 (bvVar add216_L);
bvAssign L1_40 (bvVar add216_H);
(*  %mul221 = mul nuw i128 %conv185, %conv151 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv185_L) (bvVar conv151_L);
bvMul tmpHL_L (bvVar conv185_H) (bvVar conv151_L);
bvMul tmpLH_L (bvVar conv185_L) (bvVar conv151_H);
bvAssign mul221_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul221_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul226 = mul nuw i128 %conv191, %conv156 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv191_L) (bvVar conv156_L);
bvMul tmpHL_L (bvVar conv191_H) (bvVar conv156_L);
bvMul tmpLH_L (bvVar conv191_L) (bvVar conv156_H);
bvAssign mul226_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul226_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add227 = add i128 %mul226, %mul221 *)
bvAddC carry add227_L (bvVar mul226_L) (bvVar mul221_L);
bvAdc add227_H (bvVar mul226_H) (bvVar mul221_H) carry;
(*  %13 = load i64, i64* %arrayidx17.i, align 8, !tbaa !2 *)
bvAssign v13 (bvVar L0_48);
(*  %conv229 = zext i64 %13 to i128 *)
bvAssign conv229_L (bvVar v13);
bvAssign conv229_H (bvConst 0);
(*  %mul232 = mul nuw i128 %conv229, %conv73 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv229_L) (bvVar conv73_L);
bvMul tmpHL_L (bvVar conv229_H) (bvVar conv73_L);
bvMul tmpLH_L (bvVar conv229_L) (bvVar conv73_H);
bvAssign mul232_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul232_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add233 = add i128 %add227, %add32 *)
bvAddC carry add233_L (bvVar add227_L) (bvVar add32_L);
bvAdc add233_H (bvVar add227_H) (bvVar add32_H) carry;
(*  %add235 = add i128 %add233, %mul232 *)
bvAddC carry add235_L (bvVar add233_L) (bvVar mul232_L);
bvAdc add235_H (bvVar add233_H) (bvVar mul232_H) carry;
(*  store i128 %add235, i128* %arrayidx33, align 16, !tbaa !6 *)
bvAssign L1_48 (bvVar add235_L);
bvAssign L1_56 (bvVar add235_H);
(*  %mul240 = mul nuw i128 %conv191, %conv151 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv191_L) (bvVar conv151_L);
bvMul tmpHL_L (bvVar conv191_H) (bvVar conv151_L);
bvMul tmpLH_L (bvVar conv191_L) (bvVar conv151_H);
bvAssign mul240_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul240_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul245 = mul nuw i128 %conv229, %conv156 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv229_L) (bvVar conv156_L);
bvMul tmpHL_L (bvVar conv229_H) (bvVar conv156_L);
bvMul tmpLH_L (bvVar conv229_L) (bvVar conv156_H);
bvAssign mul245_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul245_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add246 = add i128 %add50, %mul240 *)
bvAddC carry add246_L (bvVar add50_L) (bvVar mul240_L);
bvAdc add246_H (bvVar add50_H) (bvVar mul240_H) carry;
(*  %add248 = add i128 %add246, %mul245 *)
bvAddC carry add248_L (bvVar add246_L) (bvVar mul245_L);
bvAdc add248_H (bvVar add246_H) (bvVar mul245_H) carry;
(*  store i128 %add248, i128* %arrayidx51, align 16, !tbaa !6 *)
bvAssign L1_64 (bvVar add248_L);
bvAssign L1_72 (bvVar add248_H);
(*  %mul253 = mul nuw i128 %conv229, %conv151 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv229_L) (bvVar conv151_L);
bvMul tmpHL_L (bvVar conv229_H) (bvVar conv151_L);
bvMul tmpLH_L (bvVar conv229_L) (bvVar conv151_H);
bvAssign mul253_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul253_H (bvVar tmp) (bvVar tmpLL_H);
(*  %14 = load i64, i64* %arrayidx20.i, align 8, !tbaa !2 *)
bvAssign v14 (bvVar L0_56);
(*  %conv255 = zext i64 %14 to i128 *)
bvAssign conv255_L (bvVar v14);
bvAssign conv255_H (bvConst 0);
(*  %mul258 = mul nuw i128 %conv255, %conv97 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv255_L) (bvVar conv97_L);
bvMul tmpHL_L (bvVar conv255_H) (bvVar conv97_L);
bvMul tmpLH_L (bvVar conv255_L) (bvVar conv97_H);
bvAssign mul258_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul258_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add259 = add i128 %add68, %mul253 *)
bvAddC carry add259_L (bvVar add68_L) (bvVar mul253_L);
bvAdc add259_H (bvVar add68_H) (bvVar mul253_H) carry;
(*  %add261 = add i128 %add259, %mul258 *)
bvAddC carry add261_L (bvVar add259_L) (bvVar mul258_L);
bvAdc add261_H (bvVar add259_H) (bvVar mul258_H) carry;
(*  store i128 %add261, i128* %arrayidx69, align 16, !tbaa !6 *)
bvAssign L1_80 (bvVar add261_L);
bvAssign L1_88 (bvVar add261_H);
(*  %mul266 = mul nuw i128 %conv255, %conv151 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv255_L) (bvVar conv151_L);
bvMul tmpHL_L (bvVar conv255_H) (bvVar conv151_L);
bvMul tmpLH_L (bvVar conv255_L) (bvVar conv151_H);
bvAssign mul266_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul266_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add268 = add i128 %mul266, %add92 *)
bvAddC carry add268_L (bvVar mul266_L) (bvVar add92_L);
bvAdc add268_H (bvVar mul266_H) (bvVar add92_H) carry;
(*  store i128 %add268, i128* %arrayidx93, align 16, !tbaa !6 *)
bvAssign L1_96 (bvVar add268_L);
bvAssign L1_104 (bvVar add268_H);
(*  %15 = load i64, i64* %arrayidx23.i, align 8, !tbaa !2 *)
bvAssign v15 (bvVar L0_64);
(*  %conv270 = zext i64 %15 to i128 *)
bvAssign conv270_L (bvVar v15);
bvAssign conv270_H (bvConst 0);
(*  %mul273 = mul nuw i128 %conv270, %conv121 *)
bvMulf tmpLL_H tmpLL_L (bvVar conv270_L) (bvVar conv121_L);
bvMul tmpHL_L (bvVar conv270_H) (bvVar conv121_L);
bvMul tmpLH_L (bvVar conv270_L) (bvVar conv121_H);
bvAssign mul273_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul273_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add275 = add i128 %mul273, %add116 *)
bvAddC carry add275_L (bvVar mul273_L) (bvVar add116_L);
bvAdc add275_H (bvVar mul273_H) (bvVar add116_H) carry;
(*  store i128 %add275, i128* %arrayidx117, align 16, !tbaa !6 *)
bvAssign L1_112 (bvVar add275_L);
bvAssign L1_120 (bvVar add275_H);
(*  ret void *)


{
  bveTrue
  |
  bvrTrue
}


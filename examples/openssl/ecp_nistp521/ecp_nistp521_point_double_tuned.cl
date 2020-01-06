(* ================== felem_square ====================*)
(* range property cannot be specified, one safety check fails (see NOTE) *)
(* The input range specified in C comments can overflow *)
(* each limb <= 2**62 - 2**57 passes *)
(* each limb <  2**62 - 2**56 fails  *)
proc felem_square (in0, in1, in2, in3, in4, in5, in6, in7, in8;
                   out0_L, out0_H, out1_L, out1_H, out2_L, out2_H, out3_L, out3_H, out4_L, out4_H, out5_L, out5_H, out6_L, out6_H, out7_L, out7_H, out8_L, out8_H) =
{
  true
  &&
  true
  (*
  and [
    in0 <= const 64 (2**62) - const 64 (2**57),
    in1 <= const 64 (2**62) - const 64 (2**57), 
    in2 <= const 64 (2**62) - const 64 (2**57),
    in3 <= const 64 (2**62) - const 64 (2**57), 
    in4 <= const 64 (2**62) - const 64 (2**57),
    in5 <= const 64 (2**62) - const 64 (2**57), 
    in6 <= const 64 (2**62) - const 64 (2**57),
    in7 <= const 64 (2**62) - const 64 (2**57), 
    in8 <= const 64 (2**62) - const 64 (2**57)
  ]
  *)
}

mov  L0_0 in0;
mov  L0_8 in1;
mov L0_16 in2;
mov L0_24 in3;
mov L0_32 in4;
mov L0_40 in5;
mov L0_48 in6;
mov L0_56 in7;
mov L0_64 in8;

(*  %0 = load i64, i64* %in, align 8, !tbaa !2 *)
mov v0 L0_0;
(*  %arrayidx2.i = getelementptr inbounds i64, i64* %in, i64 1 *)
(*  %1 = load i64, i64* %arrayidx2.i, align 8, !tbaa !2 *)
mov v1 L0_8;
(*  %mul3.i = shl i64 %1, 1 *)
shl mul3_i v1 1;
(*  %arrayidx5.i = getelementptr inbounds i64, i64* %in, i64 2 *)
(*  %2 = load i64, i64* %arrayidx5.i, align 8, !tbaa !2 *)
mov v2 L0_16;
(*  %mul6.i = shl i64 %2, 1 *)
shl mul6_i v2 1;
(*  %arrayidx8.i = getelementptr inbounds i64, i64* %in, i64 3 *)
(*  %3 = load i64, i64* %arrayidx8.i, align 8, !tbaa !2 *)
mov v3 L0_24;
(*  %mul9.i = shl i64 %3, 1 *)
shl mul9_i v3 1;
(*  %arrayidx11.i = getelementptr inbounds i64, i64* %in, i64 4 *)
(*  %4 = load i64, i64* %arrayidx11.i, align 8, !tbaa !2 *)
mov v4 L0_32;
(*  %mul12.i = shl i64 %4, 1 *)
shl mul12_i v4 1;
(*  %arrayidx14.i = getelementptr inbounds i64, i64* %in, i64 5 *)
(*  %5 = load i64, i64* %arrayidx14.i, align 8, !tbaa !2 *)
mov v5 L0_40;
(*  %mul15.i = shl i64 %5, 1 *)
shl mul15_i v5 1;
(*  %arrayidx17.i = getelementptr inbounds i64, i64* %in, i64 6 *)
(*  %6 = load i64, i64* %arrayidx17.i, align 8, !tbaa !2 *)
mov v6 L0_48;
(*  %mul18.i = shl i64 %6, 1 *)
shl mul18_i v6 1;
(*  %arrayidx20.i = getelementptr inbounds i64, i64* %in, i64 7 *)
(*  %7 = load i64, i64* %arrayidx20.i, align 8, !tbaa !2 *)
mov v7 L0_56;
(*  %mul21.i = shl i64 %7, 1 *)
shl mul21_i v7 1;
(*  %arrayidx23.i = getelementptr inbounds i64, i64* %in, i64 8 *)
(*  %8 = load i64, i64* %arrayidx23.i, align 8, !tbaa !2 *)
mov v8 L0_64;
(*  %mul24.i = shl i64 %8, 1 *)
shl mul24_i v8 1;
(*  %mul15.i.357 = shl i64 %5, 2 *)
shl mul15_i_357 v5 2;
(*  %mul18.i.360 = shl i64 %6, 2 *)
shl mul18_i_360 v6 2;
(*  %mul21.i.363 = shl i64 %7, 2 *)
shl mul21_i_363 v7 2;
(*  %mul24.i.366 = shl i64 %8, 2 *)
shl mul24_i_366 v8 2;
(*  %conv = zext i64 %0 to i128 *)
mov conv_L v0;
mov conv_H 0;
(*  %mul = mul nuw i128 %conv, %conv *)
mull tmpLL_H tmpLL_L conv_L conv_L;
mul tmpHL_L conv_H conv_L;
mul tmpLH_L conv_L conv_H;
mov mul_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul_H tmp tmpLL_H;
(*  %conv8 = zext i64 %mul3.i to i128 *)
mov conv8_L mul3_i;
mov conv8_H 0;
(*  %mul9 = mul nuw i128 %conv, %conv8 *)
mull tmpLL_H tmpLL_L conv_L conv8_L;
mul tmpHL_L conv_H conv8_L;
mul tmpLH_L conv_L conv8_H;
mov mul9_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul9_H tmp tmpLL_H;
(*  %arrayidx10 = getelementptr inbounds i128, i128* %out, i64 1 *)
(*  %conv14 = zext i64 %mul6.i to i128 *)
mov conv14_L mul6_i;
mov conv14_H 0;
(*  %mul15 = mul nuw i128 %conv, %conv14 *)
mull tmpLL_H tmpLL_L conv_L conv14_L;
mul tmpHL_L conv_H conv14_L;
mul tmpLH_L conv_L conv14_H;
mov mul15_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul15_H tmp tmpLL_H;
(*  %conv17 = zext i64 %1 to i128 *)
mov conv17_L v1;
mov conv17_H 0;
(*  %mul20 = mul nuw i128 %conv17, %conv17 *)
mull tmpLL_H tmpLL_L conv17_L conv17_L;
mul tmpHL_L conv17_H conv17_L;
mul tmpLH_L conv17_L conv17_H;
mov mul20_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul20_H tmp tmpLL_H;
(*  %add = add i128 %mul20, %mul15 *)
adds carry add_L mul20_L mul15_L;
adc add_H mul20_H mul15_H carry;
(*  %arrayidx21 = getelementptr inbounds i128, i128* %out, i64 2 *)
(*  %conv25 = zext i64 %mul9.i to i128 *)
mov conv25_L mul9_i;
mov conv25_H 0;
(*  %mul26 = mul nuw i128 %conv, %conv25 *)
mull tmpLL_H tmpLL_L conv_L conv25_L;
mul tmpHL_L conv_H conv25_L;
mul tmpLH_L conv_L conv25_H;
mov mul26_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul26_H tmp tmpLL_H;
(*  %mul31 = mul nuw i128 %conv17, %conv14 *)
mull tmpLL_H tmpLL_L conv17_L conv14_L;
mul tmpHL_L conv17_H conv14_L;
mul tmpLH_L conv17_L conv14_H;
mov mul31_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul31_H tmp tmpLL_H;
(*  %add32 = add i128 %mul31, %mul26 *)
adds carry add32_L mul31_L mul26_L;
adc add32_H mul31_H mul26_H carry;
(*  %arrayidx33 = getelementptr inbounds i128, i128* %out, i64 3 *)
(*  %conv37 = zext i64 %mul12.i to i128 *)
mov conv37_L mul12_i;
mov conv37_H 0;
(*  %mul38 = mul nuw i128 %conv, %conv37 *)
mull tmpLL_H tmpLL_L conv_L conv37_L;
mul tmpHL_L conv_H conv37_L;
mul tmpLH_L conv_L conv37_H;
mov mul38_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul38_H tmp tmpLL_H;
(*  %mul43 = mul nuw i128 %conv17, %conv25 *)
mull tmpLL_H tmpLL_L conv17_L conv25_L;
mul tmpHL_L conv17_H conv25_L;
mul tmpLH_L conv17_L conv25_H;
mov mul43_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul43_H tmp tmpLL_H;
(*  %add44 = add i128 %mul43, %mul38 *)
adds carry add44_L mul43_L mul38_L;
adc add44_H mul43_H mul38_H carry;
(*  %conv46 = zext i64 %2 to i128 *)
mov conv46_L v2;
mov conv46_H 0;
(*  %mul49 = mul nuw i128 %conv46, %conv46 *)
mull tmpLL_H tmpLL_L conv46_L conv46_L;
mul tmpHL_L conv46_H conv46_L;
mul tmpLH_L conv46_L conv46_H;
mov mul49_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul49_H tmp tmpLL_H;
(*  %add50 = add i128 %add44, %mul49 *)
adds carry add50_L add44_L mul49_L;
adc add50_H add44_H mul49_H carry;
(*  %arrayidx51 = getelementptr inbounds i128, i128* %out, i64 4 *)
(*  %conv55 = zext i64 %mul15.i to i128 *)
mov conv55_L mul15_i;
mov conv55_H 0;
(*  %mul56 = mul nuw i128 %conv, %conv55 *)
mull tmpLL_H tmpLL_L conv_L conv55_L;
mul tmpHL_L conv_H conv55_L;
mul tmpLH_L conv_L conv55_H;
mov mul56_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul56_H tmp tmpLL_H;
(*  %mul61 = mul nuw i128 %conv17, %conv37 *)
mull tmpLL_H tmpLL_L conv17_L conv37_L;
mul tmpHL_L conv17_H conv37_L;
mul tmpLH_L conv17_L conv37_H;
mov mul61_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul61_H tmp tmpLL_H;
(*  %add62 = add i128 %mul61, %mul56 *)
adds carry add62_L mul61_L mul56_L;
adc add62_H mul61_H mul56_H carry;
(*  %mul67 = mul nuw i128 %conv46, %conv25 *)
mull tmpLL_H tmpLL_L conv46_L conv25_L;
mul tmpHL_L conv46_H conv25_L;
mul tmpLH_L conv46_L conv25_H;
mov mul67_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul67_H tmp tmpLL_H;
(*  %add68 = add i128 %add62, %mul67 *)
adds carry add68_L add62_L mul67_L;
adc add68_H add62_H mul67_H carry;
(*  %arrayidx69 = getelementptr inbounds i128, i128* %out, i64 5 *)
(*  %conv73 = zext i64 %mul18.i to i128 *)
mov conv73_L mul18_i;
mov conv73_H 0;
(*  %mul74 = mul nuw i128 %conv, %conv73 *)
mull tmpLL_H tmpLL_L conv_L conv73_L;
mul tmpHL_L conv_H conv73_L;
mul tmpLH_L conv_L conv73_H;
mov mul74_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul74_H tmp tmpLL_H;
(*  %mul79 = mul nuw i128 %conv17, %conv55 *)
mull tmpLL_H tmpLL_L conv17_L conv55_L;
mul tmpHL_L conv17_H conv55_L;
mul tmpLH_L conv17_L conv55_H;
mov mul79_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul79_H tmp tmpLL_H;
(*  %add80 = add i128 %mul79, %mul74 *)
adds carry add80_L mul79_L mul74_L;
adc add80_H mul79_H mul74_H carry;
(*  %mul85 = mul nuw i128 %conv46, %conv37 *)
mull tmpLL_H tmpLL_L conv46_L conv37_L;
mul tmpHL_L conv46_H conv37_L;
mul tmpLH_L conv46_L conv37_H;
mov mul85_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul85_H tmp tmpLL_H;
(*  %add86 = add i128 %add80, %mul85 *)
adds carry add86_L add80_L mul85_L;
adc add86_H add80_H mul85_H carry;
(*  %conv88 = zext i64 %3 to i128 *)
mov conv88_L v3;
mov conv88_H 0;
(*  %mul91 = mul nuw i128 %conv88, %conv88 *)
mull tmpLL_H tmpLL_L conv88_L conv88_L;
mul tmpHL_L conv88_H conv88_L;
mul tmpLH_L conv88_L conv88_H;
mov mul91_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul91_H tmp tmpLL_H;
(*  %add92 = add i128 %add86, %mul91 *)
adds carry add92_L add86_L mul91_L;
adc add92_H add86_H mul91_H carry;
(*  %arrayidx93 = getelementptr inbounds i128, i128* %out, i64 6 *)
(*  %conv97 = zext i64 %mul21.i to i128 *)
mov conv97_L mul21_i;
mov conv97_H 0;
(*  %mul98 = mul nuw i128 %conv, %conv97 *)
mull tmpLL_H tmpLL_L conv_L conv97_L;
mul tmpHL_L conv_H conv97_L;
mul tmpLH_L conv_L conv97_H;
mov mul98_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul98_H tmp tmpLL_H;
(*  %mul103 = mul nuw i128 %conv17, %conv73 *)
mull tmpLL_H tmpLL_L conv17_L conv73_L;
mul tmpHL_L conv17_H conv73_L;
mul tmpLH_L conv17_L conv73_H;
mov mul103_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul103_H tmp tmpLL_H;
(*  %add104 = add i128 %mul103, %mul98 *)
adds carry add104_L mul103_L mul98_L;
adc add104_H mul103_H mul98_H carry;
(*  %mul109 = mul nuw i128 %conv46, %conv55 *)
mull tmpLL_H tmpLL_L conv46_L conv55_L;
mul tmpHL_L conv46_H conv55_L;
mul tmpLH_L conv46_L conv55_H;
mov mul109_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul109_H tmp tmpLL_H;
(*  %add110 = add i128 %add104, %mul109 *)
adds carry add110_L add104_L mul109_L;
adc add110_H add104_H mul109_H carry;
(*  %mul115 = mul nuw i128 %conv88, %conv37 *)
mull tmpLL_H tmpLL_L conv88_L conv37_L;
mul tmpHL_L conv88_H conv37_L;
mul tmpLH_L conv88_L conv37_H;
mov mul115_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul115_H tmp tmpLL_H;
(*  %add116 = add i128 %add110, %mul115 *)
adds carry add116_L add110_L mul115_L;
adc add116_H add110_H mul115_H carry;
(*  %arrayidx117 = getelementptr inbounds i128, i128* %out, i64 7 *)
(*  %conv121 = zext i64 %mul24.i to i128 *)
mov conv121_L mul24_i;
mov conv121_H 0;
(*  %mul122 = mul nuw i128 %conv, %conv121 *)
mull tmpLL_H tmpLL_L conv_L conv121_L;
mul tmpHL_L conv_H conv121_L;
mul tmpLH_L conv_L conv121_H;
mov mul122_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul122_H tmp tmpLL_H;
(*  %mul127 = mul nuw i128 %conv17, %conv97 *)
mull tmpLL_H tmpLL_L conv17_L conv97_L;
mul tmpHL_L conv17_H conv97_L;
mul tmpLH_L conv17_L conv97_H;
mov mul127_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul127_H tmp tmpLL_H;
(*  %add128 = add i128 %mul127, %mul122 *)
adds carry add128_L mul127_L mul122_L;
adc add128_H mul127_H mul122_H carry;
(*  %mul133 = mul nuw i128 %conv46, %conv73 *)
mull tmpLL_H tmpLL_L conv46_L conv73_L;
mul tmpHL_L conv46_H conv73_L;
mul tmpLH_L conv46_L conv73_H;
mov mul133_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul133_H tmp tmpLL_H;
(*  %add134 = add i128 %add128, %mul133 *)
adds carry add134_L add128_L mul133_L;
adc add134_H add128_H mul133_H carry;
(*  %mul139 = mul nuw i128 %conv88, %conv55 *)
mull tmpLL_H tmpLL_L conv88_L conv55_L;
mul tmpHL_L conv88_H conv55_L;
mul tmpLH_L conv88_L conv55_H;
mov mul139_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul139_H tmp tmpLL_H;
(*  %add140 = add i128 %add134, %mul139 *)
adds carry add140_L add134_L mul139_L;
adc add140_H add134_H mul139_H carry;
(*  %conv142 = zext i64 %4 to i128 *)
mov conv142_L v4;
mov conv142_H 0;
(*  %mul145 = mul nuw i128 %conv142, %conv142 *)
mull tmpLL_H tmpLL_L conv142_L conv142_L;
mul tmpHL_L conv142_H conv142_L;
mul tmpLH_L conv142_L conv142_H;
mov mul145_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul145_H tmp tmpLL_H;
(*  %add146 = add i128 %add140, %mul145 *)
adds carry add146_L add140_L mul145_L;
adc add146_H add140_H mul145_H carry;
(*  %arrayidx147 = getelementptr inbounds i128, i128* %out, i64 8 *)
(*  store i128 %add146, i128* %arrayidx147, align 16, !tbaa !6 *)
mov L1_128 add146_L;
mov L1_136 add146_H;
(*  %conv151 = zext i64 %mul24.i.366 to i128 *)
mov conv151_L mul24_i_366;
mov conv151_H 0;
(*  %mul152 = mul nuw i128 %conv17, %conv151 *)
mull tmpLL_H tmpLL_L conv17_L conv151_L;
mul tmpHL_L conv17_H conv151_L;
mul tmpLH_L conv17_L conv151_H;
mov mul152_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul152_H tmp tmpLL_H;
(*  %conv156 = zext i64 %mul21.i.363 to i128 *)
mov conv156_L mul21_i_363;
mov conv156_H 0;
(*  %mul157 = mul nuw i128 %conv46, %conv156 *)
mull tmpLL_H tmpLL_L conv46_L conv156_L;
mul tmpHL_L conv46_H conv156_L;
mul tmpLH_L conv46_L conv156_H;
mov mul157_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul157_H tmp tmpLL_H;
(*  %add158 = add i128 %mul157, %mul152 *)
adds carry add158_L mul157_L mul152_L;
adc add158_H mul157_H mul152_H carry;
(*  %conv162 = zext i64 %mul18.i.360 to i128 *)
mov conv162_L mul18_i_360;
mov conv162_H 0;
(*  %mul163 = mul nuw i128 %conv88, %conv162 *)
mull tmpLL_H tmpLL_L conv88_L conv162_L;
mul tmpHL_L conv88_H conv162_L;
mul tmpLH_L conv88_L conv162_H;
mov mul163_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul163_H tmp tmpLL_H;
(*  %add164 = add i128 %add158, %mul163 *)
adds carry add164_L add158_L mul163_L;
adc add164_H add158_H mul163_H carry;
(*  %conv168 = zext i64 %mul15.i.357 to i128 *)
mov conv168_L mul15_i_357;
mov conv168_H 0;
(*  %mul169 = mul nuw i128 %conv142, %conv168 *)
mull tmpLL_H tmpLL_L conv142_L conv168_L;
mul tmpHL_L conv142_H conv168_L;
mul tmpLH_L conv142_L conv168_H;
mov mul169_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul169_H tmp tmpLL_H;
(*  %add170 = add i128 %add164, %mul *)
adds carry add170_L add164_L mul_L;
adc add170_H add164_H mul_H carry;
(*  %add172 = add i128 %add170, %mul169 *)
adds carry add172_L add170_L mul169_L;
(* NOTE: safety check fails here *)
adc add172_H add170_H mul169_H carry;
(*  store i128 %add172, i128* %out, align 16, !tbaa !6 *)
mov L1_0 add172_L;
mov L1_8 add172_H;
(*  %9 = load i64, i64* %arrayidx5.i, align 8, !tbaa !2 *)
mov v9 L0_16;
(*  %conv174 = zext i64 %9 to i128 *)
mov conv174_L v9;
mov conv174_H 0;
(*  %mul177 = mul nuw i128 %conv174, %conv151 *)
mull tmpLL_H tmpLL_L conv174_L conv151_L;
mul tmpHL_L conv174_H conv151_L;
mul tmpLH_L conv174_L conv151_H;
mov mul177_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul177_H tmp tmpLL_H;
(*  %10 = load i64, i64* %arrayidx8.i, align 8, !tbaa !2 *)
mov v10 L0_24;
(*  %conv179 = zext i64 %10 to i128 *)
mov conv179_L v10;
mov conv179_H 0;
(*  %mul182 = mul nuw i128 %conv179, %conv156 *)
mull tmpLL_H tmpLL_L conv179_L conv156_L;
mul tmpHL_L conv179_H conv156_L;
mul tmpLH_L conv179_L conv156_H;
mov mul182_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul182_H tmp tmpLL_H;
(*  %add183 = add i128 %mul182, %mul177 *)
adds carry add183_L mul182_L mul177_L;
adc add183_H mul182_H mul177_H carry;
(*  %11 = load i64, i64* %arrayidx11.i, align 8, !tbaa !2 *)
mov v11 L0_32;
(*  %conv185 = zext i64 %11 to i128 *)
mov conv185_L v11;
mov conv185_H 0;
(*  %mul188 = mul nuw i128 %conv185, %conv162 *)
mull tmpLL_H tmpLL_L conv185_L conv162_L;
mul tmpHL_L conv185_H conv162_L;
mul tmpLH_L conv185_L conv162_H;
mov mul188_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul188_H tmp tmpLL_H;
(*  %add189 = add i128 %add183, %mul188 *)
adds carry add189_L add183_L mul188_L;
adc add189_H add183_H mul188_H carry;
(*  %12 = load i64, i64* %arrayidx14.i, align 8, !tbaa !2 *)
mov v12 L0_40;
(*  %conv191 = zext i64 %12 to i128 *)
mov conv191_L v12;
mov conv191_H 0;
(*  %mul194 = mul nuw i128 %conv191, %conv55 *)
mull tmpLL_H tmpLL_L conv191_L conv55_L;
mul tmpHL_L conv191_H conv55_L;
mul tmpLH_L conv191_L conv55_H;
mov mul194_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul194_H tmp tmpLL_H;
(*  %add195 = add i128 %add189, %mul9 *)
adds carry add195_L add189_L mul9_L;
adc add195_H add189_H mul9_H carry;
(*  %add197 = add i128 %add195, %mul194 *)
adds carry add197_L add195_L mul194_L;
adc add197_H add195_H mul194_H carry;
(*  store i128 %add197, i128* %arrayidx10, align 16, !tbaa !6 *)
mov L1_16 add197_L;
mov L1_24 add197_H;
(*  %mul202 = mul nuw i128 %conv179, %conv151 *)
mull tmpLL_H tmpLL_L conv179_L conv151_L;
mul tmpHL_L conv179_H conv151_L;
mul tmpLH_L conv179_L conv151_H;
mov mul202_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul202_H tmp tmpLL_H;
(*  %mul207 = mul nuw i128 %conv185, %conv156 *)
mull tmpLL_H tmpLL_L conv185_L conv156_L;
mul tmpHL_L conv185_H conv156_L;
mul tmpLH_L conv185_L conv156_H;
mov mul207_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul207_H tmp tmpLL_H;
(*  %add208 = add i128 %mul207, %mul202 *)
adds carry add208_L mul207_L mul202_L;
adc add208_H mul207_H mul202_H carry;
(*  %mul213 = mul nuw i128 %conv191, %conv162 *)
mull tmpLL_H tmpLL_L conv191_L conv162_L;
mul tmpHL_L conv191_H conv162_L;
mul tmpLH_L conv191_L conv162_H;
mov mul213_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul213_H tmp tmpLL_H;
(*  %add214 = add i128 %add208, %add *)
adds carry add214_L add208_L add_L;
adc add214_H add208_H add_H carry;
(*  %add216 = add i128 %add214, %mul213 *)
adds carry add216_L add214_L mul213_L;
adc add216_H add214_H mul213_H carry;
(*  store i128 %add216, i128* %arrayidx21, align 16, !tbaa !6 *)
mov L1_32 add216_L;
mov L1_40 add216_H;
(*  %mul221 = mul nuw i128 %conv185, %conv151 *)
mull tmpLL_H tmpLL_L conv185_L conv151_L;
mul tmpHL_L conv185_H conv151_L;
mul tmpLH_L conv185_L conv151_H;
mov mul221_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul221_H tmp tmpLL_H;
(*  %mul226 = mul nuw i128 %conv191, %conv156 *)
mull tmpLL_H tmpLL_L conv191_L conv156_L;
mul tmpHL_L conv191_H conv156_L;
mul tmpLH_L conv191_L conv156_H;
mov mul226_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul226_H tmp tmpLL_H;
(*  %add227 = add i128 %mul226, %mul221 *)
adds carry add227_L mul226_L mul221_L;
adc add227_H mul226_H mul221_H carry;
(*  %13 = load i64, i64* %arrayidx17.i, align 8, !tbaa !2 *)
mov v13 L0_48;
(*  %conv229 = zext i64 %13 to i128 *)
mov conv229_L v13;
mov conv229_H 0;
(*  %mul232 = mul nuw i128 %conv229, %conv73 *)
mull tmpLL_H tmpLL_L conv229_L conv73_L;
mul tmpHL_L conv229_H conv73_L;
mul tmpLH_L conv229_L conv73_H;
mov mul232_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul232_H tmp tmpLL_H;
(*  %add233 = add i128 %add227, %add32 *)
adds carry add233_L add227_L add32_L;
adc add233_H add227_H add32_H carry;
(*  %add235 = add i128 %add233, %mul232 *)
adds carry add235_L add233_L mul232_L;
adc add235_H add233_H mul232_H carry;
(*  store i128 %add235, i128* %arrayidx33, align 16, !tbaa !6 *)
mov L1_48 add235_L;
mov L1_56 add235_H;
(*  %mul240 = mul nuw i128 %conv191, %conv151 *)
mull tmpLL_H tmpLL_L conv191_L conv151_L;
mul tmpHL_L conv191_H conv151_L;
mul tmpLH_L conv191_L conv151_H;
mov mul240_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul240_H tmp tmpLL_H;
(*  %mul245 = mul nuw i128 %conv229, %conv156 *)
mull tmpLL_H tmpLL_L conv229_L conv156_L;
mul tmpHL_L conv229_H conv156_L;
mul tmpLH_L conv229_L conv156_H;
mov mul245_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul245_H tmp tmpLL_H;
(*  %add246 = add i128 %add50, %mul240 *)
adds carry add246_L add50_L mul240_L;
adc add246_H add50_H mul240_H carry;
(*  %add248 = add i128 %add246, %mul245 *)
adds carry add248_L add246_L mul245_L;
adc add248_H add246_H mul245_H carry;
(*  store i128 %add248, i128* %arrayidx51, align 16, !tbaa !6 *)
mov L1_64 add248_L;
mov L1_72 add248_H;
(*  %mul253 = mul nuw i128 %conv229, %conv151 *)
mull tmpLL_H tmpLL_L conv229_L conv151_L;
mul tmpHL_L conv229_H conv151_L;
mul tmpLH_L conv229_L conv151_H;
mov mul253_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul253_H tmp tmpLL_H;
(*  %14 = load i64, i64* %arrayidx20.i, align 8, !tbaa !2 *)
mov v14 L0_56;
(*  %conv255 = zext i64 %14 to i128 *)
mov conv255_L v14;
mov conv255_H 0;
(*  %mul258 = mul nuw i128 %conv255, %conv97 *)
mull tmpLL_H tmpLL_L conv255_L conv97_L;
mul tmpHL_L conv255_H conv97_L;
mul tmpLH_L conv255_L conv97_H;
mov mul258_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul258_H tmp tmpLL_H;
(*  %add259 = add i128 %add68, %mul253 *)
adds carry add259_L add68_L mul253_L;
adc add259_H add68_H mul253_H carry;
(*  %add261 = add i128 %add259, %mul258 *)
adds carry add261_L add259_L mul258_L;
adc add261_H add259_H mul258_H carry;
(*  store i128 %add261, i128* %arrayidx69, align 16, !tbaa !6 *)
mov L1_80 add261_L;
mov L1_88 add261_H;
(*  %mul266 = mul nuw i128 %conv255, %conv151 *)
mull tmpLL_H tmpLL_L conv255_L conv151_L;
mul tmpHL_L conv255_H conv151_L;
mul tmpLH_L conv255_L conv151_H;
mov mul266_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul266_H tmp tmpLL_H;
(*  %add268 = add i128 %mul266, %add92 *)
adds carry add268_L mul266_L add92_L;
adc add268_H mul266_H add92_H carry;
(*  store i128 %add268, i128* %arrayidx93, align 16, !tbaa !6 *)
mov L1_96 add268_L;
mov L1_104 add268_H;
(*  %15 = load i64, i64* %arrayidx23.i, align 8, !tbaa !2 *)
mov v15 L0_64;
(*  %conv270 = zext i64 %15 to i128 *)
mov conv270_L v15;
mov conv270_H 0;
(*  %mul273 = mul nuw i128 %conv270, %conv121 *)
mull tmpLL_H tmpLL_L conv270_L conv121_L;
mul tmpHL_L conv270_H conv121_L;
mul tmpLH_L conv270_L conv121_H;
mov mul273_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul273_H tmp tmpLL_H;
(*  %add275 = add i128 %mul273, %add116 *)
adds carry add275_L mul273_L add116_L;
adc add275_H mul273_H add116_H carry;
(*  store i128 %add275, i128* %arrayidx117, align 16, !tbaa !6 *)
mov L1_112 add275_L;
mov L1_120 add275_H;
(*  ret void *)

mov out0_L L1_0;
mov out0_H L1_8;
mov out1_L L1_16;
mov out1_H L1_24;
mov out2_L L1_32;
mov out2_H L1_40;
mov out3_L L1_48;
mov out3_H L1_56;
mov out4_L L1_64;
mov out4_H L1_72;
mov out5_L L1_80;
mov out5_H L1_88;
mov out6_L L1_96;
mov out6_H L1_104;
mov out7_L L1_112;
mov out7_H L1_120;
mov out8_L L1_128;
mov out8_H L1_136;

{
  (*
  eqmod (limbs 58 [limbs 64 [out0_L, out0_H],
                      limbs 64 [out1_L, out1_H],
                      limbs 64 [out2_L, out2_H],
                      limbs 64 [out3_L, out3_H],
                      limbs 64 [out4_L, out4_H],
                      limbs 64 [out5_L, out5_H],
                      limbs 64 [out6_L, out6_H],
                      limbs 64 [out7_L, out7_H],
                      limbs 64 [out8_L, out8_H]])
           ((limbs 58 [in0, in1, in2, in3,
                       in4, in5, in6, in7,
                       in8])
            *
            (limbs 58 [in0, in1, in2, in3,
                       in4, in5, in6, in7,
                       in8]))
           ((2**521) - 1)
  *)
  true
  &&
  true
  (* out[i] < 17 * max(in[i]) * max(in[i]) *)
}
(* ================== felem_square ====================*)



(* ================== felem_mul ====================*)
(* safety check fails, range property cannot be specified *)
(* The input range specified in C comments can overflow *)
(* each limb <= 2**62 - 2**57 passes *)
(* each limb <= 2**62 - 2**56 fails  *)
proc felem_mul (in1_0, in1_1, in1_2, in1_3, in1_4, in1_5, in1_6, in1_7, in1_8,
                in2_0, in2_1, in2_2, in2_3, in2_4, in2_5, in2_6, in2_7, in2_8;
		out0_L, out0_H, out1_L, out1_H, out2_L, out2_H, out3_L, out3_H, out4_L, out4_H, out5_L, out5_H, out6_L, out6_H, out7_L, out7_H, out8_L, out8_H) =
{
  true
  &&
  (*
  and [
    in1_0 <= const 64 (2**62),
    in1_1 <= const 64 (2**62) - const 64 (2**57),
    in1_2 <= const 64 (2**62) - const 64 (2**57),
    in1_3 <= const 64 (2**62) - const 64 (2**57),
    in1_4 <= const 64 (2**62) - const 64 (2**57),
    in1_5 <= const 64 (2**62) - const 64 (2**57),
    in1_6 <= const 64 (2**62) - const 64 (2**57),
    in1_7 <= const 64 (2**62) - const 64 (2**57),
    in1_8 <= const 64 (2**62) - const 64 (2**57),
    in2_0 <= const 64 (2**62) - const 64 (2**57),
    in2_1 <= const 64 (2**62) - const 64 (2**57), 
    in2_2 <= const 64 (2**62) - const 64 (2**57),
    in2_3 <= const 64 (2**62) - const 64 (2**57), 
    in2_4 <= const 64 (2**62) - const 64 (2**57),
    in2_5 <= const 64 (2**62) - const 64 (2**57),
    in2_6 <= const 64 (2**62) - const 64 (2**57),
    in2_7 <= const 64 (2**62) - const 64 (2**57), 
    in2_8 <= const 64 (2**62) - const 64 (2**57)
  ]
  *)
  true
}

mov  L1_0 in1_0;
mov  L1_8 in1_1;
mov L1_16 in1_2;
mov L1_24 in1_3;
mov L1_32 in1_4;
mov L1_40 in1_5;
mov L1_48 in1_6;
mov L1_56 in1_7;
mov L1_64 in1_8;

mov  L0_0 in2_0;
mov  L0_8 in2_1;
mov L0_16 in2_2;
mov L0_24 in2_3;
mov L0_32 in2_4;
mov L0_40 in2_5;
mov L0_48 in2_6;
mov L0_56 in2_7;
mov L0_64 in2_8;

(*  %0 = load i64, i64* %in2, align 8, !tbaa !2 *)
mov v0 L0_0;
(*  %arrayidx2.i = getelementptr inbounds i64, i64* %in2, i64 1 *)
(*  %1 = load i64, i64* %arrayidx2.i, align 8, !tbaa !2 *)
mov v1 L0_8;
(*  %mul3.i = shl i64 %1, 1 *)
shl mul3_i v1 1;
(*  %arrayidx5.i = getelementptr inbounds i64, i64* %in2, i64 2 *)
(*  %2 = load i64, i64* %arrayidx5.i, align 8, !tbaa !2 *)
mov v2 L0_16;
(*  %mul6.i = shl i64 %2, 1 *)
shl mul6_i v2 1;
(*  %arrayidx8.i = getelementptr inbounds i64, i64* %in2, i64 3 *)
(*  %3 = load i64, i64* %arrayidx8.i, align 8, !tbaa !2 *)
mov v3 L0_24;
(*  %mul9.i = shl i64 %3, 1 *)
shl mul9_i v3 1;
(*  %arrayidx11.i = getelementptr inbounds i64, i64* %in2, i64 4 *)
(*  %4 = load i64, i64* %arrayidx11.i, align 8, !tbaa !2 *)
mov v4 L0_32;
(*  %mul12.i = shl i64 %4, 1 *)
shl mul12_i v4 1;
(*  %arrayidx14.i = getelementptr inbounds i64, i64* %in2, i64 5 *)
(*  %5 = load i64, i64* %arrayidx14.i, align 8, !tbaa !2 *)
mov v5 L0_40;
(*  %mul15.i = shl i64 %5, 1 *)
shl mul15_i v5 1;
(*  %arrayidx17.i = getelementptr inbounds i64, i64* %in2, i64 6 *)
(*  %6 = load i64, i64* %arrayidx17.i, align 8, !tbaa !2 *)
mov v6 L0_48;
(*  %mul18.i = shl i64 %6, 1 *)
shl mul18_i v6 1;
(*  %arrayidx20.i = getelementptr inbounds i64, i64* %in2, i64 7 *)
(*  %7 = load i64, i64* %arrayidx20.i, align 8, !tbaa !2 *)
mov v7 L0_56;
(*  %mul21.i = shl i64 %7, 1 *)
shl mul21_i v7 1;
(*  %arrayidx23.i = getelementptr inbounds i64, i64* %in2, i64 8 *)
(*  %8 = load i64, i64* %arrayidx23.i, align 8, !tbaa !2 *)
mov v8 L0_64;
(*  %mul24.i = shl i64 %8, 1 *)
shl mul24_i v8 1;
(*  %9 = load i64, i64* %in1, align 8, !tbaa !2 *)
mov v9 L1_0;
(*  %conv = zext i64 %9 to i128 *)
mov conv_L v9;
mov conv_H 0;
(*  %conv2 = zext i64 %0 to i128 *)
mov conv2_L v0;
mov conv2_H 0;
(*  %mul = mul nuw i128 %conv, %conv2 *)
mull tmpLL_H tmpLL_L conv_L conv2_L;
mul tmpHL_L conv_H conv2_L;
mul tmpLH_L conv_L conv2_H;
mov mul_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul_H tmp tmpLL_H;
(*  store i128 %mul, i128* %out, align 16, !tbaa !6 *)
mov L2_0 mul_L;
mov L2_8 mul_H;
(*  %conv7 = zext i64 %1 to i128 *)
mov conv7_L v1;
mov conv7_H 0;
(*  %mul8 = mul nuw i128 %conv7, %conv *)
mull tmpLL_H tmpLL_L conv7_L conv_L;
mul tmpHL_L conv7_H conv_L;
mul tmpLH_L conv7_L conv_H;
mov mul8_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul8_H tmp tmpLL_H;
(*  %arrayidx9 = getelementptr inbounds i64, i64* %in1, i64 1 *)
(*  %10 = load i64, i64* %arrayidx9, align 8, !tbaa !2 *)
mov v10 L1_8;
(*  %conv10 = zext i64 %10 to i128 *)
mov conv10_L v10;
mov conv10_H 0;
(*  %mul13 = mul nuw i128 %conv2, %conv10 *)
mull tmpLL_H tmpLL_L conv2_L conv10_L;
mul tmpHL_L conv2_H conv10_L;
mul tmpLH_L conv2_L conv10_H;
mov mul13_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul13_H tmp tmpLL_H;
(*  %add = add i128 %mul13, %mul8 *)
adds carry add_L mul13_L mul8_L;
adc add_H mul13_H mul8_H carry;
(*  %arrayidx14 = getelementptr inbounds i128, i128* %out, i64 1 *)
(*  store i128 %add, i128* %arrayidx14, align 16, !tbaa !6 *)
mov L2_16 add_L;
mov L2_24 add_H;
(*  %conv18 = zext i64 %2 to i128 *)
mov conv18_L v2;
mov conv18_H 0;
(*  %mul19 = mul nuw i128 %conv18, %conv *)
mull tmpLL_H tmpLL_L conv18_L conv_L;
mul tmpHL_L conv18_H conv_L;
mul tmpLH_L conv18_L conv_H;
mov mul19_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul19_H tmp tmpLL_H;
(*  %mul24 = mul nuw i128 %conv7, %conv10 *)
mull tmpLL_H tmpLL_L conv7_L conv10_L;
mul tmpHL_L conv7_H conv10_L;
mul tmpLH_L conv7_L conv10_H;
mov mul24_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul24_H tmp tmpLL_H;
(*  %add25 = add i128 %mul24, %mul19 *)
adds carry add25_L mul24_L mul19_L;
adc add25_H mul24_H mul19_H carry;
(*  %arrayidx26 = getelementptr inbounds i64, i64* %in1, i64 2 *)
(*  %11 = load i64, i64* %arrayidx26, align 8, !tbaa !2 *)
mov v11 L1_16;
(*  %conv27 = zext i64 %11 to i128 *)
mov conv27_L v11;
mov conv27_H 0;
(*  %mul30 = mul nuw i128 %conv2, %conv27 *)
mull tmpLL_H tmpLL_L conv2_L conv27_L;
mul tmpHL_L conv2_H conv27_L;
mul tmpLH_L conv2_L conv27_H;
mov mul30_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul30_H tmp tmpLL_H;
(*  %add31 = add i128 %add25, %mul30 *)
adds carry add31_L add25_L mul30_L;
adc add31_H add25_H mul30_H carry;
(*  %arrayidx32 = getelementptr inbounds i128, i128* %out, i64 2 *)
(*  store i128 %add31, i128* %arrayidx32, align 16, !tbaa !6 *)
mov L2_32 add31_L;
mov L2_40 add31_H;
(*  %conv36 = zext i64 %3 to i128 *)
mov conv36_L v3;
mov conv36_H 0;
(*  %mul37 = mul nuw i128 %conv36, %conv *)
mull tmpLL_H tmpLL_L conv36_L conv_L;
mul tmpHL_L conv36_H conv_L;
mul tmpLH_L conv36_L conv_H;
mov mul37_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul37_H tmp tmpLL_H;
(*  %mul42 = mul nuw i128 %conv18, %conv10 *)
mull tmpLL_H tmpLL_L conv18_L conv10_L;
mul tmpHL_L conv18_H conv10_L;
mul tmpLH_L conv18_L conv10_H;
mov mul42_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul42_H tmp tmpLL_H;
(*  %add43 = add i128 %mul42, %mul37 *)
adds carry add43_L mul42_L mul37_L;
adc add43_H mul42_H mul37_H carry;
(*  %mul48 = mul nuw i128 %conv7, %conv27 *)
mull tmpLL_H tmpLL_L conv7_L conv27_L;
mul tmpHL_L conv7_H conv27_L;
mul tmpLH_L conv7_L conv27_H;
mov mul48_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul48_H tmp tmpLL_H;
(*  %add49 = add i128 %add43, %mul48 *)
adds carry add49_L add43_L mul48_L;
adc add49_H add43_H mul48_H carry;
(*  %arrayidx50 = getelementptr inbounds i64, i64* %in1, i64 3 *)
(*  %12 = load i64, i64* %arrayidx50, align 8, !tbaa !2 *)
mov v12 L1_24;
(*  %conv51 = zext i64 %12 to i128 *)
mov conv51_L v12;
mov conv51_H 0;
(*  %mul54 = mul nuw i128 %conv2, %conv51 *)
mull tmpLL_H tmpLL_L conv2_L conv51_L;
mul tmpHL_L conv2_H conv51_L;
mul tmpLH_L conv2_L conv51_H;
mov mul54_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul54_H tmp tmpLL_H;
(*  %add55 = add i128 %add49, %mul54 *)
adds carry add55_L add49_L mul54_L;
adc add55_H add49_H mul54_H carry;
(*  %arrayidx56 = getelementptr inbounds i128, i128* %out, i64 3 *)
(*  store i128 %add55, i128* %arrayidx56, align 16, !tbaa !6 *)
mov L2_48 add55_L;
mov L2_56 add55_H;
(*  %conv60 = zext i64 %4 to i128 *)
mov conv60_L v4;
mov conv60_H 0;
(*  %mul61 = mul nuw i128 %conv60, %conv *)
mull tmpLL_H tmpLL_L conv60_L conv_L;
mul tmpHL_L conv60_H conv_L;
mul tmpLH_L conv60_L conv_H;
mov mul61_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul61_H tmp tmpLL_H;
(*  %mul66 = mul nuw i128 %conv36, %conv10 *)
mull tmpLL_H tmpLL_L conv36_L conv10_L;
mul tmpHL_L conv36_H conv10_L;
mul tmpLH_L conv36_L conv10_H;
mov mul66_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul66_H tmp tmpLL_H;
(*  %add67 = add i128 %mul66, %mul61 *)
adds carry add67_L mul66_L mul61_L;
adc add67_H mul66_H mul61_H carry;
(*  %mul72 = mul nuw i128 %conv18, %conv27 *)
mull tmpLL_H tmpLL_L conv18_L conv27_L;
mul tmpHL_L conv18_H conv27_L;
mul tmpLH_L conv18_L conv27_H;
mov mul72_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul72_H tmp tmpLL_H;
(*  %add73 = add i128 %add67, %mul72 *)
adds carry add73_L add67_L mul72_L;
adc add73_H add67_H mul72_H carry;
(*  %mul78 = mul nuw i128 %conv7, %conv51 *)
mull tmpLL_H tmpLL_L conv7_L conv51_L;
mul tmpHL_L conv7_H conv51_L;
mul tmpLH_L conv7_L conv51_H;
mov mul78_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul78_H tmp tmpLL_H;
(*  %add79 = add i128 %add73, %mul78 *)
adds carry add79_L add73_L mul78_L;
adc add79_H add73_H mul78_H carry;
(*  %arrayidx80 = getelementptr inbounds i64, i64* %in1, i64 4 *)
(*  %13 = load i64, i64* %arrayidx80, align 8, !tbaa !2 *)
mov v13 L1_32;
(*  %conv81 = zext i64 %13 to i128 *)
mov conv81_L v13;
mov conv81_H 0;
(*  %mul84 = mul nuw i128 %conv2, %conv81 *)
mull tmpLL_H tmpLL_L conv2_L conv81_L;
mul tmpHL_L conv2_H conv81_L;
mul tmpLH_L conv2_L conv81_H;
mov mul84_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul84_H tmp tmpLL_H;
(*  %add85 = add i128 %add79, %mul84 *)
adds carry add85_L add79_L mul84_L;
adc add85_H add79_H mul84_H carry;
(*  %arrayidx86 = getelementptr inbounds i128, i128* %out, i64 4 *)
(*  store i128 %add85, i128* %arrayidx86, align 16, !tbaa !6 *)
mov L2_64 add85_L;
mov L2_72 add85_H;
(*  %conv90 = zext i64 %5 to i128 *)
mov conv90_L v5;
mov conv90_H 0;
(*  %mul91 = mul nuw i128 %conv90, %conv *)
mull tmpLL_H tmpLL_L conv90_L conv_L;
mul tmpHL_L conv90_H conv_L;
mul tmpLH_L conv90_L conv_H;
mov mul91_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul91_H tmp tmpLL_H;
(*  %mul96 = mul nuw i128 %conv60, %conv10 *)
mull tmpLL_H tmpLL_L conv60_L conv10_L;
mul tmpHL_L conv60_H conv10_L;
mul tmpLH_L conv60_L conv10_H;
mov mul96_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul96_H tmp tmpLL_H;
(*  %add97 = add i128 %mul96, %mul91 *)
adds carry add97_L mul96_L mul91_L;
adc add97_H mul96_H mul91_H carry;
(*  %mul102 = mul nuw i128 %conv36, %conv27 *)
mull tmpLL_H tmpLL_L conv36_L conv27_L;
mul tmpHL_L conv36_H conv27_L;
mul tmpLH_L conv36_L conv27_H;
mov mul102_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul102_H tmp tmpLL_H;
(*  %add103 = add i128 %add97, %mul102 *)
adds carry add103_L add97_L mul102_L;
adc add103_H add97_H mul102_H carry;
(*  %mul108 = mul nuw i128 %conv18, %conv51 *)
mull tmpLL_H tmpLL_L conv18_L conv51_L;
mul tmpHL_L conv18_H conv51_L;
mul tmpLH_L conv18_L conv51_H;
mov mul108_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul108_H tmp tmpLL_H;
(*  %add109 = add i128 %add103, %mul108 *)
adds carry add109_L add103_L mul108_L;
adc add109_H add103_H mul108_H carry;
(*  %mul114 = mul nuw i128 %conv7, %conv81 *)
mull tmpLL_H tmpLL_L conv7_L conv81_L;
mul tmpHL_L conv7_H conv81_L;
mul tmpLH_L conv7_L conv81_H;
mov mul114_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul114_H tmp tmpLL_H;
(*  %add115 = add i128 %add109, %mul114 *)
adds carry add115_L add109_L mul114_L;
adc add115_H add109_H mul114_H carry;
(*  %arrayidx116 = getelementptr inbounds i64, i64* %in1, i64 5 *)
(*  %14 = load i64, i64* %arrayidx116, align 8, !tbaa !2 *)
mov v14 L1_40;
(*  %conv117 = zext i64 %14 to i128 *)
mov conv117_L v14;
mov conv117_H 0;
(*  %mul120 = mul nuw i128 %conv2, %conv117 *)
mull tmpLL_H tmpLL_L conv2_L conv117_L;
mul tmpHL_L conv2_H conv117_L;
mul tmpLH_L conv2_L conv117_H;
mov mul120_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul120_H tmp tmpLL_H;
(*  %add121 = add i128 %add115, %mul120 *)
adds carry add121_L add115_L mul120_L;
adc add121_H add115_H mul120_H carry;
(*  %arrayidx122 = getelementptr inbounds i128, i128* %out, i64 5 *)
(*  store i128 %add121, i128* %arrayidx122, align 16, !tbaa !6 *)
mov L2_80 add121_L;
mov L2_88 add121_H;
(*  %conv126 = zext i64 %6 to i128 *)
mov conv126_L v6;
mov conv126_H 0;
(*  %mul127 = mul nuw i128 %conv126, %conv *)
mull tmpLL_H tmpLL_L conv126_L conv_L;
mul tmpHL_L conv126_H conv_L;
mul tmpLH_L conv126_L conv_H;
mov mul127_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul127_H tmp tmpLL_H;
(*  %mul132 = mul nuw i128 %conv90, %conv10 *)
mull tmpLL_H tmpLL_L conv90_L conv10_L;
mul tmpHL_L conv90_H conv10_L;
mul tmpLH_L conv90_L conv10_H;
mov mul132_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul132_H tmp tmpLL_H;
(*  %add133 = add i128 %mul132, %mul127 *)
adds carry add133_L mul132_L mul127_L;
adc add133_H mul132_H mul127_H carry;
(*  %mul138 = mul nuw i128 %conv60, %conv27 *)
mull tmpLL_H tmpLL_L conv60_L conv27_L;
mul tmpHL_L conv60_H conv27_L;
mul tmpLH_L conv60_L conv27_H;
mov mul138_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul138_H tmp tmpLL_H;
(*  %add139 = add i128 %add133, %mul138 *)
adds carry add139_L add133_L mul138_L;
adc add139_H add133_H mul138_H carry;
(*  %mul144 = mul nuw i128 %conv36, %conv51 *)
mull tmpLL_H tmpLL_L conv36_L conv51_L;
mul tmpHL_L conv36_H conv51_L;
mul tmpLH_L conv36_L conv51_H;
mov mul144_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul144_H tmp tmpLL_H;
(*  %add145 = add i128 %add139, %mul144 *)
adds carry add145_L add139_L mul144_L;
adc add145_H add139_H mul144_H carry;
(*  %mul150 = mul nuw i128 %conv18, %conv81 *)
mull tmpLL_H tmpLL_L conv18_L conv81_L;
mul tmpHL_L conv18_H conv81_L;
mul tmpLH_L conv18_L conv81_H;
mov mul150_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul150_H tmp tmpLL_H;
(*  %add151 = add i128 %add145, %mul150 *)
adds carry add151_L add145_L mul150_L;
adc add151_H add145_H mul150_H carry;
(*  %15 = load i64, i64* %arrayidx2.i, align 8, !tbaa !2 *)
mov v15 L0_8;
(*  %conv155 = zext i64 %15 to i128 *)
mov conv155_L v15;
mov conv155_H 0;
(*  %mul156 = mul nuw i128 %conv155, %conv117 *)
mull tmpLL_H tmpLL_L conv155_L conv117_L;
mul tmpHL_L conv155_H conv117_L;
mul tmpLH_L conv155_L conv117_H;
mov mul156_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul156_H tmp tmpLL_H;
(*  %add157 = add i128 %add151, %mul156 *)
adds carry add157_L add151_L mul156_L;
adc add157_H add151_H mul156_H carry;
(*  %arrayidx158 = getelementptr inbounds i64, i64* %in1, i64 6 *)
(*  %16 = load i64, i64* %arrayidx158, align 8, !tbaa !2 *)
mov v16 L1_48;
(*  %conv159 = zext i64 %16 to i128 *)
mov conv159_L v16;
mov conv159_H 0;
(*  %17 = load i64, i64* %in2, align 8, !tbaa !2 *)
mov v17 L0_0;
(*  %conv161 = zext i64 %17 to i128 *)
mov conv161_L v17;
mov conv161_H 0;
(*  %mul162 = mul nuw i128 %conv161, %conv159 *)
mull tmpLL_H tmpLL_L conv161_L conv159_L;
mul tmpHL_L conv161_H conv159_L;
mul tmpLH_L conv161_L conv159_H;
mov mul162_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul162_H tmp tmpLL_H;
(*  %add163 = add i128 %add157, %mul162 *)
adds carry add163_L add157_L mul162_L;
adc add163_H add157_H mul162_H carry;
(*  %arrayidx164 = getelementptr inbounds i128, i128* %out, i64 6 *)
(*  store i128 %add163, i128* %arrayidx164, align 16, !tbaa !6 *)
mov L2_96 add163_L;
mov L2_104 add163_H;
(*  %conv168 = zext i64 %7 to i128 *)
mov conv168_L v7;
mov conv168_H 0;
(*  %mul169 = mul nuw i128 %conv168, %conv *)
mull tmpLL_H tmpLL_L conv168_L conv_L;
mul tmpHL_L conv168_H conv_L;
mul tmpLH_L conv168_L conv_H;
mov mul169_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul169_H tmp tmpLL_H;
(*  %18 = load i64, i64* %arrayidx17.i, align 8, !tbaa !2 *)
mov v18 L0_48;
(*  %conv173 = zext i64 %18 to i128 *)
mov conv173_L v18;
mov conv173_H 0;
(*  %mul174 = mul nuw i128 %conv173, %conv10 *)
mull tmpLL_H tmpLL_L conv173_L conv10_L;
mul tmpHL_L conv173_H conv10_L;
mul tmpLH_L conv173_L conv10_H;
mov mul174_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul174_H tmp tmpLL_H;
(*  %add175 = add i128 %mul174, %mul169 *)
adds carry add175_L mul174_L mul169_L;
adc add175_H mul174_H mul169_H carry;
(*  %19 = load i64, i64* %arrayidx14.i, align 8, !tbaa !2 *)
mov v19 L0_40;
(*  %conv179 = zext i64 %19 to i128 *)
mov conv179_L v19;
mov conv179_H 0;
(*  %mul180 = mul nuw i128 %conv179, %conv27 *)
mull tmpLL_H tmpLL_L conv179_L conv27_L;
mul tmpHL_L conv179_H conv27_L;
mul tmpLH_L conv179_L conv27_H;
mov mul180_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul180_H tmp tmpLL_H;
(*  %add181 = add i128 %add175, %mul180 *)
adds carry add181_L add175_L mul180_L;
adc add181_H add175_H mul180_H carry;
(*  %20 = load i64, i64* %arrayidx11.i, align 8, !tbaa !2 *)
mov v20 L0_32;
(*  %conv185 = zext i64 %20 to i128 *)
mov conv185_L v20;
mov conv185_H 0;
(*  %mul186 = mul nuw i128 %conv185, %conv51 *)
mull tmpLL_H tmpLL_L conv185_L conv51_L;
mul tmpHL_L conv185_H conv51_L;
mul tmpLH_L conv185_L conv51_H;
mov mul186_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul186_H tmp tmpLL_H;
(*  %add187 = add i128 %add181, %mul186 *)
adds carry add187_L add181_L mul186_L;
adc add187_H add181_H mul186_H carry;
(*  %21 = load i64, i64* %arrayidx8.i, align 8, !tbaa !2 *)
mov v21 L0_24;
(*  %conv191 = zext i64 %21 to i128 *)
mov conv191_L v21;
mov conv191_H 0;
(*  %mul192 = mul nuw i128 %conv191, %conv81 *)
mull tmpLL_H tmpLL_L conv191_L conv81_L;
mul tmpHL_L conv191_H conv81_L;
mul tmpLH_L conv191_L conv81_H;
mov mul192_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul192_H tmp tmpLL_H;
(*  %add193 = add i128 %add187, %mul192 *)
adds carry add193_L add187_L mul192_L;
adc add193_H add187_H mul192_H carry;
(*  %22 = load i64, i64* %arrayidx5.i, align 8, !tbaa !2 *)
mov v22 L0_16;
(*  %conv197 = zext i64 %22 to i128 *)
mov conv197_L v22;
mov conv197_H 0;
(*  %mul198 = mul nuw i128 %conv197, %conv117 *)
mull tmpLL_H tmpLL_L conv197_L conv117_L;
mul tmpHL_L conv197_H conv117_L;
mul tmpLH_L conv197_L conv117_H;
mov mul198_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul198_H tmp tmpLL_H;
(*  %add199 = add i128 %add193, %mul198 *)
adds carry add199_L add193_L mul198_L;
adc add199_H add193_H mul198_H carry;
(*  %mul204 = mul nuw i128 %conv155, %conv159 *)
mull tmpLL_H tmpLL_L conv155_L conv159_L;
mul tmpHL_L conv155_H conv159_L;
mul tmpLH_L conv155_L conv159_H;
mov mul204_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul204_H tmp tmpLL_H;
(*  %add205 = add i128 %add199, %mul204 *)
adds carry add205_L add199_L mul204_L;
adc add205_H add199_H mul204_H carry;
(*  %arrayidx206 = getelementptr inbounds i64, i64* %in1, i64 7 *)
(*  %23 = load i64, i64* %arrayidx206, align 8, !tbaa !2 *)
mov v23 L1_56;
(*  %conv207 = zext i64 %23 to i128 *)
mov conv207_L v23;
mov conv207_H 0;
(*  %mul210 = mul nuw i128 %conv161, %conv207 *)
mull tmpLL_H tmpLL_L conv161_L conv207_L;
mul tmpHL_L conv161_H conv207_L;
mul tmpLH_L conv161_L conv207_H;
mov mul210_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul210_H tmp tmpLL_H;
(*  %add211 = add i128 %add205, %mul210 *)
adds carry add211_L add205_L mul210_L;
adc add211_H add205_H mul210_H carry;
(*  %arrayidx212 = getelementptr inbounds i128, i128* %out, i64 7 *)
(*  store i128 %add211, i128* %arrayidx212, align 16, !tbaa !6 *)
mov L2_112 add211_L;
mov L2_120 add211_H;
(*  %24 = load i64, i64* %in1, align 8, !tbaa !2 *)
mov v24 L1_0;
(*  %conv214 = zext i64 %24 to i128 *)
mov conv214_L v24;
mov conv214_H 0;
(*  %25 = load i64, i64* %arrayidx23.i, align 8, !tbaa !2 *)
mov v25 L0_64;
(*  %conv216 = zext i64 %25 to i128 *)
mov conv216_L v25;
mov conv216_H 0;
(*  %mul217 = mul nuw i128 %conv216, %conv214 *)
mull tmpLL_H tmpLL_L conv216_L conv214_L;
mul tmpHL_L conv216_H conv214_L;
mul tmpLH_L conv216_L conv214_H;
mov mul217_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul217_H tmp tmpLL_H;
(*  %26 = load i64, i64* %arrayidx9, align 8, !tbaa !2 *)
mov v26 L1_8;
(*  %conv219 = zext i64 %26 to i128 *)
mov conv219_L v26;
mov conv219_H 0;
(*  %27 = load i64, i64* %arrayidx20.i, align 8, !tbaa !2 *)
mov v27 L0_56;
(*  %conv221 = zext i64 %27 to i128 *)
mov conv221_L v27;
mov conv221_H 0;
(*  %mul222 = mul nuw i128 %conv221, %conv219 *)
mull tmpLL_H tmpLL_L conv221_L conv219_L;
mul tmpHL_L conv221_H conv219_L;
mul tmpLH_L conv221_L conv219_H;
mov mul222_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul222_H tmp tmpLL_H;
(*  %add223 = add i128 %mul222, %mul217 *)
adds carry add223_L mul222_L mul217_L;
adc add223_H mul222_H mul217_H carry;
(*  %28 = load i64, i64* %arrayidx26, align 8, !tbaa !2 *)
mov v28 L1_16;
(*  %conv225 = zext i64 %28 to i128 *)
mov conv225_L v28;
mov conv225_H 0;
(*  %mul228 = mul nuw i128 %conv173, %conv225 *)
mull tmpLL_H tmpLL_L conv173_L conv225_L;
mul tmpHL_L conv173_H conv225_L;
mul tmpLH_L conv173_L conv225_H;
mov mul228_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul228_H tmp tmpLL_H;
(*  %add229 = add i128 %add223, %mul228 *)
adds carry add229_L add223_L mul228_L;
adc add229_H add223_H mul228_H carry;
(*  %29 = load i64, i64* %arrayidx50, align 8, !tbaa !2 *)
mov v29 L1_24;
(*  %conv231 = zext i64 %29 to i128 *)
mov conv231_L v29;
mov conv231_H 0;
(*  %mul234 = mul nuw i128 %conv179, %conv231 *)
mull tmpLL_H tmpLL_L conv179_L conv231_L;
mul tmpHL_L conv179_H conv231_L;
mul tmpLH_L conv179_L conv231_H;
mov mul234_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul234_H tmp tmpLL_H;
(*  %add235 = add i128 %add229, %mul234 *)
adds carry add235_L add229_L mul234_L;
adc add235_H add229_H mul234_H carry;
(*  %mul240 = mul nuw i128 %conv185, %conv81 *)
mull tmpLL_H tmpLL_L conv185_L conv81_L;
mul tmpHL_L conv185_H conv81_L;
mul tmpLH_L conv185_L conv81_H;
mov mul240_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul240_H tmp tmpLL_H;
(*  %add241 = add i128 %add235, %mul240 *)
adds carry add241_L add235_L mul240_L;
adc add241_H add235_H mul240_H carry;
(*  %mul246 = mul nuw i128 %conv191, %conv117 *)
mull tmpLL_H tmpLL_L conv191_L conv117_L;
mul tmpHL_L conv191_H conv117_L;
mul tmpLH_L conv191_L conv117_H;
mov mul246_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul246_H tmp tmpLL_H;
(*  %add247 = add i128 %add241, %mul246 *)
adds carry add247_L add241_L mul246_L;
adc add247_H add241_H mul246_H carry;
(*  %mul252 = mul nuw i128 %conv197, %conv159 *)
mull tmpLL_H tmpLL_L conv197_L conv159_L;
mul tmpHL_L conv197_H conv159_L;
mul tmpLH_L conv197_L conv159_H;
mov mul252_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul252_H tmp tmpLL_H;
(*  %add253 = add i128 %add247, %mul252 *)
adds carry add253_L add247_L mul252_L;
adc add253_H add247_H mul252_H carry;
(*  %mul258 = mul nuw i128 %conv155, %conv207 *)
mull tmpLL_H tmpLL_L conv155_L conv207_L;
mul tmpHL_L conv155_H conv207_L;
mul tmpLH_L conv155_L conv207_H;
mov mul258_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul258_H tmp tmpLL_H;
(*  %add259 = add i128 %add253, %mul258 *)
adds carry add259_L add253_L mul258_L;
adc add259_H add253_H mul258_H carry;
(*  %arrayidx260 = getelementptr inbounds i64, i64* %in1, i64 8 *)
(*  %30 = load i64, i64* %arrayidx260, align 8, !tbaa !2 *)
mov v30 L1_64;
(*  %conv261 = zext i64 %30 to i128 *)
mov conv261_L v30;
mov conv261_H 0;
(*  %mul264 = mul nuw i128 %conv161, %conv261 *)
mull tmpLL_H tmpLL_L conv161_L conv261_L;
mul tmpHL_L conv161_H conv261_L;
mul tmpLH_L conv161_L conv261_H;
mov mul264_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul264_H tmp tmpLL_H;
(*  %add265 = add i128 %add259, %mul264 *)
adds carry add265_L add259_L mul264_L;
adc add265_H add259_H mul264_H carry;
(*  %arrayidx266 = getelementptr inbounds i128, i128* %out, i64 8 *)
(*  store i128 %add265, i128* %arrayidx266, align 16, !tbaa !6 *)
mov L2_128 add265_L;
mov L2_136 add265_H;
(*  %conv270 = zext i64 %mul24.i to i128 *)
mov conv270_L mul24_i;
mov conv270_H 0;
(*  %mul271 = mul nuw i128 %conv219, %conv270 *)
mull tmpLL_H tmpLL_L conv219_L conv270_L;
mul tmpHL_L conv219_H conv270_L;
mul tmpLH_L conv219_L conv270_H;
mov mul271_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul271_H tmp tmpLL_H;
(*  %conv275 = zext i64 %mul21.i to i128 *)
mov conv275_L mul21_i;
mov conv275_H 0;
(*  %mul276 = mul nuw i128 %conv225, %conv275 *)
mull tmpLL_H tmpLL_L conv225_L conv275_L;
mul tmpHL_L conv225_H conv275_L;
mul tmpLH_L conv225_L conv275_H;
mov mul276_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul276_H tmp tmpLL_H;
(*  %add277 = add i128 %mul276, %mul271 *)
adds carry add277_L mul276_L mul271_L;
adc add277_H mul276_H mul271_H carry;
(*  %conv281 = zext i64 %mul18.i to i128 *)
mov conv281_L mul18_i;
mov conv281_H 0;
(*  %mul282 = mul nuw i128 %conv231, %conv281 *)
mull tmpLL_H tmpLL_L conv231_L conv281_L;
mul tmpHL_L conv231_H conv281_L;
mul tmpLH_L conv231_L conv281_H;
mov mul282_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul282_H tmp tmpLL_H;
(*  %add283 = add i128 %add277, %mul282 *)
adds carry add283_L add277_L mul282_L;
adc add283_H add277_H mul282_H carry;
(*  %31 = load i64, i64* %arrayidx80, align 8, !tbaa !2 *)
mov v31 L1_32;
(*  %conv285 = zext i64 %31 to i128 *)
mov conv285_L v31;
mov conv285_H 0;
(*  %conv287 = zext i64 %mul15.i to i128 *)
mov conv287_L mul15_i;
mov conv287_H 0;
(*  %mul288 = mul nuw i128 %conv285, %conv287 *)
mull tmpLL_H tmpLL_L conv285_L conv287_L;
mul tmpHL_L conv285_H conv287_L;
mul tmpLH_L conv285_L conv287_H;
mov mul288_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul288_H tmp tmpLL_H;
(*  %add289 = add i128 %add283, %mul288 *)
adds carry add289_L add283_L mul288_L;
adc add289_H add283_H mul288_H carry;
(*  %32 = load i64, i64* %arrayidx116, align 8, !tbaa !2 *)
mov v32 L1_40;
(*  %conv291 = zext i64 %32 to i128 *)
mov conv291_L v32;
mov conv291_H 0;
(*  %conv293 = zext i64 %mul12.i to i128 *)
mov conv293_L mul12_i;
mov conv293_H 0;
(*  %mul294 = mul nuw i128 %conv291, %conv293 *)
mull tmpLL_H tmpLL_L conv291_L conv293_L;
mul tmpHL_L conv291_H conv293_L;
mul tmpLH_L conv291_L conv293_H;
mov mul294_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul294_H tmp tmpLL_H;
(*  %add295 = add i128 %add289, %mul294 *)
adds carry add295_L add289_L mul294_L;
adc add295_H add289_H mul294_H carry;
(*  %conv299 = zext i64 %mul9.i to i128 *)
mov conv299_L mul9_i;
mov conv299_H 0;
(*  %mul300 = mul nuw i128 %conv159, %conv299 *)
mull tmpLL_H tmpLL_L conv159_L conv299_L;
mul tmpHL_L conv159_H conv299_L;
mul tmpLH_L conv159_L conv299_H;
mov mul300_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul300_H tmp tmpLL_H;
(*  %add301 = add i128 %add295, %mul300 *)
adds carry add301_L add295_L mul300_L;
adc add301_H add295_H mul300_H carry;
(*  %conv305 = zext i64 %mul6.i to i128 *)
mov conv305_L mul6_i;
mov conv305_H 0;
(*  %mul306 = mul nuw i128 %conv207, %conv305 *)
mull tmpLL_H tmpLL_L conv207_L conv305_L;
mul tmpHL_L conv207_H conv305_L;
mul tmpLH_L conv207_L conv305_H;
mov mul306_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul306_H tmp tmpLL_H;
(*  %add307 = add i128 %add301, %mul306 *)
adds carry add307_L add301_L mul306_L;
adc add307_H add301_H mul306_H carry;
(*  %conv311 = zext i64 %mul3.i to i128 *)
mov conv311_L mul3_i;
mov conv311_H 0;
(*  %mul312 = mul nuw i128 %conv261, %conv311 *)
mull tmpLL_H tmpLL_L conv261_L conv311_L;
mul tmpHL_L conv261_H conv311_L;
mul tmpLH_L conv261_L conv311_H;
mov mul312_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul312_H tmp tmpLL_H;
(*  %33 = load i128, i128* %out, align 16, !tbaa !6 *)
mov v33_L L2_0;
mov v33_H L2_8;
(*  %add313 = add i128 %add307, %33 *)
adds carry add313_L add307_L v33_L;
adc add313_H add307_H v33_H carry;
(*  %add315 = add i128 %add313, %mul312 *)
adds carry add315_L add313_L mul312_L;
adc add315_H add313_H mul312_H carry;
(*  store i128 %add315, i128* %out, align 16, !tbaa !6 *)
mov L2_0 add315_L;
mov L2_8 add315_H;
(*  %mul320 = mul nuw i128 %conv225, %conv270 *)
mull tmpLL_H tmpLL_L conv225_L conv270_L;
mul tmpHL_L conv225_H conv270_L;
mul tmpLH_L conv225_L conv270_H;
mov mul320_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul320_H tmp tmpLL_H;
(*  %mul325 = mul nuw i128 %conv231, %conv275 *)
mull tmpLL_H tmpLL_L conv231_L conv275_L;
mul tmpHL_L conv231_H conv275_L;
mul tmpLH_L conv231_L conv275_H;
mov mul325_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul325_H tmp tmpLL_H;
(*  %add326 = add i128 %mul325, %mul320 *)
adds carry add326_L mul325_L mul320_L;
adc add326_H mul325_H mul320_H carry;
(*  %mul331 = mul nuw i128 %conv285, %conv281 *)
mull tmpLL_H tmpLL_L conv285_L conv281_L;
mul tmpHL_L conv285_H conv281_L;
mul tmpLH_L conv285_L conv281_H;
mov mul331_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul331_H tmp tmpLL_H;
(*  %add332 = add i128 %add326, %mul331 *)
adds carry add332_L add326_L mul331_L;
adc add332_H add326_H mul331_H carry;
(*  %mul337 = mul nuw i128 %conv291, %conv287 *)
mull tmpLL_H tmpLL_L conv291_L conv287_L;
mul tmpHL_L conv291_H conv287_L;
mul tmpLH_L conv291_L conv287_H;
mov mul337_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul337_H tmp tmpLL_H;
(*  %add338 = add i128 %add332, %mul337 *)
adds carry add338_L add332_L mul337_L;
adc add338_H add332_H mul337_H carry;
(*  %34 = load i64, i64* %arrayidx158, align 8, !tbaa !2 *)
mov v34 L1_48;
(*  %conv340 = zext i64 %34 to i128 *)
mov conv340_L v34;
mov conv340_H 0;
(*  %mul343 = mul nuw i128 %conv340, %conv293 *)
mull tmpLL_H tmpLL_L conv340_L conv293_L;
mul tmpHL_L conv340_H conv293_L;
mul tmpLH_L conv340_L conv293_H;
mov mul343_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul343_H tmp tmpLL_H;
(*  %add344 = add i128 %add338, %mul343 *)
adds carry add344_L add338_L mul343_L;
adc add344_H add338_H mul343_H carry;
(*  %mul349 = mul nuw i128 %conv207, %conv299 *)
mull tmpLL_H tmpLL_L conv207_L conv299_L;
mul tmpHL_L conv207_H conv299_L;
mul tmpLH_L conv207_L conv299_H;
mov mul349_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul349_H tmp tmpLL_H;
(*  %add350 = add i128 %add344, %mul349 *)
adds carry add350_L add344_L mul349_L;
adc add350_H add344_H mul349_H carry;
(*  %mul355 = mul nuw i128 %conv261, %conv305 *)
mull tmpLL_H tmpLL_L conv261_L conv305_L;
mul tmpHL_L conv261_H conv305_L;
mul tmpLH_L conv261_L conv305_H;
mov mul355_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul355_H tmp tmpLL_H;
(*  %35 = load i128, i128* %arrayidx14, align 16, !tbaa !6 *)
mov v35_L L2_16;
mov v35_H L2_24;
(*  %add356 = add i128 %add350, %35 *)
adds carry add356_L add350_L v35_L;
adc add356_H add350_H v35_H carry;
(*  %add358 = add i128 %add356, %mul355 *)
adds carry add358_L add356_L mul355_L;
adc add358_H add356_H mul355_H carry;
(*  store i128 %add358, i128* %arrayidx14, align 16, !tbaa !6 *)
mov L2_16 add358_L;
mov L2_24 add358_H;
(*  %mul363 = mul nuw i128 %conv231, %conv270 *)
mull tmpLL_H tmpLL_L conv231_L conv270_L;
mul tmpHL_L conv231_H conv270_L;
mul tmpLH_L conv231_L conv270_H;
mov mul363_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul363_H tmp tmpLL_H;
(*  %mul368 = mul nuw i128 %conv285, %conv275 *)
mull tmpLL_H tmpLL_L conv285_L conv275_L;
mul tmpHL_L conv285_H conv275_L;
mul tmpLH_L conv285_L conv275_H;
mov mul368_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul368_H tmp tmpLL_H;
(*  %add369 = add i128 %mul368, %mul363 *)
adds carry add369_L mul368_L mul363_L;
adc add369_H mul368_H mul363_H carry;
(*  %mul374 = mul nuw i128 %conv291, %conv281 *)
mull tmpLL_H tmpLL_L conv291_L conv281_L;
mul tmpHL_L conv291_H conv281_L;
mul tmpLH_L conv291_L conv281_H;
mov mul374_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul374_H tmp tmpLL_H;
(*  %add375 = add i128 %add369, %mul374 *)
adds carry add375_L add369_L mul374_L;
adc add375_H add369_H mul374_H carry;
(*  %mul380 = mul nuw i128 %conv340, %conv287 *)
mull tmpLL_H tmpLL_L conv340_L conv287_L;
mul tmpHL_L conv340_H conv287_L;
mul tmpLH_L conv340_L conv287_H;
mov mul380_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul380_H tmp tmpLL_H;
(*  %add381 = add i128 %add375, %mul380 *)
adds carry add381_L add375_L mul380_L;
adc add381_H add375_H mul380_H carry;
(*  %mul386 = mul nuw i128 %conv207, %conv293 *)
mull tmpLL_H tmpLL_L conv207_L conv293_L;
mul tmpHL_L conv207_H conv293_L;
mul tmpLH_L conv207_L conv293_H;
mov mul386_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul386_H tmp tmpLL_H;
(*  %add387 = add i128 %add381, %mul386 *)
adds carry add387_L add381_L mul386_L;
adc add387_H add381_H mul386_H carry;
(*  %mul392 = mul nuw i128 %conv261, %conv299 *)
mull tmpLL_H tmpLL_L conv261_L conv299_L;
mul tmpHL_L conv261_H conv299_L;
mul tmpLH_L conv261_L conv299_H;
mov mul392_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul392_H tmp tmpLL_H;
(*  %36 = load i128, i128* %arrayidx32, align 16, !tbaa !6 *)
mov v36_L L2_32;
mov v36_H L2_40;
(*  %add393 = add i128 %add387, %36 *)
adds carry add393_L add387_L v36_L;
adc add393_H add387_H v36_H carry;
(*  %add395 = add i128 %add393, %mul392 *)
adds carry add395_L add393_L mul392_L;
adc add395_H add393_H mul392_H carry;
(*  store i128 %add395, i128* %arrayidx32, align 16, !tbaa !6 *)
mov L2_32 add395_L;
mov L2_40 add395_H;
(*  %mul400 = mul nuw i128 %conv285, %conv270 *)
mull tmpLL_H tmpLL_L conv285_L conv270_L;
mul tmpHL_L conv285_H conv270_L;
mul tmpLH_L conv285_L conv270_H;
mov mul400_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul400_H tmp tmpLL_H;
(*  %mul405 = mul nuw i128 %conv291, %conv275 *)
mull tmpLL_H tmpLL_L conv291_L conv275_L;
mul tmpHL_L conv291_H conv275_L;
mul tmpLH_L conv291_L conv275_H;
mov mul405_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul405_H tmp tmpLL_H;
(*  %add406 = add i128 %mul405, %mul400 *)
adds carry add406_L mul405_L mul400_L;
adc add406_H mul405_H mul400_H carry;
(*  %mul411 = mul nuw i128 %conv340, %conv281 *)
mull tmpLL_H tmpLL_L conv340_L conv281_L;
mul tmpHL_L conv340_H conv281_L;
mul tmpLH_L conv340_L conv281_H;
mov mul411_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul411_H tmp tmpLL_H;
(*  %add412 = add i128 %add406, %mul411 *)
adds carry add412_L add406_L mul411_L;
adc add412_H add406_H mul411_H carry;
(*  %37 = load i64, i64* %arrayidx206, align 8, !tbaa !2 *)
mov v37 L1_56;
(*  %conv414 = zext i64 %37 to i128 *)
mov conv414_L v37;
mov conv414_H 0;
(*  %mul417 = mul nuw i128 %conv414, %conv287 *)
mull tmpLL_H tmpLL_L conv414_L conv287_L;
mul tmpHL_L conv414_H conv287_L;
mul tmpLH_L conv414_L conv287_H;
mov mul417_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul417_H tmp tmpLL_H;
(*  %add418 = add i128 %add412, %mul417 *)
adds carry add418_L add412_L mul417_L;
adc add418_H add412_H mul417_H carry;
(*  %mul423 = mul nuw i128 %conv261, %conv293 *)
mull tmpLL_H tmpLL_L conv261_L conv293_L;
mul tmpHL_L conv261_H conv293_L;
mul tmpLH_L conv261_L conv293_H;
mov mul423_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul423_H tmp tmpLL_H;
(*  %38 = load i128, i128* %arrayidx56, align 16, !tbaa !6 *)
mov v38_L L2_48;
mov v38_H L2_56;
(*  %add424 = add i128 %add418, %38 *)
adds carry add424_L add418_L v38_L;
adc add424_H add418_H v38_H carry;
(*  %add426 = add i128 %add424, %mul423 *)
adds carry add426_L add424_L mul423_L;
adc add426_H add424_H mul423_H carry;
(*  store i128 %add426, i128* %arrayidx56, align 16, !tbaa !6 *)
mov L2_48 add426_L;
mov L2_56 add426_H;
(*  %mul431 = mul nuw i128 %conv291, %conv270 *)
mull tmpLL_H tmpLL_L conv291_L conv270_L;
mul tmpHL_L conv291_H conv270_L;
mul tmpLH_L conv291_L conv270_H;
mov mul431_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul431_H tmp tmpLL_H;
(*  %mul436 = mul nuw i128 %conv340, %conv275 *)
mull tmpLL_H tmpLL_L conv340_L conv275_L;
mul tmpHL_L conv340_H conv275_L;
mul tmpLH_L conv340_L conv275_H;
mov mul436_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul436_H tmp tmpLL_H;
(*  %add437 = add i128 %mul436, %mul431 *)
adds carry add437_L mul436_L mul431_L;
adc add437_H mul436_H mul431_H carry;
(*  %mul442 = mul nuw i128 %conv414, %conv281 *)
mull tmpLL_H tmpLL_L conv414_L conv281_L;
mul tmpHL_L conv414_H conv281_L;
mul tmpLH_L conv414_L conv281_H;
mov mul442_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul442_H tmp tmpLL_H;
(*  %add443 = add i128 %add437, %mul442 *)
adds carry add443_L add437_L mul442_L;
adc add443_H add437_H mul442_H carry;
(*  %mul448 = mul nuw i128 %conv261, %conv287 *)
mull tmpLL_H tmpLL_L conv261_L conv287_L;
mul tmpHL_L conv261_H conv287_L;
mul tmpLH_L conv261_L conv287_H;
mov mul448_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul448_H tmp tmpLL_H;
(*  %39 = load i128, i128* %arrayidx86, align 16, !tbaa !6 *)
mov v39_L L2_64;
mov v39_H L2_72;
(*  %add449 = add i128 %add443, %39 *)
adds carry add449_L add443_L v39_L;
adc add449_H add443_H v39_H carry;
(*  %add451 = add i128 %add449, %mul448 *)
adds carry add451_L add449_L mul448_L;
adc add451_H add449_H mul448_H carry;
(*  store i128 %add451, i128* %arrayidx86, align 16, !tbaa !6 *)
mov L2_64 add451_L;
mov L2_72 add451_H;
(*  %mul456 = mul nuw i128 %conv340, %conv270 *)
mull tmpLL_H tmpLL_L conv340_L conv270_L;
mul tmpHL_L conv340_H conv270_L;
mul tmpLH_L conv340_L conv270_H;
mov mul456_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul456_H tmp tmpLL_H;
(*  %mul461 = mul nuw i128 %conv414, %conv275 *)
mull tmpLL_H tmpLL_L conv414_L conv275_L;
mul tmpHL_L conv414_H conv275_L;
mul tmpLH_L conv414_L conv275_H;
mov mul461_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul461_H tmp tmpLL_H;
(*  %add462 = add i128 %mul461, %mul456 *)
adds carry add462_L mul461_L mul456_L;
adc add462_H mul461_H mul456_H carry;
(*  %mul467 = mul nuw i128 %conv261, %conv281 *)
mull tmpLL_H tmpLL_L conv261_L conv281_L;
mul tmpHL_L conv261_H conv281_L;
mul tmpLH_L conv261_L conv281_H;
mov mul467_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul467_H tmp tmpLL_H;
(*  %40 = load i128, i128* %arrayidx122, align 16, !tbaa !6 *)
mov v40_L L2_80;
mov v40_H L2_88;
(*  %add468 = add i128 %add462, %40 *)
adds carry add468_L add462_L v40_L;
adc add468_H add462_H v40_H carry;
(*  %add470 = add i128 %add468, %mul467 *)
adds carry add470_L add468_L mul467_L;
adc add470_H add468_H mul467_H carry;
(*  store i128 %add470, i128* %arrayidx122, align 16, !tbaa !6 *)
mov L2_80 add470_L;
mov L2_88 add470_H;
(*  %mul475 = mul nuw i128 %conv414, %conv270 *)
mull tmpLL_H tmpLL_L conv414_L conv270_L;
mul tmpHL_L conv414_H conv270_L;
mul tmpLH_L conv414_L conv270_H;
mov mul475_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul475_H tmp tmpLL_H;
(*  %41 = load i64, i64* %arrayidx260, align 8, !tbaa !2 *)
mov v41 L1_64;
(*  %conv477 = zext i64 %41 to i128 *)
mov conv477_L v41;
mov conv477_H 0;
(*  %mul480 = mul nuw i128 %conv477, %conv275 *)
mull tmpLL_H tmpLL_L conv477_L conv275_L;
mul tmpHL_L conv477_H conv275_L;
mul tmpLH_L conv477_L conv275_H;
mov mul480_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul480_H tmp tmpLL_H;
(*  %42 = load i128, i128* %arrayidx164, align 16, !tbaa !6 *)
mov v42_L L2_96;
mov v42_H L2_104;
(*  %add481 = add i128 %42, %mul475 *)
adds carry add481_L v42_L mul475_L;
adc add481_H v42_H mul475_H carry;
(*  %add483 = add i128 %add481, %mul480 *)
adds carry add483_L add481_L mul480_L;
adc add483_H add481_H mul480_H carry;
(*  store i128 %add483, i128* %arrayidx164, align 16, !tbaa !6 *)
mov L2_96 add483_L;
mov L2_104 add483_H;
(*  %mul488 = mul nuw i128 %conv477, %conv270 *)
mull tmpLL_H tmpLL_L conv477_L conv270_L;
mul tmpHL_L conv477_H conv270_L;
mul tmpLH_L conv477_L conv270_H;
mov mul488_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add mul488_H tmp tmpLL_H;
(*  %43 = load i128, i128* %arrayidx212, align 16, !tbaa !6 *)
mov v43_L L2_112;
mov v43_H L2_120;
(*  %add490 = add i128 %mul488, %43 *)
adds carry add490_L mul488_L v43_L;
adc add490_H mul488_H v43_H carry;
(*  store i128 %add490, i128* %arrayidx212, align 16, !tbaa !6 *)
mov L2_112 add490_L;
mov L2_120 add490_H;
(*  ret void *)

mov out0_L L2_0;
mov out0_H L2_8;
mov out1_L L2_16;
mov out1_H L2_24;
mov out2_L L2_32;
mov out2_H L2_40;
mov out3_L L2_48;
mov out3_H L2_56;
mov out4_L L2_64;
mov out4_H L2_72;
mov out5_L L2_80;
mov out5_H L2_88;
mov out6_L L2_96;
mov out6_H L2_104;
mov out7_L L2_112;
mov out7_H L2_120;
mov out8_L L2_128;
mov out8_H L2_136;

{
  (*
  eqmod (limbs 58 [limbs 64 [out0_L, out0_H],
                      limbs 64 [out1_L, out1_H],
                      limbs 64 [out2_L, out2_H],
                      limbs 64 [out3_L, out3_H],
                      limbs 64 [out4_L, out4_H],
                      limbs 64 [out5_L, out5_H],
                      limbs 64 [out6_L, out6_H],
                      limbs 64 [out7_L, out7_H],
                      limbs 64 [out8_L, out8_H]])
           ((limbs 58 [in1_0, in1_1, in1_2, in1_3,
                       in1_4, in1_5, in1_6, in1_7,
                       in1_8])
            *
            (limbs 58 [in2_0, in2_1, in2_2, in2_3,
                       in2_4, in2_5, in2_6, in2_7,
                       in2_8]))
           ((2**521) - 1)
  *)
  true
  &&
  true
  (* out[i] < 17 * max(in1[i]) * max(in2[i]) *)
}
(* ================== felem_mul ====================*)



(* ================== felem_reduce ====================*)
(* quine: -v -qfbv_args '-SE minisat' -btor -isafety 
Parsing Cryptoline file:                [OK]            0.004473 seconds
Checking well-formedness:               [OK]            0.002083 seconds
Transforming to SSA form:               [OK]            0.001842 seconds
Rewriting assignments:                  [OK]            0.000666 seconds
Verifying program safety:               [OK]            0.853890 seconds
Verifying assertions:                   [OK]            0.335426 seconds
Verifying range specification:          [OK]            0.152935 seconds
Verifying algebraic specification:      [OK]            0.044530 seconds
Verification result:                    [OK]            1.396604 seconds
*)

proc felem_reduce (in0_L, in0_H, in1_L, in1_H, in2_L, in2_H, in3_L, in3_H,
           in4_L, in4_H, in5_L, in5_H, in6_L, in6_H, in7_L, in7_H,
           in8_L, in8_H;
	   out0, out1, out2, out3, out4, out5, out6, out7, out8) =
{
  true
  &&
  true
}

mov   L0_0 in0_L;
mov   L0_8 in0_H;
mov  L0_16 in1_L;
mov  L0_24 in1_H;
mov  L0_32 in2_L;
mov  L0_40 in2_H;
mov  L0_48 in3_L;
mov  L0_56 in3_H;
mov  L0_64 in4_L;
mov  L0_72 in4_H;
mov  L0_80 in5_L;
mov  L0_88 in5_H;
mov  L0_96 in6_L;
mov L0_104 in6_H;
mov L0_112 in7_L;
mov L0_120 in7_H;
mov L0_128 in8_L;
mov L0_136 in8_H;

(*  %0 = load i128, i128* %in, align 16, !tbaa !2 *)
mov v0_L L0_0;
mov v0_H L0_8;
(*  %conv = trunc i128 %0 to i64 *)
mov conv v0_L;
(*  %and = and i64 %conv, 288230376151711743 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_and conv 0x3FFFFFFFFFFFFFF;
(* NOTE: (1) *)
(*  store i64 %and, i64* %out, align 8, !tbaa !6 *)
mov L1_0 v_and;
(*  %arrayidx2 = getelementptr inbounds i128, i128* %in, i64 1 *)
(*  %1 = load i128, i128* %arrayidx2, align 16, !tbaa !2 *)
mov v1_L L0_16;
mov v1_H L0_24;
(*  %conv3 = trunc i128 %1 to i64 *)
mov conv3 v1_L;
(*  %and4 = and i64 %conv3, 288230376151711743 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and and4 conv3 0x3FFFFFFFFFFFFFF;
(* NOTE: (2) *)
(*  %arrayidx5 = getelementptr inbounds i64, i64* %out, i64 1 *)
(*  %arrayidx6 = getelementptr inbounds i128, i128* %in, i64 2 *)
(*  %2 = load i128, i128* %arrayidx6, align 16, !tbaa !2 *)
mov v2_L L0_32;
mov v2_H L0_40;
(*  %conv7 = trunc i128 %2 to i64 *)
mov conv7 v2_L;
(*  %and8 = and i64 %conv7, 288230376151711743 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and and8 conv7 0x3FFFFFFFFFFFFFF;
(* NOTE: (3) *)
(*  %arrayidx9 = getelementptr inbounds i64, i64* %out, i64 2 *)
(*  %arrayidx10 = getelementptr inbounds i128, i128* %in, i64 3 *)
(*  %3 = load i128, i128* %arrayidx10, align 16, !tbaa !2 *)
mov v3_L L0_48;
mov v3_H L0_56;
(*  %conv11 = trunc i128 %3 to i64 *)
mov conv11 v3_L;
(*  %and12 = and i64 %conv11, 288230376151711743 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and and12 conv11 0x3FFFFFFFFFFFFFF;
(* NOTE: (4) *)
(*  %arrayidx13 = getelementptr inbounds i64, i64* %out, i64 3 *)
(*  %arrayidx14 = getelementptr inbounds i128, i128* %in, i64 4 *)
(*  %4 = load i128, i128* %arrayidx14, align 16, !tbaa !2 *)
mov v4_L L0_64;
mov v4_H L0_72;
(*  %conv15 = trunc i128 %4 to i64 *)
mov conv15 v4_L;
(*  %and16 = and i64 %conv15, 288230376151711743 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and and16 conv15 0x3FFFFFFFFFFFFFF;
(* NOTE: (5) *)
(*  %arrayidx17 = getelementptr inbounds i64, i64* %out, i64 4 *)
(*  %arrayidx18 = getelementptr inbounds i128, i128* %in, i64 5 *)
(*  %5 = load i128, i128* %arrayidx18, align 16, !tbaa !2 *)
mov v5_L L0_80;
mov v5_H L0_88;
(*  %conv19 = trunc i128 %5 to i64 *)
mov conv19 v5_L;
(*  %and20 = and i64 %conv19, 288230376151711743 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and and20 conv19 0x3FFFFFFFFFFFFFF;
(* NOTE: (6) *)
(*  %arrayidx21 = getelementptr inbounds i64, i64* %out, i64 5 *)
(*  %arrayidx22 = getelementptr inbounds i128, i128* %in, i64 6 *)
(*  %6 = load i128, i128* %arrayidx22, align 16, !tbaa !2 *)
mov v6_L L0_96;
mov v6_H L0_104;
(*  %conv23 = trunc i128 %6 to i64 *)
mov conv23 v6_L;
(*  %and24 = and i64 %conv23, 288230376151711743 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and and24 conv23 0x3FFFFFFFFFFFFFF;
(* NOTE: (7) *)
(*  %arrayidx25 = getelementptr inbounds i64, i64* %out, i64 6 *)
(*  %arrayidx26 = getelementptr inbounds i128, i128* %in, i64 7 *)
(*  %7 = load i128, i128* %arrayidx26, align 16, !tbaa !2 *)
mov v7_L L0_112;
mov v7_H L0_120;
(*  %conv27 = trunc i128 %7 to i64 *)
mov conv27 v7_L;
(*  %and28 = and i64 %conv27, 288230376151711743 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and and28 conv27 0x3FFFFFFFFFFFFFF;
(* NOTE: (8) *)
(*  %arrayidx29 = getelementptr inbounds i64, i64* %out, i64 7 *)
(*  %arrayidx30 = getelementptr inbounds i128, i128* %in, i64 8 *)
(*  %8 = load i128, i128* %arrayidx30, align 16, !tbaa !2 *)
mov v8_L L0_128;
mov v8_H L0_136;
(*  %conv31 = trunc i128 %8 to i64 *)
mov conv31 v8_L;
(*  %and32 = and i64 %conv31, 288230376151711743 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and and32 conv31 0x3FFFFFFFFFFFFFF;
(* NOTE: combine with shr175 *)
(*
assert true && eq and32
                         (umod conv31 const 64 (2**58));
assume eqmod and32 conv31 (2**58) && true;
*)
(*  %arrayidx33 = getelementptr inbounds i64, i64* %out, i64 8 *)
(*  %shr = lshr i64 %conv, 58 *)
(* You may need to modify here *)
split shr tmp_to_be_used conv 58;
(* NOTE: moved from (1) *)
assert true && eq v_and tmp_to_be_used;
assume eq v_and tmp_to_be_used && true;
(*  %add = add nuw nsw i64 %shr, %and4 *)
add v_add shr and4;
(*  %9 = lshr i128 %0, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v0_L 58;
split tmpH_h tmpH_l v0_H 58;
shl tmp tmpH_l 6;
add v9_L tmp tmpL_h;
mov v9_H tmpH_h;
(*  %and40 = trunc i128 %9 to i64 *)
mov and40 v9_L;
(*  %shl = and i64 %and40, 288230376151711680 *)
(* You may need to modify here *)
and v_shl and40 0x3FFFFFFFFFFFFC0;
(*  %add42 = add nuw nsw i64 %shl, %add *)
add add42 v_shl v_add;
(*  store i64 %add42, i64* %arrayidx5, align 8, !tbaa !6 *)
mov L1_8 add42;
(*  %shr44 = lshr i128 %0, 116 *)
(* NOTE: split on v0_H, 116 - 64 = 52 *)
mov shr44_H 0;
split shr44_L tmp v0_H 52;
(* NOTE: tmp << 6 = shl *)
assert true && eq v_shl (mul (const 64 (2**6)) tmp);
assume eq v_shl (tmp * (2**6)) && true;
(*  %shr46 = trunc i128 %shr44 to i64 *)
mov shr46 shr44_L;
(*  %add48 = add nuw nsw i64 %shr46, %and8 *)
add add48 shr46 and8;
(*  %shr51 = lshr i64 %conv3, 58 *)
(* You may need to modify here *)
split shr51 tmp_to_be_used conv3 58;
(* NOTE: moved from (2) *)
assert true && eq and4 tmp_to_be_used;
assume eq and4 tmp_to_be_used && true;
(*  %add53 = add nuw nsw i64 %shr51, %add48 *)
add add53 shr51 add48;
(*  %10 = lshr i128 %1, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v1_L 58;
split tmpH_h tmpH_l v1_H 58;
shl tmp tmpH_l 6;
add v10_L tmp tmpL_h;
mov v10_H tmpH_h;
(*  %and57 = trunc i128 %10 to i64 *)
mov and57 v10_L;
(*  %shl58 = and i64 %and57, 288230376151711680 *)
(* You may need to modify here *)
and shl58 and57 0x3FFFFFFFFFFFFC0;
(*  %add60 = add nuw nsw i64 %shl58, %add53 *)
add add60 shl58 add53;
(*  store i64 %add60, i64* %arrayidx9, align 8, !tbaa !6 *)
mov L1_16 add60;
(*  %shr62 = lshr i128 %1, 116 *)
(* You may need to modify here *)
(* NOTE: split on v1_H, 116 - 64 = 52 *)
mov shr62_H 0;
split shr62_L tmp v1_H 52;
(* NOTE: tmp << 6 = shl58 *)
assert true && eq shl58 (mul const 64 (2**6) tmp);
assume eq shl58 (tmp * (2**6)) && true;
(*  %shr64 = trunc i128 %shr62 to i64 *)
mov shr64 shr62_L;
(*  %add66 = add nuw nsw i64 %shr64, %and12 *)
add add66 shr64 and12;
(*  %shr69 = lshr i64 %conv7, 58 *)
(* You may need to modify here *)
split shr69 tmp_to_be_used conv7 58;
(* NOTE: moved from (3) *)
assert true && eq and8 tmp_to_be_used;
assume eq and8 tmp_to_be_used && true;
(*  %add71 = add nuw nsw i64 %shr69, %add66 *)
add add71 shr69 add66;
(*  %11 = lshr i128 %2, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v2_L 58;
split tmpH_h tmpH_l v2_H 58;
shl tmp tmpH_l 6;
add v11_L tmp tmpL_h;
mov v11_H tmpH_h;
(*  %and75 = trunc i128 %11 to i64 *)
mov and75 v11_L;
(*  %shl76 = and i64 %and75, 288230376151711680 *)
(* You may need to modify here *)
and shl76 and75 0x3FFFFFFFFFFFFC0;
(*  %add78 = add nuw nsw i64 %shl76, %add71 *)
add add78 shl76 add71;
(*  store i64 %add78, i64* %arrayidx13, align 8, !tbaa !6 *)
mov L1_24 add78;
(*  %shr80 = lshr i128 %2, 116 *)
(* You may need to modify here *)
(* NOTE: split on v2_H, 116 - 64 = 52 *)
mov shr80_H 0;
split shr80_L tmp v2_H 52;
(* NOTE: tmp << 6 = shl76 *)
assert true && eq shl76 (mul const 64 (2**6) tmp);
assume eq shl76 (tmp * (2**6)) && true;
(*  %shr82 = trunc i128 %shr80 to i64 *)
mov shr82 shr80_L;
(*  %add84 = add nuw nsw i64 %shr82, %and16 *)
add add84 shr82 and16;
(*  %shr87 = lshr i64 %conv11, 58 *)
(* You may need to modify here *)
split shr87 tmp_to_be_used conv11 58;
(* moved from (4) *)
assert true && eq and12 tmp_to_be_used;
assume eq and12 tmp_to_be_used && true;
(*  %add89 = add nuw nsw i64 %shr87, %add84 *)
add add89 shr87 add84;
(*  %12 = lshr i128 %3, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v3_L 58;
split tmpH_h tmpH_l v3_H 58;
shl tmp tmpH_l 6;
add v12_L tmp tmpL_h;
mov v12_H tmpH_h;
(*  %and93 = trunc i128 %12 to i64 *)
mov and93 v12_L;
(*  %shl94 = and i64 %and93, 288230376151711680 *)
(* You may need to modify here *)
and shl94 and93 0x3FFFFFFFFFFFFC0;
(*  %add96 = add nuw nsw i64 %shl94, %add89 *)
add add96 shl94 add89;
(*  store i64 %add96, i64* %arrayidx17, align 8, !tbaa !6 *)
mov L1_32 add96;
(*  %shr98 = lshr i128 %3, 116 *)
(* You may need to modify here *)
(* NOTE: split on v3_H, 116 - 64 = 52 *)
mov shr98_H 0;
split shr98_L tmp v3_H 52;
(* NOTE: tmp << 6 = shl94 *)
assert true && eq shl94 (mul const 64 (2**6) tmp);
assume eq shl94 (tmp * (2**6)) && true;
(*  %shr100 = trunc i128 %shr98 to i64 *)
mov shr100 shr98_L;
(*  %add102 = add nuw nsw i64 %shr100, %and20 *)
add add102 shr100 and20;
(*  %shr105 = lshr i64 %conv15, 58 *)
(* You may need to modify here *)
split shr105 tmp_to_be_used conv15 58;
(* moved from (5) *)
assert true && eq and16 tmp_to_be_used;
assume eq and16 tmp_to_be_used && true;
(*  %add107 = add nuw nsw i64 %shr105, %add102 *)
add add107 shr105 add102;
(*  %13 = lshr i128 %4, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v4_L 58;
split tmpH_h tmpH_l v4_H 58;
shl tmp tmpH_l 6;
add v13_L tmp tmpL_h;
mov v13_H tmpH_h;
(*  %and111 = trunc i128 %13 to i64 *)
mov and111 v13_L;
(*  %shl112 = and i64 %and111, 288230376151711680 *)
(* You may need to modify here *)
and shl112 and111 0x3FFFFFFFFFFFFC0;
(*  %add114 = add nuw nsw i64 %shl112, %add107 *)
add add114 shl112 add107;
(*  store i64 %add114, i64* %arrayidx21, align 8, !tbaa !6 *)
mov L1_40 add114;
(*  %shr116 = lshr i128 %4, 116 *)
(* You may need to modify here *)
(* NOTE: split on v4_H, 116 - 64 = 52 *)
mov shr116_H 0;
split shr116_L tmp v4_H 52;
(* NOTE: tmp << 6 = shl112 *)
assert true && eq shl112 (mul const 64 (2**6) tmp);
assume eq shl112 (tmp * (2**6)) && true;
(*  %shr118 = trunc i128 %shr116 to i64 *)
mov shr118 shr116_L;
(*  %add120 = add nuw nsw i64 %shr118, %and24 *)
add add120 shr118 and24;
(*  %shr123 = lshr i64 %conv19, 58 *)
(* You may need to modify here *)
split shr123 tmp_to_be_used conv19 58;
(* moved from (6) *)
assert true && eq and20 tmp_to_be_used;
assume eq and20 tmp_to_be_used && true;
(*  %add125 = add nuw nsw i64 %shr123, %add120 *)
add add125 shr123 add120;
(*  %14 = lshr i128 %5, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v5_L 58;
split tmpH_h tmpH_l v5_H 58;
shl tmp tmpH_l 6;
add v14_L tmp tmpL_h;
mov v14_H tmpH_h;
(*  %and129 = trunc i128 %14 to i64 *)
mov and129 v14_L;
(*  %shl130 = and i64 %and129, 288230376151711680 *)
(* You may need to modify here *)
and shl130 and129 0x3FFFFFFFFFFFFC0;
(*  %add132 = add nuw nsw i64 %shl130, %add125 *)
add add132 shl130 add125;
(*  store i64 %add132, i64* %arrayidx25, align 8, !tbaa !6 *)
mov L1_48 add132;
(*  %shr134 = lshr i128 %5, 116 *)
(* You may need to modify here *)
(* NOTE: split on v5_H, 116 - 64 = 52 *)
mov shr134_H 0;
split shr134_L tmp v5_H 52;
(* NOTE: tmp << 6 = shl130 *)
assert true && eq shl130 (mul const 64 (2**6) tmp);
assume eq shl130 (tmp * (2**6)) && true;
(*  %shr136 = trunc i128 %shr134 to i64 *)
mov shr136 shr134_L;
(*  %add138 = add nuw nsw i64 %shr136, %and28 *)
add add138 shr136 and28;
(*  %shr141 = lshr i64 %conv23, 58 *)
(* You may need to modify here *)
split shr141 tmp_to_be_used conv23 58;
(* moved from (7) *)
assert true && eq and24 tmp_to_be_used;
assume eq and24 tmp_to_be_used && true;
(*  %add143 = add nuw nsw i64 %shr141, %add138 *)
add add143 shr141 add138;
(*  %15 = lshr i128 %6, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v6_L 58;
split tmpH_h tmpH_l v6_H 58;
shl tmp tmpH_l 6;
add v15_L tmp tmpL_h;
mov v15_H tmpH_h;
(*  %and147 = trunc i128 %15 to i64 *)
mov and147 v15_L;
(*  %shl148 = and i64 %and147, 288230376151711680 *)
(* You may need to modify here *)
and shl148 and147 0x3FFFFFFFFFFFFC0;
(*  %add150 = add nuw nsw i64 %shl148, %add143 *)
add add150 shl148 add143;
(*  store i64 %add150, i64* %arrayidx29, align 8, !tbaa !6 *)
mov L1_56 add150;
(*  %shr152 = lshr i128 %6, 116 *)
(* You may need to modify here *)
(* NOTE: split on v6_H, 116 - 64 = 52 *)
mov shr152_H 0;
split shr152_L tmp v6_H 52;
(* NOTE: tmp << 6 = shl148 *)
assert true && eq shl148 (mul const 64 (2**6) tmp);
assume eq shl148 (tmp * (2**6)) && true;
(*  %shr154 = trunc i128 %shr152 to i64 *)
mov shr154 shr152_L;
(*  %add156 = add nuw nsw i64 %shr154, %and32 *)
add add156 shr154 and32;
(*  %shr159 = lshr i64 %conv27, 58 *)
(* You may need to modify here *)
split shr159 tmp_to_be_used conv27 58;
(* moved from (8) *)
assert true && eq and28 tmp_to_be_used;
assume eq and28 tmp_to_be_used && true;
(*  %add161 = add nuw nsw i64 %shr159, %add156 *)
add add161 shr159 add156;
(*  %16 = lshr i128 %7, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v7_L 58;
split tmpH_h tmpH_l v7_H 58;
shl tmp tmpH_l 6;
add v16_L tmp tmpL_h;
mov v16_H tmpH_h;
(*  %and165 = trunc i128 %16 to i64 *)
mov and165 v16_L;
(*  %shl166 = and i64 %and165, 288230376151711680 *)
(* You may need to modify here *)
and shl166 and165 0x3FFFFFFFFFFFFC0;
(*  %add168 = add nuw nsw i64 %shl166, %add161 *)
add add168 shl166 add161;
(*  store i64 %add168, i64* %arrayidx33, align 8, !tbaa !6 *)
mov L1_64 add168;
(* C: overflow1 = ((limb) (in[7] >> 64)) >> 52; *)
(*  %17 = load i128, i128* %arrayidx26, align 16, !tbaa !2 *)
mov v17_L L0_112;
mov v17_H L0_120;
(*  %shr170 = lshr i128 %17, 116 *)
(* You may need to modify here *)
(* NOTE: split on v17_H, 116 - 64 = 52 *)
mov shr170_H 0;
split shr170_L tmp v17_H 52;
(* NOTE: tmp << 6 = shl166 *)
assert true && eq shl166 (mul const 64 (2**6) tmp);
assume eq shl166 (tmp * (2**6)) && true;
(*  %shr172 = trunc i128 %shr170 to i64 *)
mov shr172 shr170_L;
(* C: overflow1 += ((limb) in[8]) >> 58; *)
(*  %18 = load i128, i128* %arrayidx30, align 16, !tbaa !2 *)
mov v18_L L0_128;
mov v18_H L0_136;
(*  %conv174 = trunc i128 %18 to i64 *)
mov conv174 v18_L;
(*  %shr175 = lshr i64 %conv174, 58 *)
(* You may need to modify here *)
split shr175 tmp_to_be_used conv174 58;
(* NOTE: (shr175 << 58) + and32 == conv31 *)
assert true &&
         eq (add (mul shr175 const 64 (2**58))
                       and32)
               v18_L;
assume eq ((shr175 * (2**58)) + and32)
               v18_L
               && true;
(*  %add176 = add nuw nsw i64 %shr175, %shr172 *)
add add176 shr175 shr172;
(* C: overflow1 += (((limb) (in[8] >> 64)) & bottom52bits) << 6; *)
(*  %19 = lshr i128 %18, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v18_L 58;
split tmpH_h tmpH_l v18_H 58;
shl tmp tmpH_l 6;
add v19_L tmp tmpL_h;
mov v19_H tmpH_h;
(*  %and180 = trunc i128 %19 to i64 *)
mov and180 v19_L;
(*  %shl181 = and i64 %and180, 288230376151711680 *)
(* You may need to modify here *)
and shl181 and180 0x3FFFFFFFFFFFFC0;
(* NOTE: merged with shl188 *)
(*  %add182 = add nuw nsw i64 %add176, %shl181 *)
add add182 add176 shl181;
(* C: overflow1 <<= 1; *)
(*  %shl187 = shl nuw nsw i64 %add182, 1 *)
shl shl187 add182 1;
(* C: overflow2 = ((limb) (in[8] >> 64)) >> 52; *)
(* C: overflow2 <<= 1; *)
(*  %20 = lshr i128 %18, 115 *)
(* You may need to modify here *)
(* NOTE: split on v18_H, 115 - 64 = 51 *)
mov v20_H 0;
split v20_L tmp v18_H 51;
(*  %.tr = trunc i128 %20 to i64 *)
mov _tr v20_L;
(*  %shl188 = and i64 %.tr, 8190 *)
(* You may need to modify here *)
and shl188 _tr 0x1FFE;
(* NOTE: ((shl188 - (tmpH_h << 7)) << 57) + shl181 == (v18_H % 2**58) << 6 *)
assert true &&
  eq (add (mul (sub shl188
                                (mul tmpH_h const 64 (2**7)))
                        const 64 (2**57))
                shl181)
        (mul tmpH_l
                const 64 (2**6));
(*		
ghost v18_H58 : eqmod v18_H v18_H58 (2**58)
                && true;
*)		
assume eq (((shl188 - (tmpH_h * (2**7))) *
                 (2**57)) +
                shl181)
               (tmpH_l * (2**6)) &&
         true;
(* C: out[0] += overflow1; *)
(*  %21 = load i64, i64* %out, align 8, !tbaa !6 *)
mov v21 L1_0;
(*  %add190 = add i64 %shl187, %21 *)
add add190 shl187 v21;
(* C: out[1] += overflow2; *)
(*  %22 = load i64, i64* %arrayidx5, align 8, !tbaa !6 *)
mov v22 L1_8;
(*  %add192 = add i64 %shl188, %22 *)
add add192 shl188 v22;
(* C: out[1] += out[0] >> 58; *)
(*  %shr194 = lshr i64 %add190, 58 *)
(* You may need to modify here *)
split shr194 tmp_to_be_used add190 58;
(*  %add196 = add i64 %add192, %shr194 *)
add add196 add192 shr194;
(*  store i64 %add196, i64* %arrayidx5, align 8, !tbaa !6 *)
mov L1_8 add196;
(* C: out[0] &= bottom58bits; *)
(*  %and198 = and i64 %add190, 288230376151711743 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and and198 add190 0x3FFFFFFFFFFFFFF;
assert true && eq and198 tmp_to_be_used;
assume eq and198 tmp_to_be_used && true;
(*  store i64 %and198, i64* %out, align 8, !tbaa !6 *)
mov L1_0 and198;
(*  ret void *)

mov out0  L1_0;
mov out1  L1_8;
mov out2 L1_16;
mov out3 L1_24;
mov out4 L1_32;
mov out5 L1_40;
mov out6 L1_48;
mov out7 L1_56;
mov out8 L1_64;

{
  (*
  eqmod (limbs 58 [out0, out1, out2, out3,
                      out4, out5, out6, out7,
                      out8])
           (limbs 58 [limbs 64 [in0_L, in0_H],
                      limbs 64 [in1_L, in1_H],
                      limbs 64 [in2_L, in2_H],
                      limbs 64 [in3_L, in3_H],
                      limbs 64 [in4_L, in4_H],
                      limbs 64 [in5_L, in5_H],
                      limbs 64 [in6_L, in6_H],
                      limbs 64 [in7_L, in7_H],
                      limbs 64 [in8_L, in8_H]])
           ((2**521) - 1)
  *)
  true
  &&
  true
  (*
  and [
    out0 < (add const 64 (2**59) const 64 (2**14)),
    out1 < (add const 64 (2**59) const 64 (2**14)),
    out2 < (add const 64 (2**59) const 64 (2**14)),
    out3 < (add const 64 (2**59) const 64 (2**14)),
    out4 < (add const 64 (2**59) const 64 (2**14)),
    out5 < (add const 64 (2**59) const 64 (2**14)),
    out6 < (add const 64 (2**59) const 64 (2**14)),
    out7 < (add const 64 (2**59) const 64 (2**14)),
    out8 < (add const 64 (2**59) const 64 (2**14))
  ]
  *)
}
(* ================== felem_reduce ====================*)



(* ====================================================*)
(*                                                     *)
(*                   main function                     *)
(*                                                     *)
(* ====================================================*)
proc main (x_in0, x_in1, x_in2, x_in3, x_in4, x_in5, x_in6, x_in7, x_in8,
           y_in0, y_in1, y_in2, y_in3, y_in4, y_in5, y_in6, y_in7, y_in8,
	   z_in0, z_in1, z_in2, z_in3, z_in4, z_in5, z_in6, z_in7, z_in8) =
{
  true
  &&
  and [
    (*
    x_in0 < const 64 (2**62) + const 64 (2**59) + const 64 (2**14),
    x_in1 < const 64 (2**62) + const 64 (2**59) + const 64 (2**14),
    x_in2 < const 64 (2**62) + const 64 (2**59) + const 64 (2**14),
    x_in3 < const 64 (2**62) + const 64 (2**59) + const 64 (2**14),
    x_in4 < const 64 (2**62) + const 64 (2**59) + const 64 (2**14),
    x_in5 < const 64 (2**62) + const 64 (2**59) + const 64 (2**14),
    x_in6 < const 64 (2**62) + const 64 (2**59) + const 64 (2**14),
    x_in7 < const 64 (2**62) + const 64 (2**59) + const 64 (2**14),
    x_in8 < const 64 (2**62) + const 64 (2**59) + const 64 (2**14),
    y_in0 < const 64 (2**61),
    y_in1 < const 64 (2**61),
    y_in2 < const 64 (2**61),
    y_in3 < const 64 (2**61),
    y_in4 < const 64 (2**61),
    y_in5 < const 64 (2**61),
    y_in6 < const 64 (2**61),
    y_in7 < const 64 (2**61),
    y_in8 < const 64 (2**61),
    z_in0 < const 64 (2**61),
    z_in1 < const 64 (2**61),
    z_in2 < const 64 (2**61),
    z_in3 < const 64 (2**61),
    z_in4 < const 64 (2**61),
    z_in5 < const 64 (2**61),
    z_in6 < const 64 (2**61),
    z_in7 < const 64 (2**61),
    z_in8 < const 64 (2**61)
    *)
    
    x_in0 < const 64 (2**58),
    x_in1 < const 64 (2**58),
    x_in2 < const 64 (2**58),
    x_in3 < const 64 (2**58),
    x_in4 < const 64 (2**58),
    x_in5 < const 64 (2**58),
    x_in6 < const 64 (2**58),
    x_in7 < const 64 (2**58),
    x_in8 < const 64 (2**58),        
    y_in0 < const 64 (2**58),
    y_in1 < const 64 (2**58),
    y_in2 < const 64 (2**58),
    y_in3 < const 64 (2**58),
    y_in4 < const 64 (2**58),
    y_in5 < const 64 (2**58),
    y_in6 < const 64 (2**58),
    y_in7 < const 64 (2**58),
    y_in8 < const 64 (2**58),
    (*
    x_in0 = const 64 0x3FFFFFFFFFFFFFF,
    x_in1 = const 64 0,
    x_in2 = const 64 0,
    x_in3 = const 64 0,
    x_in4 = const 64 0,
    x_in5 = const 64 0,
    x_in6 = const 64 0,
    x_in7 = const 64 0,
    x_in8 = const 64 0x380000000000000,
    y_in0 = const 64 0,
    y_in1 = const 64 0,
    y_in2 = const 64 0,
    y_in3 = const 64 0x300000000000000,
    y_in4 = const 64 0x3FFFFFFFFFFFFFF,
    y_in5 = const 64 0,
    y_in6 = const 64 0,
    y_in7 = const 64 0,
    y_in8 = const 64 0,
    *)
    z_in0 < const 64 (2**58),
    z_in1 < const 64 (2**58),
    z_in2 < const 64 (2**58),
    z_in3 < const 64 (2**58),
    z_in4 < const 64 (2**58),
    z_in5 < const 64 (2**58),
    z_in6 < const 64 (2**58),
    z_in7 < const 64 (2**58),
    z_in8 < const 64 (2**58)
  ]
}

mov L7_0 x_in0;
mov L7_8 x_in1;
mov L7_16 x_in2;
mov L7_24 x_in3;
mov L7_32 x_in4;
mov L7_40 x_in5;
mov L7_48 x_in6;
mov L7_56 x_in7;
mov L7_64 x_in8;
mov L8_0 y_in0;
mov L8_8 y_in1;
mov L8_16 y_in2;
mov L8_24 y_in3;
mov L8_32 y_in4;
mov L8_40 y_in5;
mov L8_48 y_in6;
mov L8_56 y_in7;
mov L8_64 y_in8;
mov L9_0 z_in0;
mov L9_8 z_in1;
mov L9_16 z_in2;
mov L9_24 z_in3;
mov L9_32 z_in4;
mov L9_40 z_in5;
mov L9_48 z_in6;
mov L9_56 z_in7;
mov L9_64 z_in8;




(*  %tmp = alloca [9 x i128], align 16 *)
(*  %tmp2 = alloca [9 x i128], align 16 *)
(*  %gamma = alloca [9 x i64], align 16 *)
(*  %beta = alloca [9 x i64], align 16 *)
(*  %alpha = alloca [9 x i64], align 16 *)
(*  %ftmp = alloca [9 x i64], align 16 *)
(*  %ftmp2 = alloca [9 x i64], align 16 *)
(*  %0 = bitcast [9 x i128]* %tmp to i8* *)
(*  call void @llvm.lifetime.start(i64 144, i8* %0) #1 *)
(*  %1 = bitcast [9 x i128]* %tmp2 to i8* *)
(*  call void @llvm.lifetime.start(i64 144, i8* %1) #1 *)
(*  %2 = bitcast [9 x i64]* %gamma to i8* *)
(*  call void @llvm.lifetime.start(i64 72, i8* %2) #1 *)
(*  %3 = bitcast [9 x i64]* %beta to i8* *)
(*  call void @llvm.lifetime.start(i64 72, i8* %3) #1 *)
(*  %4 = bitcast [9 x i64]* %alpha to i8* *)
(*  call void @llvm.lifetime.start(i64 72, i8* %4) #1 *)
(*  %5 = bitcast [9 x i64]* %ftmp to i8* *)
(*  call void @llvm.lifetime.start(i64 72, i8* %5) #1 *)
(*  %6 = bitcast [9 x i64]* %ftmp2 to i8* *)
(*  call void @llvm.lifetime.start(i64 72, i8* %6) #1 *)

(*  %arraydecay = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 0 *)
(*  %7 = load i64, i64* %x_in, align 8, !tbaa !2 *)
mov v7 L7_0;
(*  store i64 %7, i64* %arraydecay, align 16, !tbaa !2 *)
mov L5_0 v7;
(*  %arrayidx2.i = getelementptr inbounds i64, i64* %x_in, i64 1 *)
(*  %8 = load i64, i64* %arrayidx2.i, align 8, !tbaa !2 *)
mov v8 L7_8;
(*  %arrayidx3.i = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 1 *)
(*  store i64 %8, i64* %arrayidx3.i, align 8, !tbaa !2 *)
mov L5_8 v8;
(*  %arrayidx4.i = getelementptr inbounds i64, i64* %x_in, i64 2 *)
(*  %9 = load i64, i64* %arrayidx4.i, align 8, !tbaa !2 *)
mov v9 L7_16;
(*  %arrayidx5.i = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 2 *)
(*  store i64 %9, i64* %arrayidx5.i, align 16, !tbaa !2 *)
mov L5_16 v9;
(*  %arrayidx6.i = getelementptr inbounds i64, i64* %x_in, i64 3 *)
(*  %10 = load i64, i64* %arrayidx6.i, align 8, !tbaa !2 *)
mov v10 L7_24;
(*  %arrayidx7.i = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 3 *)
(*  store i64 %10, i64* %arrayidx7.i, align 8, !tbaa !2 *)
mov L5_24 v10;
(*  %arrayidx8.i = getelementptr inbounds i64, i64* %x_in, i64 4 *)
(*  %11 = load i64, i64* %arrayidx8.i, align 8, !tbaa !2 *)
mov v11 L7_32;
(*  %arrayidx9.i = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 4 *)
(*  store i64 %11, i64* %arrayidx9.i, align 16, !tbaa !2 *)
mov L5_32 v11;
(*  %arrayidx10.i = getelementptr inbounds i64, i64* %x_in, i64 5 *)
(*  %12 = load i64, i64* %arrayidx10.i, align 8, !tbaa !2 *)
mov v12 L7_40;
(*  %arrayidx11.i = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 5 *)
(*  store i64 %12, i64* %arrayidx11.i, align 8, !tbaa !2 *)
mov L5_40 v12;
(*  %arrayidx12.i = getelementptr inbounds i64, i64* %x_in, i64 6 *)
(*  %13 = load i64, i64* %arrayidx12.i, align 8, !tbaa !2 *)
mov v13 L7_48;
(*  %arrayidx13.i = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 6 *)
(*  store i64 %13, i64* %arrayidx13.i, align 16, !tbaa !2 *)
mov L5_48 v13;
(*  %arrayidx14.i = getelementptr inbounds i64, i64* %x_in, i64 7 *)
(*  %14 = load i64, i64* %arrayidx14.i, align 8, !tbaa !2 *)
mov v14 L7_56;
(*  %arrayidx15.i = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 7 *)
(*  store i64 %14, i64* %arrayidx15.i, align 8, !tbaa !2 *)
mov L5_56 v14;
(*  %arrayidx16.i = getelementptr inbounds i64, i64* %x_in, i64 8 *)
(*  %15 = load i64, i64* %arrayidx16.i, align 8, !tbaa !2 *)
mov v15 L7_64;
(*  %arrayidx17.i = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 8 *)
(*  store i64 %15, i64* %arrayidx17.i, align 16, !tbaa !2 *)
mov L5_64 v15;
(*  %arraydecay9 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 0 *)
(*  store i64 %7, i64* %arraydecay9, align 16, !tbaa !2 *)
mov L6_0 v7;
(*  %arrayidx3.i.64 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 1 *)
(*  store i64 %8, i64* %arrayidx3.i.64, align 8, !tbaa !2 *)
mov L6_8 v8;
(*  %arrayidx5.i.66 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 2 *)
(*  store i64 %9, i64* %arrayidx5.i.66, align 16, !tbaa !2 *)
mov L6_16 v9;
(*  %arrayidx7.i.68 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 3 *)
(*  store i64 %10, i64* %arrayidx7.i.68, align 8, !tbaa !2 *)
mov L6_24 v10;
(*  %arrayidx9.i.70 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 4 *)
(*  store i64 %11, i64* %arrayidx9.i.70, align 16, !tbaa !2 *)
mov L6_32 v11;
(*  %arrayidx11.i.72 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 5 *)
(*  store i64 %12, i64* %arrayidx11.i.72, align 8, !tbaa !2 *)
mov L6_40 v12;
(*  %arrayidx13.i.74 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 6 *)
(*  store i64 %13, i64* %arrayidx13.i.74, align 16, !tbaa !2 *)
mov L6_48 v13;
(*  %arrayidx15.i.76 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 7 *)
(*  store i64 %14, i64* %arrayidx15.i.76, align 8, !tbaa !2 *)
mov L6_56 v14;
(*  %arrayidx17.i.78 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 8 *)
(*  store i64 %15, i64* %arrayidx17.i.78, align 16, !tbaa !2 *)
mov L6_64 v15;
(*  %arraydecay10 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 0 *)
(*  call fastcc void @felem_square(i128* %arraydecay10, i64* %z_in) *)
call felem_square(L9_0, L9_8, L9_16, L9_24, L9_32, L9_40, L9_48, L9_56, L9_64, L0_0, L0_8, L0_16, L0_24, L0_32, L0_40, L0_48, L0_56, L0_64, L0_72, L0_80, L0_88, L0_96, L0_104, L0_112, L0_120, L0_128, L0_136);
(*  %16 = load i128, i128* %arraydecay10, align 16, !tbaa !6 *)
mov v16_L L0_0;
mov v16_H L0_8;
(*  %conv.i = trunc i128 %16 to i64 *)
mov v_conv_i v16_L;
(*  %and.i = and i64 %conv.i, 288230376151711743 *)
(* You may need to modify here *)
and v_and_i v_conv_i 0x3FFFFFFFFFFFFFF;
(*  %arrayidx2.i.94 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 1 *)
(*  %17 = load i128, i128* %arrayidx2.i.94, align 16, !tbaa !6 *)
mov v17_L L0_16;
mov v17_H L0_24;
(*  %conv3.i = trunc i128 %17 to i64 *)
mov v_conv3_i v17_L;
(*  %and4.i = and i64 %conv3.i, 288230376151711743 *)
(* You may need to modify here *)
and v_and4_i v_conv3_i 0x3FFFFFFFFFFFFFF;
(*  %arrayidx6.i.96 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 2 *)
(*  %18 = load i128, i128* %arrayidx6.i.96, align 16, !tbaa !6 *)
mov v18_L L0_32;
mov v18_H L0_40;
(*  %conv7.i = trunc i128 %18 to i64 *)
mov v_conv7_i v18_L;
(*  %and8.i = and i64 %conv7.i, 288230376151711743 *)
(* You may need to modify here *)
and v_and8_i v_conv7_i 0x3FFFFFFFFFFFFFF;
(*  %arrayidx10.i.98 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 3 *)
(*  %19 = load i128, i128* %arrayidx10.i.98, align 16, !tbaa !6 *)
mov v19_L L0_48;
mov v19_H L0_56;
(*  %conv11.i = trunc i128 %19 to i64 *)
mov v_conv11_i v19_L;
(*  %and12.i = and i64 %conv11.i, 288230376151711743 *)
(* You may need to modify here *)
and v_and12_i v_conv11_i 0x3FFFFFFFFFFFFFF;
(*  %arrayidx14.i.100 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 4 *)
(*  %20 = load i128, i128* %arrayidx14.i.100, align 16, !tbaa !6 *)
mov v20_L L0_64;
mov v20_H L0_72;
(*  %conv15.i = trunc i128 %20 to i64 *)
mov v_conv15_i v20_L;
(*  %and16.i = and i64 %conv15.i, 288230376151711743 *)
(* You may need to modify here *)
and v_and16_i v_conv15_i 0x3FFFFFFFFFFFFFF;
(*  %arrayidx18.i.102 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 5 *)
(*  %21 = load i128, i128* %arrayidx18.i.102, align 16, !tbaa !6 *)
mov v21_L L0_80;
mov v21_H L0_88;
(*  %conv19.i = trunc i128 %21 to i64 *)
mov v_conv19_i v21_L;
(*  %and20.i = and i64 %conv19.i, 288230376151711743 *)
(* You may need to modify here *)
and v_and20_i v_conv19_i 0x3FFFFFFFFFFFFFF;
(*  %arrayidx22.i.103 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 6 *)
(*  %22 = load i128, i128* %arrayidx22.i.103, align 16, !tbaa !6 *)
mov v22_L L0_96;
mov v22_H L0_104;
(*  %conv23.i = trunc i128 %22 to i64 *)
mov v_conv23_i v22_L;
(*  %and24.i = and i64 %conv23.i, 288230376151711743 *)
(* You may need to modify here *)
and v_and24_i v_conv23_i 0x3FFFFFFFFFFFFFF;
(*  %arrayidx26.i.104 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 7 *)
(*  %23 = load i128, i128* %arrayidx26.i.104, align 16, !tbaa !6 *)
mov v23_L L0_112;
mov v23_H L0_120;
(*  %conv27.i = trunc i128 %23 to i64 *)
mov v_conv27_i v23_L;
(*  %and28.i = and i64 %conv27.i, 288230376151711743 *)
(* You may need to modify here *)
and v_and28_i v_conv27_i 0x3FFFFFFFFFFFFFF;
(*  %arrayidx30.i.105 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 8 *)
(*  %24 = load i128, i128* %arrayidx30.i.105, align 16, !tbaa !6 *)
mov v24_L L0_128;
mov v24_H L0_136;
(*  %conv31.i = trunc i128 %24 to i64 *)
mov v_conv31_i v24_L;
(*  %and32.i = and i64 %conv31.i, 288230376151711743 *)
(* You may need to modify here *)
and v_and32_i v_conv31_i 0x3FFFFFFFFFFFFFF;
(*  %shr.i = lshr i64 %conv.i, 58 *)
(* You may need to modify here *)
split v_shr_i tmp_to_be_used v_conv_i 58;
(*  %add.i.106 = add nuw nsw i64 %and4.i, %shr.i *)
add v_add_i_106 v_and4_i v_shr_i;
(*  %25 = lshr i128 %16, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v16_L 58;
split tmpH_h tmpH_l v16_H 58;
shl tmp tmpH_l 6;
add v25_L tmp tmpL_h;
mov v25_H tmpH_h;
(*  %and40.i = trunc i128 %25 to i64 *)
mov v_and40_i v25_L;
(*  %shl.i = and i64 %and40.i, 288230376151711680 *)
(* You may need to modify here *)
and v_shl_i v_and40_i 0x3FFFFFFFFFFFFC0;
(*  %add42.i = add nuw nsw i64 %add.i.106, %shl.i *)
add v_add42_i v_add_i_106 v_shl_i;
(*  %shr44.i = lshr i128 %16, 116 *)
(* You may need to modify here *)
split v_shr44_i_L tmp_to_be_used v16_H 52;
mov v_shr44_i_H 0;
(*  %shr46.i = trunc i128 %shr44.i to i64 *)
mov v_shr46_i v_shr44_i_L;
(*  %shr51.i = lshr i64 %conv3.i, 58 *)
(* You may need to modify here *)
split v_shr51_i tmp_to_be_used v_conv3_i 58;
(*  %26 = lshr i128 %17, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v17_L 58;
split tmpH_h tmpH_l v17_H 58;
shl tmp tmpH_l 6;
add v26_L tmp tmpL_h;
mov v26_H tmpH_h;
(*  %and57.i = trunc i128 %26 to i64 *)
mov v_and57_i v26_L;
(*  %shl58.i = and i64 %and57.i, 288230376151711680 *)
(* You may need to modify here *)
and v_shl58_i v_and57_i 0x3FFFFFFFFFFFFC0;
(*  %add48.i = add nuw nsw i64 %shr51.i, %shr46.i *)
add v_add48_i v_shr51_i v_shr46_i;
(*  %add53.i = add nuw nsw i64 %add48.i, %and8.i *)
add v_add53_i v_add48_i v_and8_i;
(*  %add60.i = add nuw nsw i64 %add53.i, %shl58.i *)
add v_add60_i v_add53_i v_shl58_i;
(*  %shr62.i = lshr i128 %17, 116 *)
(* You may need to modify here *)
split v_shr62_i_L tmp_to_be_used v17_H 52;
mov v_shr62_i_H 0;
(*  %shr64.i = trunc i128 %shr62.i to i64 *)
mov v_shr64_i v_shr62_i_L;
(*  %shr69.i = lshr i64 %conv7.i, 58 *)
(* You may need to modify here *)
split v_shr69_i tmp_to_be_used v_conv7_i 58;
(*  %27 = lshr i128 %18, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v18_L 58;
split tmpH_h tmpH_l v18_H 58;
shl tmp tmpH_l 6;
add v27_L tmp tmpL_h;
mov v27_H tmpH_h;
(*  %and75.i = trunc i128 %27 to i64 *)
mov v_and75_i v27_L;
(*  %shl76.i = and i64 %and75.i, 288230376151711680 *)
(* You may need to modify here *)
and v_shl76_i v_and75_i 0x3FFFFFFFFFFFFC0;
(*  %add66.i = add nuw nsw i64 %shr69.i, %shr64.i *)
add v_add66_i v_shr69_i v_shr64_i;
(*  %add71.i = add nuw nsw i64 %add66.i, %and12.i *)
add v_add71_i v_add66_i v_and12_i;
(*  %add78.i = add nuw nsw i64 %add71.i, %shl76.i *)
add v_add78_i v_add71_i v_shl76_i;
(*  %shr80.i = lshr i128 %18, 116 *)
(* You may need to modify here *)
split v_shr80_i_L tmp_to_be_used v18_H 52;
mov v_shr80_i_H 0;
(*  %shr82.i = trunc i128 %shr80.i to i64 *)
mov v_shr82_i v_shr80_i_L;
(*  %shr87.i = lshr i64 %conv11.i, 58 *)
(* You may need to modify here *)
split v_shr87_i tmp_to_be_used v_conv11_i 58;
(*  %28 = lshr i128 %19, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v19_L 58;
split tmpH_h tmpH_l v19_H 58;
shl tmp tmpH_l 6;
add v28_L tmp tmpL_h;
mov v28_H tmpH_h;
(*  %and93.i = trunc i128 %28 to i64 *)
mov v_and93_i v28_L;
(*  %shl94.i = and i64 %and93.i, 288230376151711680 *)
(* You may need to modify here *)
and v_shl94_i v_and93_i 0x3FFFFFFFFFFFFC0;
(*  %add84.i = add nuw nsw i64 %shr87.i, %shr82.i *)
add v_add84_i v_shr87_i v_shr82_i;
(*  %add89.i = add nuw nsw i64 %add84.i, %and16.i *)
add v_add89_i v_add84_i v_and16_i;
(*  %add96.i = add nuw nsw i64 %add89.i, %shl94.i *)
add v_add96_i v_add89_i v_shl94_i;
(*  %shr98.i = lshr i128 %19, 116 *)
(* You may need to modify here *)
split v_shr98_i_L tmp_to_be_used v19_H 52;
mov v_shr98_i_H 0;
(*  %shr100.i = trunc i128 %shr98.i to i64 *)
mov v_shr100_i v_shr98_i_L;
(*  %shr105.i = lshr i64 %conv15.i, 58 *)
(* You may need to modify here *)
split v_shr105_i tmp_to_be_used v_conv15_i 58;
(*  %29 = lshr i128 %20, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v20_L 58;
split tmpH_h tmpH_l v20_H 58;
shl tmp tmpH_l 6;
add v29_L tmp tmpL_h;
mov v29_H tmpH_h;
(*  %and111.i = trunc i128 %29 to i64 *)
mov v_and111_i v29_L;
(*  %shl112.i = and i64 %and111.i, 288230376151711680 *)
(* You may need to modify here *)
and v_shl112_i v_and111_i 0x3FFFFFFFFFFFFC0;
(*  %add102.i = add nuw nsw i64 %shr105.i, %shr100.i *)
add v_add102_i v_shr105_i v_shr100_i;
(*  %add107.i = add nuw nsw i64 %add102.i, %and20.i *)
add v_add107_i v_add102_i v_and20_i;
(*  %add114.i = add nuw nsw i64 %add107.i, %shl112.i *)
add v_add114_i v_add107_i v_shl112_i;
(*  %shr116.i = lshr i128 %20, 116 *)
(* You may need to modify here *)
split v_shr116_i_L tmp_to_be_used v20_H 52;
mov v_shr116_i_H 0;
(*  %shr118.i = trunc i128 %shr116.i to i64 *)
mov v_shr118_i v_shr116_i_L;
(*  %shr123.i = lshr i64 %conv19.i, 58 *)
(* You may need to modify here *)
split v_shr123_i tmp_to_be_used v_conv19_i 58;
(*  %30 = lshr i128 %21, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v21_L 58;
split tmpH_h tmpH_l v21_H 58;
shl tmp tmpH_l 6;
add v30_L tmp tmpL_h;
mov v30_H tmpH_h;
(*  %and129.i = trunc i128 %30 to i64 *)
mov v_and129_i v30_L;
(*  %shl130.i = and i64 %and129.i, 288230376151711680 *)
(* You may need to modify here *)
and v_shl130_i v_and129_i 0x3FFFFFFFFFFFFC0;
(*  %add120.i = add nuw nsw i64 %shr123.i, %shr118.i *)
add v_add120_i v_shr123_i v_shr118_i;
(*  %add125.i = add nuw nsw i64 %add120.i, %and24.i *)
add v_add125_i v_add120_i v_and24_i;
(*  %add132.i = add nuw nsw i64 %add125.i, %shl130.i *)
add v_add132_i v_add125_i v_shl130_i;
(*  %shr134.i = lshr i128 %21, 116 *)
(* You may need to modify here *)
split v_shr134_i_L tmp_to_be_used v21_H 52;
mov v_shr134_i_H 0;
(*  %shr136.i = trunc i128 %shr134.i to i64 *)
mov v_shr136_i v_shr134_i_L;
(*  %shr141.i = lshr i64 %conv23.i, 58 *)
(* You may need to modify here *)
split v_shr141_i tmp_to_be_used v_conv23_i 58;
(*  %31 = lshr i128 %22, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v22_L 58;
split tmpH_h tmpH_l v22_H 58;
shl tmp tmpH_l 6;
add v31_L tmp tmpL_h;
mov v31_H tmpH_h;
(*  %and147.i = trunc i128 %31 to i64 *)
mov v_and147_i v31_L;
(*  %shl148.i = and i64 %and147.i, 288230376151711680 *)
(* You may need to modify here *)
and v_shl148_i v_and147_i 0x3FFFFFFFFFFFFC0;
(*  %add138.i = add nuw nsw i64 %shr141.i, %shr136.i *)
add v_add138_i v_shr141_i v_shr136_i;
(*  %add143.i = add nuw nsw i64 %add138.i, %and28.i *)
add v_add143_i v_add138_i v_and28_i;
(*  %add150.i = add nuw nsw i64 %add143.i, %shl148.i *)
add v_add150_i v_add143_i v_shl148_i;
(*  %shr152.i = lshr i128 %22, 116 *)
(* You may need to modify here *)
split v_shr152_i_L tmp_to_be_used v22_H 52;
mov v_shr152_i_H 0;
(*  %shr154.i = trunc i128 %shr152.i to i64 *)
mov v_shr154_i v_shr152_i_L;
(*  %shr159.i = lshr i64 %conv27.i, 58 *)
(* You may need to modify here *)
split v_shr159_i tmp_to_be_used v_conv27_i 58;
(*  %32 = lshr i128 %23, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v23_L 58;
split tmpH_h tmpH_l v23_H 58;
shl tmp tmpH_l 6;
add v32_L tmp tmpL_h;
mov v32_H tmpH_h;
(*  %and165.i = trunc i128 %32 to i64 *)
mov v_and165_i v32_L;
(*  %shl166.i = and i64 %and165.i, 288230376151711680 *)
(* You may need to modify here *)
and v_shl166_i v_and165_i 0x3FFFFFFFFFFFFC0;
(*  %add156.i = add nuw nsw i64 %shr159.i, %shr154.i *)
add v_add156_i v_shr159_i v_shr154_i;
(*  %add161.i = add nuw nsw i64 %add156.i, %and32.i *)
add v_add161_i v_add156_i v_and32_i;
(*  %add168.i = add nuw nsw i64 %add161.i, %shl166.i *)
add v_add168_i v_add161_i v_shl166_i;
(*  %shr170.i = lshr i128 %23, 116 *)
(* You may need to modify here *)
split v_shr170_i_L tmp_to_be_used v23_H 52;
mov v_shr170_i_H 0;
(*  %shr172.i = trunc i128 %shr170.i to i64 *)
mov v_shr172_i v_shr170_i_L;
(*  %shr175.i = lshr i64 %conv31.i, 58 *)
(* You may need to modify here *)
split v_shr175_i tmp_to_be_used v_conv31_i 58;
(*  %add176.i = add nuw nsw i64 %shr175.i, %shr172.i *)
add v_add176_i v_shr175_i v_shr172_i;
(*  %33 = lshr i128 %24, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v24_L 58;
split tmpH_h tmpH_l v24_H 58;
shl tmp tmpH_l 6;
add v33_L tmp tmpL_h;
mov v33_H tmpH_h;
(*  %and180.i = trunc i128 %33 to i64 *)
mov v_and180_i v33_L;
(*  %shl181.i = and i64 %and180.i, 288230376151711680 *)
(* You may need to modify here *)
and v_shl181_i v_and180_i 0x3FFFFFFFFFFFFC0;
(*  %add182.i = add nuw nsw i64 %add176.i, %shl181.i *)
add v_add182_i v_add176_i v_shl181_i;
(*  %shl187.i = shl nuw nsw i64 %add182.i, 1 *)
shl v_shl187_i v_add182_i 1;
(*  %34 = lshr i128 %24, 115 *)
(* You may need to modify here *)
split v34_L tmp_to_be_used v24_H 51;
mov v34_H 0;
(*  %.tr.i = trunc i128 %34 to i64 *)
mov v__tr_i v34_L;
(*  %shl188.i = and i64 %.tr.i, 8190 *)
(* You may need to modify here *)
and v_shl188_i v__tr_i 0x1FFE;
(*  %add190.i = add nuw nsw i64 %shl187.i, %and.i *)
add v_add190_i v_shl187_i v_and_i;
(*  %add192.i = add nuw nsw i64 %add42.i, %shl188.i *)
add v_add192_i v_add42_i v_shl188_i;
(*  %shr194.i = lshr i64 %add190.i, 58 *)
(* You may need to modify here *)
split v_shr194_i tmp_to_be_used v_add190_i 58;
(*  %add196.i = add nuw nsw i64 %add192.i, %shr194.i *)
add v_add196_i v_add192_i v_shr194_i;
(*  %fold = add i64 %shl187.i, %conv.i *)
(* add v_fold v_shl187_i v_conv_i; *)
adds cf v_fold v_shl187_i v_conv_i;
(*  %and198.i = and i64 %fold, 288230376151711743 *)
(* You may need to modify here *)
and v_and198_i v_fold 0x3FFFFFFFFFFFFFF;
(*  call fastcc void @felem_square(i128* %arraydecay10, i64* %y_in) *)
call felem_square(L8_0, L8_8, L8_16, L8_24, L8_32, L8_40, L8_48, L8_56, L8_64, L0_0, L0_8, L0_16, L0_24, L0_32, L0_40, L0_48, L0_56, L0_64, L0_72, L0_80, L0_88, L0_96, L0_104, L0_112, L0_120, L0_128, L0_136);
(*  %arraydecay14 = getelementptr inbounds [9 x i64], [9 x i64]* %gamma, i64 0, i64 0 *)
(*  %35 = load i128, i128* %arraydecay10, align 16, !tbaa !6 *)
mov v35_L L0_0;
mov v35_H L0_8;
(*  %conv.i.107 = trunc i128 %35 to i64 *)
mov v_conv_i_107 v35_L;
(*  %and.i.108 = and i64 %conv.i.107, 288230376151711743 *)
(* You may need to modify here *)
and v_and_i_108 v_conv_i_107 0x3FFFFFFFFFFFFFF;
(*  store i64 %and.i.108, i64* %arraydecay14, align 16, !tbaa !2 *)
mov L2_0 v_and_i_108;
(*  %36 = load i128, i128* %arrayidx2.i.94, align 16, !tbaa !6 *)
mov v36_L L0_16;
mov v36_H L0_24;
(*  %conv3.i.110 = trunc i128 %36 to i64 *)
mov v_conv3_i_110 v36_L;
(*  %and4.i.111 = and i64 %conv3.i.110, 288230376151711743 *)
(* You may need to modify here *)
and v_and4_i_111 v_conv3_i_110 0x3FFFFFFFFFFFFFF;
(*  %arrayidx5.i.112 = getelementptr inbounds [9 x i64], [9 x i64]* %gamma, i64 0, i64 1 *)
(*  %37 = load i128, i128* %arrayidx6.i.96, align 16, !tbaa !6 *)
mov v37_L L0_32;
mov v37_H L0_40;
(*  %conv7.i.114 = trunc i128 %37 to i64 *)
mov v_conv7_i_114 v37_L;
(*  %and8.i.115 = and i64 %conv7.i.114, 288230376151711743 *)
(* You may need to modify here *)
and v_and8_i_115 v_conv7_i_114 0x3FFFFFFFFFFFFFF;
(*  %arrayidx9.i.116 = getelementptr inbounds [9 x i64], [9 x i64]* %gamma, i64 0, i64 2 *)
(*  %38 = load i128, i128* %arrayidx10.i.98, align 16, !tbaa !6 *)
mov v38_L L0_48;
mov v38_H L0_56;
(*  %conv11.i.118 = trunc i128 %38 to i64 *)
mov v_conv11_i_118 v38_L;
(*  %and12.i.119 = and i64 %conv11.i.118, 288230376151711743 *)
(* You may need to modify here *)
and v_and12_i_119 v_conv11_i_118 0x3FFFFFFFFFFFFFF;
(*  %arrayidx13.i.120 = getelementptr inbounds [9 x i64], [9 x i64]* %gamma, i64 0, i64 3 *)
(*  %39 = load i128, i128* %arrayidx14.i.100, align 16, !tbaa !6 *)
mov v39_L L0_64;
mov v39_H L0_72;
(*  %conv15.i.122 = trunc i128 %39 to i64 *)
mov v_conv15_i_122 v39_L;
(*  %and16.i.123 = and i64 %conv15.i.122, 288230376151711743 *)
(* You may need to modify here *)
and v_and16_i_123 v_conv15_i_122 0x3FFFFFFFFFFFFFF;
(*  %arrayidx17.i.124 = getelementptr inbounds [9 x i64], [9 x i64]* %gamma, i64 0, i64 4 *)
(*  %40 = load i128, i128* %arrayidx18.i.102, align 16, !tbaa !6 *)
mov v40_L L0_80;
mov v40_H L0_88;
(*  %conv19.i.126 = trunc i128 %40 to i64 *)
mov v_conv19_i_126 v40_L;
(*  %and20.i.127 = and i64 %conv19.i.126, 288230376151711743 *)
(* You may need to modify here *)
and v_and20_i_127 v_conv19_i_126 0x3FFFFFFFFFFFFFF;
(*  %arrayidx21.i.128 = getelementptr inbounds [9 x i64], [9 x i64]* %gamma, i64 0, i64 5 *)
(*  %41 = load i128, i128* %arrayidx22.i.103, align 16, !tbaa !6 *)
mov v41_L L0_96;
mov v41_H L0_104;
(*  %conv23.i.130 = trunc i128 %41 to i64 *)
mov v_conv23_i_130 v41_L;
(*  %and24.i.131 = and i64 %conv23.i.130, 288230376151711743 *)
(* You may need to modify here *)
and v_and24_i_131 v_conv23_i_130 0x3FFFFFFFFFFFFFF;
(*  %arrayidx25.i.132 = getelementptr inbounds [9 x i64], [9 x i64]* %gamma, i64 0, i64 6 *)
(*  %42 = load i128, i128* %arrayidx26.i.104, align 16, !tbaa !6 *)
mov v42_L L0_112;
mov v42_H L0_120;
(*  %conv27.i.134 = trunc i128 %42 to i64 *)
mov v_conv27_i_134 v42_L;
(*  %and28.i.135 = and i64 %conv27.i.134, 288230376151711743 *)
(* You may need to modify here *)
and v_and28_i_135 v_conv27_i_134 0x3FFFFFFFFFFFFFF;
(*  %arrayidx29.i.136 = getelementptr inbounds [9 x i64], [9 x i64]* %gamma, i64 0, i64 7 *)
(*  %43 = load i128, i128* %arrayidx30.i.105, align 16, !tbaa !6 *)
mov v43_L L0_128;
mov v43_H L0_136;
(*  %conv31.i.138 = trunc i128 %43 to i64 *)
mov v_conv31_i_138 v43_L;
(*  %and32.i.139 = and i64 %conv31.i.138, 288230376151711743 *)
(* You may need to modify here *)
and v_and32_i_139 v_conv31_i_138 0x3FFFFFFFFFFFFFF;
(*  %arrayidx33.i.140 = getelementptr inbounds [9 x i64], [9 x i64]* %gamma, i64 0, i64 8 *)
(*  %shr.i.141 = lshr i64 %conv.i.107, 58 *)
(* You may need to modify here *)
split v_shr_i_141 tmp_to_be_used v_conv_i_107 58;
(*  %add.i.142 = add nuw nsw i64 %and4.i.111, %shr.i.141 *)
add v_add_i_142 v_and4_i_111 v_shr_i_141;
(*  %44 = lshr i128 %35, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v35_L 58;
split tmpH_h tmpH_l v35_H 58;
shl tmp tmpH_l 6;
add v44_L tmp tmpL_h;
mov v44_H tmpH_h;
(*  %and40.i.143 = trunc i128 %44 to i64 *)
mov v_and40_i_143 v44_L;
(*  %shl.i.144 = and i64 %and40.i.143, 288230376151711680 *)
(* You may need to modify here *)
and v_shl_i_144 v_and40_i_143 0x3FFFFFFFFFFFFC0;
(*  %add42.i.145 = add nuw nsw i64 %add.i.142, %shl.i.144 *)
add v_add42_i_145 v_add_i_142 v_shl_i_144;
(*  %shr44.i.146 = lshr i128 %35, 116 *)
(* You may need to modify here *)
split v_shr44_i_146_L tmp_to_be_used v35_H 52;
mov v_shr44_i_146_H 0;
(*  %shr46.i.147 = trunc i128 %shr44.i.146 to i64 *)
mov v_shr46_i_147 v_shr44_i_146_L;
(*  %shr51.i.149 = lshr i64 %conv3.i.110, 58 *)
(* You may need to modify here *)
split v_shr51_i_149 tmp_to_be_used v_conv3_i_110 58;
(*  %45 = lshr i128 %36, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v36_L 58;
split tmpH_h tmpH_l v36_H 58;
shl tmp tmpH_l 6;
add v45_L tmp tmpL_h;
mov v45_H tmpH_h;
(*  %and57.i.151 = trunc i128 %45 to i64 *)
mov v_and57_i_151 v45_L;
(*  %shl58.i.152 = and i64 %and57.i.151, 288230376151711680 *)
(* You may need to modify here *)
and v_shl58_i_152 v_and57_i_151 0x3FFFFFFFFFFFFC0;
(*  %add48.i.148 = add nuw nsw i64 %shr51.i.149, %shr46.i.147 *)
add v_add48_i_148 v_shr51_i_149 v_shr46_i_147;
(*  %add53.i.150 = add nuw nsw i64 %add48.i.148, %and8.i.115 *)
add v_add53_i_150 v_add48_i_148 v_and8_i_115;
(*  %add60.i.153 = add nuw nsw i64 %add53.i.150, %shl58.i.152 *)
add v_add60_i_153 v_add53_i_150 v_shl58_i_152;
(*  store i64 %add60.i.153, i64* %arrayidx9.i.116, align 16, !tbaa !2 *)
mov L2_16 v_add60_i_153;
(*  %shr62.i.154 = lshr i128 %36, 116 *)
(* You may need to modify here *)
split v_shr62_i_154_L tmp_to_be_used v36_H 52;
mov v_shr62_i_154_H 0;
(*  %shr64.i.155 = trunc i128 %shr62.i.154 to i64 *)
mov v_shr64_i_155 v_shr62_i_154_L;
(*  %shr69.i.157 = lshr i64 %conv7.i.114, 58 *)
(* You may need to modify here *)
split v_shr69_i_157 tmp_to_be_used v_conv7_i_114 58;
(*  %46 = lshr i128 %37, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v37_L 58;
split tmpH_h tmpH_l v37_H 58;
shl tmp tmpH_l 6;
add v46_L tmp tmpL_h;
mov v46_H tmpH_h;
(*  %and75.i.159 = trunc i128 %46 to i64 *)
mov v_and75_i_159 v46_L;
(*  %shl76.i.160 = and i64 %and75.i.159, 288230376151711680 *)
(* You may need to modify here *)
and v_shl76_i_160 v_and75_i_159 0x3FFFFFFFFFFFFC0;
(*  %add66.i.156 = add nuw nsw i64 %shr69.i.157, %shr64.i.155 *)
add v_add66_i_156 v_shr69_i_157 v_shr64_i_155;
(*  %add71.i.158 = add nuw nsw i64 %add66.i.156, %and12.i.119 *)
add v_add71_i_158 v_add66_i_156 v_and12_i_119;
(*  %add78.i.161 = add nuw nsw i64 %add71.i.158, %shl76.i.160 *)
add v_add78_i_161 v_add71_i_158 v_shl76_i_160;
(*  store i64 %add78.i.161, i64* %arrayidx13.i.120, align 8, !tbaa !2 *)
mov L2_24 v_add78_i_161;
(*  %shr80.i.162 = lshr i128 %37, 116 *)
(* You may need to modify here *)
split v_shr80_i_162_L tmp_to_be_used v37_H 52;
mov v_shr80_i_162_H 0;
(*  %shr82.i.163 = trunc i128 %shr80.i.162 to i64 *)
mov v_shr82_i_163 v_shr80_i_162_L;
(*  %shr87.i.165 = lshr i64 %conv11.i.118, 58 *)
(* You may need to modify here *)
split v_shr87_i_165 tmp_to_be_used v_conv11_i_118 58;
(*  %47 = lshr i128 %38, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v38_L 58;
split tmpH_h tmpH_l v38_H 58;
shl tmp tmpH_l 6;
add v47_L tmp tmpL_h;
mov v47_H tmpH_h;
(*  %and93.i.167 = trunc i128 %47 to i64 *)
mov v_and93_i_167 v47_L;
(*  %shl94.i.168 = and i64 %and93.i.167, 288230376151711680 *)
(* You may need to modify here *)
and v_shl94_i_168 v_and93_i_167 0x3FFFFFFFFFFFFC0;
(*  %add84.i.164 = add nuw nsw i64 %shr87.i.165, %shr82.i.163 *)
add v_add84_i_164 v_shr87_i_165 v_shr82_i_163;
(*  %add89.i.166 = add nuw nsw i64 %add84.i.164, %and16.i.123 *)
add v_add89_i_166 v_add84_i_164 v_and16_i_123;
(*  %add96.i.169 = add nuw nsw i64 %add89.i.166, %shl94.i.168 *)
add v_add96_i_169 v_add89_i_166 v_shl94_i_168;
(*  store i64 %add96.i.169, i64* %arrayidx17.i.124, align 16, !tbaa !2 *)
mov L2_32 v_add96_i_169;
(*  %shr98.i.170 = lshr i128 %38, 116 *)
(* You may need to modify here *)
split v_shr98_i_170_L tmp_to_be_used v38_H 52;
mov v_shr98_i_170_H 0;
(*  %shr100.i.171 = trunc i128 %shr98.i.170 to i64 *)
mov v_shr100_i_171 v_shr98_i_170_L;
(*  %shr105.i.173 = lshr i64 %conv15.i.122, 58 *)
(* You may need to modify here *)
split v_shr105_i_173 tmp_to_be_used v_conv15_i_122 58;
(*  %48 = lshr i128 %39, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v39_L 58;
split tmpH_h tmpH_l v39_H 58;
shl tmp tmpH_l 6;
add v48_L tmp tmpL_h;
mov v48_H tmpH_h;
(*  %and111.i.175 = trunc i128 %48 to i64 *)
mov v_and111_i_175 v48_L;
(*  %shl112.i.176 = and i64 %and111.i.175, 288230376151711680 *)
(* You may need to modify here *)
and v_shl112_i_176 v_and111_i_175 0x3FFFFFFFFFFFFC0;
(*  %add102.i.172 = add nuw nsw i64 %shr105.i.173, %shr100.i.171 *)
add v_add102_i_172 v_shr105_i_173 v_shr100_i_171;
(*  %add107.i.174 = add nuw nsw i64 %add102.i.172, %and20.i.127 *)
add v_add107_i_174 v_add102_i_172 v_and20_i_127;
(*  %add114.i.177 = add nuw nsw i64 %add107.i.174, %shl112.i.176 *)
add v_add114_i_177 v_add107_i_174 v_shl112_i_176;
(*  store i64 %add114.i.177, i64* %arrayidx21.i.128, align 8, !tbaa !2 *)
mov L2_40 v_add114_i_177;
(*  %shr116.i.178 = lshr i128 %39, 116 *)
(* You may need to modify here *)
split v_shr116_i_178_L tmp_to_be_used v39_H 52;
mov v_shr116_i_178_H 0;
(*  %shr118.i.179 = trunc i128 %shr116.i.178 to i64 *)
mov v_shr118_i_179 v_shr116_i_178_L;
(*  %shr123.i.181 = lshr i64 %conv19.i.126, 58 *)
(* You may need to modify here *)
split v_shr123_i_181 tmp_to_be_used v_conv19_i_126 58;
(*  %49 = lshr i128 %40, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v40_L 58;
split tmpH_h tmpH_l v40_H 58;
shl tmp tmpH_l 6;
add v49_L tmp tmpL_h;
mov v49_H tmpH_h;
(*  %and129.i.183 = trunc i128 %49 to i64 *)
mov v_and129_i_183 v49_L;
(*  %shl130.i.184 = and i64 %and129.i.183, 288230376151711680 *)
(* You may need to modify here *)
and v_shl130_i_184 v_and129_i_183 0x3FFFFFFFFFFFFC0;
(*  %add120.i.180 = add nuw nsw i64 %shr123.i.181, %shr118.i.179 *)
add v_add120_i_180 v_shr123_i_181 v_shr118_i_179;
(*  %add125.i.182 = add nuw nsw i64 %add120.i.180, %and24.i.131 *)
add v_add125_i_182 v_add120_i_180 v_and24_i_131;
(*  %add132.i.185 = add nuw nsw i64 %add125.i.182, %shl130.i.184 *)
add v_add132_i_185 v_add125_i_182 v_shl130_i_184;
(*  store i64 %add132.i.185, i64* %arrayidx25.i.132, align 16, !tbaa !2 *)
mov L2_48 v_add132_i_185;
(*  %shr134.i.186 = lshr i128 %40, 116 *)
(* You may need to modify here *)
split v_shr134_i_186_L tmp_to_be_used v40_H 52;
mov v_shr134_i_186_H 0;
(*  %shr136.i.187 = trunc i128 %shr134.i.186 to i64 *)
mov v_shr136_i_187 v_shr134_i_186_L;
(*  %shr141.i.189 = lshr i64 %conv23.i.130, 58 *)
(* You may need to modify here *)
split v_shr141_i_189 tmp_to_be_used v_conv23_i_130 58;
(*  %50 = lshr i128 %41, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v41_L 58;
split tmpH_h tmpH_l v41_H 58;
shl tmp tmpH_l 6;
add v50_L tmp tmpL_h;
mov v50_H tmpH_h;
(*  %and147.i.191 = trunc i128 %50 to i64 *)
mov v_and147_i_191 v50_L;
(*  %shl148.i.192 = and i64 %and147.i.191, 288230376151711680 *)
(* You may need to modify here *)
and v_shl148_i_192 v_and147_i_191 0x3FFFFFFFFFFFFC0;
(*  %add138.i.188 = add nuw nsw i64 %shr141.i.189, %shr136.i.187 *)
add v_add138_i_188 v_shr141_i_189 v_shr136_i_187;
(*  %add143.i.190 = add nuw nsw i64 %add138.i.188, %and28.i.135 *)
add v_add143_i_190 v_add138_i_188 v_and28_i_135;
(*  %add150.i.193 = add nuw nsw i64 %add143.i.190, %shl148.i.192 *)
add v_add150_i_193 v_add143_i_190 v_shl148_i_192;
(*  store i64 %add150.i.193, i64* %arrayidx29.i.136, align 8, !tbaa !2 *)
mov L2_56 v_add150_i_193;
(*  %shr152.i.194 = lshr i128 %41, 116 *)
(* You may need to modify here *)
split v_shr152_i_194_L tmp_to_be_used v41_H 52;
mov v_shr152_i_194_H 0;
(*  %shr154.i.195 = trunc i128 %shr152.i.194 to i64 *)
mov v_shr154_i_195 v_shr152_i_194_L;
(*  %shr159.i.197 = lshr i64 %conv27.i.134, 58 *)
(* You may need to modify here *)
split v_shr159_i_197 tmp_to_be_used v_conv27_i_134 58;
(*  %51 = lshr i128 %42, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v42_L 58;
split tmpH_h tmpH_l v42_H 58;
shl tmp tmpH_l 6;
add v51_L tmp tmpL_h;
mov v51_H tmpH_h;
(*  %and165.i.199 = trunc i128 %51 to i64 *)
mov v_and165_i_199 v51_L;
(*  %shl166.i.200 = and i64 %and165.i.199, 288230376151711680 *)
(* You may need to modify here *)
and v_shl166_i_200 v_and165_i_199 0x3FFFFFFFFFFFFC0;
(*  %add156.i.196 = add nuw nsw i64 %shr159.i.197, %shr154.i.195 *)
add v_add156_i_196 v_shr159_i_197 v_shr154_i_195;
(*  %add161.i.198 = add nuw nsw i64 %add156.i.196, %and32.i.139 *)
add v_add161_i_198 v_add156_i_196 v_and32_i_139;
(*  %add168.i.201 = add nuw nsw i64 %add161.i.198, %shl166.i.200 *)
add v_add168_i_201 v_add161_i_198 v_shl166_i_200;
(*  store i64 %add168.i.201, i64* %arrayidx33.i.140, align 16, !tbaa !2 *)
mov L2_64 v_add168_i_201;
(*  %shr170.i.202 = lshr i128 %42, 116 *)
(* You may need to modify here *)
split v_shr170_i_202_L tmp_to_be_used v42_H 52;
mov v_shr170_i_202_H 0;
(*  %shr172.i.203 = trunc i128 %shr170.i.202 to i64 *)
mov v_shr172_i_203 v_shr170_i_202_L;
(*  %shr175.i.205 = lshr i64 %conv31.i.138, 58 *)
(* You may need to modify here *)
split v_shr175_i_205 tmp_to_be_used v_conv31_i_138 58;
(*  %add176.i.206 = add nuw nsw i64 %shr175.i.205, %shr172.i.203 *)
add v_add176_i_206 v_shr175_i_205 v_shr172_i_203;
(*  %52 = lshr i128 %43, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v43_L 58;
split tmpH_h tmpH_l v43_H 58;
shl tmp tmpH_l 6;
add v52_L tmp tmpL_h;
mov v52_H tmpH_h;
(*  %and180.i.207 = trunc i128 %52 to i64 *)
mov v_and180_i_207 v52_L;
(*  %shl181.i.208 = and i64 %and180.i.207, 288230376151711680 *)
(* You may need to modify here *)
and v_shl181_i_208 v_and180_i_207 0x3FFFFFFFFFFFFC0;
(*  %add182.i.209 = add nuw nsw i64 %add176.i.206, %shl181.i.208 *)
add v_add182_i_209 v_add176_i_206 v_shl181_i_208;
(*  %shl187.i.210 = shl nuw nsw i64 %add182.i.209, 1 *)
shl v_shl187_i_210 v_add182_i_209 1;
(*  %53 = lshr i128 %43, 115 *)
(* You may need to modify here *)
split v53_L tmp_to_be_used v43_H 51;
mov v53_H 0;
(*  %.tr.i.211 = trunc i128 %53 to i64 *)
mov v__tr_i_211 v53_L;
(*  %shl188.i.212 = and i64 %.tr.i.211, 8190 *)
(* You may need to modify here *)
and v_shl188_i_212 v__tr_i_211 0x1FFE;
(*  %54 = load i64, i64* %arraydecay14, align 16, !tbaa !2 *)
mov v54 L2_0;
(*  %add190.i.213 = add i64 %shl187.i.210, %54 *)
add v_add190_i_213 v_shl187_i_210 v54;
(*  %add192.i.214 = add nuw nsw i64 %shl188.i.212, %add42.i.145 *)
add v_add192_i_214 v_shl188_i_212 v_add42_i_145;
(*  %shr194.i.215 = lshr i64 %add190.i.213, 58 *)
(* You may need to modify here *)
split v_shr194_i_215 tmp_to_be_used v_add190_i_213 58;
(*  %add196.i.216 = add nuw nsw i64 %add192.i.214, %shr194.i.215 *)
add v_add196_i_216 v_add192_i_214 v_shr194_i_215;
(*  store i64 %add196.i.216, i64* %arrayidx5.i.112, align 8, !tbaa !2 *)
mov L2_8 v_add196_i_216;
(*  %and198.i.217 = and i64 %add190.i.213, 288230376151711743 *)
(* You may need to modify here *)
and v_and198_i_217 v_add190_i_213 0x3FFFFFFFFFFFFFF;
(*  store i64 %and198.i.217, i64* %arraydecay14, align 16, !tbaa !2 *)
mov L2_0 v_and198_i_217;
(*  call fastcc void @felem_mul(i128* %arraydecay10, i64* %x_in, i64* %arraydecay14) *)
call felem_mul(L7_0, L7_8, L7_16, L7_24, L7_32, L7_40, L7_48, L7_56, L7_64, L2_0, L2_8, L2_16, L2_24, L2_32, L2_40, L2_48, L2_56, L2_64, L0_0, L0_8, L0_16, L0_24, L0_32, L0_40, L0_48, L0_56, L0_64, L0_72, L0_80, L0_88, L0_96, L0_104, L0_112, L0_120, L0_128, L0_136);
(*  %arraydecay18 = getelementptr inbounds [9 x i64], [9 x i64]* %beta, i64 0, i64 0 *)
(*  %55 = load i128, i128* %arraydecay10, align 16, !tbaa !6 *)
mov v55_L L0_0;
mov v55_H L0_8;
(*  %conv.i.262 = trunc i128 %55 to i64 *)
mov v_conv_i_262 v55_L;
(*  %and.i.263 = and i64 %conv.i.262, 288230376151711743 *)
(* You may need to modify here *)
and v_and_i_263 v_conv_i_262 0x3FFFFFFFFFFFFFF;
(*  store i64 %and.i.263, i64* %arraydecay18, align 16, !tbaa !2 *)
mov L3_0 v_and_i_263;
(*  %56 = load i128, i128* %arrayidx2.i.94, align 16, !tbaa !6 *)
mov v56_L L0_16;
mov v56_H L0_24;
(*  %conv3.i.265 = trunc i128 %56 to i64 *)
mov v_conv3_i_265 v56_L;
(*  %and4.i.266 = and i64 %conv3.i.265, 288230376151711743 *)
(* You may need to modify here *)
and v_and4_i_266 v_conv3_i_265 0x3FFFFFFFFFFFFFF;
(*  %arrayidx5.i.267 = getelementptr inbounds [9 x i64], [9 x i64]* %beta, i64 0, i64 1 *)
(*  %57 = load i128, i128* %arrayidx6.i.96, align 16, !tbaa !6 *)
mov v57_L L0_32;
mov v57_H L0_40;
(*  %conv7.i.269 = trunc i128 %57 to i64 *)
mov v_conv7_i_269 v57_L;
(*  %and8.i.270 = and i64 %conv7.i.269, 288230376151711743 *)
(* You may need to modify here *)
and v_and8_i_270 v_conv7_i_269 0x3FFFFFFFFFFFFFF;
(*  %arrayidx9.i.271 = getelementptr inbounds [9 x i64], [9 x i64]* %beta, i64 0, i64 2 *)
(*  %58 = load i128, i128* %arrayidx10.i.98, align 16, !tbaa !6 *)
mov v58_L L0_48;
mov v58_H L0_56;
(*  %conv11.i.273 = trunc i128 %58 to i64 *)
mov v_conv11_i_273 v58_L;
(*  %and12.i.274 = and i64 %conv11.i.273, 288230376151711743 *)
(* You may need to modify here *)
and v_and12_i_274 v_conv11_i_273 0x3FFFFFFFFFFFFFF;
(*  %arrayidx13.i.275 = getelementptr inbounds [9 x i64], [9 x i64]* %beta, i64 0, i64 3 *)
(*  %59 = load i128, i128* %arrayidx14.i.100, align 16, !tbaa !6 *)
mov v59_L L0_64;
mov v59_H L0_72;
(*  %conv15.i.277 = trunc i128 %59 to i64 *)
mov v_conv15_i_277 v59_L;
(*  %and16.i.278 = and i64 %conv15.i.277, 288230376151711743 *)
(* You may need to modify here *)
and v_and16_i_278 v_conv15_i_277 0x3FFFFFFFFFFFFFF;
(*  %arrayidx17.i.279 = getelementptr inbounds [9 x i64], [9 x i64]* %beta, i64 0, i64 4 *)
(*  %60 = load i128, i128* %arrayidx18.i.102, align 16, !tbaa !6 *)
mov v60_L L0_80;
mov v60_H L0_88;
(*  %conv19.i.281 = trunc i128 %60 to i64 *)
mov v_conv19_i_281 v60_L;
(*  %and20.i.282 = and i64 %conv19.i.281, 288230376151711743 *)
(* You may need to modify here *)
and v_and20_i_282 v_conv19_i_281 0x3FFFFFFFFFFFFFF;
(*  %arrayidx21.i.283 = getelementptr inbounds [9 x i64], [9 x i64]* %beta, i64 0, i64 5 *)
(*  %61 = load i128, i128* %arrayidx22.i.103, align 16, !tbaa !6 *)
mov v61_L L0_96;
mov v61_H L0_104;
(*  %conv23.i.285 = trunc i128 %61 to i64 *)
mov v_conv23_i_285 v61_L;
(*  %and24.i.286 = and i64 %conv23.i.285, 288230376151711743 *)
(* You may need to modify here *)
and v_and24_i_286 v_conv23_i_285 0x3FFFFFFFFFFFFFF;
(*  %arrayidx25.i.287 = getelementptr inbounds [9 x i64], [9 x i64]* %beta, i64 0, i64 6 *)
(*  %62 = load i128, i128* %arrayidx26.i.104, align 16, !tbaa !6 *)
mov v62_L L0_112;
mov v62_H L0_120;
(*  %conv27.i.289 = trunc i128 %62 to i64 *)
mov v_conv27_i_289 v62_L;
(*  %and28.i.290 = and i64 %conv27.i.289, 288230376151711743 *)
(* You may need to modify here *)
and v_and28_i_290 v_conv27_i_289 0x3FFFFFFFFFFFFFF;
(*  %arrayidx29.i.291 = getelementptr inbounds [9 x i64], [9 x i64]* %beta, i64 0, i64 7 *)
(*  %63 = load i128, i128* %arrayidx30.i.105, align 16, !tbaa !6 *)
mov v63_L L0_128;
mov v63_H L0_136;
(*  %conv31.i.293 = trunc i128 %63 to i64 *)
mov v_conv31_i_293 v63_L;
(*  %and32.i.294 = and i64 %conv31.i.293, 288230376151711743 *)
(* You may need to modify here *)
and v_and32_i_294 v_conv31_i_293 0x3FFFFFFFFFFFFFF;
(*  %arrayidx33.i.295 = getelementptr inbounds [9 x i64], [9 x i64]* %beta, i64 0, i64 8 *)
(*  %shr.i.296 = lshr i64 %conv.i.262, 58 *)
(* You may need to modify here *)
split v_shr_i_296 tmp_to_be_used v_conv_i_262 58;
(*  %add.i.297 = add nuw nsw i64 %and4.i.266, %shr.i.296 *)
add v_add_i_297 v_and4_i_266 v_shr_i_296;
(*  %64 = lshr i128 %55, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v55_L 58;
split tmpH_h tmpH_l v55_H 58;
shl tmp tmpH_l 6;
add v64_L tmp tmpL_h;
mov v64_H tmpH_h;
(*  %and40.i.298 = trunc i128 %64 to i64 *)
mov v_and40_i_298 v64_L;
(*  %shl.i.299 = and i64 %and40.i.298, 288230376151711680 *)
(* You may need to modify here *)
and v_shl_i_299 v_and40_i_298 0x3FFFFFFFFFFFFC0;
(*  %add42.i.300 = add nuw nsw i64 %add.i.297, %shl.i.299 *)
add v_add42_i_300 v_add_i_297 v_shl_i_299;
(*  %shr44.i.301 = lshr i128 %55, 116 *)
(* You may need to modify here *)
split v_shr44_i_301_L tmp_to_be_used v55_H 52;
mov v_shr44_i_301_H 0;
(*  %shr46.i.302 = trunc i128 %shr44.i.301 to i64 *)
mov v_shr46_i_302 v_shr44_i_301_L;
(*  %shr51.i.304 = lshr i64 %conv3.i.265, 58 *)
(* You may need to modify here *)
split v_shr51_i_304 tmp_to_be_used v_conv3_i_265 58;
(*  %65 = lshr i128 %56, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v56_L 58;
split tmpH_h tmpH_l v56_H 58;
shl tmp tmpH_l 6;
add v65_L tmp tmpL_h;
mov v65_H tmpH_h;
(*  %and57.i.306 = trunc i128 %65 to i64 *)
mov v_and57_i_306 v65_L;
(*  %shl58.i.307 = and i64 %and57.i.306, 288230376151711680 *)
(* You may need to modify here *)
and v_shl58_i_307 v_and57_i_306 0x3FFFFFFFFFFFFC0;
(*  %add48.i.303 = add nuw nsw i64 %shr51.i.304, %shr46.i.302 *)
add v_add48_i_303 v_shr51_i_304 v_shr46_i_302;
(*  %add53.i.305 = add nuw nsw i64 %add48.i.303, %and8.i.270 *)
add v_add53_i_305 v_add48_i_303 v_and8_i_270;
(*  %add60.i.308 = add nuw nsw i64 %add53.i.305, %shl58.i.307 *)
add v_add60_i_308 v_add53_i_305 v_shl58_i_307;
(*  store i64 %add60.i.308, i64* %arrayidx9.i.271, align 16, !tbaa !2 *)
mov L3_16 v_add60_i_308;
(*  %shr62.i.309 = lshr i128 %56, 116 *)
(* You may need to modify here *)
split v_shr62_i_309_L tmp_to_be_used v56_H 52;
mov v_shr62_i_309_H 0;
(*  %shr64.i.310 = trunc i128 %shr62.i.309 to i64 *)
mov v_shr64_i_310 v_shr62_i_309_L;
(*  %shr69.i.312 = lshr i64 %conv7.i.269, 58 *)
(* You may need to modify here *)
split v_shr69_i_312 tmp_to_be_used v_conv7_i_269 58;
(*  %66 = lshr i128 %57, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v57_L 58;
split tmpH_h tmpH_l v57_H 58;
shl tmp tmpH_l 6;
add v66_L tmp tmpL_h;
mov v66_H tmpH_h;
(*  %and75.i.314 = trunc i128 %66 to i64 *)
mov v_and75_i_314 v66_L;
(*  %shl76.i.315 = and i64 %and75.i.314, 288230376151711680 *)
(* You may need to modify here *)
and v_shl76_i_315 v_and75_i_314 0x3FFFFFFFFFFFFC0;
(*  %add66.i.311 = add nuw nsw i64 %shr69.i.312, %shr64.i.310 *)
add v_add66_i_311 v_shr69_i_312 v_shr64_i_310;
(*  %add71.i.313 = add nuw nsw i64 %add66.i.311, %and12.i.274 *)
add v_add71_i_313 v_add66_i_311 v_and12_i_274;
(*  %add78.i.316 = add nuw nsw i64 %add71.i.313, %shl76.i.315 *)
add v_add78_i_316 v_add71_i_313 v_shl76_i_315;
(*  store i64 %add78.i.316, i64* %arrayidx13.i.275, align 8, !tbaa !2 *)
mov L3_24 v_add78_i_316;
(*  %shr80.i.317 = lshr i128 %57, 116 *)
(* You may need to modify here *)
split v_shr80_i_317_L tmp_to_be_used v57_H 52;
mov v_shr80_i_317_H 0;
(*  %shr82.i.318 = trunc i128 %shr80.i.317 to i64 *)
mov v_shr82_i_318 v_shr80_i_317_L;
(*  %shr87.i.320 = lshr i64 %conv11.i.273, 58 *)
(* You may need to modify here *)
split v_shr87_i_320 tmp_to_be_used v_conv11_i_273 58;
(*  %67 = lshr i128 %58, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v58_L 58;
split tmpH_h tmpH_l v58_H 58;
shl tmp tmpH_l 6;
add v67_L tmp tmpL_h;
mov v67_H tmpH_h;
(*  %and93.i.322 = trunc i128 %67 to i64 *)
mov v_and93_i_322 v67_L;
(*  %shl94.i.323 = and i64 %and93.i.322, 288230376151711680 *)
(* You may need to modify here *)
and v_shl94_i_323 v_and93_i_322 0x3FFFFFFFFFFFFC0;
(*  %add84.i.319 = add nuw nsw i64 %shr87.i.320, %shr82.i.318 *)
add v_add84_i_319 v_shr87_i_320 v_shr82_i_318;
(*  %add89.i.321 = add nuw nsw i64 %add84.i.319, %and16.i.278 *)
add v_add89_i_321 v_add84_i_319 v_and16_i_278;
(*  %add96.i.324 = add nuw nsw i64 %add89.i.321, %shl94.i.323 *)
add v_add96_i_324 v_add89_i_321 v_shl94_i_323;
(*  store i64 %add96.i.324, i64* %arrayidx17.i.279, align 16, !tbaa !2 *)
mov L3_32 v_add96_i_324;
(*  %shr98.i.325 = lshr i128 %58, 116 *)
(* You may need to modify here *)
split v_shr98_i_325_L tmp_to_be_used v58_H 52;
mov v_shr98_i_325_H 0;
(*  %shr100.i.326 = trunc i128 %shr98.i.325 to i64 *)
mov v_shr100_i_326 v_shr98_i_325_L;
(*  %shr105.i.328 = lshr i64 %conv15.i.277, 58 *)
(* You may need to modify here *)
split v_shr105_i_328 tmp_to_be_used v_conv15_i_277 58;
(*  %68 = lshr i128 %59, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v59_L 58;
split tmpH_h tmpH_l v59_H 58;
shl tmp tmpH_l 6;
add v68_L tmp tmpL_h;
mov v68_H tmpH_h;
(*  %and111.i.330 = trunc i128 %68 to i64 *)
mov v_and111_i_330 v68_L;
(*  %shl112.i.331 = and i64 %and111.i.330, 288230376151711680 *)
(* You may need to modify here *)
and v_shl112_i_331 v_and111_i_330 0x3FFFFFFFFFFFFC0;
(*  %add102.i.327 = add nuw nsw i64 %shr105.i.328, %shr100.i.326 *)
add v_add102_i_327 v_shr105_i_328 v_shr100_i_326;
(*  %add107.i.329 = add nuw nsw i64 %add102.i.327, %and20.i.282 *)
add v_add107_i_329 v_add102_i_327 v_and20_i_282;
(*  %add114.i.332 = add nuw nsw i64 %add107.i.329, %shl112.i.331 *)
add v_add114_i_332 v_add107_i_329 v_shl112_i_331;
(*  store i64 %add114.i.332, i64* %arrayidx21.i.283, align 8, !tbaa !2 *)
mov L3_40 v_add114_i_332;
(*  %shr116.i.333 = lshr i128 %59, 116 *)
(* You may need to modify here *)
split v_shr116_i_333_L tmp_to_be_used v59_H 52;
mov v_shr116_i_333_H 0;
(*  %shr118.i.334 = trunc i128 %shr116.i.333 to i64 *)
mov v_shr118_i_334 v_shr116_i_333_L;
(*  %shr123.i.336 = lshr i64 %conv19.i.281, 58 *)
(* You may need to modify here *)
split v_shr123_i_336 tmp_to_be_used v_conv19_i_281 58;
(*  %69 = lshr i128 %60, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v60_L 58;
split tmpH_h tmpH_l v60_H 58;
shl tmp tmpH_l 6;
add v69_L tmp tmpL_h;
mov v69_H tmpH_h;
(*  %and129.i.338 = trunc i128 %69 to i64 *)
mov v_and129_i_338 v69_L;
(*  %shl130.i.339 = and i64 %and129.i.338, 288230376151711680 *)
(* You may need to modify here *)
and v_shl130_i_339 v_and129_i_338 0x3FFFFFFFFFFFFC0;
(*  %add120.i.335 = add nuw nsw i64 %shr123.i.336, %shr118.i.334 *)
add v_add120_i_335 v_shr123_i_336 v_shr118_i_334;
(*  %add125.i.337 = add nuw nsw i64 %add120.i.335, %and24.i.286 *)
add v_add125_i_337 v_add120_i_335 v_and24_i_286;
(*  %add132.i.340 = add nuw nsw i64 %add125.i.337, %shl130.i.339 *)
add v_add132_i_340 v_add125_i_337 v_shl130_i_339;
(*  store i64 %add132.i.340, i64* %arrayidx25.i.287, align 16, !tbaa !2 *)
mov L3_48 v_add132_i_340;
(*  %shr134.i.341 = lshr i128 %60, 116 *)
(* You may need to modify here *)
split v_shr134_i_341_L tmp_to_be_used v60_H 52;
mov v_shr134_i_341_H 0;
(*  %shr136.i.342 = trunc i128 %shr134.i.341 to i64 *)
mov v_shr136_i_342 v_shr134_i_341_L;
(*  %shr141.i.344 = lshr i64 %conv23.i.285, 58 *)
(* You may need to modify here *)
split v_shr141_i_344 tmp_to_be_used v_conv23_i_285 58;
(*  %70 = lshr i128 %61, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v61_L 58;
split tmpH_h tmpH_l v61_H 58;
shl tmp tmpH_l 6;
add v70_L tmp tmpL_h;
mov v70_H tmpH_h;
(*  %and147.i.346 = trunc i128 %70 to i64 *)
mov v_and147_i_346 v70_L;
(*  %shl148.i.347 = and i64 %and147.i.346, 288230376151711680 *)
(* You may need to modify here *)
and v_shl148_i_347 v_and147_i_346 0x3FFFFFFFFFFFFC0;
(*  %add138.i.343 = add nuw nsw i64 %shr141.i.344, %shr136.i.342 *)
add v_add138_i_343 v_shr141_i_344 v_shr136_i_342;
(*  %add143.i.345 = add nuw nsw i64 %add138.i.343, %and28.i.290 *)
add v_add143_i_345 v_add138_i_343 v_and28_i_290;
(*  %add150.i.348 = add nuw nsw i64 %add143.i.345, %shl148.i.347 *)
add v_add150_i_348 v_add143_i_345 v_shl148_i_347;
(*  store i64 %add150.i.348, i64* %arrayidx29.i.291, align 8, !tbaa !2 *)
mov L3_56 v_add150_i_348;
(*  %shr152.i.349 = lshr i128 %61, 116 *)
(* You may need to modify here *)
split v_shr152_i_349_L tmp_to_be_used v61_H 52;
mov v_shr152_i_349_H 0;
(*  %shr154.i.350 = trunc i128 %shr152.i.349 to i64 *)
mov v_shr154_i_350 v_shr152_i_349_L;
(*  %shr159.i.352 = lshr i64 %conv27.i.289, 58 *)
(* You may need to modify here *)
split v_shr159_i_352 tmp_to_be_used v_conv27_i_289 58;
(*  %71 = lshr i128 %62, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v62_L 58;
split tmpH_h tmpH_l v62_H 58;
shl tmp tmpH_l 6;
add v71_L tmp tmpL_h;
mov v71_H tmpH_h;
(*  %and165.i.354 = trunc i128 %71 to i64 *)
mov v_and165_i_354 v71_L;
(*  %shl166.i.355 = and i64 %and165.i.354, 288230376151711680 *)
(* You may need to modify here *)
and v_shl166_i_355 v_and165_i_354 0x3FFFFFFFFFFFFC0;
(*  %add156.i.351 = add nuw nsw i64 %shr159.i.352, %shr154.i.350 *)
add v_add156_i_351 v_shr159_i_352 v_shr154_i_350;
(*  %add161.i.353 = add nuw nsw i64 %add156.i.351, %and32.i.294 *)
add v_add161_i_353 v_add156_i_351 v_and32_i_294;
(*  %add168.i.356 = add nuw nsw i64 %add161.i.353, %shl166.i.355 *)
add v_add168_i_356 v_add161_i_353 v_shl166_i_355;
(*  store i64 %add168.i.356, i64* %arrayidx33.i.295, align 16, !tbaa !2 *)
mov L3_64 v_add168_i_356;
(*  %shr170.i.357 = lshr i128 %62, 116 *)
(* You may need to modify here *)
split v_shr170_i_357_L tmp_to_be_used v62_H 52;
mov v_shr170_i_357_H 0;
(*  %shr172.i.358 = trunc i128 %shr170.i.357 to i64 *)
mov v_shr172_i_358 v_shr170_i_357_L;
(*  %shr175.i.360 = lshr i64 %conv31.i.293, 58 *)
(* You may need to modify here *)
split v_shr175_i_360 tmp_to_be_used v_conv31_i_293 58;
(*  %add176.i.361 = add nuw nsw i64 %shr175.i.360, %shr172.i.358 *)
add v_add176_i_361 v_shr175_i_360 v_shr172_i_358;
(*  %72 = lshr i128 %63, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v63_L 58;
split tmpH_h tmpH_l v63_H 58;
shl tmp tmpH_l 6;
add v72_L tmp tmpL_h;
mov v72_H tmpH_h;
(*  %and180.i.362 = trunc i128 %72 to i64 *)
mov v_and180_i_362 v72_L;
(*  %shl181.i.363 = and i64 %and180.i.362, 288230376151711680 *)
(* You may need to modify here *)
and v_shl181_i_363 v_and180_i_362 0x3FFFFFFFFFFFFC0;
(*  %add182.i.364 = add nuw nsw i64 %add176.i.361, %shl181.i.363 *)
add v_add182_i_364 v_add176_i_361 v_shl181_i_363;
(*  %shl187.i.365 = shl nuw nsw i64 %add182.i.364, 1 *)
shl v_shl187_i_365 v_add182_i_364 1;
(*  %73 = lshr i128 %63, 115 *)
(* You may need to modify here *)
split v73_L tmp_to_be_used v63_H 51;
mov v73_H 0;
(*  %.tr.i.366 = trunc i128 %73 to i64 *)
mov v__tr_i_366 v73_L;
(*  %shl188.i.367 = and i64 %.tr.i.366, 8190 *)
(* You may need to modify here *)
and v_shl188_i_367 v__tr_i_366 0x1FFE;
(*  %74 = load i64, i64* %arraydecay18, align 16, !tbaa !2 *)
mov v74 L3_0;
(*  %add190.i.368 = add i64 %shl187.i.365, %74 *)
add v_add190_i_368 v_shl187_i_365 v74;
(*  %add192.i.369 = add nuw nsw i64 %shl188.i.367, %add42.i.300 *)
add v_add192_i_369 v_shl188_i_367 v_add42_i_300;
(*  %shr194.i.370 = lshr i64 %add190.i.368, 58 *)
(* You may need to modify here *)
split v_shr194_i_370 tmp_to_be_used v_add190_i_368 58;
(*  %add196.i.371 = add nuw nsw i64 %add192.i.369, %shr194.i.370 *)
add v_add196_i_371 v_add192_i_369 v_shr194_i_370;
(*  store i64 %add196.i.371, i64* %arrayidx5.i.267, align 8, !tbaa !2 *)
mov L3_8 v_add196_i_371;
(*  %and198.i.372 = and i64 %add190.i.368, 288230376151711743 *)
(* You may need to modify here *)
and v_and198_i_372 v_add190_i_368 0x3FFFFFFFFFFFFFF;
(*  store i64 %and198.i.372, i64* %arraydecay18, align 16, !tbaa !2 *)
mov L3_0 v_and198_i_372;
(*  %sub.i.392 = sub nsw i64 4611686018427387872, %and198.i *)
sub v_sub_i_392 4611686018427387872 v_and198_i;
(*  %75 = load i64, i64* %arraydecay, align 16, !tbaa !2 *)
mov v75 L5_0;
(*  %add.i.393 = add i64 %sub.i.392, %75 *)
add v_add_i_393 v_sub_i_392 v75;
(*  store i64 %add.i.393, i64* %arraydecay, align 16, !tbaa !2 *)
mov L5_0 v_add_i_393;
(*  %sub3.i.395 = sub nsw i64 4611686018427387888, %add196.i *)
sub v_sub3_i_395 4611686018427387888 v_add196_i;
(*  %76 = load i64, i64* %arrayidx3.i, align 8, !tbaa !2 *)
mov v76 L5_8;
(*  %add5.i.397 = add i64 %sub3.i.395, %76 *)
add v_add5_i_397 v_sub3_i_395 v76;
(*  store i64 %add5.i.397, i64* %arrayidx3.i, align 8, !tbaa !2 *)
mov L5_8 v_add5_i_397;
(*  %sub7.i.399 = sub nsw i64 4611686018427387888, %add60.i *)
sub v_sub7_i_399 4611686018427387888 v_add60_i;
(*  %77 = load i64, i64* %arrayidx5.i, align 16, !tbaa !2 *)
mov v77 L5_16;
(*  %add9.i.401 = add i64 %sub7.i.399, %77 *)
add v_add9_i_401 v_sub7_i_399 v77;
(*  store i64 %add9.i.401, i64* %arrayidx5.i, align 16, !tbaa !2 *)
mov L5_16 v_add9_i_401;
(*  %sub11.i.403 = sub nsw i64 4611686018427387888, %add78.i *)
sub v_sub11_i_403 4611686018427387888 v_add78_i;
(*  %78 = load i64, i64* %arrayidx7.i, align 8, !tbaa !2 *)
mov v78 L5_24;
(*  %add13.i.405 = add i64 %sub11.i.403, %78 *)
add v_add13_i_405 v_sub11_i_403 v78;
(*  store i64 %add13.i.405, i64* %arrayidx7.i, align 8, !tbaa !2 *)
mov L5_24 v_add13_i_405;
(*  %sub15.i.407 = sub nsw i64 4611686018427387888, %add96.i *)
sub v_sub15_i_407 4611686018427387888 v_add96_i;
(*  %79 = load i64, i64* %arrayidx9.i, align 16, !tbaa !2 *)
mov v79 L5_32;
(*  %add17.i.409 = add i64 %sub15.i.407, %79 *)
add v_add17_i_409 v_sub15_i_407 v79;
(*  store i64 %add17.i.409, i64* %arrayidx9.i, align 16, !tbaa !2 *)
mov L5_32 v_add17_i_409;
(*  %sub19.i.411 = sub nsw i64 4611686018427387888, %add114.i *)
sub v_sub19_i_411 4611686018427387888 v_add114_i;
(*  %80 = load i64, i64* %arrayidx11.i, align 8, !tbaa !2 *)
mov v80 L5_40;
(*  %add21.i.413 = add i64 %sub19.i.411, %80 *)
add v_add21_i_413 v_sub19_i_411 v80;
(*  store i64 %add21.i.413, i64* %arrayidx11.i, align 8, !tbaa !2 *)
mov L5_40 v_add21_i_413;
(*  %sub23.i.415 = sub nsw i64 4611686018427387888, %add132.i *)
sub v_sub23_i_415 4611686018427387888 v_add132_i;
(*  %81 = load i64, i64* %arrayidx13.i, align 16, !tbaa !2 *)
mov v81 L5_48;
(*  %add25.i.417 = add i64 %sub23.i.415, %81 *)
add v_add25_i_417 v_sub23_i_415 v81;
(*  store i64 %add25.i.417, i64* %arrayidx13.i, align 16, !tbaa !2 *)
mov L5_48 v_add25_i_417;
(*  %sub27.i.419 = sub nsw i64 4611686018427387888, %add150.i *)
sub v_sub27_i_419 4611686018427387888 v_add150_i;
(*  %82 = load i64, i64* %arrayidx15.i, align 8, !tbaa !2 *)
mov v82 L5_56;
(*  %add29.i.421 = add i64 %sub27.i.419, %82 *)
add v_add29_i_421 v_sub27_i_419 v82;
(*  store i64 %add29.i.421, i64* %arrayidx15.i, align 8, !tbaa !2 *)
mov L5_56 v_add29_i_421;
(*  %sub31.i.423 = sub nsw i64 4611686018427387888, %add168.i *)
sub v_sub31_i_423 4611686018427387888 v_add168_i;
(*  %83 = load i64, i64* %arrayidx17.i, align 16, !tbaa !2 *)
mov v83 L5_64;
(*  %add33.i.425 = add i64 %sub31.i.423, %83 *)
add v_add33_i_425 v_sub31_i_423 v83;
(*  store i64 %add33.i.425, i64* %arrayidx17.i, align 16, !tbaa !2 *)
mov L5_64 v_add33_i_425;
(*  %84 = load i64, i64* %arraydecay9, align 16, !tbaa !2 *)
mov v84 L6_0;
(*  %add.i.487 = add i64 %84, %and198.i *)
add v_add_i_487 v84 v_and198_i;
(*  %85 = load i64, i64* %arrayidx3.i.64, align 8, !tbaa !2 *)
mov v85 L6_8;
(*  %add4.i.490 = add i64 %85, %add196.i *)
add v_add4_i_490 v85 v_add196_i;
(*  %86 = load i64, i64* %arrayidx5.i.66, align 16, !tbaa !2 *)
mov v86 L6_16;
(*  %add7.i.493 = add i64 %86, %add60.i *)
add v_add7_i_493 v86 v_add60_i;
(*  %87 = load i64, i64* %arrayidx7.i.68, align 8, !tbaa !2 *)
mov v87 L6_24;
(*  %add10.i.496 = add i64 %87, %add78.i *)
add v_add10_i_496 v87 v_add78_i;
(*  %88 = load i64, i64* %arrayidx9.i.70, align 16, !tbaa !2 *)
mov v88 L6_32;
(*  %add13.i.499 = add i64 %88, %add96.i *)
add v_add13_i_499 v88 v_add96_i;
(*  %89 = load i64, i64* %arrayidx11.i.72, align 8, !tbaa !2 *)
mov v89 L6_40;
(*  %add16.i.502 = add i64 %89, %add114.i *)
add v_add16_i_502 v89 v_add114_i;
(*  %90 = load i64, i64* %arrayidx13.i.74, align 16, !tbaa !2 *)
mov v90 L6_48;
(*  %add19.i.505 = add i64 %90, %add132.i *)
add v_add19_i_505 v90 v_add132_i;
(*  %91 = load i64, i64* %arrayidx15.i.76, align 8, !tbaa !2 *)
mov v91 L6_56;
(*  %add22.i.508 = add i64 %91, %add150.i *)
add v_add22_i_508 v91 v_add150_i;
(*  %92 = load i64, i64* %arrayidx17.i.78, align 16, !tbaa !2 *)
mov v92 L6_64;
(*  %add25.i.511 = add i64 %92, %add168.i *)
add v_add25_i_511 v92 v_add168_i;
(*  %mul.i.588 = mul i64 %add.i.487, 3 *)
mul v_mul_i_588 v_add_i_487 3;
(*  store i64 %mul.i.588, i64* %arraydecay9, align 16, !tbaa !2 *)
mov L6_0 v_mul_i_588;
(*  %mul2.i.590 = mul i64 %add4.i.490, 3 *)
mul v_mul2_i_590 v_add4_i_490 3;
(*  store i64 %mul2.i.590, i64* %arrayidx3.i.64, align 8, !tbaa !2 *)
mov L6_8 v_mul2_i_590;
(*  %mul4.i.592 = mul i64 %add7.i.493, 3 *)
mul v_mul4_i_592 v_add7_i_493 3;
(*  store i64 %mul4.i.592, i64* %arrayidx5.i.66, align 16, !tbaa !2 *)
mov L6_16 v_mul4_i_592;
(*  %mul6.i.594 = mul i64 %add10.i.496, 3 *)
mul v_mul6_i_594 v_add10_i_496 3;
(*  store i64 %mul6.i.594, i64* %arrayidx7.i.68, align 8, !tbaa !2 *)
mov L6_24 v_mul6_i_594;
(*  %mul8.i.596 = mul i64 %add13.i.499, 3 *)
mul v_mul8_i_596 v_add13_i_499 3;
(*  store i64 %mul8.i.596, i64* %arrayidx9.i.70, align 16, !tbaa !2 *)
mov L6_32 v_mul8_i_596;
(*  %mul10.i.598 = mul i64 %add16.i.502, 3 *)
mul v_mul10_i_598 v_add16_i_502 3;
(*  store i64 %mul10.i.598, i64* %arrayidx11.i.72, align 8, !tbaa !2 *)
mov L6_40 v_mul10_i_598;
(*  %mul12.i.600 = mul i64 %add19.i.505, 3 *)
mul v_mul12_i_600 v_add19_i_505 3;
(*  store i64 %mul12.i.600, i64* %arrayidx13.i.74, align 16, !tbaa !2 *)
mov L6_48 v_mul12_i_600;
(*  %mul14.i.602 = mul i64 %add22.i.508, 3 *)
mul v_mul14_i_602 v_add22_i_508 3;
(*  store i64 %mul14.i.602, i64* %arrayidx15.i.76, align 8, !tbaa !2 *)
mov L6_56 v_mul14_i_602;
(*  %mul16.i.604 = mul i64 %add25.i.511, 3 *)
mul v_mul16_i_604 v_add25_i_511 3;
(*  store i64 %mul16.i.604, i64* %arrayidx17.i.78, align 16, !tbaa !2 *)
mov L6_64 v_mul16_i_604;
(*  call fastcc void @felem_mul(i128* %arraydecay10, i64* %arraydecay, i64* %arraydecay9) *)
call felem_mul(L5_0, L5_8, L5_16, L5_24, L5_32, L5_40, L5_48, L5_56, L5_64, L6_0, L6_8, L6_16, L6_24, L6_32, L6_40, L6_48, L6_56, L6_64, L0_0, L0_8, L0_16, L0_24, L0_32, L0_40, L0_48, L0_56, L0_64, L0_72, L0_80, L0_88, L0_96, L0_104, L0_112, L0_120, L0_128, L0_136);
(*  %arraydecay28 = getelementptr inbounds [9 x i64], [9 x i64]* %alpha, i64 0, i64 0 *)
(*  %93 = load i128, i128* %arraydecay10, align 16, !tbaa !6 *)
mov v93_L L0_0;
mov v93_H L0_8;
(*  %conv.i.605 = trunc i128 %93 to i64 *)
mov v_conv_i_605 v93_L;
(*  %and.i.606 = and i64 %conv.i.605, 288230376151711743 *)
(* You may need to modify here *)
and v_and_i_606 v_conv_i_605 0x3FFFFFFFFFFFFFF;
(*  store i64 %and.i.606, i64* %arraydecay28, align 16, !tbaa !2 *)
mov L4_0 v_and_i_606;
(*  %94 = load i128, i128* %arrayidx2.i.94, align 16, !tbaa !6 *)
mov v94_L L0_16;
mov v94_H L0_24;
(*  %conv3.i.608 = trunc i128 %94 to i64 *)
mov v_conv3_i_608 v94_L;
(*  %and4.i.609 = and i64 %conv3.i.608, 288230376151711743 *)
(* You may need to modify here *)
and v_and4_i_609 v_conv3_i_608 0x3FFFFFFFFFFFFFF;
(*  %arrayidx5.i.610 = getelementptr inbounds [9 x i64], [9 x i64]* %alpha, i64 0, i64 1 *)
(*  %95 = load i128, i128* %arrayidx6.i.96, align 16, !tbaa !6 *)
mov v95_L L0_32;
mov v95_H L0_40;
(*  %conv7.i.612 = trunc i128 %95 to i64 *)
mov v_conv7_i_612 v95_L;
(*  %and8.i.613 = and i64 %conv7.i.612, 288230376151711743 *)
(* You may need to modify here *)
and v_and8_i_613 v_conv7_i_612 0x3FFFFFFFFFFFFFF;
(*  %arrayidx9.i.614 = getelementptr inbounds [9 x i64], [9 x i64]* %alpha, i64 0, i64 2 *)
(*  %96 = load i128, i128* %arrayidx10.i.98, align 16, !tbaa !6 *)
mov v96_L L0_48;
mov v96_H L0_56;
(*  %conv11.i.616 = trunc i128 %96 to i64 *)
mov v_conv11_i_616 v96_L;
(*  %and12.i.617 = and i64 %conv11.i.616, 288230376151711743 *)
(* You may need to modify here *)
and v_and12_i_617 v_conv11_i_616 0x3FFFFFFFFFFFFFF;
(*  %arrayidx13.i.618 = getelementptr inbounds [9 x i64], [9 x i64]* %alpha, i64 0, i64 3 *)
(*  %97 = load i128, i128* %arrayidx14.i.100, align 16, !tbaa !6 *)
mov v97_L L0_64;
mov v97_H L0_72;
(*  %conv15.i.620 = trunc i128 %97 to i64 *)
mov v_conv15_i_620 v97_L;
(*  %and16.i.621 = and i64 %conv15.i.620, 288230376151711743 *)
(* You may need to modify here *)
and v_and16_i_621 v_conv15_i_620 0x3FFFFFFFFFFFFFF;
(*  %arrayidx17.i.622 = getelementptr inbounds [9 x i64], [9 x i64]* %alpha, i64 0, i64 4 *)
(*  %98 = load i128, i128* %arrayidx18.i.102, align 16, !tbaa !6 *)
mov v98_L L0_80;
mov v98_H L0_88;
(*  %conv19.i.624 = trunc i128 %98 to i64 *)
mov v_conv19_i_624 v98_L;
(*  %and20.i.625 = and i64 %conv19.i.624, 288230376151711743 *)
(* You may need to modify here *)
and v_and20_i_625 v_conv19_i_624 0x3FFFFFFFFFFFFFF;
(*  %arrayidx21.i.626 = getelementptr inbounds [9 x i64], [9 x i64]* %alpha, i64 0, i64 5 *)
(*  %99 = load i128, i128* %arrayidx22.i.103, align 16, !tbaa !6 *)
mov v99_L L0_96;
mov v99_H L0_104;
(*  %conv23.i.628 = trunc i128 %99 to i64 *)
mov v_conv23_i_628 v99_L;
(*  %and24.i.629 = and i64 %conv23.i.628, 288230376151711743 *)
(* You may need to modify here *)
and v_and24_i_629 v_conv23_i_628 0x3FFFFFFFFFFFFFF;
(*  %arrayidx25.i.630 = getelementptr inbounds [9 x i64], [9 x i64]* %alpha, i64 0, i64 6 *)
(*  %100 = load i128, i128* %arrayidx26.i.104, align 16, !tbaa !6 *)
mov v100_L L0_112;
mov v100_H L0_120;
(*  %conv27.i.632 = trunc i128 %100 to i64 *)
mov v_conv27_i_632 v100_L;
(*  %and28.i.633 = and i64 %conv27.i.632, 288230376151711743 *)
(* You may need to modify here *)
and v_and28_i_633 v_conv27_i_632 0x3FFFFFFFFFFFFFF;
(*  %arrayidx29.i.634 = getelementptr inbounds [9 x i64], [9 x i64]* %alpha, i64 0, i64 7 *)
(*  %101 = load i128, i128* %arrayidx30.i.105, align 16, !tbaa !6 *)
mov v101_L L0_128;
mov v101_H L0_136;
(*  %conv31.i.636 = trunc i128 %101 to i64 *)
mov v_conv31_i_636 v101_L;
(*  %and32.i.637 = and i64 %conv31.i.636, 288230376151711743 *)
(* You may need to modify here *)
and v_and32_i_637 v_conv31_i_636 0x3FFFFFFFFFFFFFF;
(*  %arrayidx33.i.638 = getelementptr inbounds [9 x i64], [9 x i64]* %alpha, i64 0, i64 8 *)
(*  %shr.i.639 = lshr i64 %conv.i.605, 58 *)
(* You may need to modify here *)
split v_shr_i_639 tmp_to_be_used v_conv_i_605 58;
(*  %add.i.640 = add nuw nsw i64 %and4.i.609, %shr.i.639 *)
add v_add_i_640 v_and4_i_609 v_shr_i_639;
(*  %102 = lshr i128 %93, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v93_L 58;
split tmpH_h tmpH_l v93_H 58;
shl tmp tmpH_l 6;
add v102_L tmp tmpL_h;
mov v102_H tmpH_h;
(*  %and40.i.641 = trunc i128 %102 to i64 *)
mov v_and40_i_641 v102_L;
(*  %shl.i.642 = and i64 %and40.i.641, 288230376151711680 *)
(* You may need to modify here *)
and v_shl_i_642 v_and40_i_641 0x3FFFFFFFFFFFFC0;
(*  %add42.i.643 = add nuw nsw i64 %add.i.640, %shl.i.642 *)
add v_add42_i_643 v_add_i_640 v_shl_i_642;
(*  %shr44.i.644 = lshr i128 %93, 116 *)
(* You may need to modify here *)
split v_shr44_i_644_L tmp_to_be_used v93_H 52;
mov v_shr44_i_644_H 0;
(*  %shr46.i.645 = trunc i128 %shr44.i.644 to i64 *)
mov v_shr46_i_645 v_shr44_i_644_L;
(*  %shr51.i.647 = lshr i64 %conv3.i.608, 58 *)
(* You may need to modify here *)
split v_shr51_i_647 tmp_to_be_used v_conv3_i_608 58;
(*  %103 = lshr i128 %94, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v94_L 58;
split tmpH_h tmpH_l v94_H 58;
shl tmp tmpH_l 6;
add v103_L tmp tmpL_h;
mov v103_H tmpH_h;
(*  %and57.i.649 = trunc i128 %103 to i64 *)
mov v_and57_i_649 v103_L;
(*  %shl58.i.650 = and i64 %and57.i.649, 288230376151711680 *)
(* You may need to modify here *)
and v_shl58_i_650 v_and57_i_649 0x3FFFFFFFFFFFFC0;
(*  %add48.i.646 = add nuw nsw i64 %shr51.i.647, %shr46.i.645 *)
add v_add48_i_646 v_shr51_i_647 v_shr46_i_645;
(*  %add53.i.648 = add nuw nsw i64 %add48.i.646, %and8.i.613 *)
add v_add53_i_648 v_add48_i_646 v_and8_i_613;
(*  %add60.i.651 = add nuw nsw i64 %add53.i.648, %shl58.i.650 *)
add v_add60_i_651 v_add53_i_648 v_shl58_i_650;
(*  store i64 %add60.i.651, i64* %arrayidx9.i.614, align 16, !tbaa !2 *)
mov L4_16 v_add60_i_651;
(*  %shr62.i.652 = lshr i128 %94, 116 *)
(* You may need to modify here *)
split v_shr62_i_652_L tmp_to_be_used v94_H 52;
mov v_shr62_i_652_H 0;
(*  %shr64.i.653 = trunc i128 %shr62.i.652 to i64 *)
mov v_shr64_i_653 v_shr62_i_652_L;
(*  %shr69.i.655 = lshr i64 %conv7.i.612, 58 *)
(* You may need to modify here *)
split v_shr69_i_655 tmp_to_be_used v_conv7_i_612 58;
(*  %104 = lshr i128 %95, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v95_L 58;
split tmpH_h tmpH_l v95_H 58;
shl tmp tmpH_l 6;
add v104_L tmp tmpL_h;
mov v104_H tmpH_h;
(*  %and75.i.657 = trunc i128 %104 to i64 *)
mov v_and75_i_657 v104_L;
(*  %shl76.i.658 = and i64 %and75.i.657, 288230376151711680 *)
(* You may need to modify here *)
and v_shl76_i_658 v_and75_i_657 0x3FFFFFFFFFFFFC0;
(*  %add66.i.654 = add nuw nsw i64 %shr69.i.655, %shr64.i.653 *)
add v_add66_i_654 v_shr69_i_655 v_shr64_i_653;
(*  %add71.i.656 = add nuw nsw i64 %add66.i.654, %and12.i.617 *)
add v_add71_i_656 v_add66_i_654 v_and12_i_617;
(*  %add78.i.659 = add nuw nsw i64 %add71.i.656, %shl76.i.658 *)
add v_add78_i_659 v_add71_i_656 v_shl76_i_658;
(*  store i64 %add78.i.659, i64* %arrayidx13.i.618, align 8, !tbaa !2 *)
mov L4_24 v_add78_i_659;
(*  %shr80.i.660 = lshr i128 %95, 116 *)
(* You may need to modify here *)
split v_shr80_i_660_L tmp_to_be_used v95_H 52;
mov v_shr80_i_660_H 0;
(*  %shr82.i.661 = trunc i128 %shr80.i.660 to i64 *)
mov v_shr82_i_661 v_shr80_i_660_L;
(*  %shr87.i.663 = lshr i64 %conv11.i.616, 58 *)
(* You may need to modify here *)
split v_shr87_i_663 tmp_to_be_used v_conv11_i_616 58;
(*  %105 = lshr i128 %96, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v96_L 58;
split tmpH_h tmpH_l v96_H 58;
shl tmp tmpH_l 6;
add v105_L tmp tmpL_h;
mov v105_H tmpH_h;
(*  %and93.i.665 = trunc i128 %105 to i64 *)
mov v_and93_i_665 v105_L;
(*  %shl94.i.666 = and i64 %and93.i.665, 288230376151711680 *)
(* You may need to modify here *)
and v_shl94_i_666 v_and93_i_665 0x3FFFFFFFFFFFFC0;
(*  %add84.i.662 = add nuw nsw i64 %shr87.i.663, %shr82.i.661 *)
add v_add84_i_662 v_shr87_i_663 v_shr82_i_661;
(*  %add89.i.664 = add nuw nsw i64 %add84.i.662, %and16.i.621 *)
add v_add89_i_664 v_add84_i_662 v_and16_i_621;
(*  %add96.i.667 = add nuw nsw i64 %add89.i.664, %shl94.i.666 *)
add v_add96_i_667 v_add89_i_664 v_shl94_i_666;
(*  store i64 %add96.i.667, i64* %arrayidx17.i.622, align 16, !tbaa !2 *)
mov L4_32 v_add96_i_667;
(*  %shr98.i.668 = lshr i128 %96, 116 *)
(* You may need to modify here *)
split v_shr98_i_668_L tmp_to_be_used v96_H 52;
mov v_shr98_i_668_H 0;
(*  %shr100.i.669 = trunc i128 %shr98.i.668 to i64 *)
mov v_shr100_i_669 v_shr98_i_668_L;
(*  %shr105.i.671 = lshr i64 %conv15.i.620, 58 *)
(* You may need to modify here *)
split v_shr105_i_671 tmp_to_be_used v_conv15_i_620 58;
(*  %106 = lshr i128 %97, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v97_L 58;
split tmpH_h tmpH_l v97_H 58;
shl tmp tmpH_l 6;
add v106_L tmp tmpL_h;
mov v106_H tmpH_h;
(*  %and111.i.673 = trunc i128 %106 to i64 *)
mov v_and111_i_673 v106_L;
(*  %shl112.i.674 = and i64 %and111.i.673, 288230376151711680 *)
(* You may need to modify here *)
and v_shl112_i_674 v_and111_i_673 0x3FFFFFFFFFFFFC0;
(*  %add102.i.670 = add nuw nsw i64 %shr105.i.671, %shr100.i.669 *)
add v_add102_i_670 v_shr105_i_671 v_shr100_i_669;
(*  %add107.i.672 = add nuw nsw i64 %add102.i.670, %and20.i.625 *)
add v_add107_i_672 v_add102_i_670 v_and20_i_625;
(*  %add114.i.675 = add nuw nsw i64 %add107.i.672, %shl112.i.674 *)
add v_add114_i_675 v_add107_i_672 v_shl112_i_674;
(*  store i64 %add114.i.675, i64* %arrayidx21.i.626, align 8, !tbaa !2 *)
mov L4_40 v_add114_i_675;
(*  %shr116.i.676 = lshr i128 %97, 116 *)
(* You may need to modify here *)
split v_shr116_i_676_L tmp_to_be_used v97_H 52;
mov v_shr116_i_676_H 0;
(*  %shr118.i.677 = trunc i128 %shr116.i.676 to i64 *)
mov v_shr118_i_677 v_shr116_i_676_L;
(*  %shr123.i.679 = lshr i64 %conv19.i.624, 58 *)
(* You may need to modify here *)
split v_shr123_i_679 tmp_to_be_used v_conv19_i_624 58;
(*  %107 = lshr i128 %98, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v98_L 58;
split tmpH_h tmpH_l v98_H 58;
shl tmp tmpH_l 6;
add v107_L tmp tmpL_h;
mov v107_H tmpH_h;
(*  %and129.i.681 = trunc i128 %107 to i64 *)
mov v_and129_i_681 v107_L;
(*  %shl130.i.682 = and i64 %and129.i.681, 288230376151711680 *)
(* You may need to modify here *)
and v_shl130_i_682 v_and129_i_681 0x3FFFFFFFFFFFFC0;
(*  %add120.i.678 = add nuw nsw i64 %shr123.i.679, %shr118.i.677 *)
add v_add120_i_678 v_shr123_i_679 v_shr118_i_677;
(*  %add125.i.680 = add nuw nsw i64 %add120.i.678, %and24.i.629 *)
add v_add125_i_680 v_add120_i_678 v_and24_i_629;
(*  %add132.i.683 = add nuw nsw i64 %add125.i.680, %shl130.i.682 *)
add v_add132_i_683 v_add125_i_680 v_shl130_i_682;
(*  store i64 %add132.i.683, i64* %arrayidx25.i.630, align 16, !tbaa !2 *)
mov L4_48 v_add132_i_683;
(*  %shr134.i.684 = lshr i128 %98, 116 *)
(* You may need to modify here *)
split v_shr134_i_684_L tmp_to_be_used v98_H 52;
mov v_shr134_i_684_H 0;
(*  %shr136.i.685 = trunc i128 %shr134.i.684 to i64 *)
mov v_shr136_i_685 v_shr134_i_684_L;
(*  %shr141.i.687 = lshr i64 %conv23.i.628, 58 *)
(* You may need to modify here *)
split v_shr141_i_687 tmp_to_be_used v_conv23_i_628 58;
(*  %108 = lshr i128 %99, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v99_L 58;
split tmpH_h tmpH_l v99_H 58;
shl tmp tmpH_l 6;
add v108_L tmp tmpL_h;
mov v108_H tmpH_h;
(*  %and147.i.689 = trunc i128 %108 to i64 *)
mov v_and147_i_689 v108_L;
(*  %shl148.i.690 = and i64 %and147.i.689, 288230376151711680 *)
(* You may need to modify here *)
and v_shl148_i_690 v_and147_i_689 0x3FFFFFFFFFFFFC0;
(*  %add138.i.686 = add nuw nsw i64 %shr141.i.687, %shr136.i.685 *)
add v_add138_i_686 v_shr141_i_687 v_shr136_i_685;
(*  %add143.i.688 = add nuw nsw i64 %add138.i.686, %and28.i.633 *)
add v_add143_i_688 v_add138_i_686 v_and28_i_633;
(*  %add150.i.691 = add nuw nsw i64 %add143.i.688, %shl148.i.690 *)
add v_add150_i_691 v_add143_i_688 v_shl148_i_690;
(*  store i64 %add150.i.691, i64* %arrayidx29.i.634, align 8, !tbaa !2 *)
mov L4_56 v_add150_i_691;
(*  %shr152.i.692 = lshr i128 %99, 116 *)
(* You may need to modify here *)
split v_shr152_i_692_L tmp_to_be_used v99_H 52;
mov v_shr152_i_692_H 0;
(*  %shr154.i.693 = trunc i128 %shr152.i.692 to i64 *)
mov v_shr154_i_693 v_shr152_i_692_L;
(*  %shr159.i.695 = lshr i64 %conv27.i.632, 58 *)
(* You may need to modify here *)
split v_shr159_i_695 tmp_to_be_used v_conv27_i_632 58;
(*  %109 = lshr i128 %100, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v100_L 58;
split tmpH_h tmpH_l v100_H 58;
shl tmp tmpH_l 6;
add v109_L tmp tmpL_h;
mov v109_H tmpH_h;
(*  %and165.i.697 = trunc i128 %109 to i64 *)
mov v_and165_i_697 v109_L;
(*  %shl166.i.698 = and i64 %and165.i.697, 288230376151711680 *)
(* You may need to modify here *)
and v_shl166_i_698 v_and165_i_697 0x3FFFFFFFFFFFFC0;
(*  %add156.i.694 = add nuw nsw i64 %shr159.i.695, %shr154.i.693 *)
add v_add156_i_694 v_shr159_i_695 v_shr154_i_693;
(*  %add161.i.696 = add nuw nsw i64 %add156.i.694, %and32.i.637 *)
add v_add161_i_696 v_add156_i_694 v_and32_i_637;
(*  %add168.i.699 = add nuw nsw i64 %add161.i.696, %shl166.i.698 *)
add v_add168_i_699 v_add161_i_696 v_shl166_i_698;
(*  store i64 %add168.i.699, i64* %arrayidx33.i.638, align 16, !tbaa !2 *)
mov L4_64 v_add168_i_699;
(*  %shr170.i.700 = lshr i128 %100, 116 *)
(* You may need to modify here *)
split v_shr170_i_700_L tmp_to_be_used v100_H 52;
mov v_shr170_i_700_H 0;
(*  %shr172.i.701 = trunc i128 %shr170.i.700 to i64 *)
mov v_shr172_i_701 v_shr170_i_700_L;
(*  %shr175.i.703 = lshr i64 %conv31.i.636, 58 *)
(* You may need to modify here *)
split v_shr175_i_703 tmp_to_be_used v_conv31_i_636 58;
(*  %add176.i.704 = add nuw nsw i64 %shr175.i.703, %shr172.i.701 *)
add v_add176_i_704 v_shr175_i_703 v_shr172_i_701;
(*  %110 = lshr i128 %101, 58 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v101_L 58;
split tmpH_h tmpH_l v101_H 58;
shl tmp tmpH_l 6;
add v110_L tmp tmpL_h;
mov v110_H tmpH_h;
(*  %and180.i.705 = trunc i128 %110 to i64 *)
mov v_and180_i_705 v110_L;
(*  %shl181.i.706 = and i64 %and180.i.705, 288230376151711680 *)
(* You may need to modify here *)
and v_shl181_i_706 v_and180_i_705 0x3FFFFFFFFFFFFC0;
(*  %add182.i.707 = add nuw nsw i64 %add176.i.704, %shl181.i.706 *)
add v_add182_i_707 v_add176_i_704 v_shl181_i_706;
(*  %shl187.i.708 = shl nuw nsw i64 %add182.i.707, 1 *)
shl v_shl187_i_708 v_add182_i_707 1;
(*  %111 = lshr i128 %101, 115 *)
(* You may need to modify here *)
split v111_L tmp_to_be_used v101_H 51;
mov v111_H 0;
(*  %.tr.i.709 = trunc i128 %111 to i64 *)
mov v__tr_i_709 v111_L;
(*  %shl188.i.710 = and i64 %.tr.i.709, 8190 *)
(* You may need to modify here *)
and v_shl188_i_710 v__tr_i_709 0x1FFE;
(*  %112 = load i64, i64* %arraydecay28, align 16, !tbaa !2 *)
mov v112 L4_0;
(*  %add190.i.711 = add i64 %shl187.i.708, %112 *)
add v_add190_i_711 v_shl187_i_708 v112;
(*  %add192.i.712 = add nuw nsw i64 %shl188.i.710, %add42.i.643 *)
add v_add192_i_712 v_shl188_i_710 v_add42_i_643;
(*  %shr194.i.713 = lshr i64 %add190.i.711, 58 *)
(* You may need to modify here *)
split v_shr194_i_713 tmp_to_be_used v_add190_i_711 58;
(*  %add196.i.714 = add nuw nsw i64 %add192.i.712, %shr194.i.713 *)
add v_add196_i_714 v_add192_i_712 v_shr194_i_713;
(*  store i64 %add196.i.714, i64* %arrayidx5.i.610, align 8, !tbaa !2 *)
mov L4_8 v_add196_i_714;
(*  %and198.i.715 = and i64 %add190.i.711, 288230376151711743 *)
(* You may need to modify here *)
and v_and198_i_715 v_add190_i_711 0x3FFFFFFFFFFFFFF;
(*  store i64 %and198.i.715, i64* %arraydecay28, align 16, !tbaa !2 *)
mov L4_0 v_and198_i_715;
(*  call fastcc void @felem_square(i128* %arraydecay10, i64* %arraydecay28) *)
call felem_square(L4_0, L4_8, L4_16, L4_24, L4_32, L4_40, L4_48, L4_56, L4_64, L0_0, L0_8, L0_16, L0_24, L0_32, L0_40, L0_48, L0_56, L0_64, L0_72, L0_80, L0_88, L0_96, L0_104, L0_112, L0_120, L0_128, L0_136);
(*  %113 = load i64, i64* %arraydecay18, align 16, !tbaa !2 *)
mov v113 L3_0;
(*  %114 = load i64, i64* %arrayidx5.i.267, align 8, !tbaa !2 *)
mov v114 L3_8;
(*  %115 = load i64, i64* %arrayidx9.i.271, align 16, !tbaa !2 *)
mov v115 L3_16;
(*  %116 = load i64, i64* %arrayidx13.i.275, align 8, !tbaa !2 *)
mov v116 L3_24;
(*  %117 = load i64, i64* %arrayidx17.i.279, align 16, !tbaa !2 *)
mov v117 L3_32;
(*  %118 = load i64, i64* %arrayidx21.i.283, align 8, !tbaa !2 *)
mov v118 L3_40;
(*  %119 = load i64, i64* %arrayidx25.i.287, align 16, !tbaa !2 *)
mov v119 L3_48;
(*  %120 = load i64, i64* %arrayidx29.i.291, align 8, !tbaa !2 *)
mov v120 L3_56;
(*  %121 = load i64, i64* %arrayidx33.i.295, align 16, !tbaa !2 *)
mov v121 L3_64;
(*  %mul.i.555 = shl i64 %113, 3 *)
shl v_mul_i_555 v113 3;
(*  %mul2.i.557 = shl i64 %114, 3 *)
shl v_mul2_i_557 v114 3;
(*  %mul4.i.559 = shl i64 %115, 3 *)
shl v_mul4_i_559 v115 3;
(*  %mul6.i.561 = shl i64 %116, 3 *)
shl v_mul6_i_561 v116 3;
(*  %mul8.i.563 = shl i64 %117, 3 *)
shl v_mul8_i_563 v117 3;
(*  %mul10.i.565 = shl i64 %118, 3 *)
shl v_mul10_i_565 v118 3;
(*  %mul12.i.567 = shl i64 %119, 3 *)
shl v_mul12_i_567 v119 3;
(*  %mul14.i.569 = shl i64 %120, 3 *)
shl v_mul14_i_569 v120 3;
(*  %mul16.i.571 = shl i64 %121, 3 *)
shl v_mul16_i_571 v121 3;
(* ================================================== *)
(* ==== here starts the first felem_diff_128_64 ===== *)
(* ================================================== *)
(* assert for ftmp[0] *)
assert true && v_mul_i_555 <= const 64 (2**62) - const 64 (2**5);
(*  %sub.i.512 = sub i64 4611686018427387872, %mul.i.555 *)
sub v_sub_i_512 4611686018427387872 v_mul_i_555;
(*  %conv.i.513 = zext i64 %sub.i.512 to i128 *)
mov v_conv_i_513_L v_sub_i_512;
mov v_conv_i_513_H 0;
(*  %122 = load i128, i128* %arraydecay10, align 16, !tbaa !6 *)
mov v122_L L0_0;
mov v122_H L0_8;
(*  %add.i.514 = add i128 %conv.i.513, %122 *)
adds carry v_add_i_514_L v_conv_i_513_L v122_L;
adc v_add_i_514_H v_conv_i_513_H v122_H carry;
(*  store i128 %add.i.514, i128* %arraydecay10, align 16, !tbaa !6 *)
mov L0_0 v_add_i_514_L;
mov L0_8 v_add_i_514_H;
(* assert for ftmp[1] *)
assert true && v_mul2_i_557 <= const 64 (2**62) - const 64 (2**4);
(*  %sub3.i.516 = sub i64 4611686018427387888, %mul2.i.557 *)
sub v_sub3_i_516 4611686018427387888 v_mul2_i_557;
(*  %conv4.i.517 = zext i64 %sub3.i.516 to i128 *)
mov v_conv4_i_517_L v_sub3_i_516;
mov v_conv4_i_517_H 0;
(*  %123 = load i128, i128* %arrayidx2.i.94, align 16, !tbaa !6 *)
mov v123_L L0_16;
mov v123_H L0_24;
(*  %add6.i.519 = add i128 %conv4.i.517, %123 *)
adds carry v_add6_i_519_L v_conv4_i_517_L v123_L;
adc v_add6_i_519_H v_conv4_i_517_H v123_H carry;
(*  store i128 %add6.i.519, i128* %arrayidx2.i.94, align 16, !tbaa !6 *)
mov L0_16 v_add6_i_519_L;
mov L0_24 v_add6_i_519_H;
(* assert for ftmp[2] *)
assert true && v_mul4_i_559 <= const 64 (2**62) - const 64 (2**4);
(*  %sub8.i.521 = sub i64 4611686018427387888, %mul4.i.559 *)
sub v_sub8_i_521 4611686018427387888 v_mul4_i_559;
(*  %conv9.i.522 = zext i64 %sub8.i.521 to i128 *)
mov v_conv9_i_522_L v_sub8_i_521;
mov v_conv9_i_522_H 0;
(*  %124 = load i128, i128* %arrayidx6.i.96, align 16, !tbaa !6 *)
mov v124_L L0_32;
mov v124_H L0_40;
(*  %add11.i.524 = add i128 %conv9.i.522, %124 *)
adds carry v_add11_i_524_L v_conv9_i_522_L v124_L;
adc v_add11_i_524_H v_conv9_i_522_H v124_H carry;
(*  store i128 %add11.i.524, i128* %arrayidx6.i.96, align 16, !tbaa !6 *)
mov L0_32 v_add11_i_524_L;
mov L0_40 v_add11_i_524_H;
(* assert for ftmp[3] *)
assert true && v_mul6_i_561 <= const 64 (2**62) - const 64 (2**4);
(*  %sub13.i.526 = sub i64 4611686018427387888, %mul6.i.561 *)
sub v_sub13_i_526 4611686018427387888 v_mul6_i_561;
(*  %conv14.i.527 = zext i64 %sub13.i.526 to i128 *)
mov v_conv14_i_527_L v_sub13_i_526;
mov v_conv14_i_527_H 0;
(*  %125 = load i128, i128* %arrayidx10.i.98, align 16, !tbaa !6 *)
mov v125_L L0_48;
mov v125_H L0_56;
(*  %add16.i.529 = add i128 %conv14.i.527, %125 *)
adds carry v_add16_i_529_L v_conv14_i_527_L v125_L;
adc v_add16_i_529_H v_conv14_i_527_H v125_H carry;
(*  store i128 %add16.i.529, i128* %arrayidx10.i.98, align 16, !tbaa !6 *)
mov L0_48 v_add16_i_529_L;
mov L0_56 v_add16_i_529_H;
(* assert for ftmp[4] *)
assert true && v_mul8_i_563 <= const 64 (2**62) - const 64 (2**4);
(*  %sub18.i.531 = sub i64 4611686018427387888, %mul8.i.563 *)
sub v_sub18_i_531 4611686018427387888 v_mul8_i_563;
(*  %conv19.i.532 = zext i64 %sub18.i.531 to i128 *)
mov v_conv19_i_532_L v_sub18_i_531;
mov v_conv19_i_532_H 0;
(*  %126 = load i128, i128* %arrayidx14.i.100, align 16, !tbaa !6 *)
mov v126_L L0_64;
mov v126_H L0_72;
(*  %add21.i.534 = add i128 %conv19.i.532, %126 *)
adds carry v_add21_i_534_L v_conv19_i_532_L v126_L;
adc v_add21_i_534_H v_conv19_i_532_H v126_H carry;
(*  store i128 %add21.i.534, i128* %arrayidx14.i.100, align 16, !tbaa !6 *)
mov L0_64 v_add21_i_534_L;
mov L0_72 v_add21_i_534_H;
(* assert for ftmp[5] *)
assert true && v_mul10_i_565 <= const 64 (2**62) - const 64 (2**4);
(*  %sub23.i.536 = sub i64 4611686018427387888, %mul10.i.565 *)
sub v_sub23_i_536 4611686018427387888 v_mul10_i_565;
(*  %conv24.i.537 = zext i64 %sub23.i.536 to i128 *)
mov v_conv24_i_537_L v_sub23_i_536;
mov v_conv24_i_537_H 0;
(*  %127 = load i128, i128* %arrayidx18.i.102, align 16, !tbaa !6 *)
mov v127_L L0_80;
mov v127_H L0_88;
(*  %add26.i.539 = add i128 %conv24.i.537, %127 *)
adds carry v_add26_i_539_L v_conv24_i_537_L v127_L;
adc v_add26_i_539_H v_conv24_i_537_H v127_H carry;
(*  store i128 %add26.i.539, i128* %arrayidx18.i.102, align 16, !tbaa !6 *)
mov L0_80 v_add26_i_539_L;
mov L0_88 v_add26_i_539_H;
(* assert for ftmp[6] *)
assert true && v_mul12_i_567 <= const 64 (2**62) - const 64 (2**4);
(*  %sub28.i.541 = sub i64 4611686018427387888, %mul12.i.567 *)
sub v_sub28_i_541 4611686018427387888 v_mul12_i_567;
(*  %conv29.i.542 = zext i64 %sub28.i.541 to i128 *)
mov v_conv29_i_542_L v_sub28_i_541;
mov v_conv29_i_542_H 0;
(*  %128 = load i128, i128* %arrayidx22.i.103, align 16, !tbaa !6 *)
mov v128_L L0_96;
mov v128_H L0_104;
(*  %add31.i.544 = add i128 %conv29.i.542, %128 *)
adds carry v_add31_i_544_L v_conv29_i_542_L v128_L;
adc v_add31_i_544_H v_conv29_i_542_H v128_H carry;
(*  store i128 %add31.i.544, i128* %arrayidx22.i.103, align 16, !tbaa !6 *)
mov L0_96 v_add31_i_544_L;
mov L0_104 v_add31_i_544_H;
(* assert for ftmp[7] *)
assert true && v_mul14_i_569 <= const 64 (2**62) - const 64 (2**4);
(*  %sub33.i.546 = sub i64 4611686018427387888, %mul14.i.569 *)
sub v_sub33_i_546 4611686018427387888 v_mul14_i_569;
(*  %conv34.i.547 = zext i64 %sub33.i.546 to i128 *)
mov v_conv34_i_547_L v_sub33_i_546;
mov v_conv34_i_547_H 0;
(*  %129 = load i128, i128* %arrayidx26.i.104, align 16, !tbaa !6 *)
mov v129_L L0_112;
mov v129_H L0_120;
(*  %add36.i.549 = add i128 %conv34.i.547, %129 *)
adds carry v_add36_i_549_L v_conv34_i_547_L v129_L;
adc v_add36_i_549_H v_conv34_i_547_H v129_H carry;
(*  store i128 %add36.i.549, i128* %arrayidx26.i.104, align 16, !tbaa !6 *)
mov L0_112 v_add36_i_549_L;
mov L0_120 v_add36_i_549_H;
(* assert for ftmp[8] *)
assert true && v_mul16_i_571 <= const 64 (2**62) - const 64 (2**4);
(*  %sub38.i.551 = sub i64 4611686018427387888, %mul16.i.571 *)
sub v_sub38_i_551 4611686018427387888 v_mul16_i_571;
(*  %conv39.i.552 = zext i64 %sub38.i.551 to i128 *)
mov v_conv39_i_552_L v_sub38_i_551;
mov v_conv39_i_552_H 0;
(*  %130 = load i128, i128* %arrayidx30.i.105, align 16, !tbaa !6 *)
mov v130_L L0_128;
mov v130_H L0_136;
(*  %add41.i.554 = add i128 %conv39.i.552, %130 *)
adds carry v_add41_i_554_L v_conv39_i_552_L v130_L;
adc v_add41_i_554_H v_conv39_i_552_H v130_H carry;
(*  store i128 %add41.i.554, i128* %arrayidx30.i.105, align 16, !tbaa !6 *)
mov L0_128 v_add41_i_554_L;
mov L0_136 v_add41_i_554_H;
(*  call fastcc void @felem_reduce(i64* %x_out, i128* %arraydecay10) *)
call felem_reduce(L0_0, L0_8, L0_16, L0_24, L0_32, L0_40, L0_48, L0_56, L0_64, L0_72, L0_80, L0_88, L0_96, L0_104, L0_112, L0_120, L0_128, L0_136, L10_0, L10_8, L10_16, L10_24, L10_32, L10_40, L10_48, L10_56, L10_64);
(*  %131 = load i64, i64* %arraydecay14, align 16, !tbaa !2 *)
mov v131 L2_0;
(*  %132 = load i64, i64* %arrayidx5.i.112, align 8, !tbaa !2 *)
mov v132 L2_8;
(*  %133 = load i64, i64* %arrayidx9.i.116, align 16, !tbaa !2 *)
mov v133 L2_16;
(*  %134 = load i64, i64* %arrayidx13.i.120, align 8, !tbaa !2 *)
mov v134 L2_24;
(*  %135 = load i64, i64* %arrayidx17.i.124, align 16, !tbaa !2 *)
mov v135 L2_32;
(*  %136 = load i64, i64* %arrayidx21.i.128, align 8, !tbaa !2 *)
mov v136 L2_40;
(*  %137 = load i64, i64* %arrayidx25.i.132, align 16, !tbaa !2 *)
mov v137 L2_48;
(*  %138 = load i64, i64* %arrayidx29.i.136, align 8, !tbaa !2 *)
mov v138 L2_56;
(*  %139 = load i64, i64* %arrayidx33.i.140, align 16, !tbaa !2 *)
mov v139 L2_64;
(*  %140 = bitcast i64* %y_in to <2 x i64>* *)
(*  %141 = load <2 x i64>, <2 x i64>* %140, align 8, !tbaa !2 *)
mov v141_0 L8_0;
mov v141_1 L8_8;
(*  %arrayidx4.i.448 = getelementptr inbounds i64, i64* %y_in, i64 2 *)
(*  %142 = bitcast i64* %arrayidx4.i.448 to <2 x i64>* *)
(*  %143 = load <2 x i64>, <2 x i64>* %142, align 8, !tbaa !2 *)
mov v143_0 L8_16;
mov v143_1 L8_24;
(*  %arrayidx8.i.452 = getelementptr inbounds i64, i64* %y_in, i64 4 *)
(*  %144 = bitcast i64* %arrayidx8.i.452 to <2 x i64>* *)
(*  %145 = load <2 x i64>, <2 x i64>* %144, align 8, !tbaa !2 *)
mov v145_0 L8_32;
mov v145_1 L8_40;
(*  %arrayidx12.i.456 = getelementptr inbounds i64, i64* %y_in, i64 6 *)
(*  %146 = bitcast i64* %arrayidx12.i.456 to <2 x i64>* *)
(*  %147 = load <2 x i64>, <2 x i64>* %146, align 8, !tbaa !2 *)
mov v147_0 L8_48;
mov v147_1 L8_56;
(*  %arrayidx16.i.460 = getelementptr inbounds i64, i64* %y_in, i64 8 *)
(*  %148 = load i64, i64* %arrayidx16.i.460, align 8, !tbaa !2 *)
mov v148 L8_64;
(*  %149 = bitcast i64* %z_in to <2 x i64>* *)
(*  %150 = load <2 x i64>, <2 x i64>* %149, align 8, !tbaa !2 *)
mov v150_0 L9_0;
mov v150_1 L9_8;
(*  %151 = add <2 x i64> %141, %150 *)
add v151_0 v141_0 v150_0;
add v151_1 v141_1 v150_1;
(*  %152 = bitcast [9 x i64]* %ftmp to <2 x i64>* *)
(*  store <2 x i64> %151, <2 x i64>* %152, align 16, !tbaa !2 *)
mov L5_0 v151_0;
mov L5_8 v151_1;
(*  %arrayidx5.i.429 = getelementptr inbounds i64, i64* %z_in, i64 2 *)
(*  %153 = bitcast i64* %arrayidx5.i.429 to <2 x i64>* *)
(*  %154 = load <2 x i64>, <2 x i64>* %153, align 8, !tbaa !2 *)
mov v154_0 L9_16;
mov v154_1 L9_24;
(*  %155 = add <2 x i64> %143, %154 *)
add v155_0 v143_0 v154_0;
add v155_1 v143_1 v154_1;
(*  %156 = bitcast i64* %arrayidx5.i to <2 x i64>* *)
(*  store <2 x i64> %155, <2 x i64>* %156, align 16, !tbaa !2 *)
mov L5_16 v155_0;
mov L5_24 v155_1;
(*  %arrayidx11.i.433 = getelementptr inbounds i64, i64* %z_in, i64 4 *)
(*  %157 = bitcast i64* %arrayidx11.i.433 to <2 x i64>* *)
(*  %158 = load <2 x i64>, <2 x i64>* %157, align 8, !tbaa !2 *)
mov v158_0 L9_32;
mov v158_1 L9_40;
(*  %159 = add <2 x i64> %145, %158 *)
add v159_0 v145_0 v158_0;
add v159_1 v145_1 v158_1;
(*  %160 = bitcast i64* %arrayidx9.i to <2 x i64>* *)
(*  store <2 x i64> %159, <2 x i64>* %160, align 16, !tbaa !2 *)
mov L5_32 v159_0;
mov L5_40 v159_1;
(*  %arrayidx17.i.439 = getelementptr inbounds i64, i64* %z_in, i64 6 *)
(*  %161 = bitcast i64* %arrayidx17.i.439 to <2 x i64>* *)
(*  %162 = load <2 x i64>, <2 x i64>* %161, align 8, !tbaa !2 *)
mov v162_0 L9_48;
mov v162_1 L9_56;
(*  %163 = add <2 x i64> %147, %162 *)
add v163_0 v147_0 v162_0;
add v163_1 v147_1 v162_1;
(*  %164 = bitcast i64* %arrayidx13.i to <2 x i64>* *)
(*  store <2 x i64> %163, <2 x i64>* %164, align 16, !tbaa !2 *)
mov L5_48 v163_0;
mov L5_56 v163_1;
(*  %arrayidx23.i.443 = getelementptr inbounds i64, i64* %z_in, i64 8 *)
(*  %165 = load i64, i64* %arrayidx23.i.443, align 8, !tbaa !2 *)
mov v165 L9_64;
(*  %add25.i.445 = add i64 %148, %165 *)
add v_add25_i_445 v148 v165;
(*  store i64 %add25.i.445, i64* %arrayidx17.i, align 16, !tbaa !2 *)
mov L5_64 v_add25_i_445;
(*  call fastcc void @felem_square(i128* %arraydecay10, i64* %arraydecay) *)
call felem_square(L5_0, L5_8, L5_16, L5_24, L5_32, L5_40, L5_48, L5_56, L5_64, L0_0, L0_8, L0_16, L0_24, L0_32, L0_40, L0_48, L0_56, L0_64, L0_72, L0_80, L0_88, L0_96, L0_104, L0_112, L0_120, L0_128, L0_136);
(* ================================================== *)
(* ==== here starts the second felem_diff_128_64 ==== *)
(* ================================================== *)
(*
The following should do (two63m6 - delta') as in felem_diff_128_64,
but it actually does (sub.i.392 - %131), because sub.i.392 =
two63m6 - delta, %131 = gamma, hence (sub.i.392 - %131) =
two63m6 - (delta + gamma) = two63m6 - delta'.
*)
(*  %sub.i.373 = sub i64 %sub.i.392, %131 *)
sub v_sub_i_373 v_sub_i_392 v131;
(*  %conv.i.374 = zext i64 %sub.i.373 to i128 *)
mov v_conv_i_374_L v_sub_i_373;
mov v_conv_i_374_H 0;
(*  %166 = load i128, i128* %arraydecay10, align 16, !tbaa !6 *)
mov v166_L L0_0;
mov v166_H L0_8;
(*  %add.i.375 = add i128 %166, %conv.i.374 *)
adds carry v_add_i_375_L v166_L v_conv_i_374_L;
adc v_add_i_375_H v166_H v_conv_i_374_H carry;
(*  store i128 %add.i.375, i128* %arraydecay10, align 16, !tbaa !6 *)
mov L0_0 v_add_i_375_L;
mov L0_8 v_add_i_375_H;
(*  %sub3.i.377 = sub i64 %sub3.i.395, %132 *)
sub v_sub3_i_377 v_sub3_i_395 v132;
(*  %conv4.i = zext i64 %sub3.i.377 to i128 *)
mov v_conv4_i_L v_sub3_i_377;
mov v_conv4_i_H 0;
(*  %167 = load i128, i128* %arrayidx2.i.94, align 16, !tbaa !6 *)
mov v167_L L0_16;
mov v167_H L0_24;
(*  %add6.i = add i128 %167, %conv4.i *)
adds carry v_add6_i_L v167_L v_conv4_i_L;
adc v_add6_i_H v167_H v_conv4_i_H carry;
(*  store i128 %add6.i, i128* %arrayidx2.i.94, align 16, !tbaa !6 *)
mov L0_16 v_add6_i_L;
mov L0_24 v_add6_i_H;
(*  %sub8.i = sub i64 %sub7.i.399, %133 *)
sub v_sub8_i v_sub7_i_399 v133;
(*  %conv9.i = zext i64 %sub8.i to i128 *)
mov v_conv9_i_L v_sub8_i;
mov v_conv9_i_H 0;
(*  %168 = load i128, i128* %arrayidx6.i.96, align 16, !tbaa !6 *)
mov v168_L L0_32;
mov v168_H L0_40;
(*  %add11.i = add i128 %168, %conv9.i *)
adds carry v_add11_i_L v168_L v_conv9_i_L;
adc v_add11_i_H v168_H v_conv9_i_H carry;
(*  store i128 %add11.i, i128* %arrayidx6.i.96, align 16, !tbaa !6 *)
mov L0_32 v_add11_i_L;
mov L0_40 v_add11_i_H;
(*  %sub13.i = sub i64 %sub11.i.403, %134 *)
sub v_sub13_i v_sub11_i_403 v134;
(*  %conv14.i = zext i64 %sub13.i to i128 *)
mov v_conv14_i_L v_sub13_i;
mov v_conv14_i_H 0;
(*  %169 = load i128, i128* %arrayidx10.i.98, align 16, !tbaa !6 *)
mov v169_L L0_48;
mov v169_H L0_56;
(*  %add16.i = add i128 %169, %conv14.i *)
adds carry v_add16_i_L v169_L v_conv14_i_L;
adc v_add16_i_H v169_H v_conv14_i_H carry;
(*  store i128 %add16.i, i128* %arrayidx10.i.98, align 16, !tbaa !6 *)
mov L0_48 v_add16_i_L;
mov L0_56 v_add16_i_H;
(*  %sub18.i = sub i64 %sub15.i.407, %135 *)
sub v_sub18_i v_sub15_i_407 v135;
(*  %conv19.i.384 = zext i64 %sub18.i to i128 *)
mov v_conv19_i_384_L v_sub18_i;
mov v_conv19_i_384_H 0;
(*  %170 = load i128, i128* %arrayidx14.i.100, align 16, !tbaa !6 *)
mov v170_L L0_64;
mov v170_H L0_72;
(*  %add21.i.386 = add i128 %170, %conv19.i.384 *)
adds carry v_add21_i_386_L v170_L v_conv19_i_384_L;
adc v_add21_i_386_H v170_H v_conv19_i_384_H carry;
(*  store i128 %add21.i.386, i128* %arrayidx14.i.100, align 16, !tbaa !6 *)
mov L0_64 v_add21_i_386_L;
mov L0_72 v_add21_i_386_H;
(*  %sub23.i.388 = sub i64 %sub19.i.411, %136 *)
sub v_sub23_i_388 v_sub19_i_411 v136;
(*  %conv24.i = zext i64 %sub23.i.388 to i128 *)
mov v_conv24_i_L v_sub23_i_388;
mov v_conv24_i_H 0;
(*  %171 = load i128, i128* %arrayidx18.i.102, align 16, !tbaa !6 *)
mov v171_L L0_80;
mov v171_H L0_88;
(*  %add26.i = add i128 %171, %conv24.i *)
adds carry v_add26_i_L v171_L v_conv24_i_L;
adc v_add26_i_H v171_H v_conv24_i_H carry;
(*  store i128 %add26.i, i128* %arrayidx18.i.102, align 16, !tbaa !6 *)
mov L0_80 v_add26_i_L;
mov L0_88 v_add26_i_H;
(*  %sub28.i = sub i64 %sub23.i.415, %137 *)
sub v_sub28_i v_sub23_i_415 v137;
(*  %conv29.i = zext i64 %sub28.i to i128 *)
mov v_conv29_i_L v_sub28_i;
mov v_conv29_i_H 0;
(*  %172 = load i128, i128* %arrayidx22.i.103, align 16, !tbaa !6 *)
mov v172_L L0_96;
mov v172_H L0_104;
(*  %add31.i = add i128 %172, %conv29.i *)
adds carry v_add31_i_L v172_L v_conv29_i_L;
adc v_add31_i_H v172_H v_conv29_i_H carry;
(*  store i128 %add31.i, i128* %arrayidx22.i.103, align 16, !tbaa !6 *)
mov L0_96 v_add31_i_L;
mov L0_104 v_add31_i_H;
(*  %sub33.i = sub i64 %sub27.i.419, %138 *)
sub v_sub33_i v_sub27_i_419 v138;
(*  %conv34.i = zext i64 %sub33.i to i128 *)
mov v_conv34_i_L v_sub33_i;
mov v_conv34_i_H 0;
(*  %173 = load i128, i128* %arrayidx26.i.104, align 16, !tbaa !6 *)
mov v173_L L0_112;
mov v173_H L0_120;
(*  %add36.i = add i128 %173, %conv34.i *)
adds carry v_add36_i_L v173_L v_conv34_i_L;
adc v_add36_i_H v173_H v_conv34_i_H carry;
(*  store i128 %add36.i, i128* %arrayidx26.i.104, align 16, !tbaa !6 *)
mov L0_112 v_add36_i_L;
mov L0_120 v_add36_i_H;
(*  %sub38.i = sub i64 %sub31.i.423, %139 *)
sub v_sub38_i v_sub31_i_423 v139;
(*  %conv39.i = zext i64 %sub38.i to i128 *)
mov v_conv39_i_L v_sub38_i;
mov v_conv39_i_H 0;
(*  %174 = load i128, i128* %arrayidx30.i.105, align 16, !tbaa !6 *)
mov v174_L L0_128;
mov v174_H L0_136;
(*  %add41.i = add i128 %174, %conv39.i *)
adds carry v_add41_i_L v174_L v_conv39_i_L;
adc v_add41_i_H v174_H v_conv39_i_H carry;
(*  store i128 %add41.i, i128* %arrayidx30.i.105, align 16, !tbaa !6 *)
mov L0_128 v_add41_i_L;
mov L0_136 v_add41_i_H;
(*  call fastcc void @felem_reduce(i64* %z_out, i128* %arraydecay10) *)
call felem_reduce(L0_0, L0_8, L0_16, L0_24, L0_32, L0_40, L0_48, L0_56, L0_64, L0_72, L0_80, L0_88, L0_96, L0_104, L0_112, L0_120, L0_128, L0_136, z_out0, z_out1, z_out2, z_out3, z_out4, z_out5, z_out6, z_out7, z_out8);
(*  %175 = load i64, i64* %arraydecay18, align 16, !tbaa !2 *)
mov v175 L3_0;
(*  %mul.i.252 = shl i64 %175, 2 *)
shl v_mul_i_252 v175 2;
(*  %176 = bitcast i64* %arrayidx5.i.267 to <2 x i64>* *)
(*  %177 = load <2 x i64>, <2 x i64>* %176, align 8, !tbaa !2 *)
mov v177_0 L3_8;
mov v177_1 L3_16;
(*  %178 = shl <2 x i64> %177, <i64 2, i64 2> *)
shl v178_0 v177_0 2;
shl v178_1 v177_1 2;
(*  %179 = bitcast i64* %arrayidx13.i.275 to <2 x i64>* *)
(*  %180 = load <2 x i64>, <2 x i64>* %179, align 8, !tbaa !2 *)
mov v180_0 L3_24;
mov v180_1 L3_32;
(*  %181 = shl <2 x i64> %180, <i64 2, i64 2> *)
shl v181_0 v180_0 2;
shl v181_1 v180_1 2;
(*  %182 = load i64, i64* %arrayidx21.i.283, align 8, !tbaa !2 *)
mov v182 L3_40;
(*  %mul10.i = shl i64 %182, 2 *)
shl v_mul10_i v182 2;
(*  %183 = bitcast i64* %arrayidx25.i.287 to <2 x i64>* *)
(*  %184 = load <2 x i64>, <2 x i64>* %183, align 16, !tbaa !2 *)
mov v184_0 L3_48;
mov v184_1 L3_56;
(*  %185 = shl <2 x i64> %184, <i64 2, i64 2> *)
shl v185_0 v184_0 2;
shl v185_1 v184_1 2;
(*  %186 = load i64, i64* %arrayidx33.i.295, align 16, !tbaa !2 *)
mov v186 L3_64;
(*  %mul16.i = shl i64 %186, 2 *)
shl v_mul16_i v186 2;
(*  %187 = load i64, i64* %x_out, align 8, !tbaa !2 *)
mov v187 L10_0;
(*  %sub.i.218 = sub i64 4611686018427387872, %187 *)
sub v_sub_i_218 4611686018427387872 v187;
(*  %add.i.219 = add i64 %sub.i.218, %mul.i.252 *)
add v_add_i_219 v_sub_i_218 v_mul_i_252;
(*  store i64 %add.i.219, i64* %arraydecay18, align 16, !tbaa !2 *)
mov L3_0 v_add_i_219;
(*  %arrayidx2.i.220 = getelementptr inbounds i64, i64* %x_out, i64 1 *)
(*  %188 = bitcast i64* %arrayidx2.i.220 to <2 x i64>* *)
(*  %189 = load <2 x i64>, <2 x i64>* %188, align 8, !tbaa !2 *)
mov v189_0 L10_8;
mov v189_1 L10_16;
(*  %190 = sub <2 x i64> <i64 4611686018427387888, i64 4611686018427387888>, %189 *)
sub v190_0 4611686018427387888 v189_0;
sub v190_1 4611686018427387888 v189_1;
(*  %191 = add <2 x i64> %190, %178 *)
add v191_0 v190_0 v178_0;
add v191_1 v190_1 v178_1;
(*  %192 = bitcast i64* %arrayidx5.i.267 to <2 x i64>* *)
(*  store <2 x i64> %191, <2 x i64>* %192, align 8, !tbaa !2 *)
mov L3_8 v191_0;
mov L3_16 v191_1;
(*  %arrayidx10.i.228 = getelementptr inbounds i64, i64* %x_out, i64 3 *)
(*  %193 = bitcast i64* %arrayidx10.i.228 to <2 x i64>* *)
(*  %194 = load <2 x i64>, <2 x i64>* %193, align 8, !tbaa !2 *)
mov v194_0 L10_24;
mov v194_1 L10_32;
(*  %195 = sub <2 x i64> <i64 4611686018427387888, i64 4611686018427387888>, %194 *)
sub v195_0 4611686018427387888 v194_0;
sub v195_1 4611686018427387888 v194_1;
(*  %196 = add <2 x i64> %195, %181 *)
add v196_0 v195_0 v181_0;
add v196_1 v195_1 v181_1;
(*  %197 = bitcast i64* %arrayidx13.i.275 to <2 x i64>* *)
(*  store <2 x i64> %196, <2 x i64>* %197, align 8, !tbaa !2 *)
mov L3_24 v196_0;
mov L3_32 v196_1;
(*  %arrayidx18.i.236 = getelementptr inbounds i64, i64* %x_out, i64 5 *)
(*  %198 = load i64, i64* %arrayidx18.i.236, align 8, !tbaa !2 *)
mov v198 L10_40;
(*  %sub19.i.237 = sub i64 4611686018427387888, %198 *)
sub v_sub19_i_237 4611686018427387888 v198;
(*  %add21.i.239 = add i64 %sub19.i.237, %mul10.i *)
add v_add21_i_239 v_sub19_i_237 v_mul10_i;
(*  store i64 %add21.i.239, i64* %arrayidx21.i.283, align 8, !tbaa !2 *)
mov L3_40 v_add21_i_239;
(*  %arrayidx22.i.240 = getelementptr inbounds i64, i64* %x_out, i64 6 *)
(*  %199 = bitcast i64* %arrayidx22.i.240 to <2 x i64>* *)
(*  %200 = load <2 x i64>, <2 x i64>* %199, align 8, !tbaa !2 *)
mov v200_0 L10_48;
mov v200_1 L10_56;
(*  %201 = sub <2 x i64> <i64 4611686018427387888, i64 4611686018427387888>, %200 *)
sub v201_0 4611686018427387888 v200_0;
sub v201_1 4611686018427387888 v200_1;
(*  %202 = add <2 x i64> %201, %185 *)
add v202_0 v201_0 v185_0;
add v202_1 v201_1 v185_1;
(*  %203 = bitcast i64* %arrayidx25.i.287 to <2 x i64>* *)
(*  store <2 x i64> %202, <2 x i64>* %203, align 16, !tbaa !2 *)
mov L3_48 v202_0;
mov L3_56 v202_1;
(*  %arrayidx30.i.248 = getelementptr inbounds i64, i64* %x_out, i64 8 *)
(*  %204 = load i64, i64* %arrayidx30.i.248, align 8, !tbaa !2 *)
mov v204 L10_64;
(*  %sub31.i.249 = sub i64 4611686018427387888, %204 *)
sub v_sub31_i_249 4611686018427387888 v204;
(*  %add33.i.251 = add i64 %sub31.i.249, %mul16.i *)
add v_add33_i_251 v_sub31_i_249 v_mul16_i;
(*  store i64 %add33.i.251, i64* %arrayidx33.i.295, align 16, !tbaa !2 *)
mov L3_64 v_add33_i_251;
(*  call fastcc void @felem_mul(i128* %arraydecay10, i64* %arraydecay28, i64* %arraydecay18) *)
call felem_mul(L4_0, L4_8, L4_16, L4_24, L4_32, L4_40, L4_48, L4_56, L4_64, L3_0, L3_8, L3_16, L3_24, L3_32, L3_40, L3_48, L3_56, L3_64, L0_0, L0_8, L0_16, L0_24, L0_32, L0_40, L0_48, L0_56, L0_64, L0_72, L0_80, L0_88, L0_96, L0_104, L0_112, L0_120, L0_128, L0_136);
(*  %arraydecay52 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp2, i64 0, i64 0 *)
(*  call fastcc void @felem_square(i128* %arraydecay52, i64* %arraydecay14) *)
call felem_square(L2_0, L2_8, L2_16, L2_24, L2_32, L2_40, L2_48, L2_56, L2_64, L1_0, L1_8, L1_16, L1_24, L1_32, L1_40, L1_48, L1_56, L1_64, L1_72, L1_80, L1_88, L1_96, L1_104, L1_112, L1_120, L1_128, L1_136);
(*  %205 = load i128, i128* %arraydecay52, align 16, !tbaa !6 *)
mov v205_L L1_0;
mov v205_H L1_8;
(*  %mul.i = shl i128 %205, 3 *)
cshl v_mul_i_H tmp v205_H v205_L 3;
shl v_mul_i_L tmp 3;
(*  store i128 %mul.i, i128* %arraydecay52, align 16, !tbaa !6 *)
mov L1_0 v_mul_i_L;
mov L1_8 v_mul_i_H;
(*  %arrayidx2.i.87 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp2, i64 0, i64 1 *)
(*  %206 = load i128, i128* %arrayidx2.i.87, align 16, !tbaa !6 *)
mov v206_L L1_16;
mov v206_H L1_24;
(*  %mul3.i = shl i128 %206, 3 *)
cshl v_mul3_i_H tmp v206_H v206_L 3;
shl v_mul3_i_L tmp 3;
(*  store i128 %mul3.i, i128* %arrayidx2.i.87, align 16, !tbaa !6 *)
mov L1_16 v_mul3_i_L;
mov L1_24 v_mul3_i_H;
(*  %arrayidx5.i.88 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp2, i64 0, i64 2 *)
(*  %207 = load i128, i128* %arrayidx5.i.88, align 16, !tbaa !6 *)
mov v207_L L1_32;
mov v207_H L1_40;
(*  %mul6.i = shl i128 %207, 3 *)
cshl v_mul6_i_H tmp v207_H v207_L 3;
shl v_mul6_i_L tmp 3;
(*  store i128 %mul6.i, i128* %arrayidx5.i.88, align 16, !tbaa !6 *)
mov L1_32 v_mul6_i_L;
mov L1_40 v_mul6_i_H;
(*  %arrayidx8.i.89 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp2, i64 0, i64 3 *)
(*  %208 = load i128, i128* %arrayidx8.i.89, align 16, !tbaa !6 *)
mov v208_L L1_48;
mov v208_H L1_56;
(*  %mul9.i = shl i128 %208, 3 *)
cshl v_mul9_i_H tmp v208_H v208_L 3;
shl v_mul9_i_L tmp 3;
(*  store i128 %mul9.i, i128* %arrayidx8.i.89, align 16, !tbaa !6 *)
mov L1_48 v_mul9_i_L;
mov L1_56 v_mul9_i_H;
(*  %arrayidx11.i.90 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp2, i64 0, i64 4 *)
(*  %209 = load i128, i128* %arrayidx11.i.90, align 16, !tbaa !6 *)
mov v209_L L1_64;
mov v209_H L1_72;
(*  %mul12.i = shl i128 %209, 3 *)
cshl v_mul12_i_H tmp v209_H v209_L 3;
shl v_mul12_i_L tmp 3;
(*  store i128 %mul12.i, i128* %arrayidx11.i.90, align 16, !tbaa !6 *)
mov L1_64 v_mul12_i_L;
mov L1_72 v_mul12_i_H;
(*  %arrayidx14.i.91 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp2, i64 0, i64 5 *)
(*  %210 = load i128, i128* %arrayidx14.i.91, align 16, !tbaa !6 *)
mov v210_L L1_80;
mov v210_H L1_88;
(*  %mul15.i = shl i128 %210, 3 *)
cshl v_mul15_i_H tmp v210_H v210_L 3;
shl v_mul15_i_L tmp 3;
(*  store i128 %mul15.i, i128* %arrayidx14.i.91, align 16, !tbaa !6 *)
mov L1_80 v_mul15_i_L;
mov L1_88 v_mul15_i_H;
(*  %arrayidx17.i.92 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp2, i64 0, i64 6 *)
(*  %211 = load i128, i128* %arrayidx17.i.92, align 16, !tbaa !6 *)
mov v211_L L1_96;
mov v211_H L1_104;
(*  %mul18.i = shl i128 %211, 3 *)
cshl v_mul18_i_H tmp v211_H v211_L 3;
shl v_mul18_i_L tmp 3;
(*  store i128 %mul18.i, i128* %arrayidx17.i.92, align 16, !tbaa !6 *)
mov L1_96 v_mul18_i_L;
mov L1_104 v_mul18_i_H;
(*  %arrayidx20.i.93 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp2, i64 0, i64 7 *)
(*  %212 = load i128, i128* %arrayidx20.i.93, align 16, !tbaa !6 *)
mov v212_L L1_112;
mov v212_H L1_120;
(*  %mul21.i = shl i128 %212, 3 *)
cshl v_mul21_i_H tmp v212_H v212_L 3;
shl v_mul21_i_L tmp 3;
(*  store i128 %mul21.i, i128* %arrayidx20.i.93, align 16, !tbaa !6 *)
mov L1_112 v_mul21_i_L;
mov L1_120 v_mul21_i_H;
(*  %arrayidx23.i = getelementptr inbounds [9 x i128], [9 x i128]* %tmp2, i64 0, i64 8 *)
(*  %213 = load i128, i128* %arrayidx23.i, align 16, !tbaa !6 *)
mov v213_L L1_128;
mov v213_H L1_136;
(*  %mul24.i = shl i128 %213, 3 *)
cshl v_mul24_i_H tmp v213_H v213_L 3;
shl v_mul24_i_L tmp 3;
(*  %sub.i = sub i128 170141183460469230551095682998472802304, %mul.i *)
subs carry v_sub_i_L 0 v_mul_i_L;
sbb v_sub_i_H 9223372036854775744 v_mul_i_H carry;
(*  %214 = load i128, i128* %arraydecay10, align 16, !tbaa !6 *)
mov v214_L L0_0;
mov v214_H L0_8;
(*  %add.i = add i128 %sub.i, %214 *)
adds carry v_add_i_L v_sub_i_L v214_L;
adc v_add_i_H v_sub_i_H v214_H carry;
(*  store i128 %add.i, i128* %arraydecay10, align 16, !tbaa !6 *)
mov L0_0 v_add_i_L;
mov L0_8 v_add_i_H;
(*  %sub3.i = sub i128 170141183460469231141391493357178454016, %mul3.i *)
subs carry v_sub3_i_L 0 v_mul3_i_L;
sbb v_sub3_i_H 9223372036854775776 v_mul3_i_H carry;
(*  %215 = load i128, i128* %arrayidx2.i.94, align 16, !tbaa !6 *)
mov v215_L L0_16;
mov v215_H L0_24;
(*  %add5.i = add i128 %sub3.i, %215 *)
adds carry v_add5_i_L v_sub3_i_L v215_L;
adc v_add5_i_H v_sub3_i_H v215_H carry;
(*  store i128 %add5.i, i128* %arrayidx2.i.94, align 16, !tbaa !6 *)
mov L0_16 v_add5_i_L;
mov L0_24 v_add5_i_H;
(*  %sub7.i = sub i128 170141183460469231141391493357178454016, %mul6.i *)
subs carry v_sub7_i_L 0 v_mul6_i_L;
sbb v_sub7_i_H 9223372036854775776 v_mul6_i_H carry;
(*  %216 = load i128, i128* %arrayidx6.i.96, align 16, !tbaa !6 *)
mov v216_L L0_32;
mov v216_H L0_40;
(*  %add9.i = add i128 %sub7.i, %216 *)
adds carry v_add9_i_L v_sub7_i_L v216_L;
adc v_add9_i_H v_sub7_i_H v216_H carry;
(*  store i128 %add9.i, i128* %arrayidx6.i.96, align 16, !tbaa !6 *)
mov L0_32 v_add9_i_L;
mov L0_40 v_add9_i_H;
(*  %sub11.i = sub i128 170141183460469231141391493357178454016, %mul9.i *)
subs carry v_sub11_i_L 0 v_mul9_i_L;
sbb v_sub11_i_H 9223372036854775776 v_mul9_i_H carry;
(*  %217 = load i128, i128* %arrayidx10.i.98, align 16, !tbaa !6 *)
mov v217_L L0_48;
mov v217_H L0_56;
(*  %add13.i = add i128 %sub11.i, %217 *)
adds carry v_add13_i_L v_sub11_i_L v217_L;
adc v_add13_i_H v_sub11_i_H v217_H carry;
(*  store i128 %add13.i, i128* %arrayidx10.i.98, align 16, !tbaa !6 *)
mov L0_48 v_add13_i_L;
mov L0_56 v_add13_i_H;
(*  %sub15.i = sub i128 170141183460469231141391493357178454016, %mul12.i *)
subs carry v_sub15_i_L 0 v_mul12_i_L;
sbb v_sub15_i_H 9223372036854775776 v_mul12_i_H carry;
(*  %218 = load i128, i128* %arrayidx14.i.100, align 16, !tbaa !6 *)
mov v218_L L0_64;
mov v218_H L0_72;
(*  %add17.i = add i128 %sub15.i, %218 *)
adds carry v_add17_i_L v_sub15_i_L v218_L;
adc v_add17_i_H v_sub15_i_H v218_H carry;
(*  store i128 %add17.i, i128* %arrayidx14.i.100, align 16, !tbaa !6 *)
mov L0_64 v_add17_i_L;
mov L0_72 v_add17_i_H;
(*  %sub19.i = sub i128 170141183460469231141391493357178454016, %mul15.i *)
subs carry v_sub19_i_L 0 v_mul15_i_L;
sbb v_sub19_i_H 9223372036854775776 v_mul15_i_H carry;
(*  %219 = load i128, i128* %arrayidx18.i.102, align 16, !tbaa !6 *)
mov v219_L L0_80;
mov v219_H L0_88;
(*  %add21.i = add i128 %sub19.i, %219 *)
adds carry v_add21_i_L v_sub19_i_L v219_L;
adc v_add21_i_H v_sub19_i_H v219_H carry;
(*  store i128 %add21.i, i128* %arrayidx18.i.102, align 16, !tbaa !6 *)
mov L0_80 v_add21_i_L;
mov L0_88 v_add21_i_H;
(*  %sub23.i = sub i128 170141183460469231141391493357178454016, %mul18.i *)
subs carry v_sub23_i_L 0 v_mul18_i_L;
sbb v_sub23_i_H 9223372036854775776 v_mul18_i_H carry;
(*  %220 = load i128, i128* %arrayidx22.i.103, align 16, !tbaa !6 *)
mov v220_L L0_96;
mov v220_H L0_104;
(*  %add25.i = add i128 %sub23.i, %220 *)
adds carry v_add25_i_L v_sub23_i_L v220_L;
adc v_add25_i_H v_sub23_i_H v220_H carry;
(*  store i128 %add25.i, i128* %arrayidx22.i.103, align 16, !tbaa !6 *)
mov L0_96 v_add25_i_L;
mov L0_104 v_add25_i_H;
(*  %sub27.i = sub i128 170141183460469231141391493357178454016, %mul21.i *)
subs carry v_sub27_i_L 0 v_mul21_i_L;
sbb v_sub27_i_H 9223372036854775776 v_mul21_i_H carry;
(*  %221 = load i128, i128* %arrayidx26.i.104, align 16, !tbaa !6 *)
mov v221_L L0_112;
mov v221_H L0_120;
(*  %add29.i = add i128 %sub27.i, %221 *)
adds carry v_add29_i_L v_sub27_i_L v221_L;
adc v_add29_i_H v_sub27_i_H v221_H carry;
(*  store i128 %add29.i, i128* %arrayidx26.i.104, align 16, !tbaa !6 *)
mov L0_112 v_add29_i_L;
mov L0_120 v_add29_i_H;
(*  %sub31.i = sub i128 170141183460469231141391493357178454016, %mul24.i *)
subs carry v_sub31_i_L 0 v_mul24_i_L;
sbb v_sub31_i_H 9223372036854775776 v_mul24_i_H carry;
(*  %222 = load i128, i128* %arrayidx30.i.105, align 16, !tbaa !6 *)
mov v222_L L0_128;
mov v222_H L0_136;
(*  %add33.i = add i128 %sub31.i, %222 *)
adds carry v_add33_i_L v_sub31_i_L v222_L;
adc v_add33_i_H v_sub31_i_H v222_H carry;
(*  store i128 %add33.i, i128* %arrayidx30.i.105, align 16, !tbaa !6 *)
mov L0_128 v_add33_i_L;
mov L0_136 v_add33_i_H;
(*  call fastcc void @felem_reduce(i64* %y_out, i128* %arraydecay10) *)
call felem_reduce(L0_0, L0_8, L0_16, L0_24, L0_32, L0_40, L0_48, L0_56, L0_64, L0_72, L0_80, L0_88, L0_96, L0_104, L0_112, L0_120, L0_128, L0_136, y_out0, y_out1, y_out2, y_out3, y_out4, y_out5, y_out6, y_out7, y_out8);

(*  call void @llvm.lifetime.end(i64 72, i8* %6) #1 *)
(*  call void @llvm.lifetime.end(i64 72, i8* %5) #1 *)
(*  call void @llvm.lifetime.end(i64 72, i8* %4) #1 *)
(*  call void @llvm.lifetime.end(i64 72, i8* %3) #1 *)
(*  call void @llvm.lifetime.end(i64 72, i8* %2) #1 *)
(*  call void @llvm.lifetime.end(i64 144, i8* %1) #1 *)
(*  call void @llvm.lifetime.end(i64 144, i8* %0) #1 *)
(*  ret void *)


{
  true
  &&
  true
}







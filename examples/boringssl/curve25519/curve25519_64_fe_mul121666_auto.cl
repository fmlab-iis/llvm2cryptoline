proc main (L1_0, L1_8, L1_24, L1_16, L1_32) =
{
  true
  &&
  true
}



(*   %arraydecay = getelementptr inbounds %struct.fe, %struct.fe* %h, i64 0, i32 0, i64 0, !dbg !1351 *)
(*   %arraydecay2 = getelementptr inbounds %struct.fe_loose, %struct.fe_loose* %f, i64 0, i32 0, i64 0, !dbg !1352 *)
(*   %arrayidx.i = getelementptr inbounds %struct.fe_loose, %struct.fe_loose* %f, i64 0, i32 0, i64 4, !dbg !1356 *)
(*   %0 = load i64, i64* %arrayidx.i, align 8, !dbg !1356, !tbaa !1357 *)
mov v0 L1_32;
(*   %conv.i = zext i64 %0 to i128, !dbg !1361 *)
mov v_conv_i_L v0;
mov v_conv_i_H 0;
(*   %mul.i = mul nuw nsw i128 %conv.i, 121666, !dbg !1362 *)
mull tmpLL_H tmpLL_L v_conv_i_L 121666;
mul tmpHL_L v_conv_i_H 121666;
mul tmpLH_L v_conv_i_L 0;
mov v_mul_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul_i_H tmp tmpLL_H;
(*   %arrayidx1.i = getelementptr inbounds %struct.fe_loose, %struct.fe_loose* %f, i64 0, i32 0, i64 3, !dbg !1364 *)
(*   %1 = load i64, i64* %arrayidx1.i, align 8, !dbg !1364, !tbaa !1357 *)
mov v1 L1_24;
(*   %conv2.i = zext i64 %1 to i128, !dbg !1365 *)
mov v_conv2_i_L v1;
mov v_conv2_i_H 0;
(*   %mul3.i = mul nuw nsw i128 %conv2.i, 121666, !dbg !1366 *)
mull tmpLL_H tmpLL_L v_conv2_i_L 121666;
mul tmpHL_L v_conv2_i_H 121666;
mul tmpLH_L v_conv2_i_L 0;
mov v_mul3_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul3_i_H tmp tmpLL_H;
(*   %arrayidx4.i = getelementptr inbounds %struct.fe_loose, %struct.fe_loose* %f, i64 0, i32 0, i64 2, !dbg !1368 *)
(*   %2 = load i64, i64* %arrayidx4.i, align 8, !dbg !1368, !tbaa !1357 *)
mov v2 L1_16;
(*   %conv5.i = zext i64 %2 to i128, !dbg !1369 *)
mov v_conv5_i_L v2;
mov v_conv5_i_H 0;
(*   %mul6.i = mul nuw nsw i128 %conv5.i, 121666, !dbg !1370 *)
mull tmpLL_H tmpLL_L v_conv5_i_L 121666;
mul tmpHL_L v_conv5_i_H 121666;
mul tmpLH_L v_conv5_i_L 0;
mov v_mul6_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul6_i_H tmp tmpLL_H;
(*   %arrayidx7.i = getelementptr inbounds %struct.fe_loose, %struct.fe_loose* %f, i64 0, i32 0, i64 1, !dbg !1372 *)
(*   %3 = load i64, i64* %arrayidx7.i, align 8, !dbg !1372, !tbaa !1357 *)
mov v3 L1_8;
(*   %conv8.i = zext i64 %3 to i128, !dbg !1373 *)
mov v_conv8_i_L v3;
mov v_conv8_i_H 0;
(*   %mul9.i = mul nuw nsw i128 %conv8.i, 121666, !dbg !1374 *)
mull tmpLL_H tmpLL_L v_conv8_i_L 121666;
mul tmpHL_L v_conv8_i_H 121666;
mul tmpLH_L v_conv8_i_L 0;
mov v_mul9_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul9_i_H tmp tmpLL_H;
(*   %4 = load i64, i64* %arraydecay2, align 8, !dbg !1376, !tbaa !1357 *)
mov v4 L1_0;
(*   %conv11.i = zext i64 %4 to i128, !dbg !1377 *)
mov v_conv11_i_L v4;
mov v_conv11_i_H 0;
(*   %mul12.i = mul nuw nsw i128 %conv11.i, 121666, !dbg !1378 *)
mull tmpLL_H tmpLL_L v_conv11_i_L 121666;
mul tmpHL_L v_conv11_i_H 121666;
mul tmpLH_L v_conv11_i_L 0;
mov v_mul12_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul12_i_H tmp tmpLL_H;
(*   %shr.i = lshr i128 %mul12.i, 51, !dbg !1380 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_mul12_i_L 51;
split tmpH_h tmpH_l v_mul12_i_H 51;
shl tmp tmpH_l 13;
add v_shr_i_L tmp tmpL_h;
mov v_shr_i_H tmpH_h;
(*   %mul12.tr.i = trunc i128 %mul12.i to i64, !dbg !1381 *)
mov v_mul12_tr_i v_mul12_i_L;
(*   %conv14.i = and i64 %mul12.tr.i, 2251799813685246, !dbg !1381 *)
(* You may need to modify here *)
and v_conv14_i v_mul12_tr_i 0x7FFFFFFFFFFFE;
(*   %add.i = add nuw nsw i128 %shr.i, %mul9.i, !dbg !1383 *)
adds carry v_add_i_L v_shr_i_L v_mul9_i_L;
adc v_add_i_H v_shr_i_H v_mul9_i_H carry;
(*   %shr16.i = lshr i128 %add.i, 51, !dbg !1385 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add_i_L 51;
split tmpH_h tmpH_l v_add_i_H 51;
shl tmp tmpH_l 13;
add v_shr16_i_L tmp tmpL_h;
mov v_shr16_i_H tmpH_h;
(*   %add.tr.i = trunc i128 %add.i to i64, !dbg !1386 *)
mov v_add_tr_i v_add_i_L;
(*   %conv19.i = and i64 %add.tr.i, 2251799813685247, !dbg !1386 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv19_i v_add_tr_i 0x7FFFFFFFFFFFF;
assert true && eq v_conv19_i tmp_to_be_used;
assume eq v_conv19_i tmp_to_be_used && true;
(*   %add21.i = add nuw nsw i128 %shr16.i, %mul6.i, !dbg !1388 *)
adds carry v_add21_i_L v_shr16_i_L v_mul6_i_L;
adc v_add21_i_H v_shr16_i_H v_mul6_i_H carry;
(*   %shr22.i = lshr i128 %add21.i, 51, !dbg !1390 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add21_i_L 51;
split tmpH_h tmpH_l v_add21_i_H 51;
shl tmp tmpH_l 13;
add v_shr22_i_L tmp tmpL_h;
mov v_shr22_i_H tmpH_h;
(*   %add21.tr.i = trunc i128 %add21.i to i64, !dbg !1391 *)
mov v_add21_tr_i v_add21_i_L;
(*   %conv25.i = and i64 %add21.tr.i, 2251799813685247, !dbg !1391 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv25_i v_add21_tr_i 0x7FFFFFFFFFFFF;
assert true && eq v_conv25_i tmp_to_be_used;
assume eq v_conv25_i tmp_to_be_used && true;
(*   %add27.i = add nuw nsw i128 %shr22.i, %mul3.i, !dbg !1393 *)
adds carry v_add27_i_L v_shr22_i_L v_mul3_i_L;
adc v_add27_i_H v_shr22_i_H v_mul3_i_H carry;
(*   %shr28.i = lshr i128 %add27.i, 51, !dbg !1395 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add27_i_L 51;
split tmpH_h tmpH_l v_add27_i_H 51;
shl tmp tmpH_l 13;
add v_shr28_i_L tmp tmpL_h;
mov v_shr28_i_H tmpH_h;
(*   %add27.tr.i = trunc i128 %add27.i to i64, !dbg !1396 *)
mov v_add27_tr_i v_add27_i_L;
(*   %conv31.i = and i64 %add27.tr.i, 2251799813685247, !dbg !1396 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv31_i v_add27_tr_i 0x7FFFFFFFFFFFF;
assert true && eq v_conv31_i tmp_to_be_used;
assume eq v_conv31_i tmp_to_be_used && true;
(*   %add33.i = add nuw nsw i128 %shr28.i, %mul.i, !dbg !1398 *)
adds carry v_add33_i_L v_shr28_i_L v_mul_i_L;
adc v_add33_i_H v_shr28_i_H v_mul_i_H carry;
(*   %shr34.i = lshr i128 %add33.i, 51, !dbg !1400 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add33_i_L 51;
split tmpH_h tmpH_l v_add33_i_H 51;
shl tmp tmpH_l 13;
add v_shr34_i_L tmp tmpL_h;
mov v_shr34_i_H tmpH_h;
(*   %conv35.i = trunc i128 %shr34.i to i64, !dbg !1401 *)
mov v_conv35_i v_shr34_i_L;
(*   %add33.tr.i = trunc i128 %add33.i to i64, !dbg !1403 *)
mov v_add33_tr_i v_add33_i_L;
(*   %conv37.i = and i64 %add33.tr.i, 2251799813685247, !dbg !1403 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv37_i v_add33_tr_i 0x7FFFFFFFFFFFF;
assert true && eq v_conv37_i tmp_to_be_used;
assume eq v_conv37_i tmp_to_be_used && true;
(*   %mul38.i = mul nuw nsw i64 %conv35.i, 19, !dbg !1405 *)
mul v_mul38_i v_conv35_i 19;
(*   %add39.i = add nuw nsw i64 %mul38.i, %conv14.i, !dbg !1407 *)
add v_add39_i v_mul38_i v_conv14_i;
(*   %shr40.i = lshr i64 %add39.i, 51, !dbg !1409 *)
(* You may need to modify here *)
split v_shr40_i tmp_to_be_used v_add39_i 51;
(*   %and41.i = and i64 %add39.i, 2251799813685247, !dbg !1411 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_and41_i v_add39_i 0x7FFFFFFFFFFFF;
assert true && eq v_and41_i tmp_to_be_used;
assume eq v_and41_i tmp_to_be_used && true;
(*   %add42.i = add nuw nsw i64 %shr40.i, %conv19.i, !dbg !1413 *)
add v_add42_i v_shr40_i v_conv19_i;
(*   %shr43.i = lshr i64 %add42.i, 51, !dbg !1415 *)
(* You may need to modify here *)
split v_shr43_i tmp_to_be_used v_add42_i 51;
(*   %fold.i = add i64 %shr40.i, %add.tr.i, !dbg !1417 *)
add v_fold_i v_shr40_i v_add_tr_i;
(*   %and44.i = and i64 %fold.i, 2251799813685247, !dbg !1417 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_and44_i v_fold_i 0x7FFFFFFFFFFFF;
assert true && eq v_and44_i tmp_to_be_used;
assume eq v_and44_i tmp_to_be_used && true;
(*   %add45.i = add nuw nsw i64 %shr43.i, %conv25.i, !dbg !1419 *)
add v_add45_i v_shr43_i v_conv25_i;
(*   store i64 %and41.i, i64* %arraydecay, align 8, !dbg !1421, !tbaa !1357 *)
mov L0_0 v_and41_i;
(*   %arrayidx47.i = getelementptr inbounds %struct.fe, %struct.fe* %h, i64 0, i32 0, i64 1, !dbg !1422 *)
(*   store i64 %and44.i, i64* %arrayidx47.i, align 8, !dbg !1423, !tbaa !1357 *)
mov L0_8 v_and44_i;
(*   %arrayidx48.i = getelementptr inbounds %struct.fe, %struct.fe* %h, i64 0, i32 0, i64 2, !dbg !1424 *)
(*   store i64 %add45.i, i64* %arrayidx48.i, align 8, !dbg !1425, !tbaa !1357 *)
mov L0_16 v_add45_i;
(*   %arrayidx49.i = getelementptr inbounds %struct.fe, %struct.fe* %h, i64 0, i32 0, i64 3, !dbg !1426 *)
(*   store i64 %conv31.i, i64* %arrayidx49.i, align 8, !dbg !1427, !tbaa !1357 *)
mov L0_24 v_conv31_i;
(*   %arrayidx50.i = getelementptr inbounds %struct.fe, %struct.fe* %h, i64 0, i32 0, i64 4, !dbg !1428 *)
(*   store i64 %conv37.i, i64* %arrayidx50.i, align 8, !dbg !1429, !tbaa !1357 *)
mov L0_32 v_conv37_i;
(*   ret void, !dbg !1432 *)


{
  true
  &&
  true
}


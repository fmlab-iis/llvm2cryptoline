proc main (a0, a1, a2, a3, a4) =
{
  true
  &&
  and [
    a0 <= const 64 0x1a666666666664,
    a1 <= const 64 0x1a666666666664,
    a2 <= const 64 0x1a666666666664,
    a3 <= const 64 0x1a666666666664,
    a4 <= const 64 0x1a666666666664
  ]
}

mov L0_0 a0;
mov L0_8 a1;
mov L0_16 a2;
mov L0_24 a3;
mov L0_32 a4;


(*   %arrayidx = getelementptr inbounds i64, i64* %arg1, i64 4, !dbg !1349 *)
(*   %0 = load i64, i64* %arrayidx, align 8, !dbg !1349, !tbaa !1350 *)
mov v0 L0_32;
(*   %mul = mul i64 %0, 19, !dbg !1354 *)
mul v_mul v0 19;
(*   %mul1 = mul i64 %0, 38, !dbg !1356 *)
mul v_mul1 v0 38;
(*   %mul3 = shl i64 %0, 1, !dbg !1358 *)
shl v_mul3 v0 1;
(*   %arrayidx4 = getelementptr inbounds i64, i64* %arg1, i64 3, !dbg !1360 *)
(*   %1 = load i64, i64* %arrayidx4, align 8, !dbg !1360, !tbaa !1350 *)
mov v1 L0_24;
(*   %mul5 = mul i64 %1, 19, !dbg !1361 *)
mul v_mul5 v1 19;
(*   %mul6 = mul i64 %1, 38, !dbg !1363 *)
mul v_mul6 v1 38;
(*   %mul8 = shl i64 %1, 1, !dbg !1365 *)
shl v_mul8 v1 1;
(*   %arrayidx9 = getelementptr inbounds i64, i64* %arg1, i64 2, !dbg !1367 *)
(*   %2 = load i64, i64* %arrayidx9, align 8, !dbg !1367, !tbaa !1350 *)
mov v2 L0_16;
(*   %mul10 = shl i64 %2, 1, !dbg !1368 *)
shl v_mul10 v2 1;
(*   %arrayidx11 = getelementptr inbounds i64, i64* %arg1, i64 1, !dbg !1370 *)
(*   %3 = load i64, i64* %arrayidx11, align 8, !dbg !1370, !tbaa !1350 *)
mov v3 L0_8;
(*   %mul12 = shl i64 %3, 1, !dbg !1371 *)
shl v_mul12 v3 1;
(*   %conv = zext i64 %0 to i128, !dbg !1373 *)
mov v_conv_L v0;
mov v_conv_H 0;
(*   %conv14 = zext i64 %mul to i128, !dbg !1374 *)
mov v_conv14_L v_mul;
mov v_conv14_H 0;
(*   %mul15 = mul nuw i128 %conv14, %conv, !dbg !1375 *)
mull tmpLL_H tmpLL_L v_conv14_L v_conv_L;
mul tmpHL_L v_conv14_H v_conv_L;
mul tmpLH_L v_conv14_L v_conv_H;
mov v_mul15_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul15_H tmp tmpLL_H;
(*   %conv17 = zext i64 %1 to i128, !dbg !1377 *)
mov v_conv17_L v1;
mov v_conv17_H 0;
(*   %conv18 = zext i64 %mul1 to i128, !dbg !1378 *)
mov v_conv18_L v_mul1;
mov v_conv18_H 0;
(*   %mul19 = mul nuw i128 %conv17, %conv18, !dbg !1379 *)
mull tmpLL_H tmpLL_L v_conv17_L v_conv18_L;
mul tmpHL_L v_conv17_H v_conv18_L;
mul tmpLH_L v_conv17_L v_conv18_H;
mov v_mul19_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul19_H tmp tmpLL_H;
(*   %conv22 = zext i64 %mul5 to i128, !dbg !1381 *)
mov v_conv22_L v_mul5;
mov v_conv22_H 0;
(*   %mul23 = mul nuw i128 %conv22, %conv17, !dbg !1382 *)
mull tmpLL_H tmpLL_L v_conv22_L v_conv17_L;
mul tmpHL_L v_conv22_H v_conv17_L;
mul tmpLH_L v_conv22_L v_conv17_H;
mov v_mul23_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul23_H tmp tmpLL_H;
(*   %conv25 = zext i64 %2 to i128, !dbg !1384 *)
mov v_conv25_L v2;
mov v_conv25_H 0;
(*   %mul27 = mul nuw i128 %conv25, %conv18, !dbg !1385 *)
mull tmpLL_H tmpLL_L v_conv25_L v_conv18_L;
mul tmpHL_L v_conv25_H v_conv18_L;
mul tmpLH_L v_conv25_L v_conv18_H;
mov v_mul27_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul27_H tmp tmpLL_H;
(*   %conv30 = zext i64 %mul6 to i128, !dbg !1387 *)
mov v_conv30_L v_mul6;
mov v_conv30_H 0;
(*   %mul31 = mul nuw i128 %conv25, %conv30, !dbg !1388 *)
mull tmpLL_H tmpLL_L v_conv25_L v_conv30_L;
mul tmpHL_L v_conv25_H v_conv30_L;
mul tmpLH_L v_conv25_L v_conv30_H;
mov v_mul31_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul31_H tmp tmpLL_H;
(*   %mul36 = mul nuw i128 %conv25, %conv25, !dbg !1390 *)
mull tmpLL_H tmpLL_L v_conv25_L v_conv25_L;
mul tmpHL_L v_conv25_H v_conv25_L;
mul tmpLH_L v_conv25_L v_conv25_H;
mov v_mul36_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul36_H tmp tmpLL_H;
(*   %conv38 = zext i64 %3 to i128, !dbg !1392 *)
mov v_conv38_L v3;
mov v_conv38_H 0;
(*   %mul40 = mul nuw i128 %conv38, %conv18, !dbg !1393 *)
mull tmpLL_H tmpLL_L v_conv38_L v_conv18_L;
mul tmpHL_L v_conv38_H v_conv18_L;
mul tmpLH_L v_conv38_L v_conv18_H;
mov v_mul40_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul40_H tmp tmpLL_H;
(*   %conv43 = zext i64 %mul8 to i128, !dbg !1395 *)
mov v_conv43_L v_mul8;
mov v_conv43_H 0;
(*   %mul44 = mul nuw i128 %conv38, %conv43, !dbg !1396 *)
mull tmpLL_H tmpLL_L v_conv38_L v_conv43_L;
mul tmpHL_L v_conv38_H v_conv43_L;
mul tmpLH_L v_conv38_L v_conv43_H;
mov v_mul44_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul44_H tmp tmpLL_H;
(*   %conv47 = zext i64 %mul10 to i128, !dbg !1398 *)
mov v_conv47_L v_mul10;
mov v_conv47_H 0;
(*   %mul48 = mul nuw i128 %conv38, %conv47, !dbg !1399 *)
mull tmpLL_H tmpLL_L v_conv38_L v_conv47_L;
mul tmpHL_L v_conv38_H v_conv47_L;
mul tmpLH_L v_conv38_L v_conv47_H;
mov v_mul48_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul48_H tmp tmpLL_H;
(*   %mul53 = mul nuw i128 %conv38, %conv38, !dbg !1401 *)
mull tmpLL_H tmpLL_L v_conv38_L v_conv38_L;
mul tmpHL_L v_conv38_H v_conv38_L;
mul tmpLH_L v_conv38_L v_conv38_H;
mov v_mul53_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul53_H tmp tmpLL_H;
(*   %4 = load i64, i64* %arg1, align 8, !dbg !1403, !tbaa !1350 *)
mov v4 L0_0;
(*   %conv55 = zext i64 %4 to i128, !dbg !1404 *)
mov v_conv55_L v4;
mov v_conv55_H 0;
(*   %conv56 = zext i64 %mul3 to i128, !dbg !1405 *)
mov v_conv56_L v_mul3;
mov v_conv56_H 0;
(*   %mul57 = mul nuw i128 %conv55, %conv56, !dbg !1406 *)
mull tmpLL_H tmpLL_L v_conv55_L v_conv56_L;
mul tmpHL_L v_conv55_H v_conv56_L;
mul tmpLH_L v_conv55_L v_conv56_H;
mov v_mul57_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul57_H tmp tmpLL_H;
(*   %mul61 = mul nuw i128 %conv55, %conv43, !dbg !1408 *)
mull tmpLL_H tmpLL_L v_conv55_L v_conv43_L;
mul tmpHL_L v_conv55_H v_conv43_L;
mul tmpLH_L v_conv55_L v_conv43_H;
mov v_mul61_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul61_H tmp tmpLL_H;
(*   %mul65 = mul nuw i128 %conv55, %conv47, !dbg !1410 *)
mull tmpLL_H tmpLL_L v_conv55_L v_conv47_L;
mul tmpHL_L v_conv55_H v_conv47_L;
mul tmpLH_L v_conv55_L v_conv47_H;
mov v_mul65_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul65_H tmp tmpLL_H;
(*   %conv68 = zext i64 %mul12 to i128, !dbg !1412 *)
mov v_conv68_L v_mul12;
mov v_conv68_H 0;
(*   %mul69 = mul nuw i128 %conv55, %conv68, !dbg !1413 *)
mull tmpLL_H tmpLL_L v_conv55_L v_conv68_L;
mul tmpHL_L v_conv55_H v_conv68_L;
mul tmpLH_L v_conv55_L v_conv68_H;
mov v_mul69_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul69_H tmp tmpLL_H;
(*   %mul74 = mul nuw i128 %conv55, %conv55, !dbg !1415 *)
mull tmpLL_H tmpLL_L v_conv55_L v_conv55_L;
mul tmpHL_L v_conv55_H v_conv55_L;
mul tmpLH_L v_conv55_L v_conv55_H;
mov v_mul74_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul74_H tmp tmpLL_H;
(*   %add = add i128 %mul40, %mul31, !dbg !1417 *)
adds carry v_add_L v_mul40_L v_mul31_L;
adc v_add_H v_mul40_H v_mul31_H carry;
(*   %add75 = add i128 %add, %mul74, !dbg !1418 *)
adds carry v_add75_L v_add_L v_mul74_L;
adc v_add75_H v_add_H v_mul74_H carry;
(*   %shr = lshr i128 %add75, 51, !dbg !1420 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add75_L 51;
split tmpH_h tmpH_l v_add75_H 51;
shl tmp tmpH_l 13;
add v_shr_L tmp tmpL_h;
mov v_shr_H tmpH_h;
(* == modified == *)
assert true && tmpH_h = const 64 0;
assume tmpH_h = 0 && true;
(*   %add75.tr = trunc i128 %add75 to i64, !dbg !1421 *)
mov v_add75_tr v_add75_L;
(*   %conv77 = and i64 %add75.tr, 2251799813685247, !dbg !1421 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv77 v_add75_tr 0x7FFFFFFFFFFFF;
assert true && eq v_conv77 tmp_to_be_used;
assume eq v_conv77 tmp_to_be_used && true;
(*   %add78 = add i128 %mul44, %mul36, !dbg !1423 *)
adds carry v_add78_L v_mul44_L v_mul36_L;
adc v_add78_H v_mul44_H v_mul36_H carry;
(*   %add79 = add i128 %add78, %mul57, !dbg !1424 *)
adds carry v_add79_L v_add78_L v_mul57_L;
adc v_add79_H v_add78_H v_mul57_H carry;
(*   %add80 = add i128 %mul48, %mul15, !dbg !1426 *)
adds carry v_add80_L v_mul48_L v_mul15_L;
adc v_add80_H v_mul48_H v_mul15_H carry;
(*   %add81 = add i128 %add80, %mul61, !dbg !1427 *)
adds carry v_add81_L v_add80_L v_mul61_L;
adc v_add81_H v_add80_H v_mul61_H carry;
(*   %add82 = add i128 %mul53, %mul19, !dbg !1429 *)
adds carry v_add82_L v_mul53_L v_mul19_L;
adc v_add82_H v_mul53_H v_mul19_H carry;
(*   %add83 = add i128 %add82, %mul65, !dbg !1430 *)
adds carry v_add83_L v_add82_L v_mul65_L;
adc v_add83_H v_add82_H v_mul65_H carry;
(*   %add84 = add i128 %mul27, %mul23, !dbg !1432 *)
adds carry v_add84_L v_mul27_L v_mul23_L;
adc v_add84_H v_mul27_H v_mul23_H carry;
(*   %add85 = add i128 %add84, %mul69, !dbg !1433 *)
adds carry v_add85_L v_add84_L v_mul69_L;
adc v_add85_H v_add84_H v_mul69_H carry;
(*   %conv86 = and i128 %shr, 18446744073709551615, !dbg !1435 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv86_L v_shr_L 0xFFFFFFFFFFFFFFFF;
assert true && eq v_conv86_L v_shr_L;
assume eq v_conv86_L v_shr_L && true;
and v_conv86_H v_shr_H 0x0;
assert true && eq v_conv86_H (const 64 0);
assume eq v_conv86_H 0 && true;
(*   %add87 = add i128 %conv86, %add85, !dbg !1436 *)
adds carry v_add87_L v_conv86_L v_add85_L;
adc v_add87_H v_conv86_H v_add85_H carry;
(*   %shr88 = lshr i128 %add87, 51, !dbg !1438 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add87_L 51;
split tmpH_h tmpH_l v_add87_H 51;
shl tmp tmpH_l 13;
add v_shr88_L tmp tmpL_h;
mov v_shr88_H tmpH_h;
(* == modified == *)
assert true && tmpH_h = const 64 0;
assume tmpH_h = 0 && true;
(*   %fold = add i128 %shr, %add85, !dbg !1439 *)
adds carry v_fold_L v_shr_L v_add85_L;
(*adc v_fold_H v_shr_H v_add85_H carry;*)
(* == modified == *)
adcs discard v_fold_H v_shr_H v_add85_H carry;
(*   %fold.tr = trunc i128 %fold to i64, !dbg !1440 *)
mov v_fold_tr v_fold_L;
(*   %conv91 = and i64 %fold.tr, 2251799813685247, !dbg !1440 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv91 v_fold_tr 0x7FFFFFFFFFFFF;
assert true && eq v_conv91 tmp_to_be_used;
assume eq v_conv91 tmp_to_be_used && true;
(*   %conv92 = and i128 %shr88, 18446744073709551615, !dbg !1442 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv92_L v_shr88_L 0xFFFFFFFFFFFFFFFF;
assert true && eq v_conv92_L v_shr88_L;
assume eq v_conv92_L v_shr88_L && true;
and v_conv92_H v_shr88_H 0x0;
assert true && eq v_conv92_H (const 64 0);
assume eq v_conv92_H 0 && true;
(*   %add93 = add i128 %conv92, %add83, !dbg !1443 *)
adds carry v_add93_L v_conv92_L v_add83_L;
adc v_add93_H v_conv92_H v_add83_H carry;
(*   %shr94 = lshr i128 %add93, 51, !dbg !1445 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add93_L 51;
split tmpH_h tmpH_l v_add93_H 51;
shl tmp tmpH_l 13;
add v_shr94_L tmp tmpL_h;
mov v_shr94_H tmpH_h;
(* == modified == *)
assert true && tmpH_h = const 64 0;
assume tmpH_h = 0 && true;
(*   %fold213 = add i128 %shr88, %add83, !dbg !1446 *)
adds carry v_fold213_L v_shr88_L v_add83_L;
(*adc v_fold213_H v_shr88_H v_add83_H carry;*)
(* == modified == *)
adcs discard v_fold213_H v_shr88_H v_add83_H carry;
(*   %fold213.tr = trunc i128 %fold213 to i64, !dbg !1447 *)
mov v_fold213_tr v_fold213_L;
(*   %conv97 = and i64 %fold213.tr, 2251799813685247, !dbg !1447 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv97 v_fold213_tr 0x7FFFFFFFFFFFF;
assert true && eq v_conv97 tmp_to_be_used;
assume eq v_conv97 tmp_to_be_used && true;
(*   %conv98 = and i128 %shr94, 18446744073709551615, !dbg !1449 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv98_L v_shr94_L 0xFFFFFFFFFFFFFFFF;
assert true && eq v_conv98_L v_shr94_L;
assume eq v_conv98_L v_shr94_L && true;
and v_conv98_H v_shr94_H 0x0;
assert true && eq v_conv98_H (const 64 0);
assume eq v_conv98_H 0 && true;
(*   %add99 = add i128 %conv98, %add81, !dbg !1450 *)
adds carry v_add99_L v_conv98_L v_add81_L;
adc v_add99_H v_conv98_H v_add81_H carry;
(*   %shr100 = lshr i128 %add99, 51, !dbg !1452 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add99_L 51;
split tmpH_h tmpH_l v_add99_H 51;
shl tmp tmpH_l 13;
add v_shr100_L tmp tmpL_h;
mov v_shr100_H tmpH_h;
(* == modified == *)
assert true && tmpH_h = const 64 0;
assume tmpH_h = 0 && true;
(*   %fold214 = add i128 %shr94, %add81, !dbg !1453 *)
adds carry v_fold214_L v_shr94_L v_add81_L;
(*adc v_fold214_H v_shr94_H v_add81_H carry;*)
(* == modified == *)
adcs discard v_fold214_H v_shr94_H v_add81_H carry;
(*   %fold214.tr = trunc i128 %fold214 to i64, !dbg !1454 *)
mov v_fold214_tr v_fold214_L;
(*   %conv103 = and i64 %fold214.tr, 2251799813685247, !dbg !1454 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv103 v_fold214_tr 0x7FFFFFFFFFFFF;
assert true && eq v_conv103 tmp_to_be_used;
assume eq v_conv103 tmp_to_be_used && true;
(*   %conv104 = and i128 %shr100, 18446744073709551615, !dbg !1456 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv104_L v_shr100_L 0xFFFFFFFFFFFFFFFF;
assert true && eq v_conv104_L v_shr100_L;
assume eq v_conv104_L v_shr100_L && true;
and v_conv104_H v_shr100_H 0x0;
assert true && eq v_conv104_H (const 64 0);
assume eq v_conv104_H 0 && true;
(*   %add105 = add i128 %conv104, %add79, !dbg !1457 *)
adds carry v_add105_L v_conv104_L v_add79_L;
adc v_add105_H v_conv104_H v_add79_H carry;
(*   %shr106 = lshr i128 %add105, 51, !dbg !1459 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add105_L 51;
split tmpH_h tmpH_l v_add105_H 51;
shl tmp tmpH_l 13;
add v_shr106_L tmp tmpL_h;
mov v_shr106_H tmpH_h;
(* == modified == *)
assert true && tmpH_h = const 64 0;
assume tmpH_h = 0 && true;
(*   %conv107 = trunc i128 %shr106 to i64, !dbg !1460 *)
mov v_conv107 v_shr106_L;
(*   %fold215 = add i128 %shr100, %add79, !dbg !1462 *)
adds carry v_fold215_L v_shr100_L v_add79_L;
(*adc v_fold215_H v_shr100_H v_add79_H carry;*)
(* == modified == *)
adcs discard v_fold215_H v_shr100_H v_add79_H carry;
(*   %fold215.tr = trunc i128 %fold215 to i64, !dbg !1463 *)
mov v_fold215_tr v_fold215_L;
(*   %conv109 = and i64 %fold215.tr, 2251799813685247, !dbg !1463 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv109 v_fold215_tr 0x7FFFFFFFFFFFF;
assert true && eq v_conv109 tmp_to_be_used;
assume eq v_conv109 tmp_to_be_used && true;
(*   %mul110 = mul i64 %conv107, 19, !dbg !1465 *)
mul v_mul110 v_conv107 19;
(*   %add111 = add i64 %mul110, %conv77, !dbg !1467 *)
add v_add111 v_mul110 v_conv77;
(*   %shr112 = lshr i64 %add111, 51, !dbg !1469 *)
(* You may need to modify here *)
split v_shr112 tmp_to_be_used v_add111 51;
(*   %fold216 = add i64 %mul110, %add75.tr, !dbg !1471 *)
(*add v_fold216 v_mul110 v_add75_tr;*)
(* == modified == *)
adds discard v_fold216 v_mul110 v_add75_tr;
(*   %and113 = and i64 %fold216, 2251799813685247, !dbg !1471 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_and113 v_fold216 0x7FFFFFFFFFFFF;
assert true && eq v_and113 tmp_to_be_used;
assume eq v_and113 tmp_to_be_used && true;
(*   %add114 = add nuw nsw i64 %shr112, %conv91, !dbg !1473 *)
add v_add114 v_shr112 v_conv91;
(*   %shr115 = lshr i64 %add114, 51, !dbg !1475 *)
(* You may need to modify here *)
split v_shr115 tmp_to_be_used v_add114 51;
(*   %fold217 = add i64 %shr112, %fold.tr, !dbg !1477 *)
(*add v_fold217 v_shr112 v_fold_tr;*)
(* == modified == *)
adds discard v_fold217 v_shr112 v_fold_tr;
(*   %and116 = and i64 %fold217, 2251799813685247, !dbg !1477 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_and116 v_fold217 0x7FFFFFFFFFFFF;
assert true && eq v_and116 tmp_to_be_used;
assume eq v_and116 tmp_to_be_used && true;
(*   %add117 = add nuw nsw i64 %shr115, %conv97, !dbg !1479 *)
add v_add117 v_shr115 v_conv97;
(*   store i64 %and113, i64* %out1, align 8, !dbg !1481, !tbaa !1350 *)
mov L1_0 v_and113;
(*   %arrayidx119 = getelementptr inbounds i64, i64* %out1, i64 1, !dbg !1482 *)
(*   store i64 %and116, i64* %arrayidx119, align 8, !dbg !1483, !tbaa !1350 *)
mov L1_8 v_and116;
(*   %arrayidx120 = getelementptr inbounds i64, i64* %out1, i64 2, !dbg !1484 *)
(*   store i64 %add117, i64* %arrayidx120, align 8, !dbg !1485, !tbaa !1350 *)
mov L1_16 v_add117;
(*   %arrayidx121 = getelementptr inbounds i64, i64* %out1, i64 3, !dbg !1486 *)
(*   store i64 %conv103, i64* %arrayidx121, align 8, !dbg !1487, !tbaa !1350 *)
mov L1_24 v_conv103;
(*   %arrayidx122 = getelementptr inbounds i64, i64* %out1, i64 4, !dbg !1488 *)
(*   store i64 %conv109, i64* %arrayidx122, align 8, !dbg !1489, !tbaa !1350 *)
mov L1_32 v_conv109;
(*   ret void, !dbg !1490 *)

mov c0 L1_0;
mov c1 L1_8;
mov c2 L1_16;
mov c3 L1_24;
mov c4 L1_32;


{
  eqmod
    (limbs 51 [c0, c1, c2, c3, c4])

    (
      (limbs 51 [a0, a1, a2, a3, a4])
      *
      (limbs 51 [a0, a1, a2, a3, a4])
    )

    ((limbs 255 [0, 1]) - 19)
  &&
  and [
    c0 <= const 64 0x8cccccccccccc,
    c1 <= const 64 0x8cccccccccccc,
    c2 <= const 64 0x8cccccccccccc,
    c3 <= const 64 0x8cccccccccccc,
    c4 <= const 64 0x8cccccccccccc
  ]
}

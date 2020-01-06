(* quine: -isafety -jobs 1 -rename_local
         Overall                        [OK]            1405.391365 seconds
Verifying algebraic assertions:         [OK]            1.170852 seconds
Verifying range assertions:             [OK]            567.008761 seconds
Verifying range specification:          [OK]            58.622236 seconds
Verifying algebraic specification:      [OK]            1195.372304 seconds
Verification result:                    [OK]            3227.673518 seconds
*)


proc fe_mul_impl (a0, a1, a2, a3, a4, b0, b1, b2, b3, b4; c0, c1, c2, c3, c4) =

mov L0_0 a0;
mov L0_8 a1;
mov L0_16 a2;
mov L0_24 a3;
mov L0_32 a4;
mov L1_0 b0;
mov L1_8 b1;
mov L1_16 b2;
mov L1_24 b3;
mov L1_32 b4;

(*   %arrayidx.i = getelementptr inbounds i64, i64* %in1, i64 4, !dbg !1356 *)
(*   %0 = load i64, i64* %arrayidx.i, align 8, !dbg !1356, !tbaa !1357 *)
mov v0 L0_32;
(*   %conv.i = zext i64 %0 to i128, !dbg !1361 *)
mov v_conv_i_L v0;
mov v_conv_i_H 0;
(*   %arrayidx1.i = getelementptr inbounds i64, i64* %in2, i64 4, !dbg !1362 *)
(*   %1 = load i64, i64* %arrayidx1.i, align 8, !dbg !1362, !tbaa !1357 *)
mov v1 L1_32;
(*   %mul.i = mul i64 %1, 19, !dbg !1363 *)
mul v_mul_i v1 19;
(*   %conv2.i = zext i64 %mul.i to i128, !dbg !1364 *)
mov v_conv2_i_L v_mul_i;
mov v_conv2_i_H 0;
(*   %mul3.i = mul nuw i128 %conv2.i, %conv.i, !dbg !1365 *)
mull tmpLL_H tmpLL_L v_conv2_i_L v_conv_i_L;
mul tmpHL_L v_conv2_i_H v_conv_i_L;
mul tmpLH_L v_conv2_i_L v_conv_i_H;
mov v_mul3_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul3_i_H tmp tmpLL_H;
(*   %arrayidx6.i = getelementptr inbounds i64, i64* %in2, i64 3, !dbg !1367 *)
(*   %2 = load i64, i64* %arrayidx6.i, align 8, !dbg !1367, !tbaa !1357 *)
mov v2 L1_24;
(*   %mul7.i = mul i64 %2, 19, !dbg !1368 *)
mul v_mul7_i v2 19;
(*   %conv8.i = zext i64 %mul7.i to i128, !dbg !1369 *)
mov v_conv8_i_L v_mul7_i;
mov v_conv8_i_H 0;
(*   %mul9.i = mul nuw i128 %conv8.i, %conv.i, !dbg !1370 *)
mull tmpLL_H tmpLL_L v_conv8_i_L v_conv_i_L;
mul tmpHL_L v_conv8_i_H v_conv_i_L;
mul tmpLH_L v_conv8_i_L v_conv_i_H;
mov v_mul9_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul9_i_H tmp tmpLL_H;
(*   %arrayidx12.i = getelementptr inbounds i64, i64* %in2, i64 2, !dbg !1372 *)
(*   %3 = load i64, i64* %arrayidx12.i, align 8, !dbg !1372, !tbaa !1357 *)
mov v3 L1_16;
(*   %mul13.i = mul i64 %3, 19, !dbg !1373 *)
mul v_mul13_i v3 19;
(*   %conv14.i = zext i64 %mul13.i to i128, !dbg !1374 *)
mov v_conv14_i_L v_mul13_i;
mov v_conv14_i_H 0;
(*   %mul15.i = mul nuw i128 %conv14.i, %conv.i, !dbg !1375 *)
mull tmpLL_H tmpLL_L v_conv14_i_L v_conv_i_L;
mul tmpHL_L v_conv14_i_H v_conv_i_L;
mul tmpLH_L v_conv14_i_L v_conv_i_H;
mov v_mul15_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul15_i_H tmp tmpLL_H;
(*   %arrayidx18.i = getelementptr inbounds i64, i64* %in2, i64 1, !dbg !1377 *)
(*   %4 = load i64, i64* %arrayidx18.i, align 8, !dbg !1377, !tbaa !1357 *)
mov v4 L1_8;
(*   %mul19.i = mul i64 %4, 19, !dbg !1378 *)
mul v_mul19_i v4 19;
(*   %conv20.i = zext i64 %mul19.i to i128, !dbg !1379 *)
mov v_conv20_i_L v_mul19_i;
mov v_conv20_i_H 0;
(*   %mul21.i = mul nuw i128 %conv20.i, %conv.i, !dbg !1380 *)
mull tmpLL_H tmpLL_L v_conv20_i_L v_conv_i_L;
mul tmpHL_L v_conv20_i_H v_conv_i_L;
mul tmpLH_L v_conv20_i_L v_conv_i_H;
mov v_mul21_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul21_i_H tmp tmpLL_H;
(*   %arrayidx22.i = getelementptr inbounds i64, i64* %in1, i64 3, !dbg !1382 *)
(*   %5 = load i64, i64* %arrayidx22.i, align 8, !dbg !1382, !tbaa !1357 *)
mov v5 L0_24;
(*   %conv23.i = zext i64 %5 to i128, !dbg !1383 *)
mov v_conv23_i_L v5;
mov v_conv23_i_H 0;
(*   %mul27.i = mul nuw i128 %conv23.i, %conv2.i, !dbg !1384 *)
mull tmpLL_H tmpLL_L v_conv23_i_L v_conv2_i_L;
mul tmpHL_L v_conv23_i_H v_conv2_i_L;
mul tmpLH_L v_conv23_i_L v_conv2_i_H;
mov v_mul27_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul27_i_H tmp tmpLL_H;
(*   %mul33.i = mul nuw i128 %conv23.i, %conv8.i, !dbg !1386 *)
mull tmpLL_H tmpLL_L v_conv23_i_L v_conv8_i_L;
mul tmpHL_L v_conv23_i_H v_conv8_i_L;
mul tmpLH_L v_conv23_i_L v_conv8_i_H;
mov v_mul33_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul33_i_H tmp tmpLL_H;
(*   %mul39.i = mul nuw i128 %conv23.i, %conv14.i, !dbg !1388 *)
mull tmpLL_H tmpLL_L v_conv23_i_L v_conv14_i_L;
mul tmpHL_L v_conv23_i_H v_conv14_i_L;
mul tmpLH_L v_conv23_i_L v_conv14_i_H;
mov v_mul39_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul39_i_H tmp tmpLL_H;
(*   %arrayidx40.i = getelementptr inbounds i64, i64* %in1, i64 2, !dbg !1390 *)
(*   %6 = load i64, i64* %arrayidx40.i, align 8, !dbg !1390, !tbaa !1357 *)
mov v6 L0_16;
(*   %conv41.i = zext i64 %6 to i128, !dbg !1391 *)
mov v_conv41_i_L v6;
mov v_conv41_i_H 0;
(*   %mul45.i = mul nuw i128 %conv41.i, %conv2.i, !dbg !1392 *)
mull tmpLL_H tmpLL_L v_conv41_i_L v_conv2_i_L;
mul tmpHL_L v_conv41_i_H v_conv2_i_L;
mul tmpLH_L v_conv41_i_L v_conv2_i_H;
mov v_mul45_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul45_i_H tmp tmpLL_H;
(*   %mul51.i = mul nuw i128 %conv41.i, %conv8.i, !dbg !1394 *)
mull tmpLL_H tmpLL_L v_conv41_i_L v_conv8_i_L;
mul tmpHL_L v_conv41_i_H v_conv8_i_L;
mul tmpLH_L v_conv41_i_L v_conv8_i_H;
mov v_mul51_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul51_i_H tmp tmpLL_H;
(*   %arrayidx52.i = getelementptr inbounds i64, i64* %in1, i64 1, !dbg !1396 *)
(*   %7 = load i64, i64* %arrayidx52.i, align 8, !dbg !1396, !tbaa !1357 *)
mov v7 L0_8;
(*   %conv53.i = zext i64 %7 to i128, !dbg !1397 *)
mov v_conv53_i_L v7;
mov v_conv53_i_H 0;
(*   %mul57.i = mul nuw i128 %conv53.i, %conv2.i, !dbg !1398 *)
mull tmpLL_H tmpLL_L v_conv53_i_L v_conv2_i_L;
mul tmpHL_L v_conv53_i_H v_conv2_i_L;
mul tmpLH_L v_conv53_i_L v_conv2_i_H;
mov v_mul57_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul57_i_H tmp tmpLL_H;
(*   %8 = load i64, i64* %in2, align 8, !dbg !1400, !tbaa !1357 *)
mov v8 L1_0;
(*   %conv61.i = zext i64 %8 to i128, !dbg !1401 *)
mov v_conv61_i_L v8;
mov v_conv61_i_H 0;
(*   %mul62.i = mul nuw i128 %conv61.i, %conv.i, !dbg !1402 *)
mull tmpLL_H tmpLL_L v_conv61_i_L v_conv_i_L;
mul tmpHL_L v_conv61_i_H v_conv_i_L;
mul tmpLH_L v_conv61_i_L v_conv_i_H;
mov v_mul62_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul62_i_H tmp tmpLL_H;
(*   %conv66.i = zext i64 %4 to i128, !dbg !1404 *)
mov v_conv66_i_L v4;
mov v_conv66_i_H 0;
(*   %mul67.i = mul nuw i128 %conv23.i, %conv66.i, !dbg !1405 *)
mull tmpLL_H tmpLL_L v_conv23_i_L v_conv66_i_L;
mul tmpHL_L v_conv23_i_H v_conv66_i_L;
mul tmpLH_L v_conv23_i_L v_conv66_i_H;
mov v_mul67_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul67_i_H tmp tmpLL_H;
(*   %mul72.i = mul nuw i128 %conv61.i, %conv23.i, !dbg !1407 *)
mull tmpLL_H tmpLL_L v_conv61_i_L v_conv23_i_L;
mul tmpHL_L v_conv61_i_H v_conv23_i_L;
mul tmpLH_L v_conv61_i_L v_conv23_i_H;
mov v_mul72_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul72_i_H tmp tmpLL_H;
(*   %conv76.i = zext i64 %3 to i128, !dbg !1409 *)
mov v_conv76_i_L v3;
mov v_conv76_i_H 0;
(*   %mul77.i = mul nuw i128 %conv41.i, %conv76.i, !dbg !1410 *)
mull tmpLL_H tmpLL_L v_conv41_i_L v_conv76_i_L;
mul tmpHL_L v_conv41_i_H v_conv76_i_L;
mul tmpLH_L v_conv41_i_L v_conv76_i_H;
mov v_mul77_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul77_i_H tmp tmpLL_H;
(*   %mul82.i = mul nuw i128 %conv41.i, %conv66.i, !dbg !1412 *)
mull tmpLL_H tmpLL_L v_conv41_i_L v_conv66_i_L;
mul tmpHL_L v_conv41_i_H v_conv66_i_L;
mul tmpLH_L v_conv41_i_L v_conv66_i_H;
mov v_mul82_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul82_i_H tmp tmpLL_H;
(*   %mul87.i = mul nuw i128 %conv61.i, %conv41.i, !dbg !1414 *)
mull tmpLL_H tmpLL_L v_conv61_i_L v_conv41_i_L;
mul tmpHL_L v_conv61_i_H v_conv41_i_L;
mul tmpLH_L v_conv61_i_L v_conv41_i_H;
mov v_mul87_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul87_i_H tmp tmpLL_H;
(*   %conv91.i = zext i64 %2 to i128, !dbg !1416 *)
mov v_conv91_i_L v2;
mov v_conv91_i_H 0;
(*   %mul92.i = mul nuw i128 %conv53.i, %conv91.i, !dbg !1417 *)
mull tmpLL_H tmpLL_L v_conv53_i_L v_conv91_i_L;
mul tmpHL_L v_conv53_i_H v_conv91_i_L;
mul tmpLH_L v_conv53_i_L v_conv91_i_H;
mov v_mul92_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul92_i_H tmp tmpLL_H;
(*   %mul97.i = mul nuw i128 %conv53.i, %conv76.i, !dbg !1419 *)
mull tmpLL_H tmpLL_L v_conv53_i_L v_conv76_i_L;
mul tmpHL_L v_conv53_i_H v_conv76_i_L;
mul tmpLH_L v_conv53_i_L v_conv76_i_H;
mov v_mul97_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul97_i_H tmp tmpLL_H;
(*   %mul102.i = mul nuw i128 %conv53.i, %conv66.i, !dbg !1421 *)
mull tmpLL_H tmpLL_L v_conv53_i_L v_conv66_i_L;
mul tmpHL_L v_conv53_i_H v_conv66_i_L;
mul tmpLH_L v_conv53_i_L v_conv66_i_H;
mov v_mul102_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul102_i_H tmp tmpLL_H;
(*   %mul107.i = mul nuw i128 %conv61.i, %conv53.i, !dbg !1423 *)
mull tmpLL_H tmpLL_L v_conv61_i_L v_conv53_i_L;
mul tmpHL_L v_conv61_i_H v_conv53_i_L;
mul tmpLH_L v_conv61_i_L v_conv53_i_H;
mov v_mul107_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul107_i_H tmp tmpLL_H;
(*   %9 = load i64, i64* %in1, align 8, !dbg !1425, !tbaa !1357 *)
mov v9 L0_0;
(*   %conv109.i = zext i64 %9 to i128, !dbg !1426 *)
mov v_conv109_i_L v9;
mov v_conv109_i_H 0;
(*   %conv111.i = zext i64 %1 to i128, !dbg !1427 *)
mov v_conv111_i_L v1;
mov v_conv111_i_H 0;
(*   %mul112.i = mul nuw i128 %conv109.i, %conv111.i, !dbg !1428 *)
mull tmpLL_H tmpLL_L v_conv109_i_L v_conv111_i_L;
mul tmpHL_L v_conv109_i_H v_conv111_i_L;
mul tmpLH_L v_conv109_i_L v_conv111_i_H;
mov v_mul112_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul112_i_H tmp tmpLL_H;
(*   %mul117.i = mul nuw i128 %conv109.i, %conv91.i, !dbg !1430 *)
mull tmpLL_H tmpLL_L v_conv109_i_L v_conv91_i_L;
mul tmpHL_L v_conv109_i_H v_conv91_i_L;
mul tmpLH_L v_conv109_i_L v_conv91_i_H;
mov v_mul117_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul117_i_H tmp tmpLL_H;
(*   %mul122.i = mul nuw i128 %conv109.i, %conv76.i, !dbg !1432 *)
mull tmpLL_H tmpLL_L v_conv109_i_L v_conv76_i_L;
mul tmpHL_L v_conv109_i_H v_conv76_i_L;
mul tmpLH_L v_conv109_i_L v_conv76_i_H;
mov v_mul122_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul122_i_H tmp tmpLL_H;
(*   %mul127.i = mul nuw i128 %conv109.i, %conv66.i, !dbg !1434 *)
mull tmpLL_H tmpLL_L v_conv109_i_L v_conv66_i_L;
mul tmpHL_L v_conv109_i_H v_conv66_i_L;
mul tmpLH_L v_conv109_i_L v_conv66_i_H;
mov v_mul127_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul127_i_H tmp tmpLL_H;
(*   %mul132.i = mul nuw i128 %conv109.i, %conv61.i, !dbg !1436 *)
mull tmpLL_H tmpLL_L v_conv109_i_L v_conv61_i_L;
mul tmpHL_L v_conv109_i_H v_conv61_i_L;
mul tmpLH_L v_conv109_i_L v_conv61_i_H;
mov v_mul132_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul132_i_H tmp tmpLL_H;
(*   %add.i = add i128 %mul39.i, %mul21.i, !dbg !1438 *)
adds carry v_add_i_L v_mul39_i_L v_mul21_i_L;
adc v_add_i_H v_mul39_i_H v_mul21_i_H carry;
(*   %add133.i = add i128 %add.i, %mul51.i, !dbg !1439 *)
adds carry v_add133_i_L v_add_i_L v_mul51_i_L;
adc v_add133_i_H v_add_i_H v_mul51_i_H carry;
(*   %add134.i = add i128 %add133.i, %mul57.i, !dbg !1440 *)
adds carry v_add134_i_L v_add133_i_L v_mul57_i_L;
adc v_add134_i_H v_add133_i_H v_mul57_i_H carry;
(*   %add135.i = add i128 %add134.i, %mul132.i, !dbg !1441 *)
adds carry v_add135_i_L v_add134_i_L v_mul132_i_L;
adc v_add135_i_H v_add134_i_H v_mul132_i_H carry;
(*   %shr.i = lshr i128 %add135.i, 51, !dbg !1443 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add135_i_L 51;
split tmpH_h tmpH_l v_add135_i_H 51;
shl tmp tmpH_l 13;
add v_shr_i_L tmp tmpL_h;
mov v_shr_i_H tmpH_h;
(* == modified == *)
assert true && tmpH_h = const 64 0;
assume tmpH_h = 0 && true;
(*   %add135.tr.i = trunc i128 %add135.i to i64, !dbg !1444 *)
mov v_add135_tr_i v_add135_i_L;
(*   %conv137.i = and i64 %add135.tr.i, 2251799813685247, !dbg !1444 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv137_i v_add135_tr_i 0x7FFFFFFFFFFFF;
assert true && eq v_conv137_i tmp_to_be_used;
assume eq v_conv137_i tmp_to_be_used && true;
(*   %add138.i = add i128 %mul77.i, %mul67.i, !dbg !1446 *)
adds carry v_add138_i_L v_mul77_i_L v_mul67_i_L;
adc v_add138_i_H v_mul77_i_H v_mul67_i_H carry;
(*   %add139.i = add i128 %add138.i, %mul92.i, !dbg !1447 *)
adds carry v_add139_i_L v_add138_i_L v_mul92_i_L;
adc v_add139_i_H v_add138_i_H v_mul92_i_H carry;
(*   %add140.i = add i128 %add139.i, %mul62.i, !dbg !1448 *)
adds carry v_add140_i_L v_add139_i_L v_mul62_i_L;
adc v_add140_i_H v_add139_i_H v_mul62_i_H carry;
(*   %add141.i = add i128 %add140.i, %mul112.i, !dbg !1449 *)
adds carry v_add141_i_L v_add140_i_L v_mul112_i_L;
adc v_add141_i_H v_add140_i_H v_mul112_i_H carry;
(*   %add142.i = add i128 %mul82.i, %mul3.i, !dbg !1451 *)
adds carry v_add142_i_L v_mul82_i_L v_mul3_i_L;
adc v_add142_i_H v_mul82_i_H v_mul3_i_H carry;
(*   %add143.i = add i128 %add142.i, %mul97.i, !dbg !1452 *)
adds carry v_add143_i_L v_add142_i_L v_mul97_i_L;
adc v_add143_i_H v_add142_i_H v_mul97_i_H carry;
(*   %add144.i = add i128 %add143.i, %mul72.i, !dbg !1453 *)
adds carry v_add144_i_L v_add143_i_L v_mul72_i_L;
adc v_add144_i_H v_add143_i_H v_mul72_i_H carry;
(*   %add145.i = add i128 %add144.i, %mul117.i, !dbg !1454 *)
adds carry v_add145_i_L v_add144_i_L v_mul117_i_L;
adc v_add145_i_H v_add144_i_H v_mul117_i_H carry;
(*   %add146.i = add i128 %mul27.i, %mul9.i, !dbg !1456 *)
adds carry v_add146_i_L v_mul27_i_L v_mul9_i_L;
adc v_add146_i_H v_mul27_i_H v_mul9_i_H carry;
(*   %add147.i = add i128 %add146.i, %mul102.i, !dbg !1457 *)
adds carry v_add147_i_L v_add146_i_L v_mul102_i_L;
adc v_add147_i_H v_add146_i_H v_mul102_i_H carry;
(*   %add148.i = add i128 %add147.i, %mul87.i, !dbg !1458 *)
adds carry v_add148_i_L v_add147_i_L v_mul87_i_L;
adc v_add148_i_H v_add147_i_H v_mul87_i_H carry;
(*   %add149.i = add i128 %add148.i, %mul122.i, !dbg !1459 *)
adds carry v_add149_i_L v_add148_i_L v_mul122_i_L;
adc v_add149_i_H v_add148_i_H v_mul122_i_H carry;
(*   %add150.i = add i128 %mul33.i, %mul15.i, !dbg !1461 *)
adds carry v_add150_i_L v_mul33_i_L v_mul15_i_L;
adc v_add150_i_H v_mul33_i_H v_mul15_i_H carry;
(*   %add151.i = add i128 %add150.i, %mul45.i, !dbg !1462 *)
adds carry v_add151_i_L v_add150_i_L v_mul45_i_L;
adc v_add151_i_H v_add150_i_H v_mul45_i_H carry;
(*   %add152.i = add i128 %add151.i, %mul107.i, !dbg !1463 *)
adds carry v_add152_i_L v_add151_i_L v_mul107_i_L;
adc v_add152_i_H v_add151_i_H v_mul107_i_H carry;
(*   %add153.i = add i128 %add152.i, %mul127.i, !dbg !1464 *)
adds carry v_add153_i_L v_add152_i_L v_mul127_i_L;
adc v_add153_i_H v_add152_i_H v_mul127_i_H carry;
(*   %conv154.i = and i128 %shr.i, 18446744073709551615, !dbg !1466 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv154_i_L v_shr_i_L 0xFFFFFFFFFFFFFFFF;
assert true && eq v_conv154_i_L v_shr_i_L;
assume eq v_conv154_i_L v_shr_i_L && true;
and v_conv154_i_H v_shr_i_H 0x0;
assert true && eq v_conv154_i_H (const 64 0);
assume eq v_conv154_i_H 0 && true;
(*   %add155.i = add i128 %conv154.i, %add153.i, !dbg !1467 *)
adds carry v_add155_i_L v_conv154_i_L v_add153_i_L;
adc v_add155_i_H v_conv154_i_H v_add153_i_H carry;
(*   %shr156.i = lshr i128 %add155.i, 51, !dbg !1469 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add155_i_L 51;
split tmpH_h tmpH_l v_add155_i_H 51;
shl tmp tmpH_l 13;
add v_shr156_i_L tmp tmpL_h;
mov v_shr156_i_H tmpH_h;
(* == modified == *)
assert true && tmpH_h = const 64 0;
assume tmpH_h = 0 && true;
(*   %fold.i = add i128 %shr.i, %add153.i, !dbg !1470 *)
adds carry v_fold_i_L v_shr_i_L v_add153_i_L;
(*adc v_fold_i_H v_shr_i_H v_add153_i_H carry;*)
(* == modified == *)
adcs discard v_fold_i_H v_shr_i_H v_add153_i_H carry;
(*   %fold.tr.i = trunc i128 %fold.i to i64, !dbg !1471 *)
mov v_fold_tr_i v_fold_i_L;
(*   %conv159.i = and i64 %fold.tr.i, 2251799813685247, !dbg !1471 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv159_i v_fold_tr_i 0x7FFFFFFFFFFFF;
assert true && eq v_conv159_i tmp_to_be_used;
assume eq v_conv159_i tmp_to_be_used && true;
(*   %conv160.i = and i128 %shr156.i, 18446744073709551615, !dbg !1473 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv160_i_L v_shr156_i_L 0xFFFFFFFFFFFFFFFF;
assert true && eq v_conv160_i_L v_shr156_i_L;
assume eq v_conv160_i_L v_shr156_i_L && true;
and v_conv160_i_H v_shr156_i_H 0x0;
assert true && eq v_conv160_i_H (const 64 0);
assume eq v_conv160_i_H 0 && true;
(*   %add161.i = add i128 %conv160.i, %add149.i, !dbg !1474 *)
adds carry v_add161_i_L v_conv160_i_L v_add149_i_L;
adc v_add161_i_H v_conv160_i_H v_add149_i_H carry;
(*   %shr162.i = lshr i128 %add161.i, 51, !dbg !1476 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add161_i_L 51;
split tmpH_h tmpH_l v_add161_i_H 51;
shl tmp tmpH_l 13;
add v_shr162_i_L tmp tmpL_h;
mov v_shr162_i_H tmpH_h;
(* == modified == *)
assert true && tmpH_h = const 64 0;
assume tmpH_h = 0 && true;
(*   %fold302.i = add i128 %shr156.i, %add149.i, !dbg !1477 *)
adds carry v_fold302_i_L v_shr156_i_L v_add149_i_L;
(*adc v_fold302_i_H v_shr156_i_H v_add149_i_H carry;*)
(* == modified == *)
adcs discard v_fold302_i_H v_shr156_i_H v_add149_i_H carry;
(*   %fold302.tr.i = trunc i128 %fold302.i to i64, !dbg !1478 *)
mov v_fold302_tr_i v_fold302_i_L;
(*   %conv165.i = and i64 %fold302.tr.i, 2251799813685247, !dbg !1478 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv165_i v_fold302_tr_i 0x7FFFFFFFFFFFF;
assert true && eq v_conv165_i tmp_to_be_used;
assume eq v_conv165_i tmp_to_be_used && true;
(*   %conv166.i = and i128 %shr162.i, 18446744073709551615, !dbg !1480 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv166_i_L v_shr162_i_L 0xFFFFFFFFFFFFFFFF;
assert true && eq v_conv166_i_L v_shr162_i_L;
assume eq v_conv166_i_L v_shr162_i_L && true;
and v_conv166_i_H v_shr162_i_H 0x0;
assert true && eq v_conv166_i_H (const 64 0);
assume eq v_conv166_i_H 0 && true;
(*   %add167.i = add i128 %conv166.i, %add145.i, !dbg !1481 *)
adds carry v_add167_i_L v_conv166_i_L v_add145_i_L;
adc v_add167_i_H v_conv166_i_H v_add145_i_H carry;
(*   %shr168.i = lshr i128 %add167.i, 51, !dbg !1483 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add167_i_L 51;
split tmpH_h tmpH_l v_add167_i_H 51;
shl tmp tmpH_l 13;
add v_shr168_i_L tmp tmpL_h;
mov v_shr168_i_H tmpH_h;
(* == modified == *)
assert true && tmpH_h = const 64 0;
assume tmpH_h = 0 && true;
(*   %fold303.i = add i128 %shr162.i, %add145.i, !dbg !1484 *)
adds carry v_fold303_i_L v_shr162_i_L v_add145_i_L;
(*adc v_fold303_i_H v_shr162_i_H v_add145_i_H carry;*)
(* == modified == *)
adcs discard v_fold303_i_H v_shr162_i_H v_add145_i_H carry;
(*   %fold303.tr.i = trunc i128 %fold303.i to i64, !dbg !1485 *)
mov v_fold303_tr_i v_fold303_i_L;
(*   %conv171.i = and i64 %fold303.tr.i, 2251799813685247, !dbg !1485 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv171_i v_fold303_tr_i 0x7FFFFFFFFFFFF;
assert true && eq v_conv171_i tmp_to_be_used;
assume eq v_conv171_i tmp_to_be_used && true;
(*   %conv172.i = and i128 %shr168.i, 18446744073709551615, !dbg !1487 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv172_i_L v_shr168_i_L 0xFFFFFFFFFFFFFFFF;
assert true && eq v_conv172_i_L v_shr168_i_L;
assume eq v_conv172_i_L v_shr168_i_L && true;
and v_conv172_i_H v_shr168_i_H 0x0;
assert true && eq v_conv172_i_H (const 64 0);
assume eq v_conv172_i_H 0 && true;
(*   %add173.i = add i128 %conv172.i, %add141.i, !dbg !1488 *)
adds carry v_add173_i_L v_conv172_i_L v_add141_i_L;
adc v_add173_i_H v_conv172_i_H v_add141_i_H carry;
(*   %shr174.i = lshr i128 %add173.i, 51, !dbg !1490 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add173_i_L 51;
split tmpH_h tmpH_l v_add173_i_H 51;
shl tmp tmpH_l 13;
add v_shr174_i_L tmp tmpL_h;
mov v_shr174_i_H tmpH_h;
(* == modified == *)
assert true && tmpH_h = const 64 0;
assume tmpH_h = 0 && true;
(*   %conv175.i = trunc i128 %shr174.i to i64, !dbg !1491 *)
mov v_conv175_i v_shr174_i_L;
(*   %fold304.i = add i128 %shr168.i, %add141.i, !dbg !1493 *)
adds carry v_fold304_i_L v_shr168_i_L v_add141_i_L;
(*adc v_fold304_i_H v_shr168_i_H v_add141_i_H carry;*)
(* == modified == *)
adcs discard v_fold304_i_H v_shr168_i_H v_add141_i_H carry;
(*   %fold304.tr.i = trunc i128 %fold304.i to i64, !dbg !1494 *)
mov v_fold304_tr_i v_fold304_i_L;
(*   %conv177.i = and i64 %fold304.tr.i, 2251799813685247, !dbg !1494 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv177_i v_fold304_tr_i 0x7FFFFFFFFFFFF;
assert true && eq v_conv177_i tmp_to_be_used;
assume eq v_conv177_i tmp_to_be_used && true;
(*   %mul178.i = mul i64 %conv175.i, 19, !dbg !1496 *)
mul v_mul178_i v_conv175_i 19;
(*   %add179.i = add i64 %mul178.i, %conv137.i, !dbg !1498 *)
add v_add179_i v_mul178_i v_conv137_i;
(*   %shr180.i = lshr i64 %add179.i, 51, !dbg !1500 *)
(* You may need to modify here *)
split v_shr180_i tmp_to_be_used v_add179_i 51;
(*   %fold305.i = add i64 %mul178.i, %add135.tr.i, !dbg !1502 *)
(*add v_fold305_i v_mul178_i v_add135_tr_i;*)
(* == modified == *)
adds discard v_fold305_i v_mul178_i v_add135_tr_i;
(*   %and181.i = and i64 %fold305.i, 2251799813685247, !dbg !1502 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_and181_i v_fold305_i 0x7FFFFFFFFFFFF;
assert true && eq v_and181_i tmp_to_be_used;
assume eq v_and181_i tmp_to_be_used && true;
(*   %add182.i = add nuw nsw i64 %shr180.i, %conv159.i, !dbg !1504 *)
add v_add182_i v_shr180_i v_conv159_i;
(*   %shr183.i = lshr i64 %add182.i, 51, !dbg !1506 *)
(* You may need to modify here *)
split v_shr183_i tmp_to_be_used v_add182_i 51;
(*   %fold306.i = add i64 %shr180.i, %fold.tr.i, !dbg !1508 *)
(*add v_fold306_i v_shr180_i v_fold_tr_i;*)
(* == modified == *)
adds discard v_fold306_i v_shr180_i v_fold_tr_i;
(*   %and184.i = and i64 %fold306.i, 2251799813685247, !dbg !1508 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_and184_i v_fold306_i 0x7FFFFFFFFFFFF;
assert true && eq v_and184_i tmp_to_be_used;
assume eq v_and184_i tmp_to_be_used && true;
(*   %add185.i = add nuw nsw i64 %shr183.i, %conv165.i, !dbg !1510 *)
add v_add185_i v_shr183_i v_conv165_i;
(*   store i64 %and181.i, i64* %out, align 8, !dbg !1512, !tbaa !1357 *)
mov L2_0 v_and181_i;
(*   %arrayidx187.i = getelementptr inbounds i64, i64* %out, i64 1, !dbg !1513 *)
(*   store i64 %and184.i, i64* %arrayidx187.i, align 8, !dbg !1514, !tbaa !1357 *)
mov L2_8 v_and184_i;
(*   %arrayidx188.i = getelementptr inbounds i64, i64* %out, i64 2, !dbg !1515 *)
(*   store i64 %add185.i, i64* %arrayidx188.i, align 8, !dbg !1516, !tbaa !1357 *)
mov L2_16 v_add185_i;
(*   %arrayidx189.i = getelementptr inbounds i64, i64* %out, i64 3, !dbg !1517 *)
(*   store i64 %conv171.i, i64* %arrayidx189.i, align 8, !dbg !1518, !tbaa !1357 *)
mov L2_24 v_conv171_i;
(*   %arrayidx190.i = getelementptr inbounds i64, i64* %out, i64 4, !dbg !1519 *)
(*   store i64 %conv177.i, i64* %arrayidx190.i, align 8, !dbg !1520, !tbaa !1357 *)
mov L2_32 v_conv177_i;
(*   ret void, !dbg !1523 *)

mov c0 L2_0;
mov c1 L2_8;
mov c2 L2_16;
mov c3 L2_24;
mov c4 L2_32;







(* ================== ladder step ================== *)

proc main (X1|0..4, X2|0..4, Z2|0..4, X3|0..4, Z3|0..4) =
{
  true
  &&
  and [
    X1_0 <= const 64 0x8cccccccccccc,
    X1_1 <= const 64 0x8cccccccccccc,
    X1_2 <= const 64 0x8cccccccccccc,
    X1_3 <= const 64 0x8cccccccccccc,
    X1_4 <= const 64 0x8cccccccccccc,
    X2_0 <= const 64 0x8cccccccccccc,
    X2_1 <= const 64 0x8cccccccccccc,
    X2_2 <= const 64 0x8cccccccccccc,
    X2_3 <= const 64 0x8cccccccccccc,
    X2_4 <= const 64 0x8cccccccccccc,
    Z2_0 <= const 64 0x8cccccccccccc,
    Z2_1 <= const 64 0x8cccccccccccc,
    Z2_2 <= const 64 0x8cccccccccccc,
    Z2_3 <= const 64 0x8cccccccccccc,
    Z2_4 <= const 64 0x8cccccccccccc,
    X3_0 <= const 64 0x8cccccccccccc,
    X3_1 <= const 64 0x8cccccccccccc,
    X3_2 <= const 64 0x8cccccccccccc,
    X3_3 <= const 64 0x8cccccccccccc,
    X3_4 <= const 64 0x8cccccccccccc,
    Z3_0 <= const 64 0x8cccccccccccc,
    Z3_1 <= const 64 0x8cccccccccccc,
    Z3_2 <= const 64 0x8cccccccccccc,
    Z3_3 <= const 64 0x8cccccccccccc,
    Z3_4 <= const 64 0x8cccccccccccc
  ]
}

(*
mov _ X1_0;
mov _ X1_1;
mov _ X1_2;
mov _ X1_3;
mov _ X1_4;
*)
mov v_xor7_i_75 X2_0;
mov v_xor7_1_i_81 X2_1;
mov v_xor7_2_i_87 X2_2;
mov v_xor7_3_i_93 X2_3;
mov v_xor7_4_i_99 X2_4;
mov v_xor7_i_221 Z2_0;
mov v_xor7_1_i_227 Z2_1;
mov v_xor7_2_i_233 Z2_2;
mov v_xor7_3_i_239 Z2_3;
mov v_xor7_4_i_245 Z2_4;
mov v_xor11_i_76 X3_0;
mov v_xor11_1_i_82 X3_1;
mov v_xor11_2_i_88 X3_2;
mov v_xor11_3_i_94 X3_3;
mov v_xor11_4_i_100 X3_4;
mov v_xor11_i_222 Z3_0;
mov v_xor11_1_i_228 Z3_1;
mov v_xor11_2_i_234 Z3_2;
mov v_xor11_3_i_240 Z3_3;
mov v_xor11_4_i_246 Z3_4;

(*
arraydecay.i.386 <-> tmp0[0] <-> L36_0
arrayidx119.i.476 <-> tmp0[1] <-> L37_0
arrayidx120.i.477 <-> tmp0[2] <-> L38_0
arrayidx121.i.478 <-> tmp0[3] <-> L39_0
arrayidx122.i.479 <-> tmp0[4] <-> L40_0
arraydecay.i.292 <-> tmp1[0] <-> L41_0
arrayidx119.i.382 <-> tmp1[1] <-> L42_0
arrayidx120.i.383 <-> tmp1[2] <-> L43_0
arrayidx121.i.384 <-> tmp1[3] <-> L44_0
arrayidx122.i.385 <-> tmp1[4] <-> L45_0
arraydecay.i.483 <-> tmp0l[0] <-> L16_0
arrayidx19.i.i.504 <-> tmp0l[1] <-> L17_0
arrayidx20.i.i.505 <-> tmp0l[2] <-> L18_0
arrayidx21.i.i.506 <-> tmp0l[3] <-> L19_0
arrayidx22.i.i.507 <-> tmp0l[4] <-> L20_0
arraydecay.i.511 <-> tmp1l[0] <-> L21_0
arrayidx19.i.i.532 <-> tmp1l[1] <-> L22_0
arrayidx20.i.i.533 <-> tmp1l[2] <-> L23_0
arrayidx21.i.i.534 <-> tmp1l[3] <-> L24_0
arrayidx22.i.i.535 <-> tmp1l[4] <-> L25_0
arraydecay.i.556 <-> x2l[0] <-> L26_0
arrayidx15.i.i.572 <-> x2l[1] <-> L27_0
arrayidx16.i.i.573 <-> x2l[2] <-> L28_0
arrayidx17.i.i.574 <-> x2l[3] <-> L29_0
arrayidx18.i.i.575 <-> x2l[4] <-> L30_0
arraydecay.i.536 <-> z2l[0] <-> L31_0
arrayidx15.i.i.552 <-> z2l[1] <-> L32_0
arrayidx16.i.i.553 <-> z2l[2] <-> L33_0
arrayidx17.i.i.554 <-> z2l[3] <-> L34_0
arrayidx18.i.i.555 <-> z2l[4] <-> L35_0

arrayidx.i.217 <-> z2[0] <-> L6_0
arrayidx.1.i.223 <-> z2[1] <-> L8_0
arrayidx.2.i.229 <-> z2[2] <-> L10_0
arrayidx.3.i.235 <-> z2[3] <-> L12_0
arrayidx.4.i.241 <-> z2[4] <-> L14_0
arrayidx.i.66 <-> z3[0] <-> L7_0
arrayidx3.1.i.224 <-> z3[1] <-> L9_0
arrayidx3.2.i.230 <-> z3[2] <-> L11_0
arrayidx3.3.i.236 <-> z3[3] <-> L13_0
arrayidx3.4.i.242 <-> z3[4] <-> L15_0
*)


(*   %add.i.i.486 = add i64 %xor11.i.76, 4503599627370458, !dbg !1501 *)
add v_add_i_i_486 v_xor11_i_76 4503599627370458;
(*   %sub.i.i.487 = sub i64 %add.i.i.486, %xor11.i.222, !dbg !1502 *)
sub v_sub_i_i_487 v_add_i_i_486 v_xor11_i_222;
(*   %add3.i.i.489 = add i64 %xor11.1.i.82, 4503599627370494, !dbg !1504 *)
add v_add3_i_i_489 v_xor11_1_i_82 4503599627370494;
(*   %sub5.i.i.491 = sub i64 %add3.i.i.489, %xor11.1.i.228, !dbg !1505 *)
sub v_sub5_i_i_491 v_add3_i_i_489 v_xor11_1_i_228;
(*   %add7.i.i.493 = add i64 %xor11.2.i.88, 4503599627370494, !dbg !1507 *)
add v_add7_i_i_493 v_xor11_2_i_88 4503599627370494;
(*   %sub9.i.i.495 = sub i64 %add7.i.i.493, %xor11.2.i.234, !dbg !1508 *)
sub v_sub9_i_i_495 v_add7_i_i_493 v_xor11_2_i_234;
(*   %add11.i.i.497 = add i64 %xor11.3.i.94, 4503599627370494, !dbg !1510 *)
add v_add11_i_i_497 v_xor11_3_i_94 4503599627370494;
(*   %sub13.i.i.499 = sub i64 %add11.i.i.497, %xor11.3.i.240, !dbg !1511 *)
sub v_sub13_i_i_499 v_add11_i_i_497 v_xor11_3_i_240;
(*   %add15.i.i.501 = add i64 %xor11.4.i.100, 4503599627370494, !dbg !1513 *)
add v_add15_i_i_501 v_xor11_4_i_100 4503599627370494;
(*   %sub17.i.i.503 = sub i64 %add15.i.i.501, %xor11.4.i.246, !dbg !1514 *)
sub v_sub17_i_i_503 v_add15_i_i_501 v_xor11_4_i_246;
(*   store i64 %sub.i.i.487, i64* %arraydecay.i.483, align 8, !dbg !1516, !tbaa !1385 *)
mov L16_0 v_sub_i_i_487;
(*   store i64 %sub5.i.i.491, i64* %arrayidx19.i.i.504, align 8, !dbg !1517, !tbaa !1385 *)
mov L17_0 v_sub5_i_i_491;
(*   store i64 %sub9.i.i.495, i64* %arrayidx20.i.i.505, align 8, !dbg !1518, !tbaa !1385 *)
mov L18_0 v_sub9_i_i_495;
(*   store i64 %sub13.i.i.499, i64* %arrayidx21.i.i.506, align 8, !dbg !1519, !tbaa !1385 *)
mov L19_0 v_sub13_i_i_499;
(*   store i64 %sub17.i.i.503, i64* %arrayidx22.i.i.507, align 8, !dbg !1520, !tbaa !1385 *)
mov L20_0 v_sub17_i_i_503;
(*   %add.i.i.514 = add i64 %xor7.i.75, 4503599627370458, !dbg !1531 *)
add v_add_i_i_514 v_xor7_i_75 4503599627370458;
(*   %sub.i.i.515 = sub i64 %add.i.i.514, %xor7.i.221, !dbg !1532 *)
sub v_sub_i_i_515 v_add_i_i_514 v_xor7_i_221;
(*   %add3.i.i.517 = add i64 %xor7.1.i.81, 4503599627370494, !dbg !1534 *)
add v_add3_i_i_517 v_xor7_1_i_81 4503599627370494;
(*   %sub5.i.i.519 = sub i64 %add3.i.i.517, %xor7.1.i.227, !dbg !1535 *)
sub v_sub5_i_i_519 v_add3_i_i_517 v_xor7_1_i_227;
(*   %add7.i.i.521 = add i64 %xor7.2.i.87, 4503599627370494, !dbg !1537 *)
add v_add7_i_i_521 v_xor7_2_i_87 4503599627370494;
(*   %sub9.i.i.523 = sub i64 %add7.i.i.521, %xor7.2.i.233, !dbg !1538 *)
sub v_sub9_i_i_523 v_add7_i_i_521 v_xor7_2_i_233;
(*   %add11.i.i.525 = add i64 %xor7.3.i.93, 4503599627370494, !dbg !1540 *)
add v_add11_i_i_525 v_xor7_3_i_93 4503599627370494;
(*   %sub13.i.i.527 = sub i64 %add11.i.i.525, %xor7.3.i.239, !dbg !1541 *)
sub v_sub13_i_i_527 v_add11_i_i_525 v_xor7_3_i_239;
(*   %add15.i.i.529 = add i64 %xor7.4.i.99, 4503599627370494, !dbg !1543 *)
add v_add15_i_i_529 v_xor7_4_i_99 4503599627370494;
(*   %sub17.i.i.531 = sub i64 %add15.i.i.529, %xor7.4.i.245, !dbg !1544 *)
sub v_sub17_i_i_531 v_add15_i_i_529 v_xor7_4_i_245;
(*   store i64 %sub.i.i.515, i64* %arraydecay.i.511, align 8, !dbg !1546, !tbaa !1385 *)
mov L21_0 v_sub_i_i_515;
(*   store i64 %sub5.i.i.519, i64* %arrayidx19.i.i.532, align 8, !dbg !1547, !tbaa !1385 *)
mov L22_0 v_sub5_i_i_519;
(*   store i64 %sub9.i.i.523, i64* %arrayidx20.i.i.533, align 8, !dbg !1548, !tbaa !1385 *)
mov L23_0 v_sub9_i_i_523;
(*   store i64 %sub13.i.i.527, i64* %arrayidx21.i.i.534, align 8, !dbg !1549, !tbaa !1385 *)
mov L24_0 v_sub13_i_i_527;
(*   store i64 %sub17.i.i.531, i64* %arrayidx22.i.i.535, align 8, !dbg !1550, !tbaa !1385 *)
mov L25_0 v_sub17_i_i_531;
(*   %add.i.i.559 = add i64 %xor7.i.221, %xor7.i.75, !dbg !1561 *)
add v_add_i_i_559 v_xor7_i_221 v_xor7_i_75;
(*   %add4.i.i.562 = add i64 %xor7.1.i.227, %xor7.1.i.81, !dbg !1563 *)
add v_add4_i_i_562 v_xor7_1_i_227 v_xor7_1_i_81;
(*   %add7.i.i.565 = add i64 %xor7.2.i.233, %xor7.2.i.87, !dbg !1565 *)
add v_add7_i_i_565 v_xor7_2_i_233 v_xor7_2_i_87;
(*   %add10.i.i.568 = add i64 %xor7.3.i.239, %xor7.3.i.93, !dbg !1567 *)
add v_add10_i_i_568 v_xor7_3_i_239 v_xor7_3_i_93;
(*   %add13.i.i.571 = add i64 %xor7.4.i.245, %xor7.4.i.99, !dbg !1569 *)
add v_add13_i_i_571 v_xor7_4_i_245 v_xor7_4_i_99;
(*   store i64 %add.i.i.559, i64* %arraydecay.i.556, align 8, !dbg !1571, !tbaa !1385 *)
mov L26_0 v_add_i_i_559;
(*   store i64 %add4.i.i.562, i64* %arrayidx15.i.i.572, align 8, !dbg !1572, !tbaa !1385 *)
mov L27_0 v_add4_i_i_562;
(*   store i64 %add7.i.i.565, i64* %arrayidx16.i.i.573, align 8, !dbg !1573, !tbaa !1385 *)
mov L28_0 v_add7_i_i_565;
(*   store i64 %add10.i.i.568, i64* %arrayidx17.i.i.574, align 8, !dbg !1574, !tbaa !1385 *)
mov L29_0 v_add10_i_i_568;
(*   store i64 %add13.i.i.571, i64* %arrayidx18.i.i.575, align 8, !dbg !1575, !tbaa !1385 *)
mov L30_0 v_add13_i_i_571;
(*   %add.i.i.539 = add i64 %xor11.i.222, %xor11.i.76, !dbg !1586 *)
add v_add_i_i_539 v_xor11_i_222 v_xor11_i_76;
(*   %add4.i.i.542 = add i64 %xor11.1.i.228, %xor11.1.i.82, !dbg !1588 *)
add v_add4_i_i_542 v_xor11_1_i_228 v_xor11_1_i_82;
(*   %add7.i.i.545 = add i64 %xor11.2.i.234, %xor11.2.i.88, !dbg !1590 *)
add v_add7_i_i_545 v_xor11_2_i_234 v_xor11_2_i_88;
(*   %add10.i.i.548 = add i64 %xor11.3.i.240, %xor11.3.i.94, !dbg !1592 *)
add v_add10_i_i_548 v_xor11_3_i_240 v_xor11_3_i_94;
(*   %add13.i.i.551 = add i64 %xor11.4.i.246, %xor11.4.i.100, !dbg !1594 *)
add v_add13_i_i_551 v_xor11_4_i_246 v_xor11_4_i_100;
(*   store i64 %add.i.i.539, i64* %arraydecay.i.536, align 8, !dbg !1596, !tbaa !1385 *)
mov L31_0 v_add_i_i_539;
(*   store i64 %add4.i.i.542, i64* %arrayidx15.i.i.552, align 8, !dbg !1597, !tbaa !1385 *)
mov L32_0 v_add4_i_i_542;
(*   store i64 %add7.i.i.545, i64* %arrayidx16.i.i.553, align 8, !dbg !1598, !tbaa !1385 *)
mov L33_0 v_add7_i_i_545;
(*   store i64 %add10.i.i.548, i64* %arrayidx17.i.i.554, align 8, !dbg !1599, !tbaa !1385 *)
mov L34_0 v_add10_i_i_548;
(*   store i64 %add13.i.i.551, i64* %arrayidx18.i.i.555, align 8, !dbg !1600, !tbaa !1385 *)
mov L35_0 v_add13_i_i_551;
(*   call void @fe_mul_impl(i64* %arrayidx.i.66, i64* %arraydecay.i.483, i64* %arraydecay.i.556) #2, !dbg !1606 *)
call fe_mul_impl(L16_0, L17_0, L18_0, L19_0, L20_0, L26_0, L27_0, L28_0, L29_0, L30_0, L7_0, L9_0, L11_0, L13_0, L15_0);
(*   call void @fe_mul_impl(i64* %arrayidx.i.217, i64* %arraydecay.i.536, i64* %arraydecay.i.511) #2, !dbg !1611 *)
call fe_mul_impl(L31_0, L32_0, L33_0, L34_0, L35_0, L21_0, L22_0, L23_0, L24_0, L25_0, L6_0, L8_0, L10_0, L12_0, L14_0);
(*   %mul.i.389 = mul i64 %sub17.i.i.531, 19, !dbg !1619 *)
mul v_mul_i_389 v_sub17_i_i_531 19;
(*   %mul1.i.390 = mul i64 %sub17.i.i.531, 38, !dbg !1621 *)
mul v_mul1_i_390 v_sub17_i_i_531 38;
(*   %mul3.i.391 = shl i64 %sub17.i.i.531, 1, !dbg !1623 *)
shl v_mul3_i_391 v_sub17_i_i_531 1;
(*   %mul5.i.393 = mul i64 %sub13.i.i.527, 19, !dbg !1625 *)
mul v_mul5_i_393 v_sub13_i_i_527 19;
(*   %mul6.i.394 = mul i64 %sub13.i.i.527, 38, !dbg !1627 *)
mul v_mul6_i_394 v_sub13_i_i_527 38;
(*   %mul8.i.395 = shl i64 %sub13.i.i.527, 1, !dbg !1629 *)
shl v_mul8_i_395 v_sub13_i_i_527 1;
(*   %mul10.i.397 = shl i64 %sub9.i.i.523, 1, !dbg !1631 *)
shl v_mul10_i_397 v_sub9_i_i_523 1;
(*   %mul12.i.399 = shl i64 %sub5.i.i.519, 1, !dbg !1633 *)
shl v_mul12_i_399 v_sub5_i_i_519 1;
(*   %conv.i.400 = zext i64 %sub17.i.i.531 to i128, !dbg !1635 *)
mov v_conv_i_400_L v_sub17_i_i_531;
mov v_conv_i_400_H 0;
(*   %conv14.i.401 = zext i64 %mul.i.389 to i128, !dbg !1636 *)
mov v_conv14_i_401_L v_mul_i_389;
mov v_conv14_i_401_H 0;
(*   %mul15.i.402 = mul nuw i128 %conv14.i.401, %conv.i.400, !dbg !1637 *)
mull tmpLL_H tmpLL_L v_conv14_i_401_L v_conv_i_400_L;
mul tmpHL_L v_conv14_i_401_H v_conv_i_400_L;
mul tmpLH_L v_conv14_i_401_L v_conv_i_400_H;
mov v_mul15_i_402_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul15_i_402_H tmp tmpLL_H;
(*   %conv17.i.403 = zext i64 %sub13.i.i.527 to i128, !dbg !1639 *)
mov v_conv17_i_403_L v_sub13_i_i_527;
mov v_conv17_i_403_H 0;
(*   %conv18.i.404 = zext i64 %mul1.i.390 to i128, !dbg !1640 *)
mov v_conv18_i_404_L v_mul1_i_390;
mov v_conv18_i_404_H 0;
(*   %mul19.i.405 = mul nuw i128 %conv17.i.403, %conv18.i.404, !dbg !1641 *)
mull tmpLL_H tmpLL_L v_conv17_i_403_L v_conv18_i_404_L;
mul tmpHL_L v_conv17_i_403_H v_conv18_i_404_L;
mul tmpLH_L v_conv17_i_403_L v_conv18_i_404_H;
mov v_mul19_i_405_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul19_i_405_H tmp tmpLL_H;
(*   %conv22.i.406 = zext i64 %mul5.i.393 to i128, !dbg !1643 *)
mov v_conv22_i_406_L v_mul5_i_393;
mov v_conv22_i_406_H 0;
(*   %mul23.i.407 = mul nuw i128 %conv22.i.406, %conv17.i.403, !dbg !1644 *)
mull tmpLL_H tmpLL_L v_conv22_i_406_L v_conv17_i_403_L;
mul tmpHL_L v_conv22_i_406_H v_conv17_i_403_L;
mul tmpLH_L v_conv22_i_406_L v_conv17_i_403_H;
mov v_mul23_i_407_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul23_i_407_H tmp tmpLL_H;
(*   %conv25.i.408 = zext i64 %sub9.i.i.523 to i128, !dbg !1646 *)
mov v_conv25_i_408_L v_sub9_i_i_523;
mov v_conv25_i_408_H 0;
(*   %mul27.i.409 = mul nuw i128 %conv25.i.408, %conv18.i.404, !dbg !1647 *)
mull tmpLL_H tmpLL_L v_conv25_i_408_L v_conv18_i_404_L;
mul tmpHL_L v_conv25_i_408_H v_conv18_i_404_L;
mul tmpLH_L v_conv25_i_408_L v_conv18_i_404_H;
mov v_mul27_i_409_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul27_i_409_H tmp tmpLL_H;
(*   %conv30.i.410 = zext i64 %mul6.i.394 to i128, !dbg !1649 *)
mov v_conv30_i_410_L v_mul6_i_394;
mov v_conv30_i_410_H 0;
(*   %mul31.i.411 = mul nuw i128 %conv25.i.408, %conv30.i.410, !dbg !1650 *)
mull tmpLL_H tmpLL_L v_conv25_i_408_L v_conv30_i_410_L;
mul tmpHL_L v_conv25_i_408_H v_conv30_i_410_L;
mul tmpLH_L v_conv25_i_408_L v_conv30_i_410_H;
mov v_mul31_i_411_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul31_i_411_H tmp tmpLL_H;
(*   %mul36.i.412 = mul nuw i128 %conv25.i.408, %conv25.i.408, !dbg !1652 *)
mull tmpLL_H tmpLL_L v_conv25_i_408_L v_conv25_i_408_L;
mul tmpHL_L v_conv25_i_408_H v_conv25_i_408_L;
mul tmpLH_L v_conv25_i_408_L v_conv25_i_408_H;
mov v_mul36_i_412_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul36_i_412_H tmp tmpLL_H;
(*   %conv38.i.413 = zext i64 %sub5.i.i.519 to i128, !dbg !1654 *)
mov v_conv38_i_413_L v_sub5_i_i_519;
mov v_conv38_i_413_H 0;
(*   %mul40.i.414 = mul nuw i128 %conv38.i.413, %conv18.i.404, !dbg !1655 *)
mull tmpLL_H tmpLL_L v_conv38_i_413_L v_conv18_i_404_L;
mul tmpHL_L v_conv38_i_413_H v_conv18_i_404_L;
mul tmpLH_L v_conv38_i_413_L v_conv18_i_404_H;
mov v_mul40_i_414_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul40_i_414_H tmp tmpLL_H;
(*   %conv43.i.415 = zext i64 %mul8.i.395 to i128, !dbg !1657 *)
mov v_conv43_i_415_L v_mul8_i_395;
mov v_conv43_i_415_H 0;
(*   %mul44.i.416 = mul nuw i128 %conv38.i.413, %conv43.i.415, !dbg !1658 *)
mull tmpLL_H tmpLL_L v_conv38_i_413_L v_conv43_i_415_L;
mul tmpHL_L v_conv38_i_413_H v_conv43_i_415_L;
mul tmpLH_L v_conv38_i_413_L v_conv43_i_415_H;
mov v_mul44_i_416_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul44_i_416_H tmp tmpLL_H;
(*   %conv47.i.417 = zext i64 %mul10.i.397 to i128, !dbg !1660 *)
mov v_conv47_i_417_L v_mul10_i_397;
mov v_conv47_i_417_H 0;
(*   %mul48.i.418 = mul nuw i128 %conv38.i.413, %conv47.i.417, !dbg !1661 *)
mull tmpLL_H tmpLL_L v_conv38_i_413_L v_conv47_i_417_L;
mul tmpHL_L v_conv38_i_413_H v_conv47_i_417_L;
mul tmpLH_L v_conv38_i_413_L v_conv47_i_417_H;
mov v_mul48_i_418_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul48_i_418_H tmp tmpLL_H;
(*   %mul53.i.419 = mul nuw i128 %conv38.i.413, %conv38.i.413, !dbg !1663 *)
mull tmpLL_H tmpLL_L v_conv38_i_413_L v_conv38_i_413_L;
mul tmpHL_L v_conv38_i_413_H v_conv38_i_413_L;
mul tmpLH_L v_conv38_i_413_L v_conv38_i_413_H;
mov v_mul53_i_419_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul53_i_419_H tmp tmpLL_H;
(*   %conv55.i.420 = zext i64 %sub.i.i.515 to i128, !dbg !1665 *)
mov v_conv55_i_420_L v_sub_i_i_515;
mov v_conv55_i_420_H 0;
(*   %conv56.i.421 = zext i64 %mul3.i.391 to i128, !dbg !1666 *)
mov v_conv56_i_421_L v_mul3_i_391;
mov v_conv56_i_421_H 0;
(*   %mul57.i.422 = mul nuw i128 %conv55.i.420, %conv56.i.421, !dbg !1667 *)
mull tmpLL_H tmpLL_L v_conv55_i_420_L v_conv56_i_421_L;
mul tmpHL_L v_conv55_i_420_H v_conv56_i_421_L;
mul tmpLH_L v_conv55_i_420_L v_conv56_i_421_H;
mov v_mul57_i_422_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul57_i_422_H tmp tmpLL_H;
(*   %mul61.i.423 = mul nuw i128 %conv55.i.420, %conv43.i.415, !dbg !1669 *)
mull tmpLL_H tmpLL_L v_conv55_i_420_L v_conv43_i_415_L;
mul tmpHL_L v_conv55_i_420_H v_conv43_i_415_L;
mul tmpLH_L v_conv55_i_420_L v_conv43_i_415_H;
mov v_mul61_i_423_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul61_i_423_H tmp tmpLL_H;
(*   %mul65.i.424 = mul nuw i128 %conv55.i.420, %conv47.i.417, !dbg !1671 *)
mull tmpLL_H tmpLL_L v_conv55_i_420_L v_conv47_i_417_L;
mul tmpHL_L v_conv55_i_420_H v_conv47_i_417_L;
mul tmpLH_L v_conv55_i_420_L v_conv47_i_417_H;
mov v_mul65_i_424_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul65_i_424_H tmp tmpLL_H;
(*   %conv68.i.425 = zext i64 %mul12.i.399 to i128, !dbg !1673 *)
mov v_conv68_i_425_L v_mul12_i_399;
mov v_conv68_i_425_H 0;
(*   %mul69.i.426 = mul nuw i128 %conv55.i.420, %conv68.i.425, !dbg !1674 *)
mull tmpLL_H tmpLL_L v_conv55_i_420_L v_conv68_i_425_L;
mul tmpHL_L v_conv55_i_420_H v_conv68_i_425_L;
mul tmpLH_L v_conv55_i_420_L v_conv68_i_425_H;
mov v_mul69_i_426_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul69_i_426_H tmp tmpLL_H;
(*   %mul74.i.427 = mul nuw i128 %conv55.i.420, %conv55.i.420, !dbg !1676 *)
mull tmpLL_H tmpLL_L v_conv55_i_420_L v_conv55_i_420_L;
mul tmpHL_L v_conv55_i_420_H v_conv55_i_420_L;
mul tmpLH_L v_conv55_i_420_L v_conv55_i_420_H;
mov v_mul74_i_427_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul74_i_427_H tmp tmpLL_H;
(*   %add.i.428 = add i128 %mul40.i.414, %mul31.i.411, !dbg !1678 *)
adds carry v_add_i_428_L v_mul40_i_414_L v_mul31_i_411_L;
adc v_add_i_428_H v_mul40_i_414_H v_mul31_i_411_H carry;
(*   %add75.i.429 = add i128 %add.i.428, %mul74.i.427, !dbg !1679 *)
adds carry v_add75_i_429_L v_add_i_428_L v_mul74_i_427_L;
adc v_add75_i_429_H v_add_i_428_H v_mul74_i_427_H carry;
(*   %shr.i.430 = lshr i128 %add75.i.429, 51, !dbg !1681 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add75_i_429_L 51;
split tmpH_h tmpH_l v_add75_i_429_H 51;
shl tmp tmpH_l 13;
add v_shr_i_430_L tmp tmpL_h;
mov v_shr_i_430_H tmpH_h;
(* == modified == *)
assert true && tmpH_h = const 64 0;
assume tmpH_h = 0 && true;
(*   %add75.tr.i.431 = trunc i128 %add75.i.429 to i64, !dbg !1682 *)
mov v_add75_tr_i_431 v_add75_i_429_L;
(*   %conv77.i.432 = and i64 %add75.tr.i.431, 2251799813685247, !dbg !1682 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv77_i_432 v_add75_tr_i_431 0x7FFFFFFFFFFFF;
assert true && eq v_conv77_i_432 tmp_to_be_used;
assume eq v_conv77_i_432 tmp_to_be_used && true;
(*   %add78.i.433 = add i128 %mul44.i.416, %mul36.i.412, !dbg !1684 *)
adds carry v_add78_i_433_L v_mul44_i_416_L v_mul36_i_412_L;
adc v_add78_i_433_H v_mul44_i_416_H v_mul36_i_412_H carry;
(*   %add79.i.434 = add i128 %add78.i.433, %mul57.i.422, !dbg !1685 *)
adds carry v_add79_i_434_L v_add78_i_433_L v_mul57_i_422_L;
adc v_add79_i_434_H v_add78_i_433_H v_mul57_i_422_H carry;
(*   %add80.i.435 = add i128 %mul48.i.418, %mul15.i.402, !dbg !1687 *)
adds carry v_add80_i_435_L v_mul48_i_418_L v_mul15_i_402_L;
adc v_add80_i_435_H v_mul48_i_418_H v_mul15_i_402_H carry;
(*   %add81.i.436 = add i128 %add80.i.435, %mul61.i.423, !dbg !1688 *)
adds carry v_add81_i_436_L v_add80_i_435_L v_mul61_i_423_L;
adc v_add81_i_436_H v_add80_i_435_H v_mul61_i_423_H carry;
(*   %add82.i.437 = add i128 %mul53.i.419, %mul19.i.405, !dbg !1690 *)
adds carry v_add82_i_437_L v_mul53_i_419_L v_mul19_i_405_L;
adc v_add82_i_437_H v_mul53_i_419_H v_mul19_i_405_H carry;
(*   %add83.i.438 = add i128 %add82.i.437, %mul65.i.424, !dbg !1691 *)
adds carry v_add83_i_438_L v_add82_i_437_L v_mul65_i_424_L;
adc v_add83_i_438_H v_add82_i_437_H v_mul65_i_424_H carry;
(*   %add84.i.439 = add i128 %mul27.i.409, %mul23.i.407, !dbg !1693 *)
adds carry v_add84_i_439_L v_mul27_i_409_L v_mul23_i_407_L;
adc v_add84_i_439_H v_mul27_i_409_H v_mul23_i_407_H carry;
(*   %add85.i.440 = add i128 %add84.i.439, %mul69.i.426, !dbg !1694 *)
adds carry v_add85_i_440_L v_add84_i_439_L v_mul69_i_426_L;
adc v_add85_i_440_H v_add84_i_439_H v_mul69_i_426_H carry;
(*   %conv86.i.441 = and i128 %shr.i.430, 18446744073709551615, !dbg !1696 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv86_i_441_L v_shr_i_430_L 0xFFFFFFFFFFFFFFFF;
assert true && eq v_conv86_i_441_L v_shr_i_430_L;
assume eq v_conv86_i_441_L v_shr_i_430_L && true;
and v_conv86_i_441_H v_shr_i_430_H 0x0;
assert true && eq v_conv86_i_441_H (const 64 0);
assume eq v_conv86_i_441_H 0 && true;
(*   %add87.i.442 = add i128 %conv86.i.441, %add85.i.440, !dbg !1697 *)
adds carry v_add87_i_442_L v_conv86_i_441_L v_add85_i_440_L;
adc v_add87_i_442_H v_conv86_i_441_H v_add85_i_440_H carry;
(*   %shr88.i.443 = lshr i128 %add87.i.442, 51, !dbg !1699 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add87_i_442_L 51;
split tmpH_h tmpH_l v_add87_i_442_H 51;
shl tmp tmpH_l 13;
add v_shr88_i_443_L tmp tmpL_h;
mov v_shr88_i_443_H tmpH_h;
(* == modified == *)
assert true && tmpH_h = const 64 0;
assume tmpH_h = 0 && true;
(*   %fold.i.444 = add i128 %shr.i.430, %add85.i.440, !dbg !1700 *)
adds carry v_fold_i_444_L v_shr_i_430_L v_add85_i_440_L;
(*adc v_fold_i_444_H v_shr_i_430_H v_add85_i_440_H carry;*)
(* == modified == *)
adcs discard v_fold_i_444_H v_shr_i_430_H v_add85_i_440_H carry;
(*   %fold.tr.i.445 = trunc i128 %fold.i.444 to i64, !dbg !1701 *)
mov v_fold_tr_i_445 v_fold_i_444_L;
(*   %conv91.i.446 = and i64 %fold.tr.i.445, 2251799813685247, !dbg !1701 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv91_i_446 v_fold_tr_i_445 0x7FFFFFFFFFFFF;
assert true && eq v_conv91_i_446 tmp_to_be_used;
assume eq v_conv91_i_446 tmp_to_be_used && true;
(*   %conv92.i.447 = and i128 %shr88.i.443, 18446744073709551615, !dbg !1703 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv92_i_447_L v_shr88_i_443_L 0xFFFFFFFFFFFFFFFF;
assert true && eq v_conv92_i_447_L v_shr88_i_443_L;
assume eq v_conv92_i_447_L v_shr88_i_443_L && true;
and v_conv92_i_447_H v_shr88_i_443_H 0x0;
assert true && eq v_conv92_i_447_H (const 64 0);
assume eq v_conv92_i_447_H 0 && true;
(*   %add93.i.448 = add i128 %conv92.i.447, %add83.i.438, !dbg !1704 *)
adds carry v_add93_i_448_L v_conv92_i_447_L v_add83_i_438_L;
adc v_add93_i_448_H v_conv92_i_447_H v_add83_i_438_H carry;
(*   %shr94.i.449 = lshr i128 %add93.i.448, 51, !dbg !1706 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add93_i_448_L 51;
split tmpH_h tmpH_l v_add93_i_448_H 51;
shl tmp tmpH_l 13;
add v_shr94_i_449_L tmp tmpL_h;
mov v_shr94_i_449_H tmpH_h;
(* == modified == *)
assert true && tmpH_h = const 64 0;
assume tmpH_h = 0 && true;
(*   %fold213.i.450 = add i128 %shr88.i.443, %add83.i.438, !dbg !1707 *)
adds carry v_fold213_i_450_L v_shr88_i_443_L v_add83_i_438_L;
(*adc v_fold213_i_450_H v_shr88_i_443_H v_add83_i_438_H carry;*)
(* == modified == *)
adcs discard v_fold213_i_450_H v_shr88_i_443_H v_add83_i_438_H carry;
(*   %fold213.tr.i.451 = trunc i128 %fold213.i.450 to i64, !dbg !1708 *)
mov v_fold213_tr_i_451 v_fold213_i_450_L;
(*   %conv97.i.452 = and i64 %fold213.tr.i.451, 2251799813685247, !dbg !1708 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv97_i_452 v_fold213_tr_i_451 0x7FFFFFFFFFFFF;
assert true && eq v_conv97_i_452 tmp_to_be_used;
assume eq v_conv97_i_452 tmp_to_be_used && true;
(*   %conv98.i.453 = and i128 %shr94.i.449, 18446744073709551615, !dbg !1710 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv98_i_453_L v_shr94_i_449_L 0xFFFFFFFFFFFFFFFF;
assert true && eq v_conv98_i_453_L v_shr94_i_449_L;
assume eq v_conv98_i_453_L v_shr94_i_449_L && true;
and v_conv98_i_453_H v_shr94_i_449_H 0x0;
assert true && eq v_conv98_i_453_H (const 64 0);
assume eq v_conv98_i_453_H 0 && true;
(*   %add99.i.454 = add i128 %conv98.i.453, %add81.i.436, !dbg !1711 *)
adds carry v_add99_i_454_L v_conv98_i_453_L v_add81_i_436_L;
adc v_add99_i_454_H v_conv98_i_453_H v_add81_i_436_H carry;
(*   %shr100.i.455 = lshr i128 %add99.i.454, 51, !dbg !1713 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add99_i_454_L 51;
split tmpH_h tmpH_l v_add99_i_454_H 51;
shl tmp tmpH_l 13;
add v_shr100_i_455_L tmp tmpL_h;
mov v_shr100_i_455_H tmpH_h;
(* == modified == *)
assert true && tmpH_h = const 64 0;
assume tmpH_h = 0 && true;
(*   %fold214.i.456 = add i128 %shr94.i.449, %add81.i.436, !dbg !1714 *)
adds carry v_fold214_i_456_L v_shr94_i_449_L v_add81_i_436_L;
(*adc v_fold214_i_456_H v_shr94_i_449_H v_add81_i_436_H carry;*)
(* == modified == *)
adcs discard v_fold214_i_456_H v_shr94_i_449_H v_add81_i_436_H carry;
(*   %fold214.tr.i.457 = trunc i128 %fold214.i.456 to i64, !dbg !1715 *)
mov v_fold214_tr_i_457 v_fold214_i_456_L;
(*   %conv103.i.458 = and i64 %fold214.tr.i.457, 2251799813685247, !dbg !1715 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv103_i_458 v_fold214_tr_i_457 0x7FFFFFFFFFFFF;
assert true && eq v_conv103_i_458 tmp_to_be_used;
assume eq v_conv103_i_458 tmp_to_be_used && true;
(*   %conv104.i.459 = and i128 %shr100.i.455, 18446744073709551615, !dbg !1717 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv104_i_459_L v_shr100_i_455_L 0xFFFFFFFFFFFFFFFF;
assert true && eq v_conv104_i_459_L v_shr100_i_455_L;
assume eq v_conv104_i_459_L v_shr100_i_455_L && true;
and v_conv104_i_459_H v_shr100_i_455_H 0x0;
assert true && eq v_conv104_i_459_H (const 64 0);
assume eq v_conv104_i_459_H 0 && true;
(*   %add105.i.460 = add i128 %conv104.i.459, %add79.i.434, !dbg !1718 *)
adds carry v_add105_i_460_L v_conv104_i_459_L v_add79_i_434_L;
adc v_add105_i_460_H v_conv104_i_459_H v_add79_i_434_H carry;
(*   %shr106.i.461 = lshr i128 %add105.i.460, 51, !dbg !1720 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add105_i_460_L 51;
split tmpH_h tmpH_l v_add105_i_460_H 51;
shl tmp tmpH_l 13;
add v_shr106_i_461_L tmp tmpL_h;
mov v_shr106_i_461_H tmpH_h;
(* == modified == *)
assert true && tmpH_h = const 64 0;
assume tmpH_h = 0 && true;
(*   %conv107.i.462 = trunc i128 %shr106.i.461 to i64, !dbg !1721 *)
mov v_conv107_i_462 v_shr106_i_461_L;
(*   %fold215.i.463 = add i128 %shr100.i.455, %add79.i.434, !dbg !1723 *)
adds carry v_fold215_i_463_L v_shr100_i_455_L v_add79_i_434_L;
(*adc v_fold215_i_463_H v_shr100_i_455_H v_add79_i_434_H carry;*)
(* == modified == *)
adcs discard v_fold215_i_463_H v_shr100_i_455_H v_add79_i_434_H carry;
(*   %fold215.tr.i.464 = trunc i128 %fold215.i.463 to i64, !dbg !1724 *)
mov v_fold215_tr_i_464 v_fold215_i_463_L;
(*   %conv109.i.465 = and i64 %fold215.tr.i.464, 2251799813685247, !dbg !1724 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv109_i_465 v_fold215_tr_i_464 0x7FFFFFFFFFFFF;
assert true && eq v_conv109_i_465 tmp_to_be_used;
assume eq v_conv109_i_465 tmp_to_be_used && true;
(*   %mul110.i.466 = mul i64 %conv107.i.462, 19, !dbg !1726 *)
mul v_mul110_i_466 v_conv107_i_462 19;
(*   %add111.i.467 = add i64 %mul110.i.466, %conv77.i.432, !dbg !1728 *)
add v_add111_i_467 v_mul110_i_466 v_conv77_i_432;
(*   %shr112.i.468 = lshr i64 %add111.i.467, 51, !dbg !1730 *)
(* You may need to modify here *)
split v_shr112_i_468 tmp_to_be_used v_add111_i_467 51;
(*   %fold216.i.469 = add i64 %mul110.i.466, %add75.tr.i.431, !dbg !1732 *)
(*add v_fold216_i_469 v_mul110_i_466 v_add75_tr_i_431;*)
(* == modified == *)
adds discard v_fold216_i_469 v_mul110_i_466 v_add75_tr_i_431;
(*   %and113.i.470 = and i64 %fold216.i.469, 2251799813685247, !dbg !1732 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_and113_i_470 v_fold216_i_469 0x7FFFFFFFFFFFF;
assert true && eq v_and113_i_470 tmp_to_be_used;
assume eq v_and113_i_470 tmp_to_be_used && true;
(*   %add114.i.471 = add nuw nsw i64 %shr112.i.468, %conv91.i.446, !dbg !1734 *)
add v_add114_i_471 v_shr112_i_468 v_conv91_i_446;
(*   %shr115.i.472 = lshr i64 %add114.i.471, 51, !dbg !1736 *)
(* You may need to modify here *)
split v_shr115_i_472 tmp_to_be_used v_add114_i_471 51;
(*   %fold217.i.473 = add i64 %shr112.i.468, %fold.tr.i.445, !dbg !1738 *)
(*add v_fold217_i_473 v_shr112_i_468 v_fold_tr_i_445;*)
(* == modified == *)
adds discard v_fold217_i_473 v_shr112_i_468 v_fold_tr_i_445;
(*   %and116.i.474 = and i64 %fold217.i.473, 2251799813685247, !dbg !1738 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_and116_i_474 v_fold217_i_473 0x7FFFFFFFFFFFF;
assert true && eq v_and116_i_474 tmp_to_be_used;
assume eq v_and116_i_474 tmp_to_be_used && true;
(*   %add117.i.475 = add nuw nsw i64 %shr115.i.472, %conv97.i.452, !dbg !1740 *)
add v_add117_i_475 v_shr115_i_472 v_conv97_i_452;
(*   store i64 %and113.i.470, i64* %arraydecay.i.386, align 8, !dbg !1742, !tbaa !1385 *)
mov L36_0 v_and113_i_470;
(*   store i64 %and116.i.474, i64* %arrayidx119.i.476, align 8, !dbg !1743, !tbaa !1385 *)
mov L37_0 v_and116_i_474;
(*   store i64 %add117.i.475, i64* %arrayidx120.i.477, align 8, !dbg !1744, !tbaa !1385 *)
mov L38_0 v_add117_i_475;
(*   store i64 %conv103.i.458, i64* %arrayidx121.i.478, align 8, !dbg !1745, !tbaa !1385 *)
mov L39_0 v_conv103_i_458;
(*   store i64 %conv109.i.465, i64* %arrayidx122.i.479, align 8, !dbg !1746, !tbaa !1385 *)
mov L40_0 v_conv109_i_465;
(*   %33 = load i64, i64* %arrayidx18.i.i.575, align 8, !dbg !1755, !tbaa !1385 *)
mov v33 L30_0;
(*   %mul.i.295 = mul i64 %33, 19, !dbg !1756 *)
mul v_mul_i_295 v33 19;
(*   %mul1.i.296 = mul i64 %33, 38, !dbg !1758 *)
mul v_mul1_i_296 v33 38;
(*   %mul3.i.297 = shl i64 %33, 1, !dbg !1760 *)
shl v_mul3_i_297 v33 1;
(*   %34 = load i64, i64* %arrayidx17.i.i.574, align 8, !dbg !1762, !tbaa !1385 *)
mov v34 L29_0;
(*   %mul5.i.299 = mul i64 %34, 19, !dbg !1763 *)
mul v_mul5_i_299 v34 19;
(*   %mul6.i.300 = mul i64 %34, 38, !dbg !1765 *)
mul v_mul6_i_300 v34 38;
(*   %mul8.i.301 = shl i64 %34, 1, !dbg !1767 *)
shl v_mul8_i_301 v34 1;
(*   %35 = load i64, i64* %arrayidx16.i.i.573, align 8, !dbg !1769, !tbaa !1385 *)
mov v35 L28_0;
(*   %mul10.i.303 = shl i64 %35, 1, !dbg !1770 *)
shl v_mul10_i_303 v35 1;
(*   %36 = load i64, i64* %arrayidx15.i.i.572, align 8, !dbg !1772, !tbaa !1385 *)
mov v36 L27_0;
(*   %mul12.i.305 = shl i64 %36, 1, !dbg !1773 *)
shl v_mul12_i_305 v36 1;
(*   %conv.i.306 = zext i64 %33 to i128, !dbg !1775 *)
mov v_conv_i_306_L v33;
mov v_conv_i_306_H 0;
(*   %conv14.i.307 = zext i64 %mul.i.295 to i128, !dbg !1776 *)
mov v_conv14_i_307_L v_mul_i_295;
mov v_conv14_i_307_H 0;
(*   %mul15.i.308 = mul nuw i128 %conv14.i.307, %conv.i.306, !dbg !1777 *)
mull tmpLL_H tmpLL_L v_conv14_i_307_L v_conv_i_306_L;
mul tmpHL_L v_conv14_i_307_H v_conv_i_306_L;
mul tmpLH_L v_conv14_i_307_L v_conv_i_306_H;
mov v_mul15_i_308_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul15_i_308_H tmp tmpLL_H;
(*   %conv17.i.309 = zext i64 %34 to i128, !dbg !1779 *)
mov v_conv17_i_309_L v34;
mov v_conv17_i_309_H 0;
(*   %conv18.i.310 = zext i64 %mul1.i.296 to i128, !dbg !1780 *)
mov v_conv18_i_310_L v_mul1_i_296;
mov v_conv18_i_310_H 0;
(*   %mul19.i.311 = mul nuw i128 %conv17.i.309, %conv18.i.310, !dbg !1781 *)
mull tmpLL_H tmpLL_L v_conv17_i_309_L v_conv18_i_310_L;
mul tmpHL_L v_conv17_i_309_H v_conv18_i_310_L;
mul tmpLH_L v_conv17_i_309_L v_conv18_i_310_H;
mov v_mul19_i_311_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul19_i_311_H tmp tmpLL_H;
(*   %conv22.i.312 = zext i64 %mul5.i.299 to i128, !dbg !1783 *)
mov v_conv22_i_312_L v_mul5_i_299;
mov v_conv22_i_312_H 0;
(*   %mul23.i.313 = mul nuw i128 %conv22.i.312, %conv17.i.309, !dbg !1784 *)
mull tmpLL_H tmpLL_L v_conv22_i_312_L v_conv17_i_309_L;
mul tmpHL_L v_conv22_i_312_H v_conv17_i_309_L;
mul tmpLH_L v_conv22_i_312_L v_conv17_i_309_H;
mov v_mul23_i_313_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul23_i_313_H tmp tmpLL_H;
(*   %conv25.i.314 = zext i64 %35 to i128, !dbg !1786 *)
mov v_conv25_i_314_L v35;
mov v_conv25_i_314_H 0;
(*   %mul27.i.315 = mul nuw i128 %conv25.i.314, %conv18.i.310, !dbg !1787 *)
mull tmpLL_H tmpLL_L v_conv25_i_314_L v_conv18_i_310_L;
mul tmpHL_L v_conv25_i_314_H v_conv18_i_310_L;
mul tmpLH_L v_conv25_i_314_L v_conv18_i_310_H;
mov v_mul27_i_315_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul27_i_315_H tmp tmpLL_H;
(*   %conv30.i.316 = zext i64 %mul6.i.300 to i128, !dbg !1789 *)
mov v_conv30_i_316_L v_mul6_i_300;
mov v_conv30_i_316_H 0;
(*   %mul31.i.317 = mul nuw i128 %conv25.i.314, %conv30.i.316, !dbg !1790 *)
mull tmpLL_H tmpLL_L v_conv25_i_314_L v_conv30_i_316_L;
mul tmpHL_L v_conv25_i_314_H v_conv30_i_316_L;
mul tmpLH_L v_conv25_i_314_L v_conv30_i_316_H;
mov v_mul31_i_317_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul31_i_317_H tmp tmpLL_H;
(*   %mul36.i.318 = mul nuw i128 %conv25.i.314, %conv25.i.314, !dbg !1792 *)
mull tmpLL_H tmpLL_L v_conv25_i_314_L v_conv25_i_314_L;
mul tmpHL_L v_conv25_i_314_H v_conv25_i_314_L;
mul tmpLH_L v_conv25_i_314_L v_conv25_i_314_H;
mov v_mul36_i_318_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul36_i_318_H tmp tmpLL_H;
(*   %conv38.i.319 = zext i64 %36 to i128, !dbg !1794 *)
mov v_conv38_i_319_L v36;
mov v_conv38_i_319_H 0;
(*   %mul40.i.320 = mul nuw i128 %conv38.i.319, %conv18.i.310, !dbg !1795 *)
mull tmpLL_H tmpLL_L v_conv38_i_319_L v_conv18_i_310_L;
mul tmpHL_L v_conv38_i_319_H v_conv18_i_310_L;
mul tmpLH_L v_conv38_i_319_L v_conv18_i_310_H;
mov v_mul40_i_320_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul40_i_320_H tmp tmpLL_H;
(*   %conv43.i.321 = zext i64 %mul8.i.301 to i128, !dbg !1797 *)
mov v_conv43_i_321_L v_mul8_i_301;
mov v_conv43_i_321_H 0;
(*   %mul44.i.322 = mul nuw i128 %conv38.i.319, %conv43.i.321, !dbg !1798 *)
mull tmpLL_H tmpLL_L v_conv38_i_319_L v_conv43_i_321_L;
mul tmpHL_L v_conv38_i_319_H v_conv43_i_321_L;
mul tmpLH_L v_conv38_i_319_L v_conv43_i_321_H;
mov v_mul44_i_322_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul44_i_322_H tmp tmpLL_H;
(*   %conv47.i.323 = zext i64 %mul10.i.303 to i128, !dbg !1800 *)
mov v_conv47_i_323_L v_mul10_i_303;
mov v_conv47_i_323_H 0;
(*   %mul48.i.324 = mul nuw i128 %conv38.i.319, %conv47.i.323, !dbg !1801 *)
mull tmpLL_H tmpLL_L v_conv38_i_319_L v_conv47_i_323_L;
mul tmpHL_L v_conv38_i_319_H v_conv47_i_323_L;
mul tmpLH_L v_conv38_i_319_L v_conv47_i_323_H;
mov v_mul48_i_324_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul48_i_324_H tmp tmpLL_H;
(*   %mul53.i.325 = mul nuw i128 %conv38.i.319, %conv38.i.319, !dbg !1803 *)
mull tmpLL_H tmpLL_L v_conv38_i_319_L v_conv38_i_319_L;
mul tmpHL_L v_conv38_i_319_H v_conv38_i_319_L;
mul tmpLH_L v_conv38_i_319_L v_conv38_i_319_H;
mov v_mul53_i_325_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul53_i_325_H tmp tmpLL_H;
(*   %37 = load i64, i64* %arraydecay.i.556, align 8, !dbg !1805, !tbaa !1385 *)
mov v37 L26_0;
(*   %conv55.i.326 = zext i64 %37 to i128, !dbg !1806 *)
mov v_conv55_i_326_L v37;
mov v_conv55_i_326_H 0;
(*   %conv56.i.327 = zext i64 %mul3.i.297 to i128, !dbg !1807 *)
mov v_conv56_i_327_L v_mul3_i_297;
mov v_conv56_i_327_H 0;
(*   %mul57.i.328 = mul nuw i128 %conv55.i.326, %conv56.i.327, !dbg !1808 *)
mull tmpLL_H tmpLL_L v_conv55_i_326_L v_conv56_i_327_L;
mul tmpHL_L v_conv55_i_326_H v_conv56_i_327_L;
mul tmpLH_L v_conv55_i_326_L v_conv56_i_327_H;
mov v_mul57_i_328_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul57_i_328_H tmp tmpLL_H;
(*   %mul61.i.329 = mul nuw i128 %conv55.i.326, %conv43.i.321, !dbg !1810 *)
mull tmpLL_H tmpLL_L v_conv55_i_326_L v_conv43_i_321_L;
mul tmpHL_L v_conv55_i_326_H v_conv43_i_321_L;
mul tmpLH_L v_conv55_i_326_L v_conv43_i_321_H;
mov v_mul61_i_329_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul61_i_329_H tmp tmpLL_H;
(*   %mul65.i.330 = mul nuw i128 %conv55.i.326, %conv47.i.323, !dbg !1812 *)
mull tmpLL_H tmpLL_L v_conv55_i_326_L v_conv47_i_323_L;
mul tmpHL_L v_conv55_i_326_H v_conv47_i_323_L;
mul tmpLH_L v_conv55_i_326_L v_conv47_i_323_H;
mov v_mul65_i_330_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul65_i_330_H tmp tmpLL_H;
(*   %conv68.i.331 = zext i64 %mul12.i.305 to i128, !dbg !1814 *)
mov v_conv68_i_331_L v_mul12_i_305;
mov v_conv68_i_331_H 0;
(*   %mul69.i.332 = mul nuw i128 %conv55.i.326, %conv68.i.331, !dbg !1815 *)
mull tmpLL_H tmpLL_L v_conv55_i_326_L v_conv68_i_331_L;
mul tmpHL_L v_conv55_i_326_H v_conv68_i_331_L;
mul tmpLH_L v_conv55_i_326_L v_conv68_i_331_H;
mov v_mul69_i_332_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul69_i_332_H tmp tmpLL_H;
(*   %mul74.i.333 = mul nuw i128 %conv55.i.326, %conv55.i.326, !dbg !1817 *)
mull tmpLL_H tmpLL_L v_conv55_i_326_L v_conv55_i_326_L;
mul tmpHL_L v_conv55_i_326_H v_conv55_i_326_L;
mul tmpLH_L v_conv55_i_326_L v_conv55_i_326_H;
mov v_mul74_i_333_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul74_i_333_H tmp tmpLL_H;
(*   %add.i.334 = add i128 %mul40.i.320, %mul31.i.317, !dbg !1819 *)
adds carry v_add_i_334_L v_mul40_i_320_L v_mul31_i_317_L;
adc v_add_i_334_H v_mul40_i_320_H v_mul31_i_317_H carry;
(*   %add75.i.335 = add i128 %add.i.334, %mul74.i.333, !dbg !1820 *)
adds carry v_add75_i_335_L v_add_i_334_L v_mul74_i_333_L;
adc v_add75_i_335_H v_add_i_334_H v_mul74_i_333_H carry;
(*   %shr.i.336 = lshr i128 %add75.i.335, 51, !dbg !1822 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add75_i_335_L 51;
split tmpH_h tmpH_l v_add75_i_335_H 51;
shl tmp tmpH_l 13;
add v_shr_i_336_L tmp tmpL_h;
mov v_shr_i_336_H tmpH_h;
(* == modified == *)
assert true && tmpH_h = const 64 0;
assume tmpH_h = 0 && true;
(*   %add75.tr.i.337 = trunc i128 %add75.i.335 to i64, !dbg !1823 *)
mov v_add75_tr_i_337 v_add75_i_335_L;
(*   %conv77.i.338 = and i64 %add75.tr.i.337, 2251799813685247, !dbg !1823 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv77_i_338 v_add75_tr_i_337 0x7FFFFFFFFFFFF;
assert true && eq v_conv77_i_338 tmp_to_be_used;
assume eq v_conv77_i_338 tmp_to_be_used && true;
(*   %add78.i.339 = add i128 %mul44.i.322, %mul36.i.318, !dbg !1825 *)
adds carry v_add78_i_339_L v_mul44_i_322_L v_mul36_i_318_L;
adc v_add78_i_339_H v_mul44_i_322_H v_mul36_i_318_H carry;
(*   %add79.i.340 = add i128 %add78.i.339, %mul57.i.328, !dbg !1826 *)
adds carry v_add79_i_340_L v_add78_i_339_L v_mul57_i_328_L;
adc v_add79_i_340_H v_add78_i_339_H v_mul57_i_328_H carry;
(*   %add80.i.341 = add i128 %mul48.i.324, %mul15.i.308, !dbg !1828 *)
adds carry v_add80_i_341_L v_mul48_i_324_L v_mul15_i_308_L;
adc v_add80_i_341_H v_mul48_i_324_H v_mul15_i_308_H carry;
(*   %add81.i.342 = add i128 %add80.i.341, %mul61.i.329, !dbg !1829 *)
adds carry v_add81_i_342_L v_add80_i_341_L v_mul61_i_329_L;
adc v_add81_i_342_H v_add80_i_341_H v_mul61_i_329_H carry;
(*   %add82.i.343 = add i128 %mul53.i.325, %mul19.i.311, !dbg !1831 *)
adds carry v_add82_i_343_L v_mul53_i_325_L v_mul19_i_311_L;
adc v_add82_i_343_H v_mul53_i_325_H v_mul19_i_311_H carry;
(*   %add83.i.344 = add i128 %add82.i.343, %mul65.i.330, !dbg !1832 *)
adds carry v_add83_i_344_L v_add82_i_343_L v_mul65_i_330_L;
adc v_add83_i_344_H v_add82_i_343_H v_mul65_i_330_H carry;
(*   %add84.i.345 = add i128 %mul27.i.315, %mul23.i.313, !dbg !1834 *)
adds carry v_add84_i_345_L v_mul27_i_315_L v_mul23_i_313_L;
adc v_add84_i_345_H v_mul27_i_315_H v_mul23_i_313_H carry;
(*   %add85.i.346 = add i128 %add84.i.345, %mul69.i.332, !dbg !1835 *)
adds carry v_add85_i_346_L v_add84_i_345_L v_mul69_i_332_L;
adc v_add85_i_346_H v_add84_i_345_H v_mul69_i_332_H carry;
(*   %conv86.i.347 = and i128 %shr.i.336, 18446744073709551615, !dbg !1837 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv86_i_347_L v_shr_i_336_L 0xFFFFFFFFFFFFFFFF;
assert true && eq v_conv86_i_347_L v_shr_i_336_L;
assume eq v_conv86_i_347_L v_shr_i_336_L && true;
and v_conv86_i_347_H v_shr_i_336_H 0x0;
assert true && eq v_conv86_i_347_H (const 64 0);
assume eq v_conv86_i_347_H 0 && true;
(*   %add87.i.348 = add i128 %conv86.i.347, %add85.i.346, !dbg !1838 *)
adds carry v_add87_i_348_L v_conv86_i_347_L v_add85_i_346_L;
adc v_add87_i_348_H v_conv86_i_347_H v_add85_i_346_H carry;
(*   %shr88.i.349 = lshr i128 %add87.i.348, 51, !dbg !1840 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add87_i_348_L 51;
split tmpH_h tmpH_l v_add87_i_348_H 51;
shl tmp tmpH_l 13;
add v_shr88_i_349_L tmp tmpL_h;
mov v_shr88_i_349_H tmpH_h;
(* == modified == *)
assert true && tmpH_h = const 64 0;
assume tmpH_h = 0 && true;
(*   %fold.i.350 = add i128 %shr.i.336, %add85.i.346, !dbg !1841 *)
adds carry v_fold_i_350_L v_shr_i_336_L v_add85_i_346_L;
(*adc v_fold_i_350_H v_shr_i_336_H v_add85_i_346_H carry;*)
(* == modified == *)
adcs discard v_fold_i_350_H v_shr_i_336_H v_add85_i_346_H carry;
(*   %fold.tr.i.351 = trunc i128 %fold.i.350 to i64, !dbg !1842 *)
mov v_fold_tr_i_351 v_fold_i_350_L;
(*   %conv91.i.352 = and i64 %fold.tr.i.351, 2251799813685247, !dbg !1842 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv91_i_352 v_fold_tr_i_351 0x7FFFFFFFFFFFF;
assert true && eq v_conv91_i_352 tmp_to_be_used;
assume eq v_conv91_i_352 tmp_to_be_used && true;
(*   %conv92.i.353 = and i128 %shr88.i.349, 18446744073709551615, !dbg !1844 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv92_i_353_L v_shr88_i_349_L 0xFFFFFFFFFFFFFFFF;
assert true && eq v_conv92_i_353_L v_shr88_i_349_L;
assume eq v_conv92_i_353_L v_shr88_i_349_L && true;
and v_conv92_i_353_H v_shr88_i_349_H 0x0;
assert true && eq v_conv92_i_353_H (const 64 0);
assume eq v_conv92_i_353_H 0 && true;
(*   %add93.i.354 = add i128 %conv92.i.353, %add83.i.344, !dbg !1845 *)
adds carry v_add93_i_354_L v_conv92_i_353_L v_add83_i_344_L;
adc v_add93_i_354_H v_conv92_i_353_H v_add83_i_344_H carry;
(*   %shr94.i.355 = lshr i128 %add93.i.354, 51, !dbg !1847 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add93_i_354_L 51;
split tmpH_h tmpH_l v_add93_i_354_H 51;
shl tmp tmpH_l 13;
add v_shr94_i_355_L tmp tmpL_h;
mov v_shr94_i_355_H tmpH_h;
(* == modified == *)
assert true && tmpH_h = const 64 0;
assume tmpH_h = 0 && true;
(*   %fold213.i.356 = add i128 %shr88.i.349, %add83.i.344, !dbg !1848 *)
adds carry v_fold213_i_356_L v_shr88_i_349_L v_add83_i_344_L;
(*adc v_fold213_i_356_H v_shr88_i_349_H v_add83_i_344_H carry;*)
(* == modified == *)
adcs discard v_fold213_i_356_H v_shr88_i_349_H v_add83_i_344_H carry;
(*   %fold213.tr.i.357 = trunc i128 %fold213.i.356 to i64, !dbg !1849 *)
mov v_fold213_tr_i_357 v_fold213_i_356_L;
(*   %conv97.i.358 = and i64 %fold213.tr.i.357, 2251799813685247, !dbg !1849 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv97_i_358 v_fold213_tr_i_357 0x7FFFFFFFFFFFF;
assert true && eq v_conv97_i_358 tmp_to_be_used;
assume eq v_conv97_i_358 tmp_to_be_used && true;
(*   %conv98.i.359 = and i128 %shr94.i.355, 18446744073709551615, !dbg !1851 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv98_i_359_L v_shr94_i_355_L 0xFFFFFFFFFFFFFFFF;
assert true && eq v_conv98_i_359_L v_shr94_i_355_L;
assume eq v_conv98_i_359_L v_shr94_i_355_L && true;
and v_conv98_i_359_H v_shr94_i_355_H 0x0;
assert true && eq v_conv98_i_359_H (const 64 0);
assume eq v_conv98_i_359_H 0 && true;
(*   %add99.i.360 = add i128 %conv98.i.359, %add81.i.342, !dbg !1852 *)
adds carry v_add99_i_360_L v_conv98_i_359_L v_add81_i_342_L;
adc v_add99_i_360_H v_conv98_i_359_H v_add81_i_342_H carry;
(*   %shr100.i.361 = lshr i128 %add99.i.360, 51, !dbg !1854 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add99_i_360_L 51;
split tmpH_h tmpH_l v_add99_i_360_H 51;
shl tmp tmpH_l 13;
add v_shr100_i_361_L tmp tmpL_h;
mov v_shr100_i_361_H tmpH_h;
(* == modified == *)
assert true && tmpH_h = const 64 0;
assume tmpH_h = 0 && true;
(*   %fold214.i.362 = add i128 %shr94.i.355, %add81.i.342, !dbg !1855 *)
adds carry v_fold214_i_362_L v_shr94_i_355_L v_add81_i_342_L;
(*adc v_fold214_i_362_H v_shr94_i_355_H v_add81_i_342_H carry;*)
(* == modified == *)
adcs discard v_fold214_i_362_H v_shr94_i_355_H v_add81_i_342_H carry;
(*   %fold214.tr.i.363 = trunc i128 %fold214.i.362 to i64, !dbg !1856 *)
mov v_fold214_tr_i_363 v_fold214_i_362_L;
(*   %conv103.i.364 = and i64 %fold214.tr.i.363, 2251799813685247, !dbg !1856 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv103_i_364 v_fold214_tr_i_363 0x7FFFFFFFFFFFF;
assert true && eq v_conv103_i_364 tmp_to_be_used;
assume eq v_conv103_i_364 tmp_to_be_used && true;
(*   %conv104.i.365 = and i128 %shr100.i.361, 18446744073709551615, !dbg !1858 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv104_i_365_L v_shr100_i_361_L 0xFFFFFFFFFFFFFFFF;
assert true && eq v_conv104_i_365_L v_shr100_i_361_L;
assume eq v_conv104_i_365_L v_shr100_i_361_L && true;
and v_conv104_i_365_H v_shr100_i_361_H 0x0;
assert true && eq v_conv104_i_365_H (const 64 0);
assume eq v_conv104_i_365_H 0 && true;
(*   %add105.i.366 = add i128 %conv104.i.365, %add79.i.340, !dbg !1859 *)
adds carry v_add105_i_366_L v_conv104_i_365_L v_add79_i_340_L;
adc v_add105_i_366_H v_conv104_i_365_H v_add79_i_340_H carry;
(*   %shr106.i.367 = lshr i128 %add105.i.366, 51, !dbg !1861 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add105_i_366_L 51;
split tmpH_h tmpH_l v_add105_i_366_H 51;
shl tmp tmpH_l 13;
add v_shr106_i_367_L tmp tmpL_h;
mov v_shr106_i_367_H tmpH_h;
(* == modified == *)
assert true && tmpH_h = const 64 0;
assume tmpH_h = 0 && true;
(*   %conv107.i.368 = trunc i128 %shr106.i.367 to i64, !dbg !1862 *)
mov v_conv107_i_368 v_shr106_i_367_L;
(*   %fold215.i.369 = add i128 %shr100.i.361, %add79.i.340, !dbg !1864 *)
adds carry v_fold215_i_369_L v_shr100_i_361_L v_add79_i_340_L;
(*adc v_fold215_i_369_H v_shr100_i_361_H v_add79_i_340_H carry;*)
(* == modified == *)
adcs discard v_fold215_i_369_H v_shr100_i_361_H v_add79_i_340_H carry;
(*   %fold215.tr.i.370 = trunc i128 %fold215.i.369 to i64, !dbg !1865 *)
mov v_fold215_tr_i_370 v_fold215_i_369_L;
(*   %conv109.i.371 = and i64 %fold215.tr.i.370, 2251799813685247, !dbg !1865 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv109_i_371 v_fold215_tr_i_370 0x7FFFFFFFFFFFF;
assert true && eq v_conv109_i_371 tmp_to_be_used;
assume eq v_conv109_i_371 tmp_to_be_used && true;
(*   %mul110.i.372 = mul i64 %conv107.i.368, 19, !dbg !1867 *)
mul v_mul110_i_372 v_conv107_i_368 19;
(*   %add111.i.373 = add i64 %mul110.i.372, %conv77.i.338, !dbg !1869 *)
add v_add111_i_373 v_mul110_i_372 v_conv77_i_338;
(*   %shr112.i.374 = lshr i64 %add111.i.373, 51, !dbg !1871 *)
(* You may need to modify here *)
split v_shr112_i_374 tmp_to_be_used v_add111_i_373 51;
(*   %fold216.i.375 = add i64 %mul110.i.372, %add75.tr.i.337, !dbg !1873 *)
(*add v_fold216_i_375 v_mul110_i_372 v_add75_tr_i_337;*)
adds discard v_fold216_i_375 v_mul110_i_372 v_add75_tr_i_337;
(*   %and113.i.376 = and i64 %fold216.i.375, 2251799813685247, !dbg !1873 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_and113_i_376 v_fold216_i_375 0x7FFFFFFFFFFFF;
assert true && eq v_and113_i_376 tmp_to_be_used;
assume eq v_and113_i_376 tmp_to_be_used && true;
(*   %add114.i.377 = add nuw nsw i64 %shr112.i.374, %conv91.i.352, !dbg !1875 *)
add v_add114_i_377 v_shr112_i_374 v_conv91_i_352;
(*   %shr115.i.378 = lshr i64 %add114.i.377, 51, !dbg !1877 *)
(* You may need to modify here *)
split v_shr115_i_378 tmp_to_be_used v_add114_i_377 51;
(*   %fold217.i.379 = add i64 %shr112.i.374, %fold.tr.i.351, !dbg !1879 *)
(*add v_fold217_i_379 v_shr112_i_374 v_fold_tr_i_351;*)
(* == modified == *)
adds discard v_fold217_i_379 v_shr112_i_374 v_fold_tr_i_351;
(*   %and116.i.380 = and i64 %fold217.i.379, 2251799813685247, !dbg !1879 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_and116_i_380 v_fold217_i_379 0x7FFFFFFFFFFFF;
assert true && eq v_and116_i_380 tmp_to_be_used;
assume eq v_and116_i_380 tmp_to_be_used && true;
(*   %add117.i.381 = add nuw nsw i64 %shr115.i.378, %conv97.i.358, !dbg !1881 *)
add v_add117_i_381 v_shr115_i_378 v_conv97_i_358;
(*   store i64 %and113.i.376, i64* %arraydecay.i.292, align 8, !dbg !1883, !tbaa !1385 *)
mov L41_0 v_and113_i_376;
(*   store i64 %and116.i.380, i64* %arrayidx119.i.382, align 8, !dbg !1884, !tbaa !1385 *)
mov L42_0 v_and116_i_380;
(*   store i64 %add117.i.381, i64* %arrayidx120.i.383, align 8, !dbg !1885, !tbaa !1385 *)
mov L43_0 v_add117_i_381;
(*   store i64 %conv103.i.364, i64* %arrayidx121.i.384, align 8, !dbg !1886, !tbaa !1385 *)
mov L44_0 v_conv103_i_364;
(*   store i64 %conv109.i.371, i64* %arrayidx122.i.385, align 8, !dbg !1887, !tbaa !1385 *)
mov L45_0 v_conv109_i_371;
(*   %38 = load i64, i64* %arrayidx.i.66, align 16, !dbg !1899, !tbaa !1385 *)
mov v38 L7_0;
(*   %39 = load i64, i64* %arrayidx.i.217, align 16, !dbg !1900, !tbaa !1385 *)
mov v39 L6_0;
(*   %add.i.i.275 = add i64 %39, %38, !dbg !1901 *)
add v_add_i_i_275 v39 v38;
(*   %40 = load i64, i64* %arrayidx3.1.i.224, align 8, !dbg !1903, !tbaa !1385 *)
mov v40 L9_0;
(*   %41 = load i64, i64* %arrayidx.1.i.223, align 8, !dbg !1904, !tbaa !1385 *)
mov v41 L8_0;
(*   %add4.i.i.278 = add i64 %41, %40, !dbg !1905 *)
add v_add4_i_i_278 v41 v40;
(*   %42 = load i64, i64* %arrayidx3.2.i.230, align 16, !dbg !1907, !tbaa !1385 *)
mov v42 L11_0;
(*   %43 = load i64, i64* %arrayidx.2.i.229, align 16, !dbg !1908, !tbaa !1385 *)
mov v43 L10_0;
(*   %add7.i.i.281 = add i64 %43, %42, !dbg !1909 *)
add v_add7_i_i_281 v43 v42;
(*   %44 = load i64, i64* %arrayidx3.3.i.236, align 8, !dbg !1911, !tbaa !1385 *)
mov v44 L13_0;
(*   %45 = load i64, i64* %arrayidx.3.i.235, align 8, !dbg !1912, !tbaa !1385 *)
mov v45 L12_0;
(*   %add10.i.i.284 = add i64 %45, %44, !dbg !1913 *)
add v_add10_i_i_284 v45 v44;
(*   %46 = load i64, i64* %arrayidx3.4.i.242, align 16, !dbg !1915, !tbaa !1385 *)
mov v46 L15_0;
(*   %47 = load i64, i64* %arrayidx.4.i.241, align 16, !dbg !1916, !tbaa !1385 *)
mov v47 L14_0;
(*   %add13.i.i.287 = add i64 %47, %46, !dbg !1917 *)
add v_add13_i_i_287 v47 v46;
(*   %add.i.i.250 = add i64 %38, 4503599627370458, !dbg !1929 *)
add v_add_i_i_250 v38 4503599627370458;
(*   %sub.i.i.251 = sub i64 %add.i.i.250, %39, !dbg !1930 *)
sub v_sub_i_i_251 v_add_i_i_250 v39;
(*   %add3.i.i.253 = add i64 %40, 4503599627370494, !dbg !1932 *)
add v_add3_i_i_253 v40 4503599627370494;
(*   %sub5.i.i.255 = sub i64 %add3.i.i.253, %41, !dbg !1933 *)
sub v_sub5_i_i_255 v_add3_i_i_253 v41;
(*   %add7.i.i.257 = add i64 %42, 4503599627370494, !dbg !1935 *)
add v_add7_i_i_257 v42 4503599627370494;
(*   %sub9.i.i.259 = sub i64 %add7.i.i.257, %43, !dbg !1936 *)
sub v_sub9_i_i_259 v_add7_i_i_257 v43;
(*   %add11.i.i.261 = add i64 %44, 4503599627370494, !dbg !1938 *)
add v_add11_i_i_261 v44 4503599627370494;
(*   %sub13.i.i.263 = sub i64 %add11.i.i.261, %45, !dbg !1939 *)
sub v_sub13_i_i_263 v_add11_i_i_261 v45;
(*   %add15.i.i.265 = add i64 %46, 4503599627370494, !dbg !1941 *)
add v_add15_i_i_265 v46 4503599627370494;
(*   %sub17.i.i.267 = sub i64 %add15.i.i.265, %47, !dbg !1942 *)
sub v_sub17_i_i_267 v_add15_i_i_265 v47;
(*   store i64 %sub.i.i.251, i64* %arraydecay.i.536, align 8, !dbg !1944, !tbaa !1385 *)
mov L31_0 v_sub_i_i_251;
(*   store i64 %sub5.i.i.255, i64* %arrayidx15.i.i.552, align 8, !dbg !1945, !tbaa !1385 *)
mov L32_0 v_sub5_i_i_255;
(*   store i64 %sub9.i.i.259, i64* %arrayidx16.i.i.553, align 8, !dbg !1946, !tbaa !1385 *)
mov L33_0 v_sub9_i_i_259;
(*   store i64 %sub13.i.i.263, i64* %arrayidx17.i.i.554, align 8, !dbg !1947, !tbaa !1385 *)
mov L34_0 v_sub13_i_i_263;
(*   store i64 %sub17.i.i.267, i64* %arrayidx18.i.i.555, align 8, !dbg !1948, !tbaa !1385 *)
mov L35_0 v_sub17_i_i_267;
(*   call void @fe_mul_impl(i64* %arrayidx.i.29, i64* %arraydecay.i.292, i64* %arraydecay.i.386) #2, !dbg !1954 *)
call fe_mul_impl(L41_0, L42_0, L43_0, L44_0, L45_0, L36_0, L37_0, L38_0, L39_0, L40_0, X4_0, X4_1, X4_2, X4_3, X4_4);
(*   %add.i.i.205 = add nuw nsw i64 %and113.i.376, 4503599627370458, !dbg !1964 *)
add v_add_i_i_205 v_and113_i_376 4503599627370458;
(*   %48 = load i64, i64* %arraydecay.i.386, align 8, !dbg !1965, !tbaa !1385 *)
mov v48 L36_0;
(*   %sub.i.i = sub i64 %add.i.i.205, %48, !dbg !1966 *)
sub v_sub_i_i v_add_i_i_205 v48;
(*   %add3.i.i = add nuw nsw i64 %and116.i.380, 4503599627370494, !dbg !1968 *)
add v_add3_i_i v_and116_i_380 4503599627370494;
(*   %49 = load i64, i64* %arrayidx119.i.476, align 8, !dbg !1969, !tbaa !1385 *)
mov v49 L37_0;
(*   %sub5.i.i = sub i64 %add3.i.i, %49, !dbg !1970 *)
sub v_sub5_i_i v_add3_i_i v49;
(*   %add7.i.i.209 = add nuw nsw i64 %add117.i.381, 4503599627370494, !dbg !1972 *)
add v_add7_i_i_209 v_add117_i_381 4503599627370494;
(*   %50 = load i64, i64* %arrayidx120.i.477, align 8, !dbg !1973, !tbaa !1385 *)
mov v50 L38_0;
(*   %sub9.i.i = sub i64 %add7.i.i.209, %50, !dbg !1974 *)
sub v_sub9_i_i v_add7_i_i_209 v50;
(*   %add11.i.i = add nuw nsw i64 %conv103.i.364, 4503599627370494, !dbg !1976 *)
add v_add11_i_i v_conv103_i_364 4503599627370494;
(*   %51 = load i64, i64* %arrayidx121.i.478, align 8, !dbg !1977, !tbaa !1385 *)
mov v51 L39_0;
(*   %sub13.i.i = sub i64 %add11.i.i, %51, !dbg !1978 *)
sub v_sub13_i_i v_add11_i_i v51;
(*   %add15.i.i = add nuw nsw i64 %conv109.i.371, 4503599627370494, !dbg !1980 *)
add v_add15_i_i v_conv109_i_371 4503599627370494;
(*   %52 = load i64, i64* %arrayidx122.i.479, align 8, !dbg !1981, !tbaa !1385 *)
mov v52 L40_0;
(*   %sub17.i.i = sub i64 %add15.i.i, %52, !dbg !1982 *)
sub v_sub17_i_i v_add15_i_i v52;
(*   store i64 %sub.i.i, i64* %arraydecay.i.511, align 8, !dbg !1984, !tbaa !1385 *)
mov L21_0 v_sub_i_i;
(*   store i64 %sub5.i.i, i64* %arrayidx19.i.i.532, align 8, !dbg !1985, !tbaa !1385 *)
mov L22_0 v_sub5_i_i;
(*   store i64 %sub9.i.i, i64* %arrayidx20.i.i.533, align 8, !dbg !1986, !tbaa !1385 *)
mov L23_0 v_sub9_i_i;
(*   store i64 %sub13.i.i, i64* %arrayidx21.i.i.534, align 8, !dbg !1987, !tbaa !1385 *)
mov L24_0 v_sub13_i_i;
(*   store i64 %sub17.i.i, i64* %arrayidx22.i.i.535, align 8, !dbg !1988, !tbaa !1385 *)
mov L25_0 v_sub17_i_i;
(*   %mul.i.111 = mul i64 %sub17.i.i.267, 19, !dbg !1997 *)
mul v_mul_i_111 v_sub17_i_i_267 19;
(*   %mul1.i.112 = mul i64 %sub17.i.i.267, 38, !dbg !1999 *)
mul v_mul1_i_112 v_sub17_i_i_267 38;
(*   %mul3.i.113 = shl i64 %sub17.i.i.267, 1, !dbg !2001 *)
shl v_mul3_i_113 v_sub17_i_i_267 1;
(*   %mul5.i.115 = mul i64 %sub13.i.i.263, 19, !dbg !2003 *)
mul v_mul5_i_115 v_sub13_i_i_263 19;
(*   %mul6.i.116 = mul i64 %sub13.i.i.263, 38, !dbg !2005 *)
mul v_mul6_i_116 v_sub13_i_i_263 38;
(*   %mul8.i.117 = shl i64 %sub13.i.i.263, 1, !dbg !2007 *)
shl v_mul8_i_117 v_sub13_i_i_263 1;
(*   %mul10.i.119 = shl i64 %sub9.i.i.259, 1, !dbg !2009 *)
shl v_mul10_i_119 v_sub9_i_i_259 1;
(*   %mul12.i.121 = shl i64 %sub5.i.i.255, 1, !dbg !2011 *)
shl v_mul12_i_121 v_sub5_i_i_255 1;
(*   %conv.i.122 = zext i64 %sub17.i.i.267 to i128, !dbg !2013 *)
mov v_conv_i_122_L v_sub17_i_i_267;
mov v_conv_i_122_H 0;
(*   %conv14.i.123 = zext i64 %mul.i.111 to i128, !dbg !2014 *)
mov v_conv14_i_123_L v_mul_i_111;
mov v_conv14_i_123_H 0;
(*   %mul15.i.124 = mul nuw i128 %conv14.i.123, %conv.i.122, !dbg !2015 *)
mull tmpLL_H tmpLL_L v_conv14_i_123_L v_conv_i_122_L;
mul tmpHL_L v_conv14_i_123_H v_conv_i_122_L;
mul tmpLH_L v_conv14_i_123_L v_conv_i_122_H;
mov v_mul15_i_124_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul15_i_124_H tmp tmpLL_H;
(*   %conv17.i.125 = zext i64 %sub13.i.i.263 to i128, !dbg !2017 *)
mov v_conv17_i_125_L v_sub13_i_i_263;
mov v_conv17_i_125_H 0;
(*   %conv18.i.126 = zext i64 %mul1.i.112 to i128, !dbg !2018 *)
mov v_conv18_i_126_L v_mul1_i_112;
mov v_conv18_i_126_H 0;
(*   %mul19.i.127 = mul nuw i128 %conv17.i.125, %conv18.i.126, !dbg !2019 *)
mull tmpLL_H tmpLL_L v_conv17_i_125_L v_conv18_i_126_L;
mul tmpHL_L v_conv17_i_125_H v_conv18_i_126_L;
mul tmpLH_L v_conv17_i_125_L v_conv18_i_126_H;
mov v_mul19_i_127_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul19_i_127_H tmp tmpLL_H;
(*   %conv22.i.128 = zext i64 %mul5.i.115 to i128, !dbg !2021 *)
mov v_conv22_i_128_L v_mul5_i_115;
mov v_conv22_i_128_H 0;
(*   %mul23.i.129 = mul nuw i128 %conv22.i.128, %conv17.i.125, !dbg !2022 *)
mull tmpLL_H tmpLL_L v_conv22_i_128_L v_conv17_i_125_L;
mul tmpHL_L v_conv22_i_128_H v_conv17_i_125_L;
mul tmpLH_L v_conv22_i_128_L v_conv17_i_125_H;
mov v_mul23_i_129_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul23_i_129_H tmp tmpLL_H;
(*   %conv25.i.130 = zext i64 %sub9.i.i.259 to i128, !dbg !2024 *)
mov v_conv25_i_130_L v_sub9_i_i_259;
mov v_conv25_i_130_H 0;
(*   %mul27.i.131 = mul nuw i128 %conv25.i.130, %conv18.i.126, !dbg !2025 *)
mull tmpLL_H tmpLL_L v_conv25_i_130_L v_conv18_i_126_L;
mul tmpHL_L v_conv25_i_130_H v_conv18_i_126_L;
mul tmpLH_L v_conv25_i_130_L v_conv18_i_126_H;
mov v_mul27_i_131_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul27_i_131_H tmp tmpLL_H;
(*   %conv30.i.132 = zext i64 %mul6.i.116 to i128, !dbg !2027 *)
mov v_conv30_i_132_L v_mul6_i_116;
mov v_conv30_i_132_H 0;
(*   %mul31.i.133 = mul nuw i128 %conv25.i.130, %conv30.i.132, !dbg !2028 *)
mull tmpLL_H tmpLL_L v_conv25_i_130_L v_conv30_i_132_L;
mul tmpHL_L v_conv25_i_130_H v_conv30_i_132_L;
mul tmpLH_L v_conv25_i_130_L v_conv30_i_132_H;
mov v_mul31_i_133_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul31_i_133_H tmp tmpLL_H;
(*   %mul36.i.134 = mul nuw i128 %conv25.i.130, %conv25.i.130, !dbg !2030 *)
mull tmpLL_H tmpLL_L v_conv25_i_130_L v_conv25_i_130_L;
mul tmpHL_L v_conv25_i_130_H v_conv25_i_130_L;
mul tmpLH_L v_conv25_i_130_L v_conv25_i_130_H;
mov v_mul36_i_134_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul36_i_134_H tmp tmpLL_H;
(*   %conv38.i.135 = zext i64 %sub5.i.i.255 to i128, !dbg !2032 *)
mov v_conv38_i_135_L v_sub5_i_i_255;
mov v_conv38_i_135_H 0;
(*   %mul40.i.136 = mul nuw i128 %conv38.i.135, %conv18.i.126, !dbg !2033 *)
mull tmpLL_H tmpLL_L v_conv38_i_135_L v_conv18_i_126_L;
mul tmpHL_L v_conv38_i_135_H v_conv18_i_126_L;
mul tmpLH_L v_conv38_i_135_L v_conv18_i_126_H;
mov v_mul40_i_136_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul40_i_136_H tmp tmpLL_H;
(*   %conv43.i.137 = zext i64 %mul8.i.117 to i128, !dbg !2035 *)
mov v_conv43_i_137_L v_mul8_i_117;
mov v_conv43_i_137_H 0;
(*   %mul44.i.138 = mul nuw i128 %conv38.i.135, %conv43.i.137, !dbg !2036 *)
mull tmpLL_H tmpLL_L v_conv38_i_135_L v_conv43_i_137_L;
mul tmpHL_L v_conv38_i_135_H v_conv43_i_137_L;
mul tmpLH_L v_conv38_i_135_L v_conv43_i_137_H;
mov v_mul44_i_138_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul44_i_138_H tmp tmpLL_H;
(*   %conv47.i.139 = zext i64 %mul10.i.119 to i128, !dbg !2038 *)
mov v_conv47_i_139_L v_mul10_i_119;
mov v_conv47_i_139_H 0;
(*   %mul48.i.140 = mul nuw i128 %conv38.i.135, %conv47.i.139, !dbg !2039 *)
mull tmpLL_H tmpLL_L v_conv38_i_135_L v_conv47_i_139_L;
mul tmpHL_L v_conv38_i_135_H v_conv47_i_139_L;
mul tmpLH_L v_conv38_i_135_L v_conv47_i_139_H;
mov v_mul48_i_140_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul48_i_140_H tmp tmpLL_H;
(*   %mul53.i.141 = mul nuw i128 %conv38.i.135, %conv38.i.135, !dbg !2041 *)
mull tmpLL_H tmpLL_L v_conv38_i_135_L v_conv38_i_135_L;
mul tmpHL_L v_conv38_i_135_H v_conv38_i_135_L;
mul tmpLH_L v_conv38_i_135_L v_conv38_i_135_H;
mov v_mul53_i_141_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul53_i_141_H tmp tmpLL_H;
(*   %conv55.i.142 = zext i64 %sub.i.i.251 to i128, !dbg !2043 *)
mov v_conv55_i_142_L v_sub_i_i_251;
mov v_conv55_i_142_H 0;
(*   %conv56.i.143 = zext i64 %mul3.i.113 to i128, !dbg !2044 *)
mov v_conv56_i_143_L v_mul3_i_113;
mov v_conv56_i_143_H 0;
(*   %mul57.i.144 = mul nuw i128 %conv55.i.142, %conv56.i.143, !dbg !2045 *)
mull tmpLL_H tmpLL_L v_conv55_i_142_L v_conv56_i_143_L;
mul tmpHL_L v_conv55_i_142_H v_conv56_i_143_L;
mul tmpLH_L v_conv55_i_142_L v_conv56_i_143_H;
mov v_mul57_i_144_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul57_i_144_H tmp tmpLL_H;
(*   %mul61.i.145 = mul nuw i128 %conv55.i.142, %conv43.i.137, !dbg !2047 *)
mull tmpLL_H tmpLL_L v_conv55_i_142_L v_conv43_i_137_L;
mul tmpHL_L v_conv55_i_142_H v_conv43_i_137_L;
mul tmpLH_L v_conv55_i_142_L v_conv43_i_137_H;
mov v_mul61_i_145_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul61_i_145_H tmp tmpLL_H;
(*   %mul65.i.146 = mul nuw i128 %conv55.i.142, %conv47.i.139, !dbg !2049 *)
mull tmpLL_H tmpLL_L v_conv55_i_142_L v_conv47_i_139_L;
mul tmpHL_L v_conv55_i_142_H v_conv47_i_139_L;
mul tmpLH_L v_conv55_i_142_L v_conv47_i_139_H;
mov v_mul65_i_146_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul65_i_146_H tmp tmpLL_H;
(*   %conv68.i.147 = zext i64 %mul12.i.121 to i128, !dbg !2051 *)
mov v_conv68_i_147_L v_mul12_i_121;
mov v_conv68_i_147_H 0;
(*   %mul69.i.148 = mul nuw i128 %conv55.i.142, %conv68.i.147, !dbg !2052 *)
mull tmpLL_H tmpLL_L v_conv55_i_142_L v_conv68_i_147_L;
mul tmpHL_L v_conv55_i_142_H v_conv68_i_147_L;
mul tmpLH_L v_conv55_i_142_L v_conv68_i_147_H;
mov v_mul69_i_148_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul69_i_148_H tmp tmpLL_H;
(*   %mul74.i.149 = mul nuw i128 %conv55.i.142, %conv55.i.142, !dbg !2054 *)
mull tmpLL_H tmpLL_L v_conv55_i_142_L v_conv55_i_142_L;
mul tmpHL_L v_conv55_i_142_H v_conv55_i_142_L;
mul tmpLH_L v_conv55_i_142_L v_conv55_i_142_H;
mov v_mul74_i_149_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul74_i_149_H tmp tmpLL_H;
(*   %add.i.150 = add i128 %mul40.i.136, %mul31.i.133, !dbg !2056 *)
adds carry v_add_i_150_L v_mul40_i_136_L v_mul31_i_133_L;
adc v_add_i_150_H v_mul40_i_136_H v_mul31_i_133_H carry;
(*   %add75.i.151 = add i128 %add.i.150, %mul74.i.149, !dbg !2057 *)
adds carry v_add75_i_151_L v_add_i_150_L v_mul74_i_149_L;
adc v_add75_i_151_H v_add_i_150_H v_mul74_i_149_H carry;
(*   %shr.i.152 = lshr i128 %add75.i.151, 51, !dbg !2059 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add75_i_151_L 51;
split tmpH_h tmpH_l v_add75_i_151_H 51;
shl tmp tmpH_l 13;
add v_shr_i_152_L tmp tmpL_h;
mov v_shr_i_152_H tmpH_h;
(* == modified == *)
assert true && tmpH_h = const 64 0;
assume tmpH_h = 0 && true;
(*   %add75.tr.i.153 = trunc i128 %add75.i.151 to i64, !dbg !2060 *)
mov v_add75_tr_i_153 v_add75_i_151_L;
(*   %conv77.i.154 = and i64 %add75.tr.i.153, 2251799813685247, !dbg !2060 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv77_i_154 v_add75_tr_i_153 0x7FFFFFFFFFFFF;
assert true && eq v_conv77_i_154 tmp_to_be_used;
assume eq v_conv77_i_154 tmp_to_be_used && true;
(*   %add78.i.155 = add i128 %mul44.i.138, %mul36.i.134, !dbg !2062 *)
adds carry v_add78_i_155_L v_mul44_i_138_L v_mul36_i_134_L;
adc v_add78_i_155_H v_mul44_i_138_H v_mul36_i_134_H carry;
(*   %add79.i.156 = add i128 %add78.i.155, %mul57.i.144, !dbg !2063 *)
adds carry v_add79_i_156_L v_add78_i_155_L v_mul57_i_144_L;
adc v_add79_i_156_H v_add78_i_155_H v_mul57_i_144_H carry;
(*   %add80.i.157 = add i128 %mul48.i.140, %mul15.i.124, !dbg !2065 *)
adds carry v_add80_i_157_L v_mul48_i_140_L v_mul15_i_124_L;
adc v_add80_i_157_H v_mul48_i_140_H v_mul15_i_124_H carry;
(*   %add81.i.158 = add i128 %add80.i.157, %mul61.i.145, !dbg !2066 *)
adds carry v_add81_i_158_L v_add80_i_157_L v_mul61_i_145_L;
adc v_add81_i_158_H v_add80_i_157_H v_mul61_i_145_H carry;
(*   %add82.i.159 = add i128 %mul53.i.141, %mul19.i.127, !dbg !2068 *)
adds carry v_add82_i_159_L v_mul53_i_141_L v_mul19_i_127_L;
adc v_add82_i_159_H v_mul53_i_141_H v_mul19_i_127_H carry;
(*   %add83.i.160 = add i128 %add82.i.159, %mul65.i.146, !dbg !2069 *)
adds carry v_add83_i_160_L v_add82_i_159_L v_mul65_i_146_L;
adc v_add83_i_160_H v_add82_i_159_H v_mul65_i_146_H carry;
(*   %add84.i.161 = add i128 %mul27.i.131, %mul23.i.129, !dbg !2071 *)
adds carry v_add84_i_161_L v_mul27_i_131_L v_mul23_i_129_L;
adc v_add84_i_161_H v_mul27_i_131_H v_mul23_i_129_H carry;
(*   %add85.i.162 = add i128 %add84.i.161, %mul69.i.148, !dbg !2072 *)
adds carry v_add85_i_162_L v_add84_i_161_L v_mul69_i_148_L;
adc v_add85_i_162_H v_add84_i_161_H v_mul69_i_148_H carry;
(*   %conv86.i.163 = and i128 %shr.i.152, 18446744073709551615, !dbg !2074 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv86_i_163_L v_shr_i_152_L 0xFFFFFFFFFFFFFFFF;
assert true && eq v_conv86_i_163_L v_shr_i_152_L;
assume eq v_conv86_i_163_L v_shr_i_152_L && true;
and v_conv86_i_163_H v_shr_i_152_H 0x0;
assert true && eq v_conv86_i_163_H (const 64 0);
assume eq v_conv86_i_163_H 0 && true;
(*   %add87.i.164 = add i128 %conv86.i.163, %add85.i.162, !dbg !2075 *)
adds carry v_add87_i_164_L v_conv86_i_163_L v_add85_i_162_L;
adc v_add87_i_164_H v_conv86_i_163_H v_add85_i_162_H carry;
(*   %shr88.i.165 = lshr i128 %add87.i.164, 51, !dbg !2077 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add87_i_164_L 51;
split tmpH_h tmpH_l v_add87_i_164_H 51;
shl tmp tmpH_l 13;
add v_shr88_i_165_L tmp tmpL_h;
mov v_shr88_i_165_H tmpH_h;
(* == modified == *)
assert true && tmpH_h = const 64 0;
assume tmpH_h = 0 && true;
(*   %fold.i.166 = add i128 %shr.i.152, %add85.i.162, !dbg !2078 *)
adds carry v_fold_i_166_L v_shr_i_152_L v_add85_i_162_L;
(*adc v_fold_i_166_H v_shr_i_152_H v_add85_i_162_H carry;*)
(* == modified == *)
adcs discard v_fold_i_166_H v_shr_i_152_H v_add85_i_162_H carry;
(*   %fold.tr.i.167 = trunc i128 %fold.i.166 to i64, !dbg !2079 *)
mov v_fold_tr_i_167 v_fold_i_166_L;
(*   %conv91.i.168 = and i64 %fold.tr.i.167, 2251799813685247, !dbg !2079 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv91_i_168 v_fold_tr_i_167 0x7FFFFFFFFFFFF;
assert true && eq v_conv91_i_168 tmp_to_be_used;
assume eq v_conv91_i_168 tmp_to_be_used && true;
(*   %conv92.i.169 = and i128 %shr88.i.165, 18446744073709551615, !dbg !2081 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv92_i_169_L v_shr88_i_165_L 0xFFFFFFFFFFFFFFFF;
assert true && eq v_conv92_i_169_L v_shr88_i_165_L;
assume eq v_conv92_i_169_L v_shr88_i_165_L && true;
and v_conv92_i_169_H v_shr88_i_165_H 0x0;
assert true && eq v_conv92_i_169_H (const 64 0);
assume eq v_conv92_i_169_H 0 && true;
(*   %add93.i.170 = add i128 %conv92.i.169, %add83.i.160, !dbg !2082 *)
adds carry v_add93_i_170_L v_conv92_i_169_L v_add83_i_160_L;
adc v_add93_i_170_H v_conv92_i_169_H v_add83_i_160_H carry;
(*   %shr94.i.171 = lshr i128 %add93.i.170, 51, !dbg !2084 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add93_i_170_L 51;
split tmpH_h tmpH_l v_add93_i_170_H 51;
shl tmp tmpH_l 13;
add v_shr94_i_171_L tmp tmpL_h;
mov v_shr94_i_171_H tmpH_h;
(* == modified == *)
assert true && tmpH_h = const 64 0;
assume tmpH_h = 0 && true;
(*   %fold213.i.172 = add i128 %shr88.i.165, %add83.i.160, !dbg !2085 *)
adds carry v_fold213_i_172_L v_shr88_i_165_L v_add83_i_160_L;
(*adc v_fold213_i_172_H v_shr88_i_165_H v_add83_i_160_H carry;*)
(* == modified == *)
adcs discard v_fold213_i_172_H v_shr88_i_165_H v_add83_i_160_H carry;
(*   %fold213.tr.i.173 = trunc i128 %fold213.i.172 to i64, !dbg !2086 *)
mov v_fold213_tr_i_173 v_fold213_i_172_L;
(*   %conv97.i.174 = and i64 %fold213.tr.i.173, 2251799813685247, !dbg !2086 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv97_i_174 v_fold213_tr_i_173 0x7FFFFFFFFFFFF;
assert true && eq v_conv97_i_174 tmp_to_be_used;
assume eq v_conv97_i_174 tmp_to_be_used && true;
(*   %conv98.i.175 = and i128 %shr94.i.171, 18446744073709551615, !dbg !2088 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv98_i_175_L v_shr94_i_171_L 0xFFFFFFFFFFFFFFFF;
assert true && eq v_conv98_i_175_L v_shr94_i_171_L;
assume eq v_conv98_i_175_L v_shr94_i_171_L && true;
and v_conv98_i_175_H v_shr94_i_171_H 0x0;
assert true && eq v_conv98_i_175_H (const 64 0);
assume eq v_conv98_i_175_H 0 && true;
(*   %add99.i.176 = add i128 %conv98.i.175, %add81.i.158, !dbg !2089 *)
adds carry v_add99_i_176_L v_conv98_i_175_L v_add81_i_158_L;
adc v_add99_i_176_H v_conv98_i_175_H v_add81_i_158_H carry;
(*   %shr100.i.177 = lshr i128 %add99.i.176, 51, !dbg !2091 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add99_i_176_L 51;
split tmpH_h tmpH_l v_add99_i_176_H 51;
shl tmp tmpH_l 13;
add v_shr100_i_177_L tmp tmpL_h;
mov v_shr100_i_177_H tmpH_h;
(* == modified == *)
assert true && tmpH_h = const 64 0;
assume tmpH_h = 0 && true;
(*   %fold214.i.178 = add i128 %shr94.i.171, %add81.i.158, !dbg !2092 *)
adds carry v_fold214_i_178_L v_shr94_i_171_L v_add81_i_158_L;
(*adc v_fold214_i_178_H v_shr94_i_171_H v_add81_i_158_H carry;*)
(* == modified == *)
adcs discard v_fold214_i_178_H v_shr94_i_171_H v_add81_i_158_H carry;
(*   %fold214.tr.i.179 = trunc i128 %fold214.i.178 to i64, !dbg !2093 *)
mov v_fold214_tr_i_179 v_fold214_i_178_L;
(*   %conv103.i.180 = and i64 %fold214.tr.i.179, 2251799813685247, !dbg !2093 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv103_i_180 v_fold214_tr_i_179 0x7FFFFFFFFFFFF;
assert true && eq v_conv103_i_180 tmp_to_be_used;
assume eq v_conv103_i_180 tmp_to_be_used && true;
(*   %conv104.i.181 = and i128 %shr100.i.177, 18446744073709551615, !dbg !2095 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv104_i_181_L v_shr100_i_177_L 0xFFFFFFFFFFFFFFFF;
assert true && eq v_conv104_i_181_L v_shr100_i_177_L;
assume eq v_conv104_i_181_L v_shr100_i_177_L && true;
and v_conv104_i_181_H v_shr100_i_177_H 0x0;
assert true && eq v_conv104_i_181_H (const 64 0);
assume eq v_conv104_i_181_H 0 && true;
(*   %add105.i.182 = add i128 %conv104.i.181, %add79.i.156, !dbg !2096 *)
adds carry v_add105_i_182_L v_conv104_i_181_L v_add79_i_156_L;
adc v_add105_i_182_H v_conv104_i_181_H v_add79_i_156_H carry;
(*   %shr106.i.183 = lshr i128 %add105.i.182, 51, !dbg !2098 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add105_i_182_L 51;
split tmpH_h tmpH_l v_add105_i_182_H 51;
shl tmp tmpH_l 13;
add v_shr106_i_183_L tmp tmpL_h;
mov v_shr106_i_183_H tmpH_h;
(* == modified == *)
assert true && tmpH_h = const 64 0;
assume tmpH_h = 0 && true;
(*   %conv107.i.184 = trunc i128 %shr106.i.183 to i64, !dbg !2099 *)
mov v_conv107_i_184 v_shr106_i_183_L;
(*   %fold215.i.185 = add i128 %shr100.i.177, %add79.i.156, !dbg !2101 *)
adds carry v_fold215_i_185_L v_shr100_i_177_L v_add79_i_156_L;
(*adc v_fold215_i_185_H v_shr100_i_177_H v_add79_i_156_H carry;*)
(* == modified == *)
adcs discard v_fold215_i_185_H v_shr100_i_177_H v_add79_i_156_H carry;
(*   %fold215.tr.i.186 = trunc i128 %fold215.i.185 to i64, !dbg !2102 *)
mov v_fold215_tr_i_186 v_fold215_i_185_L;
(*   %conv109.i.187 = and i64 %fold215.tr.i.186, 2251799813685247, !dbg !2102 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv109_i_187 v_fold215_tr_i_186 0x7FFFFFFFFFFFF;
assert true && eq v_conv109_i_187 tmp_to_be_used;
assume eq v_conv109_i_187 tmp_to_be_used && true;
(*   %mul110.i.188 = mul i64 %conv107.i.184, 19, !dbg !2104 *)
mul v_mul110_i_188 v_conv107_i_184 19;
(*   %add111.i.189 = add i64 %mul110.i.188, %conv77.i.154, !dbg !2106 *)
add v_add111_i_189 v_mul110_i_188 v_conv77_i_154;
(*   %shr112.i.190 = lshr i64 %add111.i.189, 51, !dbg !2108 *)
(* You may need to modify here *)
split v_shr112_i_190 tmp_to_be_used v_add111_i_189 51;
(*   %fold216.i.191 = add i64 %mul110.i.188, %add75.tr.i.153, !dbg !2110 *)
(*add v_fold216_i_191 v_mul110_i_188 v_add75_tr_i_153;*)
(* == modified == *)
adds discard v_fold216_i_191 v_mul110_i_188 v_add75_tr_i_153;
(*   %and113.i.192 = and i64 %fold216.i.191, 2251799813685247, !dbg !2110 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_and113_i_192 v_fold216_i_191 0x7FFFFFFFFFFFF;
assert true && eq v_and113_i_192 tmp_to_be_used;
assume eq v_and113_i_192 tmp_to_be_used && true;
(*   %add114.i.193 = add nuw nsw i64 %shr112.i.190, %conv91.i.168, !dbg !2112 *)
add v_add114_i_193 v_shr112_i_190 v_conv91_i_168;
(*   %shr115.i.194 = lshr i64 %add114.i.193, 51, !dbg !2114 *)
(* You may need to modify here *)
split v_shr115_i_194 tmp_to_be_used v_add114_i_193 51;
(*   %fold217.i.195 = add i64 %shr112.i.190, %fold.tr.i.167, !dbg !2116 *)
(*add v_fold217_i_195 v_shr112_i_190 v_fold_tr_i_167;*)
(* == modified == *)
adds discard v_fold217_i_195 v_shr112_i_190 v_fold_tr_i_167;
(*   %and116.i.196 = and i64 %fold217.i.195, 2251799813685247, !dbg !2116 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_and116_i_196 v_fold217_i_195 0x7FFFFFFFFFFFF;
assert true && eq v_and116_i_196 tmp_to_be_used;
assume eq v_and116_i_196 tmp_to_be_used && true;
(*   %add117.i.197 = add nuw nsw i64 %shr115.i.194, %conv97.i.174, !dbg !2118 *)
add v_add117_i_197 v_shr115_i_194 v_conv97_i_174;
(*   store i64 %and113.i.192, i64* %arrayidx.i.217, align 16, !dbg !2120, !tbaa !1385 *)
mov L6_0 v_and113_i_192;
(*   store i64 %and116.i.196, i64* %arrayidx.1.i.223, align 8, !dbg !2121, !tbaa !1385 *)
mov L8_0 v_and116_i_196;
(*   store i64 %add117.i.197, i64* %arrayidx.2.i.229, align 16, !dbg !2122, !tbaa !1385 *)
mov L10_0 v_add117_i_197;
(*   store i64 %conv103.i.180, i64* %arrayidx.3.i.235, align 8, !dbg !2123, !tbaa !1385 *)
mov L12_0 v_conv103_i_180;
(*   store i64 %conv109.i.187, i64* %arrayidx.4.i.241, align 16, !dbg !2124, !tbaa !1385 *)
mov L14_0 v_conv109_i_187;
(*   %conv.i.i = zext i64 %sub17.i.i to i128, !dbg !2134 *)
mov v_conv_i_i_L v_sub17_i_i;
mov v_conv_i_i_H 0;
(*   %mul.i.i = mul nuw nsw i128 %conv.i.i, 121666, !dbg !2135 *)
mull tmpLL_H tmpLL_L v_conv_i_i_L 121666;
mul tmpHL_L v_conv_i_i_H 121666;
mul tmpLH_L v_conv_i_i_L 0;
mov v_mul_i_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul_i_i_H tmp tmpLL_H;
(*   %conv2.i.i = zext i64 %sub13.i.i to i128, !dbg !2137 *)
mov v_conv2_i_i_L v_sub13_i_i;
mov v_conv2_i_i_H 0;
(*   %mul3.i.i = mul nuw nsw i128 %conv2.i.i, 121666, !dbg !2138 *)
mull tmpLL_H tmpLL_L v_conv2_i_i_L 121666;
mul tmpHL_L v_conv2_i_i_H 121666;
mul tmpLH_L v_conv2_i_i_L 0;
mov v_mul3_i_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul3_i_i_H tmp tmpLL_H;
(*   %conv5.i.i = zext i64 %sub9.i.i to i128, !dbg !2140 *)
mov v_conv5_i_i_L v_sub9_i_i;
mov v_conv5_i_i_H 0;
(*   %mul6.i.i = mul nuw nsw i128 %conv5.i.i, 121666, !dbg !2141 *)
mull tmpLL_H tmpLL_L v_conv5_i_i_L 121666;
mul tmpHL_L v_conv5_i_i_H 121666;
mul tmpLH_L v_conv5_i_i_L 0;
mov v_mul6_i_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul6_i_i_H tmp tmpLL_H;
(*   %conv8.i.i = zext i64 %sub5.i.i to i128, !dbg !2143 *)
mov v_conv8_i_i_L v_sub5_i_i;
mov v_conv8_i_i_H 0;
(*   %mul9.i.i = mul nuw nsw i128 %conv8.i.i, 121666, !dbg !2144 *)
mull tmpLL_H tmpLL_L v_conv8_i_i_L 121666;
mul tmpHL_L v_conv8_i_i_H 121666;
mul tmpLH_L v_conv8_i_i_L 0;
mov v_mul9_i_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul9_i_i_H tmp tmpLL_H;
(*   %53 = load i64, i64* %arraydecay.i.511, align 8, !dbg !2146, !tbaa !1385 *)
mov v53 L21_0;
(*   %conv11.i.i = zext i64 %53 to i128, !dbg !2147 *)
mov v_conv11_i_i_L v53;
mov v_conv11_i_i_H 0;
(*   %mul12.i.i = mul nuw nsw i128 %conv11.i.i, 121666, !dbg !2148 *)
mull tmpLL_H tmpLL_L v_conv11_i_i_L 121666;
mul tmpHL_L v_conv11_i_i_H 121666;
mul tmpLH_L v_conv11_i_i_L 0;
mov v_mul12_i_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul12_i_i_H tmp tmpLL_H;
(*   %shr.i.i = lshr i128 %mul12.i.i, 51, !dbg !2150 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_mul12_i_i_L 51;
split tmpH_h tmpH_l v_mul12_i_i_H 51;
shl tmp tmpH_l 13;
add v_shr_i_i_L tmp tmpL_h;
mov v_shr_i_i_H tmpH_h;
(*   %mul12.tr.i.i = trunc i128 %mul12.i.i to i64, !dbg !2151 *)
mov v_mul12_tr_i_i v_mul12_i_i_L;
(*   %conv14.i.i = and i64 %mul12.tr.i.i, 2251799813685246, !dbg !2151 *)
(* You may need to modify here *)
and v_conv14_i_i v_mul12_tr_i_i 0x7FFFFFFFFFFFE;
(* == modified == *)
assert true && v_conv14_i_i = tmp_to_be_used;
assume v_conv14_i_i = tmp_to_be_used && true;
(*   %add.i.i.107 = add nuw nsw i128 %shr.i.i, %mul9.i.i, !dbg !2153 *)
adds carry v_add_i_i_107_L v_shr_i_i_L v_mul9_i_i_L;
adc v_add_i_i_107_H v_shr_i_i_H v_mul9_i_i_H carry;
(*   %shr16.i.i = lshr i128 %add.i.i.107, 51, !dbg !2155 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add_i_i_107_L 51;
split tmpH_h tmpH_l v_add_i_i_107_H 51;
shl tmp tmpH_l 13;
add v_shr16_i_i_L tmp tmpL_h;
mov v_shr16_i_i_H tmpH_h;
(*   %add.tr.i.i = trunc i128 %add.i.i.107 to i64, !dbg !2156 *)
mov v_add_tr_i_i v_add_i_i_107_L;
(*   %conv19.i.i = and i64 %add.tr.i.i, 2251799813685247, !dbg !2156 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv19_i_i v_add_tr_i_i 0x7FFFFFFFFFFFF;
assert true && eq v_conv19_i_i tmp_to_be_used;
assume eq v_conv19_i_i tmp_to_be_used && true;
(*   %add21.i.i = add nuw nsw i128 %shr16.i.i, %mul6.i.i, !dbg !2158 *)
adds carry v_add21_i_i_L v_shr16_i_i_L v_mul6_i_i_L;
adc v_add21_i_i_H v_shr16_i_i_H v_mul6_i_i_H carry;
(*   %shr22.i.i = lshr i128 %add21.i.i, 51, !dbg !2160 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add21_i_i_L 51;
split tmpH_h tmpH_l v_add21_i_i_H 51;
shl tmp tmpH_l 13;
add v_shr22_i_i_L tmp tmpL_h;
mov v_shr22_i_i_H tmpH_h;
(*   %add21.tr.i.i = trunc i128 %add21.i.i to i64, !dbg !2161 *)
mov v_add21_tr_i_i v_add21_i_i_L;
(*   %conv25.i.i = and i64 %add21.tr.i.i, 2251799813685247, !dbg !2161 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv25_i_i v_add21_tr_i_i 0x7FFFFFFFFFFFF;
assert true && eq v_conv25_i_i tmp_to_be_used;
assume eq v_conv25_i_i tmp_to_be_used && true;
(*   %add27.i.i = add nuw nsw i128 %shr22.i.i, %mul3.i.i, !dbg !2163 *)
adds carry v_add27_i_i_L v_shr22_i_i_L v_mul3_i_i_L;
adc v_add27_i_i_H v_shr22_i_i_H v_mul3_i_i_H carry;
(*   %shr28.i.i = lshr i128 %add27.i.i, 51, !dbg !2165 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add27_i_i_L 51;
split tmpH_h tmpH_l v_add27_i_i_H 51;
shl tmp tmpH_l 13;
add v_shr28_i_i_L tmp tmpL_h;
mov v_shr28_i_i_H tmpH_h;
(*   %add27.tr.i.i = trunc i128 %add27.i.i to i64, !dbg !2166 *)
mov v_add27_tr_i_i v_add27_i_i_L;
(*   %conv31.i.i = and i64 %add27.tr.i.i, 2251799813685247, !dbg !2166 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv31_i_i v_add27_tr_i_i 0x7FFFFFFFFFFFF;
assert true && eq v_conv31_i_i tmp_to_be_used;
assume eq v_conv31_i_i tmp_to_be_used && true;
(*   %add33.i.i = add nuw nsw i128 %shr28.i.i, %mul.i.i, !dbg !2168 *)
adds carry v_add33_i_i_L v_shr28_i_i_L v_mul_i_i_L;
adc v_add33_i_i_H v_shr28_i_i_H v_mul_i_i_H carry;
(*   %shr34.i.i = lshr i128 %add33.i.i, 51, !dbg !2170 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add33_i_i_L 51;
split tmpH_h tmpH_l v_add33_i_i_H 51;
shl tmp tmpH_l 13;
add v_shr34_i_i_L tmp tmpL_h;
mov v_shr34_i_i_H tmpH_h;
(* == modified == *)
assert true && tmpH_h = const 64 0;
assume tmpH_h = 0 && true;
(*   %conv35.i.i = trunc i128 %shr34.i.i to i64, !dbg !2171 *)
mov v_conv35_i_i v_shr34_i_i_L;
(*   %add33.tr.i.i = trunc i128 %add33.i.i to i64, !dbg !2173 *)
mov v_add33_tr_i_i v_add33_i_i_L;
(*   %conv37.i.i = and i64 %add33.tr.i.i, 2251799813685247, !dbg !2173 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv37_i_i v_add33_tr_i_i 0x7FFFFFFFFFFFF;
assert true && eq v_conv37_i_i tmp_to_be_used;
assume eq v_conv37_i_i tmp_to_be_used && true;
(*   %mul38.i.i = mul nuw nsw i64 %conv35.i.i, 19, !dbg !2175 *)
mul v_mul38_i_i v_conv35_i_i 19;
(*   %add39.i.i = add nuw nsw i64 %mul38.i.i, %conv14.i.i, !dbg !2177 *)
add v_add39_i_i v_mul38_i_i v_conv14_i_i;
(*   %shr40.i.i = lshr i64 %add39.i.i, 51, !dbg !2179 *)
(* You may need to modify here *)
split v_shr40_i_i tmp_to_be_used v_add39_i_i 51;
(*   %and41.i.i = and i64 %add39.i.i, 2251799813685247, !dbg !2181 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_and41_i_i v_add39_i_i 0x7FFFFFFFFFFFF;
assert true && eq v_and41_i_i tmp_to_be_used;
assume eq v_and41_i_i tmp_to_be_used && true;
(*   %add42.i.i = add nuw nsw i64 %shr40.i.i, %conv19.i.i, !dbg !2183 *)
add v_add42_i_i v_shr40_i_i v_conv19_i_i;
(*   %shr43.i.i = lshr i64 %add42.i.i, 51, !dbg !2185 *)
(* You may need to modify here *)
split v_shr43_i_i tmp_to_be_used v_add42_i_i 51;
(*   %fold.i.i = add i64 %shr40.i.i, %add.tr.i.i, !dbg !2187 *)
(*add v_fold_i_i v_shr40_i_i v_add_tr_i_i;*)
(* == modified == *)
adds discard v_fold_i_i v_shr40_i_i v_add_tr_i_i;
(*   %and44.i.i = and i64 %fold.i.i, 2251799813685247, !dbg !2187 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_and44_i_i v_fold_i_i 0x7FFFFFFFFFFFF;
assert true && eq v_and44_i_i tmp_to_be_used;
assume eq v_and44_i_i tmp_to_be_used && true;
(*   %add45.i.i = add nuw nsw i64 %shr43.i.i, %conv25.i.i, !dbg !2189 *)
add v_add45_i_i v_shr43_i_i v_conv25_i_i;
(*   store i64 %and41.i.i, i64* %arrayidx.i.66, align 16, !dbg !2191, !tbaa !1385 *)
mov L7_0 v_and41_i_i;
(*   store i64 %and44.i.i, i64* %arrayidx3.1.i.224, align 8, !dbg !2192, !tbaa !1385 *)
mov L9_0 v_and44_i_i;
(*   store i64 %add45.i.i, i64* %arrayidx3.2.i.230, align 16, !dbg !2193, !tbaa !1385 *)
mov L11_0 v_add45_i_i;
(*   store i64 %conv31.i.i, i64* %arrayidx3.3.i.236, align 8, !dbg !2194, !tbaa !1385 *)
mov L13_0 v_conv31_i_i;
(*   store i64 %conv37.i.i, i64* %arrayidx3.4.i.242, align 16, !dbg !2195, !tbaa !1385 *)
mov L15_0 v_conv37_i_i;
(*   %mul.i = mul i64 %add13.i.i.287, 19, !dbg !2205 *)
mul v_mul_i v_add13_i_i_287 19;
(*   %mul1.i = mul i64 %add13.i.i.287, 38, !dbg !2207 *)
mul v_mul1_i v_add13_i_i_287 38;
(*   %mul3.i = shl i64 %add13.i.i.287, 1, !dbg !2209 *)
shl v_mul3_i v_add13_i_i_287 1;
(*   %mul5.i = mul i64 %add10.i.i.284, 19, !dbg !2211 *)
mul v_mul5_i v_add10_i_i_284 19;
(*   %mul6.i = mul i64 %add10.i.i.284, 38, !dbg !2213 *)
mul v_mul6_i v_add10_i_i_284 38;
(*   %mul8.i = shl i64 %add10.i.i.284, 1, !dbg !2215 *)
shl v_mul8_i v_add10_i_i_284 1;
(*   %mul10.i = shl i64 %add7.i.i.281, 1, !dbg !2217 *)
shl v_mul10_i v_add7_i_i_281 1;
(*   %mul12.i = shl i64 %add4.i.i.278, 1, !dbg !2219 *)
shl v_mul12_i v_add4_i_i_278 1;
(*   %conv.i = zext i64 %add13.i.i.287 to i128, !dbg !2221 *)
mov v_conv_i_L v_add13_i_i_287;
mov v_conv_i_H 0;
(*   %conv14.i = zext i64 %mul.i to i128, !dbg !2222 *)
mov v_conv14_i_L v_mul_i;
mov v_conv14_i_H 0;
(*   %mul15.i = mul nuw i128 %conv14.i, %conv.i, !dbg !2223 *)
mull tmpLL_H tmpLL_L v_conv14_i_L v_conv_i_L;
mul tmpHL_L v_conv14_i_H v_conv_i_L;
mul tmpLH_L v_conv14_i_L v_conv_i_H;
mov v_mul15_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul15_i_H tmp tmpLL_H;
(*   %conv17.i = zext i64 %add10.i.i.284 to i128, !dbg !2225 *)
mov v_conv17_i_L v_add10_i_i_284;
mov v_conv17_i_H 0;
(*   %conv18.i = zext i64 %mul1.i to i128, !dbg !2226 *)
mov v_conv18_i_L v_mul1_i;
mov v_conv18_i_H 0;
(*   %mul19.i = mul nuw i128 %conv18.i, %conv17.i, !dbg !2227 *)
mull tmpLL_H tmpLL_L v_conv18_i_L v_conv17_i_L;
mul tmpHL_L v_conv18_i_H v_conv17_i_L;
mul tmpLH_L v_conv18_i_L v_conv17_i_H;
mov v_mul19_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul19_i_H tmp tmpLL_H;
(*   %conv22.i = zext i64 %mul5.i to i128, !dbg !2229 *)
mov v_conv22_i_L v_mul5_i;
mov v_conv22_i_H 0;
(*   %mul23.i = mul nuw i128 %conv22.i, %conv17.i, !dbg !2230 *)
mull tmpLL_H tmpLL_L v_conv22_i_L v_conv17_i_L;
mul tmpHL_L v_conv22_i_H v_conv17_i_L;
mul tmpLH_L v_conv22_i_L v_conv17_i_H;
mov v_mul23_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul23_i_H tmp tmpLL_H;
(*   %conv25.i = zext i64 %add7.i.i.281 to i128, !dbg !2232 *)
mov v_conv25_i_L v_add7_i_i_281;
mov v_conv25_i_H 0;
(*   %mul27.i = mul nuw i128 %conv18.i, %conv25.i, !dbg !2233 *)
mull tmpLL_H tmpLL_L v_conv18_i_L v_conv25_i_L;
mul tmpHL_L v_conv18_i_H v_conv25_i_L;
mul tmpLH_L v_conv18_i_L v_conv25_i_H;
mov v_mul27_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul27_i_H tmp tmpLL_H;
(*   %conv30.i = zext i64 %mul6.i to i128, !dbg !2235 *)
mov v_conv30_i_L v_mul6_i;
mov v_conv30_i_H 0;
(*   %mul31.i = mul nuw i128 %conv30.i, %conv25.i, !dbg !2236 *)
mull tmpLL_H tmpLL_L v_conv30_i_L v_conv25_i_L;
mul tmpHL_L v_conv30_i_H v_conv25_i_L;
mul tmpLH_L v_conv30_i_L v_conv25_i_H;
mov v_mul31_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul31_i_H tmp tmpLL_H;
(*   %mul36.i = mul nuw i128 %conv25.i, %conv25.i, !dbg !2238 *)
mull tmpLL_H tmpLL_L v_conv25_i_L v_conv25_i_L;
mul tmpHL_L v_conv25_i_H v_conv25_i_L;
mul tmpLH_L v_conv25_i_L v_conv25_i_H;
mov v_mul36_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul36_i_H tmp tmpLL_H;
(*   %conv38.i = zext i64 %add4.i.i.278 to i128, !dbg !2240 *)
mov v_conv38_i_L v_add4_i_i_278;
mov v_conv38_i_H 0;
(*   %mul40.i = mul nuw i128 %conv18.i, %conv38.i, !dbg !2241 *)
mull tmpLL_H tmpLL_L v_conv18_i_L v_conv38_i_L;
mul tmpHL_L v_conv18_i_H v_conv38_i_L;
mul tmpLH_L v_conv18_i_L v_conv38_i_H;
mov v_mul40_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul40_i_H tmp tmpLL_H;
(*   %conv43.i = zext i64 %mul8.i to i128, !dbg !2243 *)
mov v_conv43_i_L v_mul8_i;
mov v_conv43_i_H 0;
(*   %mul44.i = mul nuw i128 %conv43.i, %conv38.i, !dbg !2244 *)
mull tmpLL_H tmpLL_L v_conv43_i_L v_conv38_i_L;
mul tmpHL_L v_conv43_i_H v_conv38_i_L;
mul tmpLH_L v_conv43_i_L v_conv38_i_H;
mov v_mul44_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul44_i_H tmp tmpLL_H;
(*   %conv47.i = zext i64 %mul10.i to i128, !dbg !2246 *)
mov v_conv47_i_L v_mul10_i;
mov v_conv47_i_H 0;
(*   %mul48.i = mul nuw i128 %conv47.i, %conv38.i, !dbg !2247 *)
mull tmpLL_H tmpLL_L v_conv47_i_L v_conv38_i_L;
mul tmpHL_L v_conv47_i_H v_conv38_i_L;
mul tmpLH_L v_conv47_i_L v_conv38_i_H;
mov v_mul48_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul48_i_H tmp tmpLL_H;
(*   %mul53.i = mul nuw i128 %conv38.i, %conv38.i, !dbg !2249 *)
mull tmpLL_H tmpLL_L v_conv38_i_L v_conv38_i_L;
mul tmpHL_L v_conv38_i_H v_conv38_i_L;
mul tmpLH_L v_conv38_i_L v_conv38_i_H;
mov v_mul53_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul53_i_H tmp tmpLL_H;
(*   %conv55.i = zext i64 %add.i.i.275 to i128, !dbg !2251 *)
mov v_conv55_i_L v_add_i_i_275;
mov v_conv55_i_H 0;
(*   %conv56.i = zext i64 %mul3.i to i128, !dbg !2252 *)
mov v_conv56_i_L v_mul3_i;
mov v_conv56_i_H 0;
(*   %mul57.i = mul nuw i128 %conv56.i, %conv55.i, !dbg !2253 *)
mull tmpLL_H tmpLL_L v_conv56_i_L v_conv55_i_L;
mul tmpHL_L v_conv56_i_H v_conv55_i_L;
mul tmpLH_L v_conv56_i_L v_conv55_i_H;
mov v_mul57_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul57_i_H tmp tmpLL_H;
(*   %mul61.i = mul nuw i128 %conv43.i, %conv55.i, !dbg !2255 *)
mull tmpLL_H tmpLL_L v_conv43_i_L v_conv55_i_L;
mul tmpHL_L v_conv43_i_H v_conv55_i_L;
mul tmpLH_L v_conv43_i_L v_conv55_i_H;
mov v_mul61_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul61_i_H tmp tmpLL_H;
(*   %mul65.i = mul nuw i128 %conv47.i, %conv55.i, !dbg !2257 *)
mull tmpLL_H tmpLL_L v_conv47_i_L v_conv55_i_L;
mul tmpHL_L v_conv47_i_H v_conv55_i_L;
mul tmpLH_L v_conv47_i_L v_conv55_i_H;
mov v_mul65_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul65_i_H tmp tmpLL_H;
(*   %conv68.i = zext i64 %mul12.i to i128, !dbg !2259 *)
mov v_conv68_i_L v_mul12_i;
mov v_conv68_i_H 0;
(*   %mul69.i = mul nuw i128 %conv68.i, %conv55.i, !dbg !2260 *)
mull tmpLL_H tmpLL_L v_conv68_i_L v_conv55_i_L;
mul tmpHL_L v_conv68_i_H v_conv55_i_L;
mul tmpLH_L v_conv68_i_L v_conv55_i_H;
mov v_mul69_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul69_i_H tmp tmpLL_H;
(*   %mul74.i = mul nuw i128 %conv55.i, %conv55.i, !dbg !2262 *)
mull tmpLL_H tmpLL_L v_conv55_i_L v_conv55_i_L;
mul tmpHL_L v_conv55_i_H v_conv55_i_L;
mul tmpLH_L v_conv55_i_L v_conv55_i_H;
mov v_mul74_i_L tmpLL_L;
add tmp tmpHL_L tmpLH_L;
add v_mul74_i_H tmp tmpLL_H;
(*   %add.i = add i128 %mul31.i, %mul74.i, !dbg !2264 *)
adds carry v_add_i_L v_mul31_i_L v_mul74_i_L;
adc v_add_i_H v_mul31_i_H v_mul74_i_H carry;
(*   %add75.i = add i128 %add.i, %mul40.i, !dbg !2265 *)
adds carry v_add75_i_L v_add_i_L v_mul40_i_L;
adc v_add75_i_H v_add_i_H v_mul40_i_H carry;
(*   %shr.i = lshr i128 %add75.i, 51, !dbg !2267 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add75_i_L 51;
split tmpH_h tmpH_l v_add75_i_H 51;
shl tmp tmpH_l 13;
add v_shr_i_L tmp tmpL_h;
mov v_shr_i_H tmpH_h;
(* == modified == *)
assert true && tmpH_h = const 64 0;
assume tmpH_h = 0 && true;
(*   %add75.tr.i = trunc i128 %add75.i to i64, !dbg !2268 *)
mov v_add75_tr_i v_add75_i_L;
(*   %conv77.i = and i64 %add75.tr.i, 2251799813685247, !dbg !2268 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv77_i v_add75_tr_i 0x7FFFFFFFFFFFF;
assert true && eq v_conv77_i tmp_to_be_used;
assume eq v_conv77_i tmp_to_be_used && true;
(*   %add78.i = add i128 %mul44.i, %mul36.i, !dbg !2270 *)
adds carry v_add78_i_L v_mul44_i_L v_mul36_i_L;
adc v_add78_i_H v_mul44_i_H v_mul36_i_H carry;
(*   %add79.i = add i128 %add78.i, %mul57.i, !dbg !2271 *)
adds carry v_add79_i_L v_add78_i_L v_mul57_i_L;
adc v_add79_i_H v_add78_i_H v_mul57_i_H carry;
(*   %add80.i = add i128 %mul61.i, %mul48.i, !dbg !2273 *)
adds carry v_add80_i_L v_mul61_i_L v_mul48_i_L;
adc v_add80_i_H v_mul61_i_H v_mul48_i_H carry;
(*   %add81.i = add i128 %add80.i, %mul15.i, !dbg !2274 *)
adds carry v_add81_i_L v_add80_i_L v_mul15_i_L;
adc v_add81_i_H v_add80_i_H v_mul15_i_H carry;
(*   %add82.i = add i128 %mul65.i, %mul53.i, !dbg !2276 *)
adds carry v_add82_i_L v_mul65_i_L v_mul53_i_L;
adc v_add82_i_H v_mul65_i_H v_mul53_i_H carry;
(*   %add83.i = add i128 %add82.i, %mul19.i, !dbg !2277 *)
adds carry v_add83_i_L v_add82_i_L v_mul19_i_L;
adc v_add83_i_H v_add82_i_H v_mul19_i_H carry;
(*   %add84.i = add i128 %mul23.i, %mul69.i, !dbg !2279 *)
adds carry v_add84_i_L v_mul23_i_L v_mul69_i_L;
adc v_add84_i_H v_mul23_i_H v_mul69_i_H carry;
(*   %add85.i = add i128 %add84.i, %mul27.i, !dbg !2280 *)
adds carry v_add85_i_L v_add84_i_L v_mul27_i_L;
adc v_add85_i_H v_add84_i_H v_mul27_i_H carry;
(*   %conv86.i = and i128 %shr.i, 18446744073709551615, !dbg !2282 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv86_i_L v_shr_i_L 0xFFFFFFFFFFFFFFFF;
assert true && eq v_conv86_i_L v_shr_i_L;
assume eq v_conv86_i_L v_shr_i_L && true;
and v_conv86_i_H v_shr_i_H 0x0;
assert true && eq v_conv86_i_H (const 64 0);
assume eq v_conv86_i_H 0 && true;
(*   %add87.i = add i128 %conv86.i, %add85.i, !dbg !2283 *)
adds carry v_add87_i_L v_conv86_i_L v_add85_i_L;
adc v_add87_i_H v_conv86_i_H v_add85_i_H carry;
(*   %shr88.i = lshr i128 %add87.i, 51, !dbg !2285 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add87_i_L 51;
split tmpH_h tmpH_l v_add87_i_H 51;
shl tmp tmpH_l 13;
add v_shr88_i_L tmp tmpL_h;
mov v_shr88_i_H tmpH_h;
(* == modified == *)
assert true && tmpH_h = const 64 0;
assume tmpH_h = 0 && true;
(*   %fold.i = add i128 %shr.i, %add85.i, !dbg !2286 *)
adds carry v_fold_i_L v_shr_i_L v_add85_i_L;
(*adc v_fold_i_H v_shr_i_H v_add85_i_H carry;*)
(* == modified == *)
adcs discard v_fold_i_H v_shr_i_H v_add85_i_H carry;
(*   %fold.tr.i = trunc i128 %fold.i to i64, !dbg !2287 *)
mov v_fold_tr_i v_fold_i_L;
(*   %conv91.i = and i64 %fold.tr.i, 2251799813685247, !dbg !2287 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv91_i v_fold_tr_i 0x7FFFFFFFFFFFF;
assert true && eq v_conv91_i tmp_to_be_used;
assume eq v_conv91_i tmp_to_be_used && true;
(*   %conv92.i = and i128 %shr88.i, 18446744073709551615, !dbg !2289 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv92_i_L v_shr88_i_L 0xFFFFFFFFFFFFFFFF;
assert true && eq v_conv92_i_L v_shr88_i_L;
assume eq v_conv92_i_L v_shr88_i_L && true;
and v_conv92_i_H v_shr88_i_H 0x0;
assert true && eq v_conv92_i_H (const 64 0);
assume eq v_conv92_i_H 0 && true;
(*   %add93.i = add i128 %conv92.i, %add83.i, !dbg !2290 *)
adds carry v_add93_i_L v_conv92_i_L v_add83_i_L;
adc v_add93_i_H v_conv92_i_H v_add83_i_H carry;
(*   %shr94.i = lshr i128 %add93.i, 51, !dbg !2292 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add93_i_L 51;
split tmpH_h tmpH_l v_add93_i_H 51;
shl tmp tmpH_l 13;
add v_shr94_i_L tmp tmpL_h;
mov v_shr94_i_H tmpH_h;
(* == modified == *)
assert true && tmpH_h = const 64 0;
assume tmpH_h = 0 && true;
(*   %fold213.i = add i128 %shr88.i, %add83.i, !dbg !2293 *)
adds carry v_fold213_i_L v_shr88_i_L v_add83_i_L;
(*adc v_fold213_i_H v_shr88_i_H v_add83_i_H carry;*)
(* == modified == *)
adcs discard v_fold213_i_H v_shr88_i_H v_add83_i_H carry;
(*   %fold213.tr.i = trunc i128 %fold213.i to i64, !dbg !2294 *)
mov v_fold213_tr_i v_fold213_i_L;
(*   %conv97.i = and i64 %fold213.tr.i, 2251799813685247, !dbg !2294 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv97_i v_fold213_tr_i 0x7FFFFFFFFFFFF;
assert true && eq v_conv97_i tmp_to_be_used;
assume eq v_conv97_i tmp_to_be_used && true;
(*   %conv98.i = and i128 %shr94.i, 18446744073709551615, !dbg !2296 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv98_i_L v_shr94_i_L 0xFFFFFFFFFFFFFFFF;
assert true && eq v_conv98_i_L v_shr94_i_L;
assume eq v_conv98_i_L v_shr94_i_L && true;
and v_conv98_i_H v_shr94_i_H 0x0;
assert true && eq v_conv98_i_H (const 64 0);
assume eq v_conv98_i_H 0 && true;
(*   %add99.i = add i128 %conv98.i, %add81.i, !dbg !2297 *)
adds carry v_add99_i_L v_conv98_i_L v_add81_i_L;
adc v_add99_i_H v_conv98_i_H v_add81_i_H carry;
(*   %shr100.i = lshr i128 %add99.i, 51, !dbg !2299 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add99_i_L 51;
split tmpH_h tmpH_l v_add99_i_H 51;
shl tmp tmpH_l 13;
add v_shr100_i_L tmp tmpL_h;
mov v_shr100_i_H tmpH_h;
(* == modified == *)
assert true && tmpH_h = const 64 0;
assume tmpH_h = 0 && true;
(*   %fold214.i = add i128 %shr94.i, %add81.i, !dbg !2300 *)
adds carry v_fold214_i_L v_shr94_i_L v_add81_i_L;
(*adc v_fold214_i_H v_shr94_i_H v_add81_i_H carry;*)
(* == modified == *)
adcs discard v_fold214_i_H v_shr94_i_H v_add81_i_H carry;
(*   %fold214.tr.i = trunc i128 %fold214.i to i64, !dbg !2301 *)
mov v_fold214_tr_i v_fold214_i_L;
(*   %conv103.i = and i64 %fold214.tr.i, 2251799813685247, !dbg !2301 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv103_i v_fold214_tr_i 0x7FFFFFFFFFFFF;
assert true && eq v_conv103_i tmp_to_be_used;
assume eq v_conv103_i tmp_to_be_used && true;
(*   %conv104.i = and i128 %shr100.i, 18446744073709551615, !dbg !2303 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv104_i_L v_shr100_i_L 0xFFFFFFFFFFFFFFFF;
assert true && eq v_conv104_i_L v_shr100_i_L;
assume eq v_conv104_i_L v_shr100_i_L && true;
and v_conv104_i_H v_shr100_i_H 0x0;
assert true && eq v_conv104_i_H (const 64 0);
assume eq v_conv104_i_H 0 && true;
(*   %add105.i = add i128 %conv104.i, %add79.i, !dbg !2304 *)
adds carry v_add105_i_L v_conv104_i_L v_add79_i_L;
adc v_add105_i_H v_conv104_i_H v_add79_i_H carry;
(*   %shr106.i = lshr i128 %add105.i, 51, !dbg !2306 *)
(* You may need to modify here *)
split tmpL_h tmp_to_be_used v_add105_i_L 51;
split tmpH_h tmpH_l v_add105_i_H 51;
shl tmp tmpH_l 13;
add v_shr106_i_L tmp tmpL_h;
mov v_shr106_i_H tmpH_h;
(* == modified == *)
assert true && tmpH_h = const 64 0;
assume tmpH_h = 0 && true;
(*   %conv107.i = trunc i128 %shr106.i to i64, !dbg !2307 *)
mov v_conv107_i v_shr106_i_L;
(*   %fold215.i = add i128 %shr100.i, %add79.i, !dbg !2309 *)
adds carry v_fold215_i_L v_shr100_i_L v_add79_i_L;
(*adc v_fold215_i_H v_shr100_i_H v_add79_i_H carry;*)
(* == modified == *)
adcs discard v_fold215_i_H v_shr100_i_H v_add79_i_H carry;
(*   %fold215.tr.i = trunc i128 %fold215.i to i64, !dbg !2310 *)
mov v_fold215_tr_i v_fold215_i_L;
(*   %conv109.i = and i64 %fold215.tr.i, 2251799813685247, !dbg !2310 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_conv109_i v_fold215_tr_i 0x7FFFFFFFFFFFF;
assert true && eq v_conv109_i tmp_to_be_used;
assume eq v_conv109_i tmp_to_be_used && true;
(*   %mul110.i = mul i64 %conv107.i, 19, !dbg !2312 *)
mul v_mul110_i v_conv107_i 19;
(*   %add111.i = add i64 %mul110.i, %conv77.i, !dbg !2314 *)
add v_add111_i v_mul110_i v_conv77_i;
(*   %shr112.i = lshr i64 %add111.i, 51, !dbg !2316 *)
(* You may need to modify here *)
split v_shr112_i tmp_to_be_used v_add111_i 51;
(*   %fold216.i = add i64 %mul110.i, %add75.tr.i, !dbg !2318 *)
(*add v_fold216_i v_mul110_i v_add75_tr_i;*)
(* == modified == *)
adds discard v_fold216_i v_mul110_i v_add75_tr_i;
(*   %and113.i = and i64 %fold216.i, 2251799813685247, !dbg !2318 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_and113_i v_fold216_i 0x7FFFFFFFFFFFF;
assert true && eq v_and113_i tmp_to_be_used;
assume eq v_and113_i tmp_to_be_used && true;
(*   %add114.i = add nuw nsw i64 %shr112.i, %conv91.i, !dbg !2320 *)
add v_add114_i v_shr112_i v_conv91_i;
(*   %shr115.i = lshr i64 %add114.i, 51, !dbg !2322 *)
(* You may need to modify here *)
split v_shr115_i tmp_to_be_used v_add114_i 51;
(*   %fold217.i = add i64 %shr112.i, %fold.tr.i, !dbg !2324 *)
(*add v_fold217_i v_shr112_i v_fold_tr_i;*)
(* == modified == *)
adds discard v_fold217_i v_shr112_i v_fold_tr_i;
(*   %and116.i = and i64 %fold217.i, 2251799813685247, !dbg !2324 *)
(* You may need to modify here *)
(* Heuristics applied. *)
and v_and116_i v_fold217_i 0x7FFFFFFFFFFFF;
assert true && eq v_and116_i tmp_to_be_used;
assume eq v_and116_i tmp_to_be_used && true;
(*   %add117.i = add nuw nsw i64 %shr115.i, %conv97.i, !dbg !2326 *)
add v_add117_i v_shr115_i v_conv97_i;
(*   %54 = load i64, i64* %arraydecay.i.386, align 8, !dbg !2336, !tbaa !1385 *)
mov v54 L36_0;
(*   %add.i.i = add i64 %and41.i.i, %54, !dbg !2337 *)
add v_add_i_i v_and41_i_i v54;
(*   %55 = load <2 x i64>, <2 x i64>* %15, align 8, !dbg !1460, !tbaa !1385 *)
(*mov v55_0 L46_0;*)
(*mov v55_1 L46_8;*)
(* == modified == *)
mov v55_0 L37_0;
mov v55_1 L38_0;
(*   %56 = insertelement <2 x i64> undef, i64 %and44.i.i, i32 0, !dbg !2340 *)
nondet undef_0;
mov v56_0 v_and44_i_i;
nondet undef_1;
mov v56_1 undef_1;
(*   %57 = insertelement <2 x i64> %56, i64 %add45.i.i, i32 1, !dbg !2340 *)
mov v57_0 v56_0;
mov v57_1 v_add45_i_i;
(*   %58 = add <2 x i64> %57, %55, !dbg !2340 *)
add v58_0 v57_0 v55_0;
add v58_1 v57_1 v55_1;
(*   %59 = load i64, i64* %arrayidx121.i.478, align 8, !dbg !2342, !tbaa !1385 *)
mov v59 L39_0;
(*   %add10.i.i = add i64 %conv31.i.i, %59, !dbg !2343 *)
add v_add10_i_i v_conv31_i_i v59;
(*   %60 = load i64, i64* %arrayidx122.i.479, align 8, !dbg !2345, !tbaa !1385 *)
mov v60 L40_0;
(*   %add13.i.i = add i64 %conv37.i.i, %60, !dbg !2346 *)
add v_add13_i_i v_conv37_i_i v60;
(*   store i64 %add.i.i, i64* %arraydecay.i.483, align 8, !dbg !2348, !tbaa !1385 *)
mov L16_0 v_add_i_i;
(*   store <2 x i64> %58, <2 x i64>* %16, align 8, !dbg !1463, !tbaa !1385 *)
(*mov L47_0 v58_0;*)
(*mov L47_8 v58_1;*)
(* == modified == *)
mov L17_0 v58_0;
mov L18_0 v58_1;
(*   store i64 %add10.i.i, i64* %arrayidx21.i.i.506, align 8, !dbg !2349, !tbaa !1385 *)
mov L19_0 v_add10_i_i;
(*   store i64 %add13.i.i, i64* %arrayidx22.i.i.507, align 8, !dbg !2350, !tbaa !1385 *)
mov L20_0 v_add13_i_i;
(*   call void @fe_mul_impl(i64* %arrayidx.i.66, i64* %x3.sroa.0.0..sroa_idx, i64* %arrayidx.i.217) #2, !dbg !2356 *)
call fe_mul_impl(X1_0, X1_1, X1_2, X1_3, X1_4, L6_0, L8_0, L10_0, L12_0, L14_0, L7_0, L9_0, L11_0, L13_0, L15_0);
(*   call void @fe_mul_impl(i64* %arrayidx.i.217, i64* %arraydecay.i.511, i64* %arraydecay.i.483) #2, !dbg !2361 *)
call fe_mul_impl(L21_0, L22_0, L23_0, L24_0, L25_0, L16_0, L17_0, L18_0, L19_0, L20_0, L6_0, L8_0, L10_0, L12_0, L14_0);

mov X5_0 v_and113_i;
mov X5_1 v_and116_i;
mov X5_2 v_add117_i;
mov X5_3 v_conv103_i;
mov X5_4 v_conv109_i;
mov Z4_0 L6_0;
mov Z4_1 L8_0;
mov Z4_2 L10_0;
mov Z4_3 L12_0;
mov Z4_4 L14_0;
mov Z5_0 L7_0;
mov Z5_1 L9_0;
mov Z5_2 L11_0;
mov Z5_3 L13_0;
mov Z5_4 L15_0;


{
  and [
    (* condition 1 *)
    
    eqmod
      (limbs 51 [X4_0, X4_1, X4_2, X4_3, X4_4])
      (sq (sub
             (sq (limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4]))
             (sq (limbs 51 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4]))))
      ((2**255) - 19),
      
    (* condition 2 *)
    
    eqmod
      (limbs 51 [Z4_0, Z4_1, Z4_2, Z4_3, Z4_4])
      (mul [
         4,
         limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4],
         limbs 51 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4],
         add [sq (limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4]),
              mul [486662,
                   limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4],
                   limbs 51 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4]],
              sq (limbs 51 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4])]
       ])
      ((2**255) - 19),

    (* condition 3-1 *)

    eqmod
      (limbs 51 [X5_0, X5_1, X5_2, X5_3, X5_4])
      (mul 4
           (sq (sub
	          (mul (limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4]) 
		       (limbs 51 [X3_0, X3_1, X3_2, X3_3, X3_4]))
                  (mul (limbs 51 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4]) 
		       (limbs 51 [Z3_0, Z3_1, Z3_2, Z3_3, Z3_4])))))
      ((2**255) - 19),
    
    (* condition 3-2 *)

    eqmod
      (limbs 51 [Z5_0, Z5_1, Z5_2, Z5_3, Z5_4])
      mul [
        4,
        (limbs 51 [X1_0, X1_1, X1_2, X1_3, X1_4]),
       	(sq (sub
               (mul (limbs 51 [X3_0, X3_1, X3_2, X3_3, X3_4])
		    (limbs 51 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4]))
	       (mul (limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4])
	      	    (limbs 51 [Z3_0, Z3_1, Z3_2, Z3_3, Z3_4]))))
      ]
      ((2**255) - 19),

    (* condition 3 *)

    eqmod
      mul [
        (limbs 51 [X5_0, X5_1, X5_2, X5_3, X5_4]),
        (limbs 51 [X1_0, X1_1, X1_2, X1_3, X1_4]),
        (sq (sub
	       (mul (limbs 51 [X3_0, X3_1, X3_2, X3_3, X3_4])
                    (limbs 51 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4]))
               (mul (limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4])
                    (limbs 51 [Z3_0, Z3_1, Z3_2, Z3_3, Z3_4]))))
      ]
      (mul (limbs 51 [Z5_0, Z5_1, Z5_2, Z5_3, Z5_4])
           (sq (sub
	          (mul (limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4])
                       (limbs 51 [X3_0, X3_1, X3_2, X3_3, X3_4]))
                  (mul (limbs 51 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4])
      	               (limbs 51 [Z3_0, Z3_1, Z3_2, Z3_3, Z3_4])))))
      ((2**255) - 19)

  ]
  &&
  and [
    X4_0 <= const 64 0x8cccccccccccc,
    X4_1 <= const 64 0x8cccccccccccc,
    X4_2 <= const 64 0x8cccccccccccc,
    X4_3 <= const 64 0x8cccccccccccc,
    X4_4 <= const 64 0x8cccccccccccc,
    Z4_0 <= const 64 0x8cccccccccccc,
    Z4_1 <= const 64 0x8cccccccccccc,
    Z4_2 <= const 64 0x8cccccccccccc,
    Z4_3 <= const 64 0x8cccccccccccc,
    Z4_4 <= const 64 0x8cccccccccccc,
    X5_0 <= const 64 0x8cccccccccccc,
    X5_1 <= const 64 0x8cccccccccccc,
    X5_2 <= const 64 0x8cccccccccccc,
    X5_3 <= const 64 0x8cccccccccccc,
    X5_4 <= const 64 0x8cccccccccccc,
    Z5_0 <= const 64 0x8cccccccccccc,
    Z5_1 <= const 64 0x8cccccccccccc,
    Z5_2 <= const 64 0x8cccccccccccc,
    Z5_3 <= const 64 0x8cccccccccccc,
    Z5_4 <= const 64 0x8cccccccccccc
  ]
}


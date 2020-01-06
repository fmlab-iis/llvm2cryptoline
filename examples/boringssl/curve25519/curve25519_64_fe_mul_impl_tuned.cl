(* quine: -isafety -jobs 1 
         Overall                        [OK]            36.446104 seconds
Verifying algebraic assertions:         [OK]            0.008364 seconds
Verifying range assertions:             [OK]            38.290139 seconds
Verifying range specification:          [OK]            4.129059 seconds
Verifying algebraic specification:      [OK]            0.045174 seconds
Verification result:                    [OK]            78.928768 seconds
*)

(* mac: -isafety -jobs 1
	 Overall			[OK]		40.272904 seconds
Verifying algebraic assertions:		[OK]		0.009520 seconds
Verifying range assertions:		[OK]		38.596929 seconds
Verifying range specification:		[OK]		4.851648 seconds
Verifying algebraic specification:	[OK]		0.056627 seconds
Verification result:			[OK]		83.794387 seconds
*)

proc main (a0, a1, a2, a3, a4, b0, b1, b2, b3, b4) =
{
  true
  &&
  and [
    a0 <= const 64 0x1a666666666664,
    a1 <= const 64 0x1a666666666664,
    a2 <= const 64 0x1a666666666664,
    a3 <= const 64 0x1a666666666664,
    a4 <= const 64 0x1a666666666664,
    b0 <= const 64 0x1a666666666664,
    b1 <= const 64 0x1a666666666664,
    b2 <= const 64 0x1a666666666664,
    b3 <= const 64 0x1a666666666664,
    b4 <= const 64 0x1a666666666664
  ]
}

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


{
  eqmod
    (limbs 51 [c0, c1, c2, c3, c4])

    (
      (limbs 51 [a0, a1, a2, a3, a4])
      *
      (limbs 51 [b0, b1, b2, b3, b4])
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


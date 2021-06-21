proc main (uint64 mem0_0, uint64 mem0_8, uint64 mem0_16, uint64 mem0_24, uint64 mem0_32, uint64 mem0_40, uint64 mem0_48, uint64 mem0_56, uint64 mem0_64, uint64 mem0_72, uint64 mem1_0, uint64 mem1_8, uint64 mem1_16, uint64 mem1_24, uint64 mem1_32, uint64 mem1_40, uint64 mem1_48, uint64 mem1_56, uint64 mem1_64, uint64 mem1_72) =
{
  true
  &&
  and [
  	mem0_0 <=u (9 * (2**51-1))@64,
	mem0_8 <=u (10 * (2**51-1))@64,
  	mem0_16 <=u (9 * (2**51-1))@64,
  	mem0_24 <=u (9 * (2**51-1))@64,
  	mem0_32 <=u (9 * (2**51-1))@64,
  	mem0_40 <=u (9 * (2**51-1))@64,
	mem0_48 <=u (10 * (2**51-1))@64,
  	mem0_56 <=u (9 * (2**51-1))@64,
  	mem0_64 <=u (9 * (2**51-1))@64,
  	mem0_72 <=u (9 * (2**51-1))@64,
  	mem1_0 <=u (9 * (2**51-1))@64,
	mem1_8 <=u (10 * (2**51-1))@64,
  	mem1_16 <=u (9 * (2**51-1))@64,
  	mem1_24 <=u (9 * (2**51-1))@64,
  	mem1_32 <=u (9 * (2**51-1))@64,
  	mem1_40 <=u (9 * (2**51-1))@64,
	mem1_48 <=u (10 * (2**51-1))@64,
  	mem1_56 <=u (9 * (2**51-1))@64,
  	mem1_64 <=u (9 * (2**51-1))@64,
  	mem1_72 <=u (9 * (2**51-1))@64  	
  ]
}



(*   %0 = load i64, i64* %f1, align 8, !tbaa !3 *)
mov v0 mem0_0;
(*   %arrayidx1 = getelementptr inbounds i64, i64* %f1, i64 1 *)
(*   %1 = load i64, i64* %arrayidx1, align 8, !tbaa !3 *)
mov v1 mem0_8;
(*   %arrayidx2 = getelementptr inbounds i64, i64* %f1, i64 2 *)
(*   %2 = load i64, i64* %arrayidx2, align 8, !tbaa !3 *)
mov v2 mem0_16;
(*   %arrayidx3 = getelementptr inbounds i64, i64* %f1, i64 3 *)
(*   %3 = load i64, i64* %arrayidx3, align 8, !tbaa !3 *)
mov v3 mem0_24;
(*   %arrayidx4 = getelementptr inbounds i64, i64* %f1, i64 4 *)
(*   %4 = load i64, i64* %arrayidx4, align 8, !tbaa !3 *)
mov v4 mem0_32;
(*   %5 = load i64, i64* %f2, align 8, !tbaa !3 *)
mov v5 mem1_0;
(*   %arrayidx6 = getelementptr inbounds i64, i64* %f2, i64 1 *)
(*   %6 = load i64, i64* %arrayidx6, align 8, !tbaa !3 *)
mov v6 mem1_8;
(*   %arrayidx7 = getelementptr inbounds i64, i64* %f2, i64 2 *)
(*   %7 = load i64, i64* %arrayidx7, align 8, !tbaa !3 *)
mov v7 mem1_16;
(*   %arrayidx8 = getelementptr inbounds i64, i64* %f2, i64 3 *)
(*   %8 = load i64, i64* %arrayidx8, align 8, !tbaa !3 *)
mov v8 mem1_24;
(*   %arrayidx9 = getelementptr inbounds i64, i64* %f2, i64 4 *)
(*   %9 = load i64, i64* %arrayidx9, align 8, !tbaa !3 *)
mov v9 mem1_32;
(*   %arrayidx10 = getelementptr inbounds i64, i64* %f1, i64 5 *)
(*   %10 = load i64, i64* %arrayidx10, align 8, !tbaa !3 *)
mov v10 mem0_40;
(*   %arrayidx11 = getelementptr inbounds i64, i64* %f1, i64 6 *)
(*   %11 = load i64, i64* %arrayidx11, align 8, !tbaa !3 *)
mov v11 mem0_48;
(*   %arrayidx12 = getelementptr inbounds i64, i64* %f1, i64 7 *)
(*   %12 = load i64, i64* %arrayidx12, align 8, !tbaa !3 *)
mov v12 mem0_56;
(*   %arrayidx13 = getelementptr inbounds i64, i64* %f1, i64 8 *)
(*   %13 = load i64, i64* %arrayidx13, align 8, !tbaa !3 *)
mov v13 mem0_64;
(*   %arrayidx14 = getelementptr inbounds i64, i64* %f1, i64 9 *)
(*   %14 = load i64, i64* %arrayidx14, align 8, !tbaa !3 *)
mov v14 mem0_72;
(*   %arrayidx15 = getelementptr inbounds i64, i64* %f2, i64 5 *)
(*   %15 = load i64, i64* %arrayidx15, align 8, !tbaa !3 *)
mov v15 mem1_40;
(*   %arrayidx16 = getelementptr inbounds i64, i64* %f2, i64 6 *)
(*   %16 = load i64, i64* %arrayidx16, align 8, !tbaa !3 *)
mov v16 mem1_48;
(*   %arrayidx17 = getelementptr inbounds i64, i64* %f2, i64 7 *)
(*   %17 = load i64, i64* %arrayidx17, align 8, !tbaa !3 *)
mov v17 mem1_56;
(*   %arrayidx18 = getelementptr inbounds i64, i64* %f2, i64 8 *)
(*   %18 = load i64, i64* %arrayidx18, align 8, !tbaa !3 *)
mov v18 mem1_64;
(*   %arrayidx19 = getelementptr inbounds i64, i64* %f2, i64 9 *)
(*   %19 = load i64, i64* %arrayidx19, align 8, !tbaa !3 *)
mov v19 mem1_72;
(*   %mul = mul i64 %6, 19 *)
mul v_mul v6 19@uint64;
(*   %mul20 = mul i64 %7, 19 *)
mul v_mul20 v7 19@uint64;
(*   %mul21 = mul i64 %8, 19 *)
mul v_mul21 v8 19@uint64;
(*   %mul22 = mul i64 %9, 19 *)
mul v_mul22 v9 19@uint64;
(*   %mul23 = mul i64 %16, 19 *)
mul v_mul23 v16 19@uint64;
(*   %mul24 = mul i64 %17, 19 *)
mul v_mul24 v17 19@uint64;
(*   %mul25 = mul i64 %18, 19 *)
mul v_mul25 v18 19@uint64;
(*   %mul26 = mul i64 %19, 19 *)
mul v_mul26 v19 19@uint64;
(*   %conv.i = zext i64 %0 to i128 *)
cast v_conv_i@uint128 v0@uint64;
(*   %conv1.i = zext i64 %5 to i128 *)
cast v_conv1_i@uint128 v5@uint64;
(*   %mul.i = mul nuw i128 %conv1.i, %conv.i *)
mul v_mul_i v_conv1_i v_conv_i;
(*   %conv1.i1841 = zext i64 %6 to i128 *)
cast v_conv1_i1841@uint128 v6@uint64;
(*   %mul.i1842 = mul nuw i128 %conv1.i1841, %conv.i *)
mul v_mul_i1842 v_conv1_i1841 v_conv_i;
(*   %conv1.i1833 = zext i64 %7 to i128 *)
cast v_conv1_i1833@uint128 v7@uint64;
(*   %mul.i1834 = mul nuw i128 %conv1.i1833, %conv.i *)
mul v_mul_i1834 v_conv1_i1833 v_conv_i;
(*   %conv1.i1825 = zext i64 %8 to i128 *)
cast v_conv1_i1825@uint128 v8@uint64;
(*   %mul.i1826 = mul nuw i128 %conv1.i1825, %conv.i *)
mul v_mul_i1826 v_conv1_i1825 v_conv_i;
(*   %conv1.i1817 = zext i64 %9 to i128 *)
cast v_conv1_i1817@uint128 v9@uint64;
(*   %mul.i1818 = mul nuw i128 %conv1.i1817, %conv.i *)
mul v_mul_i1818 v_conv1_i1817 v_conv_i;
(*   %conv.i1808 = zext i64 %1 to i128 *)
cast v_conv_i1808@uint128 v1@uint64;
(*   %conv1.i1809 = zext i64 %mul22 to i128 *)
cast v_conv1_i1809@uint128 v_mul22@uint64;
(*   %mul.i1810 = mul nuw i128 %conv1.i1809, %conv.i1808 *)
mul v_mul_i1810 v_conv1_i1809 v_conv_i1808;
(*   %mul.i1788 = mul nuw i128 %conv1.i, %conv.i1808 *)
mul v_mul_i1788 v_conv1_i v_conv_i1808;
(*   %add.i1780 = add i128 %mul.i1842, %mul.i1788 *)
add v_add_i1780 v_mul_i1842 v_mul_i1788;
(*   %mul.i1766 = mul nuw i128 %conv1.i1841, %conv.i1808 *)
mul v_mul_i1766 v_conv1_i1841 v_conv_i1808;
(*   %mul.i1744 = mul nuw i128 %conv1.i1833, %conv.i1808 *)
mul v_mul_i1744 v_conv1_i1833 v_conv_i1808;
(*   %mul.i1722 = mul nuw i128 %conv1.i1825, %conv.i1808 *)
mul v_mul_i1722 v_conv1_i1825 v_conv_i1808;
(*   %conv.i1698 = zext i64 %2 to i128 *)
cast v_conv_i1698@uint128 v2@uint64;
(*   %conv1.i1699 = zext i64 %mul21 to i128 *)
cast v_conv1_i1699@uint128 v_mul21@uint64;
(*   %mul.i1700 = mul nuw i128 %conv1.i1699, %conv.i1698 *)
mul v_mul_i1700 v_conv1_i1699 v_conv_i1698;
(*   %mul.i1678 = mul nuw i128 %conv1.i1809, %conv.i1698 *)
mul v_mul_i1678 v_conv1_i1809 v_conv_i1698;
(*   %mul.i1656 = mul nuw i128 %conv1.i, %conv.i1698 *)
mul v_mul_i1656 v_conv1_i v_conv_i1698;
(*   %mul.i1634 = mul nuw i128 %conv1.i1841, %conv.i1698 *)
mul v_mul_i1634 v_conv1_i1841 v_conv_i1698;
(*   %mul.i1612 = mul nuw i128 %conv1.i1833, %conv.i1698 *)
mul v_mul_i1612 v_conv1_i1833 v_conv_i1698;
(*   %conv.i1588 = zext i64 %3 to i128 *)
cast v_conv_i1588@uint128 v3@uint64;
(*   %conv1.i1589 = zext i64 %mul20 to i128 *)
cast v_conv1_i1589@uint128 v_mul20@uint64;
(*   %mul.i1590 = mul nuw i128 %conv1.i1589, %conv.i1588 *)
mul v_mul_i1590 v_conv1_i1589 v_conv_i1588;
(*   %mul.i1568 = mul nuw i128 %conv1.i1699, %conv.i1588 *)
mul v_mul_i1568 v_conv1_i1699 v_conv_i1588;
(*   %mul.i1546 = mul nuw i128 %conv1.i1809, %conv.i1588 *)
mul v_mul_i1546 v_conv1_i1809 v_conv_i1588;
(*   %mul.i1524 = mul nuw i128 %conv1.i, %conv.i1588 *)
mul v_mul_i1524 v_conv1_i v_conv_i1588;
(*   %mul.i1502 = mul nuw i128 %conv1.i1841, %conv.i1588 *)
mul v_mul_i1502 v_conv1_i1841 v_conv_i1588;
(*   %conv.i1478 = zext i64 %4 to i128 *)
cast v_conv_i1478@uint128 v4@uint64;
(*   %conv1.i1479 = zext i64 %mul to i128 *)
cast v_conv1_i1479@uint128 v_mul@uint64;
(*   %mul.i1480 = mul nuw i128 %conv1.i1479, %conv.i1478 *)
mul v_mul_i1480 v_conv1_i1479 v_conv_i1478;
(*   %add.i1802 = add i128 %mul.i1480, %mul.i *)
add v_add_i1802 v_mul_i1480 v_mul_i;
(*   %add.i1692 = add i128 %add.i1802, %mul.i1590 *)
add v_add_i1692 v_add_i1802 v_mul_i1590;
(*   %add.i1582 = add i128 %add.i1692, %mul.i1700 *)
add v_add_i1582 v_add_i1692 v_mul_i1700;
(*   %add.i1472 = add i128 %add.i1582, %mul.i1810 *)
add v_add_i1472 v_add_i1582 v_mul_i1810;
(*   %mul.i1458 = mul nuw i128 %conv1.i1589, %conv.i1478 *)
mul v_mul_i1458 v_conv1_i1589 v_conv_i1478;
(*   %mul.i1436 = mul nuw i128 %conv1.i1699, %conv.i1478 *)
mul v_mul_i1436 v_conv1_i1699 v_conv_i1478;
(*   %mul.i1414 = mul nuw i128 %conv1.i1809, %conv.i1478 *)
mul v_mul_i1414 v_conv1_i1809 v_conv_i1478;
(*   %mul.i1392 = mul nuw i128 %conv1.i, %conv.i1478 *)
mul v_mul_i1392 v_conv1_i v_conv_i1478;
(*   %conv.i1368 = zext i64 %10 to i128 *)
cast v_conv_i1368@uint128 v10@uint64;
(*   %conv1.i1369 = zext i64 %15 to i128 *)
cast v_conv1_i1369@uint128 v15@uint64;
(*   %mul.i1370 = mul nuw i128 %conv1.i1369, %conv.i1368 *)
mul v_mul_i1370 v_conv1_i1369 v_conv_i1368;
(*   %conv1.i1361 = zext i64 %16 to i128 *)
cast v_conv1_i1361@uint128 v16@uint64;
(*   %mul.i1362 = mul nuw i128 %conv1.i1361, %conv.i1368 *)
mul v_mul_i1362 v_conv1_i1361 v_conv_i1368;
(*   %conv1.i1353 = zext i64 %17 to i128 *)
cast v_conv1_i1353@uint128 v17@uint64;
(*   %mul.i1354 = mul nuw i128 %conv1.i1353, %conv.i1368 *)
mul v_mul_i1354 v_conv1_i1353 v_conv_i1368;
(*   %conv1.i1345 = zext i64 %18 to i128 *)
cast v_conv1_i1345@uint128 v18@uint64;
(*   %mul.i1346 = mul nuw i128 %conv1.i1345, %conv.i1368 *)
mul v_mul_i1346 v_conv1_i1345 v_conv_i1368;
(*   %conv1.i1337 = zext i64 %19 to i128 *)
cast v_conv1_i1337@uint128 v19@uint64;
(*   %mul.i1338 = mul nuw i128 %conv1.i1337, %conv.i1368 *)
mul v_mul_i1338 v_conv1_i1337 v_conv_i1368;
(*   %conv.i1328 = zext i64 %11 to i128 *)
cast v_conv_i1328@uint128 v11@uint64;
(*   %conv1.i1329 = zext i64 %mul26 to i128 *)
cast v_conv1_i1329@uint128 v_mul26@uint64;
(*   %mul.i1330 = mul nuw i128 %conv1.i1329, %conv.i1328 *)
mul v_mul_i1330 v_conv1_i1329 v_conv_i1328;
(*   %mul.i1308 = mul nuw i128 %conv1.i1369, %conv.i1328 *)
mul v_mul_i1308 v_conv1_i1369 v_conv_i1328;
(*   %add.i1300 = add i128 %mul.i1362, %mul.i1308 *)
add v_add_i1300 v_mul_i1362 v_mul_i1308;
(*   %mul.i1286 = mul nuw i128 %conv1.i1361, %conv.i1328 *)
mul v_mul_i1286 v_conv1_i1361 v_conv_i1328;
(*   %mul.i1264 = mul nuw i128 %conv1.i1353, %conv.i1328 *)
mul v_mul_i1264 v_conv1_i1353 v_conv_i1328;
(*   %mul.i1242 = mul nuw i128 %conv1.i1345, %conv.i1328 *)
mul v_mul_i1242 v_conv1_i1345 v_conv_i1328;
(*   %conv.i1218 = zext i64 %12 to i128 *)
cast v_conv_i1218@uint128 v12@uint64;
(*   %conv1.i1219 = zext i64 %mul25 to i128 *)
cast v_conv1_i1219@uint128 v_mul25@uint64;
(*   %mul.i1220 = mul nuw i128 %conv1.i1219, %conv.i1218 *)
mul v_mul_i1220 v_conv1_i1219 v_conv_i1218;
(*   %mul.i1198 = mul nuw i128 %conv1.i1329, %conv.i1218 *)
mul v_mul_i1198 v_conv1_i1329 v_conv_i1218;
(*   %mul.i1176 = mul nuw i128 %conv1.i1369, %conv.i1218 *)
mul v_mul_i1176 v_conv1_i1369 v_conv_i1218;
(*   %mul.i1154 = mul nuw i128 %conv1.i1361, %conv.i1218 *)
mul v_mul_i1154 v_conv1_i1361 v_conv_i1218;
(*   %mul.i1132 = mul nuw i128 %conv1.i1353, %conv.i1218 *)
mul v_mul_i1132 v_conv1_i1353 v_conv_i1218;
(*   %conv.i1108 = zext i64 %13 to i128 *)
cast v_conv_i1108@uint128 v13@uint64;
(*   %conv1.i1109 = zext i64 %mul24 to i128 *)
cast v_conv1_i1109@uint128 v_mul24@uint64;
(*   %mul.i1110 = mul nuw i128 %conv1.i1109, %conv.i1108 *)
mul v_mul_i1110 v_conv1_i1109 v_conv_i1108;
(*   %mul.i1088 = mul nuw i128 %conv1.i1219, %conv.i1108 *)
mul v_mul_i1088 v_conv1_i1219 v_conv_i1108;
(*   %mul.i1066 = mul nuw i128 %conv1.i1329, %conv.i1108 *)
mul v_mul_i1066 v_conv1_i1329 v_conv_i1108;
(*   %mul.i1044 = mul nuw i128 %conv1.i1369, %conv.i1108 *)
mul v_mul_i1044 v_conv1_i1369 v_conv_i1108;
(*   %mul.i1022 = mul nuw i128 %conv1.i1361, %conv.i1108 *)
mul v_mul_i1022 v_conv1_i1361 v_conv_i1108;
(*   %conv.i998 = zext i64 %14 to i128 *)
cast v_conv_i998@uint128 v14@uint64;
(*   %conv1.i999 = zext i64 %mul23 to i128 *)
cast v_conv1_i999@uint128 v_mul23@uint64;
(*   %mul.i1000 = mul nuw i128 %conv1.i999, %conv.i998 *)
mul v_mul_i1000 v_conv1_i999 v_conv_i998;
(*   %add.i1322 = add i128 %mul.i1000, %mul.i1370 *)
add v_add_i1322 v_mul_i1000 v_mul_i1370;
(*   %add.i1212 = add i128 %add.i1322, %mul.i1110 *)
add v_add_i1212 v_add_i1322 v_mul_i1110;
(*   %add.i1102 = add i128 %add.i1212, %mul.i1220 *)
add v_add_i1102 v_add_i1212 v_mul_i1220;
(*   %add.i992 = add i128 %add.i1102, %mul.i1330 *)
add v_add_i992 v_add_i1102 v_mul_i1330;
(*   %mul.i978 = mul nuw i128 %conv1.i1109, %conv.i998 *)
mul v_mul_i978 v_conv1_i1109 v_conv_i998;
(*   %mul.i956 = mul nuw i128 %conv1.i1219, %conv.i998 *)
mul v_mul_i956 v_conv1_i1219 v_conv_i998;
(*   %mul.i934 = mul nuw i128 %conv1.i1329, %conv.i998 *)
mul v_mul_i934 v_conv1_i1329 v_conv_i998;
(*   %mul.i912 = mul nuw i128 %conv1.i1369, %conv.i998 *)
mul v_mul_i912 v_conv1_i1369 v_conv_i998;
(*   %retval.sroa.0.0.extract.trunc.i896 = trunc i128 %add.i1472 to i64 *)
(* == modified == *)
(* vpc v_retval_sroa_0_0_extract_trunc_i896@uint64 v_add_i1472@uint128; *)
cast v_retval_sroa_0_0_extract_trunc_i896@uint64 v_add_i1472@uint128;	
(*   %and = and i64 %retval.sroa.0.0.extract.trunc.i896, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and v_retval_sroa_0_0_extract_trunc_i896 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i887 = lshr i128 %add.i1472, 51 *)
(* You may need to modify here *)
split v_shr_i887 tmp_to_be_used v_add_i1472 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and;
assume tmp_v = v_and && true;
(*   %y.sroa.0.0.insert.ext.i876 = and i128 %shr.i887, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i876 v_shr_i887 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i876 v_shr_i887;
assume eq v_y_sroa_0_0_insert_ext_i876 v_shr_i887 && true;
(*   %add.i1670 = add i128 %add.i1780, %mul.i1458 *)
add v_add_i1670 v_add_i1780 v_mul_i1458;
(*   %add.i1560 = add i128 %add.i1670, %mul.i1568 *)
add v_add_i1560 v_add_i1670 v_mul_i1568;
(*   %add.i1450 = add i128 %add.i1560, %mul.i1678 *)
add v_add_i1450 v_add_i1560 v_mul_i1678;
(*   %add.i877 = add i128 %add.i1450, %y.sroa.0.0.insert.ext.i876 *)
add v_add_i877 v_add_i1450 v_y_sroa_0_0_insert_ext_i876;
(*   %retval.sroa.0.0.extract.trunc.i878 = trunc i128 %add.i877 to i64 *)
(* == modified == *)
(* vpc v_retval_sroa_0_0_extract_trunc_i878@uint64 v_add_i877@uint128; *)
cast v_retval_sroa_0_0_extract_trunc_i878@uint64 v_add_i877@uint128;
(*   %and306 = and i64 %retval.sroa.0.0.extract.trunc.i878, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and306 v_retval_sroa_0_0_extract_trunc_i878 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i867 = lshr i128 %add.i877, 51 *)
(* You may need to modify here *)
split v_shr_i867 tmp_to_be_used v_add_i877 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and306;
assume tmp_v = v_and306 && true;
(*   %y.sroa.0.0.insert.ext.i856 = and i128 %shr.i867, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i856 v_shr_i867 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i856 v_shr_i867;
assume eq v_y_sroa_0_0_insert_ext_i856 v_shr_i867 && true;
(*   %add.i1758 = add i128 %mul.i1766, %mul.i1656 *)
add v_add_i1758 v_mul_i1766 v_mul_i1656;
(*   %add.i1648 = add i128 %add.i1758, %mul.i1834 *)
add v_add_i1648 v_add_i1758 v_mul_i1834;
(*   %add.i1538 = add i128 %add.i1648, %mul.i1436 *)
add v_add_i1538 v_add_i1648 v_mul_i1436;
(*   %add.i1428 = add i128 %add.i1538, %mul.i1546 *)
add v_add_i1428 v_add_i1538 v_mul_i1546;
(*   %add.i857 = add i128 %add.i1428, %y.sroa.0.0.insert.ext.i856 *)
add v_add_i857 v_add_i1428 v_y_sroa_0_0_insert_ext_i856;
(*   %shr.i847 = lshr i128 %add.i857, 51 *)
(* You may need to modify here *)
split v_shr_i847 tmp_to_be_used v_add_i857 51;
(*   %y.sroa.0.0.insert.ext.i836 = and i128 %shr.i847, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i836 v_shr_i847 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i836 v_shr_i847;
assume eq v_y_sroa_0_0_insert_ext_i836 v_shr_i847 && true;
(*   %add.i1736 = add i128 %mul.i1634, %mul.i1524 *)
add v_add_i1736 v_mul_i1634 v_mul_i1524;
(*   %add.i1626 = add i128 %add.i1736, %mul.i1744 *)
add v_add_i1626 v_add_i1736 v_mul_i1744;
(*   %add.i1516 = add i128 %add.i1626, %mul.i1826 *)
add v_add_i1516 v_add_i1626 v_mul_i1826;
(*   %add.i1406 = add i128 %add.i1516, %mul.i1414 *)
add v_add_i1406 v_add_i1516 v_mul_i1414;
(*   %add.i837 = add i128 %add.i1406, %y.sroa.0.0.insert.ext.i836 *)
add v_add_i837 v_add_i1406 v_y_sroa_0_0_insert_ext_i836;
(*   %20 = insertelement <2 x i128> undef, i128 %add.i857, i32 0 *)
mov v20_0 v_add_i857;
nondet undef_1@uint128;
mov v20_1 undef_1;
(*   %21 = insertelement <2 x i128> %20, i128 %add.i837, i32 1 *)
mov v21_0 v20_0;
mov v21_1 v_add_i837;
(*   %22 = trunc <2 x i128> %21 to <2 x i64> *)
(* == modified == *)
(* vpc v22_0@uint64 v21_0@uint128; *)
(* vpc v22_1@uint64 v21_1@uint128; *)
cast v22_0@uint64 v21_0@uint128;
cast v22_1@uint64 v21_1@uint128;
(*   %23 = and <2 x i64> %22, <i64 2251799813685247, i64 2251799813685247> *)
(* You may need to modify here *)
and uint64 v23_0 v22_0 0x7FFFFFFFFFFFF@uint64;
and uint64 v23_1 v22_1 0x7FFFFFFFFFFFF@uint64;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v23_0;
assume tmp_v = v23_0 && true;
(*   %shr.i827 = lshr i128 %add.i837, 51 *)
(* You may need to modify here *)
split v_shr_i827 tmp_to_be_used v_add_i837 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v23_1;
assume tmp_v = v23_1 && true;
(*   %y.sroa.0.0.insert.ext.i816 = and i128 %shr.i827, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i816 v_shr_i827 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i816 v_shr_i827;
assume eq v_y_sroa_0_0_insert_ext_i816 v_shr_i827 && true;
(*   %add.i1714 = add i128 %mul.i1502, %mul.i1392 *)
add v_add_i1714 v_mul_i1502 v_mul_i1392;
(*   %add.i1604 = add i128 %add.i1714, %mul.i1612 *)
add v_add_i1604 v_add_i1714 v_mul_i1612;
(*   %add.i1494 = add i128 %add.i1604, %mul.i1722 *)
add v_add_i1494 v_add_i1604 v_mul_i1722;
(*   %add.i1384 = add i128 %add.i1494, %mul.i1818 *)
add v_add_i1384 v_add_i1494 v_mul_i1818;
(*   %add.i817 = add i128 %add.i1384, %y.sroa.0.0.insert.ext.i816 *)
add v_add_i817 v_add_i1384 v_y_sroa_0_0_insert_ext_i816;
(*   %retval.sroa.0.0.extract.trunc.i818 = trunc i128 %add.i817 to i64 *)
(* == modified == *)
(* vpc v_retval_sroa_0_0_extract_trunc_i818@uint64 v_add_i817@uint128; *)
cast v_retval_sroa_0_0_extract_trunc_i818@uint64 v_add_i817@uint128;
(*   %and348 = and i64 %retval.sroa.0.0.extract.trunc.i818, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and348 v_retval_sroa_0_0_extract_trunc_i818 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i807 = lshr i128 %add.i817, 51 *)
(* You may need to modify here *)
split v_shr_i807 tmp_to_be_used v_add_i817 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and348;
assume tmp_v = v_and348 && true;
(*   %retval.sroa.0.0.extract.trunc.i808 = trunc i128 %shr.i807 to i64 *)
vpc v_retval_sroa_0_0_extract_trunc_i808@uint64 v_shr_i807@uint128;
(*   %mul354 = mul i64 %retval.sroa.0.0.extract.trunc.i808, 19 *)
mul v_mul354 v_retval_sroa_0_0_extract_trunc_i808 19@uint64;
(*   %add = add i64 %mul354, %and *)
add v_add v_mul354 v_and;
(*   %and355 = and i64 %add, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and355 v_add 0x7FFFFFFFFFFFF@uint64;
(*   %shr = lshr i64 %add, 51 *)
(* You may need to modify here *)
split v_shr tmp_to_be_used v_add 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and355;
assume tmp_v = v_and355 && true;
(*   %add356 = add nuw nsw i64 %shr, %and306 *)
add v_add356 v_shr v_and306;
(*   %retval.sroa.0.0.extract.trunc.i800 = trunc i128 %add.i992 to i64 *)
(* == modified == *)
(* vpc v_retval_sroa_0_0_extract_trunc_i800@uint64 v_add_i992@uint128; *)
cast v_retval_sroa_0_0_extract_trunc_i800@uint64 v_add_i992@uint128;
(*   %and365 = and i64 %retval.sroa.0.0.extract.trunc.i800, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and365 v_retval_sroa_0_0_extract_trunc_i800 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i791 = lshr i128 %add.i992, 51 *)
(* You may need to modify here *)
split v_shr_i791 tmp_to_be_used v_add_i992 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and365;
assume tmp_v = v_and365 && true;
(*   %y.sroa.0.0.insert.ext.i780 = and i128 %shr.i791, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i780 v_shr_i791 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i780 v_shr_i791;
assume eq v_y_sroa_0_0_insert_ext_i780 v_shr_i791 && true;
(*   %add.i1190 = add i128 %add.i1300, %mul.i978 *)
add v_add_i1190 v_add_i1300 v_mul_i978;
(*   %add.i1080 = add i128 %add.i1190, %mul.i1088 *)
add v_add_i1080 v_add_i1190 v_mul_i1088;
(*   %add.i970 = add i128 %add.i1080, %mul.i1198 *)
add v_add_i970 v_add_i1080 v_mul_i1198;
(*   %add.i781 = add i128 %add.i970, %y.sroa.0.0.insert.ext.i780 *)
add v_add_i781 v_add_i970 v_y_sroa_0_0_insert_ext_i780;
(*   %retval.sroa.0.0.extract.trunc.i782 = trunc i128 %add.i781 to i64 *)
(* == modified == *)
(* vpc v_retval_sroa_0_0_extract_trunc_i782@uint64 v_add_i781@uint128; *)
cast v_retval_sroa_0_0_extract_trunc_i782@uint64 v_add_i781@uint128;
(*   %and379 = and i64 %retval.sroa.0.0.extract.trunc.i782, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and379 v_retval_sroa_0_0_extract_trunc_i782 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i771 = lshr i128 %add.i781, 51 *)
(* You may need to modify here *)
split v_shr_i771 tmp_to_be_used v_add_i781 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and379;
assume tmp_v = v_and379 && true;
(*   %y.sroa.0.0.insert.ext.i760 = and i128 %shr.i771, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i760 v_shr_i771 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i760 v_shr_i771;
assume eq v_y_sroa_0_0_insert_ext_i760 v_shr_i771 && true;
(*   %add.i1278 = add i128 %mul.i1286, %mul.i1176 *)
add v_add_i1278 v_mul_i1286 v_mul_i1176;
(*   %add.i1168 = add i128 %add.i1278, %mul.i1354 *)
add v_add_i1168 v_add_i1278 v_mul_i1354;
(*   %add.i1058 = add i128 %add.i1168, %mul.i956 *)
add v_add_i1058 v_add_i1168 v_mul_i956;
(*   %add.i948 = add i128 %add.i1058, %mul.i1066 *)
add v_add_i948 v_add_i1058 v_mul_i1066;
(*   %add.i761 = add i128 %add.i948, %y.sroa.0.0.insert.ext.i760 *)
add v_add_i761 v_add_i948 v_y_sroa_0_0_insert_ext_i760;
(*   %shr.i751 = lshr i128 %add.i761, 51 *)
(* You may need to modify here *)
split v_shr_i751 tmp_to_be_used v_add_i761 51;
(*   %y.sroa.0.0.insert.ext.i740 = and i128 %shr.i751, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i740 v_shr_i751 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i740 v_shr_i751;
assume eq v_y_sroa_0_0_insert_ext_i740 v_shr_i751 && true;
(*   %add.i1256 = add i128 %mul.i1154, %mul.i1044 *)
add v_add_i1256 v_mul_i1154 v_mul_i1044;
(*   %add.i1146 = add i128 %add.i1256, %mul.i1264 *)
add v_add_i1146 v_add_i1256 v_mul_i1264;
(*   %add.i1036 = add i128 %add.i1146, %mul.i1346 *)
add v_add_i1036 v_add_i1146 v_mul_i1346;
(*   %add.i926 = add i128 %add.i1036, %mul.i934 *)
add v_add_i926 v_add_i1036 v_mul_i934;
(*   %add.i741 = add i128 %add.i926, %y.sroa.0.0.insert.ext.i740 *)
add v_add_i741 v_add_i926 v_y_sroa_0_0_insert_ext_i740;
(*   %24 = insertelement <2 x i128> undef, i128 %add.i761, i32 0 *)
mov v24_0 v_add_i761;
nondet undef_1@uint128;
mov v24_1 undef_1;
(*   %25 = insertelement <2 x i128> %24, i128 %add.i741, i32 1 *)
mov v25_0 v24_0;
mov v25_1 v_add_i741;
(*   %26 = trunc <2 x i128> %25 to <2 x i64> *)
(* == modified == *)
(* vpc v26_0@uint64 v25_0@uint128; *)
(* vpc v26_1@uint64 v25_1@uint128; *)
cast v26_0@uint64 v25_0@uint128;
cast v26_1@uint64 v25_1@uint128;
(*   %27 = and <2 x i64> %26, <i64 2251799813685247, i64 2251799813685247> *)
(* You may need to modify here *)
and uint64 v27_0 v26_0 0x7FFFFFFFFFFFF@uint64;
and uint64 v27_1 v26_1 0x7FFFFFFFFFFFF@uint64;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v27_0;
assume tmp_v = v27_0 && true;
(*   %shr.i731 = lshr i128 %add.i741, 51 *)
(* You may need to modify here *)
split v_shr_i731 tmp_to_be_used v_add_i741 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v27_1;
assume tmp_v = v27_1 && true;
(*   %y.sroa.0.0.insert.ext.i = and i128 %shr.i731, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i v_shr_i731 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i v_shr_i731;
assume eq v_y_sroa_0_0_insert_ext_i v_shr_i731 && true;
(*   %add.i1234 = add i128 %mul.i1022, %mul.i912 *)
add v_add_i1234 v_mul_i1022 v_mul_i912;
(*   %add.i1124 = add i128 %add.i1234, %mul.i1132 *)
add v_add_i1124 v_add_i1234 v_mul_i1132;
(*   %add.i1014 = add i128 %add.i1124, %mul.i1242 *)
add v_add_i1014 v_add_i1124 v_mul_i1242;
(*   %add.i904 = add i128 %add.i1014, %mul.i1338 *)
add v_add_i904 v_add_i1014 v_mul_i1338;
(*   %add.i = add i128 %add.i904, %y.sroa.0.0.insert.ext.i *)
add v_add_i v_add_i904 v_y_sroa_0_0_insert_ext_i;
(*   %retval.sroa.0.0.extract.trunc.i722 = trunc i128 %add.i to i64 *)
(* == modified == *)
(* vpc v_retval_sroa_0_0_extract_trunc_i722@uint64 v_add_i@uint128; *)
cast v_retval_sroa_0_0_extract_trunc_i722@uint64 v_add_i@uint128;
(*   %and421 = and i64 %retval.sroa.0.0.extract.trunc.i722, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and421 v_retval_sroa_0_0_extract_trunc_i722 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i = lshr i128 %add.i, 51 *)
(* You may need to modify here *)
split v_shr_i tmp_to_be_used v_add_i 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and421;
assume tmp_v = v_and421 && true;
(*   %retval.sroa.0.0.extract.trunc.i714 = trunc i128 %shr.i to i64 *)
vpc v_retval_sroa_0_0_extract_trunc_i714@uint64 v_shr_i@uint128;
(*   %mul427 = mul i64 %retval.sroa.0.0.extract.trunc.i714, 19 *)
mul v_mul427 v_retval_sroa_0_0_extract_trunc_i714 19@uint64;
(*   %add428 = add i64 %mul427, %and365 *)
add v_add428 v_mul427 v_and365;
(*   %and429 = and i64 %add428, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and429 v_add428 0x7FFFFFFFFFFFF@uint64;
(*   %shr430 = lshr i64 %add428, 51 *)
(* You may need to modify here *)
split v_shr430 tmp_to_be_used v_add428 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and429;
assume tmp_v = v_and429 && true;
(*   %add431 = add nuw nsw i64 %shr430, %and379 *)
add v_add431 v_shr430 v_and379;
(*   store i64 %and355, i64* %out, align 8, !tbaa !3 *)
mov mem2_0 v_and355;
(*   %arrayidx433 = getelementptr inbounds i64, i64* %out, i64 1 *)
(*   store i64 %add356, i64* %arrayidx433, align 8, !tbaa !3 *)
mov mem2_8 v_add356;
(*   %arrayidx434 = getelementptr inbounds i64, i64* %out, i64 2 *)
(*   %28 = bitcast i64* %arrayidx434 to <2 x i64>* *)
(*   store <2 x i64> %23, <2 x i64>* %28, align 8, !tbaa !3 *)
mov mem2_16 v23_0;
mov mem2_24 v23_1;
(*   %arrayidx436 = getelementptr inbounds i64, i64* %out, i64 4 *)
(*   store i64 %and348, i64* %arrayidx436, align 8, !tbaa !3 *)
mov mem2_32 v_and348;
(*   %arrayidx437 = getelementptr inbounds i64, i64* %out, i64 5 *)
(*   store i64 %and429, i64* %arrayidx437, align 8, !tbaa !3 *)
mov mem2_40 v_and429;
(*   %arrayidx438 = getelementptr inbounds i64, i64* %out, i64 6 *)
(*   store i64 %add431, i64* %arrayidx438, align 8, !tbaa !3 *)
mov mem2_48 v_add431;
(*   %arrayidx439 = getelementptr inbounds i64, i64* %out, i64 7 *)
(*   %29 = bitcast i64* %arrayidx439 to <2 x i64>* *)
(*   store <2 x i64> %27, <2 x i64>* %29, align 8, !tbaa !3 *)
mov mem2_56 v27_0;
mov mem2_64 v27_1;
(*   %arrayidx441 = getelementptr inbounds i64, i64* %out, i64 9 *)
(*   store i64 %and421, i64* %arrayidx441, align 8, !tbaa !3 *)
mov mem2_72 v_and421;
(*   ret void *)


{
  and [
	(limbs 51 [mem2_0, mem2_8, mem2_16, mem2_24, mem2_32])
  	=
  	(
  	  (limbs 51 [mem0_0, mem0_8, mem0_16, mem0_24, mem0_32])
      *
      (limbs 51 [mem1_0, mem1_8, mem1_16, mem1_24, mem1_32])
  	)
  	(mod (2**255 - 19)),
	(limbs 51 [mem2_40, mem2_48, mem2_56, mem2_64, mem2_72])
  	=
  	(
  	  (limbs 51 [mem0_40, mem0_48, mem0_56, mem0_64, mem0_72])
      *
      (limbs 51 [mem1_40, mem1_48, mem1_56, mem1_64, mem1_72])
  	)
  	(mod (2**255 - 19))
  ]
  &&
  and [
    mem2_0 <=u (1 * (2**51-1))@64,
	mem2_8 <=u ((2**51-1) + 8192)@64,
  	mem2_16 <=u (1 * (2**51-1))@64,
  	mem2_24 <=u (1 * (2**51-1))@64,
  	mem2_32 <=u (1 * (2**51-1))@64,
    mem2_40 <=u (1 * (2**51-1))@64,
	mem2_48 <=u ((2**51-1) + 8192)@64,
  	mem2_56 <=u (1 * (2**51-1))@64,
  	mem2_64 <=u (1 * (2**51-1))@64,
  	mem2_72 <=u (1 * (2**51-1))@64
  ]
}


(* ========== fmul20 ========== *)
proc fmul20 (uint64 mem0_0, uint64 mem0_8, uint64 mem0_16, uint64 mem0_24, uint64 mem0_32, uint64 mem0_40, uint64 mem0_48, uint64 mem0_56, uint64 mem0_64, uint64 mem0_72, 
			 uint64 mem1_0, uint64 mem1_8, uint64 mem1_16, uint64 mem1_24, uint64 mem1_32, uint64 mem1_40, uint64 mem1_48, uint64 mem1_56, uint64 mem1_64, uint64 mem1_72;
			 uint64 mem2_0, uint64 mem2_8, uint64 mem2_16, uint64 mem2_24, uint64 mem2_32, uint64 mem2_40, uint64 mem2_48, uint64 mem2_56, uint64 mem2_64, uint64 mem2_72) =

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

(* ======== fmul20 END ======== *)


(* ======== fsqr20 ======== *)

proc fsqr20 (uint64 mem0_0, uint64 mem0_8, uint64 mem0_16, uint64 mem0_24, uint64 mem0_32, uint64 mem0_40, uint64 mem0_48, uint64 mem0_56, uint64 mem0_64, uint64 mem0_72;
		   	 uint64 mem1_0, uint64 mem1_8, uint64 mem1_16, uint64 mem1_24, uint64 mem1_32, uint64 mem1_40, uint64 mem1_48, uint64 mem1_56, uint64 mem1_64, uint64 mem1_72) =

(*   %0 = load i64, i64* %f, align 8, !tbaa !3 *)
mov v0 mem0_0;
(*   %arrayidx1 = getelementptr inbounds i64, i64* %f, i64 1 *)
(*   %1 = load i64, i64* %arrayidx1, align 8, !tbaa !3 *)
mov v1 mem0_8;
(*   %arrayidx2 = getelementptr inbounds i64, i64* %f, i64 2 *)
(*   %2 = load i64, i64* %arrayidx2, align 8, !tbaa !3 *)
mov v2 mem0_16;
(*   %arrayidx3 = getelementptr inbounds i64, i64* %f, i64 3 *)
(*   %3 = load i64, i64* %arrayidx3, align 8, !tbaa !3 *)
mov v3 mem0_24;
(*   %arrayidx4 = getelementptr inbounds i64, i64* %f, i64 4 *)
(*   %4 = load i64, i64* %arrayidx4, align 8, !tbaa !3 *)
mov v4 mem0_32;
(*   %arrayidx5 = getelementptr inbounds i64, i64* %f, i64 5 *)
(*   %5 = load i64, i64* %arrayidx5, align 8, !tbaa !3 *)
mov v5 mem0_40;
(*   %arrayidx6 = getelementptr inbounds i64, i64* %f, i64 6 *)
(*   %6 = load i64, i64* %arrayidx6, align 8, !tbaa !3 *)
mov v6 mem0_48;
(*   %arrayidx7 = getelementptr inbounds i64, i64* %f, i64 7 *)
(*   %7 = load i64, i64* %arrayidx7, align 8, !tbaa !3 *)
mov v7 mem0_56;
(*   %arrayidx8 = getelementptr inbounds i64, i64* %f, i64 8 *)
(*   %8 = load i64, i64* %arrayidx8, align 8, !tbaa !3 *)
mov v8 mem0_64;
(*   %arrayidx9 = getelementptr inbounds i64, i64* %f, i64 9 *)
(*   %9 = load i64, i64* %arrayidx9, align 8, !tbaa !3 *)
mov v9 mem0_72;
(*   %mul = shl i64 %0, 1 *)
shl v_mul v0 1;
(*   %mul10 = shl i64 %1, 1 *)
shl v_mul10 v1 1;
(*   %mul11 = mul i64 %2, 38 *)
mul v_mul11 v2 38@uint64;
(*   %mul12 = mul i64 %3, 19 *)
mul v_mul12 v3 19@uint64;
(*   %mul13 = mul i64 %4, 19 *)
mul v_mul13 v4 19@uint64;
(*   %mul14 = mul i64 %4, 38 *)
mul v_mul14 v4 38@uint64;
(*   %conv.i = zext i64 %0 to i128 *)
cast v_conv_i@uint128 v0@uint64;
(*   %mul.i = mul nuw i128 %conv.i, %conv.i *)
mul v_mul_i v_conv_i v_conv_i;
(*   %conv.i1189 = zext i64 %mul14 to i128 *)
cast v_conv_i1189@uint128 v_mul14@uint64;
(*   %conv1.i1190 = zext i64 %1 to i128 *)
cast v_conv1_i1190@uint128 v1@uint64;
(*   %mul.i1191 = mul nuw i128 %conv.i1189, %conv1.i1190 *)
mul v_mul_i1191 v_conv_i1189 v_conv1_i1190;
(*   %conv.i1167 = zext i64 %mul11 to i128 *)
cast v_conv_i1167@uint128 v_mul11@uint64;
(*   %conv1.i1168 = zext i64 %3 to i128 *)
cast v_conv1_i1168@uint128 v3@uint64;
(*   %mul.i1169 = mul nuw i128 %conv1.i1168, %conv.i1167 *)
mul v_mul_i1169 v_conv1_i1168 v_conv_i1167;
(*   %add.i1183 = add i128 %mul.i1169, %mul.i *)
add v_add_i1183 v_mul_i1169 v_mul_i;
(*   %add.i1161 = add i128 %add.i1183, %mul.i1191 *)
add v_add_i1161 v_add_i1183 v_mul_i1191;
(*   %conv.i1145 = zext i64 %mul to i128 *)
cast v_conv_i1145@uint128 v_mul@uint64;
(*   %mul.i1147 = mul nuw i128 %conv1.i1190, %conv.i1145 *)
mul v_mul_i1147 v_conv1_i1190 v_conv_i1145;
(*   %conv1.i1138 = zext i64 %2 to i128 *)
cast v_conv1_i1138@uint128 v2@uint64;
(*   %mul.i1139 = mul nuw i128 %conv.i1189, %conv1.i1138 *)
mul v_mul_i1139 v_conv_i1189 v_conv1_i1138;
(*   %conv.i1115 = zext i64 %mul12 to i128 *)
cast v_conv_i1115@uint128 v_mul12@uint64;
(*   %mul.i1117 = mul nuw i128 %conv.i1115, %conv1.i1168 *)
mul v_mul_i1117 v_conv_i1115 v_conv1_i1168;
(*   %mul.i1095 = mul nuw i128 %conv1.i1138, %conv.i1145 *)
mul v_mul_i1095 v_conv1_i1138 v_conv_i1145;
(*   %mul.i1087 = mul nuw i128 %conv1.i1190, %conv1.i1190 *)
mul v_mul_i1087 v_conv1_i1190 v_conv1_i1190;
(*   %add.i1079 = add i128 %mul.i1095, %mul.i1087 *)
add v_add_i1079 v_mul_i1095 v_mul_i1087;
(*   %mul.i1065 = mul nuw i128 %conv.i1189, %conv1.i1168 *)
mul v_mul_i1065 v_conv_i1189 v_conv1_i1168;
(*   %add.i1057 = add i128 %add.i1079, %mul.i1065 *)
add v_add_i1057 v_add_i1079 v_mul_i1065;
(*   %mul.i1043 = mul nuw i128 %conv1.i1168, %conv.i1145 *)
mul v_mul_i1043 v_conv1_i1168 v_conv_i1145;
(*   %conv.i1033 = zext i64 %mul10 to i128 *)
cast v_conv_i1033@uint128 v_mul10@uint64;
(*   %mul.i1035 = mul nuw i128 %conv1.i1138, %conv.i1033 *)
mul v_mul_i1035 v_conv1_i1138 v_conv_i1033;
(*   %add.i1027 = add i128 %mul.i1043, %mul.i1035 *)
add v_add_i1027 v_mul_i1043 v_mul_i1035;
(*   %conv.i1011 = zext i64 %4 to i128 *)
cast v_conv_i1011@uint128 v4@uint64;
(*   %conv1.i1012 = zext i64 %mul13 to i128 *)
cast v_conv1_i1012@uint128 v_mul13@uint64;
(*   %mul.i1013 = mul nuw i128 %conv1.i1012, %conv.i1011 *)
mul v_mul_i1013 v_conv1_i1012 v_conv_i1011;
(*   %add.i1005 = add i128 %add.i1027, %mul.i1013 *)
add v_add_i1005 v_add_i1027 v_mul_i1013;
(*   %mul.i991 = mul nuw i128 %conv.i1011, %conv.i1145 *)
mul v_mul_i991 v_conv_i1011 v_conv_i1145;
(*   %mul.i983 = mul nuw i128 %conv1.i1168, %conv.i1033 *)
mul v_mul_i983 v_conv1_i1168 v_conv_i1033;
(*   %mul.i961 = mul nuw i128 %conv1.i1138, %conv1.i1138 *)
mul v_mul_i961 v_conv1_i1138 v_conv1_i1138;
(*   %mul83 = shl i64 %5, 1 *)
shl v_mul83 v5 1;
(*   %mul84 = shl i64 %6, 1 *)
shl v_mul84 v6 1;
(*   %mul85 = mul i64 %7, 38 *)
mul v_mul85 v7 38@uint64;
(*   %mul86 = mul i64 %8, 19 *)
mul v_mul86 v8 19@uint64;
(*   %mul87 = mul i64 %9, 19 *)
mul v_mul87 v9 19@uint64;
(*   %mul88 = mul i64 %9, 38 *)
mul v_mul88 v9 38@uint64;
(*   %conv.i937 = zext i64 %5 to i128 *)
cast v_conv_i937@uint128 v5@uint64;
(*   %mul.i939 = mul nuw i128 %conv.i937, %conv.i937 *)
mul v_mul_i939 v_conv_i937 v_conv_i937;
(*   %conv.i929 = zext i64 %mul88 to i128 *)
cast v_conv_i929@uint128 v_mul88@uint64;
(*   %conv1.i930 = zext i64 %6 to i128 *)
cast v_conv1_i930@uint128 v6@uint64;
(*   %mul.i931 = mul nuw i128 %conv.i929, %conv1.i930 *)
mul v_mul_i931 v_conv_i929 v_conv1_i930;
(*   %conv.i907 = zext i64 %mul85 to i128 *)
cast v_conv_i907@uint128 v_mul85@uint64;
(*   %conv1.i908 = zext i64 %8 to i128 *)
cast v_conv1_i908@uint128 v8@uint64;
(*   %mul.i909 = mul nuw i128 %conv1.i908, %conv.i907 *)
mul v_mul_i909 v_conv1_i908 v_conv_i907;
(*   %add.i923 = add i128 %mul.i909, %mul.i939 *)
add v_add_i923 v_mul_i909 v_mul_i939;
(*   %add.i901 = add i128 %add.i923, %mul.i931 *)
add v_add_i901 v_add_i923 v_mul_i931;
(*   %conv.i885 = zext i64 %mul83 to i128 *)
cast v_conv_i885@uint128 v_mul83@uint64;
(*   %mul.i887 = mul nuw i128 %conv1.i930, %conv.i885 *)
mul v_mul_i887 v_conv1_i930 v_conv_i885;
(*   %conv1.i878 = zext i64 %7 to i128 *)
cast v_conv1_i878@uint128 v7@uint64;
(*   %mul.i879 = mul nuw i128 %conv.i929, %conv1.i878 *)
mul v_mul_i879 v_conv_i929 v_conv1_i878;
(*   %conv.i855 = zext i64 %mul86 to i128 *)
cast v_conv_i855@uint128 v_mul86@uint64;
(*   %mul.i857 = mul nuw i128 %conv.i855, %conv1.i908 *)
mul v_mul_i857 v_conv_i855 v_conv1_i908;
(*   %mul.i835 = mul nuw i128 %conv1.i878, %conv.i885 *)
mul v_mul_i835 v_conv1_i878 v_conv_i885;
(*   %mul.i827 = mul nuw i128 %conv1.i930, %conv1.i930 *)
mul v_mul_i827 v_conv1_i930 v_conv1_i930;
(*   %add.i819 = add i128 %mul.i835, %mul.i827 *)
add v_add_i819 v_mul_i835 v_mul_i827;
(*   %mul.i805 = mul nuw i128 %conv.i929, %conv1.i908 *)
mul v_mul_i805 v_conv_i929 v_conv1_i908;
(*   %add.i797 = add i128 %add.i819, %mul.i805 *)
add v_add_i797 v_add_i819 v_mul_i805;
(*   %mul.i783 = mul nuw i128 %conv1.i908, %conv.i885 *)
mul v_mul_i783 v_conv1_i908 v_conv_i885;
(*   %conv.i773 = zext i64 %mul84 to i128 *)
cast v_conv_i773@uint128 v_mul84@uint64;
(*   %mul.i775 = mul nuw i128 %conv1.i878, %conv.i773 *)
mul v_mul_i775 v_conv1_i878 v_conv_i773;
(*   %add.i767 = add i128 %mul.i783, %mul.i775 *)
add v_add_i767 v_mul_i783 v_mul_i775;
(*   %conv.i751 = zext i64 %9 to i128 *)
cast v_conv_i751@uint128 v9@uint64;
(*   %conv1.i752 = zext i64 %mul87 to i128 *)
cast v_conv1_i752@uint128 v_mul87@uint64;
(*   %mul.i753 = mul nuw i128 %conv1.i752, %conv.i751 *)
mul v_mul_i753 v_conv1_i752 v_conv_i751;
(*   %add.i745 = add i128 %add.i767, %mul.i753 *)
add v_add_i745 v_add_i767 v_mul_i753;
(*   %mul.i731 = mul nuw i128 %conv.i751, %conv.i885 *)
mul v_mul_i731 v_conv_i751 v_conv_i885;
(*   %mul.i723 = mul nuw i128 %conv1.i908, %conv.i773 *)
mul v_mul_i723 v_conv1_i908 v_conv_i773;
(*   %mul.i701 = mul nuw i128 %conv1.i878, %conv1.i878 *)
mul v_mul_i701 v_conv1_i878 v_conv1_i878;
(*   %retval.sroa.0.0.extract.trunc.i685 = trunc i128 %add.i1161 to i64 *)
(* == modified == *)
(* vpc v_retval_sroa_0_0_extract_trunc_i685@uint64 v_add_i1161@uint128; *)
cast v_retval_sroa_0_0_extract_trunc_i685@uint64 v_add_i1161@uint128;
(*   %and = and i64 %retval.sroa.0.0.extract.trunc.i685, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and v_retval_sroa_0_0_extract_trunc_i685 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i676 = lshr i128 %add.i1161, 51 *)
(* You may need to modify here *)
split v_shr_i676 tmp_to_be_used v_add_i1161 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and;
assume tmp_v = v_and && true;
(*   %y.sroa.0.0.insert.ext.i665 = and i128 %shr.i676, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i665 v_shr_i676 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i665 v_shr_i676;
assume eq v_y_sroa_0_0_insert_ext_i665 v_shr_i676 && true;
(*   %add.i1131 = add i128 %mul.i1117, %mul.i1147 *)
add v_add_i1131 v_mul_i1117 v_mul_i1147;
(*   %add.i1109 = add i128 %add.i1131, %mul.i1139 *)
add v_add_i1109 v_add_i1131 v_mul_i1139;
(*   %add.i666 = add i128 %add.i1109, %y.sroa.0.0.insert.ext.i665 *)
add v_add_i666 v_add_i1109 v_y_sroa_0_0_insert_ext_i665;
(*   %retval.sroa.0.0.extract.trunc.i667 = trunc i128 %add.i666 to i64 *)
(* == modified == *)
(* vpc v_retval_sroa_0_0_extract_trunc_i667@uint64 v_add_i666@uint128; *)
cast v_retval_sroa_0_0_extract_trunc_i667@uint64 v_add_i666@uint128;
(*   %and180 = and i64 %retval.sroa.0.0.extract.trunc.i667, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and180 v_retval_sroa_0_0_extract_trunc_i667 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i656 = lshr i128 %add.i666, 51 *)
(* You may need to modify here *)
split v_shr_i656 tmp_to_be_used v_add_i666 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and180;
assume tmp_v = v_and180 && true;
(*   %y.sroa.0.0.insert.ext.i645 = and i128 %shr.i656, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i645 v_shr_i656 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i645 v_shr_i656;
assume eq v_y_sroa_0_0_insert_ext_i645 v_shr_i656 && true;
(*   %add.i646 = add i128 %add.i1057, %y.sroa.0.0.insert.ext.i645 *)
add v_add_i646 v_add_i1057 v_y_sroa_0_0_insert_ext_i645;
(*   %shr.i636 = lshr i128 %add.i646, 51 *)
(* You may need to modify here *)
split v_shr_i636 tmp_to_be_used v_add_i646 51;
(*   %y.sroa.0.0.insert.ext.i625 = and i128 %shr.i636, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i625 v_shr_i636 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i625 v_shr_i636;
assume eq v_y_sroa_0_0_insert_ext_i625 v_shr_i636 && true;
(*   %add.i626 = add i128 %add.i1005, %y.sroa.0.0.insert.ext.i625 *)
add v_add_i626 v_add_i1005 v_y_sroa_0_0_insert_ext_i625;
(*   %10 = insertelement <2 x i128> undef, i128 %add.i646, i32 0 *)
mov v10_0 v_add_i646;
nondet undef_1@uint128;
mov v10_1 undef_1;
(*   %11 = insertelement <2 x i128> %10, i128 %add.i626, i32 1 *)
mov v11_0 v10_0;
mov v11_1 v_add_i626;
(*   %12 = trunc <2 x i128> %11 to <2 x i64> *)
(* == modified == *)
(* vpc v12_0@uint64 v11_0@uint128; *)
(* vpc v12_1@uint64 v11_1@uint128; *)
cast v12_0@uint64 v11_0@uint128;
cast v12_1@uint64 v11_1@uint128;
(*   %13 = and <2 x i64> %12, <i64 2251799813685247, i64 2251799813685247> *)
(* You may need to modify here *)
and uint64 v13_0 v12_0 0x7FFFFFFFFFFFF@uint64;
and uint64 v13_1 v12_1 0x7FFFFFFFFFFFF@uint64;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v13_0;
assume tmp_v = v13_0 && true;
(*   %shr.i616 = lshr i128 %add.i626, 51 *)
(* You may need to modify here *)
split v_shr_i616 tmp_to_be_used v_add_i626 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v13_1;
assume tmp_v = v13_1 && true;
(*   %y.sroa.0.0.insert.ext.i605 = and i128 %shr.i616, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i605 v_shr_i616 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i605 v_shr_i616;
assume eq v_y_sroa_0_0_insert_ext_i605 v_shr_i616 && true;
(*   %add.i975 = add i128 %mul.i983, %mul.i961 *)
add v_add_i975 v_mul_i983 v_mul_i961;
(*   %add.i953 = add i128 %add.i975, %mul.i991 *)
add v_add_i953 v_add_i975 v_mul_i991;
(*   %add.i606 = add i128 %add.i953, %y.sroa.0.0.insert.ext.i605 *)
add v_add_i606 v_add_i953 v_y_sroa_0_0_insert_ext_i605;
(*   %retval.sroa.0.0.extract.trunc.i607 = trunc i128 %add.i606 to i64 *)
(* == modified == *)
(* vpc v_retval_sroa_0_0_extract_trunc_i607@uint64 v_add_i606@uint128; *)
cast v_retval_sroa_0_0_extract_trunc_i607@uint64 v_add_i606@uint128;
(*   %and222 = and i64 %retval.sroa.0.0.extract.trunc.i607, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and222 v_retval_sroa_0_0_extract_trunc_i607 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i596 = lshr i128 %add.i606, 51 *)
(* You may need to modify here *)
split v_shr_i596 tmp_to_be_used v_add_i606 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and222;
assume tmp_v = v_and222 && true;
(*   %retval.sroa.0.0.extract.trunc.i597 = trunc i128 %shr.i596 to i64 *)
vpc v_retval_sroa_0_0_extract_trunc_i597@uint64 v_shr_i596@uint128;
(*   %mul228 = mul i64 %retval.sroa.0.0.extract.trunc.i597, 19 *)
mul v_mul228 v_retval_sroa_0_0_extract_trunc_i597 19@uint64;
(*   %add = add i64 %mul228, %and *)
add v_add v_mul228 v_and;
(*   %and229 = and i64 %add, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and229 v_add 0x7FFFFFFFFFFFF@uint64;
(*   %shr = lshr i64 %add, 51 *)
(* You may need to modify here *)
split v_shr tmp_to_be_used v_add 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and229;
assume tmp_v = v_and229 && true;
(*   %add230 = add nuw nsw i64 %shr, %and180 *)
add v_add230 v_shr v_and180;
(*   %retval.sroa.0.0.extract.trunc.i589 = trunc i128 %add.i901 to i64 *)
(* == modified == *)
(* vpc v_retval_sroa_0_0_extract_trunc_i589@uint64 v_add_i901@uint128; *)
cast v_retval_sroa_0_0_extract_trunc_i589@uint64 v_add_i901@uint128;
(*   %and239 = and i64 %retval.sroa.0.0.extract.trunc.i589, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and239 v_retval_sroa_0_0_extract_trunc_i589 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i580 = lshr i128 %add.i901, 51 *)
(* You may need to modify here *)
split v_shr_i580 tmp_to_be_used v_add_i901 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and239;
assume tmp_v = v_and239 && true;
(*   %y.sroa.0.0.insert.ext.i569 = and i128 %shr.i580, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i569 v_shr_i580 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i569 v_shr_i580;
assume eq v_y_sroa_0_0_insert_ext_i569 v_shr_i580 && true;
(*   %add.i871 = add i128 %mul.i857, %mul.i887 *)
add v_add_i871 v_mul_i857 v_mul_i887;
(*   %add.i849 = add i128 %add.i871, %mul.i879 *)
add v_add_i849 v_add_i871 v_mul_i879;
(*   %add.i570 = add i128 %add.i849, %y.sroa.0.0.insert.ext.i569 *)
add v_add_i570 v_add_i849 v_y_sroa_0_0_insert_ext_i569;
(*   %retval.sroa.0.0.extract.trunc.i571 = trunc i128 %add.i570 to i64 *)
(* == modified == *)
(* vpc v_retval_sroa_0_0_extract_trunc_i571@uint64 v_add_i570@uint128; *)
cast v_retval_sroa_0_0_extract_trunc_i571@uint64 v_add_i570@uint128;
(*   %and253 = and i64 %retval.sroa.0.0.extract.trunc.i571, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and253 v_retval_sroa_0_0_extract_trunc_i571 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i560 = lshr i128 %add.i570, 51 *)
(* You may need to modify here *)
split v_shr_i560 tmp_to_be_used v_add_i570 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and253;
assume tmp_v = v_and253 && true;
(*   %y.sroa.0.0.insert.ext.i549 = and i128 %shr.i560, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i549 v_shr_i560 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i549 v_shr_i560;
assume eq v_y_sroa_0_0_insert_ext_i549 v_shr_i560 && true;
(*   %add.i550 = add i128 %add.i797, %y.sroa.0.0.insert.ext.i549 *)
add v_add_i550 v_add_i797 v_y_sroa_0_0_insert_ext_i549;
(*   %shr.i540 = lshr i128 %add.i550, 51 *)
(* You may need to modify here *)
split v_shr_i540 tmp_to_be_used v_add_i550 51;
(*   %y.sroa.0.0.insert.ext.i529 = and i128 %shr.i540, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i529 v_shr_i540 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i529 v_shr_i540;
assume eq v_y_sroa_0_0_insert_ext_i529 v_shr_i540 && true;
(*   %add.i530 = add i128 %add.i745, %y.sroa.0.0.insert.ext.i529 *)
add v_add_i530 v_add_i745 v_y_sroa_0_0_insert_ext_i529;
(*   %14 = insertelement <2 x i128> undef, i128 %add.i550, i32 0 *)
mov v14_0 v_add_i550;
nondet undef_1@uint128;
mov v14_1 undef_1;
(*   %15 = insertelement <2 x i128> %14, i128 %add.i530, i32 1 *)
mov v15_0 v14_0;
mov v15_1 v_add_i530;
(*   %16 = trunc <2 x i128> %15 to <2 x i64> *)
(* == modified == *)
(* vpc v16_0@uint64 v15_0@uint128; *)
(* vpc v16_1@uint64 v15_1@uint128; *)
cast v16_0@uint64 v15_0@uint128;
cast v16_1@uint64 v15_1@uint128;
(*   %17 = and <2 x i64> %16, <i64 2251799813685247, i64 2251799813685247> *)
(* You may need to modify here *)
and uint64 v17_0 v16_0 0x7FFFFFFFFFFFF@uint64;
and uint64 v17_1 v16_1 0x7FFFFFFFFFFFF@uint64;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v17_0;
assume tmp_v = v17_0 && true;
(*   %shr.i520 = lshr i128 %add.i530, 51 *)
(* You may need to modify here *)
split v_shr_i520 tmp_to_be_used v_add_i530 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v17_1;
assume tmp_v = v17_1 && true;
(*   %y.sroa.0.0.insert.ext.i = and i128 %shr.i520, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i v_shr_i520 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i v_shr_i520;
assume eq v_y_sroa_0_0_insert_ext_i v_shr_i520 && true;
(*   %add.i715 = add i128 %mul.i723, %mul.i701 *)
add v_add_i715 v_mul_i723 v_mul_i701;
(*   %add.i693 = add i128 %add.i715, %mul.i731 *)
add v_add_i693 v_add_i715 v_mul_i731;
(*   %add.i = add i128 %add.i693, %y.sroa.0.0.insert.ext.i *)
add v_add_i v_add_i693 v_y_sroa_0_0_insert_ext_i;
(*   %retval.sroa.0.0.extract.trunc.i511 = trunc i128 %add.i to i64 *)
(* == modified == *)
(* vpc v_retval_sroa_0_0_extract_trunc_i511@uint64 v_add_i@uint128; *)
cast v_retval_sroa_0_0_extract_trunc_i511@uint64 v_add_i@uint128;
(*   %and295 = and i64 %retval.sroa.0.0.extract.trunc.i511, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and295 v_retval_sroa_0_0_extract_trunc_i511 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i = lshr i128 %add.i, 51 *)
(* You may need to modify here *)
split v_shr_i tmp_to_be_used v_add_i 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and295;
assume tmp_v = v_and295 && true;
(*   %retval.sroa.0.0.extract.trunc.i503 = trunc i128 %shr.i to i64 *)
vpc v_retval_sroa_0_0_extract_trunc_i503@uint64 v_shr_i@uint128;
(*   %mul301 = mul i64 %retval.sroa.0.0.extract.trunc.i503, 19 *)
mul v_mul301 v_retval_sroa_0_0_extract_trunc_i503 19@uint64;
(*   %add302 = add i64 %mul301, %and239 *)
add v_add302 v_mul301 v_and239;
(*   %and303 = and i64 %add302, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and303 v_add302 0x7FFFFFFFFFFFF@uint64;
(*   %shr304 = lshr i64 %add302, 51 *)
(* You may need to modify here *)
split v_shr304 tmp_to_be_used v_add302 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and303;
assume tmp_v = v_and303 && true;
(*   %add305 = add nuw nsw i64 %shr304, %and253 *)
add v_add305 v_shr304 v_and253;
(*   store i64 %and229, i64* %out, align 8, !tbaa !3 *)
mov mem1_0 v_and229;
(*   %arrayidx307 = getelementptr inbounds i64, i64* %out, i64 1 *)
(*   store i64 %add230, i64* %arrayidx307, align 8, !tbaa !3 *)
mov mem1_8 v_add230;
(*   %arrayidx308 = getelementptr inbounds i64, i64* %out, i64 2 *)
(*   %18 = bitcast i64* %arrayidx308 to <2 x i64>* *)
(*   store <2 x i64> %13, <2 x i64>* %18, align 8, !tbaa !3 *)
mov mem1_16 v13_0;
mov mem1_24 v13_1;
(*   %arrayidx310 = getelementptr inbounds i64, i64* %out, i64 4 *)
(*   store i64 %and222, i64* %arrayidx310, align 8, !tbaa !3 *)
mov mem1_32 v_and222;
(*   %arrayidx311 = getelementptr inbounds i64, i64* %out, i64 5 *)
(*   store i64 %and303, i64* %arrayidx311, align 8, !tbaa !3 *)
mov mem1_40 v_and303;
(*   %arrayidx312 = getelementptr inbounds i64, i64* %out, i64 6 *)
(*   store i64 %add305, i64* %arrayidx312, align 8, !tbaa !3 *)
mov mem1_48 v_add305;
(*   %arrayidx313 = getelementptr inbounds i64, i64* %out, i64 7 *)
(*   %19 = bitcast i64* %arrayidx313 to <2 x i64>* *)
(*   store <2 x i64> %17, <2 x i64>* %19, align 8, !tbaa !3 *)
mov mem1_56 v17_0;
mov mem1_64 v17_1;
(*   %arrayidx315 = getelementptr inbounds i64, i64* %out, i64 9 *)
(*   store i64 %and295, i64* %arrayidx315, align 8, !tbaa !3 *)
mov mem1_72 v_and295;
(*   ret void *)

(* ======== fsqr20 END ======== *)


(* ======== main ======== *)
proc main (uint64 X1_0, uint64 X1_1, uint64 X1_2, uint64 X1_3, uint64 X1_4, uint64 Z1_0, uint64 Z1_1, uint64 Z1_2, uint64 Z1_3, uint64 Z1_4, uint64 X2_0, uint64 X2_1, uint64 X2_2, uint64 X2_3, uint64 X2_4, uint64 Z2_0, uint64 Z2_1, uint64 Z2_2, uint64 Z2_3, uint64 Z2_4, uint64 X3_0, uint64 X3_1, uint64 X3_2, uint64 X3_3, uint64 X3_4, uint64 Z3_0, uint64 Z3_1, uint64 Z3_2, uint64 Z3_3, uint64 Z3_4) = 
(*, uint128 v_x_sroa_0_0_insert_insert_i12_i, uint128 v_x_sroa_0_0_insert_insert_i30_i, uint128 v_x_sroa_0_0_insert_insert_i50_i, uint128 v_x_sroa_0_0_insert_insert_i70_i, uint128 v_x_sroa_0_0_insert_insert_i81_i *)
{
  true
  &&
  and [
  	(* state_inv_t h0 (get_x q) /\ state_inv_t h0 (get_z q) *)
    	X1_0 <=u (1 * (2**51-1))@64,
	X1_1 <=u ((2**51-1) + 8192)@64,
  	X1_2 <=u (1 * (2**51-1))@64,
  	X1_3 <=u (1 * (2**51-1))@64,
  	X1_4 <=u (1 * (2**51-1))@64,
    	Z1_0 <=u (1 * (2**51-1))@64,
	Z1_1 <=u ((2**51-1) + 8192)@64,
  	Z1_2 <=u (1 * (2**51-1))@64,
  	Z1_3 <=u (1 * (2**51-1))@64,
  	Z1_4 <=u (1 * (2**51-1))@64,
  	(* state_inv_t h0 (get_x nq) /\ state_inv_t h0 (get_z nq) *)
    	X2_0 <=u (1 * (2**51-1))@64,
	X2_1 <=u ((2**51-1) + 8192)@64,
  	X2_2 <=u (1 * (2**51-1))@64,
  	X2_3 <=u (1 * (2**51-1))@64,
  	X2_4 <=u (1 * (2**51-1))@64,
    	Z2_0 <=u (1 * (2**51-1))@64,
	Z2_1 <=u ((2**51-1) + 8192)@64,
  	Z2_2 <=u (1 * (2**51-1))@64,
  	Z2_3 <=u (1 * (2**51-1))@64,
  	Z2_4 <=u (1 * (2**51-1))@64,
  	(* state_inv_t h0 (get_x nq_p1) /\ state_inv_t h0 (get_z nq_p1) *)
    	X3_0 <=u (1 * (2**51-1))@64,
	X3_1 <=u ((2**51-1) + 8192)@64,
  	X3_2 <=u (1 * (2**51-1))@64,
  	X3_3 <=u (1 * (2**51-1))@64,
  	X3_4 <=u (1 * (2**51-1))@64,
    	Z3_0 <=u (1 * (2**51-1))@64,
	Z3_1 <=u ((2**51-1) + 8192)@64,
  	Z3_2 <=u (1 * (2**51-1))@64,
  	Z3_3 <=u (1 * (2**51-1))@64,
  	Z3_4 <=u (1 * (2**51-1))@64
  ]
}

mov mem1_0 X1_0;
mov mem1_8 X1_1;
mov mem1_16 X1_2;
mov mem1_24 X1_3;
mov mem1_32 X1_4;
mov mem1_40 Z1_0;
mov mem1_48 Z1_1;
mov mem1_56 Z1_2;
mov mem1_64 Z1_3;
mov mem1_72 Z1_4;

mov mem0_0 X2_0;
mov mem0_8 X2_1;
mov mem0_16 X2_2;
mov mem0_24 X2_3;
mov mem0_32 X2_4;
mov mem0_40 Z2_0;
mov mem0_48 Z2_1;
mov mem0_56 Z2_2;
mov mem0_64 Z2_3;
mov mem0_72 Z2_4;

mov mem0_80 X3_0;
mov mem0_88 X3_1;
mov mem0_96 X3_2;
mov mem0_104 X3_3;
mov mem0_112 X3_4;
mov mem0_120 Z3_0;
mov mem0_128 Z3_1;
mov mem0_136 Z3_2;
mov mem0_144 Z3_3;
mov mem0_152 Z3_4;



(*   %add.ptr = getelementptr inbounds i64, i64* %p01_tmp1, i64 10 *)
(*   %add.ptr1 = getelementptr inbounds i64, i64* %p01_tmp1, i64 20 *)
(*   %add.ptr2 = getelementptr inbounds i64, i64* %p01_tmp1, i64 5 *)
(*   %add.ptr3 = getelementptr inbounds i64, i64* %p01_tmp1, i64 15 *)
(*   %add.ptr4 = getelementptr inbounds i64, i64* %p01_tmp1, i64 25 *)
(*   %add.ptr5 = getelementptr inbounds i64, i64* %p01_tmp1, i64 30 *)
(*   %0 = bitcast i64* %p01_tmp1 to <2 x i64>* *)
(*   %1 = load <2 x i64>, <2 x i64>* %0, align 8, !tbaa !3 *)
mov v1_0 mem0_0;
mov v1_1 mem0_8;
(*   %2 = bitcast i64* %add.ptr2 to <2 x i64>* *)
(*   %3 = load <2 x i64>, <2 x i64>* %2, align 8, !tbaa !3 *)
mov v3_0 mem0_40;
mov v3_1 mem0_48;
(*   %arrayidx4.i = getelementptr inbounds i64, i64* %p01_tmp1, i64 2 *)
(*   %arrayidx5.i = getelementptr inbounds i64, i64* %p01_tmp1, i64 7 *)
(*   %4 = bitcast i64* %arrayidx4.i to <2 x i64>* *)
(*   %5 = load <2 x i64>, <2 x i64>* %4, align 8, !tbaa !3 *)
mov v5_0 mem0_16;
mov v5_1 mem0_24;
(*   %6 = bitcast i64* %arrayidx5.i to <2 x i64>* *)
(*   %7 = load <2 x i64>, <2 x i64>* %6, align 8, !tbaa !3 *)
mov v7_0 mem0_56;
mov v7_1 mem0_64;
(*   %arrayidx8.i = getelementptr inbounds i64, i64* %p01_tmp1, i64 4 *)
(*   %8 = load i64, i64* %arrayidx8.i, align 8, !tbaa !3 *)
mov v8 mem0_32;
(*   %arrayidx9.i = getelementptr inbounds i64, i64* %p01_tmp1, i64 9 *)
(*   %9 = load i64, i64* %arrayidx9.i, align 8, !tbaa !3 *)
mov v9 mem0_72;
(*   %10 = extractelement <2 x i64> %1, i32 0 *)
mov v10 v1_0;
(*   %11 = extractelement <2 x i64> %3, i32 0 *)
mov v11 v3_0;
(*   %add.i = add i64 %11, %10 *)
add v_add_i v11 v10;
(*   store i64 %add.i, i64* %add.ptr1, align 8, !tbaa !3 *)
mov mem0_160 v_add_i;
(*   %12 = extractelement <2 x i64> %1, i32 1 *)
mov v12 v1_1;
(*   %13 = extractelement <2 x i64> %3, i32 1 *)
mov v13 v3_1;
(*   %add11.i = add i64 %13, %12 *)
add v_add11_i v13 v12;
(*   %arrayidx12.i = getelementptr inbounds i64, i64* %p01_tmp1, i64 21 *)
(*   store i64 %add11.i, i64* %arrayidx12.i, align 8, !tbaa !3 *)
mov mem0_168 v_add11_i;
(*   %14 = extractelement <2 x i64> %5, i32 0 *)
mov v14 v5_0;
(*   %15 = extractelement <2 x i64> %7, i32 0 *)
mov v15 v7_0;
(*   %add13.i = add i64 %15, %14 *)
add v_add13_i v15 v14;
(*   %arrayidx14.i = getelementptr inbounds i64, i64* %p01_tmp1, i64 22 *)
(*   store i64 %add13.i, i64* %arrayidx14.i, align 8, !tbaa !3 *)
mov mem0_176 v_add13_i;
(*   %16 = extractelement <2 x i64> %5, i32 1 *)
mov v16 v5_1;
(*   %17 = extractelement <2 x i64> %7, i32 1 *)
mov v17 v7_1;
(*   %add15.i = add i64 %17, %16 *)
add v_add15_i v17 v16;
(*   %arrayidx16.i = getelementptr inbounds i64, i64* %p01_tmp1, i64 23 *)
(*   store i64 %add15.i, i64* %arrayidx16.i, align 8, !tbaa !3 *)
mov mem0_184 v_add15_i;
(*   %add17.i = add i64 %9, %8 *)
add v_add17_i v9 v8;
(*   %arrayidx18.i = getelementptr inbounds i64, i64* %p01_tmp1, i64 24 *)
(*   store i64 %add17.i, i64* %arrayidx18.i, align 8, !tbaa !3 *)
mov mem0_192 v_add17_i;
(*   %18 = add <2 x i64> %1, <i64 18014398509481832, i64 18014398509481976> *)
add v18_0 v1_0 18014398509481832@uint64;
add v18_1 v1_1 18014398509481976@uint64;
(*   %19 = sub <2 x i64> %18, %3 *)
sub v19_0 v18_0 v3_0;
sub v19_1 v18_1 v3_1;
(*   %arrayidx13.i = getelementptr inbounds i64, i64* %p01_tmp1, i64 26 *)
(*   %20 = bitcast i64* %add.ptr4 to <2 x i64>* *)
(*   store <2 x i64> %19, <2 x i64>* %20, align 8, !tbaa !3 *)
mov mem0_200 v19_0;
mov mem0_208 v19_1;
(*   %arrayidx16.i107 = getelementptr inbounds i64, i64* %p01_tmp1, i64 27 *)
(*   %21 = add <2 x i64> %5, <i64 18014398509481976, i64 18014398509481976> *)
add v21_0 v5_0 18014398509481976@uint64;
add v21_1 v5_1 18014398509481976@uint64;
(*   %22 = sub <2 x i64> %21, %7 *)
sub v22_0 v21_0 v7_0;
sub v22_1 v21_1 v7_1;
(*   %23 = bitcast i64* %arrayidx16.i107 to <2 x i64>* *)
(*   store <2 x i64> %22, <2 x i64>* %23, align 8, !tbaa !3 *)
mov mem0_216 v22_0;
mov mem0_224 v22_1;
(*   %add20.i = add i64 %8, 18014398509481976 *)
add v_add20_i v8 18014398509481976@uint64;
(*   %sub21.i = sub i64 %add20.i, %9 *)
sub v_sub21_i v_add20_i v9;
(*   %arrayidx22.i = getelementptr inbounds i64, i64* %p01_tmp1, i64 29 *)
(*   store i64 %sub21.i, i64* %arrayidx22.i, align 8, !tbaa !3 *)
mov mem0_232 v_sub21_i;
(*   %add.ptr7 = getelementptr inbounds i64, i64* %p01_tmp1, i64 35 *)
(*   %24 = load i64, i64* %add.ptr, align 8, !tbaa !3 *)
mov v24 mem0_80;
(*   %25 = load i64, i64* %add.ptr3, align 8, !tbaa !3 *)
mov v25 mem0_120;
(*   %arrayidx2.i160 = getelementptr inbounds i64, i64* %p01_tmp1, i64 11 *)
(*   %arrayidx3.i161 = getelementptr inbounds i64, i64* %p01_tmp1, i64 16 *)
(*   %arrayidx4.i162 = getelementptr inbounds i64, i64* %p01_tmp1, i64 12 *)
(*   %26 = bitcast i64* %arrayidx2.i160 to <2 x i64>* *)
(*   %27 = load <2 x i64>, <2 x i64>* %26, align 8, !tbaa !3 *)
mov v27_0 mem0_88;
mov v27_1 mem0_96;
(*   %arrayidx5.i163 = getelementptr inbounds i64, i64* %p01_tmp1, i64 17 *)
(*   %28 = bitcast i64* %arrayidx3.i161 to <2 x i64>* *)
(*   %29 = load <2 x i64>, <2 x i64>* %28, align 8, !tbaa !3 *)
mov v29_0 mem0_128;
mov v29_1 mem0_136;
(*   %arrayidx6.i164 = getelementptr inbounds i64, i64* %p01_tmp1, i64 13 *)
(*   %arrayidx7.i165 = getelementptr inbounds i64, i64* %p01_tmp1, i64 18 *)
(*   %arrayidx8.i166 = getelementptr inbounds i64, i64* %p01_tmp1, i64 14 *)
(*   %30 = bitcast i64* %arrayidx6.i164 to <2 x i64>* *)
(*   %31 = load <2 x i64>, <2 x i64>* %30, align 8, !tbaa !3 *)
mov v31_0 mem0_104;
mov v31_1 mem0_112;
(*   %arrayidx9.i167 = getelementptr inbounds i64, i64* %p01_tmp1, i64 19 *)
(*   %32 = bitcast i64* %arrayidx7.i165 to <2 x i64>* *)
(*   %33 = load <2 x i64>, <2 x i64>* %32, align 8, !tbaa !3 *)
mov v33_0 mem0_144;
mov v33_1 mem0_152;
(*   %add.i168 = add i64 %25, %24 *)
add v_add_i168 v25 v24;
(*   store i64 %add.i168, i64* %add.ptr7, align 8, !tbaa !3 *)
mov mem0_280 v_add_i168;
(*   %34 = extractelement <2 x i64> %27, i32 0 *)
mov v34 v27_0;
(*   %35 = extractelement <2 x i64> %29, i32 0 *)
mov v35 v29_0;
(*   %add11.i169 = add i64 %35, %34 *)
add v_add11_i169 v35 v34;
(*   %arrayidx12.i170 = getelementptr inbounds i64, i64* %p01_tmp1, i64 36 *)
(*   store i64 %add11.i169, i64* %arrayidx12.i170, align 8, !tbaa !3 *)
mov mem0_288 v_add11_i169;
(*   %36 = extractelement <2 x i64> %27, i32 1 *)
mov v36 v27_1;
(*   %37 = extractelement <2 x i64> %29, i32 1 *)
mov v37 v29_1;
(*   %add13.i171 = add i64 %37, %36 *)
add v_add13_i171 v37 v36;
(*   %arrayidx14.i172 = getelementptr inbounds i64, i64* %p01_tmp1, i64 37 *)
(*   store i64 %add13.i171, i64* %arrayidx14.i172, align 8, !tbaa !3 *)
mov mem0_296 v_add13_i171;
(*   %38 = extractelement <2 x i64> %31, i32 0 *)
mov v38 v31_0;
(*   %39 = extractelement <2 x i64> %33, i32 0 *)
mov v39 v33_0;
(*   %add15.i173 = add i64 %39, %38 *)
add v_add15_i173 v39 v38;
(*   %arrayidx16.i174 = getelementptr inbounds i64, i64* %p01_tmp1, i64 38 *)
(*   store i64 %add15.i173, i64* %arrayidx16.i174, align 8, !tbaa !3 *)
mov mem0_304 v_add15_i173;
(*   %40 = extractelement <2 x i64> %31, i32 1 *)
mov v40 v31_1;
(*   %41 = extractelement <2 x i64> %33, i32 1 *)
mov v41 v33_1;
(*   %add17.i175 = add i64 %41, %40 *)
add v_add17_i175 v41 v40;
(*   %arrayidx18.i176 = getelementptr inbounds i64, i64* %p01_tmp1, i64 39 *)
(*   store i64 %add17.i175, i64* %arrayidx18.i176, align 8, !tbaa !3 *)
mov mem0_312 v_add17_i175;
(*   %add.i185 = add i64 %24, 18014398509481832 *)
add v_add_i185 v24 18014398509481832@uint64;
(*   %sub.i186 = sub i64 %add.i185, %25 *)
sub v_sub_i186 v_add_i185 v25;
(*   store i64 %sub.i186, i64* %add.ptr5, align 8, !tbaa !3 *)
mov mem0_240 v_sub_i186;
(*   %arrayidx13.i189 = getelementptr inbounds i64, i64* %p01_tmp1, i64 31 *)
(*   %42 = add <2 x i64> %27, <i64 18014398509481976, i64 18014398509481976> *)
add v42_0 v27_0 18014398509481976@uint64;
add v42_1 v27_1 18014398509481976@uint64;
(*   %43 = sub <2 x i64> %42, %29 *)
sub v43_0 v42_0 v29_0;
sub v43_1 v42_1 v29_1;
(*   %arrayidx16.i192 = getelementptr inbounds i64, i64* %p01_tmp1, i64 32 *)
(*   %44 = bitcast i64* %arrayidx13.i189 to <2 x i64>* *)
(*   store <2 x i64> %43, <2 x i64>* %44, align 8, !tbaa !3 *)
mov mem0_248 v43_0;
mov mem0_256 v43_1;
(*   %arrayidx19.i195 = getelementptr inbounds i64, i64* %p01_tmp1, i64 33 *)
(*   %45 = add <2 x i64> %31, <i64 18014398509481976, i64 18014398509481976> *)
add v45_0 v31_0 18014398509481976@uint64;
add v45_1 v31_1 18014398509481976@uint64;
(*   %46 = sub <2 x i64> %45, %33 *)
sub v46_0 v45_0 v33_0;
sub v46_1 v45_1 v33_1;
(*   %arrayidx22.i198 = getelementptr inbounds i64, i64* %p01_tmp1, i64 34 *)
(*   %47 = bitcast i64* %arrayidx19.i195 to <2 x i64>* *)
(*   store <2 x i64> %46, <2 x i64>* %47, align 8, !tbaa !3 *)
mov mem0_264 v46_0;
mov mem0_272 v46_1;
(*   tail call fastcc void @fmul20(i64* nonnull %add.ptr5, i64* nonnull %add.ptr5, i64* nonnull %add.ptr1) *)
(* == modified == *)
call fmul20(mem0_240, mem0_248, mem0_256, mem0_264, mem0_272, mem0_280, mem0_288, mem0_296, mem0_304, mem0_312,
			mem0_160, mem0_168, mem0_176, mem0_184, mem0_192, mem0_200, mem0_208, mem0_216, mem0_224, mem0_232,
			mem0_240, mem0_248, mem0_256, mem0_264, mem0_272, mem0_280, mem0_288, mem0_296, mem0_304, mem0_312);
(*   %48 = bitcast i64* %add.ptr5 to <2 x i64>* *)
(*   %49 = load <2 x i64>, <2 x i64>* %48, align 8, !tbaa !3 *)
mov v49_0 mem0_240;
mov v49_1 mem0_248;
(*   %50 = bitcast i64* %add.ptr7 to <2 x i64>* *)
(*   %51 = load <2 x i64>, <2 x i64>* %50, align 8, !tbaa !3 *)
mov v51_0 mem0_280;
mov v51_1 mem0_288;
(*   %52 = bitcast i64* %arrayidx16.i192 to <2 x i64>* *)
(*   %53 = load <2 x i64>, <2 x i64>* %52, align 8, !tbaa !3 *)
mov v53_0 mem0_256;
mov v53_1 mem0_264;
(*   %54 = bitcast i64* %arrayidx14.i172 to <2 x i64>* *)
(*   %55 = load <2 x i64>, <2 x i64>* %54, align 8, !tbaa !3 *)
mov v55_0 mem0_296;
mov v55_1 mem0_304;
(*   %56 = load i64, i64* %arrayidx22.i198, align 8, !tbaa !3 *)
mov v56 mem0_272;
(*   %57 = load i64, i64* %arrayidx18.i176, align 8, !tbaa !3 *)
mov v57 mem0_312;
(*   %58 = extractelement <2 x i64> %49, i32 0 *)
mov v58 v49_0;
(*   %59 = extractelement <2 x i64> %51, i32 0 *)
mov v59 v51_0;
(*   %add.i229 = add i64 %59, %58 *)
add v_add_i229 v59 v58;
(*   store i64 %add.i229, i64* %add.ptr, align 8, !tbaa !3 *)
mov mem0_80 v_add_i229;
(*   %60 = extractelement <2 x i64> %49, i32 1 *)
mov v60 v49_1;
(*   %61 = extractelement <2 x i64> %51, i32 1 *)
mov v61 v51_1;
(*   %add11.i230 = add i64 %61, %60 *)
add v_add11_i230 v61 v60;
(*   store i64 %add11.i230, i64* %arrayidx2.i160, align 8, !tbaa !3 *)
mov mem0_88 v_add11_i230;
(*   %62 = extractelement <2 x i64> %53, i32 0 *)
mov v62 v53_0;
(*   %63 = extractelement <2 x i64> %55, i32 0 *)
mov v63 v55_0;
(*   %add13.i232 = add i64 %63, %62 *)
add v_add13_i232 v63 v62;
(*   store i64 %add13.i232, i64* %arrayidx4.i162, align 8, !tbaa !3 *)
mov mem0_96 v_add13_i232;
(*   %64 = extractelement <2 x i64> %53, i32 1 *)
mov v64 v53_1;
(*   %65 = extractelement <2 x i64> %55, i32 1 *)
mov v65 v55_1;
(*   %add15.i234 = add i64 %65, %64 *)
add v_add15_i234 v65 v64;
(*   store i64 %add15.i234, i64* %arrayidx6.i164, align 8, !tbaa !3 *)
mov mem0_104 v_add15_i234;
(*   %add17.i236 = add i64 %57, %56 *)
add v_add17_i236 v57 v56;
(*   store i64 %add17.i236, i64* %arrayidx8.i166, align 8, !tbaa !3 *)
mov mem0_112 v_add17_i236;
(*   %66 = add <2 x i64> %49, <i64 18014398509481832, i64 18014398509481976> *)
add v66_0 v49_0 18014398509481832@uint64;
add v66_1 v49_1 18014398509481976@uint64;
(*   %67 = sub <2 x i64> %66, %51 *)
sub v67_0 v66_0 v51_0;
sub v67_1 v66_1 v51_1;
(*   %68 = bitcast i64* %add.ptr3 to <2 x i64>* *)
(*   store <2 x i64> %67, <2 x i64>* %68, align 8, !tbaa !3 *)
mov mem0_120 v67_0;
mov mem0_128 v67_1;
(*   %69 = add <2 x i64> %53, <i64 18014398509481976, i64 18014398509481976> *)
add v69_0 v53_0 18014398509481976@uint64;
add v69_1 v53_1 18014398509481976@uint64;
(*   %70 = sub <2 x i64> %69, %55 *)
sub v70_0 v69_0 v55_0;
sub v70_1 v69_1 v55_1;
(*   %71 = bitcast i64* %arrayidx5.i163 to <2 x i64>* *)
(*   store <2 x i64> %70, <2 x i64>* %71, align 8, !tbaa !3 *)
mov mem0_136 v70_0;
mov mem0_144 v70_1;
(*   %add20.i218 = add i64 %56, 18014398509481976 *)
add v_add20_i218 v56 18014398509481976@uint64;
(*   %sub21.i219 = sub i64 %add20.i218, %57 *)
sub v_sub21_i219 v_add20_i218 v57;
(*   store i64 %sub21.i219, i64* %arrayidx9.i167, align 8, !tbaa !3 *)
mov mem0_152 v_sub21_i219;
(*   tail call fastcc void @fsqr20(i64* nonnull %add.ptr5, i64* nonnull %add.ptr1) *)
(* == modified == *)
call fsqr20(mem0_160, mem0_168, mem0_176, mem0_184, mem0_192, mem0_200, mem0_208, mem0_216, mem0_224, mem0_232,
			mem0_240, mem0_248, mem0_256, mem0_264, mem0_272, mem0_280, mem0_288, mem0_296, mem0_304, mem0_312);
(*   tail call fastcc void @fsqr20(i64* nonnull %add.ptr, i64* nonnull %add.ptr) *)
(* == modified == *)
call fsqr20(mem0_80, mem0_88, mem0_96, mem0_104, mem0_112, mem0_120, mem0_128, mem0_136, mem0_144, mem0_152,
			mem0_80, mem0_88, mem0_96, mem0_104, mem0_112, mem0_120, mem0_128, mem0_136, mem0_144, mem0_152);
(*   %72 = load i64, i64* %add.ptr7, align 8, !tbaa !3 *)
mov v72 mem0_280;
(*   store i64 %72, i64* %add.ptr1, align 8, !tbaa !3 *)
mov mem0_160 v72;
(*   %73 = load i64, i64* %arrayidx12.i170, align 8, !tbaa !3 *)
mov v73 mem0_288;
(*   store i64 %73, i64* %arrayidx12.i, align 8, !tbaa !3 *)
mov mem0_168 v73;
(*   %74 = bitcast i64* %arrayidx14.i172 to <2 x i64>* *)
(*   %75 = load <2 x i64>, <2 x i64>* %74, align 8, !tbaa !3 *)
mov v75_0 mem0_296;
mov v75_1 mem0_304;
(*   %76 = extractelement <2 x i64> %75, i32 0 *)
mov v76 v75_0;
(*   store i64 %76, i64* %arrayidx14.i, align 8, !tbaa !3 *)
mov mem0_176 v76;
(*   %77 = extractelement <2 x i64> %75, i32 1 *)
mov v77 v75_1;
(*   store i64 %77, i64* %arrayidx16.i, align 8, !tbaa !3 *)
mov mem0_184 v77;
(*   %78 = load i64, i64* %arrayidx18.i176, align 8, !tbaa !3 *)
mov v78 mem0_312;
(*   store i64 %78, i64* %arrayidx18.i, align 8, !tbaa !3 *)
mov mem0_192 v78;
(*   %79 = load i64, i64* %add.ptr5, align 8, !tbaa !3 *)
mov v79 mem0_240;
(*   %80 = load i64, i64* %arrayidx13.i189, align 8, !tbaa !3 *)
mov v80 mem0_248;
(*   %81 = bitcast i64* %arrayidx16.i192 to <2 x i64>* *)
(*   %82 = load <2 x i64>, <2 x i64>* %81, align 8, !tbaa !3 *)
mov v82_0 mem0_256;
mov v82_1 mem0_264;
(*   %83 = load i64, i64* %arrayidx22.i198, align 8, !tbaa !3 *)
mov v83 mem0_272;
(*   %add.i146 = sub i64 18014398509481832, %72 *)
sub v_add_i146 18014398509481832@uint64 v72;
(*   %sub.i147 = add i64 %add.i146, %79 *)
add v_sub_i147 v_add_i146 v79;
(*   store i64 %sub.i147, i64* %add.ptr7, align 8, !tbaa !3 *)
mov mem0_280 v_sub_i147;
(*   %add11.i148 = add i64 %80, 18014398509481976 *)
add v_add11_i148 v80 18014398509481976@uint64;
(*   %sub12.i149 = sub i64 %add11.i148, %73 *)
sub v_sub12_i149 v_add11_i148 v73;
(*   store i64 %sub12.i149, i64* %arrayidx12.i170, align 8, !tbaa !3 *)
mov mem0_288 v_sub12_i149;
(*   %84 = add <2 x i64> %82, <i64 18014398509481976, i64 18014398509481976> *)
add v84_0 v82_0 18014398509481976@uint64;
add v84_1 v82_1 18014398509481976@uint64;
(*   %85 = sub <2 x i64> %84, %75 *)
sub v85_0 v84_0 v75_0;
sub v85_1 v84_1 v75_1;
(*   %86 = bitcast i64* %arrayidx14.i172 to <2 x i64>* *)
(*   store <2 x i64> %85, <2 x i64>* %86, align 8, !tbaa !3 *)
mov mem0_296 v85_0;
mov mem0_304 v85_1;
(*   %add20.i157 = add i64 %83, 18014398509481976 *)
add v_add20_i157 v83 18014398509481976@uint64;
(*   %sub21.i158 = sub i64 %add20.i157, %78 *)
sub v_sub21_i158 v_add20_i157 v78;
(*   store i64 %sub21.i158, i64* %arrayidx18.i176, align 8, !tbaa !3 *)
mov mem0_312 v_sub21_i158;
(*   %conv1.i.i130 = zext i64 %sub.i147 to i128 *)
cast v_conv1_i_i130@uint128 v_sub_i147@uint64;
(*   %mul.i.i131 = mul nuw nsw i128 %conv1.i.i130, 121665 *)
mul v_mul_i_i131 v_conv1_i_i130 121665@uint128;
(*   %retval.sroa.2.0.extract.shift.i.i = and i128 %mul.i.i131, 2417833192485184639860736 *)
(* You may need to modify here *)
and uint128 v_retval_sroa_2_0_extract_shift_i_i v_mul_i_i131 0x1FFFF0000000000000000@uint128;
(* == modified == *)
split tmp_i131_H tmp_i131_L v_mul_i_i131 64;
shl tmp_i131_H tmp_i131_H 64;
assert true && v_retval_sroa_2_0_extract_shift_i_i = tmp_i131_H;
assume v_retval_sroa_2_0_extract_shift_i_i = tmp_i131_H && true;
(*   %conv1.i115.i = zext i64 %sub12.i149 to i128 *)
cast v_conv1_i115_i@uint128 v_sub12_i149@uint64;
(*   %mul.i116.i = mul nuw nsw i128 %conv1.i115.i, 121665 *)
mul v_mul_i116_i v_conv1_i115_i 121665@uint128;
(*   %retval.sroa.2.0.extract.shift.i118.i = and i128 %mul.i116.i, 2417833192485184639860736 *)
(* You may need to modify here *)
and uint128 v_retval_sroa_2_0_extract_shift_i118_i v_mul_i116_i 0x1FFFF0000000000000000@uint128;
(* == modified == *)
split tmp_i116_H tmp_i116_L v_mul_i116_i 64;
shl tmp_i116_H tmp_i116_H 64;
assert true && v_retval_sroa_2_0_extract_shift_i118_i = tmp_i116_H;
assume v_retval_sroa_2_0_extract_shift_i118_i = tmp_i116_H && true;
(*   %87 = extractelement <2 x i64> %85, i32 0 *)
mov v87 v85_0;
(*   %conv1.i108.i = zext i64 %87 to i128 *)
cast v_conv1_i108_i@uint128 v87@uint64;
(*   %mul.i109.i = mul nuw nsw i128 %conv1.i108.i, 121665 *)
mul v_mul_i109_i v_conv1_i108_i 121665@uint128;
(*   %retval.sroa.2.0.extract.shift.i111.i = and i128 %mul.i109.i, 2417833192485184639860736 *)
(* You may need to modify here *)
and uint128 v_retval_sroa_2_0_extract_shift_i111_i v_mul_i109_i 0x1FFFF0000000000000000@uint128;
(* == modified == *)
split tmp_i109_H tmp_i109_L v_mul_i109_i 64;
shl tmp_i109_H tmp_i109_H 64;
assert true && v_retval_sroa_2_0_extract_shift_i111_i = tmp_i109_H;
assume v_retval_sroa_2_0_extract_shift_i111_i = tmp_i109_H && true;
(*   %88 = extractelement <2 x i64> %85, i32 1 *)
mov v88 v85_1;
(*   %conv1.i101.i = zext i64 %88 to i128 *)
cast v_conv1_i101_i@uint128 v88@uint64;
(*   %mul.i102.i = mul nuw nsw i128 %conv1.i101.i, 121665 *)
mul v_mul_i102_i v_conv1_i101_i 121665@uint128;
(*   %retval.sroa.2.0.extract.shift.i104.i = and i128 %mul.i102.i, 2417833192485184639860736 *)
(* You may need to modify here *)
and uint128 v_retval_sroa_2_0_extract_shift_i104_i v_mul_i102_i 0x1FFFF0000000000000000@uint128;
(* == modified == *)
split tmp_i102_H tmp_i102_L v_mul_i102_i 64;
shl tmp_i102_H tmp_i102_H 64;
assert true && v_retval_sroa_2_0_extract_shift_i104_i = tmp_i102_H;
assume v_retval_sroa_2_0_extract_shift_i104_i = tmp_i102_H && true;
(*   %conv1.i94.i = zext i64 %sub21.i158 to i128 *)
cast v_conv1_i94_i@uint128 v_sub21_i158@uint64;
(*   %mul.i95.i = mul nuw nsw i128 %conv1.i94.i, 121665 *)
mul v_mul_i95_i v_conv1_i94_i 121665@uint128;
(*   %retval.sroa.2.0.extract.shift.i97.i = and i128 %mul.i95.i, 2417833192485184639860736 *)
(* You may need to modify here *)
and uint128 v_retval_sroa_2_0_extract_shift_i97_i v_mul_i95_i 0x1FFFF0000000000000000@uint128;
(* == modified == *)
split tmp_i95_H tmp_i95_L v_mul_i95_i 64;
shl tmp_i95_H tmp_i95_H 64;
assert true && v_retval_sroa_2_0_extract_shift_i97_i = tmp_i95_H;
assume v_retval_sroa_2_0_extract_shift_i97_i = tmp_i95_H && true;
(*   %89 = mul i64 %sub.i147, 121665 *)
(* == modified == *)
(* mul v89 v_sub_i147 121665@uint64; *)
mull discard v89 v_sub_i147 121665@uint64;
vpc tmp_i131_L@uint64 tmp_i131_L;
assert true && v89 = tmp_i131_L;
assume v89 = tmp_i131_L && true;
(*   %and.i132 = and i64 %89, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and_i132 v89 0x7FFFFFFFFFFFF@uint64;
(*   %x.sroa.0.0.insert.ext.i80.i = zext i64 %89 to i128 *)
cast v_x_sroa_0_0_insert_ext_i80_i@uint128 v89@uint64;
(*   %x.sroa.0.0.insert.insert.i81.i = or i128 %retval.sroa.2.0.extract.shift.i.i, %x.sroa.0.0.insert.ext.i80.i *)
or uint128 v_x_sroa_0_0_insert_insert_i81_i v_retval_sroa_2_0_extract_shift_i_i v_x_sroa_0_0_insert_ext_i80_i;
(* == modified == *)
assert true && v_x_sroa_0_0_insert_insert_i81_i = v_retval_sroa_2_0_extract_shift_i_i + v_x_sroa_0_0_insert_ext_i80_i;
assume v_x_sroa_0_0_insert_insert_i81_i = v_retval_sroa_2_0_extract_shift_i_i + v_x_sroa_0_0_insert_ext_i80_i && true;
(*   %shr.i82.i = lshr i128 %x.sroa.0.0.insert.insert.i81.i, 51 *)
(* You may need to modify here *)
split v_shr_i82_i tmp_to_be_used v_x_sroa_0_0_insert_insert_i81_i 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and_i132;
assume tmp_v = v_and_i132 && true;
(*   %90 = mul i64 %sub12.i149, 121665 *)
(* == modified == *)
(* mul v90 v_sub12_i149 121665@uint64; *)
mull discard v90 v_sub12_i149 121665@uint64;
vpc tmp_i116_L@uint64 tmp_i116_L;
assert true && v90 = tmp_i116_L;
assume v90 = tmp_i116_L && true;
(*   %x.sroa.0.0.insert.ext.i69.i = zext i64 %90 to i128 *)
cast v_x_sroa_0_0_insert_ext_i69_i@uint128 v90@uint64;
(*   %x.sroa.0.0.insert.insert.i70.i = or i128 %retval.sroa.2.0.extract.shift.i118.i, %x.sroa.0.0.insert.ext.i69.i *)
(* == modified == *)
or uint128 v_x_sroa_0_0_insert_insert_i70_i v_retval_sroa_2_0_extract_shift_i118_i v_x_sroa_0_0_insert_ext_i69_i;
assert true && v_x_sroa_0_0_insert_insert_i70_i = v_retval_sroa_2_0_extract_shift_i118_i + v_x_sroa_0_0_insert_ext_i69_i;
assume v_x_sroa_0_0_insert_insert_i70_i = v_retval_sroa_2_0_extract_shift_i118_i + v_x_sroa_0_0_insert_ext_i69_i && true;
(*   %add.i72.i = add nuw nsw i128 %x.sroa.0.0.insert.insert.i70.i, %shr.i82.i *)
add v_add_i72_i v_x_sroa_0_0_insert_insert_i70_i v_shr_i82_i;
(*   %retval.sroa.0.0.extract.trunc.i73.i = trunc i128 %add.i72.i to i64 *)
(* == modified == *)
(* vpc v_retval_sroa_0_0_extract_trunc_i73_i@uint64 v_add_i72_i@uint128; *)
cast v_retval_sroa_0_0_extract_trunc_i73_i@uint64 v_add_i72_i@uint128;
(*   %and34.i = and i64 %retval.sroa.0.0.extract.trunc.i73.i, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and34_i v_retval_sroa_0_0_extract_trunc_i73_i 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i62.i = lshr i128 %add.i72.i, 51 *)
(* You may need to modify here *)
split v_shr_i62_i tmp_to_be_used v_add_i72_i 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and34_i;
assume tmp_v = v_and34_i && true;
(*   %91 = mul i64 %87, 121665 *)
(* == modified == *)
(* mul v91 v87 121665@uint64; *)
mull discard v91 v87 121665@uint64;
vpc tmp_i109_L@uint64 tmp_i109_L; 
assert true && v91 = tmp_i109_L;
assume v91 = tmp_i109_L && true;
(*   %x.sroa.0.0.insert.ext.i49.i = zext i64 %91 to i128 *)
cast v_x_sroa_0_0_insert_ext_i49_i@uint128 v91@uint64;
(*   %x.sroa.0.0.insert.insert.i50.i = or i128 %retval.sroa.2.0.extract.shift.i111.i, %x.sroa.0.0.insert.ext.i49.i *)
(* == modified == *)
or uint128 v_x_sroa_0_0_insert_insert_i50_i v_retval_sroa_2_0_extract_shift_i111_i v_x_sroa_0_0_insert_ext_i49_i;
assert true && v_x_sroa_0_0_insert_insert_i50_i = v_retval_sroa_2_0_extract_shift_i111_i + v_x_sroa_0_0_insert_ext_i49_i;
assume v_x_sroa_0_0_insert_insert_i50_i = v_retval_sroa_2_0_extract_shift_i111_i + v_x_sroa_0_0_insert_ext_i49_i && true;
(*   %add.i52.i = add nuw nsw i128 %shr.i62.i, %x.sroa.0.0.insert.insert.i50.i *)
add v_add_i52_i v_shr_i62_i v_x_sroa_0_0_insert_insert_i50_i;
(*   %shr.i42.i = lshr i128 %add.i52.i, 51 *)
(* You may need to modify here *)
split v_shr_i42_i tmp_to_be_used v_add_i52_i 51;
(*   %92 = mul i64 %88, 121665 *)
(* == modified == *)
(* mul v92 v88 121665@uint64; *)
mull discard v92 v88 121665@uint64;
vpc tmp_i102_L@uint64 tmp_i102_L;
assert true && v92 = tmp_i102_L;
assume v92 = tmp_i102_L && true;
(*   %x.sroa.0.0.insert.ext.i29.i = zext i64 %92 to i128 *)
cast v_x_sroa_0_0_insert_ext_i29_i@uint128 v92@uint64;
(*   %x.sroa.0.0.insert.insert.i30.i = or i128 %retval.sroa.2.0.extract.shift.i104.i, %x.sroa.0.0.insert.ext.i29.i *)
(* == modified == *)
or uint128 v_x_sroa_0_0_insert_insert_i30_i v_retval_sroa_2_0_extract_shift_i104_i v_x_sroa_0_0_insert_ext_i29_i;
assert true && v_x_sroa_0_0_insert_insert_i30_i = v_retval_sroa_2_0_extract_shift_i104_i + v_x_sroa_0_0_insert_ext_i29_i;
assume v_x_sroa_0_0_insert_insert_i30_i = v_retval_sroa_2_0_extract_shift_i104_i + v_x_sroa_0_0_insert_ext_i29_i && true;
(*   %add.i32.i = add nuw nsw i128 %shr.i42.i, %x.sroa.0.0.insert.insert.i30.i *)
add v_add_i32_i v_shr_i42_i v_x_sroa_0_0_insert_insert_i30_i;
(*   %93 = insertelement <2 x i128> undef, i128 %add.i52.i, i32 0 *)
mov v93_0 v_add_i52_i;
nondet undef_1@uint128;
mov v93_1 undef_1;
(*   %94 = insertelement <2 x i128> %93, i128 %add.i32.i, i32 1 *)
mov v94_0 v93_0;
mov v94_1 v_add_i32_i;
(*   %95 = trunc <2 x i128> %94 to <2 x i64> *)
(* == modified == *)
(* vpc v95_0@uint64 v94_0@uint128; *)
(* vpc v95_1@uint64 v94_1@uint128; *)
cast v95_0@uint64 v94_0@uint128;
cast v95_1@uint64 v94_1@uint128;
(*   %96 = and <2 x i64> %95, <i64 2251799813685247, i64 2251799813685247> *)
(* You may need to modify here *)
and uint64 v96_0 v95_0 0x7FFFFFFFFFFFF@uint64;
and uint64 v96_1 v95_1 0x7FFFFFFFFFFFF@uint64;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v96_0;
assume tmp_v = v96_0 && true;
(*   %shr.i22.i = lshr i128 %add.i32.i, 51 *)
(* You may need to modify here *)
split v_shr_i22_i tmp_to_be_used v_add_i32_i 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v96_1;
assume tmp_v = v96_1 && true;
(*   %97 = mul i64 %sub21.i158, 121665 *)
(* == modified == *)
(* mul v97 v_sub21_i158 121665@uint64; *)
mull discard v97 v_sub21_i158 121665@uint64;
vpc tmp_i95_L@uint64 tmp_i95_L;
assert true && v97 = tmp_i95_L;
assume v97 = tmp_i95_L && true;
(*   %x.sroa.0.0.insert.ext.i11.i = zext i64 %97 to i128 *)
cast v_x_sroa_0_0_insert_ext_i11_i@uint128 v97@uint64;
(*   %x.sroa.0.0.insert.insert.i12.i = or i128 %retval.sroa.2.0.extract.shift.i97.i, %x.sroa.0.0.insert.ext.i11.i *)
(* == modified == *)
or uint128 v_x_sroa_0_0_insert_insert_i12_i v_retval_sroa_2_0_extract_shift_i97_i v_x_sroa_0_0_insert_ext_i11_i;
assert true && v_x_sroa_0_0_insert_insert_i12_i = v_retval_sroa_2_0_extract_shift_i97_i + v_x_sroa_0_0_insert_ext_i11_i;
assume v_x_sroa_0_0_insert_insert_i12_i = v_retval_sroa_2_0_extract_shift_i97_i + v_x_sroa_0_0_insert_ext_i11_i && true;
(*   %add.i.i133 = add nuw nsw i128 %shr.i22.i, %x.sroa.0.0.insert.insert.i12.i *)
add v_add_i_i133 v_shr_i22_i v_x_sroa_0_0_insert_insert_i12_i;
(*   %retval.sroa.0.0.extract.trunc.i13.i = trunc i128 %add.i.i133 to i64 *)
(* == modified == *)
(* vpc v_retval_sroa_0_0_extract_trunc_i13_i@uint64 v_add_i_i133@uint128; *)
cast v_retval_sroa_0_0_extract_trunc_i13_i@uint64 v_add_i_i133@uint128;
(*   %and76.i = and i64 %retval.sroa.0.0.extract.trunc.i13.i, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and76_i v_retval_sroa_0_0_extract_trunc_i13_i 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i.i134 = lshr i128 %add.i.i133, 51 *)
(* You may need to modify here *)
split v_shr_i_i134 tmp_to_be_used v_add_i_i133 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and76_i;
assume tmp_v = v_and76_i && true;
(*   %retval.sroa.0.0.extract.trunc.i5.i = trunc i128 %shr.i.i134 to i64 *)
vpc v_retval_sroa_0_0_extract_trunc_i5_i@uint64 v_shr_i_i134@uint128;
(*   %mul.i135 = mul nuw nsw i64 %retval.sroa.0.0.extract.trunc.i5.i, 19 *)
mul v_mul_i135 v_retval_sroa_0_0_extract_trunc_i5_i 19@uint64;
(*   %add.i136 = add nuw nsw i64 %mul.i135, %and.i132 *)
add v_add_i136 v_mul_i135 v_and_i132;
(*   %and82.i = and i64 %add.i136, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and82_i v_add_i136 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i137 = lshr i64 %add.i136, 51 *)
(* You may need to modify here *)
split v_shr_i137 tmp_to_be_used v_add_i136 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and82_i;
assume tmp_v = v_and82_i && true;
(*   %add83.i = add nuw nsw i64 %shr.i137, %and34.i *)
add v_add83_i v_shr_i137 v_and34_i;
(*   %add.i117 = add i64 %and82.i, %79 *)
add v_add_i117 v_and82_i v79;
(*   store i64 %add.i117, i64* %add.ptr4, align 8, !tbaa !3 *)
mov mem0_200 v_add_i117;
(*   %add11.i118 = add i64 %add83.i, %80 *)
add v_add11_i118 v_add83_i v80;
(*   store i64 %add11.i118, i64* %arrayidx13.i, align 8, !tbaa !3 *)
mov mem0_208 v_add11_i118;
(*   %98 = add <2 x i64> %96, %82 *)
add v98_0 v96_0 v82_0;
add v98_1 v96_1 v82_1;
(*   %99 = bitcast i64* %arrayidx16.i107 to <2 x i64>* *)
(*   store <2 x i64> %98, <2 x i64>* %99, align 8, !tbaa !3 *)
mov mem0_216 v98_0;
mov mem0_224 v98_1;
(*   %add17.i124 = add i64 %and76.i, %83 *)
add v_add17_i124 v_and76_i v83;
(*   store i64 %add17.i124, i64* %arrayidx22.i, align 8, !tbaa !3 *)
mov mem0_232 v_add17_i124;
(*   tail call fastcc void @fmul20(i64* %p01_tmp1, i64* nonnull %add.ptr5, i64* nonnull %add.ptr1) *)
(* == modified == *)
call fmul20(mem0_240, mem0_248, mem0_256, mem0_264, mem0_272, mem0_280, mem0_288, mem0_296, mem0_304, mem0_312,
			mem0_160, mem0_168, mem0_176, mem0_184, mem0_192, mem0_200, mem0_208, mem0_216, mem0_224, mem0_232,
			mem0_0, mem0_8, mem0_16, mem0_24, mem0_32, mem0_40, mem0_48, mem0_56, mem0_64, mem0_72);
(*   %100 = load i64, i64* %add.ptr3, align 8, !tbaa !3 *)
mov v100 mem0_120;
(*   %101 = load i64, i64* %arrayidx3.i161, align 8, !tbaa !3 *)
mov v101 mem0_128;
(*   %102 = load i64, i64* %arrayidx5.i163, align 8, !tbaa !3 *)
mov v102 mem0_136;
(*   %103 = load i64, i64* %arrayidx7.i165, align 8, !tbaa !3 *)
mov v103 mem0_144;
(*   %104 = load i64, i64* %arrayidx9.i167, align 8, !tbaa !3 *)
mov v104 mem0_152;
(*   %105 = load i64, i64* %q, align 8, !tbaa !3 *)
mov v105 mem1_0;
(*   %arrayidx6.i92 = getelementptr inbounds i64, i64* %q, i64 1 *)
(*   %106 = load i64, i64* %arrayidx6.i92, align 8, !tbaa !3 *)
mov v106 mem1_8;
(*   %arrayidx7.i93 = getelementptr inbounds i64, i64* %q, i64 2 *)
(*   %107 = load i64, i64* %arrayidx7.i93, align 8, !tbaa !3 *)
mov v107 mem1_16;
(*   %arrayidx8.i94 = getelementptr inbounds i64, i64* %q, i64 3 *)
(*   %108 = load i64, i64* %arrayidx8.i94, align 8, !tbaa !3 *)
mov v108 mem1_24;
(*   %arrayidx9.i95 = getelementptr inbounds i64, i64* %q, i64 4 *)
(*   %109 = load i64, i64* %arrayidx9.i95, align 8, !tbaa !3 *)
mov v109 mem1_32;
(*   %mul.i = mul i64 %106, 19 *)
mul v_mul_i v106 19@uint64;
(*   %mul10.i = mul i64 %107, 19 *)
mul v_mul10_i v107 19@uint64;
(*   %mul11.i = mul i64 %108, 19 *)
mul v_mul11_i v108 19@uint64;
(*   %mul12.i = mul i64 %109, 19 *)
mul v_mul12_i v109 19@uint64;
(*   %conv.i.i = zext i64 %100 to i128 *)
cast v_conv_i_i@uint128 v100@uint64;
(*   %conv1.i.i = zext i64 %105 to i128 *)
cast v_conv1_i_i@uint128 v105@uint64;
(*   %mul.i.i = mul nuw i128 %conv1.i.i, %conv.i.i *)
mul v_mul_i_i v_conv1_i_i v_conv_i_i;
(*   %conv1.i898.i = zext i64 %106 to i128 *)
cast v_conv1_i898_i@uint128 v106@uint64;
(*   %mul.i899.i = mul nuw i128 %conv1.i898.i, %conv.i.i *)
mul v_mul_i899_i v_conv1_i898_i v_conv_i_i;
(*   %conv1.i890.i = zext i64 %107 to i128 *)
cast v_conv1_i890_i@uint128 v107@uint64;
(*   %mul.i891.i = mul nuw i128 %conv1.i890.i, %conv.i.i *)
mul v_mul_i891_i v_conv1_i890_i v_conv_i_i;
(*   %conv1.i882.i = zext i64 %108 to i128 *)
cast v_conv1_i882_i@uint128 v108@uint64;
(*   %mul.i883.i = mul nuw i128 %conv1.i882.i, %conv.i.i *)
mul v_mul_i883_i v_conv1_i882_i v_conv_i_i;
(*   %conv1.i874.i = zext i64 %109 to i128 *)
cast v_conv1_i874_i@uint128 v109@uint64;
(*   %mul.i875.i = mul nuw i128 %conv1.i874.i, %conv.i.i *)
mul v_mul_i875_i v_conv1_i874_i v_conv_i_i;
(*   %conv.i865.i = zext i64 %101 to i128 *)
cast v_conv_i865_i@uint128 v101@uint64;
(*   %conv1.i866.i = zext i64 %mul12.i to i128 *)
cast v_conv1_i866_i@uint128 v_mul12_i@uint64;
(*   %mul.i867.i = mul nuw i128 %conv1.i866.i, %conv.i865.i *)
mul v_mul_i867_i v_conv1_i866_i v_conv_i865_i;
(*   %mul.i845.i = mul nuw i128 %conv1.i.i, %conv.i865.i *)
mul v_mul_i845_i v_conv1_i_i v_conv_i865_i;
(*   %add.i837.i = add i128 %mul.i899.i, %mul.i845.i *)
add v_add_i837_i v_mul_i899_i v_mul_i845_i;
(*   %mul.i823.i = mul nuw i128 %conv1.i898.i, %conv.i865.i *)
mul v_mul_i823_i v_conv1_i898_i v_conv_i865_i;
(*   %mul.i801.i = mul nuw i128 %conv1.i890.i, %conv.i865.i *)
mul v_mul_i801_i v_conv1_i890_i v_conv_i865_i;
(*   %mul.i779.i = mul nuw i128 %conv1.i882.i, %conv.i865.i *)
mul v_mul_i779_i v_conv1_i882_i v_conv_i865_i;
(*   %conv.i755.i = zext i64 %102 to i128 *)
cast v_conv_i755_i@uint128 v102@uint64;
(*   %conv1.i756.i = zext i64 %mul11.i to i128 *)
cast v_conv1_i756_i@uint128 v_mul11_i@uint64;
(*   %mul.i757.i = mul nuw i128 %conv1.i756.i, %conv.i755.i *)
mul v_mul_i757_i v_conv1_i756_i v_conv_i755_i;
(*   %mul.i735.i = mul nuw i128 %conv1.i866.i, %conv.i755.i *)
mul v_mul_i735_i v_conv1_i866_i v_conv_i755_i;
(*   %mul.i713.i = mul nuw i128 %conv1.i.i, %conv.i755.i *)
mul v_mul_i713_i v_conv1_i_i v_conv_i755_i;
(*   %mul.i691.i = mul nuw i128 %conv1.i898.i, %conv.i755.i *)
mul v_mul_i691_i v_conv1_i898_i v_conv_i755_i;
(*   %mul.i669.i = mul nuw i128 %conv1.i890.i, %conv.i755.i *)
mul v_mul_i669_i v_conv1_i890_i v_conv_i755_i;
(*   %conv.i645.i = zext i64 %103 to i128 *)
cast v_conv_i645_i@uint128 v103@uint64;
(*   %conv1.i646.i = zext i64 %mul10.i to i128 *)
cast v_conv1_i646_i@uint128 v_mul10_i@uint64;
(*   %mul.i647.i = mul nuw i128 %conv1.i646.i, %conv.i645.i *)
mul v_mul_i647_i v_conv1_i646_i v_conv_i645_i;
(*   %mul.i625.i = mul nuw i128 %conv1.i756.i, %conv.i645.i *)
mul v_mul_i625_i v_conv1_i756_i v_conv_i645_i;
(*   %mul.i603.i = mul nuw i128 %conv1.i866.i, %conv.i645.i *)
mul v_mul_i603_i v_conv1_i866_i v_conv_i645_i;
(*   %mul.i581.i = mul nuw i128 %conv1.i.i, %conv.i645.i *)
mul v_mul_i581_i v_conv1_i_i v_conv_i645_i;
(*   %mul.i559.i = mul nuw i128 %conv1.i898.i, %conv.i645.i *)
mul v_mul_i559_i v_conv1_i898_i v_conv_i645_i;
(*   %conv.i535.i = zext i64 %104 to i128 *)
cast v_conv_i535_i@uint128 v104@uint64;
(*   %conv1.i536.i = zext i64 %mul.i to i128 *)
cast v_conv1_i536_i@uint128 v_mul_i@uint64;
(*   %mul.i537.i = mul nuw i128 %conv1.i536.i, %conv.i535.i *)
mul v_mul_i537_i v_conv1_i536_i v_conv_i535_i;
(*   %add.i859.i = add i128 %mul.i537.i, %mul.i.i *)
add v_add_i859_i v_mul_i537_i v_mul_i_i;
(*   %add.i749.i = add i128 %add.i859.i, %mul.i647.i *)
add v_add_i749_i v_add_i859_i v_mul_i647_i;
(*   %add.i639.i = add i128 %add.i749.i, %mul.i757.i *)
add v_add_i639_i v_add_i749_i v_mul_i757_i;
(*   %add.i529.i = add i128 %add.i639.i, %mul.i867.i *)
add v_add_i529_i v_add_i639_i v_mul_i867_i;
(*   %mul.i515.i = mul nuw i128 %conv1.i646.i, %conv.i535.i *)
mul v_mul_i515_i v_conv1_i646_i v_conv_i535_i;
(*   %mul.i493.i = mul nuw i128 %conv1.i756.i, %conv.i535.i *)
mul v_mul_i493_i v_conv1_i756_i v_conv_i535_i;
(*   %mul.i471.i = mul nuw i128 %conv1.i866.i, %conv.i535.i *)
mul v_mul_i471_i v_conv1_i866_i v_conv_i535_i;
(*   %mul.i449.i = mul nuw i128 %conv1.i.i, %conv.i535.i *)
mul v_mul_i449_i v_conv1_i_i v_conv_i535_i;
(*   %retval.sroa.0.0.extract.trunc.i433.i = trunc i128 %add.i529.i to i64 *)
(* == modified == *)
(* vpc v_retval_sroa_0_0_extract_trunc_i433_i@uint64 v_add_i529_i@uint128; *)
cast v_retval_sroa_0_0_extract_trunc_i433_i@uint64 v_add_i529_i@uint128;
(*   %and.i = and i64 %retval.sroa.0.0.extract.trunc.i433.i, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and_i v_retval_sroa_0_0_extract_trunc_i433_i 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i424.i = lshr i128 %add.i529.i, 51 *)
(* You may need to modify here *)
split v_shr_i424_i tmp_to_be_used v_add_i529_i 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and_i;
assume tmp_v = v_and_i && true;
(*   %y.sroa.0.0.insert.ext.i413.i = and i128 %shr.i424.i, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i413_i v_shr_i424_i 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i413_i v_shr_i424_i;
assume eq v_y_sroa_0_0_insert_ext_i413_i v_shr_i424_i && true;
(*   %add.i727.i = add i128 %add.i837.i, %mul.i515.i *)
add v_add_i727_i v_add_i837_i v_mul_i515_i;
(*   %add.i617.i = add i128 %add.i727.i, %mul.i625.i *)
add v_add_i617_i v_add_i727_i v_mul_i625_i;
(*   %add.i507.i = add i128 %add.i617.i, %mul.i735.i *)
add v_add_i507_i v_add_i617_i v_mul_i735_i;
(*   %add.i414.i = add i128 %add.i507.i, %y.sroa.0.0.insert.ext.i413.i *)
add v_add_i414_i v_add_i507_i v_y_sroa_0_0_insert_ext_i413_i;
(*   %retval.sroa.0.0.extract.trunc.i415.i = trunc i128 %add.i414.i to i64 *)
(* == modified == *)
(* vpc v_retval_sroa_0_0_extract_trunc_i415_i@uint64 v_add_i414_i@uint128; *)
cast v_retval_sroa_0_0_extract_trunc_i415_i@uint64 v_add_i414_i@uint128;
(*   %and162.i = and i64 %retval.sroa.0.0.extract.trunc.i415.i, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and162_i v_retval_sroa_0_0_extract_trunc_i415_i 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i404.i = lshr i128 %add.i414.i, 51 *)
(* You may need to modify here *)
split v_shr_i404_i tmp_to_be_used v_add_i414_i 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and162_i;
assume tmp_v = v_and162_i && true;
(*   %y.sroa.0.0.insert.ext.i393.i = and i128 %shr.i404.i, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i393_i v_shr_i404_i 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i393_i v_shr_i404_i;
assume eq v_y_sroa_0_0_insert_ext_i393_i v_shr_i404_i && true;
(*   %add.i815.i = add i128 %mul.i823.i, %mul.i713.i *)
add v_add_i815_i v_mul_i823_i v_mul_i713_i;
(*   %add.i705.i = add i128 %add.i815.i, %mul.i891.i *)
add v_add_i705_i v_add_i815_i v_mul_i891_i;
(*   %add.i595.i = add i128 %add.i705.i, %mul.i493.i *)
add v_add_i595_i v_add_i705_i v_mul_i493_i;
(*   %add.i485.i = add i128 %add.i595.i, %mul.i603.i *)
add v_add_i485_i v_add_i595_i v_mul_i603_i;
(*   %add.i394.i = add i128 %add.i485.i, %y.sroa.0.0.insert.ext.i393.i *)
add v_add_i394_i v_add_i485_i v_y_sroa_0_0_insert_ext_i393_i;
(*   %retval.sroa.0.0.extract.trunc.i395.i = trunc i128 %add.i394.i to i64 *)
(* == modified == *)
(* vpc v_retval_sroa_0_0_extract_trunc_i395_i@uint64 v_add_i394_i@uint128; *)
cast v_retval_sroa_0_0_extract_trunc_i395_i@uint64 v_add_i394_i@uint128;
(*   %and176.i = and i64 %retval.sroa.0.0.extract.trunc.i395.i, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and176_i v_retval_sroa_0_0_extract_trunc_i395_i 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i384.i = lshr i128 %add.i394.i, 51 *)
(* You may need to modify here *)
split v_shr_i384_i tmp_to_be_used v_add_i394_i 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and176_i;
assume tmp_v = v_and176_i && true;
(*   %y.sroa.0.0.insert.ext.i373.i = and i128 %shr.i384.i, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i373_i v_shr_i384_i 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i373_i v_shr_i384_i;
assume eq v_y_sroa_0_0_insert_ext_i373_i v_shr_i384_i && true;
(*   %add.i793.i = add i128 %mul.i691.i, %mul.i581.i *)
add v_add_i793_i v_mul_i691_i v_mul_i581_i;
(*   %add.i683.i = add i128 %add.i793.i, %mul.i801.i *)
add v_add_i683_i v_add_i793_i v_mul_i801_i;
(*   %add.i573.i = add i128 %add.i683.i, %mul.i883.i *)
add v_add_i573_i v_add_i683_i v_mul_i883_i;
(*   %add.i463.i = add i128 %add.i573.i, %mul.i471.i *)
add v_add_i463_i v_add_i573_i v_mul_i471_i;
(*   %add.i374.i = add i128 %add.i463.i, %y.sroa.0.0.insert.ext.i373.i *)
add v_add_i374_i v_add_i463_i v_y_sroa_0_0_insert_ext_i373_i;
(*   %shr.i364.i = lshr i128 %add.i374.i, 51 *)
(* You may need to modify here *)
split v_shr_i364_i tmp_to_be_used v_add_i374_i 51;
(*   %y.sroa.0.0.insert.ext.i.i = and i128 %shr.i364.i, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i_i v_shr_i364_i 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i_i v_shr_i364_i;
assume eq v_y_sroa_0_0_insert_ext_i_i v_shr_i364_i && true;
(*   %add.i771.i = add i128 %mul.i559.i, %mul.i449.i *)
add v_add_i771_i v_mul_i559_i v_mul_i449_i;
(*   %add.i661.i = add i128 %add.i771.i, %mul.i669.i *)
add v_add_i661_i v_add_i771_i v_mul_i669_i;
(*   %add.i551.i = add i128 %add.i661.i, %mul.i779.i *)
add v_add_i551_i v_add_i661_i v_mul_i779_i;
(*   %add.i441.i = add i128 %add.i551.i, %mul.i875.i *)
add v_add_i441_i v_add_i551_i v_mul_i875_i;
(*   %add.i.i = add i128 %add.i441.i, %y.sroa.0.0.insert.ext.i.i *)
add v_add_i_i v_add_i441_i v_y_sroa_0_0_insert_ext_i_i;
(*   %110 = insertelement <2 x i128> undef, i128 %add.i374.i, i32 0 *)
mov v110_0 v_add_i374_i;
nondet undef_1@uint128;
mov v110_1 undef_1;
(*   %111 = insertelement <2 x i128> %110, i128 %add.i.i, i32 1 *)
mov v111_0 v110_0;
mov v111_1 v_add_i_i;
(*   %112 = trunc <2 x i128> %111 to <2 x i64> *)
(* == modified == *)
(* vpc v112_0@uint64 v111_0@uint128; *)
(* vpc v112_1@uint64 v111_1@uint128; *)
cast v112_0@uint64 v111_0@uint128;
cast v112_1@uint64 v111_1@uint128;
(*   %113 = and <2 x i64> %112, <i64 2251799813685247, i64 2251799813685247> *)
(* You may need to modify here *)
and uint64 v113_0 v112_0 0x7FFFFFFFFFFFF@uint64;
and uint64 v113_1 v112_1 0x7FFFFFFFFFFFF@uint64;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v113_0;
assume tmp_v = v113_0 && true;
(*   %shr.i.i = lshr i128 %add.i.i, 51 *)
(* You may need to modify here *)
split v_shr_i_i tmp_to_be_used v_add_i_i 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v113_1;
assume tmp_v = v113_1 && true;
(*   %retval.sroa.0.0.extract.trunc.i347.i = trunc i128 %shr.i.i to i64 *)
vpc v_retval_sroa_0_0_extract_trunc_i347_i@uint64 v_shr_i_i@uint128;
(*   %mul210.i = mul i64 %retval.sroa.0.0.extract.trunc.i347.i, 19 *)
mul v_mul210_i v_retval_sroa_0_0_extract_trunc_i347_i 19@uint64;
(*   %add.i96 = add i64 %mul210.i, %and.i *)
add v_add_i96 v_mul210_i v_and_i;
(*   %and211.i = and i64 %add.i96, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and211_i v_add_i96 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i = lshr i64 %add.i96, 51 *)
(* You may need to modify here *)
split v_shr_i tmp_to_be_used v_add_i96 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and211_i;
assume tmp_v = v_and211_i && true;
(*   %add212.i = add nuw nsw i64 %shr.i, %and162.i *)
add v_add212_i v_shr_i v_and162_i;
(*   store i64 %and211.i, i64* %add.ptr3, align 8, !tbaa !3 *)
mov mem0_120 v_and211_i;
(*   store i64 %add212.i, i64* %arrayidx3.i161, align 8, !tbaa !3 *)
mov mem0_128 v_add212_i;
(*   store i64 %and176.i, i64* %arrayidx5.i163, align 8, !tbaa !3 *)
mov mem0_136 v_and176_i;
(*   %114 = bitcast i64* %arrayidx7.i165 to <2 x i64>* *)
(*   store <2 x i64> %113, <2 x i64>* %114, align 8, !tbaa !3 *)
mov mem0_144 v113_0;
mov mem0_152 v113_1;
(*   ret void *)


mov X4_0 mem0_0;
mov X4_1 mem0_8;
mov X4_2 mem0_16;
mov X4_3 mem0_24;
mov X4_4 mem0_32;
mov Z4_0 mem0_40;
mov Z4_1 mem0_48;
mov Z4_2 mem0_56;
mov Z4_3 mem0_64;
mov Z4_4 mem0_72;

mov X5_0 mem0_80;
mov X5_1 mem0_88;
mov X5_2 mem0_96;
mov X5_3 mem0_104;
mov X5_4 mem0_112;
mov Z5_0 mem0_120;
mov Z5_1 mem0_128;
mov Z5_2 mem0_136;
mov Z5_3 mem0_144;
mov Z5_4 mem0_152;


{
  (* (let p2, p3 = P.add_and_double (fget_xz h0 q) (fget_xz h0 nq) (fget_xz h0 nq_p1) in
     fget_xz h1 nq == p2 /\ fget_xz h1 nq_p1 == p3) *)

  and [

    (* condition 1 *)
    eqmod
      (limbs 51 [X4_0, X4_1, X4_2, X4_3, X4_4])
      (sq (sub (sq (limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4]))
               (sq (limbs 51 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4]))))
      (2**255 - 19),

    (* condition 2 *)
    eqmod
      (limbs 51 [Z4_0, Z4_1, Z4_2, Z4_3, Z4_4])
      (mul [
         4,
         (limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4]),
         (limbs 51 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4]),
         add [ sq (limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4]),
               mul [ 486662,
                     (limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4]),
                     (limbs 51 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4]) ],
               sq (limbs 51 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4]) ]
       ])
      (2**255 - 19),

    (* condition 3-1 *)
    eqmod
      (limbs 51 [X5_0, X5_1, X5_2, X5_3, X5_4])
      (mul 4 (sq (sub 
      	     	    (mul (limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4]) 
		         (limbs 51 [X3_0, X3_1, X3_2, X3_3, X3_4]))
                    (mul (limbs 51 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4])
		         (limbs 51 [Z3_0, Z3_1, Z3_2, Z3_3, Z3_4])))))
      (2**255 - 19),

    (* condition 3-2 *)
    eqmod
      (limbs 51 [Z5_0, Z5_1, Z5_2, Z5_3, Z5_4])
      (mul 4 (mul (limbs 51 [X1_0, X1_1, X1_2, X1_3, X1_4])
                  (sq (sub (mul (limbs 51 [X3_0, X3_1, X3_2, X3_3, X3_4])
		      	   	(limbs 51 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4]))
                           (mul (limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4])
			        (limbs 51 [Z3_0, Z3_1, Z3_2, Z3_3, Z3_4]))))))
      (2**255 - 19),

    (* condition 3 *)
    eqmod
      (mul (limbs 51 [X5_0, X5_1, X5_2, X5_3, X5_4])
           (mul (limbs 51 [X1_0, X1_1, X1_2, X1_3, X1_4])
                (sq (sub (mul (limbs 51 [X3_0, X3_1, X3_2, X3_3, X3_4])
                              (limbs 51 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4]))
                         (mul (limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4])
                              (limbs 51 [Z3_0, Z3_1, Z3_2, Z3_3, Z3_4]))))))
      (mul (limbs 51 [Z5_0, Z5_1, Z5_2, Z5_3, Z5_4])
           (sq (sub (mul (limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4])
                         (limbs 51 [X3_0, X3_1, X3_2, X3_3, X3_4]))
                    (mul (limbs 51 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4])
                         (limbs 51 [Z3_0, Z3_1, Z3_2, Z3_3, Z3_4])))))
      (2**255 - 19)

  ] 
  &&
  and [
  	(* state_inv_t h1 (get_x nq) /\ state_inv_t h1 (get_z nq) *)
    	X4_0 <=u (1 * (2**51-1))@64,
	X4_1 <=u ((2**51-1) + 8192)@64,
  	X4_2 <=u (1 * (2**51-1))@64,
  	X4_3 <=u (1 * (2**51-1))@64,
  	X4_4 <=u (1 * (2**51-1))@64,
   	Z4_0 <=u (1 * (2**51-1))@64,
	Z4_1 <=u ((2**51-1) + 8192)@64,
  	Z4_2 <=u (1 * (2**51-1))@64,
  	Z4_3 <=u (1 * (2**51-1))@64,
  	Z4_4 <=u (1 * (2**51-1))@64,
  	(* state_inv_t h1 (get_x nq_p1) /\ state_inv_t h1 (get_z nq_p1) *)
  	X5_0 <=u (1 * (2**51-1))@64,
	X5_1 <=u ((2**51-1) + 8192)@64,
  	X5_2 <=u (1 * (2**51-1))@64,
  	X5_3 <=u (1 * (2**51-1))@64,
  	X5_4 <=u (1 * (2**51-1))@64,
    	Z5_0 <=u (1 * (2**51-1))@64,
	Z5_1 <=u ((2**51-1) + 8192)@64,
  	Z5_2 <=u (1 * (2**51-1))@64,
  	Z5_3 <=u (1 * (2**51-1))@64,
  	Z5_4 <=u (1 * (2**51-1))@64
  ]
}


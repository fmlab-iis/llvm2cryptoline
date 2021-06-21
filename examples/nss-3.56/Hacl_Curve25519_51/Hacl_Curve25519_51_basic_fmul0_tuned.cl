proc main (uint64 mem0_0, uint64 mem0_8, uint64 mem0_16, uint64 mem0_24, uint64 mem0_32, uint64 mem1_0, uint64 mem1_8, uint64 mem1_16, uint64 mem1_24, uint64 mem1_32) =
{
  true
  &&
  and [
  	mem0_0 <=u (9 * (2**51-1))@64,
	mem0_8 <=u (10 * (2**51-1))@64,
  	mem0_16 <=u (9 * (2**51-1))@64,
  	mem0_24 <=u (9 * (2**51-1))@64,
  	mem0_32 <=u (9 * (2**51-1))@64,
  	mem1_0 <=u (9 * (2**51-1))@64,
	mem1_8 <=u (10 * (2**51-1))@64,
  	mem1_16 <=u (9 * (2**51-1))@64,
  	mem1_24 <=u (9 * (2**51-1))@64,
  	mem1_32 <=u (9 * (2**51-1))@64
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
(*   %mul = mul i64 %6, 19 *)
mul v_mul v6 19@uint64;
(*   %mul10 = mul i64 %7, 19 *)
mul v_mul10 v7 19@uint64;
(*   %mul11 = mul i64 %8, 19 *)
mul v_mul11 v8 19@uint64;
(*   %mul12 = mul i64 %9, 19 *)
mul v_mul12 v9 19@uint64;
(*   %conv.i = zext i64 %0 to i128 *)
cast v_conv_i@uint128 v0@uint64;
(*   %conv1.i = zext i64 %5 to i128 *)
cast v_conv1_i@uint128 v5@uint64;
(*   %mul.i = mul nuw i128 %conv1.i, %conv.i *)
mul v_mul_i v_conv1_i v_conv_i;
(*   %conv1.i898 = zext i64 %6 to i128 *)
cast v_conv1_i898@uint128 v6@uint64;
(*   %mul.i899 = mul nuw i128 %conv1.i898, %conv.i *)
mul v_mul_i899 v_conv1_i898 v_conv_i;
(*   %conv1.i890 = zext i64 %7 to i128 *)
cast v_conv1_i890@uint128 v7@uint64;
(*   %mul.i891 = mul nuw i128 %conv1.i890, %conv.i *)
mul v_mul_i891 v_conv1_i890 v_conv_i;
(*   %conv1.i882 = zext i64 %8 to i128 *)
cast v_conv1_i882@uint128 v8@uint64;
(*   %mul.i883 = mul nuw i128 %conv1.i882, %conv.i *)
mul v_mul_i883 v_conv1_i882 v_conv_i;
(*   %conv1.i874 = zext i64 %9 to i128 *)
cast v_conv1_i874@uint128 v9@uint64;
(*   %mul.i875 = mul nuw i128 %conv1.i874, %conv.i *)
mul v_mul_i875 v_conv1_i874 v_conv_i;
(*   %conv.i865 = zext i64 %1 to i128 *)
cast v_conv_i865@uint128 v1@uint64;
(*   %conv1.i866 = zext i64 %mul12 to i128 *)
cast v_conv1_i866@uint128 v_mul12@uint64;
(*   %mul.i867 = mul nuw i128 %conv1.i866, %conv.i865 *)
mul v_mul_i867 v_conv1_i866 v_conv_i865;
(*   %mul.i845 = mul nuw i128 %conv1.i, %conv.i865 *)
mul v_mul_i845 v_conv1_i v_conv_i865;
(*   %add.i837 = add i128 %mul.i899, %mul.i845 *)
add v_add_i837 v_mul_i899 v_mul_i845;
(*   %mul.i823 = mul nuw i128 %conv1.i898, %conv.i865 *)
mul v_mul_i823 v_conv1_i898 v_conv_i865;
(*   %mul.i801 = mul nuw i128 %conv1.i890, %conv.i865 *)
mul v_mul_i801 v_conv1_i890 v_conv_i865;
(*   %mul.i779 = mul nuw i128 %conv1.i882, %conv.i865 *)
mul v_mul_i779 v_conv1_i882 v_conv_i865;
(*   %conv.i755 = zext i64 %2 to i128 *)
cast v_conv_i755@uint128 v2@uint64;
(*   %conv1.i756 = zext i64 %mul11 to i128 *)
cast v_conv1_i756@uint128 v_mul11@uint64;
(*   %mul.i757 = mul nuw i128 %conv1.i756, %conv.i755 *)
mul v_mul_i757 v_conv1_i756 v_conv_i755;
(*   %mul.i735 = mul nuw i128 %conv1.i866, %conv.i755 *)
mul v_mul_i735 v_conv1_i866 v_conv_i755;
(*   %mul.i713 = mul nuw i128 %conv1.i, %conv.i755 *)
mul v_mul_i713 v_conv1_i v_conv_i755;
(*   %mul.i691 = mul nuw i128 %conv1.i898, %conv.i755 *)
mul v_mul_i691 v_conv1_i898 v_conv_i755;
(*   %mul.i669 = mul nuw i128 %conv1.i890, %conv.i755 *)
mul v_mul_i669 v_conv1_i890 v_conv_i755;
(*   %conv.i645 = zext i64 %3 to i128 *)
cast v_conv_i645@uint128 v3@uint64;
(*   %conv1.i646 = zext i64 %mul10 to i128 *)
cast v_conv1_i646@uint128 v_mul10@uint64;
(*   %mul.i647 = mul nuw i128 %conv1.i646, %conv.i645 *)
mul v_mul_i647 v_conv1_i646 v_conv_i645;
(*   %mul.i625 = mul nuw i128 %conv1.i756, %conv.i645 *)
mul v_mul_i625 v_conv1_i756 v_conv_i645;
(*   %mul.i603 = mul nuw i128 %conv1.i866, %conv.i645 *)
mul v_mul_i603 v_conv1_i866 v_conv_i645;
(*   %mul.i581 = mul nuw i128 %conv1.i, %conv.i645 *)
mul v_mul_i581 v_conv1_i v_conv_i645;
(*   %mul.i559 = mul nuw i128 %conv1.i898, %conv.i645 *)
mul v_mul_i559 v_conv1_i898 v_conv_i645;
(*   %conv.i535 = zext i64 %4 to i128 *)
cast v_conv_i535@uint128 v4@uint64;
(*   %conv1.i536 = zext i64 %mul to i128 *)
cast v_conv1_i536@uint128 v_mul@uint64;
(*   %mul.i537 = mul nuw i128 %conv1.i536, %conv.i535 *)
mul v_mul_i537 v_conv1_i536 v_conv_i535;
(*   %add.i859 = add i128 %mul.i537, %mul.i *)
add v_add_i859 v_mul_i537 v_mul_i;
(*   %add.i749 = add i128 %add.i859, %mul.i647 *)
add v_add_i749 v_add_i859 v_mul_i647;
(*   %add.i639 = add i128 %add.i749, %mul.i757 *)
add v_add_i639 v_add_i749 v_mul_i757;
(*   %add.i529 = add i128 %add.i639, %mul.i867 *)
add v_add_i529 v_add_i639 v_mul_i867;
(*   %mul.i515 = mul nuw i128 %conv1.i646, %conv.i535 *)
mul v_mul_i515 v_conv1_i646 v_conv_i535;
(*   %mul.i493 = mul nuw i128 %conv1.i756, %conv.i535 *)
mul v_mul_i493 v_conv1_i756 v_conv_i535;
(*   %mul.i471 = mul nuw i128 %conv1.i866, %conv.i535 *)
mul v_mul_i471 v_conv1_i866 v_conv_i535;
(*   %mul.i449 = mul nuw i128 %conv1.i, %conv.i535 *)
mul v_mul_i449 v_conv1_i v_conv_i535;
(*   %retval.sroa.0.0.extract.trunc.i433 = trunc i128 %add.i529 to i64 *)
cast v_retval_sroa_0_0_extract_trunc_i433@uint64 v_add_i529@uint128;
(*   %and = and i64 %retval.sroa.0.0.extract.trunc.i433, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and v_retval_sroa_0_0_extract_trunc_i433 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i424 = lshr i128 %add.i529, 51 *)
(* You may need to modify here *)
split v_shr_i424 tmp_to_be_used v_add_i529 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and;
assume tmp_v = v_and && true;
(*   %y.sroa.0.0.insert.ext.i413 = and i128 %shr.i424, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i413 v_shr_i424 0xFFFFFFFFFFFFFFFF@uint128;
(* == modified == *)
vpc tmp_cast@uint64 v_shr_i424;
cast tmp_cast@uint128 tmp_cast;
assert true && tmp_cast = v_y_sroa_0_0_insert_ext_i413;
assume tmp_cast = v_y_sroa_0_0_insert_ext_i413 && true;
(*   %add.i727 = add i128 %add.i837, %mul.i515 *)
add v_add_i727 v_add_i837 v_mul_i515;
(*   %add.i617 = add i128 %add.i727, %mul.i625 *)
add v_add_i617 v_add_i727 v_mul_i625;
(*   %add.i507 = add i128 %add.i617, %mul.i735 *)
add v_add_i507 v_add_i617 v_mul_i735;
(*   %add.i414 = add i128 %add.i507, %y.sroa.0.0.insert.ext.i413 *)
add v_add_i414 v_add_i507 v_y_sroa_0_0_insert_ext_i413;
(*   %retval.sroa.0.0.extract.trunc.i415 = trunc i128 %add.i414 to i64 *)
cast v_retval_sroa_0_0_extract_trunc_i415@uint64 v_add_i414@uint128;
(*   %and162 = and i64 %retval.sroa.0.0.extract.trunc.i415, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and162 v_retval_sroa_0_0_extract_trunc_i415 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i404 = lshr i128 %add.i414, 51 *)
(* You may need to modify here *)
split v_shr_i404 tmp_to_be_used v_add_i414 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and162;
assume tmp_v = v_and162 && true;
(*   %y.sroa.0.0.insert.ext.i393 = and i128 %shr.i404, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i393 v_shr_i404 0xFFFFFFFFFFFFFFFF@uint128;
(* == modified == *)
vpc tmp_cast@uint64 v_shr_i404;
cast tmp_cast@uint128 tmp_cast;
assert true && tmp_cast = v_y_sroa_0_0_insert_ext_i393;
assume tmp_cast = v_y_sroa_0_0_insert_ext_i393 && true;
(*   %add.i815 = add i128 %mul.i823, %mul.i713 *)
add v_add_i815 v_mul_i823 v_mul_i713;
(*   %add.i705 = add i128 %add.i815, %mul.i891 *)
add v_add_i705 v_add_i815 v_mul_i891;
(*   %add.i595 = add i128 %add.i705, %mul.i493 *)
add v_add_i595 v_add_i705 v_mul_i493;
(*   %add.i485 = add i128 %add.i595, %mul.i603 *)
add v_add_i485 v_add_i595 v_mul_i603;
(*   %add.i394 = add i128 %add.i485, %y.sroa.0.0.insert.ext.i393 *)
add v_add_i394 v_add_i485 v_y_sroa_0_0_insert_ext_i393;
(*   %shr.i384 = lshr i128 %add.i394, 51 *)
(* You may need to modify here *)
split v_shr_i384 tmp_to_be_used v_add_i394 51;
(*   %y.sroa.0.0.insert.ext.i373 = and i128 %shr.i384, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i373 v_shr_i384 0xFFFFFFFFFFFFFFFF@uint128;
(* == modified == *)
vpc tmp_cast@uint64 v_shr_i384;
cast tmp_cast@uint128 tmp_cast;
assert true && tmp_cast = v_y_sroa_0_0_insert_ext_i373;
assume tmp_cast = v_y_sroa_0_0_insert_ext_i373 && true;
(*   %add.i793 = add i128 %mul.i691, %mul.i581 *)
add v_add_i793 v_mul_i691 v_mul_i581;
(*   %add.i683 = add i128 %add.i793, %mul.i801 *)
add v_add_i683 v_add_i793 v_mul_i801;
(*   %add.i573 = add i128 %add.i683, %mul.i883 *)
add v_add_i573 v_add_i683 v_mul_i883;
(*   %add.i463 = add i128 %add.i573, %mul.i471 *)
add v_add_i463 v_add_i573 v_mul_i471;
(*   %add.i374 = add i128 %add.i463, %y.sroa.0.0.insert.ext.i373 *)
add v_add_i374 v_add_i463 v_y_sroa_0_0_insert_ext_i373;
(*   %10 = insertelement <2 x i128> undef, i128 %add.i394, i32 0 *)
mov v10_0 v_add_i394;
nondet undef_1@uint128;
mov v10_1 undef_1;
(*   %11 = insertelement <2 x i128> %10, i128 %add.i374, i32 1 *)
mov v11_0 v10_0;
mov v11_1 v_add_i374;
(*   %12 = trunc <2 x i128> %11 to <2 x i64> *)
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
(*   %shr.i364 = lshr i128 %add.i374, 51 *)
(* You may need to modify here *)
split v_shr_i364 tmp_to_be_used v_add_i374 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v13_1;
assume tmp_v = v13_1 && true;
(*   %y.sroa.0.0.insert.ext.i = and i128 %shr.i364, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i v_shr_i364 0xFFFFFFFFFFFFFFFF@uint128;
(* == modified == *)
vpc tmp_cast@uint64 v_shr_i364;
cast tmp_cast@uint128 tmp_cast;
assert true && tmp_cast = v_y_sroa_0_0_insert_ext_i;
assume tmp_cast = v_y_sroa_0_0_insert_ext_i && true;
(*   %add.i771 = add i128 %mul.i559, %mul.i449 *)
add v_add_i771 v_mul_i559 v_mul_i449;
(*   %add.i661 = add i128 %add.i771, %mul.i669 *)
add v_add_i661 v_add_i771 v_mul_i669;
(*   %add.i551 = add i128 %add.i661, %mul.i779 *)
add v_add_i551 v_add_i661 v_mul_i779;
(*   %add.i441 = add i128 %add.i551, %mul.i875 *)
add v_add_i441 v_add_i551 v_mul_i875;
(*   %add.i = add i128 %add.i441, %y.sroa.0.0.insert.ext.i *)
add v_add_i v_add_i441 v_y_sroa_0_0_insert_ext_i;
(*   %retval.sroa.0.0.extract.trunc.i355 = trunc i128 %add.i to i64 *)
cast v_retval_sroa_0_0_extract_trunc_i355@uint64 v_add_i@uint128;
(*   %and204 = and i64 %retval.sroa.0.0.extract.trunc.i355, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and204 v_retval_sroa_0_0_extract_trunc_i355 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i = lshr i128 %add.i, 51 *)
(* You may need to modify here *)
split v_shr_i tmp_to_be_used v_add_i 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and204;
assume tmp_v = v_and204 && true;
(*   %retval.sroa.0.0.extract.trunc.i347 = trunc i128 %shr.i to i64 *)
vpc v_retval_sroa_0_0_extract_trunc_i347@uint64 v_shr_i@uint128;
(*   %mul210 = mul i64 %retval.sroa.0.0.extract.trunc.i347, 19 *)
mul v_mul210 v_retval_sroa_0_0_extract_trunc_i347 19@uint64;
(*   %add = add i64 %mul210, %and *)
add v_add v_mul210 v_and;
(*   %and211 = and i64 %add, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and211 v_add 0x7FFFFFFFFFFFF@uint64;
(*   %shr = lshr i64 %add, 51 *)
(* You may need to modify here *)
split v_shr tmp_to_be_used v_add 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and211;
assume tmp_v = v_and211 && true;
(*   %add212 = add nuw nsw i64 %shr, %and162 *)
add v_add212 v_shr v_and162;
(*   store i64 %and211, i64* %out, align 8, !tbaa !3 *)
mov mem2_0 v_and211;
(*   %arrayidx214 = getelementptr inbounds i64, i64* %out, i64 1 *)
(*   store i64 %add212, i64* %arrayidx214, align 8, !tbaa !3 *)
mov mem2_8 v_add212;
(*   %arrayidx215 = getelementptr inbounds i64, i64* %out, i64 2 *)
(*   %14 = bitcast i64* %arrayidx215 to <2 x i64>* *)
(*   store <2 x i64> %13, <2 x i64>* %14, align 8, !tbaa !3 *)
mov mem2_16 v13_0;
mov mem2_24 v13_1;
(*   %arrayidx217 = getelementptr inbounds i64, i64* %out, i64 4 *)
(*   store i64 %and204, i64* %arrayidx217, align 8, !tbaa !3 *)
mov mem2_32 v_and204;
(*   ret void *)


{
  (limbs 51 [mem2_0, mem2_8, mem2_16, mem2_24, mem2_32])
  =
  (
  	(limbs 51 [mem0_0, mem0_8, mem0_16, mem0_24, mem0_32])
    *
    (limbs 51 [mem1_0, mem1_8, mem1_16, mem1_24, mem1_32])
  )
  (mod (2**255 - 19))
  &&
  and [
    mem2_0 <=u (1 * (2**51-1))@64,
	mem2_8 <=u ((2**51-1) + 8192)@64,
  	mem2_16 <=u (1 * (2**51-1))@64,
  	mem2_24 <=u (1 * (2**51-1))@64,
  	mem2_32 <=u (1 * (2**51-1))@64
  ]
}


proc main (uint64 mem0_0, uint64 mem0_8, uint64 mem0_16, uint64 mem0_24, uint64 mem0_32) =
{
  true
  &&
  and [
      (* f51_felem_fits h f (9, 10, 9, 9, 9) *)
      mem0_0 <=u (9 * (2**51-1))@64,
      mem0_8 <=u (10 * (2**51-1))@64,
      mem0_16 <=u (9 * (2**51-1))@64,
      mem0_24 <=u (9 * (2**51-1))@64,
      mem0_32 <=u (9 * (2**51-1))@64
  ]
}



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
(*   %mul = shl i64 %0, 1 *)
shl v_mul v0 1;
(*   %mul5 = shl i64 %1, 1 *)
shl v_mul5 v1 1;
(*   %mul6 = mul i64 %2, 38 *)
mul v_mul6 v2 38@uint64;
(*   %mul7 = mul i64 %3, 19 *)
mul v_mul7 v3 19@uint64;
(*   %mul8 = mul i64 %4, 19 *)
mul v_mul8 v4 19@uint64;
(*   %mul9 = mul i64 %4, 38 *)
mul v_mul9 v4 38@uint64;
(*   %conv.i = zext i64 %0 to i128 *)
cast v_conv_i@uint128 v0@uint64;
(*   %mul.i = mul nuw i128 %conv.i, %conv.i *)
mul v_mul_i v_conv_i v_conv_i;
(*   %conv.i572 = zext i64 %mul9 to i128 *)
cast v_conv_i572@uint128 v_mul9@uint64;
(*   %conv1.i573 = zext i64 %1 to i128 *)
cast v_conv1_i573@uint128 v1@uint64;
(*   %mul.i574 = mul nuw i128 %conv.i572, %conv1.i573 *)
mul v_mul_i574 v_conv_i572 v_conv1_i573;
(*   %conv.i550 = zext i64 %mul6 to i128 *)
cast v_conv_i550@uint128 v_mul6@uint64;
(*   %conv1.i551 = zext i64 %3 to i128 *)
cast v_conv1_i551@uint128 v3@uint64;
(*   %mul.i552 = mul nuw i128 %conv1.i551, %conv.i550 *)
mul v_mul_i552 v_conv1_i551 v_conv_i550;
(*   %add.i566 = add i128 %mul.i552, %mul.i *)
add v_add_i566 v_mul_i552 v_mul_i;
(*   %add.i544 = add i128 %add.i566, %mul.i574 *)
add v_add_i544 v_add_i566 v_mul_i574;
(*   %conv.i528 = zext i64 %mul to i128 *)
cast v_conv_i528@uint128 v_mul@uint64;
(*   %mul.i530 = mul nuw i128 %conv1.i573, %conv.i528 *)
mul v_mul_i530 v_conv1_i573 v_conv_i528;
(*   %conv1.i521 = zext i64 %2 to i128 *)
cast v_conv1_i521@uint128 v2@uint64;
(*   %mul.i522 = mul nuw i128 %conv.i572, %conv1.i521 *)
mul v_mul_i522 v_conv_i572 v_conv1_i521;
(*   %conv.i498 = zext i64 %mul7 to i128 *)
cast v_conv_i498@uint128 v_mul7@uint64;
(*   %mul.i500 = mul nuw i128 %conv.i498, %conv1.i551 *)
mul v_mul_i500 v_conv_i498 v_conv1_i551;
(*   %mul.i478 = mul nuw i128 %conv1.i521, %conv.i528 *)
mul v_mul_i478 v_conv1_i521 v_conv_i528;
(*   %mul.i470 = mul nuw i128 %conv1.i573, %conv1.i573 *)
mul v_mul_i470 v_conv1_i573 v_conv1_i573;
(*   %add.i462 = add i128 %mul.i478, %mul.i470 *)
add v_add_i462 v_mul_i478 v_mul_i470;
(*   %mul.i448 = mul nuw i128 %conv.i572, %conv1.i551 *)
mul v_mul_i448 v_conv_i572 v_conv1_i551;
(*   %add.i440 = add i128 %add.i462, %mul.i448 *)
add v_add_i440 v_add_i462 v_mul_i448;
(*   %mul.i426 = mul nuw i128 %conv1.i551, %conv.i528 *)
mul v_mul_i426 v_conv1_i551 v_conv_i528;
(*   %conv.i416 = zext i64 %mul5 to i128 *)
cast v_conv_i416@uint128 v_mul5@uint64;
(*   %mul.i418 = mul nuw i128 %conv1.i521, %conv.i416 *)
mul v_mul_i418 v_conv1_i521 v_conv_i416;
(*   %add.i410 = add i128 %mul.i426, %mul.i418 *)
add v_add_i410 v_mul_i426 v_mul_i418;
(*   %conv.i394 = zext i64 %4 to i128 *)
cast v_conv_i394@uint128 v4@uint64;
(*   %conv1.i395 = zext i64 %mul8 to i128 *)
cast v_conv1_i395@uint128 v_mul8@uint64;
(*   %mul.i396 = mul nuw i128 %conv1.i395, %conv.i394 *)
mul v_mul_i396 v_conv1_i395 v_conv_i394;
(*   %add.i388 = add i128 %add.i410, %mul.i396 *)
add v_add_i388 v_add_i410 v_mul_i396;
(*   %mul.i374 = mul nuw i128 %conv.i394, %conv.i528 *)
mul v_mul_i374 v_conv_i394 v_conv_i528;
(*   %mul.i366 = mul nuw i128 %conv1.i551, %conv.i416 *)
mul v_mul_i366 v_conv1_i551 v_conv_i416;
(*   %mul.i344 = mul nuw i128 %conv1.i521, %conv1.i521 *)
mul v_mul_i344 v_conv1_i521 v_conv1_i521;
(*   %retval.sroa.0.0.extract.trunc.i328 = trunc i128 %add.i544 to i64 *)
(* == modified == *)
(* vpc v_retval_sroa_0_0_extract_trunc_i328@uint64 v_add_i544@uint128; *)
cast v_retval_sroa_0_0_extract_trunc_i328@uint64 v_add_i544@uint128;
(*   %and = and i64 %retval.sroa.0.0.extract.trunc.i328, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and v_retval_sroa_0_0_extract_trunc_i328 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i319 = lshr i128 %add.i544, 51 *)
(* You may need to modify here *)
split v_shr_i319 tmp_to_be_used v_add_i544 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and;
assume tmp_v = v_and && true;
(*   %y.sroa.0.0.insert.ext.i308 = and i128 %shr.i319, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i308 v_shr_i319 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i308 v_shr_i319;
assume eq v_y_sroa_0_0_insert_ext_i308 v_shr_i319 && true;
(*   %add.i514 = add i128 %mul.i500, %mul.i530 *)
add v_add_i514 v_mul_i500 v_mul_i530;
(*   %add.i492 = add i128 %add.i514, %mul.i522 *)
add v_add_i492 v_add_i514 v_mul_i522;
(*   %add.i309 = add i128 %add.i492, %y.sroa.0.0.insert.ext.i308 *)
add v_add_i309 v_add_i492 v_y_sroa_0_0_insert_ext_i308;
(*   %retval.sroa.0.0.extract.trunc.i310 = trunc i128 %add.i309 to i64 *)
(* == modified == *)
(* vpc v_retval_sroa_0_0_extract_trunc_i310@uint64 v_add_i309@uint128; *)
cast v_retval_sroa_0_0_extract_trunc_i310@uint64 v_add_i309@uint128;
(*   %and99 = and i64 %retval.sroa.0.0.extract.trunc.i310, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and99 v_retval_sroa_0_0_extract_trunc_i310 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i299 = lshr i128 %add.i309, 51 *)
(* You may need to modify here *)
split v_shr_i299 tmp_to_be_used v_add_i309 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and99;
assume tmp_v = v_and99 && true;
(*   %y.sroa.0.0.insert.ext.i288 = and i128 %shr.i299, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i288 v_shr_i299 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i288 v_shr_i299;
assume eq v_y_sroa_0_0_insert_ext_i288 v_shr_i299 && true;
(*   %add.i289 = add i128 %add.i440, %y.sroa.0.0.insert.ext.i288 *)
add v_add_i289 v_add_i440 v_y_sroa_0_0_insert_ext_i288;
(*   %shr.i279 = lshr i128 %add.i289, 51 *)
(* You may need to modify here *)
split v_shr_i279 tmp_to_be_used v_add_i289 51;
(*   %y.sroa.0.0.insert.ext.i268 = and i128 %shr.i279, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i268 v_shr_i279 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i268 v_shr_i279;
assume eq v_y_sroa_0_0_insert_ext_i268 v_shr_i279 && true;
(*   %add.i269 = add i128 %add.i388, %y.sroa.0.0.insert.ext.i268 *)
add v_add_i269 v_add_i388 v_y_sroa_0_0_insert_ext_i268;
(*   %5 = insertelement <2 x i128> undef, i128 %add.i289, i32 0 *)
mov v5_0 v_add_i289;
nondet undef_1@uint128;
mov v5_1 undef_1;
(*   %6 = insertelement <2 x i128> %5, i128 %add.i269, i32 1 *)
mov v6_0 v5_0;
mov v6_1 v_add_i269;
(*   %7 = trunc <2 x i128> %6 to <2 x i64> *)
(* == modified == *)
(* vpc v7_0@uint64 v6_0@uint128; *)
(* vpc v7_1@uint64 v6_1@uint128; *)
cast v7_0@uint64 v6_0@uint128;
cast v7_1@uint64 v6_1@uint128;
(*   %8 = and <2 x i64> %7, <i64 2251799813685247, i64 2251799813685247> *)
(* You may need to modify here *)
and uint64 v8_0 v7_0 0x7FFFFFFFFFFFF@uint64;
and uint64 v8_1 v7_1 0x7FFFFFFFFFFFF@uint64;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v8_0;
assume tmp_v = v8_0 && true;
(*   %shr.i259 = lshr i128 %add.i269, 51 *)
(* You may need to modify here *)
split v_shr_i259 tmp_to_be_used v_add_i269 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v8_1;
assume tmp_v = v8_1 && true;
(*   %y.sroa.0.0.insert.ext.i = and i128 %shr.i259, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i v_shr_i259 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i v_shr_i259;
assume eq v_y_sroa_0_0_insert_ext_i v_shr_i259 && true;
(*   %add.i358 = add i128 %mul.i366, %mul.i344 *)
add v_add_i358 v_mul_i366 v_mul_i344;
(*   %add.i336 = add i128 %add.i358, %mul.i374 *)
add v_add_i336 v_add_i358 v_mul_i374;
(*   %add.i = add i128 %add.i336, %y.sroa.0.0.insert.ext.i *)
add v_add_i v_add_i336 v_y_sroa_0_0_insert_ext_i;
(*   %retval.sroa.0.0.extract.trunc.i250 = trunc i128 %add.i to i64 *)
(* == modified == *)
(* vpc v_retval_sroa_0_0_extract_trunc_i250@uint64 v_add_i@uint128; *)
cast v_retval_sroa_0_0_extract_trunc_i250@uint64 v_add_i@uint128;
(*   %and141 = and i64 %retval.sroa.0.0.extract.trunc.i250, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and141 v_retval_sroa_0_0_extract_trunc_i250 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i = lshr i128 %add.i, 51 *)
(* You may need to modify here *)
split v_shr_i tmp_to_be_used v_add_i 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and141;
assume tmp_v = v_and141 && true;
(*   %retval.sroa.0.0.extract.trunc.i242 = trunc i128 %shr.i to i64 *)
vpc v_retval_sroa_0_0_extract_trunc_i242@uint64 v_shr_i@uint128;
(*   %mul147 = mul i64 %retval.sroa.0.0.extract.trunc.i242, 19 *)
mul v_mul147 v_retval_sroa_0_0_extract_trunc_i242 19@uint64;
(*   %add = add i64 %mul147, %and *)
add v_add v_mul147 v_and;
(*   %and148 = and i64 %add, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and148 v_add 0x7FFFFFFFFFFFF@uint64;
(*   %shr = lshr i64 %add, 51 *)
(* You may need to modify here *)
split v_shr tmp_to_be_used v_add 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and148;
assume tmp_v = v_and148 && true;
(*   %add149 = add nuw nsw i64 %shr, %and99 *)
add v_add149 v_shr v_and99;
(*   store i64 %and148, i64* %out, align 8, !tbaa !3 *)
mov mem1_0 v_and148;
(*   %arrayidx151 = getelementptr inbounds i64, i64* %out, i64 1 *)
(*   store i64 %add149, i64* %arrayidx151, align 8, !tbaa !3 *)
mov mem1_8 v_add149;
(*   %arrayidx152 = getelementptr inbounds i64, i64* %out, i64 2 *)
(*   %9 = bitcast i64* %arrayidx152 to <2 x i64>* *)
(*   store <2 x i64> %8, <2 x i64>* %9, align 8, !tbaa !3 *)
mov mem1_16 v8_0;
mov mem1_24 v8_1;
(*   %arrayidx154 = getelementptr inbounds i64, i64* %out, i64 4 *)
(*   store i64 %and141, i64* %arrayidx154, align 8, !tbaa !3 *)
mov mem1_32 v_and141;
(*   ret void *)


{
  (* feval h1 out == P.fmul (feval h0 f1) (feval h0 f1) *)
  (limbs 51 [mem1_0, mem1_8, mem1_16, mem1_24, mem1_32])
  =
  (
    (limbs 51 [mem0_0, mem0_8, mem0_16, mem0_24, mem0_32])
    *
    (limbs 51 [mem0_0, mem0_8, mem0_16, mem0_24, mem0_32])
  )
  (mod (2**255 - 19))
  &&
  and [
      (* state_inv_t h1 out *)
      mem1_0 <=u (1 * (2**51-1))@64,
      mem1_8 <=u ((2**51-1) + 8192)@64,
      mem1_16 <=u (1 * (2**51-1))@64,
      mem1_24 <=u (1 * (2**51-1))@64,
      mem1_32 <=u (1 * (2**51-1))@64
  ]
}


proc main (uint64 mem0_0, uint64 mem0_8, uint64 mem0_16, uint64 mem0_24, uint64 mem0_32, uint64 v_f2) =
{
  true
  &&
  and [
      (* f51_felem_fits h f1 (9, 10, 9, 9, 9) *)
      mem0_0 <=u (9 * (2**51-1))@64,
      mem0_8 <=u (10 * (2**51-1))@64,
      mem0_16 <=u (9 * (2**51-1))@64,
      mem0_24 <=u (9 * (2**51-1))@64,
      mem0_32 <=u (9 * (2**51-1))@64,
      (* f51_felem_fits1 f2 1 *)
      v_f2 <=u (1 * (2**51-1))@64
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
(*   %conv.i = zext i64 %f2 to i128 *)
cast v_conv_i@uint128 v_f2@uint64;
(*   %conv1.i = zext i64 %0 to i128 *)
cast v_conv1_i@uint128 v0@uint64;
(*   %mul.i = mul nuw i128 %conv1.i, %conv.i *)
mul v_mul_i v_conv1_i v_conv_i;
(*   %conv1.i258 = zext i64 %1 to i128 *)
cast v_conv1_i258@uint128 v1@uint64;
(*   %mul.i259 = mul nuw i128 %conv1.i258, %conv.i *)
mul v_mul_i259 v_conv1_i258 v_conv_i;
(*   %conv1.i250 = zext i64 %2 to i128 *)
cast v_conv1_i250@uint128 v2@uint64;
(*   %mul.i251 = mul nuw i128 %conv1.i250, %conv.i *)
mul v_mul_i251 v_conv1_i250 v_conv_i;
(*   %conv1.i242 = zext i64 %3 to i128 *)
cast v_conv1_i242@uint128 v3@uint64;
(*   %mul.i243 = mul nuw i128 %conv1.i242, %conv.i *)
mul v_mul_i243 v_conv1_i242 v_conv_i;
(*   %conv1.i234 = zext i64 %4 to i128 *)
cast v_conv1_i234@uint128 v4@uint64;
(*   %mul.i235 = mul nuw i128 %conv1.i234, %conv.i *)
mul v_mul_i235 v_conv1_i234 v_conv_i;
(*   %retval.sroa.0.0.extract.trunc.i230 = trunc i128 %mul.i to i64 *)
(* == modified == *)
(* vpc v_retval_sroa_0_0_extract_trunc_i230@uint64 v_mul_i@uint128; *)
cast v_retval_sroa_0_0_extract_trunc_i230@uint64 v_mul_i@uint128;
(*   %and = and i64 %retval.sroa.0.0.extract.trunc.i230, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and v_retval_sroa_0_0_extract_trunc_i230 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i221 = lshr i128 %mul.i, 51 *)
(* You may need to modify here *)
split v_shr_i221 tmp_to_be_used v_mul_i 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and;
assume tmp_v = v_and && true;
(*   %y.sroa.0.0.insert.ext.i210 = and i128 %shr.i221, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i210 v_shr_i221 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i210 v_shr_i221;
assume eq v_y_sroa_0_0_insert_ext_i210 v_shr_i221 && true;
(*   %add.i211 = add i128 %y.sroa.0.0.insert.ext.i210, %mul.i259 *)
add v_add_i211 v_y_sroa_0_0_insert_ext_i210 v_mul_i259;
(*   %retval.sroa.0.0.extract.trunc.i212 = trunc i128 %add.i211 to i64 *)
(* == modified == *)
(* vpc v_retval_sroa_0_0_extract_trunc_i212@uint64 v_add_i211@uint128; *)
cast v_retval_sroa_0_0_extract_trunc_i212@uint64 v_add_i211@uint128;
(*   %and34 = and i64 %retval.sroa.0.0.extract.trunc.i212, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and34 v_retval_sroa_0_0_extract_trunc_i212 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i201 = lshr i128 %add.i211, 51 *)
(* You may need to modify here *)
split v_shr_i201 tmp_to_be_used v_add_i211 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and34;
assume tmp_v = v_and34 && true;
(*   %y.sroa.0.0.insert.ext.i190 = and i128 %shr.i201, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i190 v_shr_i201 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i190 v_shr_i201;
assume eq v_y_sroa_0_0_insert_ext_i190 v_shr_i201 && true;
(*   %add.i191 = add i128 %y.sroa.0.0.insert.ext.i190, %mul.i251 *)
add v_add_i191 v_y_sroa_0_0_insert_ext_i190 v_mul_i251;
(*   %shr.i181 = lshr i128 %add.i191, 51 *)
(* You may need to modify here *)
split v_shr_i181 tmp_to_be_used v_add_i191 51;
(*   %y.sroa.0.0.insert.ext.i170 = and i128 %shr.i181, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i170 v_shr_i181 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i170 v_shr_i181;
assume eq v_y_sroa_0_0_insert_ext_i170 v_shr_i181 && true;
(*   %add.i171 = add i128 %y.sroa.0.0.insert.ext.i170, %mul.i243 *)
add v_add_i171 v_y_sroa_0_0_insert_ext_i170 v_mul_i243;
(*   %5 = insertelement <2 x i128> undef, i128 %add.i191, i32 0 *)
mov v5_0 v_add_i191;
nondet undef_1@uint128;
mov v5_1 undef_1;
(*   %6 = insertelement <2 x i128> %5, i128 %add.i171, i32 1 *)
mov v6_0 v5_0;
mov v6_1 v_add_i171;
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
(*   %shr.i161 = lshr i128 %add.i171, 51 *)
(* You may need to modify here *)
split v_shr_i161 tmp_to_be_used v_add_i171 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v8_1;
assume tmp_v = v8_1 && true;
(*   %y.sroa.0.0.insert.ext.i = and i128 %shr.i161, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i v_shr_i161 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i v_shr_i161;
assume eq v_y_sroa_0_0_insert_ext_i v_shr_i161 && true;
(*   %add.i = add i128 %y.sroa.0.0.insert.ext.i, %mul.i235 *)
add v_add_i v_y_sroa_0_0_insert_ext_i v_mul_i235;
(*   %retval.sroa.0.0.extract.trunc.i152 = trunc i128 %add.i to i64 *)
(* == modified == *)
(* vpc v_retval_sroa_0_0_extract_trunc_i152@uint64 v_add_i@uint128; *)
cast v_retval_sroa_0_0_extract_trunc_i152@uint64 v_add_i@uint128;
(*   %and76 = and i64 %retval.sroa.0.0.extract.trunc.i152, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and76 v_retval_sroa_0_0_extract_trunc_i152 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i = lshr i128 %add.i, 51 *)
(* You may need to modify here *)
split v_shr_i tmp_to_be_used v_add_i 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and76;
assume tmp_v = v_and76 && true;
(*   %retval.sroa.0.0.extract.trunc.i144 = trunc i128 %shr.i to i64 *)
vpc v_retval_sroa_0_0_extract_trunc_i144@uint64 v_shr_i@uint128;
(*   %mul = mul i64 %retval.sroa.0.0.extract.trunc.i144, 19 *)
mul v_mul v_retval_sroa_0_0_extract_trunc_i144 19@uint64;
(*   %add = add i64 %mul, %and *)
add v_add v_mul v_and;
(*   %and82 = and i64 %add, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and82 v_add 0x7FFFFFFFFFFFF@uint64;
(*   %shr = lshr i64 %add, 51 *)
(* You may need to modify here *)
split v_shr tmp_to_be_used v_add 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and82;
assume tmp_v = v_and82 && true;
(*   %add83 = add nuw nsw i64 %shr, %and34 *)
add v_add83 v_shr v_and34;
(*   store i64 %and82, i64* %out, align 8, !tbaa !3 *)
mov mem1_0 v_and82;
(*   %arrayidx85 = getelementptr inbounds i64, i64* %out, i64 1 *)
(*   store i64 %add83, i64* %arrayidx85, align 8, !tbaa !3 *)
mov mem1_8 v_add83;
(*   %arrayidx86 = getelementptr inbounds i64, i64* %out, i64 2 *)
(*   %9 = bitcast i64* %arrayidx86 to <2 x i64>* *)
(*   store <2 x i64> %8, <2 x i64>* %9, align 8, !tbaa !3 *)
mov mem1_16 v8_0;
mov mem1_24 v8_1;
(*   %arrayidx88 = getelementptr inbounds i64, i64* %out, i64 4 *)
(*   store i64 %and76, i64* %arrayidx88, align 8, !tbaa !3 *)
mov mem1_32 v_and76;
(*   ret void *)


{
  (* feval h1 out == P.fmul (feval h0 f1) (v f2) *)
  (limbs 51 [mem1_0, mem1_8, mem1_16, mem1_24, mem1_32])
  =
  (
    (limbs 51 [mem0_0, mem0_8, mem0_16, mem0_24, mem0_32])
    *
    (v_f2)
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


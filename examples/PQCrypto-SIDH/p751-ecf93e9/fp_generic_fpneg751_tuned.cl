(* @laptop: cv -v -isafety fp_generic_fpneg751_tuned.cl
Parsing Cryptoline file:		[OK]		0.002092 seconds
Checking well-formedness:		[OK]		0.000961 seconds
Transforming to SSA form:		[OK]		0.000332 seconds
Normalizing specification:		[OK]		0.000286 seconds
Rewriting assignments:			[OK]		0.000206 seconds
Verifying program safety:		[OK]		0.583804 seconds
Verifying range specification:		[OK]		8.799573 seconds
Rewriting value-preserved casting:	[OK]		0.000062 seconds
Verifying algebraic specification:	[OK]		0.000166 seconds
Verification result:			[OK]		9.388347 seconds
*)

proc main (uint64 a00, uint64 a01, uint64 a02, uint64 a03, uint64 a04, uint64 a05,
           uint64 a06, uint64 a07, uint64 a08, uint64 a09, uint64 a10, uint64 a11) =
{
  true
  &&
  (* p751 = 2^372*3^239-1 *)
  (* a in [0, 2*p751-1] *)
  and [
    0@768 <=u limbs 64 [a00, a01, a02, a03, a04, a05, a06, a07, a08, a09, a10, a11],
    limbs 64 [a00, a01, a02, a03, a04, a05, a06, a07, a08, a09, a10, a11]
      <=u const 768 (2 * (2**372 * 3**239 - 1) - 1)
  ]
}

mov a_0 a00;
mov a_8 a01;
mov a_16 a02;
mov a_24 a03;
mov a_32 a04;
mov a_40 a05;
mov a_48 a06;
mov a_56 a07;
mov a_64 a08;
mov a_72 a09;
mov a_80 a10;
mov a_88 a11;
mov p751x2_0 0xFFFFFFFFFFFFFFFE@uint64;
mov p751x2_8 0xFFFFFFFFFFFFFFFF@uint64;
mov p751x2_16 0xFFFFFFFFFFFFFFFF@uint64;
mov p751x2_24 0xFFFFFFFFFFFFFFFF@uint64;
mov p751x2_32 0xFFFFFFFFFFFFFFFF@uint64;
mov p751x2_40 0xDD5FFFFFFFFFFFFF@uint64;
mov p751x2_48 0xC7D92D0A93F0F151@uint64;
mov p751x2_56 0xB52B363427EF98ED@uint64;
mov p751x2_64 0x109D30CFADD7D0ED@uint64;
mov p751x2_72 0x0AC56A08B964AE90@uint64;
mov p751x2_80 0x1C25213F2F75B8CD@uint64;
mov p751x2_88 0x0000DFCBAA83EE38@uint64;


(*   %0 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751x2, i64 0, i64 0), align 16, !tbaa !3 *)
mov v0 p751x2_0;
(*   %1 = load i64, i64* %a, align 8, !tbaa !3 *)
mov v1 a_0;
(*   %sub = sub i64 %0, %1 *)
subb discard_0 v_sub v0 v1;
(*   %xor.i = xor i64 %1, %0 *)
(* You may need to modify here *)
xor uint64 v_xor_i v1 v0;
(*   %xor1.i = xor i64 %sub, %1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i v_sub v1;
(*   %or.i = or i64 %xor1.i, %xor.i *)
(* You may need to modify here *)
or uint64 v_or_i v_xor1_i v_xor_i;
(*   %xor2.i = xor i64 %or.i, %0 *)
(* You may need to modify here *)
xor uint64 v_xor2_i v_or_i v0;
(*   %shr.i = lshr i64 %xor2.i, 63 *)
(* You may need to modify here *)
split v_shr_i tmp_to_be_used v_xor2_i 63;
(*   %conv.i = trunc i64 %shr.i to i32 *)
split tmp_v_shr_i v_conv_i v_shr_i 32;
vpc v_conv_i@uint32 v_conv_i@uint64;
(*   store i64 %sub, i64* %a, align 8, !tbaa !3 *)
mov a_0 v_sub;
(*   %2 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751x2, i64 0, i64 1), align 8, !tbaa !3 *)
mov v2 p751x2_8;
(*   %arrayidx2.1 = getelementptr inbounds i64, i64* %a, i64 1 *)
(*   %3 = load i64, i64* %arrayidx2.1, align 8, !tbaa !3 *)
mov v3 a_8;
(*   %sub.1 = sub i64 %2, %3 *)
subb discard_1 v_sub_1 v2 v3;
(*   %xor.i.1 = xor i64 %3, %2 *)
(* You may need to modify here *)
xor uint64 v_xor_i_1 v3 v2;
(*   %xor1.i.1 = xor i64 %sub.1, %3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i_1 v_sub_1 v3;
(*   %or.i.1 = or i64 %xor1.i.1, %xor.i.1 *)
(* You may need to modify here *)
or uint64 v_or_i_1 v_xor1_i_1 v_xor_i_1;
(*   %xor2.i.1 = xor i64 %or.i.1, %2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i_1 v_or_i_1 v2;
(*   %shr.i.1 = lshr i64 %xor2.i.1, 63 *)
(* You may need to modify here *)
split v_shr_i_1 tmp_to_be_used v_xor2_i_1 63;
(*   %conv.i.1 = trunc i64 %shr.i.1 to i32 *)
split tmp_v_shr_i_1 v_conv_i_1 v_shr_i_1 32;
vpc v_conv_i_1@uint32 v_conv_i_1@uint64;
(*   %sub.i.i.1 = sub i64 0, %sub.1 *)
subb discard_2 v_sub_i_i_1 (0)@uint64 v_sub_1;
(*   %or.i.i.1 = or i64 %sub.1, %sub.i.i.1 *)
(* You may need to modify here *)
or uint64 v_or_i_i_1 v_sub_1 v_sub_i_i_1;
(*   %shr.i.i.1 = lshr i64 %or.i.i.1, 63 *)
(* You may need to modify here *)
split v_shr_i_i_1 tmp_to_be_used v_or_i_i_1 63;
(*   %conv.i.i.1 = trunc i64 %shr.i.i.1 to i32 *)
split tmp_v_shr_i_i_1 v_conv_i_i_1 v_shr_i_i_1 32;
vpc v_conv_i_i_1@uint32 v_conv_i_i_1@uint64;
(*   %xor.i25.1 = xor i32 %conv.i.i.1, 1 *)
(* You may need to modify here *)
xor uint32 v_xor_i25_1 v_conv_i_i_1 (0x1)@uint32;
(*   %and.1 = and i32 %xor.i25.1, %conv.i *)
(* You may need to modify here *)
and uint32 v_and_1 v_xor_i25_1 v_conv_i;
(*   %or.1 = or i32 %and.1, %conv.i.1 *)
(* You may need to modify here *)
or uint32 v_or_1 v_and_1 v_conv_i_1;
(*   %sub8.1 = sub i64 %sub.1, %shr.i *)
subb discard_3 v_sub8_1 v_sub_1 v_shr_i;
(*   store i64 %sub8.1, i64* %arrayidx2.1, align 8, !tbaa !3 *)
mov a_8 v_sub8_1;
(*   %4 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751x2, i64 0, i64 2), align 16, !tbaa !3 *)
mov v4 p751x2_16;
(*   %arrayidx2.2 = getelementptr inbounds i64, i64* %a, i64 2 *)
(*   %5 = load i64, i64* %arrayidx2.2, align 8, !tbaa !3 *)
mov v5 a_16;
(*   %sub.2 = sub i64 %4, %5 *)
subb discard_4 v_sub_2 v4 v5;
(*   %xor.i.2 = xor i64 %5, %4 *)
(* You may need to modify here *)
xor uint64 v_xor_i_2 v5 v4;
(*   %xor1.i.2 = xor i64 %sub.2, %5 *)
(* You may need to modify here *)
xor uint64 v_xor1_i_2 v_sub_2 v5;
(*   %or.i.2 = or i64 %xor1.i.2, %xor.i.2 *)
(* You may need to modify here *)
or uint64 v_or_i_2 v_xor1_i_2 v_xor_i_2;
(*   %xor2.i.2 = xor i64 %or.i.2, %4 *)
(* You may need to modify here *)
xor uint64 v_xor2_i_2 v_or_i_2 v4;
(*   %shr.i.2 = lshr i64 %xor2.i.2, 63 *)
(* You may need to modify here *)
split v_shr_i_2 tmp_to_be_used v_xor2_i_2 63;
(*   %conv.i.2 = trunc i64 %shr.i.2 to i32 *)
split tmp_v_shr_i_2 v_conv_i_2 v_shr_i_2 32;
vpc v_conv_i_2@uint32 v_conv_i_2@uint64;
(*   %sub.i.i.2 = sub i64 0, %sub.2 *)
subb discard_5 v_sub_i_i_2 (0)@uint64 v_sub_2;
(*   %or.i.i.2 = or i64 %sub.2, %sub.i.i.2 *)
(* You may need to modify here *)
or uint64 v_or_i_i_2 v_sub_2 v_sub_i_i_2;
(*   %shr.i.i.2 = lshr i64 %or.i.i.2, 63 *)
(* You may need to modify here *)
split v_shr_i_i_2 tmp_to_be_used v_or_i_i_2 63;
(*   %conv.i.i.2 = trunc i64 %shr.i.i.2 to i32 *)
split tmp_v_shr_i_i_2 v_conv_i_i_2 v_shr_i_i_2 32;
vpc v_conv_i_i_2@uint32 v_conv_i_i_2@uint64;
(*   %xor.i25.2 = xor i32 %conv.i.i.2, 1 *)
(* You may need to modify here *)
xor uint32 v_xor_i25_2 v_conv_i_i_2 (0x1)@uint32;
(*   %and.2 = and i32 %xor.i25.2, %or.1 *)
(* You may need to modify here *)
and uint32 v_and_2 v_xor_i25_2 v_or_1;
(*   %or.2 = or i32 %and.2, %conv.i.2 *)
(* You may need to modify here *)
or uint32 v_or_2 v_and_2 v_conv_i_2;
(*   %conv.2 = zext i32 %or.1 to i64 *)
cast v_conv_2@uint64 v_or_1@uint32;
(*   %sub8.2 = sub i64 %sub.2, %conv.2 *)
subb discard_6 v_sub8_2 v_sub_2 v_conv_2;
(*   store i64 %sub8.2, i64* %arrayidx2.2, align 8, !tbaa !3 *)
mov a_16 v_sub8_2;
(*   %6 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751x2, i64 0, i64 3), align 8, !tbaa !3 *)
mov v6 p751x2_24;
(*   %arrayidx2.3 = getelementptr inbounds i64, i64* %a, i64 3 *)
(*   %7 = load i64, i64* %arrayidx2.3, align 8, !tbaa !3 *)
mov v7 a_24;
(*   %sub.3 = sub i64 %6, %7 *)
subb discard_7 v_sub_3 v6 v7;
(*   %xor.i.3 = xor i64 %7, %6 *)
(* You may need to modify here *)
xor uint64 v_xor_i_3 v7 v6;
(*   %xor1.i.3 = xor i64 %sub.3, %7 *)
(* You may need to modify here *)
xor uint64 v_xor1_i_3 v_sub_3 v7;
(*   %or.i.3 = or i64 %xor1.i.3, %xor.i.3 *)
(* You may need to modify here *)
or uint64 v_or_i_3 v_xor1_i_3 v_xor_i_3;
(*   %xor2.i.3 = xor i64 %or.i.3, %6 *)
(* You may need to modify here *)
xor uint64 v_xor2_i_3 v_or_i_3 v6;
(*   %shr.i.3 = lshr i64 %xor2.i.3, 63 *)
(* You may need to modify here *)
split v_shr_i_3 tmp_to_be_used v_xor2_i_3 63;
(*   %conv.i.3 = trunc i64 %shr.i.3 to i32 *)
split tmp_v_shr_i_3 v_conv_i_3 v_shr_i_3 32;
vpc v_conv_i_3@uint32 v_conv_i_3@uint64;
(*   %sub.i.i.3 = sub i64 0, %sub.3 *)
subb discard_8 v_sub_i_i_3 (0)@uint64 v_sub_3;
(*   %or.i.i.3 = or i64 %sub.3, %sub.i.i.3 *)
(* You may need to modify here *)
or uint64 v_or_i_i_3 v_sub_3 v_sub_i_i_3;
(*   %shr.i.i.3 = lshr i64 %or.i.i.3, 63 *)
(* You may need to modify here *)
split v_shr_i_i_3 tmp_to_be_used v_or_i_i_3 63;
(*   %conv.i.i.3 = trunc i64 %shr.i.i.3 to i32 *)
split tmp_v_shr_i_i_3 v_conv_i_i_3 v_shr_i_i_3 32;
vpc v_conv_i_i_3@uint32 v_conv_i_i_3@uint64;
(*   %xor.i25.3 = xor i32 %conv.i.i.3, 1 *)
(* You may need to modify here *)
xor uint32 v_xor_i25_3 v_conv_i_i_3 (0x1)@uint32;
(*   %and.3 = and i32 %xor.i25.3, %or.2 *)
(* You may need to modify here *)
and uint32 v_and_3 v_xor_i25_3 v_or_2;
(*   %or.3 = or i32 %and.3, %conv.i.3 *)
(* You may need to modify here *)
or uint32 v_or_3 v_and_3 v_conv_i_3;
(*   %conv.3 = zext i32 %or.2 to i64 *)
cast v_conv_3@uint64 v_or_2@uint32;
(*   %sub8.3 = sub i64 %sub.3, %conv.3 *)
subb discard_9 v_sub8_3 v_sub_3 v_conv_3;
(*   store i64 %sub8.3, i64* %arrayidx2.3, align 8, !tbaa !3 *)
mov a_24 v_sub8_3;
(*   %8 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751x2, i64 0, i64 4), align 16, !tbaa !3 *)
mov v8 p751x2_32;
(*   %arrayidx2.4 = getelementptr inbounds i64, i64* %a, i64 4 *)
(*   %9 = load i64, i64* %arrayidx2.4, align 8, !tbaa !3 *)
mov v9 a_32;
(*   %sub.4 = sub i64 %8, %9 *)
subb discard_10 v_sub_4 v8 v9;
(*   %xor.i.4 = xor i64 %9, %8 *)
(* You may need to modify here *)
xor uint64 v_xor_i_4 v9 v8;
(*   %xor1.i.4 = xor i64 %sub.4, %9 *)
(* You may need to modify here *)
xor uint64 v_xor1_i_4 v_sub_4 v9;
(*   %or.i.4 = or i64 %xor1.i.4, %xor.i.4 *)
(* You may need to modify here *)
or uint64 v_or_i_4 v_xor1_i_4 v_xor_i_4;
(*   %xor2.i.4 = xor i64 %or.i.4, %8 *)
(* You may need to modify here *)
xor uint64 v_xor2_i_4 v_or_i_4 v8;
(*   %shr.i.4 = lshr i64 %xor2.i.4, 63 *)
(* You may need to modify here *)
split v_shr_i_4 tmp_to_be_used v_xor2_i_4 63;
(*   %conv.i.4 = trunc i64 %shr.i.4 to i32 *)
split tmp_v_shr_i_4 v_conv_i_4 v_shr_i_4 32;
vpc v_conv_i_4@uint32 v_conv_i_4@uint64;
(*   %sub.i.i.4 = sub i64 0, %sub.4 *)
subb discard_11 v_sub_i_i_4 (0)@uint64 v_sub_4;
(*   %or.i.i.4 = or i64 %sub.4, %sub.i.i.4 *)
(* You may need to modify here *)
or uint64 v_or_i_i_4 v_sub_4 v_sub_i_i_4;
(*   %shr.i.i.4 = lshr i64 %or.i.i.4, 63 *)
(* You may need to modify here *)
split v_shr_i_i_4 tmp_to_be_used v_or_i_i_4 63;
(*   %conv.i.i.4 = trunc i64 %shr.i.i.4 to i32 *)
split tmp_v_shr_i_i_4 v_conv_i_i_4 v_shr_i_i_4 32;
vpc v_conv_i_i_4@uint32 v_conv_i_i_4@uint64;
(*   %xor.i25.4 = xor i32 %conv.i.i.4, 1 *)
(* You may need to modify here *)
xor uint32 v_xor_i25_4 v_conv_i_i_4 (0x1)@uint32;
(*   %and.4 = and i32 %xor.i25.4, %or.3 *)
(* You may need to modify here *)
and uint32 v_and_4 v_xor_i25_4 v_or_3;
(*   %or.4 = or i32 %and.4, %conv.i.4 *)
(* You may need to modify here *)
or uint32 v_or_4 v_and_4 v_conv_i_4;
(*   %conv.4 = zext i32 %or.3 to i64 *)
cast v_conv_4@uint64 v_or_3@uint32;
(*   %sub8.4 = sub i64 %sub.4, %conv.4 *)
subb discard_12 v_sub8_4 v_sub_4 v_conv_4;
(*   store i64 %sub8.4, i64* %arrayidx2.4, align 8, !tbaa !3 *)
mov a_32 v_sub8_4;
(*   %10 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751x2, i64 0, i64 5), align 8, !tbaa !3 *)
mov v10 p751x2_40;
(*   %arrayidx2.5 = getelementptr inbounds i64, i64* %a, i64 5 *)
(*   %11 = load i64, i64* %arrayidx2.5, align 8, !tbaa !3 *)
mov v11 a_40;
(*   %sub.5 = sub i64 %10, %11 *)
subb discard_13 v_sub_5 v10 v11;
(*   %xor.i.5 = xor i64 %11, %10 *)
(* You may need to modify here *)
xor uint64 v_xor_i_5 v11 v10;
(*   %xor1.i.5 = xor i64 %sub.5, %11 *)
(* You may need to modify here *)
xor uint64 v_xor1_i_5 v_sub_5 v11;
(*   %or.i.5 = or i64 %xor1.i.5, %xor.i.5 *)
(* You may need to modify here *)
or uint64 v_or_i_5 v_xor1_i_5 v_xor_i_5;
(*   %xor2.i.5 = xor i64 %or.i.5, %10 *)
(* You may need to modify here *)
xor uint64 v_xor2_i_5 v_or_i_5 v10;
(*   %shr.i.5 = lshr i64 %xor2.i.5, 63 *)
(* You may need to modify here *)
split v_shr_i_5 tmp_to_be_used v_xor2_i_5 63;
(*   %conv.i.5 = trunc i64 %shr.i.5 to i32 *)
split tmp_v_shr_i_5 v_conv_i_5 v_shr_i_5 32;
vpc v_conv_i_5@uint32 v_conv_i_5@uint64;
(*   %sub.i.i.5 = sub i64 0, %sub.5 *)
subb discard_14 v_sub_i_i_5 (0)@uint64 v_sub_5;
(*   %or.i.i.5 = or i64 %sub.5, %sub.i.i.5 *)
(* You may need to modify here *)
or uint64 v_or_i_i_5 v_sub_5 v_sub_i_i_5;
(*   %shr.i.i.5 = lshr i64 %or.i.i.5, 63 *)
(* You may need to modify here *)
split v_shr_i_i_5 tmp_to_be_used v_or_i_i_5 63;
(*   %conv.i.i.5 = trunc i64 %shr.i.i.5 to i32 *)
split tmp_v_shr_i_i_5 v_conv_i_i_5 v_shr_i_i_5 32;
vpc v_conv_i_i_5@uint32 v_conv_i_i_5@uint64;
(*   %xor.i25.5 = xor i32 %conv.i.i.5, 1 *)
(* You may need to modify here *)
xor uint32 v_xor_i25_5 v_conv_i_i_5 (0x1)@uint32;
(*   %and.5 = and i32 %xor.i25.5, %or.4 *)
(* You may need to modify here *)
and uint32 v_and_5 v_xor_i25_5 v_or_4;
(*   %or.5 = or i32 %and.5, %conv.i.5 *)
(* You may need to modify here *)
or uint32 v_or_5 v_and_5 v_conv_i_5;
(*   %conv.5 = zext i32 %or.4 to i64 *)
cast v_conv_5@uint64 v_or_4@uint32;
(*   %sub8.5 = sub i64 %sub.5, %conv.5 *)
subb discard_15 v_sub8_5 v_sub_5 v_conv_5;
(*   store i64 %sub8.5, i64* %arrayidx2.5, align 8, !tbaa !3 *)
mov a_40 v_sub8_5;
(*   %12 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751x2, i64 0, i64 6), align 16, !tbaa !3 *)
mov v12 p751x2_48;
(*   %arrayidx2.6 = getelementptr inbounds i64, i64* %a, i64 6 *)
(*   %13 = load i64, i64* %arrayidx2.6, align 8, !tbaa !3 *)
mov v13 a_48;
(*   %sub.6 = sub i64 %12, %13 *)
subb discard_16 v_sub_6 v12 v13;
(*   %xor.i.6 = xor i64 %13, %12 *)
(* You may need to modify here *)
xor uint64 v_xor_i_6 v13 v12;
(*   %xor1.i.6 = xor i64 %sub.6, %13 *)
(* You may need to modify here *)
xor uint64 v_xor1_i_6 v_sub_6 v13;
(*   %or.i.6 = or i64 %xor1.i.6, %xor.i.6 *)
(* You may need to modify here *)
or uint64 v_or_i_6 v_xor1_i_6 v_xor_i_6;
(*   %xor2.i.6 = xor i64 %or.i.6, %12 *)
(* You may need to modify here *)
xor uint64 v_xor2_i_6 v_or_i_6 v12;
(*   %shr.i.6 = lshr i64 %xor2.i.6, 63 *)
(* You may need to modify here *)
split v_shr_i_6 tmp_to_be_used v_xor2_i_6 63;
(*   %conv.i.6 = trunc i64 %shr.i.6 to i32 *)
split tmp_v_shr_i_6 v_conv_i_6 v_shr_i_6 32;
vpc v_conv_i_6@uint32 v_conv_i_6@uint64;
(*   %sub.i.i.6 = sub i64 0, %sub.6 *)
subb discard_17 v_sub_i_i_6 (0)@uint64 v_sub_6;
(*   %or.i.i.6 = or i64 %sub.6, %sub.i.i.6 *)
(* You may need to modify here *)
or uint64 v_or_i_i_6 v_sub_6 v_sub_i_i_6;
(*   %shr.i.i.6 = lshr i64 %or.i.i.6, 63 *)
(* You may need to modify here *)
split v_shr_i_i_6 tmp_to_be_used v_or_i_i_6 63;
(*   %conv.i.i.6 = trunc i64 %shr.i.i.6 to i32 *)
split tmp_v_shr_i_i_6 v_conv_i_i_6 v_shr_i_i_6 32;
vpc v_conv_i_i_6@uint32 v_conv_i_i_6@uint64;
(*   %xor.i25.6 = xor i32 %conv.i.i.6, 1 *)
(* You may need to modify here *)
xor uint32 v_xor_i25_6 v_conv_i_i_6 (0x1)@uint32;
(*   %and.6 = and i32 %xor.i25.6, %or.5 *)
(* You may need to modify here *)
and uint32 v_and_6 v_xor_i25_6 v_or_5;
(*   %or.6 = or i32 %and.6, %conv.i.6 *)
(* You may need to modify here *)
or uint32 v_or_6 v_and_6 v_conv_i_6;
(*   %conv.6 = zext i32 %or.5 to i64 *)
cast v_conv_6@uint64 v_or_5@uint32;
(*   %sub8.6 = sub i64 %sub.6, %conv.6 *)
subb discard_18 v_sub8_6 v_sub_6 v_conv_6;
(*   store i64 %sub8.6, i64* %arrayidx2.6, align 8, !tbaa !3 *)
mov a_48 v_sub8_6;
(*   %14 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751x2, i64 0, i64 7), align 8, !tbaa !3 *)
mov v14 p751x2_56;
(*   %arrayidx2.7 = getelementptr inbounds i64, i64* %a, i64 7 *)
(*   %15 = load i64, i64* %arrayidx2.7, align 8, !tbaa !3 *)
mov v15 a_56;
(*   %sub.7 = sub i64 %14, %15 *)
subb discard_19 v_sub_7 v14 v15;
(*   %xor.i.7 = xor i64 %15, %14 *)
(* You may need to modify here *)
xor uint64 v_xor_i_7 v15 v14;
(*   %xor1.i.7 = xor i64 %sub.7, %15 *)
(* You may need to modify here *)
xor uint64 v_xor1_i_7 v_sub_7 v15;
(*   %or.i.7 = or i64 %xor1.i.7, %xor.i.7 *)
(* You may need to modify here *)
or uint64 v_or_i_7 v_xor1_i_7 v_xor_i_7;
(*   %xor2.i.7 = xor i64 %or.i.7, %14 *)
(* You may need to modify here *)
xor uint64 v_xor2_i_7 v_or_i_7 v14;
(*   %shr.i.7 = lshr i64 %xor2.i.7, 63 *)
(* You may need to modify here *)
split v_shr_i_7 tmp_to_be_used v_xor2_i_7 63;
(*   %conv.i.7 = trunc i64 %shr.i.7 to i32 *)
split tmp_v_shr_i_7 v_conv_i_7 v_shr_i_7 32;
vpc v_conv_i_7@uint32 v_conv_i_7@uint64;
(*   %sub.i.i.7 = sub i64 0, %sub.7 *)
subb discard_20 v_sub_i_i_7 (0)@uint64 v_sub_7;
(*   %or.i.i.7 = or i64 %sub.7, %sub.i.i.7 *)
(* You may need to modify here *)
or uint64 v_or_i_i_7 v_sub_7 v_sub_i_i_7;
(*   %shr.i.i.7 = lshr i64 %or.i.i.7, 63 *)
(* You may need to modify here *)
split v_shr_i_i_7 tmp_to_be_used v_or_i_i_7 63;
(*   %conv.i.i.7 = trunc i64 %shr.i.i.7 to i32 *)
split tmp_v_shr_i_i_7 v_conv_i_i_7 v_shr_i_i_7 32;
vpc v_conv_i_i_7@uint32 v_conv_i_i_7@uint64;
(*   %xor.i25.7 = xor i32 %conv.i.i.7, 1 *)
(* You may need to modify here *)
xor uint32 v_xor_i25_7 v_conv_i_i_7 (0x1)@uint32;
(*   %and.7 = and i32 %xor.i25.7, %or.6 *)
(* You may need to modify here *)
and uint32 v_and_7 v_xor_i25_7 v_or_6;
(*   %or.7 = or i32 %and.7, %conv.i.7 *)
(* You may need to modify here *)
or uint32 v_or_7 v_and_7 v_conv_i_7;
(*   %conv.7 = zext i32 %or.6 to i64 *)
cast v_conv_7@uint64 v_or_6@uint32;
(*   %sub8.7 = sub i64 %sub.7, %conv.7 *)
subb discard_21 v_sub8_7 v_sub_7 v_conv_7;
(*   store i64 %sub8.7, i64* %arrayidx2.7, align 8, !tbaa !3 *)
mov a_56 v_sub8_7;
(*   %16 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751x2, i64 0, i64 8), align 16, !tbaa !3 *)
mov v16 p751x2_64;
(*   %arrayidx2.8 = getelementptr inbounds i64, i64* %a, i64 8 *)
(*   %17 = load i64, i64* %arrayidx2.8, align 8, !tbaa !3 *)
mov v17 a_64;
(*   %sub.8 = sub i64 %16, %17 *)
subb discard_22 v_sub_8 v16 v17;
(*   %xor.i.8 = xor i64 %17, %16 *)
(* You may need to modify here *)
xor uint64 v_xor_i_8 v17 v16;
(*   %xor1.i.8 = xor i64 %sub.8, %17 *)
(* You may need to modify here *)
xor uint64 v_xor1_i_8 v_sub_8 v17;
(*   %or.i.8 = or i64 %xor1.i.8, %xor.i.8 *)
(* You may need to modify here *)
or uint64 v_or_i_8 v_xor1_i_8 v_xor_i_8;
(*   %xor2.i.8 = xor i64 %or.i.8, %16 *)
(* You may need to modify here *)
xor uint64 v_xor2_i_8 v_or_i_8 v16;
(*   %shr.i.8 = lshr i64 %xor2.i.8, 63 *)
(* You may need to modify here *)
split v_shr_i_8 tmp_to_be_used v_xor2_i_8 63;
(*   %conv.i.8 = trunc i64 %shr.i.8 to i32 *)
split tmp_v_shr_i_8 v_conv_i_8 v_shr_i_8 32;
vpc v_conv_i_8@uint32 v_conv_i_8@uint64;
(*   %sub.i.i.8 = sub i64 0, %sub.8 *)
subb discard_23 v_sub_i_i_8 (0)@uint64 v_sub_8;
(*   %or.i.i.8 = or i64 %sub.8, %sub.i.i.8 *)
(* You may need to modify here *)
or uint64 v_or_i_i_8 v_sub_8 v_sub_i_i_8;
(*   %shr.i.i.8 = lshr i64 %or.i.i.8, 63 *)
(* You may need to modify here *)
split v_shr_i_i_8 tmp_to_be_used v_or_i_i_8 63;
(*   %conv.i.i.8 = trunc i64 %shr.i.i.8 to i32 *)
split tmp_v_shr_i_i_8 v_conv_i_i_8 v_shr_i_i_8 32;
vpc v_conv_i_i_8@uint32 v_conv_i_i_8@uint64;
(*   %xor.i25.8 = xor i32 %conv.i.i.8, 1 *)
(* You may need to modify here *)
xor uint32 v_xor_i25_8 v_conv_i_i_8 (0x1)@uint32;
(*   %and.8 = and i32 %xor.i25.8, %or.7 *)
(* You may need to modify here *)
and uint32 v_and_8 v_xor_i25_8 v_or_7;
(*   %or.8 = or i32 %and.8, %conv.i.8 *)
(* You may need to modify here *)
or uint32 v_or_8 v_and_8 v_conv_i_8;
(*   %conv.8 = zext i32 %or.7 to i64 *)
cast v_conv_8@uint64 v_or_7@uint32;
(*   %sub8.8 = sub i64 %sub.8, %conv.8 *)
subb discard_24 v_sub8_8 v_sub_8 v_conv_8;
(*   store i64 %sub8.8, i64* %arrayidx2.8, align 8, !tbaa !3 *)
mov a_64 v_sub8_8;
(*   %18 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751x2, i64 0, i64 9), align 8, !tbaa !3 *)
mov v18 p751x2_72;
(*   %arrayidx2.9 = getelementptr inbounds i64, i64* %a, i64 9 *)
(*   %19 = load i64, i64* %arrayidx2.9, align 8, !tbaa !3 *)
mov v19 a_72;
(*   %sub.9 = sub i64 %18, %19 *)
subb discard_25 v_sub_9 v18 v19;
(*   %xor.i.9 = xor i64 %19, %18 *)
(* You may need to modify here *)
xor uint64 v_xor_i_9 v19 v18;
(*   %xor1.i.9 = xor i64 %sub.9, %19 *)
(* You may need to modify here *)
xor uint64 v_xor1_i_9 v_sub_9 v19;
(*   %or.i.9 = or i64 %xor1.i.9, %xor.i.9 *)
(* You may need to modify here *)
or uint64 v_or_i_9 v_xor1_i_9 v_xor_i_9;
(*   %xor2.i.9 = xor i64 %or.i.9, %18 *)
(* You may need to modify here *)
xor uint64 v_xor2_i_9 v_or_i_9 v18;
(*   %shr.i.9 = lshr i64 %xor2.i.9, 63 *)
(* You may need to modify here *)
split v_shr_i_9 tmp_to_be_used v_xor2_i_9 63;
(*   %conv.i.9 = trunc i64 %shr.i.9 to i32 *)
split tmp_v_shr_i_9 v_conv_i_9 v_shr_i_9 32;
vpc v_conv_i_9@uint32 v_conv_i_9@uint64;
(*   %sub.i.i.9 = sub i64 0, %sub.9 *)
subb discard_26 v_sub_i_i_9 (0)@uint64 v_sub_9;
(*   %or.i.i.9 = or i64 %sub.9, %sub.i.i.9 *)
(* You may need to modify here *)
or uint64 v_or_i_i_9 v_sub_9 v_sub_i_i_9;
(*   %shr.i.i.9 = lshr i64 %or.i.i.9, 63 *)
(* You may need to modify here *)
split v_shr_i_i_9 tmp_to_be_used v_or_i_i_9 63;
(*   %conv.i.i.9 = trunc i64 %shr.i.i.9 to i32 *)
split tmp_v_shr_i_i_9 v_conv_i_i_9 v_shr_i_i_9 32;
vpc v_conv_i_i_9@uint32 v_conv_i_i_9@uint64;
(*   %xor.i25.9 = xor i32 %conv.i.i.9, 1 *)
(* You may need to modify here *)
xor uint32 v_xor_i25_9 v_conv_i_i_9 (0x1)@uint32;
(*   %and.9 = and i32 %xor.i25.9, %or.8 *)
(* You may need to modify here *)
and uint32 v_and_9 v_xor_i25_9 v_or_8;
(*   %or.9 = or i32 %and.9, %conv.i.9 *)
(* You may need to modify here *)
or uint32 v_or_9 v_and_9 v_conv_i_9;
(*   %conv.9 = zext i32 %or.8 to i64 *)
cast v_conv_9@uint64 v_or_8@uint32;
(*   %sub8.9 = sub i64 %sub.9, %conv.9 *)
subb discard_27 v_sub8_9 v_sub_9 v_conv_9;
(*   store i64 %sub8.9, i64* %arrayidx2.9, align 8, !tbaa !3 *)
mov a_72 v_sub8_9;
(*   %20 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751x2, i64 0, i64 10), align 16, !tbaa !3 *)
mov v20 p751x2_80;
(*   %arrayidx2.10 = getelementptr inbounds i64, i64* %a, i64 10 *)
(*   %21 = load i64, i64* %arrayidx2.10, align 8, !tbaa !3 *)
mov v21 a_80;
(*   %sub.10 = sub i64 %20, %21 *)
subb discard_28 v_sub_10 v20 v21;
(*   %xor.i.10 = xor i64 %21, %20 *)
(* You may need to modify here *)
xor uint64 v_xor_i_10 v21 v20;
(*   %xor1.i.10 = xor i64 %sub.10, %21 *)
(* You may need to modify here *)
xor uint64 v_xor1_i_10 v_sub_10 v21;
(*   %or.i.10 = or i64 %xor1.i.10, %xor.i.10 *)
(* You may need to modify here *)
or uint64 v_or_i_10 v_xor1_i_10 v_xor_i_10;
(*   %xor2.i.10 = xor i64 %or.i.10, %20 *)
(* You may need to modify here *)
xor uint64 v_xor2_i_10 v_or_i_10 v20;
(*   %shr.i.10 = lshr i64 %xor2.i.10, 63 *)
(* You may need to modify here *)
split v_shr_i_10 tmp_to_be_used v_xor2_i_10 63;
(*   %conv.i.10 = trunc i64 %shr.i.10 to i32 *)
split tmp_v_shr_i_10 v_conv_i_10 v_shr_i_10 32;
vpc v_conv_i_10@uint32 v_conv_i_10@uint64;
(*   %sub.i.i.10 = sub i64 0, %sub.10 *)
subb discard_29 v_sub_i_i_10 (0)@uint64 v_sub_10;
(*   %or.i.i.10 = or i64 %sub.10, %sub.i.i.10 *)
(* You may need to modify here *)
or uint64 v_or_i_i_10 v_sub_10 v_sub_i_i_10;
(*   %shr.i.i.10 = lshr i64 %or.i.i.10, 63 *)
(* You may need to modify here *)
split v_shr_i_i_10 tmp_to_be_used v_or_i_i_10 63;
(*   %conv.i.i.10 = trunc i64 %shr.i.i.10 to i32 *)
split tmp_v_shr_i_i_10 v_conv_i_i_10 v_shr_i_i_10 32;
vpc v_conv_i_i_10@uint32 v_conv_i_i_10@uint64;
(*   %xor.i25.10 = xor i32 %conv.i.i.10, 1 *)
(* You may need to modify here *)
xor uint32 v_xor_i25_10 v_conv_i_i_10 (0x1)@uint32;
(*   %and.10 = and i32 %xor.i25.10, %or.9 *)
(* You may need to modify here *)
and uint32 v_and_10 v_xor_i25_10 v_or_9;
(*   %or.10 = or i32 %and.10, %conv.i.10 *)
(* You may need to modify here *)
or uint32 v_or_10 v_and_10 v_conv_i_10;
(*   %conv.10 = zext i32 %or.9 to i64 *)
cast v_conv_10@uint64 v_or_9@uint32;
(*   %sub8.10 = sub i64 %sub.10, %conv.10 *)
subb discard_30 v_sub8_10 v_sub_10 v_conv_10;
(*   store i64 %sub8.10, i64* %arrayidx2.10, align 8, !tbaa !3 *)
mov a_80 v_sub8_10;
(*   %22 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751x2, i64 0, i64 11), align 8, !tbaa !3 *)
mov v22 p751x2_88;
(*   %arrayidx2.11 = getelementptr inbounds i64, i64* %a, i64 11 *)
(*   %23 = load i64, i64* %arrayidx2.11, align 8, !tbaa !3 *)
mov v23 a_88;
(*   %sub.11 = sub i64 %22, %23 *)
subb discard_31 v_sub_11 v22 v23;
(*   %conv.11 = zext i32 %or.10 to i64 *)
cast v_conv_11@uint64 v_or_10@uint32;
(*   %sub8.11 = sub i64 %sub.11, %conv.11 *)
subb discard_32 v_sub8_11 v_sub_11 v_conv_11;
(*   store i64 %sub8.11, i64* %arrayidx2.11, align 8, !tbaa !3 *)
mov a_88 v_sub8_11;
(*   ret void *)


(* Outputs *)

mov c00 a_0@uint64;
mov c01 a_8@uint64;
mov c02 a_16@uint64;
mov c03 a_24@uint64;
mov c04 a_32@uint64;
mov c05 a_40@uint64;
mov c06 a_48@uint64;
mov c07 a_56@uint64;
mov c08 a_64@uint64;
mov c09 a_72@uint64;
mov c10 a_80@uint64;
mov c11 a_88@uint64;


{
  true
  &&
  and [
    (* c = -a mod p751 *)  
    equmod limbs 64 [c00, c01, c02, c03, c04, c05, c06, c07, c08, c09, c10, c11]
           + limbs 64 [a00, a01, a02, a03, a04, a05, a06, a07, a08, a09, a10, a11]
	   0@768
	   const 768 (2**372 * 3**239 - 1),
    (* FAILED: c in [0, 2*p751-1] *)	   
    (* 0@768 <=u limbs 64 [c00, c01, c02, c03, c04, c05, c06, c07, c08, c09, c10, c11], *)
    (* limbs 64 [c00, c01, c02, c03, c04, c05, c06, c07, c08, c09, c10, c11] *)
    (*   <=u const 768 (2 * (2**372 * 3**239 - 1) - 1) *)

    (* Verified: c in [1, 2*p751] *)	   
    1@768 <=u limbs 64 [c00, c01, c02, c03, c04, c05, c06, c07, c08, c09, c10, c11],
    limbs 64 [c00, c01, c02, c03, c04, c05, c06, c07, c08, c09, c10, c11]
      <=u const 768 (2 * (2**372 * 3**239 - 1))
  ]
}


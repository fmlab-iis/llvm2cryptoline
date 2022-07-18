(* @laptop: cv -v -isafety fp_generic_fpcorrection503_tuned.cl
Parsing Cryptoline file:		[OK]		0.002509 seconds
Checking well-formedness:		[OK]		0.001038 seconds
Transforming to SSA form:		[OK]		0.000361 seconds
Normalizing specification:		[OK]		0.000310 seconds
Rewriting assignments:			[OK]		0.000295 seconds
Verifying program safety:		[OK]		0.412249 seconds
Verifying range specification:		[OK]		16.340953 seconds
Rewriting value-preserved casting:	[OK]		0.000061 seconds
Verifying algebraic specification:	[OK]		0.000180 seconds
Verification result:			[OK]		16.758844 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5, uint64 a6, uint64 a7) =
{
  true
  &&
  (* p503 = 2^250*3^159-1 *)
  (* a in [0, 2*p503-1] *)
  and [
    0@512 <=u limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7],
    limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7] <=u const 512 (2 * (2**250 * 3**159 - 1) - 1)
  ]
}

mov a_0 a0;
mov a_8 a1;
mov a_16 a2;
mov a_24 a3;
mov a_32 a4;
mov a_40 a5;
mov a_48 a6;
mov a_56 a7;
mov p503_0 0xFFFFFFFFFFFFFFFF@uint64;
mov p503_8 0xFFFFFFFFFFFFFFFF@uint64;
mov p503_16 0xFFFFFFFFFFFFFFFF@uint64;
mov p503_24 0xABFFFFFFFFFFFFFF@uint64;
mov p503_32 0x13085BDA2211E7A0@uint64;
mov p503_40 0x1B9BF6C87B7E7DAF@uint64;
mov p503_48 0x6045C6BDDA77A4D0@uint64;
mov p503_56 0x004066F541811E1E@uint64;


(*   %0 = load i64, i64* %a, align 8, !tbaa !3 *)
mov v0 a_0;
(*   %1 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @p503, i64 0, i64 0), align 16, !tbaa !3 *)
mov v1 p503_0;
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
(*   %arrayidx.1 = getelementptr inbounds i64, i64* %a, i64 1 *)
(*   %2 = load i64, i64* %arrayidx.1, align 8, !tbaa !3 *)
mov v2 a_8;
(*   %3 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @p503, i64 0, i64 1), align 8, !tbaa !3 *)
mov v3 p503_8;
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
(*   %xor.i79.1 = xor i32 %conv.i.i.1, 1 *)
(* You may need to modify here *)
xor uint32 v_xor_i79_1 v_conv_i_i_1 (0x1)@uint32;
(*   %and.1 = and i32 %xor.i79.1, %conv.i *)
(* You may need to modify here *)
and uint32 v_and_1 v_xor_i79_1 v_conv_i;
(*   %or.1 = or i32 %and.1, %conv.i.1 *)
(* You may need to modify here *)
or uint32 v_or_1 v_and_1 v_conv_i_1;
(*   %sub8.1 = sub i64 %sub.1, %shr.i *)
subb discard_3 v_sub8_1 v_sub_1 v_shr_i;
(*   store i64 %sub8.1, i64* %arrayidx.1, align 8, !tbaa !3 *)
mov a_8 v_sub8_1;
(*   %arrayidx.2 = getelementptr inbounds i64, i64* %a, i64 2 *)
(*   %4 = load i64, i64* %arrayidx.2, align 8, !tbaa !3 *)
mov v4 a_16;
(*   %5 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @p503, i64 0, i64 2), align 16, !tbaa !3 *)
mov v5 p503_16;
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
(*   %xor.i79.2 = xor i32 %conv.i.i.2, 1 *)
(* You may need to modify here *)
xor uint32 v_xor_i79_2 v_conv_i_i_2 (0x1)@uint32;
(*   %and.2 = and i32 %xor.i79.2, %or.1 *)
(* You may need to modify here *)
and uint32 v_and_2 v_xor_i79_2 v_or_1;
(*   %or.2 = or i32 %and.2, %conv.i.2 *)
(* You may need to modify here *)
or uint32 v_or_2 v_and_2 v_conv_i_2;
(*   %conv.2 = zext i32 %or.1 to i64 *)
cast v_conv_2@uint64 v_or_1@uint32;
(*   %sub8.2 = sub i64 %sub.2, %conv.2 *)
subb discard_6 v_sub8_2 v_sub_2 v_conv_2;
(*   store i64 %sub8.2, i64* %arrayidx.2, align 8, !tbaa !3 *)
mov a_16 v_sub8_2;
(*   %arrayidx.3 = getelementptr inbounds i64, i64* %a, i64 3 *)
(*   %6 = load i64, i64* %arrayidx.3, align 8, !tbaa !3 *)
mov v6 a_24;
(*   %7 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @p503, i64 0, i64 3), align 8, !tbaa !3 *)
mov v7 p503_24;
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
(*   %xor.i79.3 = xor i32 %conv.i.i.3, 1 *)
(* You may need to modify here *)
xor uint32 v_xor_i79_3 v_conv_i_i_3 (0x1)@uint32;
(*   %and.3 = and i32 %xor.i79.3, %or.2 *)
(* You may need to modify here *)
and uint32 v_and_3 v_xor_i79_3 v_or_2;
(*   %or.3 = or i32 %and.3, %conv.i.3 *)
(* You may need to modify here *)
or uint32 v_or_3 v_and_3 v_conv_i_3;
(*   %conv.3 = zext i32 %or.2 to i64 *)
cast v_conv_3@uint64 v_or_2@uint32;
(*   %sub8.3 = sub i64 %sub.3, %conv.3 *)
subb discard_9 v_sub8_3 v_sub_3 v_conv_3;
(*   store i64 %sub8.3, i64* %arrayidx.3, align 8, !tbaa !3 *)
mov a_24 v_sub8_3;
(*   %arrayidx.4 = getelementptr inbounds i64, i64* %a, i64 4 *)
(*   %8 = load i64, i64* %arrayidx.4, align 8, !tbaa !3 *)
mov v8 a_32;
(*   %9 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @p503, i64 0, i64 4), align 16, !tbaa !3 *)
mov v9 p503_32;
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
(*   %xor.i79.4 = xor i32 %conv.i.i.4, 1 *)
(* You may need to modify here *)
xor uint32 v_xor_i79_4 v_conv_i_i_4 (0x1)@uint32;
(*   %and.4 = and i32 %xor.i79.4, %or.3 *)
(* You may need to modify here *)
and uint32 v_and_4 v_xor_i79_4 v_or_3;
(*   %or.4 = or i32 %and.4, %conv.i.4 *)
(* You may need to modify here *)
or uint32 v_or_4 v_and_4 v_conv_i_4;
(*   %conv.4 = zext i32 %or.3 to i64 *)
cast v_conv_4@uint64 v_or_3@uint32;
(*   %sub8.4 = sub i64 %sub.4, %conv.4 *)
subb discard_12 v_sub8_4 v_sub_4 v_conv_4;
(*   store i64 %sub8.4, i64* %arrayidx.4, align 8, !tbaa !3 *)
mov a_32 v_sub8_4;
(*   %arrayidx.5 = getelementptr inbounds i64, i64* %a, i64 5 *)
(*   %10 = load i64, i64* %arrayidx.5, align 8, !tbaa !3 *)
mov v10 a_40;
(*   %11 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @p503, i64 0, i64 5), align 8, !tbaa !3 *)
mov v11 p503_40;
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
(*   %xor.i79.5 = xor i32 %conv.i.i.5, 1 *)
(* You may need to modify here *)
xor uint32 v_xor_i79_5 v_conv_i_i_5 (0x1)@uint32;
(*   %and.5 = and i32 %xor.i79.5, %or.4 *)
(* You may need to modify here *)
and uint32 v_and_5 v_xor_i79_5 v_or_4;
(*   %or.5 = or i32 %and.5, %conv.i.5 *)
(* You may need to modify here *)
or uint32 v_or_5 v_and_5 v_conv_i_5;
(*   %conv.5 = zext i32 %or.4 to i64 *)
cast v_conv_5@uint64 v_or_4@uint32;
(*   %sub8.5 = sub i64 %sub.5, %conv.5 *)
subb discard_15 v_sub8_5 v_sub_5 v_conv_5;
(*   store i64 %sub8.5, i64* %arrayidx.5, align 8, !tbaa !3 *)
mov a_40 v_sub8_5;
(*   %arrayidx.6 = getelementptr inbounds i64, i64* %a, i64 6 *)
(*   %12 = load i64, i64* %arrayidx.6, align 8, !tbaa !3 *)
mov v12 a_48;
(*   %13 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @p503, i64 0, i64 6), align 16, !tbaa !3 *)
mov v13 p503_48;
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
(*   %xor.i79.6 = xor i32 %conv.i.i.6, 1 *)
(* You may need to modify here *)
xor uint32 v_xor_i79_6 v_conv_i_i_6 (0x1)@uint32;
(*   %and.6 = and i32 %xor.i79.6, %or.5 *)
(* You may need to modify here *)
and uint32 v_and_6 v_xor_i79_6 v_or_5;
(*   %or.6 = or i32 %and.6, %conv.i.6 *)
(* You may need to modify here *)
or uint32 v_or_6 v_and_6 v_conv_i_6;
(*   %conv.6 = zext i32 %or.5 to i64 *)
cast v_conv_6@uint64 v_or_5@uint32;
(*   %sub8.6 = sub i64 %sub.6, %conv.6 *)
subb discard_18 v_sub8_6 v_sub_6 v_conv_6;
(*   store i64 %sub8.6, i64* %arrayidx.6, align 8, !tbaa !3 *)
mov a_48 v_sub8_6;
(*   %arrayidx.7 = getelementptr inbounds i64, i64* %a, i64 7 *)
(*   %14 = load i64, i64* %arrayidx.7, align 8, !tbaa !3 *)
mov v14 a_56;
(*   %15 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @p503, i64 0, i64 7), align 8, !tbaa !3 *)
mov v15 p503_56;
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
(*   %xor.i79.7 = xor i32 %conv.i.i.7, 1 *)
(* You may need to modify here *)
xor uint32 v_xor_i79_7 v_conv_i_i_7 (0x1)@uint32;
(*   %and.7 = and i32 %xor.i79.7, %or.6 *)
(* You may need to modify here *)
and uint32 v_and_7 v_xor_i79_7 v_or_6;
(*   %or.7 = or i32 %and.7, %conv.i.7 *)
(* You may need to modify here *)
or uint32 v_or_7 v_and_7 v_conv_i_7;
(*   %conv.7 = zext i32 %or.6 to i64 *)
cast v_conv_7@uint64 v_or_6@uint32;
(*   %sub8.7 = sub i64 %sub.7, %conv.7 *)
subb discard_21 v_sub8_7 v_sub_7 v_conv_7;
(*   store i64 %sub8.7, i64* %arrayidx.7, align 8, !tbaa !3 *)
mov a_56 v_sub8_7;
(*   %conv11 = zext i32 %or.7 to i64 *)
cast v_conv11@uint64 v_or_7@uint32;
(*   %sub12 = sub nsw i64 0, %conv11 *)
subb discard_22 v_sub12 (0)@uint64 v_conv11;
(*   %16 = load i64, i64* %a, align 8, !tbaa !3 *)
mov v16 a_0;
(*   %17 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @p503, i64 0, i64 0), align 16, !tbaa !3 *)
mov v17 p503_0;
(*   %and23 = and i64 %17, %sub12 *)
(* You may need to modify here *)
and uint64 v_and23 v17 v_sub12;
(*   %add24 = add i64 %and23, %16 *)
adds discard_23 v_add24 v_and23 v16;
(*   store i64 %add24, i64* %a, align 8, !tbaa !3 *)
mov a_0 v_add24;
(*   %xor.i66 = xor i64 %add24, %16 *)
(* You may need to modify here *)
xor uint64 v_xor_i66 v_add24 v16;
(*   %xor1.i68 = xor i64 %and23, %16 *)
(* You may need to modify here *)
xor uint64 v_xor1_i68 v_and23 v16;
(*   %or.i69 = or i64 %xor.i66, %xor1.i68 *)
(* You may need to modify here *)
or uint64 v_or_i69 v_xor_i66 v_xor1_i68;
(*   %xor2.i70 = xor i64 %or.i69, %add24 *)
(* You may need to modify here *)
xor uint64 v_xor2_i70 v_or_i69 v_add24;
(*   %or32 = lshr i64 %xor2.i70, 63 *)
(* You may need to modify here *)
split v_or32 tmp_to_be_used v_xor2_i70 63;
(*   %18 = load i64, i64* %arrayidx.1, align 8, !tbaa !3 *)
mov v18 a_8;
(*   %add.1 = add i64 %18, %or32 *)
adds discard_24 v_add_1 v18 v_or32;
(*   %19 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @p503, i64 0, i64 1), align 8, !tbaa !3 *)
mov v19 p503_8;
(*   %and23.1 = and i64 %19, %sub12 *)
(* You may need to modify here *)
and uint64 v_and23_1 v19 v_sub12;
(*   %add24.1 = add i64 %and23.1, %add.1 *)
adds discard_25 v_add24_1 v_and23_1 v_add_1;
(*   store i64 %add24.1, i64* %arrayidx.1, align 8, !tbaa !3 *)
mov a_8 v_add24_1;
(*   %20 = xor i64 %add.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v20 v_add_1 (0x8000000000000000)@uint64;
(*   %xor2.i76.1 = and i64 %20, %18 *)
(* You may need to modify here *)
and uint64 v_xor2_i76_1 v20 v18;
(*   %xor.i66.1 = xor i64 %add24.1, %add.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i66_1 v_add24_1 v_add_1;
(*   %xor1.i68.1 = xor i64 %and23.1, %add.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i68_1 v_and23_1 v_add_1;
(*   %or.i69.1 = or i64 %xor.i66.1, %xor1.i68.1 *)
(* You may need to modify here *)
or uint64 v_or_i69_1 v_xor_i66_1 v_xor1_i68_1;
(*   %xor2.i70.1 = xor i64 %or.i69.1, %add24.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i70_1 v_or_i69_1 v_add24_1;
(*   %shr.i7780.1 = or i64 %xor2.i70.1, %xor2.i76.1 *)
(* You may need to modify here *)
or uint64 v_shr_i7780_1 v_xor2_i70_1 v_xor2_i76_1;
(*   %or32.1 = lshr i64 %shr.i7780.1, 63 *)
(* You may need to modify here *)
split v_or32_1 tmp_to_be_used v_shr_i7780_1 63;
(*   %21 = load i64, i64* %arrayidx.2, align 8, !tbaa !3 *)
mov v21 a_16;
(*   %add.2 = add i64 %21, %or32.1 *)
adds discard_26 v_add_2 v21 v_or32_1;
(*   %22 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @p503, i64 0, i64 2), align 16, !tbaa !3 *)
mov v22 p503_16;
(*   %and23.2 = and i64 %22, %sub12 *)
(* You may need to modify here *)
and uint64 v_and23_2 v22 v_sub12;
(*   %add24.2 = add i64 %and23.2, %add.2 *)
adds discard_27 v_add24_2 v_and23_2 v_add_2;
(*   store i64 %add24.2, i64* %arrayidx.2, align 8, !tbaa !3 *)
mov a_16 v_add24_2;
(*   %23 = xor i64 %add.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v23 v_add_2 (0x8000000000000000)@uint64;
(*   %xor2.i76.2 = and i64 %23, %21 *)
(* You may need to modify here *)
and uint64 v_xor2_i76_2 v23 v21;
(*   %xor.i66.2 = xor i64 %add24.2, %add.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i66_2 v_add24_2 v_add_2;
(*   %xor1.i68.2 = xor i64 %and23.2, %add.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i68_2 v_and23_2 v_add_2;
(*   %or.i69.2 = or i64 %xor.i66.2, %xor1.i68.2 *)
(* You may need to modify here *)
or uint64 v_or_i69_2 v_xor_i66_2 v_xor1_i68_2;
(*   %xor2.i70.2 = xor i64 %or.i69.2, %add24.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i70_2 v_or_i69_2 v_add24_2;
(*   %shr.i7780.2 = or i64 %xor2.i70.2, %xor2.i76.2 *)
(* You may need to modify here *)
or uint64 v_shr_i7780_2 v_xor2_i70_2 v_xor2_i76_2;
(*   %or32.2 = lshr i64 %shr.i7780.2, 63 *)
(* You may need to modify here *)
split v_or32_2 tmp_to_be_used v_shr_i7780_2 63;
(*   %24 = load i64, i64* %arrayidx.3, align 8, !tbaa !3 *)
mov v24 a_24;
(*   %add.3 = add i64 %24, %or32.2 *)
adds discard_28 v_add_3 v24 v_or32_2;
(*   %25 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @p503, i64 0, i64 3), align 8, !tbaa !3 *)
mov v25 p503_24;
(*   %and23.3 = and i64 %25, %sub12 *)
(* You may need to modify here *)
and uint64 v_and23_3 v25 v_sub12;
(*   %add24.3 = add i64 %and23.3, %add.3 *)
adds discard_29 v_add24_3 v_and23_3 v_add_3;
(*   store i64 %add24.3, i64* %arrayidx.3, align 8, !tbaa !3 *)
mov a_24 v_add24_3;
(*   %26 = xor i64 %add.3, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v26 v_add_3 (0x8000000000000000)@uint64;
(*   %xor2.i76.3 = and i64 %26, %24 *)
(* You may need to modify here *)
and uint64 v_xor2_i76_3 v26 v24;
(*   %xor.i66.3 = xor i64 %add24.3, %add.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i66_3 v_add24_3 v_add_3;
(*   %xor1.i68.3 = xor i64 %and23.3, %add.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i68_3 v_and23_3 v_add_3;
(*   %or.i69.3 = or i64 %xor.i66.3, %xor1.i68.3 *)
(* You may need to modify here *)
or uint64 v_or_i69_3 v_xor_i66_3 v_xor1_i68_3;
(*   %xor2.i70.3 = xor i64 %or.i69.3, %add24.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i70_3 v_or_i69_3 v_add24_3;
(*   %shr.i7780.3 = or i64 %xor2.i70.3, %xor2.i76.3 *)
(* You may need to modify here *)
or uint64 v_shr_i7780_3 v_xor2_i70_3 v_xor2_i76_3;
(*   %or32.3 = lshr i64 %shr.i7780.3, 63 *)
(* You may need to modify here *)
split v_or32_3 tmp_to_be_used v_shr_i7780_3 63;
(*   %27 = load i64, i64* %arrayidx.4, align 8, !tbaa !3 *)
mov v27 a_32;
(*   %add.4 = add i64 %27, %or32.3 *)
adds discard_30 v_add_4 v27 v_or32_3;
(*   %28 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @p503, i64 0, i64 4), align 16, !tbaa !3 *)
mov v28 p503_32;
(*   %and23.4 = and i64 %28, %sub12 *)
(* You may need to modify here *)
and uint64 v_and23_4 v28 v_sub12;
(*   %add24.4 = add i64 %and23.4, %add.4 *)
adds discard_31 v_add24_4 v_and23_4 v_add_4;
(*   store i64 %add24.4, i64* %arrayidx.4, align 8, !tbaa !3 *)
mov a_32 v_add24_4;
(*   %29 = xor i64 %add.4, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v29 v_add_4 (0x8000000000000000)@uint64;
(*   %xor2.i76.4 = and i64 %29, %27 *)
(* You may need to modify here *)
and uint64 v_xor2_i76_4 v29 v27;
(*   %xor.i66.4 = xor i64 %add24.4, %add.4 *)
(* You may need to modify here *)
xor uint64 v_xor_i66_4 v_add24_4 v_add_4;
(*   %xor1.i68.4 = xor i64 %and23.4, %add.4 *)
(* You may need to modify here *)
xor uint64 v_xor1_i68_4 v_and23_4 v_add_4;
(*   %or.i69.4 = or i64 %xor.i66.4, %xor1.i68.4 *)
(* You may need to modify here *)
or uint64 v_or_i69_4 v_xor_i66_4 v_xor1_i68_4;
(*   %xor2.i70.4 = xor i64 %or.i69.4, %add24.4 *)
(* You may need to modify here *)
xor uint64 v_xor2_i70_4 v_or_i69_4 v_add24_4;
(*   %shr.i7780.4 = or i64 %xor2.i70.4, %xor2.i76.4 *)
(* You may need to modify here *)
or uint64 v_shr_i7780_4 v_xor2_i70_4 v_xor2_i76_4;
(*   %or32.4 = lshr i64 %shr.i7780.4, 63 *)
(* You may need to modify here *)
split v_or32_4 tmp_to_be_used v_shr_i7780_4 63;
(*   %30 = load i64, i64* %arrayidx.5, align 8, !tbaa !3 *)
mov v30 a_40;
(*   %add.5 = add i64 %30, %or32.4 *)
adds discard_32 v_add_5 v30 v_or32_4;
(*   %31 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @p503, i64 0, i64 5), align 8, !tbaa !3 *)
mov v31 p503_40;
(*   %and23.5 = and i64 %31, %sub12 *)
(* You may need to modify here *)
and uint64 v_and23_5 v31 v_sub12;
(*   %add24.5 = add i64 %and23.5, %add.5 *)
adds discard_33 v_add24_5 v_and23_5 v_add_5;
(*   store i64 %add24.5, i64* %arrayidx.5, align 8, !tbaa !3 *)
mov a_40 v_add24_5;
(*   %32 = xor i64 %add.5, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v32 v_add_5 (0x8000000000000000)@uint64;
(*   %xor2.i76.5 = and i64 %32, %30 *)
(* You may need to modify here *)
and uint64 v_xor2_i76_5 v32 v30;
(*   %xor.i66.5 = xor i64 %add24.5, %add.5 *)
(* You may need to modify here *)
xor uint64 v_xor_i66_5 v_add24_5 v_add_5;
(*   %xor1.i68.5 = xor i64 %and23.5, %add.5 *)
(* You may need to modify here *)
xor uint64 v_xor1_i68_5 v_and23_5 v_add_5;
(*   %or.i69.5 = or i64 %xor.i66.5, %xor1.i68.5 *)
(* You may need to modify here *)
or uint64 v_or_i69_5 v_xor_i66_5 v_xor1_i68_5;
(*   %xor2.i70.5 = xor i64 %or.i69.5, %add24.5 *)
(* You may need to modify here *)
xor uint64 v_xor2_i70_5 v_or_i69_5 v_add24_5;
(*   %shr.i7780.5 = or i64 %xor2.i70.5, %xor2.i76.5 *)
(* You may need to modify here *)
or uint64 v_shr_i7780_5 v_xor2_i70_5 v_xor2_i76_5;
(*   %or32.5 = lshr i64 %shr.i7780.5, 63 *)
(* You may need to modify here *)
split v_or32_5 tmp_to_be_used v_shr_i7780_5 63;
(*   %33 = load i64, i64* %arrayidx.6, align 8, !tbaa !3 *)
mov v33 a_48;
(*   %add.6 = add i64 %33, %or32.5 *)
adds discard_34 v_add_6 v33 v_or32_5;
(*   %34 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @p503, i64 0, i64 6), align 16, !tbaa !3 *)
mov v34 p503_48;
(*   %and23.6 = and i64 %34, %sub12 *)
(* You may need to modify here *)
and uint64 v_and23_6 v34 v_sub12;
(*   %add24.6 = add i64 %and23.6, %add.6 *)
adds discard_35 v_add24_6 v_and23_6 v_add_6;
(*   store i64 %add24.6, i64* %arrayidx.6, align 8, !tbaa !3 *)
mov a_48 v_add24_6;
(*   %35 = xor i64 %add.6, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v35 v_add_6 (0x8000000000000000)@uint64;
(*   %xor2.i76.6 = and i64 %35, %33 *)
(* You may need to modify here *)
and uint64 v_xor2_i76_6 v35 v33;
(*   %xor.i66.6 = xor i64 %add24.6, %add.6 *)
(* You may need to modify here *)
xor uint64 v_xor_i66_6 v_add24_6 v_add_6;
(*   %xor1.i68.6 = xor i64 %and23.6, %add.6 *)
(* You may need to modify here *)
xor uint64 v_xor1_i68_6 v_and23_6 v_add_6;
(*   %or.i69.6 = or i64 %xor.i66.6, %xor1.i68.6 *)
(* You may need to modify here *)
or uint64 v_or_i69_6 v_xor_i66_6 v_xor1_i68_6;
(*   %xor2.i70.6 = xor i64 %or.i69.6, %add24.6 *)
(* You may need to modify here *)
xor uint64 v_xor2_i70_6 v_or_i69_6 v_add24_6;
(*   %shr.i7780.6 = or i64 %xor2.i70.6, %xor2.i76.6 *)
(* You may need to modify here *)
or uint64 v_shr_i7780_6 v_xor2_i70_6 v_xor2_i76_6;
(*   %or32.6 = lshr i64 %shr.i7780.6, 63 *)
(* You may need to modify here *)
split v_or32_6 tmp_to_be_used v_shr_i7780_6 63;
(*   %36 = load i64, i64* %arrayidx.7, align 8, !tbaa !3 *)
mov v36 a_56;
(*   %add.7 = add i64 %36, %or32.6 *)
adds discard_36 v_add_7 v36 v_or32_6;
(*   %37 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @p503, i64 0, i64 7), align 8, !tbaa !3 *)
mov v37 p503_56;
(*   %and23.7 = and i64 %37, %sub12 *)
(* You may need to modify here *)
and uint64 v_and23_7 v37 v_sub12;
(*   %add24.7 = add i64 %and23.7, %add.7 *)
adds discard_37 v_add24_7 v_and23_7 v_add_7;
(*   store i64 %add24.7, i64* %arrayidx.7, align 8, !tbaa !3 *)
mov a_56 v_add24_7;
(*   ret void *)


(* Outputs *)

mov c0 a_0@uint64;
mov c1 a_8@uint64;
mov c2 a_16@uint64;
mov c3 a_24@uint64;
mov c4 a_32@uint64;
mov c5 a_40@uint64;
mov c6 a_48@uint64;
mov c7 a_56@uint64;


{
  true
  &&
  and [
    (* modular correction *)  
    equmod limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7]
    	   limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7]
	   const 512 (2**250 * 3**159 - 1),	   
    (* c in [0, p503-1] *)
    0@512 <=u limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7],
    limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7] <=u const 512 ((2**250 * 3**159 - 1) - 1)
  ]
}


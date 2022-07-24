(* @laptop: cv -v -isafety fp_generic_fpsub751_tuned.cl
Parsing Cryptoline file:		[OK]		0.005318 seconds
Checking well-formedness:		[OK]		0.001507 seconds
Transforming to SSA form:		[OK]		0.000530 seconds
Normalizing specification:		[OK]		0.000547 seconds
Rewriting assignments:			[OK]		0.000310 seconds
Verifying program safety:		[OK]		0.629032 seconds
Verifying range specification:		[OK]		90.430213 seconds
Rewriting value-preserved casting:	[OK]		0.000090 seconds
Verifying algebraic specification:	[OK]		0.000255 seconds
Verification result:			[OK]		91.068647 seconds
*)

proc main (uint64 a00, uint64 a01, uint64 a02, uint64 a03, uint64 a04, uint64 a05,
           uint64 a06, uint64 a07, uint64 a08, uint64 a09, uint64 a10, uint64 a11,
           uint64 b00, uint64 b01, uint64 b02, uint64 b03, uint64 b04, uint64 b05,
	   uint64 b06, uint64 b07, uint64 b08, uint64 b09, uint64 b10, uint64 b11) =
{
  true
  &&
  (* p751 = 2^372*3^239-1 *)
  (* a, b in [0, 2*p751-1] *)
  and [
    0@768 <=u limbs 64 [a00, a01, a02, a03, a04, a05, a06, a07, a08, a09, a10, a11],
    limbs 64 [a00, a01, a02, a03, a04, a05, a06, a07, a08, a09, a10, a11]
      <=u const 768 (2 * (2**372 * 3**239 - 1) - 1),
    0@768 <=u limbs 64 [b00, b01, b02, b03, b04, b05, b06, b07, b08, b09, b10, b11],
    limbs 64 [b00, b01, b02, b03, b04, b05, b06, b07, b08, b09, b10, b11]
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
mov b_0 b00;
mov b_8 b01;
mov b_16 b02;
mov b_24 b03;
mov b_32 b04;
mov b_40 b05;
mov b_48 b06;
mov b_56 b07;
mov b_64 b08;
mov b_72 b09;
mov b_80 b10;
mov b_88 b11;
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


(*   %0 = load i64, i64* %a, align 8, !tbaa !3 *)
mov v0 a_0;
(*   %1 = load i64, i64* %b, align 8, !tbaa !3 *)
mov v1 b_0;
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
(*   store i64 %sub, i64* %c, align 8, !tbaa !3 *)
mov c_0 v_sub;
(*   %arrayidx.1 = getelementptr inbounds i64, i64* %a, i64 1 *)
(*   %2 = load i64, i64* %arrayidx.1, align 8, !tbaa !3 *)
mov v2 a_8;
(*   %arrayidx2.1 = getelementptr inbounds i64, i64* %b, i64 1 *)
(*   %3 = load i64, i64* %arrayidx2.1, align 8, !tbaa !3 *)
mov v3 b_8;
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
(*   %arrayidx10.1 = getelementptr inbounds i64, i64* %c, i64 1 *)
(*   store i64 %sub8.1, i64* %arrayidx10.1, align 8, !tbaa !3 *)
mov c_8 v_sub8_1;
(*   %arrayidx.2 = getelementptr inbounds i64, i64* %a, i64 2 *)
(*   %4 = load i64, i64* %arrayidx.2, align 8, !tbaa !3 *)
mov v4 a_16;
(*   %arrayidx2.2 = getelementptr inbounds i64, i64* %b, i64 2 *)
(*   %5 = load i64, i64* %arrayidx2.2, align 8, !tbaa !3 *)
mov v5 b_16;
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
(*   %arrayidx10.2 = getelementptr inbounds i64, i64* %c, i64 2 *)
(*   store i64 %sub8.2, i64* %arrayidx10.2, align 8, !tbaa !3 *)
mov c_16 v_sub8_2;
(*   %arrayidx.3 = getelementptr inbounds i64, i64* %a, i64 3 *)
(*   %6 = load i64, i64* %arrayidx.3, align 8, !tbaa !3 *)
mov v6 a_24;
(*   %arrayidx2.3 = getelementptr inbounds i64, i64* %b, i64 3 *)
(*   %7 = load i64, i64* %arrayidx2.3, align 8, !tbaa !3 *)
mov v7 b_24;
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
(*   %arrayidx10.3 = getelementptr inbounds i64, i64* %c, i64 3 *)
(*   store i64 %sub8.3, i64* %arrayidx10.3, align 8, !tbaa !3 *)
mov c_24 v_sub8_3;
(*   %arrayidx.4 = getelementptr inbounds i64, i64* %a, i64 4 *)
(*   %8 = load i64, i64* %arrayidx.4, align 8, !tbaa !3 *)
mov v8 a_32;
(*   %arrayidx2.4 = getelementptr inbounds i64, i64* %b, i64 4 *)
(*   %9 = load i64, i64* %arrayidx2.4, align 8, !tbaa !3 *)
mov v9 b_32;
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
(*   %arrayidx10.4 = getelementptr inbounds i64, i64* %c, i64 4 *)
(*   store i64 %sub8.4, i64* %arrayidx10.4, align 8, !tbaa !3 *)
mov c_32 v_sub8_4;
(*   %arrayidx.5 = getelementptr inbounds i64, i64* %a, i64 5 *)
(*   %10 = load i64, i64* %arrayidx.5, align 8, !tbaa !3 *)
mov v10 a_40;
(*   %arrayidx2.5 = getelementptr inbounds i64, i64* %b, i64 5 *)
(*   %11 = load i64, i64* %arrayidx2.5, align 8, !tbaa !3 *)
mov v11 b_40;
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
(*   %arrayidx10.5 = getelementptr inbounds i64, i64* %c, i64 5 *)
(*   store i64 %sub8.5, i64* %arrayidx10.5, align 8, !tbaa !3 *)
mov c_40 v_sub8_5;
(*   %arrayidx.6 = getelementptr inbounds i64, i64* %a, i64 6 *)
(*   %12 = load i64, i64* %arrayidx.6, align 8, !tbaa !3 *)
mov v12 a_48;
(*   %arrayidx2.6 = getelementptr inbounds i64, i64* %b, i64 6 *)
(*   %13 = load i64, i64* %arrayidx2.6, align 8, !tbaa !3 *)
mov v13 b_48;
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
(*   %arrayidx10.6 = getelementptr inbounds i64, i64* %c, i64 6 *)
(*   store i64 %sub8.6, i64* %arrayidx10.6, align 8, !tbaa !3 *)
mov c_48 v_sub8_6;
(*   %arrayidx.7 = getelementptr inbounds i64, i64* %a, i64 7 *)
(*   %14 = load i64, i64* %arrayidx.7, align 8, !tbaa !3 *)
mov v14 a_56;
(*   %arrayidx2.7 = getelementptr inbounds i64, i64* %b, i64 7 *)
(*   %15 = load i64, i64* %arrayidx2.7, align 8, !tbaa !3 *)
mov v15 b_56;
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
(*   %arrayidx10.7 = getelementptr inbounds i64, i64* %c, i64 7 *)
(*   store i64 %sub8.7, i64* %arrayidx10.7, align 8, !tbaa !3 *)
mov c_56 v_sub8_7;
(*   %arrayidx.8 = getelementptr inbounds i64, i64* %a, i64 8 *)
(*   %16 = load i64, i64* %arrayidx.8, align 8, !tbaa !3 *)
mov v16 a_64;
(*   %arrayidx2.8 = getelementptr inbounds i64, i64* %b, i64 8 *)
(*   %17 = load i64, i64* %arrayidx2.8, align 8, !tbaa !3 *)
mov v17 b_64;
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
(*   %xor.i79.8 = xor i32 %conv.i.i.8, 1 *)
(* You may need to modify here *)
xor uint32 v_xor_i79_8 v_conv_i_i_8 (0x1)@uint32;
(*   %and.8 = and i32 %xor.i79.8, %or.7 *)
(* You may need to modify here *)
and uint32 v_and_8 v_xor_i79_8 v_or_7;
(*   %or.8 = or i32 %and.8, %conv.i.8 *)
(* You may need to modify here *)
or uint32 v_or_8 v_and_8 v_conv_i_8;
(*   %conv.8 = zext i32 %or.7 to i64 *)
cast v_conv_8@uint64 v_or_7@uint32;
(*   %sub8.8 = sub i64 %sub.8, %conv.8 *)
subb discard_24 v_sub8_8 v_sub_8 v_conv_8;
(*   %arrayidx10.8 = getelementptr inbounds i64, i64* %c, i64 8 *)
(*   store i64 %sub8.8, i64* %arrayidx10.8, align 8, !tbaa !3 *)
mov c_64 v_sub8_8;
(*   %arrayidx.9 = getelementptr inbounds i64, i64* %a, i64 9 *)
(*   %18 = load i64, i64* %arrayidx.9, align 8, !tbaa !3 *)
mov v18 a_72;
(*   %arrayidx2.9 = getelementptr inbounds i64, i64* %b, i64 9 *)
(*   %19 = load i64, i64* %arrayidx2.9, align 8, !tbaa !3 *)
mov v19 b_72;
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
(*   %xor.i79.9 = xor i32 %conv.i.i.9, 1 *)
(* You may need to modify here *)
xor uint32 v_xor_i79_9 v_conv_i_i_9 (0x1)@uint32;
(*   %and.9 = and i32 %xor.i79.9, %or.8 *)
(* You may need to modify here *)
and uint32 v_and_9 v_xor_i79_9 v_or_8;
(*   %or.9 = or i32 %and.9, %conv.i.9 *)
(* You may need to modify here *)
or uint32 v_or_9 v_and_9 v_conv_i_9;
(*   %conv.9 = zext i32 %or.8 to i64 *)
cast v_conv_9@uint64 v_or_8@uint32;
(*   %sub8.9 = sub i64 %sub.9, %conv.9 *)
subb discard_27 v_sub8_9 v_sub_9 v_conv_9;
(*   %arrayidx10.9 = getelementptr inbounds i64, i64* %c, i64 9 *)
(*   store i64 %sub8.9, i64* %arrayidx10.9, align 8, !tbaa !3 *)
mov c_72 v_sub8_9;
(*   %arrayidx.10 = getelementptr inbounds i64, i64* %a, i64 10 *)
(*   %20 = load i64, i64* %arrayidx.10, align 8, !tbaa !3 *)
mov v20 a_80;
(*   %arrayidx2.10 = getelementptr inbounds i64, i64* %b, i64 10 *)
(*   %21 = load i64, i64* %arrayidx2.10, align 8, !tbaa !3 *)
mov v21 b_80;
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
(*   %xor.i79.10 = xor i32 %conv.i.i.10, 1 *)
(* You may need to modify here *)
xor uint32 v_xor_i79_10 v_conv_i_i_10 (0x1)@uint32;
(*   %and.10 = and i32 %xor.i79.10, %or.9 *)
(* You may need to modify here *)
and uint32 v_and_10 v_xor_i79_10 v_or_9;
(*   %or.10 = or i32 %and.10, %conv.i.10 *)
(* You may need to modify here *)
or uint32 v_or_10 v_and_10 v_conv_i_10;
(*   %conv.10 = zext i32 %or.9 to i64 *)
cast v_conv_10@uint64 v_or_9@uint32;
(*   %sub8.10 = sub i64 %sub.10, %conv.10 *)
subb discard_30 v_sub8_10 v_sub_10 v_conv_10;
(*   %arrayidx10.10 = getelementptr inbounds i64, i64* %c, i64 10 *)
(*   store i64 %sub8.10, i64* %arrayidx10.10, align 8, !tbaa !3 *)
mov c_80 v_sub8_10;
(*   %arrayidx.11 = getelementptr inbounds i64, i64* %a, i64 11 *)
(*   %22 = load i64, i64* %arrayidx.11, align 8, !tbaa !3 *)
mov v22 a_88;
(*   %arrayidx2.11 = getelementptr inbounds i64, i64* %b, i64 11 *)
(*   %23 = load i64, i64* %arrayidx2.11, align 8, !tbaa !3 *)
mov v23 b_88;
(*   %sub.11 = sub i64 %22, %23 *)
subb discard_31 v_sub_11 v22 v23;
(*   %xor.i.11 = xor i64 %23, %22 *)
(* You may need to modify here *)
xor uint64 v_xor_i_11 v23 v22;
(*   %xor1.i.11 = xor i64 %sub.11, %23 *)
(* You may need to modify here *)
xor uint64 v_xor1_i_11 v_sub_11 v23;
(*   %or.i.11 = or i64 %xor1.i.11, %xor.i.11 *)
(* You may need to modify here *)
or uint64 v_or_i_11 v_xor1_i_11 v_xor_i_11;
(*   %xor2.i.11 = xor i64 %or.i.11, %22 *)
(* You may need to modify here *)
xor uint64 v_xor2_i_11 v_or_i_11 v22;
(*   %shr.i.11 = lshr i64 %xor2.i.11, 63 *)
(* You may need to modify here *)
split v_shr_i_11 tmp_to_be_used v_xor2_i_11 63;
(*   %conv.i.11 = trunc i64 %shr.i.11 to i32 *)
split tmp_v_shr_i_11 v_conv_i_11 v_shr_i_11 32;
vpc v_conv_i_11@uint32 v_conv_i_11@uint64;
(*   %sub.i.i.11 = sub i64 0, %sub.11 *)
subb discard_32 v_sub_i_i_11 (0)@uint64 v_sub_11;
(*   %or.i.i.11 = or i64 %sub.11, %sub.i.i.11 *)
(* You may need to modify here *)
or uint64 v_or_i_i_11 v_sub_11 v_sub_i_i_11;
(*   %shr.i.i.11 = lshr i64 %or.i.i.11, 63 *)
(* You may need to modify here *)
split v_shr_i_i_11 tmp_to_be_used v_or_i_i_11 63;
(*   %conv.i.i.11 = trunc i64 %shr.i.i.11 to i32 *)
split tmp_v_shr_i_i_11 v_conv_i_i_11 v_shr_i_i_11 32;
vpc v_conv_i_i_11@uint32 v_conv_i_i_11@uint64;
(*   %xor.i79.11 = xor i32 %conv.i.i.11, 1 *)
(* You may need to modify here *)
xor uint32 v_xor_i79_11 v_conv_i_i_11 (0x1)@uint32;
(*   %and.11 = and i32 %xor.i79.11, %or.10 *)
(* You may need to modify here *)
and uint32 v_and_11 v_xor_i79_11 v_or_10;
(*   %or.11 = or i32 %and.11, %conv.i.11 *)
(* You may need to modify here *)
or uint32 v_or_11 v_and_11 v_conv_i_11;
(*   %conv.11 = zext i32 %or.10 to i64 *)
cast v_conv_11@uint64 v_or_10@uint32;
(*   %sub8.11 = sub i64 %sub.11, %conv.11 *)
subb discard_33 v_sub8_11 v_sub_11 v_conv_11;
(*   %arrayidx10.11 = getelementptr inbounds i64, i64* %c, i64 11 *)
(*   store i64 %sub8.11, i64* %arrayidx10.11, align 8, !tbaa !3 *)
mov c_88 v_sub8_11;
(*   %conv11 = zext i32 %or.11 to i64 *)
cast v_conv11@uint64 v_or_11@uint32;
(*   %sub12 = sub nsw i64 0, %conv11 *)
subb discard_34 v_sub12 (0)@uint64 v_conv11;
(*   %24 = load i64, i64* %c, align 8, !tbaa !3 *)
mov v24 c_0;
(*   %25 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751x2, i64 0, i64 0), align 16, !tbaa !3 *)
mov v25 p751x2_0;
(*   %and23 = and i64 %25, %sub12 *)
(* You may need to modify here *)
and uint64 v_and23 v25 v_sub12;
(*   %add24 = add i64 %and23, %24 *)
adds discard_35 v_add24 v_and23 v24;
(*   store i64 %add24, i64* %c, align 8, !tbaa !3 *)
mov c_0 v_add24;
(*   %xor.i66 = xor i64 %add24, %24 *)
(* You may need to modify here *)
xor uint64 v_xor_i66 v_add24 v24;
(*   %xor1.i68 = xor i64 %and23, %24 *)
(* You may need to modify here *)
xor uint64 v_xor1_i68 v_and23 v24;
(*   %or.i69 = or i64 %xor.i66, %xor1.i68 *)
(* You may need to modify here *)
or uint64 v_or_i69 v_xor_i66 v_xor1_i68;
(*   %xor2.i70 = xor i64 %or.i69, %add24 *)
(* You may need to modify here *)
xor uint64 v_xor2_i70 v_or_i69 v_add24;
(*   %or32 = lshr i64 %xor2.i70, 63 *)
(* You may need to modify here *)
split v_or32 tmp_to_be_used v_xor2_i70 63;
(*   %26 = load i64, i64* %arrayidx10.1, align 8, !tbaa !3 *)
mov v26 c_8;
(*   %add.1 = add i64 %26, %or32 *)
adds discard_36 v_add_1 v26 v_or32;
(*   %27 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751x2, i64 0, i64 1), align 8, !tbaa !3 *)
mov v27 p751x2_8;
(*   %and23.1 = and i64 %27, %sub12 *)
(* You may need to modify here *)
and uint64 v_and23_1 v27 v_sub12;
(*   %add24.1 = add i64 %and23.1, %add.1 *)
adds discard_37 v_add24_1 v_and23_1 v_add_1;
(*   store i64 %add24.1, i64* %arrayidx10.1, align 8, !tbaa !3 *)
mov c_8 v_add24_1;
(*   %28 = xor i64 %add.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v28 v_add_1 (0x8000000000000000)@uint64;
(*   %xor2.i76.1 = and i64 %28, %26 *)
(* You may need to modify here *)
and uint64 v_xor2_i76_1 v28 v26;
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
(*   %29 = load i64, i64* %arrayidx10.2, align 8, !tbaa !3 *)
mov v29 c_16;
(*   %add.2 = add i64 %29, %or32.1 *)
adds discard_38 v_add_2 v29 v_or32_1;
(*   %30 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751x2, i64 0, i64 2), align 16, !tbaa !3 *)
mov v30 p751x2_16;
(*   %and23.2 = and i64 %30, %sub12 *)
(* You may need to modify here *)
and uint64 v_and23_2 v30 v_sub12;
(*   %add24.2 = add i64 %and23.2, %add.2 *)
adds discard_39 v_add24_2 v_and23_2 v_add_2;
(*   store i64 %add24.2, i64* %arrayidx10.2, align 8, !tbaa !3 *)
mov c_16 v_add24_2;
(*   %31 = xor i64 %add.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v31 v_add_2 (0x8000000000000000)@uint64;
(*   %xor2.i76.2 = and i64 %31, %29 *)
(* You may need to modify here *)
and uint64 v_xor2_i76_2 v31 v29;
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
(*   %32 = load i64, i64* %arrayidx10.3, align 8, !tbaa !3 *)
mov v32 c_24;
(*   %add.3 = add i64 %32, %or32.2 *)
adds discard_40 v_add_3 v32 v_or32_2;
(*   %33 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751x2, i64 0, i64 3), align 8, !tbaa !3 *)
mov v33 p751x2_24;
(*   %and23.3 = and i64 %33, %sub12 *)
(* You may need to modify here *)
and uint64 v_and23_3 v33 v_sub12;
(*   %add24.3 = add i64 %and23.3, %add.3 *)
adds discard_41 v_add24_3 v_and23_3 v_add_3;
(*   store i64 %add24.3, i64* %arrayidx10.3, align 8, !tbaa !3 *)
mov c_24 v_add24_3;
(*   %34 = xor i64 %add.3, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v34 v_add_3 (0x8000000000000000)@uint64;
(*   %xor2.i76.3 = and i64 %34, %32 *)
(* You may need to modify here *)
and uint64 v_xor2_i76_3 v34 v32;
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
(*   %35 = load i64, i64* %arrayidx10.4, align 8, !tbaa !3 *)
mov v35 c_32;
(*   %add.4 = add i64 %35, %or32.3 *)
adds discard_42 v_add_4 v35 v_or32_3;
(*   %36 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751x2, i64 0, i64 4), align 16, !tbaa !3 *)
mov v36 p751x2_32;
(*   %and23.4 = and i64 %36, %sub12 *)
(* You may need to modify here *)
and uint64 v_and23_4 v36 v_sub12;
(*   %add24.4 = add i64 %and23.4, %add.4 *)
adds discard_43 v_add24_4 v_and23_4 v_add_4;
(*   store i64 %add24.4, i64* %arrayidx10.4, align 8, !tbaa !3 *)
mov c_32 v_add24_4;
(*   %37 = xor i64 %add.4, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v37 v_add_4 (0x8000000000000000)@uint64;
(*   %xor2.i76.4 = and i64 %37, %35 *)
(* You may need to modify here *)
and uint64 v_xor2_i76_4 v37 v35;
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
(*   %38 = load i64, i64* %arrayidx10.5, align 8, !tbaa !3 *)
mov v38 c_40;
(*   %add.5 = add i64 %38, %or32.4 *)
adds discard_44 v_add_5 v38 v_or32_4;
(*   %39 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751x2, i64 0, i64 5), align 8, !tbaa !3 *)
mov v39 p751x2_40;
(*   %and23.5 = and i64 %39, %sub12 *)
(* You may need to modify here *)
and uint64 v_and23_5 v39 v_sub12;
(*   %add24.5 = add i64 %and23.5, %add.5 *)
adds discard_45 v_add24_5 v_and23_5 v_add_5;
(*   store i64 %add24.5, i64* %arrayidx10.5, align 8, !tbaa !3 *)
mov c_40 v_add24_5;
(*   %40 = xor i64 %add.5, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v40 v_add_5 (0x8000000000000000)@uint64;
(*   %xor2.i76.5 = and i64 %40, %38 *)
(* You may need to modify here *)
and uint64 v_xor2_i76_5 v40 v38;
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
(*   %41 = load i64, i64* %arrayidx10.6, align 8, !tbaa !3 *)
mov v41 c_48;
(*   %add.6 = add i64 %41, %or32.5 *)
adds discard_46 v_add_6 v41 v_or32_5;
(*   %42 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751x2, i64 0, i64 6), align 16, !tbaa !3 *)
mov v42 p751x2_48;
(*   %and23.6 = and i64 %42, %sub12 *)
(* You may need to modify here *)
and uint64 v_and23_6 v42 v_sub12;
(*   %add24.6 = add i64 %and23.6, %add.6 *)
adds discard_47 v_add24_6 v_and23_6 v_add_6;
(*   store i64 %add24.6, i64* %arrayidx10.6, align 8, !tbaa !3 *)
mov c_48 v_add24_6;
(*   %43 = xor i64 %add.6, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v43 v_add_6 (0x8000000000000000)@uint64;
(*   %xor2.i76.6 = and i64 %43, %41 *)
(* You may need to modify here *)
and uint64 v_xor2_i76_6 v43 v41;
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
(*   %44 = load i64, i64* %arrayidx10.7, align 8, !tbaa !3 *)
mov v44 c_56;
(*   %add.7 = add i64 %44, %or32.6 *)
adds discard_48 v_add_7 v44 v_or32_6;
(*   %45 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751x2, i64 0, i64 7), align 8, !tbaa !3 *)
mov v45 p751x2_56;
(*   %and23.7 = and i64 %45, %sub12 *)
(* You may need to modify here *)
and uint64 v_and23_7 v45 v_sub12;
(*   %add24.7 = add i64 %and23.7, %add.7 *)
adds discard_49 v_add24_7 v_and23_7 v_add_7;
(*   store i64 %add24.7, i64* %arrayidx10.7, align 8, !tbaa !3 *)
mov c_56 v_add24_7;
(*   %46 = xor i64 %add.7, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v46 v_add_7 (0x8000000000000000)@uint64;
(*   %xor2.i76.7 = and i64 %46, %44 *)
(* You may need to modify here *)
and uint64 v_xor2_i76_7 v46 v44;
(*   %xor.i66.7 = xor i64 %add24.7, %add.7 *)
(* You may need to modify here *)
xor uint64 v_xor_i66_7 v_add24_7 v_add_7;
(*   %xor1.i68.7 = xor i64 %and23.7, %add.7 *)
(* You may need to modify here *)
xor uint64 v_xor1_i68_7 v_and23_7 v_add_7;
(*   %or.i69.7 = or i64 %xor.i66.7, %xor1.i68.7 *)
(* You may need to modify here *)
or uint64 v_or_i69_7 v_xor_i66_7 v_xor1_i68_7;
(*   %xor2.i70.7 = xor i64 %or.i69.7, %add24.7 *)
(* You may need to modify here *)
xor uint64 v_xor2_i70_7 v_or_i69_7 v_add24_7;
(*   %shr.i7780.7 = or i64 %xor2.i70.7, %xor2.i76.7 *)
(* You may need to modify here *)
or uint64 v_shr_i7780_7 v_xor2_i70_7 v_xor2_i76_7;
(*   %or32.7 = lshr i64 %shr.i7780.7, 63 *)
(* You may need to modify here *)
split v_or32_7 tmp_to_be_used v_shr_i7780_7 63;
(*   %47 = load i64, i64* %arrayidx10.8, align 8, !tbaa !3 *)
mov v47 c_64;
(*   %add.8 = add i64 %47, %or32.7 *)
adds discard_50 v_add_8 v47 v_or32_7;
(*   %48 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751x2, i64 0, i64 8), align 16, !tbaa !3 *)
mov v48 p751x2_64;
(*   %and23.8 = and i64 %48, %sub12 *)
(* You may need to modify here *)
and uint64 v_and23_8 v48 v_sub12;
(*   %add24.8 = add i64 %and23.8, %add.8 *)
adds discard_51 v_add24_8 v_and23_8 v_add_8;
(*   store i64 %add24.8, i64* %arrayidx10.8, align 8, !tbaa !3 *)
mov c_64 v_add24_8;
(*   %49 = xor i64 %add.8, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v49 v_add_8 (0x8000000000000000)@uint64;
(*   %xor2.i76.8 = and i64 %49, %47 *)
(* You may need to modify here *)
and uint64 v_xor2_i76_8 v49 v47;
(*   %xor.i66.8 = xor i64 %add24.8, %add.8 *)
(* You may need to modify here *)
xor uint64 v_xor_i66_8 v_add24_8 v_add_8;
(*   %xor1.i68.8 = xor i64 %and23.8, %add.8 *)
(* You may need to modify here *)
xor uint64 v_xor1_i68_8 v_and23_8 v_add_8;
(*   %or.i69.8 = or i64 %xor.i66.8, %xor1.i68.8 *)
(* You may need to modify here *)
or uint64 v_or_i69_8 v_xor_i66_8 v_xor1_i68_8;
(*   %xor2.i70.8 = xor i64 %or.i69.8, %add24.8 *)
(* You may need to modify here *)
xor uint64 v_xor2_i70_8 v_or_i69_8 v_add24_8;
(*   %shr.i7780.8 = or i64 %xor2.i70.8, %xor2.i76.8 *)
(* You may need to modify here *)
or uint64 v_shr_i7780_8 v_xor2_i70_8 v_xor2_i76_8;
(*   %or32.8 = lshr i64 %shr.i7780.8, 63 *)
(* You may need to modify here *)
split v_or32_8 tmp_to_be_used v_shr_i7780_8 63;
(*   %50 = load i64, i64* %arrayidx10.9, align 8, !tbaa !3 *)
mov v50 c_72;
(*   %add.9 = add i64 %50, %or32.8 *)
adds discard_52 v_add_9 v50 v_or32_8;
(*   %51 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751x2, i64 0, i64 9), align 8, !tbaa !3 *)
mov v51 p751x2_72;
(*   %and23.9 = and i64 %51, %sub12 *)
(* You may need to modify here *)
and uint64 v_and23_9 v51 v_sub12;
(*   %add24.9 = add i64 %and23.9, %add.9 *)
adds discard_53 v_add24_9 v_and23_9 v_add_9;
(*   store i64 %add24.9, i64* %arrayidx10.9, align 8, !tbaa !3 *)
mov c_72 v_add24_9;
(*   %52 = xor i64 %add.9, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v52 v_add_9 (0x8000000000000000)@uint64;
(*   %xor2.i76.9 = and i64 %52, %50 *)
(* You may need to modify here *)
and uint64 v_xor2_i76_9 v52 v50;
(*   %xor.i66.9 = xor i64 %add24.9, %add.9 *)
(* You may need to modify here *)
xor uint64 v_xor_i66_9 v_add24_9 v_add_9;
(*   %xor1.i68.9 = xor i64 %and23.9, %add.9 *)
(* You may need to modify here *)
xor uint64 v_xor1_i68_9 v_and23_9 v_add_9;
(*   %or.i69.9 = or i64 %xor.i66.9, %xor1.i68.9 *)
(* You may need to modify here *)
or uint64 v_or_i69_9 v_xor_i66_9 v_xor1_i68_9;
(*   %xor2.i70.9 = xor i64 %or.i69.9, %add24.9 *)
(* You may need to modify here *)
xor uint64 v_xor2_i70_9 v_or_i69_9 v_add24_9;
(*   %shr.i7780.9 = or i64 %xor2.i70.9, %xor2.i76.9 *)
(* You may need to modify here *)
or uint64 v_shr_i7780_9 v_xor2_i70_9 v_xor2_i76_9;
(*   %or32.9 = lshr i64 %shr.i7780.9, 63 *)
(* You may need to modify here *)
split v_or32_9 tmp_to_be_used v_shr_i7780_9 63;
(*   %53 = load i64, i64* %arrayidx10.10, align 8, !tbaa !3 *)
mov v53 c_80;
(*   %add.10 = add i64 %53, %or32.9 *)
adds discard_54 v_add_10 v53 v_or32_9;
(*   %54 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751x2, i64 0, i64 10), align 16, !tbaa !3 *)
mov v54 p751x2_80;
(*   %and23.10 = and i64 %54, %sub12 *)
(* You may need to modify here *)
and uint64 v_and23_10 v54 v_sub12;
(*   %add24.10 = add i64 %and23.10, %add.10 *)
adds discard_55 v_add24_10 v_and23_10 v_add_10;
(*   store i64 %add24.10, i64* %arrayidx10.10, align 8, !tbaa !3 *)
mov c_80 v_add24_10;
(*   %55 = xor i64 %add.10, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v55 v_add_10 (0x8000000000000000)@uint64;
(*   %xor2.i76.10 = and i64 %55, %53 *)
(* You may need to modify here *)
and uint64 v_xor2_i76_10 v55 v53;
(*   %xor.i66.10 = xor i64 %add24.10, %add.10 *)
(* You may need to modify here *)
xor uint64 v_xor_i66_10 v_add24_10 v_add_10;
(*   %xor1.i68.10 = xor i64 %and23.10, %add.10 *)
(* You may need to modify here *)
xor uint64 v_xor1_i68_10 v_and23_10 v_add_10;
(*   %or.i69.10 = or i64 %xor.i66.10, %xor1.i68.10 *)
(* You may need to modify here *)
or uint64 v_or_i69_10 v_xor_i66_10 v_xor1_i68_10;
(*   %xor2.i70.10 = xor i64 %or.i69.10, %add24.10 *)
(* You may need to modify here *)
xor uint64 v_xor2_i70_10 v_or_i69_10 v_add24_10;
(*   %shr.i7780.10 = or i64 %xor2.i70.10, %xor2.i76.10 *)
(* You may need to modify here *)
or uint64 v_shr_i7780_10 v_xor2_i70_10 v_xor2_i76_10;
(*   %or32.10 = lshr i64 %shr.i7780.10, 63 *)
(* You may need to modify here *)
split v_or32_10 tmp_to_be_used v_shr_i7780_10 63;
(*   %56 = load i64, i64* %arrayidx10.11, align 8, !tbaa !3 *)
mov v56 c_88;
(*   %add.11 = add i64 %56, %or32.10 *)
adds discard_56 v_add_11 v56 v_or32_10;
(*   %57 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751x2, i64 0, i64 11), align 8, !tbaa !3 *)
mov v57 p751x2_88;
(*   %and23.11 = and i64 %57, %sub12 *)
(* You may need to modify here *)
and uint64 v_and23_11 v57 v_sub12;
(*   %add24.11 = add i64 %and23.11, %add.11 *)
adds discard_57 v_add24_11 v_and23_11 v_add_11;
(*   store i64 %add24.11, i64* %arrayidx10.11, align 8, !tbaa !3 *)
mov c_88 v_add24_11;
(*   ret void *)


(* Outputs *)

mov c00 c_0@uint64;
mov c01 c_8@uint64;
mov c02 c_16@uint64;
mov c03 c_24@uint64;
mov c04 c_32@uint64;
mov c05 c_40@uint64;
mov c06 c_48@uint64;
mov c07 c_56@uint64;
mov c08 c_64@uint64;
mov c09 c_72@uint64;
mov c10 c_80@uint64;
mov c11 c_88@uint64;


{
  true
  &&
  (* c = a-b mod p751 *)
  (* c in [0, 2*p751-1] *)
  and [
    eqsmod limbs 64 [c00, c01, c02, c03, c04, c05, c06, c07, c08, c09, c10, c11]
           limbs 64 [a00, a01, a02, a03, a04, a05, a06, a07, a08, a09, a10, a11]
	   - limbs 64 [b00, b01, b02, b03, b04, b05, b06, b07, b08, b09, b10, b11]
	   const 768 (2**372 * 3**239 - 1),
    0@768 <=u limbs 64 [c00, c01, c02, c03, c04, c05, c06, c07, c08, c09, c10, c11],
    limbs 64 [c00, c01, c02, c03, c04, c05, c06, c07, c08, c09, c10, c11]
      <=u const 768 (2 * (2**372 * 3**239 - 1) - 1)
  ]
}


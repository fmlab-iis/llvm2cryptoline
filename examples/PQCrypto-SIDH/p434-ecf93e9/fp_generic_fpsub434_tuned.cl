(* @laptop: cv -v -disable_safety fp_generic_fpsub434_tuned.cl
(did not use algebraic verification, so disabling safety checks is ok)
Parsing Cryptoline file:		[OK]		0.002278 seconds
Checking well-formedness:		[OK]		0.001022 seconds
Transforming to SSA form:		[OK]		0.000670 seconds
Normalizing specification:		[OK]		0.000254 seconds
Rewriting assignments:			[OK]		0.000195 seconds
Verifying range specification:		[OK]		21.536952 seconds
Rewriting value-preserved casting:	[OK]		0.000046 seconds
Verifying algebraic specification:	[OK]		0.000253 seconds
Verification result:			[OK]		21.542230 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5, uint64 a6,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4, uint64 b5, uint64 b6) =
{
  true
  &&
  (* p434 = 2^216*3^137-1 *)
  (* a, b in [0, 2*p434-1] *)
  and [
      0@448 <=u limbs 64 [a0, a1, a2, a3, a4, a5, a6],
      limbs 64 [a0, a1, a2, a3, a4, a5, a6] <=u const 448 (2 * (2**216 * 3**137 - 1) - 1),
      0@448 <=u limbs 64 [b0, b1, b2, b3, b4, b5, b6],
      limbs 64 [b0, b1, b2, b3, b4, b5, b6] <=u const 448 (2 * (2**216 * 3**137 - 1) - 1)
  ]
}

mov a_0 a0;
mov a_8 a1;
mov a_16 a2;
mov a_24 a3;
mov a_32 a4;
mov a_40 a5;
mov a_48 a6;
mov b_0 b0;
mov b_8 b1;
mov b_16 b2;
mov b_24 b3;
mov b_32 b4;
mov b_40 b5;
mov b_48 b6;
mov p434x2_0 0xFFFFFFFFFFFFFFFE@uint64;
mov p434x2_8 0xFFFFFFFFFFFFFFFF@uint64;
mov p434x2_16 0xFFFFFFFFFFFFFFFF@uint64;
mov p434x2_24 0xFB82ECF5C5FFFFFF@uint64;
mov p434x2_32 0xF78CB8F062B15D47@uint64;
mov p434x2_40 0xD9F8BFAD038A40AC@uint64;
mov p434x2_48 0x0004683E4E2EE688@uint64;


(*   %0 = load i64, i64* %a, align 8, !tbaa !3 *)
mov v0 a_0;
(*   %1 = load i64, i64* %b, align 8, !tbaa !3 *)
mov v1 b_0;
(*   %sub = sub i64 %0, %1 *)
sub v_sub v0 v1;
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
sub v_sub_1 v2 v3;
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
sub v_sub_i_i_1 (0)@uint64 v_sub_1;
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
sub v_sub8_1 v_sub_1 v_shr_i;
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
sub v_sub_2 v4 v5;
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
sub v_sub_i_i_2 (0)@uint64 v_sub_2;
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
sub v_sub8_2 v_sub_2 v_conv_2;
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
sub v_sub_3 v6 v7;
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
sub v_sub_i_i_3 (0)@uint64 v_sub_3;
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
sub v_sub8_3 v_sub_3 v_conv_3;
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
sub v_sub_4 v8 v9;
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
sub v_sub_i_i_4 (0)@uint64 v_sub_4;
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
sub v_sub8_4 v_sub_4 v_conv_4;
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
sub v_sub_5 v10 v11;
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
sub v_sub_i_i_5 (0)@uint64 v_sub_5;
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
sub v_sub8_5 v_sub_5 v_conv_5;
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
sub v_sub_6 v12 v13;
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
sub v_sub_i_i_6 (0)@uint64 v_sub_6;
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
sub v_sub8_6 v_sub_6 v_conv_6;
(*   %arrayidx10.6 = getelementptr inbounds i64, i64* %c, i64 6 *)
(*   %conv11 = zext i32 %or.6 to i64 *)
cast v_conv11@uint64 v_or_6@uint32;
(*   %sub12 = sub nsw i64 0, %conv11 *)
sub v_sub12 (0)@uint64 v_conv11;
(*   %14 = load i64, i64* %c, align 8, !tbaa !3 *)
mov v14 c_0;
(*   %15 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 0), align 16, !tbaa !3 *)
mov v15 p434x2_0;
(*   %and23 = and i64 %15, %sub12 *)
(* You may need to modify here *)
and uint64 v_and23 v15 v_sub12;
(*   %add24 = add i64 %and23, %14 *)
add v_add24 v_and23 v14;
(*   store i64 %add24, i64* %c, align 8, !tbaa !3 *)
mov c_0 v_add24;
(*   %xor.i66 = xor i64 %add24, %14 *)
(* You may need to modify here *)
xor uint64 v_xor_i66 v_add24 v14;
(*   %xor1.i68 = xor i64 %and23, %14 *)
(* You may need to modify here *)
xor uint64 v_xor1_i68 v_and23 v14;
(*   %or.i69 = or i64 %xor.i66, %xor1.i68 *)
(* You may need to modify here *)
or uint64 v_or_i69 v_xor_i66 v_xor1_i68;
(*   %xor2.i70 = xor i64 %or.i69, %add24 *)
(* You may need to modify here *)
xor uint64 v_xor2_i70 v_or_i69 v_add24;
(*   %or32 = lshr i64 %xor2.i70, 63 *)
(* You may need to modify here *)
split v_or32 tmp_to_be_used v_xor2_i70 63;
(*   %16 = load i64, i64* %arrayidx10.1, align 8, !tbaa !3 *)
mov v16 c_8;
(*   %add.1 = add i64 %16, %or32 *)
add v_add_1 v16 v_or32;
(*   %17 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 1), align 8, !tbaa !3 *)
mov v17 p434x2_8;
(*   %and23.1 = and i64 %17, %sub12 *)
(* You may need to modify here *)
and uint64 v_and23_1 v17 v_sub12;
(*   %add24.1 = add i64 %and23.1, %add.1 *)
add v_add24_1 v_and23_1 v_add_1;
(*   store i64 %add24.1, i64* %arrayidx10.1, align 8, !tbaa !3 *)
mov c_8 v_add24_1;
(*   %18 = xor i64 %add.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v18 v_add_1 (0x8000000000000000)@uint64;
(*   %xor2.i76.1 = and i64 %18, %16 *)
(* You may need to modify here *)
and uint64 v_xor2_i76_1 v18 v16;
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
(*   %19 = load i64, i64* %arrayidx10.2, align 8, !tbaa !3 *)
mov v19 c_16;
(*   %add.2 = add i64 %19, %or32.1 *)
add v_add_2 v19 v_or32_1;
(*   %20 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 2), align 16, !tbaa !3 *)
mov v20 p434x2_16;
(*   %and23.2 = and i64 %20, %sub12 *)
(* You may need to modify here *)
and uint64 v_and23_2 v20 v_sub12;
(*   %add24.2 = add i64 %and23.2, %add.2 *)
add v_add24_2 v_and23_2 v_add_2;
(*   store i64 %add24.2, i64* %arrayidx10.2, align 8, !tbaa !3 *)
mov c_16 v_add24_2;
(*   %21 = xor i64 %add.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v21 v_add_2 (0x8000000000000000)@uint64;
(*   %xor2.i76.2 = and i64 %21, %19 *)
(* You may need to modify here *)
and uint64 v_xor2_i76_2 v21 v19;
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
(*   %22 = load i64, i64* %arrayidx10.3, align 8, !tbaa !3 *)
mov v22 c_24;
(*   %add.3 = add i64 %22, %or32.2 *)
add v_add_3 v22 v_or32_2;
(*   %23 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 3), align 8, !tbaa !3 *)
mov v23 p434x2_24;
(*   %and23.3 = and i64 %23, %sub12 *)
(* You may need to modify here *)
and uint64 v_and23_3 v23 v_sub12;
(*   %add24.3 = add i64 %and23.3, %add.3 *)
add v_add24_3 v_and23_3 v_add_3;
(*   store i64 %add24.3, i64* %arrayidx10.3, align 8, !tbaa !3 *)
mov c_24 v_add24_3;
(*   %24 = xor i64 %add.3, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v24 v_add_3 (0x8000000000000000)@uint64;
(*   %xor2.i76.3 = and i64 %24, %22 *)
(* You may need to modify here *)
and uint64 v_xor2_i76_3 v24 v22;
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
(*   %25 = load i64, i64* %arrayidx10.4, align 8, !tbaa !3 *)
mov v25 c_32;
(*   %add.4 = add i64 %25, %or32.3 *)
add v_add_4 v25 v_or32_3;
(*   %26 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 4), align 16, !tbaa !3 *)
mov v26 p434x2_32;
(*   %and23.4 = and i64 %26, %sub12 *)
(* You may need to modify here *)
and uint64 v_and23_4 v26 v_sub12;
(*   %add24.4 = add i64 %and23.4, %add.4 *)
add v_add24_4 v_and23_4 v_add_4;
(*   store i64 %add24.4, i64* %arrayidx10.4, align 8, !tbaa !3 *)
mov c_32 v_add24_4;
(*   %27 = xor i64 %add.4, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v27 v_add_4 (0x8000000000000000)@uint64;
(*   %xor2.i76.4 = and i64 %27, %25 *)
(* You may need to modify here *)
and uint64 v_xor2_i76_4 v27 v25;
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
(*   %add.5 = add i64 %sub8.5, %or32.4 *)
add v_add_5 v_sub8_5 v_or32_4;
(*   %28 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 5), align 8, !tbaa !3 *)
mov v28 p434x2_40;
(*   %and23.5 = and i64 %28, %sub12 *)
(* You may need to modify here *)
and uint64 v_and23_5 v28 v_sub12;
(*   %add24.5 = add i64 %and23.5, %add.5 *)
add v_add24_5 v_and23_5 v_add_5;
(*   store i64 %add24.5, i64* %arrayidx10.5, align 8, !tbaa !3 *)
mov c_40 v_add24_5;
(*   %29 = xor i64 %add.5, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v29 v_add_5 (0x8000000000000000)@uint64;
(*   %xor2.i76.5 = and i64 %29, %sub8.5 *)
(* You may need to modify here *)
and uint64 v_xor2_i76_5 v29 v_sub8_5;
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
(*   %add.6 = add i64 %sub8.6, %or32.5 *)
add v_add_6 v_sub8_6 v_or32_5;
(*   %30 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 6), align 16, !tbaa !3 *)
mov v30 p434x2_48;
(*   %and23.6 = and i64 %30, %sub12 *)
(* You may need to modify here *)
and uint64 v_and23_6 v30 v_sub12;
(*   %add24.6 = add i64 %and23.6, %add.6 *)
add v_add24_6 v_and23_6 v_add_6;
(*   store i64 %add24.6, i64* %arrayidx10.6, align 8, !tbaa !3 *)
mov c_48 v_add24_6;
(*   ret void *)


(* Outputs *)

mov c0 c_0@uint64;
mov c1 c_8@uint64;
mov c2 c_16@uint64;
mov c3 c_24@uint64;
mov c4 c_32@uint64;
mov c5 c_40@uint64;
mov c6 c_48@uint64;


{
  true
  &&
  (* c = a-b mod p434 *)
  (* c in [0, 2*p434-1] *)
  and [
    eqsmod limbs 64 [c0, c1, c2, c3, c4, c5, c6]
           limbs 64 [a0, a1, a2, a3, a4, a5, a6] - limbs 64 [b0, b1, b2, b3, b4, b5, b6]
           const 448 (2**216 * 3**137 - 1),
    0@448 <=u limbs 64 [c0, c1, c2, c3, c4, c5, c6],
    limbs 64 [c0, c1, c2, c3, c4, c5, c6] <=u const 448 (2 * (2**216 * 3**137 - 1) - 1)
  ]
}


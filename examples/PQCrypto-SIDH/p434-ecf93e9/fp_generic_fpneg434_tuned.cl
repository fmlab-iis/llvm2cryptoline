(* @laptop: cv -isafety -v fp_generic_fpneg434_tuned.cl      
Parsing Cryptoline file:		[OK]		0.003195 seconds
Checking well-formedness:		[OK]		0.000410 seconds
Transforming to SSA form:		[OK]		0.000191 seconds
Normalizing specification:		[OK]		0.000159 seconds
Rewriting assignments:			[OK]		0.000124 seconds
Verifying program safety:		[OK]		0.305083 seconds
Verifying range specification:		[OK]		3.416489 seconds
Rewriting value-preserved casting:	[OK]		0.000029 seconds
Verifying algebraic specification:	[OK]		0.000168 seconds
Verification result:			[OK]		3.726280 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5, uint64 a6) =
{
  true
  &&
  (* p434 = 2^216*3^137-1 *)
  (* a in [0, 2*p434-1] *)
  and [
    0@448 <=u limbs 64 [a0, a1, a2, a3, a4, a5, a6],
    limbs 64 [a0, a1, a2, a3, a4, a5, a6] <=u const 448 (2 * (2**216 * 3**137 - 1) - 1)
  ]
}

mov a_0 a0;
mov a_8 a1;
mov a_16 a2;
mov a_24 a3;
mov a_32 a4;
mov a_40 a5;
mov a_48 a6;
mov p434x2_0 0xFFFFFFFFFFFFFFFE@uint64;
mov p434x2_8 0xFFFFFFFFFFFFFFFF@uint64;
mov p434x2_16 0xFFFFFFFFFFFFFFFF@uint64;
mov p434x2_24 0xFB82ECF5C5FFFFFF@uint64;
mov p434x2_32 0xF78CB8F062B15D47@uint64;
mov p434x2_40 0xD9F8BFAD038A40AC@uint64;
mov p434x2_48 0x0004683E4E2EE688@uint64;


(*   %0 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 0), align 16, !tbaa !3 *)
mov v0 p434x2_0;
(*   %1 = load i64, i64* %a, align 8, !tbaa !3 *)
mov v1 a_0;
(*   %sub = sub i64 %0, %1 *)
subb discard v_sub v0 v1;
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
(*   %2 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 1), align 8, !tbaa !3 *)
mov v2 p434x2_8;
(*   %arrayidx2.1 = getelementptr inbounds i64, i64* %a, i64 1 *)
(*   %3 = load i64, i64* %arrayidx2.1, align 8, !tbaa !3 *)
mov v3 a_8;
(*   %sub.1 = sub i64 %2, %3 *)
subb discard v_sub_1 v2 v3;
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
subb discard v_sub_i_i_1 (0)@uint64 v_sub_1;
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
subb discard v_sub8_1 v_sub_1 v_shr_i;
(*   store i64 %sub8.1, i64* %arrayidx2.1, align 8, !tbaa !3 *)
mov a_8 v_sub8_1;
(*   %4 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 2), align 16, !tbaa !3 *)
mov v4 p434x2_16;
(*   %arrayidx2.2 = getelementptr inbounds i64, i64* %a, i64 2 *)
(*   %5 = load i64, i64* %arrayidx2.2, align 8, !tbaa !3 *)
mov v5 a_16;
(*   %sub.2 = sub i64 %4, %5 *)
subb discard v_sub_2 v4 v5;
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
subb discard v_sub_i_i_2 (0)@uint64 v_sub_2;
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
subb discard v_sub8_2 v_sub_2 v_conv_2;
(*   store i64 %sub8.2, i64* %arrayidx2.2, align 8, !tbaa !3 *)
mov a_16 v_sub8_2;
(*   %6 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 3), align 8, !tbaa !3 *)
mov v6 p434x2_24;
(*   %arrayidx2.3 = getelementptr inbounds i64, i64* %a, i64 3 *)
(*   %7 = load i64, i64* %arrayidx2.3, align 8, !tbaa !3 *)
mov v7 a_24;
(*   %sub.3 = sub i64 %6, %7 *)
subb discard v_sub_3 v6 v7;
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
subb discard v_sub_i_i_3 (0)@uint64 v_sub_3;
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
subb discard v_sub8_3 v_sub_3 v_conv_3;
(*   store i64 %sub8.3, i64* %arrayidx2.3, align 8, !tbaa !3 *)
mov a_24 v_sub8_3;
(*   %8 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 4), align 16, !tbaa !3 *)
mov v8 p434x2_32;
(*   %arrayidx2.4 = getelementptr inbounds i64, i64* %a, i64 4 *)
(*   %9 = load i64, i64* %arrayidx2.4, align 8, !tbaa !3 *)
mov v9 a_32;
(*   %sub.4 = sub i64 %8, %9 *)
subb discard v_sub_4 v8 v9;
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
subb discard v_sub_i_i_4 (0)@uint64 v_sub_4;
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
subb discard v_sub8_4 v_sub_4 v_conv_4;
(*   store i64 %sub8.4, i64* %arrayidx2.4, align 8, !tbaa !3 *)
mov a_32 v_sub8_4;
(*   %10 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 5), align 8, !tbaa !3 *)
mov v10 p434x2_40;
(*   %arrayidx2.5 = getelementptr inbounds i64, i64* %a, i64 5 *)
(*   %11 = load i64, i64* %arrayidx2.5, align 8, !tbaa !3 *)
mov v11 a_40;
(*   %sub.5 = sub i64 %10, %11 *)
subb discard v_sub_5 v10 v11;
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
subb discard v_sub_i_i_5 (0)@uint64 v_sub_5;
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
subb discard v_sub8_5 v_sub_5 v_conv_5;
(*   store i64 %sub8.5, i64* %arrayidx2.5, align 8, !tbaa !3 *)
mov a_40 v_sub8_5;
(*   %12 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 6), align 16, !tbaa !3 *)
mov v12 p434x2_48;
(*   %arrayidx2.6 = getelementptr inbounds i64, i64* %a, i64 6 *)
(*   %13 = load i64, i64* %arrayidx2.6, align 8, !tbaa !3 *)
mov v13 a_48;
(*   %sub.6 = sub i64 %12, %13 *)
subb discard v_sub_6 v12 v13;
(*   %conv.6 = zext i32 %or.5 to i64 *)
cast v_conv_6@uint64 v_or_5@uint32;
(*   %sub8.6 = sub i64 %sub.6, %conv.6 *)
subb discard v_sub8_6 v_sub_6 v_conv_6;
(*   store i64 %sub8.6, i64* %arrayidx2.6, align 8, !tbaa !3 *)
mov a_48 v_sub8_6;
(*   ret void *)


(* Outputs *)

mov c0 a_0@uint64;
mov c1 a_8@uint64;
mov c2 a_16@uint64;
mov c3 a_24@uint64;
mov c4 a_32@uint64;
mov c5 a_40@uint64;
mov c6 a_48@uint64;


{
  true
  &&
  and [
    (* c = -a mod p434 *)  
    equmod limbs 64 [c0, c1, c2, c3, c4, c5, c6] + limbs 64 [a0, a1, a2, a3, a4, a5, a6]
    	   0@448
           const 448 (2**216 * 3**137 - 1),
    (* FAILED: c in [0, 2*p434-1] *)	   
    /* 0@448 <=u limbs 64 [c0, c1, c2, c3, c4, c5, c6], */
    /* limbs 64 [c0, c1, c2, c3, c4, c5, c6] <=u const 448 (2 * (2**216 * 3**137 - 1) - 1) */
    
    (* Verified: c in [1, 2*p434] *)
    1@448 <=u limbs 64 [c0, c1, c2, c3, c4, c5, c6],
    limbs 64 [c0, c1, c2, c3, c4, c5, c6] <=u const 448 (2 * (2**216 * 3**137 - 1))
  ]
}


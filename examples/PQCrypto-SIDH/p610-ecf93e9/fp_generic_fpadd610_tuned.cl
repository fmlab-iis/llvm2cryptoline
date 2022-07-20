(* @laptop: cv -v -isafety fp_generic_fpadd610_tuned.cl
Parsing Cryptoline file:		[OK]		0.005028 seconds
Checking well-formedness:		[OK]		0.001050 seconds
Transforming to SSA form:		[OK]		0.000538 seconds
Normalizing specification:		[OK]		0.000448 seconds
Rewriting assignments:			[OK]		0.000525 seconds
Verifying program safety:		[OK]		0.536810 seconds
Verifying range specification:		[OK]		54.123191 seconds
Rewriting value-preserved casting:	[OK]		0.000093 seconds
Verifying algebraic specification:	[OK]		0.000252 seconds
Verification result:			[OK]		54.668950 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4,
           uint64 a5, uint64 a6, uint64 a7, uint64 a8, uint64 a9,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4,
	   uint64 b5, uint64 b6, uint64 b7, uint64 b8, uint64 b9) =
{
  true
  &&
  (* p610 = 2^305*3^192-1 *)
  (* a, b in [0, 2*p610-1] *)
  and [
    0@640 <=u limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7, a8, a9],
    limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7, a8, a9] <=u const 640 (2 * (2**305 * 3**192 - 1) - 1),
    0@640 <=u limbs 64 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9],
    limbs 64 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9] <=u const 640 (2 * (2**305 * 3**192 - 1) - 1)
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
mov a_64 a8;
mov a_72 a9;
mov b_0 b0;
mov b_8 b1;
mov b_16 b2;
mov b_24 b3;
mov b_32 b4;
mov b_40 b5;
mov b_48 b6;
mov b_56 b7;
mov b_64 b8;
mov b_72 b9;
mov p610x2_0 0xFFFFFFFFFFFFFFFE@uint64;
mov p610x2_8 0xFFFFFFFFFFFFFFFF@uint64;
mov p610x2_16 0xFFFFFFFFFFFFFFFF@uint64;
mov p610x2_24 0xFFFFFFFFFFFFFFFF@uint64;
mov p610x2_32 0xDC03FFFFFFFFFFFF@uint64;
mov p610x2_40 0x62F09BD154B5605C@uint64;
mov p610x2_48 0x35CF7E8A091FF357@uint64;
mov p610x2_56 0x64AB65F421884A55@uint64;
mov p610x2_64 0x03202184A3CFB119@uint64;
mov p610x2_72 0x00000004F7ED4ED1@uint64;


(*   %0 = load i64, i64* %a, align 8, !tbaa !3 *)
mov v0 a_0;
(*   %1 = load i64, i64* %b, align 8, !tbaa !3 *)
mov v1 b_0;
(*   %add3 = add i64 %1, %0 *)
adds discard_0 v_add3 v1 v0;
(*   store i64 %add3, i64* %c, align 8, !tbaa !3 *)
mov c_0 v_add3;
(*   %xor.i122 = xor i64 %add3, %0 *)
(* You may need to modify here *)
xor uint64 v_xor_i122 v_add3 v0;
(*   %xor1.i124 = xor i64 %1, %0 *)
(* You may need to modify here *)
xor uint64 v_xor1_i124 v1 v0;
(*   %or.i125 = or i64 %xor.i122, %xor1.i124 *)
(* You may need to modify here *)
or uint64 v_or_i125 v_xor_i122 v_xor1_i124;
(*   %xor2.i126 = xor i64 %or.i125, %add3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i126 v_or_i125 v_add3;
(*   %or = lshr i64 %xor2.i126, 63 *)
(* You may need to modify here *)
split v_or tmp_to_be_used v_xor2_i126 63;
(*   %arrayidx.1 = getelementptr inbounds i64, i64* %a, i64 1 *)
(*   %2 = load i64, i64* %arrayidx.1, align 8, !tbaa !3 *)
mov v2 a_8;
(*   %add.1 = add i64 %2, %or *)
adds discard_1 v_add_1 v2 v_or;
(*   %arrayidx2.1 = getelementptr inbounds i64, i64* %b, i64 1 *)
(*   %3 = load i64, i64* %arrayidx2.1, align 8, !tbaa !3 *)
mov v3 b_8;
(*   %add3.1 = add i64 %3, %add.1 *)
adds discard_2 v_add3_1 v3 v_add_1;
(*   %arrayidx5.1 = getelementptr inbounds i64, i64* %c, i64 1 *)
(*   store i64 %add3.1, i64* %arrayidx5.1, align 8, !tbaa !3 *)
mov c_8 v_add3_1;
(*   %4 = xor i64 %add.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v4 v_add_1 (0x8000000000000000)@uint64;
(*   %xor2.i.1 = and i64 %4, %2 *)
(* You may need to modify here *)
and uint64 v_xor2_i_1 v4 v2;
(*   %xor.i122.1 = xor i64 %add3.1, %add.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i122_1 v_add3_1 v_add_1;
(*   %xor1.i124.1 = xor i64 %3, %add.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i124_1 v3 v_add_1;
(*   %or.i125.1 = or i64 %xor.i122.1, %xor1.i124.1 *)
(* You may need to modify here *)
or uint64 v_or_i125_1 v_xor_i122_1 v_xor1_i124_1;
(*   %xor2.i126.1 = xor i64 %or.i125.1, %add3.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i126_1 v_or_i125_1 v_add3_1;
(*   %shr.i130.1 = or i64 %xor2.i126.1, %xor2.i.1 *)
(* You may need to modify here *)
or uint64 v_shr_i130_1 v_xor2_i126_1 v_xor2_i_1;
(*   %or.1 = lshr i64 %shr.i130.1, 63 *)
(* You may need to modify here *)
split v_or_1 tmp_to_be_used v_shr_i130_1 63;
(*   %arrayidx.2 = getelementptr inbounds i64, i64* %a, i64 2 *)
(*   %5 = load i64, i64* %arrayidx.2, align 8, !tbaa !3 *)
mov v5 a_16;
(*   %add.2 = add i64 %5, %or.1 *)
adds discard_3 v_add_2 v5 v_or_1;
(*   %arrayidx2.2 = getelementptr inbounds i64, i64* %b, i64 2 *)
(*   %6 = load i64, i64* %arrayidx2.2, align 8, !tbaa !3 *)
mov v6 b_16;
(*   %add3.2 = add i64 %6, %add.2 *)
adds discard_4 v_add3_2 v6 v_add_2;
(*   %arrayidx5.2 = getelementptr inbounds i64, i64* %c, i64 2 *)
(*   store i64 %add3.2, i64* %arrayidx5.2, align 8, !tbaa !3 *)
mov c_16 v_add3_2;
(*   %7 = xor i64 %add.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v7 v_add_2 (0x8000000000000000)@uint64;
(*   %xor2.i.2 = and i64 %7, %5 *)
(* You may need to modify here *)
and uint64 v_xor2_i_2 v7 v5;
(*   %xor.i122.2 = xor i64 %add3.2, %add.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i122_2 v_add3_2 v_add_2;
(*   %xor1.i124.2 = xor i64 %6, %add.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i124_2 v6 v_add_2;
(*   %or.i125.2 = or i64 %xor.i122.2, %xor1.i124.2 *)
(* You may need to modify here *)
or uint64 v_or_i125_2 v_xor_i122_2 v_xor1_i124_2;
(*   %xor2.i126.2 = xor i64 %or.i125.2, %add3.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i126_2 v_or_i125_2 v_add3_2;
(*   %shr.i130.2 = or i64 %xor2.i126.2, %xor2.i.2 *)
(* You may need to modify here *)
or uint64 v_shr_i130_2 v_xor2_i126_2 v_xor2_i_2;
(*   %or.2 = lshr i64 %shr.i130.2, 63 *)
(* You may need to modify here *)
split v_or_2 tmp_to_be_used v_shr_i130_2 63;
(*   %arrayidx.3 = getelementptr inbounds i64, i64* %a, i64 3 *)
(*   %8 = load i64, i64* %arrayidx.3, align 8, !tbaa !3 *)
mov v8 a_24;
(*   %add.3 = add i64 %8, %or.2 *)
adds discard_5 v_add_3 v8 v_or_2;
(*   %arrayidx2.3 = getelementptr inbounds i64, i64* %b, i64 3 *)
(*   %9 = load i64, i64* %arrayidx2.3, align 8, !tbaa !3 *)
mov v9 b_24;
(*   %add3.3 = add i64 %9, %add.3 *)
adds discard_6 v_add3_3 v9 v_add_3;
(*   %arrayidx5.3 = getelementptr inbounds i64, i64* %c, i64 3 *)
(*   store i64 %add3.3, i64* %arrayidx5.3, align 8, !tbaa !3 *)
mov c_24 v_add3_3;
(*   %10 = xor i64 %add.3, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v10 v_add_3 (0x8000000000000000)@uint64;
(*   %xor2.i.3 = and i64 %10, %8 *)
(* You may need to modify here *)
and uint64 v_xor2_i_3 v10 v8;
(*   %xor.i122.3 = xor i64 %add3.3, %add.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i122_3 v_add3_3 v_add_3;
(*   %xor1.i124.3 = xor i64 %9, %add.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i124_3 v9 v_add_3;
(*   %or.i125.3 = or i64 %xor.i122.3, %xor1.i124.3 *)
(* You may need to modify here *)
or uint64 v_or_i125_3 v_xor_i122_3 v_xor1_i124_3;
(*   %xor2.i126.3 = xor i64 %or.i125.3, %add3.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i126_3 v_or_i125_3 v_add3_3;
(*   %shr.i130.3 = or i64 %xor2.i126.3, %xor2.i.3 *)
(* You may need to modify here *)
or uint64 v_shr_i130_3 v_xor2_i126_3 v_xor2_i_3;
(*   %or.3 = lshr i64 %shr.i130.3, 63 *)
(* You may need to modify here *)
split v_or_3 tmp_to_be_used v_shr_i130_3 63;
(*   %arrayidx.4 = getelementptr inbounds i64, i64* %a, i64 4 *)
(*   %11 = load i64, i64* %arrayidx.4, align 8, !tbaa !3 *)
mov v11 a_32;
(*   %add.4 = add i64 %11, %or.3 *)
adds discard_7 v_add_4 v11 v_or_3;
(*   %arrayidx2.4 = getelementptr inbounds i64, i64* %b, i64 4 *)
(*   %12 = load i64, i64* %arrayidx2.4, align 8, !tbaa !3 *)
mov v12 b_32;
(*   %add3.4 = add i64 %12, %add.4 *)
adds discard_8 v_add3_4 v12 v_add_4;
(*   %arrayidx5.4 = getelementptr inbounds i64, i64* %c, i64 4 *)
(*   store i64 %add3.4, i64* %arrayidx5.4, align 8, !tbaa !3 *)
mov c_32 v_add3_4;
(*   %13 = xor i64 %add.4, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v13 v_add_4 (0x8000000000000000)@uint64;
(*   %xor2.i.4 = and i64 %13, %11 *)
(* You may need to modify here *)
and uint64 v_xor2_i_4 v13 v11;
(*   %xor.i122.4 = xor i64 %add3.4, %add.4 *)
(* You may need to modify here *)
xor uint64 v_xor_i122_4 v_add3_4 v_add_4;
(*   %xor1.i124.4 = xor i64 %12, %add.4 *)
(* You may need to modify here *)
xor uint64 v_xor1_i124_4 v12 v_add_4;
(*   %or.i125.4 = or i64 %xor.i122.4, %xor1.i124.4 *)
(* You may need to modify here *)
or uint64 v_or_i125_4 v_xor_i122_4 v_xor1_i124_4;
(*   %xor2.i126.4 = xor i64 %or.i125.4, %add3.4 *)
(* You may need to modify here *)
xor uint64 v_xor2_i126_4 v_or_i125_4 v_add3_4;
(*   %shr.i130.4 = or i64 %xor2.i126.4, %xor2.i.4 *)
(* You may need to modify here *)
or uint64 v_shr_i130_4 v_xor2_i126_4 v_xor2_i_4;
(*   %or.4 = lshr i64 %shr.i130.4, 63 *)
(* You may need to modify here *)
split v_or_4 tmp_to_be_used v_shr_i130_4 63;
(*   %arrayidx.5 = getelementptr inbounds i64, i64* %a, i64 5 *)
(*   %14 = load i64, i64* %arrayidx.5, align 8, !tbaa !3 *)
mov v14 a_40;
(*   %add.5 = add i64 %14, %or.4 *)
adds discard_9 v_add_5 v14 v_or_4;
(*   %arrayidx2.5 = getelementptr inbounds i64, i64* %b, i64 5 *)
(*   %15 = load i64, i64* %arrayidx2.5, align 8, !tbaa !3 *)
mov v15 b_40;
(*   %add3.5 = add i64 %15, %add.5 *)
adds discard_10 v_add3_5 v15 v_add_5;
(*   %arrayidx5.5 = getelementptr inbounds i64, i64* %c, i64 5 *)
(*   store i64 %add3.5, i64* %arrayidx5.5, align 8, !tbaa !3 *)
mov c_40 v_add3_5;
(*   %16 = xor i64 %add.5, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v16 v_add_5 (0x8000000000000000)@uint64;
(*   %xor2.i.5 = and i64 %16, %14 *)
(* You may need to modify here *)
and uint64 v_xor2_i_5 v16 v14;
(*   %xor.i122.5 = xor i64 %add3.5, %add.5 *)
(* You may need to modify here *)
xor uint64 v_xor_i122_5 v_add3_5 v_add_5;
(*   %xor1.i124.5 = xor i64 %15, %add.5 *)
(* You may need to modify here *)
xor uint64 v_xor1_i124_5 v15 v_add_5;
(*   %or.i125.5 = or i64 %xor.i122.5, %xor1.i124.5 *)
(* You may need to modify here *)
or uint64 v_or_i125_5 v_xor_i122_5 v_xor1_i124_5;
(*   %xor2.i126.5 = xor i64 %or.i125.5, %add3.5 *)
(* You may need to modify here *)
xor uint64 v_xor2_i126_5 v_or_i125_5 v_add3_5;
(*   %shr.i130.5 = or i64 %xor2.i126.5, %xor2.i.5 *)
(* You may need to modify here *)
or uint64 v_shr_i130_5 v_xor2_i126_5 v_xor2_i_5;
(*   %or.5 = lshr i64 %shr.i130.5, 63 *)
(* You may need to modify here *)
split v_or_5 tmp_to_be_used v_shr_i130_5 63;
(*   %arrayidx.6 = getelementptr inbounds i64, i64* %a, i64 6 *)
(*   %17 = load i64, i64* %arrayidx.6, align 8, !tbaa !3 *)
mov v17 a_48;
(*   %add.6 = add i64 %17, %or.5 *)
adds discard_11 v_add_6 v17 v_or_5;
(*   %arrayidx2.6 = getelementptr inbounds i64, i64* %b, i64 6 *)
(*   %18 = load i64, i64* %arrayidx2.6, align 8, !tbaa !3 *)
mov v18 b_48;
(*   %add3.6 = add i64 %18, %add.6 *)
adds discard_12 v_add3_6 v18 v_add_6;
(*   %arrayidx5.6 = getelementptr inbounds i64, i64* %c, i64 6 *)
(*   store i64 %add3.6, i64* %arrayidx5.6, align 8, !tbaa !3 *)
mov c_48 v_add3_6;
(*   %19 = xor i64 %add.6, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v19 v_add_6 (0x8000000000000000)@uint64;
(*   %xor2.i.6 = and i64 %19, %17 *)
(* You may need to modify here *)
and uint64 v_xor2_i_6 v19 v17;
(*   %xor.i122.6 = xor i64 %add3.6, %add.6 *)
(* You may need to modify here *)
xor uint64 v_xor_i122_6 v_add3_6 v_add_6;
(*   %xor1.i124.6 = xor i64 %18, %add.6 *)
(* You may need to modify here *)
xor uint64 v_xor1_i124_6 v18 v_add_6;
(*   %or.i125.6 = or i64 %xor.i122.6, %xor1.i124.6 *)
(* You may need to modify here *)
or uint64 v_or_i125_6 v_xor_i122_6 v_xor1_i124_6;
(*   %xor2.i126.6 = xor i64 %or.i125.6, %add3.6 *)
(* You may need to modify here *)
xor uint64 v_xor2_i126_6 v_or_i125_6 v_add3_6;
(*   %shr.i130.6 = or i64 %xor2.i126.6, %xor2.i.6 *)
(* You may need to modify here *)
or uint64 v_shr_i130_6 v_xor2_i126_6 v_xor2_i_6;
(*   %or.6 = lshr i64 %shr.i130.6, 63 *)
(* You may need to modify here *)
split v_or_6 tmp_to_be_used v_shr_i130_6 63;
(*   %arrayidx.7 = getelementptr inbounds i64, i64* %a, i64 7 *)
(*   %20 = load i64, i64* %arrayidx.7, align 8, !tbaa !3 *)
mov v20 a_56;
(*   %add.7 = add i64 %20, %or.6 *)
adds discard_13 v_add_7 v20 v_or_6;
(*   %arrayidx2.7 = getelementptr inbounds i64, i64* %b, i64 7 *)
(*   %21 = load i64, i64* %arrayidx2.7, align 8, !tbaa !3 *)
mov v21 b_56;
(*   %add3.7 = add i64 %21, %add.7 *)
adds discard_14 v_add3_7 v21 v_add_7;
(*   %arrayidx5.7 = getelementptr inbounds i64, i64* %c, i64 7 *)
(*   store i64 %add3.7, i64* %arrayidx5.7, align 8, !tbaa !3 *)
mov c_56 v_add3_7;
(*   %22 = xor i64 %add.7, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v22 v_add_7 (0x8000000000000000)@uint64;
(*   %xor2.i.7 = and i64 %22, %20 *)
(* You may need to modify here *)
and uint64 v_xor2_i_7 v22 v20;
(*   %xor.i122.7 = xor i64 %add3.7, %add.7 *)
(* You may need to modify here *)
xor uint64 v_xor_i122_7 v_add3_7 v_add_7;
(*   %xor1.i124.7 = xor i64 %21, %add.7 *)
(* You may need to modify here *)
xor uint64 v_xor1_i124_7 v21 v_add_7;
(*   %or.i125.7 = or i64 %xor.i122.7, %xor1.i124.7 *)
(* You may need to modify here *)
or uint64 v_or_i125_7 v_xor_i122_7 v_xor1_i124_7;
(*   %xor2.i126.7 = xor i64 %or.i125.7, %add3.7 *)
(* You may need to modify here *)
xor uint64 v_xor2_i126_7 v_or_i125_7 v_add3_7;
(*   %shr.i130.7 = or i64 %xor2.i126.7, %xor2.i.7 *)
(* You may need to modify here *)
or uint64 v_shr_i130_7 v_xor2_i126_7 v_xor2_i_7;
(*   %or.7 = lshr i64 %shr.i130.7, 63 *)
(* You may need to modify here *)
split v_or_7 tmp_to_be_used v_shr_i130_7 63;
(*   %arrayidx.8 = getelementptr inbounds i64, i64* %a, i64 8 *)
(*   %23 = load i64, i64* %arrayidx.8, align 8, !tbaa !3 *)
mov v23 a_64;
(*   %add.8 = add i64 %23, %or.7 *)
adds discard_15 v_add_8 v23 v_or_7;
(*   %arrayidx2.8 = getelementptr inbounds i64, i64* %b, i64 8 *)
(*   %24 = load i64, i64* %arrayidx2.8, align 8, !tbaa !3 *)
mov v24 b_64;
(*   %add3.8 = add i64 %24, %add.8 *)
adds discard_16 v_add3_8 v24 v_add_8;
(*   %arrayidx5.8 = getelementptr inbounds i64, i64* %c, i64 8 *)
(*   store i64 %add3.8, i64* %arrayidx5.8, align 8, !tbaa !3 *)
mov c_64 v_add3_8;
(*   %25 = xor i64 %add.8, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v25 v_add_8 (0x8000000000000000)@uint64;
(*   %xor2.i.8 = and i64 %25, %23 *)
(* You may need to modify here *)
and uint64 v_xor2_i_8 v25 v23;
(*   %xor.i122.8 = xor i64 %add3.8, %add.8 *)
(* You may need to modify here *)
xor uint64 v_xor_i122_8 v_add3_8 v_add_8;
(*   %xor1.i124.8 = xor i64 %24, %add.8 *)
(* You may need to modify here *)
xor uint64 v_xor1_i124_8 v24 v_add_8;
(*   %or.i125.8 = or i64 %xor.i122.8, %xor1.i124.8 *)
(* You may need to modify here *)
or uint64 v_or_i125_8 v_xor_i122_8 v_xor1_i124_8;
(*   %xor2.i126.8 = xor i64 %or.i125.8, %add3.8 *)
(* You may need to modify here *)
xor uint64 v_xor2_i126_8 v_or_i125_8 v_add3_8;
(*   %shr.i130.8 = or i64 %xor2.i126.8, %xor2.i.8 *)
(* You may need to modify here *)
or uint64 v_shr_i130_8 v_xor2_i126_8 v_xor2_i_8;
(*   %or.8 = lshr i64 %shr.i130.8, 63 *)
(* You may need to modify here *)
split v_or_8 tmp_to_be_used v_shr_i130_8 63;
(*   %arrayidx.9 = getelementptr inbounds i64, i64* %a, i64 9 *)
(*   %26 = load i64, i64* %arrayidx.9, align 8, !tbaa !3 *)
mov v26 a_72;
(*   %add.9 = add i64 %26, %or.8 *)
adds discard_17 v_add_9 v26 v_or_8;
(*   %arrayidx2.9 = getelementptr inbounds i64, i64* %b, i64 9 *)
(*   %27 = load i64, i64* %arrayidx2.9, align 8, !tbaa !3 *)
mov v27 b_72;
(*   %add3.9 = add i64 %27, %add.9 *)
adds discard_18 v_add3_9 v27 v_add_9;
(*   %arrayidx5.9 = getelementptr inbounds i64, i64* %c, i64 9 *)
(*   store i64 %add3.9, i64* %arrayidx5.9, align 8, !tbaa !3 *)
mov c_72 v_add3_9;
(*   %28 = load i64, i64* %c, align 8, !tbaa !3 *)
mov v28 c_0;
(*   %29 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @p610x2, i64 0, i64 0), align 16, !tbaa !3 *)
mov v29 p610x2_0;
(*   %sub = sub i64 %28, %29 *)
subb discard_19 v_sub v28 v29;
(*   %xor.i115 = xor i64 %29, %28 *)
(* You may need to modify here *)
xor uint64 v_xor_i115 v29 v28;
(*   %xor1.i117 = xor i64 %sub, %29 *)
(* You may need to modify here *)
xor uint64 v_xor1_i117 v_sub v29;
(*   %or.i118 = or i64 %xor1.i117, %xor.i115 *)
(* You may need to modify here *)
or uint64 v_or_i118 v_xor1_i117 v_xor_i115;
(*   %xor2.i119 = xor i64 %or.i118, %28 *)
(* You may need to modify here *)
xor uint64 v_xor2_i119 v_or_i118 v28;
(*   %shr.i120 = lshr i64 %xor2.i119, 63 *)
(* You may need to modify here *)
split v_shr_i120 tmp_to_be_used v_xor2_i119 63;
(*   %conv.i121 = trunc i64 %shr.i120 to i32 *)
split tmp_v_shr_i120 v_conv_i121 v_shr_i120 32;
vpc v_conv_i121@uint32 v_conv_i121@uint64;
(*   store i64 %sub, i64* %c, align 8, !tbaa !3 *)
mov c_0 v_sub;
(*   %30 = load i64, i64* %arrayidx5.1, align 8, !tbaa !3 *)
mov v30 c_8;
(*   %31 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @p610x2, i64 0, i64 1), align 8, !tbaa !3 *)
mov v31 p610x2_8;
(*   %sub.1 = sub i64 %30, %31 *)
subb discard_20 v_sub_1 v30 v31;
(*   %xor.i115.1 = xor i64 %31, %30 *)
(* You may need to modify here *)
xor uint64 v_xor_i115_1 v31 v30;
(*   %xor1.i117.1 = xor i64 %sub.1, %31 *)
(* You may need to modify here *)
xor uint64 v_xor1_i117_1 v_sub_1 v31;
(*   %or.i118.1 = or i64 %xor1.i117.1, %xor.i115.1 *)
(* You may need to modify here *)
or uint64 v_or_i118_1 v_xor1_i117_1 v_xor_i115_1;
(*   %xor2.i119.1 = xor i64 %or.i118.1, %30 *)
(* You may need to modify here *)
xor uint64 v_xor2_i119_1 v_or_i118_1 v30;
(*   %shr.i120.1 = lshr i64 %xor2.i119.1, 63 *)
(* You may need to modify here *)
split v_shr_i120_1 tmp_to_be_used v_xor2_i119_1 63;
(*   %conv.i121.1 = trunc i64 %shr.i120.1 to i32 *)
split tmp_v_shr_i120_1 v_conv_i121_1 v_shr_i120_1 32;
vpc v_conv_i121_1@uint32 v_conv_i121_1@uint64;
(*   %sub.i.i.1 = sub i64 0, %sub.1 *)
subb discard_21 v_sub_i_i_1 (0)@uint64 v_sub_1;
(*   %or.i.i.1 = or i64 %sub.1, %sub.i.i.1 *)
(* You may need to modify here *)
or uint64 v_or_i_i_1 v_sub_1 v_sub_i_i_1;
(*   %shr.i.i.1 = lshr i64 %or.i.i.1, 63 *)
(* You may need to modify here *)
split v_shr_i_i_1 tmp_to_be_used v_or_i_i_1 63;
(*   %conv.i.i.1 = trunc i64 %shr.i.i.1 to i32 *)
split tmp_v_shr_i_i_1 v_conv_i_i_1 v_shr_i_i_1 32;
vpc v_conv_i_i_1@uint32 v_conv_i_i_1@uint64;
(*   %xor.i114.1 = xor i32 %conv.i.i.1, 1 *)
(* You may need to modify here *)
xor uint32 v_xor_i114_1 v_conv_i_i_1 (0x1)@uint32;
(*   %and.1 = and i32 %xor.i114.1, %conv.i121 *)
(* You may need to modify here *)
and uint32 v_and_1 v_xor_i114_1 v_conv_i121;
(*   %or25.1 = or i32 %and.1, %conv.i121.1 *)
(* You may need to modify here *)
or uint32 v_or25_1 v_and_1 v_conv_i121_1;
(*   %sub27.1 = sub i64 %sub.1, %shr.i120 *)
subb discard_22 v_sub27_1 v_sub_1 v_shr_i120;
(*   store i64 %sub27.1, i64* %arrayidx5.1, align 8, !tbaa !3 *)
mov c_8 v_sub27_1;
(*   %32 = load i64, i64* %arrayidx5.2, align 8, !tbaa !3 *)
mov v32 c_16;
(*   %33 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @p610x2, i64 0, i64 2), align 16, !tbaa !3 *)
mov v33 p610x2_16;
(*   %sub.2 = sub i64 %32, %33 *)
subb discard_23 v_sub_2 v32 v33;
(*   %xor.i115.2 = xor i64 %33, %32 *)
(* You may need to modify here *)
xor uint64 v_xor_i115_2 v33 v32;
(*   %xor1.i117.2 = xor i64 %sub.2, %33 *)
(* You may need to modify here *)
xor uint64 v_xor1_i117_2 v_sub_2 v33;
(*   %or.i118.2 = or i64 %xor1.i117.2, %xor.i115.2 *)
(* You may need to modify here *)
or uint64 v_or_i118_2 v_xor1_i117_2 v_xor_i115_2;
(*   %xor2.i119.2 = xor i64 %or.i118.2, %32 *)
(* You may need to modify here *)
xor uint64 v_xor2_i119_2 v_or_i118_2 v32;
(*   %shr.i120.2 = lshr i64 %xor2.i119.2, 63 *)
(* You may need to modify here *)
split v_shr_i120_2 tmp_to_be_used v_xor2_i119_2 63;
(*   %conv.i121.2 = trunc i64 %shr.i120.2 to i32 *)
split tmp_v_shr_i120_2 v_conv_i121_2 v_shr_i120_2 32;
vpc v_conv_i121_2@uint32 v_conv_i121_2@uint64;
(*   %sub.i.i.2 = sub i64 0, %sub.2 *)
subb discard_24 v_sub_i_i_2 (0)@uint64 v_sub_2;
(*   %or.i.i.2 = or i64 %sub.2, %sub.i.i.2 *)
(* You may need to modify here *)
or uint64 v_or_i_i_2 v_sub_2 v_sub_i_i_2;
(*   %shr.i.i.2 = lshr i64 %or.i.i.2, 63 *)
(* You may need to modify here *)
split v_shr_i_i_2 tmp_to_be_used v_or_i_i_2 63;
(*   %conv.i.i.2 = trunc i64 %shr.i.i.2 to i32 *)
split tmp_v_shr_i_i_2 v_conv_i_i_2 v_shr_i_i_2 32;
vpc v_conv_i_i_2@uint32 v_conv_i_i_2@uint64;
(*   %xor.i114.2 = xor i32 %conv.i.i.2, 1 *)
(* You may need to modify here *)
xor uint32 v_xor_i114_2 v_conv_i_i_2 (0x1)@uint32;
(*   %and.2 = and i32 %xor.i114.2, %or25.1 *)
(* You may need to modify here *)
and uint32 v_and_2 v_xor_i114_2 v_or25_1;
(*   %or25.2 = or i32 %and.2, %conv.i121.2 *)
(* You may need to modify here *)
or uint32 v_or25_2 v_and_2 v_conv_i121_2;
(*   %conv26.2 = zext i32 %or25.1 to i64 *)
cast v_conv26_2@uint64 v_or25_1@uint32;
(*   %sub27.2 = sub i64 %sub.2, %conv26.2 *)
subb discard_25 v_sub27_2 v_sub_2 v_conv26_2;
(*   store i64 %sub27.2, i64* %arrayidx5.2, align 8, !tbaa !3 *)
mov c_16 v_sub27_2;
(*   %34 = load i64, i64* %arrayidx5.3, align 8, !tbaa !3 *)
mov v34 c_24;
(*   %35 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @p610x2, i64 0, i64 3), align 8, !tbaa !3 *)
mov v35 p610x2_24;
(*   %sub.3 = sub i64 %34, %35 *)
subb discard_26 v_sub_3 v34 v35;
(*   %xor.i115.3 = xor i64 %35, %34 *)
(* You may need to modify here *)
xor uint64 v_xor_i115_3 v35 v34;
(*   %xor1.i117.3 = xor i64 %sub.3, %35 *)
(* You may need to modify here *)
xor uint64 v_xor1_i117_3 v_sub_3 v35;
(*   %or.i118.3 = or i64 %xor1.i117.3, %xor.i115.3 *)
(* You may need to modify here *)
or uint64 v_or_i118_3 v_xor1_i117_3 v_xor_i115_3;
(*   %xor2.i119.3 = xor i64 %or.i118.3, %34 *)
(* You may need to modify here *)
xor uint64 v_xor2_i119_3 v_or_i118_3 v34;
(*   %shr.i120.3 = lshr i64 %xor2.i119.3, 63 *)
(* You may need to modify here *)
split v_shr_i120_3 tmp_to_be_used v_xor2_i119_3 63;
(*   %conv.i121.3 = trunc i64 %shr.i120.3 to i32 *)
split tmp_v_shr_i120_3 v_conv_i121_3 v_shr_i120_3 32;
vpc v_conv_i121_3@uint32 v_conv_i121_3@uint64;
(*   %sub.i.i.3 = sub i64 0, %sub.3 *)
subb discard_27 v_sub_i_i_3 (0)@uint64 v_sub_3;
(*   %or.i.i.3 = or i64 %sub.3, %sub.i.i.3 *)
(* You may need to modify here *)
or uint64 v_or_i_i_3 v_sub_3 v_sub_i_i_3;
(*   %shr.i.i.3 = lshr i64 %or.i.i.3, 63 *)
(* You may need to modify here *)
split v_shr_i_i_3 tmp_to_be_used v_or_i_i_3 63;
(*   %conv.i.i.3 = trunc i64 %shr.i.i.3 to i32 *)
split tmp_v_shr_i_i_3 v_conv_i_i_3 v_shr_i_i_3 32;
vpc v_conv_i_i_3@uint32 v_conv_i_i_3@uint64;
(*   %xor.i114.3 = xor i32 %conv.i.i.3, 1 *)
(* You may need to modify here *)
xor uint32 v_xor_i114_3 v_conv_i_i_3 (0x1)@uint32;
(*   %and.3 = and i32 %xor.i114.3, %or25.2 *)
(* You may need to modify here *)
and uint32 v_and_3 v_xor_i114_3 v_or25_2;
(*   %or25.3 = or i32 %and.3, %conv.i121.3 *)
(* You may need to modify here *)
or uint32 v_or25_3 v_and_3 v_conv_i121_3;
(*   %conv26.3 = zext i32 %or25.2 to i64 *)
cast v_conv26_3@uint64 v_or25_2@uint32;
(*   %sub27.3 = sub i64 %sub.3, %conv26.3 *)
subb discard_28 v_sub27_3 v_sub_3 v_conv26_3;
(*   store i64 %sub27.3, i64* %arrayidx5.3, align 8, !tbaa !3 *)
mov c_24 v_sub27_3;
(*   %36 = load i64, i64* %arrayidx5.4, align 8, !tbaa !3 *)
mov v36 c_32;
(*   %37 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @p610x2, i64 0, i64 4), align 16, !tbaa !3 *)
mov v37 p610x2_32;
(*   %sub.4 = sub i64 %36, %37 *)
subb discard_29 v_sub_4 v36 v37;
(*   %xor.i115.4 = xor i64 %37, %36 *)
(* You may need to modify here *)
xor uint64 v_xor_i115_4 v37 v36;
(*   %xor1.i117.4 = xor i64 %sub.4, %37 *)
(* You may need to modify here *)
xor uint64 v_xor1_i117_4 v_sub_4 v37;
(*   %or.i118.4 = or i64 %xor1.i117.4, %xor.i115.4 *)
(* You may need to modify here *)
or uint64 v_or_i118_4 v_xor1_i117_4 v_xor_i115_4;
(*   %xor2.i119.4 = xor i64 %or.i118.4, %36 *)
(* You may need to modify here *)
xor uint64 v_xor2_i119_4 v_or_i118_4 v36;
(*   %shr.i120.4 = lshr i64 %xor2.i119.4, 63 *)
(* You may need to modify here *)
split v_shr_i120_4 tmp_to_be_used v_xor2_i119_4 63;
(*   %conv.i121.4 = trunc i64 %shr.i120.4 to i32 *)
split tmp_v_shr_i120_4 v_conv_i121_4 v_shr_i120_4 32;
vpc v_conv_i121_4@uint32 v_conv_i121_4@uint64;
(*   %sub.i.i.4 = sub i64 0, %sub.4 *)
subb discard_30 v_sub_i_i_4 (0)@uint64 v_sub_4;
(*   %or.i.i.4 = or i64 %sub.4, %sub.i.i.4 *)
(* You may need to modify here *)
or uint64 v_or_i_i_4 v_sub_4 v_sub_i_i_4;
(*   %shr.i.i.4 = lshr i64 %or.i.i.4, 63 *)
(* You may need to modify here *)
split v_shr_i_i_4 tmp_to_be_used v_or_i_i_4 63;
(*   %conv.i.i.4 = trunc i64 %shr.i.i.4 to i32 *)
split tmp_v_shr_i_i_4 v_conv_i_i_4 v_shr_i_i_4 32;
vpc v_conv_i_i_4@uint32 v_conv_i_i_4@uint64;
(*   %xor.i114.4 = xor i32 %conv.i.i.4, 1 *)
(* You may need to modify here *)
xor uint32 v_xor_i114_4 v_conv_i_i_4 (0x1)@uint32;
(*   %and.4 = and i32 %xor.i114.4, %or25.3 *)
(* You may need to modify here *)
and uint32 v_and_4 v_xor_i114_4 v_or25_3;
(*   %or25.4 = or i32 %and.4, %conv.i121.4 *)
(* You may need to modify here *)
or uint32 v_or25_4 v_and_4 v_conv_i121_4;
(*   %conv26.4 = zext i32 %or25.3 to i64 *)
cast v_conv26_4@uint64 v_or25_3@uint32;
(*   %sub27.4 = sub i64 %sub.4, %conv26.4 *)
subb discard_31 v_sub27_4 v_sub_4 v_conv26_4;
(*   store i64 %sub27.4, i64* %arrayidx5.4, align 8, !tbaa !3 *)
mov c_32 v_sub27_4;
(*   %38 = load i64, i64* %arrayidx5.5, align 8, !tbaa !3 *)
mov v38 c_40;
(*   %39 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @p610x2, i64 0, i64 5), align 8, !tbaa !3 *)
mov v39 p610x2_40;
(*   %sub.5 = sub i64 %38, %39 *)
subb discard_32 v_sub_5 v38 v39;
(*   %xor.i115.5 = xor i64 %39, %38 *)
(* You may need to modify here *)
xor uint64 v_xor_i115_5 v39 v38;
(*   %xor1.i117.5 = xor i64 %sub.5, %39 *)
(* You may need to modify here *)
xor uint64 v_xor1_i117_5 v_sub_5 v39;
(*   %or.i118.5 = or i64 %xor1.i117.5, %xor.i115.5 *)
(* You may need to modify here *)
or uint64 v_or_i118_5 v_xor1_i117_5 v_xor_i115_5;
(*   %xor2.i119.5 = xor i64 %or.i118.5, %38 *)
(* You may need to modify here *)
xor uint64 v_xor2_i119_5 v_or_i118_5 v38;
(*   %shr.i120.5 = lshr i64 %xor2.i119.5, 63 *)
(* You may need to modify here *)
split v_shr_i120_5 tmp_to_be_used v_xor2_i119_5 63;
(*   %conv.i121.5 = trunc i64 %shr.i120.5 to i32 *)
split tmp_v_shr_i120_5 v_conv_i121_5 v_shr_i120_5 32;
vpc v_conv_i121_5@uint32 v_conv_i121_5@uint64;
(*   %sub.i.i.5 = sub i64 0, %sub.5 *)
subb discard_33 v_sub_i_i_5 (0)@uint64 v_sub_5;
(*   %or.i.i.5 = or i64 %sub.5, %sub.i.i.5 *)
(* You may need to modify here *)
or uint64 v_or_i_i_5 v_sub_5 v_sub_i_i_5;
(*   %shr.i.i.5 = lshr i64 %or.i.i.5, 63 *)
(* You may need to modify here *)
split v_shr_i_i_5 tmp_to_be_used v_or_i_i_5 63;
(*   %conv.i.i.5 = trunc i64 %shr.i.i.5 to i32 *)
split tmp_v_shr_i_i_5 v_conv_i_i_5 v_shr_i_i_5 32;
vpc v_conv_i_i_5@uint32 v_conv_i_i_5@uint64;
(*   %xor.i114.5 = xor i32 %conv.i.i.5, 1 *)
(* You may need to modify here *)
xor uint32 v_xor_i114_5 v_conv_i_i_5 (0x1)@uint32;
(*   %and.5 = and i32 %xor.i114.5, %or25.4 *)
(* You may need to modify here *)
and uint32 v_and_5 v_xor_i114_5 v_or25_4;
(*   %or25.5 = or i32 %and.5, %conv.i121.5 *)
(* You may need to modify here *)
or uint32 v_or25_5 v_and_5 v_conv_i121_5;
(*   %conv26.5 = zext i32 %or25.4 to i64 *)
cast v_conv26_5@uint64 v_or25_4@uint32;
(*   %sub27.5 = sub i64 %sub.5, %conv26.5 *)
subb discard_34 v_sub27_5 v_sub_5 v_conv26_5;
(*   store i64 %sub27.5, i64* %arrayidx5.5, align 8, !tbaa !3 *)
mov c_40 v_sub27_5;
(*   %40 = load i64, i64* %arrayidx5.6, align 8, !tbaa !3 *)
mov v40 c_48;
(*   %41 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @p610x2, i64 0, i64 6), align 16, !tbaa !3 *)
mov v41 p610x2_48;
(*   %sub.6 = sub i64 %40, %41 *)
subb discard_35 v_sub_6 v40 v41;
(*   %xor.i115.6 = xor i64 %41, %40 *)
(* You may need to modify here *)
xor uint64 v_xor_i115_6 v41 v40;
(*   %xor1.i117.6 = xor i64 %sub.6, %41 *)
(* You may need to modify here *)
xor uint64 v_xor1_i117_6 v_sub_6 v41;
(*   %or.i118.6 = or i64 %xor1.i117.6, %xor.i115.6 *)
(* You may need to modify here *)
or uint64 v_or_i118_6 v_xor1_i117_6 v_xor_i115_6;
(*   %xor2.i119.6 = xor i64 %or.i118.6, %40 *)
(* You may need to modify here *)
xor uint64 v_xor2_i119_6 v_or_i118_6 v40;
(*   %shr.i120.6 = lshr i64 %xor2.i119.6, 63 *)
(* You may need to modify here *)
split v_shr_i120_6 tmp_to_be_used v_xor2_i119_6 63;
(*   %conv.i121.6 = trunc i64 %shr.i120.6 to i32 *)
split tmp_v_shr_i120_6 v_conv_i121_6 v_shr_i120_6 32;
vpc v_conv_i121_6@uint32 v_conv_i121_6@uint64;
(*   %sub.i.i.6 = sub i64 0, %sub.6 *)
subb discard_36 v_sub_i_i_6 (0)@uint64 v_sub_6;
(*   %or.i.i.6 = or i64 %sub.6, %sub.i.i.6 *)
(* You may need to modify here *)
or uint64 v_or_i_i_6 v_sub_6 v_sub_i_i_6;
(*   %shr.i.i.6 = lshr i64 %or.i.i.6, 63 *)
(* You may need to modify here *)
split v_shr_i_i_6 tmp_to_be_used v_or_i_i_6 63;
(*   %conv.i.i.6 = trunc i64 %shr.i.i.6 to i32 *)
split tmp_v_shr_i_i_6 v_conv_i_i_6 v_shr_i_i_6 32;
vpc v_conv_i_i_6@uint32 v_conv_i_i_6@uint64;
(*   %xor.i114.6 = xor i32 %conv.i.i.6, 1 *)
(* You may need to modify here *)
xor uint32 v_xor_i114_6 v_conv_i_i_6 (0x1)@uint32;
(*   %and.6 = and i32 %xor.i114.6, %or25.5 *)
(* You may need to modify here *)
and uint32 v_and_6 v_xor_i114_6 v_or25_5;
(*   %or25.6 = or i32 %and.6, %conv.i121.6 *)
(* You may need to modify here *)
or uint32 v_or25_6 v_and_6 v_conv_i121_6;
(*   %conv26.6 = zext i32 %or25.5 to i64 *)
cast v_conv26_6@uint64 v_or25_5@uint32;
(*   %sub27.6 = sub i64 %sub.6, %conv26.6 *)
subb discard_37 v_sub27_6 v_sub_6 v_conv26_6;
(*   store i64 %sub27.6, i64* %arrayidx5.6, align 8, !tbaa !3 *)
mov c_48 v_sub27_6;
(*   %42 = load i64, i64* %arrayidx5.7, align 8, !tbaa !3 *)
mov v42 c_56;
(*   %43 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @p610x2, i64 0, i64 7), align 8, !tbaa !3 *)
mov v43 p610x2_56;
(*   %sub.7 = sub i64 %42, %43 *)
subb discard_38 v_sub_7 v42 v43;
(*   %xor.i115.7 = xor i64 %43, %42 *)
(* You may need to modify here *)
xor uint64 v_xor_i115_7 v43 v42;
(*   %xor1.i117.7 = xor i64 %sub.7, %43 *)
(* You may need to modify here *)
xor uint64 v_xor1_i117_7 v_sub_7 v43;
(*   %or.i118.7 = or i64 %xor1.i117.7, %xor.i115.7 *)
(* You may need to modify here *)
or uint64 v_or_i118_7 v_xor1_i117_7 v_xor_i115_7;
(*   %xor2.i119.7 = xor i64 %or.i118.7, %42 *)
(* You may need to modify here *)
xor uint64 v_xor2_i119_7 v_or_i118_7 v42;
(*   %shr.i120.7 = lshr i64 %xor2.i119.7, 63 *)
(* You may need to modify here *)
split v_shr_i120_7 tmp_to_be_used v_xor2_i119_7 63;
(*   %conv.i121.7 = trunc i64 %shr.i120.7 to i32 *)
split tmp_v_shr_i120_7 v_conv_i121_7 v_shr_i120_7 32;
vpc v_conv_i121_7@uint32 v_conv_i121_7@uint64;
(*   %sub.i.i.7 = sub i64 0, %sub.7 *)
subb discard_39 v_sub_i_i_7 (0)@uint64 v_sub_7;
(*   %or.i.i.7 = or i64 %sub.7, %sub.i.i.7 *)
(* You may need to modify here *)
or uint64 v_or_i_i_7 v_sub_7 v_sub_i_i_7;
(*   %shr.i.i.7 = lshr i64 %or.i.i.7, 63 *)
(* You may need to modify here *)
split v_shr_i_i_7 tmp_to_be_used v_or_i_i_7 63;
(*   %conv.i.i.7 = trunc i64 %shr.i.i.7 to i32 *)
split tmp_v_shr_i_i_7 v_conv_i_i_7 v_shr_i_i_7 32;
vpc v_conv_i_i_7@uint32 v_conv_i_i_7@uint64;
(*   %xor.i114.7 = xor i32 %conv.i.i.7, 1 *)
(* You may need to modify here *)
xor uint32 v_xor_i114_7 v_conv_i_i_7 (0x1)@uint32;
(*   %and.7 = and i32 %xor.i114.7, %or25.6 *)
(* You may need to modify here *)
and uint32 v_and_7 v_xor_i114_7 v_or25_6;
(*   %or25.7 = or i32 %and.7, %conv.i121.7 *)
(* You may need to modify here *)
or uint32 v_or25_7 v_and_7 v_conv_i121_7;
(*   %conv26.7 = zext i32 %or25.6 to i64 *)
cast v_conv26_7@uint64 v_or25_6@uint32;
(*   %sub27.7 = sub i64 %sub.7, %conv26.7 *)
subb discard_40 v_sub27_7 v_sub_7 v_conv26_7;
(*   store i64 %sub27.7, i64* %arrayidx5.7, align 8, !tbaa !3 *)
mov c_56 v_sub27_7;
(*   %44 = load i64, i64* %arrayidx5.8, align 8, !tbaa !3 *)
mov v44 c_64;
(*   %45 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @p610x2, i64 0, i64 8), align 16, !tbaa !3 *)
mov v45 p610x2_64;
(*   %sub.8 = sub i64 %44, %45 *)
subb discard_41 v_sub_8 v44 v45;
(*   %xor.i115.8 = xor i64 %45, %44 *)
(* You may need to modify here *)
xor uint64 v_xor_i115_8 v45 v44;
(*   %xor1.i117.8 = xor i64 %sub.8, %45 *)
(* You may need to modify here *)
xor uint64 v_xor1_i117_8 v_sub_8 v45;
(*   %or.i118.8 = or i64 %xor1.i117.8, %xor.i115.8 *)
(* You may need to modify here *)
or uint64 v_or_i118_8 v_xor1_i117_8 v_xor_i115_8;
(*   %xor2.i119.8 = xor i64 %or.i118.8, %44 *)
(* You may need to modify here *)
xor uint64 v_xor2_i119_8 v_or_i118_8 v44;
(*   %shr.i120.8 = lshr i64 %xor2.i119.8, 63 *)
(* You may need to modify here *)
split v_shr_i120_8 tmp_to_be_used v_xor2_i119_8 63;
(*   %conv.i121.8 = trunc i64 %shr.i120.8 to i32 *)
split tmp_v_shr_i120_8 v_conv_i121_8 v_shr_i120_8 32;
vpc v_conv_i121_8@uint32 v_conv_i121_8@uint64;
(*   %sub.i.i.8 = sub i64 0, %sub.8 *)
subb discard_42 v_sub_i_i_8 (0)@uint64 v_sub_8;
(*   %or.i.i.8 = or i64 %sub.8, %sub.i.i.8 *)
(* You may need to modify here *)
or uint64 v_or_i_i_8 v_sub_8 v_sub_i_i_8;
(*   %shr.i.i.8 = lshr i64 %or.i.i.8, 63 *)
(* You may need to modify here *)
split v_shr_i_i_8 tmp_to_be_used v_or_i_i_8 63;
(*   %conv.i.i.8 = trunc i64 %shr.i.i.8 to i32 *)
split tmp_v_shr_i_i_8 v_conv_i_i_8 v_shr_i_i_8 32;
vpc v_conv_i_i_8@uint32 v_conv_i_i_8@uint64;
(*   %xor.i114.8 = xor i32 %conv.i.i.8, 1 *)
(* You may need to modify here *)
xor uint32 v_xor_i114_8 v_conv_i_i_8 (0x1)@uint32;
(*   %and.8 = and i32 %xor.i114.8, %or25.7 *)
(* You may need to modify here *)
and uint32 v_and_8 v_xor_i114_8 v_or25_7;
(*   %or25.8 = or i32 %and.8, %conv.i121.8 *)
(* You may need to modify here *)
or uint32 v_or25_8 v_and_8 v_conv_i121_8;
(*   %conv26.8 = zext i32 %or25.7 to i64 *)
cast v_conv26_8@uint64 v_or25_7@uint32;
(*   %sub27.8 = sub i64 %sub.8, %conv26.8 *)
subb discard_43 v_sub27_8 v_sub_8 v_conv26_8;
(*   store i64 %sub27.8, i64* %arrayidx5.8, align 8, !tbaa !3 *)
mov c_64 v_sub27_8;
(*   %46 = load i64, i64* %arrayidx5.9, align 8, !tbaa !3 *)
mov v46 c_72;
(*   %47 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @p610x2, i64 0, i64 9), align 8, !tbaa !3 *)
mov v47 p610x2_72;
(*   %sub.9 = sub i64 %46, %47 *)
subb discard_44 v_sub_9 v46 v47;
(*   %xor.i115.9 = xor i64 %47, %46 *)
(* You may need to modify here *)
xor uint64 v_xor_i115_9 v47 v46;
(*   %xor1.i117.9 = xor i64 %sub.9, %47 *)
(* You may need to modify here *)
xor uint64 v_xor1_i117_9 v_sub_9 v47;
(*   %or.i118.9 = or i64 %xor1.i117.9, %xor.i115.9 *)
(* You may need to modify here *)
or uint64 v_or_i118_9 v_xor1_i117_9 v_xor_i115_9;
(*   %xor2.i119.9 = xor i64 %or.i118.9, %46 *)
(* You may need to modify here *)
xor uint64 v_xor2_i119_9 v_or_i118_9 v46;
(*   %shr.i120.9 = lshr i64 %xor2.i119.9, 63 *)
(* You may need to modify here *)
split v_shr_i120_9 tmp_to_be_used v_xor2_i119_9 63;
(*   %conv.i121.9 = trunc i64 %shr.i120.9 to i32 *)
split tmp_v_shr_i120_9 v_conv_i121_9 v_shr_i120_9 32;
vpc v_conv_i121_9@uint32 v_conv_i121_9@uint64;
(*   %sub.i.i.9 = sub i64 0, %sub.9 *)
subb discard_45 v_sub_i_i_9 (0)@uint64 v_sub_9;
(*   %or.i.i.9 = or i64 %sub.9, %sub.i.i.9 *)
(* You may need to modify here *)
or uint64 v_or_i_i_9 v_sub_9 v_sub_i_i_9;
(*   %shr.i.i.9 = lshr i64 %or.i.i.9, 63 *)
(* You may need to modify here *)
split v_shr_i_i_9 tmp_to_be_used v_or_i_i_9 63;
(*   %conv.i.i.9 = trunc i64 %shr.i.i.9 to i32 *)
split tmp_v_shr_i_i_9 v_conv_i_i_9 v_shr_i_i_9 32;
vpc v_conv_i_i_9@uint32 v_conv_i_i_9@uint64;
(*   %xor.i114.9 = xor i32 %conv.i.i.9, 1 *)
(* You may need to modify here *)
xor uint32 v_xor_i114_9 v_conv_i_i_9 (0x1)@uint32;
(*   %and.9 = and i32 %xor.i114.9, %or25.8 *)
(* You may need to modify here *)
and uint32 v_and_9 v_xor_i114_9 v_or25_8;
(*   %or25.9 = or i32 %and.9, %conv.i121.9 *)
(* You may need to modify here *)
or uint32 v_or25_9 v_and_9 v_conv_i121_9;
(*   %conv26.9 = zext i32 %or25.8 to i64 *)
cast v_conv26_9@uint64 v_or25_8@uint32;
(*   %sub27.9 = sub i64 %sub.9, %conv26.9 *)
subb discard_46 v_sub27_9 v_sub_9 v_conv26_9;
(*   store i64 %sub27.9, i64* %arrayidx5.9, align 8, !tbaa !3 *)
mov c_72 v_sub27_9;
(*   %conv33 = zext i32 %or25.9 to i64 *)
cast v_conv33@uint64 v_or25_9@uint32;
(*   %sub34 = sub nsw i64 0, %conv33 *)
subb discard_47 v_sub34 (0)@uint64 v_conv33;
(*   %48 = load i64, i64* %c, align 8, !tbaa !3 *)
mov v48 c_0;
(*   %49 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @p610x2, i64 0, i64 0), align 16, !tbaa !3 *)
mov v49 p610x2_0;
(*   %and46 = and i64 %49, %sub34 *)
(* You may need to modify here *)
and uint64 v_and46 v49 v_sub34;
(*   %add47 = add i64 %and46, %48 *)
adds discard_48 v_add47 v_and46 v48;
(*   store i64 %add47, i64* %c, align 8, !tbaa !3 *)
mov c_0 v_add47;
(*   %xor.i102 = xor i64 %add47, %48 *)
(* You may need to modify here *)
xor uint64 v_xor_i102 v_add47 v48;
(*   %xor1.i103 = xor i64 %and46, %48 *)
(* You may need to modify here *)
xor uint64 v_xor1_i103 v_and46 v48;
(*   %or.i104 = or i64 %xor.i102, %xor1.i103 *)
(* You may need to modify here *)
or uint64 v_or_i104 v_xor_i102 v_xor1_i103;
(*   %xor2.i105 = xor i64 %or.i104, %add47 *)
(* You may need to modify here *)
xor uint64 v_xor2_i105 v_or_i104 v_add47;
(*   %or55 = lshr i64 %xor2.i105, 63 *)
(* You may need to modify here *)
split v_or55 tmp_to_be_used v_xor2_i105 63;
(*   %50 = load i64, i64* %arrayidx5.1, align 8, !tbaa !3 *)
mov v50 c_8;
(*   %add43.1 = add i64 %50, %or55 *)
adds discard_49 v_add43_1 v50 v_or55;
(*   %51 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @p610x2, i64 0, i64 1), align 8, !tbaa !3 *)
mov v51 p610x2_8;
(*   %and46.1 = and i64 %51, %sub34 *)
(* You may need to modify here *)
and uint64 v_and46_1 v51 v_sub34;
(*   %add47.1 = add i64 %and46.1, %add43.1 *)
adds discard_50 v_add47_1 v_and46_1 v_add43_1;
(*   store i64 %add47.1, i64* %arrayidx5.1, align 8, !tbaa !3 *)
mov c_8 v_add47_1;
(*   %52 = xor i64 %add43.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v52 v_add43_1 (0x8000000000000000)@uint64;
(*   %xor2.i111.1 = and i64 %52, %50 *)
(* You may need to modify here *)
and uint64 v_xor2_i111_1 v52 v50;
(*   %xor.i102.1 = xor i64 %add47.1, %add43.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i102_1 v_add47_1 v_add43_1;
(*   %xor1.i103.1 = xor i64 %and46.1, %add43.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i103_1 v_and46_1 v_add43_1;
(*   %or.i104.1 = or i64 %xor.i102.1, %xor1.i103.1 *)
(* You may need to modify here *)
or uint64 v_or_i104_1 v_xor_i102_1 v_xor1_i103_1;
(*   %xor2.i105.1 = xor i64 %or.i104.1, %add47.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i105_1 v_or_i104_1 v_add47_1;
(*   %shr.i112129.1 = or i64 %xor2.i105.1, %xor2.i111.1 *)
(* You may need to modify here *)
or uint64 v_shr_i112129_1 v_xor2_i105_1 v_xor2_i111_1;
(*   %or55.1 = lshr i64 %shr.i112129.1, 63 *)
(* You may need to modify here *)
split v_or55_1 tmp_to_be_used v_shr_i112129_1 63;
(*   %53 = load i64, i64* %arrayidx5.2, align 8, !tbaa !3 *)
mov v53 c_16;
(*   %add43.2 = add i64 %53, %or55.1 *)
adds discard_51 v_add43_2 v53 v_or55_1;
(*   %54 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @p610x2, i64 0, i64 2), align 16, !tbaa !3 *)
mov v54 p610x2_16;
(*   %and46.2 = and i64 %54, %sub34 *)
(* You may need to modify here *)
and uint64 v_and46_2 v54 v_sub34;
(*   %add47.2 = add i64 %and46.2, %add43.2 *)
adds discard_52 v_add47_2 v_and46_2 v_add43_2;
(*   store i64 %add47.2, i64* %arrayidx5.2, align 8, !tbaa !3 *)
mov c_16 v_add47_2;
(*   %55 = xor i64 %add43.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v55 v_add43_2 (0x8000000000000000)@uint64;
(*   %xor2.i111.2 = and i64 %55, %53 *)
(* You may need to modify here *)
and uint64 v_xor2_i111_2 v55 v53;
(*   %xor.i102.2 = xor i64 %add47.2, %add43.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i102_2 v_add47_2 v_add43_2;
(*   %xor1.i103.2 = xor i64 %and46.2, %add43.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i103_2 v_and46_2 v_add43_2;
(*   %or.i104.2 = or i64 %xor.i102.2, %xor1.i103.2 *)
(* You may need to modify here *)
or uint64 v_or_i104_2 v_xor_i102_2 v_xor1_i103_2;
(*   %xor2.i105.2 = xor i64 %or.i104.2, %add47.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i105_2 v_or_i104_2 v_add47_2;
(*   %shr.i112129.2 = or i64 %xor2.i105.2, %xor2.i111.2 *)
(* You may need to modify here *)
or uint64 v_shr_i112129_2 v_xor2_i105_2 v_xor2_i111_2;
(*   %or55.2 = lshr i64 %shr.i112129.2, 63 *)
(* You may need to modify here *)
split v_or55_2 tmp_to_be_used v_shr_i112129_2 63;
(*   %56 = load i64, i64* %arrayidx5.3, align 8, !tbaa !3 *)
mov v56 c_24;
(*   %add43.3 = add i64 %56, %or55.2 *)
adds discard_53 v_add43_3 v56 v_or55_2;
(*   %57 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @p610x2, i64 0, i64 3), align 8, !tbaa !3 *)
mov v57 p610x2_24;
(*   %and46.3 = and i64 %57, %sub34 *)
(* You may need to modify here *)
and uint64 v_and46_3 v57 v_sub34;
(*   %add47.3 = add i64 %and46.3, %add43.3 *)
adds discard_54 v_add47_3 v_and46_3 v_add43_3;
(*   store i64 %add47.3, i64* %arrayidx5.3, align 8, !tbaa !3 *)
mov c_24 v_add47_3;
(*   %58 = xor i64 %add43.3, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v58 v_add43_3 (0x8000000000000000)@uint64;
(*   %xor2.i111.3 = and i64 %58, %56 *)
(* You may need to modify here *)
and uint64 v_xor2_i111_3 v58 v56;
(*   %xor.i102.3 = xor i64 %add47.3, %add43.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i102_3 v_add47_3 v_add43_3;
(*   %xor1.i103.3 = xor i64 %and46.3, %add43.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i103_3 v_and46_3 v_add43_3;
(*   %or.i104.3 = or i64 %xor.i102.3, %xor1.i103.3 *)
(* You may need to modify here *)
or uint64 v_or_i104_3 v_xor_i102_3 v_xor1_i103_3;
(*   %xor2.i105.3 = xor i64 %or.i104.3, %add47.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i105_3 v_or_i104_3 v_add47_3;
(*   %shr.i112129.3 = or i64 %xor2.i105.3, %xor2.i111.3 *)
(* You may need to modify here *)
or uint64 v_shr_i112129_3 v_xor2_i105_3 v_xor2_i111_3;
(*   %or55.3 = lshr i64 %shr.i112129.3, 63 *)
(* You may need to modify here *)
split v_or55_3 tmp_to_be_used v_shr_i112129_3 63;
(*   %59 = load i64, i64* %arrayidx5.4, align 8, !tbaa !3 *)
mov v59 c_32;
(*   %add43.4 = add i64 %59, %or55.3 *)
adds discard_55 v_add43_4 v59 v_or55_3;
(*   %60 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @p610x2, i64 0, i64 4), align 16, !tbaa !3 *)
mov v60 p610x2_32;
(*   %and46.4 = and i64 %60, %sub34 *)
(* You may need to modify here *)
and uint64 v_and46_4 v60 v_sub34;
(*   %add47.4 = add i64 %and46.4, %add43.4 *)
adds discard_56 v_add47_4 v_and46_4 v_add43_4;
(*   store i64 %add47.4, i64* %arrayidx5.4, align 8, !tbaa !3 *)
mov c_32 v_add47_4;
(*   %61 = xor i64 %add43.4, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v61 v_add43_4 (0x8000000000000000)@uint64;
(*   %xor2.i111.4 = and i64 %61, %59 *)
(* You may need to modify here *)
and uint64 v_xor2_i111_4 v61 v59;
(*   %xor.i102.4 = xor i64 %add47.4, %add43.4 *)
(* You may need to modify here *)
xor uint64 v_xor_i102_4 v_add47_4 v_add43_4;
(*   %xor1.i103.4 = xor i64 %and46.4, %add43.4 *)
(* You may need to modify here *)
xor uint64 v_xor1_i103_4 v_and46_4 v_add43_4;
(*   %or.i104.4 = or i64 %xor.i102.4, %xor1.i103.4 *)
(* You may need to modify here *)
or uint64 v_or_i104_4 v_xor_i102_4 v_xor1_i103_4;
(*   %xor2.i105.4 = xor i64 %or.i104.4, %add47.4 *)
(* You may need to modify here *)
xor uint64 v_xor2_i105_4 v_or_i104_4 v_add47_4;
(*   %shr.i112129.4 = or i64 %xor2.i105.4, %xor2.i111.4 *)
(* You may need to modify here *)
or uint64 v_shr_i112129_4 v_xor2_i105_4 v_xor2_i111_4;
(*   %or55.4 = lshr i64 %shr.i112129.4, 63 *)
(* You may need to modify here *)
split v_or55_4 tmp_to_be_used v_shr_i112129_4 63;
(*   %62 = load i64, i64* %arrayidx5.5, align 8, !tbaa !3 *)
mov v62 c_40;
(*   %add43.5 = add i64 %62, %or55.4 *)
adds discard_57 v_add43_5 v62 v_or55_4;
(*   %63 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @p610x2, i64 0, i64 5), align 8, !tbaa !3 *)
mov v63 p610x2_40;
(*   %and46.5 = and i64 %63, %sub34 *)
(* You may need to modify here *)
and uint64 v_and46_5 v63 v_sub34;
(*   %add47.5 = add i64 %and46.5, %add43.5 *)
adds discard_58 v_add47_5 v_and46_5 v_add43_5;
(*   store i64 %add47.5, i64* %arrayidx5.5, align 8, !tbaa !3 *)
mov c_40 v_add47_5;
(*   %64 = xor i64 %add43.5, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v64 v_add43_5 (0x8000000000000000)@uint64;
(*   %xor2.i111.5 = and i64 %64, %62 *)
(* You may need to modify here *)
and uint64 v_xor2_i111_5 v64 v62;
(*   %xor.i102.5 = xor i64 %add47.5, %add43.5 *)
(* You may need to modify here *)
xor uint64 v_xor_i102_5 v_add47_5 v_add43_5;
(*   %xor1.i103.5 = xor i64 %and46.5, %add43.5 *)
(* You may need to modify here *)
xor uint64 v_xor1_i103_5 v_and46_5 v_add43_5;
(*   %or.i104.5 = or i64 %xor.i102.5, %xor1.i103.5 *)
(* You may need to modify here *)
or uint64 v_or_i104_5 v_xor_i102_5 v_xor1_i103_5;
(*   %xor2.i105.5 = xor i64 %or.i104.5, %add47.5 *)
(* You may need to modify here *)
xor uint64 v_xor2_i105_5 v_or_i104_5 v_add47_5;
(*   %shr.i112129.5 = or i64 %xor2.i105.5, %xor2.i111.5 *)
(* You may need to modify here *)
or uint64 v_shr_i112129_5 v_xor2_i105_5 v_xor2_i111_5;
(*   %or55.5 = lshr i64 %shr.i112129.5, 63 *)
(* You may need to modify here *)
split v_or55_5 tmp_to_be_used v_shr_i112129_5 63;
(*   %65 = load i64, i64* %arrayidx5.6, align 8, !tbaa !3 *)
mov v65 c_48;
(*   %add43.6 = add i64 %65, %or55.5 *)
adds discard_59 v_add43_6 v65 v_or55_5;
(*   %66 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @p610x2, i64 0, i64 6), align 16, !tbaa !3 *)
mov v66 p610x2_48;
(*   %and46.6 = and i64 %66, %sub34 *)
(* You may need to modify here *)
and uint64 v_and46_6 v66 v_sub34;
(*   %add47.6 = add i64 %and46.6, %add43.6 *)
adds discard_60 v_add47_6 v_and46_6 v_add43_6;
(*   store i64 %add47.6, i64* %arrayidx5.6, align 8, !tbaa !3 *)
mov c_48 v_add47_6;
(*   %67 = xor i64 %add43.6, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v67 v_add43_6 (0x8000000000000000)@uint64;
(*   %xor2.i111.6 = and i64 %67, %65 *)
(* You may need to modify here *)
and uint64 v_xor2_i111_6 v67 v65;
(*   %xor.i102.6 = xor i64 %add47.6, %add43.6 *)
(* You may need to modify here *)
xor uint64 v_xor_i102_6 v_add47_6 v_add43_6;
(*   %xor1.i103.6 = xor i64 %and46.6, %add43.6 *)
(* You may need to modify here *)
xor uint64 v_xor1_i103_6 v_and46_6 v_add43_6;
(*   %or.i104.6 = or i64 %xor.i102.6, %xor1.i103.6 *)
(* You may need to modify here *)
or uint64 v_or_i104_6 v_xor_i102_6 v_xor1_i103_6;
(*   %xor2.i105.6 = xor i64 %or.i104.6, %add47.6 *)
(* You may need to modify here *)
xor uint64 v_xor2_i105_6 v_or_i104_6 v_add47_6;
(*   %shr.i112129.6 = or i64 %xor2.i105.6, %xor2.i111.6 *)
(* You may need to modify here *)
or uint64 v_shr_i112129_6 v_xor2_i105_6 v_xor2_i111_6;
(*   %or55.6 = lshr i64 %shr.i112129.6, 63 *)
(* You may need to modify here *)
split v_or55_6 tmp_to_be_used v_shr_i112129_6 63;
(*   %68 = load i64, i64* %arrayidx5.7, align 8, !tbaa !3 *)
mov v68 c_56;
(*   %add43.7 = add i64 %68, %or55.6 *)
adds discard_61 v_add43_7 v68 v_or55_6;
(*   %69 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @p610x2, i64 0, i64 7), align 8, !tbaa !3 *)
mov v69 p610x2_56;
(*   %and46.7 = and i64 %69, %sub34 *)
(* You may need to modify here *)
and uint64 v_and46_7 v69 v_sub34;
(*   %add47.7 = add i64 %and46.7, %add43.7 *)
adds discard_62 v_add47_7 v_and46_7 v_add43_7;
(*   store i64 %add47.7, i64* %arrayidx5.7, align 8, !tbaa !3 *)
mov c_56 v_add47_7;
(*   %70 = xor i64 %add43.7, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v70 v_add43_7 (0x8000000000000000)@uint64;
(*   %xor2.i111.7 = and i64 %70, %68 *)
(* You may need to modify here *)
and uint64 v_xor2_i111_7 v70 v68;
(*   %xor.i102.7 = xor i64 %add47.7, %add43.7 *)
(* You may need to modify here *)
xor uint64 v_xor_i102_7 v_add47_7 v_add43_7;
(*   %xor1.i103.7 = xor i64 %and46.7, %add43.7 *)
(* You may need to modify here *)
xor uint64 v_xor1_i103_7 v_and46_7 v_add43_7;
(*   %or.i104.7 = or i64 %xor.i102.7, %xor1.i103.7 *)
(* You may need to modify here *)
or uint64 v_or_i104_7 v_xor_i102_7 v_xor1_i103_7;
(*   %xor2.i105.7 = xor i64 %or.i104.7, %add47.7 *)
(* You may need to modify here *)
xor uint64 v_xor2_i105_7 v_or_i104_7 v_add47_7;
(*   %shr.i112129.7 = or i64 %xor2.i105.7, %xor2.i111.7 *)
(* You may need to modify here *)
or uint64 v_shr_i112129_7 v_xor2_i105_7 v_xor2_i111_7;
(*   %or55.7 = lshr i64 %shr.i112129.7, 63 *)
(* You may need to modify here *)
split v_or55_7 tmp_to_be_used v_shr_i112129_7 63;
(*   %71 = load i64, i64* %arrayidx5.8, align 8, !tbaa !3 *)
mov v71 c_64;
(*   %add43.8 = add i64 %71, %or55.7 *)
adds discard_63 v_add43_8 v71 v_or55_7;
(*   %72 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @p610x2, i64 0, i64 8), align 16, !tbaa !3 *)
mov v72 p610x2_64;
(*   %and46.8 = and i64 %72, %sub34 *)
(* You may need to modify here *)
and uint64 v_and46_8 v72 v_sub34;
(*   %add47.8 = add i64 %and46.8, %add43.8 *)
adds discard_64 v_add47_8 v_and46_8 v_add43_8;
(*   store i64 %add47.8, i64* %arrayidx5.8, align 8, !tbaa !3 *)
mov c_64 v_add47_8;
(*   %73 = xor i64 %add43.8, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v73 v_add43_8 (0x8000000000000000)@uint64;
(*   %xor2.i111.8 = and i64 %73, %71 *)
(* You may need to modify here *)
and uint64 v_xor2_i111_8 v73 v71;
(*   %xor.i102.8 = xor i64 %add47.8, %add43.8 *)
(* You may need to modify here *)
xor uint64 v_xor_i102_8 v_add47_8 v_add43_8;
(*   %xor1.i103.8 = xor i64 %and46.8, %add43.8 *)
(* You may need to modify here *)
xor uint64 v_xor1_i103_8 v_and46_8 v_add43_8;
(*   %or.i104.8 = or i64 %xor.i102.8, %xor1.i103.8 *)
(* You may need to modify here *)
or uint64 v_or_i104_8 v_xor_i102_8 v_xor1_i103_8;
(*   %xor2.i105.8 = xor i64 %or.i104.8, %add47.8 *)
(* You may need to modify here *)
xor uint64 v_xor2_i105_8 v_or_i104_8 v_add47_8;
(*   %shr.i112129.8 = or i64 %xor2.i105.8, %xor2.i111.8 *)
(* You may need to modify here *)
or uint64 v_shr_i112129_8 v_xor2_i105_8 v_xor2_i111_8;
(*   %or55.8 = lshr i64 %shr.i112129.8, 63 *)
(* You may need to modify here *)
split v_or55_8 tmp_to_be_used v_shr_i112129_8 63;
(*   %74 = load i64, i64* %arrayidx5.9, align 8, !tbaa !3 *)
mov v74 c_72;
(*   %add43.9 = add i64 %74, %or55.8 *)
adds discard_65 v_add43_9 v74 v_or55_8;
(*   %75 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @p610x2, i64 0, i64 9), align 8, !tbaa !3 *)
mov v75 p610x2_72;
(*   %and46.9 = and i64 %75, %sub34 *)
(* You may need to modify here *)
and uint64 v_and46_9 v75 v_sub34;
(*   %add47.9 = add i64 %and46.9, %add43.9 *)
adds discard_66 v_add47_9 v_and46_9 v_add43_9;
(*   store i64 %add47.9, i64* %arrayidx5.9, align 8, !tbaa !3 *)
mov c_72 v_add47_9;
(*   ret void *)


(* Outputs *)

mov c0 c_0@uint64;
mov c1 c_8@uint64;
mov c2 c_16@uint64;
mov c3 c_24@uint64;
mov c4 c_32@uint64;
mov c5 c_40@uint64;
mov c6 c_48@uint64;
mov c7 c_56@uint64;
mov c8 c_64@uint64;
mov c9 c_72@uint64;


{
  true
  &&
  (* c = a+b mod p610 *)
  (* c in [0, 2*p610-1] *)
  and [
    equmod limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7, c8, c9]
           limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7, a8, a9]
	   + limbs 64 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9]
	   const 640 (2**305 * 3**192 - 1),
    0@640 <=u limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7, c8, c9],
    limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7, c8, c9] <=u const 640 (2 * (2**305 * 3**192 - 1) - 1)
  ]
}


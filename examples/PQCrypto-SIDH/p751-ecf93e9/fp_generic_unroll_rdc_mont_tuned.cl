(* @laptop: cv -v -jobs 16 -isafety -slicing -no_carry_constraint rdc_mont_final.cl
Parsing Cryptoline file:		[OK]		0.055437 seconds
Checking well-formedness:		[OK]		0.015086 seconds
Transforming to SSA form:		[OK]		0.007502 seconds
Normalizing specification:		[OK]		0.007031 seconds
Rewriting assignments:			[OK]		0.002878 seconds
Verifying program safety:		[OK]		185.793302 seconds
Verifying range assertions:		[OK]		3523.371876 seconds
Verifying range specification:		[OK]		237.026493 seconds
Rewriting value-preserved casting:	[OK]		0.001585 seconds
Verifying algebraic assertions:		[OK]		0.019656 seconds
Verifying algebraic specification:	[OK]		5.981258 seconds
Verification result:			[OK]		3952.289001 seconds
*)

proc main (uint64 ma00, uint64 ma01, uint64 ma02, uint64 ma03, uint64 ma04, uint64 ma05,
           uint64 ma06, uint64 ma07, uint64 ma08, uint64 ma09, uint64 ma10, uint64 ma11,
	   uint64 ma12, uint64 ma13, uint64 ma14, uint64 ma15, uint64 ma16, uint64 ma17,
	   uint64 ma18, uint64 ma19, uint64 ma20, uint64 ma21, uint64 ma22, uint64 ma23) =
{
  true
  &&
  (* p751 = 2^372*3^239-1 *)
  (* R = 2^768 *)
  (* ma < 2^768*p751 *)
  limbs 64 [ma00, ma01, ma02, ma03, ma04, ma05, ma06, ma07, ma08, ma09, ma10, ma11,
  	    ma12, ma13, ma14, ma15, ma16, ma17, ma18, ma19, ma20, ma21, ma22, ma23]
    <u const 1536 (2**768) * const 1536 (2**372 * 3**239 - 1)
}

mov ma_0 ma00;
mov ma_8 ma01;
mov ma_16 ma02;
mov ma_24 ma03;
mov ma_32 ma04;
mov ma_40 ma05;
mov ma_48 ma06;
mov ma_56 ma07;
mov ma_64 ma08;
mov ma_72 ma09;
mov ma_80 ma10;
mov ma_88 ma11;
mov ma_96 ma12;
mov ma_104 ma13;
mov ma_112 ma14;
mov ma_120 ma15;
mov ma_128 ma16;
mov ma_136 ma17;
mov ma_144 ma18;
mov ma_152 ma19;
mov ma_160 ma20;
mov ma_168 ma21;
mov ma_176 ma22;
mov ma_184 ma23;

mov p751p1_0 0x0000000000000000@uint64;
mov p751p1_8 0x0000000000000000@uint64;
mov p751p1_16 0x0000000000000000@uint64;
mov p751p1_24 0x0000000000000000@uint64;
mov p751p1_32 0x0000000000000000@uint64;
mov p751p1_40 0xEEB0000000000000@uint64;
mov p751p1_48 0xE3EC968549F878A8@uint64;
mov p751p1_56 0xDA959B1A13F7CC76@uint64;
mov p751p1_64 0x084E9867D6EBE876@uint64;
mov p751p1_72 0x8562B5045CB25748@uint64;
mov p751p1_80 0x0E12909F97BADC66@uint64;
mov p751p1_88 0x00006FE5D541F71C@uint64;

nondet mc_0@uint64;
nondet mc_8@uint64;
nondet mc_16@uint64;
nondet mc_24@uint64;
nondet mc_32@uint64;
nondet mc_40@uint64;
nondet mc_48@uint64;
nondet mc_56@uint64;
nondet mc_64@uint64;
nondet mc_72@uint64;
nondet mc_80@uint64;
nondet mc_88@uint64;


(*   %mc370 = bitcast i64* %mc to i8* *)
(*   call void @llvm.memset.p0i8.i64(i8* align 8 %mc370, i8 0, i64 96, i1 false) *)
(*   %0 = load i64, i64* %ma, align 8, !tbaa !3 *)
mov v0 ma_0;
(*   store i64 %0, i64* %mc, align 8, !tbaa !3 *)
mov mc_0 v0;
(*   %1 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 1), align 8, !tbaa !3 *)
mov v1 p751p1_8;
(*   %and.i.1 = and i64 %0, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_1 v0 (0xFFFFFFFF)@uint64;
(*   %shr.i.1 = lshr i64 %0, 32 *)
(* You may need to modify here *)
split v_shr_i_1 tmp_to_be_used v0 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_1;
assume eq tmp_to_be_used v_and_i_1 && true;
(*   %and1.i.1 = and i64 %1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_1 v1 (0xFFFFFFFF)@uint64;
(*   %shr2.i.1 = lshr i64 %1, 32 *)
(* You may need to modify here *)
split v_shr2_i_1 tmp_to_be_used v1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_1;
assume eq tmp_to_be_used v_and1_i_1 && true;
(*   %mul.i.1 = mul nuw i64 %and1.i.1, %and.i.1 *)
mul v_mul_i_1 v_and1_i_1 v_and_i_1;
(*   %mul3.i.1 = mul nuw i64 %shr2.i.1, %and.i.1 *)
mul v_mul3_i_1 v_shr2_i_1 v_and_i_1;
(*   %mul4.i.1 = mul nuw i64 %and1.i.1, %shr.i.1 *)
mul v_mul4_i_1 v_and1_i_1 v_shr_i_1;
(*   %mul5.i.1 = mul nuw i64 %shr2.i.1, %shr.i.1 *)
mul v_mul5_i_1 v_shr2_i_1 v_shr_i_1;
(*   %and6.i.1 = and i64 %mul.i.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_1 v_mul_i_1 (0xFFFFFFFF)@uint64;
(*   %shr7.i.1 = lshr i64 %mul.i.1, 32 *)
(* You may need to modify here *)
split v_shr7_i_1 tmp_to_be_used v_mul_i_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_1;
assume eq tmp_to_be_used v_and6_i_1 && true;
(*   %and8.i.1 = and i64 %mul4.i.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_1 v_mul4_i_1 (0xFFFFFFFF)@uint64;
(*   %and9.i.1 = and i64 %mul3.i.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_1 v_mul3_i_1 (0xFFFFFFFF)@uint64;
(*   %add.i.1 = add nuw nsw i64 %shr7.i.1, %and8.i.1 *)
adds discard_0 v_add_i_1 v_shr7_i_1 v_and8_i_1;
(* Heuristics applied. *)
assert true && eq discard_0 0@1;
assume eq discard_0 0 && true;
(*   %add10.i.1 = add nuw nsw i64 %add.i.1, %and9.i.1 *)
adds discard_1 v_add10_i_1 v_add_i_1 v_and9_i_1;
(* Heuristics applied. *)
assert true && eq discard_1 0@1;
assume eq discard_1 0 && true;
(*   %shr11.i.1 = lshr i64 %add10.i.1, 32 *)
(* You may need to modify here *)
split v_shr11_i_1 tmp_to_be_used v_add10_i_1 32;
(*   %shl.i.1 = shl i64 %add10.i.1, 32 *)
shls discard_2 v_shl_i_1 v_add10_i_1 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_1 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_1 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.1 = or i64 %shl.i.1, %and6.i.1 *)
(* You may need to modify here *)
or uint64 v_xor68_i_1 v_shl_i_1 v_and6_i_1;
(* Heuristics applied. *)
assert true && eq v_xor68_i_1 v_shl_i_1 + v_and6_i_1;
assume eq v_xor68_i_1 v_shl_i_1 + v_and6_i_1 && true;
(*   %shr13.i.1 = lshr i64 %mul4.i.1, 32 *)
(* You may need to modify here *)
split v_shr13_i_1 tmp_to_be_used v_mul4_i_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_1;
assume eq tmp_to_be_used v_and8_i_1 && true;
(*   %shr14.i.1 = lshr i64 %mul3.i.1, 32 *)
(* You may need to modify here *)
split v_shr14_i_1 tmp_to_be_used v_mul3_i_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_1;
assume eq tmp_to_be_used v_and9_i_1 && true;
(*   %and15.i.1 = and i64 %mul5.i.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_1 v_mul5_i_1 (0xFFFFFFFF)@uint64;
(*   %add16.i.1 = add nuw nsw i64 %shr13.i.1, %shr14.i.1 *)
adds discard_3 v_add16_i_1 v_shr13_i_1 v_shr14_i_1;
(* Heuristics applied. *)
assert true && eq discard_3 0@1;
assume eq discard_3 0 && true;
(*   %add17.i.1 = add nuw nsw i64 %add16.i.1, %and15.i.1 *)
adds discard_4 v_add17_i_1 v_add16_i_1 v_and15_i_1;
(* Heuristics applied. *)
assert true && eq discard_4 0@1;
assume eq discard_4 0 && true;
(*   %add18.i.1 = add nuw nsw i64 %add17.i.1, %shr11.i.1 *)
adds discard_5 v_add18_i_1 v_add17_i_1 v_shr11_i_1;
(* Heuristics applied. *)
assert true && eq discard_5 0@1;
assume eq discard_5 0 && true;
(*   %and19.i.1 = and i64 %add18.i.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_1 v_add18_i_1 (0xFFFFFFFF)@uint64;
(*   %and21.i.1 = and i64 %add18.i.1, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_1 v_add18_i_1 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_1 v_and21_i_1 + v_and19_i_1;
assume eq v_add18_i_1 v_and21_i_1 + v_and19_i_1 && true;
(*   %and22.i.1 = and i64 %mul5.i.1, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_1 v_mul5_i_1 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_1 v_and22_i_1 + v_and15_i_1;
assume eq v_mul5_i_1 v_and22_i_1 + v_and15_i_1 && true;
(*   %add23.i.1 = add i64 %and21.i.1, %and22.i.1 *)
adds discard_6 v_add23_i_1 v_and21_i_1 v_and22_i_1;
(* Heuristics applied. *)
assert true && eq discard_6 0@1;
assume eq discard_6 0 && true;
(*   %xor2569.i.1 = or i64 %add23.i.1, %and19.i.1 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_1 v_add23_i_1 v_and19_i_1;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_1 v_add23_i_1 + v_and19_i_1;
assume eq v_xor2569_i_1 v_add23_i_1 + v_and19_i_1 && true;
(*   %arrayidx34.1 = getelementptr inbounds i64, i64* %ma, i64 1 *)
(*   %2 = load i64, i64* %arrayidx34.1, align 8, !tbaa !3 *)
mov v2 ma_8;
(*   %add35.1 = add i64 %2, %xor68.i.1 *)
adds discard_7 v_add35_1 v2 v_xor68_i_1;
(*   %xor.i297.1 = xor i64 %add35.1, %shl.i.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i297_1 v_add35_1 v_shl_i_1;
(*   %xor1.i298.1 = xor i64 %2, %shl.i.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i298_1 v2 v_shl_i_1;
(*   %or.i299.1 = or i64 %xor.i297.1, %xor1.i298.1 *)
(* You may need to modify here *)
or uint64 v_or_i299_1 v_xor_i297_1 v_xor1_i298_1;
(*   %xor2.i300.1 = xor i64 %or.i299.1, %add35.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i300_1 v_or_i299_1 v_add35_1;
(*   %shr.i301.1 = lshr i64 %xor2.i300.1, 63 *)
(* You may need to modify here *)
split v_shr_i301_1 tmp_to_be_used v_xor2_i300_1 63;
(* generated by python *)
assert true && limbs 64 [v_add35_1, v_shr_i301_1] = limbs 64 [v2, 0@64] + limbs 64 [v_xor68_i_1, 0@64];
assume limbs 64 [v_add35_1, v_shr_i301_1] = limbs 64 [v2, 0] + limbs 64 [v_xor68_i_1, 0] && true;
(*   %add41.1 = add i64 %shr.i301.1, %xor2569.i.1 *)
adds discard_8 v_add41_1 v_shr_i301_1 v_xor2569_i_1;
(* Heuristics applied. *)
assert true && eq discard_8 0@1;
assume eq discard_8 0 && true;
(*   %arrayidx50.1 = getelementptr inbounds i64, i64* %mc, i64 1 *)
(*   store i64 %add35.1, i64* %arrayidx50.1, align 8, !tbaa !3 *)
mov mc_8 v_add35_1;
(*   %3 = xor i64 %add41.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v3 v_add41_1 (0x8000000000000000)@uint64;
(*   %xor2.i294.1 = and i64 %3, %add23.i.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i294_1 v3 v_add23_i_1;
(*   %shr.i295.1 = lshr i64 %xor2.i294.1, 63 *)
(* You may need to modify here *)
split v_shr_i295_1 tmp_to_be_used v_xor2_i294_1 63;
(* generated by python *)
assert true && limbs 64 [v_add41_1, v_shr_i295_1] = limbs 64 [v_shr_i301_1, 0@64] + limbs 64 [v_xor2569_i_1, 0@64];
assume limbs 64 [v_add41_1, v_shr_i295_1] = limbs 64 [v_shr_i301_1, 0] + limbs 64 [v_xor2569_i_1, 0] && true;
(*   %4 = load i64, i64* %mc, align 8, !tbaa !3 *)
mov v4 mc_0;
(*   %5 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 2), align 16, !tbaa !3 *)
mov v5 p751p1_16;
(*   %and.i.2 = and i64 %4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_2 v4 (0xFFFFFFFF)@uint64;
(*   %shr.i.2 = lshr i64 %4, 32 *)
(* You may need to modify here *)
split v_shr_i_2 tmp_to_be_used v4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_2;
assume eq tmp_to_be_used v_and_i_2 && true;
(*   %and1.i.2 = and i64 %5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_2 v5 (0xFFFFFFFF)@uint64;
(*   %shr2.i.2 = lshr i64 %5, 32 *)
(* You may need to modify here *)
split v_shr2_i_2 tmp_to_be_used v5 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_2;
assume eq tmp_to_be_used v_and1_i_2 && true;
(*   %mul.i.2 = mul nuw i64 %and1.i.2, %and.i.2 *)
mul v_mul_i_2 v_and1_i_2 v_and_i_2;
(*   %mul3.i.2 = mul nuw i64 %shr2.i.2, %and.i.2 *)
mul v_mul3_i_2 v_shr2_i_2 v_and_i_2;
(*   %mul4.i.2 = mul nuw i64 %and1.i.2, %shr.i.2 *)
mul v_mul4_i_2 v_and1_i_2 v_shr_i_2;
(*   %mul5.i.2 = mul nuw i64 %shr2.i.2, %shr.i.2 *)
mul v_mul5_i_2 v_shr2_i_2 v_shr_i_2;
(*   %and6.i.2 = and i64 %mul.i.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_2 v_mul_i_2 (0xFFFFFFFF)@uint64;
(*   %shr7.i.2 = lshr i64 %mul.i.2, 32 *)
(* You may need to modify here *)
split v_shr7_i_2 tmp_to_be_used v_mul_i_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_2;
assume eq tmp_to_be_used v_and6_i_2 && true;
(*   %and8.i.2 = and i64 %mul4.i.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_2 v_mul4_i_2 (0xFFFFFFFF)@uint64;
(*   %and9.i.2 = and i64 %mul3.i.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_2 v_mul3_i_2 (0xFFFFFFFF)@uint64;
(*   %add.i.2 = add nuw nsw i64 %shr7.i.2, %and8.i.2 *)
adds discard_9 v_add_i_2 v_shr7_i_2 v_and8_i_2;
(* Heuristics applied. *)
assert true && eq discard_9 0@1;
assume eq discard_9 0 && true;
(*   %add10.i.2 = add nuw nsw i64 %add.i.2, %and9.i.2 *)
adds discard_10 v_add10_i_2 v_add_i_2 v_and9_i_2;
(* Heuristics applied. *)
assert true && eq discard_10 0@1;
assume eq discard_10 0 && true;
(*   %shr11.i.2 = lshr i64 %add10.i.2, 32 *)
(* You may need to modify here *)
split v_shr11_i_2 tmp_to_be_used v_add10_i_2 32;
(*   %shl.i.2 = shl i64 %add10.i.2, 32 *)
shls discard_11 v_shl_i_2 v_add10_i_2 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_2 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_2 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.2 = or i64 %shl.i.2, %and6.i.2 *)
(* You may need to modify here *)
or uint64 v_xor68_i_2 v_shl_i_2 v_and6_i_2;
(* Heuristics applied. *)
assert true && eq v_xor68_i_2 v_shl_i_2 + v_and6_i_2;
assume eq v_xor68_i_2 v_shl_i_2 + v_and6_i_2 && true;
(*   %shr13.i.2 = lshr i64 %mul4.i.2, 32 *)
(* You may need to modify here *)
split v_shr13_i_2 tmp_to_be_used v_mul4_i_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_2;
assume eq tmp_to_be_used v_and8_i_2 && true;
(*   %shr14.i.2 = lshr i64 %mul3.i.2, 32 *)
(* You may need to modify here *)
split v_shr14_i_2 tmp_to_be_used v_mul3_i_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_2;
assume eq tmp_to_be_used v_and9_i_2 && true;
(*   %and15.i.2 = and i64 %mul5.i.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_2 v_mul5_i_2 (0xFFFFFFFF)@uint64;
(*   %add16.i.2 = add nuw nsw i64 %shr13.i.2, %shr14.i.2 *)
adds discard_12 v_add16_i_2 v_shr13_i_2 v_shr14_i_2;
(* Heuristics applied. *)
assert true && eq discard_12 0@1;
assume eq discard_12 0 && true;
(*   %add17.i.2 = add nuw nsw i64 %add16.i.2, %and15.i.2 *)
adds discard_13 v_add17_i_2 v_add16_i_2 v_and15_i_2;
(* Heuristics applied. *)
assert true && eq discard_13 0@1;
assume eq discard_13 0 && true;
(*   %add18.i.2 = add nuw nsw i64 %add17.i.2, %shr11.i.2 *)
adds discard_14 v_add18_i_2 v_add17_i_2 v_shr11_i_2;
(* Heuristics applied. *)
assert true && eq discard_14 0@1;
assume eq discard_14 0 && true;
(*   %and19.i.2 = and i64 %add18.i.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_2 v_add18_i_2 (0xFFFFFFFF)@uint64;
(*   %and21.i.2 = and i64 %add18.i.2, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_2 v_add18_i_2 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_2 v_and21_i_2 + v_and19_i_2;
assume eq v_add18_i_2 v_and21_i_2 + v_and19_i_2 && true;
(*   %and22.i.2 = and i64 %mul5.i.2, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_2 v_mul5_i_2 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_2 v_and22_i_2 + v_and15_i_2;
assume eq v_mul5_i_2 v_and22_i_2 + v_and15_i_2 && true;
(*   %add23.i.2 = add i64 %and21.i.2, %and22.i.2 *)
adds discard_15 v_add23_i_2 v_and21_i_2 v_and22_i_2;
(* Heuristics applied. *)
assert true && eq discard_15 0@1;
assume eq discard_15 0 && true;
(*   %xor2569.i.2 = or i64 %add23.i.2, %and19.i.2 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_2 v_add23_i_2 v_and19_i_2;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_2 v_add23_i_2 + v_and19_i_2;
assume eq v_xor2569_i_2 v_add23_i_2 + v_and19_i_2 && true;
(*   %add16.2 = add i64 %xor68.i.2, %add41.1 *)
adds discard_16 v_add16_2 v_xor68_i_2 v_add41_1;
(*   %xor.i315.2 = xor i64 %add16.2, %shl.i.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_2 v_add16_2 v_shl_i_2;
(*   %xor1.i316.2 = xor i64 %shl.i.2, %add41.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_2 v_shl_i_2 v_add41_1;
(*   %or.i317.2 = or i64 %xor.i315.2, %xor1.i316.2 *)
(* You may need to modify here *)
or uint64 v_or_i317_2 v_xor_i315_2 v_xor1_i316_2;
(*   %xor2.i318.2 = xor i64 %or.i317.2, %add16.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_2 v_or_i317_2 v_add16_2;
(*   %shr.i319.2 = lshr i64 %xor2.i318.2, 63 *)
(* You may need to modify here *)
split v_shr_i319_2 tmp_to_be_used v_xor2_i318_2 63;
(* generated by python *)
assert true && limbs 64 [v_add16_2, v_shr_i319_2] = limbs 64 [v_xor68_i_2, 0@64] + limbs 64 [v_add41_1, 0@64];
assume limbs 64 [v_add16_2, v_shr_i319_2] = limbs 64 [v_xor68_i_2, 0] + limbs 64 [v_add41_1, 0] && true;
(*   %add20.2 = add i64 %shr.i319.2, %xor2569.i.2 *)
adds discard_17 v_add20_2 v_shr_i319_2 v_xor2569_i_2;
(* Heuristics applied. *)
assert true && eq discard_17 0@1;
assume eq discard_17 0 && true;
(*   %add21.2 = add i64 %add20.2, %shr.i295.1 *)
adds discard_18 v_add21_2 v_add20_2 v_shr_i295_1;
(* Heuristics applied. *)
assert true && eq discard_18 0@1;
assume eq discard_18 0 && true;
(*   %6 = xor i64 %add20.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v6 v_add20_2 (0x8000000000000000)@uint64;
(*   %xor2.i312.2 = and i64 %6, %add23.i.2 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_2 v6 v_add23_i_2;
(*   %7 = xor i64 %add21.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v7 v_add21_2 (0x8000000000000000)@uint64;
(*   %xor2.i306.2 = and i64 %add20.2, %7 *)
(* You may need to modify here *)
and uint64 v_xor2_i306_2 v_add20_2 v7;
(*   %shr.i313328.2 = or i64 %xor2.i306.2, %xor2.i312.2 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_2 v_xor2_i306_2 v_xor2_i312_2;
(* Heuristics applied. *)
assert true && eq v_shr_i313328_2 v_xor2_i306_2 + v_xor2_i312_2;
assume eq v_shr_i313328_2 v_xor2_i306_2 + v_xor2_i312_2 && true;
(*   %or25327.2 = lshr i64 %shr.i313328.2, 63 *)
(* You may need to modify here *)
split v_or25327_2 tmp_to_be_used v_shr_i313328_2 63;
(* generated by python *)
assert true && limbs 64 [v_add21_2, v_or25327_2] = limbs 64 [v_shr_i319_2, 0@64] + limbs 64 [v_xor2569_i_2, 0@64] + limbs 64 [v_shr_i295_1, 0@64];
assume limbs 64 [v_add21_2, v_or25327_2] = limbs 64 [v_shr_i319_2, 0] + limbs 64 [v_xor2569_i_2, 0] + limbs 64 [v_shr_i295_1, 0] && true;
(*   %arrayidx9.2.1 = getelementptr inbounds i64, i64* %mc, i64 1 *)
(*   %8 = load i64, i64* %arrayidx9.2.1, align 8, !tbaa !3 *)
mov v8 mc_8;
(*   %9 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 1), align 8, !tbaa !3 *)
mov v9 p751p1_8;
(*   %and.i.2.1 = and i64 %8, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_2_1 v8 (0xFFFFFFFF)@uint64;
(*   %shr.i.2.1 = lshr i64 %8, 32 *)
(* You may need to modify here *)
split v_shr_i_2_1 tmp_to_be_used v8 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_2_1;
assume eq tmp_to_be_used v_and_i_2_1 && true;
(*   %and1.i.2.1 = and i64 %9, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_2_1 v9 (0xFFFFFFFF)@uint64;
(*   %shr2.i.2.1 = lshr i64 %9, 32 *)
(* You may need to modify here *)
split v_shr2_i_2_1 tmp_to_be_used v9 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_2_1;
assume eq tmp_to_be_used v_and1_i_2_1 && true;
(*   %mul.i.2.1 = mul nuw i64 %and1.i.2.1, %and.i.2.1 *)
mul v_mul_i_2_1 v_and1_i_2_1 v_and_i_2_1;
(*   %mul3.i.2.1 = mul nuw i64 %shr2.i.2.1, %and.i.2.1 *)
mul v_mul3_i_2_1 v_shr2_i_2_1 v_and_i_2_1;
(*   %mul4.i.2.1 = mul nuw i64 %and1.i.2.1, %shr.i.2.1 *)
mul v_mul4_i_2_1 v_and1_i_2_1 v_shr_i_2_1;
(*   %mul5.i.2.1 = mul nuw i64 %shr2.i.2.1, %shr.i.2.1 *)
mul v_mul5_i_2_1 v_shr2_i_2_1 v_shr_i_2_1;
(*   %and6.i.2.1 = and i64 %mul.i.2.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_2_1 v_mul_i_2_1 (0xFFFFFFFF)@uint64;
(*   %shr7.i.2.1 = lshr i64 %mul.i.2.1, 32 *)
(* You may need to modify here *)
split v_shr7_i_2_1 tmp_to_be_used v_mul_i_2_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_2_1;
assume eq tmp_to_be_used v_and6_i_2_1 && true;
(*   %and8.i.2.1 = and i64 %mul4.i.2.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_2_1 v_mul4_i_2_1 (0xFFFFFFFF)@uint64;
(*   %and9.i.2.1 = and i64 %mul3.i.2.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_2_1 v_mul3_i_2_1 (0xFFFFFFFF)@uint64;
(*   %add.i.2.1 = add nuw nsw i64 %shr7.i.2.1, %and8.i.2.1 *)
adds discard_19 v_add_i_2_1 v_shr7_i_2_1 v_and8_i_2_1;
(* Heuristics applied. *)
assert true && eq discard_19 0@1;
assume eq discard_19 0 && true;
(*   %add10.i.2.1 = add nuw nsw i64 %add.i.2.1, %and9.i.2.1 *)
adds discard_20 v_add10_i_2_1 v_add_i_2_1 v_and9_i_2_1;
(* Heuristics applied. *)
assert true && eq discard_20 0@1;
assume eq discard_20 0 && true;
(*   %shr11.i.2.1 = lshr i64 %add10.i.2.1, 32 *)
(* You may need to modify here *)
split v_shr11_i_2_1 tmp_to_be_used v_add10_i_2_1 32;
(*   %shl.i.2.1 = shl i64 %add10.i.2.1, 32 *)
shls discard_21 v_shl_i_2_1 v_add10_i_2_1 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_2_1 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_2_1 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.2.1 = or i64 %shl.i.2.1, %and6.i.2.1 *)
(* You may need to modify here *)
or uint64 v_xor68_i_2_1 v_shl_i_2_1 v_and6_i_2_1;
(* Heuristics applied. *)
assert true && eq v_xor68_i_2_1 v_shl_i_2_1 + v_and6_i_2_1;
assume eq v_xor68_i_2_1 v_shl_i_2_1 + v_and6_i_2_1 && true;
(*   %shr13.i.2.1 = lshr i64 %mul4.i.2.1, 32 *)
(* You may need to modify here *)
split v_shr13_i_2_1 tmp_to_be_used v_mul4_i_2_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_2_1;
assume eq tmp_to_be_used v_and8_i_2_1 && true;
(*   %shr14.i.2.1 = lshr i64 %mul3.i.2.1, 32 *)
(* You may need to modify here *)
split v_shr14_i_2_1 tmp_to_be_used v_mul3_i_2_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_2_1;
assume eq tmp_to_be_used v_and9_i_2_1 && true;
(*   %and15.i.2.1 = and i64 %mul5.i.2.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_2_1 v_mul5_i_2_1 (0xFFFFFFFF)@uint64;
(*   %add16.i.2.1 = add nuw nsw i64 %shr13.i.2.1, %shr14.i.2.1 *)
adds discard_22 v_add16_i_2_1 v_shr13_i_2_1 v_shr14_i_2_1;
(* Heuristics applied. *)
assert true && eq discard_22 0@1;
assume eq discard_22 0 && true;
(*   %add17.i.2.1 = add nuw nsw i64 %add16.i.2.1, %and15.i.2.1 *)
adds discard_23 v_add17_i_2_1 v_add16_i_2_1 v_and15_i_2_1;
(* Heuristics applied. *)
assert true && eq discard_23 0@1;
assume eq discard_23 0 && true;
(*   %add18.i.2.1 = add nuw nsw i64 %add17.i.2.1, %shr11.i.2.1 *)
adds discard_24 v_add18_i_2_1 v_add17_i_2_1 v_shr11_i_2_1;
(* Heuristics applied. *)
assert true && eq discard_24 0@1;
assume eq discard_24 0 && true;
(*   %and19.i.2.1 = and i64 %add18.i.2.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_2_1 v_add18_i_2_1 (0xFFFFFFFF)@uint64;
(*   %and21.i.2.1 = and i64 %add18.i.2.1, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_2_1 v_add18_i_2_1 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_2_1 v_and21_i_2_1 + v_and19_i_2_1;
assume eq v_add18_i_2_1 v_and21_i_2_1 + v_and19_i_2_1 && true;
(*   %and22.i.2.1 = and i64 %mul5.i.2.1, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_2_1 v_mul5_i_2_1 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_2_1 v_and22_i_2_1 + v_and15_i_2_1;
assume eq v_mul5_i_2_1 v_and22_i_2_1 + v_and15_i_2_1 && true;
(*   %add23.i.2.1 = add i64 %and21.i.2.1, %and22.i.2.1 *)
adds discard_25 v_add23_i_2_1 v_and21_i_2_1 v_and22_i_2_1;
(* Heuristics applied. *)
assert true && eq discard_25 0@1;
assume eq discard_25 0 && true;
(*   %xor2569.i.2.1 = or i64 %add23.i.2.1, %and19.i.2.1 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_2_1 v_add23_i_2_1 v_and19_i_2_1;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_2_1 v_add23_i_2_1 + v_and19_i_2_1;
assume eq v_xor2569_i_2_1 v_add23_i_2_1 + v_and19_i_2_1 && true;
(*   %add16.2.1 = add i64 %xor68.i.2.1, %add16.2 *)
adds discard_26 v_add16_2_1 v_xor68_i_2_1 v_add16_2;
(*   %xor.i315.2.1 = xor i64 %add16.2.1, %shl.i.2.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_2_1 v_add16_2_1 v_shl_i_2_1;
(*   %xor1.i316.2.1 = xor i64 %shl.i.2.1, %add16.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_2_1 v_shl_i_2_1 v_add16_2;
(*   %or.i317.2.1 = or i64 %xor.i315.2.1, %xor1.i316.2.1 *)
(* You may need to modify here *)
or uint64 v_or_i317_2_1 v_xor_i315_2_1 v_xor1_i316_2_1;
(*   %xor2.i318.2.1 = xor i64 %or.i317.2.1, %add16.2.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_2_1 v_or_i317_2_1 v_add16_2_1;
(*   %shr.i319.2.1 = lshr i64 %xor2.i318.2.1, 63 *)
(* You may need to modify here *)
split v_shr_i319_2_1 tmp_to_be_used v_xor2_i318_2_1 63;
(* generated by python *)
assert true && limbs 64 [v_add16_2_1, v_shr_i319_2_1] = limbs 64 [v_xor68_i_2_1, 0@64] + limbs 64 [v_add16_2, 0@64];
assume limbs 64 [v_add16_2_1, v_shr_i319_2_1] = limbs 64 [v_xor68_i_2_1, 0] + limbs 64 [v_add16_2, 0] && true;
(*   %add20.2.1 = add i64 %shr.i319.2.1, %xor2569.i.2.1 *)
adds discard_27 v_add20_2_1 v_shr_i319_2_1 v_xor2569_i_2_1;
(* Heuristics applied. *)
assert true && eq discard_27 0@1;
assume eq discard_27 0 && true;
(*   %add21.2.1 = add i64 %add20.2.1, %add21.2 *)
adds discard_28 v_add21_2_1 v_add20_2_1 v_add21_2;
(* Heuristics applied. *)
assert true && eq discard_28 0@1;
assume eq discard_28 0 && true;
(*   %10 = xor i64 %add20.2.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v10 v_add20_2_1 (0x8000000000000000)@uint64;
(*   %xor2.i312.2.1 = and i64 %10, %add23.i.2.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_2_1 v10 v_add23_i_2_1;
(*   %xor.i303.2.1 = xor i64 %add21.2.1, %add20.2.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_2_1 v_add21_2_1 v_add20_2_1;
(*   %xor1.i304.2.1 = xor i64 %add20.2.1, %add21.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_2_1 v_add20_2_1 v_add21_2;
(*   %or.i305.2.1 = or i64 %xor.i303.2.1, %xor1.i304.2.1 *)
(* You may need to modify here *)
or uint64 v_or_i305_2_1 v_xor_i303_2_1 v_xor1_i304_2_1;
(*   %xor2.i306.2.1 = xor i64 %or.i305.2.1, %add21.2.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_2_1 v_or_i305_2_1 v_add21_2_1;
(*   %shr.i313328.2.1 = or i64 %xor2.i306.2.1, %xor2.i312.2.1 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_2_1 v_xor2_i306_2_1 v_xor2_i312_2_1;
(*   %or25327.2.1 = lshr i64 %shr.i313328.2.1, 63 *)
(* You may need to modify here *)
split v_or25327_2_1 tmp_to_be_used v_shr_i313328_2_1 63;
(* generated by python *)
assert true && limbs 64 [v_add21_2_1, v_or25327_2_1] = limbs 64 [v_shr_i319_2_1, 0@64] + limbs 64 [v_xor2569_i_2_1, 0@64] + limbs 64 [v_add21_2, 0@64];
assume limbs 64 [v_add21_2_1, v_or25327_2_1] = limbs 64 [v_shr_i319_2_1, 0] + limbs 64 [v_xor2569_i_2_1, 0] + limbs 64 [v_add21_2, 0] && true;
(*   %add27.2.1 = add nuw nsw i64 %or25327.2.1, %or25327.2 *)
adds discard_29 v_add27_2_1 v_or25327_2_1 v_or25327_2;
(* Heuristics applied. *)
assert true && eq discard_29 0@1;
assume eq discard_29 0 && true;
(*   %arrayidx34.2 = getelementptr inbounds i64, i64* %ma, i64 2 *)
(*   %11 = load i64, i64* %arrayidx34.2, align 8, !tbaa !3 *)
mov v11 ma_16;
(*   %add35.2 = add i64 %11, %add16.2.1 *)
adds discard_30 v_add35_2 v11 v_add16_2_1;
(*   %xor.i297.2 = xor i64 %add35.2, %add16.2.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i297_2 v_add35_2 v_add16_2_1;
(*   %xor1.i298.2 = xor i64 %11, %add16.2.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i298_2 v11 v_add16_2_1;
(*   %or.i299.2 = or i64 %xor.i297.2, %xor1.i298.2 *)
(* You may need to modify here *)
or uint64 v_or_i299_2 v_xor_i297_2 v_xor1_i298_2;
(*   %xor2.i300.2 = xor i64 %or.i299.2, %add35.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i300_2 v_or_i299_2 v_add35_2;
(*   %shr.i301.2 = lshr i64 %xor2.i300.2, 63 *)
(* You may need to modify here *)
split v_shr_i301_2 tmp_to_be_used v_xor2_i300_2 63;
(* generated by python *)
assert true && limbs 64 [v_add35_2, v_shr_i301_2] = limbs 64 [v11, 0@64] + limbs 64 [v_add16_2_1, 0@64];
assume limbs 64 [v_add35_2, v_shr_i301_2] = limbs 64 [v11, 0] + limbs 64 [v_add16_2_1, 0] && true;
(*   %add41.2 = add i64 %shr.i301.2, %add21.2.1 *)
adds discard_31 v_add41_2 v_shr_i301_2 v_add21_2_1;
(* Heuristics applied. *)
assert true && eq discard_31 0@1;
assume eq discard_31 0 && true;
(*   %arrayidx50.2 = getelementptr inbounds i64, i64* %mc, i64 2 *)
(*   store i64 %add35.2, i64* %arrayidx50.2, align 8, !tbaa !3 *)
mov mc_16 v_add35_2;
(*   %12 = xor i64 %add41.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v12 v_add41_2 (0x8000000000000000)@uint64;
(*   %xor2.i294.2 = and i64 %12, %add21.2.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i294_2 v12 v_add21_2_1;
(*   %shr.i295.2 = lshr i64 %xor2.i294.2, 63 *)
(* You may need to modify here *)
split v_shr_i295_2 tmp_to_be_used v_xor2_i294_2 63;
(* generated by python *)
assert true && limbs 64 [v_add41_2, v_shr_i295_2] = limbs 64 [v_shr_i301_2, 0@64] + limbs 64 [v_add21_2_1, 0@64];
assume limbs 64 [v_add41_2, v_shr_i295_2] = limbs 64 [v_shr_i301_2, 0] + limbs 64 [v_add21_2_1, 0] && true;
(*   %add48.2 = add nsw i64 %shr.i295.2, %add27.2.1 *)
adds discard_32 v_add48_2 v_shr_i295_2 v_add27_2_1;
(* Heuristics applied. *)
assert true && eq discard_32 0@1;
assume eq discard_32 0 && true;
(*   %13 = load i64, i64* %mc, align 8, !tbaa !3 *)
mov v13 mc_0;
(*   %14 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 3), align 8, !tbaa !3 *)
mov v14 p751p1_24;
(*   %and.i.3 = and i64 %13, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_3 v13 (0xFFFFFFFF)@uint64;
(*   %shr.i.3 = lshr i64 %13, 32 *)
(* You may need to modify here *)
split v_shr_i_3 tmp_to_be_used v13 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_3;
assume eq tmp_to_be_used v_and_i_3 && true;
(*   %and1.i.3 = and i64 %14, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_3 v14 (0xFFFFFFFF)@uint64;
(*   %shr2.i.3 = lshr i64 %14, 32 *)
(* You may need to modify here *)
split v_shr2_i_3 tmp_to_be_used v14 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_3;
assume eq tmp_to_be_used v_and1_i_3 && true;
(*   %mul.i.3 = mul nuw i64 %and1.i.3, %and.i.3 *)
mul v_mul_i_3 v_and1_i_3 v_and_i_3;
(*   %mul3.i.3 = mul nuw i64 %shr2.i.3, %and.i.3 *)
mul v_mul3_i_3 v_shr2_i_3 v_and_i_3;
(*   %mul4.i.3 = mul nuw i64 %and1.i.3, %shr.i.3 *)
mul v_mul4_i_3 v_and1_i_3 v_shr_i_3;
(*   %mul5.i.3 = mul nuw i64 %shr2.i.3, %shr.i.3 *)
mul v_mul5_i_3 v_shr2_i_3 v_shr_i_3;
(*   %and6.i.3 = and i64 %mul.i.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_3 v_mul_i_3 (0xFFFFFFFF)@uint64;
(*   %shr7.i.3 = lshr i64 %mul.i.3, 32 *)
(* You may need to modify here *)
split v_shr7_i_3 tmp_to_be_used v_mul_i_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_3;
assume eq tmp_to_be_used v_and6_i_3 && true;
(*   %and8.i.3 = and i64 %mul4.i.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_3 v_mul4_i_3 (0xFFFFFFFF)@uint64;
(*   %and9.i.3 = and i64 %mul3.i.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_3 v_mul3_i_3 (0xFFFFFFFF)@uint64;
(*   %add.i.3 = add nuw nsw i64 %shr7.i.3, %and8.i.3 *)
adds discard_33 v_add_i_3 v_shr7_i_3 v_and8_i_3;
(* Heuristics applied. *)
assert true && eq discard_33 0@1;
assume eq discard_33 0 && true;
(*   %add10.i.3 = add nuw nsw i64 %add.i.3, %and9.i.3 *)
adds discard_34 v_add10_i_3 v_add_i_3 v_and9_i_3;
(* Heuristics applied. *)
assert true && eq discard_34 0@1;
assume eq discard_34 0 && true;
(*   %shr11.i.3 = lshr i64 %add10.i.3, 32 *)
(* You may need to modify here *)
split v_shr11_i_3 tmp_to_be_used v_add10_i_3 32;
(*   %shl.i.3 = shl i64 %add10.i.3, 32 *)
shls discard_35 v_shl_i_3 v_add10_i_3 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_3 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_3 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.3 = or i64 %shl.i.3, %and6.i.3 *)
(* You may need to modify here *)
or uint64 v_xor68_i_3 v_shl_i_3 v_and6_i_3;
(* Heuristics applied. *)
assert true && eq v_xor68_i_3 v_shl_i_3 + v_and6_i_3;
assume eq v_xor68_i_3 v_shl_i_3 + v_and6_i_3 && true;
(*   %shr13.i.3 = lshr i64 %mul4.i.3, 32 *)
(* You may need to modify here *)
split v_shr13_i_3 tmp_to_be_used v_mul4_i_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_3;
assume eq tmp_to_be_used v_and8_i_3 && true;
(*   %shr14.i.3 = lshr i64 %mul3.i.3, 32 *)
(* You may need to modify here *)
split v_shr14_i_3 tmp_to_be_used v_mul3_i_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_3;
assume eq tmp_to_be_used v_and9_i_3 && true;
(*   %and15.i.3 = and i64 %mul5.i.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_3 v_mul5_i_3 (0xFFFFFFFF)@uint64;
(*   %add16.i.3 = add nuw nsw i64 %shr13.i.3, %shr14.i.3 *)
adds discard_36 v_add16_i_3 v_shr13_i_3 v_shr14_i_3;
(* Heuristics applied. *)
assert true && eq discard_36 0@1;
assume eq discard_36 0 && true;
(*   %add17.i.3 = add nuw nsw i64 %add16.i.3, %and15.i.3 *)
adds discard_37 v_add17_i_3 v_add16_i_3 v_and15_i_3;
(* Heuristics applied. *)
assert true && eq discard_37 0@1;
assume eq discard_37 0 && true;
(*   %add18.i.3 = add nuw nsw i64 %add17.i.3, %shr11.i.3 *)
adds discard_38 v_add18_i_3 v_add17_i_3 v_shr11_i_3;
(* Heuristics applied. *)
assert true && eq discard_38 0@1;
assume eq discard_38 0 && true;
(*   %and19.i.3 = and i64 %add18.i.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_3 v_add18_i_3 (0xFFFFFFFF)@uint64;
(*   %and21.i.3 = and i64 %add18.i.3, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_3 v_add18_i_3 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_3 v_and21_i_3 + v_and19_i_3;
assume eq v_add18_i_3 v_and21_i_3 + v_and19_i_3 && true;
(*   %and22.i.3 = and i64 %mul5.i.3, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_3 v_mul5_i_3 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_3 v_and22_i_3 + v_and15_i_3;
assume eq v_mul5_i_3 v_and22_i_3 + v_and15_i_3 && true;
(*   %add23.i.3 = add i64 %and21.i.3, %and22.i.3 *)
adds discard_39 v_add23_i_3 v_and21_i_3 v_and22_i_3;
(* Heuristics applied. *)
assert true && eq discard_39 0@1;
assume eq discard_39 0 && true;
(*   %xor2569.i.3 = or i64 %add23.i.3, %and19.i.3 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_3 v_add23_i_3 v_and19_i_3;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_3 v_add23_i_3 + v_and19_i_3;
assume eq v_xor2569_i_3 v_add23_i_3 + v_and19_i_3 && true;
(*   %add16.3 = add i64 %xor68.i.3, %add41.2 *)
adds discard_40 v_add16_3 v_xor68_i_3 v_add41_2;
(*   %xor.i315.3 = xor i64 %add16.3, %shl.i.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_3 v_add16_3 v_shl_i_3;
(*   %xor1.i316.3 = xor i64 %shl.i.3, %add41.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_3 v_shl_i_3 v_add41_2;
(*   %or.i317.3 = or i64 %xor.i315.3, %xor1.i316.3 *)
(* You may need to modify here *)
or uint64 v_or_i317_3 v_xor_i315_3 v_xor1_i316_3;
(*   %xor2.i318.3 = xor i64 %or.i317.3, %add16.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_3 v_or_i317_3 v_add16_3;
(*   %shr.i319.3 = lshr i64 %xor2.i318.3, 63 *)
(* You may need to modify here *)
split v_shr_i319_3 tmp_to_be_used v_xor2_i318_3 63;
(* generated by python *)
assert true && limbs 64 [v_add16_3, v_shr_i319_3] = limbs 64 [v_xor68_i_3, 0@64] + limbs 64 [v_add41_2, 0@64];
assume limbs 64 [v_add16_3, v_shr_i319_3] = limbs 64 [v_xor68_i_3, 0] + limbs 64 [v_add41_2, 0] && true;
(*   %add20.3 = add i64 %shr.i319.3, %xor2569.i.3 *)
adds discard_41 v_add20_3 v_shr_i319_3 v_xor2569_i_3;
(* Heuristics applied. *)
assert true && eq discard_41 0@1;
assume eq discard_41 0 && true;
(*   %add21.3 = add i64 %add20.3, %add48.2 *)
adds discard_42 v_add21_3 v_add20_3 v_add48_2;
(* Heuristics applied. *)
assert true && eq discard_42 0@1;
assume eq discard_42 0 && true;
(*   %15 = xor i64 %add20.3, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v15 v_add20_3 (0x8000000000000000)@uint64;
(*   %xor2.i312.3 = and i64 %15, %add23.i.3 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_3 v15 v_add23_i_3;
(*   %xor.i303.3 = xor i64 %add21.3, %add20.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_3 v_add21_3 v_add20_3;
(*   %xor1.i304.3 = xor i64 %add20.3, %add48.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_3 v_add20_3 v_add48_2;
(*   %or.i305.3 = or i64 %xor.i303.3, %xor1.i304.3 *)
(* You may need to modify here *)
or uint64 v_or_i305_3 v_xor_i303_3 v_xor1_i304_3;
(*   %xor2.i306.3 = xor i64 %or.i305.3, %add21.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_3 v_or_i305_3 v_add21_3;
(*   %shr.i313328.3 = or i64 %xor2.i306.3, %xor2.i312.3 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_3 v_xor2_i306_3 v_xor2_i312_3;
(*   %or25327.3 = lshr i64 %shr.i313328.3, 63 *)
(* You may need to modify here *)
split v_or25327_3 tmp_to_be_used v_shr_i313328_3 63;
(* generated by python *)
assert true && limbs 64 [v_add21_3, v_or25327_3] = limbs 64 [v_shr_i319_3, 0@64] + limbs 64 [v_xor2569_i_3, 0@64] + limbs 64 [v_add48_2, 0@64];
assume limbs 64 [v_add21_3, v_or25327_3] = limbs 64 [v_shr_i319_3, 0] + limbs 64 [v_xor2569_i_3, 0] + limbs 64 [v_add48_2, 0] && true;
(*   %arrayidx9.3.1 = getelementptr inbounds i64, i64* %mc, i64 1 *)
(*   %16 = load i64, i64* %arrayidx9.3.1, align 8, !tbaa !3 *)
mov v16 mc_8;
(*   %17 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 2), align 16, !tbaa !3 *)
mov v17 p751p1_16;
(*   %and.i.3.1 = and i64 %16, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_3_1 v16 (0xFFFFFFFF)@uint64;
(*   %shr.i.3.1 = lshr i64 %16, 32 *)
(* You may need to modify here *)
split v_shr_i_3_1 tmp_to_be_used v16 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_3_1;
assume eq tmp_to_be_used v_and_i_3_1 && true;
(*   %and1.i.3.1 = and i64 %17, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_3_1 v17 (0xFFFFFFFF)@uint64;
(*   %shr2.i.3.1 = lshr i64 %17, 32 *)
(* You may need to modify here *)
split v_shr2_i_3_1 tmp_to_be_used v17 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_3_1;
assume eq tmp_to_be_used v_and1_i_3_1 && true;
(*   %mul.i.3.1 = mul nuw i64 %and1.i.3.1, %and.i.3.1 *)
mul v_mul_i_3_1 v_and1_i_3_1 v_and_i_3_1;
(*   %mul3.i.3.1 = mul nuw i64 %shr2.i.3.1, %and.i.3.1 *)
mul v_mul3_i_3_1 v_shr2_i_3_1 v_and_i_3_1;
(*   %mul4.i.3.1 = mul nuw i64 %and1.i.3.1, %shr.i.3.1 *)
mul v_mul4_i_3_1 v_and1_i_3_1 v_shr_i_3_1;
(*   %mul5.i.3.1 = mul nuw i64 %shr2.i.3.1, %shr.i.3.1 *)
mul v_mul5_i_3_1 v_shr2_i_3_1 v_shr_i_3_1;
(*   %and6.i.3.1 = and i64 %mul.i.3.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_3_1 v_mul_i_3_1 (0xFFFFFFFF)@uint64;
(*   %shr7.i.3.1 = lshr i64 %mul.i.3.1, 32 *)
(* You may need to modify here *)
split v_shr7_i_3_1 tmp_to_be_used v_mul_i_3_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_3_1;
assume eq tmp_to_be_used v_and6_i_3_1 && true;
(*   %and8.i.3.1 = and i64 %mul4.i.3.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_3_1 v_mul4_i_3_1 (0xFFFFFFFF)@uint64;
(*   %and9.i.3.1 = and i64 %mul3.i.3.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_3_1 v_mul3_i_3_1 (0xFFFFFFFF)@uint64;
(*   %add.i.3.1 = add nuw nsw i64 %shr7.i.3.1, %and8.i.3.1 *)
adds discard_43 v_add_i_3_1 v_shr7_i_3_1 v_and8_i_3_1;
(* Heuristics applied. *)
assert true && eq discard_43 0@1;
assume eq discard_43 0 && true;
(*   %add10.i.3.1 = add nuw nsw i64 %add.i.3.1, %and9.i.3.1 *)
adds discard_44 v_add10_i_3_1 v_add_i_3_1 v_and9_i_3_1;
(* Heuristics applied. *)
assert true && eq discard_44 0@1;
assume eq discard_44 0 && true;
(*   %shr11.i.3.1 = lshr i64 %add10.i.3.1, 32 *)
(* You may need to modify here *)
split v_shr11_i_3_1 tmp_to_be_used v_add10_i_3_1 32;
(*   %shl.i.3.1 = shl i64 %add10.i.3.1, 32 *)
shls discard_45 v_shl_i_3_1 v_add10_i_3_1 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_3_1 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_3_1 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.3.1 = or i64 %shl.i.3.1, %and6.i.3.1 *)
(* You may need to modify here *)
or uint64 v_xor68_i_3_1 v_shl_i_3_1 v_and6_i_3_1;
(* Heuristics applied. *)
assert true && eq v_xor68_i_3_1 v_shl_i_3_1 + v_and6_i_3_1;
assume eq v_xor68_i_3_1 v_shl_i_3_1 + v_and6_i_3_1 && true;
(*   %shr13.i.3.1 = lshr i64 %mul4.i.3.1, 32 *)
(* You may need to modify here *)
split v_shr13_i_3_1 tmp_to_be_used v_mul4_i_3_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_3_1;
assume eq tmp_to_be_used v_and8_i_3_1 && true;
(*   %shr14.i.3.1 = lshr i64 %mul3.i.3.1, 32 *)
(* You may need to modify here *)
split v_shr14_i_3_1 tmp_to_be_used v_mul3_i_3_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_3_1;
assume eq tmp_to_be_used v_and9_i_3_1 && true;
(*   %and15.i.3.1 = and i64 %mul5.i.3.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_3_1 v_mul5_i_3_1 (0xFFFFFFFF)@uint64;
(*   %add16.i.3.1 = add nuw nsw i64 %shr13.i.3.1, %shr14.i.3.1 *)
adds discard_46 v_add16_i_3_1 v_shr13_i_3_1 v_shr14_i_3_1;
(* Heuristics applied. *)
assert true && eq discard_46 0@1;
assume eq discard_46 0 && true;
(*   %add17.i.3.1 = add nuw nsw i64 %add16.i.3.1, %and15.i.3.1 *)
adds discard_47 v_add17_i_3_1 v_add16_i_3_1 v_and15_i_3_1;
(* Heuristics applied. *)
assert true && eq discard_47 0@1;
assume eq discard_47 0 && true;
(*   %add18.i.3.1 = add nuw nsw i64 %add17.i.3.1, %shr11.i.3.1 *)
adds discard_48 v_add18_i_3_1 v_add17_i_3_1 v_shr11_i_3_1;
(* Heuristics applied. *)
assert true && eq discard_48 0@1;
assume eq discard_48 0 && true;
(*   %and19.i.3.1 = and i64 %add18.i.3.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_3_1 v_add18_i_3_1 (0xFFFFFFFF)@uint64;
(*   %and21.i.3.1 = and i64 %add18.i.3.1, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_3_1 v_add18_i_3_1 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_3_1 v_and21_i_3_1 + v_and19_i_3_1;
assume eq v_add18_i_3_1 v_and21_i_3_1 + v_and19_i_3_1 && true;
(*   %and22.i.3.1 = and i64 %mul5.i.3.1, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_3_1 v_mul5_i_3_1 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_3_1 v_and22_i_3_1 + v_and15_i_3_1;
assume eq v_mul5_i_3_1 v_and22_i_3_1 + v_and15_i_3_1 && true;
(*   %add23.i.3.1 = add i64 %and21.i.3.1, %and22.i.3.1 *)
adds discard_49 v_add23_i_3_1 v_and21_i_3_1 v_and22_i_3_1;
(* Heuristics applied. *)
assert true && eq discard_49 0@1;
assume eq discard_49 0 && true;
(*   %xor2569.i.3.1 = or i64 %add23.i.3.1, %and19.i.3.1 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_3_1 v_add23_i_3_1 v_and19_i_3_1;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_3_1 v_add23_i_3_1 + v_and19_i_3_1;
assume eq v_xor2569_i_3_1 v_add23_i_3_1 + v_and19_i_3_1 && true;
(*   %add16.3.1 = add i64 %xor68.i.3.1, %add16.3 *)
adds discard_50 v_add16_3_1 v_xor68_i_3_1 v_add16_3;
(*   %xor.i315.3.1 = xor i64 %add16.3.1, %shl.i.3.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_3_1 v_add16_3_1 v_shl_i_3_1;
(*   %xor1.i316.3.1 = xor i64 %shl.i.3.1, %add16.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_3_1 v_shl_i_3_1 v_add16_3;
(*   %or.i317.3.1 = or i64 %xor.i315.3.1, %xor1.i316.3.1 *)
(* You may need to modify here *)
or uint64 v_or_i317_3_1 v_xor_i315_3_1 v_xor1_i316_3_1;
(*   %xor2.i318.3.1 = xor i64 %or.i317.3.1, %add16.3.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_3_1 v_or_i317_3_1 v_add16_3_1;
(*   %shr.i319.3.1 = lshr i64 %xor2.i318.3.1, 63 *)
(* You may need to modify here *)
split v_shr_i319_3_1 tmp_to_be_used v_xor2_i318_3_1 63;
(* generated by python *)
assert true && limbs 64 [v_add16_3_1, v_shr_i319_3_1] = limbs 64 [v_xor68_i_3_1, 0@64] + limbs 64 [v_add16_3, 0@64];
assume limbs 64 [v_add16_3_1, v_shr_i319_3_1] = limbs 64 [v_xor68_i_3_1, 0] + limbs 64 [v_add16_3, 0] && true;
(*   %add20.3.1 = add i64 %shr.i319.3.1, %xor2569.i.3.1 *)
adds discard_51 v_add20_3_1 v_shr_i319_3_1 v_xor2569_i_3_1;
(* Heuristics applied. *)
assert true && eq discard_51 0@1;
assume eq discard_51 0 && true;
(*   %add21.3.1 = add i64 %add20.3.1, %add21.3 *)
adds discard_52 v_add21_3_1 v_add20_3_1 v_add21_3;
(* Heuristics applied. *)
assert true && eq discard_52 0@1;
assume eq discard_52 0 && true;
(*   %18 = xor i64 %add20.3.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v18 v_add20_3_1 (0x8000000000000000)@uint64;
(*   %xor2.i312.3.1 = and i64 %18, %add23.i.3.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_3_1 v18 v_add23_i_3_1;
(*   %xor.i303.3.1 = xor i64 %add21.3.1, %add20.3.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_3_1 v_add21_3_1 v_add20_3_1;
(*   %xor1.i304.3.1 = xor i64 %add20.3.1, %add21.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_3_1 v_add20_3_1 v_add21_3;
(*   %or.i305.3.1 = or i64 %xor.i303.3.1, %xor1.i304.3.1 *)
(* You may need to modify here *)
or uint64 v_or_i305_3_1 v_xor_i303_3_1 v_xor1_i304_3_1;
(*   %xor2.i306.3.1 = xor i64 %or.i305.3.1, %add21.3.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_3_1 v_or_i305_3_1 v_add21_3_1;
(*   %shr.i313328.3.1 = or i64 %xor2.i306.3.1, %xor2.i312.3.1 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_3_1 v_xor2_i306_3_1 v_xor2_i312_3_1;
(*   %or25327.3.1 = lshr i64 %shr.i313328.3.1, 63 *)
(* You may need to modify here *)
split v_or25327_3_1 tmp_to_be_used v_shr_i313328_3_1 63;
(* generated by python *)
assert true && limbs 64 [v_add21_3_1, v_or25327_3_1] = limbs 64 [v_shr_i319_3_1, 0@64] + limbs 64 [v_xor2569_i_3_1, 0@64] + limbs 64 [v_add21_3, 0@64];
assume limbs 64 [v_add21_3_1, v_or25327_3_1] = limbs 64 [v_shr_i319_3_1, 0] + limbs 64 [v_xor2569_i_3_1, 0] + limbs 64 [v_add21_3, 0] && true;
(*   %add27.3.1 = add nuw nsw i64 %or25327.3.1, %or25327.3 *)
adds discard_53 v_add27_3_1 v_or25327_3_1 v_or25327_3;
(* Heuristics applied. *)
assert true && eq discard_53 0@1;
assume eq discard_53 0 && true;
(*   %arrayidx9.3.2 = getelementptr inbounds i64, i64* %mc, i64 2 *)
(*   %19 = load i64, i64* %arrayidx9.3.2, align 8, !tbaa !3 *)
mov v19 mc_16;
(*   %20 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 1), align 8, !tbaa !3 *)
mov v20 p751p1_8;
(*   %and.i.3.2 = and i64 %19, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_3_2 v19 (0xFFFFFFFF)@uint64;
(*   %shr.i.3.2 = lshr i64 %19, 32 *)
(* You may need to modify here *)
split v_shr_i_3_2 tmp_to_be_used v19 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_3_2;
assume eq tmp_to_be_used v_and_i_3_2 && true;
(*   %and1.i.3.2 = and i64 %20, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_3_2 v20 (0xFFFFFFFF)@uint64;
(*   %shr2.i.3.2 = lshr i64 %20, 32 *)
(* You may need to modify here *)
split v_shr2_i_3_2 tmp_to_be_used v20 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_3_2;
assume eq tmp_to_be_used v_and1_i_3_2 && true;
(*   %mul.i.3.2 = mul nuw i64 %and1.i.3.2, %and.i.3.2 *)
mul v_mul_i_3_2 v_and1_i_3_2 v_and_i_3_2;
(*   %mul3.i.3.2 = mul nuw i64 %shr2.i.3.2, %and.i.3.2 *)
mul v_mul3_i_3_2 v_shr2_i_3_2 v_and_i_3_2;
(*   %mul4.i.3.2 = mul nuw i64 %and1.i.3.2, %shr.i.3.2 *)
mul v_mul4_i_3_2 v_and1_i_3_2 v_shr_i_3_2;
(*   %mul5.i.3.2 = mul nuw i64 %shr2.i.3.2, %shr.i.3.2 *)
mul v_mul5_i_3_2 v_shr2_i_3_2 v_shr_i_3_2;
(*   %and6.i.3.2 = and i64 %mul.i.3.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_3_2 v_mul_i_3_2 (0xFFFFFFFF)@uint64;
(*   %shr7.i.3.2 = lshr i64 %mul.i.3.2, 32 *)
(* You may need to modify here *)
split v_shr7_i_3_2 tmp_to_be_used v_mul_i_3_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_3_2;
assume eq tmp_to_be_used v_and6_i_3_2 && true;
(*   %and8.i.3.2 = and i64 %mul4.i.3.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_3_2 v_mul4_i_3_2 (0xFFFFFFFF)@uint64;
(*   %and9.i.3.2 = and i64 %mul3.i.3.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_3_2 v_mul3_i_3_2 (0xFFFFFFFF)@uint64;
(*   %add.i.3.2 = add nuw nsw i64 %shr7.i.3.2, %and8.i.3.2 *)
adds discard_54 v_add_i_3_2 v_shr7_i_3_2 v_and8_i_3_2;
(* Heuristics applied. *)
assert true && eq discard_54 0@1;
assume eq discard_54 0 && true;
(*   %add10.i.3.2 = add nuw nsw i64 %add.i.3.2, %and9.i.3.2 *)
adds discard_55 v_add10_i_3_2 v_add_i_3_2 v_and9_i_3_2;
(* Heuristics applied. *)
assert true && eq discard_55 0@1;
assume eq discard_55 0 && true;
(*   %shr11.i.3.2 = lshr i64 %add10.i.3.2, 32 *)
(* You may need to modify here *)
split v_shr11_i_3_2 tmp_to_be_used v_add10_i_3_2 32;
(*   %shl.i.3.2 = shl i64 %add10.i.3.2, 32 *)
shls discard_56 v_shl_i_3_2 v_add10_i_3_2 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_3_2 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_3_2 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.3.2 = or i64 %shl.i.3.2, %and6.i.3.2 *)
(* You may need to modify here *)
or uint64 v_xor68_i_3_2 v_shl_i_3_2 v_and6_i_3_2;
(* Heuristics applied. *)
assert true && eq v_xor68_i_3_2 v_shl_i_3_2 + v_and6_i_3_2;
assume eq v_xor68_i_3_2 v_shl_i_3_2 + v_and6_i_3_2 && true;
(*   %shr13.i.3.2 = lshr i64 %mul4.i.3.2, 32 *)
(* You may need to modify here *)
split v_shr13_i_3_2 tmp_to_be_used v_mul4_i_3_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_3_2;
assume eq tmp_to_be_used v_and8_i_3_2 && true;
(*   %shr14.i.3.2 = lshr i64 %mul3.i.3.2, 32 *)
(* You may need to modify here *)
split v_shr14_i_3_2 tmp_to_be_used v_mul3_i_3_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_3_2;
assume eq tmp_to_be_used v_and9_i_3_2 && true;
(*   %and15.i.3.2 = and i64 %mul5.i.3.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_3_2 v_mul5_i_3_2 (0xFFFFFFFF)@uint64;
(*   %add16.i.3.2 = add nuw nsw i64 %shr13.i.3.2, %shr14.i.3.2 *)
adds discard_57 v_add16_i_3_2 v_shr13_i_3_2 v_shr14_i_3_2;
(* Heuristics applied. *)
assert true && eq discard_57 0@1;
assume eq discard_57 0 && true;
(*   %add17.i.3.2 = add nuw nsw i64 %add16.i.3.2, %and15.i.3.2 *)
adds discard_58 v_add17_i_3_2 v_add16_i_3_2 v_and15_i_3_2;
(* Heuristics applied. *)
assert true && eq discard_58 0@1;
assume eq discard_58 0 && true;
(*   %add18.i.3.2 = add nuw nsw i64 %add17.i.3.2, %shr11.i.3.2 *)
adds discard_59 v_add18_i_3_2 v_add17_i_3_2 v_shr11_i_3_2;
(* Heuristics applied. *)
assert true && eq discard_59 0@1;
assume eq discard_59 0 && true;
(*   %and19.i.3.2 = and i64 %add18.i.3.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_3_2 v_add18_i_3_2 (0xFFFFFFFF)@uint64;
(*   %and21.i.3.2 = and i64 %add18.i.3.2, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_3_2 v_add18_i_3_2 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_3_2 v_and21_i_3_2 + v_and19_i_3_2;
assume eq v_add18_i_3_2 v_and21_i_3_2 + v_and19_i_3_2 && true;
(*   %and22.i.3.2 = and i64 %mul5.i.3.2, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_3_2 v_mul5_i_3_2 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_3_2 v_and22_i_3_2 + v_and15_i_3_2;
assume eq v_mul5_i_3_2 v_and22_i_3_2 + v_and15_i_3_2 && true;
(*   %add23.i.3.2 = add i64 %and21.i.3.2, %and22.i.3.2 *)
adds discard_60 v_add23_i_3_2 v_and21_i_3_2 v_and22_i_3_2;
(* Heuristics applied. *)
assert true && eq discard_60 0@1;
assume eq discard_60 0 && true;
(*   %xor2569.i.3.2 = or i64 %add23.i.3.2, %and19.i.3.2 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_3_2 v_add23_i_3_2 v_and19_i_3_2;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_3_2 v_add23_i_3_2 + v_and19_i_3_2;
assume eq v_xor2569_i_3_2 v_add23_i_3_2 + v_and19_i_3_2 && true;
(*   %add16.3.2 = add i64 %xor68.i.3.2, %add16.3.1 *)
adds discard_61 v_add16_3_2 v_xor68_i_3_2 v_add16_3_1;
(*   %xor.i315.3.2 = xor i64 %add16.3.2, %shl.i.3.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_3_2 v_add16_3_2 v_shl_i_3_2;
(*   %xor1.i316.3.2 = xor i64 %shl.i.3.2, %add16.3.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_3_2 v_shl_i_3_2 v_add16_3_1;
(*   %or.i317.3.2 = or i64 %xor.i315.3.2, %xor1.i316.3.2 *)
(* You may need to modify here *)
or uint64 v_or_i317_3_2 v_xor_i315_3_2 v_xor1_i316_3_2;
(*   %xor2.i318.3.2 = xor i64 %or.i317.3.2, %add16.3.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_3_2 v_or_i317_3_2 v_add16_3_2;
(*   %shr.i319.3.2 = lshr i64 %xor2.i318.3.2, 63 *)
(* You may need to modify here *)
split v_shr_i319_3_2 tmp_to_be_used v_xor2_i318_3_2 63;
(* generated by python *)
assert true && limbs 64 [v_add16_3_2, v_shr_i319_3_2] = limbs 64 [v_xor68_i_3_2, 0@64] + limbs 64 [v_add16_3_1, 0@64];
assume limbs 64 [v_add16_3_2, v_shr_i319_3_2] = limbs 64 [v_xor68_i_3_2, 0] + limbs 64 [v_add16_3_1, 0] && true;
(*   %add20.3.2 = add i64 %shr.i319.3.2, %xor2569.i.3.2 *)
adds discard_62 v_add20_3_2 v_shr_i319_3_2 v_xor2569_i_3_2;
(* Heuristics applied. *)
assert true && eq discard_62 0@1;
assume eq discard_62 0 && true;
(*   %add21.3.2 = add i64 %add20.3.2, %add21.3.1 *)
adds discard_63 v_add21_3_2 v_add20_3_2 v_add21_3_1;
(* Heuristics applied. *)
assert true && eq discard_63 0@1;
assume eq discard_63 0 && true;
(*   %21 = xor i64 %add20.3.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v21 v_add20_3_2 (0x8000000000000000)@uint64;
(*   %xor2.i312.3.2 = and i64 %21, %add23.i.3.2 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_3_2 v21 v_add23_i_3_2;
(*   %xor.i303.3.2 = xor i64 %add21.3.2, %add20.3.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_3_2 v_add21_3_2 v_add20_3_2;
(*   %xor1.i304.3.2 = xor i64 %add20.3.2, %add21.3.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_3_2 v_add20_3_2 v_add21_3_1;
(*   %or.i305.3.2 = or i64 %xor.i303.3.2, %xor1.i304.3.2 *)
(* You may need to modify here *)
or uint64 v_or_i305_3_2 v_xor_i303_3_2 v_xor1_i304_3_2;
(*   %xor2.i306.3.2 = xor i64 %or.i305.3.2, %add21.3.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_3_2 v_or_i305_3_2 v_add21_3_2;
(*   %shr.i313328.3.2 = or i64 %xor2.i306.3.2, %xor2.i312.3.2 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_3_2 v_xor2_i306_3_2 v_xor2_i312_3_2;
(*   %or25327.3.2 = lshr i64 %shr.i313328.3.2, 63 *)
(* You may need to modify here *)
split v_or25327_3_2 tmp_to_be_used v_shr_i313328_3_2 63;
(* generated by python *)
assert true && limbs 64 [v_add21_3_2, v_or25327_3_2] = limbs 64 [v_shr_i319_3_2, 0@64] + limbs 64 [v_xor2569_i_3_2, 0@64] + limbs 64 [v_add21_3_1, 0@64];
assume limbs 64 [v_add21_3_2, v_or25327_3_2] = limbs 64 [v_shr_i319_3_2, 0] + limbs 64 [v_xor2569_i_3_2, 0] + limbs 64 [v_add21_3_1, 0] && true;
(*   %add27.3.2 = add nsw i64 %or25327.3.2, %add27.3.1 *)
adds discard_64 v_add27_3_2 v_or25327_3_2 v_add27_3_1;
(* Heuristics applied. *)
assert true && eq discard_64 0@1;
assume eq discard_64 0 && true;
(*   %arrayidx34.3 = getelementptr inbounds i64, i64* %ma, i64 3 *)
(*   %22 = load i64, i64* %arrayidx34.3, align 8, !tbaa !3 *)
mov v22 ma_24;
(*   %add35.3 = add i64 %22, %add16.3.2 *)
adds discard_65 v_add35_3 v22 v_add16_3_2;
(*   %xor.i297.3 = xor i64 %add35.3, %add16.3.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i297_3 v_add35_3 v_add16_3_2;
(*   %xor1.i298.3 = xor i64 %22, %add16.3.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i298_3 v22 v_add16_3_2;
(*   %or.i299.3 = or i64 %xor.i297.3, %xor1.i298.3 *)
(* You may need to modify here *)
or uint64 v_or_i299_3 v_xor_i297_3 v_xor1_i298_3;
(*   %xor2.i300.3 = xor i64 %or.i299.3, %add35.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i300_3 v_or_i299_3 v_add35_3;
(*   %shr.i301.3 = lshr i64 %xor2.i300.3, 63 *)
(* You may need to modify here *)
split v_shr_i301_3 tmp_to_be_used v_xor2_i300_3 63;
(* generated by python *)
assert true && limbs 64 [v_add35_3, v_shr_i301_3] = limbs 64 [v22, 0@64] + limbs 64 [v_add16_3_2, 0@64];
assume limbs 64 [v_add35_3, v_shr_i301_3] = limbs 64 [v22, 0] + limbs 64 [v_add16_3_2, 0] && true;
(*   %add41.3 = add i64 %shr.i301.3, %add21.3.2 *)
adds discard_66 v_add41_3 v_shr_i301_3 v_add21_3_2;
(* Heuristics applied. *)
assert true && eq discard_66 0@1;
assume eq discard_66 0 && true;
(*   %23 = xor i64 %add41.3, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v23 v_add41_3 (0x8000000000000000)@uint64;
(*   %xor2.i294.3 = and i64 %23, %add21.3.2 *)
(* You may need to modify here *)
and uint64 v_xor2_i294_3 v23 v_add21_3_2;
(*   %shr.i295.3 = lshr i64 %xor2.i294.3, 63 *)
(* You may need to modify here *)
split v_shr_i295_3 tmp_to_be_used v_xor2_i294_3 63;
(* generated by python *)
assert true && limbs 64 [v_add41_3, v_shr_i295_3] = limbs 64 [v_shr_i301_3, 0@64] + limbs 64 [v_add21_3_2, 0@64];
assume limbs 64 [v_add41_3, v_shr_i295_3] = limbs 64 [v_shr_i301_3, 0] + limbs 64 [v_add21_3_2, 0] && true;
(*   %add48.3 = add nsw i64 %shr.i295.3, %add27.3.2 *)
adds discard_67 v_add48_3 v_shr_i295_3 v_add27_3_2;
(* Heuristics applied. *)
assert true && eq discard_67 0@1;
assume eq discard_67 0 && true;
(*   %arrayidx50.3 = getelementptr inbounds i64, i64* %mc, i64 3 *)
(*   store i64 %add35.3, i64* %arrayidx50.3, align 8, !tbaa !3 *)
mov mc_24 v_add35_3;
(*   %arrayidx34.4 = getelementptr inbounds i64, i64* %ma, i64 4 *)
(*   %24 = load i64, i64* %arrayidx34.4, align 8, !tbaa !3 *)
mov v24 ma_32;
(*   %add35.4 = add i64 %24, %add41.3 *)
adds discard_68 v_add35_4 v24 v_add41_3;
(*   %xor.i297.4 = xor i64 %add35.4, %add41.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i297_4 v_add35_4 v_add41_3;
(*   %xor1.i298.4 = xor i64 %24, %add41.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i298_4 v24 v_add41_3;
(*   %or.i299.4 = or i64 %xor.i297.4, %xor1.i298.4 *)
(* You may need to modify here *)
or uint64 v_or_i299_4 v_xor_i297_4 v_xor1_i298_4;
(*   %xor2.i300.4 = xor i64 %or.i299.4, %add35.4 *)
(* You may need to modify here *)
xor uint64 v_xor2_i300_4 v_or_i299_4 v_add35_4;
(*   %shr.i301.4 = lshr i64 %xor2.i300.4, 63 *)
(* You may need to modify here *)
split v_shr_i301_4 tmp_to_be_used v_xor2_i300_4 63;
(* generated by python *)
assert true && limbs 64 [v_add35_4, v_shr_i301_4] = limbs 64 [v24, 0@64] + limbs 64 [v_add41_3, 0@64];
assume limbs 64 [v_add35_4, v_shr_i301_4] = limbs 64 [v24, 0] + limbs 64 [v_add41_3, 0] && true;
(*   %add41.4 = add i64 %shr.i301.4, %add48.3 *)
adds discard_69 v_add41_4 v_shr_i301_4 v_add48_3;
(* Heuristics applied. *)
assert true && eq discard_69 0@1;
assume eq discard_69 0 && true;
(*   %arrayidx50.4 = getelementptr inbounds i64, i64* %mc, i64 4 *)
(*   store i64 %add35.4, i64* %arrayidx50.4, align 8, !tbaa !3 *)
mov mc_32 v_add35_4;
(*   %25 = xor i64 %add41.4, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v25 v_add41_4 (0x8000000000000000)@uint64;
(*   %xor2.i294.4 = and i64 %25, %add48.3 *)
(* You may need to modify here *)
and uint64 v_xor2_i294_4 v25 v_add48_3;
(*   %shr.i295.4 = lshr i64 %xor2.i294.4, 63 *)
(* You may need to modify here *)
split v_shr_i295_4 tmp_to_be_used v_xor2_i294_4 63;
(* generated by python *)
assert true && limbs 64 [v_add41_4, v_shr_i295_4] = limbs 64 [v_shr_i301_4, 0@64] + limbs 64 [v_add48_3, 0@64];
assume limbs 64 [v_add41_4, v_shr_i295_4] = limbs 64 [v_shr_i301_4, 0] + limbs 64 [v_add48_3, 0] && true;
(*   %26 = load i64, i64* %mc, align 8, !tbaa !3 *)
mov v26 mc_0;
(*   %27 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 5), align 8, !tbaa !3 *)
mov v27 p751p1_40;
(*   %and.i.5 = and i64 %26, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_5 v26 (0xFFFFFFFF)@uint64;
(*   %shr.i.5 = lshr i64 %26, 32 *)
(* You may need to modify here *)
split v_shr_i_5 tmp_to_be_used v26 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_5;
assume eq tmp_to_be_used v_and_i_5 && true;
(*   %and1.i.5 = and i64 %27, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_5 v27 (0xFFFFFFFF)@uint64;
(*   %shr2.i.5 = lshr i64 %27, 32 *)
(* You may need to modify here *)
split v_shr2_i_5 tmp_to_be_used v27 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_5;
assume eq tmp_to_be_used v_and1_i_5 && true;
(*   %mul.i.5 = mul nuw i64 %and1.i.5, %and.i.5 *)
mul v_mul_i_5 v_and1_i_5 v_and_i_5;
(*   %mul3.i.5 = mul nuw i64 %shr2.i.5, %and.i.5 *)
mul v_mul3_i_5 v_shr2_i_5 v_and_i_5;
(*   %mul4.i.5 = mul nuw i64 %and1.i.5, %shr.i.5 *)
mul v_mul4_i_5 v_and1_i_5 v_shr_i_5;
(*   %mul5.i.5 = mul nuw i64 %shr2.i.5, %shr.i.5 *)
mul v_mul5_i_5 v_shr2_i_5 v_shr_i_5;
(*   %and6.i.5 = and i64 %mul.i.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_5 v_mul_i_5 (0xFFFFFFFF)@uint64;
(*   %shr7.i.5 = lshr i64 %mul.i.5, 32 *)
(* You may need to modify here *)
split v_shr7_i_5 tmp_to_be_used v_mul_i_5 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_5;
assume eq tmp_to_be_used v_and6_i_5 && true;
(*   %and8.i.5 = and i64 %mul4.i.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_5 v_mul4_i_5 (0xFFFFFFFF)@uint64;
(*   %and9.i.5 = and i64 %mul3.i.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_5 v_mul3_i_5 (0xFFFFFFFF)@uint64;
(*   %add.i.5 = add nuw nsw i64 %shr7.i.5, %and8.i.5 *)
adds discard_70 v_add_i_5 v_shr7_i_5 v_and8_i_5;
(* Heuristics applied. *)
assert true && eq discard_70 0@1;
assume eq discard_70 0 && true;
(*   %add10.i.5 = add nuw nsw i64 %add.i.5, %and9.i.5 *)
adds discard_71 v_add10_i_5 v_add_i_5 v_and9_i_5;
(* Heuristics applied. *)
assert true && eq discard_71 0@1;
assume eq discard_71 0 && true;
(*   %shr11.i.5 = lshr i64 %add10.i.5, 32 *)
(* You may need to modify here *)
split v_shr11_i_5 tmp_to_be_used v_add10_i_5 32;
(*   %shl.i.5 = shl i64 %add10.i.5, 32 *)
shls discard_72 v_shl_i_5 v_add10_i_5 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_5 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_5 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.5 = or i64 %shl.i.5, %and6.i.5 *)
(* You may need to modify here *)
or uint64 v_xor68_i_5 v_shl_i_5 v_and6_i_5;
(* Heuristics applied. *)
assert true && eq v_xor68_i_5 v_shl_i_5 + v_and6_i_5;
assume eq v_xor68_i_5 v_shl_i_5 + v_and6_i_5 && true;
(*   %shr13.i.5 = lshr i64 %mul4.i.5, 32 *)
(* You may need to modify here *)
split v_shr13_i_5 tmp_to_be_used v_mul4_i_5 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_5;
assume eq tmp_to_be_used v_and8_i_5 && true;
(*   %shr14.i.5 = lshr i64 %mul3.i.5, 32 *)
(* You may need to modify here *)
split v_shr14_i_5 tmp_to_be_used v_mul3_i_5 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_5;
assume eq tmp_to_be_used v_and9_i_5 && true;
(*   %and15.i.5 = and i64 %mul5.i.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_5 v_mul5_i_5 (0xFFFFFFFF)@uint64;
(*   %add16.i.5 = add nuw nsw i64 %shr13.i.5, %shr14.i.5 *)
adds discard_73 v_add16_i_5 v_shr13_i_5 v_shr14_i_5;
(* Heuristics applied. *)
assert true && eq discard_73 0@1;
assume eq discard_73 0 && true;
(*   %add17.i.5 = add nuw nsw i64 %add16.i.5, %and15.i.5 *)
adds discard_74 v_add17_i_5 v_add16_i_5 v_and15_i_5;
(* Heuristics applied. *)
assert true && eq discard_74 0@1;
assume eq discard_74 0 && true;
(*   %add18.i.5 = add nuw nsw i64 %add17.i.5, %shr11.i.5 *)
adds discard_75 v_add18_i_5 v_add17_i_5 v_shr11_i_5;
(* Heuristics applied. *)
assert true && eq discard_75 0@1;
assume eq discard_75 0 && true;
(*   %and19.i.5 = and i64 %add18.i.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_5 v_add18_i_5 (0xFFFFFFFF)@uint64;
(*   %and21.i.5 = and i64 %add18.i.5, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_5 v_add18_i_5 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_5 v_and21_i_5 + v_and19_i_5;
assume eq v_add18_i_5 v_and21_i_5 + v_and19_i_5 && true;
(*   %and22.i.5 = and i64 %mul5.i.5, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_5 v_mul5_i_5 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_5 v_and22_i_5 + v_and15_i_5;
assume eq v_mul5_i_5 v_and22_i_5 + v_and15_i_5 && true;
(*   %add23.i.5 = add i64 %and21.i.5, %and22.i.5 *)
adds discard_76 v_add23_i_5 v_and21_i_5 v_and22_i_5;
(* Heuristics applied. *)
assert true && eq discard_76 0@1;
assume eq discard_76 0 && true;
(*   %xor2569.i.5 = or i64 %add23.i.5, %and19.i.5 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_5 v_add23_i_5 v_and19_i_5;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_5 v_add23_i_5 + v_and19_i_5;
assume eq v_xor2569_i_5 v_add23_i_5 + v_and19_i_5 && true;
(*   %add16.5 = add i64 %xor68.i.5, %add41.4 *)
adds discard_77 v_add16_5 v_xor68_i_5 v_add41_4;
(*   %xor.i315.5 = xor i64 %add16.5, %shl.i.5 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_5 v_add16_5 v_shl_i_5;
(*   %xor1.i316.5 = xor i64 %shl.i.5, %add41.4 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_5 v_shl_i_5 v_add41_4;
(*   %or.i317.5 = or i64 %xor.i315.5, %xor1.i316.5 *)
(* You may need to modify here *)
or uint64 v_or_i317_5 v_xor_i315_5 v_xor1_i316_5;
(*   %xor2.i318.5 = xor i64 %or.i317.5, %add16.5 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_5 v_or_i317_5 v_add16_5;
(*   %shr.i319.5 = lshr i64 %xor2.i318.5, 63 *)
(* You may need to modify here *)
split v_shr_i319_5 tmp_to_be_used v_xor2_i318_5 63;
(* generated by python *)
assert true && limbs 64 [v_add16_5, v_shr_i319_5] = limbs 64 [v_xor68_i_5, 0@64] + limbs 64 [v_add41_4, 0@64];
assume limbs 64 [v_add16_5, v_shr_i319_5] = limbs 64 [v_xor68_i_5, 0] + limbs 64 [v_add41_4, 0] && true;
(*   %add20.5 = add i64 %shr.i319.5, %xor2569.i.5 *)
adds discard_78 v_add20_5 v_shr_i319_5 v_xor2569_i_5;
(* Heuristics applied. *)
assert true && eq discard_78 0@1;
assume eq discard_78 0 && true;
(*   %add21.5 = add i64 %add20.5, %shr.i295.4 *)
adds discard_79 v_add21_5 v_add20_5 v_shr_i295_4;
(* Heuristics applied. *)
assert true && eq discard_79 0@1;
assume eq discard_79 0 && true;
(*   %28 = xor i64 %add20.5, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v28 v_add20_5 (0x8000000000000000)@uint64;
(*   %xor2.i312.5 = and i64 %28, %add23.i.5 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_5 v28 v_add23_i_5;
(*   %29 = xor i64 %add21.5, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v29 v_add21_5 (0x8000000000000000)@uint64;
(*   %xor2.i306.5 = and i64 %add20.5, %29 *)
(* You may need to modify here *)
and uint64 v_xor2_i306_5 v_add20_5 v29;
(*   %shr.i313328.5 = or i64 %xor2.i306.5, %xor2.i312.5 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_5 v_xor2_i306_5 v_xor2_i312_5;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq v_shr_i313328_5 v_xor2_i306_5 + v_xor2_i312_5; *)
(* assume eq v_shr_i313328_5 v_xor2_i306_5 + v_xor2_i312_5 && true; *)
(*   %or25327.5 = lshr i64 %shr.i313328.5, 63 *)
(* You may need to modify here *)
split v_or25327_5 tmp_to_be_used v_shr_i313328_5 63;
(* generated by python *)
assert true && limbs 64 [v_add21_5, v_or25327_5] = limbs 64 [v_shr_i319_5, 0@64] + limbs 64 [v_xor2569_i_5, 0@64] + limbs 64 [v_shr_i295_4, 0@64];
assume limbs 64 [v_add21_5, v_or25327_5] = limbs 64 [v_shr_i319_5, 0] + limbs 64 [v_xor2569_i_5, 0] + limbs 64 [v_shr_i295_4, 0] && true;
(*   %arrayidx34.5 = getelementptr inbounds i64, i64* %ma, i64 5 *)
(*   %30 = load i64, i64* %arrayidx34.5, align 8, !tbaa !3 *)
mov v30 ma_40;
(*   %add35.5 = add i64 %30, %add16.5 *)
adds discard_80 v_add35_5 v30 v_add16_5;
(*   %xor.i297.5 = xor i64 %add35.5, %add16.5 *)
(* You may need to modify here *)
xor uint64 v_xor_i297_5 v_add35_5 v_add16_5;
(*   %xor1.i298.5 = xor i64 %30, %add16.5 *)
(* You may need to modify here *)
xor uint64 v_xor1_i298_5 v30 v_add16_5;
(*   %or.i299.5 = or i64 %xor.i297.5, %xor1.i298.5 *)
(* You may need to modify here *)
or uint64 v_or_i299_5 v_xor_i297_5 v_xor1_i298_5;
(*   %xor2.i300.5 = xor i64 %or.i299.5, %add35.5 *)
(* You may need to modify here *)
xor uint64 v_xor2_i300_5 v_or_i299_5 v_add35_5;
(*   %shr.i301.5 = lshr i64 %xor2.i300.5, 63 *)
(* You may need to modify here *)
split v_shr_i301_5 tmp_to_be_used v_xor2_i300_5 63;
(* generated by python *)
assert true && limbs 64 [v_add35_5, v_shr_i301_5] = limbs 64 [v30, 0@64] + limbs 64 [v_add16_5, 0@64];
assume limbs 64 [v_add35_5, v_shr_i301_5] = limbs 64 [v30, 0] + limbs 64 [v_add16_5, 0] && true;
(*   %add41.5 = add i64 %shr.i301.5, %add21.5 *)
adds discard_81 v_add41_5 v_shr_i301_5 v_add21_5;
(* Heuristics applied. *)
assert true && eq discard_81 0@1;
assume eq discard_81 0 && true;
(*   %arrayidx50.5 = getelementptr inbounds i64, i64* %mc, i64 5 *)
(*   store i64 %add35.5, i64* %arrayidx50.5, align 8, !tbaa !3 *)
mov mc_40 v_add35_5;
(*   %31 = xor i64 %add41.5, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v31 v_add41_5 (0x8000000000000000)@uint64;
(*   %xor2.i294.5 = and i64 %31, %add21.5 *)
(* You may need to modify here *)
and uint64 v_xor2_i294_5 v31 v_add21_5;
(*   %shr.i295.5 = lshr i64 %xor2.i294.5, 63 *)
(* You may need to modify here *)
split v_shr_i295_5 tmp_to_be_used v_xor2_i294_5 63;
(* generated by python *)
assert true && limbs 64 [v_add41_5, v_shr_i295_5] = limbs 64 [v_shr_i301_5, 0@64] + limbs 64 [v_add21_5, 0@64];
assume limbs 64 [v_add41_5, v_shr_i295_5] = limbs 64 [v_shr_i301_5, 0] + limbs 64 [v_add21_5, 0] && true;
(*   %add48.5 = add nuw nsw i64 %shr.i295.5, %or25327.5 *)
adds discard_82 v_add48_5 v_shr_i295_5 v_or25327_5;
(* Heuristics applied. *)
assert true && eq discard_82 0@1;
assume eq discard_82 0 && true;
(*   %32 = load i64, i64* %mc, align 8, !tbaa !3 *)
mov v32 mc_0;
(*   %33 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 6), align 16, !tbaa !3 *)
mov v33 p751p1_48;
(*   %and.i.6 = and i64 %32, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_6 v32 (0xFFFFFFFF)@uint64;
(*   %shr.i.6 = lshr i64 %32, 32 *)
(* You may need to modify here *)
split v_shr_i_6 tmp_to_be_used v32 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_6;
assume eq tmp_to_be_used v_and_i_6 && true;
(*   %and1.i.6 = and i64 %33, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_6 v33 (0xFFFFFFFF)@uint64;
(*   %shr2.i.6 = lshr i64 %33, 32 *)
(* You may need to modify here *)
split v_shr2_i_6 tmp_to_be_used v33 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_6;
assume eq tmp_to_be_used v_and1_i_6 && true;
(*   %mul.i.6 = mul nuw i64 %and1.i.6, %and.i.6 *)
mul v_mul_i_6 v_and1_i_6 v_and_i_6;
(*   %mul3.i.6 = mul nuw i64 %shr2.i.6, %and.i.6 *)
mul v_mul3_i_6 v_shr2_i_6 v_and_i_6;
(*   %mul4.i.6 = mul nuw i64 %and1.i.6, %shr.i.6 *)
mul v_mul4_i_6 v_and1_i_6 v_shr_i_6;
(*   %mul5.i.6 = mul nuw i64 %shr2.i.6, %shr.i.6 *)
mul v_mul5_i_6 v_shr2_i_6 v_shr_i_6;
(*   %and6.i.6 = and i64 %mul.i.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_6 v_mul_i_6 (0xFFFFFFFF)@uint64;
(*   %shr7.i.6 = lshr i64 %mul.i.6, 32 *)
(* You may need to modify here *)
split v_shr7_i_6 tmp_to_be_used v_mul_i_6 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_6;
assume eq tmp_to_be_used v_and6_i_6 && true;
(*   %and8.i.6 = and i64 %mul4.i.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_6 v_mul4_i_6 (0xFFFFFFFF)@uint64;
(*   %and9.i.6 = and i64 %mul3.i.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_6 v_mul3_i_6 (0xFFFFFFFF)@uint64;
(*   %add.i.6 = add nuw nsw i64 %shr7.i.6, %and8.i.6 *)
adds discard_83 v_add_i_6 v_shr7_i_6 v_and8_i_6;
(* Heuristics applied. *)
assert true && eq discard_83 0@1;
assume eq discard_83 0 && true;
(*   %add10.i.6 = add nuw nsw i64 %add.i.6, %and9.i.6 *)
adds discard_84 v_add10_i_6 v_add_i_6 v_and9_i_6;
(* Heuristics applied. *)
assert true && eq discard_84 0@1;
assume eq discard_84 0 && true;
(*   %shr11.i.6 = lshr i64 %add10.i.6, 32 *)
(* You may need to modify here *)
split v_shr11_i_6 tmp_to_be_used v_add10_i_6 32;
(*   %shl.i.6 = shl i64 %add10.i.6, 32 *)
shls discard_85 v_shl_i_6 v_add10_i_6 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_6 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_6 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.6 = or i64 %shl.i.6, %and6.i.6 *)
(* You may need to modify here *)
or uint64 v_xor68_i_6 v_shl_i_6 v_and6_i_6;
(* Heuristics applied. *)
assert true && eq v_xor68_i_6 v_shl_i_6 + v_and6_i_6;
assume eq v_xor68_i_6 v_shl_i_6 + v_and6_i_6 && true;
(*   %shr13.i.6 = lshr i64 %mul4.i.6, 32 *)
(* You may need to modify here *)
split v_shr13_i_6 tmp_to_be_used v_mul4_i_6 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_6;
assume eq tmp_to_be_used v_and8_i_6 && true;
(*   %shr14.i.6 = lshr i64 %mul3.i.6, 32 *)
(* You may need to modify here *)
split v_shr14_i_6 tmp_to_be_used v_mul3_i_6 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_6;
assume eq tmp_to_be_used v_and9_i_6 && true;
(*   %and15.i.6 = and i64 %mul5.i.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_6 v_mul5_i_6 (0xFFFFFFFF)@uint64;
(*   %add16.i.6 = add nuw nsw i64 %shr13.i.6, %shr14.i.6 *)
adds discard_86 v_add16_i_6 v_shr13_i_6 v_shr14_i_6;
(* Heuristics applied. *)
assert true && eq discard_86 0@1;
assume eq discard_86 0 && true;
(*   %add17.i.6 = add nuw nsw i64 %add16.i.6, %and15.i.6 *)
adds discard_87 v_add17_i_6 v_add16_i_6 v_and15_i_6;
(* Heuristics applied. *)
assert true && eq discard_87 0@1;
assume eq discard_87 0 && true;
(*   %add18.i.6 = add nuw nsw i64 %add17.i.6, %shr11.i.6 *)
adds discard_88 v_add18_i_6 v_add17_i_6 v_shr11_i_6;
(* Heuristics applied. *)
assert true && eq discard_88 0@1;
assume eq discard_88 0 && true;
(*   %and19.i.6 = and i64 %add18.i.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_6 v_add18_i_6 (0xFFFFFFFF)@uint64;
(*   %and21.i.6 = and i64 %add18.i.6, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_6 v_add18_i_6 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_6 v_and21_i_6 + v_and19_i_6;
assume eq v_add18_i_6 v_and21_i_6 + v_and19_i_6 && true;
(*   %and22.i.6 = and i64 %mul5.i.6, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_6 v_mul5_i_6 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_6 v_and22_i_6 + v_and15_i_6;
assume eq v_mul5_i_6 v_and22_i_6 + v_and15_i_6 && true;
(*   %add23.i.6 = add i64 %and21.i.6, %and22.i.6 *)
adds discard_89 v_add23_i_6 v_and21_i_6 v_and22_i_6;
(* Heuristics applied. *)
assert true && eq discard_89 0@1;
assume eq discard_89 0 && true;
(*   %xor2569.i.6 = or i64 %add23.i.6, %and19.i.6 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_6 v_add23_i_6 v_and19_i_6;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_6 v_add23_i_6 + v_and19_i_6;
assume eq v_xor2569_i_6 v_add23_i_6 + v_and19_i_6 && true;
(*   %add16.6 = add i64 %xor68.i.6, %add41.5 *)
adds discard_90 v_add16_6 v_xor68_i_6 v_add41_5;
(*   %xor.i315.6 = xor i64 %add16.6, %shl.i.6 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_6 v_add16_6 v_shl_i_6;
(*   %xor1.i316.6 = xor i64 %shl.i.6, %add41.5 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_6 v_shl_i_6 v_add41_5;
(*   %or.i317.6 = or i64 %xor.i315.6, %xor1.i316.6 *)
(* You may need to modify here *)
or uint64 v_or_i317_6 v_xor_i315_6 v_xor1_i316_6;
(*   %xor2.i318.6 = xor i64 %or.i317.6, %add16.6 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_6 v_or_i317_6 v_add16_6;
(*   %shr.i319.6 = lshr i64 %xor2.i318.6, 63 *)
(* You may need to modify here *)
split v_shr_i319_6 tmp_to_be_used v_xor2_i318_6 63;
(* generated by python *)
assert true && limbs 64 [v_add16_6, v_shr_i319_6] = limbs 64 [v_xor68_i_6, 0@64] + limbs 64 [v_add41_5, 0@64];
assume limbs 64 [v_add16_6, v_shr_i319_6] = limbs 64 [v_xor68_i_6, 0] + limbs 64 [v_add41_5, 0] && true;
(*   %add20.6 = add i64 %shr.i319.6, %xor2569.i.6 *)
adds discard_91 v_add20_6 v_shr_i319_6 v_xor2569_i_6;
(* Heuristics applied. *)
assert true && eq discard_91 0@1;
assume eq discard_91 0 && true;
(*   %add21.6 = add i64 %add20.6, %add48.5 *)
adds discard_92 v_add21_6 v_add20_6 v_add48_5;
(* Heuristics applied. *)
assert true && eq discard_92 0@1;
assume eq discard_92 0 && true;
(*   %34 = xor i64 %add20.6, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v34 v_add20_6 (0x8000000000000000)@uint64;
(*   %xor2.i312.6 = and i64 %34, %add23.i.6 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_6 v34 v_add23_i_6;
(*   %xor.i303.6 = xor i64 %add21.6, %add20.6 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_6 v_add21_6 v_add20_6;
(*   %xor1.i304.6 = xor i64 %add20.6, %add48.5 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_6 v_add20_6 v_add48_5;
(*   %or.i305.6 = or i64 %xor.i303.6, %xor1.i304.6 *)
(* You may need to modify here *)
or uint64 v_or_i305_6 v_xor_i303_6 v_xor1_i304_6;
(*   %xor2.i306.6 = xor i64 %or.i305.6, %add21.6 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_6 v_or_i305_6 v_add21_6;
(*   %shr.i313328.6 = or i64 %xor2.i306.6, %xor2.i312.6 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_6 v_xor2_i306_6 v_xor2_i312_6;
(*   %or25327.6 = lshr i64 %shr.i313328.6, 63 *)
(* You may need to modify here *)
split v_or25327_6 tmp_to_be_used v_shr_i313328_6 63;
(* generated by python *)
assert true && limbs 64 [v_add21_6, v_or25327_6] = limbs 64 [v_shr_i319_6, 0@64] + limbs 64 [v_xor2569_i_6, 0@64] + limbs 64 [v_add48_5, 0@64];
assume limbs 64 [v_add21_6, v_or25327_6] = limbs 64 [v_shr_i319_6, 0] + limbs 64 [v_xor2569_i_6, 0] + limbs 64 [v_add48_5, 0] && true;
(*   %arrayidx9.6.1 = getelementptr inbounds i64, i64* %mc, i64 1 *)
(*   %35 = load i64, i64* %arrayidx9.6.1, align 8, !tbaa !3 *)
mov v35 mc_8;
(*   %36 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 5), align 8, !tbaa !3 *)
mov v36 p751p1_40;
(*   %and.i.6.1 = and i64 %35, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_6_1 v35 (0xFFFFFFFF)@uint64;
(*   %shr.i.6.1 = lshr i64 %35, 32 *)
(* You may need to modify here *)
split v_shr_i_6_1 tmp_to_be_used v35 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_6_1;
assume eq tmp_to_be_used v_and_i_6_1 && true;
(*   %and1.i.6.1 = and i64 %36, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_6_1 v36 (0xFFFFFFFF)@uint64;
(*   %shr2.i.6.1 = lshr i64 %36, 32 *)
(* You may need to modify here *)
split v_shr2_i_6_1 tmp_to_be_used v36 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_6_1;
assume eq tmp_to_be_used v_and1_i_6_1 && true;
(*   %mul.i.6.1 = mul nuw i64 %and1.i.6.1, %and.i.6.1 *)
mul v_mul_i_6_1 v_and1_i_6_1 v_and_i_6_1;
(*   %mul3.i.6.1 = mul nuw i64 %shr2.i.6.1, %and.i.6.1 *)
mul v_mul3_i_6_1 v_shr2_i_6_1 v_and_i_6_1;
(*   %mul4.i.6.1 = mul nuw i64 %and1.i.6.1, %shr.i.6.1 *)
mul v_mul4_i_6_1 v_and1_i_6_1 v_shr_i_6_1;
(*   %mul5.i.6.1 = mul nuw i64 %shr2.i.6.1, %shr.i.6.1 *)
mul v_mul5_i_6_1 v_shr2_i_6_1 v_shr_i_6_1;
(*   %and6.i.6.1 = and i64 %mul.i.6.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_6_1 v_mul_i_6_1 (0xFFFFFFFF)@uint64;
(*   %shr7.i.6.1 = lshr i64 %mul.i.6.1, 32 *)
(* You may need to modify here *)
split v_shr7_i_6_1 tmp_to_be_used v_mul_i_6_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_6_1;
assume eq tmp_to_be_used v_and6_i_6_1 && true;
(*   %and8.i.6.1 = and i64 %mul4.i.6.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_6_1 v_mul4_i_6_1 (0xFFFFFFFF)@uint64;
(*   %and9.i.6.1 = and i64 %mul3.i.6.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_6_1 v_mul3_i_6_1 (0xFFFFFFFF)@uint64;
(*   %add.i.6.1 = add nuw nsw i64 %shr7.i.6.1, %and8.i.6.1 *)
adds discard_93 v_add_i_6_1 v_shr7_i_6_1 v_and8_i_6_1;
(* Heuristics applied. *)
assert true && eq discard_93 0@1;
assume eq discard_93 0 && true;
(*   %add10.i.6.1 = add nuw nsw i64 %add.i.6.1, %and9.i.6.1 *)
adds discard_94 v_add10_i_6_1 v_add_i_6_1 v_and9_i_6_1;
(* Heuristics applied. *)
assert true && eq discard_94 0@1;
assume eq discard_94 0 && true;
(*   %shr11.i.6.1 = lshr i64 %add10.i.6.1, 32 *)
(* You may need to modify here *)
split v_shr11_i_6_1 tmp_to_be_used v_add10_i_6_1 32;
(*   %shl.i.6.1 = shl i64 %add10.i.6.1, 32 *)
shls discard_95 v_shl_i_6_1 v_add10_i_6_1 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_6_1 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_6_1 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.6.1 = or i64 %shl.i.6.1, %and6.i.6.1 *)
(* You may need to modify here *)
or uint64 v_xor68_i_6_1 v_shl_i_6_1 v_and6_i_6_1;
(* Heuristics applied. *)
assert true && eq v_xor68_i_6_1 v_shl_i_6_1 + v_and6_i_6_1;
assume eq v_xor68_i_6_1 v_shl_i_6_1 + v_and6_i_6_1 && true;
(*   %shr13.i.6.1 = lshr i64 %mul4.i.6.1, 32 *)
(* You may need to modify here *)
split v_shr13_i_6_1 tmp_to_be_used v_mul4_i_6_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_6_1;
assume eq tmp_to_be_used v_and8_i_6_1 && true;
(*   %shr14.i.6.1 = lshr i64 %mul3.i.6.1, 32 *)
(* You may need to modify here *)
split v_shr14_i_6_1 tmp_to_be_used v_mul3_i_6_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_6_1;
assume eq tmp_to_be_used v_and9_i_6_1 && true;
(*   %and15.i.6.1 = and i64 %mul5.i.6.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_6_1 v_mul5_i_6_1 (0xFFFFFFFF)@uint64;
(*   %add16.i.6.1 = add nuw nsw i64 %shr13.i.6.1, %shr14.i.6.1 *)
adds discard_96 v_add16_i_6_1 v_shr13_i_6_1 v_shr14_i_6_1;
(* Heuristics applied. *)
assert true && eq discard_96 0@1;
assume eq discard_96 0 && true;
(*   %add17.i.6.1 = add nuw nsw i64 %add16.i.6.1, %and15.i.6.1 *)
adds discard_97 v_add17_i_6_1 v_add16_i_6_1 v_and15_i_6_1;
(* Heuristics applied. *)
assert true && eq discard_97 0@1;
assume eq discard_97 0 && true;
(*   %add18.i.6.1 = add nuw nsw i64 %add17.i.6.1, %shr11.i.6.1 *)
adds discard_98 v_add18_i_6_1 v_add17_i_6_1 v_shr11_i_6_1;
(* Heuristics applied. *)
assert true && eq discard_98 0@1;
assume eq discard_98 0 && true;
(*   %and19.i.6.1 = and i64 %add18.i.6.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_6_1 v_add18_i_6_1 (0xFFFFFFFF)@uint64;
(*   %and21.i.6.1 = and i64 %add18.i.6.1, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_6_1 v_add18_i_6_1 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_6_1 v_and21_i_6_1 + v_and19_i_6_1;
assume eq v_add18_i_6_1 v_and21_i_6_1 + v_and19_i_6_1 && true;
(*   %and22.i.6.1 = and i64 %mul5.i.6.1, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_6_1 v_mul5_i_6_1 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_6_1 v_and22_i_6_1 + v_and15_i_6_1;
assume eq v_mul5_i_6_1 v_and22_i_6_1 + v_and15_i_6_1 && true;
(*   %add23.i.6.1 = add i64 %and21.i.6.1, %and22.i.6.1 *)
adds discard_99 v_add23_i_6_1 v_and21_i_6_1 v_and22_i_6_1;
(* Heuristics applied. *)
assert true && eq discard_99 0@1;
assume eq discard_99 0 && true;
(*   %xor2569.i.6.1 = or i64 %add23.i.6.1, %and19.i.6.1 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_6_1 v_add23_i_6_1 v_and19_i_6_1;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_6_1 v_add23_i_6_1 + v_and19_i_6_1;
assume eq v_xor2569_i_6_1 v_add23_i_6_1 + v_and19_i_6_1 && true;
(*   %add16.6.1 = add i64 %xor68.i.6.1, %add16.6 *)
adds discard_100 v_add16_6_1 v_xor68_i_6_1 v_add16_6;
(*   %xor.i315.6.1 = xor i64 %add16.6.1, %shl.i.6.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_6_1 v_add16_6_1 v_shl_i_6_1;
(*   %xor1.i316.6.1 = xor i64 %shl.i.6.1, %add16.6 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_6_1 v_shl_i_6_1 v_add16_6;
(*   %or.i317.6.1 = or i64 %xor.i315.6.1, %xor1.i316.6.1 *)
(* You may need to modify here *)
or uint64 v_or_i317_6_1 v_xor_i315_6_1 v_xor1_i316_6_1;
(*   %xor2.i318.6.1 = xor i64 %or.i317.6.1, %add16.6.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_6_1 v_or_i317_6_1 v_add16_6_1;
(*   %shr.i319.6.1 = lshr i64 %xor2.i318.6.1, 63 *)
(* You may need to modify here *)
split v_shr_i319_6_1 tmp_to_be_used v_xor2_i318_6_1 63;
(* generated by python *)
assert true && limbs 64 [v_add16_6_1, v_shr_i319_6_1] = limbs 64 [v_xor68_i_6_1, 0@64] + limbs 64 [v_add16_6, 0@64];
assume limbs 64 [v_add16_6_1, v_shr_i319_6_1] = limbs 64 [v_xor68_i_6_1, 0] + limbs 64 [v_add16_6, 0] && true;
(*   %add20.6.1 = add i64 %shr.i319.6.1, %xor2569.i.6.1 *)
adds discard_101 v_add20_6_1 v_shr_i319_6_1 v_xor2569_i_6_1;
(* Heuristics applied. *)
assert true && eq discard_101 0@1;
assume eq discard_101 0 && true;
(*   %add21.6.1 = add i64 %add20.6.1, %add21.6 *)
adds discard_102 v_add21_6_1 v_add20_6_1 v_add21_6;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_102 0@1; *)
(* assume eq discard_102 0 && true; *)
(*   %37 = xor i64 %add20.6.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v37 v_add20_6_1 (0x8000000000000000)@uint64;
(*   %xor2.i312.6.1 = and i64 %37, %add23.i.6.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_6_1 v37 v_add23_i_6_1;
(*   %xor.i303.6.1 = xor i64 %add21.6.1, %add20.6.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_6_1 v_add21_6_1 v_add20_6_1;
(*   %xor1.i304.6.1 = xor i64 %add20.6.1, %add21.6 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_6_1 v_add20_6_1 v_add21_6;
(*   %or.i305.6.1 = or i64 %xor.i303.6.1, %xor1.i304.6.1 *)
(* You may need to modify here *)
or uint64 v_or_i305_6_1 v_xor_i303_6_1 v_xor1_i304_6_1;
(*   %xor2.i306.6.1 = xor i64 %or.i305.6.1, %add21.6.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_6_1 v_or_i305_6_1 v_add21_6_1;
(*   %shr.i313328.6.1 = or i64 %xor2.i306.6.1, %xor2.i312.6.1 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_6_1 v_xor2_i306_6_1 v_xor2_i312_6_1;
(*   %or25327.6.1 = lshr i64 %shr.i313328.6.1, 63 *)
(* You may need to modify here *)
split v_or25327_6_1 tmp_to_be_used v_shr_i313328_6_1 63;
(* generated by python *)
assert true && limbs 64 [v_add21_6_1, v_or25327_6_1] = limbs 64 [v_shr_i319_6_1, 0@64] + limbs 64 [v_xor2569_i_6_1, 0@64] + limbs 64 [v_add21_6, 0@64];
assume limbs 64 [v_add21_6_1, v_or25327_6_1] = limbs 64 [v_shr_i319_6_1, 0] + limbs 64 [v_xor2569_i_6_1, 0] + limbs 64 [v_add21_6, 0] && true;
(*   %add27.6.1 = add nuw nsw i64 %or25327.6.1, %or25327.6 *)
adds discard_103 v_add27_6_1 v_or25327_6_1 v_or25327_6;
(* Heuristics applied. *)
assert true && eq discard_103 0@1;
assume eq discard_103 0 && true;
(*   %arrayidx34.6 = getelementptr inbounds i64, i64* %ma, i64 6 *)
(*   %38 = load i64, i64* %arrayidx34.6, align 8, !tbaa !3 *)
mov v38 ma_48;
(*   %add35.6 = add i64 %38, %add16.6.1 *)
adds discard_104 v_add35_6 v38 v_add16_6_1;
(*   %xor.i297.6 = xor i64 %add35.6, %add16.6.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i297_6 v_add35_6 v_add16_6_1;
(*   %xor1.i298.6 = xor i64 %38, %add16.6.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i298_6 v38 v_add16_6_1;
(*   %or.i299.6 = or i64 %xor.i297.6, %xor1.i298.6 *)
(* You may need to modify here *)
or uint64 v_or_i299_6 v_xor_i297_6 v_xor1_i298_6;
(*   %xor2.i300.6 = xor i64 %or.i299.6, %add35.6 *)
(* You may need to modify here *)
xor uint64 v_xor2_i300_6 v_or_i299_6 v_add35_6;
(*   %shr.i301.6 = lshr i64 %xor2.i300.6, 63 *)
(* You may need to modify here *)
split v_shr_i301_6 tmp_to_be_used v_xor2_i300_6 63;
(* generated by python *)
assert true && limbs 64 [v_add35_6, v_shr_i301_6] = limbs 64 [v38, 0@64] + limbs 64 [v_add16_6_1, 0@64];
assume limbs 64 [v_add35_6, v_shr_i301_6] = limbs 64 [v38, 0] + limbs 64 [v_add16_6_1, 0] && true;
(*   %add41.6 = add i64 %shr.i301.6, %add21.6.1 *)
adds discard_105 v_add41_6 v_shr_i301_6 v_add21_6_1;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_105 0@1; *)
(* assume eq discard_105 0 && true; *)
(*   %arrayidx50.6 = getelementptr inbounds i64, i64* %mc, i64 6 *)
(*   store i64 %add35.6, i64* %arrayidx50.6, align 8, !tbaa !3 *)
mov mc_48 v_add35_6;
(*   %39 = xor i64 %add41.6, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v39 v_add41_6 (0x8000000000000000)@uint64;
(*   %xor2.i294.6 = and i64 %39, %add21.6.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i294_6 v39 v_add21_6_1;
(*   %shr.i295.6 = lshr i64 %xor2.i294.6, 63 *)
(* You may need to modify here *)
split v_shr_i295_6 tmp_to_be_used v_xor2_i294_6 63;
(* generated by python *)
assert true && limbs 64 [v_add41_6, v_shr_i295_6] = limbs 64 [v_shr_i301_6, 0@64] + limbs 64 [v_add21_6_1, 0@64];
assume limbs 64 [v_add41_6, v_shr_i295_6] = limbs 64 [v_shr_i301_6, 0] + limbs 64 [v_add21_6_1, 0] && true;
(*   %add48.6 = add nsw i64 %shr.i295.6, %add27.6.1 *)
adds discard_106 v_add48_6 v_shr_i295_6 v_add27_6_1;
(* Heuristics applied. *)
assert true && eq discard_106 0@1;
assume eq discard_106 0 && true;
(*   %40 = load i64, i64* %mc, align 8, !tbaa !3 *)
mov v40 mc_0;
(*   %41 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 7), align 8, !tbaa !3 *)
mov v41 p751p1_56;
(*   %and.i.7 = and i64 %40, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_7 v40 (0xFFFFFFFF)@uint64;
(*   %shr.i.7 = lshr i64 %40, 32 *)
(* You may need to modify here *)
split v_shr_i_7 tmp_to_be_used v40 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_7;
assume eq tmp_to_be_used v_and_i_7 && true;
(*   %and1.i.7 = and i64 %41, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_7 v41 (0xFFFFFFFF)@uint64;
(*   %shr2.i.7 = lshr i64 %41, 32 *)
(* You may need to modify here *)
split v_shr2_i_7 tmp_to_be_used v41 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_7;
assume eq tmp_to_be_used v_and1_i_7 && true;
(*   %mul.i.7 = mul nuw i64 %and1.i.7, %and.i.7 *)
mul v_mul_i_7 v_and1_i_7 v_and_i_7;
(*   %mul3.i.7 = mul nuw i64 %shr2.i.7, %and.i.7 *)
mul v_mul3_i_7 v_shr2_i_7 v_and_i_7;
(*   %mul4.i.7 = mul nuw i64 %and1.i.7, %shr.i.7 *)
mul v_mul4_i_7 v_and1_i_7 v_shr_i_7;
(*   %mul5.i.7 = mul nuw i64 %shr2.i.7, %shr.i.7 *)
mul v_mul5_i_7 v_shr2_i_7 v_shr_i_7;
(*   %and6.i.7 = and i64 %mul.i.7, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_7 v_mul_i_7 (0xFFFFFFFF)@uint64;
(*   %shr7.i.7 = lshr i64 %mul.i.7, 32 *)
(* You may need to modify here *)
split v_shr7_i_7 tmp_to_be_used v_mul_i_7 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_7;
assume eq tmp_to_be_used v_and6_i_7 && true;
(*   %and8.i.7 = and i64 %mul4.i.7, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_7 v_mul4_i_7 (0xFFFFFFFF)@uint64;
(*   %and9.i.7 = and i64 %mul3.i.7, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_7 v_mul3_i_7 (0xFFFFFFFF)@uint64;
(*   %add.i.7 = add nuw nsw i64 %shr7.i.7, %and8.i.7 *)
adds discard_107 v_add_i_7 v_shr7_i_7 v_and8_i_7;
(* Heuristics applied. *)
assert true && eq discard_107 0@1;
assume eq discard_107 0 && true;
(*   %add10.i.7 = add nuw nsw i64 %add.i.7, %and9.i.7 *)
adds discard_108 v_add10_i_7 v_add_i_7 v_and9_i_7;
(* Heuristics applied. *)
assert true && eq discard_108 0@1;
assume eq discard_108 0 && true;
(*   %shr11.i.7 = lshr i64 %add10.i.7, 32 *)
(* You may need to modify here *)
split v_shr11_i_7 tmp_to_be_used v_add10_i_7 32;
(*   %shl.i.7 = shl i64 %add10.i.7, 32 *)
shls discard_109 v_shl_i_7 v_add10_i_7 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_7 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_7 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.7 = or i64 %shl.i.7, %and6.i.7 *)
(* You may need to modify here *)
or uint64 v_xor68_i_7 v_shl_i_7 v_and6_i_7;
(* Heuristics applied. *)
assert true && eq v_xor68_i_7 v_shl_i_7 + v_and6_i_7;
assume eq v_xor68_i_7 v_shl_i_7 + v_and6_i_7 && true;
(*   %shr13.i.7 = lshr i64 %mul4.i.7, 32 *)
(* You may need to modify here *)
split v_shr13_i_7 tmp_to_be_used v_mul4_i_7 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_7;
assume eq tmp_to_be_used v_and8_i_7 && true;
(*   %shr14.i.7 = lshr i64 %mul3.i.7, 32 *)
(* You may need to modify here *)
split v_shr14_i_7 tmp_to_be_used v_mul3_i_7 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_7;
assume eq tmp_to_be_used v_and9_i_7 && true;
(*   %and15.i.7 = and i64 %mul5.i.7, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_7 v_mul5_i_7 (0xFFFFFFFF)@uint64;
(*   %add16.i.7 = add nuw nsw i64 %shr13.i.7, %shr14.i.7 *)
adds discard_110 v_add16_i_7 v_shr13_i_7 v_shr14_i_7;
(* Heuristics applied. *)
assert true && eq discard_110 0@1;
assume eq discard_110 0 && true;
(*   %add17.i.7 = add nuw nsw i64 %add16.i.7, %and15.i.7 *)
adds discard_111 v_add17_i_7 v_add16_i_7 v_and15_i_7;
(* Heuristics applied. *)
assert true && eq discard_111 0@1;
assume eq discard_111 0 && true;
(*   %add18.i.7 = add nuw nsw i64 %add17.i.7, %shr11.i.7 *)
adds discard_112 v_add18_i_7 v_add17_i_7 v_shr11_i_7;
(* Heuristics applied. *)
assert true && eq discard_112 0@1;
assume eq discard_112 0 && true;
(*   %and19.i.7 = and i64 %add18.i.7, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_7 v_add18_i_7 (0xFFFFFFFF)@uint64;
(*   %and21.i.7 = and i64 %add18.i.7, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_7 v_add18_i_7 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_7 v_and21_i_7 + v_and19_i_7;
assume eq v_add18_i_7 v_and21_i_7 + v_and19_i_7 && true;
(*   %and22.i.7 = and i64 %mul5.i.7, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_7 v_mul5_i_7 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_7 v_and22_i_7 + v_and15_i_7;
assume eq v_mul5_i_7 v_and22_i_7 + v_and15_i_7 && true;
(*   %add23.i.7 = add i64 %and21.i.7, %and22.i.7 *)
adds discard_113 v_add23_i_7 v_and21_i_7 v_and22_i_7;
(* Heuristics applied. *)
assert true && eq discard_113 0@1;
assume eq discard_113 0 && true;
(*   %xor2569.i.7 = or i64 %add23.i.7, %and19.i.7 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_7 v_add23_i_7 v_and19_i_7;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_7 v_add23_i_7 + v_and19_i_7;
assume eq v_xor2569_i_7 v_add23_i_7 + v_and19_i_7 && true;
(*   %add16.7 = add i64 %xor68.i.7, %add41.6 *)
adds discard_114 v_add16_7 v_xor68_i_7 v_add41_6;
(*   %xor.i315.7 = xor i64 %add16.7, %shl.i.7 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_7 v_add16_7 v_shl_i_7;
(*   %xor1.i316.7 = xor i64 %shl.i.7, %add41.6 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_7 v_shl_i_7 v_add41_6;
(*   %or.i317.7 = or i64 %xor.i315.7, %xor1.i316.7 *)
(* You may need to modify here *)
or uint64 v_or_i317_7 v_xor_i315_7 v_xor1_i316_7;
(*   %xor2.i318.7 = xor i64 %or.i317.7, %add16.7 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_7 v_or_i317_7 v_add16_7;
(*   %shr.i319.7 = lshr i64 %xor2.i318.7, 63 *)
(* You may need to modify here *)
split v_shr_i319_7 tmp_to_be_used v_xor2_i318_7 63;
(* generated by python *)
assert true && limbs 64 [v_add16_7, v_shr_i319_7] = limbs 64 [v_xor68_i_7, 0@64] + limbs 64 [v_add41_6, 0@64];
assume limbs 64 [v_add16_7, v_shr_i319_7] = limbs 64 [v_xor68_i_7, 0] + limbs 64 [v_add41_6, 0] && true;
(*   %add20.7 = add i64 %shr.i319.7, %xor2569.i.7 *)
adds discard_115 v_add20_7 v_shr_i319_7 v_xor2569_i_7;
(* Heuristics applied. *)
assert true && eq discard_115 0@1;
assume eq discard_115 0 && true;
(*   %add21.7 = add i64 %add20.7, %add48.6 *)
adds discard_116 v_add21_7 v_add20_7 v_add48_6;
(* Heuristics applied. *)
assert true && eq discard_116 0@1;
assume eq discard_116 0 && true;
(*   %42 = xor i64 %add20.7, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v42 v_add20_7 (0x8000000000000000)@uint64;
(*   %xor2.i312.7 = and i64 %42, %add23.i.7 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_7 v42 v_add23_i_7;
(*   %xor.i303.7 = xor i64 %add21.7, %add20.7 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_7 v_add21_7 v_add20_7;
(*   %xor1.i304.7 = xor i64 %add20.7, %add48.6 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_7 v_add20_7 v_add48_6;
(*   %or.i305.7 = or i64 %xor.i303.7, %xor1.i304.7 *)
(* You may need to modify here *)
or uint64 v_or_i305_7 v_xor_i303_7 v_xor1_i304_7;
(*   %xor2.i306.7 = xor i64 %or.i305.7, %add21.7 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_7 v_or_i305_7 v_add21_7;
(*   %shr.i313328.7 = or i64 %xor2.i306.7, %xor2.i312.7 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_7 v_xor2_i306_7 v_xor2_i312_7;
(*   %or25327.7 = lshr i64 %shr.i313328.7, 63 *)
(* You may need to modify here *)
split v_or25327_7 tmp_to_be_used v_shr_i313328_7 63;
(* generated by python *)
assert true && limbs 64 [v_add21_7, v_or25327_7] = limbs 64 [v_shr_i319_7, 0@64] + limbs 64 [v_xor2569_i_7, 0@64] + limbs 64 [v_add48_6, 0@64];
assume limbs 64 [v_add21_7, v_or25327_7] = limbs 64 [v_shr_i319_7, 0] + limbs 64 [v_xor2569_i_7, 0] + limbs 64 [v_add48_6, 0] && true;
(*   %arrayidx9.7.1 = getelementptr inbounds i64, i64* %mc, i64 1 *)
(*   %43 = load i64, i64* %arrayidx9.7.1, align 8, !tbaa !3 *)
mov v43 mc_8;
(*   %44 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 6), align 16, !tbaa !3 *)
mov v44 p751p1_48;
(*   %and.i.7.1 = and i64 %43, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_7_1 v43 (0xFFFFFFFF)@uint64;
(*   %shr.i.7.1 = lshr i64 %43, 32 *)
(* You may need to modify here *)
split v_shr_i_7_1 tmp_to_be_used v43 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_7_1;
assume eq tmp_to_be_used v_and_i_7_1 && true;
(*   %and1.i.7.1 = and i64 %44, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_7_1 v44 (0xFFFFFFFF)@uint64;
(*   %shr2.i.7.1 = lshr i64 %44, 32 *)
(* You may need to modify here *)
split v_shr2_i_7_1 tmp_to_be_used v44 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_7_1;
assume eq tmp_to_be_used v_and1_i_7_1 && true;
(*   %mul.i.7.1 = mul nuw i64 %and1.i.7.1, %and.i.7.1 *)
mul v_mul_i_7_1 v_and1_i_7_1 v_and_i_7_1;
(*   %mul3.i.7.1 = mul nuw i64 %shr2.i.7.1, %and.i.7.1 *)
mul v_mul3_i_7_1 v_shr2_i_7_1 v_and_i_7_1;
(*   %mul4.i.7.1 = mul nuw i64 %and1.i.7.1, %shr.i.7.1 *)
mul v_mul4_i_7_1 v_and1_i_7_1 v_shr_i_7_1;
(*   %mul5.i.7.1 = mul nuw i64 %shr2.i.7.1, %shr.i.7.1 *)
mul v_mul5_i_7_1 v_shr2_i_7_1 v_shr_i_7_1;
(*   %and6.i.7.1 = and i64 %mul.i.7.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_7_1 v_mul_i_7_1 (0xFFFFFFFF)@uint64;
(*   %shr7.i.7.1 = lshr i64 %mul.i.7.1, 32 *)
(* You may need to modify here *)
split v_shr7_i_7_1 tmp_to_be_used v_mul_i_7_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_7_1;
assume eq tmp_to_be_used v_and6_i_7_1 && true;
(*   %and8.i.7.1 = and i64 %mul4.i.7.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_7_1 v_mul4_i_7_1 (0xFFFFFFFF)@uint64;
(*   %and9.i.7.1 = and i64 %mul3.i.7.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_7_1 v_mul3_i_7_1 (0xFFFFFFFF)@uint64;
(*   %add.i.7.1 = add nuw nsw i64 %shr7.i.7.1, %and8.i.7.1 *)
adds discard_117 v_add_i_7_1 v_shr7_i_7_1 v_and8_i_7_1;
(* Heuristics applied. *)
assert true && eq discard_117 0@1;
assume eq discard_117 0 && true;
(*   %add10.i.7.1 = add nuw nsw i64 %add.i.7.1, %and9.i.7.1 *)
adds discard_118 v_add10_i_7_1 v_add_i_7_1 v_and9_i_7_1;
(* Heuristics applied. *)
assert true && eq discard_118 0@1;
assume eq discard_118 0 && true;
(*   %shr11.i.7.1 = lshr i64 %add10.i.7.1, 32 *)
(* You may need to modify here *)
split v_shr11_i_7_1 tmp_to_be_used v_add10_i_7_1 32;
(*   %shl.i.7.1 = shl i64 %add10.i.7.1, 32 *)
shls discard_119 v_shl_i_7_1 v_add10_i_7_1 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_7_1 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_7_1 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.7.1 = or i64 %shl.i.7.1, %and6.i.7.1 *)
(* You may need to modify here *)
or uint64 v_xor68_i_7_1 v_shl_i_7_1 v_and6_i_7_1;
(* Heuristics applied. *)
assert true && eq v_xor68_i_7_1 v_shl_i_7_1 + v_and6_i_7_1;
assume eq v_xor68_i_7_1 v_shl_i_7_1 + v_and6_i_7_1 && true;
(*   %shr13.i.7.1 = lshr i64 %mul4.i.7.1, 32 *)
(* You may need to modify here *)
split v_shr13_i_7_1 tmp_to_be_used v_mul4_i_7_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_7_1;
assume eq tmp_to_be_used v_and8_i_7_1 && true;
(*   %shr14.i.7.1 = lshr i64 %mul3.i.7.1, 32 *)
(* You may need to modify here *)
split v_shr14_i_7_1 tmp_to_be_used v_mul3_i_7_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_7_1;
assume eq tmp_to_be_used v_and9_i_7_1 && true;
(*   %and15.i.7.1 = and i64 %mul5.i.7.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_7_1 v_mul5_i_7_1 (0xFFFFFFFF)@uint64;
(*   %add16.i.7.1 = add nuw nsw i64 %shr13.i.7.1, %shr14.i.7.1 *)
adds discard_120 v_add16_i_7_1 v_shr13_i_7_1 v_shr14_i_7_1;
(* Heuristics applied. *)
assert true && eq discard_120 0@1;
assume eq discard_120 0 && true;
(*   %add17.i.7.1 = add nuw nsw i64 %add16.i.7.1, %and15.i.7.1 *)
adds discard_121 v_add17_i_7_1 v_add16_i_7_1 v_and15_i_7_1;
(* Heuristics applied. *)
assert true && eq discard_121 0@1;
assume eq discard_121 0 && true;
(*   %add18.i.7.1 = add nuw nsw i64 %add17.i.7.1, %shr11.i.7.1 *)
adds discard_122 v_add18_i_7_1 v_add17_i_7_1 v_shr11_i_7_1;
(* Heuristics applied. *)
assert true && eq discard_122 0@1;
assume eq discard_122 0 && true;
(*   %and19.i.7.1 = and i64 %add18.i.7.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_7_1 v_add18_i_7_1 (0xFFFFFFFF)@uint64;
(*   %and21.i.7.1 = and i64 %add18.i.7.1, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_7_1 v_add18_i_7_1 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_7_1 v_and21_i_7_1 + v_and19_i_7_1;
assume eq v_add18_i_7_1 v_and21_i_7_1 + v_and19_i_7_1 && true;
(*   %and22.i.7.1 = and i64 %mul5.i.7.1, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_7_1 v_mul5_i_7_1 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_7_1 v_and22_i_7_1 + v_and15_i_7_1;
assume eq v_mul5_i_7_1 v_and22_i_7_1 + v_and15_i_7_1 && true;
(*   %add23.i.7.1 = add i64 %and21.i.7.1, %and22.i.7.1 *)
adds discard_123 v_add23_i_7_1 v_and21_i_7_1 v_and22_i_7_1;
(* Heuristics applied. *)
assert true && eq discard_123 0@1;
assume eq discard_123 0 && true;
(*   %xor2569.i.7.1 = or i64 %add23.i.7.1, %and19.i.7.1 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_7_1 v_add23_i_7_1 v_and19_i_7_1;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_7_1 v_add23_i_7_1 + v_and19_i_7_1;
assume eq v_xor2569_i_7_1 v_add23_i_7_1 + v_and19_i_7_1 && true;
(*   %add16.7.1 = add i64 %xor68.i.7.1, %add16.7 *)
adds discard_124 v_add16_7_1 v_xor68_i_7_1 v_add16_7;
(*   %xor.i315.7.1 = xor i64 %add16.7.1, %shl.i.7.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_7_1 v_add16_7_1 v_shl_i_7_1;
(*   %xor1.i316.7.1 = xor i64 %shl.i.7.1, %add16.7 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_7_1 v_shl_i_7_1 v_add16_7;
(*   %or.i317.7.1 = or i64 %xor.i315.7.1, %xor1.i316.7.1 *)
(* You may need to modify here *)
or uint64 v_or_i317_7_1 v_xor_i315_7_1 v_xor1_i316_7_1;
(*   %xor2.i318.7.1 = xor i64 %or.i317.7.1, %add16.7.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_7_1 v_or_i317_7_1 v_add16_7_1;
(*   %shr.i319.7.1 = lshr i64 %xor2.i318.7.1, 63 *)
(* You may need to modify here *)
split v_shr_i319_7_1 tmp_to_be_used v_xor2_i318_7_1 63;
(* generated by python *)
assert true && limbs 64 [v_add16_7_1, v_shr_i319_7_1] = limbs 64 [v_xor68_i_7_1, 0@64] + limbs 64 [v_add16_7, 0@64];
assume limbs 64 [v_add16_7_1, v_shr_i319_7_1] = limbs 64 [v_xor68_i_7_1, 0] + limbs 64 [v_add16_7, 0] && true;
(*   %add20.7.1 = add i64 %shr.i319.7.1, %xor2569.i.7.1 *)
adds discard_125 v_add20_7_1 v_shr_i319_7_1 v_xor2569_i_7_1;
(* Heuristics applied. *)
assert true && eq discard_125 0@1;
assume eq discard_125 0 && true;
(*   %add21.7.1 = add i64 %add20.7.1, %add21.7 *)
adds discard_126 v_add21_7_1 v_add20_7_1 v_add21_7;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_126 0@1; *)
(* assume eq discard_126 0 && true; *)
(*   %45 = xor i64 %add20.7.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v45 v_add20_7_1 (0x8000000000000000)@uint64;
(*   %xor2.i312.7.1 = and i64 %45, %add23.i.7.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_7_1 v45 v_add23_i_7_1;
(*   %xor.i303.7.1 = xor i64 %add21.7.1, %add20.7.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_7_1 v_add21_7_1 v_add20_7_1;
(*   %xor1.i304.7.1 = xor i64 %add20.7.1, %add21.7 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_7_1 v_add20_7_1 v_add21_7;
(*   %or.i305.7.1 = or i64 %xor.i303.7.1, %xor1.i304.7.1 *)
(* You may need to modify here *)
or uint64 v_or_i305_7_1 v_xor_i303_7_1 v_xor1_i304_7_1;
(*   %xor2.i306.7.1 = xor i64 %or.i305.7.1, %add21.7.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_7_1 v_or_i305_7_1 v_add21_7_1;
(*   %shr.i313328.7.1 = or i64 %xor2.i306.7.1, %xor2.i312.7.1 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_7_1 v_xor2_i306_7_1 v_xor2_i312_7_1;
(*   %or25327.7.1 = lshr i64 %shr.i313328.7.1, 63 *)
(* You may need to modify here *)
split v_or25327_7_1 tmp_to_be_used v_shr_i313328_7_1 63;
(* generated by python *)
assert true && limbs 64 [v_add21_7_1, v_or25327_7_1] = limbs 64 [v_shr_i319_7_1, 0@64] + limbs 64 [v_xor2569_i_7_1, 0@64] + limbs 64 [v_add21_7, 0@64];
assume limbs 64 [v_add21_7_1, v_or25327_7_1] = limbs 64 [v_shr_i319_7_1, 0] + limbs 64 [v_xor2569_i_7_1, 0] + limbs 64 [v_add21_7, 0] && true;
(*   %add27.7.1 = add nuw nsw i64 %or25327.7.1, %or25327.7 *)
adds discard_127 v_add27_7_1 v_or25327_7_1 v_or25327_7;
(* Heuristics applied. *)
assert true && eq discard_127 0@1;
assume eq discard_127 0 && true;
(*   %arrayidx9.7.2 = getelementptr inbounds i64, i64* %mc, i64 2 *)
(*   %46 = load i64, i64* %arrayidx9.7.2, align 8, !tbaa !3 *)
mov v46 mc_16;
(*   %47 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 5), align 8, !tbaa !3 *)
mov v47 p751p1_40;
(*   %and.i.7.2 = and i64 %46, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_7_2 v46 (0xFFFFFFFF)@uint64;
(*   %shr.i.7.2 = lshr i64 %46, 32 *)
(* You may need to modify here *)
split v_shr_i_7_2 tmp_to_be_used v46 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_7_2;
assume eq tmp_to_be_used v_and_i_7_2 && true;
(*   %and1.i.7.2 = and i64 %47, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_7_2 v47 (0xFFFFFFFF)@uint64;
(*   %shr2.i.7.2 = lshr i64 %47, 32 *)
(* You may need to modify here *)
split v_shr2_i_7_2 tmp_to_be_used v47 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_7_2;
assume eq tmp_to_be_used v_and1_i_7_2 && true;
(*   %mul.i.7.2 = mul nuw i64 %and1.i.7.2, %and.i.7.2 *)
mul v_mul_i_7_2 v_and1_i_7_2 v_and_i_7_2;
(*   %mul3.i.7.2 = mul nuw i64 %shr2.i.7.2, %and.i.7.2 *)
mul v_mul3_i_7_2 v_shr2_i_7_2 v_and_i_7_2;
(*   %mul4.i.7.2 = mul nuw i64 %and1.i.7.2, %shr.i.7.2 *)
mul v_mul4_i_7_2 v_and1_i_7_2 v_shr_i_7_2;
(*   %mul5.i.7.2 = mul nuw i64 %shr2.i.7.2, %shr.i.7.2 *)
mul v_mul5_i_7_2 v_shr2_i_7_2 v_shr_i_7_2;
(*   %and6.i.7.2 = and i64 %mul.i.7.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_7_2 v_mul_i_7_2 (0xFFFFFFFF)@uint64;
(*   %shr7.i.7.2 = lshr i64 %mul.i.7.2, 32 *)
(* You may need to modify here *)
split v_shr7_i_7_2 tmp_to_be_used v_mul_i_7_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_7_2;
assume eq tmp_to_be_used v_and6_i_7_2 && true;
(*   %and8.i.7.2 = and i64 %mul4.i.7.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_7_2 v_mul4_i_7_2 (0xFFFFFFFF)@uint64;
(*   %and9.i.7.2 = and i64 %mul3.i.7.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_7_2 v_mul3_i_7_2 (0xFFFFFFFF)@uint64;
(*   %add.i.7.2 = add nuw nsw i64 %shr7.i.7.2, %and8.i.7.2 *)
adds discard_128 v_add_i_7_2 v_shr7_i_7_2 v_and8_i_7_2;
(* Heuristics applied. *)
assert true && eq discard_128 0@1;
assume eq discard_128 0 && true;
(*   %add10.i.7.2 = add nuw nsw i64 %add.i.7.2, %and9.i.7.2 *)
adds discard_129 v_add10_i_7_2 v_add_i_7_2 v_and9_i_7_2;
(* Heuristics applied. *)
assert true && eq discard_129 0@1;
assume eq discard_129 0 && true;
(*   %shr11.i.7.2 = lshr i64 %add10.i.7.2, 32 *)
(* You may need to modify here *)
split v_shr11_i_7_2 tmp_to_be_used v_add10_i_7_2 32;
(*   %shl.i.7.2 = shl i64 %add10.i.7.2, 32 *)
shls discard_130 v_shl_i_7_2 v_add10_i_7_2 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_7_2 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_7_2 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.7.2 = or i64 %shl.i.7.2, %and6.i.7.2 *)
(* You may need to modify here *)
or uint64 v_xor68_i_7_2 v_shl_i_7_2 v_and6_i_7_2;
(* Heuristics applied. *)
assert true && eq v_xor68_i_7_2 v_shl_i_7_2 + v_and6_i_7_2;
assume eq v_xor68_i_7_2 v_shl_i_7_2 + v_and6_i_7_2 && true;
(*   %shr13.i.7.2 = lshr i64 %mul4.i.7.2, 32 *)
(* You may need to modify here *)
split v_shr13_i_7_2 tmp_to_be_used v_mul4_i_7_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_7_2;
assume eq tmp_to_be_used v_and8_i_7_2 && true;
(*   %shr14.i.7.2 = lshr i64 %mul3.i.7.2, 32 *)
(* You may need to modify here *)
split v_shr14_i_7_2 tmp_to_be_used v_mul3_i_7_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_7_2;
assume eq tmp_to_be_used v_and9_i_7_2 && true;
(*   %and15.i.7.2 = and i64 %mul5.i.7.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_7_2 v_mul5_i_7_2 (0xFFFFFFFF)@uint64;
(*   %add16.i.7.2 = add nuw nsw i64 %shr13.i.7.2, %shr14.i.7.2 *)
adds discard_131 v_add16_i_7_2 v_shr13_i_7_2 v_shr14_i_7_2;
(* Heuristics applied. *)
assert true && eq discard_131 0@1;
assume eq discard_131 0 && true;
(*   %add17.i.7.2 = add nuw nsw i64 %add16.i.7.2, %and15.i.7.2 *)
adds discard_132 v_add17_i_7_2 v_add16_i_7_2 v_and15_i_7_2;
(* Heuristics applied. *)
assert true && eq discard_132 0@1;
assume eq discard_132 0 && true;
(*   %add18.i.7.2 = add nuw nsw i64 %add17.i.7.2, %shr11.i.7.2 *)
adds discard_133 v_add18_i_7_2 v_add17_i_7_2 v_shr11_i_7_2;
(* Heuristics applied. *)
assert true && eq discard_133 0@1;
assume eq discard_133 0 && true;
(*   %and19.i.7.2 = and i64 %add18.i.7.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_7_2 v_add18_i_7_2 (0xFFFFFFFF)@uint64;
(*   %and21.i.7.2 = and i64 %add18.i.7.2, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_7_2 v_add18_i_7_2 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_7_2 v_and21_i_7_2 + v_and19_i_7_2;
assume eq v_add18_i_7_2 v_and21_i_7_2 + v_and19_i_7_2 && true;
(*   %and22.i.7.2 = and i64 %mul5.i.7.2, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_7_2 v_mul5_i_7_2 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_7_2 v_and22_i_7_2 + v_and15_i_7_2;
assume eq v_mul5_i_7_2 v_and22_i_7_2 + v_and15_i_7_2 && true;
(*   %add23.i.7.2 = add i64 %and21.i.7.2, %and22.i.7.2 *)
adds discard_134 v_add23_i_7_2 v_and21_i_7_2 v_and22_i_7_2;
(* Heuristics applied. *)
assert true && eq discard_134 0@1;
assume eq discard_134 0 && true;
(*   %xor2569.i.7.2 = or i64 %add23.i.7.2, %and19.i.7.2 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_7_2 v_add23_i_7_2 v_and19_i_7_2;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_7_2 v_add23_i_7_2 + v_and19_i_7_2;
assume eq v_xor2569_i_7_2 v_add23_i_7_2 + v_and19_i_7_2 && true;
(*   %add16.7.2 = add i64 %xor68.i.7.2, %add16.7.1 *)
adds discard_135 v_add16_7_2 v_xor68_i_7_2 v_add16_7_1;
(*   %xor.i315.7.2 = xor i64 %add16.7.2, %shl.i.7.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_7_2 v_add16_7_2 v_shl_i_7_2;
(*   %xor1.i316.7.2 = xor i64 %shl.i.7.2, %add16.7.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_7_2 v_shl_i_7_2 v_add16_7_1;
(*   %or.i317.7.2 = or i64 %xor.i315.7.2, %xor1.i316.7.2 *)
(* You may need to modify here *)
or uint64 v_or_i317_7_2 v_xor_i315_7_2 v_xor1_i316_7_2;
(*   %xor2.i318.7.2 = xor i64 %or.i317.7.2, %add16.7.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_7_2 v_or_i317_7_2 v_add16_7_2;
(*   %shr.i319.7.2 = lshr i64 %xor2.i318.7.2, 63 *)
(* You may need to modify here *)
split v_shr_i319_7_2 tmp_to_be_used v_xor2_i318_7_2 63;
(* generated by python *)
assert true && limbs 64 [v_add16_7_2, v_shr_i319_7_2] = limbs 64 [v_xor68_i_7_2, 0@64] + limbs 64 [v_add16_7_1, 0@64];
assume limbs 64 [v_add16_7_2, v_shr_i319_7_2] = limbs 64 [v_xor68_i_7_2, 0] + limbs 64 [v_add16_7_1, 0] && true;
(*   %add20.7.2 = add i64 %shr.i319.7.2, %xor2569.i.7.2 *)
adds discard_136 v_add20_7_2 v_shr_i319_7_2 v_xor2569_i_7_2;
(* Heuristics applied. *)
assert true && eq discard_136 0@1;
assume eq discard_136 0 && true;
(*   %add21.7.2 = add i64 %add20.7.2, %add21.7.1 *)
adds discard_137 v_add21_7_2 v_add20_7_2 v_add21_7_1;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_137 0@1; *)
(* assume eq discard_137 0 && true; *)
(*   %48 = xor i64 %add20.7.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v48 v_add20_7_2 (0x8000000000000000)@uint64;
(*   %xor2.i312.7.2 = and i64 %48, %add23.i.7.2 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_7_2 v48 v_add23_i_7_2;
(*   %xor.i303.7.2 = xor i64 %add21.7.2, %add20.7.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_7_2 v_add21_7_2 v_add20_7_2;
(*   %xor1.i304.7.2 = xor i64 %add20.7.2, %add21.7.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_7_2 v_add20_7_2 v_add21_7_1;
(*   %or.i305.7.2 = or i64 %xor.i303.7.2, %xor1.i304.7.2 *)
(* You may need to modify here *)
or uint64 v_or_i305_7_2 v_xor_i303_7_2 v_xor1_i304_7_2;
(*   %xor2.i306.7.2 = xor i64 %or.i305.7.2, %add21.7.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_7_2 v_or_i305_7_2 v_add21_7_2;
(*   %shr.i313328.7.2 = or i64 %xor2.i306.7.2, %xor2.i312.7.2 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_7_2 v_xor2_i306_7_2 v_xor2_i312_7_2;
(*   %or25327.7.2 = lshr i64 %shr.i313328.7.2, 63 *)
(* You may need to modify here *)
split v_or25327_7_2 tmp_to_be_used v_shr_i313328_7_2 63;
(* generated by python *)
assert true && limbs 64 [v_add21_7_2, v_or25327_7_2] = limbs 64 [v_shr_i319_7_2, 0@64] + limbs 64 [v_xor2569_i_7_2, 0@64] + limbs 64 [v_add21_7_1, 0@64];
assume limbs 64 [v_add21_7_2, v_or25327_7_2] = limbs 64 [v_shr_i319_7_2, 0] + limbs 64 [v_xor2569_i_7_2, 0] + limbs 64 [v_add21_7_1, 0] && true;
(*   %add27.7.2 = add nsw i64 %or25327.7.2, %add27.7.1 *)
adds discard_138 v_add27_7_2 v_or25327_7_2 v_add27_7_1;
(* Heuristics applied. *)
assert true && eq discard_138 0@1;
assume eq discard_138 0 && true;
(*   %arrayidx34.7 = getelementptr inbounds i64, i64* %ma, i64 7 *)
(*   %49 = load i64, i64* %arrayidx34.7, align 8, !tbaa !3 *)
mov v49 ma_56;
(*   %add35.7 = add i64 %49, %add16.7.2 *)
adds discard_139 v_add35_7 v49 v_add16_7_2;
(*   %xor.i297.7 = xor i64 %add35.7, %add16.7.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i297_7 v_add35_7 v_add16_7_2;
(*   %xor1.i298.7 = xor i64 %49, %add16.7.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i298_7 v49 v_add16_7_2;
(*   %or.i299.7 = or i64 %xor.i297.7, %xor1.i298.7 *)
(* You may need to modify here *)
or uint64 v_or_i299_7 v_xor_i297_7 v_xor1_i298_7;
(*   %xor2.i300.7 = xor i64 %or.i299.7, %add35.7 *)
(* You may need to modify here *)
xor uint64 v_xor2_i300_7 v_or_i299_7 v_add35_7;
(*   %shr.i301.7 = lshr i64 %xor2.i300.7, 63 *)
(* You may need to modify here *)
split v_shr_i301_7 tmp_to_be_used v_xor2_i300_7 63;
(* generated by python *)
assert true && limbs 64 [v_add35_7, v_shr_i301_7] = limbs 64 [v49, 0@64] + limbs 64 [v_add16_7_2, 0@64];
assume limbs 64 [v_add35_7, v_shr_i301_7] = limbs 64 [v49, 0] + limbs 64 [v_add16_7_2, 0] && true;
(*   %add41.7 = add i64 %shr.i301.7, %add21.7.2 *)
adds discard_140 v_add41_7 v_shr_i301_7 v_add21_7_2;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_140 0@1; *)
(* assume eq discard_140 0 && true; *)
(*   %arrayidx50.7 = getelementptr inbounds i64, i64* %mc, i64 7 *)
(*   store i64 %add35.7, i64* %arrayidx50.7, align 8, !tbaa !3 *)
mov mc_56 v_add35_7;
(*   %50 = xor i64 %add41.7, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v50 v_add41_7 (0x8000000000000000)@uint64;
(*   %xor2.i294.7 = and i64 %50, %add21.7.2 *)
(* You may need to modify here *)
and uint64 v_xor2_i294_7 v50 v_add21_7_2;
(*   %shr.i295.7 = lshr i64 %xor2.i294.7, 63 *)
(* You may need to modify here *)
split v_shr_i295_7 tmp_to_be_used v_xor2_i294_7 63;
(* generated by python *)
assert true && limbs 64 [v_add41_7, v_shr_i295_7] = limbs 64 [v_shr_i301_7, 0@64] + limbs 64 [v_add21_7_2, 0@64];
assume limbs 64 [v_add41_7, v_shr_i295_7] = limbs 64 [v_shr_i301_7, 0] + limbs 64 [v_add21_7_2, 0] && true;
(*   %add48.7 = add nsw i64 %shr.i295.7, %add27.7.2 *)
adds discard_141 v_add48_7 v_shr_i295_7 v_add27_7_2;
(* Heuristics applied. *)
assert true && eq discard_141 0@1;
assume eq discard_141 0 && true;
(*   %51 = load i64, i64* %mc, align 8, !tbaa !3 *)
mov v51 mc_0;
(*   %52 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 8), align 16, !tbaa !3 *)
mov v52 p751p1_64;
(*   %and.i.8 = and i64 %51, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_8 v51 (0xFFFFFFFF)@uint64;
(*   %shr.i.8 = lshr i64 %51, 32 *)
(* You may need to modify here *)
split v_shr_i_8 tmp_to_be_used v51 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_8;
assume eq tmp_to_be_used v_and_i_8 && true;
(*   %and1.i.8 = and i64 %52, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_8 v52 (0xFFFFFFFF)@uint64;
(*   %shr2.i.8 = lshr i64 %52, 32 *)
(* You may need to modify here *)
split v_shr2_i_8 tmp_to_be_used v52 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_8;
assume eq tmp_to_be_used v_and1_i_8 && true;
(*   %mul.i.8 = mul nuw i64 %and1.i.8, %and.i.8 *)
mul v_mul_i_8 v_and1_i_8 v_and_i_8;
(*   %mul3.i.8 = mul nuw i64 %shr2.i.8, %and.i.8 *)
mul v_mul3_i_8 v_shr2_i_8 v_and_i_8;
(*   %mul4.i.8 = mul nuw i64 %and1.i.8, %shr.i.8 *)
mul v_mul4_i_8 v_and1_i_8 v_shr_i_8;
(*   %mul5.i.8 = mul nuw i64 %shr2.i.8, %shr.i.8 *)
mul v_mul5_i_8 v_shr2_i_8 v_shr_i_8;
(*   %and6.i.8 = and i64 %mul.i.8, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_8 v_mul_i_8 (0xFFFFFFFF)@uint64;
(*   %shr7.i.8 = lshr i64 %mul.i.8, 32 *)
(* You may need to modify here *)
split v_shr7_i_8 tmp_to_be_used v_mul_i_8 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_8;
assume eq tmp_to_be_used v_and6_i_8 && true;
(*   %and8.i.8 = and i64 %mul4.i.8, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_8 v_mul4_i_8 (0xFFFFFFFF)@uint64;
(*   %and9.i.8 = and i64 %mul3.i.8, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_8 v_mul3_i_8 (0xFFFFFFFF)@uint64;
(*   %add.i.8 = add nuw nsw i64 %shr7.i.8, %and8.i.8 *)
adds discard_142 v_add_i_8 v_shr7_i_8 v_and8_i_8;
(* Heuristics applied. *)
assert true && eq discard_142 0@1;
assume eq discard_142 0 && true;
(*   %add10.i.8 = add nuw nsw i64 %add.i.8, %and9.i.8 *)
adds discard_143 v_add10_i_8 v_add_i_8 v_and9_i_8;
(* Heuristics applied. *)
assert true && eq discard_143 0@1;
assume eq discard_143 0 && true;
(*   %shr11.i.8 = lshr i64 %add10.i.8, 32 *)
(* You may need to modify here *)
split v_shr11_i_8 tmp_to_be_used v_add10_i_8 32;
(*   %shl.i.8 = shl i64 %add10.i.8, 32 *)
shls discard_144 v_shl_i_8 v_add10_i_8 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_8 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_8 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.8 = or i64 %shl.i.8, %and6.i.8 *)
(* You may need to modify here *)
or uint64 v_xor68_i_8 v_shl_i_8 v_and6_i_8;
(* Heuristics applied. *)
assert true && eq v_xor68_i_8 v_shl_i_8 + v_and6_i_8;
assume eq v_xor68_i_8 v_shl_i_8 + v_and6_i_8 && true;
(*   %shr13.i.8 = lshr i64 %mul4.i.8, 32 *)
(* You may need to modify here *)
split v_shr13_i_8 tmp_to_be_used v_mul4_i_8 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_8;
assume eq tmp_to_be_used v_and8_i_8 && true;
(*   %shr14.i.8 = lshr i64 %mul3.i.8, 32 *)
(* You may need to modify here *)
split v_shr14_i_8 tmp_to_be_used v_mul3_i_8 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_8;
assume eq tmp_to_be_used v_and9_i_8 && true;
(*   %and15.i.8 = and i64 %mul5.i.8, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_8 v_mul5_i_8 (0xFFFFFFFF)@uint64;
(*   %add16.i.8 = add nuw nsw i64 %shr13.i.8, %shr14.i.8 *)
adds discard_145 v_add16_i_8 v_shr13_i_8 v_shr14_i_8;
(* Heuristics applied. *)
assert true && eq discard_145 0@1;
assume eq discard_145 0 && true;
(*   %add17.i.8 = add nuw nsw i64 %add16.i.8, %and15.i.8 *)
adds discard_146 v_add17_i_8 v_add16_i_8 v_and15_i_8;
(* Heuristics applied. *)
assert true && eq discard_146 0@1;
assume eq discard_146 0 && true;
(*   %add18.i.8 = add nuw nsw i64 %add17.i.8, %shr11.i.8 *)
adds discard_147 v_add18_i_8 v_add17_i_8 v_shr11_i_8;
(* Heuristics applied. *)
assert true && eq discard_147 0@1;
assume eq discard_147 0 && true;
(*   %and19.i.8 = and i64 %add18.i.8, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_8 v_add18_i_8 (0xFFFFFFFF)@uint64;
(*   %and21.i.8 = and i64 %add18.i.8, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_8 v_add18_i_8 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_8 v_and21_i_8 + v_and19_i_8;
assume eq v_add18_i_8 v_and21_i_8 + v_and19_i_8 && true;
(*   %and22.i.8 = and i64 %mul5.i.8, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_8 v_mul5_i_8 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_8 v_and22_i_8 + v_and15_i_8;
assume eq v_mul5_i_8 v_and22_i_8 + v_and15_i_8 && true;
(*   %add23.i.8 = add i64 %and21.i.8, %and22.i.8 *)
adds discard_148 v_add23_i_8 v_and21_i_8 v_and22_i_8;
(* Heuristics applied. *)
assert true && eq discard_148 0@1;
assume eq discard_148 0 && true;
(*   %xor2569.i.8 = or i64 %add23.i.8, %and19.i.8 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_8 v_add23_i_8 v_and19_i_8;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_8 v_add23_i_8 + v_and19_i_8;
assume eq v_xor2569_i_8 v_add23_i_8 + v_and19_i_8 && true;
(*   %add16.8 = add i64 %xor68.i.8, %add41.7 *)
adds discard_149 v_add16_8 v_xor68_i_8 v_add41_7;
(*   %xor.i315.8 = xor i64 %add16.8, %shl.i.8 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_8 v_add16_8 v_shl_i_8;
(*   %xor1.i316.8 = xor i64 %shl.i.8, %add41.7 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_8 v_shl_i_8 v_add41_7;
(*   %or.i317.8 = or i64 %xor.i315.8, %xor1.i316.8 *)
(* You may need to modify here *)
or uint64 v_or_i317_8 v_xor_i315_8 v_xor1_i316_8;
(*   %xor2.i318.8 = xor i64 %or.i317.8, %add16.8 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_8 v_or_i317_8 v_add16_8;
(*   %shr.i319.8 = lshr i64 %xor2.i318.8, 63 *)
(* You may need to modify here *)
split v_shr_i319_8 tmp_to_be_used v_xor2_i318_8 63;
(* generated by python *)
assert true && limbs 64 [v_add16_8, v_shr_i319_8] = limbs 64 [v_xor68_i_8, 0@64] + limbs 64 [v_add41_7, 0@64];
assume limbs 64 [v_add16_8, v_shr_i319_8] = limbs 64 [v_xor68_i_8, 0] + limbs 64 [v_add41_7, 0] && true;
(*   %add20.8 = add i64 %shr.i319.8, %xor2569.i.8 *)
adds discard_150 v_add20_8 v_shr_i319_8 v_xor2569_i_8;
(* Heuristics applied. *)
assert true && eq discard_150 0@1;
assume eq discard_150 0 && true;
(*   %add21.8 = add i64 %add20.8, %add48.7 *)
adds discard_151 v_add21_8 v_add20_8 v_add48_7;
(* Heuristics applied. *)
assert true && eq discard_151 0@1;
assume eq discard_151 0 && true;
(*   %53 = xor i64 %add20.8, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v53 v_add20_8 (0x8000000000000000)@uint64;
(*   %xor2.i312.8 = and i64 %53, %add23.i.8 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_8 v53 v_add23_i_8;
(*   %xor.i303.8 = xor i64 %add21.8, %add20.8 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_8 v_add21_8 v_add20_8;
(*   %xor1.i304.8 = xor i64 %add20.8, %add48.7 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_8 v_add20_8 v_add48_7;
(*   %or.i305.8 = or i64 %xor.i303.8, %xor1.i304.8 *)
(* You may need to modify here *)
or uint64 v_or_i305_8 v_xor_i303_8 v_xor1_i304_8;
(*   %xor2.i306.8 = xor i64 %or.i305.8, %add21.8 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_8 v_or_i305_8 v_add21_8;
(*   %shr.i313328.8 = or i64 %xor2.i306.8, %xor2.i312.8 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_8 v_xor2_i306_8 v_xor2_i312_8;
(*   %or25327.8 = lshr i64 %shr.i313328.8, 63 *)
(* You may need to modify here *)
split v_or25327_8 tmp_to_be_used v_shr_i313328_8 63;
(* generated by python *)
assert true && limbs 64 [v_add21_8, v_or25327_8] = limbs 64 [v_shr_i319_8, 0@64] + limbs 64 [v_xor2569_i_8, 0@64] + limbs 64 [v_add48_7, 0@64];
assume limbs 64 [v_add21_8, v_or25327_8] = limbs 64 [v_shr_i319_8, 0] + limbs 64 [v_xor2569_i_8, 0] + limbs 64 [v_add48_7, 0] && true;
(*   %arrayidx9.8.1 = getelementptr inbounds i64, i64* %mc, i64 1 *)
(*   %54 = load i64, i64* %arrayidx9.8.1, align 8, !tbaa !3 *)
mov v54 mc_8;
(*   %55 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 7), align 8, !tbaa !3 *)
mov v55 p751p1_56;
(*   %and.i.8.1 = and i64 %54, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_8_1 v54 (0xFFFFFFFF)@uint64;
(*   %shr.i.8.1 = lshr i64 %54, 32 *)
(* You may need to modify here *)
split v_shr_i_8_1 tmp_to_be_used v54 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_8_1;
assume eq tmp_to_be_used v_and_i_8_1 && true;
(*   %and1.i.8.1 = and i64 %55, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_8_1 v55 (0xFFFFFFFF)@uint64;
(*   %shr2.i.8.1 = lshr i64 %55, 32 *)
(* You may need to modify here *)
split v_shr2_i_8_1 tmp_to_be_used v55 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_8_1;
assume eq tmp_to_be_used v_and1_i_8_1 && true;
(*   %mul.i.8.1 = mul nuw i64 %and1.i.8.1, %and.i.8.1 *)
mul v_mul_i_8_1 v_and1_i_8_1 v_and_i_8_1;
(*   %mul3.i.8.1 = mul nuw i64 %shr2.i.8.1, %and.i.8.1 *)
mul v_mul3_i_8_1 v_shr2_i_8_1 v_and_i_8_1;
(*   %mul4.i.8.1 = mul nuw i64 %and1.i.8.1, %shr.i.8.1 *)
mul v_mul4_i_8_1 v_and1_i_8_1 v_shr_i_8_1;
(*   %mul5.i.8.1 = mul nuw i64 %shr2.i.8.1, %shr.i.8.1 *)
mul v_mul5_i_8_1 v_shr2_i_8_1 v_shr_i_8_1;
(*   %and6.i.8.1 = and i64 %mul.i.8.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_8_1 v_mul_i_8_1 (0xFFFFFFFF)@uint64;
(*   %shr7.i.8.1 = lshr i64 %mul.i.8.1, 32 *)
(* You may need to modify here *)
split v_shr7_i_8_1 tmp_to_be_used v_mul_i_8_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_8_1;
assume eq tmp_to_be_used v_and6_i_8_1 && true;
(*   %and8.i.8.1 = and i64 %mul4.i.8.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_8_1 v_mul4_i_8_1 (0xFFFFFFFF)@uint64;
(*   %and9.i.8.1 = and i64 %mul3.i.8.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_8_1 v_mul3_i_8_1 (0xFFFFFFFF)@uint64;
(*   %add.i.8.1 = add nuw nsw i64 %shr7.i.8.1, %and8.i.8.1 *)
adds discard_152 v_add_i_8_1 v_shr7_i_8_1 v_and8_i_8_1;
(* Heuristics applied. *)
assert true && eq discard_152 0@1;
assume eq discard_152 0 && true;
(*   %add10.i.8.1 = add nuw nsw i64 %add.i.8.1, %and9.i.8.1 *)
adds discard_153 v_add10_i_8_1 v_add_i_8_1 v_and9_i_8_1;
(* Heuristics applied. *)
assert true && eq discard_153 0@1;
assume eq discard_153 0 && true;
(*   %shr11.i.8.1 = lshr i64 %add10.i.8.1, 32 *)
(* You may need to modify here *)
split v_shr11_i_8_1 tmp_to_be_used v_add10_i_8_1 32;
(*   %shl.i.8.1 = shl i64 %add10.i.8.1, 32 *)
shls discard_154 v_shl_i_8_1 v_add10_i_8_1 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_8_1 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_8_1 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.8.1 = or i64 %shl.i.8.1, %and6.i.8.1 *)
(* You may need to modify here *)
or uint64 v_xor68_i_8_1 v_shl_i_8_1 v_and6_i_8_1;
(* Heuristics applied. *)
assert true && eq v_xor68_i_8_1 v_shl_i_8_1 + v_and6_i_8_1;
assume eq v_xor68_i_8_1 v_shl_i_8_1 + v_and6_i_8_1 && true;
(*   %shr13.i.8.1 = lshr i64 %mul4.i.8.1, 32 *)
(* You may need to modify here *)
split v_shr13_i_8_1 tmp_to_be_used v_mul4_i_8_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_8_1;
assume eq tmp_to_be_used v_and8_i_8_1 && true;
(*   %shr14.i.8.1 = lshr i64 %mul3.i.8.1, 32 *)
(* You may need to modify here *)
split v_shr14_i_8_1 tmp_to_be_used v_mul3_i_8_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_8_1;
assume eq tmp_to_be_used v_and9_i_8_1 && true;
(*   %and15.i.8.1 = and i64 %mul5.i.8.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_8_1 v_mul5_i_8_1 (0xFFFFFFFF)@uint64;
(*   %add16.i.8.1 = add nuw nsw i64 %shr13.i.8.1, %shr14.i.8.1 *)
adds discard_155 v_add16_i_8_1 v_shr13_i_8_1 v_shr14_i_8_1;
(* Heuristics applied. *)
assert true && eq discard_155 0@1;
assume eq discard_155 0 && true;
(*   %add17.i.8.1 = add nuw nsw i64 %add16.i.8.1, %and15.i.8.1 *)
adds discard_156 v_add17_i_8_1 v_add16_i_8_1 v_and15_i_8_1;
(* Heuristics applied. *)
assert true && eq discard_156 0@1;
assume eq discard_156 0 && true;
(*   %add18.i.8.1 = add nuw nsw i64 %add17.i.8.1, %shr11.i.8.1 *)
adds discard_157 v_add18_i_8_1 v_add17_i_8_1 v_shr11_i_8_1;
(* Heuristics applied. *)
assert true && eq discard_157 0@1;
assume eq discard_157 0 && true;
(*   %and19.i.8.1 = and i64 %add18.i.8.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_8_1 v_add18_i_8_1 (0xFFFFFFFF)@uint64;
(*   %and21.i.8.1 = and i64 %add18.i.8.1, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_8_1 v_add18_i_8_1 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_8_1 v_and21_i_8_1 + v_and19_i_8_1;
assume eq v_add18_i_8_1 v_and21_i_8_1 + v_and19_i_8_1 && true;
(*   %and22.i.8.1 = and i64 %mul5.i.8.1, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_8_1 v_mul5_i_8_1 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_8_1 v_and22_i_8_1 + v_and15_i_8_1;
assume eq v_mul5_i_8_1 v_and22_i_8_1 + v_and15_i_8_1 && true;
(*   %add23.i.8.1 = add i64 %and21.i.8.1, %and22.i.8.1 *)
adds discard_158 v_add23_i_8_1 v_and21_i_8_1 v_and22_i_8_1;
(* Heuristics applied. *)
assert true && eq discard_158 0@1;
assume eq discard_158 0 && true;
(*   %xor2569.i.8.1 = or i64 %add23.i.8.1, %and19.i.8.1 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_8_1 v_add23_i_8_1 v_and19_i_8_1;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_8_1 v_add23_i_8_1 + v_and19_i_8_1;
assume eq v_xor2569_i_8_1 v_add23_i_8_1 + v_and19_i_8_1 && true;
(*   %add16.8.1 = add i64 %xor68.i.8.1, %add16.8 *)
adds discard_159 v_add16_8_1 v_xor68_i_8_1 v_add16_8;
(*   %xor.i315.8.1 = xor i64 %add16.8.1, %shl.i.8.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_8_1 v_add16_8_1 v_shl_i_8_1;
(*   %xor1.i316.8.1 = xor i64 %shl.i.8.1, %add16.8 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_8_1 v_shl_i_8_1 v_add16_8;
(*   %or.i317.8.1 = or i64 %xor.i315.8.1, %xor1.i316.8.1 *)
(* You may need to modify here *)
or uint64 v_or_i317_8_1 v_xor_i315_8_1 v_xor1_i316_8_1;
(*   %xor2.i318.8.1 = xor i64 %or.i317.8.1, %add16.8.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_8_1 v_or_i317_8_1 v_add16_8_1;
(*   %shr.i319.8.1 = lshr i64 %xor2.i318.8.1, 63 *)
(* You may need to modify here *)
split v_shr_i319_8_1 tmp_to_be_used v_xor2_i318_8_1 63;
(* generated by python *)
assert true && limbs 64 [v_add16_8_1, v_shr_i319_8_1] = limbs 64 [v_xor68_i_8_1, 0@64] + limbs 64 [v_add16_8, 0@64];
assume limbs 64 [v_add16_8_1, v_shr_i319_8_1] = limbs 64 [v_xor68_i_8_1, 0] + limbs 64 [v_add16_8, 0] && true;
(*   %add20.8.1 = add i64 %shr.i319.8.1, %xor2569.i.8.1 *)
adds discard_160 v_add20_8_1 v_shr_i319_8_1 v_xor2569_i_8_1;
(* Heuristics applied. *)
assert true && eq discard_160 0@1;
assume eq discard_160 0 && true;
(*   %add21.8.1 = add i64 %add20.8.1, %add21.8 *)
adds discard_161 v_add21_8_1 v_add20_8_1 v_add21_8;
(* Heuristics applied. *)
assert true && eq discard_161 0@1;
assume eq discard_161 0 && true;
(*   %56 = xor i64 %add20.8.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v56 v_add20_8_1 (0x8000000000000000)@uint64;
(*   %xor2.i312.8.1 = and i64 %56, %add23.i.8.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_8_1 v56 v_add23_i_8_1;
(*   %xor.i303.8.1 = xor i64 %add21.8.1, %add20.8.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_8_1 v_add21_8_1 v_add20_8_1;
(*   %xor1.i304.8.1 = xor i64 %add20.8.1, %add21.8 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_8_1 v_add20_8_1 v_add21_8;
(*   %or.i305.8.1 = or i64 %xor.i303.8.1, %xor1.i304.8.1 *)
(* You may need to modify here *)
or uint64 v_or_i305_8_1 v_xor_i303_8_1 v_xor1_i304_8_1;
(*   %xor2.i306.8.1 = xor i64 %or.i305.8.1, %add21.8.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_8_1 v_or_i305_8_1 v_add21_8_1;
(*   %shr.i313328.8.1 = or i64 %xor2.i306.8.1, %xor2.i312.8.1 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_8_1 v_xor2_i306_8_1 v_xor2_i312_8_1;
(*   %or25327.8.1 = lshr i64 %shr.i313328.8.1, 63 *)
(* You may need to modify here *)
split v_or25327_8_1 tmp_to_be_used v_shr_i313328_8_1 63;
(* generated by python *)
assert true && limbs 64 [v_add21_8_1, v_or25327_8_1] = limbs 64 [v_shr_i319_8_1, 0@64] + limbs 64 [v_xor2569_i_8_1, 0@64] + limbs 64 [v_add21_8, 0@64];
assume limbs 64 [v_add21_8_1, v_or25327_8_1] = limbs 64 [v_shr_i319_8_1, 0] + limbs 64 [v_xor2569_i_8_1, 0] + limbs 64 [v_add21_8, 0] && true;
(*   %add27.8.1 = add nuw nsw i64 %or25327.8.1, %or25327.8 *)
adds discard_162 v_add27_8_1 v_or25327_8_1 v_or25327_8;
(* Heuristics applied. *)
assert true && eq discard_162 0@1;
assume eq discard_162 0 && true;
(*   %arrayidx9.8.2 = getelementptr inbounds i64, i64* %mc, i64 2 *)
(*   %57 = load i64, i64* %arrayidx9.8.2, align 8, !tbaa !3 *)
mov v57 mc_16;
(*   %58 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 6), align 16, !tbaa !3 *)
mov v58 p751p1_48;
(*   %and.i.8.2 = and i64 %57, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_8_2 v57 (0xFFFFFFFF)@uint64;
(*   %shr.i.8.2 = lshr i64 %57, 32 *)
(* You may need to modify here *)
split v_shr_i_8_2 tmp_to_be_used v57 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_8_2;
assume eq tmp_to_be_used v_and_i_8_2 && true;
(*   %and1.i.8.2 = and i64 %58, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_8_2 v58 (0xFFFFFFFF)@uint64;
(*   %shr2.i.8.2 = lshr i64 %58, 32 *)
(* You may need to modify here *)
split v_shr2_i_8_2 tmp_to_be_used v58 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_8_2;
assume eq tmp_to_be_used v_and1_i_8_2 && true;
(*   %mul.i.8.2 = mul nuw i64 %and1.i.8.2, %and.i.8.2 *)
mul v_mul_i_8_2 v_and1_i_8_2 v_and_i_8_2;
(*   %mul3.i.8.2 = mul nuw i64 %shr2.i.8.2, %and.i.8.2 *)
mul v_mul3_i_8_2 v_shr2_i_8_2 v_and_i_8_2;
(*   %mul4.i.8.2 = mul nuw i64 %and1.i.8.2, %shr.i.8.2 *)
mul v_mul4_i_8_2 v_and1_i_8_2 v_shr_i_8_2;
(*   %mul5.i.8.2 = mul nuw i64 %shr2.i.8.2, %shr.i.8.2 *)
mul v_mul5_i_8_2 v_shr2_i_8_2 v_shr_i_8_2;
(*   %and6.i.8.2 = and i64 %mul.i.8.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_8_2 v_mul_i_8_2 (0xFFFFFFFF)@uint64;
(*   %shr7.i.8.2 = lshr i64 %mul.i.8.2, 32 *)
(* You may need to modify here *)
split v_shr7_i_8_2 tmp_to_be_used v_mul_i_8_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_8_2;
assume eq tmp_to_be_used v_and6_i_8_2 && true;
(*   %and8.i.8.2 = and i64 %mul4.i.8.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_8_2 v_mul4_i_8_2 (0xFFFFFFFF)@uint64;
(*   %and9.i.8.2 = and i64 %mul3.i.8.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_8_2 v_mul3_i_8_2 (0xFFFFFFFF)@uint64;
(*   %add.i.8.2 = add nuw nsw i64 %shr7.i.8.2, %and8.i.8.2 *)
adds discard_163 v_add_i_8_2 v_shr7_i_8_2 v_and8_i_8_2;
(* Heuristics applied. *)
assert true && eq discard_163 0@1;
assume eq discard_163 0 && true;
(*   %add10.i.8.2 = add nuw nsw i64 %add.i.8.2, %and9.i.8.2 *)
adds discard_164 v_add10_i_8_2 v_add_i_8_2 v_and9_i_8_2;
(* Heuristics applied. *)
assert true && eq discard_164 0@1;
assume eq discard_164 0 && true;
(*   %shr11.i.8.2 = lshr i64 %add10.i.8.2, 32 *)
(* You may need to modify here *)
split v_shr11_i_8_2 tmp_to_be_used v_add10_i_8_2 32;
(*   %shl.i.8.2 = shl i64 %add10.i.8.2, 32 *)
shls discard_165 v_shl_i_8_2 v_add10_i_8_2 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_8_2 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_8_2 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.8.2 = or i64 %shl.i.8.2, %and6.i.8.2 *)
(* You may need to modify here *)
or uint64 v_xor68_i_8_2 v_shl_i_8_2 v_and6_i_8_2;
(* Heuristics applied. *)
assert true && eq v_xor68_i_8_2 v_shl_i_8_2 + v_and6_i_8_2;
assume eq v_xor68_i_8_2 v_shl_i_8_2 + v_and6_i_8_2 && true;
(*   %shr13.i.8.2 = lshr i64 %mul4.i.8.2, 32 *)
(* You may need to modify here *)
split v_shr13_i_8_2 tmp_to_be_used v_mul4_i_8_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_8_2;
assume eq tmp_to_be_used v_and8_i_8_2 && true;
(*   %shr14.i.8.2 = lshr i64 %mul3.i.8.2, 32 *)
(* You may need to modify here *)
split v_shr14_i_8_2 tmp_to_be_used v_mul3_i_8_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_8_2;
assume eq tmp_to_be_used v_and9_i_8_2 && true;
(*   %and15.i.8.2 = and i64 %mul5.i.8.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_8_2 v_mul5_i_8_2 (0xFFFFFFFF)@uint64;
(*   %add16.i.8.2 = add nuw nsw i64 %shr13.i.8.2, %shr14.i.8.2 *)
adds discard_166 v_add16_i_8_2 v_shr13_i_8_2 v_shr14_i_8_2;
(* Heuristics applied. *)
assert true && eq discard_166 0@1;
assume eq discard_166 0 && true;
(*   %add17.i.8.2 = add nuw nsw i64 %add16.i.8.2, %and15.i.8.2 *)
adds discard_167 v_add17_i_8_2 v_add16_i_8_2 v_and15_i_8_2;
(* Heuristics applied. *)
assert true && eq discard_167 0@1;
assume eq discard_167 0 && true;
(*   %add18.i.8.2 = add nuw nsw i64 %add17.i.8.2, %shr11.i.8.2 *)
adds discard_168 v_add18_i_8_2 v_add17_i_8_2 v_shr11_i_8_2;
(* Heuristics applied. *)
assert true && eq discard_168 0@1;
assume eq discard_168 0 && true;
(*   %and19.i.8.2 = and i64 %add18.i.8.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_8_2 v_add18_i_8_2 (0xFFFFFFFF)@uint64;
(*   %and21.i.8.2 = and i64 %add18.i.8.2, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_8_2 v_add18_i_8_2 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_8_2 v_and21_i_8_2 + v_and19_i_8_2;
assume eq v_add18_i_8_2 v_and21_i_8_2 + v_and19_i_8_2 && true;
(*   %and22.i.8.2 = and i64 %mul5.i.8.2, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_8_2 v_mul5_i_8_2 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_8_2 v_and22_i_8_2 + v_and15_i_8_2;
assume eq v_mul5_i_8_2 v_and22_i_8_2 + v_and15_i_8_2 && true;
(*   %add23.i.8.2 = add i64 %and21.i.8.2, %and22.i.8.2 *)
adds discard_169 v_add23_i_8_2 v_and21_i_8_2 v_and22_i_8_2;
(* Heuristics applied. *)
assert true && eq discard_169 0@1;
assume eq discard_169 0 && true;
(*   %xor2569.i.8.2 = or i64 %add23.i.8.2, %and19.i.8.2 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_8_2 v_add23_i_8_2 v_and19_i_8_2;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_8_2 v_add23_i_8_2 + v_and19_i_8_2;
assume eq v_xor2569_i_8_2 v_add23_i_8_2 + v_and19_i_8_2 && true;
(*   %add16.8.2 = add i64 %xor68.i.8.2, %add16.8.1 *)
adds discard_170 v_add16_8_2 v_xor68_i_8_2 v_add16_8_1;
(*   %xor.i315.8.2 = xor i64 %add16.8.2, %shl.i.8.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_8_2 v_add16_8_2 v_shl_i_8_2;
(*   %xor1.i316.8.2 = xor i64 %shl.i.8.2, %add16.8.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_8_2 v_shl_i_8_2 v_add16_8_1;
(*   %or.i317.8.2 = or i64 %xor.i315.8.2, %xor1.i316.8.2 *)
(* You may need to modify here *)
or uint64 v_or_i317_8_2 v_xor_i315_8_2 v_xor1_i316_8_2;
(*   %xor2.i318.8.2 = xor i64 %or.i317.8.2, %add16.8.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_8_2 v_or_i317_8_2 v_add16_8_2;
(*   %shr.i319.8.2 = lshr i64 %xor2.i318.8.2, 63 *)
(* You may need to modify here *)
split v_shr_i319_8_2 tmp_to_be_used v_xor2_i318_8_2 63;
(* generated by python *)
assert true && limbs 64 [v_add16_8_2, v_shr_i319_8_2] = limbs 64 [v_xor68_i_8_2, 0@64] + limbs 64 [v_add16_8_1, 0@64];
assume limbs 64 [v_add16_8_2, v_shr_i319_8_2] = limbs 64 [v_xor68_i_8_2, 0] + limbs 64 [v_add16_8_1, 0] && true;
(*   %add20.8.2 = add i64 %shr.i319.8.2, %xor2569.i.8.2 *)
adds discard_171 v_add20_8_2 v_shr_i319_8_2 v_xor2569_i_8_2;
(* Heuristics applied. *)
assert true && eq discard_171 0@1;
assume eq discard_171 0 && true;
(*   %add21.8.2 = add i64 %add20.8.2, %add21.8.1 *)
adds discard_172 v_add21_8_2 v_add20_8_2 v_add21_8_1;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_172 0@1; *)
(* assume eq discard_172 0 && true; *)
(*   %59 = xor i64 %add20.8.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v59 v_add20_8_2 (0x8000000000000000)@uint64;
(*   %xor2.i312.8.2 = and i64 %59, %add23.i.8.2 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_8_2 v59 v_add23_i_8_2;
(*   %xor.i303.8.2 = xor i64 %add21.8.2, %add20.8.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_8_2 v_add21_8_2 v_add20_8_2;
(*   %xor1.i304.8.2 = xor i64 %add20.8.2, %add21.8.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_8_2 v_add20_8_2 v_add21_8_1;
(*   %or.i305.8.2 = or i64 %xor.i303.8.2, %xor1.i304.8.2 *)
(* You may need to modify here *)
or uint64 v_or_i305_8_2 v_xor_i303_8_2 v_xor1_i304_8_2;
(*   %xor2.i306.8.2 = xor i64 %or.i305.8.2, %add21.8.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_8_2 v_or_i305_8_2 v_add21_8_2;
(*   %shr.i313328.8.2 = or i64 %xor2.i306.8.2, %xor2.i312.8.2 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_8_2 v_xor2_i306_8_2 v_xor2_i312_8_2;
(*   %or25327.8.2 = lshr i64 %shr.i313328.8.2, 63 *)
(* You may need to modify here *)
split v_or25327_8_2 tmp_to_be_used v_shr_i313328_8_2 63;
(* generated by python *)
assert true && limbs 64 [v_add21_8_2, v_or25327_8_2] = limbs 64 [v_shr_i319_8_2, 0@64] + limbs 64 [v_xor2569_i_8_2, 0@64] + limbs 64 [v_add21_8_1, 0@64];
assume limbs 64 [v_add21_8_2, v_or25327_8_2] = limbs 64 [v_shr_i319_8_2, 0] + limbs 64 [v_xor2569_i_8_2, 0] + limbs 64 [v_add21_8_1, 0] && true;
(*   %add27.8.2 = add nsw i64 %or25327.8.2, %add27.8.1 *)
adds discard_173 v_add27_8_2 v_or25327_8_2 v_add27_8_1;
(* Heuristics applied. *)
assert true && eq discard_173 0@1;
assume eq discard_173 0 && true;
(*   %arrayidx9.8.3 = getelementptr inbounds i64, i64* %mc, i64 3 *)
(*   %60 = load i64, i64* %arrayidx9.8.3, align 8, !tbaa !3 *)
mov v60 mc_24;
(*   %61 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 5), align 8, !tbaa !3 *)
mov v61 p751p1_40;
(*   %and.i.8.3 = and i64 %60, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_8_3 v60 (0xFFFFFFFF)@uint64;
(*   %shr.i.8.3 = lshr i64 %60, 32 *)
(* You may need to modify here *)
split v_shr_i_8_3 tmp_to_be_used v60 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_8_3;
assume eq tmp_to_be_used v_and_i_8_3 && true;
(*   %and1.i.8.3 = and i64 %61, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_8_3 v61 (0xFFFFFFFF)@uint64;
(*   %shr2.i.8.3 = lshr i64 %61, 32 *)
(* You may need to modify here *)
split v_shr2_i_8_3 tmp_to_be_used v61 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_8_3;
assume eq tmp_to_be_used v_and1_i_8_3 && true;
(*   %mul.i.8.3 = mul nuw i64 %and1.i.8.3, %and.i.8.3 *)
mul v_mul_i_8_3 v_and1_i_8_3 v_and_i_8_3;
(*   %mul3.i.8.3 = mul nuw i64 %shr2.i.8.3, %and.i.8.3 *)
mul v_mul3_i_8_3 v_shr2_i_8_3 v_and_i_8_3;
(*   %mul4.i.8.3 = mul nuw i64 %and1.i.8.3, %shr.i.8.3 *)
mul v_mul4_i_8_3 v_and1_i_8_3 v_shr_i_8_3;
(*   %mul5.i.8.3 = mul nuw i64 %shr2.i.8.3, %shr.i.8.3 *)
mul v_mul5_i_8_3 v_shr2_i_8_3 v_shr_i_8_3;
(*   %and6.i.8.3 = and i64 %mul.i.8.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_8_3 v_mul_i_8_3 (0xFFFFFFFF)@uint64;
(*   %shr7.i.8.3 = lshr i64 %mul.i.8.3, 32 *)
(* You may need to modify here *)
split v_shr7_i_8_3 tmp_to_be_used v_mul_i_8_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_8_3;
assume eq tmp_to_be_used v_and6_i_8_3 && true;
(*   %and8.i.8.3 = and i64 %mul4.i.8.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_8_3 v_mul4_i_8_3 (0xFFFFFFFF)@uint64;
(*   %and9.i.8.3 = and i64 %mul3.i.8.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_8_3 v_mul3_i_8_3 (0xFFFFFFFF)@uint64;
(*   %add.i.8.3 = add nuw nsw i64 %shr7.i.8.3, %and8.i.8.3 *)
adds discard_174 v_add_i_8_3 v_shr7_i_8_3 v_and8_i_8_3;
(* Heuristics applied. *)
assert true && eq discard_174 0@1;
assume eq discard_174 0 && true;
(*   %add10.i.8.3 = add nuw nsw i64 %add.i.8.3, %and9.i.8.3 *)
adds discard_175 v_add10_i_8_3 v_add_i_8_3 v_and9_i_8_3;
(* Heuristics applied. *)
assert true && eq discard_175 0@1;
assume eq discard_175 0 && true;
(*   %shr11.i.8.3 = lshr i64 %add10.i.8.3, 32 *)
(* You may need to modify here *)
split v_shr11_i_8_3 tmp_to_be_used v_add10_i_8_3 32;
(*   %shl.i.8.3 = shl i64 %add10.i.8.3, 32 *)
shls discard_176 v_shl_i_8_3 v_add10_i_8_3 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_8_3 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_8_3 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.8.3 = or i64 %shl.i.8.3, %and6.i.8.3 *)
(* You may need to modify here *)
or uint64 v_xor68_i_8_3 v_shl_i_8_3 v_and6_i_8_3;
(* Heuristics applied. *)
assert true && eq v_xor68_i_8_3 v_shl_i_8_3 + v_and6_i_8_3;
assume eq v_xor68_i_8_3 v_shl_i_8_3 + v_and6_i_8_3 && true;
(*   %shr13.i.8.3 = lshr i64 %mul4.i.8.3, 32 *)
(* You may need to modify here *)
split v_shr13_i_8_3 tmp_to_be_used v_mul4_i_8_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_8_3;
assume eq tmp_to_be_used v_and8_i_8_3 && true;
(*   %shr14.i.8.3 = lshr i64 %mul3.i.8.3, 32 *)
(* You may need to modify here *)
split v_shr14_i_8_3 tmp_to_be_used v_mul3_i_8_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_8_3;
assume eq tmp_to_be_used v_and9_i_8_3 && true;
(*   %and15.i.8.3 = and i64 %mul5.i.8.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_8_3 v_mul5_i_8_3 (0xFFFFFFFF)@uint64;
(*   %add16.i.8.3 = add nuw nsw i64 %shr13.i.8.3, %shr14.i.8.3 *)
adds discard_177 v_add16_i_8_3 v_shr13_i_8_3 v_shr14_i_8_3;
(* Heuristics applied. *)
assert true && eq discard_177 0@1;
assume eq discard_177 0 && true;
(*   %add17.i.8.3 = add nuw nsw i64 %add16.i.8.3, %and15.i.8.3 *)
adds discard_178 v_add17_i_8_3 v_add16_i_8_3 v_and15_i_8_3;
(* Heuristics applied. *)
assert true && eq discard_178 0@1;
assume eq discard_178 0 && true;
(*   %add18.i.8.3 = add nuw nsw i64 %add17.i.8.3, %shr11.i.8.3 *)
adds discard_179 v_add18_i_8_3 v_add17_i_8_3 v_shr11_i_8_3;
(* Heuristics applied. *)
assert true && eq discard_179 0@1;
assume eq discard_179 0 && true;
(*   %and19.i.8.3 = and i64 %add18.i.8.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_8_3 v_add18_i_8_3 (0xFFFFFFFF)@uint64;
(*   %and21.i.8.3 = and i64 %add18.i.8.3, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_8_3 v_add18_i_8_3 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_8_3 v_and21_i_8_3 + v_and19_i_8_3;
assume eq v_add18_i_8_3 v_and21_i_8_3 + v_and19_i_8_3 && true;
(*   %and22.i.8.3 = and i64 %mul5.i.8.3, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_8_3 v_mul5_i_8_3 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_8_3 v_and22_i_8_3 + v_and15_i_8_3;
assume eq v_mul5_i_8_3 v_and22_i_8_3 + v_and15_i_8_3 && true;
(*   %add23.i.8.3 = add i64 %and21.i.8.3, %and22.i.8.3 *)
adds discard_180 v_add23_i_8_3 v_and21_i_8_3 v_and22_i_8_3;
(* Heuristics applied. *)
assert true && eq discard_180 0@1;
assume eq discard_180 0 && true;
(*   %xor2569.i.8.3 = or i64 %add23.i.8.3, %and19.i.8.3 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_8_3 v_add23_i_8_3 v_and19_i_8_3;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_8_3 v_add23_i_8_3 + v_and19_i_8_3;
assume eq v_xor2569_i_8_3 v_add23_i_8_3 + v_and19_i_8_3 && true;
(*   %add16.8.3 = add i64 %xor68.i.8.3, %add16.8.2 *)
adds discard_181 v_add16_8_3 v_xor68_i_8_3 v_add16_8_2;
(*   %xor.i315.8.3 = xor i64 %add16.8.3, %shl.i.8.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_8_3 v_add16_8_3 v_shl_i_8_3;
(*   %xor1.i316.8.3 = xor i64 %shl.i.8.3, %add16.8.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_8_3 v_shl_i_8_3 v_add16_8_2;
(*   %or.i317.8.3 = or i64 %xor.i315.8.3, %xor1.i316.8.3 *)
(* You may need to modify here *)
or uint64 v_or_i317_8_3 v_xor_i315_8_3 v_xor1_i316_8_3;
(*   %xor2.i318.8.3 = xor i64 %or.i317.8.3, %add16.8.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_8_3 v_or_i317_8_3 v_add16_8_3;
(*   %shr.i319.8.3 = lshr i64 %xor2.i318.8.3, 63 *)
(* You may need to modify here *)
split v_shr_i319_8_3 tmp_to_be_used v_xor2_i318_8_3 63;
(* generated by python *)
assert true && limbs 64 [v_add16_8_3, v_shr_i319_8_3] = limbs 64 [v_xor68_i_8_3, 0@64] + limbs 64 [v_add16_8_2, 0@64];
assume limbs 64 [v_add16_8_3, v_shr_i319_8_3] = limbs 64 [v_xor68_i_8_3, 0] + limbs 64 [v_add16_8_2, 0] && true;
(*   %add20.8.3 = add i64 %shr.i319.8.3, %xor2569.i.8.3 *)
adds discard_182 v_add20_8_3 v_shr_i319_8_3 v_xor2569_i_8_3;
(* Heuristics applied. *)
assert true && eq discard_182 0@1;
assume eq discard_182 0 && true;
(*   %add21.8.3 = add i64 %add20.8.3, %add21.8.2 *)
adds discard_183 v_add21_8_3 v_add20_8_3 v_add21_8_2;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_183 0@1; *)
(* assume eq discard_183 0 && true; *)
(*   %62 = xor i64 %add20.8.3, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v62 v_add20_8_3 (0x8000000000000000)@uint64;
(*   %xor2.i312.8.3 = and i64 %62, %add23.i.8.3 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_8_3 v62 v_add23_i_8_3;
(*   %xor.i303.8.3 = xor i64 %add21.8.3, %add20.8.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_8_3 v_add21_8_3 v_add20_8_3;
(*   %xor1.i304.8.3 = xor i64 %add20.8.3, %add21.8.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_8_3 v_add20_8_3 v_add21_8_2;
(*   %or.i305.8.3 = or i64 %xor.i303.8.3, %xor1.i304.8.3 *)
(* You may need to modify here *)
or uint64 v_or_i305_8_3 v_xor_i303_8_3 v_xor1_i304_8_3;
(*   %xor2.i306.8.3 = xor i64 %or.i305.8.3, %add21.8.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_8_3 v_or_i305_8_3 v_add21_8_3;
(*   %shr.i313328.8.3 = or i64 %xor2.i306.8.3, %xor2.i312.8.3 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_8_3 v_xor2_i306_8_3 v_xor2_i312_8_3;
(*   %or25327.8.3 = lshr i64 %shr.i313328.8.3, 63 *)
(* You may need to modify here *)
split v_or25327_8_3 tmp_to_be_used v_shr_i313328_8_3 63;
(* generated by python *)
assert true && limbs 64 [v_add21_8_3, v_or25327_8_3] = limbs 64 [v_shr_i319_8_3, 0@64] + limbs 64 [v_xor2569_i_8_3, 0@64] + limbs 64 [v_add21_8_2, 0@64];
assume limbs 64 [v_add21_8_3, v_or25327_8_3] = limbs 64 [v_shr_i319_8_3, 0] + limbs 64 [v_xor2569_i_8_3, 0] + limbs 64 [v_add21_8_2, 0] && true;
(*   %add27.8.3 = add nsw i64 %or25327.8.3, %add27.8.2 *)
adds discard_184 v_add27_8_3 v_or25327_8_3 v_add27_8_2;
(* Heuristics applied. *)
assert true && eq discard_184 0@1;
assume eq discard_184 0 && true;
(*   %arrayidx34.8 = getelementptr inbounds i64, i64* %ma, i64 8 *)
(*   %63 = load i64, i64* %arrayidx34.8, align 8, !tbaa !3 *)
mov v63 ma_64;
(*   %add35.8 = add i64 %63, %add16.8.3 *)
adds discard_185 v_add35_8 v63 v_add16_8_3;
(*   %xor.i297.8 = xor i64 %add35.8, %add16.8.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i297_8 v_add35_8 v_add16_8_3;
(*   %xor1.i298.8 = xor i64 %63, %add16.8.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i298_8 v63 v_add16_8_3;
(*   %or.i299.8 = or i64 %xor.i297.8, %xor1.i298.8 *)
(* You may need to modify here *)
or uint64 v_or_i299_8 v_xor_i297_8 v_xor1_i298_8;
(*   %xor2.i300.8 = xor i64 %or.i299.8, %add35.8 *)
(* You may need to modify here *)
xor uint64 v_xor2_i300_8 v_or_i299_8 v_add35_8;
(*   %shr.i301.8 = lshr i64 %xor2.i300.8, 63 *)
(* You may need to modify here *)
split v_shr_i301_8 tmp_to_be_used v_xor2_i300_8 63;
(* generated by python *)
assert true && limbs 64 [v_add35_8, v_shr_i301_8] = limbs 64 [v63, 0@64] + limbs 64 [v_add16_8_3, 0@64];
assume limbs 64 [v_add35_8, v_shr_i301_8] = limbs 64 [v63, 0] + limbs 64 [v_add16_8_3, 0] && true;
(*   %add41.8 = add i64 %shr.i301.8, %add21.8.3 *)
adds discard_186 v_add41_8 v_shr_i301_8 v_add21_8_3;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_186 0@1; *)
(* assume eq discard_186 0 && true; *)
(*   %arrayidx50.8 = getelementptr inbounds i64, i64* %mc, i64 8 *)
(*   store i64 %add35.8, i64* %arrayidx50.8, align 8, !tbaa !3 *)
mov mc_64 v_add35_8;
(*   %64 = xor i64 %add41.8, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v64 v_add41_8 (0x8000000000000000)@uint64;
(*   %xor2.i294.8 = and i64 %64, %add21.8.3 *)
(* You may need to modify here *)
and uint64 v_xor2_i294_8 v64 v_add21_8_3;
(*   %shr.i295.8 = lshr i64 %xor2.i294.8, 63 *)
(* You may need to modify here *)
split v_shr_i295_8 tmp_to_be_used v_xor2_i294_8 63;
(* generated by python *)
assert true && limbs 64 [v_add41_8, v_shr_i295_8] = limbs 64 [v_shr_i301_8, 0@64] + limbs 64 [v_add21_8_3, 0@64];
assume limbs 64 [v_add41_8, v_shr_i295_8] = limbs 64 [v_shr_i301_8, 0] + limbs 64 [v_add21_8_3, 0] && true;
(*   %add48.8 = add i64 %shr.i295.8, %add27.8.3 *)
adds discard_187 v_add48_8 v_shr_i295_8 v_add27_8_3;
(* Heuristics applied. *)
assert true && eq discard_187 0@1;
assume eq discard_187 0 && true;
(*   %65 = load i64, i64* %mc, align 8, !tbaa !3 *)
mov v65 mc_0;
(*   %66 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 9), align 8, !tbaa !3 *)
mov v66 p751p1_72;
(*   %and.i.9 = and i64 %65, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_9 v65 (0xFFFFFFFF)@uint64;
(*   %shr.i.9 = lshr i64 %65, 32 *)
(* You may need to modify here *)
split v_shr_i_9 tmp_to_be_used v65 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_9;
assume eq tmp_to_be_used v_and_i_9 && true;
(*   %and1.i.9 = and i64 %66, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_9 v66 (0xFFFFFFFF)@uint64;
(*   %shr2.i.9 = lshr i64 %66, 32 *)
(* You may need to modify here *)
split v_shr2_i_9 tmp_to_be_used v66 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_9;
assume eq tmp_to_be_used v_and1_i_9 && true;
(*   %mul.i.9 = mul nuw i64 %and1.i.9, %and.i.9 *)
mul v_mul_i_9 v_and1_i_9 v_and_i_9;
(*   %mul3.i.9 = mul nuw i64 %shr2.i.9, %and.i.9 *)
mul v_mul3_i_9 v_shr2_i_9 v_and_i_9;
(*   %mul4.i.9 = mul nuw i64 %and1.i.9, %shr.i.9 *)
mul v_mul4_i_9 v_and1_i_9 v_shr_i_9;
(*   %mul5.i.9 = mul nuw i64 %shr2.i.9, %shr.i.9 *)
mul v_mul5_i_9 v_shr2_i_9 v_shr_i_9;
(*   %and6.i.9 = and i64 %mul.i.9, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_9 v_mul_i_9 (0xFFFFFFFF)@uint64;
(*   %shr7.i.9 = lshr i64 %mul.i.9, 32 *)
(* You may need to modify here *)
split v_shr7_i_9 tmp_to_be_used v_mul_i_9 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_9;
assume eq tmp_to_be_used v_and6_i_9 && true;
(*   %and8.i.9 = and i64 %mul4.i.9, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_9 v_mul4_i_9 (0xFFFFFFFF)@uint64;
(*   %and9.i.9 = and i64 %mul3.i.9, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_9 v_mul3_i_9 (0xFFFFFFFF)@uint64;
(*   %add.i.9 = add nuw nsw i64 %shr7.i.9, %and8.i.9 *)
adds discard_188 v_add_i_9 v_shr7_i_9 v_and8_i_9;
(* Heuristics applied. *)
assert true && eq discard_188 0@1;
assume eq discard_188 0 && true;
(*   %add10.i.9 = add nuw nsw i64 %add.i.9, %and9.i.9 *)
adds discard_189 v_add10_i_9 v_add_i_9 v_and9_i_9;
(* Heuristics applied. *)
assert true && eq discard_189 0@1;
assume eq discard_189 0 && true;
(*   %shr11.i.9 = lshr i64 %add10.i.9, 32 *)
(* You may need to modify here *)
split v_shr11_i_9 tmp_to_be_used v_add10_i_9 32;
(*   %shl.i.9 = shl i64 %add10.i.9, 32 *)
shls discard_190 v_shl_i_9 v_add10_i_9 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_9 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_9 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.9 = or i64 %shl.i.9, %and6.i.9 *)
(* You may need to modify here *)
or uint64 v_xor68_i_9 v_shl_i_9 v_and6_i_9;
(* Heuristics applied. *)
assert true && eq v_xor68_i_9 v_shl_i_9 + v_and6_i_9;
assume eq v_xor68_i_9 v_shl_i_9 + v_and6_i_9 && true;
(*   %shr13.i.9 = lshr i64 %mul4.i.9, 32 *)
(* You may need to modify here *)
split v_shr13_i_9 tmp_to_be_used v_mul4_i_9 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_9;
assume eq tmp_to_be_used v_and8_i_9 && true;
(*   %shr14.i.9 = lshr i64 %mul3.i.9, 32 *)
(* You may need to modify here *)
split v_shr14_i_9 tmp_to_be_used v_mul3_i_9 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_9;
assume eq tmp_to_be_used v_and9_i_9 && true;
(*   %and15.i.9 = and i64 %mul5.i.9, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_9 v_mul5_i_9 (0xFFFFFFFF)@uint64;
(*   %add16.i.9 = add nuw nsw i64 %shr13.i.9, %shr14.i.9 *)
adds discard_191 v_add16_i_9 v_shr13_i_9 v_shr14_i_9;
(* Heuristics applied. *)
assert true && eq discard_191 0@1;
assume eq discard_191 0 && true;
(*   %add17.i.9 = add nuw nsw i64 %add16.i.9, %and15.i.9 *)
adds discard_192 v_add17_i_9 v_add16_i_9 v_and15_i_9;
(* Heuristics applied. *)
assert true && eq discard_192 0@1;
assume eq discard_192 0 && true;
(*   %add18.i.9 = add nuw nsw i64 %add17.i.9, %shr11.i.9 *)
adds discard_193 v_add18_i_9 v_add17_i_9 v_shr11_i_9;
(* Heuristics applied. *)
assert true && eq discard_193 0@1;
assume eq discard_193 0 && true;
(*   %and19.i.9 = and i64 %add18.i.9, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_9 v_add18_i_9 (0xFFFFFFFF)@uint64;
(*   %and21.i.9 = and i64 %add18.i.9, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_9 v_add18_i_9 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_9 v_and21_i_9 + v_and19_i_9;
assume eq v_add18_i_9 v_and21_i_9 + v_and19_i_9 && true;
(*   %and22.i.9 = and i64 %mul5.i.9, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_9 v_mul5_i_9 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_9 v_and22_i_9 + v_and15_i_9;
assume eq v_mul5_i_9 v_and22_i_9 + v_and15_i_9 && true;
(*   %add23.i.9 = add i64 %and21.i.9, %and22.i.9 *)
adds discard_194 v_add23_i_9 v_and21_i_9 v_and22_i_9;
(* Heuristics applied. *)
assert true && eq discard_194 0@1;
assume eq discard_194 0 && true;
(*   %xor2569.i.9 = or i64 %add23.i.9, %and19.i.9 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_9 v_add23_i_9 v_and19_i_9;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_9 v_add23_i_9 + v_and19_i_9;
assume eq v_xor2569_i_9 v_add23_i_9 + v_and19_i_9 && true;
(*   %add16.9 = add i64 %xor68.i.9, %add41.8 *)
adds discard_195 v_add16_9 v_xor68_i_9 v_add41_8;
(*   %xor.i315.9 = xor i64 %add16.9, %shl.i.9 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_9 v_add16_9 v_shl_i_9;
(*   %xor1.i316.9 = xor i64 %shl.i.9, %add41.8 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_9 v_shl_i_9 v_add41_8;
(*   %or.i317.9 = or i64 %xor.i315.9, %xor1.i316.9 *)
(* You may need to modify here *)
or uint64 v_or_i317_9 v_xor_i315_9 v_xor1_i316_9;
(*   %xor2.i318.9 = xor i64 %or.i317.9, %add16.9 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_9 v_or_i317_9 v_add16_9;
(*   %shr.i319.9 = lshr i64 %xor2.i318.9, 63 *)
(* You may need to modify here *)
split v_shr_i319_9 tmp_to_be_used v_xor2_i318_9 63;
(* generated by python *)
assert true && limbs 64 [v_add16_9, v_shr_i319_9] = limbs 64 [v_xor68_i_9, 0@64] + limbs 64 [v_add41_8, 0@64];
assume limbs 64 [v_add16_9, v_shr_i319_9] = limbs 64 [v_xor68_i_9, 0] + limbs 64 [v_add41_8, 0] && true;
(*   %add20.9 = add i64 %shr.i319.9, %xor2569.i.9 *)
adds discard_196 v_add20_9 v_shr_i319_9 v_xor2569_i_9;
(* Heuristics applied. *)
assert true && eq discard_196 0@1;
assume eq discard_196 0 && true;
(*   %add21.9 = add i64 %add20.9, %add48.8 *)
adds discard_197 v_add21_9 v_add20_9 v_add48_8;
(* Heuristics applied. *)
assert true && eq discard_197 0@1;
assume eq discard_197 0 && true;
(*   %67 = xor i64 %add20.9, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v67 v_add20_9 (0x8000000000000000)@uint64;
(*   %xor2.i312.9 = and i64 %67, %add23.i.9 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_9 v67 v_add23_i_9;
(*   %xor.i303.9 = xor i64 %add21.9, %add20.9 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_9 v_add21_9 v_add20_9;
(*   %xor1.i304.9 = xor i64 %add20.9, %add48.8 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_9 v_add20_9 v_add48_8;
(*   %or.i305.9 = or i64 %xor.i303.9, %xor1.i304.9 *)
(* You may need to modify here *)
or uint64 v_or_i305_9 v_xor_i303_9 v_xor1_i304_9;
(*   %xor2.i306.9 = xor i64 %or.i305.9, %add21.9 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_9 v_or_i305_9 v_add21_9;
(*   %shr.i313328.9 = or i64 %xor2.i306.9, %xor2.i312.9 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_9 v_xor2_i306_9 v_xor2_i312_9;
(*   %or25327.9 = lshr i64 %shr.i313328.9, 63 *)
(* You may need to modify here *)
split v_or25327_9 tmp_to_be_used v_shr_i313328_9 63;
(* generated by python *)
assert true && limbs 64 [v_add21_9, v_or25327_9] = limbs 64 [v_shr_i319_9, 0@64] + limbs 64 [v_xor2569_i_9, 0@64] + limbs 64 [v_add48_8, 0@64];
assume limbs 64 [v_add21_9, v_or25327_9] = limbs 64 [v_shr_i319_9, 0] + limbs 64 [v_xor2569_i_9, 0] + limbs 64 [v_add48_8, 0] && true;
(*   %arrayidx9.9.1 = getelementptr inbounds i64, i64* %mc, i64 1 *)
(*   %68 = load i64, i64* %arrayidx9.9.1, align 8, !tbaa !3 *)
mov v68 mc_8;
(*   %69 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 8), align 16, !tbaa !3 *)
mov v69 p751p1_64;
(*   %and.i.9.1 = and i64 %68, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_9_1 v68 (0xFFFFFFFF)@uint64;
(*   %shr.i.9.1 = lshr i64 %68, 32 *)
(* You may need to modify here *)
split v_shr_i_9_1 tmp_to_be_used v68 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_9_1;
assume eq tmp_to_be_used v_and_i_9_1 && true;
(*   %and1.i.9.1 = and i64 %69, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_9_1 v69 (0xFFFFFFFF)@uint64;
(*   %shr2.i.9.1 = lshr i64 %69, 32 *)
(* You may need to modify here *)
split v_shr2_i_9_1 tmp_to_be_used v69 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_9_1;
assume eq tmp_to_be_used v_and1_i_9_1 && true;
(*   %mul.i.9.1 = mul nuw i64 %and1.i.9.1, %and.i.9.1 *)
mul v_mul_i_9_1 v_and1_i_9_1 v_and_i_9_1;
(*   %mul3.i.9.1 = mul nuw i64 %shr2.i.9.1, %and.i.9.1 *)
mul v_mul3_i_9_1 v_shr2_i_9_1 v_and_i_9_1;
(*   %mul4.i.9.1 = mul nuw i64 %and1.i.9.1, %shr.i.9.1 *)
mul v_mul4_i_9_1 v_and1_i_9_1 v_shr_i_9_1;
(*   %mul5.i.9.1 = mul nuw i64 %shr2.i.9.1, %shr.i.9.1 *)
mul v_mul5_i_9_1 v_shr2_i_9_1 v_shr_i_9_1;
(*   %and6.i.9.1 = and i64 %mul.i.9.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_9_1 v_mul_i_9_1 (0xFFFFFFFF)@uint64;
(*   %shr7.i.9.1 = lshr i64 %mul.i.9.1, 32 *)
(* You may need to modify here *)
split v_shr7_i_9_1 tmp_to_be_used v_mul_i_9_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_9_1;
assume eq tmp_to_be_used v_and6_i_9_1 && true;
(*   %and8.i.9.1 = and i64 %mul4.i.9.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_9_1 v_mul4_i_9_1 (0xFFFFFFFF)@uint64;
(*   %and9.i.9.1 = and i64 %mul3.i.9.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_9_1 v_mul3_i_9_1 (0xFFFFFFFF)@uint64;
(*   %add.i.9.1 = add nuw nsw i64 %shr7.i.9.1, %and8.i.9.1 *)
adds discard_198 v_add_i_9_1 v_shr7_i_9_1 v_and8_i_9_1;
(* Heuristics applied. *)
assert true && eq discard_198 0@1;
assume eq discard_198 0 && true;
(*   %add10.i.9.1 = add nuw nsw i64 %add.i.9.1, %and9.i.9.1 *)
adds discard_199 v_add10_i_9_1 v_add_i_9_1 v_and9_i_9_1;
(* Heuristics applied. *)
assert true && eq discard_199 0@1;
assume eq discard_199 0 && true;
(*   %shr11.i.9.1 = lshr i64 %add10.i.9.1, 32 *)
(* You may need to modify here *)
split v_shr11_i_9_1 tmp_to_be_used v_add10_i_9_1 32;
(*   %shl.i.9.1 = shl i64 %add10.i.9.1, 32 *)
shls discard_200 v_shl_i_9_1 v_add10_i_9_1 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_9_1 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_9_1 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.9.1 = or i64 %shl.i.9.1, %and6.i.9.1 *)
(* You may need to modify here *)
or uint64 v_xor68_i_9_1 v_shl_i_9_1 v_and6_i_9_1;
(* Heuristics applied. *)
assert true && eq v_xor68_i_9_1 v_shl_i_9_1 + v_and6_i_9_1;
assume eq v_xor68_i_9_1 v_shl_i_9_1 + v_and6_i_9_1 && true;
(*   %shr13.i.9.1 = lshr i64 %mul4.i.9.1, 32 *)
(* You may need to modify here *)
split v_shr13_i_9_1 tmp_to_be_used v_mul4_i_9_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_9_1;
assume eq tmp_to_be_used v_and8_i_9_1 && true;
(*   %shr14.i.9.1 = lshr i64 %mul3.i.9.1, 32 *)
(* You may need to modify here *)
split v_shr14_i_9_1 tmp_to_be_used v_mul3_i_9_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_9_1;
assume eq tmp_to_be_used v_and9_i_9_1 && true;
(*   %and15.i.9.1 = and i64 %mul5.i.9.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_9_1 v_mul5_i_9_1 (0xFFFFFFFF)@uint64;
(*   %add16.i.9.1 = add nuw nsw i64 %shr13.i.9.1, %shr14.i.9.1 *)
adds discard_201 v_add16_i_9_1 v_shr13_i_9_1 v_shr14_i_9_1;
(* Heuristics applied. *)
assert true && eq discard_201 0@1;
assume eq discard_201 0 && true;
(*   %add17.i.9.1 = add nuw nsw i64 %add16.i.9.1, %and15.i.9.1 *)
adds discard_202 v_add17_i_9_1 v_add16_i_9_1 v_and15_i_9_1;
(* Heuristics applied. *)
assert true && eq discard_202 0@1;
assume eq discard_202 0 && true;
(*   %add18.i.9.1 = add nuw nsw i64 %add17.i.9.1, %shr11.i.9.1 *)
adds discard_203 v_add18_i_9_1 v_add17_i_9_1 v_shr11_i_9_1;
(* Heuristics applied. *)
assert true && eq discard_203 0@1;
assume eq discard_203 0 && true;
(*   %and19.i.9.1 = and i64 %add18.i.9.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_9_1 v_add18_i_9_1 (0xFFFFFFFF)@uint64;
(*   %and21.i.9.1 = and i64 %add18.i.9.1, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_9_1 v_add18_i_9_1 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_9_1 v_and21_i_9_1 + v_and19_i_9_1;
assume eq v_add18_i_9_1 v_and21_i_9_1 + v_and19_i_9_1 && true;
(*   %and22.i.9.1 = and i64 %mul5.i.9.1, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_9_1 v_mul5_i_9_1 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_9_1 v_and22_i_9_1 + v_and15_i_9_1;
assume eq v_mul5_i_9_1 v_and22_i_9_1 + v_and15_i_9_1 && true;
(*   %add23.i.9.1 = add i64 %and21.i.9.1, %and22.i.9.1 *)
adds discard_204 v_add23_i_9_1 v_and21_i_9_1 v_and22_i_9_1;
(* Heuristics applied. *)
assert true && eq discard_204 0@1;
assume eq discard_204 0 && true;
(*   %xor2569.i.9.1 = or i64 %add23.i.9.1, %and19.i.9.1 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_9_1 v_add23_i_9_1 v_and19_i_9_1;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_9_1 v_add23_i_9_1 + v_and19_i_9_1;
assume eq v_xor2569_i_9_1 v_add23_i_9_1 + v_and19_i_9_1 && true;
(*   %add16.9.1 = add i64 %xor68.i.9.1, %add16.9 *)
adds discard_205 v_add16_9_1 v_xor68_i_9_1 v_add16_9;
(*   %xor.i315.9.1 = xor i64 %add16.9.1, %shl.i.9.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_9_1 v_add16_9_1 v_shl_i_9_1;
(*   %xor1.i316.9.1 = xor i64 %shl.i.9.1, %add16.9 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_9_1 v_shl_i_9_1 v_add16_9;
(*   %or.i317.9.1 = or i64 %xor.i315.9.1, %xor1.i316.9.1 *)
(* You may need to modify here *)
or uint64 v_or_i317_9_1 v_xor_i315_9_1 v_xor1_i316_9_1;
(*   %xor2.i318.9.1 = xor i64 %or.i317.9.1, %add16.9.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_9_1 v_or_i317_9_1 v_add16_9_1;
(*   %shr.i319.9.1 = lshr i64 %xor2.i318.9.1, 63 *)
(* You may need to modify here *)
split v_shr_i319_9_1 tmp_to_be_used v_xor2_i318_9_1 63;
(* generated by python *)
assert true && limbs 64 [v_add16_9_1, v_shr_i319_9_1] = limbs 64 [v_xor68_i_9_1, 0@64] + limbs 64 [v_add16_9, 0@64];
assume limbs 64 [v_add16_9_1, v_shr_i319_9_1] = limbs 64 [v_xor68_i_9_1, 0] + limbs 64 [v_add16_9, 0] && true;
(*   %add20.9.1 = add i64 %shr.i319.9.1, %xor2569.i.9.1 *)
adds discard_206 v_add20_9_1 v_shr_i319_9_1 v_xor2569_i_9_1;
(* Heuristics applied. *)
assert true && eq discard_206 0@1;
assume eq discard_206 0 && true;
(*   %add21.9.1 = add i64 %add20.9.1, %add21.9 *)
adds discard_207 v_add21_9_1 v_add20_9_1 v_add21_9;
(* Heuristics applied. *)
assert true && eq discard_207 0@1;
assume eq discard_207 0 && true;
(*   %70 = xor i64 %add20.9.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v70 v_add20_9_1 (0x8000000000000000)@uint64;
(*   %xor2.i312.9.1 = and i64 %70, %add23.i.9.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_9_1 v70 v_add23_i_9_1;
(*   %xor.i303.9.1 = xor i64 %add21.9.1, %add20.9.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_9_1 v_add21_9_1 v_add20_9_1;
(*   %xor1.i304.9.1 = xor i64 %add20.9.1, %add21.9 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_9_1 v_add20_9_1 v_add21_9;
(*   %or.i305.9.1 = or i64 %xor.i303.9.1, %xor1.i304.9.1 *)
(* You may need to modify here *)
or uint64 v_or_i305_9_1 v_xor_i303_9_1 v_xor1_i304_9_1;
(*   %xor2.i306.9.1 = xor i64 %or.i305.9.1, %add21.9.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_9_1 v_or_i305_9_1 v_add21_9_1;
(*   %shr.i313328.9.1 = or i64 %xor2.i306.9.1, %xor2.i312.9.1 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_9_1 v_xor2_i306_9_1 v_xor2_i312_9_1;
(*   %or25327.9.1 = lshr i64 %shr.i313328.9.1, 63 *)
(* You may need to modify here *)
split v_or25327_9_1 tmp_to_be_used v_shr_i313328_9_1 63;
(* generated by python *)
assert true && limbs 64 [v_add21_9_1, v_or25327_9_1] = limbs 64 [v_shr_i319_9_1, 0@64] + limbs 64 [v_xor2569_i_9_1, 0@64] + limbs 64 [v_add21_9, 0@64];
assume limbs 64 [v_add21_9_1, v_or25327_9_1] = limbs 64 [v_shr_i319_9_1, 0] + limbs 64 [v_xor2569_i_9_1, 0] + limbs 64 [v_add21_9, 0] && true;
(*   %add27.9.1 = add nuw nsw i64 %or25327.9.1, %or25327.9 *)
adds discard_208 v_add27_9_1 v_or25327_9_1 v_or25327_9;
(* Heuristics applied. *)
assert true && eq discard_208 0@1;
assume eq discard_208 0 && true;
(*   %arrayidx9.9.2 = getelementptr inbounds i64, i64* %mc, i64 2 *)
(*   %71 = load i64, i64* %arrayidx9.9.2, align 8, !tbaa !3 *)
mov v71 mc_16;
(*   %72 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 7), align 8, !tbaa !3 *)
mov v72 p751p1_56;
(*   %and.i.9.2 = and i64 %71, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_9_2 v71 (0xFFFFFFFF)@uint64;
(*   %shr.i.9.2 = lshr i64 %71, 32 *)
(* You may need to modify here *)
split v_shr_i_9_2 tmp_to_be_used v71 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_9_2;
assume eq tmp_to_be_used v_and_i_9_2 && true;
(*   %and1.i.9.2 = and i64 %72, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_9_2 v72 (0xFFFFFFFF)@uint64;
(*   %shr2.i.9.2 = lshr i64 %72, 32 *)
(* You may need to modify here *)
split v_shr2_i_9_2 tmp_to_be_used v72 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_9_2;
assume eq tmp_to_be_used v_and1_i_9_2 && true;
(*   %mul.i.9.2 = mul nuw i64 %and1.i.9.2, %and.i.9.2 *)
mul v_mul_i_9_2 v_and1_i_9_2 v_and_i_9_2;
(*   %mul3.i.9.2 = mul nuw i64 %shr2.i.9.2, %and.i.9.2 *)
mul v_mul3_i_9_2 v_shr2_i_9_2 v_and_i_9_2;
(*   %mul4.i.9.2 = mul nuw i64 %and1.i.9.2, %shr.i.9.2 *)
mul v_mul4_i_9_2 v_and1_i_9_2 v_shr_i_9_2;
(*   %mul5.i.9.2 = mul nuw i64 %shr2.i.9.2, %shr.i.9.2 *)
mul v_mul5_i_9_2 v_shr2_i_9_2 v_shr_i_9_2;
(*   %and6.i.9.2 = and i64 %mul.i.9.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_9_2 v_mul_i_9_2 (0xFFFFFFFF)@uint64;
(*   %shr7.i.9.2 = lshr i64 %mul.i.9.2, 32 *)
(* You may need to modify here *)
split v_shr7_i_9_2 tmp_to_be_used v_mul_i_9_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_9_2;
assume eq tmp_to_be_used v_and6_i_9_2 && true;
(*   %and8.i.9.2 = and i64 %mul4.i.9.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_9_2 v_mul4_i_9_2 (0xFFFFFFFF)@uint64;
(*   %and9.i.9.2 = and i64 %mul3.i.9.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_9_2 v_mul3_i_9_2 (0xFFFFFFFF)@uint64;
(*   %add.i.9.2 = add nuw nsw i64 %shr7.i.9.2, %and8.i.9.2 *)
adds discard_209 v_add_i_9_2 v_shr7_i_9_2 v_and8_i_9_2;
(* Heuristics applied. *)
assert true && eq discard_209 0@1;
assume eq discard_209 0 && true;
(*   %add10.i.9.2 = add nuw nsw i64 %add.i.9.2, %and9.i.9.2 *)
adds discard_210 v_add10_i_9_2 v_add_i_9_2 v_and9_i_9_2;
(* Heuristics applied. *)
assert true && eq discard_210 0@1;
assume eq discard_210 0 && true;
(*   %shr11.i.9.2 = lshr i64 %add10.i.9.2, 32 *)
(* You may need to modify here *)
split v_shr11_i_9_2 tmp_to_be_used v_add10_i_9_2 32;
(*   %shl.i.9.2 = shl i64 %add10.i.9.2, 32 *)
shls discard_211 v_shl_i_9_2 v_add10_i_9_2 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_9_2 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_9_2 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.9.2 = or i64 %shl.i.9.2, %and6.i.9.2 *)
(* You may need to modify here *)
or uint64 v_xor68_i_9_2 v_shl_i_9_2 v_and6_i_9_2;
(* Heuristics applied. *)
assert true && eq v_xor68_i_9_2 v_shl_i_9_2 + v_and6_i_9_2;
assume eq v_xor68_i_9_2 v_shl_i_9_2 + v_and6_i_9_2 && true;
(*   %shr13.i.9.2 = lshr i64 %mul4.i.9.2, 32 *)
(* You may need to modify here *)
split v_shr13_i_9_2 tmp_to_be_used v_mul4_i_9_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_9_2;
assume eq tmp_to_be_used v_and8_i_9_2 && true;
(*   %shr14.i.9.2 = lshr i64 %mul3.i.9.2, 32 *)
(* You may need to modify here *)
split v_shr14_i_9_2 tmp_to_be_used v_mul3_i_9_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_9_2;
assume eq tmp_to_be_used v_and9_i_9_2 && true;
(*   %and15.i.9.2 = and i64 %mul5.i.9.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_9_2 v_mul5_i_9_2 (0xFFFFFFFF)@uint64;
(*   %add16.i.9.2 = add nuw nsw i64 %shr13.i.9.2, %shr14.i.9.2 *)
adds discard_212 v_add16_i_9_2 v_shr13_i_9_2 v_shr14_i_9_2;
(* Heuristics applied. *)
assert true && eq discard_212 0@1;
assume eq discard_212 0 && true;
(*   %add17.i.9.2 = add nuw nsw i64 %add16.i.9.2, %and15.i.9.2 *)
adds discard_213 v_add17_i_9_2 v_add16_i_9_2 v_and15_i_9_2;
(* Heuristics applied. *)
assert true && eq discard_213 0@1;
assume eq discard_213 0 && true;
(*   %add18.i.9.2 = add nuw nsw i64 %add17.i.9.2, %shr11.i.9.2 *)
adds discard_214 v_add18_i_9_2 v_add17_i_9_2 v_shr11_i_9_2;
(* Heuristics applied. *)
assert true && eq discard_214 0@1;
assume eq discard_214 0 && true;
(*   %and19.i.9.2 = and i64 %add18.i.9.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_9_2 v_add18_i_9_2 (0xFFFFFFFF)@uint64;
(*   %and21.i.9.2 = and i64 %add18.i.9.2, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_9_2 v_add18_i_9_2 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_9_2 v_and21_i_9_2 + v_and19_i_9_2;
assume eq v_add18_i_9_2 v_and21_i_9_2 + v_and19_i_9_2 && true;
(*   %and22.i.9.2 = and i64 %mul5.i.9.2, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_9_2 v_mul5_i_9_2 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_9_2 v_and22_i_9_2 + v_and15_i_9_2;
assume eq v_mul5_i_9_2 v_and22_i_9_2 + v_and15_i_9_2 && true;
(*   %add23.i.9.2 = add i64 %and21.i.9.2, %and22.i.9.2 *)
adds discard_215 v_add23_i_9_2 v_and21_i_9_2 v_and22_i_9_2;
(* Heuristics applied. *)
assert true && eq discard_215 0@1;
assume eq discard_215 0 && true;
(*   %xor2569.i.9.2 = or i64 %add23.i.9.2, %and19.i.9.2 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_9_2 v_add23_i_9_2 v_and19_i_9_2;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_9_2 v_add23_i_9_2 + v_and19_i_9_2;
assume eq v_xor2569_i_9_2 v_add23_i_9_2 + v_and19_i_9_2 && true;
(*   %add16.9.2 = add i64 %xor68.i.9.2, %add16.9.1 *)
adds discard_216 v_add16_9_2 v_xor68_i_9_2 v_add16_9_1;
(*   %xor.i315.9.2 = xor i64 %add16.9.2, %shl.i.9.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_9_2 v_add16_9_2 v_shl_i_9_2;
(*   %xor1.i316.9.2 = xor i64 %shl.i.9.2, %add16.9.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_9_2 v_shl_i_9_2 v_add16_9_1;
(*   %or.i317.9.2 = or i64 %xor.i315.9.2, %xor1.i316.9.2 *)
(* You may need to modify here *)
or uint64 v_or_i317_9_2 v_xor_i315_9_2 v_xor1_i316_9_2;
(*   %xor2.i318.9.2 = xor i64 %or.i317.9.2, %add16.9.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_9_2 v_or_i317_9_2 v_add16_9_2;
(*   %shr.i319.9.2 = lshr i64 %xor2.i318.9.2, 63 *)
(* You may need to modify here *)
split v_shr_i319_9_2 tmp_to_be_used v_xor2_i318_9_2 63;
(* generated by python *)
assert true && limbs 64 [v_add16_9_2, v_shr_i319_9_2] = limbs 64 [v_xor68_i_9_2, 0@64] + limbs 64 [v_add16_9_1, 0@64];
assume limbs 64 [v_add16_9_2, v_shr_i319_9_2] = limbs 64 [v_xor68_i_9_2, 0] + limbs 64 [v_add16_9_1, 0] && true;
(*   %add20.9.2 = add i64 %shr.i319.9.2, %xor2569.i.9.2 *)
adds discard_217 v_add20_9_2 v_shr_i319_9_2 v_xor2569_i_9_2;
(* Heuristics applied. *)
assert true && eq discard_217 0@1;
assume eq discard_217 0 && true;
(*   %add21.9.2 = add i64 %add20.9.2, %add21.9.1 *)
adds discard_218 v_add21_9_2 v_add20_9_2 v_add21_9_1;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_218 0@1; *)
(* assume eq discard_218 0 && true; *)
(*   %73 = xor i64 %add20.9.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v73 v_add20_9_2 (0x8000000000000000)@uint64;
(*   %xor2.i312.9.2 = and i64 %73, %add23.i.9.2 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_9_2 v73 v_add23_i_9_2;
(*   %xor.i303.9.2 = xor i64 %add21.9.2, %add20.9.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_9_2 v_add21_9_2 v_add20_9_2;
(*   %xor1.i304.9.2 = xor i64 %add20.9.2, %add21.9.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_9_2 v_add20_9_2 v_add21_9_1;
(*   %or.i305.9.2 = or i64 %xor.i303.9.2, %xor1.i304.9.2 *)
(* You may need to modify here *)
or uint64 v_or_i305_9_2 v_xor_i303_9_2 v_xor1_i304_9_2;
(*   %xor2.i306.9.2 = xor i64 %or.i305.9.2, %add21.9.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_9_2 v_or_i305_9_2 v_add21_9_2;
(*   %shr.i313328.9.2 = or i64 %xor2.i306.9.2, %xor2.i312.9.2 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_9_2 v_xor2_i306_9_2 v_xor2_i312_9_2;
(*   %or25327.9.2 = lshr i64 %shr.i313328.9.2, 63 *)
(* You may need to modify here *)
split v_or25327_9_2 tmp_to_be_used v_shr_i313328_9_2 63;
(* generated by python *)
assert true && limbs 64 [v_add21_9_2, v_or25327_9_2] = limbs 64 [v_shr_i319_9_2, 0@64] + limbs 64 [v_xor2569_i_9_2, 0@64] + limbs 64 [v_add21_9_1, 0@64];
assume limbs 64 [v_add21_9_2, v_or25327_9_2] = limbs 64 [v_shr_i319_9_2, 0] + limbs 64 [v_xor2569_i_9_2, 0] + limbs 64 [v_add21_9_1, 0] && true;
(*   %add27.9.2 = add nsw i64 %or25327.9.2, %add27.9.1 *)
adds discard_219 v_add27_9_2 v_or25327_9_2 v_add27_9_1;
(* Heuristics applied. *)
assert true && eq discard_219 0@1;
assume eq discard_219 0 && true;
(*   %arrayidx9.9.3 = getelementptr inbounds i64, i64* %mc, i64 3 *)
(*   %74 = load i64, i64* %arrayidx9.9.3, align 8, !tbaa !3 *)
mov v74 mc_24;
(*   %75 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 6), align 16, !tbaa !3 *)
mov v75 p751p1_48;
(*   %and.i.9.3 = and i64 %74, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_9_3 v74 (0xFFFFFFFF)@uint64;
(*   %shr.i.9.3 = lshr i64 %74, 32 *)
(* You may need to modify here *)
split v_shr_i_9_3 tmp_to_be_used v74 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_9_3;
assume eq tmp_to_be_used v_and_i_9_3 && true;
(*   %and1.i.9.3 = and i64 %75, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_9_3 v75 (0xFFFFFFFF)@uint64;
(*   %shr2.i.9.3 = lshr i64 %75, 32 *)
(* You may need to modify here *)
split v_shr2_i_9_3 tmp_to_be_used v75 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_9_3;
assume eq tmp_to_be_used v_and1_i_9_3 && true;
(*   %mul.i.9.3 = mul nuw i64 %and1.i.9.3, %and.i.9.3 *)
mul v_mul_i_9_3 v_and1_i_9_3 v_and_i_9_3;
(*   %mul3.i.9.3 = mul nuw i64 %shr2.i.9.3, %and.i.9.3 *)
mul v_mul3_i_9_3 v_shr2_i_9_3 v_and_i_9_3;
(*   %mul4.i.9.3 = mul nuw i64 %and1.i.9.3, %shr.i.9.3 *)
mul v_mul4_i_9_3 v_and1_i_9_3 v_shr_i_9_3;
(*   %mul5.i.9.3 = mul nuw i64 %shr2.i.9.3, %shr.i.9.3 *)
mul v_mul5_i_9_3 v_shr2_i_9_3 v_shr_i_9_3;
(*   %and6.i.9.3 = and i64 %mul.i.9.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_9_3 v_mul_i_9_3 (0xFFFFFFFF)@uint64;
(*   %shr7.i.9.3 = lshr i64 %mul.i.9.3, 32 *)
(* You may need to modify here *)
split v_shr7_i_9_3 tmp_to_be_used v_mul_i_9_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_9_3;
assume eq tmp_to_be_used v_and6_i_9_3 && true;
(*   %and8.i.9.3 = and i64 %mul4.i.9.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_9_3 v_mul4_i_9_3 (0xFFFFFFFF)@uint64;
(*   %and9.i.9.3 = and i64 %mul3.i.9.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_9_3 v_mul3_i_9_3 (0xFFFFFFFF)@uint64;
(*   %add.i.9.3 = add nuw nsw i64 %shr7.i.9.3, %and8.i.9.3 *)
adds discard_220 v_add_i_9_3 v_shr7_i_9_3 v_and8_i_9_3;
(* Heuristics applied. *)
assert true && eq discard_220 0@1;
assume eq discard_220 0 && true;
(*   %add10.i.9.3 = add nuw nsw i64 %add.i.9.3, %and9.i.9.3 *)
adds discard_221 v_add10_i_9_3 v_add_i_9_3 v_and9_i_9_3;
(* Heuristics applied. *)
assert true && eq discard_221 0@1;
assume eq discard_221 0 && true;
(*   %shr11.i.9.3 = lshr i64 %add10.i.9.3, 32 *)
(* You may need to modify here *)
split v_shr11_i_9_3 tmp_to_be_used v_add10_i_9_3 32;
(*   %shl.i.9.3 = shl i64 %add10.i.9.3, 32 *)
shls discard_222 v_shl_i_9_3 v_add10_i_9_3 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_9_3 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_9_3 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.9.3 = or i64 %shl.i.9.3, %and6.i.9.3 *)
(* You may need to modify here *)
or uint64 v_xor68_i_9_3 v_shl_i_9_3 v_and6_i_9_3;
(* Heuristics applied. *)
assert true && eq v_xor68_i_9_3 v_shl_i_9_3 + v_and6_i_9_3;
assume eq v_xor68_i_9_3 v_shl_i_9_3 + v_and6_i_9_3 && true;
(*   %shr13.i.9.3 = lshr i64 %mul4.i.9.3, 32 *)
(* You may need to modify here *)
split v_shr13_i_9_3 tmp_to_be_used v_mul4_i_9_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_9_3;
assume eq tmp_to_be_used v_and8_i_9_3 && true;
(*   %shr14.i.9.3 = lshr i64 %mul3.i.9.3, 32 *)
(* You may need to modify here *)
split v_shr14_i_9_3 tmp_to_be_used v_mul3_i_9_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_9_3;
assume eq tmp_to_be_used v_and9_i_9_3 && true;
(*   %and15.i.9.3 = and i64 %mul5.i.9.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_9_3 v_mul5_i_9_3 (0xFFFFFFFF)@uint64;
(*   %add16.i.9.3 = add nuw nsw i64 %shr13.i.9.3, %shr14.i.9.3 *)
adds discard_223 v_add16_i_9_3 v_shr13_i_9_3 v_shr14_i_9_3;
(* Heuristics applied. *)
assert true && eq discard_223 0@1;
assume eq discard_223 0 && true;
(*   %add17.i.9.3 = add nuw nsw i64 %add16.i.9.3, %and15.i.9.3 *)
adds discard_224 v_add17_i_9_3 v_add16_i_9_3 v_and15_i_9_3;
(* Heuristics applied. *)
assert true && eq discard_224 0@1;
assume eq discard_224 0 && true;
(*   %add18.i.9.3 = add nuw nsw i64 %add17.i.9.3, %shr11.i.9.3 *)
adds discard_225 v_add18_i_9_3 v_add17_i_9_3 v_shr11_i_9_3;
(* Heuristics applied. *)
assert true && eq discard_225 0@1;
assume eq discard_225 0 && true;
(*   %and19.i.9.3 = and i64 %add18.i.9.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_9_3 v_add18_i_9_3 (0xFFFFFFFF)@uint64;
(*   %and21.i.9.3 = and i64 %add18.i.9.3, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_9_3 v_add18_i_9_3 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_9_3 v_and21_i_9_3 + v_and19_i_9_3;
assume eq v_add18_i_9_3 v_and21_i_9_3 + v_and19_i_9_3 && true;
(*   %and22.i.9.3 = and i64 %mul5.i.9.3, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_9_3 v_mul5_i_9_3 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_9_3 v_and22_i_9_3 + v_and15_i_9_3;
assume eq v_mul5_i_9_3 v_and22_i_9_3 + v_and15_i_9_3 && true;
(*   %add23.i.9.3 = add i64 %and21.i.9.3, %and22.i.9.3 *)
adds discard_226 v_add23_i_9_3 v_and21_i_9_3 v_and22_i_9_3;
(* Heuristics applied. *)
assert true && eq discard_226 0@1;
assume eq discard_226 0 && true;
(*   %xor2569.i.9.3 = or i64 %add23.i.9.3, %and19.i.9.3 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_9_3 v_add23_i_9_3 v_and19_i_9_3;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_9_3 v_add23_i_9_3 + v_and19_i_9_3;
assume eq v_xor2569_i_9_3 v_add23_i_9_3 + v_and19_i_9_3 && true;
(*   %add16.9.3 = add i64 %xor68.i.9.3, %add16.9.2 *)
adds discard_227 v_add16_9_3 v_xor68_i_9_3 v_add16_9_2;
(*   %xor.i315.9.3 = xor i64 %add16.9.3, %shl.i.9.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_9_3 v_add16_9_3 v_shl_i_9_3;
(*   %xor1.i316.9.3 = xor i64 %shl.i.9.3, %add16.9.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_9_3 v_shl_i_9_3 v_add16_9_2;
(*   %or.i317.9.3 = or i64 %xor.i315.9.3, %xor1.i316.9.3 *)
(* You may need to modify here *)
or uint64 v_or_i317_9_3 v_xor_i315_9_3 v_xor1_i316_9_3;
(*   %xor2.i318.9.3 = xor i64 %or.i317.9.3, %add16.9.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_9_3 v_or_i317_9_3 v_add16_9_3;
(*   %shr.i319.9.3 = lshr i64 %xor2.i318.9.3, 63 *)
(* You may need to modify here *)
split v_shr_i319_9_3 tmp_to_be_used v_xor2_i318_9_3 63;
(* generated by python *)
assert true && limbs 64 [v_add16_9_3, v_shr_i319_9_3] = limbs 64 [v_xor68_i_9_3, 0@64] + limbs 64 [v_add16_9_2, 0@64];
assume limbs 64 [v_add16_9_3, v_shr_i319_9_3] = limbs 64 [v_xor68_i_9_3, 0] + limbs 64 [v_add16_9_2, 0] && true;
(*   %add20.9.3 = add i64 %shr.i319.9.3, %xor2569.i.9.3 *)
adds discard_228 v_add20_9_3 v_shr_i319_9_3 v_xor2569_i_9_3;
(* Heuristics applied. *)
assert true && eq discard_228 0@1;
assume eq discard_228 0 && true;
(*   %add21.9.3 = add i64 %add20.9.3, %add21.9.2 *)
adds discard_229 v_add21_9_3 v_add20_9_3 v_add21_9_2;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_229 0@1; *)
(* assume eq discard_229 0 && true; *)
(*   %76 = xor i64 %add20.9.3, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v76 v_add20_9_3 (0x8000000000000000)@uint64;
(*   %xor2.i312.9.3 = and i64 %76, %add23.i.9.3 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_9_3 v76 v_add23_i_9_3;
(*   %xor.i303.9.3 = xor i64 %add21.9.3, %add20.9.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_9_3 v_add21_9_3 v_add20_9_3;
(*   %xor1.i304.9.3 = xor i64 %add20.9.3, %add21.9.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_9_3 v_add20_9_3 v_add21_9_2;
(*   %or.i305.9.3 = or i64 %xor.i303.9.3, %xor1.i304.9.3 *)
(* You may need to modify here *)
or uint64 v_or_i305_9_3 v_xor_i303_9_3 v_xor1_i304_9_3;
(*   %xor2.i306.9.3 = xor i64 %or.i305.9.3, %add21.9.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_9_3 v_or_i305_9_3 v_add21_9_3;
(*   %shr.i313328.9.3 = or i64 %xor2.i306.9.3, %xor2.i312.9.3 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_9_3 v_xor2_i306_9_3 v_xor2_i312_9_3;
(*   %or25327.9.3 = lshr i64 %shr.i313328.9.3, 63 *)
(* You may need to modify here *)
split v_or25327_9_3 tmp_to_be_used v_shr_i313328_9_3 63;
(* generated by python *)
assert true && limbs 64 [v_add21_9_3, v_or25327_9_3] = limbs 64 [v_shr_i319_9_3, 0@64] + limbs 64 [v_xor2569_i_9_3, 0@64] + limbs 64 [v_add21_9_2, 0@64];
assume limbs 64 [v_add21_9_3, v_or25327_9_3] = limbs 64 [v_shr_i319_9_3, 0] + limbs 64 [v_xor2569_i_9_3, 0] + limbs 64 [v_add21_9_2, 0] && true;
(*   %add27.9.3 = add nsw i64 %or25327.9.3, %add27.9.2 *)
adds discard_230 v_add27_9_3 v_or25327_9_3 v_add27_9_2;
(* Heuristics applied. *)
assert true && eq discard_230 0@1;
assume eq discard_230 0 && true;
(*   %arrayidx9.9.4 = getelementptr inbounds i64, i64* %mc, i64 4 *)
(*   %77 = load i64, i64* %arrayidx9.9.4, align 8, !tbaa !3 *)
mov v77 mc_32;
(*   %78 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 5), align 8, !tbaa !3 *)
mov v78 p751p1_40;
(*   %and.i.9.4 = and i64 %77, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_9_4 v77 (0xFFFFFFFF)@uint64;
(*   %shr.i.9.4 = lshr i64 %77, 32 *)
(* You may need to modify here *)
split v_shr_i_9_4 tmp_to_be_used v77 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_9_4;
assume eq tmp_to_be_used v_and_i_9_4 && true;
(*   %and1.i.9.4 = and i64 %78, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_9_4 v78 (0xFFFFFFFF)@uint64;
(*   %shr2.i.9.4 = lshr i64 %78, 32 *)
(* You may need to modify here *)
split v_shr2_i_9_4 tmp_to_be_used v78 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_9_4;
assume eq tmp_to_be_used v_and1_i_9_4 && true;
(*   %mul.i.9.4 = mul nuw i64 %and1.i.9.4, %and.i.9.4 *)
mul v_mul_i_9_4 v_and1_i_9_4 v_and_i_9_4;
(*   %mul3.i.9.4 = mul nuw i64 %shr2.i.9.4, %and.i.9.4 *)
mul v_mul3_i_9_4 v_shr2_i_9_4 v_and_i_9_4;
(*   %mul4.i.9.4 = mul nuw i64 %and1.i.9.4, %shr.i.9.4 *)
mul v_mul4_i_9_4 v_and1_i_9_4 v_shr_i_9_4;
(*   %mul5.i.9.4 = mul nuw i64 %shr2.i.9.4, %shr.i.9.4 *)
mul v_mul5_i_9_4 v_shr2_i_9_4 v_shr_i_9_4;
(*   %and6.i.9.4 = and i64 %mul.i.9.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_9_4 v_mul_i_9_4 (0xFFFFFFFF)@uint64;
(*   %shr7.i.9.4 = lshr i64 %mul.i.9.4, 32 *)
(* You may need to modify here *)
split v_shr7_i_9_4 tmp_to_be_used v_mul_i_9_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_9_4;
assume eq tmp_to_be_used v_and6_i_9_4 && true;
(*   %and8.i.9.4 = and i64 %mul4.i.9.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_9_4 v_mul4_i_9_4 (0xFFFFFFFF)@uint64;
(*   %and9.i.9.4 = and i64 %mul3.i.9.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_9_4 v_mul3_i_9_4 (0xFFFFFFFF)@uint64;
(*   %add.i.9.4 = add nuw nsw i64 %shr7.i.9.4, %and8.i.9.4 *)
adds discard_231 v_add_i_9_4 v_shr7_i_9_4 v_and8_i_9_4;
(* Heuristics applied. *)
assert true && eq discard_231 0@1;
assume eq discard_231 0 && true;
(*   %add10.i.9.4 = add nuw nsw i64 %add.i.9.4, %and9.i.9.4 *)
adds discard_232 v_add10_i_9_4 v_add_i_9_4 v_and9_i_9_4;
(* Heuristics applied. *)
assert true && eq discard_232 0@1;
assume eq discard_232 0 && true;
(*   %shr11.i.9.4 = lshr i64 %add10.i.9.4, 32 *)
(* You may need to modify here *)
split v_shr11_i_9_4 tmp_to_be_used v_add10_i_9_4 32;
(*   %shl.i.9.4 = shl i64 %add10.i.9.4, 32 *)
shls discard_233 v_shl_i_9_4 v_add10_i_9_4 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_9_4 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_9_4 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.9.4 = or i64 %shl.i.9.4, %and6.i.9.4 *)
(* You may need to modify here *)
or uint64 v_xor68_i_9_4 v_shl_i_9_4 v_and6_i_9_4;
(* Heuristics applied. *)
assert true && eq v_xor68_i_9_4 v_shl_i_9_4 + v_and6_i_9_4;
assume eq v_xor68_i_9_4 v_shl_i_9_4 + v_and6_i_9_4 && true;
(*   %shr13.i.9.4 = lshr i64 %mul4.i.9.4, 32 *)
(* You may need to modify here *)
split v_shr13_i_9_4 tmp_to_be_used v_mul4_i_9_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_9_4;
assume eq tmp_to_be_used v_and8_i_9_4 && true;
(*   %shr14.i.9.4 = lshr i64 %mul3.i.9.4, 32 *)
(* You may need to modify here *)
split v_shr14_i_9_4 tmp_to_be_used v_mul3_i_9_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_9_4;
assume eq tmp_to_be_used v_and9_i_9_4 && true;
(*   %and15.i.9.4 = and i64 %mul5.i.9.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_9_4 v_mul5_i_9_4 (0xFFFFFFFF)@uint64;
(*   %add16.i.9.4 = add nuw nsw i64 %shr13.i.9.4, %shr14.i.9.4 *)
adds discard_234 v_add16_i_9_4 v_shr13_i_9_4 v_shr14_i_9_4;
(* Heuristics applied. *)
assert true && eq discard_234 0@1;
assume eq discard_234 0 && true;
(*   %add17.i.9.4 = add nuw nsw i64 %add16.i.9.4, %and15.i.9.4 *)
adds discard_235 v_add17_i_9_4 v_add16_i_9_4 v_and15_i_9_4;
(* Heuristics applied. *)
assert true && eq discard_235 0@1;
assume eq discard_235 0 && true;
(*   %add18.i.9.4 = add nuw nsw i64 %add17.i.9.4, %shr11.i.9.4 *)
adds discard_236 v_add18_i_9_4 v_add17_i_9_4 v_shr11_i_9_4;
(* Heuristics applied. *)
assert true && eq discard_236 0@1;
assume eq discard_236 0 && true;
(*   %and19.i.9.4 = and i64 %add18.i.9.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_9_4 v_add18_i_9_4 (0xFFFFFFFF)@uint64;
(*   %and21.i.9.4 = and i64 %add18.i.9.4, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_9_4 v_add18_i_9_4 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_9_4 v_and21_i_9_4 + v_and19_i_9_4;
assume eq v_add18_i_9_4 v_and21_i_9_4 + v_and19_i_9_4 && true;
(*   %and22.i.9.4 = and i64 %mul5.i.9.4, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_9_4 v_mul5_i_9_4 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_9_4 v_and22_i_9_4 + v_and15_i_9_4;
assume eq v_mul5_i_9_4 v_and22_i_9_4 + v_and15_i_9_4 && true;
(*   %add23.i.9.4 = add i64 %and21.i.9.4, %and22.i.9.4 *)
adds discard_237 v_add23_i_9_4 v_and21_i_9_4 v_and22_i_9_4;
(* Heuristics applied. *)
assert true && eq discard_237 0@1;
assume eq discard_237 0 && true;
(*   %xor2569.i.9.4 = or i64 %add23.i.9.4, %and19.i.9.4 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_9_4 v_add23_i_9_4 v_and19_i_9_4;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_9_4 v_add23_i_9_4 + v_and19_i_9_4;
assume eq v_xor2569_i_9_4 v_add23_i_9_4 + v_and19_i_9_4 && true;
(*   %add16.9.4 = add i64 %xor68.i.9.4, %add16.9.3 *)
adds discard_238 v_add16_9_4 v_xor68_i_9_4 v_add16_9_3;
(*   %xor.i315.9.4 = xor i64 %add16.9.4, %shl.i.9.4 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_9_4 v_add16_9_4 v_shl_i_9_4;
(*   %xor1.i316.9.4 = xor i64 %shl.i.9.4, %add16.9.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_9_4 v_shl_i_9_4 v_add16_9_3;
(*   %or.i317.9.4 = or i64 %xor.i315.9.4, %xor1.i316.9.4 *)
(* You may need to modify here *)
or uint64 v_or_i317_9_4 v_xor_i315_9_4 v_xor1_i316_9_4;
(*   %xor2.i318.9.4 = xor i64 %or.i317.9.4, %add16.9.4 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_9_4 v_or_i317_9_4 v_add16_9_4;
(*   %shr.i319.9.4 = lshr i64 %xor2.i318.9.4, 63 *)
(* You may need to modify here *)
split v_shr_i319_9_4 tmp_to_be_used v_xor2_i318_9_4 63;
(* generated by python *)
assert true && limbs 64 [v_add16_9_4, v_shr_i319_9_4] = limbs 64 [v_xor68_i_9_4, 0@64] + limbs 64 [v_add16_9_3, 0@64];
assume limbs 64 [v_add16_9_4, v_shr_i319_9_4] = limbs 64 [v_xor68_i_9_4, 0] + limbs 64 [v_add16_9_3, 0] && true;
(*   %add20.9.4 = add i64 %shr.i319.9.4, %xor2569.i.9.4 *)
adds discard_239 v_add20_9_4 v_shr_i319_9_4 v_xor2569_i_9_4;
(* Heuristics applied. *)
assert true && eq discard_239 0@1;
assume eq discard_239 0 && true;
(*   %add21.9.4 = add i64 %add20.9.4, %add21.9.3 *)
adds discard_240 v_add21_9_4 v_add20_9_4 v_add21_9_3;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_240 0@1; *)
(* assume eq discard_240 0 && true; *)
(*   %79 = xor i64 %add20.9.4, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v79 v_add20_9_4 (0x8000000000000000)@uint64;
(*   %xor2.i312.9.4 = and i64 %79, %add23.i.9.4 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_9_4 v79 v_add23_i_9_4;
(*   %xor.i303.9.4 = xor i64 %add21.9.4, %add20.9.4 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_9_4 v_add21_9_4 v_add20_9_4;
(*   %xor1.i304.9.4 = xor i64 %add20.9.4, %add21.9.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_9_4 v_add20_9_4 v_add21_9_3;
(*   %or.i305.9.4 = or i64 %xor.i303.9.4, %xor1.i304.9.4 *)
(* You may need to modify here *)
or uint64 v_or_i305_9_4 v_xor_i303_9_4 v_xor1_i304_9_4;
(*   %xor2.i306.9.4 = xor i64 %or.i305.9.4, %add21.9.4 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_9_4 v_or_i305_9_4 v_add21_9_4;
(*   %shr.i313328.9.4 = or i64 %xor2.i306.9.4, %xor2.i312.9.4 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_9_4 v_xor2_i306_9_4 v_xor2_i312_9_4;
(*   %or25327.9.4 = lshr i64 %shr.i313328.9.4, 63 *)
(* You may need to modify here *)
split v_or25327_9_4 tmp_to_be_used v_shr_i313328_9_4 63;
(* generated by python *)
assert true && limbs 64 [v_add21_9_4, v_or25327_9_4] = limbs 64 [v_shr_i319_9_4, 0@64] + limbs 64 [v_xor2569_i_9_4, 0@64] + limbs 64 [v_add21_9_3, 0@64];
assume limbs 64 [v_add21_9_4, v_or25327_9_4] = limbs 64 [v_shr_i319_9_4, 0] + limbs 64 [v_xor2569_i_9_4, 0] + limbs 64 [v_add21_9_3, 0] && true;
(*   %add27.9.4 = add i64 %or25327.9.4, %add27.9.3 *)
adds discard_241 v_add27_9_4 v_or25327_9_4 v_add27_9_3;
(* Heuristics applied. *)
assert true && eq discard_241 0@1;
assume eq discard_241 0 && true;
(*   %arrayidx34.9 = getelementptr inbounds i64, i64* %ma, i64 9 *)
(*   %80 = load i64, i64* %arrayidx34.9, align 8, !tbaa !3 *)
mov v80 ma_72;
(*   %add35.9 = add i64 %80, %add16.9.4 *)
adds discard_242 v_add35_9 v80 v_add16_9_4;
(*   %xor.i297.9 = xor i64 %add35.9, %add16.9.4 *)
(* You may need to modify here *)
xor uint64 v_xor_i297_9 v_add35_9 v_add16_9_4;
(*   %xor1.i298.9 = xor i64 %80, %add16.9.4 *)
(* You may need to modify here *)
xor uint64 v_xor1_i298_9 v80 v_add16_9_4;
(*   %or.i299.9 = or i64 %xor.i297.9, %xor1.i298.9 *)
(* You may need to modify here *)
or uint64 v_or_i299_9 v_xor_i297_9 v_xor1_i298_9;
(*   %xor2.i300.9 = xor i64 %or.i299.9, %add35.9 *)
(* You may need to modify here *)
xor uint64 v_xor2_i300_9 v_or_i299_9 v_add35_9;
(*   %shr.i301.9 = lshr i64 %xor2.i300.9, 63 *)
(* You may need to modify here *)
split v_shr_i301_9 tmp_to_be_used v_xor2_i300_9 63;
(* generated by python *)
assert true && limbs 64 [v_add35_9, v_shr_i301_9] = limbs 64 [v80, 0@64] + limbs 64 [v_add16_9_4, 0@64];
assume limbs 64 [v_add35_9, v_shr_i301_9] = limbs 64 [v80, 0] + limbs 64 [v_add16_9_4, 0] && true;
(*   %add41.9 = add i64 %shr.i301.9, %add21.9.4 *)
adds discard_243 v_add41_9 v_shr_i301_9 v_add21_9_4;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_243 0@1; *)
(* assume eq discard_243 0 && true; *)
(*   %arrayidx50.9 = getelementptr inbounds i64, i64* %mc, i64 9 *)
(*   store i64 %add35.9, i64* %arrayidx50.9, align 8, !tbaa !3 *)
mov mc_72 v_add35_9;
(*   %81 = xor i64 %add41.9, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v81 v_add41_9 (0x8000000000000000)@uint64;
(*   %xor2.i294.9 = and i64 %81, %add21.9.4 *)
(* You may need to modify here *)
and uint64 v_xor2_i294_9 v81 v_add21_9_4;
(*   %shr.i295.9 = lshr i64 %xor2.i294.9, 63 *)
(* You may need to modify here *)
split v_shr_i295_9 tmp_to_be_used v_xor2_i294_9 63;
(* generated by python *)
assert true && limbs 64 [v_add41_9, v_shr_i295_9] = limbs 64 [v_shr_i301_9, 0@64] + limbs 64 [v_add21_9_4, 0@64];
assume limbs 64 [v_add41_9, v_shr_i295_9] = limbs 64 [v_shr_i301_9, 0] + limbs 64 [v_add21_9_4, 0] && true;
(*   %add48.9 = add i64 %shr.i295.9, %add27.9.4 *)
adds discard_244 v_add48_9 v_shr_i295_9 v_add27_9_4;
(* Heuristics applied. *)
assert true && eq discard_244 0@1;
assume eq discard_244 0 && true;
(*   %82 = load i64, i64* %mc, align 8, !tbaa !3 *)
mov v82 mc_0;
(*   %83 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 10), align 16, !tbaa !3 *)
mov v83 p751p1_80;
(*   %and.i.10 = and i64 %82, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_10 v82 (0xFFFFFFFF)@uint64;
(*   %shr.i.10 = lshr i64 %82, 32 *)
(* You may need to modify here *)
split v_shr_i_10 tmp_to_be_used v82 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_10;
assume eq tmp_to_be_used v_and_i_10 && true;
(*   %and1.i.10 = and i64 %83, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_10 v83 (0xFFFFFFFF)@uint64;
(*   %shr2.i.10 = lshr i64 %83, 32 *)
(* You may need to modify here *)
split v_shr2_i_10 tmp_to_be_used v83 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_10;
assume eq tmp_to_be_used v_and1_i_10 && true;
(*   %mul.i.10 = mul nuw i64 %and1.i.10, %and.i.10 *)
mul v_mul_i_10 v_and1_i_10 v_and_i_10;
(*   %mul3.i.10 = mul nuw i64 %shr2.i.10, %and.i.10 *)
mul v_mul3_i_10 v_shr2_i_10 v_and_i_10;
(*   %mul4.i.10 = mul nuw i64 %and1.i.10, %shr.i.10 *)
mul v_mul4_i_10 v_and1_i_10 v_shr_i_10;
(*   %mul5.i.10 = mul nuw i64 %shr2.i.10, %shr.i.10 *)
mul v_mul5_i_10 v_shr2_i_10 v_shr_i_10;
(*   %and6.i.10 = and i64 %mul.i.10, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_10 v_mul_i_10 (0xFFFFFFFF)@uint64;
(*   %shr7.i.10 = lshr i64 %mul.i.10, 32 *)
(* You may need to modify here *)
split v_shr7_i_10 tmp_to_be_used v_mul_i_10 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_10;
assume eq tmp_to_be_used v_and6_i_10 && true;
(*   %and8.i.10 = and i64 %mul4.i.10, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_10 v_mul4_i_10 (0xFFFFFFFF)@uint64;
(*   %and9.i.10 = and i64 %mul3.i.10, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_10 v_mul3_i_10 (0xFFFFFFFF)@uint64;
(*   %add.i.10 = add nuw nsw i64 %shr7.i.10, %and8.i.10 *)
adds discard_245 v_add_i_10 v_shr7_i_10 v_and8_i_10;
(* Heuristics applied. *)
assert true && eq discard_245 0@1;
assume eq discard_245 0 && true;
(*   %add10.i.10 = add nuw nsw i64 %add.i.10, %and9.i.10 *)
adds discard_246 v_add10_i_10 v_add_i_10 v_and9_i_10;
(* Heuristics applied. *)
assert true && eq discard_246 0@1;
assume eq discard_246 0 && true;
(*   %shr11.i.10 = lshr i64 %add10.i.10, 32 *)
(* You may need to modify here *)
split v_shr11_i_10 tmp_to_be_used v_add10_i_10 32;
(*   %shl.i.10 = shl i64 %add10.i.10, 32 *)
shls discard_247 v_shl_i_10 v_add10_i_10 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_10 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_10 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.10 = or i64 %shl.i.10, %and6.i.10 *)
(* You may need to modify here *)
or uint64 v_xor68_i_10 v_shl_i_10 v_and6_i_10;
(* Heuristics applied. *)
assert true && eq v_xor68_i_10 v_shl_i_10 + v_and6_i_10;
assume eq v_xor68_i_10 v_shl_i_10 + v_and6_i_10 && true;
(*   %shr13.i.10 = lshr i64 %mul4.i.10, 32 *)
(* You may need to modify here *)
split v_shr13_i_10 tmp_to_be_used v_mul4_i_10 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_10;
assume eq tmp_to_be_used v_and8_i_10 && true;
(*   %shr14.i.10 = lshr i64 %mul3.i.10, 32 *)
(* You may need to modify here *)
split v_shr14_i_10 tmp_to_be_used v_mul3_i_10 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_10;
assume eq tmp_to_be_used v_and9_i_10 && true;
(*   %and15.i.10 = and i64 %mul5.i.10, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_10 v_mul5_i_10 (0xFFFFFFFF)@uint64;
(*   %add16.i.10 = add nuw nsw i64 %shr13.i.10, %shr14.i.10 *)
adds discard_248 v_add16_i_10 v_shr13_i_10 v_shr14_i_10;
(* Heuristics applied. *)
assert true && eq discard_248 0@1;
assume eq discard_248 0 && true;
(*   %add17.i.10 = add nuw nsw i64 %add16.i.10, %and15.i.10 *)
adds discard_249 v_add17_i_10 v_add16_i_10 v_and15_i_10;
(* Heuristics applied. *)
assert true && eq discard_249 0@1;
assume eq discard_249 0 && true;
(*   %add18.i.10 = add nuw nsw i64 %add17.i.10, %shr11.i.10 *)
adds discard_250 v_add18_i_10 v_add17_i_10 v_shr11_i_10;
(* Heuristics applied. *)
assert true && eq discard_250 0@1;
assume eq discard_250 0 && true;
(*   %and19.i.10 = and i64 %add18.i.10, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_10 v_add18_i_10 (0xFFFFFFFF)@uint64;
(*   %and21.i.10 = and i64 %add18.i.10, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_10 v_add18_i_10 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_10 v_and21_i_10 + v_and19_i_10;
assume eq v_add18_i_10 v_and21_i_10 + v_and19_i_10 && true;
(*   %and22.i.10 = and i64 %mul5.i.10, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_10 v_mul5_i_10 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_10 v_and22_i_10 + v_and15_i_10;
assume eq v_mul5_i_10 v_and22_i_10 + v_and15_i_10 && true;
(*   %add23.i.10 = add i64 %and21.i.10, %and22.i.10 *)
adds discard_251 v_add23_i_10 v_and21_i_10 v_and22_i_10;
(* Heuristics applied. *)
assert true && eq discard_251 0@1;
assume eq discard_251 0 && true;
(*   %xor2569.i.10 = or i64 %add23.i.10, %and19.i.10 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_10 v_add23_i_10 v_and19_i_10;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_10 v_add23_i_10 + v_and19_i_10;
assume eq v_xor2569_i_10 v_add23_i_10 + v_and19_i_10 && true;
(*   %add16.10 = add i64 %xor68.i.10, %add41.9 *)
adds discard_252 v_add16_10 v_xor68_i_10 v_add41_9;
(*   %xor.i315.10 = xor i64 %add16.10, %shl.i.10 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_10 v_add16_10 v_shl_i_10;
(*   %xor1.i316.10 = xor i64 %shl.i.10, %add41.9 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_10 v_shl_i_10 v_add41_9;
(*   %or.i317.10 = or i64 %xor.i315.10, %xor1.i316.10 *)
(* You may need to modify here *)
or uint64 v_or_i317_10 v_xor_i315_10 v_xor1_i316_10;
(*   %xor2.i318.10 = xor i64 %or.i317.10, %add16.10 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_10 v_or_i317_10 v_add16_10;
(*   %shr.i319.10 = lshr i64 %xor2.i318.10, 63 *)
(* You may need to modify here *)
split v_shr_i319_10 tmp_to_be_used v_xor2_i318_10 63;
(* generated by python *)
assert true && limbs 64 [v_add16_10, v_shr_i319_10] = limbs 64 [v_xor68_i_10, 0@64] + limbs 64 [v_add41_9, 0@64];
assume limbs 64 [v_add16_10, v_shr_i319_10] = limbs 64 [v_xor68_i_10, 0] + limbs 64 [v_add41_9, 0] && true;
(*   %add20.10 = add i64 %shr.i319.10, %xor2569.i.10 *)
adds discard_253 v_add20_10 v_shr_i319_10 v_xor2569_i_10;
(* Heuristics applied. *)
assert true && eq discard_253 0@1;
assume eq discard_253 0 && true;
(*   %add21.10 = add i64 %add20.10, %add48.9 *)
adds discard_254 v_add21_10 v_add20_10 v_add48_9;
(* Heuristics applied. *)
assert true && eq discard_254 0@1;
assume eq discard_254 0 && true;
(*   %84 = xor i64 %add20.10, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v84 v_add20_10 (0x8000000000000000)@uint64;
(*   %xor2.i312.10 = and i64 %84, %add23.i.10 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_10 v84 v_add23_i_10;
(*   %xor.i303.10 = xor i64 %add21.10, %add20.10 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_10 v_add21_10 v_add20_10;
(*   %xor1.i304.10 = xor i64 %add20.10, %add48.9 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_10 v_add20_10 v_add48_9;
(*   %or.i305.10 = or i64 %xor.i303.10, %xor1.i304.10 *)
(* You may need to modify here *)
or uint64 v_or_i305_10 v_xor_i303_10 v_xor1_i304_10;
(*   %xor2.i306.10 = xor i64 %or.i305.10, %add21.10 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_10 v_or_i305_10 v_add21_10;
(*   %shr.i313328.10 = or i64 %xor2.i306.10, %xor2.i312.10 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_10 v_xor2_i306_10 v_xor2_i312_10;
(*   %or25327.10 = lshr i64 %shr.i313328.10, 63 *)
(* You may need to modify here *)
split v_or25327_10 tmp_to_be_used v_shr_i313328_10 63;
(* generated by python *)
assert true && limbs 64 [v_add21_10, v_or25327_10] = limbs 64 [v_shr_i319_10, 0@64] + limbs 64 [v_xor2569_i_10, 0@64] + limbs 64 [v_add48_9, 0@64];
assume limbs 64 [v_add21_10, v_or25327_10] = limbs 64 [v_shr_i319_10, 0] + limbs 64 [v_xor2569_i_10, 0] + limbs 64 [v_add48_9, 0] && true;
(*   %arrayidx9.10.1 = getelementptr inbounds i64, i64* %mc, i64 1 *)
(*   %85 = load i64, i64* %arrayidx9.10.1, align 8, !tbaa !3 *)
mov v85 mc_8;
(*   %86 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 9), align 8, !tbaa !3 *)
mov v86 p751p1_72;
(*   %and.i.10.1 = and i64 %85, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_10_1 v85 (0xFFFFFFFF)@uint64;
(*   %shr.i.10.1 = lshr i64 %85, 32 *)
(* You may need to modify here *)
split v_shr_i_10_1 tmp_to_be_used v85 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_10_1;
assume eq tmp_to_be_used v_and_i_10_1 && true;
(*   %and1.i.10.1 = and i64 %86, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_10_1 v86 (0xFFFFFFFF)@uint64;
(*   %shr2.i.10.1 = lshr i64 %86, 32 *)
(* You may need to modify here *)
split v_shr2_i_10_1 tmp_to_be_used v86 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_10_1;
assume eq tmp_to_be_used v_and1_i_10_1 && true;
(*   %mul.i.10.1 = mul nuw i64 %and1.i.10.1, %and.i.10.1 *)
mul v_mul_i_10_1 v_and1_i_10_1 v_and_i_10_1;
(*   %mul3.i.10.1 = mul nuw i64 %shr2.i.10.1, %and.i.10.1 *)
mul v_mul3_i_10_1 v_shr2_i_10_1 v_and_i_10_1;
(*   %mul4.i.10.1 = mul nuw i64 %and1.i.10.1, %shr.i.10.1 *)
mul v_mul4_i_10_1 v_and1_i_10_1 v_shr_i_10_1;
(*   %mul5.i.10.1 = mul nuw i64 %shr2.i.10.1, %shr.i.10.1 *)
mul v_mul5_i_10_1 v_shr2_i_10_1 v_shr_i_10_1;
(*   %and6.i.10.1 = and i64 %mul.i.10.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_10_1 v_mul_i_10_1 (0xFFFFFFFF)@uint64;
(*   %shr7.i.10.1 = lshr i64 %mul.i.10.1, 32 *)
(* You may need to modify here *)
split v_shr7_i_10_1 tmp_to_be_used v_mul_i_10_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_10_1;
assume eq tmp_to_be_used v_and6_i_10_1 && true;
(*   %and8.i.10.1 = and i64 %mul4.i.10.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_10_1 v_mul4_i_10_1 (0xFFFFFFFF)@uint64;
(*   %and9.i.10.1 = and i64 %mul3.i.10.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_10_1 v_mul3_i_10_1 (0xFFFFFFFF)@uint64;
(*   %add.i.10.1 = add nuw nsw i64 %shr7.i.10.1, %and8.i.10.1 *)
adds discard_255 v_add_i_10_1 v_shr7_i_10_1 v_and8_i_10_1;
(* Heuristics applied. *)
assert true && eq discard_255 0@1;
assume eq discard_255 0 && true;
(*   %add10.i.10.1 = add nuw nsw i64 %add.i.10.1, %and9.i.10.1 *)
adds discard_256 v_add10_i_10_1 v_add_i_10_1 v_and9_i_10_1;
(* Heuristics applied. *)
assert true && eq discard_256 0@1;
assume eq discard_256 0 && true;
(*   %shr11.i.10.1 = lshr i64 %add10.i.10.1, 32 *)
(* You may need to modify here *)
split v_shr11_i_10_1 tmp_to_be_used v_add10_i_10_1 32;
(*   %shl.i.10.1 = shl i64 %add10.i.10.1, 32 *)
shls discard_257 v_shl_i_10_1 v_add10_i_10_1 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_10_1 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_10_1 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.10.1 = or i64 %shl.i.10.1, %and6.i.10.1 *)
(* You may need to modify here *)
or uint64 v_xor68_i_10_1 v_shl_i_10_1 v_and6_i_10_1;
(* Heuristics applied. *)
assert true && eq v_xor68_i_10_1 v_shl_i_10_1 + v_and6_i_10_1;
assume eq v_xor68_i_10_1 v_shl_i_10_1 + v_and6_i_10_1 && true;
(*   %shr13.i.10.1 = lshr i64 %mul4.i.10.1, 32 *)
(* You may need to modify here *)
split v_shr13_i_10_1 tmp_to_be_used v_mul4_i_10_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_10_1;
assume eq tmp_to_be_used v_and8_i_10_1 && true;
(*   %shr14.i.10.1 = lshr i64 %mul3.i.10.1, 32 *)
(* You may need to modify here *)
split v_shr14_i_10_1 tmp_to_be_used v_mul3_i_10_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_10_1;
assume eq tmp_to_be_used v_and9_i_10_1 && true;
(*   %and15.i.10.1 = and i64 %mul5.i.10.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_10_1 v_mul5_i_10_1 (0xFFFFFFFF)@uint64;
(*   %add16.i.10.1 = add nuw nsw i64 %shr13.i.10.1, %shr14.i.10.1 *)
adds discard_258 v_add16_i_10_1 v_shr13_i_10_1 v_shr14_i_10_1;
(* Heuristics applied. *)
assert true && eq discard_258 0@1;
assume eq discard_258 0 && true;
(*   %add17.i.10.1 = add nuw nsw i64 %add16.i.10.1, %and15.i.10.1 *)
adds discard_259 v_add17_i_10_1 v_add16_i_10_1 v_and15_i_10_1;
(* Heuristics applied. *)
assert true && eq discard_259 0@1;
assume eq discard_259 0 && true;
(*   %add18.i.10.1 = add nuw nsw i64 %add17.i.10.1, %shr11.i.10.1 *)
adds discard_260 v_add18_i_10_1 v_add17_i_10_1 v_shr11_i_10_1;
(* Heuristics applied. *)
assert true && eq discard_260 0@1;
assume eq discard_260 0 && true;
(*   %and19.i.10.1 = and i64 %add18.i.10.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_10_1 v_add18_i_10_1 (0xFFFFFFFF)@uint64;
(*   %and21.i.10.1 = and i64 %add18.i.10.1, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_10_1 v_add18_i_10_1 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_10_1 v_and21_i_10_1 + v_and19_i_10_1;
assume eq v_add18_i_10_1 v_and21_i_10_1 + v_and19_i_10_1 && true;
(*   %and22.i.10.1 = and i64 %mul5.i.10.1, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_10_1 v_mul5_i_10_1 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_10_1 v_and22_i_10_1 + v_and15_i_10_1;
assume eq v_mul5_i_10_1 v_and22_i_10_1 + v_and15_i_10_1 && true;
(*   %add23.i.10.1 = add i64 %and21.i.10.1, %and22.i.10.1 *)
adds discard_261 v_add23_i_10_1 v_and21_i_10_1 v_and22_i_10_1;
(* Heuristics applied. *)
assert true && eq discard_261 0@1;
assume eq discard_261 0 && true;
(*   %xor2569.i.10.1 = or i64 %add23.i.10.1, %and19.i.10.1 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_10_1 v_add23_i_10_1 v_and19_i_10_1;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_10_1 v_add23_i_10_1 + v_and19_i_10_1;
assume eq v_xor2569_i_10_1 v_add23_i_10_1 + v_and19_i_10_1 && true;
(*   %add16.10.1 = add i64 %xor68.i.10.1, %add16.10 *)
adds discard_262 v_add16_10_1 v_xor68_i_10_1 v_add16_10;
(*   %xor.i315.10.1 = xor i64 %add16.10.1, %shl.i.10.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_10_1 v_add16_10_1 v_shl_i_10_1;
(*   %xor1.i316.10.1 = xor i64 %shl.i.10.1, %add16.10 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_10_1 v_shl_i_10_1 v_add16_10;
(*   %or.i317.10.1 = or i64 %xor.i315.10.1, %xor1.i316.10.1 *)
(* You may need to modify here *)
or uint64 v_or_i317_10_1 v_xor_i315_10_1 v_xor1_i316_10_1;
(*   %xor2.i318.10.1 = xor i64 %or.i317.10.1, %add16.10.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_10_1 v_or_i317_10_1 v_add16_10_1;
(*   %shr.i319.10.1 = lshr i64 %xor2.i318.10.1, 63 *)
(* You may need to modify here *)
split v_shr_i319_10_1 tmp_to_be_used v_xor2_i318_10_1 63;
(* generated by python *)
assert true && limbs 64 [v_add16_10_1, v_shr_i319_10_1] = limbs 64 [v_xor68_i_10_1, 0@64] + limbs 64 [v_add16_10, 0@64];
assume limbs 64 [v_add16_10_1, v_shr_i319_10_1] = limbs 64 [v_xor68_i_10_1, 0] + limbs 64 [v_add16_10, 0] && true;
(*   %add20.10.1 = add i64 %shr.i319.10.1, %xor2569.i.10.1 *)
adds discard_263 v_add20_10_1 v_shr_i319_10_1 v_xor2569_i_10_1;
(* Heuristics applied. *)
assert true && eq discard_263 0@1;
assume eq discard_263 0 && true;
(*   %add21.10.1 = add i64 %add20.10.1, %add21.10 *)
adds discard_264 v_add21_10_1 v_add20_10_1 v_add21_10;
(* Heuristics applied. *)
assert true && eq discard_264 0@1;
assume eq discard_264 0 && true;
(*   %87 = xor i64 %add20.10.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v87 v_add20_10_1 (0x8000000000000000)@uint64;
(*   %xor2.i312.10.1 = and i64 %87, %add23.i.10.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_10_1 v87 v_add23_i_10_1;
(*   %xor.i303.10.1 = xor i64 %add21.10.1, %add20.10.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_10_1 v_add21_10_1 v_add20_10_1;
(*   %xor1.i304.10.1 = xor i64 %add20.10.1, %add21.10 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_10_1 v_add20_10_1 v_add21_10;
(*   %or.i305.10.1 = or i64 %xor.i303.10.1, %xor1.i304.10.1 *)
(* You may need to modify here *)
or uint64 v_or_i305_10_1 v_xor_i303_10_1 v_xor1_i304_10_1;
(*   %xor2.i306.10.1 = xor i64 %or.i305.10.1, %add21.10.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_10_1 v_or_i305_10_1 v_add21_10_1;
(*   %shr.i313328.10.1 = or i64 %xor2.i306.10.1, %xor2.i312.10.1 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_10_1 v_xor2_i306_10_1 v_xor2_i312_10_1;
(*   %or25327.10.1 = lshr i64 %shr.i313328.10.1, 63 *)
(* You may need to modify here *)
split v_or25327_10_1 tmp_to_be_used v_shr_i313328_10_1 63;
(* generated by python *)
assert true && limbs 64 [v_add21_10_1, v_or25327_10_1] = limbs 64 [v_shr_i319_10_1, 0@64] + limbs 64 [v_xor2569_i_10_1, 0@64] + limbs 64 [v_add21_10, 0@64];
assume limbs 64 [v_add21_10_1, v_or25327_10_1] = limbs 64 [v_shr_i319_10_1, 0] + limbs 64 [v_xor2569_i_10_1, 0] + limbs 64 [v_add21_10, 0] && true;
(*   %add27.10.1 = add nuw nsw i64 %or25327.10.1, %or25327.10 *)
adds discard_265 v_add27_10_1 v_or25327_10_1 v_or25327_10;
(* Heuristics applied. *)
assert true && eq discard_265 0@1;
assume eq discard_265 0 && true;
(*   %arrayidx9.10.2 = getelementptr inbounds i64, i64* %mc, i64 2 *)
(*   %88 = load i64, i64* %arrayidx9.10.2, align 8, !tbaa !3 *)
mov v88 mc_16;
(*   %89 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 8), align 16, !tbaa !3 *)
mov v89 p751p1_64;
(*   %and.i.10.2 = and i64 %88, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_10_2 v88 (0xFFFFFFFF)@uint64;
(*   %shr.i.10.2 = lshr i64 %88, 32 *)
(* You may need to modify here *)
split v_shr_i_10_2 tmp_to_be_used v88 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_10_2;
assume eq tmp_to_be_used v_and_i_10_2 && true;
(*   %and1.i.10.2 = and i64 %89, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_10_2 v89 (0xFFFFFFFF)@uint64;
(*   %shr2.i.10.2 = lshr i64 %89, 32 *)
(* You may need to modify here *)
split v_shr2_i_10_2 tmp_to_be_used v89 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_10_2;
assume eq tmp_to_be_used v_and1_i_10_2 && true;
(*   %mul.i.10.2 = mul nuw i64 %and1.i.10.2, %and.i.10.2 *)
mul v_mul_i_10_2 v_and1_i_10_2 v_and_i_10_2;
(*   %mul3.i.10.2 = mul nuw i64 %shr2.i.10.2, %and.i.10.2 *)
mul v_mul3_i_10_2 v_shr2_i_10_2 v_and_i_10_2;
(*   %mul4.i.10.2 = mul nuw i64 %and1.i.10.2, %shr.i.10.2 *)
mul v_mul4_i_10_2 v_and1_i_10_2 v_shr_i_10_2;
(*   %mul5.i.10.2 = mul nuw i64 %shr2.i.10.2, %shr.i.10.2 *)
mul v_mul5_i_10_2 v_shr2_i_10_2 v_shr_i_10_2;
(*   %and6.i.10.2 = and i64 %mul.i.10.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_10_2 v_mul_i_10_2 (0xFFFFFFFF)@uint64;
(*   %shr7.i.10.2 = lshr i64 %mul.i.10.2, 32 *)
(* You may need to modify here *)
split v_shr7_i_10_2 tmp_to_be_used v_mul_i_10_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_10_2;
assume eq tmp_to_be_used v_and6_i_10_2 && true;
(*   %and8.i.10.2 = and i64 %mul4.i.10.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_10_2 v_mul4_i_10_2 (0xFFFFFFFF)@uint64;
(*   %and9.i.10.2 = and i64 %mul3.i.10.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_10_2 v_mul3_i_10_2 (0xFFFFFFFF)@uint64;
(*   %add.i.10.2 = add nuw nsw i64 %shr7.i.10.2, %and8.i.10.2 *)
adds discard_266 v_add_i_10_2 v_shr7_i_10_2 v_and8_i_10_2;
(* Heuristics applied. *)
assert true && eq discard_266 0@1;
assume eq discard_266 0 && true;
(*   %add10.i.10.2 = add nuw nsw i64 %add.i.10.2, %and9.i.10.2 *)
adds discard_267 v_add10_i_10_2 v_add_i_10_2 v_and9_i_10_2;
(* Heuristics applied. *)
assert true && eq discard_267 0@1;
assume eq discard_267 0 && true;
(*   %shr11.i.10.2 = lshr i64 %add10.i.10.2, 32 *)
(* You may need to modify here *)
split v_shr11_i_10_2 tmp_to_be_used v_add10_i_10_2 32;
(*   %shl.i.10.2 = shl i64 %add10.i.10.2, 32 *)
shls discard_268 v_shl_i_10_2 v_add10_i_10_2 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_10_2 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_10_2 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.10.2 = or i64 %shl.i.10.2, %and6.i.10.2 *)
(* You may need to modify here *)
or uint64 v_xor68_i_10_2 v_shl_i_10_2 v_and6_i_10_2;
(* Heuristics applied. *)
assert true && eq v_xor68_i_10_2 v_shl_i_10_2 + v_and6_i_10_2;
assume eq v_xor68_i_10_2 v_shl_i_10_2 + v_and6_i_10_2 && true;
(*   %shr13.i.10.2 = lshr i64 %mul4.i.10.2, 32 *)
(* You may need to modify here *)
split v_shr13_i_10_2 tmp_to_be_used v_mul4_i_10_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_10_2;
assume eq tmp_to_be_used v_and8_i_10_2 && true;
(*   %shr14.i.10.2 = lshr i64 %mul3.i.10.2, 32 *)
(* You may need to modify here *)
split v_shr14_i_10_2 tmp_to_be_used v_mul3_i_10_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_10_2;
assume eq tmp_to_be_used v_and9_i_10_2 && true;
(*   %and15.i.10.2 = and i64 %mul5.i.10.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_10_2 v_mul5_i_10_2 (0xFFFFFFFF)@uint64;
(*   %add16.i.10.2 = add nuw nsw i64 %shr13.i.10.2, %shr14.i.10.2 *)
adds discard_269 v_add16_i_10_2 v_shr13_i_10_2 v_shr14_i_10_2;
(* Heuristics applied. *)
assert true && eq discard_269 0@1;
assume eq discard_269 0 && true;
(*   %add17.i.10.2 = add nuw nsw i64 %add16.i.10.2, %and15.i.10.2 *)
adds discard_270 v_add17_i_10_2 v_add16_i_10_2 v_and15_i_10_2;
(* Heuristics applied. *)
assert true && eq discard_270 0@1;
assume eq discard_270 0 && true;
(*   %add18.i.10.2 = add nuw nsw i64 %add17.i.10.2, %shr11.i.10.2 *)
adds discard_271 v_add18_i_10_2 v_add17_i_10_2 v_shr11_i_10_2;
(* Heuristics applied. *)
assert true && eq discard_271 0@1;
assume eq discard_271 0 && true;
(*   %and19.i.10.2 = and i64 %add18.i.10.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_10_2 v_add18_i_10_2 (0xFFFFFFFF)@uint64;
(*   %and21.i.10.2 = and i64 %add18.i.10.2, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_10_2 v_add18_i_10_2 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_10_2 v_and21_i_10_2 + v_and19_i_10_2;
assume eq v_add18_i_10_2 v_and21_i_10_2 + v_and19_i_10_2 && true;
(*   %and22.i.10.2 = and i64 %mul5.i.10.2, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_10_2 v_mul5_i_10_2 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_10_2 v_and22_i_10_2 + v_and15_i_10_2;
assume eq v_mul5_i_10_2 v_and22_i_10_2 + v_and15_i_10_2 && true;
(*   %add23.i.10.2 = add i64 %and21.i.10.2, %and22.i.10.2 *)
adds discard_272 v_add23_i_10_2 v_and21_i_10_2 v_and22_i_10_2;
(* Heuristics applied. *)
assert true && eq discard_272 0@1;
assume eq discard_272 0 && true;
(*   %xor2569.i.10.2 = or i64 %add23.i.10.2, %and19.i.10.2 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_10_2 v_add23_i_10_2 v_and19_i_10_2;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_10_2 v_add23_i_10_2 + v_and19_i_10_2;
assume eq v_xor2569_i_10_2 v_add23_i_10_2 + v_and19_i_10_2 && true;
(*   %add16.10.2 = add i64 %xor68.i.10.2, %add16.10.1 *)
adds discard_273 v_add16_10_2 v_xor68_i_10_2 v_add16_10_1;
(*   %xor.i315.10.2 = xor i64 %add16.10.2, %shl.i.10.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_10_2 v_add16_10_2 v_shl_i_10_2;
(*   %xor1.i316.10.2 = xor i64 %shl.i.10.2, %add16.10.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_10_2 v_shl_i_10_2 v_add16_10_1;
(*   %or.i317.10.2 = or i64 %xor.i315.10.2, %xor1.i316.10.2 *)
(* You may need to modify here *)
or uint64 v_or_i317_10_2 v_xor_i315_10_2 v_xor1_i316_10_2;
(*   %xor2.i318.10.2 = xor i64 %or.i317.10.2, %add16.10.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_10_2 v_or_i317_10_2 v_add16_10_2;
(*   %shr.i319.10.2 = lshr i64 %xor2.i318.10.2, 63 *)
(* You may need to modify here *)
split v_shr_i319_10_2 tmp_to_be_used v_xor2_i318_10_2 63;
(* generated by python *)
assert true && limbs 64 [v_add16_10_2, v_shr_i319_10_2] = limbs 64 [v_xor68_i_10_2, 0@64] + limbs 64 [v_add16_10_1, 0@64];
assume limbs 64 [v_add16_10_2, v_shr_i319_10_2] = limbs 64 [v_xor68_i_10_2, 0] + limbs 64 [v_add16_10_1, 0] && true;
(*   %add20.10.2 = add i64 %shr.i319.10.2, %xor2569.i.10.2 *)
adds discard_274 v_add20_10_2 v_shr_i319_10_2 v_xor2569_i_10_2;
(* Heuristics applied. *)
assert true && eq discard_274 0@1;
assume eq discard_274 0 && true;
(*   %add21.10.2 = add i64 %add20.10.2, %add21.10.1 *)
adds discard_275 v_add21_10_2 v_add20_10_2 v_add21_10_1;
(* Heuristics applied. *)
assert true && eq discard_275 0@1;
assume eq discard_275 0 && true;
(*   %90 = xor i64 %add20.10.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v90 v_add20_10_2 (0x8000000000000000)@uint64;
(*   %xor2.i312.10.2 = and i64 %90, %add23.i.10.2 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_10_2 v90 v_add23_i_10_2;
(*   %xor.i303.10.2 = xor i64 %add21.10.2, %add20.10.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_10_2 v_add21_10_2 v_add20_10_2;
(*   %xor1.i304.10.2 = xor i64 %add20.10.2, %add21.10.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_10_2 v_add20_10_2 v_add21_10_1;
(*   %or.i305.10.2 = or i64 %xor.i303.10.2, %xor1.i304.10.2 *)
(* You may need to modify here *)
or uint64 v_or_i305_10_2 v_xor_i303_10_2 v_xor1_i304_10_2;
(*   %xor2.i306.10.2 = xor i64 %or.i305.10.2, %add21.10.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_10_2 v_or_i305_10_2 v_add21_10_2;
(*   %shr.i313328.10.2 = or i64 %xor2.i306.10.2, %xor2.i312.10.2 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_10_2 v_xor2_i306_10_2 v_xor2_i312_10_2;
(*   %or25327.10.2 = lshr i64 %shr.i313328.10.2, 63 *)
(* You may need to modify here *)
split v_or25327_10_2 tmp_to_be_used v_shr_i313328_10_2 63;
(* generated by python *)
assert true && limbs 64 [v_add21_10_2, v_or25327_10_2] = limbs 64 [v_shr_i319_10_2, 0@64] + limbs 64 [v_xor2569_i_10_2, 0@64] + limbs 64 [v_add21_10_1, 0@64];
assume limbs 64 [v_add21_10_2, v_or25327_10_2] = limbs 64 [v_shr_i319_10_2, 0] + limbs 64 [v_xor2569_i_10_2, 0] + limbs 64 [v_add21_10_1, 0] && true;
(*   %add27.10.2 = add nsw i64 %or25327.10.2, %add27.10.1 *)
adds discard_276 v_add27_10_2 v_or25327_10_2 v_add27_10_1;
(* Heuristics applied. *)
assert true && eq discard_276 0@1;
assume eq discard_276 0 && true;
(*   %arrayidx9.10.3 = getelementptr inbounds i64, i64* %mc, i64 3 *)
(*   %91 = load i64, i64* %arrayidx9.10.3, align 8, !tbaa !3 *)
mov v91 mc_24;
(*   %92 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 7), align 8, !tbaa !3 *)
mov v92 p751p1_56;
(*   %and.i.10.3 = and i64 %91, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_10_3 v91 (0xFFFFFFFF)@uint64;
(*   %shr.i.10.3 = lshr i64 %91, 32 *)
(* You may need to modify here *)
split v_shr_i_10_3 tmp_to_be_used v91 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_10_3;
assume eq tmp_to_be_used v_and_i_10_3 && true;
(*   %and1.i.10.3 = and i64 %92, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_10_3 v92 (0xFFFFFFFF)@uint64;
(*   %shr2.i.10.3 = lshr i64 %92, 32 *)
(* You may need to modify here *)
split v_shr2_i_10_3 tmp_to_be_used v92 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_10_3;
assume eq tmp_to_be_used v_and1_i_10_3 && true;
(*   %mul.i.10.3 = mul nuw i64 %and1.i.10.3, %and.i.10.3 *)
mul v_mul_i_10_3 v_and1_i_10_3 v_and_i_10_3;
(*   %mul3.i.10.3 = mul nuw i64 %shr2.i.10.3, %and.i.10.3 *)
mul v_mul3_i_10_3 v_shr2_i_10_3 v_and_i_10_3;
(*   %mul4.i.10.3 = mul nuw i64 %and1.i.10.3, %shr.i.10.3 *)
mul v_mul4_i_10_3 v_and1_i_10_3 v_shr_i_10_3;
(*   %mul5.i.10.3 = mul nuw i64 %shr2.i.10.3, %shr.i.10.3 *)
mul v_mul5_i_10_3 v_shr2_i_10_3 v_shr_i_10_3;
(*   %and6.i.10.3 = and i64 %mul.i.10.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_10_3 v_mul_i_10_3 (0xFFFFFFFF)@uint64;
(*   %shr7.i.10.3 = lshr i64 %mul.i.10.3, 32 *)
(* You may need to modify here *)
split v_shr7_i_10_3 tmp_to_be_used v_mul_i_10_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_10_3;
assume eq tmp_to_be_used v_and6_i_10_3 && true;
(*   %and8.i.10.3 = and i64 %mul4.i.10.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_10_3 v_mul4_i_10_3 (0xFFFFFFFF)@uint64;
(*   %and9.i.10.3 = and i64 %mul3.i.10.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_10_3 v_mul3_i_10_3 (0xFFFFFFFF)@uint64;
(*   %add.i.10.3 = add nuw nsw i64 %shr7.i.10.3, %and8.i.10.3 *)
adds discard_277 v_add_i_10_3 v_shr7_i_10_3 v_and8_i_10_3;
(* Heuristics applied. *)
assert true && eq discard_277 0@1;
assume eq discard_277 0 && true;
(*   %add10.i.10.3 = add nuw nsw i64 %add.i.10.3, %and9.i.10.3 *)
adds discard_278 v_add10_i_10_3 v_add_i_10_3 v_and9_i_10_3;
(* Heuristics applied. *)
assert true && eq discard_278 0@1;
assume eq discard_278 0 && true;
(*   %shr11.i.10.3 = lshr i64 %add10.i.10.3, 32 *)
(* You may need to modify here *)
split v_shr11_i_10_3 tmp_to_be_used v_add10_i_10_3 32;
(*   %shl.i.10.3 = shl i64 %add10.i.10.3, 32 *)
shls discard_279 v_shl_i_10_3 v_add10_i_10_3 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_10_3 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_10_3 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.10.3 = or i64 %shl.i.10.3, %and6.i.10.3 *)
(* You may need to modify here *)
or uint64 v_xor68_i_10_3 v_shl_i_10_3 v_and6_i_10_3;
(* Heuristics applied. *)
assert true && eq v_xor68_i_10_3 v_shl_i_10_3 + v_and6_i_10_3;
assume eq v_xor68_i_10_3 v_shl_i_10_3 + v_and6_i_10_3 && true;
(*   %shr13.i.10.3 = lshr i64 %mul4.i.10.3, 32 *)
(* You may need to modify here *)
split v_shr13_i_10_3 tmp_to_be_used v_mul4_i_10_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_10_3;
assume eq tmp_to_be_used v_and8_i_10_3 && true;
(*   %shr14.i.10.3 = lshr i64 %mul3.i.10.3, 32 *)
(* You may need to modify here *)
split v_shr14_i_10_3 tmp_to_be_used v_mul3_i_10_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_10_3;
assume eq tmp_to_be_used v_and9_i_10_3 && true;
(*   %and15.i.10.3 = and i64 %mul5.i.10.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_10_3 v_mul5_i_10_3 (0xFFFFFFFF)@uint64;
(*   %add16.i.10.3 = add nuw nsw i64 %shr13.i.10.3, %shr14.i.10.3 *)
adds discard_280 v_add16_i_10_3 v_shr13_i_10_3 v_shr14_i_10_3;
(* Heuristics applied. *)
assert true && eq discard_280 0@1;
assume eq discard_280 0 && true;
(*   %add17.i.10.3 = add nuw nsw i64 %add16.i.10.3, %and15.i.10.3 *)
adds discard_281 v_add17_i_10_3 v_add16_i_10_3 v_and15_i_10_3;
(* Heuristics applied. *)
assert true && eq discard_281 0@1;
assume eq discard_281 0 && true;
(*   %add18.i.10.3 = add nuw nsw i64 %add17.i.10.3, %shr11.i.10.3 *)
adds discard_282 v_add18_i_10_3 v_add17_i_10_3 v_shr11_i_10_3;
(* Heuristics applied. *)
assert true && eq discard_282 0@1;
assume eq discard_282 0 && true;
(*   %and19.i.10.3 = and i64 %add18.i.10.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_10_3 v_add18_i_10_3 (0xFFFFFFFF)@uint64;
(*   %and21.i.10.3 = and i64 %add18.i.10.3, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_10_3 v_add18_i_10_3 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_10_3 v_and21_i_10_3 + v_and19_i_10_3;
assume eq v_add18_i_10_3 v_and21_i_10_3 + v_and19_i_10_3 && true;
(*   %and22.i.10.3 = and i64 %mul5.i.10.3, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_10_3 v_mul5_i_10_3 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_10_3 v_and22_i_10_3 + v_and15_i_10_3;
assume eq v_mul5_i_10_3 v_and22_i_10_3 + v_and15_i_10_3 && true;
(*   %add23.i.10.3 = add i64 %and21.i.10.3, %and22.i.10.3 *)
adds discard_283 v_add23_i_10_3 v_and21_i_10_3 v_and22_i_10_3;
(* Heuristics applied. *)
assert true && eq discard_283 0@1;
assume eq discard_283 0 && true;
(*   %xor2569.i.10.3 = or i64 %add23.i.10.3, %and19.i.10.3 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_10_3 v_add23_i_10_3 v_and19_i_10_3;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_10_3 v_add23_i_10_3 + v_and19_i_10_3;
assume eq v_xor2569_i_10_3 v_add23_i_10_3 + v_and19_i_10_3 && true;
(*   %add16.10.3 = add i64 %xor68.i.10.3, %add16.10.2 *)
adds discard_284 v_add16_10_3 v_xor68_i_10_3 v_add16_10_2;
(*   %xor.i315.10.3 = xor i64 %add16.10.3, %shl.i.10.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_10_3 v_add16_10_3 v_shl_i_10_3;
(*   %xor1.i316.10.3 = xor i64 %shl.i.10.3, %add16.10.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_10_3 v_shl_i_10_3 v_add16_10_2;
(*   %or.i317.10.3 = or i64 %xor.i315.10.3, %xor1.i316.10.3 *)
(* You may need to modify here *)
or uint64 v_or_i317_10_3 v_xor_i315_10_3 v_xor1_i316_10_3;
(*   %xor2.i318.10.3 = xor i64 %or.i317.10.3, %add16.10.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_10_3 v_or_i317_10_3 v_add16_10_3;
(*   %shr.i319.10.3 = lshr i64 %xor2.i318.10.3, 63 *)
(* You may need to modify here *)
split v_shr_i319_10_3 tmp_to_be_used v_xor2_i318_10_3 63;
(* generated by python *)
assert true && limbs 64 [v_add16_10_3, v_shr_i319_10_3] = limbs 64 [v_xor68_i_10_3, 0@64] + limbs 64 [v_add16_10_2, 0@64];
assume limbs 64 [v_add16_10_3, v_shr_i319_10_3] = limbs 64 [v_xor68_i_10_3, 0] + limbs 64 [v_add16_10_2, 0] && true;
(*   %add20.10.3 = add i64 %shr.i319.10.3, %xor2569.i.10.3 *)
adds discard_285 v_add20_10_3 v_shr_i319_10_3 v_xor2569_i_10_3;
(* Heuristics applied. *)
assert true && eq discard_285 0@1;
assume eq discard_285 0 && true;
(*   %add21.10.3 = add i64 %add20.10.3, %add21.10.2 *)
adds discard_286 v_add21_10_3 v_add20_10_3 v_add21_10_2;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_286 0@1; *)
(* assume eq discard_286 0 && true; *)
(*   %93 = xor i64 %add20.10.3, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v93 v_add20_10_3 (0x8000000000000000)@uint64;
(*   %xor2.i312.10.3 = and i64 %93, %add23.i.10.3 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_10_3 v93 v_add23_i_10_3;
(*   %xor.i303.10.3 = xor i64 %add21.10.3, %add20.10.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_10_3 v_add21_10_3 v_add20_10_3;
(*   %xor1.i304.10.3 = xor i64 %add20.10.3, %add21.10.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_10_3 v_add20_10_3 v_add21_10_2;
(*   %or.i305.10.3 = or i64 %xor.i303.10.3, %xor1.i304.10.3 *)
(* You may need to modify here *)
or uint64 v_or_i305_10_3 v_xor_i303_10_3 v_xor1_i304_10_3;
(*   %xor2.i306.10.3 = xor i64 %or.i305.10.3, %add21.10.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_10_3 v_or_i305_10_3 v_add21_10_3;
(*   %shr.i313328.10.3 = or i64 %xor2.i306.10.3, %xor2.i312.10.3 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_10_3 v_xor2_i306_10_3 v_xor2_i312_10_3;
(*   %or25327.10.3 = lshr i64 %shr.i313328.10.3, 63 *)
(* You may need to modify here *)
split v_or25327_10_3 tmp_to_be_used v_shr_i313328_10_3 63;
(* generated by python *)
assert true && limbs 64 [v_add21_10_3, v_or25327_10_3] = limbs 64 [v_shr_i319_10_3, 0@64] + limbs 64 [v_xor2569_i_10_3, 0@64] + limbs 64 [v_add21_10_2, 0@64];
assume limbs 64 [v_add21_10_3, v_or25327_10_3] = limbs 64 [v_shr_i319_10_3, 0] + limbs 64 [v_xor2569_i_10_3, 0] + limbs 64 [v_add21_10_2, 0] && true;
(*   %add27.10.3 = add nsw i64 %or25327.10.3, %add27.10.2 *)
adds discard_287 v_add27_10_3 v_or25327_10_3 v_add27_10_2;
(* Heuristics applied. *)
assert true && eq discard_287 0@1;
assume eq discard_287 0 && true;
(*   %arrayidx9.10.4 = getelementptr inbounds i64, i64* %mc, i64 4 *)
(*   %94 = load i64, i64* %arrayidx9.10.4, align 8, !tbaa !3 *)
mov v94 mc_32;
(*   %95 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 6), align 16, !tbaa !3 *)
mov v95 p751p1_48;
(*   %and.i.10.4 = and i64 %94, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_10_4 v94 (0xFFFFFFFF)@uint64;
(*   %shr.i.10.4 = lshr i64 %94, 32 *)
(* You may need to modify here *)
split v_shr_i_10_4 tmp_to_be_used v94 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_10_4;
assume eq tmp_to_be_used v_and_i_10_4 && true;
(*   %and1.i.10.4 = and i64 %95, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_10_4 v95 (0xFFFFFFFF)@uint64;
(*   %shr2.i.10.4 = lshr i64 %95, 32 *)
(* You may need to modify here *)
split v_shr2_i_10_4 tmp_to_be_used v95 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_10_4;
assume eq tmp_to_be_used v_and1_i_10_4 && true;
(*   %mul.i.10.4 = mul nuw i64 %and1.i.10.4, %and.i.10.4 *)
mul v_mul_i_10_4 v_and1_i_10_4 v_and_i_10_4;
(*   %mul3.i.10.4 = mul nuw i64 %shr2.i.10.4, %and.i.10.4 *)
mul v_mul3_i_10_4 v_shr2_i_10_4 v_and_i_10_4;
(*   %mul4.i.10.4 = mul nuw i64 %and1.i.10.4, %shr.i.10.4 *)
mul v_mul4_i_10_4 v_and1_i_10_4 v_shr_i_10_4;
(*   %mul5.i.10.4 = mul nuw i64 %shr2.i.10.4, %shr.i.10.4 *)
mul v_mul5_i_10_4 v_shr2_i_10_4 v_shr_i_10_4;
(*   %and6.i.10.4 = and i64 %mul.i.10.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_10_4 v_mul_i_10_4 (0xFFFFFFFF)@uint64;
(*   %shr7.i.10.4 = lshr i64 %mul.i.10.4, 32 *)
(* You may need to modify here *)
split v_shr7_i_10_4 tmp_to_be_used v_mul_i_10_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_10_4;
assume eq tmp_to_be_used v_and6_i_10_4 && true;
(*   %and8.i.10.4 = and i64 %mul4.i.10.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_10_4 v_mul4_i_10_4 (0xFFFFFFFF)@uint64;
(*   %and9.i.10.4 = and i64 %mul3.i.10.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_10_4 v_mul3_i_10_4 (0xFFFFFFFF)@uint64;
(*   %add.i.10.4 = add nuw nsw i64 %shr7.i.10.4, %and8.i.10.4 *)
adds discard_288 v_add_i_10_4 v_shr7_i_10_4 v_and8_i_10_4;
(* Heuristics applied. *)
assert true && eq discard_288 0@1;
assume eq discard_288 0 && true;
(*   %add10.i.10.4 = add nuw nsw i64 %add.i.10.4, %and9.i.10.4 *)
adds discard_289 v_add10_i_10_4 v_add_i_10_4 v_and9_i_10_4;
(* Heuristics applied. *)
assert true && eq discard_289 0@1;
assume eq discard_289 0 && true;
(*   %shr11.i.10.4 = lshr i64 %add10.i.10.4, 32 *)
(* You may need to modify here *)
split v_shr11_i_10_4 tmp_to_be_used v_add10_i_10_4 32;
(*   %shl.i.10.4 = shl i64 %add10.i.10.4, 32 *)
shls discard_290 v_shl_i_10_4 v_add10_i_10_4 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_10_4 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_10_4 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.10.4 = or i64 %shl.i.10.4, %and6.i.10.4 *)
(* You may need to modify here *)
or uint64 v_xor68_i_10_4 v_shl_i_10_4 v_and6_i_10_4;
(* Heuristics applied. *)
assert true && eq v_xor68_i_10_4 v_shl_i_10_4 + v_and6_i_10_4;
assume eq v_xor68_i_10_4 v_shl_i_10_4 + v_and6_i_10_4 && true;
(*   %shr13.i.10.4 = lshr i64 %mul4.i.10.4, 32 *)
(* You may need to modify here *)
split v_shr13_i_10_4 tmp_to_be_used v_mul4_i_10_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_10_4;
assume eq tmp_to_be_used v_and8_i_10_4 && true;
(*   %shr14.i.10.4 = lshr i64 %mul3.i.10.4, 32 *)
(* You may need to modify here *)
split v_shr14_i_10_4 tmp_to_be_used v_mul3_i_10_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_10_4;
assume eq tmp_to_be_used v_and9_i_10_4 && true;
(*   %and15.i.10.4 = and i64 %mul5.i.10.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_10_4 v_mul5_i_10_4 (0xFFFFFFFF)@uint64;
(*   %add16.i.10.4 = add nuw nsw i64 %shr13.i.10.4, %shr14.i.10.4 *)
adds discard_291 v_add16_i_10_4 v_shr13_i_10_4 v_shr14_i_10_4;
(* Heuristics applied. *)
assert true && eq discard_291 0@1;
assume eq discard_291 0 && true;
(*   %add17.i.10.4 = add nuw nsw i64 %add16.i.10.4, %and15.i.10.4 *)
adds discard_292 v_add17_i_10_4 v_add16_i_10_4 v_and15_i_10_4;
(* Heuristics applied. *)
assert true && eq discard_292 0@1;
assume eq discard_292 0 && true;
(*   %add18.i.10.4 = add nuw nsw i64 %add17.i.10.4, %shr11.i.10.4 *)
adds discard_293 v_add18_i_10_4 v_add17_i_10_4 v_shr11_i_10_4;
(* Heuristics applied. *)
assert true && eq discard_293 0@1;
assume eq discard_293 0 && true;
(*   %and19.i.10.4 = and i64 %add18.i.10.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_10_4 v_add18_i_10_4 (0xFFFFFFFF)@uint64;
(*   %and21.i.10.4 = and i64 %add18.i.10.4, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_10_4 v_add18_i_10_4 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_10_4 v_and21_i_10_4 + v_and19_i_10_4;
assume eq v_add18_i_10_4 v_and21_i_10_4 + v_and19_i_10_4 && true;
(*   %and22.i.10.4 = and i64 %mul5.i.10.4, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_10_4 v_mul5_i_10_4 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_10_4 v_and22_i_10_4 + v_and15_i_10_4;
assume eq v_mul5_i_10_4 v_and22_i_10_4 + v_and15_i_10_4 && true;
(*   %add23.i.10.4 = add i64 %and21.i.10.4, %and22.i.10.4 *)
adds discard_294 v_add23_i_10_4 v_and21_i_10_4 v_and22_i_10_4;
(* Heuristics applied. *)
assert true && eq discard_294 0@1;
assume eq discard_294 0 && true;
(*   %xor2569.i.10.4 = or i64 %add23.i.10.4, %and19.i.10.4 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_10_4 v_add23_i_10_4 v_and19_i_10_4;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_10_4 v_add23_i_10_4 + v_and19_i_10_4;
assume eq v_xor2569_i_10_4 v_add23_i_10_4 + v_and19_i_10_4 && true;
(*   %add16.10.4 = add i64 %xor68.i.10.4, %add16.10.3 *)
adds discard_295 v_add16_10_4 v_xor68_i_10_4 v_add16_10_3;
(*   %xor.i315.10.4 = xor i64 %add16.10.4, %shl.i.10.4 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_10_4 v_add16_10_4 v_shl_i_10_4;
(*   %xor1.i316.10.4 = xor i64 %shl.i.10.4, %add16.10.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_10_4 v_shl_i_10_4 v_add16_10_3;
(*   %or.i317.10.4 = or i64 %xor.i315.10.4, %xor1.i316.10.4 *)
(* You may need to modify here *)
or uint64 v_or_i317_10_4 v_xor_i315_10_4 v_xor1_i316_10_4;
(*   %xor2.i318.10.4 = xor i64 %or.i317.10.4, %add16.10.4 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_10_4 v_or_i317_10_4 v_add16_10_4;
(*   %shr.i319.10.4 = lshr i64 %xor2.i318.10.4, 63 *)
(* You may need to modify here *)
split v_shr_i319_10_4 tmp_to_be_used v_xor2_i318_10_4 63;
(* generated by python *)
assert true && limbs 64 [v_add16_10_4, v_shr_i319_10_4] = limbs 64 [v_xor68_i_10_4, 0@64] + limbs 64 [v_add16_10_3, 0@64];
assume limbs 64 [v_add16_10_4, v_shr_i319_10_4] = limbs 64 [v_xor68_i_10_4, 0] + limbs 64 [v_add16_10_3, 0] && true;
(*   %add20.10.4 = add i64 %shr.i319.10.4, %xor2569.i.10.4 *)
adds discard_296 v_add20_10_4 v_shr_i319_10_4 v_xor2569_i_10_4;
(* Heuristics applied. *)
assert true && eq discard_296 0@1;
assume eq discard_296 0 && true;
(*   %add21.10.4 = add i64 %add20.10.4, %add21.10.3 *)
adds discard_297 v_add21_10_4 v_add20_10_4 v_add21_10_3;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_297 0@1; *)
(* assume eq discard_297 0 && true; *)
(*   %96 = xor i64 %add20.10.4, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v96 v_add20_10_4 (0x8000000000000000)@uint64;
(*   %xor2.i312.10.4 = and i64 %96, %add23.i.10.4 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_10_4 v96 v_add23_i_10_4;
(*   %xor.i303.10.4 = xor i64 %add21.10.4, %add20.10.4 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_10_4 v_add21_10_4 v_add20_10_4;
(*   %xor1.i304.10.4 = xor i64 %add20.10.4, %add21.10.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_10_4 v_add20_10_4 v_add21_10_3;
(*   %or.i305.10.4 = or i64 %xor.i303.10.4, %xor1.i304.10.4 *)
(* You may need to modify here *)
or uint64 v_or_i305_10_4 v_xor_i303_10_4 v_xor1_i304_10_4;
(*   %xor2.i306.10.4 = xor i64 %or.i305.10.4, %add21.10.4 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_10_4 v_or_i305_10_4 v_add21_10_4;
(*   %shr.i313328.10.4 = or i64 %xor2.i306.10.4, %xor2.i312.10.4 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_10_4 v_xor2_i306_10_4 v_xor2_i312_10_4;
(*   %or25327.10.4 = lshr i64 %shr.i313328.10.4, 63 *)
(* You may need to modify here *)
split v_or25327_10_4 tmp_to_be_used v_shr_i313328_10_4 63;
(* generated by python *)
assert true && limbs 64 [v_add21_10_4, v_or25327_10_4] = limbs 64 [v_shr_i319_10_4, 0@64] + limbs 64 [v_xor2569_i_10_4, 0@64] + limbs 64 [v_add21_10_3, 0@64];
assume limbs 64 [v_add21_10_4, v_or25327_10_4] = limbs 64 [v_shr_i319_10_4, 0] + limbs 64 [v_xor2569_i_10_4, 0] + limbs 64 [v_add21_10_3, 0] && true;
(*   %add27.10.4 = add i64 %or25327.10.4, %add27.10.3 *)
adds discard_298 v_add27_10_4 v_or25327_10_4 v_add27_10_3;
(* Heuristics applied. *)
assert true && eq discard_298 0@1;
assume eq discard_298 0 && true;
(*   %arrayidx9.10.5 = getelementptr inbounds i64, i64* %mc, i64 5 *)
(*   %97 = load i64, i64* %arrayidx9.10.5, align 8, !tbaa !3 *)
mov v97 mc_40;
(*   %98 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 5), align 8, !tbaa !3 *)
mov v98 p751p1_40;
(*   %and.i.10.5 = and i64 %97, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_10_5 v97 (0xFFFFFFFF)@uint64;
(*   %shr.i.10.5 = lshr i64 %97, 32 *)
(* You may need to modify here *)
split v_shr_i_10_5 tmp_to_be_used v97 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_10_5;
assume eq tmp_to_be_used v_and_i_10_5 && true;
(*   %and1.i.10.5 = and i64 %98, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_10_5 v98 (0xFFFFFFFF)@uint64;
(*   %shr2.i.10.5 = lshr i64 %98, 32 *)
(* You may need to modify here *)
split v_shr2_i_10_5 tmp_to_be_used v98 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_10_5;
assume eq tmp_to_be_used v_and1_i_10_5 && true;
(*   %mul.i.10.5 = mul nuw i64 %and1.i.10.5, %and.i.10.5 *)
mul v_mul_i_10_5 v_and1_i_10_5 v_and_i_10_5;
(*   %mul3.i.10.5 = mul nuw i64 %shr2.i.10.5, %and.i.10.5 *)
mul v_mul3_i_10_5 v_shr2_i_10_5 v_and_i_10_5;
(*   %mul4.i.10.5 = mul nuw i64 %and1.i.10.5, %shr.i.10.5 *)
mul v_mul4_i_10_5 v_and1_i_10_5 v_shr_i_10_5;
(*   %mul5.i.10.5 = mul nuw i64 %shr2.i.10.5, %shr.i.10.5 *)
mul v_mul5_i_10_5 v_shr2_i_10_5 v_shr_i_10_5;
(*   %and6.i.10.5 = and i64 %mul.i.10.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_10_5 v_mul_i_10_5 (0xFFFFFFFF)@uint64;
(*   %shr7.i.10.5 = lshr i64 %mul.i.10.5, 32 *)
(* You may need to modify here *)
split v_shr7_i_10_5 tmp_to_be_used v_mul_i_10_5 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_10_5;
assume eq tmp_to_be_used v_and6_i_10_5 && true;
(*   %and8.i.10.5 = and i64 %mul4.i.10.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_10_5 v_mul4_i_10_5 (0xFFFFFFFF)@uint64;
(*   %and9.i.10.5 = and i64 %mul3.i.10.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_10_5 v_mul3_i_10_5 (0xFFFFFFFF)@uint64;
(*   %add.i.10.5 = add nuw nsw i64 %shr7.i.10.5, %and8.i.10.5 *)
adds discard_299 v_add_i_10_5 v_shr7_i_10_5 v_and8_i_10_5;
(* Heuristics applied. *)
assert true && eq discard_299 0@1;
assume eq discard_299 0 && true;
(*   %add10.i.10.5 = add nuw nsw i64 %add.i.10.5, %and9.i.10.5 *)
adds discard_300 v_add10_i_10_5 v_add_i_10_5 v_and9_i_10_5;
(* Heuristics applied. *)
assert true && eq discard_300 0@1;
assume eq discard_300 0 && true;
(*   %shr11.i.10.5 = lshr i64 %add10.i.10.5, 32 *)
(* You may need to modify here *)
split v_shr11_i_10_5 tmp_to_be_used v_add10_i_10_5 32;
(*   %shl.i.10.5 = shl i64 %add10.i.10.5, 32 *)
shls discard_301 v_shl_i_10_5 v_add10_i_10_5 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_10_5 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_10_5 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.10.5 = or i64 %shl.i.10.5, %and6.i.10.5 *)
(* You may need to modify here *)
or uint64 v_xor68_i_10_5 v_shl_i_10_5 v_and6_i_10_5;
(* Heuristics applied. *)
assert true && eq v_xor68_i_10_5 v_shl_i_10_5 + v_and6_i_10_5;
assume eq v_xor68_i_10_5 v_shl_i_10_5 + v_and6_i_10_5 && true;
(*   %shr13.i.10.5 = lshr i64 %mul4.i.10.5, 32 *)
(* You may need to modify here *)
split v_shr13_i_10_5 tmp_to_be_used v_mul4_i_10_5 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_10_5;
assume eq tmp_to_be_used v_and8_i_10_5 && true;
(*   %shr14.i.10.5 = lshr i64 %mul3.i.10.5, 32 *)
(* You may need to modify here *)
split v_shr14_i_10_5 tmp_to_be_used v_mul3_i_10_5 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_10_5;
assume eq tmp_to_be_used v_and9_i_10_5 && true;
(*   %and15.i.10.5 = and i64 %mul5.i.10.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_10_5 v_mul5_i_10_5 (0xFFFFFFFF)@uint64;
(*   %add16.i.10.5 = add nuw nsw i64 %shr13.i.10.5, %shr14.i.10.5 *)
adds discard_302 v_add16_i_10_5 v_shr13_i_10_5 v_shr14_i_10_5;
(* Heuristics applied. *)
assert true && eq discard_302 0@1;
assume eq discard_302 0 && true;
(*   %add17.i.10.5 = add nuw nsw i64 %add16.i.10.5, %and15.i.10.5 *)
adds discard_303 v_add17_i_10_5 v_add16_i_10_5 v_and15_i_10_5;
(* Heuristics applied. *)
assert true && eq discard_303 0@1;
assume eq discard_303 0 && true;
(*   %add18.i.10.5 = add nuw nsw i64 %add17.i.10.5, %shr11.i.10.5 *)
adds discard_304 v_add18_i_10_5 v_add17_i_10_5 v_shr11_i_10_5;
(* Heuristics applied. *)
assert true && eq discard_304 0@1;
assume eq discard_304 0 && true;
(*   %and19.i.10.5 = and i64 %add18.i.10.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_10_5 v_add18_i_10_5 (0xFFFFFFFF)@uint64;
(*   %and21.i.10.5 = and i64 %add18.i.10.5, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_10_5 v_add18_i_10_5 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_10_5 v_and21_i_10_5 + v_and19_i_10_5;
assume eq v_add18_i_10_5 v_and21_i_10_5 + v_and19_i_10_5 && true;
(*   %and22.i.10.5 = and i64 %mul5.i.10.5, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_10_5 v_mul5_i_10_5 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_10_5 v_and22_i_10_5 + v_and15_i_10_5;
assume eq v_mul5_i_10_5 v_and22_i_10_5 + v_and15_i_10_5 && true;
(*   %add23.i.10.5 = add i64 %and21.i.10.5, %and22.i.10.5 *)
adds discard_305 v_add23_i_10_5 v_and21_i_10_5 v_and22_i_10_5;
(* Heuristics applied. *)
assert true && eq discard_305 0@1;
assume eq discard_305 0 && true;
(*   %xor2569.i.10.5 = or i64 %add23.i.10.5, %and19.i.10.5 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_10_5 v_add23_i_10_5 v_and19_i_10_5;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_10_5 v_add23_i_10_5 + v_and19_i_10_5;
assume eq v_xor2569_i_10_5 v_add23_i_10_5 + v_and19_i_10_5 && true;
(*   %add16.10.5 = add i64 %xor68.i.10.5, %add16.10.4 *)
adds discard_306 v_add16_10_5 v_xor68_i_10_5 v_add16_10_4;
(*   %xor.i315.10.5 = xor i64 %add16.10.5, %shl.i.10.5 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_10_5 v_add16_10_5 v_shl_i_10_5;
(*   %xor1.i316.10.5 = xor i64 %shl.i.10.5, %add16.10.4 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_10_5 v_shl_i_10_5 v_add16_10_4;
(*   %or.i317.10.5 = or i64 %xor.i315.10.5, %xor1.i316.10.5 *)
(* You may need to modify here *)
or uint64 v_or_i317_10_5 v_xor_i315_10_5 v_xor1_i316_10_5;
(*   %xor2.i318.10.5 = xor i64 %or.i317.10.5, %add16.10.5 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_10_5 v_or_i317_10_5 v_add16_10_5;
(*   %shr.i319.10.5 = lshr i64 %xor2.i318.10.5, 63 *)
(* You may need to modify here *)
split v_shr_i319_10_5 tmp_to_be_used v_xor2_i318_10_5 63;
(* generated by python *)
assert true && limbs 64 [v_add16_10_5, v_shr_i319_10_5] = limbs 64 [v_xor68_i_10_5, 0@64] + limbs 64 [v_add16_10_4, 0@64];
assume limbs 64 [v_add16_10_5, v_shr_i319_10_5] = limbs 64 [v_xor68_i_10_5, 0] + limbs 64 [v_add16_10_4, 0] && true;
(*   %add20.10.5 = add i64 %shr.i319.10.5, %xor2569.i.10.5 *)
adds discard_307 v_add20_10_5 v_shr_i319_10_5 v_xor2569_i_10_5;
(* Heuristics applied. *)
assert true && eq discard_307 0@1;
assume eq discard_307 0 && true;
(*   %add21.10.5 = add i64 %add20.10.5, %add21.10.4 *)
adds discard_308 v_add21_10_5 v_add20_10_5 v_add21_10_4;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_308 0@1; *)
(* assume eq discard_308 0 && true; *)
(*   %99 = xor i64 %add20.10.5, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v99 v_add20_10_5 (0x8000000000000000)@uint64;
(*   %xor2.i312.10.5 = and i64 %99, %add23.i.10.5 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_10_5 v99 v_add23_i_10_5;
(*   %xor.i303.10.5 = xor i64 %add21.10.5, %add20.10.5 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_10_5 v_add21_10_5 v_add20_10_5;
(*   %xor1.i304.10.5 = xor i64 %add20.10.5, %add21.10.4 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_10_5 v_add20_10_5 v_add21_10_4;
(*   %or.i305.10.5 = or i64 %xor.i303.10.5, %xor1.i304.10.5 *)
(* You may need to modify here *)
or uint64 v_or_i305_10_5 v_xor_i303_10_5 v_xor1_i304_10_5;
(*   %xor2.i306.10.5 = xor i64 %or.i305.10.5, %add21.10.5 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_10_5 v_or_i305_10_5 v_add21_10_5;
(*   %shr.i313328.10.5 = or i64 %xor2.i306.10.5, %xor2.i312.10.5 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_10_5 v_xor2_i306_10_5 v_xor2_i312_10_5;
(*   %or25327.10.5 = lshr i64 %shr.i313328.10.5, 63 *)
(* You may need to modify here *)
split v_or25327_10_5 tmp_to_be_used v_shr_i313328_10_5 63;
(* generated by python *)
assert true && limbs 64 [v_add21_10_5, v_or25327_10_5] = limbs 64 [v_shr_i319_10_5, 0@64] + limbs 64 [v_xor2569_i_10_5, 0@64] + limbs 64 [v_add21_10_4, 0@64];
assume limbs 64 [v_add21_10_5, v_or25327_10_5] = limbs 64 [v_shr_i319_10_5, 0] + limbs 64 [v_xor2569_i_10_5, 0] + limbs 64 [v_add21_10_4, 0] && true;
(*   %add27.10.5 = add i64 %or25327.10.5, %add27.10.4 *)
adds discard_309 v_add27_10_5 v_or25327_10_5 v_add27_10_4;
(* Heuristics applied. *)
assert true && eq discard_309 0@1;
assume eq discard_309 0 && true;
(*   %arrayidx34.10 = getelementptr inbounds i64, i64* %ma, i64 10 *)
(*   %100 = load i64, i64* %arrayidx34.10, align 8, !tbaa !3 *)
mov v100 ma_80;
(*   %add35.10 = add i64 %100, %add16.10.5 *)
adds discard_310 v_add35_10 v100 v_add16_10_5;
(*   %xor.i297.10 = xor i64 %add35.10, %add16.10.5 *)
(* You may need to modify here *)
xor uint64 v_xor_i297_10 v_add35_10 v_add16_10_5;
(*   %xor1.i298.10 = xor i64 %100, %add16.10.5 *)
(* You may need to modify here *)
xor uint64 v_xor1_i298_10 v100 v_add16_10_5;
(*   %or.i299.10 = or i64 %xor.i297.10, %xor1.i298.10 *)
(* You may need to modify here *)
or uint64 v_or_i299_10 v_xor_i297_10 v_xor1_i298_10;
(*   %xor2.i300.10 = xor i64 %or.i299.10, %add35.10 *)
(* You may need to modify here *)
xor uint64 v_xor2_i300_10 v_or_i299_10 v_add35_10;
(*   %shr.i301.10 = lshr i64 %xor2.i300.10, 63 *)
(* You may need to modify here *)
split v_shr_i301_10 tmp_to_be_used v_xor2_i300_10 63;
(* generated by python *)
assert true && limbs 64 [v_add35_10, v_shr_i301_10] = limbs 64 [v100, 0@64] + limbs 64 [v_add16_10_5, 0@64];
assume limbs 64 [v_add35_10, v_shr_i301_10] = limbs 64 [v100, 0] + limbs 64 [v_add16_10_5, 0] && true;
(*   %add41.10 = add i64 %shr.i301.10, %add21.10.5 *)
adds discard_311 v_add41_10 v_shr_i301_10 v_add21_10_5;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_311 0@1; *)
(* assume eq discard_311 0 && true; *)
(*   %arrayidx50.10 = getelementptr inbounds i64, i64* %mc, i64 10 *)
(*   store i64 %add35.10, i64* %arrayidx50.10, align 8, !tbaa !3 *)
mov mc_80 v_add35_10;
(*   %101 = xor i64 %add41.10, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v101 v_add41_10 (0x8000000000000000)@uint64;
(*   %xor2.i294.10 = and i64 %101, %add21.10.5 *)
(* You may need to modify here *)
and uint64 v_xor2_i294_10 v101 v_add21_10_5;
(*   %shr.i295.10 = lshr i64 %xor2.i294.10, 63 *)
(* You may need to modify here *)
split v_shr_i295_10 tmp_to_be_used v_xor2_i294_10 63;
(* generated by python *)
assert true && limbs 64 [v_add41_10, v_shr_i295_10] = limbs 64 [v_shr_i301_10, 0@64] + limbs 64 [v_add21_10_5, 0@64];
assume limbs 64 [v_add41_10, v_shr_i295_10] = limbs 64 [v_shr_i301_10, 0] + limbs 64 [v_add21_10_5, 0] && true;
(*   %add48.10 = add i64 %shr.i295.10, %add27.10.5 *)
adds discard_312 v_add48_10 v_shr_i295_10 v_add27_10_5;
(* Heuristics applied. *)
assert true && eq discard_312 0@1;
assume eq discard_312 0 && true;
(*   %102 = load i64, i64* %mc, align 8, !tbaa !3 *)
mov v102 mc_0;
(*   %103 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 11), align 8, !tbaa !3 *)
mov v103 p751p1_88;
(*   %and.i.11 = and i64 %102, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_11 v102 (0xFFFFFFFF)@uint64;
(*   %shr.i.11 = lshr i64 %102, 32 *)
(* You may need to modify here *)
split v_shr_i_11 tmp_to_be_used v102 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_11;
assume eq tmp_to_be_used v_and_i_11 && true;
(*   %and1.i.11 = and i64 %103, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_11 v103 (0xFFFFFFFF)@uint64;
(*   %shr2.i.11 = lshr i64 %103, 32 *)
(* You may need to modify here *)
split v_shr2_i_11 tmp_to_be_used v103 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_11;
assume eq tmp_to_be_used v_and1_i_11 && true;
(*   %mul.i.11 = mul nuw i64 %and1.i.11, %and.i.11 *)
mul v_mul_i_11 v_and1_i_11 v_and_i_11;
(*   %mul3.i.11 = mul nuw i64 %shr2.i.11, %and.i.11 *)
mul v_mul3_i_11 v_shr2_i_11 v_and_i_11;
(*   %mul4.i.11 = mul nuw i64 %and1.i.11, %shr.i.11 *)
mul v_mul4_i_11 v_and1_i_11 v_shr_i_11;
(*   %mul5.i.11 = mul nuw i64 %shr2.i.11, %shr.i.11 *)
mul v_mul5_i_11 v_shr2_i_11 v_shr_i_11;
(*   %and6.i.11 = and i64 %mul.i.11, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_11 v_mul_i_11 (0xFFFFFFFF)@uint64;
(*   %shr7.i.11 = lshr i64 %mul.i.11, 32 *)
(* You may need to modify here *)
split v_shr7_i_11 tmp_to_be_used v_mul_i_11 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_11;
assume eq tmp_to_be_used v_and6_i_11 && true;
(*   %and8.i.11 = and i64 %mul4.i.11, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_11 v_mul4_i_11 (0xFFFFFFFF)@uint64;
(*   %and9.i.11 = and i64 %mul3.i.11, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_11 v_mul3_i_11 (0xFFFFFFFF)@uint64;
(*   %add.i.11 = add nuw nsw i64 %shr7.i.11, %and8.i.11 *)
adds discard_313 v_add_i_11 v_shr7_i_11 v_and8_i_11;
(* Heuristics applied. *)
assert true && eq discard_313 0@1;
assume eq discard_313 0 && true;
(*   %add10.i.11 = add nuw nsw i64 %add.i.11, %and9.i.11 *)
adds discard_314 v_add10_i_11 v_add_i_11 v_and9_i_11;
(* Heuristics applied. *)
assert true && eq discard_314 0@1;
assume eq discard_314 0 && true;
(*   %shr11.i.11 = lshr i64 %add10.i.11, 32 *)
(* You may need to modify here *)
split v_shr11_i_11 tmp_to_be_used v_add10_i_11 32;
(*   %shl.i.11 = shl i64 %add10.i.11, 32 *)
shls discard_315 v_shl_i_11 v_add10_i_11 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_11 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_11 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.11 = or i64 %shl.i.11, %and6.i.11 *)
(* You may need to modify here *)
or uint64 v_xor68_i_11 v_shl_i_11 v_and6_i_11;
(* Heuristics applied. *)
assert true && eq v_xor68_i_11 v_shl_i_11 + v_and6_i_11;
assume eq v_xor68_i_11 v_shl_i_11 + v_and6_i_11 && true;
(*   %shr13.i.11 = lshr i64 %mul4.i.11, 32 *)
(* You may need to modify here *)
split v_shr13_i_11 tmp_to_be_used v_mul4_i_11 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_11;
assume eq tmp_to_be_used v_and8_i_11 && true;
(*   %shr14.i.11 = lshr i64 %mul3.i.11, 32 *)
(* You may need to modify here *)
split v_shr14_i_11 tmp_to_be_used v_mul3_i_11 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_11;
assume eq tmp_to_be_used v_and9_i_11 && true;
(*   %and15.i.11 = and i64 %mul5.i.11, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_11 v_mul5_i_11 (0xFFFFFFFF)@uint64;
(*   %add16.i.11 = add nuw nsw i64 %shr13.i.11, %shr14.i.11 *)
adds discard_316 v_add16_i_11 v_shr13_i_11 v_shr14_i_11;
(* Heuristics applied. *)
assert true && eq discard_316 0@1;
assume eq discard_316 0 && true;
(*   %add17.i.11 = add nuw nsw i64 %add16.i.11, %and15.i.11 *)
adds discard_317 v_add17_i_11 v_add16_i_11 v_and15_i_11;
(* Heuristics applied. *)
assert true && eq discard_317 0@1;
assume eq discard_317 0 && true;
(*   %add18.i.11 = add nuw nsw i64 %add17.i.11, %shr11.i.11 *)
adds discard_318 v_add18_i_11 v_add17_i_11 v_shr11_i_11;
(* Heuristics applied. *)
assert true && eq discard_318 0@1;
assume eq discard_318 0 && true;
(*   %and19.i.11 = and i64 %add18.i.11, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_11 v_add18_i_11 (0xFFFFFFFF)@uint64;
(*   %and21.i.11 = and i64 %add18.i.11, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_11 v_add18_i_11 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_11 v_and21_i_11 + v_and19_i_11;
assume eq v_add18_i_11 v_and21_i_11 + v_and19_i_11 && true;
(*   %and22.i.11 = and i64 %mul5.i.11, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_11 v_mul5_i_11 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_11 v_and22_i_11 + v_and15_i_11;
assume eq v_mul5_i_11 v_and22_i_11 + v_and15_i_11 && true;
(*   %add23.i.11 = add i64 %and21.i.11, %and22.i.11 *)
adds discard_319 v_add23_i_11 v_and21_i_11 v_and22_i_11;
(* Heuristics applied. *)
assert true && eq discard_319 0@1;
assume eq discard_319 0 && true;
(*   %xor2569.i.11 = or i64 %add23.i.11, %and19.i.11 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_11 v_add23_i_11 v_and19_i_11;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_11 v_add23_i_11 + v_and19_i_11;
assume eq v_xor2569_i_11 v_add23_i_11 + v_and19_i_11 && true;
(*   %add16.11 = add i64 %xor68.i.11, %add41.10 *)
adds discard_320 v_add16_11 v_xor68_i_11 v_add41_10;
(*   %xor.i315.11 = xor i64 %add16.11, %shl.i.11 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_11 v_add16_11 v_shl_i_11;
(*   %xor1.i316.11 = xor i64 %shl.i.11, %add41.10 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_11 v_shl_i_11 v_add41_10;
(*   %or.i317.11 = or i64 %xor.i315.11, %xor1.i316.11 *)
(* You may need to modify here *)
or uint64 v_or_i317_11 v_xor_i315_11 v_xor1_i316_11;
(*   %xor2.i318.11 = xor i64 %or.i317.11, %add16.11 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_11 v_or_i317_11 v_add16_11;
(*   %shr.i319.11 = lshr i64 %xor2.i318.11, 63 *)
(* You may need to modify here *)
split v_shr_i319_11 tmp_to_be_used v_xor2_i318_11 63;
(* generated by python *)
assert true && limbs 64 [v_add16_11, v_shr_i319_11] = limbs 64 [v_xor68_i_11, 0@64] + limbs 64 [v_add41_10, 0@64];
assume limbs 64 [v_add16_11, v_shr_i319_11] = limbs 64 [v_xor68_i_11, 0] + limbs 64 [v_add41_10, 0] && true;
(*   %add20.11 = add i64 %shr.i319.11, %xor2569.i.11 *)
adds discard_321 v_add20_11 v_shr_i319_11 v_xor2569_i_11;
(* Heuristics applied. *)
assert true && eq discard_321 0@1;
assume eq discard_321 0 && true;
(*   %add21.11 = add i64 %add20.11, %add48.10 *)
adds discard_322 v_add21_11 v_add20_11 v_add48_10;
(* Heuristics applied. *)
assert true && eq discard_322 0@1;
assume eq discard_322 0 && true;
(*   %104 = xor i64 %add20.11, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v104 v_add20_11 (0x8000000000000000)@uint64;
(*   %xor2.i312.11 = and i64 %104, %add23.i.11 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_11 v104 v_add23_i_11;
(*   %xor.i303.11 = xor i64 %add21.11, %add20.11 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_11 v_add21_11 v_add20_11;
(*   %xor1.i304.11 = xor i64 %add20.11, %add48.10 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_11 v_add20_11 v_add48_10;
(*   %or.i305.11 = or i64 %xor.i303.11, %xor1.i304.11 *)
(* You may need to modify here *)
or uint64 v_or_i305_11 v_xor_i303_11 v_xor1_i304_11;
(*   %xor2.i306.11 = xor i64 %or.i305.11, %add21.11 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_11 v_or_i305_11 v_add21_11;
(*   %shr.i313328.11 = or i64 %xor2.i306.11, %xor2.i312.11 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_11 v_xor2_i306_11 v_xor2_i312_11;
(*   %or25327.11 = lshr i64 %shr.i313328.11, 63 *)
(* You may need to modify here *)
split v_or25327_11 tmp_to_be_used v_shr_i313328_11 63;
(* generated by python *)
assert true && limbs 64 [v_add21_11, v_or25327_11] = limbs 64 [v_shr_i319_11, 0@64] + limbs 64 [v_xor2569_i_11, 0@64] + limbs 64 [v_add48_10, 0@64];
assume limbs 64 [v_add21_11, v_or25327_11] = limbs 64 [v_shr_i319_11, 0] + limbs 64 [v_xor2569_i_11, 0] + limbs 64 [v_add48_10, 0] && true;
(*   %arrayidx9.11.1 = getelementptr inbounds i64, i64* %mc, i64 1 *)
(*   %105 = load i64, i64* %arrayidx9.11.1, align 8, !tbaa !3 *)
mov v105 mc_8;
(*   %106 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 10), align 16, !tbaa !3 *)
mov v106 p751p1_80;
(*   %and.i.11.1 = and i64 %105, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_11_1 v105 (0xFFFFFFFF)@uint64;
(*   %shr.i.11.1 = lshr i64 %105, 32 *)
(* You may need to modify here *)
split v_shr_i_11_1 tmp_to_be_used v105 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_11_1;
assume eq tmp_to_be_used v_and_i_11_1 && true;
(*   %and1.i.11.1 = and i64 %106, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_11_1 v106 (0xFFFFFFFF)@uint64;
(*   %shr2.i.11.1 = lshr i64 %106, 32 *)
(* You may need to modify here *)
split v_shr2_i_11_1 tmp_to_be_used v106 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_11_1;
assume eq tmp_to_be_used v_and1_i_11_1 && true;
(*   %mul.i.11.1 = mul nuw i64 %and1.i.11.1, %and.i.11.1 *)
mul v_mul_i_11_1 v_and1_i_11_1 v_and_i_11_1;
(*   %mul3.i.11.1 = mul nuw i64 %shr2.i.11.1, %and.i.11.1 *)
mul v_mul3_i_11_1 v_shr2_i_11_1 v_and_i_11_1;
(*   %mul4.i.11.1 = mul nuw i64 %and1.i.11.1, %shr.i.11.1 *)
mul v_mul4_i_11_1 v_and1_i_11_1 v_shr_i_11_1;
(*   %mul5.i.11.1 = mul nuw i64 %shr2.i.11.1, %shr.i.11.1 *)
mul v_mul5_i_11_1 v_shr2_i_11_1 v_shr_i_11_1;
(*   %and6.i.11.1 = and i64 %mul.i.11.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_11_1 v_mul_i_11_1 (0xFFFFFFFF)@uint64;
(*   %shr7.i.11.1 = lshr i64 %mul.i.11.1, 32 *)
(* You may need to modify here *)
split v_shr7_i_11_1 tmp_to_be_used v_mul_i_11_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_11_1;
assume eq tmp_to_be_used v_and6_i_11_1 && true;
(*   %and8.i.11.1 = and i64 %mul4.i.11.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_11_1 v_mul4_i_11_1 (0xFFFFFFFF)@uint64;
(*   %and9.i.11.1 = and i64 %mul3.i.11.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_11_1 v_mul3_i_11_1 (0xFFFFFFFF)@uint64;
(*   %add.i.11.1 = add nuw nsw i64 %shr7.i.11.1, %and8.i.11.1 *)
adds discard_323 v_add_i_11_1 v_shr7_i_11_1 v_and8_i_11_1;
(* Heuristics applied. *)
assert true && eq discard_323 0@1;
assume eq discard_323 0 && true;
(*   %add10.i.11.1 = add nuw nsw i64 %add.i.11.1, %and9.i.11.1 *)
adds discard_324 v_add10_i_11_1 v_add_i_11_1 v_and9_i_11_1;
(* Heuristics applied. *)
assert true && eq discard_324 0@1;
assume eq discard_324 0 && true;
(*   %shr11.i.11.1 = lshr i64 %add10.i.11.1, 32 *)
(* You may need to modify here *)
split v_shr11_i_11_1 tmp_to_be_used v_add10_i_11_1 32;
(*   %shl.i.11.1 = shl i64 %add10.i.11.1, 32 *)
shls discard_325 v_shl_i_11_1 v_add10_i_11_1 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_11_1 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_11_1 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.11.1 = or i64 %shl.i.11.1, %and6.i.11.1 *)
(* You may need to modify here *)
or uint64 v_xor68_i_11_1 v_shl_i_11_1 v_and6_i_11_1;
(* Heuristics applied. *)
assert true && eq v_xor68_i_11_1 v_shl_i_11_1 + v_and6_i_11_1;
assume eq v_xor68_i_11_1 v_shl_i_11_1 + v_and6_i_11_1 && true;
(*   %shr13.i.11.1 = lshr i64 %mul4.i.11.1, 32 *)
(* You may need to modify here *)
split v_shr13_i_11_1 tmp_to_be_used v_mul4_i_11_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_11_1;
assume eq tmp_to_be_used v_and8_i_11_1 && true;
(*   %shr14.i.11.1 = lshr i64 %mul3.i.11.1, 32 *)
(* You may need to modify here *)
split v_shr14_i_11_1 tmp_to_be_used v_mul3_i_11_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_11_1;
assume eq tmp_to_be_used v_and9_i_11_1 && true;
(*   %and15.i.11.1 = and i64 %mul5.i.11.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_11_1 v_mul5_i_11_1 (0xFFFFFFFF)@uint64;
(*   %add16.i.11.1 = add nuw nsw i64 %shr13.i.11.1, %shr14.i.11.1 *)
adds discard_326 v_add16_i_11_1 v_shr13_i_11_1 v_shr14_i_11_1;
(* Heuristics applied. *)
assert true && eq discard_326 0@1;
assume eq discard_326 0 && true;
(*   %add17.i.11.1 = add nuw nsw i64 %add16.i.11.1, %and15.i.11.1 *)
adds discard_327 v_add17_i_11_1 v_add16_i_11_1 v_and15_i_11_1;
(* Heuristics applied. *)
assert true && eq discard_327 0@1;
assume eq discard_327 0 && true;
(*   %add18.i.11.1 = add nuw nsw i64 %add17.i.11.1, %shr11.i.11.1 *)
adds discard_328 v_add18_i_11_1 v_add17_i_11_1 v_shr11_i_11_1;
(* Heuristics applied. *)
assert true && eq discard_328 0@1;
assume eq discard_328 0 && true;
(*   %and19.i.11.1 = and i64 %add18.i.11.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_11_1 v_add18_i_11_1 (0xFFFFFFFF)@uint64;
(*   %and21.i.11.1 = and i64 %add18.i.11.1, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_11_1 v_add18_i_11_1 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_11_1 v_and21_i_11_1 + v_and19_i_11_1;
assume eq v_add18_i_11_1 v_and21_i_11_1 + v_and19_i_11_1 && true;
(*   %and22.i.11.1 = and i64 %mul5.i.11.1, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_11_1 v_mul5_i_11_1 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_11_1 v_and22_i_11_1 + v_and15_i_11_1;
assume eq v_mul5_i_11_1 v_and22_i_11_1 + v_and15_i_11_1 && true;
(*   %add23.i.11.1 = add i64 %and21.i.11.1, %and22.i.11.1 *)
adds discard_329 v_add23_i_11_1 v_and21_i_11_1 v_and22_i_11_1;
(* Heuristics applied. *)
assert true && eq discard_329 0@1;
assume eq discard_329 0 && true;
(*   %xor2569.i.11.1 = or i64 %add23.i.11.1, %and19.i.11.1 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_11_1 v_add23_i_11_1 v_and19_i_11_1;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_11_1 v_add23_i_11_1 + v_and19_i_11_1;
assume eq v_xor2569_i_11_1 v_add23_i_11_1 + v_and19_i_11_1 && true;
(*   %add16.11.1 = add i64 %xor68.i.11.1, %add16.11 *)
adds discard_330 v_add16_11_1 v_xor68_i_11_1 v_add16_11;
(*   %xor.i315.11.1 = xor i64 %add16.11.1, %shl.i.11.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_11_1 v_add16_11_1 v_shl_i_11_1;
(*   %xor1.i316.11.1 = xor i64 %shl.i.11.1, %add16.11 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_11_1 v_shl_i_11_1 v_add16_11;
(*   %or.i317.11.1 = or i64 %xor.i315.11.1, %xor1.i316.11.1 *)
(* You may need to modify here *)
or uint64 v_or_i317_11_1 v_xor_i315_11_1 v_xor1_i316_11_1;
(*   %xor2.i318.11.1 = xor i64 %or.i317.11.1, %add16.11.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_11_1 v_or_i317_11_1 v_add16_11_1;
(*   %shr.i319.11.1 = lshr i64 %xor2.i318.11.1, 63 *)
(* You may need to modify here *)
split v_shr_i319_11_1 tmp_to_be_used v_xor2_i318_11_1 63;
(* generated by python *)
assert true && limbs 64 [v_add16_11_1, v_shr_i319_11_1] = limbs 64 [v_xor68_i_11_1, 0@64] + limbs 64 [v_add16_11, 0@64];
assume limbs 64 [v_add16_11_1, v_shr_i319_11_1] = limbs 64 [v_xor68_i_11_1, 0] + limbs 64 [v_add16_11, 0] && true;
(*   %add20.11.1 = add i64 %shr.i319.11.1, %xor2569.i.11.1 *)
adds discard_331 v_add20_11_1 v_shr_i319_11_1 v_xor2569_i_11_1;
(* Heuristics applied. *)
assert true && eq discard_331 0@1;
assume eq discard_331 0 && true;
(*   %add21.11.1 = add i64 %add20.11.1, %add21.11 *)
adds discard_332 v_add21_11_1 v_add20_11_1 v_add21_11;
(* Heuristics applied. *)
assert true && eq discard_332 0@1;
assume eq discard_332 0 && true;
(*   %107 = xor i64 %add20.11.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v107 v_add20_11_1 (0x8000000000000000)@uint64;
(*   %xor2.i312.11.1 = and i64 %107, %add23.i.11.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_11_1 v107 v_add23_i_11_1;
(*   %xor.i303.11.1 = xor i64 %add21.11.1, %add20.11.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_11_1 v_add21_11_1 v_add20_11_1;
(*   %xor1.i304.11.1 = xor i64 %add20.11.1, %add21.11 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_11_1 v_add20_11_1 v_add21_11;
(*   %or.i305.11.1 = or i64 %xor.i303.11.1, %xor1.i304.11.1 *)
(* You may need to modify here *)
or uint64 v_or_i305_11_1 v_xor_i303_11_1 v_xor1_i304_11_1;
(*   %xor2.i306.11.1 = xor i64 %or.i305.11.1, %add21.11.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_11_1 v_or_i305_11_1 v_add21_11_1;
(*   %shr.i313328.11.1 = or i64 %xor2.i306.11.1, %xor2.i312.11.1 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_11_1 v_xor2_i306_11_1 v_xor2_i312_11_1;
(*   %or25327.11.1 = lshr i64 %shr.i313328.11.1, 63 *)
(* You may need to modify here *)
split v_or25327_11_1 tmp_to_be_used v_shr_i313328_11_1 63;
(* generated by python *)
assert true && limbs 64 [v_add21_11_1, v_or25327_11_1] = limbs 64 [v_shr_i319_11_1, 0@64] + limbs 64 [v_xor2569_i_11_1, 0@64] + limbs 64 [v_add21_11, 0@64];
assume limbs 64 [v_add21_11_1, v_or25327_11_1] = limbs 64 [v_shr_i319_11_1, 0] + limbs 64 [v_xor2569_i_11_1, 0] + limbs 64 [v_add21_11, 0] && true;
(*   %add27.11.1 = add nuw nsw i64 %or25327.11.1, %or25327.11 *)
adds discard_333 v_add27_11_1 v_or25327_11_1 v_or25327_11;
(* Heuristics applied. *)
assert true && eq discard_333 0@1;
assume eq discard_333 0 && true;
(*   %arrayidx9.11.2 = getelementptr inbounds i64, i64* %mc, i64 2 *)
(*   %108 = load i64, i64* %arrayidx9.11.2, align 8, !tbaa !3 *)
mov v108 mc_16;
(*   %109 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 9), align 8, !tbaa !3 *)
mov v109 p751p1_72;
(*   %and.i.11.2 = and i64 %108, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_11_2 v108 (0xFFFFFFFF)@uint64;
(*   %shr.i.11.2 = lshr i64 %108, 32 *)
(* You may need to modify here *)
split v_shr_i_11_2 tmp_to_be_used v108 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_11_2;
assume eq tmp_to_be_used v_and_i_11_2 && true;
(*   %and1.i.11.2 = and i64 %109, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_11_2 v109 (0xFFFFFFFF)@uint64;
(*   %shr2.i.11.2 = lshr i64 %109, 32 *)
(* You may need to modify here *)
split v_shr2_i_11_2 tmp_to_be_used v109 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_11_2;
assume eq tmp_to_be_used v_and1_i_11_2 && true;
(*   %mul.i.11.2 = mul nuw i64 %and1.i.11.2, %and.i.11.2 *)
mul v_mul_i_11_2 v_and1_i_11_2 v_and_i_11_2;
(*   %mul3.i.11.2 = mul nuw i64 %shr2.i.11.2, %and.i.11.2 *)
mul v_mul3_i_11_2 v_shr2_i_11_2 v_and_i_11_2;
(*   %mul4.i.11.2 = mul nuw i64 %and1.i.11.2, %shr.i.11.2 *)
mul v_mul4_i_11_2 v_and1_i_11_2 v_shr_i_11_2;
(*   %mul5.i.11.2 = mul nuw i64 %shr2.i.11.2, %shr.i.11.2 *)
mul v_mul5_i_11_2 v_shr2_i_11_2 v_shr_i_11_2;
(*   %and6.i.11.2 = and i64 %mul.i.11.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_11_2 v_mul_i_11_2 (0xFFFFFFFF)@uint64;
(*   %shr7.i.11.2 = lshr i64 %mul.i.11.2, 32 *)
(* You may need to modify here *)
split v_shr7_i_11_2 tmp_to_be_used v_mul_i_11_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_11_2;
assume eq tmp_to_be_used v_and6_i_11_2 && true;
(*   %and8.i.11.2 = and i64 %mul4.i.11.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_11_2 v_mul4_i_11_2 (0xFFFFFFFF)@uint64;
(*   %and9.i.11.2 = and i64 %mul3.i.11.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_11_2 v_mul3_i_11_2 (0xFFFFFFFF)@uint64;
(*   %add.i.11.2 = add nuw nsw i64 %shr7.i.11.2, %and8.i.11.2 *)
adds discard_334 v_add_i_11_2 v_shr7_i_11_2 v_and8_i_11_2;
(* Heuristics applied. *)
assert true && eq discard_334 0@1;
assume eq discard_334 0 && true;
(*   %add10.i.11.2 = add nuw nsw i64 %add.i.11.2, %and9.i.11.2 *)
adds discard_335 v_add10_i_11_2 v_add_i_11_2 v_and9_i_11_2;
(* Heuristics applied. *)
assert true && eq discard_335 0@1;
assume eq discard_335 0 && true;
(*   %shr11.i.11.2 = lshr i64 %add10.i.11.2, 32 *)
(* You may need to modify here *)
split v_shr11_i_11_2 tmp_to_be_used v_add10_i_11_2 32;
(*   %shl.i.11.2 = shl i64 %add10.i.11.2, 32 *)
shls discard_336 v_shl_i_11_2 v_add10_i_11_2 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_11_2 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_11_2 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.11.2 = or i64 %shl.i.11.2, %and6.i.11.2 *)
(* You may need to modify here *)
or uint64 v_xor68_i_11_2 v_shl_i_11_2 v_and6_i_11_2;
(* Heuristics applied. *)
assert true && eq v_xor68_i_11_2 v_shl_i_11_2 + v_and6_i_11_2;
assume eq v_xor68_i_11_2 v_shl_i_11_2 + v_and6_i_11_2 && true;
(*   %shr13.i.11.2 = lshr i64 %mul4.i.11.2, 32 *)
(* You may need to modify here *)
split v_shr13_i_11_2 tmp_to_be_used v_mul4_i_11_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_11_2;
assume eq tmp_to_be_used v_and8_i_11_2 && true;
(*   %shr14.i.11.2 = lshr i64 %mul3.i.11.2, 32 *)
(* You may need to modify here *)
split v_shr14_i_11_2 tmp_to_be_used v_mul3_i_11_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_11_2;
assume eq tmp_to_be_used v_and9_i_11_2 && true;
(*   %and15.i.11.2 = and i64 %mul5.i.11.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_11_2 v_mul5_i_11_2 (0xFFFFFFFF)@uint64;
(*   %add16.i.11.2 = add nuw nsw i64 %shr13.i.11.2, %shr14.i.11.2 *)
adds discard_337 v_add16_i_11_2 v_shr13_i_11_2 v_shr14_i_11_2;
(* Heuristics applied. *)
assert true && eq discard_337 0@1;
assume eq discard_337 0 && true;
(*   %add17.i.11.2 = add nuw nsw i64 %add16.i.11.2, %and15.i.11.2 *)
adds discard_338 v_add17_i_11_2 v_add16_i_11_2 v_and15_i_11_2;
(* Heuristics applied. *)
assert true && eq discard_338 0@1;
assume eq discard_338 0 && true;
(*   %add18.i.11.2 = add nuw nsw i64 %add17.i.11.2, %shr11.i.11.2 *)
adds discard_339 v_add18_i_11_2 v_add17_i_11_2 v_shr11_i_11_2;
(* Heuristics applied. *)
assert true && eq discard_339 0@1;
assume eq discard_339 0 && true;
(*   %and19.i.11.2 = and i64 %add18.i.11.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_11_2 v_add18_i_11_2 (0xFFFFFFFF)@uint64;
(*   %and21.i.11.2 = and i64 %add18.i.11.2, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_11_2 v_add18_i_11_2 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_11_2 v_and21_i_11_2 + v_and19_i_11_2;
assume eq v_add18_i_11_2 v_and21_i_11_2 + v_and19_i_11_2 && true;
(*   %and22.i.11.2 = and i64 %mul5.i.11.2, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_11_2 v_mul5_i_11_2 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_11_2 v_and22_i_11_2 + v_and15_i_11_2;
assume eq v_mul5_i_11_2 v_and22_i_11_2 + v_and15_i_11_2 && true;
(*   %add23.i.11.2 = add i64 %and21.i.11.2, %and22.i.11.2 *)
adds discard_340 v_add23_i_11_2 v_and21_i_11_2 v_and22_i_11_2;
(* Heuristics applied. *)
assert true && eq discard_340 0@1;
assume eq discard_340 0 && true;
(*   %xor2569.i.11.2 = or i64 %add23.i.11.2, %and19.i.11.2 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_11_2 v_add23_i_11_2 v_and19_i_11_2;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_11_2 v_add23_i_11_2 + v_and19_i_11_2;
assume eq v_xor2569_i_11_2 v_add23_i_11_2 + v_and19_i_11_2 && true;
(*   %add16.11.2 = add i64 %xor68.i.11.2, %add16.11.1 *)
adds discard_341 v_add16_11_2 v_xor68_i_11_2 v_add16_11_1;
(*   %xor.i315.11.2 = xor i64 %add16.11.2, %shl.i.11.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_11_2 v_add16_11_2 v_shl_i_11_2;
(*   %xor1.i316.11.2 = xor i64 %shl.i.11.2, %add16.11.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_11_2 v_shl_i_11_2 v_add16_11_1;
(*   %or.i317.11.2 = or i64 %xor.i315.11.2, %xor1.i316.11.2 *)
(* You may need to modify here *)
or uint64 v_or_i317_11_2 v_xor_i315_11_2 v_xor1_i316_11_2;
(*   %xor2.i318.11.2 = xor i64 %or.i317.11.2, %add16.11.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_11_2 v_or_i317_11_2 v_add16_11_2;
(*   %shr.i319.11.2 = lshr i64 %xor2.i318.11.2, 63 *)
(* You may need to modify here *)
split v_shr_i319_11_2 tmp_to_be_used v_xor2_i318_11_2 63;
(* generated by python *)
assert true && limbs 64 [v_add16_11_2, v_shr_i319_11_2] = limbs 64 [v_xor68_i_11_2, 0@64] + limbs 64 [v_add16_11_1, 0@64];
assume limbs 64 [v_add16_11_2, v_shr_i319_11_2] = limbs 64 [v_xor68_i_11_2, 0] + limbs 64 [v_add16_11_1, 0] && true;
(*   %add20.11.2 = add i64 %shr.i319.11.2, %xor2569.i.11.2 *)
adds discard_342 v_add20_11_2 v_shr_i319_11_2 v_xor2569_i_11_2;
(* Heuristics applied. *)
assert true && eq discard_342 0@1;
assume eq discard_342 0 && true;
(*   %add21.11.2 = add i64 %add20.11.2, %add21.11.1 *)
adds discard_343 v_add21_11_2 v_add20_11_2 v_add21_11_1;
(* Heuristics applied. *)
assert true && eq discard_343 0@1;
assume eq discard_343 0 && true;
(*   %110 = xor i64 %add20.11.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v110 v_add20_11_2 (0x8000000000000000)@uint64;
(*   %xor2.i312.11.2 = and i64 %110, %add23.i.11.2 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_11_2 v110 v_add23_i_11_2;
(*   %xor.i303.11.2 = xor i64 %add21.11.2, %add20.11.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_11_2 v_add21_11_2 v_add20_11_2;
(*   %xor1.i304.11.2 = xor i64 %add20.11.2, %add21.11.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_11_2 v_add20_11_2 v_add21_11_1;
(*   %or.i305.11.2 = or i64 %xor.i303.11.2, %xor1.i304.11.2 *)
(* You may need to modify here *)
or uint64 v_or_i305_11_2 v_xor_i303_11_2 v_xor1_i304_11_2;
(*   %xor2.i306.11.2 = xor i64 %or.i305.11.2, %add21.11.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_11_2 v_or_i305_11_2 v_add21_11_2;
(*   %shr.i313328.11.2 = or i64 %xor2.i306.11.2, %xor2.i312.11.2 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_11_2 v_xor2_i306_11_2 v_xor2_i312_11_2;
(*   %or25327.11.2 = lshr i64 %shr.i313328.11.2, 63 *)
(* You may need to modify here *)
split v_or25327_11_2 tmp_to_be_used v_shr_i313328_11_2 63;
(* generated by python *)
assert true && limbs 64 [v_add21_11_2, v_or25327_11_2] = limbs 64 [v_shr_i319_11_2, 0@64] + limbs 64 [v_xor2569_i_11_2, 0@64] + limbs 64 [v_add21_11_1, 0@64];
assume limbs 64 [v_add21_11_2, v_or25327_11_2] = limbs 64 [v_shr_i319_11_2, 0] + limbs 64 [v_xor2569_i_11_2, 0] + limbs 64 [v_add21_11_1, 0] && true;
(*   %add27.11.2 = add nsw i64 %or25327.11.2, %add27.11.1 *)
adds discard_344 v_add27_11_2 v_or25327_11_2 v_add27_11_1;
(* Heuristics applied. *)
assert true && eq discard_344 0@1;
assume eq discard_344 0 && true;
(*   %arrayidx9.11.3 = getelementptr inbounds i64, i64* %mc, i64 3 *)
(*   %111 = load i64, i64* %arrayidx9.11.3, align 8, !tbaa !3 *)
mov v111 mc_24;
(*   %112 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 8), align 16, !tbaa !3 *)
mov v112 p751p1_64;
(*   %and.i.11.3 = and i64 %111, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_11_3 v111 (0xFFFFFFFF)@uint64;
(*   %shr.i.11.3 = lshr i64 %111, 32 *)
(* You may need to modify here *)
split v_shr_i_11_3 tmp_to_be_used v111 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_11_3;
assume eq tmp_to_be_used v_and_i_11_3 && true;
(*   %and1.i.11.3 = and i64 %112, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_11_3 v112 (0xFFFFFFFF)@uint64;
(*   %shr2.i.11.3 = lshr i64 %112, 32 *)
(* You may need to modify here *)
split v_shr2_i_11_3 tmp_to_be_used v112 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_11_3;
assume eq tmp_to_be_used v_and1_i_11_3 && true;
(*   %mul.i.11.3 = mul nuw i64 %and1.i.11.3, %and.i.11.3 *)
mul v_mul_i_11_3 v_and1_i_11_3 v_and_i_11_3;
(*   %mul3.i.11.3 = mul nuw i64 %shr2.i.11.3, %and.i.11.3 *)
mul v_mul3_i_11_3 v_shr2_i_11_3 v_and_i_11_3;
(*   %mul4.i.11.3 = mul nuw i64 %and1.i.11.3, %shr.i.11.3 *)
mul v_mul4_i_11_3 v_and1_i_11_3 v_shr_i_11_3;
(*   %mul5.i.11.3 = mul nuw i64 %shr2.i.11.3, %shr.i.11.3 *)
mul v_mul5_i_11_3 v_shr2_i_11_3 v_shr_i_11_3;
(*   %and6.i.11.3 = and i64 %mul.i.11.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_11_3 v_mul_i_11_3 (0xFFFFFFFF)@uint64;
(*   %shr7.i.11.3 = lshr i64 %mul.i.11.3, 32 *)
(* You may need to modify here *)
split v_shr7_i_11_3 tmp_to_be_used v_mul_i_11_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_11_3;
assume eq tmp_to_be_used v_and6_i_11_3 && true;
(*   %and8.i.11.3 = and i64 %mul4.i.11.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_11_3 v_mul4_i_11_3 (0xFFFFFFFF)@uint64;
(*   %and9.i.11.3 = and i64 %mul3.i.11.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_11_3 v_mul3_i_11_3 (0xFFFFFFFF)@uint64;
(*   %add.i.11.3 = add nuw nsw i64 %shr7.i.11.3, %and8.i.11.3 *)
adds discard_345 v_add_i_11_3 v_shr7_i_11_3 v_and8_i_11_3;
(* Heuristics applied. *)
assert true && eq discard_345 0@1;
assume eq discard_345 0 && true;
(*   %add10.i.11.3 = add nuw nsw i64 %add.i.11.3, %and9.i.11.3 *)
adds discard_346 v_add10_i_11_3 v_add_i_11_3 v_and9_i_11_3;
(* Heuristics applied. *)
assert true && eq discard_346 0@1;
assume eq discard_346 0 && true;
(*   %shr11.i.11.3 = lshr i64 %add10.i.11.3, 32 *)
(* You may need to modify here *)
split v_shr11_i_11_3 tmp_to_be_used v_add10_i_11_3 32;
(*   %shl.i.11.3 = shl i64 %add10.i.11.3, 32 *)
shls discard_347 v_shl_i_11_3 v_add10_i_11_3 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_11_3 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_11_3 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.11.3 = or i64 %shl.i.11.3, %and6.i.11.3 *)
(* You may need to modify here *)
or uint64 v_xor68_i_11_3 v_shl_i_11_3 v_and6_i_11_3;
(* Heuristics applied. *)
assert true && eq v_xor68_i_11_3 v_shl_i_11_3 + v_and6_i_11_3;
assume eq v_xor68_i_11_3 v_shl_i_11_3 + v_and6_i_11_3 && true;
(*   %shr13.i.11.3 = lshr i64 %mul4.i.11.3, 32 *)
(* You may need to modify here *)
split v_shr13_i_11_3 tmp_to_be_used v_mul4_i_11_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_11_3;
assume eq tmp_to_be_used v_and8_i_11_3 && true;
(*   %shr14.i.11.3 = lshr i64 %mul3.i.11.3, 32 *)
(* You may need to modify here *)
split v_shr14_i_11_3 tmp_to_be_used v_mul3_i_11_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_11_3;
assume eq tmp_to_be_used v_and9_i_11_3 && true;
(*   %and15.i.11.3 = and i64 %mul5.i.11.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_11_3 v_mul5_i_11_3 (0xFFFFFFFF)@uint64;
(*   %add16.i.11.3 = add nuw nsw i64 %shr13.i.11.3, %shr14.i.11.3 *)
adds discard_348 v_add16_i_11_3 v_shr13_i_11_3 v_shr14_i_11_3;
(* Heuristics applied. *)
assert true && eq discard_348 0@1;
assume eq discard_348 0 && true;
(*   %add17.i.11.3 = add nuw nsw i64 %add16.i.11.3, %and15.i.11.3 *)
adds discard_349 v_add17_i_11_3 v_add16_i_11_3 v_and15_i_11_3;
(* Heuristics applied. *)
assert true && eq discard_349 0@1;
assume eq discard_349 0 && true;
(*   %add18.i.11.3 = add nuw nsw i64 %add17.i.11.3, %shr11.i.11.3 *)
adds discard_350 v_add18_i_11_3 v_add17_i_11_3 v_shr11_i_11_3;
(* Heuristics applied. *)
assert true && eq discard_350 0@1;
assume eq discard_350 0 && true;
(*   %and19.i.11.3 = and i64 %add18.i.11.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_11_3 v_add18_i_11_3 (0xFFFFFFFF)@uint64;
(*   %and21.i.11.3 = and i64 %add18.i.11.3, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_11_3 v_add18_i_11_3 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_11_3 v_and21_i_11_3 + v_and19_i_11_3;
assume eq v_add18_i_11_3 v_and21_i_11_3 + v_and19_i_11_3 && true;
(*   %and22.i.11.3 = and i64 %mul5.i.11.3, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_11_3 v_mul5_i_11_3 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_11_3 v_and22_i_11_3 + v_and15_i_11_3;
assume eq v_mul5_i_11_3 v_and22_i_11_3 + v_and15_i_11_3 && true;
(*   %add23.i.11.3 = add i64 %and21.i.11.3, %and22.i.11.3 *)
adds discard_351 v_add23_i_11_3 v_and21_i_11_3 v_and22_i_11_3;
(* Heuristics applied. *)
assert true && eq discard_351 0@1;
assume eq discard_351 0 && true;
(*   %xor2569.i.11.3 = or i64 %add23.i.11.3, %and19.i.11.3 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_11_3 v_add23_i_11_3 v_and19_i_11_3;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_11_3 v_add23_i_11_3 + v_and19_i_11_3;
assume eq v_xor2569_i_11_3 v_add23_i_11_3 + v_and19_i_11_3 && true;
(*   %add16.11.3 = add i64 %xor68.i.11.3, %add16.11.2 *)
adds discard_352 v_add16_11_3 v_xor68_i_11_3 v_add16_11_2;
(*   %xor.i315.11.3 = xor i64 %add16.11.3, %shl.i.11.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_11_3 v_add16_11_3 v_shl_i_11_3;
(*   %xor1.i316.11.3 = xor i64 %shl.i.11.3, %add16.11.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_11_3 v_shl_i_11_3 v_add16_11_2;
(*   %or.i317.11.3 = or i64 %xor.i315.11.3, %xor1.i316.11.3 *)
(* You may need to modify here *)
or uint64 v_or_i317_11_3 v_xor_i315_11_3 v_xor1_i316_11_3;
(*   %xor2.i318.11.3 = xor i64 %or.i317.11.3, %add16.11.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_11_3 v_or_i317_11_3 v_add16_11_3;
(*   %shr.i319.11.3 = lshr i64 %xor2.i318.11.3, 63 *)
(* You may need to modify here *)
split v_shr_i319_11_3 tmp_to_be_used v_xor2_i318_11_3 63;
(* generated by python *)
assert true && limbs 64 [v_add16_11_3, v_shr_i319_11_3] = limbs 64 [v_xor68_i_11_3, 0@64] + limbs 64 [v_add16_11_2, 0@64];
assume limbs 64 [v_add16_11_3, v_shr_i319_11_3] = limbs 64 [v_xor68_i_11_3, 0] + limbs 64 [v_add16_11_2, 0] && true;
(*   %add20.11.3 = add i64 %shr.i319.11.3, %xor2569.i.11.3 *)
adds discard_353 v_add20_11_3 v_shr_i319_11_3 v_xor2569_i_11_3;
(* Heuristics applied. *)
assert true && eq discard_353 0@1;
assume eq discard_353 0 && true;
(*   %add21.11.3 = add i64 %add20.11.3, %add21.11.2 *)
adds discard_354 v_add21_11_3 v_add20_11_3 v_add21_11_2;
(* Heuristics applied. *)
assert true && eq discard_354 0@1;
assume eq discard_354 0 && true;
(*   %113 = xor i64 %add20.11.3, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v113 v_add20_11_3 (0x8000000000000000)@uint64;
(*   %xor2.i312.11.3 = and i64 %113, %add23.i.11.3 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_11_3 v113 v_add23_i_11_3;
(*   %xor.i303.11.3 = xor i64 %add21.11.3, %add20.11.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_11_3 v_add21_11_3 v_add20_11_3;
(*   %xor1.i304.11.3 = xor i64 %add20.11.3, %add21.11.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_11_3 v_add20_11_3 v_add21_11_2;
(*   %or.i305.11.3 = or i64 %xor.i303.11.3, %xor1.i304.11.3 *)
(* You may need to modify here *)
or uint64 v_or_i305_11_3 v_xor_i303_11_3 v_xor1_i304_11_3;
(*   %xor2.i306.11.3 = xor i64 %or.i305.11.3, %add21.11.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_11_3 v_or_i305_11_3 v_add21_11_3;
(*   %shr.i313328.11.3 = or i64 %xor2.i306.11.3, %xor2.i312.11.3 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_11_3 v_xor2_i306_11_3 v_xor2_i312_11_3;
(*   %or25327.11.3 = lshr i64 %shr.i313328.11.3, 63 *)
(* You may need to modify here *)
split v_or25327_11_3 tmp_to_be_used v_shr_i313328_11_3 63;
(* generated by python *)
assert true && limbs 64 [v_add21_11_3, v_or25327_11_3] = limbs 64 [v_shr_i319_11_3, 0@64] + limbs 64 [v_xor2569_i_11_3, 0@64] + limbs 64 [v_add21_11_2, 0@64];
assume limbs 64 [v_add21_11_3, v_or25327_11_3] = limbs 64 [v_shr_i319_11_3, 0] + limbs 64 [v_xor2569_i_11_3, 0] + limbs 64 [v_add21_11_2, 0] && true;
(*   %add27.11.3 = add nsw i64 %or25327.11.3, %add27.11.2 *)
adds discard_355 v_add27_11_3 v_or25327_11_3 v_add27_11_2;
(* Heuristics applied. *)
assert true && eq discard_355 0@1;
assume eq discard_355 0 && true;
(*   %arrayidx9.11.4 = getelementptr inbounds i64, i64* %mc, i64 4 *)
(*   %114 = load i64, i64* %arrayidx9.11.4, align 8, !tbaa !3 *)
mov v114 mc_32;
(*   %115 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 7), align 8, !tbaa !3 *)
mov v115 p751p1_56;
(*   %and.i.11.4 = and i64 %114, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_11_4 v114 (0xFFFFFFFF)@uint64;
(*   %shr.i.11.4 = lshr i64 %114, 32 *)
(* You may need to modify here *)
split v_shr_i_11_4 tmp_to_be_used v114 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_11_4;
assume eq tmp_to_be_used v_and_i_11_4 && true;
(*   %and1.i.11.4 = and i64 %115, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_11_4 v115 (0xFFFFFFFF)@uint64;
(*   %shr2.i.11.4 = lshr i64 %115, 32 *)
(* You may need to modify here *)
split v_shr2_i_11_4 tmp_to_be_used v115 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_11_4;
assume eq tmp_to_be_used v_and1_i_11_4 && true;
(*   %mul.i.11.4 = mul nuw i64 %and1.i.11.4, %and.i.11.4 *)
mul v_mul_i_11_4 v_and1_i_11_4 v_and_i_11_4;
(*   %mul3.i.11.4 = mul nuw i64 %shr2.i.11.4, %and.i.11.4 *)
mul v_mul3_i_11_4 v_shr2_i_11_4 v_and_i_11_4;
(*   %mul4.i.11.4 = mul nuw i64 %and1.i.11.4, %shr.i.11.4 *)
mul v_mul4_i_11_4 v_and1_i_11_4 v_shr_i_11_4;
(*   %mul5.i.11.4 = mul nuw i64 %shr2.i.11.4, %shr.i.11.4 *)
mul v_mul5_i_11_4 v_shr2_i_11_4 v_shr_i_11_4;
(*   %and6.i.11.4 = and i64 %mul.i.11.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_11_4 v_mul_i_11_4 (0xFFFFFFFF)@uint64;
(*   %shr7.i.11.4 = lshr i64 %mul.i.11.4, 32 *)
(* You may need to modify here *)
split v_shr7_i_11_4 tmp_to_be_used v_mul_i_11_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_11_4;
assume eq tmp_to_be_used v_and6_i_11_4 && true;
(*   %and8.i.11.4 = and i64 %mul4.i.11.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_11_4 v_mul4_i_11_4 (0xFFFFFFFF)@uint64;
(*   %and9.i.11.4 = and i64 %mul3.i.11.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_11_4 v_mul3_i_11_4 (0xFFFFFFFF)@uint64;
(*   %add.i.11.4 = add nuw nsw i64 %shr7.i.11.4, %and8.i.11.4 *)
adds discard_356 v_add_i_11_4 v_shr7_i_11_4 v_and8_i_11_4;
(* Heuristics applied. *)
assert true && eq discard_356 0@1;
assume eq discard_356 0 && true;
(*   %add10.i.11.4 = add nuw nsw i64 %add.i.11.4, %and9.i.11.4 *)
adds discard_357 v_add10_i_11_4 v_add_i_11_4 v_and9_i_11_4;
(* Heuristics applied. *)
assert true && eq discard_357 0@1;
assume eq discard_357 0 && true;
(*   %shr11.i.11.4 = lshr i64 %add10.i.11.4, 32 *)
(* You may need to modify here *)
split v_shr11_i_11_4 tmp_to_be_used v_add10_i_11_4 32;
(*   %shl.i.11.4 = shl i64 %add10.i.11.4, 32 *)
shls discard_358 v_shl_i_11_4 v_add10_i_11_4 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_11_4 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_11_4 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.11.4 = or i64 %shl.i.11.4, %and6.i.11.4 *)
(* You may need to modify here *)
or uint64 v_xor68_i_11_4 v_shl_i_11_4 v_and6_i_11_4;
(* Heuristics applied. *)
assert true && eq v_xor68_i_11_4 v_shl_i_11_4 + v_and6_i_11_4;
assume eq v_xor68_i_11_4 v_shl_i_11_4 + v_and6_i_11_4 && true;
(*   %shr13.i.11.4 = lshr i64 %mul4.i.11.4, 32 *)
(* You may need to modify here *)
split v_shr13_i_11_4 tmp_to_be_used v_mul4_i_11_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_11_4;
assume eq tmp_to_be_used v_and8_i_11_4 && true;
(*   %shr14.i.11.4 = lshr i64 %mul3.i.11.4, 32 *)
(* You may need to modify here *)
split v_shr14_i_11_4 tmp_to_be_used v_mul3_i_11_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_11_4;
assume eq tmp_to_be_used v_and9_i_11_4 && true;
(*   %and15.i.11.4 = and i64 %mul5.i.11.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_11_4 v_mul5_i_11_4 (0xFFFFFFFF)@uint64;
(*   %add16.i.11.4 = add nuw nsw i64 %shr13.i.11.4, %shr14.i.11.4 *)
adds discard_359 v_add16_i_11_4 v_shr13_i_11_4 v_shr14_i_11_4;
(* Heuristics applied. *)
assert true && eq discard_359 0@1;
assume eq discard_359 0 && true;
(*   %add17.i.11.4 = add nuw nsw i64 %add16.i.11.4, %and15.i.11.4 *)
adds discard_360 v_add17_i_11_4 v_add16_i_11_4 v_and15_i_11_4;
(* Heuristics applied. *)
assert true && eq discard_360 0@1;
assume eq discard_360 0 && true;
(*   %add18.i.11.4 = add nuw nsw i64 %add17.i.11.4, %shr11.i.11.4 *)
adds discard_361 v_add18_i_11_4 v_add17_i_11_4 v_shr11_i_11_4;
(* Heuristics applied. *)
assert true && eq discard_361 0@1;
assume eq discard_361 0 && true;
(*   %and19.i.11.4 = and i64 %add18.i.11.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_11_4 v_add18_i_11_4 (0xFFFFFFFF)@uint64;
(*   %and21.i.11.4 = and i64 %add18.i.11.4, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_11_4 v_add18_i_11_4 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_11_4 v_and21_i_11_4 + v_and19_i_11_4;
assume eq v_add18_i_11_4 v_and21_i_11_4 + v_and19_i_11_4 && true;
(*   %and22.i.11.4 = and i64 %mul5.i.11.4, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_11_4 v_mul5_i_11_4 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_11_4 v_and22_i_11_4 + v_and15_i_11_4;
assume eq v_mul5_i_11_4 v_and22_i_11_4 + v_and15_i_11_4 && true;
(*   %add23.i.11.4 = add i64 %and21.i.11.4, %and22.i.11.4 *)
adds discard_362 v_add23_i_11_4 v_and21_i_11_4 v_and22_i_11_4;
(* Heuristics applied. *)
assert true && eq discard_362 0@1;
assume eq discard_362 0 && true;
(*   %xor2569.i.11.4 = or i64 %add23.i.11.4, %and19.i.11.4 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_11_4 v_add23_i_11_4 v_and19_i_11_4;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_11_4 v_add23_i_11_4 + v_and19_i_11_4;
assume eq v_xor2569_i_11_4 v_add23_i_11_4 + v_and19_i_11_4 && true;
(*   %add16.11.4 = add i64 %xor68.i.11.4, %add16.11.3 *)
adds discard_363 v_add16_11_4 v_xor68_i_11_4 v_add16_11_3;
(*   %xor.i315.11.4 = xor i64 %add16.11.4, %shl.i.11.4 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_11_4 v_add16_11_4 v_shl_i_11_4;
(*   %xor1.i316.11.4 = xor i64 %shl.i.11.4, %add16.11.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_11_4 v_shl_i_11_4 v_add16_11_3;
(*   %or.i317.11.4 = or i64 %xor.i315.11.4, %xor1.i316.11.4 *)
(* You may need to modify here *)
or uint64 v_or_i317_11_4 v_xor_i315_11_4 v_xor1_i316_11_4;
(*   %xor2.i318.11.4 = xor i64 %or.i317.11.4, %add16.11.4 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_11_4 v_or_i317_11_4 v_add16_11_4;
(*   %shr.i319.11.4 = lshr i64 %xor2.i318.11.4, 63 *)
(* You may need to modify here *)
split v_shr_i319_11_4 tmp_to_be_used v_xor2_i318_11_4 63;
(* generated by python *)
assert true && limbs 64 [v_add16_11_4, v_shr_i319_11_4] = limbs 64 [v_xor68_i_11_4, 0@64] + limbs 64 [v_add16_11_3, 0@64];
assume limbs 64 [v_add16_11_4, v_shr_i319_11_4] = limbs 64 [v_xor68_i_11_4, 0] + limbs 64 [v_add16_11_3, 0] && true;
(*   %add20.11.4 = add i64 %shr.i319.11.4, %xor2569.i.11.4 *)
adds discard_364 v_add20_11_4 v_shr_i319_11_4 v_xor2569_i_11_4;
(* Heuristics applied. *)
assert true && eq discard_364 0@1;
assume eq discard_364 0 && true;
(*   %add21.11.4 = add i64 %add20.11.4, %add21.11.3 *)
adds discard_365 v_add21_11_4 v_add20_11_4 v_add21_11_3;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_365 0@1; *)
(* assume eq discard_365 0 && true; *)
(*   %116 = xor i64 %add20.11.4, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v116 v_add20_11_4 (0x8000000000000000)@uint64;
(*   %xor2.i312.11.4 = and i64 %116, %add23.i.11.4 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_11_4 v116 v_add23_i_11_4;
(*   %xor.i303.11.4 = xor i64 %add21.11.4, %add20.11.4 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_11_4 v_add21_11_4 v_add20_11_4;
(*   %xor1.i304.11.4 = xor i64 %add20.11.4, %add21.11.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_11_4 v_add20_11_4 v_add21_11_3;
(*   %or.i305.11.4 = or i64 %xor.i303.11.4, %xor1.i304.11.4 *)
(* You may need to modify here *)
or uint64 v_or_i305_11_4 v_xor_i303_11_4 v_xor1_i304_11_4;
(*   %xor2.i306.11.4 = xor i64 %or.i305.11.4, %add21.11.4 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_11_4 v_or_i305_11_4 v_add21_11_4;
(*   %shr.i313328.11.4 = or i64 %xor2.i306.11.4, %xor2.i312.11.4 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_11_4 v_xor2_i306_11_4 v_xor2_i312_11_4;
(*   %or25327.11.4 = lshr i64 %shr.i313328.11.4, 63 *)
(* You may need to modify here *)
split v_or25327_11_4 tmp_to_be_used v_shr_i313328_11_4 63;
(* generated by python *)
assert true && limbs 64 [v_add21_11_4, v_or25327_11_4] = limbs 64 [v_shr_i319_11_4, 0@64] + limbs 64 [v_xor2569_i_11_4, 0@64] + limbs 64 [v_add21_11_3, 0@64];
assume limbs 64 [v_add21_11_4, v_or25327_11_4] = limbs 64 [v_shr_i319_11_4, 0] + limbs 64 [v_xor2569_i_11_4, 0] + limbs 64 [v_add21_11_3, 0] && true;
(*   %add27.11.4 = add i64 %or25327.11.4, %add27.11.3 *)
adds discard_366 v_add27_11_4 v_or25327_11_4 v_add27_11_3;
(* Heuristics applied. *)
assert true && eq discard_366 0@1;
assume eq discard_366 0 && true;
(*   %arrayidx9.11.5 = getelementptr inbounds i64, i64* %mc, i64 5 *)
(*   %117 = load i64, i64* %arrayidx9.11.5, align 8, !tbaa !3 *)
mov v117 mc_40;
(*   %118 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 6), align 16, !tbaa !3 *)
mov v118 p751p1_48;
(*   %and.i.11.5 = and i64 %117, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_11_5 v117 (0xFFFFFFFF)@uint64;
(*   %shr.i.11.5 = lshr i64 %117, 32 *)
(* You may need to modify here *)
split v_shr_i_11_5 tmp_to_be_used v117 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_11_5;
assume eq tmp_to_be_used v_and_i_11_5 && true;
(*   %and1.i.11.5 = and i64 %118, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_11_5 v118 (0xFFFFFFFF)@uint64;
(*   %shr2.i.11.5 = lshr i64 %118, 32 *)
(* You may need to modify here *)
split v_shr2_i_11_5 tmp_to_be_used v118 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_11_5;
assume eq tmp_to_be_used v_and1_i_11_5 && true;
(*   %mul.i.11.5 = mul nuw i64 %and1.i.11.5, %and.i.11.5 *)
mul v_mul_i_11_5 v_and1_i_11_5 v_and_i_11_5;
(*   %mul3.i.11.5 = mul nuw i64 %shr2.i.11.5, %and.i.11.5 *)
mul v_mul3_i_11_5 v_shr2_i_11_5 v_and_i_11_5;
(*   %mul4.i.11.5 = mul nuw i64 %and1.i.11.5, %shr.i.11.5 *)
mul v_mul4_i_11_5 v_and1_i_11_5 v_shr_i_11_5;
(*   %mul5.i.11.5 = mul nuw i64 %shr2.i.11.5, %shr.i.11.5 *)
mul v_mul5_i_11_5 v_shr2_i_11_5 v_shr_i_11_5;
(*   %and6.i.11.5 = and i64 %mul.i.11.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_11_5 v_mul_i_11_5 (0xFFFFFFFF)@uint64;
(*   %shr7.i.11.5 = lshr i64 %mul.i.11.5, 32 *)
(* You may need to modify here *)
split v_shr7_i_11_5 tmp_to_be_used v_mul_i_11_5 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_11_5;
assume eq tmp_to_be_used v_and6_i_11_5 && true;
(*   %and8.i.11.5 = and i64 %mul4.i.11.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_11_5 v_mul4_i_11_5 (0xFFFFFFFF)@uint64;
(*   %and9.i.11.5 = and i64 %mul3.i.11.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_11_5 v_mul3_i_11_5 (0xFFFFFFFF)@uint64;
(*   %add.i.11.5 = add nuw nsw i64 %shr7.i.11.5, %and8.i.11.5 *)
adds discard_367 v_add_i_11_5 v_shr7_i_11_5 v_and8_i_11_5;
(* Heuristics applied. *)
assert true && eq discard_367 0@1;
assume eq discard_367 0 && true;
(*   %add10.i.11.5 = add nuw nsw i64 %add.i.11.5, %and9.i.11.5 *)
adds discard_368 v_add10_i_11_5 v_add_i_11_5 v_and9_i_11_5;
(* Heuristics applied. *)
assert true && eq discard_368 0@1;
assume eq discard_368 0 && true;
(*   %shr11.i.11.5 = lshr i64 %add10.i.11.5, 32 *)
(* You may need to modify here *)
split v_shr11_i_11_5 tmp_to_be_used v_add10_i_11_5 32;
(*   %shl.i.11.5 = shl i64 %add10.i.11.5, 32 *)
shls discard_369 v_shl_i_11_5 v_add10_i_11_5 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_11_5 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_11_5 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.11.5 = or i64 %shl.i.11.5, %and6.i.11.5 *)
(* You may need to modify here *)
or uint64 v_xor68_i_11_5 v_shl_i_11_5 v_and6_i_11_5;
(* Heuristics applied. *)
assert true && eq v_xor68_i_11_5 v_shl_i_11_5 + v_and6_i_11_5;
assume eq v_xor68_i_11_5 v_shl_i_11_5 + v_and6_i_11_5 && true;
(*   %shr13.i.11.5 = lshr i64 %mul4.i.11.5, 32 *)
(* You may need to modify here *)
split v_shr13_i_11_5 tmp_to_be_used v_mul4_i_11_5 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_11_5;
assume eq tmp_to_be_used v_and8_i_11_5 && true;
(*   %shr14.i.11.5 = lshr i64 %mul3.i.11.5, 32 *)
(* You may need to modify here *)
split v_shr14_i_11_5 tmp_to_be_used v_mul3_i_11_5 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_11_5;
assume eq tmp_to_be_used v_and9_i_11_5 && true;
(*   %and15.i.11.5 = and i64 %mul5.i.11.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_11_5 v_mul5_i_11_5 (0xFFFFFFFF)@uint64;
(*   %add16.i.11.5 = add nuw nsw i64 %shr13.i.11.5, %shr14.i.11.5 *)
adds discard_370 v_add16_i_11_5 v_shr13_i_11_5 v_shr14_i_11_5;
(* Heuristics applied. *)
assert true && eq discard_370 0@1;
assume eq discard_370 0 && true;
(*   %add17.i.11.5 = add nuw nsw i64 %add16.i.11.5, %and15.i.11.5 *)
adds discard_371 v_add17_i_11_5 v_add16_i_11_5 v_and15_i_11_5;
(* Heuristics applied. *)
assert true && eq discard_371 0@1;
assume eq discard_371 0 && true;
(*   %add18.i.11.5 = add nuw nsw i64 %add17.i.11.5, %shr11.i.11.5 *)
adds discard_372 v_add18_i_11_5 v_add17_i_11_5 v_shr11_i_11_5;
(* Heuristics applied. *)
assert true && eq discard_372 0@1;
assume eq discard_372 0 && true;
(*   %and19.i.11.5 = and i64 %add18.i.11.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_11_5 v_add18_i_11_5 (0xFFFFFFFF)@uint64;
(*   %and21.i.11.5 = and i64 %add18.i.11.5, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_11_5 v_add18_i_11_5 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_11_5 v_and21_i_11_5 + v_and19_i_11_5;
assume eq v_add18_i_11_5 v_and21_i_11_5 + v_and19_i_11_5 && true;
(*   %and22.i.11.5 = and i64 %mul5.i.11.5, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_11_5 v_mul5_i_11_5 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_11_5 v_and22_i_11_5 + v_and15_i_11_5;
assume eq v_mul5_i_11_5 v_and22_i_11_5 + v_and15_i_11_5 && true;
(*   %add23.i.11.5 = add i64 %and21.i.11.5, %and22.i.11.5 *)
adds discard_373 v_add23_i_11_5 v_and21_i_11_5 v_and22_i_11_5;
(* Heuristics applied. *)
assert true && eq discard_373 0@1;
assume eq discard_373 0 && true;
(*   %xor2569.i.11.5 = or i64 %add23.i.11.5, %and19.i.11.5 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_11_5 v_add23_i_11_5 v_and19_i_11_5;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_11_5 v_add23_i_11_5 + v_and19_i_11_5;
assume eq v_xor2569_i_11_5 v_add23_i_11_5 + v_and19_i_11_5 && true;
(*   %add16.11.5 = add i64 %xor68.i.11.5, %add16.11.4 *)
adds discard_374 v_add16_11_5 v_xor68_i_11_5 v_add16_11_4;
(*   %xor.i315.11.5 = xor i64 %add16.11.5, %shl.i.11.5 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_11_5 v_add16_11_5 v_shl_i_11_5;
(*   %xor1.i316.11.5 = xor i64 %shl.i.11.5, %add16.11.4 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_11_5 v_shl_i_11_5 v_add16_11_4;
(*   %or.i317.11.5 = or i64 %xor.i315.11.5, %xor1.i316.11.5 *)
(* You may need to modify here *)
or uint64 v_or_i317_11_5 v_xor_i315_11_5 v_xor1_i316_11_5;
(*   %xor2.i318.11.5 = xor i64 %or.i317.11.5, %add16.11.5 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_11_5 v_or_i317_11_5 v_add16_11_5;
(*   %shr.i319.11.5 = lshr i64 %xor2.i318.11.5, 63 *)
(* You may need to modify here *)
split v_shr_i319_11_5 tmp_to_be_used v_xor2_i318_11_5 63;
(* generated by python *)
assert true && limbs 64 [v_add16_11_5, v_shr_i319_11_5] = limbs 64 [v_xor68_i_11_5, 0@64] + limbs 64 [v_add16_11_4, 0@64];
assume limbs 64 [v_add16_11_5, v_shr_i319_11_5] = limbs 64 [v_xor68_i_11_5, 0] + limbs 64 [v_add16_11_4, 0] && true;
(*   %add20.11.5 = add i64 %shr.i319.11.5, %xor2569.i.11.5 *)
adds discard_375 v_add20_11_5 v_shr_i319_11_5 v_xor2569_i_11_5;
(* Heuristics applied. *)
assert true && eq discard_375 0@1;
assume eq discard_375 0 && true;
(*   %add21.11.5 = add i64 %add20.11.5, %add21.11.4 *)
adds discard_376 v_add21_11_5 v_add20_11_5 v_add21_11_4;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_376 0@1; *)
(* assume eq discard_376 0 && true; *)
(*   %119 = xor i64 %add20.11.5, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v119 v_add20_11_5 (0x8000000000000000)@uint64;
(*   %xor2.i312.11.5 = and i64 %119, %add23.i.11.5 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_11_5 v119 v_add23_i_11_5;
(*   %xor.i303.11.5 = xor i64 %add21.11.5, %add20.11.5 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_11_5 v_add21_11_5 v_add20_11_5;
(*   %xor1.i304.11.5 = xor i64 %add20.11.5, %add21.11.4 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_11_5 v_add20_11_5 v_add21_11_4;
(*   %or.i305.11.5 = or i64 %xor.i303.11.5, %xor1.i304.11.5 *)
(* You may need to modify here *)
or uint64 v_or_i305_11_5 v_xor_i303_11_5 v_xor1_i304_11_5;
(*   %xor2.i306.11.5 = xor i64 %or.i305.11.5, %add21.11.5 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_11_5 v_or_i305_11_5 v_add21_11_5;
(*   %shr.i313328.11.5 = or i64 %xor2.i306.11.5, %xor2.i312.11.5 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_11_5 v_xor2_i306_11_5 v_xor2_i312_11_5;
(*   %or25327.11.5 = lshr i64 %shr.i313328.11.5, 63 *)
(* You may need to modify here *)
split v_or25327_11_5 tmp_to_be_used v_shr_i313328_11_5 63;
(* generated by python *)
assert true && limbs 64 [v_add21_11_5, v_or25327_11_5] = limbs 64 [v_shr_i319_11_5, 0@64] + limbs 64 [v_xor2569_i_11_5, 0@64] + limbs 64 [v_add21_11_4, 0@64];
assume limbs 64 [v_add21_11_5, v_or25327_11_5] = limbs 64 [v_shr_i319_11_5, 0] + limbs 64 [v_xor2569_i_11_5, 0] + limbs 64 [v_add21_11_4, 0] && true;
(*   %add27.11.5 = add i64 %or25327.11.5, %add27.11.4 *)
adds discard_377 v_add27_11_5 v_or25327_11_5 v_add27_11_4;
(* Heuristics applied. *)
assert true && eq discard_377 0@1;
assume eq discard_377 0 && true;
(*   %arrayidx9.11.6 = getelementptr inbounds i64, i64* %mc, i64 6 *)
(*   %120 = load i64, i64* %arrayidx9.11.6, align 8, !tbaa !3 *)
mov v120 mc_48;
(*   %121 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 5), align 8, !tbaa !3 *)
mov v121 p751p1_40;
(*   %and.i.11.6 = and i64 %120, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_11_6 v120 (0xFFFFFFFF)@uint64;
(*   %shr.i.11.6 = lshr i64 %120, 32 *)
(* You may need to modify here *)
split v_shr_i_11_6 tmp_to_be_used v120 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_11_6;
assume eq tmp_to_be_used v_and_i_11_6 && true;
(*   %and1.i.11.6 = and i64 %121, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_11_6 v121 (0xFFFFFFFF)@uint64;
(*   %shr2.i.11.6 = lshr i64 %121, 32 *)
(* You may need to modify here *)
split v_shr2_i_11_6 tmp_to_be_used v121 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_11_6;
assume eq tmp_to_be_used v_and1_i_11_6 && true;
(*   %mul.i.11.6 = mul nuw i64 %and1.i.11.6, %and.i.11.6 *)
mul v_mul_i_11_6 v_and1_i_11_6 v_and_i_11_6;
(*   %mul3.i.11.6 = mul nuw i64 %shr2.i.11.6, %and.i.11.6 *)
mul v_mul3_i_11_6 v_shr2_i_11_6 v_and_i_11_6;
(*   %mul4.i.11.6 = mul nuw i64 %and1.i.11.6, %shr.i.11.6 *)
mul v_mul4_i_11_6 v_and1_i_11_6 v_shr_i_11_6;
(*   %mul5.i.11.6 = mul nuw i64 %shr2.i.11.6, %shr.i.11.6 *)
mul v_mul5_i_11_6 v_shr2_i_11_6 v_shr_i_11_6;
(*   %and6.i.11.6 = and i64 %mul.i.11.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_11_6 v_mul_i_11_6 (0xFFFFFFFF)@uint64;
(*   %shr7.i.11.6 = lshr i64 %mul.i.11.6, 32 *)
(* You may need to modify here *)
split v_shr7_i_11_6 tmp_to_be_used v_mul_i_11_6 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_11_6;
assume eq tmp_to_be_used v_and6_i_11_6 && true;
(*   %and8.i.11.6 = and i64 %mul4.i.11.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_11_6 v_mul4_i_11_6 (0xFFFFFFFF)@uint64;
(*   %and9.i.11.6 = and i64 %mul3.i.11.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_11_6 v_mul3_i_11_6 (0xFFFFFFFF)@uint64;
(*   %add.i.11.6 = add nuw nsw i64 %shr7.i.11.6, %and8.i.11.6 *)
adds discard_378 v_add_i_11_6 v_shr7_i_11_6 v_and8_i_11_6;
(* Heuristics applied. *)
assert true && eq discard_378 0@1;
assume eq discard_378 0 && true;
(*   %add10.i.11.6 = add nuw nsw i64 %add.i.11.6, %and9.i.11.6 *)
adds discard_379 v_add10_i_11_6 v_add_i_11_6 v_and9_i_11_6;
(* Heuristics applied. *)
assert true && eq discard_379 0@1;
assume eq discard_379 0 && true;
(*   %shr11.i.11.6 = lshr i64 %add10.i.11.6, 32 *)
(* You may need to modify here *)
split v_shr11_i_11_6 tmp_to_be_used v_add10_i_11_6 32;
(*   %shl.i.11.6 = shl i64 %add10.i.11.6, 32 *)
shls discard_380 v_shl_i_11_6 v_add10_i_11_6 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_11_6 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_11_6 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.11.6 = or i64 %shl.i.11.6, %and6.i.11.6 *)
(* You may need to modify here *)
or uint64 v_xor68_i_11_6 v_shl_i_11_6 v_and6_i_11_6;
(* Heuristics applied. *)
assert true && eq v_xor68_i_11_6 v_shl_i_11_6 + v_and6_i_11_6;
assume eq v_xor68_i_11_6 v_shl_i_11_6 + v_and6_i_11_6 && true;
(*   %shr13.i.11.6 = lshr i64 %mul4.i.11.6, 32 *)
(* You may need to modify here *)
split v_shr13_i_11_6 tmp_to_be_used v_mul4_i_11_6 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_11_6;
assume eq tmp_to_be_used v_and8_i_11_6 && true;
(*   %shr14.i.11.6 = lshr i64 %mul3.i.11.6, 32 *)
(* You may need to modify here *)
split v_shr14_i_11_6 tmp_to_be_used v_mul3_i_11_6 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_11_6;
assume eq tmp_to_be_used v_and9_i_11_6 && true;
(*   %and15.i.11.6 = and i64 %mul5.i.11.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_11_6 v_mul5_i_11_6 (0xFFFFFFFF)@uint64;
(*   %add16.i.11.6 = add nuw nsw i64 %shr13.i.11.6, %shr14.i.11.6 *)
adds discard_381 v_add16_i_11_6 v_shr13_i_11_6 v_shr14_i_11_6;
(* Heuristics applied. *)
assert true && eq discard_381 0@1;
assume eq discard_381 0 && true;
(*   %add17.i.11.6 = add nuw nsw i64 %add16.i.11.6, %and15.i.11.6 *)
adds discard_382 v_add17_i_11_6 v_add16_i_11_6 v_and15_i_11_6;
(* Heuristics applied. *)
assert true && eq discard_382 0@1;
assume eq discard_382 0 && true;
(*   %add18.i.11.6 = add nuw nsw i64 %add17.i.11.6, %shr11.i.11.6 *)
adds discard_383 v_add18_i_11_6 v_add17_i_11_6 v_shr11_i_11_6;
(* Heuristics applied. *)
assert true && eq discard_383 0@1;
assume eq discard_383 0 && true;
(*   %and19.i.11.6 = and i64 %add18.i.11.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_11_6 v_add18_i_11_6 (0xFFFFFFFF)@uint64;
(*   %and21.i.11.6 = and i64 %add18.i.11.6, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_11_6 v_add18_i_11_6 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_11_6 v_and21_i_11_6 + v_and19_i_11_6;
assume eq v_add18_i_11_6 v_and21_i_11_6 + v_and19_i_11_6 && true;
(*   %and22.i.11.6 = and i64 %mul5.i.11.6, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_11_6 v_mul5_i_11_6 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_11_6 v_and22_i_11_6 + v_and15_i_11_6;
assume eq v_mul5_i_11_6 v_and22_i_11_6 + v_and15_i_11_6 && true;
(*   %add23.i.11.6 = add i64 %and21.i.11.6, %and22.i.11.6 *)
adds discard_384 v_add23_i_11_6 v_and21_i_11_6 v_and22_i_11_6;
(* Heuristics applied. *)
assert true && eq discard_384 0@1;
assume eq discard_384 0 && true;
(*   %xor2569.i.11.6 = or i64 %add23.i.11.6, %and19.i.11.6 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_11_6 v_add23_i_11_6 v_and19_i_11_6;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_11_6 v_add23_i_11_6 + v_and19_i_11_6;
assume eq v_xor2569_i_11_6 v_add23_i_11_6 + v_and19_i_11_6 && true;
(*   %add16.11.6 = add i64 %xor68.i.11.6, %add16.11.5 *)
adds discard_385 v_add16_11_6 v_xor68_i_11_6 v_add16_11_5;
(*   %xor.i315.11.6 = xor i64 %add16.11.6, %shl.i.11.6 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_11_6 v_add16_11_6 v_shl_i_11_6;
(*   %xor1.i316.11.6 = xor i64 %shl.i.11.6, %add16.11.5 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_11_6 v_shl_i_11_6 v_add16_11_5;
(*   %or.i317.11.6 = or i64 %xor.i315.11.6, %xor1.i316.11.6 *)
(* You may need to modify here *)
or uint64 v_or_i317_11_6 v_xor_i315_11_6 v_xor1_i316_11_6;
(*   %xor2.i318.11.6 = xor i64 %or.i317.11.6, %add16.11.6 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_11_6 v_or_i317_11_6 v_add16_11_6;
(*   %shr.i319.11.6 = lshr i64 %xor2.i318.11.6, 63 *)
(* You may need to modify here *)
split v_shr_i319_11_6 tmp_to_be_used v_xor2_i318_11_6 63;
(* generated by python *)
assert true && limbs 64 [v_add16_11_6, v_shr_i319_11_6] = limbs 64 [v_xor68_i_11_6, 0@64] + limbs 64 [v_add16_11_5, 0@64];
assume limbs 64 [v_add16_11_6, v_shr_i319_11_6] = limbs 64 [v_xor68_i_11_6, 0] + limbs 64 [v_add16_11_5, 0] && true;
(*   %add20.11.6 = add i64 %shr.i319.11.6, %xor2569.i.11.6 *)
adds discard_386 v_add20_11_6 v_shr_i319_11_6 v_xor2569_i_11_6;
(* Heuristics applied. *)
assert true && eq discard_386 0@1;
assume eq discard_386 0 && true;
(*   %add21.11.6 = add i64 %add20.11.6, %add21.11.5 *)
adds discard_387 v_add21_11_6 v_add20_11_6 v_add21_11_5;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_387 0@1; *)
(* assume eq discard_387 0 && true; *)
(*   %122 = xor i64 %add20.11.6, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v122 v_add20_11_6 (0x8000000000000000)@uint64;
(*   %xor2.i312.11.6 = and i64 %122, %add23.i.11.6 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_11_6 v122 v_add23_i_11_6;
(*   %xor.i303.11.6 = xor i64 %add21.11.6, %add20.11.6 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_11_6 v_add21_11_6 v_add20_11_6;
(*   %xor1.i304.11.6 = xor i64 %add20.11.6, %add21.11.5 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_11_6 v_add20_11_6 v_add21_11_5;
(*   %or.i305.11.6 = or i64 %xor.i303.11.6, %xor1.i304.11.6 *)
(* You may need to modify here *)
or uint64 v_or_i305_11_6 v_xor_i303_11_6 v_xor1_i304_11_6;
(*   %xor2.i306.11.6 = xor i64 %or.i305.11.6, %add21.11.6 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_11_6 v_or_i305_11_6 v_add21_11_6;
(*   %shr.i313328.11.6 = or i64 %xor2.i306.11.6, %xor2.i312.11.6 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_11_6 v_xor2_i306_11_6 v_xor2_i312_11_6;
(*   %or25327.11.6 = lshr i64 %shr.i313328.11.6, 63 *)
(* You may need to modify here *)
split v_or25327_11_6 tmp_to_be_used v_shr_i313328_11_6 63;
(* generated by python *)
assert true && limbs 64 [v_add21_11_6, v_or25327_11_6] = limbs 64 [v_shr_i319_11_6, 0@64] + limbs 64 [v_xor2569_i_11_6, 0@64] + limbs 64 [v_add21_11_5, 0@64];
assume limbs 64 [v_add21_11_6, v_or25327_11_6] = limbs 64 [v_shr_i319_11_6, 0] + limbs 64 [v_xor2569_i_11_6, 0] + limbs 64 [v_add21_11_5, 0] && true;
(*   %add27.11.6 = add i64 %or25327.11.6, %add27.11.5 *)
adds discard_388 v_add27_11_6 v_or25327_11_6 v_add27_11_5;
(* Heuristics applied. *)
assert true && eq discard_388 0@1;
assume eq discard_388 0 && true;
(*   %arrayidx34.11 = getelementptr inbounds i64, i64* %ma, i64 11 *)
(*   %123 = load i64, i64* %arrayidx34.11, align 8, !tbaa !3 *)
mov v123 ma_88;
(*   %add35.11 = add i64 %123, %add16.11.6 *)
adds discard_389 v_add35_11 v123 v_add16_11_6;
(*   %xor.i297.11 = xor i64 %add35.11, %add16.11.6 *)
(* You may need to modify here *)
xor uint64 v_xor_i297_11 v_add35_11 v_add16_11_6;
(*   %xor1.i298.11 = xor i64 %123, %add16.11.6 *)
(* You may need to modify here *)
xor uint64 v_xor1_i298_11 v123 v_add16_11_6;
(*   %or.i299.11 = or i64 %xor.i297.11, %xor1.i298.11 *)
(* You may need to modify here *)
or uint64 v_or_i299_11 v_xor_i297_11 v_xor1_i298_11;
(*   %xor2.i300.11 = xor i64 %or.i299.11, %add35.11 *)
(* You may need to modify here *)
xor uint64 v_xor2_i300_11 v_or_i299_11 v_add35_11;
(*   %shr.i301.11 = lshr i64 %xor2.i300.11, 63 *)
(* You may need to modify here *)
split v_shr_i301_11 tmp_to_be_used v_xor2_i300_11 63;
(* generated by python *)
assert true && limbs 64 [v_add35_11, v_shr_i301_11] = limbs 64 [v123, 0@64] + limbs 64 [v_add16_11_6, 0@64];
assume limbs 64 [v_add35_11, v_shr_i301_11] = limbs 64 [v123, 0] + limbs 64 [v_add16_11_6, 0] && true;
(*   %add41.11 = add i64 %shr.i301.11, %add21.11.6 *)
adds discard_390 v_add41_11 v_shr_i301_11 v_add21_11_6;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_390 0@1; *)
(* assume eq discard_390 0 && true; *)
(*   %arrayidx50.11 = getelementptr inbounds i64, i64* %mc, i64 11 *)
(*   store i64 %add35.11, i64* %arrayidx50.11, align 8, !tbaa !3 *)
mov mc_88 v_add35_11;
(*   %124 = xor i64 %add41.11, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v124 v_add41_11 (0x8000000000000000)@uint64;
(*   %xor2.i294.11 = and i64 %124, %add21.11.6 *)
(* You may need to modify here *)
and uint64 v_xor2_i294_11 v124 v_add21_11_6;
(*   %shr.i295.11 = lshr i64 %xor2.i294.11, 63 *)
(* You may need to modify here *)
split v_shr_i295_11 tmp_to_be_used v_xor2_i294_11 63;
(* generated by python *)
assert true && limbs 64 [v_add41_11, v_shr_i295_11] = limbs 64 [v_shr_i301_11, 0@64] + limbs 64 [v_add21_11_6, 0@64];
assume limbs 64 [v_add41_11, v_shr_i295_11] = limbs 64 [v_shr_i301_11, 0] + limbs 64 [v_add21_11_6, 0] && true;
(*   %add48.11 = add i64 %shr.i295.11, %add27.11.6 *)
adds discard_391 v_add48_11 v_shr_i295_11 v_add27_11_6;
(* Heuristics applied. *)
assert true && eq discard_391 0@1;
assume eq discard_391 0 && true;
(*   %arrayidx74 = getelementptr inbounds i64, i64* %mc, i64 1 *)
(*   %125 = load i64, i64* %arrayidx74, align 8, !tbaa !3 *)
mov v125 mc_8;
(*   %126 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 11), align 8, !tbaa !3 *)
mov v126 p751p1_88;
(*   %and.i262 = and i64 %125, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262 v125 (0xFFFFFFFF)@uint64;
(*   %shr.i263 = lshr i64 %125, 32 *)
(* You may need to modify here *)
split v_shr_i263 tmp_to_be_used v125 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262;
assume eq tmp_to_be_used v_and_i262 && true;
(*   %and1.i264 = and i64 %126, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264 v126 (0xFFFFFFFF)@uint64;
(*   %shr2.i265 = lshr i64 %126, 32 *)
(* You may need to modify here *)
split v_shr2_i265 tmp_to_be_used v126 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264;
assume eq tmp_to_be_used v_and1_i264 && true;
(*   %mul.i266 = mul nuw i64 %and1.i264, %and.i262 *)
mul v_mul_i266 v_and1_i264 v_and_i262;
(*   %mul3.i267 = mul nuw i64 %shr2.i265, %and.i262 *)
mul v_mul3_i267 v_shr2_i265 v_and_i262;
(*   %mul4.i268 = mul nuw i64 %and1.i264, %shr.i263 *)
mul v_mul4_i268 v_and1_i264 v_shr_i263;
(*   %mul5.i269 = mul nuw i64 %shr2.i265, %shr.i263 *)
mul v_mul5_i269 v_shr2_i265 v_shr_i263;
(*   %and6.i270 = and i64 %mul.i266, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270 v_mul_i266 (0xFFFFFFFF)@uint64;
(*   %shr7.i271 = lshr i64 %mul.i266, 32 *)
(* You may need to modify here *)
split v_shr7_i271 tmp_to_be_used v_mul_i266 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270;
assume eq tmp_to_be_used v_and6_i270 && true;
(*   %and8.i272 = and i64 %mul4.i268, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272 v_mul4_i268 (0xFFFFFFFF)@uint64;
(*   %and9.i273 = and i64 %mul3.i267, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273 v_mul3_i267 (0xFFFFFFFF)@uint64;
(*   %add.i274 = add nuw nsw i64 %shr7.i271, %and8.i272 *)
adds discard_392 v_add_i274 v_shr7_i271 v_and8_i272;
(* Heuristics applied. *)
assert true && eq discard_392 0@1;
assume eq discard_392 0 && true;
(*   %add10.i275 = add nuw nsw i64 %add.i274, %and9.i273 *)
adds discard_393 v_add10_i275 v_add_i274 v_and9_i273;
(* Heuristics applied. *)
assert true && eq discard_393 0@1;
assume eq discard_393 0 && true;
(*   %shr11.i276 = lshr i64 %add10.i275, 32 *)
(* You may need to modify here *)
split v_shr11_i276 tmp_to_be_used v_add10_i275 32;
(*   %shl.i277 = shl i64 %add10.i275, 32 *)
shls discard_394 v_shl_i277 v_add10_i275 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278 = or i64 %shl.i277, %and6.i270 *)
(* You may need to modify here *)
or uint64 v_xor68_i278 v_shl_i277 v_and6_i270;
(* Heuristics applied. *)
assert true && eq v_xor68_i278 v_shl_i277 + v_and6_i270;
assume eq v_xor68_i278 v_shl_i277 + v_and6_i270 && true;
(*   %shr13.i279 = lshr i64 %mul4.i268, 32 *)
(* You may need to modify here *)
split v_shr13_i279 tmp_to_be_used v_mul4_i268 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272;
assume eq tmp_to_be_used v_and8_i272 && true;
(*   %shr14.i280 = lshr i64 %mul3.i267, 32 *)
(* You may need to modify here *)
split v_shr14_i280 tmp_to_be_used v_mul3_i267 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273;
assume eq tmp_to_be_used v_and9_i273 && true;
(*   %and15.i281 = and i64 %mul5.i269, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281 v_mul5_i269 (0xFFFFFFFF)@uint64;
(*   %add16.i282 = add nuw nsw i64 %shr13.i279, %shr14.i280 *)
adds discard_395 v_add16_i282 v_shr13_i279 v_shr14_i280;
(* Heuristics applied. *)
assert true && eq discard_395 0@1;
assume eq discard_395 0 && true;
(*   %add17.i283 = add nuw nsw i64 %add16.i282, %and15.i281 *)
adds discard_396 v_add17_i283 v_add16_i282 v_and15_i281;
(* Heuristics applied. *)
assert true && eq discard_396 0@1;
assume eq discard_396 0 && true;
(*   %add18.i284 = add nuw nsw i64 %add17.i283, %shr11.i276 *)
adds discard_397 v_add18_i284 v_add17_i283 v_shr11_i276;
(* Heuristics applied. *)
assert true && eq discard_397 0@1;
assume eq discard_397 0 && true;
(*   %and19.i285 = and i64 %add18.i284, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285 v_add18_i284 (0xFFFFFFFF)@uint64;
(*   %and21.i287 = and i64 %add18.i284, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287 v_add18_i284 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284 v_and21_i287 + v_and19_i285;
assume eq v_add18_i284 v_and21_i287 + v_and19_i285 && true;
(*   %and22.i288 = and i64 %mul5.i269, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288 v_mul5_i269 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269 v_and22_i288 + v_and15_i281;
assume eq v_mul5_i269 v_and22_i288 + v_and15_i281 && true;
(*   %add23.i289 = add i64 %and21.i287, %and22.i288 *)
adds discard_398 v_add23_i289 v_and21_i287 v_and22_i288;
(* Heuristics applied. *)
assert true && eq discard_398 0@1;
assume eq discard_398 0 && true;
(*   %xor2569.i290 = or i64 %add23.i289, %and19.i285 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290 v_add23_i289 v_and19_i285;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290 v_add23_i289 + v_and19_i285;
assume eq v_xor2569_i290 v_add23_i289 + v_and19_i285 && true;
(*   %add82 = add i64 %xor68.i278, %add41.11 *)
adds discard_399 v_add82 v_xor68_i278 v_add41_11;
(*   %xor.i256 = xor i64 %add82, %shl.i277 *)
(* You may need to modify here *)
xor uint64 v_xor_i256 v_add82 v_shl_i277;
(*   %xor1.i257 = xor i64 %shl.i277, %add41.11 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257 v_shl_i277 v_add41_11;
(*   %or.i258 = or i64 %xor.i256, %xor1.i257 *)
(* You may need to modify here *)
or uint64 v_or_i258 v_xor_i256 v_xor1_i257;
(*   %xor2.i259 = xor i64 %or.i258, %add82 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259 v_or_i258 v_add82;
(*   %shr.i260 = lshr i64 %xor2.i259, 63 *)
(* You may need to modify here *)
split v_shr_i260 tmp_to_be_used v_xor2_i259 63;
(* generated by python *)
assert true && limbs 64 [v_add82, v_shr_i260] = limbs 64 [v_xor68_i278, 0@64] + limbs 64 [v_add41_11, 0@64];
assume limbs 64 [v_add82, v_shr_i260] = limbs 64 [v_xor68_i278, 0] + limbs 64 [v_add41_11, 0] && true;
(*   %add89 = add i64 %shr.i260, %xor2569.i290 *)
adds discard_400 v_add89 v_shr_i260 v_xor2569_i290;
(* Heuristics applied. *)
assert true && eq discard_400 0@1;
assume eq discard_400 0 && true;
(*   %add90 = add i64 %add89, %add48.11 *)
adds discard_401 v_add90 v_add89 v_add48_11;
(* Heuristics applied. *)
assert true && eq discard_401 0@1;
assume eq discard_401 0 && true;
(*   %127 = xor i64 %add89, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v127 v_add89 (0x8000000000000000)@uint64;
(*   %xor2.i253 = and i64 %127, %add23.i289 *)
(* You may need to modify here *)
and uint64 v_xor2_i253 v127 v_add23_i289;
(*   %xor.i244 = xor i64 %add90, %add89 *)
(* You may need to modify here *)
xor uint64 v_xor_i244 v_add90 v_add89;
(*   %xor1.i245 = xor i64 %add89, %add48.11 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245 v_add89 v_add48_11;
(*   %or.i246 = or i64 %xor.i244, %xor1.i245 *)
(* You may need to modify here *)
or uint64 v_or_i246 v_xor_i244 v_xor1_i245;
(*   %xor2.i247 = xor i64 %or.i246, %add90 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247 v_or_i246 v_add90;
(*   %shr.i254326 = or i64 %xor2.i247, %xor2.i253 *)
(* You may need to modify here *)
or uint64 v_shr_i254326 v_xor2_i247 v_xor2_i253;
(*   %or94325 = lshr i64 %shr.i254326, 63 *)
(* You may need to modify here *)
split v_or94325 tmp_to_be_used v_shr_i254326 63;
(* generated by python *)
assert true && limbs 64 [v_add90, v_or94325] = limbs 64 [v_shr_i260, 0@64] + limbs 64 [v_xor2569_i290, 0@64] + limbs 64 [v_add48_11, 0@64];
assume limbs 64 [v_add90, v_or94325] = limbs 64 [v_shr_i260, 0] + limbs 64 [v_xor2569_i290, 0] + limbs 64 [v_add48_11, 0] && true;
(*   %arrayidx74.1372 = getelementptr inbounds i64, i64* %mc, i64 2 *)
(*   %128 = load i64, i64* %arrayidx74.1372, align 8, !tbaa !3 *)
mov v128 mc_16;
(*   %129 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 10), align 16, !tbaa !3 *)
mov v129 p751p1_80;
(*   %and.i262.1373 = and i64 %128, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_1373 v128 (0xFFFFFFFF)@uint64;
(*   %shr.i263.1374 = lshr i64 %128, 32 *)
(* You may need to modify here *)
split v_shr_i263_1374 tmp_to_be_used v128 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_1373;
assume eq tmp_to_be_used v_and_i262_1373 && true;
(*   %and1.i264.1375 = and i64 %129, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_1375 v129 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.1376 = lshr i64 %129, 32 *)
(* You may need to modify here *)
split v_shr2_i265_1376 tmp_to_be_used v129 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_1375;
assume eq tmp_to_be_used v_and1_i264_1375 && true;
(*   %mul.i266.1377 = mul nuw i64 %and1.i264.1375, %and.i262.1373 *)
mul v_mul_i266_1377 v_and1_i264_1375 v_and_i262_1373;
(*   %mul3.i267.1378 = mul nuw i64 %shr2.i265.1376, %and.i262.1373 *)
mul v_mul3_i267_1378 v_shr2_i265_1376 v_and_i262_1373;
(*   %mul4.i268.1379 = mul nuw i64 %and1.i264.1375, %shr.i263.1374 *)
mul v_mul4_i268_1379 v_and1_i264_1375 v_shr_i263_1374;
(*   %mul5.i269.1380 = mul nuw i64 %shr2.i265.1376, %shr.i263.1374 *)
mul v_mul5_i269_1380 v_shr2_i265_1376 v_shr_i263_1374;
(*   %and6.i270.1381 = and i64 %mul.i266.1377, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_1381 v_mul_i266_1377 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.1382 = lshr i64 %mul.i266.1377, 32 *)
(* You may need to modify here *)
split v_shr7_i271_1382 tmp_to_be_used v_mul_i266_1377 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_1381;
assume eq tmp_to_be_used v_and6_i270_1381 && true;
(*   %and8.i272.1383 = and i64 %mul4.i268.1379, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_1383 v_mul4_i268_1379 (0xFFFFFFFF)@uint64;
(*   %and9.i273.1384 = and i64 %mul3.i267.1378, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_1384 v_mul3_i267_1378 (0xFFFFFFFF)@uint64;
(*   %add.i274.1385 = add nuw nsw i64 %shr7.i271.1382, %and8.i272.1383 *)
adds discard_402 v_add_i274_1385 v_shr7_i271_1382 v_and8_i272_1383;
(* Heuristics applied. *)
assert true && eq discard_402 0@1;
assume eq discard_402 0 && true;
(*   %add10.i275.1386 = add nuw nsw i64 %add.i274.1385, %and9.i273.1384 *)
adds discard_403 v_add10_i275_1386 v_add_i274_1385 v_and9_i273_1384;
(* Heuristics applied. *)
assert true && eq discard_403 0@1;
assume eq discard_403 0 && true;
(*   %shr11.i276.1387 = lshr i64 %add10.i275.1386, 32 *)
(* You may need to modify here *)
split v_shr11_i276_1387 tmp_to_be_used v_add10_i275_1386 32;
(*   %shl.i277.1388 = shl i64 %add10.i275.1386, 32 *)
shls discard_404 v_shl_i277_1388 v_add10_i275_1386 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_1388 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_1388 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.1389 = or i64 %shl.i277.1388, %and6.i270.1381 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_1389 v_shl_i277_1388 v_and6_i270_1381;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_1389 v_shl_i277_1388 + v_and6_i270_1381;
assume eq v_xor68_i278_1389 v_shl_i277_1388 + v_and6_i270_1381 && true;
(*   %shr13.i279.1390 = lshr i64 %mul4.i268.1379, 32 *)
(* You may need to modify here *)
split v_shr13_i279_1390 tmp_to_be_used v_mul4_i268_1379 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_1383;
assume eq tmp_to_be_used v_and8_i272_1383 && true;
(*   %shr14.i280.1391 = lshr i64 %mul3.i267.1378, 32 *)
(* You may need to modify here *)
split v_shr14_i280_1391 tmp_to_be_used v_mul3_i267_1378 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_1384;
assume eq tmp_to_be_used v_and9_i273_1384 && true;
(*   %and15.i281.1392 = and i64 %mul5.i269.1380, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_1392 v_mul5_i269_1380 (0xFFFFFFFF)@uint64;
(*   %add16.i282.1393 = add nuw nsw i64 %shr13.i279.1390, %shr14.i280.1391 *)
adds discard_405 v_add16_i282_1393 v_shr13_i279_1390 v_shr14_i280_1391;
(* Heuristics applied. *)
assert true && eq discard_405 0@1;
assume eq discard_405 0 && true;
(*   %add17.i283.1394 = add nuw nsw i64 %add16.i282.1393, %and15.i281.1392 *)
adds discard_406 v_add17_i283_1394 v_add16_i282_1393 v_and15_i281_1392;
(* Heuristics applied. *)
assert true && eq discard_406 0@1;
assume eq discard_406 0 && true;
(*   %add18.i284.1395 = add nuw nsw i64 %add17.i283.1394, %shr11.i276.1387 *)
adds discard_407 v_add18_i284_1395 v_add17_i283_1394 v_shr11_i276_1387;
(* Heuristics applied. *)
assert true && eq discard_407 0@1;
assume eq discard_407 0 && true;
(*   %and19.i285.1396 = and i64 %add18.i284.1395, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_1396 v_add18_i284_1395 (0xFFFFFFFF)@uint64;
(*   %and21.i287.1397 = and i64 %add18.i284.1395, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_1397 v_add18_i284_1395 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_1395 v_and21_i287_1397 + v_and19_i285_1396;
assume eq v_add18_i284_1395 v_and21_i287_1397 + v_and19_i285_1396 && true;
(*   %and22.i288.1398 = and i64 %mul5.i269.1380, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_1398 v_mul5_i269_1380 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_1380 v_and22_i288_1398 + v_and15_i281_1392;
assume eq v_mul5_i269_1380 v_and22_i288_1398 + v_and15_i281_1392 && true;
(*   %add23.i289.1399 = add i64 %and21.i287.1397, %and22.i288.1398 *)
adds discard_408 v_add23_i289_1399 v_and21_i287_1397 v_and22_i288_1398;
(* Heuristics applied. *)
assert true && eq discard_408 0@1;
assume eq discard_408 0 && true;
(*   %xor2569.i290.1400 = or i64 %add23.i289.1399, %and19.i285.1396 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_1400 v_add23_i289_1399 v_and19_i285_1396;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_1400 v_add23_i289_1399 + v_and19_i285_1396;
assume eq v_xor2569_i290_1400 v_add23_i289_1399 + v_and19_i285_1396 && true;
(*   %add82.1401 = add i64 %xor68.i278.1389, %add82 *)
adds discard_409 v_add82_1401 v_xor68_i278_1389 v_add82;
(*   %xor.i256.1402 = xor i64 %add82.1401, %shl.i277.1388 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_1402 v_add82_1401 v_shl_i277_1388;
(*   %xor1.i257.1403 = xor i64 %shl.i277.1388, %add82 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_1403 v_shl_i277_1388 v_add82;
(*   %or.i258.1404 = or i64 %xor.i256.1402, %xor1.i257.1403 *)
(* You may need to modify here *)
or uint64 v_or_i258_1404 v_xor_i256_1402 v_xor1_i257_1403;
(*   %xor2.i259.1405 = xor i64 %or.i258.1404, %add82.1401 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_1405 v_or_i258_1404 v_add82_1401;
(*   %shr.i260.1406 = lshr i64 %xor2.i259.1405, 63 *)
(* You may need to modify here *)
split v_shr_i260_1406 tmp_to_be_used v_xor2_i259_1405 63;
(* generated by python *)
assert true && limbs 64 [v_add82_1401, v_shr_i260_1406] = limbs 64 [v_xor68_i278_1389, 0@64] + limbs 64 [v_add82, 0@64];
assume limbs 64 [v_add82_1401, v_shr_i260_1406] = limbs 64 [v_xor68_i278_1389, 0] + limbs 64 [v_add82, 0] && true;
(*   %add89.1407 = add i64 %shr.i260.1406, %xor2569.i290.1400 *)
adds discard_410 v_add89_1407 v_shr_i260_1406 v_xor2569_i290_1400;
(* Heuristics applied. *)
assert true && eq discard_410 0@1;
assume eq discard_410 0 && true;
(*   %add90.1408 = add i64 %add89.1407, %add90 *)
adds discard_411 v_add90_1408 v_add89_1407 v_add90;
(* Heuristics applied. *)
assert true && eq discard_411 0@1;
assume eq discard_411 0 && true;
(*   %130 = xor i64 %add89.1407, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v130 v_add89_1407 (0x8000000000000000)@uint64;
(*   %xor2.i253.1409 = and i64 %130, %add23.i289.1399 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_1409 v130 v_add23_i289_1399;
(*   %xor.i244.1410 = xor i64 %add90.1408, %add89.1407 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_1410 v_add90_1408 v_add89_1407;
(*   %xor1.i245.1411 = xor i64 %add89.1407, %add90 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_1411 v_add89_1407 v_add90;
(*   %or.i246.1412 = or i64 %xor.i244.1410, %xor1.i245.1411 *)
(* You may need to modify here *)
or uint64 v_or_i246_1412 v_xor_i244_1410 v_xor1_i245_1411;
(*   %xor2.i247.1413 = xor i64 %or.i246.1412, %add90.1408 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_1413 v_or_i246_1412 v_add90_1408;
(*   %shr.i254326.1414 = or i64 %xor2.i247.1413, %xor2.i253.1409 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_1414 v_xor2_i247_1413 v_xor2_i253_1409;
(*   %or94325.1415 = lshr i64 %shr.i254326.1414, 63 *)
(* You may need to modify here *)
split v_or94325_1415 tmp_to_be_used v_shr_i254326_1414 63;
(* generated by python *)
assert true && limbs 64 [v_add90_1408, v_or94325_1415] = limbs 64 [v_shr_i260_1406, 0@64] + limbs 64 [v_xor2569_i290_1400, 0@64] + limbs 64 [v_add90, 0@64];
assume limbs 64 [v_add90_1408, v_or94325_1415] = limbs 64 [v_shr_i260_1406, 0] + limbs 64 [v_xor2569_i290_1400, 0] + limbs 64 [v_add90, 0] && true;
(*   %add96.1 = add nuw nsw i64 %or94325.1415, %or94325 *)
adds discard_412 v_add96_1 v_or94325_1415 v_or94325;
(* Heuristics applied. *)
assert true && eq discard_412 0@1;
assume eq discard_412 0 && true;
(*   %arrayidx74.2422 = getelementptr inbounds i64, i64* %mc, i64 3 *)
(*   %131 = load i64, i64* %arrayidx74.2422, align 8, !tbaa !3 *)
mov v131 mc_24;
(*   %132 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 9), align 8, !tbaa !3 *)
mov v132 p751p1_72;
(*   %and.i262.2423 = and i64 %131, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_2423 v131 (0xFFFFFFFF)@uint64;
(*   %shr.i263.2424 = lshr i64 %131, 32 *)
(* You may need to modify here *)
split v_shr_i263_2424 tmp_to_be_used v131 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_2423;
assume eq tmp_to_be_used v_and_i262_2423 && true;
(*   %and1.i264.2425 = and i64 %132, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_2425 v132 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.2426 = lshr i64 %132, 32 *)
(* You may need to modify here *)
split v_shr2_i265_2426 tmp_to_be_used v132 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_2425;
assume eq tmp_to_be_used v_and1_i264_2425 && true;
(*   %mul.i266.2427 = mul nuw i64 %and1.i264.2425, %and.i262.2423 *)
mul v_mul_i266_2427 v_and1_i264_2425 v_and_i262_2423;
(*   %mul3.i267.2428 = mul nuw i64 %shr2.i265.2426, %and.i262.2423 *)
mul v_mul3_i267_2428 v_shr2_i265_2426 v_and_i262_2423;
(*   %mul4.i268.2429 = mul nuw i64 %and1.i264.2425, %shr.i263.2424 *)
mul v_mul4_i268_2429 v_and1_i264_2425 v_shr_i263_2424;
(*   %mul5.i269.2430 = mul nuw i64 %shr2.i265.2426, %shr.i263.2424 *)
mul v_mul5_i269_2430 v_shr2_i265_2426 v_shr_i263_2424;
(*   %and6.i270.2431 = and i64 %mul.i266.2427, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_2431 v_mul_i266_2427 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.2432 = lshr i64 %mul.i266.2427, 32 *)
(* You may need to modify here *)
split v_shr7_i271_2432 tmp_to_be_used v_mul_i266_2427 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_2431;
assume eq tmp_to_be_used v_and6_i270_2431 && true;
(*   %and8.i272.2433 = and i64 %mul4.i268.2429, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_2433 v_mul4_i268_2429 (0xFFFFFFFF)@uint64;
(*   %and9.i273.2434 = and i64 %mul3.i267.2428, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_2434 v_mul3_i267_2428 (0xFFFFFFFF)@uint64;
(*   %add.i274.2435 = add nuw nsw i64 %shr7.i271.2432, %and8.i272.2433 *)
adds discard_413 v_add_i274_2435 v_shr7_i271_2432 v_and8_i272_2433;
(* Heuristics applied. *)
assert true && eq discard_413 0@1;
assume eq discard_413 0 && true;
(*   %add10.i275.2436 = add nuw nsw i64 %add.i274.2435, %and9.i273.2434 *)
adds discard_414 v_add10_i275_2436 v_add_i274_2435 v_and9_i273_2434;
(* Heuristics applied. *)
assert true && eq discard_414 0@1;
assume eq discard_414 0 && true;
(*   %shr11.i276.2437 = lshr i64 %add10.i275.2436, 32 *)
(* You may need to modify here *)
split v_shr11_i276_2437 tmp_to_be_used v_add10_i275_2436 32;
(*   %shl.i277.2438 = shl i64 %add10.i275.2436, 32 *)
shls discard_415 v_shl_i277_2438 v_add10_i275_2436 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_2438 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_2438 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.2439 = or i64 %shl.i277.2438, %and6.i270.2431 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_2439 v_shl_i277_2438 v_and6_i270_2431;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_2439 v_shl_i277_2438 + v_and6_i270_2431;
assume eq v_xor68_i278_2439 v_shl_i277_2438 + v_and6_i270_2431 && true;
(*   %shr13.i279.2440 = lshr i64 %mul4.i268.2429, 32 *)
(* You may need to modify here *)
split v_shr13_i279_2440 tmp_to_be_used v_mul4_i268_2429 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_2433;
assume eq tmp_to_be_used v_and8_i272_2433 && true;
(*   %shr14.i280.2441 = lshr i64 %mul3.i267.2428, 32 *)
(* You may need to modify here *)
split v_shr14_i280_2441 tmp_to_be_used v_mul3_i267_2428 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_2434;
assume eq tmp_to_be_used v_and9_i273_2434 && true;
(*   %and15.i281.2442 = and i64 %mul5.i269.2430, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_2442 v_mul5_i269_2430 (0xFFFFFFFF)@uint64;
(*   %add16.i282.2443 = add nuw nsw i64 %shr13.i279.2440, %shr14.i280.2441 *)
adds discard_416 v_add16_i282_2443 v_shr13_i279_2440 v_shr14_i280_2441;
(* Heuristics applied. *)
assert true && eq discard_416 0@1;
assume eq discard_416 0 && true;
(*   %add17.i283.2444 = add nuw nsw i64 %add16.i282.2443, %and15.i281.2442 *)
adds discard_417 v_add17_i283_2444 v_add16_i282_2443 v_and15_i281_2442;
(* Heuristics applied. *)
assert true && eq discard_417 0@1;
assume eq discard_417 0 && true;
(*   %add18.i284.2445 = add nuw nsw i64 %add17.i283.2444, %shr11.i276.2437 *)
adds discard_418 v_add18_i284_2445 v_add17_i283_2444 v_shr11_i276_2437;
(* Heuristics applied. *)
assert true && eq discard_418 0@1;
assume eq discard_418 0 && true;
(*   %and19.i285.2446 = and i64 %add18.i284.2445, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_2446 v_add18_i284_2445 (0xFFFFFFFF)@uint64;
(*   %and21.i287.2447 = and i64 %add18.i284.2445, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_2447 v_add18_i284_2445 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_2445 v_and21_i287_2447 + v_and19_i285_2446;
assume eq v_add18_i284_2445 v_and21_i287_2447 + v_and19_i285_2446 && true;
(*   %and22.i288.2448 = and i64 %mul5.i269.2430, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_2448 v_mul5_i269_2430 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_2430 v_and22_i288_2448 + v_and15_i281_2442;
assume eq v_mul5_i269_2430 v_and22_i288_2448 + v_and15_i281_2442 && true;
(*   %add23.i289.2449 = add i64 %and21.i287.2447, %and22.i288.2448 *)
adds discard_419 v_add23_i289_2449 v_and21_i287_2447 v_and22_i288_2448;
(* Heuristics applied. *)
assert true && eq discard_419 0@1;
assume eq discard_419 0 && true;
(*   %xor2569.i290.2450 = or i64 %add23.i289.2449, %and19.i285.2446 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_2450 v_add23_i289_2449 v_and19_i285_2446;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_2450 v_add23_i289_2449 + v_and19_i285_2446;
assume eq v_xor2569_i290_2450 v_add23_i289_2449 + v_and19_i285_2446 && true;
(*   %add82.2451 = add i64 %xor68.i278.2439, %add82.1401 *)
adds discard_420 v_add82_2451 v_xor68_i278_2439 v_add82_1401;
(*   %xor.i256.2452 = xor i64 %add82.2451, %shl.i277.2438 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_2452 v_add82_2451 v_shl_i277_2438;
(*   %xor1.i257.2453 = xor i64 %shl.i277.2438, %add82.1401 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_2453 v_shl_i277_2438 v_add82_1401;
(*   %or.i258.2454 = or i64 %xor.i256.2452, %xor1.i257.2453 *)
(* You may need to modify here *)
or uint64 v_or_i258_2454 v_xor_i256_2452 v_xor1_i257_2453;
(*   %xor2.i259.2455 = xor i64 %or.i258.2454, %add82.2451 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_2455 v_or_i258_2454 v_add82_2451;
(*   %shr.i260.2456 = lshr i64 %xor2.i259.2455, 63 *)
(* You may need to modify here *)
split v_shr_i260_2456 tmp_to_be_used v_xor2_i259_2455 63;
(* generated by python *)
assert true && limbs 64 [v_add82_2451, v_shr_i260_2456] = limbs 64 [v_xor68_i278_2439, 0@64] + limbs 64 [v_add82_1401, 0@64];
assume limbs 64 [v_add82_2451, v_shr_i260_2456] = limbs 64 [v_xor68_i278_2439, 0] + limbs 64 [v_add82_1401, 0] && true;
(*   %add89.2457 = add i64 %shr.i260.2456, %xor2569.i290.2450 *)
adds discard_421 v_add89_2457 v_shr_i260_2456 v_xor2569_i290_2450;
(* Heuristics applied. *)
assert true && eq discard_421 0@1;
assume eq discard_421 0 && true;
(*   %add90.2458 = add i64 %add89.2457, %add90.1408 *)
adds discard_422 v_add90_2458 v_add89_2457 v_add90_1408;
(* Heuristics applied. *)
assert true && eq discard_422 0@1;
assume eq discard_422 0 && true;
(*   %133 = xor i64 %add89.2457, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v133 v_add89_2457 (0x8000000000000000)@uint64;
(*   %xor2.i253.2459 = and i64 %133, %add23.i289.2449 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_2459 v133 v_add23_i289_2449;
(*   %xor.i244.2460 = xor i64 %add90.2458, %add89.2457 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_2460 v_add90_2458 v_add89_2457;
(*   %xor1.i245.2461 = xor i64 %add89.2457, %add90.1408 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_2461 v_add89_2457 v_add90_1408;
(*   %or.i246.2462 = or i64 %xor.i244.2460, %xor1.i245.2461 *)
(* You may need to modify here *)
or uint64 v_or_i246_2462 v_xor_i244_2460 v_xor1_i245_2461;
(*   %xor2.i247.2463 = xor i64 %or.i246.2462, %add90.2458 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_2463 v_or_i246_2462 v_add90_2458;
(*   %shr.i254326.2464 = or i64 %xor2.i247.2463, %xor2.i253.2459 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_2464 v_xor2_i247_2463 v_xor2_i253_2459;
(*   %or94325.2465 = lshr i64 %shr.i254326.2464, 63 *)
(* You may need to modify here *)
split v_or94325_2465 tmp_to_be_used v_shr_i254326_2464 63;
(* generated by python *)
assert true && limbs 64 [v_add90_2458, v_or94325_2465] = limbs 64 [v_shr_i260_2456, 0@64] + limbs 64 [v_xor2569_i290_2450, 0@64] + limbs 64 [v_add90_1408, 0@64];
assume limbs 64 [v_add90_2458, v_or94325_2465] = limbs 64 [v_shr_i260_2456, 0] + limbs 64 [v_xor2569_i290_2450, 0] + limbs 64 [v_add90_1408, 0] && true;
(*   %add96.2 = add nsw i64 %or94325.2465, %add96.1 *)
adds discard_423 v_add96_2 v_or94325_2465 v_add96_1;
(* Heuristics applied. *)
assert true && eq discard_423 0@1;
assume eq discard_423 0 && true;
(*   %arrayidx74.3472 = getelementptr inbounds i64, i64* %mc, i64 4 *)
(*   %134 = load i64, i64* %arrayidx74.3472, align 8, !tbaa !3 *)
mov v134 mc_32;
(*   %135 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 8), align 16, !tbaa !3 *)
mov v135 p751p1_64;
(*   %and.i262.3473 = and i64 %134, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_3473 v134 (0xFFFFFFFF)@uint64;
(*   %shr.i263.3474 = lshr i64 %134, 32 *)
(* You may need to modify here *)
split v_shr_i263_3474 tmp_to_be_used v134 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_3473;
assume eq tmp_to_be_used v_and_i262_3473 && true;
(*   %and1.i264.3475 = and i64 %135, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_3475 v135 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.3476 = lshr i64 %135, 32 *)
(* You may need to modify here *)
split v_shr2_i265_3476 tmp_to_be_used v135 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_3475;
assume eq tmp_to_be_used v_and1_i264_3475 && true;
(*   %mul.i266.3477 = mul nuw i64 %and1.i264.3475, %and.i262.3473 *)
mul v_mul_i266_3477 v_and1_i264_3475 v_and_i262_3473;
(*   %mul3.i267.3478 = mul nuw i64 %shr2.i265.3476, %and.i262.3473 *)
mul v_mul3_i267_3478 v_shr2_i265_3476 v_and_i262_3473;
(*   %mul4.i268.3479 = mul nuw i64 %and1.i264.3475, %shr.i263.3474 *)
mul v_mul4_i268_3479 v_and1_i264_3475 v_shr_i263_3474;
(*   %mul5.i269.3480 = mul nuw i64 %shr2.i265.3476, %shr.i263.3474 *)
mul v_mul5_i269_3480 v_shr2_i265_3476 v_shr_i263_3474;
(*   %and6.i270.3481 = and i64 %mul.i266.3477, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_3481 v_mul_i266_3477 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.3482 = lshr i64 %mul.i266.3477, 32 *)
(* You may need to modify here *)
split v_shr7_i271_3482 tmp_to_be_used v_mul_i266_3477 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_3481;
assume eq tmp_to_be_used v_and6_i270_3481 && true;
(*   %and8.i272.3483 = and i64 %mul4.i268.3479, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_3483 v_mul4_i268_3479 (0xFFFFFFFF)@uint64;
(*   %and9.i273.3484 = and i64 %mul3.i267.3478, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_3484 v_mul3_i267_3478 (0xFFFFFFFF)@uint64;
(*   %add.i274.3485 = add nuw nsw i64 %shr7.i271.3482, %and8.i272.3483 *)
adds discard_424 v_add_i274_3485 v_shr7_i271_3482 v_and8_i272_3483;
(* Heuristics applied. *)
assert true && eq discard_424 0@1;
assume eq discard_424 0 && true;
(*   %add10.i275.3486 = add nuw nsw i64 %add.i274.3485, %and9.i273.3484 *)
adds discard_425 v_add10_i275_3486 v_add_i274_3485 v_and9_i273_3484;
(* Heuristics applied. *)
assert true && eq discard_425 0@1;
assume eq discard_425 0 && true;
(*   %shr11.i276.3487 = lshr i64 %add10.i275.3486, 32 *)
(* You may need to modify here *)
split v_shr11_i276_3487 tmp_to_be_used v_add10_i275_3486 32;
(*   %shl.i277.3488 = shl i64 %add10.i275.3486, 32 *)
shls discard_426 v_shl_i277_3488 v_add10_i275_3486 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_3488 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_3488 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.3489 = or i64 %shl.i277.3488, %and6.i270.3481 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_3489 v_shl_i277_3488 v_and6_i270_3481;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_3489 v_shl_i277_3488 + v_and6_i270_3481;
assume eq v_xor68_i278_3489 v_shl_i277_3488 + v_and6_i270_3481 && true;
(*   %shr13.i279.3490 = lshr i64 %mul4.i268.3479, 32 *)
(* You may need to modify here *)
split v_shr13_i279_3490 tmp_to_be_used v_mul4_i268_3479 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_3483;
assume eq tmp_to_be_used v_and8_i272_3483 && true;
(*   %shr14.i280.3491 = lshr i64 %mul3.i267.3478, 32 *)
(* You may need to modify here *)
split v_shr14_i280_3491 tmp_to_be_used v_mul3_i267_3478 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_3484;
assume eq tmp_to_be_used v_and9_i273_3484 && true;
(*   %and15.i281.3492 = and i64 %mul5.i269.3480, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_3492 v_mul5_i269_3480 (0xFFFFFFFF)@uint64;
(*   %add16.i282.3493 = add nuw nsw i64 %shr13.i279.3490, %shr14.i280.3491 *)
adds discard_427 v_add16_i282_3493 v_shr13_i279_3490 v_shr14_i280_3491;
(* Heuristics applied. *)
assert true && eq discard_427 0@1;
assume eq discard_427 0 && true;
(*   %add17.i283.3494 = add nuw nsw i64 %add16.i282.3493, %and15.i281.3492 *)
adds discard_428 v_add17_i283_3494 v_add16_i282_3493 v_and15_i281_3492;
(* Heuristics applied. *)
assert true && eq discard_428 0@1;
assume eq discard_428 0 && true;
(*   %add18.i284.3495 = add nuw nsw i64 %add17.i283.3494, %shr11.i276.3487 *)
adds discard_429 v_add18_i284_3495 v_add17_i283_3494 v_shr11_i276_3487;
(* Heuristics applied. *)
assert true && eq discard_429 0@1;
assume eq discard_429 0 && true;
(*   %and19.i285.3496 = and i64 %add18.i284.3495, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_3496 v_add18_i284_3495 (0xFFFFFFFF)@uint64;
(*   %and21.i287.3497 = and i64 %add18.i284.3495, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_3497 v_add18_i284_3495 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_3495 v_and21_i287_3497 + v_and19_i285_3496;
assume eq v_add18_i284_3495 v_and21_i287_3497 + v_and19_i285_3496 && true;
(*   %and22.i288.3498 = and i64 %mul5.i269.3480, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_3498 v_mul5_i269_3480 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_3480 v_and22_i288_3498 + v_and15_i281_3492;
assume eq v_mul5_i269_3480 v_and22_i288_3498 + v_and15_i281_3492 && true;
(*   %add23.i289.3499 = add i64 %and21.i287.3497, %and22.i288.3498 *)
adds discard_430 v_add23_i289_3499 v_and21_i287_3497 v_and22_i288_3498;
(* Heuristics applied. *)
assert true && eq discard_430 0@1;
assume eq discard_430 0 && true;
(*   %xor2569.i290.3500 = or i64 %add23.i289.3499, %and19.i285.3496 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_3500 v_add23_i289_3499 v_and19_i285_3496;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_3500 v_add23_i289_3499 + v_and19_i285_3496;
assume eq v_xor2569_i290_3500 v_add23_i289_3499 + v_and19_i285_3496 && true;
(*   %add82.3501 = add i64 %xor68.i278.3489, %add82.2451 *)
adds discard_431 v_add82_3501 v_xor68_i278_3489 v_add82_2451;
(*   %xor.i256.3502 = xor i64 %add82.3501, %shl.i277.3488 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_3502 v_add82_3501 v_shl_i277_3488;
(*   %xor1.i257.3503 = xor i64 %shl.i277.3488, %add82.2451 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_3503 v_shl_i277_3488 v_add82_2451;
(*   %or.i258.3504 = or i64 %xor.i256.3502, %xor1.i257.3503 *)
(* You may need to modify here *)
or uint64 v_or_i258_3504 v_xor_i256_3502 v_xor1_i257_3503;
(*   %xor2.i259.3505 = xor i64 %or.i258.3504, %add82.3501 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_3505 v_or_i258_3504 v_add82_3501;
(*   %shr.i260.3506 = lshr i64 %xor2.i259.3505, 63 *)
(* You may need to modify here *)
split v_shr_i260_3506 tmp_to_be_used v_xor2_i259_3505 63;
(* generated by python *)
assert true && limbs 64 [v_add82_3501, v_shr_i260_3506] = limbs 64 [v_xor68_i278_3489, 0@64] + limbs 64 [v_add82_2451, 0@64];
assume limbs 64 [v_add82_3501, v_shr_i260_3506] = limbs 64 [v_xor68_i278_3489, 0] + limbs 64 [v_add82_2451, 0] && true;
(*   %add89.3507 = add i64 %shr.i260.3506, %xor2569.i290.3500 *)
adds discard_432 v_add89_3507 v_shr_i260_3506 v_xor2569_i290_3500;
(* Heuristics applied. *)
assert true && eq discard_432 0@1;
assume eq discard_432 0 && true;
(*   %add90.3508 = add i64 %add89.3507, %add90.2458 *)
adds discard_433 v_add90_3508 v_add89_3507 v_add90_2458;
(* Heuristics applied. *)
assert true && eq discard_433 0@1;
assume eq discard_433 0 && true;
(*   %136 = xor i64 %add89.3507, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v136 v_add89_3507 (0x8000000000000000)@uint64;
(*   %xor2.i253.3509 = and i64 %136, %add23.i289.3499 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_3509 v136 v_add23_i289_3499;
(*   %xor.i244.3510 = xor i64 %add90.3508, %add89.3507 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_3510 v_add90_3508 v_add89_3507;
(*   %xor1.i245.3511 = xor i64 %add89.3507, %add90.2458 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_3511 v_add89_3507 v_add90_2458;
(*   %or.i246.3512 = or i64 %xor.i244.3510, %xor1.i245.3511 *)
(* You may need to modify here *)
or uint64 v_or_i246_3512 v_xor_i244_3510 v_xor1_i245_3511;
(*   %xor2.i247.3513 = xor i64 %or.i246.3512, %add90.3508 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_3513 v_or_i246_3512 v_add90_3508;
(*   %shr.i254326.3514 = or i64 %xor2.i247.3513, %xor2.i253.3509 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_3514 v_xor2_i247_3513 v_xor2_i253_3509;
(*   %or94325.3515 = lshr i64 %shr.i254326.3514, 63 *)
(* You may need to modify here *)
split v_or94325_3515 tmp_to_be_used v_shr_i254326_3514 63;
(* generated by python *)
assert true && limbs 64 [v_add90_3508, v_or94325_3515] = limbs 64 [v_shr_i260_3506, 0@64] + limbs 64 [v_xor2569_i290_3500, 0@64] + limbs 64 [v_add90_2458, 0@64];
assume limbs 64 [v_add90_3508, v_or94325_3515] = limbs 64 [v_shr_i260_3506, 0] + limbs 64 [v_xor2569_i290_3500, 0] + limbs 64 [v_add90_2458, 0] && true;
(*   %add96.3 = add nsw i64 %or94325.3515, %add96.2 *)
adds discard_434 v_add96_3 v_or94325_3515 v_add96_2;
(* Heuristics applied. *)
assert true && eq discard_434 0@1;
assume eq discard_434 0 && true;
(*   %arrayidx74.4522 = getelementptr inbounds i64, i64* %mc, i64 5 *)
(*   %137 = load i64, i64* %arrayidx74.4522, align 8, !tbaa !3 *)
mov v137 mc_40;
(*   %138 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 7), align 8, !tbaa !3 *)
mov v138 p751p1_56;
(*   %and.i262.4523 = and i64 %137, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_4523 v137 (0xFFFFFFFF)@uint64;
(*   %shr.i263.4524 = lshr i64 %137, 32 *)
(* You may need to modify here *)
split v_shr_i263_4524 tmp_to_be_used v137 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_4523;
assume eq tmp_to_be_used v_and_i262_4523 && true;
(*   %and1.i264.4525 = and i64 %138, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_4525 v138 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.4526 = lshr i64 %138, 32 *)
(* You may need to modify here *)
split v_shr2_i265_4526 tmp_to_be_used v138 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_4525;
assume eq tmp_to_be_used v_and1_i264_4525 && true;
(*   %mul.i266.4527 = mul nuw i64 %and1.i264.4525, %and.i262.4523 *)
mul v_mul_i266_4527 v_and1_i264_4525 v_and_i262_4523;
(*   %mul3.i267.4528 = mul nuw i64 %shr2.i265.4526, %and.i262.4523 *)
mul v_mul3_i267_4528 v_shr2_i265_4526 v_and_i262_4523;
(*   %mul4.i268.4529 = mul nuw i64 %and1.i264.4525, %shr.i263.4524 *)
mul v_mul4_i268_4529 v_and1_i264_4525 v_shr_i263_4524;
(*   %mul5.i269.4530 = mul nuw i64 %shr2.i265.4526, %shr.i263.4524 *)
mul v_mul5_i269_4530 v_shr2_i265_4526 v_shr_i263_4524;
(*   %and6.i270.4531 = and i64 %mul.i266.4527, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_4531 v_mul_i266_4527 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.4532 = lshr i64 %mul.i266.4527, 32 *)
(* You may need to modify here *)
split v_shr7_i271_4532 tmp_to_be_used v_mul_i266_4527 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_4531;
assume eq tmp_to_be_used v_and6_i270_4531 && true;
(*   %and8.i272.4533 = and i64 %mul4.i268.4529, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_4533 v_mul4_i268_4529 (0xFFFFFFFF)@uint64;
(*   %and9.i273.4534 = and i64 %mul3.i267.4528, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_4534 v_mul3_i267_4528 (0xFFFFFFFF)@uint64;
(*   %add.i274.4535 = add nuw nsw i64 %shr7.i271.4532, %and8.i272.4533 *)
adds discard_435 v_add_i274_4535 v_shr7_i271_4532 v_and8_i272_4533;
(* Heuristics applied. *)
assert true && eq discard_435 0@1;
assume eq discard_435 0 && true;
(*   %add10.i275.4536 = add nuw nsw i64 %add.i274.4535, %and9.i273.4534 *)
adds discard_436 v_add10_i275_4536 v_add_i274_4535 v_and9_i273_4534;
(* Heuristics applied. *)
assert true && eq discard_436 0@1;
assume eq discard_436 0 && true;
(*   %shr11.i276.4537 = lshr i64 %add10.i275.4536, 32 *)
(* You may need to modify here *)
split v_shr11_i276_4537 tmp_to_be_used v_add10_i275_4536 32;
(*   %shl.i277.4538 = shl i64 %add10.i275.4536, 32 *)
shls discard_437 v_shl_i277_4538 v_add10_i275_4536 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_4538 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_4538 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.4539 = or i64 %shl.i277.4538, %and6.i270.4531 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_4539 v_shl_i277_4538 v_and6_i270_4531;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_4539 v_shl_i277_4538 + v_and6_i270_4531;
assume eq v_xor68_i278_4539 v_shl_i277_4538 + v_and6_i270_4531 && true;
(*   %shr13.i279.4540 = lshr i64 %mul4.i268.4529, 32 *)
(* You may need to modify here *)
split v_shr13_i279_4540 tmp_to_be_used v_mul4_i268_4529 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_4533;
assume eq tmp_to_be_used v_and8_i272_4533 && true;
(*   %shr14.i280.4541 = lshr i64 %mul3.i267.4528, 32 *)
(* You may need to modify here *)
split v_shr14_i280_4541 tmp_to_be_used v_mul3_i267_4528 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_4534;
assume eq tmp_to_be_used v_and9_i273_4534 && true;
(*   %and15.i281.4542 = and i64 %mul5.i269.4530, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_4542 v_mul5_i269_4530 (0xFFFFFFFF)@uint64;
(*   %add16.i282.4543 = add nuw nsw i64 %shr13.i279.4540, %shr14.i280.4541 *)
adds discard_438 v_add16_i282_4543 v_shr13_i279_4540 v_shr14_i280_4541;
(* Heuristics applied. *)
assert true && eq discard_438 0@1;
assume eq discard_438 0 && true;
(*   %add17.i283.4544 = add nuw nsw i64 %add16.i282.4543, %and15.i281.4542 *)
adds discard_439 v_add17_i283_4544 v_add16_i282_4543 v_and15_i281_4542;
(* Heuristics applied. *)
assert true && eq discard_439 0@1;
assume eq discard_439 0 && true;
(*   %add18.i284.4545 = add nuw nsw i64 %add17.i283.4544, %shr11.i276.4537 *)
adds discard_440 v_add18_i284_4545 v_add17_i283_4544 v_shr11_i276_4537;
(* Heuristics applied. *)
assert true && eq discard_440 0@1;
assume eq discard_440 0 && true;
(*   %and19.i285.4546 = and i64 %add18.i284.4545, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_4546 v_add18_i284_4545 (0xFFFFFFFF)@uint64;
(*   %and21.i287.4547 = and i64 %add18.i284.4545, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_4547 v_add18_i284_4545 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_4545 v_and21_i287_4547 + v_and19_i285_4546;
assume eq v_add18_i284_4545 v_and21_i287_4547 + v_and19_i285_4546 && true;
(*   %and22.i288.4548 = and i64 %mul5.i269.4530, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_4548 v_mul5_i269_4530 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_4530 v_and22_i288_4548 + v_and15_i281_4542;
assume eq v_mul5_i269_4530 v_and22_i288_4548 + v_and15_i281_4542 && true;
(*   %add23.i289.4549 = add i64 %and21.i287.4547, %and22.i288.4548 *)
adds discard_441 v_add23_i289_4549 v_and21_i287_4547 v_and22_i288_4548;
(* Heuristics applied. *)
assert true && eq discard_441 0@1;
assume eq discard_441 0 && true;
(*   %xor2569.i290.4550 = or i64 %add23.i289.4549, %and19.i285.4546 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_4550 v_add23_i289_4549 v_and19_i285_4546;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_4550 v_add23_i289_4549 + v_and19_i285_4546;
assume eq v_xor2569_i290_4550 v_add23_i289_4549 + v_and19_i285_4546 && true;
(*   %add82.4551 = add i64 %xor68.i278.4539, %add82.3501 *)
adds discard_442 v_add82_4551 v_xor68_i278_4539 v_add82_3501;
(*   %xor.i256.4552 = xor i64 %add82.4551, %shl.i277.4538 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_4552 v_add82_4551 v_shl_i277_4538;
(*   %xor1.i257.4553 = xor i64 %shl.i277.4538, %add82.3501 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_4553 v_shl_i277_4538 v_add82_3501;
(*   %or.i258.4554 = or i64 %xor.i256.4552, %xor1.i257.4553 *)
(* You may need to modify here *)
or uint64 v_or_i258_4554 v_xor_i256_4552 v_xor1_i257_4553;
(*   %xor2.i259.4555 = xor i64 %or.i258.4554, %add82.4551 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_4555 v_or_i258_4554 v_add82_4551;
(*   %shr.i260.4556 = lshr i64 %xor2.i259.4555, 63 *)
(* You may need to modify here *)
split v_shr_i260_4556 tmp_to_be_used v_xor2_i259_4555 63;
(* generated by python *)
assert true && limbs 64 [v_add82_4551, v_shr_i260_4556] = limbs 64 [v_xor68_i278_4539, 0@64] + limbs 64 [v_add82_3501, 0@64];
assume limbs 64 [v_add82_4551, v_shr_i260_4556] = limbs 64 [v_xor68_i278_4539, 0] + limbs 64 [v_add82_3501, 0] && true;
(*   %add89.4557 = add i64 %shr.i260.4556, %xor2569.i290.4550 *)
adds discard_443 v_add89_4557 v_shr_i260_4556 v_xor2569_i290_4550;
(* Heuristics applied. *)
assert true && eq discard_443 0@1;
assume eq discard_443 0 && true;
(*   %add90.4558 = add i64 %add89.4557, %add90.3508 *)
adds discard_444 v_add90_4558 v_add89_4557 v_add90_3508;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_444 0@1; *)
(* assume eq discard_444 0 && true; *)
(*   %139 = xor i64 %add89.4557, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v139 v_add89_4557 (0x8000000000000000)@uint64;
(*   %xor2.i253.4559 = and i64 %139, %add23.i289.4549 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_4559 v139 v_add23_i289_4549;
(*   %xor.i244.4560 = xor i64 %add90.4558, %add89.4557 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_4560 v_add90_4558 v_add89_4557;
(*   %xor1.i245.4561 = xor i64 %add89.4557, %add90.3508 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_4561 v_add89_4557 v_add90_3508;
(*   %or.i246.4562 = or i64 %xor.i244.4560, %xor1.i245.4561 *)
(* You may need to modify here *)
or uint64 v_or_i246_4562 v_xor_i244_4560 v_xor1_i245_4561;
(*   %xor2.i247.4563 = xor i64 %or.i246.4562, %add90.4558 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_4563 v_or_i246_4562 v_add90_4558;
(*   %shr.i254326.4564 = or i64 %xor2.i247.4563, %xor2.i253.4559 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_4564 v_xor2_i247_4563 v_xor2_i253_4559;
(*   %or94325.4565 = lshr i64 %shr.i254326.4564, 63 *)
(* You may need to modify here *)
split v_or94325_4565 tmp_to_be_used v_shr_i254326_4564 63;
(* generated by python *)
assert true && limbs 64 [v_add90_4558, v_or94325_4565] = limbs 64 [v_shr_i260_4556, 0@64] + limbs 64 [v_xor2569_i290_4550, 0@64] + limbs 64 [v_add90_3508, 0@64];
assume limbs 64 [v_add90_4558, v_or94325_4565] = limbs 64 [v_shr_i260_4556, 0] + limbs 64 [v_xor2569_i290_4550, 0] + limbs 64 [v_add90_3508, 0] && true;
(*   %add96.4 = add i64 %or94325.4565, %add96.3 *)
adds discard_445 v_add96_4 v_or94325_4565 v_add96_3;
(* Heuristics applied. *)
assert true && eq discard_445 0@1;
assume eq discard_445 0 && true;
(*   %arrayidx74.5572 = getelementptr inbounds i64, i64* %mc, i64 6 *)
(*   %140 = load i64, i64* %arrayidx74.5572, align 8, !tbaa !3 *)
mov v140 mc_48;
(*   %141 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 6), align 16, !tbaa !3 *)
mov v141 p751p1_48;
(*   %and.i262.5573 = and i64 %140, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_5573 v140 (0xFFFFFFFF)@uint64;
(*   %shr.i263.5574 = lshr i64 %140, 32 *)
(* You may need to modify here *)
split v_shr_i263_5574 tmp_to_be_used v140 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_5573;
assume eq tmp_to_be_used v_and_i262_5573 && true;
(*   %and1.i264.5575 = and i64 %141, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_5575 v141 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.5576 = lshr i64 %141, 32 *)
(* You may need to modify here *)
split v_shr2_i265_5576 tmp_to_be_used v141 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_5575;
assume eq tmp_to_be_used v_and1_i264_5575 && true;
(*   %mul.i266.5577 = mul nuw i64 %and1.i264.5575, %and.i262.5573 *)
mul v_mul_i266_5577 v_and1_i264_5575 v_and_i262_5573;
(*   %mul3.i267.5578 = mul nuw i64 %shr2.i265.5576, %and.i262.5573 *)
mul v_mul3_i267_5578 v_shr2_i265_5576 v_and_i262_5573;
(*   %mul4.i268.5579 = mul nuw i64 %and1.i264.5575, %shr.i263.5574 *)
mul v_mul4_i268_5579 v_and1_i264_5575 v_shr_i263_5574;
(*   %mul5.i269.5580 = mul nuw i64 %shr2.i265.5576, %shr.i263.5574 *)
mul v_mul5_i269_5580 v_shr2_i265_5576 v_shr_i263_5574;
(*   %and6.i270.5581 = and i64 %mul.i266.5577, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_5581 v_mul_i266_5577 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.5582 = lshr i64 %mul.i266.5577, 32 *)
(* You may need to modify here *)
split v_shr7_i271_5582 tmp_to_be_used v_mul_i266_5577 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_5581;
assume eq tmp_to_be_used v_and6_i270_5581 && true;
(*   %and8.i272.5583 = and i64 %mul4.i268.5579, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_5583 v_mul4_i268_5579 (0xFFFFFFFF)@uint64;
(*   %and9.i273.5584 = and i64 %mul3.i267.5578, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_5584 v_mul3_i267_5578 (0xFFFFFFFF)@uint64;
(*   %add.i274.5585 = add nuw nsw i64 %shr7.i271.5582, %and8.i272.5583 *)
adds discard_446 v_add_i274_5585 v_shr7_i271_5582 v_and8_i272_5583;
(* Heuristics applied. *)
assert true && eq discard_446 0@1;
assume eq discard_446 0 && true;
(*   %add10.i275.5586 = add nuw nsw i64 %add.i274.5585, %and9.i273.5584 *)
adds discard_447 v_add10_i275_5586 v_add_i274_5585 v_and9_i273_5584;
(* Heuristics applied. *)
assert true && eq discard_447 0@1;
assume eq discard_447 0 && true;
(*   %shr11.i276.5587 = lshr i64 %add10.i275.5586, 32 *)
(* You may need to modify here *)
split v_shr11_i276_5587 tmp_to_be_used v_add10_i275_5586 32;
(*   %shl.i277.5588 = shl i64 %add10.i275.5586, 32 *)
shls discard_448 v_shl_i277_5588 v_add10_i275_5586 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_5588 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_5588 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.5589 = or i64 %shl.i277.5588, %and6.i270.5581 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_5589 v_shl_i277_5588 v_and6_i270_5581;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_5589 v_shl_i277_5588 + v_and6_i270_5581;
assume eq v_xor68_i278_5589 v_shl_i277_5588 + v_and6_i270_5581 && true;
(*   %shr13.i279.5590 = lshr i64 %mul4.i268.5579, 32 *)
(* You may need to modify here *)
split v_shr13_i279_5590 tmp_to_be_used v_mul4_i268_5579 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_5583;
assume eq tmp_to_be_used v_and8_i272_5583 && true;
(*   %shr14.i280.5591 = lshr i64 %mul3.i267.5578, 32 *)
(* You may need to modify here *)
split v_shr14_i280_5591 tmp_to_be_used v_mul3_i267_5578 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_5584;
assume eq tmp_to_be_used v_and9_i273_5584 && true;
(*   %and15.i281.5592 = and i64 %mul5.i269.5580, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_5592 v_mul5_i269_5580 (0xFFFFFFFF)@uint64;
(*   %add16.i282.5593 = add nuw nsw i64 %shr13.i279.5590, %shr14.i280.5591 *)
adds discard_449 v_add16_i282_5593 v_shr13_i279_5590 v_shr14_i280_5591;
(* Heuristics applied. *)
assert true && eq discard_449 0@1;
assume eq discard_449 0 && true;
(*   %add17.i283.5594 = add nuw nsw i64 %add16.i282.5593, %and15.i281.5592 *)
adds discard_450 v_add17_i283_5594 v_add16_i282_5593 v_and15_i281_5592;
(* Heuristics applied. *)
assert true && eq discard_450 0@1;
assume eq discard_450 0 && true;
(*   %add18.i284.5595 = add nuw nsw i64 %add17.i283.5594, %shr11.i276.5587 *)
adds discard_451 v_add18_i284_5595 v_add17_i283_5594 v_shr11_i276_5587;
(* Heuristics applied. *)
assert true && eq discard_451 0@1;
assume eq discard_451 0 && true;
(*   %and19.i285.5596 = and i64 %add18.i284.5595, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_5596 v_add18_i284_5595 (0xFFFFFFFF)@uint64;
(*   %and21.i287.5597 = and i64 %add18.i284.5595, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_5597 v_add18_i284_5595 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_5595 v_and21_i287_5597 + v_and19_i285_5596;
assume eq v_add18_i284_5595 v_and21_i287_5597 + v_and19_i285_5596 && true;
(*   %and22.i288.5598 = and i64 %mul5.i269.5580, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_5598 v_mul5_i269_5580 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_5580 v_and22_i288_5598 + v_and15_i281_5592;
assume eq v_mul5_i269_5580 v_and22_i288_5598 + v_and15_i281_5592 && true;
(*   %add23.i289.5599 = add i64 %and21.i287.5597, %and22.i288.5598 *)
adds discard_452 v_add23_i289_5599 v_and21_i287_5597 v_and22_i288_5598;
(* Heuristics applied. *)
assert true && eq discard_452 0@1;
assume eq discard_452 0 && true;
(*   %xor2569.i290.5600 = or i64 %add23.i289.5599, %and19.i285.5596 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_5600 v_add23_i289_5599 v_and19_i285_5596;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_5600 v_add23_i289_5599 + v_and19_i285_5596;
assume eq v_xor2569_i290_5600 v_add23_i289_5599 + v_and19_i285_5596 && true;
(*   %add82.5601 = add i64 %xor68.i278.5589, %add82.4551 *)
adds discard_453 v_add82_5601 v_xor68_i278_5589 v_add82_4551;
(*   %xor.i256.5602 = xor i64 %add82.5601, %shl.i277.5588 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_5602 v_add82_5601 v_shl_i277_5588;
(*   %xor1.i257.5603 = xor i64 %shl.i277.5588, %add82.4551 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_5603 v_shl_i277_5588 v_add82_4551;
(*   %or.i258.5604 = or i64 %xor.i256.5602, %xor1.i257.5603 *)
(* You may need to modify here *)
or uint64 v_or_i258_5604 v_xor_i256_5602 v_xor1_i257_5603;
(*   %xor2.i259.5605 = xor i64 %or.i258.5604, %add82.5601 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_5605 v_or_i258_5604 v_add82_5601;
(*   %shr.i260.5606 = lshr i64 %xor2.i259.5605, 63 *)
(* You may need to modify here *)
split v_shr_i260_5606 tmp_to_be_used v_xor2_i259_5605 63;
(* generated by python *)
assert true && limbs 64 [v_add82_5601, v_shr_i260_5606] = limbs 64 [v_xor68_i278_5589, 0@64] + limbs 64 [v_add82_4551, 0@64];
assume limbs 64 [v_add82_5601, v_shr_i260_5606] = limbs 64 [v_xor68_i278_5589, 0] + limbs 64 [v_add82_4551, 0] && true;
(*   %add89.5607 = add i64 %shr.i260.5606, %xor2569.i290.5600 *)
adds discard_454 v_add89_5607 v_shr_i260_5606 v_xor2569_i290_5600;
(* Heuristics applied. *)
assert true && eq discard_454 0@1;
assume eq discard_454 0 && true;
(*   %add90.5608 = add i64 %add89.5607, %add90.4558 *)
adds discard_455 v_add90_5608 v_add89_5607 v_add90_4558;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_455 0@1; *)
(* assume eq discard_455 0 && true; *)
(*   %142 = xor i64 %add89.5607, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v142 v_add89_5607 (0x8000000000000000)@uint64;
(*   %xor2.i253.5609 = and i64 %142, %add23.i289.5599 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_5609 v142 v_add23_i289_5599;
(*   %xor.i244.5610 = xor i64 %add90.5608, %add89.5607 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_5610 v_add90_5608 v_add89_5607;
(*   %xor1.i245.5611 = xor i64 %add89.5607, %add90.4558 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_5611 v_add89_5607 v_add90_4558;
(*   %or.i246.5612 = or i64 %xor.i244.5610, %xor1.i245.5611 *)
(* You may need to modify here *)
or uint64 v_or_i246_5612 v_xor_i244_5610 v_xor1_i245_5611;
(*   %xor2.i247.5613 = xor i64 %or.i246.5612, %add90.5608 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_5613 v_or_i246_5612 v_add90_5608;
(*   %shr.i254326.5614 = or i64 %xor2.i247.5613, %xor2.i253.5609 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_5614 v_xor2_i247_5613 v_xor2_i253_5609;
(*   %or94325.5615 = lshr i64 %shr.i254326.5614, 63 *)
(* You may need to modify here *)
split v_or94325_5615 tmp_to_be_used v_shr_i254326_5614 63;
(* generated by python *)
assert true && limbs 64 [v_add90_5608, v_or94325_5615] = limbs 64 [v_shr_i260_5606, 0@64] + limbs 64 [v_xor2569_i290_5600, 0@64] + limbs 64 [v_add90_4558, 0@64];
assume limbs 64 [v_add90_5608, v_or94325_5615] = limbs 64 [v_shr_i260_5606, 0] + limbs 64 [v_xor2569_i290_5600, 0] + limbs 64 [v_add90_4558, 0] && true;
(*   %add96.5 = add i64 %or94325.5615, %add96.4 *)
adds discard_456 v_add96_5 v_or94325_5615 v_add96_4;
(* Heuristics applied. *)
assert true && eq discard_456 0@1;
assume eq discard_456 0 && true;
(*   %arrayidx74.6622 = getelementptr inbounds i64, i64* %mc, i64 7 *)
(*   %143 = load i64, i64* %arrayidx74.6622, align 8, !tbaa !3 *)
mov v143 mc_56;
(*   %144 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 5), align 8, !tbaa !3 *)
mov v144 p751p1_40;
(*   %and.i262.6623 = and i64 %143, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_6623 v143 (0xFFFFFFFF)@uint64;
(*   %shr.i263.6624 = lshr i64 %143, 32 *)
(* You may need to modify here *)
split v_shr_i263_6624 tmp_to_be_used v143 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_6623;
assume eq tmp_to_be_used v_and_i262_6623 && true;
(*   %and1.i264.6625 = and i64 %144, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_6625 v144 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.6626 = lshr i64 %144, 32 *)
(* You may need to modify here *)
split v_shr2_i265_6626 tmp_to_be_used v144 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_6625;
assume eq tmp_to_be_used v_and1_i264_6625 && true;
(*   %mul.i266.6627 = mul nuw i64 %and1.i264.6625, %and.i262.6623 *)
mul v_mul_i266_6627 v_and1_i264_6625 v_and_i262_6623;
(*   %mul3.i267.6628 = mul nuw i64 %shr2.i265.6626, %and.i262.6623 *)
mul v_mul3_i267_6628 v_shr2_i265_6626 v_and_i262_6623;
(*   %mul4.i268.6629 = mul nuw i64 %and1.i264.6625, %shr.i263.6624 *)
mul v_mul4_i268_6629 v_and1_i264_6625 v_shr_i263_6624;
(*   %mul5.i269.6630 = mul nuw i64 %shr2.i265.6626, %shr.i263.6624 *)
mul v_mul5_i269_6630 v_shr2_i265_6626 v_shr_i263_6624;
(*   %and6.i270.6631 = and i64 %mul.i266.6627, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_6631 v_mul_i266_6627 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.6632 = lshr i64 %mul.i266.6627, 32 *)
(* You may need to modify here *)
split v_shr7_i271_6632 tmp_to_be_used v_mul_i266_6627 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_6631;
assume eq tmp_to_be_used v_and6_i270_6631 && true;
(*   %and8.i272.6633 = and i64 %mul4.i268.6629, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_6633 v_mul4_i268_6629 (0xFFFFFFFF)@uint64;
(*   %and9.i273.6634 = and i64 %mul3.i267.6628, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_6634 v_mul3_i267_6628 (0xFFFFFFFF)@uint64;
(*   %add.i274.6635 = add nuw nsw i64 %shr7.i271.6632, %and8.i272.6633 *)
adds discard_457 v_add_i274_6635 v_shr7_i271_6632 v_and8_i272_6633;
(* Heuristics applied. *)
assert true && eq discard_457 0@1;
assume eq discard_457 0 && true;
(*   %add10.i275.6636 = add nuw nsw i64 %add.i274.6635, %and9.i273.6634 *)
adds discard_458 v_add10_i275_6636 v_add_i274_6635 v_and9_i273_6634;
(* Heuristics applied. *)
assert true && eq discard_458 0@1;
assume eq discard_458 0 && true;
(*   %shr11.i276.6637 = lshr i64 %add10.i275.6636, 32 *)
(* You may need to modify here *)
split v_shr11_i276_6637 tmp_to_be_used v_add10_i275_6636 32;
(*   %shl.i277.6638 = shl i64 %add10.i275.6636, 32 *)
shls discard_459 v_shl_i277_6638 v_add10_i275_6636 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_6638 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_6638 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.6639 = or i64 %shl.i277.6638, %and6.i270.6631 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_6639 v_shl_i277_6638 v_and6_i270_6631;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_6639 v_shl_i277_6638 + v_and6_i270_6631;
assume eq v_xor68_i278_6639 v_shl_i277_6638 + v_and6_i270_6631 && true;
(*   %shr13.i279.6640 = lshr i64 %mul4.i268.6629, 32 *)
(* You may need to modify here *)
split v_shr13_i279_6640 tmp_to_be_used v_mul4_i268_6629 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_6633;
assume eq tmp_to_be_used v_and8_i272_6633 && true;
(*   %shr14.i280.6641 = lshr i64 %mul3.i267.6628, 32 *)
(* You may need to modify here *)
split v_shr14_i280_6641 tmp_to_be_used v_mul3_i267_6628 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_6634;
assume eq tmp_to_be_used v_and9_i273_6634 && true;
(*   %and15.i281.6642 = and i64 %mul5.i269.6630, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_6642 v_mul5_i269_6630 (0xFFFFFFFF)@uint64;
(*   %add16.i282.6643 = add nuw nsw i64 %shr13.i279.6640, %shr14.i280.6641 *)
adds discard_460 v_add16_i282_6643 v_shr13_i279_6640 v_shr14_i280_6641;
(* Heuristics applied. *)
assert true && eq discard_460 0@1;
assume eq discard_460 0 && true;
(*   %add17.i283.6644 = add nuw nsw i64 %add16.i282.6643, %and15.i281.6642 *)
adds discard_461 v_add17_i283_6644 v_add16_i282_6643 v_and15_i281_6642;
(* Heuristics applied. *)
assert true && eq discard_461 0@1;
assume eq discard_461 0 && true;
(*   %add18.i284.6645 = add nuw nsw i64 %add17.i283.6644, %shr11.i276.6637 *)
adds discard_462 v_add18_i284_6645 v_add17_i283_6644 v_shr11_i276_6637;
(* Heuristics applied. *)
assert true && eq discard_462 0@1;
assume eq discard_462 0 && true;
(*   %and19.i285.6646 = and i64 %add18.i284.6645, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_6646 v_add18_i284_6645 (0xFFFFFFFF)@uint64;
(*   %and21.i287.6647 = and i64 %add18.i284.6645, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_6647 v_add18_i284_6645 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_6645 v_and21_i287_6647 + v_and19_i285_6646;
assume eq v_add18_i284_6645 v_and21_i287_6647 + v_and19_i285_6646 && true;
(*   %and22.i288.6648 = and i64 %mul5.i269.6630, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_6648 v_mul5_i269_6630 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_6630 v_and22_i288_6648 + v_and15_i281_6642;
assume eq v_mul5_i269_6630 v_and22_i288_6648 + v_and15_i281_6642 && true;
(*   %add23.i289.6649 = add i64 %and21.i287.6647, %and22.i288.6648 *)
adds discard_463 v_add23_i289_6649 v_and21_i287_6647 v_and22_i288_6648;
(* Heuristics applied. *)
assert true && eq discard_463 0@1;
assume eq discard_463 0 && true;
(*   %xor2569.i290.6650 = or i64 %add23.i289.6649, %and19.i285.6646 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_6650 v_add23_i289_6649 v_and19_i285_6646;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_6650 v_add23_i289_6649 + v_and19_i285_6646;
assume eq v_xor2569_i290_6650 v_add23_i289_6649 + v_and19_i285_6646 && true;
(*   %add82.6651 = add i64 %xor68.i278.6639, %add82.5601 *)
adds discard_464 v_add82_6651 v_xor68_i278_6639 v_add82_5601;
(*   %xor.i256.6652 = xor i64 %add82.6651, %shl.i277.6638 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_6652 v_add82_6651 v_shl_i277_6638;
(*   %xor1.i257.6653 = xor i64 %shl.i277.6638, %add82.5601 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_6653 v_shl_i277_6638 v_add82_5601;
(*   %or.i258.6654 = or i64 %xor.i256.6652, %xor1.i257.6653 *)
(* You may need to modify here *)
or uint64 v_or_i258_6654 v_xor_i256_6652 v_xor1_i257_6653;
(*   %xor2.i259.6655 = xor i64 %or.i258.6654, %add82.6651 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_6655 v_or_i258_6654 v_add82_6651;
(*   %shr.i260.6656 = lshr i64 %xor2.i259.6655, 63 *)
(* You may need to modify here *)
split v_shr_i260_6656 tmp_to_be_used v_xor2_i259_6655 63;
(* generated by python *)
assert true && limbs 64 [v_add82_6651, v_shr_i260_6656] = limbs 64 [v_xor68_i278_6639, 0@64] + limbs 64 [v_add82_5601, 0@64];
assume limbs 64 [v_add82_6651, v_shr_i260_6656] = limbs 64 [v_xor68_i278_6639, 0] + limbs 64 [v_add82_5601, 0] && true;
(*   %add89.6657 = add i64 %shr.i260.6656, %xor2569.i290.6650 *)
adds discard_465 v_add89_6657 v_shr_i260_6656 v_xor2569_i290_6650;
(* Heuristics applied. *)
assert true && eq discard_465 0@1;
assume eq discard_465 0 && true;
(*   %add90.6658 = add i64 %add89.6657, %add90.5608 *)
adds discard_466 v_add90_6658 v_add89_6657 v_add90_5608;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_466 0@1; *)
(* assume eq discard_466 0 && true; *)
(*   %145 = xor i64 %add89.6657, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v145 v_add89_6657 (0x8000000000000000)@uint64;
(*   %xor2.i253.6659 = and i64 %145, %add23.i289.6649 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_6659 v145 v_add23_i289_6649;
(*   %xor.i244.6660 = xor i64 %add90.6658, %add89.6657 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_6660 v_add90_6658 v_add89_6657;
(*   %xor1.i245.6661 = xor i64 %add89.6657, %add90.5608 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_6661 v_add89_6657 v_add90_5608;
(*   %or.i246.6662 = or i64 %xor.i244.6660, %xor1.i245.6661 *)
(* You may need to modify here *)
or uint64 v_or_i246_6662 v_xor_i244_6660 v_xor1_i245_6661;
(*   %xor2.i247.6663 = xor i64 %or.i246.6662, %add90.6658 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_6663 v_or_i246_6662 v_add90_6658;
(*   %shr.i254326.6664 = or i64 %xor2.i247.6663, %xor2.i253.6659 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_6664 v_xor2_i247_6663 v_xor2_i253_6659;
(*   %or94325.6665 = lshr i64 %shr.i254326.6664, 63 *)
(* You may need to modify here *)
split v_or94325_6665 tmp_to_be_used v_shr_i254326_6664 63;
(* generated by python *)
assert true && limbs 64 [v_add90_6658, v_or94325_6665] = limbs 64 [v_shr_i260_6656, 0@64] + limbs 64 [v_xor2569_i290_6650, 0@64] + limbs 64 [v_add90_5608, 0@64];
assume limbs 64 [v_add90_6658, v_or94325_6665] = limbs 64 [v_shr_i260_6656, 0] + limbs 64 [v_xor2569_i290_6650, 0] + limbs 64 [v_add90_5608, 0] && true;
(*   %add96.6 = add i64 %or94325.6665, %add96.5 *)
adds discard_467 v_add96_6 v_or94325_6665 v_add96_5;
(* Heuristics applied. *)
assert true && eq discard_467 0@1;
assume eq discard_467 0 && true;
(*   %arrayidx104 = getelementptr inbounds i64, i64* %ma, i64 12 *)
(*   %146 = load i64, i64* %arrayidx104, align 8, !tbaa !3 *)
mov v146 ma_96;
(*   %add105 = add i64 %146, %add82.6651 *)
adds discard_468 v_add105 v146 v_add82_6651;
(*   %xor.i238 = xor i64 %add105, %add82.6651 *)
(* You may need to modify here *)
xor uint64 v_xor_i238 v_add105 v_add82_6651;
(*   %xor1.i239 = xor i64 %146, %add82.6651 *)
(* You may need to modify here *)
xor uint64 v_xor1_i239 v146 v_add82_6651;
(*   %or.i240 = or i64 %xor.i238, %xor1.i239 *)
(* You may need to modify here *)
or uint64 v_or_i240 v_xor_i238 v_xor1_i239;
(*   %xor2.i241 = xor i64 %or.i240, %add105 *)
(* You may need to modify here *)
xor uint64 v_xor2_i241 v_or_i240 v_add105;
(*   %shr.i242 = lshr i64 %xor2.i241, 63 *)
(* You may need to modify here *)
split v_shr_i242 tmp_to_be_used v_xor2_i241 63;
(* generated by python *)
assert true && limbs 64 [v_add105, v_shr_i242] = limbs 64 [v146, 0@64] + limbs 64 [v_add82_6651, 0@64];
assume limbs 64 [v_add105, v_shr_i242] = limbs 64 [v146, 0] + limbs 64 [v_add82_6651, 0] && true;
(*   %add111 = add i64 %shr.i242, %add90.6658 *)
adds discard_469 v_add111 v_shr_i242 v_add90_6658;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_469 0@1; *)
(* assume eq discard_469 0 && true; *)
(*   store i64 %add105, i64* %mc, align 8, !tbaa !3 *)
mov mc_0 v_add105;
(*   %147 = xor i64 %add111, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v147 v_add111 (0x8000000000000000)@uint64;
(*   %xor2.i = and i64 %147, %add90.6658 *)
(* You may need to modify here *)
and uint64 v_xor2_i v147 v_add90_6658;
(*   %shr.i237 = lshr i64 %xor2.i, 63 *)
(* You may need to modify here *)
split v_shr_i237 tmp_to_be_used v_xor2_i 63;
(* generated by python *)
assert true && limbs 64 [v_add111, v_shr_i237] = limbs 64 [v_shr_i242, 0@64] + limbs 64 [v_add90_6658, 0@64];
assume limbs 64 [v_add111, v_shr_i237] = limbs 64 [v_shr_i242, 0] + limbs 64 [v_add90_6658, 0] && true;
(*   %add118 = add i64 %shr.i237, %add96.6 *)
adds discard_470 v_add118 v_shr_i237 v_add96_6;
(* Heuristics applied. *)
assert true && eq discard_470 0@1;
assume eq discard_470 0 && true;
(*   %arrayidx74.1 = getelementptr inbounds i64, i64* %mc, i64 2 *)
(*   %148 = load i64, i64* %arrayidx74.1, align 8, !tbaa !3 *)
mov v148 mc_16;
(*   %149 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 11), align 8, !tbaa !3 *)
mov v149 p751p1_88;
(*   %and.i262.1 = and i64 %148, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_1 v148 (0xFFFFFFFF)@uint64;
(*   %shr.i263.1 = lshr i64 %148, 32 *)
(* You may need to modify here *)
split v_shr_i263_1 tmp_to_be_used v148 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_1;
assume eq tmp_to_be_used v_and_i262_1 && true;
(*   %and1.i264.1 = and i64 %149, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_1 v149 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.1 = lshr i64 %149, 32 *)
(* You may need to modify here *)
split v_shr2_i265_1 tmp_to_be_used v149 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_1;
assume eq tmp_to_be_used v_and1_i264_1 && true;
(*   %mul.i266.1 = mul nuw i64 %and1.i264.1, %and.i262.1 *)
mul v_mul_i266_1 v_and1_i264_1 v_and_i262_1;
(*   %mul3.i267.1 = mul nuw i64 %shr2.i265.1, %and.i262.1 *)
mul v_mul3_i267_1 v_shr2_i265_1 v_and_i262_1;
(*   %mul4.i268.1 = mul nuw i64 %and1.i264.1, %shr.i263.1 *)
mul v_mul4_i268_1 v_and1_i264_1 v_shr_i263_1;
(*   %mul5.i269.1 = mul nuw i64 %shr2.i265.1, %shr.i263.1 *)
mul v_mul5_i269_1 v_shr2_i265_1 v_shr_i263_1;
(*   %and6.i270.1 = and i64 %mul.i266.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_1 v_mul_i266_1 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.1 = lshr i64 %mul.i266.1, 32 *)
(* You may need to modify here *)
split v_shr7_i271_1 tmp_to_be_used v_mul_i266_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_1;
assume eq tmp_to_be_used v_and6_i270_1 && true;
(*   %and8.i272.1 = and i64 %mul4.i268.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_1 v_mul4_i268_1 (0xFFFFFFFF)@uint64;
(*   %and9.i273.1 = and i64 %mul3.i267.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_1 v_mul3_i267_1 (0xFFFFFFFF)@uint64;
(*   %add.i274.1 = add nuw nsw i64 %shr7.i271.1, %and8.i272.1 *)
adds discard_471 v_add_i274_1 v_shr7_i271_1 v_and8_i272_1;
(* Heuristics applied. *)
assert true && eq discard_471 0@1;
assume eq discard_471 0 && true;
(*   %add10.i275.1 = add nuw nsw i64 %add.i274.1, %and9.i273.1 *)
adds discard_472 v_add10_i275_1 v_add_i274_1 v_and9_i273_1;
(* Heuristics applied. *)
assert true && eq discard_472 0@1;
assume eq discard_472 0 && true;
(*   %shr11.i276.1 = lshr i64 %add10.i275.1, 32 *)
(* You may need to modify here *)
split v_shr11_i276_1 tmp_to_be_used v_add10_i275_1 32;
(*   %shl.i277.1 = shl i64 %add10.i275.1, 32 *)
shls discard_473 v_shl_i277_1 v_add10_i275_1 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_1 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_1 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.1 = or i64 %shl.i277.1, %and6.i270.1 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_1 v_shl_i277_1 v_and6_i270_1;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_1 v_shl_i277_1 + v_and6_i270_1;
assume eq v_xor68_i278_1 v_shl_i277_1 + v_and6_i270_1 && true;
(*   %shr13.i279.1 = lshr i64 %mul4.i268.1, 32 *)
(* You may need to modify here *)
split v_shr13_i279_1 tmp_to_be_used v_mul4_i268_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_1;
assume eq tmp_to_be_used v_and8_i272_1 && true;
(*   %shr14.i280.1 = lshr i64 %mul3.i267.1, 32 *)
(* You may need to modify here *)
split v_shr14_i280_1 tmp_to_be_used v_mul3_i267_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_1;
assume eq tmp_to_be_used v_and9_i273_1 && true;
(*   %and15.i281.1 = and i64 %mul5.i269.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_1 v_mul5_i269_1 (0xFFFFFFFF)@uint64;
(*   %add16.i282.1 = add nuw nsw i64 %shr13.i279.1, %shr14.i280.1 *)
adds discard_474 v_add16_i282_1 v_shr13_i279_1 v_shr14_i280_1;
(* Heuristics applied. *)
assert true && eq discard_474 0@1;
assume eq discard_474 0 && true;
(*   %add17.i283.1 = add nuw nsw i64 %add16.i282.1, %and15.i281.1 *)
adds discard_475 v_add17_i283_1 v_add16_i282_1 v_and15_i281_1;
(* Heuristics applied. *)
assert true && eq discard_475 0@1;
assume eq discard_475 0 && true;
(*   %add18.i284.1 = add nuw nsw i64 %add17.i283.1, %shr11.i276.1 *)
adds discard_476 v_add18_i284_1 v_add17_i283_1 v_shr11_i276_1;
(* Heuristics applied. *)
assert true && eq discard_476 0@1;
assume eq discard_476 0 && true;
(*   %and19.i285.1 = and i64 %add18.i284.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_1 v_add18_i284_1 (0xFFFFFFFF)@uint64;
(*   %and21.i287.1 = and i64 %add18.i284.1, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_1 v_add18_i284_1 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_1 v_and21_i287_1 + v_and19_i285_1;
assume eq v_add18_i284_1 v_and21_i287_1 + v_and19_i285_1 && true;
(*   %and22.i288.1 = and i64 %mul5.i269.1, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_1 v_mul5_i269_1 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_1 v_and22_i288_1 + v_and15_i281_1;
assume eq v_mul5_i269_1 v_and22_i288_1 + v_and15_i281_1 && true;
(*   %add23.i289.1 = add i64 %and21.i287.1, %and22.i288.1 *)
adds discard_477 v_add23_i289_1 v_and21_i287_1 v_and22_i288_1;
(* Heuristics applied. *)
assert true && eq discard_477 0@1;
assume eq discard_477 0 && true;
(*   %xor2569.i290.1 = or i64 %add23.i289.1, %and19.i285.1 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_1 v_add23_i289_1 v_and19_i285_1;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_1 v_add23_i289_1 + v_and19_i285_1;
assume eq v_xor2569_i290_1 v_add23_i289_1 + v_and19_i285_1 && true;
(*   %add82.1 = add i64 %xor68.i278.1, %add111 *)
adds discard_478 v_add82_1 v_xor68_i278_1 v_add111;
(*   %xor.i256.1 = xor i64 %add82.1, %shl.i277.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_1 v_add82_1 v_shl_i277_1;
(*   %xor1.i257.1 = xor i64 %shl.i277.1, %add111 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_1 v_shl_i277_1 v_add111;
(*   %or.i258.1 = or i64 %xor.i256.1, %xor1.i257.1 *)
(* You may need to modify here *)
or uint64 v_or_i258_1 v_xor_i256_1 v_xor1_i257_1;
(*   %xor2.i259.1 = xor i64 %or.i258.1, %add82.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_1 v_or_i258_1 v_add82_1;
(*   %shr.i260.1 = lshr i64 %xor2.i259.1, 63 *)
(* You may need to modify here *)
split v_shr_i260_1 tmp_to_be_used v_xor2_i259_1 63;
(* generated by python *)
assert true && limbs 64 [v_add82_1, v_shr_i260_1] = limbs 64 [v_xor68_i278_1, 0@64] + limbs 64 [v_add111, 0@64];
assume limbs 64 [v_add82_1, v_shr_i260_1] = limbs 64 [v_xor68_i278_1, 0] + limbs 64 [v_add111, 0] && true;
(*   %add89.1 = add i64 %shr.i260.1, %xor2569.i290.1 *)
adds discard_479 v_add89_1 v_shr_i260_1 v_xor2569_i290_1;
(* Heuristics applied. *)
assert true && eq discard_479 0@1;
assume eq discard_479 0 && true;
(*   %add90.1 = add i64 %add89.1, %add118 *)
adds discard_480 v_add90_1 v_add89_1 v_add118;
(* Heuristics applied. *)
assert true && eq discard_480 0@1;
assume eq discard_480 0 && true;
(*   %150 = xor i64 %add89.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v150 v_add89_1 (0x8000000000000000)@uint64;
(*   %xor2.i253.1 = and i64 %150, %add23.i289.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_1 v150 v_add23_i289_1;
(*   %xor.i244.1 = xor i64 %add90.1, %add89.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_1 v_add90_1 v_add89_1;
(*   %xor1.i245.1 = xor i64 %add89.1, %add118 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_1 v_add89_1 v_add118;
(*   %or.i246.1 = or i64 %xor.i244.1, %xor1.i245.1 *)
(* You may need to modify here *)
or uint64 v_or_i246_1 v_xor_i244_1 v_xor1_i245_1;
(*   %xor2.i247.1 = xor i64 %or.i246.1, %add90.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_1 v_or_i246_1 v_add90_1;
(*   %shr.i254326.1 = or i64 %xor2.i247.1, %xor2.i253.1 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_1 v_xor2_i247_1 v_xor2_i253_1;
(*   %or94325.1 = lshr i64 %shr.i254326.1, 63 *)
(* You may need to modify here *)
split v_or94325_1 tmp_to_be_used v_shr_i254326_1 63;
(* generated by python *)
assert true && limbs 64 [v_add90_1, v_or94325_1] = limbs 64 [v_shr_i260_1, 0@64] + limbs 64 [v_xor2569_i290_1, 0@64] + limbs 64 [v_add118, 0@64];
assume limbs 64 [v_add90_1, v_or94325_1] = limbs 64 [v_shr_i260_1, 0] + limbs 64 [v_xor2569_i290_1, 0] + limbs 64 [v_add118, 0] && true;
(*   %arrayidx74.1.1 = getelementptr inbounds i64, i64* %mc, i64 3 *)
(*   %151 = load i64, i64* %arrayidx74.1.1, align 8, !tbaa !3 *)
mov v151 mc_24;
(*   %152 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 10), align 16, !tbaa !3 *)
mov v152 p751p1_80;
(*   %and.i262.1.1 = and i64 %151, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_1_1 v151 (0xFFFFFFFF)@uint64;
(*   %shr.i263.1.1 = lshr i64 %151, 32 *)
(* You may need to modify here *)
split v_shr_i263_1_1 tmp_to_be_used v151 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_1_1;
assume eq tmp_to_be_used v_and_i262_1_1 && true;
(*   %and1.i264.1.1 = and i64 %152, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_1_1 v152 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.1.1 = lshr i64 %152, 32 *)
(* You may need to modify here *)
split v_shr2_i265_1_1 tmp_to_be_used v152 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_1_1;
assume eq tmp_to_be_used v_and1_i264_1_1 && true;
(*   %mul.i266.1.1 = mul nuw i64 %and1.i264.1.1, %and.i262.1.1 *)
mul v_mul_i266_1_1 v_and1_i264_1_1 v_and_i262_1_1;
(*   %mul3.i267.1.1 = mul nuw i64 %shr2.i265.1.1, %and.i262.1.1 *)
mul v_mul3_i267_1_1 v_shr2_i265_1_1 v_and_i262_1_1;
(*   %mul4.i268.1.1 = mul nuw i64 %and1.i264.1.1, %shr.i263.1.1 *)
mul v_mul4_i268_1_1 v_and1_i264_1_1 v_shr_i263_1_1;
(*   %mul5.i269.1.1 = mul nuw i64 %shr2.i265.1.1, %shr.i263.1.1 *)
mul v_mul5_i269_1_1 v_shr2_i265_1_1 v_shr_i263_1_1;
(*   %and6.i270.1.1 = and i64 %mul.i266.1.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_1_1 v_mul_i266_1_1 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.1.1 = lshr i64 %mul.i266.1.1, 32 *)
(* You may need to modify here *)
split v_shr7_i271_1_1 tmp_to_be_used v_mul_i266_1_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_1_1;
assume eq tmp_to_be_used v_and6_i270_1_1 && true;
(*   %and8.i272.1.1 = and i64 %mul4.i268.1.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_1_1 v_mul4_i268_1_1 (0xFFFFFFFF)@uint64;
(*   %and9.i273.1.1 = and i64 %mul3.i267.1.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_1_1 v_mul3_i267_1_1 (0xFFFFFFFF)@uint64;
(*   %add.i274.1.1 = add nuw nsw i64 %shr7.i271.1.1, %and8.i272.1.1 *)
adds discard_481 v_add_i274_1_1 v_shr7_i271_1_1 v_and8_i272_1_1;
(* Heuristics applied. *)
assert true && eq discard_481 0@1;
assume eq discard_481 0 && true;
(*   %add10.i275.1.1 = add nuw nsw i64 %add.i274.1.1, %and9.i273.1.1 *)
adds discard_482 v_add10_i275_1_1 v_add_i274_1_1 v_and9_i273_1_1;
(* Heuristics applied. *)
assert true && eq discard_482 0@1;
assume eq discard_482 0 && true;
(*   %shr11.i276.1.1 = lshr i64 %add10.i275.1.1, 32 *)
(* You may need to modify here *)
split v_shr11_i276_1_1 tmp_to_be_used v_add10_i275_1_1 32;
(*   %shl.i277.1.1 = shl i64 %add10.i275.1.1, 32 *)
shls discard_483 v_shl_i277_1_1 v_add10_i275_1_1 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_1_1 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_1_1 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.1.1 = or i64 %shl.i277.1.1, %and6.i270.1.1 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_1_1 v_shl_i277_1_1 v_and6_i270_1_1;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_1_1 v_shl_i277_1_1 + v_and6_i270_1_1;
assume eq v_xor68_i278_1_1 v_shl_i277_1_1 + v_and6_i270_1_1 && true;
(*   %shr13.i279.1.1 = lshr i64 %mul4.i268.1.1, 32 *)
(* You may need to modify here *)
split v_shr13_i279_1_1 tmp_to_be_used v_mul4_i268_1_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_1_1;
assume eq tmp_to_be_used v_and8_i272_1_1 && true;
(*   %shr14.i280.1.1 = lshr i64 %mul3.i267.1.1, 32 *)
(* You may need to modify here *)
split v_shr14_i280_1_1 tmp_to_be_used v_mul3_i267_1_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_1_1;
assume eq tmp_to_be_used v_and9_i273_1_1 && true;
(*   %and15.i281.1.1 = and i64 %mul5.i269.1.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_1_1 v_mul5_i269_1_1 (0xFFFFFFFF)@uint64;
(*   %add16.i282.1.1 = add nuw nsw i64 %shr13.i279.1.1, %shr14.i280.1.1 *)
adds discard_484 v_add16_i282_1_1 v_shr13_i279_1_1 v_shr14_i280_1_1;
(* Heuristics applied. *)
assert true && eq discard_484 0@1;
assume eq discard_484 0 && true;
(*   %add17.i283.1.1 = add nuw nsw i64 %add16.i282.1.1, %and15.i281.1.1 *)
adds discard_485 v_add17_i283_1_1 v_add16_i282_1_1 v_and15_i281_1_1;
(* Heuristics applied. *)
assert true && eq discard_485 0@1;
assume eq discard_485 0 && true;
(*   %add18.i284.1.1 = add nuw nsw i64 %add17.i283.1.1, %shr11.i276.1.1 *)
adds discard_486 v_add18_i284_1_1 v_add17_i283_1_1 v_shr11_i276_1_1;
(* Heuristics applied. *)
assert true && eq discard_486 0@1;
assume eq discard_486 0 && true;
(*   %and19.i285.1.1 = and i64 %add18.i284.1.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_1_1 v_add18_i284_1_1 (0xFFFFFFFF)@uint64;
(*   %and21.i287.1.1 = and i64 %add18.i284.1.1, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_1_1 v_add18_i284_1_1 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_1_1 v_and21_i287_1_1 + v_and19_i285_1_1;
assume eq v_add18_i284_1_1 v_and21_i287_1_1 + v_and19_i285_1_1 && true;
(*   %and22.i288.1.1 = and i64 %mul5.i269.1.1, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_1_1 v_mul5_i269_1_1 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_1_1 v_and22_i288_1_1 + v_and15_i281_1_1;
assume eq v_mul5_i269_1_1 v_and22_i288_1_1 + v_and15_i281_1_1 && true;
(*   %add23.i289.1.1 = add i64 %and21.i287.1.1, %and22.i288.1.1 *)
adds discard_487 v_add23_i289_1_1 v_and21_i287_1_1 v_and22_i288_1_1;
(* Heuristics applied. *)
assert true && eq discard_487 0@1;
assume eq discard_487 0 && true;
(*   %xor2569.i290.1.1 = or i64 %add23.i289.1.1, %and19.i285.1.1 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_1_1 v_add23_i289_1_1 v_and19_i285_1_1;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_1_1 v_add23_i289_1_1 + v_and19_i285_1_1;
assume eq v_xor2569_i290_1_1 v_add23_i289_1_1 + v_and19_i285_1_1 && true;
(*   %add82.1.1 = add i64 %xor68.i278.1.1, %add82.1 *)
adds discard_488 v_add82_1_1 v_xor68_i278_1_1 v_add82_1;
(*   %xor.i256.1.1 = xor i64 %add82.1.1, %shl.i277.1.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_1_1 v_add82_1_1 v_shl_i277_1_1;
(*   %xor1.i257.1.1 = xor i64 %shl.i277.1.1, %add82.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_1_1 v_shl_i277_1_1 v_add82_1;
(*   %or.i258.1.1 = or i64 %xor.i256.1.1, %xor1.i257.1.1 *)
(* You may need to modify here *)
or uint64 v_or_i258_1_1 v_xor_i256_1_1 v_xor1_i257_1_1;
(*   %xor2.i259.1.1 = xor i64 %or.i258.1.1, %add82.1.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_1_1 v_or_i258_1_1 v_add82_1_1;
(*   %shr.i260.1.1 = lshr i64 %xor2.i259.1.1, 63 *)
(* You may need to modify here *)
split v_shr_i260_1_1 tmp_to_be_used v_xor2_i259_1_1 63;
(* generated by python *)
assert true && limbs 64 [v_add82_1_1, v_shr_i260_1_1] = limbs 64 [v_xor68_i278_1_1, 0@64] + limbs 64 [v_add82_1, 0@64];
assume limbs 64 [v_add82_1_1, v_shr_i260_1_1] = limbs 64 [v_xor68_i278_1_1, 0] + limbs 64 [v_add82_1, 0] && true;
(*   %add89.1.1 = add i64 %shr.i260.1.1, %xor2569.i290.1.1 *)
adds discard_489 v_add89_1_1 v_shr_i260_1_1 v_xor2569_i290_1_1;
(* Heuristics applied. *)
assert true && eq discard_489 0@1;
assume eq discard_489 0 && true;
(*   %add90.1.1 = add i64 %add89.1.1, %add90.1 *)
adds discard_490 v_add90_1_1 v_add89_1_1 v_add90_1;
(* Heuristics applied. *)
assert true && eq discard_490 0@1;
assume eq discard_490 0 && true;
(*   %153 = xor i64 %add89.1.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v153 v_add89_1_1 (0x8000000000000000)@uint64;
(*   %xor2.i253.1.1 = and i64 %153, %add23.i289.1.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_1_1 v153 v_add23_i289_1_1;
(*   %xor.i244.1.1 = xor i64 %add90.1.1, %add89.1.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_1_1 v_add90_1_1 v_add89_1_1;
(*   %xor1.i245.1.1 = xor i64 %add89.1.1, %add90.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_1_1 v_add89_1_1 v_add90_1;
(*   %or.i246.1.1 = or i64 %xor.i244.1.1, %xor1.i245.1.1 *)
(* You may need to modify here *)
or uint64 v_or_i246_1_1 v_xor_i244_1_1 v_xor1_i245_1_1;
(*   %xor2.i247.1.1 = xor i64 %or.i246.1.1, %add90.1.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_1_1 v_or_i246_1_1 v_add90_1_1;
(*   %shr.i254326.1.1 = or i64 %xor2.i247.1.1, %xor2.i253.1.1 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_1_1 v_xor2_i247_1_1 v_xor2_i253_1_1;
(*   %or94325.1.1 = lshr i64 %shr.i254326.1.1, 63 *)
(* You may need to modify here *)
split v_or94325_1_1 tmp_to_be_used v_shr_i254326_1_1 63;
(* generated by python *)
assert true && limbs 64 [v_add90_1_1, v_or94325_1_1] = limbs 64 [v_shr_i260_1_1, 0@64] + limbs 64 [v_xor2569_i290_1_1, 0@64] + limbs 64 [v_add90_1, 0@64];
assume limbs 64 [v_add90_1_1, v_or94325_1_1] = limbs 64 [v_shr_i260_1_1, 0] + limbs 64 [v_xor2569_i290_1_1, 0] + limbs 64 [v_add90_1, 0] && true;
(*   %add96.1.1 = add nuw nsw i64 %or94325.1.1, %or94325.1 *)
adds discard_491 v_add96_1_1 v_or94325_1_1 v_or94325_1;
(* Heuristics applied. *)
assert true && eq discard_491 0@1;
assume eq discard_491 0 && true;
(*   %arrayidx74.1.2 = getelementptr inbounds i64, i64* %mc, i64 4 *)
(*   %154 = load i64, i64* %arrayidx74.1.2, align 8, !tbaa !3 *)
mov v154 mc_32;
(*   %155 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 9), align 8, !tbaa !3 *)
mov v155 p751p1_72;
(*   %and.i262.1.2 = and i64 %154, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_1_2 v154 (0xFFFFFFFF)@uint64;
(*   %shr.i263.1.2 = lshr i64 %154, 32 *)
(* You may need to modify here *)
split v_shr_i263_1_2 tmp_to_be_used v154 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_1_2;
assume eq tmp_to_be_used v_and_i262_1_2 && true;
(*   %and1.i264.1.2 = and i64 %155, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_1_2 v155 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.1.2 = lshr i64 %155, 32 *)
(* You may need to modify here *)
split v_shr2_i265_1_2 tmp_to_be_used v155 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_1_2;
assume eq tmp_to_be_used v_and1_i264_1_2 && true;
(*   %mul.i266.1.2 = mul nuw i64 %and1.i264.1.2, %and.i262.1.2 *)
mul v_mul_i266_1_2 v_and1_i264_1_2 v_and_i262_1_2;
(*   %mul3.i267.1.2 = mul nuw i64 %shr2.i265.1.2, %and.i262.1.2 *)
mul v_mul3_i267_1_2 v_shr2_i265_1_2 v_and_i262_1_2;
(*   %mul4.i268.1.2 = mul nuw i64 %and1.i264.1.2, %shr.i263.1.2 *)
mul v_mul4_i268_1_2 v_and1_i264_1_2 v_shr_i263_1_2;
(*   %mul5.i269.1.2 = mul nuw i64 %shr2.i265.1.2, %shr.i263.1.2 *)
mul v_mul5_i269_1_2 v_shr2_i265_1_2 v_shr_i263_1_2;
(*   %and6.i270.1.2 = and i64 %mul.i266.1.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_1_2 v_mul_i266_1_2 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.1.2 = lshr i64 %mul.i266.1.2, 32 *)
(* You may need to modify here *)
split v_shr7_i271_1_2 tmp_to_be_used v_mul_i266_1_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_1_2;
assume eq tmp_to_be_used v_and6_i270_1_2 && true;
(*   %and8.i272.1.2 = and i64 %mul4.i268.1.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_1_2 v_mul4_i268_1_2 (0xFFFFFFFF)@uint64;
(*   %and9.i273.1.2 = and i64 %mul3.i267.1.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_1_2 v_mul3_i267_1_2 (0xFFFFFFFF)@uint64;
(*   %add.i274.1.2 = add nuw nsw i64 %shr7.i271.1.2, %and8.i272.1.2 *)
adds discard_492 v_add_i274_1_2 v_shr7_i271_1_2 v_and8_i272_1_2;
(* Heuristics applied. *)
assert true && eq discard_492 0@1;
assume eq discard_492 0 && true;
(*   %add10.i275.1.2 = add nuw nsw i64 %add.i274.1.2, %and9.i273.1.2 *)
adds discard_493 v_add10_i275_1_2 v_add_i274_1_2 v_and9_i273_1_2;
(* Heuristics applied. *)
assert true && eq discard_493 0@1;
assume eq discard_493 0 && true;
(*   %shr11.i276.1.2 = lshr i64 %add10.i275.1.2, 32 *)
(* You may need to modify here *)
split v_shr11_i276_1_2 tmp_to_be_used v_add10_i275_1_2 32;
(*   %shl.i277.1.2 = shl i64 %add10.i275.1.2, 32 *)
shls discard_494 v_shl_i277_1_2 v_add10_i275_1_2 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_1_2 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_1_2 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.1.2 = or i64 %shl.i277.1.2, %and6.i270.1.2 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_1_2 v_shl_i277_1_2 v_and6_i270_1_2;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_1_2 v_shl_i277_1_2 + v_and6_i270_1_2;
assume eq v_xor68_i278_1_2 v_shl_i277_1_2 + v_and6_i270_1_2 && true;
(*   %shr13.i279.1.2 = lshr i64 %mul4.i268.1.2, 32 *)
(* You may need to modify here *)
split v_shr13_i279_1_2 tmp_to_be_used v_mul4_i268_1_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_1_2;
assume eq tmp_to_be_used v_and8_i272_1_2 && true;
(*   %shr14.i280.1.2 = lshr i64 %mul3.i267.1.2, 32 *)
(* You may need to modify here *)
split v_shr14_i280_1_2 tmp_to_be_used v_mul3_i267_1_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_1_2;
assume eq tmp_to_be_used v_and9_i273_1_2 && true;
(*   %and15.i281.1.2 = and i64 %mul5.i269.1.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_1_2 v_mul5_i269_1_2 (0xFFFFFFFF)@uint64;
(*   %add16.i282.1.2 = add nuw nsw i64 %shr13.i279.1.2, %shr14.i280.1.2 *)
adds discard_495 v_add16_i282_1_2 v_shr13_i279_1_2 v_shr14_i280_1_2;
(* Heuristics applied. *)
assert true && eq discard_495 0@1;
assume eq discard_495 0 && true;
(*   %add17.i283.1.2 = add nuw nsw i64 %add16.i282.1.2, %and15.i281.1.2 *)
adds discard_496 v_add17_i283_1_2 v_add16_i282_1_2 v_and15_i281_1_2;
(* Heuristics applied. *)
assert true && eq discard_496 0@1;
assume eq discard_496 0 && true;
(*   %add18.i284.1.2 = add nuw nsw i64 %add17.i283.1.2, %shr11.i276.1.2 *)
adds discard_497 v_add18_i284_1_2 v_add17_i283_1_2 v_shr11_i276_1_2;
(* Heuristics applied. *)
assert true && eq discard_497 0@1;
assume eq discard_497 0 && true;
(*   %and19.i285.1.2 = and i64 %add18.i284.1.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_1_2 v_add18_i284_1_2 (0xFFFFFFFF)@uint64;
(*   %and21.i287.1.2 = and i64 %add18.i284.1.2, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_1_2 v_add18_i284_1_2 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_1_2 v_and21_i287_1_2 + v_and19_i285_1_2;
assume eq v_add18_i284_1_2 v_and21_i287_1_2 + v_and19_i285_1_2 && true;
(*   %and22.i288.1.2 = and i64 %mul5.i269.1.2, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_1_2 v_mul5_i269_1_2 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_1_2 v_and22_i288_1_2 + v_and15_i281_1_2;
assume eq v_mul5_i269_1_2 v_and22_i288_1_2 + v_and15_i281_1_2 && true;
(*   %add23.i289.1.2 = add i64 %and21.i287.1.2, %and22.i288.1.2 *)
adds discard_498 v_add23_i289_1_2 v_and21_i287_1_2 v_and22_i288_1_2;
(* Heuristics applied. *)
assert true && eq discard_498 0@1;
assume eq discard_498 0 && true;
(*   %xor2569.i290.1.2 = or i64 %add23.i289.1.2, %and19.i285.1.2 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_1_2 v_add23_i289_1_2 v_and19_i285_1_2;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_1_2 v_add23_i289_1_2 + v_and19_i285_1_2;
assume eq v_xor2569_i290_1_2 v_add23_i289_1_2 + v_and19_i285_1_2 && true;
(*   %add82.1.2 = add i64 %xor68.i278.1.2, %add82.1.1 *)
adds discard_499 v_add82_1_2 v_xor68_i278_1_2 v_add82_1_1;
(*   %xor.i256.1.2 = xor i64 %add82.1.2, %shl.i277.1.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_1_2 v_add82_1_2 v_shl_i277_1_2;
(*   %xor1.i257.1.2 = xor i64 %shl.i277.1.2, %add82.1.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_1_2 v_shl_i277_1_2 v_add82_1_1;
(*   %or.i258.1.2 = or i64 %xor.i256.1.2, %xor1.i257.1.2 *)
(* You may need to modify here *)
or uint64 v_or_i258_1_2 v_xor_i256_1_2 v_xor1_i257_1_2;
(*   %xor2.i259.1.2 = xor i64 %or.i258.1.2, %add82.1.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_1_2 v_or_i258_1_2 v_add82_1_2;
(*   %shr.i260.1.2 = lshr i64 %xor2.i259.1.2, 63 *)
(* You may need to modify here *)
split v_shr_i260_1_2 tmp_to_be_used v_xor2_i259_1_2 63;
(* generated by python *)
assert true && limbs 64 [v_add82_1_2, v_shr_i260_1_2] = limbs 64 [v_xor68_i278_1_2, 0@64] + limbs 64 [v_add82_1_1, 0@64];
assume limbs 64 [v_add82_1_2, v_shr_i260_1_2] = limbs 64 [v_xor68_i278_1_2, 0] + limbs 64 [v_add82_1_1, 0] && true;
(*   %add89.1.2 = add i64 %shr.i260.1.2, %xor2569.i290.1.2 *)
adds discard_500 v_add89_1_2 v_shr_i260_1_2 v_xor2569_i290_1_2;
(* Heuristics applied. *)
assert true && eq discard_500 0@1;
assume eq discard_500 0 && true;
(*   %add90.1.2 = add i64 %add89.1.2, %add90.1.1 *)
adds discard_501 v_add90_1_2 v_add89_1_2 v_add90_1_1;
(* Heuristics applied. *)
assert true && eq discard_501 0@1;
assume eq discard_501 0 && true;
(*   %156 = xor i64 %add89.1.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v156 v_add89_1_2 (0x8000000000000000)@uint64;
(*   %xor2.i253.1.2 = and i64 %156, %add23.i289.1.2 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_1_2 v156 v_add23_i289_1_2;
(*   %xor.i244.1.2 = xor i64 %add90.1.2, %add89.1.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_1_2 v_add90_1_2 v_add89_1_2;
(*   %xor1.i245.1.2 = xor i64 %add89.1.2, %add90.1.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_1_2 v_add89_1_2 v_add90_1_1;
(*   %or.i246.1.2 = or i64 %xor.i244.1.2, %xor1.i245.1.2 *)
(* You may need to modify here *)
or uint64 v_or_i246_1_2 v_xor_i244_1_2 v_xor1_i245_1_2;
(*   %xor2.i247.1.2 = xor i64 %or.i246.1.2, %add90.1.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_1_2 v_or_i246_1_2 v_add90_1_2;
(*   %shr.i254326.1.2 = or i64 %xor2.i247.1.2, %xor2.i253.1.2 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_1_2 v_xor2_i247_1_2 v_xor2_i253_1_2;
(*   %or94325.1.2 = lshr i64 %shr.i254326.1.2, 63 *)
(* You may need to modify here *)
split v_or94325_1_2 tmp_to_be_used v_shr_i254326_1_2 63;
(* generated by python *)
assert true && limbs 64 [v_add90_1_2, v_or94325_1_2] = limbs 64 [v_shr_i260_1_2, 0@64] + limbs 64 [v_xor2569_i290_1_2, 0@64] + limbs 64 [v_add90_1_1, 0@64];
assume limbs 64 [v_add90_1_2, v_or94325_1_2] = limbs 64 [v_shr_i260_1_2, 0] + limbs 64 [v_xor2569_i290_1_2, 0] + limbs 64 [v_add90_1_1, 0] && true;
(*   %add96.1.2 = add nsw i64 %or94325.1.2, %add96.1.1 *)
adds discard_502 v_add96_1_2 v_or94325_1_2 v_add96_1_1;
(* Heuristics applied. *)
assert true && eq discard_502 0@1;
assume eq discard_502 0 && true;
(*   %arrayidx74.1.3 = getelementptr inbounds i64, i64* %mc, i64 5 *)
(*   %157 = load i64, i64* %arrayidx74.1.3, align 8, !tbaa !3 *)
mov v157 mc_40;
(*   %158 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 8), align 16, !tbaa !3 *)
mov v158 p751p1_64;
(*   %and.i262.1.3 = and i64 %157, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_1_3 v157 (0xFFFFFFFF)@uint64;
(*   %shr.i263.1.3 = lshr i64 %157, 32 *)
(* You may need to modify here *)
split v_shr_i263_1_3 tmp_to_be_used v157 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_1_3;
assume eq tmp_to_be_used v_and_i262_1_3 && true;
(*   %and1.i264.1.3 = and i64 %158, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_1_3 v158 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.1.3 = lshr i64 %158, 32 *)
(* You may need to modify here *)
split v_shr2_i265_1_3 tmp_to_be_used v158 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_1_3;
assume eq tmp_to_be_used v_and1_i264_1_3 && true;
(*   %mul.i266.1.3 = mul nuw i64 %and1.i264.1.3, %and.i262.1.3 *)
mul v_mul_i266_1_3 v_and1_i264_1_3 v_and_i262_1_3;
(*   %mul3.i267.1.3 = mul nuw i64 %shr2.i265.1.3, %and.i262.1.3 *)
mul v_mul3_i267_1_3 v_shr2_i265_1_3 v_and_i262_1_3;
(*   %mul4.i268.1.3 = mul nuw i64 %and1.i264.1.3, %shr.i263.1.3 *)
mul v_mul4_i268_1_3 v_and1_i264_1_3 v_shr_i263_1_3;
(*   %mul5.i269.1.3 = mul nuw i64 %shr2.i265.1.3, %shr.i263.1.3 *)
mul v_mul5_i269_1_3 v_shr2_i265_1_3 v_shr_i263_1_3;
(*   %and6.i270.1.3 = and i64 %mul.i266.1.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_1_3 v_mul_i266_1_3 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.1.3 = lshr i64 %mul.i266.1.3, 32 *)
(* You may need to modify here *)
split v_shr7_i271_1_3 tmp_to_be_used v_mul_i266_1_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_1_3;
assume eq tmp_to_be_used v_and6_i270_1_3 && true;
(*   %and8.i272.1.3 = and i64 %mul4.i268.1.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_1_3 v_mul4_i268_1_3 (0xFFFFFFFF)@uint64;
(*   %and9.i273.1.3 = and i64 %mul3.i267.1.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_1_3 v_mul3_i267_1_3 (0xFFFFFFFF)@uint64;
(*   %add.i274.1.3 = add nuw nsw i64 %shr7.i271.1.3, %and8.i272.1.3 *)
adds discard_503 v_add_i274_1_3 v_shr7_i271_1_3 v_and8_i272_1_3;
(* Heuristics applied. *)
assert true && eq discard_503 0@1;
assume eq discard_503 0 && true;
(*   %add10.i275.1.3 = add nuw nsw i64 %add.i274.1.3, %and9.i273.1.3 *)
adds discard_504 v_add10_i275_1_3 v_add_i274_1_3 v_and9_i273_1_3;
(* Heuristics applied. *)
assert true && eq discard_504 0@1;
assume eq discard_504 0 && true;
(*   %shr11.i276.1.3 = lshr i64 %add10.i275.1.3, 32 *)
(* You may need to modify here *)
split v_shr11_i276_1_3 tmp_to_be_used v_add10_i275_1_3 32;
(*   %shl.i277.1.3 = shl i64 %add10.i275.1.3, 32 *)
shls discard_505 v_shl_i277_1_3 v_add10_i275_1_3 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_1_3 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_1_3 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.1.3 = or i64 %shl.i277.1.3, %and6.i270.1.3 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_1_3 v_shl_i277_1_3 v_and6_i270_1_3;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_1_3 v_shl_i277_1_3 + v_and6_i270_1_3;
assume eq v_xor68_i278_1_3 v_shl_i277_1_3 + v_and6_i270_1_3 && true;
(*   %shr13.i279.1.3 = lshr i64 %mul4.i268.1.3, 32 *)
(* You may need to modify here *)
split v_shr13_i279_1_3 tmp_to_be_used v_mul4_i268_1_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_1_3;
assume eq tmp_to_be_used v_and8_i272_1_3 && true;
(*   %shr14.i280.1.3 = lshr i64 %mul3.i267.1.3, 32 *)
(* You may need to modify here *)
split v_shr14_i280_1_3 tmp_to_be_used v_mul3_i267_1_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_1_3;
assume eq tmp_to_be_used v_and9_i273_1_3 && true;
(*   %and15.i281.1.3 = and i64 %mul5.i269.1.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_1_3 v_mul5_i269_1_3 (0xFFFFFFFF)@uint64;
(*   %add16.i282.1.3 = add nuw nsw i64 %shr13.i279.1.3, %shr14.i280.1.3 *)
adds discard_506 v_add16_i282_1_3 v_shr13_i279_1_3 v_shr14_i280_1_3;
(* Heuristics applied. *)
assert true && eq discard_506 0@1;
assume eq discard_506 0 && true;
(*   %add17.i283.1.3 = add nuw nsw i64 %add16.i282.1.3, %and15.i281.1.3 *)
adds discard_507 v_add17_i283_1_3 v_add16_i282_1_3 v_and15_i281_1_3;
(* Heuristics applied. *)
assert true && eq discard_507 0@1;
assume eq discard_507 0 && true;
(*   %add18.i284.1.3 = add nuw nsw i64 %add17.i283.1.3, %shr11.i276.1.3 *)
adds discard_508 v_add18_i284_1_3 v_add17_i283_1_3 v_shr11_i276_1_3;
(* Heuristics applied. *)
assert true && eq discard_508 0@1;
assume eq discard_508 0 && true;
(*   %and19.i285.1.3 = and i64 %add18.i284.1.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_1_3 v_add18_i284_1_3 (0xFFFFFFFF)@uint64;
(*   %and21.i287.1.3 = and i64 %add18.i284.1.3, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_1_3 v_add18_i284_1_3 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_1_3 v_and21_i287_1_3 + v_and19_i285_1_3;
assume eq v_add18_i284_1_3 v_and21_i287_1_3 + v_and19_i285_1_3 && true;
(*   %and22.i288.1.3 = and i64 %mul5.i269.1.3, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_1_3 v_mul5_i269_1_3 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_1_3 v_and22_i288_1_3 + v_and15_i281_1_3;
assume eq v_mul5_i269_1_3 v_and22_i288_1_3 + v_and15_i281_1_3 && true;
(*   %add23.i289.1.3 = add i64 %and21.i287.1.3, %and22.i288.1.3 *)
adds discard_509 v_add23_i289_1_3 v_and21_i287_1_3 v_and22_i288_1_3;
(* Heuristics applied. *)
assert true && eq discard_509 0@1;
assume eq discard_509 0 && true;
(*   %xor2569.i290.1.3 = or i64 %add23.i289.1.3, %and19.i285.1.3 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_1_3 v_add23_i289_1_3 v_and19_i285_1_3;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_1_3 v_add23_i289_1_3 + v_and19_i285_1_3;
assume eq v_xor2569_i290_1_3 v_add23_i289_1_3 + v_and19_i285_1_3 && true;
(*   %add82.1.3 = add i64 %xor68.i278.1.3, %add82.1.2 *)
adds discard_510 v_add82_1_3 v_xor68_i278_1_3 v_add82_1_2;
(*   %xor.i256.1.3 = xor i64 %add82.1.3, %shl.i277.1.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_1_3 v_add82_1_3 v_shl_i277_1_3;
(*   %xor1.i257.1.3 = xor i64 %shl.i277.1.3, %add82.1.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_1_3 v_shl_i277_1_3 v_add82_1_2;
(*   %or.i258.1.3 = or i64 %xor.i256.1.3, %xor1.i257.1.3 *)
(* You may need to modify here *)
or uint64 v_or_i258_1_3 v_xor_i256_1_3 v_xor1_i257_1_3;
(*   %xor2.i259.1.3 = xor i64 %or.i258.1.3, %add82.1.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_1_3 v_or_i258_1_3 v_add82_1_3;
(*   %shr.i260.1.3 = lshr i64 %xor2.i259.1.3, 63 *)
(* You may need to modify here *)
split v_shr_i260_1_3 tmp_to_be_used v_xor2_i259_1_3 63;
(* generated by python *)
assert true && limbs 64 [v_add82_1_3, v_shr_i260_1_3] = limbs 64 [v_xor68_i278_1_3, 0@64] + limbs 64 [v_add82_1_2, 0@64];
assume limbs 64 [v_add82_1_3, v_shr_i260_1_3] = limbs 64 [v_xor68_i278_1_3, 0] + limbs 64 [v_add82_1_2, 0] && true;
(*   %add89.1.3 = add i64 %shr.i260.1.3, %xor2569.i290.1.3 *)
adds discard_511 v_add89_1_3 v_shr_i260_1_3 v_xor2569_i290_1_3;
(* Heuristics applied. *)
assert true && eq discard_511 0@1;
assume eq discard_511 0 && true;
(*   %add90.1.3 = add i64 %add89.1.3, %add90.1.2 *)
adds discard_512 v_add90_1_3 v_add89_1_3 v_add90_1_2;
(* Heuristics applied. *)
assert true && eq discard_512 0@1;
assume eq discard_512 0 && true;
(*   %159 = xor i64 %add89.1.3, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v159 v_add89_1_3 (0x8000000000000000)@uint64;
(*   %xor2.i253.1.3 = and i64 %159, %add23.i289.1.3 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_1_3 v159 v_add23_i289_1_3;
(*   %xor.i244.1.3 = xor i64 %add90.1.3, %add89.1.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_1_3 v_add90_1_3 v_add89_1_3;
(*   %xor1.i245.1.3 = xor i64 %add89.1.3, %add90.1.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_1_3 v_add89_1_3 v_add90_1_2;
(*   %or.i246.1.3 = or i64 %xor.i244.1.3, %xor1.i245.1.3 *)
(* You may need to modify here *)
or uint64 v_or_i246_1_3 v_xor_i244_1_3 v_xor1_i245_1_3;
(*   %xor2.i247.1.3 = xor i64 %or.i246.1.3, %add90.1.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_1_3 v_or_i246_1_3 v_add90_1_3;
(*   %shr.i254326.1.3 = or i64 %xor2.i247.1.3, %xor2.i253.1.3 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_1_3 v_xor2_i247_1_3 v_xor2_i253_1_3;
(*   %or94325.1.3 = lshr i64 %shr.i254326.1.3, 63 *)
(* You may need to modify here *)
split v_or94325_1_3 tmp_to_be_used v_shr_i254326_1_3 63;
(* generated by python *)
assert true && limbs 64 [v_add90_1_3, v_or94325_1_3] = limbs 64 [v_shr_i260_1_3, 0@64] + limbs 64 [v_xor2569_i290_1_3, 0@64] + limbs 64 [v_add90_1_2, 0@64];
assume limbs 64 [v_add90_1_3, v_or94325_1_3] = limbs 64 [v_shr_i260_1_3, 0] + limbs 64 [v_xor2569_i290_1_3, 0] + limbs 64 [v_add90_1_2, 0] && true;
(*   %add96.1.3 = add nsw i64 %or94325.1.3, %add96.1.2 *)
adds discard_513 v_add96_1_3 v_or94325_1_3 v_add96_1_2;
(* Heuristics applied. *)
assert true && eq discard_513 0@1;
assume eq discard_513 0 && true;
(*   %arrayidx74.1.4 = getelementptr inbounds i64, i64* %mc, i64 6 *)
(*   %160 = load i64, i64* %arrayidx74.1.4, align 8, !tbaa !3 *)
mov v160 mc_48;
(*   %161 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 7), align 8, !tbaa !3 *)
mov v161 p751p1_56;
(*   %and.i262.1.4 = and i64 %160, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_1_4 v160 (0xFFFFFFFF)@uint64;
(*   %shr.i263.1.4 = lshr i64 %160, 32 *)
(* You may need to modify here *)
split v_shr_i263_1_4 tmp_to_be_used v160 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_1_4;
assume eq tmp_to_be_used v_and_i262_1_4 && true;
(*   %and1.i264.1.4 = and i64 %161, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_1_4 v161 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.1.4 = lshr i64 %161, 32 *)
(* You may need to modify here *)
split v_shr2_i265_1_4 tmp_to_be_used v161 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_1_4;
assume eq tmp_to_be_used v_and1_i264_1_4 && true;
(*   %mul.i266.1.4 = mul nuw i64 %and1.i264.1.4, %and.i262.1.4 *)
mul v_mul_i266_1_4 v_and1_i264_1_4 v_and_i262_1_4;
(*   %mul3.i267.1.4 = mul nuw i64 %shr2.i265.1.4, %and.i262.1.4 *)
mul v_mul3_i267_1_4 v_shr2_i265_1_4 v_and_i262_1_4;
(*   %mul4.i268.1.4 = mul nuw i64 %and1.i264.1.4, %shr.i263.1.4 *)
mul v_mul4_i268_1_4 v_and1_i264_1_4 v_shr_i263_1_4;
(*   %mul5.i269.1.4 = mul nuw i64 %shr2.i265.1.4, %shr.i263.1.4 *)
mul v_mul5_i269_1_4 v_shr2_i265_1_4 v_shr_i263_1_4;
(*   %and6.i270.1.4 = and i64 %mul.i266.1.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_1_4 v_mul_i266_1_4 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.1.4 = lshr i64 %mul.i266.1.4, 32 *)
(* You may need to modify here *)
split v_shr7_i271_1_4 tmp_to_be_used v_mul_i266_1_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_1_4;
assume eq tmp_to_be_used v_and6_i270_1_4 && true;
(*   %and8.i272.1.4 = and i64 %mul4.i268.1.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_1_4 v_mul4_i268_1_4 (0xFFFFFFFF)@uint64;
(*   %and9.i273.1.4 = and i64 %mul3.i267.1.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_1_4 v_mul3_i267_1_4 (0xFFFFFFFF)@uint64;
(*   %add.i274.1.4 = add nuw nsw i64 %shr7.i271.1.4, %and8.i272.1.4 *)
adds discard_514 v_add_i274_1_4 v_shr7_i271_1_4 v_and8_i272_1_4;
(* Heuristics applied. *)
assert true && eq discard_514 0@1;
assume eq discard_514 0 && true;
(*   %add10.i275.1.4 = add nuw nsw i64 %add.i274.1.4, %and9.i273.1.4 *)
adds discard_515 v_add10_i275_1_4 v_add_i274_1_4 v_and9_i273_1_4;
(* Heuristics applied. *)
assert true && eq discard_515 0@1;
assume eq discard_515 0 && true;
(*   %shr11.i276.1.4 = lshr i64 %add10.i275.1.4, 32 *)
(* You may need to modify here *)
split v_shr11_i276_1_4 tmp_to_be_used v_add10_i275_1_4 32;
(*   %shl.i277.1.4 = shl i64 %add10.i275.1.4, 32 *)
shls discard_516 v_shl_i277_1_4 v_add10_i275_1_4 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_1_4 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_1_4 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.1.4 = or i64 %shl.i277.1.4, %and6.i270.1.4 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_1_4 v_shl_i277_1_4 v_and6_i270_1_4;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_1_4 v_shl_i277_1_4 + v_and6_i270_1_4;
assume eq v_xor68_i278_1_4 v_shl_i277_1_4 + v_and6_i270_1_4 && true;
(*   %shr13.i279.1.4 = lshr i64 %mul4.i268.1.4, 32 *)
(* You may need to modify here *)
split v_shr13_i279_1_4 tmp_to_be_used v_mul4_i268_1_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_1_4;
assume eq tmp_to_be_used v_and8_i272_1_4 && true;
(*   %shr14.i280.1.4 = lshr i64 %mul3.i267.1.4, 32 *)
(* You may need to modify here *)
split v_shr14_i280_1_4 tmp_to_be_used v_mul3_i267_1_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_1_4;
assume eq tmp_to_be_used v_and9_i273_1_4 && true;
(*   %and15.i281.1.4 = and i64 %mul5.i269.1.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_1_4 v_mul5_i269_1_4 (0xFFFFFFFF)@uint64;
(*   %add16.i282.1.4 = add nuw nsw i64 %shr13.i279.1.4, %shr14.i280.1.4 *)
adds discard_517 v_add16_i282_1_4 v_shr13_i279_1_4 v_shr14_i280_1_4;
(* Heuristics applied. *)
assert true && eq discard_517 0@1;
assume eq discard_517 0 && true;
(*   %add17.i283.1.4 = add nuw nsw i64 %add16.i282.1.4, %and15.i281.1.4 *)
adds discard_518 v_add17_i283_1_4 v_add16_i282_1_4 v_and15_i281_1_4;
(* Heuristics applied. *)
assert true && eq discard_518 0@1;
assume eq discard_518 0 && true;
(*   %add18.i284.1.4 = add nuw nsw i64 %add17.i283.1.4, %shr11.i276.1.4 *)
adds discard_519 v_add18_i284_1_4 v_add17_i283_1_4 v_shr11_i276_1_4;
(* Heuristics applied. *)
assert true && eq discard_519 0@1;
assume eq discard_519 0 && true;
(*   %and19.i285.1.4 = and i64 %add18.i284.1.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_1_4 v_add18_i284_1_4 (0xFFFFFFFF)@uint64;
(*   %and21.i287.1.4 = and i64 %add18.i284.1.4, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_1_4 v_add18_i284_1_4 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_1_4 v_and21_i287_1_4 + v_and19_i285_1_4;
assume eq v_add18_i284_1_4 v_and21_i287_1_4 + v_and19_i285_1_4 && true;
(*   %and22.i288.1.4 = and i64 %mul5.i269.1.4, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_1_4 v_mul5_i269_1_4 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_1_4 v_and22_i288_1_4 + v_and15_i281_1_4;
assume eq v_mul5_i269_1_4 v_and22_i288_1_4 + v_and15_i281_1_4 && true;
(*   %add23.i289.1.4 = add i64 %and21.i287.1.4, %and22.i288.1.4 *)
adds discard_520 v_add23_i289_1_4 v_and21_i287_1_4 v_and22_i288_1_4;
(* Heuristics applied. *)
assert true && eq discard_520 0@1;
assume eq discard_520 0 && true;
(*   %xor2569.i290.1.4 = or i64 %add23.i289.1.4, %and19.i285.1.4 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_1_4 v_add23_i289_1_4 v_and19_i285_1_4;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_1_4 v_add23_i289_1_4 + v_and19_i285_1_4;
assume eq v_xor2569_i290_1_4 v_add23_i289_1_4 + v_and19_i285_1_4 && true;
(*   %add82.1.4 = add i64 %xor68.i278.1.4, %add82.1.3 *)
adds discard_521 v_add82_1_4 v_xor68_i278_1_4 v_add82_1_3;
(*   %xor.i256.1.4 = xor i64 %add82.1.4, %shl.i277.1.4 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_1_4 v_add82_1_4 v_shl_i277_1_4;
(*   %xor1.i257.1.4 = xor i64 %shl.i277.1.4, %add82.1.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_1_4 v_shl_i277_1_4 v_add82_1_3;
(*   %or.i258.1.4 = or i64 %xor.i256.1.4, %xor1.i257.1.4 *)
(* You may need to modify here *)
or uint64 v_or_i258_1_4 v_xor_i256_1_4 v_xor1_i257_1_4;
(*   %xor2.i259.1.4 = xor i64 %or.i258.1.4, %add82.1.4 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_1_4 v_or_i258_1_4 v_add82_1_4;
(*   %shr.i260.1.4 = lshr i64 %xor2.i259.1.4, 63 *)
(* You may need to modify here *)
split v_shr_i260_1_4 tmp_to_be_used v_xor2_i259_1_4 63;
(* generated by python *)
assert true && limbs 64 [v_add82_1_4, v_shr_i260_1_4] = limbs 64 [v_xor68_i278_1_4, 0@64] + limbs 64 [v_add82_1_3, 0@64];
assume limbs 64 [v_add82_1_4, v_shr_i260_1_4] = limbs 64 [v_xor68_i278_1_4, 0] + limbs 64 [v_add82_1_3, 0] && true;
(*   %add89.1.4 = add i64 %shr.i260.1.4, %xor2569.i290.1.4 *)
adds discard_522 v_add89_1_4 v_shr_i260_1_4 v_xor2569_i290_1_4;
(* Heuristics applied. *)
assert true && eq discard_522 0@1;
assume eq discard_522 0 && true;
(*   %add90.1.4 = add i64 %add89.1.4, %add90.1.3 *)
adds discard_523 v_add90_1_4 v_add89_1_4 v_add90_1_3;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_523 0@1; *)
(* assume eq discard_523 0 && true; *)
(*   %162 = xor i64 %add89.1.4, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v162 v_add89_1_4 (0x8000000000000000)@uint64;
(*   %xor2.i253.1.4 = and i64 %162, %add23.i289.1.4 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_1_4 v162 v_add23_i289_1_4;
(*   %xor.i244.1.4 = xor i64 %add90.1.4, %add89.1.4 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_1_4 v_add90_1_4 v_add89_1_4;
(*   %xor1.i245.1.4 = xor i64 %add89.1.4, %add90.1.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_1_4 v_add89_1_4 v_add90_1_3;
(*   %or.i246.1.4 = or i64 %xor.i244.1.4, %xor1.i245.1.4 *)
(* You may need to modify here *)
or uint64 v_or_i246_1_4 v_xor_i244_1_4 v_xor1_i245_1_4;
(*   %xor2.i247.1.4 = xor i64 %or.i246.1.4, %add90.1.4 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_1_4 v_or_i246_1_4 v_add90_1_4;
(*   %shr.i254326.1.4 = or i64 %xor2.i247.1.4, %xor2.i253.1.4 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_1_4 v_xor2_i247_1_4 v_xor2_i253_1_4;
(*   %or94325.1.4 = lshr i64 %shr.i254326.1.4, 63 *)
(* You may need to modify here *)
split v_or94325_1_4 tmp_to_be_used v_shr_i254326_1_4 63;
(* generated by python *)
assert true && limbs 64 [v_add90_1_4, v_or94325_1_4] = limbs 64 [v_shr_i260_1_4, 0@64] + limbs 64 [v_xor2569_i290_1_4, 0@64] + limbs 64 [v_add90_1_3, 0@64];
assume limbs 64 [v_add90_1_4, v_or94325_1_4] = limbs 64 [v_shr_i260_1_4, 0] + limbs 64 [v_xor2569_i290_1_4, 0] + limbs 64 [v_add90_1_3, 0] && true;
(*   %add96.1.4 = add i64 %or94325.1.4, %add96.1.3 *)
adds discard_524 v_add96_1_4 v_or94325_1_4 v_add96_1_3;
(* Heuristics applied. *)
assert true && eq discard_524 0@1;
assume eq discard_524 0 && true;
(*   %arrayidx74.1.5 = getelementptr inbounds i64, i64* %mc, i64 7 *)
(*   %163 = load i64, i64* %arrayidx74.1.5, align 8, !tbaa !3 *)
mov v163 mc_56;
(*   %164 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 6), align 16, !tbaa !3 *)
mov v164 p751p1_48;
(*   %and.i262.1.5 = and i64 %163, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_1_5 v163 (0xFFFFFFFF)@uint64;
(*   %shr.i263.1.5 = lshr i64 %163, 32 *)
(* You may need to modify here *)
split v_shr_i263_1_5 tmp_to_be_used v163 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_1_5;
assume eq tmp_to_be_used v_and_i262_1_5 && true;
(*   %and1.i264.1.5 = and i64 %164, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_1_5 v164 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.1.5 = lshr i64 %164, 32 *)
(* You may need to modify here *)
split v_shr2_i265_1_5 tmp_to_be_used v164 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_1_5;
assume eq tmp_to_be_used v_and1_i264_1_5 && true;
(*   %mul.i266.1.5 = mul nuw i64 %and1.i264.1.5, %and.i262.1.5 *)
mul v_mul_i266_1_5 v_and1_i264_1_5 v_and_i262_1_5;
(*   %mul3.i267.1.5 = mul nuw i64 %shr2.i265.1.5, %and.i262.1.5 *)
mul v_mul3_i267_1_5 v_shr2_i265_1_5 v_and_i262_1_5;
(*   %mul4.i268.1.5 = mul nuw i64 %and1.i264.1.5, %shr.i263.1.5 *)
mul v_mul4_i268_1_5 v_and1_i264_1_5 v_shr_i263_1_5;
(*   %mul5.i269.1.5 = mul nuw i64 %shr2.i265.1.5, %shr.i263.1.5 *)
mul v_mul5_i269_1_5 v_shr2_i265_1_5 v_shr_i263_1_5;
(*   %and6.i270.1.5 = and i64 %mul.i266.1.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_1_5 v_mul_i266_1_5 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.1.5 = lshr i64 %mul.i266.1.5, 32 *)
(* You may need to modify here *)
split v_shr7_i271_1_5 tmp_to_be_used v_mul_i266_1_5 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_1_5;
assume eq tmp_to_be_used v_and6_i270_1_5 && true;
(*   %and8.i272.1.5 = and i64 %mul4.i268.1.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_1_5 v_mul4_i268_1_5 (0xFFFFFFFF)@uint64;
(*   %and9.i273.1.5 = and i64 %mul3.i267.1.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_1_5 v_mul3_i267_1_5 (0xFFFFFFFF)@uint64;
(*   %add.i274.1.5 = add nuw nsw i64 %shr7.i271.1.5, %and8.i272.1.5 *)
adds discard_525 v_add_i274_1_5 v_shr7_i271_1_5 v_and8_i272_1_5;
(* Heuristics applied. *)
assert true && eq discard_525 0@1;
assume eq discard_525 0 && true;
(*   %add10.i275.1.5 = add nuw nsw i64 %add.i274.1.5, %and9.i273.1.5 *)
adds discard_526 v_add10_i275_1_5 v_add_i274_1_5 v_and9_i273_1_5;
(* Heuristics applied. *)
assert true && eq discard_526 0@1;
assume eq discard_526 0 && true;
(*   %shr11.i276.1.5 = lshr i64 %add10.i275.1.5, 32 *)
(* You may need to modify here *)
split v_shr11_i276_1_5 tmp_to_be_used v_add10_i275_1_5 32;
(*   %shl.i277.1.5 = shl i64 %add10.i275.1.5, 32 *)
shls discard_527 v_shl_i277_1_5 v_add10_i275_1_5 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_1_5 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_1_5 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.1.5 = or i64 %shl.i277.1.5, %and6.i270.1.5 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_1_5 v_shl_i277_1_5 v_and6_i270_1_5;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_1_5 v_shl_i277_1_5 + v_and6_i270_1_5;
assume eq v_xor68_i278_1_5 v_shl_i277_1_5 + v_and6_i270_1_5 && true;
(*   %shr13.i279.1.5 = lshr i64 %mul4.i268.1.5, 32 *)
(* You may need to modify here *)
split v_shr13_i279_1_5 tmp_to_be_used v_mul4_i268_1_5 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_1_5;
assume eq tmp_to_be_used v_and8_i272_1_5 && true;
(*   %shr14.i280.1.5 = lshr i64 %mul3.i267.1.5, 32 *)
(* You may need to modify here *)
split v_shr14_i280_1_5 tmp_to_be_used v_mul3_i267_1_5 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_1_5;
assume eq tmp_to_be_used v_and9_i273_1_5 && true;
(*   %and15.i281.1.5 = and i64 %mul5.i269.1.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_1_5 v_mul5_i269_1_5 (0xFFFFFFFF)@uint64;
(*   %add16.i282.1.5 = add nuw nsw i64 %shr13.i279.1.5, %shr14.i280.1.5 *)
adds discard_528 v_add16_i282_1_5 v_shr13_i279_1_5 v_shr14_i280_1_5;
(* Heuristics applied. *)
assert true && eq discard_528 0@1;
assume eq discard_528 0 && true;
(*   %add17.i283.1.5 = add nuw nsw i64 %add16.i282.1.5, %and15.i281.1.5 *)
adds discard_529 v_add17_i283_1_5 v_add16_i282_1_5 v_and15_i281_1_5;
(* Heuristics applied. *)
assert true && eq discard_529 0@1;
assume eq discard_529 0 && true;
(*   %add18.i284.1.5 = add nuw nsw i64 %add17.i283.1.5, %shr11.i276.1.5 *)
adds discard_530 v_add18_i284_1_5 v_add17_i283_1_5 v_shr11_i276_1_5;
(* Heuristics applied. *)
assert true && eq discard_530 0@1;
assume eq discard_530 0 && true;
(*   %and19.i285.1.5 = and i64 %add18.i284.1.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_1_5 v_add18_i284_1_5 (0xFFFFFFFF)@uint64;
(*   %and21.i287.1.5 = and i64 %add18.i284.1.5, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_1_5 v_add18_i284_1_5 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_1_5 v_and21_i287_1_5 + v_and19_i285_1_5;
assume eq v_add18_i284_1_5 v_and21_i287_1_5 + v_and19_i285_1_5 && true;
(*   %and22.i288.1.5 = and i64 %mul5.i269.1.5, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_1_5 v_mul5_i269_1_5 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_1_5 v_and22_i288_1_5 + v_and15_i281_1_5;
assume eq v_mul5_i269_1_5 v_and22_i288_1_5 + v_and15_i281_1_5 && true;
(*   %add23.i289.1.5 = add i64 %and21.i287.1.5, %and22.i288.1.5 *)
adds discard_531 v_add23_i289_1_5 v_and21_i287_1_5 v_and22_i288_1_5;
(* Heuristics applied. *)
assert true && eq discard_531 0@1;
assume eq discard_531 0 && true;
(*   %xor2569.i290.1.5 = or i64 %add23.i289.1.5, %and19.i285.1.5 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_1_5 v_add23_i289_1_5 v_and19_i285_1_5;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_1_5 v_add23_i289_1_5 + v_and19_i285_1_5;
assume eq v_xor2569_i290_1_5 v_add23_i289_1_5 + v_and19_i285_1_5 && true;
(*   %add82.1.5 = add i64 %xor68.i278.1.5, %add82.1.4 *)
adds discard_532 v_add82_1_5 v_xor68_i278_1_5 v_add82_1_4;
(*   %xor.i256.1.5 = xor i64 %add82.1.5, %shl.i277.1.5 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_1_5 v_add82_1_5 v_shl_i277_1_5;
(*   %xor1.i257.1.5 = xor i64 %shl.i277.1.5, %add82.1.4 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_1_5 v_shl_i277_1_5 v_add82_1_4;
(*   %or.i258.1.5 = or i64 %xor.i256.1.5, %xor1.i257.1.5 *)
(* You may need to modify here *)
or uint64 v_or_i258_1_5 v_xor_i256_1_5 v_xor1_i257_1_5;
(*   %xor2.i259.1.5 = xor i64 %or.i258.1.5, %add82.1.5 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_1_5 v_or_i258_1_5 v_add82_1_5;
(*   %shr.i260.1.5 = lshr i64 %xor2.i259.1.5, 63 *)
(* You may need to modify here *)
split v_shr_i260_1_5 tmp_to_be_used v_xor2_i259_1_5 63;
(* generated by python *)
assert true && limbs 64 [v_add82_1_5, v_shr_i260_1_5] = limbs 64 [v_xor68_i278_1_5, 0@64] + limbs 64 [v_add82_1_4, 0@64];
assume limbs 64 [v_add82_1_5, v_shr_i260_1_5] = limbs 64 [v_xor68_i278_1_5, 0] + limbs 64 [v_add82_1_4, 0] && true;
(*   %add89.1.5 = add i64 %shr.i260.1.5, %xor2569.i290.1.5 *)
adds discard_533 v_add89_1_5 v_shr_i260_1_5 v_xor2569_i290_1_5;
(* Heuristics applied. *)
assert true && eq discard_533 0@1;
assume eq discard_533 0 && true;
(*   %add90.1.5 = add i64 %add89.1.5, %add90.1.4 *)
adds discard_534 v_add90_1_5 v_add89_1_5 v_add90_1_4;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_534 0@1; *)
(* assume eq discard_534 0 && true; *)
(*   %165 = xor i64 %add89.1.5, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v165 v_add89_1_5 (0x8000000000000000)@uint64;
(*   %xor2.i253.1.5 = and i64 %165, %add23.i289.1.5 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_1_5 v165 v_add23_i289_1_5;
(*   %xor.i244.1.5 = xor i64 %add90.1.5, %add89.1.5 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_1_5 v_add90_1_5 v_add89_1_5;
(*   %xor1.i245.1.5 = xor i64 %add89.1.5, %add90.1.4 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_1_5 v_add89_1_5 v_add90_1_4;
(*   %or.i246.1.5 = or i64 %xor.i244.1.5, %xor1.i245.1.5 *)
(* You may need to modify here *)
or uint64 v_or_i246_1_5 v_xor_i244_1_5 v_xor1_i245_1_5;
(*   %xor2.i247.1.5 = xor i64 %or.i246.1.5, %add90.1.5 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_1_5 v_or_i246_1_5 v_add90_1_5;
(*   %shr.i254326.1.5 = or i64 %xor2.i247.1.5, %xor2.i253.1.5 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_1_5 v_xor2_i247_1_5 v_xor2_i253_1_5;
(*   %or94325.1.5 = lshr i64 %shr.i254326.1.5, 63 *)
(* You may need to modify here *)
split v_or94325_1_5 tmp_to_be_used v_shr_i254326_1_5 63;
(* generated by python *)
assert true && limbs 64 [v_add90_1_5, v_or94325_1_5] = limbs 64 [v_shr_i260_1_5, 0@64] + limbs 64 [v_xor2569_i290_1_5, 0@64] + limbs 64 [v_add90_1_4, 0@64];
assume limbs 64 [v_add90_1_5, v_or94325_1_5] = limbs 64 [v_shr_i260_1_5, 0] + limbs 64 [v_xor2569_i290_1_5, 0] + limbs 64 [v_add90_1_4, 0] && true;
(*   %add96.1.5 = add i64 %or94325.1.5, %add96.1.4 *)
adds discard_535 v_add96_1_5 v_or94325_1_5 v_add96_1_4;
(* Heuristics applied. *)
assert true && eq discard_535 0@1;
assume eq discard_535 0 && true;
(*   %arrayidx74.1.6 = getelementptr inbounds i64, i64* %mc, i64 8 *)
(*   %166 = load i64, i64* %arrayidx74.1.6, align 8, !tbaa !3 *)
mov v166 mc_64;
(*   %167 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 5), align 8, !tbaa !3 *)
mov v167 p751p1_40;
(*   %and.i262.1.6 = and i64 %166, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_1_6 v166 (0xFFFFFFFF)@uint64;
(*   %shr.i263.1.6 = lshr i64 %166, 32 *)
(* You may need to modify here *)
split v_shr_i263_1_6 tmp_to_be_used v166 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_1_6;
assume eq tmp_to_be_used v_and_i262_1_6 && true;
(*   %and1.i264.1.6 = and i64 %167, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_1_6 v167 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.1.6 = lshr i64 %167, 32 *)
(* You may need to modify here *)
split v_shr2_i265_1_6 tmp_to_be_used v167 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_1_6;
assume eq tmp_to_be_used v_and1_i264_1_6 && true;
(*   %mul.i266.1.6 = mul nuw i64 %and1.i264.1.6, %and.i262.1.6 *)
mul v_mul_i266_1_6 v_and1_i264_1_6 v_and_i262_1_6;
(*   %mul3.i267.1.6 = mul nuw i64 %shr2.i265.1.6, %and.i262.1.6 *)
mul v_mul3_i267_1_6 v_shr2_i265_1_6 v_and_i262_1_6;
(*   %mul4.i268.1.6 = mul nuw i64 %and1.i264.1.6, %shr.i263.1.6 *)
mul v_mul4_i268_1_6 v_and1_i264_1_6 v_shr_i263_1_6;
(*   %mul5.i269.1.6 = mul nuw i64 %shr2.i265.1.6, %shr.i263.1.6 *)
mul v_mul5_i269_1_6 v_shr2_i265_1_6 v_shr_i263_1_6;
(*   %and6.i270.1.6 = and i64 %mul.i266.1.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_1_6 v_mul_i266_1_6 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.1.6 = lshr i64 %mul.i266.1.6, 32 *)
(* You may need to modify here *)
split v_shr7_i271_1_6 tmp_to_be_used v_mul_i266_1_6 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_1_6;
assume eq tmp_to_be_used v_and6_i270_1_6 && true;
(*   %and8.i272.1.6 = and i64 %mul4.i268.1.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_1_6 v_mul4_i268_1_6 (0xFFFFFFFF)@uint64;
(*   %and9.i273.1.6 = and i64 %mul3.i267.1.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_1_6 v_mul3_i267_1_6 (0xFFFFFFFF)@uint64;
(*   %add.i274.1.6 = add nuw nsw i64 %shr7.i271.1.6, %and8.i272.1.6 *)
adds discard_536 v_add_i274_1_6 v_shr7_i271_1_6 v_and8_i272_1_6;
(* Heuristics applied. *)
assert true && eq discard_536 0@1;
assume eq discard_536 0 && true;
(*   %add10.i275.1.6 = add nuw nsw i64 %add.i274.1.6, %and9.i273.1.6 *)
adds discard_537 v_add10_i275_1_6 v_add_i274_1_6 v_and9_i273_1_6;
(* Heuristics applied. *)
assert true && eq discard_537 0@1;
assume eq discard_537 0 && true;
(*   %shr11.i276.1.6 = lshr i64 %add10.i275.1.6, 32 *)
(* You may need to modify here *)
split v_shr11_i276_1_6 tmp_to_be_used v_add10_i275_1_6 32;
(*   %shl.i277.1.6 = shl i64 %add10.i275.1.6, 32 *)
shls discard_538 v_shl_i277_1_6 v_add10_i275_1_6 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_1_6 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_1_6 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.1.6 = or i64 %shl.i277.1.6, %and6.i270.1.6 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_1_6 v_shl_i277_1_6 v_and6_i270_1_6;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_1_6 v_shl_i277_1_6 + v_and6_i270_1_6;
assume eq v_xor68_i278_1_6 v_shl_i277_1_6 + v_and6_i270_1_6 && true;
(*   %shr13.i279.1.6 = lshr i64 %mul4.i268.1.6, 32 *)
(* You may need to modify here *)
split v_shr13_i279_1_6 tmp_to_be_used v_mul4_i268_1_6 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_1_6;
assume eq tmp_to_be_used v_and8_i272_1_6 && true;
(*   %shr14.i280.1.6 = lshr i64 %mul3.i267.1.6, 32 *)
(* You may need to modify here *)
split v_shr14_i280_1_6 tmp_to_be_used v_mul3_i267_1_6 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_1_6;
assume eq tmp_to_be_used v_and9_i273_1_6 && true;
(*   %and15.i281.1.6 = and i64 %mul5.i269.1.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_1_6 v_mul5_i269_1_6 (0xFFFFFFFF)@uint64;
(*   %add16.i282.1.6 = add nuw nsw i64 %shr13.i279.1.6, %shr14.i280.1.6 *)
adds discard_539 v_add16_i282_1_6 v_shr13_i279_1_6 v_shr14_i280_1_6;
(* Heuristics applied. *)
assert true && eq discard_539 0@1;
assume eq discard_539 0 && true;
(*   %add17.i283.1.6 = add nuw nsw i64 %add16.i282.1.6, %and15.i281.1.6 *)
adds discard_540 v_add17_i283_1_6 v_add16_i282_1_6 v_and15_i281_1_6;
(* Heuristics applied. *)
assert true && eq discard_540 0@1;
assume eq discard_540 0 && true;
(*   %add18.i284.1.6 = add nuw nsw i64 %add17.i283.1.6, %shr11.i276.1.6 *)
adds discard_541 v_add18_i284_1_6 v_add17_i283_1_6 v_shr11_i276_1_6;
(* Heuristics applied. *)
assert true && eq discard_541 0@1;
assume eq discard_541 0 && true;
(*   %and19.i285.1.6 = and i64 %add18.i284.1.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_1_6 v_add18_i284_1_6 (0xFFFFFFFF)@uint64;
(*   %and21.i287.1.6 = and i64 %add18.i284.1.6, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_1_6 v_add18_i284_1_6 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_1_6 v_and21_i287_1_6 + v_and19_i285_1_6;
assume eq v_add18_i284_1_6 v_and21_i287_1_6 + v_and19_i285_1_6 && true;
(*   %and22.i288.1.6 = and i64 %mul5.i269.1.6, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_1_6 v_mul5_i269_1_6 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_1_6 v_and22_i288_1_6 + v_and15_i281_1_6;
assume eq v_mul5_i269_1_6 v_and22_i288_1_6 + v_and15_i281_1_6 && true;
(*   %add23.i289.1.6 = add i64 %and21.i287.1.6, %and22.i288.1.6 *)
adds discard_542 v_add23_i289_1_6 v_and21_i287_1_6 v_and22_i288_1_6;
(* Heuristics applied. *)
assert true && eq discard_542 0@1;
assume eq discard_542 0 && true;
(*   %xor2569.i290.1.6 = or i64 %add23.i289.1.6, %and19.i285.1.6 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_1_6 v_add23_i289_1_6 v_and19_i285_1_6;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_1_6 v_add23_i289_1_6 + v_and19_i285_1_6;
assume eq v_xor2569_i290_1_6 v_add23_i289_1_6 + v_and19_i285_1_6 && true;
(*   %add82.1.6 = add i64 %xor68.i278.1.6, %add82.1.5 *)
adds discard_543 v_add82_1_6 v_xor68_i278_1_6 v_add82_1_5;
(*   %xor.i256.1.6 = xor i64 %add82.1.6, %shl.i277.1.6 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_1_6 v_add82_1_6 v_shl_i277_1_6;
(*   %xor1.i257.1.6 = xor i64 %shl.i277.1.6, %add82.1.5 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_1_6 v_shl_i277_1_6 v_add82_1_5;
(*   %or.i258.1.6 = or i64 %xor.i256.1.6, %xor1.i257.1.6 *)
(* You may need to modify here *)
or uint64 v_or_i258_1_6 v_xor_i256_1_6 v_xor1_i257_1_6;
(*   %xor2.i259.1.6 = xor i64 %or.i258.1.6, %add82.1.6 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_1_6 v_or_i258_1_6 v_add82_1_6;
(*   %shr.i260.1.6 = lshr i64 %xor2.i259.1.6, 63 *)
(* You may need to modify here *)
split v_shr_i260_1_6 tmp_to_be_used v_xor2_i259_1_6 63;
(* generated by python *)
assert true && limbs 64 [v_add82_1_6, v_shr_i260_1_6] = limbs 64 [v_xor68_i278_1_6, 0@64] + limbs 64 [v_add82_1_5, 0@64];
assume limbs 64 [v_add82_1_6, v_shr_i260_1_6] = limbs 64 [v_xor68_i278_1_6, 0] + limbs 64 [v_add82_1_5, 0] && true;
(*   %add89.1.6 = add i64 %shr.i260.1.6, %xor2569.i290.1.6 *)
adds discard_544 v_add89_1_6 v_shr_i260_1_6 v_xor2569_i290_1_6;
(* Heuristics applied. *)
assert true && eq discard_544 0@1;
assume eq discard_544 0 && true;
(*   %add90.1.6 = add i64 %add89.1.6, %add90.1.5 *)
adds discard_545 v_add90_1_6 v_add89_1_6 v_add90_1_5;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_545 0@1; *)
(* assume eq discard_545 0 && true; *)
(*   %168 = xor i64 %add89.1.6, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v168 v_add89_1_6 (0x8000000000000000)@uint64;
(*   %xor2.i253.1.6 = and i64 %168, %add23.i289.1.6 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_1_6 v168 v_add23_i289_1_6;
(*   %xor.i244.1.6 = xor i64 %add90.1.6, %add89.1.6 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_1_6 v_add90_1_6 v_add89_1_6;
(*   %xor1.i245.1.6 = xor i64 %add89.1.6, %add90.1.5 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_1_6 v_add89_1_6 v_add90_1_5;
(*   %or.i246.1.6 = or i64 %xor.i244.1.6, %xor1.i245.1.6 *)
(* You may need to modify here *)
or uint64 v_or_i246_1_6 v_xor_i244_1_6 v_xor1_i245_1_6;
(*   %xor2.i247.1.6 = xor i64 %or.i246.1.6, %add90.1.6 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_1_6 v_or_i246_1_6 v_add90_1_6;
(*   %shr.i254326.1.6 = or i64 %xor2.i247.1.6, %xor2.i253.1.6 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_1_6 v_xor2_i247_1_6 v_xor2_i253_1_6;
(*   %or94325.1.6 = lshr i64 %shr.i254326.1.6, 63 *)
(* You may need to modify here *)
split v_or94325_1_6 tmp_to_be_used v_shr_i254326_1_6 63;
(* generated by python *)
assert true && limbs 64 [v_add90_1_6, v_or94325_1_6] = limbs 64 [v_shr_i260_1_6, 0@64] + limbs 64 [v_xor2569_i290_1_6, 0@64] + limbs 64 [v_add90_1_5, 0@64];
assume limbs 64 [v_add90_1_6, v_or94325_1_6] = limbs 64 [v_shr_i260_1_6, 0] + limbs 64 [v_xor2569_i290_1_6, 0] + limbs 64 [v_add90_1_5, 0] && true;
(*   %add96.1.6 = add i64 %or94325.1.6, %add96.1.5 *)
adds discard_546 v_add96_1_6 v_or94325_1_6 v_add96_1_5;
(* Heuristics applied. *)
assert true && eq discard_546 0@1;
assume eq discard_546 0 && true;
(*   %arrayidx104.1 = getelementptr inbounds i64, i64* %ma, i64 13 *)
(*   %169 = load i64, i64* %arrayidx104.1, align 8, !tbaa !3 *)
mov v169 ma_104;
(*   %add105.1 = add i64 %169, %add82.1.6 *)
adds discard_547 v_add105_1 v169 v_add82_1_6;
(*   %xor.i238.1 = xor i64 %add105.1, %add82.1.6 *)
(* You may need to modify here *)
xor uint64 v_xor_i238_1 v_add105_1 v_add82_1_6;
(*   %xor1.i239.1 = xor i64 %169, %add82.1.6 *)
(* You may need to modify here *)
xor uint64 v_xor1_i239_1 v169 v_add82_1_6;
(*   %or.i240.1 = or i64 %xor.i238.1, %xor1.i239.1 *)
(* You may need to modify here *)
or uint64 v_or_i240_1 v_xor_i238_1 v_xor1_i239_1;
(*   %xor2.i241.1 = xor i64 %or.i240.1, %add105.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i241_1 v_or_i240_1 v_add105_1;
(*   %shr.i242.1 = lshr i64 %xor2.i241.1, 63 *)
(* You may need to modify here *)
split v_shr_i242_1 tmp_to_be_used v_xor2_i241_1 63;
(* generated by python *)
assert true && limbs 64 [v_add105_1, v_shr_i242_1] = limbs 64 [v169, 0@64] + limbs 64 [v_add82_1_6, 0@64];
assume limbs 64 [v_add105_1, v_shr_i242_1] = limbs 64 [v169, 0] + limbs 64 [v_add82_1_6, 0] && true;
(*   %add111.1 = add i64 %shr.i242.1, %add90.1.6 *)
adds discard_548 v_add111_1 v_shr_i242_1 v_add90_1_6;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_548 0@1; *)
(* assume eq discard_548 0 && true; *)
(*   store i64 %add105.1, i64* %arrayidx50.1, align 8, !tbaa !3 *)
mov mc_8 v_add105_1;
(*   %170 = xor i64 %add111.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v170 v_add111_1 (0x8000000000000000)@uint64;
(*   %xor2.i.1 = and i64 %170, %add90.1.6 *)
(* You may need to modify here *)
and uint64 v_xor2_i_1 v170 v_add90_1_6;
(*   %shr.i237.1 = lshr i64 %xor2.i.1, 63 *)
(* You may need to modify here *)
split v_shr_i237_1 tmp_to_be_used v_xor2_i_1 63;
(* generated by python *)
assert true && limbs 64 [v_add111_1, v_shr_i237_1] = limbs 64 [v_shr_i242_1, 0@64] + limbs 64 [v_add90_1_6, 0@64];
assume limbs 64 [v_add111_1, v_shr_i237_1] = limbs 64 [v_shr_i242_1, 0] + limbs 64 [v_add90_1_6, 0] && true;
(*   %add118.1 = add i64 %shr.i237.1, %add96.1.6 *)
adds discard_549 v_add118_1 v_shr_i237_1 v_add96_1_6;
(* Heuristics applied. *)
assert true && eq discard_549 0@1;
assume eq discard_549 0 && true;
(*   %arrayidx74.2 = getelementptr inbounds i64, i64* %mc, i64 3 *)
(*   %171 = load i64, i64* %arrayidx74.2, align 8, !tbaa !3 *)
mov v171 mc_24;
(*   %172 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 11), align 8, !tbaa !3 *)
mov v172 p751p1_88;
(*   %and.i262.2 = and i64 %171, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_2 v171 (0xFFFFFFFF)@uint64;
(*   %shr.i263.2 = lshr i64 %171, 32 *)
(* You may need to modify here *)
split v_shr_i263_2 tmp_to_be_used v171 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_2;
assume eq tmp_to_be_used v_and_i262_2 && true;
(*   %and1.i264.2 = and i64 %172, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_2 v172 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.2 = lshr i64 %172, 32 *)
(* You may need to modify here *)
split v_shr2_i265_2 tmp_to_be_used v172 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_2;
assume eq tmp_to_be_used v_and1_i264_2 && true;
(*   %mul.i266.2 = mul nuw i64 %and1.i264.2, %and.i262.2 *)
mul v_mul_i266_2 v_and1_i264_2 v_and_i262_2;
(*   %mul3.i267.2 = mul nuw i64 %shr2.i265.2, %and.i262.2 *)
mul v_mul3_i267_2 v_shr2_i265_2 v_and_i262_2;
(*   %mul4.i268.2 = mul nuw i64 %and1.i264.2, %shr.i263.2 *)
mul v_mul4_i268_2 v_and1_i264_2 v_shr_i263_2;
(*   %mul5.i269.2 = mul nuw i64 %shr2.i265.2, %shr.i263.2 *)
mul v_mul5_i269_2 v_shr2_i265_2 v_shr_i263_2;
(*   %and6.i270.2 = and i64 %mul.i266.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_2 v_mul_i266_2 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.2 = lshr i64 %mul.i266.2, 32 *)
(* You may need to modify here *)
split v_shr7_i271_2 tmp_to_be_used v_mul_i266_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_2;
assume eq tmp_to_be_used v_and6_i270_2 && true;
(*   %and8.i272.2 = and i64 %mul4.i268.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_2 v_mul4_i268_2 (0xFFFFFFFF)@uint64;
(*   %and9.i273.2 = and i64 %mul3.i267.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_2 v_mul3_i267_2 (0xFFFFFFFF)@uint64;
(*   %add.i274.2 = add nuw nsw i64 %shr7.i271.2, %and8.i272.2 *)
adds discard_550 v_add_i274_2 v_shr7_i271_2 v_and8_i272_2;
(* Heuristics applied. *)
assert true && eq discard_550 0@1;
assume eq discard_550 0 && true;
(*   %add10.i275.2 = add nuw nsw i64 %add.i274.2, %and9.i273.2 *)
adds discard_551 v_add10_i275_2 v_add_i274_2 v_and9_i273_2;
(* Heuristics applied. *)
assert true && eq discard_551 0@1;
assume eq discard_551 0 && true;
(*   %shr11.i276.2 = lshr i64 %add10.i275.2, 32 *)
(* You may need to modify here *)
split v_shr11_i276_2 tmp_to_be_used v_add10_i275_2 32;
(*   %shl.i277.2 = shl i64 %add10.i275.2, 32 *)
shls discard_552 v_shl_i277_2 v_add10_i275_2 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_2 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_2 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.2 = or i64 %shl.i277.2, %and6.i270.2 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_2 v_shl_i277_2 v_and6_i270_2;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_2 v_shl_i277_2 + v_and6_i270_2;
assume eq v_xor68_i278_2 v_shl_i277_2 + v_and6_i270_2 && true;
(*   %shr13.i279.2 = lshr i64 %mul4.i268.2, 32 *)
(* You may need to modify here *)
split v_shr13_i279_2 tmp_to_be_used v_mul4_i268_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_2;
assume eq tmp_to_be_used v_and8_i272_2 && true;
(*   %shr14.i280.2 = lshr i64 %mul3.i267.2, 32 *)
(* You may need to modify here *)
split v_shr14_i280_2 tmp_to_be_used v_mul3_i267_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_2;
assume eq tmp_to_be_used v_and9_i273_2 && true;
(*   %and15.i281.2 = and i64 %mul5.i269.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_2 v_mul5_i269_2 (0xFFFFFFFF)@uint64;
(*   %add16.i282.2 = add nuw nsw i64 %shr13.i279.2, %shr14.i280.2 *)
adds discard_553 v_add16_i282_2 v_shr13_i279_2 v_shr14_i280_2;
(* Heuristics applied. *)
assert true && eq discard_553 0@1;
assume eq discard_553 0 && true;
(*   %add17.i283.2 = add nuw nsw i64 %add16.i282.2, %and15.i281.2 *)
adds discard_554 v_add17_i283_2 v_add16_i282_2 v_and15_i281_2;
(* Heuristics applied. *)
assert true && eq discard_554 0@1;
assume eq discard_554 0 && true;
(*   %add18.i284.2 = add nuw nsw i64 %add17.i283.2, %shr11.i276.2 *)
adds discard_555 v_add18_i284_2 v_add17_i283_2 v_shr11_i276_2;
(* Heuristics applied. *)
assert true && eq discard_555 0@1;
assume eq discard_555 0 && true;
(*   %and19.i285.2 = and i64 %add18.i284.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_2 v_add18_i284_2 (0xFFFFFFFF)@uint64;
(*   %and21.i287.2 = and i64 %add18.i284.2, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_2 v_add18_i284_2 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_2 v_and21_i287_2 + v_and19_i285_2;
assume eq v_add18_i284_2 v_and21_i287_2 + v_and19_i285_2 && true;
(*   %and22.i288.2 = and i64 %mul5.i269.2, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_2 v_mul5_i269_2 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_2 v_and22_i288_2 + v_and15_i281_2;
assume eq v_mul5_i269_2 v_and22_i288_2 + v_and15_i281_2 && true;
(*   %add23.i289.2 = add i64 %and21.i287.2, %and22.i288.2 *)
adds discard_556 v_add23_i289_2 v_and21_i287_2 v_and22_i288_2;
(* Heuristics applied. *)
assert true && eq discard_556 0@1;
assume eq discard_556 0 && true;
(*   %xor2569.i290.2 = or i64 %add23.i289.2, %and19.i285.2 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_2 v_add23_i289_2 v_and19_i285_2;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_2 v_add23_i289_2 + v_and19_i285_2;
assume eq v_xor2569_i290_2 v_add23_i289_2 + v_and19_i285_2 && true;
(*   %add82.2 = add i64 %xor68.i278.2, %add111.1 *)
adds discard_557 v_add82_2 v_xor68_i278_2 v_add111_1;
(*   %xor.i256.2 = xor i64 %add82.2, %shl.i277.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_2 v_add82_2 v_shl_i277_2;
(*   %xor1.i257.2 = xor i64 %shl.i277.2, %add111.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_2 v_shl_i277_2 v_add111_1;
(*   %or.i258.2 = or i64 %xor.i256.2, %xor1.i257.2 *)
(* You may need to modify here *)
or uint64 v_or_i258_2 v_xor_i256_2 v_xor1_i257_2;
(*   %xor2.i259.2 = xor i64 %or.i258.2, %add82.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_2 v_or_i258_2 v_add82_2;
(*   %shr.i260.2 = lshr i64 %xor2.i259.2, 63 *)
(* You may need to modify here *)
split v_shr_i260_2 tmp_to_be_used v_xor2_i259_2 63;
(* generated by python *)
assert true && limbs 64 [v_add82_2, v_shr_i260_2] = limbs 64 [v_xor68_i278_2, 0@64] + limbs 64 [v_add111_1, 0@64];
assume limbs 64 [v_add82_2, v_shr_i260_2] = limbs 64 [v_xor68_i278_2, 0] + limbs 64 [v_add111_1, 0] && true;
(*   %add89.2 = add i64 %shr.i260.2, %xor2569.i290.2 *)
adds discard_558 v_add89_2 v_shr_i260_2 v_xor2569_i290_2;
(* Heuristics applied. *)
assert true && eq discard_558 0@1;
assume eq discard_558 0 && true;
(*   %add90.2 = add i64 %add89.2, %add118.1 *)
adds discard_559 v_add90_2 v_add89_2 v_add118_1;
(* Heuristics applied. *)
assert true && eq discard_559 0@1;
assume eq discard_559 0 && true;
(*   %173 = xor i64 %add89.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v173 v_add89_2 (0x8000000000000000)@uint64;
(*   %xor2.i253.2 = and i64 %173, %add23.i289.2 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_2 v173 v_add23_i289_2;
(*   %xor.i244.2 = xor i64 %add90.2, %add89.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_2 v_add90_2 v_add89_2;
(*   %xor1.i245.2 = xor i64 %add89.2, %add118.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_2 v_add89_2 v_add118_1;
(*   %or.i246.2 = or i64 %xor.i244.2, %xor1.i245.2 *)
(* You may need to modify here *)
or uint64 v_or_i246_2 v_xor_i244_2 v_xor1_i245_2;
(*   %xor2.i247.2 = xor i64 %or.i246.2, %add90.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_2 v_or_i246_2 v_add90_2;
(*   %shr.i254326.2 = or i64 %xor2.i247.2, %xor2.i253.2 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_2 v_xor2_i247_2 v_xor2_i253_2;
(*   %or94325.2 = lshr i64 %shr.i254326.2, 63 *)
(* You may need to modify here *)
split v_or94325_2 tmp_to_be_used v_shr_i254326_2 63;
(* generated by python *)
assert true && limbs 64 [v_add90_2, v_or94325_2] = limbs 64 [v_shr_i260_2, 0@64] + limbs 64 [v_xor2569_i290_2, 0@64] + limbs 64 [v_add118_1, 0@64];
assume limbs 64 [v_add90_2, v_or94325_2] = limbs 64 [v_shr_i260_2, 0] + limbs 64 [v_xor2569_i290_2, 0] + limbs 64 [v_add118_1, 0] && true;
(*   %arrayidx74.2.1 = getelementptr inbounds i64, i64* %mc, i64 4 *)
(*   %174 = load i64, i64* %arrayidx74.2.1, align 8, !tbaa !3 *)
mov v174 mc_32;
(*   %175 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 10), align 16, !tbaa !3 *)
mov v175 p751p1_80;
(*   %and.i262.2.1 = and i64 %174, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_2_1 v174 (0xFFFFFFFF)@uint64;
(*   %shr.i263.2.1 = lshr i64 %174, 32 *)
(* You may need to modify here *)
split v_shr_i263_2_1 tmp_to_be_used v174 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_2_1;
assume eq tmp_to_be_used v_and_i262_2_1 && true;
(*   %and1.i264.2.1 = and i64 %175, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_2_1 v175 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.2.1 = lshr i64 %175, 32 *)
(* You may need to modify here *)
split v_shr2_i265_2_1 tmp_to_be_used v175 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_2_1;
assume eq tmp_to_be_used v_and1_i264_2_1 && true;
(*   %mul.i266.2.1 = mul nuw i64 %and1.i264.2.1, %and.i262.2.1 *)
mul v_mul_i266_2_1 v_and1_i264_2_1 v_and_i262_2_1;
(*   %mul3.i267.2.1 = mul nuw i64 %shr2.i265.2.1, %and.i262.2.1 *)
mul v_mul3_i267_2_1 v_shr2_i265_2_1 v_and_i262_2_1;
(*   %mul4.i268.2.1 = mul nuw i64 %and1.i264.2.1, %shr.i263.2.1 *)
mul v_mul4_i268_2_1 v_and1_i264_2_1 v_shr_i263_2_1;
(*   %mul5.i269.2.1 = mul nuw i64 %shr2.i265.2.1, %shr.i263.2.1 *)
mul v_mul5_i269_2_1 v_shr2_i265_2_1 v_shr_i263_2_1;
(*   %and6.i270.2.1 = and i64 %mul.i266.2.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_2_1 v_mul_i266_2_1 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.2.1 = lshr i64 %mul.i266.2.1, 32 *)
(* You may need to modify here *)
split v_shr7_i271_2_1 tmp_to_be_used v_mul_i266_2_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_2_1;
assume eq tmp_to_be_used v_and6_i270_2_1 && true;
(*   %and8.i272.2.1 = and i64 %mul4.i268.2.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_2_1 v_mul4_i268_2_1 (0xFFFFFFFF)@uint64;
(*   %and9.i273.2.1 = and i64 %mul3.i267.2.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_2_1 v_mul3_i267_2_1 (0xFFFFFFFF)@uint64;
(*   %add.i274.2.1 = add nuw nsw i64 %shr7.i271.2.1, %and8.i272.2.1 *)
adds discard_560 v_add_i274_2_1 v_shr7_i271_2_1 v_and8_i272_2_1;
(* Heuristics applied. *)
assert true && eq discard_560 0@1;
assume eq discard_560 0 && true;
(*   %add10.i275.2.1 = add nuw nsw i64 %add.i274.2.1, %and9.i273.2.1 *)
adds discard_561 v_add10_i275_2_1 v_add_i274_2_1 v_and9_i273_2_1;
(* Heuristics applied. *)
assert true && eq discard_561 0@1;
assume eq discard_561 0 && true;
(*   %shr11.i276.2.1 = lshr i64 %add10.i275.2.1, 32 *)
(* You may need to modify here *)
split v_shr11_i276_2_1 tmp_to_be_used v_add10_i275_2_1 32;
(*   %shl.i277.2.1 = shl i64 %add10.i275.2.1, 32 *)
shls discard_562 v_shl_i277_2_1 v_add10_i275_2_1 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_2_1 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_2_1 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.2.1 = or i64 %shl.i277.2.1, %and6.i270.2.1 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_2_1 v_shl_i277_2_1 v_and6_i270_2_1;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_2_1 v_shl_i277_2_1 + v_and6_i270_2_1;
assume eq v_xor68_i278_2_1 v_shl_i277_2_1 + v_and6_i270_2_1 && true;
(*   %shr13.i279.2.1 = lshr i64 %mul4.i268.2.1, 32 *)
(* You may need to modify here *)
split v_shr13_i279_2_1 tmp_to_be_used v_mul4_i268_2_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_2_1;
assume eq tmp_to_be_used v_and8_i272_2_1 && true;
(*   %shr14.i280.2.1 = lshr i64 %mul3.i267.2.1, 32 *)
(* You may need to modify here *)
split v_shr14_i280_2_1 tmp_to_be_used v_mul3_i267_2_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_2_1;
assume eq tmp_to_be_used v_and9_i273_2_1 && true;
(*   %and15.i281.2.1 = and i64 %mul5.i269.2.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_2_1 v_mul5_i269_2_1 (0xFFFFFFFF)@uint64;
(*   %add16.i282.2.1 = add nuw nsw i64 %shr13.i279.2.1, %shr14.i280.2.1 *)
adds discard_563 v_add16_i282_2_1 v_shr13_i279_2_1 v_shr14_i280_2_1;
(* Heuristics applied. *)
assert true && eq discard_563 0@1;
assume eq discard_563 0 && true;
(*   %add17.i283.2.1 = add nuw nsw i64 %add16.i282.2.1, %and15.i281.2.1 *)
adds discard_564 v_add17_i283_2_1 v_add16_i282_2_1 v_and15_i281_2_1;
(* Heuristics applied. *)
assert true && eq discard_564 0@1;
assume eq discard_564 0 && true;
(*   %add18.i284.2.1 = add nuw nsw i64 %add17.i283.2.1, %shr11.i276.2.1 *)
adds discard_565 v_add18_i284_2_1 v_add17_i283_2_1 v_shr11_i276_2_1;
(* Heuristics applied. *)
assert true && eq discard_565 0@1;
assume eq discard_565 0 && true;
(*   %and19.i285.2.1 = and i64 %add18.i284.2.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_2_1 v_add18_i284_2_1 (0xFFFFFFFF)@uint64;
(*   %and21.i287.2.1 = and i64 %add18.i284.2.1, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_2_1 v_add18_i284_2_1 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_2_1 v_and21_i287_2_1 + v_and19_i285_2_1;
assume eq v_add18_i284_2_1 v_and21_i287_2_1 + v_and19_i285_2_1 && true;
(*   %and22.i288.2.1 = and i64 %mul5.i269.2.1, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_2_1 v_mul5_i269_2_1 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_2_1 v_and22_i288_2_1 + v_and15_i281_2_1;
assume eq v_mul5_i269_2_1 v_and22_i288_2_1 + v_and15_i281_2_1 && true;
(*   %add23.i289.2.1 = add i64 %and21.i287.2.1, %and22.i288.2.1 *)
adds discard_566 v_add23_i289_2_1 v_and21_i287_2_1 v_and22_i288_2_1;
(* Heuristics applied. *)
assert true && eq discard_566 0@1;
assume eq discard_566 0 && true;
(*   %xor2569.i290.2.1 = or i64 %add23.i289.2.1, %and19.i285.2.1 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_2_1 v_add23_i289_2_1 v_and19_i285_2_1;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_2_1 v_add23_i289_2_1 + v_and19_i285_2_1;
assume eq v_xor2569_i290_2_1 v_add23_i289_2_1 + v_and19_i285_2_1 && true;
(*   %add82.2.1 = add i64 %xor68.i278.2.1, %add82.2 *)
adds discard_567 v_add82_2_1 v_xor68_i278_2_1 v_add82_2;
(*   %xor.i256.2.1 = xor i64 %add82.2.1, %shl.i277.2.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_2_1 v_add82_2_1 v_shl_i277_2_1;
(*   %xor1.i257.2.1 = xor i64 %shl.i277.2.1, %add82.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_2_1 v_shl_i277_2_1 v_add82_2;
(*   %or.i258.2.1 = or i64 %xor.i256.2.1, %xor1.i257.2.1 *)
(* You may need to modify here *)
or uint64 v_or_i258_2_1 v_xor_i256_2_1 v_xor1_i257_2_1;
(*   %xor2.i259.2.1 = xor i64 %or.i258.2.1, %add82.2.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_2_1 v_or_i258_2_1 v_add82_2_1;
(*   %shr.i260.2.1 = lshr i64 %xor2.i259.2.1, 63 *)
(* You may need to modify here *)
split v_shr_i260_2_1 tmp_to_be_used v_xor2_i259_2_1 63;
(* generated by python *)
assert true && limbs 64 [v_add82_2_1, v_shr_i260_2_1] = limbs 64 [v_xor68_i278_2_1, 0@64] + limbs 64 [v_add82_2, 0@64];
assume limbs 64 [v_add82_2_1, v_shr_i260_2_1] = limbs 64 [v_xor68_i278_2_1, 0] + limbs 64 [v_add82_2, 0] && true;
(*   %add89.2.1 = add i64 %shr.i260.2.1, %xor2569.i290.2.1 *)
adds discard_568 v_add89_2_1 v_shr_i260_2_1 v_xor2569_i290_2_1;
(* Heuristics applied. *)
assert true && eq discard_568 0@1;
assume eq discard_568 0 && true;
(*   %add90.2.1 = add i64 %add89.2.1, %add90.2 *)
adds discard_569 v_add90_2_1 v_add89_2_1 v_add90_2;
(* Heuristics applied. *)
assert true && eq discard_569 0@1;
assume eq discard_569 0 && true;
(*   %176 = xor i64 %add89.2.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v176 v_add89_2_1 (0x8000000000000000)@uint64;
(*   %xor2.i253.2.1 = and i64 %176, %add23.i289.2.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_2_1 v176 v_add23_i289_2_1;
(*   %xor.i244.2.1 = xor i64 %add90.2.1, %add89.2.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_2_1 v_add90_2_1 v_add89_2_1;
(*   %xor1.i245.2.1 = xor i64 %add89.2.1, %add90.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_2_1 v_add89_2_1 v_add90_2;
(*   %or.i246.2.1 = or i64 %xor.i244.2.1, %xor1.i245.2.1 *)
(* You may need to modify here *)
or uint64 v_or_i246_2_1 v_xor_i244_2_1 v_xor1_i245_2_1;
(*   %xor2.i247.2.1 = xor i64 %or.i246.2.1, %add90.2.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_2_1 v_or_i246_2_1 v_add90_2_1;
(*   %shr.i254326.2.1 = or i64 %xor2.i247.2.1, %xor2.i253.2.1 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_2_1 v_xor2_i247_2_1 v_xor2_i253_2_1;
(*   %or94325.2.1 = lshr i64 %shr.i254326.2.1, 63 *)
(* You may need to modify here *)
split v_or94325_2_1 tmp_to_be_used v_shr_i254326_2_1 63;
(* generated by python *)
assert true && limbs 64 [v_add90_2_1, v_or94325_2_1] = limbs 64 [v_shr_i260_2_1, 0@64] + limbs 64 [v_xor2569_i290_2_1, 0@64] + limbs 64 [v_add90_2, 0@64];
assume limbs 64 [v_add90_2_1, v_or94325_2_1] = limbs 64 [v_shr_i260_2_1, 0] + limbs 64 [v_xor2569_i290_2_1, 0] + limbs 64 [v_add90_2, 0] && true;
(*   %add96.2.1 = add nuw nsw i64 %or94325.2.1, %or94325.2 *)
adds discard_570 v_add96_2_1 v_or94325_2_1 v_or94325_2;
(* Heuristics applied. *)
assert true && eq discard_570 0@1;
assume eq discard_570 0 && true;
(*   %arrayidx74.2.2 = getelementptr inbounds i64, i64* %mc, i64 5 *)
(*   %177 = load i64, i64* %arrayidx74.2.2, align 8, !tbaa !3 *)
mov v177 mc_40;
(*   %178 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 9), align 8, !tbaa !3 *)
mov v178 p751p1_72;
(*   %and.i262.2.2 = and i64 %177, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_2_2 v177 (0xFFFFFFFF)@uint64;
(*   %shr.i263.2.2 = lshr i64 %177, 32 *)
(* You may need to modify here *)
split v_shr_i263_2_2 tmp_to_be_used v177 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_2_2;
assume eq tmp_to_be_used v_and_i262_2_2 && true;
(*   %and1.i264.2.2 = and i64 %178, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_2_2 v178 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.2.2 = lshr i64 %178, 32 *)
(* You may need to modify here *)
split v_shr2_i265_2_2 tmp_to_be_used v178 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_2_2;
assume eq tmp_to_be_used v_and1_i264_2_2 && true;
(*   %mul.i266.2.2 = mul nuw i64 %and1.i264.2.2, %and.i262.2.2 *)
mul v_mul_i266_2_2 v_and1_i264_2_2 v_and_i262_2_2;
(*   %mul3.i267.2.2 = mul nuw i64 %shr2.i265.2.2, %and.i262.2.2 *)
mul v_mul3_i267_2_2 v_shr2_i265_2_2 v_and_i262_2_2;
(*   %mul4.i268.2.2 = mul nuw i64 %and1.i264.2.2, %shr.i263.2.2 *)
mul v_mul4_i268_2_2 v_and1_i264_2_2 v_shr_i263_2_2;
(*   %mul5.i269.2.2 = mul nuw i64 %shr2.i265.2.2, %shr.i263.2.2 *)
mul v_mul5_i269_2_2 v_shr2_i265_2_2 v_shr_i263_2_2;
(*   %and6.i270.2.2 = and i64 %mul.i266.2.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_2_2 v_mul_i266_2_2 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.2.2 = lshr i64 %mul.i266.2.2, 32 *)
(* You may need to modify here *)
split v_shr7_i271_2_2 tmp_to_be_used v_mul_i266_2_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_2_2;
assume eq tmp_to_be_used v_and6_i270_2_2 && true;
(*   %and8.i272.2.2 = and i64 %mul4.i268.2.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_2_2 v_mul4_i268_2_2 (0xFFFFFFFF)@uint64;
(*   %and9.i273.2.2 = and i64 %mul3.i267.2.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_2_2 v_mul3_i267_2_2 (0xFFFFFFFF)@uint64;
(*   %add.i274.2.2 = add nuw nsw i64 %shr7.i271.2.2, %and8.i272.2.2 *)
adds discard_571 v_add_i274_2_2 v_shr7_i271_2_2 v_and8_i272_2_2;
(* Heuristics applied. *)
assert true && eq discard_571 0@1;
assume eq discard_571 0 && true;
(*   %add10.i275.2.2 = add nuw nsw i64 %add.i274.2.2, %and9.i273.2.2 *)
adds discard_572 v_add10_i275_2_2 v_add_i274_2_2 v_and9_i273_2_2;
(* Heuristics applied. *)
assert true && eq discard_572 0@1;
assume eq discard_572 0 && true;
(*   %shr11.i276.2.2 = lshr i64 %add10.i275.2.2, 32 *)
(* You may need to modify here *)
split v_shr11_i276_2_2 tmp_to_be_used v_add10_i275_2_2 32;
(*   %shl.i277.2.2 = shl i64 %add10.i275.2.2, 32 *)
shls discard_573 v_shl_i277_2_2 v_add10_i275_2_2 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_2_2 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_2_2 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.2.2 = or i64 %shl.i277.2.2, %and6.i270.2.2 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_2_2 v_shl_i277_2_2 v_and6_i270_2_2;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_2_2 v_shl_i277_2_2 + v_and6_i270_2_2;
assume eq v_xor68_i278_2_2 v_shl_i277_2_2 + v_and6_i270_2_2 && true;
(*   %shr13.i279.2.2 = lshr i64 %mul4.i268.2.2, 32 *)
(* You may need to modify here *)
split v_shr13_i279_2_2 tmp_to_be_used v_mul4_i268_2_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_2_2;
assume eq tmp_to_be_used v_and8_i272_2_2 && true;
(*   %shr14.i280.2.2 = lshr i64 %mul3.i267.2.2, 32 *)
(* You may need to modify here *)
split v_shr14_i280_2_2 tmp_to_be_used v_mul3_i267_2_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_2_2;
assume eq tmp_to_be_used v_and9_i273_2_2 && true;
(*   %and15.i281.2.2 = and i64 %mul5.i269.2.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_2_2 v_mul5_i269_2_2 (0xFFFFFFFF)@uint64;
(*   %add16.i282.2.2 = add nuw nsw i64 %shr13.i279.2.2, %shr14.i280.2.2 *)
adds discard_574 v_add16_i282_2_2 v_shr13_i279_2_2 v_shr14_i280_2_2;
(* Heuristics applied. *)
assert true && eq discard_574 0@1;
assume eq discard_574 0 && true;
(*   %add17.i283.2.2 = add nuw nsw i64 %add16.i282.2.2, %and15.i281.2.2 *)
adds discard_575 v_add17_i283_2_2 v_add16_i282_2_2 v_and15_i281_2_2;
(* Heuristics applied. *)
assert true && eq discard_575 0@1;
assume eq discard_575 0 && true;
(*   %add18.i284.2.2 = add nuw nsw i64 %add17.i283.2.2, %shr11.i276.2.2 *)
adds discard_576 v_add18_i284_2_2 v_add17_i283_2_2 v_shr11_i276_2_2;
(* Heuristics applied. *)
assert true && eq discard_576 0@1;
assume eq discard_576 0 && true;
(*   %and19.i285.2.2 = and i64 %add18.i284.2.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_2_2 v_add18_i284_2_2 (0xFFFFFFFF)@uint64;
(*   %and21.i287.2.2 = and i64 %add18.i284.2.2, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_2_2 v_add18_i284_2_2 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_2_2 v_and21_i287_2_2 + v_and19_i285_2_2;
assume eq v_add18_i284_2_2 v_and21_i287_2_2 + v_and19_i285_2_2 && true;
(*   %and22.i288.2.2 = and i64 %mul5.i269.2.2, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_2_2 v_mul5_i269_2_2 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_2_2 v_and22_i288_2_2 + v_and15_i281_2_2;
assume eq v_mul5_i269_2_2 v_and22_i288_2_2 + v_and15_i281_2_2 && true;
(*   %add23.i289.2.2 = add i64 %and21.i287.2.2, %and22.i288.2.2 *)
adds discard_577 v_add23_i289_2_2 v_and21_i287_2_2 v_and22_i288_2_2;
(* Heuristics applied. *)
assert true && eq discard_577 0@1;
assume eq discard_577 0 && true;
(*   %xor2569.i290.2.2 = or i64 %add23.i289.2.2, %and19.i285.2.2 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_2_2 v_add23_i289_2_2 v_and19_i285_2_2;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_2_2 v_add23_i289_2_2 + v_and19_i285_2_2;
assume eq v_xor2569_i290_2_2 v_add23_i289_2_2 + v_and19_i285_2_2 && true;
(*   %add82.2.2 = add i64 %xor68.i278.2.2, %add82.2.1 *)
adds discard_578 v_add82_2_2 v_xor68_i278_2_2 v_add82_2_1;
(*   %xor.i256.2.2 = xor i64 %add82.2.2, %shl.i277.2.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_2_2 v_add82_2_2 v_shl_i277_2_2;
(*   %xor1.i257.2.2 = xor i64 %shl.i277.2.2, %add82.2.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_2_2 v_shl_i277_2_2 v_add82_2_1;
(*   %or.i258.2.2 = or i64 %xor.i256.2.2, %xor1.i257.2.2 *)
(* You may need to modify here *)
or uint64 v_or_i258_2_2 v_xor_i256_2_2 v_xor1_i257_2_2;
(*   %xor2.i259.2.2 = xor i64 %or.i258.2.2, %add82.2.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_2_2 v_or_i258_2_2 v_add82_2_2;
(*   %shr.i260.2.2 = lshr i64 %xor2.i259.2.2, 63 *)
(* You may need to modify here *)
split v_shr_i260_2_2 tmp_to_be_used v_xor2_i259_2_2 63;
(* generated by python *)
assert true && limbs 64 [v_add82_2_2, v_shr_i260_2_2] = limbs 64 [v_xor68_i278_2_2, 0@64] + limbs 64 [v_add82_2_1, 0@64];
assume limbs 64 [v_add82_2_2, v_shr_i260_2_2] = limbs 64 [v_xor68_i278_2_2, 0] + limbs 64 [v_add82_2_1, 0] && true;
(*   %add89.2.2 = add i64 %shr.i260.2.2, %xor2569.i290.2.2 *)
adds discard_579 v_add89_2_2 v_shr_i260_2_2 v_xor2569_i290_2_2;
(* Heuristics applied. *)
assert true && eq discard_579 0@1;
assume eq discard_579 0 && true;
(*   %add90.2.2 = add i64 %add89.2.2, %add90.2.1 *)
adds discard_580 v_add90_2_2 v_add89_2_2 v_add90_2_1;
(* Heuristics applied. *)
assert true && eq discard_580 0@1;
assume eq discard_580 0 && true;
(*   %179 = xor i64 %add89.2.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v179 v_add89_2_2 (0x8000000000000000)@uint64;
(*   %xor2.i253.2.2 = and i64 %179, %add23.i289.2.2 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_2_2 v179 v_add23_i289_2_2;
(*   %xor.i244.2.2 = xor i64 %add90.2.2, %add89.2.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_2_2 v_add90_2_2 v_add89_2_2;
(*   %xor1.i245.2.2 = xor i64 %add89.2.2, %add90.2.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_2_2 v_add89_2_2 v_add90_2_1;
(*   %or.i246.2.2 = or i64 %xor.i244.2.2, %xor1.i245.2.2 *)
(* You may need to modify here *)
or uint64 v_or_i246_2_2 v_xor_i244_2_2 v_xor1_i245_2_2;
(*   %xor2.i247.2.2 = xor i64 %or.i246.2.2, %add90.2.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_2_2 v_or_i246_2_2 v_add90_2_2;
(*   %shr.i254326.2.2 = or i64 %xor2.i247.2.2, %xor2.i253.2.2 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_2_2 v_xor2_i247_2_2 v_xor2_i253_2_2;
(*   %or94325.2.2 = lshr i64 %shr.i254326.2.2, 63 *)
(* You may need to modify here *)
split v_or94325_2_2 tmp_to_be_used v_shr_i254326_2_2 63;
(* generated by python *)
assert true && limbs 64 [v_add90_2_2, v_or94325_2_2] = limbs 64 [v_shr_i260_2_2, 0@64] + limbs 64 [v_xor2569_i290_2_2, 0@64] + limbs 64 [v_add90_2_1, 0@64];
assume limbs 64 [v_add90_2_2, v_or94325_2_2] = limbs 64 [v_shr_i260_2_2, 0] + limbs 64 [v_xor2569_i290_2_2, 0] + limbs 64 [v_add90_2_1, 0] && true;
(*   %add96.2.2 = add nsw i64 %or94325.2.2, %add96.2.1 *)
adds discard_581 v_add96_2_2 v_or94325_2_2 v_add96_2_1;
(* Heuristics applied. *)
assert true && eq discard_581 0@1;
assume eq discard_581 0 && true;
(*   %arrayidx74.2.3 = getelementptr inbounds i64, i64* %mc, i64 6 *)
(*   %180 = load i64, i64* %arrayidx74.2.3, align 8, !tbaa !3 *)
mov v180 mc_48;
(*   %181 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 8), align 16, !tbaa !3 *)
mov v181 p751p1_64;
(*   %and.i262.2.3 = and i64 %180, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_2_3 v180 (0xFFFFFFFF)@uint64;
(*   %shr.i263.2.3 = lshr i64 %180, 32 *)
(* You may need to modify here *)
split v_shr_i263_2_3 tmp_to_be_used v180 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_2_3;
assume eq tmp_to_be_used v_and_i262_2_3 && true;
(*   %and1.i264.2.3 = and i64 %181, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_2_3 v181 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.2.3 = lshr i64 %181, 32 *)
(* You may need to modify here *)
split v_shr2_i265_2_3 tmp_to_be_used v181 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_2_3;
assume eq tmp_to_be_used v_and1_i264_2_3 && true;
(*   %mul.i266.2.3 = mul nuw i64 %and1.i264.2.3, %and.i262.2.3 *)
mul v_mul_i266_2_3 v_and1_i264_2_3 v_and_i262_2_3;
(*   %mul3.i267.2.3 = mul nuw i64 %shr2.i265.2.3, %and.i262.2.3 *)
mul v_mul3_i267_2_3 v_shr2_i265_2_3 v_and_i262_2_3;
(*   %mul4.i268.2.3 = mul nuw i64 %and1.i264.2.3, %shr.i263.2.3 *)
mul v_mul4_i268_2_3 v_and1_i264_2_3 v_shr_i263_2_3;
(*   %mul5.i269.2.3 = mul nuw i64 %shr2.i265.2.3, %shr.i263.2.3 *)
mul v_mul5_i269_2_3 v_shr2_i265_2_3 v_shr_i263_2_3;
(*   %and6.i270.2.3 = and i64 %mul.i266.2.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_2_3 v_mul_i266_2_3 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.2.3 = lshr i64 %mul.i266.2.3, 32 *)
(* You may need to modify here *)
split v_shr7_i271_2_3 tmp_to_be_used v_mul_i266_2_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_2_3;
assume eq tmp_to_be_used v_and6_i270_2_3 && true;
(*   %and8.i272.2.3 = and i64 %mul4.i268.2.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_2_3 v_mul4_i268_2_3 (0xFFFFFFFF)@uint64;
(*   %and9.i273.2.3 = and i64 %mul3.i267.2.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_2_3 v_mul3_i267_2_3 (0xFFFFFFFF)@uint64;
(*   %add.i274.2.3 = add nuw nsw i64 %shr7.i271.2.3, %and8.i272.2.3 *)
adds discard_582 v_add_i274_2_3 v_shr7_i271_2_3 v_and8_i272_2_3;
(* Heuristics applied. *)
assert true && eq discard_582 0@1;
assume eq discard_582 0 && true;
(*   %add10.i275.2.3 = add nuw nsw i64 %add.i274.2.3, %and9.i273.2.3 *)
adds discard_583 v_add10_i275_2_3 v_add_i274_2_3 v_and9_i273_2_3;
(* Heuristics applied. *)
assert true && eq discard_583 0@1;
assume eq discard_583 0 && true;
(*   %shr11.i276.2.3 = lshr i64 %add10.i275.2.3, 32 *)
(* You may need to modify here *)
split v_shr11_i276_2_3 tmp_to_be_used v_add10_i275_2_3 32;
(*   %shl.i277.2.3 = shl i64 %add10.i275.2.3, 32 *)
shls discard_584 v_shl_i277_2_3 v_add10_i275_2_3 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_2_3 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_2_3 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.2.3 = or i64 %shl.i277.2.3, %and6.i270.2.3 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_2_3 v_shl_i277_2_3 v_and6_i270_2_3;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_2_3 v_shl_i277_2_3 + v_and6_i270_2_3;
assume eq v_xor68_i278_2_3 v_shl_i277_2_3 + v_and6_i270_2_3 && true;
(*   %shr13.i279.2.3 = lshr i64 %mul4.i268.2.3, 32 *)
(* You may need to modify here *)
split v_shr13_i279_2_3 tmp_to_be_used v_mul4_i268_2_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_2_3;
assume eq tmp_to_be_used v_and8_i272_2_3 && true;
(*   %shr14.i280.2.3 = lshr i64 %mul3.i267.2.3, 32 *)
(* You may need to modify here *)
split v_shr14_i280_2_3 tmp_to_be_used v_mul3_i267_2_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_2_3;
assume eq tmp_to_be_used v_and9_i273_2_3 && true;
(*   %and15.i281.2.3 = and i64 %mul5.i269.2.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_2_3 v_mul5_i269_2_3 (0xFFFFFFFF)@uint64;
(*   %add16.i282.2.3 = add nuw nsw i64 %shr13.i279.2.3, %shr14.i280.2.3 *)
adds discard_585 v_add16_i282_2_3 v_shr13_i279_2_3 v_shr14_i280_2_3;
(* Heuristics applied. *)
assert true && eq discard_585 0@1;
assume eq discard_585 0 && true;
(*   %add17.i283.2.3 = add nuw nsw i64 %add16.i282.2.3, %and15.i281.2.3 *)
adds discard_586 v_add17_i283_2_3 v_add16_i282_2_3 v_and15_i281_2_3;
(* Heuristics applied. *)
assert true && eq discard_586 0@1;
assume eq discard_586 0 && true;
(*   %add18.i284.2.3 = add nuw nsw i64 %add17.i283.2.3, %shr11.i276.2.3 *)
adds discard_587 v_add18_i284_2_3 v_add17_i283_2_3 v_shr11_i276_2_3;
(* Heuristics applied. *)
assert true && eq discard_587 0@1;
assume eq discard_587 0 && true;
(*   %and19.i285.2.3 = and i64 %add18.i284.2.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_2_3 v_add18_i284_2_3 (0xFFFFFFFF)@uint64;
(*   %and21.i287.2.3 = and i64 %add18.i284.2.3, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_2_3 v_add18_i284_2_3 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_2_3 v_and21_i287_2_3 + v_and19_i285_2_3;
assume eq v_add18_i284_2_3 v_and21_i287_2_3 + v_and19_i285_2_3 && true;
(*   %and22.i288.2.3 = and i64 %mul5.i269.2.3, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_2_3 v_mul5_i269_2_3 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_2_3 v_and22_i288_2_3 + v_and15_i281_2_3;
assume eq v_mul5_i269_2_3 v_and22_i288_2_3 + v_and15_i281_2_3 && true;
(*   %add23.i289.2.3 = add i64 %and21.i287.2.3, %and22.i288.2.3 *)
adds discard_588 v_add23_i289_2_3 v_and21_i287_2_3 v_and22_i288_2_3;
(* Heuristics applied. *)
assert true && eq discard_588 0@1;
assume eq discard_588 0 && true;
(*   %xor2569.i290.2.3 = or i64 %add23.i289.2.3, %and19.i285.2.3 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_2_3 v_add23_i289_2_3 v_and19_i285_2_3;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_2_3 v_add23_i289_2_3 + v_and19_i285_2_3;
assume eq v_xor2569_i290_2_3 v_add23_i289_2_3 + v_and19_i285_2_3 && true;
(*   %add82.2.3 = add i64 %xor68.i278.2.3, %add82.2.2 *)
adds discard_589 v_add82_2_3 v_xor68_i278_2_3 v_add82_2_2;
(*   %xor.i256.2.3 = xor i64 %add82.2.3, %shl.i277.2.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_2_3 v_add82_2_3 v_shl_i277_2_3;
(*   %xor1.i257.2.3 = xor i64 %shl.i277.2.3, %add82.2.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_2_3 v_shl_i277_2_3 v_add82_2_2;
(*   %or.i258.2.3 = or i64 %xor.i256.2.3, %xor1.i257.2.3 *)
(* You may need to modify here *)
or uint64 v_or_i258_2_3 v_xor_i256_2_3 v_xor1_i257_2_3;
(*   %xor2.i259.2.3 = xor i64 %or.i258.2.3, %add82.2.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_2_3 v_or_i258_2_3 v_add82_2_3;
(*   %shr.i260.2.3 = lshr i64 %xor2.i259.2.3, 63 *)
(* You may need to modify here *)
split v_shr_i260_2_3 tmp_to_be_used v_xor2_i259_2_3 63;
(* generated by python *)
assert true && limbs 64 [v_add82_2_3, v_shr_i260_2_3] = limbs 64 [v_xor68_i278_2_3, 0@64] + limbs 64 [v_add82_2_2, 0@64];
assume limbs 64 [v_add82_2_3, v_shr_i260_2_3] = limbs 64 [v_xor68_i278_2_3, 0] + limbs 64 [v_add82_2_2, 0] && true;
(*   %add89.2.3 = add i64 %shr.i260.2.3, %xor2569.i290.2.3 *)
adds discard_590 v_add89_2_3 v_shr_i260_2_3 v_xor2569_i290_2_3;
(* Heuristics applied. *)
assert true && eq discard_590 0@1;
assume eq discard_590 0 && true;
(*   %add90.2.3 = add i64 %add89.2.3, %add90.2.2 *)
adds discard_591 v_add90_2_3 v_add89_2_3 v_add90_2_2;
(* Heuristics applied. *)
assert true && eq discard_591 0@1;
assume eq discard_591 0 && true;
(*   %182 = xor i64 %add89.2.3, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v182 v_add89_2_3 (0x8000000000000000)@uint64;
(*   %xor2.i253.2.3 = and i64 %182, %add23.i289.2.3 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_2_3 v182 v_add23_i289_2_3;
(*   %xor.i244.2.3 = xor i64 %add90.2.3, %add89.2.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_2_3 v_add90_2_3 v_add89_2_3;
(*   %xor1.i245.2.3 = xor i64 %add89.2.3, %add90.2.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_2_3 v_add89_2_3 v_add90_2_2;
(*   %or.i246.2.3 = or i64 %xor.i244.2.3, %xor1.i245.2.3 *)
(* You may need to modify here *)
or uint64 v_or_i246_2_3 v_xor_i244_2_3 v_xor1_i245_2_3;
(*   %xor2.i247.2.3 = xor i64 %or.i246.2.3, %add90.2.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_2_3 v_or_i246_2_3 v_add90_2_3;
(*   %shr.i254326.2.3 = or i64 %xor2.i247.2.3, %xor2.i253.2.3 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_2_3 v_xor2_i247_2_3 v_xor2_i253_2_3;
(*   %or94325.2.3 = lshr i64 %shr.i254326.2.3, 63 *)
(* You may need to modify here *)
split v_or94325_2_3 tmp_to_be_used v_shr_i254326_2_3 63;
(* generated by python *)
assert true && limbs 64 [v_add90_2_3, v_or94325_2_3] = limbs 64 [v_shr_i260_2_3, 0@64] + limbs 64 [v_xor2569_i290_2_3, 0@64] + limbs 64 [v_add90_2_2, 0@64];
assume limbs 64 [v_add90_2_3, v_or94325_2_3] = limbs 64 [v_shr_i260_2_3, 0] + limbs 64 [v_xor2569_i290_2_3, 0] + limbs 64 [v_add90_2_2, 0] && true;
(*   %add96.2.3 = add nsw i64 %or94325.2.3, %add96.2.2 *)
adds discard_592 v_add96_2_3 v_or94325_2_3 v_add96_2_2;
(* Heuristics applied. *)
assert true && eq discard_592 0@1;
assume eq discard_592 0 && true;
(*   %arrayidx74.2.4 = getelementptr inbounds i64, i64* %mc, i64 7 *)
(*   %183 = load i64, i64* %arrayidx74.2.4, align 8, !tbaa !3 *)
mov v183 mc_56;
(*   %184 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 7), align 8, !tbaa !3 *)
mov v184 p751p1_56;
(*   %and.i262.2.4 = and i64 %183, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_2_4 v183 (0xFFFFFFFF)@uint64;
(*   %shr.i263.2.4 = lshr i64 %183, 32 *)
(* You may need to modify here *)
split v_shr_i263_2_4 tmp_to_be_used v183 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_2_4;
assume eq tmp_to_be_used v_and_i262_2_4 && true;
(*   %and1.i264.2.4 = and i64 %184, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_2_4 v184 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.2.4 = lshr i64 %184, 32 *)
(* You may need to modify here *)
split v_shr2_i265_2_4 tmp_to_be_used v184 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_2_4;
assume eq tmp_to_be_used v_and1_i264_2_4 && true;
(*   %mul.i266.2.4 = mul nuw i64 %and1.i264.2.4, %and.i262.2.4 *)
mul v_mul_i266_2_4 v_and1_i264_2_4 v_and_i262_2_4;
(*   %mul3.i267.2.4 = mul nuw i64 %shr2.i265.2.4, %and.i262.2.4 *)
mul v_mul3_i267_2_4 v_shr2_i265_2_4 v_and_i262_2_4;
(*   %mul4.i268.2.4 = mul nuw i64 %and1.i264.2.4, %shr.i263.2.4 *)
mul v_mul4_i268_2_4 v_and1_i264_2_4 v_shr_i263_2_4;
(*   %mul5.i269.2.4 = mul nuw i64 %shr2.i265.2.4, %shr.i263.2.4 *)
mul v_mul5_i269_2_4 v_shr2_i265_2_4 v_shr_i263_2_4;
(*   %and6.i270.2.4 = and i64 %mul.i266.2.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_2_4 v_mul_i266_2_4 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.2.4 = lshr i64 %mul.i266.2.4, 32 *)
(* You may need to modify here *)
split v_shr7_i271_2_4 tmp_to_be_used v_mul_i266_2_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_2_4;
assume eq tmp_to_be_used v_and6_i270_2_4 && true;
(*   %and8.i272.2.4 = and i64 %mul4.i268.2.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_2_4 v_mul4_i268_2_4 (0xFFFFFFFF)@uint64;
(*   %and9.i273.2.4 = and i64 %mul3.i267.2.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_2_4 v_mul3_i267_2_4 (0xFFFFFFFF)@uint64;
(*   %add.i274.2.4 = add nuw nsw i64 %shr7.i271.2.4, %and8.i272.2.4 *)
adds discard_593 v_add_i274_2_4 v_shr7_i271_2_4 v_and8_i272_2_4;
(* Heuristics applied. *)
assert true && eq discard_593 0@1;
assume eq discard_593 0 && true;
(*   %add10.i275.2.4 = add nuw nsw i64 %add.i274.2.4, %and9.i273.2.4 *)
adds discard_594 v_add10_i275_2_4 v_add_i274_2_4 v_and9_i273_2_4;
(* Heuristics applied. *)
assert true && eq discard_594 0@1;
assume eq discard_594 0 && true;
(*   %shr11.i276.2.4 = lshr i64 %add10.i275.2.4, 32 *)
(* You may need to modify here *)
split v_shr11_i276_2_4 tmp_to_be_used v_add10_i275_2_4 32;
(*   %shl.i277.2.4 = shl i64 %add10.i275.2.4, 32 *)
shls discard_595 v_shl_i277_2_4 v_add10_i275_2_4 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_2_4 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_2_4 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.2.4 = or i64 %shl.i277.2.4, %and6.i270.2.4 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_2_4 v_shl_i277_2_4 v_and6_i270_2_4;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_2_4 v_shl_i277_2_4 + v_and6_i270_2_4;
assume eq v_xor68_i278_2_4 v_shl_i277_2_4 + v_and6_i270_2_4 && true;
(*   %shr13.i279.2.4 = lshr i64 %mul4.i268.2.4, 32 *)
(* You may need to modify here *)
split v_shr13_i279_2_4 tmp_to_be_used v_mul4_i268_2_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_2_4;
assume eq tmp_to_be_used v_and8_i272_2_4 && true;
(*   %shr14.i280.2.4 = lshr i64 %mul3.i267.2.4, 32 *)
(* You may need to modify here *)
split v_shr14_i280_2_4 tmp_to_be_used v_mul3_i267_2_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_2_4;
assume eq tmp_to_be_used v_and9_i273_2_4 && true;
(*   %and15.i281.2.4 = and i64 %mul5.i269.2.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_2_4 v_mul5_i269_2_4 (0xFFFFFFFF)@uint64;
(*   %add16.i282.2.4 = add nuw nsw i64 %shr13.i279.2.4, %shr14.i280.2.4 *)
adds discard_596 v_add16_i282_2_4 v_shr13_i279_2_4 v_shr14_i280_2_4;
(* Heuristics applied. *)
assert true && eq discard_596 0@1;
assume eq discard_596 0 && true;
(*   %add17.i283.2.4 = add nuw nsw i64 %add16.i282.2.4, %and15.i281.2.4 *)
adds discard_597 v_add17_i283_2_4 v_add16_i282_2_4 v_and15_i281_2_4;
(* Heuristics applied. *)
assert true && eq discard_597 0@1;
assume eq discard_597 0 && true;
(*   %add18.i284.2.4 = add nuw nsw i64 %add17.i283.2.4, %shr11.i276.2.4 *)
adds discard_598 v_add18_i284_2_4 v_add17_i283_2_4 v_shr11_i276_2_4;
(* Heuristics applied. *)
assert true && eq discard_598 0@1;
assume eq discard_598 0 && true;
(*   %and19.i285.2.4 = and i64 %add18.i284.2.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_2_4 v_add18_i284_2_4 (0xFFFFFFFF)@uint64;
(*   %and21.i287.2.4 = and i64 %add18.i284.2.4, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_2_4 v_add18_i284_2_4 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_2_4 v_and21_i287_2_4 + v_and19_i285_2_4;
assume eq v_add18_i284_2_4 v_and21_i287_2_4 + v_and19_i285_2_4 && true;
(*   %and22.i288.2.4 = and i64 %mul5.i269.2.4, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_2_4 v_mul5_i269_2_4 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_2_4 v_and22_i288_2_4 + v_and15_i281_2_4;
assume eq v_mul5_i269_2_4 v_and22_i288_2_4 + v_and15_i281_2_4 && true;
(*   %add23.i289.2.4 = add i64 %and21.i287.2.4, %and22.i288.2.4 *)
adds discard_599 v_add23_i289_2_4 v_and21_i287_2_4 v_and22_i288_2_4;
(* Heuristics applied. *)
assert true && eq discard_599 0@1;
assume eq discard_599 0 && true;
(*   %xor2569.i290.2.4 = or i64 %add23.i289.2.4, %and19.i285.2.4 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_2_4 v_add23_i289_2_4 v_and19_i285_2_4;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_2_4 v_add23_i289_2_4 + v_and19_i285_2_4;
assume eq v_xor2569_i290_2_4 v_add23_i289_2_4 + v_and19_i285_2_4 && true;
(*   %add82.2.4 = add i64 %xor68.i278.2.4, %add82.2.3 *)
adds discard_600 v_add82_2_4 v_xor68_i278_2_4 v_add82_2_3;
(*   %xor.i256.2.4 = xor i64 %add82.2.4, %shl.i277.2.4 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_2_4 v_add82_2_4 v_shl_i277_2_4;
(*   %xor1.i257.2.4 = xor i64 %shl.i277.2.4, %add82.2.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_2_4 v_shl_i277_2_4 v_add82_2_3;
(*   %or.i258.2.4 = or i64 %xor.i256.2.4, %xor1.i257.2.4 *)
(* You may need to modify here *)
or uint64 v_or_i258_2_4 v_xor_i256_2_4 v_xor1_i257_2_4;
(*   %xor2.i259.2.4 = xor i64 %or.i258.2.4, %add82.2.4 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_2_4 v_or_i258_2_4 v_add82_2_4;
(*   %shr.i260.2.4 = lshr i64 %xor2.i259.2.4, 63 *)
(* You may need to modify here *)
split v_shr_i260_2_4 tmp_to_be_used v_xor2_i259_2_4 63;
(* generated by python *)
assert true && limbs 64 [v_add82_2_4, v_shr_i260_2_4] = limbs 64 [v_xor68_i278_2_4, 0@64] + limbs 64 [v_add82_2_3, 0@64];
assume limbs 64 [v_add82_2_4, v_shr_i260_2_4] = limbs 64 [v_xor68_i278_2_4, 0] + limbs 64 [v_add82_2_3, 0] && true;
(*   %add89.2.4 = add i64 %shr.i260.2.4, %xor2569.i290.2.4 *)
adds discard_601 v_add89_2_4 v_shr_i260_2_4 v_xor2569_i290_2_4;
(* Heuristics applied. *)
assert true && eq discard_601 0@1;
assume eq discard_601 0 && true;
(*   %add90.2.4 = add i64 %add89.2.4, %add90.2.3 *)
adds discard_602 v_add90_2_4 v_add89_2_4 v_add90_2_3;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_602 0@1; *)
(* assume eq discard_602 0 && true; *)
(*   %185 = xor i64 %add89.2.4, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v185 v_add89_2_4 (0x8000000000000000)@uint64;
(*   %xor2.i253.2.4 = and i64 %185, %add23.i289.2.4 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_2_4 v185 v_add23_i289_2_4;
(*   %xor.i244.2.4 = xor i64 %add90.2.4, %add89.2.4 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_2_4 v_add90_2_4 v_add89_2_4;
(*   %xor1.i245.2.4 = xor i64 %add89.2.4, %add90.2.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_2_4 v_add89_2_4 v_add90_2_3;
(*   %or.i246.2.4 = or i64 %xor.i244.2.4, %xor1.i245.2.4 *)
(* You may need to modify here *)
or uint64 v_or_i246_2_4 v_xor_i244_2_4 v_xor1_i245_2_4;
(*   %xor2.i247.2.4 = xor i64 %or.i246.2.4, %add90.2.4 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_2_4 v_or_i246_2_4 v_add90_2_4;
(*   %shr.i254326.2.4 = or i64 %xor2.i247.2.4, %xor2.i253.2.4 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_2_4 v_xor2_i247_2_4 v_xor2_i253_2_4;
(*   %or94325.2.4 = lshr i64 %shr.i254326.2.4, 63 *)
(* You may need to modify here *)
split v_or94325_2_4 tmp_to_be_used v_shr_i254326_2_4 63;
(* generated by python *)
assert true && limbs 64 [v_add90_2_4, v_or94325_2_4] = limbs 64 [v_shr_i260_2_4, 0@64] + limbs 64 [v_xor2569_i290_2_4, 0@64] + limbs 64 [v_add90_2_3, 0@64];
assume limbs 64 [v_add90_2_4, v_or94325_2_4] = limbs 64 [v_shr_i260_2_4, 0] + limbs 64 [v_xor2569_i290_2_4, 0] + limbs 64 [v_add90_2_3, 0] && true;
(*   %add96.2.4 = add i64 %or94325.2.4, %add96.2.3 *)
adds discard_603 v_add96_2_4 v_or94325_2_4 v_add96_2_3;
(* Heuristics applied. *)
assert true && eq discard_603 0@1;
assume eq discard_603 0 && true;
(*   %arrayidx74.2.5 = getelementptr inbounds i64, i64* %mc, i64 8 *)
(*   %186 = load i64, i64* %arrayidx74.2.5, align 8, !tbaa !3 *)
mov v186 mc_64;
(*   %187 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 6), align 16, !tbaa !3 *)
mov v187 p751p1_48;
(*   %and.i262.2.5 = and i64 %186, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_2_5 v186 (0xFFFFFFFF)@uint64;
(*   %shr.i263.2.5 = lshr i64 %186, 32 *)
(* You may need to modify here *)
split v_shr_i263_2_5 tmp_to_be_used v186 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_2_5;
assume eq tmp_to_be_used v_and_i262_2_5 && true;
(*   %and1.i264.2.5 = and i64 %187, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_2_5 v187 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.2.5 = lshr i64 %187, 32 *)
(* You may need to modify here *)
split v_shr2_i265_2_5 tmp_to_be_used v187 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_2_5;
assume eq tmp_to_be_used v_and1_i264_2_5 && true;
(*   %mul.i266.2.5 = mul nuw i64 %and1.i264.2.5, %and.i262.2.5 *)
mul v_mul_i266_2_5 v_and1_i264_2_5 v_and_i262_2_5;
(*   %mul3.i267.2.5 = mul nuw i64 %shr2.i265.2.5, %and.i262.2.5 *)
mul v_mul3_i267_2_5 v_shr2_i265_2_5 v_and_i262_2_5;
(*   %mul4.i268.2.5 = mul nuw i64 %and1.i264.2.5, %shr.i263.2.5 *)
mul v_mul4_i268_2_5 v_and1_i264_2_5 v_shr_i263_2_5;
(*   %mul5.i269.2.5 = mul nuw i64 %shr2.i265.2.5, %shr.i263.2.5 *)
mul v_mul5_i269_2_5 v_shr2_i265_2_5 v_shr_i263_2_5;
(*   %and6.i270.2.5 = and i64 %mul.i266.2.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_2_5 v_mul_i266_2_5 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.2.5 = lshr i64 %mul.i266.2.5, 32 *)
(* You may need to modify here *)
split v_shr7_i271_2_5 tmp_to_be_used v_mul_i266_2_5 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_2_5;
assume eq tmp_to_be_used v_and6_i270_2_5 && true;
(*   %and8.i272.2.5 = and i64 %mul4.i268.2.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_2_5 v_mul4_i268_2_5 (0xFFFFFFFF)@uint64;
(*   %and9.i273.2.5 = and i64 %mul3.i267.2.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_2_5 v_mul3_i267_2_5 (0xFFFFFFFF)@uint64;
(*   %add.i274.2.5 = add nuw nsw i64 %shr7.i271.2.5, %and8.i272.2.5 *)
adds discard_604 v_add_i274_2_5 v_shr7_i271_2_5 v_and8_i272_2_5;
(* Heuristics applied. *)
assert true && eq discard_604 0@1;
assume eq discard_604 0 && true;
(*   %add10.i275.2.5 = add nuw nsw i64 %add.i274.2.5, %and9.i273.2.5 *)
adds discard_605 v_add10_i275_2_5 v_add_i274_2_5 v_and9_i273_2_5;
(* Heuristics applied. *)
assert true && eq discard_605 0@1;
assume eq discard_605 0 && true;
(*   %shr11.i276.2.5 = lshr i64 %add10.i275.2.5, 32 *)
(* You may need to modify here *)
split v_shr11_i276_2_5 tmp_to_be_used v_add10_i275_2_5 32;
(*   %shl.i277.2.5 = shl i64 %add10.i275.2.5, 32 *)
shls discard_606 v_shl_i277_2_5 v_add10_i275_2_5 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_2_5 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_2_5 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.2.5 = or i64 %shl.i277.2.5, %and6.i270.2.5 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_2_5 v_shl_i277_2_5 v_and6_i270_2_5;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_2_5 v_shl_i277_2_5 + v_and6_i270_2_5;
assume eq v_xor68_i278_2_5 v_shl_i277_2_5 + v_and6_i270_2_5 && true;
(*   %shr13.i279.2.5 = lshr i64 %mul4.i268.2.5, 32 *)
(* You may need to modify here *)
split v_shr13_i279_2_5 tmp_to_be_used v_mul4_i268_2_5 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_2_5;
assume eq tmp_to_be_used v_and8_i272_2_5 && true;
(*   %shr14.i280.2.5 = lshr i64 %mul3.i267.2.5, 32 *)
(* You may need to modify here *)
split v_shr14_i280_2_5 tmp_to_be_used v_mul3_i267_2_5 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_2_5;
assume eq tmp_to_be_used v_and9_i273_2_5 && true;
(*   %and15.i281.2.5 = and i64 %mul5.i269.2.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_2_5 v_mul5_i269_2_5 (0xFFFFFFFF)@uint64;
(*   %add16.i282.2.5 = add nuw nsw i64 %shr13.i279.2.5, %shr14.i280.2.5 *)
adds discard_607 v_add16_i282_2_5 v_shr13_i279_2_5 v_shr14_i280_2_5;
(* Heuristics applied. *)
assert true && eq discard_607 0@1;
assume eq discard_607 0 && true;
(*   %add17.i283.2.5 = add nuw nsw i64 %add16.i282.2.5, %and15.i281.2.5 *)
adds discard_608 v_add17_i283_2_5 v_add16_i282_2_5 v_and15_i281_2_5;
(* Heuristics applied. *)
assert true && eq discard_608 0@1;
assume eq discard_608 0 && true;
(*   %add18.i284.2.5 = add nuw nsw i64 %add17.i283.2.5, %shr11.i276.2.5 *)
adds discard_609 v_add18_i284_2_5 v_add17_i283_2_5 v_shr11_i276_2_5;
(* Heuristics applied. *)
assert true && eq discard_609 0@1;
assume eq discard_609 0 && true;
(*   %and19.i285.2.5 = and i64 %add18.i284.2.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_2_5 v_add18_i284_2_5 (0xFFFFFFFF)@uint64;
(*   %and21.i287.2.5 = and i64 %add18.i284.2.5, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_2_5 v_add18_i284_2_5 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_2_5 v_and21_i287_2_5 + v_and19_i285_2_5;
assume eq v_add18_i284_2_5 v_and21_i287_2_5 + v_and19_i285_2_5 && true;
(*   %and22.i288.2.5 = and i64 %mul5.i269.2.5, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_2_5 v_mul5_i269_2_5 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_2_5 v_and22_i288_2_5 + v_and15_i281_2_5;
assume eq v_mul5_i269_2_5 v_and22_i288_2_5 + v_and15_i281_2_5 && true;
(*   %add23.i289.2.5 = add i64 %and21.i287.2.5, %and22.i288.2.5 *)
adds discard_610 v_add23_i289_2_5 v_and21_i287_2_5 v_and22_i288_2_5;
(* Heuristics applied. *)
assert true && eq discard_610 0@1;
assume eq discard_610 0 && true;
(*   %xor2569.i290.2.5 = or i64 %add23.i289.2.5, %and19.i285.2.5 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_2_5 v_add23_i289_2_5 v_and19_i285_2_5;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_2_5 v_add23_i289_2_5 + v_and19_i285_2_5;
assume eq v_xor2569_i290_2_5 v_add23_i289_2_5 + v_and19_i285_2_5 && true;
(*   %add82.2.5 = add i64 %xor68.i278.2.5, %add82.2.4 *)
adds discard_611 v_add82_2_5 v_xor68_i278_2_5 v_add82_2_4;
(*   %xor.i256.2.5 = xor i64 %add82.2.5, %shl.i277.2.5 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_2_5 v_add82_2_5 v_shl_i277_2_5;
(*   %xor1.i257.2.5 = xor i64 %shl.i277.2.5, %add82.2.4 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_2_5 v_shl_i277_2_5 v_add82_2_4;
(*   %or.i258.2.5 = or i64 %xor.i256.2.5, %xor1.i257.2.5 *)
(* You may need to modify here *)
or uint64 v_or_i258_2_5 v_xor_i256_2_5 v_xor1_i257_2_5;
(*   %xor2.i259.2.5 = xor i64 %or.i258.2.5, %add82.2.5 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_2_5 v_or_i258_2_5 v_add82_2_5;
(*   %shr.i260.2.5 = lshr i64 %xor2.i259.2.5, 63 *)
(* You may need to modify here *)
split v_shr_i260_2_5 tmp_to_be_used v_xor2_i259_2_5 63;
(* generated by python *)
assert true && limbs 64 [v_add82_2_5, v_shr_i260_2_5] = limbs 64 [v_xor68_i278_2_5, 0@64] + limbs 64 [v_add82_2_4, 0@64];
assume limbs 64 [v_add82_2_5, v_shr_i260_2_5] = limbs 64 [v_xor68_i278_2_5, 0] + limbs 64 [v_add82_2_4, 0] && true;
(*   %add89.2.5 = add i64 %shr.i260.2.5, %xor2569.i290.2.5 *)
adds discard_612 v_add89_2_5 v_shr_i260_2_5 v_xor2569_i290_2_5;
(* Heuristics applied. *)
assert true && eq discard_612 0@1;
assume eq discard_612 0 && true;
(*   %add90.2.5 = add i64 %add89.2.5, %add90.2.4 *)
adds discard_613 v_add90_2_5 v_add89_2_5 v_add90_2_4;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_613 0@1; *)
(* assume eq discard_613 0 && true; *)
(*   %188 = xor i64 %add89.2.5, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v188 v_add89_2_5 (0x8000000000000000)@uint64;
(*   %xor2.i253.2.5 = and i64 %188, %add23.i289.2.5 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_2_5 v188 v_add23_i289_2_5;
(*   %xor.i244.2.5 = xor i64 %add90.2.5, %add89.2.5 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_2_5 v_add90_2_5 v_add89_2_5;
(*   %xor1.i245.2.5 = xor i64 %add89.2.5, %add90.2.4 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_2_5 v_add89_2_5 v_add90_2_4;
(*   %or.i246.2.5 = or i64 %xor.i244.2.5, %xor1.i245.2.5 *)
(* You may need to modify here *)
or uint64 v_or_i246_2_5 v_xor_i244_2_5 v_xor1_i245_2_5;
(*   %xor2.i247.2.5 = xor i64 %or.i246.2.5, %add90.2.5 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_2_5 v_or_i246_2_5 v_add90_2_5;
(*   %shr.i254326.2.5 = or i64 %xor2.i247.2.5, %xor2.i253.2.5 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_2_5 v_xor2_i247_2_5 v_xor2_i253_2_5;
(*   %or94325.2.5 = lshr i64 %shr.i254326.2.5, 63 *)
(* You may need to modify here *)
split v_or94325_2_5 tmp_to_be_used v_shr_i254326_2_5 63;
(* generated by python *)
assert true && limbs 64 [v_add90_2_5, v_or94325_2_5] = limbs 64 [v_shr_i260_2_5, 0@64] + limbs 64 [v_xor2569_i290_2_5, 0@64] + limbs 64 [v_add90_2_4, 0@64];
assume limbs 64 [v_add90_2_5, v_or94325_2_5] = limbs 64 [v_shr_i260_2_5, 0] + limbs 64 [v_xor2569_i290_2_5, 0] + limbs 64 [v_add90_2_4, 0] && true;
(*   %add96.2.5 = add i64 %or94325.2.5, %add96.2.4 *)
adds discard_614 v_add96_2_5 v_or94325_2_5 v_add96_2_4;
(* Heuristics applied. *)
assert true && eq discard_614 0@1;
assume eq discard_614 0 && true;
(*   %arrayidx74.2.6 = getelementptr inbounds i64, i64* %mc, i64 9 *)
(*   %189 = load i64, i64* %arrayidx74.2.6, align 8, !tbaa !3 *)
mov v189 mc_72;
(*   %190 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 5), align 8, !tbaa !3 *)
mov v190 p751p1_40;
(*   %and.i262.2.6 = and i64 %189, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_2_6 v189 (0xFFFFFFFF)@uint64;
(*   %shr.i263.2.6 = lshr i64 %189, 32 *)
(* You may need to modify here *)
split v_shr_i263_2_6 tmp_to_be_used v189 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_2_6;
assume eq tmp_to_be_used v_and_i262_2_6 && true;
(*   %and1.i264.2.6 = and i64 %190, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_2_6 v190 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.2.6 = lshr i64 %190, 32 *)
(* You may need to modify here *)
split v_shr2_i265_2_6 tmp_to_be_used v190 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_2_6;
assume eq tmp_to_be_used v_and1_i264_2_6 && true;
(*   %mul.i266.2.6 = mul nuw i64 %and1.i264.2.6, %and.i262.2.6 *)
mul v_mul_i266_2_6 v_and1_i264_2_6 v_and_i262_2_6;
(*   %mul3.i267.2.6 = mul nuw i64 %shr2.i265.2.6, %and.i262.2.6 *)
mul v_mul3_i267_2_6 v_shr2_i265_2_6 v_and_i262_2_6;
(*   %mul4.i268.2.6 = mul nuw i64 %and1.i264.2.6, %shr.i263.2.6 *)
mul v_mul4_i268_2_6 v_and1_i264_2_6 v_shr_i263_2_6;
(*   %mul5.i269.2.6 = mul nuw i64 %shr2.i265.2.6, %shr.i263.2.6 *)
mul v_mul5_i269_2_6 v_shr2_i265_2_6 v_shr_i263_2_6;
(*   %and6.i270.2.6 = and i64 %mul.i266.2.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_2_6 v_mul_i266_2_6 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.2.6 = lshr i64 %mul.i266.2.6, 32 *)
(* You may need to modify here *)
split v_shr7_i271_2_6 tmp_to_be_used v_mul_i266_2_6 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_2_6;
assume eq tmp_to_be_used v_and6_i270_2_6 && true;
(*   %and8.i272.2.6 = and i64 %mul4.i268.2.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_2_6 v_mul4_i268_2_6 (0xFFFFFFFF)@uint64;
(*   %and9.i273.2.6 = and i64 %mul3.i267.2.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_2_6 v_mul3_i267_2_6 (0xFFFFFFFF)@uint64;
(*   %add.i274.2.6 = add nuw nsw i64 %shr7.i271.2.6, %and8.i272.2.6 *)
adds discard_615 v_add_i274_2_6 v_shr7_i271_2_6 v_and8_i272_2_6;
(* Heuristics applied. *)
assert true && eq discard_615 0@1;
assume eq discard_615 0 && true;
(*   %add10.i275.2.6 = add nuw nsw i64 %add.i274.2.6, %and9.i273.2.6 *)
adds discard_616 v_add10_i275_2_6 v_add_i274_2_6 v_and9_i273_2_6;
(* Heuristics applied. *)
assert true && eq discard_616 0@1;
assume eq discard_616 0 && true;
(*   %shr11.i276.2.6 = lshr i64 %add10.i275.2.6, 32 *)
(* You may need to modify here *)
split v_shr11_i276_2_6 tmp_to_be_used v_add10_i275_2_6 32;
(*   %shl.i277.2.6 = shl i64 %add10.i275.2.6, 32 *)
shls discard_617 v_shl_i277_2_6 v_add10_i275_2_6 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_2_6 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_2_6 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.2.6 = or i64 %shl.i277.2.6, %and6.i270.2.6 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_2_6 v_shl_i277_2_6 v_and6_i270_2_6;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_2_6 v_shl_i277_2_6 + v_and6_i270_2_6;
assume eq v_xor68_i278_2_6 v_shl_i277_2_6 + v_and6_i270_2_6 && true;
(*   %shr13.i279.2.6 = lshr i64 %mul4.i268.2.6, 32 *)
(* You may need to modify here *)
split v_shr13_i279_2_6 tmp_to_be_used v_mul4_i268_2_6 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_2_6;
assume eq tmp_to_be_used v_and8_i272_2_6 && true;
(*   %shr14.i280.2.6 = lshr i64 %mul3.i267.2.6, 32 *)
(* You may need to modify here *)
split v_shr14_i280_2_6 tmp_to_be_used v_mul3_i267_2_6 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_2_6;
assume eq tmp_to_be_used v_and9_i273_2_6 && true;
(*   %and15.i281.2.6 = and i64 %mul5.i269.2.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_2_6 v_mul5_i269_2_6 (0xFFFFFFFF)@uint64;
(*   %add16.i282.2.6 = add nuw nsw i64 %shr13.i279.2.6, %shr14.i280.2.6 *)
adds discard_618 v_add16_i282_2_6 v_shr13_i279_2_6 v_shr14_i280_2_6;
(* Heuristics applied. *)
assert true && eq discard_618 0@1;
assume eq discard_618 0 && true;
(*   %add17.i283.2.6 = add nuw nsw i64 %add16.i282.2.6, %and15.i281.2.6 *)
adds discard_619 v_add17_i283_2_6 v_add16_i282_2_6 v_and15_i281_2_6;
(* Heuristics applied. *)
assert true && eq discard_619 0@1;
assume eq discard_619 0 && true;
(*   %add18.i284.2.6 = add nuw nsw i64 %add17.i283.2.6, %shr11.i276.2.6 *)
adds discard_620 v_add18_i284_2_6 v_add17_i283_2_6 v_shr11_i276_2_6;
(* Heuristics applied. *)
assert true && eq discard_620 0@1;
assume eq discard_620 0 && true;
(*   %and19.i285.2.6 = and i64 %add18.i284.2.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_2_6 v_add18_i284_2_6 (0xFFFFFFFF)@uint64;
(*   %and21.i287.2.6 = and i64 %add18.i284.2.6, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_2_6 v_add18_i284_2_6 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_2_6 v_and21_i287_2_6 + v_and19_i285_2_6;
assume eq v_add18_i284_2_6 v_and21_i287_2_6 + v_and19_i285_2_6 && true;
(*   %and22.i288.2.6 = and i64 %mul5.i269.2.6, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_2_6 v_mul5_i269_2_6 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_2_6 v_and22_i288_2_6 + v_and15_i281_2_6;
assume eq v_mul5_i269_2_6 v_and22_i288_2_6 + v_and15_i281_2_6 && true;
(*   %add23.i289.2.6 = add i64 %and21.i287.2.6, %and22.i288.2.6 *)
adds discard_621 v_add23_i289_2_6 v_and21_i287_2_6 v_and22_i288_2_6;
(* Heuristics applied. *)
assert true && eq discard_621 0@1;
assume eq discard_621 0 && true;
(*   %xor2569.i290.2.6 = or i64 %add23.i289.2.6, %and19.i285.2.6 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_2_6 v_add23_i289_2_6 v_and19_i285_2_6;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_2_6 v_add23_i289_2_6 + v_and19_i285_2_6;
assume eq v_xor2569_i290_2_6 v_add23_i289_2_6 + v_and19_i285_2_6 && true;
(*   %add82.2.6 = add i64 %xor68.i278.2.6, %add82.2.5 *)
adds discard_622 v_add82_2_6 v_xor68_i278_2_6 v_add82_2_5;
(*   %xor.i256.2.6 = xor i64 %add82.2.6, %shl.i277.2.6 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_2_6 v_add82_2_6 v_shl_i277_2_6;
(*   %xor1.i257.2.6 = xor i64 %shl.i277.2.6, %add82.2.5 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_2_6 v_shl_i277_2_6 v_add82_2_5;
(*   %or.i258.2.6 = or i64 %xor.i256.2.6, %xor1.i257.2.6 *)
(* You may need to modify here *)
or uint64 v_or_i258_2_6 v_xor_i256_2_6 v_xor1_i257_2_6;
(*   %xor2.i259.2.6 = xor i64 %or.i258.2.6, %add82.2.6 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_2_6 v_or_i258_2_6 v_add82_2_6;
(*   %shr.i260.2.6 = lshr i64 %xor2.i259.2.6, 63 *)
(* You may need to modify here *)
split v_shr_i260_2_6 tmp_to_be_used v_xor2_i259_2_6 63;
(* generated by python *)
assert true && limbs 64 [v_add82_2_6, v_shr_i260_2_6] = limbs 64 [v_xor68_i278_2_6, 0@64] + limbs 64 [v_add82_2_5, 0@64];
assume limbs 64 [v_add82_2_6, v_shr_i260_2_6] = limbs 64 [v_xor68_i278_2_6, 0] + limbs 64 [v_add82_2_5, 0] && true;
(*   %add89.2.6 = add i64 %shr.i260.2.6, %xor2569.i290.2.6 *)
adds discard_623 v_add89_2_6 v_shr_i260_2_6 v_xor2569_i290_2_6;
(* Heuristics applied. *)
assert true && eq discard_623 0@1;
assume eq discard_623 0 && true;
(*   %add90.2.6 = add i64 %add89.2.6, %add90.2.5 *)
adds discard_624 v_add90_2_6 v_add89_2_6 v_add90_2_5;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_624 0@1; *)
(* assume eq discard_624 0 && true; *)
(*   %191 = xor i64 %add89.2.6, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v191 v_add89_2_6 (0x8000000000000000)@uint64;
(*   %xor2.i253.2.6 = and i64 %191, %add23.i289.2.6 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_2_6 v191 v_add23_i289_2_6;
(*   %xor.i244.2.6 = xor i64 %add90.2.6, %add89.2.6 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_2_6 v_add90_2_6 v_add89_2_6;
(*   %xor1.i245.2.6 = xor i64 %add89.2.6, %add90.2.5 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_2_6 v_add89_2_6 v_add90_2_5;
(*   %or.i246.2.6 = or i64 %xor.i244.2.6, %xor1.i245.2.6 *)
(* You may need to modify here *)
or uint64 v_or_i246_2_6 v_xor_i244_2_6 v_xor1_i245_2_6;
(*   %xor2.i247.2.6 = xor i64 %or.i246.2.6, %add90.2.6 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_2_6 v_or_i246_2_6 v_add90_2_6;
(*   %shr.i254326.2.6 = or i64 %xor2.i247.2.6, %xor2.i253.2.6 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_2_6 v_xor2_i247_2_6 v_xor2_i253_2_6;
(*   %or94325.2.6 = lshr i64 %shr.i254326.2.6, 63 *)
(* You may need to modify here *)
split v_or94325_2_6 tmp_to_be_used v_shr_i254326_2_6 63;
(* generated by python *)
assert true && limbs 64 [v_add90_2_6, v_or94325_2_6] = limbs 64 [v_shr_i260_2_6, 0@64] + limbs 64 [v_xor2569_i290_2_6, 0@64] + limbs 64 [v_add90_2_5, 0@64];
assume limbs 64 [v_add90_2_6, v_or94325_2_6] = limbs 64 [v_shr_i260_2_6, 0] + limbs 64 [v_xor2569_i290_2_6, 0] + limbs 64 [v_add90_2_5, 0] && true;
(*   %add96.2.6 = add i64 %or94325.2.6, %add96.2.5 *)
adds discard_625 v_add96_2_6 v_or94325_2_6 v_add96_2_5;
(* Heuristics applied. *)
assert true && eq discard_625 0@1;
assume eq discard_625 0 && true;
(*   %arrayidx104.2 = getelementptr inbounds i64, i64* %ma, i64 14 *)
(*   %192 = load i64, i64* %arrayidx104.2, align 8, !tbaa !3 *)
mov v192 ma_112;
(*   %add105.2 = add i64 %192, %add82.2.6 *)
adds discard_626 v_add105_2 v192 v_add82_2_6;
(*   %xor.i238.2 = xor i64 %add105.2, %add82.2.6 *)
(* You may need to modify here *)
xor uint64 v_xor_i238_2 v_add105_2 v_add82_2_6;
(*   %xor1.i239.2 = xor i64 %192, %add82.2.6 *)
(* You may need to modify here *)
xor uint64 v_xor1_i239_2 v192 v_add82_2_6;
(*   %or.i240.2 = or i64 %xor.i238.2, %xor1.i239.2 *)
(* You may need to modify here *)
or uint64 v_or_i240_2 v_xor_i238_2 v_xor1_i239_2;
(*   %xor2.i241.2 = xor i64 %or.i240.2, %add105.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i241_2 v_or_i240_2 v_add105_2;
(*   %shr.i242.2 = lshr i64 %xor2.i241.2, 63 *)
(* You may need to modify here *)
split v_shr_i242_2 tmp_to_be_used v_xor2_i241_2 63;
(* generated by python *)
assert true && limbs 64 [v_add105_2, v_shr_i242_2] = limbs 64 [v192, 0@64] + limbs 64 [v_add82_2_6, 0@64];
assume limbs 64 [v_add105_2, v_shr_i242_2] = limbs 64 [v192, 0] + limbs 64 [v_add82_2_6, 0] && true;
(*   %add111.2 = add i64 %shr.i242.2, %add90.2.6 *)
adds discard_627 v_add111_2 v_shr_i242_2 v_add90_2_6;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_627 0@1; *)
(* assume eq discard_627 0 && true; *)
(*   store i64 %add105.2, i64* %arrayidx50.2, align 8, !tbaa !3 *)
mov mc_16 v_add105_2;
(*   %193 = xor i64 %add111.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v193 v_add111_2 (0x8000000000000000)@uint64;
(*   %xor2.i.2 = and i64 %193, %add90.2.6 *)
(* You may need to modify here *)
and uint64 v_xor2_i_2 v193 v_add90_2_6;
(*   %shr.i237.2 = lshr i64 %xor2.i.2, 63 *)
(* You may need to modify here *)
split v_shr_i237_2 tmp_to_be_used v_xor2_i_2 63;
(* generated by python *)
assert true && limbs 64 [v_add111_2, v_shr_i237_2] = limbs 64 [v_shr_i242_2, 0@64] + limbs 64 [v_add90_2_6, 0@64];
assume limbs 64 [v_add111_2, v_shr_i237_2] = limbs 64 [v_shr_i242_2, 0] + limbs 64 [v_add90_2_6, 0] && true;
(*   %add118.2 = add i64 %shr.i237.2, %add96.2.6 *)
adds discard_628 v_add118_2 v_shr_i237_2 v_add96_2_6;
(* Heuristics applied. *)
assert true && eq discard_628 0@1;
assume eq discard_628 0 && true;
(*   %arrayidx74.3 = getelementptr inbounds i64, i64* %mc, i64 4 *)
(*   %194 = load i64, i64* %arrayidx74.3, align 8, !tbaa !3 *)
mov v194 mc_32;
(*   %195 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 11), align 8, !tbaa !3 *)
mov v195 p751p1_88;
(*   %and.i262.3 = and i64 %194, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_3 v194 (0xFFFFFFFF)@uint64;
(*   %shr.i263.3 = lshr i64 %194, 32 *)
(* You may need to modify here *)
split v_shr_i263_3 tmp_to_be_used v194 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_3;
assume eq tmp_to_be_used v_and_i262_3 && true;
(*   %and1.i264.3 = and i64 %195, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_3 v195 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.3 = lshr i64 %195, 32 *)
(* You may need to modify here *)
split v_shr2_i265_3 tmp_to_be_used v195 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_3;
assume eq tmp_to_be_used v_and1_i264_3 && true;
(*   %mul.i266.3 = mul nuw i64 %and1.i264.3, %and.i262.3 *)
mul v_mul_i266_3 v_and1_i264_3 v_and_i262_3;
(*   %mul3.i267.3 = mul nuw i64 %shr2.i265.3, %and.i262.3 *)
mul v_mul3_i267_3 v_shr2_i265_3 v_and_i262_3;
(*   %mul4.i268.3 = mul nuw i64 %and1.i264.3, %shr.i263.3 *)
mul v_mul4_i268_3 v_and1_i264_3 v_shr_i263_3;
(*   %mul5.i269.3 = mul nuw i64 %shr2.i265.3, %shr.i263.3 *)
mul v_mul5_i269_3 v_shr2_i265_3 v_shr_i263_3;
(*   %and6.i270.3 = and i64 %mul.i266.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_3 v_mul_i266_3 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.3 = lshr i64 %mul.i266.3, 32 *)
(* You may need to modify here *)
split v_shr7_i271_3 tmp_to_be_used v_mul_i266_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_3;
assume eq tmp_to_be_used v_and6_i270_3 && true;
(*   %and8.i272.3 = and i64 %mul4.i268.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_3 v_mul4_i268_3 (0xFFFFFFFF)@uint64;
(*   %and9.i273.3 = and i64 %mul3.i267.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_3 v_mul3_i267_3 (0xFFFFFFFF)@uint64;
(*   %add.i274.3 = add nuw nsw i64 %shr7.i271.3, %and8.i272.3 *)
adds discard_629 v_add_i274_3 v_shr7_i271_3 v_and8_i272_3;
(* Heuristics applied. *)
assert true && eq discard_629 0@1;
assume eq discard_629 0 && true;
(*   %add10.i275.3 = add nuw nsw i64 %add.i274.3, %and9.i273.3 *)
adds discard_630 v_add10_i275_3 v_add_i274_3 v_and9_i273_3;
(* Heuristics applied. *)
assert true && eq discard_630 0@1;
assume eq discard_630 0 && true;
(*   %shr11.i276.3 = lshr i64 %add10.i275.3, 32 *)
(* You may need to modify here *)
split v_shr11_i276_3 tmp_to_be_used v_add10_i275_3 32;
(*   %shl.i277.3 = shl i64 %add10.i275.3, 32 *)
shls discard_631 v_shl_i277_3 v_add10_i275_3 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_3 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_3 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.3 = or i64 %shl.i277.3, %and6.i270.3 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_3 v_shl_i277_3 v_and6_i270_3;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_3 v_shl_i277_3 + v_and6_i270_3;
assume eq v_xor68_i278_3 v_shl_i277_3 + v_and6_i270_3 && true;
(*   %shr13.i279.3 = lshr i64 %mul4.i268.3, 32 *)
(* You may need to modify here *)
split v_shr13_i279_3 tmp_to_be_used v_mul4_i268_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_3;
assume eq tmp_to_be_used v_and8_i272_3 && true;
(*   %shr14.i280.3 = lshr i64 %mul3.i267.3, 32 *)
(* You may need to modify here *)
split v_shr14_i280_3 tmp_to_be_used v_mul3_i267_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_3;
assume eq tmp_to_be_used v_and9_i273_3 && true;
(*   %and15.i281.3 = and i64 %mul5.i269.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_3 v_mul5_i269_3 (0xFFFFFFFF)@uint64;
(*   %add16.i282.3 = add nuw nsw i64 %shr13.i279.3, %shr14.i280.3 *)
adds discard_632 v_add16_i282_3 v_shr13_i279_3 v_shr14_i280_3;
(* Heuristics applied. *)
assert true && eq discard_632 0@1;
assume eq discard_632 0 && true;
(*   %add17.i283.3 = add nuw nsw i64 %add16.i282.3, %and15.i281.3 *)
adds discard_633 v_add17_i283_3 v_add16_i282_3 v_and15_i281_3;
(* Heuristics applied. *)
assert true && eq discard_633 0@1;
assume eq discard_633 0 && true;
(*   %add18.i284.3 = add nuw nsw i64 %add17.i283.3, %shr11.i276.3 *)
adds discard_634 v_add18_i284_3 v_add17_i283_3 v_shr11_i276_3;
(* Heuristics applied. *)
assert true && eq discard_634 0@1;
assume eq discard_634 0 && true;
(*   %and19.i285.3 = and i64 %add18.i284.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_3 v_add18_i284_3 (0xFFFFFFFF)@uint64;
(*   %and21.i287.3 = and i64 %add18.i284.3, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_3 v_add18_i284_3 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_3 v_and21_i287_3 + v_and19_i285_3;
assume eq v_add18_i284_3 v_and21_i287_3 + v_and19_i285_3 && true;
(*   %and22.i288.3 = and i64 %mul5.i269.3, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_3 v_mul5_i269_3 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_3 v_and22_i288_3 + v_and15_i281_3;
assume eq v_mul5_i269_3 v_and22_i288_3 + v_and15_i281_3 && true;
(*   %add23.i289.3 = add i64 %and21.i287.3, %and22.i288.3 *)
adds discard_635 v_add23_i289_3 v_and21_i287_3 v_and22_i288_3;
(* Heuristics applied. *)
assert true && eq discard_635 0@1;
assume eq discard_635 0 && true;
(*   %xor2569.i290.3 = or i64 %add23.i289.3, %and19.i285.3 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_3 v_add23_i289_3 v_and19_i285_3;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_3 v_add23_i289_3 + v_and19_i285_3;
assume eq v_xor2569_i290_3 v_add23_i289_3 + v_and19_i285_3 && true;
(*   %add82.3 = add i64 %xor68.i278.3, %add111.2 *)
adds discard_636 v_add82_3 v_xor68_i278_3 v_add111_2;
(*   %xor.i256.3 = xor i64 %add82.3, %shl.i277.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_3 v_add82_3 v_shl_i277_3;
(*   %xor1.i257.3 = xor i64 %shl.i277.3, %add111.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_3 v_shl_i277_3 v_add111_2;
(*   %or.i258.3 = or i64 %xor.i256.3, %xor1.i257.3 *)
(* You may need to modify here *)
or uint64 v_or_i258_3 v_xor_i256_3 v_xor1_i257_3;
(*   %xor2.i259.3 = xor i64 %or.i258.3, %add82.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_3 v_or_i258_3 v_add82_3;
(*   %shr.i260.3 = lshr i64 %xor2.i259.3, 63 *)
(* You may need to modify here *)
split v_shr_i260_3 tmp_to_be_used v_xor2_i259_3 63;
(* generated by python *)
assert true && limbs 64 [v_add82_3, v_shr_i260_3] = limbs 64 [v_xor68_i278_3, 0@64] + limbs 64 [v_add111_2, 0@64];
assume limbs 64 [v_add82_3, v_shr_i260_3] = limbs 64 [v_xor68_i278_3, 0] + limbs 64 [v_add111_2, 0] && true;
(*   %add89.3 = add i64 %shr.i260.3, %xor2569.i290.3 *)
adds discard_637 v_add89_3 v_shr_i260_3 v_xor2569_i290_3;
(* Heuristics applied. *)
assert true && eq discard_637 0@1;
assume eq discard_637 0 && true;
(*   %add90.3 = add i64 %add89.3, %add118.2 *)
adds discard_638 v_add90_3 v_add89_3 v_add118_2;
(* Heuristics applied. *)
assert true && eq discard_638 0@1;
assume eq discard_638 0 && true;
(*   %196 = xor i64 %add89.3, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v196 v_add89_3 (0x8000000000000000)@uint64;
(*   %xor2.i253.3 = and i64 %196, %add23.i289.3 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_3 v196 v_add23_i289_3;
(*   %xor.i244.3 = xor i64 %add90.3, %add89.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_3 v_add90_3 v_add89_3;
(*   %xor1.i245.3 = xor i64 %add89.3, %add118.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_3 v_add89_3 v_add118_2;
(*   %or.i246.3 = or i64 %xor.i244.3, %xor1.i245.3 *)
(* You may need to modify here *)
or uint64 v_or_i246_3 v_xor_i244_3 v_xor1_i245_3;
(*   %xor2.i247.3 = xor i64 %or.i246.3, %add90.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_3 v_or_i246_3 v_add90_3;
(*   %shr.i254326.3 = or i64 %xor2.i247.3, %xor2.i253.3 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_3 v_xor2_i247_3 v_xor2_i253_3;
(*   %or94325.3 = lshr i64 %shr.i254326.3, 63 *)
(* You may need to modify here *)
split v_or94325_3 tmp_to_be_used v_shr_i254326_3 63;
(* generated by python *)
assert true && limbs 64 [v_add90_3, v_or94325_3] = limbs 64 [v_shr_i260_3, 0@64] + limbs 64 [v_xor2569_i290_3, 0@64] + limbs 64 [v_add118_2, 0@64];
assume limbs 64 [v_add90_3, v_or94325_3] = limbs 64 [v_shr_i260_3, 0] + limbs 64 [v_xor2569_i290_3, 0] + limbs 64 [v_add118_2, 0] && true;
(*   %arrayidx74.3.1 = getelementptr inbounds i64, i64* %mc, i64 5 *)
(*   %197 = load i64, i64* %arrayidx74.3.1, align 8, !tbaa !3 *)
mov v197 mc_40;
(*   %198 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 10), align 16, !tbaa !3 *)
mov v198 p751p1_80;
(*   %and.i262.3.1 = and i64 %197, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_3_1 v197 (0xFFFFFFFF)@uint64;
(*   %shr.i263.3.1 = lshr i64 %197, 32 *)
(* You may need to modify here *)
split v_shr_i263_3_1 tmp_to_be_used v197 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_3_1;
assume eq tmp_to_be_used v_and_i262_3_1 && true;
(*   %and1.i264.3.1 = and i64 %198, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_3_1 v198 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.3.1 = lshr i64 %198, 32 *)
(* You may need to modify here *)
split v_shr2_i265_3_1 tmp_to_be_used v198 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_3_1;
assume eq tmp_to_be_used v_and1_i264_3_1 && true;
(*   %mul.i266.3.1 = mul nuw i64 %and1.i264.3.1, %and.i262.3.1 *)
mul v_mul_i266_3_1 v_and1_i264_3_1 v_and_i262_3_1;
(*   %mul3.i267.3.1 = mul nuw i64 %shr2.i265.3.1, %and.i262.3.1 *)
mul v_mul3_i267_3_1 v_shr2_i265_3_1 v_and_i262_3_1;
(*   %mul4.i268.3.1 = mul nuw i64 %and1.i264.3.1, %shr.i263.3.1 *)
mul v_mul4_i268_3_1 v_and1_i264_3_1 v_shr_i263_3_1;
(*   %mul5.i269.3.1 = mul nuw i64 %shr2.i265.3.1, %shr.i263.3.1 *)
mul v_mul5_i269_3_1 v_shr2_i265_3_1 v_shr_i263_3_1;
(*   %and6.i270.3.1 = and i64 %mul.i266.3.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_3_1 v_mul_i266_3_1 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.3.1 = lshr i64 %mul.i266.3.1, 32 *)
(* You may need to modify here *)
split v_shr7_i271_3_1 tmp_to_be_used v_mul_i266_3_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_3_1;
assume eq tmp_to_be_used v_and6_i270_3_1 && true;
(*   %and8.i272.3.1 = and i64 %mul4.i268.3.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_3_1 v_mul4_i268_3_1 (0xFFFFFFFF)@uint64;
(*   %and9.i273.3.1 = and i64 %mul3.i267.3.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_3_1 v_mul3_i267_3_1 (0xFFFFFFFF)@uint64;
(*   %add.i274.3.1 = add nuw nsw i64 %shr7.i271.3.1, %and8.i272.3.1 *)
adds discard_639 v_add_i274_3_1 v_shr7_i271_3_1 v_and8_i272_3_1;
(* Heuristics applied. *)
assert true && eq discard_639 0@1;
assume eq discard_639 0 && true;
(*   %add10.i275.3.1 = add nuw nsw i64 %add.i274.3.1, %and9.i273.3.1 *)
adds discard_640 v_add10_i275_3_1 v_add_i274_3_1 v_and9_i273_3_1;
(* Heuristics applied. *)
assert true && eq discard_640 0@1;
assume eq discard_640 0 && true;
(*   %shr11.i276.3.1 = lshr i64 %add10.i275.3.1, 32 *)
(* You may need to modify here *)
split v_shr11_i276_3_1 tmp_to_be_used v_add10_i275_3_1 32;
(*   %shl.i277.3.1 = shl i64 %add10.i275.3.1, 32 *)
shls discard_641 v_shl_i277_3_1 v_add10_i275_3_1 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_3_1 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_3_1 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.3.1 = or i64 %shl.i277.3.1, %and6.i270.3.1 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_3_1 v_shl_i277_3_1 v_and6_i270_3_1;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_3_1 v_shl_i277_3_1 + v_and6_i270_3_1;
assume eq v_xor68_i278_3_1 v_shl_i277_3_1 + v_and6_i270_3_1 && true;
(*   %shr13.i279.3.1 = lshr i64 %mul4.i268.3.1, 32 *)
(* You may need to modify here *)
split v_shr13_i279_3_1 tmp_to_be_used v_mul4_i268_3_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_3_1;
assume eq tmp_to_be_used v_and8_i272_3_1 && true;
(*   %shr14.i280.3.1 = lshr i64 %mul3.i267.3.1, 32 *)
(* You may need to modify here *)
split v_shr14_i280_3_1 tmp_to_be_used v_mul3_i267_3_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_3_1;
assume eq tmp_to_be_used v_and9_i273_3_1 && true;
(*   %and15.i281.3.1 = and i64 %mul5.i269.3.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_3_1 v_mul5_i269_3_1 (0xFFFFFFFF)@uint64;
(*   %add16.i282.3.1 = add nuw nsw i64 %shr13.i279.3.1, %shr14.i280.3.1 *)
adds discard_642 v_add16_i282_3_1 v_shr13_i279_3_1 v_shr14_i280_3_1;
(* Heuristics applied. *)
assert true && eq discard_642 0@1;
assume eq discard_642 0 && true;
(*   %add17.i283.3.1 = add nuw nsw i64 %add16.i282.3.1, %and15.i281.3.1 *)
adds discard_643 v_add17_i283_3_1 v_add16_i282_3_1 v_and15_i281_3_1;
(* Heuristics applied. *)
assert true && eq discard_643 0@1;
assume eq discard_643 0 && true;
(*   %add18.i284.3.1 = add nuw nsw i64 %add17.i283.3.1, %shr11.i276.3.1 *)
adds discard_644 v_add18_i284_3_1 v_add17_i283_3_1 v_shr11_i276_3_1;
(* Heuristics applied. *)
assert true && eq discard_644 0@1;
assume eq discard_644 0 && true;
(*   %and19.i285.3.1 = and i64 %add18.i284.3.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_3_1 v_add18_i284_3_1 (0xFFFFFFFF)@uint64;
(*   %and21.i287.3.1 = and i64 %add18.i284.3.1, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_3_1 v_add18_i284_3_1 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_3_1 v_and21_i287_3_1 + v_and19_i285_3_1;
assume eq v_add18_i284_3_1 v_and21_i287_3_1 + v_and19_i285_3_1 && true;
(*   %and22.i288.3.1 = and i64 %mul5.i269.3.1, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_3_1 v_mul5_i269_3_1 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_3_1 v_and22_i288_3_1 + v_and15_i281_3_1;
assume eq v_mul5_i269_3_1 v_and22_i288_3_1 + v_and15_i281_3_1 && true;
(*   %add23.i289.3.1 = add i64 %and21.i287.3.1, %and22.i288.3.1 *)
adds discard_645 v_add23_i289_3_1 v_and21_i287_3_1 v_and22_i288_3_1;
(* Heuristics applied. *)
assert true && eq discard_645 0@1;
assume eq discard_645 0 && true;
(*   %xor2569.i290.3.1 = or i64 %add23.i289.3.1, %and19.i285.3.1 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_3_1 v_add23_i289_3_1 v_and19_i285_3_1;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_3_1 v_add23_i289_3_1 + v_and19_i285_3_1;
assume eq v_xor2569_i290_3_1 v_add23_i289_3_1 + v_and19_i285_3_1 && true;
(*   %add82.3.1 = add i64 %xor68.i278.3.1, %add82.3 *)
adds discard_646 v_add82_3_1 v_xor68_i278_3_1 v_add82_3;
(*   %xor.i256.3.1 = xor i64 %add82.3.1, %shl.i277.3.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_3_1 v_add82_3_1 v_shl_i277_3_1;
(*   %xor1.i257.3.1 = xor i64 %shl.i277.3.1, %add82.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_3_1 v_shl_i277_3_1 v_add82_3;
(*   %or.i258.3.1 = or i64 %xor.i256.3.1, %xor1.i257.3.1 *)
(* You may need to modify here *)
or uint64 v_or_i258_3_1 v_xor_i256_3_1 v_xor1_i257_3_1;
(*   %xor2.i259.3.1 = xor i64 %or.i258.3.1, %add82.3.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_3_1 v_or_i258_3_1 v_add82_3_1;
(*   %shr.i260.3.1 = lshr i64 %xor2.i259.3.1, 63 *)
(* You may need to modify here *)
split v_shr_i260_3_1 tmp_to_be_used v_xor2_i259_3_1 63;
(* generated by python *)
assert true && limbs 64 [v_add82_3_1, v_shr_i260_3_1] = limbs 64 [v_xor68_i278_3_1, 0@64] + limbs 64 [v_add82_3, 0@64];
assume limbs 64 [v_add82_3_1, v_shr_i260_3_1] = limbs 64 [v_xor68_i278_3_1, 0] + limbs 64 [v_add82_3, 0] && true;
(*   %add89.3.1 = add i64 %shr.i260.3.1, %xor2569.i290.3.1 *)
adds discard_647 v_add89_3_1 v_shr_i260_3_1 v_xor2569_i290_3_1;
(* Heuristics applied. *)
assert true && eq discard_647 0@1;
assume eq discard_647 0 && true;
(*   %add90.3.1 = add i64 %add89.3.1, %add90.3 *)
adds discard_648 v_add90_3_1 v_add89_3_1 v_add90_3;
(* Heuristics applied. *)
assert true && eq discard_648 0@1;
assume eq discard_648 0 && true;
(*   %199 = xor i64 %add89.3.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v199 v_add89_3_1 (0x8000000000000000)@uint64;
(*   %xor2.i253.3.1 = and i64 %199, %add23.i289.3.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_3_1 v199 v_add23_i289_3_1;
(*   %xor.i244.3.1 = xor i64 %add90.3.1, %add89.3.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_3_1 v_add90_3_1 v_add89_3_1;
(*   %xor1.i245.3.1 = xor i64 %add89.3.1, %add90.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_3_1 v_add89_3_1 v_add90_3;
(*   %or.i246.3.1 = or i64 %xor.i244.3.1, %xor1.i245.3.1 *)
(* You may need to modify here *)
or uint64 v_or_i246_3_1 v_xor_i244_3_1 v_xor1_i245_3_1;
(*   %xor2.i247.3.1 = xor i64 %or.i246.3.1, %add90.3.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_3_1 v_or_i246_3_1 v_add90_3_1;
(*   %shr.i254326.3.1 = or i64 %xor2.i247.3.1, %xor2.i253.3.1 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_3_1 v_xor2_i247_3_1 v_xor2_i253_3_1;
(*   %or94325.3.1 = lshr i64 %shr.i254326.3.1, 63 *)
(* You may need to modify here *)
split v_or94325_3_1 tmp_to_be_used v_shr_i254326_3_1 63;
(* generated by python *)
assert true && limbs 64 [v_add90_3_1, v_or94325_3_1] = limbs 64 [v_shr_i260_3_1, 0@64] + limbs 64 [v_xor2569_i290_3_1, 0@64] + limbs 64 [v_add90_3, 0@64];
assume limbs 64 [v_add90_3_1, v_or94325_3_1] = limbs 64 [v_shr_i260_3_1, 0] + limbs 64 [v_xor2569_i290_3_1, 0] + limbs 64 [v_add90_3, 0] && true;
(*   %add96.3.1 = add nuw nsw i64 %or94325.3.1, %or94325.3 *)
adds discard_649 v_add96_3_1 v_or94325_3_1 v_or94325_3;
(* Heuristics applied. *)
assert true && eq discard_649 0@1;
assume eq discard_649 0 && true;
(*   %arrayidx74.3.2 = getelementptr inbounds i64, i64* %mc, i64 6 *)
(*   %200 = load i64, i64* %arrayidx74.3.2, align 8, !tbaa !3 *)
mov v200 mc_48;
(*   %201 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 9), align 8, !tbaa !3 *)
mov v201 p751p1_72;
(*   %and.i262.3.2 = and i64 %200, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_3_2 v200 (0xFFFFFFFF)@uint64;
(*   %shr.i263.3.2 = lshr i64 %200, 32 *)
(* You may need to modify here *)
split v_shr_i263_3_2 tmp_to_be_used v200 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_3_2;
assume eq tmp_to_be_used v_and_i262_3_2 && true;
(*   %and1.i264.3.2 = and i64 %201, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_3_2 v201 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.3.2 = lshr i64 %201, 32 *)
(* You may need to modify here *)
split v_shr2_i265_3_2 tmp_to_be_used v201 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_3_2;
assume eq tmp_to_be_used v_and1_i264_3_2 && true;
(*   %mul.i266.3.2 = mul nuw i64 %and1.i264.3.2, %and.i262.3.2 *)
mul v_mul_i266_3_2 v_and1_i264_3_2 v_and_i262_3_2;
(*   %mul3.i267.3.2 = mul nuw i64 %shr2.i265.3.2, %and.i262.3.2 *)
mul v_mul3_i267_3_2 v_shr2_i265_3_2 v_and_i262_3_2;
(*   %mul4.i268.3.2 = mul nuw i64 %and1.i264.3.2, %shr.i263.3.2 *)
mul v_mul4_i268_3_2 v_and1_i264_3_2 v_shr_i263_3_2;
(*   %mul5.i269.3.2 = mul nuw i64 %shr2.i265.3.2, %shr.i263.3.2 *)
mul v_mul5_i269_3_2 v_shr2_i265_3_2 v_shr_i263_3_2;
(*   %and6.i270.3.2 = and i64 %mul.i266.3.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_3_2 v_mul_i266_3_2 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.3.2 = lshr i64 %mul.i266.3.2, 32 *)
(* You may need to modify here *)
split v_shr7_i271_3_2 tmp_to_be_used v_mul_i266_3_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_3_2;
assume eq tmp_to_be_used v_and6_i270_3_2 && true;
(*   %and8.i272.3.2 = and i64 %mul4.i268.3.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_3_2 v_mul4_i268_3_2 (0xFFFFFFFF)@uint64;
(*   %and9.i273.3.2 = and i64 %mul3.i267.3.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_3_2 v_mul3_i267_3_2 (0xFFFFFFFF)@uint64;
(*   %add.i274.3.2 = add nuw nsw i64 %shr7.i271.3.2, %and8.i272.3.2 *)
adds discard_650 v_add_i274_3_2 v_shr7_i271_3_2 v_and8_i272_3_2;
(* Heuristics applied. *)
assert true && eq discard_650 0@1;
assume eq discard_650 0 && true;
(*   %add10.i275.3.2 = add nuw nsw i64 %add.i274.3.2, %and9.i273.3.2 *)
adds discard_651 v_add10_i275_3_2 v_add_i274_3_2 v_and9_i273_3_2;
(* Heuristics applied. *)
assert true && eq discard_651 0@1;
assume eq discard_651 0 && true;
(*   %shr11.i276.3.2 = lshr i64 %add10.i275.3.2, 32 *)
(* You may need to modify here *)
split v_shr11_i276_3_2 tmp_to_be_used v_add10_i275_3_2 32;
(*   %shl.i277.3.2 = shl i64 %add10.i275.3.2, 32 *)
shls discard_652 v_shl_i277_3_2 v_add10_i275_3_2 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_3_2 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_3_2 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.3.2 = or i64 %shl.i277.3.2, %and6.i270.3.2 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_3_2 v_shl_i277_3_2 v_and6_i270_3_2;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_3_2 v_shl_i277_3_2 + v_and6_i270_3_2;
assume eq v_xor68_i278_3_2 v_shl_i277_3_2 + v_and6_i270_3_2 && true;
(*   %shr13.i279.3.2 = lshr i64 %mul4.i268.3.2, 32 *)
(* You may need to modify here *)
split v_shr13_i279_3_2 tmp_to_be_used v_mul4_i268_3_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_3_2;
assume eq tmp_to_be_used v_and8_i272_3_2 && true;
(*   %shr14.i280.3.2 = lshr i64 %mul3.i267.3.2, 32 *)
(* You may need to modify here *)
split v_shr14_i280_3_2 tmp_to_be_used v_mul3_i267_3_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_3_2;
assume eq tmp_to_be_used v_and9_i273_3_2 && true;
(*   %and15.i281.3.2 = and i64 %mul5.i269.3.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_3_2 v_mul5_i269_3_2 (0xFFFFFFFF)@uint64;
(*   %add16.i282.3.2 = add nuw nsw i64 %shr13.i279.3.2, %shr14.i280.3.2 *)
adds discard_653 v_add16_i282_3_2 v_shr13_i279_3_2 v_shr14_i280_3_2;
(* Heuristics applied. *)
assert true && eq discard_653 0@1;
assume eq discard_653 0 && true;
(*   %add17.i283.3.2 = add nuw nsw i64 %add16.i282.3.2, %and15.i281.3.2 *)
adds discard_654 v_add17_i283_3_2 v_add16_i282_3_2 v_and15_i281_3_2;
(* Heuristics applied. *)
assert true && eq discard_654 0@1;
assume eq discard_654 0 && true;
(*   %add18.i284.3.2 = add nuw nsw i64 %add17.i283.3.2, %shr11.i276.3.2 *)
adds discard_655 v_add18_i284_3_2 v_add17_i283_3_2 v_shr11_i276_3_2;
(* Heuristics applied. *)
assert true && eq discard_655 0@1;
assume eq discard_655 0 && true;
(*   %and19.i285.3.2 = and i64 %add18.i284.3.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_3_2 v_add18_i284_3_2 (0xFFFFFFFF)@uint64;
(*   %and21.i287.3.2 = and i64 %add18.i284.3.2, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_3_2 v_add18_i284_3_2 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_3_2 v_and21_i287_3_2 + v_and19_i285_3_2;
assume eq v_add18_i284_3_2 v_and21_i287_3_2 + v_and19_i285_3_2 && true;
(*   %and22.i288.3.2 = and i64 %mul5.i269.3.2, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_3_2 v_mul5_i269_3_2 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_3_2 v_and22_i288_3_2 + v_and15_i281_3_2;
assume eq v_mul5_i269_3_2 v_and22_i288_3_2 + v_and15_i281_3_2 && true;
(*   %add23.i289.3.2 = add i64 %and21.i287.3.2, %and22.i288.3.2 *)
adds discard_656 v_add23_i289_3_2 v_and21_i287_3_2 v_and22_i288_3_2;
(* Heuristics applied. *)
assert true && eq discard_656 0@1;
assume eq discard_656 0 && true;
(*   %xor2569.i290.3.2 = or i64 %add23.i289.3.2, %and19.i285.3.2 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_3_2 v_add23_i289_3_2 v_and19_i285_3_2;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_3_2 v_add23_i289_3_2 + v_and19_i285_3_2;
assume eq v_xor2569_i290_3_2 v_add23_i289_3_2 + v_and19_i285_3_2 && true;
(*   %add82.3.2 = add i64 %xor68.i278.3.2, %add82.3.1 *)
adds discard_657 v_add82_3_2 v_xor68_i278_3_2 v_add82_3_1;
(*   %xor.i256.3.2 = xor i64 %add82.3.2, %shl.i277.3.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_3_2 v_add82_3_2 v_shl_i277_3_2;
(*   %xor1.i257.3.2 = xor i64 %shl.i277.3.2, %add82.3.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_3_2 v_shl_i277_3_2 v_add82_3_1;
(*   %or.i258.3.2 = or i64 %xor.i256.3.2, %xor1.i257.3.2 *)
(* You may need to modify here *)
or uint64 v_or_i258_3_2 v_xor_i256_3_2 v_xor1_i257_3_2;
(*   %xor2.i259.3.2 = xor i64 %or.i258.3.2, %add82.3.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_3_2 v_or_i258_3_2 v_add82_3_2;
(*   %shr.i260.3.2 = lshr i64 %xor2.i259.3.2, 63 *)
(* You may need to modify here *)
split v_shr_i260_3_2 tmp_to_be_used v_xor2_i259_3_2 63;
(* generated by python *)
assert true && limbs 64 [v_add82_3_2, v_shr_i260_3_2] = limbs 64 [v_xor68_i278_3_2, 0@64] + limbs 64 [v_add82_3_1, 0@64];
assume limbs 64 [v_add82_3_2, v_shr_i260_3_2] = limbs 64 [v_xor68_i278_3_2, 0] + limbs 64 [v_add82_3_1, 0] && true;
(*   %add89.3.2 = add i64 %shr.i260.3.2, %xor2569.i290.3.2 *)
adds discard_658 v_add89_3_2 v_shr_i260_3_2 v_xor2569_i290_3_2;
(* Heuristics applied. *)
assert true && eq discard_658 0@1;
assume eq discard_658 0 && true;
(*   %add90.3.2 = add i64 %add89.3.2, %add90.3.1 *)
adds discard_659 v_add90_3_2 v_add89_3_2 v_add90_3_1;
(* Heuristics applied. *)
assert true && eq discard_659 0@1;
assume eq discard_659 0 && true;
(*   %202 = xor i64 %add89.3.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v202 v_add89_3_2 (0x8000000000000000)@uint64;
(*   %xor2.i253.3.2 = and i64 %202, %add23.i289.3.2 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_3_2 v202 v_add23_i289_3_2;
(*   %xor.i244.3.2 = xor i64 %add90.3.2, %add89.3.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_3_2 v_add90_3_2 v_add89_3_2;
(*   %xor1.i245.3.2 = xor i64 %add89.3.2, %add90.3.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_3_2 v_add89_3_2 v_add90_3_1;
(*   %or.i246.3.2 = or i64 %xor.i244.3.2, %xor1.i245.3.2 *)
(* You may need to modify here *)
or uint64 v_or_i246_3_2 v_xor_i244_3_2 v_xor1_i245_3_2;
(*   %xor2.i247.3.2 = xor i64 %or.i246.3.2, %add90.3.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_3_2 v_or_i246_3_2 v_add90_3_2;
(*   %shr.i254326.3.2 = or i64 %xor2.i247.3.2, %xor2.i253.3.2 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_3_2 v_xor2_i247_3_2 v_xor2_i253_3_2;
(*   %or94325.3.2 = lshr i64 %shr.i254326.3.2, 63 *)
(* You may need to modify here *)
split v_or94325_3_2 tmp_to_be_used v_shr_i254326_3_2 63;
(* generated by python *)
assert true && limbs 64 [v_add90_3_2, v_or94325_3_2] = limbs 64 [v_shr_i260_3_2, 0@64] + limbs 64 [v_xor2569_i290_3_2, 0@64] + limbs 64 [v_add90_3_1, 0@64];
assume limbs 64 [v_add90_3_2, v_or94325_3_2] = limbs 64 [v_shr_i260_3_2, 0] + limbs 64 [v_xor2569_i290_3_2, 0] + limbs 64 [v_add90_3_1, 0] && true;
(*   %add96.3.2 = add nsw i64 %or94325.3.2, %add96.3.1 *)
adds discard_660 v_add96_3_2 v_or94325_3_2 v_add96_3_1;
(* Heuristics applied. *)
assert true && eq discard_660 0@1;
assume eq discard_660 0 && true;
(*   %arrayidx74.3.3 = getelementptr inbounds i64, i64* %mc, i64 7 *)
(*   %203 = load i64, i64* %arrayidx74.3.3, align 8, !tbaa !3 *)
mov v203 mc_56;
(*   %204 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 8), align 16, !tbaa !3 *)
mov v204 p751p1_64;
(*   %and.i262.3.3 = and i64 %203, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_3_3 v203 (0xFFFFFFFF)@uint64;
(*   %shr.i263.3.3 = lshr i64 %203, 32 *)
(* You may need to modify here *)
split v_shr_i263_3_3 tmp_to_be_used v203 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_3_3;
assume eq tmp_to_be_used v_and_i262_3_3 && true;
(*   %and1.i264.3.3 = and i64 %204, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_3_3 v204 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.3.3 = lshr i64 %204, 32 *)
(* You may need to modify here *)
split v_shr2_i265_3_3 tmp_to_be_used v204 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_3_3;
assume eq tmp_to_be_used v_and1_i264_3_3 && true;
(*   %mul.i266.3.3 = mul nuw i64 %and1.i264.3.3, %and.i262.3.3 *)
mul v_mul_i266_3_3 v_and1_i264_3_3 v_and_i262_3_3;
(*   %mul3.i267.3.3 = mul nuw i64 %shr2.i265.3.3, %and.i262.3.3 *)
mul v_mul3_i267_3_3 v_shr2_i265_3_3 v_and_i262_3_3;
(*   %mul4.i268.3.3 = mul nuw i64 %and1.i264.3.3, %shr.i263.3.3 *)
mul v_mul4_i268_3_3 v_and1_i264_3_3 v_shr_i263_3_3;
(*   %mul5.i269.3.3 = mul nuw i64 %shr2.i265.3.3, %shr.i263.3.3 *)
mul v_mul5_i269_3_3 v_shr2_i265_3_3 v_shr_i263_3_3;
(*   %and6.i270.3.3 = and i64 %mul.i266.3.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_3_3 v_mul_i266_3_3 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.3.3 = lshr i64 %mul.i266.3.3, 32 *)
(* You may need to modify here *)
split v_shr7_i271_3_3 tmp_to_be_used v_mul_i266_3_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_3_3;
assume eq tmp_to_be_used v_and6_i270_3_3 && true;
(*   %and8.i272.3.3 = and i64 %mul4.i268.3.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_3_3 v_mul4_i268_3_3 (0xFFFFFFFF)@uint64;
(*   %and9.i273.3.3 = and i64 %mul3.i267.3.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_3_3 v_mul3_i267_3_3 (0xFFFFFFFF)@uint64;
(*   %add.i274.3.3 = add nuw nsw i64 %shr7.i271.3.3, %and8.i272.3.3 *)
adds discard_661 v_add_i274_3_3 v_shr7_i271_3_3 v_and8_i272_3_3;
(* Heuristics applied. *)
assert true && eq discard_661 0@1;
assume eq discard_661 0 && true;
(*   %add10.i275.3.3 = add nuw nsw i64 %add.i274.3.3, %and9.i273.3.3 *)
adds discard_662 v_add10_i275_3_3 v_add_i274_3_3 v_and9_i273_3_3;
(* Heuristics applied. *)
assert true && eq discard_662 0@1;
assume eq discard_662 0 && true;
(*   %shr11.i276.3.3 = lshr i64 %add10.i275.3.3, 32 *)
(* You may need to modify here *)
split v_shr11_i276_3_3 tmp_to_be_used v_add10_i275_3_3 32;
(*   %shl.i277.3.3 = shl i64 %add10.i275.3.3, 32 *)
shls discard_663 v_shl_i277_3_3 v_add10_i275_3_3 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_3_3 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_3_3 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.3.3 = or i64 %shl.i277.3.3, %and6.i270.3.3 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_3_3 v_shl_i277_3_3 v_and6_i270_3_3;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_3_3 v_shl_i277_3_3 + v_and6_i270_3_3;
assume eq v_xor68_i278_3_3 v_shl_i277_3_3 + v_and6_i270_3_3 && true;
(*   %shr13.i279.3.3 = lshr i64 %mul4.i268.3.3, 32 *)
(* You may need to modify here *)
split v_shr13_i279_3_3 tmp_to_be_used v_mul4_i268_3_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_3_3;
assume eq tmp_to_be_used v_and8_i272_3_3 && true;
(*   %shr14.i280.3.3 = lshr i64 %mul3.i267.3.3, 32 *)
(* You may need to modify here *)
split v_shr14_i280_3_3 tmp_to_be_used v_mul3_i267_3_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_3_3;
assume eq tmp_to_be_used v_and9_i273_3_3 && true;
(*   %and15.i281.3.3 = and i64 %mul5.i269.3.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_3_3 v_mul5_i269_3_3 (0xFFFFFFFF)@uint64;
(*   %add16.i282.3.3 = add nuw nsw i64 %shr13.i279.3.3, %shr14.i280.3.3 *)
adds discard_664 v_add16_i282_3_3 v_shr13_i279_3_3 v_shr14_i280_3_3;
(* Heuristics applied. *)
assert true && eq discard_664 0@1;
assume eq discard_664 0 && true;
(*   %add17.i283.3.3 = add nuw nsw i64 %add16.i282.3.3, %and15.i281.3.3 *)
adds discard_665 v_add17_i283_3_3 v_add16_i282_3_3 v_and15_i281_3_3;
(* Heuristics applied. *)
assert true && eq discard_665 0@1;
assume eq discard_665 0 && true;
(*   %add18.i284.3.3 = add nuw nsw i64 %add17.i283.3.3, %shr11.i276.3.3 *)
adds discard_666 v_add18_i284_3_3 v_add17_i283_3_3 v_shr11_i276_3_3;
(* Heuristics applied. *)
assert true && eq discard_666 0@1;
assume eq discard_666 0 && true;
(*   %and19.i285.3.3 = and i64 %add18.i284.3.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_3_3 v_add18_i284_3_3 (0xFFFFFFFF)@uint64;
(*   %and21.i287.3.3 = and i64 %add18.i284.3.3, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_3_3 v_add18_i284_3_3 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_3_3 v_and21_i287_3_3 + v_and19_i285_3_3;
assume eq v_add18_i284_3_3 v_and21_i287_3_3 + v_and19_i285_3_3 && true;
(*   %and22.i288.3.3 = and i64 %mul5.i269.3.3, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_3_3 v_mul5_i269_3_3 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_3_3 v_and22_i288_3_3 + v_and15_i281_3_3;
assume eq v_mul5_i269_3_3 v_and22_i288_3_3 + v_and15_i281_3_3 && true;
(*   %add23.i289.3.3 = add i64 %and21.i287.3.3, %and22.i288.3.3 *)
adds discard_667 v_add23_i289_3_3 v_and21_i287_3_3 v_and22_i288_3_3;
(* Heuristics applied. *)
assert true && eq discard_667 0@1;
assume eq discard_667 0 && true;
(*   %xor2569.i290.3.3 = or i64 %add23.i289.3.3, %and19.i285.3.3 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_3_3 v_add23_i289_3_3 v_and19_i285_3_3;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_3_3 v_add23_i289_3_3 + v_and19_i285_3_3;
assume eq v_xor2569_i290_3_3 v_add23_i289_3_3 + v_and19_i285_3_3 && true;
(*   %add82.3.3 = add i64 %xor68.i278.3.3, %add82.3.2 *)
adds discard_668 v_add82_3_3 v_xor68_i278_3_3 v_add82_3_2;
(*   %xor.i256.3.3 = xor i64 %add82.3.3, %shl.i277.3.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_3_3 v_add82_3_3 v_shl_i277_3_3;
(*   %xor1.i257.3.3 = xor i64 %shl.i277.3.3, %add82.3.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_3_3 v_shl_i277_3_3 v_add82_3_2;
(*   %or.i258.3.3 = or i64 %xor.i256.3.3, %xor1.i257.3.3 *)
(* You may need to modify here *)
or uint64 v_or_i258_3_3 v_xor_i256_3_3 v_xor1_i257_3_3;
(*   %xor2.i259.3.3 = xor i64 %or.i258.3.3, %add82.3.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_3_3 v_or_i258_3_3 v_add82_3_3;
(*   %shr.i260.3.3 = lshr i64 %xor2.i259.3.3, 63 *)
(* You may need to modify here *)
split v_shr_i260_3_3 tmp_to_be_used v_xor2_i259_3_3 63;
(* generated by python *)
assert true && limbs 64 [v_add82_3_3, v_shr_i260_3_3] = limbs 64 [v_xor68_i278_3_3, 0@64] + limbs 64 [v_add82_3_2, 0@64];
assume limbs 64 [v_add82_3_3, v_shr_i260_3_3] = limbs 64 [v_xor68_i278_3_3, 0] + limbs 64 [v_add82_3_2, 0] && true;
(*   %add89.3.3 = add i64 %shr.i260.3.3, %xor2569.i290.3.3 *)
adds discard_669 v_add89_3_3 v_shr_i260_3_3 v_xor2569_i290_3_3;
(* Heuristics applied. *)
assert true && eq discard_669 0@1;
assume eq discard_669 0 && true;
(*   %add90.3.3 = add i64 %add89.3.3, %add90.3.2 *)
adds discard_670 v_add90_3_3 v_add89_3_3 v_add90_3_2;
(* Heuristics applied. *)
assert true && eq discard_670 0@1;
assume eq discard_670 0 && true;
(*   %205 = xor i64 %add89.3.3, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v205 v_add89_3_3 (0x8000000000000000)@uint64;
(*   %xor2.i253.3.3 = and i64 %205, %add23.i289.3.3 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_3_3 v205 v_add23_i289_3_3;
(*   %xor.i244.3.3 = xor i64 %add90.3.3, %add89.3.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_3_3 v_add90_3_3 v_add89_3_3;
(*   %xor1.i245.3.3 = xor i64 %add89.3.3, %add90.3.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_3_3 v_add89_3_3 v_add90_3_2;
(*   %or.i246.3.3 = or i64 %xor.i244.3.3, %xor1.i245.3.3 *)
(* You may need to modify here *)
or uint64 v_or_i246_3_3 v_xor_i244_3_3 v_xor1_i245_3_3;
(*   %xor2.i247.3.3 = xor i64 %or.i246.3.3, %add90.3.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_3_3 v_or_i246_3_3 v_add90_3_3;
(*   %shr.i254326.3.3 = or i64 %xor2.i247.3.3, %xor2.i253.3.3 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_3_3 v_xor2_i247_3_3 v_xor2_i253_3_3;
(*   %or94325.3.3 = lshr i64 %shr.i254326.3.3, 63 *)
(* You may need to modify here *)
split v_or94325_3_3 tmp_to_be_used v_shr_i254326_3_3 63;
(* generated by python *)
assert true && limbs 64 [v_add90_3_3, v_or94325_3_3] = limbs 64 [v_shr_i260_3_3, 0@64] + limbs 64 [v_xor2569_i290_3_3, 0@64] + limbs 64 [v_add90_3_2, 0@64];
assume limbs 64 [v_add90_3_3, v_or94325_3_3] = limbs 64 [v_shr_i260_3_3, 0] + limbs 64 [v_xor2569_i290_3_3, 0] + limbs 64 [v_add90_3_2, 0] && true;
(*   %add96.3.3 = add nsw i64 %or94325.3.3, %add96.3.2 *)
adds discard_671 v_add96_3_3 v_or94325_3_3 v_add96_3_2;
(* Heuristics applied. *)
assert true && eq discard_671 0@1;
assume eq discard_671 0 && true;
(*   %arrayidx74.3.4 = getelementptr inbounds i64, i64* %mc, i64 8 *)
(*   %206 = load i64, i64* %arrayidx74.3.4, align 8, !tbaa !3 *)
mov v206 mc_64;
(*   %207 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 7), align 8, !tbaa !3 *)
mov v207 p751p1_56;
(*   %and.i262.3.4 = and i64 %206, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_3_4 v206 (0xFFFFFFFF)@uint64;
(*   %shr.i263.3.4 = lshr i64 %206, 32 *)
(* You may need to modify here *)
split v_shr_i263_3_4 tmp_to_be_used v206 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_3_4;
assume eq tmp_to_be_used v_and_i262_3_4 && true;
(*   %and1.i264.3.4 = and i64 %207, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_3_4 v207 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.3.4 = lshr i64 %207, 32 *)
(* You may need to modify here *)
split v_shr2_i265_3_4 tmp_to_be_used v207 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_3_4;
assume eq tmp_to_be_used v_and1_i264_3_4 && true;
(*   %mul.i266.3.4 = mul nuw i64 %and1.i264.3.4, %and.i262.3.4 *)
mul v_mul_i266_3_4 v_and1_i264_3_4 v_and_i262_3_4;
(*   %mul3.i267.3.4 = mul nuw i64 %shr2.i265.3.4, %and.i262.3.4 *)
mul v_mul3_i267_3_4 v_shr2_i265_3_4 v_and_i262_3_4;
(*   %mul4.i268.3.4 = mul nuw i64 %and1.i264.3.4, %shr.i263.3.4 *)
mul v_mul4_i268_3_4 v_and1_i264_3_4 v_shr_i263_3_4;
(*   %mul5.i269.3.4 = mul nuw i64 %shr2.i265.3.4, %shr.i263.3.4 *)
mul v_mul5_i269_3_4 v_shr2_i265_3_4 v_shr_i263_3_4;
(*   %and6.i270.3.4 = and i64 %mul.i266.3.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_3_4 v_mul_i266_3_4 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.3.4 = lshr i64 %mul.i266.3.4, 32 *)
(* You may need to modify here *)
split v_shr7_i271_3_4 tmp_to_be_used v_mul_i266_3_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_3_4;
assume eq tmp_to_be_used v_and6_i270_3_4 && true;
(*   %and8.i272.3.4 = and i64 %mul4.i268.3.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_3_4 v_mul4_i268_3_4 (0xFFFFFFFF)@uint64;
(*   %and9.i273.3.4 = and i64 %mul3.i267.3.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_3_4 v_mul3_i267_3_4 (0xFFFFFFFF)@uint64;
(*   %add.i274.3.4 = add nuw nsw i64 %shr7.i271.3.4, %and8.i272.3.4 *)
adds discard_672 v_add_i274_3_4 v_shr7_i271_3_4 v_and8_i272_3_4;
(* Heuristics applied. *)
assert true && eq discard_672 0@1;
assume eq discard_672 0 && true;
(*   %add10.i275.3.4 = add nuw nsw i64 %add.i274.3.4, %and9.i273.3.4 *)
adds discard_673 v_add10_i275_3_4 v_add_i274_3_4 v_and9_i273_3_4;
(* Heuristics applied. *)
assert true && eq discard_673 0@1;
assume eq discard_673 0 && true;
(*   %shr11.i276.3.4 = lshr i64 %add10.i275.3.4, 32 *)
(* You may need to modify here *)
split v_shr11_i276_3_4 tmp_to_be_used v_add10_i275_3_4 32;
(*   %shl.i277.3.4 = shl i64 %add10.i275.3.4, 32 *)
shls discard_674 v_shl_i277_3_4 v_add10_i275_3_4 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_3_4 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_3_4 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.3.4 = or i64 %shl.i277.3.4, %and6.i270.3.4 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_3_4 v_shl_i277_3_4 v_and6_i270_3_4;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_3_4 v_shl_i277_3_4 + v_and6_i270_3_4;
assume eq v_xor68_i278_3_4 v_shl_i277_3_4 + v_and6_i270_3_4 && true;
(*   %shr13.i279.3.4 = lshr i64 %mul4.i268.3.4, 32 *)
(* You may need to modify here *)
split v_shr13_i279_3_4 tmp_to_be_used v_mul4_i268_3_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_3_4;
assume eq tmp_to_be_used v_and8_i272_3_4 && true;
(*   %shr14.i280.3.4 = lshr i64 %mul3.i267.3.4, 32 *)
(* You may need to modify here *)
split v_shr14_i280_3_4 tmp_to_be_used v_mul3_i267_3_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_3_4;
assume eq tmp_to_be_used v_and9_i273_3_4 && true;
(*   %and15.i281.3.4 = and i64 %mul5.i269.3.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_3_4 v_mul5_i269_3_4 (0xFFFFFFFF)@uint64;
(*   %add16.i282.3.4 = add nuw nsw i64 %shr13.i279.3.4, %shr14.i280.3.4 *)
adds discard_675 v_add16_i282_3_4 v_shr13_i279_3_4 v_shr14_i280_3_4;
(* Heuristics applied. *)
assert true && eq discard_675 0@1;
assume eq discard_675 0 && true;
(*   %add17.i283.3.4 = add nuw nsw i64 %add16.i282.3.4, %and15.i281.3.4 *)
adds discard_676 v_add17_i283_3_4 v_add16_i282_3_4 v_and15_i281_3_4;
(* Heuristics applied. *)
assert true && eq discard_676 0@1;
assume eq discard_676 0 && true;
(*   %add18.i284.3.4 = add nuw nsw i64 %add17.i283.3.4, %shr11.i276.3.4 *)
adds discard_677 v_add18_i284_3_4 v_add17_i283_3_4 v_shr11_i276_3_4;
(* Heuristics applied. *)
assert true && eq discard_677 0@1;
assume eq discard_677 0 && true;
(*   %and19.i285.3.4 = and i64 %add18.i284.3.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_3_4 v_add18_i284_3_4 (0xFFFFFFFF)@uint64;
(*   %and21.i287.3.4 = and i64 %add18.i284.3.4, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_3_4 v_add18_i284_3_4 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_3_4 v_and21_i287_3_4 + v_and19_i285_3_4;
assume eq v_add18_i284_3_4 v_and21_i287_3_4 + v_and19_i285_3_4 && true;
(*   %and22.i288.3.4 = and i64 %mul5.i269.3.4, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_3_4 v_mul5_i269_3_4 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_3_4 v_and22_i288_3_4 + v_and15_i281_3_4;
assume eq v_mul5_i269_3_4 v_and22_i288_3_4 + v_and15_i281_3_4 && true;
(*   %add23.i289.3.4 = add i64 %and21.i287.3.4, %and22.i288.3.4 *)
adds discard_678 v_add23_i289_3_4 v_and21_i287_3_4 v_and22_i288_3_4;
(* Heuristics applied. *)
assert true && eq discard_678 0@1;
assume eq discard_678 0 && true;
(*   %xor2569.i290.3.4 = or i64 %add23.i289.3.4, %and19.i285.3.4 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_3_4 v_add23_i289_3_4 v_and19_i285_3_4;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_3_4 v_add23_i289_3_4 + v_and19_i285_3_4;
assume eq v_xor2569_i290_3_4 v_add23_i289_3_4 + v_and19_i285_3_4 && true;
(*   %add82.3.4 = add i64 %xor68.i278.3.4, %add82.3.3 *)
adds discard_679 v_add82_3_4 v_xor68_i278_3_4 v_add82_3_3;
(*   %xor.i256.3.4 = xor i64 %add82.3.4, %shl.i277.3.4 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_3_4 v_add82_3_4 v_shl_i277_3_4;
(*   %xor1.i257.3.4 = xor i64 %shl.i277.3.4, %add82.3.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_3_4 v_shl_i277_3_4 v_add82_3_3;
(*   %or.i258.3.4 = or i64 %xor.i256.3.4, %xor1.i257.3.4 *)
(* You may need to modify here *)
or uint64 v_or_i258_3_4 v_xor_i256_3_4 v_xor1_i257_3_4;
(*   %xor2.i259.3.4 = xor i64 %or.i258.3.4, %add82.3.4 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_3_4 v_or_i258_3_4 v_add82_3_4;
(*   %shr.i260.3.4 = lshr i64 %xor2.i259.3.4, 63 *)
(* You may need to modify here *)
split v_shr_i260_3_4 tmp_to_be_used v_xor2_i259_3_4 63;
(* generated by python *)
assert true && limbs 64 [v_add82_3_4, v_shr_i260_3_4] = limbs 64 [v_xor68_i278_3_4, 0@64] + limbs 64 [v_add82_3_3, 0@64];
assume limbs 64 [v_add82_3_4, v_shr_i260_3_4] = limbs 64 [v_xor68_i278_3_4, 0] + limbs 64 [v_add82_3_3, 0] && true;
(*   %add89.3.4 = add i64 %shr.i260.3.4, %xor2569.i290.3.4 *)
adds discard_680 v_add89_3_4 v_shr_i260_3_4 v_xor2569_i290_3_4;
(* Heuristics applied. *)
assert true && eq discard_680 0@1;
assume eq discard_680 0 && true;
(*   %add90.3.4 = add i64 %add89.3.4, %add90.3.3 *)
adds discard_681 v_add90_3_4 v_add89_3_4 v_add90_3_3;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_681 0@1; *)
(* assume eq discard_681 0 && true; *)
(*   %208 = xor i64 %add89.3.4, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v208 v_add89_3_4 (0x8000000000000000)@uint64;
(*   %xor2.i253.3.4 = and i64 %208, %add23.i289.3.4 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_3_4 v208 v_add23_i289_3_4;
(*   %xor.i244.3.4 = xor i64 %add90.3.4, %add89.3.4 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_3_4 v_add90_3_4 v_add89_3_4;
(*   %xor1.i245.3.4 = xor i64 %add89.3.4, %add90.3.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_3_4 v_add89_3_4 v_add90_3_3;
(*   %or.i246.3.4 = or i64 %xor.i244.3.4, %xor1.i245.3.4 *)
(* You may need to modify here *)
or uint64 v_or_i246_3_4 v_xor_i244_3_4 v_xor1_i245_3_4;
(*   %xor2.i247.3.4 = xor i64 %or.i246.3.4, %add90.3.4 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_3_4 v_or_i246_3_4 v_add90_3_4;
(*   %shr.i254326.3.4 = or i64 %xor2.i247.3.4, %xor2.i253.3.4 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_3_4 v_xor2_i247_3_4 v_xor2_i253_3_4;
(*   %or94325.3.4 = lshr i64 %shr.i254326.3.4, 63 *)
(* You may need to modify here *)
split v_or94325_3_4 tmp_to_be_used v_shr_i254326_3_4 63;
(* generated by python *)
assert true && limbs 64 [v_add90_3_4, v_or94325_3_4] = limbs 64 [v_shr_i260_3_4, 0@64] + limbs 64 [v_xor2569_i290_3_4, 0@64] + limbs 64 [v_add90_3_3, 0@64];
assume limbs 64 [v_add90_3_4, v_or94325_3_4] = limbs 64 [v_shr_i260_3_4, 0] + limbs 64 [v_xor2569_i290_3_4, 0] + limbs 64 [v_add90_3_3, 0] && true;
(*   %add96.3.4 = add i64 %or94325.3.4, %add96.3.3 *)
adds discard_682 v_add96_3_4 v_or94325_3_4 v_add96_3_3;
(* Heuristics applied. *)
assert true && eq discard_682 0@1;
assume eq discard_682 0 && true;
(*   %arrayidx74.3.5 = getelementptr inbounds i64, i64* %mc, i64 9 *)
(*   %209 = load i64, i64* %arrayidx74.3.5, align 8, !tbaa !3 *)
mov v209 mc_72;
(*   %210 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 6), align 16, !tbaa !3 *)
mov v210 p751p1_48;
(*   %and.i262.3.5 = and i64 %209, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_3_5 v209 (0xFFFFFFFF)@uint64;
(*   %shr.i263.3.5 = lshr i64 %209, 32 *)
(* You may need to modify here *)
split v_shr_i263_3_5 tmp_to_be_used v209 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_3_5;
assume eq tmp_to_be_used v_and_i262_3_5 && true;
(*   %and1.i264.3.5 = and i64 %210, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_3_5 v210 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.3.5 = lshr i64 %210, 32 *)
(* You may need to modify here *)
split v_shr2_i265_3_5 tmp_to_be_used v210 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_3_5;
assume eq tmp_to_be_used v_and1_i264_3_5 && true;
(*   %mul.i266.3.5 = mul nuw i64 %and1.i264.3.5, %and.i262.3.5 *)
mul v_mul_i266_3_5 v_and1_i264_3_5 v_and_i262_3_5;
(*   %mul3.i267.3.5 = mul nuw i64 %shr2.i265.3.5, %and.i262.3.5 *)
mul v_mul3_i267_3_5 v_shr2_i265_3_5 v_and_i262_3_5;
(*   %mul4.i268.3.5 = mul nuw i64 %and1.i264.3.5, %shr.i263.3.5 *)
mul v_mul4_i268_3_5 v_and1_i264_3_5 v_shr_i263_3_5;
(*   %mul5.i269.3.5 = mul nuw i64 %shr2.i265.3.5, %shr.i263.3.5 *)
mul v_mul5_i269_3_5 v_shr2_i265_3_5 v_shr_i263_3_5;
(*   %and6.i270.3.5 = and i64 %mul.i266.3.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_3_5 v_mul_i266_3_5 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.3.5 = lshr i64 %mul.i266.3.5, 32 *)
(* You may need to modify here *)
split v_shr7_i271_3_5 tmp_to_be_used v_mul_i266_3_5 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_3_5;
assume eq tmp_to_be_used v_and6_i270_3_5 && true;
(*   %and8.i272.3.5 = and i64 %mul4.i268.3.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_3_5 v_mul4_i268_3_5 (0xFFFFFFFF)@uint64;
(*   %and9.i273.3.5 = and i64 %mul3.i267.3.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_3_5 v_mul3_i267_3_5 (0xFFFFFFFF)@uint64;
(*   %add.i274.3.5 = add nuw nsw i64 %shr7.i271.3.5, %and8.i272.3.5 *)
adds discard_683 v_add_i274_3_5 v_shr7_i271_3_5 v_and8_i272_3_5;
(* Heuristics applied. *)
assert true && eq discard_683 0@1;
assume eq discard_683 0 && true;
(*   %add10.i275.3.5 = add nuw nsw i64 %add.i274.3.5, %and9.i273.3.5 *)
adds discard_684 v_add10_i275_3_5 v_add_i274_3_5 v_and9_i273_3_5;
(* Heuristics applied. *)
assert true && eq discard_684 0@1;
assume eq discard_684 0 && true;
(*   %shr11.i276.3.5 = lshr i64 %add10.i275.3.5, 32 *)
(* You may need to modify here *)
split v_shr11_i276_3_5 tmp_to_be_used v_add10_i275_3_5 32;
(*   %shl.i277.3.5 = shl i64 %add10.i275.3.5, 32 *)
shls discard_685 v_shl_i277_3_5 v_add10_i275_3_5 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_3_5 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_3_5 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.3.5 = or i64 %shl.i277.3.5, %and6.i270.3.5 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_3_5 v_shl_i277_3_5 v_and6_i270_3_5;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_3_5 v_shl_i277_3_5 + v_and6_i270_3_5;
assume eq v_xor68_i278_3_5 v_shl_i277_3_5 + v_and6_i270_3_5 && true;
(*   %shr13.i279.3.5 = lshr i64 %mul4.i268.3.5, 32 *)
(* You may need to modify here *)
split v_shr13_i279_3_5 tmp_to_be_used v_mul4_i268_3_5 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_3_5;
assume eq tmp_to_be_used v_and8_i272_3_5 && true;
(*   %shr14.i280.3.5 = lshr i64 %mul3.i267.3.5, 32 *)
(* You may need to modify here *)
split v_shr14_i280_3_5 tmp_to_be_used v_mul3_i267_3_5 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_3_5;
assume eq tmp_to_be_used v_and9_i273_3_5 && true;
(*   %and15.i281.3.5 = and i64 %mul5.i269.3.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_3_5 v_mul5_i269_3_5 (0xFFFFFFFF)@uint64;
(*   %add16.i282.3.5 = add nuw nsw i64 %shr13.i279.3.5, %shr14.i280.3.5 *)
adds discard_686 v_add16_i282_3_5 v_shr13_i279_3_5 v_shr14_i280_3_5;
(* Heuristics applied. *)
assert true && eq discard_686 0@1;
assume eq discard_686 0 && true;
(*   %add17.i283.3.5 = add nuw nsw i64 %add16.i282.3.5, %and15.i281.3.5 *)
adds discard_687 v_add17_i283_3_5 v_add16_i282_3_5 v_and15_i281_3_5;
(* Heuristics applied. *)
assert true && eq discard_687 0@1;
assume eq discard_687 0 && true;
(*   %add18.i284.3.5 = add nuw nsw i64 %add17.i283.3.5, %shr11.i276.3.5 *)
adds discard_688 v_add18_i284_3_5 v_add17_i283_3_5 v_shr11_i276_3_5;
(* Heuristics applied. *)
assert true && eq discard_688 0@1;
assume eq discard_688 0 && true;
(*   %and19.i285.3.5 = and i64 %add18.i284.3.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_3_5 v_add18_i284_3_5 (0xFFFFFFFF)@uint64;
(*   %and21.i287.3.5 = and i64 %add18.i284.3.5, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_3_5 v_add18_i284_3_5 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_3_5 v_and21_i287_3_5 + v_and19_i285_3_5;
assume eq v_add18_i284_3_5 v_and21_i287_3_5 + v_and19_i285_3_5 && true;
(*   %and22.i288.3.5 = and i64 %mul5.i269.3.5, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_3_5 v_mul5_i269_3_5 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_3_5 v_and22_i288_3_5 + v_and15_i281_3_5;
assume eq v_mul5_i269_3_5 v_and22_i288_3_5 + v_and15_i281_3_5 && true;
(*   %add23.i289.3.5 = add i64 %and21.i287.3.5, %and22.i288.3.5 *)
adds discard_689 v_add23_i289_3_5 v_and21_i287_3_5 v_and22_i288_3_5;
(* Heuristics applied. *)
assert true && eq discard_689 0@1;
assume eq discard_689 0 && true;
(*   %xor2569.i290.3.5 = or i64 %add23.i289.3.5, %and19.i285.3.5 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_3_5 v_add23_i289_3_5 v_and19_i285_3_5;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_3_5 v_add23_i289_3_5 + v_and19_i285_3_5;
assume eq v_xor2569_i290_3_5 v_add23_i289_3_5 + v_and19_i285_3_5 && true;
(*   %add82.3.5 = add i64 %xor68.i278.3.5, %add82.3.4 *)
adds discard_690 v_add82_3_5 v_xor68_i278_3_5 v_add82_3_4;
(*   %xor.i256.3.5 = xor i64 %add82.3.5, %shl.i277.3.5 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_3_5 v_add82_3_5 v_shl_i277_3_5;
(*   %xor1.i257.3.5 = xor i64 %shl.i277.3.5, %add82.3.4 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_3_5 v_shl_i277_3_5 v_add82_3_4;
(*   %or.i258.3.5 = or i64 %xor.i256.3.5, %xor1.i257.3.5 *)
(* You may need to modify here *)
or uint64 v_or_i258_3_5 v_xor_i256_3_5 v_xor1_i257_3_5;
(*   %xor2.i259.3.5 = xor i64 %or.i258.3.5, %add82.3.5 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_3_5 v_or_i258_3_5 v_add82_3_5;
(*   %shr.i260.3.5 = lshr i64 %xor2.i259.3.5, 63 *)
(* You may need to modify here *)
split v_shr_i260_3_5 tmp_to_be_used v_xor2_i259_3_5 63;
(* generated by python *)
assert true && limbs 64 [v_add82_3_5, v_shr_i260_3_5] = limbs 64 [v_xor68_i278_3_5, 0@64] + limbs 64 [v_add82_3_4, 0@64];
assume limbs 64 [v_add82_3_5, v_shr_i260_3_5] = limbs 64 [v_xor68_i278_3_5, 0] + limbs 64 [v_add82_3_4, 0] && true;
(*   %add89.3.5 = add i64 %shr.i260.3.5, %xor2569.i290.3.5 *)
adds discard_691 v_add89_3_5 v_shr_i260_3_5 v_xor2569_i290_3_5;
(* Heuristics applied. *)
assert true && eq discard_691 0@1;
assume eq discard_691 0 && true;
(*   %add90.3.5 = add i64 %add89.3.5, %add90.3.4 *)
adds discard_692 v_add90_3_5 v_add89_3_5 v_add90_3_4;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_692 0@1; *)
(* assume eq discard_692 0 && true; *)
(*   %211 = xor i64 %add89.3.5, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v211 v_add89_3_5 (0x8000000000000000)@uint64;
(*   %xor2.i253.3.5 = and i64 %211, %add23.i289.3.5 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_3_5 v211 v_add23_i289_3_5;
(*   %xor.i244.3.5 = xor i64 %add90.3.5, %add89.3.5 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_3_5 v_add90_3_5 v_add89_3_5;
(*   %xor1.i245.3.5 = xor i64 %add89.3.5, %add90.3.4 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_3_5 v_add89_3_5 v_add90_3_4;
(*   %or.i246.3.5 = or i64 %xor.i244.3.5, %xor1.i245.3.5 *)
(* You may need to modify here *)
or uint64 v_or_i246_3_5 v_xor_i244_3_5 v_xor1_i245_3_5;
(*   %xor2.i247.3.5 = xor i64 %or.i246.3.5, %add90.3.5 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_3_5 v_or_i246_3_5 v_add90_3_5;
(*   %shr.i254326.3.5 = or i64 %xor2.i247.3.5, %xor2.i253.3.5 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_3_5 v_xor2_i247_3_5 v_xor2_i253_3_5;
(*   %or94325.3.5 = lshr i64 %shr.i254326.3.5, 63 *)
(* You may need to modify here *)
split v_or94325_3_5 tmp_to_be_used v_shr_i254326_3_5 63;
(* generated by python *)
assert true && limbs 64 [v_add90_3_5, v_or94325_3_5] = limbs 64 [v_shr_i260_3_5, 0@64] + limbs 64 [v_xor2569_i290_3_5, 0@64] + limbs 64 [v_add90_3_4, 0@64];
assume limbs 64 [v_add90_3_5, v_or94325_3_5] = limbs 64 [v_shr_i260_3_5, 0] + limbs 64 [v_xor2569_i290_3_5, 0] + limbs 64 [v_add90_3_4, 0] && true;
(*   %add96.3.5 = add i64 %or94325.3.5, %add96.3.4 *)
adds discard_693 v_add96_3_5 v_or94325_3_5 v_add96_3_4;
(* Heuristics applied. *)
assert true && eq discard_693 0@1;
assume eq discard_693 0 && true;
(*   %arrayidx74.3.6 = getelementptr inbounds i64, i64* %mc, i64 10 *)
(*   %212 = load i64, i64* %arrayidx74.3.6, align 8, !tbaa !3 *)
mov v212 mc_80;
(*   %213 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 5), align 8, !tbaa !3 *)
mov v213 p751p1_40;
(*   %and.i262.3.6 = and i64 %212, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_3_6 v212 (0xFFFFFFFF)@uint64;
(*   %shr.i263.3.6 = lshr i64 %212, 32 *)
(* You may need to modify here *)
split v_shr_i263_3_6 tmp_to_be_used v212 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_3_6;
assume eq tmp_to_be_used v_and_i262_3_6 && true;
(*   %and1.i264.3.6 = and i64 %213, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_3_6 v213 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.3.6 = lshr i64 %213, 32 *)
(* You may need to modify here *)
split v_shr2_i265_3_6 tmp_to_be_used v213 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_3_6;
assume eq tmp_to_be_used v_and1_i264_3_6 && true;
(*   %mul.i266.3.6 = mul nuw i64 %and1.i264.3.6, %and.i262.3.6 *)
mul v_mul_i266_3_6 v_and1_i264_3_6 v_and_i262_3_6;
(*   %mul3.i267.3.6 = mul nuw i64 %shr2.i265.3.6, %and.i262.3.6 *)
mul v_mul3_i267_3_6 v_shr2_i265_3_6 v_and_i262_3_6;
(*   %mul4.i268.3.6 = mul nuw i64 %and1.i264.3.6, %shr.i263.3.6 *)
mul v_mul4_i268_3_6 v_and1_i264_3_6 v_shr_i263_3_6;
(*   %mul5.i269.3.6 = mul nuw i64 %shr2.i265.3.6, %shr.i263.3.6 *)
mul v_mul5_i269_3_6 v_shr2_i265_3_6 v_shr_i263_3_6;
(*   %and6.i270.3.6 = and i64 %mul.i266.3.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_3_6 v_mul_i266_3_6 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.3.6 = lshr i64 %mul.i266.3.6, 32 *)
(* You may need to modify here *)
split v_shr7_i271_3_6 tmp_to_be_used v_mul_i266_3_6 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_3_6;
assume eq tmp_to_be_used v_and6_i270_3_6 && true;
(*   %and8.i272.3.6 = and i64 %mul4.i268.3.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_3_6 v_mul4_i268_3_6 (0xFFFFFFFF)@uint64;
(*   %and9.i273.3.6 = and i64 %mul3.i267.3.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_3_6 v_mul3_i267_3_6 (0xFFFFFFFF)@uint64;
(*   %add.i274.3.6 = add nuw nsw i64 %shr7.i271.3.6, %and8.i272.3.6 *)
adds discard_694 v_add_i274_3_6 v_shr7_i271_3_6 v_and8_i272_3_6;
(* Heuristics applied. *)
assert true && eq discard_694 0@1;
assume eq discard_694 0 && true;
(*   %add10.i275.3.6 = add nuw nsw i64 %add.i274.3.6, %and9.i273.3.6 *)
adds discard_695 v_add10_i275_3_6 v_add_i274_3_6 v_and9_i273_3_6;
(* Heuristics applied. *)
assert true && eq discard_695 0@1;
assume eq discard_695 0 && true;
(*   %shr11.i276.3.6 = lshr i64 %add10.i275.3.6, 32 *)
(* You may need to modify here *)
split v_shr11_i276_3_6 tmp_to_be_used v_add10_i275_3_6 32;
(*   %shl.i277.3.6 = shl i64 %add10.i275.3.6, 32 *)
shls discard_696 v_shl_i277_3_6 v_add10_i275_3_6 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_3_6 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_3_6 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.3.6 = or i64 %shl.i277.3.6, %and6.i270.3.6 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_3_6 v_shl_i277_3_6 v_and6_i270_3_6;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_3_6 v_shl_i277_3_6 + v_and6_i270_3_6;
assume eq v_xor68_i278_3_6 v_shl_i277_3_6 + v_and6_i270_3_6 && true;
(*   %shr13.i279.3.6 = lshr i64 %mul4.i268.3.6, 32 *)
(* You may need to modify here *)
split v_shr13_i279_3_6 tmp_to_be_used v_mul4_i268_3_6 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_3_6;
assume eq tmp_to_be_used v_and8_i272_3_6 && true;
(*   %shr14.i280.3.6 = lshr i64 %mul3.i267.3.6, 32 *)
(* You may need to modify here *)
split v_shr14_i280_3_6 tmp_to_be_used v_mul3_i267_3_6 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_3_6;
assume eq tmp_to_be_used v_and9_i273_3_6 && true;
(*   %and15.i281.3.6 = and i64 %mul5.i269.3.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_3_6 v_mul5_i269_3_6 (0xFFFFFFFF)@uint64;
(*   %add16.i282.3.6 = add nuw nsw i64 %shr13.i279.3.6, %shr14.i280.3.6 *)
adds discard_697 v_add16_i282_3_6 v_shr13_i279_3_6 v_shr14_i280_3_6;
(* Heuristics applied. *)
assert true && eq discard_697 0@1;
assume eq discard_697 0 && true;
(*   %add17.i283.3.6 = add nuw nsw i64 %add16.i282.3.6, %and15.i281.3.6 *)
adds discard_698 v_add17_i283_3_6 v_add16_i282_3_6 v_and15_i281_3_6;
(* Heuristics applied. *)
assert true && eq discard_698 0@1;
assume eq discard_698 0 && true;
(*   %add18.i284.3.6 = add nuw nsw i64 %add17.i283.3.6, %shr11.i276.3.6 *)
adds discard_699 v_add18_i284_3_6 v_add17_i283_3_6 v_shr11_i276_3_6;
(* Heuristics applied. *)
assert true && eq discard_699 0@1;
assume eq discard_699 0 && true;
(*   %and19.i285.3.6 = and i64 %add18.i284.3.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_3_6 v_add18_i284_3_6 (0xFFFFFFFF)@uint64;
(*   %and21.i287.3.6 = and i64 %add18.i284.3.6, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_3_6 v_add18_i284_3_6 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_3_6 v_and21_i287_3_6 + v_and19_i285_3_6;
assume eq v_add18_i284_3_6 v_and21_i287_3_6 + v_and19_i285_3_6 && true;
(*   %and22.i288.3.6 = and i64 %mul5.i269.3.6, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_3_6 v_mul5_i269_3_6 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_3_6 v_and22_i288_3_6 + v_and15_i281_3_6;
assume eq v_mul5_i269_3_6 v_and22_i288_3_6 + v_and15_i281_3_6 && true;
(*   %add23.i289.3.6 = add i64 %and21.i287.3.6, %and22.i288.3.6 *)
adds discard_700 v_add23_i289_3_6 v_and21_i287_3_6 v_and22_i288_3_6;
(* Heuristics applied. *)
assert true && eq discard_700 0@1;
assume eq discard_700 0 && true;
(*   %xor2569.i290.3.6 = or i64 %add23.i289.3.6, %and19.i285.3.6 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_3_6 v_add23_i289_3_6 v_and19_i285_3_6;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_3_6 v_add23_i289_3_6 + v_and19_i285_3_6;
assume eq v_xor2569_i290_3_6 v_add23_i289_3_6 + v_and19_i285_3_6 && true;
(*   %add82.3.6 = add i64 %xor68.i278.3.6, %add82.3.5 *)
adds discard_701 v_add82_3_6 v_xor68_i278_3_6 v_add82_3_5;
(*   %xor.i256.3.6 = xor i64 %add82.3.6, %shl.i277.3.6 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_3_6 v_add82_3_6 v_shl_i277_3_6;
(*   %xor1.i257.3.6 = xor i64 %shl.i277.3.6, %add82.3.5 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_3_6 v_shl_i277_3_6 v_add82_3_5;
(*   %or.i258.3.6 = or i64 %xor.i256.3.6, %xor1.i257.3.6 *)
(* You may need to modify here *)
or uint64 v_or_i258_3_6 v_xor_i256_3_6 v_xor1_i257_3_6;
(*   %xor2.i259.3.6 = xor i64 %or.i258.3.6, %add82.3.6 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_3_6 v_or_i258_3_6 v_add82_3_6;
(*   %shr.i260.3.6 = lshr i64 %xor2.i259.3.6, 63 *)
(* You may need to modify here *)
split v_shr_i260_3_6 tmp_to_be_used v_xor2_i259_3_6 63;
(* generated by python *)
assert true && limbs 64 [v_add82_3_6, v_shr_i260_3_6] = limbs 64 [v_xor68_i278_3_6, 0@64] + limbs 64 [v_add82_3_5, 0@64];
assume limbs 64 [v_add82_3_6, v_shr_i260_3_6] = limbs 64 [v_xor68_i278_3_6, 0] + limbs 64 [v_add82_3_5, 0] && true;
(*   %add89.3.6 = add i64 %shr.i260.3.6, %xor2569.i290.3.6 *)
adds discard_702 v_add89_3_6 v_shr_i260_3_6 v_xor2569_i290_3_6;
(* Heuristics applied. *)
assert true && eq discard_702 0@1;
assume eq discard_702 0 && true;
(*   %add90.3.6 = add i64 %add89.3.6, %add90.3.5 *)
adds discard_703 v_add90_3_6 v_add89_3_6 v_add90_3_5;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_703 0@1; *)
(* assume eq discard_703 0 && true; *)
(*   %214 = xor i64 %add89.3.6, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v214 v_add89_3_6 (0x8000000000000000)@uint64;
(*   %xor2.i253.3.6 = and i64 %214, %add23.i289.3.6 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_3_6 v214 v_add23_i289_3_6;
(*   %xor.i244.3.6 = xor i64 %add90.3.6, %add89.3.6 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_3_6 v_add90_3_6 v_add89_3_6;
(*   %xor1.i245.3.6 = xor i64 %add89.3.6, %add90.3.5 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_3_6 v_add89_3_6 v_add90_3_5;
(*   %or.i246.3.6 = or i64 %xor.i244.3.6, %xor1.i245.3.6 *)
(* You may need to modify here *)
or uint64 v_or_i246_3_6 v_xor_i244_3_6 v_xor1_i245_3_6;
(*   %xor2.i247.3.6 = xor i64 %or.i246.3.6, %add90.3.6 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_3_6 v_or_i246_3_6 v_add90_3_6;
(*   %shr.i254326.3.6 = or i64 %xor2.i247.3.6, %xor2.i253.3.6 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_3_6 v_xor2_i247_3_6 v_xor2_i253_3_6;
(*   %or94325.3.6 = lshr i64 %shr.i254326.3.6, 63 *)
(* You may need to modify here *)
split v_or94325_3_6 tmp_to_be_used v_shr_i254326_3_6 63;
(* generated by python *)
assert true && limbs 64 [v_add90_3_6, v_or94325_3_6] = limbs 64 [v_shr_i260_3_6, 0@64] + limbs 64 [v_xor2569_i290_3_6, 0@64] + limbs 64 [v_add90_3_5, 0@64];
assume limbs 64 [v_add90_3_6, v_or94325_3_6] = limbs 64 [v_shr_i260_3_6, 0] + limbs 64 [v_xor2569_i290_3_6, 0] + limbs 64 [v_add90_3_5, 0] && true;
(*   %add96.3.6 = add i64 %or94325.3.6, %add96.3.5 *)
adds discard_704 v_add96_3_6 v_or94325_3_6 v_add96_3_5;
(* Heuristics applied. *)
assert true && eq discard_704 0@1;
assume eq discard_704 0 && true;
(*   %arrayidx104.3 = getelementptr inbounds i64, i64* %ma, i64 15 *)
(*   %215 = load i64, i64* %arrayidx104.3, align 8, !tbaa !3 *)
mov v215 ma_120;
(*   %add105.3 = add i64 %215, %add82.3.6 *)
adds discard_705 v_add105_3 v215 v_add82_3_6;
(*   %xor.i238.3 = xor i64 %add105.3, %add82.3.6 *)
(* You may need to modify here *)
xor uint64 v_xor_i238_3 v_add105_3 v_add82_3_6;
(*   %xor1.i239.3 = xor i64 %215, %add82.3.6 *)
(* You may need to modify here *)
xor uint64 v_xor1_i239_3 v215 v_add82_3_6;
(*   %or.i240.3 = or i64 %xor.i238.3, %xor1.i239.3 *)
(* You may need to modify here *)
or uint64 v_or_i240_3 v_xor_i238_3 v_xor1_i239_3;
(*   %xor2.i241.3 = xor i64 %or.i240.3, %add105.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i241_3 v_or_i240_3 v_add105_3;
(*   %shr.i242.3 = lshr i64 %xor2.i241.3, 63 *)
(* You may need to modify here *)
split v_shr_i242_3 tmp_to_be_used v_xor2_i241_3 63;
(* generated by python *)
assert true && limbs 64 [v_add105_3, v_shr_i242_3] = limbs 64 [v215, 0@64] + limbs 64 [v_add82_3_6, 0@64];
assume limbs 64 [v_add105_3, v_shr_i242_3] = limbs 64 [v215, 0] + limbs 64 [v_add82_3_6, 0] && true;
(*   %add111.3 = add i64 %shr.i242.3, %add90.3.6 *)
adds discard_706 v_add111_3 v_shr_i242_3 v_add90_3_6;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_706 0@1; *)
(* assume eq discard_706 0 && true; *)
(*   store i64 %add105.3, i64* %arrayidx50.3, align 8, !tbaa !3 *)
mov mc_24 v_add105_3;
(*   %216 = xor i64 %add111.3, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v216 v_add111_3 (0x8000000000000000)@uint64;
(*   %xor2.i.3 = and i64 %216, %add90.3.6 *)
(* You may need to modify here *)
and uint64 v_xor2_i_3 v216 v_add90_3_6;
(*   %shr.i237.3 = lshr i64 %xor2.i.3, 63 *)
(* You may need to modify here *)
split v_shr_i237_3 tmp_to_be_used v_xor2_i_3 63;
(* generated by python *)
assert true && limbs 64 [v_add111_3, v_shr_i237_3] = limbs 64 [v_shr_i242_3, 0@64] + limbs 64 [v_add90_3_6, 0@64];
assume limbs 64 [v_add111_3, v_shr_i237_3] = limbs 64 [v_shr_i242_3, 0] + limbs 64 [v_add90_3_6, 0] && true;
(*   %add118.3 = add i64 %shr.i237.3, %add96.3.6 *)
adds discard_707 v_add118_3 v_shr_i237_3 v_add96_3_6;
(* Heuristics applied. *)
assert true && eq discard_707 0@1;
assume eq discard_707 0 && true;
(*   %arrayidx74.4 = getelementptr inbounds i64, i64* %mc, i64 5 *)
(*   %217 = load i64, i64* %arrayidx74.4, align 8, !tbaa !3 *)
mov v217 mc_40;
(*   %218 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 11), align 8, !tbaa !3 *)
mov v218 p751p1_88;
(*   %and.i262.4 = and i64 %217, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_4 v217 (0xFFFFFFFF)@uint64;
(*   %shr.i263.4 = lshr i64 %217, 32 *)
(* You may need to modify here *)
split v_shr_i263_4 tmp_to_be_used v217 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_4;
assume eq tmp_to_be_used v_and_i262_4 && true;
(*   %and1.i264.4 = and i64 %218, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_4 v218 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.4 = lshr i64 %218, 32 *)
(* You may need to modify here *)
split v_shr2_i265_4 tmp_to_be_used v218 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_4;
assume eq tmp_to_be_used v_and1_i264_4 && true;
(*   %mul.i266.4 = mul nuw i64 %and1.i264.4, %and.i262.4 *)
mul v_mul_i266_4 v_and1_i264_4 v_and_i262_4;
(*   %mul3.i267.4 = mul nuw i64 %shr2.i265.4, %and.i262.4 *)
mul v_mul3_i267_4 v_shr2_i265_4 v_and_i262_4;
(*   %mul4.i268.4 = mul nuw i64 %and1.i264.4, %shr.i263.4 *)
mul v_mul4_i268_4 v_and1_i264_4 v_shr_i263_4;
(*   %mul5.i269.4 = mul nuw i64 %shr2.i265.4, %shr.i263.4 *)
mul v_mul5_i269_4 v_shr2_i265_4 v_shr_i263_4;
(*   %and6.i270.4 = and i64 %mul.i266.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_4 v_mul_i266_4 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.4 = lshr i64 %mul.i266.4, 32 *)
(* You may need to modify here *)
split v_shr7_i271_4 tmp_to_be_used v_mul_i266_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_4;
assume eq tmp_to_be_used v_and6_i270_4 && true;
(*   %and8.i272.4 = and i64 %mul4.i268.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_4 v_mul4_i268_4 (0xFFFFFFFF)@uint64;
(*   %and9.i273.4 = and i64 %mul3.i267.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_4 v_mul3_i267_4 (0xFFFFFFFF)@uint64;
(*   %add.i274.4 = add nuw nsw i64 %shr7.i271.4, %and8.i272.4 *)
adds discard_708 v_add_i274_4 v_shr7_i271_4 v_and8_i272_4;
(* Heuristics applied. *)
assert true && eq discard_708 0@1;
assume eq discard_708 0 && true;
(*   %add10.i275.4 = add nuw nsw i64 %add.i274.4, %and9.i273.4 *)
adds discard_709 v_add10_i275_4 v_add_i274_4 v_and9_i273_4;
(* Heuristics applied. *)
assert true && eq discard_709 0@1;
assume eq discard_709 0 && true;
(*   %shr11.i276.4 = lshr i64 %add10.i275.4, 32 *)
(* You may need to modify here *)
split v_shr11_i276_4 tmp_to_be_used v_add10_i275_4 32;
(*   %shl.i277.4 = shl i64 %add10.i275.4, 32 *)
shls discard_710 v_shl_i277_4 v_add10_i275_4 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_4 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_4 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.4 = or i64 %shl.i277.4, %and6.i270.4 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_4 v_shl_i277_4 v_and6_i270_4;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_4 v_shl_i277_4 + v_and6_i270_4;
assume eq v_xor68_i278_4 v_shl_i277_4 + v_and6_i270_4 && true;
(*   %shr13.i279.4 = lshr i64 %mul4.i268.4, 32 *)
(* You may need to modify here *)
split v_shr13_i279_4 tmp_to_be_used v_mul4_i268_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_4;
assume eq tmp_to_be_used v_and8_i272_4 && true;
(*   %shr14.i280.4 = lshr i64 %mul3.i267.4, 32 *)
(* You may need to modify here *)
split v_shr14_i280_4 tmp_to_be_used v_mul3_i267_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_4;
assume eq tmp_to_be_used v_and9_i273_4 && true;
(*   %and15.i281.4 = and i64 %mul5.i269.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_4 v_mul5_i269_4 (0xFFFFFFFF)@uint64;
(*   %add16.i282.4 = add nuw nsw i64 %shr13.i279.4, %shr14.i280.4 *)
adds discard_711 v_add16_i282_4 v_shr13_i279_4 v_shr14_i280_4;
(* Heuristics applied. *)
assert true && eq discard_711 0@1;
assume eq discard_711 0 && true;
(*   %add17.i283.4 = add nuw nsw i64 %add16.i282.4, %and15.i281.4 *)
adds discard_712 v_add17_i283_4 v_add16_i282_4 v_and15_i281_4;
(* Heuristics applied. *)
assert true && eq discard_712 0@1;
assume eq discard_712 0 && true;
(*   %add18.i284.4 = add nuw nsw i64 %add17.i283.4, %shr11.i276.4 *)
adds discard_713 v_add18_i284_4 v_add17_i283_4 v_shr11_i276_4;
(* Heuristics applied. *)
assert true && eq discard_713 0@1;
assume eq discard_713 0 && true;
(*   %and19.i285.4 = and i64 %add18.i284.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_4 v_add18_i284_4 (0xFFFFFFFF)@uint64;
(*   %and21.i287.4 = and i64 %add18.i284.4, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_4 v_add18_i284_4 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_4 v_and21_i287_4 + v_and19_i285_4;
assume eq v_add18_i284_4 v_and21_i287_4 + v_and19_i285_4 && true;
(*   %and22.i288.4 = and i64 %mul5.i269.4, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_4 v_mul5_i269_4 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_4 v_and22_i288_4 + v_and15_i281_4;
assume eq v_mul5_i269_4 v_and22_i288_4 + v_and15_i281_4 && true;
(*   %add23.i289.4 = add i64 %and21.i287.4, %and22.i288.4 *)
adds discard_714 v_add23_i289_4 v_and21_i287_4 v_and22_i288_4;
(* Heuristics applied. *)
assert true && eq discard_714 0@1;
assume eq discard_714 0 && true;
(*   %xor2569.i290.4 = or i64 %add23.i289.4, %and19.i285.4 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_4 v_add23_i289_4 v_and19_i285_4;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_4 v_add23_i289_4 + v_and19_i285_4;
assume eq v_xor2569_i290_4 v_add23_i289_4 + v_and19_i285_4 && true;
(*   %add82.4 = add i64 %xor68.i278.4, %add111.3 *)
adds discard_715 v_add82_4 v_xor68_i278_4 v_add111_3;
(*   %xor.i256.4 = xor i64 %add82.4, %shl.i277.4 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_4 v_add82_4 v_shl_i277_4;
(*   %xor1.i257.4 = xor i64 %shl.i277.4, %add111.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_4 v_shl_i277_4 v_add111_3;
(*   %or.i258.4 = or i64 %xor.i256.4, %xor1.i257.4 *)
(* You may need to modify here *)
or uint64 v_or_i258_4 v_xor_i256_4 v_xor1_i257_4;
(*   %xor2.i259.4 = xor i64 %or.i258.4, %add82.4 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_4 v_or_i258_4 v_add82_4;
(*   %shr.i260.4 = lshr i64 %xor2.i259.4, 63 *)
(* You may need to modify here *)
split v_shr_i260_4 tmp_to_be_used v_xor2_i259_4 63;
(* generated by python *)
assert true && limbs 64 [v_add82_4, v_shr_i260_4] = limbs 64 [v_xor68_i278_4, 0@64] + limbs 64 [v_add111_3, 0@64];
assume limbs 64 [v_add82_4, v_shr_i260_4] = limbs 64 [v_xor68_i278_4, 0] + limbs 64 [v_add111_3, 0] && true;
(*   %add89.4 = add i64 %shr.i260.4, %xor2569.i290.4 *)
adds discard_716 v_add89_4 v_shr_i260_4 v_xor2569_i290_4;
(* Heuristics applied. *)
assert true && eq discard_716 0@1;
assume eq discard_716 0 && true;
(*   %add90.4 = add i64 %add89.4, %add118.3 *)
adds discard_717 v_add90_4 v_add89_4 v_add118_3;
(* Heuristics applied. *)
assert true && eq discard_717 0@1;
assume eq discard_717 0 && true;
(*   %219 = xor i64 %add89.4, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v219 v_add89_4 (0x8000000000000000)@uint64;
(*   %xor2.i253.4 = and i64 %219, %add23.i289.4 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_4 v219 v_add23_i289_4;
(*   %xor.i244.4 = xor i64 %add90.4, %add89.4 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_4 v_add90_4 v_add89_4;
(*   %xor1.i245.4 = xor i64 %add89.4, %add118.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_4 v_add89_4 v_add118_3;
(*   %or.i246.4 = or i64 %xor.i244.4, %xor1.i245.4 *)
(* You may need to modify here *)
or uint64 v_or_i246_4 v_xor_i244_4 v_xor1_i245_4;
(*   %xor2.i247.4 = xor i64 %or.i246.4, %add90.4 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_4 v_or_i246_4 v_add90_4;
(*   %shr.i254326.4 = or i64 %xor2.i247.4, %xor2.i253.4 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_4 v_xor2_i247_4 v_xor2_i253_4;
(*   %or94325.4 = lshr i64 %shr.i254326.4, 63 *)
(* You may need to modify here *)
split v_or94325_4 tmp_to_be_used v_shr_i254326_4 63;
(* generated by python *)
assert true && limbs 64 [v_add90_4, v_or94325_4] = limbs 64 [v_shr_i260_4, 0@64] + limbs 64 [v_xor2569_i290_4, 0@64] + limbs 64 [v_add118_3, 0@64];
assume limbs 64 [v_add90_4, v_or94325_4] = limbs 64 [v_shr_i260_4, 0] + limbs 64 [v_xor2569_i290_4, 0] + limbs 64 [v_add118_3, 0] && true;
(*   %arrayidx74.4.1 = getelementptr inbounds i64, i64* %mc, i64 6 *)
(*   %220 = load i64, i64* %arrayidx74.4.1, align 8, !tbaa !3 *)
mov v220 mc_48;
(*   %221 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 10), align 16, !tbaa !3 *)
mov v221 p751p1_80;
(*   %and.i262.4.1 = and i64 %220, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_4_1 v220 (0xFFFFFFFF)@uint64;
(*   %shr.i263.4.1 = lshr i64 %220, 32 *)
(* You may need to modify here *)
split v_shr_i263_4_1 tmp_to_be_used v220 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_4_1;
assume eq tmp_to_be_used v_and_i262_4_1 && true;
(*   %and1.i264.4.1 = and i64 %221, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_4_1 v221 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.4.1 = lshr i64 %221, 32 *)
(* You may need to modify here *)
split v_shr2_i265_4_1 tmp_to_be_used v221 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_4_1;
assume eq tmp_to_be_used v_and1_i264_4_1 && true;
(*   %mul.i266.4.1 = mul nuw i64 %and1.i264.4.1, %and.i262.4.1 *)
mul v_mul_i266_4_1 v_and1_i264_4_1 v_and_i262_4_1;
(*   %mul3.i267.4.1 = mul nuw i64 %shr2.i265.4.1, %and.i262.4.1 *)
mul v_mul3_i267_4_1 v_shr2_i265_4_1 v_and_i262_4_1;
(*   %mul4.i268.4.1 = mul nuw i64 %and1.i264.4.1, %shr.i263.4.1 *)
mul v_mul4_i268_4_1 v_and1_i264_4_1 v_shr_i263_4_1;
(*   %mul5.i269.4.1 = mul nuw i64 %shr2.i265.4.1, %shr.i263.4.1 *)
mul v_mul5_i269_4_1 v_shr2_i265_4_1 v_shr_i263_4_1;
(*   %and6.i270.4.1 = and i64 %mul.i266.4.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_4_1 v_mul_i266_4_1 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.4.1 = lshr i64 %mul.i266.4.1, 32 *)
(* You may need to modify here *)
split v_shr7_i271_4_1 tmp_to_be_used v_mul_i266_4_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_4_1;
assume eq tmp_to_be_used v_and6_i270_4_1 && true;
(*   %and8.i272.4.1 = and i64 %mul4.i268.4.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_4_1 v_mul4_i268_4_1 (0xFFFFFFFF)@uint64;
(*   %and9.i273.4.1 = and i64 %mul3.i267.4.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_4_1 v_mul3_i267_4_1 (0xFFFFFFFF)@uint64;
(*   %add.i274.4.1 = add nuw nsw i64 %shr7.i271.4.1, %and8.i272.4.1 *)
adds discard_718 v_add_i274_4_1 v_shr7_i271_4_1 v_and8_i272_4_1;
(* Heuristics applied. *)
assert true && eq discard_718 0@1;
assume eq discard_718 0 && true;
(*   %add10.i275.4.1 = add nuw nsw i64 %add.i274.4.1, %and9.i273.4.1 *)
adds discard_719 v_add10_i275_4_1 v_add_i274_4_1 v_and9_i273_4_1;
(* Heuristics applied. *)
assert true && eq discard_719 0@1;
assume eq discard_719 0 && true;
(*   %shr11.i276.4.1 = lshr i64 %add10.i275.4.1, 32 *)
(* You may need to modify here *)
split v_shr11_i276_4_1 tmp_to_be_used v_add10_i275_4_1 32;
(*   %shl.i277.4.1 = shl i64 %add10.i275.4.1, 32 *)
shls discard_720 v_shl_i277_4_1 v_add10_i275_4_1 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_4_1 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_4_1 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.4.1 = or i64 %shl.i277.4.1, %and6.i270.4.1 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_4_1 v_shl_i277_4_1 v_and6_i270_4_1;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_4_1 v_shl_i277_4_1 + v_and6_i270_4_1;
assume eq v_xor68_i278_4_1 v_shl_i277_4_1 + v_and6_i270_4_1 && true;
(*   %shr13.i279.4.1 = lshr i64 %mul4.i268.4.1, 32 *)
(* You may need to modify here *)
split v_shr13_i279_4_1 tmp_to_be_used v_mul4_i268_4_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_4_1;
assume eq tmp_to_be_used v_and8_i272_4_1 && true;
(*   %shr14.i280.4.1 = lshr i64 %mul3.i267.4.1, 32 *)
(* You may need to modify here *)
split v_shr14_i280_4_1 tmp_to_be_used v_mul3_i267_4_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_4_1;
assume eq tmp_to_be_used v_and9_i273_4_1 && true;
(*   %and15.i281.4.1 = and i64 %mul5.i269.4.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_4_1 v_mul5_i269_4_1 (0xFFFFFFFF)@uint64;
(*   %add16.i282.4.1 = add nuw nsw i64 %shr13.i279.4.1, %shr14.i280.4.1 *)
adds discard_721 v_add16_i282_4_1 v_shr13_i279_4_1 v_shr14_i280_4_1;
(* Heuristics applied. *)
assert true && eq discard_721 0@1;
assume eq discard_721 0 && true;
(*   %add17.i283.4.1 = add nuw nsw i64 %add16.i282.4.1, %and15.i281.4.1 *)
adds discard_722 v_add17_i283_4_1 v_add16_i282_4_1 v_and15_i281_4_1;
(* Heuristics applied. *)
assert true && eq discard_722 0@1;
assume eq discard_722 0 && true;
(*   %add18.i284.4.1 = add nuw nsw i64 %add17.i283.4.1, %shr11.i276.4.1 *)
adds discard_723 v_add18_i284_4_1 v_add17_i283_4_1 v_shr11_i276_4_1;
(* Heuristics applied. *)
assert true && eq discard_723 0@1;
assume eq discard_723 0 && true;
(*   %and19.i285.4.1 = and i64 %add18.i284.4.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_4_1 v_add18_i284_4_1 (0xFFFFFFFF)@uint64;
(*   %and21.i287.4.1 = and i64 %add18.i284.4.1, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_4_1 v_add18_i284_4_1 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_4_1 v_and21_i287_4_1 + v_and19_i285_4_1;
assume eq v_add18_i284_4_1 v_and21_i287_4_1 + v_and19_i285_4_1 && true;
(*   %and22.i288.4.1 = and i64 %mul5.i269.4.1, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_4_1 v_mul5_i269_4_1 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_4_1 v_and22_i288_4_1 + v_and15_i281_4_1;
assume eq v_mul5_i269_4_1 v_and22_i288_4_1 + v_and15_i281_4_1 && true;
(*   %add23.i289.4.1 = add i64 %and21.i287.4.1, %and22.i288.4.1 *)
adds discard_724 v_add23_i289_4_1 v_and21_i287_4_1 v_and22_i288_4_1;
(* Heuristics applied. *)
assert true && eq discard_724 0@1;
assume eq discard_724 0 && true;
(*   %xor2569.i290.4.1 = or i64 %add23.i289.4.1, %and19.i285.4.1 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_4_1 v_add23_i289_4_1 v_and19_i285_4_1;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_4_1 v_add23_i289_4_1 + v_and19_i285_4_1;
assume eq v_xor2569_i290_4_1 v_add23_i289_4_1 + v_and19_i285_4_1 && true;
(*   %add82.4.1 = add i64 %xor68.i278.4.1, %add82.4 *)
adds discard_725 v_add82_4_1 v_xor68_i278_4_1 v_add82_4;
(*   %xor.i256.4.1 = xor i64 %add82.4.1, %shl.i277.4.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_4_1 v_add82_4_1 v_shl_i277_4_1;
(*   %xor1.i257.4.1 = xor i64 %shl.i277.4.1, %add82.4 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_4_1 v_shl_i277_4_1 v_add82_4;
(*   %or.i258.4.1 = or i64 %xor.i256.4.1, %xor1.i257.4.1 *)
(* You may need to modify here *)
or uint64 v_or_i258_4_1 v_xor_i256_4_1 v_xor1_i257_4_1;
(*   %xor2.i259.4.1 = xor i64 %or.i258.4.1, %add82.4.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_4_1 v_or_i258_4_1 v_add82_4_1;
(*   %shr.i260.4.1 = lshr i64 %xor2.i259.4.1, 63 *)
(* You may need to modify here *)
split v_shr_i260_4_1 tmp_to_be_used v_xor2_i259_4_1 63;
(* generated by python *)
assert true && limbs 64 [v_add82_4_1, v_shr_i260_4_1] = limbs 64 [v_xor68_i278_4_1, 0@64] + limbs 64 [v_add82_4, 0@64];
assume limbs 64 [v_add82_4_1, v_shr_i260_4_1] = limbs 64 [v_xor68_i278_4_1, 0] + limbs 64 [v_add82_4, 0] && true;
(*   %add89.4.1 = add i64 %shr.i260.4.1, %xor2569.i290.4.1 *)
adds discard_726 v_add89_4_1 v_shr_i260_4_1 v_xor2569_i290_4_1;
(* Heuristics applied. *)
assert true && eq discard_726 0@1;
assume eq discard_726 0 && true;
(*   %add90.4.1 = add i64 %add89.4.1, %add90.4 *)
adds discard_727 v_add90_4_1 v_add89_4_1 v_add90_4;
(* Heuristics applied. *)
assert true && eq discard_727 0@1;
assume eq discard_727 0 && true;
(*   %222 = xor i64 %add89.4.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v222 v_add89_4_1 (0x8000000000000000)@uint64;
(*   %xor2.i253.4.1 = and i64 %222, %add23.i289.4.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_4_1 v222 v_add23_i289_4_1;
(*   %xor.i244.4.1 = xor i64 %add90.4.1, %add89.4.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_4_1 v_add90_4_1 v_add89_4_1;
(*   %xor1.i245.4.1 = xor i64 %add89.4.1, %add90.4 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_4_1 v_add89_4_1 v_add90_4;
(*   %or.i246.4.1 = or i64 %xor.i244.4.1, %xor1.i245.4.1 *)
(* You may need to modify here *)
or uint64 v_or_i246_4_1 v_xor_i244_4_1 v_xor1_i245_4_1;
(*   %xor2.i247.4.1 = xor i64 %or.i246.4.1, %add90.4.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_4_1 v_or_i246_4_1 v_add90_4_1;
(*   %shr.i254326.4.1 = or i64 %xor2.i247.4.1, %xor2.i253.4.1 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_4_1 v_xor2_i247_4_1 v_xor2_i253_4_1;
(*   %or94325.4.1 = lshr i64 %shr.i254326.4.1, 63 *)
(* You may need to modify here *)
split v_or94325_4_1 tmp_to_be_used v_shr_i254326_4_1 63;
(* generated by python *)
assert true && limbs 64 [v_add90_4_1, v_or94325_4_1] = limbs 64 [v_shr_i260_4_1, 0@64] + limbs 64 [v_xor2569_i290_4_1, 0@64] + limbs 64 [v_add90_4, 0@64];
assume limbs 64 [v_add90_4_1, v_or94325_4_1] = limbs 64 [v_shr_i260_4_1, 0] + limbs 64 [v_xor2569_i290_4_1, 0] + limbs 64 [v_add90_4, 0] && true;
(*   %add96.4.1 = add nuw nsw i64 %or94325.4.1, %or94325.4 *)
adds discard_728 v_add96_4_1 v_or94325_4_1 v_or94325_4;
(* Heuristics applied. *)
assert true && eq discard_728 0@1;
assume eq discard_728 0 && true;
(*   %arrayidx74.4.2 = getelementptr inbounds i64, i64* %mc, i64 7 *)
(*   %223 = load i64, i64* %arrayidx74.4.2, align 8, !tbaa !3 *)
mov v223 mc_56;
(*   %224 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 9), align 8, !tbaa !3 *)
mov v224 p751p1_72;
(*   %and.i262.4.2 = and i64 %223, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_4_2 v223 (0xFFFFFFFF)@uint64;
(*   %shr.i263.4.2 = lshr i64 %223, 32 *)
(* You may need to modify here *)
split v_shr_i263_4_2 tmp_to_be_used v223 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_4_2;
assume eq tmp_to_be_used v_and_i262_4_2 && true;
(*   %and1.i264.4.2 = and i64 %224, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_4_2 v224 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.4.2 = lshr i64 %224, 32 *)
(* You may need to modify here *)
split v_shr2_i265_4_2 tmp_to_be_used v224 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_4_2;
assume eq tmp_to_be_used v_and1_i264_4_2 && true;
(*   %mul.i266.4.2 = mul nuw i64 %and1.i264.4.2, %and.i262.4.2 *)
mul v_mul_i266_4_2 v_and1_i264_4_2 v_and_i262_4_2;
(*   %mul3.i267.4.2 = mul nuw i64 %shr2.i265.4.2, %and.i262.4.2 *)
mul v_mul3_i267_4_2 v_shr2_i265_4_2 v_and_i262_4_2;
(*   %mul4.i268.4.2 = mul nuw i64 %and1.i264.4.2, %shr.i263.4.2 *)
mul v_mul4_i268_4_2 v_and1_i264_4_2 v_shr_i263_4_2;
(*   %mul5.i269.4.2 = mul nuw i64 %shr2.i265.4.2, %shr.i263.4.2 *)
mul v_mul5_i269_4_2 v_shr2_i265_4_2 v_shr_i263_4_2;
(*   %and6.i270.4.2 = and i64 %mul.i266.4.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_4_2 v_mul_i266_4_2 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.4.2 = lshr i64 %mul.i266.4.2, 32 *)
(* You may need to modify here *)
split v_shr7_i271_4_2 tmp_to_be_used v_mul_i266_4_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_4_2;
assume eq tmp_to_be_used v_and6_i270_4_2 && true;
(*   %and8.i272.4.2 = and i64 %mul4.i268.4.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_4_2 v_mul4_i268_4_2 (0xFFFFFFFF)@uint64;
(*   %and9.i273.4.2 = and i64 %mul3.i267.4.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_4_2 v_mul3_i267_4_2 (0xFFFFFFFF)@uint64;
(*   %add.i274.4.2 = add nuw nsw i64 %shr7.i271.4.2, %and8.i272.4.2 *)
adds discard_729 v_add_i274_4_2 v_shr7_i271_4_2 v_and8_i272_4_2;
(* Heuristics applied. *)
assert true && eq discard_729 0@1;
assume eq discard_729 0 && true;
(*   %add10.i275.4.2 = add nuw nsw i64 %add.i274.4.2, %and9.i273.4.2 *)
adds discard_730 v_add10_i275_4_2 v_add_i274_4_2 v_and9_i273_4_2;
(* Heuristics applied. *)
assert true && eq discard_730 0@1;
assume eq discard_730 0 && true;
(*   %shr11.i276.4.2 = lshr i64 %add10.i275.4.2, 32 *)
(* You may need to modify here *)
split v_shr11_i276_4_2 tmp_to_be_used v_add10_i275_4_2 32;
(*   %shl.i277.4.2 = shl i64 %add10.i275.4.2, 32 *)
shls discard_731 v_shl_i277_4_2 v_add10_i275_4_2 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_4_2 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_4_2 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.4.2 = or i64 %shl.i277.4.2, %and6.i270.4.2 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_4_2 v_shl_i277_4_2 v_and6_i270_4_2;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_4_2 v_shl_i277_4_2 + v_and6_i270_4_2;
assume eq v_xor68_i278_4_2 v_shl_i277_4_2 + v_and6_i270_4_2 && true;
(*   %shr13.i279.4.2 = lshr i64 %mul4.i268.4.2, 32 *)
(* You may need to modify here *)
split v_shr13_i279_4_2 tmp_to_be_used v_mul4_i268_4_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_4_2;
assume eq tmp_to_be_used v_and8_i272_4_2 && true;
(*   %shr14.i280.4.2 = lshr i64 %mul3.i267.4.2, 32 *)
(* You may need to modify here *)
split v_shr14_i280_4_2 tmp_to_be_used v_mul3_i267_4_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_4_2;
assume eq tmp_to_be_used v_and9_i273_4_2 && true;
(*   %and15.i281.4.2 = and i64 %mul5.i269.4.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_4_2 v_mul5_i269_4_2 (0xFFFFFFFF)@uint64;
(*   %add16.i282.4.2 = add nuw nsw i64 %shr13.i279.4.2, %shr14.i280.4.2 *)
adds discard_732 v_add16_i282_4_2 v_shr13_i279_4_2 v_shr14_i280_4_2;
(* Heuristics applied. *)
assert true && eq discard_732 0@1;
assume eq discard_732 0 && true;
(*   %add17.i283.4.2 = add nuw nsw i64 %add16.i282.4.2, %and15.i281.4.2 *)
adds discard_733 v_add17_i283_4_2 v_add16_i282_4_2 v_and15_i281_4_2;
(* Heuristics applied. *)
assert true && eq discard_733 0@1;
assume eq discard_733 0 && true;
(*   %add18.i284.4.2 = add nuw nsw i64 %add17.i283.4.2, %shr11.i276.4.2 *)
adds discard_734 v_add18_i284_4_2 v_add17_i283_4_2 v_shr11_i276_4_2;
(* Heuristics applied. *)
assert true && eq discard_734 0@1;
assume eq discard_734 0 && true;
(*   %and19.i285.4.2 = and i64 %add18.i284.4.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_4_2 v_add18_i284_4_2 (0xFFFFFFFF)@uint64;
(*   %and21.i287.4.2 = and i64 %add18.i284.4.2, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_4_2 v_add18_i284_4_2 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_4_2 v_and21_i287_4_2 + v_and19_i285_4_2;
assume eq v_add18_i284_4_2 v_and21_i287_4_2 + v_and19_i285_4_2 && true;
(*   %and22.i288.4.2 = and i64 %mul5.i269.4.2, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_4_2 v_mul5_i269_4_2 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_4_2 v_and22_i288_4_2 + v_and15_i281_4_2;
assume eq v_mul5_i269_4_2 v_and22_i288_4_2 + v_and15_i281_4_2 && true;
(*   %add23.i289.4.2 = add i64 %and21.i287.4.2, %and22.i288.4.2 *)
adds discard_735 v_add23_i289_4_2 v_and21_i287_4_2 v_and22_i288_4_2;
(* Heuristics applied. *)
assert true && eq discard_735 0@1;
assume eq discard_735 0 && true;
(*   %xor2569.i290.4.2 = or i64 %add23.i289.4.2, %and19.i285.4.2 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_4_2 v_add23_i289_4_2 v_and19_i285_4_2;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_4_2 v_add23_i289_4_2 + v_and19_i285_4_2;
assume eq v_xor2569_i290_4_2 v_add23_i289_4_2 + v_and19_i285_4_2 && true;
(*   %add82.4.2 = add i64 %xor68.i278.4.2, %add82.4.1 *)
adds discard_736 v_add82_4_2 v_xor68_i278_4_2 v_add82_4_1;
(*   %xor.i256.4.2 = xor i64 %add82.4.2, %shl.i277.4.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_4_2 v_add82_4_2 v_shl_i277_4_2;
(*   %xor1.i257.4.2 = xor i64 %shl.i277.4.2, %add82.4.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_4_2 v_shl_i277_4_2 v_add82_4_1;
(*   %or.i258.4.2 = or i64 %xor.i256.4.2, %xor1.i257.4.2 *)
(* You may need to modify here *)
or uint64 v_or_i258_4_2 v_xor_i256_4_2 v_xor1_i257_4_2;
(*   %xor2.i259.4.2 = xor i64 %or.i258.4.2, %add82.4.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_4_2 v_or_i258_4_2 v_add82_4_2;
(*   %shr.i260.4.2 = lshr i64 %xor2.i259.4.2, 63 *)
(* You may need to modify here *)
split v_shr_i260_4_2 tmp_to_be_used v_xor2_i259_4_2 63;
(* generated by python *)
assert true && limbs 64 [v_add82_4_2, v_shr_i260_4_2] = limbs 64 [v_xor68_i278_4_2, 0@64] + limbs 64 [v_add82_4_1, 0@64];
assume limbs 64 [v_add82_4_2, v_shr_i260_4_2] = limbs 64 [v_xor68_i278_4_2, 0] + limbs 64 [v_add82_4_1, 0] && true;
(*   %add89.4.2 = add i64 %shr.i260.4.2, %xor2569.i290.4.2 *)
adds discard_737 v_add89_4_2 v_shr_i260_4_2 v_xor2569_i290_4_2;
(* Heuristics applied. *)
assert true && eq discard_737 0@1;
assume eq discard_737 0 && true;
(*   %add90.4.2 = add i64 %add89.4.2, %add90.4.1 *)
adds discard_738 v_add90_4_2 v_add89_4_2 v_add90_4_1;
(* Heuristics applied. *)
assert true && eq discard_738 0@1;
assume eq discard_738 0 && true;
(*   %225 = xor i64 %add89.4.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v225 v_add89_4_2 (0x8000000000000000)@uint64;
(*   %xor2.i253.4.2 = and i64 %225, %add23.i289.4.2 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_4_2 v225 v_add23_i289_4_2;
(*   %xor.i244.4.2 = xor i64 %add90.4.2, %add89.4.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_4_2 v_add90_4_2 v_add89_4_2;
(*   %xor1.i245.4.2 = xor i64 %add89.4.2, %add90.4.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_4_2 v_add89_4_2 v_add90_4_1;
(*   %or.i246.4.2 = or i64 %xor.i244.4.2, %xor1.i245.4.2 *)
(* You may need to modify here *)
or uint64 v_or_i246_4_2 v_xor_i244_4_2 v_xor1_i245_4_2;
(*   %xor2.i247.4.2 = xor i64 %or.i246.4.2, %add90.4.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_4_2 v_or_i246_4_2 v_add90_4_2;
(*   %shr.i254326.4.2 = or i64 %xor2.i247.4.2, %xor2.i253.4.2 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_4_2 v_xor2_i247_4_2 v_xor2_i253_4_2;
(*   %or94325.4.2 = lshr i64 %shr.i254326.4.2, 63 *)
(* You may need to modify here *)
split v_or94325_4_2 tmp_to_be_used v_shr_i254326_4_2 63;
(* generated by python *)
assert true && limbs 64 [v_add90_4_2, v_or94325_4_2] = limbs 64 [v_shr_i260_4_2, 0@64] + limbs 64 [v_xor2569_i290_4_2, 0@64] + limbs 64 [v_add90_4_1, 0@64];
assume limbs 64 [v_add90_4_2, v_or94325_4_2] = limbs 64 [v_shr_i260_4_2, 0] + limbs 64 [v_xor2569_i290_4_2, 0] + limbs 64 [v_add90_4_1, 0] && true;
(*   %add96.4.2 = add nsw i64 %or94325.4.2, %add96.4.1 *)
adds discard_739 v_add96_4_2 v_or94325_4_2 v_add96_4_1;
(* Heuristics applied. *)
assert true && eq discard_739 0@1;
assume eq discard_739 0 && true;
(*   %arrayidx74.4.3 = getelementptr inbounds i64, i64* %mc, i64 8 *)
(*   %226 = load i64, i64* %arrayidx74.4.3, align 8, !tbaa !3 *)
mov v226 mc_64;
(*   %227 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 8), align 16, !tbaa !3 *)
mov v227 p751p1_64;
(*   %and.i262.4.3 = and i64 %226, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_4_3 v226 (0xFFFFFFFF)@uint64;
(*   %shr.i263.4.3 = lshr i64 %226, 32 *)
(* You may need to modify here *)
split v_shr_i263_4_3 tmp_to_be_used v226 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_4_3;
assume eq tmp_to_be_used v_and_i262_4_3 && true;
(*   %and1.i264.4.3 = and i64 %227, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_4_3 v227 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.4.3 = lshr i64 %227, 32 *)
(* You may need to modify here *)
split v_shr2_i265_4_3 tmp_to_be_used v227 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_4_3;
assume eq tmp_to_be_used v_and1_i264_4_3 && true;
(*   %mul.i266.4.3 = mul nuw i64 %and1.i264.4.3, %and.i262.4.3 *)
mul v_mul_i266_4_3 v_and1_i264_4_3 v_and_i262_4_3;
(*   %mul3.i267.4.3 = mul nuw i64 %shr2.i265.4.3, %and.i262.4.3 *)
mul v_mul3_i267_4_3 v_shr2_i265_4_3 v_and_i262_4_3;
(*   %mul4.i268.4.3 = mul nuw i64 %and1.i264.4.3, %shr.i263.4.3 *)
mul v_mul4_i268_4_3 v_and1_i264_4_3 v_shr_i263_4_3;
(*   %mul5.i269.4.3 = mul nuw i64 %shr2.i265.4.3, %shr.i263.4.3 *)
mul v_mul5_i269_4_3 v_shr2_i265_4_3 v_shr_i263_4_3;
(*   %and6.i270.4.3 = and i64 %mul.i266.4.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_4_3 v_mul_i266_4_3 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.4.3 = lshr i64 %mul.i266.4.3, 32 *)
(* You may need to modify here *)
split v_shr7_i271_4_3 tmp_to_be_used v_mul_i266_4_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_4_3;
assume eq tmp_to_be_used v_and6_i270_4_3 && true;
(*   %and8.i272.4.3 = and i64 %mul4.i268.4.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_4_3 v_mul4_i268_4_3 (0xFFFFFFFF)@uint64;
(*   %and9.i273.4.3 = and i64 %mul3.i267.4.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_4_3 v_mul3_i267_4_3 (0xFFFFFFFF)@uint64;
(*   %add.i274.4.3 = add nuw nsw i64 %shr7.i271.4.3, %and8.i272.4.3 *)
adds discard_740 v_add_i274_4_3 v_shr7_i271_4_3 v_and8_i272_4_3;
(* Heuristics applied. *)
assert true && eq discard_740 0@1;
assume eq discard_740 0 && true;
(*   %add10.i275.4.3 = add nuw nsw i64 %add.i274.4.3, %and9.i273.4.3 *)
adds discard_741 v_add10_i275_4_3 v_add_i274_4_3 v_and9_i273_4_3;
(* Heuristics applied. *)
assert true && eq discard_741 0@1;
assume eq discard_741 0 && true;
(*   %shr11.i276.4.3 = lshr i64 %add10.i275.4.3, 32 *)
(* You may need to modify here *)
split v_shr11_i276_4_3 tmp_to_be_used v_add10_i275_4_3 32;
(*   %shl.i277.4.3 = shl i64 %add10.i275.4.3, 32 *)
shls discard_742 v_shl_i277_4_3 v_add10_i275_4_3 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_4_3 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_4_3 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.4.3 = or i64 %shl.i277.4.3, %and6.i270.4.3 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_4_3 v_shl_i277_4_3 v_and6_i270_4_3;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_4_3 v_shl_i277_4_3 + v_and6_i270_4_3;
assume eq v_xor68_i278_4_3 v_shl_i277_4_3 + v_and6_i270_4_3 && true;
(*   %shr13.i279.4.3 = lshr i64 %mul4.i268.4.3, 32 *)
(* You may need to modify here *)
split v_shr13_i279_4_3 tmp_to_be_used v_mul4_i268_4_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_4_3;
assume eq tmp_to_be_used v_and8_i272_4_3 && true;
(*   %shr14.i280.4.3 = lshr i64 %mul3.i267.4.3, 32 *)
(* You may need to modify here *)
split v_shr14_i280_4_3 tmp_to_be_used v_mul3_i267_4_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_4_3;
assume eq tmp_to_be_used v_and9_i273_4_3 && true;
(*   %and15.i281.4.3 = and i64 %mul5.i269.4.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_4_3 v_mul5_i269_4_3 (0xFFFFFFFF)@uint64;
(*   %add16.i282.4.3 = add nuw nsw i64 %shr13.i279.4.3, %shr14.i280.4.3 *)
adds discard_743 v_add16_i282_4_3 v_shr13_i279_4_3 v_shr14_i280_4_3;
(* Heuristics applied. *)
assert true && eq discard_743 0@1;
assume eq discard_743 0 && true;
(*   %add17.i283.4.3 = add nuw nsw i64 %add16.i282.4.3, %and15.i281.4.3 *)
adds discard_744 v_add17_i283_4_3 v_add16_i282_4_3 v_and15_i281_4_3;
(* Heuristics applied. *)
assert true && eq discard_744 0@1;
assume eq discard_744 0 && true;
(*   %add18.i284.4.3 = add nuw nsw i64 %add17.i283.4.3, %shr11.i276.4.3 *)
adds discard_745 v_add18_i284_4_3 v_add17_i283_4_3 v_shr11_i276_4_3;
(* Heuristics applied. *)
assert true && eq discard_745 0@1;
assume eq discard_745 0 && true;
(*   %and19.i285.4.3 = and i64 %add18.i284.4.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_4_3 v_add18_i284_4_3 (0xFFFFFFFF)@uint64;
(*   %and21.i287.4.3 = and i64 %add18.i284.4.3, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_4_3 v_add18_i284_4_3 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_4_3 v_and21_i287_4_3 + v_and19_i285_4_3;
assume eq v_add18_i284_4_3 v_and21_i287_4_3 + v_and19_i285_4_3 && true;
(*   %and22.i288.4.3 = and i64 %mul5.i269.4.3, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_4_3 v_mul5_i269_4_3 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_4_3 v_and22_i288_4_3 + v_and15_i281_4_3;
assume eq v_mul5_i269_4_3 v_and22_i288_4_3 + v_and15_i281_4_3 && true;
(*   %add23.i289.4.3 = add i64 %and21.i287.4.3, %and22.i288.4.3 *)
adds discard_746 v_add23_i289_4_3 v_and21_i287_4_3 v_and22_i288_4_3;
(* Heuristics applied. *)
assert true && eq discard_746 0@1;
assume eq discard_746 0 && true;
(*   %xor2569.i290.4.3 = or i64 %add23.i289.4.3, %and19.i285.4.3 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_4_3 v_add23_i289_4_3 v_and19_i285_4_3;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_4_3 v_add23_i289_4_3 + v_and19_i285_4_3;
assume eq v_xor2569_i290_4_3 v_add23_i289_4_3 + v_and19_i285_4_3 && true;
(*   %add82.4.3 = add i64 %xor68.i278.4.3, %add82.4.2 *)
adds discard_747 v_add82_4_3 v_xor68_i278_4_3 v_add82_4_2;
(*   %xor.i256.4.3 = xor i64 %add82.4.3, %shl.i277.4.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_4_3 v_add82_4_3 v_shl_i277_4_3;
(*   %xor1.i257.4.3 = xor i64 %shl.i277.4.3, %add82.4.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_4_3 v_shl_i277_4_3 v_add82_4_2;
(*   %or.i258.4.3 = or i64 %xor.i256.4.3, %xor1.i257.4.3 *)
(* You may need to modify here *)
or uint64 v_or_i258_4_3 v_xor_i256_4_3 v_xor1_i257_4_3;
(*   %xor2.i259.4.3 = xor i64 %or.i258.4.3, %add82.4.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_4_3 v_or_i258_4_3 v_add82_4_3;
(*   %shr.i260.4.3 = lshr i64 %xor2.i259.4.3, 63 *)
(* You may need to modify here *)
split v_shr_i260_4_3 tmp_to_be_used v_xor2_i259_4_3 63;
(* generated by python *)
assert true && limbs 64 [v_add82_4_3, v_shr_i260_4_3] = limbs 64 [v_xor68_i278_4_3, 0@64] + limbs 64 [v_add82_4_2, 0@64];
assume limbs 64 [v_add82_4_3, v_shr_i260_4_3] = limbs 64 [v_xor68_i278_4_3, 0] + limbs 64 [v_add82_4_2, 0] && true;
(*   %add89.4.3 = add i64 %shr.i260.4.3, %xor2569.i290.4.3 *)
adds discard_748 v_add89_4_3 v_shr_i260_4_3 v_xor2569_i290_4_3;
(* Heuristics applied. *)
assert true && eq discard_748 0@1;
assume eq discard_748 0 && true;
(*   %add90.4.3 = add i64 %add89.4.3, %add90.4.2 *)
adds discard_749 v_add90_4_3 v_add89_4_3 v_add90_4_2;
(* Heuristics applied. *)
assert true && eq discard_749 0@1;
assume eq discard_749 0 && true;
(*   %228 = xor i64 %add89.4.3, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v228 v_add89_4_3 (0x8000000000000000)@uint64;
(*   %xor2.i253.4.3 = and i64 %228, %add23.i289.4.3 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_4_3 v228 v_add23_i289_4_3;
(*   %xor.i244.4.3 = xor i64 %add90.4.3, %add89.4.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_4_3 v_add90_4_3 v_add89_4_3;
(*   %xor1.i245.4.3 = xor i64 %add89.4.3, %add90.4.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_4_3 v_add89_4_3 v_add90_4_2;
(*   %or.i246.4.3 = or i64 %xor.i244.4.3, %xor1.i245.4.3 *)
(* You may need to modify here *)
or uint64 v_or_i246_4_3 v_xor_i244_4_3 v_xor1_i245_4_3;
(*   %xor2.i247.4.3 = xor i64 %or.i246.4.3, %add90.4.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_4_3 v_or_i246_4_3 v_add90_4_3;
(*   %shr.i254326.4.3 = or i64 %xor2.i247.4.3, %xor2.i253.4.3 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_4_3 v_xor2_i247_4_3 v_xor2_i253_4_3;
(*   %or94325.4.3 = lshr i64 %shr.i254326.4.3, 63 *)
(* You may need to modify here *)
split v_or94325_4_3 tmp_to_be_used v_shr_i254326_4_3 63;
(* generated by python *)
assert true && limbs 64 [v_add90_4_3, v_or94325_4_3] = limbs 64 [v_shr_i260_4_3, 0@64] + limbs 64 [v_xor2569_i290_4_3, 0@64] + limbs 64 [v_add90_4_2, 0@64];
assume limbs 64 [v_add90_4_3, v_or94325_4_3] = limbs 64 [v_shr_i260_4_3, 0] + limbs 64 [v_xor2569_i290_4_3, 0] + limbs 64 [v_add90_4_2, 0] && true;
(*   %add96.4.3 = add nsw i64 %or94325.4.3, %add96.4.2 *)
adds discard_750 v_add96_4_3 v_or94325_4_3 v_add96_4_2;
(* Heuristics applied. *)
assert true && eq discard_750 0@1;
assume eq discard_750 0 && true;
(*   %arrayidx74.4.4 = getelementptr inbounds i64, i64* %mc, i64 9 *)
(*   %229 = load i64, i64* %arrayidx74.4.4, align 8, !tbaa !3 *)
mov v229 mc_72;
(*   %230 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 7), align 8, !tbaa !3 *)
mov v230 p751p1_56;
(*   %and.i262.4.4 = and i64 %229, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_4_4 v229 (0xFFFFFFFF)@uint64;
(*   %shr.i263.4.4 = lshr i64 %229, 32 *)
(* You may need to modify here *)
split v_shr_i263_4_4 tmp_to_be_used v229 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_4_4;
assume eq tmp_to_be_used v_and_i262_4_4 && true;
(*   %and1.i264.4.4 = and i64 %230, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_4_4 v230 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.4.4 = lshr i64 %230, 32 *)
(* You may need to modify here *)
split v_shr2_i265_4_4 tmp_to_be_used v230 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_4_4;
assume eq tmp_to_be_used v_and1_i264_4_4 && true;
(*   %mul.i266.4.4 = mul nuw i64 %and1.i264.4.4, %and.i262.4.4 *)
mul v_mul_i266_4_4 v_and1_i264_4_4 v_and_i262_4_4;
(*   %mul3.i267.4.4 = mul nuw i64 %shr2.i265.4.4, %and.i262.4.4 *)
mul v_mul3_i267_4_4 v_shr2_i265_4_4 v_and_i262_4_4;
(*   %mul4.i268.4.4 = mul nuw i64 %and1.i264.4.4, %shr.i263.4.4 *)
mul v_mul4_i268_4_4 v_and1_i264_4_4 v_shr_i263_4_4;
(*   %mul5.i269.4.4 = mul nuw i64 %shr2.i265.4.4, %shr.i263.4.4 *)
mul v_mul5_i269_4_4 v_shr2_i265_4_4 v_shr_i263_4_4;
(*   %and6.i270.4.4 = and i64 %mul.i266.4.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_4_4 v_mul_i266_4_4 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.4.4 = lshr i64 %mul.i266.4.4, 32 *)
(* You may need to modify here *)
split v_shr7_i271_4_4 tmp_to_be_used v_mul_i266_4_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_4_4;
assume eq tmp_to_be_used v_and6_i270_4_4 && true;
(*   %and8.i272.4.4 = and i64 %mul4.i268.4.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_4_4 v_mul4_i268_4_4 (0xFFFFFFFF)@uint64;
(*   %and9.i273.4.4 = and i64 %mul3.i267.4.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_4_4 v_mul3_i267_4_4 (0xFFFFFFFF)@uint64;
(*   %add.i274.4.4 = add nuw nsw i64 %shr7.i271.4.4, %and8.i272.4.4 *)
adds discard_751 v_add_i274_4_4 v_shr7_i271_4_4 v_and8_i272_4_4;
(* Heuristics applied. *)
assert true && eq discard_751 0@1;
assume eq discard_751 0 && true;
(*   %add10.i275.4.4 = add nuw nsw i64 %add.i274.4.4, %and9.i273.4.4 *)
adds discard_752 v_add10_i275_4_4 v_add_i274_4_4 v_and9_i273_4_4;
(* Heuristics applied. *)
assert true && eq discard_752 0@1;
assume eq discard_752 0 && true;
(*   %shr11.i276.4.4 = lshr i64 %add10.i275.4.4, 32 *)
(* You may need to modify here *)
split v_shr11_i276_4_4 tmp_to_be_used v_add10_i275_4_4 32;
(*   %shl.i277.4.4 = shl i64 %add10.i275.4.4, 32 *)
shls discard_753 v_shl_i277_4_4 v_add10_i275_4_4 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_4_4 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_4_4 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.4.4 = or i64 %shl.i277.4.4, %and6.i270.4.4 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_4_4 v_shl_i277_4_4 v_and6_i270_4_4;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_4_4 v_shl_i277_4_4 + v_and6_i270_4_4;
assume eq v_xor68_i278_4_4 v_shl_i277_4_4 + v_and6_i270_4_4 && true;
(*   %shr13.i279.4.4 = lshr i64 %mul4.i268.4.4, 32 *)
(* You may need to modify here *)
split v_shr13_i279_4_4 tmp_to_be_used v_mul4_i268_4_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_4_4;
assume eq tmp_to_be_used v_and8_i272_4_4 && true;
(*   %shr14.i280.4.4 = lshr i64 %mul3.i267.4.4, 32 *)
(* You may need to modify here *)
split v_shr14_i280_4_4 tmp_to_be_used v_mul3_i267_4_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_4_4;
assume eq tmp_to_be_used v_and9_i273_4_4 && true;
(*   %and15.i281.4.4 = and i64 %mul5.i269.4.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_4_4 v_mul5_i269_4_4 (0xFFFFFFFF)@uint64;
(*   %add16.i282.4.4 = add nuw nsw i64 %shr13.i279.4.4, %shr14.i280.4.4 *)
adds discard_754 v_add16_i282_4_4 v_shr13_i279_4_4 v_shr14_i280_4_4;
(* Heuristics applied. *)
assert true && eq discard_754 0@1;
assume eq discard_754 0 && true;
(*   %add17.i283.4.4 = add nuw nsw i64 %add16.i282.4.4, %and15.i281.4.4 *)
adds discard_755 v_add17_i283_4_4 v_add16_i282_4_4 v_and15_i281_4_4;
(* Heuristics applied. *)
assert true && eq discard_755 0@1;
assume eq discard_755 0 && true;
(*   %add18.i284.4.4 = add nuw nsw i64 %add17.i283.4.4, %shr11.i276.4.4 *)
adds discard_756 v_add18_i284_4_4 v_add17_i283_4_4 v_shr11_i276_4_4;
(* Heuristics applied. *)
assert true && eq discard_756 0@1;
assume eq discard_756 0 && true;
(*   %and19.i285.4.4 = and i64 %add18.i284.4.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_4_4 v_add18_i284_4_4 (0xFFFFFFFF)@uint64;
(*   %and21.i287.4.4 = and i64 %add18.i284.4.4, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_4_4 v_add18_i284_4_4 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_4_4 v_and21_i287_4_4 + v_and19_i285_4_4;
assume eq v_add18_i284_4_4 v_and21_i287_4_4 + v_and19_i285_4_4 && true;
(*   %and22.i288.4.4 = and i64 %mul5.i269.4.4, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_4_4 v_mul5_i269_4_4 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_4_4 v_and22_i288_4_4 + v_and15_i281_4_4;
assume eq v_mul5_i269_4_4 v_and22_i288_4_4 + v_and15_i281_4_4 && true;
(*   %add23.i289.4.4 = add i64 %and21.i287.4.4, %and22.i288.4.4 *)
adds discard_757 v_add23_i289_4_4 v_and21_i287_4_4 v_and22_i288_4_4;
(* Heuristics applied. *)
assert true && eq discard_757 0@1;
assume eq discard_757 0 && true;
(*   %xor2569.i290.4.4 = or i64 %add23.i289.4.4, %and19.i285.4.4 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_4_4 v_add23_i289_4_4 v_and19_i285_4_4;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_4_4 v_add23_i289_4_4 + v_and19_i285_4_4;
assume eq v_xor2569_i290_4_4 v_add23_i289_4_4 + v_and19_i285_4_4 && true;
(*   %add82.4.4 = add i64 %xor68.i278.4.4, %add82.4.3 *)
adds discard_758 v_add82_4_4 v_xor68_i278_4_4 v_add82_4_3;
(*   %xor.i256.4.4 = xor i64 %add82.4.4, %shl.i277.4.4 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_4_4 v_add82_4_4 v_shl_i277_4_4;
(*   %xor1.i257.4.4 = xor i64 %shl.i277.4.4, %add82.4.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_4_4 v_shl_i277_4_4 v_add82_4_3;
(*   %or.i258.4.4 = or i64 %xor.i256.4.4, %xor1.i257.4.4 *)
(* You may need to modify here *)
or uint64 v_or_i258_4_4 v_xor_i256_4_4 v_xor1_i257_4_4;
(*   %xor2.i259.4.4 = xor i64 %or.i258.4.4, %add82.4.4 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_4_4 v_or_i258_4_4 v_add82_4_4;
(*   %shr.i260.4.4 = lshr i64 %xor2.i259.4.4, 63 *)
(* You may need to modify here *)
split v_shr_i260_4_4 tmp_to_be_used v_xor2_i259_4_4 63;
(* generated by python *)
assert true && limbs 64 [v_add82_4_4, v_shr_i260_4_4] = limbs 64 [v_xor68_i278_4_4, 0@64] + limbs 64 [v_add82_4_3, 0@64];
assume limbs 64 [v_add82_4_4, v_shr_i260_4_4] = limbs 64 [v_xor68_i278_4_4, 0] + limbs 64 [v_add82_4_3, 0] && true;
(*   %add89.4.4 = add i64 %shr.i260.4.4, %xor2569.i290.4.4 *)
adds discard_759 v_add89_4_4 v_shr_i260_4_4 v_xor2569_i290_4_4;
(* Heuristics applied. *)
assert true && eq discard_759 0@1;
assume eq discard_759 0 && true;
(*   %add90.4.4 = add i64 %add89.4.4, %add90.4.3 *)
adds discard_760 v_add90_4_4 v_add89_4_4 v_add90_4_3;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_760 0@1; *)
(* assume eq discard_760 0 && true; *)
(*   %231 = xor i64 %add89.4.4, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v231 v_add89_4_4 (0x8000000000000000)@uint64;
(*   %xor2.i253.4.4 = and i64 %231, %add23.i289.4.4 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_4_4 v231 v_add23_i289_4_4;
(*   %xor.i244.4.4 = xor i64 %add90.4.4, %add89.4.4 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_4_4 v_add90_4_4 v_add89_4_4;
(*   %xor1.i245.4.4 = xor i64 %add89.4.4, %add90.4.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_4_4 v_add89_4_4 v_add90_4_3;
(*   %or.i246.4.4 = or i64 %xor.i244.4.4, %xor1.i245.4.4 *)
(* You may need to modify here *)
or uint64 v_or_i246_4_4 v_xor_i244_4_4 v_xor1_i245_4_4;
(*   %xor2.i247.4.4 = xor i64 %or.i246.4.4, %add90.4.4 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_4_4 v_or_i246_4_4 v_add90_4_4;
(*   %shr.i254326.4.4 = or i64 %xor2.i247.4.4, %xor2.i253.4.4 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_4_4 v_xor2_i247_4_4 v_xor2_i253_4_4;
(*   %or94325.4.4 = lshr i64 %shr.i254326.4.4, 63 *)
(* You may need to modify here *)
split v_or94325_4_4 tmp_to_be_used v_shr_i254326_4_4 63;
(* generated by python *)
assert true && limbs 64 [v_add90_4_4, v_or94325_4_4] = limbs 64 [v_shr_i260_4_4, 0@64] + limbs 64 [v_xor2569_i290_4_4, 0@64] + limbs 64 [v_add90_4_3, 0@64];
assume limbs 64 [v_add90_4_4, v_or94325_4_4] = limbs 64 [v_shr_i260_4_4, 0] + limbs 64 [v_xor2569_i290_4_4, 0] + limbs 64 [v_add90_4_3, 0] && true;
(*   %add96.4.4 = add i64 %or94325.4.4, %add96.4.3 *)
adds discard_761 v_add96_4_4 v_or94325_4_4 v_add96_4_3;
(* Heuristics applied. *)
assert true && eq discard_761 0@1;
assume eq discard_761 0 && true;
(*   %arrayidx74.4.5 = getelementptr inbounds i64, i64* %mc, i64 10 *)
(*   %232 = load i64, i64* %arrayidx74.4.5, align 8, !tbaa !3 *)
mov v232 mc_80;
(*   %233 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 6), align 16, !tbaa !3 *)
mov v233 p751p1_48;
(*   %and.i262.4.5 = and i64 %232, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_4_5 v232 (0xFFFFFFFF)@uint64;
(*   %shr.i263.4.5 = lshr i64 %232, 32 *)
(* You may need to modify here *)
split v_shr_i263_4_5 tmp_to_be_used v232 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_4_5;
assume eq tmp_to_be_used v_and_i262_4_5 && true;
(*   %and1.i264.4.5 = and i64 %233, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_4_5 v233 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.4.5 = lshr i64 %233, 32 *)
(* You may need to modify here *)
split v_shr2_i265_4_5 tmp_to_be_used v233 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_4_5;
assume eq tmp_to_be_used v_and1_i264_4_5 && true;
(*   %mul.i266.4.5 = mul nuw i64 %and1.i264.4.5, %and.i262.4.5 *)
mul v_mul_i266_4_5 v_and1_i264_4_5 v_and_i262_4_5;
(*   %mul3.i267.4.5 = mul nuw i64 %shr2.i265.4.5, %and.i262.4.5 *)
mul v_mul3_i267_4_5 v_shr2_i265_4_5 v_and_i262_4_5;
(*   %mul4.i268.4.5 = mul nuw i64 %and1.i264.4.5, %shr.i263.4.5 *)
mul v_mul4_i268_4_5 v_and1_i264_4_5 v_shr_i263_4_5;
(*   %mul5.i269.4.5 = mul nuw i64 %shr2.i265.4.5, %shr.i263.4.5 *)
mul v_mul5_i269_4_5 v_shr2_i265_4_5 v_shr_i263_4_5;
(*   %and6.i270.4.5 = and i64 %mul.i266.4.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_4_5 v_mul_i266_4_5 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.4.5 = lshr i64 %mul.i266.4.5, 32 *)
(* You may need to modify here *)
split v_shr7_i271_4_5 tmp_to_be_used v_mul_i266_4_5 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_4_5;
assume eq tmp_to_be_used v_and6_i270_4_5 && true;
(*   %and8.i272.4.5 = and i64 %mul4.i268.4.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_4_5 v_mul4_i268_4_5 (0xFFFFFFFF)@uint64;
(*   %and9.i273.4.5 = and i64 %mul3.i267.4.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_4_5 v_mul3_i267_4_5 (0xFFFFFFFF)@uint64;
(*   %add.i274.4.5 = add nuw nsw i64 %shr7.i271.4.5, %and8.i272.4.5 *)
adds discard_762 v_add_i274_4_5 v_shr7_i271_4_5 v_and8_i272_4_5;
(* Heuristics applied. *)
assert true && eq discard_762 0@1;
assume eq discard_762 0 && true;
(*   %add10.i275.4.5 = add nuw nsw i64 %add.i274.4.5, %and9.i273.4.5 *)
adds discard_763 v_add10_i275_4_5 v_add_i274_4_5 v_and9_i273_4_5;
(* Heuristics applied. *)
assert true && eq discard_763 0@1;
assume eq discard_763 0 && true;
(*   %shr11.i276.4.5 = lshr i64 %add10.i275.4.5, 32 *)
(* You may need to modify here *)
split v_shr11_i276_4_5 tmp_to_be_used v_add10_i275_4_5 32;
(*   %shl.i277.4.5 = shl i64 %add10.i275.4.5, 32 *)
shls discard_764 v_shl_i277_4_5 v_add10_i275_4_5 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_4_5 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_4_5 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.4.5 = or i64 %shl.i277.4.5, %and6.i270.4.5 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_4_5 v_shl_i277_4_5 v_and6_i270_4_5;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_4_5 v_shl_i277_4_5 + v_and6_i270_4_5;
assume eq v_xor68_i278_4_5 v_shl_i277_4_5 + v_and6_i270_4_5 && true;
(*   %shr13.i279.4.5 = lshr i64 %mul4.i268.4.5, 32 *)
(* You may need to modify here *)
split v_shr13_i279_4_5 tmp_to_be_used v_mul4_i268_4_5 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_4_5;
assume eq tmp_to_be_used v_and8_i272_4_5 && true;
(*   %shr14.i280.4.5 = lshr i64 %mul3.i267.4.5, 32 *)
(* You may need to modify here *)
split v_shr14_i280_4_5 tmp_to_be_used v_mul3_i267_4_5 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_4_5;
assume eq tmp_to_be_used v_and9_i273_4_5 && true;
(*   %and15.i281.4.5 = and i64 %mul5.i269.4.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_4_5 v_mul5_i269_4_5 (0xFFFFFFFF)@uint64;
(*   %add16.i282.4.5 = add nuw nsw i64 %shr13.i279.4.5, %shr14.i280.4.5 *)
adds discard_765 v_add16_i282_4_5 v_shr13_i279_4_5 v_shr14_i280_4_5;
(* Heuristics applied. *)
assert true && eq discard_765 0@1;
assume eq discard_765 0 && true;
(*   %add17.i283.4.5 = add nuw nsw i64 %add16.i282.4.5, %and15.i281.4.5 *)
adds discard_766 v_add17_i283_4_5 v_add16_i282_4_5 v_and15_i281_4_5;
(* Heuristics applied. *)
assert true && eq discard_766 0@1;
assume eq discard_766 0 && true;
(*   %add18.i284.4.5 = add nuw nsw i64 %add17.i283.4.5, %shr11.i276.4.5 *)
adds discard_767 v_add18_i284_4_5 v_add17_i283_4_5 v_shr11_i276_4_5;
(* Heuristics applied. *)
assert true && eq discard_767 0@1;
assume eq discard_767 0 && true;
(*   %and19.i285.4.5 = and i64 %add18.i284.4.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_4_5 v_add18_i284_4_5 (0xFFFFFFFF)@uint64;
(*   %and21.i287.4.5 = and i64 %add18.i284.4.5, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_4_5 v_add18_i284_4_5 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_4_5 v_and21_i287_4_5 + v_and19_i285_4_5;
assume eq v_add18_i284_4_5 v_and21_i287_4_5 + v_and19_i285_4_5 && true;
(*   %and22.i288.4.5 = and i64 %mul5.i269.4.5, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_4_5 v_mul5_i269_4_5 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_4_5 v_and22_i288_4_5 + v_and15_i281_4_5;
assume eq v_mul5_i269_4_5 v_and22_i288_4_5 + v_and15_i281_4_5 && true;
(*   %add23.i289.4.5 = add i64 %and21.i287.4.5, %and22.i288.4.5 *)
adds discard_768 v_add23_i289_4_5 v_and21_i287_4_5 v_and22_i288_4_5;
(* Heuristics applied. *)
assert true && eq discard_768 0@1;
assume eq discard_768 0 && true;
(*   %xor2569.i290.4.5 = or i64 %add23.i289.4.5, %and19.i285.4.5 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_4_5 v_add23_i289_4_5 v_and19_i285_4_5;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_4_5 v_add23_i289_4_5 + v_and19_i285_4_5;
assume eq v_xor2569_i290_4_5 v_add23_i289_4_5 + v_and19_i285_4_5 && true;
(*   %add82.4.5 = add i64 %xor68.i278.4.5, %add82.4.4 *)
adds discard_769 v_add82_4_5 v_xor68_i278_4_5 v_add82_4_4;
(*   %xor.i256.4.5 = xor i64 %add82.4.5, %shl.i277.4.5 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_4_5 v_add82_4_5 v_shl_i277_4_5;
(*   %xor1.i257.4.5 = xor i64 %shl.i277.4.5, %add82.4.4 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_4_5 v_shl_i277_4_5 v_add82_4_4;
(*   %or.i258.4.5 = or i64 %xor.i256.4.5, %xor1.i257.4.5 *)
(* You may need to modify here *)
or uint64 v_or_i258_4_5 v_xor_i256_4_5 v_xor1_i257_4_5;
(*   %xor2.i259.4.5 = xor i64 %or.i258.4.5, %add82.4.5 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_4_5 v_or_i258_4_5 v_add82_4_5;
(*   %shr.i260.4.5 = lshr i64 %xor2.i259.4.5, 63 *)
(* You may need to modify here *)
split v_shr_i260_4_5 tmp_to_be_used v_xor2_i259_4_5 63;
(* generated by python *)
assert true && limbs 64 [v_add82_4_5, v_shr_i260_4_5] = limbs 64 [v_xor68_i278_4_5, 0@64] + limbs 64 [v_add82_4_4, 0@64];
assume limbs 64 [v_add82_4_5, v_shr_i260_4_5] = limbs 64 [v_xor68_i278_4_5, 0] + limbs 64 [v_add82_4_4, 0] && true;
(*   %add89.4.5 = add i64 %shr.i260.4.5, %xor2569.i290.4.5 *)
adds discard_770 v_add89_4_5 v_shr_i260_4_5 v_xor2569_i290_4_5;
(* Heuristics applied. *)
assert true && eq discard_770 0@1;
assume eq discard_770 0 && true;
(*   %add90.4.5 = add i64 %add89.4.5, %add90.4.4 *)
adds discard_771 v_add90_4_5 v_add89_4_5 v_add90_4_4;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_771 0@1; *)
(* assume eq discard_771 0 && true; *)
(*   %234 = xor i64 %add89.4.5, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v234 v_add89_4_5 (0x8000000000000000)@uint64;
(*   %xor2.i253.4.5 = and i64 %234, %add23.i289.4.5 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_4_5 v234 v_add23_i289_4_5;
(*   %xor.i244.4.5 = xor i64 %add90.4.5, %add89.4.5 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_4_5 v_add90_4_5 v_add89_4_5;
(*   %xor1.i245.4.5 = xor i64 %add89.4.5, %add90.4.4 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_4_5 v_add89_4_5 v_add90_4_4;
(*   %or.i246.4.5 = or i64 %xor.i244.4.5, %xor1.i245.4.5 *)
(* You may need to modify here *)
or uint64 v_or_i246_4_5 v_xor_i244_4_5 v_xor1_i245_4_5;
(*   %xor2.i247.4.5 = xor i64 %or.i246.4.5, %add90.4.5 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_4_5 v_or_i246_4_5 v_add90_4_5;
(*   %shr.i254326.4.5 = or i64 %xor2.i247.4.5, %xor2.i253.4.5 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_4_5 v_xor2_i247_4_5 v_xor2_i253_4_5;
(*   %or94325.4.5 = lshr i64 %shr.i254326.4.5, 63 *)
(* You may need to modify here *)
split v_or94325_4_5 tmp_to_be_used v_shr_i254326_4_5 63;
(* generated by python *)
assert true && limbs 64 [v_add90_4_5, v_or94325_4_5] = limbs 64 [v_shr_i260_4_5, 0@64] + limbs 64 [v_xor2569_i290_4_5, 0@64] + limbs 64 [v_add90_4_4, 0@64];
assume limbs 64 [v_add90_4_5, v_or94325_4_5] = limbs 64 [v_shr_i260_4_5, 0] + limbs 64 [v_xor2569_i290_4_5, 0] + limbs 64 [v_add90_4_4, 0] && true;
(*   %add96.4.5 = add i64 %or94325.4.5, %add96.4.4 *)
adds discard_772 v_add96_4_5 v_or94325_4_5 v_add96_4_4;
(* Heuristics applied. *)
assert true && eq discard_772 0@1;
assume eq discard_772 0 && true;
(*   %arrayidx74.4.6 = getelementptr inbounds i64, i64* %mc, i64 11 *)
(*   %235 = load i64, i64* %arrayidx74.4.6, align 8, !tbaa !3 *)
mov v235 mc_88;
(*   %236 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 5), align 8, !tbaa !3 *)
mov v236 p751p1_40;
(*   %and.i262.4.6 = and i64 %235, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_4_6 v235 (0xFFFFFFFF)@uint64;
(*   %shr.i263.4.6 = lshr i64 %235, 32 *)
(* You may need to modify here *)
split v_shr_i263_4_6 tmp_to_be_used v235 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_4_6;
assume eq tmp_to_be_used v_and_i262_4_6 && true;
(*   %and1.i264.4.6 = and i64 %236, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_4_6 v236 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.4.6 = lshr i64 %236, 32 *)
(* You may need to modify here *)
split v_shr2_i265_4_6 tmp_to_be_used v236 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_4_6;
assume eq tmp_to_be_used v_and1_i264_4_6 && true;
(*   %mul.i266.4.6 = mul nuw i64 %and1.i264.4.6, %and.i262.4.6 *)
mul v_mul_i266_4_6 v_and1_i264_4_6 v_and_i262_4_6;
(*   %mul3.i267.4.6 = mul nuw i64 %shr2.i265.4.6, %and.i262.4.6 *)
mul v_mul3_i267_4_6 v_shr2_i265_4_6 v_and_i262_4_6;
(*   %mul4.i268.4.6 = mul nuw i64 %and1.i264.4.6, %shr.i263.4.6 *)
mul v_mul4_i268_4_6 v_and1_i264_4_6 v_shr_i263_4_6;
(*   %mul5.i269.4.6 = mul nuw i64 %shr2.i265.4.6, %shr.i263.4.6 *)
mul v_mul5_i269_4_6 v_shr2_i265_4_6 v_shr_i263_4_6;
(*   %and6.i270.4.6 = and i64 %mul.i266.4.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_4_6 v_mul_i266_4_6 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.4.6 = lshr i64 %mul.i266.4.6, 32 *)
(* You may need to modify here *)
split v_shr7_i271_4_6 tmp_to_be_used v_mul_i266_4_6 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_4_6;
assume eq tmp_to_be_used v_and6_i270_4_6 && true;
(*   %and8.i272.4.6 = and i64 %mul4.i268.4.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_4_6 v_mul4_i268_4_6 (0xFFFFFFFF)@uint64;
(*   %and9.i273.4.6 = and i64 %mul3.i267.4.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_4_6 v_mul3_i267_4_6 (0xFFFFFFFF)@uint64;
(*   %add.i274.4.6 = add nuw nsw i64 %shr7.i271.4.6, %and8.i272.4.6 *)
adds discard_773 v_add_i274_4_6 v_shr7_i271_4_6 v_and8_i272_4_6;
(* Heuristics applied. *)
assert true && eq discard_773 0@1;
assume eq discard_773 0 && true;
(*   %add10.i275.4.6 = add nuw nsw i64 %add.i274.4.6, %and9.i273.4.6 *)
adds discard_774 v_add10_i275_4_6 v_add_i274_4_6 v_and9_i273_4_6;
(* Heuristics applied. *)
assert true && eq discard_774 0@1;
assume eq discard_774 0 && true;
(*   %shr11.i276.4.6 = lshr i64 %add10.i275.4.6, 32 *)
(* You may need to modify here *)
split v_shr11_i276_4_6 tmp_to_be_used v_add10_i275_4_6 32;
(*   %shl.i277.4.6 = shl i64 %add10.i275.4.6, 32 *)
shls discard_775 v_shl_i277_4_6 v_add10_i275_4_6 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_4_6 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_4_6 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.4.6 = or i64 %shl.i277.4.6, %and6.i270.4.6 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_4_6 v_shl_i277_4_6 v_and6_i270_4_6;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_4_6 v_shl_i277_4_6 + v_and6_i270_4_6;
assume eq v_xor68_i278_4_6 v_shl_i277_4_6 + v_and6_i270_4_6 && true;
(*   %shr13.i279.4.6 = lshr i64 %mul4.i268.4.6, 32 *)
(* You may need to modify here *)
split v_shr13_i279_4_6 tmp_to_be_used v_mul4_i268_4_6 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_4_6;
assume eq tmp_to_be_used v_and8_i272_4_6 && true;
(*   %shr14.i280.4.6 = lshr i64 %mul3.i267.4.6, 32 *)
(* You may need to modify here *)
split v_shr14_i280_4_6 tmp_to_be_used v_mul3_i267_4_6 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_4_6;
assume eq tmp_to_be_used v_and9_i273_4_6 && true;
(*   %and15.i281.4.6 = and i64 %mul5.i269.4.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_4_6 v_mul5_i269_4_6 (0xFFFFFFFF)@uint64;
(*   %add16.i282.4.6 = add nuw nsw i64 %shr13.i279.4.6, %shr14.i280.4.6 *)
adds discard_776 v_add16_i282_4_6 v_shr13_i279_4_6 v_shr14_i280_4_6;
(* Heuristics applied. *)
assert true && eq discard_776 0@1;
assume eq discard_776 0 && true;
(*   %add17.i283.4.6 = add nuw nsw i64 %add16.i282.4.6, %and15.i281.4.6 *)
adds discard_777 v_add17_i283_4_6 v_add16_i282_4_6 v_and15_i281_4_6;
(* Heuristics applied. *)
assert true && eq discard_777 0@1;
assume eq discard_777 0 && true;
(*   %add18.i284.4.6 = add nuw nsw i64 %add17.i283.4.6, %shr11.i276.4.6 *)
adds discard_778 v_add18_i284_4_6 v_add17_i283_4_6 v_shr11_i276_4_6;
(* Heuristics applied. *)
assert true && eq discard_778 0@1;
assume eq discard_778 0 && true;
(*   %and19.i285.4.6 = and i64 %add18.i284.4.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_4_6 v_add18_i284_4_6 (0xFFFFFFFF)@uint64;
(*   %and21.i287.4.6 = and i64 %add18.i284.4.6, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_4_6 v_add18_i284_4_6 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_4_6 v_and21_i287_4_6 + v_and19_i285_4_6;
assume eq v_add18_i284_4_6 v_and21_i287_4_6 + v_and19_i285_4_6 && true;
(*   %and22.i288.4.6 = and i64 %mul5.i269.4.6, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_4_6 v_mul5_i269_4_6 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_4_6 v_and22_i288_4_6 + v_and15_i281_4_6;
assume eq v_mul5_i269_4_6 v_and22_i288_4_6 + v_and15_i281_4_6 && true;
(*   %add23.i289.4.6 = add i64 %and21.i287.4.6, %and22.i288.4.6 *)
adds discard_779 v_add23_i289_4_6 v_and21_i287_4_6 v_and22_i288_4_6;
(* Heuristics applied. *)
assert true && eq discard_779 0@1;
assume eq discard_779 0 && true;
(*   %xor2569.i290.4.6 = or i64 %add23.i289.4.6, %and19.i285.4.6 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_4_6 v_add23_i289_4_6 v_and19_i285_4_6;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_4_6 v_add23_i289_4_6 + v_and19_i285_4_6;
assume eq v_xor2569_i290_4_6 v_add23_i289_4_6 + v_and19_i285_4_6 && true;
(*   %add82.4.6 = add i64 %xor68.i278.4.6, %add82.4.5 *)
adds discard_780 v_add82_4_6 v_xor68_i278_4_6 v_add82_4_5;
(*   %xor.i256.4.6 = xor i64 %add82.4.6, %shl.i277.4.6 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_4_6 v_add82_4_6 v_shl_i277_4_6;
(*   %xor1.i257.4.6 = xor i64 %shl.i277.4.6, %add82.4.5 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_4_6 v_shl_i277_4_6 v_add82_4_5;
(*   %or.i258.4.6 = or i64 %xor.i256.4.6, %xor1.i257.4.6 *)
(* You may need to modify here *)
or uint64 v_or_i258_4_6 v_xor_i256_4_6 v_xor1_i257_4_6;
(*   %xor2.i259.4.6 = xor i64 %or.i258.4.6, %add82.4.6 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_4_6 v_or_i258_4_6 v_add82_4_6;
(*   %shr.i260.4.6 = lshr i64 %xor2.i259.4.6, 63 *)
(* You may need to modify here *)
split v_shr_i260_4_6 tmp_to_be_used v_xor2_i259_4_6 63;
(* generated by python *)
assert true && limbs 64 [v_add82_4_6, v_shr_i260_4_6] = limbs 64 [v_xor68_i278_4_6, 0@64] + limbs 64 [v_add82_4_5, 0@64];
assume limbs 64 [v_add82_4_6, v_shr_i260_4_6] = limbs 64 [v_xor68_i278_4_6, 0] + limbs 64 [v_add82_4_5, 0] && true;
(*   %add89.4.6 = add i64 %shr.i260.4.6, %xor2569.i290.4.6 *)
adds discard_781 v_add89_4_6 v_shr_i260_4_6 v_xor2569_i290_4_6;
(* Heuristics applied. *)
assert true && eq discard_781 0@1;
assume eq discard_781 0 && true;
(*   %add90.4.6 = add i64 %add89.4.6, %add90.4.5 *)
adds discard_782 v_add90_4_6 v_add89_4_6 v_add90_4_5;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_782 0@1; *)
(* assume eq discard_782 0 && true; *)
(*   %237 = xor i64 %add89.4.6, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v237 v_add89_4_6 (0x8000000000000000)@uint64;
(*   %xor2.i253.4.6 = and i64 %237, %add23.i289.4.6 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_4_6 v237 v_add23_i289_4_6;
(*   %xor.i244.4.6 = xor i64 %add90.4.6, %add89.4.6 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_4_6 v_add90_4_6 v_add89_4_6;
(*   %xor1.i245.4.6 = xor i64 %add89.4.6, %add90.4.5 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_4_6 v_add89_4_6 v_add90_4_5;
(*   %or.i246.4.6 = or i64 %xor.i244.4.6, %xor1.i245.4.6 *)
(* You may need to modify here *)
or uint64 v_or_i246_4_6 v_xor_i244_4_6 v_xor1_i245_4_6;
(*   %xor2.i247.4.6 = xor i64 %or.i246.4.6, %add90.4.6 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_4_6 v_or_i246_4_6 v_add90_4_6;
(*   %shr.i254326.4.6 = or i64 %xor2.i247.4.6, %xor2.i253.4.6 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_4_6 v_xor2_i247_4_6 v_xor2_i253_4_6;
(*   %or94325.4.6 = lshr i64 %shr.i254326.4.6, 63 *)
(* You may need to modify here *)
split v_or94325_4_6 tmp_to_be_used v_shr_i254326_4_6 63;
(* generated by python *)
assert true && limbs 64 [v_add90_4_6, v_or94325_4_6] = limbs 64 [v_shr_i260_4_6, 0@64] + limbs 64 [v_xor2569_i290_4_6, 0@64] + limbs 64 [v_add90_4_5, 0@64];
assume limbs 64 [v_add90_4_6, v_or94325_4_6] = limbs 64 [v_shr_i260_4_6, 0] + limbs 64 [v_xor2569_i290_4_6, 0] + limbs 64 [v_add90_4_5, 0] && true;
(*   %add96.4.6 = add i64 %or94325.4.6, %add96.4.5 *)
adds discard_783 v_add96_4_6 v_or94325_4_6 v_add96_4_5;
(* Heuristics applied. *)
assert true && eq discard_783 0@1;
assume eq discard_783 0 && true;
(*   %arrayidx104.4 = getelementptr inbounds i64, i64* %ma, i64 16 *)
(*   %238 = load i64, i64* %arrayidx104.4, align 8, !tbaa !3 *)
mov v238 ma_128;
(*   %add105.4 = add i64 %238, %add82.4.6 *)
adds discard_784 v_add105_4 v238 v_add82_4_6;
(*   %xor.i238.4 = xor i64 %add105.4, %add82.4.6 *)
(* You may need to modify here *)
xor uint64 v_xor_i238_4 v_add105_4 v_add82_4_6;
(*   %xor1.i239.4 = xor i64 %238, %add82.4.6 *)
(* You may need to modify here *)
xor uint64 v_xor1_i239_4 v238 v_add82_4_6;
(*   %or.i240.4 = or i64 %xor.i238.4, %xor1.i239.4 *)
(* You may need to modify here *)
or uint64 v_or_i240_4 v_xor_i238_4 v_xor1_i239_4;
(*   %xor2.i241.4 = xor i64 %or.i240.4, %add105.4 *)
(* You may need to modify here *)
xor uint64 v_xor2_i241_4 v_or_i240_4 v_add105_4;
(*   %shr.i242.4 = lshr i64 %xor2.i241.4, 63 *)
(* You may need to modify here *)
split v_shr_i242_4 tmp_to_be_used v_xor2_i241_4 63;
(* generated by python *)
assert true && limbs 64 [v_add105_4, v_shr_i242_4] = limbs 64 [v238, 0@64] + limbs 64 [v_add82_4_6, 0@64];
assume limbs 64 [v_add105_4, v_shr_i242_4] = limbs 64 [v238, 0] + limbs 64 [v_add82_4_6, 0] && true;
(*   %add111.4 = add i64 %shr.i242.4, %add90.4.6 *)
adds discard_785 v_add111_4 v_shr_i242_4 v_add90_4_6;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_785 0@1; *)
(* assume eq discard_785 0 && true; *)
(*   store i64 %add105.4, i64* %arrayidx50.4, align 8, !tbaa !3 *)
mov mc_32 v_add105_4;
(*   %239 = xor i64 %add111.4, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v239 v_add111_4 (0x8000000000000000)@uint64;
(*   %xor2.i.4 = and i64 %239, %add90.4.6 *)
(* You may need to modify here *)
and uint64 v_xor2_i_4 v239 v_add90_4_6;
(*   %shr.i237.4 = lshr i64 %xor2.i.4, 63 *)
(* You may need to modify here *)
split v_shr_i237_4 tmp_to_be_used v_xor2_i_4 63;
(* generated by python *)
assert true && limbs 64 [v_add111_4, v_shr_i237_4] = limbs 64 [v_shr_i242_4, 0@64] + limbs 64 [v_add90_4_6, 0@64];
assume limbs 64 [v_add111_4, v_shr_i237_4] = limbs 64 [v_shr_i242_4, 0] + limbs 64 [v_add90_4_6, 0] && true;
(*   %add118.4 = add i64 %shr.i237.4, %add96.4.6 *)
adds discard_786 v_add118_4 v_shr_i237_4 v_add96_4_6;
(* Heuristics applied. *)
assert true && eq discard_786 0@1;
assume eq discard_786 0 && true;
(*   %arrayidx74.5 = getelementptr inbounds i64, i64* %mc, i64 6 *)
(*   %240 = load i64, i64* %arrayidx74.5, align 8, !tbaa !3 *)
mov v240 mc_48;
(*   %241 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 11), align 8, !tbaa !3 *)
mov v241 p751p1_88;
(*   %and.i262.5 = and i64 %240, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_5 v240 (0xFFFFFFFF)@uint64;
(*   %shr.i263.5 = lshr i64 %240, 32 *)
(* You may need to modify here *)
split v_shr_i263_5 tmp_to_be_used v240 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_5;
assume eq tmp_to_be_used v_and_i262_5 && true;
(*   %and1.i264.5 = and i64 %241, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_5 v241 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.5 = lshr i64 %241, 32 *)
(* You may need to modify here *)
split v_shr2_i265_5 tmp_to_be_used v241 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_5;
assume eq tmp_to_be_used v_and1_i264_5 && true;
(*   %mul.i266.5 = mul nuw i64 %and1.i264.5, %and.i262.5 *)
mul v_mul_i266_5 v_and1_i264_5 v_and_i262_5;
(*   %mul3.i267.5 = mul nuw i64 %shr2.i265.5, %and.i262.5 *)
mul v_mul3_i267_5 v_shr2_i265_5 v_and_i262_5;
(*   %mul4.i268.5 = mul nuw i64 %and1.i264.5, %shr.i263.5 *)
mul v_mul4_i268_5 v_and1_i264_5 v_shr_i263_5;
(*   %mul5.i269.5 = mul nuw i64 %shr2.i265.5, %shr.i263.5 *)
mul v_mul5_i269_5 v_shr2_i265_5 v_shr_i263_5;
(*   %and6.i270.5 = and i64 %mul.i266.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_5 v_mul_i266_5 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.5 = lshr i64 %mul.i266.5, 32 *)
(* You may need to modify here *)
split v_shr7_i271_5 tmp_to_be_used v_mul_i266_5 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_5;
assume eq tmp_to_be_used v_and6_i270_5 && true;
(*   %and8.i272.5 = and i64 %mul4.i268.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_5 v_mul4_i268_5 (0xFFFFFFFF)@uint64;
(*   %and9.i273.5 = and i64 %mul3.i267.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_5 v_mul3_i267_5 (0xFFFFFFFF)@uint64;
(*   %add.i274.5 = add nuw nsw i64 %shr7.i271.5, %and8.i272.5 *)
adds discard_787 v_add_i274_5 v_shr7_i271_5 v_and8_i272_5;
(* Heuristics applied. *)
assert true && eq discard_787 0@1;
assume eq discard_787 0 && true;
(*   %add10.i275.5 = add nuw nsw i64 %add.i274.5, %and9.i273.5 *)
adds discard_788 v_add10_i275_5 v_add_i274_5 v_and9_i273_5;
(* Heuristics applied. *)
assert true && eq discard_788 0@1;
assume eq discard_788 0 && true;
(*   %shr11.i276.5 = lshr i64 %add10.i275.5, 32 *)
(* You may need to modify here *)
split v_shr11_i276_5 tmp_to_be_used v_add10_i275_5 32;
(*   %shl.i277.5 = shl i64 %add10.i275.5, 32 *)
shls discard_789 v_shl_i277_5 v_add10_i275_5 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_5 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_5 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.5 = or i64 %shl.i277.5, %and6.i270.5 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_5 v_shl_i277_5 v_and6_i270_5;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_5 v_shl_i277_5 + v_and6_i270_5;
assume eq v_xor68_i278_5 v_shl_i277_5 + v_and6_i270_5 && true;
(*   %shr13.i279.5 = lshr i64 %mul4.i268.5, 32 *)
(* You may need to modify here *)
split v_shr13_i279_5 tmp_to_be_used v_mul4_i268_5 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_5;
assume eq tmp_to_be_used v_and8_i272_5 && true;
(*   %shr14.i280.5 = lshr i64 %mul3.i267.5, 32 *)
(* You may need to modify here *)
split v_shr14_i280_5 tmp_to_be_used v_mul3_i267_5 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_5;
assume eq tmp_to_be_used v_and9_i273_5 && true;
(*   %and15.i281.5 = and i64 %mul5.i269.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_5 v_mul5_i269_5 (0xFFFFFFFF)@uint64;
(*   %add16.i282.5 = add nuw nsw i64 %shr13.i279.5, %shr14.i280.5 *)
adds discard_790 v_add16_i282_5 v_shr13_i279_5 v_shr14_i280_5;
(* Heuristics applied. *)
assert true && eq discard_790 0@1;
assume eq discard_790 0 && true;
(*   %add17.i283.5 = add nuw nsw i64 %add16.i282.5, %and15.i281.5 *)
adds discard_791 v_add17_i283_5 v_add16_i282_5 v_and15_i281_5;
(* Heuristics applied. *)
assert true && eq discard_791 0@1;
assume eq discard_791 0 && true;
(*   %add18.i284.5 = add nuw nsw i64 %add17.i283.5, %shr11.i276.5 *)
adds discard_792 v_add18_i284_5 v_add17_i283_5 v_shr11_i276_5;
(* Heuristics applied. *)
assert true && eq discard_792 0@1;
assume eq discard_792 0 && true;
(*   %and19.i285.5 = and i64 %add18.i284.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_5 v_add18_i284_5 (0xFFFFFFFF)@uint64;
(*   %and21.i287.5 = and i64 %add18.i284.5, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_5 v_add18_i284_5 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_5 v_and21_i287_5 + v_and19_i285_5;
assume eq v_add18_i284_5 v_and21_i287_5 + v_and19_i285_5 && true;
(*   %and22.i288.5 = and i64 %mul5.i269.5, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_5 v_mul5_i269_5 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_5 v_and22_i288_5 + v_and15_i281_5;
assume eq v_mul5_i269_5 v_and22_i288_5 + v_and15_i281_5 && true;
(*   %add23.i289.5 = add i64 %and21.i287.5, %and22.i288.5 *)
adds discard_793 v_add23_i289_5 v_and21_i287_5 v_and22_i288_5;
(* Heuristics applied. *)
assert true && eq discard_793 0@1;
assume eq discard_793 0 && true;
(*   %xor2569.i290.5 = or i64 %add23.i289.5, %and19.i285.5 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_5 v_add23_i289_5 v_and19_i285_5;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_5 v_add23_i289_5 + v_and19_i285_5;
assume eq v_xor2569_i290_5 v_add23_i289_5 + v_and19_i285_5 && true;
(*   %add82.5 = add i64 %xor68.i278.5, %add111.4 *)
adds discard_794 v_add82_5 v_xor68_i278_5 v_add111_4;
(*   %xor.i256.5 = xor i64 %add82.5, %shl.i277.5 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_5 v_add82_5 v_shl_i277_5;
(*   %xor1.i257.5 = xor i64 %shl.i277.5, %add111.4 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_5 v_shl_i277_5 v_add111_4;
(*   %or.i258.5 = or i64 %xor.i256.5, %xor1.i257.5 *)
(* You may need to modify here *)
or uint64 v_or_i258_5 v_xor_i256_5 v_xor1_i257_5;
(*   %xor2.i259.5 = xor i64 %or.i258.5, %add82.5 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_5 v_or_i258_5 v_add82_5;
(*   %shr.i260.5 = lshr i64 %xor2.i259.5, 63 *)
(* You may need to modify here *)
split v_shr_i260_5 tmp_to_be_used v_xor2_i259_5 63;
(* generated by python *)
assert true && limbs 64 [v_add82_5, v_shr_i260_5] = limbs 64 [v_xor68_i278_5, 0@64] + limbs 64 [v_add111_4, 0@64];
assume limbs 64 [v_add82_5, v_shr_i260_5] = limbs 64 [v_xor68_i278_5, 0] + limbs 64 [v_add111_4, 0] && true;
(*   %add89.5 = add i64 %shr.i260.5, %xor2569.i290.5 *)
adds discard_795 v_add89_5 v_shr_i260_5 v_xor2569_i290_5;
(* Heuristics applied. *)
assert true && eq discard_795 0@1;
assume eq discard_795 0 && true;
(*   %add90.5 = add i64 %add89.5, %add118.4 *)
adds discard_796 v_add90_5 v_add89_5 v_add118_4;
(* Heuristics applied. *)
assert true && eq discard_796 0@1;
assume eq discard_796 0 && true;
(*   %242 = xor i64 %add89.5, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v242 v_add89_5 (0x8000000000000000)@uint64;
(*   %xor2.i253.5 = and i64 %242, %add23.i289.5 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_5 v242 v_add23_i289_5;
(*   %xor.i244.5 = xor i64 %add90.5, %add89.5 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_5 v_add90_5 v_add89_5;
(*   %xor1.i245.5 = xor i64 %add89.5, %add118.4 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_5 v_add89_5 v_add118_4;
(*   %or.i246.5 = or i64 %xor.i244.5, %xor1.i245.5 *)
(* You may need to modify here *)
or uint64 v_or_i246_5 v_xor_i244_5 v_xor1_i245_5;
(*   %xor2.i247.5 = xor i64 %or.i246.5, %add90.5 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_5 v_or_i246_5 v_add90_5;
(*   %shr.i254326.5 = or i64 %xor2.i247.5, %xor2.i253.5 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_5 v_xor2_i247_5 v_xor2_i253_5;
(*   %or94325.5 = lshr i64 %shr.i254326.5, 63 *)
(* You may need to modify here *)
split v_or94325_5 tmp_to_be_used v_shr_i254326_5 63;
(* generated by python *)
assert true && limbs 64 [v_add90_5, v_or94325_5] = limbs 64 [v_shr_i260_5, 0@64] + limbs 64 [v_xor2569_i290_5, 0@64] + limbs 64 [v_add118_4, 0@64];
assume limbs 64 [v_add90_5, v_or94325_5] = limbs 64 [v_shr_i260_5, 0] + limbs 64 [v_xor2569_i290_5, 0] + limbs 64 [v_add118_4, 0] && true;
(*   %arrayidx74.5.1 = getelementptr inbounds i64, i64* %mc, i64 7 *)
(*   %243 = load i64, i64* %arrayidx74.5.1, align 8, !tbaa !3 *)
mov v243 mc_56;
(*   %244 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 10), align 16, !tbaa !3 *)
mov v244 p751p1_80;
(*   %and.i262.5.1 = and i64 %243, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_5_1 v243 (0xFFFFFFFF)@uint64;
(*   %shr.i263.5.1 = lshr i64 %243, 32 *)
(* You may need to modify here *)
split v_shr_i263_5_1 tmp_to_be_used v243 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_5_1;
assume eq tmp_to_be_used v_and_i262_5_1 && true;
(*   %and1.i264.5.1 = and i64 %244, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_5_1 v244 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.5.1 = lshr i64 %244, 32 *)
(* You may need to modify here *)
split v_shr2_i265_5_1 tmp_to_be_used v244 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_5_1;
assume eq tmp_to_be_used v_and1_i264_5_1 && true;
(*   %mul.i266.5.1 = mul nuw i64 %and1.i264.5.1, %and.i262.5.1 *)
mul v_mul_i266_5_1 v_and1_i264_5_1 v_and_i262_5_1;
(*   %mul3.i267.5.1 = mul nuw i64 %shr2.i265.5.1, %and.i262.5.1 *)
mul v_mul3_i267_5_1 v_shr2_i265_5_1 v_and_i262_5_1;
(*   %mul4.i268.5.1 = mul nuw i64 %and1.i264.5.1, %shr.i263.5.1 *)
mul v_mul4_i268_5_1 v_and1_i264_5_1 v_shr_i263_5_1;
(*   %mul5.i269.5.1 = mul nuw i64 %shr2.i265.5.1, %shr.i263.5.1 *)
mul v_mul5_i269_5_1 v_shr2_i265_5_1 v_shr_i263_5_1;
(*   %and6.i270.5.1 = and i64 %mul.i266.5.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_5_1 v_mul_i266_5_1 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.5.1 = lshr i64 %mul.i266.5.1, 32 *)
(* You may need to modify here *)
split v_shr7_i271_5_1 tmp_to_be_used v_mul_i266_5_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_5_1;
assume eq tmp_to_be_used v_and6_i270_5_1 && true;
(*   %and8.i272.5.1 = and i64 %mul4.i268.5.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_5_1 v_mul4_i268_5_1 (0xFFFFFFFF)@uint64;
(*   %and9.i273.5.1 = and i64 %mul3.i267.5.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_5_1 v_mul3_i267_5_1 (0xFFFFFFFF)@uint64;
(*   %add.i274.5.1 = add nuw nsw i64 %shr7.i271.5.1, %and8.i272.5.1 *)
adds discard_797 v_add_i274_5_1 v_shr7_i271_5_1 v_and8_i272_5_1;
(* Heuristics applied. *)
assert true && eq discard_797 0@1;
assume eq discard_797 0 && true;
(*   %add10.i275.5.1 = add nuw nsw i64 %add.i274.5.1, %and9.i273.5.1 *)
adds discard_798 v_add10_i275_5_1 v_add_i274_5_1 v_and9_i273_5_1;
(* Heuristics applied. *)
assert true && eq discard_798 0@1;
assume eq discard_798 0 && true;
(*   %shr11.i276.5.1 = lshr i64 %add10.i275.5.1, 32 *)
(* You may need to modify here *)
split v_shr11_i276_5_1 tmp_to_be_used v_add10_i275_5_1 32;
(*   %shl.i277.5.1 = shl i64 %add10.i275.5.1, 32 *)
shls discard_799 v_shl_i277_5_1 v_add10_i275_5_1 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_5_1 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_5_1 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.5.1 = or i64 %shl.i277.5.1, %and6.i270.5.1 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_5_1 v_shl_i277_5_1 v_and6_i270_5_1;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_5_1 v_shl_i277_5_1 + v_and6_i270_5_1;
assume eq v_xor68_i278_5_1 v_shl_i277_5_1 + v_and6_i270_5_1 && true;
(*   %shr13.i279.5.1 = lshr i64 %mul4.i268.5.1, 32 *)
(* You may need to modify here *)
split v_shr13_i279_5_1 tmp_to_be_used v_mul4_i268_5_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_5_1;
assume eq tmp_to_be_used v_and8_i272_5_1 && true;
(*   %shr14.i280.5.1 = lshr i64 %mul3.i267.5.1, 32 *)
(* You may need to modify here *)
split v_shr14_i280_5_1 tmp_to_be_used v_mul3_i267_5_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_5_1;
assume eq tmp_to_be_used v_and9_i273_5_1 && true;
(*   %and15.i281.5.1 = and i64 %mul5.i269.5.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_5_1 v_mul5_i269_5_1 (0xFFFFFFFF)@uint64;
(*   %add16.i282.5.1 = add nuw nsw i64 %shr13.i279.5.1, %shr14.i280.5.1 *)
adds discard_800 v_add16_i282_5_1 v_shr13_i279_5_1 v_shr14_i280_5_1;
(* Heuristics applied. *)
assert true && eq discard_800 0@1;
assume eq discard_800 0 && true;
(*   %add17.i283.5.1 = add nuw nsw i64 %add16.i282.5.1, %and15.i281.5.1 *)
adds discard_801 v_add17_i283_5_1 v_add16_i282_5_1 v_and15_i281_5_1;
(* Heuristics applied. *)
assert true && eq discard_801 0@1;
assume eq discard_801 0 && true;
(*   %add18.i284.5.1 = add nuw nsw i64 %add17.i283.5.1, %shr11.i276.5.1 *)
adds discard_802 v_add18_i284_5_1 v_add17_i283_5_1 v_shr11_i276_5_1;
(* Heuristics applied. *)
assert true && eq discard_802 0@1;
assume eq discard_802 0 && true;
(*   %and19.i285.5.1 = and i64 %add18.i284.5.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_5_1 v_add18_i284_5_1 (0xFFFFFFFF)@uint64;
(*   %and21.i287.5.1 = and i64 %add18.i284.5.1, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_5_1 v_add18_i284_5_1 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_5_1 v_and21_i287_5_1 + v_and19_i285_5_1;
assume eq v_add18_i284_5_1 v_and21_i287_5_1 + v_and19_i285_5_1 && true;
(*   %and22.i288.5.1 = and i64 %mul5.i269.5.1, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_5_1 v_mul5_i269_5_1 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_5_1 v_and22_i288_5_1 + v_and15_i281_5_1;
assume eq v_mul5_i269_5_1 v_and22_i288_5_1 + v_and15_i281_5_1 && true;
(*   %add23.i289.5.1 = add i64 %and21.i287.5.1, %and22.i288.5.1 *)
adds discard_803 v_add23_i289_5_1 v_and21_i287_5_1 v_and22_i288_5_1;
(* Heuristics applied. *)
assert true && eq discard_803 0@1;
assume eq discard_803 0 && true;
(*   %xor2569.i290.5.1 = or i64 %add23.i289.5.1, %and19.i285.5.1 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_5_1 v_add23_i289_5_1 v_and19_i285_5_1;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_5_1 v_add23_i289_5_1 + v_and19_i285_5_1;
assume eq v_xor2569_i290_5_1 v_add23_i289_5_1 + v_and19_i285_5_1 && true;
(*   %add82.5.1 = add i64 %xor68.i278.5.1, %add82.5 *)
adds discard_804 v_add82_5_1 v_xor68_i278_5_1 v_add82_5;
(*   %xor.i256.5.1 = xor i64 %add82.5.1, %shl.i277.5.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_5_1 v_add82_5_1 v_shl_i277_5_1;
(*   %xor1.i257.5.1 = xor i64 %shl.i277.5.1, %add82.5 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_5_1 v_shl_i277_5_1 v_add82_5;
(*   %or.i258.5.1 = or i64 %xor.i256.5.1, %xor1.i257.5.1 *)
(* You may need to modify here *)
or uint64 v_or_i258_5_1 v_xor_i256_5_1 v_xor1_i257_5_1;
(*   %xor2.i259.5.1 = xor i64 %or.i258.5.1, %add82.5.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_5_1 v_or_i258_5_1 v_add82_5_1;
(*   %shr.i260.5.1 = lshr i64 %xor2.i259.5.1, 63 *)
(* You may need to modify here *)
split v_shr_i260_5_1 tmp_to_be_used v_xor2_i259_5_1 63;
(* generated by python *)
assert true && limbs 64 [v_add82_5_1, v_shr_i260_5_1] = limbs 64 [v_xor68_i278_5_1, 0@64] + limbs 64 [v_add82_5, 0@64];
assume limbs 64 [v_add82_5_1, v_shr_i260_5_1] = limbs 64 [v_xor68_i278_5_1, 0] + limbs 64 [v_add82_5, 0] && true;
(*   %add89.5.1 = add i64 %shr.i260.5.1, %xor2569.i290.5.1 *)
adds discard_805 v_add89_5_1 v_shr_i260_5_1 v_xor2569_i290_5_1;
(* Heuristics applied. *)
assert true && eq discard_805 0@1;
assume eq discard_805 0 && true;
(*   %add90.5.1 = add i64 %add89.5.1, %add90.5 *)
adds discard_806 v_add90_5_1 v_add89_5_1 v_add90_5;
(* Heuristics applied. *)
assert true && eq discard_806 0@1;
assume eq discard_806 0 && true;
(*   %245 = xor i64 %add89.5.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v245 v_add89_5_1 (0x8000000000000000)@uint64;
(*   %xor2.i253.5.1 = and i64 %245, %add23.i289.5.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_5_1 v245 v_add23_i289_5_1;
(*   %xor.i244.5.1 = xor i64 %add90.5.1, %add89.5.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_5_1 v_add90_5_1 v_add89_5_1;
(*   %xor1.i245.5.1 = xor i64 %add89.5.1, %add90.5 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_5_1 v_add89_5_1 v_add90_5;
(*   %or.i246.5.1 = or i64 %xor.i244.5.1, %xor1.i245.5.1 *)
(* You may need to modify here *)
or uint64 v_or_i246_5_1 v_xor_i244_5_1 v_xor1_i245_5_1;
(*   %xor2.i247.5.1 = xor i64 %or.i246.5.1, %add90.5.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_5_1 v_or_i246_5_1 v_add90_5_1;
(*   %shr.i254326.5.1 = or i64 %xor2.i247.5.1, %xor2.i253.5.1 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_5_1 v_xor2_i247_5_1 v_xor2_i253_5_1;
(*   %or94325.5.1 = lshr i64 %shr.i254326.5.1, 63 *)
(* You may need to modify here *)
split v_or94325_5_1 tmp_to_be_used v_shr_i254326_5_1 63;
(* generated by python *)
assert true && limbs 64 [v_add90_5_1, v_or94325_5_1] = limbs 64 [v_shr_i260_5_1, 0@64] + limbs 64 [v_xor2569_i290_5_1, 0@64] + limbs 64 [v_add90_5, 0@64];
assume limbs 64 [v_add90_5_1, v_or94325_5_1] = limbs 64 [v_shr_i260_5_1, 0] + limbs 64 [v_xor2569_i290_5_1, 0] + limbs 64 [v_add90_5, 0] && true;
(*   %add96.5.1 = add nuw nsw i64 %or94325.5.1, %or94325.5 *)
adds discard_807 v_add96_5_1 v_or94325_5_1 v_or94325_5;
(* Heuristics applied. *)
assert true && eq discard_807 0@1;
assume eq discard_807 0 && true;
(*   %arrayidx74.5.2 = getelementptr inbounds i64, i64* %mc, i64 8 *)
(*   %246 = load i64, i64* %arrayidx74.5.2, align 8, !tbaa !3 *)
mov v246 mc_64;
(*   %247 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 9), align 8, !tbaa !3 *)
mov v247 p751p1_72;
(*   %and.i262.5.2 = and i64 %246, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_5_2 v246 (0xFFFFFFFF)@uint64;
(*   %shr.i263.5.2 = lshr i64 %246, 32 *)
(* You may need to modify here *)
split v_shr_i263_5_2 tmp_to_be_used v246 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_5_2;
assume eq tmp_to_be_used v_and_i262_5_2 && true;
(*   %and1.i264.5.2 = and i64 %247, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_5_2 v247 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.5.2 = lshr i64 %247, 32 *)
(* You may need to modify here *)
split v_shr2_i265_5_2 tmp_to_be_used v247 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_5_2;
assume eq tmp_to_be_used v_and1_i264_5_2 && true;
(*   %mul.i266.5.2 = mul nuw i64 %and1.i264.5.2, %and.i262.5.2 *)
mul v_mul_i266_5_2 v_and1_i264_5_2 v_and_i262_5_2;
(*   %mul3.i267.5.2 = mul nuw i64 %shr2.i265.5.2, %and.i262.5.2 *)
mul v_mul3_i267_5_2 v_shr2_i265_5_2 v_and_i262_5_2;
(*   %mul4.i268.5.2 = mul nuw i64 %and1.i264.5.2, %shr.i263.5.2 *)
mul v_mul4_i268_5_2 v_and1_i264_5_2 v_shr_i263_5_2;
(*   %mul5.i269.5.2 = mul nuw i64 %shr2.i265.5.2, %shr.i263.5.2 *)
mul v_mul5_i269_5_2 v_shr2_i265_5_2 v_shr_i263_5_2;
(*   %and6.i270.5.2 = and i64 %mul.i266.5.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_5_2 v_mul_i266_5_2 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.5.2 = lshr i64 %mul.i266.5.2, 32 *)
(* You may need to modify here *)
split v_shr7_i271_5_2 tmp_to_be_used v_mul_i266_5_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_5_2;
assume eq tmp_to_be_used v_and6_i270_5_2 && true;
(*   %and8.i272.5.2 = and i64 %mul4.i268.5.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_5_2 v_mul4_i268_5_2 (0xFFFFFFFF)@uint64;
(*   %and9.i273.5.2 = and i64 %mul3.i267.5.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_5_2 v_mul3_i267_5_2 (0xFFFFFFFF)@uint64;
(*   %add.i274.5.2 = add nuw nsw i64 %shr7.i271.5.2, %and8.i272.5.2 *)
adds discard_808 v_add_i274_5_2 v_shr7_i271_5_2 v_and8_i272_5_2;
(* Heuristics applied. *)
assert true && eq discard_808 0@1;
assume eq discard_808 0 && true;
(*   %add10.i275.5.2 = add nuw nsw i64 %add.i274.5.2, %and9.i273.5.2 *)
adds discard_809 v_add10_i275_5_2 v_add_i274_5_2 v_and9_i273_5_2;
(* Heuristics applied. *)
assert true && eq discard_809 0@1;
assume eq discard_809 0 && true;
(*   %shr11.i276.5.2 = lshr i64 %add10.i275.5.2, 32 *)
(* You may need to modify here *)
split v_shr11_i276_5_2 tmp_to_be_used v_add10_i275_5_2 32;
(*   %shl.i277.5.2 = shl i64 %add10.i275.5.2, 32 *)
shls discard_810 v_shl_i277_5_2 v_add10_i275_5_2 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_5_2 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_5_2 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.5.2 = or i64 %shl.i277.5.2, %and6.i270.5.2 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_5_2 v_shl_i277_5_2 v_and6_i270_5_2;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_5_2 v_shl_i277_5_2 + v_and6_i270_5_2;
assume eq v_xor68_i278_5_2 v_shl_i277_5_2 + v_and6_i270_5_2 && true;
(*   %shr13.i279.5.2 = lshr i64 %mul4.i268.5.2, 32 *)
(* You may need to modify here *)
split v_shr13_i279_5_2 tmp_to_be_used v_mul4_i268_5_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_5_2;
assume eq tmp_to_be_used v_and8_i272_5_2 && true;
(*   %shr14.i280.5.2 = lshr i64 %mul3.i267.5.2, 32 *)
(* You may need to modify here *)
split v_shr14_i280_5_2 tmp_to_be_used v_mul3_i267_5_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_5_2;
assume eq tmp_to_be_used v_and9_i273_5_2 && true;
(*   %and15.i281.5.2 = and i64 %mul5.i269.5.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_5_2 v_mul5_i269_5_2 (0xFFFFFFFF)@uint64;
(*   %add16.i282.5.2 = add nuw nsw i64 %shr13.i279.5.2, %shr14.i280.5.2 *)
adds discard_811 v_add16_i282_5_2 v_shr13_i279_5_2 v_shr14_i280_5_2;
(* Heuristics applied. *)
assert true && eq discard_811 0@1;
assume eq discard_811 0 && true;
(*   %add17.i283.5.2 = add nuw nsw i64 %add16.i282.5.2, %and15.i281.5.2 *)
adds discard_812 v_add17_i283_5_2 v_add16_i282_5_2 v_and15_i281_5_2;
(* Heuristics applied. *)
assert true && eq discard_812 0@1;
assume eq discard_812 0 && true;
(*   %add18.i284.5.2 = add nuw nsw i64 %add17.i283.5.2, %shr11.i276.5.2 *)
adds discard_813 v_add18_i284_5_2 v_add17_i283_5_2 v_shr11_i276_5_2;
(* Heuristics applied. *)
assert true && eq discard_813 0@1;
assume eq discard_813 0 && true;
(*   %and19.i285.5.2 = and i64 %add18.i284.5.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_5_2 v_add18_i284_5_2 (0xFFFFFFFF)@uint64;
(*   %and21.i287.5.2 = and i64 %add18.i284.5.2, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_5_2 v_add18_i284_5_2 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_5_2 v_and21_i287_5_2 + v_and19_i285_5_2;
assume eq v_add18_i284_5_2 v_and21_i287_5_2 + v_and19_i285_5_2 && true;
(*   %and22.i288.5.2 = and i64 %mul5.i269.5.2, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_5_2 v_mul5_i269_5_2 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_5_2 v_and22_i288_5_2 + v_and15_i281_5_2;
assume eq v_mul5_i269_5_2 v_and22_i288_5_2 + v_and15_i281_5_2 && true;
(*   %add23.i289.5.2 = add i64 %and21.i287.5.2, %and22.i288.5.2 *)
adds discard_814 v_add23_i289_5_2 v_and21_i287_5_2 v_and22_i288_5_2;
(* Heuristics applied. *)
assert true && eq discard_814 0@1;
assume eq discard_814 0 && true;
(*   %xor2569.i290.5.2 = or i64 %add23.i289.5.2, %and19.i285.5.2 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_5_2 v_add23_i289_5_2 v_and19_i285_5_2;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_5_2 v_add23_i289_5_2 + v_and19_i285_5_2;
assume eq v_xor2569_i290_5_2 v_add23_i289_5_2 + v_and19_i285_5_2 && true;
(*   %add82.5.2 = add i64 %xor68.i278.5.2, %add82.5.1 *)
adds discard_815 v_add82_5_2 v_xor68_i278_5_2 v_add82_5_1;
(*   %xor.i256.5.2 = xor i64 %add82.5.2, %shl.i277.5.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_5_2 v_add82_5_2 v_shl_i277_5_2;
(*   %xor1.i257.5.2 = xor i64 %shl.i277.5.2, %add82.5.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_5_2 v_shl_i277_5_2 v_add82_5_1;
(*   %or.i258.5.2 = or i64 %xor.i256.5.2, %xor1.i257.5.2 *)
(* You may need to modify here *)
or uint64 v_or_i258_5_2 v_xor_i256_5_2 v_xor1_i257_5_2;
(*   %xor2.i259.5.2 = xor i64 %or.i258.5.2, %add82.5.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_5_2 v_or_i258_5_2 v_add82_5_2;
(*   %shr.i260.5.2 = lshr i64 %xor2.i259.5.2, 63 *)
(* You may need to modify here *)
split v_shr_i260_5_2 tmp_to_be_used v_xor2_i259_5_2 63;
(* generated by python *)
assert true && limbs 64 [v_add82_5_2, v_shr_i260_5_2] = limbs 64 [v_xor68_i278_5_2, 0@64] + limbs 64 [v_add82_5_1, 0@64];
assume limbs 64 [v_add82_5_2, v_shr_i260_5_2] = limbs 64 [v_xor68_i278_5_2, 0] + limbs 64 [v_add82_5_1, 0] && true;
(*   %add89.5.2 = add i64 %shr.i260.5.2, %xor2569.i290.5.2 *)
adds discard_816 v_add89_5_2 v_shr_i260_5_2 v_xor2569_i290_5_2;
(* Heuristics applied. *)
assert true && eq discard_816 0@1;
assume eq discard_816 0 && true;
(*   %add90.5.2 = add i64 %add89.5.2, %add90.5.1 *)
adds discard_817 v_add90_5_2 v_add89_5_2 v_add90_5_1;
(* Heuristics applied. *)
assert true && eq discard_817 0@1;
assume eq discard_817 0 && true;
(*   %248 = xor i64 %add89.5.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v248 v_add89_5_2 (0x8000000000000000)@uint64;
(*   %xor2.i253.5.2 = and i64 %248, %add23.i289.5.2 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_5_2 v248 v_add23_i289_5_2;
(*   %xor.i244.5.2 = xor i64 %add90.5.2, %add89.5.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_5_2 v_add90_5_2 v_add89_5_2;
(*   %xor1.i245.5.2 = xor i64 %add89.5.2, %add90.5.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_5_2 v_add89_5_2 v_add90_5_1;
(*   %or.i246.5.2 = or i64 %xor.i244.5.2, %xor1.i245.5.2 *)
(* You may need to modify here *)
or uint64 v_or_i246_5_2 v_xor_i244_5_2 v_xor1_i245_5_2;
(*   %xor2.i247.5.2 = xor i64 %or.i246.5.2, %add90.5.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_5_2 v_or_i246_5_2 v_add90_5_2;
(*   %shr.i254326.5.2 = or i64 %xor2.i247.5.2, %xor2.i253.5.2 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_5_2 v_xor2_i247_5_2 v_xor2_i253_5_2;
(*   %or94325.5.2 = lshr i64 %shr.i254326.5.2, 63 *)
(* You may need to modify here *)
split v_or94325_5_2 tmp_to_be_used v_shr_i254326_5_2 63;
(* generated by python *)
assert true && limbs 64 [v_add90_5_2, v_or94325_5_2] = limbs 64 [v_shr_i260_5_2, 0@64] + limbs 64 [v_xor2569_i290_5_2, 0@64] + limbs 64 [v_add90_5_1, 0@64];
assume limbs 64 [v_add90_5_2, v_or94325_5_2] = limbs 64 [v_shr_i260_5_2, 0] + limbs 64 [v_xor2569_i290_5_2, 0] + limbs 64 [v_add90_5_1, 0] && true;
(*   %add96.5.2 = add nsw i64 %or94325.5.2, %add96.5.1 *)
adds discard_818 v_add96_5_2 v_or94325_5_2 v_add96_5_1;
(* Heuristics applied. *)
assert true && eq discard_818 0@1;
assume eq discard_818 0 && true;
(*   %arrayidx74.5.3 = getelementptr inbounds i64, i64* %mc, i64 9 *)
(*   %249 = load i64, i64* %arrayidx74.5.3, align 8, !tbaa !3 *)
mov v249 mc_72;
(*   %250 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 8), align 16, !tbaa !3 *)
mov v250 p751p1_64;
(*   %and.i262.5.3 = and i64 %249, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_5_3 v249 (0xFFFFFFFF)@uint64;
(*   %shr.i263.5.3 = lshr i64 %249, 32 *)
(* You may need to modify here *)
split v_shr_i263_5_3 tmp_to_be_used v249 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_5_3;
assume eq tmp_to_be_used v_and_i262_5_3 && true;
(*   %and1.i264.5.3 = and i64 %250, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_5_3 v250 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.5.3 = lshr i64 %250, 32 *)
(* You may need to modify here *)
split v_shr2_i265_5_3 tmp_to_be_used v250 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_5_3;
assume eq tmp_to_be_used v_and1_i264_5_3 && true;
(*   %mul.i266.5.3 = mul nuw i64 %and1.i264.5.3, %and.i262.5.3 *)
mul v_mul_i266_5_3 v_and1_i264_5_3 v_and_i262_5_3;
(*   %mul3.i267.5.3 = mul nuw i64 %shr2.i265.5.3, %and.i262.5.3 *)
mul v_mul3_i267_5_3 v_shr2_i265_5_3 v_and_i262_5_3;
(*   %mul4.i268.5.3 = mul nuw i64 %and1.i264.5.3, %shr.i263.5.3 *)
mul v_mul4_i268_5_3 v_and1_i264_5_3 v_shr_i263_5_3;
(*   %mul5.i269.5.3 = mul nuw i64 %shr2.i265.5.3, %shr.i263.5.3 *)
mul v_mul5_i269_5_3 v_shr2_i265_5_3 v_shr_i263_5_3;
(*   %and6.i270.5.3 = and i64 %mul.i266.5.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_5_3 v_mul_i266_5_3 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.5.3 = lshr i64 %mul.i266.5.3, 32 *)
(* You may need to modify here *)
split v_shr7_i271_5_3 tmp_to_be_used v_mul_i266_5_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_5_3;
assume eq tmp_to_be_used v_and6_i270_5_3 && true;
(*   %and8.i272.5.3 = and i64 %mul4.i268.5.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_5_3 v_mul4_i268_5_3 (0xFFFFFFFF)@uint64;
(*   %and9.i273.5.3 = and i64 %mul3.i267.5.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_5_3 v_mul3_i267_5_3 (0xFFFFFFFF)@uint64;
(*   %add.i274.5.3 = add nuw nsw i64 %shr7.i271.5.3, %and8.i272.5.3 *)
adds discard_819 v_add_i274_5_3 v_shr7_i271_5_3 v_and8_i272_5_3;
(* Heuristics applied. *)
assert true && eq discard_819 0@1;
assume eq discard_819 0 && true;
(*   %add10.i275.5.3 = add nuw nsw i64 %add.i274.5.3, %and9.i273.5.3 *)
adds discard_820 v_add10_i275_5_3 v_add_i274_5_3 v_and9_i273_5_3;
(* Heuristics applied. *)
assert true && eq discard_820 0@1;
assume eq discard_820 0 && true;
(*   %shr11.i276.5.3 = lshr i64 %add10.i275.5.3, 32 *)
(* You may need to modify here *)
split v_shr11_i276_5_3 tmp_to_be_used v_add10_i275_5_3 32;
(*   %shl.i277.5.3 = shl i64 %add10.i275.5.3, 32 *)
shls discard_821 v_shl_i277_5_3 v_add10_i275_5_3 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_5_3 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_5_3 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.5.3 = or i64 %shl.i277.5.3, %and6.i270.5.3 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_5_3 v_shl_i277_5_3 v_and6_i270_5_3;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_5_3 v_shl_i277_5_3 + v_and6_i270_5_3;
assume eq v_xor68_i278_5_3 v_shl_i277_5_3 + v_and6_i270_5_3 && true;
(*   %shr13.i279.5.3 = lshr i64 %mul4.i268.5.3, 32 *)
(* You may need to modify here *)
split v_shr13_i279_5_3 tmp_to_be_used v_mul4_i268_5_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_5_3;
assume eq tmp_to_be_used v_and8_i272_5_3 && true;
(*   %shr14.i280.5.3 = lshr i64 %mul3.i267.5.3, 32 *)
(* You may need to modify here *)
split v_shr14_i280_5_3 tmp_to_be_used v_mul3_i267_5_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_5_3;
assume eq tmp_to_be_used v_and9_i273_5_3 && true;
(*   %and15.i281.5.3 = and i64 %mul5.i269.5.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_5_3 v_mul5_i269_5_3 (0xFFFFFFFF)@uint64;
(*   %add16.i282.5.3 = add nuw nsw i64 %shr13.i279.5.3, %shr14.i280.5.3 *)
adds discard_822 v_add16_i282_5_3 v_shr13_i279_5_3 v_shr14_i280_5_3;
(* Heuristics applied. *)
assert true && eq discard_822 0@1;
assume eq discard_822 0 && true;
(*   %add17.i283.5.3 = add nuw nsw i64 %add16.i282.5.3, %and15.i281.5.3 *)
adds discard_823 v_add17_i283_5_3 v_add16_i282_5_3 v_and15_i281_5_3;
(* Heuristics applied. *)
assert true && eq discard_823 0@1;
assume eq discard_823 0 && true;
(*   %add18.i284.5.3 = add nuw nsw i64 %add17.i283.5.3, %shr11.i276.5.3 *)
adds discard_824 v_add18_i284_5_3 v_add17_i283_5_3 v_shr11_i276_5_3;
(* Heuristics applied. *)
assert true && eq discard_824 0@1;
assume eq discard_824 0 && true;
(*   %and19.i285.5.3 = and i64 %add18.i284.5.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_5_3 v_add18_i284_5_3 (0xFFFFFFFF)@uint64;
(*   %and21.i287.5.3 = and i64 %add18.i284.5.3, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_5_3 v_add18_i284_5_3 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_5_3 v_and21_i287_5_3 + v_and19_i285_5_3;
assume eq v_add18_i284_5_3 v_and21_i287_5_3 + v_and19_i285_5_3 && true;
(*   %and22.i288.5.3 = and i64 %mul5.i269.5.3, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_5_3 v_mul5_i269_5_3 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_5_3 v_and22_i288_5_3 + v_and15_i281_5_3;
assume eq v_mul5_i269_5_3 v_and22_i288_5_3 + v_and15_i281_5_3 && true;
(*   %add23.i289.5.3 = add i64 %and21.i287.5.3, %and22.i288.5.3 *)
adds discard_825 v_add23_i289_5_3 v_and21_i287_5_3 v_and22_i288_5_3;
(* Heuristics applied. *)
assert true && eq discard_825 0@1;
assume eq discard_825 0 && true;
(*   %xor2569.i290.5.3 = or i64 %add23.i289.5.3, %and19.i285.5.3 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_5_3 v_add23_i289_5_3 v_and19_i285_5_3;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_5_3 v_add23_i289_5_3 + v_and19_i285_5_3;
assume eq v_xor2569_i290_5_3 v_add23_i289_5_3 + v_and19_i285_5_3 && true;
(*   %add82.5.3 = add i64 %xor68.i278.5.3, %add82.5.2 *)
adds discard_826 v_add82_5_3 v_xor68_i278_5_3 v_add82_5_2;
(*   %xor.i256.5.3 = xor i64 %add82.5.3, %shl.i277.5.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_5_3 v_add82_5_3 v_shl_i277_5_3;
(*   %xor1.i257.5.3 = xor i64 %shl.i277.5.3, %add82.5.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_5_3 v_shl_i277_5_3 v_add82_5_2;
(*   %or.i258.5.3 = or i64 %xor.i256.5.3, %xor1.i257.5.3 *)
(* You may need to modify here *)
or uint64 v_or_i258_5_3 v_xor_i256_5_3 v_xor1_i257_5_3;
(*   %xor2.i259.5.3 = xor i64 %or.i258.5.3, %add82.5.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_5_3 v_or_i258_5_3 v_add82_5_3;
(*   %shr.i260.5.3 = lshr i64 %xor2.i259.5.3, 63 *)
(* You may need to modify here *)
split v_shr_i260_5_3 tmp_to_be_used v_xor2_i259_5_3 63;
(* generated by python *)
assert true && limbs 64 [v_add82_5_3, v_shr_i260_5_3] = limbs 64 [v_xor68_i278_5_3, 0@64] + limbs 64 [v_add82_5_2, 0@64];
assume limbs 64 [v_add82_5_3, v_shr_i260_5_3] = limbs 64 [v_xor68_i278_5_3, 0] + limbs 64 [v_add82_5_2, 0] && true;
(*   %add89.5.3 = add i64 %shr.i260.5.3, %xor2569.i290.5.3 *)
adds discard_827 v_add89_5_3 v_shr_i260_5_3 v_xor2569_i290_5_3;
(* Heuristics applied. *)
assert true && eq discard_827 0@1;
assume eq discard_827 0 && true;
(*   %add90.5.3 = add i64 %add89.5.3, %add90.5.2 *)
adds discard_828 v_add90_5_3 v_add89_5_3 v_add90_5_2;
(* Heuristics applied. *)
assert true && eq discard_828 0@1;
assume eq discard_828 0 && true;
(*   %251 = xor i64 %add89.5.3, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v251 v_add89_5_3 (0x8000000000000000)@uint64;
(*   %xor2.i253.5.3 = and i64 %251, %add23.i289.5.3 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_5_3 v251 v_add23_i289_5_3;
(*   %xor.i244.5.3 = xor i64 %add90.5.3, %add89.5.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_5_3 v_add90_5_3 v_add89_5_3;
(*   %xor1.i245.5.3 = xor i64 %add89.5.3, %add90.5.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_5_3 v_add89_5_3 v_add90_5_2;
(*   %or.i246.5.3 = or i64 %xor.i244.5.3, %xor1.i245.5.3 *)
(* You may need to modify here *)
or uint64 v_or_i246_5_3 v_xor_i244_5_3 v_xor1_i245_5_3;
(*   %xor2.i247.5.3 = xor i64 %or.i246.5.3, %add90.5.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_5_3 v_or_i246_5_3 v_add90_5_3;
(*   %shr.i254326.5.3 = or i64 %xor2.i247.5.3, %xor2.i253.5.3 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_5_3 v_xor2_i247_5_3 v_xor2_i253_5_3;
(*   %or94325.5.3 = lshr i64 %shr.i254326.5.3, 63 *)
(* You may need to modify here *)
split v_or94325_5_3 tmp_to_be_used v_shr_i254326_5_3 63;
(* generated by python *)
assert true && limbs 64 [v_add90_5_3, v_or94325_5_3] = limbs 64 [v_shr_i260_5_3, 0@64] + limbs 64 [v_xor2569_i290_5_3, 0@64] + limbs 64 [v_add90_5_2, 0@64];
assume limbs 64 [v_add90_5_3, v_or94325_5_3] = limbs 64 [v_shr_i260_5_3, 0] + limbs 64 [v_xor2569_i290_5_3, 0] + limbs 64 [v_add90_5_2, 0] && true;
(*   %add96.5.3 = add nsw i64 %or94325.5.3, %add96.5.2 *)
adds discard_829 v_add96_5_3 v_or94325_5_3 v_add96_5_2;
(* Heuristics applied. *)
assert true && eq discard_829 0@1;
assume eq discard_829 0 && true;
(*   %arrayidx74.5.4 = getelementptr inbounds i64, i64* %mc, i64 10 *)
(*   %252 = load i64, i64* %arrayidx74.5.4, align 8, !tbaa !3 *)
mov v252 mc_80;
(*   %253 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 7), align 8, !tbaa !3 *)
mov v253 p751p1_56;
(*   %and.i262.5.4 = and i64 %252, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_5_4 v252 (0xFFFFFFFF)@uint64;
(*   %shr.i263.5.4 = lshr i64 %252, 32 *)
(* You may need to modify here *)
split v_shr_i263_5_4 tmp_to_be_used v252 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_5_4;
assume eq tmp_to_be_used v_and_i262_5_4 && true;
(*   %and1.i264.5.4 = and i64 %253, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_5_4 v253 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.5.4 = lshr i64 %253, 32 *)
(* You may need to modify here *)
split v_shr2_i265_5_4 tmp_to_be_used v253 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_5_4;
assume eq tmp_to_be_used v_and1_i264_5_4 && true;
(*   %mul.i266.5.4 = mul nuw i64 %and1.i264.5.4, %and.i262.5.4 *)
mul v_mul_i266_5_4 v_and1_i264_5_4 v_and_i262_5_4;
(*   %mul3.i267.5.4 = mul nuw i64 %shr2.i265.5.4, %and.i262.5.4 *)
mul v_mul3_i267_5_4 v_shr2_i265_5_4 v_and_i262_5_4;
(*   %mul4.i268.5.4 = mul nuw i64 %and1.i264.5.4, %shr.i263.5.4 *)
mul v_mul4_i268_5_4 v_and1_i264_5_4 v_shr_i263_5_4;
(*   %mul5.i269.5.4 = mul nuw i64 %shr2.i265.5.4, %shr.i263.5.4 *)
mul v_mul5_i269_5_4 v_shr2_i265_5_4 v_shr_i263_5_4;
(*   %and6.i270.5.4 = and i64 %mul.i266.5.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_5_4 v_mul_i266_5_4 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.5.4 = lshr i64 %mul.i266.5.4, 32 *)
(* You may need to modify here *)
split v_shr7_i271_5_4 tmp_to_be_used v_mul_i266_5_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_5_4;
assume eq tmp_to_be_used v_and6_i270_5_4 && true;
(*   %and8.i272.5.4 = and i64 %mul4.i268.5.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_5_4 v_mul4_i268_5_4 (0xFFFFFFFF)@uint64;
(*   %and9.i273.5.4 = and i64 %mul3.i267.5.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_5_4 v_mul3_i267_5_4 (0xFFFFFFFF)@uint64;
(*   %add.i274.5.4 = add nuw nsw i64 %shr7.i271.5.4, %and8.i272.5.4 *)
adds discard_830 v_add_i274_5_4 v_shr7_i271_5_4 v_and8_i272_5_4;
(* Heuristics applied. *)
assert true && eq discard_830 0@1;
assume eq discard_830 0 && true;
(*   %add10.i275.5.4 = add nuw nsw i64 %add.i274.5.4, %and9.i273.5.4 *)
adds discard_831 v_add10_i275_5_4 v_add_i274_5_4 v_and9_i273_5_4;
(* Heuristics applied. *)
assert true && eq discard_831 0@1;
assume eq discard_831 0 && true;
(*   %shr11.i276.5.4 = lshr i64 %add10.i275.5.4, 32 *)
(* You may need to modify here *)
split v_shr11_i276_5_4 tmp_to_be_used v_add10_i275_5_4 32;
(*   %shl.i277.5.4 = shl i64 %add10.i275.5.4, 32 *)
shls discard_832 v_shl_i277_5_4 v_add10_i275_5_4 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_5_4 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_5_4 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.5.4 = or i64 %shl.i277.5.4, %and6.i270.5.4 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_5_4 v_shl_i277_5_4 v_and6_i270_5_4;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_5_4 v_shl_i277_5_4 + v_and6_i270_5_4;
assume eq v_xor68_i278_5_4 v_shl_i277_5_4 + v_and6_i270_5_4 && true;
(*   %shr13.i279.5.4 = lshr i64 %mul4.i268.5.4, 32 *)
(* You may need to modify here *)
split v_shr13_i279_5_4 tmp_to_be_used v_mul4_i268_5_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_5_4;
assume eq tmp_to_be_used v_and8_i272_5_4 && true;
(*   %shr14.i280.5.4 = lshr i64 %mul3.i267.5.4, 32 *)
(* You may need to modify here *)
split v_shr14_i280_5_4 tmp_to_be_used v_mul3_i267_5_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_5_4;
assume eq tmp_to_be_used v_and9_i273_5_4 && true;
(*   %and15.i281.5.4 = and i64 %mul5.i269.5.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_5_4 v_mul5_i269_5_4 (0xFFFFFFFF)@uint64;
(*   %add16.i282.5.4 = add nuw nsw i64 %shr13.i279.5.4, %shr14.i280.5.4 *)
adds discard_833 v_add16_i282_5_4 v_shr13_i279_5_4 v_shr14_i280_5_4;
(* Heuristics applied. *)
assert true && eq discard_833 0@1;
assume eq discard_833 0 && true;
(*   %add17.i283.5.4 = add nuw nsw i64 %add16.i282.5.4, %and15.i281.5.4 *)
adds discard_834 v_add17_i283_5_4 v_add16_i282_5_4 v_and15_i281_5_4;
(* Heuristics applied. *)
assert true && eq discard_834 0@1;
assume eq discard_834 0 && true;
(*   %add18.i284.5.4 = add nuw nsw i64 %add17.i283.5.4, %shr11.i276.5.4 *)
adds discard_835 v_add18_i284_5_4 v_add17_i283_5_4 v_shr11_i276_5_4;
(* Heuristics applied. *)
assert true && eq discard_835 0@1;
assume eq discard_835 0 && true;
(*   %and19.i285.5.4 = and i64 %add18.i284.5.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_5_4 v_add18_i284_5_4 (0xFFFFFFFF)@uint64;
(*   %and21.i287.5.4 = and i64 %add18.i284.5.4, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_5_4 v_add18_i284_5_4 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_5_4 v_and21_i287_5_4 + v_and19_i285_5_4;
assume eq v_add18_i284_5_4 v_and21_i287_5_4 + v_and19_i285_5_4 && true;
(*   %and22.i288.5.4 = and i64 %mul5.i269.5.4, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_5_4 v_mul5_i269_5_4 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_5_4 v_and22_i288_5_4 + v_and15_i281_5_4;
assume eq v_mul5_i269_5_4 v_and22_i288_5_4 + v_and15_i281_5_4 && true;
(*   %add23.i289.5.4 = add i64 %and21.i287.5.4, %and22.i288.5.4 *)
adds discard_836 v_add23_i289_5_4 v_and21_i287_5_4 v_and22_i288_5_4;
(* Heuristics applied. *)
assert true && eq discard_836 0@1;
assume eq discard_836 0 && true;
(*   %xor2569.i290.5.4 = or i64 %add23.i289.5.4, %and19.i285.5.4 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_5_4 v_add23_i289_5_4 v_and19_i285_5_4;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_5_4 v_add23_i289_5_4 + v_and19_i285_5_4;
assume eq v_xor2569_i290_5_4 v_add23_i289_5_4 + v_and19_i285_5_4 && true;
(*   %add82.5.4 = add i64 %xor68.i278.5.4, %add82.5.3 *)
adds discard_837 v_add82_5_4 v_xor68_i278_5_4 v_add82_5_3;
(*   %xor.i256.5.4 = xor i64 %add82.5.4, %shl.i277.5.4 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_5_4 v_add82_5_4 v_shl_i277_5_4;
(*   %xor1.i257.5.4 = xor i64 %shl.i277.5.4, %add82.5.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_5_4 v_shl_i277_5_4 v_add82_5_3;
(*   %or.i258.5.4 = or i64 %xor.i256.5.4, %xor1.i257.5.4 *)
(* You may need to modify here *)
or uint64 v_or_i258_5_4 v_xor_i256_5_4 v_xor1_i257_5_4;
(*   %xor2.i259.5.4 = xor i64 %or.i258.5.4, %add82.5.4 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_5_4 v_or_i258_5_4 v_add82_5_4;
(*   %shr.i260.5.4 = lshr i64 %xor2.i259.5.4, 63 *)
(* You may need to modify here *)
split v_shr_i260_5_4 tmp_to_be_used v_xor2_i259_5_4 63;
(* generated by python *)
assert true && limbs 64 [v_add82_5_4, v_shr_i260_5_4] = limbs 64 [v_xor68_i278_5_4, 0@64] + limbs 64 [v_add82_5_3, 0@64];
assume limbs 64 [v_add82_5_4, v_shr_i260_5_4] = limbs 64 [v_xor68_i278_5_4, 0] + limbs 64 [v_add82_5_3, 0] && true;
(*   %add89.5.4 = add i64 %shr.i260.5.4, %xor2569.i290.5.4 *)
adds discard_838 v_add89_5_4 v_shr_i260_5_4 v_xor2569_i290_5_4;
(* Heuristics applied. *)
assert true && eq discard_838 0@1;
assume eq discard_838 0 && true;
(*   %add90.5.4 = add i64 %add89.5.4, %add90.5.3 *)
adds discard_839 v_add90_5_4 v_add89_5_4 v_add90_5_3;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_839 0@1; *)
(* assume eq discard_839 0 && true; *)
(*   %254 = xor i64 %add89.5.4, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v254 v_add89_5_4 (0x8000000000000000)@uint64;
(*   %xor2.i253.5.4 = and i64 %254, %add23.i289.5.4 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_5_4 v254 v_add23_i289_5_4;
(*   %xor.i244.5.4 = xor i64 %add90.5.4, %add89.5.4 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_5_4 v_add90_5_4 v_add89_5_4;
(*   %xor1.i245.5.4 = xor i64 %add89.5.4, %add90.5.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_5_4 v_add89_5_4 v_add90_5_3;
(*   %or.i246.5.4 = or i64 %xor.i244.5.4, %xor1.i245.5.4 *)
(* You may need to modify here *)
or uint64 v_or_i246_5_4 v_xor_i244_5_4 v_xor1_i245_5_4;
(*   %xor2.i247.5.4 = xor i64 %or.i246.5.4, %add90.5.4 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_5_4 v_or_i246_5_4 v_add90_5_4;
(*   %shr.i254326.5.4 = or i64 %xor2.i247.5.4, %xor2.i253.5.4 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_5_4 v_xor2_i247_5_4 v_xor2_i253_5_4;
(*   %or94325.5.4 = lshr i64 %shr.i254326.5.4, 63 *)
(* You may need to modify here *)
split v_or94325_5_4 tmp_to_be_used v_shr_i254326_5_4 63;
(* generated by python *)
assert true && limbs 64 [v_add90_5_4, v_or94325_5_4] = limbs 64 [v_shr_i260_5_4, 0@64] + limbs 64 [v_xor2569_i290_5_4, 0@64] + limbs 64 [v_add90_5_3, 0@64];
assume limbs 64 [v_add90_5_4, v_or94325_5_4] = limbs 64 [v_shr_i260_5_4, 0] + limbs 64 [v_xor2569_i290_5_4, 0] + limbs 64 [v_add90_5_3, 0] && true;
(*   %add96.5.4 = add i64 %or94325.5.4, %add96.5.3 *)
adds discard_840 v_add96_5_4 v_or94325_5_4 v_add96_5_3;
(* Heuristics applied. *)
assert true && eq discard_840 0@1;
assume eq discard_840 0 && true;
(*   %arrayidx74.5.5 = getelementptr inbounds i64, i64* %mc, i64 11 *)
(*   %255 = load i64, i64* %arrayidx74.5.5, align 8, !tbaa !3 *)
mov v255 mc_88;
(*   %256 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 6), align 16, !tbaa !3 *)
mov v256 p751p1_48;
(*   %and.i262.5.5 = and i64 %255, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_5_5 v255 (0xFFFFFFFF)@uint64;
(*   %shr.i263.5.5 = lshr i64 %255, 32 *)
(* You may need to modify here *)
split v_shr_i263_5_5 tmp_to_be_used v255 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_5_5;
assume eq tmp_to_be_used v_and_i262_5_5 && true;
(*   %and1.i264.5.5 = and i64 %256, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_5_5 v256 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.5.5 = lshr i64 %256, 32 *)
(* You may need to modify here *)
split v_shr2_i265_5_5 tmp_to_be_used v256 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_5_5;
assume eq tmp_to_be_used v_and1_i264_5_5 && true;
(*   %mul.i266.5.5 = mul nuw i64 %and1.i264.5.5, %and.i262.5.5 *)
mul v_mul_i266_5_5 v_and1_i264_5_5 v_and_i262_5_5;
(*   %mul3.i267.5.5 = mul nuw i64 %shr2.i265.5.5, %and.i262.5.5 *)
mul v_mul3_i267_5_5 v_shr2_i265_5_5 v_and_i262_5_5;
(*   %mul4.i268.5.5 = mul nuw i64 %and1.i264.5.5, %shr.i263.5.5 *)
mul v_mul4_i268_5_5 v_and1_i264_5_5 v_shr_i263_5_5;
(*   %mul5.i269.5.5 = mul nuw i64 %shr2.i265.5.5, %shr.i263.5.5 *)
mul v_mul5_i269_5_5 v_shr2_i265_5_5 v_shr_i263_5_5;
(*   %and6.i270.5.5 = and i64 %mul.i266.5.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_5_5 v_mul_i266_5_5 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.5.5 = lshr i64 %mul.i266.5.5, 32 *)
(* You may need to modify here *)
split v_shr7_i271_5_5 tmp_to_be_used v_mul_i266_5_5 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_5_5;
assume eq tmp_to_be_used v_and6_i270_5_5 && true;
(*   %and8.i272.5.5 = and i64 %mul4.i268.5.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_5_5 v_mul4_i268_5_5 (0xFFFFFFFF)@uint64;
(*   %and9.i273.5.5 = and i64 %mul3.i267.5.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_5_5 v_mul3_i267_5_5 (0xFFFFFFFF)@uint64;
(*   %add.i274.5.5 = add nuw nsw i64 %shr7.i271.5.5, %and8.i272.5.5 *)
adds discard_841 v_add_i274_5_5 v_shr7_i271_5_5 v_and8_i272_5_5;
(* Heuristics applied. *)
assert true && eq discard_841 0@1;
assume eq discard_841 0 && true;
(*   %add10.i275.5.5 = add nuw nsw i64 %add.i274.5.5, %and9.i273.5.5 *)
adds discard_842 v_add10_i275_5_5 v_add_i274_5_5 v_and9_i273_5_5;
(* Heuristics applied. *)
assert true && eq discard_842 0@1;
assume eq discard_842 0 && true;
(*   %shr11.i276.5.5 = lshr i64 %add10.i275.5.5, 32 *)
(* You may need to modify here *)
split v_shr11_i276_5_5 tmp_to_be_used v_add10_i275_5_5 32;
(*   %shl.i277.5.5 = shl i64 %add10.i275.5.5, 32 *)
shls discard_843 v_shl_i277_5_5 v_add10_i275_5_5 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_5_5 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_5_5 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.5.5 = or i64 %shl.i277.5.5, %and6.i270.5.5 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_5_5 v_shl_i277_5_5 v_and6_i270_5_5;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_5_5 v_shl_i277_5_5 + v_and6_i270_5_5;
assume eq v_xor68_i278_5_5 v_shl_i277_5_5 + v_and6_i270_5_5 && true;
(*   %shr13.i279.5.5 = lshr i64 %mul4.i268.5.5, 32 *)
(* You may need to modify here *)
split v_shr13_i279_5_5 tmp_to_be_used v_mul4_i268_5_5 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_5_5;
assume eq tmp_to_be_used v_and8_i272_5_5 && true;
(*   %shr14.i280.5.5 = lshr i64 %mul3.i267.5.5, 32 *)
(* You may need to modify here *)
split v_shr14_i280_5_5 tmp_to_be_used v_mul3_i267_5_5 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_5_5;
assume eq tmp_to_be_used v_and9_i273_5_5 && true;
(*   %and15.i281.5.5 = and i64 %mul5.i269.5.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_5_5 v_mul5_i269_5_5 (0xFFFFFFFF)@uint64;
(*   %add16.i282.5.5 = add nuw nsw i64 %shr13.i279.5.5, %shr14.i280.5.5 *)
adds discard_844 v_add16_i282_5_5 v_shr13_i279_5_5 v_shr14_i280_5_5;
(* Heuristics applied. *)
assert true && eq discard_844 0@1;
assume eq discard_844 0 && true;
(*   %add17.i283.5.5 = add nuw nsw i64 %add16.i282.5.5, %and15.i281.5.5 *)
adds discard_845 v_add17_i283_5_5 v_add16_i282_5_5 v_and15_i281_5_5;
(* Heuristics applied. *)
assert true && eq discard_845 0@1;
assume eq discard_845 0 && true;
(*   %add18.i284.5.5 = add nuw nsw i64 %add17.i283.5.5, %shr11.i276.5.5 *)
adds discard_846 v_add18_i284_5_5 v_add17_i283_5_5 v_shr11_i276_5_5;
(* Heuristics applied. *)
assert true && eq discard_846 0@1;
assume eq discard_846 0 && true;
(*   %and19.i285.5.5 = and i64 %add18.i284.5.5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_5_5 v_add18_i284_5_5 (0xFFFFFFFF)@uint64;
(*   %and21.i287.5.5 = and i64 %add18.i284.5.5, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_5_5 v_add18_i284_5_5 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_5_5 v_and21_i287_5_5 + v_and19_i285_5_5;
assume eq v_add18_i284_5_5 v_and21_i287_5_5 + v_and19_i285_5_5 && true;
(*   %and22.i288.5.5 = and i64 %mul5.i269.5.5, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_5_5 v_mul5_i269_5_5 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_5_5 v_and22_i288_5_5 + v_and15_i281_5_5;
assume eq v_mul5_i269_5_5 v_and22_i288_5_5 + v_and15_i281_5_5 && true;
(*   %add23.i289.5.5 = add i64 %and21.i287.5.5, %and22.i288.5.5 *)
adds discard_847 v_add23_i289_5_5 v_and21_i287_5_5 v_and22_i288_5_5;
(* Heuristics applied. *)
assert true && eq discard_847 0@1;
assume eq discard_847 0 && true;
(*   %xor2569.i290.5.5 = or i64 %add23.i289.5.5, %and19.i285.5.5 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_5_5 v_add23_i289_5_5 v_and19_i285_5_5;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_5_5 v_add23_i289_5_5 + v_and19_i285_5_5;
assume eq v_xor2569_i290_5_5 v_add23_i289_5_5 + v_and19_i285_5_5 && true;
(*   %add82.5.5 = add i64 %xor68.i278.5.5, %add82.5.4 *)
adds discard_848 v_add82_5_5 v_xor68_i278_5_5 v_add82_5_4;
(*   %xor.i256.5.5 = xor i64 %add82.5.5, %shl.i277.5.5 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_5_5 v_add82_5_5 v_shl_i277_5_5;
(*   %xor1.i257.5.5 = xor i64 %shl.i277.5.5, %add82.5.4 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_5_5 v_shl_i277_5_5 v_add82_5_4;
(*   %or.i258.5.5 = or i64 %xor.i256.5.5, %xor1.i257.5.5 *)
(* You may need to modify here *)
or uint64 v_or_i258_5_5 v_xor_i256_5_5 v_xor1_i257_5_5;
(*   %xor2.i259.5.5 = xor i64 %or.i258.5.5, %add82.5.5 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_5_5 v_or_i258_5_5 v_add82_5_5;
(*   %shr.i260.5.5 = lshr i64 %xor2.i259.5.5, 63 *)
(* You may need to modify here *)
split v_shr_i260_5_5 tmp_to_be_used v_xor2_i259_5_5 63;
(* generated by python *)
assert true && limbs 64 [v_add82_5_5, v_shr_i260_5_5] = limbs 64 [v_xor68_i278_5_5, 0@64] + limbs 64 [v_add82_5_4, 0@64];
assume limbs 64 [v_add82_5_5, v_shr_i260_5_5] = limbs 64 [v_xor68_i278_5_5, 0] + limbs 64 [v_add82_5_4, 0] && true;
(*   %add89.5.5 = add i64 %shr.i260.5.5, %xor2569.i290.5.5 *)
adds discard_849 v_add89_5_5 v_shr_i260_5_5 v_xor2569_i290_5_5;
(* Heuristics applied. *)
assert true && eq discard_849 0@1;
assume eq discard_849 0 && true;
(*   %add90.5.5 = add i64 %add89.5.5, %add90.5.4 *)
adds discard_850 v_add90_5_5 v_add89_5_5 v_add90_5_4;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_850 0@1; *)
(* assume eq discard_850 0 && true; *)
(*   %257 = xor i64 %add89.5.5, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v257 v_add89_5_5 (0x8000000000000000)@uint64;
(*   %xor2.i253.5.5 = and i64 %257, %add23.i289.5.5 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_5_5 v257 v_add23_i289_5_5;
(*   %xor.i244.5.5 = xor i64 %add90.5.5, %add89.5.5 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_5_5 v_add90_5_5 v_add89_5_5;
(*   %xor1.i245.5.5 = xor i64 %add89.5.5, %add90.5.4 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_5_5 v_add89_5_5 v_add90_5_4;
(*   %or.i246.5.5 = or i64 %xor.i244.5.5, %xor1.i245.5.5 *)
(* You may need to modify here *)
or uint64 v_or_i246_5_5 v_xor_i244_5_5 v_xor1_i245_5_5;
(*   %xor2.i247.5.5 = xor i64 %or.i246.5.5, %add90.5.5 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_5_5 v_or_i246_5_5 v_add90_5_5;
(*   %shr.i254326.5.5 = or i64 %xor2.i247.5.5, %xor2.i253.5.5 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_5_5 v_xor2_i247_5_5 v_xor2_i253_5_5;
(*   %or94325.5.5 = lshr i64 %shr.i254326.5.5, 63 *)
(* You may need to modify here *)
split v_or94325_5_5 tmp_to_be_used v_shr_i254326_5_5 63;
(* generated by python *)
assert true && limbs 64 [v_add90_5_5, v_or94325_5_5] = limbs 64 [v_shr_i260_5_5, 0@64] + limbs 64 [v_xor2569_i290_5_5, 0@64] + limbs 64 [v_add90_5_4, 0@64];
assume limbs 64 [v_add90_5_5, v_or94325_5_5] = limbs 64 [v_shr_i260_5_5, 0] + limbs 64 [v_xor2569_i290_5_5, 0] + limbs 64 [v_add90_5_4, 0] && true;
(*   %add96.5.5 = add i64 %or94325.5.5, %add96.5.4 *)
adds discard_851 v_add96_5_5 v_or94325_5_5 v_add96_5_4;
(* Heuristics applied. *)
assert true && eq discard_851 0@1;
assume eq discard_851 0 && true;
(*   %arrayidx104.5 = getelementptr inbounds i64, i64* %ma, i64 17 *)
(*   %258 = load i64, i64* %arrayidx104.5, align 8, !tbaa !3 *)
mov v258 ma_136;
(*   %add105.5 = add i64 %258, %add82.5.5 *)
adds discard_852 v_add105_5 v258 v_add82_5_5;
(*   %xor.i238.5 = xor i64 %add105.5, %add82.5.5 *)
(* You may need to modify here *)
xor uint64 v_xor_i238_5 v_add105_5 v_add82_5_5;
(*   %xor1.i239.5 = xor i64 %258, %add82.5.5 *)
(* You may need to modify here *)
xor uint64 v_xor1_i239_5 v258 v_add82_5_5;
(*   %or.i240.5 = or i64 %xor.i238.5, %xor1.i239.5 *)
(* You may need to modify here *)
or uint64 v_or_i240_5 v_xor_i238_5 v_xor1_i239_5;
(*   %xor2.i241.5 = xor i64 %or.i240.5, %add105.5 *)
(* You may need to modify here *)
xor uint64 v_xor2_i241_5 v_or_i240_5 v_add105_5;
(*   %shr.i242.5 = lshr i64 %xor2.i241.5, 63 *)
(* You may need to modify here *)
split v_shr_i242_5 tmp_to_be_used v_xor2_i241_5 63;
(* generated by python *)
assert true && limbs 64 [v_add105_5, v_shr_i242_5] = limbs 64 [v258, 0@64] + limbs 64 [v_add82_5_5, 0@64];
assume limbs 64 [v_add105_5, v_shr_i242_5] = limbs 64 [v258, 0] + limbs 64 [v_add82_5_5, 0] && true;
(*   %add111.5 = add i64 %shr.i242.5, %add90.5.5 *)
adds discard_853 v_add111_5 v_shr_i242_5 v_add90_5_5;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_853 0@1; *)
(* assume eq discard_853 0 && true; *)
(*   store i64 %add105.5, i64* %arrayidx50.5, align 8, !tbaa !3 *)
mov mc_40 v_add105_5;
(*   %259 = xor i64 %add111.5, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v259 v_add111_5 (0x8000000000000000)@uint64;
(*   %xor2.i.5 = and i64 %259, %add90.5.5 *)
(* You may need to modify here *)
and uint64 v_xor2_i_5 v259 v_add90_5_5;
(*   %shr.i237.5 = lshr i64 %xor2.i.5, 63 *)
(* You may need to modify here *)
split v_shr_i237_5 tmp_to_be_used v_xor2_i_5 63;
(* generated by python *)
assert true && limbs 64 [v_add111_5, v_shr_i237_5] = limbs 64 [v_shr_i242_5, 0@64] + limbs 64 [v_add90_5_5, 0@64];
assume limbs 64 [v_add111_5, v_shr_i237_5] = limbs 64 [v_shr_i242_5, 0] + limbs 64 [v_add90_5_5, 0] && true;
(*   %add118.5 = add i64 %shr.i237.5, %add96.5.5 *)
adds discard_854 v_add118_5 v_shr_i237_5 v_add96_5_5;
(* Heuristics applied. *)
assert true && eq discard_854 0@1;
assume eq discard_854 0 && true;
(*   %arrayidx74.6 = getelementptr inbounds i64, i64* %mc, i64 7 *)
(*   %260 = load i64, i64* %arrayidx74.6, align 8, !tbaa !3 *)
mov v260 mc_56;
(*   %261 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 11), align 8, !tbaa !3 *)
mov v261 p751p1_88;
(*   %and.i262.6 = and i64 %260, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_6 v260 (0xFFFFFFFF)@uint64;
(*   %shr.i263.6 = lshr i64 %260, 32 *)
(* You may need to modify here *)
split v_shr_i263_6 tmp_to_be_used v260 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_6;
assume eq tmp_to_be_used v_and_i262_6 && true;
(*   %and1.i264.6 = and i64 %261, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_6 v261 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.6 = lshr i64 %261, 32 *)
(* You may need to modify here *)
split v_shr2_i265_6 tmp_to_be_used v261 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_6;
assume eq tmp_to_be_used v_and1_i264_6 && true;
(*   %mul.i266.6 = mul nuw i64 %and1.i264.6, %and.i262.6 *)
mul v_mul_i266_6 v_and1_i264_6 v_and_i262_6;
(*   %mul3.i267.6 = mul nuw i64 %shr2.i265.6, %and.i262.6 *)
mul v_mul3_i267_6 v_shr2_i265_6 v_and_i262_6;
(*   %mul4.i268.6 = mul nuw i64 %and1.i264.6, %shr.i263.6 *)
mul v_mul4_i268_6 v_and1_i264_6 v_shr_i263_6;
(*   %mul5.i269.6 = mul nuw i64 %shr2.i265.6, %shr.i263.6 *)
mul v_mul5_i269_6 v_shr2_i265_6 v_shr_i263_6;
(*   %and6.i270.6 = and i64 %mul.i266.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_6 v_mul_i266_6 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.6 = lshr i64 %mul.i266.6, 32 *)
(* You may need to modify here *)
split v_shr7_i271_6 tmp_to_be_used v_mul_i266_6 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_6;
assume eq tmp_to_be_used v_and6_i270_6 && true;
(*   %and8.i272.6 = and i64 %mul4.i268.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_6 v_mul4_i268_6 (0xFFFFFFFF)@uint64;
(*   %and9.i273.6 = and i64 %mul3.i267.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_6 v_mul3_i267_6 (0xFFFFFFFF)@uint64;
(*   %add.i274.6 = add nuw nsw i64 %shr7.i271.6, %and8.i272.6 *)
adds discard_855 v_add_i274_6 v_shr7_i271_6 v_and8_i272_6;
(* Heuristics applied. *)
assert true && eq discard_855 0@1;
assume eq discard_855 0 && true;
(*   %add10.i275.6 = add nuw nsw i64 %add.i274.6, %and9.i273.6 *)
adds discard_856 v_add10_i275_6 v_add_i274_6 v_and9_i273_6;
(* Heuristics applied. *)
assert true && eq discard_856 0@1;
assume eq discard_856 0 && true;
(*   %shr11.i276.6 = lshr i64 %add10.i275.6, 32 *)
(* You may need to modify here *)
split v_shr11_i276_6 tmp_to_be_used v_add10_i275_6 32;
(*   %shl.i277.6 = shl i64 %add10.i275.6, 32 *)
shls discard_857 v_shl_i277_6 v_add10_i275_6 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_6 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_6 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.6 = or i64 %shl.i277.6, %and6.i270.6 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_6 v_shl_i277_6 v_and6_i270_6;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_6 v_shl_i277_6 + v_and6_i270_6;
assume eq v_xor68_i278_6 v_shl_i277_6 + v_and6_i270_6 && true;
(*   %shr13.i279.6 = lshr i64 %mul4.i268.6, 32 *)
(* You may need to modify here *)
split v_shr13_i279_6 tmp_to_be_used v_mul4_i268_6 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_6;
assume eq tmp_to_be_used v_and8_i272_6 && true;
(*   %shr14.i280.6 = lshr i64 %mul3.i267.6, 32 *)
(* You may need to modify here *)
split v_shr14_i280_6 tmp_to_be_used v_mul3_i267_6 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_6;
assume eq tmp_to_be_used v_and9_i273_6 && true;
(*   %and15.i281.6 = and i64 %mul5.i269.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_6 v_mul5_i269_6 (0xFFFFFFFF)@uint64;
(*   %add16.i282.6 = add nuw nsw i64 %shr13.i279.6, %shr14.i280.6 *)
adds discard_858 v_add16_i282_6 v_shr13_i279_6 v_shr14_i280_6;
(* Heuristics applied. *)
assert true && eq discard_858 0@1;
assume eq discard_858 0 && true;
(*   %add17.i283.6 = add nuw nsw i64 %add16.i282.6, %and15.i281.6 *)
adds discard_859 v_add17_i283_6 v_add16_i282_6 v_and15_i281_6;
(* Heuristics applied. *)
assert true && eq discard_859 0@1;
assume eq discard_859 0 && true;
(*   %add18.i284.6 = add nuw nsw i64 %add17.i283.6, %shr11.i276.6 *)
adds discard_860 v_add18_i284_6 v_add17_i283_6 v_shr11_i276_6;
(* Heuristics applied. *)
assert true && eq discard_860 0@1;
assume eq discard_860 0 && true;
(*   %and19.i285.6 = and i64 %add18.i284.6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_6 v_add18_i284_6 (0xFFFFFFFF)@uint64;
(*   %and21.i287.6 = and i64 %add18.i284.6, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_6 v_add18_i284_6 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_6 v_and21_i287_6 + v_and19_i285_6;
assume eq v_add18_i284_6 v_and21_i287_6 + v_and19_i285_6 && true;
(*   %and22.i288.6 = and i64 %mul5.i269.6, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_6 v_mul5_i269_6 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_6 v_and22_i288_6 + v_and15_i281_6;
assume eq v_mul5_i269_6 v_and22_i288_6 + v_and15_i281_6 && true;
(*   %add23.i289.6 = add i64 %and21.i287.6, %and22.i288.6 *)
adds discard_861 v_add23_i289_6 v_and21_i287_6 v_and22_i288_6;
(* Heuristics applied. *)
assert true && eq discard_861 0@1;
assume eq discard_861 0 && true;
(*   %xor2569.i290.6 = or i64 %add23.i289.6, %and19.i285.6 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_6 v_add23_i289_6 v_and19_i285_6;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_6 v_add23_i289_6 + v_and19_i285_6;
assume eq v_xor2569_i290_6 v_add23_i289_6 + v_and19_i285_6 && true;
(*   %add82.6 = add i64 %xor68.i278.6, %add111.5 *)
adds discard_862 v_add82_6 v_xor68_i278_6 v_add111_5;
(*   %xor.i256.6 = xor i64 %add82.6, %shl.i277.6 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_6 v_add82_6 v_shl_i277_6;
(*   %xor1.i257.6 = xor i64 %shl.i277.6, %add111.5 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_6 v_shl_i277_6 v_add111_5;
(*   %or.i258.6 = or i64 %xor.i256.6, %xor1.i257.6 *)
(* You may need to modify here *)
or uint64 v_or_i258_6 v_xor_i256_6 v_xor1_i257_6;
(*   %xor2.i259.6 = xor i64 %or.i258.6, %add82.6 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_6 v_or_i258_6 v_add82_6;
(*   %shr.i260.6 = lshr i64 %xor2.i259.6, 63 *)
(* You may need to modify here *)
split v_shr_i260_6 tmp_to_be_used v_xor2_i259_6 63;
(* generated by python *)
assert true && limbs 64 [v_add82_6, v_shr_i260_6] = limbs 64 [v_xor68_i278_6, 0@64] + limbs 64 [v_add111_5, 0@64];
assume limbs 64 [v_add82_6, v_shr_i260_6] = limbs 64 [v_xor68_i278_6, 0] + limbs 64 [v_add111_5, 0] && true;
(*   %add89.6 = add i64 %shr.i260.6, %xor2569.i290.6 *)
adds discard_863 v_add89_6 v_shr_i260_6 v_xor2569_i290_6;
(* Heuristics applied. *)
assert true && eq discard_863 0@1;
assume eq discard_863 0 && true;
(*   %add90.6 = add i64 %add89.6, %add118.5 *)
adds discard_864 v_add90_6 v_add89_6 v_add118_5;
(* Heuristics applied. *)
assert true && eq discard_864 0@1;
assume eq discard_864 0 && true;
(*   %262 = xor i64 %add89.6, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v262 v_add89_6 (0x8000000000000000)@uint64;
(*   %xor2.i253.6 = and i64 %262, %add23.i289.6 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_6 v262 v_add23_i289_6;
(*   %xor.i244.6 = xor i64 %add90.6, %add89.6 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_6 v_add90_6 v_add89_6;
(*   %xor1.i245.6 = xor i64 %add89.6, %add118.5 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_6 v_add89_6 v_add118_5;
(*   %or.i246.6 = or i64 %xor.i244.6, %xor1.i245.6 *)
(* You may need to modify here *)
or uint64 v_or_i246_6 v_xor_i244_6 v_xor1_i245_6;
(*   %xor2.i247.6 = xor i64 %or.i246.6, %add90.6 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_6 v_or_i246_6 v_add90_6;
(*   %shr.i254326.6 = or i64 %xor2.i247.6, %xor2.i253.6 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_6 v_xor2_i247_6 v_xor2_i253_6;
(*   %or94325.6 = lshr i64 %shr.i254326.6, 63 *)
(* You may need to modify here *)
split v_or94325_6 tmp_to_be_used v_shr_i254326_6 63;
(* generated by python *)
assert true && limbs 64 [v_add90_6, v_or94325_6] = limbs 64 [v_shr_i260_6, 0@64] + limbs 64 [v_xor2569_i290_6, 0@64] + limbs 64 [v_add118_5, 0@64];
assume limbs 64 [v_add90_6, v_or94325_6] = limbs 64 [v_shr_i260_6, 0] + limbs 64 [v_xor2569_i290_6, 0] + limbs 64 [v_add118_5, 0] && true;
(*   %arrayidx74.6.1 = getelementptr inbounds i64, i64* %mc, i64 8 *)
(*   %263 = load i64, i64* %arrayidx74.6.1, align 8, !tbaa !3 *)
mov v263 mc_64;
(*   %264 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 10), align 16, !tbaa !3 *)
mov v264 p751p1_80;
(*   %and.i262.6.1 = and i64 %263, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_6_1 v263 (0xFFFFFFFF)@uint64;
(*   %shr.i263.6.1 = lshr i64 %263, 32 *)
(* You may need to modify here *)
split v_shr_i263_6_1 tmp_to_be_used v263 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_6_1;
assume eq tmp_to_be_used v_and_i262_6_1 && true;
(*   %and1.i264.6.1 = and i64 %264, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_6_1 v264 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.6.1 = lshr i64 %264, 32 *)
(* You may need to modify here *)
split v_shr2_i265_6_1 tmp_to_be_used v264 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_6_1;
assume eq tmp_to_be_used v_and1_i264_6_1 && true;
(*   %mul.i266.6.1 = mul nuw i64 %and1.i264.6.1, %and.i262.6.1 *)
mul v_mul_i266_6_1 v_and1_i264_6_1 v_and_i262_6_1;
(*   %mul3.i267.6.1 = mul nuw i64 %shr2.i265.6.1, %and.i262.6.1 *)
mul v_mul3_i267_6_1 v_shr2_i265_6_1 v_and_i262_6_1;
(*   %mul4.i268.6.1 = mul nuw i64 %and1.i264.6.1, %shr.i263.6.1 *)
mul v_mul4_i268_6_1 v_and1_i264_6_1 v_shr_i263_6_1;
(*   %mul5.i269.6.1 = mul nuw i64 %shr2.i265.6.1, %shr.i263.6.1 *)
mul v_mul5_i269_6_1 v_shr2_i265_6_1 v_shr_i263_6_1;
(*   %and6.i270.6.1 = and i64 %mul.i266.6.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_6_1 v_mul_i266_6_1 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.6.1 = lshr i64 %mul.i266.6.1, 32 *)
(* You may need to modify here *)
split v_shr7_i271_6_1 tmp_to_be_used v_mul_i266_6_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_6_1;
assume eq tmp_to_be_used v_and6_i270_6_1 && true;
(*   %and8.i272.6.1 = and i64 %mul4.i268.6.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_6_1 v_mul4_i268_6_1 (0xFFFFFFFF)@uint64;
(*   %and9.i273.6.1 = and i64 %mul3.i267.6.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_6_1 v_mul3_i267_6_1 (0xFFFFFFFF)@uint64;
(*   %add.i274.6.1 = add nuw nsw i64 %shr7.i271.6.1, %and8.i272.6.1 *)
adds discard_865 v_add_i274_6_1 v_shr7_i271_6_1 v_and8_i272_6_1;
(* Heuristics applied. *)
assert true && eq discard_865 0@1;
assume eq discard_865 0 && true;
(*   %add10.i275.6.1 = add nuw nsw i64 %add.i274.6.1, %and9.i273.6.1 *)
adds discard_866 v_add10_i275_6_1 v_add_i274_6_1 v_and9_i273_6_1;
(* Heuristics applied. *)
assert true && eq discard_866 0@1;
assume eq discard_866 0 && true;
(*   %shr11.i276.6.1 = lshr i64 %add10.i275.6.1, 32 *)
(* You may need to modify here *)
split v_shr11_i276_6_1 tmp_to_be_used v_add10_i275_6_1 32;
(*   %shl.i277.6.1 = shl i64 %add10.i275.6.1, 32 *)
shls discard_867 v_shl_i277_6_1 v_add10_i275_6_1 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_6_1 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_6_1 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.6.1 = or i64 %shl.i277.6.1, %and6.i270.6.1 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_6_1 v_shl_i277_6_1 v_and6_i270_6_1;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_6_1 v_shl_i277_6_1 + v_and6_i270_6_1;
assume eq v_xor68_i278_6_1 v_shl_i277_6_1 + v_and6_i270_6_1 && true;
(*   %shr13.i279.6.1 = lshr i64 %mul4.i268.6.1, 32 *)
(* You may need to modify here *)
split v_shr13_i279_6_1 tmp_to_be_used v_mul4_i268_6_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_6_1;
assume eq tmp_to_be_used v_and8_i272_6_1 && true;
(*   %shr14.i280.6.1 = lshr i64 %mul3.i267.6.1, 32 *)
(* You may need to modify here *)
split v_shr14_i280_6_1 tmp_to_be_used v_mul3_i267_6_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_6_1;
assume eq tmp_to_be_used v_and9_i273_6_1 && true;
(*   %and15.i281.6.1 = and i64 %mul5.i269.6.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_6_1 v_mul5_i269_6_1 (0xFFFFFFFF)@uint64;
(*   %add16.i282.6.1 = add nuw nsw i64 %shr13.i279.6.1, %shr14.i280.6.1 *)
adds discard_868 v_add16_i282_6_1 v_shr13_i279_6_1 v_shr14_i280_6_1;
(* Heuristics applied. *)
assert true && eq discard_868 0@1;
assume eq discard_868 0 && true;
(*   %add17.i283.6.1 = add nuw nsw i64 %add16.i282.6.1, %and15.i281.6.1 *)
adds discard_869 v_add17_i283_6_1 v_add16_i282_6_1 v_and15_i281_6_1;
(* Heuristics applied. *)
assert true && eq discard_869 0@1;
assume eq discard_869 0 && true;
(*   %add18.i284.6.1 = add nuw nsw i64 %add17.i283.6.1, %shr11.i276.6.1 *)
adds discard_870 v_add18_i284_6_1 v_add17_i283_6_1 v_shr11_i276_6_1;
(* Heuristics applied. *)
assert true && eq discard_870 0@1;
assume eq discard_870 0 && true;
(*   %and19.i285.6.1 = and i64 %add18.i284.6.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_6_1 v_add18_i284_6_1 (0xFFFFFFFF)@uint64;
(*   %and21.i287.6.1 = and i64 %add18.i284.6.1, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_6_1 v_add18_i284_6_1 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_6_1 v_and21_i287_6_1 + v_and19_i285_6_1;
assume eq v_add18_i284_6_1 v_and21_i287_6_1 + v_and19_i285_6_1 && true;
(*   %and22.i288.6.1 = and i64 %mul5.i269.6.1, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_6_1 v_mul5_i269_6_1 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_6_1 v_and22_i288_6_1 + v_and15_i281_6_1;
assume eq v_mul5_i269_6_1 v_and22_i288_6_1 + v_and15_i281_6_1 && true;
(*   %add23.i289.6.1 = add i64 %and21.i287.6.1, %and22.i288.6.1 *)
adds discard_871 v_add23_i289_6_1 v_and21_i287_6_1 v_and22_i288_6_1;
(* Heuristics applied. *)
assert true && eq discard_871 0@1;
assume eq discard_871 0 && true;
(*   %xor2569.i290.6.1 = or i64 %add23.i289.6.1, %and19.i285.6.1 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_6_1 v_add23_i289_6_1 v_and19_i285_6_1;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_6_1 v_add23_i289_6_1 + v_and19_i285_6_1;
assume eq v_xor2569_i290_6_1 v_add23_i289_6_1 + v_and19_i285_6_1 && true;
(*   %add82.6.1 = add i64 %xor68.i278.6.1, %add82.6 *)
adds discard_872 v_add82_6_1 v_xor68_i278_6_1 v_add82_6;
(*   %xor.i256.6.1 = xor i64 %add82.6.1, %shl.i277.6.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_6_1 v_add82_6_1 v_shl_i277_6_1;
(*   %xor1.i257.6.1 = xor i64 %shl.i277.6.1, %add82.6 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_6_1 v_shl_i277_6_1 v_add82_6;
(*   %or.i258.6.1 = or i64 %xor.i256.6.1, %xor1.i257.6.1 *)
(* You may need to modify here *)
or uint64 v_or_i258_6_1 v_xor_i256_6_1 v_xor1_i257_6_1;
(*   %xor2.i259.6.1 = xor i64 %or.i258.6.1, %add82.6.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_6_1 v_or_i258_6_1 v_add82_6_1;
(*   %shr.i260.6.1 = lshr i64 %xor2.i259.6.1, 63 *)
(* You may need to modify here *)
split v_shr_i260_6_1 tmp_to_be_used v_xor2_i259_6_1 63;
(* generated by python *)
assert true && limbs 64 [v_add82_6_1, v_shr_i260_6_1] = limbs 64 [v_xor68_i278_6_1, 0@64] + limbs 64 [v_add82_6, 0@64];
assume limbs 64 [v_add82_6_1, v_shr_i260_6_1] = limbs 64 [v_xor68_i278_6_1, 0] + limbs 64 [v_add82_6, 0] && true;
(*   %add89.6.1 = add i64 %shr.i260.6.1, %xor2569.i290.6.1 *)
adds discard_873 v_add89_6_1 v_shr_i260_6_1 v_xor2569_i290_6_1;
(* Heuristics applied. *)
assert true && eq discard_873 0@1;
assume eq discard_873 0 && true;
(*   %add90.6.1 = add i64 %add89.6.1, %add90.6 *)
adds discard_874 v_add90_6_1 v_add89_6_1 v_add90_6;
(* Heuristics applied. *)
assert true && eq discard_874 0@1;
assume eq discard_874 0 && true;
(*   %265 = xor i64 %add89.6.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v265 v_add89_6_1 (0x8000000000000000)@uint64;
(*   %xor2.i253.6.1 = and i64 %265, %add23.i289.6.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_6_1 v265 v_add23_i289_6_1;
(*   %xor.i244.6.1 = xor i64 %add90.6.1, %add89.6.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_6_1 v_add90_6_1 v_add89_6_1;
(*   %xor1.i245.6.1 = xor i64 %add89.6.1, %add90.6 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_6_1 v_add89_6_1 v_add90_6;
(*   %or.i246.6.1 = or i64 %xor.i244.6.1, %xor1.i245.6.1 *)
(* You may need to modify here *)
or uint64 v_or_i246_6_1 v_xor_i244_6_1 v_xor1_i245_6_1;
(*   %xor2.i247.6.1 = xor i64 %or.i246.6.1, %add90.6.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_6_1 v_or_i246_6_1 v_add90_6_1;
(*   %shr.i254326.6.1 = or i64 %xor2.i247.6.1, %xor2.i253.6.1 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_6_1 v_xor2_i247_6_1 v_xor2_i253_6_1;
(*   %or94325.6.1 = lshr i64 %shr.i254326.6.1, 63 *)
(* You may need to modify here *)
split v_or94325_6_1 tmp_to_be_used v_shr_i254326_6_1 63;
(* generated by python *)
assert true && limbs 64 [v_add90_6_1, v_or94325_6_1] = limbs 64 [v_shr_i260_6_1, 0@64] + limbs 64 [v_xor2569_i290_6_1, 0@64] + limbs 64 [v_add90_6, 0@64];
assume limbs 64 [v_add90_6_1, v_or94325_6_1] = limbs 64 [v_shr_i260_6_1, 0] + limbs 64 [v_xor2569_i290_6_1, 0] + limbs 64 [v_add90_6, 0] && true;
(*   %add96.6.1 = add nuw nsw i64 %or94325.6.1, %or94325.6 *)
adds discard_875 v_add96_6_1 v_or94325_6_1 v_or94325_6;
(* Heuristics applied. *)
assert true && eq discard_875 0@1;
assume eq discard_875 0 && true;
(*   %arrayidx74.6.2 = getelementptr inbounds i64, i64* %mc, i64 9 *)
(*   %266 = load i64, i64* %arrayidx74.6.2, align 8, !tbaa !3 *)
mov v266 mc_72;
(*   %267 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 9), align 8, !tbaa !3 *)
mov v267 p751p1_72;
(*   %and.i262.6.2 = and i64 %266, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_6_2 v266 (0xFFFFFFFF)@uint64;
(*   %shr.i263.6.2 = lshr i64 %266, 32 *)
(* You may need to modify here *)
split v_shr_i263_6_2 tmp_to_be_used v266 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_6_2;
assume eq tmp_to_be_used v_and_i262_6_2 && true;
(*   %and1.i264.6.2 = and i64 %267, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_6_2 v267 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.6.2 = lshr i64 %267, 32 *)
(* You may need to modify here *)
split v_shr2_i265_6_2 tmp_to_be_used v267 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_6_2;
assume eq tmp_to_be_used v_and1_i264_6_2 && true;
(*   %mul.i266.6.2 = mul nuw i64 %and1.i264.6.2, %and.i262.6.2 *)
mul v_mul_i266_6_2 v_and1_i264_6_2 v_and_i262_6_2;
(*   %mul3.i267.6.2 = mul nuw i64 %shr2.i265.6.2, %and.i262.6.2 *)
mul v_mul3_i267_6_2 v_shr2_i265_6_2 v_and_i262_6_2;
(*   %mul4.i268.6.2 = mul nuw i64 %and1.i264.6.2, %shr.i263.6.2 *)
mul v_mul4_i268_6_2 v_and1_i264_6_2 v_shr_i263_6_2;
(*   %mul5.i269.6.2 = mul nuw i64 %shr2.i265.6.2, %shr.i263.6.2 *)
mul v_mul5_i269_6_2 v_shr2_i265_6_2 v_shr_i263_6_2;
(*   %and6.i270.6.2 = and i64 %mul.i266.6.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_6_2 v_mul_i266_6_2 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.6.2 = lshr i64 %mul.i266.6.2, 32 *)
(* You may need to modify here *)
split v_shr7_i271_6_2 tmp_to_be_used v_mul_i266_6_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_6_2;
assume eq tmp_to_be_used v_and6_i270_6_2 && true;
(*   %and8.i272.6.2 = and i64 %mul4.i268.6.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_6_2 v_mul4_i268_6_2 (0xFFFFFFFF)@uint64;
(*   %and9.i273.6.2 = and i64 %mul3.i267.6.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_6_2 v_mul3_i267_6_2 (0xFFFFFFFF)@uint64;
(*   %add.i274.6.2 = add nuw nsw i64 %shr7.i271.6.2, %and8.i272.6.2 *)
adds discard_876 v_add_i274_6_2 v_shr7_i271_6_2 v_and8_i272_6_2;
(* Heuristics applied. *)
assert true && eq discard_876 0@1;
assume eq discard_876 0 && true;
(*   %add10.i275.6.2 = add nuw nsw i64 %add.i274.6.2, %and9.i273.6.2 *)
adds discard_877 v_add10_i275_6_2 v_add_i274_6_2 v_and9_i273_6_2;
(* Heuristics applied. *)
assert true && eq discard_877 0@1;
assume eq discard_877 0 && true;
(*   %shr11.i276.6.2 = lshr i64 %add10.i275.6.2, 32 *)
(* You may need to modify here *)
split v_shr11_i276_6_2 tmp_to_be_used v_add10_i275_6_2 32;
(*   %shl.i277.6.2 = shl i64 %add10.i275.6.2, 32 *)
shls discard_878 v_shl_i277_6_2 v_add10_i275_6_2 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_6_2 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_6_2 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.6.2 = or i64 %shl.i277.6.2, %and6.i270.6.2 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_6_2 v_shl_i277_6_2 v_and6_i270_6_2;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_6_2 v_shl_i277_6_2 + v_and6_i270_6_2;
assume eq v_xor68_i278_6_2 v_shl_i277_6_2 + v_and6_i270_6_2 && true;
(*   %shr13.i279.6.2 = lshr i64 %mul4.i268.6.2, 32 *)
(* You may need to modify here *)
split v_shr13_i279_6_2 tmp_to_be_used v_mul4_i268_6_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_6_2;
assume eq tmp_to_be_used v_and8_i272_6_2 && true;
(*   %shr14.i280.6.2 = lshr i64 %mul3.i267.6.2, 32 *)
(* You may need to modify here *)
split v_shr14_i280_6_2 tmp_to_be_used v_mul3_i267_6_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_6_2;
assume eq tmp_to_be_used v_and9_i273_6_2 && true;
(*   %and15.i281.6.2 = and i64 %mul5.i269.6.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_6_2 v_mul5_i269_6_2 (0xFFFFFFFF)@uint64;
(*   %add16.i282.6.2 = add nuw nsw i64 %shr13.i279.6.2, %shr14.i280.6.2 *)
adds discard_879 v_add16_i282_6_2 v_shr13_i279_6_2 v_shr14_i280_6_2;
(* Heuristics applied. *)
assert true && eq discard_879 0@1;
assume eq discard_879 0 && true;
(*   %add17.i283.6.2 = add nuw nsw i64 %add16.i282.6.2, %and15.i281.6.2 *)
adds discard_880 v_add17_i283_6_2 v_add16_i282_6_2 v_and15_i281_6_2;
(* Heuristics applied. *)
assert true && eq discard_880 0@1;
assume eq discard_880 0 && true;
(*   %add18.i284.6.2 = add nuw nsw i64 %add17.i283.6.2, %shr11.i276.6.2 *)
adds discard_881 v_add18_i284_6_2 v_add17_i283_6_2 v_shr11_i276_6_2;
(* Heuristics applied. *)
assert true && eq discard_881 0@1;
assume eq discard_881 0 && true;
(*   %and19.i285.6.2 = and i64 %add18.i284.6.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_6_2 v_add18_i284_6_2 (0xFFFFFFFF)@uint64;
(*   %and21.i287.6.2 = and i64 %add18.i284.6.2, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_6_2 v_add18_i284_6_2 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_6_2 v_and21_i287_6_2 + v_and19_i285_6_2;
assume eq v_add18_i284_6_2 v_and21_i287_6_2 + v_and19_i285_6_2 && true;
(*   %and22.i288.6.2 = and i64 %mul5.i269.6.2, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_6_2 v_mul5_i269_6_2 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_6_2 v_and22_i288_6_2 + v_and15_i281_6_2;
assume eq v_mul5_i269_6_2 v_and22_i288_6_2 + v_and15_i281_6_2 && true;
(*   %add23.i289.6.2 = add i64 %and21.i287.6.2, %and22.i288.6.2 *)
adds discard_882 v_add23_i289_6_2 v_and21_i287_6_2 v_and22_i288_6_2;
(* Heuristics applied. *)
assert true && eq discard_882 0@1;
assume eq discard_882 0 && true;
(*   %xor2569.i290.6.2 = or i64 %add23.i289.6.2, %and19.i285.6.2 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_6_2 v_add23_i289_6_2 v_and19_i285_6_2;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_6_2 v_add23_i289_6_2 + v_and19_i285_6_2;
assume eq v_xor2569_i290_6_2 v_add23_i289_6_2 + v_and19_i285_6_2 && true;
(*   %add82.6.2 = add i64 %xor68.i278.6.2, %add82.6.1 *)
adds discard_883 v_add82_6_2 v_xor68_i278_6_2 v_add82_6_1;
(*   %xor.i256.6.2 = xor i64 %add82.6.2, %shl.i277.6.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_6_2 v_add82_6_2 v_shl_i277_6_2;
(*   %xor1.i257.6.2 = xor i64 %shl.i277.6.2, %add82.6.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_6_2 v_shl_i277_6_2 v_add82_6_1;
(*   %or.i258.6.2 = or i64 %xor.i256.6.2, %xor1.i257.6.2 *)
(* You may need to modify here *)
or uint64 v_or_i258_6_2 v_xor_i256_6_2 v_xor1_i257_6_2;
(*   %xor2.i259.6.2 = xor i64 %or.i258.6.2, %add82.6.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_6_2 v_or_i258_6_2 v_add82_6_2;
(*   %shr.i260.6.2 = lshr i64 %xor2.i259.6.2, 63 *)
(* You may need to modify here *)
split v_shr_i260_6_2 tmp_to_be_used v_xor2_i259_6_2 63;
(* generated by python *)
assert true && limbs 64 [v_add82_6_2, v_shr_i260_6_2] = limbs 64 [v_xor68_i278_6_2, 0@64] + limbs 64 [v_add82_6_1, 0@64];
assume limbs 64 [v_add82_6_2, v_shr_i260_6_2] = limbs 64 [v_xor68_i278_6_2, 0] + limbs 64 [v_add82_6_1, 0] && true;
(*   %add89.6.2 = add i64 %shr.i260.6.2, %xor2569.i290.6.2 *)
adds discard_884 v_add89_6_2 v_shr_i260_6_2 v_xor2569_i290_6_2;
(* Heuristics applied. *)
assert true && eq discard_884 0@1;
assume eq discard_884 0 && true;
(*   %add90.6.2 = add i64 %add89.6.2, %add90.6.1 *)
adds discard_885 v_add90_6_2 v_add89_6_2 v_add90_6_1;
(* Heuristics applied. *)
assert true && eq discard_885 0@1;
assume eq discard_885 0 && true;
(*   %268 = xor i64 %add89.6.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v268 v_add89_6_2 (0x8000000000000000)@uint64;
(*   %xor2.i253.6.2 = and i64 %268, %add23.i289.6.2 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_6_2 v268 v_add23_i289_6_2;
(*   %xor.i244.6.2 = xor i64 %add90.6.2, %add89.6.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_6_2 v_add90_6_2 v_add89_6_2;
(*   %xor1.i245.6.2 = xor i64 %add89.6.2, %add90.6.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_6_2 v_add89_6_2 v_add90_6_1;
(*   %or.i246.6.2 = or i64 %xor.i244.6.2, %xor1.i245.6.2 *)
(* You may need to modify here *)
or uint64 v_or_i246_6_2 v_xor_i244_6_2 v_xor1_i245_6_2;
(*   %xor2.i247.6.2 = xor i64 %or.i246.6.2, %add90.6.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_6_2 v_or_i246_6_2 v_add90_6_2;
(*   %shr.i254326.6.2 = or i64 %xor2.i247.6.2, %xor2.i253.6.2 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_6_2 v_xor2_i247_6_2 v_xor2_i253_6_2;
(*   %or94325.6.2 = lshr i64 %shr.i254326.6.2, 63 *)
(* You may need to modify here *)
split v_or94325_6_2 tmp_to_be_used v_shr_i254326_6_2 63;
(* generated by python *)
assert true && limbs 64 [v_add90_6_2, v_or94325_6_2] = limbs 64 [v_shr_i260_6_2, 0@64] + limbs 64 [v_xor2569_i290_6_2, 0@64] + limbs 64 [v_add90_6_1, 0@64];
assume limbs 64 [v_add90_6_2, v_or94325_6_2] = limbs 64 [v_shr_i260_6_2, 0] + limbs 64 [v_xor2569_i290_6_2, 0] + limbs 64 [v_add90_6_1, 0] && true;
(*   %add96.6.2 = add nsw i64 %or94325.6.2, %add96.6.1 *)
adds discard_886 v_add96_6_2 v_or94325_6_2 v_add96_6_1;
(* Heuristics applied. *)
assert true && eq discard_886 0@1;
assume eq discard_886 0 && true;
(*   %arrayidx74.6.3 = getelementptr inbounds i64, i64* %mc, i64 10 *)
(*   %269 = load i64, i64* %arrayidx74.6.3, align 8, !tbaa !3 *)
mov v269 mc_80;
(*   %270 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 8), align 16, !tbaa !3 *)
mov v270 p751p1_64;
(*   %and.i262.6.3 = and i64 %269, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_6_3 v269 (0xFFFFFFFF)@uint64;
(*   %shr.i263.6.3 = lshr i64 %269, 32 *)
(* You may need to modify here *)
split v_shr_i263_6_3 tmp_to_be_used v269 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_6_3;
assume eq tmp_to_be_used v_and_i262_6_3 && true;
(*   %and1.i264.6.3 = and i64 %270, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_6_3 v270 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.6.3 = lshr i64 %270, 32 *)
(* You may need to modify here *)
split v_shr2_i265_6_3 tmp_to_be_used v270 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_6_3;
assume eq tmp_to_be_used v_and1_i264_6_3 && true;
(*   %mul.i266.6.3 = mul nuw i64 %and1.i264.6.3, %and.i262.6.3 *)
mul v_mul_i266_6_3 v_and1_i264_6_3 v_and_i262_6_3;
(*   %mul3.i267.6.3 = mul nuw i64 %shr2.i265.6.3, %and.i262.6.3 *)
mul v_mul3_i267_6_3 v_shr2_i265_6_3 v_and_i262_6_3;
(*   %mul4.i268.6.3 = mul nuw i64 %and1.i264.6.3, %shr.i263.6.3 *)
mul v_mul4_i268_6_3 v_and1_i264_6_3 v_shr_i263_6_3;
(*   %mul5.i269.6.3 = mul nuw i64 %shr2.i265.6.3, %shr.i263.6.3 *)
mul v_mul5_i269_6_3 v_shr2_i265_6_3 v_shr_i263_6_3;
(*   %and6.i270.6.3 = and i64 %mul.i266.6.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_6_3 v_mul_i266_6_3 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.6.3 = lshr i64 %mul.i266.6.3, 32 *)
(* You may need to modify here *)
split v_shr7_i271_6_3 tmp_to_be_used v_mul_i266_6_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_6_3;
assume eq tmp_to_be_used v_and6_i270_6_3 && true;
(*   %and8.i272.6.3 = and i64 %mul4.i268.6.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_6_3 v_mul4_i268_6_3 (0xFFFFFFFF)@uint64;
(*   %and9.i273.6.3 = and i64 %mul3.i267.6.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_6_3 v_mul3_i267_6_3 (0xFFFFFFFF)@uint64;
(*   %add.i274.6.3 = add nuw nsw i64 %shr7.i271.6.3, %and8.i272.6.3 *)
adds discard_887 v_add_i274_6_3 v_shr7_i271_6_3 v_and8_i272_6_3;
(* Heuristics applied. *)
assert true && eq discard_887 0@1;
assume eq discard_887 0 && true;
(*   %add10.i275.6.3 = add nuw nsw i64 %add.i274.6.3, %and9.i273.6.3 *)
adds discard_888 v_add10_i275_6_3 v_add_i274_6_3 v_and9_i273_6_3;
(* Heuristics applied. *)
assert true && eq discard_888 0@1;
assume eq discard_888 0 && true;
(*   %shr11.i276.6.3 = lshr i64 %add10.i275.6.3, 32 *)
(* You may need to modify here *)
split v_shr11_i276_6_3 tmp_to_be_used v_add10_i275_6_3 32;
(*   %shl.i277.6.3 = shl i64 %add10.i275.6.3, 32 *)
shls discard_889 v_shl_i277_6_3 v_add10_i275_6_3 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_6_3 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_6_3 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.6.3 = or i64 %shl.i277.6.3, %and6.i270.6.3 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_6_3 v_shl_i277_6_3 v_and6_i270_6_3;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_6_3 v_shl_i277_6_3 + v_and6_i270_6_3;
assume eq v_xor68_i278_6_3 v_shl_i277_6_3 + v_and6_i270_6_3 && true;
(*   %shr13.i279.6.3 = lshr i64 %mul4.i268.6.3, 32 *)
(* You may need to modify here *)
split v_shr13_i279_6_3 tmp_to_be_used v_mul4_i268_6_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_6_3;
assume eq tmp_to_be_used v_and8_i272_6_3 && true;
(*   %shr14.i280.6.3 = lshr i64 %mul3.i267.6.3, 32 *)
(* You may need to modify here *)
split v_shr14_i280_6_3 tmp_to_be_used v_mul3_i267_6_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_6_3;
assume eq tmp_to_be_used v_and9_i273_6_3 && true;
(*   %and15.i281.6.3 = and i64 %mul5.i269.6.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_6_3 v_mul5_i269_6_3 (0xFFFFFFFF)@uint64;
(*   %add16.i282.6.3 = add nuw nsw i64 %shr13.i279.6.3, %shr14.i280.6.3 *)
adds discard_890 v_add16_i282_6_3 v_shr13_i279_6_3 v_shr14_i280_6_3;
(* Heuristics applied. *)
assert true && eq discard_890 0@1;
assume eq discard_890 0 && true;
(*   %add17.i283.6.3 = add nuw nsw i64 %add16.i282.6.3, %and15.i281.6.3 *)
adds discard_891 v_add17_i283_6_3 v_add16_i282_6_3 v_and15_i281_6_3;
(* Heuristics applied. *)
assert true && eq discard_891 0@1;
assume eq discard_891 0 && true;
(*   %add18.i284.6.3 = add nuw nsw i64 %add17.i283.6.3, %shr11.i276.6.3 *)
adds discard_892 v_add18_i284_6_3 v_add17_i283_6_3 v_shr11_i276_6_3;
(* Heuristics applied. *)
assert true && eq discard_892 0@1;
assume eq discard_892 0 && true;
(*   %and19.i285.6.3 = and i64 %add18.i284.6.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_6_3 v_add18_i284_6_3 (0xFFFFFFFF)@uint64;
(*   %and21.i287.6.3 = and i64 %add18.i284.6.3, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_6_3 v_add18_i284_6_3 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_6_3 v_and21_i287_6_3 + v_and19_i285_6_3;
assume eq v_add18_i284_6_3 v_and21_i287_6_3 + v_and19_i285_6_3 && true;
(*   %and22.i288.6.3 = and i64 %mul5.i269.6.3, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_6_3 v_mul5_i269_6_3 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_6_3 v_and22_i288_6_3 + v_and15_i281_6_3;
assume eq v_mul5_i269_6_3 v_and22_i288_6_3 + v_and15_i281_6_3 && true;
(*   %add23.i289.6.3 = add i64 %and21.i287.6.3, %and22.i288.6.3 *)
adds discard_893 v_add23_i289_6_3 v_and21_i287_6_3 v_and22_i288_6_3;
(* Heuristics applied. *)
assert true && eq discard_893 0@1;
assume eq discard_893 0 && true;
(*   %xor2569.i290.6.3 = or i64 %add23.i289.6.3, %and19.i285.6.3 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_6_3 v_add23_i289_6_3 v_and19_i285_6_3;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_6_3 v_add23_i289_6_3 + v_and19_i285_6_3;
assume eq v_xor2569_i290_6_3 v_add23_i289_6_3 + v_and19_i285_6_3 && true;
(*   %add82.6.3 = add i64 %xor68.i278.6.3, %add82.6.2 *)
adds discard_894 v_add82_6_3 v_xor68_i278_6_3 v_add82_6_2;
(*   %xor.i256.6.3 = xor i64 %add82.6.3, %shl.i277.6.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_6_3 v_add82_6_3 v_shl_i277_6_3;
(*   %xor1.i257.6.3 = xor i64 %shl.i277.6.3, %add82.6.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_6_3 v_shl_i277_6_3 v_add82_6_2;
(*   %or.i258.6.3 = or i64 %xor.i256.6.3, %xor1.i257.6.3 *)
(* You may need to modify here *)
or uint64 v_or_i258_6_3 v_xor_i256_6_3 v_xor1_i257_6_3;
(*   %xor2.i259.6.3 = xor i64 %or.i258.6.3, %add82.6.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_6_3 v_or_i258_6_3 v_add82_6_3;
(*   %shr.i260.6.3 = lshr i64 %xor2.i259.6.3, 63 *)
(* You may need to modify here *)
split v_shr_i260_6_3 tmp_to_be_used v_xor2_i259_6_3 63;
(* generated by python *)
assert true && limbs 64 [v_add82_6_3, v_shr_i260_6_3] = limbs 64 [v_xor68_i278_6_3, 0@64] + limbs 64 [v_add82_6_2, 0@64];
assume limbs 64 [v_add82_6_3, v_shr_i260_6_3] = limbs 64 [v_xor68_i278_6_3, 0] + limbs 64 [v_add82_6_2, 0] && true;
(*   %add89.6.3 = add i64 %shr.i260.6.3, %xor2569.i290.6.3 *)
adds discard_895 v_add89_6_3 v_shr_i260_6_3 v_xor2569_i290_6_3;
(* Heuristics applied. *)
assert true && eq discard_895 0@1;
assume eq discard_895 0 && true;
(*   %add90.6.3 = add i64 %add89.6.3, %add90.6.2 *)
adds discard_896 v_add90_6_3 v_add89_6_3 v_add90_6_2;
(* Heuristics applied. *)
assert true && eq discard_896 0@1;
assume eq discard_896 0 && true;
(*   %271 = xor i64 %add89.6.3, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v271 v_add89_6_3 (0x8000000000000000)@uint64;
(*   %xor2.i253.6.3 = and i64 %271, %add23.i289.6.3 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_6_3 v271 v_add23_i289_6_3;
(*   %xor.i244.6.3 = xor i64 %add90.6.3, %add89.6.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_6_3 v_add90_6_3 v_add89_6_3;
(*   %xor1.i245.6.3 = xor i64 %add89.6.3, %add90.6.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_6_3 v_add89_6_3 v_add90_6_2;
(*   %or.i246.6.3 = or i64 %xor.i244.6.3, %xor1.i245.6.3 *)
(* You may need to modify here *)
or uint64 v_or_i246_6_3 v_xor_i244_6_3 v_xor1_i245_6_3;
(*   %xor2.i247.6.3 = xor i64 %or.i246.6.3, %add90.6.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_6_3 v_or_i246_6_3 v_add90_6_3;
(*   %shr.i254326.6.3 = or i64 %xor2.i247.6.3, %xor2.i253.6.3 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_6_3 v_xor2_i247_6_3 v_xor2_i253_6_3;
(*   %or94325.6.3 = lshr i64 %shr.i254326.6.3, 63 *)
(* You may need to modify here *)
split v_or94325_6_3 tmp_to_be_used v_shr_i254326_6_3 63;
(* generated by python *)
assert true && limbs 64 [v_add90_6_3, v_or94325_6_3] = limbs 64 [v_shr_i260_6_3, 0@64] + limbs 64 [v_xor2569_i290_6_3, 0@64] + limbs 64 [v_add90_6_2, 0@64];
assume limbs 64 [v_add90_6_3, v_or94325_6_3] = limbs 64 [v_shr_i260_6_3, 0] + limbs 64 [v_xor2569_i290_6_3, 0] + limbs 64 [v_add90_6_2, 0] && true;
(*   %add96.6.3 = add nsw i64 %or94325.6.3, %add96.6.2 *)
adds discard_897 v_add96_6_3 v_or94325_6_3 v_add96_6_2;
(* Heuristics applied. *)
assert true && eq discard_897 0@1;
assume eq discard_897 0 && true;
(*   %arrayidx74.6.4 = getelementptr inbounds i64, i64* %mc, i64 11 *)
(*   %272 = load i64, i64* %arrayidx74.6.4, align 8, !tbaa !3 *)
mov v272 mc_88;
(*   %273 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 7), align 8, !tbaa !3 *)
mov v273 p751p1_56;
(*   %and.i262.6.4 = and i64 %272, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_6_4 v272 (0xFFFFFFFF)@uint64;
(*   %shr.i263.6.4 = lshr i64 %272, 32 *)
(* You may need to modify here *)
split v_shr_i263_6_4 tmp_to_be_used v272 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_6_4;
assume eq tmp_to_be_used v_and_i262_6_4 && true;
(*   %and1.i264.6.4 = and i64 %273, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_6_4 v273 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.6.4 = lshr i64 %273, 32 *)
(* You may need to modify here *)
split v_shr2_i265_6_4 tmp_to_be_used v273 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_6_4;
assume eq tmp_to_be_used v_and1_i264_6_4 && true;
(*   %mul.i266.6.4 = mul nuw i64 %and1.i264.6.4, %and.i262.6.4 *)
mul v_mul_i266_6_4 v_and1_i264_6_4 v_and_i262_6_4;
(*   %mul3.i267.6.4 = mul nuw i64 %shr2.i265.6.4, %and.i262.6.4 *)
mul v_mul3_i267_6_4 v_shr2_i265_6_4 v_and_i262_6_4;
(*   %mul4.i268.6.4 = mul nuw i64 %and1.i264.6.4, %shr.i263.6.4 *)
mul v_mul4_i268_6_4 v_and1_i264_6_4 v_shr_i263_6_4;
(*   %mul5.i269.6.4 = mul nuw i64 %shr2.i265.6.4, %shr.i263.6.4 *)
mul v_mul5_i269_6_4 v_shr2_i265_6_4 v_shr_i263_6_4;
(*   %and6.i270.6.4 = and i64 %mul.i266.6.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_6_4 v_mul_i266_6_4 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.6.4 = lshr i64 %mul.i266.6.4, 32 *)
(* You may need to modify here *)
split v_shr7_i271_6_4 tmp_to_be_used v_mul_i266_6_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_6_4;
assume eq tmp_to_be_used v_and6_i270_6_4 && true;
(*   %and8.i272.6.4 = and i64 %mul4.i268.6.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_6_4 v_mul4_i268_6_4 (0xFFFFFFFF)@uint64;
(*   %and9.i273.6.4 = and i64 %mul3.i267.6.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_6_4 v_mul3_i267_6_4 (0xFFFFFFFF)@uint64;
(*   %add.i274.6.4 = add nuw nsw i64 %shr7.i271.6.4, %and8.i272.6.4 *)
adds discard_898 v_add_i274_6_4 v_shr7_i271_6_4 v_and8_i272_6_4;
(* Heuristics applied. *)
assert true && eq discard_898 0@1;
assume eq discard_898 0 && true;
(*   %add10.i275.6.4 = add nuw nsw i64 %add.i274.6.4, %and9.i273.6.4 *)
adds discard_899 v_add10_i275_6_4 v_add_i274_6_4 v_and9_i273_6_4;
(* Heuristics applied. *)
assert true && eq discard_899 0@1;
assume eq discard_899 0 && true;
(*   %shr11.i276.6.4 = lshr i64 %add10.i275.6.4, 32 *)
(* You may need to modify here *)
split v_shr11_i276_6_4 tmp_to_be_used v_add10_i275_6_4 32;
(*   %shl.i277.6.4 = shl i64 %add10.i275.6.4, 32 *)
shls discard_900 v_shl_i277_6_4 v_add10_i275_6_4 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_6_4 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_6_4 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.6.4 = or i64 %shl.i277.6.4, %and6.i270.6.4 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_6_4 v_shl_i277_6_4 v_and6_i270_6_4;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_6_4 v_shl_i277_6_4 + v_and6_i270_6_4;
assume eq v_xor68_i278_6_4 v_shl_i277_6_4 + v_and6_i270_6_4 && true;
(*   %shr13.i279.6.4 = lshr i64 %mul4.i268.6.4, 32 *)
(* You may need to modify here *)
split v_shr13_i279_6_4 tmp_to_be_used v_mul4_i268_6_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_6_4;
assume eq tmp_to_be_used v_and8_i272_6_4 && true;
(*   %shr14.i280.6.4 = lshr i64 %mul3.i267.6.4, 32 *)
(* You may need to modify here *)
split v_shr14_i280_6_4 tmp_to_be_used v_mul3_i267_6_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_6_4;
assume eq tmp_to_be_used v_and9_i273_6_4 && true;
(*   %and15.i281.6.4 = and i64 %mul5.i269.6.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_6_4 v_mul5_i269_6_4 (0xFFFFFFFF)@uint64;
(*   %add16.i282.6.4 = add nuw nsw i64 %shr13.i279.6.4, %shr14.i280.6.4 *)
adds discard_901 v_add16_i282_6_4 v_shr13_i279_6_4 v_shr14_i280_6_4;
(* Heuristics applied. *)
assert true && eq discard_901 0@1;
assume eq discard_901 0 && true;
(*   %add17.i283.6.4 = add nuw nsw i64 %add16.i282.6.4, %and15.i281.6.4 *)
adds discard_902 v_add17_i283_6_4 v_add16_i282_6_4 v_and15_i281_6_4;
(* Heuristics applied. *)
assert true && eq discard_902 0@1;
assume eq discard_902 0 && true;
(*   %add18.i284.6.4 = add nuw nsw i64 %add17.i283.6.4, %shr11.i276.6.4 *)
adds discard_903 v_add18_i284_6_4 v_add17_i283_6_4 v_shr11_i276_6_4;
(* Heuristics applied. *)
assert true && eq discard_903 0@1;
assume eq discard_903 0 && true;
(*   %and19.i285.6.4 = and i64 %add18.i284.6.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_6_4 v_add18_i284_6_4 (0xFFFFFFFF)@uint64;
(*   %and21.i287.6.4 = and i64 %add18.i284.6.4, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_6_4 v_add18_i284_6_4 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_6_4 v_and21_i287_6_4 + v_and19_i285_6_4;
assume eq v_add18_i284_6_4 v_and21_i287_6_4 + v_and19_i285_6_4 && true;
(*   %and22.i288.6.4 = and i64 %mul5.i269.6.4, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_6_4 v_mul5_i269_6_4 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_6_4 v_and22_i288_6_4 + v_and15_i281_6_4;
assume eq v_mul5_i269_6_4 v_and22_i288_6_4 + v_and15_i281_6_4 && true;
(*   %add23.i289.6.4 = add i64 %and21.i287.6.4, %and22.i288.6.4 *)
adds discard_904 v_add23_i289_6_4 v_and21_i287_6_4 v_and22_i288_6_4;
(* Heuristics applied. *)
assert true && eq discard_904 0@1;
assume eq discard_904 0 && true;
(*   %xor2569.i290.6.4 = or i64 %add23.i289.6.4, %and19.i285.6.4 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_6_4 v_add23_i289_6_4 v_and19_i285_6_4;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_6_4 v_add23_i289_6_4 + v_and19_i285_6_4;
assume eq v_xor2569_i290_6_4 v_add23_i289_6_4 + v_and19_i285_6_4 && true;
(*   %add82.6.4 = add i64 %xor68.i278.6.4, %add82.6.3 *)
adds discard_905 v_add82_6_4 v_xor68_i278_6_4 v_add82_6_3;
(*   %xor.i256.6.4 = xor i64 %add82.6.4, %shl.i277.6.4 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_6_4 v_add82_6_4 v_shl_i277_6_4;
(*   %xor1.i257.6.4 = xor i64 %shl.i277.6.4, %add82.6.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_6_4 v_shl_i277_6_4 v_add82_6_3;
(*   %or.i258.6.4 = or i64 %xor.i256.6.4, %xor1.i257.6.4 *)
(* You may need to modify here *)
or uint64 v_or_i258_6_4 v_xor_i256_6_4 v_xor1_i257_6_4;
(*   %xor2.i259.6.4 = xor i64 %or.i258.6.4, %add82.6.4 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_6_4 v_or_i258_6_4 v_add82_6_4;
(*   %shr.i260.6.4 = lshr i64 %xor2.i259.6.4, 63 *)
(* You may need to modify here *)
split v_shr_i260_6_4 tmp_to_be_used v_xor2_i259_6_4 63;
(* generated by python *)
assert true && limbs 64 [v_add82_6_4, v_shr_i260_6_4] = limbs 64 [v_xor68_i278_6_4, 0@64] + limbs 64 [v_add82_6_3, 0@64];
assume limbs 64 [v_add82_6_4, v_shr_i260_6_4] = limbs 64 [v_xor68_i278_6_4, 0] + limbs 64 [v_add82_6_3, 0] && true;
(*   %add89.6.4 = add i64 %shr.i260.6.4, %xor2569.i290.6.4 *)
adds discard_906 v_add89_6_4 v_shr_i260_6_4 v_xor2569_i290_6_4;
(* Heuristics applied. *)
assert true && eq discard_906 0@1;
assume eq discard_906 0 && true;
(*   %add90.6.4 = add i64 %add89.6.4, %add90.6.3 *)
adds discard_907 v_add90_6_4 v_add89_6_4 v_add90_6_3;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_907 0@1; *)
(* assume eq discard_907 0 && true; *)
(*   %274 = xor i64 %add89.6.4, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v274 v_add89_6_4 (0x8000000000000000)@uint64;
(*   %xor2.i253.6.4 = and i64 %274, %add23.i289.6.4 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_6_4 v274 v_add23_i289_6_4;
(*   %xor.i244.6.4 = xor i64 %add90.6.4, %add89.6.4 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_6_4 v_add90_6_4 v_add89_6_4;
(*   %xor1.i245.6.4 = xor i64 %add89.6.4, %add90.6.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_6_4 v_add89_6_4 v_add90_6_3;
(*   %or.i246.6.4 = or i64 %xor.i244.6.4, %xor1.i245.6.4 *)
(* You may need to modify here *)
or uint64 v_or_i246_6_4 v_xor_i244_6_4 v_xor1_i245_6_4;
(*   %xor2.i247.6.4 = xor i64 %or.i246.6.4, %add90.6.4 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_6_4 v_or_i246_6_4 v_add90_6_4;
(*   %shr.i254326.6.4 = or i64 %xor2.i247.6.4, %xor2.i253.6.4 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_6_4 v_xor2_i247_6_4 v_xor2_i253_6_4;
(*   %or94325.6.4 = lshr i64 %shr.i254326.6.4, 63 *)
(* You may need to modify here *)
split v_or94325_6_4 tmp_to_be_used v_shr_i254326_6_4 63;
(* generated by python *)
assert true && limbs 64 [v_add90_6_4, v_or94325_6_4] = limbs 64 [v_shr_i260_6_4, 0@64] + limbs 64 [v_xor2569_i290_6_4, 0@64] + limbs 64 [v_add90_6_3, 0@64];
assume limbs 64 [v_add90_6_4, v_or94325_6_4] = limbs 64 [v_shr_i260_6_4, 0] + limbs 64 [v_xor2569_i290_6_4, 0] + limbs 64 [v_add90_6_3, 0] && true;
(*   %add96.6.4 = add i64 %or94325.6.4, %add96.6.3 *)
adds discard_908 v_add96_6_4 v_or94325_6_4 v_add96_6_3;
(* Heuristics applied. *)
assert true && eq discard_908 0@1;
assume eq discard_908 0 && true;
(*   %arrayidx104.6 = getelementptr inbounds i64, i64* %ma, i64 18 *)
(*   %275 = load i64, i64* %arrayidx104.6, align 8, !tbaa !3 *)
mov v275 ma_144;
(*   %add105.6 = add i64 %275, %add82.6.4 *)
adds discard_909 v_add105_6 v275 v_add82_6_4;
(*   %xor.i238.6 = xor i64 %add105.6, %add82.6.4 *)
(* You may need to modify here *)
xor uint64 v_xor_i238_6 v_add105_6 v_add82_6_4;
(*   %xor1.i239.6 = xor i64 %275, %add82.6.4 *)
(* You may need to modify here *)
xor uint64 v_xor1_i239_6 v275 v_add82_6_4;
(*   %or.i240.6 = or i64 %xor.i238.6, %xor1.i239.6 *)
(* You may need to modify here *)
or uint64 v_or_i240_6 v_xor_i238_6 v_xor1_i239_6;
(*   %xor2.i241.6 = xor i64 %or.i240.6, %add105.6 *)
(* You may need to modify here *)
xor uint64 v_xor2_i241_6 v_or_i240_6 v_add105_6;
(*   %shr.i242.6 = lshr i64 %xor2.i241.6, 63 *)
(* You may need to modify here *)
split v_shr_i242_6 tmp_to_be_used v_xor2_i241_6 63;
(* generated by python *)
assert true && limbs 64 [v_add105_6, v_shr_i242_6] = limbs 64 [v275, 0@64] + limbs 64 [v_add82_6_4, 0@64];
assume limbs 64 [v_add105_6, v_shr_i242_6] = limbs 64 [v275, 0] + limbs 64 [v_add82_6_4, 0] && true;
(*   %add111.6 = add i64 %shr.i242.6, %add90.6.4 *)
adds discard_910 v_add111_6 v_shr_i242_6 v_add90_6_4;
(* Heuristics applied. *)
(* == modified == *)
(* assert true && eq discard_910 0@1; *)
(* assume eq discard_910 0 && true; *)
(*   store i64 %add105.6, i64* %arrayidx50.6, align 8, !tbaa !3 *)
mov mc_48 v_add105_6;
(*   %276 = xor i64 %add111.6, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v276 v_add111_6 (0x8000000000000000)@uint64;
(*   %xor2.i.6 = and i64 %276, %add90.6.4 *)
(* You may need to modify here *)
and uint64 v_xor2_i_6 v276 v_add90_6_4;
(*   %shr.i237.6 = lshr i64 %xor2.i.6, 63 *)
(* You may need to modify here *)
split v_shr_i237_6 tmp_to_be_used v_xor2_i_6 63;
(* generated by python *)
assert true && limbs 64 [v_add111_6, v_shr_i237_6] = limbs 64 [v_shr_i242_6, 0@64] + limbs 64 [v_add90_6_4, 0@64];
assume limbs 64 [v_add111_6, v_shr_i237_6] = limbs 64 [v_shr_i242_6, 0] + limbs 64 [v_add90_6_4, 0] && true;
(*   %add118.6 = add i64 %shr.i237.6, %add96.6.4 *)
adds discard_911 v_add118_6 v_shr_i237_6 v_add96_6_4;
(* Heuristics applied. *)
assert true && eq discard_911 0@1;
assume eq discard_911 0 && true;
(*   %arrayidx74.7 = getelementptr inbounds i64, i64* %mc, i64 8 *)
(*   %277 = load i64, i64* %arrayidx74.7, align 8, !tbaa !3 *)
mov v277 mc_64;
(*   %278 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 11), align 8, !tbaa !3 *)
mov v278 p751p1_88;
(*   %and.i262.7 = and i64 %277, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_7 v277 (0xFFFFFFFF)@uint64;
(*   %shr.i263.7 = lshr i64 %277, 32 *)
(* You may need to modify here *)
split v_shr_i263_7 tmp_to_be_used v277 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_7;
assume eq tmp_to_be_used v_and_i262_7 && true;
(*   %and1.i264.7 = and i64 %278, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_7 v278 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.7 = lshr i64 %278, 32 *)
(* You may need to modify here *)
split v_shr2_i265_7 tmp_to_be_used v278 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_7;
assume eq tmp_to_be_used v_and1_i264_7 && true;
(*   %mul.i266.7 = mul nuw i64 %and1.i264.7, %and.i262.7 *)
mul v_mul_i266_7 v_and1_i264_7 v_and_i262_7;
(*   %mul3.i267.7 = mul nuw i64 %shr2.i265.7, %and.i262.7 *)
mul v_mul3_i267_7 v_shr2_i265_7 v_and_i262_7;
(*   %mul4.i268.7 = mul nuw i64 %and1.i264.7, %shr.i263.7 *)
mul v_mul4_i268_7 v_and1_i264_7 v_shr_i263_7;
(*   %mul5.i269.7 = mul nuw i64 %shr2.i265.7, %shr.i263.7 *)
mul v_mul5_i269_7 v_shr2_i265_7 v_shr_i263_7;
(*   %and6.i270.7 = and i64 %mul.i266.7, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_7 v_mul_i266_7 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.7 = lshr i64 %mul.i266.7, 32 *)
(* You may need to modify here *)
split v_shr7_i271_7 tmp_to_be_used v_mul_i266_7 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_7;
assume eq tmp_to_be_used v_and6_i270_7 && true;
(*   %and8.i272.7 = and i64 %mul4.i268.7, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_7 v_mul4_i268_7 (0xFFFFFFFF)@uint64;
(*   %and9.i273.7 = and i64 %mul3.i267.7, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_7 v_mul3_i267_7 (0xFFFFFFFF)@uint64;
(*   %add.i274.7 = add nuw nsw i64 %shr7.i271.7, %and8.i272.7 *)
adds discard_912 v_add_i274_7 v_shr7_i271_7 v_and8_i272_7;
(* Heuristics applied. *)
assert true && eq discard_912 0@1;
assume eq discard_912 0 && true;
(*   %add10.i275.7 = add nuw nsw i64 %add.i274.7, %and9.i273.7 *)
adds discard_913 v_add10_i275_7 v_add_i274_7 v_and9_i273_7;
(* Heuristics applied. *)
assert true && eq discard_913 0@1;
assume eq discard_913 0 && true;
(*   %shr11.i276.7 = lshr i64 %add10.i275.7, 32 *)
(* You may need to modify here *)
split v_shr11_i276_7 tmp_to_be_used v_add10_i275_7 32;
(*   %shl.i277.7 = shl i64 %add10.i275.7, 32 *)
shls discard_914 v_shl_i277_7 v_add10_i275_7 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_7 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_7 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.7 = or i64 %shl.i277.7, %and6.i270.7 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_7 v_shl_i277_7 v_and6_i270_7;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_7 v_shl_i277_7 + v_and6_i270_7;
assume eq v_xor68_i278_7 v_shl_i277_7 + v_and6_i270_7 && true;
(*   %shr13.i279.7 = lshr i64 %mul4.i268.7, 32 *)
(* You may need to modify here *)
split v_shr13_i279_7 tmp_to_be_used v_mul4_i268_7 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_7;
assume eq tmp_to_be_used v_and8_i272_7 && true;
(*   %shr14.i280.7 = lshr i64 %mul3.i267.7, 32 *)
(* You may need to modify here *)
split v_shr14_i280_7 tmp_to_be_used v_mul3_i267_7 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_7;
assume eq tmp_to_be_used v_and9_i273_7 && true;
(*   %and15.i281.7 = and i64 %mul5.i269.7, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_7 v_mul5_i269_7 (0xFFFFFFFF)@uint64;
(*   %add16.i282.7 = add nuw nsw i64 %shr13.i279.7, %shr14.i280.7 *)
adds discard_915 v_add16_i282_7 v_shr13_i279_7 v_shr14_i280_7;
(* Heuristics applied. *)
assert true && eq discard_915 0@1;
assume eq discard_915 0 && true;
(*   %add17.i283.7 = add nuw nsw i64 %add16.i282.7, %and15.i281.7 *)
adds discard_916 v_add17_i283_7 v_add16_i282_7 v_and15_i281_7;
(* Heuristics applied. *)
assert true && eq discard_916 0@1;
assume eq discard_916 0 && true;
(*   %add18.i284.7 = add nuw nsw i64 %add17.i283.7, %shr11.i276.7 *)
adds discard_917 v_add18_i284_7 v_add17_i283_7 v_shr11_i276_7;
(* Heuristics applied. *)
assert true && eq discard_917 0@1;
assume eq discard_917 0 && true;
(*   %and19.i285.7 = and i64 %add18.i284.7, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_7 v_add18_i284_7 (0xFFFFFFFF)@uint64;
(*   %and21.i287.7 = and i64 %add18.i284.7, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_7 v_add18_i284_7 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_7 v_and21_i287_7 + v_and19_i285_7;
assume eq v_add18_i284_7 v_and21_i287_7 + v_and19_i285_7 && true;
(*   %and22.i288.7 = and i64 %mul5.i269.7, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_7 v_mul5_i269_7 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_7 v_and22_i288_7 + v_and15_i281_7;
assume eq v_mul5_i269_7 v_and22_i288_7 + v_and15_i281_7 && true;
(*   %add23.i289.7 = add i64 %and21.i287.7, %and22.i288.7 *)
adds discard_918 v_add23_i289_7 v_and21_i287_7 v_and22_i288_7;
(* Heuristics applied. *)
assert true && eq discard_918 0@1;
assume eq discard_918 0 && true;
(*   %xor2569.i290.7 = or i64 %add23.i289.7, %and19.i285.7 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_7 v_add23_i289_7 v_and19_i285_7;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_7 v_add23_i289_7 + v_and19_i285_7;
assume eq v_xor2569_i290_7 v_add23_i289_7 + v_and19_i285_7 && true;
(*   %add82.7 = add i64 %xor68.i278.7, %add111.6 *)
adds discard_919 v_add82_7 v_xor68_i278_7 v_add111_6;
(*   %xor.i256.7 = xor i64 %add82.7, %shl.i277.7 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_7 v_add82_7 v_shl_i277_7;
(*   %xor1.i257.7 = xor i64 %shl.i277.7, %add111.6 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_7 v_shl_i277_7 v_add111_6;
(*   %or.i258.7 = or i64 %xor.i256.7, %xor1.i257.7 *)
(* You may need to modify here *)
or uint64 v_or_i258_7 v_xor_i256_7 v_xor1_i257_7;
(*   %xor2.i259.7 = xor i64 %or.i258.7, %add82.7 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_7 v_or_i258_7 v_add82_7;
(*   %shr.i260.7 = lshr i64 %xor2.i259.7, 63 *)
(* You may need to modify here *)
split v_shr_i260_7 tmp_to_be_used v_xor2_i259_7 63;
(* generated by python *)
assert true && limbs 64 [v_add82_7, v_shr_i260_7] = limbs 64 [v_xor68_i278_7, 0@64] + limbs 64 [v_add111_6, 0@64];
assume limbs 64 [v_add82_7, v_shr_i260_7] = limbs 64 [v_xor68_i278_7, 0] + limbs 64 [v_add111_6, 0] && true;
(*   %add89.7 = add i64 %shr.i260.7, %xor2569.i290.7 *)
adds discard_920 v_add89_7 v_shr_i260_7 v_xor2569_i290_7;
(* Heuristics applied. *)
assert true && eq discard_920 0@1;
assume eq discard_920 0 && true;
(*   %add90.7 = add i64 %add89.7, %add118.6 *)
adds discard_921 v_add90_7 v_add89_7 v_add118_6;
(* Heuristics applied. *)
assert true && eq discard_921 0@1;
assume eq discard_921 0 && true;
(*   %279 = xor i64 %add89.7, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v279 v_add89_7 (0x8000000000000000)@uint64;
(*   %xor2.i253.7 = and i64 %279, %add23.i289.7 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_7 v279 v_add23_i289_7;
(*   %xor.i244.7 = xor i64 %add90.7, %add89.7 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_7 v_add90_7 v_add89_7;
(*   %xor1.i245.7 = xor i64 %add89.7, %add118.6 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_7 v_add89_7 v_add118_6;
(*   %or.i246.7 = or i64 %xor.i244.7, %xor1.i245.7 *)
(* You may need to modify here *)
or uint64 v_or_i246_7 v_xor_i244_7 v_xor1_i245_7;
(*   %xor2.i247.7 = xor i64 %or.i246.7, %add90.7 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_7 v_or_i246_7 v_add90_7;
(*   %shr.i254326.7 = or i64 %xor2.i247.7, %xor2.i253.7 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_7 v_xor2_i247_7 v_xor2_i253_7;
(*   %or94325.7 = lshr i64 %shr.i254326.7, 63 *)
(* You may need to modify here *)
split v_or94325_7 tmp_to_be_used v_shr_i254326_7 63;
(* generated by python *)
assert true && limbs 64 [v_add90_7, v_or94325_7] = limbs 64 [v_shr_i260_7, 0@64] + limbs 64 [v_xor2569_i290_7, 0@64] + limbs 64 [v_add118_6, 0@64];
assume limbs 64 [v_add90_7, v_or94325_7] = limbs 64 [v_shr_i260_7, 0] + limbs 64 [v_xor2569_i290_7, 0] + limbs 64 [v_add118_6, 0] && true;
(*   %arrayidx74.7.1 = getelementptr inbounds i64, i64* %mc, i64 9 *)
(*   %280 = load i64, i64* %arrayidx74.7.1, align 8, !tbaa !3 *)
mov v280 mc_72;
(*   %281 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 10), align 16, !tbaa !3 *)
mov v281 p751p1_80;
(*   %and.i262.7.1 = and i64 %280, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_7_1 v280 (0xFFFFFFFF)@uint64;
(*   %shr.i263.7.1 = lshr i64 %280, 32 *)
(* You may need to modify here *)
split v_shr_i263_7_1 tmp_to_be_used v280 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_7_1;
assume eq tmp_to_be_used v_and_i262_7_1 && true;
(*   %and1.i264.7.1 = and i64 %281, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_7_1 v281 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.7.1 = lshr i64 %281, 32 *)
(* You may need to modify here *)
split v_shr2_i265_7_1 tmp_to_be_used v281 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_7_1;
assume eq tmp_to_be_used v_and1_i264_7_1 && true;
(*   %mul.i266.7.1 = mul nuw i64 %and1.i264.7.1, %and.i262.7.1 *)
mul v_mul_i266_7_1 v_and1_i264_7_1 v_and_i262_7_1;
(*   %mul3.i267.7.1 = mul nuw i64 %shr2.i265.7.1, %and.i262.7.1 *)
mul v_mul3_i267_7_1 v_shr2_i265_7_1 v_and_i262_7_1;
(*   %mul4.i268.7.1 = mul nuw i64 %and1.i264.7.1, %shr.i263.7.1 *)
mul v_mul4_i268_7_1 v_and1_i264_7_1 v_shr_i263_7_1;
(*   %mul5.i269.7.1 = mul nuw i64 %shr2.i265.7.1, %shr.i263.7.1 *)
mul v_mul5_i269_7_1 v_shr2_i265_7_1 v_shr_i263_7_1;
(*   %and6.i270.7.1 = and i64 %mul.i266.7.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_7_1 v_mul_i266_7_1 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.7.1 = lshr i64 %mul.i266.7.1, 32 *)
(* You may need to modify here *)
split v_shr7_i271_7_1 tmp_to_be_used v_mul_i266_7_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_7_1;
assume eq tmp_to_be_used v_and6_i270_7_1 && true;
(*   %and8.i272.7.1 = and i64 %mul4.i268.7.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_7_1 v_mul4_i268_7_1 (0xFFFFFFFF)@uint64;
(*   %and9.i273.7.1 = and i64 %mul3.i267.7.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_7_1 v_mul3_i267_7_1 (0xFFFFFFFF)@uint64;
(*   %add.i274.7.1 = add nuw nsw i64 %shr7.i271.7.1, %and8.i272.7.1 *)
adds discard_922 v_add_i274_7_1 v_shr7_i271_7_1 v_and8_i272_7_1;
(* Heuristics applied. *)
assert true && eq discard_922 0@1;
assume eq discard_922 0 && true;
(*   %add10.i275.7.1 = add nuw nsw i64 %add.i274.7.1, %and9.i273.7.1 *)
adds discard_923 v_add10_i275_7_1 v_add_i274_7_1 v_and9_i273_7_1;
(* Heuristics applied. *)
assert true && eq discard_923 0@1;
assume eq discard_923 0 && true;
(*   %shr11.i276.7.1 = lshr i64 %add10.i275.7.1, 32 *)
(* You may need to modify here *)
split v_shr11_i276_7_1 tmp_to_be_used v_add10_i275_7_1 32;
(*   %shl.i277.7.1 = shl i64 %add10.i275.7.1, 32 *)
shls discard_924 v_shl_i277_7_1 v_add10_i275_7_1 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_7_1 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_7_1 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.7.1 = or i64 %shl.i277.7.1, %and6.i270.7.1 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_7_1 v_shl_i277_7_1 v_and6_i270_7_1;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_7_1 v_shl_i277_7_1 + v_and6_i270_7_1;
assume eq v_xor68_i278_7_1 v_shl_i277_7_1 + v_and6_i270_7_1 && true;
(*   %shr13.i279.7.1 = lshr i64 %mul4.i268.7.1, 32 *)
(* You may need to modify here *)
split v_shr13_i279_7_1 tmp_to_be_used v_mul4_i268_7_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_7_1;
assume eq tmp_to_be_used v_and8_i272_7_1 && true;
(*   %shr14.i280.7.1 = lshr i64 %mul3.i267.7.1, 32 *)
(* You may need to modify here *)
split v_shr14_i280_7_1 tmp_to_be_used v_mul3_i267_7_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_7_1;
assume eq tmp_to_be_used v_and9_i273_7_1 && true;
(*   %and15.i281.7.1 = and i64 %mul5.i269.7.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_7_1 v_mul5_i269_7_1 (0xFFFFFFFF)@uint64;
(*   %add16.i282.7.1 = add nuw nsw i64 %shr13.i279.7.1, %shr14.i280.7.1 *)
adds discard_925 v_add16_i282_7_1 v_shr13_i279_7_1 v_shr14_i280_7_1;
(* Heuristics applied. *)
assert true && eq discard_925 0@1;
assume eq discard_925 0 && true;
(*   %add17.i283.7.1 = add nuw nsw i64 %add16.i282.7.1, %and15.i281.7.1 *)
adds discard_926 v_add17_i283_7_1 v_add16_i282_7_1 v_and15_i281_7_1;
(* Heuristics applied. *)
assert true && eq discard_926 0@1;
assume eq discard_926 0 && true;
(*   %add18.i284.7.1 = add nuw nsw i64 %add17.i283.7.1, %shr11.i276.7.1 *)
adds discard_927 v_add18_i284_7_1 v_add17_i283_7_1 v_shr11_i276_7_1;
(* Heuristics applied. *)
assert true && eq discard_927 0@1;
assume eq discard_927 0 && true;
(*   %and19.i285.7.1 = and i64 %add18.i284.7.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_7_1 v_add18_i284_7_1 (0xFFFFFFFF)@uint64;
(*   %and21.i287.7.1 = and i64 %add18.i284.7.1, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_7_1 v_add18_i284_7_1 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_7_1 v_and21_i287_7_1 + v_and19_i285_7_1;
assume eq v_add18_i284_7_1 v_and21_i287_7_1 + v_and19_i285_7_1 && true;
(*   %and22.i288.7.1 = and i64 %mul5.i269.7.1, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_7_1 v_mul5_i269_7_1 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_7_1 v_and22_i288_7_1 + v_and15_i281_7_1;
assume eq v_mul5_i269_7_1 v_and22_i288_7_1 + v_and15_i281_7_1 && true;
(*   %add23.i289.7.1 = add i64 %and21.i287.7.1, %and22.i288.7.1 *)
adds discard_928 v_add23_i289_7_1 v_and21_i287_7_1 v_and22_i288_7_1;
(* Heuristics applied. *)
assert true && eq discard_928 0@1;
assume eq discard_928 0 && true;
(*   %xor2569.i290.7.1 = or i64 %add23.i289.7.1, %and19.i285.7.1 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_7_1 v_add23_i289_7_1 v_and19_i285_7_1;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_7_1 v_add23_i289_7_1 + v_and19_i285_7_1;
assume eq v_xor2569_i290_7_1 v_add23_i289_7_1 + v_and19_i285_7_1 && true;
(*   %add82.7.1 = add i64 %xor68.i278.7.1, %add82.7 *)
adds discard_929 v_add82_7_1 v_xor68_i278_7_1 v_add82_7;
(*   %xor.i256.7.1 = xor i64 %add82.7.1, %shl.i277.7.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_7_1 v_add82_7_1 v_shl_i277_7_1;
(*   %xor1.i257.7.1 = xor i64 %shl.i277.7.1, %add82.7 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_7_1 v_shl_i277_7_1 v_add82_7;
(*   %or.i258.7.1 = or i64 %xor.i256.7.1, %xor1.i257.7.1 *)
(* You may need to modify here *)
or uint64 v_or_i258_7_1 v_xor_i256_7_1 v_xor1_i257_7_1;
(*   %xor2.i259.7.1 = xor i64 %or.i258.7.1, %add82.7.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_7_1 v_or_i258_7_1 v_add82_7_1;
(*   %shr.i260.7.1 = lshr i64 %xor2.i259.7.1, 63 *)
(* You may need to modify here *)
split v_shr_i260_7_1 tmp_to_be_used v_xor2_i259_7_1 63;
(* generated by python *)
assert true && limbs 64 [v_add82_7_1, v_shr_i260_7_1] = limbs 64 [v_xor68_i278_7_1, 0@64] + limbs 64 [v_add82_7, 0@64];
assume limbs 64 [v_add82_7_1, v_shr_i260_7_1] = limbs 64 [v_xor68_i278_7_1, 0] + limbs 64 [v_add82_7, 0] && true;
(*   %add89.7.1 = add i64 %shr.i260.7.1, %xor2569.i290.7.1 *)
adds discard_930 v_add89_7_1 v_shr_i260_7_1 v_xor2569_i290_7_1;
(* Heuristics applied. *)
assert true && eq discard_930 0@1;
assume eq discard_930 0 && true;
(*   %add90.7.1 = add i64 %add89.7.1, %add90.7 *)
adds discard_931 v_add90_7_1 v_add89_7_1 v_add90_7;
(* Heuristics applied. *)
assert true && eq discard_931 0@1;
assume eq discard_931 0 && true;
(*   %282 = xor i64 %add89.7.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v282 v_add89_7_1 (0x8000000000000000)@uint64;
(*   %xor2.i253.7.1 = and i64 %282, %add23.i289.7.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_7_1 v282 v_add23_i289_7_1;
(*   %xor.i244.7.1 = xor i64 %add90.7.1, %add89.7.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_7_1 v_add90_7_1 v_add89_7_1;
(*   %xor1.i245.7.1 = xor i64 %add89.7.1, %add90.7 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_7_1 v_add89_7_1 v_add90_7;
(*   %or.i246.7.1 = or i64 %xor.i244.7.1, %xor1.i245.7.1 *)
(* You may need to modify here *)
or uint64 v_or_i246_7_1 v_xor_i244_7_1 v_xor1_i245_7_1;
(*   %xor2.i247.7.1 = xor i64 %or.i246.7.1, %add90.7.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_7_1 v_or_i246_7_1 v_add90_7_1;
(*   %shr.i254326.7.1 = or i64 %xor2.i247.7.1, %xor2.i253.7.1 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_7_1 v_xor2_i247_7_1 v_xor2_i253_7_1;
(*   %or94325.7.1 = lshr i64 %shr.i254326.7.1, 63 *)
(* You may need to modify here *)
split v_or94325_7_1 tmp_to_be_used v_shr_i254326_7_1 63;
(* generated by python *)
assert true && limbs 64 [v_add90_7_1, v_or94325_7_1] = limbs 64 [v_shr_i260_7_1, 0@64] + limbs 64 [v_xor2569_i290_7_1, 0@64] + limbs 64 [v_add90_7, 0@64];
assume limbs 64 [v_add90_7_1, v_or94325_7_1] = limbs 64 [v_shr_i260_7_1, 0] + limbs 64 [v_xor2569_i290_7_1, 0] + limbs 64 [v_add90_7, 0] && true;
(*   %add96.7.1 = add nuw nsw i64 %or94325.7.1, %or94325.7 *)
adds discard_932 v_add96_7_1 v_or94325_7_1 v_or94325_7;
(* Heuristics applied. *)
assert true && eq discard_932 0@1;
assume eq discard_932 0 && true;
(*   %arrayidx74.7.2 = getelementptr inbounds i64, i64* %mc, i64 10 *)
(*   %283 = load i64, i64* %arrayidx74.7.2, align 8, !tbaa !3 *)
mov v283 mc_80;
(*   %284 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 9), align 8, !tbaa !3 *)
mov v284 p751p1_72;
(*   %and.i262.7.2 = and i64 %283, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_7_2 v283 (0xFFFFFFFF)@uint64;
(*   %shr.i263.7.2 = lshr i64 %283, 32 *)
(* You may need to modify here *)
split v_shr_i263_7_2 tmp_to_be_used v283 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_7_2;
assume eq tmp_to_be_used v_and_i262_7_2 && true;
(*   %and1.i264.7.2 = and i64 %284, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_7_2 v284 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.7.2 = lshr i64 %284, 32 *)
(* You may need to modify here *)
split v_shr2_i265_7_2 tmp_to_be_used v284 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_7_2;
assume eq tmp_to_be_used v_and1_i264_7_2 && true;
(*   %mul.i266.7.2 = mul nuw i64 %and1.i264.7.2, %and.i262.7.2 *)
mul v_mul_i266_7_2 v_and1_i264_7_2 v_and_i262_7_2;
(*   %mul3.i267.7.2 = mul nuw i64 %shr2.i265.7.2, %and.i262.7.2 *)
mul v_mul3_i267_7_2 v_shr2_i265_7_2 v_and_i262_7_2;
(*   %mul4.i268.7.2 = mul nuw i64 %and1.i264.7.2, %shr.i263.7.2 *)
mul v_mul4_i268_7_2 v_and1_i264_7_2 v_shr_i263_7_2;
(*   %mul5.i269.7.2 = mul nuw i64 %shr2.i265.7.2, %shr.i263.7.2 *)
mul v_mul5_i269_7_2 v_shr2_i265_7_2 v_shr_i263_7_2;
(*   %and6.i270.7.2 = and i64 %mul.i266.7.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_7_2 v_mul_i266_7_2 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.7.2 = lshr i64 %mul.i266.7.2, 32 *)
(* You may need to modify here *)
split v_shr7_i271_7_2 tmp_to_be_used v_mul_i266_7_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_7_2;
assume eq tmp_to_be_used v_and6_i270_7_2 && true;
(*   %and8.i272.7.2 = and i64 %mul4.i268.7.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_7_2 v_mul4_i268_7_2 (0xFFFFFFFF)@uint64;
(*   %and9.i273.7.2 = and i64 %mul3.i267.7.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_7_2 v_mul3_i267_7_2 (0xFFFFFFFF)@uint64;
(*   %add.i274.7.2 = add nuw nsw i64 %shr7.i271.7.2, %and8.i272.7.2 *)
adds discard_933 v_add_i274_7_2 v_shr7_i271_7_2 v_and8_i272_7_2;
(* Heuristics applied. *)
assert true && eq discard_933 0@1;
assume eq discard_933 0 && true;
(*   %add10.i275.7.2 = add nuw nsw i64 %add.i274.7.2, %and9.i273.7.2 *)
adds discard_934 v_add10_i275_7_2 v_add_i274_7_2 v_and9_i273_7_2;
(* Heuristics applied. *)
assert true && eq discard_934 0@1;
assume eq discard_934 0 && true;
(*   %shr11.i276.7.2 = lshr i64 %add10.i275.7.2, 32 *)
(* You may need to modify here *)
split v_shr11_i276_7_2 tmp_to_be_used v_add10_i275_7_2 32;
(*   %shl.i277.7.2 = shl i64 %add10.i275.7.2, 32 *)
shls discard_935 v_shl_i277_7_2 v_add10_i275_7_2 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_7_2 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_7_2 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.7.2 = or i64 %shl.i277.7.2, %and6.i270.7.2 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_7_2 v_shl_i277_7_2 v_and6_i270_7_2;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_7_2 v_shl_i277_7_2 + v_and6_i270_7_2;
assume eq v_xor68_i278_7_2 v_shl_i277_7_2 + v_and6_i270_7_2 && true;
(*   %shr13.i279.7.2 = lshr i64 %mul4.i268.7.2, 32 *)
(* You may need to modify here *)
split v_shr13_i279_7_2 tmp_to_be_used v_mul4_i268_7_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_7_2;
assume eq tmp_to_be_used v_and8_i272_7_2 && true;
(*   %shr14.i280.7.2 = lshr i64 %mul3.i267.7.2, 32 *)
(* You may need to modify here *)
split v_shr14_i280_7_2 tmp_to_be_used v_mul3_i267_7_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_7_2;
assume eq tmp_to_be_used v_and9_i273_7_2 && true;
(*   %and15.i281.7.2 = and i64 %mul5.i269.7.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_7_2 v_mul5_i269_7_2 (0xFFFFFFFF)@uint64;
(*   %add16.i282.7.2 = add nuw nsw i64 %shr13.i279.7.2, %shr14.i280.7.2 *)
adds discard_936 v_add16_i282_7_2 v_shr13_i279_7_2 v_shr14_i280_7_2;
(* Heuristics applied. *)
assert true && eq discard_936 0@1;
assume eq discard_936 0 && true;
(*   %add17.i283.7.2 = add nuw nsw i64 %add16.i282.7.2, %and15.i281.7.2 *)
adds discard_937 v_add17_i283_7_2 v_add16_i282_7_2 v_and15_i281_7_2;
(* Heuristics applied. *)
assert true && eq discard_937 0@1;
assume eq discard_937 0 && true;
(*   %add18.i284.7.2 = add nuw nsw i64 %add17.i283.7.2, %shr11.i276.7.2 *)
adds discard_938 v_add18_i284_7_2 v_add17_i283_7_2 v_shr11_i276_7_2;
(* Heuristics applied. *)
assert true && eq discard_938 0@1;
assume eq discard_938 0 && true;
(*   %and19.i285.7.2 = and i64 %add18.i284.7.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_7_2 v_add18_i284_7_2 (0xFFFFFFFF)@uint64;
(*   %and21.i287.7.2 = and i64 %add18.i284.7.2, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_7_2 v_add18_i284_7_2 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_7_2 v_and21_i287_7_2 + v_and19_i285_7_2;
assume eq v_add18_i284_7_2 v_and21_i287_7_2 + v_and19_i285_7_2 && true;
(*   %and22.i288.7.2 = and i64 %mul5.i269.7.2, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_7_2 v_mul5_i269_7_2 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_7_2 v_and22_i288_7_2 + v_and15_i281_7_2;
assume eq v_mul5_i269_7_2 v_and22_i288_7_2 + v_and15_i281_7_2 && true;
(*   %add23.i289.7.2 = add i64 %and21.i287.7.2, %and22.i288.7.2 *)
adds discard_939 v_add23_i289_7_2 v_and21_i287_7_2 v_and22_i288_7_2;
(* Heuristics applied. *)
assert true && eq discard_939 0@1;
assume eq discard_939 0 && true;
(*   %xor2569.i290.7.2 = or i64 %add23.i289.7.2, %and19.i285.7.2 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_7_2 v_add23_i289_7_2 v_and19_i285_7_2;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_7_2 v_add23_i289_7_2 + v_and19_i285_7_2;
assume eq v_xor2569_i290_7_2 v_add23_i289_7_2 + v_and19_i285_7_2 && true;
(*   %add82.7.2 = add i64 %xor68.i278.7.2, %add82.7.1 *)
adds discard_940 v_add82_7_2 v_xor68_i278_7_2 v_add82_7_1;
(*   %xor.i256.7.2 = xor i64 %add82.7.2, %shl.i277.7.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_7_2 v_add82_7_2 v_shl_i277_7_2;
(*   %xor1.i257.7.2 = xor i64 %shl.i277.7.2, %add82.7.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_7_2 v_shl_i277_7_2 v_add82_7_1;
(*   %or.i258.7.2 = or i64 %xor.i256.7.2, %xor1.i257.7.2 *)
(* You may need to modify here *)
or uint64 v_or_i258_7_2 v_xor_i256_7_2 v_xor1_i257_7_2;
(*   %xor2.i259.7.2 = xor i64 %or.i258.7.2, %add82.7.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_7_2 v_or_i258_7_2 v_add82_7_2;
(*   %shr.i260.7.2 = lshr i64 %xor2.i259.7.2, 63 *)
(* You may need to modify here *)
split v_shr_i260_7_2 tmp_to_be_used v_xor2_i259_7_2 63;
(* generated by python *)
assert true && limbs 64 [v_add82_7_2, v_shr_i260_7_2] = limbs 64 [v_xor68_i278_7_2, 0@64] + limbs 64 [v_add82_7_1, 0@64];
assume limbs 64 [v_add82_7_2, v_shr_i260_7_2] = limbs 64 [v_xor68_i278_7_2, 0] + limbs 64 [v_add82_7_1, 0] && true;
(*   %add89.7.2 = add i64 %shr.i260.7.2, %xor2569.i290.7.2 *)
adds discard_941 v_add89_7_2 v_shr_i260_7_2 v_xor2569_i290_7_2;
(* Heuristics applied. *)
assert true && eq discard_941 0@1;
assume eq discard_941 0 && true;
(*   %add90.7.2 = add i64 %add89.7.2, %add90.7.1 *)
adds discard_942 v_add90_7_2 v_add89_7_2 v_add90_7_1;
(* Heuristics applied. *)
assert true && eq discard_942 0@1;
assume eq discard_942 0 && true;
(*   %285 = xor i64 %add89.7.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v285 v_add89_7_2 (0x8000000000000000)@uint64;
(*   %xor2.i253.7.2 = and i64 %285, %add23.i289.7.2 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_7_2 v285 v_add23_i289_7_2;
(*   %xor.i244.7.2 = xor i64 %add90.7.2, %add89.7.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_7_2 v_add90_7_2 v_add89_7_2;
(*   %xor1.i245.7.2 = xor i64 %add89.7.2, %add90.7.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_7_2 v_add89_7_2 v_add90_7_1;
(*   %or.i246.7.2 = or i64 %xor.i244.7.2, %xor1.i245.7.2 *)
(* You may need to modify here *)
or uint64 v_or_i246_7_2 v_xor_i244_7_2 v_xor1_i245_7_2;
(*   %xor2.i247.7.2 = xor i64 %or.i246.7.2, %add90.7.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_7_2 v_or_i246_7_2 v_add90_7_2;
(*   %shr.i254326.7.2 = or i64 %xor2.i247.7.2, %xor2.i253.7.2 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_7_2 v_xor2_i247_7_2 v_xor2_i253_7_2;
(*   %or94325.7.2 = lshr i64 %shr.i254326.7.2, 63 *)
(* You may need to modify here *)
split v_or94325_7_2 tmp_to_be_used v_shr_i254326_7_2 63;
(* generated by python *)
assert true && limbs 64 [v_add90_7_2, v_or94325_7_2] = limbs 64 [v_shr_i260_7_2, 0@64] + limbs 64 [v_xor2569_i290_7_2, 0@64] + limbs 64 [v_add90_7_1, 0@64];
assume limbs 64 [v_add90_7_2, v_or94325_7_2] = limbs 64 [v_shr_i260_7_2, 0] + limbs 64 [v_xor2569_i290_7_2, 0] + limbs 64 [v_add90_7_1, 0] && true;
(*   %add96.7.2 = add nsw i64 %or94325.7.2, %add96.7.1 *)
adds discard_943 v_add96_7_2 v_or94325_7_2 v_add96_7_1;
(* Heuristics applied. *)
assert true && eq discard_943 0@1;
assume eq discard_943 0 && true;
(*   %arrayidx74.7.3 = getelementptr inbounds i64, i64* %mc, i64 11 *)
(*   %286 = load i64, i64* %arrayidx74.7.3, align 8, !tbaa !3 *)
mov v286 mc_88;
(*   %287 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 8), align 16, !tbaa !3 *)
mov v287 p751p1_64;
(*   %and.i262.7.3 = and i64 %286, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_7_3 v286 (0xFFFFFFFF)@uint64;
(*   %shr.i263.7.3 = lshr i64 %286, 32 *)
(* You may need to modify here *)
split v_shr_i263_7_3 tmp_to_be_used v286 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_7_3;
assume eq tmp_to_be_used v_and_i262_7_3 && true;
(*   %and1.i264.7.3 = and i64 %287, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_7_3 v287 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.7.3 = lshr i64 %287, 32 *)
(* You may need to modify here *)
split v_shr2_i265_7_3 tmp_to_be_used v287 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_7_3;
assume eq tmp_to_be_used v_and1_i264_7_3 && true;
(*   %mul.i266.7.3 = mul nuw i64 %and1.i264.7.3, %and.i262.7.3 *)
mul v_mul_i266_7_3 v_and1_i264_7_3 v_and_i262_7_3;
(*   %mul3.i267.7.3 = mul nuw i64 %shr2.i265.7.3, %and.i262.7.3 *)
mul v_mul3_i267_7_3 v_shr2_i265_7_3 v_and_i262_7_3;
(*   %mul4.i268.7.3 = mul nuw i64 %and1.i264.7.3, %shr.i263.7.3 *)
mul v_mul4_i268_7_3 v_and1_i264_7_3 v_shr_i263_7_3;
(*   %mul5.i269.7.3 = mul nuw i64 %shr2.i265.7.3, %shr.i263.7.3 *)
mul v_mul5_i269_7_3 v_shr2_i265_7_3 v_shr_i263_7_3;
(*   %and6.i270.7.3 = and i64 %mul.i266.7.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_7_3 v_mul_i266_7_3 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.7.3 = lshr i64 %mul.i266.7.3, 32 *)
(* You may need to modify here *)
split v_shr7_i271_7_3 tmp_to_be_used v_mul_i266_7_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_7_3;
assume eq tmp_to_be_used v_and6_i270_7_3 && true;
(*   %and8.i272.7.3 = and i64 %mul4.i268.7.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_7_3 v_mul4_i268_7_3 (0xFFFFFFFF)@uint64;
(*   %and9.i273.7.3 = and i64 %mul3.i267.7.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_7_3 v_mul3_i267_7_3 (0xFFFFFFFF)@uint64;
(*   %add.i274.7.3 = add nuw nsw i64 %shr7.i271.7.3, %and8.i272.7.3 *)
adds discard_944 v_add_i274_7_3 v_shr7_i271_7_3 v_and8_i272_7_3;
(* Heuristics applied. *)
assert true && eq discard_944 0@1;
assume eq discard_944 0 && true;
(*   %add10.i275.7.3 = add nuw nsw i64 %add.i274.7.3, %and9.i273.7.3 *)
adds discard_945 v_add10_i275_7_3 v_add_i274_7_3 v_and9_i273_7_3;
(* Heuristics applied. *)
assert true && eq discard_945 0@1;
assume eq discard_945 0 && true;
(*   %shr11.i276.7.3 = lshr i64 %add10.i275.7.3, 32 *)
(* You may need to modify here *)
split v_shr11_i276_7_3 tmp_to_be_used v_add10_i275_7_3 32;
(*   %shl.i277.7.3 = shl i64 %add10.i275.7.3, 32 *)
shls discard_946 v_shl_i277_7_3 v_add10_i275_7_3 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_7_3 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_7_3 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.7.3 = or i64 %shl.i277.7.3, %and6.i270.7.3 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_7_3 v_shl_i277_7_3 v_and6_i270_7_3;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_7_3 v_shl_i277_7_3 + v_and6_i270_7_3;
assume eq v_xor68_i278_7_3 v_shl_i277_7_3 + v_and6_i270_7_3 && true;
(*   %shr13.i279.7.3 = lshr i64 %mul4.i268.7.3, 32 *)
(* You may need to modify here *)
split v_shr13_i279_7_3 tmp_to_be_used v_mul4_i268_7_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_7_3;
assume eq tmp_to_be_used v_and8_i272_7_3 && true;
(*   %shr14.i280.7.3 = lshr i64 %mul3.i267.7.3, 32 *)
(* You may need to modify here *)
split v_shr14_i280_7_3 tmp_to_be_used v_mul3_i267_7_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_7_3;
assume eq tmp_to_be_used v_and9_i273_7_3 && true;
(*   %and15.i281.7.3 = and i64 %mul5.i269.7.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_7_3 v_mul5_i269_7_3 (0xFFFFFFFF)@uint64;
(*   %add16.i282.7.3 = add nuw nsw i64 %shr13.i279.7.3, %shr14.i280.7.3 *)
adds discard_947 v_add16_i282_7_3 v_shr13_i279_7_3 v_shr14_i280_7_3;
(* Heuristics applied. *)
assert true && eq discard_947 0@1;
assume eq discard_947 0 && true;
(*   %add17.i283.7.3 = add nuw nsw i64 %add16.i282.7.3, %and15.i281.7.3 *)
adds discard_948 v_add17_i283_7_3 v_add16_i282_7_3 v_and15_i281_7_3;
(* Heuristics applied. *)
assert true && eq discard_948 0@1;
assume eq discard_948 0 && true;
(*   %add18.i284.7.3 = add nuw nsw i64 %add17.i283.7.3, %shr11.i276.7.3 *)
adds discard_949 v_add18_i284_7_3 v_add17_i283_7_3 v_shr11_i276_7_3;
(* Heuristics applied. *)
assert true && eq discard_949 0@1;
assume eq discard_949 0 && true;
(*   %and19.i285.7.3 = and i64 %add18.i284.7.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_7_3 v_add18_i284_7_3 (0xFFFFFFFF)@uint64;
(*   %and21.i287.7.3 = and i64 %add18.i284.7.3, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_7_3 v_add18_i284_7_3 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_7_3 v_and21_i287_7_3 + v_and19_i285_7_3;
assume eq v_add18_i284_7_3 v_and21_i287_7_3 + v_and19_i285_7_3 && true;
(*   %and22.i288.7.3 = and i64 %mul5.i269.7.3, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_7_3 v_mul5_i269_7_3 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_7_3 v_and22_i288_7_3 + v_and15_i281_7_3;
assume eq v_mul5_i269_7_3 v_and22_i288_7_3 + v_and15_i281_7_3 && true;
(*   %add23.i289.7.3 = add i64 %and21.i287.7.3, %and22.i288.7.3 *)
adds discard_950 v_add23_i289_7_3 v_and21_i287_7_3 v_and22_i288_7_3;
(* Heuristics applied. *)
assert true && eq discard_950 0@1;
assume eq discard_950 0 && true;
(*   %xor2569.i290.7.3 = or i64 %add23.i289.7.3, %and19.i285.7.3 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_7_3 v_add23_i289_7_3 v_and19_i285_7_3;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_7_3 v_add23_i289_7_3 + v_and19_i285_7_3;
assume eq v_xor2569_i290_7_3 v_add23_i289_7_3 + v_and19_i285_7_3 && true;
(*   %add82.7.3 = add i64 %xor68.i278.7.3, %add82.7.2 *)
adds discard_951 v_add82_7_3 v_xor68_i278_7_3 v_add82_7_2;
(*   %xor.i256.7.3 = xor i64 %add82.7.3, %shl.i277.7.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_7_3 v_add82_7_3 v_shl_i277_7_3;
(*   %xor1.i257.7.3 = xor i64 %shl.i277.7.3, %add82.7.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_7_3 v_shl_i277_7_3 v_add82_7_2;
(*   %or.i258.7.3 = or i64 %xor.i256.7.3, %xor1.i257.7.3 *)
(* You may need to modify here *)
or uint64 v_or_i258_7_3 v_xor_i256_7_3 v_xor1_i257_7_3;
(*   %xor2.i259.7.3 = xor i64 %or.i258.7.3, %add82.7.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_7_3 v_or_i258_7_3 v_add82_7_3;
(*   %shr.i260.7.3 = lshr i64 %xor2.i259.7.3, 63 *)
(* You may need to modify here *)
split v_shr_i260_7_3 tmp_to_be_used v_xor2_i259_7_3 63;
(* generated by python *)
assert true && limbs 64 [v_add82_7_3, v_shr_i260_7_3] = limbs 64 [v_xor68_i278_7_3, 0@64] + limbs 64 [v_add82_7_2, 0@64];
assume limbs 64 [v_add82_7_3, v_shr_i260_7_3] = limbs 64 [v_xor68_i278_7_3, 0] + limbs 64 [v_add82_7_2, 0] && true;
(*   %add89.7.3 = add i64 %shr.i260.7.3, %xor2569.i290.7.3 *)
adds discard_952 v_add89_7_3 v_shr_i260_7_3 v_xor2569_i290_7_3;
(* Heuristics applied. *)
assert true && eq discard_952 0@1;
assume eq discard_952 0 && true;
(*   %add90.7.3 = add i64 %add89.7.3, %add90.7.2 *)
adds discard_953 v_add90_7_3 v_add89_7_3 v_add90_7_2;
(* Heuristics applied. *)
assert true && eq discard_953 0@1;
assume eq discard_953 0 && true;
(*   %288 = xor i64 %add89.7.3, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v288 v_add89_7_3 (0x8000000000000000)@uint64;
(*   %xor2.i253.7.3 = and i64 %288, %add23.i289.7.3 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_7_3 v288 v_add23_i289_7_3;
(*   %xor.i244.7.3 = xor i64 %add90.7.3, %add89.7.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_7_3 v_add90_7_3 v_add89_7_3;
(*   %xor1.i245.7.3 = xor i64 %add89.7.3, %add90.7.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_7_3 v_add89_7_3 v_add90_7_2;
(*   %or.i246.7.3 = or i64 %xor.i244.7.3, %xor1.i245.7.3 *)
(* You may need to modify here *)
or uint64 v_or_i246_7_3 v_xor_i244_7_3 v_xor1_i245_7_3;
(*   %xor2.i247.7.3 = xor i64 %or.i246.7.3, %add90.7.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_7_3 v_or_i246_7_3 v_add90_7_3;
(*   %shr.i254326.7.3 = or i64 %xor2.i247.7.3, %xor2.i253.7.3 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_7_3 v_xor2_i247_7_3 v_xor2_i253_7_3;
(*   %or94325.7.3 = lshr i64 %shr.i254326.7.3, 63 *)
(* You may need to modify here *)
split v_or94325_7_3 tmp_to_be_used v_shr_i254326_7_3 63;
(* generated by python *)
assert true && limbs 64 [v_add90_7_3, v_or94325_7_3] = limbs 64 [v_shr_i260_7_3, 0@64] + limbs 64 [v_xor2569_i290_7_3, 0@64] + limbs 64 [v_add90_7_2, 0@64];
assume limbs 64 [v_add90_7_3, v_or94325_7_3] = limbs 64 [v_shr_i260_7_3, 0] + limbs 64 [v_xor2569_i290_7_3, 0] + limbs 64 [v_add90_7_2, 0] && true;
(*   %add96.7.3 = add nsw i64 %or94325.7.3, %add96.7.2 *)
adds discard_954 v_add96_7_3 v_or94325_7_3 v_add96_7_2;
(* Heuristics applied. *)
assert true && eq discard_954 0@1;
assume eq discard_954 0 && true;
(*   %arrayidx104.7 = getelementptr inbounds i64, i64* %ma, i64 19 *)
(*   %289 = load i64, i64* %arrayidx104.7, align 8, !tbaa !3 *)
mov v289 ma_152;
(*   %add105.7 = add i64 %289, %add82.7.3 *)
adds discard_955 v_add105_7 v289 v_add82_7_3;
(*   %xor.i238.7 = xor i64 %add105.7, %add82.7.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i238_7 v_add105_7 v_add82_7_3;
(*   %xor1.i239.7 = xor i64 %289, %add82.7.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i239_7 v289 v_add82_7_3;
(*   %or.i240.7 = or i64 %xor.i238.7, %xor1.i239.7 *)
(* You may need to modify here *)
or uint64 v_or_i240_7 v_xor_i238_7 v_xor1_i239_7;
(*   %xor2.i241.7 = xor i64 %or.i240.7, %add105.7 *)
(* You may need to modify here *)
xor uint64 v_xor2_i241_7 v_or_i240_7 v_add105_7;
(*   %shr.i242.7 = lshr i64 %xor2.i241.7, 63 *)
(* You may need to modify here *)
split v_shr_i242_7 tmp_to_be_used v_xor2_i241_7 63;
(* generated by python *)
assert true && limbs 64 [v_add105_7, v_shr_i242_7] = limbs 64 [v289, 0@64] + limbs 64 [v_add82_7_3, 0@64];
assume limbs 64 [v_add105_7, v_shr_i242_7] = limbs 64 [v289, 0] + limbs 64 [v_add82_7_3, 0] && true;
(*   %add111.7 = add i64 %shr.i242.7, %add90.7.3 *)
adds discard_956 v_add111_7 v_shr_i242_7 v_add90_7_3;
(* Heuristics applied. *)
assert true && eq discard_956 0@1;
assume eq discard_956 0 && true;
(*   store i64 %add105.7, i64* %arrayidx50.7, align 8, !tbaa !3 *)
mov mc_56 v_add105_7;
(*   %290 = xor i64 %add111.7, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v290 v_add111_7 (0x8000000000000000)@uint64;
(*   %xor2.i.7 = and i64 %290, %add90.7.3 *)
(* You may need to modify here *)
and uint64 v_xor2_i_7 v290 v_add90_7_3;
(*   %shr.i237.7 = lshr i64 %xor2.i.7, 63 *)
(* You may need to modify here *)
split v_shr_i237_7 tmp_to_be_used v_xor2_i_7 63;
(* generated by python *)
assert true && limbs 64 [v_add111_7, v_shr_i237_7] = limbs 64 [v_shr_i242_7, 0@64] + limbs 64 [v_add90_7_3, 0@64];
assume limbs 64 [v_add111_7, v_shr_i237_7] = limbs 64 [v_shr_i242_7, 0] + limbs 64 [v_add90_7_3, 0] && true;
(*   %add118.7 = add i64 %shr.i237.7, %add96.7.3 *)
adds discard_957 v_add118_7 v_shr_i237_7 v_add96_7_3;
(* Heuristics applied. *)
assert true && eq discard_957 0@1;
assume eq discard_957 0 && true;
(*   %arrayidx74.8 = getelementptr inbounds i64, i64* %mc, i64 9 *)
(*   %291 = load i64, i64* %arrayidx74.8, align 8, !tbaa !3 *)
mov v291 mc_72;
(*   %292 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 11), align 8, !tbaa !3 *)
mov v292 p751p1_88;
(*   %and.i262.8 = and i64 %291, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_8 v291 (0xFFFFFFFF)@uint64;
(*   %shr.i263.8 = lshr i64 %291, 32 *)
(* You may need to modify here *)
split v_shr_i263_8 tmp_to_be_used v291 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_8;
assume eq tmp_to_be_used v_and_i262_8 && true;
(*   %and1.i264.8 = and i64 %292, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_8 v292 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.8 = lshr i64 %292, 32 *)
(* You may need to modify here *)
split v_shr2_i265_8 tmp_to_be_used v292 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_8;
assume eq tmp_to_be_used v_and1_i264_8 && true;
(*   %mul.i266.8 = mul nuw i64 %and1.i264.8, %and.i262.8 *)
mul v_mul_i266_8 v_and1_i264_8 v_and_i262_8;
(*   %mul3.i267.8 = mul nuw i64 %shr2.i265.8, %and.i262.8 *)
mul v_mul3_i267_8 v_shr2_i265_8 v_and_i262_8;
(*   %mul4.i268.8 = mul nuw i64 %and1.i264.8, %shr.i263.8 *)
mul v_mul4_i268_8 v_and1_i264_8 v_shr_i263_8;
(*   %mul5.i269.8 = mul nuw i64 %shr2.i265.8, %shr.i263.8 *)
mul v_mul5_i269_8 v_shr2_i265_8 v_shr_i263_8;
(*   %and6.i270.8 = and i64 %mul.i266.8, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_8 v_mul_i266_8 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.8 = lshr i64 %mul.i266.8, 32 *)
(* You may need to modify here *)
split v_shr7_i271_8 tmp_to_be_used v_mul_i266_8 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_8;
assume eq tmp_to_be_used v_and6_i270_8 && true;
(*   %and8.i272.8 = and i64 %mul4.i268.8, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_8 v_mul4_i268_8 (0xFFFFFFFF)@uint64;
(*   %and9.i273.8 = and i64 %mul3.i267.8, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_8 v_mul3_i267_8 (0xFFFFFFFF)@uint64;
(*   %add.i274.8 = add nuw nsw i64 %shr7.i271.8, %and8.i272.8 *)
adds discard_958 v_add_i274_8 v_shr7_i271_8 v_and8_i272_8;
(* Heuristics applied. *)
assert true && eq discard_958 0@1;
assume eq discard_958 0 && true;
(*   %add10.i275.8 = add nuw nsw i64 %add.i274.8, %and9.i273.8 *)
adds discard_959 v_add10_i275_8 v_add_i274_8 v_and9_i273_8;
(* Heuristics applied. *)
assert true && eq discard_959 0@1;
assume eq discard_959 0 && true;
(*   %shr11.i276.8 = lshr i64 %add10.i275.8, 32 *)
(* You may need to modify here *)
split v_shr11_i276_8 tmp_to_be_used v_add10_i275_8 32;
(*   %shl.i277.8 = shl i64 %add10.i275.8, 32 *)
shls discard_960 v_shl_i277_8 v_add10_i275_8 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_8 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_8 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.8 = or i64 %shl.i277.8, %and6.i270.8 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_8 v_shl_i277_8 v_and6_i270_8;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_8 v_shl_i277_8 + v_and6_i270_8;
assume eq v_xor68_i278_8 v_shl_i277_8 + v_and6_i270_8 && true;
(*   %shr13.i279.8 = lshr i64 %mul4.i268.8, 32 *)
(* You may need to modify here *)
split v_shr13_i279_8 tmp_to_be_used v_mul4_i268_8 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_8;
assume eq tmp_to_be_used v_and8_i272_8 && true;
(*   %shr14.i280.8 = lshr i64 %mul3.i267.8, 32 *)
(* You may need to modify here *)
split v_shr14_i280_8 tmp_to_be_used v_mul3_i267_8 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_8;
assume eq tmp_to_be_used v_and9_i273_8 && true;
(*   %and15.i281.8 = and i64 %mul5.i269.8, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_8 v_mul5_i269_8 (0xFFFFFFFF)@uint64;
(*   %add16.i282.8 = add nuw nsw i64 %shr13.i279.8, %shr14.i280.8 *)
adds discard_961 v_add16_i282_8 v_shr13_i279_8 v_shr14_i280_8;
(* Heuristics applied. *)
assert true && eq discard_961 0@1;
assume eq discard_961 0 && true;
(*   %add17.i283.8 = add nuw nsw i64 %add16.i282.8, %and15.i281.8 *)
adds discard_962 v_add17_i283_8 v_add16_i282_8 v_and15_i281_8;
(* Heuristics applied. *)
assert true && eq discard_962 0@1;
assume eq discard_962 0 && true;
(*   %add18.i284.8 = add nuw nsw i64 %add17.i283.8, %shr11.i276.8 *)
adds discard_963 v_add18_i284_8 v_add17_i283_8 v_shr11_i276_8;
(* Heuristics applied. *)
assert true && eq discard_963 0@1;
assume eq discard_963 0 && true;
(*   %and19.i285.8 = and i64 %add18.i284.8, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_8 v_add18_i284_8 (0xFFFFFFFF)@uint64;
(*   %and21.i287.8 = and i64 %add18.i284.8, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_8 v_add18_i284_8 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_8 v_and21_i287_8 + v_and19_i285_8;
assume eq v_add18_i284_8 v_and21_i287_8 + v_and19_i285_8 && true;
(*   %and22.i288.8 = and i64 %mul5.i269.8, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_8 v_mul5_i269_8 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_8 v_and22_i288_8 + v_and15_i281_8;
assume eq v_mul5_i269_8 v_and22_i288_8 + v_and15_i281_8 && true;
(*   %add23.i289.8 = add i64 %and21.i287.8, %and22.i288.8 *)
adds discard_964 v_add23_i289_8 v_and21_i287_8 v_and22_i288_8;
(* Heuristics applied. *)
assert true && eq discard_964 0@1;
assume eq discard_964 0 && true;
(*   %xor2569.i290.8 = or i64 %add23.i289.8, %and19.i285.8 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_8 v_add23_i289_8 v_and19_i285_8;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_8 v_add23_i289_8 + v_and19_i285_8;
assume eq v_xor2569_i290_8 v_add23_i289_8 + v_and19_i285_8 && true;
(*   %add82.8 = add i64 %xor68.i278.8, %add111.7 *)
adds discard_965 v_add82_8 v_xor68_i278_8 v_add111_7;
(*   %xor.i256.8 = xor i64 %add82.8, %shl.i277.8 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_8 v_add82_8 v_shl_i277_8;
(*   %xor1.i257.8 = xor i64 %shl.i277.8, %add111.7 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_8 v_shl_i277_8 v_add111_7;
(*   %or.i258.8 = or i64 %xor.i256.8, %xor1.i257.8 *)
(* You may need to modify here *)
or uint64 v_or_i258_8 v_xor_i256_8 v_xor1_i257_8;
(*   %xor2.i259.8 = xor i64 %or.i258.8, %add82.8 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_8 v_or_i258_8 v_add82_8;
(*   %shr.i260.8 = lshr i64 %xor2.i259.8, 63 *)
(* You may need to modify here *)
split v_shr_i260_8 tmp_to_be_used v_xor2_i259_8 63;
(* generated by python *)
assert true && limbs 64 [v_add82_8, v_shr_i260_8] = limbs 64 [v_xor68_i278_8, 0@64] + limbs 64 [v_add111_7, 0@64];
assume limbs 64 [v_add82_8, v_shr_i260_8] = limbs 64 [v_xor68_i278_8, 0] + limbs 64 [v_add111_7, 0] && true;
(*   %add89.8 = add i64 %shr.i260.8, %xor2569.i290.8 *)
adds discard_966 v_add89_8 v_shr_i260_8 v_xor2569_i290_8;
(* Heuristics applied. *)
assert true && eq discard_966 0@1;
assume eq discard_966 0 && true;
(*   %add90.8 = add i64 %add89.8, %add118.7 *)
adds discard_967 v_add90_8 v_add89_8 v_add118_7;
(* Heuristics applied. *)
assert true && eq discard_967 0@1;
assume eq discard_967 0 && true;
(*   %293 = xor i64 %add89.8, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v293 v_add89_8 (0x8000000000000000)@uint64;
(*   %xor2.i253.8 = and i64 %293, %add23.i289.8 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_8 v293 v_add23_i289_8;
(*   %xor.i244.8 = xor i64 %add90.8, %add89.8 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_8 v_add90_8 v_add89_8;
(*   %xor1.i245.8 = xor i64 %add89.8, %add118.7 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_8 v_add89_8 v_add118_7;
(*   %or.i246.8 = or i64 %xor.i244.8, %xor1.i245.8 *)
(* You may need to modify here *)
or uint64 v_or_i246_8 v_xor_i244_8 v_xor1_i245_8;
(*   %xor2.i247.8 = xor i64 %or.i246.8, %add90.8 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_8 v_or_i246_8 v_add90_8;
(*   %shr.i254326.8 = or i64 %xor2.i247.8, %xor2.i253.8 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_8 v_xor2_i247_8 v_xor2_i253_8;
(*   %or94325.8 = lshr i64 %shr.i254326.8, 63 *)
(* You may need to modify here *)
split v_or94325_8 tmp_to_be_used v_shr_i254326_8 63;
(* generated by python *)
assert true && limbs 64 [v_add90_8, v_or94325_8] = limbs 64 [v_shr_i260_8, 0@64] + limbs 64 [v_xor2569_i290_8, 0@64] + limbs 64 [v_add118_7, 0@64];
assume limbs 64 [v_add90_8, v_or94325_8] = limbs 64 [v_shr_i260_8, 0] + limbs 64 [v_xor2569_i290_8, 0] + limbs 64 [v_add118_7, 0] && true;
(*   %arrayidx74.8.1 = getelementptr inbounds i64, i64* %mc, i64 10 *)
(*   %294 = load i64, i64* %arrayidx74.8.1, align 8, !tbaa !3 *)
mov v294 mc_80;
(*   %295 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 10), align 16, !tbaa !3 *)
mov v295 p751p1_80;
(*   %and.i262.8.1 = and i64 %294, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_8_1 v294 (0xFFFFFFFF)@uint64;
(*   %shr.i263.8.1 = lshr i64 %294, 32 *)
(* You may need to modify here *)
split v_shr_i263_8_1 tmp_to_be_used v294 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_8_1;
assume eq tmp_to_be_used v_and_i262_8_1 && true;
(*   %and1.i264.8.1 = and i64 %295, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_8_1 v295 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.8.1 = lshr i64 %295, 32 *)
(* You may need to modify here *)
split v_shr2_i265_8_1 tmp_to_be_used v295 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_8_1;
assume eq tmp_to_be_used v_and1_i264_8_1 && true;
(*   %mul.i266.8.1 = mul nuw i64 %and1.i264.8.1, %and.i262.8.1 *)
mul v_mul_i266_8_1 v_and1_i264_8_1 v_and_i262_8_1;
(*   %mul3.i267.8.1 = mul nuw i64 %shr2.i265.8.1, %and.i262.8.1 *)
mul v_mul3_i267_8_1 v_shr2_i265_8_1 v_and_i262_8_1;
(*   %mul4.i268.8.1 = mul nuw i64 %and1.i264.8.1, %shr.i263.8.1 *)
mul v_mul4_i268_8_1 v_and1_i264_8_1 v_shr_i263_8_1;
(*   %mul5.i269.8.1 = mul nuw i64 %shr2.i265.8.1, %shr.i263.8.1 *)
mul v_mul5_i269_8_1 v_shr2_i265_8_1 v_shr_i263_8_1;
(*   %and6.i270.8.1 = and i64 %mul.i266.8.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_8_1 v_mul_i266_8_1 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.8.1 = lshr i64 %mul.i266.8.1, 32 *)
(* You may need to modify here *)
split v_shr7_i271_8_1 tmp_to_be_used v_mul_i266_8_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_8_1;
assume eq tmp_to_be_used v_and6_i270_8_1 && true;
(*   %and8.i272.8.1 = and i64 %mul4.i268.8.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_8_1 v_mul4_i268_8_1 (0xFFFFFFFF)@uint64;
(*   %and9.i273.8.1 = and i64 %mul3.i267.8.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_8_1 v_mul3_i267_8_1 (0xFFFFFFFF)@uint64;
(*   %add.i274.8.1 = add nuw nsw i64 %shr7.i271.8.1, %and8.i272.8.1 *)
adds discard_968 v_add_i274_8_1 v_shr7_i271_8_1 v_and8_i272_8_1;
(* Heuristics applied. *)
assert true && eq discard_968 0@1;
assume eq discard_968 0 && true;
(*   %add10.i275.8.1 = add nuw nsw i64 %add.i274.8.1, %and9.i273.8.1 *)
adds discard_969 v_add10_i275_8_1 v_add_i274_8_1 v_and9_i273_8_1;
(* Heuristics applied. *)
assert true && eq discard_969 0@1;
assume eq discard_969 0 && true;
(*   %shr11.i276.8.1 = lshr i64 %add10.i275.8.1, 32 *)
(* You may need to modify here *)
split v_shr11_i276_8_1 tmp_to_be_used v_add10_i275_8_1 32;
(*   %shl.i277.8.1 = shl i64 %add10.i275.8.1, 32 *)
shls discard_970 v_shl_i277_8_1 v_add10_i275_8_1 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_8_1 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_8_1 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.8.1 = or i64 %shl.i277.8.1, %and6.i270.8.1 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_8_1 v_shl_i277_8_1 v_and6_i270_8_1;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_8_1 v_shl_i277_8_1 + v_and6_i270_8_1;
assume eq v_xor68_i278_8_1 v_shl_i277_8_1 + v_and6_i270_8_1 && true;
(*   %shr13.i279.8.1 = lshr i64 %mul4.i268.8.1, 32 *)
(* You may need to modify here *)
split v_shr13_i279_8_1 tmp_to_be_used v_mul4_i268_8_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_8_1;
assume eq tmp_to_be_used v_and8_i272_8_1 && true;
(*   %shr14.i280.8.1 = lshr i64 %mul3.i267.8.1, 32 *)
(* You may need to modify here *)
split v_shr14_i280_8_1 tmp_to_be_used v_mul3_i267_8_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_8_1;
assume eq tmp_to_be_used v_and9_i273_8_1 && true;
(*   %and15.i281.8.1 = and i64 %mul5.i269.8.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_8_1 v_mul5_i269_8_1 (0xFFFFFFFF)@uint64;
(*   %add16.i282.8.1 = add nuw nsw i64 %shr13.i279.8.1, %shr14.i280.8.1 *)
adds discard_971 v_add16_i282_8_1 v_shr13_i279_8_1 v_shr14_i280_8_1;
(* Heuristics applied. *)
assert true && eq discard_971 0@1;
assume eq discard_971 0 && true;
(*   %add17.i283.8.1 = add nuw nsw i64 %add16.i282.8.1, %and15.i281.8.1 *)
adds discard_972 v_add17_i283_8_1 v_add16_i282_8_1 v_and15_i281_8_1;
(* Heuristics applied. *)
assert true && eq discard_972 0@1;
assume eq discard_972 0 && true;
(*   %add18.i284.8.1 = add nuw nsw i64 %add17.i283.8.1, %shr11.i276.8.1 *)
adds discard_973 v_add18_i284_8_1 v_add17_i283_8_1 v_shr11_i276_8_1;
(* Heuristics applied. *)
assert true && eq discard_973 0@1;
assume eq discard_973 0 && true;
(*   %and19.i285.8.1 = and i64 %add18.i284.8.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_8_1 v_add18_i284_8_1 (0xFFFFFFFF)@uint64;
(*   %and21.i287.8.1 = and i64 %add18.i284.8.1, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_8_1 v_add18_i284_8_1 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_8_1 v_and21_i287_8_1 + v_and19_i285_8_1;
assume eq v_add18_i284_8_1 v_and21_i287_8_1 + v_and19_i285_8_1 && true;
(*   %and22.i288.8.1 = and i64 %mul5.i269.8.1, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_8_1 v_mul5_i269_8_1 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_8_1 v_and22_i288_8_1 + v_and15_i281_8_1;
assume eq v_mul5_i269_8_1 v_and22_i288_8_1 + v_and15_i281_8_1 && true;
(*   %add23.i289.8.1 = add i64 %and21.i287.8.1, %and22.i288.8.1 *)
adds discard_974 v_add23_i289_8_1 v_and21_i287_8_1 v_and22_i288_8_1;
(* Heuristics applied. *)
assert true && eq discard_974 0@1;
assume eq discard_974 0 && true;
(*   %xor2569.i290.8.1 = or i64 %add23.i289.8.1, %and19.i285.8.1 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_8_1 v_add23_i289_8_1 v_and19_i285_8_1;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_8_1 v_add23_i289_8_1 + v_and19_i285_8_1;
assume eq v_xor2569_i290_8_1 v_add23_i289_8_1 + v_and19_i285_8_1 && true;
(*   %add82.8.1 = add i64 %xor68.i278.8.1, %add82.8 *)
adds discard_975 v_add82_8_1 v_xor68_i278_8_1 v_add82_8;
(*   %xor.i256.8.1 = xor i64 %add82.8.1, %shl.i277.8.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_8_1 v_add82_8_1 v_shl_i277_8_1;
(*   %xor1.i257.8.1 = xor i64 %shl.i277.8.1, %add82.8 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_8_1 v_shl_i277_8_1 v_add82_8;
(*   %or.i258.8.1 = or i64 %xor.i256.8.1, %xor1.i257.8.1 *)
(* You may need to modify here *)
or uint64 v_or_i258_8_1 v_xor_i256_8_1 v_xor1_i257_8_1;
(*   %xor2.i259.8.1 = xor i64 %or.i258.8.1, %add82.8.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_8_1 v_or_i258_8_1 v_add82_8_1;
(*   %shr.i260.8.1 = lshr i64 %xor2.i259.8.1, 63 *)
(* You may need to modify here *)
split v_shr_i260_8_1 tmp_to_be_used v_xor2_i259_8_1 63;
(* generated by python *)
assert true && limbs 64 [v_add82_8_1, v_shr_i260_8_1] = limbs 64 [v_xor68_i278_8_1, 0@64] + limbs 64 [v_add82_8, 0@64];
assume limbs 64 [v_add82_8_1, v_shr_i260_8_1] = limbs 64 [v_xor68_i278_8_1, 0] + limbs 64 [v_add82_8, 0] && true;
(*   %add89.8.1 = add i64 %shr.i260.8.1, %xor2569.i290.8.1 *)
adds discard_976 v_add89_8_1 v_shr_i260_8_1 v_xor2569_i290_8_1;
(* Heuristics applied. *)
assert true && eq discard_976 0@1;
assume eq discard_976 0 && true;
(*   %add90.8.1 = add i64 %add89.8.1, %add90.8 *)
adds discard_977 v_add90_8_1 v_add89_8_1 v_add90_8;
(* Heuristics applied. *)
assert true && eq discard_977 0@1;
assume eq discard_977 0 && true;
(*   %296 = xor i64 %add89.8.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v296 v_add89_8_1 (0x8000000000000000)@uint64;
(*   %xor2.i253.8.1 = and i64 %296, %add23.i289.8.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_8_1 v296 v_add23_i289_8_1;
(*   %xor.i244.8.1 = xor i64 %add90.8.1, %add89.8.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_8_1 v_add90_8_1 v_add89_8_1;
(*   %xor1.i245.8.1 = xor i64 %add89.8.1, %add90.8 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_8_1 v_add89_8_1 v_add90_8;
(*   %or.i246.8.1 = or i64 %xor.i244.8.1, %xor1.i245.8.1 *)
(* You may need to modify here *)
or uint64 v_or_i246_8_1 v_xor_i244_8_1 v_xor1_i245_8_1;
(*   %xor2.i247.8.1 = xor i64 %or.i246.8.1, %add90.8.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_8_1 v_or_i246_8_1 v_add90_8_1;
(*   %shr.i254326.8.1 = or i64 %xor2.i247.8.1, %xor2.i253.8.1 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_8_1 v_xor2_i247_8_1 v_xor2_i253_8_1;
(*   %or94325.8.1 = lshr i64 %shr.i254326.8.1, 63 *)
(* You may need to modify here *)
split v_or94325_8_1 tmp_to_be_used v_shr_i254326_8_1 63;
(* generated by python *)
assert true && limbs 64 [v_add90_8_1, v_or94325_8_1] = limbs 64 [v_shr_i260_8_1, 0@64] + limbs 64 [v_xor2569_i290_8_1, 0@64] + limbs 64 [v_add90_8, 0@64];
assume limbs 64 [v_add90_8_1, v_or94325_8_1] = limbs 64 [v_shr_i260_8_1, 0] + limbs 64 [v_xor2569_i290_8_1, 0] + limbs 64 [v_add90_8, 0] && true;
(*   %add96.8.1 = add nuw nsw i64 %or94325.8.1, %or94325.8 *)
adds discard_978 v_add96_8_1 v_or94325_8_1 v_or94325_8;
(* Heuristics applied. *)
assert true && eq discard_978 0@1;
assume eq discard_978 0 && true;
(*   %arrayidx74.8.2 = getelementptr inbounds i64, i64* %mc, i64 11 *)
(*   %297 = load i64, i64* %arrayidx74.8.2, align 8, !tbaa !3 *)
mov v297 mc_88;
(*   %298 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 9), align 8, !tbaa !3 *)
mov v298 p751p1_72;
(*   %and.i262.8.2 = and i64 %297, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_8_2 v297 (0xFFFFFFFF)@uint64;
(*   %shr.i263.8.2 = lshr i64 %297, 32 *)
(* You may need to modify here *)
split v_shr_i263_8_2 tmp_to_be_used v297 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_8_2;
assume eq tmp_to_be_used v_and_i262_8_2 && true;
(*   %and1.i264.8.2 = and i64 %298, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_8_2 v298 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.8.2 = lshr i64 %298, 32 *)
(* You may need to modify here *)
split v_shr2_i265_8_2 tmp_to_be_used v298 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_8_2;
assume eq tmp_to_be_used v_and1_i264_8_2 && true;
(*   %mul.i266.8.2 = mul nuw i64 %and1.i264.8.2, %and.i262.8.2 *)
mul v_mul_i266_8_2 v_and1_i264_8_2 v_and_i262_8_2;
(*   %mul3.i267.8.2 = mul nuw i64 %shr2.i265.8.2, %and.i262.8.2 *)
mul v_mul3_i267_8_2 v_shr2_i265_8_2 v_and_i262_8_2;
(*   %mul4.i268.8.2 = mul nuw i64 %and1.i264.8.2, %shr.i263.8.2 *)
mul v_mul4_i268_8_2 v_and1_i264_8_2 v_shr_i263_8_2;
(*   %mul5.i269.8.2 = mul nuw i64 %shr2.i265.8.2, %shr.i263.8.2 *)
mul v_mul5_i269_8_2 v_shr2_i265_8_2 v_shr_i263_8_2;
(*   %and6.i270.8.2 = and i64 %mul.i266.8.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_8_2 v_mul_i266_8_2 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.8.2 = lshr i64 %mul.i266.8.2, 32 *)
(* You may need to modify here *)
split v_shr7_i271_8_2 tmp_to_be_used v_mul_i266_8_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_8_2;
assume eq tmp_to_be_used v_and6_i270_8_2 && true;
(*   %and8.i272.8.2 = and i64 %mul4.i268.8.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_8_2 v_mul4_i268_8_2 (0xFFFFFFFF)@uint64;
(*   %and9.i273.8.2 = and i64 %mul3.i267.8.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_8_2 v_mul3_i267_8_2 (0xFFFFFFFF)@uint64;
(*   %add.i274.8.2 = add nuw nsw i64 %shr7.i271.8.2, %and8.i272.8.2 *)
adds discard_979 v_add_i274_8_2 v_shr7_i271_8_2 v_and8_i272_8_2;
(* Heuristics applied. *)
assert true && eq discard_979 0@1;
assume eq discard_979 0 && true;
(*   %add10.i275.8.2 = add nuw nsw i64 %add.i274.8.2, %and9.i273.8.2 *)
adds discard_980 v_add10_i275_8_2 v_add_i274_8_2 v_and9_i273_8_2;
(* Heuristics applied. *)
assert true && eq discard_980 0@1;
assume eq discard_980 0 && true;
(*   %shr11.i276.8.2 = lshr i64 %add10.i275.8.2, 32 *)
(* You may need to modify here *)
split v_shr11_i276_8_2 tmp_to_be_used v_add10_i275_8_2 32;
(*   %shl.i277.8.2 = shl i64 %add10.i275.8.2, 32 *)
shls discard_981 v_shl_i277_8_2 v_add10_i275_8_2 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_8_2 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_8_2 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.8.2 = or i64 %shl.i277.8.2, %and6.i270.8.2 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_8_2 v_shl_i277_8_2 v_and6_i270_8_2;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_8_2 v_shl_i277_8_2 + v_and6_i270_8_2;
assume eq v_xor68_i278_8_2 v_shl_i277_8_2 + v_and6_i270_8_2 && true;
(*   %shr13.i279.8.2 = lshr i64 %mul4.i268.8.2, 32 *)
(* You may need to modify here *)
split v_shr13_i279_8_2 tmp_to_be_used v_mul4_i268_8_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_8_2;
assume eq tmp_to_be_used v_and8_i272_8_2 && true;
(*   %shr14.i280.8.2 = lshr i64 %mul3.i267.8.2, 32 *)
(* You may need to modify here *)
split v_shr14_i280_8_2 tmp_to_be_used v_mul3_i267_8_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_8_2;
assume eq tmp_to_be_used v_and9_i273_8_2 && true;
(*   %and15.i281.8.2 = and i64 %mul5.i269.8.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_8_2 v_mul5_i269_8_2 (0xFFFFFFFF)@uint64;
(*   %add16.i282.8.2 = add nuw nsw i64 %shr13.i279.8.2, %shr14.i280.8.2 *)
adds discard_982 v_add16_i282_8_2 v_shr13_i279_8_2 v_shr14_i280_8_2;
(* Heuristics applied. *)
assert true && eq discard_982 0@1;
assume eq discard_982 0 && true;
(*   %add17.i283.8.2 = add nuw nsw i64 %add16.i282.8.2, %and15.i281.8.2 *)
adds discard_983 v_add17_i283_8_2 v_add16_i282_8_2 v_and15_i281_8_2;
(* Heuristics applied. *)
assert true && eq discard_983 0@1;
assume eq discard_983 0 && true;
(*   %add18.i284.8.2 = add nuw nsw i64 %add17.i283.8.2, %shr11.i276.8.2 *)
adds discard_984 v_add18_i284_8_2 v_add17_i283_8_2 v_shr11_i276_8_2;
(* Heuristics applied. *)
assert true && eq discard_984 0@1;
assume eq discard_984 0 && true;
(*   %and19.i285.8.2 = and i64 %add18.i284.8.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_8_2 v_add18_i284_8_2 (0xFFFFFFFF)@uint64;
(*   %and21.i287.8.2 = and i64 %add18.i284.8.2, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_8_2 v_add18_i284_8_2 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_8_2 v_and21_i287_8_2 + v_and19_i285_8_2;
assume eq v_add18_i284_8_2 v_and21_i287_8_2 + v_and19_i285_8_2 && true;
(*   %and22.i288.8.2 = and i64 %mul5.i269.8.2, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_8_2 v_mul5_i269_8_2 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_8_2 v_and22_i288_8_2 + v_and15_i281_8_2;
assume eq v_mul5_i269_8_2 v_and22_i288_8_2 + v_and15_i281_8_2 && true;
(*   %add23.i289.8.2 = add i64 %and21.i287.8.2, %and22.i288.8.2 *)
adds discard_985 v_add23_i289_8_2 v_and21_i287_8_2 v_and22_i288_8_2;
(* Heuristics applied. *)
assert true && eq discard_985 0@1;
assume eq discard_985 0 && true;
(*   %xor2569.i290.8.2 = or i64 %add23.i289.8.2, %and19.i285.8.2 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_8_2 v_add23_i289_8_2 v_and19_i285_8_2;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_8_2 v_add23_i289_8_2 + v_and19_i285_8_2;
assume eq v_xor2569_i290_8_2 v_add23_i289_8_2 + v_and19_i285_8_2 && true;
(*   %add82.8.2 = add i64 %xor68.i278.8.2, %add82.8.1 *)
adds discard_986 v_add82_8_2 v_xor68_i278_8_2 v_add82_8_1;
(*   %xor.i256.8.2 = xor i64 %add82.8.2, %shl.i277.8.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_8_2 v_add82_8_2 v_shl_i277_8_2;
(*   %xor1.i257.8.2 = xor i64 %shl.i277.8.2, %add82.8.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_8_2 v_shl_i277_8_2 v_add82_8_1;
(*   %or.i258.8.2 = or i64 %xor.i256.8.2, %xor1.i257.8.2 *)
(* You may need to modify here *)
or uint64 v_or_i258_8_2 v_xor_i256_8_2 v_xor1_i257_8_2;
(*   %xor2.i259.8.2 = xor i64 %or.i258.8.2, %add82.8.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_8_2 v_or_i258_8_2 v_add82_8_2;
(*   %shr.i260.8.2 = lshr i64 %xor2.i259.8.2, 63 *)
(* You may need to modify here *)
split v_shr_i260_8_2 tmp_to_be_used v_xor2_i259_8_2 63;
(* generated by python *)
assert true && limbs 64 [v_add82_8_2, v_shr_i260_8_2] = limbs 64 [v_xor68_i278_8_2, 0@64] + limbs 64 [v_add82_8_1, 0@64];
assume limbs 64 [v_add82_8_2, v_shr_i260_8_2] = limbs 64 [v_xor68_i278_8_2, 0] + limbs 64 [v_add82_8_1, 0] && true;
(*   %add89.8.2 = add i64 %shr.i260.8.2, %xor2569.i290.8.2 *)
adds discard_987 v_add89_8_2 v_shr_i260_8_2 v_xor2569_i290_8_2;
(* Heuristics applied. *)
assert true && eq discard_987 0@1;
assume eq discard_987 0 && true;
(*   %add90.8.2 = add i64 %add89.8.2, %add90.8.1 *)
adds discard_988 v_add90_8_2 v_add89_8_2 v_add90_8_1;
(* Heuristics applied. *)
assert true && eq discard_988 0@1;
assume eq discard_988 0 && true;
(*   %299 = xor i64 %add89.8.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v299 v_add89_8_2 (0x8000000000000000)@uint64;
(*   %xor2.i253.8.2 = and i64 %299, %add23.i289.8.2 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_8_2 v299 v_add23_i289_8_2;
(*   %xor.i244.8.2 = xor i64 %add90.8.2, %add89.8.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_8_2 v_add90_8_2 v_add89_8_2;
(*   %xor1.i245.8.2 = xor i64 %add89.8.2, %add90.8.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_8_2 v_add89_8_2 v_add90_8_1;
(*   %or.i246.8.2 = or i64 %xor.i244.8.2, %xor1.i245.8.2 *)
(* You may need to modify here *)
or uint64 v_or_i246_8_2 v_xor_i244_8_2 v_xor1_i245_8_2;
(*   %xor2.i247.8.2 = xor i64 %or.i246.8.2, %add90.8.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_8_2 v_or_i246_8_2 v_add90_8_2;
(*   %shr.i254326.8.2 = or i64 %xor2.i247.8.2, %xor2.i253.8.2 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_8_2 v_xor2_i247_8_2 v_xor2_i253_8_2;
(*   %or94325.8.2 = lshr i64 %shr.i254326.8.2, 63 *)
(* You may need to modify here *)
split v_or94325_8_2 tmp_to_be_used v_shr_i254326_8_2 63;
(* generated by python *)
assert true && limbs 64 [v_add90_8_2, v_or94325_8_2] = limbs 64 [v_shr_i260_8_2, 0@64] + limbs 64 [v_xor2569_i290_8_2, 0@64] + limbs 64 [v_add90_8_1, 0@64];
assume limbs 64 [v_add90_8_2, v_or94325_8_2] = limbs 64 [v_shr_i260_8_2, 0] + limbs 64 [v_xor2569_i290_8_2, 0] + limbs 64 [v_add90_8_1, 0] && true;
(*   %add96.8.2 = add nsw i64 %or94325.8.2, %add96.8.1 *)
adds discard_989 v_add96_8_2 v_or94325_8_2 v_add96_8_1;
(* Heuristics applied. *)
assert true && eq discard_989 0@1;
assume eq discard_989 0 && true;
(*   %arrayidx104.8 = getelementptr inbounds i64, i64* %ma, i64 20 *)
(*   %300 = load i64, i64* %arrayidx104.8, align 8, !tbaa !3 *)
mov v300 ma_160;
(*   %add105.8 = add i64 %300, %add82.8.2 *)
adds discard_990 v_add105_8 v300 v_add82_8_2;
(*   %xor.i238.8 = xor i64 %add105.8, %add82.8.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i238_8 v_add105_8 v_add82_8_2;
(*   %xor1.i239.8 = xor i64 %300, %add82.8.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i239_8 v300 v_add82_8_2;
(*   %or.i240.8 = or i64 %xor.i238.8, %xor1.i239.8 *)
(* You may need to modify here *)
or uint64 v_or_i240_8 v_xor_i238_8 v_xor1_i239_8;
(*   %xor2.i241.8 = xor i64 %or.i240.8, %add105.8 *)
(* You may need to modify here *)
xor uint64 v_xor2_i241_8 v_or_i240_8 v_add105_8;
(*   %shr.i242.8 = lshr i64 %xor2.i241.8, 63 *)
(* You may need to modify here *)
split v_shr_i242_8 tmp_to_be_used v_xor2_i241_8 63;
(* generated by python *)
assert true && limbs 64 [v_add105_8, v_shr_i242_8] = limbs 64 [v300, 0@64] + limbs 64 [v_add82_8_2, 0@64];
assume limbs 64 [v_add105_8, v_shr_i242_8] = limbs 64 [v300, 0] + limbs 64 [v_add82_8_2, 0] && true;
(*   %add111.8 = add i64 %shr.i242.8, %add90.8.2 *)
adds discard_991 v_add111_8 v_shr_i242_8 v_add90_8_2;
(* Heuristics applied. *)
assert true && eq discard_991 0@1;
assume eq discard_991 0 && true;
(*   store i64 %add105.8, i64* %arrayidx50.8, align 8, !tbaa !3 *)
mov mc_64 v_add105_8;
(*   %301 = xor i64 %add111.8, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v301 v_add111_8 (0x8000000000000000)@uint64;
(*   %xor2.i.8 = and i64 %301, %add90.8.2 *)
(* You may need to modify here *)
and uint64 v_xor2_i_8 v301 v_add90_8_2;
(*   %shr.i237.8 = lshr i64 %xor2.i.8, 63 *)
(* You may need to modify here *)
split v_shr_i237_8 tmp_to_be_used v_xor2_i_8 63;
(* generated by python *)
assert true && limbs 64 [v_add111_8, v_shr_i237_8] = limbs 64 [v_shr_i242_8, 0@64] + limbs 64 [v_add90_8_2, 0@64];
assume limbs 64 [v_add111_8, v_shr_i237_8] = limbs 64 [v_shr_i242_8, 0] + limbs 64 [v_add90_8_2, 0] && true;
(*   %add118.8 = add nsw i64 %shr.i237.8, %add96.8.2 *)
adds discard_992 v_add118_8 v_shr_i237_8 v_add96_8_2;
(* Heuristics applied. *)
assert true && eq discard_992 0@1;
assume eq discard_992 0 && true;
(*   %arrayidx74.9 = getelementptr inbounds i64, i64* %mc, i64 10 *)
(*   %302 = load i64, i64* %arrayidx74.9, align 8, !tbaa !3 *)
mov v302 mc_80;
(*   %303 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 11), align 8, !tbaa !3 *)
mov v303 p751p1_88;
(*   %and.i262.9 = and i64 %302, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_9 v302 (0xFFFFFFFF)@uint64;
(*   %shr.i263.9 = lshr i64 %302, 32 *)
(* You may need to modify here *)
split v_shr_i263_9 tmp_to_be_used v302 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_9;
assume eq tmp_to_be_used v_and_i262_9 && true;
(*   %and1.i264.9 = and i64 %303, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_9 v303 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.9 = lshr i64 %303, 32 *)
(* You may need to modify here *)
split v_shr2_i265_9 tmp_to_be_used v303 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_9;
assume eq tmp_to_be_used v_and1_i264_9 && true;
(*   %mul.i266.9 = mul nuw i64 %and1.i264.9, %and.i262.9 *)
mul v_mul_i266_9 v_and1_i264_9 v_and_i262_9;
(*   %mul3.i267.9 = mul nuw i64 %shr2.i265.9, %and.i262.9 *)
mul v_mul3_i267_9 v_shr2_i265_9 v_and_i262_9;
(*   %mul4.i268.9 = mul nuw i64 %and1.i264.9, %shr.i263.9 *)
mul v_mul4_i268_9 v_and1_i264_9 v_shr_i263_9;
(*   %mul5.i269.9 = mul nuw i64 %shr2.i265.9, %shr.i263.9 *)
mul v_mul5_i269_9 v_shr2_i265_9 v_shr_i263_9;
(*   %and6.i270.9 = and i64 %mul.i266.9, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_9 v_mul_i266_9 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.9 = lshr i64 %mul.i266.9, 32 *)
(* You may need to modify here *)
split v_shr7_i271_9 tmp_to_be_used v_mul_i266_9 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_9;
assume eq tmp_to_be_used v_and6_i270_9 && true;
(*   %and8.i272.9 = and i64 %mul4.i268.9, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_9 v_mul4_i268_9 (0xFFFFFFFF)@uint64;
(*   %and9.i273.9 = and i64 %mul3.i267.9, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_9 v_mul3_i267_9 (0xFFFFFFFF)@uint64;
(*   %add.i274.9 = add nuw nsw i64 %shr7.i271.9, %and8.i272.9 *)
adds discard_993 v_add_i274_9 v_shr7_i271_9 v_and8_i272_9;
(* Heuristics applied. *)
assert true && eq discard_993 0@1;
assume eq discard_993 0 && true;
(*   %add10.i275.9 = add nuw nsw i64 %add.i274.9, %and9.i273.9 *)
adds discard_994 v_add10_i275_9 v_add_i274_9 v_and9_i273_9;
(* Heuristics applied. *)
assert true && eq discard_994 0@1;
assume eq discard_994 0 && true;
(*   %shr11.i276.9 = lshr i64 %add10.i275.9, 32 *)
(* You may need to modify here *)
split v_shr11_i276_9 tmp_to_be_used v_add10_i275_9 32;
(*   %shl.i277.9 = shl i64 %add10.i275.9, 32 *)
shls discard_995 v_shl_i277_9 v_add10_i275_9 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_9 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_9 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.9 = or i64 %shl.i277.9, %and6.i270.9 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_9 v_shl_i277_9 v_and6_i270_9;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_9 v_shl_i277_9 + v_and6_i270_9;
assume eq v_xor68_i278_9 v_shl_i277_9 + v_and6_i270_9 && true;
(*   %shr13.i279.9 = lshr i64 %mul4.i268.9, 32 *)
(* You may need to modify here *)
split v_shr13_i279_9 tmp_to_be_used v_mul4_i268_9 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_9;
assume eq tmp_to_be_used v_and8_i272_9 && true;
(*   %shr14.i280.9 = lshr i64 %mul3.i267.9, 32 *)
(* You may need to modify here *)
split v_shr14_i280_9 tmp_to_be_used v_mul3_i267_9 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_9;
assume eq tmp_to_be_used v_and9_i273_9 && true;
(*   %and15.i281.9 = and i64 %mul5.i269.9, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_9 v_mul5_i269_9 (0xFFFFFFFF)@uint64;
(*   %add16.i282.9 = add nuw nsw i64 %shr13.i279.9, %shr14.i280.9 *)
adds discard_996 v_add16_i282_9 v_shr13_i279_9 v_shr14_i280_9;
(* Heuristics applied. *)
assert true && eq discard_996 0@1;
assume eq discard_996 0 && true;
(*   %add17.i283.9 = add nuw nsw i64 %add16.i282.9, %and15.i281.9 *)
adds discard_997 v_add17_i283_9 v_add16_i282_9 v_and15_i281_9;
(* Heuristics applied. *)
assert true && eq discard_997 0@1;
assume eq discard_997 0 && true;
(*   %add18.i284.9 = add nuw nsw i64 %add17.i283.9, %shr11.i276.9 *)
adds discard_998 v_add18_i284_9 v_add17_i283_9 v_shr11_i276_9;
(* Heuristics applied. *)
assert true && eq discard_998 0@1;
assume eq discard_998 0 && true;
(*   %and19.i285.9 = and i64 %add18.i284.9, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_9 v_add18_i284_9 (0xFFFFFFFF)@uint64;
(*   %and21.i287.9 = and i64 %add18.i284.9, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_9 v_add18_i284_9 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_9 v_and21_i287_9 + v_and19_i285_9;
assume eq v_add18_i284_9 v_and21_i287_9 + v_and19_i285_9 && true;
(*   %and22.i288.9 = and i64 %mul5.i269.9, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_9 v_mul5_i269_9 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_9 v_and22_i288_9 + v_and15_i281_9;
assume eq v_mul5_i269_9 v_and22_i288_9 + v_and15_i281_9 && true;
(*   %add23.i289.9 = add i64 %and21.i287.9, %and22.i288.9 *)
adds discard_999 v_add23_i289_9 v_and21_i287_9 v_and22_i288_9;
(* Heuristics applied. *)
assert true && eq discard_999 0@1;
assume eq discard_999 0 && true;
(*   %xor2569.i290.9 = or i64 %add23.i289.9, %and19.i285.9 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_9 v_add23_i289_9 v_and19_i285_9;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_9 v_add23_i289_9 + v_and19_i285_9;
assume eq v_xor2569_i290_9 v_add23_i289_9 + v_and19_i285_9 && true;
(*   %add82.9 = add i64 %xor68.i278.9, %add111.8 *)
adds discard_1000 v_add82_9 v_xor68_i278_9 v_add111_8;
(*   %xor.i256.9 = xor i64 %add82.9, %shl.i277.9 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_9 v_add82_9 v_shl_i277_9;
(*   %xor1.i257.9 = xor i64 %shl.i277.9, %add111.8 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_9 v_shl_i277_9 v_add111_8;
(*   %or.i258.9 = or i64 %xor.i256.9, %xor1.i257.9 *)
(* You may need to modify here *)
or uint64 v_or_i258_9 v_xor_i256_9 v_xor1_i257_9;
(*   %xor2.i259.9 = xor i64 %or.i258.9, %add82.9 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_9 v_or_i258_9 v_add82_9;
(*   %shr.i260.9 = lshr i64 %xor2.i259.9, 63 *)
(* You may need to modify here *)
split v_shr_i260_9 tmp_to_be_used v_xor2_i259_9 63;
(* generated by python *)
assert true && limbs 64 [v_add82_9, v_shr_i260_9] = limbs 64 [v_xor68_i278_9, 0@64] + limbs 64 [v_add111_8, 0@64];
assume limbs 64 [v_add82_9, v_shr_i260_9] = limbs 64 [v_xor68_i278_9, 0] + limbs 64 [v_add111_8, 0] && true;
(*   %add89.9 = add i64 %shr.i260.9, %xor2569.i290.9 *)
adds discard_1001 v_add89_9 v_shr_i260_9 v_xor2569_i290_9;
(* Heuristics applied. *)
assert true && eq discard_1001 0@1;
assume eq discard_1001 0 && true;
(*   %add90.9 = add i64 %add89.9, %add118.8 *)
adds discard_1002 v_add90_9 v_add89_9 v_add118_8;
(* Heuristics applied. *)
assert true && eq discard_1002 0@1;
assume eq discard_1002 0 && true;
(*   %304 = xor i64 %add89.9, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v304 v_add89_9 (0x8000000000000000)@uint64;
(*   %xor2.i253.9 = and i64 %304, %add23.i289.9 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_9 v304 v_add23_i289_9;
(*   %xor.i244.9 = xor i64 %add90.9, %add89.9 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_9 v_add90_9 v_add89_9;
(*   %xor1.i245.9 = xor i64 %add89.9, %add118.8 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_9 v_add89_9 v_add118_8;
(*   %or.i246.9 = or i64 %xor.i244.9, %xor1.i245.9 *)
(* You may need to modify here *)
or uint64 v_or_i246_9 v_xor_i244_9 v_xor1_i245_9;
(*   %xor2.i247.9 = xor i64 %or.i246.9, %add90.9 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_9 v_or_i246_9 v_add90_9;
(*   %shr.i254326.9 = or i64 %xor2.i247.9, %xor2.i253.9 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_9 v_xor2_i247_9 v_xor2_i253_9;
(*   %or94325.9 = lshr i64 %shr.i254326.9, 63 *)
(* You may need to modify here *)
split v_or94325_9 tmp_to_be_used v_shr_i254326_9 63;
(* generated by python *)
assert true && limbs 64 [v_add90_9, v_or94325_9] = limbs 64 [v_shr_i260_9, 0@64] + limbs 64 [v_xor2569_i290_9, 0@64] + limbs 64 [v_add118_8, 0@64];
assume limbs 64 [v_add90_9, v_or94325_9] = limbs 64 [v_shr_i260_9, 0] + limbs 64 [v_xor2569_i290_9, 0] + limbs 64 [v_add118_8, 0] && true;
(*   %arrayidx74.9.1 = getelementptr inbounds i64, i64* %mc, i64 11 *)
(*   %305 = load i64, i64* %arrayidx74.9.1, align 8, !tbaa !3 *)
mov v305 mc_88;
(*   %306 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 10), align 16, !tbaa !3 *)
mov v306 p751p1_80;
(*   %and.i262.9.1 = and i64 %305, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_9_1 v305 (0xFFFFFFFF)@uint64;
(*   %shr.i263.9.1 = lshr i64 %305, 32 *)
(* You may need to modify here *)
split v_shr_i263_9_1 tmp_to_be_used v305 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_9_1;
assume eq tmp_to_be_used v_and_i262_9_1 && true;
(*   %and1.i264.9.1 = and i64 %306, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_9_1 v306 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.9.1 = lshr i64 %306, 32 *)
(* You may need to modify here *)
split v_shr2_i265_9_1 tmp_to_be_used v306 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_9_1;
assume eq tmp_to_be_used v_and1_i264_9_1 && true;
(*   %mul.i266.9.1 = mul nuw i64 %and1.i264.9.1, %and.i262.9.1 *)
mul v_mul_i266_9_1 v_and1_i264_9_1 v_and_i262_9_1;
(*   %mul3.i267.9.1 = mul nuw i64 %shr2.i265.9.1, %and.i262.9.1 *)
mul v_mul3_i267_9_1 v_shr2_i265_9_1 v_and_i262_9_1;
(*   %mul4.i268.9.1 = mul nuw i64 %and1.i264.9.1, %shr.i263.9.1 *)
mul v_mul4_i268_9_1 v_and1_i264_9_1 v_shr_i263_9_1;
(*   %mul5.i269.9.1 = mul nuw i64 %shr2.i265.9.1, %shr.i263.9.1 *)
mul v_mul5_i269_9_1 v_shr2_i265_9_1 v_shr_i263_9_1;
(*   %and6.i270.9.1 = and i64 %mul.i266.9.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_9_1 v_mul_i266_9_1 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.9.1 = lshr i64 %mul.i266.9.1, 32 *)
(* You may need to modify here *)
split v_shr7_i271_9_1 tmp_to_be_used v_mul_i266_9_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_9_1;
assume eq tmp_to_be_used v_and6_i270_9_1 && true;
(*   %and8.i272.9.1 = and i64 %mul4.i268.9.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_9_1 v_mul4_i268_9_1 (0xFFFFFFFF)@uint64;
(*   %and9.i273.9.1 = and i64 %mul3.i267.9.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_9_1 v_mul3_i267_9_1 (0xFFFFFFFF)@uint64;
(*   %add.i274.9.1 = add nuw nsw i64 %shr7.i271.9.1, %and8.i272.9.1 *)
adds discard_1003 v_add_i274_9_1 v_shr7_i271_9_1 v_and8_i272_9_1;
(* Heuristics applied. *)
assert true && eq discard_1003 0@1;
assume eq discard_1003 0 && true;
(*   %add10.i275.9.1 = add nuw nsw i64 %add.i274.9.1, %and9.i273.9.1 *)
adds discard_1004 v_add10_i275_9_1 v_add_i274_9_1 v_and9_i273_9_1;
(* Heuristics applied. *)
assert true && eq discard_1004 0@1;
assume eq discard_1004 0 && true;
(*   %shr11.i276.9.1 = lshr i64 %add10.i275.9.1, 32 *)
(* You may need to modify here *)
split v_shr11_i276_9_1 tmp_to_be_used v_add10_i275_9_1 32;
(*   %shl.i277.9.1 = shl i64 %add10.i275.9.1, 32 *)
shls discard_1005 v_shl_i277_9_1 v_add10_i275_9_1 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_9_1 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_9_1 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.9.1 = or i64 %shl.i277.9.1, %and6.i270.9.1 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_9_1 v_shl_i277_9_1 v_and6_i270_9_1;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_9_1 v_shl_i277_9_1 + v_and6_i270_9_1;
assume eq v_xor68_i278_9_1 v_shl_i277_9_1 + v_and6_i270_9_1 && true;
(*   %shr13.i279.9.1 = lshr i64 %mul4.i268.9.1, 32 *)
(* You may need to modify here *)
split v_shr13_i279_9_1 tmp_to_be_used v_mul4_i268_9_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_9_1;
assume eq tmp_to_be_used v_and8_i272_9_1 && true;
(*   %shr14.i280.9.1 = lshr i64 %mul3.i267.9.1, 32 *)
(* You may need to modify here *)
split v_shr14_i280_9_1 tmp_to_be_used v_mul3_i267_9_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_9_1;
assume eq tmp_to_be_used v_and9_i273_9_1 && true;
(*   %and15.i281.9.1 = and i64 %mul5.i269.9.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_9_1 v_mul5_i269_9_1 (0xFFFFFFFF)@uint64;
(*   %add16.i282.9.1 = add nuw nsw i64 %shr13.i279.9.1, %shr14.i280.9.1 *)
adds discard_1006 v_add16_i282_9_1 v_shr13_i279_9_1 v_shr14_i280_9_1;
(* Heuristics applied. *)
assert true && eq discard_1006 0@1;
assume eq discard_1006 0 && true;
(*   %add17.i283.9.1 = add nuw nsw i64 %add16.i282.9.1, %and15.i281.9.1 *)
adds discard_1007 v_add17_i283_9_1 v_add16_i282_9_1 v_and15_i281_9_1;
(* Heuristics applied. *)
assert true && eq discard_1007 0@1;
assume eq discard_1007 0 && true;
(*   %add18.i284.9.1 = add nuw nsw i64 %add17.i283.9.1, %shr11.i276.9.1 *)
adds discard_1008 v_add18_i284_9_1 v_add17_i283_9_1 v_shr11_i276_9_1;
(* Heuristics applied. *)
assert true && eq discard_1008 0@1;
assume eq discard_1008 0 && true;
(*   %and19.i285.9.1 = and i64 %add18.i284.9.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_9_1 v_add18_i284_9_1 (0xFFFFFFFF)@uint64;
(*   %and21.i287.9.1 = and i64 %add18.i284.9.1, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_9_1 v_add18_i284_9_1 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_9_1 v_and21_i287_9_1 + v_and19_i285_9_1;
assume eq v_add18_i284_9_1 v_and21_i287_9_1 + v_and19_i285_9_1 && true;
(*   %and22.i288.9.1 = and i64 %mul5.i269.9.1, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_9_1 v_mul5_i269_9_1 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_9_1 v_and22_i288_9_1 + v_and15_i281_9_1;
assume eq v_mul5_i269_9_1 v_and22_i288_9_1 + v_and15_i281_9_1 && true;
(*   %add23.i289.9.1 = add i64 %and21.i287.9.1, %and22.i288.9.1 *)
adds discard_1009 v_add23_i289_9_1 v_and21_i287_9_1 v_and22_i288_9_1;
(* Heuristics applied. *)
assert true && eq discard_1009 0@1;
assume eq discard_1009 0 && true;
(*   %xor2569.i290.9.1 = or i64 %add23.i289.9.1, %and19.i285.9.1 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_9_1 v_add23_i289_9_1 v_and19_i285_9_1;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_9_1 v_add23_i289_9_1 + v_and19_i285_9_1;
assume eq v_xor2569_i290_9_1 v_add23_i289_9_1 + v_and19_i285_9_1 && true;
(*   %add82.9.1 = add i64 %xor68.i278.9.1, %add82.9 *)
adds discard_1010 v_add82_9_1 v_xor68_i278_9_1 v_add82_9;
(*   %xor.i256.9.1 = xor i64 %add82.9.1, %shl.i277.9.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_9_1 v_add82_9_1 v_shl_i277_9_1;
(*   %xor1.i257.9.1 = xor i64 %shl.i277.9.1, %add82.9 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_9_1 v_shl_i277_9_1 v_add82_9;
(*   %or.i258.9.1 = or i64 %xor.i256.9.1, %xor1.i257.9.1 *)
(* You may need to modify here *)
or uint64 v_or_i258_9_1 v_xor_i256_9_1 v_xor1_i257_9_1;
(*   %xor2.i259.9.1 = xor i64 %or.i258.9.1, %add82.9.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_9_1 v_or_i258_9_1 v_add82_9_1;
(*   %shr.i260.9.1 = lshr i64 %xor2.i259.9.1, 63 *)
(* You may need to modify here *)
split v_shr_i260_9_1 tmp_to_be_used v_xor2_i259_9_1 63;
(* generated by python *)
assert true && limbs 64 [v_add82_9_1, v_shr_i260_9_1] = limbs 64 [v_xor68_i278_9_1, 0@64] + limbs 64 [v_add82_9, 0@64];
assume limbs 64 [v_add82_9_1, v_shr_i260_9_1] = limbs 64 [v_xor68_i278_9_1, 0] + limbs 64 [v_add82_9, 0] && true;
(*   %add89.9.1 = add i64 %shr.i260.9.1, %xor2569.i290.9.1 *)
adds discard_1011 v_add89_9_1 v_shr_i260_9_1 v_xor2569_i290_9_1;
(* Heuristics applied. *)
assert true && eq discard_1011 0@1;
assume eq discard_1011 0 && true;
(*   %add90.9.1 = add i64 %add89.9.1, %add90.9 *)
adds discard_1012 v_add90_9_1 v_add89_9_1 v_add90_9;
(* Heuristics applied. *)
assert true && eq discard_1012 0@1;
assume eq discard_1012 0 && true;
(*   %307 = xor i64 %add89.9.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v307 v_add89_9_1 (0x8000000000000000)@uint64;
(*   %xor2.i253.9.1 = and i64 %307, %add23.i289.9.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_9_1 v307 v_add23_i289_9_1;
(*   %xor.i244.9.1 = xor i64 %add90.9.1, %add89.9.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i244_9_1 v_add90_9_1 v_add89_9_1;
(*   %xor1.i245.9.1 = xor i64 %add89.9.1, %add90.9 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245_9_1 v_add89_9_1 v_add90_9;
(*   %or.i246.9.1 = or i64 %xor.i244.9.1, %xor1.i245.9.1 *)
(* You may need to modify here *)
or uint64 v_or_i246_9_1 v_xor_i244_9_1 v_xor1_i245_9_1;
(*   %xor2.i247.9.1 = xor i64 %or.i246.9.1, %add90.9.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i247_9_1 v_or_i246_9_1 v_add90_9_1;
(*   %shr.i254326.9.1 = or i64 %xor2.i247.9.1, %xor2.i253.9.1 *)
(* You may need to modify here *)
or uint64 v_shr_i254326_9_1 v_xor2_i247_9_1 v_xor2_i253_9_1;
(*   %or94325.9.1 = lshr i64 %shr.i254326.9.1, 63 *)
(* You may need to modify here *)
split v_or94325_9_1 tmp_to_be_used v_shr_i254326_9_1 63;
(* generated by python *)
assert true && limbs 64 [v_add90_9_1, v_or94325_9_1] = limbs 64 [v_shr_i260_9_1, 0@64] + limbs 64 [v_xor2569_i290_9_1, 0@64] + limbs 64 [v_add90_9, 0@64];
assume limbs 64 [v_add90_9_1, v_or94325_9_1] = limbs 64 [v_shr_i260_9_1, 0] + limbs 64 [v_xor2569_i290_9_1, 0] + limbs 64 [v_add90_9, 0] && true;
(*   %add96.9.1 = add nuw nsw i64 %or94325.9.1, %or94325.9 *)
adds discard_1013 v_add96_9_1 v_or94325_9_1 v_or94325_9;
(* Heuristics applied. *)
assert true && eq discard_1013 0@1;
assume eq discard_1013 0 && true;
(*   %arrayidx104.9 = getelementptr inbounds i64, i64* %ma, i64 21 *)
(*   %308 = load i64, i64* %arrayidx104.9, align 8, !tbaa !3 *)
mov v308 ma_168;
(*   %add105.9 = add i64 %308, %add82.9.1 *)
adds discard_1014 v_add105_9 v308 v_add82_9_1;
(*   %xor.i238.9 = xor i64 %add105.9, %add82.9.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i238_9 v_add105_9 v_add82_9_1;
(*   %xor1.i239.9 = xor i64 %308, %add82.9.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i239_9 v308 v_add82_9_1;
(*   %or.i240.9 = or i64 %xor.i238.9, %xor1.i239.9 *)
(* You may need to modify here *)
or uint64 v_or_i240_9 v_xor_i238_9 v_xor1_i239_9;
(*   %xor2.i241.9 = xor i64 %or.i240.9, %add105.9 *)
(* You may need to modify here *)
xor uint64 v_xor2_i241_9 v_or_i240_9 v_add105_9;
(*   %shr.i242.9 = lshr i64 %xor2.i241.9, 63 *)
(* You may need to modify here *)
split v_shr_i242_9 tmp_to_be_used v_xor2_i241_9 63;
(* generated by python *)
assert true && limbs 64 [v_add105_9, v_shr_i242_9] = limbs 64 [v308, 0@64] + limbs 64 [v_add82_9_1, 0@64];
assume limbs 64 [v_add105_9, v_shr_i242_9] = limbs 64 [v308, 0] + limbs 64 [v_add82_9_1, 0] && true;
(*   %add111.9 = add i64 %shr.i242.9, %add90.9.1 *)
adds discard_1015 v_add111_9 v_shr_i242_9 v_add90_9_1;
(* Heuristics applied. *)
assert true && eq discard_1015 0@1;
assume eq discard_1015 0 && true;
(*   store i64 %add105.9, i64* %arrayidx50.9, align 8, !tbaa !3 *)
mov mc_72 v_add105_9;
(*   %309 = xor i64 %add111.9, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v309 v_add111_9 (0x8000000000000000)@uint64;
(*   %xor2.i.9 = and i64 %309, %add90.9.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i_9 v309 v_add90_9_1;
(*   %shr.i237.9 = lshr i64 %xor2.i.9, 63 *)
(* You may need to modify here *)
split v_shr_i237_9 tmp_to_be_used v_xor2_i_9 63;
(* generated by python *)
assert true && limbs 64 [v_add111_9, v_shr_i237_9] = limbs 64 [v_shr_i242_9, 0@64] + limbs 64 [v_add90_9_1, 0@64];
assume limbs 64 [v_add111_9, v_shr_i237_9] = limbs 64 [v_shr_i242_9, 0] + limbs 64 [v_add90_9_1, 0] && true;
(*   %add118.9 = add nsw i64 %shr.i237.9, %add96.9.1 *)
adds discard_1016 v_add118_9 v_shr_i237_9 v_add96_9_1;
(* Heuristics applied. *)
assert true && eq discard_1016 0@1;
assume eq discard_1016 0 && true;
(*   %arrayidx74.10 = getelementptr inbounds i64, i64* %mc, i64 11 *)
(*   %310 = load i64, i64* %arrayidx74.10, align 8, !tbaa !3 *)
mov v310 mc_88;
(*   %311 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @p751p1, i64 0, i64 11), align 8, !tbaa !3 *)
mov v311 p751p1_88;
(*   %and.i262.10 = and i64 %310, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_10 v310 (0xFFFFFFFF)@uint64;
(*   %shr.i263.10 = lshr i64 %310, 32 *)
(* You may need to modify here *)
split v_shr_i263_10 tmp_to_be_used v310 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_10;
assume eq tmp_to_be_used v_and_i262_10 && true;
(*   %and1.i264.10 = and i64 %311, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_10 v311 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.10 = lshr i64 %311, 32 *)
(* You may need to modify here *)
split v_shr2_i265_10 tmp_to_be_used v311 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i264_10;
assume eq tmp_to_be_used v_and1_i264_10 && true;
(*   %mul.i266.10 = mul nuw i64 %and1.i264.10, %and.i262.10 *)
mul v_mul_i266_10 v_and1_i264_10 v_and_i262_10;
(*   %mul3.i267.10 = mul nuw i64 %shr2.i265.10, %and.i262.10 *)
mul v_mul3_i267_10 v_shr2_i265_10 v_and_i262_10;
(*   %mul4.i268.10 = mul nuw i64 %and1.i264.10, %shr.i263.10 *)
mul v_mul4_i268_10 v_and1_i264_10 v_shr_i263_10;
(*   %mul5.i269.10 = mul nuw i64 %shr2.i265.10, %shr.i263.10 *)
mul v_mul5_i269_10 v_shr2_i265_10 v_shr_i263_10;
(*   %and6.i270.10 = and i64 %mul.i266.10, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i270_10 v_mul_i266_10 (0xFFFFFFFF)@uint64;
(*   %shr7.i271.10 = lshr i64 %mul.i266.10, 32 *)
(* You may need to modify here *)
split v_shr7_i271_10 tmp_to_be_used v_mul_i266_10 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i270_10;
assume eq tmp_to_be_used v_and6_i270_10 && true;
(*   %and8.i272.10 = and i64 %mul4.i268.10, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i272_10 v_mul4_i268_10 (0xFFFFFFFF)@uint64;
(*   %and9.i273.10 = and i64 %mul3.i267.10, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i273_10 v_mul3_i267_10 (0xFFFFFFFF)@uint64;
(*   %add.i274.10 = add nuw nsw i64 %shr7.i271.10, %and8.i272.10 *)
adds discard_1017 v_add_i274_10 v_shr7_i271_10 v_and8_i272_10;
(* Heuristics applied. *)
assert true && eq discard_1017 0@1;
assume eq discard_1017 0 && true;
(*   %add10.i275.10 = add nuw nsw i64 %add.i274.10, %and9.i273.10 *)
adds discard_1018 v_add10_i275_10 v_add_i274_10 v_and9_i273_10;
(* Heuristics applied. *)
assert true && eq discard_1018 0@1;
assume eq discard_1018 0 && true;
(*   %shr11.i276.10 = lshr i64 %add10.i275.10, 32 *)
(* You may need to modify here *)
split v_shr11_i276_10 tmp_to_be_used v_add10_i275_10 32;
(*   %shl.i277.10 = shl i64 %add10.i275.10, 32 *)
shls discard_1019 v_shl_i277_10 v_add10_i275_10 32;
(* Heuristics applied. *)
assert true && eq v_shl_i277_10 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i277_10 tmp_to_be_used * (2**32) && true;
(*   %xor68.i278.10 = or i64 %shl.i277.10, %and6.i270.10 *)
(* You may need to modify here *)
or uint64 v_xor68_i278_10 v_shl_i277_10 v_and6_i270_10;
(* Heuristics applied. *)
assert true && eq v_xor68_i278_10 v_shl_i277_10 + v_and6_i270_10;
assume eq v_xor68_i278_10 v_shl_i277_10 + v_and6_i270_10 && true;
(*   %shr13.i279.10 = lshr i64 %mul4.i268.10, 32 *)
(* You may need to modify here *)
split v_shr13_i279_10 tmp_to_be_used v_mul4_i268_10 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i272_10;
assume eq tmp_to_be_used v_and8_i272_10 && true;
(*   %shr14.i280.10 = lshr i64 %mul3.i267.10, 32 *)
(* You may need to modify here *)
split v_shr14_i280_10 tmp_to_be_used v_mul3_i267_10 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i273_10;
assume eq tmp_to_be_used v_and9_i273_10 && true;
(*   %and15.i281.10 = and i64 %mul5.i269.10, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i281_10 v_mul5_i269_10 (0xFFFFFFFF)@uint64;
(*   %add16.i282.10 = add nuw nsw i64 %shr13.i279.10, %shr14.i280.10 *)
adds discard_1020 v_add16_i282_10 v_shr13_i279_10 v_shr14_i280_10;
(* Heuristics applied. *)
assert true && eq discard_1020 0@1;
assume eq discard_1020 0 && true;
(*   %add17.i283.10 = add nuw nsw i64 %add16.i282.10, %and15.i281.10 *)
adds discard_1021 v_add17_i283_10 v_add16_i282_10 v_and15_i281_10;
(* Heuristics applied. *)
assert true && eq discard_1021 0@1;
assume eq discard_1021 0 && true;
(*   %add18.i284.10 = add nuw nsw i64 %add17.i283.10, %shr11.i276.10 *)
adds discard_1022 v_add18_i284_10 v_add17_i283_10 v_shr11_i276_10;
(* Heuristics applied. *)
assert true && eq discard_1022 0@1;
assume eq discard_1022 0 && true;
(*   %and19.i285.10 = and i64 %add18.i284.10, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i285_10 v_add18_i284_10 (0xFFFFFFFF)@uint64;
(*   %and21.i287.10 = and i64 %add18.i284.10, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i287_10 v_add18_i284_10 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i284_10 v_and21_i287_10 + v_and19_i285_10;
assume eq v_add18_i284_10 v_and21_i287_10 + v_and19_i285_10 && true;
(*   %and22.i288.10 = and i64 %mul5.i269.10, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i288_10 v_mul5_i269_10 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i269_10 v_and22_i288_10 + v_and15_i281_10;
assume eq v_mul5_i269_10 v_and22_i288_10 + v_and15_i281_10 && true;
(*   %add23.i289.10 = add i64 %and21.i287.10, %and22.i288.10 *)
adds discard_1023 v_add23_i289_10 v_and21_i287_10 v_and22_i288_10;
(* Heuristics applied. *)
assert true && eq discard_1023 0@1;
assume eq discard_1023 0 && true;
(*   %xor2569.i290.10 = or i64 %add23.i289.10, %and19.i285.10 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_10 v_add23_i289_10 v_and19_i285_10;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_10 v_add23_i289_10 + v_and19_i285_10;
assume eq v_xor2569_i290_10 v_add23_i289_10 + v_and19_i285_10 && true;
(*   %add82.10 = add i64 %xor68.i278.10, %add111.9 *)
adds discard_1024 v_add82_10 v_xor68_i278_10 v_add111_9;
(*   %xor.i256.10 = xor i64 %add82.10, %shl.i277.10 *)
(* You may need to modify here *)
xor uint64 v_xor_i256_10 v_add82_10 v_shl_i277_10;
(*   %xor1.i257.10 = xor i64 %shl.i277.10, %add111.9 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257_10 v_shl_i277_10 v_add111_9;
(*   %or.i258.10 = or i64 %xor.i256.10, %xor1.i257.10 *)
(* You may need to modify here *)
or uint64 v_or_i258_10 v_xor_i256_10 v_xor1_i257_10;
(*   %xor2.i259.10 = xor i64 %or.i258.10, %add82.10 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259_10 v_or_i258_10 v_add82_10;
(*   %shr.i260.10 = lshr i64 %xor2.i259.10, 63 *)
(* You may need to modify here *)
split v_shr_i260_10 tmp_to_be_used v_xor2_i259_10 63;
(* generated by python *)
assert true && limbs 64 [v_add82_10, v_shr_i260_10] = limbs 64 [v_xor68_i278_10, 0@64] + limbs 64 [v_add111_9, 0@64];
assume limbs 64 [v_add82_10, v_shr_i260_10] = limbs 64 [v_xor68_i278_10, 0] + limbs 64 [v_add111_9, 0] && true;
(*   %add89.10 = add i64 %shr.i260.10, %xor2569.i290.10 *)
adds discard_1025 v_add89_10 v_shr_i260_10 v_xor2569_i290_10;
(* Heuristics applied. *)
assert true && eq discard_1025 0@1;
assume eq discard_1025 0 && true;
(*   %add90.10 = add i64 %add89.10, %add118.9 *)
adds discard_1026 v_add90_10 v_add89_10 v_add118_9;
(* Heuristics applied. *)
assert true && eq discard_1026 0@1;
assume eq discard_1026 0 && true;
(*   %arrayidx104.10 = getelementptr inbounds i64, i64* %ma, i64 22 *)
(*   %312 = load i64, i64* %arrayidx104.10, align 8, !tbaa !3 *)
mov v312 ma_176;
(*   %add105.10 = add i64 %312, %add82.10 *)
adds discard_1027 v_add105_10 v312 v_add82_10;
(*   %xor.i238.10 = xor i64 %add105.10, %add82.10 *)
(* You may need to modify here *)
xor uint64 v_xor_i238_10 v_add105_10 v_add82_10;
(*   %xor1.i239.10 = xor i64 %312, %add82.10 *)
(* You may need to modify here *)
xor uint64 v_xor1_i239_10 v312 v_add82_10;
(*   %or.i240.10 = or i64 %xor.i238.10, %xor1.i239.10 *)
(* You may need to modify here *)
or uint64 v_or_i240_10 v_xor_i238_10 v_xor1_i239_10;
(*   %xor2.i241.10 = xor i64 %or.i240.10, %add105.10 *)
(* You may need to modify here *)
xor uint64 v_xor2_i241_10 v_or_i240_10 v_add105_10;
(*   %shr.i242.10 = lshr i64 %xor2.i241.10, 63 *)
(* You may need to modify here *)
split v_shr_i242_10 tmp_to_be_used v_xor2_i241_10 63;
(* generated by python *)
assert true && limbs 64 [v_add105_10, v_shr_i242_10] = limbs 64 [v312, 0@64] + limbs 64 [v_add82_10, 0@64];
assume limbs 64 [v_add105_10, v_shr_i242_10] = limbs 64 [v312, 0] + limbs 64 [v_add82_10, 0] && true;
(*   %add111.10 = add i64 %shr.i242.10, %add90.10 *)
adds discard_1028 v_add111_10 v_shr_i242_10 v_add90_10;
(* Heuristics applied. *)
assert true && eq discard_1028 0@1;
assume eq discard_1028 0 && true;
(*   store i64 %add105.10, i64* %arrayidx50.10, align 8, !tbaa !3 *)
mov mc_80 v_add105_10;
(*   %arrayidx127 = getelementptr inbounds i64, i64* %ma, i64 23 *)
(*   %313 = load i64, i64* %arrayidx127, align 8, !tbaa !3 *)
mov v313 ma_184;
(*   %add128 = add i64 %313, %add111.10 *)
adds discard_1029 v_add128 v313 v_add111_10;
(* == modified == *)
assert true && discard_1029 = 0@1;
assume discard_1029 = 0 && true;
(*   store i64 %add128, i64* %arrayidx50.11, align 8, !tbaa !3 *)
mov mc_88 v_add128;
(*   ret void *)


(* Outputs *)

mov mc00 mc_0@uint64;
mov mc01 mc_8@uint64;
mov mc02 mc_16@uint64;
mov mc03 mc_24@uint64;
mov mc04 mc_32@uint64;
mov mc05 mc_40@uint64;
mov mc06 mc_48@uint64;
mov mc07 mc_56@uint64;
mov mc08 mc_64@uint64;
mov mc09 mc_72@uint64;
mov mc10 mc_80@uint64;
mov mc11 mc_88@uint64;


{
  (* mc = ma*R^-1 mod p751, i.e., mc * R = ma mod p751 *)
  eqmod limbs 64 [mc00, mc01, mc02, mc03, mc04, mc05, mc06, mc07, mc08, mc09, mc10, mc11] * (2**768)
        limbs 64 [ma00, ma01, ma02, ma03, ma04, ma05, ma06, ma07, ma08, ma09, ma10, ma11,
	          ma12, ma13, ma14, ma15, ma16, ma17, ma18, ma19, ma20, ma21, ma22, ma23]
        (2**372 * 3**239 - 1)
  &&
  (* mc in [0, 2*p751-1] *)
  and [
    0@768 <=u limbs 64 [mc00, mc01, mc02, mc03, mc04, mc05, mc06, mc07, mc08, mc09, mc10, mc11],
    limbs 64 [mc00, mc01, mc02, mc03, mc04, mc05, mc06, mc07, mc08, mc09, mc10, mc11]
      <=u const 768 (2 * (2**372 * 3**239 - 1) - 1)
  ]
}


proc main (uint64 ma_0, uint64 ma_8, uint64 ma_16, uint64 ma_24, uint64 ma_32, uint64 ma_40, uint64 ma_48, uint64 ma_56, uint64 ma_64, uint64 ma_72, uint64 ma_80, uint64 ma_88, uint64 ma_96, uint64 ma_104, uint64 p434p1_8, uint64 p434p1_24, uint64 p434p1_32, uint64 p434p1_40, uint64 p434p1_48) =
{
  true
  &&
  true
}



(*   %mc370 = bitcast i64* %mc to i8* *)
(*   call void @llvm.memset.p0i8.i64(i8* align 8 %mc370, i8 0, i64 56, i1 false) *)
(*   %0 = load i64, i64* %ma, align 8, !tbaa !3 *)
mov v0 ma_0;
(*   store i64 %0, i64* %mc, align 8, !tbaa !3 *)
mov mc_0 v0;
(*   %1 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434p1, i64 0, i64 1), align 8, !tbaa !3 *)
mov v1 p434p1_8;
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
(*   %arrayidx34.2 = getelementptr inbounds i64, i64* %ma, i64 2 *)
(*   %4 = load i64, i64* %arrayidx34.2, align 8, !tbaa !3 *)
mov v4 ma_16;
(*   %add35.2 = add i64 %4, %add41.1 *)
adds discard_9 v_add35_2 v4 v_add41_1;
(*   %arrayidx50.2 = getelementptr inbounds i64, i64* %mc, i64 2 *)
(*   store i64 %add35.2, i64* %arrayidx50.2, align 8, !tbaa !3 *)
mov mc_16 v_add35_2;
(*   %xor.i297.2 = xor i64 %add35.2, %add41.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i297_2 v_add35_2 v_add41_1;
(*   %xor1.i298.2 = xor i64 %4, %add41.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i298_2 v4 v_add41_1;
(*   %or.i299.2 = or i64 %xor.i297.2, %xor1.i298.2 *)
(* You may need to modify here *)
or uint64 v_or_i299_2 v_xor_i297_2 v_xor1_i298_2;
(*   %xor2.i300.2 = xor i64 %or.i299.2, %add35.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i300_2 v_or_i299_2 v_add35_2;
(*   %shr.i301.2 = lshr i64 %xor2.i300.2, 63 *)
(* You may need to modify here *)
split v_shr_i301_2 tmp_to_be_used v_xor2_i300_2 63;
(*   %add41.2 = add nuw nsw i64 %shr.i301.2, %shr.i295.1 *)
adds discard_10 v_add41_2 v_shr_i301_2 v_shr_i295_1;
(* Heuristics applied. *)
assert true && eq discard_10 0@1;
assume eq discard_10 0 && true;
(*   %5 = load i64, i64* %mc, align 8, !tbaa !3 *)
mov v5 mc_0;
(*   %6 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434p1, i64 0, i64 3), align 8, !tbaa !3 *)
mov v6 p434p1_24;
(*   %and.i.3 = and i64 %5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_3 v5 (0xFFFFFFFF)@uint64;
(*   %shr.i.3 = lshr i64 %5, 32 *)
(* You may need to modify here *)
split v_shr_i_3 tmp_to_be_used v5 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_3;
assume eq tmp_to_be_used v_and_i_3 && true;
(*   %and1.i.3 = and i64 %6, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_3 v6 (0xFFFFFFFF)@uint64;
(*   %shr2.i.3 = lshr i64 %6, 32 *)
(* You may need to modify here *)
split v_shr2_i_3 tmp_to_be_used v6 32;
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
adds discard_11 v_add_i_3 v_shr7_i_3 v_and8_i_3;
(* Heuristics applied. *)
assert true && eq discard_11 0@1;
assume eq discard_11 0 && true;
(*   %add10.i.3 = add nuw nsw i64 %add.i.3, %and9.i.3 *)
adds discard_12 v_add10_i_3 v_add_i_3 v_and9_i_3;
(* Heuristics applied. *)
assert true && eq discard_12 0@1;
assume eq discard_12 0 && true;
(*   %shr11.i.3 = lshr i64 %add10.i.3, 32 *)
(* You may need to modify here *)
split v_shr11_i_3 tmp_to_be_used v_add10_i_3 32;
(*   %shl.i.3 = shl i64 %add10.i.3, 32 *)
shls discard_13 v_shl_i_3 v_add10_i_3 32;
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
adds discard_14 v_add16_i_3 v_shr13_i_3 v_shr14_i_3;
(* Heuristics applied. *)
assert true && eq discard_14 0@1;
assume eq discard_14 0 && true;
(*   %add17.i.3 = add nuw nsw i64 %add16.i.3, %and15.i.3 *)
adds discard_15 v_add17_i_3 v_add16_i_3 v_and15_i_3;
(* Heuristics applied. *)
assert true && eq discard_15 0@1;
assume eq discard_15 0 && true;
(*   %add18.i.3 = add nuw nsw i64 %add17.i.3, %shr11.i.3 *)
adds discard_16 v_add18_i_3 v_add17_i_3 v_shr11_i_3;
(* Heuristics applied. *)
assert true && eq discard_16 0@1;
assume eq discard_16 0 && true;
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
adds discard_17 v_add23_i_3 v_and21_i_3 v_and22_i_3;
(* Heuristics applied. *)
assert true && eq discard_17 0@1;
assume eq discard_17 0 && true;
(*   %xor2569.i.3 = or i64 %add23.i.3, %and19.i.3 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_3 v_add23_i_3 v_and19_i_3;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_3 v_add23_i_3 + v_and19_i_3;
assume eq v_xor2569_i_3 v_add23_i_3 + v_and19_i_3 && true;
(*   %add16.3 = add i64 %xor68.i.3, %add41.2 *)
adds discard_18 v_add16_3 v_xor68_i_3 v_add41_2;
(*   %7 = xor i64 %add16.3, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v7 v_add16_3 (0x8000000000000000)@uint64;
(*   %xor2.i318.3 = and i64 %shl.i.3, %7 *)
(* You may need to modify here *)
and uint64 v_xor2_i318_3 v_shl_i_3 v7;
(*   %shr.i319.3 = lshr i64 %xor2.i318.3, 63 *)
(* You may need to modify here *)
split v_shr_i319_3 tmp_to_be_used v_xor2_i318_3 63;
(*   %add20.3 = add i64 %shr.i319.3, %xor2569.i.3 *)
adds discard_19 v_add20_3 v_shr_i319_3 v_xor2569_i_3;
(* Heuristics applied. *)
assert true && eq discard_19 0@1;
assume eq discard_19 0 && true;
(*   %8 = xor i64 %add20.3, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v8 v_add20_3 (0x8000000000000000)@uint64;
(*   %xor2.i312.3 = and i64 %8, %add23.i.3 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_3 v8 v_add23_i_3;
(*   %or25327.3 = lshr i64 %xor2.i312.3, 63 *)
(* You may need to modify here *)
split v_or25327_3 tmp_to_be_used v_xor2_i312_3 63;
(*   %arrayidx34.3 = getelementptr inbounds i64, i64* %ma, i64 3 *)
(*   %9 = load i64, i64* %arrayidx34.3, align 8, !tbaa !3 *)
mov v9 ma_24;
(*   %add35.3 = add i64 %9, %add16.3 *)
adds discard_20 v_add35_3 v9 v_add16_3;
(*   %xor.i297.3 = xor i64 %add35.3, %add16.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i297_3 v_add35_3 v_add16_3;
(*   %xor1.i298.3 = xor i64 %9, %add16.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i298_3 v9 v_add16_3;
(*   %or.i299.3 = or i64 %xor.i297.3, %xor1.i298.3 *)
(* You may need to modify here *)
or uint64 v_or_i299_3 v_xor_i297_3 v_xor1_i298_3;
(*   %xor2.i300.3 = xor i64 %or.i299.3, %add35.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i300_3 v_or_i299_3 v_add35_3;
(*   %shr.i301.3 = lshr i64 %xor2.i300.3, 63 *)
(* You may need to modify here *)
split v_shr_i301_3 tmp_to_be_used v_xor2_i300_3 63;
(*   %add41.3 = add i64 %shr.i301.3, %add20.3 *)
adds discard_21 v_add41_3 v_shr_i301_3 v_add20_3;
(* Heuristics applied. *)
assert true && eq discard_21 0@1;
assume eq discard_21 0 && true;
(*   %arrayidx50.3 = getelementptr inbounds i64, i64* %mc, i64 3 *)
(*   store i64 %add35.3, i64* %arrayidx50.3, align 8, !tbaa !3 *)
mov mc_24 v_add35_3;
(*   %10 = xor i64 %add41.3, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v10 v_add41_3 (0x8000000000000000)@uint64;
(*   %xor2.i294.3 = and i64 %10, %add20.3 *)
(* You may need to modify here *)
and uint64 v_xor2_i294_3 v10 v_add20_3;
(*   %shr.i295.3 = lshr i64 %xor2.i294.3, 63 *)
(* You may need to modify here *)
split v_shr_i295_3 tmp_to_be_used v_xor2_i294_3 63;
(*   %add48.3 = add nuw nsw i64 %shr.i295.3, %or25327.3 *)
adds discard_22 v_add48_3 v_shr_i295_3 v_or25327_3;
(* Heuristics applied. *)
assert true && eq discard_22 0@1;
assume eq discard_22 0 && true;
(*   %11 = load i64, i64* %mc, align 8, !tbaa !3 *)
mov v11 mc_0;
(*   %12 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434p1, i64 0, i64 4), align 16, !tbaa !3 *)
mov v12 p434p1_32;
(*   %and.i.4 = and i64 %11, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_4 v11 (0xFFFFFFFF)@uint64;
(*   %shr.i.4 = lshr i64 %11, 32 *)
(* You may need to modify here *)
split v_shr_i_4 tmp_to_be_used v11 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_4;
assume eq tmp_to_be_used v_and_i_4 && true;
(*   %and1.i.4 = and i64 %12, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_4 v12 (0xFFFFFFFF)@uint64;
(*   %shr2.i.4 = lshr i64 %12, 32 *)
(* You may need to modify here *)
split v_shr2_i_4 tmp_to_be_used v12 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_4;
assume eq tmp_to_be_used v_and1_i_4 && true;
(*   %mul.i.4 = mul nuw i64 %and1.i.4, %and.i.4 *)
mul v_mul_i_4 v_and1_i_4 v_and_i_4;
(*   %mul3.i.4 = mul nuw i64 %shr2.i.4, %and.i.4 *)
mul v_mul3_i_4 v_shr2_i_4 v_and_i_4;
(*   %mul4.i.4 = mul nuw i64 %and1.i.4, %shr.i.4 *)
mul v_mul4_i_4 v_and1_i_4 v_shr_i_4;
(*   %mul5.i.4 = mul nuw i64 %shr2.i.4, %shr.i.4 *)
mul v_mul5_i_4 v_shr2_i_4 v_shr_i_4;
(*   %and6.i.4 = and i64 %mul.i.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_4 v_mul_i_4 (0xFFFFFFFF)@uint64;
(*   %shr7.i.4 = lshr i64 %mul.i.4, 32 *)
(* You may need to modify here *)
split v_shr7_i_4 tmp_to_be_used v_mul_i_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_4;
assume eq tmp_to_be_used v_and6_i_4 && true;
(*   %and8.i.4 = and i64 %mul4.i.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_4 v_mul4_i_4 (0xFFFFFFFF)@uint64;
(*   %and9.i.4 = and i64 %mul3.i.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_4 v_mul3_i_4 (0xFFFFFFFF)@uint64;
(*   %add.i.4 = add nuw nsw i64 %shr7.i.4, %and8.i.4 *)
adds discard_23 v_add_i_4 v_shr7_i_4 v_and8_i_4;
(* Heuristics applied. *)
assert true && eq discard_23 0@1;
assume eq discard_23 0 && true;
(*   %add10.i.4 = add nuw nsw i64 %add.i.4, %and9.i.4 *)
adds discard_24 v_add10_i_4 v_add_i_4 v_and9_i_4;
(* Heuristics applied. *)
assert true && eq discard_24 0@1;
assume eq discard_24 0 && true;
(*   %shr11.i.4 = lshr i64 %add10.i.4, 32 *)
(* You may need to modify here *)
split v_shr11_i_4 tmp_to_be_used v_add10_i_4 32;
(*   %shl.i.4 = shl i64 %add10.i.4, 32 *)
shls discard_25 v_shl_i_4 v_add10_i_4 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_4 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_4 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.4 = or i64 %shl.i.4, %and6.i.4 *)
(* You may need to modify here *)
or uint64 v_xor68_i_4 v_shl_i_4 v_and6_i_4;
(* Heuristics applied. *)
assert true && eq v_xor68_i_4 v_shl_i_4 + v_and6_i_4;
assume eq v_xor68_i_4 v_shl_i_4 + v_and6_i_4 && true;
(*   %shr13.i.4 = lshr i64 %mul4.i.4, 32 *)
(* You may need to modify here *)
split v_shr13_i_4 tmp_to_be_used v_mul4_i_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_4;
assume eq tmp_to_be_used v_and8_i_4 && true;
(*   %shr14.i.4 = lshr i64 %mul3.i.4, 32 *)
(* You may need to modify here *)
split v_shr14_i_4 tmp_to_be_used v_mul3_i_4 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_4;
assume eq tmp_to_be_used v_and9_i_4 && true;
(*   %and15.i.4 = and i64 %mul5.i.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_4 v_mul5_i_4 (0xFFFFFFFF)@uint64;
(*   %add16.i.4 = add nuw nsw i64 %shr13.i.4, %shr14.i.4 *)
adds discard_26 v_add16_i_4 v_shr13_i_4 v_shr14_i_4;
(* Heuristics applied. *)
assert true && eq discard_26 0@1;
assume eq discard_26 0 && true;
(*   %add17.i.4 = add nuw nsw i64 %add16.i.4, %and15.i.4 *)
adds discard_27 v_add17_i_4 v_add16_i_4 v_and15_i_4;
(* Heuristics applied. *)
assert true && eq discard_27 0@1;
assume eq discard_27 0 && true;
(*   %add18.i.4 = add nuw nsw i64 %add17.i.4, %shr11.i.4 *)
adds discard_28 v_add18_i_4 v_add17_i_4 v_shr11_i_4;
(* Heuristics applied. *)
assert true && eq discard_28 0@1;
assume eq discard_28 0 && true;
(*   %and19.i.4 = and i64 %add18.i.4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_4 v_add18_i_4 (0xFFFFFFFF)@uint64;
(*   %and21.i.4 = and i64 %add18.i.4, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_4 v_add18_i_4 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_4 v_and21_i_4 + v_and19_i_4;
assume eq v_add18_i_4 v_and21_i_4 + v_and19_i_4 && true;
(*   %and22.i.4 = and i64 %mul5.i.4, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_4 v_mul5_i_4 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_4 v_and22_i_4 + v_and15_i_4;
assume eq v_mul5_i_4 v_and22_i_4 + v_and15_i_4 && true;
(*   %add23.i.4 = add i64 %and21.i.4, %and22.i.4 *)
adds discard_29 v_add23_i_4 v_and21_i_4 v_and22_i_4;
(* Heuristics applied. *)
assert true && eq discard_29 0@1;
assume eq discard_29 0 && true;
(*   %xor2569.i.4 = or i64 %add23.i.4, %and19.i.4 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_4 v_add23_i_4 v_and19_i_4;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_4 v_add23_i_4 + v_and19_i_4;
assume eq v_xor2569_i_4 v_add23_i_4 + v_and19_i_4 && true;
(*   %add16.4 = add i64 %xor68.i.4, %add41.3 *)
adds discard_30 v_add16_4 v_xor68_i_4 v_add41_3;
(*   %xor.i315.4 = xor i64 %add16.4, %shl.i.4 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_4 v_add16_4 v_shl_i_4;
(*   %xor1.i316.4 = xor i64 %shl.i.4, %add41.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_4 v_shl_i_4 v_add41_3;
(*   %or.i317.4 = or i64 %xor.i315.4, %xor1.i316.4 *)
(* You may need to modify here *)
or uint64 v_or_i317_4 v_xor_i315_4 v_xor1_i316_4;
(*   %xor2.i318.4 = xor i64 %or.i317.4, %add16.4 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_4 v_or_i317_4 v_add16_4;
(*   %shr.i319.4 = lshr i64 %xor2.i318.4, 63 *)
(* You may need to modify here *)
split v_shr_i319_4 tmp_to_be_used v_xor2_i318_4 63;
(*   %add20.4 = add i64 %shr.i319.4, %xor2569.i.4 *)
adds discard_31 v_add20_4 v_shr_i319_4 v_xor2569_i_4;
(* Heuristics applied. *)
assert true && eq discard_31 0@1;
assume eq discard_31 0 && true;
(*   %add21.4 = add i64 %add20.4, %add48.3 *)
adds discard_32 v_add21_4 v_add20_4 v_add48_3;
(* Heuristics applied. *)
assert true && eq discard_32 0@1;
assume eq discard_32 0 && true;
(*   %13 = xor i64 %add20.4, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v13 v_add20_4 (0x8000000000000000)@uint64;
(*   %xor2.i312.4 = and i64 %13, %add23.i.4 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_4 v13 v_add23_i_4;
(*   %xor.i303.4 = xor i64 %add21.4, %add20.4 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_4 v_add21_4 v_add20_4;
(*   %xor1.i304.4 = xor i64 %add20.4, %add48.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_4 v_add20_4 v_add48_3;
(*   %or.i305.4 = or i64 %xor.i303.4, %xor1.i304.4 *)
(* You may need to modify here *)
or uint64 v_or_i305_4 v_xor_i303_4 v_xor1_i304_4;
(*   %xor2.i306.4 = xor i64 %or.i305.4, %add21.4 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_4 v_or_i305_4 v_add21_4;
(*   %shr.i313328.4 = or i64 %xor2.i306.4, %xor2.i312.4 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_4 v_xor2_i306_4 v_xor2_i312_4;
(*   %or25327.4 = lshr i64 %shr.i313328.4, 63 *)
(* You may need to modify here *)
split v_or25327_4 tmp_to_be_used v_shr_i313328_4 63;
(*   %arrayidx9.4.1 = getelementptr inbounds i64, i64* %mc, i64 1 *)
(*   %14 = load i64, i64* %arrayidx9.4.1, align 8, !tbaa !3 *)
mov v14 mc_8;
(*   %15 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434p1, i64 0, i64 3), align 8, !tbaa !3 *)
mov v15 p434p1_24;
(*   %and.i.4.1 = and i64 %14, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_4_1 v14 (0xFFFFFFFF)@uint64;
(*   %shr.i.4.1 = lshr i64 %14, 32 *)
(* You may need to modify here *)
split v_shr_i_4_1 tmp_to_be_used v14 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_4_1;
assume eq tmp_to_be_used v_and_i_4_1 && true;
(*   %and1.i.4.1 = and i64 %15, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_4_1 v15 (0xFFFFFFFF)@uint64;
(*   %shr2.i.4.1 = lshr i64 %15, 32 *)
(* You may need to modify here *)
split v_shr2_i_4_1 tmp_to_be_used v15 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_4_1;
assume eq tmp_to_be_used v_and1_i_4_1 && true;
(*   %mul.i.4.1 = mul nuw i64 %and1.i.4.1, %and.i.4.1 *)
mul v_mul_i_4_1 v_and1_i_4_1 v_and_i_4_1;
(*   %mul3.i.4.1 = mul nuw i64 %shr2.i.4.1, %and.i.4.1 *)
mul v_mul3_i_4_1 v_shr2_i_4_1 v_and_i_4_1;
(*   %mul4.i.4.1 = mul nuw i64 %and1.i.4.1, %shr.i.4.1 *)
mul v_mul4_i_4_1 v_and1_i_4_1 v_shr_i_4_1;
(*   %mul5.i.4.1 = mul nuw i64 %shr2.i.4.1, %shr.i.4.1 *)
mul v_mul5_i_4_1 v_shr2_i_4_1 v_shr_i_4_1;
(*   %and6.i.4.1 = and i64 %mul.i.4.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_4_1 v_mul_i_4_1 (0xFFFFFFFF)@uint64;
(*   %shr7.i.4.1 = lshr i64 %mul.i.4.1, 32 *)
(* You may need to modify here *)
split v_shr7_i_4_1 tmp_to_be_used v_mul_i_4_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_4_1;
assume eq tmp_to_be_used v_and6_i_4_1 && true;
(*   %and8.i.4.1 = and i64 %mul4.i.4.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_4_1 v_mul4_i_4_1 (0xFFFFFFFF)@uint64;
(*   %and9.i.4.1 = and i64 %mul3.i.4.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_4_1 v_mul3_i_4_1 (0xFFFFFFFF)@uint64;
(*   %add.i.4.1 = add nuw nsw i64 %shr7.i.4.1, %and8.i.4.1 *)
adds discard_33 v_add_i_4_1 v_shr7_i_4_1 v_and8_i_4_1;
(* Heuristics applied. *)
assert true && eq discard_33 0@1;
assume eq discard_33 0 && true;
(*   %add10.i.4.1 = add nuw nsw i64 %add.i.4.1, %and9.i.4.1 *)
adds discard_34 v_add10_i_4_1 v_add_i_4_1 v_and9_i_4_1;
(* Heuristics applied. *)
assert true && eq discard_34 0@1;
assume eq discard_34 0 && true;
(*   %shr11.i.4.1 = lshr i64 %add10.i.4.1, 32 *)
(* You may need to modify here *)
split v_shr11_i_4_1 tmp_to_be_used v_add10_i_4_1 32;
(*   %shl.i.4.1 = shl i64 %add10.i.4.1, 32 *)
shls discard_35 v_shl_i_4_1 v_add10_i_4_1 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_4_1 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_4_1 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.4.1 = or i64 %shl.i.4.1, %and6.i.4.1 *)
(* You may need to modify here *)
or uint64 v_xor68_i_4_1 v_shl_i_4_1 v_and6_i_4_1;
(* Heuristics applied. *)
assert true && eq v_xor68_i_4_1 v_shl_i_4_1 + v_and6_i_4_1;
assume eq v_xor68_i_4_1 v_shl_i_4_1 + v_and6_i_4_1 && true;
(*   %shr13.i.4.1 = lshr i64 %mul4.i.4.1, 32 *)
(* You may need to modify here *)
split v_shr13_i_4_1 tmp_to_be_used v_mul4_i_4_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_4_1;
assume eq tmp_to_be_used v_and8_i_4_1 && true;
(*   %shr14.i.4.1 = lshr i64 %mul3.i.4.1, 32 *)
(* You may need to modify here *)
split v_shr14_i_4_1 tmp_to_be_used v_mul3_i_4_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_4_1;
assume eq tmp_to_be_used v_and9_i_4_1 && true;
(*   %and15.i.4.1 = and i64 %mul5.i.4.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_4_1 v_mul5_i_4_1 (0xFFFFFFFF)@uint64;
(*   %add16.i.4.1 = add nuw nsw i64 %shr13.i.4.1, %shr14.i.4.1 *)
adds discard_36 v_add16_i_4_1 v_shr13_i_4_1 v_shr14_i_4_1;
(* Heuristics applied. *)
assert true && eq discard_36 0@1;
assume eq discard_36 0 && true;
(*   %add17.i.4.1 = add nuw nsw i64 %add16.i.4.1, %and15.i.4.1 *)
adds discard_37 v_add17_i_4_1 v_add16_i_4_1 v_and15_i_4_1;
(* Heuristics applied. *)
assert true && eq discard_37 0@1;
assume eq discard_37 0 && true;
(*   %add18.i.4.1 = add nuw nsw i64 %add17.i.4.1, %shr11.i.4.1 *)
adds discard_38 v_add18_i_4_1 v_add17_i_4_1 v_shr11_i_4_1;
(* Heuristics applied. *)
assert true && eq discard_38 0@1;
assume eq discard_38 0 && true;
(*   %and19.i.4.1 = and i64 %add18.i.4.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_4_1 v_add18_i_4_1 (0xFFFFFFFF)@uint64;
(*   %and21.i.4.1 = and i64 %add18.i.4.1, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_4_1 v_add18_i_4_1 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_4_1 v_and21_i_4_1 + v_and19_i_4_1;
assume eq v_add18_i_4_1 v_and21_i_4_1 + v_and19_i_4_1 && true;
(*   %and22.i.4.1 = and i64 %mul5.i.4.1, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_4_1 v_mul5_i_4_1 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_4_1 v_and22_i_4_1 + v_and15_i_4_1;
assume eq v_mul5_i_4_1 v_and22_i_4_1 + v_and15_i_4_1 && true;
(*   %add23.i.4.1 = add i64 %and21.i.4.1, %and22.i.4.1 *)
adds discard_39 v_add23_i_4_1 v_and21_i_4_1 v_and22_i_4_1;
(* Heuristics applied. *)
assert true && eq discard_39 0@1;
assume eq discard_39 0 && true;
(*   %xor2569.i.4.1 = or i64 %add23.i.4.1, %and19.i.4.1 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_4_1 v_add23_i_4_1 v_and19_i_4_1;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_4_1 v_add23_i_4_1 + v_and19_i_4_1;
assume eq v_xor2569_i_4_1 v_add23_i_4_1 + v_and19_i_4_1 && true;
(*   %add16.4.1 = add i64 %xor68.i.4.1, %add16.4 *)
adds discard_40 v_add16_4_1 v_xor68_i_4_1 v_add16_4;
(*   %xor.i315.4.1 = xor i64 %add16.4.1, %shl.i.4.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_4_1 v_add16_4_1 v_shl_i_4_1;
(*   %xor1.i316.4.1 = xor i64 %shl.i.4.1, %add16.4 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_4_1 v_shl_i_4_1 v_add16_4;
(*   %or.i317.4.1 = or i64 %xor.i315.4.1, %xor1.i316.4.1 *)
(* You may need to modify here *)
or uint64 v_or_i317_4_1 v_xor_i315_4_1 v_xor1_i316_4_1;
(*   %xor2.i318.4.1 = xor i64 %or.i317.4.1, %add16.4.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_4_1 v_or_i317_4_1 v_add16_4_1;
(*   %shr.i319.4.1 = lshr i64 %xor2.i318.4.1, 63 *)
(* You may need to modify here *)
split v_shr_i319_4_1 tmp_to_be_used v_xor2_i318_4_1 63;
(*   %add20.4.1 = add i64 %shr.i319.4.1, %xor2569.i.4.1 *)
adds discard_41 v_add20_4_1 v_shr_i319_4_1 v_xor2569_i_4_1;
(* Heuristics applied. *)
assert true && eq discard_41 0@1;
assume eq discard_41 0 && true;
(*   %add21.4.1 = add i64 %add20.4.1, %add21.4 *)
adds discard_42 v_add21_4_1 v_add20_4_1 v_add21_4;
(* Heuristics applied. *)
assert true && eq discard_42 0@1;
assume eq discard_42 0 && true;
(*   %16 = xor i64 %add20.4.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v16 v_add20_4_1 (0x8000000000000000)@uint64;
(*   %xor2.i312.4.1 = and i64 %16, %add23.i.4.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_4_1 v16 v_add23_i_4_1;
(*   %xor.i303.4.1 = xor i64 %add21.4.1, %add20.4.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_4_1 v_add21_4_1 v_add20_4_1;
(*   %xor1.i304.4.1 = xor i64 %add20.4.1, %add21.4 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_4_1 v_add20_4_1 v_add21_4;
(*   %or.i305.4.1 = or i64 %xor.i303.4.1, %xor1.i304.4.1 *)
(* You may need to modify here *)
or uint64 v_or_i305_4_1 v_xor_i303_4_1 v_xor1_i304_4_1;
(*   %xor2.i306.4.1 = xor i64 %or.i305.4.1, %add21.4.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_4_1 v_or_i305_4_1 v_add21_4_1;
(*   %shr.i313328.4.1 = or i64 %xor2.i306.4.1, %xor2.i312.4.1 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_4_1 v_xor2_i306_4_1 v_xor2_i312_4_1;
(*   %or25327.4.1 = lshr i64 %shr.i313328.4.1, 63 *)
(* You may need to modify here *)
split v_or25327_4_1 tmp_to_be_used v_shr_i313328_4_1 63;
(*   %add27.4.1 = add nuw nsw i64 %or25327.4.1, %or25327.4 *)
adds discard_43 v_add27_4_1 v_or25327_4_1 v_or25327_4;
(* Heuristics applied. *)
assert true && eq discard_43 0@1;
assume eq discard_43 0 && true;
(*   %arrayidx34.4 = getelementptr inbounds i64, i64* %ma, i64 4 *)
(*   %17 = load i64, i64* %arrayidx34.4, align 8, !tbaa !3 *)
mov v17 ma_32;
(*   %add35.4 = add i64 %17, %add16.4.1 *)
adds discard_44 v_add35_4 v17 v_add16_4_1;
(*   %xor.i297.4 = xor i64 %add35.4, %add16.4.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i297_4 v_add35_4 v_add16_4_1;
(*   %xor1.i298.4 = xor i64 %17, %add16.4.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i298_4 v17 v_add16_4_1;
(*   %or.i299.4 = or i64 %xor.i297.4, %xor1.i298.4 *)
(* You may need to modify here *)
or uint64 v_or_i299_4 v_xor_i297_4 v_xor1_i298_4;
(*   %xor2.i300.4 = xor i64 %or.i299.4, %add35.4 *)
(* You may need to modify here *)
xor uint64 v_xor2_i300_4 v_or_i299_4 v_add35_4;
(*   %shr.i301.4 = lshr i64 %xor2.i300.4, 63 *)
(* You may need to modify here *)
split v_shr_i301_4 tmp_to_be_used v_xor2_i300_4 63;
(*   %add41.4 = add i64 %shr.i301.4, %add21.4.1 *)
adds discard_45 v_add41_4 v_shr_i301_4 v_add21_4_1;
(* Heuristics applied. *)
assert true && eq discard_45 0@1;
assume eq discard_45 0 && true;
(*   %arrayidx50.4 = getelementptr inbounds i64, i64* %mc, i64 4 *)
(*   store i64 %add35.4, i64* %arrayidx50.4, align 8, !tbaa !3 *)
mov mc_32 v_add35_4;
(*   %18 = xor i64 %add41.4, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v18 v_add41_4 (0x8000000000000000)@uint64;
(*   %xor2.i294.4 = and i64 %18, %add21.4.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i294_4 v18 v_add21_4_1;
(*   %shr.i295.4 = lshr i64 %xor2.i294.4, 63 *)
(* You may need to modify here *)
split v_shr_i295_4 tmp_to_be_used v_xor2_i294_4 63;
(*   %add48.4 = add nsw i64 %shr.i295.4, %add27.4.1 *)
adds discard_46 v_add48_4 v_shr_i295_4 v_add27_4_1;
(* Heuristics applied. *)
assert true && eq discard_46 0@1;
assume eq discard_46 0 && true;
(*   %19 = load i64, i64* %mc, align 8, !tbaa !3 *)
mov v19 mc_0;
(*   %20 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434p1, i64 0, i64 5), align 8, !tbaa !3 *)
mov v20 p434p1_40;
(*   %and.i.5 = and i64 %19, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_5 v19 (0xFFFFFFFF)@uint64;
(*   %shr.i.5 = lshr i64 %19, 32 *)
(* You may need to modify here *)
split v_shr_i_5 tmp_to_be_used v19 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_5;
assume eq tmp_to_be_used v_and_i_5 && true;
(*   %and1.i.5 = and i64 %20, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_5 v20 (0xFFFFFFFF)@uint64;
(*   %shr2.i.5 = lshr i64 %20, 32 *)
(* You may need to modify here *)
split v_shr2_i_5 tmp_to_be_used v20 32;
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
adds discard_47 v_add_i_5 v_shr7_i_5 v_and8_i_5;
(* Heuristics applied. *)
assert true && eq discard_47 0@1;
assume eq discard_47 0 && true;
(*   %add10.i.5 = add nuw nsw i64 %add.i.5, %and9.i.5 *)
adds discard_48 v_add10_i_5 v_add_i_5 v_and9_i_5;
(* Heuristics applied. *)
assert true && eq discard_48 0@1;
assume eq discard_48 0 && true;
(*   %shr11.i.5 = lshr i64 %add10.i.5, 32 *)
(* You may need to modify here *)
split v_shr11_i_5 tmp_to_be_used v_add10_i_5 32;
(*   %shl.i.5 = shl i64 %add10.i.5, 32 *)
shls discard_49 v_shl_i_5 v_add10_i_5 32;
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
adds discard_50 v_add16_i_5 v_shr13_i_5 v_shr14_i_5;
(* Heuristics applied. *)
assert true && eq discard_50 0@1;
assume eq discard_50 0 && true;
(*   %add17.i.5 = add nuw nsw i64 %add16.i.5, %and15.i.5 *)
adds discard_51 v_add17_i_5 v_add16_i_5 v_and15_i_5;
(* Heuristics applied. *)
assert true && eq discard_51 0@1;
assume eq discard_51 0 && true;
(*   %add18.i.5 = add nuw nsw i64 %add17.i.5, %shr11.i.5 *)
adds discard_52 v_add18_i_5 v_add17_i_5 v_shr11_i_5;
(* Heuristics applied. *)
assert true && eq discard_52 0@1;
assume eq discard_52 0 && true;
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
adds discard_53 v_add23_i_5 v_and21_i_5 v_and22_i_5;
(* Heuristics applied. *)
assert true && eq discard_53 0@1;
assume eq discard_53 0 && true;
(*   %xor2569.i.5 = or i64 %add23.i.5, %and19.i.5 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_5 v_add23_i_5 v_and19_i_5;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_5 v_add23_i_5 + v_and19_i_5;
assume eq v_xor2569_i_5 v_add23_i_5 + v_and19_i_5 && true;
(*   %add16.5 = add i64 %xor68.i.5, %add41.4 *)
adds discard_54 v_add16_5 v_xor68_i_5 v_add41_4;
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
(*   %add20.5 = add i64 %shr.i319.5, %xor2569.i.5 *)
adds discard_55 v_add20_5 v_shr_i319_5 v_xor2569_i_5;
(* Heuristics applied. *)
assert true && eq discard_55 0@1;
assume eq discard_55 0 && true;
(*   %add21.5 = add i64 %add20.5, %add48.4 *)
adds discard_56 v_add21_5 v_add20_5 v_add48_4;
(* Heuristics applied. *)
assert true && eq discard_56 0@1;
assume eq discard_56 0 && true;
(*   %21 = xor i64 %add20.5, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v21 v_add20_5 (0x8000000000000000)@uint64;
(*   %xor2.i312.5 = and i64 %21, %add23.i.5 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_5 v21 v_add23_i_5;
(*   %xor.i303.5 = xor i64 %add21.5, %add20.5 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_5 v_add21_5 v_add20_5;
(*   %xor1.i304.5 = xor i64 %add20.5, %add48.4 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_5 v_add20_5 v_add48_4;
(*   %or.i305.5 = or i64 %xor.i303.5, %xor1.i304.5 *)
(* You may need to modify here *)
or uint64 v_or_i305_5 v_xor_i303_5 v_xor1_i304_5;
(*   %xor2.i306.5 = xor i64 %or.i305.5, %add21.5 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_5 v_or_i305_5 v_add21_5;
(*   %shr.i313328.5 = or i64 %xor2.i306.5, %xor2.i312.5 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_5 v_xor2_i306_5 v_xor2_i312_5;
(*   %or25327.5 = lshr i64 %shr.i313328.5, 63 *)
(* You may need to modify here *)
split v_or25327_5 tmp_to_be_used v_shr_i313328_5 63;
(*   %arrayidx9.5.1 = getelementptr inbounds i64, i64* %mc, i64 1 *)
(*   %22 = load i64, i64* %arrayidx9.5.1, align 8, !tbaa !3 *)
mov v22 mc_8;
(*   %23 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434p1, i64 0, i64 4), align 16, !tbaa !3 *)
mov v23 p434p1_32;
(*   %and.i.5.1 = and i64 %22, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_5_1 v22 (0xFFFFFFFF)@uint64;
(*   %shr.i.5.1 = lshr i64 %22, 32 *)
(* You may need to modify here *)
split v_shr_i_5_1 tmp_to_be_used v22 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_5_1;
assume eq tmp_to_be_used v_and_i_5_1 && true;
(*   %and1.i.5.1 = and i64 %23, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_5_1 v23 (0xFFFFFFFF)@uint64;
(*   %shr2.i.5.1 = lshr i64 %23, 32 *)
(* You may need to modify here *)
split v_shr2_i_5_1 tmp_to_be_used v23 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_5_1;
assume eq tmp_to_be_used v_and1_i_5_1 && true;
(*   %mul.i.5.1 = mul nuw i64 %and1.i.5.1, %and.i.5.1 *)
mul v_mul_i_5_1 v_and1_i_5_1 v_and_i_5_1;
(*   %mul3.i.5.1 = mul nuw i64 %shr2.i.5.1, %and.i.5.1 *)
mul v_mul3_i_5_1 v_shr2_i_5_1 v_and_i_5_1;
(*   %mul4.i.5.1 = mul nuw i64 %and1.i.5.1, %shr.i.5.1 *)
mul v_mul4_i_5_1 v_and1_i_5_1 v_shr_i_5_1;
(*   %mul5.i.5.1 = mul nuw i64 %shr2.i.5.1, %shr.i.5.1 *)
mul v_mul5_i_5_1 v_shr2_i_5_1 v_shr_i_5_1;
(*   %and6.i.5.1 = and i64 %mul.i.5.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_5_1 v_mul_i_5_1 (0xFFFFFFFF)@uint64;
(*   %shr7.i.5.1 = lshr i64 %mul.i.5.1, 32 *)
(* You may need to modify here *)
split v_shr7_i_5_1 tmp_to_be_used v_mul_i_5_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_5_1;
assume eq tmp_to_be_used v_and6_i_5_1 && true;
(*   %and8.i.5.1 = and i64 %mul4.i.5.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_5_1 v_mul4_i_5_1 (0xFFFFFFFF)@uint64;
(*   %and9.i.5.1 = and i64 %mul3.i.5.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_5_1 v_mul3_i_5_1 (0xFFFFFFFF)@uint64;
(*   %add.i.5.1 = add nuw nsw i64 %shr7.i.5.1, %and8.i.5.1 *)
adds discard_57 v_add_i_5_1 v_shr7_i_5_1 v_and8_i_5_1;
(* Heuristics applied. *)
assert true && eq discard_57 0@1;
assume eq discard_57 0 && true;
(*   %add10.i.5.1 = add nuw nsw i64 %add.i.5.1, %and9.i.5.1 *)
adds discard_58 v_add10_i_5_1 v_add_i_5_1 v_and9_i_5_1;
(* Heuristics applied. *)
assert true && eq discard_58 0@1;
assume eq discard_58 0 && true;
(*   %shr11.i.5.1 = lshr i64 %add10.i.5.1, 32 *)
(* You may need to modify here *)
split v_shr11_i_5_1 tmp_to_be_used v_add10_i_5_1 32;
(*   %shl.i.5.1 = shl i64 %add10.i.5.1, 32 *)
shls discard_59 v_shl_i_5_1 v_add10_i_5_1 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_5_1 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_5_1 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.5.1 = or i64 %shl.i.5.1, %and6.i.5.1 *)
(* You may need to modify here *)
or uint64 v_xor68_i_5_1 v_shl_i_5_1 v_and6_i_5_1;
(* Heuristics applied. *)
assert true && eq v_xor68_i_5_1 v_shl_i_5_1 + v_and6_i_5_1;
assume eq v_xor68_i_5_1 v_shl_i_5_1 + v_and6_i_5_1 && true;
(*   %shr13.i.5.1 = lshr i64 %mul4.i.5.1, 32 *)
(* You may need to modify here *)
split v_shr13_i_5_1 tmp_to_be_used v_mul4_i_5_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_5_1;
assume eq tmp_to_be_used v_and8_i_5_1 && true;
(*   %shr14.i.5.1 = lshr i64 %mul3.i.5.1, 32 *)
(* You may need to modify here *)
split v_shr14_i_5_1 tmp_to_be_used v_mul3_i_5_1 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_5_1;
assume eq tmp_to_be_used v_and9_i_5_1 && true;
(*   %and15.i.5.1 = and i64 %mul5.i.5.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_5_1 v_mul5_i_5_1 (0xFFFFFFFF)@uint64;
(*   %add16.i.5.1 = add nuw nsw i64 %shr13.i.5.1, %shr14.i.5.1 *)
adds discard_60 v_add16_i_5_1 v_shr13_i_5_1 v_shr14_i_5_1;
(* Heuristics applied. *)
assert true && eq discard_60 0@1;
assume eq discard_60 0 && true;
(*   %add17.i.5.1 = add nuw nsw i64 %add16.i.5.1, %and15.i.5.1 *)
adds discard_61 v_add17_i_5_1 v_add16_i_5_1 v_and15_i_5_1;
(* Heuristics applied. *)
assert true && eq discard_61 0@1;
assume eq discard_61 0 && true;
(*   %add18.i.5.1 = add nuw nsw i64 %add17.i.5.1, %shr11.i.5.1 *)
adds discard_62 v_add18_i_5_1 v_add17_i_5_1 v_shr11_i_5_1;
(* Heuristics applied. *)
assert true && eq discard_62 0@1;
assume eq discard_62 0 && true;
(*   %and19.i.5.1 = and i64 %add18.i.5.1, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_5_1 v_add18_i_5_1 (0xFFFFFFFF)@uint64;
(*   %and21.i.5.1 = and i64 %add18.i.5.1, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_5_1 v_add18_i_5_1 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_5_1 v_and21_i_5_1 + v_and19_i_5_1;
assume eq v_add18_i_5_1 v_and21_i_5_1 + v_and19_i_5_1 && true;
(*   %and22.i.5.1 = and i64 %mul5.i.5.1, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_5_1 v_mul5_i_5_1 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_5_1 v_and22_i_5_1 + v_and15_i_5_1;
assume eq v_mul5_i_5_1 v_and22_i_5_1 + v_and15_i_5_1 && true;
(*   %add23.i.5.1 = add i64 %and21.i.5.1, %and22.i.5.1 *)
adds discard_63 v_add23_i_5_1 v_and21_i_5_1 v_and22_i_5_1;
(* Heuristics applied. *)
assert true && eq discard_63 0@1;
assume eq discard_63 0 && true;
(*   %xor2569.i.5.1 = or i64 %add23.i.5.1, %and19.i.5.1 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_5_1 v_add23_i_5_1 v_and19_i_5_1;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_5_1 v_add23_i_5_1 + v_and19_i_5_1;
assume eq v_xor2569_i_5_1 v_add23_i_5_1 + v_and19_i_5_1 && true;
(*   %add16.5.1 = add i64 %xor68.i.5.1, %add16.5 *)
adds discard_64 v_add16_5_1 v_xor68_i_5_1 v_add16_5;
(*   %xor.i315.5.1 = xor i64 %add16.5.1, %shl.i.5.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_5_1 v_add16_5_1 v_shl_i_5_1;
(*   %xor1.i316.5.1 = xor i64 %shl.i.5.1, %add16.5 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_5_1 v_shl_i_5_1 v_add16_5;
(*   %or.i317.5.1 = or i64 %xor.i315.5.1, %xor1.i316.5.1 *)
(* You may need to modify here *)
or uint64 v_or_i317_5_1 v_xor_i315_5_1 v_xor1_i316_5_1;
(*   %xor2.i318.5.1 = xor i64 %or.i317.5.1, %add16.5.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_5_1 v_or_i317_5_1 v_add16_5_1;
(*   %shr.i319.5.1 = lshr i64 %xor2.i318.5.1, 63 *)
(* You may need to modify here *)
split v_shr_i319_5_1 tmp_to_be_used v_xor2_i318_5_1 63;
(*   %add20.5.1 = add i64 %shr.i319.5.1, %xor2569.i.5.1 *)
adds discard_65 v_add20_5_1 v_shr_i319_5_1 v_xor2569_i_5_1;
(* Heuristics applied. *)
assert true && eq discard_65 0@1;
assume eq discard_65 0 && true;
(*   %add21.5.1 = add i64 %add20.5.1, %add21.5 *)
adds discard_66 v_add21_5_1 v_add20_5_1 v_add21_5;
(* Heuristics applied. *)
assert true && eq discard_66 0@1;
assume eq discard_66 0 && true;
(*   %24 = xor i64 %add20.5.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v24 v_add20_5_1 (0x8000000000000000)@uint64;
(*   %xor2.i312.5.1 = and i64 %24, %add23.i.5.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_5_1 v24 v_add23_i_5_1;
(*   %xor.i303.5.1 = xor i64 %add21.5.1, %add20.5.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_5_1 v_add21_5_1 v_add20_5_1;
(*   %xor1.i304.5.1 = xor i64 %add20.5.1, %add21.5 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_5_1 v_add20_5_1 v_add21_5;
(*   %or.i305.5.1 = or i64 %xor.i303.5.1, %xor1.i304.5.1 *)
(* You may need to modify here *)
or uint64 v_or_i305_5_1 v_xor_i303_5_1 v_xor1_i304_5_1;
(*   %xor2.i306.5.1 = xor i64 %or.i305.5.1, %add21.5.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_5_1 v_or_i305_5_1 v_add21_5_1;
(*   %shr.i313328.5.1 = or i64 %xor2.i306.5.1, %xor2.i312.5.1 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_5_1 v_xor2_i306_5_1 v_xor2_i312_5_1;
(*   %or25327.5.1 = lshr i64 %shr.i313328.5.1, 63 *)
(* You may need to modify here *)
split v_or25327_5_1 tmp_to_be_used v_shr_i313328_5_1 63;
(*   %add27.5.1 = add nuw nsw i64 %or25327.5.1, %or25327.5 *)
adds discard_67 v_add27_5_1 v_or25327_5_1 v_or25327_5;
(* Heuristics applied. *)
assert true && eq discard_67 0@1;
assume eq discard_67 0 && true;
(*   %arrayidx9.5.2 = getelementptr inbounds i64, i64* %mc, i64 2 *)
(*   %25 = load i64, i64* %arrayidx9.5.2, align 8, !tbaa !3 *)
mov v25 mc_16;
(*   %26 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434p1, i64 0, i64 3), align 8, !tbaa !3 *)
mov v26 p434p1_24;
(*   %and.i.5.2 = and i64 %25, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_5_2 v25 (0xFFFFFFFF)@uint64;
(*   %shr.i.5.2 = lshr i64 %25, 32 *)
(* You may need to modify here *)
split v_shr_i_5_2 tmp_to_be_used v25 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_5_2;
assume eq tmp_to_be_used v_and_i_5_2 && true;
(*   %and1.i.5.2 = and i64 %26, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_5_2 v26 (0xFFFFFFFF)@uint64;
(*   %shr2.i.5.2 = lshr i64 %26, 32 *)
(* You may need to modify here *)
split v_shr2_i_5_2 tmp_to_be_used v26 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_5_2;
assume eq tmp_to_be_used v_and1_i_5_2 && true;
(*   %mul.i.5.2 = mul nuw i64 %and1.i.5.2, %and.i.5.2 *)
mul v_mul_i_5_2 v_and1_i_5_2 v_and_i_5_2;
(*   %mul3.i.5.2 = mul nuw i64 %shr2.i.5.2, %and.i.5.2 *)
mul v_mul3_i_5_2 v_shr2_i_5_2 v_and_i_5_2;
(*   %mul4.i.5.2 = mul nuw i64 %and1.i.5.2, %shr.i.5.2 *)
mul v_mul4_i_5_2 v_and1_i_5_2 v_shr_i_5_2;
(*   %mul5.i.5.2 = mul nuw i64 %shr2.i.5.2, %shr.i.5.2 *)
mul v_mul5_i_5_2 v_shr2_i_5_2 v_shr_i_5_2;
(*   %and6.i.5.2 = and i64 %mul.i.5.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_5_2 v_mul_i_5_2 (0xFFFFFFFF)@uint64;
(*   %shr7.i.5.2 = lshr i64 %mul.i.5.2, 32 *)
(* You may need to modify here *)
split v_shr7_i_5_2 tmp_to_be_used v_mul_i_5_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_5_2;
assume eq tmp_to_be_used v_and6_i_5_2 && true;
(*   %and8.i.5.2 = and i64 %mul4.i.5.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_5_2 v_mul4_i_5_2 (0xFFFFFFFF)@uint64;
(*   %and9.i.5.2 = and i64 %mul3.i.5.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_5_2 v_mul3_i_5_2 (0xFFFFFFFF)@uint64;
(*   %add.i.5.2 = add nuw nsw i64 %shr7.i.5.2, %and8.i.5.2 *)
adds discard_68 v_add_i_5_2 v_shr7_i_5_2 v_and8_i_5_2;
(* Heuristics applied. *)
assert true && eq discard_68 0@1;
assume eq discard_68 0 && true;
(*   %add10.i.5.2 = add nuw nsw i64 %add.i.5.2, %and9.i.5.2 *)
adds discard_69 v_add10_i_5_2 v_add_i_5_2 v_and9_i_5_2;
(* Heuristics applied. *)
assert true && eq discard_69 0@1;
assume eq discard_69 0 && true;
(*   %shr11.i.5.2 = lshr i64 %add10.i.5.2, 32 *)
(* You may need to modify here *)
split v_shr11_i_5_2 tmp_to_be_used v_add10_i_5_2 32;
(*   %shl.i.5.2 = shl i64 %add10.i.5.2, 32 *)
shls discard_70 v_shl_i_5_2 v_add10_i_5_2 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_5_2 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_5_2 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.5.2 = or i64 %shl.i.5.2, %and6.i.5.2 *)
(* You may need to modify here *)
or uint64 v_xor68_i_5_2 v_shl_i_5_2 v_and6_i_5_2;
(* Heuristics applied. *)
assert true && eq v_xor68_i_5_2 v_shl_i_5_2 + v_and6_i_5_2;
assume eq v_xor68_i_5_2 v_shl_i_5_2 + v_and6_i_5_2 && true;
(*   %shr13.i.5.2 = lshr i64 %mul4.i.5.2, 32 *)
(* You may need to modify here *)
split v_shr13_i_5_2 tmp_to_be_used v_mul4_i_5_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_5_2;
assume eq tmp_to_be_used v_and8_i_5_2 && true;
(*   %shr14.i.5.2 = lshr i64 %mul3.i.5.2, 32 *)
(* You may need to modify here *)
split v_shr14_i_5_2 tmp_to_be_used v_mul3_i_5_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_5_2;
assume eq tmp_to_be_used v_and9_i_5_2 && true;
(*   %and15.i.5.2 = and i64 %mul5.i.5.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_5_2 v_mul5_i_5_2 (0xFFFFFFFF)@uint64;
(*   %add16.i.5.2 = add nuw nsw i64 %shr13.i.5.2, %shr14.i.5.2 *)
adds discard_71 v_add16_i_5_2 v_shr13_i_5_2 v_shr14_i_5_2;
(* Heuristics applied. *)
assert true && eq discard_71 0@1;
assume eq discard_71 0 && true;
(*   %add17.i.5.2 = add nuw nsw i64 %add16.i.5.2, %and15.i.5.2 *)
adds discard_72 v_add17_i_5_2 v_add16_i_5_2 v_and15_i_5_2;
(* Heuristics applied. *)
assert true && eq discard_72 0@1;
assume eq discard_72 0 && true;
(*   %add18.i.5.2 = add nuw nsw i64 %add17.i.5.2, %shr11.i.5.2 *)
adds discard_73 v_add18_i_5_2 v_add17_i_5_2 v_shr11_i_5_2;
(* Heuristics applied. *)
assert true && eq discard_73 0@1;
assume eq discard_73 0 && true;
(*   %and19.i.5.2 = and i64 %add18.i.5.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_5_2 v_add18_i_5_2 (0xFFFFFFFF)@uint64;
(*   %and21.i.5.2 = and i64 %add18.i.5.2, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_5_2 v_add18_i_5_2 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_5_2 v_and21_i_5_2 + v_and19_i_5_2;
assume eq v_add18_i_5_2 v_and21_i_5_2 + v_and19_i_5_2 && true;
(*   %and22.i.5.2 = and i64 %mul5.i.5.2, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_5_2 v_mul5_i_5_2 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_5_2 v_and22_i_5_2 + v_and15_i_5_2;
assume eq v_mul5_i_5_2 v_and22_i_5_2 + v_and15_i_5_2 && true;
(*   %add23.i.5.2 = add i64 %and21.i.5.2, %and22.i.5.2 *)
adds discard_74 v_add23_i_5_2 v_and21_i_5_2 v_and22_i_5_2;
(* Heuristics applied. *)
assert true && eq discard_74 0@1;
assume eq discard_74 0 && true;
(*   %xor2569.i.5.2 = or i64 %add23.i.5.2, %and19.i.5.2 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_5_2 v_add23_i_5_2 v_and19_i_5_2;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_5_2 v_add23_i_5_2 + v_and19_i_5_2;
assume eq v_xor2569_i_5_2 v_add23_i_5_2 + v_and19_i_5_2 && true;
(*   %add16.5.2 = add i64 %xor68.i.5.2, %add16.5.1 *)
adds discard_75 v_add16_5_2 v_xor68_i_5_2 v_add16_5_1;
(*   %xor.i315.5.2 = xor i64 %add16.5.2, %shl.i.5.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_5_2 v_add16_5_2 v_shl_i_5_2;
(*   %xor1.i316.5.2 = xor i64 %shl.i.5.2, %add16.5.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_5_2 v_shl_i_5_2 v_add16_5_1;
(*   %or.i317.5.2 = or i64 %xor.i315.5.2, %xor1.i316.5.2 *)
(* You may need to modify here *)
or uint64 v_or_i317_5_2 v_xor_i315_5_2 v_xor1_i316_5_2;
(*   %xor2.i318.5.2 = xor i64 %or.i317.5.2, %add16.5.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_5_2 v_or_i317_5_2 v_add16_5_2;
(*   %shr.i319.5.2 = lshr i64 %xor2.i318.5.2, 63 *)
(* You may need to modify here *)
split v_shr_i319_5_2 tmp_to_be_used v_xor2_i318_5_2 63;
(*   %add20.5.2 = add i64 %shr.i319.5.2, %xor2569.i.5.2 *)
adds discard_76 v_add20_5_2 v_shr_i319_5_2 v_xor2569_i_5_2;
(* Heuristics applied. *)
assert true && eq discard_76 0@1;
assume eq discard_76 0 && true;
(*   %add21.5.2 = add i64 %add20.5.2, %add21.5.1 *)
adds discard_77 v_add21_5_2 v_add20_5_2 v_add21_5_1;
(* Heuristics applied. *)
assert true && eq discard_77 0@1;
assume eq discard_77 0 && true;
(*   %27 = xor i64 %add20.5.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v27 v_add20_5_2 (0x8000000000000000)@uint64;
(*   %xor2.i312.5.2 = and i64 %27, %add23.i.5.2 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_5_2 v27 v_add23_i_5_2;
(*   %xor.i303.5.2 = xor i64 %add21.5.2, %add20.5.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_5_2 v_add21_5_2 v_add20_5_2;
(*   %xor1.i304.5.2 = xor i64 %add20.5.2, %add21.5.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_5_2 v_add20_5_2 v_add21_5_1;
(*   %or.i305.5.2 = or i64 %xor.i303.5.2, %xor1.i304.5.2 *)
(* You may need to modify here *)
or uint64 v_or_i305_5_2 v_xor_i303_5_2 v_xor1_i304_5_2;
(*   %xor2.i306.5.2 = xor i64 %or.i305.5.2, %add21.5.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_5_2 v_or_i305_5_2 v_add21_5_2;
(*   %shr.i313328.5.2 = or i64 %xor2.i306.5.2, %xor2.i312.5.2 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_5_2 v_xor2_i306_5_2 v_xor2_i312_5_2;
(*   %or25327.5.2 = lshr i64 %shr.i313328.5.2, 63 *)
(* You may need to modify here *)
split v_or25327_5_2 tmp_to_be_used v_shr_i313328_5_2 63;
(*   %add27.5.2 = add nsw i64 %or25327.5.2, %add27.5.1 *)
adds discard_78 v_add27_5_2 v_or25327_5_2 v_add27_5_1;
(* Heuristics applied. *)
assert true && eq discard_78 0@1;
assume eq discard_78 0 && true;
(*   %arrayidx34.5 = getelementptr inbounds i64, i64* %ma, i64 5 *)
(*   %28 = load i64, i64* %arrayidx34.5, align 8, !tbaa !3 *)
mov v28 ma_40;
(*   %add35.5 = add i64 %28, %add16.5.2 *)
adds discard_79 v_add35_5 v28 v_add16_5_2;
(*   %xor.i297.5 = xor i64 %add35.5, %add16.5.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i297_5 v_add35_5 v_add16_5_2;
(*   %xor1.i298.5 = xor i64 %28, %add16.5.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i298_5 v28 v_add16_5_2;
(*   %or.i299.5 = or i64 %xor.i297.5, %xor1.i298.5 *)
(* You may need to modify here *)
or uint64 v_or_i299_5 v_xor_i297_5 v_xor1_i298_5;
(*   %xor2.i300.5 = xor i64 %or.i299.5, %add35.5 *)
(* You may need to modify here *)
xor uint64 v_xor2_i300_5 v_or_i299_5 v_add35_5;
(*   %shr.i301.5 = lshr i64 %xor2.i300.5, 63 *)
(* You may need to modify here *)
split v_shr_i301_5 tmp_to_be_used v_xor2_i300_5 63;
(*   %add41.5 = add i64 %shr.i301.5, %add21.5.2 *)
adds discard_80 v_add41_5 v_shr_i301_5 v_add21_5_2;
(* Heuristics applied. *)
assert true && eq discard_80 0@1;
assume eq discard_80 0 && true;
(*   %arrayidx50.5 = getelementptr inbounds i64, i64* %mc, i64 5 *)
(*   store i64 %add35.5, i64* %arrayidx50.5, align 8, !tbaa !3 *)
mov mc_40 v_add35_5;
(*   %29 = xor i64 %add41.5, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v29 v_add41_5 (0x8000000000000000)@uint64;
(*   %xor2.i294.5 = and i64 %29, %add21.5.2 *)
(* You may need to modify here *)
and uint64 v_xor2_i294_5 v29 v_add21_5_2;
(*   %shr.i295.5 = lshr i64 %xor2.i294.5, 63 *)
(* You may need to modify here *)
split v_shr_i295_5 tmp_to_be_used v_xor2_i294_5 63;
(*   %add48.5 = add nsw i64 %shr.i295.5, %add27.5.2 *)
adds discard_81 v_add48_5 v_shr_i295_5 v_add27_5_2;
(* Heuristics applied. *)
assert true && eq discard_81 0@1;
assume eq discard_81 0 && true;
(*   %30 = load i64, i64* %mc, align 8, !tbaa !3 *)
mov v30 mc_0;
(*   %31 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434p1, i64 0, i64 6), align 16, !tbaa !3 *)
mov v31 p434p1_48;
(*   %and.i.6 = and i64 %30, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_6 v30 (0xFFFFFFFF)@uint64;
(*   %shr.i.6 = lshr i64 %30, 32 *)
(* You may need to modify here *)
split v_shr_i_6 tmp_to_be_used v30 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_6;
assume eq tmp_to_be_used v_and_i_6 && true;
(*   %and1.i.6 = and i64 %31, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_6 v31 (0xFFFFFFFF)@uint64;
(*   %shr2.i.6 = lshr i64 %31, 32 *)
(* You may need to modify here *)
split v_shr2_i_6 tmp_to_be_used v31 32;
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
adds discard_82 v_add_i_6 v_shr7_i_6 v_and8_i_6;
(* Heuristics applied. *)
assert true && eq discard_82 0@1;
assume eq discard_82 0 && true;
(*   %add10.i.6 = add nuw nsw i64 %add.i.6, %and9.i.6 *)
adds discard_83 v_add10_i_6 v_add_i_6 v_and9_i_6;
(* Heuristics applied. *)
assert true && eq discard_83 0@1;
assume eq discard_83 0 && true;
(*   %shr11.i.6 = lshr i64 %add10.i.6, 32 *)
(* You may need to modify here *)
split v_shr11_i_6 tmp_to_be_used v_add10_i_6 32;
(*   %shl.i.6 = shl i64 %add10.i.6, 32 *)
shls discard_84 v_shl_i_6 v_add10_i_6 32;
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
adds discard_85 v_add16_i_6 v_shr13_i_6 v_shr14_i_6;
(* Heuristics applied. *)
assert true && eq discard_85 0@1;
assume eq discard_85 0 && true;
(*   %add17.i.6 = add nuw nsw i64 %add16.i.6, %and15.i.6 *)
adds discard_86 v_add17_i_6 v_add16_i_6 v_and15_i_6;
(* Heuristics applied. *)
assert true && eq discard_86 0@1;
assume eq discard_86 0 && true;
(*   %add18.i.6 = add nuw nsw i64 %add17.i.6, %shr11.i.6 *)
adds discard_87 v_add18_i_6 v_add17_i_6 v_shr11_i_6;
(* Heuristics applied. *)
assert true && eq discard_87 0@1;
assume eq discard_87 0 && true;
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
adds discard_88 v_add23_i_6 v_and21_i_6 v_and22_i_6;
(* Heuristics applied. *)
assert true && eq discard_88 0@1;
assume eq discard_88 0 && true;
(*   %xor2569.i.6 = or i64 %add23.i.6, %and19.i.6 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_6 v_add23_i_6 v_and19_i_6;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_6 v_add23_i_6 + v_and19_i_6;
assume eq v_xor2569_i_6 v_add23_i_6 + v_and19_i_6 && true;
(*   %add16.6 = add i64 %xor68.i.6, %add41.5 *)
adds discard_89 v_add16_6 v_xor68_i_6 v_add41_5;
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
(*   %add20.6 = add i64 %shr.i319.6, %xor2569.i.6 *)
adds discard_90 v_add20_6 v_shr_i319_6 v_xor2569_i_6;
(* Heuristics applied. *)
assert true && eq discard_90 0@1;
assume eq discard_90 0 && true;
(*   %add21.6 = add i64 %add20.6, %add48.5 *)
adds discard_91 v_add21_6 v_add20_6 v_add48_5;
(* Heuristics applied. *)
assert true && eq discard_91 0@1;
assume eq discard_91 0 && true;
(*   %32 = xor i64 %add20.6, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v32 v_add20_6 (0x8000000000000000)@uint64;
(*   %xor2.i312.6 = and i64 %32, %add23.i.6 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_6 v32 v_add23_i_6;
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
(*   %arrayidx9.6.1 = getelementptr inbounds i64, i64* %mc, i64 1 *)
(*   %33 = load i64, i64* %arrayidx9.6.1, align 8, !tbaa !3 *)
mov v33 mc_8;
(*   %34 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434p1, i64 0, i64 5), align 8, !tbaa !3 *)
mov v34 p434p1_40;
(*   %and.i.6.1 = and i64 %33, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_6_1 v33 (0xFFFFFFFF)@uint64;
(*   %shr.i.6.1 = lshr i64 %33, 32 *)
(* You may need to modify here *)
split v_shr_i_6_1 tmp_to_be_used v33 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_6_1;
assume eq tmp_to_be_used v_and_i_6_1 && true;
(*   %and1.i.6.1 = and i64 %34, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_6_1 v34 (0xFFFFFFFF)@uint64;
(*   %shr2.i.6.1 = lshr i64 %34, 32 *)
(* You may need to modify here *)
split v_shr2_i_6_1 tmp_to_be_used v34 32;
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
adds discard_92 v_add_i_6_1 v_shr7_i_6_1 v_and8_i_6_1;
(* Heuristics applied. *)
assert true && eq discard_92 0@1;
assume eq discard_92 0 && true;
(*   %add10.i.6.1 = add nuw nsw i64 %add.i.6.1, %and9.i.6.1 *)
adds discard_93 v_add10_i_6_1 v_add_i_6_1 v_and9_i_6_1;
(* Heuristics applied. *)
assert true && eq discard_93 0@1;
assume eq discard_93 0 && true;
(*   %shr11.i.6.1 = lshr i64 %add10.i.6.1, 32 *)
(* You may need to modify here *)
split v_shr11_i_6_1 tmp_to_be_used v_add10_i_6_1 32;
(*   %shl.i.6.1 = shl i64 %add10.i.6.1, 32 *)
shls discard_94 v_shl_i_6_1 v_add10_i_6_1 32;
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
adds discard_95 v_add16_i_6_1 v_shr13_i_6_1 v_shr14_i_6_1;
(* Heuristics applied. *)
assert true && eq discard_95 0@1;
assume eq discard_95 0 && true;
(*   %add17.i.6.1 = add nuw nsw i64 %add16.i.6.1, %and15.i.6.1 *)
adds discard_96 v_add17_i_6_1 v_add16_i_6_1 v_and15_i_6_1;
(* Heuristics applied. *)
assert true && eq discard_96 0@1;
assume eq discard_96 0 && true;
(*   %add18.i.6.1 = add nuw nsw i64 %add17.i.6.1, %shr11.i.6.1 *)
adds discard_97 v_add18_i_6_1 v_add17_i_6_1 v_shr11_i_6_1;
(* Heuristics applied. *)
assert true && eq discard_97 0@1;
assume eq discard_97 0 && true;
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
adds discard_98 v_add23_i_6_1 v_and21_i_6_1 v_and22_i_6_1;
(* Heuristics applied. *)
assert true && eq discard_98 0@1;
assume eq discard_98 0 && true;
(*   %xor2569.i.6.1 = or i64 %add23.i.6.1, %and19.i.6.1 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_6_1 v_add23_i_6_1 v_and19_i_6_1;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_6_1 v_add23_i_6_1 + v_and19_i_6_1;
assume eq v_xor2569_i_6_1 v_add23_i_6_1 + v_and19_i_6_1 && true;
(*   %add16.6.1 = add i64 %xor68.i.6.1, %add16.6 *)
adds discard_99 v_add16_6_1 v_xor68_i_6_1 v_add16_6;
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
(*   %add20.6.1 = add i64 %shr.i319.6.1, %xor2569.i.6.1 *)
adds discard_100 v_add20_6_1 v_shr_i319_6_1 v_xor2569_i_6_1;
(* Heuristics applied. *)
assert true && eq discard_100 0@1;
assume eq discard_100 0 && true;
(*   %add21.6.1 = add i64 %add20.6.1, %add21.6 *)
adds discard_101 v_add21_6_1 v_add20_6_1 v_add21_6;
(* Heuristics applied. *)
assert true && eq discard_101 0@1;
assume eq discard_101 0 && true;
(*   %35 = xor i64 %add20.6.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v35 v_add20_6_1 (0x8000000000000000)@uint64;
(*   %xor2.i312.6.1 = and i64 %35, %add23.i.6.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_6_1 v35 v_add23_i_6_1;
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
(*   %add27.6.1 = add nuw nsw i64 %or25327.6.1, %or25327.6 *)
adds discard_102 v_add27_6_1 v_or25327_6_1 v_or25327_6;
(* Heuristics applied. *)
assert true && eq discard_102 0@1;
assume eq discard_102 0 && true;
(*   %arrayidx9.6.2 = getelementptr inbounds i64, i64* %mc, i64 2 *)
(*   %36 = load i64, i64* %arrayidx9.6.2, align 8, !tbaa !3 *)
mov v36 mc_16;
(*   %37 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434p1, i64 0, i64 4), align 16, !tbaa !3 *)
mov v37 p434p1_32;
(*   %and.i.6.2 = and i64 %36, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_6_2 v36 (0xFFFFFFFF)@uint64;
(*   %shr.i.6.2 = lshr i64 %36, 32 *)
(* You may need to modify here *)
split v_shr_i_6_2 tmp_to_be_used v36 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_6_2;
assume eq tmp_to_be_used v_and_i_6_2 && true;
(*   %and1.i.6.2 = and i64 %37, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_6_2 v37 (0xFFFFFFFF)@uint64;
(*   %shr2.i.6.2 = lshr i64 %37, 32 *)
(* You may need to modify here *)
split v_shr2_i_6_2 tmp_to_be_used v37 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_6_2;
assume eq tmp_to_be_used v_and1_i_6_2 && true;
(*   %mul.i.6.2 = mul nuw i64 %and1.i.6.2, %and.i.6.2 *)
mul v_mul_i_6_2 v_and1_i_6_2 v_and_i_6_2;
(*   %mul3.i.6.2 = mul nuw i64 %shr2.i.6.2, %and.i.6.2 *)
mul v_mul3_i_6_2 v_shr2_i_6_2 v_and_i_6_2;
(*   %mul4.i.6.2 = mul nuw i64 %and1.i.6.2, %shr.i.6.2 *)
mul v_mul4_i_6_2 v_and1_i_6_2 v_shr_i_6_2;
(*   %mul5.i.6.2 = mul nuw i64 %shr2.i.6.2, %shr.i.6.2 *)
mul v_mul5_i_6_2 v_shr2_i_6_2 v_shr_i_6_2;
(*   %and6.i.6.2 = and i64 %mul.i.6.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_6_2 v_mul_i_6_2 (0xFFFFFFFF)@uint64;
(*   %shr7.i.6.2 = lshr i64 %mul.i.6.2, 32 *)
(* You may need to modify here *)
split v_shr7_i_6_2 tmp_to_be_used v_mul_i_6_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_6_2;
assume eq tmp_to_be_used v_and6_i_6_2 && true;
(*   %and8.i.6.2 = and i64 %mul4.i.6.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_6_2 v_mul4_i_6_2 (0xFFFFFFFF)@uint64;
(*   %and9.i.6.2 = and i64 %mul3.i.6.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_6_2 v_mul3_i_6_2 (0xFFFFFFFF)@uint64;
(*   %add.i.6.2 = add nuw nsw i64 %shr7.i.6.2, %and8.i.6.2 *)
adds discard_103 v_add_i_6_2 v_shr7_i_6_2 v_and8_i_6_2;
(* Heuristics applied. *)
assert true && eq discard_103 0@1;
assume eq discard_103 0 && true;
(*   %add10.i.6.2 = add nuw nsw i64 %add.i.6.2, %and9.i.6.2 *)
adds discard_104 v_add10_i_6_2 v_add_i_6_2 v_and9_i_6_2;
(* Heuristics applied. *)
assert true && eq discard_104 0@1;
assume eq discard_104 0 && true;
(*   %shr11.i.6.2 = lshr i64 %add10.i.6.2, 32 *)
(* You may need to modify here *)
split v_shr11_i_6_2 tmp_to_be_used v_add10_i_6_2 32;
(*   %shl.i.6.2 = shl i64 %add10.i.6.2, 32 *)
shls discard_105 v_shl_i_6_2 v_add10_i_6_2 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_6_2 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_6_2 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.6.2 = or i64 %shl.i.6.2, %and6.i.6.2 *)
(* You may need to modify here *)
or uint64 v_xor68_i_6_2 v_shl_i_6_2 v_and6_i_6_2;
(* Heuristics applied. *)
assert true && eq v_xor68_i_6_2 v_shl_i_6_2 + v_and6_i_6_2;
assume eq v_xor68_i_6_2 v_shl_i_6_2 + v_and6_i_6_2 && true;
(*   %shr13.i.6.2 = lshr i64 %mul4.i.6.2, 32 *)
(* You may need to modify here *)
split v_shr13_i_6_2 tmp_to_be_used v_mul4_i_6_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_6_2;
assume eq tmp_to_be_used v_and8_i_6_2 && true;
(*   %shr14.i.6.2 = lshr i64 %mul3.i.6.2, 32 *)
(* You may need to modify here *)
split v_shr14_i_6_2 tmp_to_be_used v_mul3_i_6_2 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_6_2;
assume eq tmp_to_be_used v_and9_i_6_2 && true;
(*   %and15.i.6.2 = and i64 %mul5.i.6.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_6_2 v_mul5_i_6_2 (0xFFFFFFFF)@uint64;
(*   %add16.i.6.2 = add nuw nsw i64 %shr13.i.6.2, %shr14.i.6.2 *)
adds discard_106 v_add16_i_6_2 v_shr13_i_6_2 v_shr14_i_6_2;
(* Heuristics applied. *)
assert true && eq discard_106 0@1;
assume eq discard_106 0 && true;
(*   %add17.i.6.2 = add nuw nsw i64 %add16.i.6.2, %and15.i.6.2 *)
adds discard_107 v_add17_i_6_2 v_add16_i_6_2 v_and15_i_6_2;
(* Heuristics applied. *)
assert true && eq discard_107 0@1;
assume eq discard_107 0 && true;
(*   %add18.i.6.2 = add nuw nsw i64 %add17.i.6.2, %shr11.i.6.2 *)
adds discard_108 v_add18_i_6_2 v_add17_i_6_2 v_shr11_i_6_2;
(* Heuristics applied. *)
assert true && eq discard_108 0@1;
assume eq discard_108 0 && true;
(*   %and19.i.6.2 = and i64 %add18.i.6.2, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_6_2 v_add18_i_6_2 (0xFFFFFFFF)@uint64;
(*   %and21.i.6.2 = and i64 %add18.i.6.2, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_6_2 v_add18_i_6_2 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_6_2 v_and21_i_6_2 + v_and19_i_6_2;
assume eq v_add18_i_6_2 v_and21_i_6_2 + v_and19_i_6_2 && true;
(*   %and22.i.6.2 = and i64 %mul5.i.6.2, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_6_2 v_mul5_i_6_2 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_6_2 v_and22_i_6_2 + v_and15_i_6_2;
assume eq v_mul5_i_6_2 v_and22_i_6_2 + v_and15_i_6_2 && true;
(*   %add23.i.6.2 = add i64 %and21.i.6.2, %and22.i.6.2 *)
adds discard_109 v_add23_i_6_2 v_and21_i_6_2 v_and22_i_6_2;
(* Heuristics applied. *)
assert true && eq discard_109 0@1;
assume eq discard_109 0 && true;
(*   %xor2569.i.6.2 = or i64 %add23.i.6.2, %and19.i.6.2 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_6_2 v_add23_i_6_2 v_and19_i_6_2;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_6_2 v_add23_i_6_2 + v_and19_i_6_2;
assume eq v_xor2569_i_6_2 v_add23_i_6_2 + v_and19_i_6_2 && true;
(*   %add16.6.2 = add i64 %xor68.i.6.2, %add16.6.1 *)
adds discard_110 v_add16_6_2 v_xor68_i_6_2 v_add16_6_1;
(*   %xor.i315.6.2 = xor i64 %add16.6.2, %shl.i.6.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_6_2 v_add16_6_2 v_shl_i_6_2;
(*   %xor1.i316.6.2 = xor i64 %shl.i.6.2, %add16.6.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_6_2 v_shl_i_6_2 v_add16_6_1;
(*   %or.i317.6.2 = or i64 %xor.i315.6.2, %xor1.i316.6.2 *)
(* You may need to modify here *)
or uint64 v_or_i317_6_2 v_xor_i315_6_2 v_xor1_i316_6_2;
(*   %xor2.i318.6.2 = xor i64 %or.i317.6.2, %add16.6.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_6_2 v_or_i317_6_2 v_add16_6_2;
(*   %shr.i319.6.2 = lshr i64 %xor2.i318.6.2, 63 *)
(* You may need to modify here *)
split v_shr_i319_6_2 tmp_to_be_used v_xor2_i318_6_2 63;
(*   %add20.6.2 = add i64 %shr.i319.6.2, %xor2569.i.6.2 *)
adds discard_111 v_add20_6_2 v_shr_i319_6_2 v_xor2569_i_6_2;
(* Heuristics applied. *)
assert true && eq discard_111 0@1;
assume eq discard_111 0 && true;
(*   %add21.6.2 = add i64 %add20.6.2, %add21.6.1 *)
adds discard_112 v_add21_6_2 v_add20_6_2 v_add21_6_1;
(* Heuristics applied. *)
assert true && eq discard_112 0@1;
assume eq discard_112 0 && true;
(*   %38 = xor i64 %add20.6.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v38 v_add20_6_2 (0x8000000000000000)@uint64;
(*   %xor2.i312.6.2 = and i64 %38, %add23.i.6.2 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_6_2 v38 v_add23_i_6_2;
(*   %xor.i303.6.2 = xor i64 %add21.6.2, %add20.6.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_6_2 v_add21_6_2 v_add20_6_2;
(*   %xor1.i304.6.2 = xor i64 %add20.6.2, %add21.6.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_6_2 v_add20_6_2 v_add21_6_1;
(*   %or.i305.6.2 = or i64 %xor.i303.6.2, %xor1.i304.6.2 *)
(* You may need to modify here *)
or uint64 v_or_i305_6_2 v_xor_i303_6_2 v_xor1_i304_6_2;
(*   %xor2.i306.6.2 = xor i64 %or.i305.6.2, %add21.6.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_6_2 v_or_i305_6_2 v_add21_6_2;
(*   %shr.i313328.6.2 = or i64 %xor2.i306.6.2, %xor2.i312.6.2 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_6_2 v_xor2_i306_6_2 v_xor2_i312_6_2;
(*   %or25327.6.2 = lshr i64 %shr.i313328.6.2, 63 *)
(* You may need to modify here *)
split v_or25327_6_2 tmp_to_be_used v_shr_i313328_6_2 63;
(*   %add27.6.2 = add nsw i64 %or25327.6.2, %add27.6.1 *)
adds discard_113 v_add27_6_2 v_or25327_6_2 v_add27_6_1;
(* Heuristics applied. *)
assert true && eq discard_113 0@1;
assume eq discard_113 0 && true;
(*   %arrayidx9.6.3 = getelementptr inbounds i64, i64* %mc, i64 3 *)
(*   %39 = load i64, i64* %arrayidx9.6.3, align 8, !tbaa !3 *)
mov v39 mc_24;
(*   %40 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434p1, i64 0, i64 3), align 8, !tbaa !3 *)
mov v40 p434p1_24;
(*   %and.i.6.3 = and i64 %39, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i_6_3 v39 (0xFFFFFFFF)@uint64;
(*   %shr.i.6.3 = lshr i64 %39, 32 *)
(* You may need to modify here *)
split v_shr_i_6_3 tmp_to_be_used v39 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i_6_3;
assume eq tmp_to_be_used v_and_i_6_3 && true;
(*   %and1.i.6.3 = and i64 %40, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i_6_3 v40 (0xFFFFFFFF)@uint64;
(*   %shr2.i.6.3 = lshr i64 %40, 32 *)
(* You may need to modify here *)
split v_shr2_i_6_3 tmp_to_be_used v40 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and1_i_6_3;
assume eq tmp_to_be_used v_and1_i_6_3 && true;
(*   %mul.i.6.3 = mul nuw i64 %and1.i.6.3, %and.i.6.3 *)
mul v_mul_i_6_3 v_and1_i_6_3 v_and_i_6_3;
(*   %mul3.i.6.3 = mul nuw i64 %shr2.i.6.3, %and.i.6.3 *)
mul v_mul3_i_6_3 v_shr2_i_6_3 v_and_i_6_3;
(*   %mul4.i.6.3 = mul nuw i64 %and1.i.6.3, %shr.i.6.3 *)
mul v_mul4_i_6_3 v_and1_i_6_3 v_shr_i_6_3;
(*   %mul5.i.6.3 = mul nuw i64 %shr2.i.6.3, %shr.i.6.3 *)
mul v_mul5_i_6_3 v_shr2_i_6_3 v_shr_i_6_3;
(*   %and6.i.6.3 = and i64 %mul.i.6.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6_i_6_3 v_mul_i_6_3 (0xFFFFFFFF)@uint64;
(*   %shr7.i.6.3 = lshr i64 %mul.i.6.3, 32 *)
(* You may need to modify here *)
split v_shr7_i_6_3 tmp_to_be_used v_mul_i_6_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and6_i_6_3;
assume eq tmp_to_be_used v_and6_i_6_3 && true;
(*   %and8.i.6.3 = and i64 %mul4.i.6.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8_i_6_3 v_mul4_i_6_3 (0xFFFFFFFF)@uint64;
(*   %and9.i.6.3 = and i64 %mul3.i.6.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9_i_6_3 v_mul3_i_6_3 (0xFFFFFFFF)@uint64;
(*   %add.i.6.3 = add nuw nsw i64 %shr7.i.6.3, %and8.i.6.3 *)
adds discard_114 v_add_i_6_3 v_shr7_i_6_3 v_and8_i_6_3;
(* Heuristics applied. *)
assert true && eq discard_114 0@1;
assume eq discard_114 0 && true;
(*   %add10.i.6.3 = add nuw nsw i64 %add.i.6.3, %and9.i.6.3 *)
adds discard_115 v_add10_i_6_3 v_add_i_6_3 v_and9_i_6_3;
(* Heuristics applied. *)
assert true && eq discard_115 0@1;
assume eq discard_115 0 && true;
(*   %shr11.i.6.3 = lshr i64 %add10.i.6.3, 32 *)
(* You may need to modify here *)
split v_shr11_i_6_3 tmp_to_be_used v_add10_i_6_3 32;
(*   %shl.i.6.3 = shl i64 %add10.i.6.3, 32 *)
shls discard_116 v_shl_i_6_3 v_add10_i_6_3 32;
(* Heuristics applied. *)
assert true && eq v_shl_i_6_3 tmp_to_be_used * const 64 (2**32);
assume eq v_shl_i_6_3 tmp_to_be_used * (2**32) && true;
(*   %xor68.i.6.3 = or i64 %shl.i.6.3, %and6.i.6.3 *)
(* You may need to modify here *)
or uint64 v_xor68_i_6_3 v_shl_i_6_3 v_and6_i_6_3;
(* Heuristics applied. *)
assert true && eq v_xor68_i_6_3 v_shl_i_6_3 + v_and6_i_6_3;
assume eq v_xor68_i_6_3 v_shl_i_6_3 + v_and6_i_6_3 && true;
(*   %shr13.i.6.3 = lshr i64 %mul4.i.6.3, 32 *)
(* You may need to modify here *)
split v_shr13_i_6_3 tmp_to_be_used v_mul4_i_6_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and8_i_6_3;
assume eq tmp_to_be_used v_and8_i_6_3 && true;
(*   %shr14.i.6.3 = lshr i64 %mul3.i.6.3, 32 *)
(* You may need to modify here *)
split v_shr14_i_6_3 tmp_to_be_used v_mul3_i_6_3 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and9_i_6_3;
assume eq tmp_to_be_used v_and9_i_6_3 && true;
(*   %and15.i.6.3 = and i64 %mul5.i.6.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15_i_6_3 v_mul5_i_6_3 (0xFFFFFFFF)@uint64;
(*   %add16.i.6.3 = add nuw nsw i64 %shr13.i.6.3, %shr14.i.6.3 *)
adds discard_117 v_add16_i_6_3 v_shr13_i_6_3 v_shr14_i_6_3;
(* Heuristics applied. *)
assert true && eq discard_117 0@1;
assume eq discard_117 0 && true;
(*   %add17.i.6.3 = add nuw nsw i64 %add16.i.6.3, %and15.i.6.3 *)
adds discard_118 v_add17_i_6_3 v_add16_i_6_3 v_and15_i_6_3;
(* Heuristics applied. *)
assert true && eq discard_118 0@1;
assume eq discard_118 0 && true;
(*   %add18.i.6.3 = add nuw nsw i64 %add17.i.6.3, %shr11.i.6.3 *)
adds discard_119 v_add18_i_6_3 v_add17_i_6_3 v_shr11_i_6_3;
(* Heuristics applied. *)
assert true && eq discard_119 0@1;
assume eq discard_119 0 && true;
(*   %and19.i.6.3 = and i64 %add18.i.6.3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19_i_6_3 v_add18_i_6_3 (0xFFFFFFFF)@uint64;
(*   %and21.i.6.3 = and i64 %add18.i.6.3, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21_i_6_3 v_add18_i_6_3 (0x700000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_add18_i_6_3 v_and21_i_6_3 + v_and19_i_6_3;
assume eq v_add18_i_6_3 v_and21_i_6_3 + v_and19_i_6_3 && true;
(*   %and22.i.6.3 = and i64 %mul5.i.6.3, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22_i_6_3 v_mul5_i_6_3 (0xFFFFFFFF00000000)@uint64;
(* Heuristics applied. *)
assert true && eq v_mul5_i_6_3 v_and22_i_6_3 + v_and15_i_6_3;
assume eq v_mul5_i_6_3 v_and22_i_6_3 + v_and15_i_6_3 && true;
(*   %add23.i.6.3 = add i64 %and21.i.6.3, %and22.i.6.3 *)
adds discard_120 v_add23_i_6_3 v_and21_i_6_3 v_and22_i_6_3;
(* Heuristics applied. *)
assert true && eq discard_120 0@1;
assume eq discard_120 0 && true;
(*   %xor2569.i.6.3 = or i64 %add23.i.6.3, %and19.i.6.3 *)
(* You may need to modify here *)
or uint64 v_xor2569_i_6_3 v_add23_i_6_3 v_and19_i_6_3;
(* Heuristics applied. *)
assert true && eq v_xor2569_i_6_3 v_add23_i_6_3 + v_and19_i_6_3;
assume eq v_xor2569_i_6_3 v_add23_i_6_3 + v_and19_i_6_3 && true;
(*   %add16.6.3 = add i64 %xor68.i.6.3, %add16.6.2 *)
adds discard_121 v_add16_6_3 v_xor68_i_6_3 v_add16_6_2;
(*   %xor.i315.6.3 = xor i64 %add16.6.3, %shl.i.6.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i315_6_3 v_add16_6_3 v_shl_i_6_3;
(*   %xor1.i316.6.3 = xor i64 %shl.i.6.3, %add16.6.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i316_6_3 v_shl_i_6_3 v_add16_6_2;
(*   %or.i317.6.3 = or i64 %xor.i315.6.3, %xor1.i316.6.3 *)
(* You may need to modify here *)
or uint64 v_or_i317_6_3 v_xor_i315_6_3 v_xor1_i316_6_3;
(*   %xor2.i318.6.3 = xor i64 %or.i317.6.3, %add16.6.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i318_6_3 v_or_i317_6_3 v_add16_6_3;
(*   %shr.i319.6.3 = lshr i64 %xor2.i318.6.3, 63 *)
(* You may need to modify here *)
split v_shr_i319_6_3 tmp_to_be_used v_xor2_i318_6_3 63;
(*   %add20.6.3 = add i64 %shr.i319.6.3, %xor2569.i.6.3 *)
adds discard_122 v_add20_6_3 v_shr_i319_6_3 v_xor2569_i_6_3;
(* Heuristics applied. *)
assert true && eq discard_122 0@1;
assume eq discard_122 0 && true;
(*   %add21.6.3 = add i64 %add20.6.3, %add21.6.2 *)
adds discard_123 v_add21_6_3 v_add20_6_3 v_add21_6_2;
(* Heuristics applied. *)
assert true && eq discard_123 0@1;
assume eq discard_123 0 && true;
(*   %41 = xor i64 %add20.6.3, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v41 v_add20_6_3 (0x8000000000000000)@uint64;
(*   %xor2.i312.6.3 = and i64 %41, %add23.i.6.3 *)
(* You may need to modify here *)
and uint64 v_xor2_i312_6_3 v41 v_add23_i_6_3;
(*   %xor.i303.6.3 = xor i64 %add21.6.3, %add20.6.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i303_6_3 v_add21_6_3 v_add20_6_3;
(*   %xor1.i304.6.3 = xor i64 %add20.6.3, %add21.6.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i304_6_3 v_add20_6_3 v_add21_6_2;
(*   %or.i305.6.3 = or i64 %xor.i303.6.3, %xor1.i304.6.3 *)
(* You may need to modify here *)
or uint64 v_or_i305_6_3 v_xor_i303_6_3 v_xor1_i304_6_3;
(*   %xor2.i306.6.3 = xor i64 %or.i305.6.3, %add21.6.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i306_6_3 v_or_i305_6_3 v_add21_6_3;
(*   %shr.i313328.6.3 = or i64 %xor2.i306.6.3, %xor2.i312.6.3 *)
(* You may need to modify here *)
or uint64 v_shr_i313328_6_3 v_xor2_i306_6_3 v_xor2_i312_6_3;
(*   %or25327.6.3 = lshr i64 %shr.i313328.6.3, 63 *)
(* You may need to modify here *)
split v_or25327_6_3 tmp_to_be_used v_shr_i313328_6_3 63;
(*   %add27.6.3 = add nsw i64 %or25327.6.3, %add27.6.2 *)
adds discard_124 v_add27_6_3 v_or25327_6_3 v_add27_6_2;
(* Heuristics applied. *)
assert true && eq discard_124 0@1;
assume eq discard_124 0 && true;
(*   %arrayidx34.6 = getelementptr inbounds i64, i64* %ma, i64 6 *)
(*   %42 = load i64, i64* %arrayidx34.6, align 8, !tbaa !3 *)
mov v42 ma_48;
(*   %add35.6 = add i64 %42, %add16.6.3 *)
adds discard_125 v_add35_6 v42 v_add16_6_3;
(*   %xor.i297.6 = xor i64 %add35.6, %add16.6.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i297_6 v_add35_6 v_add16_6_3;
(*   %xor1.i298.6 = xor i64 %42, %add16.6.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i298_6 v42 v_add16_6_3;
(*   %or.i299.6 = or i64 %xor.i297.6, %xor1.i298.6 *)
(* You may need to modify here *)
or uint64 v_or_i299_6 v_xor_i297_6 v_xor1_i298_6;
(*   %xor2.i300.6 = xor i64 %or.i299.6, %add35.6 *)
(* You may need to modify here *)
xor uint64 v_xor2_i300_6 v_or_i299_6 v_add35_6;
(*   %shr.i301.6 = lshr i64 %xor2.i300.6, 63 *)
(* You may need to modify here *)
split v_shr_i301_6 tmp_to_be_used v_xor2_i300_6 63;
(*   %add41.6 = add i64 %shr.i301.6, %add21.6.3 *)
adds discard_126 v_add41_6 v_shr_i301_6 v_add21_6_3;
(* Heuristics applied. *)
assert true && eq discard_126 0@1;
assume eq discard_126 0 && true;
(*   %arrayidx50.6 = getelementptr inbounds i64, i64* %mc, i64 6 *)
(*   store i64 %add35.6, i64* %arrayidx50.6, align 8, !tbaa !3 *)
mov mc_48 v_add35_6;
(*   %43 = xor i64 %add41.6, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v43 v_add41_6 (0x8000000000000000)@uint64;
(*   %xor2.i294.6 = and i64 %43, %add21.6.3 *)
(* You may need to modify here *)
and uint64 v_xor2_i294_6 v43 v_add21_6_3;
(*   %shr.i295.6 = lshr i64 %xor2.i294.6, 63 *)
(* You may need to modify here *)
split v_shr_i295_6 tmp_to_be_used v_xor2_i294_6 63;
(*   %add48.6 = add i64 %shr.i295.6, %add27.6.3 *)
adds discard_127 v_add48_6 v_shr_i295_6 v_add27_6_3;
(* Heuristics applied. *)
assert true && eq discard_127 0@1;
assume eq discard_127 0 && true;
(*   %arrayidx74 = getelementptr inbounds i64, i64* %mc, i64 1 *)
(*   %44 = load i64, i64* %arrayidx74, align 8, !tbaa !3 *)
mov v44 mc_8;
(*   %45 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434p1, i64 0, i64 6), align 16, !tbaa !3 *)
mov v45 p434p1_48;
(*   %and.i262 = and i64 %44, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262 v44 (0xFFFFFFFF)@uint64;
(*   %shr.i263 = lshr i64 %44, 32 *)
(* You may need to modify here *)
split v_shr_i263 tmp_to_be_used v44 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262;
assume eq tmp_to_be_used v_and_i262 && true;
(*   %and1.i264 = and i64 %45, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264 v45 (0xFFFFFFFF)@uint64;
(*   %shr2.i265 = lshr i64 %45, 32 *)
(* You may need to modify here *)
split v_shr2_i265 tmp_to_be_used v45 32;
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
adds discard_128 v_add_i274 v_shr7_i271 v_and8_i272;
(* Heuristics applied. *)
assert true && eq discard_128 0@1;
assume eq discard_128 0 && true;
(*   %add10.i275 = add nuw nsw i64 %add.i274, %and9.i273 *)
adds discard_129 v_add10_i275 v_add_i274 v_and9_i273;
(* Heuristics applied. *)
assert true && eq discard_129 0@1;
assume eq discard_129 0 && true;
(*   %shr11.i276 = lshr i64 %add10.i275, 32 *)
(* You may need to modify here *)
split v_shr11_i276 tmp_to_be_used v_add10_i275 32;
(*   %shl.i277 = shl i64 %add10.i275, 32 *)
shls discard_130 v_shl_i277 v_add10_i275 32;
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
adds discard_131 v_add16_i282 v_shr13_i279 v_shr14_i280;
(* Heuristics applied. *)
assert true && eq discard_131 0@1;
assume eq discard_131 0 && true;
(*   %add17.i283 = add nuw nsw i64 %add16.i282, %and15.i281 *)
adds discard_132 v_add17_i283 v_add16_i282 v_and15_i281;
(* Heuristics applied. *)
assert true && eq discard_132 0@1;
assume eq discard_132 0 && true;
(*   %add18.i284 = add nuw nsw i64 %add17.i283, %shr11.i276 *)
adds discard_133 v_add18_i284 v_add17_i283 v_shr11_i276;
(* Heuristics applied. *)
assert true && eq discard_133 0@1;
assume eq discard_133 0 && true;
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
adds discard_134 v_add23_i289 v_and21_i287 v_and22_i288;
(* Heuristics applied. *)
assert true && eq discard_134 0@1;
assume eq discard_134 0 && true;
(*   %xor2569.i290 = or i64 %add23.i289, %and19.i285 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290 v_add23_i289 v_and19_i285;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290 v_add23_i289 + v_and19_i285;
assume eq v_xor2569_i290 v_add23_i289 + v_and19_i285 && true;
(*   %add82 = add i64 %xor68.i278, %add41.6 *)
adds discard_135 v_add82 v_xor68_i278 v_add41_6;
(*   %xor.i256 = xor i64 %add82, %shl.i277 *)
(* You may need to modify here *)
xor uint64 v_xor_i256 v_add82 v_shl_i277;
(*   %xor1.i257 = xor i64 %shl.i277, %add41.6 *)
(* You may need to modify here *)
xor uint64 v_xor1_i257 v_shl_i277 v_add41_6;
(*   %or.i258 = or i64 %xor.i256, %xor1.i257 *)
(* You may need to modify here *)
or uint64 v_or_i258 v_xor_i256 v_xor1_i257;
(*   %xor2.i259 = xor i64 %or.i258, %add82 *)
(* You may need to modify here *)
xor uint64 v_xor2_i259 v_or_i258 v_add82;
(*   %shr.i260 = lshr i64 %xor2.i259, 63 *)
(* You may need to modify here *)
split v_shr_i260 tmp_to_be_used v_xor2_i259 63;
(*   %add89 = add i64 %shr.i260, %xor2569.i290 *)
adds discard_136 v_add89 v_shr_i260 v_xor2569_i290;
(* Heuristics applied. *)
assert true && eq discard_136 0@1;
assume eq discard_136 0 && true;
(*   %add90 = add i64 %add89, %add48.6 *)
adds discard_137 v_add90 v_add89 v_add48_6;
(* Heuristics applied. *)
assert true && eq discard_137 0@1;
assume eq discard_137 0 && true;
(*   %46 = xor i64 %add89, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v46 v_add89 (0x8000000000000000)@uint64;
(*   %xor2.i253 = and i64 %46, %add23.i289 *)
(* You may need to modify here *)
and uint64 v_xor2_i253 v46 v_add23_i289;
(*   %xor.i244 = xor i64 %add90, %add89 *)
(* You may need to modify here *)
xor uint64 v_xor_i244 v_add90 v_add89;
(*   %xor1.i245 = xor i64 %add89, %add48.6 *)
(* You may need to modify here *)
xor uint64 v_xor1_i245 v_add89 v_add48_6;
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
(*   %arrayidx74.1372 = getelementptr inbounds i64, i64* %mc, i64 2 *)
(*   %47 = load i64, i64* %arrayidx74.1372, align 8, !tbaa !3 *)
mov v47 mc_16;
(*   %48 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434p1, i64 0, i64 5), align 8, !tbaa !3 *)
mov v48 p434p1_40;
(*   %and.i262.1373 = and i64 %47, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_1373 v47 (0xFFFFFFFF)@uint64;
(*   %shr.i263.1374 = lshr i64 %47, 32 *)
(* You may need to modify here *)
split v_shr_i263_1374 tmp_to_be_used v47 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_1373;
assume eq tmp_to_be_used v_and_i262_1373 && true;
(*   %and1.i264.1375 = and i64 %48, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_1375 v48 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.1376 = lshr i64 %48, 32 *)
(* You may need to modify here *)
split v_shr2_i265_1376 tmp_to_be_used v48 32;
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
adds discard_138 v_add_i274_1385 v_shr7_i271_1382 v_and8_i272_1383;
(* Heuristics applied. *)
assert true && eq discard_138 0@1;
assume eq discard_138 0 && true;
(*   %add10.i275.1386 = add nuw nsw i64 %add.i274.1385, %and9.i273.1384 *)
adds discard_139 v_add10_i275_1386 v_add_i274_1385 v_and9_i273_1384;
(* Heuristics applied. *)
assert true && eq discard_139 0@1;
assume eq discard_139 0 && true;
(*   %shr11.i276.1387 = lshr i64 %add10.i275.1386, 32 *)
(* You may need to modify here *)
split v_shr11_i276_1387 tmp_to_be_used v_add10_i275_1386 32;
(*   %shl.i277.1388 = shl i64 %add10.i275.1386, 32 *)
shls discard_140 v_shl_i277_1388 v_add10_i275_1386 32;
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
adds discard_141 v_add16_i282_1393 v_shr13_i279_1390 v_shr14_i280_1391;
(* Heuristics applied. *)
assert true && eq discard_141 0@1;
assume eq discard_141 0 && true;
(*   %add17.i283.1394 = add nuw nsw i64 %add16.i282.1393, %and15.i281.1392 *)
adds discard_142 v_add17_i283_1394 v_add16_i282_1393 v_and15_i281_1392;
(* Heuristics applied. *)
assert true && eq discard_142 0@1;
assume eq discard_142 0 && true;
(*   %add18.i284.1395 = add nuw nsw i64 %add17.i283.1394, %shr11.i276.1387 *)
adds discard_143 v_add18_i284_1395 v_add17_i283_1394 v_shr11_i276_1387;
(* Heuristics applied. *)
assert true && eq discard_143 0@1;
assume eq discard_143 0 && true;
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
adds discard_144 v_add23_i289_1399 v_and21_i287_1397 v_and22_i288_1398;
(* Heuristics applied. *)
assert true && eq discard_144 0@1;
assume eq discard_144 0 && true;
(*   %xor2569.i290.1400 = or i64 %add23.i289.1399, %and19.i285.1396 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_1400 v_add23_i289_1399 v_and19_i285_1396;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_1400 v_add23_i289_1399 + v_and19_i285_1396;
assume eq v_xor2569_i290_1400 v_add23_i289_1399 + v_and19_i285_1396 && true;
(*   %add82.1401 = add i64 %xor68.i278.1389, %add82 *)
adds discard_145 v_add82_1401 v_xor68_i278_1389 v_add82;
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
(*   %add89.1407 = add i64 %shr.i260.1406, %xor2569.i290.1400 *)
adds discard_146 v_add89_1407 v_shr_i260_1406 v_xor2569_i290_1400;
(* Heuristics applied. *)
assert true && eq discard_146 0@1;
assume eq discard_146 0 && true;
(*   %add90.1408 = add i64 %add89.1407, %add90 *)
adds discard_147 v_add90_1408 v_add89_1407 v_add90;
(* Heuristics applied. *)
assert true && eq discard_147 0@1;
assume eq discard_147 0 && true;
(*   %49 = xor i64 %add89.1407, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v49 v_add89_1407 (0x8000000000000000)@uint64;
(*   %xor2.i253.1409 = and i64 %49, %add23.i289.1399 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_1409 v49 v_add23_i289_1399;
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
(*   %add96.1 = add nuw nsw i64 %or94325.1415, %or94325 *)
adds discard_148 v_add96_1 v_or94325_1415 v_or94325;
(* Heuristics applied. *)
assert true && eq discard_148 0@1;
assume eq discard_148 0 && true;
(*   %arrayidx74.2422 = getelementptr inbounds i64, i64* %mc, i64 3 *)
(*   %50 = load i64, i64* %arrayidx74.2422, align 8, !tbaa !3 *)
mov v50 mc_24;
(*   %51 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434p1, i64 0, i64 4), align 16, !tbaa !3 *)
mov v51 p434p1_32;
(*   %and.i262.2423 = and i64 %50, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_2423 v50 (0xFFFFFFFF)@uint64;
(*   %shr.i263.2424 = lshr i64 %50, 32 *)
(* You may need to modify here *)
split v_shr_i263_2424 tmp_to_be_used v50 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_2423;
assume eq tmp_to_be_used v_and_i262_2423 && true;
(*   %and1.i264.2425 = and i64 %51, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_2425 v51 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.2426 = lshr i64 %51, 32 *)
(* You may need to modify here *)
split v_shr2_i265_2426 tmp_to_be_used v51 32;
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
adds discard_149 v_add_i274_2435 v_shr7_i271_2432 v_and8_i272_2433;
(* Heuristics applied. *)
assert true && eq discard_149 0@1;
assume eq discard_149 0 && true;
(*   %add10.i275.2436 = add nuw nsw i64 %add.i274.2435, %and9.i273.2434 *)
adds discard_150 v_add10_i275_2436 v_add_i274_2435 v_and9_i273_2434;
(* Heuristics applied. *)
assert true && eq discard_150 0@1;
assume eq discard_150 0 && true;
(*   %shr11.i276.2437 = lshr i64 %add10.i275.2436, 32 *)
(* You may need to modify here *)
split v_shr11_i276_2437 tmp_to_be_used v_add10_i275_2436 32;
(*   %shl.i277.2438 = shl i64 %add10.i275.2436, 32 *)
shls discard_151 v_shl_i277_2438 v_add10_i275_2436 32;
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
adds discard_152 v_add16_i282_2443 v_shr13_i279_2440 v_shr14_i280_2441;
(* Heuristics applied. *)
assert true && eq discard_152 0@1;
assume eq discard_152 0 && true;
(*   %add17.i283.2444 = add nuw nsw i64 %add16.i282.2443, %and15.i281.2442 *)
adds discard_153 v_add17_i283_2444 v_add16_i282_2443 v_and15_i281_2442;
(* Heuristics applied. *)
assert true && eq discard_153 0@1;
assume eq discard_153 0 && true;
(*   %add18.i284.2445 = add nuw nsw i64 %add17.i283.2444, %shr11.i276.2437 *)
adds discard_154 v_add18_i284_2445 v_add17_i283_2444 v_shr11_i276_2437;
(* Heuristics applied. *)
assert true && eq discard_154 0@1;
assume eq discard_154 0 && true;
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
adds discard_155 v_add23_i289_2449 v_and21_i287_2447 v_and22_i288_2448;
(* Heuristics applied. *)
assert true && eq discard_155 0@1;
assume eq discard_155 0 && true;
(*   %xor2569.i290.2450 = or i64 %add23.i289.2449, %and19.i285.2446 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_2450 v_add23_i289_2449 v_and19_i285_2446;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_2450 v_add23_i289_2449 + v_and19_i285_2446;
assume eq v_xor2569_i290_2450 v_add23_i289_2449 + v_and19_i285_2446 && true;
(*   %add82.2451 = add i64 %xor68.i278.2439, %add82.1401 *)
adds discard_156 v_add82_2451 v_xor68_i278_2439 v_add82_1401;
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
(*   %add89.2457 = add i64 %shr.i260.2456, %xor2569.i290.2450 *)
adds discard_157 v_add89_2457 v_shr_i260_2456 v_xor2569_i290_2450;
(* Heuristics applied. *)
assert true && eq discard_157 0@1;
assume eq discard_157 0 && true;
(*   %add90.2458 = add i64 %add89.2457, %add90.1408 *)
adds discard_158 v_add90_2458 v_add89_2457 v_add90_1408;
(* Heuristics applied. *)
assert true && eq discard_158 0@1;
assume eq discard_158 0 && true;
(*   %52 = xor i64 %add89.2457, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v52 v_add89_2457 (0x8000000000000000)@uint64;
(*   %xor2.i253.2459 = and i64 %52, %add23.i289.2449 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_2459 v52 v_add23_i289_2449;
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
(*   %add96.2 = add nsw i64 %or94325.2465, %add96.1 *)
adds discard_159 v_add96_2 v_or94325_2465 v_add96_1;
(* Heuristics applied. *)
assert true && eq discard_159 0@1;
assume eq discard_159 0 && true;
(*   %arrayidx74.3472 = getelementptr inbounds i64, i64* %mc, i64 4 *)
(*   %53 = load i64, i64* %arrayidx74.3472, align 8, !tbaa !3 *)
mov v53 mc_32;
(*   %54 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434p1, i64 0, i64 3), align 8, !tbaa !3 *)
mov v54 p434p1_24;
(*   %and.i262.3473 = and i64 %53, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_3473 v53 (0xFFFFFFFF)@uint64;
(*   %shr.i263.3474 = lshr i64 %53, 32 *)
(* You may need to modify here *)
split v_shr_i263_3474 tmp_to_be_used v53 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_3473;
assume eq tmp_to_be_used v_and_i262_3473 && true;
(*   %and1.i264.3475 = and i64 %54, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_3475 v54 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.3476 = lshr i64 %54, 32 *)
(* You may need to modify here *)
split v_shr2_i265_3476 tmp_to_be_used v54 32;
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
adds discard_160 v_add_i274_3485 v_shr7_i271_3482 v_and8_i272_3483;
(* Heuristics applied. *)
assert true && eq discard_160 0@1;
assume eq discard_160 0 && true;
(*   %add10.i275.3486 = add nuw nsw i64 %add.i274.3485, %and9.i273.3484 *)
adds discard_161 v_add10_i275_3486 v_add_i274_3485 v_and9_i273_3484;
(* Heuristics applied. *)
assert true && eq discard_161 0@1;
assume eq discard_161 0 && true;
(*   %shr11.i276.3487 = lshr i64 %add10.i275.3486, 32 *)
(* You may need to modify here *)
split v_shr11_i276_3487 tmp_to_be_used v_add10_i275_3486 32;
(*   %shl.i277.3488 = shl i64 %add10.i275.3486, 32 *)
shls discard_162 v_shl_i277_3488 v_add10_i275_3486 32;
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
adds discard_163 v_add16_i282_3493 v_shr13_i279_3490 v_shr14_i280_3491;
(* Heuristics applied. *)
assert true && eq discard_163 0@1;
assume eq discard_163 0 && true;
(*   %add17.i283.3494 = add nuw nsw i64 %add16.i282.3493, %and15.i281.3492 *)
adds discard_164 v_add17_i283_3494 v_add16_i282_3493 v_and15_i281_3492;
(* Heuristics applied. *)
assert true && eq discard_164 0@1;
assume eq discard_164 0 && true;
(*   %add18.i284.3495 = add nuw nsw i64 %add17.i283.3494, %shr11.i276.3487 *)
adds discard_165 v_add18_i284_3495 v_add17_i283_3494 v_shr11_i276_3487;
(* Heuristics applied. *)
assert true && eq discard_165 0@1;
assume eq discard_165 0 && true;
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
adds discard_166 v_add23_i289_3499 v_and21_i287_3497 v_and22_i288_3498;
(* Heuristics applied. *)
assert true && eq discard_166 0@1;
assume eq discard_166 0 && true;
(*   %xor2569.i290.3500 = or i64 %add23.i289.3499, %and19.i285.3496 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_3500 v_add23_i289_3499 v_and19_i285_3496;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_3500 v_add23_i289_3499 + v_and19_i285_3496;
assume eq v_xor2569_i290_3500 v_add23_i289_3499 + v_and19_i285_3496 && true;
(*   %add82.3501 = add i64 %xor68.i278.3489, %add82.2451 *)
adds discard_167 v_add82_3501 v_xor68_i278_3489 v_add82_2451;
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
(*   %add89.3507 = add i64 %shr.i260.3506, %xor2569.i290.3500 *)
adds discard_168 v_add89_3507 v_shr_i260_3506 v_xor2569_i290_3500;
(* Heuristics applied. *)
assert true && eq discard_168 0@1;
assume eq discard_168 0 && true;
(*   %add90.3508 = add i64 %add89.3507, %add90.2458 *)
adds discard_169 v_add90_3508 v_add89_3507 v_add90_2458;
(* Heuristics applied. *)
assert true && eq discard_169 0@1;
assume eq discard_169 0 && true;
(*   %55 = xor i64 %add89.3507, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v55 v_add89_3507 (0x8000000000000000)@uint64;
(*   %xor2.i253.3509 = and i64 %55, %add23.i289.3499 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_3509 v55 v_add23_i289_3499;
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
(*   %add96.3 = add nsw i64 %or94325.3515, %add96.2 *)
adds discard_170 v_add96_3 v_or94325_3515 v_add96_2;
(* Heuristics applied. *)
assert true && eq discard_170 0@1;
assume eq discard_170 0 && true;
(*   %arrayidx104 = getelementptr inbounds i64, i64* %ma, i64 7 *)
(*   %56 = load i64, i64* %arrayidx104, align 8, !tbaa !3 *)
mov v56 ma_56;
(*   %add105 = add i64 %56, %add82.3501 *)
adds discard_171 v_add105 v56 v_add82_3501;
(*   %xor.i238 = xor i64 %add105, %add82.3501 *)
(* You may need to modify here *)
xor uint64 v_xor_i238 v_add105 v_add82_3501;
(*   %xor1.i239 = xor i64 %56, %add82.3501 *)
(* You may need to modify here *)
xor uint64 v_xor1_i239 v56 v_add82_3501;
(*   %or.i240 = or i64 %xor.i238, %xor1.i239 *)
(* You may need to modify here *)
or uint64 v_or_i240 v_xor_i238 v_xor1_i239;
(*   %xor2.i241 = xor i64 %or.i240, %add105 *)
(* You may need to modify here *)
xor uint64 v_xor2_i241 v_or_i240 v_add105;
(*   %shr.i242 = lshr i64 %xor2.i241, 63 *)
(* You may need to modify here *)
split v_shr_i242 tmp_to_be_used v_xor2_i241 63;
(*   %add111 = add i64 %shr.i242, %add90.3508 *)
adds discard_172 v_add111 v_shr_i242 v_add90_3508;
(* Heuristics applied. *)
assert true && eq discard_172 0@1;
assume eq discard_172 0 && true;
(*   store i64 %add105, i64* %mc, align 8, !tbaa !3 *)
mov mc_0 v_add105;
(*   %57 = xor i64 %add111, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v57 v_add111 (0x8000000000000000)@uint64;
(*   %xor2.i = and i64 %57, %add90.3508 *)
(* You may need to modify here *)
and uint64 v_xor2_i v57 v_add90_3508;
(*   %shr.i237 = lshr i64 %xor2.i, 63 *)
(* You may need to modify here *)
split v_shr_i237 tmp_to_be_used v_xor2_i 63;
(*   %add118 = add i64 %shr.i237, %add96.3 *)
adds discard_173 v_add118 v_shr_i237 v_add96_3;
(* Heuristics applied. *)
assert true && eq discard_173 0@1;
assume eq discard_173 0 && true;
(*   %arrayidx74.1 = getelementptr inbounds i64, i64* %mc, i64 2 *)
(*   %58 = load i64, i64* %arrayidx74.1, align 8, !tbaa !3 *)
mov v58 mc_16;
(*   %59 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434p1, i64 0, i64 6), align 16, !tbaa !3 *)
mov v59 p434p1_48;
(*   %and.i262.1 = and i64 %58, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_1 v58 (0xFFFFFFFF)@uint64;
(*   %shr.i263.1 = lshr i64 %58, 32 *)
(* You may need to modify here *)
split v_shr_i263_1 tmp_to_be_used v58 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_1;
assume eq tmp_to_be_used v_and_i262_1 && true;
(*   %and1.i264.1 = and i64 %59, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_1 v59 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.1 = lshr i64 %59, 32 *)
(* You may need to modify here *)
split v_shr2_i265_1 tmp_to_be_used v59 32;
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
adds discard_174 v_add_i274_1 v_shr7_i271_1 v_and8_i272_1;
(* Heuristics applied. *)
assert true && eq discard_174 0@1;
assume eq discard_174 0 && true;
(*   %add10.i275.1 = add nuw nsw i64 %add.i274.1, %and9.i273.1 *)
adds discard_175 v_add10_i275_1 v_add_i274_1 v_and9_i273_1;
(* Heuristics applied. *)
assert true && eq discard_175 0@1;
assume eq discard_175 0 && true;
(*   %shr11.i276.1 = lshr i64 %add10.i275.1, 32 *)
(* You may need to modify here *)
split v_shr11_i276_1 tmp_to_be_used v_add10_i275_1 32;
(*   %shl.i277.1 = shl i64 %add10.i275.1, 32 *)
shls discard_176 v_shl_i277_1 v_add10_i275_1 32;
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
adds discard_177 v_add16_i282_1 v_shr13_i279_1 v_shr14_i280_1;
(* Heuristics applied. *)
assert true && eq discard_177 0@1;
assume eq discard_177 0 && true;
(*   %add17.i283.1 = add nuw nsw i64 %add16.i282.1, %and15.i281.1 *)
adds discard_178 v_add17_i283_1 v_add16_i282_1 v_and15_i281_1;
(* Heuristics applied. *)
assert true && eq discard_178 0@1;
assume eq discard_178 0 && true;
(*   %add18.i284.1 = add nuw nsw i64 %add17.i283.1, %shr11.i276.1 *)
adds discard_179 v_add18_i284_1 v_add17_i283_1 v_shr11_i276_1;
(* Heuristics applied. *)
assert true && eq discard_179 0@1;
assume eq discard_179 0 && true;
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
adds discard_180 v_add23_i289_1 v_and21_i287_1 v_and22_i288_1;
(* Heuristics applied. *)
assert true && eq discard_180 0@1;
assume eq discard_180 0 && true;
(*   %xor2569.i290.1 = or i64 %add23.i289.1, %and19.i285.1 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_1 v_add23_i289_1 v_and19_i285_1;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_1 v_add23_i289_1 + v_and19_i285_1;
assume eq v_xor2569_i290_1 v_add23_i289_1 + v_and19_i285_1 && true;
(*   %add82.1 = add i64 %xor68.i278.1, %add111 *)
adds discard_181 v_add82_1 v_xor68_i278_1 v_add111;
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
(*   %add89.1 = add i64 %shr.i260.1, %xor2569.i290.1 *)
adds discard_182 v_add89_1 v_shr_i260_1 v_xor2569_i290_1;
(* Heuristics applied. *)
assert true && eq discard_182 0@1;
assume eq discard_182 0 && true;
(*   %add90.1 = add i64 %add89.1, %add118 *)
adds discard_183 v_add90_1 v_add89_1 v_add118;
(* Heuristics applied. *)
assert true && eq discard_183 0@1;
assume eq discard_183 0 && true;
(*   %60 = xor i64 %add89.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v60 v_add89_1 (0x8000000000000000)@uint64;
(*   %xor2.i253.1 = and i64 %60, %add23.i289.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_1 v60 v_add23_i289_1;
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
(*   %arrayidx74.1.1 = getelementptr inbounds i64, i64* %mc, i64 3 *)
(*   %61 = load i64, i64* %arrayidx74.1.1, align 8, !tbaa !3 *)
mov v61 mc_24;
(*   %62 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434p1, i64 0, i64 5), align 8, !tbaa !3 *)
mov v62 p434p1_40;
(*   %and.i262.1.1 = and i64 %61, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_1_1 v61 (0xFFFFFFFF)@uint64;
(*   %shr.i263.1.1 = lshr i64 %61, 32 *)
(* You may need to modify here *)
split v_shr_i263_1_1 tmp_to_be_used v61 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_1_1;
assume eq tmp_to_be_used v_and_i262_1_1 && true;
(*   %and1.i264.1.1 = and i64 %62, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_1_1 v62 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.1.1 = lshr i64 %62, 32 *)
(* You may need to modify here *)
split v_shr2_i265_1_1 tmp_to_be_used v62 32;
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
adds discard_184 v_add_i274_1_1 v_shr7_i271_1_1 v_and8_i272_1_1;
(* Heuristics applied. *)
assert true && eq discard_184 0@1;
assume eq discard_184 0 && true;
(*   %add10.i275.1.1 = add nuw nsw i64 %add.i274.1.1, %and9.i273.1.1 *)
adds discard_185 v_add10_i275_1_1 v_add_i274_1_1 v_and9_i273_1_1;
(* Heuristics applied. *)
assert true && eq discard_185 0@1;
assume eq discard_185 0 && true;
(*   %shr11.i276.1.1 = lshr i64 %add10.i275.1.1, 32 *)
(* You may need to modify here *)
split v_shr11_i276_1_1 tmp_to_be_used v_add10_i275_1_1 32;
(*   %shl.i277.1.1 = shl i64 %add10.i275.1.1, 32 *)
shls discard_186 v_shl_i277_1_1 v_add10_i275_1_1 32;
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
adds discard_187 v_add16_i282_1_1 v_shr13_i279_1_1 v_shr14_i280_1_1;
(* Heuristics applied. *)
assert true && eq discard_187 0@1;
assume eq discard_187 0 && true;
(*   %add17.i283.1.1 = add nuw nsw i64 %add16.i282.1.1, %and15.i281.1.1 *)
adds discard_188 v_add17_i283_1_1 v_add16_i282_1_1 v_and15_i281_1_1;
(* Heuristics applied. *)
assert true && eq discard_188 0@1;
assume eq discard_188 0 && true;
(*   %add18.i284.1.1 = add nuw nsw i64 %add17.i283.1.1, %shr11.i276.1.1 *)
adds discard_189 v_add18_i284_1_1 v_add17_i283_1_1 v_shr11_i276_1_1;
(* Heuristics applied. *)
assert true && eq discard_189 0@1;
assume eq discard_189 0 && true;
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
adds discard_190 v_add23_i289_1_1 v_and21_i287_1_1 v_and22_i288_1_1;
(* Heuristics applied. *)
assert true && eq discard_190 0@1;
assume eq discard_190 0 && true;
(*   %xor2569.i290.1.1 = or i64 %add23.i289.1.1, %and19.i285.1.1 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_1_1 v_add23_i289_1_1 v_and19_i285_1_1;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_1_1 v_add23_i289_1_1 + v_and19_i285_1_1;
assume eq v_xor2569_i290_1_1 v_add23_i289_1_1 + v_and19_i285_1_1 && true;
(*   %add82.1.1 = add i64 %xor68.i278.1.1, %add82.1 *)
adds discard_191 v_add82_1_1 v_xor68_i278_1_1 v_add82_1;
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
(*   %add89.1.1 = add i64 %shr.i260.1.1, %xor2569.i290.1.1 *)
adds discard_192 v_add89_1_1 v_shr_i260_1_1 v_xor2569_i290_1_1;
(* Heuristics applied. *)
assert true && eq discard_192 0@1;
assume eq discard_192 0 && true;
(*   %add90.1.1 = add i64 %add89.1.1, %add90.1 *)
adds discard_193 v_add90_1_1 v_add89_1_1 v_add90_1;
(* Heuristics applied. *)
assert true && eq discard_193 0@1;
assume eq discard_193 0 && true;
(*   %63 = xor i64 %add89.1.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v63 v_add89_1_1 (0x8000000000000000)@uint64;
(*   %xor2.i253.1.1 = and i64 %63, %add23.i289.1.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_1_1 v63 v_add23_i289_1_1;
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
(*   %add96.1.1 = add nuw nsw i64 %or94325.1.1, %or94325.1 *)
adds discard_194 v_add96_1_1 v_or94325_1_1 v_or94325_1;
(* Heuristics applied. *)
assert true && eq discard_194 0@1;
assume eq discard_194 0 && true;
(*   %arrayidx74.1.2 = getelementptr inbounds i64, i64* %mc, i64 4 *)
(*   %64 = load i64, i64* %arrayidx74.1.2, align 8, !tbaa !3 *)
mov v64 mc_32;
(*   %65 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434p1, i64 0, i64 4), align 16, !tbaa !3 *)
mov v65 p434p1_32;
(*   %and.i262.1.2 = and i64 %64, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_1_2 v64 (0xFFFFFFFF)@uint64;
(*   %shr.i263.1.2 = lshr i64 %64, 32 *)
(* You may need to modify here *)
split v_shr_i263_1_2 tmp_to_be_used v64 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_1_2;
assume eq tmp_to_be_used v_and_i262_1_2 && true;
(*   %and1.i264.1.2 = and i64 %65, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_1_2 v65 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.1.2 = lshr i64 %65, 32 *)
(* You may need to modify here *)
split v_shr2_i265_1_2 tmp_to_be_used v65 32;
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
adds discard_195 v_add_i274_1_2 v_shr7_i271_1_2 v_and8_i272_1_2;
(* Heuristics applied. *)
assert true && eq discard_195 0@1;
assume eq discard_195 0 && true;
(*   %add10.i275.1.2 = add nuw nsw i64 %add.i274.1.2, %and9.i273.1.2 *)
adds discard_196 v_add10_i275_1_2 v_add_i274_1_2 v_and9_i273_1_2;
(* Heuristics applied. *)
assert true && eq discard_196 0@1;
assume eq discard_196 0 && true;
(*   %shr11.i276.1.2 = lshr i64 %add10.i275.1.2, 32 *)
(* You may need to modify here *)
split v_shr11_i276_1_2 tmp_to_be_used v_add10_i275_1_2 32;
(*   %shl.i277.1.2 = shl i64 %add10.i275.1.2, 32 *)
shls discard_197 v_shl_i277_1_2 v_add10_i275_1_2 32;
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
adds discard_198 v_add16_i282_1_2 v_shr13_i279_1_2 v_shr14_i280_1_2;
(* Heuristics applied. *)
assert true && eq discard_198 0@1;
assume eq discard_198 0 && true;
(*   %add17.i283.1.2 = add nuw nsw i64 %add16.i282.1.2, %and15.i281.1.2 *)
adds discard_199 v_add17_i283_1_2 v_add16_i282_1_2 v_and15_i281_1_2;
(* Heuristics applied. *)
assert true && eq discard_199 0@1;
assume eq discard_199 0 && true;
(*   %add18.i284.1.2 = add nuw nsw i64 %add17.i283.1.2, %shr11.i276.1.2 *)
adds discard_200 v_add18_i284_1_2 v_add17_i283_1_2 v_shr11_i276_1_2;
(* Heuristics applied. *)
assert true && eq discard_200 0@1;
assume eq discard_200 0 && true;
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
adds discard_201 v_add23_i289_1_2 v_and21_i287_1_2 v_and22_i288_1_2;
(* Heuristics applied. *)
assert true && eq discard_201 0@1;
assume eq discard_201 0 && true;
(*   %xor2569.i290.1.2 = or i64 %add23.i289.1.2, %and19.i285.1.2 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_1_2 v_add23_i289_1_2 v_and19_i285_1_2;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_1_2 v_add23_i289_1_2 + v_and19_i285_1_2;
assume eq v_xor2569_i290_1_2 v_add23_i289_1_2 + v_and19_i285_1_2 && true;
(*   %add82.1.2 = add i64 %xor68.i278.1.2, %add82.1.1 *)
adds discard_202 v_add82_1_2 v_xor68_i278_1_2 v_add82_1_1;
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
(*   %add89.1.2 = add i64 %shr.i260.1.2, %xor2569.i290.1.2 *)
adds discard_203 v_add89_1_2 v_shr_i260_1_2 v_xor2569_i290_1_2;
(* Heuristics applied. *)
assert true && eq discard_203 0@1;
assume eq discard_203 0 && true;
(*   %add90.1.2 = add i64 %add89.1.2, %add90.1.1 *)
adds discard_204 v_add90_1_2 v_add89_1_2 v_add90_1_1;
(* Heuristics applied. *)
assert true && eq discard_204 0@1;
assume eq discard_204 0 && true;
(*   %66 = xor i64 %add89.1.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v66 v_add89_1_2 (0x8000000000000000)@uint64;
(*   %xor2.i253.1.2 = and i64 %66, %add23.i289.1.2 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_1_2 v66 v_add23_i289_1_2;
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
(*   %add96.1.2 = add nsw i64 %or94325.1.2, %add96.1.1 *)
adds discard_205 v_add96_1_2 v_or94325_1_2 v_add96_1_1;
(* Heuristics applied. *)
assert true && eq discard_205 0@1;
assume eq discard_205 0 && true;
(*   %arrayidx74.1.3 = getelementptr inbounds i64, i64* %mc, i64 5 *)
(*   %67 = load i64, i64* %arrayidx74.1.3, align 8, !tbaa !3 *)
mov v67 mc_40;
(*   %68 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434p1, i64 0, i64 3), align 8, !tbaa !3 *)
mov v68 p434p1_24;
(*   %and.i262.1.3 = and i64 %67, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_1_3 v67 (0xFFFFFFFF)@uint64;
(*   %shr.i263.1.3 = lshr i64 %67, 32 *)
(* You may need to modify here *)
split v_shr_i263_1_3 tmp_to_be_used v67 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_1_3;
assume eq tmp_to_be_used v_and_i262_1_3 && true;
(*   %and1.i264.1.3 = and i64 %68, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_1_3 v68 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.1.3 = lshr i64 %68, 32 *)
(* You may need to modify here *)
split v_shr2_i265_1_3 tmp_to_be_used v68 32;
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
adds discard_206 v_add_i274_1_3 v_shr7_i271_1_3 v_and8_i272_1_3;
(* Heuristics applied. *)
assert true && eq discard_206 0@1;
assume eq discard_206 0 && true;
(*   %add10.i275.1.3 = add nuw nsw i64 %add.i274.1.3, %and9.i273.1.3 *)
adds discard_207 v_add10_i275_1_3 v_add_i274_1_3 v_and9_i273_1_3;
(* Heuristics applied. *)
assert true && eq discard_207 0@1;
assume eq discard_207 0 && true;
(*   %shr11.i276.1.3 = lshr i64 %add10.i275.1.3, 32 *)
(* You may need to modify here *)
split v_shr11_i276_1_3 tmp_to_be_used v_add10_i275_1_3 32;
(*   %shl.i277.1.3 = shl i64 %add10.i275.1.3, 32 *)
shls discard_208 v_shl_i277_1_3 v_add10_i275_1_3 32;
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
adds discard_209 v_add16_i282_1_3 v_shr13_i279_1_3 v_shr14_i280_1_3;
(* Heuristics applied. *)
assert true && eq discard_209 0@1;
assume eq discard_209 0 && true;
(*   %add17.i283.1.3 = add nuw nsw i64 %add16.i282.1.3, %and15.i281.1.3 *)
adds discard_210 v_add17_i283_1_3 v_add16_i282_1_3 v_and15_i281_1_3;
(* Heuristics applied. *)
assert true && eq discard_210 0@1;
assume eq discard_210 0 && true;
(*   %add18.i284.1.3 = add nuw nsw i64 %add17.i283.1.3, %shr11.i276.1.3 *)
adds discard_211 v_add18_i284_1_3 v_add17_i283_1_3 v_shr11_i276_1_3;
(* Heuristics applied. *)
assert true && eq discard_211 0@1;
assume eq discard_211 0 && true;
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
adds discard_212 v_add23_i289_1_3 v_and21_i287_1_3 v_and22_i288_1_3;
(* Heuristics applied. *)
assert true && eq discard_212 0@1;
assume eq discard_212 0 && true;
(*   %xor2569.i290.1.3 = or i64 %add23.i289.1.3, %and19.i285.1.3 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_1_3 v_add23_i289_1_3 v_and19_i285_1_3;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_1_3 v_add23_i289_1_3 + v_and19_i285_1_3;
assume eq v_xor2569_i290_1_3 v_add23_i289_1_3 + v_and19_i285_1_3 && true;
(*   %add82.1.3 = add i64 %xor68.i278.1.3, %add82.1.2 *)
adds discard_213 v_add82_1_3 v_xor68_i278_1_3 v_add82_1_2;
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
(*   %add89.1.3 = add i64 %shr.i260.1.3, %xor2569.i290.1.3 *)
adds discard_214 v_add89_1_3 v_shr_i260_1_3 v_xor2569_i290_1_3;
(* Heuristics applied. *)
assert true && eq discard_214 0@1;
assume eq discard_214 0 && true;
(*   %add90.1.3 = add i64 %add89.1.3, %add90.1.2 *)
adds discard_215 v_add90_1_3 v_add89_1_3 v_add90_1_2;
(* Heuristics applied. *)
assert true && eq discard_215 0@1;
assume eq discard_215 0 && true;
(*   %69 = xor i64 %add89.1.3, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v69 v_add89_1_3 (0x8000000000000000)@uint64;
(*   %xor2.i253.1.3 = and i64 %69, %add23.i289.1.3 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_1_3 v69 v_add23_i289_1_3;
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
(*   %add96.1.3 = add nsw i64 %or94325.1.3, %add96.1.2 *)
adds discard_216 v_add96_1_3 v_or94325_1_3 v_add96_1_2;
(* Heuristics applied. *)
assert true && eq discard_216 0@1;
assume eq discard_216 0 && true;
(*   %arrayidx104.1 = getelementptr inbounds i64, i64* %ma, i64 8 *)
(*   %70 = load i64, i64* %arrayidx104.1, align 8, !tbaa !3 *)
mov v70 ma_64;
(*   %add105.1 = add i64 %70, %add82.1.3 *)
adds discard_217 v_add105_1 v70 v_add82_1_3;
(*   %xor.i238.1 = xor i64 %add105.1, %add82.1.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i238_1 v_add105_1 v_add82_1_3;
(*   %xor1.i239.1 = xor i64 %70, %add82.1.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i239_1 v70 v_add82_1_3;
(*   %or.i240.1 = or i64 %xor.i238.1, %xor1.i239.1 *)
(* You may need to modify here *)
or uint64 v_or_i240_1 v_xor_i238_1 v_xor1_i239_1;
(*   %xor2.i241.1 = xor i64 %or.i240.1, %add105.1 *)
(* You may need to modify here *)
xor uint64 v_xor2_i241_1 v_or_i240_1 v_add105_1;
(*   %shr.i242.1 = lshr i64 %xor2.i241.1, 63 *)
(* You may need to modify here *)
split v_shr_i242_1 tmp_to_be_used v_xor2_i241_1 63;
(*   %add111.1 = add i64 %shr.i242.1, %add90.1.3 *)
adds discard_218 v_add111_1 v_shr_i242_1 v_add90_1_3;
(* Heuristics applied. *)
assert true && eq discard_218 0@1;
assume eq discard_218 0 && true;
(*   store i64 %add105.1, i64* %arrayidx50.1, align 8, !tbaa !3 *)
mov mc_8 v_add105_1;
(*   %71 = xor i64 %add111.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v71 v_add111_1 (0x8000000000000000)@uint64;
(*   %xor2.i.1 = and i64 %71, %add90.1.3 *)
(* You may need to modify here *)
and uint64 v_xor2_i_1 v71 v_add90_1_3;
(*   %shr.i237.1 = lshr i64 %xor2.i.1, 63 *)
(* You may need to modify here *)
split v_shr_i237_1 tmp_to_be_used v_xor2_i_1 63;
(*   %add118.1 = add i64 %shr.i237.1, %add96.1.3 *)
adds discard_219 v_add118_1 v_shr_i237_1 v_add96_1_3;
(* Heuristics applied. *)
assert true && eq discard_219 0@1;
assume eq discard_219 0 && true;
(*   %arrayidx74.2 = getelementptr inbounds i64, i64* %mc, i64 3 *)
(*   %72 = load i64, i64* %arrayidx74.2, align 8, !tbaa !3 *)
mov v72 mc_24;
(*   %73 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434p1, i64 0, i64 6), align 16, !tbaa !3 *)
mov v73 p434p1_48;
(*   %and.i262.2 = and i64 %72, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_2 v72 (0xFFFFFFFF)@uint64;
(*   %shr.i263.2 = lshr i64 %72, 32 *)
(* You may need to modify here *)
split v_shr_i263_2 tmp_to_be_used v72 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_2;
assume eq tmp_to_be_used v_and_i262_2 && true;
(*   %and1.i264.2 = and i64 %73, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_2 v73 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.2 = lshr i64 %73, 32 *)
(* You may need to modify here *)
split v_shr2_i265_2 tmp_to_be_used v73 32;
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
adds discard_220 v_add_i274_2 v_shr7_i271_2 v_and8_i272_2;
(* Heuristics applied. *)
assert true && eq discard_220 0@1;
assume eq discard_220 0 && true;
(*   %add10.i275.2 = add nuw nsw i64 %add.i274.2, %and9.i273.2 *)
adds discard_221 v_add10_i275_2 v_add_i274_2 v_and9_i273_2;
(* Heuristics applied. *)
assert true && eq discard_221 0@1;
assume eq discard_221 0 && true;
(*   %shr11.i276.2 = lshr i64 %add10.i275.2, 32 *)
(* You may need to modify here *)
split v_shr11_i276_2 tmp_to_be_used v_add10_i275_2 32;
(*   %shl.i277.2 = shl i64 %add10.i275.2, 32 *)
shls discard_222 v_shl_i277_2 v_add10_i275_2 32;
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
adds discard_223 v_add16_i282_2 v_shr13_i279_2 v_shr14_i280_2;
(* Heuristics applied. *)
assert true && eq discard_223 0@1;
assume eq discard_223 0 && true;
(*   %add17.i283.2 = add nuw nsw i64 %add16.i282.2, %and15.i281.2 *)
adds discard_224 v_add17_i283_2 v_add16_i282_2 v_and15_i281_2;
(* Heuristics applied. *)
assert true && eq discard_224 0@1;
assume eq discard_224 0 && true;
(*   %add18.i284.2 = add nuw nsw i64 %add17.i283.2, %shr11.i276.2 *)
adds discard_225 v_add18_i284_2 v_add17_i283_2 v_shr11_i276_2;
(* Heuristics applied. *)
assert true && eq discard_225 0@1;
assume eq discard_225 0 && true;
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
adds discard_226 v_add23_i289_2 v_and21_i287_2 v_and22_i288_2;
(* Heuristics applied. *)
assert true && eq discard_226 0@1;
assume eq discard_226 0 && true;
(*   %xor2569.i290.2 = or i64 %add23.i289.2, %and19.i285.2 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_2 v_add23_i289_2 v_and19_i285_2;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_2 v_add23_i289_2 + v_and19_i285_2;
assume eq v_xor2569_i290_2 v_add23_i289_2 + v_and19_i285_2 && true;
(*   %add82.2 = add i64 %xor68.i278.2, %add111.1 *)
adds discard_227 v_add82_2 v_xor68_i278_2 v_add111_1;
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
(*   %add89.2 = add i64 %shr.i260.2, %xor2569.i290.2 *)
adds discard_228 v_add89_2 v_shr_i260_2 v_xor2569_i290_2;
(* Heuristics applied. *)
assert true && eq discard_228 0@1;
assume eq discard_228 0 && true;
(*   %add90.2 = add i64 %add89.2, %add118.1 *)
adds discard_229 v_add90_2 v_add89_2 v_add118_1;
(* Heuristics applied. *)
assert true && eq discard_229 0@1;
assume eq discard_229 0 && true;
(*   %74 = xor i64 %add89.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v74 v_add89_2 (0x8000000000000000)@uint64;
(*   %xor2.i253.2 = and i64 %74, %add23.i289.2 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_2 v74 v_add23_i289_2;
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
(*   %arrayidx74.2.1 = getelementptr inbounds i64, i64* %mc, i64 4 *)
(*   %75 = load i64, i64* %arrayidx74.2.1, align 8, !tbaa !3 *)
mov v75 mc_32;
(*   %76 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434p1, i64 0, i64 5), align 8, !tbaa !3 *)
mov v76 p434p1_40;
(*   %and.i262.2.1 = and i64 %75, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_2_1 v75 (0xFFFFFFFF)@uint64;
(*   %shr.i263.2.1 = lshr i64 %75, 32 *)
(* You may need to modify here *)
split v_shr_i263_2_1 tmp_to_be_used v75 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_2_1;
assume eq tmp_to_be_used v_and_i262_2_1 && true;
(*   %and1.i264.2.1 = and i64 %76, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_2_1 v76 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.2.1 = lshr i64 %76, 32 *)
(* You may need to modify here *)
split v_shr2_i265_2_1 tmp_to_be_used v76 32;
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
adds discard_230 v_add_i274_2_1 v_shr7_i271_2_1 v_and8_i272_2_1;
(* Heuristics applied. *)
assert true && eq discard_230 0@1;
assume eq discard_230 0 && true;
(*   %add10.i275.2.1 = add nuw nsw i64 %add.i274.2.1, %and9.i273.2.1 *)
adds discard_231 v_add10_i275_2_1 v_add_i274_2_1 v_and9_i273_2_1;
(* Heuristics applied. *)
assert true && eq discard_231 0@1;
assume eq discard_231 0 && true;
(*   %shr11.i276.2.1 = lshr i64 %add10.i275.2.1, 32 *)
(* You may need to modify here *)
split v_shr11_i276_2_1 tmp_to_be_used v_add10_i275_2_1 32;
(*   %shl.i277.2.1 = shl i64 %add10.i275.2.1, 32 *)
shls discard_232 v_shl_i277_2_1 v_add10_i275_2_1 32;
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
adds discard_233 v_add16_i282_2_1 v_shr13_i279_2_1 v_shr14_i280_2_1;
(* Heuristics applied. *)
assert true && eq discard_233 0@1;
assume eq discard_233 0 && true;
(*   %add17.i283.2.1 = add nuw nsw i64 %add16.i282.2.1, %and15.i281.2.1 *)
adds discard_234 v_add17_i283_2_1 v_add16_i282_2_1 v_and15_i281_2_1;
(* Heuristics applied. *)
assert true && eq discard_234 0@1;
assume eq discard_234 0 && true;
(*   %add18.i284.2.1 = add nuw nsw i64 %add17.i283.2.1, %shr11.i276.2.1 *)
adds discard_235 v_add18_i284_2_1 v_add17_i283_2_1 v_shr11_i276_2_1;
(* Heuristics applied. *)
assert true && eq discard_235 0@1;
assume eq discard_235 0 && true;
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
adds discard_236 v_add23_i289_2_1 v_and21_i287_2_1 v_and22_i288_2_1;
(* Heuristics applied. *)
assert true && eq discard_236 0@1;
assume eq discard_236 0 && true;
(*   %xor2569.i290.2.1 = or i64 %add23.i289.2.1, %and19.i285.2.1 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_2_1 v_add23_i289_2_1 v_and19_i285_2_1;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_2_1 v_add23_i289_2_1 + v_and19_i285_2_1;
assume eq v_xor2569_i290_2_1 v_add23_i289_2_1 + v_and19_i285_2_1 && true;
(*   %add82.2.1 = add i64 %xor68.i278.2.1, %add82.2 *)
adds discard_237 v_add82_2_1 v_xor68_i278_2_1 v_add82_2;
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
(*   %add89.2.1 = add i64 %shr.i260.2.1, %xor2569.i290.2.1 *)
adds discard_238 v_add89_2_1 v_shr_i260_2_1 v_xor2569_i290_2_1;
(* Heuristics applied. *)
assert true && eq discard_238 0@1;
assume eq discard_238 0 && true;
(*   %add90.2.1 = add i64 %add89.2.1, %add90.2 *)
adds discard_239 v_add90_2_1 v_add89_2_1 v_add90_2;
(* Heuristics applied. *)
assert true && eq discard_239 0@1;
assume eq discard_239 0 && true;
(*   %77 = xor i64 %add89.2.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v77 v_add89_2_1 (0x8000000000000000)@uint64;
(*   %xor2.i253.2.1 = and i64 %77, %add23.i289.2.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_2_1 v77 v_add23_i289_2_1;
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
(*   %add96.2.1 = add nuw nsw i64 %or94325.2.1, %or94325.2 *)
adds discard_240 v_add96_2_1 v_or94325_2_1 v_or94325_2;
(* Heuristics applied. *)
assert true && eq discard_240 0@1;
assume eq discard_240 0 && true;
(*   %arrayidx74.2.2 = getelementptr inbounds i64, i64* %mc, i64 5 *)
(*   %78 = load i64, i64* %arrayidx74.2.2, align 8, !tbaa !3 *)
mov v78 mc_40;
(*   %79 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434p1, i64 0, i64 4), align 16, !tbaa !3 *)
mov v79 p434p1_32;
(*   %and.i262.2.2 = and i64 %78, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_2_2 v78 (0xFFFFFFFF)@uint64;
(*   %shr.i263.2.2 = lshr i64 %78, 32 *)
(* You may need to modify here *)
split v_shr_i263_2_2 tmp_to_be_used v78 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_2_2;
assume eq tmp_to_be_used v_and_i262_2_2 && true;
(*   %and1.i264.2.2 = and i64 %79, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_2_2 v79 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.2.2 = lshr i64 %79, 32 *)
(* You may need to modify here *)
split v_shr2_i265_2_2 tmp_to_be_used v79 32;
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
adds discard_241 v_add_i274_2_2 v_shr7_i271_2_2 v_and8_i272_2_2;
(* Heuristics applied. *)
assert true && eq discard_241 0@1;
assume eq discard_241 0 && true;
(*   %add10.i275.2.2 = add nuw nsw i64 %add.i274.2.2, %and9.i273.2.2 *)
adds discard_242 v_add10_i275_2_2 v_add_i274_2_2 v_and9_i273_2_2;
(* Heuristics applied. *)
assert true && eq discard_242 0@1;
assume eq discard_242 0 && true;
(*   %shr11.i276.2.2 = lshr i64 %add10.i275.2.2, 32 *)
(* You may need to modify here *)
split v_shr11_i276_2_2 tmp_to_be_used v_add10_i275_2_2 32;
(*   %shl.i277.2.2 = shl i64 %add10.i275.2.2, 32 *)
shls discard_243 v_shl_i277_2_2 v_add10_i275_2_2 32;
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
adds discard_244 v_add16_i282_2_2 v_shr13_i279_2_2 v_shr14_i280_2_2;
(* Heuristics applied. *)
assert true && eq discard_244 0@1;
assume eq discard_244 0 && true;
(*   %add17.i283.2.2 = add nuw nsw i64 %add16.i282.2.2, %and15.i281.2.2 *)
adds discard_245 v_add17_i283_2_2 v_add16_i282_2_2 v_and15_i281_2_2;
(* Heuristics applied. *)
assert true && eq discard_245 0@1;
assume eq discard_245 0 && true;
(*   %add18.i284.2.2 = add nuw nsw i64 %add17.i283.2.2, %shr11.i276.2.2 *)
adds discard_246 v_add18_i284_2_2 v_add17_i283_2_2 v_shr11_i276_2_2;
(* Heuristics applied. *)
assert true && eq discard_246 0@1;
assume eq discard_246 0 && true;
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
adds discard_247 v_add23_i289_2_2 v_and21_i287_2_2 v_and22_i288_2_2;
(* Heuristics applied. *)
assert true && eq discard_247 0@1;
assume eq discard_247 0 && true;
(*   %xor2569.i290.2.2 = or i64 %add23.i289.2.2, %and19.i285.2.2 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_2_2 v_add23_i289_2_2 v_and19_i285_2_2;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_2_2 v_add23_i289_2_2 + v_and19_i285_2_2;
assume eq v_xor2569_i290_2_2 v_add23_i289_2_2 + v_and19_i285_2_2 && true;
(*   %add82.2.2 = add i64 %xor68.i278.2.2, %add82.2.1 *)
adds discard_248 v_add82_2_2 v_xor68_i278_2_2 v_add82_2_1;
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
(*   %add89.2.2 = add i64 %shr.i260.2.2, %xor2569.i290.2.2 *)
adds discard_249 v_add89_2_2 v_shr_i260_2_2 v_xor2569_i290_2_2;
(* Heuristics applied. *)
assert true && eq discard_249 0@1;
assume eq discard_249 0 && true;
(*   %add90.2.2 = add i64 %add89.2.2, %add90.2.1 *)
adds discard_250 v_add90_2_2 v_add89_2_2 v_add90_2_1;
(* Heuristics applied. *)
assert true && eq discard_250 0@1;
assume eq discard_250 0 && true;
(*   %80 = xor i64 %add89.2.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v80 v_add89_2_2 (0x8000000000000000)@uint64;
(*   %xor2.i253.2.2 = and i64 %80, %add23.i289.2.2 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_2_2 v80 v_add23_i289_2_2;
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
(*   %add96.2.2 = add nsw i64 %or94325.2.2, %add96.2.1 *)
adds discard_251 v_add96_2_2 v_or94325_2_2 v_add96_2_1;
(* Heuristics applied. *)
assert true && eq discard_251 0@1;
assume eq discard_251 0 && true;
(*   %arrayidx74.2.3 = getelementptr inbounds i64, i64* %mc, i64 6 *)
(*   %81 = load i64, i64* %arrayidx74.2.3, align 8, !tbaa !3 *)
mov v81 mc_48;
(*   %82 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434p1, i64 0, i64 3), align 8, !tbaa !3 *)
mov v82 p434p1_24;
(*   %and.i262.2.3 = and i64 %81, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_2_3 v81 (0xFFFFFFFF)@uint64;
(*   %shr.i263.2.3 = lshr i64 %81, 32 *)
(* You may need to modify here *)
split v_shr_i263_2_3 tmp_to_be_used v81 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_2_3;
assume eq tmp_to_be_used v_and_i262_2_3 && true;
(*   %and1.i264.2.3 = and i64 %82, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_2_3 v82 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.2.3 = lshr i64 %82, 32 *)
(* You may need to modify here *)
split v_shr2_i265_2_3 tmp_to_be_used v82 32;
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
adds discard_252 v_add_i274_2_3 v_shr7_i271_2_3 v_and8_i272_2_3;
(* Heuristics applied. *)
assert true && eq discard_252 0@1;
assume eq discard_252 0 && true;
(*   %add10.i275.2.3 = add nuw nsw i64 %add.i274.2.3, %and9.i273.2.3 *)
adds discard_253 v_add10_i275_2_3 v_add_i274_2_3 v_and9_i273_2_3;
(* Heuristics applied. *)
assert true && eq discard_253 0@1;
assume eq discard_253 0 && true;
(*   %shr11.i276.2.3 = lshr i64 %add10.i275.2.3, 32 *)
(* You may need to modify here *)
split v_shr11_i276_2_3 tmp_to_be_used v_add10_i275_2_3 32;
(*   %shl.i277.2.3 = shl i64 %add10.i275.2.3, 32 *)
shls discard_254 v_shl_i277_2_3 v_add10_i275_2_3 32;
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
adds discard_255 v_add16_i282_2_3 v_shr13_i279_2_3 v_shr14_i280_2_3;
(* Heuristics applied. *)
assert true && eq discard_255 0@1;
assume eq discard_255 0 && true;
(*   %add17.i283.2.3 = add nuw nsw i64 %add16.i282.2.3, %and15.i281.2.3 *)
adds discard_256 v_add17_i283_2_3 v_add16_i282_2_3 v_and15_i281_2_3;
(* Heuristics applied. *)
assert true && eq discard_256 0@1;
assume eq discard_256 0 && true;
(*   %add18.i284.2.3 = add nuw nsw i64 %add17.i283.2.3, %shr11.i276.2.3 *)
adds discard_257 v_add18_i284_2_3 v_add17_i283_2_3 v_shr11_i276_2_3;
(* Heuristics applied. *)
assert true && eq discard_257 0@1;
assume eq discard_257 0 && true;
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
adds discard_258 v_add23_i289_2_3 v_and21_i287_2_3 v_and22_i288_2_3;
(* Heuristics applied. *)
assert true && eq discard_258 0@1;
assume eq discard_258 0 && true;
(*   %xor2569.i290.2.3 = or i64 %add23.i289.2.3, %and19.i285.2.3 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_2_3 v_add23_i289_2_3 v_and19_i285_2_3;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_2_3 v_add23_i289_2_3 + v_and19_i285_2_3;
assume eq v_xor2569_i290_2_3 v_add23_i289_2_3 + v_and19_i285_2_3 && true;
(*   %add82.2.3 = add i64 %xor68.i278.2.3, %add82.2.2 *)
adds discard_259 v_add82_2_3 v_xor68_i278_2_3 v_add82_2_2;
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
(*   %add89.2.3 = add i64 %shr.i260.2.3, %xor2569.i290.2.3 *)
adds discard_260 v_add89_2_3 v_shr_i260_2_3 v_xor2569_i290_2_3;
(* Heuristics applied. *)
assert true && eq discard_260 0@1;
assume eq discard_260 0 && true;
(*   %add90.2.3 = add i64 %add89.2.3, %add90.2.2 *)
adds discard_261 v_add90_2_3 v_add89_2_3 v_add90_2_2;
(* Heuristics applied. *)
assert true && eq discard_261 0@1;
assume eq discard_261 0 && true;
(*   %83 = xor i64 %add89.2.3, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v83 v_add89_2_3 (0x8000000000000000)@uint64;
(*   %xor2.i253.2.3 = and i64 %83, %add23.i289.2.3 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_2_3 v83 v_add23_i289_2_3;
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
(*   %add96.2.3 = add nsw i64 %or94325.2.3, %add96.2.2 *)
adds discard_262 v_add96_2_3 v_or94325_2_3 v_add96_2_2;
(* Heuristics applied. *)
assert true && eq discard_262 0@1;
assume eq discard_262 0 && true;
(*   %arrayidx104.2 = getelementptr inbounds i64, i64* %ma, i64 9 *)
(*   %84 = load i64, i64* %arrayidx104.2, align 8, !tbaa !3 *)
mov v84 ma_72;
(*   %add105.2 = add i64 %84, %add82.2.3 *)
adds discard_263 v_add105_2 v84 v_add82_2_3;
(*   %xor.i238.2 = xor i64 %add105.2, %add82.2.3 *)
(* You may need to modify here *)
xor uint64 v_xor_i238_2 v_add105_2 v_add82_2_3;
(*   %xor1.i239.2 = xor i64 %84, %add82.2.3 *)
(* You may need to modify here *)
xor uint64 v_xor1_i239_2 v84 v_add82_2_3;
(*   %or.i240.2 = or i64 %xor.i238.2, %xor1.i239.2 *)
(* You may need to modify here *)
or uint64 v_or_i240_2 v_xor_i238_2 v_xor1_i239_2;
(*   %xor2.i241.2 = xor i64 %or.i240.2, %add105.2 *)
(* You may need to modify here *)
xor uint64 v_xor2_i241_2 v_or_i240_2 v_add105_2;
(*   %shr.i242.2 = lshr i64 %xor2.i241.2, 63 *)
(* You may need to modify here *)
split v_shr_i242_2 tmp_to_be_used v_xor2_i241_2 63;
(*   %add111.2 = add i64 %shr.i242.2, %add90.2.3 *)
adds discard_264 v_add111_2 v_shr_i242_2 v_add90_2_3;
(* Heuristics applied. *)
assert true && eq discard_264 0@1;
assume eq discard_264 0 && true;
(*   store i64 %add105.2, i64* %arrayidx50.2, align 8, !tbaa !3 *)
mov mc_16 v_add105_2;
(*   %85 = xor i64 %add111.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v85 v_add111_2 (0x8000000000000000)@uint64;
(*   %xor2.i.2 = and i64 %85, %add90.2.3 *)
(* You may need to modify here *)
and uint64 v_xor2_i_2 v85 v_add90_2_3;
(*   %shr.i237.2 = lshr i64 %xor2.i.2, 63 *)
(* You may need to modify here *)
split v_shr_i237_2 tmp_to_be_used v_xor2_i_2 63;
(*   %add118.2 = add i64 %shr.i237.2, %add96.2.3 *)
adds discard_265 v_add118_2 v_shr_i237_2 v_add96_2_3;
(* Heuristics applied. *)
assert true && eq discard_265 0@1;
assume eq discard_265 0 && true;
(*   %arrayidx74.3 = getelementptr inbounds i64, i64* %mc, i64 4 *)
(*   %86 = load i64, i64* %arrayidx74.3, align 8, !tbaa !3 *)
mov v86 mc_32;
(*   %87 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434p1, i64 0, i64 6), align 16, !tbaa !3 *)
mov v87 p434p1_48;
(*   %and.i262.3 = and i64 %86, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_3 v86 (0xFFFFFFFF)@uint64;
(*   %shr.i263.3 = lshr i64 %86, 32 *)
(* You may need to modify here *)
split v_shr_i263_3 tmp_to_be_used v86 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_3;
assume eq tmp_to_be_used v_and_i262_3 && true;
(*   %and1.i264.3 = and i64 %87, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_3 v87 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.3 = lshr i64 %87, 32 *)
(* You may need to modify here *)
split v_shr2_i265_3 tmp_to_be_used v87 32;
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
adds discard_266 v_add_i274_3 v_shr7_i271_3 v_and8_i272_3;
(* Heuristics applied. *)
assert true && eq discard_266 0@1;
assume eq discard_266 0 && true;
(*   %add10.i275.3 = add nuw nsw i64 %add.i274.3, %and9.i273.3 *)
adds discard_267 v_add10_i275_3 v_add_i274_3 v_and9_i273_3;
(* Heuristics applied. *)
assert true && eq discard_267 0@1;
assume eq discard_267 0 && true;
(*   %shr11.i276.3 = lshr i64 %add10.i275.3, 32 *)
(* You may need to modify here *)
split v_shr11_i276_3 tmp_to_be_used v_add10_i275_3 32;
(*   %shl.i277.3 = shl i64 %add10.i275.3, 32 *)
shls discard_268 v_shl_i277_3 v_add10_i275_3 32;
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
adds discard_269 v_add16_i282_3 v_shr13_i279_3 v_shr14_i280_3;
(* Heuristics applied. *)
assert true && eq discard_269 0@1;
assume eq discard_269 0 && true;
(*   %add17.i283.3 = add nuw nsw i64 %add16.i282.3, %and15.i281.3 *)
adds discard_270 v_add17_i283_3 v_add16_i282_3 v_and15_i281_3;
(* Heuristics applied. *)
assert true && eq discard_270 0@1;
assume eq discard_270 0 && true;
(*   %add18.i284.3 = add nuw nsw i64 %add17.i283.3, %shr11.i276.3 *)
adds discard_271 v_add18_i284_3 v_add17_i283_3 v_shr11_i276_3;
(* Heuristics applied. *)
assert true && eq discard_271 0@1;
assume eq discard_271 0 && true;
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
adds discard_272 v_add23_i289_3 v_and21_i287_3 v_and22_i288_3;
(* Heuristics applied. *)
assert true && eq discard_272 0@1;
assume eq discard_272 0 && true;
(*   %xor2569.i290.3 = or i64 %add23.i289.3, %and19.i285.3 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_3 v_add23_i289_3 v_and19_i285_3;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_3 v_add23_i289_3 + v_and19_i285_3;
assume eq v_xor2569_i290_3 v_add23_i289_3 + v_and19_i285_3 && true;
(*   %add82.3 = add i64 %xor68.i278.3, %add111.2 *)
adds discard_273 v_add82_3 v_xor68_i278_3 v_add111_2;
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
(*   %add89.3 = add i64 %shr.i260.3, %xor2569.i290.3 *)
adds discard_274 v_add89_3 v_shr_i260_3 v_xor2569_i290_3;
(* Heuristics applied. *)
assert true && eq discard_274 0@1;
assume eq discard_274 0 && true;
(*   %add90.3 = add i64 %add89.3, %add118.2 *)
adds discard_275 v_add90_3 v_add89_3 v_add118_2;
(* Heuristics applied. *)
assert true && eq discard_275 0@1;
assume eq discard_275 0 && true;
(*   %88 = xor i64 %add89.3, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v88 v_add89_3 (0x8000000000000000)@uint64;
(*   %xor2.i253.3 = and i64 %88, %add23.i289.3 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_3 v88 v_add23_i289_3;
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
(*   %arrayidx74.3.1 = getelementptr inbounds i64, i64* %mc, i64 5 *)
(*   %89 = load i64, i64* %arrayidx74.3.1, align 8, !tbaa !3 *)
mov v89 mc_40;
(*   %90 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434p1, i64 0, i64 5), align 8, !tbaa !3 *)
mov v90 p434p1_40;
(*   %and.i262.3.1 = and i64 %89, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_3_1 v89 (0xFFFFFFFF)@uint64;
(*   %shr.i263.3.1 = lshr i64 %89, 32 *)
(* You may need to modify here *)
split v_shr_i263_3_1 tmp_to_be_used v89 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_3_1;
assume eq tmp_to_be_used v_and_i262_3_1 && true;
(*   %and1.i264.3.1 = and i64 %90, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_3_1 v90 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.3.1 = lshr i64 %90, 32 *)
(* You may need to modify here *)
split v_shr2_i265_3_1 tmp_to_be_used v90 32;
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
adds discard_276 v_add_i274_3_1 v_shr7_i271_3_1 v_and8_i272_3_1;
(* Heuristics applied. *)
assert true && eq discard_276 0@1;
assume eq discard_276 0 && true;
(*   %add10.i275.3.1 = add nuw nsw i64 %add.i274.3.1, %and9.i273.3.1 *)
adds discard_277 v_add10_i275_3_1 v_add_i274_3_1 v_and9_i273_3_1;
(* Heuristics applied. *)
assert true && eq discard_277 0@1;
assume eq discard_277 0 && true;
(*   %shr11.i276.3.1 = lshr i64 %add10.i275.3.1, 32 *)
(* You may need to modify here *)
split v_shr11_i276_3_1 tmp_to_be_used v_add10_i275_3_1 32;
(*   %shl.i277.3.1 = shl i64 %add10.i275.3.1, 32 *)
shls discard_278 v_shl_i277_3_1 v_add10_i275_3_1 32;
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
adds discard_279 v_add16_i282_3_1 v_shr13_i279_3_1 v_shr14_i280_3_1;
(* Heuristics applied. *)
assert true && eq discard_279 0@1;
assume eq discard_279 0 && true;
(*   %add17.i283.3.1 = add nuw nsw i64 %add16.i282.3.1, %and15.i281.3.1 *)
adds discard_280 v_add17_i283_3_1 v_add16_i282_3_1 v_and15_i281_3_1;
(* Heuristics applied. *)
assert true && eq discard_280 0@1;
assume eq discard_280 0 && true;
(*   %add18.i284.3.1 = add nuw nsw i64 %add17.i283.3.1, %shr11.i276.3.1 *)
adds discard_281 v_add18_i284_3_1 v_add17_i283_3_1 v_shr11_i276_3_1;
(* Heuristics applied. *)
assert true && eq discard_281 0@1;
assume eq discard_281 0 && true;
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
adds discard_282 v_add23_i289_3_1 v_and21_i287_3_1 v_and22_i288_3_1;
(* Heuristics applied. *)
assert true && eq discard_282 0@1;
assume eq discard_282 0 && true;
(*   %xor2569.i290.3.1 = or i64 %add23.i289.3.1, %and19.i285.3.1 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_3_1 v_add23_i289_3_1 v_and19_i285_3_1;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_3_1 v_add23_i289_3_1 + v_and19_i285_3_1;
assume eq v_xor2569_i290_3_1 v_add23_i289_3_1 + v_and19_i285_3_1 && true;
(*   %add82.3.1 = add i64 %xor68.i278.3.1, %add82.3 *)
adds discard_283 v_add82_3_1 v_xor68_i278_3_1 v_add82_3;
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
(*   %add89.3.1 = add i64 %shr.i260.3.1, %xor2569.i290.3.1 *)
adds discard_284 v_add89_3_1 v_shr_i260_3_1 v_xor2569_i290_3_1;
(* Heuristics applied. *)
assert true && eq discard_284 0@1;
assume eq discard_284 0 && true;
(*   %add90.3.1 = add i64 %add89.3.1, %add90.3 *)
adds discard_285 v_add90_3_1 v_add89_3_1 v_add90_3;
(* Heuristics applied. *)
assert true && eq discard_285 0@1;
assume eq discard_285 0 && true;
(*   %91 = xor i64 %add89.3.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v91 v_add89_3_1 (0x8000000000000000)@uint64;
(*   %xor2.i253.3.1 = and i64 %91, %add23.i289.3.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_3_1 v91 v_add23_i289_3_1;
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
(*   %add96.3.1 = add nuw nsw i64 %or94325.3.1, %or94325.3 *)
adds discard_286 v_add96_3_1 v_or94325_3_1 v_or94325_3;
(* Heuristics applied. *)
assert true && eq discard_286 0@1;
assume eq discard_286 0 && true;
(*   %arrayidx74.3.2 = getelementptr inbounds i64, i64* %mc, i64 6 *)
(*   %92 = load i64, i64* %arrayidx74.3.2, align 8, !tbaa !3 *)
mov v92 mc_48;
(*   %93 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434p1, i64 0, i64 4), align 16, !tbaa !3 *)
mov v93 p434p1_32;
(*   %and.i262.3.2 = and i64 %92, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_3_2 v92 (0xFFFFFFFF)@uint64;
(*   %shr.i263.3.2 = lshr i64 %92, 32 *)
(* You may need to modify here *)
split v_shr_i263_3_2 tmp_to_be_used v92 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_3_2;
assume eq tmp_to_be_used v_and_i262_3_2 && true;
(*   %and1.i264.3.2 = and i64 %93, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_3_2 v93 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.3.2 = lshr i64 %93, 32 *)
(* You may need to modify here *)
split v_shr2_i265_3_2 tmp_to_be_used v93 32;
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
adds discard_287 v_add_i274_3_2 v_shr7_i271_3_2 v_and8_i272_3_2;
(* Heuristics applied. *)
assert true && eq discard_287 0@1;
assume eq discard_287 0 && true;
(*   %add10.i275.3.2 = add nuw nsw i64 %add.i274.3.2, %and9.i273.3.2 *)
adds discard_288 v_add10_i275_3_2 v_add_i274_3_2 v_and9_i273_3_2;
(* Heuristics applied. *)
assert true && eq discard_288 0@1;
assume eq discard_288 0 && true;
(*   %shr11.i276.3.2 = lshr i64 %add10.i275.3.2, 32 *)
(* You may need to modify here *)
split v_shr11_i276_3_2 tmp_to_be_used v_add10_i275_3_2 32;
(*   %shl.i277.3.2 = shl i64 %add10.i275.3.2, 32 *)
shls discard_289 v_shl_i277_3_2 v_add10_i275_3_2 32;
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
adds discard_290 v_add16_i282_3_2 v_shr13_i279_3_2 v_shr14_i280_3_2;
(* Heuristics applied. *)
assert true && eq discard_290 0@1;
assume eq discard_290 0 && true;
(*   %add17.i283.3.2 = add nuw nsw i64 %add16.i282.3.2, %and15.i281.3.2 *)
adds discard_291 v_add17_i283_3_2 v_add16_i282_3_2 v_and15_i281_3_2;
(* Heuristics applied. *)
assert true && eq discard_291 0@1;
assume eq discard_291 0 && true;
(*   %add18.i284.3.2 = add nuw nsw i64 %add17.i283.3.2, %shr11.i276.3.2 *)
adds discard_292 v_add18_i284_3_2 v_add17_i283_3_2 v_shr11_i276_3_2;
(* Heuristics applied. *)
assert true && eq discard_292 0@1;
assume eq discard_292 0 && true;
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
adds discard_293 v_add23_i289_3_2 v_and21_i287_3_2 v_and22_i288_3_2;
(* Heuristics applied. *)
assert true && eq discard_293 0@1;
assume eq discard_293 0 && true;
(*   %xor2569.i290.3.2 = or i64 %add23.i289.3.2, %and19.i285.3.2 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_3_2 v_add23_i289_3_2 v_and19_i285_3_2;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_3_2 v_add23_i289_3_2 + v_and19_i285_3_2;
assume eq v_xor2569_i290_3_2 v_add23_i289_3_2 + v_and19_i285_3_2 && true;
(*   %add82.3.2 = add i64 %xor68.i278.3.2, %add82.3.1 *)
adds discard_294 v_add82_3_2 v_xor68_i278_3_2 v_add82_3_1;
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
(*   %add89.3.2 = add i64 %shr.i260.3.2, %xor2569.i290.3.2 *)
adds discard_295 v_add89_3_2 v_shr_i260_3_2 v_xor2569_i290_3_2;
(* Heuristics applied. *)
assert true && eq discard_295 0@1;
assume eq discard_295 0 && true;
(*   %add90.3.2 = add i64 %add89.3.2, %add90.3.1 *)
adds discard_296 v_add90_3_2 v_add89_3_2 v_add90_3_1;
(* Heuristics applied. *)
assert true && eq discard_296 0@1;
assume eq discard_296 0 && true;
(*   %94 = xor i64 %add89.3.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v94 v_add89_3_2 (0x8000000000000000)@uint64;
(*   %xor2.i253.3.2 = and i64 %94, %add23.i289.3.2 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_3_2 v94 v_add23_i289_3_2;
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
(*   %add96.3.2 = add nsw i64 %or94325.3.2, %add96.3.1 *)
adds discard_297 v_add96_3_2 v_or94325_3_2 v_add96_3_1;
(* Heuristics applied. *)
assert true && eq discard_297 0@1;
assume eq discard_297 0 && true;
(*   %arrayidx104.3 = getelementptr inbounds i64, i64* %ma, i64 10 *)
(*   %95 = load i64, i64* %arrayidx104.3, align 8, !tbaa !3 *)
mov v95 ma_80;
(*   %add105.3 = add i64 %95, %add82.3.2 *)
adds discard_298 v_add105_3 v95 v_add82_3_2;
(*   %xor.i238.3 = xor i64 %add105.3, %add82.3.2 *)
(* You may need to modify here *)
xor uint64 v_xor_i238_3 v_add105_3 v_add82_3_2;
(*   %xor1.i239.3 = xor i64 %95, %add82.3.2 *)
(* You may need to modify here *)
xor uint64 v_xor1_i239_3 v95 v_add82_3_2;
(*   %or.i240.3 = or i64 %xor.i238.3, %xor1.i239.3 *)
(* You may need to modify here *)
or uint64 v_or_i240_3 v_xor_i238_3 v_xor1_i239_3;
(*   %xor2.i241.3 = xor i64 %or.i240.3, %add105.3 *)
(* You may need to modify here *)
xor uint64 v_xor2_i241_3 v_or_i240_3 v_add105_3;
(*   %shr.i242.3 = lshr i64 %xor2.i241.3, 63 *)
(* You may need to modify here *)
split v_shr_i242_3 tmp_to_be_used v_xor2_i241_3 63;
(*   %add111.3 = add i64 %shr.i242.3, %add90.3.2 *)
adds discard_299 v_add111_3 v_shr_i242_3 v_add90_3_2;
(* Heuristics applied. *)
assert true && eq discard_299 0@1;
assume eq discard_299 0 && true;
(*   store i64 %add105.3, i64* %arrayidx50.3, align 8, !tbaa !3 *)
mov mc_24 v_add105_3;
(*   %96 = xor i64 %add111.3, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v96 v_add111_3 (0x8000000000000000)@uint64;
(*   %xor2.i.3 = and i64 %96, %add90.3.2 *)
(* You may need to modify here *)
and uint64 v_xor2_i_3 v96 v_add90_3_2;
(*   %shr.i237.3 = lshr i64 %xor2.i.3, 63 *)
(* You may need to modify here *)
split v_shr_i237_3 tmp_to_be_used v_xor2_i_3 63;
(*   %add118.3 = add nsw i64 %shr.i237.3, %add96.3.2 *)
adds discard_300 v_add118_3 v_shr_i237_3 v_add96_3_2;
(* Heuristics applied. *)
assert true && eq discard_300 0@1;
assume eq discard_300 0 && true;
(*   %arrayidx74.4 = getelementptr inbounds i64, i64* %mc, i64 5 *)
(*   %97 = load i64, i64* %arrayidx74.4, align 8, !tbaa !3 *)
mov v97 mc_40;
(*   %98 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434p1, i64 0, i64 6), align 16, !tbaa !3 *)
mov v98 p434p1_48;
(*   %and.i262.4 = and i64 %97, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_4 v97 (0xFFFFFFFF)@uint64;
(*   %shr.i263.4 = lshr i64 %97, 32 *)
(* You may need to modify here *)
split v_shr_i263_4 tmp_to_be_used v97 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_4;
assume eq tmp_to_be_used v_and_i262_4 && true;
(*   %and1.i264.4 = and i64 %98, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_4 v98 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.4 = lshr i64 %98, 32 *)
(* You may need to modify here *)
split v_shr2_i265_4 tmp_to_be_used v98 32;
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
adds discard_301 v_add_i274_4 v_shr7_i271_4 v_and8_i272_4;
(* Heuristics applied. *)
assert true && eq discard_301 0@1;
assume eq discard_301 0 && true;
(*   %add10.i275.4 = add nuw nsw i64 %add.i274.4, %and9.i273.4 *)
adds discard_302 v_add10_i275_4 v_add_i274_4 v_and9_i273_4;
(* Heuristics applied. *)
assert true && eq discard_302 0@1;
assume eq discard_302 0 && true;
(*   %shr11.i276.4 = lshr i64 %add10.i275.4, 32 *)
(* You may need to modify here *)
split v_shr11_i276_4 tmp_to_be_used v_add10_i275_4 32;
(*   %shl.i277.4 = shl i64 %add10.i275.4, 32 *)
shls discard_303 v_shl_i277_4 v_add10_i275_4 32;
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
adds discard_304 v_add16_i282_4 v_shr13_i279_4 v_shr14_i280_4;
(* Heuristics applied. *)
assert true && eq discard_304 0@1;
assume eq discard_304 0 && true;
(*   %add17.i283.4 = add nuw nsw i64 %add16.i282.4, %and15.i281.4 *)
adds discard_305 v_add17_i283_4 v_add16_i282_4 v_and15_i281_4;
(* Heuristics applied. *)
assert true && eq discard_305 0@1;
assume eq discard_305 0 && true;
(*   %add18.i284.4 = add nuw nsw i64 %add17.i283.4, %shr11.i276.4 *)
adds discard_306 v_add18_i284_4 v_add17_i283_4 v_shr11_i276_4;
(* Heuristics applied. *)
assert true && eq discard_306 0@1;
assume eq discard_306 0 && true;
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
adds discard_307 v_add23_i289_4 v_and21_i287_4 v_and22_i288_4;
(* Heuristics applied. *)
assert true && eq discard_307 0@1;
assume eq discard_307 0 && true;
(*   %xor2569.i290.4 = or i64 %add23.i289.4, %and19.i285.4 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_4 v_add23_i289_4 v_and19_i285_4;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_4 v_add23_i289_4 + v_and19_i285_4;
assume eq v_xor2569_i290_4 v_add23_i289_4 + v_and19_i285_4 && true;
(*   %add82.4 = add i64 %xor68.i278.4, %add111.3 *)
adds discard_308 v_add82_4 v_xor68_i278_4 v_add111_3;
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
(*   %add89.4 = add i64 %shr.i260.4, %xor2569.i290.4 *)
adds discard_309 v_add89_4 v_shr_i260_4 v_xor2569_i290_4;
(* Heuristics applied. *)
assert true && eq discard_309 0@1;
assume eq discard_309 0 && true;
(*   %add90.4 = add i64 %add89.4, %add118.3 *)
adds discard_310 v_add90_4 v_add89_4 v_add118_3;
(* Heuristics applied. *)
assert true && eq discard_310 0@1;
assume eq discard_310 0 && true;
(*   %99 = xor i64 %add89.4, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v99 v_add89_4 (0x8000000000000000)@uint64;
(*   %xor2.i253.4 = and i64 %99, %add23.i289.4 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_4 v99 v_add23_i289_4;
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
(*   %arrayidx74.4.1 = getelementptr inbounds i64, i64* %mc, i64 6 *)
(*   %100 = load i64, i64* %arrayidx74.4.1, align 8, !tbaa !3 *)
mov v100 mc_48;
(*   %101 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434p1, i64 0, i64 5), align 8, !tbaa !3 *)
mov v101 p434p1_40;
(*   %and.i262.4.1 = and i64 %100, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_4_1 v100 (0xFFFFFFFF)@uint64;
(*   %shr.i263.4.1 = lshr i64 %100, 32 *)
(* You may need to modify here *)
split v_shr_i263_4_1 tmp_to_be_used v100 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_4_1;
assume eq tmp_to_be_used v_and_i262_4_1 && true;
(*   %and1.i264.4.1 = and i64 %101, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_4_1 v101 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.4.1 = lshr i64 %101, 32 *)
(* You may need to modify here *)
split v_shr2_i265_4_1 tmp_to_be_used v101 32;
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
adds discard_311 v_add_i274_4_1 v_shr7_i271_4_1 v_and8_i272_4_1;
(* Heuristics applied. *)
assert true && eq discard_311 0@1;
assume eq discard_311 0 && true;
(*   %add10.i275.4.1 = add nuw nsw i64 %add.i274.4.1, %and9.i273.4.1 *)
adds discard_312 v_add10_i275_4_1 v_add_i274_4_1 v_and9_i273_4_1;
(* Heuristics applied. *)
assert true && eq discard_312 0@1;
assume eq discard_312 0 && true;
(*   %shr11.i276.4.1 = lshr i64 %add10.i275.4.1, 32 *)
(* You may need to modify here *)
split v_shr11_i276_4_1 tmp_to_be_used v_add10_i275_4_1 32;
(*   %shl.i277.4.1 = shl i64 %add10.i275.4.1, 32 *)
shls discard_313 v_shl_i277_4_1 v_add10_i275_4_1 32;
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
adds discard_314 v_add16_i282_4_1 v_shr13_i279_4_1 v_shr14_i280_4_1;
(* Heuristics applied. *)
assert true && eq discard_314 0@1;
assume eq discard_314 0 && true;
(*   %add17.i283.4.1 = add nuw nsw i64 %add16.i282.4.1, %and15.i281.4.1 *)
adds discard_315 v_add17_i283_4_1 v_add16_i282_4_1 v_and15_i281_4_1;
(* Heuristics applied. *)
assert true && eq discard_315 0@1;
assume eq discard_315 0 && true;
(*   %add18.i284.4.1 = add nuw nsw i64 %add17.i283.4.1, %shr11.i276.4.1 *)
adds discard_316 v_add18_i284_4_1 v_add17_i283_4_1 v_shr11_i276_4_1;
(* Heuristics applied. *)
assert true && eq discard_316 0@1;
assume eq discard_316 0 && true;
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
adds discard_317 v_add23_i289_4_1 v_and21_i287_4_1 v_and22_i288_4_1;
(* Heuristics applied. *)
assert true && eq discard_317 0@1;
assume eq discard_317 0 && true;
(*   %xor2569.i290.4.1 = or i64 %add23.i289.4.1, %and19.i285.4.1 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_4_1 v_add23_i289_4_1 v_and19_i285_4_1;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_4_1 v_add23_i289_4_1 + v_and19_i285_4_1;
assume eq v_xor2569_i290_4_1 v_add23_i289_4_1 + v_and19_i285_4_1 && true;
(*   %add82.4.1 = add i64 %xor68.i278.4.1, %add82.4 *)
adds discard_318 v_add82_4_1 v_xor68_i278_4_1 v_add82_4;
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
(*   %add89.4.1 = add i64 %shr.i260.4.1, %xor2569.i290.4.1 *)
adds discard_319 v_add89_4_1 v_shr_i260_4_1 v_xor2569_i290_4_1;
(* Heuristics applied. *)
assert true && eq discard_319 0@1;
assume eq discard_319 0 && true;
(*   %add90.4.1 = add i64 %add89.4.1, %add90.4 *)
adds discard_320 v_add90_4_1 v_add89_4_1 v_add90_4;
(* Heuristics applied. *)
assert true && eq discard_320 0@1;
assume eq discard_320 0 && true;
(*   %102 = xor i64 %add89.4.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v102 v_add89_4_1 (0x8000000000000000)@uint64;
(*   %xor2.i253.4.1 = and i64 %102, %add23.i289.4.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i253_4_1 v102 v_add23_i289_4_1;
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
(*   %add96.4.1 = add nuw nsw i64 %or94325.4.1, %or94325.4 *)
adds discard_321 v_add96_4_1 v_or94325_4_1 v_or94325_4;
(* Heuristics applied. *)
assert true && eq discard_321 0@1;
assume eq discard_321 0 && true;
(*   %arrayidx104.4 = getelementptr inbounds i64, i64* %ma, i64 11 *)
(*   %103 = load i64, i64* %arrayidx104.4, align 8, !tbaa !3 *)
mov v103 ma_88;
(*   %add105.4 = add i64 %103, %add82.4.1 *)
adds discard_322 v_add105_4 v103 v_add82_4_1;
(*   %xor.i238.4 = xor i64 %add105.4, %add82.4.1 *)
(* You may need to modify here *)
xor uint64 v_xor_i238_4 v_add105_4 v_add82_4_1;
(*   %xor1.i239.4 = xor i64 %103, %add82.4.1 *)
(* You may need to modify here *)
xor uint64 v_xor1_i239_4 v103 v_add82_4_1;
(*   %or.i240.4 = or i64 %xor.i238.4, %xor1.i239.4 *)
(* You may need to modify here *)
or uint64 v_or_i240_4 v_xor_i238_4 v_xor1_i239_4;
(*   %xor2.i241.4 = xor i64 %or.i240.4, %add105.4 *)
(* You may need to modify here *)
xor uint64 v_xor2_i241_4 v_or_i240_4 v_add105_4;
(*   %shr.i242.4 = lshr i64 %xor2.i241.4, 63 *)
(* You may need to modify here *)
split v_shr_i242_4 tmp_to_be_used v_xor2_i241_4 63;
(*   %add111.4 = add i64 %shr.i242.4, %add90.4.1 *)
adds discard_323 v_add111_4 v_shr_i242_4 v_add90_4_1;
(* Heuristics applied. *)
assert true && eq discard_323 0@1;
assume eq discard_323 0 && true;
(*   store i64 %add105.4, i64* %arrayidx50.4, align 8, !tbaa !3 *)
mov mc_32 v_add105_4;
(*   %104 = xor i64 %add111.4, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v104 v_add111_4 (0x8000000000000000)@uint64;
(*   %xor2.i.4 = and i64 %104, %add90.4.1 *)
(* You may need to modify here *)
and uint64 v_xor2_i_4 v104 v_add90_4_1;
(*   %shr.i237.4 = lshr i64 %xor2.i.4, 63 *)
(* You may need to modify here *)
split v_shr_i237_4 tmp_to_be_used v_xor2_i_4 63;
(*   %add118.4 = add nsw i64 %shr.i237.4, %add96.4.1 *)
adds discard_324 v_add118_4 v_shr_i237_4 v_add96_4_1;
(* Heuristics applied. *)
assert true && eq discard_324 0@1;
assume eq discard_324 0 && true;
(*   %arrayidx74.5 = getelementptr inbounds i64, i64* %mc, i64 6 *)
(*   %105 = load i64, i64* %arrayidx74.5, align 8, !tbaa !3 *)
mov v105 mc_48;
(*   %106 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434p1, i64 0, i64 6), align 16, !tbaa !3 *)
mov v106 p434p1_48;
(*   %and.i262.5 = and i64 %105, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and_i262_5 v105 (0xFFFFFFFF)@uint64;
(*   %shr.i263.5 = lshr i64 %105, 32 *)
(* You may need to modify here *)
split v_shr_i263_5 tmp_to_be_used v105 32;
(* Heuristics applied. *)
assert true && eq tmp_to_be_used v_and_i262_5;
assume eq tmp_to_be_used v_and_i262_5 && true;
(*   %and1.i264.5 = and i64 %106, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1_i264_5 v106 (0xFFFFFFFF)@uint64;
(*   %shr2.i265.5 = lshr i64 %106, 32 *)
(* You may need to modify here *)
split v_shr2_i265_5 tmp_to_be_used v106 32;
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
adds discard_325 v_add_i274_5 v_shr7_i271_5 v_and8_i272_5;
(* Heuristics applied. *)
assert true && eq discard_325 0@1;
assume eq discard_325 0 && true;
(*   %add10.i275.5 = add nuw nsw i64 %add.i274.5, %and9.i273.5 *)
adds discard_326 v_add10_i275_5 v_add_i274_5 v_and9_i273_5;
(* Heuristics applied. *)
assert true && eq discard_326 0@1;
assume eq discard_326 0 && true;
(*   %shr11.i276.5 = lshr i64 %add10.i275.5, 32 *)
(* You may need to modify here *)
split v_shr11_i276_5 tmp_to_be_used v_add10_i275_5 32;
(*   %shl.i277.5 = shl i64 %add10.i275.5, 32 *)
shls discard_327 v_shl_i277_5 v_add10_i275_5 32;
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
adds discard_328 v_add16_i282_5 v_shr13_i279_5 v_shr14_i280_5;
(* Heuristics applied. *)
assert true && eq discard_328 0@1;
assume eq discard_328 0 && true;
(*   %add17.i283.5 = add nuw nsw i64 %add16.i282.5, %and15.i281.5 *)
adds discard_329 v_add17_i283_5 v_add16_i282_5 v_and15_i281_5;
(* Heuristics applied. *)
assert true && eq discard_329 0@1;
assume eq discard_329 0 && true;
(*   %add18.i284.5 = add nuw nsw i64 %add17.i283.5, %shr11.i276.5 *)
adds discard_330 v_add18_i284_5 v_add17_i283_5 v_shr11_i276_5;
(* Heuristics applied. *)
assert true && eq discard_330 0@1;
assume eq discard_330 0 && true;
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
adds discard_331 v_add23_i289_5 v_and21_i287_5 v_and22_i288_5;
(* Heuristics applied. *)
assert true && eq discard_331 0@1;
assume eq discard_331 0 && true;
(*   %xor2569.i290.5 = or i64 %add23.i289.5, %and19.i285.5 *)
(* You may need to modify here *)
or uint64 v_xor2569_i290_5 v_add23_i289_5 v_and19_i285_5;
(* Heuristics applied. *)
assert true && eq v_xor2569_i290_5 v_add23_i289_5 + v_and19_i285_5;
assume eq v_xor2569_i290_5 v_add23_i289_5 + v_and19_i285_5 && true;
(*   %add82.5 = add i64 %xor68.i278.5, %add111.4 *)
adds discard_332 v_add82_5 v_xor68_i278_5 v_add111_4;
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
(*   %add89.5 = add i64 %shr.i260.5, %xor2569.i290.5 *)
adds discard_333 v_add89_5 v_shr_i260_5 v_xor2569_i290_5;
(* Heuristics applied. *)
assert true && eq discard_333 0@1;
assume eq discard_333 0 && true;
(*   %add90.5 = add i64 %add89.5, %add118.4 *)
adds discard_334 v_add90_5 v_add89_5 v_add118_4;
(* Heuristics applied. *)
assert true && eq discard_334 0@1;
assume eq discard_334 0 && true;
(*   %arrayidx104.5 = getelementptr inbounds i64, i64* %ma, i64 12 *)
(*   %107 = load i64, i64* %arrayidx104.5, align 8, !tbaa !3 *)
mov v107 ma_96;
(*   %add105.5 = add i64 %107, %add82.5 *)
adds discard_335 v_add105_5 v107 v_add82_5;
(*   %xor.i238.5 = xor i64 %add105.5, %add82.5 *)
(* You may need to modify here *)
xor uint64 v_xor_i238_5 v_add105_5 v_add82_5;
(*   %xor1.i239.5 = xor i64 %107, %add82.5 *)
(* You may need to modify here *)
xor uint64 v_xor1_i239_5 v107 v_add82_5;
(*   %or.i240.5 = or i64 %xor.i238.5, %xor1.i239.5 *)
(* You may need to modify here *)
or uint64 v_or_i240_5 v_xor_i238_5 v_xor1_i239_5;
(*   %xor2.i241.5 = xor i64 %or.i240.5, %add105.5 *)
(* You may need to modify here *)
xor uint64 v_xor2_i241_5 v_or_i240_5 v_add105_5;
(*   %shr.i242.5 = lshr i64 %xor2.i241.5, 63 *)
(* You may need to modify here *)
split v_shr_i242_5 tmp_to_be_used v_xor2_i241_5 63;
(*   %add111.5 = add i64 %shr.i242.5, %add90.5 *)
adds discard_336 v_add111_5 v_shr_i242_5 v_add90_5;
(* Heuristics applied. *)
assert true && eq discard_336 0@1;
assume eq discard_336 0 && true;
(*   store i64 %add105.5, i64* %arrayidx50.5, align 8, !tbaa !3 *)
mov mc_40 v_add105_5;
(*   %arrayidx127 = getelementptr inbounds i64, i64* %ma, i64 13 *)
(*   %108 = load i64, i64* %arrayidx127, align 8, !tbaa !3 *)
mov v108 ma_104;
(*   %add128 = add i64 %108, %add111.5 *)
adds discard_337 v_add128 v108 v_add111_5;
(*   store i64 %add128, i64* %arrayidx50.6, align 8, !tbaa !3 *)
mov mc_48 v_add128;
(*   ret void *)


(* Outputs *)

mov _ mc_0@uint64;
mov _ mc_8@uint64;
mov _ mc_16@uint64;
mov _ mc_24@uint64;
mov _ mc_32@uint64;
mov _ mc_40@uint64;
mov _ mc_48@uint64;


{
  true
  &&
  true
}


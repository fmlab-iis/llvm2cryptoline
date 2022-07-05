(* @laptop: cv -v -isafety fp_generic_digit_x_digit_tuned.cl
Parsing Cryptoline file:		[OK]		0.000548 seconds
Checking well-formedness:		[OK]		0.000127 seconds
Transforming to SSA form:		[OK]		0.000050 seconds
Normalizing specification:		[OK]		0.000044 seconds
Rewriting assignments:			[OK]		0.000031 seconds
Verifying program safety:		[OK]		1.145553 seconds
Verifying range assertions:		[OK]		0.281492 seconds
Verifying range specification:		[OK]		0.002001 seconds
Rewriting value-preserved casting:	[OK]		0.000006 seconds
Verifying algebraic assertions:		[OK]		0.000236 seconds
Verifying algebraic specification:	[OK]		0.062678 seconds
Verification result:			[OK]		1.493087 seconds
*)

proc main (uint64 a, uint64 b) =
{
  true
  &&
  true
}

mov v_a a;
mov v_b b;


(*   %and = and i64 %a, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and v_a (0xFFFFFFFF)@uint64;
(*   %shr = lshr i64 %a, 32 *)
(* You may need to modify here *)
split v_shr tmp_to_be_used v_a 32;
(* == modified == *)
assert true && tmp_to_be_used = v_and;
assume tmp_to_be_used = v_and && true;
(*   %and1 = and i64 %b, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and1 v_b (0xFFFFFFFF)@uint64;
(*   %shr2 = lshr i64 %b, 32 *)
(* You may need to modify here *)
split v_shr2 tmp_to_be_used v_b 32;
(* == modified == *)
assert true && tmp_to_be_used = v_and1;
assume tmp_to_be_used = v_and1 && true;
(*   %mul = mul nuw i64 %and1, %and *)
mul v_mul v_and1 v_and;
(*   %mul3 = mul nuw i64 %shr2, %and *)
mul v_mul3 v_shr2 v_and;
(*   %mul4 = mul nuw i64 %and1, %shr *)
mul v_mul4 v_and1 v_shr;
(*   %mul5 = mul nuw i64 %shr2, %shr *)
mul v_mul5 v_shr2 v_shr;
(*   %and6 = and i64 %mul, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and6 v_mul (0xFFFFFFFF)@uint64;
(*   %shr7 = lshr i64 %mul, 32 *)
(* You may need to modify here *)
split v_shr7 tmp_to_be_used v_mul 32;
(* == modified == *)
assert true && tmp_to_be_used = v_and6;
assume tmp_to_be_used = v_and6 && true;
(*   %and8 = and i64 %mul4, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and8 v_mul4 (0xFFFFFFFF)@uint64;
(*   %and9 = and i64 %mul3, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and9 v_mul3 (0xFFFFFFFF)@uint64;
(*   %add = add nuw nsw i64 %shr7, %and8 *)
add v_add v_shr7 v_and8;
(*   %add10 = add nuw nsw i64 %add, %and9 *)
add v_add10 v_add v_and9;
(*   %shr11 = lshr i64 %add10, 32 *)
(* You may need to modify here *)
split v_shr11 tmp_to_be_used v_add10 32;
(*   %shl = shl i64 %add10, 32 *)
(* == modified == *)
(* shl v_shl v_add10 32; *)
shls discard v_shl v_add10 32;
assert true && v_shl = tmp_to_be_used * const 64 (2**32);
assume v_shl = tmp_to_be_used * (2**32) && true;
(*   %xor68 = or i64 %shl, %and6 *)
(* You may need to modify here *)
or uint64 v_xor68 v_shl v_and6;
(* == modified == *)
assert true && v_xor68 = v_shl + v_and6;
assume v_xor68 = v_shl + v_and6 && true;
(*   store i64 %xor68, i64* %c, align 8, !tbaa !3 *)
mov c_0 v_xor68;
(*   %shr13 = lshr i64 %mul4, 32 *)
(* You may need to modify here *)
split v_shr13 tmp_to_be_used v_mul4 32;
(* == modified == *)
assert true && tmp_to_be_used = v_and8;
assume tmp_to_be_used = v_and8 && true;
(*   %shr14 = lshr i64 %mul3, 32 *)
(* You may need to modify here *)
split v_shr14 tmp_to_be_used v_mul3 32;
(* == modified == *)
assert true && tmp_to_be_used = v_and9;
assume tmp_to_be_used = v_and9 && true;
(*   %and15 = and i64 %mul5, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and15 v_mul5 (0xFFFFFFFF)@uint64;
(*   %add16 = add nuw nsw i64 %shr13, %shr14 *)
add v_add16 v_shr13 v_shr14;
(*   %add17 = add nuw nsw i64 %add16, %and15 *)
add v_add17 v_add16 v_and15;
(*   %add18 = add nuw nsw i64 %add17, %shr11 *)
add v_add18 v_add17 v_shr11;
(*   %and19 = and i64 %add18, 4294967295 *)
(* You may need to modify here *)
and uint64 v_and19 v_add18 (0xFFFFFFFF)@uint64;
(*   %arrayidx20 = getelementptr inbounds i64, i64* %c, i64 1 *)
(*   %and21 = and i64 %add18, 30064771072 *)
(* You may need to modify here *)
and uint64 v_and21 v_add18 (0x700000000)@uint64;
(* == modified == *)
assert true && v_add18 = v_and21 + v_and19;
assume v_add18 = v_and21 + v_and19 && true;
(*   %and22 = and i64 %mul5, -4294967296 *)
(* You may need to modify here *)
and uint64 v_and22 v_mul5 (0xFFFFFFFF00000000)@uint64;
(* == modified == *)
assert true && v_mul5 = v_and15 + v_and22;
assume v_mul5 = v_and15 + v_and22 && true;
(*   %add23 = add i64 %and21, %and22 *)
add v_add23 v_and21 v_and22;
(*   %xor2569 = or i64 %add23, %and19 *)
(* You may need to modify here *)
or uint64 v_xor2569 v_add23 v_and19;
(* == modified == *)
assert true && v_xor2569 = v_add23 + v_and19;
assume v_xor2569 = v_add23 + v_and19 && true;
(*   store i64 %xor2569, i64* %arrayidx20, align 8, !tbaa !3 *)
mov c_8 v_xor2569;
(*   ret void *)


(* Outputs *)

mov c0 c_0@uint64;
mov c1 c_8@uint64;


{
  limbs 64 [c0, c1] = a * b
  &&
  true
}


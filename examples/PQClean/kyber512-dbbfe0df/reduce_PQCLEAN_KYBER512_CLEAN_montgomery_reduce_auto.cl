(* R = 2**16, q = 3329, invq = 62209 *)

proc main (sint32 v_a) =
{
  true
&&
  and [ (-3329)@32 * (2**15)@32 <=s v_a, v_a <s 3329@32 * (2**15)@32 ]
}

(* -218038272 = -3327 * 2**16 *)
(* 62209 == -3327 (mod 2**16) *)

(* NOTE: overflow but okay! *)
(*   %sext = mul i32 %a, -218038272 *)
mull dontcare v_sext v_a (-218038272)@sint32;
cast v_sext@sint32 v_sext;
(*   %conv2 = ashr exact i32 %sext, 16 *)
(* You may need to modify here *)
split v_conv2 tmp_to_be_used v_sext 16;
(*   %0 = mul nsw i32 %conv2, -3329 *)
mul v0 v_conv2 (-3329)@sint32;
(*   %sub = add i32 %0, %a *)
add v_sub v0 v_a;
(*   %1 = lshr i32 %sub, 16 *)
(* You may need to modify here *)
split v1 tmp_to_be_used v_sub 16;

assert true && tmp_to_be_used = 0@32;
assume tmp_to_be_used = 0 && true;

(*   %conv4 = trunc i32 %1 to i16 *)
(* NOTE: use vpc directly *)
vpc v_conv4@sint16 v1;

(*
split tmp_v1 v_conv4 v1 16;
vpc v_conv4@sint16 v_conv4@uint32;
*)
(*   ret i16 %conv4 *)


(* Outputs *)

mov ret v_conv4@sint16;

{
  eqmod (ret * (2**16)) v_a 3329
&&
  and [ (-3329)@16 <s ret, ret <s 3329@16 ]
}


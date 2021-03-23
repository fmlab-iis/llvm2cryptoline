proc main (sint32 v_a) =
{
  true
  &&
  true
}



(*   %sext = mul i32 %a, -218038272 *)
mul v_sext v_a (-218038272)@sint32;
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
(*   %conv4 = trunc i32 %1 to i16 *)
split tmp_v1 v_conv4 v1 16;
vpc v_conv4@sint16 v_conv4@uint32;
(*   ret i16 %conv4 *)


(* Outputs *)

mov _ v_conv4@sint16;


{
  true
  &&
  true
}


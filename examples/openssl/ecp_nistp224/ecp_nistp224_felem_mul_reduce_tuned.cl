proc main (L0_0, L0_8, L0_16, L0_24, L1_0, L1_8, L1_16, L1_24) =
{
  bveTrue
  |
  bvands [
    bvvar L0_0 < bvconst 64 (2^60),
    bvvar L0_8 < bvconst 64 (2^60),
    bvvar L0_16 < bvconst 64 (2^60),
    bvvar L0_24 < bvconst 64 (2^60),
    bvvar L1_0 < bvconst 64 (2^59),
    bvvar L1_8 < bvconst 64 (2^59),
    bvvar L1_16 < bvconst 64 (2^59),
    bvvar L1_24 < bvconst 64 (2^59)
  ]
}

(*  %0 = load i64, i64* %in1, align 8, !tbaa !2 *)
bvAssign v0 (bvVar L0_0);
(*  %conv.i = zext i64 %0 to i128 *)
bvAssign conv_i_L (bvVar v0);
bvAssign conv_i_H (bvConst 0);
(*  %1 = load i64, i64* %in2, align 8, !tbaa !2 *)
bvAssign v1 (bvVar L1_0);
(*  %conv2.i = zext i64 %1 to i128 *)
bvAssign conv2_i_L (bvVar v1);
bvAssign conv2_i_H (bvConst 0);
(*  %mul.i = mul nuw i128 %conv2.i, %conv.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv2_i_L) (bvVar conv_i_L);
bvMul tmpHL_L (bvVar conv2_i_H) (bvVar conv_i_L);
bvMul tmpLH_L (bvVar conv2_i_L) (bvVar conv_i_H);
bvAssign mul_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %arrayidx6.i = getelementptr inbounds i64, i64* %in2, i64 1 *)
(*  %2 = load i64, i64* %arrayidx6.i, align 8, !tbaa !2 *)
bvAssign v2 (bvVar L1_8);
(*  %conv7.i = zext i64 %2 to i128 *)
bvAssign conv7_i_L (bvVar v2);
bvAssign conv7_i_H (bvConst 0);
(*  %mul8.i = mul nuw i128 %conv7.i, %conv.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv7_i_L) (bvVar conv_i_L);
bvMul tmpHL_L (bvVar conv7_i_H) (bvVar conv_i_L);
bvMul tmpLH_L (bvVar conv7_i_L) (bvVar conv_i_H);
bvAssign mul8_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul8_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %arrayidx9.i = getelementptr inbounds i64, i64* %in1, i64 1 *)
(*  %3 = load i64, i64* %arrayidx9.i, align 8, !tbaa !2 *)
bvAssign v3 (bvVar L0_8);
(*  %conv10.i = zext i64 %3 to i128 *)
bvAssign conv10_i_L (bvVar v3);
bvAssign conv10_i_H (bvConst 0);
(*  %mul13.i = mul nuw i128 %conv10.i, %conv2.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv10_i_L) (bvVar conv2_i_L);
bvMul tmpHL_L (bvVar conv10_i_H) (bvVar conv2_i_L);
bvMul tmpLH_L (bvVar conv10_i_L) (bvVar conv2_i_H);
bvAssign mul13_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul13_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %arrayidx17.i = getelementptr inbounds i64, i64* %in2, i64 2 *)
(*  %4 = load i64, i64* %arrayidx17.i, align 8, !tbaa !2 *)
bvAssign v4 (bvVar L1_16);
(*  %conv18.i = zext i64 %4 to i128 *)
bvAssign conv18_i_L (bvVar v4);
bvAssign conv18_i_H (bvConst 0);
(*  %mul19.i = mul nuw i128 %conv18.i, %conv.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv18_i_L) (bvVar conv_i_L);
bvMul tmpHL_L (bvVar conv18_i_H) (bvVar conv_i_L);
bvMul tmpLH_L (bvVar conv18_i_L) (bvVar conv_i_H);
bvAssign mul19_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul19_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul24.i = mul nuw i128 %conv10.i, %conv7.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv10_i_L) (bvVar conv7_i_L);
bvMul tmpHL_L (bvVar conv10_i_H) (bvVar conv7_i_L);
bvMul tmpLH_L (bvVar conv10_i_L) (bvVar conv7_i_H);
bvAssign mul24_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul24_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %arrayidx26.i = getelementptr inbounds i64, i64* %in1, i64 2 *)
(*  %5 = load i64, i64* %arrayidx26.i, align 8, !tbaa !2 *)
bvAssign v5 (bvVar L0_16);
(*  %conv27.i = zext i64 %5 to i128 *)
bvAssign conv27_i_L (bvVar v5);
bvAssign conv27_i_H (bvConst 0);
(*  %mul30.i = mul nuw i128 %conv27.i, %conv2.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv27_i_L) (bvVar conv2_i_L);
bvMul tmpHL_L (bvVar conv27_i_H) (bvVar conv2_i_L);
bvMul tmpLH_L (bvVar conv27_i_L) (bvVar conv2_i_H);
bvAssign mul30_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul30_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %arrayidx35.i = getelementptr inbounds i64, i64* %in2, i64 3 *)
(*  %6 = load i64, i64* %arrayidx35.i, align 8, !tbaa !2 *)
bvAssign v6 (bvVar L1_24);
(*  %conv36.i = zext i64 %6 to i128 *)
bvAssign conv36_i_L (bvVar v6);
bvAssign conv36_i_H (bvConst 0);
(*  %mul37.i = mul nuw i128 %conv36.i, %conv.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv36_i_L) (bvVar conv_i_L);
bvMul tmpHL_L (bvVar conv36_i_H) (bvVar conv_i_L);
bvMul tmpLH_L (bvVar conv36_i_L) (bvVar conv_i_H);
bvAssign mul37_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul37_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul42.i = mul nuw i128 %conv18.i, %conv10.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv18_i_L) (bvVar conv10_i_L);
bvMul tmpHL_L (bvVar conv18_i_H) (bvVar conv10_i_L);
bvMul tmpLH_L (bvVar conv18_i_L) (bvVar conv10_i_H);
bvAssign mul42_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul42_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul48.i = mul nuw i128 %conv27.i, %conv7.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv27_i_L) (bvVar conv7_i_L);
bvMul tmpHL_L (bvVar conv27_i_H) (bvVar conv7_i_L);
bvMul tmpLH_L (bvVar conv27_i_L) (bvVar conv7_i_H);
bvAssign mul48_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul48_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %arrayidx50.i = getelementptr inbounds i64, i64* %in1, i64 3 *)
(*  %7 = load i64, i64* %arrayidx50.i, align 8, !tbaa !2 *)
bvAssign v7 (bvVar L0_24);
(*  %conv51.i = zext i64 %7 to i128 *)
bvAssign conv51_i_L (bvVar v7);
bvAssign conv51_i_H (bvConst 0);
(*  %mul54.i = mul nuw i128 %conv51.i, %conv2.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv51_i_L) (bvVar conv2_i_L);
bvMul tmpHL_L (bvVar conv51_i_H) (bvVar conv2_i_L);
bvMul tmpLH_L (bvVar conv51_i_L) (bvVar conv2_i_H);
bvAssign mul54_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul54_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul61.i = mul nuw i128 %conv36.i, %conv10.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv36_i_L) (bvVar conv10_i_L);
bvMul tmpHL_L (bvVar conv36_i_H) (bvVar conv10_i_L);
bvMul tmpLH_L (bvVar conv36_i_L) (bvVar conv10_i_H);
bvAssign mul61_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul61_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul66.i = mul nuw i128 %conv27.i, %conv18.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv27_i_L) (bvVar conv18_i_L);
bvMul tmpHL_L (bvVar conv27_i_H) (bvVar conv18_i_L);
bvMul tmpLH_L (bvVar conv27_i_L) (bvVar conv18_i_H);
bvAssign mul66_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul66_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add67.i = add i128 %mul61.i, %mul66.i *)
bvAddC carry add67_i_L (bvVar mul61_i_L) (bvVar mul66_i_L);
bvAdc add67_i_H (bvVar mul61_i_H) (bvVar mul66_i_H) carry;
(*  %mul72.i = mul nuw i128 %conv51.i, %conv7.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv51_i_L) (bvVar conv7_i_L);
bvMul tmpHL_L (bvVar conv51_i_H) (bvVar conv7_i_L);
bvMul tmpLH_L (bvVar conv51_i_L) (bvVar conv7_i_H);
bvAssign mul72_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul72_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add73.i = add i128 %add67.i, %mul72.i *)
bvAddC carry add73_i_L (bvVar add67_i_L) (bvVar mul72_i_L);
bvAdc add73_i_H (bvVar add67_i_H) (bvVar mul72_i_H) carry;
(*  %mul79.i = mul nuw i128 %conv36.i, %conv27.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv36_i_L) (bvVar conv27_i_L);
bvMul tmpHL_L (bvVar conv36_i_H) (bvVar conv27_i_L);
bvMul tmpLH_L (bvVar conv36_i_L) (bvVar conv27_i_H);
bvAssign mul79_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul79_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %mul84.i = mul nuw i128 %conv51.i, %conv18.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv51_i_L) (bvVar conv18_i_L);
bvMul tmpHL_L (bvVar conv51_i_H) (bvVar conv18_i_L);
bvMul tmpLH_L (bvVar conv51_i_L) (bvVar conv18_i_H);
bvAssign mul84_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul84_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add85.i = add i128 %mul84.i, %mul79.i *)
bvAddC carry add85_i_L (bvVar mul84_i_L) (bvVar mul79_i_L);
bvAdc add85_i_H (bvVar mul84_i_H) (bvVar mul79_i_H) carry;
(*  %mul91.i = mul nuw i128 %conv51.i, %conv36.i *)
bvMulf tmpLL_H tmpLL_L (bvVar conv51_i_L) (bvVar conv36_i_L);
bvMul tmpHL_L (bvVar conv51_i_H) (bvVar conv36_i_L);
bvMul tmpLH_L (bvVar conv51_i_L) (bvVar conv36_i_H);
bvAssign mul91_i_L (bvVar tmpLL_L);
bvAdd tmp (bvVar tmpHL_L) (bvVar tmpLH_L);
bvAdd mul91_i_H (bvVar tmp) (bvVar tmpLL_H);
(*  %add.i.2 = add i128 %mul.i, -170141183460469231731687303715884072960 *)
bvAddC carry add_i_2_L (bvVar mul_i_L) (bvConst 32768);
bvAdc add_i_2_H (bvVar mul_i_H) (bvConst 9223372036854775808) carry;
(*  %shr.i = lshr i128 %mul91.i, 16 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar mul91_i_L) 16;
bvSplit tmpH_h tmpH_l (bvVar mul91_i_H) 16;
bvShl tmp (bvVar tmpH_l) 48;
bvAdd shr_i_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr_i_H (bvVar tmpH_h);
(*  %add14.i = add i128 %add73.i, %shr.i *)
bvAddC carry add14_i_L (bvVar add73_i_L) (bvVar shr_i_L);
bvAdc add14_i_H (bvVar add73_i_H) (bvVar shr_i_H) carry;
(* Do shl first and then and will cause overflow.
   We should do and first and then shl. *)
(*  %and.i = shl i128 %mul91.i, 40 *)
(*
bvConcatShl and_i_H tmp (bvVar mul91_i_H) (bvVar mul91_i_L) 40;
bvShl and_i_L (bvVar tmp) 40;
*)
(*  %shl.i = and i128 %and.i, 72056494526300160 *)
(* You may need to modify here *)
(* Heuristics applied. *)
(*
bvAndb shl_i_L (bvVar and_i_L) (bvConst 0xFFFF0000000000);
bvAndb shl_i_H (bvVar and_i_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar shl_i_H) (bvconst 64 0);
bvAssume bveEq (bvvar shl_i_H) (bvconst 0) | bvrTrue;
*)
bvAndb and_i_L (bvVar mul91_i_L) (bvConst 0xFFFF);
bvShl shl_i_L (bvVar and_i_L) 40;
bvAssign shl_i_H (bvConst 0);
bvAssert bveTrue | bvrEq (bvvar shl_i_L) (bvmul (bvvar tmp_to_be_used) (bvconst 64 (2^40)));
bvAssume bveEq (bvvar shl_i_L) (bvvar tmp_to_be_used * bvconst (2^40)) | bvrTrue;
(*  %shr21.i = lshr i128 %add85.i, 16 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add85_i_L) 16;
bvSplit tmpH_h tmpH_l (bvVar add85_i_H) 16;
bvShl tmp (bvVar tmpH_l) 48;
bvAdd shr21_i_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr21_i_H (bvVar tmpH_h);
(* Do shl first and then and will cause overflow.
   We should do and first and then shl. *)
(*  %and25.i = shl i128 %add85.i, 40 *)
(*
bvConcatShl and25_i_H tmp (bvVar add85_i_H) (bvVar add85_i_L) 40;
bvShl and25_i_L (bvVar tmp) 40;
*)
(*  %shl26.i = and i128 %and25.i, 72056494526300160 *)
(* You may need to modify here *)
(* Heuristics applied. *)
(*
bvAndb shl26_i_L (bvVar and25_i_L) (bvConst 0xFFFF0000000000);
bvAndb shl26_i_H (bvVar and25_i_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar shl26_i_H) (bvconst 64 0);
bvAssume bveEq (bvvar shl26_i_H) (bvconst 0) | bvrTrue;
*)
bvAndb and25_i_L (bvVar add85_i_L) (bvConst 0xFFFF);
bvShl shl26_i_L (bvVar and25_i_L) 40;
bvAssign shl26_i_H (bvConst 0);
bvAssert bveTrue | bvrEq (bvvar shl26_i_L) (bvmul (bvvar tmp_to_be_used) (bvconst 64 (2^40)));
bvAssume bveEq (bvvar shl26_i_L) (bvvar tmp_to_be_used * bvconst (2^40)) | bvrTrue;
(*  %shr33.i = lshr i128 %add14.i, 16 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add14_i_L) 16;
bvSplit tmpH_h tmpH_l (bvVar add14_i_H) 16;
bvShl tmp (bvVar tmpH_l) 48;
bvAdd shr33_i_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr33_i_H (bvVar tmpH_h);
(*  %add25.i = add i128 %mul24.i, 170141183460469229370504062281061498880 *)
bvAddC carry add25_i_L (bvVar mul24_i_L) (bvConst 0);
bvAdc add25_i_H (bvVar mul24_i_H) (bvConst 9223372036854775680) carry;
(*  %add31.i = add i128 %add25.i, %mul19.i *)
bvAddC carry add31_i_L (bvVar add25_i_L) (bvVar mul19_i_L);
bvAdc add31_i_H (bvVar add25_i_H) (bvVar mul19_i_H) carry;
(*  %add6.i = add i128 %add31.i, %mul30.i *)
bvAddC carry add6_i_L (bvVar add31_i_L) (bvVar mul30_i_L);
bvAdc add6_i_H (bvVar add31_i_H) (bvVar mul30_i_H) carry;
(*  %sub.i = sub i128 %add6.i, %mul91.i *)
bvSubC carry sub_i_L (bvVar add6_i_L) (bvVar mul91_i_L);
bvSbb sub_i_H (bvVar add6_i_H) (bvVar mul91_i_H) carry;
(*  %add28.i = add i128 %sub.i, %shl26.i *)
bvAddC carry add28_i_L (bvVar sub_i_L) (bvVar shl26_i_L);
bvAdc add28_i_H (bvVar sub_i_H) (bvVar shl26_i_H) carry;
(*  %add35.i = add i128 %add28.i, %shr33.i *)
bvAddC carry add35_i_L (bvVar add28_i_L) (bvVar shr33_i_L);
bvAdc add35_i_H (bvVar add28_i_H) (bvVar shr33_i_H) carry;
(* Do shl first and then and will cause overflow.
   We should do and first and then shl. *)
(*  %and37.i = shl i128 %add14.i, 40 *)
(*
bvConcatShl and37_i_H tmp (bvVar add14_i_H) (bvVar add14_i_L) 40;
bvShl and37_i_L (bvVar tmp) 40;
*)
(*  %shl38.i = and i128 %and37.i, 72056494526300160 *)
(* You may need to modify here *)
(* Heuristics applied. *)
(*
bvAndb shl38_i_L (bvVar and37_i_L) (bvConst 0xFFFF0000000000);
bvAndb shl38_i_H (bvVar and37_i_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar shl38_i_H) (bvconst 64 0);
bvAssume bveEq (bvvar shl38_i_H) (bvconst 0) | bvrTrue;
*)
bvAndb and37_i_L (bvVar add14_i_L) (bvConst 0xFFFF);
bvShl shl38_i_L (bvVar and37_i_L) 40;
bvAssign shl38_i_H (bvConst 0);
bvAssert bveTrue | bvrEq (bvvar shl38_i_L) (bvmul (bvvar tmp_to_be_used) (bvconst 64 (2^40)));
bvAssume bveEq (bvvar shl38_i_L) (bvvar tmp_to_be_used * bvconst (2^40)) | bvrTrue;
(*  %sub43.i = sub i128 %add.i.2, %add14.i *)
bvSubC carry sub43_i_L (bvVar add_i_2_L) (bvVar add14_i_L);
bvSbb sub43_i_H (bvVar add_i_2_H) (bvVar add14_i_H) carry;
(*  %shr45.i = lshr i128 %add35.i, 56 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add35_i_L) 56;
bvSplit tmpH_h tmpH_l (bvVar add35_i_H) 56;
bvShl tmp (bvVar tmpH_l) 8;
bvAdd shr45_i_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr45_i_H (bvVar tmpH_h);
(*  %add43.i = add i128 %mul48.i, %mul42.i *)
bvAddC carry add43_i_L (bvVar mul48_i_L) (bvVar mul42_i_L);
bvAdc add43_i_H (bvVar mul48_i_H) (bvVar mul42_i_H) carry;
(*  %add49.i = add i128 %add43.i, %mul37.i *)
bvAddC carry add49_i_L (bvVar add43_i_L) (bvVar mul37_i_L);
bvAdc add49_i_H (bvVar add43_i_H) (bvVar mul37_i_H) carry;
(*  %add55.i = add i128 %add49.i, %mul54.i *)
bvAddC carry add55_i_L (bvVar add49_i_L) (bvVar mul54_i_L);
bvAdc add55_i_H (bvVar add49_i_H) (bvVar mul54_i_H) carry;
(*  %add17.i = add i128 %add55.i, %shl.i *)
bvAddC carry add17_i_L (bvVar add55_i_L) (bvVar shl_i_L);
bvAdc add17_i_H (bvVar add55_i_H) (bvVar shl_i_H) carry;
(*  %add23.i = add i128 %add17.i, %shr21.i *)
bvAddC carry add23_i_L (bvVar add17_i_L) (bvVar shr21_i_L);
bvAdc add23_i_H (bvVar add17_i_H) (bvVar shr21_i_H) carry;
(*  %add47.i = add i128 %add23.i, %shr45.i *)
bvAddC carry add47_i_L (bvVar add23_i_L) (bvVar shr45_i_L);
bvAdc add47_i_H (bvVar add23_i_H) (bvVar shr45_i_H) carry;
(*  %and49.i = and i128 %add35.i, 72057594037927935 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and49_i_L (bvVar add35_i_L) (bvConst 0xFFFFFFFFFFFFFF);
bvAndb and49_i_H (bvVar add35_i_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar and49_i_H) (bvconst 64 0);
bvAssume bveEq (bvvar and49_i_H) (bvconst 0) | bvrTrue;
bvAssert bveTrue | bvrEq (bvvar and49_i_L) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and49_i_L) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr51.i = lshr i128 %add47.i, 56 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add47_i_L) 56;
bvSplit tmpH_h tmpH_l (bvVar add47_i_H) 56;
bvShl tmp (bvVar tmpH_l) 8;
bvAdd shr51_i_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr51_i_H (bvVar tmpH_h);
(*  %and54.i = and i128 %add47.i, 72057594037927935 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb and54_i_L (bvVar add47_i_L) (bvConst 0xFFFFFFFFFFFFFF);
bvAndb and54_i_H (bvVar add47_i_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar and54_i_H) (bvconst 64 0);
bvAssume bveEq (bvvar and54_i_H) (bvconst 0) | bvrTrue;
bvAssert bveTrue | bvrEq (bvvar and54_i_L) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar and54_i_L) (bvvar tmp_to_be_used) | bvrTrue;
(*  %shr56.i = lshr i128 %add47.i, 72 *)
(* You may need to modify here *)
bvSplit shr56_i_L tmp_to_be_used (bvVar add47_i_H) 8;
bvAssign shr56_i_H (bvConst 0);
(*  %add58.i = add nuw nsw i128 %shr56.i, %and49.i *)
bvAddC carry add58_i_L (bvVar shr56_i_L) (bvVar and49_i_L);
bvAdc add58_i_H (bvVar shr56_i_H) (bvVar and49_i_H) carry;
(* Do shl first and then and will cause overflow.
   We should do and first and then shl. *)
(*  %and60.i = shl nuw nsw i128 %shr51.i, 40 *)
(*
bvConcatShl and60_i_H tmp (bvVar shr51_i_H) (bvVar shr51_i_L) 40;
bvShl and60_i_L (bvVar tmp) 40;
*)
(*  %shl61.i = and i128 %and60.i, 72056494526300160 *)
(* You may need to modify here *)
(* Heuristics applied. *)
(*
bvAndb shl61_i_L (bvVar and60_i_L) (bvConst 0xFFFF0000000000);
bvAndb shl61_i_H (bvVar and60_i_H) (bvConst 0x0);
bvAssert bveTrue | bvrEq (bvvar shl61_i_H) (bvconst 64 0);
bvAssume bveEq (bvvar shl61_i_H) (bvconst 0) | bvrTrue;
*)
bvAndb and60_i_L (bvVar shr51_i_L) (bvConst 0xFFFF);
bvAssert bveTrue 
       | bvrEq (bvvar and60_i_L) 
               (bvadd (bvmul (bvvar tmp_to_be_used) (bvconst 64 (2^8)))
                             (bvvar tmpL_h));
bvAssume bveEq (bvvar and60_i_L) 
               (((bvvar tmp_to_be_used) * (bvconst (2^8))) + (bvvar tmpL_h))
       | bvrTrue;
bvShl shl61_i_L (bvVar and60_i_L) 40;
bvAssign shl61_i_H (bvConst 0);
(*  %sub66.i = sub i128 %sub43.i, %shr51.i *)
bvSubC carry sub66_i_L (bvVar sub43_i_L) (bvVar shr51_i_L);
bvSbb sub66_i_H (bvVar sub43_i_H) (bvVar shr51_i_H) carry;
(*  %shr68.i = lshr i128 %sub66.i, 56 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar sub66_i_L) 56;
bvSplit tmpH_h tmpH_l (bvVar sub66_i_H) 56;
bvShl tmp (bvVar tmpH_l) 8;
bvAdd shr68_i_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr68_i_H (bvVar tmpH_h);
(*  %add.i = add i128 %mul8.i, 170141183460469229370468033484042534912 *)
bvAddC carry add_i_L (bvVar mul8_i_L) (bvConst 18410715276690587648);
bvAdc add_i_H (bvVar mul8_i_H) (bvConst 9223372036854775679) carry;
(*  %add3.i = add i128 %add.i, %mul13.i *)
bvAddC carry add3_i_L (bvVar add_i_L) (bvVar mul13_i_L);
bvAdc add3_i_H (bvVar add_i_H) (bvVar mul13_i_H) carry;
(*  %sub31.i = sub i128 %add3.i, %add85.i *)
bvSubC carry sub31_i_L (bvVar add3_i_L) (bvVar add85_i_L);
bvSbb sub31_i_H (bvVar add3_i_H) (bvVar add85_i_H) carry;
(*  %add40.i = add i128 %sub31.i, %shl38.i *)
bvAddC carry add40_i_L (bvVar sub31_i_L) (bvVar shl38_i_L);
bvAdc add40_i_H (bvVar sub31_i_H) (bvVar shl38_i_H) carry;
(*  %add63.i = add i128 %add40.i, %shl61.i *)
bvAddC carry add63_i_L (bvVar add40_i_L) (bvVar shl61_i_L);
bvAdc add63_i_H (bvVar add40_i_H) (bvVar shl61_i_H) carry;
(*  %add70.i = add i128 %add63.i, %shr68.i *)
bvAddC carry add70_i_L (bvVar add63_i_L) (bvVar shr68_i_L);
bvAdc add70_i_H (bvVar add63_i_H) (bvVar shr68_i_H) carry;
(*  %sub66.tr.i = trunc i128 %sub66.i to i64 *)
bvAssign sub66_tr_i (bvVar sub66_i_L);
(*  %conv.i.3 = and i64 %sub66.tr.i, 72057594037927935 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv_i_3 (bvVar sub66_tr_i) (bvConst 0xFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv_i_3) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar conv_i_3) (bvvar tmp_to_be_used) | bvrTrue;
(*  store i64 %conv.i.3, i64* %out, align 8, !tbaa !2 *)
bvAssign L2_0 (bvVar conv_i_3);
(*  %shr75.i = lshr i128 %add70.i, 56 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add70_i_L) 56;
bvSplit tmpH_h tmpH_l (bvVar add70_i_H) 56;
bvShl tmp (bvVar tmpH_l) 8;
bvAdd shr75_i_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr75_i_H (bvVar tmpH_h);
(*  %add77.i = add nuw nsw i128 %add58.i, %shr75.i *)
bvAddC carry add77_i_L (bvVar add58_i_L) (bvVar shr75_i_L);
bvAdc add77_i_H (bvVar add58_i_H) (bvVar shr75_i_H) carry;
(*  %add70.tr.i = trunc i128 %add70.i to i64 *)
bvAssign add70_tr_i (bvVar add70_i_L);
(*  %conv80.i = and i64 %add70.tr.i, 72057594037927935 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv80_i (bvVar add70_tr_i) (bvConst 0xFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv80_i) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar conv80_i) (bvvar tmp_to_be_used) | bvrTrue;
(*  %arrayidx81.i = getelementptr inbounds i64, i64* %out, i64 1 *)
(*  store i64 %conv80.i, i64* %arrayidx81.i, align 8, !tbaa !2 *)
bvAssign L2_8 (bvVar conv80_i);
(*  %shr83.i = lshr i128 %add77.i, 56 *)
(* You may need to modify here *)
bvSplit tmpL_h tmp_to_be_used (bvVar add77_i_L) 56;
bvSplit tmpH_h tmpH_l (bvVar add77_i_H) 56;
bvShl tmp (bvVar tmpH_l) 8;
bvAdd shr83_i_L (bvVar tmp) (bvVar tmpL_h);
bvAssign shr83_i_H (bvVar tmpH_h);
(*  %add85.i.4 = add nuw nsw i128 %shr83.i, %and54.i *)
bvAddC carry add85_i_4_L (bvVar shr83_i_L) (bvVar and54_i_L);
bvAdc add85_i_4_H (bvVar shr83_i_H) (bvVar and54_i_H) carry;
bvAssert bveTrue | bveq (bvvar add85_i_4_H) (bvconst 64 0);
bvAssume bveq (bvvar add85_i_4_H) (bvconst 0) | bvrTrue;
(*  %add77.tr.i = trunc i128 %add77.i to i64 *)
bvAssign add77_tr_i (bvVar add77_i_L);
(*  %conv88.i = and i64 %add77.tr.i, 72057594037927935 *)
(* You may need to modify here *)
(* Heuristics applied. *)
bvAndb conv88_i (bvVar add77_tr_i) (bvConst 0xFFFFFFFFFFFFFF);
bvAssert bveTrue | bvrEq (bvvar conv88_i) (bvvar tmp_to_be_used);
bvAssume bveEq (bvvar conv88_i) (bvvar tmp_to_be_used) | bvrTrue;
(*  %arrayidx89.i = getelementptr inbounds i64, i64* %out, i64 2 *)
(*  store i64 %conv88.i, i64* %arrayidx89.i, align 8, !tbaa !2 *)
bvAssign L2_16 (bvVar conv88_i);
(*  %conv91.i = trunc i128 %add85.i.4 to i64 *)
bvAssign conv91_i (bvVar add85_i_4_L);
(*  %arrayidx92.i.5 = getelementptr inbounds i64, i64* %out, i64 3 *)
(*  store i64 %conv91.i, i64* %arrayidx92.i.5, align 8, !tbaa !2 *)
bvAssign L2_24 (bvVar conv91_i);
(*  ret void *)


{
  bveqmod
    (limbs 56 [bvvar L2_0, bvvar L2_8, bvvar L2_16, bvvar L2_24])
    (
      (limbs 56 [bvvar L0_0, bvvar L0_8, bvvar L0_16, bvvar L0_24])
      *
      (limbs 56 [bvvar L1_0, bvvar L1_8, bvvar L1_16, bvvar L1_24])
    )
    (bvconst (2^224) - bvconst (2^96) + bvconst 1)
  |
  bvands [
    bvvar L2_0 < bvconst 64 (2^56),
    bvvar L2_8 < bvconst 64 (2^56),
    bvvar L2_16 < bvconst 64 (2^56),
    bvvar L2_24 < bvadd (bvconst 64 (2^56)) (bvconst 64 (2^16))
  ]
}

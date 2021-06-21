proc main (uint64 mem0_0, uint64 mem0_8, uint64 mem0_16, uint64 mem0_24, uint64 mem0_32, uint64 mem0_40, uint64 mem0_48, uint64 mem0_56, uint64 mem0_64, uint64 mem0_72) =
{
  true
  &&
  and [
  	mem0_0 <=u (9 * (2**51-1))@64,
	mem0_8 <=u (10 * (2**51-1))@64,
  	mem0_16 <=u (9 * (2**51-1))@64,
  	mem0_24 <=u (9 * (2**51-1))@64,
  	mem0_32 <=u (9 * (2**51-1))@64,
  	mem0_40 <=u (9 * (2**51-1))@64,
	mem0_48 <=u (10 * (2**51-1))@64,
  	mem0_56 <=u (9 * (2**51-1))@64,
  	mem0_64 <=u (9 * (2**51-1))@64,
  	mem0_72 <=u (9 * (2**51-1))@64
  ]
}



(*   %0 = load i64, i64* %f, align 8, !tbaa !3 *)
mov v0 mem0_0;
(*   %arrayidx1 = getelementptr inbounds i64, i64* %f, i64 1 *)
(*   %1 = load i64, i64* %arrayidx1, align 8, !tbaa !3 *)
mov v1 mem0_8;
(*   %arrayidx2 = getelementptr inbounds i64, i64* %f, i64 2 *)
(*   %2 = load i64, i64* %arrayidx2, align 8, !tbaa !3 *)
mov v2 mem0_16;
(*   %arrayidx3 = getelementptr inbounds i64, i64* %f, i64 3 *)
(*   %3 = load i64, i64* %arrayidx3, align 8, !tbaa !3 *)
mov v3 mem0_24;
(*   %arrayidx4 = getelementptr inbounds i64, i64* %f, i64 4 *)
(*   %4 = load i64, i64* %arrayidx4, align 8, !tbaa !3 *)
mov v4 mem0_32;
(*   %arrayidx5 = getelementptr inbounds i64, i64* %f, i64 5 *)
(*   %5 = load i64, i64* %arrayidx5, align 8, !tbaa !3 *)
mov v5 mem0_40;
(*   %arrayidx6 = getelementptr inbounds i64, i64* %f, i64 6 *)
(*   %6 = load i64, i64* %arrayidx6, align 8, !tbaa !3 *)
mov v6 mem0_48;
(*   %arrayidx7 = getelementptr inbounds i64, i64* %f, i64 7 *)
(*   %7 = load i64, i64* %arrayidx7, align 8, !tbaa !3 *)
mov v7 mem0_56;
(*   %arrayidx8 = getelementptr inbounds i64, i64* %f, i64 8 *)
(*   %8 = load i64, i64* %arrayidx8, align 8, !tbaa !3 *)
mov v8 mem0_64;
(*   %arrayidx9 = getelementptr inbounds i64, i64* %f, i64 9 *)
(*   %9 = load i64, i64* %arrayidx9, align 8, !tbaa !3 *)
mov v9 mem0_72;
(*   %mul = shl i64 %0, 1 *)
shl v_mul v0 1;
(*   %mul10 = shl i64 %1, 1 *)
shl v_mul10 v1 1;
(*   %mul11 = mul i64 %2, 38 *)
mul v_mul11 v2 38@uint64;
(*   %mul12 = mul i64 %3, 19 *)
mul v_mul12 v3 19@uint64;
(*   %mul13 = mul i64 %4, 19 *)
mul v_mul13 v4 19@uint64;
(*   %mul14 = mul i64 %4, 38 *)
mul v_mul14 v4 38@uint64;
(*   %conv.i = zext i64 %0 to i128 *)
cast v_conv_i@uint128 v0@uint64;
(*   %mul.i = mul nuw i128 %conv.i, %conv.i *)
mul v_mul_i v_conv_i v_conv_i;
(*   %conv.i1189 = zext i64 %mul14 to i128 *)
cast v_conv_i1189@uint128 v_mul14@uint64;
(*   %conv1.i1190 = zext i64 %1 to i128 *)
cast v_conv1_i1190@uint128 v1@uint64;
(*   %mul.i1191 = mul nuw i128 %conv.i1189, %conv1.i1190 *)
mul v_mul_i1191 v_conv_i1189 v_conv1_i1190;
(*   %conv.i1167 = zext i64 %mul11 to i128 *)
cast v_conv_i1167@uint128 v_mul11@uint64;
(*   %conv1.i1168 = zext i64 %3 to i128 *)
cast v_conv1_i1168@uint128 v3@uint64;
(*   %mul.i1169 = mul nuw i128 %conv1.i1168, %conv.i1167 *)
mul v_mul_i1169 v_conv1_i1168 v_conv_i1167;
(*   %add.i1183 = add i128 %mul.i1169, %mul.i *)
add v_add_i1183 v_mul_i1169 v_mul_i;
(*   %add.i1161 = add i128 %add.i1183, %mul.i1191 *)
add v_add_i1161 v_add_i1183 v_mul_i1191;
(*   %conv.i1145 = zext i64 %mul to i128 *)
cast v_conv_i1145@uint128 v_mul@uint64;
(*   %mul.i1147 = mul nuw i128 %conv1.i1190, %conv.i1145 *)
mul v_mul_i1147 v_conv1_i1190 v_conv_i1145;
(*   %conv1.i1138 = zext i64 %2 to i128 *)
cast v_conv1_i1138@uint128 v2@uint64;
(*   %mul.i1139 = mul nuw i128 %conv.i1189, %conv1.i1138 *)
mul v_mul_i1139 v_conv_i1189 v_conv1_i1138;
(*   %conv.i1115 = zext i64 %mul12 to i128 *)
cast v_conv_i1115@uint128 v_mul12@uint64;
(*   %mul.i1117 = mul nuw i128 %conv.i1115, %conv1.i1168 *)
mul v_mul_i1117 v_conv_i1115 v_conv1_i1168;
(*   %mul.i1095 = mul nuw i128 %conv1.i1138, %conv.i1145 *)
mul v_mul_i1095 v_conv1_i1138 v_conv_i1145;
(*   %mul.i1087 = mul nuw i128 %conv1.i1190, %conv1.i1190 *)
mul v_mul_i1087 v_conv1_i1190 v_conv1_i1190;
(*   %add.i1079 = add i128 %mul.i1095, %mul.i1087 *)
add v_add_i1079 v_mul_i1095 v_mul_i1087;
(*   %mul.i1065 = mul nuw i128 %conv.i1189, %conv1.i1168 *)
mul v_mul_i1065 v_conv_i1189 v_conv1_i1168;
(*   %add.i1057 = add i128 %add.i1079, %mul.i1065 *)
add v_add_i1057 v_add_i1079 v_mul_i1065;
(*   %mul.i1043 = mul nuw i128 %conv1.i1168, %conv.i1145 *)
mul v_mul_i1043 v_conv1_i1168 v_conv_i1145;
(*   %conv.i1033 = zext i64 %mul10 to i128 *)
cast v_conv_i1033@uint128 v_mul10@uint64;
(*   %mul.i1035 = mul nuw i128 %conv1.i1138, %conv.i1033 *)
mul v_mul_i1035 v_conv1_i1138 v_conv_i1033;
(*   %add.i1027 = add i128 %mul.i1043, %mul.i1035 *)
add v_add_i1027 v_mul_i1043 v_mul_i1035;
(*   %conv.i1011 = zext i64 %4 to i128 *)
cast v_conv_i1011@uint128 v4@uint64;
(*   %conv1.i1012 = zext i64 %mul13 to i128 *)
cast v_conv1_i1012@uint128 v_mul13@uint64;
(*   %mul.i1013 = mul nuw i128 %conv1.i1012, %conv.i1011 *)
mul v_mul_i1013 v_conv1_i1012 v_conv_i1011;
(*   %add.i1005 = add i128 %add.i1027, %mul.i1013 *)
add v_add_i1005 v_add_i1027 v_mul_i1013;
(*   %mul.i991 = mul nuw i128 %conv.i1011, %conv.i1145 *)
mul v_mul_i991 v_conv_i1011 v_conv_i1145;
(*   %mul.i983 = mul nuw i128 %conv1.i1168, %conv.i1033 *)
mul v_mul_i983 v_conv1_i1168 v_conv_i1033;
(*   %mul.i961 = mul nuw i128 %conv1.i1138, %conv1.i1138 *)
mul v_mul_i961 v_conv1_i1138 v_conv1_i1138;
(*   %mul83 = shl i64 %5, 1 *)
shl v_mul83 v5 1;
(*   %mul84 = shl i64 %6, 1 *)
shl v_mul84 v6 1;
(*   %mul85 = mul i64 %7, 38 *)
mul v_mul85 v7 38@uint64;
(*   %mul86 = mul i64 %8, 19 *)
mul v_mul86 v8 19@uint64;
(*   %mul87 = mul i64 %9, 19 *)
mul v_mul87 v9 19@uint64;
(*   %mul88 = mul i64 %9, 38 *)
mul v_mul88 v9 38@uint64;
(*   %conv.i937 = zext i64 %5 to i128 *)
cast v_conv_i937@uint128 v5@uint64;
(*   %mul.i939 = mul nuw i128 %conv.i937, %conv.i937 *)
mul v_mul_i939 v_conv_i937 v_conv_i937;
(*   %conv.i929 = zext i64 %mul88 to i128 *)
cast v_conv_i929@uint128 v_mul88@uint64;
(*   %conv1.i930 = zext i64 %6 to i128 *)
cast v_conv1_i930@uint128 v6@uint64;
(*   %mul.i931 = mul nuw i128 %conv.i929, %conv1.i930 *)
mul v_mul_i931 v_conv_i929 v_conv1_i930;
(*   %conv.i907 = zext i64 %mul85 to i128 *)
cast v_conv_i907@uint128 v_mul85@uint64;
(*   %conv1.i908 = zext i64 %8 to i128 *)
cast v_conv1_i908@uint128 v8@uint64;
(*   %mul.i909 = mul nuw i128 %conv1.i908, %conv.i907 *)
mul v_mul_i909 v_conv1_i908 v_conv_i907;
(*   %add.i923 = add i128 %mul.i909, %mul.i939 *)
add v_add_i923 v_mul_i909 v_mul_i939;
(*   %add.i901 = add i128 %add.i923, %mul.i931 *)
add v_add_i901 v_add_i923 v_mul_i931;
(*   %conv.i885 = zext i64 %mul83 to i128 *)
cast v_conv_i885@uint128 v_mul83@uint64;
(*   %mul.i887 = mul nuw i128 %conv1.i930, %conv.i885 *)
mul v_mul_i887 v_conv1_i930 v_conv_i885;
(*   %conv1.i878 = zext i64 %7 to i128 *)
cast v_conv1_i878@uint128 v7@uint64;
(*   %mul.i879 = mul nuw i128 %conv.i929, %conv1.i878 *)
mul v_mul_i879 v_conv_i929 v_conv1_i878;
(*   %conv.i855 = zext i64 %mul86 to i128 *)
cast v_conv_i855@uint128 v_mul86@uint64;
(*   %mul.i857 = mul nuw i128 %conv.i855, %conv1.i908 *)
mul v_mul_i857 v_conv_i855 v_conv1_i908;
(*   %mul.i835 = mul nuw i128 %conv1.i878, %conv.i885 *)
mul v_mul_i835 v_conv1_i878 v_conv_i885;
(*   %mul.i827 = mul nuw i128 %conv1.i930, %conv1.i930 *)
mul v_mul_i827 v_conv1_i930 v_conv1_i930;
(*   %add.i819 = add i128 %mul.i835, %mul.i827 *)
add v_add_i819 v_mul_i835 v_mul_i827;
(*   %mul.i805 = mul nuw i128 %conv.i929, %conv1.i908 *)
mul v_mul_i805 v_conv_i929 v_conv1_i908;
(*   %add.i797 = add i128 %add.i819, %mul.i805 *)
add v_add_i797 v_add_i819 v_mul_i805;
(*   %mul.i783 = mul nuw i128 %conv1.i908, %conv.i885 *)
mul v_mul_i783 v_conv1_i908 v_conv_i885;
(*   %conv.i773 = zext i64 %mul84 to i128 *)
cast v_conv_i773@uint128 v_mul84@uint64;
(*   %mul.i775 = mul nuw i128 %conv1.i878, %conv.i773 *)
mul v_mul_i775 v_conv1_i878 v_conv_i773;
(*   %add.i767 = add i128 %mul.i783, %mul.i775 *)
add v_add_i767 v_mul_i783 v_mul_i775;
(*   %conv.i751 = zext i64 %9 to i128 *)
cast v_conv_i751@uint128 v9@uint64;
(*   %conv1.i752 = zext i64 %mul87 to i128 *)
cast v_conv1_i752@uint128 v_mul87@uint64;
(*   %mul.i753 = mul nuw i128 %conv1.i752, %conv.i751 *)
mul v_mul_i753 v_conv1_i752 v_conv_i751;
(*   %add.i745 = add i128 %add.i767, %mul.i753 *)
add v_add_i745 v_add_i767 v_mul_i753;
(*   %mul.i731 = mul nuw i128 %conv.i751, %conv.i885 *)
mul v_mul_i731 v_conv_i751 v_conv_i885;
(*   %mul.i723 = mul nuw i128 %conv1.i908, %conv.i773 *)
mul v_mul_i723 v_conv1_i908 v_conv_i773;
(*   %mul.i701 = mul nuw i128 %conv1.i878, %conv1.i878 *)
mul v_mul_i701 v_conv1_i878 v_conv1_i878;
(*   %retval.sroa.0.0.extract.trunc.i685 = trunc i128 %add.i1161 to i64 *)
(* == modified == *)
(* vpc v_retval_sroa_0_0_extract_trunc_i685@uint64 v_add_i1161@uint128; *)
cast v_retval_sroa_0_0_extract_trunc_i685@uint64 v_add_i1161@uint128;
(*   %and = and i64 %retval.sroa.0.0.extract.trunc.i685, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and v_retval_sroa_0_0_extract_trunc_i685 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i676 = lshr i128 %add.i1161, 51 *)
(* You may need to modify here *)
split v_shr_i676 tmp_to_be_used v_add_i1161 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and;
assume tmp_v = v_and && true;
(*   %y.sroa.0.0.insert.ext.i665 = and i128 %shr.i676, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i665 v_shr_i676 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i665 v_shr_i676;
assume eq v_y_sroa_0_0_insert_ext_i665 v_shr_i676 && true;
(*   %add.i1131 = add i128 %mul.i1117, %mul.i1147 *)
add v_add_i1131 v_mul_i1117 v_mul_i1147;
(*   %add.i1109 = add i128 %add.i1131, %mul.i1139 *)
add v_add_i1109 v_add_i1131 v_mul_i1139;
(*   %add.i666 = add i128 %add.i1109, %y.sroa.0.0.insert.ext.i665 *)
add v_add_i666 v_add_i1109 v_y_sroa_0_0_insert_ext_i665;
(*   %retval.sroa.0.0.extract.trunc.i667 = trunc i128 %add.i666 to i64 *)
(* == modified == *)
(* vpc v_retval_sroa_0_0_extract_trunc_i667@uint64 v_add_i666@uint128; *)
cast v_retval_sroa_0_0_extract_trunc_i667@uint64 v_add_i666@uint128;
(*   %and180 = and i64 %retval.sroa.0.0.extract.trunc.i667, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and180 v_retval_sroa_0_0_extract_trunc_i667 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i656 = lshr i128 %add.i666, 51 *)
(* You may need to modify here *)
split v_shr_i656 tmp_to_be_used v_add_i666 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and180;
assume tmp_v = v_and180 && true;
(*   %y.sroa.0.0.insert.ext.i645 = and i128 %shr.i656, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i645 v_shr_i656 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i645 v_shr_i656;
assume eq v_y_sroa_0_0_insert_ext_i645 v_shr_i656 && true;
(*   %add.i646 = add i128 %add.i1057, %y.sroa.0.0.insert.ext.i645 *)
add v_add_i646 v_add_i1057 v_y_sroa_0_0_insert_ext_i645;
(*   %shr.i636 = lshr i128 %add.i646, 51 *)
(* You may need to modify here *)
split v_shr_i636 tmp_to_be_used v_add_i646 51;
(*   %y.sroa.0.0.insert.ext.i625 = and i128 %shr.i636, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i625 v_shr_i636 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i625 v_shr_i636;
assume eq v_y_sroa_0_0_insert_ext_i625 v_shr_i636 && true;
(*   %add.i626 = add i128 %add.i1005, %y.sroa.0.0.insert.ext.i625 *)
add v_add_i626 v_add_i1005 v_y_sroa_0_0_insert_ext_i625;
(*   %10 = insertelement <2 x i128> undef, i128 %add.i646, i32 0 *)
mov v10_0 v_add_i646;
nondet undef_1@uint128;
mov v10_1 undef_1;
(*   %11 = insertelement <2 x i128> %10, i128 %add.i626, i32 1 *)
mov v11_0 v10_0;
mov v11_1 v_add_i626;
(*   %12 = trunc <2 x i128> %11 to <2 x i64> *)
(* == modified == *)
(* vpc v12_0@uint64 v11_0@uint128; *)
(* vpc v12_1@uint64 v11_1@uint128; *)
cast v12_0@uint64 v11_0@uint128;
cast v12_1@uint64 v11_1@uint128;
(*   %13 = and <2 x i64> %12, <i64 2251799813685247, i64 2251799813685247> *)
(* You may need to modify here *)
and uint64 v13_0 v12_0 0x7FFFFFFFFFFFF@uint64;
and uint64 v13_1 v12_1 0x7FFFFFFFFFFFF@uint64;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v13_0;
assume tmp_v = v13_0 && true;
(*   %shr.i616 = lshr i128 %add.i626, 51 *)
(* You may need to modify here *)
split v_shr_i616 tmp_to_be_used v_add_i626 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v13_1;
assume tmp_v = v13_1 && true;
(*   %y.sroa.0.0.insert.ext.i605 = and i128 %shr.i616, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i605 v_shr_i616 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i605 v_shr_i616;
assume eq v_y_sroa_0_0_insert_ext_i605 v_shr_i616 && true;
(*   %add.i975 = add i128 %mul.i983, %mul.i961 *)
add v_add_i975 v_mul_i983 v_mul_i961;
(*   %add.i953 = add i128 %add.i975, %mul.i991 *)
add v_add_i953 v_add_i975 v_mul_i991;
(*   %add.i606 = add i128 %add.i953, %y.sroa.0.0.insert.ext.i605 *)
add v_add_i606 v_add_i953 v_y_sroa_0_0_insert_ext_i605;
(*   %retval.sroa.0.0.extract.trunc.i607 = trunc i128 %add.i606 to i64 *)
(* == modified == *)
(* vpc v_retval_sroa_0_0_extract_trunc_i607@uint64 v_add_i606@uint128; *)
cast v_retval_sroa_0_0_extract_trunc_i607@uint64 v_add_i606@uint128;
(*   %and222 = and i64 %retval.sroa.0.0.extract.trunc.i607, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and222 v_retval_sroa_0_0_extract_trunc_i607 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i596 = lshr i128 %add.i606, 51 *)
(* You may need to modify here *)
split v_shr_i596 tmp_to_be_used v_add_i606 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and222;
assume tmp_v = v_and222 && true;
(*   %retval.sroa.0.0.extract.trunc.i597 = trunc i128 %shr.i596 to i64 *)
vpc v_retval_sroa_0_0_extract_trunc_i597@uint64 v_shr_i596@uint128;
(*   %mul228 = mul i64 %retval.sroa.0.0.extract.trunc.i597, 19 *)
mul v_mul228 v_retval_sroa_0_0_extract_trunc_i597 19@uint64;
(*   %add = add i64 %mul228, %and *)
add v_add v_mul228 v_and;
(*   %and229 = and i64 %add, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and229 v_add 0x7FFFFFFFFFFFF@uint64;
(*   %shr = lshr i64 %add, 51 *)
(* You may need to modify here *)
split v_shr tmp_to_be_used v_add 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and229;
assume tmp_v = v_and229 && true;
(*   %add230 = add nuw nsw i64 %shr, %and180 *)
add v_add230 v_shr v_and180;
(*   %retval.sroa.0.0.extract.trunc.i589 = trunc i128 %add.i901 to i64 *)
(* == modified == *)
(* vpc v_retval_sroa_0_0_extract_trunc_i589@uint64 v_add_i901@uint128; *)
cast v_retval_sroa_0_0_extract_trunc_i589@uint64 v_add_i901@uint128;
(*   %and239 = and i64 %retval.sroa.0.0.extract.trunc.i589, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and239 v_retval_sroa_0_0_extract_trunc_i589 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i580 = lshr i128 %add.i901, 51 *)
(* You may need to modify here *)
split v_shr_i580 tmp_to_be_used v_add_i901 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and239;
assume tmp_v = v_and239 && true;
(*   %y.sroa.0.0.insert.ext.i569 = and i128 %shr.i580, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i569 v_shr_i580 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i569 v_shr_i580;
assume eq v_y_sroa_0_0_insert_ext_i569 v_shr_i580 && true;
(*   %add.i871 = add i128 %mul.i857, %mul.i887 *)
add v_add_i871 v_mul_i857 v_mul_i887;
(*   %add.i849 = add i128 %add.i871, %mul.i879 *)
add v_add_i849 v_add_i871 v_mul_i879;
(*   %add.i570 = add i128 %add.i849, %y.sroa.0.0.insert.ext.i569 *)
add v_add_i570 v_add_i849 v_y_sroa_0_0_insert_ext_i569;
(*   %retval.sroa.0.0.extract.trunc.i571 = trunc i128 %add.i570 to i64 *)
(* == modified == *)
(* vpc v_retval_sroa_0_0_extract_trunc_i571@uint64 v_add_i570@uint128; *)
cast v_retval_sroa_0_0_extract_trunc_i571@uint64 v_add_i570@uint128;
(*   %and253 = and i64 %retval.sroa.0.0.extract.trunc.i571, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and253 v_retval_sroa_0_0_extract_trunc_i571 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i560 = lshr i128 %add.i570, 51 *)
(* You may need to modify here *)
split v_shr_i560 tmp_to_be_used v_add_i570 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and253;
assume tmp_v = v_and253 && true;
(*   %y.sroa.0.0.insert.ext.i549 = and i128 %shr.i560, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i549 v_shr_i560 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i549 v_shr_i560;
assume eq v_y_sroa_0_0_insert_ext_i549 v_shr_i560 && true;
(*   %add.i550 = add i128 %add.i797, %y.sroa.0.0.insert.ext.i549 *)
add v_add_i550 v_add_i797 v_y_sroa_0_0_insert_ext_i549;
(*   %shr.i540 = lshr i128 %add.i550, 51 *)
(* You may need to modify here *)
split v_shr_i540 tmp_to_be_used v_add_i550 51;
(*   %y.sroa.0.0.insert.ext.i529 = and i128 %shr.i540, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i529 v_shr_i540 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i529 v_shr_i540;
assume eq v_y_sroa_0_0_insert_ext_i529 v_shr_i540 && true;
(*   %add.i530 = add i128 %add.i745, %y.sroa.0.0.insert.ext.i529 *)
add v_add_i530 v_add_i745 v_y_sroa_0_0_insert_ext_i529;
(*   %14 = insertelement <2 x i128> undef, i128 %add.i550, i32 0 *)
mov v14_0 v_add_i550;
nondet undef_1@uint128;
mov v14_1 undef_1;
(*   %15 = insertelement <2 x i128> %14, i128 %add.i530, i32 1 *)
mov v15_0 v14_0;
mov v15_1 v_add_i530;
(*   %16 = trunc <2 x i128> %15 to <2 x i64> *)
(* == modified == *)
(* vpc v16_0@uint64 v15_0@uint128; *)
(* vpc v16_1@uint64 v15_1@uint128; *)
cast v16_0@uint64 v15_0@uint128;
cast v16_1@uint64 v15_1@uint128;
(*   %17 = and <2 x i64> %16, <i64 2251799813685247, i64 2251799813685247> *)
(* You may need to modify here *)
and uint64 v17_0 v16_0 0x7FFFFFFFFFFFF@uint64;
and uint64 v17_1 v16_1 0x7FFFFFFFFFFFF@uint64;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v17_0;
assume tmp_v = v17_0 && true;
(*   %shr.i520 = lshr i128 %add.i530, 51 *)
(* You may need to modify here *)
split v_shr_i520 tmp_to_be_used v_add_i530 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v17_1;
assume tmp_v = v17_1 && true;
(*   %y.sroa.0.0.insert.ext.i = and i128 %shr.i520, 18446744073709551615 *)
(* You may need to modify here *)
and uint128 v_y_sroa_0_0_insert_ext_i v_shr_i520 0xFFFFFFFFFFFFFFFF@uint128;
(* Heuristics applied. *)
assert true && eq v_y_sroa_0_0_insert_ext_i v_shr_i520;
assume eq v_y_sroa_0_0_insert_ext_i v_shr_i520 && true;
(*   %add.i715 = add i128 %mul.i723, %mul.i701 *)
add v_add_i715 v_mul_i723 v_mul_i701;
(*   %add.i693 = add i128 %add.i715, %mul.i731 *)
add v_add_i693 v_add_i715 v_mul_i731;
(*   %add.i = add i128 %add.i693, %y.sroa.0.0.insert.ext.i *)
add v_add_i v_add_i693 v_y_sroa_0_0_insert_ext_i;
(*   %retval.sroa.0.0.extract.trunc.i511 = trunc i128 %add.i to i64 *)
(* == modified == *)
(* vpc v_retval_sroa_0_0_extract_trunc_i511@uint64 v_add_i@uint128; *)
cast v_retval_sroa_0_0_extract_trunc_i511@uint64 v_add_i@uint128;
(*   %and295 = and i64 %retval.sroa.0.0.extract.trunc.i511, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and295 v_retval_sroa_0_0_extract_trunc_i511 0x7FFFFFFFFFFFF@uint64;
(*   %shr.i = lshr i128 %add.i, 51 *)
(* You may need to modify here *)
split v_shr_i tmp_to_be_used v_add_i 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and295;
assume tmp_v = v_and295 && true;
(*   %retval.sroa.0.0.extract.trunc.i503 = trunc i128 %shr.i to i64 *)
vpc v_retval_sroa_0_0_extract_trunc_i503@uint64 v_shr_i@uint128;
(*   %mul301 = mul i64 %retval.sroa.0.0.extract.trunc.i503, 19 *)
mul v_mul301 v_retval_sroa_0_0_extract_trunc_i503 19@uint64;
(*   %add302 = add i64 %mul301, %and239 *)
add v_add302 v_mul301 v_and239;
(*   %and303 = and i64 %add302, 2251799813685247 *)
(* You may need to modify here *)
and uint64 v_and303 v_add302 0x7FFFFFFFFFFFF@uint64;
(*   %shr304 = lshr i64 %add302, 51 *)
(* You may need to modify here *)
split v_shr304 tmp_to_be_used v_add302 51;
(* == modified == *)
vpc tmp_v@uint64 tmp_to_be_used;
assert true && tmp_v = v_and303;
assume tmp_v = v_and303 && true;
(*   %add305 = add nuw nsw i64 %shr304, %and253 *)
add v_add305 v_shr304 v_and253;
(*   store i64 %and229, i64* %out, align 8, !tbaa !3 *)
mov mem1_0 v_and229;
(*   %arrayidx307 = getelementptr inbounds i64, i64* %out, i64 1 *)
(*   store i64 %add230, i64* %arrayidx307, align 8, !tbaa !3 *)
mov mem1_8 v_add230;
(*   %arrayidx308 = getelementptr inbounds i64, i64* %out, i64 2 *)
(*   %18 = bitcast i64* %arrayidx308 to <2 x i64>* *)
(*   store <2 x i64> %13, <2 x i64>* %18, align 8, !tbaa !3 *)
mov mem1_16 v13_0;
mov mem1_24 v13_1;
(*   %arrayidx310 = getelementptr inbounds i64, i64* %out, i64 4 *)
(*   store i64 %and222, i64* %arrayidx310, align 8, !tbaa !3 *)
mov mem1_32 v_and222;
(*   %arrayidx311 = getelementptr inbounds i64, i64* %out, i64 5 *)
(*   store i64 %and303, i64* %arrayidx311, align 8, !tbaa !3 *)
mov mem1_40 v_and303;
(*   %arrayidx312 = getelementptr inbounds i64, i64* %out, i64 6 *)
(*   store i64 %add305, i64* %arrayidx312, align 8, !tbaa !3 *)
mov mem1_48 v_add305;
(*   %arrayidx313 = getelementptr inbounds i64, i64* %out, i64 7 *)
(*   %19 = bitcast i64* %arrayidx313 to <2 x i64>* *)
(*   store <2 x i64> %17, <2 x i64>* %19, align 8, !tbaa !3 *)
mov mem1_56 v17_0;
mov mem1_64 v17_1;
(*   %arrayidx315 = getelementptr inbounds i64, i64* %out, i64 9 *)
(*   store i64 %and295, i64* %arrayidx315, align 8, !tbaa !3 *)
mov mem1_72 v_and295;
(*   ret void *)


{
  and [
	(limbs 51 [mem1_0, mem1_8, mem1_16, mem1_24, mem1_32])
  	=
  	(
  	  (limbs 51 [mem0_0, mem0_8, mem0_16, mem0_24, mem0_32])
      *
      (limbs 51 [mem0_0, mem0_8, mem0_16, mem0_24, mem0_32])
  	)
  	(mod (2**255 - 19)),
	(limbs 51 [mem1_40, mem1_48, mem1_56, mem1_64, mem1_72])
  	=
  	(
  	  (limbs 51 [mem0_40, mem0_48, mem0_56, mem0_64, mem0_72])
      *
      (limbs 51 [mem0_40, mem0_48, mem0_56, mem0_64, mem0_72])
  	)
  	(mod (2**255 - 19))
  ]
  &&
  and [
    mem1_0 <=u (1 * (2**51-1))@64,
	mem1_8 <=u ((2**51-1) + 8192)@64,
  	mem1_16 <=u (1 * (2**51-1))@64,
  	mem1_24 <=u (1 * (2**51-1))@64,
  	mem1_32 <=u (1 * (2**51-1))@64,
    mem1_40 <=u (1 * (2**51-1))@64,
	mem1_48 <=u ((2**51-1) + 8192)@64,
  	mem1_56 <=u (1 * (2**51-1))@64,
  	mem1_64 <=u (1 * (2**51-1))@64,
  	mem1_72 <=u (1 * (2**51-1))@64
  ]
}


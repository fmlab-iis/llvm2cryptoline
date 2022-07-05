proc main (uint64 a_0, uint64 a_8, uint64 a_16, uint64 a_24, uint64 a_32, uint64 a_40, uint64 a_48, uint64 b_0, uint64 b_8, uint64 b_16, uint64 b_24, uint64 b_32, uint64 b_40, uint64 b_48, uint64 p434x2_0, uint64 p434x2_8, uint64 p434x2_16, uint64 p434x2_24, uint64 p434x2_32, uint64 p434x2_40, uint64 p434x2_48) =
{
  true
  &&
  true
}



(*   %0 = load i64, i64* %a, align 8, !tbaa !3 *)
mov v0 a_0;
(*   %1 = load i64, i64* %b, align 8, !tbaa !3 *)
mov v1 b_0;
(*   %add3 = add i64 %1, %0 *)
add v_add3 v1 v0;
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
add v_add_1 v2 v_or;
(*   %arrayidx2.1 = getelementptr inbounds i64, i64* %b, i64 1 *)
(*   %3 = load i64, i64* %arrayidx2.1, align 8, !tbaa !3 *)
mov v3 b_8;
(*   %add3.1 = add i64 %3, %add.1 *)
add v_add3_1 v3 v_add_1;
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
add v_add_2 v5 v_or_1;
(*   %arrayidx2.2 = getelementptr inbounds i64, i64* %b, i64 2 *)
(*   %6 = load i64, i64* %arrayidx2.2, align 8, !tbaa !3 *)
mov v6 b_16;
(*   %add3.2 = add i64 %6, %add.2 *)
add v_add3_2 v6 v_add_2;
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
add v_add_3 v8 v_or_2;
(*   %arrayidx2.3 = getelementptr inbounds i64, i64* %b, i64 3 *)
(*   %9 = load i64, i64* %arrayidx2.3, align 8, !tbaa !3 *)
mov v9 b_24;
(*   %add3.3 = add i64 %9, %add.3 *)
add v_add3_3 v9 v_add_3;
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
add v_add_4 v11 v_or_3;
(*   %arrayidx2.4 = getelementptr inbounds i64, i64* %b, i64 4 *)
(*   %12 = load i64, i64* %arrayidx2.4, align 8, !tbaa !3 *)
mov v12 b_32;
(*   %add3.4 = add i64 %12, %add.4 *)
add v_add3_4 v12 v_add_4;
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
add v_add_5 v14 v_or_4;
(*   %arrayidx2.5 = getelementptr inbounds i64, i64* %b, i64 5 *)
(*   %15 = load i64, i64* %arrayidx2.5, align 8, !tbaa !3 *)
mov v15 b_40;
(*   %add3.5 = add i64 %15, %add.5 *)
add v_add3_5 v15 v_add_5;
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
add v_add_6 v17 v_or_5;
(*   %arrayidx2.6 = getelementptr inbounds i64, i64* %b, i64 6 *)
(*   %18 = load i64, i64* %arrayidx2.6, align 8, !tbaa !3 *)
mov v18 b_48;
(*   %add3.6 = add i64 %18, %add.6 *)
add v_add3_6 v18 v_add_6;
(*   %arrayidx5.6 = getelementptr inbounds i64, i64* %c, i64 6 *)
(*   store i64 %add3.6, i64* %arrayidx5.6, align 8, !tbaa !3 *)
mov c_48 v_add3_6;
(*   %19 = load i64, i64* %c, align 8, !tbaa !3 *)
mov v19 c_0;
(*   %20 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 0), align 16, !tbaa !3 *)
mov v20 p434x2_0;
(*   %sub = sub i64 %19, %20 *)
sub v_sub v19 v20;
(*   %xor.i115 = xor i64 %20, %19 *)
(* You may need to modify here *)
xor uint64 v_xor_i115 v20 v19;
(*   %xor1.i117 = xor i64 %sub, %20 *)
(* You may need to modify here *)
xor uint64 v_xor1_i117 v_sub v20;
(*   %or.i118 = or i64 %xor1.i117, %xor.i115 *)
(* You may need to modify here *)
or uint64 v_or_i118 v_xor1_i117 v_xor_i115;
(*   %xor2.i119 = xor i64 %or.i118, %19 *)
(* You may need to modify here *)
xor uint64 v_xor2_i119 v_or_i118 v19;
(*   %shr.i120 = lshr i64 %xor2.i119, 63 *)
(* You may need to modify here *)
split v_shr_i120 tmp_to_be_used v_xor2_i119 63;
(*   %conv.i121 = trunc i64 %shr.i120 to i32 *)
split tmp_v_shr_i120 v_conv_i121 v_shr_i120 32;
vpc v_conv_i121@uint32 v_conv_i121@uint64;
(*   store i64 %sub, i64* %c, align 8, !tbaa !3 *)
mov c_0 v_sub;
(*   %21 = load i64, i64* %arrayidx5.1, align 8, !tbaa !3 *)
mov v21 c_8;
(*   %22 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 1), align 8, !tbaa !3 *)
mov v22 p434x2_8;
(*   %sub.1 = sub i64 %21, %22 *)
sub v_sub_1 v21 v22;
(*   %xor.i115.1 = xor i64 %22, %21 *)
(* You may need to modify here *)
xor uint64 v_xor_i115_1 v22 v21;
(*   %xor1.i117.1 = xor i64 %sub.1, %22 *)
(* You may need to modify here *)
xor uint64 v_xor1_i117_1 v_sub_1 v22;
(*   %or.i118.1 = or i64 %xor1.i117.1, %xor.i115.1 *)
(* You may need to modify here *)
or uint64 v_or_i118_1 v_xor1_i117_1 v_xor_i115_1;
(*   %xor2.i119.1 = xor i64 %or.i118.1, %21 *)
(* You may need to modify here *)
xor uint64 v_xor2_i119_1 v_or_i118_1 v21;
(*   %shr.i120.1 = lshr i64 %xor2.i119.1, 63 *)
(* You may need to modify here *)
split v_shr_i120_1 tmp_to_be_used v_xor2_i119_1 63;
(*   %conv.i121.1 = trunc i64 %shr.i120.1 to i32 *)
split tmp_v_shr_i120_1 v_conv_i121_1 v_shr_i120_1 32;
vpc v_conv_i121_1@uint32 v_conv_i121_1@uint64;
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
sub v_sub27_1 v_sub_1 v_shr_i120;
(*   store i64 %sub27.1, i64* %arrayidx5.1, align 8, !tbaa !3 *)
mov c_8 v_sub27_1;
(*   %23 = load i64, i64* %arrayidx5.2, align 8, !tbaa !3 *)
mov v23 c_16;
(*   %24 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 2), align 16, !tbaa !3 *)
mov v24 p434x2_16;
(*   %sub.2 = sub i64 %23, %24 *)
sub v_sub_2 v23 v24;
(*   %xor.i115.2 = xor i64 %24, %23 *)
(* You may need to modify here *)
xor uint64 v_xor_i115_2 v24 v23;
(*   %xor1.i117.2 = xor i64 %sub.2, %24 *)
(* You may need to modify here *)
xor uint64 v_xor1_i117_2 v_sub_2 v24;
(*   %or.i118.2 = or i64 %xor1.i117.2, %xor.i115.2 *)
(* You may need to modify here *)
or uint64 v_or_i118_2 v_xor1_i117_2 v_xor_i115_2;
(*   %xor2.i119.2 = xor i64 %or.i118.2, %23 *)
(* You may need to modify here *)
xor uint64 v_xor2_i119_2 v_or_i118_2 v23;
(*   %shr.i120.2 = lshr i64 %xor2.i119.2, 63 *)
(* You may need to modify here *)
split v_shr_i120_2 tmp_to_be_used v_xor2_i119_2 63;
(*   %conv.i121.2 = trunc i64 %shr.i120.2 to i32 *)
split tmp_v_shr_i120_2 v_conv_i121_2 v_shr_i120_2 32;
vpc v_conv_i121_2@uint32 v_conv_i121_2@uint64;
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
sub v_sub27_2 v_sub_2 v_conv26_2;
(*   store i64 %sub27.2, i64* %arrayidx5.2, align 8, !tbaa !3 *)
mov c_16 v_sub27_2;
(*   %25 = load i64, i64* %arrayidx5.3, align 8, !tbaa !3 *)
mov v25 c_24;
(*   %26 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 3), align 8, !tbaa !3 *)
mov v26 p434x2_24;
(*   %sub.3 = sub i64 %25, %26 *)
sub v_sub_3 v25 v26;
(*   %xor.i115.3 = xor i64 %26, %25 *)
(* You may need to modify here *)
xor uint64 v_xor_i115_3 v26 v25;
(*   %xor1.i117.3 = xor i64 %sub.3, %26 *)
(* You may need to modify here *)
xor uint64 v_xor1_i117_3 v_sub_3 v26;
(*   %or.i118.3 = or i64 %xor1.i117.3, %xor.i115.3 *)
(* You may need to modify here *)
or uint64 v_or_i118_3 v_xor1_i117_3 v_xor_i115_3;
(*   %xor2.i119.3 = xor i64 %or.i118.3, %25 *)
(* You may need to modify here *)
xor uint64 v_xor2_i119_3 v_or_i118_3 v25;
(*   %shr.i120.3 = lshr i64 %xor2.i119.3, 63 *)
(* You may need to modify here *)
split v_shr_i120_3 tmp_to_be_used v_xor2_i119_3 63;
(*   %conv.i121.3 = trunc i64 %shr.i120.3 to i32 *)
split tmp_v_shr_i120_3 v_conv_i121_3 v_shr_i120_3 32;
vpc v_conv_i121_3@uint32 v_conv_i121_3@uint64;
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
sub v_sub27_3 v_sub_3 v_conv26_3;
(*   store i64 %sub27.3, i64* %arrayidx5.3, align 8, !tbaa !3 *)
mov c_24 v_sub27_3;
(*   %27 = load i64, i64* %arrayidx5.4, align 8, !tbaa !3 *)
mov v27 c_32;
(*   %28 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 4), align 16, !tbaa !3 *)
mov v28 p434x2_32;
(*   %sub.4 = sub i64 %27, %28 *)
sub v_sub_4 v27 v28;
(*   %xor.i115.4 = xor i64 %28, %27 *)
(* You may need to modify here *)
xor uint64 v_xor_i115_4 v28 v27;
(*   %xor1.i117.4 = xor i64 %sub.4, %28 *)
(* You may need to modify here *)
xor uint64 v_xor1_i117_4 v_sub_4 v28;
(*   %or.i118.4 = or i64 %xor1.i117.4, %xor.i115.4 *)
(* You may need to modify here *)
or uint64 v_or_i118_4 v_xor1_i117_4 v_xor_i115_4;
(*   %xor2.i119.4 = xor i64 %or.i118.4, %27 *)
(* You may need to modify here *)
xor uint64 v_xor2_i119_4 v_or_i118_4 v27;
(*   %shr.i120.4 = lshr i64 %xor2.i119.4, 63 *)
(* You may need to modify here *)
split v_shr_i120_4 tmp_to_be_used v_xor2_i119_4 63;
(*   %conv.i121.4 = trunc i64 %shr.i120.4 to i32 *)
split tmp_v_shr_i120_4 v_conv_i121_4 v_shr_i120_4 32;
vpc v_conv_i121_4@uint32 v_conv_i121_4@uint64;
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
sub v_sub27_4 v_sub_4 v_conv26_4;
(*   %29 = load i64, i64* %arrayidx5.5, align 8, !tbaa !3 *)
mov v29 c_40;
(*   %30 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 5), align 8, !tbaa !3 *)
mov v30 p434x2_40;
(*   %sub.5 = sub i64 %29, %30 *)
sub v_sub_5 v29 v30;
(*   %xor.i115.5 = xor i64 %30, %29 *)
(* You may need to modify here *)
xor uint64 v_xor_i115_5 v30 v29;
(*   %xor1.i117.5 = xor i64 %sub.5, %30 *)
(* You may need to modify here *)
xor uint64 v_xor1_i117_5 v_sub_5 v30;
(*   %or.i118.5 = or i64 %xor1.i117.5, %xor.i115.5 *)
(* You may need to modify here *)
or uint64 v_or_i118_5 v_xor1_i117_5 v_xor_i115_5;
(*   %xor2.i119.5 = xor i64 %or.i118.5, %29 *)
(* You may need to modify here *)
xor uint64 v_xor2_i119_5 v_or_i118_5 v29;
(*   %shr.i120.5 = lshr i64 %xor2.i119.5, 63 *)
(* You may need to modify here *)
split v_shr_i120_5 tmp_to_be_used v_xor2_i119_5 63;
(*   %conv.i121.5 = trunc i64 %shr.i120.5 to i32 *)
split tmp_v_shr_i120_5 v_conv_i121_5 v_shr_i120_5 32;
vpc v_conv_i121_5@uint32 v_conv_i121_5@uint64;
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
sub v_sub27_5 v_sub_5 v_conv26_5;
(*   %31 = load i64, i64* %arrayidx5.6, align 8, !tbaa !3 *)
mov v31 c_48;
(*   %32 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 6), align 16, !tbaa !3 *)
mov v32 p434x2_48;
(*   %sub.6 = sub i64 %31, %32 *)
sub v_sub_6 v31 v32;
(*   %xor.i115.6 = xor i64 %32, %31 *)
(* You may need to modify here *)
xor uint64 v_xor_i115_6 v32 v31;
(*   %xor1.i117.6 = xor i64 %sub.6, %32 *)
(* You may need to modify here *)
xor uint64 v_xor1_i117_6 v_sub_6 v32;
(*   %or.i118.6 = or i64 %xor1.i117.6, %xor.i115.6 *)
(* You may need to modify here *)
or uint64 v_or_i118_6 v_xor1_i117_6 v_xor_i115_6;
(*   %xor2.i119.6 = xor i64 %or.i118.6, %31 *)
(* You may need to modify here *)
xor uint64 v_xor2_i119_6 v_or_i118_6 v31;
(*   %shr.i120.6 = lshr i64 %xor2.i119.6, 63 *)
(* You may need to modify here *)
split v_shr_i120_6 tmp_to_be_used v_xor2_i119_6 63;
(*   %conv.i121.6 = trunc i64 %shr.i120.6 to i32 *)
split tmp_v_shr_i120_6 v_conv_i121_6 v_shr_i120_6 32;
vpc v_conv_i121_6@uint32 v_conv_i121_6@uint64;
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
sub v_sub27_6 v_sub_6 v_conv26_6;
(*   %conv33 = zext i32 %or25.6 to i64 *)
cast v_conv33@uint64 v_or25_6@uint32;
(*   %sub34 = sub nsw i64 0, %conv33 *)
sub v_sub34 (0)@uint64 v_conv33;
(*   %33 = load i64, i64* %c, align 8, !tbaa !3 *)
mov v33 c_0;
(*   %34 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 0), align 16, !tbaa !3 *)
mov v34 p434x2_0;
(*   %and46 = and i64 %34, %sub34 *)
(* You may need to modify here *)
and uint64 v_and46 v34 v_sub34;
(*   %add47 = add i64 %and46, %33 *)
add v_add47 v_and46 v33;
(*   store i64 %add47, i64* %c, align 8, !tbaa !3 *)
mov c_0 v_add47;
(*   %xor.i102 = xor i64 %add47, %33 *)
(* You may need to modify here *)
xor uint64 v_xor_i102 v_add47 v33;
(*   %xor1.i103 = xor i64 %and46, %33 *)
(* You may need to modify here *)
xor uint64 v_xor1_i103 v_and46 v33;
(*   %or.i104 = or i64 %xor.i102, %xor1.i103 *)
(* You may need to modify here *)
or uint64 v_or_i104 v_xor_i102 v_xor1_i103;
(*   %xor2.i105 = xor i64 %or.i104, %add47 *)
(* You may need to modify here *)
xor uint64 v_xor2_i105 v_or_i104 v_add47;
(*   %or55 = lshr i64 %xor2.i105, 63 *)
(* You may need to modify here *)
split v_or55 tmp_to_be_used v_xor2_i105 63;
(*   %35 = load i64, i64* %arrayidx5.1, align 8, !tbaa !3 *)
mov v35 c_8;
(*   %add43.1 = add i64 %35, %or55 *)
add v_add43_1 v35 v_or55;
(*   %36 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 1), align 8, !tbaa !3 *)
mov v36 p434x2_8;
(*   %and46.1 = and i64 %36, %sub34 *)
(* You may need to modify here *)
and uint64 v_and46_1 v36 v_sub34;
(*   %add47.1 = add i64 %and46.1, %add43.1 *)
add v_add47_1 v_and46_1 v_add43_1;
(*   store i64 %add47.1, i64* %arrayidx5.1, align 8, !tbaa !3 *)
mov c_8 v_add47_1;
(*   %37 = xor i64 %add43.1, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v37 v_add43_1 (0x8000000000000000)@uint64;
(*   %xor2.i111.1 = and i64 %37, %35 *)
(* You may need to modify here *)
and uint64 v_xor2_i111_1 v37 v35;
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
(*   %38 = load i64, i64* %arrayidx5.2, align 8, !tbaa !3 *)
mov v38 c_16;
(*   %add43.2 = add i64 %38, %or55.1 *)
add v_add43_2 v38 v_or55_1;
(*   %39 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 2), align 16, !tbaa !3 *)
mov v39 p434x2_16;
(*   %and46.2 = and i64 %39, %sub34 *)
(* You may need to modify here *)
and uint64 v_and46_2 v39 v_sub34;
(*   %add47.2 = add i64 %and46.2, %add43.2 *)
add v_add47_2 v_and46_2 v_add43_2;
(*   store i64 %add47.2, i64* %arrayidx5.2, align 8, !tbaa !3 *)
mov c_16 v_add47_2;
(*   %40 = xor i64 %add43.2, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v40 v_add43_2 (0x8000000000000000)@uint64;
(*   %xor2.i111.2 = and i64 %40, %38 *)
(* You may need to modify here *)
and uint64 v_xor2_i111_2 v40 v38;
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
(*   %41 = load i64, i64* %arrayidx5.3, align 8, !tbaa !3 *)
mov v41 c_24;
(*   %add43.3 = add i64 %41, %or55.2 *)
add v_add43_3 v41 v_or55_2;
(*   %42 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 3), align 8, !tbaa !3 *)
mov v42 p434x2_24;
(*   %and46.3 = and i64 %42, %sub34 *)
(* You may need to modify here *)
and uint64 v_and46_3 v42 v_sub34;
(*   %add47.3 = add i64 %and46.3, %add43.3 *)
add v_add47_3 v_and46_3 v_add43_3;
(*   store i64 %add47.3, i64* %arrayidx5.3, align 8, !tbaa !3 *)
mov c_24 v_add47_3;
(*   %43 = xor i64 %add43.3, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v43 v_add43_3 (0x8000000000000000)@uint64;
(*   %xor2.i111.3 = and i64 %43, %41 *)
(* You may need to modify here *)
and uint64 v_xor2_i111_3 v43 v41;
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
(*   %add43.4 = add i64 %sub27.4, %or55.3 *)
add v_add43_4 v_sub27_4 v_or55_3;
(*   %44 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 4), align 16, !tbaa !3 *)
mov v44 p434x2_32;
(*   %and46.4 = and i64 %44, %sub34 *)
(* You may need to modify here *)
and uint64 v_and46_4 v44 v_sub34;
(*   %add47.4 = add i64 %and46.4, %add43.4 *)
add v_add47_4 v_and46_4 v_add43_4;
(*   store i64 %add47.4, i64* %arrayidx5.4, align 8, !tbaa !3 *)
mov c_32 v_add47_4;
(*   %45 = xor i64 %add43.4, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v45 v_add43_4 (0x8000000000000000)@uint64;
(*   %xor2.i111.4 = and i64 %45, %sub27.4 *)
(* You may need to modify here *)
and uint64 v_xor2_i111_4 v45 v_sub27_4;
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
(*   %add43.5 = add i64 %sub27.5, %or55.4 *)
add v_add43_5 v_sub27_5 v_or55_4;
(*   %46 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 5), align 8, !tbaa !3 *)
mov v46 p434x2_40;
(*   %and46.5 = and i64 %46, %sub34 *)
(* You may need to modify here *)
and uint64 v_and46_5 v46 v_sub34;
(*   %add47.5 = add i64 %and46.5, %add43.5 *)
add v_add47_5 v_and46_5 v_add43_5;
(*   store i64 %add47.5, i64* %arrayidx5.5, align 8, !tbaa !3 *)
mov c_40 v_add47_5;
(*   %47 = xor i64 %add43.5, -9223372036854775808 *)
(* You may need to modify here *)
xor uint64 v47 v_add43_5 (0x8000000000000000)@uint64;
(*   %xor2.i111.5 = and i64 %47, %sub27.5 *)
(* You may need to modify here *)
and uint64 v_xor2_i111_5 v47 v_sub27_5;
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
(*   %add43.6 = add i64 %sub27.6, %or55.5 *)
add v_add43_6 v_sub27_6 v_or55_5;
(*   %48 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 6), align 16, !tbaa !3 *)
mov v48 p434x2_48;
(*   %and46.6 = and i64 %48, %sub34 *)
(* You may need to modify here *)
and uint64 v_and46_6 v48 v_sub34;
(*   %add47.6 = add i64 %and46.6, %add43.6 *)
add v_add47_6 v_and46_6 v_add43_6;
(*   store i64 %add47.6, i64* %arrayidx5.6, align 8, !tbaa !3 *)
mov c_48 v_add47_6;
(*   ret void *)


(* Outputs *)

mov _ c_0@uint64;
mov _ c_8@uint64;
mov _ c_16@uint64;
mov _ c_24@uint64;
mov _ c_32@uint64;
mov _ c_40@uint64;
mov _ c_48@uint64;


{
  true
  &&
  true
}


proc main (uint64 mem0_0, uint64 mem0_8, uint64 mem0_16, uint64 mem0_24, uint64 mem0_32, uint64 mem1_0, uint64 mem1_8, uint64 mem1_16, uint64 mem1_24, uint64 mem1_32) =
{
  true
  &&
  and [
  	mem0_0 <=u (2**51-1)@64,
	mem0_8 <=u (2 * (2**51-1))@64,
  	mem0_16 <=u (2**51-1)@64,
  	mem0_24 <=u (2**51-1)@64,
  	mem0_32 <=u (2**51-1)@64,
  	mem1_0 <=u (2**51-1)@64,
	mem1_8 <=u (2 * (2**51-1))@64,
  	mem1_16 <=u (2**51-1)@64,
  	mem1_24 <=u (2**51-1)@64,
  	mem1_32 <=u (2**51-1)@64
  ]
}



(*   %0 = bitcast i64* %f1 to <2 x i64>* *)
(*   %1 = load <2 x i64>, <2 x i64>* %0, align 8, !tbaa !3 *)
mov v1_0 mem0_0;
mov v1_1 mem0_8;
(*   %2 = bitcast i64* %f2 to <2 x i64>* *)
(*   %3 = load <2 x i64>, <2 x i64>* %2, align 8, !tbaa !3 *)
mov v3_0 mem1_0;
mov v3_1 mem1_8;
(*   %arrayidx4 = getelementptr inbounds i64, i64* %f1, i64 2 *)
(*   %arrayidx5 = getelementptr inbounds i64, i64* %f2, i64 2 *)
(*   %4 = bitcast i64* %arrayidx4 to <2 x i64>* *)
(*   %5 = load <2 x i64>, <2 x i64>* %4, align 8, !tbaa !3 *)
mov v5_0 mem0_16;
mov v5_1 mem0_24;
(*   %6 = bitcast i64* %arrayidx5 to <2 x i64>* *)
(*   %7 = load <2 x i64>, <2 x i64>* %6, align 8, !tbaa !3 *)
mov v7_0 mem1_16;
mov v7_1 mem1_24;
(*   %arrayidx8 = getelementptr inbounds i64, i64* %f1, i64 4 *)
(*   %8 = load i64, i64* %arrayidx8, align 8, !tbaa !3 *)
mov v8 mem0_32;
(*   %arrayidx9 = getelementptr inbounds i64, i64* %f2, i64 4 *)
(*   %9 = load i64, i64* %arrayidx9, align 8, !tbaa !3 *)
mov v9 mem1_32;
(*   %10 = add <2 x i64> %1, <i64 18014398509481832, i64 18014398509481976> *)
add v10_0 v1_0 18014398509481832@uint64;
add v10_1 v1_1 18014398509481976@uint64;
(*   %11 = sub <2 x i64> %10, %3 *)
sub v11_0 v10_0 v3_0;
sub v11_1 v10_1 v3_1;
(*   %12 = bitcast i64* %out to <2 x i64>* *)
(*   store <2 x i64> %11, <2 x i64>* %12, align 8, !tbaa !3 *)
mov mem2_0 v11_0;
mov mem2_8 v11_1;
(*   %arrayidx16 = getelementptr inbounds i64, i64* %out, i64 2 *)
(*   %13 = add <2 x i64> %5, <i64 18014398509481976, i64 18014398509481976> *)
add v13_0 v5_0 18014398509481976@uint64;
add v13_1 v5_1 18014398509481976@uint64;
(*   %14 = sub <2 x i64> %13, %7 *)
sub v14_0 v13_0 v7_0;
sub v14_1 v13_1 v7_1;
(*   %15 = bitcast i64* %arrayidx16 to <2 x i64>* *)
(*   store <2 x i64> %14, <2 x i64>* %15, align 8, !tbaa !3 *)
mov mem2_16 v14_0;
mov mem2_24 v14_1;
(*   %add20 = add i64 %8, 18014398509481976 *)
add v_add20 v8 18014398509481976@uint64;
(*   %sub21 = sub i64 %add20, %9 *)
sub v_sub21 v_add20 v9;
(*   %arrayidx22 = getelementptr inbounds i64, i64* %out, i64 4 *)
(*   store i64 %sub21, i64* %arrayidx22, align 8, !tbaa !3 *)
mov mem2_32 v_sub21;
(*   ret void *)


{
  (limbs 51 [mem2_0, mem2_8, mem2_16, mem2_24, mem2_32])
  =
  (
  	(limbs 51 [mem0_0, mem0_8, mem0_16, mem0_24, mem0_32])
    -
    (limbs 51 [mem1_0, mem1_8, mem1_16, mem1_24, mem1_32])
  )
  (mod (2**255 - 19))
  &&
  and [
  	mem2_0 <=u (9 * (2**51-1))@64,
	mem2_8 <=u (10 * (2**51-1))@64,
  	mem2_16 <=u (9 * (2**51-1))@64,
  	mem2_24 <=u (9 * (2**51-1))@64,
  	mem2_32 <=u (9 * (2**51-1))@64
  ]
}


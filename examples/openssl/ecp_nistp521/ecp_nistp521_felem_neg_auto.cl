proc main (L0_56, L0_48, L0_40, L0_64, L0_0, L0_32, L0_24, L0_8, L0_16) =
{
  bveTrue
  |
  bvrTrue
}



(*  %0 = load i64, i64* %in, align 8, !tbaa !2 *)
bvAssign v0 (bvVar L0_0);
(*  %sub = sub i64 4611686018427387872, %0 *)
bvSub sub (bvConst 4611686018427387872) (bvVar v0);
(*  store i64 %sub, i64* %out, align 8, !tbaa !2 *)
bvAssign L1_0 (bvVar sub);
(*  %arrayidx2 = getelementptr inbounds i64, i64* %in, i64 1 *)
(*  %1 = load i64, i64* %arrayidx2, align 8, !tbaa !2 *)
bvAssign v1 (bvVar L0_8);
(*  %sub3 = sub i64 4611686018427387888, %1 *)
bvSub sub3 (bvConst 4611686018427387888) (bvVar v1);
(*  %arrayidx4 = getelementptr inbounds i64, i64* %out, i64 1 *)
(*  store i64 %sub3, i64* %arrayidx4, align 8, !tbaa !2 *)
bvAssign L1_8 (bvVar sub3);
(*  %arrayidx5 = getelementptr inbounds i64, i64* %in, i64 2 *)
(*  %2 = load i64, i64* %arrayidx5, align 8, !tbaa !2 *)
bvAssign v2 (bvVar L0_16);
(*  %sub6 = sub i64 4611686018427387888, %2 *)
bvSub sub6 (bvConst 4611686018427387888) (bvVar v2);
(*  %arrayidx7 = getelementptr inbounds i64, i64* %out, i64 2 *)
(*  store i64 %sub6, i64* %arrayidx7, align 8, !tbaa !2 *)
bvAssign L1_16 (bvVar sub6);
(*  %arrayidx8 = getelementptr inbounds i64, i64* %in, i64 3 *)
(*  %3 = load i64, i64* %arrayidx8, align 8, !tbaa !2 *)
bvAssign v3 (bvVar L0_24);
(*  %sub9 = sub i64 4611686018427387888, %3 *)
bvSub sub9 (bvConst 4611686018427387888) (bvVar v3);
(*  %arrayidx10 = getelementptr inbounds i64, i64* %out, i64 3 *)
(*  store i64 %sub9, i64* %arrayidx10, align 8, !tbaa !2 *)
bvAssign L1_24 (bvVar sub9);
(*  %arrayidx11 = getelementptr inbounds i64, i64* %in, i64 4 *)
(*  %4 = load i64, i64* %arrayidx11, align 8, !tbaa !2 *)
bvAssign v4 (bvVar L0_32);
(*  %sub12 = sub i64 4611686018427387888, %4 *)
bvSub sub12 (bvConst 4611686018427387888) (bvVar v4);
(*  %arrayidx13 = getelementptr inbounds i64, i64* %out, i64 4 *)
(*  store i64 %sub12, i64* %arrayidx13, align 8, !tbaa !2 *)
bvAssign L1_32 (bvVar sub12);
(*  %arrayidx14 = getelementptr inbounds i64, i64* %in, i64 5 *)
(*  %5 = load i64, i64* %arrayidx14, align 8, !tbaa !2 *)
bvAssign v5 (bvVar L0_40);
(*  %sub15 = sub i64 4611686018427387888, %5 *)
bvSub sub15 (bvConst 4611686018427387888) (bvVar v5);
(*  %arrayidx16 = getelementptr inbounds i64, i64* %out, i64 5 *)
(*  store i64 %sub15, i64* %arrayidx16, align 8, !tbaa !2 *)
bvAssign L1_40 (bvVar sub15);
(*  %arrayidx17 = getelementptr inbounds i64, i64* %in, i64 6 *)
(*  %6 = load i64, i64* %arrayidx17, align 8, !tbaa !2 *)
bvAssign v6 (bvVar L0_48);
(*  %sub18 = sub i64 4611686018427387888, %6 *)
bvSub sub18 (bvConst 4611686018427387888) (bvVar v6);
(*  %arrayidx19 = getelementptr inbounds i64, i64* %out, i64 6 *)
(*  store i64 %sub18, i64* %arrayidx19, align 8, !tbaa !2 *)
bvAssign L1_48 (bvVar sub18);
(*  %arrayidx20 = getelementptr inbounds i64, i64* %in, i64 7 *)
(*  %7 = load i64, i64* %arrayidx20, align 8, !tbaa !2 *)
bvAssign v7 (bvVar L0_56);
(*  %sub21 = sub i64 4611686018427387888, %7 *)
bvSub sub21 (bvConst 4611686018427387888) (bvVar v7);
(*  %arrayidx22 = getelementptr inbounds i64, i64* %out, i64 7 *)
(*  store i64 %sub21, i64* %arrayidx22, align 8, !tbaa !2 *)
bvAssign L1_56 (bvVar sub21);
(*  %arrayidx23 = getelementptr inbounds i64, i64* %in, i64 8 *)
(*  %8 = load i64, i64* %arrayidx23, align 8, !tbaa !2 *)
bvAssign v8 (bvVar L0_64);
(*  %sub24 = sub i64 4611686018427387888, %8 *)
bvSub sub24 (bvConst 4611686018427387888) (bvVar v8);
(*  %arrayidx25 = getelementptr inbounds i64, i64* %out, i64 8 *)
(*  store i64 %sub24, i64* %arrayidx25, align 8, !tbaa !2 *)
bvAssign L1_64 (bvVar sub24);
(*  ret void *)


{
  bveTrue
  |
  bvrTrue
}


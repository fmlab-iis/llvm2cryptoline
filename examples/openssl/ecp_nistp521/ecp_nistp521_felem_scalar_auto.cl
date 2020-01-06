proc main (L0_56, L0_48, L0_40, scalar, L0_24, L0_8, L0_16, L0_64, L0_32, L0_0) =
{
  bveTrue
  |
  bvrTrue
}



(*  %0 = load i64, i64* %in, align 8, !tbaa !2 *)
bvAssign v0 (bvVar L0_0);
(*  %mul = mul i64 %0, %scalar *)
bvMul mul (bvVar v0) (bvVar scalar);
(*  store i64 %mul, i64* %out, align 8, !tbaa !2 *)
bvAssign L1_0 (bvVar mul);
(*  %arrayidx2 = getelementptr inbounds i64, i64* %in, i64 1 *)
(*  %1 = load i64, i64* %arrayidx2, align 8, !tbaa !2 *)
bvAssign v1 (bvVar L0_8);
(*  %mul3 = mul i64 %1, %scalar *)
bvMul mul3 (bvVar v1) (bvVar scalar);
(*  %arrayidx4 = getelementptr inbounds i64, i64* %out, i64 1 *)
(*  store i64 %mul3, i64* %arrayidx4, align 8, !tbaa !2 *)
bvAssign L1_8 (bvVar mul3);
(*  %arrayidx5 = getelementptr inbounds i64, i64* %in, i64 2 *)
(*  %2 = load i64, i64* %arrayidx5, align 8, !tbaa !2 *)
bvAssign v2 (bvVar L0_16);
(*  %mul6 = mul i64 %2, %scalar *)
bvMul mul6 (bvVar v2) (bvVar scalar);
(*  %arrayidx7 = getelementptr inbounds i64, i64* %out, i64 2 *)
(*  store i64 %mul6, i64* %arrayidx7, align 8, !tbaa !2 *)
bvAssign L1_16 (bvVar mul6);
(*  %arrayidx8 = getelementptr inbounds i64, i64* %in, i64 3 *)
(*  %3 = load i64, i64* %arrayidx8, align 8, !tbaa !2 *)
bvAssign v3 (bvVar L0_24);
(*  %mul9 = mul i64 %3, %scalar *)
bvMul mul9 (bvVar v3) (bvVar scalar);
(*  %arrayidx10 = getelementptr inbounds i64, i64* %out, i64 3 *)
(*  store i64 %mul9, i64* %arrayidx10, align 8, !tbaa !2 *)
bvAssign L1_24 (bvVar mul9);
(*  %arrayidx11 = getelementptr inbounds i64, i64* %in, i64 4 *)
(*  %4 = load i64, i64* %arrayidx11, align 8, !tbaa !2 *)
bvAssign v4 (bvVar L0_32);
(*  %mul12 = mul i64 %4, %scalar *)
bvMul mul12 (bvVar v4) (bvVar scalar);
(*  %arrayidx13 = getelementptr inbounds i64, i64* %out, i64 4 *)
(*  store i64 %mul12, i64* %arrayidx13, align 8, !tbaa !2 *)
bvAssign L1_32 (bvVar mul12);
(*  %arrayidx14 = getelementptr inbounds i64, i64* %in, i64 5 *)
(*  %5 = load i64, i64* %arrayidx14, align 8, !tbaa !2 *)
bvAssign v5 (bvVar L0_40);
(*  %mul15 = mul i64 %5, %scalar *)
bvMul mul15 (bvVar v5) (bvVar scalar);
(*  %arrayidx16 = getelementptr inbounds i64, i64* %out, i64 5 *)
(*  store i64 %mul15, i64* %arrayidx16, align 8, !tbaa !2 *)
bvAssign L1_40 (bvVar mul15);
(*  %arrayidx17 = getelementptr inbounds i64, i64* %in, i64 6 *)
(*  %6 = load i64, i64* %arrayidx17, align 8, !tbaa !2 *)
bvAssign v6 (bvVar L0_48);
(*  %mul18 = mul i64 %6, %scalar *)
bvMul mul18 (bvVar v6) (bvVar scalar);
(*  %arrayidx19 = getelementptr inbounds i64, i64* %out, i64 6 *)
(*  store i64 %mul18, i64* %arrayidx19, align 8, !tbaa !2 *)
bvAssign L1_48 (bvVar mul18);
(*  %arrayidx20 = getelementptr inbounds i64, i64* %in, i64 7 *)
(*  %7 = load i64, i64* %arrayidx20, align 8, !tbaa !2 *)
bvAssign v7 (bvVar L0_56);
(*  %mul21 = mul i64 %7, %scalar *)
bvMul mul21 (bvVar v7) (bvVar scalar);
(*  %arrayidx22 = getelementptr inbounds i64, i64* %out, i64 7 *)
(*  store i64 %mul21, i64* %arrayidx22, align 8, !tbaa !2 *)
bvAssign L1_56 (bvVar mul21);
(*  %arrayidx23 = getelementptr inbounds i64, i64* %in, i64 8 *)
(*  %8 = load i64, i64* %arrayidx23, align 8, !tbaa !2 *)
bvAssign v8 (bvVar L0_64);
(*  %mul24 = mul i64 %8, %scalar *)
bvMul mul24 (bvVar v8) (bvVar scalar);
(*  %arrayidx25 = getelementptr inbounds i64, i64* %out, i64 8 *)
(*  store i64 %mul24, i64* %arrayidx25, align 8, !tbaa !2 *)
bvAssign L1_64 (bvVar mul24);
(*  ret void *)


{
  bveTrue
  |
  bvrTrue
}


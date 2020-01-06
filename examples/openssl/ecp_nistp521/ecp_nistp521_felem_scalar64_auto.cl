proc main (L0_56, L0_48, L0_40, scalar, L0_24, L0_8, L0_16, L0_64, L0_32, L0_0) =
{
  bveTrue
  |
  bvrTrue
}



(*  %0 = load i64, i64* %out, align 8, !tbaa !2 *)
bvAssign v0 (bvVar L0_0);
(*  %mul = mul i64 %0, %scalar *)
bvMul mul (bvVar v0) (bvVar scalar);
(*  store i64 %mul, i64* %out, align 8, !tbaa !2 *)
bvAssign L0_0 (bvVar mul);
(*  %arrayidx1 = getelementptr inbounds i64, i64* %out, i64 1 *)
(*  %1 = load i64, i64* %arrayidx1, align 8, !tbaa !2 *)
bvAssign v1 (bvVar L0_8);
(*  %mul2 = mul i64 %1, %scalar *)
bvMul mul2 (bvVar v1) (bvVar scalar);
(*  store i64 %mul2, i64* %arrayidx1, align 8, !tbaa !2 *)
bvAssign L0_8 (bvVar mul2);
(*  %arrayidx3 = getelementptr inbounds i64, i64* %out, i64 2 *)
(*  %2 = load i64, i64* %arrayidx3, align 8, !tbaa !2 *)
bvAssign v2 (bvVar L0_16);
(*  %mul4 = mul i64 %2, %scalar *)
bvMul mul4 (bvVar v2) (bvVar scalar);
(*  store i64 %mul4, i64* %arrayidx3, align 8, !tbaa !2 *)
bvAssign L0_16 (bvVar mul4);
(*  %arrayidx5 = getelementptr inbounds i64, i64* %out, i64 3 *)
(*  %3 = load i64, i64* %arrayidx5, align 8, !tbaa !2 *)
bvAssign v3 (bvVar L0_24);
(*  %mul6 = mul i64 %3, %scalar *)
bvMul mul6 (bvVar v3) (bvVar scalar);
(*  store i64 %mul6, i64* %arrayidx5, align 8, !tbaa !2 *)
bvAssign L0_24 (bvVar mul6);
(*  %arrayidx7 = getelementptr inbounds i64, i64* %out, i64 4 *)
(*  %4 = load i64, i64* %arrayidx7, align 8, !tbaa !2 *)
bvAssign v4 (bvVar L0_32);
(*  %mul8 = mul i64 %4, %scalar *)
bvMul mul8 (bvVar v4) (bvVar scalar);
(*  store i64 %mul8, i64* %arrayidx7, align 8, !tbaa !2 *)
bvAssign L0_32 (bvVar mul8);
(*  %arrayidx9 = getelementptr inbounds i64, i64* %out, i64 5 *)
(*  %5 = load i64, i64* %arrayidx9, align 8, !tbaa !2 *)
bvAssign v5 (bvVar L0_40);
(*  %mul10 = mul i64 %5, %scalar *)
bvMul mul10 (bvVar v5) (bvVar scalar);
(*  store i64 %mul10, i64* %arrayidx9, align 8, !tbaa !2 *)
bvAssign L0_40 (bvVar mul10);
(*  %arrayidx11 = getelementptr inbounds i64, i64* %out, i64 6 *)
(*  %6 = load i64, i64* %arrayidx11, align 8, !tbaa !2 *)
bvAssign v6 (bvVar L0_48);
(*  %mul12 = mul i64 %6, %scalar *)
bvMul mul12 (bvVar v6) (bvVar scalar);
(*  store i64 %mul12, i64* %arrayidx11, align 8, !tbaa !2 *)
bvAssign L0_48 (bvVar mul12);
(*  %arrayidx13 = getelementptr inbounds i64, i64* %out, i64 7 *)
(*  %7 = load i64, i64* %arrayidx13, align 8, !tbaa !2 *)
bvAssign v7 (bvVar L0_56);
(*  %mul14 = mul i64 %7, %scalar *)
bvMul mul14 (bvVar v7) (bvVar scalar);
(*  store i64 %mul14, i64* %arrayidx13, align 8, !tbaa !2 *)
bvAssign L0_56 (bvVar mul14);
(*  %arrayidx15 = getelementptr inbounds i64, i64* %out, i64 8 *)
(*  %8 = load i64, i64* %arrayidx15, align 8, !tbaa !2 *)
bvAssign v8 (bvVar L0_64);
(*  %mul16 = mul i64 %8, %scalar *)
bvMul mul16 (bvVar v8) (bvVar scalar);
(*  store i64 %mul16, i64* %arrayidx15, align 8, !tbaa !2 *)
bvAssign L0_64 (bvVar mul16);
(*  ret void *)


{
  bveTrue
  |
  bvrTrue
}


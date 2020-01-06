proc main (L0_24, L0_8, scalar, L0_16, L0_0) =
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
(*  ret void *)


{
  bveTrue
  |
  bvrTrue
}


proc main (L1_24, L1_16, L1_8, L0_8, L0_24, L1_0, L0_16, L0_0) =
{
  bveTrue
  |
  bvrTrue
}



(*  %0 = load i64, i64* %in, align 8, !tbaa !2 *)
bvAssign v0 (bvVar L0_0);
(*  %1 = load i64, i64* %out, align 8, !tbaa !2 *)
bvAssign v1 (bvVar L1_0);
(*  %add = add i64 %1, %0 *)
bvAdd add (bvVar v1) (bvVar v0);
(*  store i64 %add, i64* %out, align 8, !tbaa !2 *)
bvAssign L1_0 (bvVar add);
(*  %arrayidx2 = getelementptr inbounds i64, i64* %in, i64 1 *)
(*  %2 = load i64, i64* %arrayidx2, align 8, !tbaa !2 *)
bvAssign v2 (bvVar L0_8);
(*  %arrayidx3 = getelementptr inbounds i64, i64* %out, i64 1 *)
(*  %3 = load i64, i64* %arrayidx3, align 8, !tbaa !2 *)
bvAssign v3 (bvVar L1_8);
(*  %add4 = add i64 %3, %2 *)
bvAdd add4 (bvVar v3) (bvVar v2);
(*  store i64 %add4, i64* %arrayidx3, align 8, !tbaa !2 *)
bvAssign L1_8 (bvVar add4);
(*  %arrayidx5 = getelementptr inbounds i64, i64* %in, i64 2 *)
(*  %4 = load i64, i64* %arrayidx5, align 8, !tbaa !2 *)
bvAssign v4 (bvVar L0_16);
(*  %arrayidx6 = getelementptr inbounds i64, i64* %out, i64 2 *)
(*  %5 = load i64, i64* %arrayidx6, align 8, !tbaa !2 *)
bvAssign v5 (bvVar L1_16);
(*  %add7 = add i64 %5, %4 *)
bvAdd add7 (bvVar v5) (bvVar v4);
(*  store i64 %add7, i64* %arrayidx6, align 8, !tbaa !2 *)
bvAssign L1_16 (bvVar add7);
(*  %arrayidx8 = getelementptr inbounds i64, i64* %in, i64 3 *)
(*  %6 = load i64, i64* %arrayidx8, align 8, !tbaa !2 *)
bvAssign v6 (bvVar L0_24);
(*  %arrayidx9 = getelementptr inbounds i64, i64* %out, i64 3 *)
(*  %7 = load i64, i64* %arrayidx9, align 8, !tbaa !2 *)
bvAssign v7 (bvVar L1_24);
(*  %add10 = add i64 %7, %6 *)
bvAdd add10 (bvVar v7) (bvVar v6);
(*  store i64 %add10, i64* %arrayidx9, align 8, !tbaa !2 *)
bvAssign L1_24 (bvVar add10);
(*  ret void *)


{
  bveTrue
  |
  bvrTrue
}


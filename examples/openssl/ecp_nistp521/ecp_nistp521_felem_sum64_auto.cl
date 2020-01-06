proc main (L0_64, L1_48, L0_48, L1_64, L0_40, L1_40, L1_32, L1_56, L1_0, L1_24, L1_16, L1_8, L0_8, L0_24, L0_16, L0_56, L0_32, L0_0) =
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
(*  %arrayidx11 = getelementptr inbounds i64, i64* %in, i64 4 *)
(*  %8 = load i64, i64* %arrayidx11, align 8, !tbaa !2 *)
bvAssign v8 (bvVar L0_32);
(*  %arrayidx12 = getelementptr inbounds i64, i64* %out, i64 4 *)
(*  %9 = load i64, i64* %arrayidx12, align 8, !tbaa !2 *)
bvAssign v9 (bvVar L1_32);
(*  %add13 = add i64 %9, %8 *)
bvAdd add13 (bvVar v9) (bvVar v8);
(*  store i64 %add13, i64* %arrayidx12, align 8, !tbaa !2 *)
bvAssign L1_32 (bvVar add13);
(*  %arrayidx14 = getelementptr inbounds i64, i64* %in, i64 5 *)
(*  %10 = load i64, i64* %arrayidx14, align 8, !tbaa !2 *)
bvAssign v10 (bvVar L0_40);
(*  %arrayidx15 = getelementptr inbounds i64, i64* %out, i64 5 *)
(*  %11 = load i64, i64* %arrayidx15, align 8, !tbaa !2 *)
bvAssign v11 (bvVar L1_40);
(*  %add16 = add i64 %11, %10 *)
bvAdd add16 (bvVar v11) (bvVar v10);
(*  store i64 %add16, i64* %arrayidx15, align 8, !tbaa !2 *)
bvAssign L1_40 (bvVar add16);
(*  %arrayidx17 = getelementptr inbounds i64, i64* %in, i64 6 *)
(*  %12 = load i64, i64* %arrayidx17, align 8, !tbaa !2 *)
bvAssign v12 (bvVar L0_48);
(*  %arrayidx18 = getelementptr inbounds i64, i64* %out, i64 6 *)
(*  %13 = load i64, i64* %arrayidx18, align 8, !tbaa !2 *)
bvAssign v13 (bvVar L1_48);
(*  %add19 = add i64 %13, %12 *)
bvAdd add19 (bvVar v13) (bvVar v12);
(*  store i64 %add19, i64* %arrayidx18, align 8, !tbaa !2 *)
bvAssign L1_48 (bvVar add19);
(*  %arrayidx20 = getelementptr inbounds i64, i64* %in, i64 7 *)
(*  %14 = load i64, i64* %arrayidx20, align 8, !tbaa !2 *)
bvAssign v14 (bvVar L0_56);
(*  %arrayidx21 = getelementptr inbounds i64, i64* %out, i64 7 *)
(*  %15 = load i64, i64* %arrayidx21, align 8, !tbaa !2 *)
bvAssign v15 (bvVar L1_56);
(*  %add22 = add i64 %15, %14 *)
bvAdd add22 (bvVar v15) (bvVar v14);
(*  store i64 %add22, i64* %arrayidx21, align 8, !tbaa !2 *)
bvAssign L1_56 (bvVar add22);
(*  %arrayidx23 = getelementptr inbounds i64, i64* %in, i64 8 *)
(*  %16 = load i64, i64* %arrayidx23, align 8, !tbaa !2 *)
bvAssign v16 (bvVar L0_64);
(*  %arrayidx24 = getelementptr inbounds i64, i64* %out, i64 8 *)
(*  %17 = load i64, i64* %arrayidx24, align 8, !tbaa !2 *)
bvAssign v17 (bvVar L1_64);
(*  %add25 = add i64 %17, %16 *)
bvAdd add25 (bvVar v17) (bvVar v16);
(*  store i64 %add25, i64* %arrayidx24, align 8, !tbaa !2 *)
bvAssign L1_64 (bvVar add25);
(*  ret void *)


{
  bveTrue
  |
  bvrTrue
}


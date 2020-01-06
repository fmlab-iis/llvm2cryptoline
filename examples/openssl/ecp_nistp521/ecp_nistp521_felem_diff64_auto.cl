proc main (L0_64, L1_48, L0_48, L1_64, L0_40, L1_40, L1_32, L1_56, L1_0, L1_24, L1_16, L1_8, L0_8, L0_24, L0_16, L0_56, L0_32, L0_0) =
{
  bveTrue
  |
  bvrTrue
}



(*  %0 = load i64, i64* %in, align 8, !tbaa !2 *)
bvAssign v0 (bvVar L0_0);
(*  %sub = sub i64 4611686018427387872, %0 *)
bvSub sub (bvConst 4611686018427387872) (bvVar v0);
(*  %1 = load i64, i64* %out, align 8, !tbaa !2 *)
bvAssign v1 (bvVar L1_0);
(*  %add = add i64 %sub, %1 *)
bvAdd add (bvVar sub) (bvVar v1);
(*  store i64 %add, i64* %out, align 8, !tbaa !2 *)
bvAssign L1_0 (bvVar add);
(*  %arrayidx2 = getelementptr inbounds i64, i64* %in, i64 1 *)
(*  %2 = load i64, i64* %arrayidx2, align 8, !tbaa !2 *)
bvAssign v2 (bvVar L0_8);
(*  %sub3 = sub i64 4611686018427387888, %2 *)
bvSub sub3 (bvConst 4611686018427387888) (bvVar v2);
(*  %arrayidx4 = getelementptr inbounds i64, i64* %out, i64 1 *)
(*  %3 = load i64, i64* %arrayidx4, align 8, !tbaa !2 *)
bvAssign v3 (bvVar L1_8);
(*  %add5 = add i64 %sub3, %3 *)
bvAdd add5 (bvVar sub3) (bvVar v3);
(*  store i64 %add5, i64* %arrayidx4, align 8, !tbaa !2 *)
bvAssign L1_8 (bvVar add5);
(*  %arrayidx6 = getelementptr inbounds i64, i64* %in, i64 2 *)
(*  %4 = load i64, i64* %arrayidx6, align 8, !tbaa !2 *)
bvAssign v4 (bvVar L0_16);
(*  %sub7 = sub i64 4611686018427387888, %4 *)
bvSub sub7 (bvConst 4611686018427387888) (bvVar v4);
(*  %arrayidx8 = getelementptr inbounds i64, i64* %out, i64 2 *)
(*  %5 = load i64, i64* %arrayidx8, align 8, !tbaa !2 *)
bvAssign v5 (bvVar L1_16);
(*  %add9 = add i64 %sub7, %5 *)
bvAdd add9 (bvVar sub7) (bvVar v5);
(*  store i64 %add9, i64* %arrayidx8, align 8, !tbaa !2 *)
bvAssign L1_16 (bvVar add9);
(*  %arrayidx10 = getelementptr inbounds i64, i64* %in, i64 3 *)
(*  %6 = load i64, i64* %arrayidx10, align 8, !tbaa !2 *)
bvAssign v6 (bvVar L0_24);
(*  %sub11 = sub i64 4611686018427387888, %6 *)
bvSub sub11 (bvConst 4611686018427387888) (bvVar v6);
(*  %arrayidx12 = getelementptr inbounds i64, i64* %out, i64 3 *)
(*  %7 = load i64, i64* %arrayidx12, align 8, !tbaa !2 *)
bvAssign v7 (bvVar L1_24);
(*  %add13 = add i64 %sub11, %7 *)
bvAdd add13 (bvVar sub11) (bvVar v7);
(*  store i64 %add13, i64* %arrayidx12, align 8, !tbaa !2 *)
bvAssign L1_24 (bvVar add13);
(*  %arrayidx14 = getelementptr inbounds i64, i64* %in, i64 4 *)
(*  %8 = load i64, i64* %arrayidx14, align 8, !tbaa !2 *)
bvAssign v8 (bvVar L0_32);
(*  %sub15 = sub i64 4611686018427387888, %8 *)
bvSub sub15 (bvConst 4611686018427387888) (bvVar v8);
(*  %arrayidx16 = getelementptr inbounds i64, i64* %out, i64 4 *)
(*  %9 = load i64, i64* %arrayidx16, align 8, !tbaa !2 *)
bvAssign v9 (bvVar L1_32);
(*  %add17 = add i64 %sub15, %9 *)
bvAdd add17 (bvVar sub15) (bvVar v9);
(*  store i64 %add17, i64* %arrayidx16, align 8, !tbaa !2 *)
bvAssign L1_32 (bvVar add17);
(*  %arrayidx18 = getelementptr inbounds i64, i64* %in, i64 5 *)
(*  %10 = load i64, i64* %arrayidx18, align 8, !tbaa !2 *)
bvAssign v10 (bvVar L0_40);
(*  %sub19 = sub i64 4611686018427387888, %10 *)
bvSub sub19 (bvConst 4611686018427387888) (bvVar v10);
(*  %arrayidx20 = getelementptr inbounds i64, i64* %out, i64 5 *)
(*  %11 = load i64, i64* %arrayidx20, align 8, !tbaa !2 *)
bvAssign v11 (bvVar L1_40);
(*  %add21 = add i64 %sub19, %11 *)
bvAdd add21 (bvVar sub19) (bvVar v11);
(*  store i64 %add21, i64* %arrayidx20, align 8, !tbaa !2 *)
bvAssign L1_40 (bvVar add21);
(*  %arrayidx22 = getelementptr inbounds i64, i64* %in, i64 6 *)
(*  %12 = load i64, i64* %arrayidx22, align 8, !tbaa !2 *)
bvAssign v12 (bvVar L0_48);
(*  %sub23 = sub i64 4611686018427387888, %12 *)
bvSub sub23 (bvConst 4611686018427387888) (bvVar v12);
(*  %arrayidx24 = getelementptr inbounds i64, i64* %out, i64 6 *)
(*  %13 = load i64, i64* %arrayidx24, align 8, !tbaa !2 *)
bvAssign v13 (bvVar L1_48);
(*  %add25 = add i64 %sub23, %13 *)
bvAdd add25 (bvVar sub23) (bvVar v13);
(*  store i64 %add25, i64* %arrayidx24, align 8, !tbaa !2 *)
bvAssign L1_48 (bvVar add25);
(*  %arrayidx26 = getelementptr inbounds i64, i64* %in, i64 7 *)
(*  %14 = load i64, i64* %arrayidx26, align 8, !tbaa !2 *)
bvAssign v14 (bvVar L0_56);
(*  %sub27 = sub i64 4611686018427387888, %14 *)
bvSub sub27 (bvConst 4611686018427387888) (bvVar v14);
(*  %arrayidx28 = getelementptr inbounds i64, i64* %out, i64 7 *)
(*  %15 = load i64, i64* %arrayidx28, align 8, !tbaa !2 *)
bvAssign v15 (bvVar L1_56);
(*  %add29 = add i64 %sub27, %15 *)
bvAdd add29 (bvVar sub27) (bvVar v15);
(*  store i64 %add29, i64* %arrayidx28, align 8, !tbaa !2 *)
bvAssign L1_56 (bvVar add29);
(*  %arrayidx30 = getelementptr inbounds i64, i64* %in, i64 8 *)
(*  %16 = load i64, i64* %arrayidx30, align 8, !tbaa !2 *)
bvAssign v16 (bvVar L0_64);
(*  %sub31 = sub i64 4611686018427387888, %16 *)
bvSub sub31 (bvConst 4611686018427387888) (bvVar v16);
(*  %arrayidx32 = getelementptr inbounds i64, i64* %out, i64 8 *)
(*  %17 = load i64, i64* %arrayidx32, align 8, !tbaa !2 *)
bvAssign v17 (bvVar L1_64);
(*  %add33 = add i64 %sub31, %17 *)
bvAdd add33 (bvVar sub31) (bvVar v17);
(*  store i64 %add33, i64* %arrayidx32, align 8, !tbaa !2 *)
bvAssign L1_64 (bvVar add33);
(*  ret void *)


{
  bveTrue
  |
  bvrTrue
}


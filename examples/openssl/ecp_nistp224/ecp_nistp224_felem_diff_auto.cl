proc main (L1_24, L1_16, L1_8, L1_0, L0_24, L0_8, L0_16, L0_0) =
{
  bveTrue
  |
  bvrTrue
}



(*  %0 = load i64, i64* %out, align 8, !tbaa !2 *)
bvAssign v0 (bvVar L0_0);
(*  %add = add i64 %0, 288230376151711748 *)
bvAdd add (bvVar v0) (bvConst 288230376151711748);
(*  store i64 %add, i64* %out, align 8, !tbaa !2 *)
bvAssign L0_0 (bvVar add);
(*  %arrayidx1 = getelementptr inbounds i64, i64* %out, i64 1 *)
(*  %1 = load i64, i64* %arrayidx1, align 8, !tbaa !2 *)
bvAssign v1 (bvVar L0_8);
(*  %add2 = add i64 %1, 288225978105200636 *)
bvAdd add2 (bvVar v1) (bvConst 288225978105200636);
(*  store i64 %add2, i64* %arrayidx1, align 8, !tbaa !2 *)
bvAssign L0_8 (bvVar add2);
(*  %arrayidx3 = getelementptr inbounds i64, i64* %out, i64 2 *)
(*  %2 = load i64, i64* %arrayidx3, align 8, !tbaa !2 *)
bvAssign v2 (bvVar L0_16);
(*  %add4 = add i64 %2, 288230376151711740 *)
bvAdd add4 (bvVar v2) (bvConst 288230376151711740);
(*  store i64 %add4, i64* %arrayidx3, align 8, !tbaa !2 *)
bvAssign L0_16 (bvVar add4);
(*  %arrayidx5 = getelementptr inbounds i64, i64* %out, i64 3 *)
(*  %3 = load i64, i64* %arrayidx5, align 8, !tbaa !2 *)
bvAssign v3 (bvVar L0_24);
(*  %add6 = add i64 %3, 288230376151711740 *)
bvAdd add6 (bvVar v3) (bvConst 288230376151711740);
(*  store i64 %add6, i64* %arrayidx5, align 8, !tbaa !2 *)
bvAssign L0_24 (bvVar add6);
(*  %4 = load i64, i64* %in, align 8, !tbaa !2 *)
bvAssign v4 (bvVar L1_0);
(*  %sub = sub i64 %add, %4 *)
bvSub sub (bvVar add) (bvVar v4);
(*  store i64 %sub, i64* %out, align 8, !tbaa !2 *)
bvAssign L0_0 (bvVar sub);
(*  %arrayidx9 = getelementptr inbounds i64, i64* %in, i64 1 *)
(*  %5 = load i64, i64* %arrayidx9, align 8, !tbaa !2 *)
bvAssign v5 (bvVar L1_8);
(*  %sub11 = sub i64 %add2, %5 *)
bvSub sub11 (bvVar add2) (bvVar v5);
(*  store i64 %sub11, i64* %arrayidx1, align 8, !tbaa !2 *)
bvAssign L0_8 (bvVar sub11);
(*  %arrayidx12 = getelementptr inbounds i64, i64* %in, i64 2 *)
(*  %6 = load i64, i64* %arrayidx12, align 8, !tbaa !2 *)
bvAssign v6 (bvVar L1_16);
(*  %sub14 = sub i64 %add4, %6 *)
bvSub sub14 (bvVar add4) (bvVar v6);
(*  store i64 %sub14, i64* %arrayidx3, align 8, !tbaa !2 *)
bvAssign L0_16 (bvVar sub14);
(*  %arrayidx15 = getelementptr inbounds i64, i64* %in, i64 3 *)
(*  %7 = load i64, i64* %arrayidx15, align 8, !tbaa !2 *)
bvAssign v7 (bvVar L1_24);
(*  %sub17 = sub i64 %add6, %7 *)
bvSub sub17 (bvVar add6) (bvVar v7);
(*  store i64 %sub17, i64* %arrayidx5, align 8, !tbaa !2 *)
bvAssign L0_24 (bvVar sub17);
(*  ret void *)


{
  bveTrue
  |
  bvrTrue
}


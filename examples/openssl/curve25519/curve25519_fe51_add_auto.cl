(*  %0 = load i64, i64* %f, align 8, !tbaa !2 *)
bvAssign v0 (bvVar L0_0);
(*  %1 = load i64, i64* %g, align 8, !tbaa !2 *)
bvAssign v1 (bvVar L1_0);
(*  %add = add i64 %1, %0 *)
bvAdd add (bvVar v1) (bvVar v0);
(*  store i64 %add, i64* %h, align 8, !tbaa !2 *)
bvAssign L2_0 (bvVar add);
(*  %arrayidx3 = getelementptr inbounds i64, i64* %f, i64 1 *)
(*  %2 = load i64, i64* %arrayidx3, align 8, !tbaa !2 *)
bvAssign v2 (bvVar L0_8);
(*  %arrayidx4 = getelementptr inbounds i64, i64* %g, i64 1 *)
(*  %3 = load i64, i64* %arrayidx4, align 8, !tbaa !2 *)
bvAssign v3 (bvVar L1_8);
(*  %add5 = add i64 %3, %2 *)
bvAdd add5 (bvVar v3) (bvVar v2);
(*  %arrayidx6 = getelementptr inbounds i64, i64* %h, i64 1 *)
(*  store i64 %add5, i64* %arrayidx6, align 8, !tbaa !2 *)
bvAssign L2_8 (bvVar add5);
(*  %arrayidx7 = getelementptr inbounds i64, i64* %f, i64 2 *)
(*  %4 = load i64, i64* %arrayidx7, align 8, !tbaa !2 *)
bvAssign v4 (bvVar L0_16);
(*  %arrayidx8 = getelementptr inbounds i64, i64* %g, i64 2 *)
(*  %5 = load i64, i64* %arrayidx8, align 8, !tbaa !2 *)
bvAssign v5 (bvVar L1_16);
(*  %add9 = add i64 %5, %4 *)
bvAdd add9 (bvVar v5) (bvVar v4);
(*  %arrayidx10 = getelementptr inbounds i64, i64* %h, i64 2 *)
(*  store i64 %add9, i64* %arrayidx10, align 8, !tbaa !2 *)
bvAssign L2_16 (bvVar add9);
(*  %arrayidx11 = getelementptr inbounds i64, i64* %f, i64 3 *)
(*  %6 = load i64, i64* %arrayidx11, align 8, !tbaa !2 *)
bvAssign v6 (bvVar L0_24);
(*  %arrayidx12 = getelementptr inbounds i64, i64* %g, i64 3 *)
(*  %7 = load i64, i64* %arrayidx12, align 8, !tbaa !2 *)
bvAssign v7 (bvVar L1_24);
(*  %add13 = add i64 %7, %6 *)
bvAdd add13 (bvVar v7) (bvVar v6);
(*  %arrayidx14 = getelementptr inbounds i64, i64* %h, i64 3 *)
(*  store i64 %add13, i64* %arrayidx14, align 8, !tbaa !2 *)
bvAssign L2_24 (bvVar add13);
(*  %arrayidx15 = getelementptr inbounds i64, i64* %f, i64 4 *)
(*  %8 = load i64, i64* %arrayidx15, align 8, !tbaa !2 *)
bvAssign v8 (bvVar L0_32);
(*  %arrayidx16 = getelementptr inbounds i64, i64* %g, i64 4 *)
(*  %9 = load i64, i64* %arrayidx16, align 8, !tbaa !2 *)
bvAssign v9 (bvVar L1_32);
(*  %add17 = add i64 %9, %8 *)
bvAdd add17 (bvVar v9) (bvVar v8);
(*  %arrayidx18 = getelementptr inbounds i64, i64* %h, i64 4 *)
(*  store i64 %add17, i64* %arrayidx18, align 8, !tbaa !2 *)
bvAssign L2_32 (bvVar add17);
(*  ret void *)

proc main (a0, a1, a2, a3, a4, b0, b1, b2, b3, b4) =
{
  bveTrue
  |
  bvrands
  [
    bvvar a0 < bvconst 64 (2^51),
    bvvar a1 < bvconst 64 (2^51),
    bvvar a2 < bvconst 64 (2^51),
    bvvar a3 < bvconst 64 (2^51),
    bvvar a4 < bvconst 64 (2^51),
    bvvar b0 < bvconst 64 (2^51),
    bvvar b1 < bvconst 64 (2^51),
    bvvar b2 < bvconst 64 (2^51),
    bvvar b3 < bvconst 64 (2^51),
    bvvar b4 < bvconst 64 (2^51)
  ]
}

bvAssign L0_0 (bvVar a0);
bvAssign L0_8 (bvVar a1);
bvAssign L0_16 (bvVar a2);
bvAssign L0_24 (bvVar a3);
bvAssign L0_32 (bvVar a4);
bvAssign L1_0 (bvVar b0);
bvAssign L1_8 (bvVar b1);
bvAssign L1_16 (bvVar b2);
bvAssign L1_24 (bvVar b3);
bvAssign L1_32 (bvVar b4);


(*  %0 = load i64, i64* %f, align 8, !tbaa !2 *)
bvAssign v0 (bvVar L0_0);
(*  %add = add i64 %0, 4503599627370458 *)
bvAdd add (bvVar v0) (bvConst 4503599627370458);
(*  %1 = load i64, i64* %g, align 8, !tbaa !2 *)
bvAssign v1 (bvVar L1_0);
(*  %sub = sub i64 %add, %1 *)
bvSub sub (bvVar add) (bvVar v1);
(*  store i64 %sub, i64* %h, align 8, !tbaa !2 *)
bvAssign L2_0 (bvVar sub);
(*  %arrayidx3 = getelementptr inbounds i64, i64* %f, i64 1 *)
(*  %2 = load i64, i64* %arrayidx3, align 8, !tbaa !2 *)
bvAssign v2 (bvVar L0_8);
(*  %add4 = add i64 %2, 4503599627370494 *)
bvAdd add4 (bvVar v2) (bvConst 4503599627370494);
(*  %arrayidx5 = getelementptr inbounds i64, i64* %g, i64 1 *)
(*  %3 = load i64, i64* %arrayidx5, align 8, !tbaa !2 *)
bvAssign v3 (bvVar L1_8);
(*  %sub6 = sub i64 %add4, %3 *)
bvSub sub6 (bvVar add4) (bvVar v3);
(*  %arrayidx7 = getelementptr inbounds i64, i64* %h, i64 1 *)
(*  store i64 %sub6, i64* %arrayidx7, align 8, !tbaa !2 *)
bvAssign L2_8 (bvVar sub6);
(*  %arrayidx8 = getelementptr inbounds i64, i64* %f, i64 2 *)
(*  %4 = load i64, i64* %arrayidx8, align 8, !tbaa !2 *)
bvAssign v4 (bvVar L0_16);
(*  %add9 = add i64 %4, 4503599627370494 *)
bvAdd add9 (bvVar v4) (bvConst 4503599627370494);
(*  %arrayidx10 = getelementptr inbounds i64, i64* %g, i64 2 *)
(*  %5 = load i64, i64* %arrayidx10, align 8, !tbaa !2 *)
bvAssign v5 (bvVar L1_16);
(*  %sub11 = sub i64 %add9, %5 *)
bvSub sub11 (bvVar add9) (bvVar v5);
(*  %arrayidx12 = getelementptr inbounds i64, i64* %h, i64 2 *)
(*  store i64 %sub11, i64* %arrayidx12, align 8, !tbaa !2 *)
bvAssign L2_16 (bvVar sub11);
(*  %arrayidx13 = getelementptr inbounds i64, i64* %f, i64 3 *)
(*  %6 = load i64, i64* %arrayidx13, align 8, !tbaa !2 *)
bvAssign v6 (bvVar L0_24);
(*  %add14 = add i64 %6, 4503599627370494 *)
bvAdd add14 (bvVar v6) (bvConst 4503599627370494);
(*  %arrayidx15 = getelementptr inbounds i64, i64* %g, i64 3 *)
(*  %7 = load i64, i64* %arrayidx15, align 8, !tbaa !2 *)
bvAssign v7 (bvVar L1_24);
(*  %sub16 = sub i64 %add14, %7 *)
bvSub sub16 (bvVar add14) (bvVar v7);
(*  %arrayidx17 = getelementptr inbounds i64, i64* %h, i64 3 *)
(*  store i64 %sub16, i64* %arrayidx17, align 8, !tbaa !2 *)
bvAssign L2_24 (bvVar sub16);
(*  %arrayidx18 = getelementptr inbounds i64, i64* %f, i64 4 *)
(*  %8 = load i64, i64* %arrayidx18, align 8, !tbaa !2 *)
bvAssign v8 (bvVar L0_32);
(*  %add19 = add i64 %8, 4503599627370494 *)
bvAdd add19 (bvVar v8) (bvConst 4503599627370494);
(*  %arrayidx20 = getelementptr inbounds i64, i64* %g, i64 4 *)
(*  %9 = load i64, i64* %arrayidx20, align 8, !tbaa !2 *)
bvAssign v9 (bvVar L1_32);
(*  %sub21 = sub i64 %add19, %9 *)
bvSub sub21 (bvVar add19) (bvVar v9);
(*  %arrayidx22 = getelementptr inbounds i64, i64* %h, i64 4 *)
(*  store i64 %sub21, i64* %arrayidx22, align 8, !tbaa !2 *)
bvAssign L2_32 (bvVar sub21);
(*  ret void *)



bvAssign c0 (bvVar L2_0);
bvAssign c1 (bvVar L2_8);
bvAssign c2 (bvVar L2_16);
bvAssign c3 (bvVar L2_24);
bvAssign c4 (bvVar L2_32);


{
  bveEqMod
    (limbs 51 [bvvar c0, bvvar c1, bvvar c2, bvvar c3, bvvar c4])

    (
      (limbs 51 [bvvar a0, bvvar a1, bvvar a2, bvvar a3, bvvar a4])
      -
      (limbs 51 [bvvar b0, bvvar b1, bvvar b2, bvvar b3, bvvar b4])
    )

    (
      (limbs 255 [bvconst 0, bvconst 1])
      -
      (bvconst 19)
    )
  |
  bvrTrue
}


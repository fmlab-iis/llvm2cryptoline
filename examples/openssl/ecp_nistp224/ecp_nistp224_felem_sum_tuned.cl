(* -v -btor -isafety
Parsing Cryptoline file:		[OK]		0.000628 seconds
Checking well-formedness:		[OK]		0.000127 seconds
Transforming to SSA form:		[OK]		0.000080 seconds
Rewriting assignments:			[OK]		0.000030 seconds
Verifying program safety:		[OK]		0.268038 seconds
Verifying range specification:		[OK]		0.224753 seconds
Verifying algebraic specification:	[OK]		0.070301 seconds
Verification result:			[OK]		0.564292 seconds
*)

proc main (L0_0, L0_8, L0_16, L0_24, L1_0, L1_8, L1_16, L1_24) =
{
  bveTrue
  |
  bvands [
    bvvar L0_0 < bvconst 64 (2^57),
    bvvar L0_8 < bvconst 64 (2^57),
    bvvar L0_16 < bvconst 64 (2^57),
    bvvar L0_24 < bvconst 64 (2^57),
    bvvar L1_0 < bvconst 64 (2^57),
    bvvar L1_8 < bvconst 64 (2^57),
    bvvar L1_16 < bvconst 64 (2^57),
    bvvar L1_24 < bvconst 64 (2^57)
  ]
}

bvGhost a0, a1, a2, a3, b0, b1, b2, b3 :
  bvands [
    bvvar L0_0 = bvvar a0,
    bvvar L0_8 = bvvar a1,
    bvvar L0_16 = bvvar a2,
    bvvar L0_24 = bvvar a3,
    bvvar L1_0 = bvvar b0,
    bvvar L1_8 = bvvar b1,
    bvvar L1_16 = bvvar b2,
    bvvar L1_24 = bvvar b3
  ] | bvtrue;

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
  bveq
    (limbs 56 [bvvar L1_0, bvvar L1_8, bvvar L1_16, bvvar L1_24])
    (
      (limbs 56 [bvvar a0, bvvar a1, bvvar a2, bvvar a3])
      +
      (limbs 56 [bvvar b0, bvvar b1, bvvar b2, bvvar b3])
    )
  |
  bvands [
    bvvar L1_0 < bvconst 64 (2^58),
    bvvar L1_8 < bvconst 64 (2^58),
    bvvar L1_16 < bvconst 64 (2^58),
    bvvar L1_24 < bvconst 64 (2^58)
  ]
}


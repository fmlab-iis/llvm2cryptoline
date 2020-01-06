(* -v -btor -isafety
Parsing Cryptoline file:		[OK]		0.001338 seconds
Checking well-formedness:		[OK]		0.000069 seconds
Transforming to SSA form:		[OK]		0.000054 seconds
Rewriting assignments:			[OK]		0.000020 seconds
Verifying program safety:			[OK]		0.300886 seconds
Verifying range specification:		[OK]		0.069255 seconds
Verifying algebraic specification:	[OK]		0.072514 seconds
Verification result:			[OK]		0.444603 seconds*)

proc main (L0_0, L0_8, L0_16, L0_24, scalar) =
{
  bveTrue
  |
  bvands [
    bvvar L0_0 < bvconst 64 (2^58),
    bvvar L0_8 < bvconst 64 (2^58),
    bvvar L0_16 < bvconst 64 (2^58),
    bvvar L0_24 < bvconst 64 (2^58),
    bvvar scalar <= bvconst 64 8
  ]
}

bvGhost a0, a1, a2, a3 :
  bvands [
    bvvar L0_0 = bvvar a0,
    bvvar L0_8 = bvvar a1,
    bvvar L0_16 = bvvar a2,
    bvvar L0_24 = bvvar a3
  ] | bvtrue;

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
  bveq
    (limbs 56 [bvvar L0_0, bvvar L0_8, bvvar L0_16, bvvar L0_24])
    (
      (limbs 56 [bvvar a0, bvvar a1, bvvar a2, bvvar a3])
      *
      (bvvar scalar)
    )
  |
  bvrTrue
}


(* quine: -v -btor -isafety -jobs 20 -qfbv_args "-SE minisat" 
Parsing Cryptoline file:                [OK]            0.000468 seconds
Checking well-formedness:               [OK]            0.000093 seconds
Transforming to SSA form:               [OK]            0.000099 seconds
Rewriting assignments:                  [OK]            0.000047 seconds
Verifying program safety:               [OK]            0.103201 seconds
Verifying range specification:          [OK]            0.012194 seconds
Verifying algebraic specification:      [OK]            0.016404 seconds
Verification result:                    [OK]            0.132733 seconds
*)

proc main (out0, out1, out2, out3, out4, out5, out6, out7, out8, scalar) =
{
  bveTrue
  |
  bvrands [
    bvvar out0 < bvconst 64 (2^61),
    bvvar out1 < bvconst 64 (2^61),
    bvvar out2 < bvconst 64 (2^61),
    bvvar out3 < bvconst 64 (2^61),
    bvvar out4 < bvconst 64 (2^61),
    bvvar out5 < bvconst 64 (2^61),
    bvvar out6 < bvconst 64 (2^61),
    bvvar out7 < bvconst 64 (2^61),
    bvvar out8 < bvconst 64 (2^61),
    bvvar scalar < bvconst 64 9
  ]
}

bvAssign  L0_0 (bvVar out0);
bvAssign  L0_8 (bvVar out1);
bvAssign L0_16 (bvVar out2);
bvAssign L0_24 (bvVar out3);
bvAssign L0_32 (bvVar out4);
bvAssign L0_40 (bvVar out5);
bvAssign L0_48 (bvVar out6);
bvAssign L0_56 (bvVar out7);
bvAssign L0_64 (bvVar out8);

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

bvAssign ret0 (bvVar  L0_0);
bvAssign ret1 (bvVar  L0_8);
bvAssign ret2 (bvVar L0_16);
bvAssign ret3 (bvVar L0_24);
bvAssign ret4 (bvVar L0_32);
bvAssign ret5 (bvVar L0_40);
bvAssign ret6 (bvVar L0_48);
bvAssign ret7 (bvVar L0_56);
bvAssign ret8 (bvVar L0_64);

{
  bveEqMod (limbs 58 [bvvar ret0, bvvar ret1, bvvar ret2, bvvar ret3,
                      bvvar ret4, bvvar ret5, bvvar ret6, bvvar ret7,
                      bvvar ret8])
           ((limbs 58 [bvvar out0, bvvar out1, bvvar out2, bvvar out3,
                       bvvar out4, bvvar out5, bvvar out6, bvvar out7,
                       bvvar out8])
            *
            (bvvar scalar))
           ((bvconst 2^521) - (bvconst 1))
  |
  bvrTrue
}


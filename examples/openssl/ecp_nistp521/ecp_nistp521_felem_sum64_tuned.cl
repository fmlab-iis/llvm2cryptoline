(* quine: -v -btor -isafety -jobs 20 -qfbv_args "-SE minisat"
Parsing Cryptoline file:                [OK]            0.000712 seconds
Checking well-formedness:               [OK]            0.000171 seconds
Transforming to SSA form:               [OK]            0.000177 seconds
Rewriting assignments:                  [OK]            0.000115 seconds
Verifying program safety:               [OK]            0.095270 seconds
Verifying range specification:          [OK]            0.011269 seconds
Verifying algebraic specification:      [OK]            0.014754 seconds
Verification result:                    [OK]            0.122725 seconds
*)

proc main (in0, in1, in2, in3, in4, in5, in6, in7, in8,
           out0, out1, out2, out3, out4, out5, out6, out7, out8) =
{
  bveTrue
  |
  bvrands [
    bvvar in0 < bvconst 64 (2^58), bvvar in1 < bvconst 64 (2^58), 
    bvvar in2 < bvconst 64 (2^58), bvvar in3 < bvconst 64 (2^58), 
    bvvar in4 < bvconst 64 (2^58), bvvar in5 < bvconst 64 (2^58), 
    bvvar in6 < bvconst 64 (2^58), bvvar in7 < bvconst 64 (2^58), 
    bvvar in8 < bvconst 64 (2^58),
    bvvar out0 < bvconst 64 (2^58), bvvar out1 < bvconst 64 (2^58), 
    bvvar out2 < bvconst 64 (2^58), bvvar out3 < bvconst 64 (2^58), 
    bvvar out4 < bvconst 64 (2^58), bvvar out5 < bvconst 64 (2^58), 
    bvvar out6 < bvconst 64 (2^58), bvvar out7 < bvconst 64 (2^58), 
    bvvar out8 < bvconst 64 (2^58)
  ]
}

bvAssign  L0_0 (bvVar in0);
bvAssign  L0_8 (bvVar in1);
bvAssign L0_16 (bvVar in2);
bvAssign L0_24 (bvVar in3);
bvAssign L0_32 (bvVar in4);
bvAssign L0_40 (bvVar in5);
bvAssign L0_48 (bvVar in6);
bvAssign L0_56 (bvVar in7);
bvAssign L0_64 (bvVar in8);

bvAssign  L1_0 (bvVar out0);
bvAssign  L1_8 (bvVar out1);
bvAssign L1_16 (bvVar out2);
bvAssign L1_24 (bvVar out3);
bvAssign L1_32 (bvVar out4);
bvAssign L1_40 (bvVar out5);
bvAssign L1_48 (bvVar out6);
bvAssign L1_56 (bvVar out7);
bvAssign L1_64 (bvVar out8);

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

bvAssign ret0 (bvVar  L1_0);
bvAssign ret1 (bvVar  L1_8);
bvAssign ret2 (bvVar L1_16);
bvAssign ret3 (bvVar L1_24);
bvAssign ret4 (bvVar L1_32);
bvAssign ret5 (bvVar L1_40);
bvAssign ret6 (bvVar L1_48);
bvAssign ret7 (bvVar L1_56);
bvAssign ret8 (bvVar L1_64);

{
  bveEqMod (limbs 58 [bvvar ret0, bvvar ret1, bvvar ret2, bvvar ret3,
                      bvvar ret4, bvvar ret5, bvvar ret6, bvvar ret7,
                      bvvar ret8])
           ((limbs 58 [bvvar in0, bvvar in1, bvvar in2, bvvar in3,
                       bvvar in4, bvvar in5, bvvar in6, bvvar in7,
                       bvvar in8])
            +
            (limbs 58 [bvvar out0, bvvar out1, bvvar out2, bvvar out3,
                       bvvar out4, bvvar out5, bvvar out6, bvvar out7,
                       bvvar out8]))
           ((bvconst 2^521) - (bvconst 1))
  |
  bvrTrue
}


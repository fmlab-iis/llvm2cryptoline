(* quine: -v -btor -isafety -jobs 20
Parsing Cryptoline file:                [OK]            0.000902 seconds
Checking well-formedness:               [OK]            0.000206 seconds
Transforming to SSA form:               [OK]            0.000230 seconds
Rewriting assignments:                  [OK]            0.000162 seconds
Verifying program safety:               [OK]            0.197498 seconds
Verifying range specification:          [OK]            0.101028 seconds
Verifying algebraic specification:      [OK]            0.033291 seconds
Verification result:                    [OK]            0.333603 seconds
*)

proc main (in0, in1, in2, in3, in4, in5, in6, in7, in8,
           out0, out1, out2, out3, out4, out5, out6, out7, out8) =
{
  bveTrue
  |
  bvrands [
    bvrvar in0 < bvradd (bvrconst 64 (2^59)) (bvrconst 64 (2^14)),
    bvrvar in1 < bvradd (bvrconst 64 (2^59)) (bvrconst 64 (2^14)),
    bvrvar in2 < bvradd (bvrconst 64 (2^59)) (bvrconst 64 (2^14)),
    bvrvar in3 < bvradd (bvrconst 64 (2^59)) (bvrconst 64 (2^14)),
    bvrvar in4 < bvradd (bvrconst 64 (2^59)) (bvrconst 64 (2^14)),
    bvrvar in5 < bvradd (bvrconst 64 (2^59)) (bvrconst 64 (2^14)),
    bvrvar in6 < bvradd (bvrconst 64 (2^59)) (bvrconst 64 (2^14)),
    bvrvar in7 < bvradd (bvrconst 64 (2^59)) (bvrconst 64 (2^14)),
    bvrvar in8 < bvradd (bvrconst 64 (2^59)) (bvrconst 64 (2^14)),
    bvrvar out0 < bvrconst 64 (2^62),
    bvrvar out1 < bvrconst 64 (2^62),
    bvrvar out2 < bvrconst 64 (2^62),
    bvrvar out3 < bvrconst 64 (2^62),
    bvrvar out4 < bvrconst 64 (2^62),
    bvrvar out5 < bvrconst 64 (2^62),
    bvrvar out6 < bvrconst 64 (2^62),
    bvrvar out7 < bvrconst 64 (2^62),
    bvrvar out8 < bvrconst 64 (2^62)
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
           ((limbs 58 [bvvar out0, bvvar out1, bvvar out2, bvvar out3,
                       bvvar out4, bvvar out5, bvvar out6, bvvar out7,
                       bvvar out8])
            -
            (limbs 58 [bvvar in0, bvvar in1, bvvar in2, bvvar in3,
                       bvvar in4, bvvar in5, bvvar in6, bvvar in7,
                       bvvar in8]))
           ((bvconst 2^521) - bvconst 1)
  |
  bvrands [
    bvrvar ret0 < bvradd (bvrvar out0) (bvrconst 64 (2^62)),
    bvrvar ret1 < bvradd (bvrvar out1) (bvrconst 64 (2^62)),
    bvrvar ret2 < bvradd (bvrvar out2) (bvrconst 64 (2^62)),
    bvrvar ret3 < bvradd (bvrvar out3) (bvrconst 64 (2^62)),
    bvrvar ret4 < bvradd (bvrvar out4) (bvrconst 64 (2^62)),
    bvrvar ret5 < bvradd (bvrvar out5) (bvrconst 64 (2^62)),
    bvrvar ret6 < bvradd (bvrvar out6) (bvrconst 64 (2^62)),
    bvrvar ret7 < bvradd (bvrvar out7) (bvrconst 64 (2^62)),
    bvrvar ret8 < bvradd (bvrvar out8) (bvrconst 64 (2^62))
  ]
}


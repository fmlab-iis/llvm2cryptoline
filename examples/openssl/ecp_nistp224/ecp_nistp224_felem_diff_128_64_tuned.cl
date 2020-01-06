(* -v -btor -isafety
Parsing Cryptoline file:		[OK]		0.001167 seconds
Checking well-formedness:		[OK]		0.000294 seconds
Transforming to SSA form:		[OK]		0.000206 seconds
Rewriting assignments:			[OK]		0.000083 seconds
Verifying program safety:			[OK]		0.552523 seconds
Verifying range specification:		[OK]		0.258815 seconds
Verifying algebraic specification:	[OK]		0.123972 seconds
Verification result:			[OK]		0.937447 seconds
*)

proc main (L0_0, L0_8, L0_16, L0_24, L0_32, L0_40, L0_48, L0_56, L1_0, L1_8, L1_16, L1_24) =
{
  bveTrue
  |
  bvands [
    limbs 64 [bvvar L0_0, bvvar L0_8] < bvconst 128 (2^116),
    limbs 64 [bvvar L0_16, bvvar L0_24] < bvconst 128 (2^116),
    limbs 64 [bvvar L0_32, bvvar L0_40] < bvconst 128 (2^116),
    limbs 64 [bvvar L0_48, bvvar L0_56] < bvconst 128 (2^116),
    bvvar L1_0 < bvconst 64 (2^63),
    bvvar L1_8 < bvconst 64 (2^63),
    bvvar L1_16 < bvconst 64 (2^63),
    bvvar L1_24 < bvconst 64 (2^63)
  ]
}

bvGhost a0_L, a0_H, a1_L, a1_H, a2_L, a2_H, a3_L, a3_H, b0, b1, b2, b3 :
  bvands [
    bvvar L0_0 = bvvar a0_L,
    bvvar L0_8 = bvvar a0_H,
    bvvar L0_16 = bvvar a1_L,
    bvvar L0_24 = bvvar a1_H,
    bvvar L0_32 = bvvar a2_L,
    bvvar L0_40 = bvvar a2_H,
    bvvar L0_48 = bvvar a3_L,
    bvvar L0_56 = bvvar a3_H,
    bvvar L1_0 = bvvar b0,
    bvvar L1_8 = bvvar b1,
    bvvar L1_16 = bvvar b2,
    bvvar L1_24 = bvvar b3
  ] | bvtrue;

(*  %0 = load i128, i128* %out, align 16, !tbaa !2 *)
bvAssign v0_L (bvVar L0_0);
bvAssign v0_H (bvVar L0_8);
(*  %add = add i128 %0, 18446744073709551872 *)
bvAddC carry add_L (bvVar v0_L) (bvConst 256);
bvAdc add_H (bvVar v0_H) (bvConst 1) carry;
(*  %arrayidx1 = getelementptr inbounds i128, i128* %out, i64 1 *)
(*  %1 = load i128, i128* %arrayidx1, align 16, !tbaa !2 *)
bvAssign v1_L (bvVar L0_16);
bvAssign v1_H (bvVar L0_24);
(*  %add2 = add i128 %1, 18446462598732840704 *)
bvAddC carry add2_L (bvVar v1_L) (bvConst 18446462598732840704);
bvAdc add2_H (bvVar v1_H) (bvConst 0) carry;
(*  %arrayidx3 = getelementptr inbounds i128, i128* %out, i64 2 *)
(*  %2 = load i128, i128* %arrayidx3, align 16, !tbaa !2 *)
bvAssign v2_L (bvVar L0_32);
bvAssign v2_H (bvVar L0_40);
(*  %add4 = add i128 %2, 18446744073709551360 *)
bvAddC carry add4_L (bvVar v2_L) (bvConst 18446744073709551360);
bvAdc add4_H (bvVar v2_H) (bvConst 0) carry;
(*  %arrayidx5 = getelementptr inbounds i128, i128* %out, i64 3 *)
(*  %3 = load i128, i128* %arrayidx5, align 16, !tbaa !2 *)
bvAssign v3_L (bvVar L0_48);
bvAssign v3_H (bvVar L0_56);
(*  %add6 = add i128 %3, 18446744073709551360 *)
bvAddC carry add6_L (bvVar v3_L) (bvConst 18446744073709551360);
bvAdc add6_H (bvVar v3_H) (bvConst 0) carry;
(*  %4 = load i64, i64* %in, align 8, !tbaa !6 *)
bvAssign v4 (bvVar L1_0);
(*  %conv = zext i64 %4 to i128 *)
bvAssign conv_L (bvVar v4);
bvAssign conv_H (bvConst 0);
(*  %sub = sub i128 %add, %conv *)
bvSubC carry sub_L (bvVar add_L) (bvVar conv_L);
bvSbb sub_H (bvVar add_H) (bvVar conv_H) carry;
(*  store i128 %sub, i128* %out, align 16, !tbaa !2 *)
bvAssign L0_0 (bvVar sub_L);
bvAssign L0_8 (bvVar sub_H);
(*  %arrayidx9 = getelementptr inbounds i64, i64* %in, i64 1 *)
(*  %5 = load i64, i64* %arrayidx9, align 8, !tbaa !6 *)
bvAssign v5 (bvVar L1_8);
(*  %conv10 = zext i64 %5 to i128 *)
bvAssign conv10_L (bvVar v5);
bvAssign conv10_H (bvConst 0);
(*  %sub12 = sub i128 %add2, %conv10 *)
bvSubC carry sub12_L (bvVar add2_L) (bvVar conv10_L);
bvSbb sub12_H (bvVar add2_H) (bvVar conv10_H) carry;
(*  store i128 %sub12, i128* %arrayidx1, align 16, !tbaa !2 *)
bvAssign L0_16 (bvVar sub12_L);
bvAssign L0_24 (bvVar sub12_H);
(*  %arrayidx13 = getelementptr inbounds i64, i64* %in, i64 2 *)
(*  %6 = load i64, i64* %arrayidx13, align 8, !tbaa !6 *)
bvAssign v6 (bvVar L1_16);
(*  %conv14 = zext i64 %6 to i128 *)
bvAssign conv14_L (bvVar v6);
bvAssign conv14_H (bvConst 0);
(*  %sub16 = sub i128 %add4, %conv14 *)
bvSubC carry sub16_L (bvVar add4_L) (bvVar conv14_L);
bvSbb sub16_H (bvVar add4_H) (bvVar conv14_H) carry;
(*  store i128 %sub16, i128* %arrayidx3, align 16, !tbaa !2 *)
bvAssign L0_32 (bvVar sub16_L);
bvAssign L0_40 (bvVar sub16_H);
(*  %arrayidx17 = getelementptr inbounds i64, i64* %in, i64 3 *)
(*  %7 = load i64, i64* %arrayidx17, align 8, !tbaa !6 *)
bvAssign v7 (bvVar L1_24);
(*  %conv18 = zext i64 %7 to i128 *)
bvAssign conv18_L (bvVar v7);
bvAssign conv18_H (bvConst 0);
(*  %sub20 = sub i128 %add6, %conv18 *)
bvSubC carry sub20_L (bvVar add6_L) (bvVar conv18_L);
bvSbb sub20_H (bvVar add6_H) (bvVar conv18_H) carry;
(*  store i128 %sub20, i128* %arrayidx5, align 16, !tbaa !2 *)
bvAssign L0_48 (bvVar sub20_L);
bvAssign L0_56 (bvVar sub20_H);
(*  ret void *)


{
  bveqmod
    (limbs 56 [limbs 64 [bvvar L0_0, bvvar L0_8], limbs 64 [bvvar L0_16, bvvar L0_24], limbs 64 [bvvar L0_32, bvvar L0_40], limbs 64 [bvvar L0_48, bvvar L0_56]])
    (
      (limbs 56 [limbs 64 [bvvar a0_L, bvvar a0_H], limbs 64 [bvvar a1_L, bvvar a1_H], limbs 64 [bvvar a2_L, bvvar a2_H], limbs 64 [bvvar a3_L, bvvar a3_H]])
      -
      (limbs 56 [bvvar b0, bvvar b1, bvvar b2, bvvar b3])
    )
    (bvconst (2^224) - bvconst (2^96) + bvconst 1)
  |
  bvands [
    limbs 64 [bvvar L0_0, bvvar L0_8] < bvconst 128 (2^117),
    limbs 64 [bvvar L0_16, bvvar L0_24] < bvconst 128 (2^117),
    limbs 64 [bvvar L0_32, bvvar L0_40] < bvconst 128 (2^117),
    limbs 64 [bvvar L0_48, bvvar L0_56] < bvconst 128 (2^117)
  ]
}


proc main (out_0_L, out_0_H, out_1_L, out_1_H,
           out_2_L, out_2_H, out_3_L, out_3_H,
           in_0, in_1, in_2, in_3) =
{
  bveTrue
  |
  bvrands [
    limbs 64 [ bvrvar in_0, bvrvar in_1, bvrvar in_2, bvrvar in_3 ] <
    limbs 64 [ bvrconst 64 18446744073709551615,
               bvrconst 64 4294967295,
               bvrconst 64 0,
               bvrconst 64 18446744069414584321 ],
    limbs 64 [ bvrvar out_0_L, bvrvar out_0_H ] <
    limbs 64 [ bvrconst 64 0, bvrconst 64 (2^44) ], (* out_0 < 2^108 *)
    limbs 64 [ bvrvar out_1_L, bvrvar out_1_H ] <
    limbs 64 [ bvrconst 64 0, bvrconst 64 (2^44) ], (* out_1 < 2^108 *)
    limbs 64 [ bvrvar out_2_L, bvrvar out_2_H ] <
    limbs 64 [ bvrconst 64 0, bvrconst 64 (2^44) ], (* out_2 < 2^108 *)
    limbs 64 [ bvrvar out_3_L, bvrvar out_3_H ] <
    limbs 64 [ bvrconst 64 0, bvrconst 64 (2^44) ]  (* out_3 < 2^108 *)
  ]
}

bvAssign L0_0  (bvVar in_0);
bvAssign L0_8  (bvVar in_1);
bvAssign L0_16 (bvVar in_2);
bvAssign L0_24 (bvVar in_3);

bvAssign L1_0  (bvVar out_0_L);
bvAssign L1_8  (bvVar out_0_H);
bvAssign L1_16 (bvVar out_1_L);
bvAssign L1_24 (bvVar out_1_H);
bvAssign L1_32 (bvVar out_2_L);
bvAssign L1_40 (bvVar out_2_H);
bvAssign L1_48 (bvVar out_3_L);
bvAssign L1_56 (bvVar out_3_H);


(*  %0 = load i64, i64* %in, align 8, !tbaa !2 *)
bvAssign v0 (bvVar L0_0);
(*  %conv = zext i64 %0 to i128 *)
bvAssign conv_L (bvVar v0);
bvAssign conv_H (bvConst 0);
(*  %1 = load i128, i128* %out, align 16, !tbaa !6 *)
bvAssign v1_L (bvVar L1_0);
bvAssign v1_H (bvVar L1_8);
(*  %add = add i128 %1, %conv *)
bvAddC carry add_L (bvVar v1_L) (bvVar conv_L);
bvAdc add_H (bvVar v1_H) (bvVar conv_H) carry;
(*  store i128 %add, i128* %out, align 16, !tbaa !6 *)
bvAssign L1_0 (bvVar add_L);
bvAssign L1_8 (bvVar add_H);
(*  %arrayidx2 = getelementptr inbounds i64, i64* %in, i64 1 *)
(*  %2 = load i64, i64* %arrayidx2, align 8, !tbaa !2 *)
bvAssign v2 (bvVar L0_8);
(*  %conv3 = zext i64 %2 to i128 *)
bvAssign conv3_L (bvVar v2);
bvAssign conv3_H (bvConst 0);
(*  %arrayidx4 = getelementptr inbounds i128, i128* %out, i64 1 *)
(*  %3 = load i128, i128* %arrayidx4, align 16, !tbaa !6 *)
bvAssign v3_L (bvVar L1_16);
bvAssign v3_H (bvVar L1_24);
(*  %add5 = add i128 %3, %conv3 *)
bvAddC carry add5_L (bvVar v3_L) (bvVar conv3_L);
bvAdc add5_H (bvVar v3_H) (bvVar conv3_H) carry;
(*  store i128 %add5, i128* %arrayidx4, align 16, !tbaa !6 *)
bvAssign L1_16 (bvVar add5_L);
bvAssign L1_24 (bvVar add5_H);
(*  %arrayidx6 = getelementptr inbounds i64, i64* %in, i64 2 *)
(*  %4 = load i64, i64* %arrayidx6, align 8, !tbaa !2 *)
bvAssign v4 (bvVar L0_16);
(*  %conv7 = zext i64 %4 to i128 *)
bvAssign conv7_L (bvVar v4);
bvAssign conv7_H (bvConst 0);
(*  %arrayidx8 = getelementptr inbounds i128, i128* %out, i64 2 *)
(*  %5 = load i128, i128* %arrayidx8, align 16, !tbaa !6 *)
bvAssign v5_L (bvVar L1_32);
bvAssign v5_H (bvVar L1_40);
(*  %add9 = add i128 %5, %conv7 *)
bvAddC carry add9_L (bvVar v5_L) (bvVar conv7_L);
bvAdc add9_H (bvVar v5_H) (bvVar conv7_H) carry;
(*  store i128 %add9, i128* %arrayidx8, align 16, !tbaa !6 *)
bvAssign L1_32 (bvVar add9_L);
bvAssign L1_40 (bvVar add9_H);
(*  %arrayidx10 = getelementptr inbounds i64, i64* %in, i64 3 *)
(*  %6 = load i64, i64* %arrayidx10, align 8, !tbaa !2 *)
bvAssign v6 (bvVar L0_24);
(*  %conv11 = zext i64 %6 to i128 *)
bvAssign conv11_L (bvVar v6);
bvAssign conv11_H (bvConst 0);
(*  %arrayidx12 = getelementptr inbounds i128, i128* %out, i64 3 *)
(*  %7 = load i128, i128* %arrayidx12, align 16, !tbaa !6 *)
bvAssign v7_L (bvVar L1_48);
bvAssign v7_H (bvVar L1_56);
(*  %add13 = add i128 %7, %conv11 *)
bvAddC carry add13_L (bvVar v7_L) (bvVar conv11_L);
bvAdc add13_H (bvVar v7_H) (bvVar conv11_H) carry;
(*  store i128 %add13, i128* %arrayidx12, align 16, !tbaa !6 *)
bvAssign L1_48 (bvVar add13_L);
bvAssign L1_56 (bvVar add13_H);
(*  ret void *)


bvAssign ret_0_L  (bvVar L1_0);
bvAssign ret_0_H  (bvVar L1_8);
bvAssign ret_1_L (bvVar L1_16);
bvAssign ret_1_H (bvVar L1_24);
bvAssign ret_2_L (bvVar L1_32);
bvAssign ret_2_H (bvVar L1_40);
bvAssign ret_3_L (bvVar L1_48);
bvAssign ret_3_H (bvVar L1_56);

{
  bveEqMod (limbs 64 [ bvvar ret_0_L,
                       bvvar ret_0_H + bvvar ret_1_L,
                       bvvar ret_1_H + bvvar ret_2_L,
                       bvvar ret_2_H + bvvar ret_3_L,
                       bvvar ret_3_H ])
           ((limbs 64 [ bvvar in_0, bvvar in_1,
                        bvvar in_2, bvvar in_3 ])
            +
            (limbs 64 [ bvvar out_0_L,
                        bvvar out_0_H + bvvar out_1_L,
                        bvvar out_1_H + bvvar out_2_L,
                        bvvar out_2_H + bvvar out_3_L,
                        bvvar out_3_H ]))
           (limbs 64 [ bvconst 18446744073709551615,
                       bvconst 4294967295,
                       bvconst 0,
                       bvconst 18446744069414584321 ] )

  |
  bvrands [
    limbs 64 [ bvrvar ret_0_L, bvrvar ret_0_H ] <
    limbs 64 [ bvrconst 64 0, bvrconst 64 (2^45) ], (* ret_0 < 2^109 *)
    limbs 64 [ bvrvar ret_1_L, bvrvar ret_1_H ] <
    limbs 64 [ bvrconst 64 0, bvrconst 64 (2^45) ], (* ret_1 < 2^109 *)
    limbs 64 [ bvrvar ret_2_L, bvrvar ret_2_H ] <
    limbs 64 [ bvrconst 64 0, bvrconst 64 (2^45) ], (* ret_2 < 2^109 *)
    limbs 64 [ bvrvar ret_3_L, bvrvar ret_3_H ] <
    limbs 64 [ bvrconst 64 0, bvrconst 64 (2^45) ]  (* ret_3 < 2^109 *)
  ]
}
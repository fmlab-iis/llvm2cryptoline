(* safety check and range check fail *)

proc main (in0, in1, in2, in3, in4, in5, in6, in7, in8,
           out0_L, out0_H, out1_L, out1_H, out2_L, out2_H, out3_L, out3_H,
           out4_L, out4_H, out5_L, out5_H, out6_L, out6_H, out7_L, out7_H,
           out8_L, out8_H) =
{
  bveTrue
  |
  bvrands [
    bvrvar in0 < bvradd (bvrconst 64 (2^62)) (bvrconst 64 (2^17)),
    bvrvar in1 < bvradd (bvrconst 64 (2^62)) (bvrconst 64 (2^17)),
    bvrvar in2 < bvradd (bvrconst 64 (2^62)) (bvrconst 64 (2^17)),
    bvrvar in3 < bvradd (bvrconst 64 (2^62)) (bvrconst 64 (2^17)),
    bvrvar in4 < bvradd (bvrconst 64 (2^62)) (bvrconst 64 (2^17)),
    bvrvar in5 < bvradd (bvrconst 64 (2^62)) (bvrconst 64 (2^17)),
    bvrvar in6 < bvradd (bvrconst 64 (2^62)) (bvrconst 64 (2^17)),
    bvrvar in7 < bvradd (bvrconst 64 (2^62)) (bvrconst 64 (2^17)),
    bvrvar in8 < bvradd (bvrconst 64 (2^62)) (bvrconst 64 (2^17)),
    limbs 64 [bvrvar out0_L, bvrvar out0_H] < bvrconst 128 (2^126),
    limbs 64 [bvrvar out1_L, bvrvar out1_H] < bvrconst 128 (2^126),
    limbs 64 [bvrvar out2_L, bvrvar out2_H] < bvrconst 128 (2^126),
    limbs 64 [bvrvar out3_L, bvrvar out3_H] < bvrconst 128 (2^126),
    limbs 64 [bvrvar out4_L, bvrvar out4_H] < bvrconst 128 (2^126),
    limbs 64 [bvrvar out5_L, bvrvar out5_H] < bvrconst 128 (2^126),
    limbs 64 [bvrvar out6_L, bvrvar out6_H] < bvrconst 128 (2^126),
    limbs 64 [bvrvar out7_L, bvrvar out7_H] < bvrconst 128 (2^126),
    limbs 64 [bvrvar out8_L, bvrvar out8_H] < bvrconst 128 (2^126)
  ]
}

bvAssign   L0_0 (bvVar in0);
bvAssign   L0_8 (bvVar in1);
bvAssign  L0_16 (bvVar in2);
bvAssign  L0_24 (bvVar in3);
bvAssign  L0_32 (bvVar in4);
bvAssign  L0_40 (bvVar in5);
bvAssign  L0_48 (bvVar in6);
bvAssign  L0_56 (bvVar in7);
bvAssign  L0_64 (bvVar in8);

bvAssign   L1_0 (bvVar out0_L);
bvAssign   L1_8 (bvVar out0_H);
bvAssign  L1_16 (bvVar out1_L);
bvAssign  L1_24 (bvVar out1_H);
bvAssign  L1_32 (bvVar out2_L);
bvAssign  L1_40 (bvVar out2_H);
bvAssign  L1_48 (bvVar out3_L);
bvAssign  L1_56 (bvVar out3_H);
bvAssign  L1_64 (bvVar out4_L);
bvAssign  L1_72 (bvVar out4_H);
bvAssign  L1_80 (bvVar out5_L);
bvAssign  L1_88 (bvVar out5_H);
bvAssign  L1_96 (bvVar out6_L);
bvAssign L1_104 (bvVar out6_H);
bvAssign L1_112 (bvVar out7_L);
bvAssign L1_120 (bvVar out7_H);
bvAssign L1_128 (bvVar out8_L);
bvAssign L1_136 (bvVar out8_H);

(*  %0 = load i64, i64* %in, align 8, !tbaa !2 *)
bvAssign v0 (bvVar L0_0);
(*  %sub = sub i64 4611686018427387872, %0 *)
bvSub sub (bvConst 4611686018427387872) (bvVar v0);
(*  %conv = zext i64 %sub to i128 *)
bvAssign conv_L (bvVar sub);
bvAssign conv_H (bvConst 0);
(*  %1 = load i128, i128* %out, align 16, !tbaa !6 *)
bvAssign v1_L (bvVar L1_0);
bvAssign v1_H (bvVar L1_8);
(*  %add = add i128 %conv, %1 *)
bvAddC carry add_L (bvVar conv_L) (bvVar v1_L);
bvAdc add_H (bvVar conv_H) (bvVar v1_H) carry;
(*  store i128 %add, i128* %out, align 16, !tbaa !6 *)
bvAssign L1_0 (bvVar add_L);
bvAssign L1_8 (bvVar add_H);
(*  %arrayidx2 = getelementptr inbounds i64, i64* %in, i64 1 *)
(*  %2 = load i64, i64* %arrayidx2, align 8, !tbaa !2 *)
bvAssign v2 (bvVar L0_8);
(*  %sub3 = sub i64 4611686018427387888, %2 *)
bvSub sub3 (bvConst 4611686018427387888) (bvVar v2);
(*  %conv4 = zext i64 %sub3 to i128 *)
bvAssign conv4_L (bvVar sub3);
bvAssign conv4_H (bvConst 0);
(*  %arrayidx5 = getelementptr inbounds i128, i128* %out, i64 1 *)
(*  %3 = load i128, i128* %arrayidx5, align 16, !tbaa !6 *)
bvAssign v3_L (bvVar L1_16);
bvAssign v3_H (bvVar L1_24);
(*  %add6 = add i128 %conv4, %3 *)
bvAddC carry add6_L (bvVar conv4_L) (bvVar v3_L);
bvAdc add6_H (bvVar conv4_H) (bvVar v3_H) carry;
(*  store i128 %add6, i128* %arrayidx5, align 16, !tbaa !6 *)
bvAssign L1_16 (bvVar add6_L);
bvAssign L1_24 (bvVar add6_H);
(*  %arrayidx7 = getelementptr inbounds i64, i64* %in, i64 2 *)
(*  %4 = load i64, i64* %arrayidx7, align 8, !tbaa !2 *)
bvAssign v4 (bvVar L0_16);
(*  %sub8 = sub i64 4611686018427387888, %4 *)
bvSub sub8 (bvConst 4611686018427387888) (bvVar v4);
(*  %conv9 = zext i64 %sub8 to i128 *)
bvAssign conv9_L (bvVar sub8);
bvAssign conv9_H (bvConst 0);
(*  %arrayidx10 = getelementptr inbounds i128, i128* %out, i64 2 *)
(*  %5 = load i128, i128* %arrayidx10, align 16, !tbaa !6 *)
bvAssign v5_L (bvVar L1_32);
bvAssign v5_H (bvVar L1_40);
(*  %add11 = add i128 %conv9, %5 *)
bvAddC carry add11_L (bvVar conv9_L) (bvVar v5_L);
bvAdc add11_H (bvVar conv9_H) (bvVar v5_H) carry;
(*  store i128 %add11, i128* %arrayidx10, align 16, !tbaa !6 *)
bvAssign L1_32 (bvVar add11_L);
bvAssign L1_40 (bvVar add11_H);
(*  %arrayidx12 = getelementptr inbounds i64, i64* %in, i64 3 *)
(*  %6 = load i64, i64* %arrayidx12, align 8, !tbaa !2 *)
bvAssign v6 (bvVar L0_24);
(*  %sub13 = sub i64 4611686018427387888, %6 *)
bvSub sub13 (bvConst 4611686018427387888) (bvVar v6);
(*  %conv14 = zext i64 %sub13 to i128 *)
bvAssign conv14_L (bvVar sub13);
bvAssign conv14_H (bvConst 0);
(*  %arrayidx15 = getelementptr inbounds i128, i128* %out, i64 3 *)
(*  %7 = load i128, i128* %arrayidx15, align 16, !tbaa !6 *)
bvAssign v7_L (bvVar L1_48);
bvAssign v7_H (bvVar L1_56);
(*  %add16 = add i128 %conv14, %7 *)
bvAddC carry add16_L (bvVar conv14_L) (bvVar v7_L);
bvAdc add16_H (bvVar conv14_H) (bvVar v7_H) carry;
(*  store i128 %add16, i128* %arrayidx15, align 16, !tbaa !6 *)
bvAssign L1_48 (bvVar add16_L);
bvAssign L1_56 (bvVar add16_H);
(*  %arrayidx17 = getelementptr inbounds i64, i64* %in, i64 4 *)
(*  %8 = load i64, i64* %arrayidx17, align 8, !tbaa !2 *)
bvAssign v8 (bvVar L0_32);
(*  %sub18 = sub i64 4611686018427387888, %8 *)
bvSub sub18 (bvConst 4611686018427387888) (bvVar v8);
(*  %conv19 = zext i64 %sub18 to i128 *)
bvAssign conv19_L (bvVar sub18);
bvAssign conv19_H (bvConst 0);
(*  %arrayidx20 = getelementptr inbounds i128, i128* %out, i64 4 *)
(*  %9 = load i128, i128* %arrayidx20, align 16, !tbaa !6 *)
bvAssign v9_L (bvVar L1_64);
bvAssign v9_H (bvVar L1_72);
(*  %add21 = add i128 %conv19, %9 *)
bvAddC carry add21_L (bvVar conv19_L) (bvVar v9_L);
bvAdc add21_H (bvVar conv19_H) (bvVar v9_H) carry;
(*  store i128 %add21, i128* %arrayidx20, align 16, !tbaa !6 *)
bvAssign L1_64 (bvVar add21_L);
bvAssign L1_72 (bvVar add21_H);
(*  %arrayidx22 = getelementptr inbounds i64, i64* %in, i64 5 *)
(*  %10 = load i64, i64* %arrayidx22, align 8, !tbaa !2 *)
bvAssign v10 (bvVar L0_40);
(*  %sub23 = sub i64 4611686018427387888, %10 *)
bvSub sub23 (bvConst 4611686018427387888) (bvVar v10);
(*  %conv24 = zext i64 %sub23 to i128 *)
bvAssign conv24_L (bvVar sub23);
bvAssign conv24_H (bvConst 0);
(*  %arrayidx25 = getelementptr inbounds i128, i128* %out, i64 5 *)
(*  %11 = load i128, i128* %arrayidx25, align 16, !tbaa !6 *)
bvAssign v11_L (bvVar L1_80);
bvAssign v11_H (bvVar L1_88);
(*  %add26 = add i128 %conv24, %11 *)
bvAddC carry add26_L (bvVar conv24_L) (bvVar v11_L);
bvAdc add26_H (bvVar conv24_H) (bvVar v11_H) carry;
(*  store i128 %add26, i128* %arrayidx25, align 16, !tbaa !6 *)
bvAssign L1_80 (bvVar add26_L);
bvAssign L1_88 (bvVar add26_H);
(*  %arrayidx27 = getelementptr inbounds i64, i64* %in, i64 6 *)
(*  %12 = load i64, i64* %arrayidx27, align 8, !tbaa !2 *)
bvAssign v12 (bvVar L0_48);
(*  %sub28 = sub i64 4611686018427387888, %12 *)
bvSub sub28 (bvConst 4611686018427387888) (bvVar v12);
(*  %conv29 = zext i64 %sub28 to i128 *)
bvAssign conv29_L (bvVar sub28);
bvAssign conv29_H (bvConst 0);
(*  %arrayidx30 = getelementptr inbounds i128, i128* %out, i64 6 *)
(*  %13 = load i128, i128* %arrayidx30, align 16, !tbaa !6 *)
bvAssign v13_L (bvVar L1_96);
bvAssign v13_H (bvVar L1_104);
(*  %add31 = add i128 %conv29, %13 *)
bvAddC carry add31_L (bvVar conv29_L) (bvVar v13_L);
bvAdc add31_H (bvVar conv29_H) (bvVar v13_H) carry;
(*  store i128 %add31, i128* %arrayidx30, align 16, !tbaa !6 *)
bvAssign L1_96 (bvVar add31_L);
bvAssign L1_104 (bvVar add31_H);
(*  %arrayidx32 = getelementptr inbounds i64, i64* %in, i64 7 *)
(*  %14 = load i64, i64* %arrayidx32, align 8, !tbaa !2 *)
bvAssign v14 (bvVar L0_56);
(*  %sub33 = sub i64 4611686018427387888, %14 *)
bvSub sub33 (bvConst 4611686018427387888) (bvVar v14);
(*  %conv34 = zext i64 %sub33 to i128 *)
bvAssign conv34_L (bvVar sub33);
bvAssign conv34_H (bvConst 0);
(*  %arrayidx35 = getelementptr inbounds i128, i128* %out, i64 7 *)
(*  %15 = load i128, i128* %arrayidx35, align 16, !tbaa !6 *)
bvAssign v15_L (bvVar L1_112);
bvAssign v15_H (bvVar L1_120);
(*  %add36 = add i128 %conv34, %15 *)
bvAddC carry add36_L (bvVar conv34_L) (bvVar v15_L);
bvAdc add36_H (bvVar conv34_H) (bvVar v15_H) carry;
(*  store i128 %add36, i128* %arrayidx35, align 16, !tbaa !6 *)
bvAssign L1_112 (bvVar add36_L);
bvAssign L1_120 (bvVar add36_H);
(*  %arrayidx37 = getelementptr inbounds i64, i64* %in, i64 8 *)
(*  %16 = load i64, i64* %arrayidx37, align 8, !tbaa !2 *)
bvAssign v16 (bvVar L0_64);
(*  %sub38 = sub i64 4611686018427387888, %16 *)
bvSub sub38 (bvConst 4611686018427387888) (bvVar v16);
(*  %conv39 = zext i64 %sub38 to i128 *)
bvAssign conv39_L (bvVar sub38);
bvAssign conv39_H (bvConst 0);
(*  %arrayidx40 = getelementptr inbounds i128, i128* %out, i64 8 *)
(*  %17 = load i128, i128* %arrayidx40, align 16, !tbaa !6 *)
bvAssign v17_L (bvVar L1_128);
bvAssign v17_H (bvVar L1_136);
(*  %add41 = add i128 %conv39, %17 *)
bvAddC carry add41_L (bvVar conv39_L) (bvVar v17_L);
bvAdc add41_H (bvVar conv39_H) (bvVar v17_H) carry;
(*  store i128 %add41, i128* %arrayidx40, align 16, !tbaa !6 *)
bvAssign L1_128 (bvVar add41_L);
bvAssign L1_136 (bvVar add41_H);
(*  ret void *)

bvAssign ret0_L (bvVar   L1_0);
bvAssign ret0_H (bvVar   L1_8);
bvAssign ret1_L (bvVar  L1_16);
bvAssign ret1_H (bvVar  L1_24);
bvAssign ret2_L (bvVar  L1_32);
bvAssign ret2_H (bvVar  L1_40);
bvAssign ret3_L (bvVar  L1_48);
bvAssign ret3_H (bvVar  L1_56);
bvAssign ret4_L (bvVar  L1_64);
bvAssign ret4_H (bvVar  L1_72);
bvAssign ret5_L (bvVar  L1_80);
bvAssign ret5_H (bvVar  L1_88);
bvAssign ret6_L (bvVar  L1_96);
bvAssign ret6_H (bvVar L1_104);
bvAssign ret7_L (bvVar L1_112);
bvAssign ret7_H (bvVar L1_120);
bvAssign ret8_L (bvVar L1_128);
bvAssign ret8_H (bvVar L1_136);

{
  bveEqMod (limbs 58 [limbs 64 [bvvar ret0_L, bvvar ret0_H],
                      limbs 64 [bvvar ret1_L, bvvar ret1_H],
                      limbs 64 [bvvar ret2_L, bvvar ret2_H],
                      limbs 64 [bvvar ret3_L, bvvar ret3_H],
                      limbs 64 [bvvar ret4_L, bvvar ret4_H],
                      limbs 64 [bvvar ret5_L, bvvar ret5_H],
                      limbs 64 [bvvar ret6_L, bvvar ret6_H],
                      limbs 64 [bvvar ret7_L, bvvar ret7_H],
                      limbs 64 [bvvar ret8_L, bvvar ret8_H]])
           ((limbs 58 [limbs 64 [bvvar out0_L, bvvar out0_H],
                       limbs 64 [bvvar out1_L, bvvar out1_H],
                       limbs 64 [bvvar out2_L, bvvar out2_H],
                       limbs 64 [bvvar out3_L, bvvar out3_H],
                       limbs 64 [bvvar out4_L, bvvar out4_H],
                       limbs 64 [bvvar out5_L, bvvar out5_H],
                       limbs 64 [bvvar out6_L, bvvar out6_H],
                       limbs 64 [bvvar out7_L, bvvar out7_H],
                       limbs 64 [bvvar out8_L, bvvar out8_H]])
            -
            (limbs 58 [bvvar in0, bvvar in1, bvvar in2, bvvar in3,
                       bvvar in4, bvvar in5, bvvar in6, bvvar in7,
                       bvvar in8]))
           ((bvconst 2^521) - bvconst 1)
  
  |
  bvrands [
    limbs 64 [bvvar ret0_L, bvvar ret0_H] <
    bvradd (limbs 64 [bvvar out0_L, bvvar out0_H]) (bvrconst 128 (2^63)),
    limbs 64 [bvvar ret1_L, bvvar ret1_H] <
    bvradd (limbs 64 [bvvar out1_L, bvvar out1_H]) (bvrconst 128 (2^63)),
    limbs 64 [bvvar ret2_L, bvvar ret2_H] <
    bvradd (limbs 64 [bvvar out2_L, bvvar out2_H]) (bvrconst 128 (2^63)),
    limbs 64 [bvvar ret3_L, bvvar ret3_H] <
    bvradd (limbs 64 [bvvar out3_L, bvvar out3_H]) (bvrconst 128 (2^63)),
    limbs 64 [bvvar ret4_L, bvvar ret4_H] <
    bvradd (limbs 64 [bvvar out4_L, bvvar out4_H]) (bvrconst 128 (2^63)),
    limbs 64 [bvvar ret5_L, bvvar ret5_H] <
    bvradd (limbs 64 [bvvar out5_L, bvvar out5_H]) (bvrconst 128 (2^63)),
    limbs 64 [bvvar ret6_L, bvvar ret6_H] <
    bvradd (limbs 64 [bvvar out6_L, bvvar out6_H]) (bvrconst 128 (2^63)),
    limbs 64 [bvvar ret7_L, bvvar ret7_H] <
    bvradd (limbs 64 [bvvar out7_L, bvvar out7_H]) (bvrconst 128 (2^63)),
    limbs 64 [bvvar ret8_L, bvvar ret8_H] <
    bvradd (limbs 64 [bvvar out8_L, bvvar out8_H]) (bvrconst 128 (2^63))
  ]
}


proc main (in0_L, in0_H, in1_L, in1_H, in2_L, in2_H, in3_L, in3_H, out0_L, out0_H, out1_L, out1_H, out2_L, out2_H, out3_L, out3_H) =
{
  bveTrue
  |
  bvrands [
    (* in[i] < 2^104 *)
    limbs 64 [ bvvar in0_L, bvvar in0_H ] < bvconst 128 (2^104),
    limbs 64 [ bvvar in1_L, bvvar in1_H ] < bvconst 128 (2^104),
    limbs 64 [ bvvar in2_L, bvvar in2_H ] < bvconst 128 (2^104),
    limbs 64 [ bvvar in3_L, bvvar in3_H ] < bvconst 128 (2^104),
    (* out[i] < 2^106, deduced from the context *)
    limbs 64 [ bvvar out0_L, bvvar out0_H ] < bvconst 128 (2^106),
    limbs 64 [ bvvar out1_L, bvvar out1_H ] < bvconst 128 (2^106),
    limbs 64 [ bvvar out2_L, bvvar out2_H ] < bvconst 128 (2^106),
    limbs 64 [ bvvar out3_L, bvvar out3_H ] < bvconst 128 (2^106)
  ]
}

bvAssign L1_0 (bvVar in0_L);
bvAssign L1_8 (bvVar in0_H);
bvAssign L1_16 (bvVar in1_L);
bvAssign L1_24 (bvVar in1_H);
bvAssign L1_32 (bvVar in2_L);
bvAssign L1_40 (bvVar in2_H);
bvAssign L1_48 (bvVar in3_L);
bvAssign L1_56 (bvVar in3_H);

bvAssign L0_0 (bvVar out0_L);
bvAssign L0_8 (bvVar out0_H);
bvAssign L0_16 (bvVar out1_L);
bvAssign L0_24 (bvVar out1_H);
bvAssign L0_32 (bvVar out2_L);
bvAssign L0_40 (bvVar out2_H);
bvAssign L0_48 (bvVar out3_L);
bvAssign L0_56 (bvVar out3_H);


(*  %0 = load i128, i128* %out, align 16, !tbaa !2 *)
bvAssign v0_L (bvVar L0_0);
bvAssign v0_H (bvVar L0_8);
(*  %add = add i128 %0, 40564819207303340845695479315968 *)
bvAddC carry add_L (bvVar v0_L) (bvConst 18446741874686295552);
bvAdc add_H (bvVar v0_H) (bvConst 2199023255551) carry;
(*  store i128 %add, i128* %out, align 16, !tbaa !2 *)
bvAssign L0_0 (bvVar add_L);
bvAssign L0_8 (bvVar add_H);
(*  %arrayidx1 = getelementptr inbounds i128, i128* %out, i64 1 *)
(*  %1 = load i128, i128* %arrayidx1, align 16, !tbaa !2 *)
bvAssign v1_L (bvVar L0_16);
bvAssign v1_H (bvVar L0_24);
(*  %add2 = add i128 %1, 40564819207303340847894502572032 *)
bvAddC carry add2_L (bvVar v1_L) (bvConst 0);
bvAdc add2_H (bvVar v1_H) (bvConst 2199023255552) carry;
(*  store i128 %add2, i128* %arrayidx1, align 16, !tbaa !2 *)
bvAssign L0_16 (bvVar add2_L);
bvAssign L0_24 (bvVar add2_H);
(*  %arrayidx3 = getelementptr inbounds i128, i128* %out, i64 2 *)
(*  %2 = load i128, i128* %arrayidx3, align 16, !tbaa !2 *)
bvAssign v2_L (bvVar L0_32);
bvAssign v2_H (bvVar L0_40);
(*  %add4 = add i128 %2, 40564819207303340845695479316992 *)
bvAddC carry add4_L (bvVar v2_L) (bvConst 18446741874686296576);
bvAdc add4_H (bvVar v2_H) (bvConst 2199023255551) carry;
(*  store i128 %add4, i128* %arrayidx3, align 16, !tbaa !2 *)
bvAssign L0_32 (bvVar add4_L);
bvAssign L0_40 (bvVar add4_H);
(*  %arrayidx5 = getelementptr inbounds i128, i128* %out, i64 3 *)
(*  %3 = load i128, i128* %arrayidx5, align 16, !tbaa !2 *)
bvAssign v3_L (bvVar L0_48);
bvAssign v3_H (bvVar L0_56);
(*  %add6 = add i128 %3, 40564819207303340845695479316992 *)
bvAddC carry add6_L (bvVar v3_L) (bvConst 18446741874686296576);
bvAdc add6_H (bvVar v3_H) (bvConst 2199023255551) carry;
(*  store i128 %add6, i128* %arrayidx5, align 16, !tbaa !2 *)
bvAssign L0_48 (bvVar add6_L);
bvAssign L0_56 (bvVar add6_H);
(*  %4 = load i128, i128* %in, align 16, !tbaa !2 *)
bvAssign v4_L (bvVar L1_0);
bvAssign v4_H (bvVar L1_8);
(*  %sub = sub i128 %add, %4 *)
bvSubC carry sub_L (bvVar add_L) (bvVar v4_L);
bvSbb sub_H (bvVar add_H) (bvVar v4_H) carry;
(*  store i128 %sub, i128* %out, align 16, !tbaa !2 *)
bvAssign L0_0 (bvVar sub_L);
bvAssign L0_8 (bvVar sub_H);
(*  %arrayidx9 = getelementptr inbounds i128, i128* %in, i64 1 *)
(*  %5 = load i128, i128* %arrayidx9, align 16, !tbaa !2 *)
bvAssign v5_L (bvVar L1_16);
bvAssign v5_H (bvVar L1_24);
(*  %sub11 = sub i128 %add2, %5 *)
bvSubC carry sub11_L (bvVar add2_L) (bvVar v5_L);
bvSbb sub11_H (bvVar add2_H) (bvVar v5_H) carry;
(*  store i128 %sub11, i128* %arrayidx1, align 16, !tbaa !2 *)
bvAssign L0_16 (bvVar sub11_L);
bvAssign L0_24 (bvVar sub11_H);
(*  %arrayidx12 = getelementptr inbounds i128, i128* %in, i64 2 *)
(*  %6 = load i128, i128* %arrayidx12, align 16, !tbaa !2 *)
bvAssign v6_L (bvVar L1_32);
bvAssign v6_H (bvVar L1_40);
(*  %sub14 = sub i128 %add4, %6 *)
bvSubC carry sub14_L (bvVar add4_L) (bvVar v6_L);
bvSbb sub14_H (bvVar add4_H) (bvVar v6_H) carry;
(*  store i128 %sub14, i128* %arrayidx3, align 16, !tbaa !2 *)
bvAssign L0_32 (bvVar sub14_L);
bvAssign L0_40 (bvVar sub14_H);
(*  %arrayidx15 = getelementptr inbounds i128, i128* %in, i64 3 *)
(*  %7 = load i128, i128* %arrayidx15, align 16, !tbaa !2 *)
bvAssign v7_L (bvVar L1_48);
bvAssign v7_H (bvVar L1_56);
(*  %sub17 = sub i128 %add6, %7 *)
bvSubC carry sub17_L (bvVar add6_L) (bvVar v7_L);
bvSbb sub17_H (bvVar add6_H) (bvVar v7_H) carry;
(*  store i128 %sub17, i128* %arrayidx5, align 16, !tbaa !2 *)
bvAssign L0_48 (bvVar sub17_L);
bvAssign L0_56 (bvVar sub17_H);
(*  ret void *)


bvAssign ret0_L (bvVar L0_0);
bvAssign ret0_H (bvVar L0_8);
bvAssign ret1_L (bvVar L0_16);
bvAssign ret1_H (bvVar L0_24);
bvAssign ret2_L (bvVar L0_32);
bvAssign ret2_H (bvVar L0_40);
bvAssign ret3_L (bvVar L0_48);
bvAssign ret3_H (bvVar L0_56);

{
  bveEqMod
    (limbs 64 [ bvvar ret0_L,
                bvvar ret0_H + bvvar ret1_L,
	        bvvar ret1_H + bvvar ret2_L,
	        bvvar ret2_H + bvvar ret3_L,
	        bvvar ret3_H ])
    (
      (limbs 64 [ bvvar out0_L,
                  bvvar out0_H + bvvar out1_L,
                  bvvar out1_H + bvvar out2_L,
	          bvvar out2_H + bvvar out3_L,
	          bvvar out3_H ])
      -
      (limbs 64 [ bvvar in0_L,
                  bvvar in0_H + bvvar in1_L,
		  bvvar in1_H + bvvar in2_L,
	          bvvar in2_H + bvvar in3_L,
	          bvvar in3_H ])      
    )
    (limbs 64 [ bvconst 18446744073709551615,
                bvconst 4294967295,
                bvconst 0,
                bvconst 18446744069414584321 ])
  |
  (* out[i] < out[i] + 2^105 *)
  bvrands [
    limbs 64 [ bvvar ret0_L, bvvar ret0_H ]
      < bvrAdd (limbs 64 [ bvvar out0_L, bvvar out0_H ]) (bvconst 128 (2^105)),
    (* === modified range post-condition === *)
    limbs 64 [ bvvar ret1_L, bvvar ret1_H ]
      <= bvrAdd (limbs 64 [ bvvar out1_L, bvvar out1_H ]) (bvconst 128 (2^105)),
    limbs 64 [ bvvar ret2_L, bvvar ret2_H ]
      < bvrAdd (limbs 64 [ bvvar out2_L, bvvar out2_H ]) (bvconst 128 (2^105)),
    limbs 64 [ bvvar ret3_L, bvvar ret3_H ]
      < bvrAdd (limbs 64 [ bvvar out3_L, bvvar out3_H ]) (bvconst 128 (2^105))
  ]
}


proc main (L1_48, L0_48, L0_40, L1_40, L1_32, L1_56, L1_0, L1_24, L1_16, L1_8, L0_24, L0_8, L0_16, L0_56, L0_32, L0_0) =
{
  bveTrue
  |
  bvrands [
  	  limbs 64 [ bvrvar L0_0, bvrvar L0_8 ] <
	  limbs 64 [ bvrconst 64 0, bvrconst 64 (2^44) ], 
  	  limbs 64 [ bvrvar L0_16, bvrvar L0_24 ] <
	  limbs 64 [ bvrconst 64 0, bvrconst 64 (2^44) ], 
  	  limbs 64 [ bvrvar L0_32, bvrvar L0_40 ] <
	  limbs 64 [ bvrconst 64 0, bvrconst 64 (2^44) ], 
  	  limbs 64 [ bvrvar L0_48, bvrvar L0_56 ] <
	  limbs 64 [ bvrconst 64 0, bvrconst 64 (2^44) ],
	  limbs 64 [ bvrvar L1_0, bvrvar L1_8 ] <
	  limbs 64 [ bvrconst 64 0, bvrconst 64 (2^44) ],
	  limbs 64 [ bvrvar L1_16, bvrvar L1_24 ] <
	  limbs 64 [ bvrconst 64 0, bvrconst 64 (2^44) ],
	  limbs 64 [ bvrvar L1_32, bvrvar L1_40 ] <
	  limbs 64 [ bvrconst 64 0, bvrconst 64 (2^44) ],
	  limbs 64 [ bvrvar L1_48, bvrvar L1_56 ] <
	  limbs 64 [ bvrconst 64 0, bvrconst 64 (2^44) ]
  ]
}

(*init*)
bvAssign in_0 (bvVar L0_0);
bvAssign in_8 (bvVar L0_8);
bvAssign in_16 (bvVar L0_16);
bvAssign in_24 (bvVar L0_24);
bvAssign in_32 (bvVar L0_32);
bvAssign in_40 (bvVar L0_40);
bvAssign in_48 (bvVar L0_48);
bvAssign in_56 (bvVar L0_56);

bvAssign out_0 (bvVar L1_0);
bvAssign out_8 (bvVar L1_8);
bvAssign out_16 (bvVar L1_16);
bvAssign out_24 (bvVar L1_24);
bvAssign out_32 (bvVar L1_32);
bvAssign out_40 (bvVar L1_40);
bvAssign out_48 (bvVar L1_48);
bvAssign out_56 (bvVar L1_56);


(*  %0 = load i128, i128* %in, align 16, !tbaa !2 *)
bvAssign v0_L (bvVar L0_0);
bvAssign v0_H (bvVar L0_8);
(*  %1 = load i128, i128* %out, align 16, !tbaa !2 *)
bvAssign v1_L (bvVar L1_0);
bvAssign v1_H (bvVar L1_8);
(*  %add = add i128 %1, %0 *)
bvAddC carry add_L (bvVar v1_L) (bvVar v0_L);
bvAdc add_H (bvVar v1_H) (bvVar v0_H) carry;
(*  store i128 %add, i128* %out, align 16, !tbaa !2 *)
bvAssign L1_0 (bvVar add_L);
bvAssign L1_8 (bvVar add_H);
(*  %arrayidx2 = getelementptr inbounds i128, i128* %in, i64 1 *)
(*  %2 = load i128, i128* %arrayidx2, align 16, !tbaa !2 *)
bvAssign v2_L (bvVar L0_16);
bvAssign v2_H (bvVar L0_24);
(*  %arrayidx3 = getelementptr inbounds i128, i128* %out, i64 1 *)
(*  %3 = load i128, i128* %arrayidx3, align 16, !tbaa !2 *)
bvAssign v3_L (bvVar L1_16);
bvAssign v3_H (bvVar L1_24);
(*  %add4 = add i128 %3, %2 *)
bvAddC carry add4_L (bvVar v3_L) (bvVar v2_L);
bvAdc add4_H (bvVar v3_H) (bvVar v2_H) carry;
(*  store i128 %add4, i128* %arrayidx3, align 16, !tbaa !2 *)
bvAssign L1_16 (bvVar add4_L);
bvAssign L1_24 (bvVar add4_H);
(*  %arrayidx5 = getelementptr inbounds i128, i128* %in, i64 2 *)
(*  %4 = load i128, i128* %arrayidx5, align 16, !tbaa !2 *)
bvAssign v4_L (bvVar L0_32);
bvAssign v4_H (bvVar L0_40);
(*  %arrayidx6 = getelementptr inbounds i128, i128* %out, i64 2 *)
(*  %5 = load i128, i128* %arrayidx6, align 16, !tbaa !2 *)
bvAssign v5_L (bvVar L1_32);
bvAssign v5_H (bvVar L1_40);
(*  %add7 = add i128 %5, %4 *)
bvAddC carry add7_L (bvVar v5_L) (bvVar v4_L);
bvAdc add7_H (bvVar v5_H) (bvVar v4_H) carry;
(*  store i128 %add7, i128* %arrayidx6, align 16, !tbaa !2 *)
bvAssign L1_32 (bvVar add7_L);
bvAssign L1_40 (bvVar add7_H);
(*  %arrayidx8 = getelementptr inbounds i128, i128* %in, i64 3 *)
(*  %6 = load i128, i128* %arrayidx8, align 16, !tbaa !2 *)
bvAssign v6_L (bvVar L0_48);
bvAssign v6_H (bvVar L0_56);
(*  %arrayidx9 = getelementptr inbounds i128, i128* %out, i64 3 *)
(*  %7 = load i128, i128* %arrayidx9, align 16, !tbaa !2 *)
bvAssign v7_L (bvVar L1_48);
bvAssign v7_H (bvVar L1_56);
(*  %add10 = add i128 %7, %6 *)
bvAddC carry add10_L (bvVar v7_L) (bvVar v6_L);
bvAdc add10_H (bvVar v7_H) (bvVar v6_H) carry;
(*  store i128 %add10, i128* %arrayidx9, align 16, !tbaa !2 *)
bvAssign L1_48 (bvVar add10_L);
bvAssign L1_56 (bvVar add10_H);
(*  ret void *)

(*in: L0_0, L0_8, L0_16 ... L0_56 *)
(*out: L1_0, L1_8, L1_16 ... L1_56 *)

{
  bveEqMod(limbs 64 [ bvvar in_0,
  		      bvvar in_8 + bvvar in_16,
		      bvvar in_24 + bvvar in_32,
		      bvvar in_40 + bvvar in_48,
		      bvvar in_56 ]
	   +
	   limbs 64 [ bvvar out_0,
	   	      bvvar out_8 + bvvar out_16,
		      bvvar out_24 + bvvar out_32,
		      bvvar out_40 + bvvar out_48,
		      bvvar out_56 ]	    
		    )
  	 (limbs 64 [ bvvar L1_0,
	 	     bvvar L1_8 + bvvar L1_16,
		     bvvar L1_24 + bvvar L1_32,
		     bvvar L1_40 + bvvar L1_48,
		     bvvar L1_56 ])
	 (limbs 64 [ bvconst 18446744073709551615,
                       bvconst 4294967295,
                       bvconst 0,
                       bvconst 18446744069414584321 ])
 
  |
  bvrands[
	limbs 64 [ bvrvar L1_0, bvrvar L1_8 ] <
	limbs 64 [ bvrconst 64 0, bvrconst 64 (2^45) ],
	limbs 64 [ bvrvar L1_16, bvrvar L1_24 ] <
	limbs 64 [ bvrconst 64 0, bvrconst 64 (2^45) ],
	limbs 64 [ bvrvar L1_32, bvrvar L1_40 ] <
	limbs 64 [ bvrconst 64 0, bvrconst 64 (2^45) ],
	limbs 64 [ bvrvar L1_48, bvrvar L1_56 ] <
	limbs 64 [ bvrconst 64 0, bvrconst 64 (2^45) ]
	]
}


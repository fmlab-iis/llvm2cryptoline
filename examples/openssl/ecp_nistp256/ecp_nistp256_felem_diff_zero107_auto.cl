proc main (L1_48, L1_40, L1_32, L0_32, L0_56, L1_16, L1_8, L0_48, L0_40, L0_0, L1_56, L1_24, L1_0, L0_24, L0_8, L0_16) =
{
  bveTrue
  |
  bvrTrue
}



(*  %0 = load i128, i128* %out, align 16, !tbaa !2 *)
bvAssign v0_L (bvVar L0_0);
bvAssign v0_H (bvVar L0_8);
(*  %add = add i128 %0, 162259276829213363382781917263872 *)
bvAddC carry add_L (bvVar v0_L) (bvConst 18446735277616527360);
bvAdc add_H (bvVar v0_H) (bvConst 8796093022207) carry;
(*  store i128 %add, i128* %out, align 16, !tbaa !2 *)
bvAssign L0_0 (bvVar add_L);
bvAssign L0_8 (bvVar add_H);
(*  %arrayidx1 = getelementptr inbounds i128, i128* %out, i64 1 *)
(*  %1 = load i128, i128* %arrayidx1, align 16, !tbaa !2 *)
bvAssign v1_L (bvVar L0_16);
bvAssign v1_H (bvVar L0_24);
(*  %add2 = add i128 %1, 162259276829213363391578010288128 *)
bvAddC carry add2_L (bvVar v1_L) (bvConst 0);
bvAdc add2_H (bvVar v1_H) (bvConst 8796093022208) carry;
(*  store i128 %add2, i128* %arrayidx1, align 16, !tbaa !2 *)
bvAssign L0_16 (bvVar add2_L);
bvAssign L0_24 (bvVar add2_H);
(*  %arrayidx3 = getelementptr inbounds i128, i128* %out, i64 2 *)
(*  %2 = load i128, i128* %arrayidx3, align 16, !tbaa !2 *)
bvAssign v2_L (bvVar L0_32);
bvAssign v2_H (bvVar L0_40);
(*  %add4 = add i128 %2, 162259276829213363382781917267968 *)
bvAddC carry add4_L (bvVar v2_L) (bvConst 18446735277616531456);
bvAdc add4_H (bvVar v2_H) (bvConst 8796093022207) carry;
(*  store i128 %add4, i128* %arrayidx3, align 16, !tbaa !2 *)
bvAssign L0_32 (bvVar add4_L);
bvAssign L0_40 (bvVar add4_H);
(*  %arrayidx5 = getelementptr inbounds i128, i128* %out, i64 3 *)
(*  %3 = load i128, i128* %arrayidx5, align 16, !tbaa !2 *)
bvAssign v3_L (bvVar L0_48);
bvAssign v3_H (bvVar L0_56);
(*  %add6 = add i128 %3, 162259276829213363382781917267968 *)
bvAddC carry add6_L (bvVar v3_L) (bvConst 18446735277616531456);
bvAdc add6_H (bvVar v3_H) (bvConst 8796093022207) carry;
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


{
  bveTrue
  |
  bvrTrue
}


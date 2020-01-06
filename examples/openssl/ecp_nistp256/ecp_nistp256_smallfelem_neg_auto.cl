proc main (L0_24, L0_8, L0_16, L0_0) =
{
  bveTrue
  |
  bvrTrue
}



(*  %0 = load i64, i64* %small, align 8, !tbaa !2 *)
bvAssign v0 (bvVar L0_0);
(*  %conv = zext i64 %0 to i128 *)
bvAssign conv_L (bvVar v0);
bvAssign conv_H (bvConst 0);
(*  %sub = sub nsw i128 40564819207303340845695479315968, %conv *)
bvSubC carry sub_L (bvConst 18446741874686295552) (bvVar conv_L);
bvSbb sub_H (bvConst 2199023255551) (bvVar conv_H) carry;
(*  store i128 %sub, i128* %out, align 16, !tbaa !6 *)
bvAssign L1_0 (bvVar sub_L);
bvAssign L1_8 (bvVar sub_H);
(*  %arrayidx2 = getelementptr inbounds i64, i64* %small, i64 1 *)
(*  %1 = load i64, i64* %arrayidx2, align 8, !tbaa !2 *)
bvAssign v1 (bvVar L0_8);
(*  %conv3 = zext i64 %1 to i128 *)
bvAssign conv3_L (bvVar v1);
bvAssign conv3_H (bvConst 0);
(*  %sub4 = sub nsw i128 40564819207303340847894502572032, %conv3 *)
bvSubC carry sub4_L (bvConst 0) (bvVar conv3_L);
bvSbb sub4_H (bvConst 2199023255552) (bvVar conv3_H) carry;
(*  %arrayidx5 = getelementptr inbounds i128, i128* %out, i64 1 *)
(*  store i128 %sub4, i128* %arrayidx5, align 16, !tbaa !6 *)
bvAssign L1_16 (bvVar sub4_L);
bvAssign L1_24 (bvVar sub4_H);
(*  %arrayidx6 = getelementptr inbounds i64, i64* %small, i64 2 *)
(*  %2 = load i64, i64* %arrayidx6, align 8, !tbaa !2 *)
bvAssign v2 (bvVar L0_16);
(*  %conv7 = zext i64 %2 to i128 *)
bvAssign conv7_L (bvVar v2);
bvAssign conv7_H (bvConst 0);
(*  %sub8 = sub nsw i128 40564819207303340845695479316992, %conv7 *)
bvSubC carry sub8_L (bvConst 18446741874686296576) (bvVar conv7_L);
bvSbb sub8_H (bvConst 2199023255551) (bvVar conv7_H) carry;
(*  %arrayidx9 = getelementptr inbounds i128, i128* %out, i64 2 *)
(*  store i128 %sub8, i128* %arrayidx9, align 16, !tbaa !6 *)
bvAssign L1_32 (bvVar sub8_L);
bvAssign L1_40 (bvVar sub8_H);
(*  %arrayidx10 = getelementptr inbounds i64, i64* %small, i64 3 *)
(*  %3 = load i64, i64* %arrayidx10, align 8, !tbaa !2 *)
bvAssign v3 (bvVar L0_24);
(*  %conv11 = zext i64 %3 to i128 *)
bvAssign conv11_L (bvVar v3);
bvAssign conv11_H (bvConst 0);
(*  %sub12 = sub nsw i128 40564819207303340845695479316992, %conv11 *)
bvSubC carry sub12_L (bvConst 18446741874686296576) (bvVar conv11_L);
bvSbb sub12_H (bvConst 2199023255551) (bvVar conv11_H) carry;
(*  %arrayidx13 = getelementptr inbounds i128, i128* %out, i64 3 *)
(*  store i128 %sub12, i128* %arrayidx13, align 16, !tbaa !6 *)
bvAssign L1_48 (bvVar sub12_L);
bvAssign L1_56 (bvVar sub12_H);
(*  ret void *)


{
  bveTrue
  |
  bvrTrue
}


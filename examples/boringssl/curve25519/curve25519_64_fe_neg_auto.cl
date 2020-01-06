proc main (L0_32, L0_24, L0_8, L0_16, L0_0) =
{
  true
  &&
  true
}



(*   %0 = bitcast %struct.fe* %f to <2 x i64>*, !dbg !1353 *)
(*   %1 = load <2 x i64>, <2 x i64>* %0, align 8, !dbg !1353, !tbaa !1354 *)
mov v1_0 L0_0;
mov v1_1 L0_8;
(*   %2 = sub <2 x i64> <i64 4503599627370458, i64 4503599627370494>, %1, !dbg !1358 *)
sub v2_0 4503599627370458 v1_0;
sub v2_1 4503599627370494 v1_1;
(*   %arrayidx3.i = getelementptr inbounds %struct.fe, %struct.fe* %f, i64 0, i32 0, i64 2, !dbg !1360 *)
(*   %3 = bitcast i64* %arrayidx3.i to <2 x i64>*, !dbg !1360 *)
(*   %4 = load <2 x i64>, <2 x i64>* %3, align 8, !dbg !1360, !tbaa !1354 *)
mov v4_0 L0_16;
mov v4_1 L0_24;
(*   %5 = sub <2 x i64> <i64 4503599627370494, i64 4503599627370494>, %4, !dbg !1362 *)
sub v5_0 4503599627370494 v4_0;
sub v5_1 4503599627370494 v4_1;
(*   %arrayidx7.i = getelementptr inbounds %struct.fe, %struct.fe* %f, i64 0, i32 0, i64 4, !dbg !1364 *)
(*   %6 = load i64, i64* %arrayidx7.i, align 8, !dbg !1364, !tbaa !1354 *)
mov v6 L0_32;
(*   %sub8.i = sub i64 4503599627370494, %6, !dbg !1365 *)
sub v_sub8_i 4503599627370494 v6;
(*   %7 = bitcast %struct.fe_loose* %h to <2 x i64>*, !dbg !1367 *)
(*   store <2 x i64> %2, <2 x i64>* %7, align 8, !dbg !1367, !tbaa !1354 *)
mov L1_0 v2_0;
mov L1_8 v2_1;
(*   %arrayidx11.i = getelementptr inbounds %struct.fe_loose, %struct.fe_loose* %h, i64 0, i32 0, i64 2, !dbg !1368 *)
(*   %8 = bitcast i64* %arrayidx11.i to <2 x i64>*, !dbg !1369 *)
(*   store <2 x i64> %5, <2 x i64>* %8, align 8, !dbg !1369, !tbaa !1354 *)
mov L1_16 v5_0;
mov L1_24 v5_1;
(*   %arrayidx13.i = getelementptr inbounds %struct.fe_loose, %struct.fe_loose* %h, i64 0, i32 0, i64 4, !dbg !1370 *)
(*   store i64 %sub8.i, i64* %arrayidx13.i, align 8, !dbg !1371, !tbaa !1354 *)
mov L1_32 v_sub8_i;
(*   ret void, !dbg !1374 *)


{
  true
  &&
  true
}


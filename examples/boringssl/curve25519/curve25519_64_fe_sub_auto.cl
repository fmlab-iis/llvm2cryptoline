proc main (L1_32, L1_24, L1_16, L1_8, L0_24, L1_0, L0_8, L0_16, L0_32, L0_0) =
{
  true
  &&
  true
}



(*   %0 = bitcast %struct.fe* %f to <2 x i64>*, !dbg !1354 *)
(*   %1 = load <2 x i64>, <2 x i64>* %0, align 8, !dbg !1354, !tbaa !1355 *)
mov v1_0 L0_0;
mov v1_1 L0_8;
(*   %2 = add <2 x i64> %1, <i64 4503599627370458, i64 4503599627370494>, !dbg !1359 *)
add v2_0 v1_0 4503599627370458;
add v2_1 v1_1 4503599627370494;
(*   %3 = bitcast %struct.fe* %g to <2 x i64>*, !dbg !1360 *)
(*   %4 = load <2 x i64>, <2 x i64>* %3, align 8, !dbg !1360, !tbaa !1355 *)
mov v4_0 L1_0;
mov v4_1 L1_8;
(*   %5 = sub <2 x i64> %2, %4, !dbg !1361 *)
sub v5_0 v2_0 v4_0;
sub v5_1 v2_1 v4_1;
(*   %arrayidx6.i = getelementptr inbounds %struct.fe, %struct.fe* %f, i64 0, i32 0, i64 2, !dbg !1363 *)
(*   %arrayidx8.i = getelementptr inbounds %struct.fe, %struct.fe* %g, i64 0, i32 0, i64 2, !dbg !1364 *)
(*   %6 = bitcast i64* %arrayidx6.i to <2 x i64>*, !dbg !1363 *)
(*   %7 = load <2 x i64>, <2 x i64>* %6, align 8, !dbg !1363, !tbaa !1355 *)
mov v7_0 L0_16;
mov v7_1 L0_24;
(*   %8 = add <2 x i64> %7, <i64 4503599627370494, i64 4503599627370494>, !dbg !1366 *)
add v8_0 v7_0 4503599627370494;
add v8_1 v7_1 4503599627370494;
(*   %9 = bitcast i64* %arrayidx8.i to <2 x i64>*, !dbg !1364 *)
(*   %10 = load <2 x i64>, <2 x i64>* %9, align 8, !dbg !1364, !tbaa !1355 *)
mov v10_0 L1_16;
mov v10_1 L1_24;
(*   %11 = sub <2 x i64> %8, %10, !dbg !1367 *)
sub v11_0 v8_0 v10_0;
sub v11_1 v8_1 v10_1;
(*   %arrayidx14.i = getelementptr inbounds %struct.fe, %struct.fe* %f, i64 0, i32 0, i64 4, !dbg !1369 *)
(*   %12 = load i64, i64* %arrayidx14.i, align 8, !dbg !1369, !tbaa !1355 *)
mov v12 L0_32;
(*   %add15.i = add i64 %12, 4503599627370494, !dbg !1370 *)
add v_add15_i v12 4503599627370494;
(*   %arrayidx16.i = getelementptr inbounds %struct.fe, %struct.fe* %g, i64 0, i32 0, i64 4, !dbg !1371 *)
(*   %13 = load i64, i64* %arrayidx16.i, align 8, !dbg !1371, !tbaa !1355 *)
mov v13 L1_32;
(*   %sub17.i = sub i64 %add15.i, %13, !dbg !1372 *)
sub v_sub17_i v_add15_i v13;
(*   %14 = bitcast %struct.fe_loose* %h to <2 x i64>*, !dbg !1374 *)
(*   store <2 x i64> %5, <2 x i64>* %14, align 8, !dbg !1374, !tbaa !1355 *)
mov L2_0 v5_0;
mov L2_8 v5_1;
(*   %arrayidx20.i = getelementptr inbounds %struct.fe_loose, %struct.fe_loose* %h, i64 0, i32 0, i64 2, !dbg !1375 *)
(*   %15 = bitcast i64* %arrayidx20.i to <2 x i64>*, !dbg !1376 *)
(*   store <2 x i64> %11, <2 x i64>* %15, align 8, !dbg !1376, !tbaa !1355 *)
mov L2_16 v11_0;
mov L2_24 v11_1;
(*   %arrayidx22.i = getelementptr inbounds %struct.fe_loose, %struct.fe_loose* %h, i64 0, i32 0, i64 4, !dbg !1377 *)
(*   store i64 %sub17.i, i64* %arrayidx22.i, align 8, !dbg !1378, !tbaa !1355 *)
mov L2_32 v_sub17_i;
(*   ret void, !dbg !1381 *)


{
  true
  &&
  true
}


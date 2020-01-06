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
(*   %2 = bitcast %struct.fe* %g to <2 x i64>*, !dbg !1359 *)
(*   %3 = load <2 x i64>, <2 x i64>* %2, align 8, !dbg !1359, !tbaa !1355 *)
mov v3_0 L1_0;
mov v3_1 L1_8;
(*   %4 = add <2 x i64> %3, %1, !dbg !1360 *)
add v4_0 v3_0 v1_0;
add v4_1 v3_1 v1_1;
(*   %arrayidx5.i = getelementptr inbounds %struct.fe, %struct.fe* %f, i64 0, i32 0, i64 2, !dbg !1362 *)
(*   %arrayidx6.i = getelementptr inbounds %struct.fe, %struct.fe* %g, i64 0, i32 0, i64 2, !dbg !1363 *)
(*   %5 = bitcast i64* %arrayidx5.i to <2 x i64>*, !dbg !1362 *)
(*   %6 = load <2 x i64>, <2 x i64>* %5, align 8, !dbg !1362, !tbaa !1355 *)
mov v6_0 L0_16;
mov v6_1 L0_24;
(*   %7 = bitcast i64* %arrayidx6.i to <2 x i64>*, !dbg !1363 *)
(*   %8 = load <2 x i64>, <2 x i64>* %7, align 8, !dbg !1363, !tbaa !1355 *)
mov v8_0 L1_16;
mov v8_1 L1_24;
(*   %9 = add <2 x i64> %8, %6, !dbg !1365 *)
add v9_0 v8_0 v6_0;
add v9_1 v8_1 v6_1;
(*   %arrayidx11.i = getelementptr inbounds %struct.fe, %struct.fe* %f, i64 0, i32 0, i64 4, !dbg !1367 *)
(*   %10 = load i64, i64* %arrayidx11.i, align 8, !dbg !1367, !tbaa !1355 *)
mov v10 L0_32;
(*   %arrayidx12.i = getelementptr inbounds %struct.fe, %struct.fe* %g, i64 0, i32 0, i64 4, !dbg !1368 *)
(*   %11 = load i64, i64* %arrayidx12.i, align 8, !dbg !1368, !tbaa !1355 *)
mov v11 L1_32;
(*   %add13.i = add i64 %11, %10, !dbg !1369 *)
add v_add13_i v11 v10;
(*   %12 = bitcast %struct.fe_loose* %h to <2 x i64>*, !dbg !1371 *)
(*   store <2 x i64> %4, <2 x i64>* %12, align 8, !dbg !1371, !tbaa !1355 *)
mov L2_0 v4_0;
mov L2_8 v4_1;
(*   %arrayidx16.i = getelementptr inbounds %struct.fe_loose, %struct.fe_loose* %h, i64 0, i32 0, i64 2, !dbg !1372 *)
(*   %13 = bitcast i64* %arrayidx16.i to <2 x i64>*, !dbg !1373 *)
(*   store <2 x i64> %9, <2 x i64>* %13, align 8, !dbg !1373, !tbaa !1355 *)
mov L2_16 v9_0;
mov L2_24 v9_1;
(*   %arrayidx18.i = getelementptr inbounds %struct.fe_loose, %struct.fe_loose* %h, i64 0, i32 0, i64 4, !dbg !1374 *)
(*   store i64 %add13.i, i64* %arrayidx18.i, align 8, !dbg !1375, !tbaa !1355 *)
mov L2_32 v_add13_i;
(*   ret void, !dbg !1378 *)


{
  true
  &&
  true
}


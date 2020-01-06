(* quine: -isafety -jobs 1
         Overall                        [OK]            0.069281 seconds
Verifying range specification:          [OK]            0.082931 seconds
Verifying algebraic specification:      [OK]            0.025825 seconds
Verification result:                    [OK]            0.179045 seconds
*)

(* mac: -isafety -jobs 1
	 Overall			[OK]		0.136489 seconds
Verifying range specification:		[OK]		0.130571 seconds
Verifying algebraic specification:	[OK]		0.043337 seconds
Verification result:			[OK]		0.311206 seconds
*)

proc main (a0, a1, a2, a3, a4) =
{
  true
  &&
  and [
    a0 <= const 64 0x8cccccccccccc,
    a1 <= const 64 0x8cccccccccccc,
    a2 <= const 64 0x8cccccccccccc,
    a3 <= const 64 0x8cccccccccccc,
    a4 <= const 64 0x8cccccccccccc
  ]
}

mov L0_0 a0;
mov L0_8 a1;
mov L0_16 a2;
mov L0_24 a3;
mov L0_32 a4;

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

mov c0 L1_0;
mov c1 L1_8;
mov c2 L1_16;
mov c3 L1_24;
mov c4 L1_32;


{
  eqmod
    (
      (limbs 51 [c0, c1, c2, c3, c4])
      +
      (limbs 51 [a0, a1, a2, a3, a4])
    )

    0

    ((limbs 255 [0, 1]) - 19)
  &&
  and [
    c0 <= const 64 0x1a666666666664,
    c1 <= const 64 0x1a666666666664,
    c2 <= const 64 0x1a666666666664,
    c3 <= const 64 0x1a666666666664,
    c4 <= const 64 0x1a666666666664
  ]
}


; ModuleID = 'lib/low/KeccakP-1600/ref-64bits/KeccakP-1600-reference.c'
source_filename = "lib/low/KeccakP-1600/ref-64bits/KeccakP-1600-reference.c"
target datalayout = "e-m:o-p:32:32-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-apple-macosx10.17.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"RC[%02i][0][0] = \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%08X\00", align 1
@KeccakRoundConstants = internal unnamed_addr constant [24 x i64] [i64 1, i64 32898, i64 -9223372036854742902, i64 -9223372034707259392, i64 32907, i64 2147483649, i64 -9223372034707259263, i64 -9223372036854743031, i64 138, i64 136, i64 2147516425, i64 2147483658, i64 2147516555, i64 -9223372036854775669, i64 -9223372036854742903, i64 -9223372036854743037, i64 -9223372036854743038, i64 -9223372036854775680, i64 32778, i64 -9223372034707292150, i64 -9223372034707259263, i64 -9223372036854742912, i64 2147483649, i64 -9223372034707259384], align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"RhoOffset[%i][%i] = \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%2i\00", align 1
@KeccakRhoOffsets = internal unnamed_addr constant [25 x i32] [i32 0, i32 1, i32 62, i32 28, i32 27, i32 36, i32 44, i32 6, i32 55, i32 20, i32 3, i32 10, i32 43, i32 25, i32 39, i32 41, i32 45, i32 15, i32 21, i32 8, i32 18, i32 2, i32 61, i32 56, i32 14], align 4

; Function Attrs: nounwind ssp
define void @KeccakP1600_Initialize(i8* %state) local_unnamed_addr #0 {
entry:
  %0 = tail call i32 @llvm.objectsize.i32.p0i8(i8* %state, i1 false, i1 true)
  %call = tail call i8* @__memset_chk(i8* %state, i32 0, i32 200, i32 %0) #4
  ret void
}

; Function Attrs: nounwind
declare i8* @__memset_chk(i8*, i32, i32, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare i32 @llvm.objectsize.i32.p0i8(i8*, i1, i1) #2

; Function Attrs: norecurse nounwind ssp
define void @KeccakP1600_AddByte(i8* nocapture %state, i8 zeroext %byte, i32 %offset) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %state, i32 %offset
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %xor3 = xor i8 %0, %byte
  store i8 %xor3, i8* %arrayidx, align 1, !tbaa !4
  ret void
}

; Function Attrs: norecurse nounwind ssp
define void @KeccakP1600_AddBytes(i8* nocapture %state, i8* nocapture readonly %data, i32 %offset, i32 %length) local_unnamed_addr #3 {
entry:
  %cmp9 = icmp eq i32 %length, 0
  br i1 %cmp9, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %i.010 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8, i8* %data, i32 %i.010
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %add = add i32 %i.010, %offset
  %arrayidx1 = getelementptr inbounds i8, i8* %state, i32 %add
  %1 = load i8, i8* %arrayidx1, align 1, !tbaa !4
  %xor8 = xor i8 %1, %0
  store i8 %xor8, i8* %arrayidx1, align 1, !tbaa !4
  %inc = add nuw i32 %i.010, 1
  %exitcond = icmp eq i32 %inc, %length
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind ssp
define void @KeccakP1600_OverwriteBytes(i8* %state, i8* %data, i32 %offset, i32 %length) local_unnamed_addr #0 {
entry:
  %add.ptr = getelementptr inbounds i8, i8* %state, i32 %offset
  %0 = tail call i32 @llvm.objectsize.i32.p0i8(i8* %add.ptr, i1 false, i1 true)
  %call = tail call i8* @__memcpy_chk(i8* %add.ptr, i8* %data, i32 %length, i32 %0) #4
  ret void
}

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i32, i32) local_unnamed_addr #1

; Function Attrs: nounwind ssp
define void @KeccakP1600_OverwriteWithZeroes(i8* %state, i32 %byteCount) local_unnamed_addr #0 {
entry:
  %0 = tail call i32 @llvm.objectsize.i32.p0i8(i8* %state, i1 false, i1 true)
  %call = tail call i8* @__memset_chk(i8* %state, i32 0, i32 %byteCount, i32 %0) #4
  ret void
}

; Function Attrs: nounwind ssp
define void @KeccakP1600_Permute_Nrounds(i8* %state, i32 %nrounds) local_unnamed_addr #0 {
entry:
  %0 = bitcast i8* %state to i64*
  %sub.i = sub i32 24, %nrounds
  %cmp4.i = icmp ult i32 %sub.i, 24
  br i1 %cmp4.i, label %for.body.i, label %KeccakP1600OnWords.exit

for.body.i:                                       ; preds = %entry, %for.body.i
  %i.05.i = phi i32 [ %inc.i, %for.body.i ], [ %sub.i, %entry ]
  tail call void @KeccakP1600Round(i64* %0, i32 %i.05.i) #4
  %inc.i = add i32 %i.05.i, 1
  %exitcond.i = icmp eq i32 %inc.i, 24
  br i1 %exitcond.i, label %KeccakP1600OnWords.exit, label %for.body.i

KeccakP1600OnWords.exit:                          ; preds = %for.body.i, %entry
  ret void
}

; Function Attrs: nounwind ssp
define void @KeccakP1600OnWords(i64* %state, i32 %nrRounds) local_unnamed_addr #0 {
entry:
  %sub = sub i32 24, %nrRounds
  %cmp4 = icmp ult i32 %sub, 24
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %i.05 = phi i32 [ %inc, %for.body ], [ %sub, %entry ]
  tail call void @KeccakP1600Round(i64* %state, i32 %i.05)
  %inc = add i32 %i.05, 1
  %exitcond = icmp eq i32 %inc, 24
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind ssp
define void @KeccakP1600_Permute_12rounds(i8* %state) local_unnamed_addr #0 {
entry:
  %0 = bitcast i8* %state to i64*
  tail call void @KeccakP1600Round(i64* %0, i32 12) #4
  tail call void @KeccakP1600Round(i64* %0, i32 13) #4
  tail call void @KeccakP1600Round(i64* %0, i32 14) #4
  tail call void @KeccakP1600Round(i64* %0, i32 15) #4
  tail call void @KeccakP1600Round(i64* %0, i32 16) #4
  tail call void @KeccakP1600Round(i64* %0, i32 17) #4
  tail call void @KeccakP1600Round(i64* %0, i32 18) #4
  tail call void @KeccakP1600Round(i64* %0, i32 19) #4
  tail call void @KeccakP1600Round(i64* %0, i32 20) #4
  tail call void @KeccakP1600Round(i64* %0, i32 21) #4
  tail call void @KeccakP1600Round(i64* %0, i32 22) #4
  tail call void @KeccakP1600Round(i64* %0, i32 23) #4
  ret void
}

; Function Attrs: nounwind ssp
define void @KeccakP1600_Permute_24rounds(i8* %state) local_unnamed_addr #0 {
entry:
  %0 = bitcast i8* %state to i64*
  tail call void @KeccakP1600Round(i64* %0, i32 0) #4
  tail call void @KeccakP1600Round(i64* %0, i32 1) #4
  tail call void @KeccakP1600Round(i64* %0, i32 2) #4
  tail call void @KeccakP1600Round(i64* %0, i32 3) #4
  tail call void @KeccakP1600Round(i64* %0, i32 4) #4
  tail call void @KeccakP1600Round(i64* %0, i32 5) #4
  tail call void @KeccakP1600Round(i64* %0, i32 6) #4
  tail call void @KeccakP1600Round(i64* %0, i32 7) #4
  tail call void @KeccakP1600Round(i64* %0, i32 8) #4
  tail call void @KeccakP1600Round(i64* %0, i32 9) #4
  tail call void @KeccakP1600Round(i64* %0, i32 10) #4
  tail call void @KeccakP1600Round(i64* %0, i32 11) #4
  tail call void @KeccakP1600Round(i64* %0, i32 12) #4
  tail call void @KeccakP1600Round(i64* %0, i32 13) #4
  tail call void @KeccakP1600Round(i64* %0, i32 14) #4
  tail call void @KeccakP1600Round(i64* %0, i32 15) #4
  tail call void @KeccakP1600Round(i64* %0, i32 16) #4
  tail call void @KeccakP1600Round(i64* %0, i32 17) #4
  tail call void @KeccakP1600Round(i64* %0, i32 18) #4
  tail call void @KeccakP1600Round(i64* %0, i32 19) #4
  tail call void @KeccakP1600Round(i64* %0, i32 20) #4
  tail call void @KeccakP1600Round(i64* %0, i32 21) #4
  tail call void @KeccakP1600Round(i64* %0, i32 22) #4
  tail call void @KeccakP1600Round(i64* %0, i32 23) #4
  ret void
}

; Function Attrs: nounwind ssp
define void @KeccakP1600Round(i64* %state, i32 %indexRound) local_unnamed_addr #0 {
entry:
  %0 = load i64, i64* %state, align 4, !tbaa !7
  %arrayidx5.1.i = getelementptr i64, i64* %state, i32 5
  %1 = load i64, i64* %arrayidx5.1.i, align 4, !tbaa !7
  %xor.1.i = xor i64 %1, %0
  %arrayidx5.2.i = getelementptr i64, i64* %state, i32 10
  %2 = load i64, i64* %arrayidx5.2.i, align 4, !tbaa !7
  %xor.2.i = xor i64 %xor.1.i, %2
  %arrayidx5.3.i = getelementptr i64, i64* %state, i32 15
  %3 = load i64, i64* %arrayidx5.3.i, align 4, !tbaa !7
  %xor.3.i = xor i64 %xor.2.i, %3
  %arrayidx5.4.i = getelementptr i64, i64* %state, i32 20
  %4 = load i64, i64* %arrayidx5.4.i, align 4, !tbaa !7
  %xor.4.i = xor i64 %xor.3.i, %4
  %arrayidx5.187.i = getelementptr inbounds i64, i64* %state, i32 1
  %5 = load i64, i64* %arrayidx5.187.i, align 4, !tbaa !7
  %arrayidx5.1.1.i = getelementptr inbounds i64, i64* %state, i32 6
  %6 = load i64, i64* %arrayidx5.1.1.i, align 4, !tbaa !7
  %xor.1.1.i = xor i64 %6, %5
  %arrayidx5.2.1.i = getelementptr inbounds i64, i64* %state, i32 11
  %7 = load i64, i64* %arrayidx5.2.1.i, align 4, !tbaa !7
  %xor.2.1.i = xor i64 %xor.1.1.i, %7
  %arrayidx5.3.1.i = getelementptr inbounds i64, i64* %state, i32 16
  %8 = load i64, i64* %arrayidx5.3.1.i, align 4, !tbaa !7
  %xor.3.1.i = xor i64 %xor.2.1.i, %8
  %arrayidx5.4.1.i = getelementptr inbounds i64, i64* %state, i32 21
  %9 = load i64, i64* %arrayidx5.4.1.i, align 4, !tbaa !7
  %xor.4.1.i = xor i64 %xor.3.1.i, %9
  %arrayidx5.288.i = getelementptr inbounds i64, i64* %state, i32 2
  %10 = load i64, i64* %arrayidx5.288.i, align 4, !tbaa !7
  %arrayidx5.1.2.i = getelementptr inbounds i64, i64* %state, i32 7
  %11 = load i64, i64* %arrayidx5.1.2.i, align 4, !tbaa !7
  %xor.1.2.i = xor i64 %11, %10
  %arrayidx5.2.2.i = getelementptr inbounds i64, i64* %state, i32 12
  %12 = load i64, i64* %arrayidx5.2.2.i, align 4, !tbaa !7
  %xor.2.2.i = xor i64 %xor.1.2.i, %12
  %arrayidx5.3.2.i = getelementptr inbounds i64, i64* %state, i32 17
  %13 = load i64, i64* %arrayidx5.3.2.i, align 4, !tbaa !7
  %xor.3.2.i = xor i64 %xor.2.2.i, %13
  %arrayidx5.4.2.i = getelementptr inbounds i64, i64* %state, i32 22
  %14 = load i64, i64* %arrayidx5.4.2.i, align 4, !tbaa !7
  %xor.4.2.i = xor i64 %xor.3.2.i, %14
  %arrayidx5.389.i = getelementptr inbounds i64, i64* %state, i32 3
  %15 = load i64, i64* %arrayidx5.389.i, align 4, !tbaa !7
  %arrayidx5.1.3.i = getelementptr inbounds i64, i64* %state, i32 8
  %16 = load i64, i64* %arrayidx5.1.3.i, align 4, !tbaa !7
  %xor.1.3.i = xor i64 %16, %15
  %arrayidx5.2.3.i = getelementptr inbounds i64, i64* %state, i32 13
  %17 = load i64, i64* %arrayidx5.2.3.i, align 4, !tbaa !7
  %xor.2.3.i = xor i64 %xor.1.3.i, %17
  %arrayidx5.3.3.i = getelementptr inbounds i64, i64* %state, i32 18
  %18 = load i64, i64* %arrayidx5.3.3.i, align 4, !tbaa !7
  %xor.3.3.i = xor i64 %xor.2.3.i, %18
  %arrayidx5.4.3.i = getelementptr inbounds i64, i64* %state, i32 23
  %19 = load i64, i64* %arrayidx5.4.3.i, align 4, !tbaa !7
  %xor.4.3.i = xor i64 %xor.3.3.i, %19
  %arrayidx5.490.i = getelementptr inbounds i64, i64* %state, i32 4
  %20 = load i64, i64* %arrayidx5.490.i, align 4, !tbaa !7
  %arrayidx5.1.4.i = getelementptr inbounds i64, i64* %state, i32 9
  %21 = load i64, i64* %arrayidx5.1.4.i, align 4, !tbaa !7
  %xor.1.4.i = xor i64 %21, %20
  %arrayidx5.2.4.i = getelementptr inbounds i64, i64* %state, i32 14
  %22 = load i64, i64* %arrayidx5.2.4.i, align 4, !tbaa !7
  %xor.2.4.i = xor i64 %xor.1.4.i, %22
  %arrayidx5.3.4.i = getelementptr inbounds i64, i64* %state, i32 19
  %23 = load i64, i64* %arrayidx5.3.4.i, align 4, !tbaa !7
  %xor.3.4.i = xor i64 %xor.2.4.i, %23
  %arrayidx5.4.4.i = getelementptr inbounds i64, i64* %state, i32 24
  %24 = load i64, i64* %arrayidx5.4.4.i, align 4, !tbaa !7
  %xor.4.4.i = xor i64 %xor.3.4.i, %24
  %shl.i = shl i64 %xor.4.1.i, 1
  %shr.i = lshr i64 %xor.4.1.i, 63
  %xor1968.i = or i64 %shl.i, %shr.i
  %xor23.i = xor i64 %xor.4.4.i, %xor1968.i
  %shl.1.i = shl i64 %xor.4.2.i, 1
  %shr.1.i = lshr i64 %xor.4.2.i, 63
  %xor1968.1.i = or i64 %shl.1.i, %shr.1.i
  %xor23.1.i = xor i64 %xor1968.1.i, %xor.4.i
  %shl.2.i = shl i64 %xor.4.3.i, 1
  %shr.2.i = lshr i64 %xor.4.3.i, 63
  %xor1968.2.i = or i64 %shl.2.i, %shr.2.i
  %xor23.2.i = xor i64 %xor1968.2.i, %xor.4.1.i
  %shl.3.i = shl i64 %xor.4.4.i, 1
  %shr.3.i = lshr i64 %xor.4.4.i, 63
  %xor1968.3.i = or i64 %shl.3.i, %shr.3.i
  %xor23.3.i = xor i64 %xor1968.3.i, %xor.4.2.i
  %shl.4.i = shl i64 %xor.4.i, 1
  %shr.4.i = lshr i64 %xor.4.i, 63
  %xor1968.4.i = or i64 %shl.4.i, %shr.4.i
  %xor23.4.i = xor i64 %xor.4.3.i, %xor1968.4.i
  %xor40.i = xor i64 %xor23.i, %0
  %xor40.1.i = xor i64 %xor23.i, %1
  %xor40.2.i = xor i64 %xor23.i, %2
  %xor40.3.i = xor i64 %xor23.i, %3
  %xor40.4.i = xor i64 %xor23.i, %4
  %xor40.180.i = xor i64 %xor23.1.i, %5
  %xor40.1.1.i = xor i64 %xor23.1.i, %6
  %xor40.2.1.i = xor i64 %xor23.1.i, %7
  %xor40.3.1.i = xor i64 %xor23.1.i, %8
  %xor40.4.1.i = xor i64 %xor23.1.i, %9
  %xor40.282.i = xor i64 %xor23.2.i, %10
  %xor40.1.2.i = xor i64 %xor23.2.i, %11
  %xor40.2.2.i = xor i64 %xor23.2.i, %12
  %xor40.3.2.i = xor i64 %xor23.2.i, %13
  %xor40.4.2.i = xor i64 %xor23.2.i, %14
  %xor40.384.i = xor i64 %xor23.3.i, %15
  %xor40.1.3.i = xor i64 %xor23.3.i, %16
  %xor40.2.3.i = xor i64 %xor23.3.i, %17
  %xor40.3.3.i = xor i64 %xor23.3.i, %18
  %xor40.4.3.i = xor i64 %xor23.3.i, %19
  %xor40.486.i = xor i64 %xor23.4.i, %20
  %xor40.1.4.i = xor i64 %21, %xor23.4.i
  %xor40.2.4.i = xor i64 %22, %xor23.4.i
  %xor40.3.4.i = xor i64 %23, %xor23.4.i
  %xor40.4.4.i = xor i64 %24, %xor23.4.i
  %shl.1.i11 = shl i64 %xor40.1.i, 36
  %shr.1.i12 = lshr i64 %xor40.1.i, 28
  %xor.1104.i = or i64 %shr.1.i12, %shl.1.i11
  %shl.2.i13 = shl i64 %xor40.2.i, 3
  %shr.2.i14 = lshr i64 %xor40.2.i, 61
  %xor.2105.i = or i64 %shr.2.i14, %shl.2.i13
  %shl.3.i15 = shl i64 %xor40.3.i, 41
  %shr.3.i16 = lshr i64 %xor40.3.i, 23
  %xor.3106.i = or i64 %shr.3.i16, %shl.3.i15
  %shl.4.i17 = shl i64 %xor40.4.i, 18
  %shr.4.i18 = lshr i64 %xor40.4.i, 46
  %xor.4107.i = or i64 %shr.4.i18, %shl.4.i17
  %shl.163.i = shl i64 %xor40.180.i, 1
  %shr.166.i = lshr i64 %xor40.180.i, 63
  %xor.167108.i = or i64 %shr.166.i, %shl.163.i
  %shl.1.1.i = shl i64 %xor40.1.1.i, 44
  %shr.1.1.i = lshr i64 %xor40.1.1.i, 20
  %xor.1.1109.i = or i64 %shr.1.1.i, %shl.1.1.i
  %shl.2.1.i = shl i64 %xor40.2.1.i, 10
  %shr.2.1.i = lshr i64 %xor40.2.1.i, 54
  %xor.2.1110.i = or i64 %shr.2.1.i, %shl.2.1.i
  %shl.3.1.i = shl i64 %xor40.3.1.i, 45
  %shr.3.1.i = lshr i64 %xor40.3.1.i, 19
  %xor.3.1111.i = or i64 %shr.3.1.i, %shl.3.1.i
  %shl.4.1.i = shl i64 %xor40.4.1.i, 2
  %shr.4.1.i = lshr i64 %xor40.4.1.i, 62
  %xor.4.1112.i = or i64 %shr.4.1.i, %shl.4.1.i
  %shl.274.i = shl i64 %xor40.282.i, 62
  %shr.277.i = lshr i64 %xor40.282.i, 2
  %xor.278113.i = or i64 %shr.277.i, %shl.274.i
  %shl.1.2.i = shl i64 %xor40.1.2.i, 6
  %shr.1.2.i = lshr i64 %xor40.1.2.i, 58
  %xor.1.2114.i = or i64 %shr.1.2.i, %shl.1.2.i
  %shl.2.2.i = shl i64 %xor40.2.2.i, 43
  %shr.2.2.i = lshr i64 %xor40.2.2.i, 21
  %xor.2.2115.i = or i64 %shr.2.2.i, %shl.2.2.i
  %shl.3.2.i = shl i64 %xor40.3.2.i, 15
  %shr.3.2.i = lshr i64 %xor40.3.2.i, 49
  %xor.3.2116.i = or i64 %shr.3.2.i, %shl.3.2.i
  %shl.4.2.i = shl i64 %xor40.4.2.i, 61
  %shr.4.2.i = lshr i64 %xor40.4.2.i, 3
  %xor.4.2117.i = or i64 %shr.4.2.i, %shl.4.2.i
  %shl.385.i = shl i64 %xor40.384.i, 28
  %shr.388.i = lshr i64 %xor40.384.i, 36
  %xor.389118.i = or i64 %shr.388.i, %shl.385.i
  %shl.1.3.i = shl i64 %xor40.1.3.i, 55
  %shr.1.3.i = lshr i64 %xor40.1.3.i, 9
  %xor.1.3119.i = or i64 %shr.1.3.i, %shl.1.3.i
  %shl.2.3.i = shl i64 %xor40.2.3.i, 25
  %shr.2.3.i = lshr i64 %xor40.2.3.i, 39
  %xor.2.3120.i = or i64 %shr.2.3.i, %shl.2.3.i
  %shl.3.3.i = shl i64 %xor40.3.3.i, 21
  %shr.3.3.i = lshr i64 %xor40.3.3.i, 43
  %xor.3.3121.i = or i64 %shr.3.3.i, %shl.3.3.i
  %shl.4.3.i = shl i64 %xor40.4.3.i, 56
  %shr.4.3.i = lshr i64 %xor40.4.3.i, 8
  %xor.4.3122.i = or i64 %shr.4.3.i, %shl.4.3.i
  %shl.496.i = shl i64 %xor40.486.i, 27
  %shr.499.i = lshr i64 %xor40.486.i, 37
  %xor.4100123.i = or i64 %shr.499.i, %shl.496.i
  %shl.1.4.i = shl i64 %xor40.1.4.i, 20
  %shr.1.4.i = lshr i64 %xor40.1.4.i, 44
  %xor.1.4124.i = or i64 %shr.1.4.i, %shl.1.4.i
  %shl.2.4.i = shl i64 %xor40.2.4.i, 39
  %shr.2.4.i = lshr i64 %xor40.2.4.i, 25
  %xor.2.4125.i = or i64 %shr.2.4.i, %shl.2.4.i
  %shl.3.4.i = shl i64 %xor40.3.4.i, 8
  %shr.3.4.i = lshr i64 %xor40.3.4.i, 56
  %xor.3.4126.i = or i64 %shr.3.4.i, %shl.3.4.i
  %shl.4.4.i = shl i64 %xor40.4.4.i, 14
  %shr.4.4.i = lshr i64 %xor40.4.4.i, 50
  %xor.4.4127.i = or i64 %shr.4.4.i, %shl.4.4.i
  store i64 %xor.3106.i, i64* %arrayidx5.4.3.i, align 4, !tbaa !7
  store i64 %xor.4.1112.i, i64* %arrayidx5.4.4.i, align 4, !tbaa !7
  store i64 %xor.278113.i, i64* %arrayidx5.4.i, align 4, !tbaa !7
  store i64 %xor.1.3119.i, i64* %arrayidx5.4.1.i, align 4, !tbaa !7
  store i64 %xor.2.4125.i, i64* %arrayidx5.4.2.i, align 4, !tbaa !7
  %neg.i = xor i64 %xor.1.1109.i, -1
  %and.i = and i64 %xor.2.2115.i, %neg.i
  %xor.i6 = xor i64 %and.i, %xor40.i
  %neg.1.i = xor i64 %xor.2.2115.i, -1
  %and.1.i = and i64 %xor.3.3121.i, %neg.1.i
  %xor.1.i7 = xor i64 %and.1.i, %xor.1.1109.i
  %neg.2.i = xor i64 %xor.3.3121.i, -1
  %and.2.i = and i64 %xor.4.4127.i, %neg.2.i
  %xor.2.i8 = xor i64 %and.2.i, %xor.2.2115.i
  %neg.3.i = xor i64 %xor.4.4127.i, -1
  %and.3.i = and i64 %xor40.i, %neg.3.i
  %xor.3.i9 = xor i64 %and.3.i, %xor.3.3121.i
  %neg.4.i = xor i64 %xor40.i, -1
  %and.4.i = and i64 %xor.1.1109.i, %neg.4.i
  %xor.4.i10 = xor i64 %xor.4.4127.i, %and.4.i
  store i64 %xor.1.i7, i64* %arrayidx5.187.i, align 4, !tbaa !7
  store i64 %xor.2.i8, i64* %arrayidx5.288.i, align 4, !tbaa !7
  store i64 %xor.3.i9, i64* %arrayidx5.389.i, align 4, !tbaa !7
  store i64 %xor.4.i10, i64* %arrayidx5.490.i, align 4, !tbaa !7
  %neg.i.1 = xor i64 %xor.1.4124.i, -1
  %and.i.1 = and i64 %xor.2105.i, %neg.i.1
  %xor.i6.1 = xor i64 %and.i.1, %xor.389118.i
  %neg.1.i.1 = xor i64 %xor.2105.i, -1
  %and.1.i.1 = and i64 %xor.3.1111.i, %neg.1.i.1
  %xor.1.i7.1 = xor i64 %and.1.i.1, %xor.1.4124.i
  %neg.2.i.1 = xor i64 %xor.3.1111.i, -1
  %and.2.i.1 = and i64 %xor.4.2117.i, %neg.2.i.1
  %xor.2.i8.1 = xor i64 %and.2.i.1, %xor.2105.i
  %neg.3.i.1 = xor i64 %xor.4.2117.i, -1
  %and.3.i.1 = and i64 %xor.389118.i, %neg.3.i.1
  %xor.3.i9.1 = xor i64 %and.3.i.1, %xor.3.1111.i
  %neg.4.i.1 = xor i64 %xor.389118.i, -1
  %and.4.i.1 = and i64 %xor.1.4124.i, %neg.4.i.1
  %xor.4.i10.1 = xor i64 %xor.4.2117.i, %and.4.i.1
  store i64 %xor.i6.1, i64* %arrayidx5.1.i, align 4, !tbaa !7
  store i64 %xor.1.i7.1, i64* %arrayidx5.1.1.i, align 4, !tbaa !7
  store i64 %xor.2.i8.1, i64* %arrayidx5.1.2.i, align 4, !tbaa !7
  store i64 %xor.3.i9.1, i64* %arrayidx5.1.3.i, align 4, !tbaa !7
  store i64 %xor.4.i10.1, i64* %arrayidx5.1.4.i, align 4, !tbaa !7
  %neg.i.2 = xor i64 %xor.1.2114.i, -1
  %and.i.2 = and i64 %xor.2.3120.i, %neg.i.2
  %xor.i6.2 = xor i64 %and.i.2, %xor.167108.i
  %neg.1.i.2 = xor i64 %xor.2.3120.i, -1
  %and.1.i.2 = and i64 %xor.3.4126.i, %neg.1.i.2
  %xor.1.i7.2 = xor i64 %and.1.i.2, %xor.1.2114.i
  %neg.2.i.2 = xor i64 %xor.3.4126.i, -1
  %and.2.i.2 = and i64 %xor.4107.i, %neg.2.i.2
  %xor.2.i8.2 = xor i64 %and.2.i.2, %xor.2.3120.i
  %neg.3.i.2 = xor i64 %xor.4107.i, -1
  %and.3.i.2 = and i64 %xor.167108.i, %neg.3.i.2
  %xor.3.i9.2 = xor i64 %and.3.i.2, %xor.3.4126.i
  %neg.4.i.2 = xor i64 %xor.167108.i, -1
  %and.4.i.2 = and i64 %xor.1.2114.i, %neg.4.i.2
  %xor.4.i10.2 = xor i64 %xor.4107.i, %and.4.i.2
  store i64 %xor.i6.2, i64* %arrayidx5.2.i, align 4, !tbaa !7
  store i64 %xor.1.i7.2, i64* %arrayidx5.2.1.i, align 4, !tbaa !7
  store i64 %xor.2.i8.2, i64* %arrayidx5.2.2.i, align 4, !tbaa !7
  store i64 %xor.3.i9.2, i64* %arrayidx5.2.3.i, align 4, !tbaa !7
  store i64 %xor.4.i10.2, i64* %arrayidx5.2.4.i, align 4, !tbaa !7
  %neg.i.3 = xor i64 %xor.1104.i, -1
  %and.i.3 = and i64 %xor.2.1110.i, %neg.i.3
  %xor.i6.3 = xor i64 %and.i.3, %xor.4100123.i
  %neg.1.i.3 = xor i64 %xor.2.1110.i, -1
  %and.1.i.3 = and i64 %xor.3.2116.i, %neg.1.i.3
  %xor.1.i7.3 = xor i64 %and.1.i.3, %xor.1104.i
  %neg.2.i.3 = xor i64 %xor.3.2116.i, -1
  %and.2.i.3 = and i64 %xor.4.3122.i, %neg.2.i.3
  %xor.2.i8.3 = xor i64 %and.2.i.3, %xor.2.1110.i
  %neg.3.i.3 = xor i64 %xor.4.3122.i, -1
  %and.3.i.3 = and i64 %xor.4100123.i, %neg.3.i.3
  %xor.3.i9.3 = xor i64 %and.3.i.3, %xor.3.2116.i
  %neg.4.i.3 = xor i64 %xor.4100123.i, -1
  %and.4.i.3 = and i64 %xor.1104.i, %neg.4.i.3
  %xor.4.i10.3 = xor i64 %xor.4.3122.i, %and.4.i.3
  store i64 %xor.i6.3, i64* %arrayidx5.3.i, align 4, !tbaa !7
  store i64 %xor.1.i7.3, i64* %arrayidx5.3.1.i, align 4, !tbaa !7
  store i64 %xor.2.i8.3, i64* %arrayidx5.3.2.i, align 4, !tbaa !7
  store i64 %xor.3.i9.3, i64* %arrayidx5.3.3.i, align 4, !tbaa !7
  store i64 %xor.4.i10.3, i64* %arrayidx5.3.4.i, align 4, !tbaa !7
  %neg.i.4 = xor i64 %xor.1.3119.i, -1
  %and.i.4 = and i64 %xor.2.4125.i, %neg.i.4
  %xor.i6.4 = xor i64 %and.i.4, %xor.278113.i
  %neg.1.i.4 = xor i64 %xor.2.4125.i, -1
  %25 = load i64, i64* %arrayidx5.4.3.i, align 4, !tbaa !7
  %and.1.i.4 = and i64 %25, %neg.1.i.4
  %xor.1.i7.4 = xor i64 %and.1.i.4, %xor.1.3119.i
  %neg.2.i.4 = xor i64 %25, -1
  %26 = load i64, i64* %arrayidx5.4.4.i, align 4, !tbaa !7
  %and.2.i.4 = and i64 %26, %neg.2.i.4
  %xor.2.i8.4 = xor i64 %and.2.i.4, %xor.2.4125.i
  %neg.3.i.4 = xor i64 %26, -1
  %and.3.i.4 = and i64 %xor.278113.i, %neg.3.i.4
  %xor.3.i9.4 = xor i64 %and.3.i.4, %25
  %neg.4.i.4 = xor i64 %xor.278113.i, -1
  %and.4.i.4 = and i64 %xor.1.3119.i, %neg.4.i.4
  %xor.4.i10.4 = xor i64 %26, %and.4.i.4
  store i64 %xor.i6.4, i64* %arrayidx5.4.i, align 4, !tbaa !7
  store i64 %xor.1.i7.4, i64* %arrayidx5.4.1.i, align 4, !tbaa !7
  store i64 %xor.2.i8.4, i64* %arrayidx5.4.2.i, align 4, !tbaa !7
  store i64 %xor.3.i9.4, i64* %arrayidx5.4.3.i, align 4, !tbaa !7
  store i64 %xor.4.i10.4, i64* %arrayidx5.4.4.i, align 4, !tbaa !7
  %arrayidx.i = getelementptr inbounds [24 x i64], [24 x i64]* @KeccakRoundConstants, i32 0, i32 %indexRound
  %27 = load i64, i64* %arrayidx.i, align 8, !tbaa !7
  %xor.i = xor i64 %xor.i6, %27
  store i64 %xor.i, i64* %state, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind ssp
define void @KeccakP1600_ExtractBytes(i8* %state, i8* %data, i32 %offset, i32 %length) local_unnamed_addr #0 {
entry:
  %add.ptr = getelementptr inbounds i8, i8* %state, i32 %offset
  %0 = tail call i32 @llvm.objectsize.i32.p0i8(i8* %data, i1 false, i1 true)
  %call = tail call i8* @__memcpy_chk(i8* %data, i8* %add.ptr, i32 %length, i32 %0) #4
  ret void
}

; Function Attrs: norecurse nounwind ssp
define void @KeccakP1600_ExtractAndAddBytes(i8* nocapture readonly %state, i8* nocapture readonly %input, i8* nocapture %output, i32 %offset, i32 %length) local_unnamed_addr #3 {
entry:
  %cmp11 = icmp eq i32 %length, 0
  br i1 %cmp11, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %i.012 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8, i8* %input, i32 %i.012
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %add = add i32 %i.012, %offset
  %arrayidx1 = getelementptr inbounds i8, i8* %state, i32 %add
  %1 = load i8, i8* %arrayidx1, align 1, !tbaa !4
  %xor10 = xor i8 %1, %0
  %arrayidx4 = getelementptr inbounds i8, i8* %output, i32 %i.012
  store i8 %xor10, i8* %arrayidx4, align 1, !tbaa !4
  %inc = add nuw i32 %i.012, 1
  %exitcond = icmp eq i32 %inc, %length
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind ssp
define void @KeccakP1600_DisplayRoundConstants(%struct.__sFILE* nocapture %f) local_unnamed_addr #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %i.018 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %call = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %f, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 %i.018)
  %arrayidx = getelementptr inbounds [24 x i64], [24 x i64]* @KeccakRoundConstants, i32 0, i32 %i.018
  %0 = load i64, i64* %arrayidx, align 8, !tbaa !7
  %shr = lshr i64 %0, 32
  %conv = trunc i64 %shr to i32
  %call1 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %f, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 %conv)
  %conv3 = trunc i64 %0 to i32
  %call4 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %f, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 %conv3)
  %fputc17 = tail call i32 @fputc(i32 10, %struct.__sFILE* %f)
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond = icmp eq i32 %inc, 24
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %f)
  ret void
}

; Function Attrs: nounwind
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind ssp
define void @KeccakP1600_DisplayRhoOffsets(%struct.__sFILE* nocapture %f) local_unnamed_addr #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader, %entry
  %y.027 = phi i32 [ 0, %entry ], [ %inc8, %for.cond1.preheader ]
  %mul = mul nuw nsw i32 %y.027, 5
  %call = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %f, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i32 0, i32 %y.027)
  %arrayidx = getelementptr inbounds [25 x i32], [25 x i32]* @KeccakRhoOffsets, i32 0, i32 %mul
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !9
  %call5 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %f, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %0)
  %fputc24 = tail call i32 @fputc(i32 10, %struct.__sFILE* %f)
  %call.1 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %f, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i32 1, i32 %y.027)
  %add.1 = add nuw nsw i32 %mul, 1
  %arrayidx.1 = getelementptr inbounds [25 x i32], [25 x i32]* @KeccakRhoOffsets, i32 0, i32 %add.1
  %1 = load i32, i32* %arrayidx.1, align 4, !tbaa !9
  %call5.1 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %f, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %1)
  %fputc24.1 = tail call i32 @fputc(i32 10, %struct.__sFILE* %f)
  %call.2 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %f, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i32 2, i32 %y.027)
  %add.2 = add nuw nsw i32 %mul, 2
  %arrayidx.2 = getelementptr inbounds [25 x i32], [25 x i32]* @KeccakRhoOffsets, i32 0, i32 %add.2
  %2 = load i32, i32* %arrayidx.2, align 4, !tbaa !9
  %call5.2 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %f, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %2)
  %fputc24.2 = tail call i32 @fputc(i32 10, %struct.__sFILE* %f)
  %call.3 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %f, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i32 3, i32 %y.027)
  %add.3 = add nuw nsw i32 %mul, 3
  %arrayidx.3 = getelementptr inbounds [25 x i32], [25 x i32]* @KeccakRhoOffsets, i32 0, i32 %add.3
  %3 = load i32, i32* %arrayidx.3, align 4, !tbaa !9
  %call5.3 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %f, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %3)
  %fputc24.3 = tail call i32 @fputc(i32 10, %struct.__sFILE* %f)
  %call.4 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %f, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i32 4, i32 %y.027)
  %add.4 = add nuw nsw i32 %mul, 4
  %arrayidx.4 = getelementptr inbounds [25 x i32], [25 x i32]* @KeccakRhoOffsets, i32 0, i32 %add.4
  %4 = load i32, i32* %arrayidx.4, align 4, !tbaa !9
  %call5.4 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %f, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %4)
  %fputc24.4 = tail call i32 @fputc(i32 10, %struct.__sFILE* %f)
  %inc8 = add nuw nsw i32 %y.027, 1
  %exitcond = icmp eq i32 %inc8, 5
  br i1 %exitcond, label %for.end9, label %for.cond1.preheader

for.end9:                                         ; preds = %for.cond1.preheader
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %f)
  ret void
}

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) local_unnamed_addr #4

attributes #0 = { nounwind ssp "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-neon,-thumb-mode,-vfp2,-vfp3,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-neon,-thumb-mode,-vfp2,-vfp3,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { norecurse nounwind ssp "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-neon,-thumb-mode,-vfp2,-vfp3,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long long", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !5, i64 0}

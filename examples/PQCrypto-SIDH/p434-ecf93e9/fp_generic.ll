; ModuleID = 'src/P434/generic/fp_generic.c'
source_filename = "src/P434/generic/fp_generic.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@p434x2 = external local_unnamed_addr constant [7 x i64], align 16
@p434x4 = external local_unnamed_addr constant [7 x i64], align 16
@p434 = external local_unnamed_addr constant [7 x i64], align 16
@p434p1 = external local_unnamed_addr constant [7 x i64], align 16

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define void @mp_sub434_p2(i64* nocapture readonly %a, i64* nocapture readonly %b, i64* nocapture %c) local_unnamed_addr #0 {
entry:
  %0 = load i64, i64* %a, align 8, !tbaa !3
  %1 = load i64, i64* %b, align 8, !tbaa !3
  %sub = sub i64 %0, %1
  %xor.i = xor i64 %1, %0
  %xor1.i = xor i64 %sub, %1
  %or.i = or i64 %xor1.i, %xor.i
  %xor2.i = xor i64 %or.i, %0
  %shr.i = lshr i64 %xor2.i, 63
  %conv.i = trunc i64 %shr.i to i32
  store i64 %sub, i64* %c, align 8, !tbaa !3
  %arrayidx.1 = getelementptr inbounds i64, i64* %a, i64 1
  %2 = load i64, i64* %arrayidx.1, align 8, !tbaa !3
  %arrayidx2.1 = getelementptr inbounds i64, i64* %b, i64 1
  %3 = load i64, i64* %arrayidx2.1, align 8, !tbaa !3
  %sub.1 = sub i64 %2, %3
  %xor.i.1 = xor i64 %3, %2
  %xor1.i.1 = xor i64 %sub.1, %3
  %or.i.1 = or i64 %xor1.i.1, %xor.i.1
  %xor2.i.1 = xor i64 %or.i.1, %2
  %shr.i.1 = lshr i64 %xor2.i.1, 63
  %conv.i.1 = trunc i64 %shr.i.1 to i32
  %sub.i.i.1 = sub i64 0, %sub.1
  %or.i.i.1 = or i64 %sub.1, %sub.i.i.1
  %shr.i.i.1 = lshr i64 %or.i.i.1, 63
  %conv.i.i.1 = trunc i64 %shr.i.i.1 to i32
  %xor.i74.1 = xor i32 %conv.i.i.1, 1
  %and.1 = and i32 %xor.i74.1, %conv.i
  %or.1 = or i32 %and.1, %conv.i.1
  %sub8.1 = sub i64 %sub.1, %shr.i
  %arrayidx10.1 = getelementptr inbounds i64, i64* %c, i64 1
  store i64 %sub8.1, i64* %arrayidx10.1, align 8, !tbaa !3
  %arrayidx.2 = getelementptr inbounds i64, i64* %a, i64 2
  %4 = load i64, i64* %arrayidx.2, align 8, !tbaa !3
  %arrayidx2.2 = getelementptr inbounds i64, i64* %b, i64 2
  %5 = load i64, i64* %arrayidx2.2, align 8, !tbaa !3
  %sub.2 = sub i64 %4, %5
  %xor.i.2 = xor i64 %5, %4
  %xor1.i.2 = xor i64 %sub.2, %5
  %or.i.2 = or i64 %xor1.i.2, %xor.i.2
  %xor2.i.2 = xor i64 %or.i.2, %4
  %shr.i.2 = lshr i64 %xor2.i.2, 63
  %conv.i.2 = trunc i64 %shr.i.2 to i32
  %sub.i.i.2 = sub i64 0, %sub.2
  %or.i.i.2 = or i64 %sub.2, %sub.i.i.2
  %shr.i.i.2 = lshr i64 %or.i.i.2, 63
  %conv.i.i.2 = trunc i64 %shr.i.i.2 to i32
  %xor.i74.2 = xor i32 %conv.i.i.2, 1
  %and.2 = and i32 %xor.i74.2, %or.1
  %or.2 = or i32 %and.2, %conv.i.2
  %conv.2 = zext i32 %or.1 to i64
  %sub8.2 = sub i64 %sub.2, %conv.2
  %arrayidx10.2 = getelementptr inbounds i64, i64* %c, i64 2
  store i64 %sub8.2, i64* %arrayidx10.2, align 8, !tbaa !3
  %arrayidx.3 = getelementptr inbounds i64, i64* %a, i64 3
  %6 = load i64, i64* %arrayidx.3, align 8, !tbaa !3
  %arrayidx2.3 = getelementptr inbounds i64, i64* %b, i64 3
  %7 = load i64, i64* %arrayidx2.3, align 8, !tbaa !3
  %sub.3 = sub i64 %6, %7
  %xor.i.3 = xor i64 %7, %6
  %xor1.i.3 = xor i64 %sub.3, %7
  %or.i.3 = or i64 %xor1.i.3, %xor.i.3
  %xor2.i.3 = xor i64 %or.i.3, %6
  %shr.i.3 = lshr i64 %xor2.i.3, 63
  %conv.i.3 = trunc i64 %shr.i.3 to i32
  %sub.i.i.3 = sub i64 0, %sub.3
  %or.i.i.3 = or i64 %sub.3, %sub.i.i.3
  %shr.i.i.3 = lshr i64 %or.i.i.3, 63
  %conv.i.i.3 = trunc i64 %shr.i.i.3 to i32
  %xor.i74.3 = xor i32 %conv.i.i.3, 1
  %and.3 = and i32 %xor.i74.3, %or.2
  %or.3 = or i32 %and.3, %conv.i.3
  %conv.3 = zext i32 %or.2 to i64
  %sub8.3 = sub i64 %sub.3, %conv.3
  %arrayidx10.3 = getelementptr inbounds i64, i64* %c, i64 3
  store i64 %sub8.3, i64* %arrayidx10.3, align 8, !tbaa !3
  %arrayidx.4 = getelementptr inbounds i64, i64* %a, i64 4
  %8 = load i64, i64* %arrayidx.4, align 8, !tbaa !3
  %arrayidx2.4 = getelementptr inbounds i64, i64* %b, i64 4
  %9 = load i64, i64* %arrayidx2.4, align 8, !tbaa !3
  %sub.4 = sub i64 %8, %9
  %xor.i.4 = xor i64 %9, %8
  %xor1.i.4 = xor i64 %sub.4, %9
  %or.i.4 = or i64 %xor1.i.4, %xor.i.4
  %xor2.i.4 = xor i64 %or.i.4, %8
  %shr.i.4 = lshr i64 %xor2.i.4, 63
  %conv.i.4 = trunc i64 %shr.i.4 to i32
  %sub.i.i.4 = sub i64 0, %sub.4
  %or.i.i.4 = or i64 %sub.4, %sub.i.i.4
  %shr.i.i.4 = lshr i64 %or.i.i.4, 63
  %conv.i.i.4 = trunc i64 %shr.i.i.4 to i32
  %xor.i74.4 = xor i32 %conv.i.i.4, 1
  %and.4 = and i32 %xor.i74.4, %or.3
  %or.4 = or i32 %and.4, %conv.i.4
  %conv.4 = zext i32 %or.3 to i64
  %sub8.4 = sub i64 %sub.4, %conv.4
  %arrayidx10.4 = getelementptr inbounds i64, i64* %c, i64 4
  store i64 %sub8.4, i64* %arrayidx10.4, align 8, !tbaa !3
  %arrayidx.5 = getelementptr inbounds i64, i64* %a, i64 5
  %10 = load i64, i64* %arrayidx.5, align 8, !tbaa !3
  %arrayidx2.5 = getelementptr inbounds i64, i64* %b, i64 5
  %11 = load i64, i64* %arrayidx2.5, align 8, !tbaa !3
  %sub.5 = sub i64 %10, %11
  %xor.i.5 = xor i64 %11, %10
  %xor1.i.5 = xor i64 %sub.5, %11
  %or.i.5 = or i64 %xor1.i.5, %xor.i.5
  %xor2.i.5 = xor i64 %or.i.5, %10
  %shr.i.5 = lshr i64 %xor2.i.5, 63
  %conv.i.5 = trunc i64 %shr.i.5 to i32
  %sub.i.i.5 = sub i64 0, %sub.5
  %or.i.i.5 = or i64 %sub.5, %sub.i.i.5
  %shr.i.i.5 = lshr i64 %or.i.i.5, 63
  %conv.i.i.5 = trunc i64 %shr.i.i.5 to i32
  %xor.i74.5 = xor i32 %conv.i.i.5, 1
  %and.5 = and i32 %xor.i74.5, %or.4
  %or.5 = or i32 %and.5, %conv.i.5
  %conv.5 = zext i32 %or.4 to i64
  %sub8.5 = sub i64 %sub.5, %conv.5
  %arrayidx10.5 = getelementptr inbounds i64, i64* %c, i64 5
  store i64 %sub8.5, i64* %arrayidx10.5, align 8, !tbaa !3
  %arrayidx.6 = getelementptr inbounds i64, i64* %a, i64 6
  %12 = load i64, i64* %arrayidx.6, align 8, !tbaa !3
  %arrayidx2.6 = getelementptr inbounds i64, i64* %b, i64 6
  %13 = load i64, i64* %arrayidx2.6, align 8, !tbaa !3
  %sub.6 = sub i64 %12, %13
  %conv.6 = zext i32 %or.5 to i64
  %sub8.6 = sub i64 %sub.6, %conv.6
  %arrayidx10.6 = getelementptr inbounds i64, i64* %c, i64 6
  %14 = load i64, i64* %c, align 8, !tbaa !3
  %15 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 0), align 16, !tbaa !3
  %add21 = add i64 %15, %14
  store i64 %add21, i64* %c, align 8, !tbaa !3
  %xor.i61 = xor i64 %add21, %14
  %xor1.i63 = xor i64 %15, %14
  %or.i64 = or i64 %xor.i61, %xor1.i63
  %xor2.i65 = xor i64 %or.i64, %add21
  %or29 = lshr i64 %xor2.i65, 63
  %16 = load i64, i64* %arrayidx10.1, align 8, !tbaa !3
  %add.1 = add i64 %16, %or29
  %17 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 1), align 8, !tbaa !3
  %add21.1 = add i64 %17, %add.1
  store i64 %add21.1, i64* %arrayidx10.1, align 8, !tbaa !3
  %18 = xor i64 %add.1, -9223372036854775808
  %xor2.i71.1 = and i64 %18, %16
  %xor.i61.1 = xor i64 %add21.1, %add.1
  %xor1.i63.1 = xor i64 %17, %add.1
  %or.i64.1 = or i64 %xor.i61.1, %xor1.i63.1
  %xor2.i65.1 = xor i64 %or.i64.1, %add21.1
  %shr.i7275.1 = or i64 %xor2.i65.1, %xor2.i71.1
  %or29.1 = lshr i64 %shr.i7275.1, 63
  %19 = load i64, i64* %arrayidx10.2, align 8, !tbaa !3
  %add.2 = add i64 %19, %or29.1
  %20 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 2), align 16, !tbaa !3
  %add21.2 = add i64 %20, %add.2
  store i64 %add21.2, i64* %arrayidx10.2, align 8, !tbaa !3
  %21 = xor i64 %add.2, -9223372036854775808
  %xor2.i71.2 = and i64 %21, %19
  %xor.i61.2 = xor i64 %add21.2, %add.2
  %xor1.i63.2 = xor i64 %20, %add.2
  %or.i64.2 = or i64 %xor.i61.2, %xor1.i63.2
  %xor2.i65.2 = xor i64 %or.i64.2, %add21.2
  %shr.i7275.2 = or i64 %xor2.i65.2, %xor2.i71.2
  %or29.2 = lshr i64 %shr.i7275.2, 63
  %22 = load i64, i64* %arrayidx10.3, align 8, !tbaa !3
  %add.3 = add i64 %22, %or29.2
  %23 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 3), align 8, !tbaa !3
  %add21.3 = add i64 %23, %add.3
  store i64 %add21.3, i64* %arrayidx10.3, align 8, !tbaa !3
  %24 = xor i64 %add.3, -9223372036854775808
  %xor2.i71.3 = and i64 %24, %22
  %xor.i61.3 = xor i64 %add21.3, %add.3
  %xor1.i63.3 = xor i64 %23, %add.3
  %or.i64.3 = or i64 %xor.i61.3, %xor1.i63.3
  %xor2.i65.3 = xor i64 %or.i64.3, %add21.3
  %shr.i7275.3 = or i64 %xor2.i65.3, %xor2.i71.3
  %or29.3 = lshr i64 %shr.i7275.3, 63
  %add.4 = add i64 %sub8.4, %or29.3
  %25 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 4), align 16, !tbaa !3
  %add21.4 = add i64 %25, %add.4
  store i64 %add21.4, i64* %arrayidx10.4, align 8, !tbaa !3
  %26 = xor i64 %add.4, -9223372036854775808
  %xor2.i71.4 = and i64 %26, %sub8.4
  %xor.i61.4 = xor i64 %add21.4, %add.4
  %xor1.i63.4 = xor i64 %25, %add.4
  %or.i64.4 = or i64 %xor.i61.4, %xor1.i63.4
  %xor2.i65.4 = xor i64 %or.i64.4, %add21.4
  %shr.i7275.4 = or i64 %xor2.i65.4, %xor2.i71.4
  %or29.4 = lshr i64 %shr.i7275.4, 63
  %add.5 = add i64 %sub8.5, %or29.4
  %27 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 5), align 8, !tbaa !3
  %add21.5 = add i64 %27, %add.5
  store i64 %add21.5, i64* %arrayidx10.5, align 8, !tbaa !3
  %28 = xor i64 %add.5, -9223372036854775808
  %xor2.i71.5 = and i64 %28, %sub8.5
  %xor.i61.5 = xor i64 %add21.5, %add.5
  %xor1.i63.5 = xor i64 %27, %add.5
  %or.i64.5 = or i64 %xor.i61.5, %xor1.i63.5
  %xor2.i65.5 = xor i64 %or.i64.5, %add21.5
  %shr.i7275.5 = or i64 %xor2.i65.5, %xor2.i71.5
  %or29.5 = lshr i64 %shr.i7275.5, 63
  %add.6 = add i64 %sub8.6, %or29.5
  %29 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 6), align 16, !tbaa !3
  %add21.6 = add i64 %29, %add.6
  store i64 %add21.6, i64* %arrayidx10.6, align 8, !tbaa !3
  ret void
}

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define void @mp_sub434_p4(i64* nocapture readonly %a, i64* nocapture readonly %b, i64* nocapture %c) local_unnamed_addr #0 {
entry:
  %0 = load i64, i64* %a, align 8, !tbaa !3
  %1 = load i64, i64* %b, align 8, !tbaa !3
  %sub = sub i64 %0, %1
  %xor.i = xor i64 %1, %0
  %xor1.i = xor i64 %sub, %1
  %or.i = or i64 %xor1.i, %xor.i
  %xor2.i = xor i64 %or.i, %0
  %shr.i = lshr i64 %xor2.i, 63
  %conv.i = trunc i64 %shr.i to i32
  store i64 %sub, i64* %c, align 8, !tbaa !3
  %arrayidx.1 = getelementptr inbounds i64, i64* %a, i64 1
  %2 = load i64, i64* %arrayidx.1, align 8, !tbaa !3
  %arrayidx2.1 = getelementptr inbounds i64, i64* %b, i64 1
  %3 = load i64, i64* %arrayidx2.1, align 8, !tbaa !3
  %sub.1 = sub i64 %2, %3
  %xor.i.1 = xor i64 %3, %2
  %xor1.i.1 = xor i64 %sub.1, %3
  %or.i.1 = or i64 %xor1.i.1, %xor.i.1
  %xor2.i.1 = xor i64 %or.i.1, %2
  %shr.i.1 = lshr i64 %xor2.i.1, 63
  %conv.i.1 = trunc i64 %shr.i.1 to i32
  %sub.i.i.1 = sub i64 0, %sub.1
  %or.i.i.1 = or i64 %sub.1, %sub.i.i.1
  %shr.i.i.1 = lshr i64 %or.i.i.1, 63
  %conv.i.i.1 = trunc i64 %shr.i.i.1 to i32
  %xor.i74.1 = xor i32 %conv.i.i.1, 1
  %and.1 = and i32 %xor.i74.1, %conv.i
  %or.1 = or i32 %and.1, %conv.i.1
  %sub8.1 = sub i64 %sub.1, %shr.i
  %arrayidx10.1 = getelementptr inbounds i64, i64* %c, i64 1
  store i64 %sub8.1, i64* %arrayidx10.1, align 8, !tbaa !3
  %arrayidx.2 = getelementptr inbounds i64, i64* %a, i64 2
  %4 = load i64, i64* %arrayidx.2, align 8, !tbaa !3
  %arrayidx2.2 = getelementptr inbounds i64, i64* %b, i64 2
  %5 = load i64, i64* %arrayidx2.2, align 8, !tbaa !3
  %sub.2 = sub i64 %4, %5
  %xor.i.2 = xor i64 %5, %4
  %xor1.i.2 = xor i64 %sub.2, %5
  %or.i.2 = or i64 %xor1.i.2, %xor.i.2
  %xor2.i.2 = xor i64 %or.i.2, %4
  %shr.i.2 = lshr i64 %xor2.i.2, 63
  %conv.i.2 = trunc i64 %shr.i.2 to i32
  %sub.i.i.2 = sub i64 0, %sub.2
  %or.i.i.2 = or i64 %sub.2, %sub.i.i.2
  %shr.i.i.2 = lshr i64 %or.i.i.2, 63
  %conv.i.i.2 = trunc i64 %shr.i.i.2 to i32
  %xor.i74.2 = xor i32 %conv.i.i.2, 1
  %and.2 = and i32 %xor.i74.2, %or.1
  %or.2 = or i32 %and.2, %conv.i.2
  %conv.2 = zext i32 %or.1 to i64
  %sub8.2 = sub i64 %sub.2, %conv.2
  %arrayidx10.2 = getelementptr inbounds i64, i64* %c, i64 2
  store i64 %sub8.2, i64* %arrayidx10.2, align 8, !tbaa !3
  %arrayidx.3 = getelementptr inbounds i64, i64* %a, i64 3
  %6 = load i64, i64* %arrayidx.3, align 8, !tbaa !3
  %arrayidx2.3 = getelementptr inbounds i64, i64* %b, i64 3
  %7 = load i64, i64* %arrayidx2.3, align 8, !tbaa !3
  %sub.3 = sub i64 %6, %7
  %xor.i.3 = xor i64 %7, %6
  %xor1.i.3 = xor i64 %sub.3, %7
  %or.i.3 = or i64 %xor1.i.3, %xor.i.3
  %xor2.i.3 = xor i64 %or.i.3, %6
  %shr.i.3 = lshr i64 %xor2.i.3, 63
  %conv.i.3 = trunc i64 %shr.i.3 to i32
  %sub.i.i.3 = sub i64 0, %sub.3
  %or.i.i.3 = or i64 %sub.3, %sub.i.i.3
  %shr.i.i.3 = lshr i64 %or.i.i.3, 63
  %conv.i.i.3 = trunc i64 %shr.i.i.3 to i32
  %xor.i74.3 = xor i32 %conv.i.i.3, 1
  %and.3 = and i32 %xor.i74.3, %or.2
  %or.3 = or i32 %and.3, %conv.i.3
  %conv.3 = zext i32 %or.2 to i64
  %sub8.3 = sub i64 %sub.3, %conv.3
  %arrayidx10.3 = getelementptr inbounds i64, i64* %c, i64 3
  store i64 %sub8.3, i64* %arrayidx10.3, align 8, !tbaa !3
  %arrayidx.4 = getelementptr inbounds i64, i64* %a, i64 4
  %8 = load i64, i64* %arrayidx.4, align 8, !tbaa !3
  %arrayidx2.4 = getelementptr inbounds i64, i64* %b, i64 4
  %9 = load i64, i64* %arrayidx2.4, align 8, !tbaa !3
  %sub.4 = sub i64 %8, %9
  %xor.i.4 = xor i64 %9, %8
  %xor1.i.4 = xor i64 %sub.4, %9
  %or.i.4 = or i64 %xor1.i.4, %xor.i.4
  %xor2.i.4 = xor i64 %or.i.4, %8
  %shr.i.4 = lshr i64 %xor2.i.4, 63
  %conv.i.4 = trunc i64 %shr.i.4 to i32
  %sub.i.i.4 = sub i64 0, %sub.4
  %or.i.i.4 = or i64 %sub.4, %sub.i.i.4
  %shr.i.i.4 = lshr i64 %or.i.i.4, 63
  %conv.i.i.4 = trunc i64 %shr.i.i.4 to i32
  %xor.i74.4 = xor i32 %conv.i.i.4, 1
  %and.4 = and i32 %xor.i74.4, %or.3
  %or.4 = or i32 %and.4, %conv.i.4
  %conv.4 = zext i32 %or.3 to i64
  %sub8.4 = sub i64 %sub.4, %conv.4
  %arrayidx10.4 = getelementptr inbounds i64, i64* %c, i64 4
  store i64 %sub8.4, i64* %arrayidx10.4, align 8, !tbaa !3
  %arrayidx.5 = getelementptr inbounds i64, i64* %a, i64 5
  %10 = load i64, i64* %arrayidx.5, align 8, !tbaa !3
  %arrayidx2.5 = getelementptr inbounds i64, i64* %b, i64 5
  %11 = load i64, i64* %arrayidx2.5, align 8, !tbaa !3
  %sub.5 = sub i64 %10, %11
  %xor.i.5 = xor i64 %11, %10
  %xor1.i.5 = xor i64 %sub.5, %11
  %or.i.5 = or i64 %xor1.i.5, %xor.i.5
  %xor2.i.5 = xor i64 %or.i.5, %10
  %shr.i.5 = lshr i64 %xor2.i.5, 63
  %conv.i.5 = trunc i64 %shr.i.5 to i32
  %sub.i.i.5 = sub i64 0, %sub.5
  %or.i.i.5 = or i64 %sub.5, %sub.i.i.5
  %shr.i.i.5 = lshr i64 %or.i.i.5, 63
  %conv.i.i.5 = trunc i64 %shr.i.i.5 to i32
  %xor.i74.5 = xor i32 %conv.i.i.5, 1
  %and.5 = and i32 %xor.i74.5, %or.4
  %or.5 = or i32 %and.5, %conv.i.5
  %conv.5 = zext i32 %or.4 to i64
  %sub8.5 = sub i64 %sub.5, %conv.5
  %arrayidx10.5 = getelementptr inbounds i64, i64* %c, i64 5
  store i64 %sub8.5, i64* %arrayidx10.5, align 8, !tbaa !3
  %arrayidx.6 = getelementptr inbounds i64, i64* %a, i64 6
  %12 = load i64, i64* %arrayidx.6, align 8, !tbaa !3
  %arrayidx2.6 = getelementptr inbounds i64, i64* %b, i64 6
  %13 = load i64, i64* %arrayidx2.6, align 8, !tbaa !3
  %sub.6 = sub i64 %12, %13
  %conv.6 = zext i32 %or.5 to i64
  %sub8.6 = sub i64 %sub.6, %conv.6
  %arrayidx10.6 = getelementptr inbounds i64, i64* %c, i64 6
  %14 = load i64, i64* %c, align 8, !tbaa !3
  %15 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x4, i64 0, i64 0), align 16, !tbaa !3
  %add21 = add i64 %15, %14
  store i64 %add21, i64* %c, align 8, !tbaa !3
  %xor.i61 = xor i64 %add21, %14
  %xor1.i63 = xor i64 %15, %14
  %or.i64 = or i64 %xor.i61, %xor1.i63
  %xor2.i65 = xor i64 %or.i64, %add21
  %or29 = lshr i64 %xor2.i65, 63
  %16 = load i64, i64* %arrayidx10.1, align 8, !tbaa !3
  %add.1 = add i64 %16, %or29
  %17 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x4, i64 0, i64 1), align 8, !tbaa !3
  %add21.1 = add i64 %17, %add.1
  store i64 %add21.1, i64* %arrayidx10.1, align 8, !tbaa !3
  %18 = xor i64 %add.1, -9223372036854775808
  %xor2.i71.1 = and i64 %18, %16
  %xor.i61.1 = xor i64 %add21.1, %add.1
  %xor1.i63.1 = xor i64 %17, %add.1
  %or.i64.1 = or i64 %xor.i61.1, %xor1.i63.1
  %xor2.i65.1 = xor i64 %or.i64.1, %add21.1
  %shr.i7275.1 = or i64 %xor2.i65.1, %xor2.i71.1
  %or29.1 = lshr i64 %shr.i7275.1, 63
  %19 = load i64, i64* %arrayidx10.2, align 8, !tbaa !3
  %add.2 = add i64 %19, %or29.1
  %20 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x4, i64 0, i64 2), align 16, !tbaa !3
  %add21.2 = add i64 %20, %add.2
  store i64 %add21.2, i64* %arrayidx10.2, align 8, !tbaa !3
  %21 = xor i64 %add.2, -9223372036854775808
  %xor2.i71.2 = and i64 %21, %19
  %xor.i61.2 = xor i64 %add21.2, %add.2
  %xor1.i63.2 = xor i64 %20, %add.2
  %or.i64.2 = or i64 %xor.i61.2, %xor1.i63.2
  %xor2.i65.2 = xor i64 %or.i64.2, %add21.2
  %shr.i7275.2 = or i64 %xor2.i65.2, %xor2.i71.2
  %or29.2 = lshr i64 %shr.i7275.2, 63
  %22 = load i64, i64* %arrayidx10.3, align 8, !tbaa !3
  %add.3 = add i64 %22, %or29.2
  %23 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x4, i64 0, i64 3), align 8, !tbaa !3
  %add21.3 = add i64 %23, %add.3
  store i64 %add21.3, i64* %arrayidx10.3, align 8, !tbaa !3
  %24 = xor i64 %add.3, -9223372036854775808
  %xor2.i71.3 = and i64 %24, %22
  %xor.i61.3 = xor i64 %add21.3, %add.3
  %xor1.i63.3 = xor i64 %23, %add.3
  %or.i64.3 = or i64 %xor.i61.3, %xor1.i63.3
  %xor2.i65.3 = xor i64 %or.i64.3, %add21.3
  %shr.i7275.3 = or i64 %xor2.i65.3, %xor2.i71.3
  %or29.3 = lshr i64 %shr.i7275.3, 63
  %add.4 = add i64 %sub8.4, %or29.3
  %25 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x4, i64 0, i64 4), align 16, !tbaa !3
  %add21.4 = add i64 %25, %add.4
  store i64 %add21.4, i64* %arrayidx10.4, align 8, !tbaa !3
  %26 = xor i64 %add.4, -9223372036854775808
  %xor2.i71.4 = and i64 %26, %sub8.4
  %xor.i61.4 = xor i64 %add21.4, %add.4
  %xor1.i63.4 = xor i64 %25, %add.4
  %or.i64.4 = or i64 %xor.i61.4, %xor1.i63.4
  %xor2.i65.4 = xor i64 %or.i64.4, %add21.4
  %shr.i7275.4 = or i64 %xor2.i65.4, %xor2.i71.4
  %or29.4 = lshr i64 %shr.i7275.4, 63
  %add.5 = add i64 %sub8.5, %or29.4
  %27 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x4, i64 0, i64 5), align 8, !tbaa !3
  %add21.5 = add i64 %27, %add.5
  store i64 %add21.5, i64* %arrayidx10.5, align 8, !tbaa !3
  %28 = xor i64 %add.5, -9223372036854775808
  %xor2.i71.5 = and i64 %28, %sub8.5
  %xor.i61.5 = xor i64 %add21.5, %add.5
  %xor1.i63.5 = xor i64 %27, %add.5
  %or.i64.5 = or i64 %xor.i61.5, %xor1.i63.5
  %xor2.i65.5 = xor i64 %or.i64.5, %add21.5
  %shr.i7275.5 = or i64 %xor2.i65.5, %xor2.i71.5
  %or29.5 = lshr i64 %shr.i7275.5, 63
  %add.6 = add i64 %sub8.6, %or29.5
  %29 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x4, i64 0, i64 6), align 16, !tbaa !3
  %add21.6 = add i64 %29, %add.6
  store i64 %add21.6, i64* %arrayidx10.6, align 8, !tbaa !3
  ret void
}

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define void @fpadd434(i64* nocapture readonly %a, i64* nocapture readonly %b, i64* nocapture %c) local_unnamed_addr #0 {
entry:
  %0 = load i64, i64* %a, align 8, !tbaa !3
  %1 = load i64, i64* %b, align 8, !tbaa !3
  %add3 = add i64 %1, %0
  store i64 %add3, i64* %c, align 8, !tbaa !3
  %xor.i122 = xor i64 %add3, %0
  %xor1.i124 = xor i64 %1, %0
  %or.i125 = or i64 %xor.i122, %xor1.i124
  %xor2.i126 = xor i64 %or.i125, %add3
  %or = lshr i64 %xor2.i126, 63
  %arrayidx.1 = getelementptr inbounds i64, i64* %a, i64 1
  %2 = load i64, i64* %arrayidx.1, align 8, !tbaa !3
  %add.1 = add i64 %2, %or
  %arrayidx2.1 = getelementptr inbounds i64, i64* %b, i64 1
  %3 = load i64, i64* %arrayidx2.1, align 8, !tbaa !3
  %add3.1 = add i64 %3, %add.1
  %arrayidx5.1 = getelementptr inbounds i64, i64* %c, i64 1
  store i64 %add3.1, i64* %arrayidx5.1, align 8, !tbaa !3
  %4 = xor i64 %add.1, -9223372036854775808
  %xor2.i.1 = and i64 %4, %2
  %xor.i122.1 = xor i64 %add3.1, %add.1
  %xor1.i124.1 = xor i64 %3, %add.1
  %or.i125.1 = or i64 %xor.i122.1, %xor1.i124.1
  %xor2.i126.1 = xor i64 %or.i125.1, %add3.1
  %shr.i130.1 = or i64 %xor2.i126.1, %xor2.i.1
  %or.1 = lshr i64 %shr.i130.1, 63
  %arrayidx.2 = getelementptr inbounds i64, i64* %a, i64 2
  %5 = load i64, i64* %arrayidx.2, align 8, !tbaa !3
  %add.2 = add i64 %5, %or.1
  %arrayidx2.2 = getelementptr inbounds i64, i64* %b, i64 2
  %6 = load i64, i64* %arrayidx2.2, align 8, !tbaa !3
  %add3.2 = add i64 %6, %add.2
  %arrayidx5.2 = getelementptr inbounds i64, i64* %c, i64 2
  store i64 %add3.2, i64* %arrayidx5.2, align 8, !tbaa !3
  %7 = xor i64 %add.2, -9223372036854775808
  %xor2.i.2 = and i64 %7, %5
  %xor.i122.2 = xor i64 %add3.2, %add.2
  %xor1.i124.2 = xor i64 %6, %add.2
  %or.i125.2 = or i64 %xor.i122.2, %xor1.i124.2
  %xor2.i126.2 = xor i64 %or.i125.2, %add3.2
  %shr.i130.2 = or i64 %xor2.i126.2, %xor2.i.2
  %or.2 = lshr i64 %shr.i130.2, 63
  %arrayidx.3 = getelementptr inbounds i64, i64* %a, i64 3
  %8 = load i64, i64* %arrayidx.3, align 8, !tbaa !3
  %add.3 = add i64 %8, %or.2
  %arrayidx2.3 = getelementptr inbounds i64, i64* %b, i64 3
  %9 = load i64, i64* %arrayidx2.3, align 8, !tbaa !3
  %add3.3 = add i64 %9, %add.3
  %arrayidx5.3 = getelementptr inbounds i64, i64* %c, i64 3
  store i64 %add3.3, i64* %arrayidx5.3, align 8, !tbaa !3
  %10 = xor i64 %add.3, -9223372036854775808
  %xor2.i.3 = and i64 %10, %8
  %xor.i122.3 = xor i64 %add3.3, %add.3
  %xor1.i124.3 = xor i64 %9, %add.3
  %or.i125.3 = or i64 %xor.i122.3, %xor1.i124.3
  %xor2.i126.3 = xor i64 %or.i125.3, %add3.3
  %shr.i130.3 = or i64 %xor2.i126.3, %xor2.i.3
  %or.3 = lshr i64 %shr.i130.3, 63
  %arrayidx.4 = getelementptr inbounds i64, i64* %a, i64 4
  %11 = load i64, i64* %arrayidx.4, align 8, !tbaa !3
  %add.4 = add i64 %11, %or.3
  %arrayidx2.4 = getelementptr inbounds i64, i64* %b, i64 4
  %12 = load i64, i64* %arrayidx2.4, align 8, !tbaa !3
  %add3.4 = add i64 %12, %add.4
  %arrayidx5.4 = getelementptr inbounds i64, i64* %c, i64 4
  store i64 %add3.4, i64* %arrayidx5.4, align 8, !tbaa !3
  %13 = xor i64 %add.4, -9223372036854775808
  %xor2.i.4 = and i64 %13, %11
  %xor.i122.4 = xor i64 %add3.4, %add.4
  %xor1.i124.4 = xor i64 %12, %add.4
  %or.i125.4 = or i64 %xor.i122.4, %xor1.i124.4
  %xor2.i126.4 = xor i64 %or.i125.4, %add3.4
  %shr.i130.4 = or i64 %xor2.i126.4, %xor2.i.4
  %or.4 = lshr i64 %shr.i130.4, 63
  %arrayidx.5 = getelementptr inbounds i64, i64* %a, i64 5
  %14 = load i64, i64* %arrayidx.5, align 8, !tbaa !3
  %add.5 = add i64 %14, %or.4
  %arrayidx2.5 = getelementptr inbounds i64, i64* %b, i64 5
  %15 = load i64, i64* %arrayidx2.5, align 8, !tbaa !3
  %add3.5 = add i64 %15, %add.5
  %arrayidx5.5 = getelementptr inbounds i64, i64* %c, i64 5
  store i64 %add3.5, i64* %arrayidx5.5, align 8, !tbaa !3
  %16 = xor i64 %add.5, -9223372036854775808
  %xor2.i.5 = and i64 %16, %14
  %xor.i122.5 = xor i64 %add3.5, %add.5
  %xor1.i124.5 = xor i64 %15, %add.5
  %or.i125.5 = or i64 %xor.i122.5, %xor1.i124.5
  %xor2.i126.5 = xor i64 %or.i125.5, %add3.5
  %shr.i130.5 = or i64 %xor2.i126.5, %xor2.i.5
  %or.5 = lshr i64 %shr.i130.5, 63
  %arrayidx.6 = getelementptr inbounds i64, i64* %a, i64 6
  %17 = load i64, i64* %arrayidx.6, align 8, !tbaa !3
  %add.6 = add i64 %17, %or.5
  %arrayidx2.6 = getelementptr inbounds i64, i64* %b, i64 6
  %18 = load i64, i64* %arrayidx2.6, align 8, !tbaa !3
  %add3.6 = add i64 %18, %add.6
  %arrayidx5.6 = getelementptr inbounds i64, i64* %c, i64 6
  store i64 %add3.6, i64* %arrayidx5.6, align 8, !tbaa !3
  %19 = load i64, i64* %c, align 8, !tbaa !3
  %20 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 0), align 16, !tbaa !3
  %sub = sub i64 %19, %20
  %xor.i115 = xor i64 %20, %19
  %xor1.i117 = xor i64 %sub, %20
  %or.i118 = or i64 %xor1.i117, %xor.i115
  %xor2.i119 = xor i64 %or.i118, %19
  %shr.i120 = lshr i64 %xor2.i119, 63
  %conv.i121 = trunc i64 %shr.i120 to i32
  store i64 %sub, i64* %c, align 8, !tbaa !3
  %21 = load i64, i64* %arrayidx5.1, align 8, !tbaa !3
  %22 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 1), align 8, !tbaa !3
  %sub.1 = sub i64 %21, %22
  %xor.i115.1 = xor i64 %22, %21
  %xor1.i117.1 = xor i64 %sub.1, %22
  %or.i118.1 = or i64 %xor1.i117.1, %xor.i115.1
  %xor2.i119.1 = xor i64 %or.i118.1, %21
  %shr.i120.1 = lshr i64 %xor2.i119.1, 63
  %conv.i121.1 = trunc i64 %shr.i120.1 to i32
  %sub.i.i.1 = sub i64 0, %sub.1
  %or.i.i.1 = or i64 %sub.1, %sub.i.i.1
  %shr.i.i.1 = lshr i64 %or.i.i.1, 63
  %conv.i.i.1 = trunc i64 %shr.i.i.1 to i32
  %xor.i114.1 = xor i32 %conv.i.i.1, 1
  %and.1 = and i32 %xor.i114.1, %conv.i121
  %or25.1 = or i32 %and.1, %conv.i121.1
  %sub27.1 = sub i64 %sub.1, %shr.i120
  store i64 %sub27.1, i64* %arrayidx5.1, align 8, !tbaa !3
  %23 = load i64, i64* %arrayidx5.2, align 8, !tbaa !3
  %24 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 2), align 16, !tbaa !3
  %sub.2 = sub i64 %23, %24
  %xor.i115.2 = xor i64 %24, %23
  %xor1.i117.2 = xor i64 %sub.2, %24
  %or.i118.2 = or i64 %xor1.i117.2, %xor.i115.2
  %xor2.i119.2 = xor i64 %or.i118.2, %23
  %shr.i120.2 = lshr i64 %xor2.i119.2, 63
  %conv.i121.2 = trunc i64 %shr.i120.2 to i32
  %sub.i.i.2 = sub i64 0, %sub.2
  %or.i.i.2 = or i64 %sub.2, %sub.i.i.2
  %shr.i.i.2 = lshr i64 %or.i.i.2, 63
  %conv.i.i.2 = trunc i64 %shr.i.i.2 to i32
  %xor.i114.2 = xor i32 %conv.i.i.2, 1
  %and.2 = and i32 %xor.i114.2, %or25.1
  %or25.2 = or i32 %and.2, %conv.i121.2
  %conv26.2 = zext i32 %or25.1 to i64
  %sub27.2 = sub i64 %sub.2, %conv26.2
  store i64 %sub27.2, i64* %arrayidx5.2, align 8, !tbaa !3
  %25 = load i64, i64* %arrayidx5.3, align 8, !tbaa !3
  %26 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 3), align 8, !tbaa !3
  %sub.3 = sub i64 %25, %26
  %xor.i115.3 = xor i64 %26, %25
  %xor1.i117.3 = xor i64 %sub.3, %26
  %or.i118.3 = or i64 %xor1.i117.3, %xor.i115.3
  %xor2.i119.3 = xor i64 %or.i118.3, %25
  %shr.i120.3 = lshr i64 %xor2.i119.3, 63
  %conv.i121.3 = trunc i64 %shr.i120.3 to i32
  %sub.i.i.3 = sub i64 0, %sub.3
  %or.i.i.3 = or i64 %sub.3, %sub.i.i.3
  %shr.i.i.3 = lshr i64 %or.i.i.3, 63
  %conv.i.i.3 = trunc i64 %shr.i.i.3 to i32
  %xor.i114.3 = xor i32 %conv.i.i.3, 1
  %and.3 = and i32 %xor.i114.3, %or25.2
  %or25.3 = or i32 %and.3, %conv.i121.3
  %conv26.3 = zext i32 %or25.2 to i64
  %sub27.3 = sub i64 %sub.3, %conv26.3
  store i64 %sub27.3, i64* %arrayidx5.3, align 8, !tbaa !3
  %27 = load i64, i64* %arrayidx5.4, align 8, !tbaa !3
  %28 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 4), align 16, !tbaa !3
  %sub.4 = sub i64 %27, %28
  %xor.i115.4 = xor i64 %28, %27
  %xor1.i117.4 = xor i64 %sub.4, %28
  %or.i118.4 = or i64 %xor1.i117.4, %xor.i115.4
  %xor2.i119.4 = xor i64 %or.i118.4, %27
  %shr.i120.4 = lshr i64 %xor2.i119.4, 63
  %conv.i121.4 = trunc i64 %shr.i120.4 to i32
  %sub.i.i.4 = sub i64 0, %sub.4
  %or.i.i.4 = or i64 %sub.4, %sub.i.i.4
  %shr.i.i.4 = lshr i64 %or.i.i.4, 63
  %conv.i.i.4 = trunc i64 %shr.i.i.4 to i32
  %xor.i114.4 = xor i32 %conv.i.i.4, 1
  %and.4 = and i32 %xor.i114.4, %or25.3
  %or25.4 = or i32 %and.4, %conv.i121.4
  %conv26.4 = zext i32 %or25.3 to i64
  %sub27.4 = sub i64 %sub.4, %conv26.4
  %29 = load i64, i64* %arrayidx5.5, align 8, !tbaa !3
  %30 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 5), align 8, !tbaa !3
  %sub.5 = sub i64 %29, %30
  %xor.i115.5 = xor i64 %30, %29
  %xor1.i117.5 = xor i64 %sub.5, %30
  %or.i118.5 = or i64 %xor1.i117.5, %xor.i115.5
  %xor2.i119.5 = xor i64 %or.i118.5, %29
  %shr.i120.5 = lshr i64 %xor2.i119.5, 63
  %conv.i121.5 = trunc i64 %shr.i120.5 to i32
  %sub.i.i.5 = sub i64 0, %sub.5
  %or.i.i.5 = or i64 %sub.5, %sub.i.i.5
  %shr.i.i.5 = lshr i64 %or.i.i.5, 63
  %conv.i.i.5 = trunc i64 %shr.i.i.5 to i32
  %xor.i114.5 = xor i32 %conv.i.i.5, 1
  %and.5 = and i32 %xor.i114.5, %or25.4
  %or25.5 = or i32 %and.5, %conv.i121.5
  %conv26.5 = zext i32 %or25.4 to i64
  %sub27.5 = sub i64 %sub.5, %conv26.5
  %31 = load i64, i64* %arrayidx5.6, align 8, !tbaa !3
  %32 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 6), align 16, !tbaa !3
  %sub.6 = sub i64 %31, %32
  %xor.i115.6 = xor i64 %32, %31
  %xor1.i117.6 = xor i64 %sub.6, %32
  %or.i118.6 = or i64 %xor1.i117.6, %xor.i115.6
  %xor2.i119.6 = xor i64 %or.i118.6, %31
  %shr.i120.6 = lshr i64 %xor2.i119.6, 63
  %conv.i121.6 = trunc i64 %shr.i120.6 to i32
  %sub.i.i.6 = sub i64 0, %sub.6
  %or.i.i.6 = or i64 %sub.6, %sub.i.i.6
  %shr.i.i.6 = lshr i64 %or.i.i.6, 63
  %conv.i.i.6 = trunc i64 %shr.i.i.6 to i32
  %xor.i114.6 = xor i32 %conv.i.i.6, 1
  %and.6 = and i32 %xor.i114.6, %or25.5
  %or25.6 = or i32 %and.6, %conv.i121.6
  %conv26.6 = zext i32 %or25.5 to i64
  %sub27.6 = sub i64 %sub.6, %conv26.6
  %conv33 = zext i32 %or25.6 to i64
  %sub34 = sub nsw i64 0, %conv33
  %33 = load i64, i64* %c, align 8, !tbaa !3
  %34 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 0), align 16, !tbaa !3
  %and46 = and i64 %34, %sub34
  %add47 = add i64 %and46, %33
  store i64 %add47, i64* %c, align 8, !tbaa !3
  %xor.i102 = xor i64 %add47, %33
  %xor1.i103 = xor i64 %and46, %33
  %or.i104 = or i64 %xor.i102, %xor1.i103
  %xor2.i105 = xor i64 %or.i104, %add47
  %or55 = lshr i64 %xor2.i105, 63
  %35 = load i64, i64* %arrayidx5.1, align 8, !tbaa !3
  %add43.1 = add i64 %35, %or55
  %36 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 1), align 8, !tbaa !3
  %and46.1 = and i64 %36, %sub34
  %add47.1 = add i64 %and46.1, %add43.1
  store i64 %add47.1, i64* %arrayidx5.1, align 8, !tbaa !3
  %37 = xor i64 %add43.1, -9223372036854775808
  %xor2.i111.1 = and i64 %37, %35
  %xor.i102.1 = xor i64 %add47.1, %add43.1
  %xor1.i103.1 = xor i64 %and46.1, %add43.1
  %or.i104.1 = or i64 %xor.i102.1, %xor1.i103.1
  %xor2.i105.1 = xor i64 %or.i104.1, %add47.1
  %shr.i112129.1 = or i64 %xor2.i105.1, %xor2.i111.1
  %or55.1 = lshr i64 %shr.i112129.1, 63
  %38 = load i64, i64* %arrayidx5.2, align 8, !tbaa !3
  %add43.2 = add i64 %38, %or55.1
  %39 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 2), align 16, !tbaa !3
  %and46.2 = and i64 %39, %sub34
  %add47.2 = add i64 %and46.2, %add43.2
  store i64 %add47.2, i64* %arrayidx5.2, align 8, !tbaa !3
  %40 = xor i64 %add43.2, -9223372036854775808
  %xor2.i111.2 = and i64 %40, %38
  %xor.i102.2 = xor i64 %add47.2, %add43.2
  %xor1.i103.2 = xor i64 %and46.2, %add43.2
  %or.i104.2 = or i64 %xor.i102.2, %xor1.i103.2
  %xor2.i105.2 = xor i64 %or.i104.2, %add47.2
  %shr.i112129.2 = or i64 %xor2.i105.2, %xor2.i111.2
  %or55.2 = lshr i64 %shr.i112129.2, 63
  %41 = load i64, i64* %arrayidx5.3, align 8, !tbaa !3
  %add43.3 = add i64 %41, %or55.2
  %42 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 3), align 8, !tbaa !3
  %and46.3 = and i64 %42, %sub34
  %add47.3 = add i64 %and46.3, %add43.3
  store i64 %add47.3, i64* %arrayidx5.3, align 8, !tbaa !3
  %43 = xor i64 %add43.3, -9223372036854775808
  %xor2.i111.3 = and i64 %43, %41
  %xor.i102.3 = xor i64 %add47.3, %add43.3
  %xor1.i103.3 = xor i64 %and46.3, %add43.3
  %or.i104.3 = or i64 %xor.i102.3, %xor1.i103.3
  %xor2.i105.3 = xor i64 %or.i104.3, %add47.3
  %shr.i112129.3 = or i64 %xor2.i105.3, %xor2.i111.3
  %or55.3 = lshr i64 %shr.i112129.3, 63
  %add43.4 = add i64 %sub27.4, %or55.3
  %44 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 4), align 16, !tbaa !3
  %and46.4 = and i64 %44, %sub34
  %add47.4 = add i64 %and46.4, %add43.4
  store i64 %add47.4, i64* %arrayidx5.4, align 8, !tbaa !3
  %45 = xor i64 %add43.4, -9223372036854775808
  %xor2.i111.4 = and i64 %45, %sub27.4
  %xor.i102.4 = xor i64 %add47.4, %add43.4
  %xor1.i103.4 = xor i64 %and46.4, %add43.4
  %or.i104.4 = or i64 %xor.i102.4, %xor1.i103.4
  %xor2.i105.4 = xor i64 %or.i104.4, %add47.4
  %shr.i112129.4 = or i64 %xor2.i105.4, %xor2.i111.4
  %or55.4 = lshr i64 %shr.i112129.4, 63
  %add43.5 = add i64 %sub27.5, %or55.4
  %46 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 5), align 8, !tbaa !3
  %and46.5 = and i64 %46, %sub34
  %add47.5 = add i64 %and46.5, %add43.5
  store i64 %add47.5, i64* %arrayidx5.5, align 8, !tbaa !3
  %47 = xor i64 %add43.5, -9223372036854775808
  %xor2.i111.5 = and i64 %47, %sub27.5
  %xor.i102.5 = xor i64 %add47.5, %add43.5
  %xor1.i103.5 = xor i64 %and46.5, %add43.5
  %or.i104.5 = or i64 %xor.i102.5, %xor1.i103.5
  %xor2.i105.5 = xor i64 %or.i104.5, %add47.5
  %shr.i112129.5 = or i64 %xor2.i105.5, %xor2.i111.5
  %or55.5 = lshr i64 %shr.i112129.5, 63
  %add43.6 = add i64 %sub27.6, %or55.5
  %48 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 6), align 16, !tbaa !3
  %and46.6 = and i64 %48, %sub34
  %add47.6 = add i64 %and46.6, %add43.6
  store i64 %add47.6, i64* %arrayidx5.6, align 8, !tbaa !3
  ret void
}

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define void @fpsub434(i64* nocapture readonly %a, i64* nocapture readonly %b, i64* nocapture %c) local_unnamed_addr #0 {
entry:
  %0 = load i64, i64* %a, align 8, !tbaa !3
  %1 = load i64, i64* %b, align 8, !tbaa !3
  %sub = sub i64 %0, %1
  %xor.i = xor i64 %1, %0
  %xor1.i = xor i64 %sub, %1
  %or.i = or i64 %xor1.i, %xor.i
  %xor2.i = xor i64 %or.i, %0
  %shr.i = lshr i64 %xor2.i, 63
  %conv.i = trunc i64 %shr.i to i32
  store i64 %sub, i64* %c, align 8, !tbaa !3
  %arrayidx.1 = getelementptr inbounds i64, i64* %a, i64 1
  %2 = load i64, i64* %arrayidx.1, align 8, !tbaa !3
  %arrayidx2.1 = getelementptr inbounds i64, i64* %b, i64 1
  %3 = load i64, i64* %arrayidx2.1, align 8, !tbaa !3
  %sub.1 = sub i64 %2, %3
  %xor.i.1 = xor i64 %3, %2
  %xor1.i.1 = xor i64 %sub.1, %3
  %or.i.1 = or i64 %xor1.i.1, %xor.i.1
  %xor2.i.1 = xor i64 %or.i.1, %2
  %shr.i.1 = lshr i64 %xor2.i.1, 63
  %conv.i.1 = trunc i64 %shr.i.1 to i32
  %sub.i.i.1 = sub i64 0, %sub.1
  %or.i.i.1 = or i64 %sub.1, %sub.i.i.1
  %shr.i.i.1 = lshr i64 %or.i.i.1, 63
  %conv.i.i.1 = trunc i64 %shr.i.i.1 to i32
  %xor.i79.1 = xor i32 %conv.i.i.1, 1
  %and.1 = and i32 %xor.i79.1, %conv.i
  %or.1 = or i32 %and.1, %conv.i.1
  %sub8.1 = sub i64 %sub.1, %shr.i
  %arrayidx10.1 = getelementptr inbounds i64, i64* %c, i64 1
  store i64 %sub8.1, i64* %arrayidx10.1, align 8, !tbaa !3
  %arrayidx.2 = getelementptr inbounds i64, i64* %a, i64 2
  %4 = load i64, i64* %arrayidx.2, align 8, !tbaa !3
  %arrayidx2.2 = getelementptr inbounds i64, i64* %b, i64 2
  %5 = load i64, i64* %arrayidx2.2, align 8, !tbaa !3
  %sub.2 = sub i64 %4, %5
  %xor.i.2 = xor i64 %5, %4
  %xor1.i.2 = xor i64 %sub.2, %5
  %or.i.2 = or i64 %xor1.i.2, %xor.i.2
  %xor2.i.2 = xor i64 %or.i.2, %4
  %shr.i.2 = lshr i64 %xor2.i.2, 63
  %conv.i.2 = trunc i64 %shr.i.2 to i32
  %sub.i.i.2 = sub i64 0, %sub.2
  %or.i.i.2 = or i64 %sub.2, %sub.i.i.2
  %shr.i.i.2 = lshr i64 %or.i.i.2, 63
  %conv.i.i.2 = trunc i64 %shr.i.i.2 to i32
  %xor.i79.2 = xor i32 %conv.i.i.2, 1
  %and.2 = and i32 %xor.i79.2, %or.1
  %or.2 = or i32 %and.2, %conv.i.2
  %conv.2 = zext i32 %or.1 to i64
  %sub8.2 = sub i64 %sub.2, %conv.2
  %arrayidx10.2 = getelementptr inbounds i64, i64* %c, i64 2
  store i64 %sub8.2, i64* %arrayidx10.2, align 8, !tbaa !3
  %arrayidx.3 = getelementptr inbounds i64, i64* %a, i64 3
  %6 = load i64, i64* %arrayidx.3, align 8, !tbaa !3
  %arrayidx2.3 = getelementptr inbounds i64, i64* %b, i64 3
  %7 = load i64, i64* %arrayidx2.3, align 8, !tbaa !3
  %sub.3 = sub i64 %6, %7
  %xor.i.3 = xor i64 %7, %6
  %xor1.i.3 = xor i64 %sub.3, %7
  %or.i.3 = or i64 %xor1.i.3, %xor.i.3
  %xor2.i.3 = xor i64 %or.i.3, %6
  %shr.i.3 = lshr i64 %xor2.i.3, 63
  %conv.i.3 = trunc i64 %shr.i.3 to i32
  %sub.i.i.3 = sub i64 0, %sub.3
  %or.i.i.3 = or i64 %sub.3, %sub.i.i.3
  %shr.i.i.3 = lshr i64 %or.i.i.3, 63
  %conv.i.i.3 = trunc i64 %shr.i.i.3 to i32
  %xor.i79.3 = xor i32 %conv.i.i.3, 1
  %and.3 = and i32 %xor.i79.3, %or.2
  %or.3 = or i32 %and.3, %conv.i.3
  %conv.3 = zext i32 %or.2 to i64
  %sub8.3 = sub i64 %sub.3, %conv.3
  %arrayidx10.3 = getelementptr inbounds i64, i64* %c, i64 3
  store i64 %sub8.3, i64* %arrayidx10.3, align 8, !tbaa !3
  %arrayidx.4 = getelementptr inbounds i64, i64* %a, i64 4
  %8 = load i64, i64* %arrayidx.4, align 8, !tbaa !3
  %arrayidx2.4 = getelementptr inbounds i64, i64* %b, i64 4
  %9 = load i64, i64* %arrayidx2.4, align 8, !tbaa !3
  %sub.4 = sub i64 %8, %9
  %xor.i.4 = xor i64 %9, %8
  %xor1.i.4 = xor i64 %sub.4, %9
  %or.i.4 = or i64 %xor1.i.4, %xor.i.4
  %xor2.i.4 = xor i64 %or.i.4, %8
  %shr.i.4 = lshr i64 %xor2.i.4, 63
  %conv.i.4 = trunc i64 %shr.i.4 to i32
  %sub.i.i.4 = sub i64 0, %sub.4
  %or.i.i.4 = or i64 %sub.4, %sub.i.i.4
  %shr.i.i.4 = lshr i64 %or.i.i.4, 63
  %conv.i.i.4 = trunc i64 %shr.i.i.4 to i32
  %xor.i79.4 = xor i32 %conv.i.i.4, 1
  %and.4 = and i32 %xor.i79.4, %or.3
  %or.4 = or i32 %and.4, %conv.i.4
  %conv.4 = zext i32 %or.3 to i64
  %sub8.4 = sub i64 %sub.4, %conv.4
  %arrayidx10.4 = getelementptr inbounds i64, i64* %c, i64 4
  store i64 %sub8.4, i64* %arrayidx10.4, align 8, !tbaa !3
  %arrayidx.5 = getelementptr inbounds i64, i64* %a, i64 5
  %10 = load i64, i64* %arrayidx.5, align 8, !tbaa !3
  %arrayidx2.5 = getelementptr inbounds i64, i64* %b, i64 5
  %11 = load i64, i64* %arrayidx2.5, align 8, !tbaa !3
  %sub.5 = sub i64 %10, %11
  %xor.i.5 = xor i64 %11, %10
  %xor1.i.5 = xor i64 %sub.5, %11
  %or.i.5 = or i64 %xor1.i.5, %xor.i.5
  %xor2.i.5 = xor i64 %or.i.5, %10
  %shr.i.5 = lshr i64 %xor2.i.5, 63
  %conv.i.5 = trunc i64 %shr.i.5 to i32
  %sub.i.i.5 = sub i64 0, %sub.5
  %or.i.i.5 = or i64 %sub.5, %sub.i.i.5
  %shr.i.i.5 = lshr i64 %or.i.i.5, 63
  %conv.i.i.5 = trunc i64 %shr.i.i.5 to i32
  %xor.i79.5 = xor i32 %conv.i.i.5, 1
  %and.5 = and i32 %xor.i79.5, %or.4
  %or.5 = or i32 %and.5, %conv.i.5
  %conv.5 = zext i32 %or.4 to i64
  %sub8.5 = sub i64 %sub.5, %conv.5
  %arrayidx10.5 = getelementptr inbounds i64, i64* %c, i64 5
  store i64 %sub8.5, i64* %arrayidx10.5, align 8, !tbaa !3
  %arrayidx.6 = getelementptr inbounds i64, i64* %a, i64 6
  %12 = load i64, i64* %arrayidx.6, align 8, !tbaa !3
  %arrayidx2.6 = getelementptr inbounds i64, i64* %b, i64 6
  %13 = load i64, i64* %arrayidx2.6, align 8, !tbaa !3
  %sub.6 = sub i64 %12, %13
  %xor.i.6 = xor i64 %13, %12
  %xor1.i.6 = xor i64 %sub.6, %13
  %or.i.6 = or i64 %xor1.i.6, %xor.i.6
  %xor2.i.6 = xor i64 %or.i.6, %12
  %shr.i.6 = lshr i64 %xor2.i.6, 63
  %conv.i.6 = trunc i64 %shr.i.6 to i32
  %sub.i.i.6 = sub i64 0, %sub.6
  %or.i.i.6 = or i64 %sub.6, %sub.i.i.6
  %shr.i.i.6 = lshr i64 %or.i.i.6, 63
  %conv.i.i.6 = trunc i64 %shr.i.i.6 to i32
  %xor.i79.6 = xor i32 %conv.i.i.6, 1
  %and.6 = and i32 %xor.i79.6, %or.5
  %or.6 = or i32 %and.6, %conv.i.6
  %conv.6 = zext i32 %or.5 to i64
  %sub8.6 = sub i64 %sub.6, %conv.6
  %arrayidx10.6 = getelementptr inbounds i64, i64* %c, i64 6
  %conv11 = zext i32 %or.6 to i64
  %sub12 = sub nsw i64 0, %conv11
  %14 = load i64, i64* %c, align 8, !tbaa !3
  %15 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 0), align 16, !tbaa !3
  %and23 = and i64 %15, %sub12
  %add24 = add i64 %and23, %14
  store i64 %add24, i64* %c, align 8, !tbaa !3
  %xor.i66 = xor i64 %add24, %14
  %xor1.i68 = xor i64 %and23, %14
  %or.i69 = or i64 %xor.i66, %xor1.i68
  %xor2.i70 = xor i64 %or.i69, %add24
  %or32 = lshr i64 %xor2.i70, 63
  %16 = load i64, i64* %arrayidx10.1, align 8, !tbaa !3
  %add.1 = add i64 %16, %or32
  %17 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 1), align 8, !tbaa !3
  %and23.1 = and i64 %17, %sub12
  %add24.1 = add i64 %and23.1, %add.1
  store i64 %add24.1, i64* %arrayidx10.1, align 8, !tbaa !3
  %18 = xor i64 %add.1, -9223372036854775808
  %xor2.i76.1 = and i64 %18, %16
  %xor.i66.1 = xor i64 %add24.1, %add.1
  %xor1.i68.1 = xor i64 %and23.1, %add.1
  %or.i69.1 = or i64 %xor.i66.1, %xor1.i68.1
  %xor2.i70.1 = xor i64 %or.i69.1, %add24.1
  %shr.i7780.1 = or i64 %xor2.i70.1, %xor2.i76.1
  %or32.1 = lshr i64 %shr.i7780.1, 63
  %19 = load i64, i64* %arrayidx10.2, align 8, !tbaa !3
  %add.2 = add i64 %19, %or32.1
  %20 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 2), align 16, !tbaa !3
  %and23.2 = and i64 %20, %sub12
  %add24.2 = add i64 %and23.2, %add.2
  store i64 %add24.2, i64* %arrayidx10.2, align 8, !tbaa !3
  %21 = xor i64 %add.2, -9223372036854775808
  %xor2.i76.2 = and i64 %21, %19
  %xor.i66.2 = xor i64 %add24.2, %add.2
  %xor1.i68.2 = xor i64 %and23.2, %add.2
  %or.i69.2 = or i64 %xor.i66.2, %xor1.i68.2
  %xor2.i70.2 = xor i64 %or.i69.2, %add24.2
  %shr.i7780.2 = or i64 %xor2.i70.2, %xor2.i76.2
  %or32.2 = lshr i64 %shr.i7780.2, 63
  %22 = load i64, i64* %arrayidx10.3, align 8, !tbaa !3
  %add.3 = add i64 %22, %or32.2
  %23 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 3), align 8, !tbaa !3
  %and23.3 = and i64 %23, %sub12
  %add24.3 = add i64 %and23.3, %add.3
  store i64 %add24.3, i64* %arrayidx10.3, align 8, !tbaa !3
  %24 = xor i64 %add.3, -9223372036854775808
  %xor2.i76.3 = and i64 %24, %22
  %xor.i66.3 = xor i64 %add24.3, %add.3
  %xor1.i68.3 = xor i64 %and23.3, %add.3
  %or.i69.3 = or i64 %xor.i66.3, %xor1.i68.3
  %xor2.i70.3 = xor i64 %or.i69.3, %add24.3
  %shr.i7780.3 = or i64 %xor2.i70.3, %xor2.i76.3
  %or32.3 = lshr i64 %shr.i7780.3, 63
  %25 = load i64, i64* %arrayidx10.4, align 8, !tbaa !3
  %add.4 = add i64 %25, %or32.3
  %26 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 4), align 16, !tbaa !3
  %and23.4 = and i64 %26, %sub12
  %add24.4 = add i64 %and23.4, %add.4
  store i64 %add24.4, i64* %arrayidx10.4, align 8, !tbaa !3
  %27 = xor i64 %add.4, -9223372036854775808
  %xor2.i76.4 = and i64 %27, %25
  %xor.i66.4 = xor i64 %add24.4, %add.4
  %xor1.i68.4 = xor i64 %and23.4, %add.4
  %or.i69.4 = or i64 %xor.i66.4, %xor1.i68.4
  %xor2.i70.4 = xor i64 %or.i69.4, %add24.4
  %shr.i7780.4 = or i64 %xor2.i70.4, %xor2.i76.4
  %or32.4 = lshr i64 %shr.i7780.4, 63
  %add.5 = add i64 %sub8.5, %or32.4
  %28 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 5), align 8, !tbaa !3
  %and23.5 = and i64 %28, %sub12
  %add24.5 = add i64 %and23.5, %add.5
  store i64 %add24.5, i64* %arrayidx10.5, align 8, !tbaa !3
  %29 = xor i64 %add.5, -9223372036854775808
  %xor2.i76.5 = and i64 %29, %sub8.5
  %xor.i66.5 = xor i64 %add24.5, %add.5
  %xor1.i68.5 = xor i64 %and23.5, %add.5
  %or.i69.5 = or i64 %xor.i66.5, %xor1.i68.5
  %xor2.i70.5 = xor i64 %or.i69.5, %add24.5
  %shr.i7780.5 = or i64 %xor2.i70.5, %xor2.i76.5
  %or32.5 = lshr i64 %shr.i7780.5, 63
  %add.6 = add i64 %sub8.6, %or32.5
  %30 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 6), align 16, !tbaa !3
  %and23.6 = and i64 %30, %sub12
  %add24.6 = add i64 %and23.6, %add.6
  store i64 %add24.6, i64* %arrayidx10.6, align 8, !tbaa !3
  ret void
}

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define void @fpneg434(i64* nocapture %a) local_unnamed_addr #0 {
entry:
  %0 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 0), align 16, !tbaa !3
  %1 = load i64, i64* %a, align 8, !tbaa !3
  %sub = sub i64 %0, %1
  %xor.i = xor i64 %1, %0
  %xor1.i = xor i64 %sub, %1
  %or.i = or i64 %xor1.i, %xor.i
  %xor2.i = xor i64 %or.i, %0
  %shr.i = lshr i64 %xor2.i, 63
  %conv.i = trunc i64 %shr.i to i32
  store i64 %sub, i64* %a, align 8, !tbaa !3
  %2 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 1), align 8, !tbaa !3
  %arrayidx2.1 = getelementptr inbounds i64, i64* %a, i64 1
  %3 = load i64, i64* %arrayidx2.1, align 8, !tbaa !3
  %sub.1 = sub i64 %2, %3
  %xor.i.1 = xor i64 %3, %2
  %xor1.i.1 = xor i64 %sub.1, %3
  %or.i.1 = or i64 %xor1.i.1, %xor.i.1
  %xor2.i.1 = xor i64 %or.i.1, %2
  %shr.i.1 = lshr i64 %xor2.i.1, 63
  %conv.i.1 = trunc i64 %shr.i.1 to i32
  %sub.i.i.1 = sub i64 0, %sub.1
  %or.i.i.1 = or i64 %sub.1, %sub.i.i.1
  %shr.i.i.1 = lshr i64 %or.i.i.1, 63
  %conv.i.i.1 = trunc i64 %shr.i.i.1 to i32
  %xor.i25.1 = xor i32 %conv.i.i.1, 1
  %and.1 = and i32 %xor.i25.1, %conv.i
  %or.1 = or i32 %and.1, %conv.i.1
  %sub8.1 = sub i64 %sub.1, %shr.i
  store i64 %sub8.1, i64* %arrayidx2.1, align 8, !tbaa !3
  %4 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 2), align 16, !tbaa !3
  %arrayidx2.2 = getelementptr inbounds i64, i64* %a, i64 2
  %5 = load i64, i64* %arrayidx2.2, align 8, !tbaa !3
  %sub.2 = sub i64 %4, %5
  %xor.i.2 = xor i64 %5, %4
  %xor1.i.2 = xor i64 %sub.2, %5
  %or.i.2 = or i64 %xor1.i.2, %xor.i.2
  %xor2.i.2 = xor i64 %or.i.2, %4
  %shr.i.2 = lshr i64 %xor2.i.2, 63
  %conv.i.2 = trunc i64 %shr.i.2 to i32
  %sub.i.i.2 = sub i64 0, %sub.2
  %or.i.i.2 = or i64 %sub.2, %sub.i.i.2
  %shr.i.i.2 = lshr i64 %or.i.i.2, 63
  %conv.i.i.2 = trunc i64 %shr.i.i.2 to i32
  %xor.i25.2 = xor i32 %conv.i.i.2, 1
  %and.2 = and i32 %xor.i25.2, %or.1
  %or.2 = or i32 %and.2, %conv.i.2
  %conv.2 = zext i32 %or.1 to i64
  %sub8.2 = sub i64 %sub.2, %conv.2
  store i64 %sub8.2, i64* %arrayidx2.2, align 8, !tbaa !3
  %6 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 3), align 8, !tbaa !3
  %arrayidx2.3 = getelementptr inbounds i64, i64* %a, i64 3
  %7 = load i64, i64* %arrayidx2.3, align 8, !tbaa !3
  %sub.3 = sub i64 %6, %7
  %xor.i.3 = xor i64 %7, %6
  %xor1.i.3 = xor i64 %sub.3, %7
  %or.i.3 = or i64 %xor1.i.3, %xor.i.3
  %xor2.i.3 = xor i64 %or.i.3, %6
  %shr.i.3 = lshr i64 %xor2.i.3, 63
  %conv.i.3 = trunc i64 %shr.i.3 to i32
  %sub.i.i.3 = sub i64 0, %sub.3
  %or.i.i.3 = or i64 %sub.3, %sub.i.i.3
  %shr.i.i.3 = lshr i64 %or.i.i.3, 63
  %conv.i.i.3 = trunc i64 %shr.i.i.3 to i32
  %xor.i25.3 = xor i32 %conv.i.i.3, 1
  %and.3 = and i32 %xor.i25.3, %or.2
  %or.3 = or i32 %and.3, %conv.i.3
  %conv.3 = zext i32 %or.2 to i64
  %sub8.3 = sub i64 %sub.3, %conv.3
  store i64 %sub8.3, i64* %arrayidx2.3, align 8, !tbaa !3
  %8 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 4), align 16, !tbaa !3
  %arrayidx2.4 = getelementptr inbounds i64, i64* %a, i64 4
  %9 = load i64, i64* %arrayidx2.4, align 8, !tbaa !3
  %sub.4 = sub i64 %8, %9
  %xor.i.4 = xor i64 %9, %8
  %xor1.i.4 = xor i64 %sub.4, %9
  %or.i.4 = or i64 %xor1.i.4, %xor.i.4
  %xor2.i.4 = xor i64 %or.i.4, %8
  %shr.i.4 = lshr i64 %xor2.i.4, 63
  %conv.i.4 = trunc i64 %shr.i.4 to i32
  %sub.i.i.4 = sub i64 0, %sub.4
  %or.i.i.4 = or i64 %sub.4, %sub.i.i.4
  %shr.i.i.4 = lshr i64 %or.i.i.4, 63
  %conv.i.i.4 = trunc i64 %shr.i.i.4 to i32
  %xor.i25.4 = xor i32 %conv.i.i.4, 1
  %and.4 = and i32 %xor.i25.4, %or.3
  %or.4 = or i32 %and.4, %conv.i.4
  %conv.4 = zext i32 %or.3 to i64
  %sub8.4 = sub i64 %sub.4, %conv.4
  store i64 %sub8.4, i64* %arrayidx2.4, align 8, !tbaa !3
  %10 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 5), align 8, !tbaa !3
  %arrayidx2.5 = getelementptr inbounds i64, i64* %a, i64 5
  %11 = load i64, i64* %arrayidx2.5, align 8, !tbaa !3
  %sub.5 = sub i64 %10, %11
  %xor.i.5 = xor i64 %11, %10
  %xor1.i.5 = xor i64 %sub.5, %11
  %or.i.5 = or i64 %xor1.i.5, %xor.i.5
  %xor2.i.5 = xor i64 %or.i.5, %10
  %shr.i.5 = lshr i64 %xor2.i.5, 63
  %conv.i.5 = trunc i64 %shr.i.5 to i32
  %sub.i.i.5 = sub i64 0, %sub.5
  %or.i.i.5 = or i64 %sub.5, %sub.i.i.5
  %shr.i.i.5 = lshr i64 %or.i.i.5, 63
  %conv.i.i.5 = trunc i64 %shr.i.i.5 to i32
  %xor.i25.5 = xor i32 %conv.i.i.5, 1
  %and.5 = and i32 %xor.i25.5, %or.4
  %or.5 = or i32 %and.5, %conv.i.5
  %conv.5 = zext i32 %or.4 to i64
  %sub8.5 = sub i64 %sub.5, %conv.5
  store i64 %sub8.5, i64* %arrayidx2.5, align 8, !tbaa !3
  %12 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434x2, i64 0, i64 6), align 16, !tbaa !3
  %arrayidx2.6 = getelementptr inbounds i64, i64* %a, i64 6
  %13 = load i64, i64* %arrayidx2.6, align 8, !tbaa !3
  %sub.6 = sub i64 %12, %13
  %conv.6 = zext i32 %or.5 to i64
  %sub8.6 = sub i64 %sub.6, %conv.6
  store i64 %sub8.6, i64* %arrayidx2.6, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @fpdiv2_434(i64* nocapture readonly %a, i64* %c) local_unnamed_addr #1 {
entry:
  %0 = load i64, i64* %a, align 8, !tbaa !3
  %and = and i64 %0, 1
  %sub = sub nsw i64 0, %and
  %1 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434, i64 0, i64 0), align 16, !tbaa !3
  %and4 = and i64 %1, %sub
  %add5 = add i64 %and4, %0
  store i64 %add5, i64* %c, align 8, !tbaa !3
  %xor.i27 = xor i64 %add5, %0
  %xor1.i28 = xor i64 %and4, %0
  %or.i29 = or i64 %xor.i27, %xor1.i28
  %xor2.i30 = xor i64 %or.i29, %add5
  %or = lshr i64 %xor2.i30, 63
  %arrayidx1.1 = getelementptr inbounds i64, i64* %a, i64 1
  %2 = load i64, i64* %arrayidx1.1, align 8, !tbaa !3
  %add.1 = add i64 %2, %or
  %3 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434, i64 0, i64 1), align 8, !tbaa !3
  %and4.1 = and i64 %3, %sub
  %add5.1 = add i64 %and4.1, %add.1
  %arrayidx7.1 = getelementptr inbounds i64, i64* %c, i64 1
  store i64 %add5.1, i64* %arrayidx7.1, align 8, !tbaa !3
  %4 = xor i64 %add.1, -9223372036854775808
  %xor2.i.1 = and i64 %4, %2
  %xor.i27.1 = xor i64 %add5.1, %add.1
  %xor1.i28.1 = xor i64 %and4.1, %add.1
  %or.i29.1 = or i64 %xor.i27.1, %xor1.i28.1
  %xor2.i30.1 = xor i64 %or.i29.1, %add5.1
  %shr.i33.1 = or i64 %xor2.i30.1, %xor2.i.1
  %or.1 = lshr i64 %shr.i33.1, 63
  %arrayidx1.2 = getelementptr inbounds i64, i64* %a, i64 2
  %5 = load i64, i64* %arrayidx1.2, align 8, !tbaa !3
  %add.2 = add i64 %5, %or.1
  %6 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434, i64 0, i64 2), align 16, !tbaa !3
  %and4.2 = and i64 %6, %sub
  %add5.2 = add i64 %and4.2, %add.2
  %arrayidx7.2 = getelementptr inbounds i64, i64* %c, i64 2
  store i64 %add5.2, i64* %arrayidx7.2, align 8, !tbaa !3
  %7 = xor i64 %add.2, -9223372036854775808
  %xor2.i.2 = and i64 %7, %5
  %xor.i27.2 = xor i64 %add5.2, %add.2
  %xor1.i28.2 = xor i64 %and4.2, %add.2
  %or.i29.2 = or i64 %xor.i27.2, %xor1.i28.2
  %xor2.i30.2 = xor i64 %or.i29.2, %add5.2
  %shr.i33.2 = or i64 %xor2.i30.2, %xor2.i.2
  %or.2 = lshr i64 %shr.i33.2, 63
  %arrayidx1.3 = getelementptr inbounds i64, i64* %a, i64 3
  %8 = load i64, i64* %arrayidx1.3, align 8, !tbaa !3
  %add.3 = add i64 %8, %or.2
  %9 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434, i64 0, i64 3), align 8, !tbaa !3
  %and4.3 = and i64 %9, %sub
  %add5.3 = add i64 %and4.3, %add.3
  %arrayidx7.3 = getelementptr inbounds i64, i64* %c, i64 3
  store i64 %add5.3, i64* %arrayidx7.3, align 8, !tbaa !3
  %10 = xor i64 %add.3, -9223372036854775808
  %xor2.i.3 = and i64 %10, %8
  %xor.i27.3 = xor i64 %add5.3, %add.3
  %xor1.i28.3 = xor i64 %and4.3, %add.3
  %or.i29.3 = or i64 %xor.i27.3, %xor1.i28.3
  %xor2.i30.3 = xor i64 %or.i29.3, %add5.3
  %shr.i33.3 = or i64 %xor2.i30.3, %xor2.i.3
  %or.3 = lshr i64 %shr.i33.3, 63
  %arrayidx1.4 = getelementptr inbounds i64, i64* %a, i64 4
  %11 = load i64, i64* %arrayidx1.4, align 8, !tbaa !3
  %add.4 = add i64 %11, %or.3
  %12 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434, i64 0, i64 4), align 16, !tbaa !3
  %and4.4 = and i64 %12, %sub
  %add5.4 = add i64 %and4.4, %add.4
  %arrayidx7.4 = getelementptr inbounds i64, i64* %c, i64 4
  store i64 %add5.4, i64* %arrayidx7.4, align 8, !tbaa !3
  %13 = xor i64 %add.4, -9223372036854775808
  %xor2.i.4 = and i64 %13, %11
  %xor.i27.4 = xor i64 %add5.4, %add.4
  %xor1.i28.4 = xor i64 %and4.4, %add.4
  %or.i29.4 = or i64 %xor.i27.4, %xor1.i28.4
  %xor2.i30.4 = xor i64 %or.i29.4, %add5.4
  %shr.i33.4 = or i64 %xor2.i30.4, %xor2.i.4
  %or.4 = lshr i64 %shr.i33.4, 63
  %arrayidx1.5 = getelementptr inbounds i64, i64* %a, i64 5
  %14 = load i64, i64* %arrayidx1.5, align 8, !tbaa !3
  %add.5 = add i64 %14, %or.4
  %15 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434, i64 0, i64 5), align 8, !tbaa !3
  %and4.5 = and i64 %15, %sub
  %add5.5 = add i64 %and4.5, %add.5
  %arrayidx7.5 = getelementptr inbounds i64, i64* %c, i64 5
  store i64 %add5.5, i64* %arrayidx7.5, align 8, !tbaa !3
  %16 = xor i64 %add.5, -9223372036854775808
  %xor2.i.5 = and i64 %16, %14
  %xor.i27.5 = xor i64 %add5.5, %add.5
  %xor1.i28.5 = xor i64 %and4.5, %add.5
  %or.i29.5 = or i64 %xor.i27.5, %xor1.i28.5
  %xor2.i30.5 = xor i64 %or.i29.5, %add5.5
  %shr.i33.5 = or i64 %xor2.i30.5, %xor2.i.5
  %or.5 = lshr i64 %shr.i33.5, 63
  %arrayidx1.6 = getelementptr inbounds i64, i64* %a, i64 6
  %17 = load i64, i64* %arrayidx1.6, align 8, !tbaa !3
  %add.6 = add i64 %17, %or.5
  %18 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434, i64 0, i64 6), align 16, !tbaa !3
  %and4.6 = and i64 %18, %sub
  %add5.6 = add i64 %and4.6, %add.6
  %arrayidx7.6 = getelementptr inbounds i64, i64* %c, i64 6
  store i64 %add5.6, i64* %arrayidx7.6, align 8, !tbaa !3
  tail call void @mp_shiftr1(i64* %c, i32 7) #5
  ret void
}

declare void @mp_shiftr1(i64*, i32) local_unnamed_addr #2

; Function Attrs: norecurse nounwind ssp uwtable
define void @fpcorrection434(i64* nocapture %a) local_unnamed_addr #3 {
entry:
  %0 = load i64, i64* %a, align 8, !tbaa !3
  %1 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434, i64 0, i64 0), align 16, !tbaa !3
  %sub = sub i64 %0, %1
  %xor.i = xor i64 %1, %0
  %xor1.i = xor i64 %sub, %1
  %or.i = or i64 %xor1.i, %xor.i
  %xor2.i = xor i64 %or.i, %0
  %shr.i = lshr i64 %xor2.i, 63
  %conv.i = trunc i64 %shr.i to i32
  store i64 %sub, i64* %a, align 8, !tbaa !3
  %arrayidx.1 = getelementptr inbounds i64, i64* %a, i64 1
  %2 = load i64, i64* %arrayidx.1, align 8, !tbaa !3
  %3 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434, i64 0, i64 1), align 8, !tbaa !3
  %sub.1 = sub i64 %2, %3
  %xor.i.1 = xor i64 %3, %2
  %xor1.i.1 = xor i64 %sub.1, %3
  %or.i.1 = or i64 %xor1.i.1, %xor.i.1
  %xor2.i.1 = xor i64 %or.i.1, %2
  %shr.i.1 = lshr i64 %xor2.i.1, 63
  %conv.i.1 = trunc i64 %shr.i.1 to i32
  %sub.i.i.1 = sub i64 0, %sub.1
  %or.i.i.1 = or i64 %sub.1, %sub.i.i.1
  %shr.i.i.1 = lshr i64 %or.i.i.1, 63
  %conv.i.i.1 = trunc i64 %shr.i.i.1 to i32
  %xor.i79.1 = xor i32 %conv.i.i.1, 1
  %and.1 = and i32 %xor.i79.1, %conv.i
  %or.1 = or i32 %and.1, %conv.i.1
  %sub8.1 = sub i64 %sub.1, %shr.i
  store i64 %sub8.1, i64* %arrayidx.1, align 8, !tbaa !3
  %arrayidx.2 = getelementptr inbounds i64, i64* %a, i64 2
  %4 = load i64, i64* %arrayidx.2, align 8, !tbaa !3
  %5 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434, i64 0, i64 2), align 16, !tbaa !3
  %sub.2 = sub i64 %4, %5
  %xor.i.2 = xor i64 %5, %4
  %xor1.i.2 = xor i64 %sub.2, %5
  %or.i.2 = or i64 %xor1.i.2, %xor.i.2
  %xor2.i.2 = xor i64 %or.i.2, %4
  %shr.i.2 = lshr i64 %xor2.i.2, 63
  %conv.i.2 = trunc i64 %shr.i.2 to i32
  %sub.i.i.2 = sub i64 0, %sub.2
  %or.i.i.2 = or i64 %sub.2, %sub.i.i.2
  %shr.i.i.2 = lshr i64 %or.i.i.2, 63
  %conv.i.i.2 = trunc i64 %shr.i.i.2 to i32
  %xor.i79.2 = xor i32 %conv.i.i.2, 1
  %and.2 = and i32 %xor.i79.2, %or.1
  %or.2 = or i32 %and.2, %conv.i.2
  %conv.2 = zext i32 %or.1 to i64
  %sub8.2 = sub i64 %sub.2, %conv.2
  store i64 %sub8.2, i64* %arrayidx.2, align 8, !tbaa !3
  %arrayidx.3 = getelementptr inbounds i64, i64* %a, i64 3
  %6 = load i64, i64* %arrayidx.3, align 8, !tbaa !3
  %7 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434, i64 0, i64 3), align 8, !tbaa !3
  %sub.3 = sub i64 %6, %7
  %xor.i.3 = xor i64 %7, %6
  %xor1.i.3 = xor i64 %sub.3, %7
  %or.i.3 = or i64 %xor1.i.3, %xor.i.3
  %xor2.i.3 = xor i64 %or.i.3, %6
  %shr.i.3 = lshr i64 %xor2.i.3, 63
  %conv.i.3 = trunc i64 %shr.i.3 to i32
  %sub.i.i.3 = sub i64 0, %sub.3
  %or.i.i.3 = or i64 %sub.3, %sub.i.i.3
  %shr.i.i.3 = lshr i64 %or.i.i.3, 63
  %conv.i.i.3 = trunc i64 %shr.i.i.3 to i32
  %xor.i79.3 = xor i32 %conv.i.i.3, 1
  %and.3 = and i32 %xor.i79.3, %or.2
  %or.3 = or i32 %and.3, %conv.i.3
  %conv.3 = zext i32 %or.2 to i64
  %sub8.3 = sub i64 %sub.3, %conv.3
  store i64 %sub8.3, i64* %arrayidx.3, align 8, !tbaa !3
  %arrayidx.4 = getelementptr inbounds i64, i64* %a, i64 4
  %8 = load i64, i64* %arrayidx.4, align 8, !tbaa !3
  %9 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434, i64 0, i64 4), align 16, !tbaa !3
  %sub.4 = sub i64 %8, %9
  %xor.i.4 = xor i64 %9, %8
  %xor1.i.4 = xor i64 %sub.4, %9
  %or.i.4 = or i64 %xor1.i.4, %xor.i.4
  %xor2.i.4 = xor i64 %or.i.4, %8
  %shr.i.4 = lshr i64 %xor2.i.4, 63
  %conv.i.4 = trunc i64 %shr.i.4 to i32
  %sub.i.i.4 = sub i64 0, %sub.4
  %or.i.i.4 = or i64 %sub.4, %sub.i.i.4
  %shr.i.i.4 = lshr i64 %or.i.i.4, 63
  %conv.i.i.4 = trunc i64 %shr.i.i.4 to i32
  %xor.i79.4 = xor i32 %conv.i.i.4, 1
  %and.4 = and i32 %xor.i79.4, %or.3
  %or.4 = or i32 %and.4, %conv.i.4
  %conv.4 = zext i32 %or.3 to i64
  %sub8.4 = sub i64 %sub.4, %conv.4
  %arrayidx.5 = getelementptr inbounds i64, i64* %a, i64 5
  %10 = load i64, i64* %arrayidx.5, align 8, !tbaa !3
  %11 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434, i64 0, i64 5), align 8, !tbaa !3
  %sub.5 = sub i64 %10, %11
  %xor.i.5 = xor i64 %11, %10
  %xor1.i.5 = xor i64 %sub.5, %11
  %or.i.5 = or i64 %xor1.i.5, %xor.i.5
  %xor2.i.5 = xor i64 %or.i.5, %10
  %shr.i.5 = lshr i64 %xor2.i.5, 63
  %conv.i.5 = trunc i64 %shr.i.5 to i32
  %sub.i.i.5 = sub i64 0, %sub.5
  %or.i.i.5 = or i64 %sub.5, %sub.i.i.5
  %shr.i.i.5 = lshr i64 %or.i.i.5, 63
  %conv.i.i.5 = trunc i64 %shr.i.i.5 to i32
  %xor.i79.5 = xor i32 %conv.i.i.5, 1
  %and.5 = and i32 %xor.i79.5, %or.4
  %or.5 = or i32 %and.5, %conv.i.5
  %conv.5 = zext i32 %or.4 to i64
  %sub8.5 = sub i64 %sub.5, %conv.5
  %arrayidx.6 = getelementptr inbounds i64, i64* %a, i64 6
  %12 = load i64, i64* %arrayidx.6, align 8, !tbaa !3
  %13 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434, i64 0, i64 6), align 16, !tbaa !3
  %sub.6 = sub i64 %12, %13
  %xor.i.6 = xor i64 %13, %12
  %xor1.i.6 = xor i64 %sub.6, %13
  %or.i.6 = or i64 %xor1.i.6, %xor.i.6
  %xor2.i.6 = xor i64 %or.i.6, %12
  %shr.i.6 = lshr i64 %xor2.i.6, 63
  %conv.i.6 = trunc i64 %shr.i.6 to i32
  %sub.i.i.6 = sub i64 0, %sub.6
  %or.i.i.6 = or i64 %sub.6, %sub.i.i.6
  %shr.i.i.6 = lshr i64 %or.i.i.6, 63
  %conv.i.i.6 = trunc i64 %shr.i.i.6 to i32
  %xor.i79.6 = xor i32 %conv.i.i.6, 1
  %and.6 = and i32 %xor.i79.6, %or.5
  %or.6 = or i32 %and.6, %conv.i.6
  %conv.6 = zext i32 %or.5 to i64
  %sub8.6 = sub i64 %sub.6, %conv.6
  %conv11 = zext i32 %or.6 to i64
  %sub12 = sub nsw i64 0, %conv11
  %14 = load i64, i64* %a, align 8, !tbaa !3
  %15 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434, i64 0, i64 0), align 16, !tbaa !3
  %and23 = and i64 %15, %sub12
  %add24 = add i64 %and23, %14
  store i64 %add24, i64* %a, align 8, !tbaa !3
  %xor.i66 = xor i64 %add24, %14
  %xor1.i68 = xor i64 %and23, %14
  %or.i69 = or i64 %xor.i66, %xor1.i68
  %xor2.i70 = xor i64 %or.i69, %add24
  %or32 = lshr i64 %xor2.i70, 63
  %16 = load i64, i64* %arrayidx.1, align 8, !tbaa !3
  %add.1 = add i64 %16, %or32
  %17 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434, i64 0, i64 1), align 8, !tbaa !3
  %and23.1 = and i64 %17, %sub12
  %add24.1 = add i64 %and23.1, %add.1
  store i64 %add24.1, i64* %arrayidx.1, align 8, !tbaa !3
  %18 = xor i64 %add.1, -9223372036854775808
  %xor2.i76.1 = and i64 %18, %16
  %xor.i66.1 = xor i64 %add24.1, %add.1
  %xor1.i68.1 = xor i64 %and23.1, %add.1
  %or.i69.1 = or i64 %xor.i66.1, %xor1.i68.1
  %xor2.i70.1 = xor i64 %or.i69.1, %add24.1
  %shr.i7780.1 = or i64 %xor2.i70.1, %xor2.i76.1
  %or32.1 = lshr i64 %shr.i7780.1, 63
  %19 = load i64, i64* %arrayidx.2, align 8, !tbaa !3
  %add.2 = add i64 %19, %or32.1
  %20 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434, i64 0, i64 2), align 16, !tbaa !3
  %and23.2 = and i64 %20, %sub12
  %add24.2 = add i64 %and23.2, %add.2
  store i64 %add24.2, i64* %arrayidx.2, align 8, !tbaa !3
  %21 = xor i64 %add.2, -9223372036854775808
  %xor2.i76.2 = and i64 %21, %19
  %xor.i66.2 = xor i64 %add24.2, %add.2
  %xor1.i68.2 = xor i64 %and23.2, %add.2
  %or.i69.2 = or i64 %xor.i66.2, %xor1.i68.2
  %xor2.i70.2 = xor i64 %or.i69.2, %add24.2
  %shr.i7780.2 = or i64 %xor2.i70.2, %xor2.i76.2
  %or32.2 = lshr i64 %shr.i7780.2, 63
  %22 = load i64, i64* %arrayidx.3, align 8, !tbaa !3
  %add.3 = add i64 %22, %or32.2
  %23 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434, i64 0, i64 3), align 8, !tbaa !3
  %and23.3 = and i64 %23, %sub12
  %add24.3 = add i64 %and23.3, %add.3
  store i64 %add24.3, i64* %arrayidx.3, align 8, !tbaa !3
  %24 = xor i64 %add.3, -9223372036854775808
  %xor2.i76.3 = and i64 %24, %22
  %xor.i66.3 = xor i64 %add24.3, %add.3
  %xor1.i68.3 = xor i64 %and23.3, %add.3
  %or.i69.3 = or i64 %xor.i66.3, %xor1.i68.3
  %xor2.i70.3 = xor i64 %or.i69.3, %add24.3
  %shr.i7780.3 = or i64 %xor2.i70.3, %xor2.i76.3
  %or32.3 = lshr i64 %shr.i7780.3, 63
  %add.4 = add i64 %sub8.4, %or32.3
  %25 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434, i64 0, i64 4), align 16, !tbaa !3
  %and23.4 = and i64 %25, %sub12
  %add24.4 = add i64 %and23.4, %add.4
  store i64 %add24.4, i64* %arrayidx.4, align 8, !tbaa !3
  %26 = xor i64 %add.4, -9223372036854775808
  %xor2.i76.4 = and i64 %26, %sub8.4
  %xor.i66.4 = xor i64 %add24.4, %add.4
  %xor1.i68.4 = xor i64 %and23.4, %add.4
  %or.i69.4 = or i64 %xor.i66.4, %xor1.i68.4
  %xor2.i70.4 = xor i64 %or.i69.4, %add24.4
  %shr.i7780.4 = or i64 %xor2.i70.4, %xor2.i76.4
  %or32.4 = lshr i64 %shr.i7780.4, 63
  %add.5 = add i64 %sub8.5, %or32.4
  %27 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434, i64 0, i64 5), align 8, !tbaa !3
  %and23.5 = and i64 %27, %sub12
  %add24.5 = add i64 %and23.5, %add.5
  store i64 %add24.5, i64* %arrayidx.5, align 8, !tbaa !3
  %28 = xor i64 %add.5, -9223372036854775808
  %xor2.i76.5 = and i64 %28, %sub8.5
  %xor.i66.5 = xor i64 %add24.5, %add.5
  %xor1.i68.5 = xor i64 %and23.5, %add.5
  %or.i69.5 = or i64 %xor.i66.5, %xor1.i68.5
  %xor2.i70.5 = xor i64 %or.i69.5, %add24.5
  %shr.i7780.5 = or i64 %xor2.i70.5, %xor2.i76.5
  %or32.5 = lshr i64 %shr.i7780.5, 63
  %add.6 = add i64 %sub8.6, %or32.5
  %29 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @p434, i64 0, i64 6), align 16, !tbaa !3
  %and23.6 = and i64 %29, %sub12
  %add24.6 = add i64 %and23.6, %add.6
  store i64 %add24.6, i64* %arrayidx.6, align 8, !tbaa !3
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @digit_x_digit(i64 %a, i64 %b, i64* nocapture %c) local_unnamed_addr #3 {
entry:
  %and = and i64 %a, 4294967295
  %shr = lshr i64 %a, 32
  %and1 = and i64 %b, 4294967295
  %shr2 = lshr i64 %b, 32
  %mul = mul nuw i64 %and1, %and
  %mul3 = mul nuw i64 %shr2, %and
  %mul4 = mul nuw i64 %and1, %shr
  %mul5 = mul nuw i64 %shr2, %shr
  %and6 = and i64 %mul, 4294967295
  %shr7 = lshr i64 %mul, 32
  %and8 = and i64 %mul4, 4294967295
  %and9 = and i64 %mul3, 4294967295
  %add = add nuw nsw i64 %shr7, %and8
  %add10 = add nuw nsw i64 %add, %and9
  %shr11 = lshr i64 %add10, 32
  %shl = shl i64 %add10, 32
  %xor68 = or i64 %shl, %and6
  store i64 %xor68, i64* %c, align 8, !tbaa !3
  %shr13 = lshr i64 %mul4, 32
  %shr14 = lshr i64 %mul3, 32
  %and15 = and i64 %mul5, 4294967295
  %add16 = add nuw nsw i64 %shr13, %shr14
  %add17 = add nuw nsw i64 %add16, %and15
  %add18 = add nuw nsw i64 %add17, %shr11
  %and19 = and i64 %add18, 4294967295
  %arrayidx20 = getelementptr inbounds i64, i64* %c, i64 1
  %and21 = and i64 %add18, 30064771072
  %and22 = and i64 %mul5, -4294967296
  %add23 = add i64 %and21, %and22
  %xor2569 = or i64 %add23, %and19
  store i64 %xor2569, i64* %arrayidx20, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @mp_mul(i64* nocapture readonly %a, i64* nocapture readonly %b, i64* nocapture %c, i32 %nwords) local_unnamed_addr #1 {
entry:
  %cmp220 = icmp eq i32 %nwords, 0
  br i1 %cmp220, label %for.cond25.preheader, label %for.cond1.preheader.preheader

for.cond1.preheader.preheader:                    ; preds = %entry
  %wide.trip.count242 = zext i32 %nwords to i64
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.end, %for.cond1.preheader.preheader
  %indvars.iv240 = phi i64 [ 0, %for.cond1.preheader.preheader ], [ %indvars.iv.next241, %for.end ]
  %indvars.iv238 = phi i64 [ 1, %for.cond1.preheader.preheader ], [ %indvars.iv.next239, %for.end ]
  %u.0222 = phi i64 [ 0, %for.cond1.preheader.preheader ], [ %add19, %for.end ]
  %v.0221 = phi i64 [ 0, %for.cond1.preheader.preheader ], [ %add13, %for.end ]
  br label %for.body3

for.cond25.preheader:                             ; preds = %for.end, %entry
  %v.0.lcssa = phi i64 [ 0, %entry ], [ %add13, %for.end ]
  %u.0.lcssa = phi i64 [ 0, %entry ], [ %add19, %for.end ]
  %mul = shl i32 %nwords, 1
  %sub26 = add i32 %mul, -1
  %cmp27210 = icmp ugt i32 %sub26, %nwords
  br i1 %cmp27210, label %for.body29.preheader, label %for.end67

for.body29.preheader:                             ; preds = %for.cond25.preheader
  %0 = zext i32 %nwords to i64
  %wide.trip.count = zext i32 %sub26 to i64
  br label %for.body29

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv232 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next233, %for.body3 ]
  %t.1218 = phi i64 [ 0, %for.cond1.preheader ], [ %add19, %for.body3 ]
  %u.1217 = phi i64 [ %u.0222, %for.cond1.preheader ], [ %add13, %for.body3 ]
  %v.1216 = phi i64 [ %v.0221, %for.cond1.preheader ], [ %add8, %for.body3 ]
  %arrayidx = getelementptr inbounds i64, i64* %a, i64 %indvars.iv232
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !3
  %sub = sub nsw i64 %indvars.iv240, %indvars.iv232
  %idxprom4 = and i64 %sub, 4294967295
  %arrayidx5 = getelementptr inbounds i64, i64* %b, i64 %idxprom4
  %2 = load i64, i64* %arrayidx5, align 8, !tbaa !3
  %and.i = and i64 %1, 4294967295
  %shr.i = lshr i64 %1, 32
  %and1.i = and i64 %2, 4294967295
  %shr2.i = lshr i64 %2, 32
  %mul.i = mul nuw i64 %and1.i, %and.i
  %mul3.i = mul nuw i64 %shr2.i, %and.i
  %mul4.i = mul nuw i64 %and1.i, %shr.i
  %mul5.i = mul nuw i64 %shr2.i, %shr.i
  %and6.i = and i64 %mul.i, 4294967295
  %shr7.i = lshr i64 %mul.i, 32
  %and8.i = and i64 %mul4.i, 4294967295
  %and9.i = and i64 %mul3.i, 4294967295
  %add.i = add nuw nsw i64 %shr7.i, %and8.i
  %add10.i = add nuw nsw i64 %add.i, %and9.i
  %shr11.i = lshr i64 %add10.i, 32
  %shl.i = shl i64 %add10.i, 32
  %xor68.i = or i64 %shl.i, %and6.i
  %shr13.i = lshr i64 %mul4.i, 32
  %shr14.i = lshr i64 %mul3.i, 32
  %and15.i = and i64 %mul5.i, 4294967295
  %add16.i = add nuw nsw i64 %shr13.i, %shr14.i
  %add17.i = add nuw nsw i64 %add16.i, %and15.i
  %add18.i = add nuw nsw i64 %add17.i, %shr11.i
  %and19.i = and i64 %add18.i, 4294967295
  %and21.i = and i64 %add18.i, 30064771072
  %and22.i = and i64 %mul5.i, -4294967296
  %add23.i = add i64 %and21.i, %and22.i
  %xor2569.i = or i64 %add23.i, %and19.i
  %add8 = add i64 %xor68.i, %v.1216
  %xor.i188 = xor i64 %add8, %shl.i
  %xor1.i189 = xor i64 %shl.i, %v.1216
  %or.i190 = or i64 %xor.i188, %xor1.i189
  %xor2.i191 = xor i64 %or.i190, %add8
  %shr.i192 = lshr i64 %xor2.i191, 63
  %add12 = add i64 %shr.i192, %xor2569.i
  %add13 = add i64 %add12, %u.1217
  %3 = xor i64 %add12, -9223372036854775808
  %xor2.i185 = and i64 %3, %add23.i
  %xor.i176 = xor i64 %add13, %add12
  %xor1.i177 = xor i64 %add12, %u.1217
  %or.i178 = or i64 %xor.i176, %xor1.i177
  %xor2.i179 = xor i64 %or.i178, %add13
  %shr.i186201 = or i64 %xor2.i179, %xor2.i185
  %or17200 = lshr i64 %shr.i186201, 63
  %add19 = add i64 %or17200, %t.1218
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 1
  %exitcond237 = icmp eq i64 %indvars.iv.next233, %indvars.iv238
  br i1 %exitcond237, label %for.end, label %for.body3

for.end:                                          ; preds = %for.body3
  %arrayidx21 = getelementptr inbounds i64, i64* %c, i64 %indvars.iv240
  store i64 %add8, i64* %arrayidx21, align 8, !tbaa !3
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1
  %exitcond243 = icmp eq i64 %indvars.iv.next241, %wide.trip.count242
  br i1 %exitcond243, label %for.cond25.preheader, label %for.cond1.preheader

for.body29:                                       ; preds = %for.end62, %for.body29.preheader
  %indvars.iv228 = phi i64 [ %0, %for.body29.preheader ], [ %indvars.iv.next229, %for.end62 ]
  %indvars.iv = phi i32 [ 1, %for.body29.preheader ], [ %indvars.iv.next, %for.end62 ]
  %u.2212 = phi i64 [ %u.0.lcssa, %for.body29.preheader ], [ %t.3.lcssa, %for.end62 ]
  %v.2211 = phi i64 [ %v.0.lcssa, %for.body29.preheader ], [ %u.3.lcssa, %for.end62 ]
  %4 = trunc i64 %indvars.iv228 to i32
  %5 = sub i32 %4, %nwords
  %j.1202 = add i32 %5, 1
  %cmp33203 = icmp ult i32 %j.1202, %nwords
  br i1 %cmp33203, label %for.body35.preheader, label %for.end62

for.body35.preheader:                             ; preds = %for.body29
  %6 = zext i32 %indvars.iv to i64
  br label %for.body35

for.body35:                                       ; preds = %for.body35, %for.body35.preheader
  %indvars.iv226 = phi i64 [ %6, %for.body35.preheader ], [ %indvars.iv.next227, %for.body35 ]
  %t.3206 = phi i64 [ 0, %for.body35.preheader ], [ %add59, %for.body35 ]
  %u.3205 = phi i64 [ %u.2212, %for.body35.preheader ], [ %add53, %for.body35 ]
  %v.3204 = phi i64 [ %v.2211, %for.body35.preheader ], [ %add45, %for.body35 ]
  %arrayidx37 = getelementptr inbounds i64, i64* %a, i64 %indvars.iv226
  %7 = load i64, i64* %arrayidx37, align 8, !tbaa !3
  %sub38 = sub nsw i64 %indvars.iv228, %indvars.iv226
  %idxprom39 = and i64 %sub38, 4294967295
  %arrayidx40 = getelementptr inbounds i64, i64* %b, i64 %idxprom39
  %8 = load i64, i64* %arrayidx40, align 8, !tbaa !3
  %and.i147 = and i64 %7, 4294967295
  %shr.i148 = lshr i64 %7, 32
  %and1.i149 = and i64 %8, 4294967295
  %shr2.i150 = lshr i64 %8, 32
  %mul.i151 = mul nuw i64 %and1.i149, %and.i147
  %mul3.i152 = mul nuw i64 %shr2.i150, %and.i147
  %mul4.i153 = mul nuw i64 %and1.i149, %shr.i148
  %mul5.i154 = mul nuw i64 %shr2.i150, %shr.i148
  %and6.i155 = and i64 %mul.i151, 4294967295
  %shr7.i156 = lshr i64 %mul.i151, 32
  %and8.i157 = and i64 %mul4.i153, 4294967295
  %and9.i158 = and i64 %mul3.i152, 4294967295
  %add.i159 = add nuw nsw i64 %shr7.i156, %and8.i157
  %add10.i160 = add nuw nsw i64 %add.i159, %and9.i158
  %shr11.i161 = lshr i64 %add10.i160, 32
  %shl.i162 = shl i64 %add10.i160, 32
  %xor68.i163 = or i64 %shl.i162, %and6.i155
  %shr13.i164 = lshr i64 %mul4.i153, 32
  %shr14.i165 = lshr i64 %mul3.i152, 32
  %and15.i166 = and i64 %mul5.i154, 4294967295
  %add16.i167 = add nuw nsw i64 %shr13.i164, %shr14.i165
  %add17.i168 = add nuw nsw i64 %add16.i167, %and15.i166
  %add18.i169 = add nuw nsw i64 %add17.i168, %shr11.i161
  %and19.i170 = and i64 %add18.i169, 4294967295
  %and21.i172 = and i64 %add18.i169, 30064771072
  %and22.i173 = and i64 %mul5.i154, -4294967296
  %add23.i174 = add i64 %and21.i172, %and22.i173
  %xor2569.i175 = or i64 %add23.i174, %and19.i170
  %add45 = add i64 %xor68.i163, %v.3204
  %xor.i141 = xor i64 %add45, %shl.i162
  %xor1.i142 = xor i64 %shl.i162, %v.3204
  %or.i143 = or i64 %xor.i141, %xor1.i142
  %xor2.i144 = xor i64 %or.i143, %add45
  %shr.i145 = lshr i64 %xor2.i144, 63
  %add52 = add i64 %shr.i145, %xor2569.i175
  %add53 = add i64 %add52, %u.3205
  %9 = xor i64 %add52, -9223372036854775808
  %xor2.i138 = and i64 %9, %add23.i174
  %xor.i = xor i64 %add53, %add52
  %xor1.i = xor i64 %add52, %u.3205
  %or.i = or i64 %xor.i, %xor1.i
  %xor2.i = xor i64 %or.i, %add53
  %shr.i139199 = or i64 %xor2.i, %xor2.i138
  %or57198 = lshr i64 %shr.i139199, 63
  %add59 = add i64 %or57198, %t.3206
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next227 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nwords
  br i1 %exitcond, label %for.end62, label %for.body35

for.end62:                                        ; preds = %for.body35, %for.body29
  %v.3.lcssa = phi i64 [ %v.2211, %for.body29 ], [ %add45, %for.body35 ]
  %u.3.lcssa = phi i64 [ %u.2212, %for.body29 ], [ %add53, %for.body35 ]
  %t.3.lcssa = phi i64 [ 0, %for.body29 ], [ %add59, %for.body35 ]
  %arrayidx64 = getelementptr inbounds i64, i64* %c, i64 %indvars.iv228
  store i64 %v.3.lcssa, i64* %arrayidx64, align 8, !tbaa !3
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1
  %indvars.iv.next = add i32 %indvars.iv, 1
  %exitcond231 = icmp eq i64 %indvars.iv.next229, %wide.trip.count
  br i1 %exitcond231, label %for.end67, label %for.body29

for.end67:                                        ; preds = %for.end62, %for.cond25.preheader
  %v.2.lcssa = phi i64 [ %v.0.lcssa, %for.cond25.preheader ], [ %u.3.lcssa, %for.end62 ]
  %idxprom70.pre-phi = zext i32 %sub26 to i64
  %arrayidx71 = getelementptr inbounds i64, i64* %c, i64 %idxprom70.pre-phi
  store i64 %v.2.lcssa, i64* %arrayidx71, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @rdc_mont(i64* nocapture readonly %ma, i64* nocapture %mc) local_unnamed_addr #1 {
entry:
  %mc372 = bitcast i64* %mc to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %mc372, i8 0, i64 56, i1 false)
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.end30, %entry
  %indvars.iv365 = phi i64 [ 0, %entry ], [ %indvars.iv.next366, %for.end30 ]
  %u.0349 = phi i64 [ 0, %entry ], [ %add48, %for.end30 ]
  %v.0348 = phi i64 [ 0, %entry ], [ %add41, %for.end30 ]
  %cmp5340 = icmp eq i64 %indvars.iv365, 0
  br i1 %cmp5340, label %for.end30, label %for.body6.lr.ph

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %0 = add nuw i64 %indvars.iv365, 4294967294
  %1 = and i64 %0, 4294967295
  br label %for.body6

for.body6:                                        ; preds = %for.inc28, %for.body6.lr.ph
  %indvars.iv361 = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next362, %for.inc28 ]
  %t.1343 = phi i64 [ 0, %for.body6.lr.ph ], [ %t.2, %for.inc28 ]
  %u.1342 = phi i64 [ %u.0349, %for.body6.lr.ph ], [ %u.2, %for.inc28 ]
  %v.1341 = phi i64 [ %v.0348, %for.body6.lr.ph ], [ %v.2, %for.inc28 ]
  %cmp7 = icmp ult i64 %indvars.iv361, %1
  br i1 %cmp7, label %if.then, label %for.inc28

if.then:                                          ; preds = %for.body6
  %arrayidx9 = getelementptr inbounds i64, i64* %mc, i64 %indvars.iv361
  %2 = load i64, i64* %arrayidx9, align 8, !tbaa !3
  %3 = sub nsw i64 %indvars.iv365, %indvars.iv361
  %idxprom11 = and i64 %3, 4294967295
  %arrayidx12 = getelementptr inbounds [7 x i64], [7 x i64]* @p434p1, i64 0, i64 %idxprom11
  %4 = load i64, i64* %arrayidx12, align 8, !tbaa !3
  %and.i = and i64 %2, 4294967295
  %shr.i = lshr i64 %2, 32
  %and1.i = and i64 %4, 4294967295
  %shr2.i = lshr i64 %4, 32
  %mul.i = mul nuw i64 %and1.i, %and.i
  %mul3.i = mul nuw i64 %shr2.i, %and.i
  %mul4.i = mul nuw i64 %and1.i, %shr.i
  %mul5.i = mul nuw i64 %shr2.i, %shr.i
  %and6.i = and i64 %mul.i, 4294967295
  %shr7.i = lshr i64 %mul.i, 32
  %and8.i = and i64 %mul4.i, 4294967295
  %and9.i = and i64 %mul3.i, 4294967295
  %add.i = add nuw nsw i64 %shr7.i, %and8.i
  %add10.i = add nuw nsw i64 %add.i, %and9.i
  %shr11.i = lshr i64 %add10.i, 32
  %shl.i = shl i64 %add10.i, 32
  %xor68.i = or i64 %shl.i, %and6.i
  %shr13.i = lshr i64 %mul4.i, 32
  %shr14.i = lshr i64 %mul3.i, 32
  %and15.i = and i64 %mul5.i, 4294967295
  %add16.i = add nuw nsw i64 %shr13.i, %shr14.i
  %add17.i = add nuw nsw i64 %add16.i, %and15.i
  %add18.i = add nuw nsw i64 %add17.i, %shr11.i
  %and19.i = and i64 %add18.i, 4294967295
  %and21.i = and i64 %add18.i, 30064771072
  %and22.i = and i64 %mul5.i, -4294967296
  %add23.i = add i64 %and21.i, %and22.i
  %xor2569.i = or i64 %add23.i, %and19.i
  %add16 = add i64 %xor68.i, %v.1341
  %xor.i315 = xor i64 %add16, %shl.i
  %xor1.i316 = xor i64 %shl.i, %v.1341
  %or.i317 = or i64 %xor.i315, %xor1.i316
  %xor2.i318 = xor i64 %or.i317, %add16
  %shr.i319 = lshr i64 %xor2.i318, 63
  %add20 = add i64 %shr.i319, %xor2569.i
  %add21 = add i64 %add20, %u.1342
  %5 = xor i64 %add20, -9223372036854775808
  %xor2.i312 = and i64 %5, %add23.i
  %xor.i303 = xor i64 %add21, %add20
  %xor1.i304 = xor i64 %add20, %u.1342
  %or.i305 = or i64 %xor.i303, %xor1.i304
  %xor2.i306 = xor i64 %or.i305, %add21
  %shr.i313328 = or i64 %xor2.i306, %xor2.i312
  %or25327 = lshr i64 %shr.i313328, 63
  %add27 = add i64 %or25327, %t.1343
  br label %for.inc28

for.inc28:                                        ; preds = %for.body6, %if.then
  %v.2 = phi i64 [ %add16, %if.then ], [ %v.1341, %for.body6 ]
  %u.2 = phi i64 [ %add21, %if.then ], [ %u.1342, %for.body6 ]
  %t.2 = phi i64 [ %add27, %if.then ], [ %t.1343, %for.body6 ]
  %indvars.iv.next362 = add nuw nsw i64 %indvars.iv361, 1
  %exitcond364 = icmp eq i64 %indvars.iv.next362, %indvars.iv365
  br i1 %exitcond364, label %for.end30, label %for.body6

for.end30:                                        ; preds = %for.inc28, %for.cond4.preheader
  %v.1.lcssa = phi i64 [ %v.0348, %for.cond4.preheader ], [ %v.2, %for.inc28 ]
  %u.1.lcssa = phi i64 [ %u.0349, %for.cond4.preheader ], [ %u.2, %for.inc28 ]
  %t.1.lcssa = phi i64 [ 0, %for.cond4.preheader ], [ %t.2, %for.inc28 ]
  %arrayidx34 = getelementptr inbounds i64, i64* %ma, i64 %indvars.iv365
  %6 = load i64, i64* %arrayidx34, align 8, !tbaa !3
  %add35 = add i64 %6, %v.1.lcssa
  %xor.i297 = xor i64 %add35, %v.1.lcssa
  %xor1.i298 = xor i64 %6, %v.1.lcssa
  %or.i299 = or i64 %xor.i297, %xor1.i298
  %xor2.i300 = xor i64 %or.i299, %add35
  %shr.i301 = lshr i64 %xor2.i300, 63
  %add41 = add i64 %shr.i301, %u.1.lcssa
  %7 = xor i64 %add41, -9223372036854775808
  %xor2.i294 = and i64 %7, %u.1.lcssa
  %shr.i295 = lshr i64 %xor2.i294, 63
  %add48 = add i64 %shr.i295, %t.1.lcssa
  %arrayidx50 = getelementptr inbounds i64, i64* %mc, i64 %indvars.iv365
  store i64 %add35, i64* %arrayidx50, align 8, !tbaa !3
  %indvars.iv.next366 = add nuw nsw i64 %indvars.iv365, 1
  %exitcond368 = icmp eq i64 %indvars.iv.next366, 7
  br i1 %exitcond368, label %for.body68.lr.ph, label %for.cond4.preheader

for.body68.lr.ph:                                 ; preds = %for.end30, %for.end100
  %indvars.iv356 = phi i64 [ %indvars.iv.next357, %for.end100 ], [ 7, %for.end30 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.end100 ], [ 1, %for.end30 ]
  %count.0338 = phi i32 [ %spec.select, %for.end100 ], [ 3, %for.end30 ]
  %u.3337 = phi i64 [ %add118, %for.end100 ], [ %add48, %for.end30 ]
  %v.3336 = phi i64 [ %add111, %for.end100 ], [ %add41, %for.end30 ]
  %cmp58 = icmp eq i32 %count.0338, 0
  %sub61 = add i32 %count.0338, -1
  %spec.select = select i1 %cmp58, i32 0, i32 %sub61
  %8 = add nsw i64 %indvars.iv356, -7
  %sub69 = sub i32 7, %spec.select
  %9 = zext i32 %sub69 to i64
  br label %for.body68

for.body68:                                       ; preds = %for.inc98, %for.body68.lr.ph
  %indvars.iv353 = phi i64 [ %indvars.iv, %for.body68.lr.ph ], [ %indvars.iv.next354, %for.inc98 ]
  %t.4332 = phi i64 [ 0, %for.body68.lr.ph ], [ %t.5, %for.inc98 ]
  %u.4331 = phi i64 [ %u.3337, %for.body68.lr.ph ], [ %u.5, %for.inc98 ]
  %v.4330 = phi i64 [ %v.3336, %for.body68.lr.ph ], [ %v.5, %for.inc98 ]
  %cmp70 = icmp ult i64 %indvars.iv353, %9
  br i1 %cmp70, label %if.then72, label %for.inc98

if.then72:                                        ; preds = %for.body68
  %arrayidx74 = getelementptr inbounds i64, i64* %mc, i64 %indvars.iv353
  %10 = load i64, i64* %arrayidx74, align 8, !tbaa !3
  %11 = sub nuw nsw i64 %indvars.iv356, %indvars.iv353
  %arrayidx77 = getelementptr inbounds [7 x i64], [7 x i64]* @p434p1, i64 0, i64 %11
  %12 = load i64, i64* %arrayidx77, align 8, !tbaa !3
  %and.i262 = and i64 %10, 4294967295
  %shr.i263 = lshr i64 %10, 32
  %and1.i264 = and i64 %12, 4294967295
  %shr2.i265 = lshr i64 %12, 32
  %mul.i266 = mul nuw i64 %and1.i264, %and.i262
  %mul3.i267 = mul nuw i64 %shr2.i265, %and.i262
  %mul4.i268 = mul nuw i64 %and1.i264, %shr.i263
  %mul5.i269 = mul nuw i64 %shr2.i265, %shr.i263
  %and6.i270 = and i64 %mul.i266, 4294967295
  %shr7.i271 = lshr i64 %mul.i266, 32
  %and8.i272 = and i64 %mul4.i268, 4294967295
  %and9.i273 = and i64 %mul3.i267, 4294967295
  %add.i274 = add nuw nsw i64 %shr7.i271, %and8.i272
  %add10.i275 = add nuw nsw i64 %add.i274, %and9.i273
  %shr11.i276 = lshr i64 %add10.i275, 32
  %shl.i277 = shl i64 %add10.i275, 32
  %xor68.i278 = or i64 %shl.i277, %and6.i270
  %shr13.i279 = lshr i64 %mul4.i268, 32
  %shr14.i280 = lshr i64 %mul3.i267, 32
  %and15.i281 = and i64 %mul5.i269, 4294967295
  %add16.i282 = add nuw nsw i64 %shr13.i279, %shr14.i280
  %add17.i283 = add nuw nsw i64 %add16.i282, %and15.i281
  %add18.i284 = add nuw nsw i64 %add17.i283, %shr11.i276
  %and19.i285 = and i64 %add18.i284, 4294967295
  %and21.i287 = and i64 %add18.i284, 30064771072
  %and22.i288 = and i64 %mul5.i269, -4294967296
  %add23.i289 = add i64 %and21.i287, %and22.i288
  %xor2569.i290 = or i64 %add23.i289, %and19.i285
  %add82 = add i64 %xor68.i278, %v.4330
  %xor.i256 = xor i64 %add82, %shl.i277
  %xor1.i257 = xor i64 %shl.i277, %v.4330
  %or.i258 = or i64 %xor.i256, %xor1.i257
  %xor2.i259 = xor i64 %or.i258, %add82
  %shr.i260 = lshr i64 %xor2.i259, 63
  %add89 = add i64 %shr.i260, %xor2569.i290
  %add90 = add i64 %add89, %u.4331
  %13 = xor i64 %add89, -9223372036854775808
  %xor2.i253 = and i64 %13, %add23.i289
  %xor.i244 = xor i64 %add90, %add89
  %xor1.i245 = xor i64 %add89, %u.4331
  %or.i246 = or i64 %xor.i244, %xor1.i245
  %xor2.i247 = xor i64 %or.i246, %add90
  %shr.i254326 = or i64 %xor2.i247, %xor2.i253
  %or94325 = lshr i64 %shr.i254326, 63
  %add96 = add i64 %or94325, %t.4332
  br label %for.inc98

for.inc98:                                        ; preds = %for.body68, %if.then72
  %v.5 = phi i64 [ %add82, %if.then72 ], [ %v.4330, %for.body68 ]
  %u.5 = phi i64 [ %add90, %if.then72 ], [ %u.4331, %for.body68 ]
  %t.5 = phi i64 [ %add96, %if.then72 ], [ %t.4332, %for.body68 ]
  %indvars.iv.next354 = add nuw nsw i64 %indvars.iv353, 1
  %exitcond = icmp eq i64 %indvars.iv.next354, 7
  br i1 %exitcond, label %for.end100, label %for.body68

for.end100:                                       ; preds = %for.inc98
  %arrayidx104 = getelementptr inbounds i64, i64* %ma, i64 %indvars.iv356
  %14 = load i64, i64* %arrayidx104, align 8, !tbaa !3
  %add105 = add i64 %14, %v.5
  %xor.i238 = xor i64 %add105, %v.5
  %xor1.i239 = xor i64 %14, %v.5
  %or.i240 = or i64 %xor.i238, %xor1.i239
  %xor2.i241 = xor i64 %or.i240, %add105
  %shr.i242 = lshr i64 %xor2.i241, 63
  %add111 = add i64 %shr.i242, %u.5
  %15 = xor i64 %add111, -9223372036854775808
  %xor2.i = and i64 %15, %u.5
  %shr.i237 = lshr i64 %xor2.i, 63
  %add118 = add i64 %shr.i237, %t.5
  %arrayidx121 = getelementptr inbounds i64, i64* %mc, i64 %8
  store i64 %add105, i64* %arrayidx121, align 8, !tbaa !3
  %indvars.iv.next357 = add nuw nsw i64 %indvars.iv356, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond360 = icmp eq i64 %indvars.iv.next357, 13
  br i1 %exitcond360, label %for.end124, label %for.body68.lr.ph

for.end124:                                       ; preds = %for.end100
  %arrayidx127 = getelementptr inbounds i64, i64* %ma, i64 13
  %16 = load i64, i64* %arrayidx127, align 8, !tbaa !3
  %add128 = add i64 %16, %add111
  %arrayidx132 = getelementptr inbounds i64, i64* %mc, i64 6
  store i64 %add128, i64* %arrayidx132, align 8, !tbaa !3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

attributes #0 = { inlinehint norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-fma4,-gfni,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-prfchw,-ptwrite,-rdpid,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-fma4,-gfni,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-prfchw,-ptwrite,-rdpid,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-fma4,-gfni,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-prfchw,-ptwrite,-rdpid,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-fma4,-gfni,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-prfchw,-ptwrite,-rdpid,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"long long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}

; ModuleID = 'ntt.c'
source_filename = "ntt.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@PQCLEAN_KYBER512_CLEAN_zetas = local_unnamed_addr constant [128 x i16] [i16 -1044, i16 -758, i16 -359, i16 -1517, i16 1493, i16 1422, i16 287, i16 202, i16 -171, i16 622, i16 1577, i16 182, i16 962, i16 -1202, i16 -1474, i16 1468, i16 573, i16 -1325, i16 264, i16 383, i16 -829, i16 1458, i16 -1602, i16 -130, i16 -681, i16 1017, i16 732, i16 608, i16 -1542, i16 411, i16 -205, i16 -1571, i16 1223, i16 652, i16 -552, i16 1015, i16 -1293, i16 1491, i16 -282, i16 -1544, i16 516, i16 -8, i16 -320, i16 -666, i16 -1618, i16 -1162, i16 126, i16 1469, i16 -853, i16 -90, i16 -271, i16 830, i16 107, i16 -1421, i16 -247, i16 -951, i16 -398, i16 961, i16 -1508, i16 -725, i16 448, i16 -1065, i16 677, i16 -1275, i16 -1103, i16 430, i16 555, i16 843, i16 -1251, i16 871, i16 1550, i16 105, i16 422, i16 587, i16 177, i16 -235, i16 -291, i16 -460, i16 1574, i16 1653, i16 -246, i16 778, i16 1159, i16 -147, i16 -777, i16 1483, i16 -602, i16 1119, i16 -1590, i16 644, i16 -872, i16 349, i16 418, i16 329, i16 -156, i16 -75, i16 817, i16 1097, i16 603, i16 610, i16 1322, i16 -1285, i16 -1465, i16 384, i16 -1215, i16 -136, i16 1218, i16 -1335, i16 -874, i16 220, i16 -1187, i16 -1659, i16 -1185, i16 -1530, i16 -1278, i16 794, i16 -1510, i16 -854, i16 -870, i16 478, i16 -108, i16 -308, i16 996, i16 991, i16 958, i16 -1460, i16 1522, i16 1628], align 16

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_KYBER512_CLEAN_ntt(i16* nocapture %r) local_unnamed_addr #0 {
for.body6.lr.ph:
  %arrayidx9 = getelementptr inbounds i16, i16* %r, i64 128
  %0 = load i16, i16* %arrayidx9, align 2, !tbaa !3
  %conv1.i = sext i16 %0 to i32
  %mul.i = mul nsw i32 %conv1.i, -758
  %call.i = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i) #2
  %1 = load i16, i16* %r, align 2, !tbaa !3
  %sub = sub i16 %1, %call.i
  store i16 %sub, i16* %arrayidx9, align 2, !tbaa !3
  %add21 = add i16 %1, %call.i
  store i16 %add21, i16* %r, align 2, !tbaa !3
  %arrayidx9.1286 = getelementptr inbounds i16, i16* %r, i64 129
  %2 = load i16, i16* %arrayidx9.1286, align 2, !tbaa !3
  %conv1.i.1287 = sext i16 %2 to i32
  %mul.i.1288 = mul nsw i32 %conv1.i.1287, -758
  %call.i.1289 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1288) #2
  %arrayidx11.1 = getelementptr inbounds i16, i16* %r, i64 1
  %3 = load i16, i16* %arrayidx11.1, align 2, !tbaa !3
  %sub.1290 = sub i16 %3, %call.i.1289
  store i16 %sub.1290, i16* %arrayidx9.1286, align 2, !tbaa !3
  %add21.1291 = add i16 %3, %call.i.1289
  store i16 %add21.1291, i16* %arrayidx11.1, align 2, !tbaa !3
  %arrayidx9.2293 = getelementptr inbounds i16, i16* %r, i64 130
  %4 = load i16, i16* %arrayidx9.2293, align 2, !tbaa !3
  %conv1.i.2294 = sext i16 %4 to i32
  %mul.i.2295 = mul nsw i32 %conv1.i.2294, -758
  %call.i.2296 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2295) #2
  %arrayidx11.2 = getelementptr inbounds i16, i16* %r, i64 2
  %5 = load i16, i16* %arrayidx11.2, align 2, !tbaa !3
  %sub.2297 = sub i16 %5, %call.i.2296
  store i16 %sub.2297, i16* %arrayidx9.2293, align 2, !tbaa !3
  %add21.2298 = add i16 %5, %call.i.2296
  store i16 %add21.2298, i16* %arrayidx11.2, align 2, !tbaa !3
  %arrayidx9.3300 = getelementptr inbounds i16, i16* %r, i64 131
  %6 = load i16, i16* %arrayidx9.3300, align 2, !tbaa !3
  %conv1.i.3301 = sext i16 %6 to i32
  %mul.i.3302 = mul nsw i32 %conv1.i.3301, -758
  %call.i.3303 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3302) #2
  %arrayidx11.3 = getelementptr inbounds i16, i16* %r, i64 3
  %7 = load i16, i16* %arrayidx11.3, align 2, !tbaa !3
  %sub.3304 = sub i16 %7, %call.i.3303
  store i16 %sub.3304, i16* %arrayidx9.3300, align 2, !tbaa !3
  %add21.3305 = add i16 %7, %call.i.3303
  store i16 %add21.3305, i16* %arrayidx11.3, align 2, !tbaa !3
  %arrayidx9.4307 = getelementptr inbounds i16, i16* %r, i64 132
  %8 = load i16, i16* %arrayidx9.4307, align 2, !tbaa !3
  %conv1.i.4308 = sext i16 %8 to i32
  %mul.i.4309 = mul nsw i32 %conv1.i.4308, -758
  %call.i.4310 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4309) #2
  %arrayidx11.4 = getelementptr inbounds i16, i16* %r, i64 4
  %9 = load i16, i16* %arrayidx11.4, align 2, !tbaa !3
  %sub.4311 = sub i16 %9, %call.i.4310
  store i16 %sub.4311, i16* %arrayidx9.4307, align 2, !tbaa !3
  %add21.4312 = add i16 %9, %call.i.4310
  store i16 %add21.4312, i16* %arrayidx11.4, align 2, !tbaa !3
  %arrayidx9.5314 = getelementptr inbounds i16, i16* %r, i64 133
  %10 = load i16, i16* %arrayidx9.5314, align 2, !tbaa !3
  %conv1.i.5315 = sext i16 %10 to i32
  %mul.i.5316 = mul nsw i32 %conv1.i.5315, -758
  %call.i.5317 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5316) #2
  %arrayidx11.5 = getelementptr inbounds i16, i16* %r, i64 5
  %11 = load i16, i16* %arrayidx11.5, align 2, !tbaa !3
  %sub.5318 = sub i16 %11, %call.i.5317
  store i16 %sub.5318, i16* %arrayidx9.5314, align 2, !tbaa !3
  %add21.5319 = add i16 %11, %call.i.5317
  store i16 %add21.5319, i16* %arrayidx11.5, align 2, !tbaa !3
  %arrayidx9.6321 = getelementptr inbounds i16, i16* %r, i64 134
  %12 = load i16, i16* %arrayidx9.6321, align 2, !tbaa !3
  %conv1.i.6322 = sext i16 %12 to i32
  %mul.i.6323 = mul nsw i32 %conv1.i.6322, -758
  %call.i.6324 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6323) #2
  %arrayidx11.6 = getelementptr inbounds i16, i16* %r, i64 6
  %13 = load i16, i16* %arrayidx11.6, align 2, !tbaa !3
  %sub.6325 = sub i16 %13, %call.i.6324
  store i16 %sub.6325, i16* %arrayidx9.6321, align 2, !tbaa !3
  %add21.6326 = add i16 %13, %call.i.6324
  store i16 %add21.6326, i16* %arrayidx11.6, align 2, !tbaa !3
  %arrayidx9.7 = getelementptr inbounds i16, i16* %r, i64 135
  %14 = load i16, i16* %arrayidx9.7, align 2, !tbaa !3
  %conv1.i.7 = sext i16 %14 to i32
  %mul.i.7 = mul nsw i32 %conv1.i.7, -758
  %call.i.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.7) #2
  %arrayidx11.7 = getelementptr inbounds i16, i16* %r, i64 7
  %15 = load i16, i16* %arrayidx11.7, align 2, !tbaa !3
  %sub.7 = sub i16 %15, %call.i.7
  store i16 %sub.7, i16* %arrayidx9.7, align 2, !tbaa !3
  %add21.7 = add i16 %15, %call.i.7
  store i16 %add21.7, i16* %arrayidx11.7, align 2, !tbaa !3
  %arrayidx9.8 = getelementptr inbounds i16, i16* %r, i64 136
  %16 = load i16, i16* %arrayidx9.8, align 2, !tbaa !3
  %conv1.i.8 = sext i16 %16 to i32
  %mul.i.8 = mul nsw i32 %conv1.i.8, -758
  %call.i.8 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.8) #2
  %arrayidx11.8 = getelementptr inbounds i16, i16* %r, i64 8
  %17 = load i16, i16* %arrayidx11.8, align 2, !tbaa !3
  %sub.8 = sub i16 %17, %call.i.8
  store i16 %sub.8, i16* %arrayidx9.8, align 2, !tbaa !3
  %add21.8 = add i16 %17, %call.i.8
  store i16 %add21.8, i16* %arrayidx11.8, align 2, !tbaa !3
  %arrayidx9.9 = getelementptr inbounds i16, i16* %r, i64 137
  %18 = load i16, i16* %arrayidx9.9, align 2, !tbaa !3
  %conv1.i.9 = sext i16 %18 to i32
  %mul.i.9 = mul nsw i32 %conv1.i.9, -758
  %call.i.9 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.9) #2
  %arrayidx11.9 = getelementptr inbounds i16, i16* %r, i64 9
  %19 = load i16, i16* %arrayidx11.9, align 2, !tbaa !3
  %sub.9 = sub i16 %19, %call.i.9
  store i16 %sub.9, i16* %arrayidx9.9, align 2, !tbaa !3
  %add21.9 = add i16 %19, %call.i.9
  store i16 %add21.9, i16* %arrayidx11.9, align 2, !tbaa !3
  %arrayidx9.10 = getelementptr inbounds i16, i16* %r, i64 138
  %20 = load i16, i16* %arrayidx9.10, align 2, !tbaa !3
  %conv1.i.10 = sext i16 %20 to i32
  %mul.i.10 = mul nsw i32 %conv1.i.10, -758
  %call.i.10 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.10) #2
  %arrayidx11.10 = getelementptr inbounds i16, i16* %r, i64 10
  %21 = load i16, i16* %arrayidx11.10, align 2, !tbaa !3
  %sub.10 = sub i16 %21, %call.i.10
  store i16 %sub.10, i16* %arrayidx9.10, align 2, !tbaa !3
  %add21.10 = add i16 %21, %call.i.10
  store i16 %add21.10, i16* %arrayidx11.10, align 2, !tbaa !3
  %arrayidx9.11 = getelementptr inbounds i16, i16* %r, i64 139
  %22 = load i16, i16* %arrayidx9.11, align 2, !tbaa !3
  %conv1.i.11 = sext i16 %22 to i32
  %mul.i.11 = mul nsw i32 %conv1.i.11, -758
  %call.i.11 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.11) #2
  %arrayidx11.11 = getelementptr inbounds i16, i16* %r, i64 11
  %23 = load i16, i16* %arrayidx11.11, align 2, !tbaa !3
  %sub.11 = sub i16 %23, %call.i.11
  store i16 %sub.11, i16* %arrayidx9.11, align 2, !tbaa !3
  %add21.11 = add i16 %23, %call.i.11
  store i16 %add21.11, i16* %arrayidx11.11, align 2, !tbaa !3
  %arrayidx9.12 = getelementptr inbounds i16, i16* %r, i64 140
  %24 = load i16, i16* %arrayidx9.12, align 2, !tbaa !3
  %conv1.i.12 = sext i16 %24 to i32
  %mul.i.12 = mul nsw i32 %conv1.i.12, -758
  %call.i.12 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.12) #2
  %arrayidx11.12 = getelementptr inbounds i16, i16* %r, i64 12
  %25 = load i16, i16* %arrayidx11.12, align 2, !tbaa !3
  %sub.12 = sub i16 %25, %call.i.12
  store i16 %sub.12, i16* %arrayidx9.12, align 2, !tbaa !3
  %add21.12 = add i16 %25, %call.i.12
  store i16 %add21.12, i16* %arrayidx11.12, align 2, !tbaa !3
  %arrayidx9.13 = getelementptr inbounds i16, i16* %r, i64 141
  %26 = load i16, i16* %arrayidx9.13, align 2, !tbaa !3
  %conv1.i.13 = sext i16 %26 to i32
  %mul.i.13 = mul nsw i32 %conv1.i.13, -758
  %call.i.13 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.13) #2
  %arrayidx11.13 = getelementptr inbounds i16, i16* %r, i64 13
  %27 = load i16, i16* %arrayidx11.13, align 2, !tbaa !3
  %sub.13 = sub i16 %27, %call.i.13
  store i16 %sub.13, i16* %arrayidx9.13, align 2, !tbaa !3
  %add21.13 = add i16 %27, %call.i.13
  store i16 %add21.13, i16* %arrayidx11.13, align 2, !tbaa !3
  %arrayidx9.14 = getelementptr inbounds i16, i16* %r, i64 142
  %28 = load i16, i16* %arrayidx9.14, align 2, !tbaa !3
  %conv1.i.14 = sext i16 %28 to i32
  %mul.i.14 = mul nsw i32 %conv1.i.14, -758
  %call.i.14 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.14) #2
  %arrayidx11.14 = getelementptr inbounds i16, i16* %r, i64 14
  %29 = load i16, i16* %arrayidx11.14, align 2, !tbaa !3
  %sub.14 = sub i16 %29, %call.i.14
  store i16 %sub.14, i16* %arrayidx9.14, align 2, !tbaa !3
  %add21.14 = add i16 %29, %call.i.14
  store i16 %add21.14, i16* %arrayidx11.14, align 2, !tbaa !3
  %arrayidx9.15 = getelementptr inbounds i16, i16* %r, i64 143
  %30 = load i16, i16* %arrayidx9.15, align 2, !tbaa !3
  %conv1.i.15 = sext i16 %30 to i32
  %mul.i.15 = mul nsw i32 %conv1.i.15, -758
  %call.i.15 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.15) #2
  %arrayidx11.15 = getelementptr inbounds i16, i16* %r, i64 15
  %31 = load i16, i16* %arrayidx11.15, align 2, !tbaa !3
  %sub.15 = sub i16 %31, %call.i.15
  store i16 %sub.15, i16* %arrayidx9.15, align 2, !tbaa !3
  %add21.15 = add i16 %31, %call.i.15
  store i16 %add21.15, i16* %arrayidx11.15, align 2, !tbaa !3
  %arrayidx9.16 = getelementptr inbounds i16, i16* %r, i64 144
  %32 = load i16, i16* %arrayidx9.16, align 2, !tbaa !3
  %conv1.i.16 = sext i16 %32 to i32
  %mul.i.16 = mul nsw i32 %conv1.i.16, -758
  %call.i.16 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.16) #2
  %arrayidx11.16 = getelementptr inbounds i16, i16* %r, i64 16
  %33 = load i16, i16* %arrayidx11.16, align 2, !tbaa !3
  %sub.16 = sub i16 %33, %call.i.16
  store i16 %sub.16, i16* %arrayidx9.16, align 2, !tbaa !3
  %add21.16 = add i16 %33, %call.i.16
  store i16 %add21.16, i16* %arrayidx11.16, align 2, !tbaa !3
  %arrayidx9.17 = getelementptr inbounds i16, i16* %r, i64 145
  %34 = load i16, i16* %arrayidx9.17, align 2, !tbaa !3
  %conv1.i.17 = sext i16 %34 to i32
  %mul.i.17 = mul nsw i32 %conv1.i.17, -758
  %call.i.17 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.17) #2
  %arrayidx11.17 = getelementptr inbounds i16, i16* %r, i64 17
  %35 = load i16, i16* %arrayidx11.17, align 2, !tbaa !3
  %sub.17 = sub i16 %35, %call.i.17
  store i16 %sub.17, i16* %arrayidx9.17, align 2, !tbaa !3
  %add21.17 = add i16 %35, %call.i.17
  store i16 %add21.17, i16* %arrayidx11.17, align 2, !tbaa !3
  %arrayidx9.18 = getelementptr inbounds i16, i16* %r, i64 146
  %36 = load i16, i16* %arrayidx9.18, align 2, !tbaa !3
  %conv1.i.18 = sext i16 %36 to i32
  %mul.i.18 = mul nsw i32 %conv1.i.18, -758
  %call.i.18 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.18) #2
  %arrayidx11.18 = getelementptr inbounds i16, i16* %r, i64 18
  %37 = load i16, i16* %arrayidx11.18, align 2, !tbaa !3
  %sub.18 = sub i16 %37, %call.i.18
  store i16 %sub.18, i16* %arrayidx9.18, align 2, !tbaa !3
  %add21.18 = add i16 %37, %call.i.18
  store i16 %add21.18, i16* %arrayidx11.18, align 2, !tbaa !3
  %arrayidx9.19 = getelementptr inbounds i16, i16* %r, i64 147
  %38 = load i16, i16* %arrayidx9.19, align 2, !tbaa !3
  %conv1.i.19 = sext i16 %38 to i32
  %mul.i.19 = mul nsw i32 %conv1.i.19, -758
  %call.i.19 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.19) #2
  %arrayidx11.19 = getelementptr inbounds i16, i16* %r, i64 19
  %39 = load i16, i16* %arrayidx11.19, align 2, !tbaa !3
  %sub.19 = sub i16 %39, %call.i.19
  store i16 %sub.19, i16* %arrayidx9.19, align 2, !tbaa !3
  %add21.19 = add i16 %39, %call.i.19
  store i16 %add21.19, i16* %arrayidx11.19, align 2, !tbaa !3
  %arrayidx9.20 = getelementptr inbounds i16, i16* %r, i64 148
  %40 = load i16, i16* %arrayidx9.20, align 2, !tbaa !3
  %conv1.i.20 = sext i16 %40 to i32
  %mul.i.20 = mul nsw i32 %conv1.i.20, -758
  %call.i.20 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.20) #2
  %arrayidx11.20 = getelementptr inbounds i16, i16* %r, i64 20
  %41 = load i16, i16* %arrayidx11.20, align 2, !tbaa !3
  %sub.20 = sub i16 %41, %call.i.20
  store i16 %sub.20, i16* %arrayidx9.20, align 2, !tbaa !3
  %add21.20 = add i16 %41, %call.i.20
  store i16 %add21.20, i16* %arrayidx11.20, align 2, !tbaa !3
  %arrayidx9.21 = getelementptr inbounds i16, i16* %r, i64 149
  %42 = load i16, i16* %arrayidx9.21, align 2, !tbaa !3
  %conv1.i.21 = sext i16 %42 to i32
  %mul.i.21 = mul nsw i32 %conv1.i.21, -758
  %call.i.21 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.21) #2
  %arrayidx11.21 = getelementptr inbounds i16, i16* %r, i64 21
  %43 = load i16, i16* %arrayidx11.21, align 2, !tbaa !3
  %sub.21 = sub i16 %43, %call.i.21
  store i16 %sub.21, i16* %arrayidx9.21, align 2, !tbaa !3
  %add21.21 = add i16 %43, %call.i.21
  store i16 %add21.21, i16* %arrayidx11.21, align 2, !tbaa !3
  %arrayidx9.22 = getelementptr inbounds i16, i16* %r, i64 150
  %44 = load i16, i16* %arrayidx9.22, align 2, !tbaa !3
  %conv1.i.22 = sext i16 %44 to i32
  %mul.i.22 = mul nsw i32 %conv1.i.22, -758
  %call.i.22 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.22) #2
  %arrayidx11.22 = getelementptr inbounds i16, i16* %r, i64 22
  %45 = load i16, i16* %arrayidx11.22, align 2, !tbaa !3
  %sub.22 = sub i16 %45, %call.i.22
  store i16 %sub.22, i16* %arrayidx9.22, align 2, !tbaa !3
  %add21.22 = add i16 %45, %call.i.22
  store i16 %add21.22, i16* %arrayidx11.22, align 2, !tbaa !3
  %arrayidx9.23 = getelementptr inbounds i16, i16* %r, i64 151
  %46 = load i16, i16* %arrayidx9.23, align 2, !tbaa !3
  %conv1.i.23 = sext i16 %46 to i32
  %mul.i.23 = mul nsw i32 %conv1.i.23, -758
  %call.i.23 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.23) #2
  %arrayidx11.23 = getelementptr inbounds i16, i16* %r, i64 23
  %47 = load i16, i16* %arrayidx11.23, align 2, !tbaa !3
  %sub.23 = sub i16 %47, %call.i.23
  store i16 %sub.23, i16* %arrayidx9.23, align 2, !tbaa !3
  %add21.23 = add i16 %47, %call.i.23
  store i16 %add21.23, i16* %arrayidx11.23, align 2, !tbaa !3
  %arrayidx9.24 = getelementptr inbounds i16, i16* %r, i64 152
  %48 = load i16, i16* %arrayidx9.24, align 2, !tbaa !3
  %conv1.i.24 = sext i16 %48 to i32
  %mul.i.24 = mul nsw i32 %conv1.i.24, -758
  %call.i.24 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.24) #2
  %arrayidx11.24 = getelementptr inbounds i16, i16* %r, i64 24
  %49 = load i16, i16* %arrayidx11.24, align 2, !tbaa !3
  %sub.24 = sub i16 %49, %call.i.24
  store i16 %sub.24, i16* %arrayidx9.24, align 2, !tbaa !3
  %add21.24 = add i16 %49, %call.i.24
  store i16 %add21.24, i16* %arrayidx11.24, align 2, !tbaa !3
  %arrayidx9.25 = getelementptr inbounds i16, i16* %r, i64 153
  %50 = load i16, i16* %arrayidx9.25, align 2, !tbaa !3
  %conv1.i.25 = sext i16 %50 to i32
  %mul.i.25 = mul nsw i32 %conv1.i.25, -758
  %call.i.25 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.25) #2
  %arrayidx11.25 = getelementptr inbounds i16, i16* %r, i64 25
  %51 = load i16, i16* %arrayidx11.25, align 2, !tbaa !3
  %sub.25 = sub i16 %51, %call.i.25
  store i16 %sub.25, i16* %arrayidx9.25, align 2, !tbaa !3
  %add21.25 = add i16 %51, %call.i.25
  store i16 %add21.25, i16* %arrayidx11.25, align 2, !tbaa !3
  %arrayidx9.26 = getelementptr inbounds i16, i16* %r, i64 154
  %52 = load i16, i16* %arrayidx9.26, align 2, !tbaa !3
  %conv1.i.26 = sext i16 %52 to i32
  %mul.i.26 = mul nsw i32 %conv1.i.26, -758
  %call.i.26 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.26) #2
  %arrayidx11.26 = getelementptr inbounds i16, i16* %r, i64 26
  %53 = load i16, i16* %arrayidx11.26, align 2, !tbaa !3
  %sub.26 = sub i16 %53, %call.i.26
  store i16 %sub.26, i16* %arrayidx9.26, align 2, !tbaa !3
  %add21.26 = add i16 %53, %call.i.26
  store i16 %add21.26, i16* %arrayidx11.26, align 2, !tbaa !3
  %arrayidx9.27 = getelementptr inbounds i16, i16* %r, i64 155
  %54 = load i16, i16* %arrayidx9.27, align 2, !tbaa !3
  %conv1.i.27 = sext i16 %54 to i32
  %mul.i.27 = mul nsw i32 %conv1.i.27, -758
  %call.i.27 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.27) #2
  %arrayidx11.27 = getelementptr inbounds i16, i16* %r, i64 27
  %55 = load i16, i16* %arrayidx11.27, align 2, !tbaa !3
  %sub.27 = sub i16 %55, %call.i.27
  store i16 %sub.27, i16* %arrayidx9.27, align 2, !tbaa !3
  %add21.27 = add i16 %55, %call.i.27
  store i16 %add21.27, i16* %arrayidx11.27, align 2, !tbaa !3
  %arrayidx9.28 = getelementptr inbounds i16, i16* %r, i64 156
  %56 = load i16, i16* %arrayidx9.28, align 2, !tbaa !3
  %conv1.i.28 = sext i16 %56 to i32
  %mul.i.28 = mul nsw i32 %conv1.i.28, -758
  %call.i.28 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.28) #2
  %arrayidx11.28 = getelementptr inbounds i16, i16* %r, i64 28
  %57 = load i16, i16* %arrayidx11.28, align 2, !tbaa !3
  %sub.28 = sub i16 %57, %call.i.28
  store i16 %sub.28, i16* %arrayidx9.28, align 2, !tbaa !3
  %add21.28 = add i16 %57, %call.i.28
  store i16 %add21.28, i16* %arrayidx11.28, align 2, !tbaa !3
  %arrayidx9.29 = getelementptr inbounds i16, i16* %r, i64 157
  %58 = load i16, i16* %arrayidx9.29, align 2, !tbaa !3
  %conv1.i.29 = sext i16 %58 to i32
  %mul.i.29 = mul nsw i32 %conv1.i.29, -758
  %call.i.29 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.29) #2
  %arrayidx11.29 = getelementptr inbounds i16, i16* %r, i64 29
  %59 = load i16, i16* %arrayidx11.29, align 2, !tbaa !3
  %sub.29 = sub i16 %59, %call.i.29
  store i16 %sub.29, i16* %arrayidx9.29, align 2, !tbaa !3
  %add21.29 = add i16 %59, %call.i.29
  store i16 %add21.29, i16* %arrayidx11.29, align 2, !tbaa !3
  %arrayidx9.30 = getelementptr inbounds i16, i16* %r, i64 158
  %60 = load i16, i16* %arrayidx9.30, align 2, !tbaa !3
  %conv1.i.30 = sext i16 %60 to i32
  %mul.i.30 = mul nsw i32 %conv1.i.30, -758
  %call.i.30 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.30) #2
  %arrayidx11.30 = getelementptr inbounds i16, i16* %r, i64 30
  %61 = load i16, i16* %arrayidx11.30, align 2, !tbaa !3
  %sub.30 = sub i16 %61, %call.i.30
  store i16 %sub.30, i16* %arrayidx9.30, align 2, !tbaa !3
  %add21.30 = add i16 %61, %call.i.30
  store i16 %add21.30, i16* %arrayidx11.30, align 2, !tbaa !3
  %arrayidx9.31 = getelementptr inbounds i16, i16* %r, i64 159
  %62 = load i16, i16* %arrayidx9.31, align 2, !tbaa !3
  %conv1.i.31 = sext i16 %62 to i32
  %mul.i.31 = mul nsw i32 %conv1.i.31, -758
  %call.i.31 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.31) #2
  %arrayidx11.31 = getelementptr inbounds i16, i16* %r, i64 31
  %63 = load i16, i16* %arrayidx11.31, align 2, !tbaa !3
  %sub.31 = sub i16 %63, %call.i.31
  store i16 %sub.31, i16* %arrayidx9.31, align 2, !tbaa !3
  %add21.31 = add i16 %63, %call.i.31
  store i16 %add21.31, i16* %arrayidx11.31, align 2, !tbaa !3
  %arrayidx9.32 = getelementptr inbounds i16, i16* %r, i64 160
  %64 = load i16, i16* %arrayidx9.32, align 2, !tbaa !3
  %conv1.i.32 = sext i16 %64 to i32
  %mul.i.32 = mul nsw i32 %conv1.i.32, -758
  %call.i.32 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.32) #2
  %arrayidx11.32 = getelementptr inbounds i16, i16* %r, i64 32
  %65 = load i16, i16* %arrayidx11.32, align 2, !tbaa !3
  %sub.32 = sub i16 %65, %call.i.32
  store i16 %sub.32, i16* %arrayidx9.32, align 2, !tbaa !3
  %add21.32 = add i16 %65, %call.i.32
  store i16 %add21.32, i16* %arrayidx11.32, align 2, !tbaa !3
  %arrayidx9.33 = getelementptr inbounds i16, i16* %r, i64 161
  %66 = load i16, i16* %arrayidx9.33, align 2, !tbaa !3
  %conv1.i.33 = sext i16 %66 to i32
  %mul.i.33 = mul nsw i32 %conv1.i.33, -758
  %call.i.33 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.33) #2
  %arrayidx11.33 = getelementptr inbounds i16, i16* %r, i64 33
  %67 = load i16, i16* %arrayidx11.33, align 2, !tbaa !3
  %sub.33 = sub i16 %67, %call.i.33
  store i16 %sub.33, i16* %arrayidx9.33, align 2, !tbaa !3
  %add21.33 = add i16 %67, %call.i.33
  store i16 %add21.33, i16* %arrayidx11.33, align 2, !tbaa !3
  %arrayidx9.34 = getelementptr inbounds i16, i16* %r, i64 162
  %68 = load i16, i16* %arrayidx9.34, align 2, !tbaa !3
  %conv1.i.34 = sext i16 %68 to i32
  %mul.i.34 = mul nsw i32 %conv1.i.34, -758
  %call.i.34 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.34) #2
  %arrayidx11.34 = getelementptr inbounds i16, i16* %r, i64 34
  %69 = load i16, i16* %arrayidx11.34, align 2, !tbaa !3
  %sub.34 = sub i16 %69, %call.i.34
  store i16 %sub.34, i16* %arrayidx9.34, align 2, !tbaa !3
  %add21.34 = add i16 %69, %call.i.34
  store i16 %add21.34, i16* %arrayidx11.34, align 2, !tbaa !3
  %arrayidx9.35 = getelementptr inbounds i16, i16* %r, i64 163
  %70 = load i16, i16* %arrayidx9.35, align 2, !tbaa !3
  %conv1.i.35 = sext i16 %70 to i32
  %mul.i.35 = mul nsw i32 %conv1.i.35, -758
  %call.i.35 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.35) #2
  %arrayidx11.35 = getelementptr inbounds i16, i16* %r, i64 35
  %71 = load i16, i16* %arrayidx11.35, align 2, !tbaa !3
  %sub.35 = sub i16 %71, %call.i.35
  store i16 %sub.35, i16* %arrayidx9.35, align 2, !tbaa !3
  %add21.35 = add i16 %71, %call.i.35
  store i16 %add21.35, i16* %arrayidx11.35, align 2, !tbaa !3
  %arrayidx9.36 = getelementptr inbounds i16, i16* %r, i64 164
  %72 = load i16, i16* %arrayidx9.36, align 2, !tbaa !3
  %conv1.i.36 = sext i16 %72 to i32
  %mul.i.36 = mul nsw i32 %conv1.i.36, -758
  %call.i.36 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.36) #2
  %arrayidx11.36 = getelementptr inbounds i16, i16* %r, i64 36
  %73 = load i16, i16* %arrayidx11.36, align 2, !tbaa !3
  %sub.36 = sub i16 %73, %call.i.36
  store i16 %sub.36, i16* %arrayidx9.36, align 2, !tbaa !3
  %add21.36 = add i16 %73, %call.i.36
  store i16 %add21.36, i16* %arrayidx11.36, align 2, !tbaa !3
  %arrayidx9.37 = getelementptr inbounds i16, i16* %r, i64 165
  %74 = load i16, i16* %arrayidx9.37, align 2, !tbaa !3
  %conv1.i.37 = sext i16 %74 to i32
  %mul.i.37 = mul nsw i32 %conv1.i.37, -758
  %call.i.37 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.37) #2
  %arrayidx11.37 = getelementptr inbounds i16, i16* %r, i64 37
  %75 = load i16, i16* %arrayidx11.37, align 2, !tbaa !3
  %sub.37 = sub i16 %75, %call.i.37
  store i16 %sub.37, i16* %arrayidx9.37, align 2, !tbaa !3
  %add21.37 = add i16 %75, %call.i.37
  store i16 %add21.37, i16* %arrayidx11.37, align 2, !tbaa !3
  %arrayidx9.38 = getelementptr inbounds i16, i16* %r, i64 166
  %76 = load i16, i16* %arrayidx9.38, align 2, !tbaa !3
  %conv1.i.38 = sext i16 %76 to i32
  %mul.i.38 = mul nsw i32 %conv1.i.38, -758
  %call.i.38 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.38) #2
  %arrayidx11.38 = getelementptr inbounds i16, i16* %r, i64 38
  %77 = load i16, i16* %arrayidx11.38, align 2, !tbaa !3
  %sub.38 = sub i16 %77, %call.i.38
  store i16 %sub.38, i16* %arrayidx9.38, align 2, !tbaa !3
  %add21.38 = add i16 %77, %call.i.38
  store i16 %add21.38, i16* %arrayidx11.38, align 2, !tbaa !3
  %arrayidx9.39 = getelementptr inbounds i16, i16* %r, i64 167
  %78 = load i16, i16* %arrayidx9.39, align 2, !tbaa !3
  %conv1.i.39 = sext i16 %78 to i32
  %mul.i.39 = mul nsw i32 %conv1.i.39, -758
  %call.i.39 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.39) #2
  %arrayidx11.39 = getelementptr inbounds i16, i16* %r, i64 39
  %79 = load i16, i16* %arrayidx11.39, align 2, !tbaa !3
  %sub.39 = sub i16 %79, %call.i.39
  store i16 %sub.39, i16* %arrayidx9.39, align 2, !tbaa !3
  %add21.39 = add i16 %79, %call.i.39
  store i16 %add21.39, i16* %arrayidx11.39, align 2, !tbaa !3
  %arrayidx9.40 = getelementptr inbounds i16, i16* %r, i64 168
  %80 = load i16, i16* %arrayidx9.40, align 2, !tbaa !3
  %conv1.i.40 = sext i16 %80 to i32
  %mul.i.40 = mul nsw i32 %conv1.i.40, -758
  %call.i.40 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.40) #2
  %arrayidx11.40 = getelementptr inbounds i16, i16* %r, i64 40
  %81 = load i16, i16* %arrayidx11.40, align 2, !tbaa !3
  %sub.40 = sub i16 %81, %call.i.40
  store i16 %sub.40, i16* %arrayidx9.40, align 2, !tbaa !3
  %add21.40 = add i16 %81, %call.i.40
  store i16 %add21.40, i16* %arrayidx11.40, align 2, !tbaa !3
  %arrayidx9.41 = getelementptr inbounds i16, i16* %r, i64 169
  %82 = load i16, i16* %arrayidx9.41, align 2, !tbaa !3
  %conv1.i.41 = sext i16 %82 to i32
  %mul.i.41 = mul nsw i32 %conv1.i.41, -758
  %call.i.41 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.41) #2
  %arrayidx11.41 = getelementptr inbounds i16, i16* %r, i64 41
  %83 = load i16, i16* %arrayidx11.41, align 2, !tbaa !3
  %sub.41 = sub i16 %83, %call.i.41
  store i16 %sub.41, i16* %arrayidx9.41, align 2, !tbaa !3
  %add21.41 = add i16 %83, %call.i.41
  store i16 %add21.41, i16* %arrayidx11.41, align 2, !tbaa !3
  %arrayidx9.42 = getelementptr inbounds i16, i16* %r, i64 170
  %84 = load i16, i16* %arrayidx9.42, align 2, !tbaa !3
  %conv1.i.42 = sext i16 %84 to i32
  %mul.i.42 = mul nsw i32 %conv1.i.42, -758
  %call.i.42 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.42) #2
  %arrayidx11.42 = getelementptr inbounds i16, i16* %r, i64 42
  %85 = load i16, i16* %arrayidx11.42, align 2, !tbaa !3
  %sub.42 = sub i16 %85, %call.i.42
  store i16 %sub.42, i16* %arrayidx9.42, align 2, !tbaa !3
  %add21.42 = add i16 %85, %call.i.42
  store i16 %add21.42, i16* %arrayidx11.42, align 2, !tbaa !3
  %arrayidx9.43 = getelementptr inbounds i16, i16* %r, i64 171
  %86 = load i16, i16* %arrayidx9.43, align 2, !tbaa !3
  %conv1.i.43 = sext i16 %86 to i32
  %mul.i.43 = mul nsw i32 %conv1.i.43, -758
  %call.i.43 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.43) #2
  %arrayidx11.43 = getelementptr inbounds i16, i16* %r, i64 43
  %87 = load i16, i16* %arrayidx11.43, align 2, !tbaa !3
  %sub.43 = sub i16 %87, %call.i.43
  store i16 %sub.43, i16* %arrayidx9.43, align 2, !tbaa !3
  %add21.43 = add i16 %87, %call.i.43
  store i16 %add21.43, i16* %arrayidx11.43, align 2, !tbaa !3
  %arrayidx9.44 = getelementptr inbounds i16, i16* %r, i64 172
  %88 = load i16, i16* %arrayidx9.44, align 2, !tbaa !3
  %conv1.i.44 = sext i16 %88 to i32
  %mul.i.44 = mul nsw i32 %conv1.i.44, -758
  %call.i.44 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.44) #2
  %arrayidx11.44 = getelementptr inbounds i16, i16* %r, i64 44
  %89 = load i16, i16* %arrayidx11.44, align 2, !tbaa !3
  %sub.44 = sub i16 %89, %call.i.44
  store i16 %sub.44, i16* %arrayidx9.44, align 2, !tbaa !3
  %add21.44 = add i16 %89, %call.i.44
  store i16 %add21.44, i16* %arrayidx11.44, align 2, !tbaa !3
  %arrayidx9.45 = getelementptr inbounds i16, i16* %r, i64 173
  %90 = load i16, i16* %arrayidx9.45, align 2, !tbaa !3
  %conv1.i.45 = sext i16 %90 to i32
  %mul.i.45 = mul nsw i32 %conv1.i.45, -758
  %call.i.45 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.45) #2
  %arrayidx11.45 = getelementptr inbounds i16, i16* %r, i64 45
  %91 = load i16, i16* %arrayidx11.45, align 2, !tbaa !3
  %sub.45 = sub i16 %91, %call.i.45
  store i16 %sub.45, i16* %arrayidx9.45, align 2, !tbaa !3
  %add21.45 = add i16 %91, %call.i.45
  store i16 %add21.45, i16* %arrayidx11.45, align 2, !tbaa !3
  %arrayidx9.46 = getelementptr inbounds i16, i16* %r, i64 174
  %92 = load i16, i16* %arrayidx9.46, align 2, !tbaa !3
  %conv1.i.46 = sext i16 %92 to i32
  %mul.i.46 = mul nsw i32 %conv1.i.46, -758
  %call.i.46 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.46) #2
  %arrayidx11.46 = getelementptr inbounds i16, i16* %r, i64 46
  %93 = load i16, i16* %arrayidx11.46, align 2, !tbaa !3
  %sub.46 = sub i16 %93, %call.i.46
  store i16 %sub.46, i16* %arrayidx9.46, align 2, !tbaa !3
  %add21.46 = add i16 %93, %call.i.46
  store i16 %add21.46, i16* %arrayidx11.46, align 2, !tbaa !3
  %arrayidx9.47 = getelementptr inbounds i16, i16* %r, i64 175
  %94 = load i16, i16* %arrayidx9.47, align 2, !tbaa !3
  %conv1.i.47 = sext i16 %94 to i32
  %mul.i.47 = mul nsw i32 %conv1.i.47, -758
  %call.i.47 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.47) #2
  %arrayidx11.47 = getelementptr inbounds i16, i16* %r, i64 47
  %95 = load i16, i16* %arrayidx11.47, align 2, !tbaa !3
  %sub.47 = sub i16 %95, %call.i.47
  store i16 %sub.47, i16* %arrayidx9.47, align 2, !tbaa !3
  %add21.47 = add i16 %95, %call.i.47
  store i16 %add21.47, i16* %arrayidx11.47, align 2, !tbaa !3
  %arrayidx9.48 = getelementptr inbounds i16, i16* %r, i64 176
  %96 = load i16, i16* %arrayidx9.48, align 2, !tbaa !3
  %conv1.i.48 = sext i16 %96 to i32
  %mul.i.48 = mul nsw i32 %conv1.i.48, -758
  %call.i.48 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.48) #2
  %arrayidx11.48 = getelementptr inbounds i16, i16* %r, i64 48
  %97 = load i16, i16* %arrayidx11.48, align 2, !tbaa !3
  %sub.48 = sub i16 %97, %call.i.48
  store i16 %sub.48, i16* %arrayidx9.48, align 2, !tbaa !3
  %add21.48 = add i16 %97, %call.i.48
  store i16 %add21.48, i16* %arrayidx11.48, align 2, !tbaa !3
  %arrayidx9.49 = getelementptr inbounds i16, i16* %r, i64 177
  %98 = load i16, i16* %arrayidx9.49, align 2, !tbaa !3
  %conv1.i.49 = sext i16 %98 to i32
  %mul.i.49 = mul nsw i32 %conv1.i.49, -758
  %call.i.49 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.49) #2
  %arrayidx11.49 = getelementptr inbounds i16, i16* %r, i64 49
  %99 = load i16, i16* %arrayidx11.49, align 2, !tbaa !3
  %sub.49 = sub i16 %99, %call.i.49
  store i16 %sub.49, i16* %arrayidx9.49, align 2, !tbaa !3
  %add21.49 = add i16 %99, %call.i.49
  store i16 %add21.49, i16* %arrayidx11.49, align 2, !tbaa !3
  %arrayidx9.50 = getelementptr inbounds i16, i16* %r, i64 178
  %100 = load i16, i16* %arrayidx9.50, align 2, !tbaa !3
  %conv1.i.50 = sext i16 %100 to i32
  %mul.i.50 = mul nsw i32 %conv1.i.50, -758
  %call.i.50 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.50) #2
  %arrayidx11.50 = getelementptr inbounds i16, i16* %r, i64 50
  %101 = load i16, i16* %arrayidx11.50, align 2, !tbaa !3
  %sub.50 = sub i16 %101, %call.i.50
  store i16 %sub.50, i16* %arrayidx9.50, align 2, !tbaa !3
  %add21.50 = add i16 %101, %call.i.50
  store i16 %add21.50, i16* %arrayidx11.50, align 2, !tbaa !3
  %arrayidx9.51 = getelementptr inbounds i16, i16* %r, i64 179
  %102 = load i16, i16* %arrayidx9.51, align 2, !tbaa !3
  %conv1.i.51 = sext i16 %102 to i32
  %mul.i.51 = mul nsw i32 %conv1.i.51, -758
  %call.i.51 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.51) #2
  %arrayidx11.51 = getelementptr inbounds i16, i16* %r, i64 51
  %103 = load i16, i16* %arrayidx11.51, align 2, !tbaa !3
  %sub.51 = sub i16 %103, %call.i.51
  store i16 %sub.51, i16* %arrayidx9.51, align 2, !tbaa !3
  %add21.51 = add i16 %103, %call.i.51
  store i16 %add21.51, i16* %arrayidx11.51, align 2, !tbaa !3
  %arrayidx9.52 = getelementptr inbounds i16, i16* %r, i64 180
  %104 = load i16, i16* %arrayidx9.52, align 2, !tbaa !3
  %conv1.i.52 = sext i16 %104 to i32
  %mul.i.52 = mul nsw i32 %conv1.i.52, -758
  %call.i.52 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.52) #2
  %arrayidx11.52 = getelementptr inbounds i16, i16* %r, i64 52
  %105 = load i16, i16* %arrayidx11.52, align 2, !tbaa !3
  %sub.52 = sub i16 %105, %call.i.52
  store i16 %sub.52, i16* %arrayidx9.52, align 2, !tbaa !3
  %add21.52 = add i16 %105, %call.i.52
  store i16 %add21.52, i16* %arrayidx11.52, align 2, !tbaa !3
  %arrayidx9.53 = getelementptr inbounds i16, i16* %r, i64 181
  %106 = load i16, i16* %arrayidx9.53, align 2, !tbaa !3
  %conv1.i.53 = sext i16 %106 to i32
  %mul.i.53 = mul nsw i32 %conv1.i.53, -758
  %call.i.53 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.53) #2
  %arrayidx11.53 = getelementptr inbounds i16, i16* %r, i64 53
  %107 = load i16, i16* %arrayidx11.53, align 2, !tbaa !3
  %sub.53 = sub i16 %107, %call.i.53
  store i16 %sub.53, i16* %arrayidx9.53, align 2, !tbaa !3
  %add21.53 = add i16 %107, %call.i.53
  store i16 %add21.53, i16* %arrayidx11.53, align 2, !tbaa !3
  %arrayidx9.54 = getelementptr inbounds i16, i16* %r, i64 182
  %108 = load i16, i16* %arrayidx9.54, align 2, !tbaa !3
  %conv1.i.54 = sext i16 %108 to i32
  %mul.i.54 = mul nsw i32 %conv1.i.54, -758
  %call.i.54 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.54) #2
  %arrayidx11.54 = getelementptr inbounds i16, i16* %r, i64 54
  %109 = load i16, i16* %arrayidx11.54, align 2, !tbaa !3
  %sub.54 = sub i16 %109, %call.i.54
  store i16 %sub.54, i16* %arrayidx9.54, align 2, !tbaa !3
  %add21.54 = add i16 %109, %call.i.54
  store i16 %add21.54, i16* %arrayidx11.54, align 2, !tbaa !3
  %arrayidx9.55 = getelementptr inbounds i16, i16* %r, i64 183
  %110 = load i16, i16* %arrayidx9.55, align 2, !tbaa !3
  %conv1.i.55 = sext i16 %110 to i32
  %mul.i.55 = mul nsw i32 %conv1.i.55, -758
  %call.i.55 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.55) #2
  %arrayidx11.55 = getelementptr inbounds i16, i16* %r, i64 55
  %111 = load i16, i16* %arrayidx11.55, align 2, !tbaa !3
  %sub.55 = sub i16 %111, %call.i.55
  store i16 %sub.55, i16* %arrayidx9.55, align 2, !tbaa !3
  %add21.55 = add i16 %111, %call.i.55
  store i16 %add21.55, i16* %arrayidx11.55, align 2, !tbaa !3
  %arrayidx9.56 = getelementptr inbounds i16, i16* %r, i64 184
  %112 = load i16, i16* %arrayidx9.56, align 2, !tbaa !3
  %conv1.i.56 = sext i16 %112 to i32
  %mul.i.56 = mul nsw i32 %conv1.i.56, -758
  %call.i.56 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.56) #2
  %arrayidx11.56 = getelementptr inbounds i16, i16* %r, i64 56
  %113 = load i16, i16* %arrayidx11.56, align 2, !tbaa !3
  %sub.56 = sub i16 %113, %call.i.56
  store i16 %sub.56, i16* %arrayidx9.56, align 2, !tbaa !3
  %add21.56 = add i16 %113, %call.i.56
  store i16 %add21.56, i16* %arrayidx11.56, align 2, !tbaa !3
  %arrayidx9.57 = getelementptr inbounds i16, i16* %r, i64 185
  %114 = load i16, i16* %arrayidx9.57, align 2, !tbaa !3
  %conv1.i.57 = sext i16 %114 to i32
  %mul.i.57 = mul nsw i32 %conv1.i.57, -758
  %call.i.57 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.57) #2
  %arrayidx11.57 = getelementptr inbounds i16, i16* %r, i64 57
  %115 = load i16, i16* %arrayidx11.57, align 2, !tbaa !3
  %sub.57 = sub i16 %115, %call.i.57
  store i16 %sub.57, i16* %arrayidx9.57, align 2, !tbaa !3
  %add21.57 = add i16 %115, %call.i.57
  store i16 %add21.57, i16* %arrayidx11.57, align 2, !tbaa !3
  %arrayidx9.58 = getelementptr inbounds i16, i16* %r, i64 186
  %116 = load i16, i16* %arrayidx9.58, align 2, !tbaa !3
  %conv1.i.58 = sext i16 %116 to i32
  %mul.i.58 = mul nsw i32 %conv1.i.58, -758
  %call.i.58 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.58) #2
  %arrayidx11.58 = getelementptr inbounds i16, i16* %r, i64 58
  %117 = load i16, i16* %arrayidx11.58, align 2, !tbaa !3
  %sub.58 = sub i16 %117, %call.i.58
  store i16 %sub.58, i16* %arrayidx9.58, align 2, !tbaa !3
  %add21.58 = add i16 %117, %call.i.58
  store i16 %add21.58, i16* %arrayidx11.58, align 2, !tbaa !3
  %arrayidx9.59 = getelementptr inbounds i16, i16* %r, i64 187
  %118 = load i16, i16* %arrayidx9.59, align 2, !tbaa !3
  %conv1.i.59 = sext i16 %118 to i32
  %mul.i.59 = mul nsw i32 %conv1.i.59, -758
  %call.i.59 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.59) #2
  %arrayidx11.59 = getelementptr inbounds i16, i16* %r, i64 59
  %119 = load i16, i16* %arrayidx11.59, align 2, !tbaa !3
  %sub.59 = sub i16 %119, %call.i.59
  store i16 %sub.59, i16* %arrayidx9.59, align 2, !tbaa !3
  %add21.59 = add i16 %119, %call.i.59
  store i16 %add21.59, i16* %arrayidx11.59, align 2, !tbaa !3
  %arrayidx9.60 = getelementptr inbounds i16, i16* %r, i64 188
  %120 = load i16, i16* %arrayidx9.60, align 2, !tbaa !3
  %conv1.i.60 = sext i16 %120 to i32
  %mul.i.60 = mul nsw i32 %conv1.i.60, -758
  %call.i.60 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.60) #2
  %arrayidx11.60 = getelementptr inbounds i16, i16* %r, i64 60
  %121 = load i16, i16* %arrayidx11.60, align 2, !tbaa !3
  %sub.60 = sub i16 %121, %call.i.60
  store i16 %sub.60, i16* %arrayidx9.60, align 2, !tbaa !3
  %add21.60 = add i16 %121, %call.i.60
  store i16 %add21.60, i16* %arrayidx11.60, align 2, !tbaa !3
  %arrayidx9.61 = getelementptr inbounds i16, i16* %r, i64 189
  %122 = load i16, i16* %arrayidx9.61, align 2, !tbaa !3
  %conv1.i.61 = sext i16 %122 to i32
  %mul.i.61 = mul nsw i32 %conv1.i.61, -758
  %call.i.61 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.61) #2
  %arrayidx11.61 = getelementptr inbounds i16, i16* %r, i64 61
  %123 = load i16, i16* %arrayidx11.61, align 2, !tbaa !3
  %sub.61 = sub i16 %123, %call.i.61
  store i16 %sub.61, i16* %arrayidx9.61, align 2, !tbaa !3
  %add21.61 = add i16 %123, %call.i.61
  store i16 %add21.61, i16* %arrayidx11.61, align 2, !tbaa !3
  %arrayidx9.62 = getelementptr inbounds i16, i16* %r, i64 190
  %124 = load i16, i16* %arrayidx9.62, align 2, !tbaa !3
  %conv1.i.62 = sext i16 %124 to i32
  %mul.i.62 = mul nsw i32 %conv1.i.62, -758
  %call.i.62 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.62) #2
  %arrayidx11.62 = getelementptr inbounds i16, i16* %r, i64 62
  %125 = load i16, i16* %arrayidx11.62, align 2, !tbaa !3
  %sub.62 = sub i16 %125, %call.i.62
  store i16 %sub.62, i16* %arrayidx9.62, align 2, !tbaa !3
  %add21.62 = add i16 %125, %call.i.62
  store i16 %add21.62, i16* %arrayidx11.62, align 2, !tbaa !3
  %arrayidx9.63 = getelementptr inbounds i16, i16* %r, i64 191
  %126 = load i16, i16* %arrayidx9.63, align 2, !tbaa !3
  %conv1.i.63 = sext i16 %126 to i32
  %mul.i.63 = mul nsw i32 %conv1.i.63, -758
  %call.i.63 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.63) #2
  %arrayidx11.63 = getelementptr inbounds i16, i16* %r, i64 63
  %127 = load i16, i16* %arrayidx11.63, align 2, !tbaa !3
  %sub.63 = sub i16 %127, %call.i.63
  store i16 %sub.63, i16* %arrayidx9.63, align 2, !tbaa !3
  %add21.63 = add i16 %127, %call.i.63
  store i16 %add21.63, i16* %arrayidx11.63, align 2, !tbaa !3
  %arrayidx9.64 = getelementptr inbounds i16, i16* %r, i64 192
  %128 = load i16, i16* %arrayidx9.64, align 2, !tbaa !3
  %conv1.i.64 = sext i16 %128 to i32
  %mul.i.64 = mul nsw i32 %conv1.i.64, -758
  %call.i.64 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.64) #2
  %arrayidx11.64 = getelementptr inbounds i16, i16* %r, i64 64
  %129 = load i16, i16* %arrayidx11.64, align 2, !tbaa !3
  %sub.64 = sub i16 %129, %call.i.64
  store i16 %sub.64, i16* %arrayidx9.64, align 2, !tbaa !3
  %add21.64 = add i16 %129, %call.i.64
  store i16 %add21.64, i16* %arrayidx11.64, align 2, !tbaa !3
  %arrayidx9.65 = getelementptr inbounds i16, i16* %r, i64 193
  %130 = load i16, i16* %arrayidx9.65, align 2, !tbaa !3
  %conv1.i.65 = sext i16 %130 to i32
  %mul.i.65 = mul nsw i32 %conv1.i.65, -758
  %call.i.65 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.65) #2
  %arrayidx11.65 = getelementptr inbounds i16, i16* %r, i64 65
  %131 = load i16, i16* %arrayidx11.65, align 2, !tbaa !3
  %sub.65 = sub i16 %131, %call.i.65
  store i16 %sub.65, i16* %arrayidx9.65, align 2, !tbaa !3
  %add21.65 = add i16 %131, %call.i.65
  store i16 %add21.65, i16* %arrayidx11.65, align 2, !tbaa !3
  %arrayidx9.66 = getelementptr inbounds i16, i16* %r, i64 194
  %132 = load i16, i16* %arrayidx9.66, align 2, !tbaa !3
  %conv1.i.66 = sext i16 %132 to i32
  %mul.i.66 = mul nsw i32 %conv1.i.66, -758
  %call.i.66 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.66) #2
  %arrayidx11.66 = getelementptr inbounds i16, i16* %r, i64 66
  %133 = load i16, i16* %arrayidx11.66, align 2, !tbaa !3
  %sub.66 = sub i16 %133, %call.i.66
  store i16 %sub.66, i16* %arrayidx9.66, align 2, !tbaa !3
  %add21.66 = add i16 %133, %call.i.66
  store i16 %add21.66, i16* %arrayidx11.66, align 2, !tbaa !3
  %arrayidx9.67 = getelementptr inbounds i16, i16* %r, i64 195
  %134 = load i16, i16* %arrayidx9.67, align 2, !tbaa !3
  %conv1.i.67 = sext i16 %134 to i32
  %mul.i.67 = mul nsw i32 %conv1.i.67, -758
  %call.i.67 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.67) #2
  %arrayidx11.67 = getelementptr inbounds i16, i16* %r, i64 67
  %135 = load i16, i16* %arrayidx11.67, align 2, !tbaa !3
  %sub.67 = sub i16 %135, %call.i.67
  store i16 %sub.67, i16* %arrayidx9.67, align 2, !tbaa !3
  %add21.67 = add i16 %135, %call.i.67
  store i16 %add21.67, i16* %arrayidx11.67, align 2, !tbaa !3
  %arrayidx9.68 = getelementptr inbounds i16, i16* %r, i64 196
  %136 = load i16, i16* %arrayidx9.68, align 2, !tbaa !3
  %conv1.i.68 = sext i16 %136 to i32
  %mul.i.68 = mul nsw i32 %conv1.i.68, -758
  %call.i.68 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.68) #2
  %arrayidx11.68 = getelementptr inbounds i16, i16* %r, i64 68
  %137 = load i16, i16* %arrayidx11.68, align 2, !tbaa !3
  %sub.68 = sub i16 %137, %call.i.68
  store i16 %sub.68, i16* %arrayidx9.68, align 2, !tbaa !3
  %add21.68 = add i16 %137, %call.i.68
  store i16 %add21.68, i16* %arrayidx11.68, align 2, !tbaa !3
  %arrayidx9.69 = getelementptr inbounds i16, i16* %r, i64 197
  %138 = load i16, i16* %arrayidx9.69, align 2, !tbaa !3
  %conv1.i.69 = sext i16 %138 to i32
  %mul.i.69 = mul nsw i32 %conv1.i.69, -758
  %call.i.69 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.69) #2
  %arrayidx11.69 = getelementptr inbounds i16, i16* %r, i64 69
  %139 = load i16, i16* %arrayidx11.69, align 2, !tbaa !3
  %sub.69 = sub i16 %139, %call.i.69
  store i16 %sub.69, i16* %arrayidx9.69, align 2, !tbaa !3
  %add21.69 = add i16 %139, %call.i.69
  store i16 %add21.69, i16* %arrayidx11.69, align 2, !tbaa !3
  %arrayidx9.70 = getelementptr inbounds i16, i16* %r, i64 198
  %140 = load i16, i16* %arrayidx9.70, align 2, !tbaa !3
  %conv1.i.70 = sext i16 %140 to i32
  %mul.i.70 = mul nsw i32 %conv1.i.70, -758
  %call.i.70 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.70) #2
  %arrayidx11.70 = getelementptr inbounds i16, i16* %r, i64 70
  %141 = load i16, i16* %arrayidx11.70, align 2, !tbaa !3
  %sub.70 = sub i16 %141, %call.i.70
  store i16 %sub.70, i16* %arrayidx9.70, align 2, !tbaa !3
  %add21.70 = add i16 %141, %call.i.70
  store i16 %add21.70, i16* %arrayidx11.70, align 2, !tbaa !3
  %arrayidx9.71 = getelementptr inbounds i16, i16* %r, i64 199
  %142 = load i16, i16* %arrayidx9.71, align 2, !tbaa !3
  %conv1.i.71 = sext i16 %142 to i32
  %mul.i.71 = mul nsw i32 %conv1.i.71, -758
  %call.i.71 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.71) #2
  %arrayidx11.71 = getelementptr inbounds i16, i16* %r, i64 71
  %143 = load i16, i16* %arrayidx11.71, align 2, !tbaa !3
  %sub.71 = sub i16 %143, %call.i.71
  store i16 %sub.71, i16* %arrayidx9.71, align 2, !tbaa !3
  %add21.71 = add i16 %143, %call.i.71
  store i16 %add21.71, i16* %arrayidx11.71, align 2, !tbaa !3
  %arrayidx9.72 = getelementptr inbounds i16, i16* %r, i64 200
  %144 = load i16, i16* %arrayidx9.72, align 2, !tbaa !3
  %conv1.i.72 = sext i16 %144 to i32
  %mul.i.72 = mul nsw i32 %conv1.i.72, -758
  %call.i.72 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.72) #2
  %arrayidx11.72 = getelementptr inbounds i16, i16* %r, i64 72
  %145 = load i16, i16* %arrayidx11.72, align 2, !tbaa !3
  %sub.72 = sub i16 %145, %call.i.72
  store i16 %sub.72, i16* %arrayidx9.72, align 2, !tbaa !3
  %add21.72 = add i16 %145, %call.i.72
  store i16 %add21.72, i16* %arrayidx11.72, align 2, !tbaa !3
  %arrayidx9.73 = getelementptr inbounds i16, i16* %r, i64 201
  %146 = load i16, i16* %arrayidx9.73, align 2, !tbaa !3
  %conv1.i.73 = sext i16 %146 to i32
  %mul.i.73 = mul nsw i32 %conv1.i.73, -758
  %call.i.73 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.73) #2
  %arrayidx11.73 = getelementptr inbounds i16, i16* %r, i64 73
  %147 = load i16, i16* %arrayidx11.73, align 2, !tbaa !3
  %sub.73 = sub i16 %147, %call.i.73
  store i16 %sub.73, i16* %arrayidx9.73, align 2, !tbaa !3
  %add21.73 = add i16 %147, %call.i.73
  store i16 %add21.73, i16* %arrayidx11.73, align 2, !tbaa !3
  %arrayidx9.74 = getelementptr inbounds i16, i16* %r, i64 202
  %148 = load i16, i16* %arrayidx9.74, align 2, !tbaa !3
  %conv1.i.74 = sext i16 %148 to i32
  %mul.i.74 = mul nsw i32 %conv1.i.74, -758
  %call.i.74 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.74) #2
  %arrayidx11.74 = getelementptr inbounds i16, i16* %r, i64 74
  %149 = load i16, i16* %arrayidx11.74, align 2, !tbaa !3
  %sub.74 = sub i16 %149, %call.i.74
  store i16 %sub.74, i16* %arrayidx9.74, align 2, !tbaa !3
  %add21.74 = add i16 %149, %call.i.74
  store i16 %add21.74, i16* %arrayidx11.74, align 2, !tbaa !3
  %arrayidx9.75 = getelementptr inbounds i16, i16* %r, i64 203
  %150 = load i16, i16* %arrayidx9.75, align 2, !tbaa !3
  %conv1.i.75 = sext i16 %150 to i32
  %mul.i.75 = mul nsw i32 %conv1.i.75, -758
  %call.i.75 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.75) #2
  %arrayidx11.75 = getelementptr inbounds i16, i16* %r, i64 75
  %151 = load i16, i16* %arrayidx11.75, align 2, !tbaa !3
  %sub.75 = sub i16 %151, %call.i.75
  store i16 %sub.75, i16* %arrayidx9.75, align 2, !tbaa !3
  %add21.75 = add i16 %151, %call.i.75
  store i16 %add21.75, i16* %arrayidx11.75, align 2, !tbaa !3
  %arrayidx9.76 = getelementptr inbounds i16, i16* %r, i64 204
  %152 = load i16, i16* %arrayidx9.76, align 2, !tbaa !3
  %conv1.i.76 = sext i16 %152 to i32
  %mul.i.76 = mul nsw i32 %conv1.i.76, -758
  %call.i.76 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.76) #2
  %arrayidx11.76 = getelementptr inbounds i16, i16* %r, i64 76
  %153 = load i16, i16* %arrayidx11.76, align 2, !tbaa !3
  %sub.76 = sub i16 %153, %call.i.76
  store i16 %sub.76, i16* %arrayidx9.76, align 2, !tbaa !3
  %add21.76 = add i16 %153, %call.i.76
  store i16 %add21.76, i16* %arrayidx11.76, align 2, !tbaa !3
  %arrayidx9.77 = getelementptr inbounds i16, i16* %r, i64 205
  %154 = load i16, i16* %arrayidx9.77, align 2, !tbaa !3
  %conv1.i.77 = sext i16 %154 to i32
  %mul.i.77 = mul nsw i32 %conv1.i.77, -758
  %call.i.77 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.77) #2
  %arrayidx11.77 = getelementptr inbounds i16, i16* %r, i64 77
  %155 = load i16, i16* %arrayidx11.77, align 2, !tbaa !3
  %sub.77 = sub i16 %155, %call.i.77
  store i16 %sub.77, i16* %arrayidx9.77, align 2, !tbaa !3
  %add21.77 = add i16 %155, %call.i.77
  store i16 %add21.77, i16* %arrayidx11.77, align 2, !tbaa !3
  %arrayidx9.78 = getelementptr inbounds i16, i16* %r, i64 206
  %156 = load i16, i16* %arrayidx9.78, align 2, !tbaa !3
  %conv1.i.78 = sext i16 %156 to i32
  %mul.i.78 = mul nsw i32 %conv1.i.78, -758
  %call.i.78 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.78) #2
  %arrayidx11.78 = getelementptr inbounds i16, i16* %r, i64 78
  %157 = load i16, i16* %arrayidx11.78, align 2, !tbaa !3
  %sub.78 = sub i16 %157, %call.i.78
  store i16 %sub.78, i16* %arrayidx9.78, align 2, !tbaa !3
  %add21.78 = add i16 %157, %call.i.78
  store i16 %add21.78, i16* %arrayidx11.78, align 2, !tbaa !3
  %arrayidx9.79 = getelementptr inbounds i16, i16* %r, i64 207
  %158 = load i16, i16* %arrayidx9.79, align 2, !tbaa !3
  %conv1.i.79 = sext i16 %158 to i32
  %mul.i.79 = mul nsw i32 %conv1.i.79, -758
  %call.i.79 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.79) #2
  %arrayidx11.79 = getelementptr inbounds i16, i16* %r, i64 79
  %159 = load i16, i16* %arrayidx11.79, align 2, !tbaa !3
  %sub.79 = sub i16 %159, %call.i.79
  store i16 %sub.79, i16* %arrayidx9.79, align 2, !tbaa !3
  %add21.79 = add i16 %159, %call.i.79
  store i16 %add21.79, i16* %arrayidx11.79, align 2, !tbaa !3
  %arrayidx9.80 = getelementptr inbounds i16, i16* %r, i64 208
  %160 = load i16, i16* %arrayidx9.80, align 2, !tbaa !3
  %conv1.i.80 = sext i16 %160 to i32
  %mul.i.80 = mul nsw i32 %conv1.i.80, -758
  %call.i.80 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.80) #2
  %arrayidx11.80 = getelementptr inbounds i16, i16* %r, i64 80
  %161 = load i16, i16* %arrayidx11.80, align 2, !tbaa !3
  %sub.80 = sub i16 %161, %call.i.80
  store i16 %sub.80, i16* %arrayidx9.80, align 2, !tbaa !3
  %add21.80 = add i16 %161, %call.i.80
  store i16 %add21.80, i16* %arrayidx11.80, align 2, !tbaa !3
  %arrayidx9.81 = getelementptr inbounds i16, i16* %r, i64 209
  %162 = load i16, i16* %arrayidx9.81, align 2, !tbaa !3
  %conv1.i.81 = sext i16 %162 to i32
  %mul.i.81 = mul nsw i32 %conv1.i.81, -758
  %call.i.81 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.81) #2
  %arrayidx11.81 = getelementptr inbounds i16, i16* %r, i64 81
  %163 = load i16, i16* %arrayidx11.81, align 2, !tbaa !3
  %sub.81 = sub i16 %163, %call.i.81
  store i16 %sub.81, i16* %arrayidx9.81, align 2, !tbaa !3
  %add21.81 = add i16 %163, %call.i.81
  store i16 %add21.81, i16* %arrayidx11.81, align 2, !tbaa !3
  %arrayidx9.82 = getelementptr inbounds i16, i16* %r, i64 210
  %164 = load i16, i16* %arrayidx9.82, align 2, !tbaa !3
  %conv1.i.82 = sext i16 %164 to i32
  %mul.i.82 = mul nsw i32 %conv1.i.82, -758
  %call.i.82 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.82) #2
  %arrayidx11.82 = getelementptr inbounds i16, i16* %r, i64 82
  %165 = load i16, i16* %arrayidx11.82, align 2, !tbaa !3
  %sub.82 = sub i16 %165, %call.i.82
  store i16 %sub.82, i16* %arrayidx9.82, align 2, !tbaa !3
  %add21.82 = add i16 %165, %call.i.82
  store i16 %add21.82, i16* %arrayidx11.82, align 2, !tbaa !3
  %arrayidx9.83 = getelementptr inbounds i16, i16* %r, i64 211
  %166 = load i16, i16* %arrayidx9.83, align 2, !tbaa !3
  %conv1.i.83 = sext i16 %166 to i32
  %mul.i.83 = mul nsw i32 %conv1.i.83, -758
  %call.i.83 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.83) #2
  %arrayidx11.83 = getelementptr inbounds i16, i16* %r, i64 83
  %167 = load i16, i16* %arrayidx11.83, align 2, !tbaa !3
  %sub.83 = sub i16 %167, %call.i.83
  store i16 %sub.83, i16* %arrayidx9.83, align 2, !tbaa !3
  %add21.83 = add i16 %167, %call.i.83
  store i16 %add21.83, i16* %arrayidx11.83, align 2, !tbaa !3
  %arrayidx9.84 = getelementptr inbounds i16, i16* %r, i64 212
  %168 = load i16, i16* %arrayidx9.84, align 2, !tbaa !3
  %conv1.i.84 = sext i16 %168 to i32
  %mul.i.84 = mul nsw i32 %conv1.i.84, -758
  %call.i.84 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.84) #2
  %arrayidx11.84 = getelementptr inbounds i16, i16* %r, i64 84
  %169 = load i16, i16* %arrayidx11.84, align 2, !tbaa !3
  %sub.84 = sub i16 %169, %call.i.84
  store i16 %sub.84, i16* %arrayidx9.84, align 2, !tbaa !3
  %add21.84 = add i16 %169, %call.i.84
  store i16 %add21.84, i16* %arrayidx11.84, align 2, !tbaa !3
  %arrayidx9.85 = getelementptr inbounds i16, i16* %r, i64 213
  %170 = load i16, i16* %arrayidx9.85, align 2, !tbaa !3
  %conv1.i.85 = sext i16 %170 to i32
  %mul.i.85 = mul nsw i32 %conv1.i.85, -758
  %call.i.85 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.85) #2
  %arrayidx11.85 = getelementptr inbounds i16, i16* %r, i64 85
  %171 = load i16, i16* %arrayidx11.85, align 2, !tbaa !3
  %sub.85 = sub i16 %171, %call.i.85
  store i16 %sub.85, i16* %arrayidx9.85, align 2, !tbaa !3
  %add21.85 = add i16 %171, %call.i.85
  store i16 %add21.85, i16* %arrayidx11.85, align 2, !tbaa !3
  %arrayidx9.86 = getelementptr inbounds i16, i16* %r, i64 214
  %172 = load i16, i16* %arrayidx9.86, align 2, !tbaa !3
  %conv1.i.86 = sext i16 %172 to i32
  %mul.i.86 = mul nsw i32 %conv1.i.86, -758
  %call.i.86 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.86) #2
  %arrayidx11.86 = getelementptr inbounds i16, i16* %r, i64 86
  %173 = load i16, i16* %arrayidx11.86, align 2, !tbaa !3
  %sub.86 = sub i16 %173, %call.i.86
  store i16 %sub.86, i16* %arrayidx9.86, align 2, !tbaa !3
  %add21.86 = add i16 %173, %call.i.86
  store i16 %add21.86, i16* %arrayidx11.86, align 2, !tbaa !3
  %arrayidx9.87 = getelementptr inbounds i16, i16* %r, i64 215
  %174 = load i16, i16* %arrayidx9.87, align 2, !tbaa !3
  %conv1.i.87 = sext i16 %174 to i32
  %mul.i.87 = mul nsw i32 %conv1.i.87, -758
  %call.i.87 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.87) #2
  %arrayidx11.87 = getelementptr inbounds i16, i16* %r, i64 87
  %175 = load i16, i16* %arrayidx11.87, align 2, !tbaa !3
  %sub.87 = sub i16 %175, %call.i.87
  store i16 %sub.87, i16* %arrayidx9.87, align 2, !tbaa !3
  %add21.87 = add i16 %175, %call.i.87
  store i16 %add21.87, i16* %arrayidx11.87, align 2, !tbaa !3
  %arrayidx9.88 = getelementptr inbounds i16, i16* %r, i64 216
  %176 = load i16, i16* %arrayidx9.88, align 2, !tbaa !3
  %conv1.i.88 = sext i16 %176 to i32
  %mul.i.88 = mul nsw i32 %conv1.i.88, -758
  %call.i.88 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.88) #2
  %arrayidx11.88 = getelementptr inbounds i16, i16* %r, i64 88
  %177 = load i16, i16* %arrayidx11.88, align 2, !tbaa !3
  %sub.88 = sub i16 %177, %call.i.88
  store i16 %sub.88, i16* %arrayidx9.88, align 2, !tbaa !3
  %add21.88 = add i16 %177, %call.i.88
  store i16 %add21.88, i16* %arrayidx11.88, align 2, !tbaa !3
  %arrayidx9.89 = getelementptr inbounds i16, i16* %r, i64 217
  %178 = load i16, i16* %arrayidx9.89, align 2, !tbaa !3
  %conv1.i.89 = sext i16 %178 to i32
  %mul.i.89 = mul nsw i32 %conv1.i.89, -758
  %call.i.89 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.89) #2
  %arrayidx11.89 = getelementptr inbounds i16, i16* %r, i64 89
  %179 = load i16, i16* %arrayidx11.89, align 2, !tbaa !3
  %sub.89 = sub i16 %179, %call.i.89
  store i16 %sub.89, i16* %arrayidx9.89, align 2, !tbaa !3
  %add21.89 = add i16 %179, %call.i.89
  store i16 %add21.89, i16* %arrayidx11.89, align 2, !tbaa !3
  %arrayidx9.90 = getelementptr inbounds i16, i16* %r, i64 218
  %180 = load i16, i16* %arrayidx9.90, align 2, !tbaa !3
  %conv1.i.90 = sext i16 %180 to i32
  %mul.i.90 = mul nsw i32 %conv1.i.90, -758
  %call.i.90 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.90) #2
  %arrayidx11.90 = getelementptr inbounds i16, i16* %r, i64 90
  %181 = load i16, i16* %arrayidx11.90, align 2, !tbaa !3
  %sub.90 = sub i16 %181, %call.i.90
  store i16 %sub.90, i16* %arrayidx9.90, align 2, !tbaa !3
  %add21.90 = add i16 %181, %call.i.90
  store i16 %add21.90, i16* %arrayidx11.90, align 2, !tbaa !3
  %arrayidx9.91 = getelementptr inbounds i16, i16* %r, i64 219
  %182 = load i16, i16* %arrayidx9.91, align 2, !tbaa !3
  %conv1.i.91 = sext i16 %182 to i32
  %mul.i.91 = mul nsw i32 %conv1.i.91, -758
  %call.i.91 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.91) #2
  %arrayidx11.91 = getelementptr inbounds i16, i16* %r, i64 91
  %183 = load i16, i16* %arrayidx11.91, align 2, !tbaa !3
  %sub.91 = sub i16 %183, %call.i.91
  store i16 %sub.91, i16* %arrayidx9.91, align 2, !tbaa !3
  %add21.91 = add i16 %183, %call.i.91
  store i16 %add21.91, i16* %arrayidx11.91, align 2, !tbaa !3
  %arrayidx9.92 = getelementptr inbounds i16, i16* %r, i64 220
  %184 = load i16, i16* %arrayidx9.92, align 2, !tbaa !3
  %conv1.i.92 = sext i16 %184 to i32
  %mul.i.92 = mul nsw i32 %conv1.i.92, -758
  %call.i.92 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.92) #2
  %arrayidx11.92 = getelementptr inbounds i16, i16* %r, i64 92
  %185 = load i16, i16* %arrayidx11.92, align 2, !tbaa !3
  %sub.92 = sub i16 %185, %call.i.92
  store i16 %sub.92, i16* %arrayidx9.92, align 2, !tbaa !3
  %add21.92 = add i16 %185, %call.i.92
  store i16 %add21.92, i16* %arrayidx11.92, align 2, !tbaa !3
  %arrayidx9.93 = getelementptr inbounds i16, i16* %r, i64 221
  %186 = load i16, i16* %arrayidx9.93, align 2, !tbaa !3
  %conv1.i.93 = sext i16 %186 to i32
  %mul.i.93 = mul nsw i32 %conv1.i.93, -758
  %call.i.93 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.93) #2
  %arrayidx11.93 = getelementptr inbounds i16, i16* %r, i64 93
  %187 = load i16, i16* %arrayidx11.93, align 2, !tbaa !3
  %sub.93 = sub i16 %187, %call.i.93
  store i16 %sub.93, i16* %arrayidx9.93, align 2, !tbaa !3
  %add21.93 = add i16 %187, %call.i.93
  store i16 %add21.93, i16* %arrayidx11.93, align 2, !tbaa !3
  %arrayidx9.94 = getelementptr inbounds i16, i16* %r, i64 222
  %188 = load i16, i16* %arrayidx9.94, align 2, !tbaa !3
  %conv1.i.94 = sext i16 %188 to i32
  %mul.i.94 = mul nsw i32 %conv1.i.94, -758
  %call.i.94 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.94) #2
  %arrayidx11.94 = getelementptr inbounds i16, i16* %r, i64 94
  %189 = load i16, i16* %arrayidx11.94, align 2, !tbaa !3
  %sub.94 = sub i16 %189, %call.i.94
  store i16 %sub.94, i16* %arrayidx9.94, align 2, !tbaa !3
  %add21.94 = add i16 %189, %call.i.94
  store i16 %add21.94, i16* %arrayidx11.94, align 2, !tbaa !3
  %arrayidx9.95 = getelementptr inbounds i16, i16* %r, i64 223
  %190 = load i16, i16* %arrayidx9.95, align 2, !tbaa !3
  %conv1.i.95 = sext i16 %190 to i32
  %mul.i.95 = mul nsw i32 %conv1.i.95, -758
  %call.i.95 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.95) #2
  %arrayidx11.95 = getelementptr inbounds i16, i16* %r, i64 95
  %191 = load i16, i16* %arrayidx11.95, align 2, !tbaa !3
  %sub.95 = sub i16 %191, %call.i.95
  store i16 %sub.95, i16* %arrayidx9.95, align 2, !tbaa !3
  %add21.95 = add i16 %191, %call.i.95
  store i16 %add21.95, i16* %arrayidx11.95, align 2, !tbaa !3
  %arrayidx9.96 = getelementptr inbounds i16, i16* %r, i64 224
  %192 = load i16, i16* %arrayidx9.96, align 2, !tbaa !3
  %conv1.i.96 = sext i16 %192 to i32
  %mul.i.96 = mul nsw i32 %conv1.i.96, -758
  %call.i.96 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.96) #2
  %arrayidx11.96 = getelementptr inbounds i16, i16* %r, i64 96
  %193 = load i16, i16* %arrayidx11.96, align 2, !tbaa !3
  %sub.96 = sub i16 %193, %call.i.96
  store i16 %sub.96, i16* %arrayidx9.96, align 2, !tbaa !3
  %add21.96 = add i16 %193, %call.i.96
  store i16 %add21.96, i16* %arrayidx11.96, align 2, !tbaa !3
  %arrayidx9.97 = getelementptr inbounds i16, i16* %r, i64 225
  %194 = load i16, i16* %arrayidx9.97, align 2, !tbaa !3
  %conv1.i.97 = sext i16 %194 to i32
  %mul.i.97 = mul nsw i32 %conv1.i.97, -758
  %call.i.97 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.97) #2
  %arrayidx11.97 = getelementptr inbounds i16, i16* %r, i64 97
  %195 = load i16, i16* %arrayidx11.97, align 2, !tbaa !3
  %sub.97 = sub i16 %195, %call.i.97
  store i16 %sub.97, i16* %arrayidx9.97, align 2, !tbaa !3
  %add21.97 = add i16 %195, %call.i.97
  store i16 %add21.97, i16* %arrayidx11.97, align 2, !tbaa !3
  %arrayidx9.98 = getelementptr inbounds i16, i16* %r, i64 226
  %196 = load i16, i16* %arrayidx9.98, align 2, !tbaa !3
  %conv1.i.98 = sext i16 %196 to i32
  %mul.i.98 = mul nsw i32 %conv1.i.98, -758
  %call.i.98 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.98) #2
  %arrayidx11.98 = getelementptr inbounds i16, i16* %r, i64 98
  %197 = load i16, i16* %arrayidx11.98, align 2, !tbaa !3
  %sub.98 = sub i16 %197, %call.i.98
  store i16 %sub.98, i16* %arrayidx9.98, align 2, !tbaa !3
  %add21.98 = add i16 %197, %call.i.98
  store i16 %add21.98, i16* %arrayidx11.98, align 2, !tbaa !3
  %arrayidx9.99 = getelementptr inbounds i16, i16* %r, i64 227
  %198 = load i16, i16* %arrayidx9.99, align 2, !tbaa !3
  %conv1.i.99 = sext i16 %198 to i32
  %mul.i.99 = mul nsw i32 %conv1.i.99, -758
  %call.i.99 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.99) #2
  %arrayidx11.99 = getelementptr inbounds i16, i16* %r, i64 99
  %199 = load i16, i16* %arrayidx11.99, align 2, !tbaa !3
  %sub.99 = sub i16 %199, %call.i.99
  store i16 %sub.99, i16* %arrayidx9.99, align 2, !tbaa !3
  %add21.99 = add i16 %199, %call.i.99
  store i16 %add21.99, i16* %arrayidx11.99, align 2, !tbaa !3
  %arrayidx9.100 = getelementptr inbounds i16, i16* %r, i64 228
  %200 = load i16, i16* %arrayidx9.100, align 2, !tbaa !3
  %conv1.i.100 = sext i16 %200 to i32
  %mul.i.100 = mul nsw i32 %conv1.i.100, -758
  %call.i.100 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.100) #2
  %arrayidx11.100 = getelementptr inbounds i16, i16* %r, i64 100
  %201 = load i16, i16* %arrayidx11.100, align 2, !tbaa !3
  %sub.100 = sub i16 %201, %call.i.100
  store i16 %sub.100, i16* %arrayidx9.100, align 2, !tbaa !3
  %add21.100 = add i16 %201, %call.i.100
  store i16 %add21.100, i16* %arrayidx11.100, align 2, !tbaa !3
  %arrayidx9.101 = getelementptr inbounds i16, i16* %r, i64 229
  %202 = load i16, i16* %arrayidx9.101, align 2, !tbaa !3
  %conv1.i.101 = sext i16 %202 to i32
  %mul.i.101 = mul nsw i32 %conv1.i.101, -758
  %call.i.101 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.101) #2
  %arrayidx11.101 = getelementptr inbounds i16, i16* %r, i64 101
  %203 = load i16, i16* %arrayidx11.101, align 2, !tbaa !3
  %sub.101 = sub i16 %203, %call.i.101
  store i16 %sub.101, i16* %arrayidx9.101, align 2, !tbaa !3
  %add21.101 = add i16 %203, %call.i.101
  store i16 %add21.101, i16* %arrayidx11.101, align 2, !tbaa !3
  %arrayidx9.102 = getelementptr inbounds i16, i16* %r, i64 230
  %204 = load i16, i16* %arrayidx9.102, align 2, !tbaa !3
  %conv1.i.102 = sext i16 %204 to i32
  %mul.i.102 = mul nsw i32 %conv1.i.102, -758
  %call.i.102 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.102) #2
  %arrayidx11.102 = getelementptr inbounds i16, i16* %r, i64 102
  %205 = load i16, i16* %arrayidx11.102, align 2, !tbaa !3
  %sub.102 = sub i16 %205, %call.i.102
  store i16 %sub.102, i16* %arrayidx9.102, align 2, !tbaa !3
  %add21.102 = add i16 %205, %call.i.102
  store i16 %add21.102, i16* %arrayidx11.102, align 2, !tbaa !3
  %arrayidx9.103 = getelementptr inbounds i16, i16* %r, i64 231
  %206 = load i16, i16* %arrayidx9.103, align 2, !tbaa !3
  %conv1.i.103 = sext i16 %206 to i32
  %mul.i.103 = mul nsw i32 %conv1.i.103, -758
  %call.i.103 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.103) #2
  %arrayidx11.103 = getelementptr inbounds i16, i16* %r, i64 103
  %207 = load i16, i16* %arrayidx11.103, align 2, !tbaa !3
  %sub.103 = sub i16 %207, %call.i.103
  store i16 %sub.103, i16* %arrayidx9.103, align 2, !tbaa !3
  %add21.103 = add i16 %207, %call.i.103
  store i16 %add21.103, i16* %arrayidx11.103, align 2, !tbaa !3
  %arrayidx9.104 = getelementptr inbounds i16, i16* %r, i64 232
  %208 = load i16, i16* %arrayidx9.104, align 2, !tbaa !3
  %conv1.i.104 = sext i16 %208 to i32
  %mul.i.104 = mul nsw i32 %conv1.i.104, -758
  %call.i.104 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.104) #2
  %arrayidx11.104 = getelementptr inbounds i16, i16* %r, i64 104
  %209 = load i16, i16* %arrayidx11.104, align 2, !tbaa !3
  %sub.104 = sub i16 %209, %call.i.104
  store i16 %sub.104, i16* %arrayidx9.104, align 2, !tbaa !3
  %add21.104 = add i16 %209, %call.i.104
  store i16 %add21.104, i16* %arrayidx11.104, align 2, !tbaa !3
  %arrayidx9.105 = getelementptr inbounds i16, i16* %r, i64 233
  %210 = load i16, i16* %arrayidx9.105, align 2, !tbaa !3
  %conv1.i.105 = sext i16 %210 to i32
  %mul.i.105 = mul nsw i32 %conv1.i.105, -758
  %call.i.105 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.105) #2
  %arrayidx11.105 = getelementptr inbounds i16, i16* %r, i64 105
  %211 = load i16, i16* %arrayidx11.105, align 2, !tbaa !3
  %sub.105 = sub i16 %211, %call.i.105
  store i16 %sub.105, i16* %arrayidx9.105, align 2, !tbaa !3
  %add21.105 = add i16 %211, %call.i.105
  store i16 %add21.105, i16* %arrayidx11.105, align 2, !tbaa !3
  %arrayidx9.106 = getelementptr inbounds i16, i16* %r, i64 234
  %212 = load i16, i16* %arrayidx9.106, align 2, !tbaa !3
  %conv1.i.106 = sext i16 %212 to i32
  %mul.i.106 = mul nsw i32 %conv1.i.106, -758
  %call.i.106 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.106) #2
  %arrayidx11.106 = getelementptr inbounds i16, i16* %r, i64 106
  %213 = load i16, i16* %arrayidx11.106, align 2, !tbaa !3
  %sub.106 = sub i16 %213, %call.i.106
  store i16 %sub.106, i16* %arrayidx9.106, align 2, !tbaa !3
  %add21.106 = add i16 %213, %call.i.106
  store i16 %add21.106, i16* %arrayidx11.106, align 2, !tbaa !3
  %arrayidx9.107 = getelementptr inbounds i16, i16* %r, i64 235
  %214 = load i16, i16* %arrayidx9.107, align 2, !tbaa !3
  %conv1.i.107 = sext i16 %214 to i32
  %mul.i.107 = mul nsw i32 %conv1.i.107, -758
  %call.i.107 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.107) #2
  %arrayidx11.107 = getelementptr inbounds i16, i16* %r, i64 107
  %215 = load i16, i16* %arrayidx11.107, align 2, !tbaa !3
  %sub.107 = sub i16 %215, %call.i.107
  store i16 %sub.107, i16* %arrayidx9.107, align 2, !tbaa !3
  %add21.107 = add i16 %215, %call.i.107
  store i16 %add21.107, i16* %arrayidx11.107, align 2, !tbaa !3
  %arrayidx9.108 = getelementptr inbounds i16, i16* %r, i64 236
  %216 = load i16, i16* %arrayidx9.108, align 2, !tbaa !3
  %conv1.i.108 = sext i16 %216 to i32
  %mul.i.108 = mul nsw i32 %conv1.i.108, -758
  %call.i.108 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.108) #2
  %arrayidx11.108 = getelementptr inbounds i16, i16* %r, i64 108
  %217 = load i16, i16* %arrayidx11.108, align 2, !tbaa !3
  %sub.108 = sub i16 %217, %call.i.108
  store i16 %sub.108, i16* %arrayidx9.108, align 2, !tbaa !3
  %add21.108 = add i16 %217, %call.i.108
  store i16 %add21.108, i16* %arrayidx11.108, align 2, !tbaa !3
  %arrayidx9.109 = getelementptr inbounds i16, i16* %r, i64 237
  %218 = load i16, i16* %arrayidx9.109, align 2, !tbaa !3
  %conv1.i.109 = sext i16 %218 to i32
  %mul.i.109 = mul nsw i32 %conv1.i.109, -758
  %call.i.109 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.109) #2
  %arrayidx11.109 = getelementptr inbounds i16, i16* %r, i64 109
  %219 = load i16, i16* %arrayidx11.109, align 2, !tbaa !3
  %sub.109 = sub i16 %219, %call.i.109
  store i16 %sub.109, i16* %arrayidx9.109, align 2, !tbaa !3
  %add21.109 = add i16 %219, %call.i.109
  store i16 %add21.109, i16* %arrayidx11.109, align 2, !tbaa !3
  %arrayidx9.110 = getelementptr inbounds i16, i16* %r, i64 238
  %220 = load i16, i16* %arrayidx9.110, align 2, !tbaa !3
  %conv1.i.110 = sext i16 %220 to i32
  %mul.i.110 = mul nsw i32 %conv1.i.110, -758
  %call.i.110 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.110) #2
  %arrayidx11.110 = getelementptr inbounds i16, i16* %r, i64 110
  %221 = load i16, i16* %arrayidx11.110, align 2, !tbaa !3
  %sub.110 = sub i16 %221, %call.i.110
  store i16 %sub.110, i16* %arrayidx9.110, align 2, !tbaa !3
  %add21.110 = add i16 %221, %call.i.110
  store i16 %add21.110, i16* %arrayidx11.110, align 2, !tbaa !3
  %arrayidx9.111 = getelementptr inbounds i16, i16* %r, i64 239
  %222 = load i16, i16* %arrayidx9.111, align 2, !tbaa !3
  %conv1.i.111 = sext i16 %222 to i32
  %mul.i.111 = mul nsw i32 %conv1.i.111, -758
  %call.i.111 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.111) #2
  %arrayidx11.111 = getelementptr inbounds i16, i16* %r, i64 111
  %223 = load i16, i16* %arrayidx11.111, align 2, !tbaa !3
  %sub.111 = sub i16 %223, %call.i.111
  store i16 %sub.111, i16* %arrayidx9.111, align 2, !tbaa !3
  %add21.111 = add i16 %223, %call.i.111
  store i16 %add21.111, i16* %arrayidx11.111, align 2, !tbaa !3
  %arrayidx9.112 = getelementptr inbounds i16, i16* %r, i64 240
  %224 = load i16, i16* %arrayidx9.112, align 2, !tbaa !3
  %conv1.i.112 = sext i16 %224 to i32
  %mul.i.112 = mul nsw i32 %conv1.i.112, -758
  %call.i.112 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.112) #2
  %arrayidx11.112 = getelementptr inbounds i16, i16* %r, i64 112
  %225 = load i16, i16* %arrayidx11.112, align 2, !tbaa !3
  %sub.112 = sub i16 %225, %call.i.112
  store i16 %sub.112, i16* %arrayidx9.112, align 2, !tbaa !3
  %add21.112 = add i16 %225, %call.i.112
  store i16 %add21.112, i16* %arrayidx11.112, align 2, !tbaa !3
  %arrayidx9.113 = getelementptr inbounds i16, i16* %r, i64 241
  %226 = load i16, i16* %arrayidx9.113, align 2, !tbaa !3
  %conv1.i.113 = sext i16 %226 to i32
  %mul.i.113 = mul nsw i32 %conv1.i.113, -758
  %call.i.113 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.113) #2
  %arrayidx11.113 = getelementptr inbounds i16, i16* %r, i64 113
  %227 = load i16, i16* %arrayidx11.113, align 2, !tbaa !3
  %sub.113 = sub i16 %227, %call.i.113
  store i16 %sub.113, i16* %arrayidx9.113, align 2, !tbaa !3
  %add21.113 = add i16 %227, %call.i.113
  store i16 %add21.113, i16* %arrayidx11.113, align 2, !tbaa !3
  %arrayidx9.114 = getelementptr inbounds i16, i16* %r, i64 242
  %228 = load i16, i16* %arrayidx9.114, align 2, !tbaa !3
  %conv1.i.114 = sext i16 %228 to i32
  %mul.i.114 = mul nsw i32 %conv1.i.114, -758
  %call.i.114 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.114) #2
  %arrayidx11.114 = getelementptr inbounds i16, i16* %r, i64 114
  %229 = load i16, i16* %arrayidx11.114, align 2, !tbaa !3
  %sub.114 = sub i16 %229, %call.i.114
  store i16 %sub.114, i16* %arrayidx9.114, align 2, !tbaa !3
  %add21.114 = add i16 %229, %call.i.114
  store i16 %add21.114, i16* %arrayidx11.114, align 2, !tbaa !3
  %arrayidx9.115 = getelementptr inbounds i16, i16* %r, i64 243
  %230 = load i16, i16* %arrayidx9.115, align 2, !tbaa !3
  %conv1.i.115 = sext i16 %230 to i32
  %mul.i.115 = mul nsw i32 %conv1.i.115, -758
  %call.i.115 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.115) #2
  %arrayidx11.115 = getelementptr inbounds i16, i16* %r, i64 115
  %231 = load i16, i16* %arrayidx11.115, align 2, !tbaa !3
  %sub.115 = sub i16 %231, %call.i.115
  store i16 %sub.115, i16* %arrayidx9.115, align 2, !tbaa !3
  %add21.115 = add i16 %231, %call.i.115
  store i16 %add21.115, i16* %arrayidx11.115, align 2, !tbaa !3
  %arrayidx9.116 = getelementptr inbounds i16, i16* %r, i64 244
  %232 = load i16, i16* %arrayidx9.116, align 2, !tbaa !3
  %conv1.i.116 = sext i16 %232 to i32
  %mul.i.116 = mul nsw i32 %conv1.i.116, -758
  %call.i.116 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.116) #2
  %arrayidx11.116 = getelementptr inbounds i16, i16* %r, i64 116
  %233 = load i16, i16* %arrayidx11.116, align 2, !tbaa !3
  %sub.116 = sub i16 %233, %call.i.116
  store i16 %sub.116, i16* %arrayidx9.116, align 2, !tbaa !3
  %add21.116 = add i16 %233, %call.i.116
  store i16 %add21.116, i16* %arrayidx11.116, align 2, !tbaa !3
  %arrayidx9.117 = getelementptr inbounds i16, i16* %r, i64 245
  %234 = load i16, i16* %arrayidx9.117, align 2, !tbaa !3
  %conv1.i.117 = sext i16 %234 to i32
  %mul.i.117 = mul nsw i32 %conv1.i.117, -758
  %call.i.117 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.117) #2
  %arrayidx11.117 = getelementptr inbounds i16, i16* %r, i64 117
  %235 = load i16, i16* %arrayidx11.117, align 2, !tbaa !3
  %sub.117 = sub i16 %235, %call.i.117
  store i16 %sub.117, i16* %arrayidx9.117, align 2, !tbaa !3
  %add21.117 = add i16 %235, %call.i.117
  store i16 %add21.117, i16* %arrayidx11.117, align 2, !tbaa !3
  %arrayidx9.118 = getelementptr inbounds i16, i16* %r, i64 246
  %236 = load i16, i16* %arrayidx9.118, align 2, !tbaa !3
  %conv1.i.118 = sext i16 %236 to i32
  %mul.i.118 = mul nsw i32 %conv1.i.118, -758
  %call.i.118 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.118) #2
  %arrayidx11.118 = getelementptr inbounds i16, i16* %r, i64 118
  %237 = load i16, i16* %arrayidx11.118, align 2, !tbaa !3
  %sub.118 = sub i16 %237, %call.i.118
  store i16 %sub.118, i16* %arrayidx9.118, align 2, !tbaa !3
  %add21.118 = add i16 %237, %call.i.118
  store i16 %add21.118, i16* %arrayidx11.118, align 2, !tbaa !3
  %arrayidx9.119 = getelementptr inbounds i16, i16* %r, i64 247
  %238 = load i16, i16* %arrayidx9.119, align 2, !tbaa !3
  %conv1.i.119 = sext i16 %238 to i32
  %mul.i.119 = mul nsw i32 %conv1.i.119, -758
  %call.i.119 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.119) #2
  %arrayidx11.119 = getelementptr inbounds i16, i16* %r, i64 119
  %239 = load i16, i16* %arrayidx11.119, align 2, !tbaa !3
  %sub.119 = sub i16 %239, %call.i.119
  store i16 %sub.119, i16* %arrayidx9.119, align 2, !tbaa !3
  %add21.119 = add i16 %239, %call.i.119
  store i16 %add21.119, i16* %arrayidx11.119, align 2, !tbaa !3
  %arrayidx9.120 = getelementptr inbounds i16, i16* %r, i64 248
  %240 = load i16, i16* %arrayidx9.120, align 2, !tbaa !3
  %conv1.i.120 = sext i16 %240 to i32
  %mul.i.120 = mul nsw i32 %conv1.i.120, -758
  %call.i.120 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.120) #2
  %arrayidx11.120 = getelementptr inbounds i16, i16* %r, i64 120
  %241 = load i16, i16* %arrayidx11.120, align 2, !tbaa !3
  %sub.120 = sub i16 %241, %call.i.120
  store i16 %sub.120, i16* %arrayidx9.120, align 2, !tbaa !3
  %add21.120 = add i16 %241, %call.i.120
  store i16 %add21.120, i16* %arrayidx11.120, align 2, !tbaa !3
  %arrayidx9.121 = getelementptr inbounds i16, i16* %r, i64 249
  %242 = load i16, i16* %arrayidx9.121, align 2, !tbaa !3
  %conv1.i.121 = sext i16 %242 to i32
  %mul.i.121 = mul nsw i32 %conv1.i.121, -758
  %call.i.121 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.121) #2
  %arrayidx11.121 = getelementptr inbounds i16, i16* %r, i64 121
  %243 = load i16, i16* %arrayidx11.121, align 2, !tbaa !3
  %sub.121 = sub i16 %243, %call.i.121
  store i16 %sub.121, i16* %arrayidx9.121, align 2, !tbaa !3
  %add21.121 = add i16 %243, %call.i.121
  store i16 %add21.121, i16* %arrayidx11.121, align 2, !tbaa !3
  %arrayidx9.122 = getelementptr inbounds i16, i16* %r, i64 250
  %244 = load i16, i16* %arrayidx9.122, align 2, !tbaa !3
  %conv1.i.122 = sext i16 %244 to i32
  %mul.i.122 = mul nsw i32 %conv1.i.122, -758
  %call.i.122 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.122) #2
  %arrayidx11.122 = getelementptr inbounds i16, i16* %r, i64 122
  %245 = load i16, i16* %arrayidx11.122, align 2, !tbaa !3
  %sub.122 = sub i16 %245, %call.i.122
  store i16 %sub.122, i16* %arrayidx9.122, align 2, !tbaa !3
  %add21.122 = add i16 %245, %call.i.122
  store i16 %add21.122, i16* %arrayidx11.122, align 2, !tbaa !3
  %arrayidx9.123 = getelementptr inbounds i16, i16* %r, i64 251
  %246 = load i16, i16* %arrayidx9.123, align 2, !tbaa !3
  %conv1.i.123 = sext i16 %246 to i32
  %mul.i.123 = mul nsw i32 %conv1.i.123, -758
  %call.i.123 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.123) #2
  %arrayidx11.123 = getelementptr inbounds i16, i16* %r, i64 123
  %247 = load i16, i16* %arrayidx11.123, align 2, !tbaa !3
  %sub.123 = sub i16 %247, %call.i.123
  store i16 %sub.123, i16* %arrayidx9.123, align 2, !tbaa !3
  %add21.123 = add i16 %247, %call.i.123
  store i16 %add21.123, i16* %arrayidx11.123, align 2, !tbaa !3
  %arrayidx9.124 = getelementptr inbounds i16, i16* %r, i64 252
  %248 = load i16, i16* %arrayidx9.124, align 2, !tbaa !3
  %conv1.i.124 = sext i16 %248 to i32
  %mul.i.124 = mul nsw i32 %conv1.i.124, -758
  %call.i.124 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.124) #2
  %arrayidx11.124 = getelementptr inbounds i16, i16* %r, i64 124
  %249 = load i16, i16* %arrayidx11.124, align 2, !tbaa !3
  %sub.124 = sub i16 %249, %call.i.124
  store i16 %sub.124, i16* %arrayidx9.124, align 2, !tbaa !3
  %add21.124 = add i16 %249, %call.i.124
  store i16 %add21.124, i16* %arrayidx11.124, align 2, !tbaa !3
  %arrayidx9.125 = getelementptr inbounds i16, i16* %r, i64 253
  %250 = load i16, i16* %arrayidx9.125, align 2, !tbaa !3
  %conv1.i.125 = sext i16 %250 to i32
  %mul.i.125 = mul nsw i32 %conv1.i.125, -758
  %call.i.125 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.125) #2
  %arrayidx11.125 = getelementptr inbounds i16, i16* %r, i64 125
  %251 = load i16, i16* %arrayidx11.125, align 2, !tbaa !3
  %sub.125 = sub i16 %251, %call.i.125
  store i16 %sub.125, i16* %arrayidx9.125, align 2, !tbaa !3
  %add21.125 = add i16 %251, %call.i.125
  store i16 %add21.125, i16* %arrayidx11.125, align 2, !tbaa !3
  %arrayidx9.126 = getelementptr inbounds i16, i16* %r, i64 254
  %252 = load i16, i16* %arrayidx9.126, align 2, !tbaa !3
  %conv1.i.126 = sext i16 %252 to i32
  %mul.i.126 = mul nsw i32 %conv1.i.126, -758
  %call.i.126 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.126) #2
  %arrayidx11.126 = getelementptr inbounds i16, i16* %r, i64 126
  %253 = load i16, i16* %arrayidx11.126, align 2, !tbaa !3
  %sub.126 = sub i16 %253, %call.i.126
  store i16 %sub.126, i16* %arrayidx9.126, align 2, !tbaa !3
  %add21.126 = add i16 %253, %call.i.126
  store i16 %add21.126, i16* %arrayidx11.126, align 2, !tbaa !3
  %arrayidx9.127 = getelementptr inbounds i16, i16* %r, i64 255
  %254 = load i16, i16* %arrayidx9.127, align 2, !tbaa !3
  %conv1.i.127 = sext i16 %254 to i32
  %mul.i.127 = mul nsw i32 %conv1.i.127, -758
  %call.i.127 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.127) #2
  %arrayidx11.127 = getelementptr inbounds i16, i16* %r, i64 127
  %255 = load i16, i16* %arrayidx11.127, align 2, !tbaa !3
  %sub.127 = sub i16 %255, %call.i.127
  store i16 %sub.127, i16* %arrayidx9.127, align 2, !tbaa !3
  %add21.127 = add i16 %255, %call.i.127
  store i16 %add21.127, i16* %arrayidx11.127, align 2, !tbaa !3
  %arrayidx9.1 = getelementptr inbounds i16, i16* %r, i64 64
  %256 = load i16, i16* %arrayidx9.1, align 2, !tbaa !3
  %conv1.i.1 = sext i16 %256 to i32
  %mul.i.1 = mul nsw i32 %conv1.i.1, -359
  %call.i.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1) #2
  %257 = load i16, i16* %r, align 2, !tbaa !3
  %sub.1 = sub i16 %257, %call.i.1
  store i16 %sub.1, i16* %arrayidx9.1, align 2, !tbaa !3
  %add21.1 = add i16 %257, %call.i.1
  store i16 %add21.1, i16* %r, align 2, !tbaa !3
  %arrayidx9.1.1 = getelementptr inbounds i16, i16* %r, i64 65
  %258 = load i16, i16* %arrayidx9.1.1, align 2, !tbaa !3
  %conv1.i.1.1 = sext i16 %258 to i32
  %mul.i.1.1 = mul nsw i32 %conv1.i.1.1, -359
  %call.i.1.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.1) #2
  %arrayidx11.1.1 = getelementptr inbounds i16, i16* %r, i64 1
  %259 = load i16, i16* %arrayidx11.1.1, align 2, !tbaa !3
  %sub.1.1 = sub i16 %259, %call.i.1.1
  store i16 %sub.1.1, i16* %arrayidx9.1.1, align 2, !tbaa !3
  %add21.1.1 = add i16 %259, %call.i.1.1
  store i16 %add21.1.1, i16* %arrayidx11.1.1, align 2, !tbaa !3
  %arrayidx9.1.2 = getelementptr inbounds i16, i16* %r, i64 66
  %260 = load i16, i16* %arrayidx9.1.2, align 2, !tbaa !3
  %conv1.i.1.2 = sext i16 %260 to i32
  %mul.i.1.2 = mul nsw i32 %conv1.i.1.2, -359
  %call.i.1.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.2) #2
  %arrayidx11.1.2 = getelementptr inbounds i16, i16* %r, i64 2
  %261 = load i16, i16* %arrayidx11.1.2, align 2, !tbaa !3
  %sub.1.2 = sub i16 %261, %call.i.1.2
  store i16 %sub.1.2, i16* %arrayidx9.1.2, align 2, !tbaa !3
  %add21.1.2 = add i16 %261, %call.i.1.2
  store i16 %add21.1.2, i16* %arrayidx11.1.2, align 2, !tbaa !3
  %arrayidx9.1.3 = getelementptr inbounds i16, i16* %r, i64 67
  %262 = load i16, i16* %arrayidx9.1.3, align 2, !tbaa !3
  %conv1.i.1.3 = sext i16 %262 to i32
  %mul.i.1.3 = mul nsw i32 %conv1.i.1.3, -359
  %call.i.1.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.3) #2
  %arrayidx11.1.3 = getelementptr inbounds i16, i16* %r, i64 3
  %263 = load i16, i16* %arrayidx11.1.3, align 2, !tbaa !3
  %sub.1.3 = sub i16 %263, %call.i.1.3
  store i16 %sub.1.3, i16* %arrayidx9.1.3, align 2, !tbaa !3
  %add21.1.3 = add i16 %263, %call.i.1.3
  store i16 %add21.1.3, i16* %arrayidx11.1.3, align 2, !tbaa !3
  %arrayidx9.1.4 = getelementptr inbounds i16, i16* %r, i64 68
  %264 = load i16, i16* %arrayidx9.1.4, align 2, !tbaa !3
  %conv1.i.1.4 = sext i16 %264 to i32
  %mul.i.1.4 = mul nsw i32 %conv1.i.1.4, -359
  %call.i.1.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.4) #2
  %arrayidx11.1.4 = getelementptr inbounds i16, i16* %r, i64 4
  %265 = load i16, i16* %arrayidx11.1.4, align 2, !tbaa !3
  %sub.1.4 = sub i16 %265, %call.i.1.4
  store i16 %sub.1.4, i16* %arrayidx9.1.4, align 2, !tbaa !3
  %add21.1.4 = add i16 %265, %call.i.1.4
  store i16 %add21.1.4, i16* %arrayidx11.1.4, align 2, !tbaa !3
  %arrayidx9.1.5 = getelementptr inbounds i16, i16* %r, i64 69
  %266 = load i16, i16* %arrayidx9.1.5, align 2, !tbaa !3
  %conv1.i.1.5 = sext i16 %266 to i32
  %mul.i.1.5 = mul nsw i32 %conv1.i.1.5, -359
  %call.i.1.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.5) #2
  %arrayidx11.1.5 = getelementptr inbounds i16, i16* %r, i64 5
  %267 = load i16, i16* %arrayidx11.1.5, align 2, !tbaa !3
  %sub.1.5 = sub i16 %267, %call.i.1.5
  store i16 %sub.1.5, i16* %arrayidx9.1.5, align 2, !tbaa !3
  %add21.1.5 = add i16 %267, %call.i.1.5
  store i16 %add21.1.5, i16* %arrayidx11.1.5, align 2, !tbaa !3
  %arrayidx9.1.6 = getelementptr inbounds i16, i16* %r, i64 70
  %268 = load i16, i16* %arrayidx9.1.6, align 2, !tbaa !3
  %conv1.i.1.6 = sext i16 %268 to i32
  %mul.i.1.6 = mul nsw i32 %conv1.i.1.6, -359
  %call.i.1.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.6) #2
  %arrayidx11.1.6 = getelementptr inbounds i16, i16* %r, i64 6
  %269 = load i16, i16* %arrayidx11.1.6, align 2, !tbaa !3
  %sub.1.6 = sub i16 %269, %call.i.1.6
  store i16 %sub.1.6, i16* %arrayidx9.1.6, align 2, !tbaa !3
  %add21.1.6 = add i16 %269, %call.i.1.6
  store i16 %add21.1.6, i16* %arrayidx11.1.6, align 2, !tbaa !3
  %arrayidx9.1.7 = getelementptr inbounds i16, i16* %r, i64 71
  %270 = load i16, i16* %arrayidx9.1.7, align 2, !tbaa !3
  %conv1.i.1.7 = sext i16 %270 to i32
  %mul.i.1.7 = mul nsw i32 %conv1.i.1.7, -359
  %call.i.1.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.7) #2
  %arrayidx11.1.7 = getelementptr inbounds i16, i16* %r, i64 7
  %271 = load i16, i16* %arrayidx11.1.7, align 2, !tbaa !3
  %sub.1.7 = sub i16 %271, %call.i.1.7
  store i16 %sub.1.7, i16* %arrayidx9.1.7, align 2, !tbaa !3
  %add21.1.7 = add i16 %271, %call.i.1.7
  store i16 %add21.1.7, i16* %arrayidx11.1.7, align 2, !tbaa !3
  %arrayidx9.1.8 = getelementptr inbounds i16, i16* %r, i64 72
  %272 = load i16, i16* %arrayidx9.1.8, align 2, !tbaa !3
  %conv1.i.1.8 = sext i16 %272 to i32
  %mul.i.1.8 = mul nsw i32 %conv1.i.1.8, -359
  %call.i.1.8 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.8) #2
  %arrayidx11.1.8 = getelementptr inbounds i16, i16* %r, i64 8
  %273 = load i16, i16* %arrayidx11.1.8, align 2, !tbaa !3
  %sub.1.8 = sub i16 %273, %call.i.1.8
  store i16 %sub.1.8, i16* %arrayidx9.1.8, align 2, !tbaa !3
  %add21.1.8 = add i16 %273, %call.i.1.8
  store i16 %add21.1.8, i16* %arrayidx11.1.8, align 2, !tbaa !3
  %arrayidx9.1.9 = getelementptr inbounds i16, i16* %r, i64 73
  %274 = load i16, i16* %arrayidx9.1.9, align 2, !tbaa !3
  %conv1.i.1.9 = sext i16 %274 to i32
  %mul.i.1.9 = mul nsw i32 %conv1.i.1.9, -359
  %call.i.1.9 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.9) #2
  %arrayidx11.1.9 = getelementptr inbounds i16, i16* %r, i64 9
  %275 = load i16, i16* %arrayidx11.1.9, align 2, !tbaa !3
  %sub.1.9 = sub i16 %275, %call.i.1.9
  store i16 %sub.1.9, i16* %arrayidx9.1.9, align 2, !tbaa !3
  %add21.1.9 = add i16 %275, %call.i.1.9
  store i16 %add21.1.9, i16* %arrayidx11.1.9, align 2, !tbaa !3
  %arrayidx9.1.10 = getelementptr inbounds i16, i16* %r, i64 74
  %276 = load i16, i16* %arrayidx9.1.10, align 2, !tbaa !3
  %conv1.i.1.10 = sext i16 %276 to i32
  %mul.i.1.10 = mul nsw i32 %conv1.i.1.10, -359
  %call.i.1.10 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.10) #2
  %arrayidx11.1.10 = getelementptr inbounds i16, i16* %r, i64 10
  %277 = load i16, i16* %arrayidx11.1.10, align 2, !tbaa !3
  %sub.1.10 = sub i16 %277, %call.i.1.10
  store i16 %sub.1.10, i16* %arrayidx9.1.10, align 2, !tbaa !3
  %add21.1.10 = add i16 %277, %call.i.1.10
  store i16 %add21.1.10, i16* %arrayidx11.1.10, align 2, !tbaa !3
  %arrayidx9.1.11 = getelementptr inbounds i16, i16* %r, i64 75
  %278 = load i16, i16* %arrayidx9.1.11, align 2, !tbaa !3
  %conv1.i.1.11 = sext i16 %278 to i32
  %mul.i.1.11 = mul nsw i32 %conv1.i.1.11, -359
  %call.i.1.11 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.11) #2
  %arrayidx11.1.11 = getelementptr inbounds i16, i16* %r, i64 11
  %279 = load i16, i16* %arrayidx11.1.11, align 2, !tbaa !3
  %sub.1.11 = sub i16 %279, %call.i.1.11
  store i16 %sub.1.11, i16* %arrayidx9.1.11, align 2, !tbaa !3
  %add21.1.11 = add i16 %279, %call.i.1.11
  store i16 %add21.1.11, i16* %arrayidx11.1.11, align 2, !tbaa !3
  %arrayidx9.1.12 = getelementptr inbounds i16, i16* %r, i64 76
  %280 = load i16, i16* %arrayidx9.1.12, align 2, !tbaa !3
  %conv1.i.1.12 = sext i16 %280 to i32
  %mul.i.1.12 = mul nsw i32 %conv1.i.1.12, -359
  %call.i.1.12 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.12) #2
  %arrayidx11.1.12 = getelementptr inbounds i16, i16* %r, i64 12
  %281 = load i16, i16* %arrayidx11.1.12, align 2, !tbaa !3
  %sub.1.12 = sub i16 %281, %call.i.1.12
  store i16 %sub.1.12, i16* %arrayidx9.1.12, align 2, !tbaa !3
  %add21.1.12 = add i16 %281, %call.i.1.12
  store i16 %add21.1.12, i16* %arrayidx11.1.12, align 2, !tbaa !3
  %arrayidx9.1.13 = getelementptr inbounds i16, i16* %r, i64 77
  %282 = load i16, i16* %arrayidx9.1.13, align 2, !tbaa !3
  %conv1.i.1.13 = sext i16 %282 to i32
  %mul.i.1.13 = mul nsw i32 %conv1.i.1.13, -359
  %call.i.1.13 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.13) #2
  %arrayidx11.1.13 = getelementptr inbounds i16, i16* %r, i64 13
  %283 = load i16, i16* %arrayidx11.1.13, align 2, !tbaa !3
  %sub.1.13 = sub i16 %283, %call.i.1.13
  store i16 %sub.1.13, i16* %arrayidx9.1.13, align 2, !tbaa !3
  %add21.1.13 = add i16 %283, %call.i.1.13
  store i16 %add21.1.13, i16* %arrayidx11.1.13, align 2, !tbaa !3
  %arrayidx9.1.14 = getelementptr inbounds i16, i16* %r, i64 78
  %284 = load i16, i16* %arrayidx9.1.14, align 2, !tbaa !3
  %conv1.i.1.14 = sext i16 %284 to i32
  %mul.i.1.14 = mul nsw i32 %conv1.i.1.14, -359
  %call.i.1.14 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.14) #2
  %arrayidx11.1.14 = getelementptr inbounds i16, i16* %r, i64 14
  %285 = load i16, i16* %arrayidx11.1.14, align 2, !tbaa !3
  %sub.1.14 = sub i16 %285, %call.i.1.14
  store i16 %sub.1.14, i16* %arrayidx9.1.14, align 2, !tbaa !3
  %add21.1.14 = add i16 %285, %call.i.1.14
  store i16 %add21.1.14, i16* %arrayidx11.1.14, align 2, !tbaa !3
  %arrayidx9.1.15 = getelementptr inbounds i16, i16* %r, i64 79
  %286 = load i16, i16* %arrayidx9.1.15, align 2, !tbaa !3
  %conv1.i.1.15 = sext i16 %286 to i32
  %mul.i.1.15 = mul nsw i32 %conv1.i.1.15, -359
  %call.i.1.15 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.15) #2
  %arrayidx11.1.15 = getelementptr inbounds i16, i16* %r, i64 15
  %287 = load i16, i16* %arrayidx11.1.15, align 2, !tbaa !3
  %sub.1.15 = sub i16 %287, %call.i.1.15
  store i16 %sub.1.15, i16* %arrayidx9.1.15, align 2, !tbaa !3
  %add21.1.15 = add i16 %287, %call.i.1.15
  store i16 %add21.1.15, i16* %arrayidx11.1.15, align 2, !tbaa !3
  %arrayidx9.1.16 = getelementptr inbounds i16, i16* %r, i64 80
  %288 = load i16, i16* %arrayidx9.1.16, align 2, !tbaa !3
  %conv1.i.1.16 = sext i16 %288 to i32
  %mul.i.1.16 = mul nsw i32 %conv1.i.1.16, -359
  %call.i.1.16 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.16) #2
  %arrayidx11.1.16 = getelementptr inbounds i16, i16* %r, i64 16
  %289 = load i16, i16* %arrayidx11.1.16, align 2, !tbaa !3
  %sub.1.16 = sub i16 %289, %call.i.1.16
  store i16 %sub.1.16, i16* %arrayidx9.1.16, align 2, !tbaa !3
  %add21.1.16 = add i16 %289, %call.i.1.16
  store i16 %add21.1.16, i16* %arrayidx11.1.16, align 2, !tbaa !3
  %arrayidx9.1.17 = getelementptr inbounds i16, i16* %r, i64 81
  %290 = load i16, i16* %arrayidx9.1.17, align 2, !tbaa !3
  %conv1.i.1.17 = sext i16 %290 to i32
  %mul.i.1.17 = mul nsw i32 %conv1.i.1.17, -359
  %call.i.1.17 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.17) #2
  %arrayidx11.1.17 = getelementptr inbounds i16, i16* %r, i64 17
  %291 = load i16, i16* %arrayidx11.1.17, align 2, !tbaa !3
  %sub.1.17 = sub i16 %291, %call.i.1.17
  store i16 %sub.1.17, i16* %arrayidx9.1.17, align 2, !tbaa !3
  %add21.1.17 = add i16 %291, %call.i.1.17
  store i16 %add21.1.17, i16* %arrayidx11.1.17, align 2, !tbaa !3
  %arrayidx9.1.18 = getelementptr inbounds i16, i16* %r, i64 82
  %292 = load i16, i16* %arrayidx9.1.18, align 2, !tbaa !3
  %conv1.i.1.18 = sext i16 %292 to i32
  %mul.i.1.18 = mul nsw i32 %conv1.i.1.18, -359
  %call.i.1.18 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.18) #2
  %arrayidx11.1.18 = getelementptr inbounds i16, i16* %r, i64 18
  %293 = load i16, i16* %arrayidx11.1.18, align 2, !tbaa !3
  %sub.1.18 = sub i16 %293, %call.i.1.18
  store i16 %sub.1.18, i16* %arrayidx9.1.18, align 2, !tbaa !3
  %add21.1.18 = add i16 %293, %call.i.1.18
  store i16 %add21.1.18, i16* %arrayidx11.1.18, align 2, !tbaa !3
  %arrayidx9.1.19 = getelementptr inbounds i16, i16* %r, i64 83
  %294 = load i16, i16* %arrayidx9.1.19, align 2, !tbaa !3
  %conv1.i.1.19 = sext i16 %294 to i32
  %mul.i.1.19 = mul nsw i32 %conv1.i.1.19, -359
  %call.i.1.19 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.19) #2
  %arrayidx11.1.19 = getelementptr inbounds i16, i16* %r, i64 19
  %295 = load i16, i16* %arrayidx11.1.19, align 2, !tbaa !3
  %sub.1.19 = sub i16 %295, %call.i.1.19
  store i16 %sub.1.19, i16* %arrayidx9.1.19, align 2, !tbaa !3
  %add21.1.19 = add i16 %295, %call.i.1.19
  store i16 %add21.1.19, i16* %arrayidx11.1.19, align 2, !tbaa !3
  %arrayidx9.1.20 = getelementptr inbounds i16, i16* %r, i64 84
  %296 = load i16, i16* %arrayidx9.1.20, align 2, !tbaa !3
  %conv1.i.1.20 = sext i16 %296 to i32
  %mul.i.1.20 = mul nsw i32 %conv1.i.1.20, -359
  %call.i.1.20 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.20) #2
  %arrayidx11.1.20 = getelementptr inbounds i16, i16* %r, i64 20
  %297 = load i16, i16* %arrayidx11.1.20, align 2, !tbaa !3
  %sub.1.20 = sub i16 %297, %call.i.1.20
  store i16 %sub.1.20, i16* %arrayidx9.1.20, align 2, !tbaa !3
  %add21.1.20 = add i16 %297, %call.i.1.20
  store i16 %add21.1.20, i16* %arrayidx11.1.20, align 2, !tbaa !3
  %arrayidx9.1.21 = getelementptr inbounds i16, i16* %r, i64 85
  %298 = load i16, i16* %arrayidx9.1.21, align 2, !tbaa !3
  %conv1.i.1.21 = sext i16 %298 to i32
  %mul.i.1.21 = mul nsw i32 %conv1.i.1.21, -359
  %call.i.1.21 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.21) #2
  %arrayidx11.1.21 = getelementptr inbounds i16, i16* %r, i64 21
  %299 = load i16, i16* %arrayidx11.1.21, align 2, !tbaa !3
  %sub.1.21 = sub i16 %299, %call.i.1.21
  store i16 %sub.1.21, i16* %arrayidx9.1.21, align 2, !tbaa !3
  %add21.1.21 = add i16 %299, %call.i.1.21
  store i16 %add21.1.21, i16* %arrayidx11.1.21, align 2, !tbaa !3
  %arrayidx9.1.22 = getelementptr inbounds i16, i16* %r, i64 86
  %300 = load i16, i16* %arrayidx9.1.22, align 2, !tbaa !3
  %conv1.i.1.22 = sext i16 %300 to i32
  %mul.i.1.22 = mul nsw i32 %conv1.i.1.22, -359
  %call.i.1.22 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.22) #2
  %arrayidx11.1.22 = getelementptr inbounds i16, i16* %r, i64 22
  %301 = load i16, i16* %arrayidx11.1.22, align 2, !tbaa !3
  %sub.1.22 = sub i16 %301, %call.i.1.22
  store i16 %sub.1.22, i16* %arrayidx9.1.22, align 2, !tbaa !3
  %add21.1.22 = add i16 %301, %call.i.1.22
  store i16 %add21.1.22, i16* %arrayidx11.1.22, align 2, !tbaa !3
  %arrayidx9.1.23 = getelementptr inbounds i16, i16* %r, i64 87
  %302 = load i16, i16* %arrayidx9.1.23, align 2, !tbaa !3
  %conv1.i.1.23 = sext i16 %302 to i32
  %mul.i.1.23 = mul nsw i32 %conv1.i.1.23, -359
  %call.i.1.23 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.23) #2
  %arrayidx11.1.23 = getelementptr inbounds i16, i16* %r, i64 23
  %303 = load i16, i16* %arrayidx11.1.23, align 2, !tbaa !3
  %sub.1.23 = sub i16 %303, %call.i.1.23
  store i16 %sub.1.23, i16* %arrayidx9.1.23, align 2, !tbaa !3
  %add21.1.23 = add i16 %303, %call.i.1.23
  store i16 %add21.1.23, i16* %arrayidx11.1.23, align 2, !tbaa !3
  %arrayidx9.1.24 = getelementptr inbounds i16, i16* %r, i64 88
  %304 = load i16, i16* %arrayidx9.1.24, align 2, !tbaa !3
  %conv1.i.1.24 = sext i16 %304 to i32
  %mul.i.1.24 = mul nsw i32 %conv1.i.1.24, -359
  %call.i.1.24 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.24) #2
  %arrayidx11.1.24 = getelementptr inbounds i16, i16* %r, i64 24
  %305 = load i16, i16* %arrayidx11.1.24, align 2, !tbaa !3
  %sub.1.24 = sub i16 %305, %call.i.1.24
  store i16 %sub.1.24, i16* %arrayidx9.1.24, align 2, !tbaa !3
  %add21.1.24 = add i16 %305, %call.i.1.24
  store i16 %add21.1.24, i16* %arrayidx11.1.24, align 2, !tbaa !3
  %arrayidx9.1.25 = getelementptr inbounds i16, i16* %r, i64 89
  %306 = load i16, i16* %arrayidx9.1.25, align 2, !tbaa !3
  %conv1.i.1.25 = sext i16 %306 to i32
  %mul.i.1.25 = mul nsw i32 %conv1.i.1.25, -359
  %call.i.1.25 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.25) #2
  %arrayidx11.1.25 = getelementptr inbounds i16, i16* %r, i64 25
  %307 = load i16, i16* %arrayidx11.1.25, align 2, !tbaa !3
  %sub.1.25 = sub i16 %307, %call.i.1.25
  store i16 %sub.1.25, i16* %arrayidx9.1.25, align 2, !tbaa !3
  %add21.1.25 = add i16 %307, %call.i.1.25
  store i16 %add21.1.25, i16* %arrayidx11.1.25, align 2, !tbaa !3
  %arrayidx9.1.26 = getelementptr inbounds i16, i16* %r, i64 90
  %308 = load i16, i16* %arrayidx9.1.26, align 2, !tbaa !3
  %conv1.i.1.26 = sext i16 %308 to i32
  %mul.i.1.26 = mul nsw i32 %conv1.i.1.26, -359
  %call.i.1.26 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.26) #2
  %arrayidx11.1.26 = getelementptr inbounds i16, i16* %r, i64 26
  %309 = load i16, i16* %arrayidx11.1.26, align 2, !tbaa !3
  %sub.1.26 = sub i16 %309, %call.i.1.26
  store i16 %sub.1.26, i16* %arrayidx9.1.26, align 2, !tbaa !3
  %add21.1.26 = add i16 %309, %call.i.1.26
  store i16 %add21.1.26, i16* %arrayidx11.1.26, align 2, !tbaa !3
  %arrayidx9.1.27 = getelementptr inbounds i16, i16* %r, i64 91
  %310 = load i16, i16* %arrayidx9.1.27, align 2, !tbaa !3
  %conv1.i.1.27 = sext i16 %310 to i32
  %mul.i.1.27 = mul nsw i32 %conv1.i.1.27, -359
  %call.i.1.27 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.27) #2
  %arrayidx11.1.27 = getelementptr inbounds i16, i16* %r, i64 27
  %311 = load i16, i16* %arrayidx11.1.27, align 2, !tbaa !3
  %sub.1.27 = sub i16 %311, %call.i.1.27
  store i16 %sub.1.27, i16* %arrayidx9.1.27, align 2, !tbaa !3
  %add21.1.27 = add i16 %311, %call.i.1.27
  store i16 %add21.1.27, i16* %arrayidx11.1.27, align 2, !tbaa !3
  %arrayidx9.1.28 = getelementptr inbounds i16, i16* %r, i64 92
  %312 = load i16, i16* %arrayidx9.1.28, align 2, !tbaa !3
  %conv1.i.1.28 = sext i16 %312 to i32
  %mul.i.1.28 = mul nsw i32 %conv1.i.1.28, -359
  %call.i.1.28 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.28) #2
  %arrayidx11.1.28 = getelementptr inbounds i16, i16* %r, i64 28
  %313 = load i16, i16* %arrayidx11.1.28, align 2, !tbaa !3
  %sub.1.28 = sub i16 %313, %call.i.1.28
  store i16 %sub.1.28, i16* %arrayidx9.1.28, align 2, !tbaa !3
  %add21.1.28 = add i16 %313, %call.i.1.28
  store i16 %add21.1.28, i16* %arrayidx11.1.28, align 2, !tbaa !3
  %arrayidx9.1.29 = getelementptr inbounds i16, i16* %r, i64 93
  %314 = load i16, i16* %arrayidx9.1.29, align 2, !tbaa !3
  %conv1.i.1.29 = sext i16 %314 to i32
  %mul.i.1.29 = mul nsw i32 %conv1.i.1.29, -359
  %call.i.1.29 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.29) #2
  %arrayidx11.1.29 = getelementptr inbounds i16, i16* %r, i64 29
  %315 = load i16, i16* %arrayidx11.1.29, align 2, !tbaa !3
  %sub.1.29 = sub i16 %315, %call.i.1.29
  store i16 %sub.1.29, i16* %arrayidx9.1.29, align 2, !tbaa !3
  %add21.1.29 = add i16 %315, %call.i.1.29
  store i16 %add21.1.29, i16* %arrayidx11.1.29, align 2, !tbaa !3
  %arrayidx9.1.30 = getelementptr inbounds i16, i16* %r, i64 94
  %316 = load i16, i16* %arrayidx9.1.30, align 2, !tbaa !3
  %conv1.i.1.30 = sext i16 %316 to i32
  %mul.i.1.30 = mul nsw i32 %conv1.i.1.30, -359
  %call.i.1.30 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.30) #2
  %arrayidx11.1.30 = getelementptr inbounds i16, i16* %r, i64 30
  %317 = load i16, i16* %arrayidx11.1.30, align 2, !tbaa !3
  %sub.1.30 = sub i16 %317, %call.i.1.30
  store i16 %sub.1.30, i16* %arrayidx9.1.30, align 2, !tbaa !3
  %add21.1.30 = add i16 %317, %call.i.1.30
  store i16 %add21.1.30, i16* %arrayidx11.1.30, align 2, !tbaa !3
  %arrayidx9.1.31 = getelementptr inbounds i16, i16* %r, i64 95
  %318 = load i16, i16* %arrayidx9.1.31, align 2, !tbaa !3
  %conv1.i.1.31 = sext i16 %318 to i32
  %mul.i.1.31 = mul nsw i32 %conv1.i.1.31, -359
  %call.i.1.31 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.31) #2
  %arrayidx11.1.31 = getelementptr inbounds i16, i16* %r, i64 31
  %319 = load i16, i16* %arrayidx11.1.31, align 2, !tbaa !3
  %sub.1.31 = sub i16 %319, %call.i.1.31
  store i16 %sub.1.31, i16* %arrayidx9.1.31, align 2, !tbaa !3
  %add21.1.31 = add i16 %319, %call.i.1.31
  store i16 %add21.1.31, i16* %arrayidx11.1.31, align 2, !tbaa !3
  %arrayidx9.1.32 = getelementptr inbounds i16, i16* %r, i64 96
  %320 = load i16, i16* %arrayidx9.1.32, align 2, !tbaa !3
  %conv1.i.1.32 = sext i16 %320 to i32
  %mul.i.1.32 = mul nsw i32 %conv1.i.1.32, -359
  %call.i.1.32 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.32) #2
  %arrayidx11.1.32 = getelementptr inbounds i16, i16* %r, i64 32
  %321 = load i16, i16* %arrayidx11.1.32, align 2, !tbaa !3
  %sub.1.32 = sub i16 %321, %call.i.1.32
  store i16 %sub.1.32, i16* %arrayidx9.1.32, align 2, !tbaa !3
  %add21.1.32 = add i16 %321, %call.i.1.32
  store i16 %add21.1.32, i16* %arrayidx11.1.32, align 2, !tbaa !3
  %arrayidx9.1.33 = getelementptr inbounds i16, i16* %r, i64 97
  %322 = load i16, i16* %arrayidx9.1.33, align 2, !tbaa !3
  %conv1.i.1.33 = sext i16 %322 to i32
  %mul.i.1.33 = mul nsw i32 %conv1.i.1.33, -359
  %call.i.1.33 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.33) #2
  %arrayidx11.1.33 = getelementptr inbounds i16, i16* %r, i64 33
  %323 = load i16, i16* %arrayidx11.1.33, align 2, !tbaa !3
  %sub.1.33 = sub i16 %323, %call.i.1.33
  store i16 %sub.1.33, i16* %arrayidx9.1.33, align 2, !tbaa !3
  %add21.1.33 = add i16 %323, %call.i.1.33
  store i16 %add21.1.33, i16* %arrayidx11.1.33, align 2, !tbaa !3
  %arrayidx9.1.34 = getelementptr inbounds i16, i16* %r, i64 98
  %324 = load i16, i16* %arrayidx9.1.34, align 2, !tbaa !3
  %conv1.i.1.34 = sext i16 %324 to i32
  %mul.i.1.34 = mul nsw i32 %conv1.i.1.34, -359
  %call.i.1.34 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.34) #2
  %arrayidx11.1.34 = getelementptr inbounds i16, i16* %r, i64 34
  %325 = load i16, i16* %arrayidx11.1.34, align 2, !tbaa !3
  %sub.1.34 = sub i16 %325, %call.i.1.34
  store i16 %sub.1.34, i16* %arrayidx9.1.34, align 2, !tbaa !3
  %add21.1.34 = add i16 %325, %call.i.1.34
  store i16 %add21.1.34, i16* %arrayidx11.1.34, align 2, !tbaa !3
  %arrayidx9.1.35 = getelementptr inbounds i16, i16* %r, i64 99
  %326 = load i16, i16* %arrayidx9.1.35, align 2, !tbaa !3
  %conv1.i.1.35 = sext i16 %326 to i32
  %mul.i.1.35 = mul nsw i32 %conv1.i.1.35, -359
  %call.i.1.35 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.35) #2
  %arrayidx11.1.35 = getelementptr inbounds i16, i16* %r, i64 35
  %327 = load i16, i16* %arrayidx11.1.35, align 2, !tbaa !3
  %sub.1.35 = sub i16 %327, %call.i.1.35
  store i16 %sub.1.35, i16* %arrayidx9.1.35, align 2, !tbaa !3
  %add21.1.35 = add i16 %327, %call.i.1.35
  store i16 %add21.1.35, i16* %arrayidx11.1.35, align 2, !tbaa !3
  %arrayidx9.1.36 = getelementptr inbounds i16, i16* %r, i64 100
  %328 = load i16, i16* %arrayidx9.1.36, align 2, !tbaa !3
  %conv1.i.1.36 = sext i16 %328 to i32
  %mul.i.1.36 = mul nsw i32 %conv1.i.1.36, -359
  %call.i.1.36 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.36) #2
  %arrayidx11.1.36 = getelementptr inbounds i16, i16* %r, i64 36
  %329 = load i16, i16* %arrayidx11.1.36, align 2, !tbaa !3
  %sub.1.36 = sub i16 %329, %call.i.1.36
  store i16 %sub.1.36, i16* %arrayidx9.1.36, align 2, !tbaa !3
  %add21.1.36 = add i16 %329, %call.i.1.36
  store i16 %add21.1.36, i16* %arrayidx11.1.36, align 2, !tbaa !3
  %arrayidx9.1.37 = getelementptr inbounds i16, i16* %r, i64 101
  %330 = load i16, i16* %arrayidx9.1.37, align 2, !tbaa !3
  %conv1.i.1.37 = sext i16 %330 to i32
  %mul.i.1.37 = mul nsw i32 %conv1.i.1.37, -359
  %call.i.1.37 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.37) #2
  %arrayidx11.1.37 = getelementptr inbounds i16, i16* %r, i64 37
  %331 = load i16, i16* %arrayidx11.1.37, align 2, !tbaa !3
  %sub.1.37 = sub i16 %331, %call.i.1.37
  store i16 %sub.1.37, i16* %arrayidx9.1.37, align 2, !tbaa !3
  %add21.1.37 = add i16 %331, %call.i.1.37
  store i16 %add21.1.37, i16* %arrayidx11.1.37, align 2, !tbaa !3
  %arrayidx9.1.38 = getelementptr inbounds i16, i16* %r, i64 102
  %332 = load i16, i16* %arrayidx9.1.38, align 2, !tbaa !3
  %conv1.i.1.38 = sext i16 %332 to i32
  %mul.i.1.38 = mul nsw i32 %conv1.i.1.38, -359
  %call.i.1.38 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.38) #2
  %arrayidx11.1.38 = getelementptr inbounds i16, i16* %r, i64 38
  %333 = load i16, i16* %arrayidx11.1.38, align 2, !tbaa !3
  %sub.1.38 = sub i16 %333, %call.i.1.38
  store i16 %sub.1.38, i16* %arrayidx9.1.38, align 2, !tbaa !3
  %add21.1.38 = add i16 %333, %call.i.1.38
  store i16 %add21.1.38, i16* %arrayidx11.1.38, align 2, !tbaa !3
  %arrayidx9.1.39 = getelementptr inbounds i16, i16* %r, i64 103
  %334 = load i16, i16* %arrayidx9.1.39, align 2, !tbaa !3
  %conv1.i.1.39 = sext i16 %334 to i32
  %mul.i.1.39 = mul nsw i32 %conv1.i.1.39, -359
  %call.i.1.39 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.39) #2
  %arrayidx11.1.39 = getelementptr inbounds i16, i16* %r, i64 39
  %335 = load i16, i16* %arrayidx11.1.39, align 2, !tbaa !3
  %sub.1.39 = sub i16 %335, %call.i.1.39
  store i16 %sub.1.39, i16* %arrayidx9.1.39, align 2, !tbaa !3
  %add21.1.39 = add i16 %335, %call.i.1.39
  store i16 %add21.1.39, i16* %arrayidx11.1.39, align 2, !tbaa !3
  %arrayidx9.1.40 = getelementptr inbounds i16, i16* %r, i64 104
  %336 = load i16, i16* %arrayidx9.1.40, align 2, !tbaa !3
  %conv1.i.1.40 = sext i16 %336 to i32
  %mul.i.1.40 = mul nsw i32 %conv1.i.1.40, -359
  %call.i.1.40 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.40) #2
  %arrayidx11.1.40 = getelementptr inbounds i16, i16* %r, i64 40
  %337 = load i16, i16* %arrayidx11.1.40, align 2, !tbaa !3
  %sub.1.40 = sub i16 %337, %call.i.1.40
  store i16 %sub.1.40, i16* %arrayidx9.1.40, align 2, !tbaa !3
  %add21.1.40 = add i16 %337, %call.i.1.40
  store i16 %add21.1.40, i16* %arrayidx11.1.40, align 2, !tbaa !3
  %arrayidx9.1.41 = getelementptr inbounds i16, i16* %r, i64 105
  %338 = load i16, i16* %arrayidx9.1.41, align 2, !tbaa !3
  %conv1.i.1.41 = sext i16 %338 to i32
  %mul.i.1.41 = mul nsw i32 %conv1.i.1.41, -359
  %call.i.1.41 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.41) #2
  %arrayidx11.1.41 = getelementptr inbounds i16, i16* %r, i64 41
  %339 = load i16, i16* %arrayidx11.1.41, align 2, !tbaa !3
  %sub.1.41 = sub i16 %339, %call.i.1.41
  store i16 %sub.1.41, i16* %arrayidx9.1.41, align 2, !tbaa !3
  %add21.1.41 = add i16 %339, %call.i.1.41
  store i16 %add21.1.41, i16* %arrayidx11.1.41, align 2, !tbaa !3
  %arrayidx9.1.42 = getelementptr inbounds i16, i16* %r, i64 106
  %340 = load i16, i16* %arrayidx9.1.42, align 2, !tbaa !3
  %conv1.i.1.42 = sext i16 %340 to i32
  %mul.i.1.42 = mul nsw i32 %conv1.i.1.42, -359
  %call.i.1.42 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.42) #2
  %arrayidx11.1.42 = getelementptr inbounds i16, i16* %r, i64 42
  %341 = load i16, i16* %arrayidx11.1.42, align 2, !tbaa !3
  %sub.1.42 = sub i16 %341, %call.i.1.42
  store i16 %sub.1.42, i16* %arrayidx9.1.42, align 2, !tbaa !3
  %add21.1.42 = add i16 %341, %call.i.1.42
  store i16 %add21.1.42, i16* %arrayidx11.1.42, align 2, !tbaa !3
  %arrayidx9.1.43 = getelementptr inbounds i16, i16* %r, i64 107
  %342 = load i16, i16* %arrayidx9.1.43, align 2, !tbaa !3
  %conv1.i.1.43 = sext i16 %342 to i32
  %mul.i.1.43 = mul nsw i32 %conv1.i.1.43, -359
  %call.i.1.43 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.43) #2
  %arrayidx11.1.43 = getelementptr inbounds i16, i16* %r, i64 43
  %343 = load i16, i16* %arrayidx11.1.43, align 2, !tbaa !3
  %sub.1.43 = sub i16 %343, %call.i.1.43
  store i16 %sub.1.43, i16* %arrayidx9.1.43, align 2, !tbaa !3
  %add21.1.43 = add i16 %343, %call.i.1.43
  store i16 %add21.1.43, i16* %arrayidx11.1.43, align 2, !tbaa !3
  %arrayidx9.1.44 = getelementptr inbounds i16, i16* %r, i64 108
  %344 = load i16, i16* %arrayidx9.1.44, align 2, !tbaa !3
  %conv1.i.1.44 = sext i16 %344 to i32
  %mul.i.1.44 = mul nsw i32 %conv1.i.1.44, -359
  %call.i.1.44 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.44) #2
  %arrayidx11.1.44 = getelementptr inbounds i16, i16* %r, i64 44
  %345 = load i16, i16* %arrayidx11.1.44, align 2, !tbaa !3
  %sub.1.44 = sub i16 %345, %call.i.1.44
  store i16 %sub.1.44, i16* %arrayidx9.1.44, align 2, !tbaa !3
  %add21.1.44 = add i16 %345, %call.i.1.44
  store i16 %add21.1.44, i16* %arrayidx11.1.44, align 2, !tbaa !3
  %arrayidx9.1.45 = getelementptr inbounds i16, i16* %r, i64 109
  %346 = load i16, i16* %arrayidx9.1.45, align 2, !tbaa !3
  %conv1.i.1.45 = sext i16 %346 to i32
  %mul.i.1.45 = mul nsw i32 %conv1.i.1.45, -359
  %call.i.1.45 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.45) #2
  %arrayidx11.1.45 = getelementptr inbounds i16, i16* %r, i64 45
  %347 = load i16, i16* %arrayidx11.1.45, align 2, !tbaa !3
  %sub.1.45 = sub i16 %347, %call.i.1.45
  store i16 %sub.1.45, i16* %arrayidx9.1.45, align 2, !tbaa !3
  %add21.1.45 = add i16 %347, %call.i.1.45
  store i16 %add21.1.45, i16* %arrayidx11.1.45, align 2, !tbaa !3
  %arrayidx9.1.46 = getelementptr inbounds i16, i16* %r, i64 110
  %348 = load i16, i16* %arrayidx9.1.46, align 2, !tbaa !3
  %conv1.i.1.46 = sext i16 %348 to i32
  %mul.i.1.46 = mul nsw i32 %conv1.i.1.46, -359
  %call.i.1.46 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.46) #2
  %arrayidx11.1.46 = getelementptr inbounds i16, i16* %r, i64 46
  %349 = load i16, i16* %arrayidx11.1.46, align 2, !tbaa !3
  %sub.1.46 = sub i16 %349, %call.i.1.46
  store i16 %sub.1.46, i16* %arrayidx9.1.46, align 2, !tbaa !3
  %add21.1.46 = add i16 %349, %call.i.1.46
  store i16 %add21.1.46, i16* %arrayidx11.1.46, align 2, !tbaa !3
  %arrayidx9.1.47 = getelementptr inbounds i16, i16* %r, i64 111
  %350 = load i16, i16* %arrayidx9.1.47, align 2, !tbaa !3
  %conv1.i.1.47 = sext i16 %350 to i32
  %mul.i.1.47 = mul nsw i32 %conv1.i.1.47, -359
  %call.i.1.47 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.47) #2
  %arrayidx11.1.47 = getelementptr inbounds i16, i16* %r, i64 47
  %351 = load i16, i16* %arrayidx11.1.47, align 2, !tbaa !3
  %sub.1.47 = sub i16 %351, %call.i.1.47
  store i16 %sub.1.47, i16* %arrayidx9.1.47, align 2, !tbaa !3
  %add21.1.47 = add i16 %351, %call.i.1.47
  store i16 %add21.1.47, i16* %arrayidx11.1.47, align 2, !tbaa !3
  %arrayidx9.1.48 = getelementptr inbounds i16, i16* %r, i64 112
  %352 = load i16, i16* %arrayidx9.1.48, align 2, !tbaa !3
  %conv1.i.1.48 = sext i16 %352 to i32
  %mul.i.1.48 = mul nsw i32 %conv1.i.1.48, -359
  %call.i.1.48 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.48) #2
  %arrayidx11.1.48 = getelementptr inbounds i16, i16* %r, i64 48
  %353 = load i16, i16* %arrayidx11.1.48, align 2, !tbaa !3
  %sub.1.48 = sub i16 %353, %call.i.1.48
  store i16 %sub.1.48, i16* %arrayidx9.1.48, align 2, !tbaa !3
  %add21.1.48 = add i16 %353, %call.i.1.48
  store i16 %add21.1.48, i16* %arrayidx11.1.48, align 2, !tbaa !3
  %arrayidx9.1.49 = getelementptr inbounds i16, i16* %r, i64 113
  %354 = load i16, i16* %arrayidx9.1.49, align 2, !tbaa !3
  %conv1.i.1.49 = sext i16 %354 to i32
  %mul.i.1.49 = mul nsw i32 %conv1.i.1.49, -359
  %call.i.1.49 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.49) #2
  %arrayidx11.1.49 = getelementptr inbounds i16, i16* %r, i64 49
  %355 = load i16, i16* %arrayidx11.1.49, align 2, !tbaa !3
  %sub.1.49 = sub i16 %355, %call.i.1.49
  store i16 %sub.1.49, i16* %arrayidx9.1.49, align 2, !tbaa !3
  %add21.1.49 = add i16 %355, %call.i.1.49
  store i16 %add21.1.49, i16* %arrayidx11.1.49, align 2, !tbaa !3
  %arrayidx9.1.50 = getelementptr inbounds i16, i16* %r, i64 114
  %356 = load i16, i16* %arrayidx9.1.50, align 2, !tbaa !3
  %conv1.i.1.50 = sext i16 %356 to i32
  %mul.i.1.50 = mul nsw i32 %conv1.i.1.50, -359
  %call.i.1.50 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.50) #2
  %arrayidx11.1.50 = getelementptr inbounds i16, i16* %r, i64 50
  %357 = load i16, i16* %arrayidx11.1.50, align 2, !tbaa !3
  %sub.1.50 = sub i16 %357, %call.i.1.50
  store i16 %sub.1.50, i16* %arrayidx9.1.50, align 2, !tbaa !3
  %add21.1.50 = add i16 %357, %call.i.1.50
  store i16 %add21.1.50, i16* %arrayidx11.1.50, align 2, !tbaa !3
  %arrayidx9.1.51 = getelementptr inbounds i16, i16* %r, i64 115
  %358 = load i16, i16* %arrayidx9.1.51, align 2, !tbaa !3
  %conv1.i.1.51 = sext i16 %358 to i32
  %mul.i.1.51 = mul nsw i32 %conv1.i.1.51, -359
  %call.i.1.51 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.51) #2
  %arrayidx11.1.51 = getelementptr inbounds i16, i16* %r, i64 51
  %359 = load i16, i16* %arrayidx11.1.51, align 2, !tbaa !3
  %sub.1.51 = sub i16 %359, %call.i.1.51
  store i16 %sub.1.51, i16* %arrayidx9.1.51, align 2, !tbaa !3
  %add21.1.51 = add i16 %359, %call.i.1.51
  store i16 %add21.1.51, i16* %arrayidx11.1.51, align 2, !tbaa !3
  %arrayidx9.1.52 = getelementptr inbounds i16, i16* %r, i64 116
  %360 = load i16, i16* %arrayidx9.1.52, align 2, !tbaa !3
  %conv1.i.1.52 = sext i16 %360 to i32
  %mul.i.1.52 = mul nsw i32 %conv1.i.1.52, -359
  %call.i.1.52 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.52) #2
  %arrayidx11.1.52 = getelementptr inbounds i16, i16* %r, i64 52
  %361 = load i16, i16* %arrayidx11.1.52, align 2, !tbaa !3
  %sub.1.52 = sub i16 %361, %call.i.1.52
  store i16 %sub.1.52, i16* %arrayidx9.1.52, align 2, !tbaa !3
  %add21.1.52 = add i16 %361, %call.i.1.52
  store i16 %add21.1.52, i16* %arrayidx11.1.52, align 2, !tbaa !3
  %arrayidx9.1.53 = getelementptr inbounds i16, i16* %r, i64 117
  %362 = load i16, i16* %arrayidx9.1.53, align 2, !tbaa !3
  %conv1.i.1.53 = sext i16 %362 to i32
  %mul.i.1.53 = mul nsw i32 %conv1.i.1.53, -359
  %call.i.1.53 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.53) #2
  %arrayidx11.1.53 = getelementptr inbounds i16, i16* %r, i64 53
  %363 = load i16, i16* %arrayidx11.1.53, align 2, !tbaa !3
  %sub.1.53 = sub i16 %363, %call.i.1.53
  store i16 %sub.1.53, i16* %arrayidx9.1.53, align 2, !tbaa !3
  %add21.1.53 = add i16 %363, %call.i.1.53
  store i16 %add21.1.53, i16* %arrayidx11.1.53, align 2, !tbaa !3
  %arrayidx9.1.54 = getelementptr inbounds i16, i16* %r, i64 118
  %364 = load i16, i16* %arrayidx9.1.54, align 2, !tbaa !3
  %conv1.i.1.54 = sext i16 %364 to i32
  %mul.i.1.54 = mul nsw i32 %conv1.i.1.54, -359
  %call.i.1.54 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.54) #2
  %arrayidx11.1.54 = getelementptr inbounds i16, i16* %r, i64 54
  %365 = load i16, i16* %arrayidx11.1.54, align 2, !tbaa !3
  %sub.1.54 = sub i16 %365, %call.i.1.54
  store i16 %sub.1.54, i16* %arrayidx9.1.54, align 2, !tbaa !3
  %add21.1.54 = add i16 %365, %call.i.1.54
  store i16 %add21.1.54, i16* %arrayidx11.1.54, align 2, !tbaa !3
  %arrayidx9.1.55 = getelementptr inbounds i16, i16* %r, i64 119
  %366 = load i16, i16* %arrayidx9.1.55, align 2, !tbaa !3
  %conv1.i.1.55 = sext i16 %366 to i32
  %mul.i.1.55 = mul nsw i32 %conv1.i.1.55, -359
  %call.i.1.55 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.55) #2
  %arrayidx11.1.55 = getelementptr inbounds i16, i16* %r, i64 55
  %367 = load i16, i16* %arrayidx11.1.55, align 2, !tbaa !3
  %sub.1.55 = sub i16 %367, %call.i.1.55
  store i16 %sub.1.55, i16* %arrayidx9.1.55, align 2, !tbaa !3
  %add21.1.55 = add i16 %367, %call.i.1.55
  store i16 %add21.1.55, i16* %arrayidx11.1.55, align 2, !tbaa !3
  %arrayidx9.1.56 = getelementptr inbounds i16, i16* %r, i64 120
  %368 = load i16, i16* %arrayidx9.1.56, align 2, !tbaa !3
  %conv1.i.1.56 = sext i16 %368 to i32
  %mul.i.1.56 = mul nsw i32 %conv1.i.1.56, -359
  %call.i.1.56 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.56) #2
  %arrayidx11.1.56 = getelementptr inbounds i16, i16* %r, i64 56
  %369 = load i16, i16* %arrayidx11.1.56, align 2, !tbaa !3
  %sub.1.56 = sub i16 %369, %call.i.1.56
  store i16 %sub.1.56, i16* %arrayidx9.1.56, align 2, !tbaa !3
  %add21.1.56 = add i16 %369, %call.i.1.56
  store i16 %add21.1.56, i16* %arrayidx11.1.56, align 2, !tbaa !3
  %arrayidx9.1.57 = getelementptr inbounds i16, i16* %r, i64 121
  %370 = load i16, i16* %arrayidx9.1.57, align 2, !tbaa !3
  %conv1.i.1.57 = sext i16 %370 to i32
  %mul.i.1.57 = mul nsw i32 %conv1.i.1.57, -359
  %call.i.1.57 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.57) #2
  %arrayidx11.1.57 = getelementptr inbounds i16, i16* %r, i64 57
  %371 = load i16, i16* %arrayidx11.1.57, align 2, !tbaa !3
  %sub.1.57 = sub i16 %371, %call.i.1.57
  store i16 %sub.1.57, i16* %arrayidx9.1.57, align 2, !tbaa !3
  %add21.1.57 = add i16 %371, %call.i.1.57
  store i16 %add21.1.57, i16* %arrayidx11.1.57, align 2, !tbaa !3
  %arrayidx9.1.58 = getelementptr inbounds i16, i16* %r, i64 122
  %372 = load i16, i16* %arrayidx9.1.58, align 2, !tbaa !3
  %conv1.i.1.58 = sext i16 %372 to i32
  %mul.i.1.58 = mul nsw i32 %conv1.i.1.58, -359
  %call.i.1.58 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.58) #2
  %arrayidx11.1.58 = getelementptr inbounds i16, i16* %r, i64 58
  %373 = load i16, i16* %arrayidx11.1.58, align 2, !tbaa !3
  %sub.1.58 = sub i16 %373, %call.i.1.58
  store i16 %sub.1.58, i16* %arrayidx9.1.58, align 2, !tbaa !3
  %add21.1.58 = add i16 %373, %call.i.1.58
  store i16 %add21.1.58, i16* %arrayidx11.1.58, align 2, !tbaa !3
  %arrayidx9.1.59 = getelementptr inbounds i16, i16* %r, i64 123
  %374 = load i16, i16* %arrayidx9.1.59, align 2, !tbaa !3
  %conv1.i.1.59 = sext i16 %374 to i32
  %mul.i.1.59 = mul nsw i32 %conv1.i.1.59, -359
  %call.i.1.59 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.59) #2
  %arrayidx11.1.59 = getelementptr inbounds i16, i16* %r, i64 59
  %375 = load i16, i16* %arrayidx11.1.59, align 2, !tbaa !3
  %sub.1.59 = sub i16 %375, %call.i.1.59
  store i16 %sub.1.59, i16* %arrayidx9.1.59, align 2, !tbaa !3
  %add21.1.59 = add i16 %375, %call.i.1.59
  store i16 %add21.1.59, i16* %arrayidx11.1.59, align 2, !tbaa !3
  %arrayidx9.1.60 = getelementptr inbounds i16, i16* %r, i64 124
  %376 = load i16, i16* %arrayidx9.1.60, align 2, !tbaa !3
  %conv1.i.1.60 = sext i16 %376 to i32
  %mul.i.1.60 = mul nsw i32 %conv1.i.1.60, -359
  %call.i.1.60 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.60) #2
  %arrayidx11.1.60 = getelementptr inbounds i16, i16* %r, i64 60
  %377 = load i16, i16* %arrayidx11.1.60, align 2, !tbaa !3
  %sub.1.60 = sub i16 %377, %call.i.1.60
  store i16 %sub.1.60, i16* %arrayidx9.1.60, align 2, !tbaa !3
  %add21.1.60 = add i16 %377, %call.i.1.60
  store i16 %add21.1.60, i16* %arrayidx11.1.60, align 2, !tbaa !3
  %arrayidx9.1.61 = getelementptr inbounds i16, i16* %r, i64 125
  %378 = load i16, i16* %arrayidx9.1.61, align 2, !tbaa !3
  %conv1.i.1.61 = sext i16 %378 to i32
  %mul.i.1.61 = mul nsw i32 %conv1.i.1.61, -359
  %call.i.1.61 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.61) #2
  %arrayidx11.1.61 = getelementptr inbounds i16, i16* %r, i64 61
  %379 = load i16, i16* %arrayidx11.1.61, align 2, !tbaa !3
  %sub.1.61 = sub i16 %379, %call.i.1.61
  store i16 %sub.1.61, i16* %arrayidx9.1.61, align 2, !tbaa !3
  %add21.1.61 = add i16 %379, %call.i.1.61
  store i16 %add21.1.61, i16* %arrayidx11.1.61, align 2, !tbaa !3
  %arrayidx9.1.62 = getelementptr inbounds i16, i16* %r, i64 126
  %380 = load i16, i16* %arrayidx9.1.62, align 2, !tbaa !3
  %conv1.i.1.62 = sext i16 %380 to i32
  %mul.i.1.62 = mul nsw i32 %conv1.i.1.62, -359
  %call.i.1.62 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.62) #2
  %arrayidx11.1.62 = getelementptr inbounds i16, i16* %r, i64 62
  %381 = load i16, i16* %arrayidx11.1.62, align 2, !tbaa !3
  %sub.1.62 = sub i16 %381, %call.i.1.62
  store i16 %sub.1.62, i16* %arrayidx9.1.62, align 2, !tbaa !3
  %add21.1.62 = add i16 %381, %call.i.1.62
  store i16 %add21.1.62, i16* %arrayidx11.1.62, align 2, !tbaa !3
  %arrayidx9.1.63 = getelementptr inbounds i16, i16* %r, i64 127
  %382 = load i16, i16* %arrayidx9.1.63, align 2, !tbaa !3
  %conv1.i.1.63 = sext i16 %382 to i32
  %mul.i.1.63 = mul nsw i32 %conv1.i.1.63, -359
  %call.i.1.63 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.63) #2
  %arrayidx11.1.63 = getelementptr inbounds i16, i16* %r, i64 63
  %383 = load i16, i16* %arrayidx11.1.63, align 2, !tbaa !3
  %sub.1.63 = sub i16 %383, %call.i.1.63
  store i16 %sub.1.63, i16* %arrayidx9.1.63, align 2, !tbaa !3
  %add21.1.63 = add i16 %383, %call.i.1.63
  store i16 %add21.1.63, i16* %arrayidx11.1.63, align 2, !tbaa !3
  %arrayidx9.1.1278 = getelementptr inbounds i16, i16* %r, i64 192
  %384 = load i16, i16* %arrayidx9.1.1278, align 2, !tbaa !3
  %conv1.i.1.1279 = sext i16 %384 to i32
  %mul.i.1.1280 = mul nsw i32 %conv1.i.1.1279, -1517
  %call.i.1.1281 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.1280) #2
  %arrayidx11.1.1282 = getelementptr inbounds i16, i16* %r, i64 128
  %385 = load i16, i16* %arrayidx11.1.1282, align 2, !tbaa !3
  %sub.1.1283 = sub i16 %385, %call.i.1.1281
  store i16 %sub.1.1283, i16* %arrayidx9.1.1278, align 2, !tbaa !3
  %add21.1.1284 = add i16 %385, %call.i.1.1281
  store i16 %add21.1.1284, i16* %arrayidx11.1.1282, align 2, !tbaa !3
  %arrayidx9.1.1.1 = getelementptr inbounds i16, i16* %r, i64 193
  %386 = load i16, i16* %arrayidx9.1.1.1, align 2, !tbaa !3
  %conv1.i.1.1.1 = sext i16 %386 to i32
  %mul.i.1.1.1 = mul nsw i32 %conv1.i.1.1.1, -1517
  %call.i.1.1.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.1.1) #2
  %arrayidx11.1.1.1 = getelementptr inbounds i16, i16* %r, i64 129
  %387 = load i16, i16* %arrayidx11.1.1.1, align 2, !tbaa !3
  %sub.1.1.1 = sub i16 %387, %call.i.1.1.1
  store i16 %sub.1.1.1, i16* %arrayidx9.1.1.1, align 2, !tbaa !3
  %add21.1.1.1 = add i16 %387, %call.i.1.1.1
  store i16 %add21.1.1.1, i16* %arrayidx11.1.1.1, align 2, !tbaa !3
  %arrayidx9.1.2.1 = getelementptr inbounds i16, i16* %r, i64 194
  %388 = load i16, i16* %arrayidx9.1.2.1, align 2, !tbaa !3
  %conv1.i.1.2.1 = sext i16 %388 to i32
  %mul.i.1.2.1 = mul nsw i32 %conv1.i.1.2.1, -1517
  %call.i.1.2.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.2.1) #2
  %arrayidx11.1.2.1 = getelementptr inbounds i16, i16* %r, i64 130
  %389 = load i16, i16* %arrayidx11.1.2.1, align 2, !tbaa !3
  %sub.1.2.1 = sub i16 %389, %call.i.1.2.1
  store i16 %sub.1.2.1, i16* %arrayidx9.1.2.1, align 2, !tbaa !3
  %add21.1.2.1 = add i16 %389, %call.i.1.2.1
  store i16 %add21.1.2.1, i16* %arrayidx11.1.2.1, align 2, !tbaa !3
  %arrayidx9.1.3.1 = getelementptr inbounds i16, i16* %r, i64 195
  %390 = load i16, i16* %arrayidx9.1.3.1, align 2, !tbaa !3
  %conv1.i.1.3.1 = sext i16 %390 to i32
  %mul.i.1.3.1 = mul nsw i32 %conv1.i.1.3.1, -1517
  %call.i.1.3.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.3.1) #2
  %arrayidx11.1.3.1 = getelementptr inbounds i16, i16* %r, i64 131
  %391 = load i16, i16* %arrayidx11.1.3.1, align 2, !tbaa !3
  %sub.1.3.1 = sub i16 %391, %call.i.1.3.1
  store i16 %sub.1.3.1, i16* %arrayidx9.1.3.1, align 2, !tbaa !3
  %add21.1.3.1 = add i16 %391, %call.i.1.3.1
  store i16 %add21.1.3.1, i16* %arrayidx11.1.3.1, align 2, !tbaa !3
  %arrayidx9.1.4.1 = getelementptr inbounds i16, i16* %r, i64 196
  %392 = load i16, i16* %arrayidx9.1.4.1, align 2, !tbaa !3
  %conv1.i.1.4.1 = sext i16 %392 to i32
  %mul.i.1.4.1 = mul nsw i32 %conv1.i.1.4.1, -1517
  %call.i.1.4.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.4.1) #2
  %arrayidx11.1.4.1 = getelementptr inbounds i16, i16* %r, i64 132
  %393 = load i16, i16* %arrayidx11.1.4.1, align 2, !tbaa !3
  %sub.1.4.1 = sub i16 %393, %call.i.1.4.1
  store i16 %sub.1.4.1, i16* %arrayidx9.1.4.1, align 2, !tbaa !3
  %add21.1.4.1 = add i16 %393, %call.i.1.4.1
  store i16 %add21.1.4.1, i16* %arrayidx11.1.4.1, align 2, !tbaa !3
  %arrayidx9.1.5.1 = getelementptr inbounds i16, i16* %r, i64 197
  %394 = load i16, i16* %arrayidx9.1.5.1, align 2, !tbaa !3
  %conv1.i.1.5.1 = sext i16 %394 to i32
  %mul.i.1.5.1 = mul nsw i32 %conv1.i.1.5.1, -1517
  %call.i.1.5.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.5.1) #2
  %arrayidx11.1.5.1 = getelementptr inbounds i16, i16* %r, i64 133
  %395 = load i16, i16* %arrayidx11.1.5.1, align 2, !tbaa !3
  %sub.1.5.1 = sub i16 %395, %call.i.1.5.1
  store i16 %sub.1.5.1, i16* %arrayidx9.1.5.1, align 2, !tbaa !3
  %add21.1.5.1 = add i16 %395, %call.i.1.5.1
  store i16 %add21.1.5.1, i16* %arrayidx11.1.5.1, align 2, !tbaa !3
  %arrayidx9.1.6.1 = getelementptr inbounds i16, i16* %r, i64 198
  %396 = load i16, i16* %arrayidx9.1.6.1, align 2, !tbaa !3
  %conv1.i.1.6.1 = sext i16 %396 to i32
  %mul.i.1.6.1 = mul nsw i32 %conv1.i.1.6.1, -1517
  %call.i.1.6.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.6.1) #2
  %arrayidx11.1.6.1 = getelementptr inbounds i16, i16* %r, i64 134
  %397 = load i16, i16* %arrayidx11.1.6.1, align 2, !tbaa !3
  %sub.1.6.1 = sub i16 %397, %call.i.1.6.1
  store i16 %sub.1.6.1, i16* %arrayidx9.1.6.1, align 2, !tbaa !3
  %add21.1.6.1 = add i16 %397, %call.i.1.6.1
  store i16 %add21.1.6.1, i16* %arrayidx11.1.6.1, align 2, !tbaa !3
  %arrayidx9.1.7.1 = getelementptr inbounds i16, i16* %r, i64 199
  %398 = load i16, i16* %arrayidx9.1.7.1, align 2, !tbaa !3
  %conv1.i.1.7.1 = sext i16 %398 to i32
  %mul.i.1.7.1 = mul nsw i32 %conv1.i.1.7.1, -1517
  %call.i.1.7.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.7.1) #2
  %arrayidx11.1.7.1 = getelementptr inbounds i16, i16* %r, i64 135
  %399 = load i16, i16* %arrayidx11.1.7.1, align 2, !tbaa !3
  %sub.1.7.1 = sub i16 %399, %call.i.1.7.1
  store i16 %sub.1.7.1, i16* %arrayidx9.1.7.1, align 2, !tbaa !3
  %add21.1.7.1 = add i16 %399, %call.i.1.7.1
  store i16 %add21.1.7.1, i16* %arrayidx11.1.7.1, align 2, !tbaa !3
  %arrayidx9.1.8.1 = getelementptr inbounds i16, i16* %r, i64 200
  %400 = load i16, i16* %arrayidx9.1.8.1, align 2, !tbaa !3
  %conv1.i.1.8.1 = sext i16 %400 to i32
  %mul.i.1.8.1 = mul nsw i32 %conv1.i.1.8.1, -1517
  %call.i.1.8.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.8.1) #2
  %arrayidx11.1.8.1 = getelementptr inbounds i16, i16* %r, i64 136
  %401 = load i16, i16* %arrayidx11.1.8.1, align 2, !tbaa !3
  %sub.1.8.1 = sub i16 %401, %call.i.1.8.1
  store i16 %sub.1.8.1, i16* %arrayidx9.1.8.1, align 2, !tbaa !3
  %add21.1.8.1 = add i16 %401, %call.i.1.8.1
  store i16 %add21.1.8.1, i16* %arrayidx11.1.8.1, align 2, !tbaa !3
  %arrayidx9.1.9.1 = getelementptr inbounds i16, i16* %r, i64 201
  %402 = load i16, i16* %arrayidx9.1.9.1, align 2, !tbaa !3
  %conv1.i.1.9.1 = sext i16 %402 to i32
  %mul.i.1.9.1 = mul nsw i32 %conv1.i.1.9.1, -1517
  %call.i.1.9.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.9.1) #2
  %arrayidx11.1.9.1 = getelementptr inbounds i16, i16* %r, i64 137
  %403 = load i16, i16* %arrayidx11.1.9.1, align 2, !tbaa !3
  %sub.1.9.1 = sub i16 %403, %call.i.1.9.1
  store i16 %sub.1.9.1, i16* %arrayidx9.1.9.1, align 2, !tbaa !3
  %add21.1.9.1 = add i16 %403, %call.i.1.9.1
  store i16 %add21.1.9.1, i16* %arrayidx11.1.9.1, align 2, !tbaa !3
  %arrayidx9.1.10.1 = getelementptr inbounds i16, i16* %r, i64 202
  %404 = load i16, i16* %arrayidx9.1.10.1, align 2, !tbaa !3
  %conv1.i.1.10.1 = sext i16 %404 to i32
  %mul.i.1.10.1 = mul nsw i32 %conv1.i.1.10.1, -1517
  %call.i.1.10.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.10.1) #2
  %arrayidx11.1.10.1 = getelementptr inbounds i16, i16* %r, i64 138
  %405 = load i16, i16* %arrayidx11.1.10.1, align 2, !tbaa !3
  %sub.1.10.1 = sub i16 %405, %call.i.1.10.1
  store i16 %sub.1.10.1, i16* %arrayidx9.1.10.1, align 2, !tbaa !3
  %add21.1.10.1 = add i16 %405, %call.i.1.10.1
  store i16 %add21.1.10.1, i16* %arrayidx11.1.10.1, align 2, !tbaa !3
  %arrayidx9.1.11.1 = getelementptr inbounds i16, i16* %r, i64 203
  %406 = load i16, i16* %arrayidx9.1.11.1, align 2, !tbaa !3
  %conv1.i.1.11.1 = sext i16 %406 to i32
  %mul.i.1.11.1 = mul nsw i32 %conv1.i.1.11.1, -1517
  %call.i.1.11.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.11.1) #2
  %arrayidx11.1.11.1 = getelementptr inbounds i16, i16* %r, i64 139
  %407 = load i16, i16* %arrayidx11.1.11.1, align 2, !tbaa !3
  %sub.1.11.1 = sub i16 %407, %call.i.1.11.1
  store i16 %sub.1.11.1, i16* %arrayidx9.1.11.1, align 2, !tbaa !3
  %add21.1.11.1 = add i16 %407, %call.i.1.11.1
  store i16 %add21.1.11.1, i16* %arrayidx11.1.11.1, align 2, !tbaa !3
  %arrayidx9.1.12.1 = getelementptr inbounds i16, i16* %r, i64 204
  %408 = load i16, i16* %arrayidx9.1.12.1, align 2, !tbaa !3
  %conv1.i.1.12.1 = sext i16 %408 to i32
  %mul.i.1.12.1 = mul nsw i32 %conv1.i.1.12.1, -1517
  %call.i.1.12.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.12.1) #2
  %arrayidx11.1.12.1 = getelementptr inbounds i16, i16* %r, i64 140
  %409 = load i16, i16* %arrayidx11.1.12.1, align 2, !tbaa !3
  %sub.1.12.1 = sub i16 %409, %call.i.1.12.1
  store i16 %sub.1.12.1, i16* %arrayidx9.1.12.1, align 2, !tbaa !3
  %add21.1.12.1 = add i16 %409, %call.i.1.12.1
  store i16 %add21.1.12.1, i16* %arrayidx11.1.12.1, align 2, !tbaa !3
  %arrayidx9.1.13.1 = getelementptr inbounds i16, i16* %r, i64 205
  %410 = load i16, i16* %arrayidx9.1.13.1, align 2, !tbaa !3
  %conv1.i.1.13.1 = sext i16 %410 to i32
  %mul.i.1.13.1 = mul nsw i32 %conv1.i.1.13.1, -1517
  %call.i.1.13.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.13.1) #2
  %arrayidx11.1.13.1 = getelementptr inbounds i16, i16* %r, i64 141
  %411 = load i16, i16* %arrayidx11.1.13.1, align 2, !tbaa !3
  %sub.1.13.1 = sub i16 %411, %call.i.1.13.1
  store i16 %sub.1.13.1, i16* %arrayidx9.1.13.1, align 2, !tbaa !3
  %add21.1.13.1 = add i16 %411, %call.i.1.13.1
  store i16 %add21.1.13.1, i16* %arrayidx11.1.13.1, align 2, !tbaa !3
  %arrayidx9.1.14.1 = getelementptr inbounds i16, i16* %r, i64 206
  %412 = load i16, i16* %arrayidx9.1.14.1, align 2, !tbaa !3
  %conv1.i.1.14.1 = sext i16 %412 to i32
  %mul.i.1.14.1 = mul nsw i32 %conv1.i.1.14.1, -1517
  %call.i.1.14.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.14.1) #2
  %arrayidx11.1.14.1 = getelementptr inbounds i16, i16* %r, i64 142
  %413 = load i16, i16* %arrayidx11.1.14.1, align 2, !tbaa !3
  %sub.1.14.1 = sub i16 %413, %call.i.1.14.1
  store i16 %sub.1.14.1, i16* %arrayidx9.1.14.1, align 2, !tbaa !3
  %add21.1.14.1 = add i16 %413, %call.i.1.14.1
  store i16 %add21.1.14.1, i16* %arrayidx11.1.14.1, align 2, !tbaa !3
  %arrayidx9.1.15.1 = getelementptr inbounds i16, i16* %r, i64 207
  %414 = load i16, i16* %arrayidx9.1.15.1, align 2, !tbaa !3
  %conv1.i.1.15.1 = sext i16 %414 to i32
  %mul.i.1.15.1 = mul nsw i32 %conv1.i.1.15.1, -1517
  %call.i.1.15.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.15.1) #2
  %arrayidx11.1.15.1 = getelementptr inbounds i16, i16* %r, i64 143
  %415 = load i16, i16* %arrayidx11.1.15.1, align 2, !tbaa !3
  %sub.1.15.1 = sub i16 %415, %call.i.1.15.1
  store i16 %sub.1.15.1, i16* %arrayidx9.1.15.1, align 2, !tbaa !3
  %add21.1.15.1 = add i16 %415, %call.i.1.15.1
  store i16 %add21.1.15.1, i16* %arrayidx11.1.15.1, align 2, !tbaa !3
  %arrayidx9.1.16.1 = getelementptr inbounds i16, i16* %r, i64 208
  %416 = load i16, i16* %arrayidx9.1.16.1, align 2, !tbaa !3
  %conv1.i.1.16.1 = sext i16 %416 to i32
  %mul.i.1.16.1 = mul nsw i32 %conv1.i.1.16.1, -1517
  %call.i.1.16.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.16.1) #2
  %arrayidx11.1.16.1 = getelementptr inbounds i16, i16* %r, i64 144
  %417 = load i16, i16* %arrayidx11.1.16.1, align 2, !tbaa !3
  %sub.1.16.1 = sub i16 %417, %call.i.1.16.1
  store i16 %sub.1.16.1, i16* %arrayidx9.1.16.1, align 2, !tbaa !3
  %add21.1.16.1 = add i16 %417, %call.i.1.16.1
  store i16 %add21.1.16.1, i16* %arrayidx11.1.16.1, align 2, !tbaa !3
  %arrayidx9.1.17.1 = getelementptr inbounds i16, i16* %r, i64 209
  %418 = load i16, i16* %arrayidx9.1.17.1, align 2, !tbaa !3
  %conv1.i.1.17.1 = sext i16 %418 to i32
  %mul.i.1.17.1 = mul nsw i32 %conv1.i.1.17.1, -1517
  %call.i.1.17.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.17.1) #2
  %arrayidx11.1.17.1 = getelementptr inbounds i16, i16* %r, i64 145
  %419 = load i16, i16* %arrayidx11.1.17.1, align 2, !tbaa !3
  %sub.1.17.1 = sub i16 %419, %call.i.1.17.1
  store i16 %sub.1.17.1, i16* %arrayidx9.1.17.1, align 2, !tbaa !3
  %add21.1.17.1 = add i16 %419, %call.i.1.17.1
  store i16 %add21.1.17.1, i16* %arrayidx11.1.17.1, align 2, !tbaa !3
  %arrayidx9.1.18.1 = getelementptr inbounds i16, i16* %r, i64 210
  %420 = load i16, i16* %arrayidx9.1.18.1, align 2, !tbaa !3
  %conv1.i.1.18.1 = sext i16 %420 to i32
  %mul.i.1.18.1 = mul nsw i32 %conv1.i.1.18.1, -1517
  %call.i.1.18.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.18.1) #2
  %arrayidx11.1.18.1 = getelementptr inbounds i16, i16* %r, i64 146
  %421 = load i16, i16* %arrayidx11.1.18.1, align 2, !tbaa !3
  %sub.1.18.1 = sub i16 %421, %call.i.1.18.1
  store i16 %sub.1.18.1, i16* %arrayidx9.1.18.1, align 2, !tbaa !3
  %add21.1.18.1 = add i16 %421, %call.i.1.18.1
  store i16 %add21.1.18.1, i16* %arrayidx11.1.18.1, align 2, !tbaa !3
  %arrayidx9.1.19.1 = getelementptr inbounds i16, i16* %r, i64 211
  %422 = load i16, i16* %arrayidx9.1.19.1, align 2, !tbaa !3
  %conv1.i.1.19.1 = sext i16 %422 to i32
  %mul.i.1.19.1 = mul nsw i32 %conv1.i.1.19.1, -1517
  %call.i.1.19.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.19.1) #2
  %arrayidx11.1.19.1 = getelementptr inbounds i16, i16* %r, i64 147
  %423 = load i16, i16* %arrayidx11.1.19.1, align 2, !tbaa !3
  %sub.1.19.1 = sub i16 %423, %call.i.1.19.1
  store i16 %sub.1.19.1, i16* %arrayidx9.1.19.1, align 2, !tbaa !3
  %add21.1.19.1 = add i16 %423, %call.i.1.19.1
  store i16 %add21.1.19.1, i16* %arrayidx11.1.19.1, align 2, !tbaa !3
  %arrayidx9.1.20.1 = getelementptr inbounds i16, i16* %r, i64 212
  %424 = load i16, i16* %arrayidx9.1.20.1, align 2, !tbaa !3
  %conv1.i.1.20.1 = sext i16 %424 to i32
  %mul.i.1.20.1 = mul nsw i32 %conv1.i.1.20.1, -1517
  %call.i.1.20.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.20.1) #2
  %arrayidx11.1.20.1 = getelementptr inbounds i16, i16* %r, i64 148
  %425 = load i16, i16* %arrayidx11.1.20.1, align 2, !tbaa !3
  %sub.1.20.1 = sub i16 %425, %call.i.1.20.1
  store i16 %sub.1.20.1, i16* %arrayidx9.1.20.1, align 2, !tbaa !3
  %add21.1.20.1 = add i16 %425, %call.i.1.20.1
  store i16 %add21.1.20.1, i16* %arrayidx11.1.20.1, align 2, !tbaa !3
  %arrayidx9.1.21.1 = getelementptr inbounds i16, i16* %r, i64 213
  %426 = load i16, i16* %arrayidx9.1.21.1, align 2, !tbaa !3
  %conv1.i.1.21.1 = sext i16 %426 to i32
  %mul.i.1.21.1 = mul nsw i32 %conv1.i.1.21.1, -1517
  %call.i.1.21.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.21.1) #2
  %arrayidx11.1.21.1 = getelementptr inbounds i16, i16* %r, i64 149
  %427 = load i16, i16* %arrayidx11.1.21.1, align 2, !tbaa !3
  %sub.1.21.1 = sub i16 %427, %call.i.1.21.1
  store i16 %sub.1.21.1, i16* %arrayidx9.1.21.1, align 2, !tbaa !3
  %add21.1.21.1 = add i16 %427, %call.i.1.21.1
  store i16 %add21.1.21.1, i16* %arrayidx11.1.21.1, align 2, !tbaa !3
  %arrayidx9.1.22.1 = getelementptr inbounds i16, i16* %r, i64 214
  %428 = load i16, i16* %arrayidx9.1.22.1, align 2, !tbaa !3
  %conv1.i.1.22.1 = sext i16 %428 to i32
  %mul.i.1.22.1 = mul nsw i32 %conv1.i.1.22.1, -1517
  %call.i.1.22.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.22.1) #2
  %arrayidx11.1.22.1 = getelementptr inbounds i16, i16* %r, i64 150
  %429 = load i16, i16* %arrayidx11.1.22.1, align 2, !tbaa !3
  %sub.1.22.1 = sub i16 %429, %call.i.1.22.1
  store i16 %sub.1.22.1, i16* %arrayidx9.1.22.1, align 2, !tbaa !3
  %add21.1.22.1 = add i16 %429, %call.i.1.22.1
  store i16 %add21.1.22.1, i16* %arrayidx11.1.22.1, align 2, !tbaa !3
  %arrayidx9.1.23.1 = getelementptr inbounds i16, i16* %r, i64 215
  %430 = load i16, i16* %arrayidx9.1.23.1, align 2, !tbaa !3
  %conv1.i.1.23.1 = sext i16 %430 to i32
  %mul.i.1.23.1 = mul nsw i32 %conv1.i.1.23.1, -1517
  %call.i.1.23.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.23.1) #2
  %arrayidx11.1.23.1 = getelementptr inbounds i16, i16* %r, i64 151
  %431 = load i16, i16* %arrayidx11.1.23.1, align 2, !tbaa !3
  %sub.1.23.1 = sub i16 %431, %call.i.1.23.1
  store i16 %sub.1.23.1, i16* %arrayidx9.1.23.1, align 2, !tbaa !3
  %add21.1.23.1 = add i16 %431, %call.i.1.23.1
  store i16 %add21.1.23.1, i16* %arrayidx11.1.23.1, align 2, !tbaa !3
  %arrayidx9.1.24.1 = getelementptr inbounds i16, i16* %r, i64 216
  %432 = load i16, i16* %arrayidx9.1.24.1, align 2, !tbaa !3
  %conv1.i.1.24.1 = sext i16 %432 to i32
  %mul.i.1.24.1 = mul nsw i32 %conv1.i.1.24.1, -1517
  %call.i.1.24.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.24.1) #2
  %arrayidx11.1.24.1 = getelementptr inbounds i16, i16* %r, i64 152
  %433 = load i16, i16* %arrayidx11.1.24.1, align 2, !tbaa !3
  %sub.1.24.1 = sub i16 %433, %call.i.1.24.1
  store i16 %sub.1.24.1, i16* %arrayidx9.1.24.1, align 2, !tbaa !3
  %add21.1.24.1 = add i16 %433, %call.i.1.24.1
  store i16 %add21.1.24.1, i16* %arrayidx11.1.24.1, align 2, !tbaa !3
  %arrayidx9.1.25.1 = getelementptr inbounds i16, i16* %r, i64 217
  %434 = load i16, i16* %arrayidx9.1.25.1, align 2, !tbaa !3
  %conv1.i.1.25.1 = sext i16 %434 to i32
  %mul.i.1.25.1 = mul nsw i32 %conv1.i.1.25.1, -1517
  %call.i.1.25.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.25.1) #2
  %arrayidx11.1.25.1 = getelementptr inbounds i16, i16* %r, i64 153
  %435 = load i16, i16* %arrayidx11.1.25.1, align 2, !tbaa !3
  %sub.1.25.1 = sub i16 %435, %call.i.1.25.1
  store i16 %sub.1.25.1, i16* %arrayidx9.1.25.1, align 2, !tbaa !3
  %add21.1.25.1 = add i16 %435, %call.i.1.25.1
  store i16 %add21.1.25.1, i16* %arrayidx11.1.25.1, align 2, !tbaa !3
  %arrayidx9.1.26.1 = getelementptr inbounds i16, i16* %r, i64 218
  %436 = load i16, i16* %arrayidx9.1.26.1, align 2, !tbaa !3
  %conv1.i.1.26.1 = sext i16 %436 to i32
  %mul.i.1.26.1 = mul nsw i32 %conv1.i.1.26.1, -1517
  %call.i.1.26.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.26.1) #2
  %arrayidx11.1.26.1 = getelementptr inbounds i16, i16* %r, i64 154
  %437 = load i16, i16* %arrayidx11.1.26.1, align 2, !tbaa !3
  %sub.1.26.1 = sub i16 %437, %call.i.1.26.1
  store i16 %sub.1.26.1, i16* %arrayidx9.1.26.1, align 2, !tbaa !3
  %add21.1.26.1 = add i16 %437, %call.i.1.26.1
  store i16 %add21.1.26.1, i16* %arrayidx11.1.26.1, align 2, !tbaa !3
  %arrayidx9.1.27.1 = getelementptr inbounds i16, i16* %r, i64 219
  %438 = load i16, i16* %arrayidx9.1.27.1, align 2, !tbaa !3
  %conv1.i.1.27.1 = sext i16 %438 to i32
  %mul.i.1.27.1 = mul nsw i32 %conv1.i.1.27.1, -1517
  %call.i.1.27.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.27.1) #2
  %arrayidx11.1.27.1 = getelementptr inbounds i16, i16* %r, i64 155
  %439 = load i16, i16* %arrayidx11.1.27.1, align 2, !tbaa !3
  %sub.1.27.1 = sub i16 %439, %call.i.1.27.1
  store i16 %sub.1.27.1, i16* %arrayidx9.1.27.1, align 2, !tbaa !3
  %add21.1.27.1 = add i16 %439, %call.i.1.27.1
  store i16 %add21.1.27.1, i16* %arrayidx11.1.27.1, align 2, !tbaa !3
  %arrayidx9.1.28.1 = getelementptr inbounds i16, i16* %r, i64 220
  %440 = load i16, i16* %arrayidx9.1.28.1, align 2, !tbaa !3
  %conv1.i.1.28.1 = sext i16 %440 to i32
  %mul.i.1.28.1 = mul nsw i32 %conv1.i.1.28.1, -1517
  %call.i.1.28.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.28.1) #2
  %arrayidx11.1.28.1 = getelementptr inbounds i16, i16* %r, i64 156
  %441 = load i16, i16* %arrayidx11.1.28.1, align 2, !tbaa !3
  %sub.1.28.1 = sub i16 %441, %call.i.1.28.1
  store i16 %sub.1.28.1, i16* %arrayidx9.1.28.1, align 2, !tbaa !3
  %add21.1.28.1 = add i16 %441, %call.i.1.28.1
  store i16 %add21.1.28.1, i16* %arrayidx11.1.28.1, align 2, !tbaa !3
  %arrayidx9.1.29.1 = getelementptr inbounds i16, i16* %r, i64 221
  %442 = load i16, i16* %arrayidx9.1.29.1, align 2, !tbaa !3
  %conv1.i.1.29.1 = sext i16 %442 to i32
  %mul.i.1.29.1 = mul nsw i32 %conv1.i.1.29.1, -1517
  %call.i.1.29.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.29.1) #2
  %arrayidx11.1.29.1 = getelementptr inbounds i16, i16* %r, i64 157
  %443 = load i16, i16* %arrayidx11.1.29.1, align 2, !tbaa !3
  %sub.1.29.1 = sub i16 %443, %call.i.1.29.1
  store i16 %sub.1.29.1, i16* %arrayidx9.1.29.1, align 2, !tbaa !3
  %add21.1.29.1 = add i16 %443, %call.i.1.29.1
  store i16 %add21.1.29.1, i16* %arrayidx11.1.29.1, align 2, !tbaa !3
  %arrayidx9.1.30.1 = getelementptr inbounds i16, i16* %r, i64 222
  %444 = load i16, i16* %arrayidx9.1.30.1, align 2, !tbaa !3
  %conv1.i.1.30.1 = sext i16 %444 to i32
  %mul.i.1.30.1 = mul nsw i32 %conv1.i.1.30.1, -1517
  %call.i.1.30.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.30.1) #2
  %arrayidx11.1.30.1 = getelementptr inbounds i16, i16* %r, i64 158
  %445 = load i16, i16* %arrayidx11.1.30.1, align 2, !tbaa !3
  %sub.1.30.1 = sub i16 %445, %call.i.1.30.1
  store i16 %sub.1.30.1, i16* %arrayidx9.1.30.1, align 2, !tbaa !3
  %add21.1.30.1 = add i16 %445, %call.i.1.30.1
  store i16 %add21.1.30.1, i16* %arrayidx11.1.30.1, align 2, !tbaa !3
  %arrayidx9.1.31.1 = getelementptr inbounds i16, i16* %r, i64 223
  %446 = load i16, i16* %arrayidx9.1.31.1, align 2, !tbaa !3
  %conv1.i.1.31.1 = sext i16 %446 to i32
  %mul.i.1.31.1 = mul nsw i32 %conv1.i.1.31.1, -1517
  %call.i.1.31.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.31.1) #2
  %arrayidx11.1.31.1 = getelementptr inbounds i16, i16* %r, i64 159
  %447 = load i16, i16* %arrayidx11.1.31.1, align 2, !tbaa !3
  %sub.1.31.1 = sub i16 %447, %call.i.1.31.1
  store i16 %sub.1.31.1, i16* %arrayidx9.1.31.1, align 2, !tbaa !3
  %add21.1.31.1 = add i16 %447, %call.i.1.31.1
  store i16 %add21.1.31.1, i16* %arrayidx11.1.31.1, align 2, !tbaa !3
  %arrayidx9.1.32.1 = getelementptr inbounds i16, i16* %r, i64 224
  %448 = load i16, i16* %arrayidx9.1.32.1, align 2, !tbaa !3
  %conv1.i.1.32.1 = sext i16 %448 to i32
  %mul.i.1.32.1 = mul nsw i32 %conv1.i.1.32.1, -1517
  %call.i.1.32.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.32.1) #2
  %arrayidx11.1.32.1 = getelementptr inbounds i16, i16* %r, i64 160
  %449 = load i16, i16* %arrayidx11.1.32.1, align 2, !tbaa !3
  %sub.1.32.1 = sub i16 %449, %call.i.1.32.1
  store i16 %sub.1.32.1, i16* %arrayidx9.1.32.1, align 2, !tbaa !3
  %add21.1.32.1 = add i16 %449, %call.i.1.32.1
  store i16 %add21.1.32.1, i16* %arrayidx11.1.32.1, align 2, !tbaa !3
  %arrayidx9.1.33.1 = getelementptr inbounds i16, i16* %r, i64 225
  %450 = load i16, i16* %arrayidx9.1.33.1, align 2, !tbaa !3
  %conv1.i.1.33.1 = sext i16 %450 to i32
  %mul.i.1.33.1 = mul nsw i32 %conv1.i.1.33.1, -1517
  %call.i.1.33.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.33.1) #2
  %arrayidx11.1.33.1 = getelementptr inbounds i16, i16* %r, i64 161
  %451 = load i16, i16* %arrayidx11.1.33.1, align 2, !tbaa !3
  %sub.1.33.1 = sub i16 %451, %call.i.1.33.1
  store i16 %sub.1.33.1, i16* %arrayidx9.1.33.1, align 2, !tbaa !3
  %add21.1.33.1 = add i16 %451, %call.i.1.33.1
  store i16 %add21.1.33.1, i16* %arrayidx11.1.33.1, align 2, !tbaa !3
  %arrayidx9.1.34.1 = getelementptr inbounds i16, i16* %r, i64 226
  %452 = load i16, i16* %arrayidx9.1.34.1, align 2, !tbaa !3
  %conv1.i.1.34.1 = sext i16 %452 to i32
  %mul.i.1.34.1 = mul nsw i32 %conv1.i.1.34.1, -1517
  %call.i.1.34.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.34.1) #2
  %arrayidx11.1.34.1 = getelementptr inbounds i16, i16* %r, i64 162
  %453 = load i16, i16* %arrayidx11.1.34.1, align 2, !tbaa !3
  %sub.1.34.1 = sub i16 %453, %call.i.1.34.1
  store i16 %sub.1.34.1, i16* %arrayidx9.1.34.1, align 2, !tbaa !3
  %add21.1.34.1 = add i16 %453, %call.i.1.34.1
  store i16 %add21.1.34.1, i16* %arrayidx11.1.34.1, align 2, !tbaa !3
  %arrayidx9.1.35.1 = getelementptr inbounds i16, i16* %r, i64 227
  %454 = load i16, i16* %arrayidx9.1.35.1, align 2, !tbaa !3
  %conv1.i.1.35.1 = sext i16 %454 to i32
  %mul.i.1.35.1 = mul nsw i32 %conv1.i.1.35.1, -1517
  %call.i.1.35.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.35.1) #2
  %arrayidx11.1.35.1 = getelementptr inbounds i16, i16* %r, i64 163
  %455 = load i16, i16* %arrayidx11.1.35.1, align 2, !tbaa !3
  %sub.1.35.1 = sub i16 %455, %call.i.1.35.1
  store i16 %sub.1.35.1, i16* %arrayidx9.1.35.1, align 2, !tbaa !3
  %add21.1.35.1 = add i16 %455, %call.i.1.35.1
  store i16 %add21.1.35.1, i16* %arrayidx11.1.35.1, align 2, !tbaa !3
  %arrayidx9.1.36.1 = getelementptr inbounds i16, i16* %r, i64 228
  %456 = load i16, i16* %arrayidx9.1.36.1, align 2, !tbaa !3
  %conv1.i.1.36.1 = sext i16 %456 to i32
  %mul.i.1.36.1 = mul nsw i32 %conv1.i.1.36.1, -1517
  %call.i.1.36.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.36.1) #2
  %arrayidx11.1.36.1 = getelementptr inbounds i16, i16* %r, i64 164
  %457 = load i16, i16* %arrayidx11.1.36.1, align 2, !tbaa !3
  %sub.1.36.1 = sub i16 %457, %call.i.1.36.1
  store i16 %sub.1.36.1, i16* %arrayidx9.1.36.1, align 2, !tbaa !3
  %add21.1.36.1 = add i16 %457, %call.i.1.36.1
  store i16 %add21.1.36.1, i16* %arrayidx11.1.36.1, align 2, !tbaa !3
  %arrayidx9.1.37.1 = getelementptr inbounds i16, i16* %r, i64 229
  %458 = load i16, i16* %arrayidx9.1.37.1, align 2, !tbaa !3
  %conv1.i.1.37.1 = sext i16 %458 to i32
  %mul.i.1.37.1 = mul nsw i32 %conv1.i.1.37.1, -1517
  %call.i.1.37.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.37.1) #2
  %arrayidx11.1.37.1 = getelementptr inbounds i16, i16* %r, i64 165
  %459 = load i16, i16* %arrayidx11.1.37.1, align 2, !tbaa !3
  %sub.1.37.1 = sub i16 %459, %call.i.1.37.1
  store i16 %sub.1.37.1, i16* %arrayidx9.1.37.1, align 2, !tbaa !3
  %add21.1.37.1 = add i16 %459, %call.i.1.37.1
  store i16 %add21.1.37.1, i16* %arrayidx11.1.37.1, align 2, !tbaa !3
  %arrayidx9.1.38.1 = getelementptr inbounds i16, i16* %r, i64 230
  %460 = load i16, i16* %arrayidx9.1.38.1, align 2, !tbaa !3
  %conv1.i.1.38.1 = sext i16 %460 to i32
  %mul.i.1.38.1 = mul nsw i32 %conv1.i.1.38.1, -1517
  %call.i.1.38.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.38.1) #2
  %arrayidx11.1.38.1 = getelementptr inbounds i16, i16* %r, i64 166
  %461 = load i16, i16* %arrayidx11.1.38.1, align 2, !tbaa !3
  %sub.1.38.1 = sub i16 %461, %call.i.1.38.1
  store i16 %sub.1.38.1, i16* %arrayidx9.1.38.1, align 2, !tbaa !3
  %add21.1.38.1 = add i16 %461, %call.i.1.38.1
  store i16 %add21.1.38.1, i16* %arrayidx11.1.38.1, align 2, !tbaa !3
  %arrayidx9.1.39.1 = getelementptr inbounds i16, i16* %r, i64 231
  %462 = load i16, i16* %arrayidx9.1.39.1, align 2, !tbaa !3
  %conv1.i.1.39.1 = sext i16 %462 to i32
  %mul.i.1.39.1 = mul nsw i32 %conv1.i.1.39.1, -1517
  %call.i.1.39.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.39.1) #2
  %arrayidx11.1.39.1 = getelementptr inbounds i16, i16* %r, i64 167
  %463 = load i16, i16* %arrayidx11.1.39.1, align 2, !tbaa !3
  %sub.1.39.1 = sub i16 %463, %call.i.1.39.1
  store i16 %sub.1.39.1, i16* %arrayidx9.1.39.1, align 2, !tbaa !3
  %add21.1.39.1 = add i16 %463, %call.i.1.39.1
  store i16 %add21.1.39.1, i16* %arrayidx11.1.39.1, align 2, !tbaa !3
  %arrayidx9.1.40.1 = getelementptr inbounds i16, i16* %r, i64 232
  %464 = load i16, i16* %arrayidx9.1.40.1, align 2, !tbaa !3
  %conv1.i.1.40.1 = sext i16 %464 to i32
  %mul.i.1.40.1 = mul nsw i32 %conv1.i.1.40.1, -1517
  %call.i.1.40.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.40.1) #2
  %arrayidx11.1.40.1 = getelementptr inbounds i16, i16* %r, i64 168
  %465 = load i16, i16* %arrayidx11.1.40.1, align 2, !tbaa !3
  %sub.1.40.1 = sub i16 %465, %call.i.1.40.1
  store i16 %sub.1.40.1, i16* %arrayidx9.1.40.1, align 2, !tbaa !3
  %add21.1.40.1 = add i16 %465, %call.i.1.40.1
  store i16 %add21.1.40.1, i16* %arrayidx11.1.40.1, align 2, !tbaa !3
  %arrayidx9.1.41.1 = getelementptr inbounds i16, i16* %r, i64 233
  %466 = load i16, i16* %arrayidx9.1.41.1, align 2, !tbaa !3
  %conv1.i.1.41.1 = sext i16 %466 to i32
  %mul.i.1.41.1 = mul nsw i32 %conv1.i.1.41.1, -1517
  %call.i.1.41.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.41.1) #2
  %arrayidx11.1.41.1 = getelementptr inbounds i16, i16* %r, i64 169
  %467 = load i16, i16* %arrayidx11.1.41.1, align 2, !tbaa !3
  %sub.1.41.1 = sub i16 %467, %call.i.1.41.1
  store i16 %sub.1.41.1, i16* %arrayidx9.1.41.1, align 2, !tbaa !3
  %add21.1.41.1 = add i16 %467, %call.i.1.41.1
  store i16 %add21.1.41.1, i16* %arrayidx11.1.41.1, align 2, !tbaa !3
  %arrayidx9.1.42.1 = getelementptr inbounds i16, i16* %r, i64 234
  %468 = load i16, i16* %arrayidx9.1.42.1, align 2, !tbaa !3
  %conv1.i.1.42.1 = sext i16 %468 to i32
  %mul.i.1.42.1 = mul nsw i32 %conv1.i.1.42.1, -1517
  %call.i.1.42.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.42.1) #2
  %arrayidx11.1.42.1 = getelementptr inbounds i16, i16* %r, i64 170
  %469 = load i16, i16* %arrayidx11.1.42.1, align 2, !tbaa !3
  %sub.1.42.1 = sub i16 %469, %call.i.1.42.1
  store i16 %sub.1.42.1, i16* %arrayidx9.1.42.1, align 2, !tbaa !3
  %add21.1.42.1 = add i16 %469, %call.i.1.42.1
  store i16 %add21.1.42.1, i16* %arrayidx11.1.42.1, align 2, !tbaa !3
  %arrayidx9.1.43.1 = getelementptr inbounds i16, i16* %r, i64 235
  %470 = load i16, i16* %arrayidx9.1.43.1, align 2, !tbaa !3
  %conv1.i.1.43.1 = sext i16 %470 to i32
  %mul.i.1.43.1 = mul nsw i32 %conv1.i.1.43.1, -1517
  %call.i.1.43.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.43.1) #2
  %arrayidx11.1.43.1 = getelementptr inbounds i16, i16* %r, i64 171
  %471 = load i16, i16* %arrayidx11.1.43.1, align 2, !tbaa !3
  %sub.1.43.1 = sub i16 %471, %call.i.1.43.1
  store i16 %sub.1.43.1, i16* %arrayidx9.1.43.1, align 2, !tbaa !3
  %add21.1.43.1 = add i16 %471, %call.i.1.43.1
  store i16 %add21.1.43.1, i16* %arrayidx11.1.43.1, align 2, !tbaa !3
  %arrayidx9.1.44.1 = getelementptr inbounds i16, i16* %r, i64 236
  %472 = load i16, i16* %arrayidx9.1.44.1, align 2, !tbaa !3
  %conv1.i.1.44.1 = sext i16 %472 to i32
  %mul.i.1.44.1 = mul nsw i32 %conv1.i.1.44.1, -1517
  %call.i.1.44.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.44.1) #2
  %arrayidx11.1.44.1 = getelementptr inbounds i16, i16* %r, i64 172
  %473 = load i16, i16* %arrayidx11.1.44.1, align 2, !tbaa !3
  %sub.1.44.1 = sub i16 %473, %call.i.1.44.1
  store i16 %sub.1.44.1, i16* %arrayidx9.1.44.1, align 2, !tbaa !3
  %add21.1.44.1 = add i16 %473, %call.i.1.44.1
  store i16 %add21.1.44.1, i16* %arrayidx11.1.44.1, align 2, !tbaa !3
  %arrayidx9.1.45.1 = getelementptr inbounds i16, i16* %r, i64 237
  %474 = load i16, i16* %arrayidx9.1.45.1, align 2, !tbaa !3
  %conv1.i.1.45.1 = sext i16 %474 to i32
  %mul.i.1.45.1 = mul nsw i32 %conv1.i.1.45.1, -1517
  %call.i.1.45.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.45.1) #2
  %arrayidx11.1.45.1 = getelementptr inbounds i16, i16* %r, i64 173
  %475 = load i16, i16* %arrayidx11.1.45.1, align 2, !tbaa !3
  %sub.1.45.1 = sub i16 %475, %call.i.1.45.1
  store i16 %sub.1.45.1, i16* %arrayidx9.1.45.1, align 2, !tbaa !3
  %add21.1.45.1 = add i16 %475, %call.i.1.45.1
  store i16 %add21.1.45.1, i16* %arrayidx11.1.45.1, align 2, !tbaa !3
  %arrayidx9.1.46.1 = getelementptr inbounds i16, i16* %r, i64 238
  %476 = load i16, i16* %arrayidx9.1.46.1, align 2, !tbaa !3
  %conv1.i.1.46.1 = sext i16 %476 to i32
  %mul.i.1.46.1 = mul nsw i32 %conv1.i.1.46.1, -1517
  %call.i.1.46.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.46.1) #2
  %arrayidx11.1.46.1 = getelementptr inbounds i16, i16* %r, i64 174
  %477 = load i16, i16* %arrayidx11.1.46.1, align 2, !tbaa !3
  %sub.1.46.1 = sub i16 %477, %call.i.1.46.1
  store i16 %sub.1.46.1, i16* %arrayidx9.1.46.1, align 2, !tbaa !3
  %add21.1.46.1 = add i16 %477, %call.i.1.46.1
  store i16 %add21.1.46.1, i16* %arrayidx11.1.46.1, align 2, !tbaa !3
  %arrayidx9.1.47.1 = getelementptr inbounds i16, i16* %r, i64 239
  %478 = load i16, i16* %arrayidx9.1.47.1, align 2, !tbaa !3
  %conv1.i.1.47.1 = sext i16 %478 to i32
  %mul.i.1.47.1 = mul nsw i32 %conv1.i.1.47.1, -1517
  %call.i.1.47.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.47.1) #2
  %arrayidx11.1.47.1 = getelementptr inbounds i16, i16* %r, i64 175
  %479 = load i16, i16* %arrayidx11.1.47.1, align 2, !tbaa !3
  %sub.1.47.1 = sub i16 %479, %call.i.1.47.1
  store i16 %sub.1.47.1, i16* %arrayidx9.1.47.1, align 2, !tbaa !3
  %add21.1.47.1 = add i16 %479, %call.i.1.47.1
  store i16 %add21.1.47.1, i16* %arrayidx11.1.47.1, align 2, !tbaa !3
  %arrayidx9.1.48.1 = getelementptr inbounds i16, i16* %r, i64 240
  %480 = load i16, i16* %arrayidx9.1.48.1, align 2, !tbaa !3
  %conv1.i.1.48.1 = sext i16 %480 to i32
  %mul.i.1.48.1 = mul nsw i32 %conv1.i.1.48.1, -1517
  %call.i.1.48.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.48.1) #2
  %arrayidx11.1.48.1 = getelementptr inbounds i16, i16* %r, i64 176
  %481 = load i16, i16* %arrayidx11.1.48.1, align 2, !tbaa !3
  %sub.1.48.1 = sub i16 %481, %call.i.1.48.1
  store i16 %sub.1.48.1, i16* %arrayidx9.1.48.1, align 2, !tbaa !3
  %add21.1.48.1 = add i16 %481, %call.i.1.48.1
  store i16 %add21.1.48.1, i16* %arrayidx11.1.48.1, align 2, !tbaa !3
  %arrayidx9.1.49.1 = getelementptr inbounds i16, i16* %r, i64 241
  %482 = load i16, i16* %arrayidx9.1.49.1, align 2, !tbaa !3
  %conv1.i.1.49.1 = sext i16 %482 to i32
  %mul.i.1.49.1 = mul nsw i32 %conv1.i.1.49.1, -1517
  %call.i.1.49.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.49.1) #2
  %arrayidx11.1.49.1 = getelementptr inbounds i16, i16* %r, i64 177
  %483 = load i16, i16* %arrayidx11.1.49.1, align 2, !tbaa !3
  %sub.1.49.1 = sub i16 %483, %call.i.1.49.1
  store i16 %sub.1.49.1, i16* %arrayidx9.1.49.1, align 2, !tbaa !3
  %add21.1.49.1 = add i16 %483, %call.i.1.49.1
  store i16 %add21.1.49.1, i16* %arrayidx11.1.49.1, align 2, !tbaa !3
  %arrayidx9.1.50.1 = getelementptr inbounds i16, i16* %r, i64 242
  %484 = load i16, i16* %arrayidx9.1.50.1, align 2, !tbaa !3
  %conv1.i.1.50.1 = sext i16 %484 to i32
  %mul.i.1.50.1 = mul nsw i32 %conv1.i.1.50.1, -1517
  %call.i.1.50.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.50.1) #2
  %arrayidx11.1.50.1 = getelementptr inbounds i16, i16* %r, i64 178
  %485 = load i16, i16* %arrayidx11.1.50.1, align 2, !tbaa !3
  %sub.1.50.1 = sub i16 %485, %call.i.1.50.1
  store i16 %sub.1.50.1, i16* %arrayidx9.1.50.1, align 2, !tbaa !3
  %add21.1.50.1 = add i16 %485, %call.i.1.50.1
  store i16 %add21.1.50.1, i16* %arrayidx11.1.50.1, align 2, !tbaa !3
  %arrayidx9.1.51.1 = getelementptr inbounds i16, i16* %r, i64 243
  %486 = load i16, i16* %arrayidx9.1.51.1, align 2, !tbaa !3
  %conv1.i.1.51.1 = sext i16 %486 to i32
  %mul.i.1.51.1 = mul nsw i32 %conv1.i.1.51.1, -1517
  %call.i.1.51.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.51.1) #2
  %arrayidx11.1.51.1 = getelementptr inbounds i16, i16* %r, i64 179
  %487 = load i16, i16* %arrayidx11.1.51.1, align 2, !tbaa !3
  %sub.1.51.1 = sub i16 %487, %call.i.1.51.1
  store i16 %sub.1.51.1, i16* %arrayidx9.1.51.1, align 2, !tbaa !3
  %add21.1.51.1 = add i16 %487, %call.i.1.51.1
  store i16 %add21.1.51.1, i16* %arrayidx11.1.51.1, align 2, !tbaa !3
  %arrayidx9.1.52.1 = getelementptr inbounds i16, i16* %r, i64 244
  %488 = load i16, i16* %arrayidx9.1.52.1, align 2, !tbaa !3
  %conv1.i.1.52.1 = sext i16 %488 to i32
  %mul.i.1.52.1 = mul nsw i32 %conv1.i.1.52.1, -1517
  %call.i.1.52.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.52.1) #2
  %arrayidx11.1.52.1 = getelementptr inbounds i16, i16* %r, i64 180
  %489 = load i16, i16* %arrayidx11.1.52.1, align 2, !tbaa !3
  %sub.1.52.1 = sub i16 %489, %call.i.1.52.1
  store i16 %sub.1.52.1, i16* %arrayidx9.1.52.1, align 2, !tbaa !3
  %add21.1.52.1 = add i16 %489, %call.i.1.52.1
  store i16 %add21.1.52.1, i16* %arrayidx11.1.52.1, align 2, !tbaa !3
  %arrayidx9.1.53.1 = getelementptr inbounds i16, i16* %r, i64 245
  %490 = load i16, i16* %arrayidx9.1.53.1, align 2, !tbaa !3
  %conv1.i.1.53.1 = sext i16 %490 to i32
  %mul.i.1.53.1 = mul nsw i32 %conv1.i.1.53.1, -1517
  %call.i.1.53.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.53.1) #2
  %arrayidx11.1.53.1 = getelementptr inbounds i16, i16* %r, i64 181
  %491 = load i16, i16* %arrayidx11.1.53.1, align 2, !tbaa !3
  %sub.1.53.1 = sub i16 %491, %call.i.1.53.1
  store i16 %sub.1.53.1, i16* %arrayidx9.1.53.1, align 2, !tbaa !3
  %add21.1.53.1 = add i16 %491, %call.i.1.53.1
  store i16 %add21.1.53.1, i16* %arrayidx11.1.53.1, align 2, !tbaa !3
  %arrayidx9.1.54.1 = getelementptr inbounds i16, i16* %r, i64 246
  %492 = load i16, i16* %arrayidx9.1.54.1, align 2, !tbaa !3
  %conv1.i.1.54.1 = sext i16 %492 to i32
  %mul.i.1.54.1 = mul nsw i32 %conv1.i.1.54.1, -1517
  %call.i.1.54.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.54.1) #2
  %arrayidx11.1.54.1 = getelementptr inbounds i16, i16* %r, i64 182
  %493 = load i16, i16* %arrayidx11.1.54.1, align 2, !tbaa !3
  %sub.1.54.1 = sub i16 %493, %call.i.1.54.1
  store i16 %sub.1.54.1, i16* %arrayidx9.1.54.1, align 2, !tbaa !3
  %add21.1.54.1 = add i16 %493, %call.i.1.54.1
  store i16 %add21.1.54.1, i16* %arrayidx11.1.54.1, align 2, !tbaa !3
  %arrayidx9.1.55.1 = getelementptr inbounds i16, i16* %r, i64 247
  %494 = load i16, i16* %arrayidx9.1.55.1, align 2, !tbaa !3
  %conv1.i.1.55.1 = sext i16 %494 to i32
  %mul.i.1.55.1 = mul nsw i32 %conv1.i.1.55.1, -1517
  %call.i.1.55.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.55.1) #2
  %arrayidx11.1.55.1 = getelementptr inbounds i16, i16* %r, i64 183
  %495 = load i16, i16* %arrayidx11.1.55.1, align 2, !tbaa !3
  %sub.1.55.1 = sub i16 %495, %call.i.1.55.1
  store i16 %sub.1.55.1, i16* %arrayidx9.1.55.1, align 2, !tbaa !3
  %add21.1.55.1 = add i16 %495, %call.i.1.55.1
  store i16 %add21.1.55.1, i16* %arrayidx11.1.55.1, align 2, !tbaa !3
  %arrayidx9.1.56.1 = getelementptr inbounds i16, i16* %r, i64 248
  %496 = load i16, i16* %arrayidx9.1.56.1, align 2, !tbaa !3
  %conv1.i.1.56.1 = sext i16 %496 to i32
  %mul.i.1.56.1 = mul nsw i32 %conv1.i.1.56.1, -1517
  %call.i.1.56.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.56.1) #2
  %arrayidx11.1.56.1 = getelementptr inbounds i16, i16* %r, i64 184
  %497 = load i16, i16* %arrayidx11.1.56.1, align 2, !tbaa !3
  %sub.1.56.1 = sub i16 %497, %call.i.1.56.1
  store i16 %sub.1.56.1, i16* %arrayidx9.1.56.1, align 2, !tbaa !3
  %add21.1.56.1 = add i16 %497, %call.i.1.56.1
  store i16 %add21.1.56.1, i16* %arrayidx11.1.56.1, align 2, !tbaa !3
  %arrayidx9.1.57.1 = getelementptr inbounds i16, i16* %r, i64 249
  %498 = load i16, i16* %arrayidx9.1.57.1, align 2, !tbaa !3
  %conv1.i.1.57.1 = sext i16 %498 to i32
  %mul.i.1.57.1 = mul nsw i32 %conv1.i.1.57.1, -1517
  %call.i.1.57.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.57.1) #2
  %arrayidx11.1.57.1 = getelementptr inbounds i16, i16* %r, i64 185
  %499 = load i16, i16* %arrayidx11.1.57.1, align 2, !tbaa !3
  %sub.1.57.1 = sub i16 %499, %call.i.1.57.1
  store i16 %sub.1.57.1, i16* %arrayidx9.1.57.1, align 2, !tbaa !3
  %add21.1.57.1 = add i16 %499, %call.i.1.57.1
  store i16 %add21.1.57.1, i16* %arrayidx11.1.57.1, align 2, !tbaa !3
  %arrayidx9.1.58.1 = getelementptr inbounds i16, i16* %r, i64 250
  %500 = load i16, i16* %arrayidx9.1.58.1, align 2, !tbaa !3
  %conv1.i.1.58.1 = sext i16 %500 to i32
  %mul.i.1.58.1 = mul nsw i32 %conv1.i.1.58.1, -1517
  %call.i.1.58.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.58.1) #2
  %arrayidx11.1.58.1 = getelementptr inbounds i16, i16* %r, i64 186
  %501 = load i16, i16* %arrayidx11.1.58.1, align 2, !tbaa !3
  %sub.1.58.1 = sub i16 %501, %call.i.1.58.1
  store i16 %sub.1.58.1, i16* %arrayidx9.1.58.1, align 2, !tbaa !3
  %add21.1.58.1 = add i16 %501, %call.i.1.58.1
  store i16 %add21.1.58.1, i16* %arrayidx11.1.58.1, align 2, !tbaa !3
  %arrayidx9.1.59.1 = getelementptr inbounds i16, i16* %r, i64 251
  %502 = load i16, i16* %arrayidx9.1.59.1, align 2, !tbaa !3
  %conv1.i.1.59.1 = sext i16 %502 to i32
  %mul.i.1.59.1 = mul nsw i32 %conv1.i.1.59.1, -1517
  %call.i.1.59.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.59.1) #2
  %arrayidx11.1.59.1 = getelementptr inbounds i16, i16* %r, i64 187
  %503 = load i16, i16* %arrayidx11.1.59.1, align 2, !tbaa !3
  %sub.1.59.1 = sub i16 %503, %call.i.1.59.1
  store i16 %sub.1.59.1, i16* %arrayidx9.1.59.1, align 2, !tbaa !3
  %add21.1.59.1 = add i16 %503, %call.i.1.59.1
  store i16 %add21.1.59.1, i16* %arrayidx11.1.59.1, align 2, !tbaa !3
  %arrayidx9.1.60.1 = getelementptr inbounds i16, i16* %r, i64 252
  %504 = load i16, i16* %arrayidx9.1.60.1, align 2, !tbaa !3
  %conv1.i.1.60.1 = sext i16 %504 to i32
  %mul.i.1.60.1 = mul nsw i32 %conv1.i.1.60.1, -1517
  %call.i.1.60.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.60.1) #2
  %arrayidx11.1.60.1 = getelementptr inbounds i16, i16* %r, i64 188
  %505 = load i16, i16* %arrayidx11.1.60.1, align 2, !tbaa !3
  %sub.1.60.1 = sub i16 %505, %call.i.1.60.1
  store i16 %sub.1.60.1, i16* %arrayidx9.1.60.1, align 2, !tbaa !3
  %add21.1.60.1 = add i16 %505, %call.i.1.60.1
  store i16 %add21.1.60.1, i16* %arrayidx11.1.60.1, align 2, !tbaa !3
  %arrayidx9.1.61.1 = getelementptr inbounds i16, i16* %r, i64 253
  %506 = load i16, i16* %arrayidx9.1.61.1, align 2, !tbaa !3
  %conv1.i.1.61.1 = sext i16 %506 to i32
  %mul.i.1.61.1 = mul nsw i32 %conv1.i.1.61.1, -1517
  %call.i.1.61.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.61.1) #2
  %arrayidx11.1.61.1 = getelementptr inbounds i16, i16* %r, i64 189
  %507 = load i16, i16* %arrayidx11.1.61.1, align 2, !tbaa !3
  %sub.1.61.1 = sub i16 %507, %call.i.1.61.1
  store i16 %sub.1.61.1, i16* %arrayidx9.1.61.1, align 2, !tbaa !3
  %add21.1.61.1 = add i16 %507, %call.i.1.61.1
  store i16 %add21.1.61.1, i16* %arrayidx11.1.61.1, align 2, !tbaa !3
  %arrayidx9.1.62.1 = getelementptr inbounds i16, i16* %r, i64 254
  %508 = load i16, i16* %arrayidx9.1.62.1, align 2, !tbaa !3
  %conv1.i.1.62.1 = sext i16 %508 to i32
  %mul.i.1.62.1 = mul nsw i32 %conv1.i.1.62.1, -1517
  %call.i.1.62.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.62.1) #2
  %arrayidx11.1.62.1 = getelementptr inbounds i16, i16* %r, i64 190
  %509 = load i16, i16* %arrayidx11.1.62.1, align 2, !tbaa !3
  %sub.1.62.1 = sub i16 %509, %call.i.1.62.1
  store i16 %sub.1.62.1, i16* %arrayidx9.1.62.1, align 2, !tbaa !3
  %add21.1.62.1 = add i16 %509, %call.i.1.62.1
  store i16 %add21.1.62.1, i16* %arrayidx11.1.62.1, align 2, !tbaa !3
  %arrayidx9.1.63.1 = getelementptr inbounds i16, i16* %r, i64 255
  %510 = load i16, i16* %arrayidx9.1.63.1, align 2, !tbaa !3
  %conv1.i.1.63.1 = sext i16 %510 to i32
  %mul.i.1.63.1 = mul nsw i32 %conv1.i.1.63.1, -1517
  %call.i.1.63.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.63.1) #2
  %arrayidx11.1.63.1 = getelementptr inbounds i16, i16* %r, i64 191
  %511 = load i16, i16* %arrayidx11.1.63.1, align 2, !tbaa !3
  %sub.1.63.1 = sub i16 %511, %call.i.1.63.1
  store i16 %sub.1.63.1, i16* %arrayidx9.1.63.1, align 2, !tbaa !3
  %add21.1.63.1 = add i16 %511, %call.i.1.63.1
  store i16 %add21.1.63.1, i16* %arrayidx11.1.63.1, align 2, !tbaa !3
  %arrayidx9.2 = getelementptr inbounds i16, i16* %r, i64 32
  %512 = load i16, i16* %arrayidx9.2, align 2, !tbaa !3
  %conv1.i.2 = sext i16 %512 to i32
  %mul.i.2 = mul nsw i32 %conv1.i.2, 1493
  %call.i.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2) #2
  %513 = load i16, i16* %r, align 2, !tbaa !3
  %sub.2 = sub i16 %513, %call.i.2
  store i16 %sub.2, i16* %arrayidx9.2, align 2, !tbaa !3
  %add21.2 = add i16 %513, %call.i.2
  store i16 %add21.2, i16* %r, align 2, !tbaa !3
  %arrayidx9.2.1 = getelementptr inbounds i16, i16* %r, i64 33
  %514 = load i16, i16* %arrayidx9.2.1, align 2, !tbaa !3
  %conv1.i.2.1 = sext i16 %514 to i32
  %mul.i.2.1 = mul nsw i32 %conv1.i.2.1, 1493
  %call.i.2.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.1) #2
  %arrayidx11.2.1 = getelementptr inbounds i16, i16* %r, i64 1
  %515 = load i16, i16* %arrayidx11.2.1, align 2, !tbaa !3
  %sub.2.1 = sub i16 %515, %call.i.2.1
  store i16 %sub.2.1, i16* %arrayidx9.2.1, align 2, !tbaa !3
  %add21.2.1 = add i16 %515, %call.i.2.1
  store i16 %add21.2.1, i16* %arrayidx11.2.1, align 2, !tbaa !3
  %arrayidx9.2.2 = getelementptr inbounds i16, i16* %r, i64 34
  %516 = load i16, i16* %arrayidx9.2.2, align 2, !tbaa !3
  %conv1.i.2.2 = sext i16 %516 to i32
  %mul.i.2.2 = mul nsw i32 %conv1.i.2.2, 1493
  %call.i.2.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.2) #2
  %arrayidx11.2.2 = getelementptr inbounds i16, i16* %r, i64 2
  %517 = load i16, i16* %arrayidx11.2.2, align 2, !tbaa !3
  %sub.2.2 = sub i16 %517, %call.i.2.2
  store i16 %sub.2.2, i16* %arrayidx9.2.2, align 2, !tbaa !3
  %add21.2.2 = add i16 %517, %call.i.2.2
  store i16 %add21.2.2, i16* %arrayidx11.2.2, align 2, !tbaa !3
  %arrayidx9.2.3 = getelementptr inbounds i16, i16* %r, i64 35
  %518 = load i16, i16* %arrayidx9.2.3, align 2, !tbaa !3
  %conv1.i.2.3 = sext i16 %518 to i32
  %mul.i.2.3 = mul nsw i32 %conv1.i.2.3, 1493
  %call.i.2.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.3) #2
  %arrayidx11.2.3 = getelementptr inbounds i16, i16* %r, i64 3
  %519 = load i16, i16* %arrayidx11.2.3, align 2, !tbaa !3
  %sub.2.3 = sub i16 %519, %call.i.2.3
  store i16 %sub.2.3, i16* %arrayidx9.2.3, align 2, !tbaa !3
  %add21.2.3 = add i16 %519, %call.i.2.3
  store i16 %add21.2.3, i16* %arrayidx11.2.3, align 2, !tbaa !3
  %arrayidx9.2.4 = getelementptr inbounds i16, i16* %r, i64 36
  %520 = load i16, i16* %arrayidx9.2.4, align 2, !tbaa !3
  %conv1.i.2.4 = sext i16 %520 to i32
  %mul.i.2.4 = mul nsw i32 %conv1.i.2.4, 1493
  %call.i.2.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.4) #2
  %arrayidx11.2.4 = getelementptr inbounds i16, i16* %r, i64 4
  %521 = load i16, i16* %arrayidx11.2.4, align 2, !tbaa !3
  %sub.2.4 = sub i16 %521, %call.i.2.4
  store i16 %sub.2.4, i16* %arrayidx9.2.4, align 2, !tbaa !3
  %add21.2.4 = add i16 %521, %call.i.2.4
  store i16 %add21.2.4, i16* %arrayidx11.2.4, align 2, !tbaa !3
  %arrayidx9.2.5 = getelementptr inbounds i16, i16* %r, i64 37
  %522 = load i16, i16* %arrayidx9.2.5, align 2, !tbaa !3
  %conv1.i.2.5 = sext i16 %522 to i32
  %mul.i.2.5 = mul nsw i32 %conv1.i.2.5, 1493
  %call.i.2.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.5) #2
  %arrayidx11.2.5 = getelementptr inbounds i16, i16* %r, i64 5
  %523 = load i16, i16* %arrayidx11.2.5, align 2, !tbaa !3
  %sub.2.5 = sub i16 %523, %call.i.2.5
  store i16 %sub.2.5, i16* %arrayidx9.2.5, align 2, !tbaa !3
  %add21.2.5 = add i16 %523, %call.i.2.5
  store i16 %add21.2.5, i16* %arrayidx11.2.5, align 2, !tbaa !3
  %arrayidx9.2.6 = getelementptr inbounds i16, i16* %r, i64 38
  %524 = load i16, i16* %arrayidx9.2.6, align 2, !tbaa !3
  %conv1.i.2.6 = sext i16 %524 to i32
  %mul.i.2.6 = mul nsw i32 %conv1.i.2.6, 1493
  %call.i.2.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.6) #2
  %arrayidx11.2.6 = getelementptr inbounds i16, i16* %r, i64 6
  %525 = load i16, i16* %arrayidx11.2.6, align 2, !tbaa !3
  %sub.2.6 = sub i16 %525, %call.i.2.6
  store i16 %sub.2.6, i16* %arrayidx9.2.6, align 2, !tbaa !3
  %add21.2.6 = add i16 %525, %call.i.2.6
  store i16 %add21.2.6, i16* %arrayidx11.2.6, align 2, !tbaa !3
  %arrayidx9.2.7 = getelementptr inbounds i16, i16* %r, i64 39
  %526 = load i16, i16* %arrayidx9.2.7, align 2, !tbaa !3
  %conv1.i.2.7 = sext i16 %526 to i32
  %mul.i.2.7 = mul nsw i32 %conv1.i.2.7, 1493
  %call.i.2.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.7) #2
  %arrayidx11.2.7 = getelementptr inbounds i16, i16* %r, i64 7
  %527 = load i16, i16* %arrayidx11.2.7, align 2, !tbaa !3
  %sub.2.7 = sub i16 %527, %call.i.2.7
  store i16 %sub.2.7, i16* %arrayidx9.2.7, align 2, !tbaa !3
  %add21.2.7 = add i16 %527, %call.i.2.7
  store i16 %add21.2.7, i16* %arrayidx11.2.7, align 2, !tbaa !3
  %arrayidx9.2.8 = getelementptr inbounds i16, i16* %r, i64 40
  %528 = load i16, i16* %arrayidx9.2.8, align 2, !tbaa !3
  %conv1.i.2.8 = sext i16 %528 to i32
  %mul.i.2.8 = mul nsw i32 %conv1.i.2.8, 1493
  %call.i.2.8 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.8) #2
  %arrayidx11.2.8 = getelementptr inbounds i16, i16* %r, i64 8
  %529 = load i16, i16* %arrayidx11.2.8, align 2, !tbaa !3
  %sub.2.8 = sub i16 %529, %call.i.2.8
  store i16 %sub.2.8, i16* %arrayidx9.2.8, align 2, !tbaa !3
  %add21.2.8 = add i16 %529, %call.i.2.8
  store i16 %add21.2.8, i16* %arrayidx11.2.8, align 2, !tbaa !3
  %arrayidx9.2.9 = getelementptr inbounds i16, i16* %r, i64 41
  %530 = load i16, i16* %arrayidx9.2.9, align 2, !tbaa !3
  %conv1.i.2.9 = sext i16 %530 to i32
  %mul.i.2.9 = mul nsw i32 %conv1.i.2.9, 1493
  %call.i.2.9 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.9) #2
  %arrayidx11.2.9 = getelementptr inbounds i16, i16* %r, i64 9
  %531 = load i16, i16* %arrayidx11.2.9, align 2, !tbaa !3
  %sub.2.9 = sub i16 %531, %call.i.2.9
  store i16 %sub.2.9, i16* %arrayidx9.2.9, align 2, !tbaa !3
  %add21.2.9 = add i16 %531, %call.i.2.9
  store i16 %add21.2.9, i16* %arrayidx11.2.9, align 2, !tbaa !3
  %arrayidx9.2.10 = getelementptr inbounds i16, i16* %r, i64 42
  %532 = load i16, i16* %arrayidx9.2.10, align 2, !tbaa !3
  %conv1.i.2.10 = sext i16 %532 to i32
  %mul.i.2.10 = mul nsw i32 %conv1.i.2.10, 1493
  %call.i.2.10 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.10) #2
  %arrayidx11.2.10 = getelementptr inbounds i16, i16* %r, i64 10
  %533 = load i16, i16* %arrayidx11.2.10, align 2, !tbaa !3
  %sub.2.10 = sub i16 %533, %call.i.2.10
  store i16 %sub.2.10, i16* %arrayidx9.2.10, align 2, !tbaa !3
  %add21.2.10 = add i16 %533, %call.i.2.10
  store i16 %add21.2.10, i16* %arrayidx11.2.10, align 2, !tbaa !3
  %arrayidx9.2.11 = getelementptr inbounds i16, i16* %r, i64 43
  %534 = load i16, i16* %arrayidx9.2.11, align 2, !tbaa !3
  %conv1.i.2.11 = sext i16 %534 to i32
  %mul.i.2.11 = mul nsw i32 %conv1.i.2.11, 1493
  %call.i.2.11 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.11) #2
  %arrayidx11.2.11 = getelementptr inbounds i16, i16* %r, i64 11
  %535 = load i16, i16* %arrayidx11.2.11, align 2, !tbaa !3
  %sub.2.11 = sub i16 %535, %call.i.2.11
  store i16 %sub.2.11, i16* %arrayidx9.2.11, align 2, !tbaa !3
  %add21.2.11 = add i16 %535, %call.i.2.11
  store i16 %add21.2.11, i16* %arrayidx11.2.11, align 2, !tbaa !3
  %arrayidx9.2.12 = getelementptr inbounds i16, i16* %r, i64 44
  %536 = load i16, i16* %arrayidx9.2.12, align 2, !tbaa !3
  %conv1.i.2.12 = sext i16 %536 to i32
  %mul.i.2.12 = mul nsw i32 %conv1.i.2.12, 1493
  %call.i.2.12 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.12) #2
  %arrayidx11.2.12 = getelementptr inbounds i16, i16* %r, i64 12
  %537 = load i16, i16* %arrayidx11.2.12, align 2, !tbaa !3
  %sub.2.12 = sub i16 %537, %call.i.2.12
  store i16 %sub.2.12, i16* %arrayidx9.2.12, align 2, !tbaa !3
  %add21.2.12 = add i16 %537, %call.i.2.12
  store i16 %add21.2.12, i16* %arrayidx11.2.12, align 2, !tbaa !3
  %arrayidx9.2.13 = getelementptr inbounds i16, i16* %r, i64 45
  %538 = load i16, i16* %arrayidx9.2.13, align 2, !tbaa !3
  %conv1.i.2.13 = sext i16 %538 to i32
  %mul.i.2.13 = mul nsw i32 %conv1.i.2.13, 1493
  %call.i.2.13 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.13) #2
  %arrayidx11.2.13 = getelementptr inbounds i16, i16* %r, i64 13
  %539 = load i16, i16* %arrayidx11.2.13, align 2, !tbaa !3
  %sub.2.13 = sub i16 %539, %call.i.2.13
  store i16 %sub.2.13, i16* %arrayidx9.2.13, align 2, !tbaa !3
  %add21.2.13 = add i16 %539, %call.i.2.13
  store i16 %add21.2.13, i16* %arrayidx11.2.13, align 2, !tbaa !3
  %arrayidx9.2.14 = getelementptr inbounds i16, i16* %r, i64 46
  %540 = load i16, i16* %arrayidx9.2.14, align 2, !tbaa !3
  %conv1.i.2.14 = sext i16 %540 to i32
  %mul.i.2.14 = mul nsw i32 %conv1.i.2.14, 1493
  %call.i.2.14 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.14) #2
  %arrayidx11.2.14 = getelementptr inbounds i16, i16* %r, i64 14
  %541 = load i16, i16* %arrayidx11.2.14, align 2, !tbaa !3
  %sub.2.14 = sub i16 %541, %call.i.2.14
  store i16 %sub.2.14, i16* %arrayidx9.2.14, align 2, !tbaa !3
  %add21.2.14 = add i16 %541, %call.i.2.14
  store i16 %add21.2.14, i16* %arrayidx11.2.14, align 2, !tbaa !3
  %arrayidx9.2.15 = getelementptr inbounds i16, i16* %r, i64 47
  %542 = load i16, i16* %arrayidx9.2.15, align 2, !tbaa !3
  %conv1.i.2.15 = sext i16 %542 to i32
  %mul.i.2.15 = mul nsw i32 %conv1.i.2.15, 1493
  %call.i.2.15 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.15) #2
  %arrayidx11.2.15 = getelementptr inbounds i16, i16* %r, i64 15
  %543 = load i16, i16* %arrayidx11.2.15, align 2, !tbaa !3
  %sub.2.15 = sub i16 %543, %call.i.2.15
  store i16 %sub.2.15, i16* %arrayidx9.2.15, align 2, !tbaa !3
  %add21.2.15 = add i16 %543, %call.i.2.15
  store i16 %add21.2.15, i16* %arrayidx11.2.15, align 2, !tbaa !3
  %arrayidx9.2.16 = getelementptr inbounds i16, i16* %r, i64 48
  %544 = load i16, i16* %arrayidx9.2.16, align 2, !tbaa !3
  %conv1.i.2.16 = sext i16 %544 to i32
  %mul.i.2.16 = mul nsw i32 %conv1.i.2.16, 1493
  %call.i.2.16 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.16) #2
  %arrayidx11.2.16 = getelementptr inbounds i16, i16* %r, i64 16
  %545 = load i16, i16* %arrayidx11.2.16, align 2, !tbaa !3
  %sub.2.16 = sub i16 %545, %call.i.2.16
  store i16 %sub.2.16, i16* %arrayidx9.2.16, align 2, !tbaa !3
  %add21.2.16 = add i16 %545, %call.i.2.16
  store i16 %add21.2.16, i16* %arrayidx11.2.16, align 2, !tbaa !3
  %arrayidx9.2.17 = getelementptr inbounds i16, i16* %r, i64 49
  %546 = load i16, i16* %arrayidx9.2.17, align 2, !tbaa !3
  %conv1.i.2.17 = sext i16 %546 to i32
  %mul.i.2.17 = mul nsw i32 %conv1.i.2.17, 1493
  %call.i.2.17 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.17) #2
  %arrayidx11.2.17 = getelementptr inbounds i16, i16* %r, i64 17
  %547 = load i16, i16* %arrayidx11.2.17, align 2, !tbaa !3
  %sub.2.17 = sub i16 %547, %call.i.2.17
  store i16 %sub.2.17, i16* %arrayidx9.2.17, align 2, !tbaa !3
  %add21.2.17 = add i16 %547, %call.i.2.17
  store i16 %add21.2.17, i16* %arrayidx11.2.17, align 2, !tbaa !3
  %arrayidx9.2.18 = getelementptr inbounds i16, i16* %r, i64 50
  %548 = load i16, i16* %arrayidx9.2.18, align 2, !tbaa !3
  %conv1.i.2.18 = sext i16 %548 to i32
  %mul.i.2.18 = mul nsw i32 %conv1.i.2.18, 1493
  %call.i.2.18 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.18) #2
  %arrayidx11.2.18 = getelementptr inbounds i16, i16* %r, i64 18
  %549 = load i16, i16* %arrayidx11.2.18, align 2, !tbaa !3
  %sub.2.18 = sub i16 %549, %call.i.2.18
  store i16 %sub.2.18, i16* %arrayidx9.2.18, align 2, !tbaa !3
  %add21.2.18 = add i16 %549, %call.i.2.18
  store i16 %add21.2.18, i16* %arrayidx11.2.18, align 2, !tbaa !3
  %arrayidx9.2.19 = getelementptr inbounds i16, i16* %r, i64 51
  %550 = load i16, i16* %arrayidx9.2.19, align 2, !tbaa !3
  %conv1.i.2.19 = sext i16 %550 to i32
  %mul.i.2.19 = mul nsw i32 %conv1.i.2.19, 1493
  %call.i.2.19 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.19) #2
  %arrayidx11.2.19 = getelementptr inbounds i16, i16* %r, i64 19
  %551 = load i16, i16* %arrayidx11.2.19, align 2, !tbaa !3
  %sub.2.19 = sub i16 %551, %call.i.2.19
  store i16 %sub.2.19, i16* %arrayidx9.2.19, align 2, !tbaa !3
  %add21.2.19 = add i16 %551, %call.i.2.19
  store i16 %add21.2.19, i16* %arrayidx11.2.19, align 2, !tbaa !3
  %arrayidx9.2.20 = getelementptr inbounds i16, i16* %r, i64 52
  %552 = load i16, i16* %arrayidx9.2.20, align 2, !tbaa !3
  %conv1.i.2.20 = sext i16 %552 to i32
  %mul.i.2.20 = mul nsw i32 %conv1.i.2.20, 1493
  %call.i.2.20 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.20) #2
  %arrayidx11.2.20 = getelementptr inbounds i16, i16* %r, i64 20
  %553 = load i16, i16* %arrayidx11.2.20, align 2, !tbaa !3
  %sub.2.20 = sub i16 %553, %call.i.2.20
  store i16 %sub.2.20, i16* %arrayidx9.2.20, align 2, !tbaa !3
  %add21.2.20 = add i16 %553, %call.i.2.20
  store i16 %add21.2.20, i16* %arrayidx11.2.20, align 2, !tbaa !3
  %arrayidx9.2.21 = getelementptr inbounds i16, i16* %r, i64 53
  %554 = load i16, i16* %arrayidx9.2.21, align 2, !tbaa !3
  %conv1.i.2.21 = sext i16 %554 to i32
  %mul.i.2.21 = mul nsw i32 %conv1.i.2.21, 1493
  %call.i.2.21 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.21) #2
  %arrayidx11.2.21 = getelementptr inbounds i16, i16* %r, i64 21
  %555 = load i16, i16* %arrayidx11.2.21, align 2, !tbaa !3
  %sub.2.21 = sub i16 %555, %call.i.2.21
  store i16 %sub.2.21, i16* %arrayidx9.2.21, align 2, !tbaa !3
  %add21.2.21 = add i16 %555, %call.i.2.21
  store i16 %add21.2.21, i16* %arrayidx11.2.21, align 2, !tbaa !3
  %arrayidx9.2.22 = getelementptr inbounds i16, i16* %r, i64 54
  %556 = load i16, i16* %arrayidx9.2.22, align 2, !tbaa !3
  %conv1.i.2.22 = sext i16 %556 to i32
  %mul.i.2.22 = mul nsw i32 %conv1.i.2.22, 1493
  %call.i.2.22 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.22) #2
  %arrayidx11.2.22 = getelementptr inbounds i16, i16* %r, i64 22
  %557 = load i16, i16* %arrayidx11.2.22, align 2, !tbaa !3
  %sub.2.22 = sub i16 %557, %call.i.2.22
  store i16 %sub.2.22, i16* %arrayidx9.2.22, align 2, !tbaa !3
  %add21.2.22 = add i16 %557, %call.i.2.22
  store i16 %add21.2.22, i16* %arrayidx11.2.22, align 2, !tbaa !3
  %arrayidx9.2.23 = getelementptr inbounds i16, i16* %r, i64 55
  %558 = load i16, i16* %arrayidx9.2.23, align 2, !tbaa !3
  %conv1.i.2.23 = sext i16 %558 to i32
  %mul.i.2.23 = mul nsw i32 %conv1.i.2.23, 1493
  %call.i.2.23 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.23) #2
  %arrayidx11.2.23 = getelementptr inbounds i16, i16* %r, i64 23
  %559 = load i16, i16* %arrayidx11.2.23, align 2, !tbaa !3
  %sub.2.23 = sub i16 %559, %call.i.2.23
  store i16 %sub.2.23, i16* %arrayidx9.2.23, align 2, !tbaa !3
  %add21.2.23 = add i16 %559, %call.i.2.23
  store i16 %add21.2.23, i16* %arrayidx11.2.23, align 2, !tbaa !3
  %arrayidx9.2.24 = getelementptr inbounds i16, i16* %r, i64 56
  %560 = load i16, i16* %arrayidx9.2.24, align 2, !tbaa !3
  %conv1.i.2.24 = sext i16 %560 to i32
  %mul.i.2.24 = mul nsw i32 %conv1.i.2.24, 1493
  %call.i.2.24 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.24) #2
  %arrayidx11.2.24 = getelementptr inbounds i16, i16* %r, i64 24
  %561 = load i16, i16* %arrayidx11.2.24, align 2, !tbaa !3
  %sub.2.24 = sub i16 %561, %call.i.2.24
  store i16 %sub.2.24, i16* %arrayidx9.2.24, align 2, !tbaa !3
  %add21.2.24 = add i16 %561, %call.i.2.24
  store i16 %add21.2.24, i16* %arrayidx11.2.24, align 2, !tbaa !3
  %arrayidx9.2.25 = getelementptr inbounds i16, i16* %r, i64 57
  %562 = load i16, i16* %arrayidx9.2.25, align 2, !tbaa !3
  %conv1.i.2.25 = sext i16 %562 to i32
  %mul.i.2.25 = mul nsw i32 %conv1.i.2.25, 1493
  %call.i.2.25 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.25) #2
  %arrayidx11.2.25 = getelementptr inbounds i16, i16* %r, i64 25
  %563 = load i16, i16* %arrayidx11.2.25, align 2, !tbaa !3
  %sub.2.25 = sub i16 %563, %call.i.2.25
  store i16 %sub.2.25, i16* %arrayidx9.2.25, align 2, !tbaa !3
  %add21.2.25 = add i16 %563, %call.i.2.25
  store i16 %add21.2.25, i16* %arrayidx11.2.25, align 2, !tbaa !3
  %arrayidx9.2.26 = getelementptr inbounds i16, i16* %r, i64 58
  %564 = load i16, i16* %arrayidx9.2.26, align 2, !tbaa !3
  %conv1.i.2.26 = sext i16 %564 to i32
  %mul.i.2.26 = mul nsw i32 %conv1.i.2.26, 1493
  %call.i.2.26 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.26) #2
  %arrayidx11.2.26 = getelementptr inbounds i16, i16* %r, i64 26
  %565 = load i16, i16* %arrayidx11.2.26, align 2, !tbaa !3
  %sub.2.26 = sub i16 %565, %call.i.2.26
  store i16 %sub.2.26, i16* %arrayidx9.2.26, align 2, !tbaa !3
  %add21.2.26 = add i16 %565, %call.i.2.26
  store i16 %add21.2.26, i16* %arrayidx11.2.26, align 2, !tbaa !3
  %arrayidx9.2.27 = getelementptr inbounds i16, i16* %r, i64 59
  %566 = load i16, i16* %arrayidx9.2.27, align 2, !tbaa !3
  %conv1.i.2.27 = sext i16 %566 to i32
  %mul.i.2.27 = mul nsw i32 %conv1.i.2.27, 1493
  %call.i.2.27 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.27) #2
  %arrayidx11.2.27 = getelementptr inbounds i16, i16* %r, i64 27
  %567 = load i16, i16* %arrayidx11.2.27, align 2, !tbaa !3
  %sub.2.27 = sub i16 %567, %call.i.2.27
  store i16 %sub.2.27, i16* %arrayidx9.2.27, align 2, !tbaa !3
  %add21.2.27 = add i16 %567, %call.i.2.27
  store i16 %add21.2.27, i16* %arrayidx11.2.27, align 2, !tbaa !3
  %arrayidx9.2.28 = getelementptr inbounds i16, i16* %r, i64 60
  %568 = load i16, i16* %arrayidx9.2.28, align 2, !tbaa !3
  %conv1.i.2.28 = sext i16 %568 to i32
  %mul.i.2.28 = mul nsw i32 %conv1.i.2.28, 1493
  %call.i.2.28 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.28) #2
  %arrayidx11.2.28 = getelementptr inbounds i16, i16* %r, i64 28
  %569 = load i16, i16* %arrayidx11.2.28, align 2, !tbaa !3
  %sub.2.28 = sub i16 %569, %call.i.2.28
  store i16 %sub.2.28, i16* %arrayidx9.2.28, align 2, !tbaa !3
  %add21.2.28 = add i16 %569, %call.i.2.28
  store i16 %add21.2.28, i16* %arrayidx11.2.28, align 2, !tbaa !3
  %arrayidx9.2.29 = getelementptr inbounds i16, i16* %r, i64 61
  %570 = load i16, i16* %arrayidx9.2.29, align 2, !tbaa !3
  %conv1.i.2.29 = sext i16 %570 to i32
  %mul.i.2.29 = mul nsw i32 %conv1.i.2.29, 1493
  %call.i.2.29 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.29) #2
  %arrayidx11.2.29 = getelementptr inbounds i16, i16* %r, i64 29
  %571 = load i16, i16* %arrayidx11.2.29, align 2, !tbaa !3
  %sub.2.29 = sub i16 %571, %call.i.2.29
  store i16 %sub.2.29, i16* %arrayidx9.2.29, align 2, !tbaa !3
  %add21.2.29 = add i16 %571, %call.i.2.29
  store i16 %add21.2.29, i16* %arrayidx11.2.29, align 2, !tbaa !3
  %arrayidx9.2.30 = getelementptr inbounds i16, i16* %r, i64 62
  %572 = load i16, i16* %arrayidx9.2.30, align 2, !tbaa !3
  %conv1.i.2.30 = sext i16 %572 to i32
  %mul.i.2.30 = mul nsw i32 %conv1.i.2.30, 1493
  %call.i.2.30 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.30) #2
  %arrayidx11.2.30 = getelementptr inbounds i16, i16* %r, i64 30
  %573 = load i16, i16* %arrayidx11.2.30, align 2, !tbaa !3
  %sub.2.30 = sub i16 %573, %call.i.2.30
  store i16 %sub.2.30, i16* %arrayidx9.2.30, align 2, !tbaa !3
  %add21.2.30 = add i16 %573, %call.i.2.30
  store i16 %add21.2.30, i16* %arrayidx11.2.30, align 2, !tbaa !3
  %arrayidx9.2.31 = getelementptr inbounds i16, i16* %r, i64 63
  %574 = load i16, i16* %arrayidx9.2.31, align 2, !tbaa !3
  %conv1.i.2.31 = sext i16 %574 to i32
  %mul.i.2.31 = mul nsw i32 %conv1.i.2.31, 1493
  %call.i.2.31 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.31) #2
  %arrayidx11.2.31 = getelementptr inbounds i16, i16* %r, i64 31
  %575 = load i16, i16* %arrayidx11.2.31, align 2, !tbaa !3
  %sub.2.31 = sub i16 %575, %call.i.2.31
  store i16 %sub.2.31, i16* %arrayidx9.2.31, align 2, !tbaa !3
  %add21.2.31 = add i16 %575, %call.i.2.31
  store i16 %add21.2.31, i16* %arrayidx11.2.31, align 2, !tbaa !3
  %arrayidx9.2.1248 = getelementptr inbounds i16, i16* %r, i64 96
  %576 = load i16, i16* %arrayidx9.2.1248, align 2, !tbaa !3
  %conv1.i.2.1249 = sext i16 %576 to i32
  %mul.i.2.1250 = mul nsw i32 %conv1.i.2.1249, 1422
  %call.i.2.1251 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.1250) #2
  %arrayidx11.2.1252 = getelementptr inbounds i16, i16* %r, i64 64
  %577 = load i16, i16* %arrayidx11.2.1252, align 2, !tbaa !3
  %sub.2.1253 = sub i16 %577, %call.i.2.1251
  store i16 %sub.2.1253, i16* %arrayidx9.2.1248, align 2, !tbaa !3
  %add21.2.1254 = add i16 %577, %call.i.2.1251
  store i16 %add21.2.1254, i16* %arrayidx11.2.1252, align 2, !tbaa !3
  %arrayidx9.2.1.1 = getelementptr inbounds i16, i16* %r, i64 97
  %578 = load i16, i16* %arrayidx9.2.1.1, align 2, !tbaa !3
  %conv1.i.2.1.1 = sext i16 %578 to i32
  %mul.i.2.1.1 = mul nsw i32 %conv1.i.2.1.1, 1422
  %call.i.2.1.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.1.1) #2
  %arrayidx11.2.1.1 = getelementptr inbounds i16, i16* %r, i64 65
  %579 = load i16, i16* %arrayidx11.2.1.1, align 2, !tbaa !3
  %sub.2.1.1 = sub i16 %579, %call.i.2.1.1
  store i16 %sub.2.1.1, i16* %arrayidx9.2.1.1, align 2, !tbaa !3
  %add21.2.1.1 = add i16 %579, %call.i.2.1.1
  store i16 %add21.2.1.1, i16* %arrayidx11.2.1.1, align 2, !tbaa !3
  %arrayidx9.2.2.1 = getelementptr inbounds i16, i16* %r, i64 98
  %580 = load i16, i16* %arrayidx9.2.2.1, align 2, !tbaa !3
  %conv1.i.2.2.1 = sext i16 %580 to i32
  %mul.i.2.2.1 = mul nsw i32 %conv1.i.2.2.1, 1422
  %call.i.2.2.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.2.1) #2
  %arrayidx11.2.2.1 = getelementptr inbounds i16, i16* %r, i64 66
  %581 = load i16, i16* %arrayidx11.2.2.1, align 2, !tbaa !3
  %sub.2.2.1 = sub i16 %581, %call.i.2.2.1
  store i16 %sub.2.2.1, i16* %arrayidx9.2.2.1, align 2, !tbaa !3
  %add21.2.2.1 = add i16 %581, %call.i.2.2.1
  store i16 %add21.2.2.1, i16* %arrayidx11.2.2.1, align 2, !tbaa !3
  %arrayidx9.2.3.1 = getelementptr inbounds i16, i16* %r, i64 99
  %582 = load i16, i16* %arrayidx9.2.3.1, align 2, !tbaa !3
  %conv1.i.2.3.1 = sext i16 %582 to i32
  %mul.i.2.3.1 = mul nsw i32 %conv1.i.2.3.1, 1422
  %call.i.2.3.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.3.1) #2
  %arrayidx11.2.3.1 = getelementptr inbounds i16, i16* %r, i64 67
  %583 = load i16, i16* %arrayidx11.2.3.1, align 2, !tbaa !3
  %sub.2.3.1 = sub i16 %583, %call.i.2.3.1
  store i16 %sub.2.3.1, i16* %arrayidx9.2.3.1, align 2, !tbaa !3
  %add21.2.3.1 = add i16 %583, %call.i.2.3.1
  store i16 %add21.2.3.1, i16* %arrayidx11.2.3.1, align 2, !tbaa !3
  %arrayidx9.2.4.1 = getelementptr inbounds i16, i16* %r, i64 100
  %584 = load i16, i16* %arrayidx9.2.4.1, align 2, !tbaa !3
  %conv1.i.2.4.1 = sext i16 %584 to i32
  %mul.i.2.4.1 = mul nsw i32 %conv1.i.2.4.1, 1422
  %call.i.2.4.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.4.1) #2
  %arrayidx11.2.4.1 = getelementptr inbounds i16, i16* %r, i64 68
  %585 = load i16, i16* %arrayidx11.2.4.1, align 2, !tbaa !3
  %sub.2.4.1 = sub i16 %585, %call.i.2.4.1
  store i16 %sub.2.4.1, i16* %arrayidx9.2.4.1, align 2, !tbaa !3
  %add21.2.4.1 = add i16 %585, %call.i.2.4.1
  store i16 %add21.2.4.1, i16* %arrayidx11.2.4.1, align 2, !tbaa !3
  %arrayidx9.2.5.1 = getelementptr inbounds i16, i16* %r, i64 101
  %586 = load i16, i16* %arrayidx9.2.5.1, align 2, !tbaa !3
  %conv1.i.2.5.1 = sext i16 %586 to i32
  %mul.i.2.5.1 = mul nsw i32 %conv1.i.2.5.1, 1422
  %call.i.2.5.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.5.1) #2
  %arrayidx11.2.5.1 = getelementptr inbounds i16, i16* %r, i64 69
  %587 = load i16, i16* %arrayidx11.2.5.1, align 2, !tbaa !3
  %sub.2.5.1 = sub i16 %587, %call.i.2.5.1
  store i16 %sub.2.5.1, i16* %arrayidx9.2.5.1, align 2, !tbaa !3
  %add21.2.5.1 = add i16 %587, %call.i.2.5.1
  store i16 %add21.2.5.1, i16* %arrayidx11.2.5.1, align 2, !tbaa !3
  %arrayidx9.2.6.1 = getelementptr inbounds i16, i16* %r, i64 102
  %588 = load i16, i16* %arrayidx9.2.6.1, align 2, !tbaa !3
  %conv1.i.2.6.1 = sext i16 %588 to i32
  %mul.i.2.6.1 = mul nsw i32 %conv1.i.2.6.1, 1422
  %call.i.2.6.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.6.1) #2
  %arrayidx11.2.6.1 = getelementptr inbounds i16, i16* %r, i64 70
  %589 = load i16, i16* %arrayidx11.2.6.1, align 2, !tbaa !3
  %sub.2.6.1 = sub i16 %589, %call.i.2.6.1
  store i16 %sub.2.6.1, i16* %arrayidx9.2.6.1, align 2, !tbaa !3
  %add21.2.6.1 = add i16 %589, %call.i.2.6.1
  store i16 %add21.2.6.1, i16* %arrayidx11.2.6.1, align 2, !tbaa !3
  %arrayidx9.2.7.1 = getelementptr inbounds i16, i16* %r, i64 103
  %590 = load i16, i16* %arrayidx9.2.7.1, align 2, !tbaa !3
  %conv1.i.2.7.1 = sext i16 %590 to i32
  %mul.i.2.7.1 = mul nsw i32 %conv1.i.2.7.1, 1422
  %call.i.2.7.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.7.1) #2
  %arrayidx11.2.7.1 = getelementptr inbounds i16, i16* %r, i64 71
  %591 = load i16, i16* %arrayidx11.2.7.1, align 2, !tbaa !3
  %sub.2.7.1 = sub i16 %591, %call.i.2.7.1
  store i16 %sub.2.7.1, i16* %arrayidx9.2.7.1, align 2, !tbaa !3
  %add21.2.7.1 = add i16 %591, %call.i.2.7.1
  store i16 %add21.2.7.1, i16* %arrayidx11.2.7.1, align 2, !tbaa !3
  %arrayidx9.2.8.1 = getelementptr inbounds i16, i16* %r, i64 104
  %592 = load i16, i16* %arrayidx9.2.8.1, align 2, !tbaa !3
  %conv1.i.2.8.1 = sext i16 %592 to i32
  %mul.i.2.8.1 = mul nsw i32 %conv1.i.2.8.1, 1422
  %call.i.2.8.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.8.1) #2
  %arrayidx11.2.8.1 = getelementptr inbounds i16, i16* %r, i64 72
  %593 = load i16, i16* %arrayidx11.2.8.1, align 2, !tbaa !3
  %sub.2.8.1 = sub i16 %593, %call.i.2.8.1
  store i16 %sub.2.8.1, i16* %arrayidx9.2.8.1, align 2, !tbaa !3
  %add21.2.8.1 = add i16 %593, %call.i.2.8.1
  store i16 %add21.2.8.1, i16* %arrayidx11.2.8.1, align 2, !tbaa !3
  %arrayidx9.2.9.1 = getelementptr inbounds i16, i16* %r, i64 105
  %594 = load i16, i16* %arrayidx9.2.9.1, align 2, !tbaa !3
  %conv1.i.2.9.1 = sext i16 %594 to i32
  %mul.i.2.9.1 = mul nsw i32 %conv1.i.2.9.1, 1422
  %call.i.2.9.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.9.1) #2
  %arrayidx11.2.9.1 = getelementptr inbounds i16, i16* %r, i64 73
  %595 = load i16, i16* %arrayidx11.2.9.1, align 2, !tbaa !3
  %sub.2.9.1 = sub i16 %595, %call.i.2.9.1
  store i16 %sub.2.9.1, i16* %arrayidx9.2.9.1, align 2, !tbaa !3
  %add21.2.9.1 = add i16 %595, %call.i.2.9.1
  store i16 %add21.2.9.1, i16* %arrayidx11.2.9.1, align 2, !tbaa !3
  %arrayidx9.2.10.1 = getelementptr inbounds i16, i16* %r, i64 106
  %596 = load i16, i16* %arrayidx9.2.10.1, align 2, !tbaa !3
  %conv1.i.2.10.1 = sext i16 %596 to i32
  %mul.i.2.10.1 = mul nsw i32 %conv1.i.2.10.1, 1422
  %call.i.2.10.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.10.1) #2
  %arrayidx11.2.10.1 = getelementptr inbounds i16, i16* %r, i64 74
  %597 = load i16, i16* %arrayidx11.2.10.1, align 2, !tbaa !3
  %sub.2.10.1 = sub i16 %597, %call.i.2.10.1
  store i16 %sub.2.10.1, i16* %arrayidx9.2.10.1, align 2, !tbaa !3
  %add21.2.10.1 = add i16 %597, %call.i.2.10.1
  store i16 %add21.2.10.1, i16* %arrayidx11.2.10.1, align 2, !tbaa !3
  %arrayidx9.2.11.1 = getelementptr inbounds i16, i16* %r, i64 107
  %598 = load i16, i16* %arrayidx9.2.11.1, align 2, !tbaa !3
  %conv1.i.2.11.1 = sext i16 %598 to i32
  %mul.i.2.11.1 = mul nsw i32 %conv1.i.2.11.1, 1422
  %call.i.2.11.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.11.1) #2
  %arrayidx11.2.11.1 = getelementptr inbounds i16, i16* %r, i64 75
  %599 = load i16, i16* %arrayidx11.2.11.1, align 2, !tbaa !3
  %sub.2.11.1 = sub i16 %599, %call.i.2.11.1
  store i16 %sub.2.11.1, i16* %arrayidx9.2.11.1, align 2, !tbaa !3
  %add21.2.11.1 = add i16 %599, %call.i.2.11.1
  store i16 %add21.2.11.1, i16* %arrayidx11.2.11.1, align 2, !tbaa !3
  %arrayidx9.2.12.1 = getelementptr inbounds i16, i16* %r, i64 108
  %600 = load i16, i16* %arrayidx9.2.12.1, align 2, !tbaa !3
  %conv1.i.2.12.1 = sext i16 %600 to i32
  %mul.i.2.12.1 = mul nsw i32 %conv1.i.2.12.1, 1422
  %call.i.2.12.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.12.1) #2
  %arrayidx11.2.12.1 = getelementptr inbounds i16, i16* %r, i64 76
  %601 = load i16, i16* %arrayidx11.2.12.1, align 2, !tbaa !3
  %sub.2.12.1 = sub i16 %601, %call.i.2.12.1
  store i16 %sub.2.12.1, i16* %arrayidx9.2.12.1, align 2, !tbaa !3
  %add21.2.12.1 = add i16 %601, %call.i.2.12.1
  store i16 %add21.2.12.1, i16* %arrayidx11.2.12.1, align 2, !tbaa !3
  %arrayidx9.2.13.1 = getelementptr inbounds i16, i16* %r, i64 109
  %602 = load i16, i16* %arrayidx9.2.13.1, align 2, !tbaa !3
  %conv1.i.2.13.1 = sext i16 %602 to i32
  %mul.i.2.13.1 = mul nsw i32 %conv1.i.2.13.1, 1422
  %call.i.2.13.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.13.1) #2
  %arrayidx11.2.13.1 = getelementptr inbounds i16, i16* %r, i64 77
  %603 = load i16, i16* %arrayidx11.2.13.1, align 2, !tbaa !3
  %sub.2.13.1 = sub i16 %603, %call.i.2.13.1
  store i16 %sub.2.13.1, i16* %arrayidx9.2.13.1, align 2, !tbaa !3
  %add21.2.13.1 = add i16 %603, %call.i.2.13.1
  store i16 %add21.2.13.1, i16* %arrayidx11.2.13.1, align 2, !tbaa !3
  %arrayidx9.2.14.1 = getelementptr inbounds i16, i16* %r, i64 110
  %604 = load i16, i16* %arrayidx9.2.14.1, align 2, !tbaa !3
  %conv1.i.2.14.1 = sext i16 %604 to i32
  %mul.i.2.14.1 = mul nsw i32 %conv1.i.2.14.1, 1422
  %call.i.2.14.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.14.1) #2
  %arrayidx11.2.14.1 = getelementptr inbounds i16, i16* %r, i64 78
  %605 = load i16, i16* %arrayidx11.2.14.1, align 2, !tbaa !3
  %sub.2.14.1 = sub i16 %605, %call.i.2.14.1
  store i16 %sub.2.14.1, i16* %arrayidx9.2.14.1, align 2, !tbaa !3
  %add21.2.14.1 = add i16 %605, %call.i.2.14.1
  store i16 %add21.2.14.1, i16* %arrayidx11.2.14.1, align 2, !tbaa !3
  %arrayidx9.2.15.1 = getelementptr inbounds i16, i16* %r, i64 111
  %606 = load i16, i16* %arrayidx9.2.15.1, align 2, !tbaa !3
  %conv1.i.2.15.1 = sext i16 %606 to i32
  %mul.i.2.15.1 = mul nsw i32 %conv1.i.2.15.1, 1422
  %call.i.2.15.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.15.1) #2
  %arrayidx11.2.15.1 = getelementptr inbounds i16, i16* %r, i64 79
  %607 = load i16, i16* %arrayidx11.2.15.1, align 2, !tbaa !3
  %sub.2.15.1 = sub i16 %607, %call.i.2.15.1
  store i16 %sub.2.15.1, i16* %arrayidx9.2.15.1, align 2, !tbaa !3
  %add21.2.15.1 = add i16 %607, %call.i.2.15.1
  store i16 %add21.2.15.1, i16* %arrayidx11.2.15.1, align 2, !tbaa !3
  %arrayidx9.2.16.1 = getelementptr inbounds i16, i16* %r, i64 112
  %608 = load i16, i16* %arrayidx9.2.16.1, align 2, !tbaa !3
  %conv1.i.2.16.1 = sext i16 %608 to i32
  %mul.i.2.16.1 = mul nsw i32 %conv1.i.2.16.1, 1422
  %call.i.2.16.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.16.1) #2
  %arrayidx11.2.16.1 = getelementptr inbounds i16, i16* %r, i64 80
  %609 = load i16, i16* %arrayidx11.2.16.1, align 2, !tbaa !3
  %sub.2.16.1 = sub i16 %609, %call.i.2.16.1
  store i16 %sub.2.16.1, i16* %arrayidx9.2.16.1, align 2, !tbaa !3
  %add21.2.16.1 = add i16 %609, %call.i.2.16.1
  store i16 %add21.2.16.1, i16* %arrayidx11.2.16.1, align 2, !tbaa !3
  %arrayidx9.2.17.1 = getelementptr inbounds i16, i16* %r, i64 113
  %610 = load i16, i16* %arrayidx9.2.17.1, align 2, !tbaa !3
  %conv1.i.2.17.1 = sext i16 %610 to i32
  %mul.i.2.17.1 = mul nsw i32 %conv1.i.2.17.1, 1422
  %call.i.2.17.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.17.1) #2
  %arrayidx11.2.17.1 = getelementptr inbounds i16, i16* %r, i64 81
  %611 = load i16, i16* %arrayidx11.2.17.1, align 2, !tbaa !3
  %sub.2.17.1 = sub i16 %611, %call.i.2.17.1
  store i16 %sub.2.17.1, i16* %arrayidx9.2.17.1, align 2, !tbaa !3
  %add21.2.17.1 = add i16 %611, %call.i.2.17.1
  store i16 %add21.2.17.1, i16* %arrayidx11.2.17.1, align 2, !tbaa !3
  %arrayidx9.2.18.1 = getelementptr inbounds i16, i16* %r, i64 114
  %612 = load i16, i16* %arrayidx9.2.18.1, align 2, !tbaa !3
  %conv1.i.2.18.1 = sext i16 %612 to i32
  %mul.i.2.18.1 = mul nsw i32 %conv1.i.2.18.1, 1422
  %call.i.2.18.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.18.1) #2
  %arrayidx11.2.18.1 = getelementptr inbounds i16, i16* %r, i64 82
  %613 = load i16, i16* %arrayidx11.2.18.1, align 2, !tbaa !3
  %sub.2.18.1 = sub i16 %613, %call.i.2.18.1
  store i16 %sub.2.18.1, i16* %arrayidx9.2.18.1, align 2, !tbaa !3
  %add21.2.18.1 = add i16 %613, %call.i.2.18.1
  store i16 %add21.2.18.1, i16* %arrayidx11.2.18.1, align 2, !tbaa !3
  %arrayidx9.2.19.1 = getelementptr inbounds i16, i16* %r, i64 115
  %614 = load i16, i16* %arrayidx9.2.19.1, align 2, !tbaa !3
  %conv1.i.2.19.1 = sext i16 %614 to i32
  %mul.i.2.19.1 = mul nsw i32 %conv1.i.2.19.1, 1422
  %call.i.2.19.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.19.1) #2
  %arrayidx11.2.19.1 = getelementptr inbounds i16, i16* %r, i64 83
  %615 = load i16, i16* %arrayidx11.2.19.1, align 2, !tbaa !3
  %sub.2.19.1 = sub i16 %615, %call.i.2.19.1
  store i16 %sub.2.19.1, i16* %arrayidx9.2.19.1, align 2, !tbaa !3
  %add21.2.19.1 = add i16 %615, %call.i.2.19.1
  store i16 %add21.2.19.1, i16* %arrayidx11.2.19.1, align 2, !tbaa !3
  %arrayidx9.2.20.1 = getelementptr inbounds i16, i16* %r, i64 116
  %616 = load i16, i16* %arrayidx9.2.20.1, align 2, !tbaa !3
  %conv1.i.2.20.1 = sext i16 %616 to i32
  %mul.i.2.20.1 = mul nsw i32 %conv1.i.2.20.1, 1422
  %call.i.2.20.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.20.1) #2
  %arrayidx11.2.20.1 = getelementptr inbounds i16, i16* %r, i64 84
  %617 = load i16, i16* %arrayidx11.2.20.1, align 2, !tbaa !3
  %sub.2.20.1 = sub i16 %617, %call.i.2.20.1
  store i16 %sub.2.20.1, i16* %arrayidx9.2.20.1, align 2, !tbaa !3
  %add21.2.20.1 = add i16 %617, %call.i.2.20.1
  store i16 %add21.2.20.1, i16* %arrayidx11.2.20.1, align 2, !tbaa !3
  %arrayidx9.2.21.1 = getelementptr inbounds i16, i16* %r, i64 117
  %618 = load i16, i16* %arrayidx9.2.21.1, align 2, !tbaa !3
  %conv1.i.2.21.1 = sext i16 %618 to i32
  %mul.i.2.21.1 = mul nsw i32 %conv1.i.2.21.1, 1422
  %call.i.2.21.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.21.1) #2
  %arrayidx11.2.21.1 = getelementptr inbounds i16, i16* %r, i64 85
  %619 = load i16, i16* %arrayidx11.2.21.1, align 2, !tbaa !3
  %sub.2.21.1 = sub i16 %619, %call.i.2.21.1
  store i16 %sub.2.21.1, i16* %arrayidx9.2.21.1, align 2, !tbaa !3
  %add21.2.21.1 = add i16 %619, %call.i.2.21.1
  store i16 %add21.2.21.1, i16* %arrayidx11.2.21.1, align 2, !tbaa !3
  %arrayidx9.2.22.1 = getelementptr inbounds i16, i16* %r, i64 118
  %620 = load i16, i16* %arrayidx9.2.22.1, align 2, !tbaa !3
  %conv1.i.2.22.1 = sext i16 %620 to i32
  %mul.i.2.22.1 = mul nsw i32 %conv1.i.2.22.1, 1422
  %call.i.2.22.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.22.1) #2
  %arrayidx11.2.22.1 = getelementptr inbounds i16, i16* %r, i64 86
  %621 = load i16, i16* %arrayidx11.2.22.1, align 2, !tbaa !3
  %sub.2.22.1 = sub i16 %621, %call.i.2.22.1
  store i16 %sub.2.22.1, i16* %arrayidx9.2.22.1, align 2, !tbaa !3
  %add21.2.22.1 = add i16 %621, %call.i.2.22.1
  store i16 %add21.2.22.1, i16* %arrayidx11.2.22.1, align 2, !tbaa !3
  %arrayidx9.2.23.1 = getelementptr inbounds i16, i16* %r, i64 119
  %622 = load i16, i16* %arrayidx9.2.23.1, align 2, !tbaa !3
  %conv1.i.2.23.1 = sext i16 %622 to i32
  %mul.i.2.23.1 = mul nsw i32 %conv1.i.2.23.1, 1422
  %call.i.2.23.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.23.1) #2
  %arrayidx11.2.23.1 = getelementptr inbounds i16, i16* %r, i64 87
  %623 = load i16, i16* %arrayidx11.2.23.1, align 2, !tbaa !3
  %sub.2.23.1 = sub i16 %623, %call.i.2.23.1
  store i16 %sub.2.23.1, i16* %arrayidx9.2.23.1, align 2, !tbaa !3
  %add21.2.23.1 = add i16 %623, %call.i.2.23.1
  store i16 %add21.2.23.1, i16* %arrayidx11.2.23.1, align 2, !tbaa !3
  %arrayidx9.2.24.1 = getelementptr inbounds i16, i16* %r, i64 120
  %624 = load i16, i16* %arrayidx9.2.24.1, align 2, !tbaa !3
  %conv1.i.2.24.1 = sext i16 %624 to i32
  %mul.i.2.24.1 = mul nsw i32 %conv1.i.2.24.1, 1422
  %call.i.2.24.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.24.1) #2
  %arrayidx11.2.24.1 = getelementptr inbounds i16, i16* %r, i64 88
  %625 = load i16, i16* %arrayidx11.2.24.1, align 2, !tbaa !3
  %sub.2.24.1 = sub i16 %625, %call.i.2.24.1
  store i16 %sub.2.24.1, i16* %arrayidx9.2.24.1, align 2, !tbaa !3
  %add21.2.24.1 = add i16 %625, %call.i.2.24.1
  store i16 %add21.2.24.1, i16* %arrayidx11.2.24.1, align 2, !tbaa !3
  %arrayidx9.2.25.1 = getelementptr inbounds i16, i16* %r, i64 121
  %626 = load i16, i16* %arrayidx9.2.25.1, align 2, !tbaa !3
  %conv1.i.2.25.1 = sext i16 %626 to i32
  %mul.i.2.25.1 = mul nsw i32 %conv1.i.2.25.1, 1422
  %call.i.2.25.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.25.1) #2
  %arrayidx11.2.25.1 = getelementptr inbounds i16, i16* %r, i64 89
  %627 = load i16, i16* %arrayidx11.2.25.1, align 2, !tbaa !3
  %sub.2.25.1 = sub i16 %627, %call.i.2.25.1
  store i16 %sub.2.25.1, i16* %arrayidx9.2.25.1, align 2, !tbaa !3
  %add21.2.25.1 = add i16 %627, %call.i.2.25.1
  store i16 %add21.2.25.1, i16* %arrayidx11.2.25.1, align 2, !tbaa !3
  %arrayidx9.2.26.1 = getelementptr inbounds i16, i16* %r, i64 122
  %628 = load i16, i16* %arrayidx9.2.26.1, align 2, !tbaa !3
  %conv1.i.2.26.1 = sext i16 %628 to i32
  %mul.i.2.26.1 = mul nsw i32 %conv1.i.2.26.1, 1422
  %call.i.2.26.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.26.1) #2
  %arrayidx11.2.26.1 = getelementptr inbounds i16, i16* %r, i64 90
  %629 = load i16, i16* %arrayidx11.2.26.1, align 2, !tbaa !3
  %sub.2.26.1 = sub i16 %629, %call.i.2.26.1
  store i16 %sub.2.26.1, i16* %arrayidx9.2.26.1, align 2, !tbaa !3
  %add21.2.26.1 = add i16 %629, %call.i.2.26.1
  store i16 %add21.2.26.1, i16* %arrayidx11.2.26.1, align 2, !tbaa !3
  %arrayidx9.2.27.1 = getelementptr inbounds i16, i16* %r, i64 123
  %630 = load i16, i16* %arrayidx9.2.27.1, align 2, !tbaa !3
  %conv1.i.2.27.1 = sext i16 %630 to i32
  %mul.i.2.27.1 = mul nsw i32 %conv1.i.2.27.1, 1422
  %call.i.2.27.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.27.1) #2
  %arrayidx11.2.27.1 = getelementptr inbounds i16, i16* %r, i64 91
  %631 = load i16, i16* %arrayidx11.2.27.1, align 2, !tbaa !3
  %sub.2.27.1 = sub i16 %631, %call.i.2.27.1
  store i16 %sub.2.27.1, i16* %arrayidx9.2.27.1, align 2, !tbaa !3
  %add21.2.27.1 = add i16 %631, %call.i.2.27.1
  store i16 %add21.2.27.1, i16* %arrayidx11.2.27.1, align 2, !tbaa !3
  %arrayidx9.2.28.1 = getelementptr inbounds i16, i16* %r, i64 124
  %632 = load i16, i16* %arrayidx9.2.28.1, align 2, !tbaa !3
  %conv1.i.2.28.1 = sext i16 %632 to i32
  %mul.i.2.28.1 = mul nsw i32 %conv1.i.2.28.1, 1422
  %call.i.2.28.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.28.1) #2
  %arrayidx11.2.28.1 = getelementptr inbounds i16, i16* %r, i64 92
  %633 = load i16, i16* %arrayidx11.2.28.1, align 2, !tbaa !3
  %sub.2.28.1 = sub i16 %633, %call.i.2.28.1
  store i16 %sub.2.28.1, i16* %arrayidx9.2.28.1, align 2, !tbaa !3
  %add21.2.28.1 = add i16 %633, %call.i.2.28.1
  store i16 %add21.2.28.1, i16* %arrayidx11.2.28.1, align 2, !tbaa !3
  %arrayidx9.2.29.1 = getelementptr inbounds i16, i16* %r, i64 125
  %634 = load i16, i16* %arrayidx9.2.29.1, align 2, !tbaa !3
  %conv1.i.2.29.1 = sext i16 %634 to i32
  %mul.i.2.29.1 = mul nsw i32 %conv1.i.2.29.1, 1422
  %call.i.2.29.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.29.1) #2
  %arrayidx11.2.29.1 = getelementptr inbounds i16, i16* %r, i64 93
  %635 = load i16, i16* %arrayidx11.2.29.1, align 2, !tbaa !3
  %sub.2.29.1 = sub i16 %635, %call.i.2.29.1
  store i16 %sub.2.29.1, i16* %arrayidx9.2.29.1, align 2, !tbaa !3
  %add21.2.29.1 = add i16 %635, %call.i.2.29.1
  store i16 %add21.2.29.1, i16* %arrayidx11.2.29.1, align 2, !tbaa !3
  %arrayidx9.2.30.1 = getelementptr inbounds i16, i16* %r, i64 126
  %636 = load i16, i16* %arrayidx9.2.30.1, align 2, !tbaa !3
  %conv1.i.2.30.1 = sext i16 %636 to i32
  %mul.i.2.30.1 = mul nsw i32 %conv1.i.2.30.1, 1422
  %call.i.2.30.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.30.1) #2
  %arrayidx11.2.30.1 = getelementptr inbounds i16, i16* %r, i64 94
  %637 = load i16, i16* %arrayidx11.2.30.1, align 2, !tbaa !3
  %sub.2.30.1 = sub i16 %637, %call.i.2.30.1
  store i16 %sub.2.30.1, i16* %arrayidx9.2.30.1, align 2, !tbaa !3
  %add21.2.30.1 = add i16 %637, %call.i.2.30.1
  store i16 %add21.2.30.1, i16* %arrayidx11.2.30.1, align 2, !tbaa !3
  %arrayidx9.2.31.1 = getelementptr inbounds i16, i16* %r, i64 127
  %638 = load i16, i16* %arrayidx9.2.31.1, align 2, !tbaa !3
  %conv1.i.2.31.1 = sext i16 %638 to i32
  %mul.i.2.31.1 = mul nsw i32 %conv1.i.2.31.1, 1422
  %call.i.2.31.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.31.1) #2
  %arrayidx11.2.31.1 = getelementptr inbounds i16, i16* %r, i64 95
  %639 = load i16, i16* %arrayidx11.2.31.1, align 2, !tbaa !3
  %sub.2.31.1 = sub i16 %639, %call.i.2.31.1
  store i16 %sub.2.31.1, i16* %arrayidx9.2.31.1, align 2, !tbaa !3
  %add21.2.31.1 = add i16 %639, %call.i.2.31.1
  store i16 %add21.2.31.1, i16* %arrayidx11.2.31.1, align 2, !tbaa !3
  %arrayidx9.2.2258 = getelementptr inbounds i16, i16* %r, i64 160
  %640 = load i16, i16* %arrayidx9.2.2258, align 2, !tbaa !3
  %conv1.i.2.2259 = sext i16 %640 to i32
  %mul.i.2.2260 = mul nsw i32 %conv1.i.2.2259, 287
  %call.i.2.2261 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.2260) #2
  %arrayidx11.2.2262 = getelementptr inbounds i16, i16* %r, i64 128
  %641 = load i16, i16* %arrayidx11.2.2262, align 2, !tbaa !3
  %sub.2.2263 = sub i16 %641, %call.i.2.2261
  store i16 %sub.2.2263, i16* %arrayidx9.2.2258, align 2, !tbaa !3
  %add21.2.2264 = add i16 %641, %call.i.2.2261
  store i16 %add21.2.2264, i16* %arrayidx11.2.2262, align 2, !tbaa !3
  %arrayidx9.2.1.2 = getelementptr inbounds i16, i16* %r, i64 161
  %642 = load i16, i16* %arrayidx9.2.1.2, align 2, !tbaa !3
  %conv1.i.2.1.2 = sext i16 %642 to i32
  %mul.i.2.1.2 = mul nsw i32 %conv1.i.2.1.2, 287
  %call.i.2.1.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.1.2) #2
  %arrayidx11.2.1.2 = getelementptr inbounds i16, i16* %r, i64 129
  %643 = load i16, i16* %arrayidx11.2.1.2, align 2, !tbaa !3
  %sub.2.1.2 = sub i16 %643, %call.i.2.1.2
  store i16 %sub.2.1.2, i16* %arrayidx9.2.1.2, align 2, !tbaa !3
  %add21.2.1.2 = add i16 %643, %call.i.2.1.2
  store i16 %add21.2.1.2, i16* %arrayidx11.2.1.2, align 2, !tbaa !3
  %arrayidx9.2.2.2 = getelementptr inbounds i16, i16* %r, i64 162
  %644 = load i16, i16* %arrayidx9.2.2.2, align 2, !tbaa !3
  %conv1.i.2.2.2 = sext i16 %644 to i32
  %mul.i.2.2.2 = mul nsw i32 %conv1.i.2.2.2, 287
  %call.i.2.2.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.2.2) #2
  %arrayidx11.2.2.2 = getelementptr inbounds i16, i16* %r, i64 130
  %645 = load i16, i16* %arrayidx11.2.2.2, align 2, !tbaa !3
  %sub.2.2.2 = sub i16 %645, %call.i.2.2.2
  store i16 %sub.2.2.2, i16* %arrayidx9.2.2.2, align 2, !tbaa !3
  %add21.2.2.2 = add i16 %645, %call.i.2.2.2
  store i16 %add21.2.2.2, i16* %arrayidx11.2.2.2, align 2, !tbaa !3
  %arrayidx9.2.3.2 = getelementptr inbounds i16, i16* %r, i64 163
  %646 = load i16, i16* %arrayidx9.2.3.2, align 2, !tbaa !3
  %conv1.i.2.3.2 = sext i16 %646 to i32
  %mul.i.2.3.2 = mul nsw i32 %conv1.i.2.3.2, 287
  %call.i.2.3.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.3.2) #2
  %arrayidx11.2.3.2 = getelementptr inbounds i16, i16* %r, i64 131
  %647 = load i16, i16* %arrayidx11.2.3.2, align 2, !tbaa !3
  %sub.2.3.2 = sub i16 %647, %call.i.2.3.2
  store i16 %sub.2.3.2, i16* %arrayidx9.2.3.2, align 2, !tbaa !3
  %add21.2.3.2 = add i16 %647, %call.i.2.3.2
  store i16 %add21.2.3.2, i16* %arrayidx11.2.3.2, align 2, !tbaa !3
  %arrayidx9.2.4.2 = getelementptr inbounds i16, i16* %r, i64 164
  %648 = load i16, i16* %arrayidx9.2.4.2, align 2, !tbaa !3
  %conv1.i.2.4.2 = sext i16 %648 to i32
  %mul.i.2.4.2 = mul nsw i32 %conv1.i.2.4.2, 287
  %call.i.2.4.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.4.2) #2
  %arrayidx11.2.4.2 = getelementptr inbounds i16, i16* %r, i64 132
  %649 = load i16, i16* %arrayidx11.2.4.2, align 2, !tbaa !3
  %sub.2.4.2 = sub i16 %649, %call.i.2.4.2
  store i16 %sub.2.4.2, i16* %arrayidx9.2.4.2, align 2, !tbaa !3
  %add21.2.4.2 = add i16 %649, %call.i.2.4.2
  store i16 %add21.2.4.2, i16* %arrayidx11.2.4.2, align 2, !tbaa !3
  %arrayidx9.2.5.2 = getelementptr inbounds i16, i16* %r, i64 165
  %650 = load i16, i16* %arrayidx9.2.5.2, align 2, !tbaa !3
  %conv1.i.2.5.2 = sext i16 %650 to i32
  %mul.i.2.5.2 = mul nsw i32 %conv1.i.2.5.2, 287
  %call.i.2.5.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.5.2) #2
  %arrayidx11.2.5.2 = getelementptr inbounds i16, i16* %r, i64 133
  %651 = load i16, i16* %arrayidx11.2.5.2, align 2, !tbaa !3
  %sub.2.5.2 = sub i16 %651, %call.i.2.5.2
  store i16 %sub.2.5.2, i16* %arrayidx9.2.5.2, align 2, !tbaa !3
  %add21.2.5.2 = add i16 %651, %call.i.2.5.2
  store i16 %add21.2.5.2, i16* %arrayidx11.2.5.2, align 2, !tbaa !3
  %arrayidx9.2.6.2 = getelementptr inbounds i16, i16* %r, i64 166
  %652 = load i16, i16* %arrayidx9.2.6.2, align 2, !tbaa !3
  %conv1.i.2.6.2 = sext i16 %652 to i32
  %mul.i.2.6.2 = mul nsw i32 %conv1.i.2.6.2, 287
  %call.i.2.6.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.6.2) #2
  %arrayidx11.2.6.2 = getelementptr inbounds i16, i16* %r, i64 134
  %653 = load i16, i16* %arrayidx11.2.6.2, align 2, !tbaa !3
  %sub.2.6.2 = sub i16 %653, %call.i.2.6.2
  store i16 %sub.2.6.2, i16* %arrayidx9.2.6.2, align 2, !tbaa !3
  %add21.2.6.2 = add i16 %653, %call.i.2.6.2
  store i16 %add21.2.6.2, i16* %arrayidx11.2.6.2, align 2, !tbaa !3
  %arrayidx9.2.7.2 = getelementptr inbounds i16, i16* %r, i64 167
  %654 = load i16, i16* %arrayidx9.2.7.2, align 2, !tbaa !3
  %conv1.i.2.7.2 = sext i16 %654 to i32
  %mul.i.2.7.2 = mul nsw i32 %conv1.i.2.7.2, 287
  %call.i.2.7.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.7.2) #2
  %arrayidx11.2.7.2 = getelementptr inbounds i16, i16* %r, i64 135
  %655 = load i16, i16* %arrayidx11.2.7.2, align 2, !tbaa !3
  %sub.2.7.2 = sub i16 %655, %call.i.2.7.2
  store i16 %sub.2.7.2, i16* %arrayidx9.2.7.2, align 2, !tbaa !3
  %add21.2.7.2 = add i16 %655, %call.i.2.7.2
  store i16 %add21.2.7.2, i16* %arrayidx11.2.7.2, align 2, !tbaa !3
  %arrayidx9.2.8.2 = getelementptr inbounds i16, i16* %r, i64 168
  %656 = load i16, i16* %arrayidx9.2.8.2, align 2, !tbaa !3
  %conv1.i.2.8.2 = sext i16 %656 to i32
  %mul.i.2.8.2 = mul nsw i32 %conv1.i.2.8.2, 287
  %call.i.2.8.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.8.2) #2
  %arrayidx11.2.8.2 = getelementptr inbounds i16, i16* %r, i64 136
  %657 = load i16, i16* %arrayidx11.2.8.2, align 2, !tbaa !3
  %sub.2.8.2 = sub i16 %657, %call.i.2.8.2
  store i16 %sub.2.8.2, i16* %arrayidx9.2.8.2, align 2, !tbaa !3
  %add21.2.8.2 = add i16 %657, %call.i.2.8.2
  store i16 %add21.2.8.2, i16* %arrayidx11.2.8.2, align 2, !tbaa !3
  %arrayidx9.2.9.2 = getelementptr inbounds i16, i16* %r, i64 169
  %658 = load i16, i16* %arrayidx9.2.9.2, align 2, !tbaa !3
  %conv1.i.2.9.2 = sext i16 %658 to i32
  %mul.i.2.9.2 = mul nsw i32 %conv1.i.2.9.2, 287
  %call.i.2.9.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.9.2) #2
  %arrayidx11.2.9.2 = getelementptr inbounds i16, i16* %r, i64 137
  %659 = load i16, i16* %arrayidx11.2.9.2, align 2, !tbaa !3
  %sub.2.9.2 = sub i16 %659, %call.i.2.9.2
  store i16 %sub.2.9.2, i16* %arrayidx9.2.9.2, align 2, !tbaa !3
  %add21.2.9.2 = add i16 %659, %call.i.2.9.2
  store i16 %add21.2.9.2, i16* %arrayidx11.2.9.2, align 2, !tbaa !3
  %arrayidx9.2.10.2 = getelementptr inbounds i16, i16* %r, i64 170
  %660 = load i16, i16* %arrayidx9.2.10.2, align 2, !tbaa !3
  %conv1.i.2.10.2 = sext i16 %660 to i32
  %mul.i.2.10.2 = mul nsw i32 %conv1.i.2.10.2, 287
  %call.i.2.10.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.10.2) #2
  %arrayidx11.2.10.2 = getelementptr inbounds i16, i16* %r, i64 138
  %661 = load i16, i16* %arrayidx11.2.10.2, align 2, !tbaa !3
  %sub.2.10.2 = sub i16 %661, %call.i.2.10.2
  store i16 %sub.2.10.2, i16* %arrayidx9.2.10.2, align 2, !tbaa !3
  %add21.2.10.2 = add i16 %661, %call.i.2.10.2
  store i16 %add21.2.10.2, i16* %arrayidx11.2.10.2, align 2, !tbaa !3
  %arrayidx9.2.11.2 = getelementptr inbounds i16, i16* %r, i64 171
  %662 = load i16, i16* %arrayidx9.2.11.2, align 2, !tbaa !3
  %conv1.i.2.11.2 = sext i16 %662 to i32
  %mul.i.2.11.2 = mul nsw i32 %conv1.i.2.11.2, 287
  %call.i.2.11.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.11.2) #2
  %arrayidx11.2.11.2 = getelementptr inbounds i16, i16* %r, i64 139
  %663 = load i16, i16* %arrayidx11.2.11.2, align 2, !tbaa !3
  %sub.2.11.2 = sub i16 %663, %call.i.2.11.2
  store i16 %sub.2.11.2, i16* %arrayidx9.2.11.2, align 2, !tbaa !3
  %add21.2.11.2 = add i16 %663, %call.i.2.11.2
  store i16 %add21.2.11.2, i16* %arrayidx11.2.11.2, align 2, !tbaa !3
  %arrayidx9.2.12.2 = getelementptr inbounds i16, i16* %r, i64 172
  %664 = load i16, i16* %arrayidx9.2.12.2, align 2, !tbaa !3
  %conv1.i.2.12.2 = sext i16 %664 to i32
  %mul.i.2.12.2 = mul nsw i32 %conv1.i.2.12.2, 287
  %call.i.2.12.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.12.2) #2
  %arrayidx11.2.12.2 = getelementptr inbounds i16, i16* %r, i64 140
  %665 = load i16, i16* %arrayidx11.2.12.2, align 2, !tbaa !3
  %sub.2.12.2 = sub i16 %665, %call.i.2.12.2
  store i16 %sub.2.12.2, i16* %arrayidx9.2.12.2, align 2, !tbaa !3
  %add21.2.12.2 = add i16 %665, %call.i.2.12.2
  store i16 %add21.2.12.2, i16* %arrayidx11.2.12.2, align 2, !tbaa !3
  %arrayidx9.2.13.2 = getelementptr inbounds i16, i16* %r, i64 173
  %666 = load i16, i16* %arrayidx9.2.13.2, align 2, !tbaa !3
  %conv1.i.2.13.2 = sext i16 %666 to i32
  %mul.i.2.13.2 = mul nsw i32 %conv1.i.2.13.2, 287
  %call.i.2.13.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.13.2) #2
  %arrayidx11.2.13.2 = getelementptr inbounds i16, i16* %r, i64 141
  %667 = load i16, i16* %arrayidx11.2.13.2, align 2, !tbaa !3
  %sub.2.13.2 = sub i16 %667, %call.i.2.13.2
  store i16 %sub.2.13.2, i16* %arrayidx9.2.13.2, align 2, !tbaa !3
  %add21.2.13.2 = add i16 %667, %call.i.2.13.2
  store i16 %add21.2.13.2, i16* %arrayidx11.2.13.2, align 2, !tbaa !3
  %arrayidx9.2.14.2 = getelementptr inbounds i16, i16* %r, i64 174
  %668 = load i16, i16* %arrayidx9.2.14.2, align 2, !tbaa !3
  %conv1.i.2.14.2 = sext i16 %668 to i32
  %mul.i.2.14.2 = mul nsw i32 %conv1.i.2.14.2, 287
  %call.i.2.14.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.14.2) #2
  %arrayidx11.2.14.2 = getelementptr inbounds i16, i16* %r, i64 142
  %669 = load i16, i16* %arrayidx11.2.14.2, align 2, !tbaa !3
  %sub.2.14.2 = sub i16 %669, %call.i.2.14.2
  store i16 %sub.2.14.2, i16* %arrayidx9.2.14.2, align 2, !tbaa !3
  %add21.2.14.2 = add i16 %669, %call.i.2.14.2
  store i16 %add21.2.14.2, i16* %arrayidx11.2.14.2, align 2, !tbaa !3
  %arrayidx9.2.15.2 = getelementptr inbounds i16, i16* %r, i64 175
  %670 = load i16, i16* %arrayidx9.2.15.2, align 2, !tbaa !3
  %conv1.i.2.15.2 = sext i16 %670 to i32
  %mul.i.2.15.2 = mul nsw i32 %conv1.i.2.15.2, 287
  %call.i.2.15.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.15.2) #2
  %arrayidx11.2.15.2 = getelementptr inbounds i16, i16* %r, i64 143
  %671 = load i16, i16* %arrayidx11.2.15.2, align 2, !tbaa !3
  %sub.2.15.2 = sub i16 %671, %call.i.2.15.2
  store i16 %sub.2.15.2, i16* %arrayidx9.2.15.2, align 2, !tbaa !3
  %add21.2.15.2 = add i16 %671, %call.i.2.15.2
  store i16 %add21.2.15.2, i16* %arrayidx11.2.15.2, align 2, !tbaa !3
  %arrayidx9.2.16.2 = getelementptr inbounds i16, i16* %r, i64 176
  %672 = load i16, i16* %arrayidx9.2.16.2, align 2, !tbaa !3
  %conv1.i.2.16.2 = sext i16 %672 to i32
  %mul.i.2.16.2 = mul nsw i32 %conv1.i.2.16.2, 287
  %call.i.2.16.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.16.2) #2
  %arrayidx11.2.16.2 = getelementptr inbounds i16, i16* %r, i64 144
  %673 = load i16, i16* %arrayidx11.2.16.2, align 2, !tbaa !3
  %sub.2.16.2 = sub i16 %673, %call.i.2.16.2
  store i16 %sub.2.16.2, i16* %arrayidx9.2.16.2, align 2, !tbaa !3
  %add21.2.16.2 = add i16 %673, %call.i.2.16.2
  store i16 %add21.2.16.2, i16* %arrayidx11.2.16.2, align 2, !tbaa !3
  %arrayidx9.2.17.2 = getelementptr inbounds i16, i16* %r, i64 177
  %674 = load i16, i16* %arrayidx9.2.17.2, align 2, !tbaa !3
  %conv1.i.2.17.2 = sext i16 %674 to i32
  %mul.i.2.17.2 = mul nsw i32 %conv1.i.2.17.2, 287
  %call.i.2.17.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.17.2) #2
  %arrayidx11.2.17.2 = getelementptr inbounds i16, i16* %r, i64 145
  %675 = load i16, i16* %arrayidx11.2.17.2, align 2, !tbaa !3
  %sub.2.17.2 = sub i16 %675, %call.i.2.17.2
  store i16 %sub.2.17.2, i16* %arrayidx9.2.17.2, align 2, !tbaa !3
  %add21.2.17.2 = add i16 %675, %call.i.2.17.2
  store i16 %add21.2.17.2, i16* %arrayidx11.2.17.2, align 2, !tbaa !3
  %arrayidx9.2.18.2 = getelementptr inbounds i16, i16* %r, i64 178
  %676 = load i16, i16* %arrayidx9.2.18.2, align 2, !tbaa !3
  %conv1.i.2.18.2 = sext i16 %676 to i32
  %mul.i.2.18.2 = mul nsw i32 %conv1.i.2.18.2, 287
  %call.i.2.18.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.18.2) #2
  %arrayidx11.2.18.2 = getelementptr inbounds i16, i16* %r, i64 146
  %677 = load i16, i16* %arrayidx11.2.18.2, align 2, !tbaa !3
  %sub.2.18.2 = sub i16 %677, %call.i.2.18.2
  store i16 %sub.2.18.2, i16* %arrayidx9.2.18.2, align 2, !tbaa !3
  %add21.2.18.2 = add i16 %677, %call.i.2.18.2
  store i16 %add21.2.18.2, i16* %arrayidx11.2.18.2, align 2, !tbaa !3
  %arrayidx9.2.19.2 = getelementptr inbounds i16, i16* %r, i64 179
  %678 = load i16, i16* %arrayidx9.2.19.2, align 2, !tbaa !3
  %conv1.i.2.19.2 = sext i16 %678 to i32
  %mul.i.2.19.2 = mul nsw i32 %conv1.i.2.19.2, 287
  %call.i.2.19.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.19.2) #2
  %arrayidx11.2.19.2 = getelementptr inbounds i16, i16* %r, i64 147
  %679 = load i16, i16* %arrayidx11.2.19.2, align 2, !tbaa !3
  %sub.2.19.2 = sub i16 %679, %call.i.2.19.2
  store i16 %sub.2.19.2, i16* %arrayidx9.2.19.2, align 2, !tbaa !3
  %add21.2.19.2 = add i16 %679, %call.i.2.19.2
  store i16 %add21.2.19.2, i16* %arrayidx11.2.19.2, align 2, !tbaa !3
  %arrayidx9.2.20.2 = getelementptr inbounds i16, i16* %r, i64 180
  %680 = load i16, i16* %arrayidx9.2.20.2, align 2, !tbaa !3
  %conv1.i.2.20.2 = sext i16 %680 to i32
  %mul.i.2.20.2 = mul nsw i32 %conv1.i.2.20.2, 287
  %call.i.2.20.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.20.2) #2
  %arrayidx11.2.20.2 = getelementptr inbounds i16, i16* %r, i64 148
  %681 = load i16, i16* %arrayidx11.2.20.2, align 2, !tbaa !3
  %sub.2.20.2 = sub i16 %681, %call.i.2.20.2
  store i16 %sub.2.20.2, i16* %arrayidx9.2.20.2, align 2, !tbaa !3
  %add21.2.20.2 = add i16 %681, %call.i.2.20.2
  store i16 %add21.2.20.2, i16* %arrayidx11.2.20.2, align 2, !tbaa !3
  %arrayidx9.2.21.2 = getelementptr inbounds i16, i16* %r, i64 181
  %682 = load i16, i16* %arrayidx9.2.21.2, align 2, !tbaa !3
  %conv1.i.2.21.2 = sext i16 %682 to i32
  %mul.i.2.21.2 = mul nsw i32 %conv1.i.2.21.2, 287
  %call.i.2.21.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.21.2) #2
  %arrayidx11.2.21.2 = getelementptr inbounds i16, i16* %r, i64 149
  %683 = load i16, i16* %arrayidx11.2.21.2, align 2, !tbaa !3
  %sub.2.21.2 = sub i16 %683, %call.i.2.21.2
  store i16 %sub.2.21.2, i16* %arrayidx9.2.21.2, align 2, !tbaa !3
  %add21.2.21.2 = add i16 %683, %call.i.2.21.2
  store i16 %add21.2.21.2, i16* %arrayidx11.2.21.2, align 2, !tbaa !3
  %arrayidx9.2.22.2 = getelementptr inbounds i16, i16* %r, i64 182
  %684 = load i16, i16* %arrayidx9.2.22.2, align 2, !tbaa !3
  %conv1.i.2.22.2 = sext i16 %684 to i32
  %mul.i.2.22.2 = mul nsw i32 %conv1.i.2.22.2, 287
  %call.i.2.22.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.22.2) #2
  %arrayidx11.2.22.2 = getelementptr inbounds i16, i16* %r, i64 150
  %685 = load i16, i16* %arrayidx11.2.22.2, align 2, !tbaa !3
  %sub.2.22.2 = sub i16 %685, %call.i.2.22.2
  store i16 %sub.2.22.2, i16* %arrayidx9.2.22.2, align 2, !tbaa !3
  %add21.2.22.2 = add i16 %685, %call.i.2.22.2
  store i16 %add21.2.22.2, i16* %arrayidx11.2.22.2, align 2, !tbaa !3
  %arrayidx9.2.23.2 = getelementptr inbounds i16, i16* %r, i64 183
  %686 = load i16, i16* %arrayidx9.2.23.2, align 2, !tbaa !3
  %conv1.i.2.23.2 = sext i16 %686 to i32
  %mul.i.2.23.2 = mul nsw i32 %conv1.i.2.23.2, 287
  %call.i.2.23.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.23.2) #2
  %arrayidx11.2.23.2 = getelementptr inbounds i16, i16* %r, i64 151
  %687 = load i16, i16* %arrayidx11.2.23.2, align 2, !tbaa !3
  %sub.2.23.2 = sub i16 %687, %call.i.2.23.2
  store i16 %sub.2.23.2, i16* %arrayidx9.2.23.2, align 2, !tbaa !3
  %add21.2.23.2 = add i16 %687, %call.i.2.23.2
  store i16 %add21.2.23.2, i16* %arrayidx11.2.23.2, align 2, !tbaa !3
  %arrayidx9.2.24.2 = getelementptr inbounds i16, i16* %r, i64 184
  %688 = load i16, i16* %arrayidx9.2.24.2, align 2, !tbaa !3
  %conv1.i.2.24.2 = sext i16 %688 to i32
  %mul.i.2.24.2 = mul nsw i32 %conv1.i.2.24.2, 287
  %call.i.2.24.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.24.2) #2
  %arrayidx11.2.24.2 = getelementptr inbounds i16, i16* %r, i64 152
  %689 = load i16, i16* %arrayidx11.2.24.2, align 2, !tbaa !3
  %sub.2.24.2 = sub i16 %689, %call.i.2.24.2
  store i16 %sub.2.24.2, i16* %arrayidx9.2.24.2, align 2, !tbaa !3
  %add21.2.24.2 = add i16 %689, %call.i.2.24.2
  store i16 %add21.2.24.2, i16* %arrayidx11.2.24.2, align 2, !tbaa !3
  %arrayidx9.2.25.2 = getelementptr inbounds i16, i16* %r, i64 185
  %690 = load i16, i16* %arrayidx9.2.25.2, align 2, !tbaa !3
  %conv1.i.2.25.2 = sext i16 %690 to i32
  %mul.i.2.25.2 = mul nsw i32 %conv1.i.2.25.2, 287
  %call.i.2.25.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.25.2) #2
  %arrayidx11.2.25.2 = getelementptr inbounds i16, i16* %r, i64 153
  %691 = load i16, i16* %arrayidx11.2.25.2, align 2, !tbaa !3
  %sub.2.25.2 = sub i16 %691, %call.i.2.25.2
  store i16 %sub.2.25.2, i16* %arrayidx9.2.25.2, align 2, !tbaa !3
  %add21.2.25.2 = add i16 %691, %call.i.2.25.2
  store i16 %add21.2.25.2, i16* %arrayidx11.2.25.2, align 2, !tbaa !3
  %arrayidx9.2.26.2 = getelementptr inbounds i16, i16* %r, i64 186
  %692 = load i16, i16* %arrayidx9.2.26.2, align 2, !tbaa !3
  %conv1.i.2.26.2 = sext i16 %692 to i32
  %mul.i.2.26.2 = mul nsw i32 %conv1.i.2.26.2, 287
  %call.i.2.26.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.26.2) #2
  %arrayidx11.2.26.2 = getelementptr inbounds i16, i16* %r, i64 154
  %693 = load i16, i16* %arrayidx11.2.26.2, align 2, !tbaa !3
  %sub.2.26.2 = sub i16 %693, %call.i.2.26.2
  store i16 %sub.2.26.2, i16* %arrayidx9.2.26.2, align 2, !tbaa !3
  %add21.2.26.2 = add i16 %693, %call.i.2.26.2
  store i16 %add21.2.26.2, i16* %arrayidx11.2.26.2, align 2, !tbaa !3
  %arrayidx9.2.27.2 = getelementptr inbounds i16, i16* %r, i64 187
  %694 = load i16, i16* %arrayidx9.2.27.2, align 2, !tbaa !3
  %conv1.i.2.27.2 = sext i16 %694 to i32
  %mul.i.2.27.2 = mul nsw i32 %conv1.i.2.27.2, 287
  %call.i.2.27.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.27.2) #2
  %arrayidx11.2.27.2 = getelementptr inbounds i16, i16* %r, i64 155
  %695 = load i16, i16* %arrayidx11.2.27.2, align 2, !tbaa !3
  %sub.2.27.2 = sub i16 %695, %call.i.2.27.2
  store i16 %sub.2.27.2, i16* %arrayidx9.2.27.2, align 2, !tbaa !3
  %add21.2.27.2 = add i16 %695, %call.i.2.27.2
  store i16 %add21.2.27.2, i16* %arrayidx11.2.27.2, align 2, !tbaa !3
  %arrayidx9.2.28.2 = getelementptr inbounds i16, i16* %r, i64 188
  %696 = load i16, i16* %arrayidx9.2.28.2, align 2, !tbaa !3
  %conv1.i.2.28.2 = sext i16 %696 to i32
  %mul.i.2.28.2 = mul nsw i32 %conv1.i.2.28.2, 287
  %call.i.2.28.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.28.2) #2
  %arrayidx11.2.28.2 = getelementptr inbounds i16, i16* %r, i64 156
  %697 = load i16, i16* %arrayidx11.2.28.2, align 2, !tbaa !3
  %sub.2.28.2 = sub i16 %697, %call.i.2.28.2
  store i16 %sub.2.28.2, i16* %arrayidx9.2.28.2, align 2, !tbaa !3
  %add21.2.28.2 = add i16 %697, %call.i.2.28.2
  store i16 %add21.2.28.2, i16* %arrayidx11.2.28.2, align 2, !tbaa !3
  %arrayidx9.2.29.2 = getelementptr inbounds i16, i16* %r, i64 189
  %698 = load i16, i16* %arrayidx9.2.29.2, align 2, !tbaa !3
  %conv1.i.2.29.2 = sext i16 %698 to i32
  %mul.i.2.29.2 = mul nsw i32 %conv1.i.2.29.2, 287
  %call.i.2.29.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.29.2) #2
  %arrayidx11.2.29.2 = getelementptr inbounds i16, i16* %r, i64 157
  %699 = load i16, i16* %arrayidx11.2.29.2, align 2, !tbaa !3
  %sub.2.29.2 = sub i16 %699, %call.i.2.29.2
  store i16 %sub.2.29.2, i16* %arrayidx9.2.29.2, align 2, !tbaa !3
  %add21.2.29.2 = add i16 %699, %call.i.2.29.2
  store i16 %add21.2.29.2, i16* %arrayidx11.2.29.2, align 2, !tbaa !3
  %arrayidx9.2.30.2 = getelementptr inbounds i16, i16* %r, i64 190
  %700 = load i16, i16* %arrayidx9.2.30.2, align 2, !tbaa !3
  %conv1.i.2.30.2 = sext i16 %700 to i32
  %mul.i.2.30.2 = mul nsw i32 %conv1.i.2.30.2, 287
  %call.i.2.30.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.30.2) #2
  %arrayidx11.2.30.2 = getelementptr inbounds i16, i16* %r, i64 158
  %701 = load i16, i16* %arrayidx11.2.30.2, align 2, !tbaa !3
  %sub.2.30.2 = sub i16 %701, %call.i.2.30.2
  store i16 %sub.2.30.2, i16* %arrayidx9.2.30.2, align 2, !tbaa !3
  %add21.2.30.2 = add i16 %701, %call.i.2.30.2
  store i16 %add21.2.30.2, i16* %arrayidx11.2.30.2, align 2, !tbaa !3
  %arrayidx9.2.31.2 = getelementptr inbounds i16, i16* %r, i64 191
  %702 = load i16, i16* %arrayidx9.2.31.2, align 2, !tbaa !3
  %conv1.i.2.31.2 = sext i16 %702 to i32
  %mul.i.2.31.2 = mul nsw i32 %conv1.i.2.31.2, 287
  %call.i.2.31.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.31.2) #2
  %arrayidx11.2.31.2 = getelementptr inbounds i16, i16* %r, i64 159
  %703 = load i16, i16* %arrayidx11.2.31.2, align 2, !tbaa !3
  %sub.2.31.2 = sub i16 %703, %call.i.2.31.2
  store i16 %sub.2.31.2, i16* %arrayidx9.2.31.2, align 2, !tbaa !3
  %add21.2.31.2 = add i16 %703, %call.i.2.31.2
  store i16 %add21.2.31.2, i16* %arrayidx11.2.31.2, align 2, !tbaa !3
  %arrayidx9.2.3268 = getelementptr inbounds i16, i16* %r, i64 224
  %704 = load i16, i16* %arrayidx9.2.3268, align 2, !tbaa !3
  %conv1.i.2.3269 = sext i16 %704 to i32
  %mul.i.2.3270 = mul nsw i32 %conv1.i.2.3269, 202
  %call.i.2.3271 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.3270) #2
  %arrayidx11.2.3272 = getelementptr inbounds i16, i16* %r, i64 192
  %705 = load i16, i16* %arrayidx11.2.3272, align 2, !tbaa !3
  %sub.2.3273 = sub i16 %705, %call.i.2.3271
  store i16 %sub.2.3273, i16* %arrayidx9.2.3268, align 2, !tbaa !3
  %add21.2.3274 = add i16 %705, %call.i.2.3271
  store i16 %add21.2.3274, i16* %arrayidx11.2.3272, align 2, !tbaa !3
  %arrayidx9.2.1.3 = getelementptr inbounds i16, i16* %r, i64 225
  %706 = load i16, i16* %arrayidx9.2.1.3, align 2, !tbaa !3
  %conv1.i.2.1.3 = sext i16 %706 to i32
  %mul.i.2.1.3 = mul nsw i32 %conv1.i.2.1.3, 202
  %call.i.2.1.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.1.3) #2
  %arrayidx11.2.1.3 = getelementptr inbounds i16, i16* %r, i64 193
  %707 = load i16, i16* %arrayidx11.2.1.3, align 2, !tbaa !3
  %sub.2.1.3 = sub i16 %707, %call.i.2.1.3
  store i16 %sub.2.1.3, i16* %arrayidx9.2.1.3, align 2, !tbaa !3
  %add21.2.1.3 = add i16 %707, %call.i.2.1.3
  store i16 %add21.2.1.3, i16* %arrayidx11.2.1.3, align 2, !tbaa !3
  %arrayidx9.2.2.3 = getelementptr inbounds i16, i16* %r, i64 226
  %708 = load i16, i16* %arrayidx9.2.2.3, align 2, !tbaa !3
  %conv1.i.2.2.3 = sext i16 %708 to i32
  %mul.i.2.2.3 = mul nsw i32 %conv1.i.2.2.3, 202
  %call.i.2.2.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.2.3) #2
  %arrayidx11.2.2.3 = getelementptr inbounds i16, i16* %r, i64 194
  %709 = load i16, i16* %arrayidx11.2.2.3, align 2, !tbaa !3
  %sub.2.2.3 = sub i16 %709, %call.i.2.2.3
  store i16 %sub.2.2.3, i16* %arrayidx9.2.2.3, align 2, !tbaa !3
  %add21.2.2.3 = add i16 %709, %call.i.2.2.3
  store i16 %add21.2.2.3, i16* %arrayidx11.2.2.3, align 2, !tbaa !3
  %arrayidx9.2.3.3 = getelementptr inbounds i16, i16* %r, i64 227
  %710 = load i16, i16* %arrayidx9.2.3.3, align 2, !tbaa !3
  %conv1.i.2.3.3 = sext i16 %710 to i32
  %mul.i.2.3.3 = mul nsw i32 %conv1.i.2.3.3, 202
  %call.i.2.3.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.3.3) #2
  %arrayidx11.2.3.3 = getelementptr inbounds i16, i16* %r, i64 195
  %711 = load i16, i16* %arrayidx11.2.3.3, align 2, !tbaa !3
  %sub.2.3.3 = sub i16 %711, %call.i.2.3.3
  store i16 %sub.2.3.3, i16* %arrayidx9.2.3.3, align 2, !tbaa !3
  %add21.2.3.3 = add i16 %711, %call.i.2.3.3
  store i16 %add21.2.3.3, i16* %arrayidx11.2.3.3, align 2, !tbaa !3
  %arrayidx9.2.4.3 = getelementptr inbounds i16, i16* %r, i64 228
  %712 = load i16, i16* %arrayidx9.2.4.3, align 2, !tbaa !3
  %conv1.i.2.4.3 = sext i16 %712 to i32
  %mul.i.2.4.3 = mul nsw i32 %conv1.i.2.4.3, 202
  %call.i.2.4.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.4.3) #2
  %arrayidx11.2.4.3 = getelementptr inbounds i16, i16* %r, i64 196
  %713 = load i16, i16* %arrayidx11.2.4.3, align 2, !tbaa !3
  %sub.2.4.3 = sub i16 %713, %call.i.2.4.3
  store i16 %sub.2.4.3, i16* %arrayidx9.2.4.3, align 2, !tbaa !3
  %add21.2.4.3 = add i16 %713, %call.i.2.4.3
  store i16 %add21.2.4.3, i16* %arrayidx11.2.4.3, align 2, !tbaa !3
  %arrayidx9.2.5.3 = getelementptr inbounds i16, i16* %r, i64 229
  %714 = load i16, i16* %arrayidx9.2.5.3, align 2, !tbaa !3
  %conv1.i.2.5.3 = sext i16 %714 to i32
  %mul.i.2.5.3 = mul nsw i32 %conv1.i.2.5.3, 202
  %call.i.2.5.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.5.3) #2
  %arrayidx11.2.5.3 = getelementptr inbounds i16, i16* %r, i64 197
  %715 = load i16, i16* %arrayidx11.2.5.3, align 2, !tbaa !3
  %sub.2.5.3 = sub i16 %715, %call.i.2.5.3
  store i16 %sub.2.5.3, i16* %arrayidx9.2.5.3, align 2, !tbaa !3
  %add21.2.5.3 = add i16 %715, %call.i.2.5.3
  store i16 %add21.2.5.3, i16* %arrayidx11.2.5.3, align 2, !tbaa !3
  %arrayidx9.2.6.3 = getelementptr inbounds i16, i16* %r, i64 230
  %716 = load i16, i16* %arrayidx9.2.6.3, align 2, !tbaa !3
  %conv1.i.2.6.3 = sext i16 %716 to i32
  %mul.i.2.6.3 = mul nsw i32 %conv1.i.2.6.3, 202
  %call.i.2.6.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.6.3) #2
  %arrayidx11.2.6.3 = getelementptr inbounds i16, i16* %r, i64 198
  %717 = load i16, i16* %arrayidx11.2.6.3, align 2, !tbaa !3
  %sub.2.6.3 = sub i16 %717, %call.i.2.6.3
  store i16 %sub.2.6.3, i16* %arrayidx9.2.6.3, align 2, !tbaa !3
  %add21.2.6.3 = add i16 %717, %call.i.2.6.3
  store i16 %add21.2.6.3, i16* %arrayidx11.2.6.3, align 2, !tbaa !3
  %arrayidx9.2.7.3 = getelementptr inbounds i16, i16* %r, i64 231
  %718 = load i16, i16* %arrayidx9.2.7.3, align 2, !tbaa !3
  %conv1.i.2.7.3 = sext i16 %718 to i32
  %mul.i.2.7.3 = mul nsw i32 %conv1.i.2.7.3, 202
  %call.i.2.7.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.7.3) #2
  %arrayidx11.2.7.3 = getelementptr inbounds i16, i16* %r, i64 199
  %719 = load i16, i16* %arrayidx11.2.7.3, align 2, !tbaa !3
  %sub.2.7.3 = sub i16 %719, %call.i.2.7.3
  store i16 %sub.2.7.3, i16* %arrayidx9.2.7.3, align 2, !tbaa !3
  %add21.2.7.3 = add i16 %719, %call.i.2.7.3
  store i16 %add21.2.7.3, i16* %arrayidx11.2.7.3, align 2, !tbaa !3
  %arrayidx9.2.8.3 = getelementptr inbounds i16, i16* %r, i64 232
  %720 = load i16, i16* %arrayidx9.2.8.3, align 2, !tbaa !3
  %conv1.i.2.8.3 = sext i16 %720 to i32
  %mul.i.2.8.3 = mul nsw i32 %conv1.i.2.8.3, 202
  %call.i.2.8.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.8.3) #2
  %arrayidx11.2.8.3 = getelementptr inbounds i16, i16* %r, i64 200
  %721 = load i16, i16* %arrayidx11.2.8.3, align 2, !tbaa !3
  %sub.2.8.3 = sub i16 %721, %call.i.2.8.3
  store i16 %sub.2.8.3, i16* %arrayidx9.2.8.3, align 2, !tbaa !3
  %add21.2.8.3 = add i16 %721, %call.i.2.8.3
  store i16 %add21.2.8.3, i16* %arrayidx11.2.8.3, align 2, !tbaa !3
  %arrayidx9.2.9.3 = getelementptr inbounds i16, i16* %r, i64 233
  %722 = load i16, i16* %arrayidx9.2.9.3, align 2, !tbaa !3
  %conv1.i.2.9.3 = sext i16 %722 to i32
  %mul.i.2.9.3 = mul nsw i32 %conv1.i.2.9.3, 202
  %call.i.2.9.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.9.3) #2
  %arrayidx11.2.9.3 = getelementptr inbounds i16, i16* %r, i64 201
  %723 = load i16, i16* %arrayidx11.2.9.3, align 2, !tbaa !3
  %sub.2.9.3 = sub i16 %723, %call.i.2.9.3
  store i16 %sub.2.9.3, i16* %arrayidx9.2.9.3, align 2, !tbaa !3
  %add21.2.9.3 = add i16 %723, %call.i.2.9.3
  store i16 %add21.2.9.3, i16* %arrayidx11.2.9.3, align 2, !tbaa !3
  %arrayidx9.2.10.3 = getelementptr inbounds i16, i16* %r, i64 234
  %724 = load i16, i16* %arrayidx9.2.10.3, align 2, !tbaa !3
  %conv1.i.2.10.3 = sext i16 %724 to i32
  %mul.i.2.10.3 = mul nsw i32 %conv1.i.2.10.3, 202
  %call.i.2.10.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.10.3) #2
  %arrayidx11.2.10.3 = getelementptr inbounds i16, i16* %r, i64 202
  %725 = load i16, i16* %arrayidx11.2.10.3, align 2, !tbaa !3
  %sub.2.10.3 = sub i16 %725, %call.i.2.10.3
  store i16 %sub.2.10.3, i16* %arrayidx9.2.10.3, align 2, !tbaa !3
  %add21.2.10.3 = add i16 %725, %call.i.2.10.3
  store i16 %add21.2.10.3, i16* %arrayidx11.2.10.3, align 2, !tbaa !3
  %arrayidx9.2.11.3 = getelementptr inbounds i16, i16* %r, i64 235
  %726 = load i16, i16* %arrayidx9.2.11.3, align 2, !tbaa !3
  %conv1.i.2.11.3 = sext i16 %726 to i32
  %mul.i.2.11.3 = mul nsw i32 %conv1.i.2.11.3, 202
  %call.i.2.11.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.11.3) #2
  %arrayidx11.2.11.3 = getelementptr inbounds i16, i16* %r, i64 203
  %727 = load i16, i16* %arrayidx11.2.11.3, align 2, !tbaa !3
  %sub.2.11.3 = sub i16 %727, %call.i.2.11.3
  store i16 %sub.2.11.3, i16* %arrayidx9.2.11.3, align 2, !tbaa !3
  %add21.2.11.3 = add i16 %727, %call.i.2.11.3
  store i16 %add21.2.11.3, i16* %arrayidx11.2.11.3, align 2, !tbaa !3
  %arrayidx9.2.12.3 = getelementptr inbounds i16, i16* %r, i64 236
  %728 = load i16, i16* %arrayidx9.2.12.3, align 2, !tbaa !3
  %conv1.i.2.12.3 = sext i16 %728 to i32
  %mul.i.2.12.3 = mul nsw i32 %conv1.i.2.12.3, 202
  %call.i.2.12.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.12.3) #2
  %arrayidx11.2.12.3 = getelementptr inbounds i16, i16* %r, i64 204
  %729 = load i16, i16* %arrayidx11.2.12.3, align 2, !tbaa !3
  %sub.2.12.3 = sub i16 %729, %call.i.2.12.3
  store i16 %sub.2.12.3, i16* %arrayidx9.2.12.3, align 2, !tbaa !3
  %add21.2.12.3 = add i16 %729, %call.i.2.12.3
  store i16 %add21.2.12.3, i16* %arrayidx11.2.12.3, align 2, !tbaa !3
  %arrayidx9.2.13.3 = getelementptr inbounds i16, i16* %r, i64 237
  %730 = load i16, i16* %arrayidx9.2.13.3, align 2, !tbaa !3
  %conv1.i.2.13.3 = sext i16 %730 to i32
  %mul.i.2.13.3 = mul nsw i32 %conv1.i.2.13.3, 202
  %call.i.2.13.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.13.3) #2
  %arrayidx11.2.13.3 = getelementptr inbounds i16, i16* %r, i64 205
  %731 = load i16, i16* %arrayidx11.2.13.3, align 2, !tbaa !3
  %sub.2.13.3 = sub i16 %731, %call.i.2.13.3
  store i16 %sub.2.13.3, i16* %arrayidx9.2.13.3, align 2, !tbaa !3
  %add21.2.13.3 = add i16 %731, %call.i.2.13.3
  store i16 %add21.2.13.3, i16* %arrayidx11.2.13.3, align 2, !tbaa !3
  %arrayidx9.2.14.3 = getelementptr inbounds i16, i16* %r, i64 238
  %732 = load i16, i16* %arrayidx9.2.14.3, align 2, !tbaa !3
  %conv1.i.2.14.3 = sext i16 %732 to i32
  %mul.i.2.14.3 = mul nsw i32 %conv1.i.2.14.3, 202
  %call.i.2.14.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.14.3) #2
  %arrayidx11.2.14.3 = getelementptr inbounds i16, i16* %r, i64 206
  %733 = load i16, i16* %arrayidx11.2.14.3, align 2, !tbaa !3
  %sub.2.14.3 = sub i16 %733, %call.i.2.14.3
  store i16 %sub.2.14.3, i16* %arrayidx9.2.14.3, align 2, !tbaa !3
  %add21.2.14.3 = add i16 %733, %call.i.2.14.3
  store i16 %add21.2.14.3, i16* %arrayidx11.2.14.3, align 2, !tbaa !3
  %arrayidx9.2.15.3 = getelementptr inbounds i16, i16* %r, i64 239
  %734 = load i16, i16* %arrayidx9.2.15.3, align 2, !tbaa !3
  %conv1.i.2.15.3 = sext i16 %734 to i32
  %mul.i.2.15.3 = mul nsw i32 %conv1.i.2.15.3, 202
  %call.i.2.15.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.15.3) #2
  %arrayidx11.2.15.3 = getelementptr inbounds i16, i16* %r, i64 207
  %735 = load i16, i16* %arrayidx11.2.15.3, align 2, !tbaa !3
  %sub.2.15.3 = sub i16 %735, %call.i.2.15.3
  store i16 %sub.2.15.3, i16* %arrayidx9.2.15.3, align 2, !tbaa !3
  %add21.2.15.3 = add i16 %735, %call.i.2.15.3
  store i16 %add21.2.15.3, i16* %arrayidx11.2.15.3, align 2, !tbaa !3
  %arrayidx9.2.16.3 = getelementptr inbounds i16, i16* %r, i64 240
  %736 = load i16, i16* %arrayidx9.2.16.3, align 2, !tbaa !3
  %conv1.i.2.16.3 = sext i16 %736 to i32
  %mul.i.2.16.3 = mul nsw i32 %conv1.i.2.16.3, 202
  %call.i.2.16.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.16.3) #2
  %arrayidx11.2.16.3 = getelementptr inbounds i16, i16* %r, i64 208
  %737 = load i16, i16* %arrayidx11.2.16.3, align 2, !tbaa !3
  %sub.2.16.3 = sub i16 %737, %call.i.2.16.3
  store i16 %sub.2.16.3, i16* %arrayidx9.2.16.3, align 2, !tbaa !3
  %add21.2.16.3 = add i16 %737, %call.i.2.16.3
  store i16 %add21.2.16.3, i16* %arrayidx11.2.16.3, align 2, !tbaa !3
  %arrayidx9.2.17.3 = getelementptr inbounds i16, i16* %r, i64 241
  %738 = load i16, i16* %arrayidx9.2.17.3, align 2, !tbaa !3
  %conv1.i.2.17.3 = sext i16 %738 to i32
  %mul.i.2.17.3 = mul nsw i32 %conv1.i.2.17.3, 202
  %call.i.2.17.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.17.3) #2
  %arrayidx11.2.17.3 = getelementptr inbounds i16, i16* %r, i64 209
  %739 = load i16, i16* %arrayidx11.2.17.3, align 2, !tbaa !3
  %sub.2.17.3 = sub i16 %739, %call.i.2.17.3
  store i16 %sub.2.17.3, i16* %arrayidx9.2.17.3, align 2, !tbaa !3
  %add21.2.17.3 = add i16 %739, %call.i.2.17.3
  store i16 %add21.2.17.3, i16* %arrayidx11.2.17.3, align 2, !tbaa !3
  %arrayidx9.2.18.3 = getelementptr inbounds i16, i16* %r, i64 242
  %740 = load i16, i16* %arrayidx9.2.18.3, align 2, !tbaa !3
  %conv1.i.2.18.3 = sext i16 %740 to i32
  %mul.i.2.18.3 = mul nsw i32 %conv1.i.2.18.3, 202
  %call.i.2.18.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.18.3) #2
  %arrayidx11.2.18.3 = getelementptr inbounds i16, i16* %r, i64 210
  %741 = load i16, i16* %arrayidx11.2.18.3, align 2, !tbaa !3
  %sub.2.18.3 = sub i16 %741, %call.i.2.18.3
  store i16 %sub.2.18.3, i16* %arrayidx9.2.18.3, align 2, !tbaa !3
  %add21.2.18.3 = add i16 %741, %call.i.2.18.3
  store i16 %add21.2.18.3, i16* %arrayidx11.2.18.3, align 2, !tbaa !3
  %arrayidx9.2.19.3 = getelementptr inbounds i16, i16* %r, i64 243
  %742 = load i16, i16* %arrayidx9.2.19.3, align 2, !tbaa !3
  %conv1.i.2.19.3 = sext i16 %742 to i32
  %mul.i.2.19.3 = mul nsw i32 %conv1.i.2.19.3, 202
  %call.i.2.19.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.19.3) #2
  %arrayidx11.2.19.3 = getelementptr inbounds i16, i16* %r, i64 211
  %743 = load i16, i16* %arrayidx11.2.19.3, align 2, !tbaa !3
  %sub.2.19.3 = sub i16 %743, %call.i.2.19.3
  store i16 %sub.2.19.3, i16* %arrayidx9.2.19.3, align 2, !tbaa !3
  %add21.2.19.3 = add i16 %743, %call.i.2.19.3
  store i16 %add21.2.19.3, i16* %arrayidx11.2.19.3, align 2, !tbaa !3
  %arrayidx9.2.20.3 = getelementptr inbounds i16, i16* %r, i64 244
  %744 = load i16, i16* %arrayidx9.2.20.3, align 2, !tbaa !3
  %conv1.i.2.20.3 = sext i16 %744 to i32
  %mul.i.2.20.3 = mul nsw i32 %conv1.i.2.20.3, 202
  %call.i.2.20.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.20.3) #2
  %arrayidx11.2.20.3 = getelementptr inbounds i16, i16* %r, i64 212
  %745 = load i16, i16* %arrayidx11.2.20.3, align 2, !tbaa !3
  %sub.2.20.3 = sub i16 %745, %call.i.2.20.3
  store i16 %sub.2.20.3, i16* %arrayidx9.2.20.3, align 2, !tbaa !3
  %add21.2.20.3 = add i16 %745, %call.i.2.20.3
  store i16 %add21.2.20.3, i16* %arrayidx11.2.20.3, align 2, !tbaa !3
  %arrayidx9.2.21.3 = getelementptr inbounds i16, i16* %r, i64 245
  %746 = load i16, i16* %arrayidx9.2.21.3, align 2, !tbaa !3
  %conv1.i.2.21.3 = sext i16 %746 to i32
  %mul.i.2.21.3 = mul nsw i32 %conv1.i.2.21.3, 202
  %call.i.2.21.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.21.3) #2
  %arrayidx11.2.21.3 = getelementptr inbounds i16, i16* %r, i64 213
  %747 = load i16, i16* %arrayidx11.2.21.3, align 2, !tbaa !3
  %sub.2.21.3 = sub i16 %747, %call.i.2.21.3
  store i16 %sub.2.21.3, i16* %arrayidx9.2.21.3, align 2, !tbaa !3
  %add21.2.21.3 = add i16 %747, %call.i.2.21.3
  store i16 %add21.2.21.3, i16* %arrayidx11.2.21.3, align 2, !tbaa !3
  %arrayidx9.2.22.3 = getelementptr inbounds i16, i16* %r, i64 246
  %748 = load i16, i16* %arrayidx9.2.22.3, align 2, !tbaa !3
  %conv1.i.2.22.3 = sext i16 %748 to i32
  %mul.i.2.22.3 = mul nsw i32 %conv1.i.2.22.3, 202
  %call.i.2.22.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.22.3) #2
  %arrayidx11.2.22.3 = getelementptr inbounds i16, i16* %r, i64 214
  %749 = load i16, i16* %arrayidx11.2.22.3, align 2, !tbaa !3
  %sub.2.22.3 = sub i16 %749, %call.i.2.22.3
  store i16 %sub.2.22.3, i16* %arrayidx9.2.22.3, align 2, !tbaa !3
  %add21.2.22.3 = add i16 %749, %call.i.2.22.3
  store i16 %add21.2.22.3, i16* %arrayidx11.2.22.3, align 2, !tbaa !3
  %arrayidx9.2.23.3 = getelementptr inbounds i16, i16* %r, i64 247
  %750 = load i16, i16* %arrayidx9.2.23.3, align 2, !tbaa !3
  %conv1.i.2.23.3 = sext i16 %750 to i32
  %mul.i.2.23.3 = mul nsw i32 %conv1.i.2.23.3, 202
  %call.i.2.23.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.23.3) #2
  %arrayidx11.2.23.3 = getelementptr inbounds i16, i16* %r, i64 215
  %751 = load i16, i16* %arrayidx11.2.23.3, align 2, !tbaa !3
  %sub.2.23.3 = sub i16 %751, %call.i.2.23.3
  store i16 %sub.2.23.3, i16* %arrayidx9.2.23.3, align 2, !tbaa !3
  %add21.2.23.3 = add i16 %751, %call.i.2.23.3
  store i16 %add21.2.23.3, i16* %arrayidx11.2.23.3, align 2, !tbaa !3
  %arrayidx9.2.24.3 = getelementptr inbounds i16, i16* %r, i64 248
  %752 = load i16, i16* %arrayidx9.2.24.3, align 2, !tbaa !3
  %conv1.i.2.24.3 = sext i16 %752 to i32
  %mul.i.2.24.3 = mul nsw i32 %conv1.i.2.24.3, 202
  %call.i.2.24.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.24.3) #2
  %arrayidx11.2.24.3 = getelementptr inbounds i16, i16* %r, i64 216
  %753 = load i16, i16* %arrayidx11.2.24.3, align 2, !tbaa !3
  %sub.2.24.3 = sub i16 %753, %call.i.2.24.3
  store i16 %sub.2.24.3, i16* %arrayidx9.2.24.3, align 2, !tbaa !3
  %add21.2.24.3 = add i16 %753, %call.i.2.24.3
  store i16 %add21.2.24.3, i16* %arrayidx11.2.24.3, align 2, !tbaa !3
  %arrayidx9.2.25.3 = getelementptr inbounds i16, i16* %r, i64 249
  %754 = load i16, i16* %arrayidx9.2.25.3, align 2, !tbaa !3
  %conv1.i.2.25.3 = sext i16 %754 to i32
  %mul.i.2.25.3 = mul nsw i32 %conv1.i.2.25.3, 202
  %call.i.2.25.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.25.3) #2
  %arrayidx11.2.25.3 = getelementptr inbounds i16, i16* %r, i64 217
  %755 = load i16, i16* %arrayidx11.2.25.3, align 2, !tbaa !3
  %sub.2.25.3 = sub i16 %755, %call.i.2.25.3
  store i16 %sub.2.25.3, i16* %arrayidx9.2.25.3, align 2, !tbaa !3
  %add21.2.25.3 = add i16 %755, %call.i.2.25.3
  store i16 %add21.2.25.3, i16* %arrayidx11.2.25.3, align 2, !tbaa !3
  %arrayidx9.2.26.3 = getelementptr inbounds i16, i16* %r, i64 250
  %756 = load i16, i16* %arrayidx9.2.26.3, align 2, !tbaa !3
  %conv1.i.2.26.3 = sext i16 %756 to i32
  %mul.i.2.26.3 = mul nsw i32 %conv1.i.2.26.3, 202
  %call.i.2.26.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.26.3) #2
  %arrayidx11.2.26.3 = getelementptr inbounds i16, i16* %r, i64 218
  %757 = load i16, i16* %arrayidx11.2.26.3, align 2, !tbaa !3
  %sub.2.26.3 = sub i16 %757, %call.i.2.26.3
  store i16 %sub.2.26.3, i16* %arrayidx9.2.26.3, align 2, !tbaa !3
  %add21.2.26.3 = add i16 %757, %call.i.2.26.3
  store i16 %add21.2.26.3, i16* %arrayidx11.2.26.3, align 2, !tbaa !3
  %arrayidx9.2.27.3 = getelementptr inbounds i16, i16* %r, i64 251
  %758 = load i16, i16* %arrayidx9.2.27.3, align 2, !tbaa !3
  %conv1.i.2.27.3 = sext i16 %758 to i32
  %mul.i.2.27.3 = mul nsw i32 %conv1.i.2.27.3, 202
  %call.i.2.27.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.27.3) #2
  %arrayidx11.2.27.3 = getelementptr inbounds i16, i16* %r, i64 219
  %759 = load i16, i16* %arrayidx11.2.27.3, align 2, !tbaa !3
  %sub.2.27.3 = sub i16 %759, %call.i.2.27.3
  store i16 %sub.2.27.3, i16* %arrayidx9.2.27.3, align 2, !tbaa !3
  %add21.2.27.3 = add i16 %759, %call.i.2.27.3
  store i16 %add21.2.27.3, i16* %arrayidx11.2.27.3, align 2, !tbaa !3
  %arrayidx9.2.28.3 = getelementptr inbounds i16, i16* %r, i64 252
  %760 = load i16, i16* %arrayidx9.2.28.3, align 2, !tbaa !3
  %conv1.i.2.28.3 = sext i16 %760 to i32
  %mul.i.2.28.3 = mul nsw i32 %conv1.i.2.28.3, 202
  %call.i.2.28.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.28.3) #2
  %arrayidx11.2.28.3 = getelementptr inbounds i16, i16* %r, i64 220
  %761 = load i16, i16* %arrayidx11.2.28.3, align 2, !tbaa !3
  %sub.2.28.3 = sub i16 %761, %call.i.2.28.3
  store i16 %sub.2.28.3, i16* %arrayidx9.2.28.3, align 2, !tbaa !3
  %add21.2.28.3 = add i16 %761, %call.i.2.28.3
  store i16 %add21.2.28.3, i16* %arrayidx11.2.28.3, align 2, !tbaa !3
  %arrayidx9.2.29.3 = getelementptr inbounds i16, i16* %r, i64 253
  %762 = load i16, i16* %arrayidx9.2.29.3, align 2, !tbaa !3
  %conv1.i.2.29.3 = sext i16 %762 to i32
  %mul.i.2.29.3 = mul nsw i32 %conv1.i.2.29.3, 202
  %call.i.2.29.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.29.3) #2
  %arrayidx11.2.29.3 = getelementptr inbounds i16, i16* %r, i64 221
  %763 = load i16, i16* %arrayidx11.2.29.3, align 2, !tbaa !3
  %sub.2.29.3 = sub i16 %763, %call.i.2.29.3
  store i16 %sub.2.29.3, i16* %arrayidx9.2.29.3, align 2, !tbaa !3
  %add21.2.29.3 = add i16 %763, %call.i.2.29.3
  store i16 %add21.2.29.3, i16* %arrayidx11.2.29.3, align 2, !tbaa !3
  %arrayidx9.2.30.3 = getelementptr inbounds i16, i16* %r, i64 254
  %764 = load i16, i16* %arrayidx9.2.30.3, align 2, !tbaa !3
  %conv1.i.2.30.3 = sext i16 %764 to i32
  %mul.i.2.30.3 = mul nsw i32 %conv1.i.2.30.3, 202
  %call.i.2.30.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.30.3) #2
  %arrayidx11.2.30.3 = getelementptr inbounds i16, i16* %r, i64 222
  %765 = load i16, i16* %arrayidx11.2.30.3, align 2, !tbaa !3
  %sub.2.30.3 = sub i16 %765, %call.i.2.30.3
  store i16 %sub.2.30.3, i16* %arrayidx9.2.30.3, align 2, !tbaa !3
  %add21.2.30.3 = add i16 %765, %call.i.2.30.3
  store i16 %add21.2.30.3, i16* %arrayidx11.2.30.3, align 2, !tbaa !3
  %arrayidx9.2.31.3 = getelementptr inbounds i16, i16* %r, i64 255
  %766 = load i16, i16* %arrayidx9.2.31.3, align 2, !tbaa !3
  %conv1.i.2.31.3 = sext i16 %766 to i32
  %mul.i.2.31.3 = mul nsw i32 %conv1.i.2.31.3, 202
  %call.i.2.31.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.31.3) #2
  %arrayidx11.2.31.3 = getelementptr inbounds i16, i16* %r, i64 223
  %767 = load i16, i16* %arrayidx11.2.31.3, align 2, !tbaa !3
  %sub.2.31.3 = sub i16 %767, %call.i.2.31.3
  store i16 %sub.2.31.3, i16* %arrayidx9.2.31.3, align 2, !tbaa !3
  %add21.2.31.3 = add i16 %767, %call.i.2.31.3
  store i16 %add21.2.31.3, i16* %arrayidx11.2.31.3, align 2, !tbaa !3
  %arrayidx9.3 = getelementptr inbounds i16, i16* %r, i64 16
  %768 = load i16, i16* %arrayidx9.3, align 2, !tbaa !3
  %conv1.i.3 = sext i16 %768 to i32
  %mul.i.3 = mul nsw i32 %conv1.i.3, -171
  %call.i.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3) #2
  %769 = load i16, i16* %r, align 2, !tbaa !3
  %sub.3 = sub i16 %769, %call.i.3
  store i16 %sub.3, i16* %arrayidx9.3, align 2, !tbaa !3
  %add21.3 = add i16 %769, %call.i.3
  store i16 %add21.3, i16* %r, align 2, !tbaa !3
  %arrayidx9.3.1 = getelementptr inbounds i16, i16* %r, i64 17
  %770 = load i16, i16* %arrayidx9.3.1, align 2, !tbaa !3
  %conv1.i.3.1 = sext i16 %770 to i32
  %mul.i.3.1 = mul nsw i32 %conv1.i.3.1, -171
  %call.i.3.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.1) #2
  %arrayidx11.3.1 = getelementptr inbounds i16, i16* %r, i64 1
  %771 = load i16, i16* %arrayidx11.3.1, align 2, !tbaa !3
  %sub.3.1 = sub i16 %771, %call.i.3.1
  store i16 %sub.3.1, i16* %arrayidx9.3.1, align 2, !tbaa !3
  %add21.3.1 = add i16 %771, %call.i.3.1
  store i16 %add21.3.1, i16* %arrayidx11.3.1, align 2, !tbaa !3
  %arrayidx9.3.2 = getelementptr inbounds i16, i16* %r, i64 18
  %772 = load i16, i16* %arrayidx9.3.2, align 2, !tbaa !3
  %conv1.i.3.2 = sext i16 %772 to i32
  %mul.i.3.2 = mul nsw i32 %conv1.i.3.2, -171
  %call.i.3.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.2) #2
  %arrayidx11.3.2 = getelementptr inbounds i16, i16* %r, i64 2
  %773 = load i16, i16* %arrayidx11.3.2, align 2, !tbaa !3
  %sub.3.2 = sub i16 %773, %call.i.3.2
  store i16 %sub.3.2, i16* %arrayidx9.3.2, align 2, !tbaa !3
  %add21.3.2 = add i16 %773, %call.i.3.2
  store i16 %add21.3.2, i16* %arrayidx11.3.2, align 2, !tbaa !3
  %arrayidx9.3.3 = getelementptr inbounds i16, i16* %r, i64 19
  %774 = load i16, i16* %arrayidx9.3.3, align 2, !tbaa !3
  %conv1.i.3.3 = sext i16 %774 to i32
  %mul.i.3.3 = mul nsw i32 %conv1.i.3.3, -171
  %call.i.3.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.3) #2
  %arrayidx11.3.3 = getelementptr inbounds i16, i16* %r, i64 3
  %775 = load i16, i16* %arrayidx11.3.3, align 2, !tbaa !3
  %sub.3.3 = sub i16 %775, %call.i.3.3
  store i16 %sub.3.3, i16* %arrayidx9.3.3, align 2, !tbaa !3
  %add21.3.3 = add i16 %775, %call.i.3.3
  store i16 %add21.3.3, i16* %arrayidx11.3.3, align 2, !tbaa !3
  %arrayidx9.3.4 = getelementptr inbounds i16, i16* %r, i64 20
  %776 = load i16, i16* %arrayidx9.3.4, align 2, !tbaa !3
  %conv1.i.3.4 = sext i16 %776 to i32
  %mul.i.3.4 = mul nsw i32 %conv1.i.3.4, -171
  %call.i.3.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.4) #2
  %arrayidx11.3.4 = getelementptr inbounds i16, i16* %r, i64 4
  %777 = load i16, i16* %arrayidx11.3.4, align 2, !tbaa !3
  %sub.3.4 = sub i16 %777, %call.i.3.4
  store i16 %sub.3.4, i16* %arrayidx9.3.4, align 2, !tbaa !3
  %add21.3.4 = add i16 %777, %call.i.3.4
  store i16 %add21.3.4, i16* %arrayidx11.3.4, align 2, !tbaa !3
  %arrayidx9.3.5 = getelementptr inbounds i16, i16* %r, i64 21
  %778 = load i16, i16* %arrayidx9.3.5, align 2, !tbaa !3
  %conv1.i.3.5 = sext i16 %778 to i32
  %mul.i.3.5 = mul nsw i32 %conv1.i.3.5, -171
  %call.i.3.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.5) #2
  %arrayidx11.3.5 = getelementptr inbounds i16, i16* %r, i64 5
  %779 = load i16, i16* %arrayidx11.3.5, align 2, !tbaa !3
  %sub.3.5 = sub i16 %779, %call.i.3.5
  store i16 %sub.3.5, i16* %arrayidx9.3.5, align 2, !tbaa !3
  %add21.3.5 = add i16 %779, %call.i.3.5
  store i16 %add21.3.5, i16* %arrayidx11.3.5, align 2, !tbaa !3
  %arrayidx9.3.6 = getelementptr inbounds i16, i16* %r, i64 22
  %780 = load i16, i16* %arrayidx9.3.6, align 2, !tbaa !3
  %conv1.i.3.6 = sext i16 %780 to i32
  %mul.i.3.6 = mul nsw i32 %conv1.i.3.6, -171
  %call.i.3.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.6) #2
  %arrayidx11.3.6 = getelementptr inbounds i16, i16* %r, i64 6
  %781 = load i16, i16* %arrayidx11.3.6, align 2, !tbaa !3
  %sub.3.6 = sub i16 %781, %call.i.3.6
  store i16 %sub.3.6, i16* %arrayidx9.3.6, align 2, !tbaa !3
  %add21.3.6 = add i16 %781, %call.i.3.6
  store i16 %add21.3.6, i16* %arrayidx11.3.6, align 2, !tbaa !3
  %arrayidx9.3.7 = getelementptr inbounds i16, i16* %r, i64 23
  %782 = load i16, i16* %arrayidx9.3.7, align 2, !tbaa !3
  %conv1.i.3.7 = sext i16 %782 to i32
  %mul.i.3.7 = mul nsw i32 %conv1.i.3.7, -171
  %call.i.3.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.7) #2
  %arrayidx11.3.7 = getelementptr inbounds i16, i16* %r, i64 7
  %783 = load i16, i16* %arrayidx11.3.7, align 2, !tbaa !3
  %sub.3.7 = sub i16 %783, %call.i.3.7
  store i16 %sub.3.7, i16* %arrayidx9.3.7, align 2, !tbaa !3
  %add21.3.7 = add i16 %783, %call.i.3.7
  store i16 %add21.3.7, i16* %arrayidx11.3.7, align 2, !tbaa !3
  %arrayidx9.3.8 = getelementptr inbounds i16, i16* %r, i64 24
  %784 = load i16, i16* %arrayidx9.3.8, align 2, !tbaa !3
  %conv1.i.3.8 = sext i16 %784 to i32
  %mul.i.3.8 = mul nsw i32 %conv1.i.3.8, -171
  %call.i.3.8 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.8) #2
  %arrayidx11.3.8 = getelementptr inbounds i16, i16* %r, i64 8
  %785 = load i16, i16* %arrayidx11.3.8, align 2, !tbaa !3
  %sub.3.8 = sub i16 %785, %call.i.3.8
  store i16 %sub.3.8, i16* %arrayidx9.3.8, align 2, !tbaa !3
  %add21.3.8 = add i16 %785, %call.i.3.8
  store i16 %add21.3.8, i16* %arrayidx11.3.8, align 2, !tbaa !3
  %arrayidx9.3.9 = getelementptr inbounds i16, i16* %r, i64 25
  %786 = load i16, i16* %arrayidx9.3.9, align 2, !tbaa !3
  %conv1.i.3.9 = sext i16 %786 to i32
  %mul.i.3.9 = mul nsw i32 %conv1.i.3.9, -171
  %call.i.3.9 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.9) #2
  %arrayidx11.3.9 = getelementptr inbounds i16, i16* %r, i64 9
  %787 = load i16, i16* %arrayidx11.3.9, align 2, !tbaa !3
  %sub.3.9 = sub i16 %787, %call.i.3.9
  store i16 %sub.3.9, i16* %arrayidx9.3.9, align 2, !tbaa !3
  %add21.3.9 = add i16 %787, %call.i.3.9
  store i16 %add21.3.9, i16* %arrayidx11.3.9, align 2, !tbaa !3
  %arrayidx9.3.10 = getelementptr inbounds i16, i16* %r, i64 26
  %788 = load i16, i16* %arrayidx9.3.10, align 2, !tbaa !3
  %conv1.i.3.10 = sext i16 %788 to i32
  %mul.i.3.10 = mul nsw i32 %conv1.i.3.10, -171
  %call.i.3.10 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.10) #2
  %arrayidx11.3.10 = getelementptr inbounds i16, i16* %r, i64 10
  %789 = load i16, i16* %arrayidx11.3.10, align 2, !tbaa !3
  %sub.3.10 = sub i16 %789, %call.i.3.10
  store i16 %sub.3.10, i16* %arrayidx9.3.10, align 2, !tbaa !3
  %add21.3.10 = add i16 %789, %call.i.3.10
  store i16 %add21.3.10, i16* %arrayidx11.3.10, align 2, !tbaa !3
  %arrayidx9.3.11 = getelementptr inbounds i16, i16* %r, i64 27
  %790 = load i16, i16* %arrayidx9.3.11, align 2, !tbaa !3
  %conv1.i.3.11 = sext i16 %790 to i32
  %mul.i.3.11 = mul nsw i32 %conv1.i.3.11, -171
  %call.i.3.11 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.11) #2
  %arrayidx11.3.11 = getelementptr inbounds i16, i16* %r, i64 11
  %791 = load i16, i16* %arrayidx11.3.11, align 2, !tbaa !3
  %sub.3.11 = sub i16 %791, %call.i.3.11
  store i16 %sub.3.11, i16* %arrayidx9.3.11, align 2, !tbaa !3
  %add21.3.11 = add i16 %791, %call.i.3.11
  store i16 %add21.3.11, i16* %arrayidx11.3.11, align 2, !tbaa !3
  %arrayidx9.3.12 = getelementptr inbounds i16, i16* %r, i64 28
  %792 = load i16, i16* %arrayidx9.3.12, align 2, !tbaa !3
  %conv1.i.3.12 = sext i16 %792 to i32
  %mul.i.3.12 = mul nsw i32 %conv1.i.3.12, -171
  %call.i.3.12 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.12) #2
  %arrayidx11.3.12 = getelementptr inbounds i16, i16* %r, i64 12
  %793 = load i16, i16* %arrayidx11.3.12, align 2, !tbaa !3
  %sub.3.12 = sub i16 %793, %call.i.3.12
  store i16 %sub.3.12, i16* %arrayidx9.3.12, align 2, !tbaa !3
  %add21.3.12 = add i16 %793, %call.i.3.12
  store i16 %add21.3.12, i16* %arrayidx11.3.12, align 2, !tbaa !3
  %arrayidx9.3.13 = getelementptr inbounds i16, i16* %r, i64 29
  %794 = load i16, i16* %arrayidx9.3.13, align 2, !tbaa !3
  %conv1.i.3.13 = sext i16 %794 to i32
  %mul.i.3.13 = mul nsw i32 %conv1.i.3.13, -171
  %call.i.3.13 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.13) #2
  %arrayidx11.3.13 = getelementptr inbounds i16, i16* %r, i64 13
  %795 = load i16, i16* %arrayidx11.3.13, align 2, !tbaa !3
  %sub.3.13 = sub i16 %795, %call.i.3.13
  store i16 %sub.3.13, i16* %arrayidx9.3.13, align 2, !tbaa !3
  %add21.3.13 = add i16 %795, %call.i.3.13
  store i16 %add21.3.13, i16* %arrayidx11.3.13, align 2, !tbaa !3
  %arrayidx9.3.14 = getelementptr inbounds i16, i16* %r, i64 30
  %796 = load i16, i16* %arrayidx9.3.14, align 2, !tbaa !3
  %conv1.i.3.14 = sext i16 %796 to i32
  %mul.i.3.14 = mul nsw i32 %conv1.i.3.14, -171
  %call.i.3.14 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.14) #2
  %arrayidx11.3.14 = getelementptr inbounds i16, i16* %r, i64 14
  %797 = load i16, i16* %arrayidx11.3.14, align 2, !tbaa !3
  %sub.3.14 = sub i16 %797, %call.i.3.14
  store i16 %sub.3.14, i16* %arrayidx9.3.14, align 2, !tbaa !3
  %add21.3.14 = add i16 %797, %call.i.3.14
  store i16 %add21.3.14, i16* %arrayidx11.3.14, align 2, !tbaa !3
  %arrayidx9.3.15 = getelementptr inbounds i16, i16* %r, i64 31
  %798 = load i16, i16* %arrayidx9.3.15, align 2, !tbaa !3
  %conv1.i.3.15 = sext i16 %798 to i32
  %mul.i.3.15 = mul nsw i32 %conv1.i.3.15, -171
  %call.i.3.15 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.15) #2
  %arrayidx11.3.15 = getelementptr inbounds i16, i16* %r, i64 15
  %799 = load i16, i16* %arrayidx11.3.15, align 2, !tbaa !3
  %sub.3.15 = sub i16 %799, %call.i.3.15
  store i16 %sub.3.15, i16* %arrayidx9.3.15, align 2, !tbaa !3
  %add21.3.15 = add i16 %799, %call.i.3.15
  store i16 %add21.3.15, i16* %arrayidx11.3.15, align 2, !tbaa !3
  %arrayidx9.3.1178 = getelementptr inbounds i16, i16* %r, i64 48
  %800 = load i16, i16* %arrayidx9.3.1178, align 2, !tbaa !3
  %conv1.i.3.1179 = sext i16 %800 to i32
  %mul.i.3.1180 = mul nsw i32 %conv1.i.3.1179, 622
  %call.i.3.1181 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.1180) #2
  %arrayidx11.3.1182 = getelementptr inbounds i16, i16* %r, i64 32
  %801 = load i16, i16* %arrayidx11.3.1182, align 2, !tbaa !3
  %sub.3.1183 = sub i16 %801, %call.i.3.1181
  store i16 %sub.3.1183, i16* %arrayidx9.3.1178, align 2, !tbaa !3
  %add21.3.1184 = add i16 %801, %call.i.3.1181
  store i16 %add21.3.1184, i16* %arrayidx11.3.1182, align 2, !tbaa !3
  %arrayidx9.3.1.1 = getelementptr inbounds i16, i16* %r, i64 49
  %802 = load i16, i16* %arrayidx9.3.1.1, align 2, !tbaa !3
  %conv1.i.3.1.1 = sext i16 %802 to i32
  %mul.i.3.1.1 = mul nsw i32 %conv1.i.3.1.1, 622
  %call.i.3.1.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.1.1) #2
  %arrayidx11.3.1.1 = getelementptr inbounds i16, i16* %r, i64 33
  %803 = load i16, i16* %arrayidx11.3.1.1, align 2, !tbaa !3
  %sub.3.1.1 = sub i16 %803, %call.i.3.1.1
  store i16 %sub.3.1.1, i16* %arrayidx9.3.1.1, align 2, !tbaa !3
  %add21.3.1.1 = add i16 %803, %call.i.3.1.1
  store i16 %add21.3.1.1, i16* %arrayidx11.3.1.1, align 2, !tbaa !3
  %arrayidx9.3.2.1 = getelementptr inbounds i16, i16* %r, i64 50
  %804 = load i16, i16* %arrayidx9.3.2.1, align 2, !tbaa !3
  %conv1.i.3.2.1 = sext i16 %804 to i32
  %mul.i.3.2.1 = mul nsw i32 %conv1.i.3.2.1, 622
  %call.i.3.2.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.2.1) #2
  %arrayidx11.3.2.1 = getelementptr inbounds i16, i16* %r, i64 34
  %805 = load i16, i16* %arrayidx11.3.2.1, align 2, !tbaa !3
  %sub.3.2.1 = sub i16 %805, %call.i.3.2.1
  store i16 %sub.3.2.1, i16* %arrayidx9.3.2.1, align 2, !tbaa !3
  %add21.3.2.1 = add i16 %805, %call.i.3.2.1
  store i16 %add21.3.2.1, i16* %arrayidx11.3.2.1, align 2, !tbaa !3
  %arrayidx9.3.3.1 = getelementptr inbounds i16, i16* %r, i64 51
  %806 = load i16, i16* %arrayidx9.3.3.1, align 2, !tbaa !3
  %conv1.i.3.3.1 = sext i16 %806 to i32
  %mul.i.3.3.1 = mul nsw i32 %conv1.i.3.3.1, 622
  %call.i.3.3.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.3.1) #2
  %arrayidx11.3.3.1 = getelementptr inbounds i16, i16* %r, i64 35
  %807 = load i16, i16* %arrayidx11.3.3.1, align 2, !tbaa !3
  %sub.3.3.1 = sub i16 %807, %call.i.3.3.1
  store i16 %sub.3.3.1, i16* %arrayidx9.3.3.1, align 2, !tbaa !3
  %add21.3.3.1 = add i16 %807, %call.i.3.3.1
  store i16 %add21.3.3.1, i16* %arrayidx11.3.3.1, align 2, !tbaa !3
  %arrayidx9.3.4.1 = getelementptr inbounds i16, i16* %r, i64 52
  %808 = load i16, i16* %arrayidx9.3.4.1, align 2, !tbaa !3
  %conv1.i.3.4.1 = sext i16 %808 to i32
  %mul.i.3.4.1 = mul nsw i32 %conv1.i.3.4.1, 622
  %call.i.3.4.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.4.1) #2
  %arrayidx11.3.4.1 = getelementptr inbounds i16, i16* %r, i64 36
  %809 = load i16, i16* %arrayidx11.3.4.1, align 2, !tbaa !3
  %sub.3.4.1 = sub i16 %809, %call.i.3.4.1
  store i16 %sub.3.4.1, i16* %arrayidx9.3.4.1, align 2, !tbaa !3
  %add21.3.4.1 = add i16 %809, %call.i.3.4.1
  store i16 %add21.3.4.1, i16* %arrayidx11.3.4.1, align 2, !tbaa !3
  %arrayidx9.3.5.1 = getelementptr inbounds i16, i16* %r, i64 53
  %810 = load i16, i16* %arrayidx9.3.5.1, align 2, !tbaa !3
  %conv1.i.3.5.1 = sext i16 %810 to i32
  %mul.i.3.5.1 = mul nsw i32 %conv1.i.3.5.1, 622
  %call.i.3.5.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.5.1) #2
  %arrayidx11.3.5.1 = getelementptr inbounds i16, i16* %r, i64 37
  %811 = load i16, i16* %arrayidx11.3.5.1, align 2, !tbaa !3
  %sub.3.5.1 = sub i16 %811, %call.i.3.5.1
  store i16 %sub.3.5.1, i16* %arrayidx9.3.5.1, align 2, !tbaa !3
  %add21.3.5.1 = add i16 %811, %call.i.3.5.1
  store i16 %add21.3.5.1, i16* %arrayidx11.3.5.1, align 2, !tbaa !3
  %arrayidx9.3.6.1 = getelementptr inbounds i16, i16* %r, i64 54
  %812 = load i16, i16* %arrayidx9.3.6.1, align 2, !tbaa !3
  %conv1.i.3.6.1 = sext i16 %812 to i32
  %mul.i.3.6.1 = mul nsw i32 %conv1.i.3.6.1, 622
  %call.i.3.6.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.6.1) #2
  %arrayidx11.3.6.1 = getelementptr inbounds i16, i16* %r, i64 38
  %813 = load i16, i16* %arrayidx11.3.6.1, align 2, !tbaa !3
  %sub.3.6.1 = sub i16 %813, %call.i.3.6.1
  store i16 %sub.3.6.1, i16* %arrayidx9.3.6.1, align 2, !tbaa !3
  %add21.3.6.1 = add i16 %813, %call.i.3.6.1
  store i16 %add21.3.6.1, i16* %arrayidx11.3.6.1, align 2, !tbaa !3
  %arrayidx9.3.7.1 = getelementptr inbounds i16, i16* %r, i64 55
  %814 = load i16, i16* %arrayidx9.3.7.1, align 2, !tbaa !3
  %conv1.i.3.7.1 = sext i16 %814 to i32
  %mul.i.3.7.1 = mul nsw i32 %conv1.i.3.7.1, 622
  %call.i.3.7.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.7.1) #2
  %arrayidx11.3.7.1 = getelementptr inbounds i16, i16* %r, i64 39
  %815 = load i16, i16* %arrayidx11.3.7.1, align 2, !tbaa !3
  %sub.3.7.1 = sub i16 %815, %call.i.3.7.1
  store i16 %sub.3.7.1, i16* %arrayidx9.3.7.1, align 2, !tbaa !3
  %add21.3.7.1 = add i16 %815, %call.i.3.7.1
  store i16 %add21.3.7.1, i16* %arrayidx11.3.7.1, align 2, !tbaa !3
  %arrayidx9.3.8.1 = getelementptr inbounds i16, i16* %r, i64 56
  %816 = load i16, i16* %arrayidx9.3.8.1, align 2, !tbaa !3
  %conv1.i.3.8.1 = sext i16 %816 to i32
  %mul.i.3.8.1 = mul nsw i32 %conv1.i.3.8.1, 622
  %call.i.3.8.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.8.1) #2
  %arrayidx11.3.8.1 = getelementptr inbounds i16, i16* %r, i64 40
  %817 = load i16, i16* %arrayidx11.3.8.1, align 2, !tbaa !3
  %sub.3.8.1 = sub i16 %817, %call.i.3.8.1
  store i16 %sub.3.8.1, i16* %arrayidx9.3.8.1, align 2, !tbaa !3
  %add21.3.8.1 = add i16 %817, %call.i.3.8.1
  store i16 %add21.3.8.1, i16* %arrayidx11.3.8.1, align 2, !tbaa !3
  %arrayidx9.3.9.1 = getelementptr inbounds i16, i16* %r, i64 57
  %818 = load i16, i16* %arrayidx9.3.9.1, align 2, !tbaa !3
  %conv1.i.3.9.1 = sext i16 %818 to i32
  %mul.i.3.9.1 = mul nsw i32 %conv1.i.3.9.1, 622
  %call.i.3.9.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.9.1) #2
  %arrayidx11.3.9.1 = getelementptr inbounds i16, i16* %r, i64 41
  %819 = load i16, i16* %arrayidx11.3.9.1, align 2, !tbaa !3
  %sub.3.9.1 = sub i16 %819, %call.i.3.9.1
  store i16 %sub.3.9.1, i16* %arrayidx9.3.9.1, align 2, !tbaa !3
  %add21.3.9.1 = add i16 %819, %call.i.3.9.1
  store i16 %add21.3.9.1, i16* %arrayidx11.3.9.1, align 2, !tbaa !3
  %arrayidx9.3.10.1 = getelementptr inbounds i16, i16* %r, i64 58
  %820 = load i16, i16* %arrayidx9.3.10.1, align 2, !tbaa !3
  %conv1.i.3.10.1 = sext i16 %820 to i32
  %mul.i.3.10.1 = mul nsw i32 %conv1.i.3.10.1, 622
  %call.i.3.10.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.10.1) #2
  %arrayidx11.3.10.1 = getelementptr inbounds i16, i16* %r, i64 42
  %821 = load i16, i16* %arrayidx11.3.10.1, align 2, !tbaa !3
  %sub.3.10.1 = sub i16 %821, %call.i.3.10.1
  store i16 %sub.3.10.1, i16* %arrayidx9.3.10.1, align 2, !tbaa !3
  %add21.3.10.1 = add i16 %821, %call.i.3.10.1
  store i16 %add21.3.10.1, i16* %arrayidx11.3.10.1, align 2, !tbaa !3
  %arrayidx9.3.11.1 = getelementptr inbounds i16, i16* %r, i64 59
  %822 = load i16, i16* %arrayidx9.3.11.1, align 2, !tbaa !3
  %conv1.i.3.11.1 = sext i16 %822 to i32
  %mul.i.3.11.1 = mul nsw i32 %conv1.i.3.11.1, 622
  %call.i.3.11.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.11.1) #2
  %arrayidx11.3.11.1 = getelementptr inbounds i16, i16* %r, i64 43
  %823 = load i16, i16* %arrayidx11.3.11.1, align 2, !tbaa !3
  %sub.3.11.1 = sub i16 %823, %call.i.3.11.1
  store i16 %sub.3.11.1, i16* %arrayidx9.3.11.1, align 2, !tbaa !3
  %add21.3.11.1 = add i16 %823, %call.i.3.11.1
  store i16 %add21.3.11.1, i16* %arrayidx11.3.11.1, align 2, !tbaa !3
  %arrayidx9.3.12.1 = getelementptr inbounds i16, i16* %r, i64 60
  %824 = load i16, i16* %arrayidx9.3.12.1, align 2, !tbaa !3
  %conv1.i.3.12.1 = sext i16 %824 to i32
  %mul.i.3.12.1 = mul nsw i32 %conv1.i.3.12.1, 622
  %call.i.3.12.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.12.1) #2
  %arrayidx11.3.12.1 = getelementptr inbounds i16, i16* %r, i64 44
  %825 = load i16, i16* %arrayidx11.3.12.1, align 2, !tbaa !3
  %sub.3.12.1 = sub i16 %825, %call.i.3.12.1
  store i16 %sub.3.12.1, i16* %arrayidx9.3.12.1, align 2, !tbaa !3
  %add21.3.12.1 = add i16 %825, %call.i.3.12.1
  store i16 %add21.3.12.1, i16* %arrayidx11.3.12.1, align 2, !tbaa !3
  %arrayidx9.3.13.1 = getelementptr inbounds i16, i16* %r, i64 61
  %826 = load i16, i16* %arrayidx9.3.13.1, align 2, !tbaa !3
  %conv1.i.3.13.1 = sext i16 %826 to i32
  %mul.i.3.13.1 = mul nsw i32 %conv1.i.3.13.1, 622
  %call.i.3.13.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.13.1) #2
  %arrayidx11.3.13.1 = getelementptr inbounds i16, i16* %r, i64 45
  %827 = load i16, i16* %arrayidx11.3.13.1, align 2, !tbaa !3
  %sub.3.13.1 = sub i16 %827, %call.i.3.13.1
  store i16 %sub.3.13.1, i16* %arrayidx9.3.13.1, align 2, !tbaa !3
  %add21.3.13.1 = add i16 %827, %call.i.3.13.1
  store i16 %add21.3.13.1, i16* %arrayidx11.3.13.1, align 2, !tbaa !3
  %arrayidx9.3.14.1 = getelementptr inbounds i16, i16* %r, i64 62
  %828 = load i16, i16* %arrayidx9.3.14.1, align 2, !tbaa !3
  %conv1.i.3.14.1 = sext i16 %828 to i32
  %mul.i.3.14.1 = mul nsw i32 %conv1.i.3.14.1, 622
  %call.i.3.14.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.14.1) #2
  %arrayidx11.3.14.1 = getelementptr inbounds i16, i16* %r, i64 46
  %829 = load i16, i16* %arrayidx11.3.14.1, align 2, !tbaa !3
  %sub.3.14.1 = sub i16 %829, %call.i.3.14.1
  store i16 %sub.3.14.1, i16* %arrayidx9.3.14.1, align 2, !tbaa !3
  %add21.3.14.1 = add i16 %829, %call.i.3.14.1
  store i16 %add21.3.14.1, i16* %arrayidx11.3.14.1, align 2, !tbaa !3
  %arrayidx9.3.15.1 = getelementptr inbounds i16, i16* %r, i64 63
  %830 = load i16, i16* %arrayidx9.3.15.1, align 2, !tbaa !3
  %conv1.i.3.15.1 = sext i16 %830 to i32
  %mul.i.3.15.1 = mul nsw i32 %conv1.i.3.15.1, 622
  %call.i.3.15.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.15.1) #2
  %arrayidx11.3.15.1 = getelementptr inbounds i16, i16* %r, i64 47
  %831 = load i16, i16* %arrayidx11.3.15.1, align 2, !tbaa !3
  %sub.3.15.1 = sub i16 %831, %call.i.3.15.1
  store i16 %sub.3.15.1, i16* %arrayidx9.3.15.1, align 2, !tbaa !3
  %add21.3.15.1 = add i16 %831, %call.i.3.15.1
  store i16 %add21.3.15.1, i16* %arrayidx11.3.15.1, align 2, !tbaa !3
  %arrayidx9.3.2188 = getelementptr inbounds i16, i16* %r, i64 80
  %832 = load i16, i16* %arrayidx9.3.2188, align 2, !tbaa !3
  %conv1.i.3.2189 = sext i16 %832 to i32
  %mul.i.3.2190 = mul nsw i32 %conv1.i.3.2189, 1577
  %call.i.3.2191 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.2190) #2
  %arrayidx11.3.2192 = getelementptr inbounds i16, i16* %r, i64 64
  %833 = load i16, i16* %arrayidx11.3.2192, align 2, !tbaa !3
  %sub.3.2193 = sub i16 %833, %call.i.3.2191
  store i16 %sub.3.2193, i16* %arrayidx9.3.2188, align 2, !tbaa !3
  %add21.3.2194 = add i16 %833, %call.i.3.2191
  store i16 %add21.3.2194, i16* %arrayidx11.3.2192, align 2, !tbaa !3
  %arrayidx9.3.1.2 = getelementptr inbounds i16, i16* %r, i64 81
  %834 = load i16, i16* %arrayidx9.3.1.2, align 2, !tbaa !3
  %conv1.i.3.1.2 = sext i16 %834 to i32
  %mul.i.3.1.2 = mul nsw i32 %conv1.i.3.1.2, 1577
  %call.i.3.1.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.1.2) #2
  %arrayidx11.3.1.2 = getelementptr inbounds i16, i16* %r, i64 65
  %835 = load i16, i16* %arrayidx11.3.1.2, align 2, !tbaa !3
  %sub.3.1.2 = sub i16 %835, %call.i.3.1.2
  store i16 %sub.3.1.2, i16* %arrayidx9.3.1.2, align 2, !tbaa !3
  %add21.3.1.2 = add i16 %835, %call.i.3.1.2
  store i16 %add21.3.1.2, i16* %arrayidx11.3.1.2, align 2, !tbaa !3
  %arrayidx9.3.2.2 = getelementptr inbounds i16, i16* %r, i64 82
  %836 = load i16, i16* %arrayidx9.3.2.2, align 2, !tbaa !3
  %conv1.i.3.2.2 = sext i16 %836 to i32
  %mul.i.3.2.2 = mul nsw i32 %conv1.i.3.2.2, 1577
  %call.i.3.2.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.2.2) #2
  %arrayidx11.3.2.2 = getelementptr inbounds i16, i16* %r, i64 66
  %837 = load i16, i16* %arrayidx11.3.2.2, align 2, !tbaa !3
  %sub.3.2.2 = sub i16 %837, %call.i.3.2.2
  store i16 %sub.3.2.2, i16* %arrayidx9.3.2.2, align 2, !tbaa !3
  %add21.3.2.2 = add i16 %837, %call.i.3.2.2
  store i16 %add21.3.2.2, i16* %arrayidx11.3.2.2, align 2, !tbaa !3
  %arrayidx9.3.3.2 = getelementptr inbounds i16, i16* %r, i64 83
  %838 = load i16, i16* %arrayidx9.3.3.2, align 2, !tbaa !3
  %conv1.i.3.3.2 = sext i16 %838 to i32
  %mul.i.3.3.2 = mul nsw i32 %conv1.i.3.3.2, 1577
  %call.i.3.3.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.3.2) #2
  %arrayidx11.3.3.2 = getelementptr inbounds i16, i16* %r, i64 67
  %839 = load i16, i16* %arrayidx11.3.3.2, align 2, !tbaa !3
  %sub.3.3.2 = sub i16 %839, %call.i.3.3.2
  store i16 %sub.3.3.2, i16* %arrayidx9.3.3.2, align 2, !tbaa !3
  %add21.3.3.2 = add i16 %839, %call.i.3.3.2
  store i16 %add21.3.3.2, i16* %arrayidx11.3.3.2, align 2, !tbaa !3
  %arrayidx9.3.4.2 = getelementptr inbounds i16, i16* %r, i64 84
  %840 = load i16, i16* %arrayidx9.3.4.2, align 2, !tbaa !3
  %conv1.i.3.4.2 = sext i16 %840 to i32
  %mul.i.3.4.2 = mul nsw i32 %conv1.i.3.4.2, 1577
  %call.i.3.4.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.4.2) #2
  %arrayidx11.3.4.2 = getelementptr inbounds i16, i16* %r, i64 68
  %841 = load i16, i16* %arrayidx11.3.4.2, align 2, !tbaa !3
  %sub.3.4.2 = sub i16 %841, %call.i.3.4.2
  store i16 %sub.3.4.2, i16* %arrayidx9.3.4.2, align 2, !tbaa !3
  %add21.3.4.2 = add i16 %841, %call.i.3.4.2
  store i16 %add21.3.4.2, i16* %arrayidx11.3.4.2, align 2, !tbaa !3
  %arrayidx9.3.5.2 = getelementptr inbounds i16, i16* %r, i64 85
  %842 = load i16, i16* %arrayidx9.3.5.2, align 2, !tbaa !3
  %conv1.i.3.5.2 = sext i16 %842 to i32
  %mul.i.3.5.2 = mul nsw i32 %conv1.i.3.5.2, 1577
  %call.i.3.5.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.5.2) #2
  %arrayidx11.3.5.2 = getelementptr inbounds i16, i16* %r, i64 69
  %843 = load i16, i16* %arrayidx11.3.5.2, align 2, !tbaa !3
  %sub.3.5.2 = sub i16 %843, %call.i.3.5.2
  store i16 %sub.3.5.2, i16* %arrayidx9.3.5.2, align 2, !tbaa !3
  %add21.3.5.2 = add i16 %843, %call.i.3.5.2
  store i16 %add21.3.5.2, i16* %arrayidx11.3.5.2, align 2, !tbaa !3
  %arrayidx9.3.6.2 = getelementptr inbounds i16, i16* %r, i64 86
  %844 = load i16, i16* %arrayidx9.3.6.2, align 2, !tbaa !3
  %conv1.i.3.6.2 = sext i16 %844 to i32
  %mul.i.3.6.2 = mul nsw i32 %conv1.i.3.6.2, 1577
  %call.i.3.6.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.6.2) #2
  %arrayidx11.3.6.2 = getelementptr inbounds i16, i16* %r, i64 70
  %845 = load i16, i16* %arrayidx11.3.6.2, align 2, !tbaa !3
  %sub.3.6.2 = sub i16 %845, %call.i.3.6.2
  store i16 %sub.3.6.2, i16* %arrayidx9.3.6.2, align 2, !tbaa !3
  %add21.3.6.2 = add i16 %845, %call.i.3.6.2
  store i16 %add21.3.6.2, i16* %arrayidx11.3.6.2, align 2, !tbaa !3
  %arrayidx9.3.7.2 = getelementptr inbounds i16, i16* %r, i64 87
  %846 = load i16, i16* %arrayidx9.3.7.2, align 2, !tbaa !3
  %conv1.i.3.7.2 = sext i16 %846 to i32
  %mul.i.3.7.2 = mul nsw i32 %conv1.i.3.7.2, 1577
  %call.i.3.7.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.7.2) #2
  %arrayidx11.3.7.2 = getelementptr inbounds i16, i16* %r, i64 71
  %847 = load i16, i16* %arrayidx11.3.7.2, align 2, !tbaa !3
  %sub.3.7.2 = sub i16 %847, %call.i.3.7.2
  store i16 %sub.3.7.2, i16* %arrayidx9.3.7.2, align 2, !tbaa !3
  %add21.3.7.2 = add i16 %847, %call.i.3.7.2
  store i16 %add21.3.7.2, i16* %arrayidx11.3.7.2, align 2, !tbaa !3
  %arrayidx9.3.8.2 = getelementptr inbounds i16, i16* %r, i64 88
  %848 = load i16, i16* %arrayidx9.3.8.2, align 2, !tbaa !3
  %conv1.i.3.8.2 = sext i16 %848 to i32
  %mul.i.3.8.2 = mul nsw i32 %conv1.i.3.8.2, 1577
  %call.i.3.8.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.8.2) #2
  %arrayidx11.3.8.2 = getelementptr inbounds i16, i16* %r, i64 72
  %849 = load i16, i16* %arrayidx11.3.8.2, align 2, !tbaa !3
  %sub.3.8.2 = sub i16 %849, %call.i.3.8.2
  store i16 %sub.3.8.2, i16* %arrayidx9.3.8.2, align 2, !tbaa !3
  %add21.3.8.2 = add i16 %849, %call.i.3.8.2
  store i16 %add21.3.8.2, i16* %arrayidx11.3.8.2, align 2, !tbaa !3
  %arrayidx9.3.9.2 = getelementptr inbounds i16, i16* %r, i64 89
  %850 = load i16, i16* %arrayidx9.3.9.2, align 2, !tbaa !3
  %conv1.i.3.9.2 = sext i16 %850 to i32
  %mul.i.3.9.2 = mul nsw i32 %conv1.i.3.9.2, 1577
  %call.i.3.9.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.9.2) #2
  %arrayidx11.3.9.2 = getelementptr inbounds i16, i16* %r, i64 73
  %851 = load i16, i16* %arrayidx11.3.9.2, align 2, !tbaa !3
  %sub.3.9.2 = sub i16 %851, %call.i.3.9.2
  store i16 %sub.3.9.2, i16* %arrayidx9.3.9.2, align 2, !tbaa !3
  %add21.3.9.2 = add i16 %851, %call.i.3.9.2
  store i16 %add21.3.9.2, i16* %arrayidx11.3.9.2, align 2, !tbaa !3
  %arrayidx9.3.10.2 = getelementptr inbounds i16, i16* %r, i64 90
  %852 = load i16, i16* %arrayidx9.3.10.2, align 2, !tbaa !3
  %conv1.i.3.10.2 = sext i16 %852 to i32
  %mul.i.3.10.2 = mul nsw i32 %conv1.i.3.10.2, 1577
  %call.i.3.10.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.10.2) #2
  %arrayidx11.3.10.2 = getelementptr inbounds i16, i16* %r, i64 74
  %853 = load i16, i16* %arrayidx11.3.10.2, align 2, !tbaa !3
  %sub.3.10.2 = sub i16 %853, %call.i.3.10.2
  store i16 %sub.3.10.2, i16* %arrayidx9.3.10.2, align 2, !tbaa !3
  %add21.3.10.2 = add i16 %853, %call.i.3.10.2
  store i16 %add21.3.10.2, i16* %arrayidx11.3.10.2, align 2, !tbaa !3
  %arrayidx9.3.11.2 = getelementptr inbounds i16, i16* %r, i64 91
  %854 = load i16, i16* %arrayidx9.3.11.2, align 2, !tbaa !3
  %conv1.i.3.11.2 = sext i16 %854 to i32
  %mul.i.3.11.2 = mul nsw i32 %conv1.i.3.11.2, 1577
  %call.i.3.11.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.11.2) #2
  %arrayidx11.3.11.2 = getelementptr inbounds i16, i16* %r, i64 75
  %855 = load i16, i16* %arrayidx11.3.11.2, align 2, !tbaa !3
  %sub.3.11.2 = sub i16 %855, %call.i.3.11.2
  store i16 %sub.3.11.2, i16* %arrayidx9.3.11.2, align 2, !tbaa !3
  %add21.3.11.2 = add i16 %855, %call.i.3.11.2
  store i16 %add21.3.11.2, i16* %arrayidx11.3.11.2, align 2, !tbaa !3
  %arrayidx9.3.12.2 = getelementptr inbounds i16, i16* %r, i64 92
  %856 = load i16, i16* %arrayidx9.3.12.2, align 2, !tbaa !3
  %conv1.i.3.12.2 = sext i16 %856 to i32
  %mul.i.3.12.2 = mul nsw i32 %conv1.i.3.12.2, 1577
  %call.i.3.12.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.12.2) #2
  %arrayidx11.3.12.2 = getelementptr inbounds i16, i16* %r, i64 76
  %857 = load i16, i16* %arrayidx11.3.12.2, align 2, !tbaa !3
  %sub.3.12.2 = sub i16 %857, %call.i.3.12.2
  store i16 %sub.3.12.2, i16* %arrayidx9.3.12.2, align 2, !tbaa !3
  %add21.3.12.2 = add i16 %857, %call.i.3.12.2
  store i16 %add21.3.12.2, i16* %arrayidx11.3.12.2, align 2, !tbaa !3
  %arrayidx9.3.13.2 = getelementptr inbounds i16, i16* %r, i64 93
  %858 = load i16, i16* %arrayidx9.3.13.2, align 2, !tbaa !3
  %conv1.i.3.13.2 = sext i16 %858 to i32
  %mul.i.3.13.2 = mul nsw i32 %conv1.i.3.13.2, 1577
  %call.i.3.13.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.13.2) #2
  %arrayidx11.3.13.2 = getelementptr inbounds i16, i16* %r, i64 77
  %859 = load i16, i16* %arrayidx11.3.13.2, align 2, !tbaa !3
  %sub.3.13.2 = sub i16 %859, %call.i.3.13.2
  store i16 %sub.3.13.2, i16* %arrayidx9.3.13.2, align 2, !tbaa !3
  %add21.3.13.2 = add i16 %859, %call.i.3.13.2
  store i16 %add21.3.13.2, i16* %arrayidx11.3.13.2, align 2, !tbaa !3
  %arrayidx9.3.14.2 = getelementptr inbounds i16, i16* %r, i64 94
  %860 = load i16, i16* %arrayidx9.3.14.2, align 2, !tbaa !3
  %conv1.i.3.14.2 = sext i16 %860 to i32
  %mul.i.3.14.2 = mul nsw i32 %conv1.i.3.14.2, 1577
  %call.i.3.14.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.14.2) #2
  %arrayidx11.3.14.2 = getelementptr inbounds i16, i16* %r, i64 78
  %861 = load i16, i16* %arrayidx11.3.14.2, align 2, !tbaa !3
  %sub.3.14.2 = sub i16 %861, %call.i.3.14.2
  store i16 %sub.3.14.2, i16* %arrayidx9.3.14.2, align 2, !tbaa !3
  %add21.3.14.2 = add i16 %861, %call.i.3.14.2
  store i16 %add21.3.14.2, i16* %arrayidx11.3.14.2, align 2, !tbaa !3
  %arrayidx9.3.15.2 = getelementptr inbounds i16, i16* %r, i64 95
  %862 = load i16, i16* %arrayidx9.3.15.2, align 2, !tbaa !3
  %conv1.i.3.15.2 = sext i16 %862 to i32
  %mul.i.3.15.2 = mul nsw i32 %conv1.i.3.15.2, 1577
  %call.i.3.15.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.15.2) #2
  %arrayidx11.3.15.2 = getelementptr inbounds i16, i16* %r, i64 79
  %863 = load i16, i16* %arrayidx11.3.15.2, align 2, !tbaa !3
  %sub.3.15.2 = sub i16 %863, %call.i.3.15.2
  store i16 %sub.3.15.2, i16* %arrayidx9.3.15.2, align 2, !tbaa !3
  %add21.3.15.2 = add i16 %863, %call.i.3.15.2
  store i16 %add21.3.15.2, i16* %arrayidx11.3.15.2, align 2, !tbaa !3
  %arrayidx9.3.3198 = getelementptr inbounds i16, i16* %r, i64 112
  %864 = load i16, i16* %arrayidx9.3.3198, align 2, !tbaa !3
  %conv1.i.3.3199 = sext i16 %864 to i32
  %mul.i.3.3200 = mul nsw i32 %conv1.i.3.3199, 182
  %call.i.3.3201 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.3200) #2
  %arrayidx11.3.3202 = getelementptr inbounds i16, i16* %r, i64 96
  %865 = load i16, i16* %arrayidx11.3.3202, align 2, !tbaa !3
  %sub.3.3203 = sub i16 %865, %call.i.3.3201
  store i16 %sub.3.3203, i16* %arrayidx9.3.3198, align 2, !tbaa !3
  %add21.3.3204 = add i16 %865, %call.i.3.3201
  store i16 %add21.3.3204, i16* %arrayidx11.3.3202, align 2, !tbaa !3
  %arrayidx9.3.1.3 = getelementptr inbounds i16, i16* %r, i64 113
  %866 = load i16, i16* %arrayidx9.3.1.3, align 2, !tbaa !3
  %conv1.i.3.1.3 = sext i16 %866 to i32
  %mul.i.3.1.3 = mul nsw i32 %conv1.i.3.1.3, 182
  %call.i.3.1.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.1.3) #2
  %arrayidx11.3.1.3 = getelementptr inbounds i16, i16* %r, i64 97
  %867 = load i16, i16* %arrayidx11.3.1.3, align 2, !tbaa !3
  %sub.3.1.3 = sub i16 %867, %call.i.3.1.3
  store i16 %sub.3.1.3, i16* %arrayidx9.3.1.3, align 2, !tbaa !3
  %add21.3.1.3 = add i16 %867, %call.i.3.1.3
  store i16 %add21.3.1.3, i16* %arrayidx11.3.1.3, align 2, !tbaa !3
  %arrayidx9.3.2.3 = getelementptr inbounds i16, i16* %r, i64 114
  %868 = load i16, i16* %arrayidx9.3.2.3, align 2, !tbaa !3
  %conv1.i.3.2.3 = sext i16 %868 to i32
  %mul.i.3.2.3 = mul nsw i32 %conv1.i.3.2.3, 182
  %call.i.3.2.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.2.3) #2
  %arrayidx11.3.2.3 = getelementptr inbounds i16, i16* %r, i64 98
  %869 = load i16, i16* %arrayidx11.3.2.3, align 2, !tbaa !3
  %sub.3.2.3 = sub i16 %869, %call.i.3.2.3
  store i16 %sub.3.2.3, i16* %arrayidx9.3.2.3, align 2, !tbaa !3
  %add21.3.2.3 = add i16 %869, %call.i.3.2.3
  store i16 %add21.3.2.3, i16* %arrayidx11.3.2.3, align 2, !tbaa !3
  %arrayidx9.3.3.3 = getelementptr inbounds i16, i16* %r, i64 115
  %870 = load i16, i16* %arrayidx9.3.3.3, align 2, !tbaa !3
  %conv1.i.3.3.3 = sext i16 %870 to i32
  %mul.i.3.3.3 = mul nsw i32 %conv1.i.3.3.3, 182
  %call.i.3.3.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.3.3) #2
  %arrayidx11.3.3.3 = getelementptr inbounds i16, i16* %r, i64 99
  %871 = load i16, i16* %arrayidx11.3.3.3, align 2, !tbaa !3
  %sub.3.3.3 = sub i16 %871, %call.i.3.3.3
  store i16 %sub.3.3.3, i16* %arrayidx9.3.3.3, align 2, !tbaa !3
  %add21.3.3.3 = add i16 %871, %call.i.3.3.3
  store i16 %add21.3.3.3, i16* %arrayidx11.3.3.3, align 2, !tbaa !3
  %arrayidx9.3.4.3 = getelementptr inbounds i16, i16* %r, i64 116
  %872 = load i16, i16* %arrayidx9.3.4.3, align 2, !tbaa !3
  %conv1.i.3.4.3 = sext i16 %872 to i32
  %mul.i.3.4.3 = mul nsw i32 %conv1.i.3.4.3, 182
  %call.i.3.4.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.4.3) #2
  %arrayidx11.3.4.3 = getelementptr inbounds i16, i16* %r, i64 100
  %873 = load i16, i16* %arrayidx11.3.4.3, align 2, !tbaa !3
  %sub.3.4.3 = sub i16 %873, %call.i.3.4.3
  store i16 %sub.3.4.3, i16* %arrayidx9.3.4.3, align 2, !tbaa !3
  %add21.3.4.3 = add i16 %873, %call.i.3.4.3
  store i16 %add21.3.4.3, i16* %arrayidx11.3.4.3, align 2, !tbaa !3
  %arrayidx9.3.5.3 = getelementptr inbounds i16, i16* %r, i64 117
  %874 = load i16, i16* %arrayidx9.3.5.3, align 2, !tbaa !3
  %conv1.i.3.5.3 = sext i16 %874 to i32
  %mul.i.3.5.3 = mul nsw i32 %conv1.i.3.5.3, 182
  %call.i.3.5.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.5.3) #2
  %arrayidx11.3.5.3 = getelementptr inbounds i16, i16* %r, i64 101
  %875 = load i16, i16* %arrayidx11.3.5.3, align 2, !tbaa !3
  %sub.3.5.3 = sub i16 %875, %call.i.3.5.3
  store i16 %sub.3.5.3, i16* %arrayidx9.3.5.3, align 2, !tbaa !3
  %add21.3.5.3 = add i16 %875, %call.i.3.5.3
  store i16 %add21.3.5.3, i16* %arrayidx11.3.5.3, align 2, !tbaa !3
  %arrayidx9.3.6.3 = getelementptr inbounds i16, i16* %r, i64 118
  %876 = load i16, i16* %arrayidx9.3.6.3, align 2, !tbaa !3
  %conv1.i.3.6.3 = sext i16 %876 to i32
  %mul.i.3.6.3 = mul nsw i32 %conv1.i.3.6.3, 182
  %call.i.3.6.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.6.3) #2
  %arrayidx11.3.6.3 = getelementptr inbounds i16, i16* %r, i64 102
  %877 = load i16, i16* %arrayidx11.3.6.3, align 2, !tbaa !3
  %sub.3.6.3 = sub i16 %877, %call.i.3.6.3
  store i16 %sub.3.6.3, i16* %arrayidx9.3.6.3, align 2, !tbaa !3
  %add21.3.6.3 = add i16 %877, %call.i.3.6.3
  store i16 %add21.3.6.3, i16* %arrayidx11.3.6.3, align 2, !tbaa !3
  %arrayidx9.3.7.3 = getelementptr inbounds i16, i16* %r, i64 119
  %878 = load i16, i16* %arrayidx9.3.7.3, align 2, !tbaa !3
  %conv1.i.3.7.3 = sext i16 %878 to i32
  %mul.i.3.7.3 = mul nsw i32 %conv1.i.3.7.3, 182
  %call.i.3.7.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.7.3) #2
  %arrayidx11.3.7.3 = getelementptr inbounds i16, i16* %r, i64 103
  %879 = load i16, i16* %arrayidx11.3.7.3, align 2, !tbaa !3
  %sub.3.7.3 = sub i16 %879, %call.i.3.7.3
  store i16 %sub.3.7.3, i16* %arrayidx9.3.7.3, align 2, !tbaa !3
  %add21.3.7.3 = add i16 %879, %call.i.3.7.3
  store i16 %add21.3.7.3, i16* %arrayidx11.3.7.3, align 2, !tbaa !3
  %arrayidx9.3.8.3 = getelementptr inbounds i16, i16* %r, i64 120
  %880 = load i16, i16* %arrayidx9.3.8.3, align 2, !tbaa !3
  %conv1.i.3.8.3 = sext i16 %880 to i32
  %mul.i.3.8.3 = mul nsw i32 %conv1.i.3.8.3, 182
  %call.i.3.8.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.8.3) #2
  %arrayidx11.3.8.3 = getelementptr inbounds i16, i16* %r, i64 104
  %881 = load i16, i16* %arrayidx11.3.8.3, align 2, !tbaa !3
  %sub.3.8.3 = sub i16 %881, %call.i.3.8.3
  store i16 %sub.3.8.3, i16* %arrayidx9.3.8.3, align 2, !tbaa !3
  %add21.3.8.3 = add i16 %881, %call.i.3.8.3
  store i16 %add21.3.8.3, i16* %arrayidx11.3.8.3, align 2, !tbaa !3
  %arrayidx9.3.9.3 = getelementptr inbounds i16, i16* %r, i64 121
  %882 = load i16, i16* %arrayidx9.3.9.3, align 2, !tbaa !3
  %conv1.i.3.9.3 = sext i16 %882 to i32
  %mul.i.3.9.3 = mul nsw i32 %conv1.i.3.9.3, 182
  %call.i.3.9.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.9.3) #2
  %arrayidx11.3.9.3 = getelementptr inbounds i16, i16* %r, i64 105
  %883 = load i16, i16* %arrayidx11.3.9.3, align 2, !tbaa !3
  %sub.3.9.3 = sub i16 %883, %call.i.3.9.3
  store i16 %sub.3.9.3, i16* %arrayidx9.3.9.3, align 2, !tbaa !3
  %add21.3.9.3 = add i16 %883, %call.i.3.9.3
  store i16 %add21.3.9.3, i16* %arrayidx11.3.9.3, align 2, !tbaa !3
  %arrayidx9.3.10.3 = getelementptr inbounds i16, i16* %r, i64 122
  %884 = load i16, i16* %arrayidx9.3.10.3, align 2, !tbaa !3
  %conv1.i.3.10.3 = sext i16 %884 to i32
  %mul.i.3.10.3 = mul nsw i32 %conv1.i.3.10.3, 182
  %call.i.3.10.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.10.3) #2
  %arrayidx11.3.10.3 = getelementptr inbounds i16, i16* %r, i64 106
  %885 = load i16, i16* %arrayidx11.3.10.3, align 2, !tbaa !3
  %sub.3.10.3 = sub i16 %885, %call.i.3.10.3
  store i16 %sub.3.10.3, i16* %arrayidx9.3.10.3, align 2, !tbaa !3
  %add21.3.10.3 = add i16 %885, %call.i.3.10.3
  store i16 %add21.3.10.3, i16* %arrayidx11.3.10.3, align 2, !tbaa !3
  %arrayidx9.3.11.3 = getelementptr inbounds i16, i16* %r, i64 123
  %886 = load i16, i16* %arrayidx9.3.11.3, align 2, !tbaa !3
  %conv1.i.3.11.3 = sext i16 %886 to i32
  %mul.i.3.11.3 = mul nsw i32 %conv1.i.3.11.3, 182
  %call.i.3.11.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.11.3) #2
  %arrayidx11.3.11.3 = getelementptr inbounds i16, i16* %r, i64 107
  %887 = load i16, i16* %arrayidx11.3.11.3, align 2, !tbaa !3
  %sub.3.11.3 = sub i16 %887, %call.i.3.11.3
  store i16 %sub.3.11.3, i16* %arrayidx9.3.11.3, align 2, !tbaa !3
  %add21.3.11.3 = add i16 %887, %call.i.3.11.3
  store i16 %add21.3.11.3, i16* %arrayidx11.3.11.3, align 2, !tbaa !3
  %arrayidx9.3.12.3 = getelementptr inbounds i16, i16* %r, i64 124
  %888 = load i16, i16* %arrayidx9.3.12.3, align 2, !tbaa !3
  %conv1.i.3.12.3 = sext i16 %888 to i32
  %mul.i.3.12.3 = mul nsw i32 %conv1.i.3.12.3, 182
  %call.i.3.12.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.12.3) #2
  %arrayidx11.3.12.3 = getelementptr inbounds i16, i16* %r, i64 108
  %889 = load i16, i16* %arrayidx11.3.12.3, align 2, !tbaa !3
  %sub.3.12.3 = sub i16 %889, %call.i.3.12.3
  store i16 %sub.3.12.3, i16* %arrayidx9.3.12.3, align 2, !tbaa !3
  %add21.3.12.3 = add i16 %889, %call.i.3.12.3
  store i16 %add21.3.12.3, i16* %arrayidx11.3.12.3, align 2, !tbaa !3
  %arrayidx9.3.13.3 = getelementptr inbounds i16, i16* %r, i64 125
  %890 = load i16, i16* %arrayidx9.3.13.3, align 2, !tbaa !3
  %conv1.i.3.13.3 = sext i16 %890 to i32
  %mul.i.3.13.3 = mul nsw i32 %conv1.i.3.13.3, 182
  %call.i.3.13.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.13.3) #2
  %arrayidx11.3.13.3 = getelementptr inbounds i16, i16* %r, i64 109
  %891 = load i16, i16* %arrayidx11.3.13.3, align 2, !tbaa !3
  %sub.3.13.3 = sub i16 %891, %call.i.3.13.3
  store i16 %sub.3.13.3, i16* %arrayidx9.3.13.3, align 2, !tbaa !3
  %add21.3.13.3 = add i16 %891, %call.i.3.13.3
  store i16 %add21.3.13.3, i16* %arrayidx11.3.13.3, align 2, !tbaa !3
  %arrayidx9.3.14.3 = getelementptr inbounds i16, i16* %r, i64 126
  %892 = load i16, i16* %arrayidx9.3.14.3, align 2, !tbaa !3
  %conv1.i.3.14.3 = sext i16 %892 to i32
  %mul.i.3.14.3 = mul nsw i32 %conv1.i.3.14.3, 182
  %call.i.3.14.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.14.3) #2
  %arrayidx11.3.14.3 = getelementptr inbounds i16, i16* %r, i64 110
  %893 = load i16, i16* %arrayidx11.3.14.3, align 2, !tbaa !3
  %sub.3.14.3 = sub i16 %893, %call.i.3.14.3
  store i16 %sub.3.14.3, i16* %arrayidx9.3.14.3, align 2, !tbaa !3
  %add21.3.14.3 = add i16 %893, %call.i.3.14.3
  store i16 %add21.3.14.3, i16* %arrayidx11.3.14.3, align 2, !tbaa !3
  %arrayidx9.3.15.3 = getelementptr inbounds i16, i16* %r, i64 127
  %894 = load i16, i16* %arrayidx9.3.15.3, align 2, !tbaa !3
  %conv1.i.3.15.3 = sext i16 %894 to i32
  %mul.i.3.15.3 = mul nsw i32 %conv1.i.3.15.3, 182
  %call.i.3.15.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.15.3) #2
  %arrayidx11.3.15.3 = getelementptr inbounds i16, i16* %r, i64 111
  %895 = load i16, i16* %arrayidx11.3.15.3, align 2, !tbaa !3
  %sub.3.15.3 = sub i16 %895, %call.i.3.15.3
  store i16 %sub.3.15.3, i16* %arrayidx9.3.15.3, align 2, !tbaa !3
  %add21.3.15.3 = add i16 %895, %call.i.3.15.3
  store i16 %add21.3.15.3, i16* %arrayidx11.3.15.3, align 2, !tbaa !3
  %arrayidx9.3.4208 = getelementptr inbounds i16, i16* %r, i64 144
  %896 = load i16, i16* %arrayidx9.3.4208, align 2, !tbaa !3
  %conv1.i.3.4209 = sext i16 %896 to i32
  %mul.i.3.4210 = mul nsw i32 %conv1.i.3.4209, 962
  %call.i.3.4211 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.4210) #2
  %arrayidx11.3.4212 = getelementptr inbounds i16, i16* %r, i64 128
  %897 = load i16, i16* %arrayidx11.3.4212, align 2, !tbaa !3
  %sub.3.4213 = sub i16 %897, %call.i.3.4211
  store i16 %sub.3.4213, i16* %arrayidx9.3.4208, align 2, !tbaa !3
  %add21.3.4214 = add i16 %897, %call.i.3.4211
  store i16 %add21.3.4214, i16* %arrayidx11.3.4212, align 2, !tbaa !3
  %arrayidx9.3.1.4 = getelementptr inbounds i16, i16* %r, i64 145
  %898 = load i16, i16* %arrayidx9.3.1.4, align 2, !tbaa !3
  %conv1.i.3.1.4 = sext i16 %898 to i32
  %mul.i.3.1.4 = mul nsw i32 %conv1.i.3.1.4, 962
  %call.i.3.1.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.1.4) #2
  %arrayidx11.3.1.4 = getelementptr inbounds i16, i16* %r, i64 129
  %899 = load i16, i16* %arrayidx11.3.1.4, align 2, !tbaa !3
  %sub.3.1.4 = sub i16 %899, %call.i.3.1.4
  store i16 %sub.3.1.4, i16* %arrayidx9.3.1.4, align 2, !tbaa !3
  %add21.3.1.4 = add i16 %899, %call.i.3.1.4
  store i16 %add21.3.1.4, i16* %arrayidx11.3.1.4, align 2, !tbaa !3
  %arrayidx9.3.2.4 = getelementptr inbounds i16, i16* %r, i64 146
  %900 = load i16, i16* %arrayidx9.3.2.4, align 2, !tbaa !3
  %conv1.i.3.2.4 = sext i16 %900 to i32
  %mul.i.3.2.4 = mul nsw i32 %conv1.i.3.2.4, 962
  %call.i.3.2.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.2.4) #2
  %arrayidx11.3.2.4 = getelementptr inbounds i16, i16* %r, i64 130
  %901 = load i16, i16* %arrayidx11.3.2.4, align 2, !tbaa !3
  %sub.3.2.4 = sub i16 %901, %call.i.3.2.4
  store i16 %sub.3.2.4, i16* %arrayidx9.3.2.4, align 2, !tbaa !3
  %add21.3.2.4 = add i16 %901, %call.i.3.2.4
  store i16 %add21.3.2.4, i16* %arrayidx11.3.2.4, align 2, !tbaa !3
  %arrayidx9.3.3.4 = getelementptr inbounds i16, i16* %r, i64 147
  %902 = load i16, i16* %arrayidx9.3.3.4, align 2, !tbaa !3
  %conv1.i.3.3.4 = sext i16 %902 to i32
  %mul.i.3.3.4 = mul nsw i32 %conv1.i.3.3.4, 962
  %call.i.3.3.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.3.4) #2
  %arrayidx11.3.3.4 = getelementptr inbounds i16, i16* %r, i64 131
  %903 = load i16, i16* %arrayidx11.3.3.4, align 2, !tbaa !3
  %sub.3.3.4 = sub i16 %903, %call.i.3.3.4
  store i16 %sub.3.3.4, i16* %arrayidx9.3.3.4, align 2, !tbaa !3
  %add21.3.3.4 = add i16 %903, %call.i.3.3.4
  store i16 %add21.3.3.4, i16* %arrayidx11.3.3.4, align 2, !tbaa !3
  %arrayidx9.3.4.4 = getelementptr inbounds i16, i16* %r, i64 148
  %904 = load i16, i16* %arrayidx9.3.4.4, align 2, !tbaa !3
  %conv1.i.3.4.4 = sext i16 %904 to i32
  %mul.i.3.4.4 = mul nsw i32 %conv1.i.3.4.4, 962
  %call.i.3.4.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.4.4) #2
  %arrayidx11.3.4.4 = getelementptr inbounds i16, i16* %r, i64 132
  %905 = load i16, i16* %arrayidx11.3.4.4, align 2, !tbaa !3
  %sub.3.4.4 = sub i16 %905, %call.i.3.4.4
  store i16 %sub.3.4.4, i16* %arrayidx9.3.4.4, align 2, !tbaa !3
  %add21.3.4.4 = add i16 %905, %call.i.3.4.4
  store i16 %add21.3.4.4, i16* %arrayidx11.3.4.4, align 2, !tbaa !3
  %arrayidx9.3.5.4 = getelementptr inbounds i16, i16* %r, i64 149
  %906 = load i16, i16* %arrayidx9.3.5.4, align 2, !tbaa !3
  %conv1.i.3.5.4 = sext i16 %906 to i32
  %mul.i.3.5.4 = mul nsw i32 %conv1.i.3.5.4, 962
  %call.i.3.5.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.5.4) #2
  %arrayidx11.3.5.4 = getelementptr inbounds i16, i16* %r, i64 133
  %907 = load i16, i16* %arrayidx11.3.5.4, align 2, !tbaa !3
  %sub.3.5.4 = sub i16 %907, %call.i.3.5.4
  store i16 %sub.3.5.4, i16* %arrayidx9.3.5.4, align 2, !tbaa !3
  %add21.3.5.4 = add i16 %907, %call.i.3.5.4
  store i16 %add21.3.5.4, i16* %arrayidx11.3.5.4, align 2, !tbaa !3
  %arrayidx9.3.6.4 = getelementptr inbounds i16, i16* %r, i64 150
  %908 = load i16, i16* %arrayidx9.3.6.4, align 2, !tbaa !3
  %conv1.i.3.6.4 = sext i16 %908 to i32
  %mul.i.3.6.4 = mul nsw i32 %conv1.i.3.6.4, 962
  %call.i.3.6.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.6.4) #2
  %arrayidx11.3.6.4 = getelementptr inbounds i16, i16* %r, i64 134
  %909 = load i16, i16* %arrayidx11.3.6.4, align 2, !tbaa !3
  %sub.3.6.4 = sub i16 %909, %call.i.3.6.4
  store i16 %sub.3.6.4, i16* %arrayidx9.3.6.4, align 2, !tbaa !3
  %add21.3.6.4 = add i16 %909, %call.i.3.6.4
  store i16 %add21.3.6.4, i16* %arrayidx11.3.6.4, align 2, !tbaa !3
  %arrayidx9.3.7.4 = getelementptr inbounds i16, i16* %r, i64 151
  %910 = load i16, i16* %arrayidx9.3.7.4, align 2, !tbaa !3
  %conv1.i.3.7.4 = sext i16 %910 to i32
  %mul.i.3.7.4 = mul nsw i32 %conv1.i.3.7.4, 962
  %call.i.3.7.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.7.4) #2
  %arrayidx11.3.7.4 = getelementptr inbounds i16, i16* %r, i64 135
  %911 = load i16, i16* %arrayidx11.3.7.4, align 2, !tbaa !3
  %sub.3.7.4 = sub i16 %911, %call.i.3.7.4
  store i16 %sub.3.7.4, i16* %arrayidx9.3.7.4, align 2, !tbaa !3
  %add21.3.7.4 = add i16 %911, %call.i.3.7.4
  store i16 %add21.3.7.4, i16* %arrayidx11.3.7.4, align 2, !tbaa !3
  %arrayidx9.3.8.4 = getelementptr inbounds i16, i16* %r, i64 152
  %912 = load i16, i16* %arrayidx9.3.8.4, align 2, !tbaa !3
  %conv1.i.3.8.4 = sext i16 %912 to i32
  %mul.i.3.8.4 = mul nsw i32 %conv1.i.3.8.4, 962
  %call.i.3.8.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.8.4) #2
  %arrayidx11.3.8.4 = getelementptr inbounds i16, i16* %r, i64 136
  %913 = load i16, i16* %arrayidx11.3.8.4, align 2, !tbaa !3
  %sub.3.8.4 = sub i16 %913, %call.i.3.8.4
  store i16 %sub.3.8.4, i16* %arrayidx9.3.8.4, align 2, !tbaa !3
  %add21.3.8.4 = add i16 %913, %call.i.3.8.4
  store i16 %add21.3.8.4, i16* %arrayidx11.3.8.4, align 2, !tbaa !3
  %arrayidx9.3.9.4 = getelementptr inbounds i16, i16* %r, i64 153
  %914 = load i16, i16* %arrayidx9.3.9.4, align 2, !tbaa !3
  %conv1.i.3.9.4 = sext i16 %914 to i32
  %mul.i.3.9.4 = mul nsw i32 %conv1.i.3.9.4, 962
  %call.i.3.9.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.9.4) #2
  %arrayidx11.3.9.4 = getelementptr inbounds i16, i16* %r, i64 137
  %915 = load i16, i16* %arrayidx11.3.9.4, align 2, !tbaa !3
  %sub.3.9.4 = sub i16 %915, %call.i.3.9.4
  store i16 %sub.3.9.4, i16* %arrayidx9.3.9.4, align 2, !tbaa !3
  %add21.3.9.4 = add i16 %915, %call.i.3.9.4
  store i16 %add21.3.9.4, i16* %arrayidx11.3.9.4, align 2, !tbaa !3
  %arrayidx9.3.10.4 = getelementptr inbounds i16, i16* %r, i64 154
  %916 = load i16, i16* %arrayidx9.3.10.4, align 2, !tbaa !3
  %conv1.i.3.10.4 = sext i16 %916 to i32
  %mul.i.3.10.4 = mul nsw i32 %conv1.i.3.10.4, 962
  %call.i.3.10.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.10.4) #2
  %arrayidx11.3.10.4 = getelementptr inbounds i16, i16* %r, i64 138
  %917 = load i16, i16* %arrayidx11.3.10.4, align 2, !tbaa !3
  %sub.3.10.4 = sub i16 %917, %call.i.3.10.4
  store i16 %sub.3.10.4, i16* %arrayidx9.3.10.4, align 2, !tbaa !3
  %add21.3.10.4 = add i16 %917, %call.i.3.10.4
  store i16 %add21.3.10.4, i16* %arrayidx11.3.10.4, align 2, !tbaa !3
  %arrayidx9.3.11.4 = getelementptr inbounds i16, i16* %r, i64 155
  %918 = load i16, i16* %arrayidx9.3.11.4, align 2, !tbaa !3
  %conv1.i.3.11.4 = sext i16 %918 to i32
  %mul.i.3.11.4 = mul nsw i32 %conv1.i.3.11.4, 962
  %call.i.3.11.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.11.4) #2
  %arrayidx11.3.11.4 = getelementptr inbounds i16, i16* %r, i64 139
  %919 = load i16, i16* %arrayidx11.3.11.4, align 2, !tbaa !3
  %sub.3.11.4 = sub i16 %919, %call.i.3.11.4
  store i16 %sub.3.11.4, i16* %arrayidx9.3.11.4, align 2, !tbaa !3
  %add21.3.11.4 = add i16 %919, %call.i.3.11.4
  store i16 %add21.3.11.4, i16* %arrayidx11.3.11.4, align 2, !tbaa !3
  %arrayidx9.3.12.4 = getelementptr inbounds i16, i16* %r, i64 156
  %920 = load i16, i16* %arrayidx9.3.12.4, align 2, !tbaa !3
  %conv1.i.3.12.4 = sext i16 %920 to i32
  %mul.i.3.12.4 = mul nsw i32 %conv1.i.3.12.4, 962
  %call.i.3.12.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.12.4) #2
  %arrayidx11.3.12.4 = getelementptr inbounds i16, i16* %r, i64 140
  %921 = load i16, i16* %arrayidx11.3.12.4, align 2, !tbaa !3
  %sub.3.12.4 = sub i16 %921, %call.i.3.12.4
  store i16 %sub.3.12.4, i16* %arrayidx9.3.12.4, align 2, !tbaa !3
  %add21.3.12.4 = add i16 %921, %call.i.3.12.4
  store i16 %add21.3.12.4, i16* %arrayidx11.3.12.4, align 2, !tbaa !3
  %arrayidx9.3.13.4 = getelementptr inbounds i16, i16* %r, i64 157
  %922 = load i16, i16* %arrayidx9.3.13.4, align 2, !tbaa !3
  %conv1.i.3.13.4 = sext i16 %922 to i32
  %mul.i.3.13.4 = mul nsw i32 %conv1.i.3.13.4, 962
  %call.i.3.13.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.13.4) #2
  %arrayidx11.3.13.4 = getelementptr inbounds i16, i16* %r, i64 141
  %923 = load i16, i16* %arrayidx11.3.13.4, align 2, !tbaa !3
  %sub.3.13.4 = sub i16 %923, %call.i.3.13.4
  store i16 %sub.3.13.4, i16* %arrayidx9.3.13.4, align 2, !tbaa !3
  %add21.3.13.4 = add i16 %923, %call.i.3.13.4
  store i16 %add21.3.13.4, i16* %arrayidx11.3.13.4, align 2, !tbaa !3
  %arrayidx9.3.14.4 = getelementptr inbounds i16, i16* %r, i64 158
  %924 = load i16, i16* %arrayidx9.3.14.4, align 2, !tbaa !3
  %conv1.i.3.14.4 = sext i16 %924 to i32
  %mul.i.3.14.4 = mul nsw i32 %conv1.i.3.14.4, 962
  %call.i.3.14.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.14.4) #2
  %arrayidx11.3.14.4 = getelementptr inbounds i16, i16* %r, i64 142
  %925 = load i16, i16* %arrayidx11.3.14.4, align 2, !tbaa !3
  %sub.3.14.4 = sub i16 %925, %call.i.3.14.4
  store i16 %sub.3.14.4, i16* %arrayidx9.3.14.4, align 2, !tbaa !3
  %add21.3.14.4 = add i16 %925, %call.i.3.14.4
  store i16 %add21.3.14.4, i16* %arrayidx11.3.14.4, align 2, !tbaa !3
  %arrayidx9.3.15.4 = getelementptr inbounds i16, i16* %r, i64 159
  %926 = load i16, i16* %arrayidx9.3.15.4, align 2, !tbaa !3
  %conv1.i.3.15.4 = sext i16 %926 to i32
  %mul.i.3.15.4 = mul nsw i32 %conv1.i.3.15.4, 962
  %call.i.3.15.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.15.4) #2
  %arrayidx11.3.15.4 = getelementptr inbounds i16, i16* %r, i64 143
  %927 = load i16, i16* %arrayidx11.3.15.4, align 2, !tbaa !3
  %sub.3.15.4 = sub i16 %927, %call.i.3.15.4
  store i16 %sub.3.15.4, i16* %arrayidx9.3.15.4, align 2, !tbaa !3
  %add21.3.15.4 = add i16 %927, %call.i.3.15.4
  store i16 %add21.3.15.4, i16* %arrayidx11.3.15.4, align 2, !tbaa !3
  %arrayidx9.3.5218 = getelementptr inbounds i16, i16* %r, i64 176
  %928 = load i16, i16* %arrayidx9.3.5218, align 2, !tbaa !3
  %conv1.i.3.5219 = sext i16 %928 to i32
  %mul.i.3.5220 = mul nsw i32 %conv1.i.3.5219, -1202
  %call.i.3.5221 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.5220) #2
  %arrayidx11.3.5222 = getelementptr inbounds i16, i16* %r, i64 160
  %929 = load i16, i16* %arrayidx11.3.5222, align 2, !tbaa !3
  %sub.3.5223 = sub i16 %929, %call.i.3.5221
  store i16 %sub.3.5223, i16* %arrayidx9.3.5218, align 2, !tbaa !3
  %add21.3.5224 = add i16 %929, %call.i.3.5221
  store i16 %add21.3.5224, i16* %arrayidx11.3.5222, align 2, !tbaa !3
  %arrayidx9.3.1.5 = getelementptr inbounds i16, i16* %r, i64 177
  %930 = load i16, i16* %arrayidx9.3.1.5, align 2, !tbaa !3
  %conv1.i.3.1.5 = sext i16 %930 to i32
  %mul.i.3.1.5 = mul nsw i32 %conv1.i.3.1.5, -1202
  %call.i.3.1.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.1.5) #2
  %arrayidx11.3.1.5 = getelementptr inbounds i16, i16* %r, i64 161
  %931 = load i16, i16* %arrayidx11.3.1.5, align 2, !tbaa !3
  %sub.3.1.5 = sub i16 %931, %call.i.3.1.5
  store i16 %sub.3.1.5, i16* %arrayidx9.3.1.5, align 2, !tbaa !3
  %add21.3.1.5 = add i16 %931, %call.i.3.1.5
  store i16 %add21.3.1.5, i16* %arrayidx11.3.1.5, align 2, !tbaa !3
  %arrayidx9.3.2.5 = getelementptr inbounds i16, i16* %r, i64 178
  %932 = load i16, i16* %arrayidx9.3.2.5, align 2, !tbaa !3
  %conv1.i.3.2.5 = sext i16 %932 to i32
  %mul.i.3.2.5 = mul nsw i32 %conv1.i.3.2.5, -1202
  %call.i.3.2.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.2.5) #2
  %arrayidx11.3.2.5 = getelementptr inbounds i16, i16* %r, i64 162
  %933 = load i16, i16* %arrayidx11.3.2.5, align 2, !tbaa !3
  %sub.3.2.5 = sub i16 %933, %call.i.3.2.5
  store i16 %sub.3.2.5, i16* %arrayidx9.3.2.5, align 2, !tbaa !3
  %add21.3.2.5 = add i16 %933, %call.i.3.2.5
  store i16 %add21.3.2.5, i16* %arrayidx11.3.2.5, align 2, !tbaa !3
  %arrayidx9.3.3.5 = getelementptr inbounds i16, i16* %r, i64 179
  %934 = load i16, i16* %arrayidx9.3.3.5, align 2, !tbaa !3
  %conv1.i.3.3.5 = sext i16 %934 to i32
  %mul.i.3.3.5 = mul nsw i32 %conv1.i.3.3.5, -1202
  %call.i.3.3.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.3.5) #2
  %arrayidx11.3.3.5 = getelementptr inbounds i16, i16* %r, i64 163
  %935 = load i16, i16* %arrayidx11.3.3.5, align 2, !tbaa !3
  %sub.3.3.5 = sub i16 %935, %call.i.3.3.5
  store i16 %sub.3.3.5, i16* %arrayidx9.3.3.5, align 2, !tbaa !3
  %add21.3.3.5 = add i16 %935, %call.i.3.3.5
  store i16 %add21.3.3.5, i16* %arrayidx11.3.3.5, align 2, !tbaa !3
  %arrayidx9.3.4.5 = getelementptr inbounds i16, i16* %r, i64 180
  %936 = load i16, i16* %arrayidx9.3.4.5, align 2, !tbaa !3
  %conv1.i.3.4.5 = sext i16 %936 to i32
  %mul.i.3.4.5 = mul nsw i32 %conv1.i.3.4.5, -1202
  %call.i.3.4.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.4.5) #2
  %arrayidx11.3.4.5 = getelementptr inbounds i16, i16* %r, i64 164
  %937 = load i16, i16* %arrayidx11.3.4.5, align 2, !tbaa !3
  %sub.3.4.5 = sub i16 %937, %call.i.3.4.5
  store i16 %sub.3.4.5, i16* %arrayidx9.3.4.5, align 2, !tbaa !3
  %add21.3.4.5 = add i16 %937, %call.i.3.4.5
  store i16 %add21.3.4.5, i16* %arrayidx11.3.4.5, align 2, !tbaa !3
  %arrayidx9.3.5.5 = getelementptr inbounds i16, i16* %r, i64 181
  %938 = load i16, i16* %arrayidx9.3.5.5, align 2, !tbaa !3
  %conv1.i.3.5.5 = sext i16 %938 to i32
  %mul.i.3.5.5 = mul nsw i32 %conv1.i.3.5.5, -1202
  %call.i.3.5.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.5.5) #2
  %arrayidx11.3.5.5 = getelementptr inbounds i16, i16* %r, i64 165
  %939 = load i16, i16* %arrayidx11.3.5.5, align 2, !tbaa !3
  %sub.3.5.5 = sub i16 %939, %call.i.3.5.5
  store i16 %sub.3.5.5, i16* %arrayidx9.3.5.5, align 2, !tbaa !3
  %add21.3.5.5 = add i16 %939, %call.i.3.5.5
  store i16 %add21.3.5.5, i16* %arrayidx11.3.5.5, align 2, !tbaa !3
  %arrayidx9.3.6.5 = getelementptr inbounds i16, i16* %r, i64 182
  %940 = load i16, i16* %arrayidx9.3.6.5, align 2, !tbaa !3
  %conv1.i.3.6.5 = sext i16 %940 to i32
  %mul.i.3.6.5 = mul nsw i32 %conv1.i.3.6.5, -1202
  %call.i.3.6.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.6.5) #2
  %arrayidx11.3.6.5 = getelementptr inbounds i16, i16* %r, i64 166
  %941 = load i16, i16* %arrayidx11.3.6.5, align 2, !tbaa !3
  %sub.3.6.5 = sub i16 %941, %call.i.3.6.5
  store i16 %sub.3.6.5, i16* %arrayidx9.3.6.5, align 2, !tbaa !3
  %add21.3.6.5 = add i16 %941, %call.i.3.6.5
  store i16 %add21.3.6.5, i16* %arrayidx11.3.6.5, align 2, !tbaa !3
  %arrayidx9.3.7.5 = getelementptr inbounds i16, i16* %r, i64 183
  %942 = load i16, i16* %arrayidx9.3.7.5, align 2, !tbaa !3
  %conv1.i.3.7.5 = sext i16 %942 to i32
  %mul.i.3.7.5 = mul nsw i32 %conv1.i.3.7.5, -1202
  %call.i.3.7.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.7.5) #2
  %arrayidx11.3.7.5 = getelementptr inbounds i16, i16* %r, i64 167
  %943 = load i16, i16* %arrayidx11.3.7.5, align 2, !tbaa !3
  %sub.3.7.5 = sub i16 %943, %call.i.3.7.5
  store i16 %sub.3.7.5, i16* %arrayidx9.3.7.5, align 2, !tbaa !3
  %add21.3.7.5 = add i16 %943, %call.i.3.7.5
  store i16 %add21.3.7.5, i16* %arrayidx11.3.7.5, align 2, !tbaa !3
  %arrayidx9.3.8.5 = getelementptr inbounds i16, i16* %r, i64 184
  %944 = load i16, i16* %arrayidx9.3.8.5, align 2, !tbaa !3
  %conv1.i.3.8.5 = sext i16 %944 to i32
  %mul.i.3.8.5 = mul nsw i32 %conv1.i.3.8.5, -1202
  %call.i.3.8.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.8.5) #2
  %arrayidx11.3.8.5 = getelementptr inbounds i16, i16* %r, i64 168
  %945 = load i16, i16* %arrayidx11.3.8.5, align 2, !tbaa !3
  %sub.3.8.5 = sub i16 %945, %call.i.3.8.5
  store i16 %sub.3.8.5, i16* %arrayidx9.3.8.5, align 2, !tbaa !3
  %add21.3.8.5 = add i16 %945, %call.i.3.8.5
  store i16 %add21.3.8.5, i16* %arrayidx11.3.8.5, align 2, !tbaa !3
  %arrayidx9.3.9.5 = getelementptr inbounds i16, i16* %r, i64 185
  %946 = load i16, i16* %arrayidx9.3.9.5, align 2, !tbaa !3
  %conv1.i.3.9.5 = sext i16 %946 to i32
  %mul.i.3.9.5 = mul nsw i32 %conv1.i.3.9.5, -1202
  %call.i.3.9.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.9.5) #2
  %arrayidx11.3.9.5 = getelementptr inbounds i16, i16* %r, i64 169
  %947 = load i16, i16* %arrayidx11.3.9.5, align 2, !tbaa !3
  %sub.3.9.5 = sub i16 %947, %call.i.3.9.5
  store i16 %sub.3.9.5, i16* %arrayidx9.3.9.5, align 2, !tbaa !3
  %add21.3.9.5 = add i16 %947, %call.i.3.9.5
  store i16 %add21.3.9.5, i16* %arrayidx11.3.9.5, align 2, !tbaa !3
  %arrayidx9.3.10.5 = getelementptr inbounds i16, i16* %r, i64 186
  %948 = load i16, i16* %arrayidx9.3.10.5, align 2, !tbaa !3
  %conv1.i.3.10.5 = sext i16 %948 to i32
  %mul.i.3.10.5 = mul nsw i32 %conv1.i.3.10.5, -1202
  %call.i.3.10.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.10.5) #2
  %arrayidx11.3.10.5 = getelementptr inbounds i16, i16* %r, i64 170
  %949 = load i16, i16* %arrayidx11.3.10.5, align 2, !tbaa !3
  %sub.3.10.5 = sub i16 %949, %call.i.3.10.5
  store i16 %sub.3.10.5, i16* %arrayidx9.3.10.5, align 2, !tbaa !3
  %add21.3.10.5 = add i16 %949, %call.i.3.10.5
  store i16 %add21.3.10.5, i16* %arrayidx11.3.10.5, align 2, !tbaa !3
  %arrayidx9.3.11.5 = getelementptr inbounds i16, i16* %r, i64 187
  %950 = load i16, i16* %arrayidx9.3.11.5, align 2, !tbaa !3
  %conv1.i.3.11.5 = sext i16 %950 to i32
  %mul.i.3.11.5 = mul nsw i32 %conv1.i.3.11.5, -1202
  %call.i.3.11.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.11.5) #2
  %arrayidx11.3.11.5 = getelementptr inbounds i16, i16* %r, i64 171
  %951 = load i16, i16* %arrayidx11.3.11.5, align 2, !tbaa !3
  %sub.3.11.5 = sub i16 %951, %call.i.3.11.5
  store i16 %sub.3.11.5, i16* %arrayidx9.3.11.5, align 2, !tbaa !3
  %add21.3.11.5 = add i16 %951, %call.i.3.11.5
  store i16 %add21.3.11.5, i16* %arrayidx11.3.11.5, align 2, !tbaa !3
  %arrayidx9.3.12.5 = getelementptr inbounds i16, i16* %r, i64 188
  %952 = load i16, i16* %arrayidx9.3.12.5, align 2, !tbaa !3
  %conv1.i.3.12.5 = sext i16 %952 to i32
  %mul.i.3.12.5 = mul nsw i32 %conv1.i.3.12.5, -1202
  %call.i.3.12.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.12.5) #2
  %arrayidx11.3.12.5 = getelementptr inbounds i16, i16* %r, i64 172
  %953 = load i16, i16* %arrayidx11.3.12.5, align 2, !tbaa !3
  %sub.3.12.5 = sub i16 %953, %call.i.3.12.5
  store i16 %sub.3.12.5, i16* %arrayidx9.3.12.5, align 2, !tbaa !3
  %add21.3.12.5 = add i16 %953, %call.i.3.12.5
  store i16 %add21.3.12.5, i16* %arrayidx11.3.12.5, align 2, !tbaa !3
  %arrayidx9.3.13.5 = getelementptr inbounds i16, i16* %r, i64 189
  %954 = load i16, i16* %arrayidx9.3.13.5, align 2, !tbaa !3
  %conv1.i.3.13.5 = sext i16 %954 to i32
  %mul.i.3.13.5 = mul nsw i32 %conv1.i.3.13.5, -1202
  %call.i.3.13.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.13.5) #2
  %arrayidx11.3.13.5 = getelementptr inbounds i16, i16* %r, i64 173
  %955 = load i16, i16* %arrayidx11.3.13.5, align 2, !tbaa !3
  %sub.3.13.5 = sub i16 %955, %call.i.3.13.5
  store i16 %sub.3.13.5, i16* %arrayidx9.3.13.5, align 2, !tbaa !3
  %add21.3.13.5 = add i16 %955, %call.i.3.13.5
  store i16 %add21.3.13.5, i16* %arrayidx11.3.13.5, align 2, !tbaa !3
  %arrayidx9.3.14.5 = getelementptr inbounds i16, i16* %r, i64 190
  %956 = load i16, i16* %arrayidx9.3.14.5, align 2, !tbaa !3
  %conv1.i.3.14.5 = sext i16 %956 to i32
  %mul.i.3.14.5 = mul nsw i32 %conv1.i.3.14.5, -1202
  %call.i.3.14.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.14.5) #2
  %arrayidx11.3.14.5 = getelementptr inbounds i16, i16* %r, i64 174
  %957 = load i16, i16* %arrayidx11.3.14.5, align 2, !tbaa !3
  %sub.3.14.5 = sub i16 %957, %call.i.3.14.5
  store i16 %sub.3.14.5, i16* %arrayidx9.3.14.5, align 2, !tbaa !3
  %add21.3.14.5 = add i16 %957, %call.i.3.14.5
  store i16 %add21.3.14.5, i16* %arrayidx11.3.14.5, align 2, !tbaa !3
  %arrayidx9.3.15.5 = getelementptr inbounds i16, i16* %r, i64 191
  %958 = load i16, i16* %arrayidx9.3.15.5, align 2, !tbaa !3
  %conv1.i.3.15.5 = sext i16 %958 to i32
  %mul.i.3.15.5 = mul nsw i32 %conv1.i.3.15.5, -1202
  %call.i.3.15.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.15.5) #2
  %arrayidx11.3.15.5 = getelementptr inbounds i16, i16* %r, i64 175
  %959 = load i16, i16* %arrayidx11.3.15.5, align 2, !tbaa !3
  %sub.3.15.5 = sub i16 %959, %call.i.3.15.5
  store i16 %sub.3.15.5, i16* %arrayidx9.3.15.5, align 2, !tbaa !3
  %add21.3.15.5 = add i16 %959, %call.i.3.15.5
  store i16 %add21.3.15.5, i16* %arrayidx11.3.15.5, align 2, !tbaa !3
  %arrayidx9.3.6228 = getelementptr inbounds i16, i16* %r, i64 208
  %960 = load i16, i16* %arrayidx9.3.6228, align 2, !tbaa !3
  %conv1.i.3.6229 = sext i16 %960 to i32
  %mul.i.3.6230 = mul nsw i32 %conv1.i.3.6229, -1474
  %call.i.3.6231 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.6230) #2
  %arrayidx11.3.6232 = getelementptr inbounds i16, i16* %r, i64 192
  %961 = load i16, i16* %arrayidx11.3.6232, align 2, !tbaa !3
  %sub.3.6233 = sub i16 %961, %call.i.3.6231
  store i16 %sub.3.6233, i16* %arrayidx9.3.6228, align 2, !tbaa !3
  %add21.3.6234 = add i16 %961, %call.i.3.6231
  store i16 %add21.3.6234, i16* %arrayidx11.3.6232, align 2, !tbaa !3
  %arrayidx9.3.1.6 = getelementptr inbounds i16, i16* %r, i64 209
  %962 = load i16, i16* %arrayidx9.3.1.6, align 2, !tbaa !3
  %conv1.i.3.1.6 = sext i16 %962 to i32
  %mul.i.3.1.6 = mul nsw i32 %conv1.i.3.1.6, -1474
  %call.i.3.1.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.1.6) #2
  %arrayidx11.3.1.6 = getelementptr inbounds i16, i16* %r, i64 193
  %963 = load i16, i16* %arrayidx11.3.1.6, align 2, !tbaa !3
  %sub.3.1.6 = sub i16 %963, %call.i.3.1.6
  store i16 %sub.3.1.6, i16* %arrayidx9.3.1.6, align 2, !tbaa !3
  %add21.3.1.6 = add i16 %963, %call.i.3.1.6
  store i16 %add21.3.1.6, i16* %arrayidx11.3.1.6, align 2, !tbaa !3
  %arrayidx9.3.2.6 = getelementptr inbounds i16, i16* %r, i64 210
  %964 = load i16, i16* %arrayidx9.3.2.6, align 2, !tbaa !3
  %conv1.i.3.2.6 = sext i16 %964 to i32
  %mul.i.3.2.6 = mul nsw i32 %conv1.i.3.2.6, -1474
  %call.i.3.2.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.2.6) #2
  %arrayidx11.3.2.6 = getelementptr inbounds i16, i16* %r, i64 194
  %965 = load i16, i16* %arrayidx11.3.2.6, align 2, !tbaa !3
  %sub.3.2.6 = sub i16 %965, %call.i.3.2.6
  store i16 %sub.3.2.6, i16* %arrayidx9.3.2.6, align 2, !tbaa !3
  %add21.3.2.6 = add i16 %965, %call.i.3.2.6
  store i16 %add21.3.2.6, i16* %arrayidx11.3.2.6, align 2, !tbaa !3
  %arrayidx9.3.3.6 = getelementptr inbounds i16, i16* %r, i64 211
  %966 = load i16, i16* %arrayidx9.3.3.6, align 2, !tbaa !3
  %conv1.i.3.3.6 = sext i16 %966 to i32
  %mul.i.3.3.6 = mul nsw i32 %conv1.i.3.3.6, -1474
  %call.i.3.3.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.3.6) #2
  %arrayidx11.3.3.6 = getelementptr inbounds i16, i16* %r, i64 195
  %967 = load i16, i16* %arrayidx11.3.3.6, align 2, !tbaa !3
  %sub.3.3.6 = sub i16 %967, %call.i.3.3.6
  store i16 %sub.3.3.6, i16* %arrayidx9.3.3.6, align 2, !tbaa !3
  %add21.3.3.6 = add i16 %967, %call.i.3.3.6
  store i16 %add21.3.3.6, i16* %arrayidx11.3.3.6, align 2, !tbaa !3
  %arrayidx9.3.4.6 = getelementptr inbounds i16, i16* %r, i64 212
  %968 = load i16, i16* %arrayidx9.3.4.6, align 2, !tbaa !3
  %conv1.i.3.4.6 = sext i16 %968 to i32
  %mul.i.3.4.6 = mul nsw i32 %conv1.i.3.4.6, -1474
  %call.i.3.4.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.4.6) #2
  %arrayidx11.3.4.6 = getelementptr inbounds i16, i16* %r, i64 196
  %969 = load i16, i16* %arrayidx11.3.4.6, align 2, !tbaa !3
  %sub.3.4.6 = sub i16 %969, %call.i.3.4.6
  store i16 %sub.3.4.6, i16* %arrayidx9.3.4.6, align 2, !tbaa !3
  %add21.3.4.6 = add i16 %969, %call.i.3.4.6
  store i16 %add21.3.4.6, i16* %arrayidx11.3.4.6, align 2, !tbaa !3
  %arrayidx9.3.5.6 = getelementptr inbounds i16, i16* %r, i64 213
  %970 = load i16, i16* %arrayidx9.3.5.6, align 2, !tbaa !3
  %conv1.i.3.5.6 = sext i16 %970 to i32
  %mul.i.3.5.6 = mul nsw i32 %conv1.i.3.5.6, -1474
  %call.i.3.5.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.5.6) #2
  %arrayidx11.3.5.6 = getelementptr inbounds i16, i16* %r, i64 197
  %971 = load i16, i16* %arrayidx11.3.5.6, align 2, !tbaa !3
  %sub.3.5.6 = sub i16 %971, %call.i.3.5.6
  store i16 %sub.3.5.6, i16* %arrayidx9.3.5.6, align 2, !tbaa !3
  %add21.3.5.6 = add i16 %971, %call.i.3.5.6
  store i16 %add21.3.5.6, i16* %arrayidx11.3.5.6, align 2, !tbaa !3
  %arrayidx9.3.6.6 = getelementptr inbounds i16, i16* %r, i64 214
  %972 = load i16, i16* %arrayidx9.3.6.6, align 2, !tbaa !3
  %conv1.i.3.6.6 = sext i16 %972 to i32
  %mul.i.3.6.6 = mul nsw i32 %conv1.i.3.6.6, -1474
  %call.i.3.6.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.6.6) #2
  %arrayidx11.3.6.6 = getelementptr inbounds i16, i16* %r, i64 198
  %973 = load i16, i16* %arrayidx11.3.6.6, align 2, !tbaa !3
  %sub.3.6.6 = sub i16 %973, %call.i.3.6.6
  store i16 %sub.3.6.6, i16* %arrayidx9.3.6.6, align 2, !tbaa !3
  %add21.3.6.6 = add i16 %973, %call.i.3.6.6
  store i16 %add21.3.6.6, i16* %arrayidx11.3.6.6, align 2, !tbaa !3
  %arrayidx9.3.7.6 = getelementptr inbounds i16, i16* %r, i64 215
  %974 = load i16, i16* %arrayidx9.3.7.6, align 2, !tbaa !3
  %conv1.i.3.7.6 = sext i16 %974 to i32
  %mul.i.3.7.6 = mul nsw i32 %conv1.i.3.7.6, -1474
  %call.i.3.7.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.7.6) #2
  %arrayidx11.3.7.6 = getelementptr inbounds i16, i16* %r, i64 199
  %975 = load i16, i16* %arrayidx11.3.7.6, align 2, !tbaa !3
  %sub.3.7.6 = sub i16 %975, %call.i.3.7.6
  store i16 %sub.3.7.6, i16* %arrayidx9.3.7.6, align 2, !tbaa !3
  %add21.3.7.6 = add i16 %975, %call.i.3.7.6
  store i16 %add21.3.7.6, i16* %arrayidx11.3.7.6, align 2, !tbaa !3
  %arrayidx9.3.8.6 = getelementptr inbounds i16, i16* %r, i64 216
  %976 = load i16, i16* %arrayidx9.3.8.6, align 2, !tbaa !3
  %conv1.i.3.8.6 = sext i16 %976 to i32
  %mul.i.3.8.6 = mul nsw i32 %conv1.i.3.8.6, -1474
  %call.i.3.8.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.8.6) #2
  %arrayidx11.3.8.6 = getelementptr inbounds i16, i16* %r, i64 200
  %977 = load i16, i16* %arrayidx11.3.8.6, align 2, !tbaa !3
  %sub.3.8.6 = sub i16 %977, %call.i.3.8.6
  store i16 %sub.3.8.6, i16* %arrayidx9.3.8.6, align 2, !tbaa !3
  %add21.3.8.6 = add i16 %977, %call.i.3.8.6
  store i16 %add21.3.8.6, i16* %arrayidx11.3.8.6, align 2, !tbaa !3
  %arrayidx9.3.9.6 = getelementptr inbounds i16, i16* %r, i64 217
  %978 = load i16, i16* %arrayidx9.3.9.6, align 2, !tbaa !3
  %conv1.i.3.9.6 = sext i16 %978 to i32
  %mul.i.3.9.6 = mul nsw i32 %conv1.i.3.9.6, -1474
  %call.i.3.9.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.9.6) #2
  %arrayidx11.3.9.6 = getelementptr inbounds i16, i16* %r, i64 201
  %979 = load i16, i16* %arrayidx11.3.9.6, align 2, !tbaa !3
  %sub.3.9.6 = sub i16 %979, %call.i.3.9.6
  store i16 %sub.3.9.6, i16* %arrayidx9.3.9.6, align 2, !tbaa !3
  %add21.3.9.6 = add i16 %979, %call.i.3.9.6
  store i16 %add21.3.9.6, i16* %arrayidx11.3.9.6, align 2, !tbaa !3
  %arrayidx9.3.10.6 = getelementptr inbounds i16, i16* %r, i64 218
  %980 = load i16, i16* %arrayidx9.3.10.6, align 2, !tbaa !3
  %conv1.i.3.10.6 = sext i16 %980 to i32
  %mul.i.3.10.6 = mul nsw i32 %conv1.i.3.10.6, -1474
  %call.i.3.10.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.10.6) #2
  %arrayidx11.3.10.6 = getelementptr inbounds i16, i16* %r, i64 202
  %981 = load i16, i16* %arrayidx11.3.10.6, align 2, !tbaa !3
  %sub.3.10.6 = sub i16 %981, %call.i.3.10.6
  store i16 %sub.3.10.6, i16* %arrayidx9.3.10.6, align 2, !tbaa !3
  %add21.3.10.6 = add i16 %981, %call.i.3.10.6
  store i16 %add21.3.10.6, i16* %arrayidx11.3.10.6, align 2, !tbaa !3
  %arrayidx9.3.11.6 = getelementptr inbounds i16, i16* %r, i64 219
  %982 = load i16, i16* %arrayidx9.3.11.6, align 2, !tbaa !3
  %conv1.i.3.11.6 = sext i16 %982 to i32
  %mul.i.3.11.6 = mul nsw i32 %conv1.i.3.11.6, -1474
  %call.i.3.11.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.11.6) #2
  %arrayidx11.3.11.6 = getelementptr inbounds i16, i16* %r, i64 203
  %983 = load i16, i16* %arrayidx11.3.11.6, align 2, !tbaa !3
  %sub.3.11.6 = sub i16 %983, %call.i.3.11.6
  store i16 %sub.3.11.6, i16* %arrayidx9.3.11.6, align 2, !tbaa !3
  %add21.3.11.6 = add i16 %983, %call.i.3.11.6
  store i16 %add21.3.11.6, i16* %arrayidx11.3.11.6, align 2, !tbaa !3
  %arrayidx9.3.12.6 = getelementptr inbounds i16, i16* %r, i64 220
  %984 = load i16, i16* %arrayidx9.3.12.6, align 2, !tbaa !3
  %conv1.i.3.12.6 = sext i16 %984 to i32
  %mul.i.3.12.6 = mul nsw i32 %conv1.i.3.12.6, -1474
  %call.i.3.12.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.12.6) #2
  %arrayidx11.3.12.6 = getelementptr inbounds i16, i16* %r, i64 204
  %985 = load i16, i16* %arrayidx11.3.12.6, align 2, !tbaa !3
  %sub.3.12.6 = sub i16 %985, %call.i.3.12.6
  store i16 %sub.3.12.6, i16* %arrayidx9.3.12.6, align 2, !tbaa !3
  %add21.3.12.6 = add i16 %985, %call.i.3.12.6
  store i16 %add21.3.12.6, i16* %arrayidx11.3.12.6, align 2, !tbaa !3
  %arrayidx9.3.13.6 = getelementptr inbounds i16, i16* %r, i64 221
  %986 = load i16, i16* %arrayidx9.3.13.6, align 2, !tbaa !3
  %conv1.i.3.13.6 = sext i16 %986 to i32
  %mul.i.3.13.6 = mul nsw i32 %conv1.i.3.13.6, -1474
  %call.i.3.13.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.13.6) #2
  %arrayidx11.3.13.6 = getelementptr inbounds i16, i16* %r, i64 205
  %987 = load i16, i16* %arrayidx11.3.13.6, align 2, !tbaa !3
  %sub.3.13.6 = sub i16 %987, %call.i.3.13.6
  store i16 %sub.3.13.6, i16* %arrayidx9.3.13.6, align 2, !tbaa !3
  %add21.3.13.6 = add i16 %987, %call.i.3.13.6
  store i16 %add21.3.13.6, i16* %arrayidx11.3.13.6, align 2, !tbaa !3
  %arrayidx9.3.14.6 = getelementptr inbounds i16, i16* %r, i64 222
  %988 = load i16, i16* %arrayidx9.3.14.6, align 2, !tbaa !3
  %conv1.i.3.14.6 = sext i16 %988 to i32
  %mul.i.3.14.6 = mul nsw i32 %conv1.i.3.14.6, -1474
  %call.i.3.14.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.14.6) #2
  %arrayidx11.3.14.6 = getelementptr inbounds i16, i16* %r, i64 206
  %989 = load i16, i16* %arrayidx11.3.14.6, align 2, !tbaa !3
  %sub.3.14.6 = sub i16 %989, %call.i.3.14.6
  store i16 %sub.3.14.6, i16* %arrayidx9.3.14.6, align 2, !tbaa !3
  %add21.3.14.6 = add i16 %989, %call.i.3.14.6
  store i16 %add21.3.14.6, i16* %arrayidx11.3.14.6, align 2, !tbaa !3
  %arrayidx9.3.15.6 = getelementptr inbounds i16, i16* %r, i64 223
  %990 = load i16, i16* %arrayidx9.3.15.6, align 2, !tbaa !3
  %conv1.i.3.15.6 = sext i16 %990 to i32
  %mul.i.3.15.6 = mul nsw i32 %conv1.i.3.15.6, -1474
  %call.i.3.15.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.15.6) #2
  %arrayidx11.3.15.6 = getelementptr inbounds i16, i16* %r, i64 207
  %991 = load i16, i16* %arrayidx11.3.15.6, align 2, !tbaa !3
  %sub.3.15.6 = sub i16 %991, %call.i.3.15.6
  store i16 %sub.3.15.6, i16* %arrayidx9.3.15.6, align 2, !tbaa !3
  %add21.3.15.6 = add i16 %991, %call.i.3.15.6
  store i16 %add21.3.15.6, i16* %arrayidx11.3.15.6, align 2, !tbaa !3
  %arrayidx9.3.7238 = getelementptr inbounds i16, i16* %r, i64 240
  %992 = load i16, i16* %arrayidx9.3.7238, align 2, !tbaa !3
  %conv1.i.3.7239 = sext i16 %992 to i32
  %mul.i.3.7240 = mul nsw i32 %conv1.i.3.7239, 1468
  %call.i.3.7241 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.7240) #2
  %arrayidx11.3.7242 = getelementptr inbounds i16, i16* %r, i64 224
  %993 = load i16, i16* %arrayidx11.3.7242, align 2, !tbaa !3
  %sub.3.7243 = sub i16 %993, %call.i.3.7241
  store i16 %sub.3.7243, i16* %arrayidx9.3.7238, align 2, !tbaa !3
  %add21.3.7244 = add i16 %993, %call.i.3.7241
  store i16 %add21.3.7244, i16* %arrayidx11.3.7242, align 2, !tbaa !3
  %arrayidx9.3.1.7 = getelementptr inbounds i16, i16* %r, i64 241
  %994 = load i16, i16* %arrayidx9.3.1.7, align 2, !tbaa !3
  %conv1.i.3.1.7 = sext i16 %994 to i32
  %mul.i.3.1.7 = mul nsw i32 %conv1.i.3.1.7, 1468
  %call.i.3.1.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.1.7) #2
  %arrayidx11.3.1.7 = getelementptr inbounds i16, i16* %r, i64 225
  %995 = load i16, i16* %arrayidx11.3.1.7, align 2, !tbaa !3
  %sub.3.1.7 = sub i16 %995, %call.i.3.1.7
  store i16 %sub.3.1.7, i16* %arrayidx9.3.1.7, align 2, !tbaa !3
  %add21.3.1.7 = add i16 %995, %call.i.3.1.7
  store i16 %add21.3.1.7, i16* %arrayidx11.3.1.7, align 2, !tbaa !3
  %arrayidx9.3.2.7 = getelementptr inbounds i16, i16* %r, i64 242
  %996 = load i16, i16* %arrayidx9.3.2.7, align 2, !tbaa !3
  %conv1.i.3.2.7 = sext i16 %996 to i32
  %mul.i.3.2.7 = mul nsw i32 %conv1.i.3.2.7, 1468
  %call.i.3.2.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.2.7) #2
  %arrayidx11.3.2.7 = getelementptr inbounds i16, i16* %r, i64 226
  %997 = load i16, i16* %arrayidx11.3.2.7, align 2, !tbaa !3
  %sub.3.2.7 = sub i16 %997, %call.i.3.2.7
  store i16 %sub.3.2.7, i16* %arrayidx9.3.2.7, align 2, !tbaa !3
  %add21.3.2.7 = add i16 %997, %call.i.3.2.7
  store i16 %add21.3.2.7, i16* %arrayidx11.3.2.7, align 2, !tbaa !3
  %arrayidx9.3.3.7 = getelementptr inbounds i16, i16* %r, i64 243
  %998 = load i16, i16* %arrayidx9.3.3.7, align 2, !tbaa !3
  %conv1.i.3.3.7 = sext i16 %998 to i32
  %mul.i.3.3.7 = mul nsw i32 %conv1.i.3.3.7, 1468
  %call.i.3.3.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.3.7) #2
  %arrayidx11.3.3.7 = getelementptr inbounds i16, i16* %r, i64 227
  %999 = load i16, i16* %arrayidx11.3.3.7, align 2, !tbaa !3
  %sub.3.3.7 = sub i16 %999, %call.i.3.3.7
  store i16 %sub.3.3.7, i16* %arrayidx9.3.3.7, align 2, !tbaa !3
  %add21.3.3.7 = add i16 %999, %call.i.3.3.7
  store i16 %add21.3.3.7, i16* %arrayidx11.3.3.7, align 2, !tbaa !3
  %arrayidx9.3.4.7 = getelementptr inbounds i16, i16* %r, i64 244
  %1000 = load i16, i16* %arrayidx9.3.4.7, align 2, !tbaa !3
  %conv1.i.3.4.7 = sext i16 %1000 to i32
  %mul.i.3.4.7 = mul nsw i32 %conv1.i.3.4.7, 1468
  %call.i.3.4.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.4.7) #2
  %arrayidx11.3.4.7 = getelementptr inbounds i16, i16* %r, i64 228
  %1001 = load i16, i16* %arrayidx11.3.4.7, align 2, !tbaa !3
  %sub.3.4.7 = sub i16 %1001, %call.i.3.4.7
  store i16 %sub.3.4.7, i16* %arrayidx9.3.4.7, align 2, !tbaa !3
  %add21.3.4.7 = add i16 %1001, %call.i.3.4.7
  store i16 %add21.3.4.7, i16* %arrayidx11.3.4.7, align 2, !tbaa !3
  %arrayidx9.3.5.7 = getelementptr inbounds i16, i16* %r, i64 245
  %1002 = load i16, i16* %arrayidx9.3.5.7, align 2, !tbaa !3
  %conv1.i.3.5.7 = sext i16 %1002 to i32
  %mul.i.3.5.7 = mul nsw i32 %conv1.i.3.5.7, 1468
  %call.i.3.5.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.5.7) #2
  %arrayidx11.3.5.7 = getelementptr inbounds i16, i16* %r, i64 229
  %1003 = load i16, i16* %arrayidx11.3.5.7, align 2, !tbaa !3
  %sub.3.5.7 = sub i16 %1003, %call.i.3.5.7
  store i16 %sub.3.5.7, i16* %arrayidx9.3.5.7, align 2, !tbaa !3
  %add21.3.5.7 = add i16 %1003, %call.i.3.5.7
  store i16 %add21.3.5.7, i16* %arrayidx11.3.5.7, align 2, !tbaa !3
  %arrayidx9.3.6.7 = getelementptr inbounds i16, i16* %r, i64 246
  %1004 = load i16, i16* %arrayidx9.3.6.7, align 2, !tbaa !3
  %conv1.i.3.6.7 = sext i16 %1004 to i32
  %mul.i.3.6.7 = mul nsw i32 %conv1.i.3.6.7, 1468
  %call.i.3.6.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.6.7) #2
  %arrayidx11.3.6.7 = getelementptr inbounds i16, i16* %r, i64 230
  %1005 = load i16, i16* %arrayidx11.3.6.7, align 2, !tbaa !3
  %sub.3.6.7 = sub i16 %1005, %call.i.3.6.7
  store i16 %sub.3.6.7, i16* %arrayidx9.3.6.7, align 2, !tbaa !3
  %add21.3.6.7 = add i16 %1005, %call.i.3.6.7
  store i16 %add21.3.6.7, i16* %arrayidx11.3.6.7, align 2, !tbaa !3
  %arrayidx9.3.7.7 = getelementptr inbounds i16, i16* %r, i64 247
  %1006 = load i16, i16* %arrayidx9.3.7.7, align 2, !tbaa !3
  %conv1.i.3.7.7 = sext i16 %1006 to i32
  %mul.i.3.7.7 = mul nsw i32 %conv1.i.3.7.7, 1468
  %call.i.3.7.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.7.7) #2
  %arrayidx11.3.7.7 = getelementptr inbounds i16, i16* %r, i64 231
  %1007 = load i16, i16* %arrayidx11.3.7.7, align 2, !tbaa !3
  %sub.3.7.7 = sub i16 %1007, %call.i.3.7.7
  store i16 %sub.3.7.7, i16* %arrayidx9.3.7.7, align 2, !tbaa !3
  %add21.3.7.7 = add i16 %1007, %call.i.3.7.7
  store i16 %add21.3.7.7, i16* %arrayidx11.3.7.7, align 2, !tbaa !3
  %arrayidx9.3.8.7 = getelementptr inbounds i16, i16* %r, i64 248
  %1008 = load i16, i16* %arrayidx9.3.8.7, align 2, !tbaa !3
  %conv1.i.3.8.7 = sext i16 %1008 to i32
  %mul.i.3.8.7 = mul nsw i32 %conv1.i.3.8.7, 1468
  %call.i.3.8.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.8.7) #2
  %arrayidx11.3.8.7 = getelementptr inbounds i16, i16* %r, i64 232
  %1009 = load i16, i16* %arrayidx11.3.8.7, align 2, !tbaa !3
  %sub.3.8.7 = sub i16 %1009, %call.i.3.8.7
  store i16 %sub.3.8.7, i16* %arrayidx9.3.8.7, align 2, !tbaa !3
  %add21.3.8.7 = add i16 %1009, %call.i.3.8.7
  store i16 %add21.3.8.7, i16* %arrayidx11.3.8.7, align 2, !tbaa !3
  %arrayidx9.3.9.7 = getelementptr inbounds i16, i16* %r, i64 249
  %1010 = load i16, i16* %arrayidx9.3.9.7, align 2, !tbaa !3
  %conv1.i.3.9.7 = sext i16 %1010 to i32
  %mul.i.3.9.7 = mul nsw i32 %conv1.i.3.9.7, 1468
  %call.i.3.9.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.9.7) #2
  %arrayidx11.3.9.7 = getelementptr inbounds i16, i16* %r, i64 233
  %1011 = load i16, i16* %arrayidx11.3.9.7, align 2, !tbaa !3
  %sub.3.9.7 = sub i16 %1011, %call.i.3.9.7
  store i16 %sub.3.9.7, i16* %arrayidx9.3.9.7, align 2, !tbaa !3
  %add21.3.9.7 = add i16 %1011, %call.i.3.9.7
  store i16 %add21.3.9.7, i16* %arrayidx11.3.9.7, align 2, !tbaa !3
  %arrayidx9.3.10.7 = getelementptr inbounds i16, i16* %r, i64 250
  %1012 = load i16, i16* %arrayidx9.3.10.7, align 2, !tbaa !3
  %conv1.i.3.10.7 = sext i16 %1012 to i32
  %mul.i.3.10.7 = mul nsw i32 %conv1.i.3.10.7, 1468
  %call.i.3.10.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.10.7) #2
  %arrayidx11.3.10.7 = getelementptr inbounds i16, i16* %r, i64 234
  %1013 = load i16, i16* %arrayidx11.3.10.7, align 2, !tbaa !3
  %sub.3.10.7 = sub i16 %1013, %call.i.3.10.7
  store i16 %sub.3.10.7, i16* %arrayidx9.3.10.7, align 2, !tbaa !3
  %add21.3.10.7 = add i16 %1013, %call.i.3.10.7
  store i16 %add21.3.10.7, i16* %arrayidx11.3.10.7, align 2, !tbaa !3
  %arrayidx9.3.11.7 = getelementptr inbounds i16, i16* %r, i64 251
  %1014 = load i16, i16* %arrayidx9.3.11.7, align 2, !tbaa !3
  %conv1.i.3.11.7 = sext i16 %1014 to i32
  %mul.i.3.11.7 = mul nsw i32 %conv1.i.3.11.7, 1468
  %call.i.3.11.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.11.7) #2
  %arrayidx11.3.11.7 = getelementptr inbounds i16, i16* %r, i64 235
  %1015 = load i16, i16* %arrayidx11.3.11.7, align 2, !tbaa !3
  %sub.3.11.7 = sub i16 %1015, %call.i.3.11.7
  store i16 %sub.3.11.7, i16* %arrayidx9.3.11.7, align 2, !tbaa !3
  %add21.3.11.7 = add i16 %1015, %call.i.3.11.7
  store i16 %add21.3.11.7, i16* %arrayidx11.3.11.7, align 2, !tbaa !3
  %arrayidx9.3.12.7 = getelementptr inbounds i16, i16* %r, i64 252
  %1016 = load i16, i16* %arrayidx9.3.12.7, align 2, !tbaa !3
  %conv1.i.3.12.7 = sext i16 %1016 to i32
  %mul.i.3.12.7 = mul nsw i32 %conv1.i.3.12.7, 1468
  %call.i.3.12.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.12.7) #2
  %arrayidx11.3.12.7 = getelementptr inbounds i16, i16* %r, i64 236
  %1017 = load i16, i16* %arrayidx11.3.12.7, align 2, !tbaa !3
  %sub.3.12.7 = sub i16 %1017, %call.i.3.12.7
  store i16 %sub.3.12.7, i16* %arrayidx9.3.12.7, align 2, !tbaa !3
  %add21.3.12.7 = add i16 %1017, %call.i.3.12.7
  store i16 %add21.3.12.7, i16* %arrayidx11.3.12.7, align 2, !tbaa !3
  %arrayidx9.3.13.7 = getelementptr inbounds i16, i16* %r, i64 253
  %1018 = load i16, i16* %arrayidx9.3.13.7, align 2, !tbaa !3
  %conv1.i.3.13.7 = sext i16 %1018 to i32
  %mul.i.3.13.7 = mul nsw i32 %conv1.i.3.13.7, 1468
  %call.i.3.13.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.13.7) #2
  %arrayidx11.3.13.7 = getelementptr inbounds i16, i16* %r, i64 237
  %1019 = load i16, i16* %arrayidx11.3.13.7, align 2, !tbaa !3
  %sub.3.13.7 = sub i16 %1019, %call.i.3.13.7
  store i16 %sub.3.13.7, i16* %arrayidx9.3.13.7, align 2, !tbaa !3
  %add21.3.13.7 = add i16 %1019, %call.i.3.13.7
  store i16 %add21.3.13.7, i16* %arrayidx11.3.13.7, align 2, !tbaa !3
  %arrayidx9.3.14.7 = getelementptr inbounds i16, i16* %r, i64 254
  %1020 = load i16, i16* %arrayidx9.3.14.7, align 2, !tbaa !3
  %conv1.i.3.14.7 = sext i16 %1020 to i32
  %mul.i.3.14.7 = mul nsw i32 %conv1.i.3.14.7, 1468
  %call.i.3.14.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.14.7) #2
  %arrayidx11.3.14.7 = getelementptr inbounds i16, i16* %r, i64 238
  %1021 = load i16, i16* %arrayidx11.3.14.7, align 2, !tbaa !3
  %sub.3.14.7 = sub i16 %1021, %call.i.3.14.7
  store i16 %sub.3.14.7, i16* %arrayidx9.3.14.7, align 2, !tbaa !3
  %add21.3.14.7 = add i16 %1021, %call.i.3.14.7
  store i16 %add21.3.14.7, i16* %arrayidx11.3.14.7, align 2, !tbaa !3
  %arrayidx9.3.15.7 = getelementptr inbounds i16, i16* %r, i64 255
  %1022 = load i16, i16* %arrayidx9.3.15.7, align 2, !tbaa !3
  %conv1.i.3.15.7 = sext i16 %1022 to i32
  %mul.i.3.15.7 = mul nsw i32 %conv1.i.3.15.7, 1468
  %call.i.3.15.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.15.7) #2
  %arrayidx11.3.15.7 = getelementptr inbounds i16, i16* %r, i64 239
  %1023 = load i16, i16* %arrayidx11.3.15.7, align 2, !tbaa !3
  %sub.3.15.7 = sub i16 %1023, %call.i.3.15.7
  store i16 %sub.3.15.7, i16* %arrayidx9.3.15.7, align 2, !tbaa !3
  %add21.3.15.7 = add i16 %1023, %call.i.3.15.7
  store i16 %add21.3.15.7, i16* %arrayidx11.3.15.7, align 2, !tbaa !3
  %arrayidx9.4 = getelementptr inbounds i16, i16* %r, i64 8
  %1024 = load i16, i16* %arrayidx9.4, align 2, !tbaa !3
  %conv1.i.4 = sext i16 %1024 to i32
  %mul.i.4 = mul nsw i32 %conv1.i.4, 573
  %call.i.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4) #2
  %1025 = load i16, i16* %r, align 2, !tbaa !3
  %sub.4 = sub i16 %1025, %call.i.4
  store i16 %sub.4, i16* %arrayidx9.4, align 2, !tbaa !3
  %add21.4 = add i16 %1025, %call.i.4
  store i16 %add21.4, i16* %r, align 2, !tbaa !3
  %arrayidx9.4.1 = getelementptr inbounds i16, i16* %r, i64 9
  %1026 = load i16, i16* %arrayidx9.4.1, align 2, !tbaa !3
  %conv1.i.4.1 = sext i16 %1026 to i32
  %mul.i.4.1 = mul nsw i32 %conv1.i.4.1, 573
  %call.i.4.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.1) #2
  %arrayidx11.4.1 = getelementptr inbounds i16, i16* %r, i64 1
  %1027 = load i16, i16* %arrayidx11.4.1, align 2, !tbaa !3
  %sub.4.1 = sub i16 %1027, %call.i.4.1
  store i16 %sub.4.1, i16* %arrayidx9.4.1, align 2, !tbaa !3
  %add21.4.1 = add i16 %1027, %call.i.4.1
  store i16 %add21.4.1, i16* %arrayidx11.4.1, align 2, !tbaa !3
  %arrayidx9.4.2 = getelementptr inbounds i16, i16* %r, i64 10
  %1028 = load i16, i16* %arrayidx9.4.2, align 2, !tbaa !3
  %conv1.i.4.2 = sext i16 %1028 to i32
  %mul.i.4.2 = mul nsw i32 %conv1.i.4.2, 573
  %call.i.4.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.2) #2
  %arrayidx11.4.2 = getelementptr inbounds i16, i16* %r, i64 2
  %1029 = load i16, i16* %arrayidx11.4.2, align 2, !tbaa !3
  %sub.4.2 = sub i16 %1029, %call.i.4.2
  store i16 %sub.4.2, i16* %arrayidx9.4.2, align 2, !tbaa !3
  %add21.4.2 = add i16 %1029, %call.i.4.2
  store i16 %add21.4.2, i16* %arrayidx11.4.2, align 2, !tbaa !3
  %arrayidx9.4.3 = getelementptr inbounds i16, i16* %r, i64 11
  %1030 = load i16, i16* %arrayidx9.4.3, align 2, !tbaa !3
  %conv1.i.4.3 = sext i16 %1030 to i32
  %mul.i.4.3 = mul nsw i32 %conv1.i.4.3, 573
  %call.i.4.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.3) #2
  %arrayidx11.4.3 = getelementptr inbounds i16, i16* %r, i64 3
  %1031 = load i16, i16* %arrayidx11.4.3, align 2, !tbaa !3
  %sub.4.3 = sub i16 %1031, %call.i.4.3
  store i16 %sub.4.3, i16* %arrayidx9.4.3, align 2, !tbaa !3
  %add21.4.3 = add i16 %1031, %call.i.4.3
  store i16 %add21.4.3, i16* %arrayidx11.4.3, align 2, !tbaa !3
  %arrayidx9.4.4 = getelementptr inbounds i16, i16* %r, i64 12
  %1032 = load i16, i16* %arrayidx9.4.4, align 2, !tbaa !3
  %conv1.i.4.4 = sext i16 %1032 to i32
  %mul.i.4.4 = mul nsw i32 %conv1.i.4.4, 573
  %call.i.4.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.4) #2
  %arrayidx11.4.4 = getelementptr inbounds i16, i16* %r, i64 4
  %1033 = load i16, i16* %arrayidx11.4.4, align 2, !tbaa !3
  %sub.4.4 = sub i16 %1033, %call.i.4.4
  store i16 %sub.4.4, i16* %arrayidx9.4.4, align 2, !tbaa !3
  %add21.4.4 = add i16 %1033, %call.i.4.4
  store i16 %add21.4.4, i16* %arrayidx11.4.4, align 2, !tbaa !3
  %arrayidx9.4.5 = getelementptr inbounds i16, i16* %r, i64 13
  %1034 = load i16, i16* %arrayidx9.4.5, align 2, !tbaa !3
  %conv1.i.4.5 = sext i16 %1034 to i32
  %mul.i.4.5 = mul nsw i32 %conv1.i.4.5, 573
  %call.i.4.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.5) #2
  %arrayidx11.4.5 = getelementptr inbounds i16, i16* %r, i64 5
  %1035 = load i16, i16* %arrayidx11.4.5, align 2, !tbaa !3
  %sub.4.5 = sub i16 %1035, %call.i.4.5
  store i16 %sub.4.5, i16* %arrayidx9.4.5, align 2, !tbaa !3
  %add21.4.5 = add i16 %1035, %call.i.4.5
  store i16 %add21.4.5, i16* %arrayidx11.4.5, align 2, !tbaa !3
  %arrayidx9.4.6 = getelementptr inbounds i16, i16* %r, i64 14
  %1036 = load i16, i16* %arrayidx9.4.6, align 2, !tbaa !3
  %conv1.i.4.6 = sext i16 %1036 to i32
  %mul.i.4.6 = mul nsw i32 %conv1.i.4.6, 573
  %call.i.4.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.6) #2
  %arrayidx11.4.6 = getelementptr inbounds i16, i16* %r, i64 6
  %1037 = load i16, i16* %arrayidx11.4.6, align 2, !tbaa !3
  %sub.4.6 = sub i16 %1037, %call.i.4.6
  store i16 %sub.4.6, i16* %arrayidx9.4.6, align 2, !tbaa !3
  %add21.4.6 = add i16 %1037, %call.i.4.6
  store i16 %add21.4.6, i16* %arrayidx11.4.6, align 2, !tbaa !3
  %arrayidx9.4.7 = getelementptr inbounds i16, i16* %r, i64 15
  %1038 = load i16, i16* %arrayidx9.4.7, align 2, !tbaa !3
  %conv1.i.4.7 = sext i16 %1038 to i32
  %mul.i.4.7 = mul nsw i32 %conv1.i.4.7, 573
  %call.i.4.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.7) #2
  %arrayidx11.4.7 = getelementptr inbounds i16, i16* %r, i64 7
  %1039 = load i16, i16* %arrayidx11.4.7, align 2, !tbaa !3
  %sub.4.7 = sub i16 %1039, %call.i.4.7
  store i16 %sub.4.7, i16* %arrayidx9.4.7, align 2, !tbaa !3
  %add21.4.7 = add i16 %1039, %call.i.4.7
  store i16 %add21.4.7, i16* %arrayidx11.4.7, align 2, !tbaa !3
  %arrayidx9.4.1108 = getelementptr inbounds i16, i16* %r, i64 24
  %1040 = load i16, i16* %arrayidx9.4.1108, align 2, !tbaa !3
  %conv1.i.4.1109 = sext i16 %1040 to i32
  %mul.i.4.1110 = mul nsw i32 %conv1.i.4.1109, -1325
  %call.i.4.1111 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.1110) #2
  %arrayidx11.4.1112 = getelementptr inbounds i16, i16* %r, i64 16
  %1041 = load i16, i16* %arrayidx11.4.1112, align 2, !tbaa !3
  %sub.4.1113 = sub i16 %1041, %call.i.4.1111
  store i16 %sub.4.1113, i16* %arrayidx9.4.1108, align 2, !tbaa !3
  %add21.4.1114 = add i16 %1041, %call.i.4.1111
  store i16 %add21.4.1114, i16* %arrayidx11.4.1112, align 2, !tbaa !3
  %arrayidx9.4.1.1 = getelementptr inbounds i16, i16* %r, i64 25
  %1042 = load i16, i16* %arrayidx9.4.1.1, align 2, !tbaa !3
  %conv1.i.4.1.1 = sext i16 %1042 to i32
  %mul.i.4.1.1 = mul nsw i32 %conv1.i.4.1.1, -1325
  %call.i.4.1.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.1.1) #2
  %arrayidx11.4.1.1 = getelementptr inbounds i16, i16* %r, i64 17
  %1043 = load i16, i16* %arrayidx11.4.1.1, align 2, !tbaa !3
  %sub.4.1.1 = sub i16 %1043, %call.i.4.1.1
  store i16 %sub.4.1.1, i16* %arrayidx9.4.1.1, align 2, !tbaa !3
  %add21.4.1.1 = add i16 %1043, %call.i.4.1.1
  store i16 %add21.4.1.1, i16* %arrayidx11.4.1.1, align 2, !tbaa !3
  %arrayidx9.4.2.1 = getelementptr inbounds i16, i16* %r, i64 26
  %1044 = load i16, i16* %arrayidx9.4.2.1, align 2, !tbaa !3
  %conv1.i.4.2.1 = sext i16 %1044 to i32
  %mul.i.4.2.1 = mul nsw i32 %conv1.i.4.2.1, -1325
  %call.i.4.2.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.2.1) #2
  %arrayidx11.4.2.1 = getelementptr inbounds i16, i16* %r, i64 18
  %1045 = load i16, i16* %arrayidx11.4.2.1, align 2, !tbaa !3
  %sub.4.2.1 = sub i16 %1045, %call.i.4.2.1
  store i16 %sub.4.2.1, i16* %arrayidx9.4.2.1, align 2, !tbaa !3
  %add21.4.2.1 = add i16 %1045, %call.i.4.2.1
  store i16 %add21.4.2.1, i16* %arrayidx11.4.2.1, align 2, !tbaa !3
  %arrayidx9.4.3.1 = getelementptr inbounds i16, i16* %r, i64 27
  %1046 = load i16, i16* %arrayidx9.4.3.1, align 2, !tbaa !3
  %conv1.i.4.3.1 = sext i16 %1046 to i32
  %mul.i.4.3.1 = mul nsw i32 %conv1.i.4.3.1, -1325
  %call.i.4.3.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.3.1) #2
  %arrayidx11.4.3.1 = getelementptr inbounds i16, i16* %r, i64 19
  %1047 = load i16, i16* %arrayidx11.4.3.1, align 2, !tbaa !3
  %sub.4.3.1 = sub i16 %1047, %call.i.4.3.1
  store i16 %sub.4.3.1, i16* %arrayidx9.4.3.1, align 2, !tbaa !3
  %add21.4.3.1 = add i16 %1047, %call.i.4.3.1
  store i16 %add21.4.3.1, i16* %arrayidx11.4.3.1, align 2, !tbaa !3
  %arrayidx9.4.4.1 = getelementptr inbounds i16, i16* %r, i64 28
  %1048 = load i16, i16* %arrayidx9.4.4.1, align 2, !tbaa !3
  %conv1.i.4.4.1 = sext i16 %1048 to i32
  %mul.i.4.4.1 = mul nsw i32 %conv1.i.4.4.1, -1325
  %call.i.4.4.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.4.1) #2
  %arrayidx11.4.4.1 = getelementptr inbounds i16, i16* %r, i64 20
  %1049 = load i16, i16* %arrayidx11.4.4.1, align 2, !tbaa !3
  %sub.4.4.1 = sub i16 %1049, %call.i.4.4.1
  store i16 %sub.4.4.1, i16* %arrayidx9.4.4.1, align 2, !tbaa !3
  %add21.4.4.1 = add i16 %1049, %call.i.4.4.1
  store i16 %add21.4.4.1, i16* %arrayidx11.4.4.1, align 2, !tbaa !3
  %arrayidx9.4.5.1 = getelementptr inbounds i16, i16* %r, i64 29
  %1050 = load i16, i16* %arrayidx9.4.5.1, align 2, !tbaa !3
  %conv1.i.4.5.1 = sext i16 %1050 to i32
  %mul.i.4.5.1 = mul nsw i32 %conv1.i.4.5.1, -1325
  %call.i.4.5.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.5.1) #2
  %arrayidx11.4.5.1 = getelementptr inbounds i16, i16* %r, i64 21
  %1051 = load i16, i16* %arrayidx11.4.5.1, align 2, !tbaa !3
  %sub.4.5.1 = sub i16 %1051, %call.i.4.5.1
  store i16 %sub.4.5.1, i16* %arrayidx9.4.5.1, align 2, !tbaa !3
  %add21.4.5.1 = add i16 %1051, %call.i.4.5.1
  store i16 %add21.4.5.1, i16* %arrayidx11.4.5.1, align 2, !tbaa !3
  %arrayidx9.4.6.1 = getelementptr inbounds i16, i16* %r, i64 30
  %1052 = load i16, i16* %arrayidx9.4.6.1, align 2, !tbaa !3
  %conv1.i.4.6.1 = sext i16 %1052 to i32
  %mul.i.4.6.1 = mul nsw i32 %conv1.i.4.6.1, -1325
  %call.i.4.6.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.6.1) #2
  %arrayidx11.4.6.1 = getelementptr inbounds i16, i16* %r, i64 22
  %1053 = load i16, i16* %arrayidx11.4.6.1, align 2, !tbaa !3
  %sub.4.6.1 = sub i16 %1053, %call.i.4.6.1
  store i16 %sub.4.6.1, i16* %arrayidx9.4.6.1, align 2, !tbaa !3
  %add21.4.6.1 = add i16 %1053, %call.i.4.6.1
  store i16 %add21.4.6.1, i16* %arrayidx11.4.6.1, align 2, !tbaa !3
  %arrayidx9.4.7.1 = getelementptr inbounds i16, i16* %r, i64 31
  %1054 = load i16, i16* %arrayidx9.4.7.1, align 2, !tbaa !3
  %conv1.i.4.7.1 = sext i16 %1054 to i32
  %mul.i.4.7.1 = mul nsw i32 %conv1.i.4.7.1, -1325
  %call.i.4.7.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.7.1) #2
  %arrayidx11.4.7.1 = getelementptr inbounds i16, i16* %r, i64 23
  %1055 = load i16, i16* %arrayidx11.4.7.1, align 2, !tbaa !3
  %sub.4.7.1 = sub i16 %1055, %call.i.4.7.1
  store i16 %sub.4.7.1, i16* %arrayidx9.4.7.1, align 2, !tbaa !3
  %add21.4.7.1 = add i16 %1055, %call.i.4.7.1
  store i16 %add21.4.7.1, i16* %arrayidx11.4.7.1, align 2, !tbaa !3
  %arrayidx9.4.2118 = getelementptr inbounds i16, i16* %r, i64 40
  %1056 = load i16, i16* %arrayidx9.4.2118, align 2, !tbaa !3
  %conv1.i.4.2119 = sext i16 %1056 to i32
  %mul.i.4.2120 = mul nsw i32 %conv1.i.4.2119, 264
  %call.i.4.2121 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.2120) #2
  %arrayidx11.4.2122 = getelementptr inbounds i16, i16* %r, i64 32
  %1057 = load i16, i16* %arrayidx11.4.2122, align 2, !tbaa !3
  %sub.4.2123 = sub i16 %1057, %call.i.4.2121
  store i16 %sub.4.2123, i16* %arrayidx9.4.2118, align 2, !tbaa !3
  %add21.4.2124 = add i16 %1057, %call.i.4.2121
  store i16 %add21.4.2124, i16* %arrayidx11.4.2122, align 2, !tbaa !3
  %arrayidx9.4.1.2 = getelementptr inbounds i16, i16* %r, i64 41
  %1058 = load i16, i16* %arrayidx9.4.1.2, align 2, !tbaa !3
  %conv1.i.4.1.2 = sext i16 %1058 to i32
  %mul.i.4.1.2 = mul nsw i32 %conv1.i.4.1.2, 264
  %call.i.4.1.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.1.2) #2
  %arrayidx11.4.1.2 = getelementptr inbounds i16, i16* %r, i64 33
  %1059 = load i16, i16* %arrayidx11.4.1.2, align 2, !tbaa !3
  %sub.4.1.2 = sub i16 %1059, %call.i.4.1.2
  store i16 %sub.4.1.2, i16* %arrayidx9.4.1.2, align 2, !tbaa !3
  %add21.4.1.2 = add i16 %1059, %call.i.4.1.2
  store i16 %add21.4.1.2, i16* %arrayidx11.4.1.2, align 2, !tbaa !3
  %arrayidx9.4.2.2 = getelementptr inbounds i16, i16* %r, i64 42
  %1060 = load i16, i16* %arrayidx9.4.2.2, align 2, !tbaa !3
  %conv1.i.4.2.2 = sext i16 %1060 to i32
  %mul.i.4.2.2 = mul nsw i32 %conv1.i.4.2.2, 264
  %call.i.4.2.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.2.2) #2
  %arrayidx11.4.2.2 = getelementptr inbounds i16, i16* %r, i64 34
  %1061 = load i16, i16* %arrayidx11.4.2.2, align 2, !tbaa !3
  %sub.4.2.2 = sub i16 %1061, %call.i.4.2.2
  store i16 %sub.4.2.2, i16* %arrayidx9.4.2.2, align 2, !tbaa !3
  %add21.4.2.2 = add i16 %1061, %call.i.4.2.2
  store i16 %add21.4.2.2, i16* %arrayidx11.4.2.2, align 2, !tbaa !3
  %arrayidx9.4.3.2 = getelementptr inbounds i16, i16* %r, i64 43
  %1062 = load i16, i16* %arrayidx9.4.3.2, align 2, !tbaa !3
  %conv1.i.4.3.2 = sext i16 %1062 to i32
  %mul.i.4.3.2 = mul nsw i32 %conv1.i.4.3.2, 264
  %call.i.4.3.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.3.2) #2
  %arrayidx11.4.3.2 = getelementptr inbounds i16, i16* %r, i64 35
  %1063 = load i16, i16* %arrayidx11.4.3.2, align 2, !tbaa !3
  %sub.4.3.2 = sub i16 %1063, %call.i.4.3.2
  store i16 %sub.4.3.2, i16* %arrayidx9.4.3.2, align 2, !tbaa !3
  %add21.4.3.2 = add i16 %1063, %call.i.4.3.2
  store i16 %add21.4.3.2, i16* %arrayidx11.4.3.2, align 2, !tbaa !3
  %arrayidx9.4.4.2 = getelementptr inbounds i16, i16* %r, i64 44
  %1064 = load i16, i16* %arrayidx9.4.4.2, align 2, !tbaa !3
  %conv1.i.4.4.2 = sext i16 %1064 to i32
  %mul.i.4.4.2 = mul nsw i32 %conv1.i.4.4.2, 264
  %call.i.4.4.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.4.2) #2
  %arrayidx11.4.4.2 = getelementptr inbounds i16, i16* %r, i64 36
  %1065 = load i16, i16* %arrayidx11.4.4.2, align 2, !tbaa !3
  %sub.4.4.2 = sub i16 %1065, %call.i.4.4.2
  store i16 %sub.4.4.2, i16* %arrayidx9.4.4.2, align 2, !tbaa !3
  %add21.4.4.2 = add i16 %1065, %call.i.4.4.2
  store i16 %add21.4.4.2, i16* %arrayidx11.4.4.2, align 2, !tbaa !3
  %arrayidx9.4.5.2 = getelementptr inbounds i16, i16* %r, i64 45
  %1066 = load i16, i16* %arrayidx9.4.5.2, align 2, !tbaa !3
  %conv1.i.4.5.2 = sext i16 %1066 to i32
  %mul.i.4.5.2 = mul nsw i32 %conv1.i.4.5.2, 264
  %call.i.4.5.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.5.2) #2
  %arrayidx11.4.5.2 = getelementptr inbounds i16, i16* %r, i64 37
  %1067 = load i16, i16* %arrayidx11.4.5.2, align 2, !tbaa !3
  %sub.4.5.2 = sub i16 %1067, %call.i.4.5.2
  store i16 %sub.4.5.2, i16* %arrayidx9.4.5.2, align 2, !tbaa !3
  %add21.4.5.2 = add i16 %1067, %call.i.4.5.2
  store i16 %add21.4.5.2, i16* %arrayidx11.4.5.2, align 2, !tbaa !3
  %arrayidx9.4.6.2 = getelementptr inbounds i16, i16* %r, i64 46
  %1068 = load i16, i16* %arrayidx9.4.6.2, align 2, !tbaa !3
  %conv1.i.4.6.2 = sext i16 %1068 to i32
  %mul.i.4.6.2 = mul nsw i32 %conv1.i.4.6.2, 264
  %call.i.4.6.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.6.2) #2
  %arrayidx11.4.6.2 = getelementptr inbounds i16, i16* %r, i64 38
  %1069 = load i16, i16* %arrayidx11.4.6.2, align 2, !tbaa !3
  %sub.4.6.2 = sub i16 %1069, %call.i.4.6.2
  store i16 %sub.4.6.2, i16* %arrayidx9.4.6.2, align 2, !tbaa !3
  %add21.4.6.2 = add i16 %1069, %call.i.4.6.2
  store i16 %add21.4.6.2, i16* %arrayidx11.4.6.2, align 2, !tbaa !3
  %arrayidx9.4.7.2 = getelementptr inbounds i16, i16* %r, i64 47
  %1070 = load i16, i16* %arrayidx9.4.7.2, align 2, !tbaa !3
  %conv1.i.4.7.2 = sext i16 %1070 to i32
  %mul.i.4.7.2 = mul nsw i32 %conv1.i.4.7.2, 264
  %call.i.4.7.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.7.2) #2
  %arrayidx11.4.7.2 = getelementptr inbounds i16, i16* %r, i64 39
  %1071 = load i16, i16* %arrayidx11.4.7.2, align 2, !tbaa !3
  %sub.4.7.2 = sub i16 %1071, %call.i.4.7.2
  store i16 %sub.4.7.2, i16* %arrayidx9.4.7.2, align 2, !tbaa !3
  %add21.4.7.2 = add i16 %1071, %call.i.4.7.2
  store i16 %add21.4.7.2, i16* %arrayidx11.4.7.2, align 2, !tbaa !3
  %arrayidx9.4.3128 = getelementptr inbounds i16, i16* %r, i64 56
  %1072 = load i16, i16* %arrayidx9.4.3128, align 2, !tbaa !3
  %conv1.i.4.3129 = sext i16 %1072 to i32
  %mul.i.4.3130 = mul nsw i32 %conv1.i.4.3129, 383
  %call.i.4.3131 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.3130) #2
  %arrayidx11.4.3132 = getelementptr inbounds i16, i16* %r, i64 48
  %1073 = load i16, i16* %arrayidx11.4.3132, align 2, !tbaa !3
  %sub.4.3133 = sub i16 %1073, %call.i.4.3131
  store i16 %sub.4.3133, i16* %arrayidx9.4.3128, align 2, !tbaa !3
  %add21.4.3134 = add i16 %1073, %call.i.4.3131
  store i16 %add21.4.3134, i16* %arrayidx11.4.3132, align 2, !tbaa !3
  %arrayidx9.4.1.3 = getelementptr inbounds i16, i16* %r, i64 57
  %1074 = load i16, i16* %arrayidx9.4.1.3, align 2, !tbaa !3
  %conv1.i.4.1.3 = sext i16 %1074 to i32
  %mul.i.4.1.3 = mul nsw i32 %conv1.i.4.1.3, 383
  %call.i.4.1.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.1.3) #2
  %arrayidx11.4.1.3 = getelementptr inbounds i16, i16* %r, i64 49
  %1075 = load i16, i16* %arrayidx11.4.1.3, align 2, !tbaa !3
  %sub.4.1.3 = sub i16 %1075, %call.i.4.1.3
  store i16 %sub.4.1.3, i16* %arrayidx9.4.1.3, align 2, !tbaa !3
  %add21.4.1.3 = add i16 %1075, %call.i.4.1.3
  store i16 %add21.4.1.3, i16* %arrayidx11.4.1.3, align 2, !tbaa !3
  %arrayidx9.4.2.3 = getelementptr inbounds i16, i16* %r, i64 58
  %1076 = load i16, i16* %arrayidx9.4.2.3, align 2, !tbaa !3
  %conv1.i.4.2.3 = sext i16 %1076 to i32
  %mul.i.4.2.3 = mul nsw i32 %conv1.i.4.2.3, 383
  %call.i.4.2.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.2.3) #2
  %arrayidx11.4.2.3 = getelementptr inbounds i16, i16* %r, i64 50
  %1077 = load i16, i16* %arrayidx11.4.2.3, align 2, !tbaa !3
  %sub.4.2.3 = sub i16 %1077, %call.i.4.2.3
  store i16 %sub.4.2.3, i16* %arrayidx9.4.2.3, align 2, !tbaa !3
  %add21.4.2.3 = add i16 %1077, %call.i.4.2.3
  store i16 %add21.4.2.3, i16* %arrayidx11.4.2.3, align 2, !tbaa !3
  %arrayidx9.4.3.3 = getelementptr inbounds i16, i16* %r, i64 59
  %1078 = load i16, i16* %arrayidx9.4.3.3, align 2, !tbaa !3
  %conv1.i.4.3.3 = sext i16 %1078 to i32
  %mul.i.4.3.3 = mul nsw i32 %conv1.i.4.3.3, 383
  %call.i.4.3.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.3.3) #2
  %arrayidx11.4.3.3 = getelementptr inbounds i16, i16* %r, i64 51
  %1079 = load i16, i16* %arrayidx11.4.3.3, align 2, !tbaa !3
  %sub.4.3.3 = sub i16 %1079, %call.i.4.3.3
  store i16 %sub.4.3.3, i16* %arrayidx9.4.3.3, align 2, !tbaa !3
  %add21.4.3.3 = add i16 %1079, %call.i.4.3.3
  store i16 %add21.4.3.3, i16* %arrayidx11.4.3.3, align 2, !tbaa !3
  %arrayidx9.4.4.3 = getelementptr inbounds i16, i16* %r, i64 60
  %1080 = load i16, i16* %arrayidx9.4.4.3, align 2, !tbaa !3
  %conv1.i.4.4.3 = sext i16 %1080 to i32
  %mul.i.4.4.3 = mul nsw i32 %conv1.i.4.4.3, 383
  %call.i.4.4.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.4.3) #2
  %arrayidx11.4.4.3 = getelementptr inbounds i16, i16* %r, i64 52
  %1081 = load i16, i16* %arrayidx11.4.4.3, align 2, !tbaa !3
  %sub.4.4.3 = sub i16 %1081, %call.i.4.4.3
  store i16 %sub.4.4.3, i16* %arrayidx9.4.4.3, align 2, !tbaa !3
  %add21.4.4.3 = add i16 %1081, %call.i.4.4.3
  store i16 %add21.4.4.3, i16* %arrayidx11.4.4.3, align 2, !tbaa !3
  %arrayidx9.4.5.3 = getelementptr inbounds i16, i16* %r, i64 61
  %1082 = load i16, i16* %arrayidx9.4.5.3, align 2, !tbaa !3
  %conv1.i.4.5.3 = sext i16 %1082 to i32
  %mul.i.4.5.3 = mul nsw i32 %conv1.i.4.5.3, 383
  %call.i.4.5.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.5.3) #2
  %arrayidx11.4.5.3 = getelementptr inbounds i16, i16* %r, i64 53
  %1083 = load i16, i16* %arrayidx11.4.5.3, align 2, !tbaa !3
  %sub.4.5.3 = sub i16 %1083, %call.i.4.5.3
  store i16 %sub.4.5.3, i16* %arrayidx9.4.5.3, align 2, !tbaa !3
  %add21.4.5.3 = add i16 %1083, %call.i.4.5.3
  store i16 %add21.4.5.3, i16* %arrayidx11.4.5.3, align 2, !tbaa !3
  %arrayidx9.4.6.3 = getelementptr inbounds i16, i16* %r, i64 62
  %1084 = load i16, i16* %arrayidx9.4.6.3, align 2, !tbaa !3
  %conv1.i.4.6.3 = sext i16 %1084 to i32
  %mul.i.4.6.3 = mul nsw i32 %conv1.i.4.6.3, 383
  %call.i.4.6.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.6.3) #2
  %arrayidx11.4.6.3 = getelementptr inbounds i16, i16* %r, i64 54
  %1085 = load i16, i16* %arrayidx11.4.6.3, align 2, !tbaa !3
  %sub.4.6.3 = sub i16 %1085, %call.i.4.6.3
  store i16 %sub.4.6.3, i16* %arrayidx9.4.6.3, align 2, !tbaa !3
  %add21.4.6.3 = add i16 %1085, %call.i.4.6.3
  store i16 %add21.4.6.3, i16* %arrayidx11.4.6.3, align 2, !tbaa !3
  %arrayidx9.4.7.3 = getelementptr inbounds i16, i16* %r, i64 63
  %1086 = load i16, i16* %arrayidx9.4.7.3, align 2, !tbaa !3
  %conv1.i.4.7.3 = sext i16 %1086 to i32
  %mul.i.4.7.3 = mul nsw i32 %conv1.i.4.7.3, 383
  %call.i.4.7.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.7.3) #2
  %arrayidx11.4.7.3 = getelementptr inbounds i16, i16* %r, i64 55
  %1087 = load i16, i16* %arrayidx11.4.7.3, align 2, !tbaa !3
  %sub.4.7.3 = sub i16 %1087, %call.i.4.7.3
  store i16 %sub.4.7.3, i16* %arrayidx9.4.7.3, align 2, !tbaa !3
  %add21.4.7.3 = add i16 %1087, %call.i.4.7.3
  store i16 %add21.4.7.3, i16* %arrayidx11.4.7.3, align 2, !tbaa !3
  %arrayidx9.4.4138 = getelementptr inbounds i16, i16* %r, i64 72
  %1088 = load i16, i16* %arrayidx9.4.4138, align 2, !tbaa !3
  %conv1.i.4.4139 = sext i16 %1088 to i32
  %mul.i.4.4140 = mul nsw i32 %conv1.i.4.4139, -829
  %call.i.4.4141 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.4140) #2
  %arrayidx11.4.4142 = getelementptr inbounds i16, i16* %r, i64 64
  %1089 = load i16, i16* %arrayidx11.4.4142, align 2, !tbaa !3
  %sub.4.4143 = sub i16 %1089, %call.i.4.4141
  store i16 %sub.4.4143, i16* %arrayidx9.4.4138, align 2, !tbaa !3
  %add21.4.4144 = add i16 %1089, %call.i.4.4141
  store i16 %add21.4.4144, i16* %arrayidx11.4.4142, align 2, !tbaa !3
  %arrayidx9.4.1.4 = getelementptr inbounds i16, i16* %r, i64 73
  %1090 = load i16, i16* %arrayidx9.4.1.4, align 2, !tbaa !3
  %conv1.i.4.1.4 = sext i16 %1090 to i32
  %mul.i.4.1.4 = mul nsw i32 %conv1.i.4.1.4, -829
  %call.i.4.1.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.1.4) #2
  %arrayidx11.4.1.4 = getelementptr inbounds i16, i16* %r, i64 65
  %1091 = load i16, i16* %arrayidx11.4.1.4, align 2, !tbaa !3
  %sub.4.1.4 = sub i16 %1091, %call.i.4.1.4
  store i16 %sub.4.1.4, i16* %arrayidx9.4.1.4, align 2, !tbaa !3
  %add21.4.1.4 = add i16 %1091, %call.i.4.1.4
  store i16 %add21.4.1.4, i16* %arrayidx11.4.1.4, align 2, !tbaa !3
  %arrayidx9.4.2.4 = getelementptr inbounds i16, i16* %r, i64 74
  %1092 = load i16, i16* %arrayidx9.4.2.4, align 2, !tbaa !3
  %conv1.i.4.2.4 = sext i16 %1092 to i32
  %mul.i.4.2.4 = mul nsw i32 %conv1.i.4.2.4, -829
  %call.i.4.2.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.2.4) #2
  %arrayidx11.4.2.4 = getelementptr inbounds i16, i16* %r, i64 66
  %1093 = load i16, i16* %arrayidx11.4.2.4, align 2, !tbaa !3
  %sub.4.2.4 = sub i16 %1093, %call.i.4.2.4
  store i16 %sub.4.2.4, i16* %arrayidx9.4.2.4, align 2, !tbaa !3
  %add21.4.2.4 = add i16 %1093, %call.i.4.2.4
  store i16 %add21.4.2.4, i16* %arrayidx11.4.2.4, align 2, !tbaa !3
  %arrayidx9.4.3.4 = getelementptr inbounds i16, i16* %r, i64 75
  %1094 = load i16, i16* %arrayidx9.4.3.4, align 2, !tbaa !3
  %conv1.i.4.3.4 = sext i16 %1094 to i32
  %mul.i.4.3.4 = mul nsw i32 %conv1.i.4.3.4, -829
  %call.i.4.3.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.3.4) #2
  %arrayidx11.4.3.4 = getelementptr inbounds i16, i16* %r, i64 67
  %1095 = load i16, i16* %arrayidx11.4.3.4, align 2, !tbaa !3
  %sub.4.3.4 = sub i16 %1095, %call.i.4.3.4
  store i16 %sub.4.3.4, i16* %arrayidx9.4.3.4, align 2, !tbaa !3
  %add21.4.3.4 = add i16 %1095, %call.i.4.3.4
  store i16 %add21.4.3.4, i16* %arrayidx11.4.3.4, align 2, !tbaa !3
  %arrayidx9.4.4.4 = getelementptr inbounds i16, i16* %r, i64 76
  %1096 = load i16, i16* %arrayidx9.4.4.4, align 2, !tbaa !3
  %conv1.i.4.4.4 = sext i16 %1096 to i32
  %mul.i.4.4.4 = mul nsw i32 %conv1.i.4.4.4, -829
  %call.i.4.4.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.4.4) #2
  %arrayidx11.4.4.4 = getelementptr inbounds i16, i16* %r, i64 68
  %1097 = load i16, i16* %arrayidx11.4.4.4, align 2, !tbaa !3
  %sub.4.4.4 = sub i16 %1097, %call.i.4.4.4
  store i16 %sub.4.4.4, i16* %arrayidx9.4.4.4, align 2, !tbaa !3
  %add21.4.4.4 = add i16 %1097, %call.i.4.4.4
  store i16 %add21.4.4.4, i16* %arrayidx11.4.4.4, align 2, !tbaa !3
  %arrayidx9.4.5.4 = getelementptr inbounds i16, i16* %r, i64 77
  %1098 = load i16, i16* %arrayidx9.4.5.4, align 2, !tbaa !3
  %conv1.i.4.5.4 = sext i16 %1098 to i32
  %mul.i.4.5.4 = mul nsw i32 %conv1.i.4.5.4, -829
  %call.i.4.5.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.5.4) #2
  %arrayidx11.4.5.4 = getelementptr inbounds i16, i16* %r, i64 69
  %1099 = load i16, i16* %arrayidx11.4.5.4, align 2, !tbaa !3
  %sub.4.5.4 = sub i16 %1099, %call.i.4.5.4
  store i16 %sub.4.5.4, i16* %arrayidx9.4.5.4, align 2, !tbaa !3
  %add21.4.5.4 = add i16 %1099, %call.i.4.5.4
  store i16 %add21.4.5.4, i16* %arrayidx11.4.5.4, align 2, !tbaa !3
  %arrayidx9.4.6.4 = getelementptr inbounds i16, i16* %r, i64 78
  %1100 = load i16, i16* %arrayidx9.4.6.4, align 2, !tbaa !3
  %conv1.i.4.6.4 = sext i16 %1100 to i32
  %mul.i.4.6.4 = mul nsw i32 %conv1.i.4.6.4, -829
  %call.i.4.6.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.6.4) #2
  %arrayidx11.4.6.4 = getelementptr inbounds i16, i16* %r, i64 70
  %1101 = load i16, i16* %arrayidx11.4.6.4, align 2, !tbaa !3
  %sub.4.6.4 = sub i16 %1101, %call.i.4.6.4
  store i16 %sub.4.6.4, i16* %arrayidx9.4.6.4, align 2, !tbaa !3
  %add21.4.6.4 = add i16 %1101, %call.i.4.6.4
  store i16 %add21.4.6.4, i16* %arrayidx11.4.6.4, align 2, !tbaa !3
  %arrayidx9.4.7.4 = getelementptr inbounds i16, i16* %r, i64 79
  %1102 = load i16, i16* %arrayidx9.4.7.4, align 2, !tbaa !3
  %conv1.i.4.7.4 = sext i16 %1102 to i32
  %mul.i.4.7.4 = mul nsw i32 %conv1.i.4.7.4, -829
  %call.i.4.7.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.7.4) #2
  %arrayidx11.4.7.4 = getelementptr inbounds i16, i16* %r, i64 71
  %1103 = load i16, i16* %arrayidx11.4.7.4, align 2, !tbaa !3
  %sub.4.7.4 = sub i16 %1103, %call.i.4.7.4
  store i16 %sub.4.7.4, i16* %arrayidx9.4.7.4, align 2, !tbaa !3
  %add21.4.7.4 = add i16 %1103, %call.i.4.7.4
  store i16 %add21.4.7.4, i16* %arrayidx11.4.7.4, align 2, !tbaa !3
  %arrayidx9.4.5148 = getelementptr inbounds i16, i16* %r, i64 88
  %1104 = load i16, i16* %arrayidx9.4.5148, align 2, !tbaa !3
  %conv1.i.4.5149 = sext i16 %1104 to i32
  %mul.i.4.5150 = mul nsw i32 %conv1.i.4.5149, 1458
  %call.i.4.5151 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.5150) #2
  %arrayidx11.4.5152 = getelementptr inbounds i16, i16* %r, i64 80
  %1105 = load i16, i16* %arrayidx11.4.5152, align 2, !tbaa !3
  %sub.4.5153 = sub i16 %1105, %call.i.4.5151
  store i16 %sub.4.5153, i16* %arrayidx9.4.5148, align 2, !tbaa !3
  %add21.4.5154 = add i16 %1105, %call.i.4.5151
  store i16 %add21.4.5154, i16* %arrayidx11.4.5152, align 2, !tbaa !3
  %arrayidx9.4.1.5 = getelementptr inbounds i16, i16* %r, i64 89
  %1106 = load i16, i16* %arrayidx9.4.1.5, align 2, !tbaa !3
  %conv1.i.4.1.5 = sext i16 %1106 to i32
  %mul.i.4.1.5 = mul nsw i32 %conv1.i.4.1.5, 1458
  %call.i.4.1.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.1.5) #2
  %arrayidx11.4.1.5 = getelementptr inbounds i16, i16* %r, i64 81
  %1107 = load i16, i16* %arrayidx11.4.1.5, align 2, !tbaa !3
  %sub.4.1.5 = sub i16 %1107, %call.i.4.1.5
  store i16 %sub.4.1.5, i16* %arrayidx9.4.1.5, align 2, !tbaa !3
  %add21.4.1.5 = add i16 %1107, %call.i.4.1.5
  store i16 %add21.4.1.5, i16* %arrayidx11.4.1.5, align 2, !tbaa !3
  %arrayidx9.4.2.5 = getelementptr inbounds i16, i16* %r, i64 90
  %1108 = load i16, i16* %arrayidx9.4.2.5, align 2, !tbaa !3
  %conv1.i.4.2.5 = sext i16 %1108 to i32
  %mul.i.4.2.5 = mul nsw i32 %conv1.i.4.2.5, 1458
  %call.i.4.2.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.2.5) #2
  %arrayidx11.4.2.5 = getelementptr inbounds i16, i16* %r, i64 82
  %1109 = load i16, i16* %arrayidx11.4.2.5, align 2, !tbaa !3
  %sub.4.2.5 = sub i16 %1109, %call.i.4.2.5
  store i16 %sub.4.2.5, i16* %arrayidx9.4.2.5, align 2, !tbaa !3
  %add21.4.2.5 = add i16 %1109, %call.i.4.2.5
  store i16 %add21.4.2.5, i16* %arrayidx11.4.2.5, align 2, !tbaa !3
  %arrayidx9.4.3.5 = getelementptr inbounds i16, i16* %r, i64 91
  %1110 = load i16, i16* %arrayidx9.4.3.5, align 2, !tbaa !3
  %conv1.i.4.3.5 = sext i16 %1110 to i32
  %mul.i.4.3.5 = mul nsw i32 %conv1.i.4.3.5, 1458
  %call.i.4.3.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.3.5) #2
  %arrayidx11.4.3.5 = getelementptr inbounds i16, i16* %r, i64 83
  %1111 = load i16, i16* %arrayidx11.4.3.5, align 2, !tbaa !3
  %sub.4.3.5 = sub i16 %1111, %call.i.4.3.5
  store i16 %sub.4.3.5, i16* %arrayidx9.4.3.5, align 2, !tbaa !3
  %add21.4.3.5 = add i16 %1111, %call.i.4.3.5
  store i16 %add21.4.3.5, i16* %arrayidx11.4.3.5, align 2, !tbaa !3
  %arrayidx9.4.4.5 = getelementptr inbounds i16, i16* %r, i64 92
  %1112 = load i16, i16* %arrayidx9.4.4.5, align 2, !tbaa !3
  %conv1.i.4.4.5 = sext i16 %1112 to i32
  %mul.i.4.4.5 = mul nsw i32 %conv1.i.4.4.5, 1458
  %call.i.4.4.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.4.5) #2
  %arrayidx11.4.4.5 = getelementptr inbounds i16, i16* %r, i64 84
  %1113 = load i16, i16* %arrayidx11.4.4.5, align 2, !tbaa !3
  %sub.4.4.5 = sub i16 %1113, %call.i.4.4.5
  store i16 %sub.4.4.5, i16* %arrayidx9.4.4.5, align 2, !tbaa !3
  %add21.4.4.5 = add i16 %1113, %call.i.4.4.5
  store i16 %add21.4.4.5, i16* %arrayidx11.4.4.5, align 2, !tbaa !3
  %arrayidx9.4.5.5 = getelementptr inbounds i16, i16* %r, i64 93
  %1114 = load i16, i16* %arrayidx9.4.5.5, align 2, !tbaa !3
  %conv1.i.4.5.5 = sext i16 %1114 to i32
  %mul.i.4.5.5 = mul nsw i32 %conv1.i.4.5.5, 1458
  %call.i.4.5.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.5.5) #2
  %arrayidx11.4.5.5 = getelementptr inbounds i16, i16* %r, i64 85
  %1115 = load i16, i16* %arrayidx11.4.5.5, align 2, !tbaa !3
  %sub.4.5.5 = sub i16 %1115, %call.i.4.5.5
  store i16 %sub.4.5.5, i16* %arrayidx9.4.5.5, align 2, !tbaa !3
  %add21.4.5.5 = add i16 %1115, %call.i.4.5.5
  store i16 %add21.4.5.5, i16* %arrayidx11.4.5.5, align 2, !tbaa !3
  %arrayidx9.4.6.5 = getelementptr inbounds i16, i16* %r, i64 94
  %1116 = load i16, i16* %arrayidx9.4.6.5, align 2, !tbaa !3
  %conv1.i.4.6.5 = sext i16 %1116 to i32
  %mul.i.4.6.5 = mul nsw i32 %conv1.i.4.6.5, 1458
  %call.i.4.6.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.6.5) #2
  %arrayidx11.4.6.5 = getelementptr inbounds i16, i16* %r, i64 86
  %1117 = load i16, i16* %arrayidx11.4.6.5, align 2, !tbaa !3
  %sub.4.6.5 = sub i16 %1117, %call.i.4.6.5
  store i16 %sub.4.6.5, i16* %arrayidx9.4.6.5, align 2, !tbaa !3
  %add21.4.6.5 = add i16 %1117, %call.i.4.6.5
  store i16 %add21.4.6.5, i16* %arrayidx11.4.6.5, align 2, !tbaa !3
  %arrayidx9.4.7.5 = getelementptr inbounds i16, i16* %r, i64 95
  %1118 = load i16, i16* %arrayidx9.4.7.5, align 2, !tbaa !3
  %conv1.i.4.7.5 = sext i16 %1118 to i32
  %mul.i.4.7.5 = mul nsw i32 %conv1.i.4.7.5, 1458
  %call.i.4.7.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.7.5) #2
  %arrayidx11.4.7.5 = getelementptr inbounds i16, i16* %r, i64 87
  %1119 = load i16, i16* %arrayidx11.4.7.5, align 2, !tbaa !3
  %sub.4.7.5 = sub i16 %1119, %call.i.4.7.5
  store i16 %sub.4.7.5, i16* %arrayidx9.4.7.5, align 2, !tbaa !3
  %add21.4.7.5 = add i16 %1119, %call.i.4.7.5
  store i16 %add21.4.7.5, i16* %arrayidx11.4.7.5, align 2, !tbaa !3
  %arrayidx9.4.6158 = getelementptr inbounds i16, i16* %r, i64 104
  %1120 = load i16, i16* %arrayidx9.4.6158, align 2, !tbaa !3
  %conv1.i.4.6159 = sext i16 %1120 to i32
  %mul.i.4.6160 = mul nsw i32 %conv1.i.4.6159, -1602
  %call.i.4.6161 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.6160) #2
  %arrayidx11.4.6162 = getelementptr inbounds i16, i16* %r, i64 96
  %1121 = load i16, i16* %arrayidx11.4.6162, align 2, !tbaa !3
  %sub.4.6163 = sub i16 %1121, %call.i.4.6161
  store i16 %sub.4.6163, i16* %arrayidx9.4.6158, align 2, !tbaa !3
  %add21.4.6164 = add i16 %1121, %call.i.4.6161
  store i16 %add21.4.6164, i16* %arrayidx11.4.6162, align 2, !tbaa !3
  %arrayidx9.4.1.6 = getelementptr inbounds i16, i16* %r, i64 105
  %1122 = load i16, i16* %arrayidx9.4.1.6, align 2, !tbaa !3
  %conv1.i.4.1.6 = sext i16 %1122 to i32
  %mul.i.4.1.6 = mul nsw i32 %conv1.i.4.1.6, -1602
  %call.i.4.1.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.1.6) #2
  %arrayidx11.4.1.6 = getelementptr inbounds i16, i16* %r, i64 97
  %1123 = load i16, i16* %arrayidx11.4.1.6, align 2, !tbaa !3
  %sub.4.1.6 = sub i16 %1123, %call.i.4.1.6
  store i16 %sub.4.1.6, i16* %arrayidx9.4.1.6, align 2, !tbaa !3
  %add21.4.1.6 = add i16 %1123, %call.i.4.1.6
  store i16 %add21.4.1.6, i16* %arrayidx11.4.1.6, align 2, !tbaa !3
  %arrayidx9.4.2.6 = getelementptr inbounds i16, i16* %r, i64 106
  %1124 = load i16, i16* %arrayidx9.4.2.6, align 2, !tbaa !3
  %conv1.i.4.2.6 = sext i16 %1124 to i32
  %mul.i.4.2.6 = mul nsw i32 %conv1.i.4.2.6, -1602
  %call.i.4.2.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.2.6) #2
  %arrayidx11.4.2.6 = getelementptr inbounds i16, i16* %r, i64 98
  %1125 = load i16, i16* %arrayidx11.4.2.6, align 2, !tbaa !3
  %sub.4.2.6 = sub i16 %1125, %call.i.4.2.6
  store i16 %sub.4.2.6, i16* %arrayidx9.4.2.6, align 2, !tbaa !3
  %add21.4.2.6 = add i16 %1125, %call.i.4.2.6
  store i16 %add21.4.2.6, i16* %arrayidx11.4.2.6, align 2, !tbaa !3
  %arrayidx9.4.3.6 = getelementptr inbounds i16, i16* %r, i64 107
  %1126 = load i16, i16* %arrayidx9.4.3.6, align 2, !tbaa !3
  %conv1.i.4.3.6 = sext i16 %1126 to i32
  %mul.i.4.3.6 = mul nsw i32 %conv1.i.4.3.6, -1602
  %call.i.4.3.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.3.6) #2
  %arrayidx11.4.3.6 = getelementptr inbounds i16, i16* %r, i64 99
  %1127 = load i16, i16* %arrayidx11.4.3.6, align 2, !tbaa !3
  %sub.4.3.6 = sub i16 %1127, %call.i.4.3.6
  store i16 %sub.4.3.6, i16* %arrayidx9.4.3.6, align 2, !tbaa !3
  %add21.4.3.6 = add i16 %1127, %call.i.4.3.6
  store i16 %add21.4.3.6, i16* %arrayidx11.4.3.6, align 2, !tbaa !3
  %arrayidx9.4.4.6 = getelementptr inbounds i16, i16* %r, i64 108
  %1128 = load i16, i16* %arrayidx9.4.4.6, align 2, !tbaa !3
  %conv1.i.4.4.6 = sext i16 %1128 to i32
  %mul.i.4.4.6 = mul nsw i32 %conv1.i.4.4.6, -1602
  %call.i.4.4.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.4.6) #2
  %arrayidx11.4.4.6 = getelementptr inbounds i16, i16* %r, i64 100
  %1129 = load i16, i16* %arrayidx11.4.4.6, align 2, !tbaa !3
  %sub.4.4.6 = sub i16 %1129, %call.i.4.4.6
  store i16 %sub.4.4.6, i16* %arrayidx9.4.4.6, align 2, !tbaa !3
  %add21.4.4.6 = add i16 %1129, %call.i.4.4.6
  store i16 %add21.4.4.6, i16* %arrayidx11.4.4.6, align 2, !tbaa !3
  %arrayidx9.4.5.6 = getelementptr inbounds i16, i16* %r, i64 109
  %1130 = load i16, i16* %arrayidx9.4.5.6, align 2, !tbaa !3
  %conv1.i.4.5.6 = sext i16 %1130 to i32
  %mul.i.4.5.6 = mul nsw i32 %conv1.i.4.5.6, -1602
  %call.i.4.5.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.5.6) #2
  %arrayidx11.4.5.6 = getelementptr inbounds i16, i16* %r, i64 101
  %1131 = load i16, i16* %arrayidx11.4.5.6, align 2, !tbaa !3
  %sub.4.5.6 = sub i16 %1131, %call.i.4.5.6
  store i16 %sub.4.5.6, i16* %arrayidx9.4.5.6, align 2, !tbaa !3
  %add21.4.5.6 = add i16 %1131, %call.i.4.5.6
  store i16 %add21.4.5.6, i16* %arrayidx11.4.5.6, align 2, !tbaa !3
  %arrayidx9.4.6.6 = getelementptr inbounds i16, i16* %r, i64 110
  %1132 = load i16, i16* %arrayidx9.4.6.6, align 2, !tbaa !3
  %conv1.i.4.6.6 = sext i16 %1132 to i32
  %mul.i.4.6.6 = mul nsw i32 %conv1.i.4.6.6, -1602
  %call.i.4.6.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.6.6) #2
  %arrayidx11.4.6.6 = getelementptr inbounds i16, i16* %r, i64 102
  %1133 = load i16, i16* %arrayidx11.4.6.6, align 2, !tbaa !3
  %sub.4.6.6 = sub i16 %1133, %call.i.4.6.6
  store i16 %sub.4.6.6, i16* %arrayidx9.4.6.6, align 2, !tbaa !3
  %add21.4.6.6 = add i16 %1133, %call.i.4.6.6
  store i16 %add21.4.6.6, i16* %arrayidx11.4.6.6, align 2, !tbaa !3
  %arrayidx9.4.7.6 = getelementptr inbounds i16, i16* %r, i64 111
  %1134 = load i16, i16* %arrayidx9.4.7.6, align 2, !tbaa !3
  %conv1.i.4.7.6 = sext i16 %1134 to i32
  %mul.i.4.7.6 = mul nsw i32 %conv1.i.4.7.6, -1602
  %call.i.4.7.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.7.6) #2
  %arrayidx11.4.7.6 = getelementptr inbounds i16, i16* %r, i64 103
  %1135 = load i16, i16* %arrayidx11.4.7.6, align 2, !tbaa !3
  %sub.4.7.6 = sub i16 %1135, %call.i.4.7.6
  store i16 %sub.4.7.6, i16* %arrayidx9.4.7.6, align 2, !tbaa !3
  %add21.4.7.6 = add i16 %1135, %call.i.4.7.6
  store i16 %add21.4.7.6, i16* %arrayidx11.4.7.6, align 2, !tbaa !3
  %arrayidx9.4.7168 = getelementptr inbounds i16, i16* %r, i64 120
  %1136 = load i16, i16* %arrayidx9.4.7168, align 2, !tbaa !3
  %conv1.i.4.7169 = sext i16 %1136 to i32
  %mul.i.4.7170 = mul nsw i32 %conv1.i.4.7169, -130
  %call.i.4.7171 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.7170) #2
  %arrayidx11.4.7172 = getelementptr inbounds i16, i16* %r, i64 112
  %1137 = load i16, i16* %arrayidx11.4.7172, align 2, !tbaa !3
  %sub.4.7173 = sub i16 %1137, %call.i.4.7171
  store i16 %sub.4.7173, i16* %arrayidx9.4.7168, align 2, !tbaa !3
  %add21.4.7174 = add i16 %1137, %call.i.4.7171
  store i16 %add21.4.7174, i16* %arrayidx11.4.7172, align 2, !tbaa !3
  %arrayidx9.4.1.7 = getelementptr inbounds i16, i16* %r, i64 121
  %1138 = load i16, i16* %arrayidx9.4.1.7, align 2, !tbaa !3
  %conv1.i.4.1.7 = sext i16 %1138 to i32
  %mul.i.4.1.7 = mul nsw i32 %conv1.i.4.1.7, -130
  %call.i.4.1.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.1.7) #2
  %arrayidx11.4.1.7 = getelementptr inbounds i16, i16* %r, i64 113
  %1139 = load i16, i16* %arrayidx11.4.1.7, align 2, !tbaa !3
  %sub.4.1.7 = sub i16 %1139, %call.i.4.1.7
  store i16 %sub.4.1.7, i16* %arrayidx9.4.1.7, align 2, !tbaa !3
  %add21.4.1.7 = add i16 %1139, %call.i.4.1.7
  store i16 %add21.4.1.7, i16* %arrayidx11.4.1.7, align 2, !tbaa !3
  %arrayidx9.4.2.7 = getelementptr inbounds i16, i16* %r, i64 122
  %1140 = load i16, i16* %arrayidx9.4.2.7, align 2, !tbaa !3
  %conv1.i.4.2.7 = sext i16 %1140 to i32
  %mul.i.4.2.7 = mul nsw i32 %conv1.i.4.2.7, -130
  %call.i.4.2.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.2.7) #2
  %arrayidx11.4.2.7 = getelementptr inbounds i16, i16* %r, i64 114
  %1141 = load i16, i16* %arrayidx11.4.2.7, align 2, !tbaa !3
  %sub.4.2.7 = sub i16 %1141, %call.i.4.2.7
  store i16 %sub.4.2.7, i16* %arrayidx9.4.2.7, align 2, !tbaa !3
  %add21.4.2.7 = add i16 %1141, %call.i.4.2.7
  store i16 %add21.4.2.7, i16* %arrayidx11.4.2.7, align 2, !tbaa !3
  %arrayidx9.4.3.7 = getelementptr inbounds i16, i16* %r, i64 123
  %1142 = load i16, i16* %arrayidx9.4.3.7, align 2, !tbaa !3
  %conv1.i.4.3.7 = sext i16 %1142 to i32
  %mul.i.4.3.7 = mul nsw i32 %conv1.i.4.3.7, -130
  %call.i.4.3.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.3.7) #2
  %arrayidx11.4.3.7 = getelementptr inbounds i16, i16* %r, i64 115
  %1143 = load i16, i16* %arrayidx11.4.3.7, align 2, !tbaa !3
  %sub.4.3.7 = sub i16 %1143, %call.i.4.3.7
  store i16 %sub.4.3.7, i16* %arrayidx9.4.3.7, align 2, !tbaa !3
  %add21.4.3.7 = add i16 %1143, %call.i.4.3.7
  store i16 %add21.4.3.7, i16* %arrayidx11.4.3.7, align 2, !tbaa !3
  %arrayidx9.4.4.7 = getelementptr inbounds i16, i16* %r, i64 124
  %1144 = load i16, i16* %arrayidx9.4.4.7, align 2, !tbaa !3
  %conv1.i.4.4.7 = sext i16 %1144 to i32
  %mul.i.4.4.7 = mul nsw i32 %conv1.i.4.4.7, -130
  %call.i.4.4.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.4.7) #2
  %arrayidx11.4.4.7 = getelementptr inbounds i16, i16* %r, i64 116
  %1145 = load i16, i16* %arrayidx11.4.4.7, align 2, !tbaa !3
  %sub.4.4.7 = sub i16 %1145, %call.i.4.4.7
  store i16 %sub.4.4.7, i16* %arrayidx9.4.4.7, align 2, !tbaa !3
  %add21.4.4.7 = add i16 %1145, %call.i.4.4.7
  store i16 %add21.4.4.7, i16* %arrayidx11.4.4.7, align 2, !tbaa !3
  %arrayidx9.4.5.7 = getelementptr inbounds i16, i16* %r, i64 125
  %1146 = load i16, i16* %arrayidx9.4.5.7, align 2, !tbaa !3
  %conv1.i.4.5.7 = sext i16 %1146 to i32
  %mul.i.4.5.7 = mul nsw i32 %conv1.i.4.5.7, -130
  %call.i.4.5.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.5.7) #2
  %arrayidx11.4.5.7 = getelementptr inbounds i16, i16* %r, i64 117
  %1147 = load i16, i16* %arrayidx11.4.5.7, align 2, !tbaa !3
  %sub.4.5.7 = sub i16 %1147, %call.i.4.5.7
  store i16 %sub.4.5.7, i16* %arrayidx9.4.5.7, align 2, !tbaa !3
  %add21.4.5.7 = add i16 %1147, %call.i.4.5.7
  store i16 %add21.4.5.7, i16* %arrayidx11.4.5.7, align 2, !tbaa !3
  %arrayidx9.4.6.7 = getelementptr inbounds i16, i16* %r, i64 126
  %1148 = load i16, i16* %arrayidx9.4.6.7, align 2, !tbaa !3
  %conv1.i.4.6.7 = sext i16 %1148 to i32
  %mul.i.4.6.7 = mul nsw i32 %conv1.i.4.6.7, -130
  %call.i.4.6.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.6.7) #2
  %arrayidx11.4.6.7 = getelementptr inbounds i16, i16* %r, i64 118
  %1149 = load i16, i16* %arrayidx11.4.6.7, align 2, !tbaa !3
  %sub.4.6.7 = sub i16 %1149, %call.i.4.6.7
  store i16 %sub.4.6.7, i16* %arrayidx9.4.6.7, align 2, !tbaa !3
  %add21.4.6.7 = add i16 %1149, %call.i.4.6.7
  store i16 %add21.4.6.7, i16* %arrayidx11.4.6.7, align 2, !tbaa !3
  %arrayidx9.4.7.7 = getelementptr inbounds i16, i16* %r, i64 127
  %1150 = load i16, i16* %arrayidx9.4.7.7, align 2, !tbaa !3
  %conv1.i.4.7.7 = sext i16 %1150 to i32
  %mul.i.4.7.7 = mul nsw i32 %conv1.i.4.7.7, -130
  %call.i.4.7.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.7.7) #2
  %arrayidx11.4.7.7 = getelementptr inbounds i16, i16* %r, i64 119
  %1151 = load i16, i16* %arrayidx11.4.7.7, align 2, !tbaa !3
  %sub.4.7.7 = sub i16 %1151, %call.i.4.7.7
  store i16 %sub.4.7.7, i16* %arrayidx9.4.7.7, align 2, !tbaa !3
  %add21.4.7.7 = add i16 %1151, %call.i.4.7.7
  store i16 %add21.4.7.7, i16* %arrayidx11.4.7.7, align 2, !tbaa !3
  %arrayidx9.4.8 = getelementptr inbounds i16, i16* %r, i64 136
  %1152 = load i16, i16* %arrayidx9.4.8, align 2, !tbaa !3
  %conv1.i.4.8 = sext i16 %1152 to i32
  %mul.i.4.8 = mul nsw i32 %conv1.i.4.8, -681
  %call.i.4.8 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.8) #2
  %arrayidx11.4.8 = getelementptr inbounds i16, i16* %r, i64 128
  %1153 = load i16, i16* %arrayidx11.4.8, align 2, !tbaa !3
  %sub.4.8 = sub i16 %1153, %call.i.4.8
  store i16 %sub.4.8, i16* %arrayidx9.4.8, align 2, !tbaa !3
  %add21.4.8 = add i16 %1153, %call.i.4.8
  store i16 %add21.4.8, i16* %arrayidx11.4.8, align 2, !tbaa !3
  %arrayidx9.4.1.8 = getelementptr inbounds i16, i16* %r, i64 137
  %1154 = load i16, i16* %arrayidx9.4.1.8, align 2, !tbaa !3
  %conv1.i.4.1.8 = sext i16 %1154 to i32
  %mul.i.4.1.8 = mul nsw i32 %conv1.i.4.1.8, -681
  %call.i.4.1.8 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.1.8) #2
  %arrayidx11.4.1.8 = getelementptr inbounds i16, i16* %r, i64 129
  %1155 = load i16, i16* %arrayidx11.4.1.8, align 2, !tbaa !3
  %sub.4.1.8 = sub i16 %1155, %call.i.4.1.8
  store i16 %sub.4.1.8, i16* %arrayidx9.4.1.8, align 2, !tbaa !3
  %add21.4.1.8 = add i16 %1155, %call.i.4.1.8
  store i16 %add21.4.1.8, i16* %arrayidx11.4.1.8, align 2, !tbaa !3
  %arrayidx9.4.2.8 = getelementptr inbounds i16, i16* %r, i64 138
  %1156 = load i16, i16* %arrayidx9.4.2.8, align 2, !tbaa !3
  %conv1.i.4.2.8 = sext i16 %1156 to i32
  %mul.i.4.2.8 = mul nsw i32 %conv1.i.4.2.8, -681
  %call.i.4.2.8 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.2.8) #2
  %arrayidx11.4.2.8 = getelementptr inbounds i16, i16* %r, i64 130
  %1157 = load i16, i16* %arrayidx11.4.2.8, align 2, !tbaa !3
  %sub.4.2.8 = sub i16 %1157, %call.i.4.2.8
  store i16 %sub.4.2.8, i16* %arrayidx9.4.2.8, align 2, !tbaa !3
  %add21.4.2.8 = add i16 %1157, %call.i.4.2.8
  store i16 %add21.4.2.8, i16* %arrayidx11.4.2.8, align 2, !tbaa !3
  %arrayidx9.4.3.8 = getelementptr inbounds i16, i16* %r, i64 139
  %1158 = load i16, i16* %arrayidx9.4.3.8, align 2, !tbaa !3
  %conv1.i.4.3.8 = sext i16 %1158 to i32
  %mul.i.4.3.8 = mul nsw i32 %conv1.i.4.3.8, -681
  %call.i.4.3.8 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.3.8) #2
  %arrayidx11.4.3.8 = getelementptr inbounds i16, i16* %r, i64 131
  %1159 = load i16, i16* %arrayidx11.4.3.8, align 2, !tbaa !3
  %sub.4.3.8 = sub i16 %1159, %call.i.4.3.8
  store i16 %sub.4.3.8, i16* %arrayidx9.4.3.8, align 2, !tbaa !3
  %add21.4.3.8 = add i16 %1159, %call.i.4.3.8
  store i16 %add21.4.3.8, i16* %arrayidx11.4.3.8, align 2, !tbaa !3
  %arrayidx9.4.4.8 = getelementptr inbounds i16, i16* %r, i64 140
  %1160 = load i16, i16* %arrayidx9.4.4.8, align 2, !tbaa !3
  %conv1.i.4.4.8 = sext i16 %1160 to i32
  %mul.i.4.4.8 = mul nsw i32 %conv1.i.4.4.8, -681
  %call.i.4.4.8 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.4.8) #2
  %arrayidx11.4.4.8 = getelementptr inbounds i16, i16* %r, i64 132
  %1161 = load i16, i16* %arrayidx11.4.4.8, align 2, !tbaa !3
  %sub.4.4.8 = sub i16 %1161, %call.i.4.4.8
  store i16 %sub.4.4.8, i16* %arrayidx9.4.4.8, align 2, !tbaa !3
  %add21.4.4.8 = add i16 %1161, %call.i.4.4.8
  store i16 %add21.4.4.8, i16* %arrayidx11.4.4.8, align 2, !tbaa !3
  %arrayidx9.4.5.8 = getelementptr inbounds i16, i16* %r, i64 141
  %1162 = load i16, i16* %arrayidx9.4.5.8, align 2, !tbaa !3
  %conv1.i.4.5.8 = sext i16 %1162 to i32
  %mul.i.4.5.8 = mul nsw i32 %conv1.i.4.5.8, -681
  %call.i.4.5.8 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.5.8) #2
  %arrayidx11.4.5.8 = getelementptr inbounds i16, i16* %r, i64 133
  %1163 = load i16, i16* %arrayidx11.4.5.8, align 2, !tbaa !3
  %sub.4.5.8 = sub i16 %1163, %call.i.4.5.8
  store i16 %sub.4.5.8, i16* %arrayidx9.4.5.8, align 2, !tbaa !3
  %add21.4.5.8 = add i16 %1163, %call.i.4.5.8
  store i16 %add21.4.5.8, i16* %arrayidx11.4.5.8, align 2, !tbaa !3
  %arrayidx9.4.6.8 = getelementptr inbounds i16, i16* %r, i64 142
  %1164 = load i16, i16* %arrayidx9.4.6.8, align 2, !tbaa !3
  %conv1.i.4.6.8 = sext i16 %1164 to i32
  %mul.i.4.6.8 = mul nsw i32 %conv1.i.4.6.8, -681
  %call.i.4.6.8 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.6.8) #2
  %arrayidx11.4.6.8 = getelementptr inbounds i16, i16* %r, i64 134
  %1165 = load i16, i16* %arrayidx11.4.6.8, align 2, !tbaa !3
  %sub.4.6.8 = sub i16 %1165, %call.i.4.6.8
  store i16 %sub.4.6.8, i16* %arrayidx9.4.6.8, align 2, !tbaa !3
  %add21.4.6.8 = add i16 %1165, %call.i.4.6.8
  store i16 %add21.4.6.8, i16* %arrayidx11.4.6.8, align 2, !tbaa !3
  %arrayidx9.4.7.8 = getelementptr inbounds i16, i16* %r, i64 143
  %1166 = load i16, i16* %arrayidx9.4.7.8, align 2, !tbaa !3
  %conv1.i.4.7.8 = sext i16 %1166 to i32
  %mul.i.4.7.8 = mul nsw i32 %conv1.i.4.7.8, -681
  %call.i.4.7.8 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.7.8) #2
  %arrayidx11.4.7.8 = getelementptr inbounds i16, i16* %r, i64 135
  %1167 = load i16, i16* %arrayidx11.4.7.8, align 2, !tbaa !3
  %sub.4.7.8 = sub i16 %1167, %call.i.4.7.8
  store i16 %sub.4.7.8, i16* %arrayidx9.4.7.8, align 2, !tbaa !3
  %add21.4.7.8 = add i16 %1167, %call.i.4.7.8
  store i16 %add21.4.7.8, i16* %arrayidx11.4.7.8, align 2, !tbaa !3
  %arrayidx9.4.9 = getelementptr inbounds i16, i16* %r, i64 152
  %1168 = load i16, i16* %arrayidx9.4.9, align 2, !tbaa !3
  %conv1.i.4.9 = sext i16 %1168 to i32
  %mul.i.4.9 = mul nsw i32 %conv1.i.4.9, 1017
  %call.i.4.9 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.9) #2
  %arrayidx11.4.9 = getelementptr inbounds i16, i16* %r, i64 144
  %1169 = load i16, i16* %arrayidx11.4.9, align 2, !tbaa !3
  %sub.4.9 = sub i16 %1169, %call.i.4.9
  store i16 %sub.4.9, i16* %arrayidx9.4.9, align 2, !tbaa !3
  %add21.4.9 = add i16 %1169, %call.i.4.9
  store i16 %add21.4.9, i16* %arrayidx11.4.9, align 2, !tbaa !3
  %arrayidx9.4.1.9 = getelementptr inbounds i16, i16* %r, i64 153
  %1170 = load i16, i16* %arrayidx9.4.1.9, align 2, !tbaa !3
  %conv1.i.4.1.9 = sext i16 %1170 to i32
  %mul.i.4.1.9 = mul nsw i32 %conv1.i.4.1.9, 1017
  %call.i.4.1.9 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.1.9) #2
  %arrayidx11.4.1.9 = getelementptr inbounds i16, i16* %r, i64 145
  %1171 = load i16, i16* %arrayidx11.4.1.9, align 2, !tbaa !3
  %sub.4.1.9 = sub i16 %1171, %call.i.4.1.9
  store i16 %sub.4.1.9, i16* %arrayidx9.4.1.9, align 2, !tbaa !3
  %add21.4.1.9 = add i16 %1171, %call.i.4.1.9
  store i16 %add21.4.1.9, i16* %arrayidx11.4.1.9, align 2, !tbaa !3
  %arrayidx9.4.2.9 = getelementptr inbounds i16, i16* %r, i64 154
  %1172 = load i16, i16* %arrayidx9.4.2.9, align 2, !tbaa !3
  %conv1.i.4.2.9 = sext i16 %1172 to i32
  %mul.i.4.2.9 = mul nsw i32 %conv1.i.4.2.9, 1017
  %call.i.4.2.9 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.2.9) #2
  %arrayidx11.4.2.9 = getelementptr inbounds i16, i16* %r, i64 146
  %1173 = load i16, i16* %arrayidx11.4.2.9, align 2, !tbaa !3
  %sub.4.2.9 = sub i16 %1173, %call.i.4.2.9
  store i16 %sub.4.2.9, i16* %arrayidx9.4.2.9, align 2, !tbaa !3
  %add21.4.2.9 = add i16 %1173, %call.i.4.2.9
  store i16 %add21.4.2.9, i16* %arrayidx11.4.2.9, align 2, !tbaa !3
  %arrayidx9.4.3.9 = getelementptr inbounds i16, i16* %r, i64 155
  %1174 = load i16, i16* %arrayidx9.4.3.9, align 2, !tbaa !3
  %conv1.i.4.3.9 = sext i16 %1174 to i32
  %mul.i.4.3.9 = mul nsw i32 %conv1.i.4.3.9, 1017
  %call.i.4.3.9 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.3.9) #2
  %arrayidx11.4.3.9 = getelementptr inbounds i16, i16* %r, i64 147
  %1175 = load i16, i16* %arrayidx11.4.3.9, align 2, !tbaa !3
  %sub.4.3.9 = sub i16 %1175, %call.i.4.3.9
  store i16 %sub.4.3.9, i16* %arrayidx9.4.3.9, align 2, !tbaa !3
  %add21.4.3.9 = add i16 %1175, %call.i.4.3.9
  store i16 %add21.4.3.9, i16* %arrayidx11.4.3.9, align 2, !tbaa !3
  %arrayidx9.4.4.9 = getelementptr inbounds i16, i16* %r, i64 156
  %1176 = load i16, i16* %arrayidx9.4.4.9, align 2, !tbaa !3
  %conv1.i.4.4.9 = sext i16 %1176 to i32
  %mul.i.4.4.9 = mul nsw i32 %conv1.i.4.4.9, 1017
  %call.i.4.4.9 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.4.9) #2
  %arrayidx11.4.4.9 = getelementptr inbounds i16, i16* %r, i64 148
  %1177 = load i16, i16* %arrayidx11.4.4.9, align 2, !tbaa !3
  %sub.4.4.9 = sub i16 %1177, %call.i.4.4.9
  store i16 %sub.4.4.9, i16* %arrayidx9.4.4.9, align 2, !tbaa !3
  %add21.4.4.9 = add i16 %1177, %call.i.4.4.9
  store i16 %add21.4.4.9, i16* %arrayidx11.4.4.9, align 2, !tbaa !3
  %arrayidx9.4.5.9 = getelementptr inbounds i16, i16* %r, i64 157
  %1178 = load i16, i16* %arrayidx9.4.5.9, align 2, !tbaa !3
  %conv1.i.4.5.9 = sext i16 %1178 to i32
  %mul.i.4.5.9 = mul nsw i32 %conv1.i.4.5.9, 1017
  %call.i.4.5.9 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.5.9) #2
  %arrayidx11.4.5.9 = getelementptr inbounds i16, i16* %r, i64 149
  %1179 = load i16, i16* %arrayidx11.4.5.9, align 2, !tbaa !3
  %sub.4.5.9 = sub i16 %1179, %call.i.4.5.9
  store i16 %sub.4.5.9, i16* %arrayidx9.4.5.9, align 2, !tbaa !3
  %add21.4.5.9 = add i16 %1179, %call.i.4.5.9
  store i16 %add21.4.5.9, i16* %arrayidx11.4.5.9, align 2, !tbaa !3
  %arrayidx9.4.6.9 = getelementptr inbounds i16, i16* %r, i64 158
  %1180 = load i16, i16* %arrayidx9.4.6.9, align 2, !tbaa !3
  %conv1.i.4.6.9 = sext i16 %1180 to i32
  %mul.i.4.6.9 = mul nsw i32 %conv1.i.4.6.9, 1017
  %call.i.4.6.9 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.6.9) #2
  %arrayidx11.4.6.9 = getelementptr inbounds i16, i16* %r, i64 150
  %1181 = load i16, i16* %arrayidx11.4.6.9, align 2, !tbaa !3
  %sub.4.6.9 = sub i16 %1181, %call.i.4.6.9
  store i16 %sub.4.6.9, i16* %arrayidx9.4.6.9, align 2, !tbaa !3
  %add21.4.6.9 = add i16 %1181, %call.i.4.6.9
  store i16 %add21.4.6.9, i16* %arrayidx11.4.6.9, align 2, !tbaa !3
  %arrayidx9.4.7.9 = getelementptr inbounds i16, i16* %r, i64 159
  %1182 = load i16, i16* %arrayidx9.4.7.9, align 2, !tbaa !3
  %conv1.i.4.7.9 = sext i16 %1182 to i32
  %mul.i.4.7.9 = mul nsw i32 %conv1.i.4.7.9, 1017
  %call.i.4.7.9 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.7.9) #2
  %arrayidx11.4.7.9 = getelementptr inbounds i16, i16* %r, i64 151
  %1183 = load i16, i16* %arrayidx11.4.7.9, align 2, !tbaa !3
  %sub.4.7.9 = sub i16 %1183, %call.i.4.7.9
  store i16 %sub.4.7.9, i16* %arrayidx9.4.7.9, align 2, !tbaa !3
  %add21.4.7.9 = add i16 %1183, %call.i.4.7.9
  store i16 %add21.4.7.9, i16* %arrayidx11.4.7.9, align 2, !tbaa !3
  %arrayidx9.4.10 = getelementptr inbounds i16, i16* %r, i64 168
  %1184 = load i16, i16* %arrayidx9.4.10, align 2, !tbaa !3
  %conv1.i.4.10 = sext i16 %1184 to i32
  %mul.i.4.10 = mul nsw i32 %conv1.i.4.10, 732
  %call.i.4.10 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.10) #2
  %arrayidx11.4.10 = getelementptr inbounds i16, i16* %r, i64 160
  %1185 = load i16, i16* %arrayidx11.4.10, align 2, !tbaa !3
  %sub.4.10 = sub i16 %1185, %call.i.4.10
  store i16 %sub.4.10, i16* %arrayidx9.4.10, align 2, !tbaa !3
  %add21.4.10 = add i16 %1185, %call.i.4.10
  store i16 %add21.4.10, i16* %arrayidx11.4.10, align 2, !tbaa !3
  %arrayidx9.4.1.10 = getelementptr inbounds i16, i16* %r, i64 169
  %1186 = load i16, i16* %arrayidx9.4.1.10, align 2, !tbaa !3
  %conv1.i.4.1.10 = sext i16 %1186 to i32
  %mul.i.4.1.10 = mul nsw i32 %conv1.i.4.1.10, 732
  %call.i.4.1.10 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.1.10) #2
  %arrayidx11.4.1.10 = getelementptr inbounds i16, i16* %r, i64 161
  %1187 = load i16, i16* %arrayidx11.4.1.10, align 2, !tbaa !3
  %sub.4.1.10 = sub i16 %1187, %call.i.4.1.10
  store i16 %sub.4.1.10, i16* %arrayidx9.4.1.10, align 2, !tbaa !3
  %add21.4.1.10 = add i16 %1187, %call.i.4.1.10
  store i16 %add21.4.1.10, i16* %arrayidx11.4.1.10, align 2, !tbaa !3
  %arrayidx9.4.2.10 = getelementptr inbounds i16, i16* %r, i64 170
  %1188 = load i16, i16* %arrayidx9.4.2.10, align 2, !tbaa !3
  %conv1.i.4.2.10 = sext i16 %1188 to i32
  %mul.i.4.2.10 = mul nsw i32 %conv1.i.4.2.10, 732
  %call.i.4.2.10 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.2.10) #2
  %arrayidx11.4.2.10 = getelementptr inbounds i16, i16* %r, i64 162
  %1189 = load i16, i16* %arrayidx11.4.2.10, align 2, !tbaa !3
  %sub.4.2.10 = sub i16 %1189, %call.i.4.2.10
  store i16 %sub.4.2.10, i16* %arrayidx9.4.2.10, align 2, !tbaa !3
  %add21.4.2.10 = add i16 %1189, %call.i.4.2.10
  store i16 %add21.4.2.10, i16* %arrayidx11.4.2.10, align 2, !tbaa !3
  %arrayidx9.4.3.10 = getelementptr inbounds i16, i16* %r, i64 171
  %1190 = load i16, i16* %arrayidx9.4.3.10, align 2, !tbaa !3
  %conv1.i.4.3.10 = sext i16 %1190 to i32
  %mul.i.4.3.10 = mul nsw i32 %conv1.i.4.3.10, 732
  %call.i.4.3.10 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.3.10) #2
  %arrayidx11.4.3.10 = getelementptr inbounds i16, i16* %r, i64 163
  %1191 = load i16, i16* %arrayidx11.4.3.10, align 2, !tbaa !3
  %sub.4.3.10 = sub i16 %1191, %call.i.4.3.10
  store i16 %sub.4.3.10, i16* %arrayidx9.4.3.10, align 2, !tbaa !3
  %add21.4.3.10 = add i16 %1191, %call.i.4.3.10
  store i16 %add21.4.3.10, i16* %arrayidx11.4.3.10, align 2, !tbaa !3
  %arrayidx9.4.4.10 = getelementptr inbounds i16, i16* %r, i64 172
  %1192 = load i16, i16* %arrayidx9.4.4.10, align 2, !tbaa !3
  %conv1.i.4.4.10 = sext i16 %1192 to i32
  %mul.i.4.4.10 = mul nsw i32 %conv1.i.4.4.10, 732
  %call.i.4.4.10 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.4.10) #2
  %arrayidx11.4.4.10 = getelementptr inbounds i16, i16* %r, i64 164
  %1193 = load i16, i16* %arrayidx11.4.4.10, align 2, !tbaa !3
  %sub.4.4.10 = sub i16 %1193, %call.i.4.4.10
  store i16 %sub.4.4.10, i16* %arrayidx9.4.4.10, align 2, !tbaa !3
  %add21.4.4.10 = add i16 %1193, %call.i.4.4.10
  store i16 %add21.4.4.10, i16* %arrayidx11.4.4.10, align 2, !tbaa !3
  %arrayidx9.4.5.10 = getelementptr inbounds i16, i16* %r, i64 173
  %1194 = load i16, i16* %arrayidx9.4.5.10, align 2, !tbaa !3
  %conv1.i.4.5.10 = sext i16 %1194 to i32
  %mul.i.4.5.10 = mul nsw i32 %conv1.i.4.5.10, 732
  %call.i.4.5.10 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.5.10) #2
  %arrayidx11.4.5.10 = getelementptr inbounds i16, i16* %r, i64 165
  %1195 = load i16, i16* %arrayidx11.4.5.10, align 2, !tbaa !3
  %sub.4.5.10 = sub i16 %1195, %call.i.4.5.10
  store i16 %sub.4.5.10, i16* %arrayidx9.4.5.10, align 2, !tbaa !3
  %add21.4.5.10 = add i16 %1195, %call.i.4.5.10
  store i16 %add21.4.5.10, i16* %arrayidx11.4.5.10, align 2, !tbaa !3
  %arrayidx9.4.6.10 = getelementptr inbounds i16, i16* %r, i64 174
  %1196 = load i16, i16* %arrayidx9.4.6.10, align 2, !tbaa !3
  %conv1.i.4.6.10 = sext i16 %1196 to i32
  %mul.i.4.6.10 = mul nsw i32 %conv1.i.4.6.10, 732
  %call.i.4.6.10 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.6.10) #2
  %arrayidx11.4.6.10 = getelementptr inbounds i16, i16* %r, i64 166
  %1197 = load i16, i16* %arrayidx11.4.6.10, align 2, !tbaa !3
  %sub.4.6.10 = sub i16 %1197, %call.i.4.6.10
  store i16 %sub.4.6.10, i16* %arrayidx9.4.6.10, align 2, !tbaa !3
  %add21.4.6.10 = add i16 %1197, %call.i.4.6.10
  store i16 %add21.4.6.10, i16* %arrayidx11.4.6.10, align 2, !tbaa !3
  %arrayidx9.4.7.10 = getelementptr inbounds i16, i16* %r, i64 175
  %1198 = load i16, i16* %arrayidx9.4.7.10, align 2, !tbaa !3
  %conv1.i.4.7.10 = sext i16 %1198 to i32
  %mul.i.4.7.10 = mul nsw i32 %conv1.i.4.7.10, 732
  %call.i.4.7.10 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.7.10) #2
  %arrayidx11.4.7.10 = getelementptr inbounds i16, i16* %r, i64 167
  %1199 = load i16, i16* %arrayidx11.4.7.10, align 2, !tbaa !3
  %sub.4.7.10 = sub i16 %1199, %call.i.4.7.10
  store i16 %sub.4.7.10, i16* %arrayidx9.4.7.10, align 2, !tbaa !3
  %add21.4.7.10 = add i16 %1199, %call.i.4.7.10
  store i16 %add21.4.7.10, i16* %arrayidx11.4.7.10, align 2, !tbaa !3
  %arrayidx9.4.11 = getelementptr inbounds i16, i16* %r, i64 184
  %1200 = load i16, i16* %arrayidx9.4.11, align 2, !tbaa !3
  %conv1.i.4.11 = sext i16 %1200 to i32
  %mul.i.4.11 = mul nsw i32 %conv1.i.4.11, 608
  %call.i.4.11 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.11) #2
  %arrayidx11.4.11 = getelementptr inbounds i16, i16* %r, i64 176
  %1201 = load i16, i16* %arrayidx11.4.11, align 2, !tbaa !3
  %sub.4.11 = sub i16 %1201, %call.i.4.11
  store i16 %sub.4.11, i16* %arrayidx9.4.11, align 2, !tbaa !3
  %add21.4.11 = add i16 %1201, %call.i.4.11
  store i16 %add21.4.11, i16* %arrayidx11.4.11, align 2, !tbaa !3
  %arrayidx9.4.1.11 = getelementptr inbounds i16, i16* %r, i64 185
  %1202 = load i16, i16* %arrayidx9.4.1.11, align 2, !tbaa !3
  %conv1.i.4.1.11 = sext i16 %1202 to i32
  %mul.i.4.1.11 = mul nsw i32 %conv1.i.4.1.11, 608
  %call.i.4.1.11 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.1.11) #2
  %arrayidx11.4.1.11 = getelementptr inbounds i16, i16* %r, i64 177
  %1203 = load i16, i16* %arrayidx11.4.1.11, align 2, !tbaa !3
  %sub.4.1.11 = sub i16 %1203, %call.i.4.1.11
  store i16 %sub.4.1.11, i16* %arrayidx9.4.1.11, align 2, !tbaa !3
  %add21.4.1.11 = add i16 %1203, %call.i.4.1.11
  store i16 %add21.4.1.11, i16* %arrayidx11.4.1.11, align 2, !tbaa !3
  %arrayidx9.4.2.11 = getelementptr inbounds i16, i16* %r, i64 186
  %1204 = load i16, i16* %arrayidx9.4.2.11, align 2, !tbaa !3
  %conv1.i.4.2.11 = sext i16 %1204 to i32
  %mul.i.4.2.11 = mul nsw i32 %conv1.i.4.2.11, 608
  %call.i.4.2.11 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.2.11) #2
  %arrayidx11.4.2.11 = getelementptr inbounds i16, i16* %r, i64 178
  %1205 = load i16, i16* %arrayidx11.4.2.11, align 2, !tbaa !3
  %sub.4.2.11 = sub i16 %1205, %call.i.4.2.11
  store i16 %sub.4.2.11, i16* %arrayidx9.4.2.11, align 2, !tbaa !3
  %add21.4.2.11 = add i16 %1205, %call.i.4.2.11
  store i16 %add21.4.2.11, i16* %arrayidx11.4.2.11, align 2, !tbaa !3
  %arrayidx9.4.3.11 = getelementptr inbounds i16, i16* %r, i64 187
  %1206 = load i16, i16* %arrayidx9.4.3.11, align 2, !tbaa !3
  %conv1.i.4.3.11 = sext i16 %1206 to i32
  %mul.i.4.3.11 = mul nsw i32 %conv1.i.4.3.11, 608
  %call.i.4.3.11 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.3.11) #2
  %arrayidx11.4.3.11 = getelementptr inbounds i16, i16* %r, i64 179
  %1207 = load i16, i16* %arrayidx11.4.3.11, align 2, !tbaa !3
  %sub.4.3.11 = sub i16 %1207, %call.i.4.3.11
  store i16 %sub.4.3.11, i16* %arrayidx9.4.3.11, align 2, !tbaa !3
  %add21.4.3.11 = add i16 %1207, %call.i.4.3.11
  store i16 %add21.4.3.11, i16* %arrayidx11.4.3.11, align 2, !tbaa !3
  %arrayidx9.4.4.11 = getelementptr inbounds i16, i16* %r, i64 188
  %1208 = load i16, i16* %arrayidx9.4.4.11, align 2, !tbaa !3
  %conv1.i.4.4.11 = sext i16 %1208 to i32
  %mul.i.4.4.11 = mul nsw i32 %conv1.i.4.4.11, 608
  %call.i.4.4.11 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.4.11) #2
  %arrayidx11.4.4.11 = getelementptr inbounds i16, i16* %r, i64 180
  %1209 = load i16, i16* %arrayidx11.4.4.11, align 2, !tbaa !3
  %sub.4.4.11 = sub i16 %1209, %call.i.4.4.11
  store i16 %sub.4.4.11, i16* %arrayidx9.4.4.11, align 2, !tbaa !3
  %add21.4.4.11 = add i16 %1209, %call.i.4.4.11
  store i16 %add21.4.4.11, i16* %arrayidx11.4.4.11, align 2, !tbaa !3
  %arrayidx9.4.5.11 = getelementptr inbounds i16, i16* %r, i64 189
  %1210 = load i16, i16* %arrayidx9.4.5.11, align 2, !tbaa !3
  %conv1.i.4.5.11 = sext i16 %1210 to i32
  %mul.i.4.5.11 = mul nsw i32 %conv1.i.4.5.11, 608
  %call.i.4.5.11 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.5.11) #2
  %arrayidx11.4.5.11 = getelementptr inbounds i16, i16* %r, i64 181
  %1211 = load i16, i16* %arrayidx11.4.5.11, align 2, !tbaa !3
  %sub.4.5.11 = sub i16 %1211, %call.i.4.5.11
  store i16 %sub.4.5.11, i16* %arrayidx9.4.5.11, align 2, !tbaa !3
  %add21.4.5.11 = add i16 %1211, %call.i.4.5.11
  store i16 %add21.4.5.11, i16* %arrayidx11.4.5.11, align 2, !tbaa !3
  %arrayidx9.4.6.11 = getelementptr inbounds i16, i16* %r, i64 190
  %1212 = load i16, i16* %arrayidx9.4.6.11, align 2, !tbaa !3
  %conv1.i.4.6.11 = sext i16 %1212 to i32
  %mul.i.4.6.11 = mul nsw i32 %conv1.i.4.6.11, 608
  %call.i.4.6.11 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.6.11) #2
  %arrayidx11.4.6.11 = getelementptr inbounds i16, i16* %r, i64 182
  %1213 = load i16, i16* %arrayidx11.4.6.11, align 2, !tbaa !3
  %sub.4.6.11 = sub i16 %1213, %call.i.4.6.11
  store i16 %sub.4.6.11, i16* %arrayidx9.4.6.11, align 2, !tbaa !3
  %add21.4.6.11 = add i16 %1213, %call.i.4.6.11
  store i16 %add21.4.6.11, i16* %arrayidx11.4.6.11, align 2, !tbaa !3
  %arrayidx9.4.7.11 = getelementptr inbounds i16, i16* %r, i64 191
  %1214 = load i16, i16* %arrayidx9.4.7.11, align 2, !tbaa !3
  %conv1.i.4.7.11 = sext i16 %1214 to i32
  %mul.i.4.7.11 = mul nsw i32 %conv1.i.4.7.11, 608
  %call.i.4.7.11 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.7.11) #2
  %arrayidx11.4.7.11 = getelementptr inbounds i16, i16* %r, i64 183
  %1215 = load i16, i16* %arrayidx11.4.7.11, align 2, !tbaa !3
  %sub.4.7.11 = sub i16 %1215, %call.i.4.7.11
  store i16 %sub.4.7.11, i16* %arrayidx9.4.7.11, align 2, !tbaa !3
  %add21.4.7.11 = add i16 %1215, %call.i.4.7.11
  store i16 %add21.4.7.11, i16* %arrayidx11.4.7.11, align 2, !tbaa !3
  %arrayidx9.4.12 = getelementptr inbounds i16, i16* %r, i64 200
  %1216 = load i16, i16* %arrayidx9.4.12, align 2, !tbaa !3
  %conv1.i.4.12 = sext i16 %1216 to i32
  %mul.i.4.12 = mul nsw i32 %conv1.i.4.12, -1542
  %call.i.4.12 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.12) #2
  %arrayidx11.4.12 = getelementptr inbounds i16, i16* %r, i64 192
  %1217 = load i16, i16* %arrayidx11.4.12, align 2, !tbaa !3
  %sub.4.12 = sub i16 %1217, %call.i.4.12
  store i16 %sub.4.12, i16* %arrayidx9.4.12, align 2, !tbaa !3
  %add21.4.12 = add i16 %1217, %call.i.4.12
  store i16 %add21.4.12, i16* %arrayidx11.4.12, align 2, !tbaa !3
  %arrayidx9.4.1.12 = getelementptr inbounds i16, i16* %r, i64 201
  %1218 = load i16, i16* %arrayidx9.4.1.12, align 2, !tbaa !3
  %conv1.i.4.1.12 = sext i16 %1218 to i32
  %mul.i.4.1.12 = mul nsw i32 %conv1.i.4.1.12, -1542
  %call.i.4.1.12 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.1.12) #2
  %arrayidx11.4.1.12 = getelementptr inbounds i16, i16* %r, i64 193
  %1219 = load i16, i16* %arrayidx11.4.1.12, align 2, !tbaa !3
  %sub.4.1.12 = sub i16 %1219, %call.i.4.1.12
  store i16 %sub.4.1.12, i16* %arrayidx9.4.1.12, align 2, !tbaa !3
  %add21.4.1.12 = add i16 %1219, %call.i.4.1.12
  store i16 %add21.4.1.12, i16* %arrayidx11.4.1.12, align 2, !tbaa !3
  %arrayidx9.4.2.12 = getelementptr inbounds i16, i16* %r, i64 202
  %1220 = load i16, i16* %arrayidx9.4.2.12, align 2, !tbaa !3
  %conv1.i.4.2.12 = sext i16 %1220 to i32
  %mul.i.4.2.12 = mul nsw i32 %conv1.i.4.2.12, -1542
  %call.i.4.2.12 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.2.12) #2
  %arrayidx11.4.2.12 = getelementptr inbounds i16, i16* %r, i64 194
  %1221 = load i16, i16* %arrayidx11.4.2.12, align 2, !tbaa !3
  %sub.4.2.12 = sub i16 %1221, %call.i.4.2.12
  store i16 %sub.4.2.12, i16* %arrayidx9.4.2.12, align 2, !tbaa !3
  %add21.4.2.12 = add i16 %1221, %call.i.4.2.12
  store i16 %add21.4.2.12, i16* %arrayidx11.4.2.12, align 2, !tbaa !3
  %arrayidx9.4.3.12 = getelementptr inbounds i16, i16* %r, i64 203
  %1222 = load i16, i16* %arrayidx9.4.3.12, align 2, !tbaa !3
  %conv1.i.4.3.12 = sext i16 %1222 to i32
  %mul.i.4.3.12 = mul nsw i32 %conv1.i.4.3.12, -1542
  %call.i.4.3.12 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.3.12) #2
  %arrayidx11.4.3.12 = getelementptr inbounds i16, i16* %r, i64 195
  %1223 = load i16, i16* %arrayidx11.4.3.12, align 2, !tbaa !3
  %sub.4.3.12 = sub i16 %1223, %call.i.4.3.12
  store i16 %sub.4.3.12, i16* %arrayidx9.4.3.12, align 2, !tbaa !3
  %add21.4.3.12 = add i16 %1223, %call.i.4.3.12
  store i16 %add21.4.3.12, i16* %arrayidx11.4.3.12, align 2, !tbaa !3
  %arrayidx9.4.4.12 = getelementptr inbounds i16, i16* %r, i64 204
  %1224 = load i16, i16* %arrayidx9.4.4.12, align 2, !tbaa !3
  %conv1.i.4.4.12 = sext i16 %1224 to i32
  %mul.i.4.4.12 = mul nsw i32 %conv1.i.4.4.12, -1542
  %call.i.4.4.12 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.4.12) #2
  %arrayidx11.4.4.12 = getelementptr inbounds i16, i16* %r, i64 196
  %1225 = load i16, i16* %arrayidx11.4.4.12, align 2, !tbaa !3
  %sub.4.4.12 = sub i16 %1225, %call.i.4.4.12
  store i16 %sub.4.4.12, i16* %arrayidx9.4.4.12, align 2, !tbaa !3
  %add21.4.4.12 = add i16 %1225, %call.i.4.4.12
  store i16 %add21.4.4.12, i16* %arrayidx11.4.4.12, align 2, !tbaa !3
  %arrayidx9.4.5.12 = getelementptr inbounds i16, i16* %r, i64 205
  %1226 = load i16, i16* %arrayidx9.4.5.12, align 2, !tbaa !3
  %conv1.i.4.5.12 = sext i16 %1226 to i32
  %mul.i.4.5.12 = mul nsw i32 %conv1.i.4.5.12, -1542
  %call.i.4.5.12 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.5.12) #2
  %arrayidx11.4.5.12 = getelementptr inbounds i16, i16* %r, i64 197
  %1227 = load i16, i16* %arrayidx11.4.5.12, align 2, !tbaa !3
  %sub.4.5.12 = sub i16 %1227, %call.i.4.5.12
  store i16 %sub.4.5.12, i16* %arrayidx9.4.5.12, align 2, !tbaa !3
  %add21.4.5.12 = add i16 %1227, %call.i.4.5.12
  store i16 %add21.4.5.12, i16* %arrayidx11.4.5.12, align 2, !tbaa !3
  %arrayidx9.4.6.12 = getelementptr inbounds i16, i16* %r, i64 206
  %1228 = load i16, i16* %arrayidx9.4.6.12, align 2, !tbaa !3
  %conv1.i.4.6.12 = sext i16 %1228 to i32
  %mul.i.4.6.12 = mul nsw i32 %conv1.i.4.6.12, -1542
  %call.i.4.6.12 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.6.12) #2
  %arrayidx11.4.6.12 = getelementptr inbounds i16, i16* %r, i64 198
  %1229 = load i16, i16* %arrayidx11.4.6.12, align 2, !tbaa !3
  %sub.4.6.12 = sub i16 %1229, %call.i.4.6.12
  store i16 %sub.4.6.12, i16* %arrayidx9.4.6.12, align 2, !tbaa !3
  %add21.4.6.12 = add i16 %1229, %call.i.4.6.12
  store i16 %add21.4.6.12, i16* %arrayidx11.4.6.12, align 2, !tbaa !3
  %arrayidx9.4.7.12 = getelementptr inbounds i16, i16* %r, i64 207
  %1230 = load i16, i16* %arrayidx9.4.7.12, align 2, !tbaa !3
  %conv1.i.4.7.12 = sext i16 %1230 to i32
  %mul.i.4.7.12 = mul nsw i32 %conv1.i.4.7.12, -1542
  %call.i.4.7.12 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.7.12) #2
  %arrayidx11.4.7.12 = getelementptr inbounds i16, i16* %r, i64 199
  %1231 = load i16, i16* %arrayidx11.4.7.12, align 2, !tbaa !3
  %sub.4.7.12 = sub i16 %1231, %call.i.4.7.12
  store i16 %sub.4.7.12, i16* %arrayidx9.4.7.12, align 2, !tbaa !3
  %add21.4.7.12 = add i16 %1231, %call.i.4.7.12
  store i16 %add21.4.7.12, i16* %arrayidx11.4.7.12, align 2, !tbaa !3
  %arrayidx9.4.13 = getelementptr inbounds i16, i16* %r, i64 216
  %1232 = load i16, i16* %arrayidx9.4.13, align 2, !tbaa !3
  %conv1.i.4.13 = sext i16 %1232 to i32
  %mul.i.4.13 = mul nsw i32 %conv1.i.4.13, 411
  %call.i.4.13 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.13) #2
  %arrayidx11.4.13 = getelementptr inbounds i16, i16* %r, i64 208
  %1233 = load i16, i16* %arrayidx11.4.13, align 2, !tbaa !3
  %sub.4.13 = sub i16 %1233, %call.i.4.13
  store i16 %sub.4.13, i16* %arrayidx9.4.13, align 2, !tbaa !3
  %add21.4.13 = add i16 %1233, %call.i.4.13
  store i16 %add21.4.13, i16* %arrayidx11.4.13, align 2, !tbaa !3
  %arrayidx9.4.1.13 = getelementptr inbounds i16, i16* %r, i64 217
  %1234 = load i16, i16* %arrayidx9.4.1.13, align 2, !tbaa !3
  %conv1.i.4.1.13 = sext i16 %1234 to i32
  %mul.i.4.1.13 = mul nsw i32 %conv1.i.4.1.13, 411
  %call.i.4.1.13 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.1.13) #2
  %arrayidx11.4.1.13 = getelementptr inbounds i16, i16* %r, i64 209
  %1235 = load i16, i16* %arrayidx11.4.1.13, align 2, !tbaa !3
  %sub.4.1.13 = sub i16 %1235, %call.i.4.1.13
  store i16 %sub.4.1.13, i16* %arrayidx9.4.1.13, align 2, !tbaa !3
  %add21.4.1.13 = add i16 %1235, %call.i.4.1.13
  store i16 %add21.4.1.13, i16* %arrayidx11.4.1.13, align 2, !tbaa !3
  %arrayidx9.4.2.13 = getelementptr inbounds i16, i16* %r, i64 218
  %1236 = load i16, i16* %arrayidx9.4.2.13, align 2, !tbaa !3
  %conv1.i.4.2.13 = sext i16 %1236 to i32
  %mul.i.4.2.13 = mul nsw i32 %conv1.i.4.2.13, 411
  %call.i.4.2.13 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.2.13) #2
  %arrayidx11.4.2.13 = getelementptr inbounds i16, i16* %r, i64 210
  %1237 = load i16, i16* %arrayidx11.4.2.13, align 2, !tbaa !3
  %sub.4.2.13 = sub i16 %1237, %call.i.4.2.13
  store i16 %sub.4.2.13, i16* %arrayidx9.4.2.13, align 2, !tbaa !3
  %add21.4.2.13 = add i16 %1237, %call.i.4.2.13
  store i16 %add21.4.2.13, i16* %arrayidx11.4.2.13, align 2, !tbaa !3
  %arrayidx9.4.3.13 = getelementptr inbounds i16, i16* %r, i64 219
  %1238 = load i16, i16* %arrayidx9.4.3.13, align 2, !tbaa !3
  %conv1.i.4.3.13 = sext i16 %1238 to i32
  %mul.i.4.3.13 = mul nsw i32 %conv1.i.4.3.13, 411
  %call.i.4.3.13 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.3.13) #2
  %arrayidx11.4.3.13 = getelementptr inbounds i16, i16* %r, i64 211
  %1239 = load i16, i16* %arrayidx11.4.3.13, align 2, !tbaa !3
  %sub.4.3.13 = sub i16 %1239, %call.i.4.3.13
  store i16 %sub.4.3.13, i16* %arrayidx9.4.3.13, align 2, !tbaa !3
  %add21.4.3.13 = add i16 %1239, %call.i.4.3.13
  store i16 %add21.4.3.13, i16* %arrayidx11.4.3.13, align 2, !tbaa !3
  %arrayidx9.4.4.13 = getelementptr inbounds i16, i16* %r, i64 220
  %1240 = load i16, i16* %arrayidx9.4.4.13, align 2, !tbaa !3
  %conv1.i.4.4.13 = sext i16 %1240 to i32
  %mul.i.4.4.13 = mul nsw i32 %conv1.i.4.4.13, 411
  %call.i.4.4.13 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.4.13) #2
  %arrayidx11.4.4.13 = getelementptr inbounds i16, i16* %r, i64 212
  %1241 = load i16, i16* %arrayidx11.4.4.13, align 2, !tbaa !3
  %sub.4.4.13 = sub i16 %1241, %call.i.4.4.13
  store i16 %sub.4.4.13, i16* %arrayidx9.4.4.13, align 2, !tbaa !3
  %add21.4.4.13 = add i16 %1241, %call.i.4.4.13
  store i16 %add21.4.4.13, i16* %arrayidx11.4.4.13, align 2, !tbaa !3
  %arrayidx9.4.5.13 = getelementptr inbounds i16, i16* %r, i64 221
  %1242 = load i16, i16* %arrayidx9.4.5.13, align 2, !tbaa !3
  %conv1.i.4.5.13 = sext i16 %1242 to i32
  %mul.i.4.5.13 = mul nsw i32 %conv1.i.4.5.13, 411
  %call.i.4.5.13 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.5.13) #2
  %arrayidx11.4.5.13 = getelementptr inbounds i16, i16* %r, i64 213
  %1243 = load i16, i16* %arrayidx11.4.5.13, align 2, !tbaa !3
  %sub.4.5.13 = sub i16 %1243, %call.i.4.5.13
  store i16 %sub.4.5.13, i16* %arrayidx9.4.5.13, align 2, !tbaa !3
  %add21.4.5.13 = add i16 %1243, %call.i.4.5.13
  store i16 %add21.4.5.13, i16* %arrayidx11.4.5.13, align 2, !tbaa !3
  %arrayidx9.4.6.13 = getelementptr inbounds i16, i16* %r, i64 222
  %1244 = load i16, i16* %arrayidx9.4.6.13, align 2, !tbaa !3
  %conv1.i.4.6.13 = sext i16 %1244 to i32
  %mul.i.4.6.13 = mul nsw i32 %conv1.i.4.6.13, 411
  %call.i.4.6.13 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.6.13) #2
  %arrayidx11.4.6.13 = getelementptr inbounds i16, i16* %r, i64 214
  %1245 = load i16, i16* %arrayidx11.4.6.13, align 2, !tbaa !3
  %sub.4.6.13 = sub i16 %1245, %call.i.4.6.13
  store i16 %sub.4.6.13, i16* %arrayidx9.4.6.13, align 2, !tbaa !3
  %add21.4.6.13 = add i16 %1245, %call.i.4.6.13
  store i16 %add21.4.6.13, i16* %arrayidx11.4.6.13, align 2, !tbaa !3
  %arrayidx9.4.7.13 = getelementptr inbounds i16, i16* %r, i64 223
  %1246 = load i16, i16* %arrayidx9.4.7.13, align 2, !tbaa !3
  %conv1.i.4.7.13 = sext i16 %1246 to i32
  %mul.i.4.7.13 = mul nsw i32 %conv1.i.4.7.13, 411
  %call.i.4.7.13 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.7.13) #2
  %arrayidx11.4.7.13 = getelementptr inbounds i16, i16* %r, i64 215
  %1247 = load i16, i16* %arrayidx11.4.7.13, align 2, !tbaa !3
  %sub.4.7.13 = sub i16 %1247, %call.i.4.7.13
  store i16 %sub.4.7.13, i16* %arrayidx9.4.7.13, align 2, !tbaa !3
  %add21.4.7.13 = add i16 %1247, %call.i.4.7.13
  store i16 %add21.4.7.13, i16* %arrayidx11.4.7.13, align 2, !tbaa !3
  %arrayidx9.4.14 = getelementptr inbounds i16, i16* %r, i64 232
  %1248 = load i16, i16* %arrayidx9.4.14, align 2, !tbaa !3
  %conv1.i.4.14 = sext i16 %1248 to i32
  %mul.i.4.14 = mul nsw i32 %conv1.i.4.14, -205
  %call.i.4.14 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.14) #2
  %arrayidx11.4.14 = getelementptr inbounds i16, i16* %r, i64 224
  %1249 = load i16, i16* %arrayidx11.4.14, align 2, !tbaa !3
  %sub.4.14 = sub i16 %1249, %call.i.4.14
  store i16 %sub.4.14, i16* %arrayidx9.4.14, align 2, !tbaa !3
  %add21.4.14 = add i16 %1249, %call.i.4.14
  store i16 %add21.4.14, i16* %arrayidx11.4.14, align 2, !tbaa !3
  %arrayidx9.4.1.14 = getelementptr inbounds i16, i16* %r, i64 233
  %1250 = load i16, i16* %arrayidx9.4.1.14, align 2, !tbaa !3
  %conv1.i.4.1.14 = sext i16 %1250 to i32
  %mul.i.4.1.14 = mul nsw i32 %conv1.i.4.1.14, -205
  %call.i.4.1.14 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.1.14) #2
  %arrayidx11.4.1.14 = getelementptr inbounds i16, i16* %r, i64 225
  %1251 = load i16, i16* %arrayidx11.4.1.14, align 2, !tbaa !3
  %sub.4.1.14 = sub i16 %1251, %call.i.4.1.14
  store i16 %sub.4.1.14, i16* %arrayidx9.4.1.14, align 2, !tbaa !3
  %add21.4.1.14 = add i16 %1251, %call.i.4.1.14
  store i16 %add21.4.1.14, i16* %arrayidx11.4.1.14, align 2, !tbaa !3
  %arrayidx9.4.2.14 = getelementptr inbounds i16, i16* %r, i64 234
  %1252 = load i16, i16* %arrayidx9.4.2.14, align 2, !tbaa !3
  %conv1.i.4.2.14 = sext i16 %1252 to i32
  %mul.i.4.2.14 = mul nsw i32 %conv1.i.4.2.14, -205
  %call.i.4.2.14 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.2.14) #2
  %arrayidx11.4.2.14 = getelementptr inbounds i16, i16* %r, i64 226
  %1253 = load i16, i16* %arrayidx11.4.2.14, align 2, !tbaa !3
  %sub.4.2.14 = sub i16 %1253, %call.i.4.2.14
  store i16 %sub.4.2.14, i16* %arrayidx9.4.2.14, align 2, !tbaa !3
  %add21.4.2.14 = add i16 %1253, %call.i.4.2.14
  store i16 %add21.4.2.14, i16* %arrayidx11.4.2.14, align 2, !tbaa !3
  %arrayidx9.4.3.14 = getelementptr inbounds i16, i16* %r, i64 235
  %1254 = load i16, i16* %arrayidx9.4.3.14, align 2, !tbaa !3
  %conv1.i.4.3.14 = sext i16 %1254 to i32
  %mul.i.4.3.14 = mul nsw i32 %conv1.i.4.3.14, -205
  %call.i.4.3.14 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.3.14) #2
  %arrayidx11.4.3.14 = getelementptr inbounds i16, i16* %r, i64 227
  %1255 = load i16, i16* %arrayidx11.4.3.14, align 2, !tbaa !3
  %sub.4.3.14 = sub i16 %1255, %call.i.4.3.14
  store i16 %sub.4.3.14, i16* %arrayidx9.4.3.14, align 2, !tbaa !3
  %add21.4.3.14 = add i16 %1255, %call.i.4.3.14
  store i16 %add21.4.3.14, i16* %arrayidx11.4.3.14, align 2, !tbaa !3
  %arrayidx9.4.4.14 = getelementptr inbounds i16, i16* %r, i64 236
  %1256 = load i16, i16* %arrayidx9.4.4.14, align 2, !tbaa !3
  %conv1.i.4.4.14 = sext i16 %1256 to i32
  %mul.i.4.4.14 = mul nsw i32 %conv1.i.4.4.14, -205
  %call.i.4.4.14 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.4.14) #2
  %arrayidx11.4.4.14 = getelementptr inbounds i16, i16* %r, i64 228
  %1257 = load i16, i16* %arrayidx11.4.4.14, align 2, !tbaa !3
  %sub.4.4.14 = sub i16 %1257, %call.i.4.4.14
  store i16 %sub.4.4.14, i16* %arrayidx9.4.4.14, align 2, !tbaa !3
  %add21.4.4.14 = add i16 %1257, %call.i.4.4.14
  store i16 %add21.4.4.14, i16* %arrayidx11.4.4.14, align 2, !tbaa !3
  %arrayidx9.4.5.14 = getelementptr inbounds i16, i16* %r, i64 237
  %1258 = load i16, i16* %arrayidx9.4.5.14, align 2, !tbaa !3
  %conv1.i.4.5.14 = sext i16 %1258 to i32
  %mul.i.4.5.14 = mul nsw i32 %conv1.i.4.5.14, -205
  %call.i.4.5.14 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.5.14) #2
  %arrayidx11.4.5.14 = getelementptr inbounds i16, i16* %r, i64 229
  %1259 = load i16, i16* %arrayidx11.4.5.14, align 2, !tbaa !3
  %sub.4.5.14 = sub i16 %1259, %call.i.4.5.14
  store i16 %sub.4.5.14, i16* %arrayidx9.4.5.14, align 2, !tbaa !3
  %add21.4.5.14 = add i16 %1259, %call.i.4.5.14
  store i16 %add21.4.5.14, i16* %arrayidx11.4.5.14, align 2, !tbaa !3
  %arrayidx9.4.6.14 = getelementptr inbounds i16, i16* %r, i64 238
  %1260 = load i16, i16* %arrayidx9.4.6.14, align 2, !tbaa !3
  %conv1.i.4.6.14 = sext i16 %1260 to i32
  %mul.i.4.6.14 = mul nsw i32 %conv1.i.4.6.14, -205
  %call.i.4.6.14 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.6.14) #2
  %arrayidx11.4.6.14 = getelementptr inbounds i16, i16* %r, i64 230
  %1261 = load i16, i16* %arrayidx11.4.6.14, align 2, !tbaa !3
  %sub.4.6.14 = sub i16 %1261, %call.i.4.6.14
  store i16 %sub.4.6.14, i16* %arrayidx9.4.6.14, align 2, !tbaa !3
  %add21.4.6.14 = add i16 %1261, %call.i.4.6.14
  store i16 %add21.4.6.14, i16* %arrayidx11.4.6.14, align 2, !tbaa !3
  %arrayidx9.4.7.14 = getelementptr inbounds i16, i16* %r, i64 239
  %1262 = load i16, i16* %arrayidx9.4.7.14, align 2, !tbaa !3
  %conv1.i.4.7.14 = sext i16 %1262 to i32
  %mul.i.4.7.14 = mul nsw i32 %conv1.i.4.7.14, -205
  %call.i.4.7.14 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.7.14) #2
  %arrayidx11.4.7.14 = getelementptr inbounds i16, i16* %r, i64 231
  %1263 = load i16, i16* %arrayidx11.4.7.14, align 2, !tbaa !3
  %sub.4.7.14 = sub i16 %1263, %call.i.4.7.14
  store i16 %sub.4.7.14, i16* %arrayidx9.4.7.14, align 2, !tbaa !3
  %add21.4.7.14 = add i16 %1263, %call.i.4.7.14
  store i16 %add21.4.7.14, i16* %arrayidx11.4.7.14, align 2, !tbaa !3
  %arrayidx9.4.15 = getelementptr inbounds i16, i16* %r, i64 248
  %1264 = load i16, i16* %arrayidx9.4.15, align 2, !tbaa !3
  %conv1.i.4.15 = sext i16 %1264 to i32
  %mul.i.4.15 = mul nsw i32 %conv1.i.4.15, -1571
  %call.i.4.15 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.15) #2
  %arrayidx11.4.15 = getelementptr inbounds i16, i16* %r, i64 240
  %1265 = load i16, i16* %arrayidx11.4.15, align 2, !tbaa !3
  %sub.4.15 = sub i16 %1265, %call.i.4.15
  store i16 %sub.4.15, i16* %arrayidx9.4.15, align 2, !tbaa !3
  %add21.4.15 = add i16 %1265, %call.i.4.15
  store i16 %add21.4.15, i16* %arrayidx11.4.15, align 2, !tbaa !3
  %arrayidx9.4.1.15 = getelementptr inbounds i16, i16* %r, i64 249
  %1266 = load i16, i16* %arrayidx9.4.1.15, align 2, !tbaa !3
  %conv1.i.4.1.15 = sext i16 %1266 to i32
  %mul.i.4.1.15 = mul nsw i32 %conv1.i.4.1.15, -1571
  %call.i.4.1.15 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.1.15) #2
  %arrayidx11.4.1.15 = getelementptr inbounds i16, i16* %r, i64 241
  %1267 = load i16, i16* %arrayidx11.4.1.15, align 2, !tbaa !3
  %sub.4.1.15 = sub i16 %1267, %call.i.4.1.15
  store i16 %sub.4.1.15, i16* %arrayidx9.4.1.15, align 2, !tbaa !3
  %add21.4.1.15 = add i16 %1267, %call.i.4.1.15
  store i16 %add21.4.1.15, i16* %arrayidx11.4.1.15, align 2, !tbaa !3
  %arrayidx9.4.2.15 = getelementptr inbounds i16, i16* %r, i64 250
  %1268 = load i16, i16* %arrayidx9.4.2.15, align 2, !tbaa !3
  %conv1.i.4.2.15 = sext i16 %1268 to i32
  %mul.i.4.2.15 = mul nsw i32 %conv1.i.4.2.15, -1571
  %call.i.4.2.15 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.2.15) #2
  %arrayidx11.4.2.15 = getelementptr inbounds i16, i16* %r, i64 242
  %1269 = load i16, i16* %arrayidx11.4.2.15, align 2, !tbaa !3
  %sub.4.2.15 = sub i16 %1269, %call.i.4.2.15
  store i16 %sub.4.2.15, i16* %arrayidx9.4.2.15, align 2, !tbaa !3
  %add21.4.2.15 = add i16 %1269, %call.i.4.2.15
  store i16 %add21.4.2.15, i16* %arrayidx11.4.2.15, align 2, !tbaa !3
  %arrayidx9.4.3.15 = getelementptr inbounds i16, i16* %r, i64 251
  %1270 = load i16, i16* %arrayidx9.4.3.15, align 2, !tbaa !3
  %conv1.i.4.3.15 = sext i16 %1270 to i32
  %mul.i.4.3.15 = mul nsw i32 %conv1.i.4.3.15, -1571
  %call.i.4.3.15 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.3.15) #2
  %arrayidx11.4.3.15 = getelementptr inbounds i16, i16* %r, i64 243
  %1271 = load i16, i16* %arrayidx11.4.3.15, align 2, !tbaa !3
  %sub.4.3.15 = sub i16 %1271, %call.i.4.3.15
  store i16 %sub.4.3.15, i16* %arrayidx9.4.3.15, align 2, !tbaa !3
  %add21.4.3.15 = add i16 %1271, %call.i.4.3.15
  store i16 %add21.4.3.15, i16* %arrayidx11.4.3.15, align 2, !tbaa !3
  %arrayidx9.4.4.15 = getelementptr inbounds i16, i16* %r, i64 252
  %1272 = load i16, i16* %arrayidx9.4.4.15, align 2, !tbaa !3
  %conv1.i.4.4.15 = sext i16 %1272 to i32
  %mul.i.4.4.15 = mul nsw i32 %conv1.i.4.4.15, -1571
  %call.i.4.4.15 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.4.15) #2
  %arrayidx11.4.4.15 = getelementptr inbounds i16, i16* %r, i64 244
  %1273 = load i16, i16* %arrayidx11.4.4.15, align 2, !tbaa !3
  %sub.4.4.15 = sub i16 %1273, %call.i.4.4.15
  store i16 %sub.4.4.15, i16* %arrayidx9.4.4.15, align 2, !tbaa !3
  %add21.4.4.15 = add i16 %1273, %call.i.4.4.15
  store i16 %add21.4.4.15, i16* %arrayidx11.4.4.15, align 2, !tbaa !3
  %arrayidx9.4.5.15 = getelementptr inbounds i16, i16* %r, i64 253
  %1274 = load i16, i16* %arrayidx9.4.5.15, align 2, !tbaa !3
  %conv1.i.4.5.15 = sext i16 %1274 to i32
  %mul.i.4.5.15 = mul nsw i32 %conv1.i.4.5.15, -1571
  %call.i.4.5.15 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.5.15) #2
  %arrayidx11.4.5.15 = getelementptr inbounds i16, i16* %r, i64 245
  %1275 = load i16, i16* %arrayidx11.4.5.15, align 2, !tbaa !3
  %sub.4.5.15 = sub i16 %1275, %call.i.4.5.15
  store i16 %sub.4.5.15, i16* %arrayidx9.4.5.15, align 2, !tbaa !3
  %add21.4.5.15 = add i16 %1275, %call.i.4.5.15
  store i16 %add21.4.5.15, i16* %arrayidx11.4.5.15, align 2, !tbaa !3
  %arrayidx9.4.6.15 = getelementptr inbounds i16, i16* %r, i64 254
  %1276 = load i16, i16* %arrayidx9.4.6.15, align 2, !tbaa !3
  %conv1.i.4.6.15 = sext i16 %1276 to i32
  %mul.i.4.6.15 = mul nsw i32 %conv1.i.4.6.15, -1571
  %call.i.4.6.15 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.6.15) #2
  %arrayidx11.4.6.15 = getelementptr inbounds i16, i16* %r, i64 246
  %1277 = load i16, i16* %arrayidx11.4.6.15, align 2, !tbaa !3
  %sub.4.6.15 = sub i16 %1277, %call.i.4.6.15
  store i16 %sub.4.6.15, i16* %arrayidx9.4.6.15, align 2, !tbaa !3
  %add21.4.6.15 = add i16 %1277, %call.i.4.6.15
  store i16 %add21.4.6.15, i16* %arrayidx11.4.6.15, align 2, !tbaa !3
  %arrayidx9.4.7.15 = getelementptr inbounds i16, i16* %r, i64 255
  %1278 = load i16, i16* %arrayidx9.4.7.15, align 2, !tbaa !3
  %conv1.i.4.7.15 = sext i16 %1278 to i32
  %mul.i.4.7.15 = mul nsw i32 %conv1.i.4.7.15, -1571
  %call.i.4.7.15 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.7.15) #2
  %arrayidx11.4.7.15 = getelementptr inbounds i16, i16* %r, i64 247
  %1279 = load i16, i16* %arrayidx11.4.7.15, align 2, !tbaa !3
  %sub.4.7.15 = sub i16 %1279, %call.i.4.7.15
  store i16 %sub.4.7.15, i16* %arrayidx9.4.7.15, align 2, !tbaa !3
  %add21.4.7.15 = add i16 %1279, %call.i.4.7.15
  store i16 %add21.4.7.15, i16* %arrayidx11.4.7.15, align 2, !tbaa !3
  %arrayidx9.5 = getelementptr inbounds i16, i16* %r, i64 4
  %1280 = load i16, i16* %arrayidx9.5, align 2, !tbaa !3
  %conv1.i.5 = sext i16 %1280 to i32
  %mul.i.5 = mul nsw i32 %conv1.i.5, 1223
  %call.i.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5) #2
  %1281 = load i16, i16* %r, align 2, !tbaa !3
  %sub.5 = sub i16 %1281, %call.i.5
  store i16 %sub.5, i16* %arrayidx9.5, align 2, !tbaa !3
  %add21.5 = add i16 %1281, %call.i.5
  store i16 %add21.5, i16* %r, align 2, !tbaa !3
  %arrayidx9.5.1 = getelementptr inbounds i16, i16* %r, i64 5
  %1282 = load i16, i16* %arrayidx9.5.1, align 2, !tbaa !3
  %conv1.i.5.1 = sext i16 %1282 to i32
  %mul.i.5.1 = mul nsw i32 %conv1.i.5.1, 1223
  %call.i.5.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1) #2
  %arrayidx11.5.1 = getelementptr inbounds i16, i16* %r, i64 1
  %1283 = load i16, i16* %arrayidx11.5.1, align 2, !tbaa !3
  %sub.5.1 = sub i16 %1283, %call.i.5.1
  store i16 %sub.5.1, i16* %arrayidx9.5.1, align 2, !tbaa !3
  %add21.5.1 = add i16 %1283, %call.i.5.1
  store i16 %add21.5.1, i16* %arrayidx11.5.1, align 2, !tbaa !3
  %arrayidx9.5.2 = getelementptr inbounds i16, i16* %r, i64 6
  %1284 = load i16, i16* %arrayidx9.5.2, align 2, !tbaa !3
  %conv1.i.5.2 = sext i16 %1284 to i32
  %mul.i.5.2 = mul nsw i32 %conv1.i.5.2, 1223
  %call.i.5.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2) #2
  %arrayidx11.5.2 = getelementptr inbounds i16, i16* %r, i64 2
  %1285 = load i16, i16* %arrayidx11.5.2, align 2, !tbaa !3
  %sub.5.2 = sub i16 %1285, %call.i.5.2
  store i16 %sub.5.2, i16* %arrayidx9.5.2, align 2, !tbaa !3
  %add21.5.2 = add i16 %1285, %call.i.5.2
  store i16 %add21.5.2, i16* %arrayidx11.5.2, align 2, !tbaa !3
  %arrayidx9.5.3 = getelementptr inbounds i16, i16* %r, i64 7
  %1286 = load i16, i16* %arrayidx9.5.3, align 2, !tbaa !3
  %conv1.i.5.3 = sext i16 %1286 to i32
  %mul.i.5.3 = mul nsw i32 %conv1.i.5.3, 1223
  %call.i.5.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3) #2
  %arrayidx11.5.3 = getelementptr inbounds i16, i16* %r, i64 3
  %1287 = load i16, i16* %arrayidx11.5.3, align 2, !tbaa !3
  %sub.5.3 = sub i16 %1287, %call.i.5.3
  store i16 %sub.5.3, i16* %arrayidx9.5.3, align 2, !tbaa !3
  %add21.5.3 = add i16 %1287, %call.i.5.3
  store i16 %add21.5.3, i16* %arrayidx11.5.3, align 2, !tbaa !3
  %arrayidx9.5.178 = getelementptr inbounds i16, i16* %r, i64 12
  %1288 = load i16, i16* %arrayidx9.5.178, align 2, !tbaa !3
  %conv1.i.5.179 = sext i16 %1288 to i32
  %mul.i.5.180 = mul nsw i32 %conv1.i.5.179, 652
  %call.i.5.181 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.180) #2
  %arrayidx11.5.182 = getelementptr inbounds i16, i16* %r, i64 8
  %1289 = load i16, i16* %arrayidx11.5.182, align 2, !tbaa !3
  %sub.5.183 = sub i16 %1289, %call.i.5.181
  store i16 %sub.5.183, i16* %arrayidx9.5.178, align 2, !tbaa !3
  %add21.5.184 = add i16 %1289, %call.i.5.181
  store i16 %add21.5.184, i16* %arrayidx11.5.182, align 2, !tbaa !3
  %arrayidx9.5.1.1 = getelementptr inbounds i16, i16* %r, i64 13
  %1290 = load i16, i16* %arrayidx9.5.1.1, align 2, !tbaa !3
  %conv1.i.5.1.1 = sext i16 %1290 to i32
  %mul.i.5.1.1 = mul nsw i32 %conv1.i.5.1.1, 652
  %call.i.5.1.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1.1) #2
  %arrayidx11.5.1.1 = getelementptr inbounds i16, i16* %r, i64 9
  %1291 = load i16, i16* %arrayidx11.5.1.1, align 2, !tbaa !3
  %sub.5.1.1 = sub i16 %1291, %call.i.5.1.1
  store i16 %sub.5.1.1, i16* %arrayidx9.5.1.1, align 2, !tbaa !3
  %add21.5.1.1 = add i16 %1291, %call.i.5.1.1
  store i16 %add21.5.1.1, i16* %arrayidx11.5.1.1, align 2, !tbaa !3
  %arrayidx9.5.2.1 = getelementptr inbounds i16, i16* %r, i64 14
  %1292 = load i16, i16* %arrayidx9.5.2.1, align 2, !tbaa !3
  %conv1.i.5.2.1 = sext i16 %1292 to i32
  %mul.i.5.2.1 = mul nsw i32 %conv1.i.5.2.1, 652
  %call.i.5.2.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2.1) #2
  %arrayidx11.5.2.1 = getelementptr inbounds i16, i16* %r, i64 10
  %1293 = load i16, i16* %arrayidx11.5.2.1, align 2, !tbaa !3
  %sub.5.2.1 = sub i16 %1293, %call.i.5.2.1
  store i16 %sub.5.2.1, i16* %arrayidx9.5.2.1, align 2, !tbaa !3
  %add21.5.2.1 = add i16 %1293, %call.i.5.2.1
  store i16 %add21.5.2.1, i16* %arrayidx11.5.2.1, align 2, !tbaa !3
  %arrayidx9.5.3.1 = getelementptr inbounds i16, i16* %r, i64 15
  %1294 = load i16, i16* %arrayidx9.5.3.1, align 2, !tbaa !3
  %conv1.i.5.3.1 = sext i16 %1294 to i32
  %mul.i.5.3.1 = mul nsw i32 %conv1.i.5.3.1, 652
  %call.i.5.3.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3.1) #2
  %arrayidx11.5.3.1 = getelementptr inbounds i16, i16* %r, i64 11
  %1295 = load i16, i16* %arrayidx11.5.3.1, align 2, !tbaa !3
  %sub.5.3.1 = sub i16 %1295, %call.i.5.3.1
  store i16 %sub.5.3.1, i16* %arrayidx9.5.3.1, align 2, !tbaa !3
  %add21.5.3.1 = add i16 %1295, %call.i.5.3.1
  store i16 %add21.5.3.1, i16* %arrayidx11.5.3.1, align 2, !tbaa !3
  %arrayidx9.5.288 = getelementptr inbounds i16, i16* %r, i64 20
  %1296 = load i16, i16* %arrayidx9.5.288, align 2, !tbaa !3
  %conv1.i.5.289 = sext i16 %1296 to i32
  %mul.i.5.290 = mul nsw i32 %conv1.i.5.289, -552
  %call.i.5.291 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.290) #2
  %arrayidx11.5.292 = getelementptr inbounds i16, i16* %r, i64 16
  %1297 = load i16, i16* %arrayidx11.5.292, align 2, !tbaa !3
  %sub.5.293 = sub i16 %1297, %call.i.5.291
  store i16 %sub.5.293, i16* %arrayidx9.5.288, align 2, !tbaa !3
  %add21.5.294 = add i16 %1297, %call.i.5.291
  store i16 %add21.5.294, i16* %arrayidx11.5.292, align 2, !tbaa !3
  %arrayidx9.5.1.2 = getelementptr inbounds i16, i16* %r, i64 21
  %1298 = load i16, i16* %arrayidx9.5.1.2, align 2, !tbaa !3
  %conv1.i.5.1.2 = sext i16 %1298 to i32
  %mul.i.5.1.2 = mul nsw i32 %conv1.i.5.1.2, -552
  %call.i.5.1.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1.2) #2
  %arrayidx11.5.1.2 = getelementptr inbounds i16, i16* %r, i64 17
  %1299 = load i16, i16* %arrayidx11.5.1.2, align 2, !tbaa !3
  %sub.5.1.2 = sub i16 %1299, %call.i.5.1.2
  store i16 %sub.5.1.2, i16* %arrayidx9.5.1.2, align 2, !tbaa !3
  %add21.5.1.2 = add i16 %1299, %call.i.5.1.2
  store i16 %add21.5.1.2, i16* %arrayidx11.5.1.2, align 2, !tbaa !3
  %arrayidx9.5.2.2 = getelementptr inbounds i16, i16* %r, i64 22
  %1300 = load i16, i16* %arrayidx9.5.2.2, align 2, !tbaa !3
  %conv1.i.5.2.2 = sext i16 %1300 to i32
  %mul.i.5.2.2 = mul nsw i32 %conv1.i.5.2.2, -552
  %call.i.5.2.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2.2) #2
  %arrayidx11.5.2.2 = getelementptr inbounds i16, i16* %r, i64 18
  %1301 = load i16, i16* %arrayidx11.5.2.2, align 2, !tbaa !3
  %sub.5.2.2 = sub i16 %1301, %call.i.5.2.2
  store i16 %sub.5.2.2, i16* %arrayidx9.5.2.2, align 2, !tbaa !3
  %add21.5.2.2 = add i16 %1301, %call.i.5.2.2
  store i16 %add21.5.2.2, i16* %arrayidx11.5.2.2, align 2, !tbaa !3
  %arrayidx9.5.3.2 = getelementptr inbounds i16, i16* %r, i64 23
  %1302 = load i16, i16* %arrayidx9.5.3.2, align 2, !tbaa !3
  %conv1.i.5.3.2 = sext i16 %1302 to i32
  %mul.i.5.3.2 = mul nsw i32 %conv1.i.5.3.2, -552
  %call.i.5.3.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3.2) #2
  %arrayidx11.5.3.2 = getelementptr inbounds i16, i16* %r, i64 19
  %1303 = load i16, i16* %arrayidx11.5.3.2, align 2, !tbaa !3
  %sub.5.3.2 = sub i16 %1303, %call.i.5.3.2
  store i16 %sub.5.3.2, i16* %arrayidx9.5.3.2, align 2, !tbaa !3
  %add21.5.3.2 = add i16 %1303, %call.i.5.3.2
  store i16 %add21.5.3.2, i16* %arrayidx11.5.3.2, align 2, !tbaa !3
  %arrayidx9.5.398 = getelementptr inbounds i16, i16* %r, i64 28
  %1304 = load i16, i16* %arrayidx9.5.398, align 2, !tbaa !3
  %conv1.i.5.399 = sext i16 %1304 to i32
  %mul.i.5.3100 = mul nsw i32 %conv1.i.5.399, 1015
  %call.i.5.3101 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3100) #2
  %arrayidx11.5.3102 = getelementptr inbounds i16, i16* %r, i64 24
  %1305 = load i16, i16* %arrayidx11.5.3102, align 2, !tbaa !3
  %sub.5.3103 = sub i16 %1305, %call.i.5.3101
  store i16 %sub.5.3103, i16* %arrayidx9.5.398, align 2, !tbaa !3
  %add21.5.3104 = add i16 %1305, %call.i.5.3101
  store i16 %add21.5.3104, i16* %arrayidx11.5.3102, align 2, !tbaa !3
  %arrayidx9.5.1.3 = getelementptr inbounds i16, i16* %r, i64 29
  %1306 = load i16, i16* %arrayidx9.5.1.3, align 2, !tbaa !3
  %conv1.i.5.1.3 = sext i16 %1306 to i32
  %mul.i.5.1.3 = mul nsw i32 %conv1.i.5.1.3, 1015
  %call.i.5.1.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1.3) #2
  %arrayidx11.5.1.3 = getelementptr inbounds i16, i16* %r, i64 25
  %1307 = load i16, i16* %arrayidx11.5.1.3, align 2, !tbaa !3
  %sub.5.1.3 = sub i16 %1307, %call.i.5.1.3
  store i16 %sub.5.1.3, i16* %arrayidx9.5.1.3, align 2, !tbaa !3
  %add21.5.1.3 = add i16 %1307, %call.i.5.1.3
  store i16 %add21.5.1.3, i16* %arrayidx11.5.1.3, align 2, !tbaa !3
  %arrayidx9.5.2.3 = getelementptr inbounds i16, i16* %r, i64 30
  %1308 = load i16, i16* %arrayidx9.5.2.3, align 2, !tbaa !3
  %conv1.i.5.2.3 = sext i16 %1308 to i32
  %mul.i.5.2.3 = mul nsw i32 %conv1.i.5.2.3, 1015
  %call.i.5.2.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2.3) #2
  %arrayidx11.5.2.3 = getelementptr inbounds i16, i16* %r, i64 26
  %1309 = load i16, i16* %arrayidx11.5.2.3, align 2, !tbaa !3
  %sub.5.2.3 = sub i16 %1309, %call.i.5.2.3
  store i16 %sub.5.2.3, i16* %arrayidx9.5.2.3, align 2, !tbaa !3
  %add21.5.2.3 = add i16 %1309, %call.i.5.2.3
  store i16 %add21.5.2.3, i16* %arrayidx11.5.2.3, align 2, !tbaa !3
  %arrayidx9.5.3.3 = getelementptr inbounds i16, i16* %r, i64 31
  %1310 = load i16, i16* %arrayidx9.5.3.3, align 2, !tbaa !3
  %conv1.i.5.3.3 = sext i16 %1310 to i32
  %mul.i.5.3.3 = mul nsw i32 %conv1.i.5.3.3, 1015
  %call.i.5.3.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3.3) #2
  %arrayidx11.5.3.3 = getelementptr inbounds i16, i16* %r, i64 27
  %1311 = load i16, i16* %arrayidx11.5.3.3, align 2, !tbaa !3
  %sub.5.3.3 = sub i16 %1311, %call.i.5.3.3
  store i16 %sub.5.3.3, i16* %arrayidx9.5.3.3, align 2, !tbaa !3
  %add21.5.3.3 = add i16 %1311, %call.i.5.3.3
  store i16 %add21.5.3.3, i16* %arrayidx11.5.3.3, align 2, !tbaa !3
  %arrayidx9.5.4 = getelementptr inbounds i16, i16* %r, i64 36
  %1312 = load i16, i16* %arrayidx9.5.4, align 2, !tbaa !3
  %conv1.i.5.4 = sext i16 %1312 to i32
  %mul.i.5.4 = mul nsw i32 %conv1.i.5.4, -1293
  %call.i.5.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.4) #2
  %arrayidx11.5.4 = getelementptr inbounds i16, i16* %r, i64 32
  %1313 = load i16, i16* %arrayidx11.5.4, align 2, !tbaa !3
  %sub.5.4 = sub i16 %1313, %call.i.5.4
  store i16 %sub.5.4, i16* %arrayidx9.5.4, align 2, !tbaa !3
  %add21.5.4 = add i16 %1313, %call.i.5.4
  store i16 %add21.5.4, i16* %arrayidx11.5.4, align 2, !tbaa !3
  %arrayidx9.5.1.4 = getelementptr inbounds i16, i16* %r, i64 37
  %1314 = load i16, i16* %arrayidx9.5.1.4, align 2, !tbaa !3
  %conv1.i.5.1.4 = sext i16 %1314 to i32
  %mul.i.5.1.4 = mul nsw i32 %conv1.i.5.1.4, -1293
  %call.i.5.1.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1.4) #2
  %arrayidx11.5.1.4 = getelementptr inbounds i16, i16* %r, i64 33
  %1315 = load i16, i16* %arrayidx11.5.1.4, align 2, !tbaa !3
  %sub.5.1.4 = sub i16 %1315, %call.i.5.1.4
  store i16 %sub.5.1.4, i16* %arrayidx9.5.1.4, align 2, !tbaa !3
  %add21.5.1.4 = add i16 %1315, %call.i.5.1.4
  store i16 %add21.5.1.4, i16* %arrayidx11.5.1.4, align 2, !tbaa !3
  %arrayidx9.5.2.4 = getelementptr inbounds i16, i16* %r, i64 38
  %1316 = load i16, i16* %arrayidx9.5.2.4, align 2, !tbaa !3
  %conv1.i.5.2.4 = sext i16 %1316 to i32
  %mul.i.5.2.4 = mul nsw i32 %conv1.i.5.2.4, -1293
  %call.i.5.2.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2.4) #2
  %arrayidx11.5.2.4 = getelementptr inbounds i16, i16* %r, i64 34
  %1317 = load i16, i16* %arrayidx11.5.2.4, align 2, !tbaa !3
  %sub.5.2.4 = sub i16 %1317, %call.i.5.2.4
  store i16 %sub.5.2.4, i16* %arrayidx9.5.2.4, align 2, !tbaa !3
  %add21.5.2.4 = add i16 %1317, %call.i.5.2.4
  store i16 %add21.5.2.4, i16* %arrayidx11.5.2.4, align 2, !tbaa !3
  %arrayidx9.5.3.4 = getelementptr inbounds i16, i16* %r, i64 39
  %1318 = load i16, i16* %arrayidx9.5.3.4, align 2, !tbaa !3
  %conv1.i.5.3.4 = sext i16 %1318 to i32
  %mul.i.5.3.4 = mul nsw i32 %conv1.i.5.3.4, -1293
  %call.i.5.3.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3.4) #2
  %arrayidx11.5.3.4 = getelementptr inbounds i16, i16* %r, i64 35
  %1319 = load i16, i16* %arrayidx11.5.3.4, align 2, !tbaa !3
  %sub.5.3.4 = sub i16 %1319, %call.i.5.3.4
  store i16 %sub.5.3.4, i16* %arrayidx9.5.3.4, align 2, !tbaa !3
  %add21.5.3.4 = add i16 %1319, %call.i.5.3.4
  store i16 %add21.5.3.4, i16* %arrayidx11.5.3.4, align 2, !tbaa !3
  %arrayidx9.5.5 = getelementptr inbounds i16, i16* %r, i64 44
  %1320 = load i16, i16* %arrayidx9.5.5, align 2, !tbaa !3
  %conv1.i.5.5 = sext i16 %1320 to i32
  %mul.i.5.5 = mul nsw i32 %conv1.i.5.5, 1491
  %call.i.5.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.5) #2
  %arrayidx11.5.5 = getelementptr inbounds i16, i16* %r, i64 40
  %1321 = load i16, i16* %arrayidx11.5.5, align 2, !tbaa !3
  %sub.5.5 = sub i16 %1321, %call.i.5.5
  store i16 %sub.5.5, i16* %arrayidx9.5.5, align 2, !tbaa !3
  %add21.5.5 = add i16 %1321, %call.i.5.5
  store i16 %add21.5.5, i16* %arrayidx11.5.5, align 2, !tbaa !3
  %arrayidx9.5.1.5 = getelementptr inbounds i16, i16* %r, i64 45
  %1322 = load i16, i16* %arrayidx9.5.1.5, align 2, !tbaa !3
  %conv1.i.5.1.5 = sext i16 %1322 to i32
  %mul.i.5.1.5 = mul nsw i32 %conv1.i.5.1.5, 1491
  %call.i.5.1.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1.5) #2
  %arrayidx11.5.1.5 = getelementptr inbounds i16, i16* %r, i64 41
  %1323 = load i16, i16* %arrayidx11.5.1.5, align 2, !tbaa !3
  %sub.5.1.5 = sub i16 %1323, %call.i.5.1.5
  store i16 %sub.5.1.5, i16* %arrayidx9.5.1.5, align 2, !tbaa !3
  %add21.5.1.5 = add i16 %1323, %call.i.5.1.5
  store i16 %add21.5.1.5, i16* %arrayidx11.5.1.5, align 2, !tbaa !3
  %arrayidx9.5.2.5 = getelementptr inbounds i16, i16* %r, i64 46
  %1324 = load i16, i16* %arrayidx9.5.2.5, align 2, !tbaa !3
  %conv1.i.5.2.5 = sext i16 %1324 to i32
  %mul.i.5.2.5 = mul nsw i32 %conv1.i.5.2.5, 1491
  %call.i.5.2.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2.5) #2
  %arrayidx11.5.2.5 = getelementptr inbounds i16, i16* %r, i64 42
  %1325 = load i16, i16* %arrayidx11.5.2.5, align 2, !tbaa !3
  %sub.5.2.5 = sub i16 %1325, %call.i.5.2.5
  store i16 %sub.5.2.5, i16* %arrayidx9.5.2.5, align 2, !tbaa !3
  %add21.5.2.5 = add i16 %1325, %call.i.5.2.5
  store i16 %add21.5.2.5, i16* %arrayidx11.5.2.5, align 2, !tbaa !3
  %arrayidx9.5.3.5 = getelementptr inbounds i16, i16* %r, i64 47
  %1326 = load i16, i16* %arrayidx9.5.3.5, align 2, !tbaa !3
  %conv1.i.5.3.5 = sext i16 %1326 to i32
  %mul.i.5.3.5 = mul nsw i32 %conv1.i.5.3.5, 1491
  %call.i.5.3.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3.5) #2
  %arrayidx11.5.3.5 = getelementptr inbounds i16, i16* %r, i64 43
  %1327 = load i16, i16* %arrayidx11.5.3.5, align 2, !tbaa !3
  %sub.5.3.5 = sub i16 %1327, %call.i.5.3.5
  store i16 %sub.5.3.5, i16* %arrayidx9.5.3.5, align 2, !tbaa !3
  %add21.5.3.5 = add i16 %1327, %call.i.5.3.5
  store i16 %add21.5.3.5, i16* %arrayidx11.5.3.5, align 2, !tbaa !3
  %arrayidx9.5.6 = getelementptr inbounds i16, i16* %r, i64 52
  %1328 = load i16, i16* %arrayidx9.5.6, align 2, !tbaa !3
  %conv1.i.5.6 = sext i16 %1328 to i32
  %mul.i.5.6 = mul nsw i32 %conv1.i.5.6, -282
  %call.i.5.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.6) #2
  %arrayidx11.5.6 = getelementptr inbounds i16, i16* %r, i64 48
  %1329 = load i16, i16* %arrayidx11.5.6, align 2, !tbaa !3
  %sub.5.6 = sub i16 %1329, %call.i.5.6
  store i16 %sub.5.6, i16* %arrayidx9.5.6, align 2, !tbaa !3
  %add21.5.6 = add i16 %1329, %call.i.5.6
  store i16 %add21.5.6, i16* %arrayidx11.5.6, align 2, !tbaa !3
  %arrayidx9.5.1.6 = getelementptr inbounds i16, i16* %r, i64 53
  %1330 = load i16, i16* %arrayidx9.5.1.6, align 2, !tbaa !3
  %conv1.i.5.1.6 = sext i16 %1330 to i32
  %mul.i.5.1.6 = mul nsw i32 %conv1.i.5.1.6, -282
  %call.i.5.1.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1.6) #2
  %arrayidx11.5.1.6 = getelementptr inbounds i16, i16* %r, i64 49
  %1331 = load i16, i16* %arrayidx11.5.1.6, align 2, !tbaa !3
  %sub.5.1.6 = sub i16 %1331, %call.i.5.1.6
  store i16 %sub.5.1.6, i16* %arrayidx9.5.1.6, align 2, !tbaa !3
  %add21.5.1.6 = add i16 %1331, %call.i.5.1.6
  store i16 %add21.5.1.6, i16* %arrayidx11.5.1.6, align 2, !tbaa !3
  %arrayidx9.5.2.6 = getelementptr inbounds i16, i16* %r, i64 54
  %1332 = load i16, i16* %arrayidx9.5.2.6, align 2, !tbaa !3
  %conv1.i.5.2.6 = sext i16 %1332 to i32
  %mul.i.5.2.6 = mul nsw i32 %conv1.i.5.2.6, -282
  %call.i.5.2.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2.6) #2
  %arrayidx11.5.2.6 = getelementptr inbounds i16, i16* %r, i64 50
  %1333 = load i16, i16* %arrayidx11.5.2.6, align 2, !tbaa !3
  %sub.5.2.6 = sub i16 %1333, %call.i.5.2.6
  store i16 %sub.5.2.6, i16* %arrayidx9.5.2.6, align 2, !tbaa !3
  %add21.5.2.6 = add i16 %1333, %call.i.5.2.6
  store i16 %add21.5.2.6, i16* %arrayidx11.5.2.6, align 2, !tbaa !3
  %arrayidx9.5.3.6 = getelementptr inbounds i16, i16* %r, i64 55
  %1334 = load i16, i16* %arrayidx9.5.3.6, align 2, !tbaa !3
  %conv1.i.5.3.6 = sext i16 %1334 to i32
  %mul.i.5.3.6 = mul nsw i32 %conv1.i.5.3.6, -282
  %call.i.5.3.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3.6) #2
  %arrayidx11.5.3.6 = getelementptr inbounds i16, i16* %r, i64 51
  %1335 = load i16, i16* %arrayidx11.5.3.6, align 2, !tbaa !3
  %sub.5.3.6 = sub i16 %1335, %call.i.5.3.6
  store i16 %sub.5.3.6, i16* %arrayidx9.5.3.6, align 2, !tbaa !3
  %add21.5.3.6 = add i16 %1335, %call.i.5.3.6
  store i16 %add21.5.3.6, i16* %arrayidx11.5.3.6, align 2, !tbaa !3
  %arrayidx9.5.7 = getelementptr inbounds i16, i16* %r, i64 60
  %1336 = load i16, i16* %arrayidx9.5.7, align 2, !tbaa !3
  %conv1.i.5.7 = sext i16 %1336 to i32
  %mul.i.5.7 = mul nsw i32 %conv1.i.5.7, -1544
  %call.i.5.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.7) #2
  %arrayidx11.5.7 = getelementptr inbounds i16, i16* %r, i64 56
  %1337 = load i16, i16* %arrayidx11.5.7, align 2, !tbaa !3
  %sub.5.7 = sub i16 %1337, %call.i.5.7
  store i16 %sub.5.7, i16* %arrayidx9.5.7, align 2, !tbaa !3
  %add21.5.7 = add i16 %1337, %call.i.5.7
  store i16 %add21.5.7, i16* %arrayidx11.5.7, align 2, !tbaa !3
  %arrayidx9.5.1.7 = getelementptr inbounds i16, i16* %r, i64 61
  %1338 = load i16, i16* %arrayidx9.5.1.7, align 2, !tbaa !3
  %conv1.i.5.1.7 = sext i16 %1338 to i32
  %mul.i.5.1.7 = mul nsw i32 %conv1.i.5.1.7, -1544
  %call.i.5.1.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1.7) #2
  %arrayidx11.5.1.7 = getelementptr inbounds i16, i16* %r, i64 57
  %1339 = load i16, i16* %arrayidx11.5.1.7, align 2, !tbaa !3
  %sub.5.1.7 = sub i16 %1339, %call.i.5.1.7
  store i16 %sub.5.1.7, i16* %arrayidx9.5.1.7, align 2, !tbaa !3
  %add21.5.1.7 = add i16 %1339, %call.i.5.1.7
  store i16 %add21.5.1.7, i16* %arrayidx11.5.1.7, align 2, !tbaa !3
  %arrayidx9.5.2.7 = getelementptr inbounds i16, i16* %r, i64 62
  %1340 = load i16, i16* %arrayidx9.5.2.7, align 2, !tbaa !3
  %conv1.i.5.2.7 = sext i16 %1340 to i32
  %mul.i.5.2.7 = mul nsw i32 %conv1.i.5.2.7, -1544
  %call.i.5.2.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2.7) #2
  %arrayidx11.5.2.7 = getelementptr inbounds i16, i16* %r, i64 58
  %1341 = load i16, i16* %arrayidx11.5.2.7, align 2, !tbaa !3
  %sub.5.2.7 = sub i16 %1341, %call.i.5.2.7
  store i16 %sub.5.2.7, i16* %arrayidx9.5.2.7, align 2, !tbaa !3
  %add21.5.2.7 = add i16 %1341, %call.i.5.2.7
  store i16 %add21.5.2.7, i16* %arrayidx11.5.2.7, align 2, !tbaa !3
  %arrayidx9.5.3.7 = getelementptr inbounds i16, i16* %r, i64 63
  %1342 = load i16, i16* %arrayidx9.5.3.7, align 2, !tbaa !3
  %conv1.i.5.3.7 = sext i16 %1342 to i32
  %mul.i.5.3.7 = mul nsw i32 %conv1.i.5.3.7, -1544
  %call.i.5.3.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3.7) #2
  %arrayidx11.5.3.7 = getelementptr inbounds i16, i16* %r, i64 59
  %1343 = load i16, i16* %arrayidx11.5.3.7, align 2, !tbaa !3
  %sub.5.3.7 = sub i16 %1343, %call.i.5.3.7
  store i16 %sub.5.3.7, i16* %arrayidx9.5.3.7, align 2, !tbaa !3
  %add21.5.3.7 = add i16 %1343, %call.i.5.3.7
  store i16 %add21.5.3.7, i16* %arrayidx11.5.3.7, align 2, !tbaa !3
  %arrayidx9.5.8 = getelementptr inbounds i16, i16* %r, i64 68
  %1344 = load i16, i16* %arrayidx9.5.8, align 2, !tbaa !3
  %conv1.i.5.8 = sext i16 %1344 to i32
  %mul.i.5.8 = mul nsw i32 %conv1.i.5.8, 516
  %call.i.5.8 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.8) #2
  %arrayidx11.5.8 = getelementptr inbounds i16, i16* %r, i64 64
  %1345 = load i16, i16* %arrayidx11.5.8, align 2, !tbaa !3
  %sub.5.8 = sub i16 %1345, %call.i.5.8
  store i16 %sub.5.8, i16* %arrayidx9.5.8, align 2, !tbaa !3
  %add21.5.8 = add i16 %1345, %call.i.5.8
  store i16 %add21.5.8, i16* %arrayidx11.5.8, align 2, !tbaa !3
  %arrayidx9.5.1.8 = getelementptr inbounds i16, i16* %r, i64 69
  %1346 = load i16, i16* %arrayidx9.5.1.8, align 2, !tbaa !3
  %conv1.i.5.1.8 = sext i16 %1346 to i32
  %mul.i.5.1.8 = mul nsw i32 %conv1.i.5.1.8, 516
  %call.i.5.1.8 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1.8) #2
  %arrayidx11.5.1.8 = getelementptr inbounds i16, i16* %r, i64 65
  %1347 = load i16, i16* %arrayidx11.5.1.8, align 2, !tbaa !3
  %sub.5.1.8 = sub i16 %1347, %call.i.5.1.8
  store i16 %sub.5.1.8, i16* %arrayidx9.5.1.8, align 2, !tbaa !3
  %add21.5.1.8 = add i16 %1347, %call.i.5.1.8
  store i16 %add21.5.1.8, i16* %arrayidx11.5.1.8, align 2, !tbaa !3
  %arrayidx9.5.2.8 = getelementptr inbounds i16, i16* %r, i64 70
  %1348 = load i16, i16* %arrayidx9.5.2.8, align 2, !tbaa !3
  %conv1.i.5.2.8 = sext i16 %1348 to i32
  %mul.i.5.2.8 = mul nsw i32 %conv1.i.5.2.8, 516
  %call.i.5.2.8 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2.8) #2
  %arrayidx11.5.2.8 = getelementptr inbounds i16, i16* %r, i64 66
  %1349 = load i16, i16* %arrayidx11.5.2.8, align 2, !tbaa !3
  %sub.5.2.8 = sub i16 %1349, %call.i.5.2.8
  store i16 %sub.5.2.8, i16* %arrayidx9.5.2.8, align 2, !tbaa !3
  %add21.5.2.8 = add i16 %1349, %call.i.5.2.8
  store i16 %add21.5.2.8, i16* %arrayidx11.5.2.8, align 2, !tbaa !3
  %arrayidx9.5.3.8 = getelementptr inbounds i16, i16* %r, i64 71
  %1350 = load i16, i16* %arrayidx9.5.3.8, align 2, !tbaa !3
  %conv1.i.5.3.8 = sext i16 %1350 to i32
  %mul.i.5.3.8 = mul nsw i32 %conv1.i.5.3.8, 516
  %call.i.5.3.8 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3.8) #2
  %arrayidx11.5.3.8 = getelementptr inbounds i16, i16* %r, i64 67
  %1351 = load i16, i16* %arrayidx11.5.3.8, align 2, !tbaa !3
  %sub.5.3.8 = sub i16 %1351, %call.i.5.3.8
  store i16 %sub.5.3.8, i16* %arrayidx9.5.3.8, align 2, !tbaa !3
  %add21.5.3.8 = add i16 %1351, %call.i.5.3.8
  store i16 %add21.5.3.8, i16* %arrayidx11.5.3.8, align 2, !tbaa !3
  %arrayidx9.5.9 = getelementptr inbounds i16, i16* %r, i64 76
  %1352 = load i16, i16* %arrayidx9.5.9, align 2, !tbaa !3
  %conv1.i.5.9 = sext i16 %1352 to i32
  %mul.i.5.9 = mul nsw i32 %conv1.i.5.9, -8
  %call.i.5.9 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.9) #2
  %arrayidx11.5.9 = getelementptr inbounds i16, i16* %r, i64 72
  %1353 = load i16, i16* %arrayidx11.5.9, align 2, !tbaa !3
  %sub.5.9 = sub i16 %1353, %call.i.5.9
  store i16 %sub.5.9, i16* %arrayidx9.5.9, align 2, !tbaa !3
  %add21.5.9 = add i16 %1353, %call.i.5.9
  store i16 %add21.5.9, i16* %arrayidx11.5.9, align 2, !tbaa !3
  %arrayidx9.5.1.9 = getelementptr inbounds i16, i16* %r, i64 77
  %1354 = load i16, i16* %arrayidx9.5.1.9, align 2, !tbaa !3
  %conv1.i.5.1.9 = sext i16 %1354 to i32
  %mul.i.5.1.9 = mul nsw i32 %conv1.i.5.1.9, -8
  %call.i.5.1.9 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1.9) #2
  %arrayidx11.5.1.9 = getelementptr inbounds i16, i16* %r, i64 73
  %1355 = load i16, i16* %arrayidx11.5.1.9, align 2, !tbaa !3
  %sub.5.1.9 = sub i16 %1355, %call.i.5.1.9
  store i16 %sub.5.1.9, i16* %arrayidx9.5.1.9, align 2, !tbaa !3
  %add21.5.1.9 = add i16 %1355, %call.i.5.1.9
  store i16 %add21.5.1.9, i16* %arrayidx11.5.1.9, align 2, !tbaa !3
  %arrayidx9.5.2.9 = getelementptr inbounds i16, i16* %r, i64 78
  %1356 = load i16, i16* %arrayidx9.5.2.9, align 2, !tbaa !3
  %conv1.i.5.2.9 = sext i16 %1356 to i32
  %mul.i.5.2.9 = mul nsw i32 %conv1.i.5.2.9, -8
  %call.i.5.2.9 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2.9) #2
  %arrayidx11.5.2.9 = getelementptr inbounds i16, i16* %r, i64 74
  %1357 = load i16, i16* %arrayidx11.5.2.9, align 2, !tbaa !3
  %sub.5.2.9 = sub i16 %1357, %call.i.5.2.9
  store i16 %sub.5.2.9, i16* %arrayidx9.5.2.9, align 2, !tbaa !3
  %add21.5.2.9 = add i16 %1357, %call.i.5.2.9
  store i16 %add21.5.2.9, i16* %arrayidx11.5.2.9, align 2, !tbaa !3
  %arrayidx9.5.3.9 = getelementptr inbounds i16, i16* %r, i64 79
  %1358 = load i16, i16* %arrayidx9.5.3.9, align 2, !tbaa !3
  %conv1.i.5.3.9 = sext i16 %1358 to i32
  %mul.i.5.3.9 = mul nsw i32 %conv1.i.5.3.9, -8
  %call.i.5.3.9 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3.9) #2
  %arrayidx11.5.3.9 = getelementptr inbounds i16, i16* %r, i64 75
  %1359 = load i16, i16* %arrayidx11.5.3.9, align 2, !tbaa !3
  %sub.5.3.9 = sub i16 %1359, %call.i.5.3.9
  store i16 %sub.5.3.9, i16* %arrayidx9.5.3.9, align 2, !tbaa !3
  %add21.5.3.9 = add i16 %1359, %call.i.5.3.9
  store i16 %add21.5.3.9, i16* %arrayidx11.5.3.9, align 2, !tbaa !3
  %arrayidx9.5.10 = getelementptr inbounds i16, i16* %r, i64 84
  %1360 = load i16, i16* %arrayidx9.5.10, align 2, !tbaa !3
  %conv1.i.5.10 = sext i16 %1360 to i32
  %mul.i.5.10 = mul nsw i32 %conv1.i.5.10, -320
  %call.i.5.10 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.10) #2
  %arrayidx11.5.10 = getelementptr inbounds i16, i16* %r, i64 80
  %1361 = load i16, i16* %arrayidx11.5.10, align 2, !tbaa !3
  %sub.5.10 = sub i16 %1361, %call.i.5.10
  store i16 %sub.5.10, i16* %arrayidx9.5.10, align 2, !tbaa !3
  %add21.5.10 = add i16 %1361, %call.i.5.10
  store i16 %add21.5.10, i16* %arrayidx11.5.10, align 2, !tbaa !3
  %arrayidx9.5.1.10 = getelementptr inbounds i16, i16* %r, i64 85
  %1362 = load i16, i16* %arrayidx9.5.1.10, align 2, !tbaa !3
  %conv1.i.5.1.10 = sext i16 %1362 to i32
  %mul.i.5.1.10 = mul nsw i32 %conv1.i.5.1.10, -320
  %call.i.5.1.10 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1.10) #2
  %arrayidx11.5.1.10 = getelementptr inbounds i16, i16* %r, i64 81
  %1363 = load i16, i16* %arrayidx11.5.1.10, align 2, !tbaa !3
  %sub.5.1.10 = sub i16 %1363, %call.i.5.1.10
  store i16 %sub.5.1.10, i16* %arrayidx9.5.1.10, align 2, !tbaa !3
  %add21.5.1.10 = add i16 %1363, %call.i.5.1.10
  store i16 %add21.5.1.10, i16* %arrayidx11.5.1.10, align 2, !tbaa !3
  %arrayidx9.5.2.10 = getelementptr inbounds i16, i16* %r, i64 86
  %1364 = load i16, i16* %arrayidx9.5.2.10, align 2, !tbaa !3
  %conv1.i.5.2.10 = sext i16 %1364 to i32
  %mul.i.5.2.10 = mul nsw i32 %conv1.i.5.2.10, -320
  %call.i.5.2.10 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2.10) #2
  %arrayidx11.5.2.10 = getelementptr inbounds i16, i16* %r, i64 82
  %1365 = load i16, i16* %arrayidx11.5.2.10, align 2, !tbaa !3
  %sub.5.2.10 = sub i16 %1365, %call.i.5.2.10
  store i16 %sub.5.2.10, i16* %arrayidx9.5.2.10, align 2, !tbaa !3
  %add21.5.2.10 = add i16 %1365, %call.i.5.2.10
  store i16 %add21.5.2.10, i16* %arrayidx11.5.2.10, align 2, !tbaa !3
  %arrayidx9.5.3.10 = getelementptr inbounds i16, i16* %r, i64 87
  %1366 = load i16, i16* %arrayidx9.5.3.10, align 2, !tbaa !3
  %conv1.i.5.3.10 = sext i16 %1366 to i32
  %mul.i.5.3.10 = mul nsw i32 %conv1.i.5.3.10, -320
  %call.i.5.3.10 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3.10) #2
  %arrayidx11.5.3.10 = getelementptr inbounds i16, i16* %r, i64 83
  %1367 = load i16, i16* %arrayidx11.5.3.10, align 2, !tbaa !3
  %sub.5.3.10 = sub i16 %1367, %call.i.5.3.10
  store i16 %sub.5.3.10, i16* %arrayidx9.5.3.10, align 2, !tbaa !3
  %add21.5.3.10 = add i16 %1367, %call.i.5.3.10
  store i16 %add21.5.3.10, i16* %arrayidx11.5.3.10, align 2, !tbaa !3
  %arrayidx9.5.11 = getelementptr inbounds i16, i16* %r, i64 92
  %1368 = load i16, i16* %arrayidx9.5.11, align 2, !tbaa !3
  %conv1.i.5.11 = sext i16 %1368 to i32
  %mul.i.5.11 = mul nsw i32 %conv1.i.5.11, -666
  %call.i.5.11 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.11) #2
  %arrayidx11.5.11 = getelementptr inbounds i16, i16* %r, i64 88
  %1369 = load i16, i16* %arrayidx11.5.11, align 2, !tbaa !3
  %sub.5.11 = sub i16 %1369, %call.i.5.11
  store i16 %sub.5.11, i16* %arrayidx9.5.11, align 2, !tbaa !3
  %add21.5.11 = add i16 %1369, %call.i.5.11
  store i16 %add21.5.11, i16* %arrayidx11.5.11, align 2, !tbaa !3
  %arrayidx9.5.1.11 = getelementptr inbounds i16, i16* %r, i64 93
  %1370 = load i16, i16* %arrayidx9.5.1.11, align 2, !tbaa !3
  %conv1.i.5.1.11 = sext i16 %1370 to i32
  %mul.i.5.1.11 = mul nsw i32 %conv1.i.5.1.11, -666
  %call.i.5.1.11 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1.11) #2
  %arrayidx11.5.1.11 = getelementptr inbounds i16, i16* %r, i64 89
  %1371 = load i16, i16* %arrayidx11.5.1.11, align 2, !tbaa !3
  %sub.5.1.11 = sub i16 %1371, %call.i.5.1.11
  store i16 %sub.5.1.11, i16* %arrayidx9.5.1.11, align 2, !tbaa !3
  %add21.5.1.11 = add i16 %1371, %call.i.5.1.11
  store i16 %add21.5.1.11, i16* %arrayidx11.5.1.11, align 2, !tbaa !3
  %arrayidx9.5.2.11 = getelementptr inbounds i16, i16* %r, i64 94
  %1372 = load i16, i16* %arrayidx9.5.2.11, align 2, !tbaa !3
  %conv1.i.5.2.11 = sext i16 %1372 to i32
  %mul.i.5.2.11 = mul nsw i32 %conv1.i.5.2.11, -666
  %call.i.5.2.11 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2.11) #2
  %arrayidx11.5.2.11 = getelementptr inbounds i16, i16* %r, i64 90
  %1373 = load i16, i16* %arrayidx11.5.2.11, align 2, !tbaa !3
  %sub.5.2.11 = sub i16 %1373, %call.i.5.2.11
  store i16 %sub.5.2.11, i16* %arrayidx9.5.2.11, align 2, !tbaa !3
  %add21.5.2.11 = add i16 %1373, %call.i.5.2.11
  store i16 %add21.5.2.11, i16* %arrayidx11.5.2.11, align 2, !tbaa !3
  %arrayidx9.5.3.11 = getelementptr inbounds i16, i16* %r, i64 95
  %1374 = load i16, i16* %arrayidx9.5.3.11, align 2, !tbaa !3
  %conv1.i.5.3.11 = sext i16 %1374 to i32
  %mul.i.5.3.11 = mul nsw i32 %conv1.i.5.3.11, -666
  %call.i.5.3.11 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3.11) #2
  %arrayidx11.5.3.11 = getelementptr inbounds i16, i16* %r, i64 91
  %1375 = load i16, i16* %arrayidx11.5.3.11, align 2, !tbaa !3
  %sub.5.3.11 = sub i16 %1375, %call.i.5.3.11
  store i16 %sub.5.3.11, i16* %arrayidx9.5.3.11, align 2, !tbaa !3
  %add21.5.3.11 = add i16 %1375, %call.i.5.3.11
  store i16 %add21.5.3.11, i16* %arrayidx11.5.3.11, align 2, !tbaa !3
  %arrayidx9.5.12 = getelementptr inbounds i16, i16* %r, i64 100
  %1376 = load i16, i16* %arrayidx9.5.12, align 2, !tbaa !3
  %conv1.i.5.12 = sext i16 %1376 to i32
  %mul.i.5.12 = mul nsw i32 %conv1.i.5.12, -1618
  %call.i.5.12 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.12) #2
  %arrayidx11.5.12 = getelementptr inbounds i16, i16* %r, i64 96
  %1377 = load i16, i16* %arrayidx11.5.12, align 2, !tbaa !3
  %sub.5.12 = sub i16 %1377, %call.i.5.12
  store i16 %sub.5.12, i16* %arrayidx9.5.12, align 2, !tbaa !3
  %add21.5.12 = add i16 %1377, %call.i.5.12
  store i16 %add21.5.12, i16* %arrayidx11.5.12, align 2, !tbaa !3
  %arrayidx9.5.1.12 = getelementptr inbounds i16, i16* %r, i64 101
  %1378 = load i16, i16* %arrayidx9.5.1.12, align 2, !tbaa !3
  %conv1.i.5.1.12 = sext i16 %1378 to i32
  %mul.i.5.1.12 = mul nsw i32 %conv1.i.5.1.12, -1618
  %call.i.5.1.12 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1.12) #2
  %arrayidx11.5.1.12 = getelementptr inbounds i16, i16* %r, i64 97
  %1379 = load i16, i16* %arrayidx11.5.1.12, align 2, !tbaa !3
  %sub.5.1.12 = sub i16 %1379, %call.i.5.1.12
  store i16 %sub.5.1.12, i16* %arrayidx9.5.1.12, align 2, !tbaa !3
  %add21.5.1.12 = add i16 %1379, %call.i.5.1.12
  store i16 %add21.5.1.12, i16* %arrayidx11.5.1.12, align 2, !tbaa !3
  %arrayidx9.5.2.12 = getelementptr inbounds i16, i16* %r, i64 102
  %1380 = load i16, i16* %arrayidx9.5.2.12, align 2, !tbaa !3
  %conv1.i.5.2.12 = sext i16 %1380 to i32
  %mul.i.5.2.12 = mul nsw i32 %conv1.i.5.2.12, -1618
  %call.i.5.2.12 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2.12) #2
  %arrayidx11.5.2.12 = getelementptr inbounds i16, i16* %r, i64 98
  %1381 = load i16, i16* %arrayidx11.5.2.12, align 2, !tbaa !3
  %sub.5.2.12 = sub i16 %1381, %call.i.5.2.12
  store i16 %sub.5.2.12, i16* %arrayidx9.5.2.12, align 2, !tbaa !3
  %add21.5.2.12 = add i16 %1381, %call.i.5.2.12
  store i16 %add21.5.2.12, i16* %arrayidx11.5.2.12, align 2, !tbaa !3
  %arrayidx9.5.3.12 = getelementptr inbounds i16, i16* %r, i64 103
  %1382 = load i16, i16* %arrayidx9.5.3.12, align 2, !tbaa !3
  %conv1.i.5.3.12 = sext i16 %1382 to i32
  %mul.i.5.3.12 = mul nsw i32 %conv1.i.5.3.12, -1618
  %call.i.5.3.12 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3.12) #2
  %arrayidx11.5.3.12 = getelementptr inbounds i16, i16* %r, i64 99
  %1383 = load i16, i16* %arrayidx11.5.3.12, align 2, !tbaa !3
  %sub.5.3.12 = sub i16 %1383, %call.i.5.3.12
  store i16 %sub.5.3.12, i16* %arrayidx9.5.3.12, align 2, !tbaa !3
  %add21.5.3.12 = add i16 %1383, %call.i.5.3.12
  store i16 %add21.5.3.12, i16* %arrayidx11.5.3.12, align 2, !tbaa !3
  %arrayidx9.5.13 = getelementptr inbounds i16, i16* %r, i64 108
  %1384 = load i16, i16* %arrayidx9.5.13, align 2, !tbaa !3
  %conv1.i.5.13 = sext i16 %1384 to i32
  %mul.i.5.13 = mul nsw i32 %conv1.i.5.13, -1162
  %call.i.5.13 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.13) #2
  %arrayidx11.5.13 = getelementptr inbounds i16, i16* %r, i64 104
  %1385 = load i16, i16* %arrayidx11.5.13, align 2, !tbaa !3
  %sub.5.13 = sub i16 %1385, %call.i.5.13
  store i16 %sub.5.13, i16* %arrayidx9.5.13, align 2, !tbaa !3
  %add21.5.13 = add i16 %1385, %call.i.5.13
  store i16 %add21.5.13, i16* %arrayidx11.5.13, align 2, !tbaa !3
  %arrayidx9.5.1.13 = getelementptr inbounds i16, i16* %r, i64 109
  %1386 = load i16, i16* %arrayidx9.5.1.13, align 2, !tbaa !3
  %conv1.i.5.1.13 = sext i16 %1386 to i32
  %mul.i.5.1.13 = mul nsw i32 %conv1.i.5.1.13, -1162
  %call.i.5.1.13 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1.13) #2
  %arrayidx11.5.1.13 = getelementptr inbounds i16, i16* %r, i64 105
  %1387 = load i16, i16* %arrayidx11.5.1.13, align 2, !tbaa !3
  %sub.5.1.13 = sub i16 %1387, %call.i.5.1.13
  store i16 %sub.5.1.13, i16* %arrayidx9.5.1.13, align 2, !tbaa !3
  %add21.5.1.13 = add i16 %1387, %call.i.5.1.13
  store i16 %add21.5.1.13, i16* %arrayidx11.5.1.13, align 2, !tbaa !3
  %arrayidx9.5.2.13 = getelementptr inbounds i16, i16* %r, i64 110
  %1388 = load i16, i16* %arrayidx9.5.2.13, align 2, !tbaa !3
  %conv1.i.5.2.13 = sext i16 %1388 to i32
  %mul.i.5.2.13 = mul nsw i32 %conv1.i.5.2.13, -1162
  %call.i.5.2.13 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2.13) #2
  %arrayidx11.5.2.13 = getelementptr inbounds i16, i16* %r, i64 106
  %1389 = load i16, i16* %arrayidx11.5.2.13, align 2, !tbaa !3
  %sub.5.2.13 = sub i16 %1389, %call.i.5.2.13
  store i16 %sub.5.2.13, i16* %arrayidx9.5.2.13, align 2, !tbaa !3
  %add21.5.2.13 = add i16 %1389, %call.i.5.2.13
  store i16 %add21.5.2.13, i16* %arrayidx11.5.2.13, align 2, !tbaa !3
  %arrayidx9.5.3.13 = getelementptr inbounds i16, i16* %r, i64 111
  %1390 = load i16, i16* %arrayidx9.5.3.13, align 2, !tbaa !3
  %conv1.i.5.3.13 = sext i16 %1390 to i32
  %mul.i.5.3.13 = mul nsw i32 %conv1.i.5.3.13, -1162
  %call.i.5.3.13 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3.13) #2
  %arrayidx11.5.3.13 = getelementptr inbounds i16, i16* %r, i64 107
  %1391 = load i16, i16* %arrayidx11.5.3.13, align 2, !tbaa !3
  %sub.5.3.13 = sub i16 %1391, %call.i.5.3.13
  store i16 %sub.5.3.13, i16* %arrayidx9.5.3.13, align 2, !tbaa !3
  %add21.5.3.13 = add i16 %1391, %call.i.5.3.13
  store i16 %add21.5.3.13, i16* %arrayidx11.5.3.13, align 2, !tbaa !3
  %arrayidx9.5.14 = getelementptr inbounds i16, i16* %r, i64 116
  %1392 = load i16, i16* %arrayidx9.5.14, align 2, !tbaa !3
  %conv1.i.5.14 = sext i16 %1392 to i32
  %mul.i.5.14 = mul nsw i32 %conv1.i.5.14, 126
  %call.i.5.14 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.14) #2
  %arrayidx11.5.14 = getelementptr inbounds i16, i16* %r, i64 112
  %1393 = load i16, i16* %arrayidx11.5.14, align 2, !tbaa !3
  %sub.5.14 = sub i16 %1393, %call.i.5.14
  store i16 %sub.5.14, i16* %arrayidx9.5.14, align 2, !tbaa !3
  %add21.5.14 = add i16 %1393, %call.i.5.14
  store i16 %add21.5.14, i16* %arrayidx11.5.14, align 2, !tbaa !3
  %arrayidx9.5.1.14 = getelementptr inbounds i16, i16* %r, i64 117
  %1394 = load i16, i16* %arrayidx9.5.1.14, align 2, !tbaa !3
  %conv1.i.5.1.14 = sext i16 %1394 to i32
  %mul.i.5.1.14 = mul nsw i32 %conv1.i.5.1.14, 126
  %call.i.5.1.14 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1.14) #2
  %arrayidx11.5.1.14 = getelementptr inbounds i16, i16* %r, i64 113
  %1395 = load i16, i16* %arrayidx11.5.1.14, align 2, !tbaa !3
  %sub.5.1.14 = sub i16 %1395, %call.i.5.1.14
  store i16 %sub.5.1.14, i16* %arrayidx9.5.1.14, align 2, !tbaa !3
  %add21.5.1.14 = add i16 %1395, %call.i.5.1.14
  store i16 %add21.5.1.14, i16* %arrayidx11.5.1.14, align 2, !tbaa !3
  %arrayidx9.5.2.14 = getelementptr inbounds i16, i16* %r, i64 118
  %1396 = load i16, i16* %arrayidx9.5.2.14, align 2, !tbaa !3
  %conv1.i.5.2.14 = sext i16 %1396 to i32
  %mul.i.5.2.14 = mul nsw i32 %conv1.i.5.2.14, 126
  %call.i.5.2.14 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2.14) #2
  %arrayidx11.5.2.14 = getelementptr inbounds i16, i16* %r, i64 114
  %1397 = load i16, i16* %arrayidx11.5.2.14, align 2, !tbaa !3
  %sub.5.2.14 = sub i16 %1397, %call.i.5.2.14
  store i16 %sub.5.2.14, i16* %arrayidx9.5.2.14, align 2, !tbaa !3
  %add21.5.2.14 = add i16 %1397, %call.i.5.2.14
  store i16 %add21.5.2.14, i16* %arrayidx11.5.2.14, align 2, !tbaa !3
  %arrayidx9.5.3.14 = getelementptr inbounds i16, i16* %r, i64 119
  %1398 = load i16, i16* %arrayidx9.5.3.14, align 2, !tbaa !3
  %conv1.i.5.3.14 = sext i16 %1398 to i32
  %mul.i.5.3.14 = mul nsw i32 %conv1.i.5.3.14, 126
  %call.i.5.3.14 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3.14) #2
  %arrayidx11.5.3.14 = getelementptr inbounds i16, i16* %r, i64 115
  %1399 = load i16, i16* %arrayidx11.5.3.14, align 2, !tbaa !3
  %sub.5.3.14 = sub i16 %1399, %call.i.5.3.14
  store i16 %sub.5.3.14, i16* %arrayidx9.5.3.14, align 2, !tbaa !3
  %add21.5.3.14 = add i16 %1399, %call.i.5.3.14
  store i16 %add21.5.3.14, i16* %arrayidx11.5.3.14, align 2, !tbaa !3
  %arrayidx9.5.15 = getelementptr inbounds i16, i16* %r, i64 124
  %1400 = load i16, i16* %arrayidx9.5.15, align 2, !tbaa !3
  %conv1.i.5.15 = sext i16 %1400 to i32
  %mul.i.5.15 = mul nsw i32 %conv1.i.5.15, 1469
  %call.i.5.15 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.15) #2
  %arrayidx11.5.15 = getelementptr inbounds i16, i16* %r, i64 120
  %1401 = load i16, i16* %arrayidx11.5.15, align 2, !tbaa !3
  %sub.5.15 = sub i16 %1401, %call.i.5.15
  store i16 %sub.5.15, i16* %arrayidx9.5.15, align 2, !tbaa !3
  %add21.5.15 = add i16 %1401, %call.i.5.15
  store i16 %add21.5.15, i16* %arrayidx11.5.15, align 2, !tbaa !3
  %arrayidx9.5.1.15 = getelementptr inbounds i16, i16* %r, i64 125
  %1402 = load i16, i16* %arrayidx9.5.1.15, align 2, !tbaa !3
  %conv1.i.5.1.15 = sext i16 %1402 to i32
  %mul.i.5.1.15 = mul nsw i32 %conv1.i.5.1.15, 1469
  %call.i.5.1.15 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1.15) #2
  %arrayidx11.5.1.15 = getelementptr inbounds i16, i16* %r, i64 121
  %1403 = load i16, i16* %arrayidx11.5.1.15, align 2, !tbaa !3
  %sub.5.1.15 = sub i16 %1403, %call.i.5.1.15
  store i16 %sub.5.1.15, i16* %arrayidx9.5.1.15, align 2, !tbaa !3
  %add21.5.1.15 = add i16 %1403, %call.i.5.1.15
  store i16 %add21.5.1.15, i16* %arrayidx11.5.1.15, align 2, !tbaa !3
  %arrayidx9.5.2.15 = getelementptr inbounds i16, i16* %r, i64 126
  %1404 = load i16, i16* %arrayidx9.5.2.15, align 2, !tbaa !3
  %conv1.i.5.2.15 = sext i16 %1404 to i32
  %mul.i.5.2.15 = mul nsw i32 %conv1.i.5.2.15, 1469
  %call.i.5.2.15 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2.15) #2
  %arrayidx11.5.2.15 = getelementptr inbounds i16, i16* %r, i64 122
  %1405 = load i16, i16* %arrayidx11.5.2.15, align 2, !tbaa !3
  %sub.5.2.15 = sub i16 %1405, %call.i.5.2.15
  store i16 %sub.5.2.15, i16* %arrayidx9.5.2.15, align 2, !tbaa !3
  %add21.5.2.15 = add i16 %1405, %call.i.5.2.15
  store i16 %add21.5.2.15, i16* %arrayidx11.5.2.15, align 2, !tbaa !3
  %arrayidx9.5.3.15 = getelementptr inbounds i16, i16* %r, i64 127
  %1406 = load i16, i16* %arrayidx9.5.3.15, align 2, !tbaa !3
  %conv1.i.5.3.15 = sext i16 %1406 to i32
  %mul.i.5.3.15 = mul nsw i32 %conv1.i.5.3.15, 1469
  %call.i.5.3.15 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3.15) #2
  %arrayidx11.5.3.15 = getelementptr inbounds i16, i16* %r, i64 123
  %1407 = load i16, i16* %arrayidx11.5.3.15, align 2, !tbaa !3
  %sub.5.3.15 = sub i16 %1407, %call.i.5.3.15
  store i16 %sub.5.3.15, i16* %arrayidx9.5.3.15, align 2, !tbaa !3
  %add21.5.3.15 = add i16 %1407, %call.i.5.3.15
  store i16 %add21.5.3.15, i16* %arrayidx11.5.3.15, align 2, !tbaa !3
  %arrayidx9.5.16 = getelementptr inbounds i16, i16* %r, i64 132
  %1408 = load i16, i16* %arrayidx9.5.16, align 2, !tbaa !3
  %conv1.i.5.16 = sext i16 %1408 to i32
  %mul.i.5.16 = mul nsw i32 %conv1.i.5.16, -853
  %call.i.5.16 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.16) #2
  %arrayidx11.5.16 = getelementptr inbounds i16, i16* %r, i64 128
  %1409 = load i16, i16* %arrayidx11.5.16, align 2, !tbaa !3
  %sub.5.16 = sub i16 %1409, %call.i.5.16
  store i16 %sub.5.16, i16* %arrayidx9.5.16, align 2, !tbaa !3
  %add21.5.16 = add i16 %1409, %call.i.5.16
  store i16 %add21.5.16, i16* %arrayidx11.5.16, align 2, !tbaa !3
  %arrayidx9.5.1.16 = getelementptr inbounds i16, i16* %r, i64 133
  %1410 = load i16, i16* %arrayidx9.5.1.16, align 2, !tbaa !3
  %conv1.i.5.1.16 = sext i16 %1410 to i32
  %mul.i.5.1.16 = mul nsw i32 %conv1.i.5.1.16, -853
  %call.i.5.1.16 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1.16) #2
  %arrayidx11.5.1.16 = getelementptr inbounds i16, i16* %r, i64 129
  %1411 = load i16, i16* %arrayidx11.5.1.16, align 2, !tbaa !3
  %sub.5.1.16 = sub i16 %1411, %call.i.5.1.16
  store i16 %sub.5.1.16, i16* %arrayidx9.5.1.16, align 2, !tbaa !3
  %add21.5.1.16 = add i16 %1411, %call.i.5.1.16
  store i16 %add21.5.1.16, i16* %arrayidx11.5.1.16, align 2, !tbaa !3
  %arrayidx9.5.2.16 = getelementptr inbounds i16, i16* %r, i64 134
  %1412 = load i16, i16* %arrayidx9.5.2.16, align 2, !tbaa !3
  %conv1.i.5.2.16 = sext i16 %1412 to i32
  %mul.i.5.2.16 = mul nsw i32 %conv1.i.5.2.16, -853
  %call.i.5.2.16 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2.16) #2
  %arrayidx11.5.2.16 = getelementptr inbounds i16, i16* %r, i64 130
  %1413 = load i16, i16* %arrayidx11.5.2.16, align 2, !tbaa !3
  %sub.5.2.16 = sub i16 %1413, %call.i.5.2.16
  store i16 %sub.5.2.16, i16* %arrayidx9.5.2.16, align 2, !tbaa !3
  %add21.5.2.16 = add i16 %1413, %call.i.5.2.16
  store i16 %add21.5.2.16, i16* %arrayidx11.5.2.16, align 2, !tbaa !3
  %arrayidx9.5.3.16 = getelementptr inbounds i16, i16* %r, i64 135
  %1414 = load i16, i16* %arrayidx9.5.3.16, align 2, !tbaa !3
  %conv1.i.5.3.16 = sext i16 %1414 to i32
  %mul.i.5.3.16 = mul nsw i32 %conv1.i.5.3.16, -853
  %call.i.5.3.16 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3.16) #2
  %arrayidx11.5.3.16 = getelementptr inbounds i16, i16* %r, i64 131
  %1415 = load i16, i16* %arrayidx11.5.3.16, align 2, !tbaa !3
  %sub.5.3.16 = sub i16 %1415, %call.i.5.3.16
  store i16 %sub.5.3.16, i16* %arrayidx9.5.3.16, align 2, !tbaa !3
  %add21.5.3.16 = add i16 %1415, %call.i.5.3.16
  store i16 %add21.5.3.16, i16* %arrayidx11.5.3.16, align 2, !tbaa !3
  %arrayidx9.5.17 = getelementptr inbounds i16, i16* %r, i64 140
  %1416 = load i16, i16* %arrayidx9.5.17, align 2, !tbaa !3
  %conv1.i.5.17 = sext i16 %1416 to i32
  %mul.i.5.17 = mul nsw i32 %conv1.i.5.17, -90
  %call.i.5.17 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.17) #2
  %arrayidx11.5.17 = getelementptr inbounds i16, i16* %r, i64 136
  %1417 = load i16, i16* %arrayidx11.5.17, align 2, !tbaa !3
  %sub.5.17 = sub i16 %1417, %call.i.5.17
  store i16 %sub.5.17, i16* %arrayidx9.5.17, align 2, !tbaa !3
  %add21.5.17 = add i16 %1417, %call.i.5.17
  store i16 %add21.5.17, i16* %arrayidx11.5.17, align 2, !tbaa !3
  %arrayidx9.5.1.17 = getelementptr inbounds i16, i16* %r, i64 141
  %1418 = load i16, i16* %arrayidx9.5.1.17, align 2, !tbaa !3
  %conv1.i.5.1.17 = sext i16 %1418 to i32
  %mul.i.5.1.17 = mul nsw i32 %conv1.i.5.1.17, -90
  %call.i.5.1.17 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1.17) #2
  %arrayidx11.5.1.17 = getelementptr inbounds i16, i16* %r, i64 137
  %1419 = load i16, i16* %arrayidx11.5.1.17, align 2, !tbaa !3
  %sub.5.1.17 = sub i16 %1419, %call.i.5.1.17
  store i16 %sub.5.1.17, i16* %arrayidx9.5.1.17, align 2, !tbaa !3
  %add21.5.1.17 = add i16 %1419, %call.i.5.1.17
  store i16 %add21.5.1.17, i16* %arrayidx11.5.1.17, align 2, !tbaa !3
  %arrayidx9.5.2.17 = getelementptr inbounds i16, i16* %r, i64 142
  %1420 = load i16, i16* %arrayidx9.5.2.17, align 2, !tbaa !3
  %conv1.i.5.2.17 = sext i16 %1420 to i32
  %mul.i.5.2.17 = mul nsw i32 %conv1.i.5.2.17, -90
  %call.i.5.2.17 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2.17) #2
  %arrayidx11.5.2.17 = getelementptr inbounds i16, i16* %r, i64 138
  %1421 = load i16, i16* %arrayidx11.5.2.17, align 2, !tbaa !3
  %sub.5.2.17 = sub i16 %1421, %call.i.5.2.17
  store i16 %sub.5.2.17, i16* %arrayidx9.5.2.17, align 2, !tbaa !3
  %add21.5.2.17 = add i16 %1421, %call.i.5.2.17
  store i16 %add21.5.2.17, i16* %arrayidx11.5.2.17, align 2, !tbaa !3
  %arrayidx9.5.3.17 = getelementptr inbounds i16, i16* %r, i64 143
  %1422 = load i16, i16* %arrayidx9.5.3.17, align 2, !tbaa !3
  %conv1.i.5.3.17 = sext i16 %1422 to i32
  %mul.i.5.3.17 = mul nsw i32 %conv1.i.5.3.17, -90
  %call.i.5.3.17 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3.17) #2
  %arrayidx11.5.3.17 = getelementptr inbounds i16, i16* %r, i64 139
  %1423 = load i16, i16* %arrayidx11.5.3.17, align 2, !tbaa !3
  %sub.5.3.17 = sub i16 %1423, %call.i.5.3.17
  store i16 %sub.5.3.17, i16* %arrayidx9.5.3.17, align 2, !tbaa !3
  %add21.5.3.17 = add i16 %1423, %call.i.5.3.17
  store i16 %add21.5.3.17, i16* %arrayidx11.5.3.17, align 2, !tbaa !3
  %arrayidx9.5.18 = getelementptr inbounds i16, i16* %r, i64 148
  %1424 = load i16, i16* %arrayidx9.5.18, align 2, !tbaa !3
  %conv1.i.5.18 = sext i16 %1424 to i32
  %mul.i.5.18 = mul nsw i32 %conv1.i.5.18, -271
  %call.i.5.18 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.18) #2
  %arrayidx11.5.18 = getelementptr inbounds i16, i16* %r, i64 144
  %1425 = load i16, i16* %arrayidx11.5.18, align 2, !tbaa !3
  %sub.5.18 = sub i16 %1425, %call.i.5.18
  store i16 %sub.5.18, i16* %arrayidx9.5.18, align 2, !tbaa !3
  %add21.5.18 = add i16 %1425, %call.i.5.18
  store i16 %add21.5.18, i16* %arrayidx11.5.18, align 2, !tbaa !3
  %arrayidx9.5.1.18 = getelementptr inbounds i16, i16* %r, i64 149
  %1426 = load i16, i16* %arrayidx9.5.1.18, align 2, !tbaa !3
  %conv1.i.5.1.18 = sext i16 %1426 to i32
  %mul.i.5.1.18 = mul nsw i32 %conv1.i.5.1.18, -271
  %call.i.5.1.18 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1.18) #2
  %arrayidx11.5.1.18 = getelementptr inbounds i16, i16* %r, i64 145
  %1427 = load i16, i16* %arrayidx11.5.1.18, align 2, !tbaa !3
  %sub.5.1.18 = sub i16 %1427, %call.i.5.1.18
  store i16 %sub.5.1.18, i16* %arrayidx9.5.1.18, align 2, !tbaa !3
  %add21.5.1.18 = add i16 %1427, %call.i.5.1.18
  store i16 %add21.5.1.18, i16* %arrayidx11.5.1.18, align 2, !tbaa !3
  %arrayidx9.5.2.18 = getelementptr inbounds i16, i16* %r, i64 150
  %1428 = load i16, i16* %arrayidx9.5.2.18, align 2, !tbaa !3
  %conv1.i.5.2.18 = sext i16 %1428 to i32
  %mul.i.5.2.18 = mul nsw i32 %conv1.i.5.2.18, -271
  %call.i.5.2.18 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2.18) #2
  %arrayidx11.5.2.18 = getelementptr inbounds i16, i16* %r, i64 146
  %1429 = load i16, i16* %arrayidx11.5.2.18, align 2, !tbaa !3
  %sub.5.2.18 = sub i16 %1429, %call.i.5.2.18
  store i16 %sub.5.2.18, i16* %arrayidx9.5.2.18, align 2, !tbaa !3
  %add21.5.2.18 = add i16 %1429, %call.i.5.2.18
  store i16 %add21.5.2.18, i16* %arrayidx11.5.2.18, align 2, !tbaa !3
  %arrayidx9.5.3.18 = getelementptr inbounds i16, i16* %r, i64 151
  %1430 = load i16, i16* %arrayidx9.5.3.18, align 2, !tbaa !3
  %conv1.i.5.3.18 = sext i16 %1430 to i32
  %mul.i.5.3.18 = mul nsw i32 %conv1.i.5.3.18, -271
  %call.i.5.3.18 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3.18) #2
  %arrayidx11.5.3.18 = getelementptr inbounds i16, i16* %r, i64 147
  %1431 = load i16, i16* %arrayidx11.5.3.18, align 2, !tbaa !3
  %sub.5.3.18 = sub i16 %1431, %call.i.5.3.18
  store i16 %sub.5.3.18, i16* %arrayidx9.5.3.18, align 2, !tbaa !3
  %add21.5.3.18 = add i16 %1431, %call.i.5.3.18
  store i16 %add21.5.3.18, i16* %arrayidx11.5.3.18, align 2, !tbaa !3
  %arrayidx9.5.19 = getelementptr inbounds i16, i16* %r, i64 156
  %1432 = load i16, i16* %arrayidx9.5.19, align 2, !tbaa !3
  %conv1.i.5.19 = sext i16 %1432 to i32
  %mul.i.5.19 = mul nsw i32 %conv1.i.5.19, 830
  %call.i.5.19 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.19) #2
  %arrayidx11.5.19 = getelementptr inbounds i16, i16* %r, i64 152
  %1433 = load i16, i16* %arrayidx11.5.19, align 2, !tbaa !3
  %sub.5.19 = sub i16 %1433, %call.i.5.19
  store i16 %sub.5.19, i16* %arrayidx9.5.19, align 2, !tbaa !3
  %add21.5.19 = add i16 %1433, %call.i.5.19
  store i16 %add21.5.19, i16* %arrayidx11.5.19, align 2, !tbaa !3
  %arrayidx9.5.1.19 = getelementptr inbounds i16, i16* %r, i64 157
  %1434 = load i16, i16* %arrayidx9.5.1.19, align 2, !tbaa !3
  %conv1.i.5.1.19 = sext i16 %1434 to i32
  %mul.i.5.1.19 = mul nsw i32 %conv1.i.5.1.19, 830
  %call.i.5.1.19 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1.19) #2
  %arrayidx11.5.1.19 = getelementptr inbounds i16, i16* %r, i64 153
  %1435 = load i16, i16* %arrayidx11.5.1.19, align 2, !tbaa !3
  %sub.5.1.19 = sub i16 %1435, %call.i.5.1.19
  store i16 %sub.5.1.19, i16* %arrayidx9.5.1.19, align 2, !tbaa !3
  %add21.5.1.19 = add i16 %1435, %call.i.5.1.19
  store i16 %add21.5.1.19, i16* %arrayidx11.5.1.19, align 2, !tbaa !3
  %arrayidx9.5.2.19 = getelementptr inbounds i16, i16* %r, i64 158
  %1436 = load i16, i16* %arrayidx9.5.2.19, align 2, !tbaa !3
  %conv1.i.5.2.19 = sext i16 %1436 to i32
  %mul.i.5.2.19 = mul nsw i32 %conv1.i.5.2.19, 830
  %call.i.5.2.19 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2.19) #2
  %arrayidx11.5.2.19 = getelementptr inbounds i16, i16* %r, i64 154
  %1437 = load i16, i16* %arrayidx11.5.2.19, align 2, !tbaa !3
  %sub.5.2.19 = sub i16 %1437, %call.i.5.2.19
  store i16 %sub.5.2.19, i16* %arrayidx9.5.2.19, align 2, !tbaa !3
  %add21.5.2.19 = add i16 %1437, %call.i.5.2.19
  store i16 %add21.5.2.19, i16* %arrayidx11.5.2.19, align 2, !tbaa !3
  %arrayidx9.5.3.19 = getelementptr inbounds i16, i16* %r, i64 159
  %1438 = load i16, i16* %arrayidx9.5.3.19, align 2, !tbaa !3
  %conv1.i.5.3.19 = sext i16 %1438 to i32
  %mul.i.5.3.19 = mul nsw i32 %conv1.i.5.3.19, 830
  %call.i.5.3.19 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3.19) #2
  %arrayidx11.5.3.19 = getelementptr inbounds i16, i16* %r, i64 155
  %1439 = load i16, i16* %arrayidx11.5.3.19, align 2, !tbaa !3
  %sub.5.3.19 = sub i16 %1439, %call.i.5.3.19
  store i16 %sub.5.3.19, i16* %arrayidx9.5.3.19, align 2, !tbaa !3
  %add21.5.3.19 = add i16 %1439, %call.i.5.3.19
  store i16 %add21.5.3.19, i16* %arrayidx11.5.3.19, align 2, !tbaa !3
  %arrayidx9.5.20 = getelementptr inbounds i16, i16* %r, i64 164
  %1440 = load i16, i16* %arrayidx9.5.20, align 2, !tbaa !3
  %conv1.i.5.20 = sext i16 %1440 to i32
  %mul.i.5.20 = mul nsw i32 %conv1.i.5.20, 107
  %call.i.5.20 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.20) #2
  %arrayidx11.5.20 = getelementptr inbounds i16, i16* %r, i64 160
  %1441 = load i16, i16* %arrayidx11.5.20, align 2, !tbaa !3
  %sub.5.20 = sub i16 %1441, %call.i.5.20
  store i16 %sub.5.20, i16* %arrayidx9.5.20, align 2, !tbaa !3
  %add21.5.20 = add i16 %1441, %call.i.5.20
  store i16 %add21.5.20, i16* %arrayidx11.5.20, align 2, !tbaa !3
  %arrayidx9.5.1.20 = getelementptr inbounds i16, i16* %r, i64 165
  %1442 = load i16, i16* %arrayidx9.5.1.20, align 2, !tbaa !3
  %conv1.i.5.1.20 = sext i16 %1442 to i32
  %mul.i.5.1.20 = mul nsw i32 %conv1.i.5.1.20, 107
  %call.i.5.1.20 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1.20) #2
  %arrayidx11.5.1.20 = getelementptr inbounds i16, i16* %r, i64 161
  %1443 = load i16, i16* %arrayidx11.5.1.20, align 2, !tbaa !3
  %sub.5.1.20 = sub i16 %1443, %call.i.5.1.20
  store i16 %sub.5.1.20, i16* %arrayidx9.5.1.20, align 2, !tbaa !3
  %add21.5.1.20 = add i16 %1443, %call.i.5.1.20
  store i16 %add21.5.1.20, i16* %arrayidx11.5.1.20, align 2, !tbaa !3
  %arrayidx9.5.2.20 = getelementptr inbounds i16, i16* %r, i64 166
  %1444 = load i16, i16* %arrayidx9.5.2.20, align 2, !tbaa !3
  %conv1.i.5.2.20 = sext i16 %1444 to i32
  %mul.i.5.2.20 = mul nsw i32 %conv1.i.5.2.20, 107
  %call.i.5.2.20 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2.20) #2
  %arrayidx11.5.2.20 = getelementptr inbounds i16, i16* %r, i64 162
  %1445 = load i16, i16* %arrayidx11.5.2.20, align 2, !tbaa !3
  %sub.5.2.20 = sub i16 %1445, %call.i.5.2.20
  store i16 %sub.5.2.20, i16* %arrayidx9.5.2.20, align 2, !tbaa !3
  %add21.5.2.20 = add i16 %1445, %call.i.5.2.20
  store i16 %add21.5.2.20, i16* %arrayidx11.5.2.20, align 2, !tbaa !3
  %arrayidx9.5.3.20 = getelementptr inbounds i16, i16* %r, i64 167
  %1446 = load i16, i16* %arrayidx9.5.3.20, align 2, !tbaa !3
  %conv1.i.5.3.20 = sext i16 %1446 to i32
  %mul.i.5.3.20 = mul nsw i32 %conv1.i.5.3.20, 107
  %call.i.5.3.20 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3.20) #2
  %arrayidx11.5.3.20 = getelementptr inbounds i16, i16* %r, i64 163
  %1447 = load i16, i16* %arrayidx11.5.3.20, align 2, !tbaa !3
  %sub.5.3.20 = sub i16 %1447, %call.i.5.3.20
  store i16 %sub.5.3.20, i16* %arrayidx9.5.3.20, align 2, !tbaa !3
  %add21.5.3.20 = add i16 %1447, %call.i.5.3.20
  store i16 %add21.5.3.20, i16* %arrayidx11.5.3.20, align 2, !tbaa !3
  %arrayidx9.5.21 = getelementptr inbounds i16, i16* %r, i64 172
  %1448 = load i16, i16* %arrayidx9.5.21, align 2, !tbaa !3
  %conv1.i.5.21 = sext i16 %1448 to i32
  %mul.i.5.21 = mul nsw i32 %conv1.i.5.21, -1421
  %call.i.5.21 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.21) #2
  %arrayidx11.5.21 = getelementptr inbounds i16, i16* %r, i64 168
  %1449 = load i16, i16* %arrayidx11.5.21, align 2, !tbaa !3
  %sub.5.21 = sub i16 %1449, %call.i.5.21
  store i16 %sub.5.21, i16* %arrayidx9.5.21, align 2, !tbaa !3
  %add21.5.21 = add i16 %1449, %call.i.5.21
  store i16 %add21.5.21, i16* %arrayidx11.5.21, align 2, !tbaa !3
  %arrayidx9.5.1.21 = getelementptr inbounds i16, i16* %r, i64 173
  %1450 = load i16, i16* %arrayidx9.5.1.21, align 2, !tbaa !3
  %conv1.i.5.1.21 = sext i16 %1450 to i32
  %mul.i.5.1.21 = mul nsw i32 %conv1.i.5.1.21, -1421
  %call.i.5.1.21 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1.21) #2
  %arrayidx11.5.1.21 = getelementptr inbounds i16, i16* %r, i64 169
  %1451 = load i16, i16* %arrayidx11.5.1.21, align 2, !tbaa !3
  %sub.5.1.21 = sub i16 %1451, %call.i.5.1.21
  store i16 %sub.5.1.21, i16* %arrayidx9.5.1.21, align 2, !tbaa !3
  %add21.5.1.21 = add i16 %1451, %call.i.5.1.21
  store i16 %add21.5.1.21, i16* %arrayidx11.5.1.21, align 2, !tbaa !3
  %arrayidx9.5.2.21 = getelementptr inbounds i16, i16* %r, i64 174
  %1452 = load i16, i16* %arrayidx9.5.2.21, align 2, !tbaa !3
  %conv1.i.5.2.21 = sext i16 %1452 to i32
  %mul.i.5.2.21 = mul nsw i32 %conv1.i.5.2.21, -1421
  %call.i.5.2.21 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2.21) #2
  %arrayidx11.5.2.21 = getelementptr inbounds i16, i16* %r, i64 170
  %1453 = load i16, i16* %arrayidx11.5.2.21, align 2, !tbaa !3
  %sub.5.2.21 = sub i16 %1453, %call.i.5.2.21
  store i16 %sub.5.2.21, i16* %arrayidx9.5.2.21, align 2, !tbaa !3
  %add21.5.2.21 = add i16 %1453, %call.i.5.2.21
  store i16 %add21.5.2.21, i16* %arrayidx11.5.2.21, align 2, !tbaa !3
  %arrayidx9.5.3.21 = getelementptr inbounds i16, i16* %r, i64 175
  %1454 = load i16, i16* %arrayidx9.5.3.21, align 2, !tbaa !3
  %conv1.i.5.3.21 = sext i16 %1454 to i32
  %mul.i.5.3.21 = mul nsw i32 %conv1.i.5.3.21, -1421
  %call.i.5.3.21 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3.21) #2
  %arrayidx11.5.3.21 = getelementptr inbounds i16, i16* %r, i64 171
  %1455 = load i16, i16* %arrayidx11.5.3.21, align 2, !tbaa !3
  %sub.5.3.21 = sub i16 %1455, %call.i.5.3.21
  store i16 %sub.5.3.21, i16* %arrayidx9.5.3.21, align 2, !tbaa !3
  %add21.5.3.21 = add i16 %1455, %call.i.5.3.21
  store i16 %add21.5.3.21, i16* %arrayidx11.5.3.21, align 2, !tbaa !3
  %arrayidx9.5.22 = getelementptr inbounds i16, i16* %r, i64 180
  %1456 = load i16, i16* %arrayidx9.5.22, align 2, !tbaa !3
  %conv1.i.5.22 = sext i16 %1456 to i32
  %mul.i.5.22 = mul nsw i32 %conv1.i.5.22, -247
  %call.i.5.22 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.22) #2
  %arrayidx11.5.22 = getelementptr inbounds i16, i16* %r, i64 176
  %1457 = load i16, i16* %arrayidx11.5.22, align 2, !tbaa !3
  %sub.5.22 = sub i16 %1457, %call.i.5.22
  store i16 %sub.5.22, i16* %arrayidx9.5.22, align 2, !tbaa !3
  %add21.5.22 = add i16 %1457, %call.i.5.22
  store i16 %add21.5.22, i16* %arrayidx11.5.22, align 2, !tbaa !3
  %arrayidx9.5.1.22 = getelementptr inbounds i16, i16* %r, i64 181
  %1458 = load i16, i16* %arrayidx9.5.1.22, align 2, !tbaa !3
  %conv1.i.5.1.22 = sext i16 %1458 to i32
  %mul.i.5.1.22 = mul nsw i32 %conv1.i.5.1.22, -247
  %call.i.5.1.22 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1.22) #2
  %arrayidx11.5.1.22 = getelementptr inbounds i16, i16* %r, i64 177
  %1459 = load i16, i16* %arrayidx11.5.1.22, align 2, !tbaa !3
  %sub.5.1.22 = sub i16 %1459, %call.i.5.1.22
  store i16 %sub.5.1.22, i16* %arrayidx9.5.1.22, align 2, !tbaa !3
  %add21.5.1.22 = add i16 %1459, %call.i.5.1.22
  store i16 %add21.5.1.22, i16* %arrayidx11.5.1.22, align 2, !tbaa !3
  %arrayidx9.5.2.22 = getelementptr inbounds i16, i16* %r, i64 182
  %1460 = load i16, i16* %arrayidx9.5.2.22, align 2, !tbaa !3
  %conv1.i.5.2.22 = sext i16 %1460 to i32
  %mul.i.5.2.22 = mul nsw i32 %conv1.i.5.2.22, -247
  %call.i.5.2.22 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2.22) #2
  %arrayidx11.5.2.22 = getelementptr inbounds i16, i16* %r, i64 178
  %1461 = load i16, i16* %arrayidx11.5.2.22, align 2, !tbaa !3
  %sub.5.2.22 = sub i16 %1461, %call.i.5.2.22
  store i16 %sub.5.2.22, i16* %arrayidx9.5.2.22, align 2, !tbaa !3
  %add21.5.2.22 = add i16 %1461, %call.i.5.2.22
  store i16 %add21.5.2.22, i16* %arrayidx11.5.2.22, align 2, !tbaa !3
  %arrayidx9.5.3.22 = getelementptr inbounds i16, i16* %r, i64 183
  %1462 = load i16, i16* %arrayidx9.5.3.22, align 2, !tbaa !3
  %conv1.i.5.3.22 = sext i16 %1462 to i32
  %mul.i.5.3.22 = mul nsw i32 %conv1.i.5.3.22, -247
  %call.i.5.3.22 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3.22) #2
  %arrayidx11.5.3.22 = getelementptr inbounds i16, i16* %r, i64 179
  %1463 = load i16, i16* %arrayidx11.5.3.22, align 2, !tbaa !3
  %sub.5.3.22 = sub i16 %1463, %call.i.5.3.22
  store i16 %sub.5.3.22, i16* %arrayidx9.5.3.22, align 2, !tbaa !3
  %add21.5.3.22 = add i16 %1463, %call.i.5.3.22
  store i16 %add21.5.3.22, i16* %arrayidx11.5.3.22, align 2, !tbaa !3
  %arrayidx9.5.23 = getelementptr inbounds i16, i16* %r, i64 188
  %1464 = load i16, i16* %arrayidx9.5.23, align 2, !tbaa !3
  %conv1.i.5.23 = sext i16 %1464 to i32
  %mul.i.5.23 = mul nsw i32 %conv1.i.5.23, -951
  %call.i.5.23 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.23) #2
  %arrayidx11.5.23 = getelementptr inbounds i16, i16* %r, i64 184
  %1465 = load i16, i16* %arrayidx11.5.23, align 2, !tbaa !3
  %sub.5.23 = sub i16 %1465, %call.i.5.23
  store i16 %sub.5.23, i16* %arrayidx9.5.23, align 2, !tbaa !3
  %add21.5.23 = add i16 %1465, %call.i.5.23
  store i16 %add21.5.23, i16* %arrayidx11.5.23, align 2, !tbaa !3
  %arrayidx9.5.1.23 = getelementptr inbounds i16, i16* %r, i64 189
  %1466 = load i16, i16* %arrayidx9.5.1.23, align 2, !tbaa !3
  %conv1.i.5.1.23 = sext i16 %1466 to i32
  %mul.i.5.1.23 = mul nsw i32 %conv1.i.5.1.23, -951
  %call.i.5.1.23 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1.23) #2
  %arrayidx11.5.1.23 = getelementptr inbounds i16, i16* %r, i64 185
  %1467 = load i16, i16* %arrayidx11.5.1.23, align 2, !tbaa !3
  %sub.5.1.23 = sub i16 %1467, %call.i.5.1.23
  store i16 %sub.5.1.23, i16* %arrayidx9.5.1.23, align 2, !tbaa !3
  %add21.5.1.23 = add i16 %1467, %call.i.5.1.23
  store i16 %add21.5.1.23, i16* %arrayidx11.5.1.23, align 2, !tbaa !3
  %arrayidx9.5.2.23 = getelementptr inbounds i16, i16* %r, i64 190
  %1468 = load i16, i16* %arrayidx9.5.2.23, align 2, !tbaa !3
  %conv1.i.5.2.23 = sext i16 %1468 to i32
  %mul.i.5.2.23 = mul nsw i32 %conv1.i.5.2.23, -951
  %call.i.5.2.23 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2.23) #2
  %arrayidx11.5.2.23 = getelementptr inbounds i16, i16* %r, i64 186
  %1469 = load i16, i16* %arrayidx11.5.2.23, align 2, !tbaa !3
  %sub.5.2.23 = sub i16 %1469, %call.i.5.2.23
  store i16 %sub.5.2.23, i16* %arrayidx9.5.2.23, align 2, !tbaa !3
  %add21.5.2.23 = add i16 %1469, %call.i.5.2.23
  store i16 %add21.5.2.23, i16* %arrayidx11.5.2.23, align 2, !tbaa !3
  %arrayidx9.5.3.23 = getelementptr inbounds i16, i16* %r, i64 191
  %1470 = load i16, i16* %arrayidx9.5.3.23, align 2, !tbaa !3
  %conv1.i.5.3.23 = sext i16 %1470 to i32
  %mul.i.5.3.23 = mul nsw i32 %conv1.i.5.3.23, -951
  %call.i.5.3.23 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3.23) #2
  %arrayidx11.5.3.23 = getelementptr inbounds i16, i16* %r, i64 187
  %1471 = load i16, i16* %arrayidx11.5.3.23, align 2, !tbaa !3
  %sub.5.3.23 = sub i16 %1471, %call.i.5.3.23
  store i16 %sub.5.3.23, i16* %arrayidx9.5.3.23, align 2, !tbaa !3
  %add21.5.3.23 = add i16 %1471, %call.i.5.3.23
  store i16 %add21.5.3.23, i16* %arrayidx11.5.3.23, align 2, !tbaa !3
  %arrayidx9.5.24 = getelementptr inbounds i16, i16* %r, i64 196
  %1472 = load i16, i16* %arrayidx9.5.24, align 2, !tbaa !3
  %conv1.i.5.24 = sext i16 %1472 to i32
  %mul.i.5.24 = mul nsw i32 %conv1.i.5.24, -398
  %call.i.5.24 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.24) #2
  %arrayidx11.5.24 = getelementptr inbounds i16, i16* %r, i64 192
  %1473 = load i16, i16* %arrayidx11.5.24, align 2, !tbaa !3
  %sub.5.24 = sub i16 %1473, %call.i.5.24
  store i16 %sub.5.24, i16* %arrayidx9.5.24, align 2, !tbaa !3
  %add21.5.24 = add i16 %1473, %call.i.5.24
  store i16 %add21.5.24, i16* %arrayidx11.5.24, align 2, !tbaa !3
  %arrayidx9.5.1.24 = getelementptr inbounds i16, i16* %r, i64 197
  %1474 = load i16, i16* %arrayidx9.5.1.24, align 2, !tbaa !3
  %conv1.i.5.1.24 = sext i16 %1474 to i32
  %mul.i.5.1.24 = mul nsw i32 %conv1.i.5.1.24, -398
  %call.i.5.1.24 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1.24) #2
  %arrayidx11.5.1.24 = getelementptr inbounds i16, i16* %r, i64 193
  %1475 = load i16, i16* %arrayidx11.5.1.24, align 2, !tbaa !3
  %sub.5.1.24 = sub i16 %1475, %call.i.5.1.24
  store i16 %sub.5.1.24, i16* %arrayidx9.5.1.24, align 2, !tbaa !3
  %add21.5.1.24 = add i16 %1475, %call.i.5.1.24
  store i16 %add21.5.1.24, i16* %arrayidx11.5.1.24, align 2, !tbaa !3
  %arrayidx9.5.2.24 = getelementptr inbounds i16, i16* %r, i64 198
  %1476 = load i16, i16* %arrayidx9.5.2.24, align 2, !tbaa !3
  %conv1.i.5.2.24 = sext i16 %1476 to i32
  %mul.i.5.2.24 = mul nsw i32 %conv1.i.5.2.24, -398
  %call.i.5.2.24 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2.24) #2
  %arrayidx11.5.2.24 = getelementptr inbounds i16, i16* %r, i64 194
  %1477 = load i16, i16* %arrayidx11.5.2.24, align 2, !tbaa !3
  %sub.5.2.24 = sub i16 %1477, %call.i.5.2.24
  store i16 %sub.5.2.24, i16* %arrayidx9.5.2.24, align 2, !tbaa !3
  %add21.5.2.24 = add i16 %1477, %call.i.5.2.24
  store i16 %add21.5.2.24, i16* %arrayidx11.5.2.24, align 2, !tbaa !3
  %arrayidx9.5.3.24 = getelementptr inbounds i16, i16* %r, i64 199
  %1478 = load i16, i16* %arrayidx9.5.3.24, align 2, !tbaa !3
  %conv1.i.5.3.24 = sext i16 %1478 to i32
  %mul.i.5.3.24 = mul nsw i32 %conv1.i.5.3.24, -398
  %call.i.5.3.24 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3.24) #2
  %arrayidx11.5.3.24 = getelementptr inbounds i16, i16* %r, i64 195
  %1479 = load i16, i16* %arrayidx11.5.3.24, align 2, !tbaa !3
  %sub.5.3.24 = sub i16 %1479, %call.i.5.3.24
  store i16 %sub.5.3.24, i16* %arrayidx9.5.3.24, align 2, !tbaa !3
  %add21.5.3.24 = add i16 %1479, %call.i.5.3.24
  store i16 %add21.5.3.24, i16* %arrayidx11.5.3.24, align 2, !tbaa !3
  %arrayidx9.5.25 = getelementptr inbounds i16, i16* %r, i64 204
  %1480 = load i16, i16* %arrayidx9.5.25, align 2, !tbaa !3
  %conv1.i.5.25 = sext i16 %1480 to i32
  %mul.i.5.25 = mul nsw i32 %conv1.i.5.25, 961
  %call.i.5.25 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.25) #2
  %arrayidx11.5.25 = getelementptr inbounds i16, i16* %r, i64 200
  %1481 = load i16, i16* %arrayidx11.5.25, align 2, !tbaa !3
  %sub.5.25 = sub i16 %1481, %call.i.5.25
  store i16 %sub.5.25, i16* %arrayidx9.5.25, align 2, !tbaa !3
  %add21.5.25 = add i16 %1481, %call.i.5.25
  store i16 %add21.5.25, i16* %arrayidx11.5.25, align 2, !tbaa !3
  %arrayidx9.5.1.25 = getelementptr inbounds i16, i16* %r, i64 205
  %1482 = load i16, i16* %arrayidx9.5.1.25, align 2, !tbaa !3
  %conv1.i.5.1.25 = sext i16 %1482 to i32
  %mul.i.5.1.25 = mul nsw i32 %conv1.i.5.1.25, 961
  %call.i.5.1.25 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1.25) #2
  %arrayidx11.5.1.25 = getelementptr inbounds i16, i16* %r, i64 201
  %1483 = load i16, i16* %arrayidx11.5.1.25, align 2, !tbaa !3
  %sub.5.1.25 = sub i16 %1483, %call.i.5.1.25
  store i16 %sub.5.1.25, i16* %arrayidx9.5.1.25, align 2, !tbaa !3
  %add21.5.1.25 = add i16 %1483, %call.i.5.1.25
  store i16 %add21.5.1.25, i16* %arrayidx11.5.1.25, align 2, !tbaa !3
  %arrayidx9.5.2.25 = getelementptr inbounds i16, i16* %r, i64 206
  %1484 = load i16, i16* %arrayidx9.5.2.25, align 2, !tbaa !3
  %conv1.i.5.2.25 = sext i16 %1484 to i32
  %mul.i.5.2.25 = mul nsw i32 %conv1.i.5.2.25, 961
  %call.i.5.2.25 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2.25) #2
  %arrayidx11.5.2.25 = getelementptr inbounds i16, i16* %r, i64 202
  %1485 = load i16, i16* %arrayidx11.5.2.25, align 2, !tbaa !3
  %sub.5.2.25 = sub i16 %1485, %call.i.5.2.25
  store i16 %sub.5.2.25, i16* %arrayidx9.5.2.25, align 2, !tbaa !3
  %add21.5.2.25 = add i16 %1485, %call.i.5.2.25
  store i16 %add21.5.2.25, i16* %arrayidx11.5.2.25, align 2, !tbaa !3
  %arrayidx9.5.3.25 = getelementptr inbounds i16, i16* %r, i64 207
  %1486 = load i16, i16* %arrayidx9.5.3.25, align 2, !tbaa !3
  %conv1.i.5.3.25 = sext i16 %1486 to i32
  %mul.i.5.3.25 = mul nsw i32 %conv1.i.5.3.25, 961
  %call.i.5.3.25 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3.25) #2
  %arrayidx11.5.3.25 = getelementptr inbounds i16, i16* %r, i64 203
  %1487 = load i16, i16* %arrayidx11.5.3.25, align 2, !tbaa !3
  %sub.5.3.25 = sub i16 %1487, %call.i.5.3.25
  store i16 %sub.5.3.25, i16* %arrayidx9.5.3.25, align 2, !tbaa !3
  %add21.5.3.25 = add i16 %1487, %call.i.5.3.25
  store i16 %add21.5.3.25, i16* %arrayidx11.5.3.25, align 2, !tbaa !3
  %arrayidx9.5.26 = getelementptr inbounds i16, i16* %r, i64 212
  %1488 = load i16, i16* %arrayidx9.5.26, align 2, !tbaa !3
  %conv1.i.5.26 = sext i16 %1488 to i32
  %mul.i.5.26 = mul nsw i32 %conv1.i.5.26, -1508
  %call.i.5.26 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.26) #2
  %arrayidx11.5.26 = getelementptr inbounds i16, i16* %r, i64 208
  %1489 = load i16, i16* %arrayidx11.5.26, align 2, !tbaa !3
  %sub.5.26 = sub i16 %1489, %call.i.5.26
  store i16 %sub.5.26, i16* %arrayidx9.5.26, align 2, !tbaa !3
  %add21.5.26 = add i16 %1489, %call.i.5.26
  store i16 %add21.5.26, i16* %arrayidx11.5.26, align 2, !tbaa !3
  %arrayidx9.5.1.26 = getelementptr inbounds i16, i16* %r, i64 213
  %1490 = load i16, i16* %arrayidx9.5.1.26, align 2, !tbaa !3
  %conv1.i.5.1.26 = sext i16 %1490 to i32
  %mul.i.5.1.26 = mul nsw i32 %conv1.i.5.1.26, -1508
  %call.i.5.1.26 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1.26) #2
  %arrayidx11.5.1.26 = getelementptr inbounds i16, i16* %r, i64 209
  %1491 = load i16, i16* %arrayidx11.5.1.26, align 2, !tbaa !3
  %sub.5.1.26 = sub i16 %1491, %call.i.5.1.26
  store i16 %sub.5.1.26, i16* %arrayidx9.5.1.26, align 2, !tbaa !3
  %add21.5.1.26 = add i16 %1491, %call.i.5.1.26
  store i16 %add21.5.1.26, i16* %arrayidx11.5.1.26, align 2, !tbaa !3
  %arrayidx9.5.2.26 = getelementptr inbounds i16, i16* %r, i64 214
  %1492 = load i16, i16* %arrayidx9.5.2.26, align 2, !tbaa !3
  %conv1.i.5.2.26 = sext i16 %1492 to i32
  %mul.i.5.2.26 = mul nsw i32 %conv1.i.5.2.26, -1508
  %call.i.5.2.26 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2.26) #2
  %arrayidx11.5.2.26 = getelementptr inbounds i16, i16* %r, i64 210
  %1493 = load i16, i16* %arrayidx11.5.2.26, align 2, !tbaa !3
  %sub.5.2.26 = sub i16 %1493, %call.i.5.2.26
  store i16 %sub.5.2.26, i16* %arrayidx9.5.2.26, align 2, !tbaa !3
  %add21.5.2.26 = add i16 %1493, %call.i.5.2.26
  store i16 %add21.5.2.26, i16* %arrayidx11.5.2.26, align 2, !tbaa !3
  %arrayidx9.5.3.26 = getelementptr inbounds i16, i16* %r, i64 215
  %1494 = load i16, i16* %arrayidx9.5.3.26, align 2, !tbaa !3
  %conv1.i.5.3.26 = sext i16 %1494 to i32
  %mul.i.5.3.26 = mul nsw i32 %conv1.i.5.3.26, -1508
  %call.i.5.3.26 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3.26) #2
  %arrayidx11.5.3.26 = getelementptr inbounds i16, i16* %r, i64 211
  %1495 = load i16, i16* %arrayidx11.5.3.26, align 2, !tbaa !3
  %sub.5.3.26 = sub i16 %1495, %call.i.5.3.26
  store i16 %sub.5.3.26, i16* %arrayidx9.5.3.26, align 2, !tbaa !3
  %add21.5.3.26 = add i16 %1495, %call.i.5.3.26
  store i16 %add21.5.3.26, i16* %arrayidx11.5.3.26, align 2, !tbaa !3
  %arrayidx9.5.27 = getelementptr inbounds i16, i16* %r, i64 220
  %1496 = load i16, i16* %arrayidx9.5.27, align 2, !tbaa !3
  %conv1.i.5.27 = sext i16 %1496 to i32
  %mul.i.5.27 = mul nsw i32 %conv1.i.5.27, -725
  %call.i.5.27 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.27) #2
  %arrayidx11.5.27 = getelementptr inbounds i16, i16* %r, i64 216
  %1497 = load i16, i16* %arrayidx11.5.27, align 2, !tbaa !3
  %sub.5.27 = sub i16 %1497, %call.i.5.27
  store i16 %sub.5.27, i16* %arrayidx9.5.27, align 2, !tbaa !3
  %add21.5.27 = add i16 %1497, %call.i.5.27
  store i16 %add21.5.27, i16* %arrayidx11.5.27, align 2, !tbaa !3
  %arrayidx9.5.1.27 = getelementptr inbounds i16, i16* %r, i64 221
  %1498 = load i16, i16* %arrayidx9.5.1.27, align 2, !tbaa !3
  %conv1.i.5.1.27 = sext i16 %1498 to i32
  %mul.i.5.1.27 = mul nsw i32 %conv1.i.5.1.27, -725
  %call.i.5.1.27 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1.27) #2
  %arrayidx11.5.1.27 = getelementptr inbounds i16, i16* %r, i64 217
  %1499 = load i16, i16* %arrayidx11.5.1.27, align 2, !tbaa !3
  %sub.5.1.27 = sub i16 %1499, %call.i.5.1.27
  store i16 %sub.5.1.27, i16* %arrayidx9.5.1.27, align 2, !tbaa !3
  %add21.5.1.27 = add i16 %1499, %call.i.5.1.27
  store i16 %add21.5.1.27, i16* %arrayidx11.5.1.27, align 2, !tbaa !3
  %arrayidx9.5.2.27 = getelementptr inbounds i16, i16* %r, i64 222
  %1500 = load i16, i16* %arrayidx9.5.2.27, align 2, !tbaa !3
  %conv1.i.5.2.27 = sext i16 %1500 to i32
  %mul.i.5.2.27 = mul nsw i32 %conv1.i.5.2.27, -725
  %call.i.5.2.27 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2.27) #2
  %arrayidx11.5.2.27 = getelementptr inbounds i16, i16* %r, i64 218
  %1501 = load i16, i16* %arrayidx11.5.2.27, align 2, !tbaa !3
  %sub.5.2.27 = sub i16 %1501, %call.i.5.2.27
  store i16 %sub.5.2.27, i16* %arrayidx9.5.2.27, align 2, !tbaa !3
  %add21.5.2.27 = add i16 %1501, %call.i.5.2.27
  store i16 %add21.5.2.27, i16* %arrayidx11.5.2.27, align 2, !tbaa !3
  %arrayidx9.5.3.27 = getelementptr inbounds i16, i16* %r, i64 223
  %1502 = load i16, i16* %arrayidx9.5.3.27, align 2, !tbaa !3
  %conv1.i.5.3.27 = sext i16 %1502 to i32
  %mul.i.5.3.27 = mul nsw i32 %conv1.i.5.3.27, -725
  %call.i.5.3.27 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3.27) #2
  %arrayidx11.5.3.27 = getelementptr inbounds i16, i16* %r, i64 219
  %1503 = load i16, i16* %arrayidx11.5.3.27, align 2, !tbaa !3
  %sub.5.3.27 = sub i16 %1503, %call.i.5.3.27
  store i16 %sub.5.3.27, i16* %arrayidx9.5.3.27, align 2, !tbaa !3
  %add21.5.3.27 = add i16 %1503, %call.i.5.3.27
  store i16 %add21.5.3.27, i16* %arrayidx11.5.3.27, align 2, !tbaa !3
  %arrayidx9.5.28 = getelementptr inbounds i16, i16* %r, i64 228
  %1504 = load i16, i16* %arrayidx9.5.28, align 2, !tbaa !3
  %conv1.i.5.28 = sext i16 %1504 to i32
  %mul.i.5.28 = mul nsw i32 %conv1.i.5.28, 448
  %call.i.5.28 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.28) #2
  %arrayidx11.5.28 = getelementptr inbounds i16, i16* %r, i64 224
  %1505 = load i16, i16* %arrayidx11.5.28, align 2, !tbaa !3
  %sub.5.28 = sub i16 %1505, %call.i.5.28
  store i16 %sub.5.28, i16* %arrayidx9.5.28, align 2, !tbaa !3
  %add21.5.28 = add i16 %1505, %call.i.5.28
  store i16 %add21.5.28, i16* %arrayidx11.5.28, align 2, !tbaa !3
  %arrayidx9.5.1.28 = getelementptr inbounds i16, i16* %r, i64 229
  %1506 = load i16, i16* %arrayidx9.5.1.28, align 2, !tbaa !3
  %conv1.i.5.1.28 = sext i16 %1506 to i32
  %mul.i.5.1.28 = mul nsw i32 %conv1.i.5.1.28, 448
  %call.i.5.1.28 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1.28) #2
  %arrayidx11.5.1.28 = getelementptr inbounds i16, i16* %r, i64 225
  %1507 = load i16, i16* %arrayidx11.5.1.28, align 2, !tbaa !3
  %sub.5.1.28 = sub i16 %1507, %call.i.5.1.28
  store i16 %sub.5.1.28, i16* %arrayidx9.5.1.28, align 2, !tbaa !3
  %add21.5.1.28 = add i16 %1507, %call.i.5.1.28
  store i16 %add21.5.1.28, i16* %arrayidx11.5.1.28, align 2, !tbaa !3
  %arrayidx9.5.2.28 = getelementptr inbounds i16, i16* %r, i64 230
  %1508 = load i16, i16* %arrayidx9.5.2.28, align 2, !tbaa !3
  %conv1.i.5.2.28 = sext i16 %1508 to i32
  %mul.i.5.2.28 = mul nsw i32 %conv1.i.5.2.28, 448
  %call.i.5.2.28 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2.28) #2
  %arrayidx11.5.2.28 = getelementptr inbounds i16, i16* %r, i64 226
  %1509 = load i16, i16* %arrayidx11.5.2.28, align 2, !tbaa !3
  %sub.5.2.28 = sub i16 %1509, %call.i.5.2.28
  store i16 %sub.5.2.28, i16* %arrayidx9.5.2.28, align 2, !tbaa !3
  %add21.5.2.28 = add i16 %1509, %call.i.5.2.28
  store i16 %add21.5.2.28, i16* %arrayidx11.5.2.28, align 2, !tbaa !3
  %arrayidx9.5.3.28 = getelementptr inbounds i16, i16* %r, i64 231
  %1510 = load i16, i16* %arrayidx9.5.3.28, align 2, !tbaa !3
  %conv1.i.5.3.28 = sext i16 %1510 to i32
  %mul.i.5.3.28 = mul nsw i32 %conv1.i.5.3.28, 448
  %call.i.5.3.28 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3.28) #2
  %arrayidx11.5.3.28 = getelementptr inbounds i16, i16* %r, i64 227
  %1511 = load i16, i16* %arrayidx11.5.3.28, align 2, !tbaa !3
  %sub.5.3.28 = sub i16 %1511, %call.i.5.3.28
  store i16 %sub.5.3.28, i16* %arrayidx9.5.3.28, align 2, !tbaa !3
  %add21.5.3.28 = add i16 %1511, %call.i.5.3.28
  store i16 %add21.5.3.28, i16* %arrayidx11.5.3.28, align 2, !tbaa !3
  %arrayidx9.5.29 = getelementptr inbounds i16, i16* %r, i64 236
  %1512 = load i16, i16* %arrayidx9.5.29, align 2, !tbaa !3
  %conv1.i.5.29 = sext i16 %1512 to i32
  %mul.i.5.29 = mul nsw i32 %conv1.i.5.29, -1065
  %call.i.5.29 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.29) #2
  %arrayidx11.5.29 = getelementptr inbounds i16, i16* %r, i64 232
  %1513 = load i16, i16* %arrayidx11.5.29, align 2, !tbaa !3
  %sub.5.29 = sub i16 %1513, %call.i.5.29
  store i16 %sub.5.29, i16* %arrayidx9.5.29, align 2, !tbaa !3
  %add21.5.29 = add i16 %1513, %call.i.5.29
  store i16 %add21.5.29, i16* %arrayidx11.5.29, align 2, !tbaa !3
  %arrayidx9.5.1.29 = getelementptr inbounds i16, i16* %r, i64 237
  %1514 = load i16, i16* %arrayidx9.5.1.29, align 2, !tbaa !3
  %conv1.i.5.1.29 = sext i16 %1514 to i32
  %mul.i.5.1.29 = mul nsw i32 %conv1.i.5.1.29, -1065
  %call.i.5.1.29 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1.29) #2
  %arrayidx11.5.1.29 = getelementptr inbounds i16, i16* %r, i64 233
  %1515 = load i16, i16* %arrayidx11.5.1.29, align 2, !tbaa !3
  %sub.5.1.29 = sub i16 %1515, %call.i.5.1.29
  store i16 %sub.5.1.29, i16* %arrayidx9.5.1.29, align 2, !tbaa !3
  %add21.5.1.29 = add i16 %1515, %call.i.5.1.29
  store i16 %add21.5.1.29, i16* %arrayidx11.5.1.29, align 2, !tbaa !3
  %arrayidx9.5.2.29 = getelementptr inbounds i16, i16* %r, i64 238
  %1516 = load i16, i16* %arrayidx9.5.2.29, align 2, !tbaa !3
  %conv1.i.5.2.29 = sext i16 %1516 to i32
  %mul.i.5.2.29 = mul nsw i32 %conv1.i.5.2.29, -1065
  %call.i.5.2.29 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2.29) #2
  %arrayidx11.5.2.29 = getelementptr inbounds i16, i16* %r, i64 234
  %1517 = load i16, i16* %arrayidx11.5.2.29, align 2, !tbaa !3
  %sub.5.2.29 = sub i16 %1517, %call.i.5.2.29
  store i16 %sub.5.2.29, i16* %arrayidx9.5.2.29, align 2, !tbaa !3
  %add21.5.2.29 = add i16 %1517, %call.i.5.2.29
  store i16 %add21.5.2.29, i16* %arrayidx11.5.2.29, align 2, !tbaa !3
  %arrayidx9.5.3.29 = getelementptr inbounds i16, i16* %r, i64 239
  %1518 = load i16, i16* %arrayidx9.5.3.29, align 2, !tbaa !3
  %conv1.i.5.3.29 = sext i16 %1518 to i32
  %mul.i.5.3.29 = mul nsw i32 %conv1.i.5.3.29, -1065
  %call.i.5.3.29 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3.29) #2
  %arrayidx11.5.3.29 = getelementptr inbounds i16, i16* %r, i64 235
  %1519 = load i16, i16* %arrayidx11.5.3.29, align 2, !tbaa !3
  %sub.5.3.29 = sub i16 %1519, %call.i.5.3.29
  store i16 %sub.5.3.29, i16* %arrayidx9.5.3.29, align 2, !tbaa !3
  %add21.5.3.29 = add i16 %1519, %call.i.5.3.29
  store i16 %add21.5.3.29, i16* %arrayidx11.5.3.29, align 2, !tbaa !3
  %arrayidx9.5.30 = getelementptr inbounds i16, i16* %r, i64 244
  %1520 = load i16, i16* %arrayidx9.5.30, align 2, !tbaa !3
  %conv1.i.5.30 = sext i16 %1520 to i32
  %mul.i.5.30 = mul nsw i32 %conv1.i.5.30, 677
  %call.i.5.30 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.30) #2
  %arrayidx11.5.30 = getelementptr inbounds i16, i16* %r, i64 240
  %1521 = load i16, i16* %arrayidx11.5.30, align 2, !tbaa !3
  %sub.5.30 = sub i16 %1521, %call.i.5.30
  store i16 %sub.5.30, i16* %arrayidx9.5.30, align 2, !tbaa !3
  %add21.5.30 = add i16 %1521, %call.i.5.30
  store i16 %add21.5.30, i16* %arrayidx11.5.30, align 2, !tbaa !3
  %arrayidx9.5.1.30 = getelementptr inbounds i16, i16* %r, i64 245
  %1522 = load i16, i16* %arrayidx9.5.1.30, align 2, !tbaa !3
  %conv1.i.5.1.30 = sext i16 %1522 to i32
  %mul.i.5.1.30 = mul nsw i32 %conv1.i.5.1.30, 677
  %call.i.5.1.30 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1.30) #2
  %arrayidx11.5.1.30 = getelementptr inbounds i16, i16* %r, i64 241
  %1523 = load i16, i16* %arrayidx11.5.1.30, align 2, !tbaa !3
  %sub.5.1.30 = sub i16 %1523, %call.i.5.1.30
  store i16 %sub.5.1.30, i16* %arrayidx9.5.1.30, align 2, !tbaa !3
  %add21.5.1.30 = add i16 %1523, %call.i.5.1.30
  store i16 %add21.5.1.30, i16* %arrayidx11.5.1.30, align 2, !tbaa !3
  %arrayidx9.5.2.30 = getelementptr inbounds i16, i16* %r, i64 246
  %1524 = load i16, i16* %arrayidx9.5.2.30, align 2, !tbaa !3
  %conv1.i.5.2.30 = sext i16 %1524 to i32
  %mul.i.5.2.30 = mul nsw i32 %conv1.i.5.2.30, 677
  %call.i.5.2.30 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2.30) #2
  %arrayidx11.5.2.30 = getelementptr inbounds i16, i16* %r, i64 242
  %1525 = load i16, i16* %arrayidx11.5.2.30, align 2, !tbaa !3
  %sub.5.2.30 = sub i16 %1525, %call.i.5.2.30
  store i16 %sub.5.2.30, i16* %arrayidx9.5.2.30, align 2, !tbaa !3
  %add21.5.2.30 = add i16 %1525, %call.i.5.2.30
  store i16 %add21.5.2.30, i16* %arrayidx11.5.2.30, align 2, !tbaa !3
  %arrayidx9.5.3.30 = getelementptr inbounds i16, i16* %r, i64 247
  %1526 = load i16, i16* %arrayidx9.5.3.30, align 2, !tbaa !3
  %conv1.i.5.3.30 = sext i16 %1526 to i32
  %mul.i.5.3.30 = mul nsw i32 %conv1.i.5.3.30, 677
  %call.i.5.3.30 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3.30) #2
  %arrayidx11.5.3.30 = getelementptr inbounds i16, i16* %r, i64 243
  %1527 = load i16, i16* %arrayidx11.5.3.30, align 2, !tbaa !3
  %sub.5.3.30 = sub i16 %1527, %call.i.5.3.30
  store i16 %sub.5.3.30, i16* %arrayidx9.5.3.30, align 2, !tbaa !3
  %add21.5.3.30 = add i16 %1527, %call.i.5.3.30
  store i16 %add21.5.3.30, i16* %arrayidx11.5.3.30, align 2, !tbaa !3
  %arrayidx9.5.31 = getelementptr inbounds i16, i16* %r, i64 252
  %1528 = load i16, i16* %arrayidx9.5.31, align 2, !tbaa !3
  %conv1.i.5.31 = sext i16 %1528 to i32
  %mul.i.5.31 = mul nsw i32 %conv1.i.5.31, -1275
  %call.i.5.31 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.31) #2
  %arrayidx11.5.31 = getelementptr inbounds i16, i16* %r, i64 248
  %1529 = load i16, i16* %arrayidx11.5.31, align 2, !tbaa !3
  %sub.5.31 = sub i16 %1529, %call.i.5.31
  store i16 %sub.5.31, i16* %arrayidx9.5.31, align 2, !tbaa !3
  %add21.5.31 = add i16 %1529, %call.i.5.31
  store i16 %add21.5.31, i16* %arrayidx11.5.31, align 2, !tbaa !3
  %arrayidx9.5.1.31 = getelementptr inbounds i16, i16* %r, i64 253
  %1530 = load i16, i16* %arrayidx9.5.1.31, align 2, !tbaa !3
  %conv1.i.5.1.31 = sext i16 %1530 to i32
  %mul.i.5.1.31 = mul nsw i32 %conv1.i.5.1.31, -1275
  %call.i.5.1.31 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1.31) #2
  %arrayidx11.5.1.31 = getelementptr inbounds i16, i16* %r, i64 249
  %1531 = load i16, i16* %arrayidx11.5.1.31, align 2, !tbaa !3
  %sub.5.1.31 = sub i16 %1531, %call.i.5.1.31
  store i16 %sub.5.1.31, i16* %arrayidx9.5.1.31, align 2, !tbaa !3
  %add21.5.1.31 = add i16 %1531, %call.i.5.1.31
  store i16 %add21.5.1.31, i16* %arrayidx11.5.1.31, align 2, !tbaa !3
  %arrayidx9.5.2.31 = getelementptr inbounds i16, i16* %r, i64 254
  %1532 = load i16, i16* %arrayidx9.5.2.31, align 2, !tbaa !3
  %conv1.i.5.2.31 = sext i16 %1532 to i32
  %mul.i.5.2.31 = mul nsw i32 %conv1.i.5.2.31, -1275
  %call.i.5.2.31 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.2.31) #2
  %arrayidx11.5.2.31 = getelementptr inbounds i16, i16* %r, i64 250
  %1533 = load i16, i16* %arrayidx11.5.2.31, align 2, !tbaa !3
  %sub.5.2.31 = sub i16 %1533, %call.i.5.2.31
  store i16 %sub.5.2.31, i16* %arrayidx9.5.2.31, align 2, !tbaa !3
  %add21.5.2.31 = add i16 %1533, %call.i.5.2.31
  store i16 %add21.5.2.31, i16* %arrayidx11.5.2.31, align 2, !tbaa !3
  %arrayidx9.5.3.31 = getelementptr inbounds i16, i16* %r, i64 255
  %1534 = load i16, i16* %arrayidx9.5.3.31, align 2, !tbaa !3
  %conv1.i.5.3.31 = sext i16 %1534 to i32
  %mul.i.5.3.31 = mul nsw i32 %conv1.i.5.3.31, -1275
  %call.i.5.3.31 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.3.31) #2
  %arrayidx11.5.3.31 = getelementptr inbounds i16, i16* %r, i64 251
  %1535 = load i16, i16* %arrayidx11.5.3.31, align 2, !tbaa !3
  %sub.5.3.31 = sub i16 %1535, %call.i.5.3.31
  store i16 %sub.5.3.31, i16* %arrayidx9.5.3.31, align 2, !tbaa !3
  %add21.5.3.31 = add i16 %1535, %call.i.5.3.31
  store i16 %add21.5.3.31, i16* %arrayidx11.5.3.31, align 2, !tbaa !3
  %arrayidx9.6 = getelementptr inbounds i16, i16* %r, i64 2
  %1536 = load i16, i16* %arrayidx9.6, align 2, !tbaa !3
  %conv1.i.6 = sext i16 %1536 to i32
  %mul.i.6 = mul nsw i32 %conv1.i.6, -1103
  %call.i.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6) #2
  %1537 = load i16, i16* %r, align 2, !tbaa !3
  %sub.6 = sub i16 %1537, %call.i.6
  store i16 %sub.6, i16* %arrayidx9.6, align 2, !tbaa !3
  %add21.6 = add i16 %1537, %call.i.6
  store i16 %add21.6, i16* %r, align 2, !tbaa !3
  %arrayidx9.6.1 = getelementptr inbounds i16, i16* %r, i64 3
  %1538 = load i16, i16* %arrayidx9.6.1, align 2, !tbaa !3
  %conv1.i.6.1 = sext i16 %1538 to i32
  %mul.i.6.1 = mul nsw i32 %conv1.i.6.1, -1103
  %call.i.6.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1) #2
  %arrayidx11.6.1 = getelementptr inbounds i16, i16* %r, i64 1
  %1539 = load i16, i16* %arrayidx11.6.1, align 2, !tbaa !3
  %sub.6.1 = sub i16 %1539, %call.i.6.1
  store i16 %sub.6.1, i16* %arrayidx9.6.1, align 2, !tbaa !3
  %add21.6.1 = add i16 %1539, %call.i.6.1
  store i16 %add21.6.1, i16* %arrayidx11.6.1, align 2, !tbaa !3
  %arrayidx9.6.168 = getelementptr inbounds i16, i16* %r, i64 6
  %1540 = load i16, i16* %arrayidx9.6.168, align 2, !tbaa !3
  %conv1.i.6.169 = sext i16 %1540 to i32
  %mul.i.6.170 = mul nsw i32 %conv1.i.6.169, 430
  %call.i.6.171 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.170) #2
  %arrayidx11.6.172 = getelementptr inbounds i16, i16* %r, i64 4
  %1541 = load i16, i16* %arrayidx11.6.172, align 2, !tbaa !3
  %sub.6.173 = sub i16 %1541, %call.i.6.171
  store i16 %sub.6.173, i16* %arrayidx9.6.168, align 2, !tbaa !3
  %add21.6.174 = add i16 %1541, %call.i.6.171
  store i16 %add21.6.174, i16* %arrayidx11.6.172, align 2, !tbaa !3
  %arrayidx9.6.1.1 = getelementptr inbounds i16, i16* %r, i64 7
  %1542 = load i16, i16* %arrayidx9.6.1.1, align 2, !tbaa !3
  %conv1.i.6.1.1 = sext i16 %1542 to i32
  %mul.i.6.1.1 = mul nsw i32 %conv1.i.6.1.1, 430
  %call.i.6.1.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.1) #2
  %arrayidx11.6.1.1 = getelementptr inbounds i16, i16* %r, i64 5
  %1543 = load i16, i16* %arrayidx11.6.1.1, align 2, !tbaa !3
  %sub.6.1.1 = sub i16 %1543, %call.i.6.1.1
  store i16 %sub.6.1.1, i16* %arrayidx9.6.1.1, align 2, !tbaa !3
  %add21.6.1.1 = add i16 %1543, %call.i.6.1.1
  store i16 %add21.6.1.1, i16* %arrayidx11.6.1.1, align 2, !tbaa !3
  %arrayidx9.6.2 = getelementptr inbounds i16, i16* %r, i64 10
  %1544 = load i16, i16* %arrayidx9.6.2, align 2, !tbaa !3
  %conv1.i.6.2 = sext i16 %1544 to i32
  %mul.i.6.2 = mul nsw i32 %conv1.i.6.2, 555
  %call.i.6.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.2) #2
  %arrayidx11.6.2 = getelementptr inbounds i16, i16* %r, i64 8
  %1545 = load i16, i16* %arrayidx11.6.2, align 2, !tbaa !3
  %sub.6.2 = sub i16 %1545, %call.i.6.2
  store i16 %sub.6.2, i16* %arrayidx9.6.2, align 2, !tbaa !3
  %add21.6.2 = add i16 %1545, %call.i.6.2
  store i16 %add21.6.2, i16* %arrayidx11.6.2, align 2, !tbaa !3
  %arrayidx9.6.1.2 = getelementptr inbounds i16, i16* %r, i64 11
  %1546 = load i16, i16* %arrayidx9.6.1.2, align 2, !tbaa !3
  %conv1.i.6.1.2 = sext i16 %1546 to i32
  %mul.i.6.1.2 = mul nsw i32 %conv1.i.6.1.2, 555
  %call.i.6.1.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.2) #2
  %arrayidx11.6.1.2 = getelementptr inbounds i16, i16* %r, i64 9
  %1547 = load i16, i16* %arrayidx11.6.1.2, align 2, !tbaa !3
  %sub.6.1.2 = sub i16 %1547, %call.i.6.1.2
  store i16 %sub.6.1.2, i16* %arrayidx9.6.1.2, align 2, !tbaa !3
  %add21.6.1.2 = add i16 %1547, %call.i.6.1.2
  store i16 %add21.6.1.2, i16* %arrayidx11.6.1.2, align 2, !tbaa !3
  %arrayidx9.6.3 = getelementptr inbounds i16, i16* %r, i64 14
  %1548 = load i16, i16* %arrayidx9.6.3, align 2, !tbaa !3
  %conv1.i.6.3 = sext i16 %1548 to i32
  %mul.i.6.3 = mul nsw i32 %conv1.i.6.3, 843
  %call.i.6.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.3) #2
  %arrayidx11.6.3 = getelementptr inbounds i16, i16* %r, i64 12
  %1549 = load i16, i16* %arrayidx11.6.3, align 2, !tbaa !3
  %sub.6.3 = sub i16 %1549, %call.i.6.3
  store i16 %sub.6.3, i16* %arrayidx9.6.3, align 2, !tbaa !3
  %add21.6.3 = add i16 %1549, %call.i.6.3
  store i16 %add21.6.3, i16* %arrayidx11.6.3, align 2, !tbaa !3
  %arrayidx9.6.1.3 = getelementptr inbounds i16, i16* %r, i64 15
  %1550 = load i16, i16* %arrayidx9.6.1.3, align 2, !tbaa !3
  %conv1.i.6.1.3 = sext i16 %1550 to i32
  %mul.i.6.1.3 = mul nsw i32 %conv1.i.6.1.3, 843
  %call.i.6.1.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.3) #2
  %arrayidx11.6.1.3 = getelementptr inbounds i16, i16* %r, i64 13
  %1551 = load i16, i16* %arrayidx11.6.1.3, align 2, !tbaa !3
  %sub.6.1.3 = sub i16 %1551, %call.i.6.1.3
  store i16 %sub.6.1.3, i16* %arrayidx9.6.1.3, align 2, !tbaa !3
  %add21.6.1.3 = add i16 %1551, %call.i.6.1.3
  store i16 %add21.6.1.3, i16* %arrayidx11.6.1.3, align 2, !tbaa !3
  %arrayidx9.6.4 = getelementptr inbounds i16, i16* %r, i64 18
  %1552 = load i16, i16* %arrayidx9.6.4, align 2, !tbaa !3
  %conv1.i.6.4 = sext i16 %1552 to i32
  %mul.i.6.4 = mul nsw i32 %conv1.i.6.4, -1251
  %call.i.6.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.4) #2
  %arrayidx11.6.4 = getelementptr inbounds i16, i16* %r, i64 16
  %1553 = load i16, i16* %arrayidx11.6.4, align 2, !tbaa !3
  %sub.6.4 = sub i16 %1553, %call.i.6.4
  store i16 %sub.6.4, i16* %arrayidx9.6.4, align 2, !tbaa !3
  %add21.6.4 = add i16 %1553, %call.i.6.4
  store i16 %add21.6.4, i16* %arrayidx11.6.4, align 2, !tbaa !3
  %arrayidx9.6.1.4 = getelementptr inbounds i16, i16* %r, i64 19
  %1554 = load i16, i16* %arrayidx9.6.1.4, align 2, !tbaa !3
  %conv1.i.6.1.4 = sext i16 %1554 to i32
  %mul.i.6.1.4 = mul nsw i32 %conv1.i.6.1.4, -1251
  %call.i.6.1.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.4) #2
  %arrayidx11.6.1.4 = getelementptr inbounds i16, i16* %r, i64 17
  %1555 = load i16, i16* %arrayidx11.6.1.4, align 2, !tbaa !3
  %sub.6.1.4 = sub i16 %1555, %call.i.6.1.4
  store i16 %sub.6.1.4, i16* %arrayidx9.6.1.4, align 2, !tbaa !3
  %add21.6.1.4 = add i16 %1555, %call.i.6.1.4
  store i16 %add21.6.1.4, i16* %arrayidx11.6.1.4, align 2, !tbaa !3
  %arrayidx9.6.5 = getelementptr inbounds i16, i16* %r, i64 22
  %1556 = load i16, i16* %arrayidx9.6.5, align 2, !tbaa !3
  %conv1.i.6.5 = sext i16 %1556 to i32
  %mul.i.6.5 = mul nsw i32 %conv1.i.6.5, 871
  %call.i.6.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.5) #2
  %arrayidx11.6.5 = getelementptr inbounds i16, i16* %r, i64 20
  %1557 = load i16, i16* %arrayidx11.6.5, align 2, !tbaa !3
  %sub.6.5 = sub i16 %1557, %call.i.6.5
  store i16 %sub.6.5, i16* %arrayidx9.6.5, align 2, !tbaa !3
  %add21.6.5 = add i16 %1557, %call.i.6.5
  store i16 %add21.6.5, i16* %arrayidx11.6.5, align 2, !tbaa !3
  %arrayidx9.6.1.5 = getelementptr inbounds i16, i16* %r, i64 23
  %1558 = load i16, i16* %arrayidx9.6.1.5, align 2, !tbaa !3
  %conv1.i.6.1.5 = sext i16 %1558 to i32
  %mul.i.6.1.5 = mul nsw i32 %conv1.i.6.1.5, 871
  %call.i.6.1.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.5) #2
  %arrayidx11.6.1.5 = getelementptr inbounds i16, i16* %r, i64 21
  %1559 = load i16, i16* %arrayidx11.6.1.5, align 2, !tbaa !3
  %sub.6.1.5 = sub i16 %1559, %call.i.6.1.5
  store i16 %sub.6.1.5, i16* %arrayidx9.6.1.5, align 2, !tbaa !3
  %add21.6.1.5 = add i16 %1559, %call.i.6.1.5
  store i16 %add21.6.1.5, i16* %arrayidx11.6.1.5, align 2, !tbaa !3
  %arrayidx9.6.6 = getelementptr inbounds i16, i16* %r, i64 26
  %1560 = load i16, i16* %arrayidx9.6.6, align 2, !tbaa !3
  %conv1.i.6.6 = sext i16 %1560 to i32
  %mul.i.6.6 = mul nsw i32 %conv1.i.6.6, 1550
  %call.i.6.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.6) #2
  %arrayidx11.6.6 = getelementptr inbounds i16, i16* %r, i64 24
  %1561 = load i16, i16* %arrayidx11.6.6, align 2, !tbaa !3
  %sub.6.6 = sub i16 %1561, %call.i.6.6
  store i16 %sub.6.6, i16* %arrayidx9.6.6, align 2, !tbaa !3
  %add21.6.6 = add i16 %1561, %call.i.6.6
  store i16 %add21.6.6, i16* %arrayidx11.6.6, align 2, !tbaa !3
  %arrayidx9.6.1.6 = getelementptr inbounds i16, i16* %r, i64 27
  %1562 = load i16, i16* %arrayidx9.6.1.6, align 2, !tbaa !3
  %conv1.i.6.1.6 = sext i16 %1562 to i32
  %mul.i.6.1.6 = mul nsw i32 %conv1.i.6.1.6, 1550
  %call.i.6.1.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.6) #2
  %arrayidx11.6.1.6 = getelementptr inbounds i16, i16* %r, i64 25
  %1563 = load i16, i16* %arrayidx11.6.1.6, align 2, !tbaa !3
  %sub.6.1.6 = sub i16 %1563, %call.i.6.1.6
  store i16 %sub.6.1.6, i16* %arrayidx9.6.1.6, align 2, !tbaa !3
  %add21.6.1.6 = add i16 %1563, %call.i.6.1.6
  store i16 %add21.6.1.6, i16* %arrayidx11.6.1.6, align 2, !tbaa !3
  %arrayidx9.6.7 = getelementptr inbounds i16, i16* %r, i64 30
  %1564 = load i16, i16* %arrayidx9.6.7, align 2, !tbaa !3
  %conv1.i.6.7 = sext i16 %1564 to i32
  %mul.i.6.7 = mul nsw i32 %conv1.i.6.7, 105
  %call.i.6.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.7) #2
  %arrayidx11.6.7 = getelementptr inbounds i16, i16* %r, i64 28
  %1565 = load i16, i16* %arrayidx11.6.7, align 2, !tbaa !3
  %sub.6.7 = sub i16 %1565, %call.i.6.7
  store i16 %sub.6.7, i16* %arrayidx9.6.7, align 2, !tbaa !3
  %add21.6.7 = add i16 %1565, %call.i.6.7
  store i16 %add21.6.7, i16* %arrayidx11.6.7, align 2, !tbaa !3
  %arrayidx9.6.1.7 = getelementptr inbounds i16, i16* %r, i64 31
  %1566 = load i16, i16* %arrayidx9.6.1.7, align 2, !tbaa !3
  %conv1.i.6.1.7 = sext i16 %1566 to i32
  %mul.i.6.1.7 = mul nsw i32 %conv1.i.6.1.7, 105
  %call.i.6.1.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.7) #2
  %arrayidx11.6.1.7 = getelementptr inbounds i16, i16* %r, i64 29
  %1567 = load i16, i16* %arrayidx11.6.1.7, align 2, !tbaa !3
  %sub.6.1.7 = sub i16 %1567, %call.i.6.1.7
  store i16 %sub.6.1.7, i16* %arrayidx9.6.1.7, align 2, !tbaa !3
  %add21.6.1.7 = add i16 %1567, %call.i.6.1.7
  store i16 %add21.6.1.7, i16* %arrayidx11.6.1.7, align 2, !tbaa !3
  %arrayidx9.6.8 = getelementptr inbounds i16, i16* %r, i64 34
  %1568 = load i16, i16* %arrayidx9.6.8, align 2, !tbaa !3
  %conv1.i.6.8 = sext i16 %1568 to i32
  %mul.i.6.8 = mul nsw i32 %conv1.i.6.8, 422
  %call.i.6.8 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.8) #2
  %arrayidx11.6.8 = getelementptr inbounds i16, i16* %r, i64 32
  %1569 = load i16, i16* %arrayidx11.6.8, align 2, !tbaa !3
  %sub.6.8 = sub i16 %1569, %call.i.6.8
  store i16 %sub.6.8, i16* %arrayidx9.6.8, align 2, !tbaa !3
  %add21.6.8 = add i16 %1569, %call.i.6.8
  store i16 %add21.6.8, i16* %arrayidx11.6.8, align 2, !tbaa !3
  %arrayidx9.6.1.8 = getelementptr inbounds i16, i16* %r, i64 35
  %1570 = load i16, i16* %arrayidx9.6.1.8, align 2, !tbaa !3
  %conv1.i.6.1.8 = sext i16 %1570 to i32
  %mul.i.6.1.8 = mul nsw i32 %conv1.i.6.1.8, 422
  %call.i.6.1.8 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.8) #2
  %arrayidx11.6.1.8 = getelementptr inbounds i16, i16* %r, i64 33
  %1571 = load i16, i16* %arrayidx11.6.1.8, align 2, !tbaa !3
  %sub.6.1.8 = sub i16 %1571, %call.i.6.1.8
  store i16 %sub.6.1.8, i16* %arrayidx9.6.1.8, align 2, !tbaa !3
  %add21.6.1.8 = add i16 %1571, %call.i.6.1.8
  store i16 %add21.6.1.8, i16* %arrayidx11.6.1.8, align 2, !tbaa !3
  %arrayidx9.6.9 = getelementptr inbounds i16, i16* %r, i64 38
  %1572 = load i16, i16* %arrayidx9.6.9, align 2, !tbaa !3
  %conv1.i.6.9 = sext i16 %1572 to i32
  %mul.i.6.9 = mul nsw i32 %conv1.i.6.9, 587
  %call.i.6.9 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.9) #2
  %arrayidx11.6.9 = getelementptr inbounds i16, i16* %r, i64 36
  %1573 = load i16, i16* %arrayidx11.6.9, align 2, !tbaa !3
  %sub.6.9 = sub i16 %1573, %call.i.6.9
  store i16 %sub.6.9, i16* %arrayidx9.6.9, align 2, !tbaa !3
  %add21.6.9 = add i16 %1573, %call.i.6.9
  store i16 %add21.6.9, i16* %arrayidx11.6.9, align 2, !tbaa !3
  %arrayidx9.6.1.9 = getelementptr inbounds i16, i16* %r, i64 39
  %1574 = load i16, i16* %arrayidx9.6.1.9, align 2, !tbaa !3
  %conv1.i.6.1.9 = sext i16 %1574 to i32
  %mul.i.6.1.9 = mul nsw i32 %conv1.i.6.1.9, 587
  %call.i.6.1.9 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.9) #2
  %arrayidx11.6.1.9 = getelementptr inbounds i16, i16* %r, i64 37
  %1575 = load i16, i16* %arrayidx11.6.1.9, align 2, !tbaa !3
  %sub.6.1.9 = sub i16 %1575, %call.i.6.1.9
  store i16 %sub.6.1.9, i16* %arrayidx9.6.1.9, align 2, !tbaa !3
  %add21.6.1.9 = add i16 %1575, %call.i.6.1.9
  store i16 %add21.6.1.9, i16* %arrayidx11.6.1.9, align 2, !tbaa !3
  %arrayidx9.6.10 = getelementptr inbounds i16, i16* %r, i64 42
  %1576 = load i16, i16* %arrayidx9.6.10, align 2, !tbaa !3
  %conv1.i.6.10 = sext i16 %1576 to i32
  %mul.i.6.10 = mul nsw i32 %conv1.i.6.10, 177
  %call.i.6.10 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.10) #2
  %arrayidx11.6.10 = getelementptr inbounds i16, i16* %r, i64 40
  %1577 = load i16, i16* %arrayidx11.6.10, align 2, !tbaa !3
  %sub.6.10 = sub i16 %1577, %call.i.6.10
  store i16 %sub.6.10, i16* %arrayidx9.6.10, align 2, !tbaa !3
  %add21.6.10 = add i16 %1577, %call.i.6.10
  store i16 %add21.6.10, i16* %arrayidx11.6.10, align 2, !tbaa !3
  %arrayidx9.6.1.10 = getelementptr inbounds i16, i16* %r, i64 43
  %1578 = load i16, i16* %arrayidx9.6.1.10, align 2, !tbaa !3
  %conv1.i.6.1.10 = sext i16 %1578 to i32
  %mul.i.6.1.10 = mul nsw i32 %conv1.i.6.1.10, 177
  %call.i.6.1.10 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.10) #2
  %arrayidx11.6.1.10 = getelementptr inbounds i16, i16* %r, i64 41
  %1579 = load i16, i16* %arrayidx11.6.1.10, align 2, !tbaa !3
  %sub.6.1.10 = sub i16 %1579, %call.i.6.1.10
  store i16 %sub.6.1.10, i16* %arrayidx9.6.1.10, align 2, !tbaa !3
  %add21.6.1.10 = add i16 %1579, %call.i.6.1.10
  store i16 %add21.6.1.10, i16* %arrayidx11.6.1.10, align 2, !tbaa !3
  %arrayidx9.6.11 = getelementptr inbounds i16, i16* %r, i64 46
  %1580 = load i16, i16* %arrayidx9.6.11, align 2, !tbaa !3
  %conv1.i.6.11 = sext i16 %1580 to i32
  %mul.i.6.11 = mul nsw i32 %conv1.i.6.11, -235
  %call.i.6.11 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.11) #2
  %arrayidx11.6.11 = getelementptr inbounds i16, i16* %r, i64 44
  %1581 = load i16, i16* %arrayidx11.6.11, align 2, !tbaa !3
  %sub.6.11 = sub i16 %1581, %call.i.6.11
  store i16 %sub.6.11, i16* %arrayidx9.6.11, align 2, !tbaa !3
  %add21.6.11 = add i16 %1581, %call.i.6.11
  store i16 %add21.6.11, i16* %arrayidx11.6.11, align 2, !tbaa !3
  %arrayidx9.6.1.11 = getelementptr inbounds i16, i16* %r, i64 47
  %1582 = load i16, i16* %arrayidx9.6.1.11, align 2, !tbaa !3
  %conv1.i.6.1.11 = sext i16 %1582 to i32
  %mul.i.6.1.11 = mul nsw i32 %conv1.i.6.1.11, -235
  %call.i.6.1.11 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.11) #2
  %arrayidx11.6.1.11 = getelementptr inbounds i16, i16* %r, i64 45
  %1583 = load i16, i16* %arrayidx11.6.1.11, align 2, !tbaa !3
  %sub.6.1.11 = sub i16 %1583, %call.i.6.1.11
  store i16 %sub.6.1.11, i16* %arrayidx9.6.1.11, align 2, !tbaa !3
  %add21.6.1.11 = add i16 %1583, %call.i.6.1.11
  store i16 %add21.6.1.11, i16* %arrayidx11.6.1.11, align 2, !tbaa !3
  %arrayidx9.6.12 = getelementptr inbounds i16, i16* %r, i64 50
  %1584 = load i16, i16* %arrayidx9.6.12, align 2, !tbaa !3
  %conv1.i.6.12 = sext i16 %1584 to i32
  %mul.i.6.12 = mul nsw i32 %conv1.i.6.12, -291
  %call.i.6.12 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.12) #2
  %arrayidx11.6.12 = getelementptr inbounds i16, i16* %r, i64 48
  %1585 = load i16, i16* %arrayidx11.6.12, align 2, !tbaa !3
  %sub.6.12 = sub i16 %1585, %call.i.6.12
  store i16 %sub.6.12, i16* %arrayidx9.6.12, align 2, !tbaa !3
  %add21.6.12 = add i16 %1585, %call.i.6.12
  store i16 %add21.6.12, i16* %arrayidx11.6.12, align 2, !tbaa !3
  %arrayidx9.6.1.12 = getelementptr inbounds i16, i16* %r, i64 51
  %1586 = load i16, i16* %arrayidx9.6.1.12, align 2, !tbaa !3
  %conv1.i.6.1.12 = sext i16 %1586 to i32
  %mul.i.6.1.12 = mul nsw i32 %conv1.i.6.1.12, -291
  %call.i.6.1.12 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.12) #2
  %arrayidx11.6.1.12 = getelementptr inbounds i16, i16* %r, i64 49
  %1587 = load i16, i16* %arrayidx11.6.1.12, align 2, !tbaa !3
  %sub.6.1.12 = sub i16 %1587, %call.i.6.1.12
  store i16 %sub.6.1.12, i16* %arrayidx9.6.1.12, align 2, !tbaa !3
  %add21.6.1.12 = add i16 %1587, %call.i.6.1.12
  store i16 %add21.6.1.12, i16* %arrayidx11.6.1.12, align 2, !tbaa !3
  %arrayidx9.6.13 = getelementptr inbounds i16, i16* %r, i64 54
  %1588 = load i16, i16* %arrayidx9.6.13, align 2, !tbaa !3
  %conv1.i.6.13 = sext i16 %1588 to i32
  %mul.i.6.13 = mul nsw i32 %conv1.i.6.13, -460
  %call.i.6.13 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.13) #2
  %arrayidx11.6.13 = getelementptr inbounds i16, i16* %r, i64 52
  %1589 = load i16, i16* %arrayidx11.6.13, align 2, !tbaa !3
  %sub.6.13 = sub i16 %1589, %call.i.6.13
  store i16 %sub.6.13, i16* %arrayidx9.6.13, align 2, !tbaa !3
  %add21.6.13 = add i16 %1589, %call.i.6.13
  store i16 %add21.6.13, i16* %arrayidx11.6.13, align 2, !tbaa !3
  %arrayidx9.6.1.13 = getelementptr inbounds i16, i16* %r, i64 55
  %1590 = load i16, i16* %arrayidx9.6.1.13, align 2, !tbaa !3
  %conv1.i.6.1.13 = sext i16 %1590 to i32
  %mul.i.6.1.13 = mul nsw i32 %conv1.i.6.1.13, -460
  %call.i.6.1.13 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.13) #2
  %arrayidx11.6.1.13 = getelementptr inbounds i16, i16* %r, i64 53
  %1591 = load i16, i16* %arrayidx11.6.1.13, align 2, !tbaa !3
  %sub.6.1.13 = sub i16 %1591, %call.i.6.1.13
  store i16 %sub.6.1.13, i16* %arrayidx9.6.1.13, align 2, !tbaa !3
  %add21.6.1.13 = add i16 %1591, %call.i.6.1.13
  store i16 %add21.6.1.13, i16* %arrayidx11.6.1.13, align 2, !tbaa !3
  %arrayidx9.6.14 = getelementptr inbounds i16, i16* %r, i64 58
  %1592 = load i16, i16* %arrayidx9.6.14, align 2, !tbaa !3
  %conv1.i.6.14 = sext i16 %1592 to i32
  %mul.i.6.14 = mul nsw i32 %conv1.i.6.14, 1574
  %call.i.6.14 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.14) #2
  %arrayidx11.6.14 = getelementptr inbounds i16, i16* %r, i64 56
  %1593 = load i16, i16* %arrayidx11.6.14, align 2, !tbaa !3
  %sub.6.14 = sub i16 %1593, %call.i.6.14
  store i16 %sub.6.14, i16* %arrayidx9.6.14, align 2, !tbaa !3
  %add21.6.14 = add i16 %1593, %call.i.6.14
  store i16 %add21.6.14, i16* %arrayidx11.6.14, align 2, !tbaa !3
  %arrayidx9.6.1.14 = getelementptr inbounds i16, i16* %r, i64 59
  %1594 = load i16, i16* %arrayidx9.6.1.14, align 2, !tbaa !3
  %conv1.i.6.1.14 = sext i16 %1594 to i32
  %mul.i.6.1.14 = mul nsw i32 %conv1.i.6.1.14, 1574
  %call.i.6.1.14 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.14) #2
  %arrayidx11.6.1.14 = getelementptr inbounds i16, i16* %r, i64 57
  %1595 = load i16, i16* %arrayidx11.6.1.14, align 2, !tbaa !3
  %sub.6.1.14 = sub i16 %1595, %call.i.6.1.14
  store i16 %sub.6.1.14, i16* %arrayidx9.6.1.14, align 2, !tbaa !3
  %add21.6.1.14 = add i16 %1595, %call.i.6.1.14
  store i16 %add21.6.1.14, i16* %arrayidx11.6.1.14, align 2, !tbaa !3
  %arrayidx9.6.15 = getelementptr inbounds i16, i16* %r, i64 62
  %1596 = load i16, i16* %arrayidx9.6.15, align 2, !tbaa !3
  %conv1.i.6.15 = sext i16 %1596 to i32
  %mul.i.6.15 = mul nsw i32 %conv1.i.6.15, 1653
  %call.i.6.15 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.15) #2
  %arrayidx11.6.15 = getelementptr inbounds i16, i16* %r, i64 60
  %1597 = load i16, i16* %arrayidx11.6.15, align 2, !tbaa !3
  %sub.6.15 = sub i16 %1597, %call.i.6.15
  store i16 %sub.6.15, i16* %arrayidx9.6.15, align 2, !tbaa !3
  %add21.6.15 = add i16 %1597, %call.i.6.15
  store i16 %add21.6.15, i16* %arrayidx11.6.15, align 2, !tbaa !3
  %arrayidx9.6.1.15 = getelementptr inbounds i16, i16* %r, i64 63
  %1598 = load i16, i16* %arrayidx9.6.1.15, align 2, !tbaa !3
  %conv1.i.6.1.15 = sext i16 %1598 to i32
  %mul.i.6.1.15 = mul nsw i32 %conv1.i.6.1.15, 1653
  %call.i.6.1.15 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.15) #2
  %arrayidx11.6.1.15 = getelementptr inbounds i16, i16* %r, i64 61
  %1599 = load i16, i16* %arrayidx11.6.1.15, align 2, !tbaa !3
  %sub.6.1.15 = sub i16 %1599, %call.i.6.1.15
  store i16 %sub.6.1.15, i16* %arrayidx9.6.1.15, align 2, !tbaa !3
  %add21.6.1.15 = add i16 %1599, %call.i.6.1.15
  store i16 %add21.6.1.15, i16* %arrayidx11.6.1.15, align 2, !tbaa !3
  %arrayidx9.6.16 = getelementptr inbounds i16, i16* %r, i64 66
  %1600 = load i16, i16* %arrayidx9.6.16, align 2, !tbaa !3
  %conv1.i.6.16 = sext i16 %1600 to i32
  %mul.i.6.16 = mul nsw i32 %conv1.i.6.16, -246
  %call.i.6.16 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.16) #2
  %arrayidx11.6.16 = getelementptr inbounds i16, i16* %r, i64 64
  %1601 = load i16, i16* %arrayidx11.6.16, align 2, !tbaa !3
  %sub.6.16 = sub i16 %1601, %call.i.6.16
  store i16 %sub.6.16, i16* %arrayidx9.6.16, align 2, !tbaa !3
  %add21.6.16 = add i16 %1601, %call.i.6.16
  store i16 %add21.6.16, i16* %arrayidx11.6.16, align 2, !tbaa !3
  %arrayidx9.6.1.16 = getelementptr inbounds i16, i16* %r, i64 67
  %1602 = load i16, i16* %arrayidx9.6.1.16, align 2, !tbaa !3
  %conv1.i.6.1.16 = sext i16 %1602 to i32
  %mul.i.6.1.16 = mul nsw i32 %conv1.i.6.1.16, -246
  %call.i.6.1.16 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.16) #2
  %arrayidx11.6.1.16 = getelementptr inbounds i16, i16* %r, i64 65
  %1603 = load i16, i16* %arrayidx11.6.1.16, align 2, !tbaa !3
  %sub.6.1.16 = sub i16 %1603, %call.i.6.1.16
  store i16 %sub.6.1.16, i16* %arrayidx9.6.1.16, align 2, !tbaa !3
  %add21.6.1.16 = add i16 %1603, %call.i.6.1.16
  store i16 %add21.6.1.16, i16* %arrayidx11.6.1.16, align 2, !tbaa !3
  %arrayidx9.6.17 = getelementptr inbounds i16, i16* %r, i64 70
  %1604 = load i16, i16* %arrayidx9.6.17, align 2, !tbaa !3
  %conv1.i.6.17 = sext i16 %1604 to i32
  %mul.i.6.17 = mul nsw i32 %conv1.i.6.17, 778
  %call.i.6.17 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.17) #2
  %arrayidx11.6.17 = getelementptr inbounds i16, i16* %r, i64 68
  %1605 = load i16, i16* %arrayidx11.6.17, align 2, !tbaa !3
  %sub.6.17 = sub i16 %1605, %call.i.6.17
  store i16 %sub.6.17, i16* %arrayidx9.6.17, align 2, !tbaa !3
  %add21.6.17 = add i16 %1605, %call.i.6.17
  store i16 %add21.6.17, i16* %arrayidx11.6.17, align 2, !tbaa !3
  %arrayidx9.6.1.17 = getelementptr inbounds i16, i16* %r, i64 71
  %1606 = load i16, i16* %arrayidx9.6.1.17, align 2, !tbaa !3
  %conv1.i.6.1.17 = sext i16 %1606 to i32
  %mul.i.6.1.17 = mul nsw i32 %conv1.i.6.1.17, 778
  %call.i.6.1.17 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.17) #2
  %arrayidx11.6.1.17 = getelementptr inbounds i16, i16* %r, i64 69
  %1607 = load i16, i16* %arrayidx11.6.1.17, align 2, !tbaa !3
  %sub.6.1.17 = sub i16 %1607, %call.i.6.1.17
  store i16 %sub.6.1.17, i16* %arrayidx9.6.1.17, align 2, !tbaa !3
  %add21.6.1.17 = add i16 %1607, %call.i.6.1.17
  store i16 %add21.6.1.17, i16* %arrayidx11.6.1.17, align 2, !tbaa !3
  %arrayidx9.6.18 = getelementptr inbounds i16, i16* %r, i64 74
  %1608 = load i16, i16* %arrayidx9.6.18, align 2, !tbaa !3
  %conv1.i.6.18 = sext i16 %1608 to i32
  %mul.i.6.18 = mul nsw i32 %conv1.i.6.18, 1159
  %call.i.6.18 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.18) #2
  %arrayidx11.6.18 = getelementptr inbounds i16, i16* %r, i64 72
  %1609 = load i16, i16* %arrayidx11.6.18, align 2, !tbaa !3
  %sub.6.18 = sub i16 %1609, %call.i.6.18
  store i16 %sub.6.18, i16* %arrayidx9.6.18, align 2, !tbaa !3
  %add21.6.18 = add i16 %1609, %call.i.6.18
  store i16 %add21.6.18, i16* %arrayidx11.6.18, align 2, !tbaa !3
  %arrayidx9.6.1.18 = getelementptr inbounds i16, i16* %r, i64 75
  %1610 = load i16, i16* %arrayidx9.6.1.18, align 2, !tbaa !3
  %conv1.i.6.1.18 = sext i16 %1610 to i32
  %mul.i.6.1.18 = mul nsw i32 %conv1.i.6.1.18, 1159
  %call.i.6.1.18 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.18) #2
  %arrayidx11.6.1.18 = getelementptr inbounds i16, i16* %r, i64 73
  %1611 = load i16, i16* %arrayidx11.6.1.18, align 2, !tbaa !3
  %sub.6.1.18 = sub i16 %1611, %call.i.6.1.18
  store i16 %sub.6.1.18, i16* %arrayidx9.6.1.18, align 2, !tbaa !3
  %add21.6.1.18 = add i16 %1611, %call.i.6.1.18
  store i16 %add21.6.1.18, i16* %arrayidx11.6.1.18, align 2, !tbaa !3
  %arrayidx9.6.19 = getelementptr inbounds i16, i16* %r, i64 78
  %1612 = load i16, i16* %arrayidx9.6.19, align 2, !tbaa !3
  %conv1.i.6.19 = sext i16 %1612 to i32
  %mul.i.6.19 = mul nsw i32 %conv1.i.6.19, -147
  %call.i.6.19 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.19) #2
  %arrayidx11.6.19 = getelementptr inbounds i16, i16* %r, i64 76
  %1613 = load i16, i16* %arrayidx11.6.19, align 2, !tbaa !3
  %sub.6.19 = sub i16 %1613, %call.i.6.19
  store i16 %sub.6.19, i16* %arrayidx9.6.19, align 2, !tbaa !3
  %add21.6.19 = add i16 %1613, %call.i.6.19
  store i16 %add21.6.19, i16* %arrayidx11.6.19, align 2, !tbaa !3
  %arrayidx9.6.1.19 = getelementptr inbounds i16, i16* %r, i64 79
  %1614 = load i16, i16* %arrayidx9.6.1.19, align 2, !tbaa !3
  %conv1.i.6.1.19 = sext i16 %1614 to i32
  %mul.i.6.1.19 = mul nsw i32 %conv1.i.6.1.19, -147
  %call.i.6.1.19 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.19) #2
  %arrayidx11.6.1.19 = getelementptr inbounds i16, i16* %r, i64 77
  %1615 = load i16, i16* %arrayidx11.6.1.19, align 2, !tbaa !3
  %sub.6.1.19 = sub i16 %1615, %call.i.6.1.19
  store i16 %sub.6.1.19, i16* %arrayidx9.6.1.19, align 2, !tbaa !3
  %add21.6.1.19 = add i16 %1615, %call.i.6.1.19
  store i16 %add21.6.1.19, i16* %arrayidx11.6.1.19, align 2, !tbaa !3
  %arrayidx9.6.20 = getelementptr inbounds i16, i16* %r, i64 82
  %1616 = load i16, i16* %arrayidx9.6.20, align 2, !tbaa !3
  %conv1.i.6.20 = sext i16 %1616 to i32
  %mul.i.6.20 = mul nsw i32 %conv1.i.6.20, -777
  %call.i.6.20 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.20) #2
  %arrayidx11.6.20 = getelementptr inbounds i16, i16* %r, i64 80
  %1617 = load i16, i16* %arrayidx11.6.20, align 2, !tbaa !3
  %sub.6.20 = sub i16 %1617, %call.i.6.20
  store i16 %sub.6.20, i16* %arrayidx9.6.20, align 2, !tbaa !3
  %add21.6.20 = add i16 %1617, %call.i.6.20
  store i16 %add21.6.20, i16* %arrayidx11.6.20, align 2, !tbaa !3
  %arrayidx9.6.1.20 = getelementptr inbounds i16, i16* %r, i64 83
  %1618 = load i16, i16* %arrayidx9.6.1.20, align 2, !tbaa !3
  %conv1.i.6.1.20 = sext i16 %1618 to i32
  %mul.i.6.1.20 = mul nsw i32 %conv1.i.6.1.20, -777
  %call.i.6.1.20 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.20) #2
  %arrayidx11.6.1.20 = getelementptr inbounds i16, i16* %r, i64 81
  %1619 = load i16, i16* %arrayidx11.6.1.20, align 2, !tbaa !3
  %sub.6.1.20 = sub i16 %1619, %call.i.6.1.20
  store i16 %sub.6.1.20, i16* %arrayidx9.6.1.20, align 2, !tbaa !3
  %add21.6.1.20 = add i16 %1619, %call.i.6.1.20
  store i16 %add21.6.1.20, i16* %arrayidx11.6.1.20, align 2, !tbaa !3
  %arrayidx9.6.21 = getelementptr inbounds i16, i16* %r, i64 86
  %1620 = load i16, i16* %arrayidx9.6.21, align 2, !tbaa !3
  %conv1.i.6.21 = sext i16 %1620 to i32
  %mul.i.6.21 = mul nsw i32 %conv1.i.6.21, 1483
  %call.i.6.21 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.21) #2
  %arrayidx11.6.21 = getelementptr inbounds i16, i16* %r, i64 84
  %1621 = load i16, i16* %arrayidx11.6.21, align 2, !tbaa !3
  %sub.6.21 = sub i16 %1621, %call.i.6.21
  store i16 %sub.6.21, i16* %arrayidx9.6.21, align 2, !tbaa !3
  %add21.6.21 = add i16 %1621, %call.i.6.21
  store i16 %add21.6.21, i16* %arrayidx11.6.21, align 2, !tbaa !3
  %arrayidx9.6.1.21 = getelementptr inbounds i16, i16* %r, i64 87
  %1622 = load i16, i16* %arrayidx9.6.1.21, align 2, !tbaa !3
  %conv1.i.6.1.21 = sext i16 %1622 to i32
  %mul.i.6.1.21 = mul nsw i32 %conv1.i.6.1.21, 1483
  %call.i.6.1.21 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.21) #2
  %arrayidx11.6.1.21 = getelementptr inbounds i16, i16* %r, i64 85
  %1623 = load i16, i16* %arrayidx11.6.1.21, align 2, !tbaa !3
  %sub.6.1.21 = sub i16 %1623, %call.i.6.1.21
  store i16 %sub.6.1.21, i16* %arrayidx9.6.1.21, align 2, !tbaa !3
  %add21.6.1.21 = add i16 %1623, %call.i.6.1.21
  store i16 %add21.6.1.21, i16* %arrayidx11.6.1.21, align 2, !tbaa !3
  %arrayidx9.6.22 = getelementptr inbounds i16, i16* %r, i64 90
  %1624 = load i16, i16* %arrayidx9.6.22, align 2, !tbaa !3
  %conv1.i.6.22 = sext i16 %1624 to i32
  %mul.i.6.22 = mul nsw i32 %conv1.i.6.22, -602
  %call.i.6.22 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.22) #2
  %arrayidx11.6.22 = getelementptr inbounds i16, i16* %r, i64 88
  %1625 = load i16, i16* %arrayidx11.6.22, align 2, !tbaa !3
  %sub.6.22 = sub i16 %1625, %call.i.6.22
  store i16 %sub.6.22, i16* %arrayidx9.6.22, align 2, !tbaa !3
  %add21.6.22 = add i16 %1625, %call.i.6.22
  store i16 %add21.6.22, i16* %arrayidx11.6.22, align 2, !tbaa !3
  %arrayidx9.6.1.22 = getelementptr inbounds i16, i16* %r, i64 91
  %1626 = load i16, i16* %arrayidx9.6.1.22, align 2, !tbaa !3
  %conv1.i.6.1.22 = sext i16 %1626 to i32
  %mul.i.6.1.22 = mul nsw i32 %conv1.i.6.1.22, -602
  %call.i.6.1.22 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.22) #2
  %arrayidx11.6.1.22 = getelementptr inbounds i16, i16* %r, i64 89
  %1627 = load i16, i16* %arrayidx11.6.1.22, align 2, !tbaa !3
  %sub.6.1.22 = sub i16 %1627, %call.i.6.1.22
  store i16 %sub.6.1.22, i16* %arrayidx9.6.1.22, align 2, !tbaa !3
  %add21.6.1.22 = add i16 %1627, %call.i.6.1.22
  store i16 %add21.6.1.22, i16* %arrayidx11.6.1.22, align 2, !tbaa !3
  %arrayidx9.6.23 = getelementptr inbounds i16, i16* %r, i64 94
  %1628 = load i16, i16* %arrayidx9.6.23, align 2, !tbaa !3
  %conv1.i.6.23 = sext i16 %1628 to i32
  %mul.i.6.23 = mul nsw i32 %conv1.i.6.23, 1119
  %call.i.6.23 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.23) #2
  %arrayidx11.6.23 = getelementptr inbounds i16, i16* %r, i64 92
  %1629 = load i16, i16* %arrayidx11.6.23, align 2, !tbaa !3
  %sub.6.23 = sub i16 %1629, %call.i.6.23
  store i16 %sub.6.23, i16* %arrayidx9.6.23, align 2, !tbaa !3
  %add21.6.23 = add i16 %1629, %call.i.6.23
  store i16 %add21.6.23, i16* %arrayidx11.6.23, align 2, !tbaa !3
  %arrayidx9.6.1.23 = getelementptr inbounds i16, i16* %r, i64 95
  %1630 = load i16, i16* %arrayidx9.6.1.23, align 2, !tbaa !3
  %conv1.i.6.1.23 = sext i16 %1630 to i32
  %mul.i.6.1.23 = mul nsw i32 %conv1.i.6.1.23, 1119
  %call.i.6.1.23 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.23) #2
  %arrayidx11.6.1.23 = getelementptr inbounds i16, i16* %r, i64 93
  %1631 = load i16, i16* %arrayidx11.6.1.23, align 2, !tbaa !3
  %sub.6.1.23 = sub i16 %1631, %call.i.6.1.23
  store i16 %sub.6.1.23, i16* %arrayidx9.6.1.23, align 2, !tbaa !3
  %add21.6.1.23 = add i16 %1631, %call.i.6.1.23
  store i16 %add21.6.1.23, i16* %arrayidx11.6.1.23, align 2, !tbaa !3
  %arrayidx9.6.24 = getelementptr inbounds i16, i16* %r, i64 98
  %1632 = load i16, i16* %arrayidx9.6.24, align 2, !tbaa !3
  %conv1.i.6.24 = sext i16 %1632 to i32
  %mul.i.6.24 = mul nsw i32 %conv1.i.6.24, -1590
  %call.i.6.24 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.24) #2
  %arrayidx11.6.24 = getelementptr inbounds i16, i16* %r, i64 96
  %1633 = load i16, i16* %arrayidx11.6.24, align 2, !tbaa !3
  %sub.6.24 = sub i16 %1633, %call.i.6.24
  store i16 %sub.6.24, i16* %arrayidx9.6.24, align 2, !tbaa !3
  %add21.6.24 = add i16 %1633, %call.i.6.24
  store i16 %add21.6.24, i16* %arrayidx11.6.24, align 2, !tbaa !3
  %arrayidx9.6.1.24 = getelementptr inbounds i16, i16* %r, i64 99
  %1634 = load i16, i16* %arrayidx9.6.1.24, align 2, !tbaa !3
  %conv1.i.6.1.24 = sext i16 %1634 to i32
  %mul.i.6.1.24 = mul nsw i32 %conv1.i.6.1.24, -1590
  %call.i.6.1.24 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.24) #2
  %arrayidx11.6.1.24 = getelementptr inbounds i16, i16* %r, i64 97
  %1635 = load i16, i16* %arrayidx11.6.1.24, align 2, !tbaa !3
  %sub.6.1.24 = sub i16 %1635, %call.i.6.1.24
  store i16 %sub.6.1.24, i16* %arrayidx9.6.1.24, align 2, !tbaa !3
  %add21.6.1.24 = add i16 %1635, %call.i.6.1.24
  store i16 %add21.6.1.24, i16* %arrayidx11.6.1.24, align 2, !tbaa !3
  %arrayidx9.6.25 = getelementptr inbounds i16, i16* %r, i64 102
  %1636 = load i16, i16* %arrayidx9.6.25, align 2, !tbaa !3
  %conv1.i.6.25 = sext i16 %1636 to i32
  %mul.i.6.25 = mul nsw i32 %conv1.i.6.25, 644
  %call.i.6.25 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.25) #2
  %arrayidx11.6.25 = getelementptr inbounds i16, i16* %r, i64 100
  %1637 = load i16, i16* %arrayidx11.6.25, align 2, !tbaa !3
  %sub.6.25 = sub i16 %1637, %call.i.6.25
  store i16 %sub.6.25, i16* %arrayidx9.6.25, align 2, !tbaa !3
  %add21.6.25 = add i16 %1637, %call.i.6.25
  store i16 %add21.6.25, i16* %arrayidx11.6.25, align 2, !tbaa !3
  %arrayidx9.6.1.25 = getelementptr inbounds i16, i16* %r, i64 103
  %1638 = load i16, i16* %arrayidx9.6.1.25, align 2, !tbaa !3
  %conv1.i.6.1.25 = sext i16 %1638 to i32
  %mul.i.6.1.25 = mul nsw i32 %conv1.i.6.1.25, 644
  %call.i.6.1.25 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.25) #2
  %arrayidx11.6.1.25 = getelementptr inbounds i16, i16* %r, i64 101
  %1639 = load i16, i16* %arrayidx11.6.1.25, align 2, !tbaa !3
  %sub.6.1.25 = sub i16 %1639, %call.i.6.1.25
  store i16 %sub.6.1.25, i16* %arrayidx9.6.1.25, align 2, !tbaa !3
  %add21.6.1.25 = add i16 %1639, %call.i.6.1.25
  store i16 %add21.6.1.25, i16* %arrayidx11.6.1.25, align 2, !tbaa !3
  %arrayidx9.6.26 = getelementptr inbounds i16, i16* %r, i64 106
  %1640 = load i16, i16* %arrayidx9.6.26, align 2, !tbaa !3
  %conv1.i.6.26 = sext i16 %1640 to i32
  %mul.i.6.26 = mul nsw i32 %conv1.i.6.26, -872
  %call.i.6.26 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.26) #2
  %arrayidx11.6.26 = getelementptr inbounds i16, i16* %r, i64 104
  %1641 = load i16, i16* %arrayidx11.6.26, align 2, !tbaa !3
  %sub.6.26 = sub i16 %1641, %call.i.6.26
  store i16 %sub.6.26, i16* %arrayidx9.6.26, align 2, !tbaa !3
  %add21.6.26 = add i16 %1641, %call.i.6.26
  store i16 %add21.6.26, i16* %arrayidx11.6.26, align 2, !tbaa !3
  %arrayidx9.6.1.26 = getelementptr inbounds i16, i16* %r, i64 107
  %1642 = load i16, i16* %arrayidx9.6.1.26, align 2, !tbaa !3
  %conv1.i.6.1.26 = sext i16 %1642 to i32
  %mul.i.6.1.26 = mul nsw i32 %conv1.i.6.1.26, -872
  %call.i.6.1.26 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.26) #2
  %arrayidx11.6.1.26 = getelementptr inbounds i16, i16* %r, i64 105
  %1643 = load i16, i16* %arrayidx11.6.1.26, align 2, !tbaa !3
  %sub.6.1.26 = sub i16 %1643, %call.i.6.1.26
  store i16 %sub.6.1.26, i16* %arrayidx9.6.1.26, align 2, !tbaa !3
  %add21.6.1.26 = add i16 %1643, %call.i.6.1.26
  store i16 %add21.6.1.26, i16* %arrayidx11.6.1.26, align 2, !tbaa !3
  %arrayidx9.6.27 = getelementptr inbounds i16, i16* %r, i64 110
  %1644 = load i16, i16* %arrayidx9.6.27, align 2, !tbaa !3
  %conv1.i.6.27 = sext i16 %1644 to i32
  %mul.i.6.27 = mul nsw i32 %conv1.i.6.27, 349
  %call.i.6.27 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.27) #2
  %arrayidx11.6.27 = getelementptr inbounds i16, i16* %r, i64 108
  %1645 = load i16, i16* %arrayidx11.6.27, align 2, !tbaa !3
  %sub.6.27 = sub i16 %1645, %call.i.6.27
  store i16 %sub.6.27, i16* %arrayidx9.6.27, align 2, !tbaa !3
  %add21.6.27 = add i16 %1645, %call.i.6.27
  store i16 %add21.6.27, i16* %arrayidx11.6.27, align 2, !tbaa !3
  %arrayidx9.6.1.27 = getelementptr inbounds i16, i16* %r, i64 111
  %1646 = load i16, i16* %arrayidx9.6.1.27, align 2, !tbaa !3
  %conv1.i.6.1.27 = sext i16 %1646 to i32
  %mul.i.6.1.27 = mul nsw i32 %conv1.i.6.1.27, 349
  %call.i.6.1.27 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.27) #2
  %arrayidx11.6.1.27 = getelementptr inbounds i16, i16* %r, i64 109
  %1647 = load i16, i16* %arrayidx11.6.1.27, align 2, !tbaa !3
  %sub.6.1.27 = sub i16 %1647, %call.i.6.1.27
  store i16 %sub.6.1.27, i16* %arrayidx9.6.1.27, align 2, !tbaa !3
  %add21.6.1.27 = add i16 %1647, %call.i.6.1.27
  store i16 %add21.6.1.27, i16* %arrayidx11.6.1.27, align 2, !tbaa !3
  %arrayidx9.6.28 = getelementptr inbounds i16, i16* %r, i64 114
  %1648 = load i16, i16* %arrayidx9.6.28, align 2, !tbaa !3
  %conv1.i.6.28 = sext i16 %1648 to i32
  %mul.i.6.28 = mul nsw i32 %conv1.i.6.28, 418
  %call.i.6.28 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.28) #2
  %arrayidx11.6.28 = getelementptr inbounds i16, i16* %r, i64 112
  %1649 = load i16, i16* %arrayidx11.6.28, align 2, !tbaa !3
  %sub.6.28 = sub i16 %1649, %call.i.6.28
  store i16 %sub.6.28, i16* %arrayidx9.6.28, align 2, !tbaa !3
  %add21.6.28 = add i16 %1649, %call.i.6.28
  store i16 %add21.6.28, i16* %arrayidx11.6.28, align 2, !tbaa !3
  %arrayidx9.6.1.28 = getelementptr inbounds i16, i16* %r, i64 115
  %1650 = load i16, i16* %arrayidx9.6.1.28, align 2, !tbaa !3
  %conv1.i.6.1.28 = sext i16 %1650 to i32
  %mul.i.6.1.28 = mul nsw i32 %conv1.i.6.1.28, 418
  %call.i.6.1.28 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.28) #2
  %arrayidx11.6.1.28 = getelementptr inbounds i16, i16* %r, i64 113
  %1651 = load i16, i16* %arrayidx11.6.1.28, align 2, !tbaa !3
  %sub.6.1.28 = sub i16 %1651, %call.i.6.1.28
  store i16 %sub.6.1.28, i16* %arrayidx9.6.1.28, align 2, !tbaa !3
  %add21.6.1.28 = add i16 %1651, %call.i.6.1.28
  store i16 %add21.6.1.28, i16* %arrayidx11.6.1.28, align 2, !tbaa !3
  %arrayidx9.6.29 = getelementptr inbounds i16, i16* %r, i64 118
  %1652 = load i16, i16* %arrayidx9.6.29, align 2, !tbaa !3
  %conv1.i.6.29 = sext i16 %1652 to i32
  %mul.i.6.29 = mul nsw i32 %conv1.i.6.29, 329
  %call.i.6.29 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.29) #2
  %arrayidx11.6.29 = getelementptr inbounds i16, i16* %r, i64 116
  %1653 = load i16, i16* %arrayidx11.6.29, align 2, !tbaa !3
  %sub.6.29 = sub i16 %1653, %call.i.6.29
  store i16 %sub.6.29, i16* %arrayidx9.6.29, align 2, !tbaa !3
  %add21.6.29 = add i16 %1653, %call.i.6.29
  store i16 %add21.6.29, i16* %arrayidx11.6.29, align 2, !tbaa !3
  %arrayidx9.6.1.29 = getelementptr inbounds i16, i16* %r, i64 119
  %1654 = load i16, i16* %arrayidx9.6.1.29, align 2, !tbaa !3
  %conv1.i.6.1.29 = sext i16 %1654 to i32
  %mul.i.6.1.29 = mul nsw i32 %conv1.i.6.1.29, 329
  %call.i.6.1.29 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.29) #2
  %arrayidx11.6.1.29 = getelementptr inbounds i16, i16* %r, i64 117
  %1655 = load i16, i16* %arrayidx11.6.1.29, align 2, !tbaa !3
  %sub.6.1.29 = sub i16 %1655, %call.i.6.1.29
  store i16 %sub.6.1.29, i16* %arrayidx9.6.1.29, align 2, !tbaa !3
  %add21.6.1.29 = add i16 %1655, %call.i.6.1.29
  store i16 %add21.6.1.29, i16* %arrayidx11.6.1.29, align 2, !tbaa !3
  %arrayidx9.6.30 = getelementptr inbounds i16, i16* %r, i64 122
  %1656 = load i16, i16* %arrayidx9.6.30, align 2, !tbaa !3
  %conv1.i.6.30 = sext i16 %1656 to i32
  %mul.i.6.30 = mul nsw i32 %conv1.i.6.30, -156
  %call.i.6.30 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.30) #2
  %arrayidx11.6.30 = getelementptr inbounds i16, i16* %r, i64 120
  %1657 = load i16, i16* %arrayidx11.6.30, align 2, !tbaa !3
  %sub.6.30 = sub i16 %1657, %call.i.6.30
  store i16 %sub.6.30, i16* %arrayidx9.6.30, align 2, !tbaa !3
  %add21.6.30 = add i16 %1657, %call.i.6.30
  store i16 %add21.6.30, i16* %arrayidx11.6.30, align 2, !tbaa !3
  %arrayidx9.6.1.30 = getelementptr inbounds i16, i16* %r, i64 123
  %1658 = load i16, i16* %arrayidx9.6.1.30, align 2, !tbaa !3
  %conv1.i.6.1.30 = sext i16 %1658 to i32
  %mul.i.6.1.30 = mul nsw i32 %conv1.i.6.1.30, -156
  %call.i.6.1.30 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.30) #2
  %arrayidx11.6.1.30 = getelementptr inbounds i16, i16* %r, i64 121
  %1659 = load i16, i16* %arrayidx11.6.1.30, align 2, !tbaa !3
  %sub.6.1.30 = sub i16 %1659, %call.i.6.1.30
  store i16 %sub.6.1.30, i16* %arrayidx9.6.1.30, align 2, !tbaa !3
  %add21.6.1.30 = add i16 %1659, %call.i.6.1.30
  store i16 %add21.6.1.30, i16* %arrayidx11.6.1.30, align 2, !tbaa !3
  %arrayidx9.6.31 = getelementptr inbounds i16, i16* %r, i64 126
  %1660 = load i16, i16* %arrayidx9.6.31, align 2, !tbaa !3
  %conv1.i.6.31 = sext i16 %1660 to i32
  %mul.i.6.31 = mul nsw i32 %conv1.i.6.31, -75
  %call.i.6.31 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.31) #2
  %arrayidx11.6.31 = getelementptr inbounds i16, i16* %r, i64 124
  %1661 = load i16, i16* %arrayidx11.6.31, align 2, !tbaa !3
  %sub.6.31 = sub i16 %1661, %call.i.6.31
  store i16 %sub.6.31, i16* %arrayidx9.6.31, align 2, !tbaa !3
  %add21.6.31 = add i16 %1661, %call.i.6.31
  store i16 %add21.6.31, i16* %arrayidx11.6.31, align 2, !tbaa !3
  %arrayidx9.6.1.31 = getelementptr inbounds i16, i16* %r, i64 127
  %1662 = load i16, i16* %arrayidx9.6.1.31, align 2, !tbaa !3
  %conv1.i.6.1.31 = sext i16 %1662 to i32
  %mul.i.6.1.31 = mul nsw i32 %conv1.i.6.1.31, -75
  %call.i.6.1.31 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.31) #2
  %arrayidx11.6.1.31 = getelementptr inbounds i16, i16* %r, i64 125
  %1663 = load i16, i16* %arrayidx11.6.1.31, align 2, !tbaa !3
  %sub.6.1.31 = sub i16 %1663, %call.i.6.1.31
  store i16 %sub.6.1.31, i16* %arrayidx9.6.1.31, align 2, !tbaa !3
  %add21.6.1.31 = add i16 %1663, %call.i.6.1.31
  store i16 %add21.6.1.31, i16* %arrayidx11.6.1.31, align 2, !tbaa !3
  %arrayidx9.6.32 = getelementptr inbounds i16, i16* %r, i64 130
  %1664 = load i16, i16* %arrayidx9.6.32, align 2, !tbaa !3
  %conv1.i.6.32 = sext i16 %1664 to i32
  %mul.i.6.32 = mul nsw i32 %conv1.i.6.32, 817
  %call.i.6.32 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.32) #2
  %arrayidx11.6.32 = getelementptr inbounds i16, i16* %r, i64 128
  %1665 = load i16, i16* %arrayidx11.6.32, align 2, !tbaa !3
  %sub.6.32 = sub i16 %1665, %call.i.6.32
  store i16 %sub.6.32, i16* %arrayidx9.6.32, align 2, !tbaa !3
  %add21.6.32 = add i16 %1665, %call.i.6.32
  store i16 %add21.6.32, i16* %arrayidx11.6.32, align 2, !tbaa !3
  %arrayidx9.6.1.32 = getelementptr inbounds i16, i16* %r, i64 131
  %1666 = load i16, i16* %arrayidx9.6.1.32, align 2, !tbaa !3
  %conv1.i.6.1.32 = sext i16 %1666 to i32
  %mul.i.6.1.32 = mul nsw i32 %conv1.i.6.1.32, 817
  %call.i.6.1.32 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.32) #2
  %arrayidx11.6.1.32 = getelementptr inbounds i16, i16* %r, i64 129
  %1667 = load i16, i16* %arrayidx11.6.1.32, align 2, !tbaa !3
  %sub.6.1.32 = sub i16 %1667, %call.i.6.1.32
  store i16 %sub.6.1.32, i16* %arrayidx9.6.1.32, align 2, !tbaa !3
  %add21.6.1.32 = add i16 %1667, %call.i.6.1.32
  store i16 %add21.6.1.32, i16* %arrayidx11.6.1.32, align 2, !tbaa !3
  %arrayidx9.6.33 = getelementptr inbounds i16, i16* %r, i64 134
  %1668 = load i16, i16* %arrayidx9.6.33, align 2, !tbaa !3
  %conv1.i.6.33 = sext i16 %1668 to i32
  %mul.i.6.33 = mul nsw i32 %conv1.i.6.33, 1097
  %call.i.6.33 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.33) #2
  %arrayidx11.6.33 = getelementptr inbounds i16, i16* %r, i64 132
  %1669 = load i16, i16* %arrayidx11.6.33, align 2, !tbaa !3
  %sub.6.33 = sub i16 %1669, %call.i.6.33
  store i16 %sub.6.33, i16* %arrayidx9.6.33, align 2, !tbaa !3
  %add21.6.33 = add i16 %1669, %call.i.6.33
  store i16 %add21.6.33, i16* %arrayidx11.6.33, align 2, !tbaa !3
  %arrayidx9.6.1.33 = getelementptr inbounds i16, i16* %r, i64 135
  %1670 = load i16, i16* %arrayidx9.6.1.33, align 2, !tbaa !3
  %conv1.i.6.1.33 = sext i16 %1670 to i32
  %mul.i.6.1.33 = mul nsw i32 %conv1.i.6.1.33, 1097
  %call.i.6.1.33 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.33) #2
  %arrayidx11.6.1.33 = getelementptr inbounds i16, i16* %r, i64 133
  %1671 = load i16, i16* %arrayidx11.6.1.33, align 2, !tbaa !3
  %sub.6.1.33 = sub i16 %1671, %call.i.6.1.33
  store i16 %sub.6.1.33, i16* %arrayidx9.6.1.33, align 2, !tbaa !3
  %add21.6.1.33 = add i16 %1671, %call.i.6.1.33
  store i16 %add21.6.1.33, i16* %arrayidx11.6.1.33, align 2, !tbaa !3
  %arrayidx9.6.34 = getelementptr inbounds i16, i16* %r, i64 138
  %1672 = load i16, i16* %arrayidx9.6.34, align 2, !tbaa !3
  %conv1.i.6.34 = sext i16 %1672 to i32
  %mul.i.6.34 = mul nsw i32 %conv1.i.6.34, 603
  %call.i.6.34 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.34) #2
  %arrayidx11.6.34 = getelementptr inbounds i16, i16* %r, i64 136
  %1673 = load i16, i16* %arrayidx11.6.34, align 2, !tbaa !3
  %sub.6.34 = sub i16 %1673, %call.i.6.34
  store i16 %sub.6.34, i16* %arrayidx9.6.34, align 2, !tbaa !3
  %add21.6.34 = add i16 %1673, %call.i.6.34
  store i16 %add21.6.34, i16* %arrayidx11.6.34, align 2, !tbaa !3
  %arrayidx9.6.1.34 = getelementptr inbounds i16, i16* %r, i64 139
  %1674 = load i16, i16* %arrayidx9.6.1.34, align 2, !tbaa !3
  %conv1.i.6.1.34 = sext i16 %1674 to i32
  %mul.i.6.1.34 = mul nsw i32 %conv1.i.6.1.34, 603
  %call.i.6.1.34 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.34) #2
  %arrayidx11.6.1.34 = getelementptr inbounds i16, i16* %r, i64 137
  %1675 = load i16, i16* %arrayidx11.6.1.34, align 2, !tbaa !3
  %sub.6.1.34 = sub i16 %1675, %call.i.6.1.34
  store i16 %sub.6.1.34, i16* %arrayidx9.6.1.34, align 2, !tbaa !3
  %add21.6.1.34 = add i16 %1675, %call.i.6.1.34
  store i16 %add21.6.1.34, i16* %arrayidx11.6.1.34, align 2, !tbaa !3
  %arrayidx9.6.35 = getelementptr inbounds i16, i16* %r, i64 142
  %1676 = load i16, i16* %arrayidx9.6.35, align 2, !tbaa !3
  %conv1.i.6.35 = sext i16 %1676 to i32
  %mul.i.6.35 = mul nsw i32 %conv1.i.6.35, 610
  %call.i.6.35 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.35) #2
  %arrayidx11.6.35 = getelementptr inbounds i16, i16* %r, i64 140
  %1677 = load i16, i16* %arrayidx11.6.35, align 2, !tbaa !3
  %sub.6.35 = sub i16 %1677, %call.i.6.35
  store i16 %sub.6.35, i16* %arrayidx9.6.35, align 2, !tbaa !3
  %add21.6.35 = add i16 %1677, %call.i.6.35
  store i16 %add21.6.35, i16* %arrayidx11.6.35, align 2, !tbaa !3
  %arrayidx9.6.1.35 = getelementptr inbounds i16, i16* %r, i64 143
  %1678 = load i16, i16* %arrayidx9.6.1.35, align 2, !tbaa !3
  %conv1.i.6.1.35 = sext i16 %1678 to i32
  %mul.i.6.1.35 = mul nsw i32 %conv1.i.6.1.35, 610
  %call.i.6.1.35 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.35) #2
  %arrayidx11.6.1.35 = getelementptr inbounds i16, i16* %r, i64 141
  %1679 = load i16, i16* %arrayidx11.6.1.35, align 2, !tbaa !3
  %sub.6.1.35 = sub i16 %1679, %call.i.6.1.35
  store i16 %sub.6.1.35, i16* %arrayidx9.6.1.35, align 2, !tbaa !3
  %add21.6.1.35 = add i16 %1679, %call.i.6.1.35
  store i16 %add21.6.1.35, i16* %arrayidx11.6.1.35, align 2, !tbaa !3
  %arrayidx9.6.36 = getelementptr inbounds i16, i16* %r, i64 146
  %1680 = load i16, i16* %arrayidx9.6.36, align 2, !tbaa !3
  %conv1.i.6.36 = sext i16 %1680 to i32
  %mul.i.6.36 = mul nsw i32 %conv1.i.6.36, 1322
  %call.i.6.36 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.36) #2
  %arrayidx11.6.36 = getelementptr inbounds i16, i16* %r, i64 144
  %1681 = load i16, i16* %arrayidx11.6.36, align 2, !tbaa !3
  %sub.6.36 = sub i16 %1681, %call.i.6.36
  store i16 %sub.6.36, i16* %arrayidx9.6.36, align 2, !tbaa !3
  %add21.6.36 = add i16 %1681, %call.i.6.36
  store i16 %add21.6.36, i16* %arrayidx11.6.36, align 2, !tbaa !3
  %arrayidx9.6.1.36 = getelementptr inbounds i16, i16* %r, i64 147
  %1682 = load i16, i16* %arrayidx9.6.1.36, align 2, !tbaa !3
  %conv1.i.6.1.36 = sext i16 %1682 to i32
  %mul.i.6.1.36 = mul nsw i32 %conv1.i.6.1.36, 1322
  %call.i.6.1.36 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.36) #2
  %arrayidx11.6.1.36 = getelementptr inbounds i16, i16* %r, i64 145
  %1683 = load i16, i16* %arrayidx11.6.1.36, align 2, !tbaa !3
  %sub.6.1.36 = sub i16 %1683, %call.i.6.1.36
  store i16 %sub.6.1.36, i16* %arrayidx9.6.1.36, align 2, !tbaa !3
  %add21.6.1.36 = add i16 %1683, %call.i.6.1.36
  store i16 %add21.6.1.36, i16* %arrayidx11.6.1.36, align 2, !tbaa !3
  %arrayidx9.6.37 = getelementptr inbounds i16, i16* %r, i64 150
  %1684 = load i16, i16* %arrayidx9.6.37, align 2, !tbaa !3
  %conv1.i.6.37 = sext i16 %1684 to i32
  %mul.i.6.37 = mul nsw i32 %conv1.i.6.37, -1285
  %call.i.6.37 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.37) #2
  %arrayidx11.6.37 = getelementptr inbounds i16, i16* %r, i64 148
  %1685 = load i16, i16* %arrayidx11.6.37, align 2, !tbaa !3
  %sub.6.37 = sub i16 %1685, %call.i.6.37
  store i16 %sub.6.37, i16* %arrayidx9.6.37, align 2, !tbaa !3
  %add21.6.37 = add i16 %1685, %call.i.6.37
  store i16 %add21.6.37, i16* %arrayidx11.6.37, align 2, !tbaa !3
  %arrayidx9.6.1.37 = getelementptr inbounds i16, i16* %r, i64 151
  %1686 = load i16, i16* %arrayidx9.6.1.37, align 2, !tbaa !3
  %conv1.i.6.1.37 = sext i16 %1686 to i32
  %mul.i.6.1.37 = mul nsw i32 %conv1.i.6.1.37, -1285
  %call.i.6.1.37 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.37) #2
  %arrayidx11.6.1.37 = getelementptr inbounds i16, i16* %r, i64 149
  %1687 = load i16, i16* %arrayidx11.6.1.37, align 2, !tbaa !3
  %sub.6.1.37 = sub i16 %1687, %call.i.6.1.37
  store i16 %sub.6.1.37, i16* %arrayidx9.6.1.37, align 2, !tbaa !3
  %add21.6.1.37 = add i16 %1687, %call.i.6.1.37
  store i16 %add21.6.1.37, i16* %arrayidx11.6.1.37, align 2, !tbaa !3
  %arrayidx9.6.38 = getelementptr inbounds i16, i16* %r, i64 154
  %1688 = load i16, i16* %arrayidx9.6.38, align 2, !tbaa !3
  %conv1.i.6.38 = sext i16 %1688 to i32
  %mul.i.6.38 = mul nsw i32 %conv1.i.6.38, -1465
  %call.i.6.38 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.38) #2
  %arrayidx11.6.38 = getelementptr inbounds i16, i16* %r, i64 152
  %1689 = load i16, i16* %arrayidx11.6.38, align 2, !tbaa !3
  %sub.6.38 = sub i16 %1689, %call.i.6.38
  store i16 %sub.6.38, i16* %arrayidx9.6.38, align 2, !tbaa !3
  %add21.6.38 = add i16 %1689, %call.i.6.38
  store i16 %add21.6.38, i16* %arrayidx11.6.38, align 2, !tbaa !3
  %arrayidx9.6.1.38 = getelementptr inbounds i16, i16* %r, i64 155
  %1690 = load i16, i16* %arrayidx9.6.1.38, align 2, !tbaa !3
  %conv1.i.6.1.38 = sext i16 %1690 to i32
  %mul.i.6.1.38 = mul nsw i32 %conv1.i.6.1.38, -1465
  %call.i.6.1.38 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.38) #2
  %arrayidx11.6.1.38 = getelementptr inbounds i16, i16* %r, i64 153
  %1691 = load i16, i16* %arrayidx11.6.1.38, align 2, !tbaa !3
  %sub.6.1.38 = sub i16 %1691, %call.i.6.1.38
  store i16 %sub.6.1.38, i16* %arrayidx9.6.1.38, align 2, !tbaa !3
  %add21.6.1.38 = add i16 %1691, %call.i.6.1.38
  store i16 %add21.6.1.38, i16* %arrayidx11.6.1.38, align 2, !tbaa !3
  %arrayidx9.6.39 = getelementptr inbounds i16, i16* %r, i64 158
  %1692 = load i16, i16* %arrayidx9.6.39, align 2, !tbaa !3
  %conv1.i.6.39 = sext i16 %1692 to i32
  %mul.i.6.39 = mul nsw i32 %conv1.i.6.39, 384
  %call.i.6.39 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.39) #2
  %arrayidx11.6.39 = getelementptr inbounds i16, i16* %r, i64 156
  %1693 = load i16, i16* %arrayidx11.6.39, align 2, !tbaa !3
  %sub.6.39 = sub i16 %1693, %call.i.6.39
  store i16 %sub.6.39, i16* %arrayidx9.6.39, align 2, !tbaa !3
  %add21.6.39 = add i16 %1693, %call.i.6.39
  store i16 %add21.6.39, i16* %arrayidx11.6.39, align 2, !tbaa !3
  %arrayidx9.6.1.39 = getelementptr inbounds i16, i16* %r, i64 159
  %1694 = load i16, i16* %arrayidx9.6.1.39, align 2, !tbaa !3
  %conv1.i.6.1.39 = sext i16 %1694 to i32
  %mul.i.6.1.39 = mul nsw i32 %conv1.i.6.1.39, 384
  %call.i.6.1.39 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.39) #2
  %arrayidx11.6.1.39 = getelementptr inbounds i16, i16* %r, i64 157
  %1695 = load i16, i16* %arrayidx11.6.1.39, align 2, !tbaa !3
  %sub.6.1.39 = sub i16 %1695, %call.i.6.1.39
  store i16 %sub.6.1.39, i16* %arrayidx9.6.1.39, align 2, !tbaa !3
  %add21.6.1.39 = add i16 %1695, %call.i.6.1.39
  store i16 %add21.6.1.39, i16* %arrayidx11.6.1.39, align 2, !tbaa !3
  %arrayidx9.6.40 = getelementptr inbounds i16, i16* %r, i64 162
  %1696 = load i16, i16* %arrayidx9.6.40, align 2, !tbaa !3
  %conv1.i.6.40 = sext i16 %1696 to i32
  %mul.i.6.40 = mul nsw i32 %conv1.i.6.40, -1215
  %call.i.6.40 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.40) #2
  %arrayidx11.6.40 = getelementptr inbounds i16, i16* %r, i64 160
  %1697 = load i16, i16* %arrayidx11.6.40, align 2, !tbaa !3
  %sub.6.40 = sub i16 %1697, %call.i.6.40
  store i16 %sub.6.40, i16* %arrayidx9.6.40, align 2, !tbaa !3
  %add21.6.40 = add i16 %1697, %call.i.6.40
  store i16 %add21.6.40, i16* %arrayidx11.6.40, align 2, !tbaa !3
  %arrayidx9.6.1.40 = getelementptr inbounds i16, i16* %r, i64 163
  %1698 = load i16, i16* %arrayidx9.6.1.40, align 2, !tbaa !3
  %conv1.i.6.1.40 = sext i16 %1698 to i32
  %mul.i.6.1.40 = mul nsw i32 %conv1.i.6.1.40, -1215
  %call.i.6.1.40 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.40) #2
  %arrayidx11.6.1.40 = getelementptr inbounds i16, i16* %r, i64 161
  %1699 = load i16, i16* %arrayidx11.6.1.40, align 2, !tbaa !3
  %sub.6.1.40 = sub i16 %1699, %call.i.6.1.40
  store i16 %sub.6.1.40, i16* %arrayidx9.6.1.40, align 2, !tbaa !3
  %add21.6.1.40 = add i16 %1699, %call.i.6.1.40
  store i16 %add21.6.1.40, i16* %arrayidx11.6.1.40, align 2, !tbaa !3
  %arrayidx9.6.41 = getelementptr inbounds i16, i16* %r, i64 166
  %1700 = load i16, i16* %arrayidx9.6.41, align 2, !tbaa !3
  %conv1.i.6.41 = sext i16 %1700 to i32
  %mul.i.6.41 = mul nsw i32 %conv1.i.6.41, -136
  %call.i.6.41 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.41) #2
  %arrayidx11.6.41 = getelementptr inbounds i16, i16* %r, i64 164
  %1701 = load i16, i16* %arrayidx11.6.41, align 2, !tbaa !3
  %sub.6.41 = sub i16 %1701, %call.i.6.41
  store i16 %sub.6.41, i16* %arrayidx9.6.41, align 2, !tbaa !3
  %add21.6.41 = add i16 %1701, %call.i.6.41
  store i16 %add21.6.41, i16* %arrayidx11.6.41, align 2, !tbaa !3
  %arrayidx9.6.1.41 = getelementptr inbounds i16, i16* %r, i64 167
  %1702 = load i16, i16* %arrayidx9.6.1.41, align 2, !tbaa !3
  %conv1.i.6.1.41 = sext i16 %1702 to i32
  %mul.i.6.1.41 = mul nsw i32 %conv1.i.6.1.41, -136
  %call.i.6.1.41 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.41) #2
  %arrayidx11.6.1.41 = getelementptr inbounds i16, i16* %r, i64 165
  %1703 = load i16, i16* %arrayidx11.6.1.41, align 2, !tbaa !3
  %sub.6.1.41 = sub i16 %1703, %call.i.6.1.41
  store i16 %sub.6.1.41, i16* %arrayidx9.6.1.41, align 2, !tbaa !3
  %add21.6.1.41 = add i16 %1703, %call.i.6.1.41
  store i16 %add21.6.1.41, i16* %arrayidx11.6.1.41, align 2, !tbaa !3
  %arrayidx9.6.42 = getelementptr inbounds i16, i16* %r, i64 170
  %1704 = load i16, i16* %arrayidx9.6.42, align 2, !tbaa !3
  %conv1.i.6.42 = sext i16 %1704 to i32
  %mul.i.6.42 = mul nsw i32 %conv1.i.6.42, 1218
  %call.i.6.42 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.42) #2
  %arrayidx11.6.42 = getelementptr inbounds i16, i16* %r, i64 168
  %1705 = load i16, i16* %arrayidx11.6.42, align 2, !tbaa !3
  %sub.6.42 = sub i16 %1705, %call.i.6.42
  store i16 %sub.6.42, i16* %arrayidx9.6.42, align 2, !tbaa !3
  %add21.6.42 = add i16 %1705, %call.i.6.42
  store i16 %add21.6.42, i16* %arrayidx11.6.42, align 2, !tbaa !3
  %arrayidx9.6.1.42 = getelementptr inbounds i16, i16* %r, i64 171
  %1706 = load i16, i16* %arrayidx9.6.1.42, align 2, !tbaa !3
  %conv1.i.6.1.42 = sext i16 %1706 to i32
  %mul.i.6.1.42 = mul nsw i32 %conv1.i.6.1.42, 1218
  %call.i.6.1.42 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.42) #2
  %arrayidx11.6.1.42 = getelementptr inbounds i16, i16* %r, i64 169
  %1707 = load i16, i16* %arrayidx11.6.1.42, align 2, !tbaa !3
  %sub.6.1.42 = sub i16 %1707, %call.i.6.1.42
  store i16 %sub.6.1.42, i16* %arrayidx9.6.1.42, align 2, !tbaa !3
  %add21.6.1.42 = add i16 %1707, %call.i.6.1.42
  store i16 %add21.6.1.42, i16* %arrayidx11.6.1.42, align 2, !tbaa !3
  %arrayidx9.6.43 = getelementptr inbounds i16, i16* %r, i64 174
  %1708 = load i16, i16* %arrayidx9.6.43, align 2, !tbaa !3
  %conv1.i.6.43 = sext i16 %1708 to i32
  %mul.i.6.43 = mul nsw i32 %conv1.i.6.43, -1335
  %call.i.6.43 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.43) #2
  %arrayidx11.6.43 = getelementptr inbounds i16, i16* %r, i64 172
  %1709 = load i16, i16* %arrayidx11.6.43, align 2, !tbaa !3
  %sub.6.43 = sub i16 %1709, %call.i.6.43
  store i16 %sub.6.43, i16* %arrayidx9.6.43, align 2, !tbaa !3
  %add21.6.43 = add i16 %1709, %call.i.6.43
  store i16 %add21.6.43, i16* %arrayidx11.6.43, align 2, !tbaa !3
  %arrayidx9.6.1.43 = getelementptr inbounds i16, i16* %r, i64 175
  %1710 = load i16, i16* %arrayidx9.6.1.43, align 2, !tbaa !3
  %conv1.i.6.1.43 = sext i16 %1710 to i32
  %mul.i.6.1.43 = mul nsw i32 %conv1.i.6.1.43, -1335
  %call.i.6.1.43 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.43) #2
  %arrayidx11.6.1.43 = getelementptr inbounds i16, i16* %r, i64 173
  %1711 = load i16, i16* %arrayidx11.6.1.43, align 2, !tbaa !3
  %sub.6.1.43 = sub i16 %1711, %call.i.6.1.43
  store i16 %sub.6.1.43, i16* %arrayidx9.6.1.43, align 2, !tbaa !3
  %add21.6.1.43 = add i16 %1711, %call.i.6.1.43
  store i16 %add21.6.1.43, i16* %arrayidx11.6.1.43, align 2, !tbaa !3
  %arrayidx9.6.44 = getelementptr inbounds i16, i16* %r, i64 178
  %1712 = load i16, i16* %arrayidx9.6.44, align 2, !tbaa !3
  %conv1.i.6.44 = sext i16 %1712 to i32
  %mul.i.6.44 = mul nsw i32 %conv1.i.6.44, -874
  %call.i.6.44 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.44) #2
  %arrayidx11.6.44 = getelementptr inbounds i16, i16* %r, i64 176
  %1713 = load i16, i16* %arrayidx11.6.44, align 2, !tbaa !3
  %sub.6.44 = sub i16 %1713, %call.i.6.44
  store i16 %sub.6.44, i16* %arrayidx9.6.44, align 2, !tbaa !3
  %add21.6.44 = add i16 %1713, %call.i.6.44
  store i16 %add21.6.44, i16* %arrayidx11.6.44, align 2, !tbaa !3
  %arrayidx9.6.1.44 = getelementptr inbounds i16, i16* %r, i64 179
  %1714 = load i16, i16* %arrayidx9.6.1.44, align 2, !tbaa !3
  %conv1.i.6.1.44 = sext i16 %1714 to i32
  %mul.i.6.1.44 = mul nsw i32 %conv1.i.6.1.44, -874
  %call.i.6.1.44 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.44) #2
  %arrayidx11.6.1.44 = getelementptr inbounds i16, i16* %r, i64 177
  %1715 = load i16, i16* %arrayidx11.6.1.44, align 2, !tbaa !3
  %sub.6.1.44 = sub i16 %1715, %call.i.6.1.44
  store i16 %sub.6.1.44, i16* %arrayidx9.6.1.44, align 2, !tbaa !3
  %add21.6.1.44 = add i16 %1715, %call.i.6.1.44
  store i16 %add21.6.1.44, i16* %arrayidx11.6.1.44, align 2, !tbaa !3
  %arrayidx9.6.45 = getelementptr inbounds i16, i16* %r, i64 182
  %1716 = load i16, i16* %arrayidx9.6.45, align 2, !tbaa !3
  %conv1.i.6.45 = sext i16 %1716 to i32
  %mul.i.6.45 = mul nsw i32 %conv1.i.6.45, 220
  %call.i.6.45 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.45) #2
  %arrayidx11.6.45 = getelementptr inbounds i16, i16* %r, i64 180
  %1717 = load i16, i16* %arrayidx11.6.45, align 2, !tbaa !3
  %sub.6.45 = sub i16 %1717, %call.i.6.45
  store i16 %sub.6.45, i16* %arrayidx9.6.45, align 2, !tbaa !3
  %add21.6.45 = add i16 %1717, %call.i.6.45
  store i16 %add21.6.45, i16* %arrayidx11.6.45, align 2, !tbaa !3
  %arrayidx9.6.1.45 = getelementptr inbounds i16, i16* %r, i64 183
  %1718 = load i16, i16* %arrayidx9.6.1.45, align 2, !tbaa !3
  %conv1.i.6.1.45 = sext i16 %1718 to i32
  %mul.i.6.1.45 = mul nsw i32 %conv1.i.6.1.45, 220
  %call.i.6.1.45 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.45) #2
  %arrayidx11.6.1.45 = getelementptr inbounds i16, i16* %r, i64 181
  %1719 = load i16, i16* %arrayidx11.6.1.45, align 2, !tbaa !3
  %sub.6.1.45 = sub i16 %1719, %call.i.6.1.45
  store i16 %sub.6.1.45, i16* %arrayidx9.6.1.45, align 2, !tbaa !3
  %add21.6.1.45 = add i16 %1719, %call.i.6.1.45
  store i16 %add21.6.1.45, i16* %arrayidx11.6.1.45, align 2, !tbaa !3
  %arrayidx9.6.46 = getelementptr inbounds i16, i16* %r, i64 186
  %1720 = load i16, i16* %arrayidx9.6.46, align 2, !tbaa !3
  %conv1.i.6.46 = sext i16 %1720 to i32
  %mul.i.6.46 = mul nsw i32 %conv1.i.6.46, -1187
  %call.i.6.46 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.46) #2
  %arrayidx11.6.46 = getelementptr inbounds i16, i16* %r, i64 184
  %1721 = load i16, i16* %arrayidx11.6.46, align 2, !tbaa !3
  %sub.6.46 = sub i16 %1721, %call.i.6.46
  store i16 %sub.6.46, i16* %arrayidx9.6.46, align 2, !tbaa !3
  %add21.6.46 = add i16 %1721, %call.i.6.46
  store i16 %add21.6.46, i16* %arrayidx11.6.46, align 2, !tbaa !3
  %arrayidx9.6.1.46 = getelementptr inbounds i16, i16* %r, i64 187
  %1722 = load i16, i16* %arrayidx9.6.1.46, align 2, !tbaa !3
  %conv1.i.6.1.46 = sext i16 %1722 to i32
  %mul.i.6.1.46 = mul nsw i32 %conv1.i.6.1.46, -1187
  %call.i.6.1.46 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.46) #2
  %arrayidx11.6.1.46 = getelementptr inbounds i16, i16* %r, i64 185
  %1723 = load i16, i16* %arrayidx11.6.1.46, align 2, !tbaa !3
  %sub.6.1.46 = sub i16 %1723, %call.i.6.1.46
  store i16 %sub.6.1.46, i16* %arrayidx9.6.1.46, align 2, !tbaa !3
  %add21.6.1.46 = add i16 %1723, %call.i.6.1.46
  store i16 %add21.6.1.46, i16* %arrayidx11.6.1.46, align 2, !tbaa !3
  %arrayidx9.6.47 = getelementptr inbounds i16, i16* %r, i64 190
  %1724 = load i16, i16* %arrayidx9.6.47, align 2, !tbaa !3
  %conv1.i.6.47 = sext i16 %1724 to i32
  %mul.i.6.47 = mul nsw i32 %conv1.i.6.47, -1659
  %call.i.6.47 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.47) #2
  %arrayidx11.6.47 = getelementptr inbounds i16, i16* %r, i64 188
  %1725 = load i16, i16* %arrayidx11.6.47, align 2, !tbaa !3
  %sub.6.47 = sub i16 %1725, %call.i.6.47
  store i16 %sub.6.47, i16* %arrayidx9.6.47, align 2, !tbaa !3
  %add21.6.47 = add i16 %1725, %call.i.6.47
  store i16 %add21.6.47, i16* %arrayidx11.6.47, align 2, !tbaa !3
  %arrayidx9.6.1.47 = getelementptr inbounds i16, i16* %r, i64 191
  %1726 = load i16, i16* %arrayidx9.6.1.47, align 2, !tbaa !3
  %conv1.i.6.1.47 = sext i16 %1726 to i32
  %mul.i.6.1.47 = mul nsw i32 %conv1.i.6.1.47, -1659
  %call.i.6.1.47 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.47) #2
  %arrayidx11.6.1.47 = getelementptr inbounds i16, i16* %r, i64 189
  %1727 = load i16, i16* %arrayidx11.6.1.47, align 2, !tbaa !3
  %sub.6.1.47 = sub i16 %1727, %call.i.6.1.47
  store i16 %sub.6.1.47, i16* %arrayidx9.6.1.47, align 2, !tbaa !3
  %add21.6.1.47 = add i16 %1727, %call.i.6.1.47
  store i16 %add21.6.1.47, i16* %arrayidx11.6.1.47, align 2, !tbaa !3
  %arrayidx9.6.48 = getelementptr inbounds i16, i16* %r, i64 194
  %1728 = load i16, i16* %arrayidx9.6.48, align 2, !tbaa !3
  %conv1.i.6.48 = sext i16 %1728 to i32
  %mul.i.6.48 = mul nsw i32 %conv1.i.6.48, -1185
  %call.i.6.48 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.48) #2
  %arrayidx11.6.48 = getelementptr inbounds i16, i16* %r, i64 192
  %1729 = load i16, i16* %arrayidx11.6.48, align 2, !tbaa !3
  %sub.6.48 = sub i16 %1729, %call.i.6.48
  store i16 %sub.6.48, i16* %arrayidx9.6.48, align 2, !tbaa !3
  %add21.6.48 = add i16 %1729, %call.i.6.48
  store i16 %add21.6.48, i16* %arrayidx11.6.48, align 2, !tbaa !3
  %arrayidx9.6.1.48 = getelementptr inbounds i16, i16* %r, i64 195
  %1730 = load i16, i16* %arrayidx9.6.1.48, align 2, !tbaa !3
  %conv1.i.6.1.48 = sext i16 %1730 to i32
  %mul.i.6.1.48 = mul nsw i32 %conv1.i.6.1.48, -1185
  %call.i.6.1.48 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.48) #2
  %arrayidx11.6.1.48 = getelementptr inbounds i16, i16* %r, i64 193
  %1731 = load i16, i16* %arrayidx11.6.1.48, align 2, !tbaa !3
  %sub.6.1.48 = sub i16 %1731, %call.i.6.1.48
  store i16 %sub.6.1.48, i16* %arrayidx9.6.1.48, align 2, !tbaa !3
  %add21.6.1.48 = add i16 %1731, %call.i.6.1.48
  store i16 %add21.6.1.48, i16* %arrayidx11.6.1.48, align 2, !tbaa !3
  %arrayidx9.6.49 = getelementptr inbounds i16, i16* %r, i64 198
  %1732 = load i16, i16* %arrayidx9.6.49, align 2, !tbaa !3
  %conv1.i.6.49 = sext i16 %1732 to i32
  %mul.i.6.49 = mul nsw i32 %conv1.i.6.49, -1530
  %call.i.6.49 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.49) #2
  %arrayidx11.6.49 = getelementptr inbounds i16, i16* %r, i64 196
  %1733 = load i16, i16* %arrayidx11.6.49, align 2, !tbaa !3
  %sub.6.49 = sub i16 %1733, %call.i.6.49
  store i16 %sub.6.49, i16* %arrayidx9.6.49, align 2, !tbaa !3
  %add21.6.49 = add i16 %1733, %call.i.6.49
  store i16 %add21.6.49, i16* %arrayidx11.6.49, align 2, !tbaa !3
  %arrayidx9.6.1.49 = getelementptr inbounds i16, i16* %r, i64 199
  %1734 = load i16, i16* %arrayidx9.6.1.49, align 2, !tbaa !3
  %conv1.i.6.1.49 = sext i16 %1734 to i32
  %mul.i.6.1.49 = mul nsw i32 %conv1.i.6.1.49, -1530
  %call.i.6.1.49 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.49) #2
  %arrayidx11.6.1.49 = getelementptr inbounds i16, i16* %r, i64 197
  %1735 = load i16, i16* %arrayidx11.6.1.49, align 2, !tbaa !3
  %sub.6.1.49 = sub i16 %1735, %call.i.6.1.49
  store i16 %sub.6.1.49, i16* %arrayidx9.6.1.49, align 2, !tbaa !3
  %add21.6.1.49 = add i16 %1735, %call.i.6.1.49
  store i16 %add21.6.1.49, i16* %arrayidx11.6.1.49, align 2, !tbaa !3
  %arrayidx9.6.50 = getelementptr inbounds i16, i16* %r, i64 202
  %1736 = load i16, i16* %arrayidx9.6.50, align 2, !tbaa !3
  %conv1.i.6.50 = sext i16 %1736 to i32
  %mul.i.6.50 = mul nsw i32 %conv1.i.6.50, -1278
  %call.i.6.50 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.50) #2
  %arrayidx11.6.50 = getelementptr inbounds i16, i16* %r, i64 200
  %1737 = load i16, i16* %arrayidx11.6.50, align 2, !tbaa !3
  %sub.6.50 = sub i16 %1737, %call.i.6.50
  store i16 %sub.6.50, i16* %arrayidx9.6.50, align 2, !tbaa !3
  %add21.6.50 = add i16 %1737, %call.i.6.50
  store i16 %add21.6.50, i16* %arrayidx11.6.50, align 2, !tbaa !3
  %arrayidx9.6.1.50 = getelementptr inbounds i16, i16* %r, i64 203
  %1738 = load i16, i16* %arrayidx9.6.1.50, align 2, !tbaa !3
  %conv1.i.6.1.50 = sext i16 %1738 to i32
  %mul.i.6.1.50 = mul nsw i32 %conv1.i.6.1.50, -1278
  %call.i.6.1.50 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.50) #2
  %arrayidx11.6.1.50 = getelementptr inbounds i16, i16* %r, i64 201
  %1739 = load i16, i16* %arrayidx11.6.1.50, align 2, !tbaa !3
  %sub.6.1.50 = sub i16 %1739, %call.i.6.1.50
  store i16 %sub.6.1.50, i16* %arrayidx9.6.1.50, align 2, !tbaa !3
  %add21.6.1.50 = add i16 %1739, %call.i.6.1.50
  store i16 %add21.6.1.50, i16* %arrayidx11.6.1.50, align 2, !tbaa !3
  %arrayidx9.6.51 = getelementptr inbounds i16, i16* %r, i64 206
  %1740 = load i16, i16* %arrayidx9.6.51, align 2, !tbaa !3
  %conv1.i.6.51 = sext i16 %1740 to i32
  %mul.i.6.51 = mul nsw i32 %conv1.i.6.51, 794
  %call.i.6.51 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.51) #2
  %arrayidx11.6.51 = getelementptr inbounds i16, i16* %r, i64 204
  %1741 = load i16, i16* %arrayidx11.6.51, align 2, !tbaa !3
  %sub.6.51 = sub i16 %1741, %call.i.6.51
  store i16 %sub.6.51, i16* %arrayidx9.6.51, align 2, !tbaa !3
  %add21.6.51 = add i16 %1741, %call.i.6.51
  store i16 %add21.6.51, i16* %arrayidx11.6.51, align 2, !tbaa !3
  %arrayidx9.6.1.51 = getelementptr inbounds i16, i16* %r, i64 207
  %1742 = load i16, i16* %arrayidx9.6.1.51, align 2, !tbaa !3
  %conv1.i.6.1.51 = sext i16 %1742 to i32
  %mul.i.6.1.51 = mul nsw i32 %conv1.i.6.1.51, 794
  %call.i.6.1.51 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.51) #2
  %arrayidx11.6.1.51 = getelementptr inbounds i16, i16* %r, i64 205
  %1743 = load i16, i16* %arrayidx11.6.1.51, align 2, !tbaa !3
  %sub.6.1.51 = sub i16 %1743, %call.i.6.1.51
  store i16 %sub.6.1.51, i16* %arrayidx9.6.1.51, align 2, !tbaa !3
  %add21.6.1.51 = add i16 %1743, %call.i.6.1.51
  store i16 %add21.6.1.51, i16* %arrayidx11.6.1.51, align 2, !tbaa !3
  %arrayidx9.6.52 = getelementptr inbounds i16, i16* %r, i64 210
  %1744 = load i16, i16* %arrayidx9.6.52, align 2, !tbaa !3
  %conv1.i.6.52 = sext i16 %1744 to i32
  %mul.i.6.52 = mul nsw i32 %conv1.i.6.52, -1510
  %call.i.6.52 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.52) #2
  %arrayidx11.6.52 = getelementptr inbounds i16, i16* %r, i64 208
  %1745 = load i16, i16* %arrayidx11.6.52, align 2, !tbaa !3
  %sub.6.52 = sub i16 %1745, %call.i.6.52
  store i16 %sub.6.52, i16* %arrayidx9.6.52, align 2, !tbaa !3
  %add21.6.52 = add i16 %1745, %call.i.6.52
  store i16 %add21.6.52, i16* %arrayidx11.6.52, align 2, !tbaa !3
  %arrayidx9.6.1.52 = getelementptr inbounds i16, i16* %r, i64 211
  %1746 = load i16, i16* %arrayidx9.6.1.52, align 2, !tbaa !3
  %conv1.i.6.1.52 = sext i16 %1746 to i32
  %mul.i.6.1.52 = mul nsw i32 %conv1.i.6.1.52, -1510
  %call.i.6.1.52 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.52) #2
  %arrayidx11.6.1.52 = getelementptr inbounds i16, i16* %r, i64 209
  %1747 = load i16, i16* %arrayidx11.6.1.52, align 2, !tbaa !3
  %sub.6.1.52 = sub i16 %1747, %call.i.6.1.52
  store i16 %sub.6.1.52, i16* %arrayidx9.6.1.52, align 2, !tbaa !3
  %add21.6.1.52 = add i16 %1747, %call.i.6.1.52
  store i16 %add21.6.1.52, i16* %arrayidx11.6.1.52, align 2, !tbaa !3
  %arrayidx9.6.53 = getelementptr inbounds i16, i16* %r, i64 214
  %1748 = load i16, i16* %arrayidx9.6.53, align 2, !tbaa !3
  %conv1.i.6.53 = sext i16 %1748 to i32
  %mul.i.6.53 = mul nsw i32 %conv1.i.6.53, -854
  %call.i.6.53 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.53) #2
  %arrayidx11.6.53 = getelementptr inbounds i16, i16* %r, i64 212
  %1749 = load i16, i16* %arrayidx11.6.53, align 2, !tbaa !3
  %sub.6.53 = sub i16 %1749, %call.i.6.53
  store i16 %sub.6.53, i16* %arrayidx9.6.53, align 2, !tbaa !3
  %add21.6.53 = add i16 %1749, %call.i.6.53
  store i16 %add21.6.53, i16* %arrayidx11.6.53, align 2, !tbaa !3
  %arrayidx9.6.1.53 = getelementptr inbounds i16, i16* %r, i64 215
  %1750 = load i16, i16* %arrayidx9.6.1.53, align 2, !tbaa !3
  %conv1.i.6.1.53 = sext i16 %1750 to i32
  %mul.i.6.1.53 = mul nsw i32 %conv1.i.6.1.53, -854
  %call.i.6.1.53 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.53) #2
  %arrayidx11.6.1.53 = getelementptr inbounds i16, i16* %r, i64 213
  %1751 = load i16, i16* %arrayidx11.6.1.53, align 2, !tbaa !3
  %sub.6.1.53 = sub i16 %1751, %call.i.6.1.53
  store i16 %sub.6.1.53, i16* %arrayidx9.6.1.53, align 2, !tbaa !3
  %add21.6.1.53 = add i16 %1751, %call.i.6.1.53
  store i16 %add21.6.1.53, i16* %arrayidx11.6.1.53, align 2, !tbaa !3
  %arrayidx9.6.54 = getelementptr inbounds i16, i16* %r, i64 218
  %1752 = load i16, i16* %arrayidx9.6.54, align 2, !tbaa !3
  %conv1.i.6.54 = sext i16 %1752 to i32
  %mul.i.6.54 = mul nsw i32 %conv1.i.6.54, -870
  %call.i.6.54 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.54) #2
  %arrayidx11.6.54 = getelementptr inbounds i16, i16* %r, i64 216
  %1753 = load i16, i16* %arrayidx11.6.54, align 2, !tbaa !3
  %sub.6.54 = sub i16 %1753, %call.i.6.54
  store i16 %sub.6.54, i16* %arrayidx9.6.54, align 2, !tbaa !3
  %add21.6.54 = add i16 %1753, %call.i.6.54
  store i16 %add21.6.54, i16* %arrayidx11.6.54, align 2, !tbaa !3
  %arrayidx9.6.1.54 = getelementptr inbounds i16, i16* %r, i64 219
  %1754 = load i16, i16* %arrayidx9.6.1.54, align 2, !tbaa !3
  %conv1.i.6.1.54 = sext i16 %1754 to i32
  %mul.i.6.1.54 = mul nsw i32 %conv1.i.6.1.54, -870
  %call.i.6.1.54 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.54) #2
  %arrayidx11.6.1.54 = getelementptr inbounds i16, i16* %r, i64 217
  %1755 = load i16, i16* %arrayidx11.6.1.54, align 2, !tbaa !3
  %sub.6.1.54 = sub i16 %1755, %call.i.6.1.54
  store i16 %sub.6.1.54, i16* %arrayidx9.6.1.54, align 2, !tbaa !3
  %add21.6.1.54 = add i16 %1755, %call.i.6.1.54
  store i16 %add21.6.1.54, i16* %arrayidx11.6.1.54, align 2, !tbaa !3
  %arrayidx9.6.55 = getelementptr inbounds i16, i16* %r, i64 222
  %1756 = load i16, i16* %arrayidx9.6.55, align 2, !tbaa !3
  %conv1.i.6.55 = sext i16 %1756 to i32
  %mul.i.6.55 = mul nsw i32 %conv1.i.6.55, 478
  %call.i.6.55 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.55) #2
  %arrayidx11.6.55 = getelementptr inbounds i16, i16* %r, i64 220
  %1757 = load i16, i16* %arrayidx11.6.55, align 2, !tbaa !3
  %sub.6.55 = sub i16 %1757, %call.i.6.55
  store i16 %sub.6.55, i16* %arrayidx9.6.55, align 2, !tbaa !3
  %add21.6.55 = add i16 %1757, %call.i.6.55
  store i16 %add21.6.55, i16* %arrayidx11.6.55, align 2, !tbaa !3
  %arrayidx9.6.1.55 = getelementptr inbounds i16, i16* %r, i64 223
  %1758 = load i16, i16* %arrayidx9.6.1.55, align 2, !tbaa !3
  %conv1.i.6.1.55 = sext i16 %1758 to i32
  %mul.i.6.1.55 = mul nsw i32 %conv1.i.6.1.55, 478
  %call.i.6.1.55 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.55) #2
  %arrayidx11.6.1.55 = getelementptr inbounds i16, i16* %r, i64 221
  %1759 = load i16, i16* %arrayidx11.6.1.55, align 2, !tbaa !3
  %sub.6.1.55 = sub i16 %1759, %call.i.6.1.55
  store i16 %sub.6.1.55, i16* %arrayidx9.6.1.55, align 2, !tbaa !3
  %add21.6.1.55 = add i16 %1759, %call.i.6.1.55
  store i16 %add21.6.1.55, i16* %arrayidx11.6.1.55, align 2, !tbaa !3
  %arrayidx9.6.56 = getelementptr inbounds i16, i16* %r, i64 226
  %1760 = load i16, i16* %arrayidx9.6.56, align 2, !tbaa !3
  %conv1.i.6.56 = sext i16 %1760 to i32
  %mul.i.6.56 = mul nsw i32 %conv1.i.6.56, -108
  %call.i.6.56 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.56) #2
  %arrayidx11.6.56 = getelementptr inbounds i16, i16* %r, i64 224
  %1761 = load i16, i16* %arrayidx11.6.56, align 2, !tbaa !3
  %sub.6.56 = sub i16 %1761, %call.i.6.56
  store i16 %sub.6.56, i16* %arrayidx9.6.56, align 2, !tbaa !3
  %add21.6.56 = add i16 %1761, %call.i.6.56
  store i16 %add21.6.56, i16* %arrayidx11.6.56, align 2, !tbaa !3
  %arrayidx9.6.1.56 = getelementptr inbounds i16, i16* %r, i64 227
  %1762 = load i16, i16* %arrayidx9.6.1.56, align 2, !tbaa !3
  %conv1.i.6.1.56 = sext i16 %1762 to i32
  %mul.i.6.1.56 = mul nsw i32 %conv1.i.6.1.56, -108
  %call.i.6.1.56 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.56) #2
  %arrayidx11.6.1.56 = getelementptr inbounds i16, i16* %r, i64 225
  %1763 = load i16, i16* %arrayidx11.6.1.56, align 2, !tbaa !3
  %sub.6.1.56 = sub i16 %1763, %call.i.6.1.56
  store i16 %sub.6.1.56, i16* %arrayidx9.6.1.56, align 2, !tbaa !3
  %add21.6.1.56 = add i16 %1763, %call.i.6.1.56
  store i16 %add21.6.1.56, i16* %arrayidx11.6.1.56, align 2, !tbaa !3
  %arrayidx9.6.57 = getelementptr inbounds i16, i16* %r, i64 230
  %1764 = load i16, i16* %arrayidx9.6.57, align 2, !tbaa !3
  %conv1.i.6.57 = sext i16 %1764 to i32
  %mul.i.6.57 = mul nsw i32 %conv1.i.6.57, -308
  %call.i.6.57 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.57) #2
  %arrayidx11.6.57 = getelementptr inbounds i16, i16* %r, i64 228
  %1765 = load i16, i16* %arrayidx11.6.57, align 2, !tbaa !3
  %sub.6.57 = sub i16 %1765, %call.i.6.57
  store i16 %sub.6.57, i16* %arrayidx9.6.57, align 2, !tbaa !3
  %add21.6.57 = add i16 %1765, %call.i.6.57
  store i16 %add21.6.57, i16* %arrayidx11.6.57, align 2, !tbaa !3
  %arrayidx9.6.1.57 = getelementptr inbounds i16, i16* %r, i64 231
  %1766 = load i16, i16* %arrayidx9.6.1.57, align 2, !tbaa !3
  %conv1.i.6.1.57 = sext i16 %1766 to i32
  %mul.i.6.1.57 = mul nsw i32 %conv1.i.6.1.57, -308
  %call.i.6.1.57 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.57) #2
  %arrayidx11.6.1.57 = getelementptr inbounds i16, i16* %r, i64 229
  %1767 = load i16, i16* %arrayidx11.6.1.57, align 2, !tbaa !3
  %sub.6.1.57 = sub i16 %1767, %call.i.6.1.57
  store i16 %sub.6.1.57, i16* %arrayidx9.6.1.57, align 2, !tbaa !3
  %add21.6.1.57 = add i16 %1767, %call.i.6.1.57
  store i16 %add21.6.1.57, i16* %arrayidx11.6.1.57, align 2, !tbaa !3
  %arrayidx9.6.58 = getelementptr inbounds i16, i16* %r, i64 234
  %1768 = load i16, i16* %arrayidx9.6.58, align 2, !tbaa !3
  %conv1.i.6.58 = sext i16 %1768 to i32
  %mul.i.6.58 = mul nsw i32 %conv1.i.6.58, 996
  %call.i.6.58 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.58) #2
  %arrayidx11.6.58 = getelementptr inbounds i16, i16* %r, i64 232
  %1769 = load i16, i16* %arrayidx11.6.58, align 2, !tbaa !3
  %sub.6.58 = sub i16 %1769, %call.i.6.58
  store i16 %sub.6.58, i16* %arrayidx9.6.58, align 2, !tbaa !3
  %add21.6.58 = add i16 %1769, %call.i.6.58
  store i16 %add21.6.58, i16* %arrayidx11.6.58, align 2, !tbaa !3
  %arrayidx9.6.1.58 = getelementptr inbounds i16, i16* %r, i64 235
  %1770 = load i16, i16* %arrayidx9.6.1.58, align 2, !tbaa !3
  %conv1.i.6.1.58 = sext i16 %1770 to i32
  %mul.i.6.1.58 = mul nsw i32 %conv1.i.6.1.58, 996
  %call.i.6.1.58 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.58) #2
  %arrayidx11.6.1.58 = getelementptr inbounds i16, i16* %r, i64 233
  %1771 = load i16, i16* %arrayidx11.6.1.58, align 2, !tbaa !3
  %sub.6.1.58 = sub i16 %1771, %call.i.6.1.58
  store i16 %sub.6.1.58, i16* %arrayidx9.6.1.58, align 2, !tbaa !3
  %add21.6.1.58 = add i16 %1771, %call.i.6.1.58
  store i16 %add21.6.1.58, i16* %arrayidx11.6.1.58, align 2, !tbaa !3
  %arrayidx9.6.59 = getelementptr inbounds i16, i16* %r, i64 238
  %1772 = load i16, i16* %arrayidx9.6.59, align 2, !tbaa !3
  %conv1.i.6.59 = sext i16 %1772 to i32
  %mul.i.6.59 = mul nsw i32 %conv1.i.6.59, 991
  %call.i.6.59 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.59) #2
  %arrayidx11.6.59 = getelementptr inbounds i16, i16* %r, i64 236
  %1773 = load i16, i16* %arrayidx11.6.59, align 2, !tbaa !3
  %sub.6.59 = sub i16 %1773, %call.i.6.59
  store i16 %sub.6.59, i16* %arrayidx9.6.59, align 2, !tbaa !3
  %add21.6.59 = add i16 %1773, %call.i.6.59
  store i16 %add21.6.59, i16* %arrayidx11.6.59, align 2, !tbaa !3
  %arrayidx9.6.1.59 = getelementptr inbounds i16, i16* %r, i64 239
  %1774 = load i16, i16* %arrayidx9.6.1.59, align 2, !tbaa !3
  %conv1.i.6.1.59 = sext i16 %1774 to i32
  %mul.i.6.1.59 = mul nsw i32 %conv1.i.6.1.59, 991
  %call.i.6.1.59 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.59) #2
  %arrayidx11.6.1.59 = getelementptr inbounds i16, i16* %r, i64 237
  %1775 = load i16, i16* %arrayidx11.6.1.59, align 2, !tbaa !3
  %sub.6.1.59 = sub i16 %1775, %call.i.6.1.59
  store i16 %sub.6.1.59, i16* %arrayidx9.6.1.59, align 2, !tbaa !3
  %add21.6.1.59 = add i16 %1775, %call.i.6.1.59
  store i16 %add21.6.1.59, i16* %arrayidx11.6.1.59, align 2, !tbaa !3
  %arrayidx9.6.60 = getelementptr inbounds i16, i16* %r, i64 242
  %1776 = load i16, i16* %arrayidx9.6.60, align 2, !tbaa !3
  %conv1.i.6.60 = sext i16 %1776 to i32
  %mul.i.6.60 = mul nsw i32 %conv1.i.6.60, 958
  %call.i.6.60 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.60) #2
  %arrayidx11.6.60 = getelementptr inbounds i16, i16* %r, i64 240
  %1777 = load i16, i16* %arrayidx11.6.60, align 2, !tbaa !3
  %sub.6.60 = sub i16 %1777, %call.i.6.60
  store i16 %sub.6.60, i16* %arrayidx9.6.60, align 2, !tbaa !3
  %add21.6.60 = add i16 %1777, %call.i.6.60
  store i16 %add21.6.60, i16* %arrayidx11.6.60, align 2, !tbaa !3
  %arrayidx9.6.1.60 = getelementptr inbounds i16, i16* %r, i64 243
  %1778 = load i16, i16* %arrayidx9.6.1.60, align 2, !tbaa !3
  %conv1.i.6.1.60 = sext i16 %1778 to i32
  %mul.i.6.1.60 = mul nsw i32 %conv1.i.6.1.60, 958
  %call.i.6.1.60 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.60) #2
  %arrayidx11.6.1.60 = getelementptr inbounds i16, i16* %r, i64 241
  %1779 = load i16, i16* %arrayidx11.6.1.60, align 2, !tbaa !3
  %sub.6.1.60 = sub i16 %1779, %call.i.6.1.60
  store i16 %sub.6.1.60, i16* %arrayidx9.6.1.60, align 2, !tbaa !3
  %add21.6.1.60 = add i16 %1779, %call.i.6.1.60
  store i16 %add21.6.1.60, i16* %arrayidx11.6.1.60, align 2, !tbaa !3
  %arrayidx9.6.61 = getelementptr inbounds i16, i16* %r, i64 246
  %1780 = load i16, i16* %arrayidx9.6.61, align 2, !tbaa !3
  %conv1.i.6.61 = sext i16 %1780 to i32
  %mul.i.6.61 = mul nsw i32 %conv1.i.6.61, -1460
  %call.i.6.61 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.61) #2
  %arrayidx11.6.61 = getelementptr inbounds i16, i16* %r, i64 244
  %1781 = load i16, i16* %arrayidx11.6.61, align 2, !tbaa !3
  %sub.6.61 = sub i16 %1781, %call.i.6.61
  store i16 %sub.6.61, i16* %arrayidx9.6.61, align 2, !tbaa !3
  %add21.6.61 = add i16 %1781, %call.i.6.61
  store i16 %add21.6.61, i16* %arrayidx11.6.61, align 2, !tbaa !3
  %arrayidx9.6.1.61 = getelementptr inbounds i16, i16* %r, i64 247
  %1782 = load i16, i16* %arrayidx9.6.1.61, align 2, !tbaa !3
  %conv1.i.6.1.61 = sext i16 %1782 to i32
  %mul.i.6.1.61 = mul nsw i32 %conv1.i.6.1.61, -1460
  %call.i.6.1.61 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.61) #2
  %arrayidx11.6.1.61 = getelementptr inbounds i16, i16* %r, i64 245
  %1783 = load i16, i16* %arrayidx11.6.1.61, align 2, !tbaa !3
  %sub.6.1.61 = sub i16 %1783, %call.i.6.1.61
  store i16 %sub.6.1.61, i16* %arrayidx9.6.1.61, align 2, !tbaa !3
  %add21.6.1.61 = add i16 %1783, %call.i.6.1.61
  store i16 %add21.6.1.61, i16* %arrayidx11.6.1.61, align 2, !tbaa !3
  %arrayidx9.6.62 = getelementptr inbounds i16, i16* %r, i64 250
  %1784 = load i16, i16* %arrayidx9.6.62, align 2, !tbaa !3
  %conv1.i.6.62 = sext i16 %1784 to i32
  %mul.i.6.62 = mul nsw i32 %conv1.i.6.62, 1522
  %call.i.6.62 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.62) #2
  %arrayidx11.6.62 = getelementptr inbounds i16, i16* %r, i64 248
  %1785 = load i16, i16* %arrayidx11.6.62, align 2, !tbaa !3
  %sub.6.62 = sub i16 %1785, %call.i.6.62
  store i16 %sub.6.62, i16* %arrayidx9.6.62, align 2, !tbaa !3
  %add21.6.62 = add i16 %1785, %call.i.6.62
  store i16 %add21.6.62, i16* %arrayidx11.6.62, align 2, !tbaa !3
  %arrayidx9.6.1.62 = getelementptr inbounds i16, i16* %r, i64 251
  %1786 = load i16, i16* %arrayidx9.6.1.62, align 2, !tbaa !3
  %conv1.i.6.1.62 = sext i16 %1786 to i32
  %mul.i.6.1.62 = mul nsw i32 %conv1.i.6.1.62, 1522
  %call.i.6.1.62 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.62) #2
  %arrayidx11.6.1.62 = getelementptr inbounds i16, i16* %r, i64 249
  %1787 = load i16, i16* %arrayidx11.6.1.62, align 2, !tbaa !3
  %sub.6.1.62 = sub i16 %1787, %call.i.6.1.62
  store i16 %sub.6.1.62, i16* %arrayidx9.6.1.62, align 2, !tbaa !3
  %add21.6.1.62 = add i16 %1787, %call.i.6.1.62
  store i16 %add21.6.1.62, i16* %arrayidx11.6.1.62, align 2, !tbaa !3
  %arrayidx9.6.63 = getelementptr inbounds i16, i16* %r, i64 254
  %1788 = load i16, i16* %arrayidx9.6.63, align 2, !tbaa !3
  %conv1.i.6.63 = sext i16 %1788 to i32
  %mul.i.6.63 = mul nsw i32 %conv1.i.6.63, 1628
  %call.i.6.63 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.63) #2
  %arrayidx11.6.63 = getelementptr inbounds i16, i16* %r, i64 252
  %1789 = load i16, i16* %arrayidx11.6.63, align 2, !tbaa !3
  %sub.6.63 = sub i16 %1789, %call.i.6.63
  store i16 %sub.6.63, i16* %arrayidx9.6.63, align 2, !tbaa !3
  %add21.6.63 = add i16 %1789, %call.i.6.63
  store i16 %add21.6.63, i16* %arrayidx11.6.63, align 2, !tbaa !3
  %arrayidx9.6.1.63 = getelementptr inbounds i16, i16* %r, i64 255
  %1790 = load i16, i16* %arrayidx9.6.1.63, align 2, !tbaa !3
  %conv1.i.6.1.63 = sext i16 %1790 to i32
  %mul.i.6.1.63 = mul nsw i32 %conv1.i.6.1.63, 1628
  %call.i.6.1.63 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6.1.63) #2
  %arrayidx11.6.1.63 = getelementptr inbounds i16, i16* %r, i64 253
  %1791 = load i16, i16* %arrayidx11.6.1.63, align 2, !tbaa !3
  %sub.6.1.63 = sub i16 %1791, %call.i.6.1.63
  store i16 %sub.6.1.63, i16* %arrayidx9.6.1.63, align 2, !tbaa !3
  %add21.6.1.63 = add i16 %1791, %call.i.6.1.63
  store i16 %add21.6.1.63, i16* %arrayidx11.6.1.63, align 2, !tbaa !3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_KYBER512_CLEAN_invntt(i16* nocapture %r) local_unnamed_addr #0 {
entry:
  br label %for.body6.lr.ph

for.body6.lr.ph:                                  ; preds = %for.body6.lr.ph, %entry
  %start.096 = phi i32 [ 0, %entry ], [ %.pre, %for.body6.lr.ph ]
  %k.195 = phi i32 [ 127, %entry ], [ %dec, %for.body6.lr.ph ]
  %dec = add i32 %k.195, -1
  %idxprom = zext i32 %k.195 to i64
  %arrayidx = getelementptr inbounds [128 x i16], [128 x i16]* @PQCLEAN_KYBER512_CLEAN_zetas, i64 0, i64 %idxprom
  %0 = load i16, i16* %arrayidx, align 2, !tbaa !3
  %conv.i = sext i16 %0 to i32
  %1 = zext i32 %start.096 to i64
  %arrayidx8 = getelementptr inbounds i16, i16* %r, i64 %1
  %2 = load i16, i16* %arrayidx8, align 2, !tbaa !3
  %add9 = or i64 %1, 2
  %arrayidx11 = getelementptr inbounds i16, i16* %r, i64 %add9
  %3 = load i16, i16* %arrayidx11, align 2, !tbaa !3
  %add13 = add i16 %3, %2
  %call = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_barrett_reduce(i16 signext %add13) #2
  store i16 %call, i16* %arrayidx8, align 2, !tbaa !3
  %4 = load i16, i16* %arrayidx11, align 2, !tbaa !3
  %sub = sub i16 %4, %2
  store i16 %sub, i16* %arrayidx11, align 2, !tbaa !3
  %conv1.i = sext i16 %sub to i32
  %mul.i = mul nsw i32 %conv1.i, %conv.i
  %call.i = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i) #2
  store i16 %call.i, i16* %arrayidx11, align 2, !tbaa !3
  %indvars.iv.next100 = or i64 %1, 1
  %arrayidx8.1108 = getelementptr inbounds i16, i16* %r, i64 %indvars.iv.next100
  %5 = load i16, i16* %arrayidx8.1108, align 2, !tbaa !3
  %add9.1109 = or i64 %1, 3
  %arrayidx11.1111 = getelementptr inbounds i16, i16* %r, i64 %add9.1109
  %6 = load i16, i16* %arrayidx11.1111, align 2, !tbaa !3
  %add13.1112 = add i16 %6, %5
  %call.1113 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_barrett_reduce(i16 signext %add13.1112) #2
  store i16 %call.1113, i16* %arrayidx8.1108, align 2, !tbaa !3
  %7 = load i16, i16* %arrayidx11.1111, align 2, !tbaa !3
  %sub.1114 = sub i16 %7, %5
  store i16 %sub.1114, i16* %arrayidx11.1111, align 2, !tbaa !3
  %conv1.i.1115 = sext i16 %sub.1114 to i32
  %mul.i.1116 = mul nsw i32 %conv1.i.1115, %conv.i
  %call.i.1117 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1116) #2
  store i16 %call.i.1117, i16* %arrayidx11.1111, align 2, !tbaa !3
  %.pre = add i32 %start.096, 4
  %cmp2 = icmp ult i32 %.pre, 256
  br i1 %cmp2, label %for.body6.lr.ph, label %for.body6.lr.ph.1

for.body41:                                       ; preds = %for.body6.6, %for.body41
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body41 ], [ 0, %for.body6.6 ]
  %arrayidx43 = getelementptr inbounds i16, i16* %r, i64 %indvars.iv
  %8 = load i16, i16* %arrayidx43, align 2, !tbaa !3
  %conv.i89 = sext i16 %8 to i32
  %mul.i90 = mul nsw i32 %conv.i89, 1441
  %call.i91 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i90) #2
  store i16 %call.i91, i16* %arrayidx43, align 2, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond, label %for.end49, label %for.body41

for.end49:                                        ; preds = %for.body41
  ret void

for.body6.lr.ph.1:                                ; preds = %for.body6.lr.ph, %for.body6.lr.ph.1
  %start.096.1 = phi i32 [ %.pre102, %for.body6.lr.ph.1 ], [ 0, %for.body6.lr.ph ]
  %k.195.1 = phi i32 [ %dec.1, %for.body6.lr.ph.1 ], [ %dec, %for.body6.lr.ph ]
  %dec.1 = add i32 %k.195.1, -1
  %idxprom.1 = zext i32 %k.195.1 to i64
  %arrayidx.1 = getelementptr inbounds [128 x i16], [128 x i16]* @PQCLEAN_KYBER512_CLEAN_zetas, i64 0, i64 %idxprom.1
  %9 = load i16, i16* %arrayidx.1, align 2, !tbaa !3
  %conv.i.1 = sext i16 %9 to i32
  %10 = zext i32 %start.096.1 to i64
  %arrayidx8.1 = getelementptr inbounds i16, i16* %r, i64 %10
  %11 = load i16, i16* %arrayidx8.1, align 2, !tbaa !3
  %add9.1 = or i64 %10, 4
  %arrayidx11.1 = getelementptr inbounds i16, i16* %r, i64 %add9.1
  %12 = load i16, i16* %arrayidx11.1, align 2, !tbaa !3
  %add13.1 = add i16 %12, %11
  %call.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_barrett_reduce(i16 signext %add13.1) #2
  store i16 %call.1, i16* %arrayidx8.1, align 2, !tbaa !3
  %13 = load i16, i16* %arrayidx11.1, align 2, !tbaa !3
  %sub.1 = sub i16 %13, %11
  store i16 %sub.1, i16* %arrayidx11.1, align 2, !tbaa !3
  %conv1.i.1 = sext i16 %sub.1 to i32
  %mul.i.1 = mul nsw i32 %conv1.i.1, %conv.i.1
  %call.i.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1) #2
  store i16 %call.i.1, i16* %arrayidx11.1, align 2, !tbaa !3
  %indvars.iv.next100.1 = or i64 %10, 1
  %arrayidx8.1.1 = getelementptr inbounds i16, i16* %r, i64 %indvars.iv.next100.1
  %14 = load i16, i16* %arrayidx8.1.1, align 2, !tbaa !3
  %add9.1.1 = or i64 %10, 5
  %arrayidx11.1.1 = getelementptr inbounds i16, i16* %r, i64 %add9.1.1
  %15 = load i16, i16* %arrayidx11.1.1, align 2, !tbaa !3
  %add13.1.1 = add i16 %15, %14
  %call.1.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_barrett_reduce(i16 signext %add13.1.1) #2
  store i16 %call.1.1, i16* %arrayidx8.1.1, align 2, !tbaa !3
  %16 = load i16, i16* %arrayidx11.1.1, align 2, !tbaa !3
  %sub.1.1 = sub i16 %16, %14
  store i16 %sub.1.1, i16* %arrayidx11.1.1, align 2, !tbaa !3
  %conv1.i.1.1 = sext i16 %sub.1.1 to i32
  %mul.i.1.1 = mul nsw i32 %conv1.i.1.1, %conv.i.1
  %call.i.1.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.1) #2
  store i16 %call.i.1.1, i16* %arrayidx11.1.1, align 2, !tbaa !3
  %indvars.iv.next100.1.1 = add nuw nsw i64 %indvars.iv.next100.1, 1
  %arrayidx8.1.2 = getelementptr inbounds i16, i16* %r, i64 %indvars.iv.next100.1.1
  %17 = load i16, i16* %arrayidx8.1.2, align 2, !tbaa !3
  %add9.1.2 = add nuw nsw i64 %indvars.iv.next100.1, 5
  %arrayidx11.1.2 = getelementptr inbounds i16, i16* %r, i64 %add9.1.2
  %18 = load i16, i16* %arrayidx11.1.2, align 2, !tbaa !3
  %add13.1.2 = add i16 %18, %17
  %call.1.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_barrett_reduce(i16 signext %add13.1.2) #2
  store i16 %call.1.2, i16* %arrayidx8.1.2, align 2, !tbaa !3
  %19 = load i16, i16* %arrayidx11.1.2, align 2, !tbaa !3
  %sub.1.2 = sub i16 %19, %17
  store i16 %sub.1.2, i16* %arrayidx11.1.2, align 2, !tbaa !3
  %conv1.i.1.2 = sext i16 %sub.1.2 to i32
  %mul.i.1.2 = mul nsw i32 %conv1.i.1.2, %conv.i.1
  %call.i.1.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.2) #2
  store i16 %call.i.1.2, i16* %arrayidx11.1.2, align 2, !tbaa !3
  %indvars.iv.next100.1.2 = or i64 %10, 3
  %arrayidx8.1.3 = getelementptr inbounds i16, i16* %r, i64 %indvars.iv.next100.1.2
  %20 = load i16, i16* %arrayidx8.1.3, align 2, !tbaa !3
  %add9.1.3 = or i64 %10, 7
  %arrayidx11.1.3 = getelementptr inbounds i16, i16* %r, i64 %add9.1.3
  %21 = load i16, i16* %arrayidx11.1.3, align 2, !tbaa !3
  %add13.1.3 = add i16 %21, %20
  %call.1.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_barrett_reduce(i16 signext %add13.1.3) #2
  store i16 %call.1.3, i16* %arrayidx8.1.3, align 2, !tbaa !3
  %22 = load i16, i16* %arrayidx11.1.3, align 2, !tbaa !3
  %sub.1.3 = sub i16 %22, %20
  store i16 %sub.1.3, i16* %arrayidx11.1.3, align 2, !tbaa !3
  %conv1.i.1.3 = sext i16 %sub.1.3 to i32
  %mul.i.1.3 = mul nsw i32 %conv1.i.1.3, %conv.i.1
  %call.i.1.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.1.3) #2
  store i16 %call.i.1.3, i16* %arrayidx11.1.3, align 2, !tbaa !3
  %.pre102 = add i32 %start.096.1, 8
  %cmp2.1 = icmp ult i32 %.pre102, 256
  br i1 %cmp2.1, label %for.body6.lr.ph.1, label %for.body6.lr.ph.2

for.body6.lr.ph.2:                                ; preds = %for.body6.lr.ph.1, %for.body6.lr.ph.2
  %start.096.2 = phi i32 [ %.pre103, %for.body6.lr.ph.2 ], [ 0, %for.body6.lr.ph.1 ]
  %k.195.2 = phi i32 [ %dec.2, %for.body6.lr.ph.2 ], [ %dec.1, %for.body6.lr.ph.1 ]
  %dec.2 = add i32 %k.195.2, -1
  %idxprom.2 = zext i32 %k.195.2 to i64
  %arrayidx.2 = getelementptr inbounds [128 x i16], [128 x i16]* @PQCLEAN_KYBER512_CLEAN_zetas, i64 0, i64 %idxprom.2
  %23 = load i16, i16* %arrayidx.2, align 2, !tbaa !3
  %conv.i.2 = sext i16 %23 to i32
  %24 = zext i32 %start.096.2 to i64
  %arrayidx8.2 = getelementptr inbounds i16, i16* %r, i64 %24
  %25 = load i16, i16* %arrayidx8.2, align 2, !tbaa !3
  %add9.2 = or i64 %24, 8
  %arrayidx11.2 = getelementptr inbounds i16, i16* %r, i64 %add9.2
  %26 = load i16, i16* %arrayidx11.2, align 2, !tbaa !3
  %add13.2 = add i16 %26, %25
  %call.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_barrett_reduce(i16 signext %add13.2) #2
  store i16 %call.2, i16* %arrayidx8.2, align 2, !tbaa !3
  %27 = load i16, i16* %arrayidx11.2, align 2, !tbaa !3
  %sub.2 = sub i16 %27, %25
  store i16 %sub.2, i16* %arrayidx11.2, align 2, !tbaa !3
  %conv1.i.2 = sext i16 %sub.2 to i32
  %mul.i.2 = mul nsw i32 %conv1.i.2, %conv.i.2
  %call.i.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2) #2
  store i16 %call.i.2, i16* %arrayidx11.2, align 2, !tbaa !3
  %indvars.iv.next100.2 = or i64 %24, 1
  %arrayidx8.2.1 = getelementptr inbounds i16, i16* %r, i64 %indvars.iv.next100.2
  %28 = load i16, i16* %arrayidx8.2.1, align 2, !tbaa !3
  %add9.2.1 = or i64 %24, 9
  %arrayidx11.2.1 = getelementptr inbounds i16, i16* %r, i64 %add9.2.1
  %29 = load i16, i16* %arrayidx11.2.1, align 2, !tbaa !3
  %add13.2.1 = add i16 %29, %28
  %call.2.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_barrett_reduce(i16 signext %add13.2.1) #2
  store i16 %call.2.1, i16* %arrayidx8.2.1, align 2, !tbaa !3
  %30 = load i16, i16* %arrayidx11.2.1, align 2, !tbaa !3
  %sub.2.1 = sub i16 %30, %28
  store i16 %sub.2.1, i16* %arrayidx11.2.1, align 2, !tbaa !3
  %conv1.i.2.1 = sext i16 %sub.2.1 to i32
  %mul.i.2.1 = mul nsw i32 %conv1.i.2.1, %conv.i.2
  %call.i.2.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.1) #2
  store i16 %call.i.2.1, i16* %arrayidx11.2.1, align 2, !tbaa !3
  %indvars.iv.next100.2.1 = add nuw nsw i64 %indvars.iv.next100.2, 1
  %arrayidx8.2.2 = getelementptr inbounds i16, i16* %r, i64 %indvars.iv.next100.2.1
  %31 = load i16, i16* %arrayidx8.2.2, align 2, !tbaa !3
  %add9.2.2 = add nuw nsw i64 %indvars.iv.next100.2, 9
  %arrayidx11.2.2 = getelementptr inbounds i16, i16* %r, i64 %add9.2.2
  %32 = load i16, i16* %arrayidx11.2.2, align 2, !tbaa !3
  %add13.2.2 = add i16 %32, %31
  %call.2.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_barrett_reduce(i16 signext %add13.2.2) #2
  store i16 %call.2.2, i16* %arrayidx8.2.2, align 2, !tbaa !3
  %33 = load i16, i16* %arrayidx11.2.2, align 2, !tbaa !3
  %sub.2.2 = sub i16 %33, %31
  store i16 %sub.2.2, i16* %arrayidx11.2.2, align 2, !tbaa !3
  %conv1.i.2.2 = sext i16 %sub.2.2 to i32
  %mul.i.2.2 = mul nsw i32 %conv1.i.2.2, %conv.i.2
  %call.i.2.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.2) #2
  store i16 %call.i.2.2, i16* %arrayidx11.2.2, align 2, !tbaa !3
  %indvars.iv.next100.2.2 = or i64 %24, 3
  %arrayidx8.2.3 = getelementptr inbounds i16, i16* %r, i64 %indvars.iv.next100.2.2
  %34 = load i16, i16* %arrayidx8.2.3, align 2, !tbaa !3
  %add9.2.3 = or i64 %24, 11
  %arrayidx11.2.3 = getelementptr inbounds i16, i16* %r, i64 %add9.2.3
  %35 = load i16, i16* %arrayidx11.2.3, align 2, !tbaa !3
  %add13.2.3 = add i16 %35, %34
  %call.2.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_barrett_reduce(i16 signext %add13.2.3) #2
  store i16 %call.2.3, i16* %arrayidx8.2.3, align 2, !tbaa !3
  %36 = load i16, i16* %arrayidx11.2.3, align 2, !tbaa !3
  %sub.2.3 = sub i16 %36, %34
  store i16 %sub.2.3, i16* %arrayidx11.2.3, align 2, !tbaa !3
  %conv1.i.2.3 = sext i16 %sub.2.3 to i32
  %mul.i.2.3 = mul nsw i32 %conv1.i.2.3, %conv.i.2
  %call.i.2.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.3) #2
  store i16 %call.i.2.3, i16* %arrayidx11.2.3, align 2, !tbaa !3
  %indvars.iv.next100.2.3 = add nuw nsw i64 %indvars.iv.next100.2.2, 1
  %arrayidx8.2.4 = getelementptr inbounds i16, i16* %r, i64 %indvars.iv.next100.2.3
  %37 = load i16, i16* %arrayidx8.2.4, align 2, !tbaa !3
  %add9.2.4 = add nuw nsw i64 %indvars.iv.next100.2.2, 9
  %arrayidx11.2.4 = getelementptr inbounds i16, i16* %r, i64 %add9.2.4
  %38 = load i16, i16* %arrayidx11.2.4, align 2, !tbaa !3
  %add13.2.4 = add i16 %38, %37
  %call.2.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_barrett_reduce(i16 signext %add13.2.4) #2
  store i16 %call.2.4, i16* %arrayidx8.2.4, align 2, !tbaa !3
  %39 = load i16, i16* %arrayidx11.2.4, align 2, !tbaa !3
  %sub.2.4 = sub i16 %39, %37
  store i16 %sub.2.4, i16* %arrayidx11.2.4, align 2, !tbaa !3
  %conv1.i.2.4 = sext i16 %sub.2.4 to i32
  %mul.i.2.4 = mul nsw i32 %conv1.i.2.4, %conv.i.2
  %call.i.2.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.4) #2
  store i16 %call.i.2.4, i16* %arrayidx11.2.4, align 2, !tbaa !3
  %indvars.iv.next100.2.4 = add nuw nsw i64 %indvars.iv.next100.2.2, 2
  %arrayidx8.2.5 = getelementptr inbounds i16, i16* %r, i64 %indvars.iv.next100.2.4
  %40 = load i16, i16* %arrayidx8.2.5, align 2, !tbaa !3
  %add9.2.5 = add nuw nsw i64 %indvars.iv.next100.2.2, 10
  %arrayidx11.2.5 = getelementptr inbounds i16, i16* %r, i64 %add9.2.5
  %41 = load i16, i16* %arrayidx11.2.5, align 2, !tbaa !3
  %add13.2.5 = add i16 %41, %40
  %call.2.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_barrett_reduce(i16 signext %add13.2.5) #2
  store i16 %call.2.5, i16* %arrayidx8.2.5, align 2, !tbaa !3
  %42 = load i16, i16* %arrayidx11.2.5, align 2, !tbaa !3
  %sub.2.5 = sub i16 %42, %40
  store i16 %sub.2.5, i16* %arrayidx11.2.5, align 2, !tbaa !3
  %conv1.i.2.5 = sext i16 %sub.2.5 to i32
  %mul.i.2.5 = mul nsw i32 %conv1.i.2.5, %conv.i.2
  %call.i.2.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.5) #2
  store i16 %call.i.2.5, i16* %arrayidx11.2.5, align 2, !tbaa !3
  %indvars.iv.next100.2.5 = add nuw nsw i64 %indvars.iv.next100.2.2, 3
  %arrayidx8.2.6 = getelementptr inbounds i16, i16* %r, i64 %indvars.iv.next100.2.5
  %43 = load i16, i16* %arrayidx8.2.6, align 2, !tbaa !3
  %add9.2.6 = add nuw nsw i64 %indvars.iv.next100.2.2, 11
  %arrayidx11.2.6 = getelementptr inbounds i16, i16* %r, i64 %add9.2.6
  %44 = load i16, i16* %arrayidx11.2.6, align 2, !tbaa !3
  %add13.2.6 = add i16 %44, %43
  %call.2.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_barrett_reduce(i16 signext %add13.2.6) #2
  store i16 %call.2.6, i16* %arrayidx8.2.6, align 2, !tbaa !3
  %45 = load i16, i16* %arrayidx11.2.6, align 2, !tbaa !3
  %sub.2.6 = sub i16 %45, %43
  store i16 %sub.2.6, i16* %arrayidx11.2.6, align 2, !tbaa !3
  %conv1.i.2.6 = sext i16 %sub.2.6 to i32
  %mul.i.2.6 = mul nsw i32 %conv1.i.2.6, %conv.i.2
  %call.i.2.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.6) #2
  store i16 %call.i.2.6, i16* %arrayidx11.2.6, align 2, !tbaa !3
  %indvars.iv.next100.2.6 = or i64 %24, 7
  %arrayidx8.2.7 = getelementptr inbounds i16, i16* %r, i64 %indvars.iv.next100.2.6
  %46 = load i16, i16* %arrayidx8.2.7, align 2, !tbaa !3
  %add9.2.7 = or i64 %24, 15
  %arrayidx11.2.7 = getelementptr inbounds i16, i16* %r, i64 %add9.2.7
  %47 = load i16, i16* %arrayidx11.2.7, align 2, !tbaa !3
  %add13.2.7 = add i16 %47, %46
  %call.2.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_barrett_reduce(i16 signext %add13.2.7) #2
  store i16 %call.2.7, i16* %arrayidx8.2.7, align 2, !tbaa !3
  %48 = load i16, i16* %arrayidx11.2.7, align 2, !tbaa !3
  %sub.2.7 = sub i16 %48, %46
  store i16 %sub.2.7, i16* %arrayidx11.2.7, align 2, !tbaa !3
  %conv1.i.2.7 = sext i16 %sub.2.7 to i32
  %mul.i.2.7 = mul nsw i32 %conv1.i.2.7, %conv.i.2
  %call.i.2.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.2.7) #2
  store i16 %call.i.2.7, i16* %arrayidx11.2.7, align 2, !tbaa !3
  %.pre103 = add i32 %start.096.2, 16
  %cmp2.2 = icmp ult i32 %.pre103, 256
  br i1 %cmp2.2, label %for.body6.lr.ph.2, label %for.body6.lr.ph.3

for.body6.lr.ph.3:                                ; preds = %for.body6.lr.ph.2
  %dec.3 = add i32 %k.195.2, -2
  %idxprom.3 = zext i32 %dec.2 to i64
  %arrayidx.3 = getelementptr inbounds [128 x i16], [128 x i16]* @PQCLEAN_KYBER512_CLEAN_zetas, i64 0, i64 %idxprom.3
  %49 = load i16, i16* %arrayidx.3, align 2, !tbaa !3
  %conv.i.3 = sext i16 %49 to i32
  br label %for.body6.3

for.body6.3:                                      ; preds = %for.body6.3, %for.body6.lr.ph.3
  %indvars.iv99.3 = phi i64 [ 0, %for.body6.lr.ph.3 ], [ %indvars.iv.next100.3, %for.body6.3 ]
  %arrayidx8.3 = getelementptr inbounds i16, i16* %r, i64 %indvars.iv99.3
  %50 = load i16, i16* %arrayidx8.3, align 2, !tbaa !3
  %add9.3 = add nuw i64 %indvars.iv99.3, 16
  %idxprom10.3 = and i64 %add9.3, 4294967295
  %arrayidx11.3 = getelementptr inbounds i16, i16* %r, i64 %idxprom10.3
  %51 = load i16, i16* %arrayidx11.3, align 2, !tbaa !3
  %add13.3 = add i16 %51, %50
  %call.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_barrett_reduce(i16 signext %add13.3) #2
  store i16 %call.3, i16* %arrayidx8.3, align 2, !tbaa !3
  %52 = load i16, i16* %arrayidx11.3, align 2, !tbaa !3
  %sub.3 = sub i16 %52, %50
  store i16 %sub.3, i16* %arrayidx11.3, align 2, !tbaa !3
  %conv1.i.3 = sext i16 %sub.3 to i32
  %mul.i.3 = mul nsw i32 %conv1.i.3, %conv.i.3
  %call.i.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3) #2
  store i16 %call.i.3, i16* %arrayidx11.3, align 2, !tbaa !3
  %indvars.iv.next100.3 = add nuw nsw i64 %indvars.iv99.3, 1
  %exitcond101.3 = icmp eq i64 %indvars.iv.next100.3, 16
  br i1 %exitcond101.3, label %for.inc33.3, label %for.body6.3

for.inc33.3:                                      ; preds = %for.body6.3
  %dec.3.1 = add i32 %k.195.2, -3
  %idxprom.3.1 = zext i32 %dec.3 to i64
  %arrayidx.3.1 = getelementptr inbounds [128 x i16], [128 x i16]* @PQCLEAN_KYBER512_CLEAN_zetas, i64 0, i64 %idxprom.3.1
  %53 = load i16, i16* %arrayidx.3.1, align 2, !tbaa !3
  %conv.i.3.1 = sext i16 %53 to i32
  br label %for.body6.3.1

for.body6.4:                                      ; preds = %for.body6.4, %for.inc33.3.7
  %indvars.iv99.4 = phi i64 [ 0, %for.inc33.3.7 ], [ %indvars.iv.next100.4, %for.body6.4 ]
  %arrayidx8.4 = getelementptr inbounds i16, i16* %r, i64 %indvars.iv99.4
  %54 = load i16, i16* %arrayidx8.4, align 2, !tbaa !3
  %add9.4 = add nuw i64 %indvars.iv99.4, 32
  %idxprom10.4 = and i64 %add9.4, 4294967295
  %arrayidx11.4 = getelementptr inbounds i16, i16* %r, i64 %idxprom10.4
  %55 = load i16, i16* %arrayidx11.4, align 2, !tbaa !3
  %add13.4 = add i16 %55, %54
  %call.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_barrett_reduce(i16 signext %add13.4) #2
  store i16 %call.4, i16* %arrayidx8.4, align 2, !tbaa !3
  %56 = load i16, i16* %arrayidx11.4, align 2, !tbaa !3
  %sub.4 = sub i16 %56, %54
  store i16 %sub.4, i16* %arrayidx11.4, align 2, !tbaa !3
  %conv1.i.4 = sext i16 %sub.4 to i32
  %mul.i.4 = mul nsw i32 %conv1.i.4, %conv.i.4
  %call.i.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4) #2
  store i16 %call.i.4, i16* %arrayidx11.4, align 2, !tbaa !3
  %indvars.iv.next100.4 = add nuw nsw i64 %indvars.iv99.4, 1
  %exitcond101.4 = icmp eq i64 %indvars.iv.next100.4, 32
  br i1 %exitcond101.4, label %for.inc33.4, label %for.body6.4

for.inc33.4:                                      ; preds = %for.body6.4
  %dec.4.1 = add i32 %k.195.2, -11
  %idxprom.4.1 = zext i32 %dec.4 to i64
  %arrayidx.4.1 = getelementptr inbounds [128 x i16], [128 x i16]* @PQCLEAN_KYBER512_CLEAN_zetas, i64 0, i64 %idxprom.4.1
  %57 = load i16, i16* %arrayidx.4.1, align 2, !tbaa !3
  %conv.i.4.1 = sext i16 %57 to i32
  br label %for.body6.4.1

for.body6.5:                                      ; preds = %for.body6.5, %for.inc33.4.3
  %indvars.iv99.5 = phi i64 [ 0, %for.inc33.4.3 ], [ %indvars.iv.next100.5, %for.body6.5 ]
  %arrayidx8.5 = getelementptr inbounds i16, i16* %r, i64 %indvars.iv99.5
  %58 = load i16, i16* %arrayidx8.5, align 2, !tbaa !3
  %add9.5 = add nuw i64 %indvars.iv99.5, 64
  %idxprom10.5 = and i64 %add9.5, 4294967295
  %arrayidx11.5 = getelementptr inbounds i16, i16* %r, i64 %idxprom10.5
  %59 = load i16, i16* %arrayidx11.5, align 2, !tbaa !3
  %add13.5 = add i16 %59, %58
  %call.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_barrett_reduce(i16 signext %add13.5) #2
  store i16 %call.5, i16* %arrayidx8.5, align 2, !tbaa !3
  %60 = load i16, i16* %arrayidx11.5, align 2, !tbaa !3
  %sub.5 = sub i16 %60, %58
  store i16 %sub.5, i16* %arrayidx11.5, align 2, !tbaa !3
  %conv1.i.5 = sext i16 %sub.5 to i32
  %mul.i.5 = mul nsw i32 %conv1.i.5, %conv.i.5
  %call.i.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5) #2
  store i16 %call.i.5, i16* %arrayidx11.5, align 2, !tbaa !3
  %indvars.iv.next100.5 = add nuw nsw i64 %indvars.iv99.5, 1
  %exitcond101.5 = icmp eq i64 %indvars.iv.next100.5, 64
  br i1 %exitcond101.5, label %for.inc33.5, label %for.body6.5

for.inc33.5:                                      ; preds = %for.body6.5
  %dec.5.1 = add i32 %k.195.2, -15
  %idxprom.5.1 = zext i32 %dec.5 to i64
  %arrayidx.5.1 = getelementptr inbounds [128 x i16], [128 x i16]* @PQCLEAN_KYBER512_CLEAN_zetas, i64 0, i64 %idxprom.5.1
  %61 = load i16, i16* %arrayidx.5.1, align 2, !tbaa !3
  %conv.i.5.1 = sext i16 %61 to i32
  br label %for.body6.5.1

for.body6.6:                                      ; preds = %for.body6.6, %for.inc33.5.1
  %indvars.iv99.6 = phi i64 [ 0, %for.inc33.5.1 ], [ %indvars.iv.next100.6, %for.body6.6 ]
  %arrayidx8.6 = getelementptr inbounds i16, i16* %r, i64 %indvars.iv99.6
  %62 = load i16, i16* %arrayidx8.6, align 2, !tbaa !3
  %add9.6 = add nuw i64 %indvars.iv99.6, 128
  %idxprom10.6 = and i64 %add9.6, 4294967295
  %arrayidx11.6 = getelementptr inbounds i16, i16* %r, i64 %idxprom10.6
  %63 = load i16, i16* %arrayidx11.6, align 2, !tbaa !3
  %add13.6 = add i16 %63, %62
  %call.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_barrett_reduce(i16 signext %add13.6) #2
  store i16 %call.6, i16* %arrayidx8.6, align 2, !tbaa !3
  %64 = load i16, i16* %arrayidx11.6, align 2, !tbaa !3
  %sub.6 = sub i16 %64, %62
  store i16 %sub.6, i16* %arrayidx11.6, align 2, !tbaa !3
  %conv1.i.6 = sext i16 %sub.6 to i32
  %mul.i.6 = mul nsw i32 %conv1.i.6, %conv.i.6
  %call.i.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.6) #2
  store i16 %call.i.6, i16* %arrayidx11.6, align 2, !tbaa !3
  %indvars.iv.next100.6 = add nuw nsw i64 %indvars.iv99.6, 1
  %exitcond101.6 = icmp eq i64 %indvars.iv.next100.6, 128
  br i1 %exitcond101.6, label %for.body41, label %for.body6.6

for.body6.5.1:                                    ; preds = %for.body6.5.1, %for.inc33.5
  %indvars.iv99.5.1 = phi i64 [ 128, %for.inc33.5 ], [ %indvars.iv.next100.5.1, %for.body6.5.1 ]
  %arrayidx8.5.1 = getelementptr inbounds i16, i16* %r, i64 %indvars.iv99.5.1
  %65 = load i16, i16* %arrayidx8.5.1, align 2, !tbaa !3
  %add9.5.1 = add nuw i64 %indvars.iv99.5.1, 64
  %idxprom10.5.1 = and i64 %add9.5.1, 4294967295
  %arrayidx11.5.1 = getelementptr inbounds i16, i16* %r, i64 %idxprom10.5.1
  %66 = load i16, i16* %arrayidx11.5.1, align 2, !tbaa !3
  %add13.5.1 = add i16 %66, %65
  %call.5.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_barrett_reduce(i16 signext %add13.5.1) #2
  store i16 %call.5.1, i16* %arrayidx8.5.1, align 2, !tbaa !3
  %67 = load i16, i16* %arrayidx11.5.1, align 2, !tbaa !3
  %sub.5.1 = sub i16 %67, %65
  store i16 %sub.5.1, i16* %arrayidx11.5.1, align 2, !tbaa !3
  %conv1.i.5.1 = sext i16 %sub.5.1 to i32
  %mul.i.5.1 = mul nsw i32 %conv1.i.5.1, %conv.i.5.1
  %call.i.5.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.5.1) #2
  store i16 %call.i.5.1, i16* %arrayidx11.5.1, align 2, !tbaa !3
  %indvars.iv.next100.5.1 = add nuw nsw i64 %indvars.iv99.5.1, 1
  %exitcond101.5.1 = icmp eq i64 %indvars.iv.next100.5.1, 192
  br i1 %exitcond101.5.1, label %for.inc33.5.1, label %for.body6.5.1

for.inc33.5.1:                                    ; preds = %for.body6.5.1
  %idxprom.6 = zext i32 %dec.5.1 to i64
  %arrayidx.6 = getelementptr inbounds [128 x i16], [128 x i16]* @PQCLEAN_KYBER512_CLEAN_zetas, i64 0, i64 %idxprom.6
  %68 = load i16, i16* %arrayidx.6, align 2, !tbaa !3
  %conv.i.6 = sext i16 %68 to i32
  br label %for.body6.6

for.body6.4.1:                                    ; preds = %for.body6.4.1, %for.inc33.4
  %indvars.iv99.4.1 = phi i64 [ 64, %for.inc33.4 ], [ %indvars.iv.next100.4.1, %for.body6.4.1 ]
  %arrayidx8.4.1 = getelementptr inbounds i16, i16* %r, i64 %indvars.iv99.4.1
  %69 = load i16, i16* %arrayidx8.4.1, align 2, !tbaa !3
  %add9.4.1 = add nuw i64 %indvars.iv99.4.1, 32
  %idxprom10.4.1 = and i64 %add9.4.1, 4294967295
  %arrayidx11.4.1 = getelementptr inbounds i16, i16* %r, i64 %idxprom10.4.1
  %70 = load i16, i16* %arrayidx11.4.1, align 2, !tbaa !3
  %add13.4.1 = add i16 %70, %69
  %call.4.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_barrett_reduce(i16 signext %add13.4.1) #2
  store i16 %call.4.1, i16* %arrayidx8.4.1, align 2, !tbaa !3
  %71 = load i16, i16* %arrayidx11.4.1, align 2, !tbaa !3
  %sub.4.1 = sub i16 %71, %69
  store i16 %sub.4.1, i16* %arrayidx11.4.1, align 2, !tbaa !3
  %conv1.i.4.1 = sext i16 %sub.4.1 to i32
  %mul.i.4.1 = mul nsw i32 %conv1.i.4.1, %conv.i.4.1
  %call.i.4.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.1) #2
  store i16 %call.i.4.1, i16* %arrayidx11.4.1, align 2, !tbaa !3
  %indvars.iv.next100.4.1 = add nuw nsw i64 %indvars.iv99.4.1, 1
  %exitcond101.4.1 = icmp eq i64 %indvars.iv.next100.4.1, 96
  br i1 %exitcond101.4.1, label %for.inc33.4.1, label %for.body6.4.1

for.inc33.4.1:                                    ; preds = %for.body6.4.1
  %dec.4.2 = add i32 %k.195.2, -12
  %idxprom.4.2 = zext i32 %dec.4.1 to i64
  %arrayidx.4.2 = getelementptr inbounds [128 x i16], [128 x i16]* @PQCLEAN_KYBER512_CLEAN_zetas, i64 0, i64 %idxprom.4.2
  %72 = load i16, i16* %arrayidx.4.2, align 2, !tbaa !3
  %conv.i.4.2 = sext i16 %72 to i32
  br label %for.body6.4.2

for.body6.4.2:                                    ; preds = %for.body6.4.2, %for.inc33.4.1
  %indvars.iv99.4.2 = phi i64 [ 128, %for.inc33.4.1 ], [ %indvars.iv.next100.4.2, %for.body6.4.2 ]
  %arrayidx8.4.2 = getelementptr inbounds i16, i16* %r, i64 %indvars.iv99.4.2
  %73 = load i16, i16* %arrayidx8.4.2, align 2, !tbaa !3
  %add9.4.2 = add nuw i64 %indvars.iv99.4.2, 32
  %idxprom10.4.2 = and i64 %add9.4.2, 4294967295
  %arrayidx11.4.2 = getelementptr inbounds i16, i16* %r, i64 %idxprom10.4.2
  %74 = load i16, i16* %arrayidx11.4.2, align 2, !tbaa !3
  %add13.4.2 = add i16 %74, %73
  %call.4.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_barrett_reduce(i16 signext %add13.4.2) #2
  store i16 %call.4.2, i16* %arrayidx8.4.2, align 2, !tbaa !3
  %75 = load i16, i16* %arrayidx11.4.2, align 2, !tbaa !3
  %sub.4.2 = sub i16 %75, %73
  store i16 %sub.4.2, i16* %arrayidx11.4.2, align 2, !tbaa !3
  %conv1.i.4.2 = sext i16 %sub.4.2 to i32
  %mul.i.4.2 = mul nsw i32 %conv1.i.4.2, %conv.i.4.2
  %call.i.4.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.2) #2
  store i16 %call.i.4.2, i16* %arrayidx11.4.2, align 2, !tbaa !3
  %indvars.iv.next100.4.2 = add nuw nsw i64 %indvars.iv99.4.2, 1
  %exitcond101.4.2 = icmp eq i64 %indvars.iv.next100.4.2, 160
  br i1 %exitcond101.4.2, label %for.inc33.4.2, label %for.body6.4.2

for.inc33.4.2:                                    ; preds = %for.body6.4.2
  %dec.4.3 = add i32 %k.195.2, -13
  %idxprom.4.3 = zext i32 %dec.4.2 to i64
  %arrayidx.4.3 = getelementptr inbounds [128 x i16], [128 x i16]* @PQCLEAN_KYBER512_CLEAN_zetas, i64 0, i64 %idxprom.4.3
  %76 = load i16, i16* %arrayidx.4.3, align 2, !tbaa !3
  %conv.i.4.3 = sext i16 %76 to i32
  br label %for.body6.4.3

for.body6.4.3:                                    ; preds = %for.body6.4.3, %for.inc33.4.2
  %indvars.iv99.4.3 = phi i64 [ 192, %for.inc33.4.2 ], [ %indvars.iv.next100.4.3, %for.body6.4.3 ]
  %arrayidx8.4.3 = getelementptr inbounds i16, i16* %r, i64 %indvars.iv99.4.3
  %77 = load i16, i16* %arrayidx8.4.3, align 2, !tbaa !3
  %add9.4.3 = add nuw i64 %indvars.iv99.4.3, 32
  %idxprom10.4.3 = and i64 %add9.4.3, 4294967295
  %arrayidx11.4.3 = getelementptr inbounds i16, i16* %r, i64 %idxprom10.4.3
  %78 = load i16, i16* %arrayidx11.4.3, align 2, !tbaa !3
  %add13.4.3 = add i16 %78, %77
  %call.4.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_barrett_reduce(i16 signext %add13.4.3) #2
  store i16 %call.4.3, i16* %arrayidx8.4.3, align 2, !tbaa !3
  %79 = load i16, i16* %arrayidx11.4.3, align 2, !tbaa !3
  %sub.4.3 = sub i16 %79, %77
  store i16 %sub.4.3, i16* %arrayidx11.4.3, align 2, !tbaa !3
  %conv1.i.4.3 = sext i16 %sub.4.3 to i32
  %mul.i.4.3 = mul nsw i32 %conv1.i.4.3, %conv.i.4.3
  %call.i.4.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.4.3) #2
  store i16 %call.i.4.3, i16* %arrayidx11.4.3, align 2, !tbaa !3
  %indvars.iv.next100.4.3 = add nuw nsw i64 %indvars.iv99.4.3, 1
  %exitcond101.4.3 = icmp eq i64 %indvars.iv.next100.4.3, 224
  br i1 %exitcond101.4.3, label %for.inc33.4.3, label %for.body6.4.3

for.inc33.4.3:                                    ; preds = %for.body6.4.3
  %dec.5 = add i32 %k.195.2, -14
  %idxprom.5 = zext i32 %dec.4.3 to i64
  %arrayidx.5 = getelementptr inbounds [128 x i16], [128 x i16]* @PQCLEAN_KYBER512_CLEAN_zetas, i64 0, i64 %idxprom.5
  %80 = load i16, i16* %arrayidx.5, align 2, !tbaa !3
  %conv.i.5 = sext i16 %80 to i32
  br label %for.body6.5

for.body6.3.1:                                    ; preds = %for.body6.3.1, %for.inc33.3
  %indvars.iv99.3.1 = phi i64 [ 32, %for.inc33.3 ], [ %indvars.iv.next100.3.1, %for.body6.3.1 ]
  %arrayidx8.3.1 = getelementptr inbounds i16, i16* %r, i64 %indvars.iv99.3.1
  %81 = load i16, i16* %arrayidx8.3.1, align 2, !tbaa !3
  %add9.3.1 = add nuw i64 %indvars.iv99.3.1, 16
  %idxprom10.3.1 = and i64 %add9.3.1, 4294967295
  %arrayidx11.3.1 = getelementptr inbounds i16, i16* %r, i64 %idxprom10.3.1
  %82 = load i16, i16* %arrayidx11.3.1, align 2, !tbaa !3
  %add13.3.1 = add i16 %82, %81
  %call.3.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_barrett_reduce(i16 signext %add13.3.1) #2
  store i16 %call.3.1, i16* %arrayidx8.3.1, align 2, !tbaa !3
  %83 = load i16, i16* %arrayidx11.3.1, align 2, !tbaa !3
  %sub.3.1 = sub i16 %83, %81
  store i16 %sub.3.1, i16* %arrayidx11.3.1, align 2, !tbaa !3
  %conv1.i.3.1 = sext i16 %sub.3.1 to i32
  %mul.i.3.1 = mul nsw i32 %conv1.i.3.1, %conv.i.3.1
  %call.i.3.1 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.1) #2
  store i16 %call.i.3.1, i16* %arrayidx11.3.1, align 2, !tbaa !3
  %indvars.iv.next100.3.1 = add nuw nsw i64 %indvars.iv99.3.1, 1
  %exitcond101.3.1 = icmp eq i64 %indvars.iv.next100.3.1, 48
  br i1 %exitcond101.3.1, label %for.inc33.3.1, label %for.body6.3.1

for.inc33.3.1:                                    ; preds = %for.body6.3.1
  %dec.3.2 = add i32 %k.195.2, -4
  %idxprom.3.2 = zext i32 %dec.3.1 to i64
  %arrayidx.3.2 = getelementptr inbounds [128 x i16], [128 x i16]* @PQCLEAN_KYBER512_CLEAN_zetas, i64 0, i64 %idxprom.3.2
  %84 = load i16, i16* %arrayidx.3.2, align 2, !tbaa !3
  %conv.i.3.2 = sext i16 %84 to i32
  br label %for.body6.3.2

for.body6.3.2:                                    ; preds = %for.body6.3.2, %for.inc33.3.1
  %indvars.iv99.3.2 = phi i64 [ 64, %for.inc33.3.1 ], [ %indvars.iv.next100.3.2, %for.body6.3.2 ]
  %arrayidx8.3.2 = getelementptr inbounds i16, i16* %r, i64 %indvars.iv99.3.2
  %85 = load i16, i16* %arrayidx8.3.2, align 2, !tbaa !3
  %add9.3.2 = add nuw i64 %indvars.iv99.3.2, 16
  %idxprom10.3.2 = and i64 %add9.3.2, 4294967295
  %arrayidx11.3.2 = getelementptr inbounds i16, i16* %r, i64 %idxprom10.3.2
  %86 = load i16, i16* %arrayidx11.3.2, align 2, !tbaa !3
  %add13.3.2 = add i16 %86, %85
  %call.3.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_barrett_reduce(i16 signext %add13.3.2) #2
  store i16 %call.3.2, i16* %arrayidx8.3.2, align 2, !tbaa !3
  %87 = load i16, i16* %arrayidx11.3.2, align 2, !tbaa !3
  %sub.3.2 = sub i16 %87, %85
  store i16 %sub.3.2, i16* %arrayidx11.3.2, align 2, !tbaa !3
  %conv1.i.3.2 = sext i16 %sub.3.2 to i32
  %mul.i.3.2 = mul nsw i32 %conv1.i.3.2, %conv.i.3.2
  %call.i.3.2 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.2) #2
  store i16 %call.i.3.2, i16* %arrayidx11.3.2, align 2, !tbaa !3
  %indvars.iv.next100.3.2 = add nuw nsw i64 %indvars.iv99.3.2, 1
  %exitcond101.3.2 = icmp eq i64 %indvars.iv.next100.3.2, 80
  br i1 %exitcond101.3.2, label %for.inc33.3.2, label %for.body6.3.2

for.inc33.3.2:                                    ; preds = %for.body6.3.2
  %dec.3.3 = add i32 %k.195.2, -5
  %idxprom.3.3 = zext i32 %dec.3.2 to i64
  %arrayidx.3.3 = getelementptr inbounds [128 x i16], [128 x i16]* @PQCLEAN_KYBER512_CLEAN_zetas, i64 0, i64 %idxprom.3.3
  %88 = load i16, i16* %arrayidx.3.3, align 2, !tbaa !3
  %conv.i.3.3 = sext i16 %88 to i32
  br label %for.body6.3.3

for.body6.3.3:                                    ; preds = %for.body6.3.3, %for.inc33.3.2
  %indvars.iv99.3.3 = phi i64 [ 96, %for.inc33.3.2 ], [ %indvars.iv.next100.3.3, %for.body6.3.3 ]
  %arrayidx8.3.3 = getelementptr inbounds i16, i16* %r, i64 %indvars.iv99.3.3
  %89 = load i16, i16* %arrayidx8.3.3, align 2, !tbaa !3
  %add9.3.3 = add nuw i64 %indvars.iv99.3.3, 16
  %idxprom10.3.3 = and i64 %add9.3.3, 4294967295
  %arrayidx11.3.3 = getelementptr inbounds i16, i16* %r, i64 %idxprom10.3.3
  %90 = load i16, i16* %arrayidx11.3.3, align 2, !tbaa !3
  %add13.3.3 = add i16 %90, %89
  %call.3.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_barrett_reduce(i16 signext %add13.3.3) #2
  store i16 %call.3.3, i16* %arrayidx8.3.3, align 2, !tbaa !3
  %91 = load i16, i16* %arrayidx11.3.3, align 2, !tbaa !3
  %sub.3.3 = sub i16 %91, %89
  store i16 %sub.3.3, i16* %arrayidx11.3.3, align 2, !tbaa !3
  %conv1.i.3.3 = sext i16 %sub.3.3 to i32
  %mul.i.3.3 = mul nsw i32 %conv1.i.3.3, %conv.i.3.3
  %call.i.3.3 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.3) #2
  store i16 %call.i.3.3, i16* %arrayidx11.3.3, align 2, !tbaa !3
  %indvars.iv.next100.3.3 = add nuw nsw i64 %indvars.iv99.3.3, 1
  %exitcond101.3.3 = icmp eq i64 %indvars.iv.next100.3.3, 112
  br i1 %exitcond101.3.3, label %for.inc33.3.3, label %for.body6.3.3

for.inc33.3.3:                                    ; preds = %for.body6.3.3
  %dec.3.4 = add i32 %k.195.2, -6
  %idxprom.3.4 = zext i32 %dec.3.3 to i64
  %arrayidx.3.4 = getelementptr inbounds [128 x i16], [128 x i16]* @PQCLEAN_KYBER512_CLEAN_zetas, i64 0, i64 %idxprom.3.4
  %92 = load i16, i16* %arrayidx.3.4, align 2, !tbaa !3
  %conv.i.3.4 = sext i16 %92 to i32
  br label %for.body6.3.4

for.body6.3.4:                                    ; preds = %for.body6.3.4, %for.inc33.3.3
  %indvars.iv99.3.4 = phi i64 [ 128, %for.inc33.3.3 ], [ %indvars.iv.next100.3.4, %for.body6.3.4 ]
  %arrayidx8.3.4 = getelementptr inbounds i16, i16* %r, i64 %indvars.iv99.3.4
  %93 = load i16, i16* %arrayidx8.3.4, align 2, !tbaa !3
  %add9.3.4 = add nuw i64 %indvars.iv99.3.4, 16
  %idxprom10.3.4 = and i64 %add9.3.4, 4294967295
  %arrayidx11.3.4 = getelementptr inbounds i16, i16* %r, i64 %idxprom10.3.4
  %94 = load i16, i16* %arrayidx11.3.4, align 2, !tbaa !3
  %add13.3.4 = add i16 %94, %93
  %call.3.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_barrett_reduce(i16 signext %add13.3.4) #2
  store i16 %call.3.4, i16* %arrayidx8.3.4, align 2, !tbaa !3
  %95 = load i16, i16* %arrayidx11.3.4, align 2, !tbaa !3
  %sub.3.4 = sub i16 %95, %93
  store i16 %sub.3.4, i16* %arrayidx11.3.4, align 2, !tbaa !3
  %conv1.i.3.4 = sext i16 %sub.3.4 to i32
  %mul.i.3.4 = mul nsw i32 %conv1.i.3.4, %conv.i.3.4
  %call.i.3.4 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.4) #2
  store i16 %call.i.3.4, i16* %arrayidx11.3.4, align 2, !tbaa !3
  %indvars.iv.next100.3.4 = add nuw nsw i64 %indvars.iv99.3.4, 1
  %exitcond101.3.4 = icmp eq i64 %indvars.iv.next100.3.4, 144
  br i1 %exitcond101.3.4, label %for.inc33.3.4, label %for.body6.3.4

for.inc33.3.4:                                    ; preds = %for.body6.3.4
  %dec.3.5 = add i32 %k.195.2, -7
  %idxprom.3.5 = zext i32 %dec.3.4 to i64
  %arrayidx.3.5 = getelementptr inbounds [128 x i16], [128 x i16]* @PQCLEAN_KYBER512_CLEAN_zetas, i64 0, i64 %idxprom.3.5
  %96 = load i16, i16* %arrayidx.3.5, align 2, !tbaa !3
  %conv.i.3.5 = sext i16 %96 to i32
  br label %for.body6.3.5

for.body6.3.5:                                    ; preds = %for.body6.3.5, %for.inc33.3.4
  %indvars.iv99.3.5 = phi i64 [ 160, %for.inc33.3.4 ], [ %indvars.iv.next100.3.5, %for.body6.3.5 ]
  %arrayidx8.3.5 = getelementptr inbounds i16, i16* %r, i64 %indvars.iv99.3.5
  %97 = load i16, i16* %arrayidx8.3.5, align 2, !tbaa !3
  %add9.3.5 = add nuw i64 %indvars.iv99.3.5, 16
  %idxprom10.3.5 = and i64 %add9.3.5, 4294967295
  %arrayidx11.3.5 = getelementptr inbounds i16, i16* %r, i64 %idxprom10.3.5
  %98 = load i16, i16* %arrayidx11.3.5, align 2, !tbaa !3
  %add13.3.5 = add i16 %98, %97
  %call.3.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_barrett_reduce(i16 signext %add13.3.5) #2
  store i16 %call.3.5, i16* %arrayidx8.3.5, align 2, !tbaa !3
  %99 = load i16, i16* %arrayidx11.3.5, align 2, !tbaa !3
  %sub.3.5 = sub i16 %99, %97
  store i16 %sub.3.5, i16* %arrayidx11.3.5, align 2, !tbaa !3
  %conv1.i.3.5 = sext i16 %sub.3.5 to i32
  %mul.i.3.5 = mul nsw i32 %conv1.i.3.5, %conv.i.3.5
  %call.i.3.5 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.5) #2
  store i16 %call.i.3.5, i16* %arrayidx11.3.5, align 2, !tbaa !3
  %indvars.iv.next100.3.5 = add nuw nsw i64 %indvars.iv99.3.5, 1
  %exitcond101.3.5 = icmp eq i64 %indvars.iv.next100.3.5, 176
  br i1 %exitcond101.3.5, label %for.inc33.3.5, label %for.body6.3.5

for.inc33.3.5:                                    ; preds = %for.body6.3.5
  %dec.3.6 = add i32 %k.195.2, -8
  %idxprom.3.6 = zext i32 %dec.3.5 to i64
  %arrayidx.3.6 = getelementptr inbounds [128 x i16], [128 x i16]* @PQCLEAN_KYBER512_CLEAN_zetas, i64 0, i64 %idxprom.3.6
  %100 = load i16, i16* %arrayidx.3.6, align 2, !tbaa !3
  %conv.i.3.6 = sext i16 %100 to i32
  br label %for.body6.3.6

for.body6.3.6:                                    ; preds = %for.body6.3.6, %for.inc33.3.5
  %indvars.iv99.3.6 = phi i64 [ 192, %for.inc33.3.5 ], [ %indvars.iv.next100.3.6, %for.body6.3.6 ]
  %arrayidx8.3.6 = getelementptr inbounds i16, i16* %r, i64 %indvars.iv99.3.6
  %101 = load i16, i16* %arrayidx8.3.6, align 2, !tbaa !3
  %add9.3.6 = add nuw i64 %indvars.iv99.3.6, 16
  %idxprom10.3.6 = and i64 %add9.3.6, 4294967295
  %arrayidx11.3.6 = getelementptr inbounds i16, i16* %r, i64 %idxprom10.3.6
  %102 = load i16, i16* %arrayidx11.3.6, align 2, !tbaa !3
  %add13.3.6 = add i16 %102, %101
  %call.3.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_barrett_reduce(i16 signext %add13.3.6) #2
  store i16 %call.3.6, i16* %arrayidx8.3.6, align 2, !tbaa !3
  %103 = load i16, i16* %arrayidx11.3.6, align 2, !tbaa !3
  %sub.3.6 = sub i16 %103, %101
  store i16 %sub.3.6, i16* %arrayidx11.3.6, align 2, !tbaa !3
  %conv1.i.3.6 = sext i16 %sub.3.6 to i32
  %mul.i.3.6 = mul nsw i32 %conv1.i.3.6, %conv.i.3.6
  %call.i.3.6 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.6) #2
  store i16 %call.i.3.6, i16* %arrayidx11.3.6, align 2, !tbaa !3
  %indvars.iv.next100.3.6 = add nuw nsw i64 %indvars.iv99.3.6, 1
  %exitcond101.3.6 = icmp eq i64 %indvars.iv.next100.3.6, 208
  br i1 %exitcond101.3.6, label %for.inc33.3.6, label %for.body6.3.6

for.inc33.3.6:                                    ; preds = %for.body6.3.6
  %dec.3.7 = add i32 %k.195.2, -9
  %idxprom.3.7 = zext i32 %dec.3.6 to i64
  %arrayidx.3.7 = getelementptr inbounds [128 x i16], [128 x i16]* @PQCLEAN_KYBER512_CLEAN_zetas, i64 0, i64 %idxprom.3.7
  %104 = load i16, i16* %arrayidx.3.7, align 2, !tbaa !3
  %conv.i.3.7 = sext i16 %104 to i32
  br label %for.body6.3.7

for.body6.3.7:                                    ; preds = %for.body6.3.7, %for.inc33.3.6
  %indvars.iv99.3.7 = phi i64 [ 224, %for.inc33.3.6 ], [ %indvars.iv.next100.3.7, %for.body6.3.7 ]
  %arrayidx8.3.7 = getelementptr inbounds i16, i16* %r, i64 %indvars.iv99.3.7
  %105 = load i16, i16* %arrayidx8.3.7, align 2, !tbaa !3
  %add9.3.7 = add nuw i64 %indvars.iv99.3.7, 16
  %idxprom10.3.7 = and i64 %add9.3.7, 4294967295
  %arrayidx11.3.7 = getelementptr inbounds i16, i16* %r, i64 %idxprom10.3.7
  %106 = load i16, i16* %arrayidx11.3.7, align 2, !tbaa !3
  %add13.3.7 = add i16 %106, %105
  %call.3.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_barrett_reduce(i16 signext %add13.3.7) #2
  store i16 %call.3.7, i16* %arrayidx8.3.7, align 2, !tbaa !3
  %107 = load i16, i16* %arrayidx11.3.7, align 2, !tbaa !3
  %sub.3.7 = sub i16 %107, %105
  store i16 %sub.3.7, i16* %arrayidx11.3.7, align 2, !tbaa !3
  %conv1.i.3.7 = sext i16 %sub.3.7 to i32
  %mul.i.3.7 = mul nsw i32 %conv1.i.3.7, %conv.i.3.7
  %call.i.3.7 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i.3.7) #2
  store i16 %call.i.3.7, i16* %arrayidx11.3.7, align 2, !tbaa !3
  %indvars.iv.next100.3.7 = add nuw nsw i64 %indvars.iv99.3.7, 1
  %exitcond101.3.7 = icmp eq i64 %indvars.iv.next100.3.7, 240
  br i1 %exitcond101.3.7, label %for.inc33.3.7, label %for.body6.3.7

for.inc33.3.7:                                    ; preds = %for.body6.3.7
  %dec.4 = add i32 %k.195.2, -10
  %idxprom.4 = zext i32 %dec.3.7 to i64
  %arrayidx.4 = getelementptr inbounds [128 x i16], [128 x i16]* @PQCLEAN_KYBER512_CLEAN_zetas, i64 0, i64 %idxprom.4
  %108 = load i16, i16* %arrayidx.4, align 2, !tbaa !3
  %conv.i.4 = sext i16 %108 to i32
  br label %for.body6.4
}

declare signext i16 @PQCLEAN_KYBER512_CLEAN_barrett_reduce(i16 signext) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_KYBER512_CLEAN_basemul(i16* nocapture %r, i16* nocapture readonly %a, i16* nocapture readonly %b, i16 signext %zeta) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds i16, i16* %a, i64 1
  %0 = load i16, i16* %arrayidx, align 2, !tbaa !3
  %arrayidx1 = getelementptr inbounds i16, i16* %b, i64 1
  %1 = load i16, i16* %arrayidx1, align 2, !tbaa !3
  %conv.i = sext i16 %0 to i32
  %conv1.i = sext i16 %1 to i32
  %mul.i = mul nsw i32 %conv1.i, %conv.i
  %call.i = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i) #2
  store i16 %call.i, i16* %r, align 2, !tbaa !3
  %conv.i35 = sext i16 %call.i to i32
  %conv1.i36 = sext i16 %zeta to i32
  %mul.i37 = mul nsw i32 %conv.i35, %conv1.i36
  %call.i38 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i37) #2
  store i16 %call.i38, i16* %r, align 2, !tbaa !3
  %2 = load i16, i16* %a, align 2, !tbaa !3
  %3 = load i16, i16* %b, align 2, !tbaa !3
  %conv.i39 = sext i16 %2 to i32
  %conv1.i40 = sext i16 %3 to i32
  %mul.i41 = mul nsw i32 %conv1.i40, %conv.i39
  %call.i42 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i41) #2
  %4 = load i16, i16* %r, align 2, !tbaa !3
  %add = add i16 %4, %call.i42
  store i16 %add, i16* %r, align 2, !tbaa !3
  %5 = load i16, i16* %a, align 2, !tbaa !3
  %6 = load i16, i16* %arrayidx1, align 2, !tbaa !3
  %conv.i43 = sext i16 %5 to i32
  %conv1.i44 = sext i16 %6 to i32
  %mul.i45 = mul nsw i32 %conv1.i44, %conv.i43
  %call.i46 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i45) #2
  %arrayidx15 = getelementptr inbounds i16, i16* %r, i64 1
  store i16 %call.i46, i16* %arrayidx15, align 2, !tbaa !3
  %7 = load i16, i16* %arrayidx, align 2, !tbaa !3
  %8 = load i16, i16* %b, align 2, !tbaa !3
  %conv.i47 = sext i16 %7 to i32
  %conv1.i48 = sext i16 %8 to i32
  %mul.i49 = mul nsw i32 %conv1.i48, %conv.i47
  %call.i50 = tail call signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %mul.i49) #2
  %9 = load i16, i16* %arrayidx15, align 2, !tbaa !3
  %add22 = add i16 %9, %call.i50
  store i16 %add22, i16* %arrayidx15, align 2, !tbaa !3
  ret void
}

declare signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32) local_unnamed_addr #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"short", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}

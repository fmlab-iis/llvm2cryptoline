; ModuleID = 'src/P751/P751.c'
source_filename = "src/P751/P751.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.point_proj = type { [2 x [12 x i64]], [2 x [12 x i64]] }

@p751 = local_unnamed_addr constant [12 x i64] [i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1247497096781627393, i64 -2023076633380357976, i64 -2696078265604912010, i64 598583372241692790, i64 -8835300488607803576, i64 1014031881231588454, i64 123032916064028], align 16
@p751x2 = local_unnamed_addr constant [12 x i64] [i64 -2, i64 -1, i64 -1, i64 -1, i64 -1, i64 -2494994193563254785, i64 -4046153266760715951, i64 -5392156531209824019, i64 1197166744483385581, i64 776143096493944464, i64 2028063762463176909, i64 246065832128056], align 16
@p751x4 = local_unnamed_addr constant [12 x i64] [i64 -4, i64 -1, i64 -1, i64 -1, i64 -1, i64 -4989988387126509569, i64 -8092306533521431901, i64 7662431011289903579, i64 2394333488966771163, i64 1552286192987888928, i64 4056127524926353818, i64 492131664256112], align 16
@p751p1 = local_unnamed_addr constant [12 x i64] [i64 0, i64 0, i64 0, i64 0, i64 0, i64 -1247497096781627392, i64 -2023076633380357976, i64 -2696078265604912010, i64 598583372241692790, i64 -8835300488607803576, i64 1014031881231588454, i64 123032916064028], align 16
@Alice_order = local_unnamed_addr constant [6 x i64] [i64 0, i64 0, i64 0, i64 0, i64 0, i64 4503599627370496], align 16
@Bob_order = local_unnamed_addr constant [6 x i64] [i64 -3933801230357590293, i64 6463124234301828670, i64 -1619469101396693591, i64 3121071280576823428, i64 2957168939937196118, i64 503942824198258913], align 16
@A_gen = local_unnamed_addr constant [72 x i64] [i64 -8624597008524461400, i64 -5020841716012422112, i64 -4508180761239314355, i64 586935199814300635, i64 1231476659462315650, i64 -3246394521084132208, i64 7720484030924475341, i64 -7852071398881600364, i64 -2188584000029134321, i64 -8546628160115759780, i64 2594594101592586405, i64 16460334914570, i64 -5857059702320032876, i64 -6114084965349520524, i64 -1936358513353380623, i64 -8715966234124349157, i64 -543319585398042881, i64 5769280992065803964, i64 5532188670625076987, i64 -1866799854436416823, i64 -7172910929776876023, i64 -3954764222233415354, i64 9207655709386969385, i64 36625983307955, i64 1122465274781142185, i64 8515870630345178839, i64 -1924743458572280985, i64 -7735178800194673427, i64 -3132739788306177595, i64 4840703288083784924, i64 -4856739261585915672, i64 -5564526081832302557, i64 -1255673010972750885, i64 8865126078528016748, i64 3693150086021936691, i64 36658777259884, i64 -1369314893638426804, i64 -288665025702785293, i64 1672925350903708369, i64 -4583776393718080526, i64 2382796300166624212, i64 -4469495515226427753, i64 2278800419424555458, i64 118108782222142818, i64 1476285485934066847, i64 -2412546410971581458, i64 2038060998052304781, i64 107394058694173, i64 1585483835096717809, i64 -6514868516257168393, i64 7781638337591394101, i64 6664888135375272208, i64 2840823194606539793, i64 -5651061943462976096, i64 2611282525231902794, i64 6070226513535983789, i64 -3628334550803276311, i64 -3194324477546548331, i64 7824800416788242299, i64 58455551134839, i64 -7243670977810514200, i64 -2651806496363392450, i64 2745271787383434087, i64 -6805338174168646425, i64 -7576149946420897235, i64 -7341551600998515230, i64 -3718998877823341149, i64 1375411507907286301, i64 -4268452966569410958, i64 5435466916003927824, i64 8796316040578972826, i64 31328095521215], align 16
@B_gen = local_unnamed_addr constant [72 x i64] [i64 -8833499854113736564, i64 8392675302948378161, i64 9147551389475264226, i64 -7765403244197863993, i64 1891166766906289442, i64 8726784965380087145, i64 278069042628663236, i64 321051512772386179, i64 4418794039415165171, i64 811238939992429693, i64 -6570909703790141913, i64 56397746590099, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 -8179464935493790912, i64 -2991263922968465696, i64 -154199308264604616, i64 601370936378187550, i64 -2974587491997514357, i64 5596913087184264637, i64 5895422123728360424, i64 -1899885251769383899, i64 -8034677416696319560, i64 5132030994927125788, i64 3098590566816827475, i64 44009130331453, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 -5376076391536300772, i64 278885298517689489, i64 -2325809399318866862, i64 -6210198366434735997, i64 -8835293157288827764, i64 2637748658071451261, i64 3544807444712948572, i64 -2233125461162933279, i64 -1534070816221365583, i64 -5251650682390400545, i64 -560613151583404810, i64 59505860712722, i64 6397758586429206260, i64 -9108104224853317045, i64 4403427314326644353, i64 -7834048129543563472, i64 -7297181264924982569, i64 -1979301445290863950, i64 15521226430153318, i64 3328537178486072741, i64 -546546720349608969, i64 -8077959945485607684, i64 -415175987874826629, i64 115645459333053], align 16
@Montgomery_R2 = constant [12 x i64] [i64 2535603850726686808, i64 -2665847985508301526, i64 6788776303855402382, i64 -861315488127195386, i64 5274503137951975249, i64 2266259624764636289, i64 -6751092101015630312, i64 -5373858421559392315, i64 4908312795585420432, i64 6229583484603254826, i64 488927695601805643, i64 72213483953973], align 16
@Montgomery_one = local_unnamed_addr constant [12 x i64] [i64 149933, i64 0, i64 0, i64 0, i64 0, i64 -9002695655113621504, i64 6136068611055053926, i64 7599709743867700432, i64 -3990831716756599250, i64 5522737203492907350, i64 1222606818372667369, i64 49869481633250], align 16
@strat_Alice = local_unnamed_addr constant [185 x i32] [i32 80, i32 48, i32 27, i32 15, i32 8, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 7, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 3, i32 2, i32 1, i32 1, i32 1, i32 1, i32 12, i32 7, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 3, i32 2, i32 1, i32 1, i32 1, i32 1, i32 5, i32 3, i32 2, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 1, i32 21, i32 12, i32 7, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 3, i32 2, i32 1, i32 1, i32 1, i32 1, i32 5, i32 3, i32 2, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 1, i32 9, i32 5, i32 3, i32 2, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 33, i32 20, i32 12, i32 7, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 3, i32 2, i32 1, i32 1, i32 1, i32 1, i32 5, i32 3, i32 2, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 1, i32 8, i32 5, i32 3, i32 2, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 16, i32 8, i32 4, i32 2, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 8, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1], align 16
@strat_Bob = local_unnamed_addr constant [238 x i32] [i32 112, i32 63, i32 32, i32 16, i32 8, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 8, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 16, i32 8, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 8, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 31, i32 16, i32 8, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 8, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 15, i32 8, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 7, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 3, i32 2, i32 1, i32 1, i32 1, i32 1, i32 49, i32 31, i32 16, i32 8, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 8, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 15, i32 8, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 7, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 3, i32 2, i32 1, i32 1, i32 1, i32 1, i32 21, i32 12, i32 8, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 5, i32 3, i32 2, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 1, i32 9, i32 5, i32 3, i32 2, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1], align 16

; Function Attrs: norecurse nounwind ssp uwtable
define void @clear_words(i8* %mem, i64 %nwords) local_unnamed_addr #0 {
entry:
  %0 = bitcast i8* %mem to i64*
  %cmp6 = icmp eq i64 %nwords, 0
  br i1 %cmp6, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret void

for.body:                                         ; preds = %entry, %for.body
  %conv8 = phi i64 [ %conv, %for.body ], [ 0, %entry ]
  %i.07 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 %conv8
  store volatile i64 0, i64* %arrayidx, align 8, !tbaa !3
  %inc = add i32 %i.07, 1
  %conv = zext i32 %inc to i64
  %cmp = icmp ult i64 %conv, %nwords
  br i1 %cmp, label %for.body, label %for.cond.cleanup
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: norecurse nounwind readonly ssp uwtable
define signext i8 @ct_compare(i8* nocapture readonly %a, i8* nocapture readonly %b, i32 %len) local_unnamed_addr #2 {
entry:
  %cmp14 = icmp eq i32 %len, 0
  br i1 %cmp14, label %for.cond.cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %len to i64
  %min.iters.check = icmp ult i32 %len, 32
  br i1 %min.iters.check, label %for.body.preheader39, label %vector.ph

for.body.preheader39:                             ; preds = %middle.block, %for.body.preheader
  %indvars.iv.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  %r.015.ph = phi i32 [ 0, %for.body.preheader ], [ %88, %middle.block ]
  br label %for.body

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %wide.trip.count, 4294967264
  %0 = add nsw i64 %n.vec, -32
  %1 = lshr exact i64 %0, 5
  %2 = add nuw nsw i64 %1, 1
  %xtraiter = and i64 %2, 1
  %3 = icmp eq i64 %0, 0
  br i1 %3, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nsw i64 %2, %xtraiter
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph.new ], [ %56, %vector.body ]
  %vec.phi22 = phi <8 x i32> [ zeroinitializer, %vector.ph.new ], [ %57, %vector.body ]
  %vec.phi23 = phi <8 x i32> [ zeroinitializer, %vector.ph.new ], [ %58, %vector.body ]
  %vec.phi24 = phi <8 x i32> [ zeroinitializer, %vector.ph.new ], [ %59, %vector.body ]
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %4 = getelementptr inbounds i8, i8* %a, i64 %index
  %5 = bitcast i8* %4 to <8 x i8>*
  %wide.load = load <8 x i8>, <8 x i8>* %5, align 1, !tbaa !7
  %6 = getelementptr inbounds i8, i8* %4, i64 8
  %7 = bitcast i8* %6 to <8 x i8>*
  %wide.load25 = load <8 x i8>, <8 x i8>* %7, align 1, !tbaa !7
  %8 = getelementptr inbounds i8, i8* %4, i64 16
  %9 = bitcast i8* %8 to <8 x i8>*
  %wide.load26 = load <8 x i8>, <8 x i8>* %9, align 1, !tbaa !7
  %10 = getelementptr inbounds i8, i8* %4, i64 24
  %11 = bitcast i8* %10 to <8 x i8>*
  %wide.load27 = load <8 x i8>, <8 x i8>* %11, align 1, !tbaa !7
  %12 = getelementptr inbounds i8, i8* %b, i64 %index
  %13 = bitcast i8* %12 to <8 x i8>*
  %wide.load28 = load <8 x i8>, <8 x i8>* %13, align 1, !tbaa !7
  %14 = getelementptr inbounds i8, i8* %12, i64 8
  %15 = bitcast i8* %14 to <8 x i8>*
  %wide.load29 = load <8 x i8>, <8 x i8>* %15, align 1, !tbaa !7
  %16 = getelementptr inbounds i8, i8* %12, i64 16
  %17 = bitcast i8* %16 to <8 x i8>*
  %wide.load30 = load <8 x i8>, <8 x i8>* %17, align 1, !tbaa !7
  %18 = getelementptr inbounds i8, i8* %12, i64 24
  %19 = bitcast i8* %18 to <8 x i8>*
  %wide.load31 = load <8 x i8>, <8 x i8>* %19, align 1, !tbaa !7
  %20 = xor <8 x i8> %wide.load28, %wide.load
  %21 = xor <8 x i8> %wide.load29, %wide.load25
  %22 = xor <8 x i8> %wide.load30, %wide.load26
  %23 = xor <8 x i8> %wide.load31, %wide.load27
  %24 = zext <8 x i8> %20 to <8 x i32>
  %25 = zext <8 x i8> %21 to <8 x i32>
  %26 = zext <8 x i8> %22 to <8 x i32>
  %27 = zext <8 x i8> %23 to <8 x i32>
  %28 = or <8 x i32> %vec.phi, %24
  %29 = or <8 x i32> %vec.phi22, %25
  %30 = or <8 x i32> %vec.phi23, %26
  %31 = or <8 x i32> %vec.phi24, %27
  %index.next = or i64 %index, 32
  %32 = getelementptr inbounds i8, i8* %a, i64 %index.next
  %33 = bitcast i8* %32 to <8 x i8>*
  %wide.load.1 = load <8 x i8>, <8 x i8>* %33, align 1, !tbaa !7
  %34 = getelementptr inbounds i8, i8* %32, i64 8
  %35 = bitcast i8* %34 to <8 x i8>*
  %wide.load25.1 = load <8 x i8>, <8 x i8>* %35, align 1, !tbaa !7
  %36 = getelementptr inbounds i8, i8* %32, i64 16
  %37 = bitcast i8* %36 to <8 x i8>*
  %wide.load26.1 = load <8 x i8>, <8 x i8>* %37, align 1, !tbaa !7
  %38 = getelementptr inbounds i8, i8* %32, i64 24
  %39 = bitcast i8* %38 to <8 x i8>*
  %wide.load27.1 = load <8 x i8>, <8 x i8>* %39, align 1, !tbaa !7
  %40 = getelementptr inbounds i8, i8* %b, i64 %index.next
  %41 = bitcast i8* %40 to <8 x i8>*
  %wide.load28.1 = load <8 x i8>, <8 x i8>* %41, align 1, !tbaa !7
  %42 = getelementptr inbounds i8, i8* %40, i64 8
  %43 = bitcast i8* %42 to <8 x i8>*
  %wide.load29.1 = load <8 x i8>, <8 x i8>* %43, align 1, !tbaa !7
  %44 = getelementptr inbounds i8, i8* %40, i64 16
  %45 = bitcast i8* %44 to <8 x i8>*
  %wide.load30.1 = load <8 x i8>, <8 x i8>* %45, align 1, !tbaa !7
  %46 = getelementptr inbounds i8, i8* %40, i64 24
  %47 = bitcast i8* %46 to <8 x i8>*
  %wide.load31.1 = load <8 x i8>, <8 x i8>* %47, align 1, !tbaa !7
  %48 = xor <8 x i8> %wide.load28.1, %wide.load.1
  %49 = xor <8 x i8> %wide.load29.1, %wide.load25.1
  %50 = xor <8 x i8> %wide.load30.1, %wide.load26.1
  %51 = xor <8 x i8> %wide.load31.1, %wide.load27.1
  %52 = zext <8 x i8> %48 to <8 x i32>
  %53 = zext <8 x i8> %49 to <8 x i32>
  %54 = zext <8 x i8> %50 to <8 x i32>
  %55 = zext <8 x i8> %51 to <8 x i32>
  %56 = or <8 x i32> %28, %52
  %57 = or <8 x i32> %29, %53
  %58 = or <8 x i32> %30, %54
  %59 = or <8 x i32> %31, %55
  %index.next.1 = add i64 %index, 64
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !8

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %.lcssa43.ph = phi <8 x i32> [ undef, %vector.ph ], [ %56, %vector.body ]
  %.lcssa42.ph = phi <8 x i32> [ undef, %vector.ph ], [ %57, %vector.body ]
  %.lcssa41.ph = phi <8 x i32> [ undef, %vector.ph ], [ %58, %vector.body ]
  %.lcssa.ph = phi <8 x i32> [ undef, %vector.ph ], [ %59, %vector.body ]
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %vec.phi.unr = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %56, %vector.body ]
  %vec.phi22.unr = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %57, %vector.body ]
  %vec.phi23.unr = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %58, %vector.body ]
  %vec.phi24.unr = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %59, %vector.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %60 = getelementptr inbounds i8, i8* %a, i64 %index.unr
  %61 = getelementptr inbounds i8, i8* %b, i64 %index.unr
  %62 = getelementptr inbounds i8, i8* %61, i64 24
  %63 = bitcast i8* %62 to <8 x i8>*
  %wide.load31.epil = load <8 x i8>, <8 x i8>* %63, align 1, !tbaa !7
  %64 = getelementptr inbounds i8, i8* %60, i64 24
  %65 = bitcast i8* %64 to <8 x i8>*
  %wide.load27.epil = load <8 x i8>, <8 x i8>* %65, align 1, !tbaa !7
  %66 = xor <8 x i8> %wide.load31.epil, %wide.load27.epil
  %67 = zext <8 x i8> %66 to <8 x i32>
  %68 = or <8 x i32> %vec.phi24.unr, %67
  %69 = getelementptr inbounds i8, i8* %61, i64 16
  %70 = bitcast i8* %69 to <8 x i8>*
  %wide.load30.epil = load <8 x i8>, <8 x i8>* %70, align 1, !tbaa !7
  %71 = getelementptr inbounds i8, i8* %60, i64 16
  %72 = bitcast i8* %71 to <8 x i8>*
  %wide.load26.epil = load <8 x i8>, <8 x i8>* %72, align 1, !tbaa !7
  %73 = xor <8 x i8> %wide.load30.epil, %wide.load26.epil
  %74 = zext <8 x i8> %73 to <8 x i32>
  %75 = or <8 x i32> %vec.phi23.unr, %74
  %76 = getelementptr inbounds i8, i8* %61, i64 8
  %77 = bitcast i8* %76 to <8 x i8>*
  %wide.load29.epil = load <8 x i8>, <8 x i8>* %77, align 1, !tbaa !7
  %78 = getelementptr inbounds i8, i8* %60, i64 8
  %79 = bitcast i8* %78 to <8 x i8>*
  %wide.load25.epil = load <8 x i8>, <8 x i8>* %79, align 1, !tbaa !7
  %80 = xor <8 x i8> %wide.load29.epil, %wide.load25.epil
  %81 = zext <8 x i8> %80 to <8 x i32>
  %82 = or <8 x i32> %vec.phi22.unr, %81
  %83 = bitcast i8* %61 to <8 x i8>*
  %wide.load28.epil = load <8 x i8>, <8 x i8>* %83, align 1, !tbaa !7
  %84 = bitcast i8* %60 to <8 x i8>*
  %wide.load.epil = load <8 x i8>, <8 x i8>* %84, align 1, !tbaa !7
  %85 = xor <8 x i8> %wide.load28.epil, %wide.load.epil
  %86 = zext <8 x i8> %85 to <8 x i32>
  %87 = or <8 x i32> %vec.phi.unr, %86
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %.lcssa43 = phi <8 x i32> [ %.lcssa43.ph, %middle.block.unr-lcssa ], [ %87, %vector.body.epil ]
  %.lcssa42 = phi <8 x i32> [ %.lcssa42.ph, %middle.block.unr-lcssa ], [ %82, %vector.body.epil ]
  %.lcssa41 = phi <8 x i32> [ %.lcssa41.ph, %middle.block.unr-lcssa ], [ %75, %vector.body.epil ]
  %.lcssa = phi <8 x i32> [ %.lcssa.ph, %middle.block.unr-lcssa ], [ %68, %vector.body.epil ]
  %bin.rdx = or <8 x i32> %.lcssa42, %.lcssa43
  %bin.rdx32 = or <8 x i32> %.lcssa41, %bin.rdx
  %bin.rdx33 = or <8 x i32> %.lcssa, %bin.rdx32
  %rdx.shuf = shufflevector <8 x i32> %bin.rdx33, <8 x i32> undef, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx34 = or <8 x i32> %bin.rdx33, %rdx.shuf
  %rdx.shuf35 = shufflevector <8 x i32> %bin.rdx34, <8 x i32> undef, <8 x i32> <i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx36 = or <8 x i32> %bin.rdx34, %rdx.shuf35
  %rdx.shuf37 = shufflevector <8 x i32> %bin.rdx36, <8 x i32> undef, <8 x i32> <i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx38 = or <8 x i32> %bin.rdx36, %rdx.shuf37
  %88 = extractelement <8 x i32> %bin.rdx38, i32 0
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond.cleanup.loopexit, label %for.body.preheader39

for.cond.cleanup.loopexit:                        ; preds = %for.body, %middle.block
  %or.lcssa = phi i32 [ %88, %middle.block ], [ %or, %for.body ]
  %phitmp = sub i32 0, %or.lcssa
  %phitmp17 = ashr i32 %phitmp, 31
  %phitmp18 = trunc i32 %phitmp17 to i8
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %entry
  %r.0.lcssa = phi i8 [ 0, %entry ], [ %phitmp18, %for.cond.cleanup.loopexit ]
  ret i8 %r.0.lcssa

for.body:                                         ; preds = %for.body.preheader39, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader39 ]
  %r.015 = phi i32 [ %or, %for.body ], [ %r.015.ph, %for.body.preheader39 ]
  %arrayidx = getelementptr inbounds i8, i8* %a, i64 %indvars.iv
  %89 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %arrayidx2 = getelementptr inbounds i8, i8* %b, i64 %indvars.iv
  %90 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %xor13 = xor i8 %90, %89
  %xor = zext i8 %xor13 to i32
  %or = or i32 %r.015, %xor
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.cond.cleanup.loopexit, label %for.body, !llvm.loop !10
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @ct_cmov(i8* nocapture %r, i8* nocapture readonly %a, i32 %len, i8 signext %selector) local_unnamed_addr #0 {
entry:
  %cmp20 = icmp eq i32 %len, 0
  br i1 %cmp20, label %for.cond.cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %len to i64
  %min.iters.check = icmp ult i32 %len, 128
  br i1 %min.iters.check, label %for.body.preheader41, label %vector.memcheck

for.body.preheader41:                             ; preds = %middle.block, %vector.memcheck, %for.body.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  %0 = xor i64 %indvars.iv.ph, -1
  %1 = add nsw i64 %0, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader41, %for.body.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body.prol ], [ %indvars.iv.ph, %for.body.preheader41 ]
  %prol.iter = phi i64 [ %prol.iter.sub, %for.body.prol ], [ %xtraiter, %for.body.preheader41 ]
  %arrayidx.prol = getelementptr inbounds i8, i8* %a, i64 %indvars.iv.prol
  %2 = load i8, i8* %arrayidx.prol, align 1, !tbaa !7
  %arrayidx3.prol = getelementptr inbounds i8, i8* %r, i64 %indvars.iv.prol
  %3 = load i8, i8* %arrayidx3.prol, align 1, !tbaa !7
  %xor16.prol = xor i8 %3, %2
  %and18.prol = and i8 %xor16.prol, %selector
  %xor819.prol = xor i8 %and18.prol, %3
  store i8 %xor819.prol, i8* %arrayidx3.prol, align 1, !tbaa !7
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !12

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader41
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body.preheader41 ], [ %indvars.iv.next.prol, %for.body.prol ]
  %4 = icmp ult i64 %1, 3
  br i1 %4, label %for.cond.cleanup, label %for.body

vector.memcheck:                                  ; preds = %for.body.preheader
  %scevgep = getelementptr i8, i8* %r, i64 %wide.trip.count
  %scevgep22 = getelementptr i8, i8* %a, i64 %wide.trip.count
  %bound0 = icmp ugt i8* %scevgep22, %r
  %bound1 = icmp ugt i8* %scevgep, %a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader41, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967168
  %broadcast.splatinsert33 = insertelement <32 x i8> undef, i8 %selector, i32 0
  %broadcast.splat34 = shufflevector <32 x i8> %broadcast.splatinsert33, <32 x i8> undef, <32 x i32> zeroinitializer
  %broadcast.splatinsert35 = insertelement <32 x i8> undef, i8 %selector, i32 0
  %broadcast.splat36 = shufflevector <32 x i8> %broadcast.splatinsert35, <32 x i8> undef, <32 x i32> zeroinitializer
  %broadcast.splatinsert37 = insertelement <32 x i8> undef, i8 %selector, i32 0
  %broadcast.splat38 = shufflevector <32 x i8> %broadcast.splatinsert37, <32 x i8> undef, <32 x i32> zeroinitializer
  %broadcast.splatinsert39 = insertelement <32 x i8> undef, i8 %selector, i32 0
  %broadcast.splat40 = shufflevector <32 x i8> %broadcast.splatinsert39, <32 x i8> undef, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %5 = getelementptr inbounds i8, i8* %a, i64 %index
  %6 = bitcast i8* %5 to <32 x i8>*
  %wide.load = load <32 x i8>, <32 x i8>* %6, align 1, !tbaa !7, !alias.scope !14
  %7 = getelementptr inbounds i8, i8* %5, i64 32
  %8 = bitcast i8* %7 to <32 x i8>*
  %wide.load26 = load <32 x i8>, <32 x i8>* %8, align 1, !tbaa !7, !alias.scope !14
  %9 = getelementptr inbounds i8, i8* %5, i64 64
  %10 = bitcast i8* %9 to <32 x i8>*
  %wide.load27 = load <32 x i8>, <32 x i8>* %10, align 1, !tbaa !7, !alias.scope !14
  %11 = getelementptr inbounds i8, i8* %5, i64 96
  %12 = bitcast i8* %11 to <32 x i8>*
  %wide.load28 = load <32 x i8>, <32 x i8>* %12, align 1, !tbaa !7, !alias.scope !14
  %13 = getelementptr inbounds i8, i8* %r, i64 %index
  %14 = bitcast i8* %13 to <32 x i8>*
  %wide.load29 = load <32 x i8>, <32 x i8>* %14, align 1, !tbaa !7, !alias.scope !17, !noalias !14
  %15 = getelementptr inbounds i8, i8* %13, i64 32
  %16 = bitcast i8* %15 to <32 x i8>*
  %wide.load30 = load <32 x i8>, <32 x i8>* %16, align 1, !tbaa !7, !alias.scope !17, !noalias !14
  %17 = getelementptr inbounds i8, i8* %13, i64 64
  %18 = bitcast i8* %17 to <32 x i8>*
  %wide.load31 = load <32 x i8>, <32 x i8>* %18, align 1, !tbaa !7, !alias.scope !17, !noalias !14
  %19 = getelementptr inbounds i8, i8* %13, i64 96
  %20 = bitcast i8* %19 to <32 x i8>*
  %wide.load32 = load <32 x i8>, <32 x i8>* %20, align 1, !tbaa !7, !alias.scope !17, !noalias !14
  %21 = xor <32 x i8> %wide.load29, %wide.load
  %22 = xor <32 x i8> %wide.load30, %wide.load26
  %23 = xor <32 x i8> %wide.load31, %wide.load27
  %24 = xor <32 x i8> %wide.load32, %wide.load28
  %25 = and <32 x i8> %21, %broadcast.splat34
  %26 = and <32 x i8> %22, %broadcast.splat36
  %27 = and <32 x i8> %23, %broadcast.splat38
  %28 = and <32 x i8> %24, %broadcast.splat40
  %29 = xor <32 x i8> %25, %wide.load29
  %30 = xor <32 x i8> %26, %wide.load30
  %31 = xor <32 x i8> %27, %wide.load31
  %32 = xor <32 x i8> %28, %wide.load32
  %33 = bitcast i8* %13 to <32 x i8>*
  store <32 x i8> %29, <32 x i8>* %33, align 1, !tbaa !7, !alias.scope !17, !noalias !14
  %34 = bitcast i8* %15 to <32 x i8>*
  store <32 x i8> %30, <32 x i8>* %34, align 1, !tbaa !7, !alias.scope !17, !noalias !14
  %35 = bitcast i8* %17 to <32 x i8>*
  store <32 x i8> %31, <32 x i8>* %35, align 1, !tbaa !7, !alias.scope !17, !noalias !14
  %36 = bitcast i8* %19 to <32 x i8>*
  store <32 x i8> %32, <32 x i8>* %36, align 1, !tbaa !7, !alias.scope !17, !noalias !14
  %index.next = add i64 %index, 128
  %37 = icmp eq i64 %index.next, %n.vec
  br i1 %37, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond.cleanup, label %for.body.preheader41

for.cond.cleanup:                                 ; preds = %for.body.prol.loopexit, %for.body, %middle.block, %entry
  ret void

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  %arrayidx = getelementptr inbounds i8, i8* %a, i64 %indvars.iv
  %38 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %arrayidx3 = getelementptr inbounds i8, i8* %r, i64 %indvars.iv
  %39 = load i8, i8* %arrayidx3, align 1, !tbaa !7
  %xor16 = xor i8 %39, %38
  %and18 = and i8 %xor16, %selector
  %xor819 = xor i8 %and18, %39
  store i8 %xor819, i8* %arrayidx3, align 1, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds i8, i8* %a, i64 %indvars.iv.next
  %40 = load i8, i8* %arrayidx.1, align 1, !tbaa !7
  %arrayidx3.1 = getelementptr inbounds i8, i8* %r, i64 %indvars.iv.next
  %41 = load i8, i8* %arrayidx3.1, align 1, !tbaa !7
  %xor16.1 = xor i8 %41, %40
  %and18.1 = and i8 %xor16.1, %selector
  %xor819.1 = xor i8 %and18.1, %41
  store i8 %xor819.1, i8* %arrayidx3.1, align 1, !tbaa !7
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %arrayidx.2 = getelementptr inbounds i8, i8* %a, i64 %indvars.iv.next.1
  %42 = load i8, i8* %arrayidx.2, align 1, !tbaa !7
  %arrayidx3.2 = getelementptr inbounds i8, i8* %r, i64 %indvars.iv.next.1
  %43 = load i8, i8* %arrayidx3.2, align 1, !tbaa !7
  %xor16.2 = xor i8 %43, %42
  %and18.2 = and i8 %xor16.2, %selector
  %xor819.2 = xor i8 %and18.2, %43
  store i8 %xor819.2, i8* %arrayidx3.2, align 1, !tbaa !7
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3
  %arrayidx.3 = getelementptr inbounds i8, i8* %a, i64 %indvars.iv.next.2
  %44 = load i8, i8* %arrayidx.3, align 1, !tbaa !7
  %arrayidx3.3 = getelementptr inbounds i8, i8* %r, i64 %indvars.iv.next.2
  %45 = load i8, i8* %arrayidx3.3, align 1, !tbaa !7
  %xor16.3 = xor i8 %45, %44
  %and18.3 = and i8 %xor16.3, %selector
  %xor819.3 = xor i8 %and18.3, %45
  store i8 %xor819.3, i8* %arrayidx3.3, align 1, !tbaa !7
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4
  %exitcond.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.3, label %for.cond.cleanup, label %for.body, !llvm.loop !20
}

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define void @fpcopy751(i64* nocapture readonly %a, i64* nocapture %c) local_unnamed_addr #3 {
entry:
  %0 = load i64, i64* %a, align 8, !tbaa !3
  store i64 %0, i64* %c, align 8, !tbaa !3
  %arrayidx.1 = getelementptr inbounds i64, i64* %a, i64 1
  %1 = load i64, i64* %arrayidx.1, align 8, !tbaa !3
  %arrayidx2.1 = getelementptr inbounds i64, i64* %c, i64 1
  store i64 %1, i64* %arrayidx2.1, align 8, !tbaa !3
  %arrayidx.2 = getelementptr inbounds i64, i64* %a, i64 2
  %2 = load i64, i64* %arrayidx.2, align 8, !tbaa !3
  %arrayidx2.2 = getelementptr inbounds i64, i64* %c, i64 2
  store i64 %2, i64* %arrayidx2.2, align 8, !tbaa !3
  %arrayidx.3 = getelementptr inbounds i64, i64* %a, i64 3
  %3 = load i64, i64* %arrayidx.3, align 8, !tbaa !3
  %arrayidx2.3 = getelementptr inbounds i64, i64* %c, i64 3
  store i64 %3, i64* %arrayidx2.3, align 8, !tbaa !3
  %arrayidx.4 = getelementptr inbounds i64, i64* %a, i64 4
  %4 = load i64, i64* %arrayidx.4, align 8, !tbaa !3
  %arrayidx2.4 = getelementptr inbounds i64, i64* %c, i64 4
  store i64 %4, i64* %arrayidx2.4, align 8, !tbaa !3
  %arrayidx.5 = getelementptr inbounds i64, i64* %a, i64 5
  %5 = load i64, i64* %arrayidx.5, align 8, !tbaa !3
  %arrayidx2.5 = getelementptr inbounds i64, i64* %c, i64 5
  store i64 %5, i64* %arrayidx2.5, align 8, !tbaa !3
  %arrayidx.6 = getelementptr inbounds i64, i64* %a, i64 6
  %6 = load i64, i64* %arrayidx.6, align 8, !tbaa !3
  %arrayidx2.6 = getelementptr inbounds i64, i64* %c, i64 6
  store i64 %6, i64* %arrayidx2.6, align 8, !tbaa !3
  %arrayidx.7 = getelementptr inbounds i64, i64* %a, i64 7
  %7 = load i64, i64* %arrayidx.7, align 8, !tbaa !3
  %arrayidx2.7 = getelementptr inbounds i64, i64* %c, i64 7
  store i64 %7, i64* %arrayidx2.7, align 8, !tbaa !3
  %arrayidx.8 = getelementptr inbounds i64, i64* %a, i64 8
  %8 = load i64, i64* %arrayidx.8, align 8, !tbaa !3
  %arrayidx2.8 = getelementptr inbounds i64, i64* %c, i64 8
  store i64 %8, i64* %arrayidx2.8, align 8, !tbaa !3
  %arrayidx.9 = getelementptr inbounds i64, i64* %a, i64 9
  %9 = load i64, i64* %arrayidx.9, align 8, !tbaa !3
  %arrayidx2.9 = getelementptr inbounds i64, i64* %c, i64 9
  store i64 %9, i64* %arrayidx2.9, align 8, !tbaa !3
  %arrayidx.10 = getelementptr inbounds i64, i64* %a, i64 10
  %10 = load i64, i64* %arrayidx.10, align 8, !tbaa !3
  %arrayidx2.10 = getelementptr inbounds i64, i64* %c, i64 10
  store i64 %10, i64* %arrayidx2.10, align 8, !tbaa !3
  %arrayidx.11 = getelementptr inbounds i64, i64* %a, i64 11
  %11 = load i64, i64* %arrayidx.11, align 8, !tbaa !3
  %arrayidx2.11 = getelementptr inbounds i64, i64* %c, i64 11
  store i64 %11, i64* %arrayidx2.11, align 8, !tbaa !3
  ret void
}

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define void @fpzero751(i64* nocapture %a) local_unnamed_addr #3 {
entry:
  %a5 = bitcast i64* %a to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %a5, i8 0, i64 96, i1 false)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @to_mont(i64* %a, i64* %mc) local_unnamed_addr #4 {
entry:
  %temp.i = alloca [24 x i64], align 16
  %0 = bitcast [24 x i64]* %temp.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 192, i1 false) #10
  %arraydecay.i = getelementptr inbounds [24 x i64], [24 x i64]* %temp.i, i64 0, i64 0
  call void @mp_mul(i64* %a, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* %mc) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @fpmul751_mont(i64* %ma, i64* %mb, i64* %mc) local_unnamed_addr #4 {
entry:
  %temp = alloca [24 x i64], align 16
  %0 = bitcast [24 x i64]* %temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 192, i1 false)
  %arraydecay = getelementptr inbounds [24 x i64], [24 x i64]* %temp, i64 0, i64 0
  call void @mp_mul(i64* %ma, i64* %mb, i64* nonnull %arraydecay, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay, i64* %mc) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @from_mont(i64* %ma, i64* %c) local_unnamed_addr #4 {
entry:
  %temp.i = alloca [24 x i64], align 16
  %one = alloca [12 x i64], align 16
  %0 = bitcast [12 x i64]* %one to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 96, i1 false)
  %arrayidx = getelementptr inbounds [12 x i64], [12 x i64]* %one, i64 0, i64 0
  store i64 1, i64* %arrayidx, align 16, !tbaa !3
  %1 = bitcast [24 x i64]* %temp.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 192, i1 false) #10
  %arraydecay.i = getelementptr inbounds [24 x i64], [24 x i64]* %temp.i, i64 0, i64 0
  call void @mp_mul(i64* %ma, i64* nonnull %arrayidx, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* %c) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %1) #10
  call void @fpcorrection751(i64* %c) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %0) #10
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

declare void @fpcorrection751(i64*) local_unnamed_addr #5

; Function Attrs: norecurse nounwind ssp uwtable
define void @copy_words(i64* nocapture readonly %a, i64* nocapture %c, i32 %nwords) local_unnamed_addr #0 {
entry:
  %cmp7 = icmp eq i32 %nwords, 0
  br i1 %cmp7, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %nwords to i64
  %min.iters.check = icmp ult i32 %nwords, 16
  br i1 %min.iters.check, label %for.body.preheader21, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.preheader
  %scevgep = getelementptr i64, i64* %c, i64 %wide.trip.count
  %scevgep13 = getelementptr i64, i64* %a, i64 %wide.trip.count
  %bound0 = icmp ugt i64* %scevgep13, %c
  %bound1 = icmp ugt i64* %scevgep, %a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader21, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967280
  %0 = add nsw i64 %n.vec, -16
  %1 = lshr exact i64 %0, 4
  %2 = add nuw nsw i64 %1, 1
  %xtraiter22 = and i64 %2, 3
  %3 = icmp ult i64 %0, 48
  br i1 %3, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nsw i64 %2, %xtraiter22
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.3, %vector.body ]
  %4 = getelementptr inbounds i64, i64* %a, i64 %index
  %5 = bitcast i64* %4 to <4 x i64>*
  %wide.load = load <4 x i64>, <4 x i64>* %5, align 8, !tbaa !3, !alias.scope !21
  %6 = getelementptr inbounds i64, i64* %4, i64 4
  %7 = bitcast i64* %6 to <4 x i64>*
  %wide.load18 = load <4 x i64>, <4 x i64>* %7, align 8, !tbaa !3, !alias.scope !21
  %8 = getelementptr inbounds i64, i64* %4, i64 8
  %9 = bitcast i64* %8 to <4 x i64>*
  %wide.load19 = load <4 x i64>, <4 x i64>* %9, align 8, !tbaa !3, !alias.scope !21
  %10 = getelementptr inbounds i64, i64* %4, i64 12
  %11 = bitcast i64* %10 to <4 x i64>*
  %wide.load20 = load <4 x i64>, <4 x i64>* %11, align 8, !tbaa !3, !alias.scope !21
  %12 = getelementptr inbounds i64, i64* %c, i64 %index
  %13 = bitcast i64* %12 to <4 x i64>*
  store <4 x i64> %wide.load, <4 x i64>* %13, align 8, !tbaa !3, !alias.scope !24, !noalias !21
  %14 = getelementptr inbounds i64, i64* %12, i64 4
  %15 = bitcast i64* %14 to <4 x i64>*
  store <4 x i64> %wide.load18, <4 x i64>* %15, align 8, !tbaa !3, !alias.scope !24, !noalias !21
  %16 = getelementptr inbounds i64, i64* %12, i64 8
  %17 = bitcast i64* %16 to <4 x i64>*
  store <4 x i64> %wide.load19, <4 x i64>* %17, align 8, !tbaa !3, !alias.scope !24, !noalias !21
  %18 = getelementptr inbounds i64, i64* %12, i64 12
  %19 = bitcast i64* %18 to <4 x i64>*
  store <4 x i64> %wide.load20, <4 x i64>* %19, align 8, !tbaa !3, !alias.scope !24, !noalias !21
  %index.next = or i64 %index, 16
  %20 = getelementptr inbounds i64, i64* %a, i64 %index.next
  %21 = bitcast i64* %20 to <4 x i64>*
  %wide.load.1 = load <4 x i64>, <4 x i64>* %21, align 8, !tbaa !3, !alias.scope !21
  %22 = getelementptr inbounds i64, i64* %20, i64 4
  %23 = bitcast i64* %22 to <4 x i64>*
  %wide.load18.1 = load <4 x i64>, <4 x i64>* %23, align 8, !tbaa !3, !alias.scope !21
  %24 = getelementptr inbounds i64, i64* %20, i64 8
  %25 = bitcast i64* %24 to <4 x i64>*
  %wide.load19.1 = load <4 x i64>, <4 x i64>* %25, align 8, !tbaa !3, !alias.scope !21
  %26 = getelementptr inbounds i64, i64* %20, i64 12
  %27 = bitcast i64* %26 to <4 x i64>*
  %wide.load20.1 = load <4 x i64>, <4 x i64>* %27, align 8, !tbaa !3, !alias.scope !21
  %28 = getelementptr inbounds i64, i64* %c, i64 %index.next
  %29 = bitcast i64* %28 to <4 x i64>*
  store <4 x i64> %wide.load.1, <4 x i64>* %29, align 8, !tbaa !3, !alias.scope !24, !noalias !21
  %30 = getelementptr inbounds i64, i64* %28, i64 4
  %31 = bitcast i64* %30 to <4 x i64>*
  store <4 x i64> %wide.load18.1, <4 x i64>* %31, align 8, !tbaa !3, !alias.scope !24, !noalias !21
  %32 = getelementptr inbounds i64, i64* %28, i64 8
  %33 = bitcast i64* %32 to <4 x i64>*
  store <4 x i64> %wide.load19.1, <4 x i64>* %33, align 8, !tbaa !3, !alias.scope !24, !noalias !21
  %34 = getelementptr inbounds i64, i64* %28, i64 12
  %35 = bitcast i64* %34 to <4 x i64>*
  store <4 x i64> %wide.load20.1, <4 x i64>* %35, align 8, !tbaa !3, !alias.scope !24, !noalias !21
  %index.next.1 = or i64 %index, 32
  %36 = getelementptr inbounds i64, i64* %a, i64 %index.next.1
  %37 = bitcast i64* %36 to <4 x i64>*
  %wide.load.2 = load <4 x i64>, <4 x i64>* %37, align 8, !tbaa !3, !alias.scope !21
  %38 = getelementptr inbounds i64, i64* %36, i64 4
  %39 = bitcast i64* %38 to <4 x i64>*
  %wide.load18.2 = load <4 x i64>, <4 x i64>* %39, align 8, !tbaa !3, !alias.scope !21
  %40 = getelementptr inbounds i64, i64* %36, i64 8
  %41 = bitcast i64* %40 to <4 x i64>*
  %wide.load19.2 = load <4 x i64>, <4 x i64>* %41, align 8, !tbaa !3, !alias.scope !21
  %42 = getelementptr inbounds i64, i64* %36, i64 12
  %43 = bitcast i64* %42 to <4 x i64>*
  %wide.load20.2 = load <4 x i64>, <4 x i64>* %43, align 8, !tbaa !3, !alias.scope !21
  %44 = getelementptr inbounds i64, i64* %c, i64 %index.next.1
  %45 = bitcast i64* %44 to <4 x i64>*
  store <4 x i64> %wide.load.2, <4 x i64>* %45, align 8, !tbaa !3, !alias.scope !24, !noalias !21
  %46 = getelementptr inbounds i64, i64* %44, i64 4
  %47 = bitcast i64* %46 to <4 x i64>*
  store <4 x i64> %wide.load18.2, <4 x i64>* %47, align 8, !tbaa !3, !alias.scope !24, !noalias !21
  %48 = getelementptr inbounds i64, i64* %44, i64 8
  %49 = bitcast i64* %48 to <4 x i64>*
  store <4 x i64> %wide.load19.2, <4 x i64>* %49, align 8, !tbaa !3, !alias.scope !24, !noalias !21
  %50 = getelementptr inbounds i64, i64* %44, i64 12
  %51 = bitcast i64* %50 to <4 x i64>*
  store <4 x i64> %wide.load20.2, <4 x i64>* %51, align 8, !tbaa !3, !alias.scope !24, !noalias !21
  %index.next.2 = or i64 %index, 48
  %52 = getelementptr inbounds i64, i64* %a, i64 %index.next.2
  %53 = bitcast i64* %52 to <4 x i64>*
  %wide.load.3 = load <4 x i64>, <4 x i64>* %53, align 8, !tbaa !3, !alias.scope !21
  %54 = getelementptr inbounds i64, i64* %52, i64 4
  %55 = bitcast i64* %54 to <4 x i64>*
  %wide.load18.3 = load <4 x i64>, <4 x i64>* %55, align 8, !tbaa !3, !alias.scope !21
  %56 = getelementptr inbounds i64, i64* %52, i64 8
  %57 = bitcast i64* %56 to <4 x i64>*
  %wide.load19.3 = load <4 x i64>, <4 x i64>* %57, align 8, !tbaa !3, !alias.scope !21
  %58 = getelementptr inbounds i64, i64* %52, i64 12
  %59 = bitcast i64* %58 to <4 x i64>*
  %wide.load20.3 = load <4 x i64>, <4 x i64>* %59, align 8, !tbaa !3, !alias.scope !21
  %60 = getelementptr inbounds i64, i64* %c, i64 %index.next.2
  %61 = bitcast i64* %60 to <4 x i64>*
  store <4 x i64> %wide.load.3, <4 x i64>* %61, align 8, !tbaa !3, !alias.scope !24, !noalias !21
  %62 = getelementptr inbounds i64, i64* %60, i64 4
  %63 = bitcast i64* %62 to <4 x i64>*
  store <4 x i64> %wide.load18.3, <4 x i64>* %63, align 8, !tbaa !3, !alias.scope !24, !noalias !21
  %64 = getelementptr inbounds i64, i64* %60, i64 8
  %65 = bitcast i64* %64 to <4 x i64>*
  store <4 x i64> %wide.load19.3, <4 x i64>* %65, align 8, !tbaa !3, !alias.scope !24, !noalias !21
  %66 = getelementptr inbounds i64, i64* %60, i64 12
  %67 = bitcast i64* %66 to <4 x i64>*
  store <4 x i64> %wide.load20.3, <4 x i64>* %67, align 8, !tbaa !3, !alias.scope !24, !noalias !21
  %index.next.3 = add i64 %index, 64
  %niter.nsub.3 = add i64 %niter, -4
  %niter.ncmp.3 = icmp eq i64 %niter.nsub.3, 0
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !26

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod23 = icmp eq i64 %xtraiter22, 0
  br i1 %lcmp.mod23, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.sub, %vector.body.epil ], [ %xtraiter22, %middle.block.unr-lcssa ]
  %68 = getelementptr inbounds i64, i64* %a, i64 %index.epil
  %69 = bitcast i64* %68 to <4 x i64>*
  %wide.load.epil = load <4 x i64>, <4 x i64>* %69, align 8, !tbaa !3, !alias.scope !21
  %70 = getelementptr inbounds i64, i64* %68, i64 4
  %71 = bitcast i64* %70 to <4 x i64>*
  %wide.load18.epil = load <4 x i64>, <4 x i64>* %71, align 8, !tbaa !3, !alias.scope !21
  %72 = getelementptr inbounds i64, i64* %68, i64 8
  %73 = bitcast i64* %72 to <4 x i64>*
  %wide.load19.epil = load <4 x i64>, <4 x i64>* %73, align 8, !tbaa !3, !alias.scope !21
  %74 = getelementptr inbounds i64, i64* %68, i64 12
  %75 = bitcast i64* %74 to <4 x i64>*
  %wide.load20.epil = load <4 x i64>, <4 x i64>* %75, align 8, !tbaa !3, !alias.scope !21
  %76 = getelementptr inbounds i64, i64* %c, i64 %index.epil
  %77 = bitcast i64* %76 to <4 x i64>*
  store <4 x i64> %wide.load.epil, <4 x i64>* %77, align 8, !tbaa !3, !alias.scope !24, !noalias !21
  %78 = getelementptr inbounds i64, i64* %76, i64 4
  %79 = bitcast i64* %78 to <4 x i64>*
  store <4 x i64> %wide.load18.epil, <4 x i64>* %79, align 8, !tbaa !3, !alias.scope !24, !noalias !21
  %80 = getelementptr inbounds i64, i64* %76, i64 8
  %81 = bitcast i64* %80 to <4 x i64>*
  store <4 x i64> %wide.load19.epil, <4 x i64>* %81, align 8, !tbaa !3, !alias.scope !24, !noalias !21
  %82 = getelementptr inbounds i64, i64* %76, i64 12
  %83 = bitcast i64* %82 to <4 x i64>*
  store <4 x i64> %wide.load20.epil, <4 x i64>* %83, align 8, !tbaa !3, !alias.scope !24, !noalias !21
  %index.next.epil = add i64 %index.epil, 16
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp, label %middle.block, label %vector.body.epil, !llvm.loop !27

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.end, label %for.body.preheader21

for.body.preheader21:                             ; preds = %middle.block, %vector.memcheck, %for.body.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  %84 = xor i64 %indvars.iv.ph, -1
  %85 = add nsw i64 %84, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 7
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader21, %for.body.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body.prol ], [ %indvars.iv.ph, %for.body.preheader21 ]
  %prol.iter = phi i64 [ %prol.iter.sub, %for.body.prol ], [ %xtraiter, %for.body.preheader21 ]
  %arrayidx.prol = getelementptr inbounds i64, i64* %a, i64 %indvars.iv.prol
  %86 = load i64, i64* %arrayidx.prol, align 8, !tbaa !3
  %arrayidx2.prol = getelementptr inbounds i64, i64* %c, i64 %indvars.iv.prol
  store i64 %86, i64* %arrayidx2.prol, align 8, !tbaa !3
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !28

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader21
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body.preheader21 ], [ %indvars.iv.next.prol, %for.body.prol ]
  %87 = icmp ult i64 %85, 7
  br i1 %87, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  %arrayidx = getelementptr inbounds i64, i64* %a, i64 %indvars.iv
  %88 = load i64, i64* %arrayidx, align 8, !tbaa !3
  %arrayidx2 = getelementptr inbounds i64, i64* %c, i64 %indvars.iv
  store i64 %88, i64* %arrayidx2, align 8, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds i64, i64* %a, i64 %indvars.iv.next
  %89 = load i64, i64* %arrayidx.1, align 8, !tbaa !3
  %arrayidx2.1 = getelementptr inbounds i64, i64* %c, i64 %indvars.iv.next
  store i64 %89, i64* %arrayidx2.1, align 8, !tbaa !3
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %arrayidx.2 = getelementptr inbounds i64, i64* %a, i64 %indvars.iv.next.1
  %90 = load i64, i64* %arrayidx.2, align 8, !tbaa !3
  %arrayidx2.2 = getelementptr inbounds i64, i64* %c, i64 %indvars.iv.next.1
  store i64 %90, i64* %arrayidx2.2, align 8, !tbaa !3
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3
  %arrayidx.3 = getelementptr inbounds i64, i64* %a, i64 %indvars.iv.next.2
  %91 = load i64, i64* %arrayidx.3, align 8, !tbaa !3
  %arrayidx2.3 = getelementptr inbounds i64, i64* %c, i64 %indvars.iv.next.2
  store i64 %91, i64* %arrayidx2.3, align 8, !tbaa !3
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4
  %arrayidx.4 = getelementptr inbounds i64, i64* %a, i64 %indvars.iv.next.3
  %92 = load i64, i64* %arrayidx.4, align 8, !tbaa !3
  %arrayidx2.4 = getelementptr inbounds i64, i64* %c, i64 %indvars.iv.next.3
  store i64 %92, i64* %arrayidx2.4, align 8, !tbaa !3
  %indvars.iv.next.4 = add nsw i64 %indvars.iv, 5
  %arrayidx.5 = getelementptr inbounds i64, i64* %a, i64 %indvars.iv.next.4
  %93 = load i64, i64* %arrayidx.5, align 8, !tbaa !3
  %arrayidx2.5 = getelementptr inbounds i64, i64* %c, i64 %indvars.iv.next.4
  store i64 %93, i64* %arrayidx2.5, align 8, !tbaa !3
  %indvars.iv.next.5 = add nsw i64 %indvars.iv, 6
  %arrayidx.6 = getelementptr inbounds i64, i64* %a, i64 %indvars.iv.next.5
  %94 = load i64, i64* %arrayidx.6, align 8, !tbaa !3
  %arrayidx2.6 = getelementptr inbounds i64, i64* %c, i64 %indvars.iv.next.5
  store i64 %94, i64* %arrayidx2.6, align 8, !tbaa !3
  %indvars.iv.next.6 = add nsw i64 %indvars.iv, 7
  %arrayidx.7 = getelementptr inbounds i64, i64* %a, i64 %indvars.iv.next.6
  %95 = load i64, i64* %arrayidx.7, align 8, !tbaa !3
  %arrayidx2.7 = getelementptr inbounds i64, i64* %c, i64 %indvars.iv.next.6
  store i64 %95, i64* %arrayidx2.7, align 8, !tbaa !3
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, 8
  %exitcond.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.7, label %for.end, label %for.body, !llvm.loop !29

for.end:                                          ; preds = %for.body.prol.loopexit, %for.body, %middle.block, %entry
  ret void
}

declare void @mp_mul(i64*, i64*, i64*, i32) local_unnamed_addr #5

declare void @rdc_mont(i64*, i64*) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define void @fpsqr751_mont(i64* %ma, i64* %mc) local_unnamed_addr #4 {
entry:
  %temp = alloca [24 x i64], align 16
  %0 = bitcast [24 x i64]* %temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 192, i1 false)
  %arraydecay = getelementptr inbounds [24 x i64], [24 x i64]* %temp, i64 0, i64 0
  call void @mp_mul(i64* %ma, i64* %ma, i64* nonnull %arraydecay, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay, i64* %mc) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @fpinv751_mont(i64* %a) local_unnamed_addr #4 {
entry:
  %temp.i = alloca [24 x i64], align 16
  %tt = alloca [12 x i64], align 16
  %0 = bitcast [12 x i64]* %tt to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %0) #10
  %arraydecay = getelementptr inbounds [12 x i64], [12 x i64]* %tt, i64 0, i64 0
  %1 = bitcast i64* %a to <4 x i64>*
  %2 = load <4 x i64>, <4 x i64>* %1, align 8, !tbaa !3
  %3 = bitcast [12 x i64]* %tt to <4 x i64>*
  store <4 x i64> %2, <4 x i64>* %3, align 16, !tbaa !3
  %arrayidx.4.i = getelementptr inbounds i64, i64* %a, i64 4
  %arrayidx2.4.i = getelementptr inbounds [12 x i64], [12 x i64]* %tt, i64 0, i64 4
  %4 = bitcast i64* %arrayidx.4.i to <4 x i64>*
  %5 = load <4 x i64>, <4 x i64>* %4, align 8, !tbaa !3
  %6 = bitcast i64* %arrayidx2.4.i to <4 x i64>*
  store <4 x i64> %5, <4 x i64>* %6, align 16, !tbaa !3
  %arrayidx.8.i = getelementptr inbounds i64, i64* %a, i64 8
  %arrayidx2.8.i = getelementptr inbounds [12 x i64], [12 x i64]* %tt, i64 0, i64 8
  %7 = bitcast i64* %arrayidx.8.i to <4 x i64>*
  %8 = load <4 x i64>, <4 x i64>* %7, align 8, !tbaa !3
  %9 = bitcast i64* %arrayidx2.8.i to <4 x i64>*
  store <4 x i64> %8, <4 x i64>* %9, align 16, !tbaa !3
  call void @fpinv751_chain_mont(i64* nonnull %arraydecay)
  %10 = bitcast [24 x i64]* %temp.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 192, i1 false) #10
  %arraydecay.i10 = getelementptr inbounds [24 x i64], [24 x i64]* %temp.i, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i10, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i10, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i10, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i10, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* %a, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i10, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i10, i64* %a) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @fpinv751_chain_mont(i64* %a) local_unnamed_addr #4 {
entry:
  %temp.i = alloca [24 x i64], align 16
  %t = alloca [27 x [12 x i64]], align 16
  %tt = alloca [12 x i64], align 16
  %0 = bitcast [27 x [12 x i64]]* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 2592, i8* nonnull %0) #10
  %1 = bitcast [12 x i64]* %tt to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %1) #10
  %arraydecay = getelementptr inbounds [12 x i64], [12 x i64]* %tt, i64 0, i64 0
  %2 = bitcast [24 x i64]* %temp.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  %arraydecay.i = getelementptr inbounds [24 x i64], [24 x i64]* %temp.i, i64 0, i64 0
  call void @mp_mul(i64* %a, i64* %a, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  %arraydecay2 = getelementptr inbounds [27 x [12 x i64]], [27 x [12 x i64]]* %t, i64 0, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* %a, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay2) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  %arraydecay7 = getelementptr inbounds [27 x [12 x i64]], [27 x [12 x i64]]* %t, i64 0, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay7) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  %arraydecay12 = getelementptr inbounds [27 x [12 x i64]], [27 x [12 x i64]]* %t, i64 0, i64 2, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay7, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay12) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  %arraydecay17 = getelementptr inbounds [27 x [12 x i64]], [27 x [12 x i64]]* %t, i64 0, i64 3, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay12, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay17) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay17, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay17) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  %arraydecay28 = getelementptr inbounds [27 x [12 x i64]], [27 x [12 x i64]]* %t, i64 0, i64 4, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay17, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay28) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  %arraydecay28.1 = getelementptr inbounds [27 x [12 x i64]], [27 x [12 x i64]]* %t, i64 0, i64 5, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay28, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay28.1) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  %arraydecay28.2 = getelementptr inbounds [27 x [12 x i64]], [27 x [12 x i64]]* %t, i64 0, i64 6, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay28.1, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay28.2) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  %arraydecay28.3 = getelementptr inbounds [27 x [12 x i64]], [27 x [12 x i64]]* %t, i64 0, i64 7, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay28.2, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay28.3) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  %arraydecay28.4 = getelementptr inbounds [27 x [12 x i64]], [27 x [12 x i64]]* %t, i64 0, i64 8, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay28.3, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay28.4) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  %arraydecay28.5 = getelementptr inbounds [27 x [12 x i64]], [27 x [12 x i64]]* %t, i64 0, i64 9, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay28.4, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay28.5) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay28.5, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay28.5) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  %arraydecay44 = getelementptr inbounds [27 x [12 x i64]], [27 x [12 x i64]]* %t, i64 0, i64 10, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay28.5, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay44) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  %arraydecay44.1 = getelementptr inbounds [27 x [12 x i64]], [27 x [12 x i64]]* %t, i64 0, i64 11, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay44.1) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  %arraydecay44.2 = getelementptr inbounds [27 x [12 x i64]], [27 x [12 x i64]]* %t, i64 0, i64 12, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.1, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay44.2) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  %arraydecay44.3 = getelementptr inbounds [27 x [12 x i64]], [27 x [12 x i64]]* %t, i64 0, i64 13, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.2, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay44.3) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  %arraydecay44.4 = getelementptr inbounds [27 x [12 x i64]], [27 x [12 x i64]]* %t, i64 0, i64 14, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.3, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay44.4) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  %arraydecay44.5 = getelementptr inbounds [27 x [12 x i64]], [27 x [12 x i64]]* %t, i64 0, i64 15, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.4, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay44.5) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  %arraydecay44.6 = getelementptr inbounds [27 x [12 x i64]], [27 x [12 x i64]]* %t, i64 0, i64 16, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.5, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay44.6) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  %arraydecay44.7 = getelementptr inbounds [27 x [12 x i64]], [27 x [12 x i64]]* %t, i64 0, i64 17, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.6, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay44.7) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  %arraydecay44.8 = getelementptr inbounds [27 x [12 x i64]], [27 x [12 x i64]]* %t, i64 0, i64 18, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.7, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay44.8) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  %arraydecay44.9 = getelementptr inbounds [27 x [12 x i64]], [27 x [12 x i64]]* %t, i64 0, i64 19, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.8, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay44.9) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  %arraydecay44.10 = getelementptr inbounds [27 x [12 x i64]], [27 x [12 x i64]]* %t, i64 0, i64 20, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.9, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay44.10) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  %arraydecay44.11 = getelementptr inbounds [27 x [12 x i64]], [27 x [12 x i64]]* %t, i64 0, i64 21, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.10, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay44.11) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.11, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay44.11) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  %arraydecay63 = getelementptr inbounds [27 x [12 x i64]], [27 x [12 x i64]]* %t, i64 0, i64 22, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.11, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay63) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  %arraydecay63.1 = getelementptr inbounds [27 x [12 x i64]], [27 x [12 x i64]]* %t, i64 0, i64 23, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay63, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay63.1) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  %arraydecay63.2 = getelementptr inbounds [27 x [12 x i64]], [27 x [12 x i64]]* %t, i64 0, i64 24, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay63.1, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay63.2) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  %arraydecay63.3 = getelementptr inbounds [27 x [12 x i64]], [27 x [12 x i64]]* %t, i64 0, i64 25, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay63.2, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay63.3) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay63.3, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay63.3) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  %arraydecay76 = getelementptr inbounds [27 x [12 x i64]], [27 x [12 x i64]]* %t, i64 0, i64 26, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay63.3, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay76) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  %3 = bitcast i64* %a to <4 x i64>*
  %4 = load <4 x i64>, <4 x i64>* %3, align 8, !tbaa !3
  %5 = bitcast [12 x i64]* %tt to <4 x i64>*
  store <4 x i64> %4, <4 x i64>* %5, align 16, !tbaa !3
  %arrayidx.4.i = getelementptr inbounds i64, i64* %a, i64 4
  %arrayidx2.4.i = getelementptr inbounds [12 x i64], [12 x i64]* %tt, i64 0, i64 4
  %6 = bitcast i64* %arrayidx.4.i to <4 x i64>*
  %7 = load <4 x i64>, <4 x i64>* %6, align 8, !tbaa !3
  %8 = bitcast i64* %arrayidx2.4.i to <4 x i64>*
  store <4 x i64> %7, <4 x i64>* %8, align 16, !tbaa !3
  %arrayidx.8.i = getelementptr inbounds i64, i64* %a, i64 8
  %arrayidx2.8.i = getelementptr inbounds [12 x i64], [12 x i64]* %tt, i64 0, i64 8
  %9 = bitcast i64* %arrayidx.8.i to <4 x i64>*
  %10 = load <4 x i64>, <4 x i64>* %9, align 8, !tbaa !3
  %11 = bitcast i64* %arrayidx2.8.i to <4 x i64>*
  store <4 x i64> %10, <4 x i64>* %11, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.10, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay63.2, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.1, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay28.4, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay12, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay63.1, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay12, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay12, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.5, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.3, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay76, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.10, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.1, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.4, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay28, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.8, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay7, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay63, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay28.2, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay63.2, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay28.5, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.8, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.7, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* %a, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.6, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay28.3, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.2, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.9, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay63, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay63.3, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay12, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay63, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.8, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay28, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.4, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.3, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay28.1, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay63.1, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.11, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay12, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay63.1, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.2, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay28.5, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay17, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.3, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.7, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay76, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay28.1, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay28.4, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay12, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.1, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay44.10, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  br label %for.cond739.preheader

for.cond739.preheader:                            ; preds = %for.cond739.preheader, %entry
  %j.01156 = phi i32 [ 0, %entry ], [ %inc752, %for.cond739.preheader ]
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay76, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  %inc752 = add nuw nsw i32 %j.01156, 1
  %exitcond = icmp eq i32 %inc752, 61
  br i1 %exitcond, label %for.end753, label %for.cond739.preheader

for.end753:                                       ; preds = %for.cond739.preheader
  %12 = bitcast [12 x i64]* %tt to <4 x i64>*
  %13 = load <4 x i64>, <4 x i64>* %12, align 16, !tbaa !3
  %14 = bitcast i64* %a to <4 x i64>*
  store <4 x i64> %13, <4 x i64>* %14, align 8, !tbaa !3
  %15 = bitcast i64* %arrayidx2.4.i to <4 x i64>*
  %16 = load <4 x i64>, <4 x i64>* %15, align 16, !tbaa !3
  %17 = bitcast i64* %arrayidx.4.i to <4 x i64>*
  store <4 x i64> %16, <4 x i64>* %17, align 8, !tbaa !3
  %18 = bitcast i64* %arrayidx2.8.i to <4 x i64>*
  %19 = load <4 x i64>, <4 x i64>* %18, align 16, !tbaa !3
  %20 = bitcast i64* %arrayidx.8.i to <4 x i64>*
  store <4 x i64> %19, <4 x i64>* %20, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 2592, i8* nonnull %0) #10
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @fp2copy751([12 x i64]* nocapture readonly %a, [12 x i64]* nocapture %c) local_unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 0, i64 0
  %0 = load i64, i64* %arraydecay, align 8, !tbaa !3
  store i64 %0, i64* %arraydecay2, align 8, !tbaa !3
  %arrayidx.1.i = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 0, i64 1
  %1 = load i64, i64* %arrayidx.1.i, align 8, !tbaa !3
  %arrayidx2.1.i = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 0, i64 1
  store i64 %1, i64* %arrayidx2.1.i, align 8, !tbaa !3
  %arrayidx.2.i = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 0, i64 2
  %2 = load i64, i64* %arrayidx.2.i, align 8, !tbaa !3
  %arrayidx2.2.i = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 0, i64 2
  store i64 %2, i64* %arrayidx2.2.i, align 8, !tbaa !3
  %arrayidx.3.i = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 0, i64 3
  %3 = load i64, i64* %arrayidx.3.i, align 8, !tbaa !3
  %arrayidx2.3.i = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 0, i64 3
  store i64 %3, i64* %arrayidx2.3.i, align 8, !tbaa !3
  %arrayidx.4.i = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 0, i64 4
  %4 = load i64, i64* %arrayidx.4.i, align 8, !tbaa !3
  %arrayidx2.4.i = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 0, i64 4
  store i64 %4, i64* %arrayidx2.4.i, align 8, !tbaa !3
  %arrayidx.5.i = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 0, i64 5
  %5 = load i64, i64* %arrayidx.5.i, align 8, !tbaa !3
  %arrayidx2.5.i = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 0, i64 5
  store i64 %5, i64* %arrayidx2.5.i, align 8, !tbaa !3
  %arrayidx.6.i = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 0, i64 6
  %6 = load i64, i64* %arrayidx.6.i, align 8, !tbaa !3
  %arrayidx2.6.i = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 0, i64 6
  store i64 %6, i64* %arrayidx2.6.i, align 8, !tbaa !3
  %arrayidx.7.i = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 0, i64 7
  %7 = load i64, i64* %arrayidx.7.i, align 8, !tbaa !3
  %arrayidx2.7.i = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 0, i64 7
  store i64 %7, i64* %arrayidx2.7.i, align 8, !tbaa !3
  %arrayidx.8.i = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 0, i64 8
  %8 = load i64, i64* %arrayidx.8.i, align 8, !tbaa !3
  %arrayidx2.8.i = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 0, i64 8
  store i64 %8, i64* %arrayidx2.8.i, align 8, !tbaa !3
  %arrayidx.9.i = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 0, i64 9
  %9 = load i64, i64* %arrayidx.9.i, align 8, !tbaa !3
  %arrayidx2.9.i = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 0, i64 9
  store i64 %9, i64* %arrayidx2.9.i, align 8, !tbaa !3
  %arrayidx.10.i = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 0, i64 10
  %10 = load i64, i64* %arrayidx.10.i, align 8, !tbaa !3
  %arrayidx2.10.i = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 0, i64 10
  store i64 %10, i64* %arrayidx2.10.i, align 8, !tbaa !3
  %arrayidx.11.i = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 0, i64 11
  %11 = load i64, i64* %arrayidx.11.i, align 8, !tbaa !3
  %arrayidx2.11.i = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 0, i64 11
  store i64 %11, i64* %arrayidx2.11.i, align 8, !tbaa !3
  %arraydecay4 = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 1, i64 0
  %arraydecay6 = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 1, i64 0
  %12 = load i64, i64* %arraydecay4, align 8, !tbaa !3
  store i64 %12, i64* %arraydecay6, align 8, !tbaa !3
  %arrayidx.1.i9 = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 1, i64 1
  %13 = load i64, i64* %arrayidx.1.i9, align 8, !tbaa !3
  %arrayidx2.1.i10 = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 1, i64 1
  store i64 %13, i64* %arrayidx2.1.i10, align 8, !tbaa !3
  %arrayidx.2.i11 = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 1, i64 2
  %14 = load i64, i64* %arrayidx.2.i11, align 8, !tbaa !3
  %arrayidx2.2.i12 = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 1, i64 2
  store i64 %14, i64* %arrayidx2.2.i12, align 8, !tbaa !3
  %arrayidx.3.i13 = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 1, i64 3
  %15 = load i64, i64* %arrayidx.3.i13, align 8, !tbaa !3
  %arrayidx2.3.i14 = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 1, i64 3
  store i64 %15, i64* %arrayidx2.3.i14, align 8, !tbaa !3
  %arrayidx.4.i15 = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 1, i64 4
  %16 = load i64, i64* %arrayidx.4.i15, align 8, !tbaa !3
  %arrayidx2.4.i16 = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 1, i64 4
  store i64 %16, i64* %arrayidx2.4.i16, align 8, !tbaa !3
  %arrayidx.5.i17 = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 1, i64 5
  %17 = load i64, i64* %arrayidx.5.i17, align 8, !tbaa !3
  %arrayidx2.5.i18 = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 1, i64 5
  store i64 %17, i64* %arrayidx2.5.i18, align 8, !tbaa !3
  %arrayidx.6.i19 = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 1, i64 6
  %18 = load i64, i64* %arrayidx.6.i19, align 8, !tbaa !3
  %arrayidx2.6.i20 = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 1, i64 6
  store i64 %18, i64* %arrayidx2.6.i20, align 8, !tbaa !3
  %arrayidx.7.i21 = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 1, i64 7
  %19 = load i64, i64* %arrayidx.7.i21, align 8, !tbaa !3
  %arrayidx2.7.i22 = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 1, i64 7
  store i64 %19, i64* %arrayidx2.7.i22, align 8, !tbaa !3
  %arrayidx.8.i23 = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 1, i64 8
  %20 = load i64, i64* %arrayidx.8.i23, align 8, !tbaa !3
  %arrayidx2.8.i24 = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 1, i64 8
  store i64 %20, i64* %arrayidx2.8.i24, align 8, !tbaa !3
  %arrayidx.9.i25 = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 1, i64 9
  %21 = load i64, i64* %arrayidx.9.i25, align 8, !tbaa !3
  %arrayidx2.9.i26 = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 1, i64 9
  store i64 %21, i64* %arrayidx2.9.i26, align 8, !tbaa !3
  %arrayidx.10.i27 = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 1, i64 10
  %22 = load i64, i64* %arrayidx.10.i27, align 8, !tbaa !3
  %arrayidx2.10.i28 = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 1, i64 10
  store i64 %22, i64* %arrayidx2.10.i28, align 8, !tbaa !3
  %arrayidx.11.i29 = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 1, i64 11
  %23 = load i64, i64* %arrayidx.11.i29, align 8, !tbaa !3
  %arrayidx2.11.i30 = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 1, i64 11
  store i64 %23, i64* %arrayidx2.11.i30, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @fp2zero751([12 x i64]* nocapture %a) local_unnamed_addr #4 {
entry:
  %0 = bitcast [12 x i64]* %a to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 192, i1 false)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @fp2neg751([12 x i64]* %a) local_unnamed_addr #4 {
entry:
  %arraydecay = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 0, i64 0
  tail call void @fpneg751(i64* %arraydecay) #10
  %arraydecay2 = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 1, i64 0
  tail call void @fpneg751(i64* nonnull %arraydecay2) #10
  ret void
}

declare void @fpneg751(i64*) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind ssp uwtable
define void @fp2add751([12 x i64]* %a, [12 x i64]* %b, [12 x i64]* %c) local_unnamed_addr #6 {
entry:
  %arraydecay = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [12 x i64], [12 x i64]* %b, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 0, i64 0
  tail call void @fpadd751(i64* %arraydecay, i64* %arraydecay2, i64* %arraydecay4) #10
  %arraydecay6 = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 1, i64 0
  %arraydecay8 = getelementptr inbounds [12 x i64], [12 x i64]* %b, i64 1, i64 0
  %arraydecay10 = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 1, i64 0
  tail call void @fpadd751(i64* nonnull %arraydecay6, i64* nonnull %arraydecay8, i64* nonnull %arraydecay10) #10
  ret void
}

declare void @fpadd751(i64*, i64*, i64*) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind ssp uwtable
define void @fp2sub751([12 x i64]* %a, [12 x i64]* %b, [12 x i64]* %c) local_unnamed_addr #6 {
entry:
  %arraydecay = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [12 x i64], [12 x i64]* %b, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 0, i64 0
  tail call void @fpsub751(i64* %arraydecay, i64* %arraydecay2, i64* %arraydecay4) #10
  %arraydecay6 = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 1, i64 0
  %arraydecay8 = getelementptr inbounds [12 x i64], [12 x i64]* %b, i64 1, i64 0
  %arraydecay10 = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 1, i64 0
  tail call void @fpsub751(i64* nonnull %arraydecay6, i64* nonnull %arraydecay8, i64* nonnull %arraydecay10) #10
  ret void
}

declare void @fpsub751(i64*, i64*, i64*) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define void @fp2div2_751([12 x i64]* %a, [12 x i64]* %c) local_unnamed_addr #4 {
entry:
  %arraydecay = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 0, i64 0
  tail call void @fpdiv2_751(i64* %arraydecay, i64* %arraydecay2) #10
  %arraydecay4 = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 1, i64 0
  %arraydecay6 = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 1, i64 0
  tail call void @fpdiv2_751(i64* nonnull %arraydecay4, i64* nonnull %arraydecay6) #10
  ret void
}

declare void @fpdiv2_751(i64*, i64*) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define void @fp2correction751([12 x i64]* %a) local_unnamed_addr #4 {
entry:
  %arraydecay = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 0, i64 0
  tail call void @fpcorrection751(i64* %arraydecay) #10
  %arraydecay2 = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 1, i64 0
  tail call void @fpcorrection751(i64* nonnull %arraydecay2) #10
  ret void
}

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define i32 @mp_add(i64* nocapture readonly %a, i64* nocapture readonly %b, i64* nocapture %c, i32 %nwords) local_unnamed_addr #3 {
entry:
  %cmp31 = icmp eq i32 %nwords, 0
  br i1 %cmp31, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %nwords to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %0 = icmp eq i32 %nwords, 1
  br i1 %0, label %for.cond.for.end_crit_edge.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = sub nsw i64 %wide.trip.count, %xtraiter
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next.1, %for.body ]
  %carry.032 = phi i64 [ 0, %for.body.preheader.new ], [ %or29.1, %for.body ]
  %niter = phi i64 [ %unroll_iter, %for.body.preheader.new ], [ %niter.nsub.1, %for.body ]
  %arrayidx = getelementptr inbounds i64, i64* %a, i64 %indvars.iv
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !3
  %add = add i64 %1, %carry.032
  %arrayidx2 = getelementptr inbounds i64, i64* %b, i64 %indvars.iv
  %2 = load i64, i64* %arrayidx2, align 8, !tbaa !3
  %add3 = add i64 %2, %add
  %arrayidx5 = getelementptr inbounds i64, i64* %c, i64 %indvars.iv
  store i64 %add3, i64* %arrayidx5, align 8, !tbaa !3
  %3 = xor i64 %add, -9223372036854775808
  %xor2.i = and i64 %3, %1
  %xor.i23 = xor i64 %add3, %add
  %xor1.i24 = xor i64 %2, %add
  %or.i25 = or i64 %xor.i23, %xor1.i24
  %xor2.i26 = xor i64 %or.i25, %add3
  %shr.i30 = or i64 %xor2.i26, %xor2.i
  %or29 = lshr i64 %shr.i30, 63
  %indvars.iv.next = or i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds i64, i64* %a, i64 %indvars.iv.next
  %4 = load i64, i64* %arrayidx.1, align 8, !tbaa !3
  %add.1 = add i64 %4, %or29
  %arrayidx2.1 = getelementptr inbounds i64, i64* %b, i64 %indvars.iv.next
  %5 = load i64, i64* %arrayidx2.1, align 8, !tbaa !3
  %add3.1 = add i64 %5, %add.1
  %arrayidx5.1 = getelementptr inbounds i64, i64* %c, i64 %indvars.iv.next
  store i64 %add3.1, i64* %arrayidx5.1, align 8, !tbaa !3
  %6 = xor i64 %add.1, -9223372036854775808
  %xor2.i.1 = and i64 %6, %4
  %xor.i23.1 = xor i64 %add3.1, %add.1
  %xor1.i24.1 = xor i64 %5, %add.1
  %or.i25.1 = or i64 %xor.i23.1, %xor1.i24.1
  %xor2.i26.1 = xor i64 %or.i25.1, %add3.1
  %shr.i30.1 = or i64 %xor2.i26.1, %xor2.i.1
  %or29.1 = lshr i64 %shr.i30.1, 63
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.cond.for.end_crit_edge.unr-lcssa, label %for.body

for.cond.for.end_crit_edge.unr-lcssa:             ; preds = %for.body, %for.body.preheader
  %or29.lcssa.ph = phi i64 [ undef, %for.body.preheader ], [ %or29.1, %for.body ]
  %indvars.iv.unr = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next.1, %for.body ]
  %carry.032.unr = phi i64 [ 0, %for.body.preheader ], [ %or29.1, %for.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.cond.for.end_crit_edge, label %for.body.epil

for.body.epil:                                    ; preds = %for.cond.for.end_crit_edge.unr-lcssa
  %arrayidx.epil = getelementptr inbounds i64, i64* %a, i64 %indvars.iv.unr
  %7 = load i64, i64* %arrayidx.epil, align 8, !tbaa !3
  %add.epil = add i64 %7, %carry.032.unr
  %arrayidx2.epil = getelementptr inbounds i64, i64* %b, i64 %indvars.iv.unr
  %8 = load i64, i64* %arrayidx2.epil, align 8, !tbaa !3
  %add3.epil = add i64 %8, %add.epil
  %arrayidx5.epil = getelementptr inbounds i64, i64* %c, i64 %indvars.iv.unr
  store i64 %add3.epil, i64* %arrayidx5.epil, align 8, !tbaa !3
  %xor.i23.epil = xor i64 %add3.epil, %add.epil
  %xor1.i24.epil = xor i64 %8, %add.epil
  %or.i25.epil = or i64 %xor.i23.epil, %xor1.i24.epil
  %xor2.i26.epil = xor i64 %or.i25.epil, %add3.epil
  %9 = xor i64 %add.epil, -9223372036854775808
  %xor2.i.epil = and i64 %9, %7
  %shr.i30.epil = or i64 %xor2.i26.epil, %xor2.i.epil
  %or29.epil = lshr i64 %shr.i30.epil, 63
  br label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond.for.end_crit_edge.unr-lcssa, %for.body.epil
  %or29.lcssa = phi i64 [ %or29.lcssa.ph, %for.cond.for.end_crit_edge.unr-lcssa ], [ %or29.epil, %for.body.epil ]
  %or.le = trunc i64 %or29.lcssa to i32
  br label %for.end

for.end:                                          ; preds = %entry, %for.cond.for.end_crit_edge
  %carry.0.lcssa = phi i32 [ %or.le, %for.cond.for.end_crit_edge ], [ 0, %entry ]
  ret i32 %carry.0.lcssa
}

; Function Attrs: nounwind ssp uwtable
define void @fp2sqr751_mont([12 x i64]* %a, [12 x i64]* %c) local_unnamed_addr #4 {
entry:
  %temp.i = alloca [24 x i64], align 16
  %t1 = alloca [12 x i64], align 16
  %t2 = alloca [12 x i64], align 16
  %t3 = alloca [12 x i64], align 16
  %0 = bitcast [12 x i64]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %0) #10
  %1 = bitcast [12 x i64]* %t2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %1) #10
  %2 = bitcast [12 x i64]* %t3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %2) #10
  %arraydecay = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 1, i64 0
  %arraydecay3 = getelementptr inbounds [12 x i64], [12 x i64]* %t1, i64 0, i64 0
  call fastcc void @mp_addfast(i64* %arraydecay, i64* nonnull %arraydecay2, i64* nonnull %arraydecay3)
  %arraydecay8 = getelementptr inbounds [12 x i64], [12 x i64]* %t2, i64 0, i64 0
  call void @mp_sub751_p4(i64* %arraydecay, i64* nonnull %arraydecay2, i64* nonnull %arraydecay8) #10
  %arraydecay13 = getelementptr inbounds [12 x i64], [12 x i64]* %t3, i64 0, i64 0
  call fastcc void @mp_addfast(i64* %arraydecay, i64* %arraydecay, i64* nonnull %arraydecay13)
  %arraydecay17 = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 0, i64 0
  %3 = bitcast [24 x i64]* %temp.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %3) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %3, i8 0, i64 192, i1 false) #10
  %arraydecay.i = getelementptr inbounds [24 x i64], [24 x i64]* %temp.i, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay3, i64* nonnull %arraydecay8, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* %arraydecay17) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %3) #10
  %arraydecay22 = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %3) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %3, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13, i64* nonnull %arraydecay2, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay22) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %0) #10
  ret void
}

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define internal fastcc void @mp_addfast(i64* nocapture readonly %a, i64* nocapture readonly %b, i64* nocapture %c) unnamed_addr #3 {
entry:
  %0 = load i64, i64* %a, align 8, !tbaa !3
  %1 = load i64, i64* %b, align 8, !tbaa !3
  %add3.i = add i64 %1, %0
  store i64 %add3.i, i64* %c, align 8, !tbaa !3
  %xor.i23.i = xor i64 %add3.i, %0
  %xor1.i24.i = xor i64 %1, %0
  %or.i25.i = or i64 %xor.i23.i, %xor1.i24.i
  %xor2.i26.i = xor i64 %or.i25.i, %add3.i
  %or29.i = lshr i64 %xor2.i26.i, 63
  %arrayidx.i.1 = getelementptr inbounds i64, i64* %a, i64 1
  %2 = load i64, i64* %arrayidx.i.1, align 8, !tbaa !3
  %add.i.1 = add i64 %2, %or29.i
  %arrayidx2.i.1 = getelementptr inbounds i64, i64* %b, i64 1
  %3 = load i64, i64* %arrayidx2.i.1, align 8, !tbaa !3
  %add3.i.1 = add i64 %3, %add.i.1
  %arrayidx5.i.1 = getelementptr inbounds i64, i64* %c, i64 1
  store i64 %add3.i.1, i64* %arrayidx5.i.1, align 8, !tbaa !3
  %4 = xor i64 %add.i.1, -9223372036854775808
  %xor2.i.i.1 = and i64 %4, %2
  %xor.i23.i.1 = xor i64 %add3.i.1, %add.i.1
  %xor1.i24.i.1 = xor i64 %3, %add.i.1
  %or.i25.i.1 = or i64 %xor.i23.i.1, %xor1.i24.i.1
  %xor2.i26.i.1 = xor i64 %or.i25.i.1, %add3.i.1
  %shr.i30.i.1 = or i64 %xor2.i26.i.1, %xor2.i.i.1
  %or29.i.1 = lshr i64 %shr.i30.i.1, 63
  %arrayidx.i.2 = getelementptr inbounds i64, i64* %a, i64 2
  %5 = load i64, i64* %arrayidx.i.2, align 8, !tbaa !3
  %add.i.2 = add i64 %5, %or29.i.1
  %arrayidx2.i.2 = getelementptr inbounds i64, i64* %b, i64 2
  %6 = load i64, i64* %arrayidx2.i.2, align 8, !tbaa !3
  %add3.i.2 = add i64 %6, %add.i.2
  %arrayidx5.i.2 = getelementptr inbounds i64, i64* %c, i64 2
  store i64 %add3.i.2, i64* %arrayidx5.i.2, align 8, !tbaa !3
  %7 = xor i64 %add.i.2, -9223372036854775808
  %xor2.i.i.2 = and i64 %7, %5
  %xor.i23.i.2 = xor i64 %add3.i.2, %add.i.2
  %xor1.i24.i.2 = xor i64 %6, %add.i.2
  %or.i25.i.2 = or i64 %xor.i23.i.2, %xor1.i24.i.2
  %xor2.i26.i.2 = xor i64 %or.i25.i.2, %add3.i.2
  %shr.i30.i.2 = or i64 %xor2.i26.i.2, %xor2.i.i.2
  %or29.i.2 = lshr i64 %shr.i30.i.2, 63
  %arrayidx.i.3 = getelementptr inbounds i64, i64* %a, i64 3
  %8 = load i64, i64* %arrayidx.i.3, align 8, !tbaa !3
  %add.i.3 = add i64 %8, %or29.i.2
  %arrayidx2.i.3 = getelementptr inbounds i64, i64* %b, i64 3
  %9 = load i64, i64* %arrayidx2.i.3, align 8, !tbaa !3
  %add3.i.3 = add i64 %9, %add.i.3
  %arrayidx5.i.3 = getelementptr inbounds i64, i64* %c, i64 3
  store i64 %add3.i.3, i64* %arrayidx5.i.3, align 8, !tbaa !3
  %10 = xor i64 %add.i.3, -9223372036854775808
  %xor2.i.i.3 = and i64 %10, %8
  %xor.i23.i.3 = xor i64 %add3.i.3, %add.i.3
  %xor1.i24.i.3 = xor i64 %9, %add.i.3
  %or.i25.i.3 = or i64 %xor.i23.i.3, %xor1.i24.i.3
  %xor2.i26.i.3 = xor i64 %or.i25.i.3, %add3.i.3
  %shr.i30.i.3 = or i64 %xor2.i26.i.3, %xor2.i.i.3
  %or29.i.3 = lshr i64 %shr.i30.i.3, 63
  %arrayidx.i.4 = getelementptr inbounds i64, i64* %a, i64 4
  %11 = load i64, i64* %arrayidx.i.4, align 8, !tbaa !3
  %add.i.4 = add i64 %11, %or29.i.3
  %arrayidx2.i.4 = getelementptr inbounds i64, i64* %b, i64 4
  %12 = load i64, i64* %arrayidx2.i.4, align 8, !tbaa !3
  %add3.i.4 = add i64 %12, %add.i.4
  %arrayidx5.i.4 = getelementptr inbounds i64, i64* %c, i64 4
  store i64 %add3.i.4, i64* %arrayidx5.i.4, align 8, !tbaa !3
  %13 = xor i64 %add.i.4, -9223372036854775808
  %xor2.i.i.4 = and i64 %13, %11
  %xor.i23.i.4 = xor i64 %add3.i.4, %add.i.4
  %xor1.i24.i.4 = xor i64 %12, %add.i.4
  %or.i25.i.4 = or i64 %xor.i23.i.4, %xor1.i24.i.4
  %xor2.i26.i.4 = xor i64 %or.i25.i.4, %add3.i.4
  %shr.i30.i.4 = or i64 %xor2.i26.i.4, %xor2.i.i.4
  %or29.i.4 = lshr i64 %shr.i30.i.4, 63
  %arrayidx.i.5 = getelementptr inbounds i64, i64* %a, i64 5
  %14 = load i64, i64* %arrayidx.i.5, align 8, !tbaa !3
  %add.i.5 = add i64 %14, %or29.i.4
  %arrayidx2.i.5 = getelementptr inbounds i64, i64* %b, i64 5
  %15 = load i64, i64* %arrayidx2.i.5, align 8, !tbaa !3
  %add3.i.5 = add i64 %15, %add.i.5
  %arrayidx5.i.5 = getelementptr inbounds i64, i64* %c, i64 5
  store i64 %add3.i.5, i64* %arrayidx5.i.5, align 8, !tbaa !3
  %16 = xor i64 %add.i.5, -9223372036854775808
  %xor2.i.i.5 = and i64 %16, %14
  %xor.i23.i.5 = xor i64 %add3.i.5, %add.i.5
  %xor1.i24.i.5 = xor i64 %15, %add.i.5
  %or.i25.i.5 = or i64 %xor.i23.i.5, %xor1.i24.i.5
  %xor2.i26.i.5 = xor i64 %or.i25.i.5, %add3.i.5
  %shr.i30.i.5 = or i64 %xor2.i26.i.5, %xor2.i.i.5
  %or29.i.5 = lshr i64 %shr.i30.i.5, 63
  %arrayidx.i.6 = getelementptr inbounds i64, i64* %a, i64 6
  %17 = load i64, i64* %arrayidx.i.6, align 8, !tbaa !3
  %add.i.6 = add i64 %17, %or29.i.5
  %arrayidx2.i.6 = getelementptr inbounds i64, i64* %b, i64 6
  %18 = load i64, i64* %arrayidx2.i.6, align 8, !tbaa !3
  %add3.i.6 = add i64 %18, %add.i.6
  %arrayidx5.i.6 = getelementptr inbounds i64, i64* %c, i64 6
  store i64 %add3.i.6, i64* %arrayidx5.i.6, align 8, !tbaa !3
  %19 = xor i64 %add.i.6, -9223372036854775808
  %xor2.i.i.6 = and i64 %19, %17
  %xor.i23.i.6 = xor i64 %add3.i.6, %add.i.6
  %xor1.i24.i.6 = xor i64 %18, %add.i.6
  %or.i25.i.6 = or i64 %xor.i23.i.6, %xor1.i24.i.6
  %xor2.i26.i.6 = xor i64 %or.i25.i.6, %add3.i.6
  %shr.i30.i.6 = or i64 %xor2.i26.i.6, %xor2.i.i.6
  %or29.i.6 = lshr i64 %shr.i30.i.6, 63
  %arrayidx.i.7 = getelementptr inbounds i64, i64* %a, i64 7
  %20 = load i64, i64* %arrayidx.i.7, align 8, !tbaa !3
  %add.i.7 = add i64 %20, %or29.i.6
  %arrayidx2.i.7 = getelementptr inbounds i64, i64* %b, i64 7
  %21 = load i64, i64* %arrayidx2.i.7, align 8, !tbaa !3
  %add3.i.7 = add i64 %21, %add.i.7
  %arrayidx5.i.7 = getelementptr inbounds i64, i64* %c, i64 7
  store i64 %add3.i.7, i64* %arrayidx5.i.7, align 8, !tbaa !3
  %22 = xor i64 %add.i.7, -9223372036854775808
  %xor2.i.i.7 = and i64 %22, %20
  %xor.i23.i.7 = xor i64 %add3.i.7, %add.i.7
  %xor1.i24.i.7 = xor i64 %21, %add.i.7
  %or.i25.i.7 = or i64 %xor.i23.i.7, %xor1.i24.i.7
  %xor2.i26.i.7 = xor i64 %or.i25.i.7, %add3.i.7
  %shr.i30.i.7 = or i64 %xor2.i26.i.7, %xor2.i.i.7
  %or29.i.7 = lshr i64 %shr.i30.i.7, 63
  %arrayidx.i.8 = getelementptr inbounds i64, i64* %a, i64 8
  %23 = load i64, i64* %arrayidx.i.8, align 8, !tbaa !3
  %add.i.8 = add i64 %23, %or29.i.7
  %arrayidx2.i.8 = getelementptr inbounds i64, i64* %b, i64 8
  %24 = load i64, i64* %arrayidx2.i.8, align 8, !tbaa !3
  %add3.i.8 = add i64 %24, %add.i.8
  %arrayidx5.i.8 = getelementptr inbounds i64, i64* %c, i64 8
  store i64 %add3.i.8, i64* %arrayidx5.i.8, align 8, !tbaa !3
  %25 = xor i64 %add.i.8, -9223372036854775808
  %xor2.i.i.8 = and i64 %25, %23
  %xor.i23.i.8 = xor i64 %add3.i.8, %add.i.8
  %xor1.i24.i.8 = xor i64 %24, %add.i.8
  %or.i25.i.8 = or i64 %xor.i23.i.8, %xor1.i24.i.8
  %xor2.i26.i.8 = xor i64 %or.i25.i.8, %add3.i.8
  %shr.i30.i.8 = or i64 %xor2.i26.i.8, %xor2.i.i.8
  %or29.i.8 = lshr i64 %shr.i30.i.8, 63
  %arrayidx.i.9 = getelementptr inbounds i64, i64* %a, i64 9
  %26 = load i64, i64* %arrayidx.i.9, align 8, !tbaa !3
  %add.i.9 = add i64 %26, %or29.i.8
  %arrayidx2.i.9 = getelementptr inbounds i64, i64* %b, i64 9
  %27 = load i64, i64* %arrayidx2.i.9, align 8, !tbaa !3
  %add3.i.9 = add i64 %27, %add.i.9
  %arrayidx5.i.9 = getelementptr inbounds i64, i64* %c, i64 9
  store i64 %add3.i.9, i64* %arrayidx5.i.9, align 8, !tbaa !3
  %28 = xor i64 %add.i.9, -9223372036854775808
  %xor2.i.i.9 = and i64 %28, %26
  %xor.i23.i.9 = xor i64 %add3.i.9, %add.i.9
  %xor1.i24.i.9 = xor i64 %27, %add.i.9
  %or.i25.i.9 = or i64 %xor.i23.i.9, %xor1.i24.i.9
  %xor2.i26.i.9 = xor i64 %or.i25.i.9, %add3.i.9
  %shr.i30.i.9 = or i64 %xor2.i26.i.9, %xor2.i.i.9
  %or29.i.9 = lshr i64 %shr.i30.i.9, 63
  %arrayidx.i.10 = getelementptr inbounds i64, i64* %a, i64 10
  %29 = load i64, i64* %arrayidx.i.10, align 8, !tbaa !3
  %add.i.10 = add i64 %29, %or29.i.9
  %arrayidx2.i.10 = getelementptr inbounds i64, i64* %b, i64 10
  %30 = load i64, i64* %arrayidx2.i.10, align 8, !tbaa !3
  %add3.i.10 = add i64 %30, %add.i.10
  %arrayidx5.i.10 = getelementptr inbounds i64, i64* %c, i64 10
  store i64 %add3.i.10, i64* %arrayidx5.i.10, align 8, !tbaa !3
  %31 = xor i64 %add.i.10, -9223372036854775808
  %xor2.i.i.10 = and i64 %31, %29
  %xor.i23.i.10 = xor i64 %add3.i.10, %add.i.10
  %xor1.i24.i.10 = xor i64 %30, %add.i.10
  %or.i25.i.10 = or i64 %xor.i23.i.10, %xor1.i24.i.10
  %xor2.i26.i.10 = xor i64 %or.i25.i.10, %add3.i.10
  %shr.i30.i.10 = or i64 %xor2.i26.i.10, %xor2.i.i.10
  %or29.i.10 = lshr i64 %shr.i30.i.10, 63
  %arrayidx.i.11 = getelementptr inbounds i64, i64* %a, i64 11
  %32 = load i64, i64* %arrayidx.i.11, align 8, !tbaa !3
  %add.i.11 = add i64 %32, %or29.i.10
  %arrayidx2.i.11 = getelementptr inbounds i64, i64* %b, i64 11
  %33 = load i64, i64* %arrayidx2.i.11, align 8, !tbaa !3
  %add3.i.11 = add i64 %33, %add.i.11
  %arrayidx5.i.11 = getelementptr inbounds i64, i64* %c, i64 11
  store i64 %add3.i.11, i64* %arrayidx5.i.11, align 8, !tbaa !3
  ret void
}

declare void @mp_sub751_p4(i64*, i64*, i64*) local_unnamed_addr #5

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define i32 @mp_sub(i64* nocapture readonly %a, i64* nocapture readonly %b, i64* nocapture %c, i32 %nwords) local_unnamed_addr #3 {
entry:
  %cmp27 = icmp eq i32 %nwords, 0
  br i1 %cmp27, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %nwords to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %0 = icmp eq i32 %nwords, 1
  br i1 %0, label %for.end.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = sub nsw i64 %wide.trip.count, %xtraiter
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next.1, %for.body ]
  %borrow.028 = phi i32 [ 0, %for.body.preheader.new ], [ %or.1, %for.body ]
  %niter = phi i64 [ %unroll_iter, %for.body.preheader.new ], [ %niter.nsub.1, %for.body ]
  %arrayidx = getelementptr inbounds i64, i64* %a, i64 %indvars.iv
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !3
  %arrayidx2 = getelementptr inbounds i64, i64* %b, i64 %indvars.iv
  %2 = load i64, i64* %arrayidx2, align 8, !tbaa !3
  %sub = sub i64 %1, %2
  %xor.i = xor i64 %2, %1
  %xor1.i = xor i64 %sub, %2
  %or.i = or i64 %xor1.i, %xor.i
  %xor2.i = xor i64 %or.i, %1
  %shr.i = lshr i64 %xor2.i, 63
  %conv.i = trunc i64 %shr.i to i32
  %sub.i.i = sub i64 0, %sub
  %or.i.i = or i64 %sub, %sub.i.i
  %shr.i.i = lshr i64 %or.i.i, 63
  %conv.i.i = trunc i64 %shr.i.i to i32
  %xor.i26 = xor i32 %conv.i.i, 1
  %and = and i32 %xor.i26, %borrow.028
  %or = or i32 %and, %conv.i
  %conv = zext i32 %borrow.028 to i64
  %sub8 = sub i64 %sub, %conv
  %arrayidx10 = getelementptr inbounds i64, i64* %c, i64 %indvars.iv
  store i64 %sub8, i64* %arrayidx10, align 8, !tbaa !3
  %indvars.iv.next = or i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds i64, i64* %a, i64 %indvars.iv.next
  %3 = load i64, i64* %arrayidx.1, align 8, !tbaa !3
  %arrayidx2.1 = getelementptr inbounds i64, i64* %b, i64 %indvars.iv.next
  %4 = load i64, i64* %arrayidx2.1, align 8, !tbaa !3
  %sub.1 = sub i64 %3, %4
  %xor.i.1 = xor i64 %4, %3
  %xor1.i.1 = xor i64 %sub.1, %4
  %or.i.1 = or i64 %xor1.i.1, %xor.i.1
  %xor2.i.1 = xor i64 %or.i.1, %3
  %shr.i.1 = lshr i64 %xor2.i.1, 63
  %conv.i.1 = trunc i64 %shr.i.1 to i32
  %sub.i.i.1 = sub i64 0, %sub.1
  %or.i.i.1 = or i64 %sub.1, %sub.i.i.1
  %shr.i.i.1 = lshr i64 %or.i.i.1, 63
  %conv.i.i.1 = trunc i64 %shr.i.i.1 to i32
  %xor.i26.1 = xor i32 %conv.i.i.1, 1
  %and.1 = and i32 %xor.i26.1, %or
  %or.1 = or i32 %and.1, %conv.i.1
  %conv.1 = zext i32 %or to i64
  %sub8.1 = sub i64 %sub.1, %conv.1
  %arrayidx10.1 = getelementptr inbounds i64, i64* %c, i64 %indvars.iv.next
  store i64 %sub8.1, i64* %arrayidx10.1, align 8, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.preheader
  %or.lcssa.ph = phi i32 [ undef, %for.body.preheader ], [ %or.1, %for.body ]
  %indvars.iv.unr = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next.1, %for.body ]
  %borrow.028.unr = phi i32 [ 0, %for.body.preheader ], [ %or.1, %for.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa
  %arrayidx.epil = getelementptr inbounds i64, i64* %a, i64 %indvars.iv.unr
  %5 = load i64, i64* %arrayidx.epil, align 8, !tbaa !3
  %arrayidx2.epil = getelementptr inbounds i64, i64* %b, i64 %indvars.iv.unr
  %6 = load i64, i64* %arrayidx2.epil, align 8, !tbaa !3
  %sub.epil = sub i64 %5, %6
  %conv.epil = zext i32 %borrow.028.unr to i64
  %sub8.epil = sub i64 %sub.epil, %conv.epil
  %arrayidx10.epil = getelementptr inbounds i64, i64* %c, i64 %indvars.iv.unr
  store i64 %sub8.epil, i64* %arrayidx10.epil, align 8, !tbaa !3
  %sub.i.i.epil = sub i64 0, %sub.epil
  %or.i.i.epil = or i64 %sub.epil, %sub.i.i.epil
  %shr.i.i.epil = lshr i64 %or.i.i.epil, 63
  %conv.i.i.epil = trunc i64 %shr.i.i.epil to i32
  %xor.i26.epil = xor i32 %conv.i.i.epil, 1
  %and.epil = and i32 %xor.i26.epil, %borrow.028.unr
  %xor1.i.epil = xor i64 %sub.epil, %6
  %xor.i.epil = xor i64 %6, %5
  %or.i.epil = or i64 %xor1.i.epil, %xor.i.epil
  %xor2.i.epil = xor i64 %or.i.epil, %5
  %shr.i.epil = lshr i64 %xor2.i.epil, 63
  %conv.i.epil = trunc i64 %shr.i.epil to i32
  %or.epil = or i32 %and.epil, %conv.i.epil
  br label %for.end

for.end:                                          ; preds = %for.body.epil, %for.end.loopexit.unr-lcssa, %entry
  %borrow.0.lcssa = phi i32 [ 0, %entry ], [ %or.lcssa.ph, %for.end.loopexit.unr-lcssa ], [ %or.epil, %for.body.epil ]
  ret i32 %borrow.0.lcssa
}

; Function Attrs: nounwind ssp uwtable
define void @fp2mul751_mont([12 x i64]* %a, [12 x i64]* %b, [12 x i64]* %c) local_unnamed_addr #4 {
entry:
  %t1.i = alloca [12 x i64], align 16
  %t1 = alloca [12 x i64], align 16
  %t2 = alloca [12 x i64], align 16
  %tt1 = alloca [24 x i64], align 16
  %tt2 = alloca [24 x i64], align 16
  %tt3 = alloca [24 x i64], align 16
  %0 = bitcast [12 x i64]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %0) #10
  %1 = bitcast [12 x i64]* %t2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %1) #10
  %2 = bitcast [24 x i64]* %tt1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  %3 = bitcast [24 x i64]* %tt2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %3) #10
  %4 = bitcast [24 x i64]* %tt3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %4) #10
  %arraydecay = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 1, i64 0
  %arraydecay3 = getelementptr inbounds [12 x i64], [12 x i64]* %t1, i64 0, i64 0
  call fastcc void @mp_addfast(i64* %arraydecay, i64* nonnull %arraydecay2, i64* nonnull %arraydecay3)
  %arraydecay5 = getelementptr inbounds [12 x i64], [12 x i64]* %b, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [12 x i64], [12 x i64]* %b, i64 1, i64 0
  %arraydecay8 = getelementptr inbounds [12 x i64], [12 x i64]* %t2, i64 0, i64 0
  call fastcc void @mp_addfast(i64* %arraydecay5, i64* nonnull %arraydecay7, i64* nonnull %arraydecay8)
  %arraydecay13 = getelementptr inbounds [24 x i64], [24 x i64]* %tt1, i64 0, i64 0
  call void @mp_mul(i64* %arraydecay, i64* %arraydecay5, i64* nonnull %arraydecay13, i32 12) #10
  %arraydecay18 = getelementptr inbounds [24 x i64], [24 x i64]* %tt2, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay2, i64* nonnull %arraydecay7, i64* nonnull %arraydecay18, i32 12) #10
  %arraydecay21 = getelementptr inbounds [24 x i64], [24 x i64]* %tt3, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay3, i64* nonnull %arraydecay8, i64* nonnull %arraydecay21, i32 12) #10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i, %entry
  %indvars.iv.i.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i.i.1, %for.body.i.i ]
  %borrow.028.i.i = phi i32 [ 0, %entry ], [ %or.i.i.1, %for.body.i.i ]
  %arrayidx.i.i = getelementptr inbounds [24 x i64], [24 x i64]* %tt3, i64 0, i64 %indvars.iv.i.i
  %5 = load i64, i64* %arrayidx.i.i, align 16, !tbaa !3
  %arrayidx2.i.i = getelementptr inbounds [24 x i64], [24 x i64]* %tt1, i64 0, i64 %indvars.iv.i.i
  %6 = load i64, i64* %arrayidx2.i.i, align 16, !tbaa !3
  %sub.i.i = sub i64 %5, %6
  %xor.i.i.i = xor i64 %6, %5
  %xor1.i.i.i = xor i64 %sub.i.i, %6
  %or.i.i.i = or i64 %xor1.i.i.i, %xor.i.i.i
  %xor2.i.i.i = xor i64 %or.i.i.i, %5
  %shr.i.i.i = lshr i64 %xor2.i.i.i, 63
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  %sub.i.i.i.i = sub i64 0, %sub.i.i
  %or.i.i.i.i = or i64 %sub.i.i, %sub.i.i.i.i
  %shr.i.i.i.i = lshr i64 %or.i.i.i.i, 63
  %conv.i.i.i.i = trunc i64 %shr.i.i.i.i to i32
  %xor.i26.i.i = xor i32 %conv.i.i.i.i, 1
  %and.i.i = and i32 %xor.i26.i.i, %borrow.028.i.i
  %or.i.i = or i32 %and.i.i, %conv.i.i.i
  %conv.i.i = zext i32 %borrow.028.i.i to i64
  %sub8.i.i = sub i64 %sub.i.i, %conv.i.i
  store i64 %sub8.i.i, i64* %arrayidx.i.i, align 16, !tbaa !3
  %indvars.iv.next.i.i = or i64 %indvars.iv.i.i, 1
  %arrayidx.i.i.1 = getelementptr inbounds [24 x i64], [24 x i64]* %tt3, i64 0, i64 %indvars.iv.next.i.i
  %7 = load i64, i64* %arrayidx.i.i.1, align 8, !tbaa !3
  %arrayidx2.i.i.1 = getelementptr inbounds [24 x i64], [24 x i64]* %tt1, i64 0, i64 %indvars.iv.next.i.i
  %8 = load i64, i64* %arrayidx2.i.i.1, align 8, !tbaa !3
  %sub.i.i.1 = sub i64 %7, %8
  %xor.i.i.i.1 = xor i64 %8, %7
  %xor1.i.i.i.1 = xor i64 %sub.i.i.1, %8
  %or.i.i.i.1 = or i64 %xor1.i.i.i.1, %xor.i.i.i.1
  %xor2.i.i.i.1 = xor i64 %or.i.i.i.1, %7
  %shr.i.i.i.1 = lshr i64 %xor2.i.i.i.1, 63
  %conv.i.i.i.1 = trunc i64 %shr.i.i.i.1 to i32
  %sub.i.i.i.i.1 = sub i64 0, %sub.i.i.1
  %or.i.i.i.i.1 = or i64 %sub.i.i.1, %sub.i.i.i.i.1
  %shr.i.i.i.i.1 = lshr i64 %or.i.i.i.i.1, 63
  %conv.i.i.i.i.1 = trunc i64 %shr.i.i.i.i.1 to i32
  %xor.i26.i.i.1 = xor i32 %conv.i.i.i.i.1, 1
  %and.i.i.1 = and i32 %xor.i26.i.i.1, %or.i.i
  %or.i.i.1 = or i32 %and.i.i.1, %conv.i.i.i.1
  %conv.i.i.1 = zext i32 %or.i.i to i64
  %sub8.i.i.1 = sub i64 %sub.i.i.1, %conv.i.i.1
  store i64 %sub8.i.i.1, i64* %arrayidx.i.i.1, align 8, !tbaa !3
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2
  %exitcond.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 24
  br i1 %exitcond.i.i.1, label %for.body.i28.i, label %for.body.i.i

for.body.i28.i:                                   ; preds = %for.body.i.i, %for.body.i28.i
  %indvars.iv.i5.i = phi i64 [ %indvars.iv.next.i26.i.1, %for.body.i28.i ], [ 0, %for.body.i.i ]
  %borrow.028.i6.i = phi i32 [ %or.i22.i.1, %for.body.i28.i ], [ 0, %for.body.i.i ]
  %arrayidx.i7.i = getelementptr inbounds [24 x i64], [24 x i64]* %tt3, i64 0, i64 %indvars.iv.i5.i
  %9 = load i64, i64* %arrayidx.i7.i, align 16, !tbaa !3
  %arrayidx2.i8.i = getelementptr inbounds [24 x i64], [24 x i64]* %tt2, i64 0, i64 %indvars.iv.i5.i
  %10 = load i64, i64* %arrayidx2.i8.i, align 16, !tbaa !3
  %sub.i9.i = sub i64 %9, %10
  %xor.i.i10.i = xor i64 %10, %9
  %xor1.i.i11.i = xor i64 %sub.i9.i, %10
  %or.i.i12.i = or i64 %xor1.i.i11.i, %xor.i.i10.i
  %xor2.i.i13.i = xor i64 %or.i.i12.i, %9
  %shr.i.i14.i = lshr i64 %xor2.i.i13.i, 63
  %conv.i.i15.i = trunc i64 %shr.i.i14.i to i32
  %sub.i.i.i16.i = sub i64 0, %sub.i9.i
  %or.i.i.i17.i = or i64 %sub.i9.i, %sub.i.i.i16.i
  %shr.i.i.i18.i = lshr i64 %or.i.i.i17.i, 63
  %conv.i.i.i19.i = trunc i64 %shr.i.i.i18.i to i32
  %xor.i26.i20.i = xor i32 %conv.i.i.i19.i, 1
  %and.i21.i = and i32 %xor.i26.i20.i, %borrow.028.i6.i
  %or.i22.i = or i32 %and.i21.i, %conv.i.i15.i
  %conv.i23.i = zext i32 %borrow.028.i6.i to i64
  %sub8.i24.i = sub i64 %sub.i9.i, %conv.i23.i
  store i64 %sub8.i24.i, i64* %arrayidx.i7.i, align 16, !tbaa !3
  %indvars.iv.next.i26.i = or i64 %indvars.iv.i5.i, 1
  %arrayidx.i7.i.1 = getelementptr inbounds [24 x i64], [24 x i64]* %tt3, i64 0, i64 %indvars.iv.next.i26.i
  %11 = load i64, i64* %arrayidx.i7.i.1, align 8, !tbaa !3
  %arrayidx2.i8.i.1 = getelementptr inbounds [24 x i64], [24 x i64]* %tt2, i64 0, i64 %indvars.iv.next.i26.i
  %12 = load i64, i64* %arrayidx2.i8.i.1, align 8, !tbaa !3
  %sub.i9.i.1 = sub i64 %11, %12
  %xor.i.i10.i.1 = xor i64 %12, %11
  %xor1.i.i11.i.1 = xor i64 %sub.i9.i.1, %12
  %or.i.i12.i.1 = or i64 %xor1.i.i11.i.1, %xor.i.i10.i.1
  %xor2.i.i13.i.1 = xor i64 %or.i.i12.i.1, %11
  %shr.i.i14.i.1 = lshr i64 %xor2.i.i13.i.1, 63
  %conv.i.i15.i.1 = trunc i64 %shr.i.i14.i.1 to i32
  %sub.i.i.i16.i.1 = sub i64 0, %sub.i9.i.1
  %or.i.i.i17.i.1 = or i64 %sub.i9.i.1, %sub.i.i.i16.i.1
  %shr.i.i.i18.i.1 = lshr i64 %or.i.i.i17.i.1, 63
  %conv.i.i.i19.i.1 = trunc i64 %shr.i.i.i18.i.1 to i32
  %xor.i26.i20.i.1 = xor i32 %conv.i.i.i19.i.1, 1
  %and.i21.i.1 = and i32 %xor.i26.i20.i.1, %or.i22.i
  %or.i22.i.1 = or i32 %and.i21.i.1, %conv.i.i15.i.1
  %conv.i23.i.1 = zext i32 %or.i22.i to i64
  %sub8.i24.i.1 = sub i64 %sub.i9.i.1, %conv.i23.i.1
  store i64 %sub8.i24.i.1, i64* %arrayidx.i7.i.1, align 8, !tbaa !3
  %indvars.iv.next.i26.i.1 = add nuw nsw i64 %indvars.iv.i5.i, 2
  %exitcond.i27.i.1 = icmp eq i64 %indvars.iv.next.i26.i.1, 24
  br i1 %exitcond.i27.i.1, label %mp_dblsubfast.exit, label %for.body.i28.i

mp_dblsubfast.exit:                               ; preds = %for.body.i28.i
  %13 = bitcast [12 x i64]* %t1.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %13) #10
  br label %for.body.i.i63

for.body.i.i63:                                   ; preds = %for.body.i.i63, %mp_dblsubfast.exit
  %indvars.iv.i.i41 = phi i64 [ 0, %mp_dblsubfast.exit ], [ %indvars.iv.next.i.i61.1, %for.body.i.i63 ]
  %borrow.028.i.i42 = phi i32 [ 0, %mp_dblsubfast.exit ], [ %or.i.i58.1, %for.body.i.i63 ]
  %arrayidx.i.i43 = getelementptr inbounds [24 x i64], [24 x i64]* %tt1, i64 0, i64 %indvars.iv.i.i41
  %14 = load i64, i64* %arrayidx.i.i43, align 16, !tbaa !3
  %arrayidx2.i.i44 = getelementptr inbounds [24 x i64], [24 x i64]* %tt2, i64 0, i64 %indvars.iv.i.i41
  %15 = load i64, i64* %arrayidx2.i.i44, align 16, !tbaa !3
  %sub.i.i45 = sub i64 %14, %15
  %xor.i.i.i46 = xor i64 %15, %14
  %xor1.i.i.i47 = xor i64 %sub.i.i45, %15
  %or.i.i.i48 = or i64 %xor1.i.i.i47, %xor.i.i.i46
  %xor2.i.i.i49 = xor i64 %or.i.i.i48, %14
  %shr.i.i.i50 = lshr i64 %xor2.i.i.i49, 63
  %conv.i.i.i51 = trunc i64 %shr.i.i.i50 to i32
  %sub.i.i.i.i52 = sub i64 0, %sub.i.i45
  %or.i.i.i.i53 = or i64 %sub.i.i45, %sub.i.i.i.i52
  %shr.i.i.i.i54 = lshr i64 %or.i.i.i.i53, 63
  %conv.i.i.i.i55 = trunc i64 %shr.i.i.i.i54 to i32
  %xor.i26.i.i56 = xor i32 %conv.i.i.i.i55, 1
  %and.i.i57 = and i32 %xor.i26.i.i56, %borrow.028.i.i42
  %or.i.i58 = or i32 %and.i.i57, %conv.i.i.i51
  %conv.i.i59 = zext i32 %borrow.028.i.i42 to i64
  %sub8.i.i60 = sub i64 %sub.i.i45, %conv.i.i59
  store i64 %sub8.i.i60, i64* %arrayidx.i.i43, align 16, !tbaa !3
  %indvars.iv.next.i.i61 = or i64 %indvars.iv.i.i41, 1
  %arrayidx.i.i43.1 = getelementptr inbounds [24 x i64], [24 x i64]* %tt1, i64 0, i64 %indvars.iv.next.i.i61
  %16 = load i64, i64* %arrayidx.i.i43.1, align 8, !tbaa !3
  %arrayidx2.i.i44.1 = getelementptr inbounds [24 x i64], [24 x i64]* %tt2, i64 0, i64 %indvars.iv.next.i.i61
  %17 = load i64, i64* %arrayidx2.i.i44.1, align 8, !tbaa !3
  %sub.i.i45.1 = sub i64 %16, %17
  %xor.i.i.i46.1 = xor i64 %17, %16
  %xor1.i.i.i47.1 = xor i64 %sub.i.i45.1, %17
  %or.i.i.i48.1 = or i64 %xor1.i.i.i47.1, %xor.i.i.i46.1
  %xor2.i.i.i49.1 = xor i64 %or.i.i.i48.1, %16
  %shr.i.i.i50.1 = lshr i64 %xor2.i.i.i49.1, 63
  %conv.i.i.i51.1 = trunc i64 %shr.i.i.i50.1 to i32
  %sub.i.i.i.i52.1 = sub i64 0, %sub.i.i45.1
  %or.i.i.i.i53.1 = or i64 %sub.i.i45.1, %sub.i.i.i.i52.1
  %shr.i.i.i.i54.1 = lshr i64 %or.i.i.i.i53.1, 63
  %conv.i.i.i.i55.1 = trunc i64 %shr.i.i.i.i54.1 to i32
  %xor.i26.i.i56.1 = xor i32 %conv.i.i.i.i55.1, 1
  %and.i.i57.1 = and i32 %xor.i26.i.i56.1, %or.i.i58
  %or.i.i58.1 = or i32 %and.i.i57.1, %conv.i.i.i51.1
  %conv.i.i59.1 = zext i32 %or.i.i58 to i64
  %sub8.i.i60.1 = sub i64 %sub.i.i45.1, %conv.i.i59.1
  store i64 %sub8.i.i60.1, i64* %arrayidx.i.i43.1, align 8, !tbaa !3
  %indvars.iv.next.i.i61.1 = add nuw nsw i64 %indvars.iv.i.i41, 2
  %exitcond.i.i62.1 = icmp eq i64 %indvars.iv.next.i.i61.1, 24
  br i1 %exitcond.i.i62.1, label %mp_subaddfast.exit, label %for.body.i.i63

mp_subaddfast.exit:                               ; preds = %for.body.i.i63
  %conv.i = zext i32 %or.i.i58.1 to i64
  %sub.i = sub nsw i64 0, %conv.i
  %arrayidx3.i = getelementptr inbounds [12 x i64], [12 x i64]* %t1.i, i64 0, i64 0
  %18 = insertelement <4 x i64> undef, i64 %sub.i, i32 0
  %19 = shufflevector <4 x i64> %18, <4 x i64> undef, <4 x i32> zeroinitializer
  %20 = bitcast [12 x i64]* %t1.i to <4 x i64>*
  store <4 x i64> %19, <4 x i64>* %20, align 16, !tbaa !3
  %arrayidx3.4.i = getelementptr inbounds [12 x i64], [12 x i64]* %t1.i, i64 0, i64 4
  store i64 %sub.i, i64* %arrayidx3.4.i, align 16, !tbaa !3
  %arrayidx3.5.i = getelementptr inbounds [12 x i64], [12 x i64]* %t1.i, i64 0, i64 5
  %21 = and <4 x i64> %19, <i64 -1247497096781627393, i64 -2023076633380357976, i64 -2696078265604912010, i64 598583372241692790>
  %22 = bitcast i64* %arrayidx3.5.i to <4 x i64>*
  store <4 x i64> %21, <4 x i64>* %22, align 8, !tbaa !3
  %and.9.i = and i64 %sub.i, -8835300488607803576
  %arrayidx3.9.i = getelementptr inbounds [12 x i64], [12 x i64]* %t1.i, i64 0, i64 9
  store i64 %and.9.i, i64* %arrayidx3.9.i, align 8, !tbaa !3
  %and.10.i = and i64 %sub.i, 1014031881231588454
  %arrayidx3.10.i = getelementptr inbounds [12 x i64], [12 x i64]* %t1.i, i64 0, i64 10
  store i64 %and.10.i, i64* %arrayidx3.10.i, align 16, !tbaa !3
  %and.11.i = and i64 %sub.i, 123032916064028
  %arrayidx3.11.i = getelementptr inbounds [12 x i64], [12 x i64]* %t1.i, i64 0, i64 11
  store i64 %and.11.i, i64* %arrayidx3.11.i, align 8, !tbaa !3
  %arrayidx4.i = getelementptr inbounds [24 x i64], [24 x i64]* %tt1, i64 0, i64 12
  call fastcc void @mp_addfast(i64* nonnull %arrayidx4.i, i64* nonnull %arrayidx3.i, i64* nonnull %arrayidx4.i) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %13) #10
  %arraydecay30 = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 1, i64 0
  call void @rdc_mont(i64* nonnull %arraydecay21, i64* nonnull %arraydecay30) #10
  %arraydecay33 = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 0, i64 0
  call void @rdc_mont(i64* nonnull %arraydecay13, i64* %arraydecay33) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @fp2inv751_mont([12 x i64]* %a) local_unnamed_addr #4 {
entry:
  %temp.i = alloca [24 x i64], align 16
  %t1 = alloca [2 x [12 x i64]], align 16
  %0 = bitcast [2 x [12 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %0) #10
  %arraydecay = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t1, i64 0, i64 0, i64 0
  %1 = bitcast [24 x i64]* %temp.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 192, i1 false) #10
  %arraydecay.i = getelementptr inbounds [24 x i64], [24 x i64]* %temp.i, i64 0, i64 0
  call void @mp_mul(i64* %arraydecay, i64* %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay2) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %1) #10
  %arraydecay4 = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 1, i64 0
  %arraydecay6 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t1, i64 0, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay4, i64* nonnull %arraydecay4, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay6) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %1) #10
  call void @fpadd751(i64* nonnull %arraydecay2, i64* nonnull %arraydecay6, i64* nonnull %arraydecay2) #10
  call void @fpinv751_mont(i64* nonnull %arraydecay2)
  call void @fpneg751(i64* nonnull %arraydecay4) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* %arraydecay, i64* nonnull %arraydecay2, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %1) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay4, i64* nonnull %arraydecay2, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay4) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @to_fp2mont([12 x i64]* %a, [12 x i64]* %mc) local_unnamed_addr #4 {
entry:
  %temp.i.i = alloca [24 x i64], align 16
  %arraydecay = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [12 x i64], [12 x i64]* %mc, i64 0, i64 0
  %0 = bitcast [24 x i64]* %temp.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 192, i1 false) #10
  %arraydecay.i.i = getelementptr inbounds [24 x i64], [24 x i64]* %temp.i.i, i64 0, i64 0
  call void @mp_mul(i64* %arraydecay, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* %arraydecay2) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %0) #10
  %arraydecay4 = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 1, i64 0
  %arraydecay6 = getelementptr inbounds [12 x i64], [12 x i64]* %mc, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay4, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay6) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @from_fp2mont([12 x i64]* %ma, [12 x i64]* %c) local_unnamed_addr #4 {
entry:
  %temp.i.i = alloca [24 x i64], align 16
  %one.i = alloca [12 x i64], align 16
  %arraydecay = getelementptr inbounds [12 x i64], [12 x i64]* %ma, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 0, i64 0
  %0 = bitcast [12 x i64]* %one.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 96, i1 false) #10
  %arrayidx.i = getelementptr inbounds [12 x i64], [12 x i64]* %one.i, i64 0, i64 0
  store i64 1, i64* %arrayidx.i, align 16, !tbaa !3
  %1 = bitcast [24 x i64]* %temp.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 192, i1 false) #10
  %arraydecay.i.i = getelementptr inbounds [24 x i64], [24 x i64]* %temp.i.i, i64 0, i64 0
  call void @mp_mul(i64* %arraydecay, i64* nonnull %arrayidx.i, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* %arraydecay2) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %1) #10
  call void @fpcorrection751(i64* %arraydecay2) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %0) #10
  %arraydecay4 = getelementptr inbounds [12 x i64], [12 x i64]* %ma, i64 1, i64 0
  %arraydecay6 = getelementptr inbounds [12 x i64], [12 x i64]* %c, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 96, i1 false) #10
  store i64 1, i64* %arrayidx.i, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay4, i64* nonnull %arrayidx.i, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay6) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %1) #10
  call void @fpcorrection751(i64* nonnull %arraydecay6) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %0) #10
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @mp_shiftleft(i64* nocapture %x, i32 %shift, i32 %nwords) local_unnamed_addr #0 {
entry:
  %cmp81 = icmp ugt i32 %shift, 64
  br i1 %cmp81, label %while.body.preheader, label %for.cond.preheader

while.body.preheader:                             ; preds = %entry
  %0 = add i32 %shift, -65
  %1 = lshr i32 %0, 6
  %2 = add nuw nsw i32 %1, 1
  %3 = and i32 %0, -64
  %4 = add i32 %shift, -64
  %5 = sub i32 %4, %3
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.body.preheader, %entry
  %shift.addr.0.lcssa = phi i32 [ %shift, %entry ], [ %5, %while.body.preheader ]
  %j.0.lcssa = phi i32 [ 0, %entry ], [ %2, %while.body.preheader ]
  %sub1 = sub i32 %nwords, %j.0.lcssa
  %cmp279 = icmp eq i32 %sub1, 0
  br i1 %cmp279, label %for.cond11.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count90 = zext i32 %sub1 to i64
  %min.iters.check = icmp ult i32 %sub1, 16
  br i1 %min.iters.check, label %for.body.preheader255, label %vector.scevcheck

for.body.preheader255:                            ; preds = %middle.block, %vector.memcheck, %vector.scevcheck, %for.body.preheader
  %indvars.iv88.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  %i.080.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %for.body.preheader ], [ %cast.crd, %middle.block ]
  %6 = xor i64 %indvars.iv88.ph, -1
  %7 = add nsw i64 %6, %wide.trip.count90
  %xtraiter261 = and i64 %wide.trip.count90, 3
  %lcmp.mod262 = icmp eq i64 %xtraiter261, 0
  br i1 %lcmp.mod262, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader255, %for.body.prol
  %indvars.iv88.prol = phi i64 [ %indvars.iv.next89.prol, %for.body.prol ], [ %indvars.iv88.ph, %for.body.preheader255 ]
  %i.080.prol = phi i32 [ %inc.prol, %for.body.prol ], [ %i.080.ph, %for.body.preheader255 ]
  %prol.iter263 = phi i64 [ %prol.iter263.sub, %for.body.prol ], [ %xtraiter261, %for.body.preheader255 ]
  %8 = xor i32 %i.080.prol, -1
  %sub4.prol = add i32 %8, %nwords
  %sub5.prol = sub i32 %sub4.prol, %j.0.lcssa
  %idxprom.prol = zext i32 %sub5.prol to i64
  %arrayidx.prol = getelementptr inbounds i64, i64* %x, i64 %idxprom.prol
  %9 = load i64, i64* %arrayidx.prol, align 8, !tbaa !3
  %idxprom8.prol = zext i32 %sub4.prol to i64
  %arrayidx9.prol = getelementptr inbounds i64, i64* %x, i64 %idxprom8.prol
  store i64 %9, i64* %arrayidx9.prol, align 8, !tbaa !3
  %indvars.iv.next89.prol = add nuw nsw i64 %indvars.iv88.prol, 1
  %inc.prol = add nuw i32 %i.080.prol, 1
  %prol.iter263.sub = add i64 %prol.iter263, -1
  %prol.iter263.cmp = icmp eq i64 %prol.iter263.sub, 0
  br i1 %prol.iter263.cmp, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !30

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader255
  %indvars.iv88.unr = phi i64 [ %indvars.iv88.ph, %for.body.preheader255 ], [ %indvars.iv.next89.prol, %for.body.prol ]
  %i.080.unr = phi i32 [ %i.080.ph, %for.body.preheader255 ], [ %inc.prol, %for.body.prol ]
  %10 = icmp ult i64 %7, 3
  br i1 %10, label %for.cond11.preheader, label %for.body

vector.scevcheck:                                 ; preds = %for.body.preheader
  %11 = add nsw i64 %wide.trip.count90, -1
  %12 = add i32 %nwords, -1
  %13 = trunc i64 %11 to i32
  %14 = icmp ult i32 %12, %13
  %15 = icmp ugt i64 %11, 4294967295
  %16 = or i1 %14, %15
  %17 = xor i32 %j.0.lcssa, -1
  %18 = add i32 %17, %nwords
  %19 = trunc i64 %11 to i32
  %20 = icmp ult i32 %18, %19
  %21 = icmp ugt i64 %11, 4294967295
  %22 = or i1 %20, %21
  %23 = or i1 %16, %22
  %24 = zext i32 %12 to i64
  %scevgep = getelementptr i64, i64* %x, i64 %24
  %scevgep96 = ptrtoint i64* %scevgep to i64
  %mul97 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %11, i64 8)
  %mul.result98 = extractvalue { i64, i1 } %mul97, 0
  %mul.overflow99 = extractvalue { i64, i1 } %mul97, 1
  %25 = icmp ugt i64 %mul.result98, %scevgep96
  %26 = or i1 %25, %mul.overflow99
  %27 = or i1 %23, %26
  %28 = zext i32 %18 to i64
  %scevgep100 = getelementptr i64, i64* %x, i64 %28
  %scevgep100101 = ptrtoint i64* %scevgep100 to i64
  %mul102 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %11, i64 8)
  %mul.result103 = extractvalue { i64, i1 } %mul102, 0
  %mul.overflow104 = extractvalue { i64, i1 } %mul102, 1
  %29 = icmp ugt i64 %mul.result103, %scevgep100101
  %30 = or i1 %29, %mul.overflow104
  %31 = or i1 %27, %30
  br i1 %31, label %for.body.preheader255, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %32 = add i32 %nwords, -1
  %33 = zext i32 %32 to i64
  %34 = add nuw nsw i64 %33, 1
  %35 = sub nsw i64 %34, %wide.trip.count90
  %scevgep105 = getelementptr i64, i64* %x, i64 %35
  %scevgep107 = getelementptr i64, i64* %x, i64 %34
  %36 = xor i32 %j.0.lcssa, -1
  %37 = add i32 %36, %nwords
  %38 = zext i32 %37 to i64
  %39 = add nuw nsw i64 %38, 1
  %40 = sub nsw i64 %39, %wide.trip.count90
  %scevgep109 = getelementptr i64, i64* %x, i64 %40
  %scevgep111 = getelementptr i64, i64* %x, i64 %39
  %bound0 = icmp ult i64* %scevgep105, %scevgep111
  %bound1 = icmp ult i64* %scevgep109, %scevgep107
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader255, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count90, 4294967280
  %cast.crd = trunc i64 %n.vec to i32
  %41 = add nsw i64 %n.vec, -16
  %42 = lshr exact i64 %41, 4
  %43 = add nuw nsw i64 %42, 1
  %xtraiter264 = and i64 %43, 3
  %44 = icmp ult i64 %41, 48
  br i1 %44, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter267 = sub nsw i64 %43, %xtraiter264
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter268 = phi i64 [ %unroll_iter267, %vector.ph.new ], [ %niter268.nsub.3, %vector.body ]
  %45 = trunc i64 %index to i32
  %46 = xor i32 %45, -1
  %47 = add i32 %46, %nwords
  %48 = sub i32 %47, %j.0.lcssa
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %x, i64 %49
  %51 = getelementptr inbounds i64, i64* %50, i64 -3
  %52 = bitcast i64* %51 to <4 x i64>*
  %wide.load = load <4 x i64>, <4 x i64>* %52, align 8, !tbaa !3, !alias.scope !31
  %53 = getelementptr inbounds i64, i64* %50, i64 -4
  %54 = getelementptr inbounds i64, i64* %53, i64 -3
  %55 = bitcast i64* %54 to <4 x i64>*
  %wide.load123 = load <4 x i64>, <4 x i64>* %55, align 8, !tbaa !3, !alias.scope !31
  %56 = getelementptr inbounds i64, i64* %50, i64 -8
  %57 = getelementptr inbounds i64, i64* %56, i64 -3
  %58 = bitcast i64* %57 to <4 x i64>*
  %wide.load125 = load <4 x i64>, <4 x i64>* %58, align 8, !tbaa !3, !alias.scope !31
  %59 = getelementptr inbounds i64, i64* %50, i64 -12
  %60 = getelementptr inbounds i64, i64* %59, i64 -3
  %61 = bitcast i64* %60 to <4 x i64>*
  %wide.load127 = load <4 x i64>, <4 x i64>* %61, align 8, !tbaa !3, !alias.scope !31
  %62 = zext i32 %47 to i64
  %63 = getelementptr inbounds i64, i64* %x, i64 %62
  %64 = getelementptr inbounds i64, i64* %63, i64 -3
  %65 = bitcast i64* %64 to <4 x i64>*
  store <4 x i64> %wide.load, <4 x i64>* %65, align 8, !tbaa !3, !alias.scope !34, !noalias !31
  %66 = getelementptr inbounds i64, i64* %63, i64 -4
  %67 = getelementptr inbounds i64, i64* %66, i64 -3
  %68 = bitcast i64* %67 to <4 x i64>*
  store <4 x i64> %wide.load123, <4 x i64>* %68, align 8, !tbaa !3, !alias.scope !34, !noalias !31
  %69 = getelementptr inbounds i64, i64* %63, i64 -8
  %70 = getelementptr inbounds i64, i64* %69, i64 -3
  %71 = bitcast i64* %70 to <4 x i64>*
  store <4 x i64> %wide.load125, <4 x i64>* %71, align 8, !tbaa !3, !alias.scope !34, !noalias !31
  %72 = getelementptr inbounds i64, i64* %63, i64 -12
  %73 = getelementptr inbounds i64, i64* %72, i64 -3
  %74 = bitcast i64* %73 to <4 x i64>*
  store <4 x i64> %wide.load127, <4 x i64>* %74, align 8, !tbaa !3, !alias.scope !34, !noalias !31
  %75 = trunc i64 %index to i32
  %76 = xor i32 %75, -17
  %77 = add i32 %76, %nwords
  %78 = sub i32 %77, %j.0.lcssa
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %x, i64 %79
  %81 = getelementptr inbounds i64, i64* %80, i64 -3
  %82 = bitcast i64* %81 to <4 x i64>*
  %wide.load.1 = load <4 x i64>, <4 x i64>* %82, align 8, !tbaa !3, !alias.scope !31
  %83 = getelementptr inbounds i64, i64* %80, i64 -4
  %84 = getelementptr inbounds i64, i64* %83, i64 -3
  %85 = bitcast i64* %84 to <4 x i64>*
  %wide.load123.1 = load <4 x i64>, <4 x i64>* %85, align 8, !tbaa !3, !alias.scope !31
  %86 = getelementptr inbounds i64, i64* %80, i64 -8
  %87 = getelementptr inbounds i64, i64* %86, i64 -3
  %88 = bitcast i64* %87 to <4 x i64>*
  %wide.load125.1 = load <4 x i64>, <4 x i64>* %88, align 8, !tbaa !3, !alias.scope !31
  %89 = getelementptr inbounds i64, i64* %80, i64 -12
  %90 = getelementptr inbounds i64, i64* %89, i64 -3
  %91 = bitcast i64* %90 to <4 x i64>*
  %wide.load127.1 = load <4 x i64>, <4 x i64>* %91, align 8, !tbaa !3, !alias.scope !31
  %92 = zext i32 %77 to i64
  %93 = getelementptr inbounds i64, i64* %x, i64 %92
  %94 = getelementptr inbounds i64, i64* %93, i64 -3
  %95 = bitcast i64* %94 to <4 x i64>*
  store <4 x i64> %wide.load.1, <4 x i64>* %95, align 8, !tbaa !3, !alias.scope !34, !noalias !31
  %96 = getelementptr inbounds i64, i64* %93, i64 -4
  %97 = getelementptr inbounds i64, i64* %96, i64 -3
  %98 = bitcast i64* %97 to <4 x i64>*
  store <4 x i64> %wide.load123.1, <4 x i64>* %98, align 8, !tbaa !3, !alias.scope !34, !noalias !31
  %99 = getelementptr inbounds i64, i64* %93, i64 -8
  %100 = getelementptr inbounds i64, i64* %99, i64 -3
  %101 = bitcast i64* %100 to <4 x i64>*
  store <4 x i64> %wide.load125.1, <4 x i64>* %101, align 8, !tbaa !3, !alias.scope !34, !noalias !31
  %102 = getelementptr inbounds i64, i64* %93, i64 -12
  %103 = getelementptr inbounds i64, i64* %102, i64 -3
  %104 = bitcast i64* %103 to <4 x i64>*
  store <4 x i64> %wide.load127.1, <4 x i64>* %104, align 8, !tbaa !3, !alias.scope !34, !noalias !31
  %105 = trunc i64 %index to i32
  %106 = xor i32 %105, -33
  %107 = add i32 %106, %nwords
  %108 = sub i32 %107, %j.0.lcssa
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %x, i64 %109
  %111 = getelementptr inbounds i64, i64* %110, i64 -3
  %112 = bitcast i64* %111 to <4 x i64>*
  %wide.load.2 = load <4 x i64>, <4 x i64>* %112, align 8, !tbaa !3, !alias.scope !31
  %113 = getelementptr inbounds i64, i64* %110, i64 -4
  %114 = getelementptr inbounds i64, i64* %113, i64 -3
  %115 = bitcast i64* %114 to <4 x i64>*
  %wide.load123.2 = load <4 x i64>, <4 x i64>* %115, align 8, !tbaa !3, !alias.scope !31
  %116 = getelementptr inbounds i64, i64* %110, i64 -8
  %117 = getelementptr inbounds i64, i64* %116, i64 -3
  %118 = bitcast i64* %117 to <4 x i64>*
  %wide.load125.2 = load <4 x i64>, <4 x i64>* %118, align 8, !tbaa !3, !alias.scope !31
  %119 = getelementptr inbounds i64, i64* %110, i64 -12
  %120 = getelementptr inbounds i64, i64* %119, i64 -3
  %121 = bitcast i64* %120 to <4 x i64>*
  %wide.load127.2 = load <4 x i64>, <4 x i64>* %121, align 8, !tbaa !3, !alias.scope !31
  %122 = zext i32 %107 to i64
  %123 = getelementptr inbounds i64, i64* %x, i64 %122
  %124 = getelementptr inbounds i64, i64* %123, i64 -3
  %125 = bitcast i64* %124 to <4 x i64>*
  store <4 x i64> %wide.load.2, <4 x i64>* %125, align 8, !tbaa !3, !alias.scope !34, !noalias !31
  %126 = getelementptr inbounds i64, i64* %123, i64 -4
  %127 = getelementptr inbounds i64, i64* %126, i64 -3
  %128 = bitcast i64* %127 to <4 x i64>*
  store <4 x i64> %wide.load123.2, <4 x i64>* %128, align 8, !tbaa !3, !alias.scope !34, !noalias !31
  %129 = getelementptr inbounds i64, i64* %123, i64 -8
  %130 = getelementptr inbounds i64, i64* %129, i64 -3
  %131 = bitcast i64* %130 to <4 x i64>*
  store <4 x i64> %wide.load125.2, <4 x i64>* %131, align 8, !tbaa !3, !alias.scope !34, !noalias !31
  %132 = getelementptr inbounds i64, i64* %123, i64 -12
  %133 = getelementptr inbounds i64, i64* %132, i64 -3
  %134 = bitcast i64* %133 to <4 x i64>*
  store <4 x i64> %wide.load127.2, <4 x i64>* %134, align 8, !tbaa !3, !alias.scope !34, !noalias !31
  %135 = trunc i64 %index to i32
  %136 = xor i32 %135, -49
  %137 = add i32 %136, %nwords
  %138 = sub i32 %137, %j.0.lcssa
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %x, i64 %139
  %141 = getelementptr inbounds i64, i64* %140, i64 -3
  %142 = bitcast i64* %141 to <4 x i64>*
  %wide.load.3 = load <4 x i64>, <4 x i64>* %142, align 8, !tbaa !3, !alias.scope !31
  %143 = getelementptr inbounds i64, i64* %140, i64 -4
  %144 = getelementptr inbounds i64, i64* %143, i64 -3
  %145 = bitcast i64* %144 to <4 x i64>*
  %wide.load123.3 = load <4 x i64>, <4 x i64>* %145, align 8, !tbaa !3, !alias.scope !31
  %146 = getelementptr inbounds i64, i64* %140, i64 -8
  %147 = getelementptr inbounds i64, i64* %146, i64 -3
  %148 = bitcast i64* %147 to <4 x i64>*
  %wide.load125.3 = load <4 x i64>, <4 x i64>* %148, align 8, !tbaa !3, !alias.scope !31
  %149 = getelementptr inbounds i64, i64* %140, i64 -12
  %150 = getelementptr inbounds i64, i64* %149, i64 -3
  %151 = bitcast i64* %150 to <4 x i64>*
  %wide.load127.3 = load <4 x i64>, <4 x i64>* %151, align 8, !tbaa !3, !alias.scope !31
  %152 = zext i32 %137 to i64
  %153 = getelementptr inbounds i64, i64* %x, i64 %152
  %154 = getelementptr inbounds i64, i64* %153, i64 -3
  %155 = bitcast i64* %154 to <4 x i64>*
  store <4 x i64> %wide.load.3, <4 x i64>* %155, align 8, !tbaa !3, !alias.scope !34, !noalias !31
  %156 = getelementptr inbounds i64, i64* %153, i64 -4
  %157 = getelementptr inbounds i64, i64* %156, i64 -3
  %158 = bitcast i64* %157 to <4 x i64>*
  store <4 x i64> %wide.load123.3, <4 x i64>* %158, align 8, !tbaa !3, !alias.scope !34, !noalias !31
  %159 = getelementptr inbounds i64, i64* %153, i64 -8
  %160 = getelementptr inbounds i64, i64* %159, i64 -3
  %161 = bitcast i64* %160 to <4 x i64>*
  store <4 x i64> %wide.load125.3, <4 x i64>* %161, align 8, !tbaa !3, !alias.scope !34, !noalias !31
  %162 = getelementptr inbounds i64, i64* %153, i64 -12
  %163 = getelementptr inbounds i64, i64* %162, i64 -3
  %164 = bitcast i64* %163 to <4 x i64>*
  store <4 x i64> %wide.load127.3, <4 x i64>* %164, align 8, !tbaa !3, !alias.scope !34, !noalias !31
  %index.next.3 = add i64 %index, 64
  %niter268.nsub.3 = add i64 %niter268, -4
  %niter268.ncmp.3 = icmp eq i64 %niter268.nsub.3, 0
  br i1 %niter268.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !36

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod266 = icmp eq i64 %xtraiter264, 0
  br i1 %lcmp.mod266, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter265 = phi i64 [ %epil.iter265.sub, %vector.body.epil ], [ %xtraiter264, %middle.block.unr-lcssa ]
  %165 = trunc i64 %index.epil to i32
  %166 = xor i32 %165, -1
  %167 = add i32 %166, %nwords
  %168 = sub i32 %167, %j.0.lcssa
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %x, i64 %169
  %171 = getelementptr inbounds i64, i64* %170, i64 -3
  %172 = bitcast i64* %171 to <4 x i64>*
  %wide.load.epil = load <4 x i64>, <4 x i64>* %172, align 8, !tbaa !3, !alias.scope !31
  %173 = getelementptr inbounds i64, i64* %170, i64 -4
  %174 = getelementptr inbounds i64, i64* %173, i64 -3
  %175 = bitcast i64* %174 to <4 x i64>*
  %wide.load123.epil = load <4 x i64>, <4 x i64>* %175, align 8, !tbaa !3, !alias.scope !31
  %176 = getelementptr inbounds i64, i64* %170, i64 -8
  %177 = getelementptr inbounds i64, i64* %176, i64 -3
  %178 = bitcast i64* %177 to <4 x i64>*
  %wide.load125.epil = load <4 x i64>, <4 x i64>* %178, align 8, !tbaa !3, !alias.scope !31
  %179 = getelementptr inbounds i64, i64* %170, i64 -12
  %180 = getelementptr inbounds i64, i64* %179, i64 -3
  %181 = bitcast i64* %180 to <4 x i64>*
  %wide.load127.epil = load <4 x i64>, <4 x i64>* %181, align 8, !tbaa !3, !alias.scope !31
  %182 = zext i32 %167 to i64
  %183 = getelementptr inbounds i64, i64* %x, i64 %182
  %184 = getelementptr inbounds i64, i64* %183, i64 -3
  %185 = bitcast i64* %184 to <4 x i64>*
  store <4 x i64> %wide.load.epil, <4 x i64>* %185, align 8, !tbaa !3, !alias.scope !34, !noalias !31
  %186 = getelementptr inbounds i64, i64* %183, i64 -4
  %187 = getelementptr inbounds i64, i64* %186, i64 -3
  %188 = bitcast i64* %187 to <4 x i64>*
  store <4 x i64> %wide.load123.epil, <4 x i64>* %188, align 8, !tbaa !3, !alias.scope !34, !noalias !31
  %189 = getelementptr inbounds i64, i64* %183, i64 -8
  %190 = getelementptr inbounds i64, i64* %189, i64 -3
  %191 = bitcast i64* %190 to <4 x i64>*
  store <4 x i64> %wide.load125.epil, <4 x i64>* %191, align 8, !tbaa !3, !alias.scope !34, !noalias !31
  %192 = getelementptr inbounds i64, i64* %183, i64 -12
  %193 = getelementptr inbounds i64, i64* %192, i64 -3
  %194 = bitcast i64* %193 to <4 x i64>*
  store <4 x i64> %wide.load127.epil, <4 x i64>* %194, align 8, !tbaa !3, !alias.scope !34, !noalias !31
  %index.next.epil = add i64 %index.epil, 16
  %epil.iter265.sub = add i64 %epil.iter265, -1
  %epil.iter265.cmp = icmp eq i64 %epil.iter265.sub, 0
  br i1 %epil.iter265.cmp, label %middle.block, label %vector.body.epil, !llvm.loop !37

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count90
  br i1 %cmp.n, label %for.cond11.preheader, label %for.body.preheader255

for.cond11.preheader:                             ; preds = %for.body.prol.loopexit, %for.body, %middle.block, %for.cond.preheader
  %cmp1277 = icmp ult i32 %sub1, %nwords
  br i1 %cmp1277, label %for.body13.preheader, label %for.end20

for.body13.preheader:                             ; preds = %for.cond11.preheader
  %195 = zext i32 %sub1 to i64
  %wide.trip.count = zext i32 %nwords to i64
  %196 = sub nsw i64 %wide.trip.count, %195
  %min.iters.check136 = icmp ult i64 %196, 16
  br i1 %min.iters.check136, label %for.body13.preheader254, label %vector.scevcheck141

for.body13.preheader254:                          ; preds = %middle.block134, %vector.scevcheck141, %for.body13.preheader
  %indvars.iv86.ph = phi i64 [ %195, %vector.scevcheck141 ], [ %195, %for.body13.preheader ], [ %ind.end148, %middle.block134 ]
  %197 = sub nsw i64 %wide.trip.count, %indvars.iv86.ph
  %198 = xor i64 %indvars.iv86.ph, -1
  %199 = add nsw i64 %198, %wide.trip.count
  %xtraiter256 = and i64 %197, 7
  %lcmp.mod257 = icmp eq i64 %xtraiter256, 0
  br i1 %lcmp.mod257, label %for.body13.prol.loopexit, label %for.body13.prol

for.body13.prol:                                  ; preds = %for.body13.preheader254, %for.body13.prol
  %indvars.iv86.prol = phi i64 [ %indvars.iv.next87.prol, %for.body13.prol ], [ %indvars.iv86.ph, %for.body13.preheader254 ]
  %prol.iter258 = phi i64 [ %prol.iter258.sub, %for.body13.prol ], [ %xtraiter256, %for.body13.preheader254 ]
  %200 = trunc i64 %indvars.iv86.prol to i32
  %201 = xor i32 %200, -1
  %sub15.prol = add i32 %201, %nwords
  %idxprom16.prol = zext i32 %sub15.prol to i64
  %arrayidx17.prol = getelementptr inbounds i64, i64* %x, i64 %idxprom16.prol
  store i64 0, i64* %arrayidx17.prol, align 8, !tbaa !3
  %indvars.iv.next87.prol = add nuw nsw i64 %indvars.iv86.prol, 1
  %prol.iter258.sub = add i64 %prol.iter258, -1
  %prol.iter258.cmp = icmp eq i64 %prol.iter258.sub, 0
  br i1 %prol.iter258.cmp, label %for.body13.prol.loopexit, label %for.body13.prol, !llvm.loop !38

for.body13.prol.loopexit:                         ; preds = %for.body13.prol, %for.body13.preheader254
  %indvars.iv86.unr = phi i64 [ %indvars.iv86.ph, %for.body13.preheader254 ], [ %indvars.iv.next87.prol, %for.body13.prol ]
  %202 = icmp ult i64 %199, 7
  br i1 %202, label %for.end20, label %for.body13

vector.scevcheck141:                              ; preds = %for.body13.preheader
  %203 = xor i64 %195, -1
  %204 = add nsw i64 %203, %wide.trip.count
  %205 = add nsw i32 %j.0.lcssa, -1
  %206 = trunc i64 %204 to i32
  %207 = icmp ult i32 %205, %206
  %208 = icmp ugt i64 %204, 4294967295
  %209 = or i1 %207, %208
  br i1 %209, label %for.body13.preheader254, label %vector.ph142

vector.ph142:                                     ; preds = %vector.scevcheck141
  %n.vec144 = and i64 %196, -16
  %ind.end148 = add nsw i64 %n.vec144, %195
  %210 = add nsw i64 %n.vec144, -16
  %211 = lshr exact i64 %210, 4
  %212 = add nuw nsw i64 %211, 1
  %xtraiter259 = and i64 %212, 3
  %213 = icmp ult i64 %210, 48
  br i1 %213, label %middle.block134.unr-lcssa, label %vector.ph142.new

vector.ph142.new:                                 ; preds = %vector.ph142
  %unroll_iter = sub nsw i64 %212, %xtraiter259
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph142.new
  %index145 = phi i64 [ 0, %vector.ph142.new ], [ %index.next146.3, %vector.body133 ]
  %niter = phi i64 [ %unroll_iter, %vector.ph142.new ], [ %niter.nsub.3, %vector.body133 ]
  %214 = trunc i64 %index145 to i32
  %215 = add i32 %sub1, %214
  %216 = xor i32 %215, -1
  %217 = add i32 %216, %nwords
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds i64, i64* %x, i64 %218
  %220 = getelementptr inbounds i64, i64* %219, i64 -3
  %221 = bitcast i64* %220 to <4 x i64>*
  store <4 x i64> zeroinitializer, <4 x i64>* %221, align 8, !tbaa !3
  %222 = getelementptr inbounds i64, i64* %219, i64 -4
  %223 = getelementptr inbounds i64, i64* %222, i64 -3
  %224 = bitcast i64* %223 to <4 x i64>*
  store <4 x i64> zeroinitializer, <4 x i64>* %224, align 8, !tbaa !3
  %225 = getelementptr inbounds i64, i64* %219, i64 -8
  %226 = getelementptr inbounds i64, i64* %225, i64 -3
  %227 = bitcast i64* %226 to <4 x i64>*
  store <4 x i64> zeroinitializer, <4 x i64>* %227, align 8, !tbaa !3
  %228 = getelementptr inbounds i64, i64* %219, i64 -12
  %229 = getelementptr inbounds i64, i64* %228, i64 -3
  %230 = bitcast i64* %229 to <4 x i64>*
  store <4 x i64> zeroinitializer, <4 x i64>* %230, align 8, !tbaa !3
  %231 = trunc i64 %index145 to i32
  %232 = or i32 %231, 16
  %233 = add i32 %sub1, %232
  %234 = xor i32 %233, -1
  %235 = add i32 %234, %nwords
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds i64, i64* %x, i64 %236
  %238 = getelementptr inbounds i64, i64* %237, i64 -3
  %239 = bitcast i64* %238 to <4 x i64>*
  store <4 x i64> zeroinitializer, <4 x i64>* %239, align 8, !tbaa !3
  %240 = getelementptr inbounds i64, i64* %237, i64 -4
  %241 = getelementptr inbounds i64, i64* %240, i64 -3
  %242 = bitcast i64* %241 to <4 x i64>*
  store <4 x i64> zeroinitializer, <4 x i64>* %242, align 8, !tbaa !3
  %243 = getelementptr inbounds i64, i64* %237, i64 -8
  %244 = getelementptr inbounds i64, i64* %243, i64 -3
  %245 = bitcast i64* %244 to <4 x i64>*
  store <4 x i64> zeroinitializer, <4 x i64>* %245, align 8, !tbaa !3
  %246 = getelementptr inbounds i64, i64* %237, i64 -12
  %247 = getelementptr inbounds i64, i64* %246, i64 -3
  %248 = bitcast i64* %247 to <4 x i64>*
  store <4 x i64> zeroinitializer, <4 x i64>* %248, align 8, !tbaa !3
  %249 = trunc i64 %index145 to i32
  %250 = or i32 %249, 32
  %251 = add i32 %sub1, %250
  %252 = xor i32 %251, -1
  %253 = add i32 %252, %nwords
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds i64, i64* %x, i64 %254
  %256 = getelementptr inbounds i64, i64* %255, i64 -3
  %257 = bitcast i64* %256 to <4 x i64>*
  store <4 x i64> zeroinitializer, <4 x i64>* %257, align 8, !tbaa !3
  %258 = getelementptr inbounds i64, i64* %255, i64 -4
  %259 = getelementptr inbounds i64, i64* %258, i64 -3
  %260 = bitcast i64* %259 to <4 x i64>*
  store <4 x i64> zeroinitializer, <4 x i64>* %260, align 8, !tbaa !3
  %261 = getelementptr inbounds i64, i64* %255, i64 -8
  %262 = getelementptr inbounds i64, i64* %261, i64 -3
  %263 = bitcast i64* %262 to <4 x i64>*
  store <4 x i64> zeroinitializer, <4 x i64>* %263, align 8, !tbaa !3
  %264 = getelementptr inbounds i64, i64* %255, i64 -12
  %265 = getelementptr inbounds i64, i64* %264, i64 -3
  %266 = bitcast i64* %265 to <4 x i64>*
  store <4 x i64> zeroinitializer, <4 x i64>* %266, align 8, !tbaa !3
  %267 = trunc i64 %index145 to i32
  %268 = or i32 %267, 48
  %269 = add i32 %sub1, %268
  %270 = xor i32 %269, -1
  %271 = add i32 %270, %nwords
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds i64, i64* %x, i64 %272
  %274 = getelementptr inbounds i64, i64* %273, i64 -3
  %275 = bitcast i64* %274 to <4 x i64>*
  store <4 x i64> zeroinitializer, <4 x i64>* %275, align 8, !tbaa !3
  %276 = getelementptr inbounds i64, i64* %273, i64 -4
  %277 = getelementptr inbounds i64, i64* %276, i64 -3
  %278 = bitcast i64* %277 to <4 x i64>*
  store <4 x i64> zeroinitializer, <4 x i64>* %278, align 8, !tbaa !3
  %279 = getelementptr inbounds i64, i64* %273, i64 -8
  %280 = getelementptr inbounds i64, i64* %279, i64 -3
  %281 = bitcast i64* %280 to <4 x i64>*
  store <4 x i64> zeroinitializer, <4 x i64>* %281, align 8, !tbaa !3
  %282 = getelementptr inbounds i64, i64* %273, i64 -12
  %283 = getelementptr inbounds i64, i64* %282, i64 -3
  %284 = bitcast i64* %283 to <4 x i64>*
  store <4 x i64> zeroinitializer, <4 x i64>* %284, align 8, !tbaa !3
  %index.next146.3 = add i64 %index145, 64
  %niter.nsub.3 = add i64 %niter, -4
  %niter.ncmp.3 = icmp eq i64 %niter.nsub.3, 0
  br i1 %niter.ncmp.3, label %middle.block134.unr-lcssa, label %vector.body133, !llvm.loop !39

middle.block134.unr-lcssa:                        ; preds = %vector.body133, %vector.ph142
  %index145.unr = phi i64 [ 0, %vector.ph142 ], [ %index.next146.3, %vector.body133 ]
  %lcmp.mod260 = icmp eq i64 %xtraiter259, 0
  br i1 %lcmp.mod260, label %middle.block134, label %vector.body133.epil

vector.body133.epil:                              ; preds = %middle.block134.unr-lcssa, %vector.body133.epil
  %index145.epil = phi i64 [ %index.next146.epil, %vector.body133.epil ], [ %index145.unr, %middle.block134.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.sub, %vector.body133.epil ], [ %xtraiter259, %middle.block134.unr-lcssa ]
  %285 = trunc i64 %index145.epil to i32
  %286 = add i32 %sub1, %285
  %287 = xor i32 %286, -1
  %288 = add i32 %287, %nwords
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds i64, i64* %x, i64 %289
  %291 = getelementptr inbounds i64, i64* %290, i64 -3
  %292 = bitcast i64* %291 to <4 x i64>*
  store <4 x i64> zeroinitializer, <4 x i64>* %292, align 8, !tbaa !3
  %293 = getelementptr inbounds i64, i64* %290, i64 -4
  %294 = getelementptr inbounds i64, i64* %293, i64 -3
  %295 = bitcast i64* %294 to <4 x i64>*
  store <4 x i64> zeroinitializer, <4 x i64>* %295, align 8, !tbaa !3
  %296 = getelementptr inbounds i64, i64* %290, i64 -8
  %297 = getelementptr inbounds i64, i64* %296, i64 -3
  %298 = bitcast i64* %297 to <4 x i64>*
  store <4 x i64> zeroinitializer, <4 x i64>* %298, align 8, !tbaa !3
  %299 = getelementptr inbounds i64, i64* %290, i64 -12
  %300 = getelementptr inbounds i64, i64* %299, i64 -3
  %301 = bitcast i64* %300 to <4 x i64>*
  store <4 x i64> zeroinitializer, <4 x i64>* %301, align 8, !tbaa !3
  %index.next146.epil = add i64 %index145.epil, 16
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp, label %middle.block134, label %vector.body133.epil, !llvm.loop !40

middle.block134:                                  ; preds = %vector.body133.epil, %middle.block134.unr-lcssa
  %cmp.n149 = icmp eq i64 %196, %n.vec144
  br i1 %cmp.n149, label %for.end20, label %for.body13.preheader254

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv88 = phi i64 [ %indvars.iv.next89.3, %for.body ], [ %indvars.iv88.unr, %for.body.prol.loopexit ]
  %i.080 = phi i32 [ %inc.3, %for.body ], [ %i.080.unr, %for.body.prol.loopexit ]
  %302 = xor i32 %i.080, -1
  %sub4 = add i32 %302, %nwords
  %sub5 = sub i32 %sub4, %j.0.lcssa
  %idxprom = zext i32 %sub5 to i64
  %arrayidx = getelementptr inbounds i64, i64* %x, i64 %idxprom
  %303 = load i64, i64* %arrayidx, align 8, !tbaa !3
  %idxprom8 = zext i32 %sub4 to i64
  %arrayidx9 = getelementptr inbounds i64, i64* %x, i64 %idxprom8
  store i64 %303, i64* %arrayidx9, align 8, !tbaa !3
  %304 = sub i32 -2, %i.080
  %sub4.1 = add i32 %304, %nwords
  %sub5.1 = sub i32 %sub4.1, %j.0.lcssa
  %idxprom.1 = zext i32 %sub5.1 to i64
  %arrayidx.1 = getelementptr inbounds i64, i64* %x, i64 %idxprom.1
  %305 = load i64, i64* %arrayidx.1, align 8, !tbaa !3
  %idxprom8.1 = zext i32 %sub4.1 to i64
  %arrayidx9.1 = getelementptr inbounds i64, i64* %x, i64 %idxprom8.1
  store i64 %305, i64* %arrayidx9.1, align 8, !tbaa !3
  %306 = sub i32 -3, %i.080
  %sub4.2 = add i32 %306, %nwords
  %sub5.2 = sub i32 %sub4.2, %j.0.lcssa
  %idxprom.2 = zext i32 %sub5.2 to i64
  %arrayidx.2 = getelementptr inbounds i64, i64* %x, i64 %idxprom.2
  %307 = load i64, i64* %arrayidx.2, align 8, !tbaa !3
  %idxprom8.2 = zext i32 %sub4.2 to i64
  %arrayidx9.2 = getelementptr inbounds i64, i64* %x, i64 %idxprom8.2
  store i64 %307, i64* %arrayidx9.2, align 8, !tbaa !3
  %308 = sub i32 -4, %i.080
  %sub4.3 = add i32 %308, %nwords
  %sub5.3 = sub i32 %sub4.3, %j.0.lcssa
  %idxprom.3 = zext i32 %sub5.3 to i64
  %arrayidx.3 = getelementptr inbounds i64, i64* %x, i64 %idxprom.3
  %309 = load i64, i64* %arrayidx.3, align 8, !tbaa !3
  %idxprom8.3 = zext i32 %sub4.3 to i64
  %arrayidx9.3 = getelementptr inbounds i64, i64* %x, i64 %idxprom8.3
  store i64 %309, i64* %arrayidx9.3, align 8, !tbaa !3
  %indvars.iv.next89.3 = add nsw i64 %indvars.iv88, 4
  %inc.3 = add i32 %i.080, 4
  %exitcond91.3 = icmp eq i64 %indvars.iv.next89.3, %wide.trip.count90
  br i1 %exitcond91.3, label %for.cond11.preheader, label %for.body, !llvm.loop !41

for.body13:                                       ; preds = %for.body13.prol.loopexit, %for.body13
  %indvars.iv86 = phi i64 [ %indvars.iv.next87.7, %for.body13 ], [ %indvars.iv86.unr, %for.body13.prol.loopexit ]
  %310 = trunc i64 %indvars.iv86 to i32
  %311 = xor i32 %310, -1
  %sub15 = add i32 %311, %nwords
  %idxprom16 = zext i32 %sub15 to i64
  %arrayidx17 = getelementptr inbounds i64, i64* %x, i64 %idxprom16
  store i64 0, i64* %arrayidx17, align 8, !tbaa !3
  %312 = trunc i64 %indvars.iv86 to i32
  %313 = sub i32 -2, %312
  %sub15.1 = add i32 %313, %nwords
  %idxprom16.1 = zext i32 %sub15.1 to i64
  %arrayidx17.1 = getelementptr inbounds i64, i64* %x, i64 %idxprom16.1
  store i64 0, i64* %arrayidx17.1, align 8, !tbaa !3
  %314 = trunc i64 %indvars.iv86 to i32
  %315 = sub i32 -3, %314
  %sub15.2 = add i32 %315, %nwords
  %idxprom16.2 = zext i32 %sub15.2 to i64
  %arrayidx17.2 = getelementptr inbounds i64, i64* %x, i64 %idxprom16.2
  store i64 0, i64* %arrayidx17.2, align 8, !tbaa !3
  %316 = trunc i64 %indvars.iv86 to i32
  %317 = sub i32 -4, %316
  %sub15.3 = add i32 %317, %nwords
  %idxprom16.3 = zext i32 %sub15.3 to i64
  %arrayidx17.3 = getelementptr inbounds i64, i64* %x, i64 %idxprom16.3
  store i64 0, i64* %arrayidx17.3, align 8, !tbaa !3
  %318 = trunc i64 %indvars.iv86 to i32
  %319 = sub i32 -5, %318
  %sub15.4 = add i32 %319, %nwords
  %idxprom16.4 = zext i32 %sub15.4 to i64
  %arrayidx17.4 = getelementptr inbounds i64, i64* %x, i64 %idxprom16.4
  store i64 0, i64* %arrayidx17.4, align 8, !tbaa !3
  %320 = trunc i64 %indvars.iv86 to i32
  %321 = sub i32 -6, %320
  %sub15.5 = add i32 %321, %nwords
  %idxprom16.5 = zext i32 %sub15.5 to i64
  %arrayidx17.5 = getelementptr inbounds i64, i64* %x, i64 %idxprom16.5
  store i64 0, i64* %arrayidx17.5, align 8, !tbaa !3
  %322 = trunc i64 %indvars.iv86 to i32
  %323 = sub i32 -7, %322
  %sub15.6 = add i32 %323, %nwords
  %idxprom16.6 = zext i32 %sub15.6 to i64
  %arrayidx17.6 = getelementptr inbounds i64, i64* %x, i64 %idxprom16.6
  store i64 0, i64* %arrayidx17.6, align 8, !tbaa !3
  %324 = trunc i64 %indvars.iv86 to i32
  %325 = sub i32 -8, %324
  %sub15.7 = add i32 %325, %nwords
  %idxprom16.7 = zext i32 %sub15.7 to i64
  %arrayidx17.7 = getelementptr inbounds i64, i64* %x, i64 %idxprom16.7
  store i64 0, i64* %arrayidx17.7, align 8, !tbaa !3
  %indvars.iv.next87.7 = add nsw i64 %indvars.iv86, 8
  %exitcond.7 = icmp eq i64 %indvars.iv.next87.7, %wide.trip.count
  br i1 %exitcond.7, label %for.end20, label %for.body13, !llvm.loop !42

for.end20:                                        ; preds = %for.body13.prol.loopexit, %for.body13, %middle.block134, %for.cond11.preheader
  %cmp21 = icmp eq i32 %shift.addr.0.lcssa, 0
  br i1 %cmp21, label %if.end, label %for.cond23.preheader

for.cond23.preheader:                             ; preds = %for.end20
  %j.173 = add i32 %nwords, -1
  %cmp2474 = icmp eq i32 %j.173, 0
  %.pre = zext i32 %shift.addr.0.lcssa to i64
  br i1 %cmp2474, label %for.end36, label %for.body25.lr.ph

for.body25.lr.ph:                                 ; preds = %for.cond23.preheader
  %sub31 = sub i32 64, %shift.addr.0.lcssa
  %sh_prom32 = zext i32 %sub31 to i64
  %326 = zext i32 %j.173 to i64
  %327 = add i32 %nwords, -2
  %328 = zext i32 %327 to i64
  %329 = add nuw nsw i64 %328, 1
  %min.iters.check167 = icmp ult i64 %329, 16
  br i1 %min.iters.check167, label %for.body25.preheader, label %vector.scevcheck179

vector.scevcheck179:                              ; preds = %for.body25.lr.ph
  %330 = add i32 %nwords, -2
  %scevgep169 = getelementptr i64, i64* %x, i64 %326
  %scevgep169170 = ptrtoint i64* %scevgep169 to i64
  %331 = zext i32 %330 to i64
  %mul171 = shl nuw nsw i64 %331, 3
  %332 = icmp ugt i64 %mul171, %scevgep169170
  %333 = zext i32 %330 to i64
  %scevgep174 = getelementptr i64, i64* %x, i64 %333
  %scevgep174175 = ptrtoint i64* %scevgep174 to i64
  %334 = zext i32 %330 to i64
  %mul176 = shl nuw nsw i64 %334, 3
  %335 = icmp ugt i64 %mul176, %scevgep174175
  %336 = or i1 %332, %335
  br i1 %336, label %for.body25.preheader, label %vector.memcheck192

vector.memcheck192:                               ; preds = %vector.scevcheck179
  %337 = add i32 %nwords, -2
  %338 = zext i32 %337 to i64
  %339 = sub nsw i64 %326, %338
  %scevgep181 = getelementptr i64, i64* %x, i64 %339
  %340 = add nuw nsw i64 %326, 1
  %scevgep183 = getelementptr i64, i64* %x, i64 %340
  %341 = add nuw nsw i64 %338, 1
  %scevgep186 = getelementptr i64, i64* %x, i64 %341
  %bound0188 = icmp ult i64* %scevgep181, %scevgep186
  %bound1189 = icmp ugt i64* %scevgep183, %x
  %found.conflict190 = and i1 %bound0188, %bound1189
  br i1 %found.conflict190, label %for.body25.preheader, label %vector.ph193

vector.ph193:                                     ; preds = %vector.memcheck192
  %342 = add i32 %nwords, 15
  %343 = and i32 %342, 15
  %n.mod.vf194 = zext i32 %343 to i64
  %n.vec195 = sub nsw i64 %329, %n.mod.vf194
  %ind.end199 = sub nsw i64 %326, %n.vec195
  %cast.crd201 = trunc i64 %n.vec195 to i32
  %ind.end202 = sub i32 %nwords, %cast.crd201
  %broadcast.splatinsert226 = insertelement <4 x i64> undef, i64 %.pre, i32 0
  %broadcast.splat227 = shufflevector <4 x i64> %broadcast.splatinsert226, <4 x i64> undef, <4 x i32> zeroinitializer
  %broadcast.splatinsert228 = insertelement <4 x i64> undef, i64 %.pre, i32 0
  %broadcast.splat229 = shufflevector <4 x i64> %broadcast.splatinsert228, <4 x i64> undef, <4 x i32> zeroinitializer
  %broadcast.splatinsert230 = insertelement <4 x i64> undef, i64 %.pre, i32 0
  %broadcast.splat231 = shufflevector <4 x i64> %broadcast.splatinsert230, <4 x i64> undef, <4 x i32> zeroinitializer
  %broadcast.splatinsert232 = insertelement <4 x i64> undef, i64 %.pre, i32 0
  %broadcast.splat233 = shufflevector <4 x i64> %broadcast.splatinsert232, <4 x i64> undef, <4 x i32> zeroinitializer
  %broadcast.splatinsert242 = insertelement <4 x i64> undef, i64 %sh_prom32, i32 0
  %broadcast.splat243 = shufflevector <4 x i64> %broadcast.splatinsert242, <4 x i64> undef, <4 x i32> zeroinitializer
  %broadcast.splatinsert244 = insertelement <4 x i64> undef, i64 %sh_prom32, i32 0
  %broadcast.splat245 = shufflevector <4 x i64> %broadcast.splatinsert244, <4 x i64> undef, <4 x i32> zeroinitializer
  %broadcast.splatinsert246 = insertelement <4 x i64> undef, i64 %sh_prom32, i32 0
  %broadcast.splat247 = shufflevector <4 x i64> %broadcast.splatinsert246, <4 x i64> undef, <4 x i32> zeroinitializer
  %broadcast.splatinsert248 = insertelement <4 x i64> undef, i64 %sh_prom32, i32 0
  %broadcast.splat249 = shufflevector <4 x i64> %broadcast.splatinsert248, <4 x i64> undef, <4 x i32> zeroinitializer
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph193
  %index196 = phi i64 [ 0, %vector.ph193 ], [ %index.next197, %vector.body164 ]
  %offset.idx204 = sub i64 %326, %index196
  %344 = trunc i64 %index196 to i32
  %offset.idx211 = sub i32 %nwords, %344
  %345 = getelementptr inbounds i64, i64* %x, i64 %offset.idx204
  %346 = getelementptr inbounds i64, i64* %345, i64 -3
  %347 = bitcast i64* %346 to <4 x i64>*
  %wide.load218 = load <4 x i64>, <4 x i64>* %347, align 8, !tbaa !3, !alias.scope !43, !noalias !46
  %reverse219 = shufflevector <4 x i64> %wide.load218, <4 x i64> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %348 = getelementptr inbounds i64, i64* %345, i64 -4
  %349 = getelementptr inbounds i64, i64* %348, i64 -3
  %350 = bitcast i64* %349 to <4 x i64>*
  %wide.load220 = load <4 x i64>, <4 x i64>* %350, align 8, !tbaa !3, !alias.scope !43, !noalias !46
  %reverse221 = shufflevector <4 x i64> %wide.load220, <4 x i64> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %351 = getelementptr inbounds i64, i64* %345, i64 -8
  %352 = getelementptr inbounds i64, i64* %351, i64 -3
  %353 = bitcast i64* %352 to <4 x i64>*
  %wide.load222 = load <4 x i64>, <4 x i64>* %353, align 8, !tbaa !3, !alias.scope !43, !noalias !46
  %reverse223 = shufflevector <4 x i64> %wide.load222, <4 x i64> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %354 = getelementptr inbounds i64, i64* %345, i64 -12
  %355 = getelementptr inbounds i64, i64* %354, i64 -3
  %356 = bitcast i64* %355 to <4 x i64>*
  %wide.load224 = load <4 x i64>, <4 x i64>* %356, align 8, !tbaa !3, !alias.scope !43, !noalias !46
  %reverse225 = shufflevector <4 x i64> %wide.load224, <4 x i64> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %357 = shl <4 x i64> %reverse219, %broadcast.splat227
  %358 = shl <4 x i64> %reverse221, %broadcast.splat229
  %359 = shl <4 x i64> %reverse223, %broadcast.splat231
  %360 = shl <4 x i64> %reverse225, %broadcast.splat233
  %361 = add i32 %offset.idx211, -2
  %362 = zext i32 %361 to i64
  %363 = getelementptr inbounds i64, i64* %x, i64 %362
  %364 = getelementptr inbounds i64, i64* %363, i64 -3
  %365 = bitcast i64* %364 to <4 x i64>*
  %wide.load234 = load <4 x i64>, <4 x i64>* %365, align 8, !tbaa !3, !alias.scope !46
  %reverse235 = shufflevector <4 x i64> %wide.load234, <4 x i64> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %366 = getelementptr inbounds i64, i64* %363, i64 -4
  %367 = getelementptr inbounds i64, i64* %366, i64 -3
  %368 = bitcast i64* %367 to <4 x i64>*
  %wide.load236 = load <4 x i64>, <4 x i64>* %368, align 8, !tbaa !3, !alias.scope !46
  %reverse237 = shufflevector <4 x i64> %wide.load236, <4 x i64> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %369 = getelementptr inbounds i64, i64* %363, i64 -8
  %370 = getelementptr inbounds i64, i64* %369, i64 -3
  %371 = bitcast i64* %370 to <4 x i64>*
  %wide.load238 = load <4 x i64>, <4 x i64>* %371, align 8, !tbaa !3, !alias.scope !46
  %reverse239 = shufflevector <4 x i64> %wide.load238, <4 x i64> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %372 = getelementptr inbounds i64, i64* %363, i64 -12
  %373 = getelementptr inbounds i64, i64* %372, i64 -3
  %374 = bitcast i64* %373 to <4 x i64>*
  %wide.load240 = load <4 x i64>, <4 x i64>* %374, align 8, !tbaa !3, !alias.scope !46
  %reverse241 = shufflevector <4 x i64> %wide.load240, <4 x i64> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %375 = lshr <4 x i64> %reverse235, %broadcast.splat243
  %376 = lshr <4 x i64> %reverse237, %broadcast.splat245
  %377 = lshr <4 x i64> %reverse239, %broadcast.splat247
  %378 = lshr <4 x i64> %reverse241, %broadcast.splat249
  %379 = xor <4 x i64> %375, %357
  %380 = xor <4 x i64> %376, %358
  %381 = xor <4 x i64> %377, %359
  %382 = xor <4 x i64> %378, %360
  %reverse250 = shufflevector <4 x i64> %379, <4 x i64> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %383 = bitcast i64* %346 to <4 x i64>*
  store <4 x i64> %reverse250, <4 x i64>* %383, align 8, !tbaa !3, !alias.scope !43, !noalias !46
  %reverse251 = shufflevector <4 x i64> %380, <4 x i64> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %384 = bitcast i64* %349 to <4 x i64>*
  store <4 x i64> %reverse251, <4 x i64>* %384, align 8, !tbaa !3, !alias.scope !43, !noalias !46
  %reverse252 = shufflevector <4 x i64> %381, <4 x i64> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %385 = bitcast i64* %352 to <4 x i64>*
  store <4 x i64> %reverse252, <4 x i64>* %385, align 8, !tbaa !3, !alias.scope !43, !noalias !46
  %reverse253 = shufflevector <4 x i64> %382, <4 x i64> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %386 = bitcast i64* %355 to <4 x i64>*
  store <4 x i64> %reverse253, <4 x i64>* %386, align 8, !tbaa !3, !alias.scope !43, !noalias !46
  %index.next197 = add i64 %index196, 16
  %387 = icmp eq i64 %index.next197, %n.vec195
  br i1 %387, label %middle.block165, label %vector.body164, !llvm.loop !48

middle.block165:                                  ; preds = %vector.body164
  %cmp.n203 = icmp eq i32 %343, 0
  br i1 %cmp.n203, label %for.end36, label %for.body25.preheader

for.body25.preheader:                             ; preds = %middle.block165, %vector.memcheck192, %vector.scevcheck179, %for.body25.lr.ph
  %indvars.iv.ph = phi i64 [ %326, %vector.memcheck192 ], [ %326, %vector.scevcheck179 ], [ %326, %for.body25.lr.ph ], [ %ind.end199, %middle.block165 ]
  %j.1.in75.ph = phi i32 [ %nwords, %vector.memcheck192 ], [ %nwords, %vector.scevcheck179 ], [ %nwords, %for.body25.lr.ph ], [ %ind.end202, %middle.block165 ]
  %388 = trunc i64 %indvars.iv.ph to i32
  %389 = add i32 %388, -1
  %xtraiter = and i32 %388, 3
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body25.prol.loopexit, label %for.body25.prol

for.body25.prol:                                  ; preds = %for.body25.preheader, %for.body25.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body25.prol ], [ %indvars.iv.ph, %for.body25.preheader ]
  %j.1.in75.prol = phi i32 [ %392, %for.body25.prol ], [ %j.1.in75.ph, %for.body25.preheader ]
  %prol.iter = phi i32 [ %prol.iter.sub, %for.body25.prol ], [ %xtraiter, %for.body25.preheader ]
  %arrayidx27.prol = getelementptr inbounds i64, i64* %x, i64 %indvars.iv.prol
  %390 = load i64, i64* %arrayidx27.prol, align 8, !tbaa !3
  %shl.prol = shl i64 %390, %.pre
  %sub28.prol = add i32 %j.1.in75.prol, -2
  %idxprom29.prol = zext i32 %sub28.prol to i64
  %arrayidx30.prol = getelementptr inbounds i64, i64* %x, i64 %idxprom29.prol
  %391 = load i64, i64* %arrayidx30.prol, align 8, !tbaa !3
  %shr.prol = lshr i64 %391, %sh_prom32
  %xor.prol = xor i64 %shr.prol, %shl.prol
  store i64 %xor.prol, i64* %arrayidx27.prol, align 8, !tbaa !3
  %392 = trunc i64 %indvars.iv.prol to i32
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1
  %prol.iter.sub = add i32 %prol.iter, -1
  %prol.iter.cmp = icmp eq i32 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %for.body25.prol.loopexit.unr-lcssa, label %for.body25.prol, !llvm.loop !49

for.body25.prol.loopexit.unr-lcssa:               ; preds = %for.body25.prol
  %393 = trunc i64 %indvars.iv.prol to i32
  br label %for.body25.prol.loopexit

for.body25.prol.loopexit:                         ; preds = %for.body25.preheader, %for.body25.prol.loopexit.unr-lcssa
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body25.preheader ], [ %indvars.iv.next.prol, %for.body25.prol.loopexit.unr-lcssa ]
  %j.1.in75.unr = phi i32 [ %j.1.in75.ph, %for.body25.preheader ], [ %393, %for.body25.prol.loopexit.unr-lcssa ]
  %394 = icmp ult i32 %389, 3
  br i1 %394, label %for.end36, label %for.body25

for.body25:                                       ; preds = %for.body25.prol.loopexit, %for.body25
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body25 ], [ %indvars.iv.unr, %for.body25.prol.loopexit ]
  %j.1.in75 = phi i32 [ %403, %for.body25 ], [ %j.1.in75.unr, %for.body25.prol.loopexit ]
  %arrayidx27 = getelementptr inbounds i64, i64* %x, i64 %indvars.iv
  %395 = load i64, i64* %arrayidx27, align 8, !tbaa !3
  %shl = shl i64 %395, %.pre
  %sub28 = add i32 %j.1.in75, -2
  %idxprom29 = zext i32 %sub28 to i64
  %arrayidx30 = getelementptr inbounds i64, i64* %x, i64 %idxprom29
  %396 = load i64, i64* %arrayidx30, align 8, !tbaa !3
  %shr = lshr i64 %396, %sh_prom32
  %xor = xor i64 %shr, %shl
  store i64 %xor, i64* %arrayidx27, align 8, !tbaa !3
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %arrayidx27.1 = getelementptr inbounds i64, i64* %x, i64 %indvars.iv.next
  %397 = load i64, i64* %arrayidx27.1, align 8, !tbaa !3
  %shl.1 = shl i64 %397, %.pre
  %sub28.1 = add i64 %indvars.iv, 4294967294
  %idxprom29.1 = and i64 %sub28.1, 4294967295
  %arrayidx30.1 = getelementptr inbounds i64, i64* %x, i64 %idxprom29.1
  %398 = load i64, i64* %arrayidx30.1, align 8, !tbaa !3
  %shr.1 = lshr i64 %398, %sh_prom32
  %xor.1 = xor i64 %shr.1, %shl.1
  store i64 %xor.1, i64* %arrayidx27.1, align 8, !tbaa !3
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  %arrayidx27.2 = getelementptr inbounds i64, i64* %x, i64 %indvars.iv.next.1
  %399 = load i64, i64* %arrayidx27.2, align 8, !tbaa !3
  %shl.2 = shl i64 %399, %.pre
  %sub28.2 = add i64 %indvars.iv, 4294967293
  %idxprom29.2 = and i64 %sub28.2, 4294967295
  %arrayidx30.2 = getelementptr inbounds i64, i64* %x, i64 %idxprom29.2
  %400 = load i64, i64* %arrayidx30.2, align 8, !tbaa !3
  %shr.2 = lshr i64 %400, %sh_prom32
  %xor.2 = xor i64 %shr.2, %shl.2
  store i64 %xor.2, i64* %arrayidx27.2, align 8, !tbaa !3
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, -3
  %arrayidx27.3 = getelementptr inbounds i64, i64* %x, i64 %indvars.iv.next.2
  %401 = load i64, i64* %arrayidx27.3, align 8, !tbaa !3
  %shl.3 = shl i64 %401, %.pre
  %sub28.3 = add i64 %indvars.iv, 4294967292
  %idxprom29.3 = and i64 %sub28.3, 4294967295
  %arrayidx30.3 = getelementptr inbounds i64, i64* %x, i64 %idxprom29.3
  %402 = load i64, i64* %arrayidx30.3, align 8, !tbaa !3
  %shr.3 = lshr i64 %402, %sh_prom32
  %xor.3 = xor i64 %shr.3, %shl.3
  store i64 %xor.3, i64* %arrayidx27.3, align 8, !tbaa !3
  %403 = trunc i64 %indvars.iv.next.2 to i32
  %cmp24.3 = icmp eq i32 %403, 1
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, -4
  br i1 %cmp24.3, label %for.end36, label %for.body25, !llvm.loop !50

for.end36:                                        ; preds = %for.body25.prol.loopexit, %for.body25, %middle.block165, %for.cond23.preheader
  %404 = load i64, i64* %x, align 8, !tbaa !3
  %shl39 = shl i64 %404, %.pre
  store i64 %shl39, i64* %x, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %for.end20, %for.end36
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @mp_shiftr1(i64* nocapture %x, i32 %nwords) local_unnamed_addr #0 {
entry:
  %sub = add i32 %nwords, -1
  %cmp19 = icmp eq i32 %sub, 0
  br i1 %cmp19, label %for.cond.cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %.pre = load i64, i64* %x, align 8, !tbaa !3
  %wide.trip.count = zext i32 %sub to i64
  %0 = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %wide.trip.count, 3
  %1 = icmp ult i64 %0, 3
  br i1 %1, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = sub nsw i64 %wide.trip.count, %xtraiter
  br label %for.body

for.cond.cleanup.loopexit.unr-lcssa:              ; preds = %for.body, %for.body.preheader
  %.unr = phi i64 [ %.pre, %for.body.preheader ], [ %9, %for.body ]
  %indvars.iv.unr = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.cond.cleanup.loopexit, label %for.body.epil

for.body.epil:                                    ; preds = %for.cond.cleanup.loopexit.unr-lcssa, %for.body.epil
  %2 = phi i64 [ %3, %for.body.epil ], [ %.unr, %for.cond.cleanup.loopexit.unr-lcssa ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.cond.cleanup.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.sub, %for.body.epil ], [ %xtraiter, %for.cond.cleanup.loopexit.unr-lcssa ]
  %arrayidx.epil = getelementptr inbounds i64, i64* %x, i64 %indvars.iv.epil
  %shr.epil = lshr i64 %2, 1
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %arrayidx2.epil = getelementptr inbounds i64, i64* %x, i64 %indvars.iv.next.epil
  %3 = load i64, i64* %arrayidx2.epil, align 8, !tbaa !3
  %shl.epil = shl i64 %3, 63
  %xor18.epil = or i64 %shl.epil, %shr.epil
  store i64 %xor18.epil, i64* %arrayidx.epil, align 8, !tbaa !3
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp, label %for.cond.cleanup.loopexit, label %for.body.epil, !llvm.loop !51

for.cond.cleanup.loopexit:                        ; preds = %for.body.epil, %for.cond.cleanup.loopexit.unr-lcssa
  %wide.trip.count.le = zext i32 %sub to i64
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %entry, %for.cond.cleanup.loopexit
  %idxprom6.pre-phi = phi i64 [ %wide.trip.count.le, %for.cond.cleanup.loopexit ], [ 0, %entry ]
  %arrayidx7 = getelementptr inbounds i64, i64* %x, i64 %idxprom6.pre-phi
  %4 = load i64, i64* %arrayidx7, align 8, !tbaa !3
  %shr8 = lshr i64 %4, 1
  store i64 %shr8, i64* %arrayidx7, align 8, !tbaa !3
  ret void

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %5 = phi i64 [ %.pre, %for.body.preheader.new ], [ %9, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ %unroll_iter, %for.body.preheader.new ], [ %niter.nsub.3, %for.body ]
  %arrayidx = getelementptr inbounds i64, i64* %x, i64 %indvars.iv
  %shr = lshr i64 %5, 1
  %indvars.iv.next = or i64 %indvars.iv, 1
  %arrayidx2 = getelementptr inbounds i64, i64* %x, i64 %indvars.iv.next
  %6 = load i64, i64* %arrayidx2, align 8, !tbaa !3
  %shl = shl i64 %6, 63
  %xor18 = or i64 %shl, %shr
  store i64 %xor18, i64* %arrayidx, align 8, !tbaa !3
  %arrayidx.1 = getelementptr inbounds i64, i64* %x, i64 %indvars.iv.next
  %shr.1 = lshr i64 %6, 1
  %indvars.iv.next.1 = or i64 %indvars.iv, 2
  %arrayidx2.1 = getelementptr inbounds i64, i64* %x, i64 %indvars.iv.next.1
  %7 = load i64, i64* %arrayidx2.1, align 8, !tbaa !3
  %shl.1 = shl i64 %7, 63
  %xor18.1 = or i64 %shl.1, %shr.1
  store i64 %xor18.1, i64* %arrayidx.1, align 8, !tbaa !3
  %arrayidx.2 = getelementptr inbounds i64, i64* %x, i64 %indvars.iv.next.1
  %shr.2 = lshr i64 %7, 1
  %indvars.iv.next.2 = or i64 %indvars.iv, 3
  %arrayidx2.2 = getelementptr inbounds i64, i64* %x, i64 %indvars.iv.next.2
  %8 = load i64, i64* %arrayidx2.2, align 8, !tbaa !3
  %shl.2 = shl i64 %8, 63
  %xor18.2 = or i64 %shl.2, %shr.2
  store i64 %xor18.2, i64* %arrayidx.2, align 8, !tbaa !3
  %arrayidx.3 = getelementptr inbounds i64, i64* %x, i64 %indvars.iv.next.2
  %shr.3 = lshr i64 %8, 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %arrayidx2.3 = getelementptr inbounds i64, i64* %x, i64 %indvars.iv.next.3
  %9 = load i64, i64* %arrayidx2.3, align 8, !tbaa !3
  %shl.3 = shl i64 %9, 63
  %xor18.3 = or i64 %shl.3, %shr.3
  store i64 %xor18.3, i64* %arrayidx.3, align 8, !tbaa !3
  %niter.nsub.3 = add i64 %niter, -4
  %niter.ncmp.3 = icmp eq i64 %niter.nsub.3, 0
  br i1 %niter.ncmp.3, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @mp_shiftl1(i64* nocapture %x, i32 %nwords) local_unnamed_addr #0 {
entry:
  %i.017 = add i32 %nwords, -1
  %cmp18 = icmp sgt i32 %i.017, 0
  br i1 %cmp18, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %entry
  %0 = sext i32 %i.017 to i64
  %1 = add i32 %nwords, -2
  %2 = zext i32 %1 to i64
  %3 = add nuw nsw i64 %2, 1
  %min.iters.check = icmp ult i64 %3, 16
  br i1 %min.iters.check, label %for.body.preheader75, label %vector.scevcheck

for.body.preheader75:                             ; preds = %middle.block, %vector.memcheck, %vector.scevcheck, %for.body.preheader
  %indvars.iv.ph = phi i64 [ %0, %vector.memcheck ], [ %0, %vector.scevcheck ], [ %0, %for.body.preheader ], [ %ind.end, %middle.block ]
  %i.020.ph = phi i32 [ %i.017, %vector.memcheck ], [ %i.017, %vector.scevcheck ], [ %i.017, %for.body.preheader ], [ %ind.end36, %middle.block ]
  %i.0.in19.ph = phi i32 [ %nwords, %vector.memcheck ], [ %nwords, %vector.scevcheck ], [ %nwords, %for.body.preheader ], [ %ind.end39, %middle.block ]
  br label %for.body

vector.scevcheck:                                 ; preds = %for.body.preheader
  %4 = add i32 %nwords, -2
  %scevgep = getelementptr i64, i64* %x, i64 %0
  %scevgep21 = ptrtoint i64* %scevgep to i64
  %5 = zext i32 %4 to i64
  %mul = shl nuw nsw i64 %5, 3
  %6 = icmp ugt i64 %mul, %scevgep21
  %7 = sext i32 %4 to i64
  %scevgep22 = getelementptr i64, i64* %x, i64 %7
  %scevgep2223 = ptrtoint i64* %scevgep22 to i64
  %8 = zext i32 %4 to i64
  %mul24 = shl nuw nsw i64 %8, 3
  %9 = icmp ugt i64 %mul24, %scevgep2223
  %10 = or i1 %6, %9
  br i1 %10, label %for.body.preheader75, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %11 = add i32 %nwords, -2
  %12 = zext i32 %11 to i64
  %13 = sub nsw i64 %0, %12
  %scevgep27 = getelementptr i64, i64* %x, i64 %13
  %14 = add nsw i64 %0, 1
  %scevgep29 = getelementptr i64, i64* %x, i64 %14
  %15 = sext i32 %11 to i64
  %16 = sub nsw i64 %15, %12
  %scevgep31 = getelementptr i64, i64* %x, i64 %16
  %17 = add nsw i64 %15, 1
  %scevgep33 = getelementptr i64, i64* %x, i64 %17
  %bound0 = icmp ult i64* %scevgep27, %scevgep33
  %bound1 = icmp ult i64* %scevgep31, %scevgep29
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader75, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %18 = add i32 %nwords, 15
  %19 = and i32 %18, 15
  %n.mod.vf = zext i32 %19 to i64
  %n.vec = sub nsw i64 %3, %n.mod.vf
  %ind.end = sub nsw i64 %0, %n.vec
  %cast.crd = trunc i64 %n.vec to i32
  %ind.end36 = sub i32 %i.017, %cast.crd
  %cast.crd38 = trunc i64 %n.vec to i32
  %ind.end39 = sub i32 %nwords, %cast.crd38
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = sub i64 %0, %index
  %20 = trunc i64 %index to i32
  %offset.idx50 = sub i32 %nwords, %20
  %21 = getelementptr inbounds i64, i64* %x, i64 %offset.idx
  %22 = getelementptr inbounds i64, i64* %21, i64 -3
  %23 = bitcast i64* %22 to <4 x i64>*
  %wide.load = load <4 x i64>, <4 x i64>* %23, align 8, !tbaa !3, !alias.scope !52, !noalias !55
  %24 = getelementptr inbounds i64, i64* %21, i64 -4
  %25 = getelementptr inbounds i64, i64* %24, i64 -3
  %26 = bitcast i64* %25 to <4 x i64>*
  %wide.load57 = load <4 x i64>, <4 x i64>* %26, align 8, !tbaa !3, !alias.scope !52, !noalias !55
  %27 = getelementptr inbounds i64, i64* %21, i64 -8
  %28 = getelementptr inbounds i64, i64* %27, i64 -3
  %29 = bitcast i64* %28 to <4 x i64>*
  %wide.load59 = load <4 x i64>, <4 x i64>* %29, align 8, !tbaa !3, !alias.scope !52, !noalias !55
  %30 = getelementptr inbounds i64, i64* %21, i64 -12
  %31 = getelementptr inbounds i64, i64* %30, i64 -3
  %32 = bitcast i64* %31 to <4 x i64>*
  %wide.load61 = load <4 x i64>, <4 x i64>* %32, align 8, !tbaa !3, !alias.scope !52, !noalias !55
  %33 = shl <4 x i64> %wide.load, <i64 1, i64 1, i64 1, i64 1>
  %34 = shl <4 x i64> %wide.load57, <i64 1, i64 1, i64 1, i64 1>
  %35 = shl <4 x i64> %wide.load59, <i64 1, i64 1, i64 1, i64 1>
  %36 = shl <4 x i64> %wide.load61, <i64 1, i64 1, i64 1, i64 1>
  %37 = add i32 %offset.idx50, -2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %x, i64 %38
  %40 = getelementptr inbounds i64, i64* %39, i64 -3
  %41 = bitcast i64* %40 to <4 x i64>*
  %wide.load63 = load <4 x i64>, <4 x i64>* %41, align 8, !tbaa !3, !alias.scope !55
  %42 = getelementptr inbounds i64, i64* %39, i64 -4
  %43 = getelementptr inbounds i64, i64* %42, i64 -3
  %44 = bitcast i64* %43 to <4 x i64>*
  %wide.load65 = load <4 x i64>, <4 x i64>* %44, align 8, !tbaa !3, !alias.scope !55
  %45 = getelementptr inbounds i64, i64* %39, i64 -8
  %46 = getelementptr inbounds i64, i64* %45, i64 -3
  %47 = bitcast i64* %46 to <4 x i64>*
  %wide.load67 = load <4 x i64>, <4 x i64>* %47, align 8, !tbaa !3, !alias.scope !55
  %48 = getelementptr inbounds i64, i64* %39, i64 -12
  %49 = getelementptr inbounds i64, i64* %48, i64 -3
  %50 = bitcast i64* %49 to <4 x i64>*
  %wide.load69 = load <4 x i64>, <4 x i64>* %50, align 8, !tbaa !3, !alias.scope !55
  %51 = lshr <4 x i64> %wide.load63, <i64 63, i64 63, i64 63, i64 63>
  %52 = lshr <4 x i64> %wide.load65, <i64 63, i64 63, i64 63, i64 63>
  %53 = lshr <4 x i64> %wide.load67, <i64 63, i64 63, i64 63, i64 63>
  %54 = lshr <4 x i64> %wide.load69, <i64 63, i64 63, i64 63, i64 63>
  %55 = or <4 x i64> %51, %33
  %56 = or <4 x i64> %52, %34
  %57 = or <4 x i64> %53, %35
  %58 = or <4 x i64> %54, %36
  %59 = bitcast i64* %22 to <4 x i64>*
  store <4 x i64> %55, <4 x i64>* %59, align 8, !tbaa !3, !alias.scope !52, !noalias !55
  %60 = bitcast i64* %25 to <4 x i64>*
  store <4 x i64> %56, <4 x i64>* %60, align 8, !tbaa !3, !alias.scope !52, !noalias !55
  %61 = bitcast i64* %28 to <4 x i64>*
  store <4 x i64> %57, <4 x i64>* %61, align 8, !tbaa !3, !alias.scope !52, !noalias !55
  %62 = bitcast i64* %31 to <4 x i64>*
  store <4 x i64> %58, <4 x i64>* %62, align 8, !tbaa !3, !alias.scope !52, !noalias !55
  %index.next = add i64 %index, 16
  %63 = icmp eq i64 %index.next, %n.vec
  br i1 %63, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %19, 0
  br i1 %cmp.n, label %for.cond.cleanup, label %for.body.preheader75

for.cond.cleanup:                                 ; preds = %for.body, %middle.block, %entry
  %64 = load i64, i64* %x, align 8, !tbaa !3
  %shl7 = shl i64 %64, 1
  store i64 %shl7, i64* %x, align 8, !tbaa !3
  ret void

for.body:                                         ; preds = %for.body.preheader75, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader75 ]
  %i.020 = phi i32 [ %i.0, %for.body ], [ %i.020.ph, %for.body.preheader75 ]
  %i.0.in19 = phi i32 [ %67, %for.body ], [ %i.0.in19.ph, %for.body.preheader75 ]
  %arrayidx = getelementptr inbounds i64, i64* %x, i64 %indvars.iv
  %65 = load i64, i64* %arrayidx, align 8, !tbaa !3
  %shl = shl i64 %65, 1
  %sub1 = add i32 %i.0.in19, -2
  %idxprom2 = sext i32 %sub1 to i64
  %arrayidx3 = getelementptr inbounds i64, i64* %x, i64 %idxprom2
  %66 = load i64, i64* %arrayidx3, align 8, !tbaa !3
  %shr = lshr i64 %66, 63
  %xor16 = or i64 %shr, %shl
  store i64 %xor16, i64* %arrayidx, align 8, !tbaa !3
  %i.0 = add i32 %i.020, -1
  %cmp = icmp sgt i32 %i.0, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %67 = trunc i64 %indvars.iv to i32
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !llvm.loop !58
}

; Function Attrs: nounwind ssp uwtable
define zeroext i8 @is_sqr_fp2([12 x i64]* %a, i64* %s) local_unnamed_addr #4 {
entry:
  %temp.i = alloca [24 x i64], align 16
  %a0 = alloca [12 x i64], align 16
  %a1 = alloca [12 x i64], align 16
  %z = alloca [12 x i64], align 16
  %temp = alloca [12 x i64], align 16
  %0 = bitcast [12 x i64]* %a0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %0) #10
  %1 = bitcast [12 x i64]* %a1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %1) #10
  %2 = bitcast [12 x i64]* %z to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %2) #10
  %3 = bitcast [12 x i64]* %temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %3) #10
  %arraydecay = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [12 x i64], [12 x i64]* %a0, i64 0, i64 0
  %4 = bitcast [24 x i64]* %temp.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %4) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %4, i8 0, i64 192, i1 false) #10
  %arraydecay.i = getelementptr inbounds [24 x i64], [24 x i64]* %temp.i, i64 0, i64 0
  call void @mp_mul(i64* %arraydecay, i64* %arraydecay, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay1) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %4) #10
  %arraydecay3 = getelementptr inbounds [12 x i64], [12 x i64]* %a, i64 1, i64 0
  %arraydecay4 = getelementptr inbounds [12 x i64], [12 x i64]* %a1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %4) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %4, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay3, i64* nonnull %arraydecay3, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay4) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %4) #10
  %arraydecay7 = getelementptr inbounds [12 x i64], [12 x i64]* %z, i64 0, i64 0
  call void @fpadd751(i64* nonnull %arraydecay1, i64* nonnull %arraydecay4, i64* nonnull %arraydecay7) #10
  %5 = bitcast [12 x i64]* %z to <4 x i64>*
  %6 = load <4 x i64>, <4 x i64>* %5, align 16, !tbaa !3
  %7 = bitcast i64* %s to <4 x i64>*
  store <4 x i64> %6, <4 x i64>* %7, align 8, !tbaa !3
  %arrayidx.4.i = getelementptr inbounds [12 x i64], [12 x i64]* %z, i64 0, i64 4
  %arrayidx2.4.i = getelementptr inbounds i64, i64* %s, i64 4
  %8 = bitcast i64* %arrayidx.4.i to <4 x i64>*
  %9 = load <4 x i64>, <4 x i64>* %8, align 16, !tbaa !3
  %10 = bitcast i64* %arrayidx2.4.i to <4 x i64>*
  store <4 x i64> %9, <4 x i64>* %10, align 8, !tbaa !3
  %arrayidx.8.i = getelementptr inbounds [12 x i64], [12 x i64]* %z, i64 0, i64 8
  %arrayidx2.8.i = getelementptr inbounds i64, i64* %s, i64 8
  %11 = bitcast i64* %arrayidx.8.i to <4 x i64>*
  %12 = load <4 x i64>, <4 x i64>* %11, align 16, !tbaa !3
  %13 = bitcast i64* %arrayidx2.8.i to <4 x i64>*
  store <4 x i64> %12, <4 x i64>* %13, align 8, !tbaa !3
  br label %for.body

for.cond9.preheader:                              ; preds = %for.body
  %arraydecay12 = getelementptr inbounds [12 x i64], [12 x i64]* %temp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %4) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %4, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* %s, i64* %s, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay12) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %4) #10
  br label %for.body11

for.body:                                         ; preds = %for.body, %entry
  %i.046 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %4) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %4, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* %s, i64* %s, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* %s) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %4) #10
  %inc = add nuw nsw i32 %i.046, 1
  %exitcond47 = icmp eq i32 %inc, 370
  br i1 %exitcond47, label %for.cond9.preheader, label %for.body

for.body11:                                       ; preds = %for.body11, %for.cond9.preheader
  %i.145 = phi i32 [ 0, %for.cond9.preheader ], [ %inc15, %for.body11 ]
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %4) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %4, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* %s, i64* nonnull %arraydecay12, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* %s) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %4) #10
  %inc15 = add nuw nsw i32 %i.145, 1
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %4) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %4, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* %s, i64* %s, i64* nonnull %arraydecay.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay12) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %4) #10
  %exitcond = icmp eq i32 %inc15, 239
  br i1 %exitcond, label %for.end16, label %for.body11

for.end16:                                        ; preds = %for.body11
  call void @fpcorrection751(i64* nonnull %arraydecay12) #10
  call void @fpcorrection751(i64* nonnull %arraydecay7) #10
  %call = call i32 @memcmp(i8* nonnull %3, i8* nonnull %2, i64 94)
  %cmp22 = icmp eq i32 %call, 0
  %. = zext i1 %cmp22 to i8
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %0) #10
  ret i8 %.
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #7

; Function Attrs: nounwind ssp uwtable
define void @xDBL(%struct.point_proj* %P, %struct.point_proj* %Q, [12 x i64]* %A24plus, [12 x i64]* %C24) local_unnamed_addr #4 {
entry:
  %temp.i.i = alloca [24 x i64], align 16
  %t1.i = alloca [12 x i64], align 16
  %t2.i = alloca [12 x i64], align 16
  %t3.i = alloca [12 x i64], align 16
  %t0 = alloca [2 x [12 x i64]], align 16
  %t1 = alloca [2 x [12 x i64]], align 16
  %0 = bitcast [2 x [12 x i64]]* %t0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %0) #10
  %1 = bitcast [2 x [12 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %1) #10
  %arraydecay2 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t0, i64 0, i64 0
  %arraydecay.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 0, i64 0
  %arraydecay4.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t0, i64 0, i64 0, i64 0
  call void @mp_sub751_p2(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i) #10
  %arraydecay6.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 1, i64 0
  %arraydecay8.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 1, i64 0
  %arraydecay10.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t0, i64 0, i64 1, i64 0
  call void @mp_sub751_p2(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i) #10
  %arraydecay7 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t1, i64 0, i64 0
  %arraydecay4.i46 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t1, i64 0, i64 0, i64 0
  call fastcc void @mp_addfast(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i46) #10
  %arraydecay10.i49 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t1, i64 0, i64 1, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i49) #10
  %2 = bitcast [12 x i64]* %t1.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %2) #10
  %3 = bitcast [12 x i64]* %t2.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %3) #10
  %4 = bitcast [12 x i64]* %t3.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %4) #10
  %arraydecay3.i = getelementptr inbounds [12 x i64], [12 x i64]* %t1.i, i64 0, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay3.i) #10
  %arraydecay8.i52 = getelementptr inbounds [12 x i64], [12 x i64]* %t2.i, i64 0, i64 0
  call void @mp_sub751_p4(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay8.i52) #10
  %arraydecay13.i = getelementptr inbounds [12 x i64], [12 x i64]* %t3.i, i64 0, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay13.i) #10
  %5 = bitcast [24 x i64]* %temp.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %5, i8 0, i64 192, i1 false) #10
  %arraydecay.i.i = getelementptr inbounds [24 x i64], [24 x i64]* %temp.i.i, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i52, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay4.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %5, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay10.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %3) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %4) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i46, i64* nonnull %arraydecay10.i49, i64* nonnull %arraydecay3.i) #10
  call void @mp_sub751_p4(i64* nonnull %arraydecay4.i46, i64* nonnull %arraydecay10.i49, i64* nonnull %arraydecay8.i52) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i46, i64* nonnull %arraydecay4.i46, i64* nonnull %arraydecay13.i) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %5, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i52, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay4.i46) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %5, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay10.i49, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay10.i49) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %2) #10
  %arraydecay14 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 0
  call void @fp2mul751_mont([12 x i64]* %C24, [12 x i64]* nonnull %arraydecay2, [12 x i64]* nonnull %arraydecay14)
  %arraydecay19 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay7, [12 x i64]* nonnull %arraydecay14, [12 x i64]* %arraydecay19)
  call void @mp_sub751_p2(i64* nonnull %arraydecay4.i46, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i46) #10
  call void @mp_sub751_p2(i64* nonnull %arraydecay10.i49, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i49) #10
  call void @fp2mul751_mont([12 x i64]* %A24plus, [12 x i64]* nonnull %arraydecay7, [12 x i64]* nonnull %arraydecay2)
  %arraydecay.i71 = getelementptr inbounds [12 x i64], [12 x i64]* %arraydecay14, i64 0, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay.i71, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay.i71) #10
  %arraydecay6.i74 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 1, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay6.i74, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay6.i74) #10
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay14, [12 x i64]* nonnull %arraydecay7, [12 x i64]* nonnull %arraydecay14)
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @xDBLe(%struct.point_proj* nocapture readonly %P, %struct.point_proj* %Q, [12 x i64]* %A24plus, [12 x i64]* %C24, i32 %e) local_unnamed_addr #4 {
entry:
  %arrayidx.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 0
  %0 = load i64, i64* %arrayidx.i, align 8, !tbaa !3
  %arrayidx2.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 0
  store i64 %0, i64* %arrayidx2.i, align 8, !tbaa !3
  %arrayidx.i.1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 1
  %1 = load i64, i64* %arrayidx.i.1, align 8, !tbaa !3
  %arrayidx2.i.1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 1
  store i64 %1, i64* %arrayidx2.i.1, align 8, !tbaa !3
  %arrayidx.i.2 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 2
  %2 = load i64, i64* %arrayidx.i.2, align 8, !tbaa !3
  %arrayidx2.i.2 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 2
  store i64 %2, i64* %arrayidx2.i.2, align 8, !tbaa !3
  %arrayidx.i.3 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 3
  %3 = load i64, i64* %arrayidx.i.3, align 8, !tbaa !3
  %arrayidx2.i.3 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 3
  store i64 %3, i64* %arrayidx2.i.3, align 8, !tbaa !3
  %arrayidx.i.4 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 4
  %4 = load i64, i64* %arrayidx.i.4, align 8, !tbaa !3
  %arrayidx2.i.4 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 4
  store i64 %4, i64* %arrayidx2.i.4, align 8, !tbaa !3
  %arrayidx.i.5 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 5
  %5 = load i64, i64* %arrayidx.i.5, align 8, !tbaa !3
  %arrayidx2.i.5 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 5
  store i64 %5, i64* %arrayidx2.i.5, align 8, !tbaa !3
  %arrayidx.i.6 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 6
  %6 = load i64, i64* %arrayidx.i.6, align 8, !tbaa !3
  %arrayidx2.i.6 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 6
  store i64 %6, i64* %arrayidx2.i.6, align 8, !tbaa !3
  %arrayidx.i.7 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 7
  %7 = load i64, i64* %arrayidx.i.7, align 8, !tbaa !3
  %arrayidx2.i.7 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 7
  store i64 %7, i64* %arrayidx2.i.7, align 8, !tbaa !3
  %arrayidx.i.8 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 8
  %8 = load i64, i64* %arrayidx.i.8, align 8, !tbaa !3
  %arrayidx2.i.8 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 8
  store i64 %8, i64* %arrayidx2.i.8, align 8, !tbaa !3
  %arrayidx.i.9 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 9
  %9 = load i64, i64* %arrayidx.i.9, align 8, !tbaa !3
  %arrayidx2.i.9 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 9
  store i64 %9, i64* %arrayidx2.i.9, align 8, !tbaa !3
  %arrayidx.i.10 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 10
  %10 = load i64, i64* %arrayidx.i.10, align 8, !tbaa !3
  %arrayidx2.i.10 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 10
  store i64 %10, i64* %arrayidx2.i.10, align 8, !tbaa !3
  %arrayidx.i.11 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 11
  %11 = load i64, i64* %arrayidx.i.11, align 8, !tbaa !3
  %arrayidx2.i.11 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 11
  store i64 %11, i64* %arrayidx2.i.11, align 8, !tbaa !3
  %arrayidx.i.12 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 12
  %12 = load i64, i64* %arrayidx.i.12, align 8, !tbaa !3
  %arrayidx2.i.12 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 12
  store i64 %12, i64* %arrayidx2.i.12, align 8, !tbaa !3
  %arrayidx.i.13 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 13
  %13 = load i64, i64* %arrayidx.i.13, align 8, !tbaa !3
  %arrayidx2.i.13 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 13
  store i64 %13, i64* %arrayidx2.i.13, align 8, !tbaa !3
  %arrayidx.i.14 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 14
  %14 = load i64, i64* %arrayidx.i.14, align 8, !tbaa !3
  %arrayidx2.i.14 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 14
  store i64 %14, i64* %arrayidx2.i.14, align 8, !tbaa !3
  %arrayidx.i.15 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 15
  %15 = load i64, i64* %arrayidx.i.15, align 8, !tbaa !3
  %arrayidx2.i.15 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 15
  store i64 %15, i64* %arrayidx2.i.15, align 8, !tbaa !3
  %arrayidx.i.16 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 16
  %16 = load i64, i64* %arrayidx.i.16, align 8, !tbaa !3
  %arrayidx2.i.16 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 16
  store i64 %16, i64* %arrayidx2.i.16, align 8, !tbaa !3
  %arrayidx.i.17 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 17
  %17 = load i64, i64* %arrayidx.i.17, align 8, !tbaa !3
  %arrayidx2.i.17 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 17
  store i64 %17, i64* %arrayidx2.i.17, align 8, !tbaa !3
  %arrayidx.i.18 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 18
  %18 = load i64, i64* %arrayidx.i.18, align 8, !tbaa !3
  %arrayidx2.i.18 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 18
  store i64 %18, i64* %arrayidx2.i.18, align 8, !tbaa !3
  %arrayidx.i.19 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 19
  %19 = load i64, i64* %arrayidx.i.19, align 8, !tbaa !3
  %arrayidx2.i.19 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 19
  store i64 %19, i64* %arrayidx2.i.19, align 8, !tbaa !3
  %arrayidx.i.20 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 20
  %20 = load i64, i64* %arrayidx.i.20, align 8, !tbaa !3
  %arrayidx2.i.20 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 20
  store i64 %20, i64* %arrayidx2.i.20, align 8, !tbaa !3
  %arrayidx.i.21 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 21
  %21 = load i64, i64* %arrayidx.i.21, align 8, !tbaa !3
  %arrayidx2.i.21 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 21
  store i64 %21, i64* %arrayidx2.i.21, align 8, !tbaa !3
  %arrayidx.i.22 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 22
  %22 = load i64, i64* %arrayidx.i.22, align 8, !tbaa !3
  %arrayidx2.i.22 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 22
  store i64 %22, i64* %arrayidx2.i.22, align 8, !tbaa !3
  %arrayidx.i.23 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 23
  %23 = load i64, i64* %arrayidx.i.23, align 8, !tbaa !3
  %arrayidx2.i.23 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 23
  store i64 %23, i64* %arrayidx2.i.23, align 8, !tbaa !3
  %arrayidx.i.24 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 24
  %24 = load i64, i64* %arrayidx.i.24, align 8, !tbaa !3
  %arrayidx2.i.24 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 24
  store i64 %24, i64* %arrayidx2.i.24, align 8, !tbaa !3
  %arrayidx.i.25 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 25
  %25 = load i64, i64* %arrayidx.i.25, align 8, !tbaa !3
  %arrayidx2.i.25 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 25
  store i64 %25, i64* %arrayidx2.i.25, align 8, !tbaa !3
  %arrayidx.i.26 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 26
  %26 = load i64, i64* %arrayidx.i.26, align 8, !tbaa !3
  %arrayidx2.i.26 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 26
  store i64 %26, i64* %arrayidx2.i.26, align 8, !tbaa !3
  %arrayidx.i.27 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 27
  %27 = load i64, i64* %arrayidx.i.27, align 8, !tbaa !3
  %arrayidx2.i.27 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 27
  store i64 %27, i64* %arrayidx2.i.27, align 8, !tbaa !3
  %arrayidx.i.28 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 28
  %28 = load i64, i64* %arrayidx.i.28, align 8, !tbaa !3
  %arrayidx2.i.28 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 28
  store i64 %28, i64* %arrayidx2.i.28, align 8, !tbaa !3
  %arrayidx.i.29 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 29
  %29 = load i64, i64* %arrayidx.i.29, align 8, !tbaa !3
  %arrayidx2.i.29 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 29
  store i64 %29, i64* %arrayidx2.i.29, align 8, !tbaa !3
  %arrayidx.i.30 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 30
  %30 = load i64, i64* %arrayidx.i.30, align 8, !tbaa !3
  %arrayidx2.i.30 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 30
  store i64 %30, i64* %arrayidx2.i.30, align 8, !tbaa !3
  %arrayidx.i.31 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 31
  %31 = load i64, i64* %arrayidx.i.31, align 8, !tbaa !3
  %arrayidx2.i.31 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 31
  store i64 %31, i64* %arrayidx2.i.31, align 8, !tbaa !3
  %arrayidx.i.32 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 32
  %32 = load i64, i64* %arrayidx.i.32, align 8, !tbaa !3
  %arrayidx2.i.32 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 32
  store i64 %32, i64* %arrayidx2.i.32, align 8, !tbaa !3
  %arrayidx.i.33 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 33
  %33 = load i64, i64* %arrayidx.i.33, align 8, !tbaa !3
  %arrayidx2.i.33 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 33
  store i64 %33, i64* %arrayidx2.i.33, align 8, !tbaa !3
  %arrayidx.i.34 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 34
  %34 = load i64, i64* %arrayidx.i.34, align 8, !tbaa !3
  %arrayidx2.i.34 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 34
  store i64 %34, i64* %arrayidx2.i.34, align 8, !tbaa !3
  %arrayidx.i.35 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 35
  %35 = load i64, i64* %arrayidx.i.35, align 8, !tbaa !3
  %arrayidx2.i.35 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 35
  store i64 %35, i64* %arrayidx2.i.35, align 8, !tbaa !3
  %arrayidx.i.36 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 36
  %36 = load i64, i64* %arrayidx.i.36, align 8, !tbaa !3
  %arrayidx2.i.36 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 36
  store i64 %36, i64* %arrayidx2.i.36, align 8, !tbaa !3
  %arrayidx.i.37 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 37
  %37 = load i64, i64* %arrayidx.i.37, align 8, !tbaa !3
  %arrayidx2.i.37 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 37
  store i64 %37, i64* %arrayidx2.i.37, align 8, !tbaa !3
  %arrayidx.i.38 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 38
  %38 = load i64, i64* %arrayidx.i.38, align 8, !tbaa !3
  %arrayidx2.i.38 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 38
  store i64 %38, i64* %arrayidx2.i.38, align 8, !tbaa !3
  %arrayidx.i.39 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 39
  %39 = load i64, i64* %arrayidx.i.39, align 8, !tbaa !3
  %arrayidx2.i.39 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 39
  store i64 %39, i64* %arrayidx2.i.39, align 8, !tbaa !3
  %arrayidx.i.40 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 40
  %40 = load i64, i64* %arrayidx.i.40, align 8, !tbaa !3
  %arrayidx2.i.40 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 40
  store i64 %40, i64* %arrayidx2.i.40, align 8, !tbaa !3
  %arrayidx.i.41 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 41
  %41 = load i64, i64* %arrayidx.i.41, align 8, !tbaa !3
  %arrayidx2.i.41 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 41
  store i64 %41, i64* %arrayidx2.i.41, align 8, !tbaa !3
  %arrayidx.i.42 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 42
  %42 = load i64, i64* %arrayidx.i.42, align 8, !tbaa !3
  %arrayidx2.i.42 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 42
  store i64 %42, i64* %arrayidx2.i.42, align 8, !tbaa !3
  %arrayidx.i.43 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 43
  %43 = load i64, i64* %arrayidx.i.43, align 8, !tbaa !3
  %arrayidx2.i.43 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 43
  store i64 %43, i64* %arrayidx2.i.43, align 8, !tbaa !3
  %arrayidx.i.44 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 44
  %44 = load i64, i64* %arrayidx.i.44, align 8, !tbaa !3
  %arrayidx2.i.44 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 44
  store i64 %44, i64* %arrayidx2.i.44, align 8, !tbaa !3
  %arrayidx.i.45 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 45
  %45 = load i64, i64* %arrayidx.i.45, align 8, !tbaa !3
  %arrayidx2.i.45 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 45
  store i64 %45, i64* %arrayidx2.i.45, align 8, !tbaa !3
  %arrayidx.i.46 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 46
  %46 = load i64, i64* %arrayidx.i.46, align 8, !tbaa !3
  %arrayidx2.i.46 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 46
  store i64 %46, i64* %arrayidx2.i.46, align 8, !tbaa !3
  %arrayidx.i.47 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 47
  %47 = load i64, i64* %arrayidx.i.47, align 8, !tbaa !3
  %arrayidx2.i.47 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 47
  store i64 %47, i64* %arrayidx2.i.47, align 8, !tbaa !3
  %cmp5 = icmp sgt i32 %e, 0
  br i1 %cmp5, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret void

for.body:                                         ; preds = %entry, %for.body
  %i.06 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  tail call void @xDBL(%struct.point_proj* %Q, %struct.point_proj* %Q, [12 x i64]* %A24plus, [12 x i64]* %C24)
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond = icmp eq i32 %inc, %e
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nounwind ssp uwtable
define void @get_4_isog(%struct.point_proj* %P, [12 x i64]* %A24plus, [12 x i64]* %C24, [2 x [12 x i64]]* %coeff) local_unnamed_addr #4 {
entry:
  %temp.i.i = alloca [24 x i64], align 16
  %t1.i = alloca [12 x i64], align 16
  %t2.i = alloca [12 x i64], align 16
  %t3.i = alloca [12 x i64], align 16
  %arraydecay.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 0, i64 0
  %arraydecay4.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %coeff, i64 1, i64 0, i64 0
  tail call void @mp_sub751_p2(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i) #10
  %arraydecay6.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 1, i64 0
  %arraydecay8.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 1, i64 0
  %arraydecay10.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %coeff, i64 1, i64 1, i64 0
  tail call void @mp_sub751_p2(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i) #10
  %arraydecay4.i50 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %coeff, i64 2, i64 0, i64 0
  tail call fastcc void @mp_addfast(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i50) #10
  %arraydecay10.i53 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %coeff, i64 2, i64 1, i64 0
  tail call fastcc void @mp_addfast(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i53) #10
  %0 = bitcast [12 x i64]* %t1.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %0) #10
  %1 = bitcast [12 x i64]* %t2.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %1) #10
  %2 = bitcast [12 x i64]* %t3.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %2) #10
  %arraydecay3.i = getelementptr inbounds [12 x i64], [12 x i64]* %t1.i, i64 0, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay3.i) #10
  %arraydecay8.i56 = getelementptr inbounds [12 x i64], [12 x i64]* %t2.i, i64 0, i64 0
  call void @mp_sub751_p4(i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay8.i56) #10
  %arraydecay13.i = getelementptr inbounds [12 x i64], [12 x i64]* %t3.i, i64 0, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay13.i) #10
  %arraydecay17.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %coeff, i64 0, i64 0, i64 0
  %3 = bitcast [24 x i64]* %temp.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %3) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %3, i8 0, i64 192, i1 false) #10
  %arraydecay.i.i = getelementptr inbounds [24 x i64], [24 x i64]* %temp.i.i, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i56, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* %arraydecay17.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %3) #10
  %arraydecay22.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %coeff, i64 0, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %3) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %3, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay22.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %0) #10
  call fastcc void @mp_addfast(i64* %arraydecay17.i, i64* %arraydecay17.i, i64* %arraydecay17.i) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay22.i, i64* nonnull %arraydecay22.i, i64* nonnull %arraydecay22.i) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %0) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %1) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %2) #10
  call fastcc void @mp_addfast(i64* %arraydecay17.i, i64* nonnull %arraydecay22.i, i64* nonnull %arraydecay3.i) #10
  call void @mp_sub751_p4(i64* %arraydecay17.i, i64* nonnull %arraydecay22.i, i64* nonnull %arraydecay8.i56) #10
  call fastcc void @mp_addfast(i64* %arraydecay17.i, i64* %arraydecay17.i, i64* nonnull %arraydecay13.i) #10
  %arraydecay17.i72 = getelementptr inbounds [12 x i64], [12 x i64]* %C24, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %3) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %3, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i56, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* %arraydecay17.i72) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %3) #10
  %arraydecay22.i74 = getelementptr inbounds [12 x i64], [12 x i64]* %C24, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %3) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %3, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay22.i, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay22.i74) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %0) #10
  call fastcc void @mp_addfast(i64* %arraydecay17.i, i64* %arraydecay17.i, i64* %arraydecay17.i) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay22.i, i64* nonnull %arraydecay22.i, i64* nonnull %arraydecay22.i) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %0) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %1) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %2) #10
  call fastcc void @mp_addfast(i64* %arraydecay.i, i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay3.i) #10
  call void @mp_sub751_p4(i64* %arraydecay.i, i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i56) #10
  call fastcc void @mp_addfast(i64* %arraydecay.i, i64* %arraydecay.i, i64* nonnull %arraydecay13.i) #10
  %arraydecay17.i90 = getelementptr inbounds [12 x i64], [12 x i64]* %A24plus, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %3) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %3, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i56, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* %arraydecay17.i90) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %3) #10
  %arraydecay22.i92 = getelementptr inbounds [12 x i64], [12 x i64]* %A24plus, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %3) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %3, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay22.i92) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %0) #10
  call fastcc void @mp_addfast(i64* %arraydecay17.i90, i64* %arraydecay17.i90, i64* %arraydecay17.i90) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay22.i92, i64* nonnull %arraydecay22.i92, i64* nonnull %arraydecay22.i92) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %0) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %1) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %2) #10
  call fastcc void @mp_addfast(i64* %arraydecay17.i90, i64* nonnull %arraydecay22.i92, i64* nonnull %arraydecay3.i) #10
  call void @mp_sub751_p4(i64* %arraydecay17.i90, i64* nonnull %arraydecay22.i92, i64* nonnull %arraydecay8.i56) #10
  call fastcc void @mp_addfast(i64* %arraydecay17.i90, i64* %arraydecay17.i90, i64* nonnull %arraydecay13.i) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %3) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %3, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i56, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* %arraydecay17.i90) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %3) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %3) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %3, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay22.i92, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay22.i92) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @eval_4_isog(%struct.point_proj* %P, [2 x [12 x i64]]* %coeff) local_unnamed_addr #4 {
entry:
  %temp.i.i = alloca [24 x i64], align 16
  %t1.i = alloca [12 x i64], align 16
  %t2.i = alloca [12 x i64], align 16
  %t3.i = alloca [12 x i64], align 16
  %t0 = alloca [2 x [12 x i64]], align 16
  %t1 = alloca [2 x [12 x i64]], align 16
  %0 = bitcast [2 x [12 x i64]]* %t0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %0) #10
  %1 = bitcast [2 x [12 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %1) #10
  %arraydecay = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0
  %arraydecay1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 0
  %arraydecay2 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t0, i64 0, i64 0
  %arraydecay.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds [12 x i64], [12 x i64]* %arraydecay1, i64 0, i64 0
  %arraydecay4.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t0, i64 0, i64 0, i64 0
  call fastcc void @mp_addfast(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i) #10
  %arraydecay6.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 1, i64 0
  %arraydecay8.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 1, i64 0
  %arraydecay10.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t0, i64 0, i64 1, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i) #10
  %arraydecay7 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t1, i64 0, i64 0
  %arraydecay4.i81 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t1, i64 0, i64 0, i64 0
  call void @mp_sub751_p2(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i81) #10
  %arraydecay10.i84 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t1, i64 0, i64 1, i64 0
  call void @mp_sub751_p2(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i84) #10
  %arraydecay9 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %coeff, i64 1, i64 0
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay2, [12 x i64]* nonnull %arraydecay9, [12 x i64]* %arraydecay)
  %arraydecay14 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %coeff, i64 2, i64 0
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay7, [12 x i64]* nonnull %arraydecay14, [12 x i64]* nonnull %arraydecay1)
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay2, [12 x i64]* nonnull %arraydecay7, [12 x i64]* nonnull %arraydecay2)
  %arraydecay21 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %coeff, i64 0, i64 0
  call void @fp2mul751_mont([12 x i64]* %arraydecay21, [12 x i64]* nonnull %arraydecay2, [12 x i64]* nonnull %arraydecay2)
  call fastcc void @mp_addfast(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i81) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i84) #10
  call void @mp_sub751_p2(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay2.i) #10
  call void @mp_sub751_p2(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay8.i) #10
  %2 = bitcast [12 x i64]* %t1.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %2) #10
  %3 = bitcast [12 x i64]* %t2.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %3) #10
  %4 = bitcast [12 x i64]* %t3.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %4) #10
  %arraydecay3.i = getelementptr inbounds [12 x i64], [12 x i64]* %t1.i, i64 0, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i81, i64* nonnull %arraydecay10.i84, i64* nonnull %arraydecay3.i) #10
  %arraydecay8.i99 = getelementptr inbounds [12 x i64], [12 x i64]* %t2.i, i64 0, i64 0
  call void @mp_sub751_p4(i64* nonnull %arraydecay4.i81, i64* nonnull %arraydecay10.i84, i64* nonnull %arraydecay8.i99) #10
  %arraydecay13.i = getelementptr inbounds [12 x i64], [12 x i64]* %t3.i, i64 0, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i81, i64* nonnull %arraydecay4.i81, i64* nonnull %arraydecay13.i) #10
  %5 = bitcast [24 x i64]* %temp.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %5, i8 0, i64 192, i1 false) #10
  %arraydecay.i.i = getelementptr inbounds [24 x i64], [24 x i64]* %temp.i.i, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i99, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay4.i81) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %5, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay10.i84, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay10.i84) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %3) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %4) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay3.i) #10
  call void @mp_sub751_p4(i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay8.i99) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay13.i) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %5, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i99, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay2.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %5, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay8.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %2) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i81, i64* nonnull %arraydecay4.i, i64* %arraydecay.i) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay10.i84, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay6.i) #10
  call void @mp_sub751_p2(i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i) #10
  call void @mp_sub751_p2(i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i) #10
  call void @fp2mul751_mont([12 x i64]* %arraydecay, [12 x i64]* nonnull %arraydecay7, [12 x i64]* %arraydecay)
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay1, [12 x i64]* nonnull %arraydecay2, [12 x i64]* nonnull %arraydecay1)
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @xTPL(%struct.point_proj* %P, %struct.point_proj* %Q, [12 x i64]* %A24minus, [12 x i64]* %A24plus) local_unnamed_addr #4 {
entry:
  %temp.i.i = alloca [24 x i64], align 16
  %t1.i = alloca [12 x i64], align 16
  %t2.i = alloca [12 x i64], align 16
  %t3.i = alloca [12 x i64], align 16
  %t0 = alloca [2 x [12 x i64]], align 16
  %t1 = alloca [2 x [12 x i64]], align 16
  %t2 = alloca [2 x [12 x i64]], align 16
  %t3 = alloca [2 x [12 x i64]], align 16
  %t4 = alloca [2 x [12 x i64]], align 16
  %t5 = alloca [2 x [12 x i64]], align 16
  %t6 = alloca [2 x [12 x i64]], align 16
  %0 = bitcast [2 x [12 x i64]]* %t0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %0) #10
  %1 = bitcast [2 x [12 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %1) #10
  %2 = bitcast [2 x [12 x i64]]* %t2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  %3 = bitcast [2 x [12 x i64]]* %t3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %3) #10
  %4 = bitcast [2 x [12 x i64]]* %t4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %4) #10
  %5 = bitcast [2 x [12 x i64]]* %t5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %5) #10
  %6 = bitcast [2 x [12 x i64]]* %t6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %6) #10
  %arraydecay2 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t0, i64 0, i64 0
  %arraydecay.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 0, i64 0
  %arraydecay4.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t0, i64 0, i64 0, i64 0
  call void @mp_sub751_p2(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i) #10
  %arraydecay6.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 1, i64 0
  %arraydecay8.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 1, i64 0
  %arraydecay10.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t0, i64 0, i64 1, i64 0
  call void @mp_sub751_p2(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i) #10
  %arraydecay4 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t2, i64 0, i64 0
  %7 = bitcast [12 x i64]* %t1.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %7) #10
  %8 = bitcast [12 x i64]* %t2.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %8) #10
  %9 = bitcast [12 x i64]* %t3.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %9) #10
  %arraydecay3.i = getelementptr inbounds [12 x i64], [12 x i64]* %t1.i, i64 0, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay3.i) #10
  %arraydecay8.i77 = getelementptr inbounds [12 x i64], [12 x i64]* %t2.i, i64 0, i64 0
  call void @mp_sub751_p4(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay8.i77) #10
  %arraydecay13.i = getelementptr inbounds [12 x i64], [12 x i64]* %t3.i, i64 0, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay13.i) #10
  %arraydecay17.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t2, i64 0, i64 0, i64 0
  %10 = bitcast [24 x i64]* %temp.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 192, i1 false) #10
  %arraydecay.i.i = getelementptr inbounds [24 x i64], [24 x i64]* %temp.i.i, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i77, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay17.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %10) #10
  %arraydecay22.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t2, i64 0, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay22.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %9) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %7) #10
  %arraydecay9 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t1, i64 0, i64 0
  %arraydecay4.i80 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t1, i64 0, i64 0, i64 0
  call fastcc void @mp_addfast(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i80) #10
  %arraydecay10.i83 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t1, i64 0, i64 1, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i83) #10
  %arraydecay11 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %7) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %8) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %9) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i80, i64* nonnull %arraydecay10.i83, i64* nonnull %arraydecay3.i) #10
  call void @mp_sub751_p4(i64* nonnull %arraydecay4.i80, i64* nonnull %arraydecay10.i83, i64* nonnull %arraydecay8.i77) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i80, i64* nonnull %arraydecay4.i80, i64* nonnull %arraydecay13.i) #10
  %arraydecay17.i93 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t3, i64 0, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i77, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay17.i93) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %10) #10
  %arraydecay22.i95 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t3, i64 0, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay10.i83, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay22.i95) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %9) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %7) #10
  %arraydecay16 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t4, i64 0, i64 0
  %arraydecay4.i98 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t4, i64 0, i64 0, i64 0
  call fastcc void @mp_addfast(i64* %arraydecay.i, i64* %arraydecay.i, i64* nonnull %arraydecay4.i98) #10
  %arraydecay10.i101 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t4, i64 0, i64 1, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay10.i101) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %7) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %8) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %9) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i98, i64* nonnull %arraydecay10.i101, i64* nonnull %arraydecay3.i) #10
  call void @mp_sub751_p4(i64* nonnull %arraydecay4.i98, i64* nonnull %arraydecay10.i101, i64* nonnull %arraydecay8.i77) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i98, i64* nonnull %arraydecay4.i98, i64* nonnull %arraydecay13.i) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i77, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay4.i80) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay10.i101, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay10.i83) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %9) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %7) #10
  call void @mp_sub751_p2(i64* nonnull %arraydecay4.i80, i64* nonnull %arraydecay17.i93, i64* nonnull %arraydecay4.i80) #10
  call void @mp_sub751_p2(i64* nonnull %arraydecay10.i83, i64* nonnull %arraydecay22.i95, i64* nonnull %arraydecay10.i83) #10
  call void @mp_sub751_p2(i64* nonnull %arraydecay4.i80, i64* nonnull %arraydecay17.i, i64* nonnull %arraydecay4.i80) #10
  call void @mp_sub751_p2(i64* nonnull %arraydecay10.i83, i64* nonnull %arraydecay22.i, i64* nonnull %arraydecay10.i83) #10
  %arraydecay31 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t5, i64 0, i64 0
  call void @fp2mul751_mont([12 x i64]* %A24plus, [12 x i64]* nonnull %arraydecay11, [12 x i64]* nonnull %arraydecay31)
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay11, [12 x i64]* nonnull %arraydecay31, [12 x i64]* nonnull %arraydecay11)
  %arraydecay36 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t6, i64 0, i64 0
  call void @fp2mul751_mont([12 x i64]* %A24minus, [12 x i64]* nonnull %arraydecay4, [12 x i64]* nonnull %arraydecay36)
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay4, [12 x i64]* nonnull %arraydecay36, [12 x i64]* nonnull %arraydecay4)
  call void @mp_sub751_p2(i64* nonnull %arraydecay17.i, i64* nonnull %arraydecay17.i93, i64* nonnull %arraydecay17.i93) #10
  call void @mp_sub751_p2(i64* nonnull %arraydecay22.i, i64* nonnull %arraydecay22.i95, i64* nonnull %arraydecay22.i95) #10
  %arraydecay.i138 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t5, i64 0, i64 0, i64 0
  %arraydecay2.i139 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t6, i64 0, i64 0, i64 0
  call void @mp_sub751_p2(i64* nonnull %arraydecay.i138, i64* nonnull %arraydecay2.i139, i64* nonnull %arraydecay17.i) #10
  %arraydecay6.i141 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t5, i64 0, i64 1, i64 0
  %arraydecay8.i142 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t6, i64 0, i64 1, i64 0
  call void @mp_sub751_p2(i64* nonnull %arraydecay6.i141, i64* nonnull %arraydecay8.i142, i64* nonnull %arraydecay22.i) #10
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay9, [12 x i64]* nonnull %arraydecay4, [12 x i64]* nonnull %arraydecay9)
  call void @fpadd751(i64* nonnull %arraydecay17.i93, i64* nonnull %arraydecay4.i80, i64* nonnull %arraydecay17.i) #10
  call void @fpadd751(i64* nonnull %arraydecay22.i95, i64* nonnull %arraydecay10.i83, i64* nonnull %arraydecay22.i) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %7) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %8) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %9) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay17.i, i64* nonnull %arraydecay22.i, i64* nonnull %arraydecay3.i) #10
  call void @mp_sub751_p4(i64* nonnull %arraydecay17.i, i64* nonnull %arraydecay22.i, i64* nonnull %arraydecay8.i77) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay17.i, i64* nonnull %arraydecay17.i, i64* nonnull %arraydecay13.i) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i77, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay17.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay22.i, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay22.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %9) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %7) #10
  %arraydecay57 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay16, [12 x i64]* nonnull %arraydecay4, [12 x i64]* %arraydecay57)
  call void @fpsub751(i64* nonnull %arraydecay17.i93, i64* nonnull %arraydecay4.i80, i64* nonnull %arraydecay4.i80) #10
  call void @fpsub751(i64* nonnull %arraydecay22.i95, i64* nonnull %arraydecay10.i83, i64* nonnull %arraydecay10.i83) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %7) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %8) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %9) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i80, i64* nonnull %arraydecay10.i83, i64* nonnull %arraydecay3.i) #10
  call void @mp_sub751_p4(i64* nonnull %arraydecay4.i80, i64* nonnull %arraydecay10.i83, i64* nonnull %arraydecay8.i77) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i80, i64* nonnull %arraydecay4.i80, i64* nonnull %arraydecay13.i) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i77, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay4.i80) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay10.i83, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay10.i83) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %9) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %7) #10
  %arraydecay66 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 0
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay2, [12 x i64]* nonnull %arraydecay9, [12 x i64]* nonnull %arraydecay66)
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @xTPLe(%struct.point_proj* nocapture readonly %P, %struct.point_proj* %Q, [12 x i64]* %A24minus, [12 x i64]* %A24plus, i32 %e) local_unnamed_addr #4 {
entry:
  %arrayidx.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 0
  %0 = load i64, i64* %arrayidx.i, align 8, !tbaa !3
  %arrayidx2.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 0
  store i64 %0, i64* %arrayidx2.i, align 8, !tbaa !3
  %arrayidx.i.1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 1
  %1 = load i64, i64* %arrayidx.i.1, align 8, !tbaa !3
  %arrayidx2.i.1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 1
  store i64 %1, i64* %arrayidx2.i.1, align 8, !tbaa !3
  %arrayidx.i.2 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 2
  %2 = load i64, i64* %arrayidx.i.2, align 8, !tbaa !3
  %arrayidx2.i.2 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 2
  store i64 %2, i64* %arrayidx2.i.2, align 8, !tbaa !3
  %arrayidx.i.3 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 3
  %3 = load i64, i64* %arrayidx.i.3, align 8, !tbaa !3
  %arrayidx2.i.3 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 3
  store i64 %3, i64* %arrayidx2.i.3, align 8, !tbaa !3
  %arrayidx.i.4 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 4
  %4 = load i64, i64* %arrayidx.i.4, align 8, !tbaa !3
  %arrayidx2.i.4 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 4
  store i64 %4, i64* %arrayidx2.i.4, align 8, !tbaa !3
  %arrayidx.i.5 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 5
  %5 = load i64, i64* %arrayidx.i.5, align 8, !tbaa !3
  %arrayidx2.i.5 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 5
  store i64 %5, i64* %arrayidx2.i.5, align 8, !tbaa !3
  %arrayidx.i.6 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 6
  %6 = load i64, i64* %arrayidx.i.6, align 8, !tbaa !3
  %arrayidx2.i.6 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 6
  store i64 %6, i64* %arrayidx2.i.6, align 8, !tbaa !3
  %arrayidx.i.7 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 7
  %7 = load i64, i64* %arrayidx.i.7, align 8, !tbaa !3
  %arrayidx2.i.7 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 7
  store i64 %7, i64* %arrayidx2.i.7, align 8, !tbaa !3
  %arrayidx.i.8 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 8
  %8 = load i64, i64* %arrayidx.i.8, align 8, !tbaa !3
  %arrayidx2.i.8 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 8
  store i64 %8, i64* %arrayidx2.i.8, align 8, !tbaa !3
  %arrayidx.i.9 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 9
  %9 = load i64, i64* %arrayidx.i.9, align 8, !tbaa !3
  %arrayidx2.i.9 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 9
  store i64 %9, i64* %arrayidx2.i.9, align 8, !tbaa !3
  %arrayidx.i.10 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 10
  %10 = load i64, i64* %arrayidx.i.10, align 8, !tbaa !3
  %arrayidx2.i.10 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 10
  store i64 %10, i64* %arrayidx2.i.10, align 8, !tbaa !3
  %arrayidx.i.11 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 11
  %11 = load i64, i64* %arrayidx.i.11, align 8, !tbaa !3
  %arrayidx2.i.11 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 11
  store i64 %11, i64* %arrayidx2.i.11, align 8, !tbaa !3
  %arrayidx.i.12 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 12
  %12 = load i64, i64* %arrayidx.i.12, align 8, !tbaa !3
  %arrayidx2.i.12 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 12
  store i64 %12, i64* %arrayidx2.i.12, align 8, !tbaa !3
  %arrayidx.i.13 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 13
  %13 = load i64, i64* %arrayidx.i.13, align 8, !tbaa !3
  %arrayidx2.i.13 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 13
  store i64 %13, i64* %arrayidx2.i.13, align 8, !tbaa !3
  %arrayidx.i.14 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 14
  %14 = load i64, i64* %arrayidx.i.14, align 8, !tbaa !3
  %arrayidx2.i.14 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 14
  store i64 %14, i64* %arrayidx2.i.14, align 8, !tbaa !3
  %arrayidx.i.15 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 15
  %15 = load i64, i64* %arrayidx.i.15, align 8, !tbaa !3
  %arrayidx2.i.15 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 15
  store i64 %15, i64* %arrayidx2.i.15, align 8, !tbaa !3
  %arrayidx.i.16 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 16
  %16 = load i64, i64* %arrayidx.i.16, align 8, !tbaa !3
  %arrayidx2.i.16 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 16
  store i64 %16, i64* %arrayidx2.i.16, align 8, !tbaa !3
  %arrayidx.i.17 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 17
  %17 = load i64, i64* %arrayidx.i.17, align 8, !tbaa !3
  %arrayidx2.i.17 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 17
  store i64 %17, i64* %arrayidx2.i.17, align 8, !tbaa !3
  %arrayidx.i.18 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 18
  %18 = load i64, i64* %arrayidx.i.18, align 8, !tbaa !3
  %arrayidx2.i.18 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 18
  store i64 %18, i64* %arrayidx2.i.18, align 8, !tbaa !3
  %arrayidx.i.19 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 19
  %19 = load i64, i64* %arrayidx.i.19, align 8, !tbaa !3
  %arrayidx2.i.19 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 19
  store i64 %19, i64* %arrayidx2.i.19, align 8, !tbaa !3
  %arrayidx.i.20 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 20
  %20 = load i64, i64* %arrayidx.i.20, align 8, !tbaa !3
  %arrayidx2.i.20 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 20
  store i64 %20, i64* %arrayidx2.i.20, align 8, !tbaa !3
  %arrayidx.i.21 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 21
  %21 = load i64, i64* %arrayidx.i.21, align 8, !tbaa !3
  %arrayidx2.i.21 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 21
  store i64 %21, i64* %arrayidx2.i.21, align 8, !tbaa !3
  %arrayidx.i.22 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 22
  %22 = load i64, i64* %arrayidx.i.22, align 8, !tbaa !3
  %arrayidx2.i.22 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 22
  store i64 %22, i64* %arrayidx2.i.22, align 8, !tbaa !3
  %arrayidx.i.23 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 23
  %23 = load i64, i64* %arrayidx.i.23, align 8, !tbaa !3
  %arrayidx2.i.23 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 23
  store i64 %23, i64* %arrayidx2.i.23, align 8, !tbaa !3
  %arrayidx.i.24 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 24
  %24 = load i64, i64* %arrayidx.i.24, align 8, !tbaa !3
  %arrayidx2.i.24 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 24
  store i64 %24, i64* %arrayidx2.i.24, align 8, !tbaa !3
  %arrayidx.i.25 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 25
  %25 = load i64, i64* %arrayidx.i.25, align 8, !tbaa !3
  %arrayidx2.i.25 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 25
  store i64 %25, i64* %arrayidx2.i.25, align 8, !tbaa !3
  %arrayidx.i.26 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 26
  %26 = load i64, i64* %arrayidx.i.26, align 8, !tbaa !3
  %arrayidx2.i.26 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 26
  store i64 %26, i64* %arrayidx2.i.26, align 8, !tbaa !3
  %arrayidx.i.27 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 27
  %27 = load i64, i64* %arrayidx.i.27, align 8, !tbaa !3
  %arrayidx2.i.27 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 27
  store i64 %27, i64* %arrayidx2.i.27, align 8, !tbaa !3
  %arrayidx.i.28 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 28
  %28 = load i64, i64* %arrayidx.i.28, align 8, !tbaa !3
  %arrayidx2.i.28 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 28
  store i64 %28, i64* %arrayidx2.i.28, align 8, !tbaa !3
  %arrayidx.i.29 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 29
  %29 = load i64, i64* %arrayidx.i.29, align 8, !tbaa !3
  %arrayidx2.i.29 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 29
  store i64 %29, i64* %arrayidx2.i.29, align 8, !tbaa !3
  %arrayidx.i.30 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 30
  %30 = load i64, i64* %arrayidx.i.30, align 8, !tbaa !3
  %arrayidx2.i.30 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 30
  store i64 %30, i64* %arrayidx2.i.30, align 8, !tbaa !3
  %arrayidx.i.31 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 31
  %31 = load i64, i64* %arrayidx.i.31, align 8, !tbaa !3
  %arrayidx2.i.31 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 31
  store i64 %31, i64* %arrayidx2.i.31, align 8, !tbaa !3
  %arrayidx.i.32 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 32
  %32 = load i64, i64* %arrayidx.i.32, align 8, !tbaa !3
  %arrayidx2.i.32 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 32
  store i64 %32, i64* %arrayidx2.i.32, align 8, !tbaa !3
  %arrayidx.i.33 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 33
  %33 = load i64, i64* %arrayidx.i.33, align 8, !tbaa !3
  %arrayidx2.i.33 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 33
  store i64 %33, i64* %arrayidx2.i.33, align 8, !tbaa !3
  %arrayidx.i.34 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 34
  %34 = load i64, i64* %arrayidx.i.34, align 8, !tbaa !3
  %arrayidx2.i.34 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 34
  store i64 %34, i64* %arrayidx2.i.34, align 8, !tbaa !3
  %arrayidx.i.35 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 35
  %35 = load i64, i64* %arrayidx.i.35, align 8, !tbaa !3
  %arrayidx2.i.35 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 35
  store i64 %35, i64* %arrayidx2.i.35, align 8, !tbaa !3
  %arrayidx.i.36 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 36
  %36 = load i64, i64* %arrayidx.i.36, align 8, !tbaa !3
  %arrayidx2.i.36 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 36
  store i64 %36, i64* %arrayidx2.i.36, align 8, !tbaa !3
  %arrayidx.i.37 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 37
  %37 = load i64, i64* %arrayidx.i.37, align 8, !tbaa !3
  %arrayidx2.i.37 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 37
  store i64 %37, i64* %arrayidx2.i.37, align 8, !tbaa !3
  %arrayidx.i.38 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 38
  %38 = load i64, i64* %arrayidx.i.38, align 8, !tbaa !3
  %arrayidx2.i.38 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 38
  store i64 %38, i64* %arrayidx2.i.38, align 8, !tbaa !3
  %arrayidx.i.39 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 39
  %39 = load i64, i64* %arrayidx.i.39, align 8, !tbaa !3
  %arrayidx2.i.39 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 39
  store i64 %39, i64* %arrayidx2.i.39, align 8, !tbaa !3
  %arrayidx.i.40 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 40
  %40 = load i64, i64* %arrayidx.i.40, align 8, !tbaa !3
  %arrayidx2.i.40 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 40
  store i64 %40, i64* %arrayidx2.i.40, align 8, !tbaa !3
  %arrayidx.i.41 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 41
  %41 = load i64, i64* %arrayidx.i.41, align 8, !tbaa !3
  %arrayidx2.i.41 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 41
  store i64 %41, i64* %arrayidx2.i.41, align 8, !tbaa !3
  %arrayidx.i.42 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 42
  %42 = load i64, i64* %arrayidx.i.42, align 8, !tbaa !3
  %arrayidx2.i.42 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 42
  store i64 %42, i64* %arrayidx2.i.42, align 8, !tbaa !3
  %arrayidx.i.43 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 43
  %43 = load i64, i64* %arrayidx.i.43, align 8, !tbaa !3
  %arrayidx2.i.43 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 43
  store i64 %43, i64* %arrayidx2.i.43, align 8, !tbaa !3
  %arrayidx.i.44 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 44
  %44 = load i64, i64* %arrayidx.i.44, align 8, !tbaa !3
  %arrayidx2.i.44 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 44
  store i64 %44, i64* %arrayidx2.i.44, align 8, !tbaa !3
  %arrayidx.i.45 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 45
  %45 = load i64, i64* %arrayidx.i.45, align 8, !tbaa !3
  %arrayidx2.i.45 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 45
  store i64 %45, i64* %arrayidx2.i.45, align 8, !tbaa !3
  %arrayidx.i.46 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 46
  %46 = load i64, i64* %arrayidx.i.46, align 8, !tbaa !3
  %arrayidx2.i.46 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 46
  store i64 %46, i64* %arrayidx2.i.46, align 8, !tbaa !3
  %arrayidx.i.47 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 47
  %47 = load i64, i64* %arrayidx.i.47, align 8, !tbaa !3
  %arrayidx2.i.47 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 47
  store i64 %47, i64* %arrayidx2.i.47, align 8, !tbaa !3
  %cmp5 = icmp sgt i32 %e, 0
  br i1 %cmp5, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret void

for.body:                                         ; preds = %entry, %for.body
  %i.06 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  tail call void @xTPL(%struct.point_proj* %Q, %struct.point_proj* %Q, [12 x i64]* %A24minus, [12 x i64]* %A24plus)
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond = icmp eq i32 %inc, %e
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nounwind ssp uwtable
define void @get_3_isog(%struct.point_proj* %P, [12 x i64]* %A24minus, [12 x i64]* %A24plus, [2 x [12 x i64]]* %coeff) local_unnamed_addr #4 {
entry:
  %temp.i.i = alloca [24 x i64], align 16
  %t1.i = alloca [12 x i64], align 16
  %t2.i = alloca [12 x i64], align 16
  %t3.i = alloca [12 x i64], align 16
  %t0 = alloca [2 x [12 x i64]], align 16
  %t1 = alloca [2 x [12 x i64]], align 16
  %t2 = alloca [2 x [12 x i64]], align 16
  %t3 = alloca [2 x [12 x i64]], align 16
  %t4 = alloca [2 x [12 x i64]], align 16
  %0 = bitcast [2 x [12 x i64]]* %t0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %0) #10
  %1 = bitcast [2 x [12 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %1) #10
  %2 = bitcast [2 x [12 x i64]]* %t2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  %3 = bitcast [2 x [12 x i64]]* %t3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %3) #10
  %4 = bitcast [2 x [12 x i64]]* %t4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %4) #10
  %arraydecay.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 0, i64 0
  %arraydecay4.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %coeff, i64 0, i64 0, i64 0
  tail call void @mp_sub751_p2(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* %arraydecay4.i) #10
  %arraydecay6.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 1, i64 0
  %arraydecay8.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 1, i64 0
  %arraydecay10.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %coeff, i64 0, i64 1, i64 0
  tail call void @mp_sub751_p2(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i) #10
  %5 = bitcast [12 x i64]* %t1.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %5) #10
  %6 = bitcast [12 x i64]* %t2.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %6) #10
  %7 = bitcast [12 x i64]* %t3.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %7) #10
  %arraydecay3.i = getelementptr inbounds [12 x i64], [12 x i64]* %t1.i, i64 0, i64 0
  call fastcc void @mp_addfast(i64* %arraydecay4.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay3.i) #10
  %arraydecay8.i60 = getelementptr inbounds [12 x i64], [12 x i64]* %t2.i, i64 0, i64 0
  call void @mp_sub751_p4(i64* %arraydecay4.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay8.i60) #10
  %arraydecay13.i = getelementptr inbounds [12 x i64], [12 x i64]* %t3.i, i64 0, i64 0
  call fastcc void @mp_addfast(i64* %arraydecay4.i, i64* %arraydecay4.i, i64* nonnull %arraydecay13.i) #10
  %arraydecay17.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t0, i64 0, i64 0, i64 0
  %8 = bitcast [24 x i64]* %temp.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %8) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %8, i8 0, i64 192, i1 false) #10
  %arraydecay.i.i = getelementptr inbounds [24 x i64], [24 x i64]* %temp.i.i, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i60, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay17.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %8) #10
  %arraydecay22.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t0, i64 0, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %8) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %8, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay22.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %5) #10
  %arraydecay4.i63 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %coeff, i64 1, i64 0, i64 0
  call fastcc void @mp_addfast(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i63) #10
  %arraydecay10.i66 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %coeff, i64 1, i64 1, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i66) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %5) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %6) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %7) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i63, i64* nonnull %arraydecay10.i66, i64* nonnull %arraydecay3.i) #10
  call void @mp_sub751_p4(i64* nonnull %arraydecay4.i63, i64* nonnull %arraydecay10.i66, i64* nonnull %arraydecay8.i60) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i63, i64* nonnull %arraydecay4.i63, i64* nonnull %arraydecay13.i) #10
  %arraydecay17.i76 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t1, i64 0, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %8) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %8, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i60, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay17.i76) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %8) #10
  %arraydecay22.i78 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t1, i64 0, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %8) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %8, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay10.i66, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay22.i78) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %5) #10
  %arraydecay19 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t3, i64 0, i64 0
  %arraydecay4.i81 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t3, i64 0, i64 0, i64 0
  call fastcc void @mp_addfast(i64* %arraydecay.i, i64* %arraydecay.i, i64* nonnull %arraydecay4.i81) #10
  %arraydecay10.i84 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t3, i64 0, i64 1, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay10.i84) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %5) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %6) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %7) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i81, i64* nonnull %arraydecay10.i84, i64* nonnull %arraydecay3.i) #10
  call void @mp_sub751_p4(i64* nonnull %arraydecay4.i81, i64* nonnull %arraydecay10.i84, i64* nonnull %arraydecay8.i60) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i81, i64* nonnull %arraydecay4.i81, i64* nonnull %arraydecay13.i) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %8) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %8, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i60, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay4.i81) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %8) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %8) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %8, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay10.i84, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay10.i84) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %5) #10
  %arraydecay24 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t2, i64 0, i64 0
  %arraydecay4.i99 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t2, i64 0, i64 0, i64 0
  call void @fpsub751(i64* nonnull %arraydecay4.i81, i64* nonnull %arraydecay17.i, i64* nonnull %arraydecay4.i99) #10
  %arraydecay10.i102 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t2, i64 0, i64 1, i64 0
  call void @fpsub751(i64* nonnull %arraydecay10.i84, i64* nonnull %arraydecay22.i, i64* nonnull %arraydecay10.i102) #10
  call void @fpsub751(i64* nonnull %arraydecay4.i81, i64* nonnull %arraydecay17.i76, i64* nonnull %arraydecay4.i81) #10
  call void @fpsub751(i64* nonnull %arraydecay10.i84, i64* nonnull %arraydecay22.i78, i64* nonnull %arraydecay10.i84) #10
  %arraydecay30 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t4, i64 0, i64 0
  %arraydecay4.i111 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t4, i64 0, i64 0, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay17.i, i64* nonnull %arraydecay4.i81, i64* nonnull %arraydecay4.i111) #10
  %arraydecay10.i114 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t4, i64 0, i64 1, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay22.i, i64* nonnull %arraydecay10.i84, i64* nonnull %arraydecay10.i114) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i111, i64* nonnull %arraydecay4.i111, i64* nonnull %arraydecay4.i111) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay10.i114, i64* nonnull %arraydecay10.i114, i64* nonnull %arraydecay10.i114) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay17.i76, i64* nonnull %arraydecay4.i111, i64* nonnull %arraydecay4.i111) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay22.i78, i64* nonnull %arraydecay10.i114, i64* nonnull %arraydecay10.i114) #10
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay24, [12 x i64]* nonnull %arraydecay30, [12 x i64]* %A24minus)
  call fastcc void @mp_addfast(i64* nonnull %arraydecay17.i76, i64* nonnull %arraydecay4.i99, i64* nonnull %arraydecay4.i111) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay22.i78, i64* nonnull %arraydecay10.i102, i64* nonnull %arraydecay10.i114) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i111, i64* nonnull %arraydecay4.i111, i64* nonnull %arraydecay4.i111) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay10.i114, i64* nonnull %arraydecay10.i114, i64* nonnull %arraydecay10.i114) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay17.i, i64* nonnull %arraydecay4.i111, i64* nonnull %arraydecay4.i111) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay22.i, i64* nonnull %arraydecay10.i114, i64* nonnull %arraydecay10.i114) #10
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay19, [12 x i64]* nonnull %arraydecay30, [12 x i64]* %A24plus)
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @eval_3_isog(%struct.point_proj* %Q, [2 x [12 x i64]]* %coeff) local_unnamed_addr #4 {
entry:
  %temp.i.i = alloca [24 x i64], align 16
  %t1.i = alloca [12 x i64], align 16
  %t2.i = alloca [12 x i64], align 16
  %t3.i = alloca [12 x i64], align 16
  %t0 = alloca [2 x [12 x i64]], align 16
  %t1 = alloca [2 x [12 x i64]], align 16
  %t2 = alloca [2 x [12 x i64]], align 16
  %0 = bitcast [2 x [12 x i64]]* %t0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %0) #10
  %1 = bitcast [2 x [12 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %1) #10
  %2 = bitcast [2 x [12 x i64]]* %t2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  %arraydecay = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0
  %arraydecay1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 0
  %arraydecay2 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t0, i64 0, i64 0
  %arraydecay.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds [12 x i64], [12 x i64]* %arraydecay1, i64 0, i64 0
  %arraydecay4.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t0, i64 0, i64 0, i64 0
  call fastcc void @mp_addfast(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i) #10
  %arraydecay6.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 1, i64 0
  %arraydecay8.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 1, i64 0
  %arraydecay10.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t0, i64 0, i64 1, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i) #10
  %arraydecay7 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t1, i64 0, i64 0
  %arraydecay4.i45 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t1, i64 0, i64 0, i64 0
  call void @mp_sub751_p2(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i45) #10
  %arraydecay10.i48 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t1, i64 0, i64 1, i64 0
  call void @mp_sub751_p2(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i48) #10
  %arraydecay8 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %coeff, i64 0, i64 0
  call void @fp2mul751_mont([12 x i64]* %arraydecay8, [12 x i64]* nonnull %arraydecay2, [12 x i64]* nonnull %arraydecay2)
  %arraydecay12 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %coeff, i64 1, i64 0
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay12, [12 x i64]* nonnull %arraydecay7, [12 x i64]* nonnull %arraydecay7)
  %arraydecay17 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t2, i64 0, i64 0
  %arraydecay4.i51 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t2, i64 0, i64 0, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i45, i64* nonnull %arraydecay4.i51) #10
  %arraydecay10.i54 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t2, i64 0, i64 1, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i48, i64* nonnull %arraydecay10.i54) #10
  call void @mp_sub751_p2(i64* nonnull %arraydecay4.i45, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i) #10
  call void @mp_sub751_p2(i64* nonnull %arraydecay10.i48, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i) #10
  %3 = bitcast [12 x i64]* %t1.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %3) #10
  %4 = bitcast [12 x i64]* %t2.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %4) #10
  %5 = bitcast [12 x i64]* %t3.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %5) #10
  %arraydecay3.i = getelementptr inbounds [12 x i64], [12 x i64]* %t1.i, i64 0, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i51, i64* nonnull %arraydecay10.i54, i64* nonnull %arraydecay3.i) #10
  %arraydecay8.i63 = getelementptr inbounds [12 x i64], [12 x i64]* %t2.i, i64 0, i64 0
  call void @mp_sub751_p4(i64* nonnull %arraydecay4.i51, i64* nonnull %arraydecay10.i54, i64* nonnull %arraydecay8.i63) #10
  %arraydecay13.i = getelementptr inbounds [12 x i64], [12 x i64]* %t3.i, i64 0, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i51, i64* nonnull %arraydecay4.i51, i64* nonnull %arraydecay13.i) #10
  %6 = bitcast [24 x i64]* %temp.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %6) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %6, i8 0, i64 192, i1 false) #10
  %arraydecay.i.i = getelementptr inbounds [24 x i64], [24 x i64]* %temp.i.i, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i63, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay4.i51) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %6) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %6) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %6, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay10.i54, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay10.i54) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %3) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %3) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %4) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %5) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay3.i) #10
  call void @mp_sub751_p4(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay8.i63) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay13.i) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %6) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %6, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i63, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay4.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %6) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %6) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %6, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay10.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %3) #10
  call void @fp2mul751_mont([12 x i64]* %arraydecay, [12 x i64]* nonnull %arraydecay17, [12 x i64]* %arraydecay)
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay1, [12 x i64]* nonnull %arraydecay2, [12 x i64]* nonnull %arraydecay1)
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @inv_3_way([12 x i64]* %z1, [12 x i64]* %z2, [12 x i64]* %z3) local_unnamed_addr #4 {
entry:
  %t0 = alloca [2 x [12 x i64]], align 16
  %t1 = alloca [2 x [12 x i64]], align 16
  %t2 = alloca [2 x [12 x i64]], align 16
  %0 = bitcast [2 x [12 x i64]]* %t0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %0) #10
  %1 = bitcast [2 x [12 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %1) #10
  %2 = bitcast [2 x [12 x i64]]* %t2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  %arraydecay = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t0, i64 0, i64 0
  call void @fp2mul751_mont([12 x i64]* %z1, [12 x i64]* %z2, [12 x i64]* nonnull %arraydecay)
  %arraydecay2 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t1, i64 0, i64 0
  call void @fp2mul751_mont([12 x i64]* %z3, [12 x i64]* nonnull %arraydecay, [12 x i64]* nonnull %arraydecay2)
  call void @fp2inv751_mont([12 x i64]* nonnull %arraydecay2)
  %arraydecay5 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t2, i64 0, i64 0
  call void @fp2mul751_mont([12 x i64]* %z3, [12 x i64]* nonnull %arraydecay2, [12 x i64]* nonnull %arraydecay5)
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay, [12 x i64]* nonnull %arraydecay2, [12 x i64]* %z3)
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay5, [12 x i64]* %z2, [12 x i64]* nonnull %arraydecay)
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay5, [12 x i64]* %z1, [12 x i64]* %z2)
  %3 = bitcast [2 x [12 x i64]]* %t0 to <4 x i64>*
  %4 = load <4 x i64>, <4 x i64>* %3, align 16, !tbaa !3
  %5 = bitcast [12 x i64]* %z1 to <4 x i64>*
  store <4 x i64> %4, <4 x i64>* %5, align 8, !tbaa !3
  %arrayidx.4.i.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t0, i64 0, i64 0, i64 4
  %arrayidx2.4.i.i = getelementptr inbounds [12 x i64], [12 x i64]* %z1, i64 0, i64 4
  %6 = bitcast i64* %arrayidx.4.i.i to <4 x i64>*
  %7 = load <4 x i64>, <4 x i64>* %6, align 16, !tbaa !3
  %8 = bitcast i64* %arrayidx2.4.i.i to <4 x i64>*
  store <4 x i64> %7, <4 x i64>* %8, align 8, !tbaa !3
  %arrayidx.8.i.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t0, i64 0, i64 0, i64 8
  %arrayidx2.8.i.i = getelementptr inbounds [12 x i64], [12 x i64]* %z1, i64 0, i64 8
  %9 = bitcast i64* %arrayidx.8.i.i to <4 x i64>*
  %10 = load <4 x i64>, <4 x i64>* %9, align 16, !tbaa !3
  %11 = bitcast i64* %arrayidx2.8.i.i to <4 x i64>*
  store <4 x i64> %10, <4 x i64>* %11, align 8, !tbaa !3
  %arraydecay4.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t0, i64 0, i64 1, i64 0
  %arraydecay6.i = getelementptr inbounds [12 x i64], [12 x i64]* %z1, i64 1, i64 0
  %12 = bitcast i64* %arraydecay4.i to <4 x i64>*
  %13 = load <4 x i64>, <4 x i64>* %12, align 16, !tbaa !3
  %14 = bitcast i64* %arraydecay6.i to <4 x i64>*
  store <4 x i64> %13, <4 x i64>* %14, align 8, !tbaa !3
  %arrayidx.4.i15.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t0, i64 0, i64 1, i64 4
  %arrayidx2.4.i16.i = getelementptr inbounds [12 x i64], [12 x i64]* %z1, i64 1, i64 4
  %15 = bitcast i64* %arrayidx.4.i15.i to <4 x i64>*
  %16 = load <4 x i64>, <4 x i64>* %15, align 16, !tbaa !3
  %17 = bitcast i64* %arrayidx2.4.i16.i to <4 x i64>*
  store <4 x i64> %16, <4 x i64>* %17, align 8, !tbaa !3
  %arrayidx.8.i23.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t0, i64 0, i64 1, i64 8
  %arrayidx2.8.i24.i = getelementptr inbounds [12 x i64], [12 x i64]* %z1, i64 1, i64 8
  %18 = bitcast i64* %arrayidx.8.i23.i to <4 x i64>*
  %19 = load <4 x i64>, <4 x i64>* %18, align 16, !tbaa !3
  %20 = bitcast i64* %arrayidx2.8.i24.i to <4 x i64>*
  store <4 x i64> %19, <4 x i64>* %20, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @get_A([12 x i64]* %xP, [12 x i64]* %xQ, [12 x i64]* %xR, [12 x i64]* %A) local_unnamed_addr #4 {
entry:
  %temp.i.i = alloca [24 x i64], align 16
  %t1.i = alloca [12 x i64], align 16
  %t2.i = alloca [12 x i64], align 16
  %t3.i = alloca [12 x i64], align 16
  %t0 = alloca [2 x [12 x i64]], align 16
  %t1 = alloca [2 x [12 x i64]], align 16
  %one = alloca [2 x [12 x i64]], align 16
  %0 = bitcast [2 x [12 x i64]]* %t0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %0) #10
  %1 = bitcast [2 x [12 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %1) #10
  %2 = bitcast [2 x [12 x i64]]* %one to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  %3 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %one, i64 0, i64 1
  %4 = bitcast [12 x i64]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %4, i8 0, i64 96, i1 false)
  %arraydecay = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %one, i64 0, i64 0, i64 0
  store i64 149933, i64* %arraydecay, align 16, !tbaa !3
  %arrayidx2.1.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %one, i64 0, i64 0, i64 1
  %arrayidx2.5.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %one, i64 0, i64 0, i64 5
  %5 = bitcast i64* %arrayidx2.1.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 32, i1 false)
  %6 = bitcast i64* %arrayidx2.5.i to <4 x i64>*
  store <4 x i64> <i64 -9002695655113621504, i64 6136068611055053926, i64 7599709743867700432, i64 -3990831716756599250>, <4 x i64>* %6, align 8, !tbaa !3
  %arrayidx2.9.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %one, i64 0, i64 0, i64 9
  store i64 5522737203492907350, i64* %arrayidx2.9.i, align 8, !tbaa !3
  %arrayidx2.10.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %one, i64 0, i64 0, i64 10
  store i64 1222606818372667369, i64* %arrayidx2.10.i, align 16, !tbaa !3
  %arrayidx2.11.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %one, i64 0, i64 0, i64 11
  store i64 49869481633250, i64* %arrayidx2.11.i, align 8, !tbaa !3
  %arraydecay1 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t1, i64 0, i64 0
  %arraydecay.i33 = getelementptr inbounds [12 x i64], [12 x i64]* %xP, i64 0, i64 0
  %arraydecay2.i34 = getelementptr inbounds [12 x i64], [12 x i64]* %xQ, i64 0, i64 0
  %arraydecay4.i35 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t1, i64 0, i64 0, i64 0
  call void @fpadd751(i64* %arraydecay.i33, i64* %arraydecay2.i34, i64* nonnull %arraydecay4.i35) #10
  %arraydecay6.i36 = getelementptr inbounds [12 x i64], [12 x i64]* %xP, i64 1, i64 0
  %arraydecay8.i37 = getelementptr inbounds [12 x i64], [12 x i64]* %xQ, i64 1, i64 0
  %arraydecay10.i38 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t1, i64 0, i64 1, i64 0
  call void @fpadd751(i64* nonnull %arraydecay6.i36, i64* nonnull %arraydecay8.i37, i64* nonnull %arraydecay10.i38) #10
  %arraydecay2 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t0, i64 0, i64 0
  call void @fp2mul751_mont([12 x i64]* %xP, [12 x i64]* %xQ, [12 x i64]* nonnull %arraydecay2)
  call void @fp2mul751_mont([12 x i64]* %xR, [12 x i64]* nonnull %arraydecay1, [12 x i64]* %A)
  %arraydecay.i39 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t0, i64 0, i64 0, i64 0
  %arraydecay2.i40 = getelementptr inbounds [12 x i64], [12 x i64]* %A, i64 0, i64 0
  call void @fpadd751(i64* nonnull %arraydecay.i39, i64* %arraydecay2.i40, i64* %arraydecay2.i40) #10
  %arraydecay6.i42 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t0, i64 0, i64 1, i64 0
  %arraydecay8.i43 = getelementptr inbounds [12 x i64], [12 x i64]* %A, i64 1, i64 0
  call void @fpadd751(i64* nonnull %arraydecay6.i42, i64* nonnull %arraydecay8.i43, i64* nonnull %arraydecay8.i43) #10
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay2, [12 x i64]* %xR, [12 x i64]* nonnull %arraydecay2)
  call void @fpsub751(i64* %arraydecay2.i40, i64* nonnull %arraydecay, i64* %arraydecay2.i40) #10
  %arraydecay8.i49 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %one, i64 0, i64 1, i64 0
  call void @fpsub751(i64* nonnull %arraydecay8.i43, i64* nonnull %arraydecay8.i49, i64* nonnull %arraydecay8.i43) #10
  call void @fpadd751(i64* nonnull %arraydecay.i39, i64* nonnull %arraydecay.i39, i64* nonnull %arraydecay.i39) #10
  call void @fpadd751(i64* nonnull %arraydecay6.i42, i64* nonnull %arraydecay6.i42, i64* nonnull %arraydecay6.i42) #10
  %arraydecay2.i58 = getelementptr inbounds [12 x i64], [12 x i64]* %xR, i64 0, i64 0
  call void @fpadd751(i64* nonnull %arraydecay4.i35, i64* %arraydecay2.i58, i64* nonnull %arraydecay4.i35) #10
  %arraydecay8.i61 = getelementptr inbounds [12 x i64], [12 x i64]* %xR, i64 1, i64 0
  call void @fpadd751(i64* nonnull %arraydecay10.i38, i64* nonnull %arraydecay8.i61, i64* nonnull %arraydecay10.i38) #10
  call void @fpadd751(i64* nonnull %arraydecay.i39, i64* nonnull %arraydecay.i39, i64* nonnull %arraydecay.i39) #10
  call void @fpadd751(i64* nonnull %arraydecay6.i42, i64* nonnull %arraydecay6.i42, i64* nonnull %arraydecay6.i42) #10
  %7 = bitcast [12 x i64]* %t1.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %7) #10
  %8 = bitcast [12 x i64]* %t2.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %8) #10
  %9 = bitcast [12 x i64]* %t3.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %9) #10
  %arraydecay3.i = getelementptr inbounds [12 x i64], [12 x i64]* %t1.i, i64 0, i64 0
  call fastcc void @mp_addfast(i64* %arraydecay2.i40, i64* nonnull %arraydecay8.i43, i64* nonnull %arraydecay3.i) #10
  %arraydecay8.i71 = getelementptr inbounds [12 x i64], [12 x i64]* %t2.i, i64 0, i64 0
  call void @mp_sub751_p4(i64* %arraydecay2.i40, i64* nonnull %arraydecay8.i43, i64* nonnull %arraydecay8.i71) #10
  %arraydecay13.i = getelementptr inbounds [12 x i64], [12 x i64]* %t3.i, i64 0, i64 0
  call fastcc void @mp_addfast(i64* %arraydecay2.i40, i64* %arraydecay2.i40, i64* nonnull %arraydecay13.i) #10
  %10 = bitcast [24 x i64]* %temp.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 192, i1 false) #10
  %arraydecay.i.i = getelementptr inbounds [24 x i64], [24 x i64]* %temp.i.i, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i71, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* %arraydecay2.i40) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay8.i43, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay8.i43) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %9) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %7) #10
  call void @fp2inv751_mont([12 x i64]* nonnull %arraydecay2)
  call void @fp2mul751_mont([12 x i64]* %A, [12 x i64]* nonnull %arraydecay2, [12 x i64]* %A)
  call void @fpsub751(i64* %arraydecay2.i40, i64* nonnull %arraydecay4.i35, i64* %arraydecay2.i40) #10
  call void @fpsub751(i64* nonnull %arraydecay8.i43, i64* nonnull %arraydecay10.i38, i64* nonnull %arraydecay8.i43) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @j_inv([12 x i64]* %A, [12 x i64]* %C, [12 x i64]* %jinv) local_unnamed_addr #4 {
entry:
  %temp.i.i = alloca [24 x i64], align 16
  %t1.i = alloca [12 x i64], align 16
  %t2.i = alloca [12 x i64], align 16
  %t3.i = alloca [12 x i64], align 16
  %t0 = alloca [2 x [12 x i64]], align 16
  %t1 = alloca [2 x [12 x i64]], align 16
  %0 = bitcast [2 x [12 x i64]]* %t0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %0) #10
  %1 = bitcast [2 x [12 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %1) #10
  %2 = bitcast [12 x i64]* %t1.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %2) #10
  %3 = bitcast [12 x i64]* %t2.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %3) #10
  %4 = bitcast [12 x i64]* %t3.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %4) #10
  %arraydecay.i = getelementptr inbounds [12 x i64], [12 x i64]* %A, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds [12 x i64], [12 x i64]* %A, i64 1, i64 0
  %arraydecay3.i = getelementptr inbounds [12 x i64], [12 x i64]* %t1.i, i64 0, i64 0
  call fastcc void @mp_addfast(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay3.i) #10
  %arraydecay8.i = getelementptr inbounds [12 x i64], [12 x i64]* %t2.i, i64 0, i64 0
  call void @mp_sub751_p4(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay8.i) #10
  %arraydecay13.i = getelementptr inbounds [12 x i64], [12 x i64]* %t3.i, i64 0, i64 0
  call fastcc void @mp_addfast(i64* %arraydecay.i, i64* %arraydecay.i, i64* nonnull %arraydecay13.i) #10
  %arraydecay17.i = getelementptr inbounds [12 x i64], [12 x i64]* %jinv, i64 0, i64 0
  %5 = bitcast [24 x i64]* %temp.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %5, i8 0, i64 192, i1 false) #10
  %arraydecay.i.i = getelementptr inbounds [24 x i64], [24 x i64]* %temp.i.i, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* %arraydecay17.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %5) #10
  %arraydecay22.i = getelementptr inbounds [12 x i64], [12 x i64]* %jinv, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %5, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay22.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %2) #10
  %arraydecay = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %3) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %4) #10
  %arraydecay.i43 = getelementptr inbounds [12 x i64], [12 x i64]* %C, i64 0, i64 0
  %arraydecay2.i44 = getelementptr inbounds [12 x i64], [12 x i64]* %C, i64 1, i64 0
  call fastcc void @mp_addfast(i64* %arraydecay.i43, i64* nonnull %arraydecay2.i44, i64* nonnull %arraydecay3.i) #10
  call void @mp_sub751_p4(i64* %arraydecay.i43, i64* nonnull %arraydecay2.i44, i64* nonnull %arraydecay8.i) #10
  call fastcc void @mp_addfast(i64* %arraydecay.i43, i64* %arraydecay.i43, i64* nonnull %arraydecay13.i) #10
  %arraydecay17.i48 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t1, i64 0, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %5, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay17.i48) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %5) #10
  %arraydecay22.i50 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t1, i64 0, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %5, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay2.i44, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay22.i50) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %2) #10
  %arraydecay3 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t0, i64 0, i64 0
  %arraydecay4.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t0, i64 0, i64 0, i64 0
  call void @fpadd751(i64* nonnull %arraydecay17.i48, i64* nonnull %arraydecay17.i48, i64* nonnull %arraydecay4.i) #10
  %arraydecay10.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t0, i64 0, i64 1, i64 0
  call void @fpadd751(i64* nonnull %arraydecay22.i50, i64* nonnull %arraydecay22.i50, i64* nonnull %arraydecay10.i) #10
  call void @fpsub751(i64* %arraydecay17.i, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i) #10
  call void @fpsub751(i64* nonnull %arraydecay22.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i) #10
  call void @fpsub751(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay17.i48, i64* nonnull %arraydecay4.i) #10
  call void @fpsub751(i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay22.i50, i64* nonnull %arraydecay10.i) #10
  call void @fpsub751(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay17.i48, i64* %arraydecay17.i) #10
  call void @fpsub751(i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay22.i50, i64* nonnull %arraydecay22.i) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %3) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %4) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay17.i48, i64* nonnull %arraydecay22.i50, i64* nonnull %arraydecay3.i) #10
  call void @mp_sub751_p4(i64* nonnull %arraydecay17.i48, i64* nonnull %arraydecay22.i50, i64* nonnull %arraydecay8.i) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay17.i48, i64* nonnull %arraydecay17.i48, i64* nonnull %arraydecay13.i) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %5, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay17.i48) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %5, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay22.i50, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay22.i50) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %2) #10
  call void @fp2mul751_mont([12 x i64]* %jinv, [12 x i64]* nonnull %arraydecay, [12 x i64]* %jinv)
  call void @fpadd751(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i) #10
  call void @fpadd751(i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i) #10
  call void @fpadd751(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i) #10
  call void @fpadd751(i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %3) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %4) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay3.i) #10
  call void @mp_sub751_p4(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay8.i) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay13.i) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %5, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay17.i48) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %5, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay22.i50) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %2) #10
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay3, [12 x i64]* nonnull %arraydecay, [12 x i64]* nonnull %arraydecay3)
  call void @fpadd751(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i) #10
  call void @fpadd751(i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i) #10
  call void @fpadd751(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i) #10
  call void @fpadd751(i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i) #10
  call void @fp2inv751_mont([12 x i64]* %jinv)
  call void @fp2mul751_mont([12 x i64]* %jinv, [12 x i64]* nonnull %arraydecay3, [12 x i64]* %jinv)
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @xDBLADD(%struct.point_proj* %P, %struct.point_proj* %Q, [12 x i64]* %XPQ, [12 x i64]* %ZPQ, [12 x i64]* %A24) local_unnamed_addr #4 {
entry:
  %temp.i.i = alloca [24 x i64], align 16
  %t1.i = alloca [12 x i64], align 16
  %t2.i = alloca [12 x i64], align 16
  %t3.i = alloca [12 x i64], align 16
  %t0 = alloca [2 x [12 x i64]], align 16
  %t1 = alloca [2 x [12 x i64]], align 16
  %t2 = alloca [2 x [12 x i64]], align 16
  %0 = bitcast [2 x [12 x i64]]* %t0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %0) #10
  %1 = bitcast [2 x [12 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %1) #10
  %2 = bitcast [2 x [12 x i64]]* %t2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  %arraydecay = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0
  %arraydecay1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 0
  %arraydecay2 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t0, i64 0, i64 0
  %arraydecay.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds [12 x i64], [12 x i64]* %arraydecay1, i64 0, i64 0
  %arraydecay4.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t0, i64 0, i64 0, i64 0
  call fastcc void @mp_addfast(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i) #10
  %arraydecay6.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 1, i64 0
  %arraydecay8.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 1, i64 0
  %arraydecay10.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t0, i64 0, i64 1, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i) #10
  %arraydecay7 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t1, i64 0, i64 0
  %arraydecay4.i114 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t1, i64 0, i64 0, i64 0
  call void @mp_sub751_p2(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i114) #10
  %arraydecay10.i117 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t1, i64 0, i64 1, i64 0
  call void @mp_sub751_p2(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i117) #10
  %3 = bitcast [12 x i64]* %t1.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %3) #10
  %4 = bitcast [12 x i64]* %t2.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %4) #10
  %5 = bitcast [12 x i64]* %t3.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %5) #10
  %arraydecay3.i = getelementptr inbounds [12 x i64], [12 x i64]* %t1.i, i64 0, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay3.i) #10
  %arraydecay8.i120 = getelementptr inbounds [12 x i64], [12 x i64]* %t2.i, i64 0, i64 0
  call void @mp_sub751_p4(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay8.i120) #10
  %arraydecay13.i = getelementptr inbounds [12 x i64], [12 x i64]* %t3.i, i64 0, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay13.i) #10
  %6 = bitcast [24 x i64]* %temp.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %6) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %6, i8 0, i64 192, i1 false) #10
  %arraydecay.i.i = getelementptr inbounds [24 x i64], [24 x i64]* %temp.i.i, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i120, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* %arraydecay.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %6) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %6) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %6, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay6.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %3) #10
  %arraydecay12 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0
  %arraydecay14 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 0
  %arraydecay15 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t2, i64 0, i64 0
  %arraydecay.i121 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 0
  %arraydecay2.i122 = getelementptr inbounds [12 x i64], [12 x i64]* %arraydecay14, i64 0, i64 0
  %arraydecay4.i123 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t2, i64 0, i64 0, i64 0
  call void @mp_sub751_p2(i64* %arraydecay.i121, i64* nonnull %arraydecay2.i122, i64* nonnull %arraydecay4.i123) #10
  %arraydecay6.i124 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 1, i64 0
  %arraydecay8.i125 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 1, i64 0
  %arraydecay10.i126 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t2, i64 0, i64 1, i64 0
  call void @mp_sub751_p2(i64* nonnull %arraydecay6.i124, i64* nonnull %arraydecay8.i125, i64* nonnull %arraydecay10.i126) #10
  call fastcc void @mp_addfast(i64* %arraydecay.i121, i64* nonnull %arraydecay2.i122, i64* %arraydecay.i121) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay6.i124, i64* nonnull %arraydecay8.i125, i64* nonnull %arraydecay6.i124) #10
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay2, [12 x i64]* nonnull %arraydecay15, [12 x i64]* nonnull %arraydecay2)
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %3) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %4) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %5) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i114, i64* nonnull %arraydecay10.i117, i64* nonnull %arraydecay3.i) #10
  call void @mp_sub751_p4(i64* nonnull %arraydecay4.i114, i64* nonnull %arraydecay10.i117, i64* nonnull %arraydecay8.i120) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i114, i64* nonnull %arraydecay4.i114, i64* nonnull %arraydecay13.i) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %6) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %6, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i120, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay2.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %6) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %6) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %6, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay10.i117, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay8.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %3) #10
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay7, [12 x i64]* %arraydecay12, [12 x i64]* nonnull %arraydecay7)
  call void @mp_sub751_p2(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i123) #10
  call void @mp_sub751_p2(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i126) #10
  call void @fp2mul751_mont([12 x i64]* %arraydecay, [12 x i64]* nonnull %arraydecay1, [12 x i64]* %arraydecay)
  call void @fp2mul751_mont([12 x i64]* %A24, [12 x i64]* nonnull %arraydecay15, [12 x i64]* %arraydecay12)
  call void @mp_sub751_p2(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i114, i64* nonnull %arraydecay2.i122) #10
  call void @mp_sub751_p2(i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i117, i64* nonnull %arraydecay8.i125) #10
  call fastcc void @mp_addfast(i64* %arraydecay.i121, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay2.i) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay6.i124, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay8.i) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i114, i64* %arraydecay.i121) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i117, i64* nonnull %arraydecay6.i124) #10
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay1, [12 x i64]* nonnull %arraydecay15, [12 x i64]* nonnull %arraydecay1)
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %3) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %4) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %5) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay2.i122, i64* nonnull %arraydecay8.i125, i64* nonnull %arraydecay3.i) #10
  call void @mp_sub751_p4(i64* nonnull %arraydecay2.i122, i64* nonnull %arraydecay8.i125, i64* nonnull %arraydecay8.i120) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay2.i122, i64* nonnull %arraydecay2.i122, i64* nonnull %arraydecay13.i) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %6) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %6, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i120, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay2.i122) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %6) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %6) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %6, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay8.i125, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay8.i125) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %3) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %3) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %4) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %5) #10
  call fastcc void @mp_addfast(i64* %arraydecay.i121, i64* nonnull %arraydecay6.i124, i64* nonnull %arraydecay3.i) #10
  call void @mp_sub751_p4(i64* %arraydecay.i121, i64* nonnull %arraydecay6.i124, i64* nonnull %arraydecay8.i120) #10
  call fastcc void @mp_addfast(i64* %arraydecay.i121, i64* %arraydecay.i121, i64* nonnull %arraydecay13.i) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %6) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %6, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i120, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* %arraydecay.i121) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %6) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %6) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %6, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay6.i124, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay6.i124) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %3) #10
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay14, [12 x i64]* %XPQ, [12 x i64]* nonnull %arraydecay14)
  call void @fp2mul751_mont([12 x i64]* %arraydecay12, [12 x i64]* %ZPQ, [12 x i64]* %arraydecay12)
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @xTPL_fast(%struct.point_proj* %P, %struct.point_proj* %Q, [12 x i64]* %A2) local_unnamed_addr #4 {
entry:
  %temp.i.i = alloca [24 x i64], align 16
  %t1.i = alloca [12 x i64], align 16
  %t2.i = alloca [12 x i64], align 16
  %t3.i = alloca [12 x i64], align 16
  %t1 = alloca [2 x [12 x i64]], align 16
  %t2 = alloca [2 x [12 x i64]], align 16
  %t3 = alloca [2 x [12 x i64]], align 16
  %t4 = alloca [2 x [12 x i64]], align 16
  %0 = bitcast [2 x [12 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %0) #10
  %1 = bitcast [2 x [12 x i64]]* %t2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %1) #10
  %2 = bitcast [2 x [12 x i64]]* %t3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  %3 = bitcast [2 x [12 x i64]]* %t4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %3) #10
  %arraydecay = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0
  %arraydecay1 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t1, i64 0, i64 0
  %4 = bitcast [12 x i64]* %t1.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %4) #10
  %5 = bitcast [12 x i64]* %t2.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %5) #10
  %6 = bitcast [12 x i64]* %t3.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %6) #10
  %arraydecay.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 1, i64 0
  %arraydecay3.i = getelementptr inbounds [12 x i64], [12 x i64]* %t1.i, i64 0, i64 0
  call fastcc void @mp_addfast(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay3.i) #10
  %arraydecay8.i = getelementptr inbounds [12 x i64], [12 x i64]* %t2.i, i64 0, i64 0
  call void @mp_sub751_p4(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay8.i) #10
  %arraydecay13.i = getelementptr inbounds [12 x i64], [12 x i64]* %t3.i, i64 0, i64 0
  call fastcc void @mp_addfast(i64* %arraydecay.i, i64* %arraydecay.i, i64* nonnull %arraydecay13.i) #10
  %arraydecay17.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t1, i64 0, i64 0, i64 0
  %7 = bitcast [24 x i64]* %temp.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %7) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %7, i8 0, i64 192, i1 false) #10
  %arraydecay.i.i = getelementptr inbounds [24 x i64], [24 x i64]* %temp.i.i, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay17.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %7) #10
  %arraydecay22.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t1, i64 0, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %7) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %7, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay22.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %4) #10
  %arraydecay2 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 0
  %arraydecay3 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %4) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %5) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %6) #10
  %arraydecay.i75 = getelementptr inbounds [12 x i64], [12 x i64]* %arraydecay2, i64 0, i64 0
  %arraydecay2.i76 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 1, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay.i75, i64* nonnull %arraydecay2.i76, i64* nonnull %arraydecay3.i) #10
  call void @mp_sub751_p4(i64* nonnull %arraydecay.i75, i64* nonnull %arraydecay2.i76, i64* nonnull %arraydecay8.i) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay.i75, i64* nonnull %arraydecay.i75, i64* nonnull %arraydecay13.i) #10
  %arraydecay17.i80 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t2, i64 0, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %7) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %7, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay17.i80) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %7) #10
  %arraydecay22.i82 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t2, i64 0, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %7) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %7, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay2.i76, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay22.i82) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %4) #10
  %arraydecay4.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t3, i64 0, i64 0, i64 0
  call void @fpadd751(i64* nonnull %arraydecay17.i, i64* nonnull %arraydecay17.i80, i64* nonnull %arraydecay4.i) #10
  %arraydecay10.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t3, i64 0, i64 1, i64 0
  call void @fpadd751(i64* nonnull %arraydecay22.i, i64* nonnull %arraydecay22.i82, i64* nonnull %arraydecay10.i) #10
  %arraydecay11 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t4, i64 0, i64 0
  %arraydecay4.i88 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t4, i64 0, i64 0, i64 0
  call void @fpadd751(i64* %arraydecay.i, i64* nonnull %arraydecay.i75, i64* nonnull %arraydecay4.i88) #10
  %arraydecay10.i91 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t4, i64 0, i64 1, i64 0
  call void @fpadd751(i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay2.i76, i64* nonnull %arraydecay10.i91) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %4) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %5) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %6) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i88, i64* nonnull %arraydecay10.i91, i64* nonnull %arraydecay3.i) #10
  call void @mp_sub751_p4(i64* nonnull %arraydecay4.i88, i64* nonnull %arraydecay10.i91, i64* nonnull %arraydecay8.i) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i88, i64* nonnull %arraydecay4.i88, i64* nonnull %arraydecay13.i) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %7) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %7, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay4.i88) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %7) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %7) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %7, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay10.i91, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay10.i91) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %4) #10
  call void @fpsub751(i64* nonnull %arraydecay4.i88, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i88) #10
  call void @fpsub751(i64* nonnull %arraydecay10.i91, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i91) #10
  call void @fp2mul751_mont([12 x i64]* %A2, [12 x i64]* nonnull %arraydecay11, [12 x i64]* nonnull %arraydecay11)
  call void @fpadd751(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i88, i64* nonnull %arraydecay4.i88) #10
  call void @fpadd751(i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i91, i64* nonnull %arraydecay10.i91) #10
  call void @fpsub751(i64* nonnull %arraydecay17.i, i64* nonnull %arraydecay17.i80, i64* nonnull %arraydecay4.i) #10
  call void @fpsub751(i64* nonnull %arraydecay22.i, i64* nonnull %arraydecay22.i82, i64* nonnull %arraydecay10.i) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %4) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %5) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %6) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay3.i) #10
  call void @mp_sub751_p4(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay8.i) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay13.i) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %7) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %7, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay4.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %7) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %7) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %7, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay10.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %4) #10
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay1, [12 x i64]* nonnull %arraydecay11, [12 x i64]* nonnull %arraydecay1)
  call void @fpadd751(i64* nonnull %arraydecay17.i, i64* nonnull %arraydecay17.i, i64* nonnull %arraydecay17.i) #10
  call void @fpadd751(i64* nonnull %arraydecay22.i, i64* nonnull %arraydecay22.i, i64* nonnull %arraydecay22.i) #10
  call void @fpadd751(i64* nonnull %arraydecay17.i, i64* nonnull %arraydecay17.i, i64* nonnull %arraydecay17.i) #10
  call void @fpadd751(i64* nonnull %arraydecay22.i, i64* nonnull %arraydecay22.i, i64* nonnull %arraydecay22.i) #10
  call void @fpsub751(i64* nonnull %arraydecay17.i, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay17.i) #10
  call void @fpsub751(i64* nonnull %arraydecay22.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay22.i) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %4) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %5) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %6) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay17.i, i64* nonnull %arraydecay22.i, i64* nonnull %arraydecay3.i) #10
  call void @mp_sub751_p4(i64* nonnull %arraydecay17.i, i64* nonnull %arraydecay22.i, i64* nonnull %arraydecay8.i) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay17.i, i64* nonnull %arraydecay17.i, i64* nonnull %arraydecay13.i) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %7) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %7, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay17.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %7) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %7) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %7, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay22.i, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay22.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %4) #10
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay3, [12 x i64]* nonnull %arraydecay11, [12 x i64]* nonnull %arraydecay3)
  call void @fpadd751(i64* nonnull %arraydecay17.i80, i64* nonnull %arraydecay17.i80, i64* nonnull %arraydecay17.i80) #10
  call void @fpadd751(i64* nonnull %arraydecay22.i82, i64* nonnull %arraydecay22.i82, i64* nonnull %arraydecay22.i82) #10
  call void @fpadd751(i64* nonnull %arraydecay17.i80, i64* nonnull %arraydecay17.i80, i64* nonnull %arraydecay17.i80) #10
  call void @fpadd751(i64* nonnull %arraydecay22.i82, i64* nonnull %arraydecay22.i82, i64* nonnull %arraydecay22.i82) #10
  call void @fpsub751(i64* nonnull %arraydecay17.i80, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay17.i80) #10
  call void @fpsub751(i64* nonnull %arraydecay22.i82, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay22.i82) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %4) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %5) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %6) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay17.i80, i64* nonnull %arraydecay22.i82, i64* nonnull %arraydecay3.i) #10
  call void @mp_sub751_p4(i64* nonnull %arraydecay17.i80, i64* nonnull %arraydecay22.i82, i64* nonnull %arraydecay8.i) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay17.i80, i64* nonnull %arraydecay17.i80, i64* nonnull %arraydecay13.i) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %7) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %7, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay3.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay17.i80) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %7) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %7) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %7, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13.i, i64* nonnull %arraydecay22.i82, i64* nonnull %arraydecay.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay22.i82) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %4) #10
  %arraydecay59 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0
  call void @fp2mul751_mont([12 x i64]* %arraydecay, [12 x i64]* nonnull %arraydecay3, [12 x i64]* %arraydecay59)
  %arraydecay64 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 0
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay2, [12 x i64]* nonnull %arraydecay1, [12 x i64]* nonnull %arraydecay64)
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @xTPLe_fast(%struct.point_proj* nocapture readonly %P, %struct.point_proj* %Q, [12 x i64]* %A2, i32 %e) local_unnamed_addr #4 {
entry:
  %arrayidx.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 0
  %0 = load i64, i64* %arrayidx.i, align 8, !tbaa !3
  %arrayidx2.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 0
  store i64 %0, i64* %arrayidx2.i, align 8, !tbaa !3
  %arrayidx.i.1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 1
  %1 = load i64, i64* %arrayidx.i.1, align 8, !tbaa !3
  %arrayidx2.i.1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 1
  store i64 %1, i64* %arrayidx2.i.1, align 8, !tbaa !3
  %arrayidx.i.2 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 2
  %2 = load i64, i64* %arrayidx.i.2, align 8, !tbaa !3
  %arrayidx2.i.2 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 2
  store i64 %2, i64* %arrayidx2.i.2, align 8, !tbaa !3
  %arrayidx.i.3 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 3
  %3 = load i64, i64* %arrayidx.i.3, align 8, !tbaa !3
  %arrayidx2.i.3 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 3
  store i64 %3, i64* %arrayidx2.i.3, align 8, !tbaa !3
  %arrayidx.i.4 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 4
  %4 = load i64, i64* %arrayidx.i.4, align 8, !tbaa !3
  %arrayidx2.i.4 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 4
  store i64 %4, i64* %arrayidx2.i.4, align 8, !tbaa !3
  %arrayidx.i.5 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 5
  %5 = load i64, i64* %arrayidx.i.5, align 8, !tbaa !3
  %arrayidx2.i.5 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 5
  store i64 %5, i64* %arrayidx2.i.5, align 8, !tbaa !3
  %arrayidx.i.6 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 6
  %6 = load i64, i64* %arrayidx.i.6, align 8, !tbaa !3
  %arrayidx2.i.6 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 6
  store i64 %6, i64* %arrayidx2.i.6, align 8, !tbaa !3
  %arrayidx.i.7 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 7
  %7 = load i64, i64* %arrayidx.i.7, align 8, !tbaa !3
  %arrayidx2.i.7 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 7
  store i64 %7, i64* %arrayidx2.i.7, align 8, !tbaa !3
  %arrayidx.i.8 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 8
  %8 = load i64, i64* %arrayidx.i.8, align 8, !tbaa !3
  %arrayidx2.i.8 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 8
  store i64 %8, i64* %arrayidx2.i.8, align 8, !tbaa !3
  %arrayidx.i.9 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 9
  %9 = load i64, i64* %arrayidx.i.9, align 8, !tbaa !3
  %arrayidx2.i.9 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 9
  store i64 %9, i64* %arrayidx2.i.9, align 8, !tbaa !3
  %arrayidx.i.10 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 10
  %10 = load i64, i64* %arrayidx.i.10, align 8, !tbaa !3
  %arrayidx2.i.10 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 10
  store i64 %10, i64* %arrayidx2.i.10, align 8, !tbaa !3
  %arrayidx.i.11 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 11
  %11 = load i64, i64* %arrayidx.i.11, align 8, !tbaa !3
  %arrayidx2.i.11 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 11
  store i64 %11, i64* %arrayidx2.i.11, align 8, !tbaa !3
  %arrayidx.i.12 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 12
  %12 = load i64, i64* %arrayidx.i.12, align 8, !tbaa !3
  %arrayidx2.i.12 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 12
  store i64 %12, i64* %arrayidx2.i.12, align 8, !tbaa !3
  %arrayidx.i.13 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 13
  %13 = load i64, i64* %arrayidx.i.13, align 8, !tbaa !3
  %arrayidx2.i.13 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 13
  store i64 %13, i64* %arrayidx2.i.13, align 8, !tbaa !3
  %arrayidx.i.14 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 14
  %14 = load i64, i64* %arrayidx.i.14, align 8, !tbaa !3
  %arrayidx2.i.14 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 14
  store i64 %14, i64* %arrayidx2.i.14, align 8, !tbaa !3
  %arrayidx.i.15 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 15
  %15 = load i64, i64* %arrayidx.i.15, align 8, !tbaa !3
  %arrayidx2.i.15 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 15
  store i64 %15, i64* %arrayidx2.i.15, align 8, !tbaa !3
  %arrayidx.i.16 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 16
  %16 = load i64, i64* %arrayidx.i.16, align 8, !tbaa !3
  %arrayidx2.i.16 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 16
  store i64 %16, i64* %arrayidx2.i.16, align 8, !tbaa !3
  %arrayidx.i.17 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 17
  %17 = load i64, i64* %arrayidx.i.17, align 8, !tbaa !3
  %arrayidx2.i.17 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 17
  store i64 %17, i64* %arrayidx2.i.17, align 8, !tbaa !3
  %arrayidx.i.18 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 18
  %18 = load i64, i64* %arrayidx.i.18, align 8, !tbaa !3
  %arrayidx2.i.18 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 18
  store i64 %18, i64* %arrayidx2.i.18, align 8, !tbaa !3
  %arrayidx.i.19 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 19
  %19 = load i64, i64* %arrayidx.i.19, align 8, !tbaa !3
  %arrayidx2.i.19 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 19
  store i64 %19, i64* %arrayidx2.i.19, align 8, !tbaa !3
  %arrayidx.i.20 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 20
  %20 = load i64, i64* %arrayidx.i.20, align 8, !tbaa !3
  %arrayidx2.i.20 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 20
  store i64 %20, i64* %arrayidx2.i.20, align 8, !tbaa !3
  %arrayidx.i.21 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 21
  %21 = load i64, i64* %arrayidx.i.21, align 8, !tbaa !3
  %arrayidx2.i.21 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 21
  store i64 %21, i64* %arrayidx2.i.21, align 8, !tbaa !3
  %arrayidx.i.22 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 22
  %22 = load i64, i64* %arrayidx.i.22, align 8, !tbaa !3
  %arrayidx2.i.22 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 22
  store i64 %22, i64* %arrayidx2.i.22, align 8, !tbaa !3
  %arrayidx.i.23 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 23
  %23 = load i64, i64* %arrayidx.i.23, align 8, !tbaa !3
  %arrayidx2.i.23 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 23
  store i64 %23, i64* %arrayidx2.i.23, align 8, !tbaa !3
  %arrayidx.i.24 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 24
  %24 = load i64, i64* %arrayidx.i.24, align 8, !tbaa !3
  %arrayidx2.i.24 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 24
  store i64 %24, i64* %arrayidx2.i.24, align 8, !tbaa !3
  %arrayidx.i.25 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 25
  %25 = load i64, i64* %arrayidx.i.25, align 8, !tbaa !3
  %arrayidx2.i.25 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 25
  store i64 %25, i64* %arrayidx2.i.25, align 8, !tbaa !3
  %arrayidx.i.26 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 26
  %26 = load i64, i64* %arrayidx.i.26, align 8, !tbaa !3
  %arrayidx2.i.26 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 26
  store i64 %26, i64* %arrayidx2.i.26, align 8, !tbaa !3
  %arrayidx.i.27 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 27
  %27 = load i64, i64* %arrayidx.i.27, align 8, !tbaa !3
  %arrayidx2.i.27 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 27
  store i64 %27, i64* %arrayidx2.i.27, align 8, !tbaa !3
  %arrayidx.i.28 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 28
  %28 = load i64, i64* %arrayidx.i.28, align 8, !tbaa !3
  %arrayidx2.i.28 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 28
  store i64 %28, i64* %arrayidx2.i.28, align 8, !tbaa !3
  %arrayidx.i.29 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 29
  %29 = load i64, i64* %arrayidx.i.29, align 8, !tbaa !3
  %arrayidx2.i.29 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 29
  store i64 %29, i64* %arrayidx2.i.29, align 8, !tbaa !3
  %arrayidx.i.30 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 30
  %30 = load i64, i64* %arrayidx.i.30, align 8, !tbaa !3
  %arrayidx2.i.30 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 30
  store i64 %30, i64* %arrayidx2.i.30, align 8, !tbaa !3
  %arrayidx.i.31 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 31
  %31 = load i64, i64* %arrayidx.i.31, align 8, !tbaa !3
  %arrayidx2.i.31 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 31
  store i64 %31, i64* %arrayidx2.i.31, align 8, !tbaa !3
  %arrayidx.i.32 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 32
  %32 = load i64, i64* %arrayidx.i.32, align 8, !tbaa !3
  %arrayidx2.i.32 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 32
  store i64 %32, i64* %arrayidx2.i.32, align 8, !tbaa !3
  %arrayidx.i.33 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 33
  %33 = load i64, i64* %arrayidx.i.33, align 8, !tbaa !3
  %arrayidx2.i.33 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 33
  store i64 %33, i64* %arrayidx2.i.33, align 8, !tbaa !3
  %arrayidx.i.34 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 34
  %34 = load i64, i64* %arrayidx.i.34, align 8, !tbaa !3
  %arrayidx2.i.34 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 34
  store i64 %34, i64* %arrayidx2.i.34, align 8, !tbaa !3
  %arrayidx.i.35 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 35
  %35 = load i64, i64* %arrayidx.i.35, align 8, !tbaa !3
  %arrayidx2.i.35 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 35
  store i64 %35, i64* %arrayidx2.i.35, align 8, !tbaa !3
  %arrayidx.i.36 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 36
  %36 = load i64, i64* %arrayidx.i.36, align 8, !tbaa !3
  %arrayidx2.i.36 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 36
  store i64 %36, i64* %arrayidx2.i.36, align 8, !tbaa !3
  %arrayidx.i.37 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 37
  %37 = load i64, i64* %arrayidx.i.37, align 8, !tbaa !3
  %arrayidx2.i.37 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 37
  store i64 %37, i64* %arrayidx2.i.37, align 8, !tbaa !3
  %arrayidx.i.38 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 38
  %38 = load i64, i64* %arrayidx.i.38, align 8, !tbaa !3
  %arrayidx2.i.38 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 38
  store i64 %38, i64* %arrayidx2.i.38, align 8, !tbaa !3
  %arrayidx.i.39 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 39
  %39 = load i64, i64* %arrayidx.i.39, align 8, !tbaa !3
  %arrayidx2.i.39 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 39
  store i64 %39, i64* %arrayidx2.i.39, align 8, !tbaa !3
  %arrayidx.i.40 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 40
  %40 = load i64, i64* %arrayidx.i.40, align 8, !tbaa !3
  %arrayidx2.i.40 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 40
  store i64 %40, i64* %arrayidx2.i.40, align 8, !tbaa !3
  %arrayidx.i.41 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 41
  %41 = load i64, i64* %arrayidx.i.41, align 8, !tbaa !3
  %arrayidx2.i.41 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 41
  store i64 %41, i64* %arrayidx2.i.41, align 8, !tbaa !3
  %arrayidx.i.42 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 42
  %42 = load i64, i64* %arrayidx.i.42, align 8, !tbaa !3
  %arrayidx2.i.42 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 42
  store i64 %42, i64* %arrayidx2.i.42, align 8, !tbaa !3
  %arrayidx.i.43 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 43
  %43 = load i64, i64* %arrayidx.i.43, align 8, !tbaa !3
  %arrayidx2.i.43 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 43
  store i64 %43, i64* %arrayidx2.i.43, align 8, !tbaa !3
  %arrayidx.i.44 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 44
  %44 = load i64, i64* %arrayidx.i.44, align 8, !tbaa !3
  %arrayidx2.i.44 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 44
  store i64 %44, i64* %arrayidx2.i.44, align 8, !tbaa !3
  %arrayidx.i.45 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 45
  %45 = load i64, i64* %arrayidx.i.45, align 8, !tbaa !3
  %arrayidx2.i.45 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 45
  store i64 %45, i64* %arrayidx2.i.45, align 8, !tbaa !3
  %arrayidx.i.46 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 46
  %46 = load i64, i64* %arrayidx.i.46, align 8, !tbaa !3
  %arrayidx2.i.46 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 46
  store i64 %46, i64* %arrayidx2.i.46, align 8, !tbaa !3
  %arrayidx.i.47 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 47
  %47 = load i64, i64* %arrayidx.i.47, align 8, !tbaa !3
  %arrayidx2.i.47 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 47
  store i64 %47, i64* %arrayidx2.i.47, align 8, !tbaa !3
  %cmp5 = icmp sgt i32 %e, 0
  br i1 %cmp5, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret void

for.body:                                         ; preds = %entry, %for.body
  %i.06 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  tail call void @xTPL_fast(%struct.point_proj* %Q, %struct.point_proj* %Q, [12 x i64]* %A2)
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond = icmp eq i32 %inc, %e
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nounwind ssp uwtable
define i32 @random_mod_order_A_SIDHp751(i8* %random_digits) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @randombytes(i8* %random_digits, i64 47) #10
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds i8, i8* %random_digits, i64 46
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %1 = and i8 %0, 15
  store i8 %1, i8* %arrayidx, align 1, !tbaa !7
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i32 @randombytes(i8*, i64) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define i32 @random_mod_order_B_SIDHp751(i8* %random_digits) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @randombytes(i8* %random_digits, i64 48) #10
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds i8, i8* %random_digits, i64 47
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %1 = and i8 %0, 3
  store i8 %1, i8* %arrayidx, align 1, !tbaa !7
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind ssp uwtable
define i32 @EphemeralKeyGeneration_A_SIDHp751(i8* %PrivateKeyA, i8* %PublicKeyA) local_unnamed_addr #4 {
entry:
  %temp.i.i.i.i = alloca [24 x i64], align 16
  %one.i.i.i = alloca [12 x i64], align 16
  %t.i = alloca [2 x [12 x i64]], align 16
  %R = alloca [1 x %struct.point_proj], align 16
  %phiP = alloca [1 x %struct.point_proj], align 16
  %phiQ = alloca [1 x %struct.point_proj], align 16
  %phiR = alloca [1 x %struct.point_proj], align 16
  %pts = alloca [8 x [1 x %struct.point_proj]], align 16
  %XPA = alloca [2 x [12 x i64]], align 16
  %XQA = alloca [2 x [12 x i64]], align 16
  %XRA = alloca [2 x [12 x i64]], align 16
  %coeff = alloca [3 x [2 x [12 x i64]]], align 16
  %A24plus = alloca [2 x [12 x i64]], align 16
  %C24 = alloca [2 x [12 x i64]], align 16
  %A = alloca [2 x [12 x i64]], align 16
  %pts_index = alloca [8 x i32], align 16
  %SecretKeyA = alloca [6 x i64], align 16
  %0 = bitcast [1 x %struct.point_proj]* %R to i8*
  call void @llvm.lifetime.start.p0i8(i64 384, i8* nonnull %0) #10
  %1 = bitcast [1 x %struct.point_proj]* %phiP to i8*
  call void @llvm.lifetime.start.p0i8(i64 384, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 384, i1 false)
  %2 = bitcast [1 x %struct.point_proj]* %phiQ to i8*
  call void @llvm.lifetime.start.p0i8(i64 384, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 384, i1 false)
  %3 = bitcast [1 x %struct.point_proj]* %phiR to i8*
  call void @llvm.lifetime.start.p0i8(i64 384, i8* nonnull %3) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %3, i8 0, i64 384, i1 false)
  %4 = bitcast [8 x [1 x %struct.point_proj]]* %pts to i8*
  call void @llvm.lifetime.start.p0i8(i64 3072, i8* nonnull %4) #10
  %5 = bitcast [2 x [12 x i64]]* %XPA to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %5) #10
  %6 = bitcast [2 x [12 x i64]]* %XQA to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %6) #10
  %7 = bitcast [2 x [12 x i64]]* %XRA to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %7) #10
  %8 = bitcast [3 x [2 x [12 x i64]]]* %coeff to i8*
  call void @llvm.lifetime.start.p0i8(i64 576, i8* nonnull %8) #10
  %9 = bitcast [2 x [12 x i64]]* %A24plus to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %9) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 192, i1 false)
  %10 = bitcast [2 x [12 x i64]]* %C24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 192, i1 false)
  %11 = bitcast [2 x [12 x i64]]* %A to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 192, i1 false)
  %12 = bitcast [8 x i32]* %pts_index to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %12) #10
  %13 = bitcast [6 x i64]* %SecretKeyA to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %13) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %13, i8 0, i64 48, i1 false)
  %arraydecay = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XPA, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XQA, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XRA, i64 0, i64 0
  %14 = bitcast [2 x [12 x i64]]* %XPA to <4 x i64>*
  store <4 x i64> <i64 -8624597008524461400, i64 -5020841716012422112, i64 -4508180761239314355, i64 586935199814300635>, <4 x i64>* %14, align 16, !tbaa !3
  %arrayidx2.4.i.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XPA, i64 0, i64 0, i64 4
  %15 = bitcast i64* %arrayidx2.4.i.i to <4 x i64>*
  store <4 x i64> <i64 1231476659462315650, i64 -3246394521084132208, i64 7720484030924475341, i64 -7852071398881600364>, <4 x i64>* %15, align 16, !tbaa !3
  %arrayidx2.8.i.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XPA, i64 0, i64 0, i64 8
  %16 = bitcast i64* %arrayidx2.8.i.i to <4 x i64>*
  store <4 x i64> <i64 -2188584000029134321, i64 -8546628160115759780, i64 2594594101592586405, i64 16460334914570>, <4 x i64>* %16, align 16, !tbaa !3
  %arraydecay2.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XPA, i64 0, i64 1, i64 0
  %17 = bitcast i64* %arraydecay2.i to <4 x i64>*
  store <4 x i64> <i64 -5857059702320032876, i64 -6114084965349520524, i64 -1936358513353380623, i64 -8715966234124349157>, <4 x i64>* %17, align 16, !tbaa !3
  %arrayidx2.4.i202 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XPA, i64 0, i64 1, i64 4
  %18 = bitcast i64* %arrayidx2.4.i202 to <4 x i64>*
  store <4 x i64> <i64 -543319585398042881, i64 5769280992065803964, i64 5532188670625076987, i64 -1866799854436416823>, <4 x i64>* %18, align 16, !tbaa !3
  %arrayidx2.8.i206 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XPA, i64 0, i64 1, i64 8
  %19 = bitcast i64* %arrayidx2.8.i206 to <4 x i64>*
  store <4 x i64> <i64 -7172910929776876023, i64 -3954764222233415354, i64 9207655709386969385, i64 36625983307955>, <4 x i64>* %19, align 16, !tbaa !3
  %20 = bitcast [2 x [12 x i64]]* %XQA to <4 x i64>*
  store <4 x i64> <i64 1122465274781142185, i64 8515870630345178839, i64 -1924743458572280985, i64 -7735178800194673427>, <4 x i64>* %20, align 16, !tbaa !3
  %arrayidx2.4.i191 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XQA, i64 0, i64 0, i64 4
  %21 = bitcast i64* %arrayidx2.4.i191 to <4 x i64>*
  store <4 x i64> <i64 -3132739788306177595, i64 4840703288083784924, i64 -4856739261585915672, i64 -5564526081832302557>, <4 x i64>* %21, align 16, !tbaa !3
  %arrayidx2.8.i195 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XQA, i64 0, i64 0, i64 8
  %22 = bitcast i64* %arrayidx2.8.i195 to <4 x i64>*
  store <4 x i64> <i64 -1255673010972750885, i64 8865126078528016748, i64 3693150086021936691, i64 36658777259884>, <4 x i64>* %22, align 16, !tbaa !3
  %arraydecay8.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XQA, i64 0, i64 1, i64 0
  %23 = bitcast i64* %arraydecay8.i to <4 x i64>*
  store <4 x i64> <i64 -1369314893638426804, i64 -288665025702785293, i64 1672925350903708369, i64 -4583776393718080526>, <4 x i64>* %23, align 16, !tbaa !3
  %arrayidx2.4.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XQA, i64 0, i64 1, i64 4
  %24 = bitcast i64* %arrayidx2.4.i to <4 x i64>*
  store <4 x i64> <i64 2382796300166624212, i64 -4469495515226427753, i64 2278800419424555458, i64 118108782222142818>, <4 x i64>* %24, align 16, !tbaa !3
  %arrayidx2.8.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XQA, i64 0, i64 1, i64 8
  %25 = bitcast i64* %arrayidx2.8.i to <4 x i64>*
  store <4 x i64> <i64 1476285485934066847, i64 -2412546410971581458, i64 2038060998052304781, i64 107394058694173>, <4 x i64>* %25, align 16, !tbaa !3
  %26 = bitcast [2 x [12 x i64]]* %XRA to <4 x i64>*
  store <4 x i64> <i64 1585483835096717809, i64 -6514868516257168393, i64 7781638337591394101, i64 6664888135375272208>, <4 x i64>* %26, align 16, !tbaa !3
  %arrayidx2.4.i213 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XRA, i64 0, i64 0, i64 4
  %27 = bitcast i64* %arrayidx2.4.i213 to <4 x i64>*
  store <4 x i64> <i64 2840823194606539793, i64 -5651061943462976096, i64 2611282525231902794, i64 6070226513535983789>, <4 x i64>* %27, align 16, !tbaa !3
  %arrayidx2.8.i217 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XRA, i64 0, i64 0, i64 8
  %28 = bitcast i64* %arrayidx2.8.i217 to <4 x i64>*
  store <4 x i64> <i64 -3628334550803276311, i64 -3194324477546548331, i64 7824800416788242299, i64 58455551134839>, <4 x i64>* %28, align 16, !tbaa !3
  %arraydecay14.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XRA, i64 0, i64 1, i64 0
  %29 = bitcast i64* %arraydecay14.i to <4 x i64>*
  store <4 x i64> <i64 -7243670977810514200, i64 -2651806496363392450, i64 2745271787383434087, i64 -6805338174168646425>, <4 x i64>* %29, align 16, !tbaa !3
  %arrayidx2.4.i30.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XRA, i64 0, i64 1, i64 4
  %30 = bitcast i64* %arrayidx2.4.i30.i to <4 x i64>*
  store <4 x i64> <i64 -7576149946420897235, i64 -7341551600998515230, i64 -3718998877823341149, i64 1375411507907286301>, <4 x i64>* %30, align 16, !tbaa !3
  %arrayidx2.8.i38.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XRA, i64 0, i64 1, i64 8
  %31 = bitcast i64* %arrayidx2.8.i38.i to <4 x i64>*
  store <4 x i64> <i64 -4268452966569410958, i64 5435466916003927824, i64 8796316040578972826, i64 31328095521215>, <4 x i64>* %31, align 16, !tbaa !3
  %arraydecay3 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0
  %arraydecay.i221 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 0, i64 0
  %32 = bitcast [1 x %struct.point_proj]* %phiP to <4 x i64>*
  store <4 x i64> <i64 -8833499854113736564, i64 8392675302948378161, i64 9147551389475264226, i64 -7765403244197863993>, <4 x i64>* %32, align 16, !tbaa !3
  %arrayidx2.4.i.i225 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 0, i64 4
  %33 = bitcast i64* %arrayidx2.4.i.i225 to <4 x i64>*
  store <4 x i64> <i64 1891166766906289442, i64 8726784965380087145, i64 278069042628663236, i64 321051512772386179>, <4 x i64>* %33, align 16, !tbaa !3
  %arrayidx2.8.i.i229 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 0, i64 8
  %34 = bitcast i64* %arrayidx2.8.i.i229 to <4 x i64>*
  store <4 x i64> <i64 4418794039415165171, i64 811238939992429693, i64 -6570909703790141913, i64 56397746590099>, <4 x i64>* %34, align 16, !tbaa !3
  %arraydecay2.i233 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 1, i64 0
  %arraydecay5.i234 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 0, i64 0
  %35 = bitcast i64* %arraydecay2.i233 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %35, i8 0, i64 96, i1 false)
  %36 = bitcast [1 x %struct.point_proj]* %phiQ to <4 x i64>*
  store <4 x i64> <i64 -8179464935493790912, i64 -2991263922968465696, i64 -154199308264604616, i64 601370936378187550>, <4 x i64>* %36, align 16, !tbaa !3
  %arrayidx2.4.i263 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 0, i64 4
  %37 = bitcast i64* %arrayidx2.4.i263 to <4 x i64>*
  store <4 x i64> <i64 -2974587491997514357, i64 5596913087184264637, i64 5895422123728360424, i64 -1899885251769383899>, <4 x i64>* %37, align 16, !tbaa !3
  %arrayidx2.8.i267 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 0, i64 8
  %38 = bitcast i64* %arrayidx2.8.i267 to <4 x i64>*
  store <4 x i64> <i64 -8034677416696319560, i64 5132030994927125788, i64 3098590566816827475, i64 44009130331453>, <4 x i64>* %38, align 16, !tbaa !3
  %arraydecay8.i235 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 1, i64 0
  %arraydecay11.i236 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 0, i64 0
  %39 = bitcast i64* %arraydecay8.i235 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %39, i8 0, i64 96, i1 false)
  %40 = bitcast [1 x %struct.point_proj]* %phiR to <4 x i64>*
  store <4 x i64> <i64 -5376076391536300772, i64 278885298517689489, i64 -2325809399318866862, i64 -6210198366434735997>, <4 x i64>* %40, align 16, !tbaa !3
  %arrayidx2.4.i285 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 0, i64 4
  %41 = bitcast i64* %arrayidx2.4.i285 to <4 x i64>*
  store <4 x i64> <i64 -8835293157288827764, i64 2637748658071451261, i64 3544807444712948572, i64 -2233125461162933279>, <4 x i64>* %41, align 16, !tbaa !3
  %arrayidx2.8.i289 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 0, i64 8
  %42 = bitcast i64* %arrayidx2.8.i289 to <4 x i64>*
  store <4 x i64> <i64 -1534070816221365583, i64 -5251650682390400545, i64 -560613151583404810, i64 59505860712722>, <4 x i64>* %42, align 16, !tbaa !3
  %arraydecay14.i237 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 1, i64 0
  %43 = bitcast i64* %arraydecay14.i237 to <4 x i64>*
  store <4 x i64> <i64 6397758586429206260, i64 -9108104224853317045, i64 4403427314326644353, i64 -7834048129543563472>, <4 x i64>* %43, align 16, !tbaa !3
  %arrayidx2.4.i30.i241 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 1, i64 4
  %44 = bitcast i64* %arrayidx2.4.i30.i241 to <4 x i64>*
  store <4 x i64> <i64 -7297181264924982569, i64 -1979301445290863950, i64 15521226430153318, i64 3328537178486072741>, <4 x i64>* %44, align 16, !tbaa !3
  %arrayidx2.8.i38.i245 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 1, i64 8
  %45 = bitcast i64* %arrayidx2.8.i38.i245 to <4 x i64>*
  store <4 x i64> <i64 -546546720349608969, i64 -8077959945485607684, i64 -415175987874826629, i64 115645459333053>, <4 x i64>* %45, align 16, !tbaa !3
  %Z = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 1
  %arraydecay12 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %Z, i64 0, i64 0, i64 0
  store i64 149933, i64* %arraydecay12, align 16, !tbaa !3
  %arrayidx2.1.i293 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.5.i297 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 1, i64 0, i64 5
  %46 = bitcast i64* %arrayidx2.1.i293 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %46, i8 0, i64 32, i1 false)
  %47 = bitcast i64* %arrayidx2.5.i297 to <2 x i64>*
  store <2 x i64> <i64 -9002695655113621504, i64 6136068611055053926>, <2 x i64>* %47, align 8, !tbaa !3
  %arrayidx2.7.i299 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 1, i64 0, i64 7
  store i64 7599709743867700432, i64* %arrayidx2.7.i299, align 8, !tbaa !3
  %arrayidx2.8.i300 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 1, i64 0, i64 8
  %48 = bitcast i64* %arrayidx2.8.i300 to <4 x i64>*
  store <4 x i64> <i64 -3990831716756599250, i64 5522737203492907350, i64 1222606818372667369, i64 49869481633250>, <4 x i64>* %48, align 16, !tbaa !3
  %Z14 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 1
  %arraydecay16 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %Z14, i64 0, i64 0, i64 0
  store i64 149933, i64* %arraydecay16, align 16, !tbaa !3
  %arrayidx2.1.i304 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.5.i308 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 1, i64 0, i64 5
  %49 = bitcast i64* %arrayidx2.1.i304 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %49, i8 0, i64 32, i1 false)
  %50 = bitcast i64* %arrayidx2.5.i308 to <2 x i64>*
  store <2 x i64> <i64 -9002695655113621504, i64 6136068611055053926>, <2 x i64>* %50, align 8, !tbaa !3
  %arrayidx2.7.i310 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 1, i64 0, i64 7
  store i64 7599709743867700432, i64* %arrayidx2.7.i310, align 8, !tbaa !3
  %arrayidx2.8.i311 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 1, i64 0, i64 8
  %51 = bitcast i64* %arrayidx2.8.i311 to <4 x i64>*
  store <4 x i64> <i64 -3990831716756599250, i64 5522737203492907350, i64 1222606818372667369, i64 49869481633250>, <4 x i64>* %51, align 16, !tbaa !3
  %Z18 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 1
  %arraydecay20 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %Z18, i64 0, i64 0, i64 0
  store i64 149933, i64* %arraydecay20, align 16, !tbaa !3
  %arrayidx2.1.i315 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.5.i319 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 1, i64 0, i64 5
  %52 = bitcast i64* %arrayidx2.1.i315 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %52, i8 0, i64 32, i1 false)
  %53 = bitcast i64* %arrayidx2.5.i319 to <4 x i64>*
  store <4 x i64> <i64 -9002695655113621504, i64 6136068611055053926, i64 7599709743867700432, i64 -3990831716756599250>, <4 x i64>* %53, align 8, !tbaa !3
  %arrayidx2.9.i323 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 1, i64 0, i64 9
  store i64 5522737203492907350, i64* %arrayidx2.9.i323, align 8, !tbaa !3
  %arrayidx2.10.i324 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 1, i64 0, i64 10
  store i64 1222606818372667369, i64* %arrayidx2.10.i324, align 16, !tbaa !3
  %arrayidx2.11.i325 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 1, i64 0, i64 11
  store i64 49869481633250, i64* %arrayidx2.11.i325, align 8, !tbaa !3
  %arraydecay22 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24plus, i64 0, i64 0, i64 0
  store i64 149933, i64* %arraydecay22, align 16, !tbaa !3
  %arrayidx2.1.i326 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24plus, i64 0, i64 0, i64 1
  %arrayidx2.5.i330 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24plus, i64 0, i64 0, i64 5
  %54 = bitcast i64* %arrayidx2.1.i326 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %54, i8 0, i64 32, i1 false)
  %55 = bitcast i64* %arrayidx2.5.i330 to <4 x i64>*
  store <4 x i64> <i64 -9002695655113621504, i64 6136068611055053926, i64 7599709743867700432, i64 -3990831716756599250>, <4 x i64>* %55, align 8, !tbaa !3
  %arrayidx2.9.i334 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24plus, i64 0, i64 0, i64 9
  store i64 5522737203492907350, i64* %arrayidx2.9.i334, align 8, !tbaa !3
  %arrayidx2.10.i335 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24plus, i64 0, i64 0, i64 10
  store i64 1222606818372667369, i64* %arrayidx2.10.i335, align 16, !tbaa !3
  %arrayidx2.11.i336 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24plus, i64 0, i64 0, i64 11
  store i64 49869481633250, i64* %arrayidx2.11.i336, align 8, !tbaa !3
  %arraydecay23 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24plus, i64 0, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay22, i64* nonnull %arraydecay22, i64* nonnull %arraydecay22) #10
  %arraydecay6.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24plus, i64 0, i64 1, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i) #10
  %arraydecay28 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %C24, i64 0, i64 0
  %arraydecay4.i342 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %C24, i64 0, i64 0, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay22, i64* nonnull %arraydecay22, i64* nonnull %arraydecay4.i342) #10
  %arraydecay10.i345 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %C24, i64 0, i64 1, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay10.i345) #10
  %arraydecay31 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A, i64 0, i64 0
  %arraydecay4.i348 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A, i64 0, i64 0, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay22, i64* nonnull %arraydecay4.i342, i64* nonnull %arraydecay4.i348) #10
  %arraydecay10.i351 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A, i64 0, i64 1, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay10.i345, i64* nonnull %arraydecay10.i351) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i342, i64* nonnull %arraydecay4.i342, i64* nonnull %arraydecay22) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay10.i345, i64* nonnull %arraydecay10.i345, i64* nonnull %arraydecay6.i) #10
  %arraydecay35 = getelementptr inbounds [6 x i64], [6 x i64]* %SecretKeyA, i64 0, i64 0
  %arrayidx.i = getelementptr inbounds [6 x i64], [6 x i64]* %SecretKeyA, i64 0, i64 5
  store i64 0, i64* %arrayidx.i, align 8, !tbaa !3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %13, i8* align 1 %PrivateKeyA, i64 47, i1 false)
  %arraydecay40 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0
  call fastcc void @LADDER3PT([12 x i64]* nonnull %arraydecay, [12 x i64]* nonnull %arraydecay1, [12 x i64]* nonnull %arraydecay2, i64* nonnull %arraydecay35, i32 0, %struct.point_proj* nonnull %arraydecay40, [12 x i64]* nonnull %arraydecay31)
  %arrayidx.4.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 0, i64 4
  %arrayidx.8.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 0, i64 8
  %arraydecay4.i371 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 1, i64 0
  %arrayidx.4.i15.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 1, i64 4
  %arrayidx.8.i23.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 1, i64 8
  %arraydecay.i373 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 0, i64 0
  %arrayidx.4.i.i381 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 0, i64 4
  %arrayidx.8.i.i389 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 0, i64 8
  %arraydecay4.i397 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 1, i64 0
  %arrayidx.4.i15.i405 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 1, i64 4
  %arrayidx.8.i23.i413 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 1, i64 8
  %arraydecay70 = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %coeff, i64 0, i64 0
  %56 = bitcast [1 x %struct.point_proj]* %R to <4 x i64>*
  %57 = bitcast i64* %arrayidx.4.i.i to <4 x i64>*
  %58 = bitcast i64* %arrayidx.8.i.i to <4 x i64>*
  %59 = bitcast i64* %arraydecay4.i371 to <4 x i64>*
  %60 = bitcast i64* %arrayidx.4.i15.i to <4 x i64>*
  %61 = bitcast i64* %arrayidx.8.i23.i to <4 x i64>*
  %62 = bitcast i64* %arraydecay.i373 to <4 x i64>*
  %63 = bitcast i64* %arrayidx.4.i.i381 to <4 x i64>*
  %64 = bitcast i64* %arrayidx.8.i.i389 to <4 x i64>*
  %65 = bitcast i64* %arraydecay4.i397 to <4 x i64>*
  %66 = bitcast i64* %arrayidx.4.i15.i405 to <4 x i64>*
  %67 = bitcast i64* %arrayidx.8.i23.i413 to <4 x i64>*
  %68 = bitcast [1 x %struct.point_proj]* %R to <4 x i64>*
  %69 = bitcast i64* %arrayidx.4.i.i to <4 x i64>*
  %70 = bitcast i64* %arrayidx.8.i.i to <4 x i64>*
  %71 = bitcast i64* %arraydecay4.i371 to <4 x i64>*
  %72 = bitcast i64* %arrayidx.4.i15.i to <4 x i64>*
  %73 = bitcast i64* %arrayidx.8.i23.i to <4 x i64>*
  %74 = bitcast i64* %arraydecay.i373 to <4 x i64>*
  %75 = bitcast i64* %arrayidx.4.i.i381 to <4 x i64>*
  %76 = bitcast i64* %arrayidx.8.i.i389 to <4 x i64>*
  %77 = bitcast i64* %arraydecay4.i397 to <4 x i64>*
  %78 = bitcast i64* %arrayidx.4.i15.i405 to <4 x i64>*
  %79 = bitcast i64* %arrayidx.8.i23.i413 to <4 x i64>*
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.end, %entry
  %ii.0551 = phi i32 [ 0, %entry ], [ %ii.1.lcssa, %for.end ]
  %npts.0550 = phi i32 [ 0, %entry ], [ %sub85, %for.end ]
  %index.0549 = phi i32 [ 0, %entry ], [ %129, %for.end ]
  %row.0548 = phi i32 [ 1, %entry ], [ %inc108, %for.end ]
  %sub = sub nuw nsw i32 186, %row.0548
  %cmp42541 = icmp ult i32 %index.0549, %sub
  br i1 %cmp42541, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %ii.1544 = phi i32 [ %inc60, %while.body ], [ %ii.0551, %while.cond.preheader ]
  %npts.1543 = phi i32 [ %inc, %while.body ], [ %npts.0550, %while.cond.preheader ]
  %index.1542 = phi i32 [ %add, %while.body ], [ %index.0549, %while.cond.preheader ]
  %idxprom = zext i32 %npts.1543 to i64
  %arraydecay2.i359 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 0, i64 0
  %80 = load <4 x i64>, <4 x i64>* %56, align 16, !tbaa !3
  %81 = bitcast i64* %arraydecay2.i359 to <4 x i64>*
  store <4 x i64> %80, <4 x i64>* %81, align 16, !tbaa !3
  %arrayidx2.4.i.i363 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 0, i64 4
  %82 = load <4 x i64>, <4 x i64>* %57, align 16, !tbaa !3
  %83 = bitcast i64* %arrayidx2.4.i.i363 to <4 x i64>*
  store <4 x i64> %82, <4 x i64>* %83, align 16, !tbaa !3
  %arrayidx2.8.i.i367 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 0, i64 8
  %84 = load <4 x i64>, <4 x i64>* %58, align 16, !tbaa !3
  %85 = bitcast i64* %arrayidx2.8.i.i367 to <4 x i64>*
  store <4 x i64> %84, <4 x i64>* %85, align 16, !tbaa !3
  %arraydecay6.i372 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 1, i64 0
  %86 = load <4 x i64>, <4 x i64>* %59, align 16, !tbaa !3
  %87 = bitcast i64* %arraydecay6.i372 to <4 x i64>*
  store <4 x i64> %86, <4 x i64>* %87, align 16, !tbaa !3
  %arrayidx2.4.i16.i = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 1, i64 4
  %88 = load <4 x i64>, <4 x i64>* %60, align 16, !tbaa !3
  %89 = bitcast i64* %arrayidx2.4.i16.i to <4 x i64>*
  store <4 x i64> %88, <4 x i64>* %89, align 16, !tbaa !3
  %arrayidx2.8.i24.i = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 1, i64 8
  %90 = load <4 x i64>, <4 x i64>* %61, align 16, !tbaa !3
  %91 = bitcast i64* %arrayidx2.8.i24.i to <4 x i64>*
  store <4 x i64> %90, <4 x i64>* %91, align 16, !tbaa !3
  %arraydecay2.i374 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 0, i64 0
  %92 = load <4 x i64>, <4 x i64>* %62, align 16, !tbaa !3
  %93 = bitcast i64* %arraydecay2.i374 to <4 x i64>*
  store <4 x i64> %92, <4 x i64>* %93, align 16, !tbaa !3
  %arrayidx2.4.i.i382 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 0, i64 4
  %94 = load <4 x i64>, <4 x i64>* %63, align 16, !tbaa !3
  %95 = bitcast i64* %arrayidx2.4.i.i382 to <4 x i64>*
  store <4 x i64> %94, <4 x i64>* %95, align 16, !tbaa !3
  %arrayidx2.8.i.i390 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 0, i64 8
  %96 = load <4 x i64>, <4 x i64>* %64, align 16, !tbaa !3
  %97 = bitcast i64* %arrayidx2.8.i.i390 to <4 x i64>*
  store <4 x i64> %96, <4 x i64>* %97, align 16, !tbaa !3
  %arraydecay6.i398 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 1, i64 0
  %98 = load <4 x i64>, <4 x i64>* %65, align 16, !tbaa !3
  %99 = bitcast i64* %arraydecay6.i398 to <4 x i64>*
  store <4 x i64> %98, <4 x i64>* %99, align 16, !tbaa !3
  %arrayidx2.4.i16.i406 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 1, i64 4
  %100 = load <4 x i64>, <4 x i64>* %66, align 16, !tbaa !3
  %101 = bitcast i64* %arrayidx2.4.i16.i406 to <4 x i64>*
  store <4 x i64> %100, <4 x i64>* %101, align 16, !tbaa !3
  %arrayidx2.8.i24.i414 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 1, i64 8
  %102 = load <4 x i64>, <4 x i64>* %67, align 16, !tbaa !3
  %103 = bitcast i64* %arrayidx2.8.i24.i414 to <4 x i64>*
  store <4 x i64> %102, <4 x i64>* %103, align 16, !tbaa !3
  %inc = add i32 %npts.1543, 1
  %arrayidx59 = getelementptr inbounds [8 x i32], [8 x i32]* %pts_index, i64 0, i64 %idxprom
  store i32 %index.1542, i32* %arrayidx59, align 4, !tbaa !59
  %inc60 = add i32 %ii.1544, 1
  %idxprom61 = zext i32 %ii.1544 to i64
  %arrayidx62 = getelementptr inbounds [185 x i32], [185 x i32]* @strat_Alice, i64 0, i64 %idxprom61
  %104 = load i32, i32* %arrayidx62, align 4, !tbaa !59
  %mul = shl i32 %104, 1
  call void @xDBLe(%struct.point_proj* nonnull %arraydecay40, %struct.point_proj* nonnull %arraydecay40, [12 x i64]* nonnull %arraydecay23, [12 x i64]* nonnull %arraydecay28, i32 %mul)
  %add = add i32 %104, %index.1542
  %cmp42 = icmp ult i32 %add, %sub
  br i1 %cmp42, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %npts.1.lcssa = phi i32 [ %npts.0550, %while.cond.preheader ], [ %inc, %while.body ]
  %ii.1.lcssa = phi i32 [ %ii.0551, %while.cond.preheader ], [ %inc60, %while.body ]
  call void @get_4_isog(%struct.point_proj* nonnull %arraydecay40, [12 x i64]* nonnull %arraydecay23, [12 x i64]* nonnull %arraydecay28, [2 x [12 x i64]]* nonnull %arraydecay70)
  %cmp72546 = icmp eq i32 %npts.1.lcssa, 0
  br i1 %cmp72546, label %for.end, label %for.body73.preheader

for.body73.preheader:                             ; preds = %while.end
  %wide.trip.count = zext i32 %npts.1.lcssa to i64
  br label %for.body73

for.body73:                                       ; preds = %for.body73, %for.body73.preheader
  %indvars.iv = phi i64 [ 0, %for.body73.preheader ], [ %indvars.iv.next, %for.body73 ]
  %arraydecay76 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %indvars.iv, i64 0
  call void @eval_4_isog(%struct.point_proj* nonnull %arraydecay76, [2 x [12 x i64]]* nonnull %arraydecay70)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.end, label %for.body73

for.end:                                          ; preds = %for.body73, %while.end
  call void @eval_4_isog(%struct.point_proj* nonnull %arraydecay3, [2 x [12 x i64]]* nonnull %arraydecay70)
  call void @eval_4_isog(%struct.point_proj* nonnull %arraydecay5, [2 x [12 x i64]]* nonnull %arraydecay70)
  call void @eval_4_isog(%struct.point_proj* nonnull %arraydecay8, [2 x [12 x i64]]* nonnull %arraydecay70)
  %sub85 = add i32 %npts.1.lcssa, -1
  %idxprom86 = zext i32 %sub85 to i64
  %arraydecay.i421 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 0, i64 0, i64 0
  %105 = bitcast i64* %arraydecay.i421 to <4 x i64>*
  %106 = load <4 x i64>, <4 x i64>* %105, align 16, !tbaa !3
  store <4 x i64> %106, <4 x i64>* %68, align 16, !tbaa !3
  %arrayidx.4.i.i429 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 0, i64 0, i64 4
  %107 = bitcast i64* %arrayidx.4.i.i429 to <4 x i64>*
  %108 = load <4 x i64>, <4 x i64>* %107, align 16, !tbaa !3
  store <4 x i64> %108, <4 x i64>* %69, align 16, !tbaa !3
  %arrayidx.8.i.i437 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 0, i64 0, i64 8
  %109 = bitcast i64* %arrayidx.8.i.i437 to <4 x i64>*
  %110 = load <4 x i64>, <4 x i64>* %109, align 16, !tbaa !3
  store <4 x i64> %110, <4 x i64>* %70, align 16, !tbaa !3
  %arraydecay4.i445 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 0, i64 1, i64 0
  %111 = bitcast i64* %arraydecay4.i445 to <4 x i64>*
  %112 = load <4 x i64>, <4 x i64>* %111, align 16, !tbaa !3
  store <4 x i64> %112, <4 x i64>* %71, align 16, !tbaa !3
  %arrayidx.4.i15.i453 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 0, i64 1, i64 4
  %113 = bitcast i64* %arrayidx.4.i15.i453 to <4 x i64>*
  %114 = load <4 x i64>, <4 x i64>* %113, align 16, !tbaa !3
  store <4 x i64> %114, <4 x i64>* %72, align 16, !tbaa !3
  %arrayidx.8.i23.i461 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 0, i64 1, i64 8
  %115 = bitcast i64* %arrayidx.8.i23.i461 to <4 x i64>*
  %116 = load <4 x i64>, <4 x i64>* %115, align 16, !tbaa !3
  store <4 x i64> %116, <4 x i64>* %73, align 16, !tbaa !3
  %arraydecay.i469 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 1, i64 0, i64 0
  %117 = bitcast i64* %arraydecay.i469 to <4 x i64>*
  %118 = load <4 x i64>, <4 x i64>* %117, align 16, !tbaa !3
  store <4 x i64> %118, <4 x i64>* %74, align 16, !tbaa !3
  %arrayidx.4.i.i477 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 1, i64 0, i64 4
  %119 = bitcast i64* %arrayidx.4.i.i477 to <4 x i64>*
  %120 = load <4 x i64>, <4 x i64>* %119, align 16, !tbaa !3
  store <4 x i64> %120, <4 x i64>* %75, align 16, !tbaa !3
  %arrayidx.8.i.i485 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 1, i64 0, i64 8
  %121 = bitcast i64* %arrayidx.8.i.i485 to <4 x i64>*
  %122 = load <4 x i64>, <4 x i64>* %121, align 16, !tbaa !3
  store <4 x i64> %122, <4 x i64>* %76, align 16, !tbaa !3
  %arraydecay4.i493 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 1, i64 1, i64 0
  %123 = bitcast i64* %arraydecay4.i493 to <4 x i64>*
  %124 = load <4 x i64>, <4 x i64>* %123, align 16, !tbaa !3
  store <4 x i64> %124, <4 x i64>* %77, align 16, !tbaa !3
  %arrayidx.4.i15.i501 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 1, i64 1, i64 4
  %125 = bitcast i64* %arrayidx.4.i15.i501 to <4 x i64>*
  %126 = load <4 x i64>, <4 x i64>* %125, align 16, !tbaa !3
  store <4 x i64> %126, <4 x i64>* %78, align 16, !tbaa !3
  %arrayidx.8.i23.i509 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 1, i64 1, i64 8
  %127 = bitcast i64* %arrayidx.8.i23.i509 to <4 x i64>*
  %128 = load <4 x i64>, <4 x i64>* %127, align 16, !tbaa !3
  store <4 x i64> %128, <4 x i64>* %79, align 16, !tbaa !3
  %arrayidx105 = getelementptr inbounds [8 x i32], [8 x i32]* %pts_index, i64 0, i64 %idxprom86
  %129 = load i32, i32* %arrayidx105, align 4, !tbaa !59
  %inc108 = add nuw nsw i32 %row.0548, 1
  %exitcond552 = icmp eq i32 %inc108, 186
  br i1 %exitcond552, label %for.end109, label %while.cond.preheader

for.end109:                                       ; preds = %for.end
  %arraydecay4 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 0
  %arraydecay7 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 0
  %arraydecay10 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 0
  call void @get_4_isog(%struct.point_proj* nonnull %arraydecay40, [12 x i64]* nonnull %arraydecay23, [12 x i64]* nonnull %arraydecay28, [2 x [12 x i64]]* nonnull %arraydecay70)
  call void @eval_4_isog(%struct.point_proj* nonnull %arraydecay3, [2 x [12 x i64]]* nonnull %arraydecay70)
  call void @eval_4_isog(%struct.point_proj* nonnull %arraydecay5, [2 x [12 x i64]]* nonnull %arraydecay70)
  call void @eval_4_isog(%struct.point_proj* nonnull %arraydecay8, [2 x [12 x i64]]* nonnull %arraydecay70)
  %arraydecay122 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %Z, i64 0, i64 0
  %arraydecay125 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %Z14, i64 0, i64 0
  %arraydecay128 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %Z18, i64 0, i64 0
  call void @inv_3_way([12 x i64]* nonnull %arraydecay122, [12 x i64]* nonnull %arraydecay125, [12 x i64]* nonnull %arraydecay128)
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay4, [12 x i64]* nonnull %arraydecay122, [12 x i64]* nonnull %arraydecay4)
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay7, [12 x i64]* nonnull %arraydecay125, [12 x i64]* nonnull %arraydecay7)
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay10, [12 x i64]* nonnull %arraydecay128, [12 x i64]* nonnull %arraydecay10)
  %130 = bitcast [2 x [12 x i64]]* %t.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %130) #10
  %arraydecay2.i.i521 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t.i, i64 0, i64 0, i64 0
  %131 = bitcast [12 x i64]* %one.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %131) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %131, i8 0, i64 96, i1 false) #10
  %arrayidx.i.i.i522 = getelementptr inbounds [12 x i64], [12 x i64]* %one.i.i.i, i64 0, i64 0
  store i64 1, i64* %arrayidx.i.i.i522, align 16, !tbaa !3
  %132 = bitcast [24 x i64]* %temp.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %132) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %132, i8 0, i64 192, i1 false) #10
  %arraydecay.i.i.i.i523 = getelementptr inbounds [24 x i64], [24 x i64]* %temp.i.i.i.i, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay.i221, i64* nonnull %arrayidx.i.i.i522, i64* nonnull %arraydecay.i.i.i.i523, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i523, i64* nonnull %arraydecay2.i.i521) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %132) #10
  call void @fpcorrection751(i64* nonnull %arraydecay2.i.i521) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %131) #10
  %arraydecay6.i.i525 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t.i, i64 0, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %131) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %131, i8 0, i64 96, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i522, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %132) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %132, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2.i233, i64* nonnull %arrayidx.i.i.i522, i64* nonnull %arraydecay.i.i.i.i523, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i523, i64* nonnull %arraydecay6.i.i525) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %132) #10
  call void @fpcorrection751(i64* nonnull %arraydecay6.i.i525) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %131) #10
  %133 = call i64 @llvm.objectsize.i64.p0i8(i8* %PublicKeyA, i1 false, i1 true) #10
  %call.i.i526 = call i8* @__memcpy_chk(i8* %PublicKeyA, i8* nonnull %130, i64 94, i64 %133) #10
  %add.ptr.i527 = getelementptr inbounds i8, i8* %PublicKeyA, i64 94
  %134 = bitcast i64* %arraydecay6.i.i525 to i8*
  %135 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr.i527, i1 false, i1 true) #10
  %call.i5.i528 = call i8* @__memcpy_chk(i8* nonnull %add.ptr.i527, i8* nonnull %134, i64 94, i64 %135) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %130) #10
  %add.ptr = getelementptr inbounds i8, i8* %PublicKeyA, i64 188
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %130) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %131) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %131, i8 0, i64 96, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i522, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %132) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %132, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay5.i234, i64* nonnull %arrayidx.i.i.i522, i64* nonnull %arraydecay.i.i.i.i523, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i523, i64* nonnull %arraydecay2.i.i521) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %132) #10
  call void @fpcorrection751(i64* nonnull %arraydecay2.i.i521) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %131) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %131) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %131, i8 0, i64 96, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i522, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %132) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %132, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.i235, i64* nonnull %arrayidx.i.i.i522, i64* nonnull %arraydecay.i.i.i.i523, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i523, i64* nonnull %arraydecay6.i.i525) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %132) #10
  call void @fpcorrection751(i64* nonnull %arraydecay6.i.i525) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %131) #10
  %136 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr, i1 false, i1 true) #10
  %call.i.i538 = call i8* @__memcpy_chk(i8* nonnull %add.ptr, i8* nonnull %130, i64 94, i64 %136) #10
  %add.ptr.i539 = getelementptr inbounds i8, i8* %PublicKeyA, i64 282
  %137 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr.i539, i1 false, i1 true) #10
  %call.i5.i540 = call i8* @__memcpy_chk(i8* nonnull %add.ptr.i539, i8* nonnull %134, i64 94, i64 %137) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %130) #10
  %add.ptr165 = getelementptr inbounds i8, i8* %PublicKeyA, i64 376
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %130) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %131) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %131, i8 0, i64 96, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i522, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %132) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %132, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay11.i236, i64* nonnull %arrayidx.i.i.i522, i64* nonnull %arraydecay.i.i.i.i523, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i523, i64* nonnull %arraydecay2.i.i521) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %132) #10
  call void @fpcorrection751(i64* nonnull %arraydecay2.i.i521) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %131) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %131) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %131, i8 0, i64 96, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i522, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %132) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %132, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay14.i237, i64* nonnull %arrayidx.i.i.i522, i64* nonnull %arraydecay.i.i.i.i523, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i523, i64* nonnull %arraydecay6.i.i525) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %132) #10
  call void @fpcorrection751(i64* nonnull %arraydecay6.i.i525) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %131) #10
  %138 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr165, i1 false, i1 true) #10
  %call.i.i = call i8* @__memcpy_chk(i8* nonnull %add.ptr165, i8* nonnull %130, i64 94, i64 %138) #10
  %add.ptr.i = getelementptr inbounds i8, i8* %PublicKeyA, i64 470
  %139 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr.i, i1 false, i1 true) #10
  %call.i5.i = call i8* @__memcpy_chk(i8* nonnull %add.ptr.i, i8* nonnull %134, i64 94, i64 %139) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %130) #10
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %13) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %12) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %11) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %9) #10
  call void @llvm.lifetime.end.p0i8(i64 576, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 3072, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %0) #10
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @LADDER3PT([12 x i64]* readonly %xP, [12 x i64]* readonly %xQ, [12 x i64]* readonly %xPQ, i64* nocapture readonly %m, i32 %AliceOrBob, %struct.point_proj* %R, [12 x i64]* nocapture readonly %A) unnamed_addr #4 {
entry:
  %R0 = alloca [1 x %struct.point_proj], align 16
  %R2 = alloca [1 x %struct.point_proj], align 16
  %A24 = alloca [2 x [12 x i64]], align 16
  %0 = bitcast [1 x %struct.point_proj]* %R0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 384, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 384, i1 false)
  %1 = bitcast [1 x %struct.point_proj]* %R2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 384, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 384, i1 false)
  %2 = bitcast [2 x [12 x i64]]* %A24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #10
  %3 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24, i64 0, i64 1
  %4 = bitcast [12 x i64]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %4, i8 0, i64 96, i1 false)
  %cmp = icmp eq i32 %AliceOrBob, 0
  %. = select i1 %cmp, i32 372, i32 378
  %arraydecay = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24, i64 0, i64 0, i64 0
  store i64 149933, i64* %arraydecay, align 16, !tbaa !3
  %arrayidx2.1.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24, i64 0, i64 0, i64 1
  %arrayidx2.5.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24, i64 0, i64 0, i64 5
  %5 = bitcast i64* %arrayidx2.1.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 32, i1 false)
  %6 = bitcast i64* %arrayidx2.5.i to <4 x i64>*
  store <4 x i64> <i64 -9002695655113621504, i64 6136068611055053926, i64 7599709743867700432, i64 -3990831716756599250>, <4 x i64>* %6, align 8, !tbaa !3
  %arrayidx2.9.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24, i64 0, i64 0, i64 9
  store i64 5522737203492907350, i64* %arrayidx2.9.i, align 8, !tbaa !3
  %arrayidx2.10.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24, i64 0, i64 0, i64 10
  store i64 1222606818372667369, i64* %arrayidx2.10.i, align 16, !tbaa !3
  %arrayidx2.11.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24, i64 0, i64 0, i64 11
  store i64 49869481633250, i64* %arrayidx2.11.i, align 8, !tbaa !3
  %arraydecay1 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24, i64 0, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay) #10
  %arraydecay6.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24, i64 0, i64 1, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i) #10
  %arraydecay.i63 = getelementptr inbounds [12 x i64], [12 x i64]* %A, i64 0, i64 0
  call fastcc void @mp_addfast(i64* %arraydecay.i63, i64* nonnull %arraydecay, i64* nonnull %arraydecay) #10
  %arraydecay6.i66 = getelementptr inbounds [12 x i64], [12 x i64]* %A, i64 1, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay6.i66, i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i) #10
  call void @fpdiv2_751(i64* nonnull %arraydecay, i64* nonnull %arraydecay) #10
  call void @fpdiv2_751(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i) #10
  call void @fpdiv2_751(i64* nonnull %arraydecay, i64* nonnull %arraydecay) #10
  call void @fpdiv2_751(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i) #10
  %arraydecay10 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R0, i64 0, i64 0
  %7 = bitcast [12 x i64]* %xQ to <4 x i64>*
  %8 = load <4 x i64>, <4 x i64>* %7, align 8, !tbaa !3
  %9 = bitcast [1 x %struct.point_proj]* %R0 to <4 x i64>*
  store <4 x i64> %8, <4 x i64>* %9, align 16, !tbaa !3
  %arrayidx.4.i.i = getelementptr inbounds [12 x i64], [12 x i64]* %xQ, i64 0, i64 4
  %arrayidx2.4.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R0, i64 0, i64 0, i32 0, i64 0, i64 4
  %10 = bitcast i64* %arrayidx.4.i.i to <4 x i64>*
  %11 = load <4 x i64>, <4 x i64>* %10, align 8, !tbaa !3
  %12 = bitcast i64* %arrayidx2.4.i.i to <4 x i64>*
  store <4 x i64> %11, <4 x i64>* %12, align 16, !tbaa !3
  %arrayidx.8.i.i = getelementptr inbounds [12 x i64], [12 x i64]* %xQ, i64 0, i64 8
  %arrayidx2.8.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R0, i64 0, i64 0, i32 0, i64 0, i64 8
  %13 = bitcast i64* %arrayidx.8.i.i to <4 x i64>*
  %14 = load <4 x i64>, <4 x i64>* %13, align 8, !tbaa !3
  %15 = bitcast i64* %arrayidx2.8.i.i to <4 x i64>*
  store <4 x i64> %14, <4 x i64>* %15, align 16, !tbaa !3
  %arraydecay4.i79 = getelementptr inbounds [12 x i64], [12 x i64]* %xQ, i64 1, i64 0
  %arraydecay6.i80 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R0, i64 0, i64 0, i32 0, i64 1, i64 0
  %16 = bitcast i64* %arraydecay4.i79 to <4 x i64>*
  %17 = load <4 x i64>, <4 x i64>* %16, align 8, !tbaa !3
  %18 = bitcast i64* %arraydecay6.i80 to <4 x i64>*
  store <4 x i64> %17, <4 x i64>* %18, align 16, !tbaa !3
  %arrayidx.4.i15.i = getelementptr inbounds [12 x i64], [12 x i64]* %xQ, i64 1, i64 4
  %arrayidx2.4.i16.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R0, i64 0, i64 0, i32 0, i64 1, i64 4
  %19 = bitcast i64* %arrayidx.4.i15.i to <4 x i64>*
  %20 = load <4 x i64>, <4 x i64>* %19, align 8, !tbaa !3
  %21 = bitcast i64* %arrayidx2.4.i16.i to <4 x i64>*
  store <4 x i64> %20, <4 x i64>* %21, align 16, !tbaa !3
  %arrayidx.8.i23.i = getelementptr inbounds [12 x i64], [12 x i64]* %xQ, i64 1, i64 8
  %arrayidx2.8.i24.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R0, i64 0, i64 0, i32 0, i64 1, i64 8
  %22 = bitcast i64* %arrayidx.8.i23.i to <4 x i64>*
  %23 = load <4 x i64>, <4 x i64>* %22, align 8, !tbaa !3
  %24 = bitcast i64* %arrayidx2.8.i24.i to <4 x i64>*
  store <4 x i64> %23, <4 x i64>* %24, align 16, !tbaa !3
  %25 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R0, i64 0, i64 0, i32 1, i64 0, i64 0
  store i64 149933, i64* %25, align 16, !tbaa !3
  %arrayidx2.1.i81 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R0, i64 0, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.5.i85 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R0, i64 0, i64 0, i32 1, i64 0, i64 5
  %26 = bitcast i64* %arrayidx2.1.i81 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %26, i8 0, i64 32, i1 false)
  %27 = bitcast i64* %arrayidx2.5.i85 to <4 x i64>*
  store <4 x i64> <i64 -9002695655113621504, i64 6136068611055053926, i64 7599709743867700432, i64 -3990831716756599250>, <4 x i64>* %27, align 8, !tbaa !3
  %arrayidx2.9.i89 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R0, i64 0, i64 0, i32 1, i64 0, i64 9
  store i64 5522737203492907350, i64* %arrayidx2.9.i89, align 8, !tbaa !3
  %arrayidx2.10.i90 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R0, i64 0, i64 0, i32 1, i64 0, i64 10
  store i64 1222606818372667369, i64* %arrayidx2.10.i90, align 16, !tbaa !3
  %arrayidx2.11.i91 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R0, i64 0, i64 0, i32 1, i64 0, i64 11
  store i64 49869481633250, i64* %arrayidx2.11.i91, align 8, !tbaa !3
  %arraydecay14 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0
  %28 = bitcast [12 x i64]* %xPQ to <4 x i64>*
  %29 = load <4 x i64>, <4 x i64>* %28, align 8, !tbaa !3
  %30 = bitcast [1 x %struct.point_proj]* %R2 to <4 x i64>*
  store <4 x i64> %29, <4 x i64>* %30, align 16, !tbaa !3
  %arrayidx.4.i.i100 = getelementptr inbounds [12 x i64], [12 x i64]* %xPQ, i64 0, i64 4
  %arrayidx2.4.i.i101 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 0, i64 0, i64 4
  %31 = bitcast i64* %arrayidx.4.i.i100 to <4 x i64>*
  %32 = load <4 x i64>, <4 x i64>* %31, align 8, !tbaa !3
  %33 = bitcast i64* %arrayidx2.4.i.i101 to <4 x i64>*
  store <4 x i64> %32, <4 x i64>* %33, align 16, !tbaa !3
  %arrayidx.8.i.i108 = getelementptr inbounds [12 x i64], [12 x i64]* %xPQ, i64 0, i64 8
  %arrayidx2.8.i.i109 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 0, i64 0, i64 8
  %34 = bitcast i64* %arrayidx.8.i.i108 to <4 x i64>*
  %35 = load <4 x i64>, <4 x i64>* %34, align 8, !tbaa !3
  %36 = bitcast i64* %arrayidx2.8.i.i109 to <4 x i64>*
  store <4 x i64> %35, <4 x i64>* %36, align 16, !tbaa !3
  %arraydecay4.i116 = getelementptr inbounds [12 x i64], [12 x i64]* %xPQ, i64 1, i64 0
  %arraydecay6.i117 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 0, i64 1, i64 0
  %37 = bitcast i64* %arraydecay4.i116 to <4 x i64>*
  %38 = load <4 x i64>, <4 x i64>* %37, align 8, !tbaa !3
  %39 = bitcast i64* %arraydecay6.i117 to <4 x i64>*
  store <4 x i64> %38, <4 x i64>* %39, align 16, !tbaa !3
  %arrayidx.4.i15.i124 = getelementptr inbounds [12 x i64], [12 x i64]* %xPQ, i64 1, i64 4
  %arrayidx2.4.i16.i125 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 0, i64 1, i64 4
  %40 = bitcast i64* %arrayidx.4.i15.i124 to <4 x i64>*
  %41 = load <4 x i64>, <4 x i64>* %40, align 8, !tbaa !3
  %42 = bitcast i64* %arrayidx2.4.i16.i125 to <4 x i64>*
  store <4 x i64> %41, <4 x i64>* %42, align 16, !tbaa !3
  %arrayidx.8.i23.i132 = getelementptr inbounds [12 x i64], [12 x i64]* %xPQ, i64 1, i64 8
  %arrayidx2.8.i24.i133 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 0, i64 1, i64 8
  %43 = bitcast i64* %arrayidx.8.i23.i132 to <4 x i64>*
  %44 = load <4 x i64>, <4 x i64>* %43, align 8, !tbaa !3
  %45 = bitcast i64* %arrayidx2.8.i24.i133 to <4 x i64>*
  store <4 x i64> %44, <4 x i64>* %45, align 16, !tbaa !3
  %46 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 0, i64 0
  store i64 149933, i64* %46, align 16, !tbaa !3
  %arrayidx2.1.i140 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.5.i144 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 0, i64 5
  %47 = bitcast i64* %arrayidx2.1.i140 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %47, i8 0, i64 32, i1 false)
  %48 = bitcast i64* %arrayidx2.5.i144 to <4 x i64>*
  store <4 x i64> <i64 -9002695655113621504, i64 6136068611055053926, i64 7599709743867700432, i64 -3990831716756599250>, <4 x i64>* %48, align 8, !tbaa !3
  %arrayidx2.9.i148 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 0, i64 9
  store i64 5522737203492907350, i64* %arrayidx2.9.i148, align 8, !tbaa !3
  %arrayidx2.10.i149 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 0, i64 10
  store i64 1222606818372667369, i64* %arrayidx2.10.i149, align 16, !tbaa !3
  %arrayidx2.11.i150 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 0, i64 11
  store i64 49869481633250, i64* %arrayidx2.11.i150, align 8, !tbaa !3
  %arraydecay21 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0
  %arraydecay.i151 = getelementptr inbounds [12 x i64], [12 x i64]* %xP, i64 0, i64 0
  %arraydecay2.i152 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0, i64 0
  %49 = load i64, i64* %arraydecay.i151, align 8, !tbaa !3
  store i64 %49, i64* %arraydecay2.i152, align 8, !tbaa !3
  %arrayidx.1.i.i153 = getelementptr inbounds [12 x i64], [12 x i64]* %xP, i64 0, i64 1
  %50 = load i64, i64* %arrayidx.1.i.i153, align 8, !tbaa !3
  %arrayidx2.1.i.i154 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0, i64 1
  store i64 %50, i64* %arrayidx2.1.i.i154, align 8, !tbaa !3
  %arrayidx.2.i.i155 = getelementptr inbounds [12 x i64], [12 x i64]* %xP, i64 0, i64 2
  %51 = load i64, i64* %arrayidx.2.i.i155, align 8, !tbaa !3
  %arrayidx2.2.i.i156 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0, i64 2
  store i64 %51, i64* %arrayidx2.2.i.i156, align 8, !tbaa !3
  %arrayidx.3.i.i157 = getelementptr inbounds [12 x i64], [12 x i64]* %xP, i64 0, i64 3
  %52 = load i64, i64* %arrayidx.3.i.i157, align 8, !tbaa !3
  %arrayidx2.3.i.i158 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0, i64 3
  store i64 %52, i64* %arrayidx2.3.i.i158, align 8, !tbaa !3
  %arrayidx.4.i.i159 = getelementptr inbounds [12 x i64], [12 x i64]* %xP, i64 0, i64 4
  %53 = load i64, i64* %arrayidx.4.i.i159, align 8, !tbaa !3
  %arrayidx2.4.i.i160 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0, i64 4
  store i64 %53, i64* %arrayidx2.4.i.i160, align 8, !tbaa !3
  %arrayidx.5.i.i161 = getelementptr inbounds [12 x i64], [12 x i64]* %xP, i64 0, i64 5
  %54 = load i64, i64* %arrayidx.5.i.i161, align 8, !tbaa !3
  %arrayidx2.5.i.i162 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0, i64 5
  store i64 %54, i64* %arrayidx2.5.i.i162, align 8, !tbaa !3
  %arrayidx.6.i.i163 = getelementptr inbounds [12 x i64], [12 x i64]* %xP, i64 0, i64 6
  %55 = load i64, i64* %arrayidx.6.i.i163, align 8, !tbaa !3
  %arrayidx2.6.i.i164 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0, i64 6
  store i64 %55, i64* %arrayidx2.6.i.i164, align 8, !tbaa !3
  %arrayidx.7.i.i165 = getelementptr inbounds [12 x i64], [12 x i64]* %xP, i64 0, i64 7
  %56 = load i64, i64* %arrayidx.7.i.i165, align 8, !tbaa !3
  %arrayidx2.7.i.i166 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0, i64 7
  store i64 %56, i64* %arrayidx2.7.i.i166, align 8, !tbaa !3
  %arrayidx.8.i.i167 = getelementptr inbounds [12 x i64], [12 x i64]* %xP, i64 0, i64 8
  %57 = load i64, i64* %arrayidx.8.i.i167, align 8, !tbaa !3
  %arrayidx2.8.i.i168 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0, i64 8
  store i64 %57, i64* %arrayidx2.8.i.i168, align 8, !tbaa !3
  %arrayidx.9.i.i169 = getelementptr inbounds [12 x i64], [12 x i64]* %xP, i64 0, i64 9
  %58 = load i64, i64* %arrayidx.9.i.i169, align 8, !tbaa !3
  %arrayidx2.9.i.i170 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0, i64 9
  store i64 %58, i64* %arrayidx2.9.i.i170, align 8, !tbaa !3
  %arrayidx.10.i.i171 = getelementptr inbounds [12 x i64], [12 x i64]* %xP, i64 0, i64 10
  %59 = load i64, i64* %arrayidx.10.i.i171, align 8, !tbaa !3
  %arrayidx2.10.i.i172 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0, i64 10
  store i64 %59, i64* %arrayidx2.10.i.i172, align 8, !tbaa !3
  %arrayidx.11.i.i173 = getelementptr inbounds [12 x i64], [12 x i64]* %xP, i64 0, i64 11
  %60 = load i64, i64* %arrayidx.11.i.i173, align 8, !tbaa !3
  %arrayidx2.11.i.i174 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0, i64 11
  store i64 %60, i64* %arrayidx2.11.i.i174, align 8, !tbaa !3
  %arraydecay4.i175 = getelementptr inbounds [12 x i64], [12 x i64]* %xP, i64 1, i64 0
  %arraydecay6.i176 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 0
  %61 = load i64, i64* %arraydecay4.i175, align 8, !tbaa !3
  store i64 %61, i64* %arraydecay6.i176, align 8, !tbaa !3
  %arrayidx.1.i9.i177 = getelementptr inbounds [12 x i64], [12 x i64]* %xP, i64 1, i64 1
  %62 = load i64, i64* %arrayidx.1.i9.i177, align 8, !tbaa !3
  %arrayidx2.1.i10.i178 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 1
  store i64 %62, i64* %arrayidx2.1.i10.i178, align 8, !tbaa !3
  %arrayidx.2.i11.i179 = getelementptr inbounds [12 x i64], [12 x i64]* %xP, i64 1, i64 2
  %63 = load i64, i64* %arrayidx.2.i11.i179, align 8, !tbaa !3
  %arrayidx2.2.i12.i180 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 2
  store i64 %63, i64* %arrayidx2.2.i12.i180, align 8, !tbaa !3
  %arrayidx.3.i13.i181 = getelementptr inbounds [12 x i64], [12 x i64]* %xP, i64 1, i64 3
  %64 = load i64, i64* %arrayidx.3.i13.i181, align 8, !tbaa !3
  %arrayidx2.3.i14.i182 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 3
  store i64 %64, i64* %arrayidx2.3.i14.i182, align 8, !tbaa !3
  %arrayidx.4.i15.i183 = getelementptr inbounds [12 x i64], [12 x i64]* %xP, i64 1, i64 4
  %65 = load i64, i64* %arrayidx.4.i15.i183, align 8, !tbaa !3
  %arrayidx2.4.i16.i184 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 4
  store i64 %65, i64* %arrayidx2.4.i16.i184, align 8, !tbaa !3
  %arrayidx.5.i17.i185 = getelementptr inbounds [12 x i64], [12 x i64]* %xP, i64 1, i64 5
  %66 = load i64, i64* %arrayidx.5.i17.i185, align 8, !tbaa !3
  %arrayidx2.5.i18.i186 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 5
  store i64 %66, i64* %arrayidx2.5.i18.i186, align 8, !tbaa !3
  %arrayidx.6.i19.i187 = getelementptr inbounds [12 x i64], [12 x i64]* %xP, i64 1, i64 6
  %67 = load i64, i64* %arrayidx.6.i19.i187, align 8, !tbaa !3
  %arrayidx2.6.i20.i188 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 6
  store i64 %67, i64* %arrayidx2.6.i20.i188, align 8, !tbaa !3
  %arrayidx.7.i21.i189 = getelementptr inbounds [12 x i64], [12 x i64]* %xP, i64 1, i64 7
  %68 = load i64, i64* %arrayidx.7.i21.i189, align 8, !tbaa !3
  %arrayidx2.7.i22.i190 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 7
  store i64 %68, i64* %arrayidx2.7.i22.i190, align 8, !tbaa !3
  %arrayidx.8.i23.i191 = getelementptr inbounds [12 x i64], [12 x i64]* %xP, i64 1, i64 8
  %69 = load i64, i64* %arrayidx.8.i23.i191, align 8, !tbaa !3
  %arrayidx2.8.i24.i192 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 8
  store i64 %69, i64* %arrayidx2.8.i24.i192, align 8, !tbaa !3
  %arrayidx.9.i25.i193 = getelementptr inbounds [12 x i64], [12 x i64]* %xP, i64 1, i64 9
  %70 = load i64, i64* %arrayidx.9.i25.i193, align 8, !tbaa !3
  %arrayidx2.9.i26.i194 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 9
  store i64 %70, i64* %arrayidx2.9.i26.i194, align 8, !tbaa !3
  %arrayidx.10.i27.i195 = getelementptr inbounds [12 x i64], [12 x i64]* %xP, i64 1, i64 10
  %71 = load i64, i64* %arrayidx.10.i27.i195, align 8, !tbaa !3
  %arrayidx2.10.i28.i196 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 10
  store i64 %71, i64* %arrayidx2.10.i28.i196, align 8, !tbaa !3
  %arrayidx.11.i29.i197 = getelementptr inbounds [12 x i64], [12 x i64]* %xP, i64 1, i64 11
  %72 = load i64, i64* %arrayidx.11.i29.i197, align 8, !tbaa !3
  %arrayidx2.11.i30.i198 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 11
  store i64 %72, i64* %arrayidx2.11.i30.i198, align 8, !tbaa !3
  %Z22 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1
  %arraydecay23 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %Z22, i64 0, i64 0
  %73 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %Z22, i64 0, i64 0, i64 0
  store i64 149933, i64* %73, align 8, !tbaa !3
  %arrayidx2.1.i228 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.5.i232 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 0, i64 5
  %74 = bitcast i64* %arrayidx2.1.i228 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %74, i8 0, i64 32, i1 false)
  %75 = bitcast i64* %arrayidx2.5.i232 to <4 x i64>*
  store <4 x i64> <i64 -9002695655113621504, i64 6136068611055053926, i64 7599709743867700432, i64 -3990831716756599250>, <4 x i64>* %75, align 8, !tbaa !3
  %arrayidx2.9.i236 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 0, i64 9
  store i64 5522737203492907350, i64* %arrayidx2.9.i236, align 8, !tbaa !3
  %arrayidx2.10.i237 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 0, i64 10
  store i64 1222606818372667369, i64* %arrayidx2.10.i237, align 8, !tbaa !3
  %arrayidx2.11.i238 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 0, i64 11
  store i64 49869481633250, i64* %arrayidx2.11.i238, align 8, !tbaa !3
  %arraydecay26 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 1, i64 0
  %a5.i = bitcast i64* %arraydecay26 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %a5.i, i8 0, i64 96, i1 false) #10
  %76 = bitcast %struct.point_proj* %R to <4 x i64>*
  %77 = bitcast [1 x %struct.point_proj]* %R2 to <4 x i64>*
  %78 = bitcast %struct.point_proj* %R to <4 x i64>*
  %79 = bitcast [1 x %struct.point_proj]* %R2 to <4 x i64>*
  %80 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 0
  %81 = bitcast i64* %80 to <4 x i64>*
  %82 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 0, i64 1, i64 0
  %83 = bitcast i64* %82 to <4 x i64>*
  %84 = bitcast i64* %80 to <4 x i64>*
  %85 = bitcast i64* %82 to <4 x i64>*
  %86 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 0, i64 0
  %87 = bitcast i64* %86 to <4 x i64>*
  %88 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 0, i64 0
  %89 = bitcast i64* %88 to <4 x i64>*
  %90 = bitcast i64* %86 to <4 x i64>*
  %91 = bitcast i64* %88 to <4 x i64>*
  %92 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 1, i64 0
  %93 = bitcast i64* %92 to <4 x i64>*
  %94 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 1, i64 0
  %95 = bitcast i64* %94 to <4 x i64>*
  %96 = bitcast i64* %92 to <4 x i64>*
  %97 = bitcast i64* %94 to <4 x i64>*
  %98 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0, i64 4
  %99 = bitcast i64* %98 to <4 x i64>*
  %100 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 0, i64 0, i64 4
  %101 = bitcast i64* %100 to <4 x i64>*
  %102 = bitcast i64* %98 to <4 x i64>*
  %103 = bitcast i64* %100 to <4 x i64>*
  %104 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 4
  %105 = bitcast i64* %104 to <4 x i64>*
  %106 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 0, i64 1, i64 4
  %107 = bitcast i64* %106 to <4 x i64>*
  %108 = bitcast i64* %104 to <4 x i64>*
  %109 = bitcast i64* %106 to <4 x i64>*
  %110 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 0, i64 4
  %111 = bitcast i64* %110 to <4 x i64>*
  %112 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 0, i64 4
  %113 = bitcast i64* %112 to <4 x i64>*
  %114 = bitcast i64* %110 to <4 x i64>*
  %115 = bitcast i64* %112 to <4 x i64>*
  %116 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 1, i64 4
  %117 = bitcast i64* %116 to <4 x i64>*
  %118 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 1, i64 4
  %119 = bitcast i64* %118 to <4 x i64>*
  %120 = bitcast i64* %116 to <4 x i64>*
  %121 = bitcast i64* %118 to <4 x i64>*
  %122 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0, i64 8
  %123 = bitcast i64* %122 to <4 x i64>*
  %124 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 0, i64 0, i64 8
  %125 = bitcast i64* %124 to <4 x i64>*
  %126 = bitcast i64* %122 to <4 x i64>*
  %127 = bitcast i64* %124 to <4 x i64>*
  %128 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 8
  %129 = bitcast i64* %128 to <4 x i64>*
  %130 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 0, i64 1, i64 8
  %131 = bitcast i64* %130 to <4 x i64>*
  %132 = bitcast i64* %128 to <4 x i64>*
  %133 = bitcast i64* %130 to <4 x i64>*
  %134 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 0, i64 8
  %135 = bitcast i64* %134 to <4 x i64>*
  %136 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 0, i64 8
  %137 = bitcast i64* %136 to <4 x i64>*
  %138 = bitcast i64* %134 to <4 x i64>*
  %139 = bitcast i64* %136 to <4 x i64>*
  %140 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 1, i64 8
  %141 = bitcast i64* %140 to <4 x i64>*
  %142 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 1, i64 8
  %143 = bitcast i64* %142 to <4 x i64>*
  %144 = bitcast i64* %140 to <4 x i64>*
  %145 = bitcast i64* %142 to <4 x i64>*
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %prevbit.0240 = phi i32 [ 0, %entry ], [ %conv, %for.body ]
  %i.0239 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %146 = lshr i32 %i.0239, 6
  %147 = zext i32 %146 to i64
  %arrayidx28 = getelementptr inbounds i64, i64* %m, i64 %147
  %148 = load i64, i64* %arrayidx28, align 8, !tbaa !3
  %and = and i32 %i.0239, 63
  %sh_prom = zext i32 %and to i64
  %shr29 = lshr i64 %148, %sh_prom
  %149 = trunc i64 %shr29 to i32
  %conv = and i32 %149, 1
  %xor = xor i32 %conv, %prevbit.0240
  %150 = zext i32 %xor to i64
  %sub = sub nsw i64 0, %150
  %broadcast.splatinsert242 = insertelement <4 x i64> undef, i64 %sub, i32 0
  %broadcast.splat243 = shufflevector <4 x i64> %broadcast.splatinsert242, <4 x i64> undef, <4 x i32> zeroinitializer
  %wide.load = load <4 x i64>, <4 x i64>* %76, align 8, !tbaa !3
  %wide.load241 = load <4 x i64>, <4 x i64>* %77, align 16, !tbaa !3
  %151 = xor <4 x i64> %wide.load241, %wide.load
  %152 = and <4 x i64> %151, %broadcast.splat243
  %153 = xor <4 x i64> %152, %wide.load
  store <4 x i64> %153, <4 x i64>* %78, align 8, !tbaa !3
  %154 = xor <4 x i64> %152, %wide.load241
  store <4 x i64> %154, <4 x i64>* %79, align 16, !tbaa !3
  %wide.load244 = load <4 x i64>, <4 x i64>* %81, align 8, !tbaa !3
  %wide.load245 = load <4 x i64>, <4 x i64>* %83, align 16, !tbaa !3
  %155 = xor <4 x i64> %wide.load245, %wide.load244
  %156 = and <4 x i64> %155, %broadcast.splat243
  %157 = xor <4 x i64> %156, %wide.load244
  store <4 x i64> %157, <4 x i64>* %84, align 8, !tbaa !3
  %158 = xor <4 x i64> %156, %wide.load245
  store <4 x i64> %158, <4 x i64>* %85, align 16, !tbaa !3
  %wide.load246 = load <4 x i64>, <4 x i64>* %87, align 8, !tbaa !3
  %wide.load247 = load <4 x i64>, <4 x i64>* %89, align 16, !tbaa !3
  %159 = xor <4 x i64> %wide.load247, %wide.load246
  %160 = and <4 x i64> %159, %broadcast.splat243
  %161 = xor <4 x i64> %160, %wide.load246
  store <4 x i64> %161, <4 x i64>* %90, align 8, !tbaa !3
  %162 = xor <4 x i64> %160, %wide.load247
  store <4 x i64> %162, <4 x i64>* %91, align 16, !tbaa !3
  %wide.load248 = load <4 x i64>, <4 x i64>* %93, align 8, !tbaa !3
  %wide.load249 = load <4 x i64>, <4 x i64>* %95, align 16, !tbaa !3
  %163 = xor <4 x i64> %wide.load249, %wide.load248
  %164 = and <4 x i64> %163, %broadcast.splat243
  %165 = xor <4 x i64> %164, %wide.load248
  store <4 x i64> %165, <4 x i64>* %96, align 8, !tbaa !3
  %166 = xor <4 x i64> %164, %wide.load249
  store <4 x i64> %166, <4 x i64>* %97, align 16, !tbaa !3
  %wide.load.1 = load <4 x i64>, <4 x i64>* %99, align 8, !tbaa !3
  %wide.load241.1 = load <4 x i64>, <4 x i64>* %101, align 16, !tbaa !3
  %167 = xor <4 x i64> %wide.load241.1, %wide.load.1
  %168 = and <4 x i64> %167, %broadcast.splat243
  %169 = xor <4 x i64> %168, %wide.load.1
  store <4 x i64> %169, <4 x i64>* %102, align 8, !tbaa !3
  %170 = xor <4 x i64> %168, %wide.load241.1
  store <4 x i64> %170, <4 x i64>* %103, align 16, !tbaa !3
  %wide.load244.1 = load <4 x i64>, <4 x i64>* %105, align 8, !tbaa !3
  %wide.load245.1 = load <4 x i64>, <4 x i64>* %107, align 16, !tbaa !3
  %171 = xor <4 x i64> %wide.load245.1, %wide.load244.1
  %172 = and <4 x i64> %171, %broadcast.splat243
  %173 = xor <4 x i64> %172, %wide.load244.1
  store <4 x i64> %173, <4 x i64>* %108, align 8, !tbaa !3
  %174 = xor <4 x i64> %172, %wide.load245.1
  store <4 x i64> %174, <4 x i64>* %109, align 16, !tbaa !3
  %wide.load246.1 = load <4 x i64>, <4 x i64>* %111, align 8, !tbaa !3
  %wide.load247.1 = load <4 x i64>, <4 x i64>* %113, align 16, !tbaa !3
  %175 = xor <4 x i64> %wide.load247.1, %wide.load246.1
  %176 = and <4 x i64> %175, %broadcast.splat243
  %177 = xor <4 x i64> %176, %wide.load246.1
  store <4 x i64> %177, <4 x i64>* %114, align 8, !tbaa !3
  %178 = xor <4 x i64> %176, %wide.load247.1
  store <4 x i64> %178, <4 x i64>* %115, align 16, !tbaa !3
  %wide.load248.1 = load <4 x i64>, <4 x i64>* %117, align 8, !tbaa !3
  %wide.load249.1 = load <4 x i64>, <4 x i64>* %119, align 16, !tbaa !3
  %179 = xor <4 x i64> %wide.load249.1, %wide.load248.1
  %180 = and <4 x i64> %179, %broadcast.splat243
  %181 = xor <4 x i64> %180, %wide.load248.1
  store <4 x i64> %181, <4 x i64>* %120, align 8, !tbaa !3
  %182 = xor <4 x i64> %180, %wide.load249.1
  store <4 x i64> %182, <4 x i64>* %121, align 16, !tbaa !3
  %wide.load.2 = load <4 x i64>, <4 x i64>* %123, align 8, !tbaa !3
  %wide.load241.2 = load <4 x i64>, <4 x i64>* %125, align 16, !tbaa !3
  %183 = xor <4 x i64> %wide.load241.2, %wide.load.2
  %184 = and <4 x i64> %183, %broadcast.splat243
  %185 = xor <4 x i64> %184, %wide.load.2
  store <4 x i64> %185, <4 x i64>* %126, align 8, !tbaa !3
  %186 = xor <4 x i64> %184, %wide.load241.2
  store <4 x i64> %186, <4 x i64>* %127, align 16, !tbaa !3
  %wide.load244.2 = load <4 x i64>, <4 x i64>* %129, align 8, !tbaa !3
  %wide.load245.2 = load <4 x i64>, <4 x i64>* %131, align 16, !tbaa !3
  %187 = xor <4 x i64> %wide.load245.2, %wide.load244.2
  %188 = and <4 x i64> %187, %broadcast.splat243
  %189 = xor <4 x i64> %188, %wide.load244.2
  store <4 x i64> %189, <4 x i64>* %132, align 8, !tbaa !3
  %190 = xor <4 x i64> %188, %wide.load245.2
  store <4 x i64> %190, <4 x i64>* %133, align 16, !tbaa !3
  %wide.load246.2 = load <4 x i64>, <4 x i64>* %135, align 8, !tbaa !3
  %wide.load247.2 = load <4 x i64>, <4 x i64>* %137, align 16, !tbaa !3
  %191 = xor <4 x i64> %wide.load247.2, %wide.load246.2
  %192 = and <4 x i64> %191, %broadcast.splat243
  %193 = xor <4 x i64> %192, %wide.load246.2
  store <4 x i64> %193, <4 x i64>* %138, align 8, !tbaa !3
  %194 = xor <4 x i64> %192, %wide.load247.2
  store <4 x i64> %194, <4 x i64>* %139, align 16, !tbaa !3
  %wide.load248.2 = load <4 x i64>, <4 x i64>* %141, align 8, !tbaa !3
  %wide.load249.2 = load <4 x i64>, <4 x i64>* %143, align 16, !tbaa !3
  %195 = xor <4 x i64> %wide.load249.2, %wide.load248.2
  %196 = and <4 x i64> %195, %broadcast.splat243
  %197 = xor <4 x i64> %196, %wide.load248.2
  store <4 x i64> %197, <4 x i64>* %144, align 8, !tbaa !3
  %198 = xor <4 x i64> %196, %wide.load249.2
  store <4 x i64> %198, <4 x i64>* %145, align 16, !tbaa !3
  call void @xDBLADD(%struct.point_proj* nonnull %arraydecay10, %struct.point_proj* nonnull %arraydecay14, [12 x i64]* nonnull %arraydecay21, [12 x i64]* nonnull %arraydecay23, [12 x i64]* nonnull %arraydecay1)
  %inc = add nuw nsw i32 %i.0239, 1
  %exitcond = icmp eq i32 %inc, %.
  br i1 %exitcond, label %vector.ph253, label %for.body

vector.ph253:                                     ; preds = %for.body
  %199 = zext i32 %conv to i64
  %sub42 = sub nsw i64 0, %199
  %broadcast.splatinsert263 = insertelement <4 x i64> undef, i64 %sub42, i32 0
  %broadcast.splat264 = shufflevector <4 x i64> %broadcast.splatinsert263, <4 x i64> undef, <4 x i32> zeroinitializer
  %200 = bitcast %struct.point_proj* %R to <4 x i64>*
  %wide.load261 = load <4 x i64>, <4 x i64>* %200, align 8, !tbaa !3
  %201 = bitcast [1 x %struct.point_proj]* %R2 to <4 x i64>*
  %wide.load262 = load <4 x i64>, <4 x i64>* %201, align 16, !tbaa !3
  %202 = xor <4 x i64> %wide.load262, %wide.load261
  %203 = and <4 x i64> %202, %broadcast.splat264
  %204 = xor <4 x i64> %203, %wide.load261
  %205 = bitcast %struct.point_proj* %R to <4 x i64>*
  store <4 x i64> %204, <4 x i64>* %205, align 8, !tbaa !3
  %206 = xor <4 x i64> %203, %wide.load262
  %207 = bitcast [1 x %struct.point_proj]* %R2 to <4 x i64>*
  store <4 x i64> %206, <4 x i64>* %207, align 16, !tbaa !3
  %208 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 0
  %209 = bitcast i64* %208 to <4 x i64>*
  %wide.load265 = load <4 x i64>, <4 x i64>* %209, align 8, !tbaa !3
  %210 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 0, i64 1, i64 0
  %211 = bitcast i64* %210 to <4 x i64>*
  %wide.load266 = load <4 x i64>, <4 x i64>* %211, align 16, !tbaa !3
  %212 = xor <4 x i64> %wide.load266, %wide.load265
  %213 = and <4 x i64> %212, %broadcast.splat264
  %214 = xor <4 x i64> %213, %wide.load265
  %215 = bitcast i64* %208 to <4 x i64>*
  store <4 x i64> %214, <4 x i64>* %215, align 8, !tbaa !3
  %216 = xor <4 x i64> %213, %wide.load266
  %217 = bitcast i64* %210 to <4 x i64>*
  store <4 x i64> %216, <4 x i64>* %217, align 16, !tbaa !3
  %218 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 0, i64 0
  %219 = bitcast i64* %218 to <4 x i64>*
  %wide.load267 = load <4 x i64>, <4 x i64>* %219, align 8, !tbaa !3
  %220 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 0, i64 0
  %221 = bitcast i64* %220 to <4 x i64>*
  %wide.load268 = load <4 x i64>, <4 x i64>* %221, align 16, !tbaa !3
  %222 = xor <4 x i64> %wide.load268, %wide.load267
  %223 = and <4 x i64> %222, %broadcast.splat264
  %224 = xor <4 x i64> %223, %wide.load267
  %225 = bitcast i64* %218 to <4 x i64>*
  store <4 x i64> %224, <4 x i64>* %225, align 8, !tbaa !3
  %226 = xor <4 x i64> %223, %wide.load268
  %227 = bitcast i64* %220 to <4 x i64>*
  store <4 x i64> %226, <4 x i64>* %227, align 16, !tbaa !3
  %228 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 1, i64 0
  %229 = bitcast i64* %228 to <4 x i64>*
  %wide.load269 = load <4 x i64>, <4 x i64>* %229, align 8, !tbaa !3
  %230 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 1, i64 0
  %231 = bitcast i64* %230 to <4 x i64>*
  %wide.load270 = load <4 x i64>, <4 x i64>* %231, align 16, !tbaa !3
  %232 = xor <4 x i64> %wide.load270, %wide.load269
  %233 = and <4 x i64> %232, %broadcast.splat264
  %234 = xor <4 x i64> %233, %wide.load269
  %235 = bitcast i64* %228 to <4 x i64>*
  store <4 x i64> %234, <4 x i64>* %235, align 8, !tbaa !3
  %236 = xor <4 x i64> %233, %wide.load270
  %237 = bitcast i64* %230 to <4 x i64>*
  store <4 x i64> %236, <4 x i64>* %237, align 16, !tbaa !3
  %238 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0, i64 4
  %239 = bitcast i64* %238 to <4 x i64>*
  %wide.load261.1 = load <4 x i64>, <4 x i64>* %239, align 8, !tbaa !3
  %240 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 0, i64 0, i64 4
  %241 = bitcast i64* %240 to <4 x i64>*
  %wide.load262.1 = load <4 x i64>, <4 x i64>* %241, align 16, !tbaa !3
  %242 = xor <4 x i64> %wide.load262.1, %wide.load261.1
  %243 = and <4 x i64> %242, %broadcast.splat264
  %244 = xor <4 x i64> %243, %wide.load261.1
  %245 = bitcast i64* %238 to <4 x i64>*
  store <4 x i64> %244, <4 x i64>* %245, align 8, !tbaa !3
  %246 = xor <4 x i64> %243, %wide.load262.1
  %247 = bitcast i64* %240 to <4 x i64>*
  store <4 x i64> %246, <4 x i64>* %247, align 16, !tbaa !3
  %248 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 4
  %249 = bitcast i64* %248 to <4 x i64>*
  %wide.load265.1 = load <4 x i64>, <4 x i64>* %249, align 8, !tbaa !3
  %250 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 0, i64 1, i64 4
  %251 = bitcast i64* %250 to <4 x i64>*
  %wide.load266.1 = load <4 x i64>, <4 x i64>* %251, align 16, !tbaa !3
  %252 = xor <4 x i64> %wide.load266.1, %wide.load265.1
  %253 = and <4 x i64> %252, %broadcast.splat264
  %254 = xor <4 x i64> %253, %wide.load265.1
  %255 = bitcast i64* %248 to <4 x i64>*
  store <4 x i64> %254, <4 x i64>* %255, align 8, !tbaa !3
  %256 = xor <4 x i64> %253, %wide.load266.1
  %257 = bitcast i64* %250 to <4 x i64>*
  store <4 x i64> %256, <4 x i64>* %257, align 16, !tbaa !3
  %258 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 0, i64 4
  %259 = bitcast i64* %258 to <4 x i64>*
  %wide.load267.1 = load <4 x i64>, <4 x i64>* %259, align 8, !tbaa !3
  %260 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 0, i64 4
  %261 = bitcast i64* %260 to <4 x i64>*
  %wide.load268.1 = load <4 x i64>, <4 x i64>* %261, align 16, !tbaa !3
  %262 = xor <4 x i64> %wide.load268.1, %wide.load267.1
  %263 = and <4 x i64> %262, %broadcast.splat264
  %264 = xor <4 x i64> %263, %wide.load267.1
  %265 = bitcast i64* %258 to <4 x i64>*
  store <4 x i64> %264, <4 x i64>* %265, align 8, !tbaa !3
  %266 = xor <4 x i64> %263, %wide.load268.1
  %267 = bitcast i64* %260 to <4 x i64>*
  store <4 x i64> %266, <4 x i64>* %267, align 16, !tbaa !3
  %268 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 1, i64 4
  %269 = bitcast i64* %268 to <4 x i64>*
  %wide.load269.1 = load <4 x i64>, <4 x i64>* %269, align 8, !tbaa !3
  %270 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 1, i64 4
  %271 = bitcast i64* %270 to <4 x i64>*
  %wide.load270.1 = load <4 x i64>, <4 x i64>* %271, align 16, !tbaa !3
  %272 = xor <4 x i64> %wide.load270.1, %wide.load269.1
  %273 = and <4 x i64> %272, %broadcast.splat264
  %274 = xor <4 x i64> %273, %wide.load269.1
  %275 = bitcast i64* %268 to <4 x i64>*
  store <4 x i64> %274, <4 x i64>* %275, align 8, !tbaa !3
  %276 = xor <4 x i64> %273, %wide.load270.1
  %277 = bitcast i64* %270 to <4 x i64>*
  store <4 x i64> %276, <4 x i64>* %277, align 16, !tbaa !3
  %278 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0, i64 8
  %279 = bitcast i64* %278 to <4 x i64>*
  %wide.load261.2 = load <4 x i64>, <4 x i64>* %279, align 8, !tbaa !3
  %280 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 0, i64 0, i64 8
  %281 = bitcast i64* %280 to <4 x i64>*
  %wide.load262.2 = load <4 x i64>, <4 x i64>* %281, align 16, !tbaa !3
  %282 = xor <4 x i64> %wide.load262.2, %wide.load261.2
  %283 = and <4 x i64> %282, %broadcast.splat264
  %284 = xor <4 x i64> %283, %wide.load261.2
  %285 = bitcast i64* %278 to <4 x i64>*
  store <4 x i64> %284, <4 x i64>* %285, align 8, !tbaa !3
  %286 = xor <4 x i64> %283, %wide.load262.2
  %287 = bitcast i64* %280 to <4 x i64>*
  store <4 x i64> %286, <4 x i64>* %287, align 16, !tbaa !3
  %288 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 8
  %289 = bitcast i64* %288 to <4 x i64>*
  %wide.load265.2 = load <4 x i64>, <4 x i64>* %289, align 8, !tbaa !3
  %290 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 0, i64 1, i64 8
  %291 = bitcast i64* %290 to <4 x i64>*
  %wide.load266.2 = load <4 x i64>, <4 x i64>* %291, align 16, !tbaa !3
  %292 = xor <4 x i64> %wide.load266.2, %wide.load265.2
  %293 = and <4 x i64> %292, %broadcast.splat264
  %294 = xor <4 x i64> %293, %wide.load265.2
  %295 = bitcast i64* %288 to <4 x i64>*
  store <4 x i64> %294, <4 x i64>* %295, align 8, !tbaa !3
  %296 = xor <4 x i64> %293, %wide.load266.2
  %297 = bitcast i64* %290 to <4 x i64>*
  store <4 x i64> %296, <4 x i64>* %297, align 16, !tbaa !3
  %298 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 0, i64 8
  %299 = bitcast i64* %298 to <4 x i64>*
  %wide.load267.2 = load <4 x i64>, <4 x i64>* %299, align 8, !tbaa !3
  %300 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 0, i64 8
  %301 = bitcast i64* %300 to <4 x i64>*
  %wide.load268.2 = load <4 x i64>, <4 x i64>* %301, align 16, !tbaa !3
  %302 = xor <4 x i64> %wide.load268.2, %wide.load267.2
  %303 = and <4 x i64> %302, %broadcast.splat264
  %304 = xor <4 x i64> %303, %wide.load267.2
  %305 = bitcast i64* %298 to <4 x i64>*
  store <4 x i64> %304, <4 x i64>* %305, align 8, !tbaa !3
  %306 = xor <4 x i64> %303, %wide.load268.2
  %307 = bitcast i64* %300 to <4 x i64>*
  store <4 x i64> %306, <4 x i64>* %307, align 16, !tbaa !3
  %308 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 1, i64 8
  %309 = bitcast i64* %308 to <4 x i64>*
  %wide.load269.2 = load <4 x i64>, <4 x i64>* %309, align 8, !tbaa !3
  %310 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 1, i64 8
  %311 = bitcast i64* %310 to <4 x i64>*
  %wide.load270.2 = load <4 x i64>, <4 x i64>* %311, align 16, !tbaa !3
  %312 = xor <4 x i64> %wide.load270.2, %wide.load269.2
  %313 = and <4 x i64> %312, %broadcast.splat264
  %314 = xor <4 x i64> %313, %wide.load269.2
  %315 = bitcast i64* %308 to <4 x i64>*
  store <4 x i64> %314, <4 x i64>* %315, align 8, !tbaa !3
  %316 = xor <4 x i64> %313, %wide.load270.2
  %317 = bitcast i64* %310 to <4 x i64>*
  store <4 x i64> %316, <4 x i64>* %317, align 16, !tbaa !3
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @EphemeralKeyGeneration_B_SIDHp751(i8* %PrivateKeyB, i8* %PublicKeyB) local_unnamed_addr #4 {
entry:
  %temp.i.i.i.i = alloca [24 x i64], align 16
  %one.i.i.i = alloca [12 x i64], align 16
  %t.i = alloca [2 x [12 x i64]], align 16
  %R = alloca [1 x %struct.point_proj], align 16
  %phiP = alloca [1 x %struct.point_proj], align 16
  %phiQ = alloca [1 x %struct.point_proj], align 16
  %phiR = alloca [1 x %struct.point_proj], align 16
  %pts = alloca [10 x [1 x %struct.point_proj]], align 16
  %XPB = alloca [2 x [12 x i64]], align 16
  %XQB = alloca [2 x [12 x i64]], align 16
  %XRB = alloca [2 x [12 x i64]], align 16
  %coeff = alloca [3 x [2 x [12 x i64]]], align 16
  %A24plus = alloca [2 x [12 x i64]], align 16
  %A24minus = alloca [2 x [12 x i64]], align 16
  %A = alloca [2 x [12 x i64]], align 16
  %pts_index = alloca [10 x i32], align 16
  %SecretKeyB = alloca [6 x i64], align 16
  %0 = bitcast [1 x %struct.point_proj]* %R to i8*
  call void @llvm.lifetime.start.p0i8(i64 384, i8* nonnull %0) #10
  %1 = bitcast [1 x %struct.point_proj]* %phiP to i8*
  call void @llvm.lifetime.start.p0i8(i64 384, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 384, i1 false)
  %2 = bitcast [1 x %struct.point_proj]* %phiQ to i8*
  call void @llvm.lifetime.start.p0i8(i64 384, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 384, i1 false)
  %3 = bitcast [1 x %struct.point_proj]* %phiR to i8*
  call void @llvm.lifetime.start.p0i8(i64 384, i8* nonnull %3) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %3, i8 0, i64 384, i1 false)
  %4 = bitcast [10 x [1 x %struct.point_proj]]* %pts to i8*
  call void @llvm.lifetime.start.p0i8(i64 3840, i8* nonnull %4) #10
  %5 = bitcast [2 x [12 x i64]]* %XPB to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %5) #10
  %6 = bitcast [2 x [12 x i64]]* %XQB to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %6) #10
  %7 = bitcast [2 x [12 x i64]]* %XRB to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %7) #10
  %8 = bitcast [3 x [2 x [12 x i64]]]* %coeff to i8*
  call void @llvm.lifetime.start.p0i8(i64 576, i8* nonnull %8) #10
  %9 = bitcast [2 x [12 x i64]]* %A24plus to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %9) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 192, i1 false)
  %10 = bitcast [2 x [12 x i64]]* %A24minus to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 192, i1 false)
  %11 = bitcast [2 x [12 x i64]]* %A to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 192, i1 false)
  %12 = bitcast [10 x i32]* %pts_index to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %12) #10
  %13 = bitcast [6 x i64]* %SecretKeyB to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %13) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %13, i8 0, i64 48, i1 false)
  %arraydecay = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XPB, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XQB, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XRB, i64 0, i64 0
  %14 = bitcast [2 x [12 x i64]]* %XPB to <4 x i64>*
  store <4 x i64> <i64 -8833499854113736564, i64 8392675302948378161, i64 9147551389475264226, i64 -7765403244197863993>, <4 x i64>* %14, align 16, !tbaa !3
  %arrayidx2.4.i.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XPB, i64 0, i64 0, i64 4
  %15 = bitcast i64* %arrayidx2.4.i.i to <4 x i64>*
  store <4 x i64> <i64 1891166766906289442, i64 8726784965380087145, i64 278069042628663236, i64 321051512772386179>, <4 x i64>* %15, align 16, !tbaa !3
  %arrayidx2.8.i.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XPB, i64 0, i64 0, i64 8
  %16 = bitcast i64* %arrayidx2.8.i.i to <4 x i64>*
  store <4 x i64> <i64 4418794039415165171, i64 811238939992429693, i64 -6570909703790141913, i64 56397746590099>, <4 x i64>* %16, align 16, !tbaa !3
  %arraydecay2.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XPB, i64 0, i64 1, i64 0
  %17 = bitcast i64* %arraydecay2.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %17, i8 0, i64 96, i1 false)
  %18 = bitcast [2 x [12 x i64]]* %XQB to <4 x i64>*
  store <4 x i64> <i64 -8179464935493790912, i64 -2991263922968465696, i64 -154199308264604616, i64 601370936378187550>, <4 x i64>* %18, align 16, !tbaa !3
  %arrayidx2.4.i191 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XQB, i64 0, i64 0, i64 4
  %19 = bitcast i64* %arrayidx2.4.i191 to <4 x i64>*
  store <4 x i64> <i64 -2974587491997514357, i64 5596913087184264637, i64 5895422123728360424, i64 -1899885251769383899>, <4 x i64>* %19, align 16, !tbaa !3
  %arrayidx2.8.i195 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XQB, i64 0, i64 0, i64 8
  %20 = bitcast i64* %arrayidx2.8.i195 to <4 x i64>*
  store <4 x i64> <i64 -8034677416696319560, i64 5132030994927125788, i64 3098590566816827475, i64 44009130331453>, <4 x i64>* %20, align 16, !tbaa !3
  %arraydecay8.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XQB, i64 0, i64 1, i64 0
  %21 = bitcast i64* %arraydecay8.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %21, i8 0, i64 96, i1 false)
  %22 = bitcast [2 x [12 x i64]]* %XRB to <4 x i64>*
  store <4 x i64> <i64 -5376076391536300772, i64 278885298517689489, i64 -2325809399318866862, i64 -6210198366434735997>, <4 x i64>* %22, align 16, !tbaa !3
  %arrayidx2.4.i213 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XRB, i64 0, i64 0, i64 4
  %23 = bitcast i64* %arrayidx2.4.i213 to <4 x i64>*
  store <4 x i64> <i64 -8835293157288827764, i64 2637748658071451261, i64 3544807444712948572, i64 -2233125461162933279>, <4 x i64>* %23, align 16, !tbaa !3
  %arrayidx2.8.i217 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XRB, i64 0, i64 0, i64 8
  %24 = bitcast i64* %arrayidx2.8.i217 to <4 x i64>*
  store <4 x i64> <i64 -1534070816221365583, i64 -5251650682390400545, i64 -560613151583404810, i64 59505860712722>, <4 x i64>* %24, align 16, !tbaa !3
  %arraydecay14.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XRB, i64 0, i64 1, i64 0
  %25 = bitcast i64* %arraydecay14.i to <4 x i64>*
  store <4 x i64> <i64 6397758586429206260, i64 -9108104224853317045, i64 4403427314326644353, i64 -7834048129543563472>, <4 x i64>* %25, align 16, !tbaa !3
  %arrayidx2.4.i30.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XRB, i64 0, i64 1, i64 4
  %26 = bitcast i64* %arrayidx2.4.i30.i to <4 x i64>*
  store <4 x i64> <i64 -7297181264924982569, i64 -1979301445290863950, i64 15521226430153318, i64 3328537178486072741>, <4 x i64>* %26, align 16, !tbaa !3
  %arrayidx2.8.i38.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %XRB, i64 0, i64 1, i64 8
  %27 = bitcast i64* %arrayidx2.8.i38.i to <4 x i64>*
  store <4 x i64> <i64 -546546720349608969, i64 -8077959945485607684, i64 -415175987874826629, i64 115645459333053>, <4 x i64>* %27, align 16, !tbaa !3
  %arraydecay3 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0
  %arraydecay.i221 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 0, i64 0
  %28 = bitcast [1 x %struct.point_proj]* %phiP to <4 x i64>*
  store <4 x i64> <i64 -8624597008524461400, i64 -5020841716012422112, i64 -4508180761239314355, i64 586935199814300635>, <4 x i64>* %28, align 16, !tbaa !3
  %arrayidx2.4.i.i225 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 0, i64 4
  %29 = bitcast i64* %arrayidx2.4.i.i225 to <4 x i64>*
  store <4 x i64> <i64 1231476659462315650, i64 -3246394521084132208, i64 7720484030924475341, i64 -7852071398881600364>, <4 x i64>* %29, align 16, !tbaa !3
  %arrayidx2.8.i.i229 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 0, i64 8
  %30 = bitcast i64* %arrayidx2.8.i.i229 to <4 x i64>*
  store <4 x i64> <i64 -2188584000029134321, i64 -8546628160115759780, i64 2594594101592586405, i64 16460334914570>, <4 x i64>* %30, align 16, !tbaa !3
  %arraydecay2.i233 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 1, i64 0
  %31 = bitcast i64* %arraydecay2.i233 to <4 x i64>*
  store <4 x i64> <i64 -5857059702320032876, i64 -6114084965349520524, i64 -1936358513353380623, i64 -8715966234124349157>, <4 x i64>* %31, align 16, !tbaa !3
  %arrayidx2.4.i274 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 1, i64 4
  %32 = bitcast i64* %arrayidx2.4.i274 to <4 x i64>*
  store <4 x i64> <i64 -543319585398042881, i64 5769280992065803964, i64 5532188670625076987, i64 -1866799854436416823>, <4 x i64>* %32, align 16, !tbaa !3
  %arrayidx2.8.i278 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 1, i64 8
  %33 = bitcast i64* %arrayidx2.8.i278 to <4 x i64>*
  store <4 x i64> <i64 -7172910929776876023, i64 -3954764222233415354, i64 9207655709386969385, i64 36625983307955>, <4 x i64>* %33, align 16, !tbaa !3
  %arraydecay5.i234 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 0, i64 0
  %34 = bitcast [1 x %struct.point_proj]* %phiQ to <4 x i64>*
  store <4 x i64> <i64 1122465274781142185, i64 8515870630345178839, i64 -1924743458572280985, i64 -7735178800194673427>, <4 x i64>* %34, align 16, !tbaa !3
  %arrayidx2.4.i263 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 0, i64 4
  %35 = bitcast i64* %arrayidx2.4.i263 to <4 x i64>*
  store <4 x i64> <i64 -3132739788306177595, i64 4840703288083784924, i64 -4856739261585915672, i64 -5564526081832302557>, <4 x i64>* %35, align 16, !tbaa !3
  %arrayidx2.8.i267 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 0, i64 8
  %36 = bitcast i64* %arrayidx2.8.i267 to <4 x i64>*
  store <4 x i64> <i64 -1255673010972750885, i64 8865126078528016748, i64 3693150086021936691, i64 36658777259884>, <4 x i64>* %36, align 16, !tbaa !3
  %arraydecay8.i235 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 1, i64 0
  %37 = bitcast i64* %arraydecay8.i235 to <4 x i64>*
  store <4 x i64> <i64 -1369314893638426804, i64 -288665025702785293, i64 1672925350903708369, i64 -4583776393718080526>, <4 x i64>* %37, align 16, !tbaa !3
  %arrayidx2.4.i252 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 1, i64 4
  %38 = bitcast i64* %arrayidx2.4.i252 to <4 x i64>*
  store <4 x i64> <i64 2382796300166624212, i64 -4469495515226427753, i64 2278800419424555458, i64 118108782222142818>, <4 x i64>* %38, align 16, !tbaa !3
  %arrayidx2.8.i256 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 1, i64 8
  %39 = bitcast i64* %arrayidx2.8.i256 to <4 x i64>*
  store <4 x i64> <i64 1476285485934066847, i64 -2412546410971581458, i64 2038060998052304781, i64 107394058694173>, <4 x i64>* %39, align 16, !tbaa !3
  %arraydecay11.i236 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 0, i64 0
  %40 = bitcast [1 x %struct.point_proj]* %phiR to <4 x i64>*
  store <4 x i64> <i64 1585483835096717809, i64 -6514868516257168393, i64 7781638337591394101, i64 6664888135375272208>, <4 x i64>* %40, align 16, !tbaa !3
  %arrayidx2.4.i285 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 0, i64 4
  %41 = bitcast i64* %arrayidx2.4.i285 to <4 x i64>*
  store <4 x i64> <i64 2840823194606539793, i64 -5651061943462976096, i64 2611282525231902794, i64 6070226513535983789>, <4 x i64>* %41, align 16, !tbaa !3
  %arrayidx2.8.i289 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 0, i64 8
  %42 = bitcast i64* %arrayidx2.8.i289 to <4 x i64>*
  store <4 x i64> <i64 -3628334550803276311, i64 -3194324477546548331, i64 7824800416788242299, i64 58455551134839>, <4 x i64>* %42, align 16, !tbaa !3
  %arraydecay14.i237 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 1, i64 0
  %43 = bitcast i64* %arraydecay14.i237 to <4 x i64>*
  store <4 x i64> <i64 -7243670977810514200, i64 -2651806496363392450, i64 2745271787383434087, i64 -6805338174168646425>, <4 x i64>* %43, align 16, !tbaa !3
  %arrayidx2.4.i30.i241 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 1, i64 4
  %44 = bitcast i64* %arrayidx2.4.i30.i241 to <4 x i64>*
  store <4 x i64> <i64 -7576149946420897235, i64 -7341551600998515230, i64 -3718998877823341149, i64 1375411507907286301>, <4 x i64>* %44, align 16, !tbaa !3
  %arrayidx2.8.i38.i245 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 1, i64 8
  %45 = bitcast i64* %arrayidx2.8.i38.i245 to <4 x i64>*
  store <4 x i64> <i64 -4268452966569410958, i64 5435466916003927824, i64 8796316040578972826, i64 31328095521215>, <4 x i64>* %45, align 16, !tbaa !3
  %Z = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 1
  %arraydecay12 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %Z, i64 0, i64 0, i64 0
  store i64 149933, i64* %arraydecay12, align 16, !tbaa !3
  %arrayidx2.1.i293 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.5.i297 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 1, i64 0, i64 5
  %46 = bitcast i64* %arrayidx2.1.i293 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %46, i8 0, i64 32, i1 false)
  %47 = bitcast i64* %arrayidx2.5.i297 to <4 x i64>*
  store <4 x i64> <i64 -9002695655113621504, i64 6136068611055053926, i64 7599709743867700432, i64 -3990831716756599250>, <4 x i64>* %47, align 8, !tbaa !3
  %arrayidx2.9.i301 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 1, i64 0, i64 9
  store i64 5522737203492907350, i64* %arrayidx2.9.i301, align 8, !tbaa !3
  %arrayidx2.10.i302 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 1, i64 0, i64 10
  store i64 1222606818372667369, i64* %arrayidx2.10.i302, align 16, !tbaa !3
  %arrayidx2.11.i303 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 1, i64 0, i64 11
  store i64 49869481633250, i64* %arrayidx2.11.i303, align 8, !tbaa !3
  %Z14 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 1
  %arraydecay16 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %Z14, i64 0, i64 0, i64 0
  store i64 149933, i64* %arraydecay16, align 16, !tbaa !3
  %arrayidx2.1.i304 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.5.i308 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 1, i64 0, i64 5
  %48 = bitcast i64* %arrayidx2.1.i304 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %48, i8 0, i64 32, i1 false)
  %49 = bitcast i64* %arrayidx2.5.i308 to <4 x i64>*
  store <4 x i64> <i64 -9002695655113621504, i64 6136068611055053926, i64 7599709743867700432, i64 -3990831716756599250>, <4 x i64>* %49, align 8, !tbaa !3
  %arrayidx2.9.i312 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 1, i64 0, i64 9
  store i64 5522737203492907350, i64* %arrayidx2.9.i312, align 8, !tbaa !3
  %arrayidx2.10.i313 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 1, i64 0, i64 10
  store i64 1222606818372667369, i64* %arrayidx2.10.i313, align 16, !tbaa !3
  %arrayidx2.11.i314 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 1, i64 0, i64 11
  store i64 49869481633250, i64* %arrayidx2.11.i314, align 8, !tbaa !3
  %Z18 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 1
  %arraydecay20 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %Z18, i64 0, i64 0, i64 0
  store i64 149933, i64* %arraydecay20, align 16, !tbaa !3
  %arrayidx2.1.i315 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.5.i319 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 1, i64 0, i64 5
  %50 = bitcast i64* %arrayidx2.1.i315 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %50, i8 0, i64 32, i1 false)
  %51 = bitcast i64* %arrayidx2.5.i319 to <4 x i64>*
  store <4 x i64> <i64 -9002695655113621504, i64 6136068611055053926, i64 7599709743867700432, i64 -3990831716756599250>, <4 x i64>* %51, align 8, !tbaa !3
  %arrayidx2.9.i323 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 1, i64 0, i64 9
  store i64 5522737203492907350, i64* %arrayidx2.9.i323, align 8, !tbaa !3
  %arrayidx2.10.i324 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 1, i64 0, i64 10
  store i64 1222606818372667369, i64* %arrayidx2.10.i324, align 16, !tbaa !3
  %arrayidx2.11.i325 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 1, i64 0, i64 11
  store i64 49869481633250, i64* %arrayidx2.11.i325, align 8, !tbaa !3
  %arraydecay22 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24plus, i64 0, i64 0, i64 0
  store i64 149933, i64* %arraydecay22, align 16, !tbaa !3
  %arrayidx2.1.i326 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24plus, i64 0, i64 0, i64 1
  %arrayidx2.5.i330 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24plus, i64 0, i64 0, i64 5
  %52 = bitcast i64* %arrayidx2.1.i326 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %52, i8 0, i64 32, i1 false)
  %53 = bitcast i64* %arrayidx2.5.i330 to <4 x i64>*
  store <4 x i64> <i64 -9002695655113621504, i64 6136068611055053926, i64 7599709743867700432, i64 -3990831716756599250>, <4 x i64>* %53, align 8, !tbaa !3
  %arrayidx2.9.i334 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24plus, i64 0, i64 0, i64 9
  store i64 5522737203492907350, i64* %arrayidx2.9.i334, align 8, !tbaa !3
  %arrayidx2.10.i335 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24plus, i64 0, i64 0, i64 10
  store i64 1222606818372667369, i64* %arrayidx2.10.i335, align 16, !tbaa !3
  %arrayidx2.11.i336 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24plus, i64 0, i64 0, i64 11
  store i64 49869481633250, i64* %arrayidx2.11.i336, align 8, !tbaa !3
  %arraydecay23 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24plus, i64 0, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay22, i64* nonnull %arraydecay22, i64* nonnull %arraydecay22) #10
  %arraydecay6.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24plus, i64 0, i64 1, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i) #10
  %arraydecay28 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24minus, i64 0, i64 0
  %arraydecay4.i342 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24minus, i64 0, i64 0, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay22, i64* nonnull %arraydecay22, i64* nonnull %arraydecay4.i342) #10
  %arraydecay10.i345 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24minus, i64 0, i64 1, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay10.i345) #10
  %arraydecay31 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A, i64 0, i64 0
  %arraydecay4.i348 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A, i64 0, i64 0, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay22, i64* nonnull %arraydecay4.i342, i64* nonnull %arraydecay4.i348) #10
  %arraydecay10.i351 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A, i64 0, i64 1, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay10.i345, i64* nonnull %arraydecay10.i351) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i342, i64* nonnull %arraydecay4.i342, i64* nonnull %arraydecay22) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay10.i345, i64* nonnull %arraydecay10.i345, i64* nonnull %arraydecay6.i) #10
  %arraydecay35 = getelementptr inbounds [6 x i64], [6 x i64]* %SecretKeyB, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %13, i8* align 1 %PrivateKeyB, i64 48, i1 false)
  %arraydecay40 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0
  call fastcc void @LADDER3PT([12 x i64]* nonnull %arraydecay, [12 x i64]* nonnull %arraydecay1, [12 x i64]* nonnull %arraydecay2, i64* nonnull %arraydecay35, i32 1, %struct.point_proj* nonnull %arraydecay40, [12 x i64]* nonnull %arraydecay31)
  %arrayidx.4.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 0, i64 4
  %arrayidx.8.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 0, i64 8
  %arraydecay4.i371 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 1, i64 0
  %arrayidx.4.i15.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 1, i64 4
  %arrayidx.8.i23.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 1, i64 8
  %arraydecay.i373 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 0, i64 0
  %arrayidx.4.i.i381 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 0, i64 4
  %arrayidx.8.i.i389 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 0, i64 8
  %arraydecay4.i397 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 1, i64 0
  %arrayidx.4.i15.i405 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 1, i64 4
  %arrayidx.8.i23.i413 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 1, i64 8
  %arraydecay70 = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %coeff, i64 0, i64 0
  %54 = bitcast [1 x %struct.point_proj]* %R to <4 x i64>*
  %55 = bitcast i64* %arrayidx.4.i.i to <4 x i64>*
  %56 = bitcast i64* %arrayidx.8.i.i to <4 x i64>*
  %57 = bitcast i64* %arraydecay4.i371 to <4 x i64>*
  %58 = bitcast i64* %arrayidx.4.i15.i to <4 x i64>*
  %59 = bitcast i64* %arrayidx.8.i23.i to <4 x i64>*
  %60 = bitcast i64* %arraydecay.i373 to <4 x i64>*
  %61 = bitcast i64* %arrayidx.4.i.i381 to <4 x i64>*
  %62 = bitcast i64* %arrayidx.8.i.i389 to <4 x i64>*
  %63 = bitcast i64* %arraydecay4.i397 to <4 x i64>*
  %64 = bitcast i64* %arrayidx.4.i15.i405 to <4 x i64>*
  %65 = bitcast i64* %arrayidx.8.i23.i413 to <4 x i64>*
  %66 = bitcast [1 x %struct.point_proj]* %R to <4 x i64>*
  %67 = bitcast i64* %arrayidx.4.i.i to <4 x i64>*
  %68 = bitcast i64* %arrayidx.8.i.i to <4 x i64>*
  %69 = bitcast i64* %arraydecay4.i371 to <4 x i64>*
  %70 = bitcast i64* %arrayidx.4.i15.i to <4 x i64>*
  %71 = bitcast i64* %arrayidx.8.i23.i to <4 x i64>*
  %72 = bitcast i64* %arraydecay.i373 to <4 x i64>*
  %73 = bitcast i64* %arrayidx.4.i.i381 to <4 x i64>*
  %74 = bitcast i64* %arrayidx.8.i.i389 to <4 x i64>*
  %75 = bitcast i64* %arraydecay4.i397 to <4 x i64>*
  %76 = bitcast i64* %arrayidx.4.i15.i405 to <4 x i64>*
  %77 = bitcast i64* %arrayidx.8.i23.i413 to <4 x i64>*
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.end, %entry
  %ii.0551 = phi i32 [ 0, %entry ], [ %ii.1.lcssa, %for.end ]
  %npts.0550 = phi i32 [ 0, %entry ], [ %sub85, %for.end ]
  %index.0549 = phi i32 [ 0, %entry ], [ %127, %for.end ]
  %row.0548 = phi i32 [ 1, %entry ], [ %inc108, %for.end ]
  %sub = sub nuw nsw i32 239, %row.0548
  %cmp42541 = icmp ult i32 %index.0549, %sub
  br i1 %cmp42541, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %ii.1544 = phi i32 [ %inc60, %while.body ], [ %ii.0551, %while.cond.preheader ]
  %npts.1543 = phi i32 [ %inc, %while.body ], [ %npts.0550, %while.cond.preheader ]
  %index.1542 = phi i32 [ %add, %while.body ], [ %index.0549, %while.cond.preheader ]
  %idxprom = zext i32 %npts.1543 to i64
  %arraydecay2.i359 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 0, i64 0
  %78 = load <4 x i64>, <4 x i64>* %54, align 16, !tbaa !3
  %79 = bitcast i64* %arraydecay2.i359 to <4 x i64>*
  store <4 x i64> %78, <4 x i64>* %79, align 16, !tbaa !3
  %arrayidx2.4.i.i363 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 0, i64 4
  %80 = load <4 x i64>, <4 x i64>* %55, align 16, !tbaa !3
  %81 = bitcast i64* %arrayidx2.4.i.i363 to <4 x i64>*
  store <4 x i64> %80, <4 x i64>* %81, align 16, !tbaa !3
  %arrayidx2.8.i.i367 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 0, i64 8
  %82 = load <4 x i64>, <4 x i64>* %56, align 16, !tbaa !3
  %83 = bitcast i64* %arrayidx2.8.i.i367 to <4 x i64>*
  store <4 x i64> %82, <4 x i64>* %83, align 16, !tbaa !3
  %arraydecay6.i372 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 1, i64 0
  %84 = load <4 x i64>, <4 x i64>* %57, align 16, !tbaa !3
  %85 = bitcast i64* %arraydecay6.i372 to <4 x i64>*
  store <4 x i64> %84, <4 x i64>* %85, align 16, !tbaa !3
  %arrayidx2.4.i16.i = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 1, i64 4
  %86 = load <4 x i64>, <4 x i64>* %58, align 16, !tbaa !3
  %87 = bitcast i64* %arrayidx2.4.i16.i to <4 x i64>*
  store <4 x i64> %86, <4 x i64>* %87, align 16, !tbaa !3
  %arrayidx2.8.i24.i = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 1, i64 8
  %88 = load <4 x i64>, <4 x i64>* %59, align 16, !tbaa !3
  %89 = bitcast i64* %arrayidx2.8.i24.i to <4 x i64>*
  store <4 x i64> %88, <4 x i64>* %89, align 16, !tbaa !3
  %arraydecay2.i374 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 0, i64 0
  %90 = load <4 x i64>, <4 x i64>* %60, align 16, !tbaa !3
  %91 = bitcast i64* %arraydecay2.i374 to <4 x i64>*
  store <4 x i64> %90, <4 x i64>* %91, align 16, !tbaa !3
  %arrayidx2.4.i.i382 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 0, i64 4
  %92 = load <4 x i64>, <4 x i64>* %61, align 16, !tbaa !3
  %93 = bitcast i64* %arrayidx2.4.i.i382 to <4 x i64>*
  store <4 x i64> %92, <4 x i64>* %93, align 16, !tbaa !3
  %arrayidx2.8.i.i390 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 0, i64 8
  %94 = load <4 x i64>, <4 x i64>* %62, align 16, !tbaa !3
  %95 = bitcast i64* %arrayidx2.8.i.i390 to <4 x i64>*
  store <4 x i64> %94, <4 x i64>* %95, align 16, !tbaa !3
  %arraydecay6.i398 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 1, i64 0
  %96 = load <4 x i64>, <4 x i64>* %63, align 16, !tbaa !3
  %97 = bitcast i64* %arraydecay6.i398 to <4 x i64>*
  store <4 x i64> %96, <4 x i64>* %97, align 16, !tbaa !3
  %arrayidx2.4.i16.i406 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 1, i64 4
  %98 = load <4 x i64>, <4 x i64>* %64, align 16, !tbaa !3
  %99 = bitcast i64* %arrayidx2.4.i16.i406 to <4 x i64>*
  store <4 x i64> %98, <4 x i64>* %99, align 16, !tbaa !3
  %arrayidx2.8.i24.i414 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 1, i64 8
  %100 = load <4 x i64>, <4 x i64>* %65, align 16, !tbaa !3
  %101 = bitcast i64* %arrayidx2.8.i24.i414 to <4 x i64>*
  store <4 x i64> %100, <4 x i64>* %101, align 16, !tbaa !3
  %inc = add i32 %npts.1543, 1
  %arrayidx59 = getelementptr inbounds [10 x i32], [10 x i32]* %pts_index, i64 0, i64 %idxprom
  store i32 %index.1542, i32* %arrayidx59, align 4, !tbaa !59
  %inc60 = add i32 %ii.1544, 1
  %idxprom61 = zext i32 %ii.1544 to i64
  %arrayidx62 = getelementptr inbounds [238 x i32], [238 x i32]* @strat_Bob, i64 0, i64 %idxprom61
  %102 = load i32, i32* %arrayidx62, align 4, !tbaa !59
  call void @xTPLe(%struct.point_proj* nonnull %arraydecay40, %struct.point_proj* nonnull %arraydecay40, [12 x i64]* nonnull %arraydecay28, [12 x i64]* nonnull %arraydecay23, i32 %102)
  %add = add i32 %102, %index.1542
  %cmp42 = icmp ult i32 %add, %sub
  br i1 %cmp42, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %npts.1.lcssa = phi i32 [ %npts.0550, %while.cond.preheader ], [ %inc, %while.body ]
  %ii.1.lcssa = phi i32 [ %ii.0551, %while.cond.preheader ], [ %inc60, %while.body ]
  call void @get_3_isog(%struct.point_proj* nonnull %arraydecay40, [12 x i64]* nonnull %arraydecay28, [12 x i64]* nonnull %arraydecay23, [2 x [12 x i64]]* nonnull %arraydecay70)
  %cmp72546 = icmp eq i32 %npts.1.lcssa, 0
  br i1 %cmp72546, label %for.end, label %for.body73.preheader

for.body73.preheader:                             ; preds = %while.end
  %wide.trip.count = zext i32 %npts.1.lcssa to i64
  br label %for.body73

for.body73:                                       ; preds = %for.body73, %for.body73.preheader
  %indvars.iv = phi i64 [ 0, %for.body73.preheader ], [ %indvars.iv.next, %for.body73 ]
  %arraydecay76 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %indvars.iv, i64 0
  call void @eval_3_isog(%struct.point_proj* nonnull %arraydecay76, [2 x [12 x i64]]* nonnull %arraydecay70)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.end, label %for.body73

for.end:                                          ; preds = %for.body73, %while.end
  call void @eval_3_isog(%struct.point_proj* nonnull %arraydecay3, [2 x [12 x i64]]* nonnull %arraydecay70)
  call void @eval_3_isog(%struct.point_proj* nonnull %arraydecay5, [2 x [12 x i64]]* nonnull %arraydecay70)
  call void @eval_3_isog(%struct.point_proj* nonnull %arraydecay8, [2 x [12 x i64]]* nonnull %arraydecay70)
  %sub85 = add i32 %npts.1.lcssa, -1
  %idxprom86 = zext i32 %sub85 to i64
  %arraydecay.i421 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 0, i64 0, i64 0
  %103 = bitcast i64* %arraydecay.i421 to <4 x i64>*
  %104 = load <4 x i64>, <4 x i64>* %103, align 16, !tbaa !3
  store <4 x i64> %104, <4 x i64>* %66, align 16, !tbaa !3
  %arrayidx.4.i.i429 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 0, i64 0, i64 4
  %105 = bitcast i64* %arrayidx.4.i.i429 to <4 x i64>*
  %106 = load <4 x i64>, <4 x i64>* %105, align 16, !tbaa !3
  store <4 x i64> %106, <4 x i64>* %67, align 16, !tbaa !3
  %arrayidx.8.i.i437 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 0, i64 0, i64 8
  %107 = bitcast i64* %arrayidx.8.i.i437 to <4 x i64>*
  %108 = load <4 x i64>, <4 x i64>* %107, align 16, !tbaa !3
  store <4 x i64> %108, <4 x i64>* %68, align 16, !tbaa !3
  %arraydecay4.i445 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 0, i64 1, i64 0
  %109 = bitcast i64* %arraydecay4.i445 to <4 x i64>*
  %110 = load <4 x i64>, <4 x i64>* %109, align 16, !tbaa !3
  store <4 x i64> %110, <4 x i64>* %69, align 16, !tbaa !3
  %arrayidx.4.i15.i453 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 0, i64 1, i64 4
  %111 = bitcast i64* %arrayidx.4.i15.i453 to <4 x i64>*
  %112 = load <4 x i64>, <4 x i64>* %111, align 16, !tbaa !3
  store <4 x i64> %112, <4 x i64>* %70, align 16, !tbaa !3
  %arrayidx.8.i23.i461 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 0, i64 1, i64 8
  %113 = bitcast i64* %arrayidx.8.i23.i461 to <4 x i64>*
  %114 = load <4 x i64>, <4 x i64>* %113, align 16, !tbaa !3
  store <4 x i64> %114, <4 x i64>* %71, align 16, !tbaa !3
  %arraydecay.i469 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 1, i64 0, i64 0
  %115 = bitcast i64* %arraydecay.i469 to <4 x i64>*
  %116 = load <4 x i64>, <4 x i64>* %115, align 16, !tbaa !3
  store <4 x i64> %116, <4 x i64>* %72, align 16, !tbaa !3
  %arrayidx.4.i.i477 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 1, i64 0, i64 4
  %117 = bitcast i64* %arrayidx.4.i.i477 to <4 x i64>*
  %118 = load <4 x i64>, <4 x i64>* %117, align 16, !tbaa !3
  store <4 x i64> %118, <4 x i64>* %73, align 16, !tbaa !3
  %arrayidx.8.i.i485 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 1, i64 0, i64 8
  %119 = bitcast i64* %arrayidx.8.i.i485 to <4 x i64>*
  %120 = load <4 x i64>, <4 x i64>* %119, align 16, !tbaa !3
  store <4 x i64> %120, <4 x i64>* %74, align 16, !tbaa !3
  %arraydecay4.i493 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 1, i64 1, i64 0
  %121 = bitcast i64* %arraydecay4.i493 to <4 x i64>*
  %122 = load <4 x i64>, <4 x i64>* %121, align 16, !tbaa !3
  store <4 x i64> %122, <4 x i64>* %75, align 16, !tbaa !3
  %arrayidx.4.i15.i501 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 1, i64 1, i64 4
  %123 = bitcast i64* %arrayidx.4.i15.i501 to <4 x i64>*
  %124 = load <4 x i64>, <4 x i64>* %123, align 16, !tbaa !3
  store <4 x i64> %124, <4 x i64>* %76, align 16, !tbaa !3
  %arrayidx.8.i23.i509 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 1, i64 1, i64 8
  %125 = bitcast i64* %arrayidx.8.i23.i509 to <4 x i64>*
  %126 = load <4 x i64>, <4 x i64>* %125, align 16, !tbaa !3
  store <4 x i64> %126, <4 x i64>* %77, align 16, !tbaa !3
  %arrayidx105 = getelementptr inbounds [10 x i32], [10 x i32]* %pts_index, i64 0, i64 %idxprom86
  %127 = load i32, i32* %arrayidx105, align 4, !tbaa !59
  %inc108 = add nuw nsw i32 %row.0548, 1
  %exitcond552 = icmp eq i32 %inc108, 239
  br i1 %exitcond552, label %for.end109, label %while.cond.preheader

for.end109:                                       ; preds = %for.end
  %arraydecay4 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 0
  %arraydecay7 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 0
  %arraydecay10 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 0
  call void @get_3_isog(%struct.point_proj* nonnull %arraydecay40, [12 x i64]* nonnull %arraydecay28, [12 x i64]* nonnull %arraydecay23, [2 x [12 x i64]]* nonnull %arraydecay70)
  call void @eval_3_isog(%struct.point_proj* nonnull %arraydecay3, [2 x [12 x i64]]* nonnull %arraydecay70)
  call void @eval_3_isog(%struct.point_proj* nonnull %arraydecay5, [2 x [12 x i64]]* nonnull %arraydecay70)
  call void @eval_3_isog(%struct.point_proj* nonnull %arraydecay8, [2 x [12 x i64]]* nonnull %arraydecay70)
  %arraydecay122 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %Z, i64 0, i64 0
  %arraydecay125 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %Z14, i64 0, i64 0
  %arraydecay128 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %Z18, i64 0, i64 0
  call void @inv_3_way([12 x i64]* nonnull %arraydecay122, [12 x i64]* nonnull %arraydecay125, [12 x i64]* nonnull %arraydecay128)
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay4, [12 x i64]* nonnull %arraydecay122, [12 x i64]* nonnull %arraydecay4)
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay7, [12 x i64]* nonnull %arraydecay125, [12 x i64]* nonnull %arraydecay7)
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay10, [12 x i64]* nonnull %arraydecay128, [12 x i64]* nonnull %arraydecay10)
  %128 = bitcast [2 x [12 x i64]]* %t.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %128) #10
  %arraydecay2.i.i521 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t.i, i64 0, i64 0, i64 0
  %129 = bitcast [12 x i64]* %one.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %129) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %129, i8 0, i64 96, i1 false) #10
  %arrayidx.i.i.i522 = getelementptr inbounds [12 x i64], [12 x i64]* %one.i.i.i, i64 0, i64 0
  store i64 1, i64* %arrayidx.i.i.i522, align 16, !tbaa !3
  %130 = bitcast [24 x i64]* %temp.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %130) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %130, i8 0, i64 192, i1 false) #10
  %arraydecay.i.i.i.i523 = getelementptr inbounds [24 x i64], [24 x i64]* %temp.i.i.i.i, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay.i221, i64* nonnull %arrayidx.i.i.i522, i64* nonnull %arraydecay.i.i.i.i523, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i523, i64* nonnull %arraydecay2.i.i521) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %130) #10
  call void @fpcorrection751(i64* nonnull %arraydecay2.i.i521) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %129) #10
  %arraydecay6.i.i525 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t.i, i64 0, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %129) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %129, i8 0, i64 96, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i522, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %130) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %130, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2.i233, i64* nonnull %arrayidx.i.i.i522, i64* nonnull %arraydecay.i.i.i.i523, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i523, i64* nonnull %arraydecay6.i.i525) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %130) #10
  call void @fpcorrection751(i64* nonnull %arraydecay6.i.i525) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %129) #10
  %131 = call i64 @llvm.objectsize.i64.p0i8(i8* %PublicKeyB, i1 false, i1 true) #10
  %call.i.i526 = call i8* @__memcpy_chk(i8* %PublicKeyB, i8* nonnull %128, i64 94, i64 %131) #10
  %add.ptr.i527 = getelementptr inbounds i8, i8* %PublicKeyB, i64 94
  %132 = bitcast i64* %arraydecay6.i.i525 to i8*
  %133 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr.i527, i1 false, i1 true) #10
  %call.i5.i528 = call i8* @__memcpy_chk(i8* nonnull %add.ptr.i527, i8* nonnull %132, i64 94, i64 %133) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %128) #10
  %add.ptr = getelementptr inbounds i8, i8* %PublicKeyB, i64 188
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %128) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %129) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %129, i8 0, i64 96, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i522, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %130) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %130, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay5.i234, i64* nonnull %arrayidx.i.i.i522, i64* nonnull %arraydecay.i.i.i.i523, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i523, i64* nonnull %arraydecay2.i.i521) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %130) #10
  call void @fpcorrection751(i64* nonnull %arraydecay2.i.i521) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %129) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %129) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %129, i8 0, i64 96, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i522, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %130) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %130, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.i235, i64* nonnull %arrayidx.i.i.i522, i64* nonnull %arraydecay.i.i.i.i523, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i523, i64* nonnull %arraydecay6.i.i525) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %130) #10
  call void @fpcorrection751(i64* nonnull %arraydecay6.i.i525) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %129) #10
  %134 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr, i1 false, i1 true) #10
  %call.i.i538 = call i8* @__memcpy_chk(i8* nonnull %add.ptr, i8* nonnull %128, i64 94, i64 %134) #10
  %add.ptr.i539 = getelementptr inbounds i8, i8* %PublicKeyB, i64 282
  %135 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr.i539, i1 false, i1 true) #10
  %call.i5.i540 = call i8* @__memcpy_chk(i8* nonnull %add.ptr.i539, i8* nonnull %132, i64 94, i64 %135) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %128) #10
  %add.ptr165 = getelementptr inbounds i8, i8* %PublicKeyB, i64 376
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %128) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %129) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %129, i8 0, i64 96, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i522, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %130) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %130, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay11.i236, i64* nonnull %arrayidx.i.i.i522, i64* nonnull %arraydecay.i.i.i.i523, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i523, i64* nonnull %arraydecay2.i.i521) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %130) #10
  call void @fpcorrection751(i64* nonnull %arraydecay2.i.i521) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %129) #10
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %129) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %129, i8 0, i64 96, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i522, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %130) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %130, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay14.i237, i64* nonnull %arrayidx.i.i.i522, i64* nonnull %arraydecay.i.i.i.i523, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i523, i64* nonnull %arraydecay6.i.i525) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %130) #10
  call void @fpcorrection751(i64* nonnull %arraydecay6.i.i525) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %129) #10
  %136 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr165, i1 false, i1 true) #10
  %call.i.i = call i8* @__memcpy_chk(i8* nonnull %add.ptr165, i8* nonnull %128, i64 94, i64 %136) #10
  %add.ptr.i = getelementptr inbounds i8, i8* %PublicKeyB, i64 470
  %137 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr.i, i1 false, i1 true) #10
  %call.i5.i = call i8* @__memcpy_chk(i8* nonnull %add.ptr.i, i8* nonnull %132, i64 94, i64 %137) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %128) #10
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %13) #10
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %12) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %11) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %10) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %9) #10
  call void @llvm.lifetime.end.p0i8(i64 576, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 3840, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %0) #10
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define i32 @EphemeralSecretAgreement_A_SIDHp751(i8* %PrivateKeyA, i8* %PublicKeyB, i8* %SharedSecretA) local_unnamed_addr #4 {
entry:
  %one.i.i.i = alloca [12 x i64], align 16
  %t.i = alloca [2 x [12 x i64]], align 16
  %temp.i.i.i.i = alloca [24 x i64], align 16
  %R = alloca [1 x %struct.point_proj], align 16
  %pts = alloca [8 x [1 x %struct.point_proj]], align 16
  %coeff = alloca [3 x [2 x [12 x i64]]], align 16
  %PKB = alloca [3 x [2 x [12 x i64]]], align 16
  %jinv = alloca [2 x [12 x i64]], align 16
  %A24plus = alloca [2 x [12 x i64]], align 16
  %C24 = alloca [2 x [12 x i64]], align 16
  %A = alloca [2 x [12 x i64]], align 16
  %pts_index = alloca [8 x i32], align 16
  %SecretKeyA = alloca [6 x i64], align 16
  %0 = bitcast [1 x %struct.point_proj]* %R to i8*
  call void @llvm.lifetime.start.p0i8(i64 384, i8* nonnull %0) #10
  %1 = bitcast [8 x [1 x %struct.point_proj]]* %pts to i8*
  call void @llvm.lifetime.start.p0i8(i64 3072, i8* nonnull %1) #10
  %2 = bitcast [3 x [2 x [12 x i64]]]* %coeff to i8*
  call void @llvm.lifetime.start.p0i8(i64 576, i8* nonnull %2) #10
  %3 = bitcast [3 x [2 x [12 x i64]]]* %PKB to i8*
  call void @llvm.lifetime.start.p0i8(i64 576, i8* nonnull %3) #10
  %4 = bitcast [2 x [12 x i64]]* %jinv to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %4) #10
  %5 = bitcast [2 x [12 x i64]]* %A24plus to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %5, i8 0, i64 192, i1 false)
  %6 = bitcast [2 x [12 x i64]]* %C24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %6) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %6, i8 0, i64 192, i1 false)
  %7 = bitcast [2 x [12 x i64]]* %A to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %7) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %7, i8 0, i64 192, i1 false)
  %8 = bitcast [8 x i32]* %pts_index to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #10
  %9 = bitcast [6 x i64]* %SecretKeyA to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %9) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 48, i1 false)
  %arraydecay = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 0, i64 0
  %arraydecay.i = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 0, i64 0, i64 0
  %arrayidx.i.i = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 0, i64 0, i64 11
  store i64 0, i64* %arrayidx.i.i, align 8, !tbaa !3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %3, i8* align 1 %PublicKeyB, i64 94, i1 false)
  %add.ptr.i = getelementptr inbounds i8, i8* %PublicKeyB, i64 94
  %arraydecay2.i = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 0, i64 1, i64 0
  %arrayidx.i7.i = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 0, i64 1, i64 11
  store i64 0, i64* %arrayidx.i7.i, align 8, !tbaa !3
  %10 = bitcast i64* %arraydecay2.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %10, i8* nonnull align 1 %add.ptr.i, i64 94, i1 false)
  %11 = bitcast [24 x i64]* %temp.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 192, i1 false) #10
  %arraydecay.i.i.i.i = getelementptr inbounds [24 x i64], [24 x i64]* %temp.i.i.i.i, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay.i, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %11) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2.i, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay2.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %11) #10
  %add.ptr = getelementptr inbounds i8, i8* %PublicKeyB, i64 188
  %arraydecay2 = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 1, i64 0
  %arraydecay.i135 = getelementptr inbounds [12 x i64], [12 x i64]* %arraydecay2, i64 0, i64 0
  %arrayidx.i.i136 = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 1, i64 0, i64 11
  store i64 0, i64* %arrayidx.i.i136, align 8, !tbaa !3
  %12 = bitcast [12 x i64]* %arraydecay2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %12, i8* nonnull align 1 %add.ptr, i64 94, i1 false)
  %add.ptr.i138 = getelementptr inbounds i8, i8* %PublicKeyB, i64 282
  %arraydecay2.i139 = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 1, i64 1, i64 0
  %arrayidx.i7.i140 = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 1, i64 1, i64 11
  store i64 0, i64* %arrayidx.i7.i140, align 8, !tbaa !3
  %13 = bitcast i64* %arraydecay2.i139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %13, i8* nonnull align 1 %add.ptr.i138, i64 94, i1 false)
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay.i135, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay.i135) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %11) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2.i139, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay2.i139) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %11) #10
  %add.ptr3 = getelementptr inbounds i8, i8* %PublicKeyB, i64 376
  %arraydecay5 = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 2, i64 0
  %arraydecay.i144 = getelementptr inbounds [12 x i64], [12 x i64]* %arraydecay5, i64 0, i64 0
  %arrayidx.i.i145 = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 2, i64 0, i64 11
  store i64 0, i64* %arrayidx.i.i145, align 8, !tbaa !3
  %14 = bitcast [12 x i64]* %arraydecay5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %14, i8* nonnull align 1 %add.ptr3, i64 94, i1 false)
  %add.ptr.i147 = getelementptr inbounds i8, i8* %PublicKeyB, i64 470
  %arraydecay2.i148 = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 2, i64 1, i64 0
  %arrayidx.i7.i149 = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 2, i64 1, i64 11
  store i64 0, i64* %arrayidx.i7.i149, align 8, !tbaa !3
  %15 = bitcast i64* %arraydecay2.i148 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %15, i8* nonnull align 1 %add.ptr.i147, i64 94, i1 false)
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay.i144, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay.i144) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %11) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2.i148, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay2.i148) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %11) #10
  %arraydecay12 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A, i64 0, i64 0
  call void @get_A([12 x i64]* nonnull %arraydecay, [12 x i64]* nonnull %arraydecay2, [12 x i64]* nonnull %arraydecay5, [12 x i64]* nonnull %arraydecay12)
  %arrayidx5.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %C24, i64 0, i64 0, i64 0
  store i64 299866, i64* %arrayidx5.i, align 16, !tbaa !3
  %arrayidx5.i.1 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %C24, i64 0, i64 0, i64 1
  %arrayidx5.i.2 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %C24, i64 0, i64 0, i64 2
  %arrayidx5.i.3 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %C24, i64 0, i64 0, i64 3
  %arrayidx5.i.4 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %C24, i64 0, i64 0, i64 4
  %arrayidx5.i.5 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %C24, i64 0, i64 0, i64 5
  %16 = bitcast i64* %arrayidx5.i.1 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %16, i8 0, i64 32, i1 false)
  %arrayidx5.i.6 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %C24, i64 0, i64 0, i64 6
  %arrayidx5.i.7 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %C24, i64 0, i64 0, i64 7
  %arrayidx5.i.8 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %C24, i64 0, i64 0, i64 8
  %17 = bitcast i64* %arrayidx5.i.5 to <4 x i64>*
  store <4 x i64> <i64 441352763482308608, i64 -6174606851599443763, i64 -3247324585974150752, i64 -7981663433513198500>, <4 x i64>* %17, align 8, !tbaa !3
  %arrayidx5.i.9 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %C24, i64 0, i64 0, i64 9
  store i64 -7401269666723736915, i64* %arrayidx5.i.9, align 8, !tbaa !3
  %arrayidx5.i.10 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %C24, i64 0, i64 0, i64 10
  store i64 2445213636745334738, i64* %arrayidx5.i.10, align 16, !tbaa !3
  %arrayidx5.i.11 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %C24, i64 0, i64 0, i64 11
  store i64 99738963266500, i64* %arrayidx5.i.11, align 8, !tbaa !3
  %arraydecay16 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %C24, i64 0, i64 0
  %arraydecay.i152 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A, i64 0, i64 0, i64 0
  %arraydecay4.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24plus, i64 0, i64 0, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay.i152, i64* nonnull %arrayidx5.i, i64* nonnull %arraydecay4.i) #10
  %arraydecay6.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A, i64 0, i64 1, i64 0
  %arraydecay8.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %C24, i64 0, i64 1, i64 0
  %arraydecay10.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24plus, i64 0, i64 1, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i) #10
  %18 = load i64, i64* %arrayidx5.i, align 16, !tbaa !3
  %add3.i159 = shl i64 %18, 1
  store i64 %add3.i159, i64* %arrayidx5.i, align 16, !tbaa !3
  %or29.i167 = lshr i64 %18, 63
  %19 = load i64, i64* %arrayidx5.i.1, align 8, !tbaa !3
  %add.i157.1 = add i64 %19, %or29.i167
  %add3.i159.1 = add i64 %add.i157.1, %19
  store i64 %add3.i159.1, i64* %arrayidx5.i.1, align 8, !tbaa !3
  %20 = xor i64 %add.i157.1, -9223372036854775808
  %xor2.i.i161.1 = and i64 %20, %19
  %xor.i23.i162.1 = xor i64 %add3.i159.1, %add.i157.1
  %xor1.i24.i163.1 = xor i64 %add.i157.1, %19
  %or.i25.i164.1 = or i64 %xor.i23.i162.1, %xor1.i24.i163.1
  %xor2.i26.i165.1 = xor i64 %or.i25.i164.1, %add3.i159.1
  %shr.i30.i166.1 = or i64 %xor2.i26.i165.1, %xor2.i.i161.1
  %or29.i167.1 = lshr i64 %shr.i30.i166.1, 63
  %21 = load i64, i64* %arrayidx5.i.2, align 16, !tbaa !3
  %add.i157.2 = add i64 %21, %or29.i167.1
  %add3.i159.2 = add i64 %add.i157.2, %21
  store i64 %add3.i159.2, i64* %arrayidx5.i.2, align 16, !tbaa !3
  %22 = xor i64 %add.i157.2, -9223372036854775808
  %xor2.i.i161.2 = and i64 %22, %21
  %xor.i23.i162.2 = xor i64 %add3.i159.2, %add.i157.2
  %xor1.i24.i163.2 = xor i64 %add.i157.2, %21
  %or.i25.i164.2 = or i64 %xor.i23.i162.2, %xor1.i24.i163.2
  %xor2.i26.i165.2 = xor i64 %or.i25.i164.2, %add3.i159.2
  %shr.i30.i166.2 = or i64 %xor2.i26.i165.2, %xor2.i.i161.2
  %or29.i167.2 = lshr i64 %shr.i30.i166.2, 63
  %23 = load i64, i64* %arrayidx5.i.3, align 8, !tbaa !3
  %add.i157.3 = add i64 %23, %or29.i167.2
  %add3.i159.3 = add i64 %add.i157.3, %23
  store i64 %add3.i159.3, i64* %arrayidx5.i.3, align 8, !tbaa !3
  %24 = xor i64 %add.i157.3, -9223372036854775808
  %xor2.i.i161.3 = and i64 %24, %23
  %xor.i23.i162.3 = xor i64 %add3.i159.3, %add.i157.3
  %xor1.i24.i163.3 = xor i64 %add.i157.3, %23
  %or.i25.i164.3 = or i64 %xor.i23.i162.3, %xor1.i24.i163.3
  %xor2.i26.i165.3 = xor i64 %or.i25.i164.3, %add3.i159.3
  %shr.i30.i166.3 = or i64 %xor2.i26.i165.3, %xor2.i.i161.3
  %or29.i167.3 = lshr i64 %shr.i30.i166.3, 63
  %25 = load i64, i64* %arrayidx5.i.4, align 16, !tbaa !3
  %add.i157.4 = add i64 %25, %or29.i167.3
  %add3.i159.4 = add i64 %add.i157.4, %25
  store i64 %add3.i159.4, i64* %arrayidx5.i.4, align 16, !tbaa !3
  %26 = xor i64 %add.i157.4, -9223372036854775808
  %xor2.i.i161.4 = and i64 %26, %25
  %xor.i23.i162.4 = xor i64 %add3.i159.4, %add.i157.4
  %xor1.i24.i163.4 = xor i64 %add.i157.4, %25
  %or.i25.i164.4 = or i64 %xor.i23.i162.4, %xor1.i24.i163.4
  %xor2.i26.i165.4 = xor i64 %or.i25.i164.4, %add3.i159.4
  %shr.i30.i166.4 = or i64 %xor2.i26.i165.4, %xor2.i.i161.4
  %or29.i167.4 = lshr i64 %shr.i30.i166.4, 63
  %27 = load i64, i64* %arrayidx5.i.5, align 8, !tbaa !3
  %add.i157.5 = add i64 %27, %or29.i167.4
  %add3.i159.5 = add i64 %add.i157.5, %27
  store i64 %add3.i159.5, i64* %arrayidx5.i.5, align 8, !tbaa !3
  %28 = xor i64 %add.i157.5, -9223372036854775808
  %xor2.i.i161.5 = and i64 %28, %27
  %xor.i23.i162.5 = xor i64 %add3.i159.5, %add.i157.5
  %xor1.i24.i163.5 = xor i64 %add.i157.5, %27
  %or.i25.i164.5 = or i64 %xor.i23.i162.5, %xor1.i24.i163.5
  %xor2.i26.i165.5 = xor i64 %or.i25.i164.5, %add3.i159.5
  %shr.i30.i166.5 = or i64 %xor2.i26.i165.5, %xor2.i.i161.5
  %or29.i167.5 = lshr i64 %shr.i30.i166.5, 63
  %add3.i159.6 = or i64 %or29.i167.5, 6097530370510664090
  store i64 %add3.i159.6, i64* %arrayidx5.i.6, align 16, !tbaa !3
  store i64 -6494649171948301503, i64* %arrayidx5.i.7, align 8, !tbaa !3
  %29 = load i64, i64* %arrayidx5.i.8, align 16, !tbaa !3
  %add.i157.8 = add i64 %29, 1
  %add3.i159.8 = add i64 %add.i157.8, %29
  store i64 %add3.i159.8, i64* %arrayidx5.i.8, align 16, !tbaa !3
  %30 = add i64 %29, -9223372036854775807
  %xor2.i.i161.8 = and i64 %30, %29
  %xor.i23.i162.8 = xor i64 %add3.i159.8, %add.i157.8
  %xor1.i24.i163.8 = xor i64 %add.i157.8, %29
  %or.i25.i164.8 = or i64 %xor.i23.i162.8, %xor1.i24.i163.8
  %xor2.i26.i165.8 = xor i64 %or.i25.i164.8, %add3.i159.8
  %shr.i30.i166.8 = or i64 %xor2.i26.i165.8, %xor2.i.i161.8
  %or29.i167.8 = lshr i64 %shr.i30.i166.8, 63
  %31 = load i64, i64* %arrayidx5.i.9, align 8, !tbaa !3
  %add.i157.9 = add i64 %31, %or29.i167.8
  %add3.i159.9 = add i64 %add.i157.9, %31
  store i64 %add3.i159.9, i64* %arrayidx5.i.9, align 8, !tbaa !3
  %32 = xor i64 %add.i157.9, -9223372036854775808
  %xor2.i.i161.9 = and i64 %32, %31
  %xor.i23.i162.9 = xor i64 %add3.i159.9, %add.i157.9
  %xor1.i24.i163.9 = xor i64 %add.i157.9, %31
  %or.i25.i164.9 = or i64 %xor.i23.i162.9, %xor1.i24.i163.9
  %xor2.i26.i165.9 = xor i64 %or.i25.i164.9, %add3.i159.9
  %shr.i30.i166.9 = or i64 %xor2.i26.i165.9, %xor2.i.i161.9
  %or29.i167.9 = lshr i64 %shr.i30.i166.9, 63
  %33 = load i64, i64* %arrayidx5.i.10, align 16, !tbaa !3
  %add.i157.10 = add i64 %33, %or29.i167.9
  %add3.i159.10 = add i64 %add.i157.10, %33
  store i64 %add3.i159.10, i64* %arrayidx5.i.10, align 16, !tbaa !3
  %34 = xor i64 %add.i157.10, -9223372036854775808
  %xor2.i.i161.10 = and i64 %34, %33
  %xor.i23.i162.10 = xor i64 %add3.i159.10, %add.i157.10
  %xor1.i24.i163.10 = xor i64 %add.i157.10, %33
  %or.i25.i164.10 = or i64 %xor.i23.i162.10, %xor1.i24.i163.10
  %xor2.i26.i165.10 = xor i64 %or.i25.i164.10, %add3.i159.10
  %shr.i30.i166.10 = or i64 %xor2.i26.i165.10, %xor2.i.i161.10
  %or29.i167.10 = lshr i64 %shr.i30.i166.10, 63
  %35 = load i64, i64* %arrayidx5.i.11, align 8, !tbaa !3
  %add.i157.11 = add i64 %35, %or29.i167.10
  %add3.i159.11 = add i64 %add.i157.11, %35
  store i64 %add3.i159.11, i64* %arrayidx5.i.11, align 8, !tbaa !3
  %arraydecay17 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24plus, i64 0, i64 0
  %arraydecay25 = getelementptr inbounds [6 x i64], [6 x i64]* %SecretKeyA, i64 0, i64 0
  %arrayidx.i173 = getelementptr inbounds [6 x i64], [6 x i64]* %SecretKeyA, i64 0, i64 5
  store i64 0, i64* %arrayidx.i173, align 8, !tbaa !3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %9, i8* align 1 %PrivateKeyA, i64 47, i1 false)
  %arraydecay33 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0
  call fastcc void @LADDER3PT([12 x i64]* nonnull %arraydecay, [12 x i64]* nonnull %arraydecay2, [12 x i64]* nonnull %arraydecay5, i64* nonnull %arraydecay25, i32 0, %struct.point_proj* nonnull %arraydecay33, [12 x i64]* nonnull %arraydecay12)
  %arraydecay61 = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %coeff, i64 0, i64 0
  %arrayidx.4.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 0, i64 4
  %arrayidx.8.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 0, i64 8
  %arraydecay4.i176 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 1, i64 0
  %arrayidx.4.i15.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 1, i64 4
  %arrayidx.8.i23.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 1, i64 8
  %arraydecay.i178 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 0, i64 0
  %arrayidx.4.i.i186 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 0, i64 4
  %arrayidx.8.i.i194 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 0, i64 8
  %arraydecay4.i202 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 1, i64 0
  %arrayidx.4.i15.i210 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 1, i64 4
  %arrayidx.8.i23.i218 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 1, i64 8
  %36 = bitcast [1 x %struct.point_proj]* %R to <4 x i64>*
  %37 = bitcast i64* %arrayidx.4.i.i to <4 x i64>*
  %38 = bitcast i64* %arrayidx.8.i.i to <4 x i64>*
  %39 = bitcast i64* %arraydecay4.i176 to <4 x i64>*
  %40 = bitcast i64* %arrayidx.4.i15.i to <4 x i64>*
  %41 = bitcast i64* %arrayidx.8.i23.i to <4 x i64>*
  %42 = bitcast i64* %arraydecay.i178 to <4 x i64>*
  %43 = bitcast i64* %arrayidx.4.i.i186 to <4 x i64>*
  %44 = bitcast i64* %arrayidx.8.i.i194 to <4 x i64>*
  %45 = bitcast i64* %arraydecay4.i202 to <4 x i64>*
  %46 = bitcast i64* %arrayidx.4.i15.i210 to <4 x i64>*
  %47 = bitcast i64* %arrayidx.8.i23.i218 to <4 x i64>*
  %48 = bitcast [1 x %struct.point_proj]* %R to <4 x i64>*
  %49 = bitcast i64* %arrayidx.4.i.i to <4 x i64>*
  %50 = bitcast i64* %arrayidx.8.i.i to <4 x i64>*
  %51 = bitcast i64* %arraydecay4.i176 to <4 x i64>*
  %52 = bitcast i64* %arrayidx.4.i15.i to <4 x i64>*
  %53 = bitcast i64* %arrayidx.8.i23.i to <4 x i64>*
  %54 = bitcast i64* %arraydecay.i178 to <4 x i64>*
  %55 = bitcast i64* %arrayidx.4.i.i186 to <4 x i64>*
  %56 = bitcast i64* %arrayidx.8.i.i194 to <4 x i64>*
  %57 = bitcast i64* %arraydecay4.i202 to <4 x i64>*
  %58 = bitcast i64* %arrayidx.4.i15.i210 to <4 x i64>*
  %59 = bitcast i64* %arrayidx.8.i23.i218 to <4 x i64>*
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.end, %entry
  %ii.0354 = phi i32 [ 0, %entry ], [ %ii.1.lcssa, %for.end ]
  %npts.0353 = phi i32 [ 0, %entry ], [ %sub70, %for.end ]
  %index.0352 = phi i32 [ 0, %entry ], [ %109, %for.end ]
  %row.0351 = phi i32 [ 1, %entry ], [ %inc93, %for.end ]
  %sub = sub nuw nsw i32 186, %row.0351
  %cmp35344 = icmp ult i32 %index.0352, %sub
  br i1 %cmp35344, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %ii.1347 = phi i32 [ %inc51, %while.body ], [ %ii.0354, %while.cond.preheader ]
  %npts.1346 = phi i32 [ %inc, %while.body ], [ %npts.0353, %while.cond.preheader ]
  %index.1345 = phi i32 [ %add, %while.body ], [ %index.0352, %while.cond.preheader ]
  %idxprom = zext i32 %npts.1346 to i64
  %arraydecay2.i175 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 0, i64 0
  %60 = load <4 x i64>, <4 x i64>* %36, align 16, !tbaa !3
  %61 = bitcast i64* %arraydecay2.i175 to <4 x i64>*
  store <4 x i64> %60, <4 x i64>* %61, align 16, !tbaa !3
  %arrayidx2.4.i.i = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 0, i64 4
  %62 = load <4 x i64>, <4 x i64>* %37, align 16, !tbaa !3
  %63 = bitcast i64* %arrayidx2.4.i.i to <4 x i64>*
  store <4 x i64> %62, <4 x i64>* %63, align 16, !tbaa !3
  %arrayidx2.8.i.i = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 0, i64 8
  %64 = load <4 x i64>, <4 x i64>* %38, align 16, !tbaa !3
  %65 = bitcast i64* %arrayidx2.8.i.i to <4 x i64>*
  store <4 x i64> %64, <4 x i64>* %65, align 16, !tbaa !3
  %arraydecay6.i177 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 1, i64 0
  %66 = load <4 x i64>, <4 x i64>* %39, align 16, !tbaa !3
  %67 = bitcast i64* %arraydecay6.i177 to <4 x i64>*
  store <4 x i64> %66, <4 x i64>* %67, align 16, !tbaa !3
  %arrayidx2.4.i16.i = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 1, i64 4
  %68 = load <4 x i64>, <4 x i64>* %40, align 16, !tbaa !3
  %69 = bitcast i64* %arrayidx2.4.i16.i to <4 x i64>*
  store <4 x i64> %68, <4 x i64>* %69, align 16, !tbaa !3
  %arrayidx2.8.i24.i = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 1, i64 8
  %70 = load <4 x i64>, <4 x i64>* %41, align 16, !tbaa !3
  %71 = bitcast i64* %arrayidx2.8.i24.i to <4 x i64>*
  store <4 x i64> %70, <4 x i64>* %71, align 16, !tbaa !3
  %arraydecay2.i179 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 0, i64 0
  %72 = load <4 x i64>, <4 x i64>* %42, align 16, !tbaa !3
  %73 = bitcast i64* %arraydecay2.i179 to <4 x i64>*
  store <4 x i64> %72, <4 x i64>* %73, align 16, !tbaa !3
  %arrayidx2.4.i.i187 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 0, i64 4
  %74 = load <4 x i64>, <4 x i64>* %43, align 16, !tbaa !3
  %75 = bitcast i64* %arrayidx2.4.i.i187 to <4 x i64>*
  store <4 x i64> %74, <4 x i64>* %75, align 16, !tbaa !3
  %arrayidx2.8.i.i195 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 0, i64 8
  %76 = load <4 x i64>, <4 x i64>* %44, align 16, !tbaa !3
  %77 = bitcast i64* %arrayidx2.8.i.i195 to <4 x i64>*
  store <4 x i64> %76, <4 x i64>* %77, align 16, !tbaa !3
  %arraydecay6.i203 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 1, i64 0
  %78 = load <4 x i64>, <4 x i64>* %45, align 16, !tbaa !3
  %79 = bitcast i64* %arraydecay6.i203 to <4 x i64>*
  store <4 x i64> %78, <4 x i64>* %79, align 16, !tbaa !3
  %arrayidx2.4.i16.i211 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 1, i64 4
  %80 = load <4 x i64>, <4 x i64>* %46, align 16, !tbaa !3
  %81 = bitcast i64* %arrayidx2.4.i16.i211 to <4 x i64>*
  store <4 x i64> %80, <4 x i64>* %81, align 16, !tbaa !3
  %arrayidx2.8.i24.i219 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 1, i64 8
  %82 = load <4 x i64>, <4 x i64>* %47, align 16, !tbaa !3
  %83 = bitcast i64* %arrayidx2.8.i24.i219 to <4 x i64>*
  store <4 x i64> %82, <4 x i64>* %83, align 16, !tbaa !3
  %inc = add i32 %npts.1346, 1
  %arrayidx50 = getelementptr inbounds [8 x i32], [8 x i32]* %pts_index, i64 0, i64 %idxprom
  store i32 %index.1345, i32* %arrayidx50, align 4, !tbaa !59
  %inc51 = add i32 %ii.1347, 1
  %idxprom52 = zext i32 %ii.1347 to i64
  %arrayidx53 = getelementptr inbounds [185 x i32], [185 x i32]* @strat_Alice, i64 0, i64 %idxprom52
  %84 = load i32, i32* %arrayidx53, align 4, !tbaa !59
  %mul = shl i32 %84, 1
  call void @xDBLe(%struct.point_proj* nonnull %arraydecay33, %struct.point_proj* nonnull %arraydecay33, [12 x i64]* nonnull %arraydecay17, [12 x i64]* nonnull %arraydecay16, i32 %mul)
  %add = add i32 %84, %index.1345
  %cmp35 = icmp ult i32 %add, %sub
  br i1 %cmp35, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %npts.1.lcssa = phi i32 [ %npts.0353, %while.cond.preheader ], [ %inc, %while.body ]
  %ii.1.lcssa = phi i32 [ %ii.0354, %while.cond.preheader ], [ %inc51, %while.body ]
  call void @get_4_isog(%struct.point_proj* nonnull %arraydecay33, [12 x i64]* nonnull %arraydecay17, [12 x i64]* nonnull %arraydecay16, [2 x [12 x i64]]* nonnull %arraydecay61)
  %cmp63349 = icmp eq i32 %npts.1.lcssa, 0
  br i1 %cmp63349, label %for.end, label %for.body64.preheader

for.body64.preheader:                             ; preds = %while.end
  %wide.trip.count = zext i32 %npts.1.lcssa to i64
  br label %for.body64

for.body64:                                       ; preds = %for.body64, %for.body64.preheader
  %indvars.iv = phi i64 [ 0, %for.body64.preheader ], [ %indvars.iv.next, %for.body64 ]
  %arraydecay67 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %indvars.iv, i64 0
  call void @eval_4_isog(%struct.point_proj* nonnull %arraydecay67, [2 x [12 x i64]]* nonnull %arraydecay61)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.end, label %for.body64

for.end:                                          ; preds = %for.body64, %while.end
  %sub70 = add i32 %npts.1.lcssa, -1
  %idxprom71 = zext i32 %sub70 to i64
  %arraydecay.i226 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom71, i64 0, i32 0, i64 0, i64 0
  %85 = bitcast i64* %arraydecay.i226 to <4 x i64>*
  %86 = load <4 x i64>, <4 x i64>* %85, align 16, !tbaa !3
  store <4 x i64> %86, <4 x i64>* %48, align 16, !tbaa !3
  %arrayidx.4.i.i234 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom71, i64 0, i32 0, i64 0, i64 4
  %87 = bitcast i64* %arrayidx.4.i.i234 to <4 x i64>*
  %88 = load <4 x i64>, <4 x i64>* %87, align 16, !tbaa !3
  store <4 x i64> %88, <4 x i64>* %49, align 16, !tbaa !3
  %arrayidx.8.i.i242 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom71, i64 0, i32 0, i64 0, i64 8
  %89 = bitcast i64* %arrayidx.8.i.i242 to <4 x i64>*
  %90 = load <4 x i64>, <4 x i64>* %89, align 16, !tbaa !3
  store <4 x i64> %90, <4 x i64>* %50, align 16, !tbaa !3
  %arraydecay4.i250 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom71, i64 0, i32 0, i64 1, i64 0
  %91 = bitcast i64* %arraydecay4.i250 to <4 x i64>*
  %92 = load <4 x i64>, <4 x i64>* %91, align 16, !tbaa !3
  store <4 x i64> %92, <4 x i64>* %51, align 16, !tbaa !3
  %arrayidx.4.i15.i258 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom71, i64 0, i32 0, i64 1, i64 4
  %93 = bitcast i64* %arrayidx.4.i15.i258 to <4 x i64>*
  %94 = load <4 x i64>, <4 x i64>* %93, align 16, !tbaa !3
  store <4 x i64> %94, <4 x i64>* %52, align 16, !tbaa !3
  %arrayidx.8.i23.i266 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom71, i64 0, i32 0, i64 1, i64 8
  %95 = bitcast i64* %arrayidx.8.i23.i266 to <4 x i64>*
  %96 = load <4 x i64>, <4 x i64>* %95, align 16, !tbaa !3
  store <4 x i64> %96, <4 x i64>* %53, align 16, !tbaa !3
  %arraydecay.i274 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom71, i64 0, i32 1, i64 0, i64 0
  %97 = bitcast i64* %arraydecay.i274 to <4 x i64>*
  %98 = load <4 x i64>, <4 x i64>* %97, align 16, !tbaa !3
  store <4 x i64> %98, <4 x i64>* %54, align 16, !tbaa !3
  %arrayidx.4.i.i282 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom71, i64 0, i32 1, i64 0, i64 4
  %99 = bitcast i64* %arrayidx.4.i.i282 to <4 x i64>*
  %100 = load <4 x i64>, <4 x i64>* %99, align 16, !tbaa !3
  store <4 x i64> %100, <4 x i64>* %55, align 16, !tbaa !3
  %arrayidx.8.i.i290 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom71, i64 0, i32 1, i64 0, i64 8
  %101 = bitcast i64* %arrayidx.8.i.i290 to <4 x i64>*
  %102 = load <4 x i64>, <4 x i64>* %101, align 16, !tbaa !3
  store <4 x i64> %102, <4 x i64>* %56, align 16, !tbaa !3
  %arraydecay4.i298 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom71, i64 0, i32 1, i64 1, i64 0
  %103 = bitcast i64* %arraydecay4.i298 to <4 x i64>*
  %104 = load <4 x i64>, <4 x i64>* %103, align 16, !tbaa !3
  store <4 x i64> %104, <4 x i64>* %57, align 16, !tbaa !3
  %arrayidx.4.i15.i306 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom71, i64 0, i32 1, i64 1, i64 4
  %105 = bitcast i64* %arrayidx.4.i15.i306 to <4 x i64>*
  %106 = load <4 x i64>, <4 x i64>* %105, align 16, !tbaa !3
  store <4 x i64> %106, <4 x i64>* %58, align 16, !tbaa !3
  %arrayidx.8.i23.i314 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom71, i64 0, i32 1, i64 1, i64 8
  %107 = bitcast i64* %arrayidx.8.i23.i314 to <4 x i64>*
  %108 = load <4 x i64>, <4 x i64>* %107, align 16, !tbaa !3
  store <4 x i64> %108, <4 x i64>* %59, align 16, !tbaa !3
  %arrayidx90 = getelementptr inbounds [8 x i32], [8 x i32]* %pts_index, i64 0, i64 %idxprom71
  %109 = load i32, i32* %arrayidx90, align 4, !tbaa !59
  %inc93 = add nuw nsw i32 %row.0351, 1
  %exitcond355 = icmp eq i32 %inc93, 186
  br i1 %exitcond355, label %for.end94, label %while.cond.preheader

for.end94:                                        ; preds = %for.end
  call void @get_4_isog(%struct.point_proj* nonnull %arraydecay33, [12 x i64]* nonnull %arraydecay17, [12 x i64]* nonnull %arraydecay16, [2 x [12 x i64]]* nonnull %arraydecay61)
  call fastcc void @mp_addfast(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i) #10
  call fastcc void @mp_addfast(i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i) #10
  call void @fpsub751(i64* nonnull %arraydecay4.i, i64* nonnull %arrayidx5.i, i64* nonnull %arraydecay4.i) #10
  call void @fpsub751(i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i) #10
  call void @fpadd751(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i) #10
  call void @fpadd751(i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i) #10
  %arraydecay110 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %jinv, i64 0, i64 0
  call void @j_inv([12 x i64]* nonnull %arraydecay17, [12 x i64]* nonnull %arraydecay16, [12 x i64]* nonnull %arraydecay110)
  %110 = bitcast [2 x [12 x i64]]* %t.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %110) #10
  %arraydecay.i.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %jinv, i64 0, i64 0, i64 0
  %arraydecay2.i.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t.i, i64 0, i64 0, i64 0
  %111 = bitcast [12 x i64]* %one.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %111) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %111, i8 0, i64 96, i1 false) #10
  %arrayidx.i.i.i = getelementptr inbounds [12 x i64], [12 x i64]* %one.i.i.i, i64 0, i64 0
  store i64 1, i64* %arrayidx.i.i.i, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay.i.i, i64* nonnull %arrayidx.i.i.i, i64* nonnull %arraydecay.i.i.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay2.i.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %11) #10
  call void @fpcorrection751(i64* nonnull %arraydecay2.i.i) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %111) #10
  %arraydecay4.i.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %jinv, i64 0, i64 1, i64 0
  %arraydecay6.i.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %t.i, i64 0, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %111) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %111, i8 0, i64 96, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay4.i.i, i64* nonnull %arrayidx.i.i.i, i64* nonnull %arraydecay.i.i.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay6.i.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %11) #10
  call void @fpcorrection751(i64* nonnull %arraydecay6.i.i) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %111) #10
  %112 = call i64 @llvm.objectsize.i64.p0i8(i8* %SharedSecretA, i1 false, i1 true) #10
  %call.i.i342 = call i8* @__memcpy_chk(i8* %SharedSecretA, i8* nonnull %110, i64 94, i64 %112) #10
  %add.ptr.i343 = getelementptr inbounds i8, i8* %SharedSecretA, i64 94
  %113 = bitcast i64* %arraydecay6.i.i to i8*
  %114 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr.i343, i1 false, i1 true) #10
  %call.i5.i = call i8* @__memcpy_chk(i8* nonnull %add.ptr.i343, i8* nonnull %113, i64 94, i64 %114) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %110) #10
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %9) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 576, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 576, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 3072, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %0) #10
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define i32 @EphemeralSecretAgreement_B_extended(i8* %PrivateKeyB, i8* %PublicKeyA, i8* %SharedSecretB, i32 %sike) local_unnamed_addr #4 {
entry:
  %one.i.i.i = alloca [12 x i64], align 16
  %P.i = alloca [1 x %struct.point_proj], align 16
  %Q.i = alloca [1 x %struct.point_proj], align 16
  %A2.i = alloca [2 x [12 x i64]], align 16
  %tmp1.i = alloca [2 x [12 x i64]], align 16
  %tmp2.i = alloca [2 x [12 x i64]], align 16
  %temp.i.i.i.i = alloca [24 x i64], align 16
  %R = alloca [1 x %struct.point_proj], align 16
  %pts = alloca [10 x [1 x %struct.point_proj]], align 16
  %coeff = alloca [3 x [2 x [12 x i64]]], align 16
  %PKB = alloca [3 x [2 x [12 x i64]]], align 16
  %jinv = alloca [2 x [12 x i64]], align 16
  %A24plus = alloca [2 x [12 x i64]], align 16
  %A24minus = alloca [2 x [12 x i64]], align 16
  %A = alloca [2 x [12 x i64]], align 16
  %pts_index = alloca [10 x i32], align 16
  %SecretKeyB = alloca [6 x i64], align 16
  %0 = bitcast [1 x %struct.point_proj]* %R to i8*
  call void @llvm.lifetime.start.p0i8(i64 384, i8* nonnull %0) #10
  %1 = bitcast [10 x [1 x %struct.point_proj]]* %pts to i8*
  call void @llvm.lifetime.start.p0i8(i64 3840, i8* nonnull %1) #10
  %2 = bitcast [3 x [2 x [12 x i64]]]* %coeff to i8*
  call void @llvm.lifetime.start.p0i8(i64 576, i8* nonnull %2) #10
  %3 = bitcast [3 x [2 x [12 x i64]]]* %PKB to i8*
  call void @llvm.lifetime.start.p0i8(i64 576, i8* nonnull %3) #10
  %4 = bitcast [2 x [12 x i64]]* %jinv to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %4) #10
  %5 = bitcast [2 x [12 x i64]]* %A24plus to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %5, i8 0, i64 192, i1 false)
  %6 = bitcast [2 x [12 x i64]]* %A24minus to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %6) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %6, i8 0, i64 192, i1 false)
  %7 = bitcast [2 x [12 x i64]]* %A to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %7) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %7, i8 0, i64 192, i1 false)
  %8 = bitcast [10 x i32]* %pts_index to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #10
  %9 = bitcast [6 x i64]* %SecretKeyB to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %9) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 48, i1 false)
  %arraydecay = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 0, i64 0
  %arraydecay.i = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 0, i64 0, i64 0
  %arrayidx.i.i = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 0, i64 0, i64 11
  store i64 0, i64* %arrayidx.i.i, align 8, !tbaa !3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %3, i8* align 1 %PublicKeyA, i64 94, i1 false)
  %add.ptr.i = getelementptr inbounds i8, i8* %PublicKeyA, i64 94
  %arraydecay2.i = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 0, i64 1, i64 0
  %arrayidx.i7.i = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 0, i64 1, i64 11
  store i64 0, i64* %arrayidx.i7.i, align 8, !tbaa !3
  %10 = bitcast i64* %arraydecay2.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %10, i8* nonnull align 1 %add.ptr.i, i64 94, i1 false)
  %11 = bitcast [24 x i64]* %temp.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 192, i1 false) #10
  %arraydecay.i.i.i.i = getelementptr inbounds [24 x i64], [24 x i64]* %temp.i.i.i.i, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay.i, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %11) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2.i, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay2.i) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %11) #10
  %add.ptr = getelementptr inbounds i8, i8* %PublicKeyA, i64 188
  %arraydecay2 = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 1, i64 0
  %arraydecay.i155 = getelementptr inbounds [12 x i64], [12 x i64]* %arraydecay2, i64 0, i64 0
  %arrayidx.i.i156 = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 1, i64 0, i64 11
  store i64 0, i64* %arrayidx.i.i156, align 8, !tbaa !3
  %12 = bitcast [12 x i64]* %arraydecay2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %12, i8* nonnull align 1 %add.ptr, i64 94, i1 false)
  %add.ptr.i158 = getelementptr inbounds i8, i8* %PublicKeyA, i64 282
  %arraydecay2.i159 = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 1, i64 1, i64 0
  %arrayidx.i7.i160 = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 1, i64 1, i64 11
  store i64 0, i64* %arrayidx.i7.i160, align 8, !tbaa !3
  %13 = bitcast i64* %arraydecay2.i159 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %13, i8* nonnull align 1 %add.ptr.i158, i64 94, i1 false)
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay.i155, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay.i155) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %11) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2.i159, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay2.i159) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %11) #10
  %add.ptr3 = getelementptr inbounds i8, i8* %PublicKeyA, i64 376
  %arraydecay5 = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 2, i64 0
  %arraydecay.i164 = getelementptr inbounds [12 x i64], [12 x i64]* %arraydecay5, i64 0, i64 0
  %arrayidx.i.i165 = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 2, i64 0, i64 11
  store i64 0, i64* %arrayidx.i.i165, align 8, !tbaa !3
  %14 = bitcast [12 x i64]* %arraydecay5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %14, i8* nonnull align 1 %add.ptr3, i64 94, i1 false)
  %add.ptr.i167 = getelementptr inbounds i8, i8* %PublicKeyA, i64 470
  %arraydecay2.i168 = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 2, i64 1, i64 0
  %arrayidx.i7.i169 = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 2, i64 1, i64 11
  store i64 0, i64* %arrayidx.i7.i169, align 8, !tbaa !3
  %15 = bitcast i64* %arraydecay2.i168 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %15, i8* nonnull align 1 %add.ptr.i167, i64 94, i1 false)
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay.i164, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay.i164) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %11) #10
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2.i168, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay2.i168) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %11) #10
  %arraydecay12 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A, i64 0, i64 0
  call void @get_A([12 x i64]* nonnull %arraydecay, [12 x i64]* nonnull %arraydecay2, [12 x i64]* nonnull %arraydecay5, [12 x i64]* nonnull %arraydecay12)
  %arrayidx5.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24minus, i64 0, i64 0, i64 0
  store i64 299866, i64* %arrayidx5.i, align 16, !tbaa !3
  %arrayidx5.i.1 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24minus, i64 0, i64 0, i64 1
  %arrayidx5.i.5 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24minus, i64 0, i64 0, i64 5
  %16 = bitcast i64* %arrayidx5.i.1 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %16, i8 0, i64 32, i1 false)
  %17 = bitcast i64* %arrayidx5.i.5 to <4 x i64>*
  store <4 x i64> <i64 441352763482308608, i64 -6174606851599443763, i64 -3247324585974150752, i64 -7981663433513198500>, <4 x i64>* %17, align 8, !tbaa !3
  %arrayidx5.i.9 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24minus, i64 0, i64 0, i64 9
  store i64 -7401269666723736915, i64* %arrayidx5.i.9, align 8, !tbaa !3
  %arrayidx5.i.10 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24minus, i64 0, i64 0, i64 10
  store i64 2445213636745334738, i64* %arrayidx5.i.10, align 16, !tbaa !3
  %arrayidx5.i.11 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24minus, i64 0, i64 0, i64 11
  store i64 99738963266500, i64* %arrayidx5.i.11, align 8, !tbaa !3
  %arraydecay16 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24minus, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24plus, i64 0, i64 0
  %arraydecay.i172 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A, i64 0, i64 0, i64 0
  %arraydecay4.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24plus, i64 0, i64 0, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay.i172, i64* nonnull %arrayidx5.i, i64* nonnull %arraydecay4.i) #10
  %arraydecay6.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A, i64 0, i64 1, i64 0
  %arraydecay8.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24minus, i64 0, i64 1, i64 0
  %arraydecay10.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A24plus, i64 0, i64 1, i64 0
  call fastcc void @mp_addfast(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i) #10
  call void @mp_sub751_p2(i64* nonnull %arraydecay.i172, i64* nonnull %arrayidx5.i, i64* nonnull %arrayidx5.i) #10
  call void @mp_sub751_p2(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay8.i) #10
  %cmp = icmp eq i32 %sike, 1
  br i1 %cmp, label %if.then, label %if.end28

if.then:                                          ; preds = %entry
  %18 = bitcast [1 x %struct.point_proj]* %P.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 384, i8* nonnull %18) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %18, i8 0, i64 384, i1 false) #10
  %19 = bitcast [1 x %struct.point_proj]* %Q.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 384, i8* nonnull %19) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %19, i8 0, i64 384, i1 false) #10
  %20 = bitcast [2 x [12 x i64]]* %A2.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %20) #10
  %21 = bitcast [2 x [12 x i64]]* %tmp1.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %21) #10
  %22 = bitcast [2 x [12 x i64]]* %tmp2.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %22) #10
  %arraydecay.i180 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A2.i, i64 0, i64 0
  %arraydecay2.i.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A2.i, i64 0, i64 0, i64 0
  call void @fpdiv2_751(i64* nonnull %arraydecay.i172, i64* nonnull %arraydecay2.i.i) #10
  %arraydecay6.i.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A2.i, i64 0, i64 1, i64 0
  call void @fpdiv2_751(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i.i) #10
  %arraydecay2.i181 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0
  %arraydecay3.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 0, i64 0
  %23 = bitcast [3 x [2 x [12 x i64]]]* %PKB to <4 x i64>*
  %24 = load <4 x i64>, <4 x i64>* %23, align 16, !tbaa !3
  %25 = bitcast [1 x %struct.point_proj]* %P.i to <4 x i64>*
  store <4 x i64> %24, <4 x i64>* %25, align 16, !tbaa !3
  %arrayidx.4.i.i.i = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 0, i64 0, i64 4
  %arrayidx2.4.i.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 0, i64 0, i64 4
  %26 = bitcast i64* %arrayidx.4.i.i.i to <4 x i64>*
  %27 = load <4 x i64>, <4 x i64>* %26, align 16, !tbaa !3
  %28 = bitcast i64* %arrayidx2.4.i.i.i to <4 x i64>*
  store <4 x i64> %27, <4 x i64>* %28, align 16, !tbaa !3
  %arrayidx.8.i.i.i = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 0, i64 0, i64 8
  %arrayidx2.8.i.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 0, i64 0, i64 8
  %29 = bitcast i64* %arrayidx.8.i.i.i to <4 x i64>*
  %30 = load <4 x i64>, <4 x i64>* %29, align 16, !tbaa !3
  %31 = bitcast i64* %arrayidx2.8.i.i.i to <4 x i64>*
  store <4 x i64> %30, <4 x i64>* %31, align 16, !tbaa !3
  %arraydecay6.i4.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 0, i64 1, i64 0
  %32 = bitcast i64* %arraydecay2.i to <4 x i64>*
  %33 = load <4 x i64>, <4 x i64>* %32, align 16, !tbaa !3
  %34 = bitcast i64* %arraydecay6.i4.i to <4 x i64>*
  store <4 x i64> %33, <4 x i64>* %34, align 16, !tbaa !3
  %arrayidx.4.i15.i.i = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 0, i64 1, i64 4
  %arrayidx2.4.i16.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 0, i64 1, i64 4
  %35 = bitcast i64* %arrayidx.4.i15.i.i to <4 x i64>*
  %36 = load <4 x i64>, <4 x i64>* %35, align 16, !tbaa !3
  %37 = bitcast i64* %arrayidx2.4.i16.i.i to <4 x i64>*
  store <4 x i64> %36, <4 x i64>* %37, align 16, !tbaa !3
  %arrayidx.8.i23.i.i = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 0, i64 1, i64 8
  %arrayidx2.8.i24.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 0, i64 1, i64 8
  %38 = bitcast i64* %arrayidx.8.i23.i.i to <4 x i64>*
  %39 = load <4 x i64>, <4 x i64>* %38, align 16, !tbaa !3
  %40 = bitcast i64* %arrayidx2.8.i24.i.i to <4 x i64>*
  store <4 x i64> %39, <4 x i64>* %40, align 16, !tbaa !3
  %Z.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1
  %arraydecay5.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %Z.i, i64 0, i64 0
  %41 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %Z.i, i64 0, i64 0, i64 0
  store i64 149933, i64* %41, align 16, !tbaa !3
  %arrayidx2.1.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.2.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 0, i64 2
  %arrayidx2.3.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 0, i64 3
  %arrayidx2.4.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 0, i64 4
  %arrayidx2.5.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 0, i64 5
  %42 = bitcast i64* %arrayidx2.1.i.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %42, i8 0, i64 32, i1 false) #10
  %arrayidx2.6.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 0, i64 6
  %arrayidx2.7.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 0, i64 7
  %arrayidx2.8.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 0, i64 8
  %43 = bitcast i64* %arrayidx2.5.i.i to <4 x i64>*
  store <4 x i64> <i64 -9002695655113621504, i64 6136068611055053926, i64 7599709743867700432, i64 -3990831716756599250>, <4 x i64>* %43, align 8, !tbaa !3
  %arrayidx2.9.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 0, i64 9
  store i64 5522737203492907350, i64* %arrayidx2.9.i.i, align 8, !tbaa !3
  %arrayidx2.10.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 0, i64 10
  store i64 1222606818372667369, i64* %arrayidx2.10.i.i, align 16, !tbaa !3
  %arrayidx2.11.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 0, i64 11
  store i64 49869481633250, i64* %arrayidx2.11.i.i, align 8, !tbaa !3
  %arraydecay8.i182 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0
  %arraydecay10.i183 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 0, i64 0
  %arraydecay.i122.i = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 1, i64 0, i64 0
  %44 = bitcast i64* %arraydecay.i122.i to <4 x i64>*
  %45 = load <4 x i64>, <4 x i64>* %44, align 16, !tbaa !3
  %46 = bitcast [1 x %struct.point_proj]* %Q.i to <4 x i64>*
  store <4 x i64> %45, <4 x i64>* %46, align 16, !tbaa !3
  %arrayidx.4.i.i130.i = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 1, i64 0, i64 4
  %arrayidx2.4.i.i131.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 0, i64 0, i64 4
  %47 = bitcast i64* %arrayidx.4.i.i130.i to <4 x i64>*
  %48 = load <4 x i64>, <4 x i64>* %47, align 16, !tbaa !3
  %49 = bitcast i64* %arrayidx2.4.i.i131.i to <4 x i64>*
  store <4 x i64> %48, <4 x i64>* %49, align 16, !tbaa !3
  %arrayidx.8.i.i138.i = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 1, i64 0, i64 8
  %arrayidx2.8.i.i139.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 0, i64 0, i64 8
  %50 = bitcast i64* %arrayidx.8.i.i138.i to <4 x i64>*
  %51 = load <4 x i64>, <4 x i64>* %50, align 16, !tbaa !3
  %52 = bitcast i64* %arrayidx2.8.i.i139.i to <4 x i64>*
  store <4 x i64> %51, <4 x i64>* %52, align 16, !tbaa !3
  %arraydecay6.i147.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 0, i64 1, i64 0
  %53 = bitcast i64* %arraydecay2.i159 to <4 x i64>*
  %54 = load <4 x i64>, <4 x i64>* %53, align 16, !tbaa !3
  %55 = bitcast i64* %arraydecay6.i147.i to <4 x i64>*
  store <4 x i64> %54, <4 x i64>* %55, align 16, !tbaa !3
  %arrayidx.4.i15.i154.i = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 1, i64 1, i64 4
  %arrayidx2.4.i16.i155.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 0, i64 1, i64 4
  %56 = bitcast i64* %arrayidx.4.i15.i154.i to <4 x i64>*
  %57 = load <4 x i64>, <4 x i64>* %56, align 16, !tbaa !3
  %58 = bitcast i64* %arrayidx2.4.i16.i155.i to <4 x i64>*
  store <4 x i64> %57, <4 x i64>* %58, align 16, !tbaa !3
  %arrayidx.8.i23.i162.i = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %PKB, i64 0, i64 1, i64 1, i64 8
  %arrayidx2.8.i24.i163.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 0, i64 1, i64 8
  %59 = bitcast i64* %arrayidx.8.i23.i162.i to <4 x i64>*
  %60 = load <4 x i64>, <4 x i64>* %59, align 16, !tbaa !3
  %61 = bitcast i64* %arrayidx2.8.i24.i163.i to <4 x i64>*
  store <4 x i64> %60, <4 x i64>* %61, align 16, !tbaa !3
  %Z12.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1
  %arraydecay13.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %Z12.i, i64 0, i64 0
  %62 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %Z12.i, i64 0, i64 0, i64 0
  store i64 149933, i64* %62, align 16, !tbaa !3
  %arrayidx2.1.i170.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.2.i171.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 0, i64 2
  %arrayidx2.3.i172.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 0, i64 3
  %arrayidx2.4.i173.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 0, i64 4
  %arrayidx2.5.i174.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 0, i64 5
  %63 = bitcast i64* %arrayidx2.1.i170.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %63, i8 0, i64 32, i1 false) #10
  %arrayidx2.6.i175.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 0, i64 6
  %arrayidx2.7.i176.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 0, i64 7
  %arrayidx2.8.i177.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 0, i64 8
  %64 = bitcast i64* %arrayidx2.5.i174.i to <4 x i64>*
  store <4 x i64> <i64 -9002695655113621504, i64 6136068611055053926, i64 7599709743867700432, i64 -3990831716756599250>, <4 x i64>* %64, align 8, !tbaa !3
  %arrayidx2.9.i178.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 0, i64 9
  store i64 5522737203492907350, i64* %arrayidx2.9.i178.i, align 8, !tbaa !3
  %arrayidx2.10.i179.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 0, i64 10
  store i64 1222606818372667369, i64* %arrayidx2.10.i179.i, align 16, !tbaa !3
  %arrayidx2.11.i180.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 0, i64 11
  store i64 49869481633250, i64* %arrayidx2.11.i180.i, align 8, !tbaa !3
  call void @xTPLe_fast(%struct.point_proj* nonnull %arraydecay2.i181, %struct.point_proj* nonnull %arraydecay2.i181, [12 x i64]* nonnull %arraydecay.i180, i32 238) #10
  call void @xTPLe_fast(%struct.point_proj* nonnull %arraydecay8.i182, %struct.point_proj* nonnull %arraydecay8.i182, [12 x i64]* nonnull %arraydecay.i180, i32 238) #10
  call void @fpcorrection751(i64* nonnull %41) #10
  %arraydecay2.i184.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 0
  call void @fpcorrection751(i64* nonnull %arraydecay2.i184.i) #10
  call void @fpcorrection751(i64* nonnull %62) #10
  %arraydecay2.i186.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 0
  call void @fpcorrection751(i64* nonnull %arraydecay2.i186.i) #10
  %65 = load i64, i64* %41, align 16, !tbaa !3
  %66 = load i64, i64* %arrayidx2.1.i.i, align 8
  %67 = or i64 %66, %65
  %68 = load i64, i64* %arrayidx2.2.i.i, align 16
  %69 = or i64 %67, %68
  %70 = load i64, i64* %arrayidx2.3.i.i, align 8
  %71 = or i64 %69, %70
  %72 = load i64, i64* %arrayidx2.4.i.i, align 16
  %73 = or i64 %71, %72
  %74 = load i64, i64* %arrayidx2.5.i.i, align 8
  %75 = or i64 %73, %74
  %76 = load i64, i64* %arrayidx2.6.i.i, align 16
  %77 = or i64 %75, %76
  %78 = load i64, i64* %arrayidx2.7.i.i, align 8
  %79 = or i64 %77, %78
  %80 = load i64, i64* %arrayidx2.8.i.i, align 16
  %81 = or i64 %79, %80
  %82 = load i64, i64* %arrayidx2.9.i.i, align 8
  %83 = or i64 %81, %82
  %84 = load i64, i64* %arrayidx2.10.i.i, align 16
  %85 = or i64 %83, %84
  %86 = load i64, i64* %arrayidx2.11.i.i, align 8
  %87 = or i64 %85, %86
  %88 = load i64, i64* %arraydecay2.i184.i, align 16
  %89 = or i64 %87, %88
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %for.cond.i228.i, label %lor.lhs.false.i

for.cond.i228.i:                                  ; preds = %if.then
  %arrayidx.1.i226.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 1
  %91 = load i64, i64* %arrayidx.1.i226.i, align 8, !tbaa !3
  %cmp1.1.i227.i = icmp eq i64 %91, 0
  br i1 %cmp1.1.i227.i, label %for.cond.1.i232.i, label %lor.lhs.false.i

for.cond.1.i232.i:                                ; preds = %for.cond.i228.i
  %arrayidx.2.i230.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 2
  %92 = load i64, i64* %arrayidx.2.i230.i, align 16, !tbaa !3
  %cmp1.2.i231.i = icmp eq i64 %92, 0
  br i1 %cmp1.2.i231.i, label %for.cond.2.i235.i, label %lor.lhs.false.i

for.cond.2.i235.i:                                ; preds = %for.cond.1.i232.i
  %arrayidx.3.i233.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 3
  %93 = load i64, i64* %arrayidx.3.i233.i, align 8, !tbaa !3
  %cmp1.3.i234.i = icmp eq i64 %93, 0
  br i1 %cmp1.3.i234.i, label %for.cond.3.i238.i, label %lor.lhs.false.i

for.cond.3.i238.i:                                ; preds = %for.cond.2.i235.i
  %arrayidx.4.i236.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 4
  %94 = load i64, i64* %arrayidx.4.i236.i, align 16, !tbaa !3
  %cmp1.4.i237.i = icmp eq i64 %94, 0
  br i1 %cmp1.4.i237.i, label %for.cond.4.i241.i, label %lor.lhs.false.i

for.cond.4.i241.i:                                ; preds = %for.cond.3.i238.i
  %arrayidx.5.i239.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 5
  %95 = load i64, i64* %arrayidx.5.i239.i, align 8, !tbaa !3
  %cmp1.5.i240.i = icmp eq i64 %95, 0
  br i1 %cmp1.5.i240.i, label %for.cond.5.i244.i, label %lor.lhs.false.i

for.cond.5.i244.i:                                ; preds = %for.cond.4.i241.i
  %arrayidx.6.i242.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 6
  %96 = load i64, i64* %arrayidx.6.i242.i, align 16, !tbaa !3
  %cmp1.6.i243.i = icmp eq i64 %96, 0
  br i1 %cmp1.6.i243.i, label %for.cond.6.i247.i, label %lor.lhs.false.i

for.cond.6.i247.i:                                ; preds = %for.cond.5.i244.i
  %arrayidx.7.i245.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 7
  %97 = load i64, i64* %arrayidx.7.i245.i, align 8, !tbaa !3
  %cmp1.7.i246.i = icmp eq i64 %97, 0
  br i1 %cmp1.7.i246.i, label %for.cond.7.i250.i, label %lor.lhs.false.i

for.cond.7.i250.i:                                ; preds = %for.cond.6.i247.i
  %arrayidx.8.i248.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 8
  %98 = load i64, i64* %arrayidx.8.i248.i, align 16, !tbaa !3
  %cmp1.8.i249.i = icmp eq i64 %98, 0
  br i1 %cmp1.8.i249.i, label %for.cond.8.i253.i, label %lor.lhs.false.i

for.cond.8.i253.i:                                ; preds = %for.cond.7.i250.i
  %arrayidx.9.i251.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 9
  %99 = load i64, i64* %arrayidx.9.i251.i, align 8, !tbaa !3
  %cmp1.9.i252.i = icmp eq i64 %99, 0
  br i1 %cmp1.9.i252.i, label %for.cond.9.i256.i, label %lor.lhs.false.i

for.cond.9.i256.i:                                ; preds = %for.cond.8.i253.i
  %arrayidx.10.i254.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 10
  %100 = load i64, i64* %arrayidx.10.i254.i, align 16, !tbaa !3
  %cmp1.10.i255.i = icmp eq i64 %100, 0
  br i1 %cmp1.10.i255.i, label %is_felm_zero.exit261.i, label %lor.lhs.false.i

is_felm_zero.exit261.i:                           ; preds = %for.cond.9.i256.i
  %arrayidx.11.i257.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 11
  %101 = load i64, i64* %arrayidx.11.i257.i, align 8, !tbaa !3
  %cmp1.11.i258.i = icmp eq i64 %101, 0
  br i1 %cmp1.11.i258.i, label %cleanup.critedge, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %is_felm_zero.exit261.i, %for.cond.9.i256.i, %for.cond.8.i253.i, %for.cond.7.i250.i, %for.cond.6.i247.i, %for.cond.5.i244.i, %for.cond.4.i241.i, %for.cond.3.i238.i, %for.cond.2.i235.i, %for.cond.1.i232.i, %for.cond.i228.i, %if.then
  %102 = load i64, i64* %62, align 16, !tbaa !3
  %103 = load i64, i64* %arrayidx2.1.i170.i, align 8
  %104 = or i64 %103, %102
  %105 = load i64, i64* %arrayidx2.2.i171.i, align 16
  %106 = or i64 %104, %105
  %107 = load i64, i64* %arrayidx2.3.i172.i, align 8
  %108 = or i64 %106, %107
  %109 = load i64, i64* %arrayidx2.4.i173.i, align 16
  %110 = or i64 %108, %109
  %111 = load i64, i64* %arrayidx2.5.i174.i, align 8
  %112 = or i64 %110, %111
  %113 = load i64, i64* %arrayidx2.6.i175.i, align 16
  %114 = or i64 %112, %113
  %115 = load i64, i64* %arrayidx2.7.i176.i, align 8
  %116 = or i64 %114, %115
  %117 = load i64, i64* %arrayidx2.8.i177.i, align 16
  %118 = or i64 %116, %117
  %119 = load i64, i64* %arrayidx2.9.i178.i, align 8
  %120 = or i64 %118, %119
  %121 = load i64, i64* %arrayidx2.10.i179.i, align 16
  %122 = or i64 %120, %121
  %123 = load i64, i64* %arrayidx2.11.i180.i, align 8
  %124 = or i64 %122, %123
  %125 = load i64, i64* %arraydecay2.i186.i, align 16
  %126 = or i64 %124, %125
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %for.cond.i304.i, label %if.end.i

for.cond.i304.i:                                  ; preds = %lor.lhs.false.i
  %arrayidx.1.i302.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 1
  %128 = load i64, i64* %arrayidx.1.i302.i, align 8, !tbaa !3
  %cmp1.1.i303.i = icmp eq i64 %128, 0
  br i1 %cmp1.1.i303.i, label %for.cond.1.i308.i, label %if.end.i

for.cond.1.i308.i:                                ; preds = %for.cond.i304.i
  %arrayidx.2.i306.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 2
  %129 = load i64, i64* %arrayidx.2.i306.i, align 16, !tbaa !3
  %cmp1.2.i307.i = icmp eq i64 %129, 0
  br i1 %cmp1.2.i307.i, label %for.cond.2.i311.i, label %if.end.i

for.cond.2.i311.i:                                ; preds = %for.cond.1.i308.i
  %arrayidx.3.i309.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 3
  %130 = load i64, i64* %arrayidx.3.i309.i, align 8, !tbaa !3
  %cmp1.3.i310.i = icmp eq i64 %130, 0
  br i1 %cmp1.3.i310.i, label %for.cond.3.i314.i, label %if.end.i

for.cond.3.i314.i:                                ; preds = %for.cond.2.i311.i
  %arrayidx.4.i312.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 4
  %131 = load i64, i64* %arrayidx.4.i312.i, align 16, !tbaa !3
  %cmp1.4.i313.i = icmp eq i64 %131, 0
  br i1 %cmp1.4.i313.i, label %for.cond.4.i317.i, label %if.end.i

for.cond.4.i317.i:                                ; preds = %for.cond.3.i314.i
  %arrayidx.5.i315.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 5
  %132 = load i64, i64* %arrayidx.5.i315.i, align 8, !tbaa !3
  %cmp1.5.i316.i = icmp eq i64 %132, 0
  br i1 %cmp1.5.i316.i, label %for.cond.5.i320.i, label %if.end.i

for.cond.5.i320.i:                                ; preds = %for.cond.4.i317.i
  %arrayidx.6.i318.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 6
  %133 = load i64, i64* %arrayidx.6.i318.i, align 16, !tbaa !3
  %cmp1.6.i319.i = icmp eq i64 %133, 0
  br i1 %cmp1.6.i319.i, label %for.cond.6.i323.i, label %if.end.i

for.cond.6.i323.i:                                ; preds = %for.cond.5.i320.i
  %arrayidx.7.i321.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 7
  %134 = load i64, i64* %arrayidx.7.i321.i, align 8, !tbaa !3
  %cmp1.7.i322.i = icmp eq i64 %134, 0
  br i1 %cmp1.7.i322.i, label %for.cond.7.i326.i, label %if.end.i

for.cond.7.i326.i:                                ; preds = %for.cond.6.i323.i
  %arrayidx.8.i324.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 8
  %135 = load i64, i64* %arrayidx.8.i324.i, align 16, !tbaa !3
  %cmp1.8.i325.i = icmp eq i64 %135, 0
  br i1 %cmp1.8.i325.i, label %for.cond.8.i329.i, label %if.end.i

for.cond.8.i329.i:                                ; preds = %for.cond.7.i326.i
  %arrayidx.9.i327.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 9
  %136 = load i64, i64* %arrayidx.9.i327.i, align 8, !tbaa !3
  %cmp1.9.i328.i = icmp eq i64 %136, 0
  br i1 %cmp1.9.i328.i, label %for.cond.9.i332.i, label %if.end.i

for.cond.9.i332.i:                                ; preds = %for.cond.8.i329.i
  %arrayidx.10.i330.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 10
  %137 = load i64, i64* %arrayidx.10.i330.i, align 16, !tbaa !3
  %cmp1.10.i331.i = icmp eq i64 %137, 0
  br i1 %cmp1.10.i331.i, label %is_felm_zero.exit337.i, label %if.end.i

is_felm_zero.exit337.i:                           ; preds = %for.cond.9.i332.i
  %arrayidx.11.i333.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 11
  %138 = load i64, i64* %arrayidx.11.i333.i, align 8, !tbaa !3
  %cmp1.11.i334.i = icmp eq i64 %138, 0
  br i1 %cmp1.11.i334.i, label %cleanup.critedge381, label %if.end.i

if.end.i:                                         ; preds = %is_felm_zero.exit337.i, %for.cond.9.i332.i, %for.cond.8.i329.i, %for.cond.7.i326.i, %for.cond.6.i323.i, %for.cond.5.i320.i, %for.cond.4.i317.i, %for.cond.3.i314.i, %for.cond.2.i311.i, %for.cond.1.i308.i, %for.cond.i304.i, %lor.lhs.false.i
  %arraydecay55.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %tmp1.i, i64 0, i64 0
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay3.i, [12 x i64]* nonnull %arraydecay13.i, [12 x i64]* nonnull %arraydecay55.i) #10
  %arraydecay62.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %tmp2.i, i64 0, i64 0
  call void @fp2mul751_mont([12 x i64]* nonnull %arraydecay5.i, [12 x i64]* nonnull %arraydecay10.i183, [12 x i64]* nonnull %arraydecay62.i) #10
  %arraydecay.i339.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %tmp1.i, i64 0, i64 0, i64 0
  call void @fpcorrection751(i64* nonnull %arraydecay.i339.i) #10
  %arraydecay2.i340.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %tmp1.i, i64 0, i64 1, i64 0
  call void @fpcorrection751(i64* nonnull %arraydecay2.i340.i) #10
  %arraydecay.i341.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %tmp2.i, i64 0, i64 0, i64 0
  call void @fpcorrection751(i64* nonnull %arraydecay.i341.i) #10
  %arraydecay2.i342.i = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %tmp2.i, i64 0, i64 1, i64 0
  call void @fpcorrection751(i64* nonnull %arraydecay2.i342.i) #10
  %call67.i = call i32 @memcmp(i8* nonnull %21, i8* nonnull %22, i64 188) #10
  %cmp.i = icmp eq i32 %call67.i, 0
  br i1 %cmp.i, label %cleanup.critedge382, label %if.end69.i

if.end69.i:                                       ; preds = %if.end.i
  call void @xTPL_fast(%struct.point_proj* nonnull %arraydecay2.i181, %struct.point_proj* nonnull %arraydecay2.i181, [12 x i64]* nonnull %arraydecay.i180) #10
  call void @xTPL_fast(%struct.point_proj* nonnull %arraydecay8.i182, %struct.point_proj* nonnull %arraydecay8.i182, [12 x i64]* nonnull %arraydecay.i180) #10
  call void @fpcorrection751(i64* nonnull %41) #10
  call void @fpcorrection751(i64* nonnull %arraydecay2.i184.i) #10
  call void @fpcorrection751(i64* nonnull %62) #10
  call void @fpcorrection751(i64* nonnull %arraydecay2.i186.i) #10
  %139 = load i64, i64* %41, align 16, !tbaa !3
  %140 = load i64, i64* %arrayidx2.1.i.i, align 8
  %141 = or i64 %140, %139
  %142 = load i64, i64* %arrayidx2.2.i.i, align 16
  %143 = or i64 %141, %142
  %144 = load i64, i64* %arrayidx2.3.i.i, align 8
  %145 = or i64 %143, %144
  %146 = load i64, i64* %arrayidx2.4.i.i, align 16
  %147 = or i64 %145, %146
  %148 = load i64, i64* %arrayidx2.5.i.i, align 8
  %149 = or i64 %147, %148
  %150 = load i64, i64* %arrayidx2.6.i.i, align 16
  %151 = or i64 %149, %150
  %152 = load i64, i64* %arrayidx2.7.i.i, align 8
  %153 = or i64 %151, %152
  %154 = load i64, i64* %arrayidx2.8.i.i, align 16
  %155 = or i64 %153, %154
  %156 = load i64, i64* %arrayidx2.9.i.i, align 8
  %157 = or i64 %155, %156
  %158 = load i64, i64* %arrayidx2.10.i.i, align 16
  %159 = or i64 %157, %158
  %160 = load i64, i64* %arrayidx2.11.i.i, align 8
  %161 = or i64 %159, %160
  %162 = load i64, i64* %arraydecay2.i184.i, align 16
  %163 = or i64 %161, %162
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %for.cond.i47.i, label %publickey_validation.exit

for.cond.i47.i:                                   ; preds = %if.end69.i
  %arrayidx.1.i45.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 1
  %165 = load i64, i64* %arrayidx.1.i45.i, align 8, !tbaa !3
  %cmp1.1.i46.i = icmp eq i64 %165, 0
  br i1 %cmp1.1.i46.i, label %for.cond.1.i51.i, label %publickey_validation.exit

for.cond.1.i51.i:                                 ; preds = %for.cond.i47.i
  %arrayidx.2.i49.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 2
  %166 = load i64, i64* %arrayidx.2.i49.i, align 16, !tbaa !3
  %cmp1.2.i50.i = icmp eq i64 %166, 0
  br i1 %cmp1.2.i50.i, label %for.cond.2.i54.i, label %publickey_validation.exit

for.cond.2.i54.i:                                 ; preds = %for.cond.1.i51.i
  %arrayidx.3.i52.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 3
  %167 = load i64, i64* %arrayidx.3.i52.i, align 8, !tbaa !3
  %cmp1.3.i53.i = icmp eq i64 %167, 0
  br i1 %cmp1.3.i53.i, label %for.cond.3.i57.i, label %publickey_validation.exit

for.cond.3.i57.i:                                 ; preds = %for.cond.2.i54.i
  %arrayidx.4.i55.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 4
  %168 = load i64, i64* %arrayidx.4.i55.i, align 16, !tbaa !3
  %cmp1.4.i56.i = icmp eq i64 %168, 0
  br i1 %cmp1.4.i56.i, label %for.cond.4.i60.i, label %publickey_validation.exit

for.cond.4.i60.i:                                 ; preds = %for.cond.3.i57.i
  %arrayidx.5.i58.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 5
  %169 = load i64, i64* %arrayidx.5.i58.i, align 8, !tbaa !3
  %cmp1.5.i59.i = icmp eq i64 %169, 0
  br i1 %cmp1.5.i59.i, label %for.cond.5.i63.i, label %publickey_validation.exit

for.cond.5.i63.i:                                 ; preds = %for.cond.4.i60.i
  %arrayidx.6.i61.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 6
  %170 = load i64, i64* %arrayidx.6.i61.i, align 16, !tbaa !3
  %cmp1.6.i62.i = icmp eq i64 %170, 0
  br i1 %cmp1.6.i62.i, label %for.cond.6.i66.i, label %publickey_validation.exit

for.cond.6.i66.i:                                 ; preds = %for.cond.5.i63.i
  %arrayidx.7.i64.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 7
  %171 = load i64, i64* %arrayidx.7.i64.i, align 8, !tbaa !3
  %cmp1.7.i65.i = icmp eq i64 %171, 0
  br i1 %cmp1.7.i65.i, label %for.cond.7.i69.i, label %publickey_validation.exit

for.cond.7.i69.i:                                 ; preds = %for.cond.6.i66.i
  %arrayidx.8.i67.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 8
  %172 = load i64, i64* %arrayidx.8.i67.i, align 16, !tbaa !3
  %cmp1.8.i68.i = icmp eq i64 %172, 0
  br i1 %cmp1.8.i68.i, label %for.cond.8.i72.i, label %publickey_validation.exit

for.cond.8.i72.i:                                 ; preds = %for.cond.7.i69.i
  %arrayidx.9.i70.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 9
  %173 = load i64, i64* %arrayidx.9.i70.i, align 8, !tbaa !3
  %cmp1.9.i71.i = icmp eq i64 %173, 0
  br i1 %cmp1.9.i71.i, label %for.cond.9.i75.i, label %publickey_validation.exit

for.cond.9.i75.i:                                 ; preds = %for.cond.8.i72.i
  %arrayidx.10.i73.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 10
  %174 = load i64, i64* %arrayidx.10.i73.i, align 16, !tbaa !3
  %cmp1.10.i74.i = icmp eq i64 %174, 0
  br i1 %cmp1.10.i74.i, label %is_felm_zero.exit80.i, label %publickey_validation.exit

is_felm_zero.exit80.i:                            ; preds = %for.cond.9.i75.i
  %arrayidx.11.i76.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 11
  %175 = load i64, i64* %arrayidx.11.i76.i, align 8, !tbaa !3
  %176 = load i64, i64* %62, align 16
  %177 = or i64 %176, %175
  %178 = load i64, i64* %arrayidx2.1.i170.i, align 8
  %179 = or i64 %177, %178
  %180 = load i64, i64* %arrayidx2.2.i171.i, align 16
  %181 = or i64 %179, %180
  %182 = load i64, i64* %arrayidx2.3.i172.i, align 8
  %183 = or i64 %181, %182
  %184 = load i64, i64* %arrayidx2.4.i173.i, align 16
  %185 = or i64 %183, %184
  %186 = load i64, i64* %arrayidx2.5.i174.i, align 8
  %187 = or i64 %185, %186
  %188 = load i64, i64* %arrayidx2.6.i175.i, align 16
  %189 = or i64 %187, %188
  %190 = load i64, i64* %arrayidx2.7.i176.i, align 8
  %191 = or i64 %189, %190
  %192 = load i64, i64* %arrayidx2.8.i177.i, align 16
  %193 = or i64 %191, %192
  %194 = load i64, i64* %arrayidx2.9.i178.i, align 8
  %195 = or i64 %193, %194
  %196 = load i64, i64* %arrayidx2.10.i179.i, align 16
  %197 = or i64 %195, %196
  %198 = load i64, i64* %arrayidx2.11.i180.i, align 8
  %199 = or i64 %197, %198
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %lor.lhs.false102.i, label %cleanup.critedge383

lor.lhs.false102.i:                               ; preds = %is_felm_zero.exit80.i
  %201 = load i64, i64* %arraydecay2.i186.i, align 16, !tbaa !3
  %cmp1.i.i = icmp eq i64 %201, 0
  br i1 %cmp1.i.i, label %for.cond.i.i, label %is_felm_zero.exit.thread.i

for.cond.i.i:                                     ; preds = %lor.lhs.false102.i
  %arrayidx.1.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 1
  %202 = load i64, i64* %arrayidx.1.i.i, align 8, !tbaa !3
  %cmp1.1.i.i = icmp eq i64 %202, 0
  br i1 %cmp1.1.i.i, label %for.cond.1.i.i, label %is_felm_zero.exit.thread.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %arrayidx.2.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 2
  %203 = load i64, i64* %arrayidx.2.i.i, align 16, !tbaa !3
  %cmp1.2.i.i = icmp eq i64 %203, 0
  br i1 %cmp1.2.i.i, label %for.cond.2.i.i, label %is_felm_zero.exit.thread.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %arrayidx.3.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 3
  %204 = load i64, i64* %arrayidx.3.i.i, align 8, !tbaa !3
  %cmp1.3.i.i = icmp eq i64 %204, 0
  br i1 %cmp1.3.i.i, label %for.cond.3.i.i, label %is_felm_zero.exit.thread.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  %arrayidx.4.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 4
  %205 = load i64, i64* %arrayidx.4.i.i, align 16, !tbaa !3
  %cmp1.4.i.i = icmp eq i64 %205, 0
  br i1 %cmp1.4.i.i, label %for.cond.4.i.i, label %is_felm_zero.exit.thread.i

for.cond.4.i.i:                                   ; preds = %for.cond.3.i.i
  %arrayidx.5.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 5
  %206 = load i64, i64* %arrayidx.5.i.i, align 8, !tbaa !3
  %cmp1.5.i.i = icmp eq i64 %206, 0
  br i1 %cmp1.5.i.i, label %for.cond.5.i.i, label %is_felm_zero.exit.thread.i

for.cond.5.i.i:                                   ; preds = %for.cond.4.i.i
  %arrayidx.6.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 6
  %207 = load i64, i64* %arrayidx.6.i.i, align 16, !tbaa !3
  %cmp1.6.i.i = icmp eq i64 %207, 0
  br i1 %cmp1.6.i.i, label %for.cond.6.i.i, label %is_felm_zero.exit.thread.i

for.cond.6.i.i:                                   ; preds = %for.cond.5.i.i
  %arrayidx.7.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 7
  %208 = load i64, i64* %arrayidx.7.i.i, align 8, !tbaa !3
  %cmp1.7.i.i = icmp eq i64 %208, 0
  br i1 %cmp1.7.i.i, label %for.cond.7.i.i, label %is_felm_zero.exit.thread.i

for.cond.7.i.i:                                   ; preds = %for.cond.6.i.i
  %arrayidx.8.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 8
  %209 = load i64, i64* %arrayidx.8.i.i, align 16, !tbaa !3
  %cmp1.8.i.i = icmp eq i64 %209, 0
  br i1 %cmp1.8.i.i, label %for.cond.8.i.i, label %is_felm_zero.exit.thread.i

for.cond.8.i.i:                                   ; preds = %for.cond.7.i.i
  %arrayidx.9.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 9
  %210 = load i64, i64* %arrayidx.9.i.i, align 8, !tbaa !3
  %cmp1.9.i.i = icmp eq i64 %210, 0
  br i1 %cmp1.9.i.i, label %for.cond.9.i.i, label %is_felm_zero.exit.thread.i

for.cond.9.i.i:                                   ; preds = %for.cond.8.i.i
  %arrayidx.10.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 10
  %211 = load i64, i64* %arrayidx.10.i.i, align 16, !tbaa !3
  %cmp1.10.i.i = icmp eq i64 %211, 0
  br i1 %cmp1.10.i.i, label %is_felm_zero.exit.i, label %is_felm_zero.exit.thread.i

is_felm_zero.exit.i:                              ; preds = %for.cond.9.i.i
  %arrayidx.11.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 11
  %212 = load i64, i64* %arrayidx.11.i.i, align 8, !tbaa !3
  %cmp1.11.i.i = icmp eq i64 %212, 0
  br i1 %cmp1.11.i.i, label %if.end28.critedge, label %is_felm_zero.exit.thread.i

is_felm_zero.exit.thread.i:                       ; preds = %is_felm_zero.exit.i, %for.cond.9.i.i, %for.cond.8.i.i, %for.cond.7.i.i, %for.cond.6.i.i, %for.cond.5.i.i, %for.cond.4.i.i, %for.cond.3.i.i, %for.cond.2.i.i, %for.cond.1.i.i, %for.cond.i.i, %lor.lhs.false102.i
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %22) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %21) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %20) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %19) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %18) #10
  br label %cleanup

publickey_validation.exit:                        ; preds = %if.end69.i, %for.cond.i47.i, %for.cond.1.i51.i, %for.cond.2.i54.i, %for.cond.3.i57.i, %for.cond.4.i60.i, %for.cond.5.i63.i, %for.cond.6.i66.i, %for.cond.7.i69.i, %for.cond.8.i72.i, %for.cond.9.i75.i
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %22) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %21) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %20) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %19) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %18) #10
  br label %cleanup

if.end28.critedge:                                ; preds = %is_felm_zero.exit.i
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %22) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %21) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %20) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %19) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %18) #10
  br label %if.end28

if.end28:                                         ; preds = %if.end28.critedge, %entry
  %arraydecay29 = getelementptr inbounds [6 x i64], [6 x i64]* %SecretKeyB, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %9, i8* align 1 %PrivateKeyB, i64 48, i1 false)
  %arraydecay37 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0
  call fastcc void @LADDER3PT([12 x i64]* nonnull %arraydecay, [12 x i64]* nonnull %arraydecay2, [12 x i64]* nonnull %arraydecay5, i64* nonnull %arraydecay29, i32 1, %struct.point_proj* nonnull %arraydecay37, [12 x i64]* nonnull %arraydecay12)
  %arraydecay66 = getelementptr inbounds [3 x [2 x [12 x i64]]], [3 x [2 x [12 x i64]]]* %coeff, i64 0, i64 0
  %arrayidx.4.i.i193 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 0, i64 4
  %arrayidx.8.i.i201 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 0, i64 8
  %arraydecay4.i209 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 1, i64 0
  %arrayidx.4.i15.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 1, i64 4
  %arrayidx.8.i23.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 1, i64 8
  %arraydecay.i211 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 0, i64 0
  %arrayidx.4.i.i219 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 0, i64 4
  %arrayidx.8.i.i227 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 0, i64 8
  %arraydecay4.i235 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 1, i64 0
  %arrayidx.4.i15.i243 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 1, i64 4
  %arrayidx.8.i23.i251 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 1, i64 8
  %213 = bitcast [1 x %struct.point_proj]* %R to <4 x i64>*
  %214 = bitcast i64* %arrayidx.4.i.i193 to <4 x i64>*
  %215 = bitcast i64* %arrayidx.8.i.i201 to <4 x i64>*
  %216 = bitcast i64* %arraydecay4.i209 to <4 x i64>*
  %217 = bitcast i64* %arrayidx.4.i15.i to <4 x i64>*
  %218 = bitcast i64* %arrayidx.8.i23.i to <4 x i64>*
  %219 = bitcast i64* %arraydecay.i211 to <4 x i64>*
  %220 = bitcast i64* %arrayidx.4.i.i219 to <4 x i64>*
  %221 = bitcast i64* %arrayidx.8.i.i227 to <4 x i64>*
  %222 = bitcast i64* %arraydecay4.i235 to <4 x i64>*
  %223 = bitcast i64* %arrayidx.4.i15.i243 to <4 x i64>*
  %224 = bitcast i64* %arrayidx.8.i23.i251 to <4 x i64>*
  %225 = bitcast [1 x %struct.point_proj]* %R to <4 x i64>*
  %226 = bitcast i64* %arrayidx.4.i.i193 to <4 x i64>*
  %227 = bitcast i64* %arrayidx.8.i.i201 to <4 x i64>*
  %228 = bitcast i64* %arraydecay4.i209 to <4 x i64>*
  %229 = bitcast i64* %arrayidx.4.i15.i to <4 x i64>*
  %230 = bitcast i64* %arrayidx.8.i23.i to <4 x i64>*
  %231 = bitcast i64* %arraydecay.i211 to <4 x i64>*
  %232 = bitcast i64* %arrayidx.4.i.i219 to <4 x i64>*
  %233 = bitcast i64* %arrayidx.8.i.i227 to <4 x i64>*
  %234 = bitcast i64* %arraydecay4.i235 to <4 x i64>*
  %235 = bitcast i64* %arrayidx.4.i15.i243 to <4 x i64>*
  %236 = bitcast i64* %arrayidx.8.i23.i251 to <4 x i64>*
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.end, %if.end28
  %ii.0395 = phi i32 [ 0, %if.end28 ], [ %ii.1.lcssa, %for.end ]
  %npts.0394 = phi i32 [ 0, %if.end28 ], [ %sub75, %for.end ]
  %index.0393 = phi i32 [ 0, %if.end28 ], [ %286, %for.end ]
  %row.0392 = phi i32 [ 1, %if.end28 ], [ %inc98, %for.end ]
  %sub = sub nuw nsw i32 239, %row.0392
  %cmp40385 = icmp ult i32 %index.0393, %sub
  br i1 %cmp40385, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %ii.1388 = phi i32 [ %inc56, %while.body ], [ %ii.0395, %while.cond.preheader ]
  %npts.1387 = phi i32 [ %inc, %while.body ], [ %npts.0394, %while.cond.preheader ]
  %index.1386 = phi i32 [ %add, %while.body ], [ %index.0393, %while.cond.preheader ]
  %idxprom = zext i32 %npts.1387 to i64
  %arraydecay2.i186 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 0, i64 0
  %237 = load <4 x i64>, <4 x i64>* %213, align 16, !tbaa !3
  %238 = bitcast i64* %arraydecay2.i186 to <4 x i64>*
  store <4 x i64> %237, <4 x i64>* %238, align 16, !tbaa !3
  %arrayidx2.4.i.i194 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 0, i64 4
  %239 = load <4 x i64>, <4 x i64>* %214, align 16, !tbaa !3
  %240 = bitcast i64* %arrayidx2.4.i.i194 to <4 x i64>*
  store <4 x i64> %239, <4 x i64>* %240, align 16, !tbaa !3
  %arrayidx2.8.i.i202 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 0, i64 8
  %241 = load <4 x i64>, <4 x i64>* %215, align 16, !tbaa !3
  %242 = bitcast i64* %arrayidx2.8.i.i202 to <4 x i64>*
  store <4 x i64> %241, <4 x i64>* %242, align 16, !tbaa !3
  %arraydecay6.i210 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 1, i64 0
  %243 = load <4 x i64>, <4 x i64>* %216, align 16, !tbaa !3
  %244 = bitcast i64* %arraydecay6.i210 to <4 x i64>*
  store <4 x i64> %243, <4 x i64>* %244, align 16, !tbaa !3
  %arrayidx2.4.i16.i = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 1, i64 4
  %245 = load <4 x i64>, <4 x i64>* %217, align 16, !tbaa !3
  %246 = bitcast i64* %arrayidx2.4.i16.i to <4 x i64>*
  store <4 x i64> %245, <4 x i64>* %246, align 16, !tbaa !3
  %arrayidx2.8.i24.i = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 1, i64 8
  %247 = load <4 x i64>, <4 x i64>* %218, align 16, !tbaa !3
  %248 = bitcast i64* %arrayidx2.8.i24.i to <4 x i64>*
  store <4 x i64> %247, <4 x i64>* %248, align 16, !tbaa !3
  %arraydecay2.i212 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 0, i64 0
  %249 = load <4 x i64>, <4 x i64>* %219, align 16, !tbaa !3
  %250 = bitcast i64* %arraydecay2.i212 to <4 x i64>*
  store <4 x i64> %249, <4 x i64>* %250, align 16, !tbaa !3
  %arrayidx2.4.i.i220 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 0, i64 4
  %251 = load <4 x i64>, <4 x i64>* %220, align 16, !tbaa !3
  %252 = bitcast i64* %arrayidx2.4.i.i220 to <4 x i64>*
  store <4 x i64> %251, <4 x i64>* %252, align 16, !tbaa !3
  %arrayidx2.8.i.i228 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 0, i64 8
  %253 = load <4 x i64>, <4 x i64>* %221, align 16, !tbaa !3
  %254 = bitcast i64* %arrayidx2.8.i.i228 to <4 x i64>*
  store <4 x i64> %253, <4 x i64>* %254, align 16, !tbaa !3
  %arraydecay6.i236 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 1, i64 0
  %255 = load <4 x i64>, <4 x i64>* %222, align 16, !tbaa !3
  %256 = bitcast i64* %arraydecay6.i236 to <4 x i64>*
  store <4 x i64> %255, <4 x i64>* %256, align 16, !tbaa !3
  %arrayidx2.4.i16.i244 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 1, i64 4
  %257 = load <4 x i64>, <4 x i64>* %223, align 16, !tbaa !3
  %258 = bitcast i64* %arrayidx2.4.i16.i244 to <4 x i64>*
  store <4 x i64> %257, <4 x i64>* %258, align 16, !tbaa !3
  %arrayidx2.8.i24.i252 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 1, i64 8
  %259 = load <4 x i64>, <4 x i64>* %224, align 16, !tbaa !3
  %260 = bitcast i64* %arrayidx2.8.i24.i252 to <4 x i64>*
  store <4 x i64> %259, <4 x i64>* %260, align 16, !tbaa !3
  %inc = add i32 %npts.1387, 1
  %arrayidx55 = getelementptr inbounds [10 x i32], [10 x i32]* %pts_index, i64 0, i64 %idxprom
  store i32 %index.1386, i32* %arrayidx55, align 4, !tbaa !59
  %inc56 = add i32 %ii.1388, 1
  %idxprom57 = zext i32 %ii.1388 to i64
  %arrayidx58 = getelementptr inbounds [238 x i32], [238 x i32]* @strat_Bob, i64 0, i64 %idxprom57
  %261 = load i32, i32* %arrayidx58, align 4, !tbaa !59
  call void @xTPLe(%struct.point_proj* nonnull %arraydecay37, %struct.point_proj* nonnull %arraydecay37, [12 x i64]* nonnull %arraydecay16, [12 x i64]* nonnull %arraydecay17, i32 %261)
  %add = add i32 %261, %index.1386
  %cmp40 = icmp ult i32 %add, %sub
  br i1 %cmp40, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %npts.1.lcssa = phi i32 [ %npts.0394, %while.cond.preheader ], [ %inc, %while.body ]
  %ii.1.lcssa = phi i32 [ %ii.0395, %while.cond.preheader ], [ %inc56, %while.body ]
  call void @get_3_isog(%struct.point_proj* nonnull %arraydecay37, [12 x i64]* nonnull %arraydecay16, [12 x i64]* nonnull %arraydecay17, [2 x [12 x i64]]* nonnull %arraydecay66)
  %cmp68390 = icmp eq i32 %npts.1.lcssa, 0
  br i1 %cmp68390, label %for.end, label %for.body69.preheader

for.body69.preheader:                             ; preds = %while.end
  %wide.trip.count = zext i32 %npts.1.lcssa to i64
  br label %for.body69

for.body69:                                       ; preds = %for.body69, %for.body69.preheader
  %indvars.iv = phi i64 [ 0, %for.body69.preheader ], [ %indvars.iv.next, %for.body69 ]
  %arraydecay72 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %indvars.iv, i64 0
  call void @eval_3_isog(%struct.point_proj* nonnull %arraydecay72, [2 x [12 x i64]]* nonnull %arraydecay66)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.end, label %for.body69

for.end:                                          ; preds = %for.body69, %while.end
  %sub75 = add i32 %npts.1.lcssa, -1
  %idxprom76 = zext i32 %sub75 to i64
  %arraydecay.i259 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom76, i64 0, i32 0, i64 0, i64 0
  %262 = bitcast i64* %arraydecay.i259 to <4 x i64>*
  %263 = load <4 x i64>, <4 x i64>* %262, align 16, !tbaa !3
  store <4 x i64> %263, <4 x i64>* %225, align 16, !tbaa !3
  %arrayidx.4.i.i267 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom76, i64 0, i32 0, i64 0, i64 4
  %264 = bitcast i64* %arrayidx.4.i.i267 to <4 x i64>*
  %265 = load <4 x i64>, <4 x i64>* %264, align 16, !tbaa !3
  store <4 x i64> %265, <4 x i64>* %226, align 16, !tbaa !3
  %arrayidx.8.i.i275 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom76, i64 0, i32 0, i64 0, i64 8
  %266 = bitcast i64* %arrayidx.8.i.i275 to <4 x i64>*
  %267 = load <4 x i64>, <4 x i64>* %266, align 16, !tbaa !3
  store <4 x i64> %267, <4 x i64>* %227, align 16, !tbaa !3
  %arraydecay4.i283 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom76, i64 0, i32 0, i64 1, i64 0
  %268 = bitcast i64* %arraydecay4.i283 to <4 x i64>*
  %269 = load <4 x i64>, <4 x i64>* %268, align 16, !tbaa !3
  store <4 x i64> %269, <4 x i64>* %228, align 16, !tbaa !3
  %arrayidx.4.i15.i291 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom76, i64 0, i32 0, i64 1, i64 4
  %270 = bitcast i64* %arrayidx.4.i15.i291 to <4 x i64>*
  %271 = load <4 x i64>, <4 x i64>* %270, align 16, !tbaa !3
  store <4 x i64> %271, <4 x i64>* %229, align 16, !tbaa !3
  %arrayidx.8.i23.i299 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom76, i64 0, i32 0, i64 1, i64 8
  %272 = bitcast i64* %arrayidx.8.i23.i299 to <4 x i64>*
  %273 = load <4 x i64>, <4 x i64>* %272, align 16, !tbaa !3
  store <4 x i64> %273, <4 x i64>* %230, align 16, !tbaa !3
  %arraydecay.i307 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom76, i64 0, i32 1, i64 0, i64 0
  %274 = bitcast i64* %arraydecay.i307 to <4 x i64>*
  %275 = load <4 x i64>, <4 x i64>* %274, align 16, !tbaa !3
  store <4 x i64> %275, <4 x i64>* %231, align 16, !tbaa !3
  %arrayidx.4.i.i315 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom76, i64 0, i32 1, i64 0, i64 4
  %276 = bitcast i64* %arrayidx.4.i.i315 to <4 x i64>*
  %277 = load <4 x i64>, <4 x i64>* %276, align 16, !tbaa !3
  store <4 x i64> %277, <4 x i64>* %232, align 16, !tbaa !3
  %arrayidx.8.i.i323 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom76, i64 0, i32 1, i64 0, i64 8
  %278 = bitcast i64* %arrayidx.8.i.i323 to <4 x i64>*
  %279 = load <4 x i64>, <4 x i64>* %278, align 16, !tbaa !3
  store <4 x i64> %279, <4 x i64>* %233, align 16, !tbaa !3
  %arraydecay4.i331 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom76, i64 0, i32 1, i64 1, i64 0
  %280 = bitcast i64* %arraydecay4.i331 to <4 x i64>*
  %281 = load <4 x i64>, <4 x i64>* %280, align 16, !tbaa !3
  store <4 x i64> %281, <4 x i64>* %234, align 16, !tbaa !3
  %arrayidx.4.i15.i339 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom76, i64 0, i32 1, i64 1, i64 4
  %282 = bitcast i64* %arrayidx.4.i15.i339 to <4 x i64>*
  %283 = load <4 x i64>, <4 x i64>* %282, align 16, !tbaa !3
  store <4 x i64> %283, <4 x i64>* %235, align 16, !tbaa !3
  %arrayidx.8.i23.i347 = getelementptr inbounds [10 x [1 x %struct.point_proj]], [10 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom76, i64 0, i32 1, i64 1, i64 8
  %284 = bitcast i64* %arrayidx.8.i23.i347 to <4 x i64>*
  %285 = load <4 x i64>, <4 x i64>* %284, align 16, !tbaa !3
  store <4 x i64> %285, <4 x i64>* %236, align 16, !tbaa !3
  %arrayidx95 = getelementptr inbounds [10 x i32], [10 x i32]* %pts_index, i64 0, i64 %idxprom76
  %286 = load i32, i32* %arrayidx95, align 4, !tbaa !59
  %inc98 = add nuw nsw i32 %row.0392, 1
  %exitcond396 = icmp eq i32 %inc98, 239
  br i1 %exitcond396, label %for.end99, label %while.cond.preheader

for.end99:                                        ; preds = %for.end
  call void @get_3_isog(%struct.point_proj* nonnull %arraydecay37, [12 x i64]* nonnull %arraydecay16, [12 x i64]* nonnull %arraydecay17, [2 x [12 x i64]]* nonnull %arraydecay66)
  call void @fpadd751(i64* nonnull %arraydecay4.i, i64* nonnull %arrayidx5.i, i64* nonnull %arraydecay.i172) #10
  call void @fpadd751(i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay6.i) #10
  call void @fpadd751(i64* nonnull %arraydecay.i172, i64* nonnull %arraydecay.i172, i64* nonnull %arraydecay.i172) #10
  call void @fpadd751(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i) #10
  call void @fpsub751(i64* nonnull %arraydecay4.i, i64* nonnull %arrayidx5.i, i64* nonnull %arraydecay4.i) #10
  call void @fpsub751(i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i) #10
  %arraydecay115 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %jinv, i64 0, i64 0
  call void @j_inv([12 x i64]* nonnull %arraydecay12, [12 x i64]* nonnull %arraydecay17, [12 x i64]* nonnull %arraydecay115)
  %287 = bitcast [2 x [12 x i64]]* %A2.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %287) #10
  %arraydecay.i.i374 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %jinv, i64 0, i64 0, i64 0
  %arraydecay2.i.i375 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A2.i, i64 0, i64 0, i64 0
  %288 = bitcast [12 x i64]* %one.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %288) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %288, i8 0, i64 96, i1 false) #10
  %arrayidx.i.i.i = getelementptr inbounds [12 x i64], [12 x i64]* %one.i.i.i, i64 0, i64 0
  store i64 1, i64* %arrayidx.i.i.i, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay.i.i374, i64* nonnull %arrayidx.i.i.i, i64* nonnull %arraydecay.i.i.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay2.i.i375) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %11) #10
  call void @fpcorrection751(i64* nonnull %arraydecay2.i.i375) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %288) #10
  %arraydecay4.i.i377 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %jinv, i64 0, i64 1, i64 0
  %arraydecay6.i.i378 = getelementptr inbounds [2 x [12 x i64]], [2 x [12 x i64]]* %A2.i, i64 0, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %288) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %288, i8 0, i64 96, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 192, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay4.i.i377, i64* nonnull %arrayidx.i.i.i, i64* nonnull %arraydecay.i.i.i.i, i32 12) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay6.i.i378) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %11) #10
  call void @fpcorrection751(i64* nonnull %arraydecay6.i.i378) #10
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %288) #10
  %289 = call i64 @llvm.objectsize.i64.p0i8(i8* %SharedSecretB, i1 false, i1 true) #10
  %call.i.i379 = call i8* @__memcpy_chk(i8* %SharedSecretB, i8* nonnull %287, i64 94, i64 %289) #10
  %add.ptr.i380 = getelementptr inbounds i8, i8* %SharedSecretB, i64 94
  %290 = bitcast i64* %arraydecay6.i.i378 to i8*
  %291 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr.i380, i1 false, i1 true) #10
  %call.i5.i = call i8* @__memcpy_chk(i8* nonnull %add.ptr.i380, i8* nonnull %290, i64 94, i64 %291) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %287) #10
  br label %cleanup

cleanup.critedge:                                 ; preds = %is_felm_zero.exit261.i
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %22) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %21) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %20) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %19) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %18) #10
  br label %cleanup

cleanup.critedge381:                              ; preds = %is_felm_zero.exit337.i
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %22) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %21) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %20) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %19) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %18) #10
  br label %cleanup

cleanup.critedge382:                              ; preds = %if.end.i
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %22) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %21) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %20) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %19) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %18) #10
  br label %cleanup

cleanup.critedge383:                              ; preds = %is_felm_zero.exit80.i
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %22) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %21) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %20) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %19) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %18) #10
  br label %cleanup

cleanup:                                          ; preds = %publickey_validation.exit, %is_felm_zero.exit.thread.i, %cleanup.critedge383, %cleanup.critedge382, %cleanup.critedge381, %cleanup.critedge, %for.end99
  %retval.0 = phi i32 [ 0, %for.end99 ], [ 1, %publickey_validation.exit ], [ 1, %cleanup.critedge ], [ 1, %cleanup.critedge381 ], [ 1, %cleanup.critedge382 ], [ 1, %cleanup.critedge383 ], [ 1, %is_felm_zero.exit.thread.i ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %9) #10
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 576, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 576, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 3840, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind ssp uwtable
define i32 @EphemeralSecretAgreement_B_SIDHp751(i8* %PrivateKeyB, i8* %PublicKeyA, i8* %SharedSecretB) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @EphemeralSecretAgreement_B_extended(i8* %PrivateKeyB, i8* %PublicKeyA, i8* %SharedSecretB, i32 0)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @crypto_kem_keypair_SIKEp751(i8* %pk, i8* %sk) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @randombytes(i8* %sk, i64 32) #10
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %sk, i64 32
  %call.i = tail call i32 @randombytes(i8* nonnull %add.ptr, i64 48) #10
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx.i = getelementptr inbounds i8, i8* %sk, i64 79
  %0 = load i8, i8* %arrayidx.i, align 1, !tbaa !7
  %1 = and i8 %0, 3
  store i8 %1, i8* %arrayidx.i, align 1, !tbaa !7
  %call4 = tail call i32 @EphemeralKeyGeneration_B_SIDHp751(i8* nonnull %add.ptr, i8* %pk)
  %arrayidx = getelementptr inbounds i8, i8* %sk, i64 80
  %2 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %arrayidx, i1 false, i1 true)
  %call6 = tail call i8* @__memcpy_chk(i8* nonnull %arrayidx, i8* %pk, i64 564, i64 %2) #10
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry ], [ 1, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #8

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #9

; Function Attrs: nounwind ssp uwtable
define i32 @crypto_kem_enc_SIKEp751(i8* %ct, i8* %ss, i8* %pk) local_unnamed_addr #4 {
entry:
  %ephemeralsk = alloca [47 x i8], align 16
  %jinvariant = alloca [188 x i8], align 16
  %h = alloca [32 x i8], align 16
  %temp = alloca [628 x i8], align 16
  %0 = getelementptr inbounds [47 x i8], [47 x i8]* %ephemeralsk, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 47, i8* nonnull %0) #10
  %1 = getelementptr inbounds [188 x i8], [188 x i8]* %jinvariant, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 188, i8* nonnull %1) #10
  %2 = getelementptr inbounds [32 x i8], [32 x i8]* %h, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #10
  %3 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 628, i8* nonnull %3) #10
  %call = call i32 @randombytes(i8* nonnull %3, i64 32) #10
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %arrayidx, i8* align 1 %pk, i64 564, i1 false)
  call void @shake256(i8* nonnull %0, i64 47, i8* nonnull %3, i64 596) #10
  %arrayidx3 = getelementptr inbounds [47 x i8], [47 x i8]* %ephemeralsk, i64 0, i64 46
  %4 = load i8, i8* %arrayidx3, align 2, !tbaa !7
  %5 = and i8 %4, 15
  store i8 %5, i8* %arrayidx3, align 2, !tbaa !7
  %call6 = call i32 @EphemeralKeyGeneration_A_SIDHp751(i8* nonnull %0, i8* %ct)
  %call9 = call i32 @EphemeralSecretAgreement_A_SIDHp751(i8* nonnull %0, i8* %pk, i8* nonnull %1)
  call void @shake256(i8* nonnull %2, i64 32, i8* nonnull %1, i64 188) #10
  %arrayidx21 = getelementptr inbounds i8, i8* %ct, i64 564
  %6 = bitcast [628 x i8]* %temp to <16 x i8>*
  %7 = load <16 x i8>, <16 x i8>* %6, align 16, !tbaa !7
  %8 = bitcast [32 x i8]* %h to <16 x i8>*
  %9 = load <16 x i8>, <16 x i8>* %8, align 16, !tbaa !7
  %10 = xor <16 x i8> %9, %7
  %11 = bitcast i8* %arrayidx21 to <16 x i8>*
  store <16 x i8> %10, <16 x i8>* %11, align 1, !tbaa !7
  %arrayidx14.16 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 16
  %arrayidx17.16 = getelementptr inbounds [32 x i8], [32 x i8]* %h, i64 0, i64 16
  %arrayidx21.16 = getelementptr inbounds i8, i8* %ct, i64 580
  %12 = bitcast i8* %arrayidx14.16 to <16 x i8>*
  %13 = load <16 x i8>, <16 x i8>* %12, align 16, !tbaa !7
  %14 = bitcast i8* %arrayidx17.16 to <16 x i8>*
  %15 = load <16 x i8>, <16 x i8>* %14, align 16, !tbaa !7
  %16 = xor <16 x i8> %15, %13
  %17 = bitcast i8* %arrayidx21.16 to <16 x i8>*
  store <16 x i8> %16, <16 x i8>* %17, align 1, !tbaa !7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %arrayidx, i8* align 1 %ct, i64 596, i1 false)
  call void @shake256(i8* %ss, i64 32, i8* nonnull %3, i64 628) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 628, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 188, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 47, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

declare void @shake256(i8*, i64, i8*, i64) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define i32 @crypto_kem_dec_SIKEp751(i8* %ss, i8* %ct, i8* %sk) local_unnamed_addr #4 {
entry:
  %ephemeralsk_ = alloca [47 x i8], align 16
  %jinvariant_ = alloca [188 x i8], align 16
  %h_ = alloca [32 x i8], align 16
  %c0_ = alloca [564 x i8], align 16
  %temp = alloca [628 x i8], align 16
  %0 = getelementptr inbounds [47 x i8], [47 x i8]* %ephemeralsk_, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 47, i8* nonnull %0) #10
  %1 = getelementptr inbounds [188 x i8], [188 x i8]* %jinvariant_, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 188, i8* nonnull %1) #10
  %2 = getelementptr inbounds [32 x i8], [32 x i8]* %h_, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #10
  %3 = getelementptr inbounds [564 x i8], [564 x i8]* %c0_, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 564, i8* nonnull %3) #10
  %4 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 628, i8* nonnull %4) #10
  %add.ptr = getelementptr inbounds i8, i8* %sk, i64 32
  %call = call i32 @EphemeralSecretAgreement_B_extended(i8* nonnull %add.ptr, i8* %ct, i8* nonnull %1, i32 1)
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %entry.Hashing_crit_edge

entry.Hashing_crit_edge:                          ; preds = %entry
  %.pre = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 1
  %.pre43 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 2
  %.pre44 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 3
  %.pre45 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 4
  %.pre46 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 5
  %.pre47 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 6
  %.pre48 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 7
  %.pre49 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 8
  %.pre50 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 9
  %.pre51 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 10
  %.pre52 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 11
  %.pre53 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 12
  %.pre54 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 13
  %.pre55 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 14
  %.pre56 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 15
  %.pre57 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 16
  %.pre58 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 17
  %.pre59 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 18
  %.pre60 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 19
  %.pre61 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 20
  %.pre62 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 21
  %.pre63 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 22
  %.pre64 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 23
  %.pre65 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 24
  %.pre66 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 25
  %.pre67 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 26
  %.pre68 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 27
  %.pre69 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 28
  %.pre70 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 29
  %.pre71 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 30
  %.pre72 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 31
  %.pre73 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 32
  br label %Hashing

if.end:                                           ; preds = %entry
  call void @shake256(i8* nonnull %2, i64 32, i8* nonnull %1, i64 188) #10
  %arrayidx = getelementptr inbounds i8, i8* %ct, i64 564
  %arrayidx9.1 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 1
  %arrayidx9.2 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 2
  %arrayidx9.3 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 3
  %arrayidx9.4 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 4
  %arrayidx9.5 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 5
  %arrayidx9.6 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 6
  %arrayidx9.7 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 7
  %arrayidx9.8 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 8
  %arrayidx9.9 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 9
  %arrayidx9.10 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 10
  %arrayidx9.11 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 11
  %arrayidx9.12 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 12
  %arrayidx9.13 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 13
  %arrayidx9.14 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 14
  %5 = bitcast i8* %arrayidx to <16 x i8>*
  %6 = load <16 x i8>, <16 x i8>* %5, align 1, !tbaa !7
  %7 = bitcast [32 x i8]* %h_ to <16 x i8>*
  %8 = load <16 x i8>, <16 x i8>* %7, align 16, !tbaa !7
  %9 = xor <16 x i8> %8, %6
  %arrayidx9.15 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 15
  %10 = bitcast [628 x i8]* %temp to <16 x i8>*
  store <16 x i8> %9, <16 x i8>* %10, align 16, !tbaa !7
  %arrayidx.16 = getelementptr inbounds i8, i8* %ct, i64 580
  %arrayidx5.16 = getelementptr inbounds [32 x i8], [32 x i8]* %h_, i64 0, i64 16
  %arrayidx9.16 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 16
  %arrayidx9.17 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 17
  %arrayidx9.18 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 18
  %arrayidx9.19 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 19
  %arrayidx9.20 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 20
  %arrayidx9.21 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 21
  %arrayidx9.22 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 22
  %arrayidx9.23 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 23
  %arrayidx9.24 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 24
  %arrayidx9.25 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 25
  %arrayidx9.26 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 26
  %arrayidx9.27 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 27
  %arrayidx9.28 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 28
  %arrayidx9.29 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 29
  %arrayidx9.30 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 30
  %11 = bitcast i8* %arrayidx.16 to <16 x i8>*
  %12 = load <16 x i8>, <16 x i8>* %11, align 1, !tbaa !7
  %13 = bitcast i8* %arrayidx5.16 to <16 x i8>*
  %14 = load <16 x i8>, <16 x i8>* %13, align 16, !tbaa !7
  %15 = xor <16 x i8> %14, %12
  %arrayidx9.31 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 31
  %16 = bitcast i8* %arrayidx9.16 to <16 x i8>*
  store <16 x i8> %15, <16 x i8>* %16, align 16, !tbaa !7
  %arrayidx10 = getelementptr inbounds [628 x i8], [628 x i8]* %temp, i64 0, i64 32
  %arrayidx11 = getelementptr inbounds i8, i8* %sk, i64 80
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %arrayidx10, i8* nonnull align 1 %arrayidx11, i64 564, i1 false)
  call void @shake256(i8* nonnull %0, i64 47, i8* nonnull %4, i64 596) #10
  %arrayidx14 = getelementptr inbounds [47 x i8], [47 x i8]* %ephemeralsk_, i64 0, i64 46
  %17 = load i8, i8* %arrayidx14, align 2, !tbaa !7
  %18 = and i8 %17, 15
  store i8 %18, i8* %arrayidx14, align 2, !tbaa !7
  %call19 = call i32 @EphemeralKeyGeneration_A_SIDHp751(i8* nonnull %0, i8* nonnull %3)
  br label %vector.body

vector.body:                                      ; preds = %vector.body.1, %if.end
  %index = phi i64 [ 0, %if.end ], [ %index.next.1, %vector.body.1 ]
  %vec.phi = phi <8 x i32> [ zeroinitializer, %if.end ], [ %177, %vector.body.1 ]
  %vec.phi77 = phi <8 x i32> [ zeroinitializer, %if.end ], [ %178, %vector.body.1 ]
  %vec.phi78 = phi <8 x i32> [ zeroinitializer, %if.end ], [ %179, %vector.body.1 ]
  %vec.phi79 = phi <8 x i32> [ zeroinitializer, %if.end ], [ %180, %vector.body.1 ]
  %19 = getelementptr inbounds [564 x i8], [564 x i8]* %c0_, i64 0, i64 %index
  %20 = bitcast i8* %19 to <8 x i8>*
  %wide.load = load <8 x i8>, <8 x i8>* %20, align 16, !tbaa !7
  %21 = getelementptr inbounds i8, i8* %19, i64 8
  %22 = bitcast i8* %21 to <8 x i8>*
  %wide.load80 = load <8 x i8>, <8 x i8>* %22, align 8, !tbaa !7
  %23 = getelementptr inbounds i8, i8* %19, i64 16
  %24 = bitcast i8* %23 to <8 x i8>*
  %wide.load81 = load <8 x i8>, <8 x i8>* %24, align 16, !tbaa !7
  %25 = getelementptr inbounds i8, i8* %19, i64 24
  %26 = bitcast i8* %25 to <8 x i8>*
  %wide.load82 = load <8 x i8>, <8 x i8>* %26, align 8, !tbaa !7
  %27 = getelementptr inbounds i8, i8* %ct, i64 %index
  %28 = bitcast i8* %27 to <8 x i8>*
  %wide.load83 = load <8 x i8>, <8 x i8>* %28, align 1, !tbaa !7
  %29 = getelementptr inbounds i8, i8* %27, i64 8
  %30 = bitcast i8* %29 to <8 x i8>*
  %wide.load84 = load <8 x i8>, <8 x i8>* %30, align 1, !tbaa !7
  %31 = getelementptr inbounds i8, i8* %27, i64 16
  %32 = bitcast i8* %31 to <8 x i8>*
  %wide.load85 = load <8 x i8>, <8 x i8>* %32, align 1, !tbaa !7
  %33 = getelementptr inbounds i8, i8* %27, i64 24
  %34 = bitcast i8* %33 to <8 x i8>*
  %wide.load86 = load <8 x i8>, <8 x i8>* %34, align 1, !tbaa !7
  %35 = xor <8 x i8> %wide.load83, %wide.load
  %36 = xor <8 x i8> %wide.load84, %wide.load80
  %37 = xor <8 x i8> %wide.load85, %wide.load81
  %38 = xor <8 x i8> %wide.load86, %wide.load82
  %39 = zext <8 x i8> %35 to <8 x i32>
  %40 = zext <8 x i8> %36 to <8 x i32>
  %41 = zext <8 x i8> %37 to <8 x i32>
  %42 = zext <8 x i8> %38 to <8 x i32>
  %43 = or <8 x i32> %vec.phi, %39
  %44 = or <8 x i32> %vec.phi77, %40
  %45 = or <8 x i32> %vec.phi78, %41
  %46 = or <8 x i32> %vec.phi79, %42
  %index.next = or i64 %index, 32
  %47 = icmp eq i64 %index.next, 544
  br i1 %47, label %middle.block, label %vector.body.1, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i32> %44, %43
  %bin.rdx87 = or <8 x i32> %45, %bin.rdx
  %bin.rdx88 = or <8 x i32> %46, %bin.rdx87
  %rdx.shuf = shufflevector <8 x i32> %bin.rdx88, <8 x i32> undef, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx89 = or <8 x i32> %bin.rdx88, %rdx.shuf
  %rdx.shuf90 = shufflevector <8 x i32> %bin.rdx89, <8 x i32> undef, <8 x i32> <i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx91 = or <8 x i32> %bin.rdx89, %rdx.shuf90
  %rdx.shuf92 = shufflevector <8 x i32> %bin.rdx91, <8 x i32> undef, <8 x i32> <i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx93 = or <8 x i32> %bin.rdx91, %rdx.shuf92
  %48 = extractelement <8 x i32> %bin.rdx93, i32 0
  %arrayidx.i = getelementptr inbounds [564 x i8], [564 x i8]* %c0_, i64 0, i64 544
  %49 = load i8, i8* %arrayidx.i, align 16, !tbaa !7
  %arrayidx2.i = getelementptr inbounds i8, i8* %ct, i64 544
  %50 = load i8, i8* %arrayidx2.i, align 1, !tbaa !7
  %xor13.i = xor i8 %50, %49
  %xor.i = zext i8 %xor13.i to i32
  %or.i = or i32 %48, %xor.i
  %arrayidx.i.1 = getelementptr inbounds [564 x i8], [564 x i8]* %c0_, i64 0, i64 545
  %51 = load i8, i8* %arrayidx.i.1, align 1, !tbaa !7
  %arrayidx2.i.1 = getelementptr inbounds i8, i8* %ct, i64 545
  %52 = load i8, i8* %arrayidx2.i.1, align 1, !tbaa !7
  %xor13.i.1 = xor i8 %52, %51
  %xor.i.1 = zext i8 %xor13.i.1 to i32
  %or.i.1 = or i32 %or.i, %xor.i.1
  %arrayidx.i.2 = getelementptr inbounds [564 x i8], [564 x i8]* %c0_, i64 0, i64 546
  %53 = load i8, i8* %arrayidx.i.2, align 2, !tbaa !7
  %arrayidx2.i.2 = getelementptr inbounds i8, i8* %ct, i64 546
  %54 = load i8, i8* %arrayidx2.i.2, align 1, !tbaa !7
  %xor13.i.2 = xor i8 %54, %53
  %xor.i.2 = zext i8 %xor13.i.2 to i32
  %or.i.2 = or i32 %or.i.1, %xor.i.2
  %arrayidx.i.3 = getelementptr inbounds [564 x i8], [564 x i8]* %c0_, i64 0, i64 547
  %55 = load i8, i8* %arrayidx.i.3, align 1, !tbaa !7
  %arrayidx2.i.3 = getelementptr inbounds i8, i8* %ct, i64 547
  %56 = load i8, i8* %arrayidx2.i.3, align 1, !tbaa !7
  %xor13.i.3 = xor i8 %56, %55
  %xor.i.3 = zext i8 %xor13.i.3 to i32
  %or.i.3 = or i32 %or.i.2, %xor.i.3
  %arrayidx.i.4 = getelementptr inbounds [564 x i8], [564 x i8]* %c0_, i64 0, i64 548
  %57 = load i8, i8* %arrayidx.i.4, align 4, !tbaa !7
  %arrayidx2.i.4 = getelementptr inbounds i8, i8* %ct, i64 548
  %58 = load i8, i8* %arrayidx2.i.4, align 1, !tbaa !7
  %xor13.i.4 = xor i8 %58, %57
  %xor.i.4 = zext i8 %xor13.i.4 to i32
  %or.i.4 = or i32 %or.i.3, %xor.i.4
  %arrayidx.i.5 = getelementptr inbounds [564 x i8], [564 x i8]* %c0_, i64 0, i64 549
  %59 = load i8, i8* %arrayidx.i.5, align 1, !tbaa !7
  %arrayidx2.i.5 = getelementptr inbounds i8, i8* %ct, i64 549
  %60 = load i8, i8* %arrayidx2.i.5, align 1, !tbaa !7
  %xor13.i.5 = xor i8 %60, %59
  %xor.i.5 = zext i8 %xor13.i.5 to i32
  %or.i.5 = or i32 %or.i.4, %xor.i.5
  %arrayidx.i.6 = getelementptr inbounds [564 x i8], [564 x i8]* %c0_, i64 0, i64 550
  %61 = load i8, i8* %arrayidx.i.6, align 2, !tbaa !7
  %arrayidx2.i.6 = getelementptr inbounds i8, i8* %ct, i64 550
  %62 = load i8, i8* %arrayidx2.i.6, align 1, !tbaa !7
  %xor13.i.6 = xor i8 %62, %61
  %xor.i.6 = zext i8 %xor13.i.6 to i32
  %or.i.6 = or i32 %or.i.5, %xor.i.6
  %arrayidx.i.7 = getelementptr inbounds [564 x i8], [564 x i8]* %c0_, i64 0, i64 551
  %63 = load i8, i8* %arrayidx.i.7, align 1, !tbaa !7
  %arrayidx2.i.7 = getelementptr inbounds i8, i8* %ct, i64 551
  %64 = load i8, i8* %arrayidx2.i.7, align 1, !tbaa !7
  %xor13.i.7 = xor i8 %64, %63
  %xor.i.7 = zext i8 %xor13.i.7 to i32
  %or.i.7 = or i32 %or.i.6, %xor.i.7
  %arrayidx.i.8 = getelementptr inbounds [564 x i8], [564 x i8]* %c0_, i64 0, i64 552
  %65 = load i8, i8* %arrayidx.i.8, align 8, !tbaa !7
  %arrayidx2.i.8 = getelementptr inbounds i8, i8* %ct, i64 552
  %66 = load i8, i8* %arrayidx2.i.8, align 1, !tbaa !7
  %xor13.i.8 = xor i8 %66, %65
  %xor.i.8 = zext i8 %xor13.i.8 to i32
  %or.i.8 = or i32 %or.i.7, %xor.i.8
  %arrayidx.i.9 = getelementptr inbounds [564 x i8], [564 x i8]* %c0_, i64 0, i64 553
  %67 = load i8, i8* %arrayidx.i.9, align 1, !tbaa !7
  %arrayidx2.i.9 = getelementptr inbounds i8, i8* %ct, i64 553
  %68 = load i8, i8* %arrayidx2.i.9, align 1, !tbaa !7
  %xor13.i.9 = xor i8 %68, %67
  %xor.i.9 = zext i8 %xor13.i.9 to i32
  %or.i.9 = or i32 %or.i.8, %xor.i.9
  %arrayidx.i.10 = getelementptr inbounds [564 x i8], [564 x i8]* %c0_, i64 0, i64 554
  %69 = load i8, i8* %arrayidx.i.10, align 2, !tbaa !7
  %arrayidx2.i.10 = getelementptr inbounds i8, i8* %ct, i64 554
  %70 = load i8, i8* %arrayidx2.i.10, align 1, !tbaa !7
  %xor13.i.10 = xor i8 %70, %69
  %xor.i.10 = zext i8 %xor13.i.10 to i32
  %or.i.10 = or i32 %or.i.9, %xor.i.10
  %arrayidx.i.11 = getelementptr inbounds [564 x i8], [564 x i8]* %c0_, i64 0, i64 555
  %71 = load i8, i8* %arrayidx.i.11, align 1, !tbaa !7
  %arrayidx2.i.11 = getelementptr inbounds i8, i8* %ct, i64 555
  %72 = load i8, i8* %arrayidx2.i.11, align 1, !tbaa !7
  %xor13.i.11 = xor i8 %72, %71
  %xor.i.11 = zext i8 %xor13.i.11 to i32
  %or.i.11 = or i32 %or.i.10, %xor.i.11
  %arrayidx.i.12 = getelementptr inbounds [564 x i8], [564 x i8]* %c0_, i64 0, i64 556
  %73 = load i8, i8* %arrayidx.i.12, align 4, !tbaa !7
  %arrayidx2.i.12 = getelementptr inbounds i8, i8* %ct, i64 556
  %74 = load i8, i8* %arrayidx2.i.12, align 1, !tbaa !7
  %xor13.i.12 = xor i8 %74, %73
  %xor.i.12 = zext i8 %xor13.i.12 to i32
  %or.i.12 = or i32 %or.i.11, %xor.i.12
  %arrayidx.i.13 = getelementptr inbounds [564 x i8], [564 x i8]* %c0_, i64 0, i64 557
  %75 = load i8, i8* %arrayidx.i.13, align 1, !tbaa !7
  %arrayidx2.i.13 = getelementptr inbounds i8, i8* %ct, i64 557
  %76 = load i8, i8* %arrayidx2.i.13, align 1, !tbaa !7
  %xor13.i.13 = xor i8 %76, %75
  %xor.i.13 = zext i8 %xor13.i.13 to i32
  %or.i.13 = or i32 %or.i.12, %xor.i.13
  %arrayidx.i.14 = getelementptr inbounds [564 x i8], [564 x i8]* %c0_, i64 0, i64 558
  %77 = load i8, i8* %arrayidx.i.14, align 2, !tbaa !7
  %arrayidx2.i.14 = getelementptr inbounds i8, i8* %ct, i64 558
  %78 = load i8, i8* %arrayidx2.i.14, align 1, !tbaa !7
  %xor13.i.14 = xor i8 %78, %77
  %xor.i.14 = zext i8 %xor13.i.14 to i32
  %or.i.14 = or i32 %or.i.13, %xor.i.14
  %arrayidx.i.15 = getelementptr inbounds [564 x i8], [564 x i8]* %c0_, i64 0, i64 559
  %79 = load i8, i8* %arrayidx.i.15, align 1, !tbaa !7
  %arrayidx2.i.15 = getelementptr inbounds i8, i8* %ct, i64 559
  %80 = load i8, i8* %arrayidx2.i.15, align 1, !tbaa !7
  %xor13.i.15 = xor i8 %80, %79
  %xor.i.15 = zext i8 %xor13.i.15 to i32
  %or.i.15 = or i32 %or.i.14, %xor.i.15
  %arrayidx.i.16 = getelementptr inbounds [564 x i8], [564 x i8]* %c0_, i64 0, i64 560
  %81 = load i8, i8* %arrayidx.i.16, align 16, !tbaa !7
  %arrayidx2.i.16 = getelementptr inbounds i8, i8* %ct, i64 560
  %82 = load i8, i8* %arrayidx2.i.16, align 1, !tbaa !7
  %xor13.i.16 = xor i8 %82, %81
  %xor.i.16 = zext i8 %xor13.i.16 to i32
  %or.i.16 = or i32 %or.i.15, %xor.i.16
  %arrayidx.i.17 = getelementptr inbounds [564 x i8], [564 x i8]* %c0_, i64 0, i64 561
  %83 = load i8, i8* %arrayidx.i.17, align 1, !tbaa !7
  %arrayidx2.i.17 = getelementptr inbounds i8, i8* %ct, i64 561
  %84 = load i8, i8* %arrayidx2.i.17, align 1, !tbaa !7
  %xor13.i.17 = xor i8 %84, %83
  %xor.i.17 = zext i8 %xor13.i.17 to i32
  %or.i.17 = or i32 %or.i.16, %xor.i.17
  %arrayidx.i.18 = getelementptr inbounds [564 x i8], [564 x i8]* %c0_, i64 0, i64 562
  %85 = load i8, i8* %arrayidx.i.18, align 2, !tbaa !7
  %arrayidx2.i.18 = getelementptr inbounds i8, i8* %ct, i64 562
  %86 = load i8, i8* %arrayidx2.i.18, align 1, !tbaa !7
  %xor13.i.18 = xor i8 %86, %85
  %xor.i.18 = zext i8 %xor13.i.18 to i32
  %or.i.18 = or i32 %or.i.17, %xor.i.18
  %arrayidx.i.19 = getelementptr inbounds [564 x i8], [564 x i8]* %c0_, i64 0, i64 563
  %87 = load i8, i8* %arrayidx.i.19, align 1, !tbaa !7
  %arrayidx2.i.19 = getelementptr inbounds i8, i8* %ct, i64 563
  %88 = load i8, i8* %arrayidx2.i.19, align 1, !tbaa !7
  %xor13.i.19 = xor i8 %88, %87
  %xor.i.19 = zext i8 %xor13.i.19 to i32
  %or.i.19 = or i32 %or.i.18, %xor.i.19
  %phitmp.i = sub i32 0, %or.i.19
  %phitmp17.i = ashr i32 %phitmp.i, 31
  %phitmp18.i = trunc i32 %phitmp17.i to i8
  br label %Hashing

Hashing:                                          ; preds = %entry.Hashing_crit_edge, %middle.block
  %arrayidx23.pre-phi = phi i8* [ %.pre73, %entry.Hashing_crit_edge ], [ %arrayidx10, %middle.block ]
  %arrayidx3.i.31.pre-phi = phi i8* [ %.pre72, %entry.Hashing_crit_edge ], [ %arrayidx9.31, %middle.block ]
  %arrayidx3.i.30.pre-phi = phi i8* [ %.pre71, %entry.Hashing_crit_edge ], [ %arrayidx9.30, %middle.block ]
  %arrayidx3.i.29.pre-phi = phi i8* [ %.pre70, %entry.Hashing_crit_edge ], [ %arrayidx9.29, %middle.block ]
  %arrayidx3.i.28.pre-phi = phi i8* [ %.pre69, %entry.Hashing_crit_edge ], [ %arrayidx9.28, %middle.block ]
  %arrayidx3.i.27.pre-phi = phi i8* [ %.pre68, %entry.Hashing_crit_edge ], [ %arrayidx9.27, %middle.block ]
  %arrayidx3.i.26.pre-phi = phi i8* [ %.pre67, %entry.Hashing_crit_edge ], [ %arrayidx9.26, %middle.block ]
  %arrayidx3.i.25.pre-phi = phi i8* [ %.pre66, %entry.Hashing_crit_edge ], [ %arrayidx9.25, %middle.block ]
  %arrayidx3.i.24.pre-phi = phi i8* [ %.pre65, %entry.Hashing_crit_edge ], [ %arrayidx9.24, %middle.block ]
  %arrayidx3.i.23.pre-phi = phi i8* [ %.pre64, %entry.Hashing_crit_edge ], [ %arrayidx9.23, %middle.block ]
  %arrayidx3.i.22.pre-phi = phi i8* [ %.pre63, %entry.Hashing_crit_edge ], [ %arrayidx9.22, %middle.block ]
  %arrayidx3.i.21.pre-phi = phi i8* [ %.pre62, %entry.Hashing_crit_edge ], [ %arrayidx9.21, %middle.block ]
  %arrayidx3.i.20.pre-phi = phi i8* [ %.pre61, %entry.Hashing_crit_edge ], [ %arrayidx9.20, %middle.block ]
  %arrayidx3.i.19.pre-phi = phi i8* [ %.pre60, %entry.Hashing_crit_edge ], [ %arrayidx9.19, %middle.block ]
  %arrayidx3.i.18.pre-phi = phi i8* [ %.pre59, %entry.Hashing_crit_edge ], [ %arrayidx9.18, %middle.block ]
  %arrayidx3.i.17.pre-phi = phi i8* [ %.pre58, %entry.Hashing_crit_edge ], [ %arrayidx9.17, %middle.block ]
  %arrayidx3.i.16.pre-phi = phi i8* [ %.pre57, %entry.Hashing_crit_edge ], [ %arrayidx9.16, %middle.block ]
  %arrayidx3.i.15.pre-phi = phi i8* [ %.pre56, %entry.Hashing_crit_edge ], [ %arrayidx9.15, %middle.block ]
  %arrayidx3.i.14.pre-phi = phi i8* [ %.pre55, %entry.Hashing_crit_edge ], [ %arrayidx9.14, %middle.block ]
  %arrayidx3.i.13.pre-phi = phi i8* [ %.pre54, %entry.Hashing_crit_edge ], [ %arrayidx9.13, %middle.block ]
  %arrayidx3.i.12.pre-phi = phi i8* [ %.pre53, %entry.Hashing_crit_edge ], [ %arrayidx9.12, %middle.block ]
  %arrayidx3.i.11.pre-phi = phi i8* [ %.pre52, %entry.Hashing_crit_edge ], [ %arrayidx9.11, %middle.block ]
  %arrayidx3.i.10.pre-phi = phi i8* [ %.pre51, %entry.Hashing_crit_edge ], [ %arrayidx9.10, %middle.block ]
  %arrayidx3.i.9.pre-phi = phi i8* [ %.pre50, %entry.Hashing_crit_edge ], [ %arrayidx9.9, %middle.block ]
  %arrayidx3.i.8.pre-phi = phi i8* [ %.pre49, %entry.Hashing_crit_edge ], [ %arrayidx9.8, %middle.block ]
  %arrayidx3.i.7.pre-phi = phi i8* [ %.pre48, %entry.Hashing_crit_edge ], [ %arrayidx9.7, %middle.block ]
  %arrayidx3.i.6.pre-phi = phi i8* [ %.pre47, %entry.Hashing_crit_edge ], [ %arrayidx9.6, %middle.block ]
  %arrayidx3.i.5.pre-phi = phi i8* [ %.pre46, %entry.Hashing_crit_edge ], [ %arrayidx9.5, %middle.block ]
  %arrayidx3.i.4.pre-phi = phi i8* [ %.pre45, %entry.Hashing_crit_edge ], [ %arrayidx9.4, %middle.block ]
  %arrayidx3.i.3.pre-phi = phi i8* [ %.pre44, %entry.Hashing_crit_edge ], [ %arrayidx9.3, %middle.block ]
  %arrayidx3.i.2.pre-phi = phi i8* [ %.pre43, %entry.Hashing_crit_edge ], [ %arrayidx9.2, %middle.block ]
  %arrayidx3.i.1.pre-phi = phi i8* [ %.pre, %entry.Hashing_crit_edge ], [ %arrayidx9.1, %middle.block ]
  %selector.0 = phi i8 [ -1, %entry.Hashing_crit_edge ], [ %phitmp18.i, %middle.block ]
  %89 = load i8, i8* %sk, align 1, !tbaa !7
  %90 = load i8, i8* %4, align 16, !tbaa !7
  %xor16.i = xor i8 %90, %89
  %and18.i = and i8 %xor16.i, %selector.0
  %xor819.i = xor i8 %and18.i, %90
  store i8 %xor819.i, i8* %4, align 16, !tbaa !7
  %arrayidx.i37.1 = getelementptr inbounds i8, i8* %sk, i64 1
  %91 = load i8, i8* %arrayidx.i37.1, align 1, !tbaa !7
  %92 = load i8, i8* %arrayidx3.i.1.pre-phi, align 1, !tbaa !7
  %xor16.i.1 = xor i8 %92, %91
  %and18.i.1 = and i8 %xor16.i.1, %selector.0
  %xor819.i.1 = xor i8 %and18.i.1, %92
  store i8 %xor819.i.1, i8* %arrayidx3.i.1.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.2 = getelementptr inbounds i8, i8* %sk, i64 2
  %93 = load i8, i8* %arrayidx.i37.2, align 1, !tbaa !7
  %94 = load i8, i8* %arrayidx3.i.2.pre-phi, align 1, !tbaa !7
  %xor16.i.2 = xor i8 %94, %93
  %and18.i.2 = and i8 %xor16.i.2, %selector.0
  %xor819.i.2 = xor i8 %and18.i.2, %94
  store i8 %xor819.i.2, i8* %arrayidx3.i.2.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.3 = getelementptr inbounds i8, i8* %sk, i64 3
  %95 = load i8, i8* %arrayidx.i37.3, align 1, !tbaa !7
  %96 = load i8, i8* %arrayidx3.i.3.pre-phi, align 1, !tbaa !7
  %xor16.i.3 = xor i8 %96, %95
  %and18.i.3 = and i8 %xor16.i.3, %selector.0
  %xor819.i.3 = xor i8 %and18.i.3, %96
  store i8 %xor819.i.3, i8* %arrayidx3.i.3.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.4 = getelementptr inbounds i8, i8* %sk, i64 4
  %97 = load i8, i8* %arrayidx.i37.4, align 1, !tbaa !7
  %98 = load i8, i8* %arrayidx3.i.4.pre-phi, align 1, !tbaa !7
  %xor16.i.4 = xor i8 %98, %97
  %and18.i.4 = and i8 %xor16.i.4, %selector.0
  %xor819.i.4 = xor i8 %and18.i.4, %98
  store i8 %xor819.i.4, i8* %arrayidx3.i.4.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.5 = getelementptr inbounds i8, i8* %sk, i64 5
  %99 = load i8, i8* %arrayidx.i37.5, align 1, !tbaa !7
  %100 = load i8, i8* %arrayidx3.i.5.pre-phi, align 1, !tbaa !7
  %xor16.i.5 = xor i8 %100, %99
  %and18.i.5 = and i8 %xor16.i.5, %selector.0
  %xor819.i.5 = xor i8 %and18.i.5, %100
  store i8 %xor819.i.5, i8* %arrayidx3.i.5.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.6 = getelementptr inbounds i8, i8* %sk, i64 6
  %101 = load i8, i8* %arrayidx.i37.6, align 1, !tbaa !7
  %102 = load i8, i8* %arrayidx3.i.6.pre-phi, align 1, !tbaa !7
  %xor16.i.6 = xor i8 %102, %101
  %and18.i.6 = and i8 %xor16.i.6, %selector.0
  %xor819.i.6 = xor i8 %and18.i.6, %102
  store i8 %xor819.i.6, i8* %arrayidx3.i.6.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.7 = getelementptr inbounds i8, i8* %sk, i64 7
  %103 = load i8, i8* %arrayidx.i37.7, align 1, !tbaa !7
  %104 = load i8, i8* %arrayidx3.i.7.pre-phi, align 1, !tbaa !7
  %xor16.i.7 = xor i8 %104, %103
  %and18.i.7 = and i8 %xor16.i.7, %selector.0
  %xor819.i.7 = xor i8 %and18.i.7, %104
  store i8 %xor819.i.7, i8* %arrayidx3.i.7.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.8 = getelementptr inbounds i8, i8* %sk, i64 8
  %105 = load i8, i8* %arrayidx.i37.8, align 1, !tbaa !7
  %106 = load i8, i8* %arrayidx3.i.8.pre-phi, align 1, !tbaa !7
  %xor16.i.8 = xor i8 %106, %105
  %and18.i.8 = and i8 %xor16.i.8, %selector.0
  %xor819.i.8 = xor i8 %and18.i.8, %106
  store i8 %xor819.i.8, i8* %arrayidx3.i.8.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.9 = getelementptr inbounds i8, i8* %sk, i64 9
  %107 = load i8, i8* %arrayidx.i37.9, align 1, !tbaa !7
  %108 = load i8, i8* %arrayidx3.i.9.pre-phi, align 1, !tbaa !7
  %xor16.i.9 = xor i8 %108, %107
  %and18.i.9 = and i8 %xor16.i.9, %selector.0
  %xor819.i.9 = xor i8 %and18.i.9, %108
  store i8 %xor819.i.9, i8* %arrayidx3.i.9.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.10 = getelementptr inbounds i8, i8* %sk, i64 10
  %109 = load i8, i8* %arrayidx.i37.10, align 1, !tbaa !7
  %110 = load i8, i8* %arrayidx3.i.10.pre-phi, align 1, !tbaa !7
  %xor16.i.10 = xor i8 %110, %109
  %and18.i.10 = and i8 %xor16.i.10, %selector.0
  %xor819.i.10 = xor i8 %and18.i.10, %110
  store i8 %xor819.i.10, i8* %arrayidx3.i.10.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.11 = getelementptr inbounds i8, i8* %sk, i64 11
  %111 = load i8, i8* %arrayidx.i37.11, align 1, !tbaa !7
  %112 = load i8, i8* %arrayidx3.i.11.pre-phi, align 1, !tbaa !7
  %xor16.i.11 = xor i8 %112, %111
  %and18.i.11 = and i8 %xor16.i.11, %selector.0
  %xor819.i.11 = xor i8 %and18.i.11, %112
  store i8 %xor819.i.11, i8* %arrayidx3.i.11.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.12 = getelementptr inbounds i8, i8* %sk, i64 12
  %113 = load i8, i8* %arrayidx.i37.12, align 1, !tbaa !7
  %114 = load i8, i8* %arrayidx3.i.12.pre-phi, align 1, !tbaa !7
  %xor16.i.12 = xor i8 %114, %113
  %and18.i.12 = and i8 %xor16.i.12, %selector.0
  %xor819.i.12 = xor i8 %and18.i.12, %114
  store i8 %xor819.i.12, i8* %arrayidx3.i.12.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.13 = getelementptr inbounds i8, i8* %sk, i64 13
  %115 = load i8, i8* %arrayidx.i37.13, align 1, !tbaa !7
  %116 = load i8, i8* %arrayidx3.i.13.pre-phi, align 1, !tbaa !7
  %xor16.i.13 = xor i8 %116, %115
  %and18.i.13 = and i8 %xor16.i.13, %selector.0
  %xor819.i.13 = xor i8 %and18.i.13, %116
  store i8 %xor819.i.13, i8* %arrayidx3.i.13.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.14 = getelementptr inbounds i8, i8* %sk, i64 14
  %117 = load i8, i8* %arrayidx.i37.14, align 1, !tbaa !7
  %118 = load i8, i8* %arrayidx3.i.14.pre-phi, align 1, !tbaa !7
  %xor16.i.14 = xor i8 %118, %117
  %and18.i.14 = and i8 %xor16.i.14, %selector.0
  %xor819.i.14 = xor i8 %and18.i.14, %118
  store i8 %xor819.i.14, i8* %arrayidx3.i.14.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.15 = getelementptr inbounds i8, i8* %sk, i64 15
  %119 = load i8, i8* %arrayidx.i37.15, align 1, !tbaa !7
  %120 = load i8, i8* %arrayidx3.i.15.pre-phi, align 1, !tbaa !7
  %xor16.i.15 = xor i8 %120, %119
  %and18.i.15 = and i8 %xor16.i.15, %selector.0
  %xor819.i.15 = xor i8 %and18.i.15, %120
  store i8 %xor819.i.15, i8* %arrayidx3.i.15.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.16 = getelementptr inbounds i8, i8* %sk, i64 16
  %121 = load i8, i8* %arrayidx.i37.16, align 1, !tbaa !7
  %122 = load i8, i8* %arrayidx3.i.16.pre-phi, align 1, !tbaa !7
  %xor16.i.16 = xor i8 %122, %121
  %and18.i.16 = and i8 %xor16.i.16, %selector.0
  %xor819.i.16 = xor i8 %and18.i.16, %122
  store i8 %xor819.i.16, i8* %arrayidx3.i.16.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.17 = getelementptr inbounds i8, i8* %sk, i64 17
  %123 = load i8, i8* %arrayidx.i37.17, align 1, !tbaa !7
  %124 = load i8, i8* %arrayidx3.i.17.pre-phi, align 1, !tbaa !7
  %xor16.i.17 = xor i8 %124, %123
  %and18.i.17 = and i8 %xor16.i.17, %selector.0
  %xor819.i.17 = xor i8 %and18.i.17, %124
  store i8 %xor819.i.17, i8* %arrayidx3.i.17.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.18 = getelementptr inbounds i8, i8* %sk, i64 18
  %125 = load i8, i8* %arrayidx.i37.18, align 1, !tbaa !7
  %126 = load i8, i8* %arrayidx3.i.18.pre-phi, align 1, !tbaa !7
  %xor16.i.18 = xor i8 %126, %125
  %and18.i.18 = and i8 %xor16.i.18, %selector.0
  %xor819.i.18 = xor i8 %and18.i.18, %126
  store i8 %xor819.i.18, i8* %arrayidx3.i.18.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.19 = getelementptr inbounds i8, i8* %sk, i64 19
  %127 = load i8, i8* %arrayidx.i37.19, align 1, !tbaa !7
  %128 = load i8, i8* %arrayidx3.i.19.pre-phi, align 1, !tbaa !7
  %xor16.i.19 = xor i8 %128, %127
  %and18.i.19 = and i8 %xor16.i.19, %selector.0
  %xor819.i.19 = xor i8 %and18.i.19, %128
  store i8 %xor819.i.19, i8* %arrayidx3.i.19.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.20 = getelementptr inbounds i8, i8* %sk, i64 20
  %129 = load i8, i8* %arrayidx.i37.20, align 1, !tbaa !7
  %130 = load i8, i8* %arrayidx3.i.20.pre-phi, align 1, !tbaa !7
  %xor16.i.20 = xor i8 %130, %129
  %and18.i.20 = and i8 %xor16.i.20, %selector.0
  %xor819.i.20 = xor i8 %and18.i.20, %130
  store i8 %xor819.i.20, i8* %arrayidx3.i.20.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.21 = getelementptr inbounds i8, i8* %sk, i64 21
  %131 = load i8, i8* %arrayidx.i37.21, align 1, !tbaa !7
  %132 = load i8, i8* %arrayidx3.i.21.pre-phi, align 1, !tbaa !7
  %xor16.i.21 = xor i8 %132, %131
  %and18.i.21 = and i8 %xor16.i.21, %selector.0
  %xor819.i.21 = xor i8 %and18.i.21, %132
  store i8 %xor819.i.21, i8* %arrayidx3.i.21.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.22 = getelementptr inbounds i8, i8* %sk, i64 22
  %133 = load i8, i8* %arrayidx.i37.22, align 1, !tbaa !7
  %134 = load i8, i8* %arrayidx3.i.22.pre-phi, align 1, !tbaa !7
  %xor16.i.22 = xor i8 %134, %133
  %and18.i.22 = and i8 %xor16.i.22, %selector.0
  %xor819.i.22 = xor i8 %and18.i.22, %134
  store i8 %xor819.i.22, i8* %arrayidx3.i.22.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.23 = getelementptr inbounds i8, i8* %sk, i64 23
  %135 = load i8, i8* %arrayidx.i37.23, align 1, !tbaa !7
  %136 = load i8, i8* %arrayidx3.i.23.pre-phi, align 1, !tbaa !7
  %xor16.i.23 = xor i8 %136, %135
  %and18.i.23 = and i8 %xor16.i.23, %selector.0
  %xor819.i.23 = xor i8 %and18.i.23, %136
  store i8 %xor819.i.23, i8* %arrayidx3.i.23.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.24 = getelementptr inbounds i8, i8* %sk, i64 24
  %137 = load i8, i8* %arrayidx.i37.24, align 1, !tbaa !7
  %138 = load i8, i8* %arrayidx3.i.24.pre-phi, align 1, !tbaa !7
  %xor16.i.24 = xor i8 %138, %137
  %and18.i.24 = and i8 %xor16.i.24, %selector.0
  %xor819.i.24 = xor i8 %and18.i.24, %138
  store i8 %xor819.i.24, i8* %arrayidx3.i.24.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.25 = getelementptr inbounds i8, i8* %sk, i64 25
  %139 = load i8, i8* %arrayidx.i37.25, align 1, !tbaa !7
  %140 = load i8, i8* %arrayidx3.i.25.pre-phi, align 1, !tbaa !7
  %xor16.i.25 = xor i8 %140, %139
  %and18.i.25 = and i8 %xor16.i.25, %selector.0
  %xor819.i.25 = xor i8 %and18.i.25, %140
  store i8 %xor819.i.25, i8* %arrayidx3.i.25.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.26 = getelementptr inbounds i8, i8* %sk, i64 26
  %141 = load i8, i8* %arrayidx.i37.26, align 1, !tbaa !7
  %142 = load i8, i8* %arrayidx3.i.26.pre-phi, align 1, !tbaa !7
  %xor16.i.26 = xor i8 %142, %141
  %and18.i.26 = and i8 %xor16.i.26, %selector.0
  %xor819.i.26 = xor i8 %and18.i.26, %142
  store i8 %xor819.i.26, i8* %arrayidx3.i.26.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.27 = getelementptr inbounds i8, i8* %sk, i64 27
  %143 = load i8, i8* %arrayidx.i37.27, align 1, !tbaa !7
  %144 = load i8, i8* %arrayidx3.i.27.pre-phi, align 1, !tbaa !7
  %xor16.i.27 = xor i8 %144, %143
  %and18.i.27 = and i8 %xor16.i.27, %selector.0
  %xor819.i.27 = xor i8 %and18.i.27, %144
  store i8 %xor819.i.27, i8* %arrayidx3.i.27.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.28 = getelementptr inbounds i8, i8* %sk, i64 28
  %145 = load i8, i8* %arrayidx.i37.28, align 1, !tbaa !7
  %146 = load i8, i8* %arrayidx3.i.28.pre-phi, align 1, !tbaa !7
  %xor16.i.28 = xor i8 %146, %145
  %and18.i.28 = and i8 %xor16.i.28, %selector.0
  %xor819.i.28 = xor i8 %and18.i.28, %146
  store i8 %xor819.i.28, i8* %arrayidx3.i.28.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.29 = getelementptr inbounds i8, i8* %sk, i64 29
  %147 = load i8, i8* %arrayidx.i37.29, align 1, !tbaa !7
  %148 = load i8, i8* %arrayidx3.i.29.pre-phi, align 1, !tbaa !7
  %xor16.i.29 = xor i8 %148, %147
  %and18.i.29 = and i8 %xor16.i.29, %selector.0
  %xor819.i.29 = xor i8 %and18.i.29, %148
  store i8 %xor819.i.29, i8* %arrayidx3.i.29.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.30 = getelementptr inbounds i8, i8* %sk, i64 30
  %149 = load i8, i8* %arrayidx.i37.30, align 1, !tbaa !7
  %150 = load i8, i8* %arrayidx3.i.30.pre-phi, align 1, !tbaa !7
  %xor16.i.30 = xor i8 %150, %149
  %and18.i.30 = and i8 %xor16.i.30, %selector.0
  %xor819.i.30 = xor i8 %and18.i.30, %150
  store i8 %xor819.i.30, i8* %arrayidx3.i.30.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.31 = getelementptr inbounds i8, i8* %sk, i64 31
  %151 = load i8, i8* %arrayidx.i37.31, align 1, !tbaa !7
  %152 = load i8, i8* %arrayidx3.i.31.pre-phi, align 1, !tbaa !7
  %xor16.i.31 = xor i8 %152, %151
  %and18.i.31 = and i8 %xor16.i.31, %selector.0
  %xor819.i.31 = xor i8 %and18.i.31, %152
  store i8 %xor819.i.31, i8* %arrayidx3.i.31.pre-phi, align 1, !tbaa !7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %arrayidx23.pre-phi, i8* align 1 %ct, i64 596, i1 false)
  call void @shake256(i8* %ss, i64 32, i8* nonnull %4, i64 628) #10
  call void @llvm.lifetime.end.p0i8(i64 628, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 564, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 188, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 47, i8* nonnull %0) #10
  ret i32 0

vector.body.1:                                    ; preds = %vector.body
  %153 = getelementptr inbounds [564 x i8], [564 x i8]* %c0_, i64 0, i64 %index.next
  %154 = bitcast i8* %153 to <8 x i8>*
  %wide.load.1 = load <8 x i8>, <8 x i8>* %154, align 16, !tbaa !7
  %155 = getelementptr inbounds i8, i8* %153, i64 8
  %156 = bitcast i8* %155 to <8 x i8>*
  %wide.load80.1 = load <8 x i8>, <8 x i8>* %156, align 8, !tbaa !7
  %157 = getelementptr inbounds i8, i8* %153, i64 16
  %158 = bitcast i8* %157 to <8 x i8>*
  %wide.load81.1 = load <8 x i8>, <8 x i8>* %158, align 16, !tbaa !7
  %159 = getelementptr inbounds i8, i8* %153, i64 24
  %160 = bitcast i8* %159 to <8 x i8>*
  %wide.load82.1 = load <8 x i8>, <8 x i8>* %160, align 8, !tbaa !7
  %161 = getelementptr inbounds i8, i8* %ct, i64 %index.next
  %162 = bitcast i8* %161 to <8 x i8>*
  %wide.load83.1 = load <8 x i8>, <8 x i8>* %162, align 1, !tbaa !7
  %163 = getelementptr inbounds i8, i8* %161, i64 8
  %164 = bitcast i8* %163 to <8 x i8>*
  %wide.load84.1 = load <8 x i8>, <8 x i8>* %164, align 1, !tbaa !7
  %165 = getelementptr inbounds i8, i8* %161, i64 16
  %166 = bitcast i8* %165 to <8 x i8>*
  %wide.load85.1 = load <8 x i8>, <8 x i8>* %166, align 1, !tbaa !7
  %167 = getelementptr inbounds i8, i8* %161, i64 24
  %168 = bitcast i8* %167 to <8 x i8>*
  %wide.load86.1 = load <8 x i8>, <8 x i8>* %168, align 1, !tbaa !7
  %169 = xor <8 x i8> %wide.load83.1, %wide.load.1
  %170 = xor <8 x i8> %wide.load84.1, %wide.load80.1
  %171 = xor <8 x i8> %wide.load85.1, %wide.load81.1
  %172 = xor <8 x i8> %wide.load86.1, %wide.load82.1
  %173 = zext <8 x i8> %169 to <8 x i32>
  %174 = zext <8 x i8> %170 to <8 x i32>
  %175 = zext <8 x i8> %171 to <8 x i32>
  %176 = zext <8 x i8> %172 to <8 x i32>
  %177 = or <8 x i32> %43, %173
  %178 = or <8 x i32> %44, %174
  %179 = or <8 x i32> %45, %175
  %180 = or <8 x i32> %46, %176
  %index.next.1 = add nuw nsw i64 %index, 64
  br label %vector.body
}

declare void @mp_sub751_p2(i64*, i64*, i64*) local_unnamed_addr #5

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

attributes #0 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-fma4,-gfni,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-prfchw,-ptwrite,-rdpid,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { norecurse nounwind readonly ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-fma4,-gfni,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-prfchw,-ptwrite,-rdpid,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-fma4,-gfni,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-prfchw,-ptwrite,-rdpid,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-fma4,-gfni,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-prfchw,-ptwrite,-rdpid,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-fma4,-gfni,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-prfchw,-ptwrite,-rdpid,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-fma4,-gfni,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-prfchw,-ptwrite,-rdpid,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-fma4,-gfni,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-prfchw,-ptwrite,-rdpid,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-fma4,-gfni,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-prfchw,-ptwrite,-rdpid,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone speculatable }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"long long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = distinct !{!10, !11, !9}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!15}
!15 = distinct !{!15, !16}
!16 = distinct !{!16, !"LVerDomain"}
!17 = !{!18}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = !{!22}
!22 = distinct !{!22, !23}
!23 = distinct !{!23, !"LVerDomain"}
!24 = !{!25}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !13}
!31 = !{!32}
!32 = distinct !{!32, !33}
!33 = distinct !{!33, !"LVerDomain"}
!34 = !{!35}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !13}
!41 = distinct !{!41, !9}
!42 = distinct !{!42, !9}
!43 = !{!44}
!44 = distinct !{!44, !45}
!45 = distinct !{!45, !"LVerDomain"}
!46 = !{!47}
!47 = distinct !{!47, !45}
!48 = distinct !{!48, !9}
!49 = distinct !{!49, !13}
!50 = distinct !{!50, !9}
!51 = distinct !{!51, !13}
!52 = !{!53}
!53 = distinct !{!53, !54}
!54 = distinct !{!54, !"LVerDomain"}
!55 = !{!56}
!56 = distinct !{!56, !54}
!57 = distinct !{!57, !9}
!58 = distinct !{!58, !9}
!59 = !{!60, !60, i64 0}
!60 = !{!"int", !5, i64 0}
!61 = distinct !{!61, !9}

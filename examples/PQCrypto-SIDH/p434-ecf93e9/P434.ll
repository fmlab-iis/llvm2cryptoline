; ModuleID = 'src/P434/P434.c'
source_filename = "src/P434/P434.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.point_proj = type { [2 x [7 x i64]], [2 x [7 x i64]] }

@p434 = local_unnamed_addr constant [7 x i64] [i64 -1, i64 -1, i64 -1, i64 -161717841442111489, i64 8918917783347572387, i64 7853257225132122198, i64 620258357900100], align 16
@p434x2 = local_unnamed_addr constant [7 x i64] [i64 -2, i64 -1, i64 -1, i64 -323435682884222977, i64 -608908507014406841, i64 -2740229623445307220, i64 1240516715800200], align 16
@p434x4 = local_unnamed_addr constant [7 x i64] [i64 -4, i64 -1, i64 -1, i64 -646871365768445953, i64 -1217817014028813681, i64 -5480459246890614439, i64 2481033431600401], align 16
@p434x8 = local_unnamed_addr constant [7 x i64] [i64 -8, i64 -1, i64 -1, i64 -1293742731536891905, i64 -2435634028057627361, i64 7485825579928322739, i64 4962066863200803], align 16
@p434p1 = local_unnamed_addr constant [7 x i64] [i64 0, i64 0, i64 0, i64 -161717841442111488, i64 8918917783347572387, i64 7853257225132122198, i64 620258357900100], align 16
@Alice_order = local_unnamed_addr constant [4 x i64] [i64 0, i64 0, i64 0, i64 16777216], align 16
@Bob_order = local_unnamed_addr constant [4 x i64] [i64 6390225231553133283, i64 -4242295759374092239, i64 1689769520075363969, i64 36970279], align 16
@A_gen = local_unnamed_addr constant [42 x i64] [i64 409251790387889599, i64 -7956914563081327573, i64 -5772233213491609001, i64 8135632727773423537, i64 -605746078158370611, i64 2414452085739184671, i64 11115521240260, i64 8395851790856910728, i64 2986355008512957707, i64 -3794508369610992171, i64 -8297630390065234006, i64 -6344405898491969121, i64 -2994353266636644724, i64 281073067659850, i64 -88129956366309573, i64 -3267881773463506490, i64 -507342119971546937, i64 -2145611229349799165, i64 1973682341831588061, i64 8312799048378913301, i64 497853136119926, i64 -5930968907585159722, i64 7710088909771808848, i64 7498146198864584751, i64 2174778336782639988, i64 -2099344739079935595, i64 -6420807801124297464, i64 438485524985150, i64 124497379906645117, i64 3220114552465917457, i64 2709773247140401691, i64 6980995868580086445, i64 4225536559282510125, i64 4701685901084574963, i64 609687130428995, i64 -5139244406301072054, i64 -1180825250703942163, i64 6350294504100107936, i64 8618087912213766372, i64 308885086986017528, i64 -2653863745610111006, i64 202858940514502], align 16
@B_gen = local_unnamed_addr constant [42 x i64] [i64 7950145635403778211, i64 3053921039650069509, i64 -1472232571310339971, i64 6369396808518798415, i64 -5151006957371847381, i64 2507423554624419257, i64 491294718579999, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 -368551928616227954, i64 5280595860558773788, i64 -1217497873284611460, i64 5300724274592529762, i64 -5761561158429016438, i64 -850473803693194369, i64 57208989669550, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 2898969037767559396, i64 -7923814947979270585, i64 9073321008578907802, i64 7539793830764276893, i64 -9117835332022963109, i64 148738643701593348, i64 139132528504375, i64 -5514455700498887503, i64 7856701733796155952, i64 -1449781872342195351, i64 3113577795642755667, i64 4926779461749210259, i64 -4685648887271738037, i64 408994988652499], align 16
@Montgomery_R2 = constant [7 x i64] [i64 2946862024238734128, i64 -5986282916474808126, i64 -6113751670094468979, i64 1683438818023996427, i64 -6067031773192244098, i64 7629496211932212634, i64 41406098690346], align 16
@Montgomery_one = local_unnamed_addr constant [7 x i64] [i64 29740, i64 0, i64 0, i64 -5111598749797318656, i64 -2881840887160132396, i64 -1643158192681172724, i64 260509760564954], align 16
@strat_Alice = local_unnamed_addr constant [107 x i32] [i32 48, i32 28, i32 16, i32 8, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 8, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 13, i32 7, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 3, i32 2, i32 1, i32 1, i32 1, i32 1, i32 5, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 1, i32 21, i32 12, i32 7, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 3, i32 2, i32 1, i32 1, i32 1, i32 1, i32 5, i32 3, i32 2, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 1, i32 9, i32 5, i32 3, i32 2, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1], align 16
@strat_Bob = local_unnamed_addr constant [136 x i32] [i32 66, i32 33, i32 17, i32 9, i32 5, i32 3, i32 2, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 8, i32 4, i32 2, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 16, i32 8, i32 4, i32 2, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 8, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 32, i32 16, i32 8, i32 4, i32 3, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 8, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 16, i32 8, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 8, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1], align 16

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
define void @fpcopy434(i64* nocapture readonly %a, i64* nocapture %c) local_unnamed_addr #3 {
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
  ret void
}

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define void @fpzero434(i64* nocapture %a) local_unnamed_addr #3 {
entry:
  %a5 = bitcast i64* %a to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %a5, i8 0, i64 56, i1 false)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @to_mont(i64* %a, i64* %mc) local_unnamed_addr #4 {
entry:
  %temp.i = alloca [14 x i64], align 16
  %0 = bitcast [14 x i64]* %temp.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 112, i1 false) #10
  %arraydecay.i = getelementptr inbounds [14 x i64], [14 x i64]* %temp.i, i64 0, i64 0
  call void @mp_mul(i64* %a, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* %mc) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @fpmul434_mont(i64* %ma, i64* %mb, i64* %mc) local_unnamed_addr #4 {
entry:
  %temp = alloca [14 x i64], align 16
  %0 = bitcast [14 x i64]* %temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 112, i1 false)
  %arraydecay = getelementptr inbounds [14 x i64], [14 x i64]* %temp, i64 0, i64 0
  call void @mp_mul(i64* %ma, i64* %mb, i64* nonnull %arraydecay, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay, i64* %mc) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @from_mont(i64* %ma, i64* %c) local_unnamed_addr #4 {
entry:
  %temp.i = alloca [14 x i64], align 16
  %one = alloca [7 x i64], align 16
  %0 = bitcast [7 x i64]* %one to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 56, i1 false)
  %arrayidx = getelementptr inbounds [7 x i64], [7 x i64]* %one, i64 0, i64 0
  store i64 1, i64* %arrayidx, align 16, !tbaa !3
  %1 = bitcast [14 x i64]* %temp.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 112, i1 false) #10
  %arraydecay.i = getelementptr inbounds [14 x i64], [14 x i64]* %temp.i, i64 0, i64 0
  call void @mp_mul(i64* %ma, i64* nonnull %arrayidx, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* %c) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %1) #10
  call void @fpcorrection434(i64* %c) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #10
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

declare void @fpcorrection434(i64*) local_unnamed_addr #5

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
define void @fpsqr434_mont(i64* %ma, i64* %mc) local_unnamed_addr #4 {
entry:
  %temp = alloca [14 x i64], align 16
  %0 = bitcast [14 x i64]* %temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 112, i1 false)
  %arraydecay = getelementptr inbounds [14 x i64], [14 x i64]* %temp, i64 0, i64 0
  call void @mp_mul(i64* %ma, i64* %ma, i64* nonnull %arraydecay, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay, i64* %mc) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @fpinv434_mont(i64* %a) local_unnamed_addr #4 {
entry:
  %temp.i = alloca [14 x i64], align 16
  %tt = alloca [7 x i64], align 16
  %0 = bitcast [7 x i64]* %tt to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #10
  %arraydecay = getelementptr inbounds [7 x i64], [7 x i64]* %tt, i64 0, i64 0
  %1 = bitcast i64* %a to <4 x i64>*
  %2 = load <4 x i64>, <4 x i64>* %1, align 8, !tbaa !3
  %3 = bitcast [7 x i64]* %tt to <4 x i64>*
  store <4 x i64> %2, <4 x i64>* %3, align 16, !tbaa !3
  %arrayidx.4.i = getelementptr inbounds i64, i64* %a, i64 4
  %4 = load i64, i64* %arrayidx.4.i, align 8, !tbaa !3
  %arrayidx2.4.i = getelementptr inbounds [7 x i64], [7 x i64]* %tt, i64 0, i64 4
  store i64 %4, i64* %arrayidx2.4.i, align 16, !tbaa !3
  %arrayidx.5.i = getelementptr inbounds i64, i64* %a, i64 5
  %5 = load i64, i64* %arrayidx.5.i, align 8, !tbaa !3
  %arrayidx2.5.i = getelementptr inbounds [7 x i64], [7 x i64]* %tt, i64 0, i64 5
  store i64 %5, i64* %arrayidx2.5.i, align 8, !tbaa !3
  %arrayidx.6.i = getelementptr inbounds i64, i64* %a, i64 6
  %6 = load i64, i64* %arrayidx.6.i, align 8, !tbaa !3
  %arrayidx2.6.i = getelementptr inbounds [7 x i64], [7 x i64]* %tt, i64 0, i64 6
  store i64 %6, i64* %arrayidx2.6.i, align 16, !tbaa !3
  call void @fpinv434_chain_mont(i64* nonnull %arraydecay)
  %7 = bitcast [14 x i64]* %temp.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %7) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %7, i8 0, i64 112, i1 false) #10
  %arraydecay.i10 = getelementptr inbounds [14 x i64], [14 x i64]* %temp.i, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i10, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i10, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %7) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %7) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %7, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i10, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i10, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %7) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %7) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %7, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* %a, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i10, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i10, i64* %a) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @fpinv434_chain_mont(i64* %a) local_unnamed_addr #4 {
entry:
  %temp.i = alloca [14 x i64], align 16
  %t = alloca [31 x [7 x i64]], align 16
  %tt = alloca [7 x i64], align 16
  %0 = bitcast [31 x [7 x i64]]* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 1736, i8* nonnull %0) #10
  %1 = bitcast [7 x i64]* %tt to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1) #10
  %arraydecay = getelementptr inbounds [7 x i64], [7 x i64]* %tt, i64 0, i64 0
  %2 = bitcast [14 x i64]* %temp.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  %arraydecay.i = getelementptr inbounds [14 x i64], [14 x i64]* %temp.i, i64 0, i64 0
  call void @mp_mul(i64* %a, i64* %a, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  %arraydecay2 = getelementptr inbounds [31 x [7 x i64]], [31 x [7 x i64]]* %t, i64 0, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* %a, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay2) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arraydecay4 = getelementptr inbounds [31 x [7 x i64]], [31 x [7 x i64]]* %t, i64 0, i64 %indvars.iv, i64 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arraydecay8 = getelementptr inbounds [31 x [7 x i64]], [31 x [7 x i64]]* %t, i64 0, i64 %indvars.iv.next, i64 0
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay4, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay8) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  %exitcond682 = icmp eq i64 %indvars.iv.next, 30
  br i1 %exitcond682, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %3 = bitcast i64* %a to <4 x i64>*
  %4 = load <4 x i64>, <4 x i64>* %3, align 8, !tbaa !3
  %5 = bitcast [7 x i64]* %tt to <4 x i64>*
  store <4 x i64> %4, <4 x i64>* %5, align 16, !tbaa !3
  %arrayidx.4.i = getelementptr inbounds i64, i64* %a, i64 4
  %6 = load i64, i64* %arrayidx.4.i, align 8, !tbaa !3
  %arrayidx2.4.i = getelementptr inbounds [7 x i64], [7 x i64]* %tt, i64 0, i64 4
  store i64 %6, i64* %arrayidx2.4.i, align 16, !tbaa !3
  %arrayidx.5.i = getelementptr inbounds i64, i64* %a, i64 5
  %7 = load i64, i64* %arrayidx.5.i, align 8, !tbaa !3
  %arrayidx2.5.i = getelementptr inbounds [7 x i64], [7 x i64]* %tt, i64 0, i64 5
  store i64 %7, i64* %arrayidx2.5.i, align 8, !tbaa !3
  %arrayidx.6.i = getelementptr inbounds i64, i64* %a, i64 6
  %8 = load i64, i64* %arrayidx.6.i, align 8, !tbaa !3
  %arrayidx2.6.i = getelementptr inbounds [7 x i64], [7 x i64]* %tt, i64 0, i64 6
  store i64 %8, i64* %arrayidx2.6.i, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  %arraydecay19 = getelementptr inbounds [31 x [7 x i64]], [31 x [7 x i64]]* %t, i64 0, i64 5, i64 0
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay19, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  %arraydecay31 = getelementptr inbounds [31 x [7 x i64]], [31 x [7 x i64]]* %t, i64 0, i64 14, i64 0
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay31, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  %arraydecay43 = getelementptr inbounds [31 x [7 x i64]], [31 x [7 x i64]]* %t, i64 0, i64 3, i64 0
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay43, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  %arraydecay55 = getelementptr inbounds [31 x [7 x i64]], [31 x [7 x i64]]* %t, i64 0, i64 23, i64 0
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay55, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  %arraydecay67 = getelementptr inbounds [31 x [7 x i64]], [31 x [7 x i64]]* %t, i64 0, i64 13, i64 0
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay67, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  %arraydecay79 = getelementptr inbounds [31 x [7 x i64]], [31 x [7 x i64]]* %t, i64 0, i64 24, i64 0
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay79, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  %arraydecay91 = getelementptr inbounds [31 x [7 x i64]], [31 x [7 x i64]]* %t, i64 0, i64 7, i64 0
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay91, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  %arraydecay103 = getelementptr inbounds [31 x [7 x i64]], [31 x [7 x i64]]* %t, i64 0, i64 12, i64 0
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay103, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  %arraydecay115 = getelementptr inbounds [31 x [7 x i64]], [31 x [7 x i64]]* %t, i64 0, i64 30, i64 0
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay115, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  %arraydecay127 = getelementptr inbounds [31 x [7 x i64]], [31 x [7 x i64]]* %t, i64 0, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay127, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay115, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  %arraydecay151 = getelementptr inbounds [31 x [7 x i64]], [31 x [7 x i64]]* %t, i64 0, i64 21, i64 0
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay151, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  %arraydecay163 = getelementptr inbounds [31 x [7 x i64]], [31 x [7 x i64]]* %t, i64 0, i64 2, i64 0
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay163, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  %arraydecay175 = getelementptr inbounds [31 x [7 x i64]], [31 x [7 x i64]]* %t, i64 0, i64 19, i64 0
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay175, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay127, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay79, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  %arraydecay211 = getelementptr inbounds [31 x [7 x i64]], [31 x [7 x i64]]* %t, i64 0, i64 26, i64 0
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay211, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  %arraydecay223 = getelementptr inbounds [31 x [7 x i64]], [31 x [7 x i64]]* %t, i64 0, i64 16, i64 0
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay223, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  %arraydecay235 = getelementptr inbounds [31 x [7 x i64]], [31 x [7 x i64]]* %t, i64 0, i64 10, i64 0
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay235, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  %arraydecay247 = getelementptr inbounds [31 x [7 x i64]], [31 x [7 x i64]]* %t, i64 0, i64 6, i64 0
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay247, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  %arraydecay271 = getelementptr inbounds [31 x [7 x i64]], [31 x [7 x i64]]* %t, i64 0, i64 20, i64 0
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay271, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  %arraydecay283 = getelementptr inbounds [31 x [7 x i64]], [31 x [7 x i64]]* %t, i64 0, i64 9, i64 0
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay283, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  %arraydecay295 = getelementptr inbounds [31 x [7 x i64]], [31 x [7 x i64]]* %t, i64 0, i64 25, i64 0
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay295, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay115, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay211, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* %a, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  %arraydecay341 = getelementptr inbounds [31 x [7 x i64]], [31 x [7 x i64]]* %t, i64 0, i64 28, i64 0
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay341, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay247, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay235, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  %arraydecay377 = getelementptr inbounds [31 x [7 x i64]], [31 x [7 x i64]]* %t, i64 0, i64 22, i64 0
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay377, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  br label %for.cond383.preheader

for.cond383.preheader:                            ; preds = %for.cond383.preheader, %for.end
  %j.0618 = phi i32 [ 0, %for.end ], [ %inc396, %for.cond383.preheader ]
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay115, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  %inc396 = add nuw nsw i32 %j.0618, 1
  %exitcond = icmp eq i32 %inc396, 35
  br i1 %exitcond, label %for.end397, label %for.cond383.preheader

for.end397:                                       ; preds = %for.cond383.preheader
  %9 = bitcast [7 x i64]* %tt to <4 x i64>*
  %10 = load <4 x i64>, <4 x i64>* %9, align 16, !tbaa !3
  %11 = bitcast i64* %a to <4 x i64>*
  store <4 x i64> %10, <4 x i64>* %11, align 8, !tbaa !3
  %12 = load i64, i64* %arrayidx2.4.i, align 16, !tbaa !3
  store i64 %12, i64* %arrayidx.4.i, align 8, !tbaa !3
  %13 = load i64, i64* %arrayidx2.5.i, align 8, !tbaa !3
  store i64 %13, i64* %arrayidx.5.i, align 8, !tbaa !3
  %14 = load i64, i64* %arrayidx2.6.i, align 16, !tbaa !3
  store i64 %14, i64* %arrayidx.6.i, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 1736, i8* nonnull %0) #10
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @fp2copy434([7 x i64]* nocapture readonly %a, [7 x i64]* nocapture %c) local_unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 0, i64 0
  %0 = load i64, i64* %arraydecay, align 8, !tbaa !3
  store i64 %0, i64* %arraydecay2, align 8, !tbaa !3
  %arrayidx.1.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 1
  %1 = load i64, i64* %arrayidx.1.i, align 8, !tbaa !3
  %arrayidx2.1.i = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 0, i64 1
  store i64 %1, i64* %arrayidx2.1.i, align 8, !tbaa !3
  %arrayidx.2.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 2
  %2 = load i64, i64* %arrayidx.2.i, align 8, !tbaa !3
  %arrayidx2.2.i = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 0, i64 2
  store i64 %2, i64* %arrayidx2.2.i, align 8, !tbaa !3
  %arrayidx.3.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 3
  %3 = load i64, i64* %arrayidx.3.i, align 8, !tbaa !3
  %arrayidx2.3.i = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 0, i64 3
  store i64 %3, i64* %arrayidx2.3.i, align 8, !tbaa !3
  %arrayidx.4.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 4
  %4 = load i64, i64* %arrayidx.4.i, align 8, !tbaa !3
  %arrayidx2.4.i = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 0, i64 4
  store i64 %4, i64* %arrayidx2.4.i, align 8, !tbaa !3
  %arrayidx.5.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 5
  %5 = load i64, i64* %arrayidx.5.i, align 8, !tbaa !3
  %arrayidx2.5.i = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 0, i64 5
  store i64 %5, i64* %arrayidx2.5.i, align 8, !tbaa !3
  %arrayidx.6.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 6
  %6 = load i64, i64* %arrayidx.6.i, align 8, !tbaa !3
  %arrayidx2.6.i = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 0, i64 6
  store i64 %6, i64* %arrayidx2.6.i, align 8, !tbaa !3
  %arraydecay4 = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 0
  %arraydecay6 = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 1, i64 0
  %7 = load i64, i64* %arraydecay4, align 8, !tbaa !3
  store i64 %7, i64* %arraydecay6, align 8, !tbaa !3
  %arrayidx.1.i9 = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 1
  %8 = load i64, i64* %arrayidx.1.i9, align 8, !tbaa !3
  %arrayidx2.1.i10 = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 1, i64 1
  store i64 %8, i64* %arrayidx2.1.i10, align 8, !tbaa !3
  %arrayidx.2.i11 = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 2
  %9 = load i64, i64* %arrayidx.2.i11, align 8, !tbaa !3
  %arrayidx2.2.i12 = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 1, i64 2
  store i64 %9, i64* %arrayidx2.2.i12, align 8, !tbaa !3
  %arrayidx.3.i13 = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 3
  %10 = load i64, i64* %arrayidx.3.i13, align 8, !tbaa !3
  %arrayidx2.3.i14 = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 1, i64 3
  store i64 %10, i64* %arrayidx2.3.i14, align 8, !tbaa !3
  %arrayidx.4.i15 = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 4
  %11 = load i64, i64* %arrayidx.4.i15, align 8, !tbaa !3
  %arrayidx2.4.i16 = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 1, i64 4
  store i64 %11, i64* %arrayidx2.4.i16, align 8, !tbaa !3
  %arrayidx.5.i17 = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 5
  %12 = load i64, i64* %arrayidx.5.i17, align 8, !tbaa !3
  %arrayidx2.5.i18 = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 1, i64 5
  store i64 %12, i64* %arrayidx2.5.i18, align 8, !tbaa !3
  %arrayidx.6.i19 = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 6
  %13 = load i64, i64* %arrayidx.6.i19, align 8, !tbaa !3
  %arrayidx2.6.i20 = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 1, i64 6
  store i64 %13, i64* %arrayidx2.6.i20, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @fp2zero434([7 x i64]* nocapture %a) local_unnamed_addr #4 {
entry:
  %0 = bitcast [7 x i64]* %a to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 112, i1 false)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @fp2neg434([7 x i64]* %a) local_unnamed_addr #4 {
entry:
  %arraydecay = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 0
  tail call void @fpneg434(i64* %arraydecay) #10
  %arraydecay2 = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 0
  tail call void @fpneg434(i64* nonnull %arraydecay2) #10
  ret void
}

declare void @fpneg434(i64*) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind ssp uwtable
define void @fp2add434([7 x i64]* %a, [7 x i64]* %b, [7 x i64]* %c) local_unnamed_addr #6 {
entry:
  %arraydecay = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 0, i64 0
  tail call void @fpadd434(i64* %arraydecay, i64* %arraydecay2, i64* %arraydecay4) #10
  %arraydecay6 = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 0
  %arraydecay8 = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 1, i64 0
  %arraydecay10 = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 1, i64 0
  tail call void @fpadd434(i64* nonnull %arraydecay6, i64* nonnull %arraydecay8, i64* nonnull %arraydecay10) #10
  ret void
}

declare void @fpadd434(i64*, i64*, i64*) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind ssp uwtable
define void @fp2sub434([7 x i64]* %a, [7 x i64]* %b, [7 x i64]* %c) local_unnamed_addr #6 {
entry:
  %arraydecay = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 0, i64 0
  tail call void @fpsub434(i64* %arraydecay, i64* %arraydecay2, i64* %arraydecay4) #10
  %arraydecay6 = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 0
  %arraydecay8 = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 1, i64 0
  %arraydecay10 = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 1, i64 0
  tail call void @fpsub434(i64* nonnull %arraydecay6, i64* nonnull %arraydecay8, i64* nonnull %arraydecay10) #10
  ret void
}

declare void @fpsub434(i64*, i64*, i64*) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define void @fp2div2_434([7 x i64]* %a, [7 x i64]* %c) local_unnamed_addr #4 {
entry:
  %arraydecay = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 0, i64 0
  tail call void @fpdiv2_434(i64* %arraydecay, i64* %arraydecay2) #10
  %arraydecay4 = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 0
  %arraydecay6 = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 1, i64 0
  tail call void @fpdiv2_434(i64* nonnull %arraydecay4, i64* nonnull %arraydecay6) #10
  ret void
}

declare void @fpdiv2_434(i64*, i64*) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define void @fp2correction434([7 x i64]* %a) local_unnamed_addr #4 {
entry:
  %arraydecay = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 0
  tail call void @fpcorrection434(i64* %arraydecay) #10
  %arraydecay2 = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 0
  tail call void @fpcorrection434(i64* nonnull %arraydecay2) #10
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
define void @fp2sqr434_mont([7 x i64]* %a, [7 x i64]* %c) local_unnamed_addr #4 {
entry:
  %temp.i = alloca [14 x i64], align 16
  %t1 = alloca [7 x i64], align 16
  %t2 = alloca [7 x i64], align 16
  %t3 = alloca [7 x i64], align 16
  %0 = bitcast [7 x i64]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #10
  %1 = bitcast [7 x i64]* %t2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1) #10
  %2 = bitcast [7 x i64]* %t3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %2) #10
  %arraydecay = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 0
  %arraydecay3 = getelementptr inbounds [7 x i64], [7 x i64]* %t1, i64 0, i64 0
  %3 = load i64, i64* %arraydecay, align 8, !tbaa !3
  %4 = load i64, i64* %arraydecay2, align 8, !tbaa !3
  %add3.i.i = add i64 %4, %3
  store i64 %add3.i.i, i64* %arraydecay3, align 16, !tbaa !3
  %xor.i23.i.i = xor i64 %add3.i.i, %3
  %xor1.i24.i.i = xor i64 %4, %3
  %or.i25.i.i = or i64 %xor.i23.i.i, %xor1.i24.i.i
  %xor2.i26.i.i = xor i64 %or.i25.i.i, %add3.i.i
  %or29.i.i = lshr i64 %xor2.i26.i.i, 63
  %arrayidx.i.1.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 1
  %5 = load i64, i64* %arrayidx.i.1.i, align 8, !tbaa !3
  %add.i.1.i = add i64 %or29.i.i, %5
  %arrayidx2.i.1.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 1
  %6 = load i64, i64* %arrayidx2.i.1.i, align 8, !tbaa !3
  %add3.i.1.i = add i64 %add.i.1.i, %6
  %arrayidx5.i.1.i = getelementptr inbounds [7 x i64], [7 x i64]* %t1, i64 0, i64 1
  store i64 %add3.i.1.i, i64* %arrayidx5.i.1.i, align 8, !tbaa !3
  %7 = xor i64 %add.i.1.i, -9223372036854775808
  %xor2.i.i.1.i = and i64 %7, %5
  %xor.i23.i.1.i = xor i64 %add3.i.1.i, %add.i.1.i
  %xor1.i24.i.1.i = xor i64 %add.i.1.i, %6
  %or.i25.i.1.i = or i64 %xor.i23.i.1.i, %xor1.i24.i.1.i
  %xor2.i26.i.1.i = xor i64 %or.i25.i.1.i, %add3.i.1.i
  %shr.i30.i.1.i = or i64 %xor2.i26.i.1.i, %xor2.i.i.1.i
  %or29.i.1.i = lshr i64 %shr.i30.i.1.i, 63
  %arrayidx.i.2.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 2
  %8 = load i64, i64* %arrayidx.i.2.i, align 8, !tbaa !3
  %add.i.2.i = add i64 %or29.i.1.i, %8
  %arrayidx2.i.2.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 2
  %9 = load i64, i64* %arrayidx2.i.2.i, align 8, !tbaa !3
  %add3.i.2.i = add i64 %add.i.2.i, %9
  %arrayidx5.i.2.i = getelementptr inbounds [7 x i64], [7 x i64]* %t1, i64 0, i64 2
  store i64 %add3.i.2.i, i64* %arrayidx5.i.2.i, align 16, !tbaa !3
  %10 = xor i64 %add.i.2.i, -9223372036854775808
  %xor2.i.i.2.i = and i64 %10, %8
  %xor.i23.i.2.i = xor i64 %add3.i.2.i, %add.i.2.i
  %xor1.i24.i.2.i = xor i64 %add.i.2.i, %9
  %or.i25.i.2.i = or i64 %xor.i23.i.2.i, %xor1.i24.i.2.i
  %xor2.i26.i.2.i = xor i64 %or.i25.i.2.i, %add3.i.2.i
  %shr.i30.i.2.i = or i64 %xor2.i26.i.2.i, %xor2.i.i.2.i
  %or29.i.2.i = lshr i64 %shr.i30.i.2.i, 63
  %arrayidx.i.3.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 3
  %11 = load i64, i64* %arrayidx.i.3.i, align 8, !tbaa !3
  %add.i.3.i = add i64 %or29.i.2.i, %11
  %arrayidx2.i.3.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 3
  %12 = load i64, i64* %arrayidx2.i.3.i, align 8, !tbaa !3
  %add3.i.3.i = add i64 %add.i.3.i, %12
  %arrayidx5.i.3.i = getelementptr inbounds [7 x i64], [7 x i64]* %t1, i64 0, i64 3
  store i64 %add3.i.3.i, i64* %arrayidx5.i.3.i, align 8, !tbaa !3
  %13 = xor i64 %add.i.3.i, -9223372036854775808
  %xor2.i.i.3.i = and i64 %13, %11
  %xor.i23.i.3.i = xor i64 %add3.i.3.i, %add.i.3.i
  %xor1.i24.i.3.i = xor i64 %add.i.3.i, %12
  %or.i25.i.3.i = or i64 %xor.i23.i.3.i, %xor1.i24.i.3.i
  %xor2.i26.i.3.i = xor i64 %or.i25.i.3.i, %add3.i.3.i
  %shr.i30.i.3.i = or i64 %xor2.i26.i.3.i, %xor2.i.i.3.i
  %or29.i.3.i = lshr i64 %shr.i30.i.3.i, 63
  %arrayidx.i.4.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 4
  %14 = load i64, i64* %arrayidx.i.4.i, align 8, !tbaa !3
  %add.i.4.i = add i64 %or29.i.3.i, %14
  %arrayidx2.i.4.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 4
  %15 = load i64, i64* %arrayidx2.i.4.i, align 8, !tbaa !3
  %add3.i.4.i = add i64 %add.i.4.i, %15
  %arrayidx5.i.4.i = getelementptr inbounds [7 x i64], [7 x i64]* %t1, i64 0, i64 4
  store i64 %add3.i.4.i, i64* %arrayidx5.i.4.i, align 16, !tbaa !3
  %16 = xor i64 %add.i.4.i, -9223372036854775808
  %xor2.i.i.4.i = and i64 %16, %14
  %xor.i23.i.4.i = xor i64 %add3.i.4.i, %add.i.4.i
  %xor1.i24.i.4.i = xor i64 %add.i.4.i, %15
  %or.i25.i.4.i = or i64 %xor.i23.i.4.i, %xor1.i24.i.4.i
  %xor2.i26.i.4.i = xor i64 %or.i25.i.4.i, %add3.i.4.i
  %shr.i30.i.4.i = or i64 %xor2.i26.i.4.i, %xor2.i.i.4.i
  %or29.i.4.i = lshr i64 %shr.i30.i.4.i, 63
  %arrayidx.i.5.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 5
  %17 = load i64, i64* %arrayidx.i.5.i, align 8, !tbaa !3
  %add.i.5.i = add i64 %or29.i.4.i, %17
  %arrayidx2.i.5.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 5
  %18 = load i64, i64* %arrayidx2.i.5.i, align 8, !tbaa !3
  %add3.i.5.i = add i64 %add.i.5.i, %18
  %arrayidx5.i.5.i = getelementptr inbounds [7 x i64], [7 x i64]* %t1, i64 0, i64 5
  store i64 %add3.i.5.i, i64* %arrayidx5.i.5.i, align 8, !tbaa !3
  %19 = xor i64 %add.i.5.i, -9223372036854775808
  %xor2.i.i.5.i = and i64 %19, %17
  %xor.i23.i.5.i = xor i64 %add3.i.5.i, %add.i.5.i
  %xor1.i24.i.5.i = xor i64 %add.i.5.i, %18
  %or.i25.i.5.i = or i64 %xor.i23.i.5.i, %xor1.i24.i.5.i
  %xor2.i26.i.5.i = xor i64 %or.i25.i.5.i, %add3.i.5.i
  %shr.i30.i.5.i = or i64 %xor2.i26.i.5.i, %xor2.i.i.5.i
  %or29.i.5.i = lshr i64 %shr.i30.i.5.i, 63
  %arrayidx.i.6.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 6
  %20 = load i64, i64* %arrayidx.i.6.i, align 8, !tbaa !3
  %arrayidx2.i.6.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 6
  %21 = load i64, i64* %arrayidx2.i.6.i, align 8, !tbaa !3
  %add.i.6.i = add i64 %21, %20
  %add3.i.6.i = add i64 %add.i.6.i, %or29.i.5.i
  %arrayidx5.i.6.i = getelementptr inbounds [7 x i64], [7 x i64]* %t1, i64 0, i64 6
  store i64 %add3.i.6.i, i64* %arrayidx5.i.6.i, align 16, !tbaa !3
  %arraydecay8 = getelementptr inbounds [7 x i64], [7 x i64]* %t2, i64 0, i64 0
  call void @mp_sub434_p4(i64* %arraydecay, i64* nonnull %arraydecay2, i64* nonnull %arraydecay8) #10
  %arraydecay13 = getelementptr inbounds [7 x i64], [7 x i64]* %t3, i64 0, i64 0
  %22 = load i64, i64* %arraydecay, align 8, !tbaa !3
  %add3.i.i30 = shl i64 %22, 1
  store i64 %add3.i.i30, i64* %arraydecay13, align 16, !tbaa !3
  %or29.i.i35 = lshr i64 %22, 63
  %23 = load i64, i64* %arrayidx.i.1.i, align 8, !tbaa !3
  %add.i.1.i37 = add i64 %23, %or29.i.i35
  %add3.i.1.i39 = add i64 %add.i.1.i37, %23
  %arrayidx5.i.1.i40 = getelementptr inbounds [7 x i64], [7 x i64]* %t3, i64 0, i64 1
  store i64 %add3.i.1.i39, i64* %arrayidx5.i.1.i40, align 8, !tbaa !3
  %24 = xor i64 %add.i.1.i37, -9223372036854775808
  %xor2.i.i.1.i41 = and i64 %24, %23
  %xor.i23.i.1.i42 = xor i64 %add3.i.1.i39, %add.i.1.i37
  %xor1.i24.i.1.i43 = xor i64 %add.i.1.i37, %23
  %or.i25.i.1.i44 = or i64 %xor.i23.i.1.i42, %xor1.i24.i.1.i43
  %xor2.i26.i.1.i45 = xor i64 %or.i25.i.1.i44, %add3.i.1.i39
  %shr.i30.i.1.i46 = or i64 %xor2.i26.i.1.i45, %xor2.i.i.1.i41
  %or29.i.1.i47 = lshr i64 %shr.i30.i.1.i46, 63
  %25 = load i64, i64* %arrayidx.i.2.i, align 8, !tbaa !3
  %add.i.2.i49 = add i64 %or29.i.1.i47, %25
  %add3.i.2.i51 = add i64 %add.i.2.i49, %25
  %arrayidx5.i.2.i52 = getelementptr inbounds [7 x i64], [7 x i64]* %t3, i64 0, i64 2
  store i64 %add3.i.2.i51, i64* %arrayidx5.i.2.i52, align 16, !tbaa !3
  %26 = xor i64 %add.i.2.i49, -9223372036854775808
  %xor2.i.i.2.i53 = and i64 %26, %25
  %xor.i23.i.2.i54 = xor i64 %add3.i.2.i51, %add.i.2.i49
  %xor1.i24.i.2.i55 = xor i64 %add.i.2.i49, %25
  %or.i25.i.2.i56 = or i64 %xor.i23.i.2.i54, %xor1.i24.i.2.i55
  %xor2.i26.i.2.i57 = xor i64 %or.i25.i.2.i56, %add3.i.2.i51
  %shr.i30.i.2.i58 = or i64 %xor2.i26.i.2.i57, %xor2.i.i.2.i53
  %or29.i.2.i59 = lshr i64 %shr.i30.i.2.i58, 63
  %27 = load i64, i64* %arrayidx.i.3.i, align 8, !tbaa !3
  %add.i.3.i61 = add i64 %or29.i.2.i59, %27
  %add3.i.3.i63 = add i64 %add.i.3.i61, %27
  %arrayidx5.i.3.i64 = getelementptr inbounds [7 x i64], [7 x i64]* %t3, i64 0, i64 3
  store i64 %add3.i.3.i63, i64* %arrayidx5.i.3.i64, align 8, !tbaa !3
  %28 = xor i64 %add.i.3.i61, -9223372036854775808
  %xor2.i.i.3.i65 = and i64 %28, %27
  %xor.i23.i.3.i66 = xor i64 %add3.i.3.i63, %add.i.3.i61
  %xor1.i24.i.3.i67 = xor i64 %add.i.3.i61, %27
  %or.i25.i.3.i68 = or i64 %xor.i23.i.3.i66, %xor1.i24.i.3.i67
  %xor2.i26.i.3.i69 = xor i64 %or.i25.i.3.i68, %add3.i.3.i63
  %shr.i30.i.3.i70 = or i64 %xor2.i26.i.3.i69, %xor2.i.i.3.i65
  %or29.i.3.i71 = lshr i64 %shr.i30.i.3.i70, 63
  %29 = load i64, i64* %arrayidx.i.4.i, align 8, !tbaa !3
  %add.i.4.i73 = add i64 %or29.i.3.i71, %29
  %add3.i.4.i75 = add i64 %add.i.4.i73, %29
  %arrayidx5.i.4.i76 = getelementptr inbounds [7 x i64], [7 x i64]* %t3, i64 0, i64 4
  store i64 %add3.i.4.i75, i64* %arrayidx5.i.4.i76, align 16, !tbaa !3
  %30 = xor i64 %add.i.4.i73, -9223372036854775808
  %xor2.i.i.4.i77 = and i64 %30, %29
  %xor.i23.i.4.i78 = xor i64 %add3.i.4.i75, %add.i.4.i73
  %xor1.i24.i.4.i79 = xor i64 %add.i.4.i73, %29
  %or.i25.i.4.i80 = or i64 %xor.i23.i.4.i78, %xor1.i24.i.4.i79
  %xor2.i26.i.4.i81 = xor i64 %or.i25.i.4.i80, %add3.i.4.i75
  %shr.i30.i.4.i82 = or i64 %xor2.i26.i.4.i81, %xor2.i.i.4.i77
  %or29.i.4.i83 = lshr i64 %shr.i30.i.4.i82, 63
  %31 = load i64, i64* %arrayidx.i.5.i, align 8, !tbaa !3
  %add.i.5.i85 = add i64 %or29.i.4.i83, %31
  %add3.i.5.i87 = add i64 %add.i.5.i85, %31
  %arrayidx5.i.5.i88 = getelementptr inbounds [7 x i64], [7 x i64]* %t3, i64 0, i64 5
  store i64 %add3.i.5.i87, i64* %arrayidx5.i.5.i88, align 8, !tbaa !3
  %32 = xor i64 %add.i.5.i85, -9223372036854775808
  %xor2.i.i.5.i89 = and i64 %32, %31
  %xor.i23.i.5.i90 = xor i64 %add3.i.5.i87, %add.i.5.i85
  %xor1.i24.i.5.i91 = xor i64 %add.i.5.i85, %31
  %or.i25.i.5.i92 = or i64 %xor.i23.i.5.i90, %xor1.i24.i.5.i91
  %xor2.i26.i.5.i93 = xor i64 %or.i25.i.5.i92, %add3.i.5.i87
  %shr.i30.i.5.i94 = or i64 %xor2.i26.i.5.i93, %xor2.i.i.5.i89
  %or29.i.5.i95 = lshr i64 %shr.i30.i.5.i94, 63
  %33 = load i64, i64* %arrayidx.i.6.i, align 8, !tbaa !3
  %factor = shl i64 %33, 1
  %add3.i.6.i99 = or i64 %or29.i.5.i95, %factor
  %arrayidx5.i.6.i100 = getelementptr inbounds [7 x i64], [7 x i64]* %t3, i64 0, i64 6
  store i64 %add3.i.6.i99, i64* %arrayidx5.i.6.i100, align 16, !tbaa !3
  %arraydecay17 = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 0, i64 0
  %34 = bitcast [14 x i64]* %temp.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %34) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %34, i8 0, i64 112, i1 false) #10
  %arraydecay.i102 = getelementptr inbounds [14 x i64], [14 x i64]* %temp.i, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay3, i64* nonnull %arraydecay8, i64* nonnull %arraydecay.i102, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i102, i64* %arraydecay17) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %34) #10
  %arraydecay22 = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %34) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %34, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13, i64* nonnull %arraydecay2, i64* nonnull %arraydecay.i102, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i102, i64* nonnull %arraydecay22) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %34) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #10
  ret void
}

declare void @mp_sub434_p4(i64*, i64*, i64*) local_unnamed_addr #5

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
define void @fp2mul434_mont([7 x i64]* %a, [7 x i64]* %b, [7 x i64]* %c) local_unnamed_addr #4 {
entry:
  %t1 = alloca [7 x i64], align 16
  %t2 = alloca [7 x i64], align 16
  %tt1 = alloca [14 x i64], align 16
  %tt2 = alloca [14 x i64], align 16
  %tt3 = alloca [14 x i64], align 16
  %0 = bitcast [7 x i64]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #10
  %1 = bitcast [7 x i64]* %t2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1) #10
  %2 = bitcast [14 x i64]* %tt1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  %3 = bitcast [14 x i64]* %tt2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %3) #10
  %4 = bitcast [14 x i64]* %tt3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %4) #10
  %arraydecay = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 0
  %arraydecay3 = getelementptr inbounds [7 x i64], [7 x i64]* %t1, i64 0, i64 0
  %5 = load i64, i64* %arraydecay, align 8, !tbaa !3
  %6 = load i64, i64* %arraydecay2, align 8, !tbaa !3
  %add3.i.i = add i64 %6, %5
  store i64 %add3.i.i, i64* %arraydecay3, align 16, !tbaa !3
  %xor.i23.i.i = xor i64 %add3.i.i, %5
  %xor1.i24.i.i = xor i64 %6, %5
  %or.i25.i.i = or i64 %xor.i23.i.i, %xor1.i24.i.i
  %xor2.i26.i.i = xor i64 %or.i25.i.i, %add3.i.i
  %or29.i.i = lshr i64 %xor2.i26.i.i, 63
  %arrayidx.i.1.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 1
  %7 = load i64, i64* %arrayidx.i.1.i, align 8, !tbaa !3
  %add.i.1.i = add i64 %or29.i.i, %7
  %arrayidx2.i.1.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 1
  %8 = load i64, i64* %arrayidx2.i.1.i, align 8, !tbaa !3
  %add3.i.1.i = add i64 %add.i.1.i, %8
  %arrayidx5.i.1.i = getelementptr inbounds [7 x i64], [7 x i64]* %t1, i64 0, i64 1
  store i64 %add3.i.1.i, i64* %arrayidx5.i.1.i, align 8, !tbaa !3
  %9 = xor i64 %add.i.1.i, -9223372036854775808
  %xor2.i.i.1.i = and i64 %9, %7
  %xor.i23.i.1.i = xor i64 %add3.i.1.i, %add.i.1.i
  %xor1.i24.i.1.i = xor i64 %add.i.1.i, %8
  %or.i25.i.1.i = or i64 %xor.i23.i.1.i, %xor1.i24.i.1.i
  %xor2.i26.i.1.i = xor i64 %or.i25.i.1.i, %add3.i.1.i
  %shr.i30.i.1.i = or i64 %xor2.i26.i.1.i, %xor2.i.i.1.i
  %or29.i.1.i = lshr i64 %shr.i30.i.1.i, 63
  %arrayidx.i.2.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 2
  %10 = load i64, i64* %arrayidx.i.2.i, align 8, !tbaa !3
  %add.i.2.i = add i64 %or29.i.1.i, %10
  %arrayidx2.i.2.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 2
  %11 = load i64, i64* %arrayidx2.i.2.i, align 8, !tbaa !3
  %add3.i.2.i = add i64 %add.i.2.i, %11
  %arrayidx5.i.2.i = getelementptr inbounds [7 x i64], [7 x i64]* %t1, i64 0, i64 2
  store i64 %add3.i.2.i, i64* %arrayidx5.i.2.i, align 16, !tbaa !3
  %12 = xor i64 %add.i.2.i, -9223372036854775808
  %xor2.i.i.2.i = and i64 %12, %10
  %xor.i23.i.2.i = xor i64 %add3.i.2.i, %add.i.2.i
  %xor1.i24.i.2.i = xor i64 %add.i.2.i, %11
  %or.i25.i.2.i = or i64 %xor.i23.i.2.i, %xor1.i24.i.2.i
  %xor2.i26.i.2.i = xor i64 %or.i25.i.2.i, %add3.i.2.i
  %shr.i30.i.2.i = or i64 %xor2.i26.i.2.i, %xor2.i.i.2.i
  %or29.i.2.i = lshr i64 %shr.i30.i.2.i, 63
  %arrayidx.i.3.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 3
  %13 = load i64, i64* %arrayidx.i.3.i, align 8, !tbaa !3
  %add.i.3.i = add i64 %or29.i.2.i, %13
  %arrayidx2.i.3.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 3
  %14 = load i64, i64* %arrayidx2.i.3.i, align 8, !tbaa !3
  %add3.i.3.i = add i64 %add.i.3.i, %14
  %arrayidx5.i.3.i = getelementptr inbounds [7 x i64], [7 x i64]* %t1, i64 0, i64 3
  store i64 %add3.i.3.i, i64* %arrayidx5.i.3.i, align 8, !tbaa !3
  %15 = xor i64 %add.i.3.i, -9223372036854775808
  %xor2.i.i.3.i = and i64 %15, %13
  %xor.i23.i.3.i = xor i64 %add3.i.3.i, %add.i.3.i
  %xor1.i24.i.3.i = xor i64 %add.i.3.i, %14
  %or.i25.i.3.i = or i64 %xor.i23.i.3.i, %xor1.i24.i.3.i
  %xor2.i26.i.3.i = xor i64 %or.i25.i.3.i, %add3.i.3.i
  %shr.i30.i.3.i = or i64 %xor2.i26.i.3.i, %xor2.i.i.3.i
  %or29.i.3.i = lshr i64 %shr.i30.i.3.i, 63
  %arrayidx.i.4.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 4
  %16 = load i64, i64* %arrayidx.i.4.i, align 8, !tbaa !3
  %add.i.4.i = add i64 %or29.i.3.i, %16
  %arrayidx2.i.4.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 4
  %17 = load i64, i64* %arrayidx2.i.4.i, align 8, !tbaa !3
  %add3.i.4.i = add i64 %add.i.4.i, %17
  %arrayidx5.i.4.i = getelementptr inbounds [7 x i64], [7 x i64]* %t1, i64 0, i64 4
  store i64 %add3.i.4.i, i64* %arrayidx5.i.4.i, align 16, !tbaa !3
  %18 = xor i64 %add.i.4.i, -9223372036854775808
  %xor2.i.i.4.i = and i64 %18, %16
  %xor.i23.i.4.i = xor i64 %add3.i.4.i, %add.i.4.i
  %xor1.i24.i.4.i = xor i64 %add.i.4.i, %17
  %or.i25.i.4.i = or i64 %xor.i23.i.4.i, %xor1.i24.i.4.i
  %xor2.i26.i.4.i = xor i64 %or.i25.i.4.i, %add3.i.4.i
  %shr.i30.i.4.i = or i64 %xor2.i26.i.4.i, %xor2.i.i.4.i
  %or29.i.4.i = lshr i64 %shr.i30.i.4.i, 63
  %arrayidx.i.5.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 5
  %19 = load i64, i64* %arrayidx.i.5.i, align 8, !tbaa !3
  %add.i.5.i = add i64 %or29.i.4.i, %19
  %arrayidx2.i.5.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 5
  %20 = load i64, i64* %arrayidx2.i.5.i, align 8, !tbaa !3
  %add3.i.5.i = add i64 %add.i.5.i, %20
  %arrayidx5.i.5.i = getelementptr inbounds [7 x i64], [7 x i64]* %t1, i64 0, i64 5
  store i64 %add3.i.5.i, i64* %arrayidx5.i.5.i, align 8, !tbaa !3
  %21 = xor i64 %add.i.5.i, -9223372036854775808
  %xor2.i.i.5.i = and i64 %21, %19
  %xor.i23.i.5.i = xor i64 %add3.i.5.i, %add.i.5.i
  %xor1.i24.i.5.i = xor i64 %add.i.5.i, %20
  %or.i25.i.5.i = or i64 %xor.i23.i.5.i, %xor1.i24.i.5.i
  %xor2.i26.i.5.i = xor i64 %or.i25.i.5.i, %add3.i.5.i
  %shr.i30.i.5.i = or i64 %xor2.i26.i.5.i, %xor2.i.i.5.i
  %or29.i.5.i = lshr i64 %shr.i30.i.5.i, 63
  %arrayidx.i.6.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 6
  %22 = load i64, i64* %arrayidx.i.6.i, align 8, !tbaa !3
  %arrayidx2.i.6.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 6
  %23 = load i64, i64* %arrayidx2.i.6.i, align 8, !tbaa !3
  %add.i.6.i = add i64 %23, %22
  %add3.i.6.i = add i64 %add.i.6.i, %or29.i.5.i
  %arrayidx5.i.6.i = getelementptr inbounds [7 x i64], [7 x i64]* %t1, i64 0, i64 6
  store i64 %add3.i.6.i, i64* %arrayidx5.i.6.i, align 16, !tbaa !3
  %arraydecay5 = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 1, i64 0
  %arraydecay8 = getelementptr inbounds [7 x i64], [7 x i64]* %t2, i64 0, i64 0
  %24 = load i64, i64* %arraydecay5, align 8, !tbaa !3
  %25 = load i64, i64* %arraydecay7, align 8, !tbaa !3
  %add3.i.i285 = add i64 %25, %24
  store i64 %add3.i.i285, i64* %arraydecay8, align 16, !tbaa !3
  %xor.i23.i.i286 = xor i64 %add3.i.i285, %24
  %xor1.i24.i.i287 = xor i64 %25, %24
  %or.i25.i.i288 = or i64 %xor.i23.i.i286, %xor1.i24.i.i287
  %xor2.i26.i.i289 = xor i64 %or.i25.i.i288, %add3.i.i285
  %or29.i.i290 = lshr i64 %xor2.i26.i.i289, 63
  %arrayidx.i.1.i291 = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 0, i64 1
  %26 = load i64, i64* %arrayidx.i.1.i291, align 8, !tbaa !3
  %add.i.1.i292 = add i64 %or29.i.i290, %26
  %arrayidx2.i.1.i293 = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 1, i64 1
  %27 = load i64, i64* %arrayidx2.i.1.i293, align 8, !tbaa !3
  %add3.i.1.i294 = add i64 %add.i.1.i292, %27
  %arrayidx5.i.1.i295 = getelementptr inbounds [7 x i64], [7 x i64]* %t2, i64 0, i64 1
  store i64 %add3.i.1.i294, i64* %arrayidx5.i.1.i295, align 8, !tbaa !3
  %28 = xor i64 %add.i.1.i292, -9223372036854775808
  %xor2.i.i.1.i296 = and i64 %28, %26
  %xor.i23.i.1.i297 = xor i64 %add3.i.1.i294, %add.i.1.i292
  %xor1.i24.i.1.i298 = xor i64 %add.i.1.i292, %27
  %or.i25.i.1.i299 = or i64 %xor.i23.i.1.i297, %xor1.i24.i.1.i298
  %xor2.i26.i.1.i300 = xor i64 %or.i25.i.1.i299, %add3.i.1.i294
  %shr.i30.i.1.i301 = or i64 %xor2.i26.i.1.i300, %xor2.i.i.1.i296
  %or29.i.1.i302 = lshr i64 %shr.i30.i.1.i301, 63
  %arrayidx.i.2.i303 = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 0, i64 2
  %29 = load i64, i64* %arrayidx.i.2.i303, align 8, !tbaa !3
  %add.i.2.i304 = add i64 %or29.i.1.i302, %29
  %arrayidx2.i.2.i305 = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 1, i64 2
  %30 = load i64, i64* %arrayidx2.i.2.i305, align 8, !tbaa !3
  %add3.i.2.i306 = add i64 %add.i.2.i304, %30
  %arrayidx5.i.2.i307 = getelementptr inbounds [7 x i64], [7 x i64]* %t2, i64 0, i64 2
  store i64 %add3.i.2.i306, i64* %arrayidx5.i.2.i307, align 16, !tbaa !3
  %31 = xor i64 %add.i.2.i304, -9223372036854775808
  %xor2.i.i.2.i308 = and i64 %31, %29
  %xor.i23.i.2.i309 = xor i64 %add3.i.2.i306, %add.i.2.i304
  %xor1.i24.i.2.i310 = xor i64 %add.i.2.i304, %30
  %or.i25.i.2.i311 = or i64 %xor.i23.i.2.i309, %xor1.i24.i.2.i310
  %xor2.i26.i.2.i312 = xor i64 %or.i25.i.2.i311, %add3.i.2.i306
  %shr.i30.i.2.i313 = or i64 %xor2.i26.i.2.i312, %xor2.i.i.2.i308
  %or29.i.2.i314 = lshr i64 %shr.i30.i.2.i313, 63
  %arrayidx.i.3.i315 = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 0, i64 3
  %32 = load i64, i64* %arrayidx.i.3.i315, align 8, !tbaa !3
  %add.i.3.i316 = add i64 %or29.i.2.i314, %32
  %arrayidx2.i.3.i317 = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 1, i64 3
  %33 = load i64, i64* %arrayidx2.i.3.i317, align 8, !tbaa !3
  %add3.i.3.i318 = add i64 %add.i.3.i316, %33
  %arrayidx5.i.3.i319 = getelementptr inbounds [7 x i64], [7 x i64]* %t2, i64 0, i64 3
  store i64 %add3.i.3.i318, i64* %arrayidx5.i.3.i319, align 8, !tbaa !3
  %34 = xor i64 %add.i.3.i316, -9223372036854775808
  %xor2.i.i.3.i320 = and i64 %34, %32
  %xor.i23.i.3.i321 = xor i64 %add3.i.3.i318, %add.i.3.i316
  %xor1.i24.i.3.i322 = xor i64 %add.i.3.i316, %33
  %or.i25.i.3.i323 = or i64 %xor.i23.i.3.i321, %xor1.i24.i.3.i322
  %xor2.i26.i.3.i324 = xor i64 %or.i25.i.3.i323, %add3.i.3.i318
  %shr.i30.i.3.i325 = or i64 %xor2.i26.i.3.i324, %xor2.i.i.3.i320
  %or29.i.3.i326 = lshr i64 %shr.i30.i.3.i325, 63
  %arrayidx.i.4.i327 = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 0, i64 4
  %35 = load i64, i64* %arrayidx.i.4.i327, align 8, !tbaa !3
  %add.i.4.i328 = add i64 %or29.i.3.i326, %35
  %arrayidx2.i.4.i329 = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 1, i64 4
  %36 = load i64, i64* %arrayidx2.i.4.i329, align 8, !tbaa !3
  %add3.i.4.i330 = add i64 %add.i.4.i328, %36
  %arrayidx5.i.4.i331 = getelementptr inbounds [7 x i64], [7 x i64]* %t2, i64 0, i64 4
  store i64 %add3.i.4.i330, i64* %arrayidx5.i.4.i331, align 16, !tbaa !3
  %37 = xor i64 %add.i.4.i328, -9223372036854775808
  %xor2.i.i.4.i332 = and i64 %37, %35
  %xor.i23.i.4.i333 = xor i64 %add3.i.4.i330, %add.i.4.i328
  %xor1.i24.i.4.i334 = xor i64 %add.i.4.i328, %36
  %or.i25.i.4.i335 = or i64 %xor.i23.i.4.i333, %xor1.i24.i.4.i334
  %xor2.i26.i.4.i336 = xor i64 %or.i25.i.4.i335, %add3.i.4.i330
  %shr.i30.i.4.i337 = or i64 %xor2.i26.i.4.i336, %xor2.i.i.4.i332
  %or29.i.4.i338 = lshr i64 %shr.i30.i.4.i337, 63
  %arrayidx.i.5.i339 = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 0, i64 5
  %38 = load i64, i64* %arrayidx.i.5.i339, align 8, !tbaa !3
  %add.i.5.i340 = add i64 %or29.i.4.i338, %38
  %arrayidx2.i.5.i341 = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 1, i64 5
  %39 = load i64, i64* %arrayidx2.i.5.i341, align 8, !tbaa !3
  %add3.i.5.i342 = add i64 %add.i.5.i340, %39
  %arrayidx5.i.5.i343 = getelementptr inbounds [7 x i64], [7 x i64]* %t2, i64 0, i64 5
  store i64 %add3.i.5.i342, i64* %arrayidx5.i.5.i343, align 8, !tbaa !3
  %40 = xor i64 %add.i.5.i340, -9223372036854775808
  %xor2.i.i.5.i344 = and i64 %40, %38
  %xor.i23.i.5.i345 = xor i64 %add3.i.5.i342, %add.i.5.i340
  %xor1.i24.i.5.i346 = xor i64 %add.i.5.i340, %39
  %or.i25.i.5.i347 = or i64 %xor.i23.i.5.i345, %xor1.i24.i.5.i346
  %xor2.i26.i.5.i348 = xor i64 %or.i25.i.5.i347, %add3.i.5.i342
  %shr.i30.i.5.i349 = or i64 %xor2.i26.i.5.i348, %xor2.i.i.5.i344
  %or29.i.5.i350 = lshr i64 %shr.i30.i.5.i349, 63
  %arrayidx.i.6.i351 = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 0, i64 6
  %41 = load i64, i64* %arrayidx.i.6.i351, align 8, !tbaa !3
  %arrayidx2.i.6.i353 = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 1, i64 6
  %42 = load i64, i64* %arrayidx2.i.6.i353, align 8, !tbaa !3
  %add.i.6.i352 = add i64 %42, %41
  %add3.i.6.i354 = add i64 %add.i.6.i352, %or29.i.5.i350
  %arrayidx5.i.6.i355 = getelementptr inbounds [7 x i64], [7 x i64]* %t2, i64 0, i64 6
  store i64 %add3.i.6.i354, i64* %arrayidx5.i.6.i355, align 16, !tbaa !3
  %arraydecay13 = getelementptr inbounds [14 x i64], [14 x i64]* %tt1, i64 0, i64 0
  call void @mp_mul(i64* %arraydecay, i64* %arraydecay5, i64* nonnull %arraydecay13, i32 7) #10
  %arraydecay18 = getelementptr inbounds [14 x i64], [14 x i64]* %tt2, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay2, i64* nonnull %arraydecay7, i64* nonnull %arraydecay18, i32 7) #10
  %arraydecay21 = getelementptr inbounds [14 x i64], [14 x i64]* %tt3, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay3, i64* nonnull %arraydecay8, i64* nonnull %arraydecay21, i32 7) #10
  %43 = load i64, i64* %arraydecay21, align 16, !tbaa !3
  %44 = load i64, i64* %arraydecay13, align 16, !tbaa !3
  %sub.i.i58 = sub i64 %43, %44
  %xor.i.i.i59 = xor i64 %44, %43
  %xor1.i.i.i60 = xor i64 %sub.i.i58, %44
  %or.i.i.i61 = or i64 %xor1.i.i.i60, %xor.i.i.i59
  %xor2.i.i.i62 = xor i64 %or.i.i.i61, %43
  %shr.i.i.i63 = lshr i64 %xor2.i.i.i62, 63
  %conv.i.i.i64 = trunc i64 %shr.i.i.i63 to i32
  store i64 %sub.i.i58, i64* %arraydecay21, align 16, !tbaa !3
  %arrayidx.i.1.i65 = getelementptr inbounds [14 x i64], [14 x i64]* %tt3, i64 0, i64 1
  %45 = load i64, i64* %arrayidx.i.1.i65, align 8, !tbaa !3
  %arrayidx2.i.1.i66 = getelementptr inbounds [14 x i64], [14 x i64]* %tt1, i64 0, i64 1
  %46 = load i64, i64* %arrayidx2.i.1.i66, align 8, !tbaa !3
  %sub.i.1.i67 = sub i64 %45, %46
  %xor.i.i.1.i68 = xor i64 %46, %45
  %xor1.i.i.1.i69 = xor i64 %sub.i.1.i67, %46
  %or.i.i.1.i70 = or i64 %xor1.i.i.1.i69, %xor.i.i.1.i68
  %xor2.i.i.1.i71 = xor i64 %or.i.i.1.i70, %45
  %shr.i.i.1.i72 = lshr i64 %xor2.i.i.1.i71, 63
  %conv.i.i.1.i73 = trunc i64 %shr.i.i.1.i72 to i32
  %sub.i.i.i.1.i74 = sub i64 0, %sub.i.1.i67
  %or.i.i.i.1.i75 = or i64 %sub.i.1.i67, %sub.i.i.i.1.i74
  %shr.i.i.i.1.i76 = lshr i64 %or.i.i.i.1.i75, 63
  %conv.i.i.i.1.i77 = trunc i64 %shr.i.i.i.1.i76 to i32
  %xor.i26.i.1.i78 = xor i32 %conv.i.i.i.1.i77, 1
  %and.i.1.i79 = and i32 %xor.i26.i.1.i78, %conv.i.i.i64
  %or.i.1.i80 = or i32 %and.i.1.i79, %conv.i.i.1.i73
  %sub8.i.1.i81 = sub i64 %sub.i.1.i67, %shr.i.i.i63
  store i64 %sub8.i.1.i81, i64* %arrayidx.i.1.i65, align 8, !tbaa !3
  %arrayidx.i.2.i82 = getelementptr inbounds [14 x i64], [14 x i64]* %tt3, i64 0, i64 2
  %47 = load i64, i64* %arrayidx.i.2.i82, align 16, !tbaa !3
  %arrayidx2.i.2.i83 = getelementptr inbounds [14 x i64], [14 x i64]* %tt1, i64 0, i64 2
  %48 = load i64, i64* %arrayidx2.i.2.i83, align 16, !tbaa !3
  %sub.i.2.i84 = sub i64 %47, %48
  %xor.i.i.2.i85 = xor i64 %48, %47
  %xor1.i.i.2.i86 = xor i64 %sub.i.2.i84, %48
  %or.i.i.2.i87 = or i64 %xor1.i.i.2.i86, %xor.i.i.2.i85
  %xor2.i.i.2.i88 = xor i64 %or.i.i.2.i87, %47
  %shr.i.i.2.i89 = lshr i64 %xor2.i.i.2.i88, 63
  %conv.i.i.2.i90 = trunc i64 %shr.i.i.2.i89 to i32
  %sub.i.i.i.2.i91 = sub i64 0, %sub.i.2.i84
  %or.i.i.i.2.i92 = or i64 %sub.i.2.i84, %sub.i.i.i.2.i91
  %shr.i.i.i.2.i93 = lshr i64 %or.i.i.i.2.i92, 63
  %conv.i.i.i.2.i94 = trunc i64 %shr.i.i.i.2.i93 to i32
  %xor.i26.i.2.i95 = xor i32 %conv.i.i.i.2.i94, 1
  %and.i.2.i96 = and i32 %xor.i26.i.2.i95, %or.i.1.i80
  %or.i.2.i97 = or i32 %and.i.2.i96, %conv.i.i.2.i90
  %conv.i.2.i98 = zext i32 %or.i.1.i80 to i64
  %sub8.i.2.i99 = sub i64 %sub.i.2.i84, %conv.i.2.i98
  store i64 %sub8.i.2.i99, i64* %arrayidx.i.2.i82, align 16, !tbaa !3
  %arrayidx.i.3.i100 = getelementptr inbounds [14 x i64], [14 x i64]* %tt3, i64 0, i64 3
  %49 = load i64, i64* %arrayidx.i.3.i100, align 8, !tbaa !3
  %arrayidx2.i.3.i101 = getelementptr inbounds [14 x i64], [14 x i64]* %tt1, i64 0, i64 3
  %50 = load i64, i64* %arrayidx2.i.3.i101, align 8, !tbaa !3
  %sub.i.3.i102 = sub i64 %49, %50
  %xor.i.i.3.i103 = xor i64 %50, %49
  %xor1.i.i.3.i104 = xor i64 %sub.i.3.i102, %50
  %or.i.i.3.i105 = or i64 %xor1.i.i.3.i104, %xor.i.i.3.i103
  %xor2.i.i.3.i106 = xor i64 %or.i.i.3.i105, %49
  %shr.i.i.3.i107 = lshr i64 %xor2.i.i.3.i106, 63
  %conv.i.i.3.i108 = trunc i64 %shr.i.i.3.i107 to i32
  %sub.i.i.i.3.i109 = sub i64 0, %sub.i.3.i102
  %or.i.i.i.3.i110 = or i64 %sub.i.3.i102, %sub.i.i.i.3.i109
  %shr.i.i.i.3.i111 = lshr i64 %or.i.i.i.3.i110, 63
  %conv.i.i.i.3.i112 = trunc i64 %shr.i.i.i.3.i111 to i32
  %xor.i26.i.3.i113 = xor i32 %conv.i.i.i.3.i112, 1
  %and.i.3.i114 = and i32 %xor.i26.i.3.i113, %or.i.2.i97
  %or.i.3.i115 = or i32 %and.i.3.i114, %conv.i.i.3.i108
  %conv.i.3.i116 = zext i32 %or.i.2.i97 to i64
  %sub8.i.3.i117 = sub i64 %sub.i.3.i102, %conv.i.3.i116
  store i64 %sub8.i.3.i117, i64* %arrayidx.i.3.i100, align 8, !tbaa !3
  %arrayidx.i.4.i118 = getelementptr inbounds [14 x i64], [14 x i64]* %tt3, i64 0, i64 4
  %51 = load i64, i64* %arrayidx.i.4.i118, align 16, !tbaa !3
  %arrayidx2.i.4.i119 = getelementptr inbounds [14 x i64], [14 x i64]* %tt1, i64 0, i64 4
  %52 = load i64, i64* %arrayidx2.i.4.i119, align 16, !tbaa !3
  %sub.i.4.i120 = sub i64 %51, %52
  %xor.i.i.4.i121 = xor i64 %52, %51
  %xor1.i.i.4.i122 = xor i64 %sub.i.4.i120, %52
  %or.i.i.4.i123 = or i64 %xor1.i.i.4.i122, %xor.i.i.4.i121
  %xor2.i.i.4.i124 = xor i64 %or.i.i.4.i123, %51
  %shr.i.i.4.i125 = lshr i64 %xor2.i.i.4.i124, 63
  %conv.i.i.4.i126 = trunc i64 %shr.i.i.4.i125 to i32
  %sub.i.i.i.4.i127 = sub i64 0, %sub.i.4.i120
  %or.i.i.i.4.i128 = or i64 %sub.i.4.i120, %sub.i.i.i.4.i127
  %shr.i.i.i.4.i129 = lshr i64 %or.i.i.i.4.i128, 63
  %conv.i.i.i.4.i130 = trunc i64 %shr.i.i.i.4.i129 to i32
  %xor.i26.i.4.i131 = xor i32 %conv.i.i.i.4.i130, 1
  %and.i.4.i132 = and i32 %xor.i26.i.4.i131, %or.i.3.i115
  %or.i.4.i133 = or i32 %and.i.4.i132, %conv.i.i.4.i126
  %conv.i.4.i134 = zext i32 %or.i.3.i115 to i64
  %sub8.i.4.i135 = sub i64 %sub.i.4.i120, %conv.i.4.i134
  store i64 %sub8.i.4.i135, i64* %arrayidx.i.4.i118, align 16, !tbaa !3
  %arrayidx.i.5.i136 = getelementptr inbounds [14 x i64], [14 x i64]* %tt3, i64 0, i64 5
  %53 = load i64, i64* %arrayidx.i.5.i136, align 8, !tbaa !3
  %arrayidx2.i.5.i137 = getelementptr inbounds [14 x i64], [14 x i64]* %tt1, i64 0, i64 5
  %54 = load i64, i64* %arrayidx2.i.5.i137, align 8, !tbaa !3
  %sub.i.5.i138 = sub i64 %53, %54
  %xor.i.i.5.i139 = xor i64 %54, %53
  %xor1.i.i.5.i140 = xor i64 %sub.i.5.i138, %54
  %or.i.i.5.i141 = or i64 %xor1.i.i.5.i140, %xor.i.i.5.i139
  %xor2.i.i.5.i142 = xor i64 %or.i.i.5.i141, %53
  %shr.i.i.5.i143 = lshr i64 %xor2.i.i.5.i142, 63
  %conv.i.i.5.i144 = trunc i64 %shr.i.i.5.i143 to i32
  %sub.i.i.i.5.i145 = sub i64 0, %sub.i.5.i138
  %or.i.i.i.5.i146 = or i64 %sub.i.5.i138, %sub.i.i.i.5.i145
  %shr.i.i.i.5.i147 = lshr i64 %or.i.i.i.5.i146, 63
  %conv.i.i.i.5.i148 = trunc i64 %shr.i.i.i.5.i147 to i32
  %xor.i26.i.5.i149 = xor i32 %conv.i.i.i.5.i148, 1
  %and.i.5.i150 = and i32 %xor.i26.i.5.i149, %or.i.4.i133
  %or.i.5.i151 = or i32 %and.i.5.i150, %conv.i.i.5.i144
  %conv.i.5.i152 = zext i32 %or.i.4.i133 to i64
  %sub8.i.5.i153 = sub i64 %sub.i.5.i138, %conv.i.5.i152
  store i64 %sub8.i.5.i153, i64* %arrayidx.i.5.i136, align 8, !tbaa !3
  %arrayidx.i.6.i154 = getelementptr inbounds [14 x i64], [14 x i64]* %tt3, i64 0, i64 6
  %55 = load i64, i64* %arrayidx.i.6.i154, align 16, !tbaa !3
  %arrayidx2.i.6.i155 = getelementptr inbounds [14 x i64], [14 x i64]* %tt1, i64 0, i64 6
  %56 = load i64, i64* %arrayidx2.i.6.i155, align 16, !tbaa !3
  %sub.i.6.i156 = sub i64 %55, %56
  %xor.i.i.6.i157 = xor i64 %56, %55
  %xor1.i.i.6.i158 = xor i64 %sub.i.6.i156, %56
  %or.i.i.6.i159 = or i64 %xor1.i.i.6.i158, %xor.i.i.6.i157
  %xor2.i.i.6.i160 = xor i64 %or.i.i.6.i159, %55
  %shr.i.i.6.i161 = lshr i64 %xor2.i.i.6.i160, 63
  %conv.i.i.6.i162 = trunc i64 %shr.i.i.6.i161 to i32
  %sub.i.i.i.6.i163 = sub i64 0, %sub.i.6.i156
  %or.i.i.i.6.i164 = or i64 %sub.i.6.i156, %sub.i.i.i.6.i163
  %shr.i.i.i.6.i165 = lshr i64 %or.i.i.i.6.i164, 63
  %conv.i.i.i.6.i166 = trunc i64 %shr.i.i.i.6.i165 to i32
  %xor.i26.i.6.i167 = xor i32 %conv.i.i.i.6.i166, 1
  %and.i.6.i168 = and i32 %xor.i26.i.6.i167, %or.i.5.i151
  %or.i.6.i169 = or i32 %and.i.6.i168, %conv.i.i.6.i162
  %conv.i.6.i170 = zext i32 %or.i.5.i151 to i64
  %sub8.i.6.i171 = sub i64 %sub.i.6.i156, %conv.i.6.i170
  store i64 %sub8.i.6.i171, i64* %arrayidx.i.6.i154, align 16, !tbaa !3
  %arrayidx.i.7.i172 = getelementptr inbounds [14 x i64], [14 x i64]* %tt3, i64 0, i64 7
  %57 = load i64, i64* %arrayidx.i.7.i172, align 8, !tbaa !3
  %arrayidx2.i.7.i173 = getelementptr inbounds [14 x i64], [14 x i64]* %tt1, i64 0, i64 7
  %58 = load i64, i64* %arrayidx2.i.7.i173, align 8, !tbaa !3
  %sub.i.7.i174 = sub i64 %57, %58
  %xor.i.i.7.i175 = xor i64 %58, %57
  %xor1.i.i.7.i176 = xor i64 %sub.i.7.i174, %58
  %or.i.i.7.i177 = or i64 %xor1.i.i.7.i176, %xor.i.i.7.i175
  %xor2.i.i.7.i178 = xor i64 %or.i.i.7.i177, %57
  %shr.i.i.7.i179 = lshr i64 %xor2.i.i.7.i178, 63
  %conv.i.i.7.i180 = trunc i64 %shr.i.i.7.i179 to i32
  %sub.i.i.i.7.i181 = sub i64 0, %sub.i.7.i174
  %or.i.i.i.7.i182 = or i64 %sub.i.7.i174, %sub.i.i.i.7.i181
  %shr.i.i.i.7.i183 = lshr i64 %or.i.i.i.7.i182, 63
  %conv.i.i.i.7.i184 = trunc i64 %shr.i.i.i.7.i183 to i32
  %xor.i26.i.7.i185 = xor i32 %conv.i.i.i.7.i184, 1
  %and.i.7.i186 = and i32 %xor.i26.i.7.i185, %or.i.6.i169
  %or.i.7.i187 = or i32 %and.i.7.i186, %conv.i.i.7.i180
  %conv.i.7.i188 = zext i32 %or.i.6.i169 to i64
  %sub8.i.7.i189 = sub i64 %sub.i.7.i174, %conv.i.7.i188
  store i64 %sub8.i.7.i189, i64* %arrayidx.i.7.i172, align 8, !tbaa !3
  %arrayidx.i.8.i190 = getelementptr inbounds [14 x i64], [14 x i64]* %tt3, i64 0, i64 8
  %59 = load i64, i64* %arrayidx.i.8.i190, align 16, !tbaa !3
  %arrayidx2.i.8.i191 = getelementptr inbounds [14 x i64], [14 x i64]* %tt1, i64 0, i64 8
  %60 = load i64, i64* %arrayidx2.i.8.i191, align 16, !tbaa !3
  %sub.i.8.i192 = sub i64 %59, %60
  %xor.i.i.8.i193 = xor i64 %60, %59
  %xor1.i.i.8.i194 = xor i64 %sub.i.8.i192, %60
  %or.i.i.8.i195 = or i64 %xor1.i.i.8.i194, %xor.i.i.8.i193
  %xor2.i.i.8.i196 = xor i64 %or.i.i.8.i195, %59
  %shr.i.i.8.i197 = lshr i64 %xor2.i.i.8.i196, 63
  %conv.i.i.8.i198 = trunc i64 %shr.i.i.8.i197 to i32
  %sub.i.i.i.8.i199 = sub i64 0, %sub.i.8.i192
  %or.i.i.i.8.i200 = or i64 %sub.i.8.i192, %sub.i.i.i.8.i199
  %shr.i.i.i.8.i201 = lshr i64 %or.i.i.i.8.i200, 63
  %conv.i.i.i.8.i202 = trunc i64 %shr.i.i.i.8.i201 to i32
  %xor.i26.i.8.i203 = xor i32 %conv.i.i.i.8.i202, 1
  %and.i.8.i204 = and i32 %xor.i26.i.8.i203, %or.i.7.i187
  %or.i.8.i205 = or i32 %and.i.8.i204, %conv.i.i.8.i198
  %conv.i.8.i206 = zext i32 %or.i.7.i187 to i64
  %sub8.i.8.i207 = sub i64 %sub.i.8.i192, %conv.i.8.i206
  store i64 %sub8.i.8.i207, i64* %arrayidx.i.8.i190, align 16, !tbaa !3
  %arrayidx.i.9.i208 = getelementptr inbounds [14 x i64], [14 x i64]* %tt3, i64 0, i64 9
  %61 = load i64, i64* %arrayidx.i.9.i208, align 8, !tbaa !3
  %arrayidx2.i.9.i209 = getelementptr inbounds [14 x i64], [14 x i64]* %tt1, i64 0, i64 9
  %62 = load i64, i64* %arrayidx2.i.9.i209, align 8, !tbaa !3
  %sub.i.9.i210 = sub i64 %61, %62
  %xor.i.i.9.i211 = xor i64 %62, %61
  %xor1.i.i.9.i212 = xor i64 %sub.i.9.i210, %62
  %or.i.i.9.i213 = or i64 %xor1.i.i.9.i212, %xor.i.i.9.i211
  %xor2.i.i.9.i214 = xor i64 %or.i.i.9.i213, %61
  %shr.i.i.9.i215 = lshr i64 %xor2.i.i.9.i214, 63
  %conv.i.i.9.i216 = trunc i64 %shr.i.i.9.i215 to i32
  %sub.i.i.i.9.i217 = sub i64 0, %sub.i.9.i210
  %or.i.i.i.9.i218 = or i64 %sub.i.9.i210, %sub.i.i.i.9.i217
  %shr.i.i.i.9.i219 = lshr i64 %or.i.i.i.9.i218, 63
  %conv.i.i.i.9.i220 = trunc i64 %shr.i.i.i.9.i219 to i32
  %xor.i26.i.9.i221 = xor i32 %conv.i.i.i.9.i220, 1
  %and.i.9.i222 = and i32 %xor.i26.i.9.i221, %or.i.8.i205
  %or.i.9.i223 = or i32 %and.i.9.i222, %conv.i.i.9.i216
  %conv.i.9.i224 = zext i32 %or.i.8.i205 to i64
  %sub8.i.9.i225 = sub i64 %sub.i.9.i210, %conv.i.9.i224
  store i64 %sub8.i.9.i225, i64* %arrayidx.i.9.i208, align 8, !tbaa !3
  %arrayidx.i.10.i226 = getelementptr inbounds [14 x i64], [14 x i64]* %tt3, i64 0, i64 10
  %63 = load i64, i64* %arrayidx.i.10.i226, align 16, !tbaa !3
  %arrayidx2.i.10.i227 = getelementptr inbounds [14 x i64], [14 x i64]* %tt1, i64 0, i64 10
  %64 = load i64, i64* %arrayidx2.i.10.i227, align 16, !tbaa !3
  %sub.i.10.i228 = sub i64 %63, %64
  %xor.i.i.10.i229 = xor i64 %64, %63
  %xor1.i.i.10.i230 = xor i64 %sub.i.10.i228, %64
  %or.i.i.10.i231 = or i64 %xor1.i.i.10.i230, %xor.i.i.10.i229
  %xor2.i.i.10.i232 = xor i64 %or.i.i.10.i231, %63
  %shr.i.i.10.i233 = lshr i64 %xor2.i.i.10.i232, 63
  %conv.i.i.10.i234 = trunc i64 %shr.i.i.10.i233 to i32
  %sub.i.i.i.10.i235 = sub i64 0, %sub.i.10.i228
  %or.i.i.i.10.i236 = or i64 %sub.i.10.i228, %sub.i.i.i.10.i235
  %shr.i.i.i.10.i237 = lshr i64 %or.i.i.i.10.i236, 63
  %conv.i.i.i.10.i238 = trunc i64 %shr.i.i.i.10.i237 to i32
  %xor.i26.i.10.i239 = xor i32 %conv.i.i.i.10.i238, 1
  %and.i.10.i240 = and i32 %xor.i26.i.10.i239, %or.i.9.i223
  %or.i.10.i241 = or i32 %and.i.10.i240, %conv.i.i.10.i234
  %conv.i.10.i242 = zext i32 %or.i.9.i223 to i64
  %sub8.i.10.i243 = sub i64 %sub.i.10.i228, %conv.i.10.i242
  store i64 %sub8.i.10.i243, i64* %arrayidx.i.10.i226, align 16, !tbaa !3
  %arrayidx.i.11.i244 = getelementptr inbounds [14 x i64], [14 x i64]* %tt3, i64 0, i64 11
  %65 = load i64, i64* %arrayidx.i.11.i244, align 8, !tbaa !3
  %arrayidx2.i.11.i245 = getelementptr inbounds [14 x i64], [14 x i64]* %tt1, i64 0, i64 11
  %66 = load i64, i64* %arrayidx2.i.11.i245, align 8, !tbaa !3
  %sub.i.11.i246 = sub i64 %65, %66
  %xor.i.i.11.i247 = xor i64 %66, %65
  %xor1.i.i.11.i248 = xor i64 %sub.i.11.i246, %66
  %or.i.i.11.i249 = or i64 %xor1.i.i.11.i248, %xor.i.i.11.i247
  %xor2.i.i.11.i250 = xor i64 %or.i.i.11.i249, %65
  %shr.i.i.11.i251 = lshr i64 %xor2.i.i.11.i250, 63
  %conv.i.i.11.i252 = trunc i64 %shr.i.i.11.i251 to i32
  %sub.i.i.i.11.i253 = sub i64 0, %sub.i.11.i246
  %or.i.i.i.11.i254 = or i64 %sub.i.11.i246, %sub.i.i.i.11.i253
  %shr.i.i.i.11.i255 = lshr i64 %or.i.i.i.11.i254, 63
  %conv.i.i.i.11.i256 = trunc i64 %shr.i.i.i.11.i255 to i32
  %xor.i26.i.11.i257 = xor i32 %conv.i.i.i.11.i256, 1
  %and.i.11.i258 = and i32 %xor.i26.i.11.i257, %or.i.10.i241
  %or.i.11.i259 = or i32 %and.i.11.i258, %conv.i.i.11.i252
  %conv.i.11.i260 = zext i32 %or.i.10.i241 to i64
  %sub8.i.11.i261 = sub i64 %sub.i.11.i246, %conv.i.11.i260
  store i64 %sub8.i.11.i261, i64* %arrayidx.i.11.i244, align 8, !tbaa !3
  %arrayidx.i.12.i262 = getelementptr inbounds [14 x i64], [14 x i64]* %tt3, i64 0, i64 12
  %67 = load i64, i64* %arrayidx.i.12.i262, align 16, !tbaa !3
  %arrayidx2.i.12.i263 = getelementptr inbounds [14 x i64], [14 x i64]* %tt1, i64 0, i64 12
  %68 = load i64, i64* %arrayidx2.i.12.i263, align 16, !tbaa !3
  %sub.i.12.i264 = sub i64 %67, %68
  %xor.i.i.12.i265 = xor i64 %68, %67
  %xor1.i.i.12.i266 = xor i64 %sub.i.12.i264, %68
  %or.i.i.12.i267 = or i64 %xor1.i.i.12.i266, %xor.i.i.12.i265
  %xor2.i.i.12.i268 = xor i64 %or.i.i.12.i267, %67
  %shr.i.i.12.i269 = lshr i64 %xor2.i.i.12.i268, 63
  %conv.i.i.12.i270 = trunc i64 %shr.i.i.12.i269 to i32
  %sub.i.i.i.12.i271 = sub i64 0, %sub.i.12.i264
  %or.i.i.i.12.i272 = or i64 %sub.i.12.i264, %sub.i.i.i.12.i271
  %shr.i.i.i.12.i273 = lshr i64 %or.i.i.i.12.i272, 63
  %conv.i.i.i.12.i274 = trunc i64 %shr.i.i.i.12.i273 to i32
  %xor.i26.i.12.i275 = xor i32 %conv.i.i.i.12.i274, 1
  %and.i.12.i276 = and i32 %xor.i26.i.12.i275, %or.i.11.i259
  %or.i.12.i277 = or i32 %and.i.12.i276, %conv.i.i.12.i270
  %conv.i.12.i278 = zext i32 %or.i.11.i259 to i64
  %sub8.i.12.i279 = sub i64 %sub.i.12.i264, %conv.i.12.i278
  store i64 %sub8.i.12.i279, i64* %arrayidx.i.12.i262, align 16, !tbaa !3
  %arrayidx.i.13.i280 = getelementptr inbounds [14 x i64], [14 x i64]* %tt3, i64 0, i64 13
  %69 = load i64, i64* %arrayidx.i.13.i280, align 8, !tbaa !3
  %arrayidx2.i.13.i281 = getelementptr inbounds [14 x i64], [14 x i64]* %tt1, i64 0, i64 13
  %70 = load i64, i64* %arrayidx2.i.13.i281, align 8, !tbaa !3
  %sub.i.13.i282 = sub i64 %69, %70
  %conv.i.13.i283 = zext i32 %or.i.12.i277 to i64
  %sub8.i.13.i284 = sub i64 %sub.i.13.i282, %conv.i.13.i283
  store i64 %sub8.i.13.i284, i64* %arrayidx.i.13.i280, align 8, !tbaa !3
  %71 = load i64, i64* %arraydecay18, align 16, !tbaa !3
  %sub.i9.i = sub i64 %sub.i.i58, %71
  %xor.i.i10.i = xor i64 %71, %sub.i.i58
  %xor1.i.i11.i = xor i64 %sub.i9.i, %71
  %or.i.i12.i = or i64 %xor1.i.i11.i, %xor.i.i10.i
  %xor2.i.i13.i = xor i64 %or.i.i12.i, %sub.i.i58
  %shr.i.i14.i = lshr i64 %xor2.i.i13.i, 63
  %conv.i.i15.i = trunc i64 %shr.i.i14.i to i32
  store i64 %sub.i9.i, i64* %arraydecay21, align 16, !tbaa !3
  %arrayidx2.i8.1.i = getelementptr inbounds [14 x i64], [14 x i64]* %tt2, i64 0, i64 1
  %72 = load i64, i64* %arrayidx2.i8.1.i, align 8, !tbaa !3
  %sub.i9.1.i = sub i64 %sub8.i.1.i81, %72
  %xor.i.i10.1.i = xor i64 %72, %sub8.i.1.i81
  %xor1.i.i11.1.i = xor i64 %sub.i9.1.i, %72
  %or.i.i12.1.i = or i64 %xor1.i.i11.1.i, %xor.i.i10.1.i
  %xor2.i.i13.1.i = xor i64 %or.i.i12.1.i, %sub8.i.1.i81
  %shr.i.i14.1.i = lshr i64 %xor2.i.i13.1.i, 63
  %conv.i.i15.1.i = trunc i64 %shr.i.i14.1.i to i32
  %sub.i.i.i16.1.i = sub i64 0, %sub.i9.1.i
  %or.i.i.i17.1.i = or i64 %sub.i9.1.i, %sub.i.i.i16.1.i
  %shr.i.i.i18.1.i = lshr i64 %or.i.i.i17.1.i, 63
  %conv.i.i.i19.1.i = trunc i64 %shr.i.i.i18.1.i to i32
  %xor.i26.i20.1.i = xor i32 %conv.i.i.i19.1.i, 1
  %and.i21.1.i = and i32 %xor.i26.i20.1.i, %conv.i.i15.i
  %or.i22.1.i = or i32 %and.i21.1.i, %conv.i.i15.1.i
  %sub8.i24.1.i = sub i64 %sub.i9.1.i, %shr.i.i14.i
  store i64 %sub8.i24.1.i, i64* %arrayidx.i.1.i65, align 8, !tbaa !3
  %arrayidx2.i8.2.i = getelementptr inbounds [14 x i64], [14 x i64]* %tt2, i64 0, i64 2
  %73 = load i64, i64* %arrayidx2.i8.2.i, align 16, !tbaa !3
  %sub.i9.2.i = sub i64 %sub8.i.2.i99, %73
  %xor.i.i10.2.i = xor i64 %73, %sub8.i.2.i99
  %xor1.i.i11.2.i = xor i64 %sub.i9.2.i, %73
  %or.i.i12.2.i = or i64 %xor1.i.i11.2.i, %xor.i.i10.2.i
  %xor2.i.i13.2.i = xor i64 %or.i.i12.2.i, %sub8.i.2.i99
  %shr.i.i14.2.i = lshr i64 %xor2.i.i13.2.i, 63
  %conv.i.i15.2.i = trunc i64 %shr.i.i14.2.i to i32
  %sub.i.i.i16.2.i = sub i64 0, %sub.i9.2.i
  %or.i.i.i17.2.i = or i64 %sub.i9.2.i, %sub.i.i.i16.2.i
  %shr.i.i.i18.2.i = lshr i64 %or.i.i.i17.2.i, 63
  %conv.i.i.i19.2.i = trunc i64 %shr.i.i.i18.2.i to i32
  %xor.i26.i20.2.i = xor i32 %conv.i.i.i19.2.i, 1
  %and.i21.2.i = and i32 %xor.i26.i20.2.i, %or.i22.1.i
  %or.i22.2.i = or i32 %and.i21.2.i, %conv.i.i15.2.i
  %conv.i23.2.i = zext i32 %or.i22.1.i to i64
  %sub8.i24.2.i = sub i64 %sub.i9.2.i, %conv.i23.2.i
  store i64 %sub8.i24.2.i, i64* %arrayidx.i.2.i82, align 16, !tbaa !3
  %arrayidx2.i8.3.i = getelementptr inbounds [14 x i64], [14 x i64]* %tt2, i64 0, i64 3
  %74 = load i64, i64* %arrayidx2.i8.3.i, align 8, !tbaa !3
  %sub.i9.3.i = sub i64 %sub8.i.3.i117, %74
  %xor.i.i10.3.i = xor i64 %74, %sub8.i.3.i117
  %xor1.i.i11.3.i = xor i64 %sub.i9.3.i, %74
  %or.i.i12.3.i = or i64 %xor1.i.i11.3.i, %xor.i.i10.3.i
  %xor2.i.i13.3.i = xor i64 %or.i.i12.3.i, %sub8.i.3.i117
  %shr.i.i14.3.i = lshr i64 %xor2.i.i13.3.i, 63
  %conv.i.i15.3.i = trunc i64 %shr.i.i14.3.i to i32
  %sub.i.i.i16.3.i = sub i64 0, %sub.i9.3.i
  %or.i.i.i17.3.i = or i64 %sub.i9.3.i, %sub.i.i.i16.3.i
  %shr.i.i.i18.3.i = lshr i64 %or.i.i.i17.3.i, 63
  %conv.i.i.i19.3.i = trunc i64 %shr.i.i.i18.3.i to i32
  %xor.i26.i20.3.i = xor i32 %conv.i.i.i19.3.i, 1
  %and.i21.3.i = and i32 %xor.i26.i20.3.i, %or.i22.2.i
  %or.i22.3.i = or i32 %and.i21.3.i, %conv.i.i15.3.i
  %conv.i23.3.i = zext i32 %or.i22.2.i to i64
  %sub8.i24.3.i = sub i64 %sub.i9.3.i, %conv.i23.3.i
  store i64 %sub8.i24.3.i, i64* %arrayidx.i.3.i100, align 8, !tbaa !3
  %arrayidx2.i8.4.i = getelementptr inbounds [14 x i64], [14 x i64]* %tt2, i64 0, i64 4
  %75 = load i64, i64* %arrayidx2.i8.4.i, align 16, !tbaa !3
  %sub.i9.4.i = sub i64 %sub8.i.4.i135, %75
  %xor.i.i10.4.i = xor i64 %75, %sub8.i.4.i135
  %xor1.i.i11.4.i = xor i64 %sub.i9.4.i, %75
  %or.i.i12.4.i = or i64 %xor1.i.i11.4.i, %xor.i.i10.4.i
  %xor2.i.i13.4.i = xor i64 %or.i.i12.4.i, %sub8.i.4.i135
  %shr.i.i14.4.i = lshr i64 %xor2.i.i13.4.i, 63
  %conv.i.i15.4.i = trunc i64 %shr.i.i14.4.i to i32
  %sub.i.i.i16.4.i = sub i64 0, %sub.i9.4.i
  %or.i.i.i17.4.i = or i64 %sub.i9.4.i, %sub.i.i.i16.4.i
  %shr.i.i.i18.4.i = lshr i64 %or.i.i.i17.4.i, 63
  %conv.i.i.i19.4.i = trunc i64 %shr.i.i.i18.4.i to i32
  %xor.i26.i20.4.i = xor i32 %conv.i.i.i19.4.i, 1
  %and.i21.4.i = and i32 %xor.i26.i20.4.i, %or.i22.3.i
  %or.i22.4.i = or i32 %and.i21.4.i, %conv.i.i15.4.i
  %conv.i23.4.i = zext i32 %or.i22.3.i to i64
  %sub8.i24.4.i = sub i64 %sub.i9.4.i, %conv.i23.4.i
  store i64 %sub8.i24.4.i, i64* %arrayidx.i.4.i118, align 16, !tbaa !3
  %arrayidx2.i8.5.i = getelementptr inbounds [14 x i64], [14 x i64]* %tt2, i64 0, i64 5
  %76 = load i64, i64* %arrayidx2.i8.5.i, align 8, !tbaa !3
  %sub.i9.5.i = sub i64 %sub8.i.5.i153, %76
  %xor.i.i10.5.i = xor i64 %76, %sub8.i.5.i153
  %xor1.i.i11.5.i = xor i64 %sub.i9.5.i, %76
  %or.i.i12.5.i = or i64 %xor1.i.i11.5.i, %xor.i.i10.5.i
  %xor2.i.i13.5.i = xor i64 %or.i.i12.5.i, %sub8.i.5.i153
  %shr.i.i14.5.i = lshr i64 %xor2.i.i13.5.i, 63
  %conv.i.i15.5.i = trunc i64 %shr.i.i14.5.i to i32
  %sub.i.i.i16.5.i = sub i64 0, %sub.i9.5.i
  %or.i.i.i17.5.i = or i64 %sub.i9.5.i, %sub.i.i.i16.5.i
  %shr.i.i.i18.5.i = lshr i64 %or.i.i.i17.5.i, 63
  %conv.i.i.i19.5.i = trunc i64 %shr.i.i.i18.5.i to i32
  %xor.i26.i20.5.i = xor i32 %conv.i.i.i19.5.i, 1
  %and.i21.5.i = and i32 %xor.i26.i20.5.i, %or.i22.4.i
  %or.i22.5.i = or i32 %and.i21.5.i, %conv.i.i15.5.i
  %conv.i23.5.i = zext i32 %or.i22.4.i to i64
  %sub8.i24.5.i = sub i64 %sub.i9.5.i, %conv.i23.5.i
  store i64 %sub8.i24.5.i, i64* %arrayidx.i.5.i136, align 8, !tbaa !3
  %arrayidx2.i8.6.i = getelementptr inbounds [14 x i64], [14 x i64]* %tt2, i64 0, i64 6
  %77 = load i64, i64* %arrayidx2.i8.6.i, align 16, !tbaa !3
  %sub.i9.6.i = sub i64 %sub8.i.6.i171, %77
  %xor.i.i10.6.i = xor i64 %77, %sub8.i.6.i171
  %xor1.i.i11.6.i = xor i64 %sub.i9.6.i, %77
  %or.i.i12.6.i = or i64 %xor1.i.i11.6.i, %xor.i.i10.6.i
  %xor2.i.i13.6.i = xor i64 %or.i.i12.6.i, %sub8.i.6.i171
  %shr.i.i14.6.i = lshr i64 %xor2.i.i13.6.i, 63
  %conv.i.i15.6.i = trunc i64 %shr.i.i14.6.i to i32
  %sub.i.i.i16.6.i = sub i64 0, %sub.i9.6.i
  %or.i.i.i17.6.i = or i64 %sub.i9.6.i, %sub.i.i.i16.6.i
  %shr.i.i.i18.6.i = lshr i64 %or.i.i.i17.6.i, 63
  %conv.i.i.i19.6.i = trunc i64 %shr.i.i.i18.6.i to i32
  %xor.i26.i20.6.i = xor i32 %conv.i.i.i19.6.i, 1
  %and.i21.6.i = and i32 %xor.i26.i20.6.i, %or.i22.5.i
  %or.i22.6.i = or i32 %and.i21.6.i, %conv.i.i15.6.i
  %conv.i23.6.i = zext i32 %or.i22.5.i to i64
  %sub8.i24.6.i = sub i64 %sub.i9.6.i, %conv.i23.6.i
  store i64 %sub8.i24.6.i, i64* %arrayidx.i.6.i154, align 16, !tbaa !3
  %arrayidx2.i8.7.i = getelementptr inbounds [14 x i64], [14 x i64]* %tt2, i64 0, i64 7
  %78 = load i64, i64* %arrayidx2.i8.7.i, align 8, !tbaa !3
  %sub.i9.7.i = sub i64 %sub8.i.7.i189, %78
  %xor.i.i10.7.i = xor i64 %78, %sub8.i.7.i189
  %xor1.i.i11.7.i = xor i64 %sub.i9.7.i, %78
  %or.i.i12.7.i = or i64 %xor1.i.i11.7.i, %xor.i.i10.7.i
  %xor2.i.i13.7.i = xor i64 %or.i.i12.7.i, %sub8.i.7.i189
  %shr.i.i14.7.i = lshr i64 %xor2.i.i13.7.i, 63
  %conv.i.i15.7.i = trunc i64 %shr.i.i14.7.i to i32
  %sub.i.i.i16.7.i = sub i64 0, %sub.i9.7.i
  %or.i.i.i17.7.i = or i64 %sub.i9.7.i, %sub.i.i.i16.7.i
  %shr.i.i.i18.7.i = lshr i64 %or.i.i.i17.7.i, 63
  %conv.i.i.i19.7.i = trunc i64 %shr.i.i.i18.7.i to i32
  %xor.i26.i20.7.i = xor i32 %conv.i.i.i19.7.i, 1
  %and.i21.7.i = and i32 %xor.i26.i20.7.i, %or.i22.6.i
  %or.i22.7.i = or i32 %and.i21.7.i, %conv.i.i15.7.i
  %conv.i23.7.i = zext i32 %or.i22.6.i to i64
  %sub8.i24.7.i = sub i64 %sub.i9.7.i, %conv.i23.7.i
  store i64 %sub8.i24.7.i, i64* %arrayidx.i.7.i172, align 8, !tbaa !3
  %arrayidx2.i8.8.i = getelementptr inbounds [14 x i64], [14 x i64]* %tt2, i64 0, i64 8
  %79 = load i64, i64* %arrayidx2.i8.8.i, align 16, !tbaa !3
  %sub.i9.8.i = sub i64 %sub8.i.8.i207, %79
  %xor.i.i10.8.i = xor i64 %79, %sub8.i.8.i207
  %xor1.i.i11.8.i = xor i64 %sub.i9.8.i, %79
  %or.i.i12.8.i = or i64 %xor1.i.i11.8.i, %xor.i.i10.8.i
  %xor2.i.i13.8.i = xor i64 %or.i.i12.8.i, %sub8.i.8.i207
  %shr.i.i14.8.i = lshr i64 %xor2.i.i13.8.i, 63
  %conv.i.i15.8.i = trunc i64 %shr.i.i14.8.i to i32
  %sub.i.i.i16.8.i = sub i64 0, %sub.i9.8.i
  %or.i.i.i17.8.i = or i64 %sub.i9.8.i, %sub.i.i.i16.8.i
  %shr.i.i.i18.8.i = lshr i64 %or.i.i.i17.8.i, 63
  %conv.i.i.i19.8.i = trunc i64 %shr.i.i.i18.8.i to i32
  %xor.i26.i20.8.i = xor i32 %conv.i.i.i19.8.i, 1
  %and.i21.8.i = and i32 %xor.i26.i20.8.i, %or.i22.7.i
  %or.i22.8.i = or i32 %and.i21.8.i, %conv.i.i15.8.i
  %conv.i23.8.i = zext i32 %or.i22.7.i to i64
  %sub8.i24.8.i = sub i64 %sub.i9.8.i, %conv.i23.8.i
  store i64 %sub8.i24.8.i, i64* %arrayidx.i.8.i190, align 16, !tbaa !3
  %arrayidx2.i8.9.i = getelementptr inbounds [14 x i64], [14 x i64]* %tt2, i64 0, i64 9
  %80 = load i64, i64* %arrayidx2.i8.9.i, align 8, !tbaa !3
  %sub.i9.9.i = sub i64 %sub8.i.9.i225, %80
  %xor.i.i10.9.i = xor i64 %80, %sub8.i.9.i225
  %xor1.i.i11.9.i = xor i64 %sub.i9.9.i, %80
  %or.i.i12.9.i = or i64 %xor1.i.i11.9.i, %xor.i.i10.9.i
  %xor2.i.i13.9.i = xor i64 %or.i.i12.9.i, %sub8.i.9.i225
  %shr.i.i14.9.i = lshr i64 %xor2.i.i13.9.i, 63
  %conv.i.i15.9.i = trunc i64 %shr.i.i14.9.i to i32
  %sub.i.i.i16.9.i = sub i64 0, %sub.i9.9.i
  %or.i.i.i17.9.i = or i64 %sub.i9.9.i, %sub.i.i.i16.9.i
  %shr.i.i.i18.9.i = lshr i64 %or.i.i.i17.9.i, 63
  %conv.i.i.i19.9.i = trunc i64 %shr.i.i.i18.9.i to i32
  %xor.i26.i20.9.i = xor i32 %conv.i.i.i19.9.i, 1
  %and.i21.9.i = and i32 %xor.i26.i20.9.i, %or.i22.8.i
  %or.i22.9.i = or i32 %and.i21.9.i, %conv.i.i15.9.i
  %conv.i23.9.i = zext i32 %or.i22.8.i to i64
  %sub8.i24.9.i = sub i64 %sub.i9.9.i, %conv.i23.9.i
  store i64 %sub8.i24.9.i, i64* %arrayidx.i.9.i208, align 8, !tbaa !3
  %arrayidx2.i8.10.i = getelementptr inbounds [14 x i64], [14 x i64]* %tt2, i64 0, i64 10
  %81 = load i64, i64* %arrayidx2.i8.10.i, align 16, !tbaa !3
  %sub.i9.10.i = sub i64 %sub8.i.10.i243, %81
  %xor.i.i10.10.i = xor i64 %81, %sub8.i.10.i243
  %xor1.i.i11.10.i = xor i64 %sub.i9.10.i, %81
  %or.i.i12.10.i = or i64 %xor1.i.i11.10.i, %xor.i.i10.10.i
  %xor2.i.i13.10.i = xor i64 %or.i.i12.10.i, %sub8.i.10.i243
  %shr.i.i14.10.i = lshr i64 %xor2.i.i13.10.i, 63
  %conv.i.i15.10.i = trunc i64 %shr.i.i14.10.i to i32
  %sub.i.i.i16.10.i = sub i64 0, %sub.i9.10.i
  %or.i.i.i17.10.i = or i64 %sub.i9.10.i, %sub.i.i.i16.10.i
  %shr.i.i.i18.10.i = lshr i64 %or.i.i.i17.10.i, 63
  %conv.i.i.i19.10.i = trunc i64 %shr.i.i.i18.10.i to i32
  %xor.i26.i20.10.i = xor i32 %conv.i.i.i19.10.i, 1
  %and.i21.10.i = and i32 %xor.i26.i20.10.i, %or.i22.9.i
  %or.i22.10.i = or i32 %and.i21.10.i, %conv.i.i15.10.i
  %conv.i23.10.i = zext i32 %or.i22.9.i to i64
  %sub8.i24.10.i = sub i64 %sub.i9.10.i, %conv.i23.10.i
  store i64 %sub8.i24.10.i, i64* %arrayidx.i.10.i226, align 16, !tbaa !3
  %arrayidx2.i8.11.i = getelementptr inbounds [14 x i64], [14 x i64]* %tt2, i64 0, i64 11
  %82 = load i64, i64* %arrayidx2.i8.11.i, align 8, !tbaa !3
  %sub.i9.11.i = sub i64 %sub8.i.11.i261, %82
  %xor.i.i10.11.i = xor i64 %82, %sub8.i.11.i261
  %xor1.i.i11.11.i = xor i64 %sub.i9.11.i, %82
  %or.i.i12.11.i = or i64 %xor1.i.i11.11.i, %xor.i.i10.11.i
  %xor2.i.i13.11.i = xor i64 %or.i.i12.11.i, %sub8.i.11.i261
  %shr.i.i14.11.i = lshr i64 %xor2.i.i13.11.i, 63
  %conv.i.i15.11.i = trunc i64 %shr.i.i14.11.i to i32
  %sub.i.i.i16.11.i = sub i64 0, %sub.i9.11.i
  %or.i.i.i17.11.i = or i64 %sub.i9.11.i, %sub.i.i.i16.11.i
  %shr.i.i.i18.11.i = lshr i64 %or.i.i.i17.11.i, 63
  %conv.i.i.i19.11.i = trunc i64 %shr.i.i.i18.11.i to i32
  %xor.i26.i20.11.i = xor i32 %conv.i.i.i19.11.i, 1
  %and.i21.11.i = and i32 %xor.i26.i20.11.i, %or.i22.10.i
  %or.i22.11.i = or i32 %and.i21.11.i, %conv.i.i15.11.i
  %conv.i23.11.i = zext i32 %or.i22.10.i to i64
  %sub8.i24.11.i = sub i64 %sub.i9.11.i, %conv.i23.11.i
  store i64 %sub8.i24.11.i, i64* %arrayidx.i.11.i244, align 8, !tbaa !3
  %arrayidx2.i8.12.i = getelementptr inbounds [14 x i64], [14 x i64]* %tt2, i64 0, i64 12
  %83 = load i64, i64* %arrayidx2.i8.12.i, align 16, !tbaa !3
  %sub.i9.12.i = sub i64 %sub8.i.12.i279, %83
  %xor.i.i10.12.i = xor i64 %83, %sub8.i.12.i279
  %xor1.i.i11.12.i = xor i64 %sub.i9.12.i, %83
  %or.i.i12.12.i = or i64 %xor1.i.i11.12.i, %xor.i.i10.12.i
  %xor2.i.i13.12.i = xor i64 %or.i.i12.12.i, %sub8.i.12.i279
  %shr.i.i14.12.i = lshr i64 %xor2.i.i13.12.i, 63
  %conv.i.i15.12.i = trunc i64 %shr.i.i14.12.i to i32
  %sub.i.i.i16.12.i = sub i64 0, %sub.i9.12.i
  %or.i.i.i17.12.i = or i64 %sub.i9.12.i, %sub.i.i.i16.12.i
  %shr.i.i.i18.12.i = lshr i64 %or.i.i.i17.12.i, 63
  %conv.i.i.i19.12.i = trunc i64 %shr.i.i.i18.12.i to i32
  %xor.i26.i20.12.i = xor i32 %conv.i.i.i19.12.i, 1
  %and.i21.12.i = and i32 %xor.i26.i20.12.i, %or.i22.11.i
  %or.i22.12.i = or i32 %and.i21.12.i, %conv.i.i15.12.i
  %conv.i23.12.i = zext i32 %or.i22.11.i to i64
  %sub8.i24.12.i = sub i64 %sub.i9.12.i, %conv.i23.12.i
  store i64 %sub8.i24.12.i, i64* %arrayidx.i.12.i262, align 16, !tbaa !3
  %arrayidx2.i8.13.i = getelementptr inbounds [14 x i64], [14 x i64]* %tt2, i64 0, i64 13
  %84 = load i64, i64* %arrayidx2.i8.13.i, align 8, !tbaa !3
  %sub.i9.13.i = sub i64 %sub8.i.13.i284, %84
  %conv.i23.13.i = zext i32 %or.i22.12.i to i64
  %sub8.i24.13.i = sub i64 %sub.i9.13.i, %conv.i23.13.i
  store i64 %sub8.i24.13.i, i64* %arrayidx.i.13.i280, align 8, !tbaa !3
  %sub.i.i = sub i64 %44, %71
  %xor.i.i.i = xor i64 %71, %44
  %xor1.i.i.i = xor i64 %sub.i.i, %71
  %or.i.i.i = or i64 %xor1.i.i.i, %xor.i.i.i
  %xor2.i.i.i = xor i64 %or.i.i.i, %44
  %shr.i.i.i = lshr i64 %xor2.i.i.i, 63
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  store i64 %sub.i.i, i64* %arraydecay13, align 16, !tbaa !3
  %sub.i.1.i = sub i64 %46, %72
  %xor.i.i.1.i = xor i64 %72, %46
  %xor1.i.i.1.i = xor i64 %sub.i.1.i, %72
  %or.i.i.1.i = or i64 %xor1.i.i.1.i, %xor.i.i.1.i
  %xor2.i.i.1.i43 = xor i64 %or.i.i.1.i, %46
  %shr.i.i.1.i = lshr i64 %xor2.i.i.1.i43, 63
  %conv.i.i.1.i = trunc i64 %shr.i.i.1.i to i32
  %sub.i.i.i.1.i = sub i64 0, %sub.i.1.i
  %or.i.i.i.1.i = or i64 %sub.i.1.i, %sub.i.i.i.1.i
  %shr.i.i.i.1.i = lshr i64 %or.i.i.i.1.i, 63
  %conv.i.i.i.1.i = trunc i64 %shr.i.i.i.1.i to i32
  %xor.i26.i.1.i = xor i32 %conv.i.i.i.1.i, 1
  %and.i.1.i = and i32 %xor.i26.i.1.i, %conv.i.i.i
  %or.i.1.i = or i32 %and.i.1.i, %conv.i.i.1.i
  %sub8.i.1.i = sub i64 %sub.i.1.i, %shr.i.i.i
  store i64 %sub8.i.1.i, i64* %arrayidx2.i.1.i66, align 8, !tbaa !3
  %sub.i.2.i = sub i64 %48, %73
  %xor.i.i.2.i = xor i64 %73, %48
  %xor1.i.i.2.i = xor i64 %sub.i.2.i, %73
  %or.i.i.2.i = or i64 %xor1.i.i.2.i, %xor.i.i.2.i
  %xor2.i.i.2.i46 = xor i64 %or.i.i.2.i, %48
  %shr.i.i.2.i = lshr i64 %xor2.i.i.2.i46, 63
  %conv.i.i.2.i = trunc i64 %shr.i.i.2.i to i32
  %sub.i.i.i.2.i = sub i64 0, %sub.i.2.i
  %or.i.i.i.2.i = or i64 %sub.i.2.i, %sub.i.i.i.2.i
  %shr.i.i.i.2.i = lshr i64 %or.i.i.i.2.i, 63
  %conv.i.i.i.2.i = trunc i64 %shr.i.i.i.2.i to i32
  %xor.i26.i.2.i = xor i32 %conv.i.i.i.2.i, 1
  %and.i.2.i = and i32 %xor.i26.i.2.i, %or.i.1.i
  %or.i.2.i = or i32 %and.i.2.i, %conv.i.i.2.i
  %conv.i.2.i = zext i32 %or.i.1.i to i64
  %sub8.i.2.i = sub i64 %sub.i.2.i, %conv.i.2.i
  store i64 %sub8.i.2.i, i64* %arrayidx2.i.2.i83, align 16, !tbaa !3
  %sub.i.3.i = sub i64 %50, %74
  %xor.i.i.3.i = xor i64 %74, %50
  %xor1.i.i.3.i = xor i64 %sub.i.3.i, %74
  %or.i.i.3.i = or i64 %xor1.i.i.3.i, %xor.i.i.3.i
  %xor2.i.i.3.i49 = xor i64 %or.i.i.3.i, %50
  %shr.i.i.3.i = lshr i64 %xor2.i.i.3.i49, 63
  %conv.i.i.3.i = trunc i64 %shr.i.i.3.i to i32
  %sub.i.i.i.3.i = sub i64 0, %sub.i.3.i
  %or.i.i.i.3.i = or i64 %sub.i.3.i, %sub.i.i.i.3.i
  %shr.i.i.i.3.i = lshr i64 %or.i.i.i.3.i, 63
  %conv.i.i.i.3.i = trunc i64 %shr.i.i.i.3.i to i32
  %xor.i26.i.3.i = xor i32 %conv.i.i.i.3.i, 1
  %and.i.3.i = and i32 %xor.i26.i.3.i, %or.i.2.i
  %or.i.3.i = or i32 %and.i.3.i, %conv.i.i.3.i
  %conv.i.3.i = zext i32 %or.i.2.i to i64
  %sub8.i.3.i = sub i64 %sub.i.3.i, %conv.i.3.i
  store i64 %sub8.i.3.i, i64* %arrayidx2.i.3.i101, align 8, !tbaa !3
  %sub.i.4.i = sub i64 %52, %75
  %xor.i.i.4.i = xor i64 %75, %52
  %xor1.i.i.4.i = xor i64 %sub.i.4.i, %75
  %or.i.i.4.i = or i64 %xor1.i.i.4.i, %xor.i.i.4.i
  %xor2.i.i.4.i52 = xor i64 %or.i.i.4.i, %52
  %shr.i.i.4.i = lshr i64 %xor2.i.i.4.i52, 63
  %conv.i.i.4.i = trunc i64 %shr.i.i.4.i to i32
  %sub.i.i.i.4.i = sub i64 0, %sub.i.4.i
  %or.i.i.i.4.i = or i64 %sub.i.4.i, %sub.i.i.i.4.i
  %shr.i.i.i.4.i = lshr i64 %or.i.i.i.4.i, 63
  %conv.i.i.i.4.i = trunc i64 %shr.i.i.i.4.i to i32
  %xor.i26.i.4.i = xor i32 %conv.i.i.i.4.i, 1
  %and.i.4.i = and i32 %xor.i26.i.4.i, %or.i.3.i
  %or.i.4.i = or i32 %and.i.4.i, %conv.i.i.4.i
  %conv.i.4.i = zext i32 %or.i.3.i to i64
  %sub8.i.4.i = sub i64 %sub.i.4.i, %conv.i.4.i
  store i64 %sub8.i.4.i, i64* %arrayidx2.i.4.i119, align 16, !tbaa !3
  %sub.i.5.i = sub i64 %54, %76
  %xor.i.i.5.i = xor i64 %76, %54
  %xor1.i.i.5.i = xor i64 %sub.i.5.i, %76
  %or.i.i.5.i = or i64 %xor1.i.i.5.i, %xor.i.i.5.i
  %xor2.i.i.5.i55 = xor i64 %or.i.i.5.i, %54
  %shr.i.i.5.i = lshr i64 %xor2.i.i.5.i55, 63
  %conv.i.i.5.i = trunc i64 %shr.i.i.5.i to i32
  %sub.i.i.i.5.i = sub i64 0, %sub.i.5.i
  %or.i.i.i.5.i = or i64 %sub.i.5.i, %sub.i.i.i.5.i
  %shr.i.i.i.5.i = lshr i64 %or.i.i.i.5.i, 63
  %conv.i.i.i.5.i = trunc i64 %shr.i.i.i.5.i to i32
  %xor.i26.i.5.i = xor i32 %conv.i.i.i.5.i, 1
  %and.i.5.i = and i32 %xor.i26.i.5.i, %or.i.4.i
  %or.i.5.i = or i32 %and.i.5.i, %conv.i.i.5.i
  %conv.i.5.i = zext i32 %or.i.4.i to i64
  %sub8.i.5.i = sub i64 %sub.i.5.i, %conv.i.5.i
  store i64 %sub8.i.5.i, i64* %arrayidx2.i.5.i137, align 8, !tbaa !3
  %sub.i.6.i = sub i64 %56, %77
  %xor.i.i.6.i = xor i64 %77, %56
  %xor1.i.i.6.i = xor i64 %sub.i.6.i, %77
  %or.i.i.6.i = or i64 %xor1.i.i.6.i, %xor.i.i.6.i
  %xor2.i.i.6.i = xor i64 %or.i.i.6.i, %56
  %shr.i.i.6.i = lshr i64 %xor2.i.i.6.i, 63
  %conv.i.i.6.i = trunc i64 %shr.i.i.6.i to i32
  %sub.i.i.i.6.i = sub i64 0, %sub.i.6.i
  %or.i.i.i.6.i = or i64 %sub.i.6.i, %sub.i.i.i.6.i
  %shr.i.i.i.6.i = lshr i64 %or.i.i.i.6.i, 63
  %conv.i.i.i.6.i = trunc i64 %shr.i.i.i.6.i to i32
  %xor.i26.i.6.i = xor i32 %conv.i.i.i.6.i, 1
  %and.i.6.i = and i32 %xor.i26.i.6.i, %or.i.5.i
  %or.i.6.i = or i32 %and.i.6.i, %conv.i.i.6.i
  %conv.i.6.i = zext i32 %or.i.5.i to i64
  %sub8.i.6.i = sub i64 %sub.i.6.i, %conv.i.6.i
  store i64 %sub8.i.6.i, i64* %arrayidx2.i.6.i155, align 16, !tbaa !3
  %sub.i.7.i = sub i64 %58, %78
  %xor.i.i.7.i = xor i64 %78, %58
  %xor1.i.i.7.i = xor i64 %sub.i.7.i, %78
  %or.i.i.7.i = or i64 %xor1.i.i.7.i, %xor.i.i.7.i
  %xor2.i.i.7.i = xor i64 %or.i.i.7.i, %58
  %shr.i.i.7.i = lshr i64 %xor2.i.i.7.i, 63
  %conv.i.i.7.i = trunc i64 %shr.i.i.7.i to i32
  %sub.i.i.i.7.i = sub i64 0, %sub.i.7.i
  %or.i.i.i.7.i = or i64 %sub.i.7.i, %sub.i.i.i.7.i
  %shr.i.i.i.7.i = lshr i64 %or.i.i.i.7.i, 63
  %conv.i.i.i.7.i = trunc i64 %shr.i.i.i.7.i to i32
  %xor.i26.i.7.i = xor i32 %conv.i.i.i.7.i, 1
  %and.i.7.i = and i32 %xor.i26.i.7.i, %or.i.6.i
  %or.i.7.i = or i32 %and.i.7.i, %conv.i.i.7.i
  %conv.i.7.i = zext i32 %or.i.6.i to i64
  %sub8.i.7.i = sub i64 %sub.i.7.i, %conv.i.7.i
  store i64 %sub8.i.7.i, i64* %arrayidx2.i.7.i173, align 8, !tbaa !3
  %sub.i.8.i = sub i64 %60, %79
  %xor.i.i.8.i = xor i64 %79, %60
  %xor1.i.i.8.i = xor i64 %sub.i.8.i, %79
  %or.i.i.8.i = or i64 %xor1.i.i.8.i, %xor.i.i.8.i
  %xor2.i.i.8.i = xor i64 %or.i.i.8.i, %60
  %shr.i.i.8.i = lshr i64 %xor2.i.i.8.i, 63
  %conv.i.i.8.i = trunc i64 %shr.i.i.8.i to i32
  %sub.i.i.i.8.i = sub i64 0, %sub.i.8.i
  %or.i.i.i.8.i = or i64 %sub.i.8.i, %sub.i.i.i.8.i
  %shr.i.i.i.8.i = lshr i64 %or.i.i.i.8.i, 63
  %conv.i.i.i.8.i = trunc i64 %shr.i.i.i.8.i to i32
  %xor.i26.i.8.i = xor i32 %conv.i.i.i.8.i, 1
  %and.i.8.i = and i32 %xor.i26.i.8.i, %or.i.7.i
  %or.i.8.i = or i32 %and.i.8.i, %conv.i.i.8.i
  %conv.i.8.i = zext i32 %or.i.7.i to i64
  %sub8.i.8.i = sub i64 %sub.i.8.i, %conv.i.8.i
  store i64 %sub8.i.8.i, i64* %arrayidx2.i.8.i191, align 16, !tbaa !3
  %sub.i.9.i = sub i64 %62, %80
  %xor.i.i.9.i = xor i64 %80, %62
  %xor1.i.i.9.i = xor i64 %sub.i.9.i, %80
  %or.i.i.9.i = or i64 %xor1.i.i.9.i, %xor.i.i.9.i
  %xor2.i.i.9.i = xor i64 %or.i.i.9.i, %62
  %shr.i.i.9.i = lshr i64 %xor2.i.i.9.i, 63
  %conv.i.i.9.i = trunc i64 %shr.i.i.9.i to i32
  %sub.i.i.i.9.i = sub i64 0, %sub.i.9.i
  %or.i.i.i.9.i = or i64 %sub.i.9.i, %sub.i.i.i.9.i
  %shr.i.i.i.9.i = lshr i64 %or.i.i.i.9.i, 63
  %conv.i.i.i.9.i = trunc i64 %shr.i.i.i.9.i to i32
  %xor.i26.i.9.i = xor i32 %conv.i.i.i.9.i, 1
  %and.i.9.i = and i32 %xor.i26.i.9.i, %or.i.8.i
  %or.i.9.i = or i32 %and.i.9.i, %conv.i.i.9.i
  %conv.i.9.i = zext i32 %or.i.8.i to i64
  %sub8.i.9.i = sub i64 %sub.i.9.i, %conv.i.9.i
  %sub.i.10.i = sub i64 %64, %81
  %xor.i.i.10.i = xor i64 %81, %64
  %xor1.i.i.10.i = xor i64 %sub.i.10.i, %81
  %or.i.i.10.i = or i64 %xor1.i.i.10.i, %xor.i.i.10.i
  %xor2.i.i.10.i = xor i64 %or.i.i.10.i, %64
  %shr.i.i.10.i = lshr i64 %xor2.i.i.10.i, 63
  %conv.i.i.10.i = trunc i64 %shr.i.i.10.i to i32
  %sub.i.i.i.10.i = sub i64 0, %sub.i.10.i
  %or.i.i.i.10.i = or i64 %sub.i.10.i, %sub.i.i.i.10.i
  %shr.i.i.i.10.i = lshr i64 %or.i.i.i.10.i, 63
  %conv.i.i.i.10.i = trunc i64 %shr.i.i.i.10.i to i32
  %xor.i26.i.10.i = xor i32 %conv.i.i.i.10.i, 1
  %and.i.10.i = and i32 %xor.i26.i.10.i, %or.i.9.i
  %or.i.10.i = or i32 %and.i.10.i, %conv.i.i.10.i
  %conv.i.10.i = zext i32 %or.i.9.i to i64
  %sub8.i.10.i = sub i64 %sub.i.10.i, %conv.i.10.i
  %sub.i.11.i = sub i64 %66, %82
  %xor.i.i.11.i = xor i64 %82, %66
  %xor1.i.i.11.i = xor i64 %sub.i.11.i, %82
  %or.i.i.11.i = or i64 %xor1.i.i.11.i, %xor.i.i.11.i
  %xor2.i.i.11.i = xor i64 %or.i.i.11.i, %66
  %shr.i.i.11.i = lshr i64 %xor2.i.i.11.i, 63
  %conv.i.i.11.i = trunc i64 %shr.i.i.11.i to i32
  %sub.i.i.i.11.i = sub i64 0, %sub.i.11.i
  %or.i.i.i.11.i = or i64 %sub.i.11.i, %sub.i.i.i.11.i
  %shr.i.i.i.11.i = lshr i64 %or.i.i.i.11.i, 63
  %conv.i.i.i.11.i = trunc i64 %shr.i.i.i.11.i to i32
  %xor.i26.i.11.i = xor i32 %conv.i.i.i.11.i, 1
  %and.i.11.i = and i32 %xor.i26.i.11.i, %or.i.10.i
  %or.i.11.i = or i32 %and.i.11.i, %conv.i.i.11.i
  %conv.i.11.i = zext i32 %or.i.10.i to i64
  %sub8.i.11.i = sub i64 %sub.i.11.i, %conv.i.11.i
  %sub.i.12.i = sub i64 %68, %83
  %xor.i.i.12.i = xor i64 %83, %68
  %xor1.i.i.12.i = xor i64 %sub.i.12.i, %83
  %or.i.i.12.i = or i64 %xor1.i.i.12.i, %xor.i.i.12.i
  %xor2.i.i.12.i = xor i64 %or.i.i.12.i, %68
  %shr.i.i.12.i = lshr i64 %xor2.i.i.12.i, 63
  %conv.i.i.12.i = trunc i64 %shr.i.i.12.i to i32
  %sub.i.i.i.12.i = sub i64 0, %sub.i.12.i
  %or.i.i.i.12.i = or i64 %sub.i.12.i, %sub.i.i.i.12.i
  %shr.i.i.i.12.i = lshr i64 %or.i.i.i.12.i, 63
  %conv.i.i.i.12.i = trunc i64 %shr.i.i.i.12.i to i32
  %xor.i26.i.12.i = xor i32 %conv.i.i.i.12.i, 1
  %and.i.12.i = and i32 %xor.i26.i.12.i, %or.i.11.i
  %or.i.12.i = or i32 %and.i.12.i, %conv.i.i.12.i
  %conv.i.12.i = zext i32 %or.i.11.i to i64
  %sub8.i.12.i = sub i64 %sub.i.12.i, %conv.i.12.i
  %sub.i.13.i = sub i64 %70, %84
  %xor.i.i.13.i = xor i64 %84, %70
  %xor1.i.i.13.i = xor i64 %sub.i.13.i, %84
  %or.i.i.13.i = or i64 %xor1.i.i.13.i, %xor.i.i.13.i
  %xor2.i.i.13.i = xor i64 %or.i.i.13.i, %70
  %shr.i.i.13.i = lshr i64 %xor2.i.i.13.i, 63
  %conv.i.i.13.i = trunc i64 %shr.i.i.13.i to i32
  %sub.i.i.i.13.i = sub i64 0, %sub.i.13.i
  %or.i.i.i.13.i = or i64 %sub.i.13.i, %sub.i.i.i.13.i
  %shr.i.i.i.13.i = lshr i64 %or.i.i.i.13.i, 63
  %conv.i.i.i.13.i = trunc i64 %shr.i.i.i.13.i to i32
  %xor.i26.i.13.i = xor i32 %conv.i.i.i.13.i, 1
  %and.i.13.i = and i32 %xor.i26.i.13.i, %or.i.12.i
  %or.i.13.i = or i32 %and.i.13.i, %conv.i.i.13.i
  %conv.i.13.i = zext i32 %or.i.12.i to i64
  %sub8.i.13.i = sub i64 %sub.i.13.i, %conv.i.13.i
  %conv.i = zext i32 %or.i.13.i to i64
  %sub.i = sub nsw i64 0, %conv.i
  %and.3.i = and i64 %sub.i, -161717841442111489
  %and.4.i = and i64 %sub.i, 8918917783347572387
  %and.5.i = and i64 %sub.i, 7853257225132122198
  %and.6.i = and i64 %sub.i, 620258357900100
  %add3.i.i.i = sub i64 %sub8.i.7.i, %conv.i
  store i64 %add3.i.i.i, i64* %arrayidx2.i.7.i173, align 8, !tbaa !3
  %xor.i23.i.i.i = xor i64 %add3.i.i.i, %sub8.i.7.i
  %xor1.i24.i.i.i = xor i64 %sub8.i.7.i, %sub.i
  %or.i25.i.i.i = or i64 %xor.i23.i.i.i, %xor1.i24.i.i.i
  %xor2.i26.i.i.i = xor i64 %or.i25.i.i.i, %add3.i.i.i
  %or29.i.i.i = lshr i64 %xor2.i26.i.i.i, 63
  %add.i.1.i.i = add i64 %or29.i.i.i, %sub8.i.8.i
  %add3.i.1.i.i = sub i64 %add.i.1.i.i, %conv.i
  store i64 %add3.i.1.i.i, i64* %arrayidx2.i.8.i191, align 16, !tbaa !3
  %85 = xor i64 %add.i.1.i.i, -9223372036854775808
  %xor2.i.i.1.i.i = and i64 %85, %sub8.i.8.i
  %xor.i23.i.1.i.i = xor i64 %add3.i.1.i.i, %add.i.1.i.i
  %xor1.i24.i.1.i.i = xor i64 %add.i.1.i.i, %sub.i
  %or.i25.i.1.i.i = or i64 %xor.i23.i.1.i.i, %xor1.i24.i.1.i.i
  %xor2.i26.i.1.i.i = xor i64 %or.i25.i.1.i.i, %add3.i.1.i.i
  %shr.i30.i.1.i.i = or i64 %xor2.i26.i.1.i.i, %xor2.i.i.1.i.i
  %or29.i.1.i.i = lshr i64 %shr.i30.i.1.i.i, 63
  %add.i.2.i.i = add i64 %or29.i.1.i.i, %sub8.i.9.i
  %add3.i.2.i.i = sub i64 %add.i.2.i.i, %conv.i
  store i64 %add3.i.2.i.i, i64* %arrayidx2.i.9.i209, align 8, !tbaa !3
  %86 = xor i64 %add.i.2.i.i, -9223372036854775808
  %xor2.i.i.2.i.i = and i64 %86, %sub8.i.9.i
  %xor.i23.i.2.i.i = xor i64 %add3.i.2.i.i, %add.i.2.i.i
  %xor1.i24.i.2.i.i = xor i64 %add.i.2.i.i, %sub.i
  %or.i25.i.2.i.i = or i64 %xor.i23.i.2.i.i, %xor1.i24.i.2.i.i
  %xor2.i26.i.2.i.i = xor i64 %or.i25.i.2.i.i, %add3.i.2.i.i
  %shr.i30.i.2.i.i = or i64 %xor2.i26.i.2.i.i, %xor2.i.i.2.i.i
  %or29.i.2.i.i = lshr i64 %shr.i30.i.2.i.i, 63
  %add.i.3.i.i = add i64 %or29.i.2.i.i, %sub8.i.10.i
  %add3.i.3.i.i = add i64 %add.i.3.i.i, %and.3.i
  store i64 %add3.i.3.i.i, i64* %arrayidx2.i.10.i227, align 16, !tbaa !3
  %87 = xor i64 %add.i.3.i.i, -9223372036854775808
  %xor2.i.i.3.i.i = and i64 %87, %sub8.i.10.i
  %xor.i23.i.3.i.i = xor i64 %add3.i.3.i.i, %add.i.3.i.i
  %xor1.i24.i.3.i.i = xor i64 %add.i.3.i.i, %sub.i
  %or.i25.i.3.i.i = or i64 %xor.i23.i.3.i.i, %xor1.i24.i.3.i.i
  %xor2.i26.i.3.i.i = xor i64 %or.i25.i.3.i.i, %add3.i.3.i.i
  %shr.i30.i.3.i.i = or i64 %xor2.i26.i.3.i.i, %xor2.i.i.3.i.i
  %or29.i.3.i.i = lshr i64 %shr.i30.i.3.i.i, 63
  %add.i.4.i.i = add i64 %or29.i.3.i.i, %sub8.i.11.i
  %add3.i.4.i.i = add i64 %add.i.4.i.i, %and.4.i
  store i64 %add3.i.4.i.i, i64* %arrayidx2.i.11.i245, align 8, !tbaa !3
  %88 = xor i64 %add.i.4.i.i, -9223372036854775808
  %xor2.i.i.4.i.i = and i64 %88, %sub8.i.11.i
  %89 = xor i64 %add3.i.4.i.i, -9223372036854775808
  %xor2.i26.i.4.i.i = and i64 %89, %add.i.4.i.i
  %shr.i30.i.4.i.i = or i64 %xor2.i26.i.4.i.i, %xor2.i.i.4.i.i
  %or29.i.4.i.i = lshr i64 %shr.i30.i.4.i.i, 63
  %add.i.5.i.i = add i64 %or29.i.4.i.i, %sub8.i.12.i
  %add3.i.5.i.i = add i64 %add.i.5.i.i, %and.5.i
  store i64 %add3.i.5.i.i, i64* %arrayidx2.i.12.i263, align 16, !tbaa !3
  %90 = xor i64 %add.i.5.i.i, -9223372036854775808
  %xor2.i.i.5.i.i = and i64 %90, %sub8.i.12.i
  %91 = xor i64 %add3.i.5.i.i, -9223372036854775808
  %xor2.i26.i.5.i.i = and i64 %91, %add.i.5.i.i
  %shr.i30.i.5.i.i = or i64 %xor2.i26.i.5.i.i, %xor2.i.i.5.i.i
  %or29.i.5.i.i = lshr i64 %shr.i30.i.5.i.i, 63
  %add.i.6.i.i = add i64 %sub8.i.13.i, %and.6.i
  %add3.i.6.i.i = add i64 %add.i.6.i.i, %or29.i.5.i.i
  store i64 %add3.i.6.i.i, i64* %arrayidx2.i.13.i281, align 8, !tbaa !3
  %arraydecay30 = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 1, i64 0
  call void @rdc_mont(i64* nonnull %arraydecay21, i64* nonnull %arraydecay30) #10
  %arraydecay33 = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 0, i64 0
  call void @rdc_mont(i64* nonnull %arraydecay13, i64* %arraydecay33) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @fp2inv434_mont([7 x i64]* %a) local_unnamed_addr #4 {
entry:
  %tt.i = alloca [7 x i64], align 16
  %temp.i = alloca [14 x i64], align 16
  %t1 = alloca [2 x [7 x i64]], align 16
  %0 = bitcast [2 x [7 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %0) #10
  %arraydecay = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 0, i64 0
  %1 = bitcast [14 x i64]* %temp.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 112, i1 false) #10
  %arraydecay.i = getelementptr inbounds [14 x i64], [14 x i64]* %temp.i, i64 0, i64 0
  call void @mp_mul(i64* %arraydecay, i64* %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay2) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %1) #10
  %arraydecay4 = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 0
  %arraydecay6 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay4, i64* nonnull %arraydecay4, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay6) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %1) #10
  call void @fpadd434(i64* nonnull %arraydecay2, i64* nonnull %arraydecay6, i64* nonnull %arraydecay2) #10
  %2 = bitcast [7 x i64]* %tt.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %2) #10
  %arraydecay.i37 = getelementptr inbounds [7 x i64], [7 x i64]* %tt.i, i64 0, i64 0
  %3 = bitcast [2 x [7 x i64]]* %t1 to <4 x i64>*
  %4 = load <4 x i64>, <4 x i64>* %3, align 16, !tbaa !3
  %5 = bitcast [7 x i64]* %tt.i to <4 x i64>*
  store <4 x i64> %4, <4 x i64>* %5, align 16, !tbaa !3
  %arrayidx.4.i.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 0, i64 4
  %6 = load i64, i64* %arrayidx.4.i.i, align 16, !tbaa !3
  %arrayidx2.4.i.i = getelementptr inbounds [7 x i64], [7 x i64]* %tt.i, i64 0, i64 4
  store i64 %6, i64* %arrayidx2.4.i.i, align 16, !tbaa !3
  %arrayidx.5.i.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 0, i64 5
  %7 = load i64, i64* %arrayidx.5.i.i, align 8, !tbaa !3
  %arrayidx2.5.i.i = getelementptr inbounds [7 x i64], [7 x i64]* %tt.i, i64 0, i64 5
  store i64 %7, i64* %arrayidx2.5.i.i, align 8, !tbaa !3
  %arrayidx.6.i.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 0, i64 6
  %8 = load i64, i64* %arrayidx.6.i.i, align 16, !tbaa !3
  %arrayidx2.6.i.i = getelementptr inbounds [7 x i64], [7 x i64]* %tt.i, i64 0, i64 6
  store i64 %8, i64* %arrayidx2.6.i.i, align 16, !tbaa !3
  call void @fpinv434_chain_mont(i64* nonnull %arraydecay.i37) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay.i37, i64* nonnull %arraydecay.i37, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay.i37) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %1) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay.i37, i64* nonnull %arraydecay.i37, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay.i37) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %1) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2, i64* nonnull %arraydecay.i37, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay2) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %2) #10
  call void @fpneg434(i64* nonnull %arraydecay4) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* %arraydecay, i64* nonnull %arraydecay2, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %1) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay4, i64* nonnull %arraydecay2, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay4) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @to_fp2mont([7 x i64]* %a, [7 x i64]* %mc) local_unnamed_addr #4 {
entry:
  %temp.i.i = alloca [14 x i64], align 16
  %arraydecay = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [7 x i64], [7 x i64]* %mc, i64 0, i64 0
  %0 = bitcast [14 x i64]* %temp.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 112, i1 false) #10
  %arraydecay.i.i = getelementptr inbounds [14 x i64], [14 x i64]* %temp.i.i, i64 0, i64 0
  call void @mp_mul(i64* %arraydecay, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* %arraydecay2) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %0) #10
  %arraydecay4 = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 0
  %arraydecay6 = getelementptr inbounds [7 x i64], [7 x i64]* %mc, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay4, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay6) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @from_fp2mont([7 x i64]* %ma, [7 x i64]* %c) local_unnamed_addr #4 {
entry:
  %temp.i.i = alloca [14 x i64], align 16
  %one.i = alloca [7 x i64], align 16
  %arraydecay = getelementptr inbounds [7 x i64], [7 x i64]* %ma, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 0, i64 0
  %0 = bitcast [7 x i64]* %one.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 56, i1 false) #10
  %arrayidx.i = getelementptr inbounds [7 x i64], [7 x i64]* %one.i, i64 0, i64 0
  store i64 1, i64* %arrayidx.i, align 16, !tbaa !3
  %1 = bitcast [14 x i64]* %temp.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 112, i1 false) #10
  %arraydecay.i.i = getelementptr inbounds [14 x i64], [14 x i64]* %temp.i.i, i64 0, i64 0
  call void @mp_mul(i64* %arraydecay, i64* nonnull %arrayidx.i, i64* nonnull %arraydecay.i.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* %arraydecay2) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %1) #10
  call void @fpcorrection434(i64* %arraydecay2) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #10
  %arraydecay4 = getelementptr inbounds [7 x i64], [7 x i64]* %ma, i64 1, i64 0
  %arraydecay6 = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 56, i1 false) #10
  store i64 1, i64* %arrayidx.i, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay4, i64* nonnull %arrayidx.i, i64* nonnull %arraydecay.i.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay6) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %1) #10
  call void @fpcorrection434(i64* nonnull %arraydecay6) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #10
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
define zeroext i8 @is_sqr_fp2([7 x i64]* %a, i64* %s) local_unnamed_addr #4 {
entry:
  %temp.i = alloca [14 x i64], align 16
  %a0 = alloca [7 x i64], align 16
  %a1 = alloca [7 x i64], align 16
  %z = alloca [7 x i64], align 16
  %temp = alloca [7 x i64], align 16
  %0 = bitcast [7 x i64]* %a0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #10
  %1 = bitcast [7 x i64]* %a1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1) #10
  %2 = bitcast [7 x i64]* %z to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %2) #10
  %3 = bitcast [7 x i64]* %temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10
  %arraydecay = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [7 x i64], [7 x i64]* %a0, i64 0, i64 0
  %4 = bitcast [14 x i64]* %temp.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %4) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %4, i8 0, i64 112, i1 false) #10
  %arraydecay.i = getelementptr inbounds [14 x i64], [14 x i64]* %temp.i, i64 0, i64 0
  call void @mp_mul(i64* %arraydecay, i64* %arraydecay, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay1) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %4) #10
  %arraydecay3 = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 0
  %arraydecay4 = getelementptr inbounds [7 x i64], [7 x i64]* %a1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %4) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %4, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay3, i64* nonnull %arraydecay3, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay4) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %4) #10
  %arraydecay7 = getelementptr inbounds [7 x i64], [7 x i64]* %z, i64 0, i64 0
  call void @fpadd434(i64* nonnull %arraydecay1, i64* nonnull %arraydecay4, i64* nonnull %arraydecay7) #10
  %5 = bitcast [7 x i64]* %z to <4 x i64>*
  %6 = load <4 x i64>, <4 x i64>* %5, align 16, !tbaa !3
  %7 = bitcast i64* %s to <4 x i64>*
  store <4 x i64> %6, <4 x i64>* %7, align 8, !tbaa !3
  %arrayidx.4.i = getelementptr inbounds [7 x i64], [7 x i64]* %z, i64 0, i64 4
  %8 = load i64, i64* %arrayidx.4.i, align 16, !tbaa !3
  %arrayidx2.4.i = getelementptr inbounds i64, i64* %s, i64 4
  store i64 %8, i64* %arrayidx2.4.i, align 8, !tbaa !3
  %arrayidx.5.i = getelementptr inbounds [7 x i64], [7 x i64]* %z, i64 0, i64 5
  %9 = load i64, i64* %arrayidx.5.i, align 8, !tbaa !3
  %arrayidx2.5.i = getelementptr inbounds i64, i64* %s, i64 5
  store i64 %9, i64* %arrayidx2.5.i, align 8, !tbaa !3
  %arrayidx.6.i = getelementptr inbounds [7 x i64], [7 x i64]* %z, i64 0, i64 6
  %10 = load i64, i64* %arrayidx.6.i, align 16, !tbaa !3
  %arrayidx2.6.i = getelementptr inbounds i64, i64* %s, i64 6
  store i64 %10, i64* %arrayidx2.6.i, align 8, !tbaa !3
  br label %for.body

for.cond9.preheader:                              ; preds = %for.body
  %arraydecay12 = getelementptr inbounds [7 x i64], [7 x i64]* %temp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %4) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %4, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* %s, i64* %s, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay12) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %4) #10
  br label %for.body11

for.body:                                         ; preds = %for.body, %entry
  %i.046 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %4) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %4, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* %s, i64* %s, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* %s) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %4) #10
  %inc = add nuw nsw i32 %i.046, 1
  %exitcond47 = icmp eq i32 %inc, 214
  br i1 %exitcond47, label %for.cond9.preheader, label %for.body

for.body11:                                       ; preds = %for.body11, %for.cond9.preheader
  %i.145 = phi i32 [ 0, %for.cond9.preheader ], [ %inc15, %for.body11 ]
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %4) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %4, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* %s, i64* nonnull %arraydecay12, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* %s) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %4) #10
  %inc15 = add nuw nsw i32 %i.145, 1
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %4) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %4, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* %s, i64* %s, i64* nonnull %arraydecay.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay12) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %4) #10
  %exitcond = icmp eq i32 %inc15, 137
  br i1 %exitcond, label %for.end16, label %for.body11

for.end16:                                        ; preds = %for.body11
  call void @fpcorrection434(i64* nonnull %arraydecay12) #10
  call void @fpcorrection434(i64* nonnull %arraydecay7) #10
  %call = call i32 @memcmp(i8* nonnull %3, i8* nonnull %2, i64 55)
  %cmp22 = icmp eq i32 %call, 0
  %. = zext i1 %cmp22 to i8
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #10
  ret i8 %.
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #7

; Function Attrs: nounwind ssp uwtable
define void @xDBL(%struct.point_proj* %P, %struct.point_proj* %Q, [7 x i64]* %A24plus, [7 x i64]* %C24) local_unnamed_addr #4 {
entry:
  %t0 = alloca [2 x [7 x i64]], align 16
  %t1 = alloca [2 x [7 x i64]], align 16
  %0 = bitcast [2 x [7 x i64]]* %t0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %0) #10
  %1 = bitcast [2 x [7 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %1) #10
  %arraydecay = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0
  %arraydecay1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 0
  %arraydecay2 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t0, i64 0, i64 0
  %arraydecay.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds [7 x i64], [7 x i64]* %arraydecay1, i64 0, i64 0
  %arraydecay4.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t0, i64 0, i64 0, i64 0
  call void @mp_sub434_p2(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i) #10
  %arraydecay6.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 1, i64 0
  %arraydecay8.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 1, i64 0
  %arraydecay10.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t0, i64 0, i64 1, i64 0
  call void @mp_sub434_p2(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i) #10
  %arraydecay7 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 0
  call fastcc void @mp2_add([7 x i64]* %arraydecay, [7 x i64]* nonnull %arraydecay1, [7 x i64]* nonnull %arraydecay7)
  call void @fp2sqr434_mont([7 x i64]* nonnull %arraydecay2, [7 x i64]* nonnull %arraydecay2)
  call void @fp2sqr434_mont([7 x i64]* nonnull %arraydecay7, [7 x i64]* nonnull %arraydecay7)
  %arraydecay14 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 0
  call void @fp2mul434_mont([7 x i64]* %C24, [7 x i64]* nonnull %arraydecay2, [7 x i64]* nonnull %arraydecay14)
  %arraydecay19 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay7, [7 x i64]* nonnull %arraydecay14, [7 x i64]* %arraydecay19)
  %arraydecay.i44 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 0, i64 0
  call void @mp_sub434_p2(i64* nonnull %arraydecay.i44, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay.i44) #10
  %arraydecay6.i47 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 1, i64 0
  call void @mp_sub434_p2(i64* nonnull %arraydecay6.i47, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay6.i47) #10
  call void @fp2mul434_mont([7 x i64]* %A24plus, [7 x i64]* nonnull %arraydecay7, [7 x i64]* nonnull %arraydecay2)
  call fastcc void @mp2_add([7 x i64]* nonnull %arraydecay14, [7 x i64]* nonnull %arraydecay2, [7 x i64]* nonnull %arraydecay14)
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay14, [7 x i64]* nonnull %arraydecay7, [7 x i64]* nonnull %arraydecay14)
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %0) #10
  ret void
}

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define internal fastcc void @mp2_add([7 x i64]* nocapture readonly %a, [7 x i64]* nocapture readonly %b, [7 x i64]* nocapture %c) unnamed_addr #3 {
entry:
  %arraydecay = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 0, i64 0
  %0 = load i64, i64* %arraydecay, align 8, !tbaa !3
  %1 = load i64, i64* %arraydecay2, align 8, !tbaa !3
  %add3.i.i = add i64 %1, %0
  store i64 %add3.i.i, i64* %arraydecay4, align 8, !tbaa !3
  %xor.i23.i.i = xor i64 %add3.i.i, %0
  %xor1.i24.i.i = xor i64 %1, %0
  %or.i25.i.i = or i64 %xor.i23.i.i, %xor1.i24.i.i
  %xor2.i26.i.i = xor i64 %or.i25.i.i, %add3.i.i
  %or29.i.i = lshr i64 %xor2.i26.i.i, 63
  %arrayidx.i.1.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 1
  %2 = load i64, i64* %arrayidx.i.1.i, align 8, !tbaa !3
  %add.i.1.i = add i64 %or29.i.i, %2
  %arrayidx2.i.1.i = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 0, i64 1
  %3 = load i64, i64* %arrayidx2.i.1.i, align 8, !tbaa !3
  %add3.i.1.i = add i64 %add.i.1.i, %3
  %arrayidx5.i.1.i = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 0, i64 1
  store i64 %add3.i.1.i, i64* %arrayidx5.i.1.i, align 8, !tbaa !3
  %4 = xor i64 %add.i.1.i, -9223372036854775808
  %xor2.i.i.1.i = and i64 %4, %2
  %xor.i23.i.1.i = xor i64 %add3.i.1.i, %add.i.1.i
  %xor1.i24.i.1.i = xor i64 %add.i.1.i, %3
  %or.i25.i.1.i = or i64 %xor.i23.i.1.i, %xor1.i24.i.1.i
  %xor2.i26.i.1.i = xor i64 %or.i25.i.1.i, %add3.i.1.i
  %shr.i30.i.1.i = or i64 %xor2.i26.i.1.i, %xor2.i.i.1.i
  %or29.i.1.i = lshr i64 %shr.i30.i.1.i, 63
  %arrayidx.i.2.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 2
  %5 = load i64, i64* %arrayidx.i.2.i, align 8, !tbaa !3
  %add.i.2.i = add i64 %or29.i.1.i, %5
  %arrayidx2.i.2.i = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 0, i64 2
  %6 = load i64, i64* %arrayidx2.i.2.i, align 8, !tbaa !3
  %add3.i.2.i = add i64 %add.i.2.i, %6
  %arrayidx5.i.2.i = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 0, i64 2
  store i64 %add3.i.2.i, i64* %arrayidx5.i.2.i, align 8, !tbaa !3
  %7 = xor i64 %add.i.2.i, -9223372036854775808
  %xor2.i.i.2.i = and i64 %7, %5
  %xor.i23.i.2.i = xor i64 %add3.i.2.i, %add.i.2.i
  %xor1.i24.i.2.i = xor i64 %add.i.2.i, %6
  %or.i25.i.2.i = or i64 %xor.i23.i.2.i, %xor1.i24.i.2.i
  %xor2.i26.i.2.i = xor i64 %or.i25.i.2.i, %add3.i.2.i
  %shr.i30.i.2.i = or i64 %xor2.i26.i.2.i, %xor2.i.i.2.i
  %or29.i.2.i = lshr i64 %shr.i30.i.2.i, 63
  %arrayidx.i.3.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 3
  %8 = load i64, i64* %arrayidx.i.3.i, align 8, !tbaa !3
  %add.i.3.i = add i64 %or29.i.2.i, %8
  %arrayidx2.i.3.i = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 0, i64 3
  %9 = load i64, i64* %arrayidx2.i.3.i, align 8, !tbaa !3
  %add3.i.3.i = add i64 %add.i.3.i, %9
  %arrayidx5.i.3.i = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 0, i64 3
  store i64 %add3.i.3.i, i64* %arrayidx5.i.3.i, align 8, !tbaa !3
  %10 = xor i64 %add.i.3.i, -9223372036854775808
  %xor2.i.i.3.i = and i64 %10, %8
  %xor.i23.i.3.i = xor i64 %add3.i.3.i, %add.i.3.i
  %xor1.i24.i.3.i = xor i64 %add.i.3.i, %9
  %or.i25.i.3.i = or i64 %xor.i23.i.3.i, %xor1.i24.i.3.i
  %xor2.i26.i.3.i = xor i64 %or.i25.i.3.i, %add3.i.3.i
  %shr.i30.i.3.i = or i64 %xor2.i26.i.3.i, %xor2.i.i.3.i
  %or29.i.3.i = lshr i64 %shr.i30.i.3.i, 63
  %arrayidx.i.4.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 4
  %11 = load i64, i64* %arrayidx.i.4.i, align 8, !tbaa !3
  %add.i.4.i = add i64 %or29.i.3.i, %11
  %arrayidx2.i.4.i = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 0, i64 4
  %12 = load i64, i64* %arrayidx2.i.4.i, align 8, !tbaa !3
  %add3.i.4.i = add i64 %add.i.4.i, %12
  %arrayidx5.i.4.i = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 0, i64 4
  store i64 %add3.i.4.i, i64* %arrayidx5.i.4.i, align 8, !tbaa !3
  %13 = xor i64 %add.i.4.i, -9223372036854775808
  %xor2.i.i.4.i = and i64 %13, %11
  %xor.i23.i.4.i = xor i64 %add3.i.4.i, %add.i.4.i
  %xor1.i24.i.4.i = xor i64 %add.i.4.i, %12
  %or.i25.i.4.i = or i64 %xor.i23.i.4.i, %xor1.i24.i.4.i
  %xor2.i26.i.4.i = xor i64 %or.i25.i.4.i, %add3.i.4.i
  %shr.i30.i.4.i = or i64 %xor2.i26.i.4.i, %xor2.i.i.4.i
  %or29.i.4.i = lshr i64 %shr.i30.i.4.i, 63
  %arrayidx.i.5.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 5
  %14 = load i64, i64* %arrayidx.i.5.i, align 8, !tbaa !3
  %add.i.5.i = add i64 %or29.i.4.i, %14
  %arrayidx2.i.5.i = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 0, i64 5
  %15 = load i64, i64* %arrayidx2.i.5.i, align 8, !tbaa !3
  %add3.i.5.i = add i64 %add.i.5.i, %15
  %arrayidx5.i.5.i = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 0, i64 5
  store i64 %add3.i.5.i, i64* %arrayidx5.i.5.i, align 8, !tbaa !3
  %16 = xor i64 %add.i.5.i, -9223372036854775808
  %xor2.i.i.5.i = and i64 %16, %14
  %xor.i23.i.5.i = xor i64 %add3.i.5.i, %add.i.5.i
  %xor1.i24.i.5.i = xor i64 %add.i.5.i, %15
  %or.i25.i.5.i = or i64 %xor.i23.i.5.i, %xor1.i24.i.5.i
  %xor2.i26.i.5.i = xor i64 %or.i25.i.5.i, %add3.i.5.i
  %shr.i30.i.5.i = or i64 %xor2.i26.i.5.i, %xor2.i.i.5.i
  %or29.i.5.i = lshr i64 %shr.i30.i.5.i, 63
  %arrayidx.i.6.i = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 0, i64 6
  %17 = load i64, i64* %arrayidx.i.6.i, align 8, !tbaa !3
  %arrayidx2.i.6.i = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 0, i64 6
  %18 = load i64, i64* %arrayidx2.i.6.i, align 8, !tbaa !3
  %add.i.6.i = add i64 %18, %17
  %add3.i.6.i = add i64 %add.i.6.i, %or29.i.5.i
  %arrayidx5.i.6.i = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 0, i64 6
  store i64 %add3.i.6.i, i64* %arrayidx5.i.6.i, align 8, !tbaa !3
  %arraydecay6 = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 0
  %arraydecay8 = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 1, i64 0
  %arraydecay10 = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 1, i64 0
  %19 = load i64, i64* %arraydecay6, align 8, !tbaa !3
  %20 = load i64, i64* %arraydecay8, align 8, !tbaa !3
  %add3.i.i14 = add i64 %20, %19
  store i64 %add3.i.i14, i64* %arraydecay10, align 8, !tbaa !3
  %xor.i23.i.i15 = xor i64 %add3.i.i14, %19
  %xor1.i24.i.i16 = xor i64 %20, %19
  %or.i25.i.i17 = or i64 %xor.i23.i.i15, %xor1.i24.i.i16
  %xor2.i26.i.i18 = xor i64 %or.i25.i.i17, %add3.i.i14
  %or29.i.i19 = lshr i64 %xor2.i26.i.i18, 63
  %arrayidx.i.1.i20 = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 1
  %21 = load i64, i64* %arrayidx.i.1.i20, align 8, !tbaa !3
  %add.i.1.i21 = add i64 %or29.i.i19, %21
  %arrayidx2.i.1.i22 = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 1, i64 1
  %22 = load i64, i64* %arrayidx2.i.1.i22, align 8, !tbaa !3
  %add3.i.1.i23 = add i64 %add.i.1.i21, %22
  %arrayidx5.i.1.i24 = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 1, i64 1
  store i64 %add3.i.1.i23, i64* %arrayidx5.i.1.i24, align 8, !tbaa !3
  %23 = xor i64 %add.i.1.i21, -9223372036854775808
  %xor2.i.i.1.i25 = and i64 %23, %21
  %xor.i23.i.1.i26 = xor i64 %add3.i.1.i23, %add.i.1.i21
  %xor1.i24.i.1.i27 = xor i64 %add.i.1.i21, %22
  %or.i25.i.1.i28 = or i64 %xor.i23.i.1.i26, %xor1.i24.i.1.i27
  %xor2.i26.i.1.i29 = xor i64 %or.i25.i.1.i28, %add3.i.1.i23
  %shr.i30.i.1.i30 = or i64 %xor2.i26.i.1.i29, %xor2.i.i.1.i25
  %or29.i.1.i31 = lshr i64 %shr.i30.i.1.i30, 63
  %arrayidx.i.2.i32 = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 2
  %24 = load i64, i64* %arrayidx.i.2.i32, align 8, !tbaa !3
  %add.i.2.i33 = add i64 %or29.i.1.i31, %24
  %arrayidx2.i.2.i34 = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 1, i64 2
  %25 = load i64, i64* %arrayidx2.i.2.i34, align 8, !tbaa !3
  %add3.i.2.i35 = add i64 %add.i.2.i33, %25
  %arrayidx5.i.2.i36 = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 1, i64 2
  store i64 %add3.i.2.i35, i64* %arrayidx5.i.2.i36, align 8, !tbaa !3
  %26 = xor i64 %add.i.2.i33, -9223372036854775808
  %xor2.i.i.2.i37 = and i64 %26, %24
  %xor.i23.i.2.i38 = xor i64 %add3.i.2.i35, %add.i.2.i33
  %xor1.i24.i.2.i39 = xor i64 %add.i.2.i33, %25
  %or.i25.i.2.i40 = or i64 %xor.i23.i.2.i38, %xor1.i24.i.2.i39
  %xor2.i26.i.2.i41 = xor i64 %or.i25.i.2.i40, %add3.i.2.i35
  %shr.i30.i.2.i42 = or i64 %xor2.i26.i.2.i41, %xor2.i.i.2.i37
  %or29.i.2.i43 = lshr i64 %shr.i30.i.2.i42, 63
  %arrayidx.i.3.i44 = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 3
  %27 = load i64, i64* %arrayidx.i.3.i44, align 8, !tbaa !3
  %add.i.3.i45 = add i64 %or29.i.2.i43, %27
  %arrayidx2.i.3.i46 = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 1, i64 3
  %28 = load i64, i64* %arrayidx2.i.3.i46, align 8, !tbaa !3
  %add3.i.3.i47 = add i64 %add.i.3.i45, %28
  %arrayidx5.i.3.i48 = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 1, i64 3
  store i64 %add3.i.3.i47, i64* %arrayidx5.i.3.i48, align 8, !tbaa !3
  %29 = xor i64 %add.i.3.i45, -9223372036854775808
  %xor2.i.i.3.i49 = and i64 %29, %27
  %xor.i23.i.3.i50 = xor i64 %add3.i.3.i47, %add.i.3.i45
  %xor1.i24.i.3.i51 = xor i64 %add.i.3.i45, %28
  %or.i25.i.3.i52 = or i64 %xor.i23.i.3.i50, %xor1.i24.i.3.i51
  %xor2.i26.i.3.i53 = xor i64 %or.i25.i.3.i52, %add3.i.3.i47
  %shr.i30.i.3.i54 = or i64 %xor2.i26.i.3.i53, %xor2.i.i.3.i49
  %or29.i.3.i55 = lshr i64 %shr.i30.i.3.i54, 63
  %arrayidx.i.4.i56 = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 4
  %30 = load i64, i64* %arrayidx.i.4.i56, align 8, !tbaa !3
  %add.i.4.i57 = add i64 %or29.i.3.i55, %30
  %arrayidx2.i.4.i58 = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 1, i64 4
  %31 = load i64, i64* %arrayidx2.i.4.i58, align 8, !tbaa !3
  %add3.i.4.i59 = add i64 %add.i.4.i57, %31
  %arrayidx5.i.4.i60 = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 1, i64 4
  store i64 %add3.i.4.i59, i64* %arrayidx5.i.4.i60, align 8, !tbaa !3
  %32 = xor i64 %add.i.4.i57, -9223372036854775808
  %xor2.i.i.4.i61 = and i64 %32, %30
  %xor.i23.i.4.i62 = xor i64 %add3.i.4.i59, %add.i.4.i57
  %xor1.i24.i.4.i63 = xor i64 %add.i.4.i57, %31
  %or.i25.i.4.i64 = or i64 %xor.i23.i.4.i62, %xor1.i24.i.4.i63
  %xor2.i26.i.4.i65 = xor i64 %or.i25.i.4.i64, %add3.i.4.i59
  %shr.i30.i.4.i66 = or i64 %xor2.i26.i.4.i65, %xor2.i.i.4.i61
  %or29.i.4.i67 = lshr i64 %shr.i30.i.4.i66, 63
  %arrayidx.i.5.i68 = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 5
  %33 = load i64, i64* %arrayidx.i.5.i68, align 8, !tbaa !3
  %add.i.5.i69 = add i64 %or29.i.4.i67, %33
  %arrayidx2.i.5.i70 = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 1, i64 5
  %34 = load i64, i64* %arrayidx2.i.5.i70, align 8, !tbaa !3
  %add3.i.5.i71 = add i64 %add.i.5.i69, %34
  %arrayidx5.i.5.i72 = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 1, i64 5
  store i64 %add3.i.5.i71, i64* %arrayidx5.i.5.i72, align 8, !tbaa !3
  %35 = xor i64 %add.i.5.i69, -9223372036854775808
  %xor2.i.i.5.i73 = and i64 %35, %33
  %xor.i23.i.5.i74 = xor i64 %add3.i.5.i71, %add.i.5.i69
  %xor1.i24.i.5.i75 = xor i64 %add.i.5.i69, %34
  %or.i25.i.5.i76 = or i64 %xor.i23.i.5.i74, %xor1.i24.i.5.i75
  %xor2.i26.i.5.i77 = xor i64 %or.i25.i.5.i76, %add3.i.5.i71
  %shr.i30.i.5.i78 = or i64 %xor2.i26.i.5.i77, %xor2.i.i.5.i73
  %or29.i.5.i79 = lshr i64 %shr.i30.i.5.i78, 63
  %arrayidx.i.6.i80 = getelementptr inbounds [7 x i64], [7 x i64]* %a, i64 1, i64 6
  %36 = load i64, i64* %arrayidx.i.6.i80, align 8, !tbaa !3
  %arrayidx2.i.6.i82 = getelementptr inbounds [7 x i64], [7 x i64]* %b, i64 1, i64 6
  %37 = load i64, i64* %arrayidx2.i.6.i82, align 8, !tbaa !3
  %add.i.6.i81 = add i64 %37, %36
  %add3.i.6.i83 = add i64 %add.i.6.i81, %or29.i.5.i79
  %arrayidx5.i.6.i84 = getelementptr inbounds [7 x i64], [7 x i64]* %c, i64 1, i64 6
  store i64 %add3.i.6.i83, i64* %arrayidx5.i.6.i84, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @xDBLe(%struct.point_proj* nocapture readonly %P, %struct.point_proj* %Q, [7 x i64]* %A24plus, [7 x i64]* %C24, i32 %e) local_unnamed_addr #4 {
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
  %cmp5 = icmp sgt i32 %e, 0
  br i1 %cmp5, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret void

for.body:                                         ; preds = %entry, %for.body
  %i.06 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  tail call void @xDBL(%struct.point_proj* %Q, %struct.point_proj* %Q, [7 x i64]* %A24plus, [7 x i64]* %C24)
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond = icmp eq i32 %inc, %e
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nounwind ssp uwtable
define void @get_4_isog(%struct.point_proj* %P, [7 x i64]* %A24plus, [7 x i64]* %C24, [2 x [7 x i64]]* %coeff) local_unnamed_addr #4 {
entry:
  %arraydecay = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0
  %arraydecay1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 0
  %arraydecay.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds [7 x i64], [7 x i64]* %arraydecay1, i64 0, i64 0
  %arraydecay4.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %coeff, i64 1, i64 0, i64 0
  tail call void @mp_sub434_p2(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i) #10
  %arraydecay6.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 1, i64 0
  %arraydecay8.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 1, i64 0
  %arraydecay10.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %coeff, i64 1, i64 1, i64 0
  tail call void @mp_sub434_p2(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i) #10
  %arraydecay8 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %coeff, i64 2, i64 0
  tail call fastcc void @mp2_add([7 x i64]* %arraydecay, [7 x i64]* nonnull %arraydecay1, [7 x i64]* nonnull %arraydecay8)
  %arraydecay12 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %coeff, i64 0, i64 0
  tail call void @fp2sqr434_mont([7 x i64]* nonnull %arraydecay1, [7 x i64]* %arraydecay12)
  tail call fastcc void @mp2_add([7 x i64]* %arraydecay12, [7 x i64]* %arraydecay12, [7 x i64]* %arraydecay12)
  tail call void @fp2sqr434_mont([7 x i64]* %arraydecay12, [7 x i64]* %C24)
  tail call fastcc void @mp2_add([7 x i64]* %arraydecay12, [7 x i64]* %arraydecay12, [7 x i64]* %arraydecay12)
  tail call void @fp2sqr434_mont([7 x i64]* %arraydecay, [7 x i64]* %A24plus)
  tail call fastcc void @mp2_add([7 x i64]* %A24plus, [7 x i64]* %A24plus, [7 x i64]* %A24plus)
  tail call void @fp2sqr434_mont([7 x i64]* %A24plus, [7 x i64]* %A24plus)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @eval_4_isog(%struct.point_proj* %P, [2 x [7 x i64]]* %coeff) local_unnamed_addr #4 {
entry:
  %t0 = alloca [2 x [7 x i64]], align 16
  %t1 = alloca [2 x [7 x i64]], align 16
  %0 = bitcast [2 x [7 x i64]]* %t0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %0) #10
  %1 = bitcast [2 x [7 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %1) #10
  %arraydecay = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0
  %arraydecay1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 0
  %arraydecay2 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t0, i64 0, i64 0
  call fastcc void @mp2_add([7 x i64]* %arraydecay, [7 x i64]* nonnull %arraydecay1, [7 x i64]* nonnull %arraydecay2)
  %arraydecay7 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 0
  %arraydecay.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds [7 x i64], [7 x i64]* %arraydecay1, i64 0, i64 0
  %arraydecay4.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 0, i64 0
  call void @mp_sub434_p2(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i) #10
  %arraydecay6.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 1, i64 0
  %arraydecay8.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 1, i64 0
  %arraydecay10.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 1, i64 0
  call void @mp_sub434_p2(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i) #10
  %arraydecay9 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %coeff, i64 1, i64 0
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay2, [7 x i64]* nonnull %arraydecay9, [7 x i64]* %arraydecay)
  %arraydecay14 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %coeff, i64 2, i64 0
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay7, [7 x i64]* nonnull %arraydecay14, [7 x i64]* nonnull %arraydecay1)
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay2, [7 x i64]* nonnull %arraydecay7, [7 x i64]* nonnull %arraydecay2)
  %arraydecay21 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %coeff, i64 0, i64 0
  call void @fp2mul434_mont([7 x i64]* %arraydecay21, [7 x i64]* nonnull %arraydecay2, [7 x i64]* nonnull %arraydecay2)
  call fastcc void @mp2_add([7 x i64]* %arraydecay, [7 x i64]* nonnull %arraydecay1, [7 x i64]* nonnull %arraydecay7)
  call void @mp_sub434_p2(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay2.i) #10
  call void @mp_sub434_p2(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay8.i) #10
  call void @fp2sqr434_mont([7 x i64]* nonnull %arraydecay7, [7 x i64]* nonnull %arraydecay7)
  call void @fp2sqr434_mont([7 x i64]* nonnull %arraydecay1, [7 x i64]* nonnull %arraydecay1)
  call fastcc void @mp2_add([7 x i64]* nonnull %arraydecay7, [7 x i64]* nonnull %arraydecay2, [7 x i64]* %arraydecay)
  %arraydecay2.i86 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t0, i64 0, i64 0, i64 0
  call void @mp_sub434_p2(i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay2.i86, i64* nonnull %arraydecay2.i86) #10
  %arraydecay8.i89 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t0, i64 0, i64 1, i64 0
  call void @mp_sub434_p2(i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay8.i89, i64* nonnull %arraydecay8.i89) #10
  call void @fp2mul434_mont([7 x i64]* %arraydecay, [7 x i64]* nonnull %arraydecay7, [7 x i64]* %arraydecay)
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay1, [7 x i64]* nonnull %arraydecay2, [7 x i64]* nonnull %arraydecay1)
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @xTPL(%struct.point_proj* %P, %struct.point_proj* %Q, [7 x i64]* %A24minus, [7 x i64]* %A24plus) local_unnamed_addr #4 {
entry:
  %t0 = alloca [2 x [7 x i64]], align 16
  %t1 = alloca [2 x [7 x i64]], align 16
  %t2 = alloca [2 x [7 x i64]], align 16
  %t3 = alloca [2 x [7 x i64]], align 16
  %t4 = alloca [2 x [7 x i64]], align 16
  %t5 = alloca [2 x [7 x i64]], align 16
  %t6 = alloca [2 x [7 x i64]], align 16
  %0 = bitcast [2 x [7 x i64]]* %t0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %0) #10
  %1 = bitcast [2 x [7 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %1) #10
  %2 = bitcast [2 x [7 x i64]]* %t2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  %3 = bitcast [2 x [7 x i64]]* %t3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %3) #10
  %4 = bitcast [2 x [7 x i64]]* %t4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %4) #10
  %5 = bitcast [2 x [7 x i64]]* %t5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %5) #10
  %6 = bitcast [2 x [7 x i64]]* %t6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %6) #10
  %arraydecay = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0
  %arraydecay1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 0
  %arraydecay2 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t0, i64 0, i64 0
  %arraydecay.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds [7 x i64], [7 x i64]* %arraydecay1, i64 0, i64 0
  %arraydecay4.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t0, i64 0, i64 0, i64 0
  call void @mp_sub434_p2(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i) #10
  %arraydecay6.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 1, i64 0
  %arraydecay8.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 1, i64 0
  %arraydecay10.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t0, i64 0, i64 1, i64 0
  call void @mp_sub434_p2(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i) #10
  %arraydecay4 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t2, i64 0, i64 0
  call void @fp2sqr434_mont([7 x i64]* nonnull %arraydecay2, [7 x i64]* nonnull %arraydecay4)
  %arraydecay9 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 0
  call fastcc void @mp2_add([7 x i64]* %arraydecay, [7 x i64]* nonnull %arraydecay1, [7 x i64]* nonnull %arraydecay9)
  %arraydecay11 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t3, i64 0, i64 0
  call void @fp2sqr434_mont([7 x i64]* nonnull %arraydecay9, [7 x i64]* nonnull %arraydecay11)
  %arraydecay16 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t4, i64 0, i64 0
  call fastcc void @mp2_add([7 x i64]* %arraydecay, [7 x i64]* %arraydecay, [7 x i64]* nonnull %arraydecay16)
  call fastcc void @mp2_add([7 x i64]* nonnull %arraydecay1, [7 x i64]* nonnull %arraydecay1, [7 x i64]* nonnull %arraydecay2)
  call void @fp2sqr434_mont([7 x i64]* nonnull %arraydecay16, [7 x i64]* nonnull %arraydecay9)
  %arraydecay.i75 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 0, i64 0
  %arraydecay2.i76 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t3, i64 0, i64 0, i64 0
  call void @mp_sub434_p2(i64* nonnull %arraydecay.i75, i64* nonnull %arraydecay2.i76, i64* nonnull %arraydecay.i75) #10
  %arraydecay6.i78 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 1, i64 0
  %arraydecay8.i79 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t3, i64 0, i64 1, i64 0
  call void @mp_sub434_p2(i64* nonnull %arraydecay6.i78, i64* nonnull %arraydecay8.i79, i64* nonnull %arraydecay6.i78) #10
  %arraydecay2.i82 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t2, i64 0, i64 0, i64 0
  call void @mp_sub434_p2(i64* nonnull %arraydecay.i75, i64* nonnull %arraydecay2.i82, i64* nonnull %arraydecay.i75) #10
  %arraydecay8.i85 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t2, i64 0, i64 1, i64 0
  call void @mp_sub434_p2(i64* nonnull %arraydecay6.i78, i64* nonnull %arraydecay8.i85, i64* nonnull %arraydecay6.i78) #10
  %arraydecay31 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t5, i64 0, i64 0
  call void @fp2mul434_mont([7 x i64]* %A24plus, [7 x i64]* nonnull %arraydecay11, [7 x i64]* nonnull %arraydecay31)
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay11, [7 x i64]* nonnull %arraydecay31, [7 x i64]* nonnull %arraydecay11)
  %arraydecay36 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t6, i64 0, i64 0
  call void @fp2mul434_mont([7 x i64]* %A24minus, [7 x i64]* nonnull %arraydecay4, [7 x i64]* nonnull %arraydecay36)
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay4, [7 x i64]* nonnull %arraydecay36, [7 x i64]* nonnull %arraydecay4)
  call void @mp_sub434_p2(i64* nonnull %arraydecay2.i82, i64* nonnull %arraydecay2.i76, i64* nonnull %arraydecay2.i76) #10
  call void @mp_sub434_p2(i64* nonnull %arraydecay8.i85, i64* nonnull %arraydecay8.i79, i64* nonnull %arraydecay8.i79) #10
  %arraydecay.i93 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t5, i64 0, i64 0, i64 0
  %arraydecay2.i94 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t6, i64 0, i64 0, i64 0
  call void @mp_sub434_p2(i64* nonnull %arraydecay.i93, i64* nonnull %arraydecay2.i94, i64* nonnull %arraydecay2.i82) #10
  %arraydecay6.i96 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t5, i64 0, i64 1, i64 0
  %arraydecay8.i97 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t6, i64 0, i64 1, i64 0
  call void @mp_sub434_p2(i64* nonnull %arraydecay6.i96, i64* nonnull %arraydecay8.i97, i64* nonnull %arraydecay8.i85) #10
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay9, [7 x i64]* nonnull %arraydecay4, [7 x i64]* nonnull %arraydecay9)
  call void @fpadd434(i64* nonnull %arraydecay2.i76, i64* nonnull %arraydecay.i75, i64* nonnull %arraydecay2.i82) #10
  call void @fpadd434(i64* nonnull %arraydecay8.i79, i64* nonnull %arraydecay6.i78, i64* nonnull %arraydecay8.i85) #10
  call void @fp2sqr434_mont([7 x i64]* nonnull %arraydecay4, [7 x i64]* nonnull %arraydecay4)
  %arraydecay57 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay16, [7 x i64]* nonnull %arraydecay4, [7 x i64]* %arraydecay57)
  call void @fpsub434(i64* nonnull %arraydecay2.i76, i64* nonnull %arraydecay.i75, i64* nonnull %arraydecay.i75) #10
  call void @fpsub434(i64* nonnull %arraydecay8.i79, i64* nonnull %arraydecay6.i78, i64* nonnull %arraydecay6.i78) #10
  call void @fp2sqr434_mont([7 x i64]* nonnull %arraydecay9, [7 x i64]* nonnull %arraydecay9)
  %arraydecay66 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 0
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay2, [7 x i64]* nonnull %arraydecay9, [7 x i64]* nonnull %arraydecay66)
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @xTPLe(%struct.point_proj* nocapture readonly %P, %struct.point_proj* %Q, [7 x i64]* %A24minus, [7 x i64]* %A24plus, i32 %e) local_unnamed_addr #4 {
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
  %cmp5 = icmp sgt i32 %e, 0
  br i1 %cmp5, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret void

for.body:                                         ; preds = %entry, %for.body
  %i.06 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  tail call void @xTPL(%struct.point_proj* %Q, %struct.point_proj* %Q, [7 x i64]* %A24minus, [7 x i64]* %A24plus)
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond = icmp eq i32 %inc, %e
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nounwind ssp uwtable
define void @get_3_isog(%struct.point_proj* %P, [7 x i64]* %A24minus, [7 x i64]* %A24plus, [2 x [7 x i64]]* %coeff) local_unnamed_addr #4 {
entry:
  %t0 = alloca [2 x [7 x i64]], align 16
  %t1 = alloca [2 x [7 x i64]], align 16
  %t2 = alloca [2 x [7 x i64]], align 16
  %t3 = alloca [2 x [7 x i64]], align 16
  %t4 = alloca [2 x [7 x i64]], align 16
  %0 = bitcast [2 x [7 x i64]]* %t0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %0) #10
  %1 = bitcast [2 x [7 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %1) #10
  %2 = bitcast [2 x [7 x i64]]* %t2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  %3 = bitcast [2 x [7 x i64]]* %t3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %3) #10
  %4 = bitcast [2 x [7 x i64]]* %t4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %4) #10
  %arraydecay = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0
  %arraydecay1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 0
  %arraydecay2 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %coeff, i64 0, i64 0
  %arraydecay.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds [7 x i64], [7 x i64]* %arraydecay1, i64 0, i64 0
  %arraydecay4.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %coeff, i64 0, i64 0, i64 0
  tail call void @mp_sub434_p2(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* %arraydecay4.i) #10
  %arraydecay6.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 1, i64 0
  %arraydecay8.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 1, i64 0
  %arraydecay10.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %coeff, i64 0, i64 1, i64 0
  tail call void @mp_sub434_p2(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i) #10
  %arraydecay5 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t0, i64 0, i64 0
  call void @fp2sqr434_mont([7 x i64]* %arraydecay2, [7 x i64]* nonnull %arraydecay5)
  %arraydecay11 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %coeff, i64 1, i64 0
  call fastcc void @mp2_add([7 x i64]* %arraydecay, [7 x i64]* nonnull %arraydecay1, [7 x i64]* nonnull %arraydecay11)
  %arraydecay14 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 0
  call void @fp2sqr434_mont([7 x i64]* nonnull %arraydecay11, [7 x i64]* nonnull %arraydecay14)
  %arraydecay19 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t3, i64 0, i64 0
  call fastcc void @mp2_add([7 x i64]* %arraydecay, [7 x i64]* %arraydecay, [7 x i64]* nonnull %arraydecay19)
  call void @fp2sqr434_mont([7 x i64]* nonnull %arraydecay19, [7 x i64]* nonnull %arraydecay19)
  %arraydecay24 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t2, i64 0, i64 0
  %arraydecay.i58 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t3, i64 0, i64 0, i64 0
  %arraydecay2.i59 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t0, i64 0, i64 0, i64 0
  %arraydecay4.i60 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t2, i64 0, i64 0, i64 0
  call void @fpsub434(i64* nonnull %arraydecay.i58, i64* nonnull %arraydecay2.i59, i64* nonnull %arraydecay4.i60) #10
  %arraydecay6.i61 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t3, i64 0, i64 1, i64 0
  %arraydecay8.i62 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t0, i64 0, i64 1, i64 0
  %arraydecay10.i63 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t2, i64 0, i64 1, i64 0
  call void @fpsub434(i64* nonnull %arraydecay6.i61, i64* nonnull %arraydecay8.i62, i64* nonnull %arraydecay10.i63) #10
  %arraydecay2.i65 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 0, i64 0
  call void @fpsub434(i64* nonnull %arraydecay.i58, i64* nonnull %arraydecay2.i65, i64* nonnull %arraydecay.i58) #10
  %arraydecay8.i68 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 1, i64 0
  call void @fpsub434(i64* nonnull %arraydecay6.i61, i64* nonnull %arraydecay8.i68, i64* nonnull %arraydecay6.i61) #10
  %arraydecay30 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t4, i64 0, i64 0
  call fastcc void @mp2_add([7 x i64]* nonnull %arraydecay5, [7 x i64]* nonnull %arraydecay19, [7 x i64]* nonnull %arraydecay30)
  call fastcc void @mp2_add([7 x i64]* nonnull %arraydecay30, [7 x i64]* nonnull %arraydecay30, [7 x i64]* nonnull %arraydecay30)
  call fastcc void @mp2_add([7 x i64]* nonnull %arraydecay14, [7 x i64]* nonnull %arraydecay30, [7 x i64]* nonnull %arraydecay30)
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay24, [7 x i64]* nonnull %arraydecay30, [7 x i64]* %A24minus)
  call fastcc void @mp2_add([7 x i64]* nonnull %arraydecay14, [7 x i64]* nonnull %arraydecay24, [7 x i64]* nonnull %arraydecay30)
  call fastcc void @mp2_add([7 x i64]* nonnull %arraydecay30, [7 x i64]* nonnull %arraydecay30, [7 x i64]* nonnull %arraydecay30)
  call fastcc void @mp2_add([7 x i64]* nonnull %arraydecay5, [7 x i64]* nonnull %arraydecay30, [7 x i64]* nonnull %arraydecay30)
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay19, [7 x i64]* nonnull %arraydecay30, [7 x i64]* %A24plus)
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @eval_3_isog(%struct.point_proj* %Q, [2 x [7 x i64]]* %coeff) local_unnamed_addr #4 {
entry:
  %t0 = alloca [2 x [7 x i64]], align 16
  %t1 = alloca [2 x [7 x i64]], align 16
  %t2 = alloca [2 x [7 x i64]], align 16
  %0 = bitcast [2 x [7 x i64]]* %t0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %0) #10
  %1 = bitcast [2 x [7 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %1) #10
  %2 = bitcast [2 x [7 x i64]]* %t2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  %arraydecay = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0
  %arraydecay1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 0
  %arraydecay2 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t0, i64 0, i64 0
  call fastcc void @mp2_add([7 x i64]* %arraydecay, [7 x i64]* nonnull %arraydecay1, [7 x i64]* nonnull %arraydecay2)
  %arraydecay7 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 0
  %arraydecay.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds [7 x i64], [7 x i64]* %arraydecay1, i64 0, i64 0
  %arraydecay4.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 0, i64 0
  call void @mp_sub434_p2(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i) #10
  %arraydecay6.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 1, i64 0
  %arraydecay8.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 1, i64 0
  %arraydecay10.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 1, i64 0
  call void @mp_sub434_p2(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i) #10
  %arraydecay8 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %coeff, i64 0, i64 0
  call void @fp2mul434_mont([7 x i64]* %arraydecay8, [7 x i64]* nonnull %arraydecay2, [7 x i64]* nonnull %arraydecay2)
  %arraydecay12 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %coeff, i64 1, i64 0
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay12, [7 x i64]* nonnull %arraydecay7, [7 x i64]* nonnull %arraydecay7)
  %arraydecay17 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t2, i64 0, i64 0
  call fastcc void @mp2_add([7 x i64]* nonnull %arraydecay2, [7 x i64]* nonnull %arraydecay7, [7 x i64]* nonnull %arraydecay17)
  %arraydecay2.i44 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t0, i64 0, i64 0, i64 0
  call void @mp_sub434_p2(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay2.i44, i64* nonnull %arraydecay2.i44) #10
  %arraydecay8.i47 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t0, i64 0, i64 1, i64 0
  call void @mp_sub434_p2(i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay8.i47, i64* nonnull %arraydecay8.i47) #10
  call void @fp2sqr434_mont([7 x i64]* nonnull %arraydecay17, [7 x i64]* nonnull %arraydecay17)
  call void @fp2sqr434_mont([7 x i64]* nonnull %arraydecay2, [7 x i64]* nonnull %arraydecay2)
  call void @fp2mul434_mont([7 x i64]* %arraydecay, [7 x i64]* nonnull %arraydecay17, [7 x i64]* %arraydecay)
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay1, [7 x i64]* nonnull %arraydecay2, [7 x i64]* nonnull %arraydecay1)
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @inv_3_way([7 x i64]* %z1, [7 x i64]* %z2, [7 x i64]* %z3) local_unnamed_addr #4 {
entry:
  %t0 = alloca [2 x [7 x i64]], align 16
  %t1 = alloca [2 x [7 x i64]], align 16
  %t2 = alloca [2 x [7 x i64]], align 16
  %0 = bitcast [2 x [7 x i64]]* %t0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %0) #10
  %1 = bitcast [2 x [7 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %1) #10
  %2 = bitcast [2 x [7 x i64]]* %t2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  %arraydecay = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t0, i64 0, i64 0
  call void @fp2mul434_mont([7 x i64]* %z1, [7 x i64]* %z2, [7 x i64]* nonnull %arraydecay)
  %arraydecay2 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 0
  call void @fp2mul434_mont([7 x i64]* %z3, [7 x i64]* nonnull %arraydecay, [7 x i64]* nonnull %arraydecay2)
  call void @fp2inv434_mont([7 x i64]* nonnull %arraydecay2)
  %arraydecay5 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t2, i64 0, i64 0
  call void @fp2mul434_mont([7 x i64]* %z3, [7 x i64]* nonnull %arraydecay2, [7 x i64]* nonnull %arraydecay5)
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay, [7 x i64]* nonnull %arraydecay2, [7 x i64]* %z3)
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay5, [7 x i64]* %z2, [7 x i64]* nonnull %arraydecay)
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay5, [7 x i64]* %z1, [7 x i64]* %z2)
  %3 = bitcast [2 x [7 x i64]]* %t0 to <4 x i64>*
  %4 = load <4 x i64>, <4 x i64>* %3, align 16, !tbaa !3
  %5 = bitcast [7 x i64]* %z1 to <4 x i64>*
  store <4 x i64> %4, <4 x i64>* %5, align 8, !tbaa !3
  %arrayidx.4.i.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t0, i64 0, i64 0, i64 4
  %arrayidx2.4.i.i = getelementptr inbounds [7 x i64], [7 x i64]* %z1, i64 0, i64 4
  %6 = bitcast i64* %arrayidx.4.i.i to <4 x i64>*
  %7 = load <4 x i64>, <4 x i64>* %6, align 16, !tbaa !3
  %8 = bitcast i64* %arrayidx2.4.i.i to <4 x i64>*
  store <4 x i64> %7, <4 x i64>* %8, align 8, !tbaa !3
  %arrayidx.1.i9.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t0, i64 0, i64 1, i64 1
  %arrayidx2.1.i10.i = getelementptr inbounds [7 x i64], [7 x i64]* %z1, i64 1, i64 1
  %9 = bitcast i64* %arrayidx.1.i9.i to <4 x i64>*
  %10 = load <4 x i64>, <4 x i64>* %9, align 8, !tbaa !3
  %11 = bitcast i64* %arrayidx2.1.i10.i to <4 x i64>*
  store <4 x i64> %10, <4 x i64>* %11, align 8, !tbaa !3
  %arrayidx.5.i17.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t0, i64 0, i64 1, i64 5
  %12 = load i64, i64* %arrayidx.5.i17.i, align 8, !tbaa !3
  %arrayidx2.5.i18.i = getelementptr inbounds [7 x i64], [7 x i64]* %z1, i64 1, i64 5
  store i64 %12, i64* %arrayidx2.5.i18.i, align 8, !tbaa !3
  %arrayidx.6.i19.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t0, i64 0, i64 1, i64 6
  %13 = load i64, i64* %arrayidx.6.i19.i, align 8, !tbaa !3
  %arrayidx2.6.i20.i = getelementptr inbounds [7 x i64], [7 x i64]* %z1, i64 1, i64 6
  store i64 %13, i64* %arrayidx2.6.i20.i, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @get_A([7 x i64]* %xP, [7 x i64]* %xQ, [7 x i64]* %xR, [7 x i64]* %A) local_unnamed_addr #4 {
entry:
  %t0 = alloca [2 x [7 x i64]], align 16
  %t1 = alloca [2 x [7 x i64]], align 16
  %one = alloca [2 x [7 x i64]], align 16
  %0 = bitcast [2 x [7 x i64]]* %t0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %0) #10
  %1 = bitcast [2 x [7 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %1) #10
  %2 = bitcast [2 x [7 x i64]]* %one to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false)
  %arraydecay = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %one, i64 0, i64 0, i64 0
  store i64 29740, i64* %arraydecay, align 16, !tbaa !3
  %arrayidx2.1.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %one, i64 0, i64 0, i64 1
  %arrayidx2.3.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %one, i64 0, i64 0, i64 3
  %3 = bitcast i64* %arrayidx2.1.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %3, i8 0, i64 16, i1 false)
  %4 = bitcast i64* %arrayidx2.3.i to <4 x i64>*
  store <4 x i64> <i64 -5111598749797318656, i64 -2881840887160132396, i64 -1643158192681172724, i64 260509760564954>, <4 x i64>* %4, align 8, !tbaa !3
  %arraydecay1 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 0
  %arraydecay.i33 = getelementptr inbounds [7 x i64], [7 x i64]* %xP, i64 0, i64 0
  %arraydecay2.i34 = getelementptr inbounds [7 x i64], [7 x i64]* %xQ, i64 0, i64 0
  %arraydecay4.i35 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 0, i64 0
  call void @fpadd434(i64* %arraydecay.i33, i64* %arraydecay2.i34, i64* nonnull %arraydecay4.i35) #10
  %arraydecay6.i36 = getelementptr inbounds [7 x i64], [7 x i64]* %xP, i64 1, i64 0
  %arraydecay8.i37 = getelementptr inbounds [7 x i64], [7 x i64]* %xQ, i64 1, i64 0
  %arraydecay10.i38 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 1, i64 0
  call void @fpadd434(i64* nonnull %arraydecay6.i36, i64* nonnull %arraydecay8.i37, i64* nonnull %arraydecay10.i38) #10
  %arraydecay2 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t0, i64 0, i64 0
  call void @fp2mul434_mont([7 x i64]* %xP, [7 x i64]* %xQ, [7 x i64]* nonnull %arraydecay2)
  call void @fp2mul434_mont([7 x i64]* %xR, [7 x i64]* nonnull %arraydecay1, [7 x i64]* %A)
  %arraydecay.i39 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t0, i64 0, i64 0, i64 0
  %arraydecay2.i40 = getelementptr inbounds [7 x i64], [7 x i64]* %A, i64 0, i64 0
  call void @fpadd434(i64* nonnull %arraydecay.i39, i64* %arraydecay2.i40, i64* %arraydecay2.i40) #10
  %arraydecay6.i42 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t0, i64 0, i64 1, i64 0
  %arraydecay8.i43 = getelementptr inbounds [7 x i64], [7 x i64]* %A, i64 1, i64 0
  call void @fpadd434(i64* nonnull %arraydecay6.i42, i64* nonnull %arraydecay8.i43, i64* nonnull %arraydecay8.i43) #10
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay2, [7 x i64]* %xR, [7 x i64]* nonnull %arraydecay2)
  call void @fpsub434(i64* %arraydecay2.i40, i64* nonnull %arraydecay, i64* %arraydecay2.i40) #10
  %arraydecay8.i49 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %one, i64 0, i64 1, i64 0
  call void @fpsub434(i64* nonnull %arraydecay8.i43, i64* nonnull %arraydecay8.i49, i64* nonnull %arraydecay8.i43) #10
  call void @fpadd434(i64* nonnull %arraydecay.i39, i64* nonnull %arraydecay.i39, i64* nonnull %arraydecay.i39) #10
  call void @fpadd434(i64* nonnull %arraydecay6.i42, i64* nonnull %arraydecay6.i42, i64* nonnull %arraydecay6.i42) #10
  %arraydecay2.i58 = getelementptr inbounds [7 x i64], [7 x i64]* %xR, i64 0, i64 0
  call void @fpadd434(i64* nonnull %arraydecay4.i35, i64* %arraydecay2.i58, i64* nonnull %arraydecay4.i35) #10
  %arraydecay8.i61 = getelementptr inbounds [7 x i64], [7 x i64]* %xR, i64 1, i64 0
  call void @fpadd434(i64* nonnull %arraydecay10.i38, i64* nonnull %arraydecay8.i61, i64* nonnull %arraydecay10.i38) #10
  call void @fpadd434(i64* nonnull %arraydecay.i39, i64* nonnull %arraydecay.i39, i64* nonnull %arraydecay.i39) #10
  call void @fpadd434(i64* nonnull %arraydecay6.i42, i64* nonnull %arraydecay6.i42, i64* nonnull %arraydecay6.i42) #10
  call void @fp2sqr434_mont([7 x i64]* %A, [7 x i64]* %A)
  call void @fp2inv434_mont([7 x i64]* nonnull %arraydecay2)
  call void @fp2mul434_mont([7 x i64]* %A, [7 x i64]* nonnull %arraydecay2, [7 x i64]* %A)
  call void @fpsub434(i64* %arraydecay2.i40, i64* nonnull %arraydecay4.i35, i64* %arraydecay2.i40) #10
  call void @fpsub434(i64* nonnull %arraydecay8.i43, i64* nonnull %arraydecay10.i38, i64* nonnull %arraydecay8.i43) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @j_inv([7 x i64]* %A, [7 x i64]* %C, [7 x i64]* %jinv) local_unnamed_addr #4 {
entry:
  %t0 = alloca [2 x [7 x i64]], align 16
  %t1 = alloca [2 x [7 x i64]], align 16
  %0 = bitcast [2 x [7 x i64]]* %t0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %0) #10
  %1 = bitcast [2 x [7 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %1) #10
  tail call void @fp2sqr434_mont([7 x i64]* %A, [7 x i64]* %jinv)
  %arraydecay = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 0
  call void @fp2sqr434_mont([7 x i64]* %C, [7 x i64]* nonnull %arraydecay)
  %arraydecay3 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t0, i64 0, i64 0
  %arraydecay.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 0, i64 0
  %arraydecay4.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t0, i64 0, i64 0, i64 0
  call void @fpadd434(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay.i, i64* nonnull %arraydecay4.i) #10
  %arraydecay6.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 1, i64 0
  %arraydecay10.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t0, i64 0, i64 1, i64 0
  call void @fpadd434(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay10.i) #10
  %arraydecay.i39 = getelementptr inbounds [7 x i64], [7 x i64]* %jinv, i64 0, i64 0
  call void @fpsub434(i64* %arraydecay.i39, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i) #10
  %arraydecay6.i42 = getelementptr inbounds [7 x i64], [7 x i64]* %jinv, i64 1, i64 0
  call void @fpsub434(i64* nonnull %arraydecay6.i42, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i) #10
  call void @fpsub434(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay.i, i64* nonnull %arraydecay4.i) #10
  call void @fpsub434(i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay10.i) #10
  call void @fpsub434(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay.i, i64* %arraydecay.i39) #10
  call void @fpsub434(i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i42) #10
  call void @fp2sqr434_mont([7 x i64]* nonnull %arraydecay, [7 x i64]* nonnull %arraydecay)
  call void @fp2mul434_mont([7 x i64]* %jinv, [7 x i64]* nonnull %arraydecay, [7 x i64]* %jinv)
  call void @fpadd434(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i) #10
  call void @fpadd434(i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i) #10
  call void @fpadd434(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i) #10
  call void @fpadd434(i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i) #10
  call void @fp2sqr434_mont([7 x i64]* nonnull %arraydecay3, [7 x i64]* nonnull %arraydecay)
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay3, [7 x i64]* nonnull %arraydecay, [7 x i64]* nonnull %arraydecay3)
  call void @fpadd434(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i) #10
  call void @fpadd434(i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i) #10
  call void @fpadd434(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i) #10
  call void @fpadd434(i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i) #10
  call void @fp2inv434_mont([7 x i64]* %jinv)
  call void @fp2mul434_mont([7 x i64]* %jinv, [7 x i64]* nonnull %arraydecay3, [7 x i64]* %jinv)
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @xDBLADD(%struct.point_proj* %P, %struct.point_proj* %Q, [7 x i64]* %XPQ, [7 x i64]* %ZPQ, [7 x i64]* %A24) local_unnamed_addr #4 {
entry:
  %t0 = alloca [2 x [7 x i64]], align 16
  %t1 = alloca [2 x [7 x i64]], align 16
  %t2 = alloca [2 x [7 x i64]], align 16
  %0 = bitcast [2 x [7 x i64]]* %t0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %0) #10
  %1 = bitcast [2 x [7 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %1) #10
  %2 = bitcast [2 x [7 x i64]]* %t2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  %arraydecay = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0
  %arraydecay1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 0
  %arraydecay2 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t0, i64 0, i64 0
  call fastcc void @mp2_add([7 x i64]* %arraydecay, [7 x i64]* nonnull %arraydecay1, [7 x i64]* nonnull %arraydecay2)
  %arraydecay7 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 0
  %arraydecay.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds [7 x i64], [7 x i64]* %arraydecay1, i64 0, i64 0
  %arraydecay4.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 0, i64 0
  call void @mp_sub434_p2(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i) #10
  %arraydecay6.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 1, i64 0
  %arraydecay8.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 1, i64 0
  %arraydecay10.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 1, i64 0
  call void @mp_sub434_p2(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i) #10
  call void @fp2sqr434_mont([7 x i64]* nonnull %arraydecay2, [7 x i64]* %arraydecay)
  %arraydecay12 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0
  %arraydecay14 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 0
  %arraydecay15 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t2, i64 0, i64 0
  %arraydecay.i112 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 0
  %arraydecay2.i113 = getelementptr inbounds [7 x i64], [7 x i64]* %arraydecay14, i64 0, i64 0
  %arraydecay4.i114 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t2, i64 0, i64 0, i64 0
  call void @mp_sub434_p2(i64* %arraydecay.i112, i64* nonnull %arraydecay2.i113, i64* nonnull %arraydecay4.i114) #10
  %arraydecay6.i115 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 1, i64 0
  %arraydecay8.i116 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 1, i64 0
  %arraydecay10.i117 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t2, i64 0, i64 1, i64 0
  call void @mp_sub434_p2(i64* nonnull %arraydecay6.i115, i64* nonnull %arraydecay8.i116, i64* nonnull %arraydecay10.i117) #10
  call fastcc void @mp2_add([7 x i64]* %arraydecay12, [7 x i64]* nonnull %arraydecay14, [7 x i64]* %arraydecay12)
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay2, [7 x i64]* nonnull %arraydecay15, [7 x i64]* nonnull %arraydecay2)
  call void @fp2sqr434_mont([7 x i64]* nonnull %arraydecay7, [7 x i64]* nonnull %arraydecay1)
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay7, [7 x i64]* %arraydecay12, [7 x i64]* nonnull %arraydecay7)
  call void @mp_sub434_p2(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i114) #10
  call void @mp_sub434_p2(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i117) #10
  call void @fp2mul434_mont([7 x i64]* %arraydecay, [7 x i64]* nonnull %arraydecay1, [7 x i64]* %arraydecay)
  call void @fp2mul434_mont([7 x i64]* %A24, [7 x i64]* nonnull %arraydecay15, [7 x i64]* %arraydecay12)
  %arraydecay.i124 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t0, i64 0, i64 0, i64 0
  call void @mp_sub434_p2(i64* nonnull %arraydecay.i124, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay2.i113) #10
  %arraydecay6.i127 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t0, i64 0, i64 1, i64 0
  call void @mp_sub434_p2(i64* nonnull %arraydecay6.i127, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay8.i116) #10
  call fastcc void @mp2_add([7 x i64]* %arraydecay12, [7 x i64]* nonnull %arraydecay1, [7 x i64]* nonnull %arraydecay1)
  call fastcc void @mp2_add([7 x i64]* nonnull %arraydecay2, [7 x i64]* nonnull %arraydecay7, [7 x i64]* %arraydecay12)
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay1, [7 x i64]* nonnull %arraydecay15, [7 x i64]* nonnull %arraydecay1)
  call void @fp2sqr434_mont([7 x i64]* nonnull %arraydecay14, [7 x i64]* nonnull %arraydecay14)
  call void @fp2sqr434_mont([7 x i64]* %arraydecay12, [7 x i64]* %arraydecay12)
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay14, [7 x i64]* %XPQ, [7 x i64]* nonnull %arraydecay14)
  call void @fp2mul434_mont([7 x i64]* %arraydecay12, [7 x i64]* %ZPQ, [7 x i64]* %arraydecay12)
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @xTPL_fast(%struct.point_proj* %P, %struct.point_proj* %Q, [7 x i64]* %A2) local_unnamed_addr #4 {
entry:
  %t1 = alloca [2 x [7 x i64]], align 16
  %t2 = alloca [2 x [7 x i64]], align 16
  %t3 = alloca [2 x [7 x i64]], align 16
  %t4 = alloca [2 x [7 x i64]], align 16
  %0 = bitcast [2 x [7 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %0) #10
  %1 = bitcast [2 x [7 x i64]]* %t2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %1) #10
  %2 = bitcast [2 x [7 x i64]]* %t3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  %3 = bitcast [2 x [7 x i64]]* %t4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %3) #10
  %arraydecay = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0
  %arraydecay1 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 0
  call void @fp2sqr434_mont([7 x i64]* %arraydecay, [7 x i64]* nonnull %arraydecay1)
  %arraydecay2 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 0
  %arraydecay3 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t2, i64 0, i64 0
  call void @fp2sqr434_mont([7 x i64]* nonnull %arraydecay2, [7 x i64]* nonnull %arraydecay3)
  %arraydecay6 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t3, i64 0, i64 0
  %arraydecay.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t2, i64 0, i64 0, i64 0
  %arraydecay4.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t3, i64 0, i64 0, i64 0
  call void @fpadd434(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i) #10
  %arraydecay6.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t1, i64 0, i64 1, i64 0
  %arraydecay8.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t2, i64 0, i64 1, i64 0
  %arraydecay10.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t3, i64 0, i64 1, i64 0
  call void @fpadd434(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i) #10
  %arraydecay11 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t4, i64 0, i64 0
  %arraydecay.i71 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 0
  %arraydecay2.i72 = getelementptr inbounds [7 x i64], [7 x i64]* %arraydecay2, i64 0, i64 0
  %arraydecay4.i73 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t4, i64 0, i64 0, i64 0
  call void @fpadd434(i64* %arraydecay.i71, i64* nonnull %arraydecay2.i72, i64* nonnull %arraydecay4.i73) #10
  %arraydecay6.i74 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 1, i64 0
  %arraydecay8.i75 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 1, i64 0
  %arraydecay10.i76 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t4, i64 0, i64 1, i64 0
  call void @fpadd434(i64* nonnull %arraydecay6.i74, i64* nonnull %arraydecay8.i75, i64* nonnull %arraydecay10.i76) #10
  call void @fp2sqr434_mont([7 x i64]* nonnull %arraydecay11, [7 x i64]* nonnull %arraydecay11)
  call void @fpsub434(i64* nonnull %arraydecay4.i73, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i73) #10
  call void @fpsub434(i64* nonnull %arraydecay10.i76, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i76) #10
  call void @fp2mul434_mont([7 x i64]* %A2, [7 x i64]* nonnull %arraydecay11, [7 x i64]* nonnull %arraydecay11)
  call void @fpadd434(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i73, i64* nonnull %arraydecay4.i73) #10
  call void @fpadd434(i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i76, i64* nonnull %arraydecay10.i76) #10
  call void @fpsub434(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i) #10
  call void @fpsub434(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i) #10
  call void @fp2sqr434_mont([7 x i64]* nonnull %arraydecay6, [7 x i64]* nonnull %arraydecay6)
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay1, [7 x i64]* nonnull %arraydecay11, [7 x i64]* nonnull %arraydecay1)
  call void @fpadd434(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay.i, i64* nonnull %arraydecay.i) #10
  call void @fpadd434(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i) #10
  call void @fpadd434(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay.i, i64* nonnull %arraydecay.i) #10
  call void @fpadd434(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i) #10
  call void @fpsub434(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay.i) #10
  call void @fpsub434(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay6.i) #10
  call void @fp2sqr434_mont([7 x i64]* nonnull %arraydecay1, [7 x i64]* nonnull %arraydecay1)
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay3, [7 x i64]* nonnull %arraydecay11, [7 x i64]* nonnull %arraydecay3)
  call void @fpadd434(i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay2.i) #10
  call void @fpadd434(i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay8.i) #10
  call void @fpadd434(i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay2.i) #10
  call void @fpadd434(i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay8.i) #10
  call void @fpsub434(i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay2.i) #10
  call void @fpsub434(i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay8.i) #10
  call void @fp2sqr434_mont([7 x i64]* nonnull %arraydecay3, [7 x i64]* nonnull %arraydecay3)
  %arraydecay59 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0
  call void @fp2mul434_mont([7 x i64]* %arraydecay, [7 x i64]* nonnull %arraydecay3, [7 x i64]* %arraydecay59)
  %arraydecay64 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 0
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay2, [7 x i64]* nonnull %arraydecay1, [7 x i64]* nonnull %arraydecay64)
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @xTPLe_fast(%struct.point_proj* nocapture readonly %P, %struct.point_proj* %Q, [7 x i64]* %A2, i32 %e) local_unnamed_addr #4 {
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
  %cmp5 = icmp sgt i32 %e, 0
  br i1 %cmp5, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret void

for.body:                                         ; preds = %entry, %for.body
  %i.06 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  tail call void @xTPL_fast(%struct.point_proj* %Q, %struct.point_proj* %Q, [7 x i64]* %A2)
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond = icmp eq i32 %inc, %e
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nounwind ssp uwtable
define i32 @random_mod_order_A_SIDHp434(i8* %random_digits) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @randombytes(i8* %random_digits, i64 27) #10
  %cmp = icmp ne i32 %call, 0
  %. = zext i1 %cmp to i32
  ret i32 %.
}

declare i32 @randombytes(i8*, i64) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define i32 @random_mod_order_B_SIDHp434(i8* %random_digits) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @randombytes(i8* %random_digits, i64 28) #10
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds i8, i8* %random_digits, i64 27
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %1 = and i8 %0, 1
  store i8 %1, i8* %arrayidx, align 1, !tbaa !7
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind ssp uwtable
define i32 @EphemeralKeyGeneration_A_SIDHp434(i8* %PrivateKeyA, i8* %PublicKeyA) local_unnamed_addr #4 {
entry:
  %temp.i.i.i.i = alloca [14 x i64], align 16
  %one.i.i.i = alloca [7 x i64], align 16
  %t.i = alloca [2 x [7 x i64]], align 16
  %R = alloca [1 x %struct.point_proj], align 16
  %phiP = alloca [1 x %struct.point_proj], align 16
  %phiQ = alloca [1 x %struct.point_proj], align 16
  %phiR = alloca [1 x %struct.point_proj], align 16
  %pts = alloca [7 x [1 x %struct.point_proj]], align 16
  %XPA = alloca [2 x [7 x i64]], align 16
  %XQA = alloca [2 x [7 x i64]], align 16
  %XRA = alloca [2 x [7 x i64]], align 16
  %coeff = alloca [3 x [2 x [7 x i64]]], align 16
  %A24plus = alloca [2 x [7 x i64]], align 16
  %C24 = alloca [2 x [7 x i64]], align 16
  %A = alloca [2 x [7 x i64]], align 16
  %pts_index = alloca [7 x i32], align 16
  %SecretKeyA = alloca [4 x i64], align 16
  %0 = bitcast [1 x %struct.point_proj]* %R to i8*
  call void @llvm.lifetime.start.p0i8(i64 224, i8* nonnull %0) #10
  %1 = bitcast [1 x %struct.point_proj]* %phiP to i8*
  call void @llvm.lifetime.start.p0i8(i64 224, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 224, i1 false)
  %2 = bitcast [1 x %struct.point_proj]* %phiQ to i8*
  call void @llvm.lifetime.start.p0i8(i64 224, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 224, i1 false)
  %3 = bitcast [1 x %struct.point_proj]* %phiR to i8*
  call void @llvm.lifetime.start.p0i8(i64 224, i8* nonnull %3) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %3, i8 0, i64 224, i1 false)
  %4 = bitcast [7 x [1 x %struct.point_proj]]* %pts to i8*
  call void @llvm.lifetime.start.p0i8(i64 1568, i8* nonnull %4) #10
  %5 = bitcast [2 x [7 x i64]]* %XPA to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %5) #10
  %6 = bitcast [2 x [7 x i64]]* %XQA to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %6) #10
  %7 = bitcast [2 x [7 x i64]]* %XRA to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %7) #10
  %8 = bitcast [3 x [2 x [7 x i64]]]* %coeff to i8*
  call void @llvm.lifetime.start.p0i8(i64 336, i8* nonnull %8) #10
  %9 = bitcast [2 x [7 x i64]]* %A24plus to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %9) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 112, i1 false)
  %10 = bitcast [2 x [7 x i64]]* %C24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %10) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 112, i1 false)
  %11 = bitcast [2 x [7 x i64]]* %A to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 112, i1 false)
  %12 = bitcast [7 x i32]* %pts_index to i8*
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %12) #10
  %13 = bitcast [4 x i64]* %SecretKeyA to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %13) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %13, i8 0, i64 32, i1 false)
  %arraydecay = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %XPA, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %XQA, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %XRA, i64 0, i64 0
  %14 = bitcast [2 x [7 x i64]]* %XPA to <4 x i64>*
  store <4 x i64> <i64 409251790387889599, i64 -7956914563081327573, i64 -5772233213491609001, i64 8135632727773423537>, <4 x i64>* %14, align 16, !tbaa !3
  %arrayidx2.4.i.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %XPA, i64 0, i64 0, i64 4
  %15 = bitcast i64* %arrayidx2.4.i.i to <4 x i64>*
  store <4 x i64> <i64 -605746078158370611, i64 2414452085739184671, i64 11115521240260, i64 8395851790856910728>, <4 x i64>* %15, align 16, !tbaa !3
  %arrayidx2.1.i72.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %XPA, i64 0, i64 1, i64 1
  %16 = bitcast i64* %arrayidx2.1.i72.i to <4 x i64>*
  store <4 x i64> <i64 2986355008512957707, i64 -3794508369610992171, i64 -8297630390065234006, i64 -6344405898491969121>, <4 x i64>* %16, align 8, !tbaa !3
  %arrayidx2.5.i80.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %XPA, i64 0, i64 1, i64 5
  store i64 -2994353266636644724, i64* %arrayidx2.5.i80.i, align 8, !tbaa !3
  %arrayidx2.6.i82.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %XPA, i64 0, i64 1, i64 6
  store i64 281073067659850, i64* %arrayidx2.6.i82.i, align 8, !tbaa !3
  %17 = bitcast [2 x [7 x i64]]* %XQA to <4 x i64>*
  store <4 x i64> <i64 -88129956366309573, i64 -3267881773463506490, i64 -507342119971546937, i64 -2145611229349799165>, <4 x i64>* %17, align 16, !tbaa !3
  %arrayidx2.4.i66.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %XQA, i64 0, i64 0, i64 4
  %18 = bitcast i64* %arrayidx2.4.i66.i to <4 x i64>*
  store <4 x i64> <i64 1973682341831588061, i64 8312799048378913301, i64 497853136119926, i64 -5930968907585159722>, <4 x i64>* %18, align 16, !tbaa !3
  %arrayidx2.1.i48.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %XQA, i64 0, i64 1, i64 1
  %19 = bitcast i64* %arrayidx2.1.i48.i to <4 x i64>*
  store <4 x i64> <i64 7710088909771808848, i64 7498146198864584751, i64 2174778336782639988, i64 -2099344739079935595>, <4 x i64>* %19, align 8, !tbaa !3
  %arrayidx2.5.i56.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %XQA, i64 0, i64 1, i64 5
  store i64 -6420807801124297464, i64* %arrayidx2.5.i56.i, align 8, !tbaa !3
  %arrayidx2.6.i58.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %XQA, i64 0, i64 1, i64 6
  store i64 438485524985150, i64* %arrayidx2.6.i58.i, align 8, !tbaa !3
  %20 = bitcast [2 x [7 x i64]]* %XRA to <4 x i64>*
  store <4 x i64> <i64 124497379906645117, i64 3220114552465917457, i64 2709773247140401691, i64 6980995868580086445>, <4 x i64>* %20, align 16, !tbaa !3
  %arrayidx2.4.i42.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %XRA, i64 0, i64 0, i64 4
  %21 = bitcast i64* %arrayidx2.4.i42.i to <4 x i64>*
  store <4 x i64> <i64 4225536559282510125, i64 4701685901084574963, i64 609687130428995, i64 -5139244406301072054>, <4 x i64>* %21, align 16, !tbaa !3
  %arrayidx2.1.i24.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %XRA, i64 0, i64 1, i64 1
  %22 = bitcast i64* %arrayidx2.1.i24.i to <4 x i64>*
  store <4 x i64> <i64 -1180825250703942163, i64 6350294504100107936, i64 8618087912213766372, i64 308885086986017528>, <4 x i64>* %22, align 8, !tbaa !3
  %arrayidx2.5.i32.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %XRA, i64 0, i64 1, i64 5
  store i64 -2653863745610111006, i64* %arrayidx2.5.i32.i, align 8, !tbaa !3
  %arrayidx2.6.i34.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %XRA, i64 0, i64 1, i64 6
  store i64 202858940514502, i64* %arrayidx2.6.i34.i, align 8, !tbaa !3
  %arraydecay3 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0
  %arraydecay.i188 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 0, i64 0
  %23 = bitcast [1 x %struct.point_proj]* %phiP to <4 x i64>*
  store <4 x i64> <i64 7950145635403778211, i64 3053921039650069509, i64 -1472232571310339971, i64 6369396808518798415>, <4 x i64>* %23, align 16, !tbaa !3
  %arrayidx2.4.i.i192 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 0, i64 4
  store i64 -5151006957371847381, i64* %arrayidx2.4.i.i192, align 16, !tbaa !3
  %arrayidx2.5.i.i193 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 0, i64 5
  store i64 2507423554624419257, i64* %arrayidx2.5.i.i193, align 8, !tbaa !3
  %arrayidx2.6.i.i194 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 0, i64 6
  store i64 491294718579999, i64* %arrayidx2.6.i.i194, align 16, !tbaa !3
  %arraydecay2.i195 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 1, i64 0
  %arraydecay5.i202 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 0, i64 0
  %24 = bitcast i64* %arraydecay2.i195 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %24, i8 0, i64 56, i1 false)
  %25 = bitcast [1 x %struct.point_proj]* %phiQ to <4 x i64>*
  store <4 x i64> <i64 -368551928616227954, i64 5280595860558773788, i64 -1217497873284611460, i64 5300724274592529762>, <4 x i64>* %25, align 16, !tbaa !3
  %arrayidx2.4.i66.i206 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 0, i64 4
  store i64 -5761561158429016438, i64* %arrayidx2.4.i66.i206, align 16, !tbaa !3
  %arrayidx2.5.i68.i207 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 0, i64 5
  store i64 -850473803693194369, i64* %arrayidx2.5.i68.i207, align 8, !tbaa !3
  %arrayidx2.6.i70.i208 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 0, i64 6
  store i64 57208989669550, i64* %arrayidx2.6.i70.i208, align 16, !tbaa !3
  %arraydecay8.i209 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 1, i64 0
  %arraydecay11.i216 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 0, i64 0
  %26 = bitcast i64* %arraydecay8.i209 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %26, i8 0, i64 56, i1 false)
  %27 = bitcast [1 x %struct.point_proj]* %phiR to <4 x i64>*
  store <4 x i64> <i64 2898969037767559396, i64 -7923814947979270585, i64 9073321008578907802, i64 7539793830764276893>, <4 x i64>* %27, align 16, !tbaa !3
  %arrayidx2.4.i42.i220 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 0, i64 4
  %arraydecay14.i223 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 1, i64 0
  %28 = bitcast i64* %arrayidx2.4.i42.i220 to <4 x i64>*
  store <4 x i64> <i64 -9117835332022963109, i64 148738643701593348, i64 139132528504375, i64 -5514455700498887503>, <4 x i64>* %28, align 16, !tbaa !3
  %arrayidx2.1.i24.i224 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 1, i64 1
  %29 = bitcast i64* %arrayidx2.1.i24.i224 to <4 x i64>*
  store <4 x i64> <i64 7856701733796155952, i64 -1449781872342195351, i64 3113577795642755667, i64 4926779461749210259>, <4 x i64>* %29, align 8, !tbaa !3
  %arrayidx2.5.i32.i228 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 1, i64 5
  store i64 -4685648887271738037, i64* %arrayidx2.5.i32.i228, align 8, !tbaa !3
  %arrayidx2.6.i34.i229 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 1, i64 6
  store i64 408994988652499, i64* %arrayidx2.6.i34.i229, align 8, !tbaa !3
  %Z = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 1
  %arraydecay12 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %Z, i64 0, i64 0, i64 0
  store i64 29740, i64* %arraydecay12, align 16, !tbaa !3
  %arrayidx2.1.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.3.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 1, i64 0, i64 3
  %30 = bitcast i64* %arrayidx2.1.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %30, i8 0, i64 16, i1 false)
  %31 = bitcast i64* %arrayidx2.3.i to <4 x i64>*
  store <4 x i64> <i64 -5111598749797318656, i64 -2881840887160132396, i64 -1643158192681172724, i64 260509760564954>, <4 x i64>* %31, align 8, !tbaa !3
  %Z14 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 1
  %arraydecay16 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %Z14, i64 0, i64 0, i64 0
  store i64 29740, i64* %arraydecay16, align 16, !tbaa !3
  %arrayidx2.1.i230 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.3.i232 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 1, i64 0, i64 3
  %32 = bitcast i64* %arrayidx2.1.i230 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %32, i8 0, i64 16, i1 false)
  %33 = bitcast i64* %arrayidx2.3.i232 to <4 x i64>*
  store <4 x i64> <i64 -5111598749797318656, i64 -2881840887160132396, i64 -1643158192681172724, i64 260509760564954>, <4 x i64>* %33, align 8, !tbaa !3
  %Z18 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 1
  %arraydecay20 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %Z18, i64 0, i64 0, i64 0
  store i64 29740, i64* %arraydecay20, align 16, !tbaa !3
  %arrayidx2.1.i236 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.3.i238 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 1, i64 0, i64 3
  %34 = bitcast i64* %arrayidx2.1.i236 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %34, i8 0, i64 16, i1 false)
  store i64 -5111598749797318656, i64* %arrayidx2.3.i238, align 8, !tbaa !3
  %arrayidx2.4.i239 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 1, i64 0, i64 4
  %35 = bitcast i64* %arrayidx2.4.i239 to <2 x i64>*
  store <2 x i64> <i64 -2881840887160132396, i64 -1643158192681172724>, <2 x i64>* %35, align 16, !tbaa !3
  %arrayidx2.6.i241 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 1, i64 0, i64 6
  store i64 260509760564954, i64* %arrayidx2.6.i241, align 16, !tbaa !3
  %arraydecay22 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A24plus, i64 0, i64 0, i64 0
  store i64 29740, i64* %arraydecay22, align 16, !tbaa !3
  %arrayidx2.1.i242 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A24plus, i64 0, i64 0, i64 1
  %arrayidx2.3.i244 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A24plus, i64 0, i64 0, i64 3
  %36 = bitcast i64* %arrayidx2.1.i242 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %36, i8 0, i64 16, i1 false)
  %37 = bitcast i64* %arrayidx2.3.i244 to <4 x i64>*
  store <4 x i64> <i64 -5111598749797318656, i64 -2881840887160132396, i64 -1643158192681172724, i64 260509760564954>, <4 x i64>* %37, align 8, !tbaa !3
  %arraydecay23 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A24plus, i64 0, i64 0
  call fastcc void @mp2_add([7 x i64]* nonnull %arraydecay23, [7 x i64]* nonnull %arraydecay23, [7 x i64]* nonnull %arraydecay23)
  %arraydecay28 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %C24, i64 0, i64 0
  call fastcc void @mp2_add([7 x i64]* nonnull %arraydecay23, [7 x i64]* nonnull %arraydecay23, [7 x i64]* nonnull %arraydecay28)
  %arraydecay31 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A, i64 0, i64 0
  call fastcc void @mp2_add([7 x i64]* nonnull %arraydecay23, [7 x i64]* nonnull %arraydecay28, [7 x i64]* nonnull %arraydecay31)
  call fastcc void @mp2_add([7 x i64]* nonnull %arraydecay28, [7 x i64]* nonnull %arraydecay28, [7 x i64]* nonnull %arraydecay23)
  %arraydecay35 = getelementptr inbounds [4 x i64], [4 x i64]* %SecretKeyA, i64 0, i64 0
  %arrayidx.i = getelementptr inbounds [4 x i64], [4 x i64]* %SecretKeyA, i64 0, i64 3
  store i64 0, i64* %arrayidx.i, align 8, !tbaa !3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %13, i8* align 1 %PrivateKeyA, i64 27, i1 false)
  %arraydecay40 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0
  call fastcc void @LADDER3PT([7 x i64]* nonnull %arraydecay, [7 x i64]* nonnull %arraydecay1, [7 x i64]* nonnull %arraydecay2, i64* nonnull %arraydecay35, i32 0, %struct.point_proj* nonnull %arraydecay40, [7 x i64]* nonnull %arraydecay31)
  %arrayidx.4.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 0, i64 4
  %arrayidx.1.i9.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 1, i64 1
  %arrayidx.5.i17.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 1, i64 5
  %arrayidx.2.i.i260 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 0, i64 2
  %arrayidx.6.i.i268 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 0, i64 6
  %arrayidx.3.i13.i276 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 1, i64 3
  %arraydecay70 = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %coeff, i64 0, i64 0
  %38 = bitcast [1 x %struct.point_proj]* %R to <4 x i64>*
  %39 = bitcast i64* %arrayidx.4.i.i to <4 x i64>*
  %40 = bitcast i64* %arrayidx.1.i9.i to <4 x i64>*
  %41 = bitcast i64* %arrayidx.5.i17.i to <4 x i64>*
  %42 = bitcast i64* %arrayidx.2.i.i260 to <4 x i64>*
  %43 = bitcast i64* %arrayidx.6.i.i268 to <4 x i64>*
  %44 = bitcast i64* %arrayidx.3.i13.i276 to <4 x i64>*
  %45 = bitcast [1 x %struct.point_proj]* %R to <4 x i64>*
  %46 = bitcast i64* %arrayidx.4.i.i to <4 x i64>*
  %47 = bitcast i64* %arrayidx.1.i9.i to <4 x i64>*
  %48 = bitcast i64* %arrayidx.5.i17.i to <4 x i64>*
  %49 = bitcast i64* %arrayidx.2.i.i260 to <4 x i64>*
  %50 = bitcast i64* %arrayidx.6.i.i268 to <4 x i64>*
  %51 = bitcast i64* %arrayidx.3.i13.i276 to <4 x i64>*
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.end, %entry
  %ii.0374 = phi i32 [ 0, %entry ], [ %ii.1.lcssa, %for.end ]
  %npts.0373 = phi i32 [ 0, %entry ], [ %sub85, %for.end ]
  %index.0372 = phi i32 [ 0, %entry ], [ %81, %for.end ]
  %row.0371 = phi i32 [ 1, %entry ], [ %inc108, %for.end ]
  %sub = sub nuw nsw i32 108, %row.0371
  %cmp42364 = icmp ult i32 %index.0372, %sub
  br i1 %cmp42364, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %ii.1367 = phi i32 [ %inc60, %while.body ], [ %ii.0374, %while.cond.preheader ]
  %npts.1366 = phi i32 [ %inc, %while.body ], [ %npts.0373, %while.cond.preheader ]
  %index.1365 = phi i32 [ %add, %while.body ], [ %index.0372, %while.cond.preheader ]
  %idxprom = zext i32 %npts.1366 to i64
  %arraydecay2.i249 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 0, i64 0
  %52 = load <4 x i64>, <4 x i64>* %38, align 16, !tbaa !3
  %53 = bitcast i64* %arraydecay2.i249 to <4 x i64>*
  store <4 x i64> %52, <4 x i64>* %53, align 16, !tbaa !3
  %arrayidx2.4.i.i253 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 0, i64 4
  %54 = load <4 x i64>, <4 x i64>* %39, align 16, !tbaa !3
  %55 = bitcast i64* %arrayidx2.4.i.i253 to <4 x i64>*
  store <4 x i64> %54, <4 x i64>* %55, align 16, !tbaa !3
  %arrayidx2.1.i10.i = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 1, i64 1
  %56 = load <4 x i64>, <4 x i64>* %40, align 8, !tbaa !3
  %57 = bitcast i64* %arrayidx2.1.i10.i to <4 x i64>*
  store <4 x i64> %56, <4 x i64>* %57, align 8, !tbaa !3
  %arrayidx2.5.i18.i = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 1, i64 5
  %58 = load <4 x i64>, <4 x i64>* %41, align 8, !tbaa !3
  %59 = bitcast i64* %arrayidx2.5.i18.i to <4 x i64>*
  store <4 x i64> %58, <4 x i64>* %59, align 8, !tbaa !3
  %arrayidx2.2.i.i261 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 0, i64 2
  %60 = load <4 x i64>, <4 x i64>* %42, align 16, !tbaa !3
  %61 = bitcast i64* %arrayidx2.2.i.i261 to <4 x i64>*
  store <4 x i64> %60, <4 x i64>* %61, align 16, !tbaa !3
  %arrayidx2.6.i.i269 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 0, i64 6
  %62 = load <4 x i64>, <4 x i64>* %43, align 16, !tbaa !3
  %63 = bitcast i64* %arrayidx2.6.i.i269 to <4 x i64>*
  store <4 x i64> %62, <4 x i64>* %63, align 16, !tbaa !3
  %arrayidx2.3.i14.i277 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 1, i64 3
  %64 = load <4 x i64>, <4 x i64>* %44, align 8, !tbaa !3
  %65 = bitcast i64* %arrayidx2.3.i14.i277 to <4 x i64>*
  store <4 x i64> %64, <4 x i64>* %65, align 8, !tbaa !3
  %inc = add i32 %npts.1366, 1
  %arrayidx59 = getelementptr inbounds [7 x i32], [7 x i32]* %pts_index, i64 0, i64 %idxprom
  store i32 %index.1365, i32* %arrayidx59, align 4, !tbaa !59
  %inc60 = add i32 %ii.1367, 1
  %idxprom61 = zext i32 %ii.1367 to i64
  %arrayidx62 = getelementptr inbounds [107 x i32], [107 x i32]* @strat_Alice, i64 0, i64 %idxprom61
  %66 = load i32, i32* %arrayidx62, align 4, !tbaa !59
  %mul = shl i32 %66, 1
  call void @xDBLe(%struct.point_proj* nonnull %arraydecay40, %struct.point_proj* nonnull %arraydecay40, [7 x i64]* nonnull %arraydecay23, [7 x i64]* nonnull %arraydecay28, i32 %mul)
  %add = add i32 %66, %index.1365
  %cmp42 = icmp ult i32 %add, %sub
  br i1 %cmp42, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %npts.1.lcssa = phi i32 [ %npts.0373, %while.cond.preheader ], [ %inc, %while.body ]
  %ii.1.lcssa = phi i32 [ %ii.0374, %while.cond.preheader ], [ %inc60, %while.body ]
  call void @get_4_isog(%struct.point_proj* nonnull %arraydecay40, [7 x i64]* nonnull %arraydecay23, [7 x i64]* nonnull %arraydecay28, [2 x [7 x i64]]* nonnull %arraydecay70)
  %cmp72369 = icmp eq i32 %npts.1.lcssa, 0
  br i1 %cmp72369, label %for.end, label %for.body73.preheader

for.body73.preheader:                             ; preds = %while.end
  %wide.trip.count = zext i32 %npts.1.lcssa to i64
  br label %for.body73

for.body73:                                       ; preds = %for.body73, %for.body73.preheader
  %indvars.iv = phi i64 [ 0, %for.body73.preheader ], [ %indvars.iv.next, %for.body73 ]
  %arraydecay76 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %indvars.iv, i64 0
  call void @eval_4_isog(%struct.point_proj* nonnull %arraydecay76, [2 x [7 x i64]]* nonnull %arraydecay70)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.end, label %for.body73

for.end:                                          ; preds = %for.body73, %while.end
  call void @eval_4_isog(%struct.point_proj* nonnull %arraydecay3, [2 x [7 x i64]]* nonnull %arraydecay70)
  call void @eval_4_isog(%struct.point_proj* nonnull %arraydecay5, [2 x [7 x i64]]* nonnull %arraydecay70)
  call void @eval_4_isog(%struct.point_proj* nonnull %arraydecay8, [2 x [7 x i64]]* nonnull %arraydecay70)
  %sub85 = add i32 %npts.1.lcssa, -1
  %idxprom86 = zext i32 %sub85 to i64
  %arraydecay.i284 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 0, i64 0, i64 0
  %67 = bitcast i64* %arraydecay.i284 to <4 x i64>*
  %68 = load <4 x i64>, <4 x i64>* %67, align 16, !tbaa !3
  store <4 x i64> %68, <4 x i64>* %45, align 16, !tbaa !3
  %arrayidx.4.i.i292 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 0, i64 0, i64 4
  %69 = bitcast i64* %arrayidx.4.i.i292 to <4 x i64>*
  %70 = load <4 x i64>, <4 x i64>* %69, align 16, !tbaa !3
  store <4 x i64> %70, <4 x i64>* %46, align 16, !tbaa !3
  %arrayidx.1.i9.i300 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 0, i64 1, i64 1
  %71 = bitcast i64* %arrayidx.1.i9.i300 to <4 x i64>*
  %72 = load <4 x i64>, <4 x i64>* %71, align 8, !tbaa !3
  store <4 x i64> %72, <4 x i64>* %47, align 8, !tbaa !3
  %arrayidx.5.i17.i308 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 0, i64 1, i64 5
  %73 = bitcast i64* %arrayidx.5.i17.i308 to <4 x i64>*
  %74 = load <4 x i64>, <4 x i64>* %73, align 8, !tbaa !3
  store <4 x i64> %74, <4 x i64>* %48, align 8, !tbaa !3
  %arrayidx.2.i.i328 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 1, i64 0, i64 2
  %75 = bitcast i64* %arrayidx.2.i.i328 to <4 x i64>*
  %76 = load <4 x i64>, <4 x i64>* %75, align 16, !tbaa !3
  store <4 x i64> %76, <4 x i64>* %49, align 16, !tbaa !3
  %arrayidx.6.i.i336 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 1, i64 0, i64 6
  %77 = bitcast i64* %arrayidx.6.i.i336 to <4 x i64>*
  %78 = load <4 x i64>, <4 x i64>* %77, align 16, !tbaa !3
  store <4 x i64> %78, <4 x i64>* %50, align 16, !tbaa !3
  %arrayidx.3.i13.i344 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 1, i64 1, i64 3
  %79 = bitcast i64* %arrayidx.3.i13.i344 to <4 x i64>*
  %80 = load <4 x i64>, <4 x i64>* %79, align 8, !tbaa !3
  store <4 x i64> %80, <4 x i64>* %51, align 8, !tbaa !3
  %arrayidx105 = getelementptr inbounds [7 x i32], [7 x i32]* %pts_index, i64 0, i64 %idxprom86
  %81 = load i32, i32* %arrayidx105, align 4, !tbaa !59
  %inc108 = add nuw nsw i32 %row.0371, 1
  %exitcond375 = icmp eq i32 %inc108, 108
  br i1 %exitcond375, label %for.end109, label %while.cond.preheader

for.end109:                                       ; preds = %for.end
  %arraydecay4 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 0
  %arraydecay7 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 0
  %arraydecay10 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 0
  call void @get_4_isog(%struct.point_proj* nonnull %arraydecay40, [7 x i64]* nonnull %arraydecay23, [7 x i64]* nonnull %arraydecay28, [2 x [7 x i64]]* nonnull %arraydecay70)
  call void @eval_4_isog(%struct.point_proj* nonnull %arraydecay3, [2 x [7 x i64]]* nonnull %arraydecay70)
  call void @eval_4_isog(%struct.point_proj* nonnull %arraydecay5, [2 x [7 x i64]]* nonnull %arraydecay70)
  call void @eval_4_isog(%struct.point_proj* nonnull %arraydecay8, [2 x [7 x i64]]* nonnull %arraydecay70)
  %arraydecay122 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %Z, i64 0, i64 0
  %arraydecay125 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %Z14, i64 0, i64 0
  %arraydecay128 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %Z18, i64 0, i64 0
  call void @inv_3_way([7 x i64]* nonnull %arraydecay122, [7 x i64]* nonnull %arraydecay125, [7 x i64]* nonnull %arraydecay128)
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay4, [7 x i64]* nonnull %arraydecay122, [7 x i64]* nonnull %arraydecay4)
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay7, [7 x i64]* nonnull %arraydecay125, [7 x i64]* nonnull %arraydecay7)
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay10, [7 x i64]* nonnull %arraydecay128, [7 x i64]* nonnull %arraydecay10)
  %82 = bitcast [2 x [7 x i64]]* %t.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %82) #10
  %arraydecay2.i.i356 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t.i, i64 0, i64 0, i64 0
  %83 = bitcast [7 x i64]* %one.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %83) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %83, i8 0, i64 56, i1 false) #10
  %arrayidx.i.i.i357 = getelementptr inbounds [7 x i64], [7 x i64]* %one.i.i.i, i64 0, i64 0
  store i64 1, i64* %arrayidx.i.i.i357, align 16, !tbaa !3
  %84 = bitcast [14 x i64]* %temp.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %84) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %84, i8 0, i64 112, i1 false) #10
  %arraydecay.i.i.i.i358 = getelementptr inbounds [14 x i64], [14 x i64]* %temp.i.i.i.i, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay.i188, i64* nonnull %arrayidx.i.i.i357, i64* nonnull %arraydecay.i.i.i.i358, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i358, i64* nonnull %arraydecay2.i.i356) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %84) #10
  call void @fpcorrection434(i64* nonnull %arraydecay2.i.i356) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %83) #10
  %arraydecay6.i.i360 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t.i, i64 0, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %83) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %83, i8 0, i64 56, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i357, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %84) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %84, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2.i195, i64* nonnull %arrayidx.i.i.i357, i64* nonnull %arraydecay.i.i.i.i358, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i358, i64* nonnull %arraydecay6.i.i360) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %84) #10
  call void @fpcorrection434(i64* nonnull %arraydecay6.i.i360) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %83) #10
  %85 = call i64 @llvm.objectsize.i64.p0i8(i8* %PublicKeyA, i1 false, i1 true) #10
  %call.i.i361 = call i8* @__memcpy_chk(i8* %PublicKeyA, i8* nonnull %82, i64 55, i64 %85) #10
  %add.ptr.i362 = getelementptr inbounds i8, i8* %PublicKeyA, i64 55
  %86 = bitcast i64* %arraydecay6.i.i360 to i8*
  %87 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr.i362, i1 false, i1 true) #10
  %call.i5.i363 = call i8* @__memcpy_chk(i8* nonnull %add.ptr.i362, i8* nonnull %86, i64 55, i64 %87) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %82) #10
  %add.ptr = getelementptr inbounds i8, i8* %PublicKeyA, i64 110
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %82) #10
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %83) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %83, i8 0, i64 56, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i357, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %84) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %84, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay5.i202, i64* nonnull %arrayidx.i.i.i357, i64* nonnull %arraydecay.i.i.i.i358, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i358, i64* nonnull %arraydecay2.i.i356) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %84) #10
  call void @fpcorrection434(i64* nonnull %arraydecay2.i.i356) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %83) #10
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %83) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %83, i8 0, i64 56, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i357, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %84) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %84, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.i209, i64* nonnull %arrayidx.i.i.i357, i64* nonnull %arraydecay.i.i.i.i358, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i358, i64* nonnull %arraydecay6.i.i360) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %84) #10
  call void @fpcorrection434(i64* nonnull %arraydecay6.i.i360) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %83) #10
  %88 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr, i1 false, i1 true) #10
  %call.i.i321 = call i8* @__memcpy_chk(i8* nonnull %add.ptr, i8* nonnull %82, i64 55, i64 %88) #10
  %add.ptr.i322 = getelementptr inbounds i8, i8* %PublicKeyA, i64 165
  %89 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr.i322, i1 false, i1 true) #10
  %call.i5.i323 = call i8* @__memcpy_chk(i8* nonnull %add.ptr.i322, i8* nonnull %86, i64 55, i64 %89) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %82) #10
  %add.ptr165 = getelementptr inbounds i8, i8* %PublicKeyA, i64 220
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %82) #10
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %83) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %83, i8 0, i64 56, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i357, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %84) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %84, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay11.i216, i64* nonnull %arrayidx.i.i.i357, i64* nonnull %arraydecay.i.i.i.i358, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i358, i64* nonnull %arraydecay2.i.i356) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %84) #10
  call void @fpcorrection434(i64* nonnull %arraydecay2.i.i356) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %83) #10
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %83) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %83, i8 0, i64 56, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i357, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %84) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %84, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay14.i223, i64* nonnull %arrayidx.i.i.i357, i64* nonnull %arraydecay.i.i.i.i358, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i358, i64* nonnull %arraydecay6.i.i360) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %84) #10
  call void @fpcorrection434(i64* nonnull %arraydecay6.i.i360) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %83) #10
  %90 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr165, i1 false, i1 true) #10
  %call.i.i = call i8* @__memcpy_chk(i8* nonnull %add.ptr165, i8* nonnull %82, i64 55, i64 %90) #10
  %add.ptr.i = getelementptr inbounds i8, i8* %PublicKeyA, i64 275
  %91 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr.i, i1 false, i1 true) #10
  %call.i5.i = call i8* @__memcpy_chk(i8* nonnull %add.ptr.i, i8* nonnull %86, i64 55, i64 %91) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %82) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %13) #10
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %12) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %11) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %10) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %9) #10
  call void @llvm.lifetime.end.p0i8(i64 336, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 1568, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %0) #10
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @LADDER3PT([7 x i64]* nocapture readonly %xP, [7 x i64]* nocapture readonly %xQ, [7 x i64]* nocapture readonly %xPQ, i64* nocapture readonly %m, i32 %AliceOrBob, %struct.point_proj* %R, [7 x i64]* nocapture readonly %A) unnamed_addr #4 {
entry:
  %R0 = alloca [1 x %struct.point_proj], align 16
  %R2 = alloca [1 x %struct.point_proj], align 16
  %A24 = alloca [2 x [7 x i64]], align 16
  %0 = bitcast [1 x %struct.point_proj]* %R0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 224, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 224, i1 false)
  %1 = bitcast [1 x %struct.point_proj]* %R2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 224, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 224, i1 false)
  %2 = bitcast [2 x [7 x i64]]* %A24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 112, i1 false)
  %cmp = icmp eq i32 %AliceOrBob, 0
  %. = select i1 %cmp, i32 216, i32 217
  %arraydecay = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A24, i64 0, i64 0, i64 0
  store i64 29740, i64* %arraydecay, align 16, !tbaa !3
  %arrayidx2.1.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A24, i64 0, i64 0, i64 1
  %arrayidx2.3.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A24, i64 0, i64 0, i64 3
  %3 = bitcast i64* %arrayidx2.1.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %3, i8 0, i64 16, i1 false)
  %4 = bitcast i64* %arrayidx2.3.i to <4 x i64>*
  store <4 x i64> <i64 -5111598749797318656, i64 -2881840887160132396, i64 -1643158192681172724, i64 260509760564954>, <4 x i64>* %4, align 8, !tbaa !3
  %arraydecay1 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A24, i64 0, i64 0
  call fastcc void @mp2_add([7 x i64]* nonnull %arraydecay1, [7 x i64]* nonnull %arraydecay1, [7 x i64]* nonnull %arraydecay1)
  call fastcc void @mp2_add([7 x i64]* %A, [7 x i64]* nonnull %arraydecay1, [7 x i64]* nonnull %arraydecay1)
  call void @fpdiv2_434(i64* nonnull %arraydecay, i64* nonnull %arraydecay) #10
  %arraydecay4.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A24, i64 0, i64 1, i64 0
  call void @fpdiv2_434(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i) #10
  call void @fpdiv2_434(i64* nonnull %arraydecay, i64* nonnull %arraydecay) #10
  call void @fpdiv2_434(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i) #10
  %arraydecay10 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R0, i64 0, i64 0
  %5 = bitcast [7 x i64]* %xQ to <4 x i64>*
  %6 = load <4 x i64>, <4 x i64>* %5, align 8, !tbaa !3
  %7 = bitcast [1 x %struct.point_proj]* %R0 to <4 x i64>*
  store <4 x i64> %6, <4 x i64>* %7, align 16, !tbaa !3
  %arrayidx.4.i.i = getelementptr inbounds [7 x i64], [7 x i64]* %xQ, i64 0, i64 4
  %arrayidx2.4.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R0, i64 0, i64 0, i32 0, i64 0, i64 4
  %8 = bitcast i64* %arrayidx.4.i.i to <4 x i64>*
  %9 = load <4 x i64>, <4 x i64>* %8, align 8, !tbaa !3
  %10 = bitcast i64* %arrayidx2.4.i.i to <4 x i64>*
  store <4 x i64> %9, <4 x i64>* %10, align 16, !tbaa !3
  %arrayidx.1.i9.i = getelementptr inbounds [7 x i64], [7 x i64]* %xQ, i64 1, i64 1
  %arrayidx2.1.i10.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R0, i64 0, i64 0, i32 0, i64 1, i64 1
  %11 = bitcast i64* %arrayidx.1.i9.i to <4 x i64>*
  %12 = load <4 x i64>, <4 x i64>* %11, align 8, !tbaa !3
  %13 = bitcast i64* %arrayidx2.1.i10.i to <4 x i64>*
  store <4 x i64> %12, <4 x i64>* %13, align 8, !tbaa !3
  %arrayidx.5.i17.i = getelementptr inbounds [7 x i64], [7 x i64]* %xQ, i64 1, i64 5
  %14 = load i64, i64* %arrayidx.5.i17.i, align 8, !tbaa !3
  %arrayidx2.5.i18.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R0, i64 0, i64 0, i32 0, i64 1, i64 5
  store i64 %14, i64* %arrayidx2.5.i18.i, align 8, !tbaa !3
  %arrayidx.6.i19.i = getelementptr inbounds [7 x i64], [7 x i64]* %xQ, i64 1, i64 6
  %15 = load i64, i64* %arrayidx.6.i19.i, align 8, !tbaa !3
  %arrayidx2.6.i20.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R0, i64 0, i64 0, i32 0, i64 1, i64 6
  store i64 %15, i64* %arrayidx2.6.i20.i, align 8, !tbaa !3
  %16 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R0, i64 0, i64 0, i32 1, i64 0, i64 0
  store i64 29740, i64* %16, align 16, !tbaa !3
  %arrayidx2.1.i71 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R0, i64 0, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.3.i73 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R0, i64 0, i64 0, i32 1, i64 0, i64 3
  %17 = bitcast i64* %arrayidx2.1.i71 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %17, i8 0, i64 16, i1 false)
  store i64 -5111598749797318656, i64* %arrayidx2.3.i73, align 8, !tbaa !3
  %arrayidx2.4.i74 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R0, i64 0, i64 0, i32 1, i64 0, i64 4
  %18 = bitcast i64* %arrayidx2.4.i74 to <2 x i64>*
  store <2 x i64> <i64 -2881840887160132396, i64 -1643158192681172724>, <2 x i64>* %18, align 16, !tbaa !3
  %arrayidx2.6.i76 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R0, i64 0, i64 0, i32 1, i64 0, i64 6
  store i64 260509760564954, i64* %arrayidx2.6.i76, align 16, !tbaa !3
  %arraydecay14 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0
  %19 = bitcast [7 x i64]* %xPQ to <4 x i64>*
  %20 = load <4 x i64>, <4 x i64>* %19, align 8, !tbaa !3
  %21 = bitcast [1 x %struct.point_proj]* %R2 to <4 x i64>*
  store <4 x i64> %20, <4 x i64>* %21, align 16, !tbaa !3
  %arrayidx.4.i.i85 = getelementptr inbounds [7 x i64], [7 x i64]* %xPQ, i64 0, i64 4
  %arrayidx2.4.i.i86 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 0, i64 0, i64 4
  %22 = bitcast i64* %arrayidx.4.i.i85 to <4 x i64>*
  %23 = load <4 x i64>, <4 x i64>* %22, align 8, !tbaa !3
  %24 = bitcast i64* %arrayidx2.4.i.i86 to <4 x i64>*
  store <4 x i64> %23, <4 x i64>* %24, align 16, !tbaa !3
  %arrayidx.1.i9.i93 = getelementptr inbounds [7 x i64], [7 x i64]* %xPQ, i64 1, i64 1
  %arrayidx2.1.i10.i94 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 0, i64 1, i64 1
  %25 = bitcast i64* %arrayidx.1.i9.i93 to <4 x i64>*
  %26 = load <4 x i64>, <4 x i64>* %25, align 8, !tbaa !3
  %27 = bitcast i64* %arrayidx2.1.i10.i94 to <4 x i64>*
  store <4 x i64> %26, <4 x i64>* %27, align 8, !tbaa !3
  %arrayidx.5.i17.i101 = getelementptr inbounds [7 x i64], [7 x i64]* %xPQ, i64 1, i64 5
  %28 = load i64, i64* %arrayidx.5.i17.i101, align 8, !tbaa !3
  %arrayidx2.5.i18.i102 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 0, i64 1, i64 5
  store i64 %28, i64* %arrayidx2.5.i18.i102, align 8, !tbaa !3
  %arrayidx.6.i19.i103 = getelementptr inbounds [7 x i64], [7 x i64]* %xPQ, i64 1, i64 6
  %29 = load i64, i64* %arrayidx.6.i19.i103, align 8, !tbaa !3
  %arrayidx2.6.i20.i104 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 0, i64 1, i64 6
  store i64 %29, i64* %arrayidx2.6.i20.i104, align 8, !tbaa !3
  %30 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 0, i64 0
  store i64 29740, i64* %30, align 16, !tbaa !3
  %arrayidx2.1.i105 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.3.i107 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 0, i64 3
  %31 = bitcast i64* %arrayidx2.1.i105 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %31, i8 0, i64 16, i1 false)
  store i64 -5111598749797318656, i64* %arrayidx2.3.i107, align 8, !tbaa !3
  %arrayidx2.4.i108 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 0, i64 4
  %32 = bitcast i64* %arrayidx2.4.i108 to <2 x i64>*
  store <2 x i64> <i64 -2881840887160132396, i64 -1643158192681172724>, <2 x i64>* %32, align 16, !tbaa !3
  %arrayidx2.6.i110 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 0, i64 6
  store i64 260509760564954, i64* %arrayidx2.6.i110, align 16, !tbaa !3
  %arraydecay21 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0
  %arraydecay.i111 = getelementptr inbounds [7 x i64], [7 x i64]* %xP, i64 0, i64 0
  %arraydecay2.i112 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0, i64 0
  %33 = load i64, i64* %arraydecay.i111, align 8, !tbaa !3
  store i64 %33, i64* %arraydecay2.i112, align 8, !tbaa !3
  %arrayidx.1.i.i113 = getelementptr inbounds [7 x i64], [7 x i64]* %xP, i64 0, i64 1
  %34 = load i64, i64* %arrayidx.1.i.i113, align 8, !tbaa !3
  %arrayidx2.1.i.i114 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0, i64 1
  store i64 %34, i64* %arrayidx2.1.i.i114, align 8, !tbaa !3
  %arrayidx.2.i.i115 = getelementptr inbounds [7 x i64], [7 x i64]* %xP, i64 0, i64 2
  %35 = load i64, i64* %arrayidx.2.i.i115, align 8, !tbaa !3
  %arrayidx2.2.i.i116 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0, i64 2
  store i64 %35, i64* %arrayidx2.2.i.i116, align 8, !tbaa !3
  %arrayidx.3.i.i117 = getelementptr inbounds [7 x i64], [7 x i64]* %xP, i64 0, i64 3
  %36 = load i64, i64* %arrayidx.3.i.i117, align 8, !tbaa !3
  %arrayidx2.3.i.i118 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0, i64 3
  store i64 %36, i64* %arrayidx2.3.i.i118, align 8, !tbaa !3
  %arrayidx.4.i.i119 = getelementptr inbounds [7 x i64], [7 x i64]* %xP, i64 0, i64 4
  %37 = load i64, i64* %arrayidx.4.i.i119, align 8, !tbaa !3
  %arrayidx2.4.i.i120 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0, i64 4
  store i64 %37, i64* %arrayidx2.4.i.i120, align 8, !tbaa !3
  %arrayidx.5.i.i121 = getelementptr inbounds [7 x i64], [7 x i64]* %xP, i64 0, i64 5
  %38 = load i64, i64* %arrayidx.5.i.i121, align 8, !tbaa !3
  %arrayidx2.5.i.i122 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0, i64 5
  store i64 %38, i64* %arrayidx2.5.i.i122, align 8, !tbaa !3
  %arrayidx.6.i.i123 = getelementptr inbounds [7 x i64], [7 x i64]* %xP, i64 0, i64 6
  %39 = load i64, i64* %arrayidx.6.i.i123, align 8, !tbaa !3
  %arrayidx2.6.i.i124 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0, i64 6
  store i64 %39, i64* %arrayidx2.6.i.i124, align 8, !tbaa !3
  %arraydecay4.i125 = getelementptr inbounds [7 x i64], [7 x i64]* %xP, i64 1, i64 0
  %arraydecay6.i126 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 0
  %40 = load i64, i64* %arraydecay4.i125, align 8, !tbaa !3
  store i64 %40, i64* %arraydecay6.i126, align 8, !tbaa !3
  %arrayidx.1.i9.i127 = getelementptr inbounds [7 x i64], [7 x i64]* %xP, i64 1, i64 1
  %41 = load i64, i64* %arrayidx.1.i9.i127, align 8, !tbaa !3
  %arrayidx2.1.i10.i128 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 1
  store i64 %41, i64* %arrayidx2.1.i10.i128, align 8, !tbaa !3
  %arrayidx.2.i11.i129 = getelementptr inbounds [7 x i64], [7 x i64]* %xP, i64 1, i64 2
  %42 = load i64, i64* %arrayidx.2.i11.i129, align 8, !tbaa !3
  %arrayidx2.2.i12.i130 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 2
  store i64 %42, i64* %arrayidx2.2.i12.i130, align 8, !tbaa !3
  %arrayidx.3.i13.i131 = getelementptr inbounds [7 x i64], [7 x i64]* %xP, i64 1, i64 3
  %43 = load i64, i64* %arrayidx.3.i13.i131, align 8, !tbaa !3
  %arrayidx2.3.i14.i132 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 3
  store i64 %43, i64* %arrayidx2.3.i14.i132, align 8, !tbaa !3
  %arrayidx.4.i15.i133 = getelementptr inbounds [7 x i64], [7 x i64]* %xP, i64 1, i64 4
  %44 = load i64, i64* %arrayidx.4.i15.i133, align 8, !tbaa !3
  %arrayidx2.4.i16.i134 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 4
  store i64 %44, i64* %arrayidx2.4.i16.i134, align 8, !tbaa !3
  %arrayidx.5.i17.i135 = getelementptr inbounds [7 x i64], [7 x i64]* %xP, i64 1, i64 5
  %45 = load i64, i64* %arrayidx.5.i17.i135, align 8, !tbaa !3
  %arrayidx2.5.i18.i136 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 5
  store i64 %45, i64* %arrayidx2.5.i18.i136, align 8, !tbaa !3
  %arrayidx.6.i19.i137 = getelementptr inbounds [7 x i64], [7 x i64]* %xP, i64 1, i64 6
  %46 = load i64, i64* %arrayidx.6.i19.i137, align 8, !tbaa !3
  %arrayidx2.6.i20.i138 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 6
  store i64 %46, i64* %arrayidx2.6.i20.i138, align 8, !tbaa !3
  %Z22 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1
  %arraydecay23 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %Z22, i64 0, i64 0
  %47 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %Z22, i64 0, i64 0, i64 0
  store i64 29740, i64* %47, align 8, !tbaa !3
  %arrayidx2.1.i139 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.3.i141 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 0, i64 3
  %48 = bitcast i64* %arrayidx2.1.i139 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %48, i8 0, i64 16, i1 false)
  store i64 -5111598749797318656, i64* %arrayidx2.3.i141, align 8, !tbaa !3
  %arrayidx2.4.i142 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 0, i64 4
  %49 = bitcast i64* %arrayidx2.4.i142 to <2 x i64>*
  store <2 x i64> <i64 -2881840887160132396, i64 -1643158192681172724>, <2 x i64>* %49, align 8, !tbaa !3
  %arrayidx2.6.i144 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 0, i64 6
  store i64 260509760564954, i64* %arrayidx2.6.i144, align 8, !tbaa !3
  %arraydecay26 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 1, i64 0
  %a5.i = bitcast i64* %arraydecay26 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %a5.i, i8 0, i64 56, i1 false) #10
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %prevbit.0146 = phi i32 [ 0, %entry ], [ %conv, %for.body ]
  %i.0145 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %50 = lshr i32 %i.0145, 6
  %51 = zext i32 %50 to i64
  %arrayidx28 = getelementptr inbounds i64, i64* %m, i64 %51
  %52 = load i64, i64* %arrayidx28, align 8, !tbaa !3
  %and = and i32 %i.0145, 63
  %sh_prom = zext i32 %and to i64
  %shr29 = lshr i64 %52, %sh_prom
  %53 = trunc i64 %shr29 to i32
  %conv = and i32 %53, 1
  %xor = xor i32 %conv, %prevbit.0146
  %54 = zext i32 %xor to i64
  %sub = sub nsw i64 0, %54
  call fastcc void @swap_points(%struct.point_proj* %R, %struct.point_proj* nonnull %arraydecay14, i64 %sub)
  call void @xDBLADD(%struct.point_proj* nonnull %arraydecay10, %struct.point_proj* nonnull %arraydecay14, [7 x i64]* %arraydecay21, [7 x i64]* nonnull %arraydecay23, [7 x i64]* nonnull %arraydecay1)
  %inc = add nuw nsw i32 %i.0145, 1
  %exitcond = icmp eq i32 %inc, %.
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %55 = zext i32 %conv to i64
  %sub42 = sub nsw i64 0, %55
  call fastcc void @swap_points(%struct.point_proj* %R, %struct.point_proj* nonnull %arraydecay14, i64 %sub42)
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @EphemeralKeyGeneration_B_SIDHp434(i8* %PrivateKeyB, i8* %PublicKeyB) local_unnamed_addr #4 {
entry:
  %temp.i.i.i.i = alloca [14 x i64], align 16
  %one.i.i.i = alloca [7 x i64], align 16
  %t.i = alloca [2 x [7 x i64]], align 16
  %R = alloca [1 x %struct.point_proj], align 16
  %phiP = alloca [1 x %struct.point_proj], align 16
  %phiQ = alloca [1 x %struct.point_proj], align 16
  %phiR = alloca [1 x %struct.point_proj], align 16
  %pts = alloca [8 x [1 x %struct.point_proj]], align 16
  %XPB = alloca [2 x [7 x i64]], align 16
  %XQB = alloca [2 x [7 x i64]], align 16
  %XRB = alloca [2 x [7 x i64]], align 16
  %coeff = alloca [3 x [2 x [7 x i64]]], align 16
  %A24plus = alloca [2 x [7 x i64]], align 16
  %A24minus = alloca [2 x [7 x i64]], align 16
  %A = alloca [2 x [7 x i64]], align 16
  %pts_index = alloca [8 x i32], align 16
  %SecretKeyB = alloca [4 x i64], align 16
  %0 = bitcast [1 x %struct.point_proj]* %R to i8*
  call void @llvm.lifetime.start.p0i8(i64 224, i8* nonnull %0) #10
  %1 = bitcast [1 x %struct.point_proj]* %phiP to i8*
  call void @llvm.lifetime.start.p0i8(i64 224, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 224, i1 false)
  %2 = bitcast [1 x %struct.point_proj]* %phiQ to i8*
  call void @llvm.lifetime.start.p0i8(i64 224, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 224, i1 false)
  %3 = bitcast [1 x %struct.point_proj]* %phiR to i8*
  call void @llvm.lifetime.start.p0i8(i64 224, i8* nonnull %3) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %3, i8 0, i64 224, i1 false)
  %4 = bitcast [8 x [1 x %struct.point_proj]]* %pts to i8*
  call void @llvm.lifetime.start.p0i8(i64 1792, i8* nonnull %4) #10
  %5 = bitcast [2 x [7 x i64]]* %XPB to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %5) #10
  %6 = bitcast [2 x [7 x i64]]* %XQB to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %6) #10
  %7 = bitcast [2 x [7 x i64]]* %XRB to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %7) #10
  %8 = bitcast [3 x [2 x [7 x i64]]]* %coeff to i8*
  call void @llvm.lifetime.start.p0i8(i64 336, i8* nonnull %8) #10
  %9 = bitcast [2 x [7 x i64]]* %A24plus to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %9) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 112, i1 false)
  %10 = bitcast [2 x [7 x i64]]* %A24minus to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %10) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 112, i1 false)
  %11 = bitcast [2 x [7 x i64]]* %A to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 112, i1 false)
  %12 = bitcast [8 x i32]* %pts_index to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %12) #10
  %13 = bitcast [4 x i64]* %SecretKeyB to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %13) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %13, i8 0, i64 32, i1 false)
  %arraydecay = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %XPB, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %XQB, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %XRB, i64 0, i64 0
  %14 = bitcast [2 x [7 x i64]]* %XPB to <4 x i64>*
  store <4 x i64> <i64 7950145635403778211, i64 3053921039650069509, i64 -1472232571310339971, i64 6369396808518798415>, <4 x i64>* %14, align 16, !tbaa !3
  %arrayidx2.4.i.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %XPB, i64 0, i64 0, i64 4
  store i64 -5151006957371847381, i64* %arrayidx2.4.i.i, align 16, !tbaa !3
  %arrayidx2.5.i.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %XPB, i64 0, i64 0, i64 5
  store i64 2507423554624419257, i64* %arrayidx2.5.i.i, align 8, !tbaa !3
  %arrayidx2.6.i.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %XPB, i64 0, i64 0, i64 6
  store i64 491294718579999, i64* %arrayidx2.6.i.i, align 16, !tbaa !3
  %arraydecay2.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %XPB, i64 0, i64 1, i64 0
  %15 = bitcast i64* %arraydecay2.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %15, i8 0, i64 56, i1 false)
  %16 = bitcast [2 x [7 x i64]]* %XQB to <4 x i64>*
  store <4 x i64> <i64 -368551928616227954, i64 5280595860558773788, i64 -1217497873284611460, i64 5300724274592529762>, <4 x i64>* %16, align 16, !tbaa !3
  %arrayidx2.4.i66.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %XQB, i64 0, i64 0, i64 4
  store i64 -5761561158429016438, i64* %arrayidx2.4.i66.i, align 16, !tbaa !3
  %arrayidx2.5.i68.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %XQB, i64 0, i64 0, i64 5
  store i64 -850473803693194369, i64* %arrayidx2.5.i68.i, align 8, !tbaa !3
  %arrayidx2.6.i70.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %XQB, i64 0, i64 0, i64 6
  store i64 57208989669550, i64* %arrayidx2.6.i70.i, align 16, !tbaa !3
  %arraydecay8.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %XQB, i64 0, i64 1, i64 0
  %17 = bitcast i64* %arraydecay8.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %17, i8 0, i64 56, i1 false)
  %18 = bitcast [2 x [7 x i64]]* %XRB to <4 x i64>*
  store <4 x i64> <i64 2898969037767559396, i64 -7923814947979270585, i64 9073321008578907802, i64 7539793830764276893>, <4 x i64>* %18, align 16, !tbaa !3
  %arrayidx2.4.i42.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %XRB, i64 0, i64 0, i64 4
  %19 = bitcast i64* %arrayidx2.4.i42.i to <4 x i64>*
  store <4 x i64> <i64 -9117835332022963109, i64 148738643701593348, i64 139132528504375, i64 -5514455700498887503>, <4 x i64>* %19, align 16, !tbaa !3
  %arrayidx2.1.i24.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %XRB, i64 0, i64 1, i64 1
  %20 = bitcast i64* %arrayidx2.1.i24.i to <4 x i64>*
  store <4 x i64> <i64 7856701733796155952, i64 -1449781872342195351, i64 3113577795642755667, i64 4926779461749210259>, <4 x i64>* %20, align 8, !tbaa !3
  %arrayidx2.5.i32.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %XRB, i64 0, i64 1, i64 5
  store i64 -4685648887271738037, i64* %arrayidx2.5.i32.i, align 8, !tbaa !3
  %arrayidx2.6.i34.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %XRB, i64 0, i64 1, i64 6
  store i64 408994988652499, i64* %arrayidx2.6.i34.i, align 8, !tbaa !3
  %arraydecay3 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0
  %arraydecay.i188 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 0, i64 0
  %21 = bitcast [1 x %struct.point_proj]* %phiP to <4 x i64>*
  store <4 x i64> <i64 409251790387889599, i64 -7956914563081327573, i64 -5772233213491609001, i64 8135632727773423537>, <4 x i64>* %21, align 16, !tbaa !3
  %arrayidx2.4.i.i192 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 0, i64 4
  %arraydecay2.i195 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 1, i64 0
  %22 = bitcast i64* %arrayidx2.4.i.i192 to <4 x i64>*
  store <4 x i64> <i64 -605746078158370611, i64 2414452085739184671, i64 11115521240260, i64 8395851790856910728>, <4 x i64>* %22, align 16, !tbaa !3
  %arrayidx2.1.i72.i196 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 1, i64 1
  %23 = bitcast i64* %arrayidx2.1.i72.i196 to <4 x i64>*
  store <4 x i64> <i64 2986355008512957707, i64 -3794508369610992171, i64 -8297630390065234006, i64 -6344405898491969121>, <4 x i64>* %23, align 8, !tbaa !3
  %arrayidx2.5.i80.i200 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 1, i64 5
  store i64 -2994353266636644724, i64* %arrayidx2.5.i80.i200, align 8, !tbaa !3
  %arrayidx2.6.i82.i201 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 1, i64 6
  store i64 281073067659850, i64* %arrayidx2.6.i82.i201, align 8, !tbaa !3
  %arraydecay5.i202 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 0, i64 0
  %24 = bitcast [1 x %struct.point_proj]* %phiQ to <4 x i64>*
  store <4 x i64> <i64 -88129956366309573, i64 -3267881773463506490, i64 -507342119971546937, i64 -2145611229349799165>, <4 x i64>* %24, align 16, !tbaa !3
  %arrayidx2.4.i66.i206 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 0, i64 4
  %arraydecay8.i209 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 1, i64 0
  %25 = bitcast i64* %arrayidx2.4.i66.i206 to <4 x i64>*
  store <4 x i64> <i64 1973682341831588061, i64 8312799048378913301, i64 497853136119926, i64 -5930968907585159722>, <4 x i64>* %25, align 16, !tbaa !3
  %arrayidx2.1.i48.i210 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 1, i64 1
  %26 = bitcast i64* %arrayidx2.1.i48.i210 to <4 x i64>*
  store <4 x i64> <i64 7710088909771808848, i64 7498146198864584751, i64 2174778336782639988, i64 -2099344739079935595>, <4 x i64>* %26, align 8, !tbaa !3
  %arrayidx2.5.i56.i214 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 1, i64 5
  store i64 -6420807801124297464, i64* %arrayidx2.5.i56.i214, align 8, !tbaa !3
  %arrayidx2.6.i58.i215 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 1, i64 6
  store i64 438485524985150, i64* %arrayidx2.6.i58.i215, align 8, !tbaa !3
  %arraydecay11.i216 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 0, i64 0
  %27 = bitcast [1 x %struct.point_proj]* %phiR to <4 x i64>*
  store <4 x i64> <i64 124497379906645117, i64 3220114552465917457, i64 2709773247140401691, i64 6980995868580086445>, <4 x i64>* %27, align 16, !tbaa !3
  %arrayidx2.4.i42.i220 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 0, i64 4
  %arraydecay14.i223 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 1, i64 0
  %28 = bitcast i64* %arrayidx2.4.i42.i220 to <4 x i64>*
  store <4 x i64> <i64 4225536559282510125, i64 4701685901084574963, i64 609687130428995, i64 -5139244406301072054>, <4 x i64>* %28, align 16, !tbaa !3
  %arrayidx2.1.i24.i224 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 1, i64 1
  %29 = bitcast i64* %arrayidx2.1.i24.i224 to <4 x i64>*
  store <4 x i64> <i64 -1180825250703942163, i64 6350294504100107936, i64 8618087912213766372, i64 308885086986017528>, <4 x i64>* %29, align 8, !tbaa !3
  %arrayidx2.5.i32.i228 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 1, i64 5
  store i64 -2653863745610111006, i64* %arrayidx2.5.i32.i228, align 8, !tbaa !3
  %arrayidx2.6.i34.i229 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 1, i64 6
  store i64 202858940514502, i64* %arrayidx2.6.i34.i229, align 8, !tbaa !3
  %Z = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 1
  %arraydecay12 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %Z, i64 0, i64 0, i64 0
  store i64 29740, i64* %arraydecay12, align 16, !tbaa !3
  %arrayidx2.1.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.3.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 1, i64 0, i64 3
  %30 = bitcast i64* %arrayidx2.1.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %30, i8 0, i64 16, i1 false)
  store i64 -5111598749797318656, i64* %arrayidx2.3.i, align 8, !tbaa !3
  %arrayidx2.4.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 1, i64 0, i64 4
  %31 = bitcast i64* %arrayidx2.4.i to <2 x i64>*
  store <2 x i64> <i64 -2881840887160132396, i64 -1643158192681172724>, <2 x i64>* %31, align 16, !tbaa !3
  %arrayidx2.6.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 1, i64 0, i64 6
  store i64 260509760564954, i64* %arrayidx2.6.i, align 16, !tbaa !3
  %Z14 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 1
  %arraydecay16 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %Z14, i64 0, i64 0, i64 0
  store i64 29740, i64* %arraydecay16, align 16, !tbaa !3
  %arrayidx2.1.i230 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.3.i232 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 1, i64 0, i64 3
  %32 = bitcast i64* %arrayidx2.1.i230 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %32, i8 0, i64 16, i1 false)
  store i64 -5111598749797318656, i64* %arrayidx2.3.i232, align 8, !tbaa !3
  %arrayidx2.4.i233 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 1, i64 0, i64 4
  %33 = bitcast i64* %arrayidx2.4.i233 to <2 x i64>*
  store <2 x i64> <i64 -2881840887160132396, i64 -1643158192681172724>, <2 x i64>* %33, align 16, !tbaa !3
  %arrayidx2.6.i235 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 1, i64 0, i64 6
  store i64 260509760564954, i64* %arrayidx2.6.i235, align 16, !tbaa !3
  %Z18 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 1
  %arraydecay20 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %Z18, i64 0, i64 0, i64 0
  store i64 29740, i64* %arraydecay20, align 16, !tbaa !3
  %arrayidx2.1.i236 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.3.i238 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 1, i64 0, i64 3
  %34 = bitcast i64* %arrayidx2.1.i236 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %34, i8 0, i64 16, i1 false)
  store i64 -5111598749797318656, i64* %arrayidx2.3.i238, align 8, !tbaa !3
  %arrayidx2.4.i239 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 1, i64 0, i64 4
  %35 = bitcast i64* %arrayidx2.4.i239 to <2 x i64>*
  store <2 x i64> <i64 -2881840887160132396, i64 -1643158192681172724>, <2 x i64>* %35, align 16, !tbaa !3
  %arrayidx2.6.i241 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 1, i64 0, i64 6
  store i64 260509760564954, i64* %arrayidx2.6.i241, align 16, !tbaa !3
  %arraydecay22 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A24plus, i64 0, i64 0, i64 0
  store i64 29740, i64* %arraydecay22, align 16, !tbaa !3
  %arrayidx2.1.i242 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A24plus, i64 0, i64 0, i64 1
  %arrayidx2.3.i244 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A24plus, i64 0, i64 0, i64 3
  %36 = bitcast i64* %arrayidx2.1.i242 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %36, i8 0, i64 16, i1 false)
  %37 = bitcast i64* %arrayidx2.3.i244 to <4 x i64>*
  store <4 x i64> <i64 -5111598749797318656, i64 -2881840887160132396, i64 -1643158192681172724, i64 260509760564954>, <4 x i64>* %37, align 8, !tbaa !3
  %arraydecay23 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A24plus, i64 0, i64 0
  call fastcc void @mp2_add([7 x i64]* nonnull %arraydecay23, [7 x i64]* nonnull %arraydecay23, [7 x i64]* nonnull %arraydecay23)
  %arraydecay28 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A24minus, i64 0, i64 0
  call fastcc void @mp2_add([7 x i64]* nonnull %arraydecay23, [7 x i64]* nonnull %arraydecay23, [7 x i64]* nonnull %arraydecay28)
  %arraydecay31 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A, i64 0, i64 0
  call fastcc void @mp2_add([7 x i64]* nonnull %arraydecay23, [7 x i64]* nonnull %arraydecay28, [7 x i64]* nonnull %arraydecay31)
  call fastcc void @mp2_add([7 x i64]* nonnull %arraydecay28, [7 x i64]* nonnull %arraydecay28, [7 x i64]* nonnull %arraydecay23)
  %arraydecay35 = getelementptr inbounds [4 x i64], [4 x i64]* %SecretKeyB, i64 0, i64 0
  %arrayidx.i = getelementptr inbounds [4 x i64], [4 x i64]* %SecretKeyB, i64 0, i64 3
  store i64 0, i64* %arrayidx.i, align 8, !tbaa !3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %13, i8* align 1 %PrivateKeyB, i64 28, i1 false)
  %arraydecay40 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0
  call fastcc void @LADDER3PT([7 x i64]* nonnull %arraydecay, [7 x i64]* nonnull %arraydecay1, [7 x i64]* nonnull %arraydecay2, i64* nonnull %arraydecay35, i32 1, %struct.point_proj* nonnull %arraydecay40, [7 x i64]* nonnull %arraydecay31)
  %arrayidx.4.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 0, i64 4
  %arrayidx.1.i9.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 1, i64 1
  %arrayidx.5.i17.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 1, i64 5
  %arrayidx.2.i.i260 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 0, i64 2
  %arrayidx.6.i.i268 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 0, i64 6
  %arrayidx.3.i13.i276 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 1, i64 3
  %arraydecay70 = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %coeff, i64 0, i64 0
  %38 = bitcast [1 x %struct.point_proj]* %R to <4 x i64>*
  %39 = bitcast i64* %arrayidx.4.i.i to <4 x i64>*
  %40 = bitcast i64* %arrayidx.1.i9.i to <4 x i64>*
  %41 = bitcast i64* %arrayidx.5.i17.i to <4 x i64>*
  %42 = bitcast i64* %arrayidx.2.i.i260 to <4 x i64>*
  %43 = bitcast i64* %arrayidx.6.i.i268 to <4 x i64>*
  %44 = bitcast i64* %arrayidx.3.i13.i276 to <4 x i64>*
  %45 = bitcast [1 x %struct.point_proj]* %R to <4 x i64>*
  %46 = bitcast i64* %arrayidx.4.i.i to <4 x i64>*
  %47 = bitcast i64* %arrayidx.1.i9.i to <4 x i64>*
  %48 = bitcast i64* %arrayidx.5.i17.i to <4 x i64>*
  %49 = bitcast i64* %arrayidx.2.i.i260 to <4 x i64>*
  %50 = bitcast i64* %arrayidx.6.i.i268 to <4 x i64>*
  %51 = bitcast i64* %arrayidx.3.i13.i276 to <4 x i64>*
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.end, %entry
  %ii.0374 = phi i32 [ 0, %entry ], [ %ii.1.lcssa, %for.end ]
  %npts.0373 = phi i32 [ 0, %entry ], [ %sub85, %for.end ]
  %index.0372 = phi i32 [ 0, %entry ], [ %81, %for.end ]
  %row.0371 = phi i32 [ 1, %entry ], [ %inc108, %for.end ]
  %sub = sub nuw nsw i32 137, %row.0371
  %cmp42364 = icmp ult i32 %index.0372, %sub
  br i1 %cmp42364, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %ii.1367 = phi i32 [ %inc60, %while.body ], [ %ii.0374, %while.cond.preheader ]
  %npts.1366 = phi i32 [ %inc, %while.body ], [ %npts.0373, %while.cond.preheader ]
  %index.1365 = phi i32 [ %add, %while.body ], [ %index.0372, %while.cond.preheader ]
  %idxprom = zext i32 %npts.1366 to i64
  %arraydecay2.i249 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 0, i64 0
  %52 = load <4 x i64>, <4 x i64>* %38, align 16, !tbaa !3
  %53 = bitcast i64* %arraydecay2.i249 to <4 x i64>*
  store <4 x i64> %52, <4 x i64>* %53, align 16, !tbaa !3
  %arrayidx2.4.i.i253 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 0, i64 4
  %54 = load <4 x i64>, <4 x i64>* %39, align 16, !tbaa !3
  %55 = bitcast i64* %arrayidx2.4.i.i253 to <4 x i64>*
  store <4 x i64> %54, <4 x i64>* %55, align 16, !tbaa !3
  %arrayidx2.1.i10.i = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 1, i64 1
  %56 = load <4 x i64>, <4 x i64>* %40, align 8, !tbaa !3
  %57 = bitcast i64* %arrayidx2.1.i10.i to <4 x i64>*
  store <4 x i64> %56, <4 x i64>* %57, align 8, !tbaa !3
  %arrayidx2.5.i18.i = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 1, i64 5
  %58 = load <4 x i64>, <4 x i64>* %41, align 8, !tbaa !3
  %59 = bitcast i64* %arrayidx2.5.i18.i to <4 x i64>*
  store <4 x i64> %58, <4 x i64>* %59, align 8, !tbaa !3
  %arrayidx2.2.i.i261 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 0, i64 2
  %60 = load <4 x i64>, <4 x i64>* %42, align 16, !tbaa !3
  %61 = bitcast i64* %arrayidx2.2.i.i261 to <4 x i64>*
  store <4 x i64> %60, <4 x i64>* %61, align 16, !tbaa !3
  %arrayidx2.6.i.i269 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 0, i64 6
  %62 = load <4 x i64>, <4 x i64>* %43, align 16, !tbaa !3
  %63 = bitcast i64* %arrayidx2.6.i.i269 to <4 x i64>*
  store <4 x i64> %62, <4 x i64>* %63, align 16, !tbaa !3
  %arrayidx2.3.i14.i277 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 1, i64 3
  %64 = load <4 x i64>, <4 x i64>* %44, align 8, !tbaa !3
  %65 = bitcast i64* %arrayidx2.3.i14.i277 to <4 x i64>*
  store <4 x i64> %64, <4 x i64>* %65, align 8, !tbaa !3
  %inc = add i32 %npts.1366, 1
  %arrayidx59 = getelementptr inbounds [8 x i32], [8 x i32]* %pts_index, i64 0, i64 %idxprom
  store i32 %index.1365, i32* %arrayidx59, align 4, !tbaa !59
  %inc60 = add i32 %ii.1367, 1
  %idxprom61 = zext i32 %ii.1367 to i64
  %arrayidx62 = getelementptr inbounds [136 x i32], [136 x i32]* @strat_Bob, i64 0, i64 %idxprom61
  %66 = load i32, i32* %arrayidx62, align 4, !tbaa !59
  call void @xTPLe(%struct.point_proj* nonnull %arraydecay40, %struct.point_proj* nonnull %arraydecay40, [7 x i64]* nonnull %arraydecay28, [7 x i64]* nonnull %arraydecay23, i32 %66)
  %add = add i32 %66, %index.1365
  %cmp42 = icmp ult i32 %add, %sub
  br i1 %cmp42, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %npts.1.lcssa = phi i32 [ %npts.0373, %while.cond.preheader ], [ %inc, %while.body ]
  %ii.1.lcssa = phi i32 [ %ii.0374, %while.cond.preheader ], [ %inc60, %while.body ]
  call void @get_3_isog(%struct.point_proj* nonnull %arraydecay40, [7 x i64]* nonnull %arraydecay28, [7 x i64]* nonnull %arraydecay23, [2 x [7 x i64]]* nonnull %arraydecay70)
  %cmp72369 = icmp eq i32 %npts.1.lcssa, 0
  br i1 %cmp72369, label %for.end, label %for.body73.preheader

for.body73.preheader:                             ; preds = %while.end
  %wide.trip.count = zext i32 %npts.1.lcssa to i64
  br label %for.body73

for.body73:                                       ; preds = %for.body73, %for.body73.preheader
  %indvars.iv = phi i64 [ 0, %for.body73.preheader ], [ %indvars.iv.next, %for.body73 ]
  %arraydecay76 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %indvars.iv, i64 0
  call void @eval_3_isog(%struct.point_proj* nonnull %arraydecay76, [2 x [7 x i64]]* nonnull %arraydecay70)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.end, label %for.body73

for.end:                                          ; preds = %for.body73, %while.end
  call void @eval_3_isog(%struct.point_proj* nonnull %arraydecay3, [2 x [7 x i64]]* nonnull %arraydecay70)
  call void @eval_3_isog(%struct.point_proj* nonnull %arraydecay5, [2 x [7 x i64]]* nonnull %arraydecay70)
  call void @eval_3_isog(%struct.point_proj* nonnull %arraydecay8, [2 x [7 x i64]]* nonnull %arraydecay70)
  %sub85 = add i32 %npts.1.lcssa, -1
  %idxprom86 = zext i32 %sub85 to i64
  %arraydecay.i284 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 0, i64 0, i64 0
  %67 = bitcast i64* %arraydecay.i284 to <4 x i64>*
  %68 = load <4 x i64>, <4 x i64>* %67, align 16, !tbaa !3
  store <4 x i64> %68, <4 x i64>* %45, align 16, !tbaa !3
  %arrayidx.4.i.i292 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 0, i64 0, i64 4
  %69 = bitcast i64* %arrayidx.4.i.i292 to <4 x i64>*
  %70 = load <4 x i64>, <4 x i64>* %69, align 16, !tbaa !3
  store <4 x i64> %70, <4 x i64>* %46, align 16, !tbaa !3
  %arrayidx.1.i9.i300 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 0, i64 1, i64 1
  %71 = bitcast i64* %arrayidx.1.i9.i300 to <4 x i64>*
  %72 = load <4 x i64>, <4 x i64>* %71, align 8, !tbaa !3
  store <4 x i64> %72, <4 x i64>* %47, align 8, !tbaa !3
  %arrayidx.5.i17.i308 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 0, i64 1, i64 5
  %73 = bitcast i64* %arrayidx.5.i17.i308 to <4 x i64>*
  %74 = load <4 x i64>, <4 x i64>* %73, align 8, !tbaa !3
  store <4 x i64> %74, <4 x i64>* %48, align 8, !tbaa !3
  %arrayidx.2.i.i328 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 1, i64 0, i64 2
  %75 = bitcast i64* %arrayidx.2.i.i328 to <4 x i64>*
  %76 = load <4 x i64>, <4 x i64>* %75, align 16, !tbaa !3
  store <4 x i64> %76, <4 x i64>* %49, align 16, !tbaa !3
  %arrayidx.6.i.i336 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 1, i64 0, i64 6
  %77 = bitcast i64* %arrayidx.6.i.i336 to <4 x i64>*
  %78 = load <4 x i64>, <4 x i64>* %77, align 16, !tbaa !3
  store <4 x i64> %78, <4 x i64>* %50, align 16, !tbaa !3
  %arrayidx.3.i13.i344 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 1, i64 1, i64 3
  %79 = bitcast i64* %arrayidx.3.i13.i344 to <4 x i64>*
  %80 = load <4 x i64>, <4 x i64>* %79, align 8, !tbaa !3
  store <4 x i64> %80, <4 x i64>* %51, align 8, !tbaa !3
  %arrayidx105 = getelementptr inbounds [8 x i32], [8 x i32]* %pts_index, i64 0, i64 %idxprom86
  %81 = load i32, i32* %arrayidx105, align 4, !tbaa !59
  %inc108 = add nuw nsw i32 %row.0371, 1
  %exitcond375 = icmp eq i32 %inc108, 137
  br i1 %exitcond375, label %for.end109, label %while.cond.preheader

for.end109:                                       ; preds = %for.end
  %arraydecay4 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 0
  %arraydecay7 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 0
  %arraydecay10 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 0
  call void @get_3_isog(%struct.point_proj* nonnull %arraydecay40, [7 x i64]* nonnull %arraydecay28, [7 x i64]* nonnull %arraydecay23, [2 x [7 x i64]]* nonnull %arraydecay70)
  call void @eval_3_isog(%struct.point_proj* nonnull %arraydecay3, [2 x [7 x i64]]* nonnull %arraydecay70)
  call void @eval_3_isog(%struct.point_proj* nonnull %arraydecay5, [2 x [7 x i64]]* nonnull %arraydecay70)
  call void @eval_3_isog(%struct.point_proj* nonnull %arraydecay8, [2 x [7 x i64]]* nonnull %arraydecay70)
  %arraydecay122 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %Z, i64 0, i64 0
  %arraydecay125 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %Z14, i64 0, i64 0
  %arraydecay128 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %Z18, i64 0, i64 0
  call void @inv_3_way([7 x i64]* nonnull %arraydecay122, [7 x i64]* nonnull %arraydecay125, [7 x i64]* nonnull %arraydecay128)
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay4, [7 x i64]* nonnull %arraydecay122, [7 x i64]* nonnull %arraydecay4)
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay7, [7 x i64]* nonnull %arraydecay125, [7 x i64]* nonnull %arraydecay7)
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay10, [7 x i64]* nonnull %arraydecay128, [7 x i64]* nonnull %arraydecay10)
  %82 = bitcast [2 x [7 x i64]]* %t.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %82) #10
  %arraydecay2.i.i356 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t.i, i64 0, i64 0, i64 0
  %83 = bitcast [7 x i64]* %one.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %83) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %83, i8 0, i64 56, i1 false) #10
  %arrayidx.i.i.i357 = getelementptr inbounds [7 x i64], [7 x i64]* %one.i.i.i, i64 0, i64 0
  store i64 1, i64* %arrayidx.i.i.i357, align 16, !tbaa !3
  %84 = bitcast [14 x i64]* %temp.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %84) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %84, i8 0, i64 112, i1 false) #10
  %arraydecay.i.i.i.i358 = getelementptr inbounds [14 x i64], [14 x i64]* %temp.i.i.i.i, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay.i188, i64* nonnull %arrayidx.i.i.i357, i64* nonnull %arraydecay.i.i.i.i358, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i358, i64* nonnull %arraydecay2.i.i356) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %84) #10
  call void @fpcorrection434(i64* nonnull %arraydecay2.i.i356) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %83) #10
  %arraydecay6.i.i360 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t.i, i64 0, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %83) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %83, i8 0, i64 56, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i357, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %84) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %84, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2.i195, i64* nonnull %arrayidx.i.i.i357, i64* nonnull %arraydecay.i.i.i.i358, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i358, i64* nonnull %arraydecay6.i.i360) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %84) #10
  call void @fpcorrection434(i64* nonnull %arraydecay6.i.i360) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %83) #10
  %85 = call i64 @llvm.objectsize.i64.p0i8(i8* %PublicKeyB, i1 false, i1 true) #10
  %call.i.i361 = call i8* @__memcpy_chk(i8* %PublicKeyB, i8* nonnull %82, i64 55, i64 %85) #10
  %add.ptr.i362 = getelementptr inbounds i8, i8* %PublicKeyB, i64 55
  %86 = bitcast i64* %arraydecay6.i.i360 to i8*
  %87 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr.i362, i1 false, i1 true) #10
  %call.i5.i363 = call i8* @__memcpy_chk(i8* nonnull %add.ptr.i362, i8* nonnull %86, i64 55, i64 %87) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %82) #10
  %add.ptr = getelementptr inbounds i8, i8* %PublicKeyB, i64 110
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %82) #10
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %83) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %83, i8 0, i64 56, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i357, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %84) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %84, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay5.i202, i64* nonnull %arrayidx.i.i.i357, i64* nonnull %arraydecay.i.i.i.i358, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i358, i64* nonnull %arraydecay2.i.i356) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %84) #10
  call void @fpcorrection434(i64* nonnull %arraydecay2.i.i356) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %83) #10
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %83) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %83, i8 0, i64 56, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i357, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %84) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %84, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.i209, i64* nonnull %arrayidx.i.i.i357, i64* nonnull %arraydecay.i.i.i.i358, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i358, i64* nonnull %arraydecay6.i.i360) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %84) #10
  call void @fpcorrection434(i64* nonnull %arraydecay6.i.i360) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %83) #10
  %88 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr, i1 false, i1 true) #10
  %call.i.i321 = call i8* @__memcpy_chk(i8* nonnull %add.ptr, i8* nonnull %82, i64 55, i64 %88) #10
  %add.ptr.i322 = getelementptr inbounds i8, i8* %PublicKeyB, i64 165
  %89 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr.i322, i1 false, i1 true) #10
  %call.i5.i323 = call i8* @__memcpy_chk(i8* nonnull %add.ptr.i322, i8* nonnull %86, i64 55, i64 %89) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %82) #10
  %add.ptr165 = getelementptr inbounds i8, i8* %PublicKeyB, i64 220
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %82) #10
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %83) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %83, i8 0, i64 56, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i357, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %84) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %84, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay11.i216, i64* nonnull %arrayidx.i.i.i357, i64* nonnull %arraydecay.i.i.i.i358, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i358, i64* nonnull %arraydecay2.i.i356) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %84) #10
  call void @fpcorrection434(i64* nonnull %arraydecay2.i.i356) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %83) #10
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %83) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %83, i8 0, i64 56, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i357, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %84) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %84, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay14.i223, i64* nonnull %arrayidx.i.i.i357, i64* nonnull %arraydecay.i.i.i.i358, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i358, i64* nonnull %arraydecay6.i.i360) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %84) #10
  call void @fpcorrection434(i64* nonnull %arraydecay6.i.i360) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %83) #10
  %90 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr165, i1 false, i1 true) #10
  %call.i.i = call i8* @__memcpy_chk(i8* nonnull %add.ptr165, i8* nonnull %82, i64 55, i64 %90) #10
  %add.ptr.i = getelementptr inbounds i8, i8* %PublicKeyB, i64 275
  %91 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr.i, i1 false, i1 true) #10
  %call.i5.i = call i8* @__memcpy_chk(i8* nonnull %add.ptr.i, i8* nonnull %86, i64 55, i64 %91) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %82) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %13) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %12) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %11) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %10) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %9) #10
  call void @llvm.lifetime.end.p0i8(i64 336, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 1792, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %0) #10
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define i32 @EphemeralSecretAgreement_A_SIDHp434(i8* %PrivateKeyA, i8* %PublicKeyB, i8* %SharedSecretA) local_unnamed_addr #4 {
entry:
  %one.i.i.i = alloca [7 x i64], align 16
  %t.i = alloca [2 x [7 x i64]], align 16
  %temp.i.i.i.i = alloca [14 x i64], align 16
  %R = alloca [1 x %struct.point_proj], align 16
  %pts = alloca [7 x [1 x %struct.point_proj]], align 16
  %coeff = alloca [3 x [2 x [7 x i64]]], align 16
  %PKB = alloca [3 x [2 x [7 x i64]]], align 16
  %jinv = alloca [2 x [7 x i64]], align 16
  %A24plus = alloca [2 x [7 x i64]], align 16
  %C24 = alloca [2 x [7 x i64]], align 16
  %A = alloca [2 x [7 x i64]], align 16
  %pts_index = alloca [7 x i32], align 16
  %SecretKeyA = alloca [4 x i64], align 16
  %0 = bitcast [1 x %struct.point_proj]* %R to i8*
  call void @llvm.lifetime.start.p0i8(i64 224, i8* nonnull %0) #10
  %1 = bitcast [7 x [1 x %struct.point_proj]]* %pts to i8*
  call void @llvm.lifetime.start.p0i8(i64 1568, i8* nonnull %1) #10
  %2 = bitcast [3 x [2 x [7 x i64]]]* %coeff to i8*
  call void @llvm.lifetime.start.p0i8(i64 336, i8* nonnull %2) #10
  %3 = bitcast [3 x [2 x [7 x i64]]]* %PKB to i8*
  call void @llvm.lifetime.start.p0i8(i64 336, i8* nonnull %3) #10
  %4 = bitcast [2 x [7 x i64]]* %jinv to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %4) #10
  %5 = bitcast [2 x [7 x i64]]* %A24plus to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %5) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %5, i8 0, i64 112, i1 false)
  %6 = bitcast [2 x [7 x i64]]* %C24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %6) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %6, i8 0, i64 112, i1 false)
  %7 = bitcast [2 x [7 x i64]]* %A to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %7) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %7, i8 0, i64 112, i1 false)
  %8 = bitcast [7 x i32]* %pts_index to i8*
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %8) #10
  %9 = bitcast [4 x i64]* %SecretKeyA to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #10
  %arraydecay = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 0, i64 0
  %arraydecay.i = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 0, i64 0, i64 0
  %arrayidx.i.i = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 0, i64 0, i64 6
  store i64 0, i64* %arrayidx.i.i, align 16, !tbaa !3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %3, i8* align 1 %PublicKeyB, i64 55, i1 false)
  %add.ptr.i = getelementptr inbounds i8, i8* %PublicKeyB, i64 55
  %arraydecay2.i = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 0, i64 1, i64 0
  %arrayidx.i7.i = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 0, i64 1, i64 6
  store i64 0, i64* %arrayidx.i7.i, align 8, !tbaa !3
  %10 = bitcast i64* %arraydecay2.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %10, i8* nonnull align 1 %add.ptr.i, i64 55, i1 false)
  %11 = bitcast [14 x i64]* %temp.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 112, i1 false) #10
  %arraydecay.i.i.i.i = getelementptr inbounds [14 x i64], [14 x i64]* %temp.i.i.i.i, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay.i, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay.i) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %11) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2.i, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay2.i) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %11) #10
  %add.ptr = getelementptr inbounds i8, i8* %PublicKeyB, i64 110
  %arraydecay2 = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 1, i64 0
  %arraydecay.i135 = getelementptr inbounds [7 x i64], [7 x i64]* %arraydecay2, i64 0, i64 0
  %arrayidx.i.i136 = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 1, i64 0, i64 6
  store i64 0, i64* %arrayidx.i.i136, align 16, !tbaa !3
  %12 = bitcast [7 x i64]* %arraydecay2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %12, i8* nonnull align 1 %add.ptr, i64 55, i1 false)
  %add.ptr.i138 = getelementptr inbounds i8, i8* %PublicKeyB, i64 165
  %arraydecay2.i139 = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 1, i64 1, i64 0
  %arrayidx.i7.i140 = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 1, i64 1, i64 6
  store i64 0, i64* %arrayidx.i7.i140, align 8, !tbaa !3
  %13 = bitcast i64* %arraydecay2.i139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %13, i8* nonnull align 1 %add.ptr.i138, i64 55, i1 false)
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay.i135, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay.i135) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %11) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2.i139, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay2.i139) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %11) #10
  %add.ptr3 = getelementptr inbounds i8, i8* %PublicKeyB, i64 220
  %arraydecay5 = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 2, i64 0
  %arraydecay.i144 = getelementptr inbounds [7 x i64], [7 x i64]* %arraydecay5, i64 0, i64 0
  %arrayidx.i.i145 = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 2, i64 0, i64 6
  store i64 0, i64* %arrayidx.i.i145, align 16, !tbaa !3
  %14 = bitcast [7 x i64]* %arraydecay5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %14, i8* nonnull align 1 %add.ptr3, i64 55, i1 false)
  %add.ptr.i147 = getelementptr inbounds i8, i8* %PublicKeyB, i64 275
  %arraydecay2.i148 = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 2, i64 1, i64 0
  %arrayidx.i7.i149 = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 2, i64 1, i64 6
  store i64 0, i64* %arrayidx.i7.i149, align 8, !tbaa !3
  %15 = bitcast i64* %arraydecay2.i148 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %15, i8* nonnull align 1 %add.ptr.i147, i64 55, i1 false)
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay.i144, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay.i144) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %11) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2.i148, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay2.i148) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %11) #10
  %arraydecay12 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A, i64 0, i64 0
  call void @get_A([7 x i64]* nonnull %arraydecay, [7 x i64]* nonnull %arraydecay2, [7 x i64]* nonnull %arraydecay5, [7 x i64]* nonnull %arraydecay12)
  %arrayidx5.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %C24, i64 0, i64 0, i64 0
  store i64 59480, i64* %arrayidx5.i, align 16, !tbaa !3
  %arrayidx5.i.1 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %C24, i64 0, i64 0, i64 1
  %arrayidx5.i.3 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %C24, i64 0, i64 0, i64 3
  %16 = bitcast i64* %arrayidx5.i.1 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %16, i8 0, i64 16, i1 false)
  %17 = bitcast i64* %arrayidx5.i.3 to <4 x i64>*
  store <4 x i64> <i64 8223546574114914304, i64 -5763681774320264791, i64 -3286316385362345447, i64 521019521129909>, <4 x i64>* %17, align 8, !tbaa !3
  %arraydecay16 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %C24, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A24plus, i64 0, i64 0
  call fastcc void @mp2_add([7 x i64]* nonnull %arraydecay12, [7 x i64]* nonnull %arraydecay16, [7 x i64]* nonnull %arraydecay17)
  store i64 118960, i64* %arrayidx5.i, align 16, !tbaa !3
  %18 = bitcast i64* %arrayidx5.i.1 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %18, i8 0, i64 16, i1 false)
  %19 = bitcast i64* %arrayidx5.i.3 to <4 x i64>*
  store <4 x i64> <i64 -1999650925479723008, i64 6919380525069022034, i64 -6572632770724690893, i64 1042039042259819>, <4 x i64>* %19, align 8, !tbaa !3
  %arraydecay25 = getelementptr inbounds [4 x i64], [4 x i64]* %SecretKeyA, i64 0, i64 0
  %arrayidx.i171 = getelementptr inbounds [4 x i64], [4 x i64]* %SecretKeyA, i64 0, i64 3
  store i64 0, i64* %arrayidx.i171, align 8, !tbaa !3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %9, i8* align 1 %PrivateKeyA, i64 27, i1 false)
  %arraydecay33 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0
  call fastcc void @LADDER3PT([7 x i64]* nonnull %arraydecay, [7 x i64]* nonnull %arraydecay2, [7 x i64]* nonnull %arraydecay5, i64* nonnull %arraydecay25, i32 0, %struct.point_proj* nonnull %arraydecay33, [7 x i64]* nonnull %arraydecay12)
  %arraydecay61 = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %coeff, i64 0, i64 0
  %arrayidx.4.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 0, i64 4
  %arrayidx.1.i9.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 1, i64 1
  %arrayidx.5.i17.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 1, i64 5
  %arrayidx.2.i.i178 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 0, i64 2
  %arrayidx.6.i.i186 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 0, i64 6
  %arrayidx.3.i13.i194 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 1, i64 3
  %20 = bitcast [1 x %struct.point_proj]* %R to <4 x i64>*
  %21 = bitcast i64* %arrayidx.4.i.i to <4 x i64>*
  %22 = bitcast i64* %arrayidx.1.i9.i to <4 x i64>*
  %23 = bitcast i64* %arrayidx.5.i17.i to <4 x i64>*
  %24 = bitcast i64* %arrayidx.2.i.i178 to <4 x i64>*
  %25 = bitcast i64* %arrayidx.6.i.i186 to <4 x i64>*
  %26 = bitcast i64* %arrayidx.3.i13.i194 to <4 x i64>*
  %27 = bitcast [1 x %struct.point_proj]* %R to <4 x i64>*
  %28 = bitcast i64* %arrayidx.4.i.i to <4 x i64>*
  %29 = bitcast i64* %arrayidx.1.i9.i to <4 x i64>*
  %30 = bitcast i64* %arrayidx.5.i17.i to <4 x i64>*
  %31 = bitcast i64* %arrayidx.2.i.i178 to <4 x i64>*
  %32 = bitcast i64* %arrayidx.6.i.i186 to <4 x i64>*
  %33 = bitcast i64* %arrayidx.3.i13.i194 to <4 x i64>*
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.end, %entry
  %ii.0282 = phi i32 [ 0, %entry ], [ %ii.1.lcssa, %for.end ]
  %npts.0281 = phi i32 [ 0, %entry ], [ %sub70, %for.end ]
  %index.0280 = phi i32 [ 0, %entry ], [ %63, %for.end ]
  %row.0279 = phi i32 [ 1, %entry ], [ %inc93, %for.end ]
  %sub = sub nuw nsw i32 108, %row.0279
  %cmp35272 = icmp ult i32 %index.0280, %sub
  br i1 %cmp35272, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %ii.1275 = phi i32 [ %inc51, %while.body ], [ %ii.0282, %while.cond.preheader ]
  %npts.1274 = phi i32 [ %inc, %while.body ], [ %npts.0281, %while.cond.preheader ]
  %index.1273 = phi i32 [ %add, %while.body ], [ %index.0280, %while.cond.preheader ]
  %idxprom = zext i32 %npts.1274 to i64
  %arraydecay2.i173 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 0, i64 0
  %34 = load <4 x i64>, <4 x i64>* %20, align 16, !tbaa !3
  %35 = bitcast i64* %arraydecay2.i173 to <4 x i64>*
  store <4 x i64> %34, <4 x i64>* %35, align 16, !tbaa !3
  %arrayidx2.4.i.i = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 0, i64 4
  %36 = load <4 x i64>, <4 x i64>* %21, align 16, !tbaa !3
  %37 = bitcast i64* %arrayidx2.4.i.i to <4 x i64>*
  store <4 x i64> %36, <4 x i64>* %37, align 16, !tbaa !3
  %arrayidx2.1.i10.i = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 1, i64 1
  %38 = load <4 x i64>, <4 x i64>* %22, align 8, !tbaa !3
  %39 = bitcast i64* %arrayidx2.1.i10.i to <4 x i64>*
  store <4 x i64> %38, <4 x i64>* %39, align 8, !tbaa !3
  %arrayidx2.5.i18.i = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 1, i64 5
  %40 = load <4 x i64>, <4 x i64>* %23, align 8, !tbaa !3
  %41 = bitcast i64* %arrayidx2.5.i18.i to <4 x i64>*
  store <4 x i64> %40, <4 x i64>* %41, align 8, !tbaa !3
  %arrayidx2.2.i.i179 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 0, i64 2
  %42 = load <4 x i64>, <4 x i64>* %24, align 16, !tbaa !3
  %43 = bitcast i64* %arrayidx2.2.i.i179 to <4 x i64>*
  store <4 x i64> %42, <4 x i64>* %43, align 16, !tbaa !3
  %arrayidx2.6.i.i187 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 0, i64 6
  %44 = load <4 x i64>, <4 x i64>* %25, align 16, !tbaa !3
  %45 = bitcast i64* %arrayidx2.6.i.i187 to <4 x i64>*
  store <4 x i64> %44, <4 x i64>* %45, align 16, !tbaa !3
  %arrayidx2.3.i14.i195 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 1, i64 3
  %46 = load <4 x i64>, <4 x i64>* %26, align 8, !tbaa !3
  %47 = bitcast i64* %arrayidx2.3.i14.i195 to <4 x i64>*
  store <4 x i64> %46, <4 x i64>* %47, align 8, !tbaa !3
  %inc = add i32 %npts.1274, 1
  %arrayidx50 = getelementptr inbounds [7 x i32], [7 x i32]* %pts_index, i64 0, i64 %idxprom
  store i32 %index.1273, i32* %arrayidx50, align 4, !tbaa !59
  %inc51 = add i32 %ii.1275, 1
  %idxprom52 = zext i32 %ii.1275 to i64
  %arrayidx53 = getelementptr inbounds [107 x i32], [107 x i32]* @strat_Alice, i64 0, i64 %idxprom52
  %48 = load i32, i32* %arrayidx53, align 4, !tbaa !59
  %mul = shl i32 %48, 1
  call void @xDBLe(%struct.point_proj* nonnull %arraydecay33, %struct.point_proj* nonnull %arraydecay33, [7 x i64]* nonnull %arraydecay17, [7 x i64]* nonnull %arraydecay16, i32 %mul)
  %add = add i32 %48, %index.1273
  %cmp35 = icmp ult i32 %add, %sub
  br i1 %cmp35, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %npts.1.lcssa = phi i32 [ %npts.0281, %while.cond.preheader ], [ %inc, %while.body ]
  %ii.1.lcssa = phi i32 [ %ii.0282, %while.cond.preheader ], [ %inc51, %while.body ]
  call void @get_4_isog(%struct.point_proj* nonnull %arraydecay33, [7 x i64]* nonnull %arraydecay17, [7 x i64]* nonnull %arraydecay16, [2 x [7 x i64]]* nonnull %arraydecay61)
  %cmp63277 = icmp eq i32 %npts.1.lcssa, 0
  br i1 %cmp63277, label %for.end, label %for.body64.preheader

for.body64.preheader:                             ; preds = %while.end
  %wide.trip.count = zext i32 %npts.1.lcssa to i64
  br label %for.body64

for.body64:                                       ; preds = %for.body64, %for.body64.preheader
  %indvars.iv = phi i64 [ 0, %for.body64.preheader ], [ %indvars.iv.next, %for.body64 ]
  %arraydecay67 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %indvars.iv, i64 0
  call void @eval_4_isog(%struct.point_proj* nonnull %arraydecay67, [2 x [7 x i64]]* nonnull %arraydecay61)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.end, label %for.body64

for.end:                                          ; preds = %for.body64, %while.end
  %sub70 = add i32 %npts.1.lcssa, -1
  %idxprom71 = zext i32 %sub70 to i64
  %arraydecay.i202 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom71, i64 0, i32 0, i64 0, i64 0
  %49 = bitcast i64* %arraydecay.i202 to <4 x i64>*
  %50 = load <4 x i64>, <4 x i64>* %49, align 16, !tbaa !3
  store <4 x i64> %50, <4 x i64>* %27, align 16, !tbaa !3
  %arrayidx.4.i.i210 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom71, i64 0, i32 0, i64 0, i64 4
  %51 = bitcast i64* %arrayidx.4.i.i210 to <4 x i64>*
  %52 = load <4 x i64>, <4 x i64>* %51, align 16, !tbaa !3
  store <4 x i64> %52, <4 x i64>* %28, align 16, !tbaa !3
  %arrayidx.1.i9.i218 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom71, i64 0, i32 0, i64 1, i64 1
  %53 = bitcast i64* %arrayidx.1.i9.i218 to <4 x i64>*
  %54 = load <4 x i64>, <4 x i64>* %53, align 8, !tbaa !3
  store <4 x i64> %54, <4 x i64>* %29, align 8, !tbaa !3
  %arrayidx.5.i17.i226 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom71, i64 0, i32 0, i64 1, i64 5
  %55 = bitcast i64* %arrayidx.5.i17.i226 to <4 x i64>*
  %56 = load <4 x i64>, <4 x i64>* %55, align 8, !tbaa !3
  store <4 x i64> %56, <4 x i64>* %30, align 8, !tbaa !3
  %arrayidx.2.i.i234 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom71, i64 0, i32 1, i64 0, i64 2
  %57 = bitcast i64* %arrayidx.2.i.i234 to <4 x i64>*
  %58 = load <4 x i64>, <4 x i64>* %57, align 16, !tbaa !3
  store <4 x i64> %58, <4 x i64>* %31, align 16, !tbaa !3
  %arrayidx.6.i.i242 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom71, i64 0, i32 1, i64 0, i64 6
  %59 = bitcast i64* %arrayidx.6.i.i242 to <4 x i64>*
  %60 = load <4 x i64>, <4 x i64>* %59, align 16, !tbaa !3
  store <4 x i64> %60, <4 x i64>* %32, align 16, !tbaa !3
  %arrayidx.3.i13.i250 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom71, i64 0, i32 1, i64 1, i64 3
  %61 = bitcast i64* %arrayidx.3.i13.i250 to <4 x i64>*
  %62 = load <4 x i64>, <4 x i64>* %61, align 8, !tbaa !3
  store <4 x i64> %62, <4 x i64>* %33, align 8, !tbaa !3
  %arrayidx90 = getelementptr inbounds [7 x i32], [7 x i32]* %pts_index, i64 0, i64 %idxprom71
  %63 = load i32, i32* %arrayidx90, align 4, !tbaa !59
  %inc93 = add nuw nsw i32 %row.0279, 1
  %exitcond283 = icmp eq i32 %inc93, 108
  br i1 %exitcond283, label %for.end94, label %while.cond.preheader

for.end94:                                        ; preds = %for.end
  call void @get_4_isog(%struct.point_proj* nonnull %arraydecay33, [7 x i64]* nonnull %arraydecay17, [7 x i64]* nonnull %arraydecay16, [2 x [7 x i64]]* nonnull %arraydecay61)
  call fastcc void @mp2_add([7 x i64]* nonnull %arraydecay17, [7 x i64]* nonnull %arraydecay17, [7 x i64]* nonnull %arraydecay17)
  %arraydecay.i258 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A24plus, i64 0, i64 0, i64 0
  call void @fpsub434(i64* nonnull %arraydecay.i258, i64* nonnull %arrayidx5.i, i64* nonnull %arraydecay.i258) #10
  %arraydecay6.i261 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A24plus, i64 0, i64 1, i64 0
  %arraydecay8.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %C24, i64 0, i64 1, i64 0
  call void @fpsub434(i64* nonnull %arraydecay6.i261, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay6.i261) #10
  call void @fpadd434(i64* nonnull %arraydecay.i258, i64* nonnull %arraydecay.i258, i64* nonnull %arraydecay.i258) #10
  call void @fpadd434(i64* nonnull %arraydecay6.i261, i64* nonnull %arraydecay6.i261, i64* nonnull %arraydecay6.i261) #10
  %arraydecay110 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %jinv, i64 0, i64 0
  call void @j_inv([7 x i64]* nonnull %arraydecay17, [7 x i64]* nonnull %arraydecay16, [7 x i64]* nonnull %arraydecay110)
  %64 = bitcast [2 x [7 x i64]]* %t.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %64) #10
  %arraydecay.i.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %jinv, i64 0, i64 0, i64 0
  %arraydecay2.i.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t.i, i64 0, i64 0, i64 0
  %65 = bitcast [7 x i64]* %one.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %65) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %65, i8 0, i64 56, i1 false) #10
  %arrayidx.i.i.i = getelementptr inbounds [7 x i64], [7 x i64]* %one.i.i.i, i64 0, i64 0
  store i64 1, i64* %arrayidx.i.i.i, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay.i.i, i64* nonnull %arrayidx.i.i.i, i64* nonnull %arraydecay.i.i.i.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay2.i.i) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %11) #10
  call void @fpcorrection434(i64* nonnull %arraydecay2.i.i) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %65) #10
  %arraydecay4.i.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %jinv, i64 0, i64 1, i64 0
  %arraydecay6.i.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %t.i, i64 0, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %65) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %65, i8 0, i64 56, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay4.i.i, i64* nonnull %arrayidx.i.i.i, i64* nonnull %arraydecay.i.i.i.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay6.i.i) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %11) #10
  call void @fpcorrection434(i64* nonnull %arraydecay6.i.i) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %65) #10
  %66 = call i64 @llvm.objectsize.i64.p0i8(i8* %SharedSecretA, i1 false, i1 true) #10
  %call.i.i270 = call i8* @__memcpy_chk(i8* %SharedSecretA, i8* nonnull %64, i64 55, i64 %66) #10
  %add.ptr.i271 = getelementptr inbounds i8, i8* %SharedSecretA, i64 55
  %67 = bitcast i64* %arraydecay6.i.i to i8*
  %68 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr.i271, i1 false, i1 true) #10
  %call.i5.i = call i8* @__memcpy_chk(i8* nonnull %add.ptr.i271, i8* nonnull %67, i64 55, i64 %68) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %64) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #10
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 336, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 336, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 1568, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %0) #10
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define i32 @EphemeralSecretAgreement_B_extended(i8* %PrivateKeyB, i8* %PublicKeyA, i8* %SharedSecretB, i32 %sike) local_unnamed_addr #4 {
entry:
  %one.i.i.i = alloca [7 x i64], align 16
  %P.i = alloca [1 x %struct.point_proj], align 16
  %Q.i = alloca [1 x %struct.point_proj], align 16
  %A2.i = alloca [2 x [7 x i64]], align 16
  %tmp1.i = alloca [2 x [7 x i64]], align 16
  %tmp2.i = alloca [2 x [7 x i64]], align 16
  %temp.i.i.i.i = alloca [14 x i64], align 16
  %R = alloca [1 x %struct.point_proj], align 16
  %pts = alloca [8 x [1 x %struct.point_proj]], align 16
  %coeff = alloca [3 x [2 x [7 x i64]]], align 16
  %PKB = alloca [3 x [2 x [7 x i64]]], align 16
  %jinv = alloca [2 x [7 x i64]], align 16
  %A24plus = alloca [2 x [7 x i64]], align 16
  %A24minus = alloca [2 x [7 x i64]], align 16
  %A = alloca [2 x [7 x i64]], align 16
  %pts_index = alloca [8 x i32], align 16
  %SecretKeyB = alloca [4 x i64], align 16
  %0 = bitcast [1 x %struct.point_proj]* %R to i8*
  call void @llvm.lifetime.start.p0i8(i64 224, i8* nonnull %0) #10
  %1 = bitcast [8 x [1 x %struct.point_proj]]* %pts to i8*
  call void @llvm.lifetime.start.p0i8(i64 1792, i8* nonnull %1) #10
  %2 = bitcast [3 x [2 x [7 x i64]]]* %coeff to i8*
  call void @llvm.lifetime.start.p0i8(i64 336, i8* nonnull %2) #10
  %3 = bitcast [3 x [2 x [7 x i64]]]* %PKB to i8*
  call void @llvm.lifetime.start.p0i8(i64 336, i8* nonnull %3) #10
  %4 = bitcast [2 x [7 x i64]]* %jinv to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %4) #10
  %5 = bitcast [2 x [7 x i64]]* %A24plus to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %5) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %5, i8 0, i64 112, i1 false)
  %6 = bitcast [2 x [7 x i64]]* %A24minus to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %6) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %6, i8 0, i64 112, i1 false)
  %7 = bitcast [2 x [7 x i64]]* %A to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %7) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %7, i8 0, i64 112, i1 false)
  %8 = bitcast [8 x i32]* %pts_index to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #10
  %9 = bitcast [4 x i64]* %SecretKeyB to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 32, i1 false)
  %arraydecay = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 0, i64 0
  %arraydecay.i = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 0, i64 0, i64 0
  %arrayidx.i.i = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 0, i64 0, i64 6
  store i64 0, i64* %arrayidx.i.i, align 16, !tbaa !3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %3, i8* align 1 %PublicKeyA, i64 55, i1 false)
  %add.ptr.i = getelementptr inbounds i8, i8* %PublicKeyA, i64 55
  %arraydecay2.i = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 0, i64 1, i64 0
  %arrayidx.i7.i = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 0, i64 1, i64 6
  store i64 0, i64* %arrayidx.i7.i, align 8, !tbaa !3
  %10 = bitcast i64* %arraydecay2.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %10, i8* nonnull align 1 %add.ptr.i, i64 55, i1 false)
  %11 = bitcast [14 x i64]* %temp.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 112, i1 false) #10
  %arraydecay.i.i.i.i = getelementptr inbounds [14 x i64], [14 x i64]* %temp.i.i.i.i, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay.i, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay.i) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %11) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2.i, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay2.i) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %11) #10
  %add.ptr = getelementptr inbounds i8, i8* %PublicKeyA, i64 110
  %arraydecay2 = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 1, i64 0
  %arraydecay.i155 = getelementptr inbounds [7 x i64], [7 x i64]* %arraydecay2, i64 0, i64 0
  %arrayidx.i.i156 = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 1, i64 0, i64 6
  store i64 0, i64* %arrayidx.i.i156, align 16, !tbaa !3
  %12 = bitcast [7 x i64]* %arraydecay2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %12, i8* nonnull align 1 %add.ptr, i64 55, i1 false)
  %add.ptr.i158 = getelementptr inbounds i8, i8* %PublicKeyA, i64 165
  %arraydecay2.i159 = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 1, i64 1, i64 0
  %arrayidx.i7.i160 = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 1, i64 1, i64 6
  store i64 0, i64* %arrayidx.i7.i160, align 8, !tbaa !3
  %13 = bitcast i64* %arraydecay2.i159 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %13, i8* nonnull align 1 %add.ptr.i158, i64 55, i1 false)
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay.i155, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay.i155) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %11) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2.i159, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay2.i159) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %11) #10
  %add.ptr3 = getelementptr inbounds i8, i8* %PublicKeyA, i64 220
  %arraydecay5 = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 2, i64 0
  %arraydecay.i164 = getelementptr inbounds [7 x i64], [7 x i64]* %arraydecay5, i64 0, i64 0
  %arrayidx.i.i165 = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 2, i64 0, i64 6
  store i64 0, i64* %arrayidx.i.i165, align 16, !tbaa !3
  %14 = bitcast [7 x i64]* %arraydecay5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %14, i8* nonnull align 1 %add.ptr3, i64 55, i1 false)
  %add.ptr.i167 = getelementptr inbounds i8, i8* %PublicKeyA, i64 275
  %arraydecay2.i168 = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 2, i64 1, i64 0
  %arrayidx.i7.i169 = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 2, i64 1, i64 6
  store i64 0, i64* %arrayidx.i7.i169, align 8, !tbaa !3
  %15 = bitcast i64* %arraydecay2.i168 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %15, i8* nonnull align 1 %add.ptr.i167, i64 55, i1 false)
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay.i164, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay.i164) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %11) #10
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2.i168, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay2.i168) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %11) #10
  %arraydecay12 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A, i64 0, i64 0
  call void @get_A([7 x i64]* nonnull %arraydecay, [7 x i64]* nonnull %arraydecay2, [7 x i64]* nonnull %arraydecay5, [7 x i64]* nonnull %arraydecay12)
  %arrayidx5.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A24minus, i64 0, i64 0, i64 0
  store i64 59480, i64* %arrayidx5.i, align 16, !tbaa !3
  %arrayidx5.i.1 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A24minus, i64 0, i64 0, i64 1
  %arrayidx5.i.3 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A24minus, i64 0, i64 0, i64 3
  %16 = bitcast i64* %arrayidx5.i.1 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %16, i8 0, i64 16, i1 false)
  %17 = bitcast i64* %arrayidx5.i.3 to <4 x i64>*
  store <4 x i64> <i64 8223546574114914304, i64 -5763681774320264791, i64 -3286316385362345447, i64 521019521129909>, <4 x i64>* %17, align 8, !tbaa !3
  %arraydecay16 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A24minus, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A24plus, i64 0, i64 0
  call fastcc void @mp2_add([7 x i64]* nonnull %arraydecay12, [7 x i64]* nonnull %arraydecay16, [7 x i64]* nonnull %arraydecay17)
  %arraydecay.i172 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A, i64 0, i64 0, i64 0
  call void @mp_sub434_p2(i64* nonnull %arraydecay.i172, i64* nonnull %arrayidx5.i, i64* nonnull %arrayidx5.i) #10
  %arraydecay6.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A, i64 0, i64 1, i64 0
  %arraydecay8.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A24minus, i64 0, i64 1, i64 0
  call void @mp_sub434_p2(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay8.i) #10
  %cmp = icmp eq i32 %sike, 1
  br i1 %cmp, label %if.then, label %if.end28

if.then:                                          ; preds = %entry
  %18 = bitcast [1 x %struct.point_proj]* %P.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 224, i8* nonnull %18) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %18, i8 0, i64 224, i1 false) #10
  %19 = bitcast [1 x %struct.point_proj]* %Q.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 224, i8* nonnull %19) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %19, i8 0, i64 224, i1 false) #10
  %20 = bitcast [2 x [7 x i64]]* %A2.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %20) #10
  %21 = bitcast [2 x [7 x i64]]* %tmp1.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %21) #10
  %22 = bitcast [2 x [7 x i64]]* %tmp2.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %22) #10
  %arraydecay.i174 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A2.i, i64 0, i64 0
  %arraydecay2.i.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A2.i, i64 0, i64 0, i64 0
  call void @fpdiv2_434(i64* nonnull %arraydecay.i172, i64* nonnull %arraydecay2.i.i) #10
  %arraydecay6.i.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A2.i, i64 0, i64 1, i64 0
  call void @fpdiv2_434(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i.i) #10
  %arraydecay2.i175 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0
  %arraydecay3.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 0, i64 0
  %23 = bitcast [3 x [2 x [7 x i64]]]* %PKB to <4 x i64>*
  %24 = load <4 x i64>, <4 x i64>* %23, align 16, !tbaa !3
  %25 = bitcast [1 x %struct.point_proj]* %P.i to <4 x i64>*
  store <4 x i64> %24, <4 x i64>* %25, align 16, !tbaa !3
  %arrayidx.4.i.i.i = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 0, i64 0, i64 4
  %arrayidx2.4.i.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 0, i64 0, i64 4
  %26 = bitcast i64* %arrayidx.4.i.i.i to <4 x i64>*
  %27 = load <4 x i64>, <4 x i64>* %26, align 16, !tbaa !3
  %28 = bitcast i64* %arrayidx2.4.i.i.i to <4 x i64>*
  store <4 x i64> %27, <4 x i64>* %28, align 16, !tbaa !3
  %arrayidx.1.i9.i.i = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 0, i64 1, i64 1
  %arrayidx2.1.i10.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 0, i64 1, i64 1
  %29 = bitcast i64* %arrayidx.1.i9.i.i to <4 x i64>*
  %30 = load <4 x i64>, <4 x i64>* %29, align 8, !tbaa !3
  %31 = bitcast i64* %arrayidx2.1.i10.i.i to <4 x i64>*
  store <4 x i64> %30, <4 x i64>* %31, align 8, !tbaa !3
  %arrayidx.5.i17.i.i = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 0, i64 1, i64 5
  %32 = load i64, i64* %arrayidx.5.i17.i.i, align 8, !tbaa !3
  %arrayidx2.5.i18.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 0, i64 1, i64 5
  store i64 %32, i64* %arrayidx2.5.i18.i.i, align 8, !tbaa !3
  %33 = load i64, i64* %arrayidx.i7.i, align 8, !tbaa !3
  %arrayidx2.6.i20.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 0, i64 1, i64 6
  store i64 %33, i64* %arrayidx2.6.i20.i.i, align 8, !tbaa !3
  %Z.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1
  %arraydecay5.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %Z.i, i64 0, i64 0
  %34 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %Z.i, i64 0, i64 0, i64 0
  store i64 29740, i64* %34, align 16, !tbaa !3
  %arrayidx2.1.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.2.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 0, i64 2
  %arrayidx2.3.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 0, i64 3
  %35 = bitcast i64* %arrayidx2.1.i.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %35, i8 0, i64 16, i1 false) #10
  store i64 -5111598749797318656, i64* %arrayidx2.3.i.i, align 8, !tbaa !3
  %arrayidx2.4.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 0, i64 4
  %arrayidx2.5.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 0, i64 5
  %36 = bitcast i64* %arrayidx2.4.i.i to <2 x i64>*
  store <2 x i64> <i64 -2881840887160132396, i64 -1643158192681172724>, <2 x i64>* %36, align 16, !tbaa !3
  %arrayidx2.6.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 0, i64 6
  store i64 260509760564954, i64* %arrayidx2.6.i.i, align 16, !tbaa !3
  %arraydecay8.i176 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0
  %arraydecay10.i177 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 0, i64 0
  %arraydecay.i77.i = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 1, i64 0, i64 0
  %37 = bitcast i64* %arraydecay.i77.i to <4 x i64>*
  %38 = load <4 x i64>, <4 x i64>* %37, align 16, !tbaa !3
  %39 = bitcast [1 x %struct.point_proj]* %Q.i to <4 x i64>*
  store <4 x i64> %38, <4 x i64>* %39, align 16, !tbaa !3
  %arrayidx.4.i.i85.i = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 1, i64 0, i64 4
  %arrayidx2.4.i.i86.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 0, i64 0, i64 4
  %40 = bitcast i64* %arrayidx.4.i.i85.i to <4 x i64>*
  %41 = load <4 x i64>, <4 x i64>* %40, align 16, !tbaa !3
  %42 = bitcast i64* %arrayidx2.4.i.i86.i to <4 x i64>*
  store <4 x i64> %41, <4 x i64>* %42, align 16, !tbaa !3
  %arrayidx.1.i9.i93.i = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 1, i64 1, i64 1
  %arrayidx2.1.i10.i94.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 0, i64 1, i64 1
  %43 = bitcast i64* %arrayidx.1.i9.i93.i to <4 x i64>*
  %44 = load <4 x i64>, <4 x i64>* %43, align 8, !tbaa !3
  %45 = bitcast i64* %arrayidx2.1.i10.i94.i to <4 x i64>*
  store <4 x i64> %44, <4 x i64>* %45, align 8, !tbaa !3
  %arrayidx.5.i17.i101.i = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %PKB, i64 0, i64 1, i64 1, i64 5
  %46 = load i64, i64* %arrayidx.5.i17.i101.i, align 8, !tbaa !3
  %arrayidx2.5.i18.i102.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 0, i64 1, i64 5
  store i64 %46, i64* %arrayidx2.5.i18.i102.i, align 8, !tbaa !3
  %47 = load i64, i64* %arrayidx.i7.i160, align 8, !tbaa !3
  %arrayidx2.6.i20.i104.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 0, i64 1, i64 6
  store i64 %47, i64* %arrayidx2.6.i20.i104.i, align 8, !tbaa !3
  %Z12.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1
  %arraydecay13.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %Z12.i, i64 0, i64 0
  %48 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %Z12.i, i64 0, i64 0, i64 0
  store i64 29740, i64* %48, align 16, !tbaa !3
  %arrayidx2.1.i105.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.2.i106.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 0, i64 2
  %arrayidx2.3.i107.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 0, i64 3
  %49 = bitcast i64* %arrayidx2.1.i105.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %49, i8 0, i64 16, i1 false) #10
  store i64 -5111598749797318656, i64* %arrayidx2.3.i107.i, align 8, !tbaa !3
  %arrayidx2.4.i108.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 0, i64 4
  %arrayidx2.5.i109.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 0, i64 5
  %50 = bitcast i64* %arrayidx2.4.i108.i to <2 x i64>*
  store <2 x i64> <i64 -2881840887160132396, i64 -1643158192681172724>, <2 x i64>* %50, align 16, !tbaa !3
  %arrayidx2.6.i110.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 0, i64 6
  store i64 260509760564954, i64* %arrayidx2.6.i110.i, align 16, !tbaa !3
  call void @xTPLe_fast(%struct.point_proj* nonnull %arraydecay2.i175, %struct.point_proj* nonnull %arraydecay2.i175, [7 x i64]* nonnull %arraydecay.i174, i32 136) #10
  call void @xTPLe_fast(%struct.point_proj* nonnull %arraydecay8.i176, %struct.point_proj* nonnull %arraydecay8.i176, [7 x i64]* nonnull %arraydecay.i174, i32 136) #10
  call void @fpcorrection434(i64* nonnull %34) #10
  %arraydecay2.i114.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 0
  call void @fpcorrection434(i64* nonnull %arraydecay2.i114.i) #10
  call void @fpcorrection434(i64* nonnull %48) #10
  %arraydecay2.i116.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 0
  call void @fpcorrection434(i64* nonnull %arraydecay2.i116.i) #10
  %51 = load i64, i64* %34, align 16, !tbaa !3
  %52 = load i64, i64* %arrayidx2.1.i.i, align 8
  %53 = or i64 %52, %51
  %54 = load i64, i64* %arrayidx2.2.i.i, align 16
  %55 = or i64 %53, %54
  %56 = load i64, i64* %arrayidx2.3.i.i, align 8
  %57 = or i64 %55, %56
  %58 = load i64, i64* %arrayidx2.4.i.i, align 16
  %59 = or i64 %57, %58
  %60 = load i64, i64* %arrayidx2.5.i.i, align 8
  %61 = or i64 %59, %60
  %62 = load i64, i64* %arrayidx2.6.i.i, align 16
  %63 = or i64 %61, %62
  %64 = load i64, i64* %arraydecay2.i114.i, align 8
  %65 = or i64 %63, %64
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %for.cond.i143.i, label %lor.lhs.false.i

for.cond.i143.i:                                  ; preds = %if.then
  %arrayidx.1.i141.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 1
  %67 = load i64, i64* %arrayidx.1.i141.i, align 8, !tbaa !3
  %cmp1.1.i142.i = icmp eq i64 %67, 0
  br i1 %cmp1.1.i142.i, label %for.cond.1.i147.i, label %lor.lhs.false.i

for.cond.1.i147.i:                                ; preds = %for.cond.i143.i
  %arrayidx.2.i145.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 2
  %68 = load i64, i64* %arrayidx.2.i145.i, align 8, !tbaa !3
  %cmp1.2.i146.i = icmp eq i64 %68, 0
  br i1 %cmp1.2.i146.i, label %for.cond.2.i150.i, label %lor.lhs.false.i

for.cond.2.i150.i:                                ; preds = %for.cond.1.i147.i
  %arrayidx.3.i148.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 3
  %69 = load i64, i64* %arrayidx.3.i148.i, align 8, !tbaa !3
  %cmp1.3.i149.i = icmp eq i64 %69, 0
  br i1 %cmp1.3.i149.i, label %for.cond.3.i153.i, label %lor.lhs.false.i

for.cond.3.i153.i:                                ; preds = %for.cond.2.i150.i
  %arrayidx.4.i151.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 4
  %70 = load i64, i64* %arrayidx.4.i151.i, align 8, !tbaa !3
  %cmp1.4.i152.i = icmp eq i64 %70, 0
  br i1 %cmp1.4.i152.i, label %for.cond.4.i156.i, label %lor.lhs.false.i

for.cond.4.i156.i:                                ; preds = %for.cond.3.i153.i
  %arrayidx.5.i154.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 5
  %71 = load i64, i64* %arrayidx.5.i154.i, align 8, !tbaa !3
  %cmp1.5.i155.i = icmp eq i64 %71, 0
  br i1 %cmp1.5.i155.i, label %is_felm_zero.exit161.i, label %lor.lhs.false.i

is_felm_zero.exit161.i:                           ; preds = %for.cond.4.i156.i
  %arrayidx.6.i157.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 6
  %72 = load i64, i64* %arrayidx.6.i157.i, align 8, !tbaa !3
  %cmp1.6.i158.i = icmp eq i64 %72, 0
  br i1 %cmp1.6.i158.i, label %cleanup.critedge, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %is_felm_zero.exit161.i, %for.cond.4.i156.i, %for.cond.3.i153.i, %for.cond.2.i150.i, %for.cond.1.i147.i, %for.cond.i143.i, %if.then
  %73 = load i64, i64* %48, align 16, !tbaa !3
  %74 = load i64, i64* %arrayidx2.1.i105.i, align 8
  %75 = or i64 %74, %73
  %76 = load i64, i64* %arrayidx2.2.i106.i, align 16
  %77 = or i64 %75, %76
  %78 = load i64, i64* %arrayidx2.3.i107.i, align 8
  %79 = or i64 %77, %78
  %80 = load i64, i64* %arrayidx2.4.i108.i, align 16
  %81 = or i64 %79, %80
  %82 = load i64, i64* %arrayidx2.5.i109.i, align 8
  %83 = or i64 %81, %82
  %84 = load i64, i64* %arrayidx2.6.i110.i, align 16
  %85 = or i64 %83, %84
  %86 = load i64, i64* %arraydecay2.i116.i, align 8
  %87 = or i64 %85, %86
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %for.cond.i189.i, label %if.end.i

for.cond.i189.i:                                  ; preds = %lor.lhs.false.i
  %arrayidx.1.i187.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 1
  %89 = load i64, i64* %arrayidx.1.i187.i, align 8, !tbaa !3
  %cmp1.1.i188.i = icmp eq i64 %89, 0
  br i1 %cmp1.1.i188.i, label %for.cond.1.i193.i, label %if.end.i

for.cond.1.i193.i:                                ; preds = %for.cond.i189.i
  %arrayidx.2.i191.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 2
  %90 = load i64, i64* %arrayidx.2.i191.i, align 8, !tbaa !3
  %cmp1.2.i192.i = icmp eq i64 %90, 0
  br i1 %cmp1.2.i192.i, label %for.cond.2.i196.i, label %if.end.i

for.cond.2.i196.i:                                ; preds = %for.cond.1.i193.i
  %arrayidx.3.i194.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 3
  %91 = load i64, i64* %arrayidx.3.i194.i, align 8, !tbaa !3
  %cmp1.3.i195.i = icmp eq i64 %91, 0
  br i1 %cmp1.3.i195.i, label %for.cond.3.i199.i, label %if.end.i

for.cond.3.i199.i:                                ; preds = %for.cond.2.i196.i
  %arrayidx.4.i197.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 4
  %92 = load i64, i64* %arrayidx.4.i197.i, align 8, !tbaa !3
  %cmp1.4.i198.i = icmp eq i64 %92, 0
  br i1 %cmp1.4.i198.i, label %for.cond.4.i202.i, label %if.end.i

for.cond.4.i202.i:                                ; preds = %for.cond.3.i199.i
  %arrayidx.5.i200.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 5
  %93 = load i64, i64* %arrayidx.5.i200.i, align 8, !tbaa !3
  %cmp1.5.i201.i = icmp eq i64 %93, 0
  br i1 %cmp1.5.i201.i, label %is_felm_zero.exit207.i, label %if.end.i

is_felm_zero.exit207.i:                           ; preds = %for.cond.4.i202.i
  %arrayidx.6.i203.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 6
  %94 = load i64, i64* %arrayidx.6.i203.i, align 8, !tbaa !3
  %cmp1.6.i204.i = icmp eq i64 %94, 0
  br i1 %cmp1.6.i204.i, label %cleanup.critedge305, label %if.end.i

if.end.i:                                         ; preds = %is_felm_zero.exit207.i, %for.cond.4.i202.i, %for.cond.3.i199.i, %for.cond.2.i196.i, %for.cond.1.i193.i, %for.cond.i189.i, %lor.lhs.false.i
  %arraydecay55.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %tmp1.i, i64 0, i64 0
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay3.i, [7 x i64]* nonnull %arraydecay13.i, [7 x i64]* nonnull %arraydecay55.i) #10
  %arraydecay62.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %tmp2.i, i64 0, i64 0
  call void @fp2mul434_mont([7 x i64]* nonnull %arraydecay5.i, [7 x i64]* nonnull %arraydecay10.i177, [7 x i64]* nonnull %arraydecay62.i) #10
  %arraydecay.i209.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %tmp1.i, i64 0, i64 0, i64 0
  call void @fpcorrection434(i64* nonnull %arraydecay.i209.i) #10
  %arraydecay2.i210.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %tmp1.i, i64 0, i64 1, i64 0
  call void @fpcorrection434(i64* nonnull %arraydecay2.i210.i) #10
  %arraydecay.i211.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %tmp2.i, i64 0, i64 0, i64 0
  call void @fpcorrection434(i64* nonnull %arraydecay.i211.i) #10
  %arraydecay2.i212.i = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %tmp2.i, i64 0, i64 1, i64 0
  call void @fpcorrection434(i64* nonnull %arraydecay2.i212.i) #10
  %call67.i = call i32 @memcmp(i8* nonnull %21, i8* nonnull %22, i64 110) #10
  %cmp.i = icmp eq i32 %call67.i, 0
  br i1 %cmp.i, label %cleanup.critedge306, label %if.end69.i

if.end69.i:                                       ; preds = %if.end.i
  call void @xTPL_fast(%struct.point_proj* nonnull %arraydecay2.i175, %struct.point_proj* nonnull %arraydecay2.i175, [7 x i64]* nonnull %arraydecay.i174) #10
  call void @xTPL_fast(%struct.point_proj* nonnull %arraydecay8.i176, %struct.point_proj* nonnull %arraydecay8.i176, [7 x i64]* nonnull %arraydecay.i174) #10
  call void @fpcorrection434(i64* nonnull %34) #10
  call void @fpcorrection434(i64* nonnull %arraydecay2.i114.i) #10
  call void @fpcorrection434(i64* nonnull %48) #10
  call void @fpcorrection434(i64* nonnull %arraydecay2.i116.i) #10
  %95 = load i64, i64* %34, align 16, !tbaa !3
  %96 = load i64, i64* %arrayidx2.1.i.i, align 8
  %97 = or i64 %96, %95
  %98 = load i64, i64* %arrayidx2.2.i.i, align 16
  %99 = or i64 %97, %98
  %100 = load i64, i64* %arrayidx2.3.i.i, align 8
  %101 = or i64 %99, %100
  %102 = load i64, i64* %arrayidx2.4.i.i, align 16
  %103 = or i64 %101, %102
  %104 = load i64, i64* %arrayidx2.5.i.i, align 8
  %105 = or i64 %103, %104
  %106 = load i64, i64* %arrayidx2.6.i.i, align 16
  %107 = or i64 %105, %106
  %108 = load i64, i64* %arraydecay2.i114.i, align 8
  %109 = or i64 %107, %108
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %for.cond.i32.i, label %publickey_validation.exit

for.cond.i32.i:                                   ; preds = %if.end69.i
  %arrayidx.1.i30.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 1
  %111 = load i64, i64* %arrayidx.1.i30.i, align 8, !tbaa !3
  %cmp1.1.i31.i = icmp eq i64 %111, 0
  br i1 %cmp1.1.i31.i, label %for.cond.1.i36.i, label %publickey_validation.exit

for.cond.1.i36.i:                                 ; preds = %for.cond.i32.i
  %arrayidx.2.i34.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 2
  %112 = load i64, i64* %arrayidx.2.i34.i, align 8, !tbaa !3
  %cmp1.2.i35.i = icmp eq i64 %112, 0
  br i1 %cmp1.2.i35.i, label %for.cond.2.i39.i, label %publickey_validation.exit

for.cond.2.i39.i:                                 ; preds = %for.cond.1.i36.i
  %arrayidx.3.i37.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 3
  %113 = load i64, i64* %arrayidx.3.i37.i, align 8, !tbaa !3
  %cmp1.3.i38.i = icmp eq i64 %113, 0
  br i1 %cmp1.3.i38.i, label %for.cond.3.i42.i, label %publickey_validation.exit

for.cond.3.i42.i:                                 ; preds = %for.cond.2.i39.i
  %arrayidx.4.i40.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 4
  %114 = load i64, i64* %arrayidx.4.i40.i, align 8, !tbaa !3
  %cmp1.4.i41.i = icmp eq i64 %114, 0
  br i1 %cmp1.4.i41.i, label %for.cond.4.i45.i, label %publickey_validation.exit

for.cond.4.i45.i:                                 ; preds = %for.cond.3.i42.i
  %arrayidx.5.i43.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 5
  %115 = load i64, i64* %arrayidx.5.i43.i, align 8, !tbaa !3
  %cmp1.5.i44.i = icmp eq i64 %115, 0
  br i1 %cmp1.5.i44.i, label %is_felm_zero.exit50.i, label %publickey_validation.exit

is_felm_zero.exit50.i:                            ; preds = %for.cond.4.i45.i
  %arrayidx.6.i46.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 6
  %116 = load i64, i64* %arrayidx.6.i46.i, align 8, !tbaa !3
  %117 = load i64, i64* %48, align 16
  %118 = or i64 %117, %116
  %119 = load i64, i64* %arrayidx2.1.i105.i, align 8
  %120 = or i64 %118, %119
  %121 = load i64, i64* %arrayidx2.2.i106.i, align 16
  %122 = or i64 %120, %121
  %123 = load i64, i64* %arrayidx2.3.i107.i, align 8
  %124 = or i64 %122, %123
  %125 = load i64, i64* %arrayidx2.4.i108.i, align 16
  %126 = or i64 %124, %125
  %127 = load i64, i64* %arrayidx2.5.i109.i, align 8
  %128 = or i64 %126, %127
  %129 = load i64, i64* %arrayidx2.6.i110.i, align 16
  %130 = or i64 %128, %129
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %lor.lhs.false102.i, label %cleanup.critedge307

lor.lhs.false102.i:                               ; preds = %is_felm_zero.exit50.i
  %132 = load i64, i64* %arraydecay2.i116.i, align 8, !tbaa !3
  %cmp1.i.i = icmp eq i64 %132, 0
  br i1 %cmp1.i.i, label %for.cond.i.i, label %is_felm_zero.exit.thread.i

for.cond.i.i:                                     ; preds = %lor.lhs.false102.i
  %arrayidx.1.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 1
  %133 = load i64, i64* %arrayidx.1.i.i, align 8, !tbaa !3
  %cmp1.1.i.i = icmp eq i64 %133, 0
  br i1 %cmp1.1.i.i, label %for.cond.1.i.i, label %is_felm_zero.exit.thread.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %arrayidx.2.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 2
  %134 = load i64, i64* %arrayidx.2.i.i, align 8, !tbaa !3
  %cmp1.2.i.i = icmp eq i64 %134, 0
  br i1 %cmp1.2.i.i, label %for.cond.2.i.i, label %is_felm_zero.exit.thread.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %arrayidx.3.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 3
  %135 = load i64, i64* %arrayidx.3.i.i, align 8, !tbaa !3
  %cmp1.3.i.i = icmp eq i64 %135, 0
  br i1 %cmp1.3.i.i, label %for.cond.3.i.i, label %is_felm_zero.exit.thread.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  %arrayidx.4.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 4
  %136 = load i64, i64* %arrayidx.4.i.i, align 8, !tbaa !3
  %cmp1.4.i.i = icmp eq i64 %136, 0
  br i1 %cmp1.4.i.i, label %for.cond.4.i.i, label %is_felm_zero.exit.thread.i

for.cond.4.i.i:                                   ; preds = %for.cond.3.i.i
  %arrayidx.5.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 5
  %137 = load i64, i64* %arrayidx.5.i.i, align 8, !tbaa !3
  %cmp1.5.i.i = icmp eq i64 %137, 0
  br i1 %cmp1.5.i.i, label %is_felm_zero.exit.i, label %is_felm_zero.exit.thread.i

is_felm_zero.exit.i:                              ; preds = %for.cond.4.i.i
  %arrayidx.6.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 6
  %138 = load i64, i64* %arrayidx.6.i.i, align 8, !tbaa !3
  %cmp1.6.i.i = icmp eq i64 %138, 0
  br i1 %cmp1.6.i.i, label %if.end28.critedge, label %is_felm_zero.exit.thread.i

is_felm_zero.exit.thread.i:                       ; preds = %is_felm_zero.exit.i, %for.cond.4.i.i, %for.cond.3.i.i, %for.cond.2.i.i, %for.cond.1.i.i, %for.cond.i.i, %lor.lhs.false102.i
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %21) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %20) #10
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %19) #10
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %18) #10
  br label %cleanup

publickey_validation.exit:                        ; preds = %if.end69.i, %for.cond.i32.i, %for.cond.1.i36.i, %for.cond.2.i39.i, %for.cond.3.i42.i, %for.cond.4.i45.i
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %21) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %20) #10
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %19) #10
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %18) #10
  br label %cleanup

if.end28.critedge:                                ; preds = %is_felm_zero.exit.i
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %21) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %20) #10
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %19) #10
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %18) #10
  br label %if.end28

if.end28:                                         ; preds = %if.end28.critedge, %entry
  %arraydecay29 = getelementptr inbounds [4 x i64], [4 x i64]* %SecretKeyB, i64 0, i64 0
  %arrayidx.i178 = getelementptr inbounds [4 x i64], [4 x i64]* %SecretKeyB, i64 0, i64 3
  store i64 0, i64* %arrayidx.i178, align 8, !tbaa !3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %9, i8* align 1 %PrivateKeyB, i64 28, i1 false)
  %arraydecay37 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0
  call fastcc void @LADDER3PT([7 x i64]* nonnull %arraydecay, [7 x i64]* nonnull %arraydecay2, [7 x i64]* nonnull %arraydecay5, i64* nonnull %arraydecay29, i32 1, %struct.point_proj* nonnull %arraydecay37, [7 x i64]* nonnull %arraydecay12)
  %arraydecay66 = getelementptr inbounds [3 x [2 x [7 x i64]]], [3 x [2 x [7 x i64]]]* %coeff, i64 0, i64 0
  %arrayidx.4.i.i187 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 0, i64 4
  %arrayidx.1.i9.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 1, i64 1
  %arrayidx.5.i17.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 1, i64 5
  %arrayidx.2.i.i199 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 0, i64 2
  %arrayidx.6.i.i207 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 0, i64 6
  %arrayidx.3.i13.i215 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 1, i64 3
  %139 = bitcast [1 x %struct.point_proj]* %R to <4 x i64>*
  %140 = bitcast i64* %arrayidx.4.i.i187 to <4 x i64>*
  %141 = bitcast i64* %arrayidx.1.i9.i to <4 x i64>*
  %142 = bitcast i64* %arrayidx.5.i17.i to <4 x i64>*
  %143 = bitcast i64* %arrayidx.2.i.i199 to <4 x i64>*
  %144 = bitcast i64* %arrayidx.6.i.i207 to <4 x i64>*
  %145 = bitcast i64* %arrayidx.3.i13.i215 to <4 x i64>*
  %146 = bitcast [1 x %struct.point_proj]* %R to <4 x i64>*
  %147 = bitcast i64* %arrayidx.4.i.i187 to <4 x i64>*
  %148 = bitcast i64* %arrayidx.1.i9.i to <4 x i64>*
  %149 = bitcast i64* %arrayidx.5.i17.i to <4 x i64>*
  %150 = bitcast i64* %arrayidx.2.i.i199 to <4 x i64>*
  %151 = bitcast i64* %arrayidx.6.i.i207 to <4 x i64>*
  %152 = bitcast i64* %arrayidx.3.i13.i215 to <4 x i64>*
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.end, %if.end28
  %ii.0319 = phi i32 [ 0, %if.end28 ], [ %ii.1.lcssa, %for.end ]
  %npts.0318 = phi i32 [ 0, %if.end28 ], [ %sub75, %for.end ]
  %index.0317 = phi i32 [ 0, %if.end28 ], [ %182, %for.end ]
  %row.0316 = phi i32 [ 1, %if.end28 ], [ %inc98, %for.end ]
  %sub = sub nuw nsw i32 137, %row.0316
  %cmp40309 = icmp ult i32 %index.0317, %sub
  br i1 %cmp40309, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %ii.1312 = phi i32 [ %inc56, %while.body ], [ %ii.0319, %while.cond.preheader ]
  %npts.1311 = phi i32 [ %inc, %while.body ], [ %npts.0318, %while.cond.preheader ]
  %index.1310 = phi i32 [ %add, %while.body ], [ %index.0317, %while.cond.preheader ]
  %idxprom = zext i32 %npts.1311 to i64
  %arraydecay2.i180 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 0, i64 0
  %153 = load <4 x i64>, <4 x i64>* %139, align 16, !tbaa !3
  %154 = bitcast i64* %arraydecay2.i180 to <4 x i64>*
  store <4 x i64> %153, <4 x i64>* %154, align 16, !tbaa !3
  %arrayidx2.4.i.i188 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 0, i64 4
  %155 = load <4 x i64>, <4 x i64>* %140, align 16, !tbaa !3
  %156 = bitcast i64* %arrayidx2.4.i.i188 to <4 x i64>*
  store <4 x i64> %155, <4 x i64>* %156, align 16, !tbaa !3
  %arrayidx2.1.i10.i = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 1, i64 1
  %157 = load <4 x i64>, <4 x i64>* %141, align 8, !tbaa !3
  %158 = bitcast i64* %arrayidx2.1.i10.i to <4 x i64>*
  store <4 x i64> %157, <4 x i64>* %158, align 8, !tbaa !3
  %arrayidx2.5.i18.i = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 1, i64 5
  %159 = load <4 x i64>, <4 x i64>* %142, align 8, !tbaa !3
  %160 = bitcast i64* %arrayidx2.5.i18.i to <4 x i64>*
  store <4 x i64> %159, <4 x i64>* %160, align 8, !tbaa !3
  %arrayidx2.2.i.i200 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 0, i64 2
  %161 = load <4 x i64>, <4 x i64>* %143, align 16, !tbaa !3
  %162 = bitcast i64* %arrayidx2.2.i.i200 to <4 x i64>*
  store <4 x i64> %161, <4 x i64>* %162, align 16, !tbaa !3
  %arrayidx2.6.i.i208 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 0, i64 6
  %163 = load <4 x i64>, <4 x i64>* %144, align 16, !tbaa !3
  %164 = bitcast i64* %arrayidx2.6.i.i208 to <4 x i64>*
  store <4 x i64> %163, <4 x i64>* %164, align 16, !tbaa !3
  %arrayidx2.3.i14.i216 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 1, i64 3
  %165 = load <4 x i64>, <4 x i64>* %145, align 8, !tbaa !3
  %166 = bitcast i64* %arrayidx2.3.i14.i216 to <4 x i64>*
  store <4 x i64> %165, <4 x i64>* %166, align 8, !tbaa !3
  %inc = add i32 %npts.1311, 1
  %arrayidx55 = getelementptr inbounds [8 x i32], [8 x i32]* %pts_index, i64 0, i64 %idxprom
  store i32 %index.1310, i32* %arrayidx55, align 4, !tbaa !59
  %inc56 = add i32 %ii.1312, 1
  %idxprom57 = zext i32 %ii.1312 to i64
  %arrayidx58 = getelementptr inbounds [136 x i32], [136 x i32]* @strat_Bob, i64 0, i64 %idxprom57
  %167 = load i32, i32* %arrayidx58, align 4, !tbaa !59
  call void @xTPLe(%struct.point_proj* nonnull %arraydecay37, %struct.point_proj* nonnull %arraydecay37, [7 x i64]* nonnull %arraydecay16, [7 x i64]* nonnull %arraydecay17, i32 %167)
  %add = add i32 %167, %index.1310
  %cmp40 = icmp ult i32 %add, %sub
  br i1 %cmp40, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %npts.1.lcssa = phi i32 [ %npts.0318, %while.cond.preheader ], [ %inc, %while.body ]
  %ii.1.lcssa = phi i32 [ %ii.0319, %while.cond.preheader ], [ %inc56, %while.body ]
  call void @get_3_isog(%struct.point_proj* nonnull %arraydecay37, [7 x i64]* nonnull %arraydecay16, [7 x i64]* nonnull %arraydecay17, [2 x [7 x i64]]* nonnull %arraydecay66)
  %cmp68314 = icmp eq i32 %npts.1.lcssa, 0
  br i1 %cmp68314, label %for.end, label %for.body69.preheader

for.body69.preheader:                             ; preds = %while.end
  %wide.trip.count = zext i32 %npts.1.lcssa to i64
  br label %for.body69

for.body69:                                       ; preds = %for.body69, %for.body69.preheader
  %indvars.iv = phi i64 [ 0, %for.body69.preheader ], [ %indvars.iv.next, %for.body69 ]
  %arraydecay72 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %indvars.iv, i64 0
  call void @eval_3_isog(%struct.point_proj* nonnull %arraydecay72, [2 x [7 x i64]]* nonnull %arraydecay66)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.end, label %for.body69

for.end:                                          ; preds = %for.body69, %while.end
  %sub75 = add i32 %npts.1.lcssa, -1
  %idxprom76 = zext i32 %sub75 to i64
  %arraydecay.i223 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom76, i64 0, i32 0, i64 0, i64 0
  %168 = bitcast i64* %arraydecay.i223 to <4 x i64>*
  %169 = load <4 x i64>, <4 x i64>* %168, align 16, !tbaa !3
  store <4 x i64> %169, <4 x i64>* %146, align 16, !tbaa !3
  %arrayidx.4.i.i231 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom76, i64 0, i32 0, i64 0, i64 4
  %170 = bitcast i64* %arrayidx.4.i.i231 to <4 x i64>*
  %171 = load <4 x i64>, <4 x i64>* %170, align 16, !tbaa !3
  store <4 x i64> %171, <4 x i64>* %147, align 16, !tbaa !3
  %arrayidx.1.i9.i239 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom76, i64 0, i32 0, i64 1, i64 1
  %172 = bitcast i64* %arrayidx.1.i9.i239 to <4 x i64>*
  %173 = load <4 x i64>, <4 x i64>* %172, align 8, !tbaa !3
  store <4 x i64> %173, <4 x i64>* %148, align 8, !tbaa !3
  %arrayidx.5.i17.i247 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom76, i64 0, i32 0, i64 1, i64 5
  %174 = bitcast i64* %arrayidx.5.i17.i247 to <4 x i64>*
  %175 = load <4 x i64>, <4 x i64>* %174, align 8, !tbaa !3
  store <4 x i64> %175, <4 x i64>* %149, align 8, !tbaa !3
  %arrayidx.2.i.i255 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom76, i64 0, i32 1, i64 0, i64 2
  %176 = bitcast i64* %arrayidx.2.i.i255 to <4 x i64>*
  %177 = load <4 x i64>, <4 x i64>* %176, align 16, !tbaa !3
  store <4 x i64> %177, <4 x i64>* %150, align 16, !tbaa !3
  %arrayidx.6.i.i263 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom76, i64 0, i32 1, i64 0, i64 6
  %178 = bitcast i64* %arrayidx.6.i.i263 to <4 x i64>*
  %179 = load <4 x i64>, <4 x i64>* %178, align 16, !tbaa !3
  store <4 x i64> %179, <4 x i64>* %151, align 16, !tbaa !3
  %arrayidx.3.i13.i271 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom76, i64 0, i32 1, i64 1, i64 3
  %180 = bitcast i64* %arrayidx.3.i13.i271 to <4 x i64>*
  %181 = load <4 x i64>, <4 x i64>* %180, align 8, !tbaa !3
  store <4 x i64> %181, <4 x i64>* %152, align 8, !tbaa !3
  %arrayidx95 = getelementptr inbounds [8 x i32], [8 x i32]* %pts_index, i64 0, i64 %idxprom76
  %182 = load i32, i32* %arrayidx95, align 4, !tbaa !59
  %inc98 = add nuw nsw i32 %row.0316, 1
  %exitcond320 = icmp eq i32 %inc98, 137
  br i1 %exitcond320, label %for.end99, label %while.cond.preheader

for.end99:                                        ; preds = %for.end
  call void @get_3_isog(%struct.point_proj* nonnull %arraydecay37, [7 x i64]* nonnull %arraydecay16, [7 x i64]* nonnull %arraydecay17, [2 x [7 x i64]]* nonnull %arraydecay66)
  %arraydecay.i279 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A24plus, i64 0, i64 0, i64 0
  call void @fpadd434(i64* nonnull %arraydecay.i279, i64* nonnull %arrayidx5.i, i64* nonnull %arraydecay.i172) #10
  %arraydecay6.i282 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A24plus, i64 0, i64 1, i64 0
  call void @fpadd434(i64* nonnull %arraydecay6.i282, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay6.i) #10
  call void @fpadd434(i64* nonnull %arraydecay.i172, i64* nonnull %arraydecay.i172, i64* nonnull %arraydecay.i172) #10
  call void @fpadd434(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i) #10
  call void @fpsub434(i64* nonnull %arraydecay.i279, i64* nonnull %arrayidx5.i, i64* nonnull %arraydecay.i279) #10
  call void @fpsub434(i64* nonnull %arraydecay6.i282, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay6.i282) #10
  %arraydecay115 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %jinv, i64 0, i64 0
  call void @j_inv([7 x i64]* nonnull %arraydecay12, [7 x i64]* nonnull %arraydecay17, [7 x i64]* nonnull %arraydecay115)
  %183 = bitcast [2 x [7 x i64]]* %A2.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %183) #10
  %arraydecay.i.i298 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %jinv, i64 0, i64 0, i64 0
  %arraydecay2.i.i299 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A2.i, i64 0, i64 0, i64 0
  %184 = bitcast [7 x i64]* %one.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %184) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %184, i8 0, i64 56, i1 false) #10
  %arrayidx.i.i.i = getelementptr inbounds [7 x i64], [7 x i64]* %one.i.i.i, i64 0, i64 0
  store i64 1, i64* %arrayidx.i.i.i, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay.i.i298, i64* nonnull %arrayidx.i.i.i, i64* nonnull %arraydecay.i.i.i.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay2.i.i299) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %11) #10
  call void @fpcorrection434(i64* nonnull %arraydecay2.i.i299) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %184) #10
  %arraydecay4.i.i301 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %jinv, i64 0, i64 1, i64 0
  %arraydecay6.i.i302 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %A2.i, i64 0, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %184) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %184, i8 0, i64 56, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 112, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay4.i.i301, i64* nonnull %arrayidx.i.i.i, i64* nonnull %arraydecay.i.i.i.i, i32 7) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay6.i.i302) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %11) #10
  call void @fpcorrection434(i64* nonnull %arraydecay6.i.i302) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %184) #10
  %185 = call i64 @llvm.objectsize.i64.p0i8(i8* %SharedSecretB, i1 false, i1 true) #10
  %call.i.i303 = call i8* @__memcpy_chk(i8* %SharedSecretB, i8* nonnull %183, i64 55, i64 %185) #10
  %add.ptr.i304 = getelementptr inbounds i8, i8* %SharedSecretB, i64 55
  %186 = bitcast i64* %arraydecay6.i.i302 to i8*
  %187 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr.i304, i1 false, i1 true) #10
  %call.i5.i = call i8* @__memcpy_chk(i8* nonnull %add.ptr.i304, i8* nonnull %186, i64 55, i64 %187) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %183) #10
  br label %cleanup

cleanup.critedge:                                 ; preds = %is_felm_zero.exit161.i
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %21) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %20) #10
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %19) #10
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %18) #10
  br label %cleanup

cleanup.critedge305:                              ; preds = %is_felm_zero.exit207.i
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %21) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %20) #10
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %19) #10
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %18) #10
  br label %cleanup

cleanup.critedge306:                              ; preds = %if.end.i
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %21) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %20) #10
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %19) #10
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %18) #10
  br label %cleanup

cleanup.critedge307:                              ; preds = %is_felm_zero.exit50.i
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %21) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %20) #10
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %19) #10
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %18) #10
  br label %cleanup

cleanup:                                          ; preds = %publickey_validation.exit, %is_felm_zero.exit.thread.i, %cleanup.critedge307, %cleanup.critedge306, %cleanup.critedge305, %cleanup.critedge, %for.end99
  %retval.0 = phi i32 [ 0, %for.end99 ], [ 1, %publickey_validation.exit ], [ 1, %cleanup.critedge ], [ 1, %cleanup.critedge305 ], [ 1, %cleanup.critedge306 ], [ 1, %cleanup.critedge307 ], [ 1, %is_felm_zero.exit.thread.i ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 336, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 336, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 1792, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind ssp uwtable
define i32 @EphemeralSecretAgreement_B_SIDHp434(i8* %PrivateKeyB, i8* %PublicKeyA, i8* %SharedSecretB) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @EphemeralSecretAgreement_B_extended(i8* %PrivateKeyB, i8* %PublicKeyA, i8* %SharedSecretB, i32 0)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @crypto_kem_keypair_SIKEp434(i8* %pk, i8* %sk) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @randombytes(i8* %sk, i64 16) #10
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %sk, i64 16
  %call.i = tail call i32 @randombytes(i8* nonnull %add.ptr, i64 28) #10
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx.i = getelementptr inbounds i8, i8* %sk, i64 43
  %0 = load i8, i8* %arrayidx.i, align 1, !tbaa !7
  %1 = and i8 %0, 1
  store i8 %1, i8* %arrayidx.i, align 1, !tbaa !7
  %call4 = tail call i32 @EphemeralKeyGeneration_B_SIDHp434(i8* nonnull %add.ptr, i8* %pk)
  %arrayidx = getelementptr inbounds i8, i8* %sk, i64 44
  %2 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %arrayidx, i1 false, i1 true)
  %call6 = tail call i8* @__memcpy_chk(i8* nonnull %arrayidx, i8* %pk, i64 330, i64 %2) #10
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
define i32 @crypto_kem_enc_SIKEp434(i8* %ct, i8* %ss, i8* %pk) local_unnamed_addr #4 {
entry:
  %ephemeralsk = alloca [27 x i8], align 16
  %jinvariant = alloca [110 x i8], align 16
  %h = alloca <16 x i8>, align 16
  %temp = alloca [362 x i8], align 16
  %0 = getelementptr inbounds [27 x i8], [27 x i8]* %ephemeralsk, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 27, i8* nonnull %0) #10
  %1 = getelementptr inbounds [110 x i8], [110 x i8]* %jinvariant, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 110, i8* nonnull %1) #10
  %2 = getelementptr inbounds <16 x i8>, <16 x i8>* %h, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #10
  %3 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 362, i8* nonnull %3) #10
  %call = call i32 @randombytes(i8* nonnull %3, i64 16) #10
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %arrayidx, i8* align 1 %pk, i64 330, i1 false)
  call void @shake256(i8* nonnull %0, i64 27, i8* nonnull %3, i64 346) #10
  %call6 = call i32 @EphemeralKeyGeneration_A_SIDHp434(i8* nonnull %0, i8* %ct)
  %call9 = call i32 @EphemeralSecretAgreement_A_SIDHp434(i8* nonnull %0, i8* %pk, i8* nonnull %1)
  call void @shake256(i8* nonnull %2, i64 16, i8* nonnull %1, i64 110) #10
  %arrayidx21 = getelementptr inbounds i8, i8* %ct, i64 330
  %4 = bitcast [362 x i8]* %temp to <16 x i8>*
  %5 = load <16 x i8>, <16 x i8>* %4, align 16, !tbaa !7
  %6 = load <16 x i8>, <16 x i8>* %h, align 16, !tbaa !7
  %7 = xor <16 x i8> %6, %5
  %8 = bitcast i8* %arrayidx21 to <16 x i8>*
  store <16 x i8> %7, <16 x i8>* %8, align 1, !tbaa !7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %arrayidx, i8* align 1 %ct, i64 346, i1 false)
  call void @shake256(i8* %ss, i64 16, i8* nonnull %3, i64 362) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 362, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 110, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 27, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

declare void @shake256(i8*, i64, i8*, i64) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define i32 @crypto_kem_dec_SIKEp434(i8* %ss, i8* %ct, i8* %sk) local_unnamed_addr #4 {
entry:
  %ephemeralsk_ = alloca [27 x i8], align 16
  %jinvariant_ = alloca [110 x i8], align 16
  %h_ = alloca <16 x i8>, align 16
  %c0_ = alloca [330 x i8], align 16
  %temp = alloca [362 x i8], align 16
  %0 = getelementptr inbounds [27 x i8], [27 x i8]* %ephemeralsk_, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 27, i8* nonnull %0) #10
  %1 = getelementptr inbounds [110 x i8], [110 x i8]* %jinvariant_, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 110, i8* nonnull %1) #10
  %2 = getelementptr inbounds <16 x i8>, <16 x i8>* %h_, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #10
  %3 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 330, i8* nonnull %3) #10
  %4 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 362, i8* nonnull %4) #10
  %add.ptr = getelementptr inbounds i8, i8* %sk, i64 16
  %call = call i32 @EphemeralSecretAgreement_B_extended(i8* nonnull %add.ptr, i8* %ct, i8* nonnull %1, i32 1)
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %entry.Hashing_crit_edge

entry.Hashing_crit_edge:                          ; preds = %entry
  %.pre = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 1
  %.pre43 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 2
  %.pre44 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 3
  %.pre45 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 4
  %.pre46 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 5
  %.pre47 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 6
  %.pre48 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 7
  %.pre49 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 8
  %.pre50 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 9
  %.pre51 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 10
  %.pre52 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 11
  %.pre53 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 12
  %.pre54 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 13
  %.pre55 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 14
  %.pre56 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 15
  %.pre57 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 16
  br label %Hashing

if.end:                                           ; preds = %entry
  call void @shake256(i8* nonnull %2, i64 16, i8* nonnull %1, i64 110) #10
  %arrayidx = getelementptr inbounds i8, i8* %ct, i64 330
  %arrayidx9.1 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 1
  %arrayidx9.2 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 2
  %arrayidx9.3 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 3
  %arrayidx9.4 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 4
  %arrayidx9.5 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 5
  %arrayidx9.6 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 6
  %arrayidx9.7 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 7
  %arrayidx9.8 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 8
  %arrayidx9.9 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 9
  %arrayidx9.10 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 10
  %arrayidx9.11 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 11
  %arrayidx9.12 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 12
  %arrayidx9.13 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 13
  %arrayidx9.14 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 14
  %5 = bitcast i8* %arrayidx to <16 x i8>*
  %6 = load <16 x i8>, <16 x i8>* %5, align 1, !tbaa !7
  %7 = load <16 x i8>, <16 x i8>* %h_, align 16, !tbaa !7
  %8 = xor <16 x i8> %7, %6
  %arrayidx9.15 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 15
  %9 = bitcast [362 x i8]* %temp to <16 x i8>*
  store <16 x i8> %8, <16 x i8>* %9, align 16, !tbaa !7
  %arrayidx10 = getelementptr inbounds [362 x i8], [362 x i8]* %temp, i64 0, i64 16
  %arrayidx11 = getelementptr inbounds i8, i8* %sk, i64 44
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %arrayidx10, i8* nonnull align 1 %arrayidx11, i64 330, i1 false)
  call void @shake256(i8* nonnull %0, i64 27, i8* nonnull %4, i64 346) #10
  %call19 = call i32 @EphemeralKeyGeneration_A_SIDHp434(i8* nonnull %0, i8* nonnull %3)
  %10 = bitcast [330 x i8]* %c0_ to <8 x i8>*
  %wide.load = load <8 x i8>, <8 x i8>* %10, align 16, !tbaa !7
  %11 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 8
  %12 = bitcast i8* %11 to <8 x i8>*
  %wide.load64 = load <8 x i8>, <8 x i8>* %12, align 8, !tbaa !7
  %13 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 16
  %14 = bitcast i8* %13 to <8 x i8>*
  %wide.load65 = load <8 x i8>, <8 x i8>* %14, align 16, !tbaa !7
  %15 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 24
  %16 = bitcast i8* %15 to <8 x i8>*
  %wide.load66 = load <8 x i8>, <8 x i8>* %16, align 8, !tbaa !7
  %17 = bitcast i8* %ct to <8 x i8>*
  %wide.load67 = load <8 x i8>, <8 x i8>* %17, align 1, !tbaa !7
  %18 = getelementptr inbounds i8, i8* %ct, i64 8
  %19 = bitcast i8* %18 to <8 x i8>*
  %wide.load68 = load <8 x i8>, <8 x i8>* %19, align 1, !tbaa !7
  %20 = getelementptr inbounds i8, i8* %ct, i64 16
  %21 = bitcast i8* %20 to <8 x i8>*
  %wide.load69 = load <8 x i8>, <8 x i8>* %21, align 1, !tbaa !7
  %22 = getelementptr inbounds i8, i8* %ct, i64 24
  %23 = bitcast i8* %22 to <8 x i8>*
  %wide.load70 = load <8 x i8>, <8 x i8>* %23, align 1, !tbaa !7
  %24 = xor <8 x i8> %wide.load67, %wide.load
  %25 = xor <8 x i8> %wide.load68, %wide.load64
  %26 = xor <8 x i8> %wide.load69, %wide.load65
  %27 = xor <8 x i8> %wide.load70, %wide.load66
  %28 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 32
  %29 = bitcast i8* %28 to <8 x i8>*
  %wide.load.1 = load <8 x i8>, <8 x i8>* %29, align 16, !tbaa !7
  %30 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 40
  %31 = bitcast i8* %30 to <8 x i8>*
  %wide.load64.1 = load <8 x i8>, <8 x i8>* %31, align 8, !tbaa !7
  %32 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 48
  %33 = bitcast i8* %32 to <8 x i8>*
  %wide.load65.1 = load <8 x i8>, <8 x i8>* %33, align 16, !tbaa !7
  %34 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 56
  %35 = bitcast i8* %34 to <8 x i8>*
  %wide.load66.1 = load <8 x i8>, <8 x i8>* %35, align 8, !tbaa !7
  %36 = getelementptr inbounds i8, i8* %ct, i64 32
  %37 = bitcast i8* %36 to <8 x i8>*
  %wide.load67.1 = load <8 x i8>, <8 x i8>* %37, align 1, !tbaa !7
  %38 = getelementptr inbounds i8, i8* %ct, i64 40
  %39 = bitcast i8* %38 to <8 x i8>*
  %wide.load68.1 = load <8 x i8>, <8 x i8>* %39, align 1, !tbaa !7
  %40 = getelementptr inbounds i8, i8* %ct, i64 48
  %41 = bitcast i8* %40 to <8 x i8>*
  %wide.load69.1 = load <8 x i8>, <8 x i8>* %41, align 1, !tbaa !7
  %42 = getelementptr inbounds i8, i8* %ct, i64 56
  %43 = bitcast i8* %42 to <8 x i8>*
  %wide.load70.1 = load <8 x i8>, <8 x i8>* %43, align 1, !tbaa !7
  %44 = xor <8 x i8> %wide.load67.1, %wide.load.1
  %45 = xor <8 x i8> %wide.load68.1, %wide.load64.1
  %46 = xor <8 x i8> %wide.load69.1, %wide.load65.1
  %47 = xor <8 x i8> %wide.load70.1, %wide.load66.1
  %48 = or <8 x i8> %24, %44
  %49 = or <8 x i8> %25, %45
  %50 = or <8 x i8> %26, %46
  %51 = or <8 x i8> %27, %47
  %52 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 64
  %53 = bitcast i8* %52 to <8 x i8>*
  %wide.load.2 = load <8 x i8>, <8 x i8>* %53, align 16, !tbaa !7
  %54 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 72
  %55 = bitcast i8* %54 to <8 x i8>*
  %wide.load64.2 = load <8 x i8>, <8 x i8>* %55, align 8, !tbaa !7
  %56 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 80
  %57 = bitcast i8* %56 to <8 x i8>*
  %wide.load65.2 = load <8 x i8>, <8 x i8>* %57, align 16, !tbaa !7
  %58 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 88
  %59 = bitcast i8* %58 to <8 x i8>*
  %wide.load66.2 = load <8 x i8>, <8 x i8>* %59, align 8, !tbaa !7
  %60 = getelementptr inbounds i8, i8* %ct, i64 64
  %61 = bitcast i8* %60 to <8 x i8>*
  %wide.load67.2 = load <8 x i8>, <8 x i8>* %61, align 1, !tbaa !7
  %62 = getelementptr inbounds i8, i8* %ct, i64 72
  %63 = bitcast i8* %62 to <8 x i8>*
  %wide.load68.2 = load <8 x i8>, <8 x i8>* %63, align 1, !tbaa !7
  %64 = getelementptr inbounds i8, i8* %ct, i64 80
  %65 = bitcast i8* %64 to <8 x i8>*
  %wide.load69.2 = load <8 x i8>, <8 x i8>* %65, align 1, !tbaa !7
  %66 = getelementptr inbounds i8, i8* %ct, i64 88
  %67 = bitcast i8* %66 to <8 x i8>*
  %wide.load70.2 = load <8 x i8>, <8 x i8>* %67, align 1, !tbaa !7
  %68 = xor <8 x i8> %wide.load67.2, %wide.load.2
  %69 = xor <8 x i8> %wide.load68.2, %wide.load64.2
  %70 = xor <8 x i8> %wide.load69.2, %wide.load65.2
  %71 = xor <8 x i8> %wide.load70.2, %wide.load66.2
  %72 = or <8 x i8> %48, %68
  %73 = or <8 x i8> %49, %69
  %74 = or <8 x i8> %50, %70
  %75 = or <8 x i8> %51, %71
  %76 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 96
  %77 = bitcast i8* %76 to <8 x i8>*
  %wide.load.3 = load <8 x i8>, <8 x i8>* %77, align 16, !tbaa !7
  %78 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 104
  %79 = bitcast i8* %78 to <8 x i8>*
  %wide.load64.3 = load <8 x i8>, <8 x i8>* %79, align 8, !tbaa !7
  %80 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 112
  %81 = bitcast i8* %80 to <8 x i8>*
  %wide.load65.3 = load <8 x i8>, <8 x i8>* %81, align 16, !tbaa !7
  %82 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 120
  %83 = bitcast i8* %82 to <8 x i8>*
  %wide.load66.3 = load <8 x i8>, <8 x i8>* %83, align 8, !tbaa !7
  %84 = getelementptr inbounds i8, i8* %ct, i64 96
  %85 = bitcast i8* %84 to <8 x i8>*
  %wide.load67.3 = load <8 x i8>, <8 x i8>* %85, align 1, !tbaa !7
  %86 = getelementptr inbounds i8, i8* %ct, i64 104
  %87 = bitcast i8* %86 to <8 x i8>*
  %wide.load68.3 = load <8 x i8>, <8 x i8>* %87, align 1, !tbaa !7
  %88 = getelementptr inbounds i8, i8* %ct, i64 112
  %89 = bitcast i8* %88 to <8 x i8>*
  %wide.load69.3 = load <8 x i8>, <8 x i8>* %89, align 1, !tbaa !7
  %90 = getelementptr inbounds i8, i8* %ct, i64 120
  %91 = bitcast i8* %90 to <8 x i8>*
  %wide.load70.3 = load <8 x i8>, <8 x i8>* %91, align 1, !tbaa !7
  %92 = xor <8 x i8> %wide.load67.3, %wide.load.3
  %93 = xor <8 x i8> %wide.load68.3, %wide.load64.3
  %94 = xor <8 x i8> %wide.load69.3, %wide.load65.3
  %95 = xor <8 x i8> %wide.load70.3, %wide.load66.3
  %96 = or <8 x i8> %72, %92
  %97 = or <8 x i8> %73, %93
  %98 = or <8 x i8> %74, %94
  %99 = or <8 x i8> %75, %95
  %100 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 128
  %101 = bitcast i8* %100 to <8 x i8>*
  %wide.load.4 = load <8 x i8>, <8 x i8>* %101, align 16, !tbaa !7
  %102 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 136
  %103 = bitcast i8* %102 to <8 x i8>*
  %wide.load64.4 = load <8 x i8>, <8 x i8>* %103, align 8, !tbaa !7
  %104 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 144
  %105 = bitcast i8* %104 to <8 x i8>*
  %wide.load65.4 = load <8 x i8>, <8 x i8>* %105, align 16, !tbaa !7
  %106 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 152
  %107 = bitcast i8* %106 to <8 x i8>*
  %wide.load66.4 = load <8 x i8>, <8 x i8>* %107, align 8, !tbaa !7
  %108 = getelementptr inbounds i8, i8* %ct, i64 128
  %109 = bitcast i8* %108 to <8 x i8>*
  %wide.load67.4 = load <8 x i8>, <8 x i8>* %109, align 1, !tbaa !7
  %110 = getelementptr inbounds i8, i8* %ct, i64 136
  %111 = bitcast i8* %110 to <8 x i8>*
  %wide.load68.4 = load <8 x i8>, <8 x i8>* %111, align 1, !tbaa !7
  %112 = getelementptr inbounds i8, i8* %ct, i64 144
  %113 = bitcast i8* %112 to <8 x i8>*
  %wide.load69.4 = load <8 x i8>, <8 x i8>* %113, align 1, !tbaa !7
  %114 = getelementptr inbounds i8, i8* %ct, i64 152
  %115 = bitcast i8* %114 to <8 x i8>*
  %wide.load70.4 = load <8 x i8>, <8 x i8>* %115, align 1, !tbaa !7
  %116 = xor <8 x i8> %wide.load67.4, %wide.load.4
  %117 = xor <8 x i8> %wide.load68.4, %wide.load64.4
  %118 = xor <8 x i8> %wide.load69.4, %wide.load65.4
  %119 = xor <8 x i8> %wide.load70.4, %wide.load66.4
  %120 = or <8 x i8> %96, %116
  %121 = or <8 x i8> %97, %117
  %122 = or <8 x i8> %98, %118
  %123 = or <8 x i8> %99, %119
  %124 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 160
  %125 = bitcast i8* %124 to <8 x i8>*
  %wide.load.5 = load <8 x i8>, <8 x i8>* %125, align 16, !tbaa !7
  %126 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 168
  %127 = bitcast i8* %126 to <8 x i8>*
  %wide.load64.5 = load <8 x i8>, <8 x i8>* %127, align 8, !tbaa !7
  %128 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 176
  %129 = bitcast i8* %128 to <8 x i8>*
  %wide.load65.5 = load <8 x i8>, <8 x i8>* %129, align 16, !tbaa !7
  %130 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 184
  %131 = bitcast i8* %130 to <8 x i8>*
  %wide.load66.5 = load <8 x i8>, <8 x i8>* %131, align 8, !tbaa !7
  %132 = getelementptr inbounds i8, i8* %ct, i64 160
  %133 = bitcast i8* %132 to <8 x i8>*
  %wide.load67.5 = load <8 x i8>, <8 x i8>* %133, align 1, !tbaa !7
  %134 = getelementptr inbounds i8, i8* %ct, i64 168
  %135 = bitcast i8* %134 to <8 x i8>*
  %wide.load68.5 = load <8 x i8>, <8 x i8>* %135, align 1, !tbaa !7
  %136 = getelementptr inbounds i8, i8* %ct, i64 176
  %137 = bitcast i8* %136 to <8 x i8>*
  %wide.load69.5 = load <8 x i8>, <8 x i8>* %137, align 1, !tbaa !7
  %138 = getelementptr inbounds i8, i8* %ct, i64 184
  %139 = bitcast i8* %138 to <8 x i8>*
  %wide.load70.5 = load <8 x i8>, <8 x i8>* %139, align 1, !tbaa !7
  %140 = xor <8 x i8> %wide.load67.5, %wide.load.5
  %141 = xor <8 x i8> %wide.load68.5, %wide.load64.5
  %142 = xor <8 x i8> %wide.load69.5, %wide.load65.5
  %143 = xor <8 x i8> %wide.load70.5, %wide.load66.5
  %144 = or <8 x i8> %120, %140
  %145 = or <8 x i8> %121, %141
  %146 = or <8 x i8> %122, %142
  %147 = or <8 x i8> %123, %143
  %148 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 192
  %149 = bitcast i8* %148 to <8 x i8>*
  %wide.load.6 = load <8 x i8>, <8 x i8>* %149, align 16, !tbaa !7
  %150 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 200
  %151 = bitcast i8* %150 to <8 x i8>*
  %wide.load64.6 = load <8 x i8>, <8 x i8>* %151, align 8, !tbaa !7
  %152 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 208
  %153 = bitcast i8* %152 to <8 x i8>*
  %wide.load65.6 = load <8 x i8>, <8 x i8>* %153, align 16, !tbaa !7
  %154 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 216
  %155 = bitcast i8* %154 to <8 x i8>*
  %wide.load66.6 = load <8 x i8>, <8 x i8>* %155, align 8, !tbaa !7
  %156 = getelementptr inbounds i8, i8* %ct, i64 192
  %157 = bitcast i8* %156 to <8 x i8>*
  %wide.load67.6 = load <8 x i8>, <8 x i8>* %157, align 1, !tbaa !7
  %158 = getelementptr inbounds i8, i8* %ct, i64 200
  %159 = bitcast i8* %158 to <8 x i8>*
  %wide.load68.6 = load <8 x i8>, <8 x i8>* %159, align 1, !tbaa !7
  %160 = getelementptr inbounds i8, i8* %ct, i64 208
  %161 = bitcast i8* %160 to <8 x i8>*
  %wide.load69.6 = load <8 x i8>, <8 x i8>* %161, align 1, !tbaa !7
  %162 = getelementptr inbounds i8, i8* %ct, i64 216
  %163 = bitcast i8* %162 to <8 x i8>*
  %wide.load70.6 = load <8 x i8>, <8 x i8>* %163, align 1, !tbaa !7
  %164 = xor <8 x i8> %wide.load67.6, %wide.load.6
  %165 = xor <8 x i8> %wide.load68.6, %wide.load64.6
  %166 = xor <8 x i8> %wide.load69.6, %wide.load65.6
  %167 = xor <8 x i8> %wide.load70.6, %wide.load66.6
  %168 = or <8 x i8> %144, %164
  %169 = or <8 x i8> %145, %165
  %170 = or <8 x i8> %146, %166
  %171 = or <8 x i8> %147, %167
  %172 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 224
  %173 = bitcast i8* %172 to <8 x i8>*
  %wide.load.7 = load <8 x i8>, <8 x i8>* %173, align 16, !tbaa !7
  %174 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 232
  %175 = bitcast i8* %174 to <8 x i8>*
  %wide.load64.7 = load <8 x i8>, <8 x i8>* %175, align 8, !tbaa !7
  %176 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 240
  %177 = bitcast i8* %176 to <8 x i8>*
  %wide.load65.7 = load <8 x i8>, <8 x i8>* %177, align 16, !tbaa !7
  %178 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 248
  %179 = bitcast i8* %178 to <8 x i8>*
  %wide.load66.7 = load <8 x i8>, <8 x i8>* %179, align 8, !tbaa !7
  %180 = getelementptr inbounds i8, i8* %ct, i64 224
  %181 = bitcast i8* %180 to <8 x i8>*
  %wide.load67.7 = load <8 x i8>, <8 x i8>* %181, align 1, !tbaa !7
  %182 = getelementptr inbounds i8, i8* %ct, i64 232
  %183 = bitcast i8* %182 to <8 x i8>*
  %wide.load68.7 = load <8 x i8>, <8 x i8>* %183, align 1, !tbaa !7
  %184 = getelementptr inbounds i8, i8* %ct, i64 240
  %185 = bitcast i8* %184 to <8 x i8>*
  %wide.load69.7 = load <8 x i8>, <8 x i8>* %185, align 1, !tbaa !7
  %186 = getelementptr inbounds i8, i8* %ct, i64 248
  %187 = bitcast i8* %186 to <8 x i8>*
  %wide.load70.7 = load <8 x i8>, <8 x i8>* %187, align 1, !tbaa !7
  %188 = xor <8 x i8> %wide.load67.7, %wide.load.7
  %189 = xor <8 x i8> %wide.load68.7, %wide.load64.7
  %190 = xor <8 x i8> %wide.load69.7, %wide.load65.7
  %191 = xor <8 x i8> %wide.load70.7, %wide.load66.7
  %192 = or <8 x i8> %168, %188
  %193 = or <8 x i8> %169, %189
  %194 = or <8 x i8> %170, %190
  %195 = or <8 x i8> %171, %191
  %196 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 256
  %197 = bitcast i8* %196 to <8 x i8>*
  %wide.load.8 = load <8 x i8>, <8 x i8>* %197, align 16, !tbaa !7
  %198 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 264
  %199 = bitcast i8* %198 to <8 x i8>*
  %wide.load64.8 = load <8 x i8>, <8 x i8>* %199, align 8, !tbaa !7
  %200 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 272
  %201 = bitcast i8* %200 to <8 x i8>*
  %wide.load65.8 = load <8 x i8>, <8 x i8>* %201, align 16, !tbaa !7
  %202 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 280
  %203 = bitcast i8* %202 to <8 x i8>*
  %wide.load66.8 = load <8 x i8>, <8 x i8>* %203, align 8, !tbaa !7
  %204 = getelementptr inbounds i8, i8* %ct, i64 256
  %205 = bitcast i8* %204 to <8 x i8>*
  %wide.load67.8 = load <8 x i8>, <8 x i8>* %205, align 1, !tbaa !7
  %206 = getelementptr inbounds i8, i8* %ct, i64 264
  %207 = bitcast i8* %206 to <8 x i8>*
  %wide.load68.8 = load <8 x i8>, <8 x i8>* %207, align 1, !tbaa !7
  %208 = getelementptr inbounds i8, i8* %ct, i64 272
  %209 = bitcast i8* %208 to <8 x i8>*
  %wide.load69.8 = load <8 x i8>, <8 x i8>* %209, align 1, !tbaa !7
  %210 = getelementptr inbounds i8, i8* %ct, i64 280
  %211 = bitcast i8* %210 to <8 x i8>*
  %wide.load70.8 = load <8 x i8>, <8 x i8>* %211, align 1, !tbaa !7
  %212 = xor <8 x i8> %wide.load67.8, %wide.load.8
  %213 = xor <8 x i8> %wide.load68.8, %wide.load64.8
  %214 = xor <8 x i8> %wide.load69.8, %wide.load65.8
  %215 = xor <8 x i8> %wide.load70.8, %wide.load66.8
  %216 = or <8 x i8> %192, %212
  %217 = or <8 x i8> %193, %213
  %218 = or <8 x i8> %194, %214
  %219 = or <8 x i8> %195, %215
  %220 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 288
  %221 = bitcast i8* %220 to <8 x i8>*
  %wide.load.9 = load <8 x i8>, <8 x i8>* %221, align 16, !tbaa !7
  %222 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 296
  %223 = bitcast i8* %222 to <8 x i8>*
  %wide.load64.9 = load <8 x i8>, <8 x i8>* %223, align 8, !tbaa !7
  %224 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 304
  %225 = bitcast i8* %224 to <8 x i8>*
  %wide.load65.9 = load <8 x i8>, <8 x i8>* %225, align 16, !tbaa !7
  %226 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 312
  %227 = bitcast i8* %226 to <8 x i8>*
  %wide.load66.9 = load <8 x i8>, <8 x i8>* %227, align 8, !tbaa !7
  %228 = getelementptr inbounds i8, i8* %ct, i64 288
  %229 = bitcast i8* %228 to <8 x i8>*
  %wide.load67.9 = load <8 x i8>, <8 x i8>* %229, align 1, !tbaa !7
  %230 = getelementptr inbounds i8, i8* %ct, i64 296
  %231 = bitcast i8* %230 to <8 x i8>*
  %wide.load68.9 = load <8 x i8>, <8 x i8>* %231, align 1, !tbaa !7
  %232 = getelementptr inbounds i8, i8* %ct, i64 304
  %233 = bitcast i8* %232 to <8 x i8>*
  %wide.load69.9 = load <8 x i8>, <8 x i8>* %233, align 1, !tbaa !7
  %234 = getelementptr inbounds i8, i8* %ct, i64 312
  %235 = bitcast i8* %234 to <8 x i8>*
  %wide.load70.9 = load <8 x i8>, <8 x i8>* %235, align 1, !tbaa !7
  %236 = xor <8 x i8> %wide.load67.9, %wide.load.9
  %237 = xor <8 x i8> %wide.load68.9, %wide.load64.9
  %238 = xor <8 x i8> %wide.load69.9, %wide.load65.9
  %239 = xor <8 x i8> %wide.load70.9, %wide.load66.9
  %240 = or <8 x i8> %216, %236
  %241 = or <8 x i8> %217, %237
  %242 = or <8 x i8> %218, %238
  %243 = or <8 x i8> %219, %239
  %bin.rdx81 = or <8 x i8> %241, %240
  %bin.rdx7182 = or <8 x i8> %242, %bin.rdx81
  %bin.rdx7283 = or <8 x i8> %243, %bin.rdx7182
  %bin.rdx72 = zext <8 x i8> %bin.rdx7283 to <8 x i32>
  %rdx.shuf = shufflevector <8 x i32> %bin.rdx72, <8 x i32> undef, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx73 = or <8 x i32> %rdx.shuf, %bin.rdx72
  %rdx.shuf74 = shufflevector <8 x i32> %bin.rdx73, <8 x i32> undef, <8 x i32> <i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx75 = or <8 x i32> %bin.rdx73, %rdx.shuf74
  %rdx.shuf76 = shufflevector <8 x i32> %bin.rdx75, <8 x i32> undef, <8 x i32> <i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx77 = or <8 x i32> %bin.rdx75, %rdx.shuf76
  %244 = extractelement <8 x i32> %bin.rdx77, i32 0
  %arrayidx.i = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 320
  %245 = load i8, i8* %arrayidx.i, align 16, !tbaa !7
  %arrayidx2.i = getelementptr inbounds i8, i8* %ct, i64 320
  %246 = load i8, i8* %arrayidx2.i, align 1, !tbaa !7
  %xor13.i = xor i8 %246, %245
  %xor.i = zext i8 %xor13.i to i32
  %or.i = or i32 %244, %xor.i
  %arrayidx.i.1 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 321
  %247 = load i8, i8* %arrayidx.i.1, align 1, !tbaa !7
  %arrayidx2.i.1 = getelementptr inbounds i8, i8* %ct, i64 321
  %248 = load i8, i8* %arrayidx2.i.1, align 1, !tbaa !7
  %xor13.i.1 = xor i8 %248, %247
  %xor.i.1 = zext i8 %xor13.i.1 to i32
  %or.i.1 = or i32 %or.i, %xor.i.1
  %arrayidx.i.2 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 322
  %249 = load i8, i8* %arrayidx.i.2, align 2, !tbaa !7
  %arrayidx2.i.2 = getelementptr inbounds i8, i8* %ct, i64 322
  %250 = load i8, i8* %arrayidx2.i.2, align 1, !tbaa !7
  %xor13.i.2 = xor i8 %250, %249
  %xor.i.2 = zext i8 %xor13.i.2 to i32
  %or.i.2 = or i32 %or.i.1, %xor.i.2
  %arrayidx.i.3 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 323
  %251 = load i8, i8* %arrayidx.i.3, align 1, !tbaa !7
  %arrayidx2.i.3 = getelementptr inbounds i8, i8* %ct, i64 323
  %252 = load i8, i8* %arrayidx2.i.3, align 1, !tbaa !7
  %xor13.i.3 = xor i8 %252, %251
  %xor.i.3 = zext i8 %xor13.i.3 to i32
  %or.i.3 = or i32 %or.i.2, %xor.i.3
  %arrayidx.i.4 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 324
  %253 = load i8, i8* %arrayidx.i.4, align 4, !tbaa !7
  %arrayidx2.i.4 = getelementptr inbounds i8, i8* %ct, i64 324
  %254 = load i8, i8* %arrayidx2.i.4, align 1, !tbaa !7
  %xor13.i.4 = xor i8 %254, %253
  %xor.i.4 = zext i8 %xor13.i.4 to i32
  %or.i.4 = or i32 %or.i.3, %xor.i.4
  %arrayidx.i.5 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 325
  %255 = load i8, i8* %arrayidx.i.5, align 1, !tbaa !7
  %arrayidx2.i.5 = getelementptr inbounds i8, i8* %ct, i64 325
  %256 = load i8, i8* %arrayidx2.i.5, align 1, !tbaa !7
  %xor13.i.5 = xor i8 %256, %255
  %xor.i.5 = zext i8 %xor13.i.5 to i32
  %or.i.5 = or i32 %or.i.4, %xor.i.5
  %arrayidx.i.6 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 326
  %257 = load i8, i8* %arrayidx.i.6, align 2, !tbaa !7
  %arrayidx2.i.6 = getelementptr inbounds i8, i8* %ct, i64 326
  %258 = load i8, i8* %arrayidx2.i.6, align 1, !tbaa !7
  %xor13.i.6 = xor i8 %258, %257
  %xor.i.6 = zext i8 %xor13.i.6 to i32
  %or.i.6 = or i32 %or.i.5, %xor.i.6
  %arrayidx.i.7 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 327
  %259 = load i8, i8* %arrayidx.i.7, align 1, !tbaa !7
  %arrayidx2.i.7 = getelementptr inbounds i8, i8* %ct, i64 327
  %260 = load i8, i8* %arrayidx2.i.7, align 1, !tbaa !7
  %xor13.i.7 = xor i8 %260, %259
  %xor.i.7 = zext i8 %xor13.i.7 to i32
  %or.i.7 = or i32 %or.i.6, %xor.i.7
  %arrayidx.i.8 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 328
  %261 = load i8, i8* %arrayidx.i.8, align 8, !tbaa !7
  %arrayidx2.i.8 = getelementptr inbounds i8, i8* %ct, i64 328
  %262 = load i8, i8* %arrayidx2.i.8, align 1, !tbaa !7
  %xor13.i.8 = xor i8 %262, %261
  %xor.i.8 = zext i8 %xor13.i.8 to i32
  %or.i.8 = or i32 %or.i.7, %xor.i.8
  %arrayidx.i.9 = getelementptr inbounds [330 x i8], [330 x i8]* %c0_, i64 0, i64 329
  %263 = load i8, i8* %arrayidx.i.9, align 1, !tbaa !7
  %arrayidx2.i.9 = getelementptr inbounds i8, i8* %ct, i64 329
  %264 = load i8, i8* %arrayidx2.i.9, align 1, !tbaa !7
  %xor13.i.9 = xor i8 %264, %263
  %xor.i.9 = zext i8 %xor13.i.9 to i32
  %or.i.9 = or i32 %or.i.8, %xor.i.9
  %phitmp.i = sub i32 0, %or.i.9
  %phitmp17.i = ashr i32 %phitmp.i, 31
  %phitmp18.i = trunc i32 %phitmp17.i to i8
  br label %Hashing

Hashing:                                          ; preds = %entry.Hashing_crit_edge, %if.end
  %arrayidx23.pre-phi = phi i8* [ %.pre57, %entry.Hashing_crit_edge ], [ %arrayidx10, %if.end ]
  %arrayidx3.i.15.pre-phi = phi i8* [ %.pre56, %entry.Hashing_crit_edge ], [ %arrayidx9.15, %if.end ]
  %arrayidx3.i.14.pre-phi = phi i8* [ %.pre55, %entry.Hashing_crit_edge ], [ %arrayidx9.14, %if.end ]
  %arrayidx3.i.13.pre-phi = phi i8* [ %.pre54, %entry.Hashing_crit_edge ], [ %arrayidx9.13, %if.end ]
  %arrayidx3.i.12.pre-phi = phi i8* [ %.pre53, %entry.Hashing_crit_edge ], [ %arrayidx9.12, %if.end ]
  %arrayidx3.i.11.pre-phi = phi i8* [ %.pre52, %entry.Hashing_crit_edge ], [ %arrayidx9.11, %if.end ]
  %arrayidx3.i.10.pre-phi = phi i8* [ %.pre51, %entry.Hashing_crit_edge ], [ %arrayidx9.10, %if.end ]
  %arrayidx3.i.9.pre-phi = phi i8* [ %.pre50, %entry.Hashing_crit_edge ], [ %arrayidx9.9, %if.end ]
  %arrayidx3.i.8.pre-phi = phi i8* [ %.pre49, %entry.Hashing_crit_edge ], [ %arrayidx9.8, %if.end ]
  %arrayidx3.i.7.pre-phi = phi i8* [ %.pre48, %entry.Hashing_crit_edge ], [ %arrayidx9.7, %if.end ]
  %arrayidx3.i.6.pre-phi = phi i8* [ %.pre47, %entry.Hashing_crit_edge ], [ %arrayidx9.6, %if.end ]
  %arrayidx3.i.5.pre-phi = phi i8* [ %.pre46, %entry.Hashing_crit_edge ], [ %arrayidx9.5, %if.end ]
  %arrayidx3.i.4.pre-phi = phi i8* [ %.pre45, %entry.Hashing_crit_edge ], [ %arrayidx9.4, %if.end ]
  %arrayidx3.i.3.pre-phi = phi i8* [ %.pre44, %entry.Hashing_crit_edge ], [ %arrayidx9.3, %if.end ]
  %arrayidx3.i.2.pre-phi = phi i8* [ %.pre43, %entry.Hashing_crit_edge ], [ %arrayidx9.2, %if.end ]
  %arrayidx3.i.1.pre-phi = phi i8* [ %.pre, %entry.Hashing_crit_edge ], [ %arrayidx9.1, %if.end ]
  %selector.0 = phi i8 [ -1, %entry.Hashing_crit_edge ], [ %phitmp18.i, %if.end ]
  %265 = load i8, i8* %sk, align 1, !tbaa !7
  %266 = load i8, i8* %4, align 16, !tbaa !7
  %xor16.i = xor i8 %266, %265
  %and18.i = and i8 %xor16.i, %selector.0
  %xor819.i = xor i8 %and18.i, %266
  store i8 %xor819.i, i8* %4, align 16, !tbaa !7
  %arrayidx.i37.1 = getelementptr inbounds i8, i8* %sk, i64 1
  %267 = load i8, i8* %arrayidx.i37.1, align 1, !tbaa !7
  %268 = load i8, i8* %arrayidx3.i.1.pre-phi, align 1, !tbaa !7
  %xor16.i.1 = xor i8 %268, %267
  %and18.i.1 = and i8 %xor16.i.1, %selector.0
  %xor819.i.1 = xor i8 %and18.i.1, %268
  store i8 %xor819.i.1, i8* %arrayidx3.i.1.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.2 = getelementptr inbounds i8, i8* %sk, i64 2
  %269 = load i8, i8* %arrayidx.i37.2, align 1, !tbaa !7
  %270 = load i8, i8* %arrayidx3.i.2.pre-phi, align 1, !tbaa !7
  %xor16.i.2 = xor i8 %270, %269
  %and18.i.2 = and i8 %xor16.i.2, %selector.0
  %xor819.i.2 = xor i8 %and18.i.2, %270
  store i8 %xor819.i.2, i8* %arrayidx3.i.2.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.3 = getelementptr inbounds i8, i8* %sk, i64 3
  %271 = load i8, i8* %arrayidx.i37.3, align 1, !tbaa !7
  %272 = load i8, i8* %arrayidx3.i.3.pre-phi, align 1, !tbaa !7
  %xor16.i.3 = xor i8 %272, %271
  %and18.i.3 = and i8 %xor16.i.3, %selector.0
  %xor819.i.3 = xor i8 %and18.i.3, %272
  store i8 %xor819.i.3, i8* %arrayidx3.i.3.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.4 = getelementptr inbounds i8, i8* %sk, i64 4
  %273 = load i8, i8* %arrayidx.i37.4, align 1, !tbaa !7
  %274 = load i8, i8* %arrayidx3.i.4.pre-phi, align 1, !tbaa !7
  %xor16.i.4 = xor i8 %274, %273
  %and18.i.4 = and i8 %xor16.i.4, %selector.0
  %xor819.i.4 = xor i8 %and18.i.4, %274
  store i8 %xor819.i.4, i8* %arrayidx3.i.4.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.5 = getelementptr inbounds i8, i8* %sk, i64 5
  %275 = load i8, i8* %arrayidx.i37.5, align 1, !tbaa !7
  %276 = load i8, i8* %arrayidx3.i.5.pre-phi, align 1, !tbaa !7
  %xor16.i.5 = xor i8 %276, %275
  %and18.i.5 = and i8 %xor16.i.5, %selector.0
  %xor819.i.5 = xor i8 %and18.i.5, %276
  store i8 %xor819.i.5, i8* %arrayidx3.i.5.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.6 = getelementptr inbounds i8, i8* %sk, i64 6
  %277 = load i8, i8* %arrayidx.i37.6, align 1, !tbaa !7
  %278 = load i8, i8* %arrayidx3.i.6.pre-phi, align 1, !tbaa !7
  %xor16.i.6 = xor i8 %278, %277
  %and18.i.6 = and i8 %xor16.i.6, %selector.0
  %xor819.i.6 = xor i8 %and18.i.6, %278
  store i8 %xor819.i.6, i8* %arrayidx3.i.6.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.7 = getelementptr inbounds i8, i8* %sk, i64 7
  %279 = load i8, i8* %arrayidx.i37.7, align 1, !tbaa !7
  %280 = load i8, i8* %arrayidx3.i.7.pre-phi, align 1, !tbaa !7
  %xor16.i.7 = xor i8 %280, %279
  %and18.i.7 = and i8 %xor16.i.7, %selector.0
  %xor819.i.7 = xor i8 %and18.i.7, %280
  store i8 %xor819.i.7, i8* %arrayidx3.i.7.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.8 = getelementptr inbounds i8, i8* %sk, i64 8
  %281 = load i8, i8* %arrayidx.i37.8, align 1, !tbaa !7
  %282 = load i8, i8* %arrayidx3.i.8.pre-phi, align 1, !tbaa !7
  %xor16.i.8 = xor i8 %282, %281
  %and18.i.8 = and i8 %xor16.i.8, %selector.0
  %xor819.i.8 = xor i8 %and18.i.8, %282
  store i8 %xor819.i.8, i8* %arrayidx3.i.8.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.9 = getelementptr inbounds i8, i8* %sk, i64 9
  %283 = load i8, i8* %arrayidx.i37.9, align 1, !tbaa !7
  %284 = load i8, i8* %arrayidx3.i.9.pre-phi, align 1, !tbaa !7
  %xor16.i.9 = xor i8 %284, %283
  %and18.i.9 = and i8 %xor16.i.9, %selector.0
  %xor819.i.9 = xor i8 %and18.i.9, %284
  store i8 %xor819.i.9, i8* %arrayidx3.i.9.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.10 = getelementptr inbounds i8, i8* %sk, i64 10
  %285 = load i8, i8* %arrayidx.i37.10, align 1, !tbaa !7
  %286 = load i8, i8* %arrayidx3.i.10.pre-phi, align 1, !tbaa !7
  %xor16.i.10 = xor i8 %286, %285
  %and18.i.10 = and i8 %xor16.i.10, %selector.0
  %xor819.i.10 = xor i8 %and18.i.10, %286
  store i8 %xor819.i.10, i8* %arrayidx3.i.10.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.11 = getelementptr inbounds i8, i8* %sk, i64 11
  %287 = load i8, i8* %arrayidx.i37.11, align 1, !tbaa !7
  %288 = load i8, i8* %arrayidx3.i.11.pre-phi, align 1, !tbaa !7
  %xor16.i.11 = xor i8 %288, %287
  %and18.i.11 = and i8 %xor16.i.11, %selector.0
  %xor819.i.11 = xor i8 %and18.i.11, %288
  store i8 %xor819.i.11, i8* %arrayidx3.i.11.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.12 = getelementptr inbounds i8, i8* %sk, i64 12
  %289 = load i8, i8* %arrayidx.i37.12, align 1, !tbaa !7
  %290 = load i8, i8* %arrayidx3.i.12.pre-phi, align 1, !tbaa !7
  %xor16.i.12 = xor i8 %290, %289
  %and18.i.12 = and i8 %xor16.i.12, %selector.0
  %xor819.i.12 = xor i8 %and18.i.12, %290
  store i8 %xor819.i.12, i8* %arrayidx3.i.12.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.13 = getelementptr inbounds i8, i8* %sk, i64 13
  %291 = load i8, i8* %arrayidx.i37.13, align 1, !tbaa !7
  %292 = load i8, i8* %arrayidx3.i.13.pre-phi, align 1, !tbaa !7
  %xor16.i.13 = xor i8 %292, %291
  %and18.i.13 = and i8 %xor16.i.13, %selector.0
  %xor819.i.13 = xor i8 %and18.i.13, %292
  store i8 %xor819.i.13, i8* %arrayidx3.i.13.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.14 = getelementptr inbounds i8, i8* %sk, i64 14
  %293 = load i8, i8* %arrayidx.i37.14, align 1, !tbaa !7
  %294 = load i8, i8* %arrayidx3.i.14.pre-phi, align 1, !tbaa !7
  %xor16.i.14 = xor i8 %294, %293
  %and18.i.14 = and i8 %xor16.i.14, %selector.0
  %xor819.i.14 = xor i8 %and18.i.14, %294
  store i8 %xor819.i.14, i8* %arrayidx3.i.14.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.15 = getelementptr inbounds i8, i8* %sk, i64 15
  %295 = load i8, i8* %arrayidx.i37.15, align 1, !tbaa !7
  %296 = load i8, i8* %arrayidx3.i.15.pre-phi, align 1, !tbaa !7
  %xor16.i.15 = xor i8 %296, %295
  %and18.i.15 = and i8 %xor16.i.15, %selector.0
  %xor819.i.15 = xor i8 %and18.i.15, %296
  store i8 %xor819.i.15, i8* %arrayidx3.i.15.pre-phi, align 1, !tbaa !7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %arrayidx23.pre-phi, i8* align 1 %ct, i64 346, i1 false)
  call void @shake256(i8* %ss, i64 16, i8* nonnull %4, i64 362) #10
  call void @llvm.lifetime.end.p0i8(i64 362, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 330, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 110, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 27, i8* nonnull %0) #10
  ret i32 0
}

declare void @mp_sub434_p2(i64*, i64*, i64*) local_unnamed_addr #5

; Function Attrs: norecurse nounwind ssp uwtable
define internal fastcc void @swap_points(%struct.point_proj* nocapture %P, %struct.point_proj* nocapture %Q, i64 %option) unnamed_addr #0 {
entry:
  %arrayidx1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 0
  %0 = load i64, i64* %arrayidx1, align 8, !tbaa !3
  %arrayidx5 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 0
  %1 = load i64, i64* %arrayidx5, align 8, !tbaa !3
  %xor = xor i64 %1, %0
  %and = and i64 %xor, %option
  %xor10 = xor i64 %and, %0
  store i64 %xor10, i64* %arrayidx1, align 8, !tbaa !3
  %2 = load i64, i64* %arrayidx5, align 8, !tbaa !3
  %xor19 = xor i64 %and, %2
  store i64 %xor19, i64* %arrayidx5, align 8, !tbaa !3
  %arrayidx27 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 1, i64 0
  %3 = load i64, i64* %arrayidx27, align 8, !tbaa !3
  %arrayidx31 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 1, i64 0
  %4 = load i64, i64* %arrayidx31, align 8, !tbaa !3
  %xor32 = xor i64 %4, %3
  %and33 = and i64 %xor32, %option
  %xor38 = xor i64 %and33, %3
  store i64 %xor38, i64* %arrayidx27, align 8, !tbaa !3
  %5 = load i64, i64* %arrayidx31, align 8, !tbaa !3
  %xor47 = xor i64 %and33, %5
  store i64 %xor47, i64* %arrayidx31, align 8, !tbaa !3
  %arrayidx54 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 0, i64 0
  %6 = load i64, i64* %arrayidx54, align 8, !tbaa !3
  %arrayidx58 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 0, i64 0
  %7 = load i64, i64* %arrayidx58, align 8, !tbaa !3
  %xor59 = xor i64 %7, %6
  %and60 = and i64 %xor59, %option
  %xor65 = xor i64 %and60, %6
  store i64 %xor65, i64* %arrayidx54, align 8, !tbaa !3
  %8 = load i64, i64* %arrayidx58, align 8, !tbaa !3
  %xor74 = xor i64 %and60, %8
  store i64 %xor74, i64* %arrayidx58, align 8, !tbaa !3
  %arrayidx82 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 1, i64 0
  %9 = load i64, i64* %arrayidx82, align 8, !tbaa !3
  %arrayidx86 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 1, i64 0
  %10 = load i64, i64* %arrayidx86, align 8, !tbaa !3
  %xor87 = xor i64 %10, %9
  %and88 = and i64 %xor87, %option
  %xor93 = xor i64 %and88, %9
  store i64 %xor93, i64* %arrayidx82, align 8, !tbaa !3
  %11 = load i64, i64* %arrayidx86, align 8, !tbaa !3
  %xor102 = xor i64 %and88, %11
  store i64 %xor102, i64* %arrayidx86, align 8, !tbaa !3
  %arrayidx1.1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 1
  %12 = load i64, i64* %arrayidx1.1, align 8, !tbaa !3
  %arrayidx5.1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 1
  %13 = load i64, i64* %arrayidx5.1, align 8, !tbaa !3
  %xor.1 = xor i64 %13, %12
  %and.1 = and i64 %xor.1, %option
  %xor10.1 = xor i64 %and.1, %12
  store i64 %xor10.1, i64* %arrayidx1.1, align 8, !tbaa !3
  %14 = load i64, i64* %arrayidx5.1, align 8, !tbaa !3
  %xor19.1 = xor i64 %and.1, %14
  store i64 %xor19.1, i64* %arrayidx5.1, align 8, !tbaa !3
  %arrayidx27.1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 1, i64 1
  %15 = load i64, i64* %arrayidx27.1, align 8, !tbaa !3
  %arrayidx31.1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 1, i64 1
  %16 = load i64, i64* %arrayidx31.1, align 8, !tbaa !3
  %xor32.1 = xor i64 %16, %15
  %and33.1 = and i64 %xor32.1, %option
  %xor38.1 = xor i64 %and33.1, %15
  store i64 %xor38.1, i64* %arrayidx27.1, align 8, !tbaa !3
  %17 = load i64, i64* %arrayidx31.1, align 8, !tbaa !3
  %xor47.1 = xor i64 %and33.1, %17
  store i64 %xor47.1, i64* %arrayidx31.1, align 8, !tbaa !3
  %arrayidx54.1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 0, i64 1
  %18 = load i64, i64* %arrayidx54.1, align 8, !tbaa !3
  %arrayidx58.1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 0, i64 1
  %19 = load i64, i64* %arrayidx58.1, align 8, !tbaa !3
  %xor59.1 = xor i64 %19, %18
  %and60.1 = and i64 %xor59.1, %option
  %xor65.1 = xor i64 %and60.1, %18
  store i64 %xor65.1, i64* %arrayidx54.1, align 8, !tbaa !3
  %20 = load i64, i64* %arrayidx58.1, align 8, !tbaa !3
  %xor74.1 = xor i64 %and60.1, %20
  store i64 %xor74.1, i64* %arrayidx58.1, align 8, !tbaa !3
  %arrayidx82.1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 1, i64 1
  %21 = load i64, i64* %arrayidx82.1, align 8, !tbaa !3
  %arrayidx86.1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 1, i64 1
  %22 = load i64, i64* %arrayidx86.1, align 8, !tbaa !3
  %xor87.1 = xor i64 %22, %21
  %and88.1 = and i64 %xor87.1, %option
  %xor93.1 = xor i64 %and88.1, %21
  store i64 %xor93.1, i64* %arrayidx82.1, align 8, !tbaa !3
  %23 = load i64, i64* %arrayidx86.1, align 8, !tbaa !3
  %xor102.1 = xor i64 %and88.1, %23
  store i64 %xor102.1, i64* %arrayidx86.1, align 8, !tbaa !3
  %arrayidx1.2 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 2
  %24 = load i64, i64* %arrayidx1.2, align 8, !tbaa !3
  %arrayidx5.2 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 2
  %25 = load i64, i64* %arrayidx5.2, align 8, !tbaa !3
  %xor.2 = xor i64 %25, %24
  %and.2 = and i64 %xor.2, %option
  %xor10.2 = xor i64 %and.2, %24
  store i64 %xor10.2, i64* %arrayidx1.2, align 8, !tbaa !3
  %26 = load i64, i64* %arrayidx5.2, align 8, !tbaa !3
  %xor19.2 = xor i64 %and.2, %26
  store i64 %xor19.2, i64* %arrayidx5.2, align 8, !tbaa !3
  %arrayidx27.2 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 1, i64 2
  %27 = load i64, i64* %arrayidx27.2, align 8, !tbaa !3
  %arrayidx31.2 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 1, i64 2
  %28 = load i64, i64* %arrayidx31.2, align 8, !tbaa !3
  %xor32.2 = xor i64 %28, %27
  %and33.2 = and i64 %xor32.2, %option
  %xor38.2 = xor i64 %and33.2, %27
  store i64 %xor38.2, i64* %arrayidx27.2, align 8, !tbaa !3
  %29 = load i64, i64* %arrayidx31.2, align 8, !tbaa !3
  %xor47.2 = xor i64 %and33.2, %29
  store i64 %xor47.2, i64* %arrayidx31.2, align 8, !tbaa !3
  %arrayidx54.2 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 0, i64 2
  %30 = load i64, i64* %arrayidx54.2, align 8, !tbaa !3
  %arrayidx58.2 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 0, i64 2
  %31 = load i64, i64* %arrayidx58.2, align 8, !tbaa !3
  %xor59.2 = xor i64 %31, %30
  %and60.2 = and i64 %xor59.2, %option
  %xor65.2 = xor i64 %and60.2, %30
  store i64 %xor65.2, i64* %arrayidx54.2, align 8, !tbaa !3
  %32 = load i64, i64* %arrayidx58.2, align 8, !tbaa !3
  %xor74.2 = xor i64 %and60.2, %32
  store i64 %xor74.2, i64* %arrayidx58.2, align 8, !tbaa !3
  %arrayidx82.2 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 1, i64 2
  %33 = load i64, i64* %arrayidx82.2, align 8, !tbaa !3
  %arrayidx86.2 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 1, i64 2
  %34 = load i64, i64* %arrayidx86.2, align 8, !tbaa !3
  %xor87.2 = xor i64 %34, %33
  %and88.2 = and i64 %xor87.2, %option
  %xor93.2 = xor i64 %and88.2, %33
  store i64 %xor93.2, i64* %arrayidx82.2, align 8, !tbaa !3
  %35 = load i64, i64* %arrayidx86.2, align 8, !tbaa !3
  %xor102.2 = xor i64 %and88.2, %35
  store i64 %xor102.2, i64* %arrayidx86.2, align 8, !tbaa !3
  %arrayidx1.3 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 3
  %36 = load i64, i64* %arrayidx1.3, align 8, !tbaa !3
  %arrayidx5.3 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 3
  %37 = load i64, i64* %arrayidx5.3, align 8, !tbaa !3
  %xor.3 = xor i64 %37, %36
  %and.3 = and i64 %xor.3, %option
  %xor10.3 = xor i64 %and.3, %36
  store i64 %xor10.3, i64* %arrayidx1.3, align 8, !tbaa !3
  %38 = load i64, i64* %arrayidx5.3, align 8, !tbaa !3
  %xor19.3 = xor i64 %and.3, %38
  store i64 %xor19.3, i64* %arrayidx5.3, align 8, !tbaa !3
  %arrayidx27.3 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 1, i64 3
  %39 = load i64, i64* %arrayidx27.3, align 8, !tbaa !3
  %arrayidx31.3 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 1, i64 3
  %40 = load i64, i64* %arrayidx31.3, align 8, !tbaa !3
  %xor32.3 = xor i64 %40, %39
  %and33.3 = and i64 %xor32.3, %option
  %xor38.3 = xor i64 %and33.3, %39
  store i64 %xor38.3, i64* %arrayidx27.3, align 8, !tbaa !3
  %41 = load i64, i64* %arrayidx31.3, align 8, !tbaa !3
  %xor47.3 = xor i64 %and33.3, %41
  store i64 %xor47.3, i64* %arrayidx31.3, align 8, !tbaa !3
  %arrayidx54.3 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 0, i64 3
  %42 = load i64, i64* %arrayidx54.3, align 8, !tbaa !3
  %arrayidx58.3 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 0, i64 3
  %43 = load i64, i64* %arrayidx58.3, align 8, !tbaa !3
  %xor59.3 = xor i64 %43, %42
  %and60.3 = and i64 %xor59.3, %option
  %xor65.3 = xor i64 %and60.3, %42
  store i64 %xor65.3, i64* %arrayidx54.3, align 8, !tbaa !3
  %44 = load i64, i64* %arrayidx58.3, align 8, !tbaa !3
  %xor74.3 = xor i64 %and60.3, %44
  store i64 %xor74.3, i64* %arrayidx58.3, align 8, !tbaa !3
  %arrayidx82.3 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 1, i64 3
  %45 = load i64, i64* %arrayidx82.3, align 8, !tbaa !3
  %arrayidx86.3 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 1, i64 3
  %46 = load i64, i64* %arrayidx86.3, align 8, !tbaa !3
  %xor87.3 = xor i64 %46, %45
  %and88.3 = and i64 %xor87.3, %option
  %xor93.3 = xor i64 %and88.3, %45
  store i64 %xor93.3, i64* %arrayidx82.3, align 8, !tbaa !3
  %47 = load i64, i64* %arrayidx86.3, align 8, !tbaa !3
  %xor102.3 = xor i64 %and88.3, %47
  store i64 %xor102.3, i64* %arrayidx86.3, align 8, !tbaa !3
  %arrayidx1.4 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 4
  %48 = load i64, i64* %arrayidx1.4, align 8, !tbaa !3
  %arrayidx5.4 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 4
  %49 = load i64, i64* %arrayidx5.4, align 8, !tbaa !3
  %xor.4 = xor i64 %49, %48
  %and.4 = and i64 %xor.4, %option
  %xor10.4 = xor i64 %and.4, %48
  store i64 %xor10.4, i64* %arrayidx1.4, align 8, !tbaa !3
  %50 = load i64, i64* %arrayidx5.4, align 8, !tbaa !3
  %xor19.4 = xor i64 %and.4, %50
  store i64 %xor19.4, i64* %arrayidx5.4, align 8, !tbaa !3
  %arrayidx27.4 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 1, i64 4
  %51 = load i64, i64* %arrayidx27.4, align 8, !tbaa !3
  %arrayidx31.4 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 1, i64 4
  %52 = load i64, i64* %arrayidx31.4, align 8, !tbaa !3
  %xor32.4 = xor i64 %52, %51
  %and33.4 = and i64 %xor32.4, %option
  %xor38.4 = xor i64 %and33.4, %51
  store i64 %xor38.4, i64* %arrayidx27.4, align 8, !tbaa !3
  %53 = load i64, i64* %arrayidx31.4, align 8, !tbaa !3
  %xor47.4 = xor i64 %and33.4, %53
  store i64 %xor47.4, i64* %arrayidx31.4, align 8, !tbaa !3
  %arrayidx54.4 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 0, i64 4
  %54 = load i64, i64* %arrayidx54.4, align 8, !tbaa !3
  %arrayidx58.4 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 0, i64 4
  %55 = load i64, i64* %arrayidx58.4, align 8, !tbaa !3
  %xor59.4 = xor i64 %55, %54
  %and60.4 = and i64 %xor59.4, %option
  %xor65.4 = xor i64 %and60.4, %54
  store i64 %xor65.4, i64* %arrayidx54.4, align 8, !tbaa !3
  %56 = load i64, i64* %arrayidx58.4, align 8, !tbaa !3
  %xor74.4 = xor i64 %and60.4, %56
  store i64 %xor74.4, i64* %arrayidx58.4, align 8, !tbaa !3
  %arrayidx82.4 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 1, i64 4
  %57 = load i64, i64* %arrayidx82.4, align 8, !tbaa !3
  %arrayidx86.4 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 1, i64 4
  %58 = load i64, i64* %arrayidx86.4, align 8, !tbaa !3
  %xor87.4 = xor i64 %58, %57
  %and88.4 = and i64 %xor87.4, %option
  %xor93.4 = xor i64 %and88.4, %57
  store i64 %xor93.4, i64* %arrayidx82.4, align 8, !tbaa !3
  %59 = load i64, i64* %arrayidx86.4, align 8, !tbaa !3
  %xor102.4 = xor i64 %and88.4, %59
  store i64 %xor102.4, i64* %arrayidx86.4, align 8, !tbaa !3
  %arrayidx1.5 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 5
  %60 = load i64, i64* %arrayidx1.5, align 8, !tbaa !3
  %arrayidx5.5 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 5
  %61 = load i64, i64* %arrayidx5.5, align 8, !tbaa !3
  %xor.5 = xor i64 %61, %60
  %and.5 = and i64 %xor.5, %option
  %xor10.5 = xor i64 %and.5, %60
  store i64 %xor10.5, i64* %arrayidx1.5, align 8, !tbaa !3
  %62 = load i64, i64* %arrayidx5.5, align 8, !tbaa !3
  %xor19.5 = xor i64 %and.5, %62
  store i64 %xor19.5, i64* %arrayidx5.5, align 8, !tbaa !3
  %arrayidx27.5 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 1, i64 5
  %63 = load i64, i64* %arrayidx27.5, align 8, !tbaa !3
  %arrayidx31.5 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 1, i64 5
  %64 = load i64, i64* %arrayidx31.5, align 8, !tbaa !3
  %xor32.5 = xor i64 %64, %63
  %and33.5 = and i64 %xor32.5, %option
  %xor38.5 = xor i64 %and33.5, %63
  store i64 %xor38.5, i64* %arrayidx27.5, align 8, !tbaa !3
  %65 = load i64, i64* %arrayidx31.5, align 8, !tbaa !3
  %xor47.5 = xor i64 %and33.5, %65
  store i64 %xor47.5, i64* %arrayidx31.5, align 8, !tbaa !3
  %arrayidx54.5 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 0, i64 5
  %66 = load i64, i64* %arrayidx54.5, align 8, !tbaa !3
  %arrayidx58.5 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 0, i64 5
  %67 = load i64, i64* %arrayidx58.5, align 8, !tbaa !3
  %xor59.5 = xor i64 %67, %66
  %and60.5 = and i64 %xor59.5, %option
  %xor65.5 = xor i64 %and60.5, %66
  store i64 %xor65.5, i64* %arrayidx54.5, align 8, !tbaa !3
  %68 = load i64, i64* %arrayidx58.5, align 8, !tbaa !3
  %xor74.5 = xor i64 %and60.5, %68
  store i64 %xor74.5, i64* %arrayidx58.5, align 8, !tbaa !3
  %arrayidx82.5 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 1, i64 5
  %69 = load i64, i64* %arrayidx82.5, align 8, !tbaa !3
  %arrayidx86.5 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 1, i64 5
  %70 = load i64, i64* %arrayidx86.5, align 8, !tbaa !3
  %xor87.5 = xor i64 %70, %69
  %and88.5 = and i64 %xor87.5, %option
  %xor93.5 = xor i64 %and88.5, %69
  store i64 %xor93.5, i64* %arrayidx82.5, align 8, !tbaa !3
  %71 = load i64, i64* %arrayidx86.5, align 8, !tbaa !3
  %xor102.5 = xor i64 %and88.5, %71
  store i64 %xor102.5, i64* %arrayidx86.5, align 8, !tbaa !3
  %arrayidx1.6 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 6
  %72 = load i64, i64* %arrayidx1.6, align 8, !tbaa !3
  %arrayidx5.6 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 6
  %73 = load i64, i64* %arrayidx5.6, align 8, !tbaa !3
  %xor.6 = xor i64 %73, %72
  %and.6 = and i64 %xor.6, %option
  %xor10.6 = xor i64 %and.6, %72
  store i64 %xor10.6, i64* %arrayidx1.6, align 8, !tbaa !3
  %74 = load i64, i64* %arrayidx5.6, align 8, !tbaa !3
  %xor19.6 = xor i64 %and.6, %74
  store i64 %xor19.6, i64* %arrayidx5.6, align 8, !tbaa !3
  %arrayidx27.6 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 1, i64 6
  %75 = load i64, i64* %arrayidx27.6, align 8, !tbaa !3
  %arrayidx31.6 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 1, i64 6
  %76 = load i64, i64* %arrayidx31.6, align 8, !tbaa !3
  %xor32.6 = xor i64 %76, %75
  %and33.6 = and i64 %xor32.6, %option
  %xor38.6 = xor i64 %and33.6, %75
  store i64 %xor38.6, i64* %arrayidx27.6, align 8, !tbaa !3
  %77 = load i64, i64* %arrayidx31.6, align 8, !tbaa !3
  %xor47.6 = xor i64 %and33.6, %77
  store i64 %xor47.6, i64* %arrayidx31.6, align 8, !tbaa !3
  %arrayidx54.6 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 0, i64 6
  %78 = load i64, i64* %arrayidx54.6, align 8, !tbaa !3
  %arrayidx58.6 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 0, i64 6
  %79 = load i64, i64* %arrayidx58.6, align 8, !tbaa !3
  %xor59.6 = xor i64 %79, %78
  %and60.6 = and i64 %xor59.6, %option
  %xor65.6 = xor i64 %and60.6, %78
  store i64 %xor65.6, i64* %arrayidx54.6, align 8, !tbaa !3
  %80 = load i64, i64* %arrayidx58.6, align 8, !tbaa !3
  %xor74.6 = xor i64 %and60.6, %80
  store i64 %xor74.6, i64* %arrayidx58.6, align 8, !tbaa !3
  %arrayidx82.6 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 1, i64 6
  %81 = load i64, i64* %arrayidx82.6, align 8, !tbaa !3
  %arrayidx86.6 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 1, i64 6
  %82 = load i64, i64* %arrayidx86.6, align 8, !tbaa !3
  %xor87.6 = xor i64 %82, %81
  %and88.6 = and i64 %xor87.6, %option
  %xor93.6 = xor i64 %and88.6, %81
  store i64 %xor93.6, i64* %arrayidx82.6, align 8, !tbaa !3
  %83 = load i64, i64* %arrayidx86.6, align 8, !tbaa !3
  %xor102.6 = xor i64 %and88.6, %83
  store i64 %xor102.6, i64* %arrayidx86.6, align 8, !tbaa !3
  ret void
}

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

; ModuleID = 'src/P503/P503.c'
source_filename = "src/P503/P503.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.point_proj = type { [2 x [8 x i64]], [2 x [8 x i64]] }

@p503 = local_unnamed_addr constant [8 x i64] [i64 -1, i64 -1, i64 -1, i64 -6052837899185946625, i64 1371447078966912928, i64 1989455001339985327, i64 6937169319750509776, i64 18127602061483550], align 16
@p503x2 = local_unnamed_addr constant [8 x i64] [i64 -2, i64 -1, i64 -1, i64 6341068275337658367, i64 2742894157933825857, i64 3978910002679970654, i64 -4572405434208532064, i64 36255204122967100], align 16
@p503x4 = local_unnamed_addr constant [8 x i64] [i64 -4, i64 -1, i64 -1, i64 -5764607523034234881, i64 5485788315867651714, i64 7957820005359941308, i64 -9144810868417064128, i64 72510408245934201], align 16
@p503x8 = local_unnamed_addr constant [8 x i64] [i64 -8, i64 -1, i64 -1, i64 6917529027641081855, i64 -7475167441974248187, i64 -2531104062989669000, i64 157122336875423360, i64 145020816491868403], align 16
@p503p1 = local_unnamed_addr constant [8 x i64] [i64 0, i64 0, i64 0, i64 -6052837899185946624, i64 1371447078966912928, i64 1989455001339985327, i64 6937169319750509776, i64 18127602061483550], align 16
@Alice_order = local_unnamed_addr constant [4 x i64] [i64 0, i64 0, i64 0, i64 288230376151711744], align 16
@Bob_order = local_unnamed_addr constant [4 x i64] [i64 -4461107314665330645, i64 -1802088430207800380, i64 1256978695003386886, i64 1160166531934947224], align 16
@A_gen = local_unnamed_addr constant [48 x i64] [i64 6703660896400103571, i64 -5909411912860498377, i64 3678485159306027873, i64 -1093120675051731550, i64 2873992082182551772, i64 7171536194148839865, i64 -8265119447870746812, i64 16352189888232255, i64 9094247284453741849, i64 -3193704231875796372, i64 -4566050114418754087, i64 -54528743463601070, i64 -3047936482764286209, i64 1922054504381246808, i64 -1396317688998530438, i64 7612225463883843, i64 5585423759613901741, i64 2458739554285137871, i64 8711841994324700402, i64 7897112202292909028, i64 5786141083180541608, i64 -1166217168022687708, i64 -3785477569279922225, i64 4594121609494003, i64 969679319129173575, i64 -2352131510239393043, i64 -5157801319708392578, i64 -8562986439770759325, i64 -6951028502467660703, i64 -9067673585621255480, i64 -1528728095638149651, i64 1716330900454016, i64 2133917679667870743, i64 6131595433662066731, i64 4132892201466249495, i64 4243264721812232392, i64 6868906156409292872, i64 -520717866781942678, i64 -2868022759630592540, i64 12061138545445877, i64 -4294522333240218021, i64 8869864843183837084, i64 -8701368168747863904, i64 -4965310479604401471, i64 -6825489128068601256, i64 -8596507567827754495, i64 3990273888349394775, i64 1829864135412729], align 16
@B_gen = local_unnamed_addr constant [48 x i64] [i64 -2350017237560825637, i64 -4392041795693706226, i64 4385548945328509436, i64 -771423915569509155, i64 4241169154243281967, i64 -9055620440120322608, i64 7121043649763917783, i64 8110065236168021, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 3329382374260773473, i64 3539711558809017592, i64 6589269349358072822, i64 3923158083819410753, i64 -5273354194737115313, i64 1859160943325703733, i64 -794327878939895329, i64 15124960556656395, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 3317107392457288018, i64 -3242006345699259022, i64 2378317285299659333, i64 2752067541212454492, i64 5401008318620329606, i64 -3485230783958939245, i64 -925585022753670519, i64 3869545957505286, i64 279293490929988356, i64 -7404656326429938090, i64 -9205024153151674593, i64 1152299110578731394, i64 -1908147126641080015, i64 1402013848611896279, i64 564564276466162271, i64 16163713578947404], align 16
@Montgomery_R2 = constant [8 x i64] [i64 5947461595517747487, i64 -7239495231421361479, i64 -6650860256814894726, i64 6612826553991653612, i64 -7038675916694928349, i64 -4645012440608975211, i64 5109635575176285622, i64 17852757024708465], align 16
@Montgomery_one = local_unnamed_addr constant [8 x i64] [i64 1017, i64 0, i64 0, i64 -5476377146882523136, i64 7190870292575474356, i64 5866111745285600125, i64 -8444962029219724990, i64 10972777180780883], align 16
@strat_Alice = local_unnamed_addr constant [124 x i32] [i32 61, i32 32, i32 16, i32 8, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 8, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 16, i32 8, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 8, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 29, i32 16, i32 8, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 8, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 13, i32 8, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 5, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 1], align 16
@strat_Bob = local_unnamed_addr constant [158 x i32] [i32 71, i32 38, i32 21, i32 13, i32 8, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 5, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 1, i32 9, i32 5, i32 3, i32 2, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 17, i32 9, i32 5, i32 3, i32 2, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 8, i32 4, i32 2, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 33, i32 17, i32 9, i32 5, i32 3, i32 2, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 8, i32 4, i32 2, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 16, i32 8, i32 4, i32 2, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 8, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1], align 16

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
define void @fpcopy503(i64* nocapture readonly %a, i64* nocapture %c) local_unnamed_addr #3 {
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
  ret void
}

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define void @fpzero503(i64* nocapture %a) local_unnamed_addr #3 {
entry:
  %a5 = bitcast i64* %a to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %a5, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @to_mont(i64* %a, i64* %mc) local_unnamed_addr #4 {
entry:
  %temp.i = alloca [16 x i64], align 16
  %0 = bitcast [16 x i64]* %temp.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 128, i1 false) #10
  %arraydecay.i = getelementptr inbounds [16 x i64], [16 x i64]* %temp.i, i64 0, i64 0
  call void @mp_mul(i64* %a, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* %mc) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @fpmul503_mont(i64* %ma, i64* %mb, i64* %mc) local_unnamed_addr #4 {
entry:
  %temp = alloca [16 x i64], align 16
  %0 = bitcast [16 x i64]* %temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 128, i1 false)
  %arraydecay = getelementptr inbounds [16 x i64], [16 x i64]* %temp, i64 0, i64 0
  call void @mp_mul(i64* %ma, i64* %mb, i64* nonnull %arraydecay, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay, i64* %mc) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @from_mont(i64* %ma, i64* %c) local_unnamed_addr #4 {
entry:
  %temp.i = alloca [16 x i64], align 16
  %one = alloca [8 x i64], align 16
  %0 = bitcast [8 x i64]* %one to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 64, i1 false)
  %arrayidx = getelementptr inbounds [8 x i64], [8 x i64]* %one, i64 0, i64 0
  store i64 1, i64* %arrayidx, align 16, !tbaa !3
  %1 = bitcast [16 x i64]* %temp.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 128, i1 false) #10
  %arraydecay.i = getelementptr inbounds [16 x i64], [16 x i64]* %temp.i, i64 0, i64 0
  call void @mp_mul(i64* %ma, i64* nonnull %arrayidx, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* %c) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #10
  call void @fpcorrection503(i64* %c) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #10
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

declare void @fpcorrection503(i64*) local_unnamed_addr #5

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
define void @fpsqr503_mont(i64* %ma, i64* %mc) local_unnamed_addr #4 {
entry:
  %temp = alloca [16 x i64], align 16
  %0 = bitcast [16 x i64]* %temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 128, i1 false)
  %arraydecay = getelementptr inbounds [16 x i64], [16 x i64]* %temp, i64 0, i64 0
  call void @mp_mul(i64* %ma, i64* %ma, i64* nonnull %arraydecay, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay, i64* %mc) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @fpinv503_mont(i64* %a) local_unnamed_addr #4 {
entry:
  %temp.i = alloca [16 x i64], align 16
  %tt = alloca [8 x i64], align 16
  %0 = bitcast [8 x i64]* %tt to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #10
  %arraydecay = getelementptr inbounds [8 x i64], [8 x i64]* %tt, i64 0, i64 0
  %1 = bitcast i64* %a to <4 x i64>*
  %2 = load <4 x i64>, <4 x i64>* %1, align 8, !tbaa !3
  %3 = bitcast [8 x i64]* %tt to <4 x i64>*
  store <4 x i64> %2, <4 x i64>* %3, align 16, !tbaa !3
  %arrayidx.4.i = getelementptr inbounds i64, i64* %a, i64 4
  %arrayidx2.4.i = getelementptr inbounds [8 x i64], [8 x i64]* %tt, i64 0, i64 4
  %4 = bitcast i64* %arrayidx.4.i to <4 x i64>*
  %5 = load <4 x i64>, <4 x i64>* %4, align 8, !tbaa !3
  %6 = bitcast i64* %arrayidx2.4.i to <4 x i64>*
  store <4 x i64> %5, <4 x i64>* %6, align 16, !tbaa !3
  call void @fpinv503_chain_mont(i64* nonnull %arraydecay)
  %7 = bitcast [16 x i64]* %temp.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %7) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %7, i8 0, i64 128, i1 false) #10
  %arraydecay.i10 = getelementptr inbounds [16 x i64], [16 x i64]* %temp.i, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i10, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i10, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %7) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %7) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %7, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i10, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i10, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %7) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %7) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %7, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* %a, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i10, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i10, i64* %a) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @fpinv503_chain_mont(i64* %a) local_unnamed_addr #4 {
entry:
  %temp.i = alloca [16 x i64], align 16
  %t = alloca [15 x [8 x i64]], align 16
  %tt = alloca [8 x i64], align 16
  %0 = bitcast [15 x [8 x i64]]* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 960, i8* nonnull %0) #10
  %1 = bitcast [8 x i64]* %tt to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #10
  %arraydecay = getelementptr inbounds [8 x i64], [8 x i64]* %tt, i64 0, i64 0
  %2 = bitcast [16 x i64]* %temp.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  %arraydecay.i = getelementptr inbounds [16 x i64], [16 x i64]* %temp.i, i64 0, i64 0
  call void @mp_mul(i64* %a, i64* %a, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  %arraydecay2 = getelementptr inbounds [15 x [8 x i64]], [15 x [8 x i64]]* %t, i64 0, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* %a, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay2) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  %arraydecay8 = getelementptr inbounds [15 x [8 x i64]], [15 x [8 x i64]]* %t, i64 0, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay8) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  %arraydecay8.1 = getelementptr inbounds [15 x [8 x i64]], [15 x [8 x i64]]* %t, i64 0, i64 2, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay8.1) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  %arraydecay8.2 = getelementptr inbounds [15 x [8 x i64]], [15 x [8 x i64]]* %t, i64 0, i64 3, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.1, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay8.2) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  %arraydecay8.3 = getelementptr inbounds [15 x [8 x i64]], [15 x [8 x i64]]* %t, i64 0, i64 4, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.2, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay8.3) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  %arraydecay8.4 = getelementptr inbounds [15 x [8 x i64]], [15 x [8 x i64]]* %t, i64 0, i64 5, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.3, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay8.4) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  %arraydecay8.5 = getelementptr inbounds [15 x [8 x i64]], [15 x [8 x i64]]* %t, i64 0, i64 6, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.4, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay8.5) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  %arraydecay8.6 = getelementptr inbounds [15 x [8 x i64]], [15 x [8 x i64]]* %t, i64 0, i64 7, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.5, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay8.6) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  %arraydecay8.7 = getelementptr inbounds [15 x [8 x i64]], [15 x [8 x i64]]* %t, i64 0, i64 8, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.6, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay8.7) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  %arraydecay8.8 = getelementptr inbounds [15 x [8 x i64]], [15 x [8 x i64]]* %t, i64 0, i64 9, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.7, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay8.8) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  %arraydecay8.9 = getelementptr inbounds [15 x [8 x i64]], [15 x [8 x i64]]* %t, i64 0, i64 10, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.8, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay8.9) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  %arraydecay8.10 = getelementptr inbounds [15 x [8 x i64]], [15 x [8 x i64]]* %t, i64 0, i64 11, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.9, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay8.10) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  %arraydecay8.11 = getelementptr inbounds [15 x [8 x i64]], [15 x [8 x i64]]* %t, i64 0, i64 12, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.10, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay8.11) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  %arraydecay8.12 = getelementptr inbounds [15 x [8 x i64]], [15 x [8 x i64]]* %t, i64 0, i64 13, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.11, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay8.12) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  %arraydecay8.13 = getelementptr inbounds [15 x [8 x i64]], [15 x [8 x i64]]* %t, i64 0, i64 14, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.12, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay8.13) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  %3 = bitcast i64* %a to <4 x i64>*
  %4 = load <4 x i64>, <4 x i64>* %3, align 8, !tbaa !3
  %5 = bitcast [8 x i64]* %tt to <4 x i64>*
  store <4 x i64> %4, <4 x i64>* %5, align 16, !tbaa !3
  %arrayidx.4.i = getelementptr inbounds i64, i64* %a, i64 4
  %arrayidx2.4.i = getelementptr inbounds [8 x i64], [8 x i64]* %tt, i64 0, i64 4
  %6 = bitcast i64* %arrayidx.4.i to <4 x i64>*
  %7 = load <4 x i64>, <4 x i64>* %6, align 8, !tbaa !3
  %8 = bitcast i64* %arrayidx2.4.i to <4 x i64>*
  store <4 x i64> %7, <4 x i64>* %8, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* %a, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.7, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.5, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.8, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* %a, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.5, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.1, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.7, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* %a, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.9, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.9, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.9, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.4, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.1, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.5, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.2, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.4, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.11, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.7, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.5, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.11, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.10, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.5, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.4, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.13, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.13, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.4, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.5, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.7, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* %a, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.3, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.5, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.4, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.6, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* %a, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.10, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.12, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.9, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  br label %for.cond507.preheader

for.cond507.preheader:                            ; preds = %for.cond507.preheader, %entry
  %j.0814 = phi i32 [ 0, %entry ], [ %inc520, %for.cond507.preheader ]
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.13, i64* nonnull %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  %inc520 = add nuw nsw i32 %j.0814, 1
  %exitcond = icmp eq i32 %inc520, 49
  br i1 %exitcond, label %for.end521, label %for.cond507.preheader

for.end521:                                       ; preds = %for.cond507.preheader
  %9 = bitcast [8 x i64]* %tt to <4 x i64>*
  %10 = load <4 x i64>, <4 x i64>* %9, align 16, !tbaa !3
  %11 = bitcast i64* %a to <4 x i64>*
  store <4 x i64> %10, <4 x i64>* %11, align 8, !tbaa !3
  %12 = bitcast i64* %arrayidx2.4.i to <4 x i64>*
  %13 = load <4 x i64>, <4 x i64>* %12, align 16, !tbaa !3
  %14 = bitcast i64* %arrayidx.4.i to <4 x i64>*
  store <4 x i64> %13, <4 x i64>* %14, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 960, i8* nonnull %0) #10
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @fp2copy503([8 x i64]* nocapture readonly %a, [8 x i64]* nocapture %c) local_unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 0, i64 0
  %0 = load i64, i64* %arraydecay, align 8, !tbaa !3
  store i64 %0, i64* %arraydecay2, align 8, !tbaa !3
  %arrayidx.1.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 1
  %1 = load i64, i64* %arrayidx.1.i, align 8, !tbaa !3
  %arrayidx2.1.i = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 0, i64 1
  store i64 %1, i64* %arrayidx2.1.i, align 8, !tbaa !3
  %arrayidx.2.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 2
  %2 = load i64, i64* %arrayidx.2.i, align 8, !tbaa !3
  %arrayidx2.2.i = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 0, i64 2
  store i64 %2, i64* %arrayidx2.2.i, align 8, !tbaa !3
  %arrayidx.3.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 3
  %3 = load i64, i64* %arrayidx.3.i, align 8, !tbaa !3
  %arrayidx2.3.i = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 0, i64 3
  store i64 %3, i64* %arrayidx2.3.i, align 8, !tbaa !3
  %arrayidx.4.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 4
  %4 = load i64, i64* %arrayidx.4.i, align 8, !tbaa !3
  %arrayidx2.4.i = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 0, i64 4
  store i64 %4, i64* %arrayidx2.4.i, align 8, !tbaa !3
  %arrayidx.5.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 5
  %5 = load i64, i64* %arrayidx.5.i, align 8, !tbaa !3
  %arrayidx2.5.i = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 0, i64 5
  store i64 %5, i64* %arrayidx2.5.i, align 8, !tbaa !3
  %arrayidx.6.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 6
  %6 = load i64, i64* %arrayidx.6.i, align 8, !tbaa !3
  %arrayidx2.6.i = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 0, i64 6
  store i64 %6, i64* %arrayidx2.6.i, align 8, !tbaa !3
  %arrayidx.7.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 7
  %7 = load i64, i64* %arrayidx.7.i, align 8, !tbaa !3
  %arrayidx2.7.i = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 0, i64 7
  store i64 %7, i64* %arrayidx2.7.i, align 8, !tbaa !3
  %arraydecay4 = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 0
  %arraydecay6 = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 1, i64 0
  %8 = load i64, i64* %arraydecay4, align 8, !tbaa !3
  store i64 %8, i64* %arraydecay6, align 8, !tbaa !3
  %arrayidx.1.i9 = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 1
  %9 = load i64, i64* %arrayidx.1.i9, align 8, !tbaa !3
  %arrayidx2.1.i10 = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 1, i64 1
  store i64 %9, i64* %arrayidx2.1.i10, align 8, !tbaa !3
  %arrayidx.2.i11 = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 2
  %10 = load i64, i64* %arrayidx.2.i11, align 8, !tbaa !3
  %arrayidx2.2.i12 = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 1, i64 2
  store i64 %10, i64* %arrayidx2.2.i12, align 8, !tbaa !3
  %arrayidx.3.i13 = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 3
  %11 = load i64, i64* %arrayidx.3.i13, align 8, !tbaa !3
  %arrayidx2.3.i14 = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 1, i64 3
  store i64 %11, i64* %arrayidx2.3.i14, align 8, !tbaa !3
  %arrayidx.4.i15 = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 4
  %12 = load i64, i64* %arrayidx.4.i15, align 8, !tbaa !3
  %arrayidx2.4.i16 = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 1, i64 4
  store i64 %12, i64* %arrayidx2.4.i16, align 8, !tbaa !3
  %arrayidx.5.i17 = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 5
  %13 = load i64, i64* %arrayidx.5.i17, align 8, !tbaa !3
  %arrayidx2.5.i18 = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 1, i64 5
  store i64 %13, i64* %arrayidx2.5.i18, align 8, !tbaa !3
  %arrayidx.6.i19 = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 6
  %14 = load i64, i64* %arrayidx.6.i19, align 8, !tbaa !3
  %arrayidx2.6.i20 = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 1, i64 6
  store i64 %14, i64* %arrayidx2.6.i20, align 8, !tbaa !3
  %arrayidx.7.i21 = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 7
  %15 = load i64, i64* %arrayidx.7.i21, align 8, !tbaa !3
  %arrayidx2.7.i22 = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 1, i64 7
  store i64 %15, i64* %arrayidx2.7.i22, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @fp2zero503([8 x i64]* nocapture %a) local_unnamed_addr #4 {
entry:
  %0 = bitcast [8 x i64]* %a to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 128, i1 false)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @fp2neg503([8 x i64]* %a) local_unnamed_addr #4 {
entry:
  %arraydecay = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 0
  tail call void @fpneg503(i64* %arraydecay) #10
  %arraydecay2 = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 0
  tail call void @fpneg503(i64* nonnull %arraydecay2) #10
  ret void
}

declare void @fpneg503(i64*) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind ssp uwtable
define void @fp2add503([8 x i64]* %a, [8 x i64]* %b, [8 x i64]* %c) local_unnamed_addr #6 {
entry:
  %arraydecay = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 0, i64 0
  tail call void @fpadd503(i64* %arraydecay, i64* %arraydecay2, i64* %arraydecay4) #10
  %arraydecay6 = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 0
  %arraydecay8 = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 1, i64 0
  %arraydecay10 = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 1, i64 0
  tail call void @fpadd503(i64* nonnull %arraydecay6, i64* nonnull %arraydecay8, i64* nonnull %arraydecay10) #10
  ret void
}

declare void @fpadd503(i64*, i64*, i64*) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind ssp uwtable
define void @fp2sub503([8 x i64]* %a, [8 x i64]* %b, [8 x i64]* %c) local_unnamed_addr #6 {
entry:
  %arraydecay = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 0, i64 0
  tail call void @fpsub503(i64* %arraydecay, i64* %arraydecay2, i64* %arraydecay4) #10
  %arraydecay6 = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 0
  %arraydecay8 = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 1, i64 0
  %arraydecay10 = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 1, i64 0
  tail call void @fpsub503(i64* nonnull %arraydecay6, i64* nonnull %arraydecay8, i64* nonnull %arraydecay10) #10
  ret void
}

declare void @fpsub503(i64*, i64*, i64*) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define void @fp2div2_503([8 x i64]* %a, [8 x i64]* %c) local_unnamed_addr #4 {
entry:
  %arraydecay = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 0, i64 0
  tail call void @fpdiv2_503(i64* %arraydecay, i64* %arraydecay2) #10
  %arraydecay4 = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 0
  %arraydecay6 = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 1, i64 0
  tail call void @fpdiv2_503(i64* nonnull %arraydecay4, i64* nonnull %arraydecay6) #10
  ret void
}

declare void @fpdiv2_503(i64*, i64*) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define void @fp2correction503([8 x i64]* %a) local_unnamed_addr #4 {
entry:
  %arraydecay = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 0
  tail call void @fpcorrection503(i64* %arraydecay) #10
  %arraydecay2 = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 0
  tail call void @fpcorrection503(i64* nonnull %arraydecay2) #10
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
define void @fp2sqr503_mont([8 x i64]* %a, [8 x i64]* %c) local_unnamed_addr #4 {
entry:
  %temp.i = alloca [16 x i64], align 16
  %t1 = alloca [8 x i64], align 16
  %t2 = alloca [8 x i64], align 16
  %t3 = alloca [8 x i64], align 16
  %0 = bitcast [8 x i64]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #10
  %1 = bitcast [8 x i64]* %t2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #10
  %2 = bitcast [8 x i64]* %t3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #10
  %arraydecay = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 0
  %arraydecay3 = getelementptr inbounds [8 x i64], [8 x i64]* %t1, i64 0, i64 0
  %3 = load i64, i64* %arraydecay, align 8, !tbaa !3
  %4 = load i64, i64* %arraydecay2, align 8, !tbaa !3
  %add3.i.i = add i64 %4, %3
  store i64 %add3.i.i, i64* %arraydecay3, align 16, !tbaa !3
  %xor.i23.i.i = xor i64 %add3.i.i, %3
  %xor1.i24.i.i = xor i64 %4, %3
  %or.i25.i.i = or i64 %xor.i23.i.i, %xor1.i24.i.i
  %xor2.i26.i.i = xor i64 %or.i25.i.i, %add3.i.i
  %or29.i.i = lshr i64 %xor2.i26.i.i, 63
  %arrayidx.i.1.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 1
  %5 = load i64, i64* %arrayidx.i.1.i, align 8, !tbaa !3
  %add.i.1.i = add i64 %or29.i.i, %5
  %arrayidx2.i.1.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 1
  %6 = load i64, i64* %arrayidx2.i.1.i, align 8, !tbaa !3
  %add3.i.1.i = add i64 %add.i.1.i, %6
  %arrayidx5.i.1.i = getelementptr inbounds [8 x i64], [8 x i64]* %t1, i64 0, i64 1
  store i64 %add3.i.1.i, i64* %arrayidx5.i.1.i, align 8, !tbaa !3
  %7 = xor i64 %add.i.1.i, -9223372036854775808
  %xor2.i.i.1.i = and i64 %7, %5
  %xor.i23.i.1.i = xor i64 %add3.i.1.i, %add.i.1.i
  %xor1.i24.i.1.i = xor i64 %add.i.1.i, %6
  %or.i25.i.1.i = or i64 %xor.i23.i.1.i, %xor1.i24.i.1.i
  %xor2.i26.i.1.i = xor i64 %or.i25.i.1.i, %add3.i.1.i
  %shr.i30.i.1.i = or i64 %xor2.i26.i.1.i, %xor2.i.i.1.i
  %or29.i.1.i = lshr i64 %shr.i30.i.1.i, 63
  %arrayidx.i.2.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 2
  %8 = load i64, i64* %arrayidx.i.2.i, align 8, !tbaa !3
  %add.i.2.i = add i64 %or29.i.1.i, %8
  %arrayidx2.i.2.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 2
  %9 = load i64, i64* %arrayidx2.i.2.i, align 8, !tbaa !3
  %add3.i.2.i = add i64 %add.i.2.i, %9
  %arrayidx5.i.2.i = getelementptr inbounds [8 x i64], [8 x i64]* %t1, i64 0, i64 2
  store i64 %add3.i.2.i, i64* %arrayidx5.i.2.i, align 16, !tbaa !3
  %10 = xor i64 %add.i.2.i, -9223372036854775808
  %xor2.i.i.2.i = and i64 %10, %8
  %xor.i23.i.2.i = xor i64 %add3.i.2.i, %add.i.2.i
  %xor1.i24.i.2.i = xor i64 %add.i.2.i, %9
  %or.i25.i.2.i = or i64 %xor.i23.i.2.i, %xor1.i24.i.2.i
  %xor2.i26.i.2.i = xor i64 %or.i25.i.2.i, %add3.i.2.i
  %shr.i30.i.2.i = or i64 %xor2.i26.i.2.i, %xor2.i.i.2.i
  %or29.i.2.i = lshr i64 %shr.i30.i.2.i, 63
  %arrayidx.i.3.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 3
  %11 = load i64, i64* %arrayidx.i.3.i, align 8, !tbaa !3
  %add.i.3.i = add i64 %or29.i.2.i, %11
  %arrayidx2.i.3.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 3
  %12 = load i64, i64* %arrayidx2.i.3.i, align 8, !tbaa !3
  %add3.i.3.i = add i64 %add.i.3.i, %12
  %arrayidx5.i.3.i = getelementptr inbounds [8 x i64], [8 x i64]* %t1, i64 0, i64 3
  store i64 %add3.i.3.i, i64* %arrayidx5.i.3.i, align 8, !tbaa !3
  %13 = xor i64 %add.i.3.i, -9223372036854775808
  %xor2.i.i.3.i = and i64 %13, %11
  %xor.i23.i.3.i = xor i64 %add3.i.3.i, %add.i.3.i
  %xor1.i24.i.3.i = xor i64 %add.i.3.i, %12
  %or.i25.i.3.i = or i64 %xor.i23.i.3.i, %xor1.i24.i.3.i
  %xor2.i26.i.3.i = xor i64 %or.i25.i.3.i, %add3.i.3.i
  %shr.i30.i.3.i = or i64 %xor2.i26.i.3.i, %xor2.i.i.3.i
  %or29.i.3.i = lshr i64 %shr.i30.i.3.i, 63
  %arrayidx.i.4.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 4
  %14 = load i64, i64* %arrayidx.i.4.i, align 8, !tbaa !3
  %add.i.4.i = add i64 %or29.i.3.i, %14
  %arrayidx2.i.4.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 4
  %15 = load i64, i64* %arrayidx2.i.4.i, align 8, !tbaa !3
  %add3.i.4.i = add i64 %add.i.4.i, %15
  %arrayidx5.i.4.i = getelementptr inbounds [8 x i64], [8 x i64]* %t1, i64 0, i64 4
  store i64 %add3.i.4.i, i64* %arrayidx5.i.4.i, align 16, !tbaa !3
  %16 = xor i64 %add.i.4.i, -9223372036854775808
  %xor2.i.i.4.i = and i64 %16, %14
  %xor.i23.i.4.i = xor i64 %add3.i.4.i, %add.i.4.i
  %xor1.i24.i.4.i = xor i64 %add.i.4.i, %15
  %or.i25.i.4.i = or i64 %xor.i23.i.4.i, %xor1.i24.i.4.i
  %xor2.i26.i.4.i = xor i64 %or.i25.i.4.i, %add3.i.4.i
  %shr.i30.i.4.i = or i64 %xor2.i26.i.4.i, %xor2.i.i.4.i
  %or29.i.4.i = lshr i64 %shr.i30.i.4.i, 63
  %arrayidx.i.5.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 5
  %17 = load i64, i64* %arrayidx.i.5.i, align 8, !tbaa !3
  %add.i.5.i = add i64 %or29.i.4.i, %17
  %arrayidx2.i.5.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 5
  %18 = load i64, i64* %arrayidx2.i.5.i, align 8, !tbaa !3
  %add3.i.5.i = add i64 %add.i.5.i, %18
  %arrayidx5.i.5.i = getelementptr inbounds [8 x i64], [8 x i64]* %t1, i64 0, i64 5
  store i64 %add3.i.5.i, i64* %arrayidx5.i.5.i, align 8, !tbaa !3
  %19 = xor i64 %add.i.5.i, -9223372036854775808
  %xor2.i.i.5.i = and i64 %19, %17
  %xor.i23.i.5.i = xor i64 %add3.i.5.i, %add.i.5.i
  %xor1.i24.i.5.i = xor i64 %add.i.5.i, %18
  %or.i25.i.5.i = or i64 %xor.i23.i.5.i, %xor1.i24.i.5.i
  %xor2.i26.i.5.i = xor i64 %or.i25.i.5.i, %add3.i.5.i
  %shr.i30.i.5.i = or i64 %xor2.i26.i.5.i, %xor2.i.i.5.i
  %or29.i.5.i = lshr i64 %shr.i30.i.5.i, 63
  %arrayidx.i.6.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 6
  %20 = load i64, i64* %arrayidx.i.6.i, align 8, !tbaa !3
  %add.i.6.i = add i64 %or29.i.5.i, %20
  %arrayidx2.i.6.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 6
  %21 = load i64, i64* %arrayidx2.i.6.i, align 8, !tbaa !3
  %add3.i.6.i = add i64 %add.i.6.i, %21
  %arrayidx5.i.6.i = getelementptr inbounds [8 x i64], [8 x i64]* %t1, i64 0, i64 6
  store i64 %add3.i.6.i, i64* %arrayidx5.i.6.i, align 16, !tbaa !3
  %22 = xor i64 %add.i.6.i, -9223372036854775808
  %xor2.i.i.6.i = and i64 %22, %20
  %xor.i23.i.6.i = xor i64 %add3.i.6.i, %add.i.6.i
  %xor1.i24.i.6.i = xor i64 %add.i.6.i, %21
  %or.i25.i.6.i = or i64 %xor.i23.i.6.i, %xor1.i24.i.6.i
  %xor2.i26.i.6.i = xor i64 %or.i25.i.6.i, %add3.i.6.i
  %shr.i30.i.6.i = or i64 %xor2.i26.i.6.i, %xor2.i.i.6.i
  %or29.i.6.i = lshr i64 %shr.i30.i.6.i, 63
  %arrayidx.i.7.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 7
  %23 = load i64, i64* %arrayidx.i.7.i, align 8, !tbaa !3
  %arrayidx2.i.7.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 7
  %24 = load i64, i64* %arrayidx2.i.7.i, align 8, !tbaa !3
  %add.i.7.i = add i64 %24, %23
  %add3.i.7.i = add i64 %add.i.7.i, %or29.i.6.i
  %arrayidx5.i.7.i = getelementptr inbounds [8 x i64], [8 x i64]* %t1, i64 0, i64 7
  store i64 %add3.i.7.i, i64* %arrayidx5.i.7.i, align 8, !tbaa !3
  %arraydecay8 = getelementptr inbounds [8 x i64], [8 x i64]* %t2, i64 0, i64 0
  call void @mp_sub503_p4(i64* %arraydecay, i64* nonnull %arraydecay2, i64* nonnull %arraydecay8) #10
  %arraydecay13 = getelementptr inbounds [8 x i64], [8 x i64]* %t3, i64 0, i64 0
  %25 = load i64, i64* %arraydecay, align 8, !tbaa !3
  %add3.i.i30 = shl i64 %25, 1
  store i64 %add3.i.i30, i64* %arraydecay13, align 16, !tbaa !3
  %or29.i.i35 = lshr i64 %25, 63
  %26 = load i64, i64* %arrayidx.i.1.i, align 8, !tbaa !3
  %add.i.1.i37 = add i64 %26, %or29.i.i35
  %add3.i.1.i39 = add i64 %add.i.1.i37, %26
  %arrayidx5.i.1.i40 = getelementptr inbounds [8 x i64], [8 x i64]* %t3, i64 0, i64 1
  store i64 %add3.i.1.i39, i64* %arrayidx5.i.1.i40, align 8, !tbaa !3
  %27 = xor i64 %add.i.1.i37, -9223372036854775808
  %xor2.i.i.1.i41 = and i64 %27, %26
  %xor.i23.i.1.i42 = xor i64 %add3.i.1.i39, %add.i.1.i37
  %xor1.i24.i.1.i43 = xor i64 %add.i.1.i37, %26
  %or.i25.i.1.i44 = or i64 %xor.i23.i.1.i42, %xor1.i24.i.1.i43
  %xor2.i26.i.1.i45 = xor i64 %or.i25.i.1.i44, %add3.i.1.i39
  %shr.i30.i.1.i46 = or i64 %xor2.i26.i.1.i45, %xor2.i.i.1.i41
  %or29.i.1.i47 = lshr i64 %shr.i30.i.1.i46, 63
  %28 = load i64, i64* %arrayidx.i.2.i, align 8, !tbaa !3
  %add.i.2.i49 = add i64 %or29.i.1.i47, %28
  %add3.i.2.i51 = add i64 %add.i.2.i49, %28
  %arrayidx5.i.2.i52 = getelementptr inbounds [8 x i64], [8 x i64]* %t3, i64 0, i64 2
  store i64 %add3.i.2.i51, i64* %arrayidx5.i.2.i52, align 16, !tbaa !3
  %29 = xor i64 %add.i.2.i49, -9223372036854775808
  %xor2.i.i.2.i53 = and i64 %29, %28
  %xor.i23.i.2.i54 = xor i64 %add3.i.2.i51, %add.i.2.i49
  %xor1.i24.i.2.i55 = xor i64 %add.i.2.i49, %28
  %or.i25.i.2.i56 = or i64 %xor.i23.i.2.i54, %xor1.i24.i.2.i55
  %xor2.i26.i.2.i57 = xor i64 %or.i25.i.2.i56, %add3.i.2.i51
  %shr.i30.i.2.i58 = or i64 %xor2.i26.i.2.i57, %xor2.i.i.2.i53
  %or29.i.2.i59 = lshr i64 %shr.i30.i.2.i58, 63
  %30 = load i64, i64* %arrayidx.i.3.i, align 8, !tbaa !3
  %add.i.3.i61 = add i64 %or29.i.2.i59, %30
  %add3.i.3.i63 = add i64 %add.i.3.i61, %30
  %arrayidx5.i.3.i64 = getelementptr inbounds [8 x i64], [8 x i64]* %t3, i64 0, i64 3
  store i64 %add3.i.3.i63, i64* %arrayidx5.i.3.i64, align 8, !tbaa !3
  %31 = xor i64 %add.i.3.i61, -9223372036854775808
  %xor2.i.i.3.i65 = and i64 %31, %30
  %xor.i23.i.3.i66 = xor i64 %add3.i.3.i63, %add.i.3.i61
  %xor1.i24.i.3.i67 = xor i64 %add.i.3.i61, %30
  %or.i25.i.3.i68 = or i64 %xor.i23.i.3.i66, %xor1.i24.i.3.i67
  %xor2.i26.i.3.i69 = xor i64 %or.i25.i.3.i68, %add3.i.3.i63
  %shr.i30.i.3.i70 = or i64 %xor2.i26.i.3.i69, %xor2.i.i.3.i65
  %or29.i.3.i71 = lshr i64 %shr.i30.i.3.i70, 63
  %32 = load i64, i64* %arrayidx.i.4.i, align 8, !tbaa !3
  %add.i.4.i73 = add i64 %or29.i.3.i71, %32
  %add3.i.4.i75 = add i64 %add.i.4.i73, %32
  %arrayidx5.i.4.i76 = getelementptr inbounds [8 x i64], [8 x i64]* %t3, i64 0, i64 4
  store i64 %add3.i.4.i75, i64* %arrayidx5.i.4.i76, align 16, !tbaa !3
  %33 = xor i64 %add.i.4.i73, -9223372036854775808
  %xor2.i.i.4.i77 = and i64 %33, %32
  %xor.i23.i.4.i78 = xor i64 %add3.i.4.i75, %add.i.4.i73
  %xor1.i24.i.4.i79 = xor i64 %add.i.4.i73, %32
  %or.i25.i.4.i80 = or i64 %xor.i23.i.4.i78, %xor1.i24.i.4.i79
  %xor2.i26.i.4.i81 = xor i64 %or.i25.i.4.i80, %add3.i.4.i75
  %shr.i30.i.4.i82 = or i64 %xor2.i26.i.4.i81, %xor2.i.i.4.i77
  %or29.i.4.i83 = lshr i64 %shr.i30.i.4.i82, 63
  %34 = load i64, i64* %arrayidx.i.5.i, align 8, !tbaa !3
  %add.i.5.i85 = add i64 %or29.i.4.i83, %34
  %add3.i.5.i87 = add i64 %add.i.5.i85, %34
  %arrayidx5.i.5.i88 = getelementptr inbounds [8 x i64], [8 x i64]* %t3, i64 0, i64 5
  store i64 %add3.i.5.i87, i64* %arrayidx5.i.5.i88, align 8, !tbaa !3
  %35 = xor i64 %add.i.5.i85, -9223372036854775808
  %xor2.i.i.5.i89 = and i64 %35, %34
  %xor.i23.i.5.i90 = xor i64 %add3.i.5.i87, %add.i.5.i85
  %xor1.i24.i.5.i91 = xor i64 %add.i.5.i85, %34
  %or.i25.i.5.i92 = or i64 %xor.i23.i.5.i90, %xor1.i24.i.5.i91
  %xor2.i26.i.5.i93 = xor i64 %or.i25.i.5.i92, %add3.i.5.i87
  %shr.i30.i.5.i94 = or i64 %xor2.i26.i.5.i93, %xor2.i.i.5.i89
  %or29.i.5.i95 = lshr i64 %shr.i30.i.5.i94, 63
  %36 = load i64, i64* %arrayidx.i.6.i, align 8, !tbaa !3
  %add.i.6.i97 = add i64 %or29.i.5.i95, %36
  %add3.i.6.i99 = add i64 %add.i.6.i97, %36
  %arrayidx5.i.6.i100 = getelementptr inbounds [8 x i64], [8 x i64]* %t3, i64 0, i64 6
  store i64 %add3.i.6.i99, i64* %arrayidx5.i.6.i100, align 16, !tbaa !3
  %37 = xor i64 %add.i.6.i97, -9223372036854775808
  %xor2.i.i.6.i101 = and i64 %37, %36
  %xor.i23.i.6.i102 = xor i64 %add3.i.6.i99, %add.i.6.i97
  %xor1.i24.i.6.i103 = xor i64 %add.i.6.i97, %36
  %or.i25.i.6.i104 = or i64 %xor.i23.i.6.i102, %xor1.i24.i.6.i103
  %xor2.i26.i.6.i105 = xor i64 %or.i25.i.6.i104, %add3.i.6.i99
  %shr.i30.i.6.i106 = or i64 %xor2.i26.i.6.i105, %xor2.i.i.6.i101
  %or29.i.6.i107 = lshr i64 %shr.i30.i.6.i106, 63
  %38 = load i64, i64* %arrayidx.i.7.i, align 8, !tbaa !3
  %factor = shl i64 %38, 1
  %add3.i.7.i111 = or i64 %or29.i.6.i107, %factor
  %arrayidx5.i.7.i112 = getelementptr inbounds [8 x i64], [8 x i64]* %t3, i64 0, i64 7
  store i64 %add3.i.7.i111, i64* %arrayidx5.i.7.i112, align 8, !tbaa !3
  %arraydecay17 = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 0, i64 0
  %39 = bitcast [16 x i64]* %temp.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %39) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %39, i8 0, i64 128, i1 false) #10
  %arraydecay.i114 = getelementptr inbounds [16 x i64], [16 x i64]* %temp.i, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay3, i64* nonnull %arraydecay8, i64* nonnull %arraydecay.i114, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i114, i64* %arraydecay17) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %39) #10
  %arraydecay22 = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %39) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %39, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay13, i64* nonnull %arraydecay2, i64* nonnull %arraydecay.i114, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i114, i64* nonnull %arraydecay22) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %39) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #10
  ret void
}

declare void @mp_sub503_p4(i64*, i64*, i64*) local_unnamed_addr #5

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
define void @fp2mul503_mont([8 x i64]* %a, [8 x i64]* %b, [8 x i64]* %c) local_unnamed_addr #4 {
entry:
  %t1 = alloca [8 x i64], align 16
  %t2 = alloca [8 x i64], align 16
  %tt1 = alloca [16 x i64], align 16
  %tt2 = alloca [16 x i64], align 16
  %tt3 = alloca [16 x i64], align 16
  %0 = bitcast [8 x i64]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #10
  %1 = bitcast [8 x i64]* %t2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #10
  %2 = bitcast [16 x i64]* %tt1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  %3 = bitcast [16 x i64]* %tt2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #10
  %4 = bitcast [16 x i64]* %tt3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %4) #10
  %arraydecay = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 0
  %arraydecay3 = getelementptr inbounds [8 x i64], [8 x i64]* %t1, i64 0, i64 0
  %5 = load i64, i64* %arraydecay, align 8, !tbaa !3
  %6 = load i64, i64* %arraydecay2, align 8, !tbaa !3
  %add3.i.i = add i64 %6, %5
  store i64 %add3.i.i, i64* %arraydecay3, align 16, !tbaa !3
  %xor.i23.i.i = xor i64 %add3.i.i, %5
  %xor1.i24.i.i = xor i64 %6, %5
  %or.i25.i.i = or i64 %xor.i23.i.i, %xor1.i24.i.i
  %xor2.i26.i.i = xor i64 %or.i25.i.i, %add3.i.i
  %or29.i.i = lshr i64 %xor2.i26.i.i, 63
  %arrayidx.i.1.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 1
  %7 = load i64, i64* %arrayidx.i.1.i, align 8, !tbaa !3
  %add.i.1.i = add i64 %or29.i.i, %7
  %arrayidx2.i.1.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 1
  %8 = load i64, i64* %arrayidx2.i.1.i, align 8, !tbaa !3
  %add3.i.1.i = add i64 %add.i.1.i, %8
  %arrayidx5.i.1.i = getelementptr inbounds [8 x i64], [8 x i64]* %t1, i64 0, i64 1
  store i64 %add3.i.1.i, i64* %arrayidx5.i.1.i, align 8, !tbaa !3
  %9 = xor i64 %add.i.1.i, -9223372036854775808
  %xor2.i.i.1.i = and i64 %9, %7
  %xor.i23.i.1.i = xor i64 %add3.i.1.i, %add.i.1.i
  %xor1.i24.i.1.i = xor i64 %add.i.1.i, %8
  %or.i25.i.1.i = or i64 %xor.i23.i.1.i, %xor1.i24.i.1.i
  %xor2.i26.i.1.i = xor i64 %or.i25.i.1.i, %add3.i.1.i
  %shr.i30.i.1.i = or i64 %xor2.i26.i.1.i, %xor2.i.i.1.i
  %or29.i.1.i = lshr i64 %shr.i30.i.1.i, 63
  %arrayidx.i.2.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 2
  %10 = load i64, i64* %arrayidx.i.2.i, align 8, !tbaa !3
  %add.i.2.i = add i64 %or29.i.1.i, %10
  %arrayidx2.i.2.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 2
  %11 = load i64, i64* %arrayidx2.i.2.i, align 8, !tbaa !3
  %add3.i.2.i = add i64 %add.i.2.i, %11
  %arrayidx5.i.2.i = getelementptr inbounds [8 x i64], [8 x i64]* %t1, i64 0, i64 2
  store i64 %add3.i.2.i, i64* %arrayidx5.i.2.i, align 16, !tbaa !3
  %12 = xor i64 %add.i.2.i, -9223372036854775808
  %xor2.i.i.2.i = and i64 %12, %10
  %xor.i23.i.2.i = xor i64 %add3.i.2.i, %add.i.2.i
  %xor1.i24.i.2.i = xor i64 %add.i.2.i, %11
  %or.i25.i.2.i = or i64 %xor.i23.i.2.i, %xor1.i24.i.2.i
  %xor2.i26.i.2.i = xor i64 %or.i25.i.2.i, %add3.i.2.i
  %shr.i30.i.2.i = or i64 %xor2.i26.i.2.i, %xor2.i.i.2.i
  %or29.i.2.i = lshr i64 %shr.i30.i.2.i, 63
  %arrayidx.i.3.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 3
  %13 = load i64, i64* %arrayidx.i.3.i, align 8, !tbaa !3
  %add.i.3.i = add i64 %or29.i.2.i, %13
  %arrayidx2.i.3.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 3
  %14 = load i64, i64* %arrayidx2.i.3.i, align 8, !tbaa !3
  %add3.i.3.i = add i64 %add.i.3.i, %14
  %arrayidx5.i.3.i = getelementptr inbounds [8 x i64], [8 x i64]* %t1, i64 0, i64 3
  store i64 %add3.i.3.i, i64* %arrayidx5.i.3.i, align 8, !tbaa !3
  %15 = xor i64 %add.i.3.i, -9223372036854775808
  %xor2.i.i.3.i = and i64 %15, %13
  %xor.i23.i.3.i = xor i64 %add3.i.3.i, %add.i.3.i
  %xor1.i24.i.3.i = xor i64 %add.i.3.i, %14
  %or.i25.i.3.i = or i64 %xor.i23.i.3.i, %xor1.i24.i.3.i
  %xor2.i26.i.3.i = xor i64 %or.i25.i.3.i, %add3.i.3.i
  %shr.i30.i.3.i = or i64 %xor2.i26.i.3.i, %xor2.i.i.3.i
  %or29.i.3.i = lshr i64 %shr.i30.i.3.i, 63
  %arrayidx.i.4.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 4
  %16 = load i64, i64* %arrayidx.i.4.i, align 8, !tbaa !3
  %add.i.4.i = add i64 %or29.i.3.i, %16
  %arrayidx2.i.4.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 4
  %17 = load i64, i64* %arrayidx2.i.4.i, align 8, !tbaa !3
  %add3.i.4.i = add i64 %add.i.4.i, %17
  %arrayidx5.i.4.i = getelementptr inbounds [8 x i64], [8 x i64]* %t1, i64 0, i64 4
  store i64 %add3.i.4.i, i64* %arrayidx5.i.4.i, align 16, !tbaa !3
  %18 = xor i64 %add.i.4.i, -9223372036854775808
  %xor2.i.i.4.i = and i64 %18, %16
  %xor.i23.i.4.i = xor i64 %add3.i.4.i, %add.i.4.i
  %xor1.i24.i.4.i = xor i64 %add.i.4.i, %17
  %or.i25.i.4.i = or i64 %xor.i23.i.4.i, %xor1.i24.i.4.i
  %xor2.i26.i.4.i = xor i64 %or.i25.i.4.i, %add3.i.4.i
  %shr.i30.i.4.i = or i64 %xor2.i26.i.4.i, %xor2.i.i.4.i
  %or29.i.4.i = lshr i64 %shr.i30.i.4.i, 63
  %arrayidx.i.5.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 5
  %19 = load i64, i64* %arrayidx.i.5.i, align 8, !tbaa !3
  %add.i.5.i = add i64 %or29.i.4.i, %19
  %arrayidx2.i.5.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 5
  %20 = load i64, i64* %arrayidx2.i.5.i, align 8, !tbaa !3
  %add3.i.5.i = add i64 %add.i.5.i, %20
  %arrayidx5.i.5.i = getelementptr inbounds [8 x i64], [8 x i64]* %t1, i64 0, i64 5
  store i64 %add3.i.5.i, i64* %arrayidx5.i.5.i, align 8, !tbaa !3
  %21 = xor i64 %add.i.5.i, -9223372036854775808
  %xor2.i.i.5.i = and i64 %21, %19
  %xor.i23.i.5.i = xor i64 %add3.i.5.i, %add.i.5.i
  %xor1.i24.i.5.i = xor i64 %add.i.5.i, %20
  %or.i25.i.5.i = or i64 %xor.i23.i.5.i, %xor1.i24.i.5.i
  %xor2.i26.i.5.i = xor i64 %or.i25.i.5.i, %add3.i.5.i
  %shr.i30.i.5.i = or i64 %xor2.i26.i.5.i, %xor2.i.i.5.i
  %or29.i.5.i = lshr i64 %shr.i30.i.5.i, 63
  %arrayidx.i.6.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 6
  %22 = load i64, i64* %arrayidx.i.6.i, align 8, !tbaa !3
  %add.i.6.i = add i64 %or29.i.5.i, %22
  %arrayidx2.i.6.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 6
  %23 = load i64, i64* %arrayidx2.i.6.i, align 8, !tbaa !3
  %add3.i.6.i = add i64 %add.i.6.i, %23
  %arrayidx5.i.6.i = getelementptr inbounds [8 x i64], [8 x i64]* %t1, i64 0, i64 6
  store i64 %add3.i.6.i, i64* %arrayidx5.i.6.i, align 16, !tbaa !3
  %24 = xor i64 %add.i.6.i, -9223372036854775808
  %xor2.i.i.6.i = and i64 %24, %22
  %xor.i23.i.6.i = xor i64 %add3.i.6.i, %add.i.6.i
  %xor1.i24.i.6.i = xor i64 %add.i.6.i, %23
  %or.i25.i.6.i = or i64 %xor.i23.i.6.i, %xor1.i24.i.6.i
  %xor2.i26.i.6.i = xor i64 %or.i25.i.6.i, %add3.i.6.i
  %shr.i30.i.6.i = or i64 %xor2.i26.i.6.i, %xor2.i.i.6.i
  %or29.i.6.i = lshr i64 %shr.i30.i.6.i, 63
  %arrayidx.i.7.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 7
  %25 = load i64, i64* %arrayidx.i.7.i, align 8, !tbaa !3
  %arrayidx2.i.7.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 7
  %26 = load i64, i64* %arrayidx2.i.7.i, align 8, !tbaa !3
  %add.i.7.i = add i64 %26, %25
  %add3.i.7.i = add i64 %add.i.7.i, %or29.i.6.i
  %arrayidx5.i.7.i = getelementptr inbounds [8 x i64], [8 x i64]* %t1, i64 0, i64 7
  store i64 %add3.i.7.i, i64* %arrayidx5.i.7.i, align 8, !tbaa !3
  %arraydecay5 = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 1, i64 0
  %arraydecay8 = getelementptr inbounds [8 x i64], [8 x i64]* %t2, i64 0, i64 0
  %27 = load i64, i64* %arraydecay5, align 8, !tbaa !3
  %28 = load i64, i64* %arraydecay7, align 8, !tbaa !3
  %add3.i.i324 = add i64 %28, %27
  store i64 %add3.i.i324, i64* %arraydecay8, align 16, !tbaa !3
  %xor.i23.i.i325 = xor i64 %add3.i.i324, %27
  %xor1.i24.i.i326 = xor i64 %28, %27
  %or.i25.i.i327 = or i64 %xor.i23.i.i325, %xor1.i24.i.i326
  %xor2.i26.i.i328 = xor i64 %or.i25.i.i327, %add3.i.i324
  %or29.i.i329 = lshr i64 %xor2.i26.i.i328, 63
  %arrayidx.i.1.i330 = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 0, i64 1
  %29 = load i64, i64* %arrayidx.i.1.i330, align 8, !tbaa !3
  %add.i.1.i331 = add i64 %or29.i.i329, %29
  %arrayidx2.i.1.i332 = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 1, i64 1
  %30 = load i64, i64* %arrayidx2.i.1.i332, align 8, !tbaa !3
  %add3.i.1.i333 = add i64 %add.i.1.i331, %30
  %arrayidx5.i.1.i334 = getelementptr inbounds [8 x i64], [8 x i64]* %t2, i64 0, i64 1
  store i64 %add3.i.1.i333, i64* %arrayidx5.i.1.i334, align 8, !tbaa !3
  %31 = xor i64 %add.i.1.i331, -9223372036854775808
  %xor2.i.i.1.i335 = and i64 %31, %29
  %xor.i23.i.1.i336 = xor i64 %add3.i.1.i333, %add.i.1.i331
  %xor1.i24.i.1.i337 = xor i64 %add.i.1.i331, %30
  %or.i25.i.1.i338 = or i64 %xor.i23.i.1.i336, %xor1.i24.i.1.i337
  %xor2.i26.i.1.i339 = xor i64 %or.i25.i.1.i338, %add3.i.1.i333
  %shr.i30.i.1.i340 = or i64 %xor2.i26.i.1.i339, %xor2.i.i.1.i335
  %or29.i.1.i341 = lshr i64 %shr.i30.i.1.i340, 63
  %arrayidx.i.2.i342 = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 0, i64 2
  %32 = load i64, i64* %arrayidx.i.2.i342, align 8, !tbaa !3
  %add.i.2.i343 = add i64 %or29.i.1.i341, %32
  %arrayidx2.i.2.i344 = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 1, i64 2
  %33 = load i64, i64* %arrayidx2.i.2.i344, align 8, !tbaa !3
  %add3.i.2.i345 = add i64 %add.i.2.i343, %33
  %arrayidx5.i.2.i346 = getelementptr inbounds [8 x i64], [8 x i64]* %t2, i64 0, i64 2
  store i64 %add3.i.2.i345, i64* %arrayidx5.i.2.i346, align 16, !tbaa !3
  %34 = xor i64 %add.i.2.i343, -9223372036854775808
  %xor2.i.i.2.i347 = and i64 %34, %32
  %xor.i23.i.2.i348 = xor i64 %add3.i.2.i345, %add.i.2.i343
  %xor1.i24.i.2.i349 = xor i64 %add.i.2.i343, %33
  %or.i25.i.2.i350 = or i64 %xor.i23.i.2.i348, %xor1.i24.i.2.i349
  %xor2.i26.i.2.i351 = xor i64 %or.i25.i.2.i350, %add3.i.2.i345
  %shr.i30.i.2.i352 = or i64 %xor2.i26.i.2.i351, %xor2.i.i.2.i347
  %or29.i.2.i353 = lshr i64 %shr.i30.i.2.i352, 63
  %arrayidx.i.3.i354 = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 0, i64 3
  %35 = load i64, i64* %arrayidx.i.3.i354, align 8, !tbaa !3
  %add.i.3.i355 = add i64 %or29.i.2.i353, %35
  %arrayidx2.i.3.i356 = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 1, i64 3
  %36 = load i64, i64* %arrayidx2.i.3.i356, align 8, !tbaa !3
  %add3.i.3.i357 = add i64 %add.i.3.i355, %36
  %arrayidx5.i.3.i358 = getelementptr inbounds [8 x i64], [8 x i64]* %t2, i64 0, i64 3
  store i64 %add3.i.3.i357, i64* %arrayidx5.i.3.i358, align 8, !tbaa !3
  %37 = xor i64 %add.i.3.i355, -9223372036854775808
  %xor2.i.i.3.i359 = and i64 %37, %35
  %xor.i23.i.3.i360 = xor i64 %add3.i.3.i357, %add.i.3.i355
  %xor1.i24.i.3.i361 = xor i64 %add.i.3.i355, %36
  %or.i25.i.3.i362 = or i64 %xor.i23.i.3.i360, %xor1.i24.i.3.i361
  %xor2.i26.i.3.i363 = xor i64 %or.i25.i.3.i362, %add3.i.3.i357
  %shr.i30.i.3.i364 = or i64 %xor2.i26.i.3.i363, %xor2.i.i.3.i359
  %or29.i.3.i365 = lshr i64 %shr.i30.i.3.i364, 63
  %arrayidx.i.4.i366 = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 0, i64 4
  %38 = load i64, i64* %arrayidx.i.4.i366, align 8, !tbaa !3
  %add.i.4.i367 = add i64 %or29.i.3.i365, %38
  %arrayidx2.i.4.i368 = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 1, i64 4
  %39 = load i64, i64* %arrayidx2.i.4.i368, align 8, !tbaa !3
  %add3.i.4.i369 = add i64 %add.i.4.i367, %39
  %arrayidx5.i.4.i370 = getelementptr inbounds [8 x i64], [8 x i64]* %t2, i64 0, i64 4
  store i64 %add3.i.4.i369, i64* %arrayidx5.i.4.i370, align 16, !tbaa !3
  %40 = xor i64 %add.i.4.i367, -9223372036854775808
  %xor2.i.i.4.i371 = and i64 %40, %38
  %xor.i23.i.4.i372 = xor i64 %add3.i.4.i369, %add.i.4.i367
  %xor1.i24.i.4.i373 = xor i64 %add.i.4.i367, %39
  %or.i25.i.4.i374 = or i64 %xor.i23.i.4.i372, %xor1.i24.i.4.i373
  %xor2.i26.i.4.i375 = xor i64 %or.i25.i.4.i374, %add3.i.4.i369
  %shr.i30.i.4.i376 = or i64 %xor2.i26.i.4.i375, %xor2.i.i.4.i371
  %or29.i.4.i377 = lshr i64 %shr.i30.i.4.i376, 63
  %arrayidx.i.5.i378 = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 0, i64 5
  %41 = load i64, i64* %arrayidx.i.5.i378, align 8, !tbaa !3
  %add.i.5.i379 = add i64 %or29.i.4.i377, %41
  %arrayidx2.i.5.i380 = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 1, i64 5
  %42 = load i64, i64* %arrayidx2.i.5.i380, align 8, !tbaa !3
  %add3.i.5.i381 = add i64 %add.i.5.i379, %42
  %arrayidx5.i.5.i382 = getelementptr inbounds [8 x i64], [8 x i64]* %t2, i64 0, i64 5
  store i64 %add3.i.5.i381, i64* %arrayidx5.i.5.i382, align 8, !tbaa !3
  %43 = xor i64 %add.i.5.i379, -9223372036854775808
  %xor2.i.i.5.i383 = and i64 %43, %41
  %xor.i23.i.5.i384 = xor i64 %add3.i.5.i381, %add.i.5.i379
  %xor1.i24.i.5.i385 = xor i64 %add.i.5.i379, %42
  %or.i25.i.5.i386 = or i64 %xor.i23.i.5.i384, %xor1.i24.i.5.i385
  %xor2.i26.i.5.i387 = xor i64 %or.i25.i.5.i386, %add3.i.5.i381
  %shr.i30.i.5.i388 = or i64 %xor2.i26.i.5.i387, %xor2.i.i.5.i383
  %or29.i.5.i389 = lshr i64 %shr.i30.i.5.i388, 63
  %arrayidx.i.6.i390 = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 0, i64 6
  %44 = load i64, i64* %arrayidx.i.6.i390, align 8, !tbaa !3
  %add.i.6.i391 = add i64 %or29.i.5.i389, %44
  %arrayidx2.i.6.i392 = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 1, i64 6
  %45 = load i64, i64* %arrayidx2.i.6.i392, align 8, !tbaa !3
  %add3.i.6.i393 = add i64 %add.i.6.i391, %45
  %arrayidx5.i.6.i394 = getelementptr inbounds [8 x i64], [8 x i64]* %t2, i64 0, i64 6
  store i64 %add3.i.6.i393, i64* %arrayidx5.i.6.i394, align 16, !tbaa !3
  %46 = xor i64 %add.i.6.i391, -9223372036854775808
  %xor2.i.i.6.i395 = and i64 %46, %44
  %xor.i23.i.6.i396 = xor i64 %add3.i.6.i393, %add.i.6.i391
  %xor1.i24.i.6.i397 = xor i64 %add.i.6.i391, %45
  %or.i25.i.6.i398 = or i64 %xor.i23.i.6.i396, %xor1.i24.i.6.i397
  %xor2.i26.i.6.i399 = xor i64 %or.i25.i.6.i398, %add3.i.6.i393
  %shr.i30.i.6.i400 = or i64 %xor2.i26.i.6.i399, %xor2.i.i.6.i395
  %or29.i.6.i401 = lshr i64 %shr.i30.i.6.i400, 63
  %arrayidx.i.7.i402 = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 0, i64 7
  %47 = load i64, i64* %arrayidx.i.7.i402, align 8, !tbaa !3
  %arrayidx2.i.7.i404 = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 1, i64 7
  %48 = load i64, i64* %arrayidx2.i.7.i404, align 8, !tbaa !3
  %add.i.7.i403 = add i64 %48, %47
  %add3.i.7.i405 = add i64 %add.i.7.i403, %or29.i.6.i401
  %arrayidx5.i.7.i406 = getelementptr inbounds [8 x i64], [8 x i64]* %t2, i64 0, i64 7
  store i64 %add3.i.7.i405, i64* %arrayidx5.i.7.i406, align 8, !tbaa !3
  %arraydecay13 = getelementptr inbounds [16 x i64], [16 x i64]* %tt1, i64 0, i64 0
  call void @mp_mul(i64* %arraydecay, i64* %arraydecay5, i64* nonnull %arraydecay13, i32 8) #10
  %arraydecay18 = getelementptr inbounds [16 x i64], [16 x i64]* %tt2, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay2, i64* nonnull %arraydecay7, i64* nonnull %arraydecay18, i32 8) #10
  %arraydecay21 = getelementptr inbounds [16 x i64], [16 x i64]* %tt3, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay3, i64* nonnull %arraydecay8, i64* nonnull %arraydecay21, i32 8) #10
  %49 = load i64, i64* %arraydecay21, align 16, !tbaa !3
  %50 = load i64, i64* %arraydecay13, align 16, !tbaa !3
  %sub.i.i61 = sub i64 %49, %50
  %xor.i.i.i62 = xor i64 %50, %49
  %xor1.i.i.i63 = xor i64 %sub.i.i61, %50
  %or.i.i.i64 = or i64 %xor1.i.i.i63, %xor.i.i.i62
  %xor2.i.i.i65 = xor i64 %or.i.i.i64, %49
  %shr.i.i.i66 = lshr i64 %xor2.i.i.i65, 63
  %conv.i.i.i67 = trunc i64 %shr.i.i.i66 to i32
  store i64 %sub.i.i61, i64* %arraydecay21, align 16, !tbaa !3
  %arrayidx.i.1.i68 = getelementptr inbounds [16 x i64], [16 x i64]* %tt3, i64 0, i64 1
  %51 = load i64, i64* %arrayidx.i.1.i68, align 8, !tbaa !3
  %arrayidx2.i.1.i69 = getelementptr inbounds [16 x i64], [16 x i64]* %tt1, i64 0, i64 1
  %52 = load i64, i64* %arrayidx2.i.1.i69, align 8, !tbaa !3
  %sub.i.1.i70 = sub i64 %51, %52
  %xor.i.i.1.i71 = xor i64 %52, %51
  %xor1.i.i.1.i72 = xor i64 %sub.i.1.i70, %52
  %or.i.i.1.i73 = or i64 %xor1.i.i.1.i72, %xor.i.i.1.i71
  %xor2.i.i.1.i74 = xor i64 %or.i.i.1.i73, %51
  %shr.i.i.1.i75 = lshr i64 %xor2.i.i.1.i74, 63
  %conv.i.i.1.i76 = trunc i64 %shr.i.i.1.i75 to i32
  %sub.i.i.i.1.i77 = sub i64 0, %sub.i.1.i70
  %or.i.i.i.1.i78 = or i64 %sub.i.1.i70, %sub.i.i.i.1.i77
  %shr.i.i.i.1.i79 = lshr i64 %or.i.i.i.1.i78, 63
  %conv.i.i.i.1.i80 = trunc i64 %shr.i.i.i.1.i79 to i32
  %xor.i26.i.1.i81 = xor i32 %conv.i.i.i.1.i80, 1
  %and.i.1.i82 = and i32 %xor.i26.i.1.i81, %conv.i.i.i67
  %or.i.1.i83 = or i32 %and.i.1.i82, %conv.i.i.1.i76
  %sub8.i.1.i84 = sub i64 %sub.i.1.i70, %shr.i.i.i66
  store i64 %sub8.i.1.i84, i64* %arrayidx.i.1.i68, align 8, !tbaa !3
  %arrayidx.i.2.i85 = getelementptr inbounds [16 x i64], [16 x i64]* %tt3, i64 0, i64 2
  %53 = load i64, i64* %arrayidx.i.2.i85, align 16, !tbaa !3
  %arrayidx2.i.2.i86 = getelementptr inbounds [16 x i64], [16 x i64]* %tt1, i64 0, i64 2
  %54 = load i64, i64* %arrayidx2.i.2.i86, align 16, !tbaa !3
  %sub.i.2.i87 = sub i64 %53, %54
  %xor.i.i.2.i88 = xor i64 %54, %53
  %xor1.i.i.2.i89 = xor i64 %sub.i.2.i87, %54
  %or.i.i.2.i90 = or i64 %xor1.i.i.2.i89, %xor.i.i.2.i88
  %xor2.i.i.2.i91 = xor i64 %or.i.i.2.i90, %53
  %shr.i.i.2.i92 = lshr i64 %xor2.i.i.2.i91, 63
  %conv.i.i.2.i93 = trunc i64 %shr.i.i.2.i92 to i32
  %sub.i.i.i.2.i94 = sub i64 0, %sub.i.2.i87
  %or.i.i.i.2.i95 = or i64 %sub.i.2.i87, %sub.i.i.i.2.i94
  %shr.i.i.i.2.i96 = lshr i64 %or.i.i.i.2.i95, 63
  %conv.i.i.i.2.i97 = trunc i64 %shr.i.i.i.2.i96 to i32
  %xor.i26.i.2.i98 = xor i32 %conv.i.i.i.2.i97, 1
  %and.i.2.i99 = and i32 %xor.i26.i.2.i98, %or.i.1.i83
  %or.i.2.i100 = or i32 %and.i.2.i99, %conv.i.i.2.i93
  %conv.i.2.i101 = zext i32 %or.i.1.i83 to i64
  %sub8.i.2.i102 = sub i64 %sub.i.2.i87, %conv.i.2.i101
  store i64 %sub8.i.2.i102, i64* %arrayidx.i.2.i85, align 16, !tbaa !3
  %arrayidx.i.3.i103 = getelementptr inbounds [16 x i64], [16 x i64]* %tt3, i64 0, i64 3
  %55 = load i64, i64* %arrayidx.i.3.i103, align 8, !tbaa !3
  %arrayidx2.i.3.i104 = getelementptr inbounds [16 x i64], [16 x i64]* %tt1, i64 0, i64 3
  %56 = load i64, i64* %arrayidx2.i.3.i104, align 8, !tbaa !3
  %sub.i.3.i105 = sub i64 %55, %56
  %xor.i.i.3.i106 = xor i64 %56, %55
  %xor1.i.i.3.i107 = xor i64 %sub.i.3.i105, %56
  %or.i.i.3.i108 = or i64 %xor1.i.i.3.i107, %xor.i.i.3.i106
  %xor2.i.i.3.i109 = xor i64 %or.i.i.3.i108, %55
  %shr.i.i.3.i110 = lshr i64 %xor2.i.i.3.i109, 63
  %conv.i.i.3.i111 = trunc i64 %shr.i.i.3.i110 to i32
  %sub.i.i.i.3.i112 = sub i64 0, %sub.i.3.i105
  %or.i.i.i.3.i113 = or i64 %sub.i.3.i105, %sub.i.i.i.3.i112
  %shr.i.i.i.3.i114 = lshr i64 %or.i.i.i.3.i113, 63
  %conv.i.i.i.3.i115 = trunc i64 %shr.i.i.i.3.i114 to i32
  %xor.i26.i.3.i116 = xor i32 %conv.i.i.i.3.i115, 1
  %and.i.3.i117 = and i32 %xor.i26.i.3.i116, %or.i.2.i100
  %or.i.3.i118 = or i32 %and.i.3.i117, %conv.i.i.3.i111
  %conv.i.3.i119 = zext i32 %or.i.2.i100 to i64
  %sub8.i.3.i120 = sub i64 %sub.i.3.i105, %conv.i.3.i119
  store i64 %sub8.i.3.i120, i64* %arrayidx.i.3.i103, align 8, !tbaa !3
  %arrayidx.i.4.i121 = getelementptr inbounds [16 x i64], [16 x i64]* %tt3, i64 0, i64 4
  %57 = load i64, i64* %arrayidx.i.4.i121, align 16, !tbaa !3
  %arrayidx2.i.4.i122 = getelementptr inbounds [16 x i64], [16 x i64]* %tt1, i64 0, i64 4
  %58 = load i64, i64* %arrayidx2.i.4.i122, align 16, !tbaa !3
  %sub.i.4.i123 = sub i64 %57, %58
  %xor.i.i.4.i124 = xor i64 %58, %57
  %xor1.i.i.4.i125 = xor i64 %sub.i.4.i123, %58
  %or.i.i.4.i126 = or i64 %xor1.i.i.4.i125, %xor.i.i.4.i124
  %xor2.i.i.4.i127 = xor i64 %or.i.i.4.i126, %57
  %shr.i.i.4.i128 = lshr i64 %xor2.i.i.4.i127, 63
  %conv.i.i.4.i129 = trunc i64 %shr.i.i.4.i128 to i32
  %sub.i.i.i.4.i130 = sub i64 0, %sub.i.4.i123
  %or.i.i.i.4.i131 = or i64 %sub.i.4.i123, %sub.i.i.i.4.i130
  %shr.i.i.i.4.i132 = lshr i64 %or.i.i.i.4.i131, 63
  %conv.i.i.i.4.i133 = trunc i64 %shr.i.i.i.4.i132 to i32
  %xor.i26.i.4.i134 = xor i32 %conv.i.i.i.4.i133, 1
  %and.i.4.i135 = and i32 %xor.i26.i.4.i134, %or.i.3.i118
  %or.i.4.i136 = or i32 %and.i.4.i135, %conv.i.i.4.i129
  %conv.i.4.i137 = zext i32 %or.i.3.i118 to i64
  %sub8.i.4.i138 = sub i64 %sub.i.4.i123, %conv.i.4.i137
  store i64 %sub8.i.4.i138, i64* %arrayidx.i.4.i121, align 16, !tbaa !3
  %arrayidx.i.5.i139 = getelementptr inbounds [16 x i64], [16 x i64]* %tt3, i64 0, i64 5
  %59 = load i64, i64* %arrayidx.i.5.i139, align 8, !tbaa !3
  %arrayidx2.i.5.i140 = getelementptr inbounds [16 x i64], [16 x i64]* %tt1, i64 0, i64 5
  %60 = load i64, i64* %arrayidx2.i.5.i140, align 8, !tbaa !3
  %sub.i.5.i141 = sub i64 %59, %60
  %xor.i.i.5.i142 = xor i64 %60, %59
  %xor1.i.i.5.i143 = xor i64 %sub.i.5.i141, %60
  %or.i.i.5.i144 = or i64 %xor1.i.i.5.i143, %xor.i.i.5.i142
  %xor2.i.i.5.i145 = xor i64 %or.i.i.5.i144, %59
  %shr.i.i.5.i146 = lshr i64 %xor2.i.i.5.i145, 63
  %conv.i.i.5.i147 = trunc i64 %shr.i.i.5.i146 to i32
  %sub.i.i.i.5.i148 = sub i64 0, %sub.i.5.i141
  %or.i.i.i.5.i149 = or i64 %sub.i.5.i141, %sub.i.i.i.5.i148
  %shr.i.i.i.5.i150 = lshr i64 %or.i.i.i.5.i149, 63
  %conv.i.i.i.5.i151 = trunc i64 %shr.i.i.i.5.i150 to i32
  %xor.i26.i.5.i152 = xor i32 %conv.i.i.i.5.i151, 1
  %and.i.5.i153 = and i32 %xor.i26.i.5.i152, %or.i.4.i136
  %or.i.5.i154 = or i32 %and.i.5.i153, %conv.i.i.5.i147
  %conv.i.5.i155 = zext i32 %or.i.4.i136 to i64
  %sub8.i.5.i156 = sub i64 %sub.i.5.i141, %conv.i.5.i155
  store i64 %sub8.i.5.i156, i64* %arrayidx.i.5.i139, align 8, !tbaa !3
  %arrayidx.i.6.i157 = getelementptr inbounds [16 x i64], [16 x i64]* %tt3, i64 0, i64 6
  %61 = load i64, i64* %arrayidx.i.6.i157, align 16, !tbaa !3
  %arrayidx2.i.6.i158 = getelementptr inbounds [16 x i64], [16 x i64]* %tt1, i64 0, i64 6
  %62 = load i64, i64* %arrayidx2.i.6.i158, align 16, !tbaa !3
  %sub.i.6.i159 = sub i64 %61, %62
  %xor.i.i.6.i160 = xor i64 %62, %61
  %xor1.i.i.6.i161 = xor i64 %sub.i.6.i159, %62
  %or.i.i.6.i162 = or i64 %xor1.i.i.6.i161, %xor.i.i.6.i160
  %xor2.i.i.6.i163 = xor i64 %or.i.i.6.i162, %61
  %shr.i.i.6.i164 = lshr i64 %xor2.i.i.6.i163, 63
  %conv.i.i.6.i165 = trunc i64 %shr.i.i.6.i164 to i32
  %sub.i.i.i.6.i166 = sub i64 0, %sub.i.6.i159
  %or.i.i.i.6.i167 = or i64 %sub.i.6.i159, %sub.i.i.i.6.i166
  %shr.i.i.i.6.i168 = lshr i64 %or.i.i.i.6.i167, 63
  %conv.i.i.i.6.i169 = trunc i64 %shr.i.i.i.6.i168 to i32
  %xor.i26.i.6.i170 = xor i32 %conv.i.i.i.6.i169, 1
  %and.i.6.i171 = and i32 %xor.i26.i.6.i170, %or.i.5.i154
  %or.i.6.i172 = or i32 %and.i.6.i171, %conv.i.i.6.i165
  %conv.i.6.i173 = zext i32 %or.i.5.i154 to i64
  %sub8.i.6.i174 = sub i64 %sub.i.6.i159, %conv.i.6.i173
  store i64 %sub8.i.6.i174, i64* %arrayidx.i.6.i157, align 16, !tbaa !3
  %arrayidx.i.7.i175 = getelementptr inbounds [16 x i64], [16 x i64]* %tt3, i64 0, i64 7
  %63 = load i64, i64* %arrayidx.i.7.i175, align 8, !tbaa !3
  %arrayidx2.i.7.i176 = getelementptr inbounds [16 x i64], [16 x i64]* %tt1, i64 0, i64 7
  %64 = load i64, i64* %arrayidx2.i.7.i176, align 8, !tbaa !3
  %sub.i.7.i177 = sub i64 %63, %64
  %xor.i.i.7.i178 = xor i64 %64, %63
  %xor1.i.i.7.i179 = xor i64 %sub.i.7.i177, %64
  %or.i.i.7.i180 = or i64 %xor1.i.i.7.i179, %xor.i.i.7.i178
  %xor2.i.i.7.i181 = xor i64 %or.i.i.7.i180, %63
  %shr.i.i.7.i182 = lshr i64 %xor2.i.i.7.i181, 63
  %conv.i.i.7.i183 = trunc i64 %shr.i.i.7.i182 to i32
  %sub.i.i.i.7.i184 = sub i64 0, %sub.i.7.i177
  %or.i.i.i.7.i185 = or i64 %sub.i.7.i177, %sub.i.i.i.7.i184
  %shr.i.i.i.7.i186 = lshr i64 %or.i.i.i.7.i185, 63
  %conv.i.i.i.7.i187 = trunc i64 %shr.i.i.i.7.i186 to i32
  %xor.i26.i.7.i188 = xor i32 %conv.i.i.i.7.i187, 1
  %and.i.7.i189 = and i32 %xor.i26.i.7.i188, %or.i.6.i172
  %or.i.7.i190 = or i32 %and.i.7.i189, %conv.i.i.7.i183
  %conv.i.7.i191 = zext i32 %or.i.6.i172 to i64
  %sub8.i.7.i192 = sub i64 %sub.i.7.i177, %conv.i.7.i191
  store i64 %sub8.i.7.i192, i64* %arrayidx.i.7.i175, align 8, !tbaa !3
  %arrayidx.i.8.i193 = getelementptr inbounds [16 x i64], [16 x i64]* %tt3, i64 0, i64 8
  %65 = load i64, i64* %arrayidx.i.8.i193, align 16, !tbaa !3
  %arrayidx2.i.8.i194 = getelementptr inbounds [16 x i64], [16 x i64]* %tt1, i64 0, i64 8
  %66 = load i64, i64* %arrayidx2.i.8.i194, align 16, !tbaa !3
  %sub.i.8.i195 = sub i64 %65, %66
  %xor.i.i.8.i196 = xor i64 %66, %65
  %xor1.i.i.8.i197 = xor i64 %sub.i.8.i195, %66
  %or.i.i.8.i198 = or i64 %xor1.i.i.8.i197, %xor.i.i.8.i196
  %xor2.i.i.8.i199 = xor i64 %or.i.i.8.i198, %65
  %shr.i.i.8.i200 = lshr i64 %xor2.i.i.8.i199, 63
  %conv.i.i.8.i201 = trunc i64 %shr.i.i.8.i200 to i32
  %sub.i.i.i.8.i202 = sub i64 0, %sub.i.8.i195
  %or.i.i.i.8.i203 = or i64 %sub.i.8.i195, %sub.i.i.i.8.i202
  %shr.i.i.i.8.i204 = lshr i64 %or.i.i.i.8.i203, 63
  %conv.i.i.i.8.i205 = trunc i64 %shr.i.i.i.8.i204 to i32
  %xor.i26.i.8.i206 = xor i32 %conv.i.i.i.8.i205, 1
  %and.i.8.i207 = and i32 %xor.i26.i.8.i206, %or.i.7.i190
  %or.i.8.i208 = or i32 %and.i.8.i207, %conv.i.i.8.i201
  %conv.i.8.i209 = zext i32 %or.i.7.i190 to i64
  %sub8.i.8.i210 = sub i64 %sub.i.8.i195, %conv.i.8.i209
  store i64 %sub8.i.8.i210, i64* %arrayidx.i.8.i193, align 16, !tbaa !3
  %arrayidx.i.9.i211 = getelementptr inbounds [16 x i64], [16 x i64]* %tt3, i64 0, i64 9
  %67 = load i64, i64* %arrayidx.i.9.i211, align 8, !tbaa !3
  %arrayidx2.i.9.i212 = getelementptr inbounds [16 x i64], [16 x i64]* %tt1, i64 0, i64 9
  %68 = load i64, i64* %arrayidx2.i.9.i212, align 8, !tbaa !3
  %sub.i.9.i213 = sub i64 %67, %68
  %xor.i.i.9.i214 = xor i64 %68, %67
  %xor1.i.i.9.i215 = xor i64 %sub.i.9.i213, %68
  %or.i.i.9.i216 = or i64 %xor1.i.i.9.i215, %xor.i.i.9.i214
  %xor2.i.i.9.i217 = xor i64 %or.i.i.9.i216, %67
  %shr.i.i.9.i218 = lshr i64 %xor2.i.i.9.i217, 63
  %conv.i.i.9.i219 = trunc i64 %shr.i.i.9.i218 to i32
  %sub.i.i.i.9.i220 = sub i64 0, %sub.i.9.i213
  %or.i.i.i.9.i221 = or i64 %sub.i.9.i213, %sub.i.i.i.9.i220
  %shr.i.i.i.9.i222 = lshr i64 %or.i.i.i.9.i221, 63
  %conv.i.i.i.9.i223 = trunc i64 %shr.i.i.i.9.i222 to i32
  %xor.i26.i.9.i224 = xor i32 %conv.i.i.i.9.i223, 1
  %and.i.9.i225 = and i32 %xor.i26.i.9.i224, %or.i.8.i208
  %or.i.9.i226 = or i32 %and.i.9.i225, %conv.i.i.9.i219
  %conv.i.9.i227 = zext i32 %or.i.8.i208 to i64
  %sub8.i.9.i228 = sub i64 %sub.i.9.i213, %conv.i.9.i227
  store i64 %sub8.i.9.i228, i64* %arrayidx.i.9.i211, align 8, !tbaa !3
  %arrayidx.i.10.i229 = getelementptr inbounds [16 x i64], [16 x i64]* %tt3, i64 0, i64 10
  %69 = load i64, i64* %arrayidx.i.10.i229, align 16, !tbaa !3
  %arrayidx2.i.10.i230 = getelementptr inbounds [16 x i64], [16 x i64]* %tt1, i64 0, i64 10
  %70 = load i64, i64* %arrayidx2.i.10.i230, align 16, !tbaa !3
  %sub.i.10.i231 = sub i64 %69, %70
  %xor.i.i.10.i232 = xor i64 %70, %69
  %xor1.i.i.10.i233 = xor i64 %sub.i.10.i231, %70
  %or.i.i.10.i234 = or i64 %xor1.i.i.10.i233, %xor.i.i.10.i232
  %xor2.i.i.10.i235 = xor i64 %or.i.i.10.i234, %69
  %shr.i.i.10.i236 = lshr i64 %xor2.i.i.10.i235, 63
  %conv.i.i.10.i237 = trunc i64 %shr.i.i.10.i236 to i32
  %sub.i.i.i.10.i238 = sub i64 0, %sub.i.10.i231
  %or.i.i.i.10.i239 = or i64 %sub.i.10.i231, %sub.i.i.i.10.i238
  %shr.i.i.i.10.i240 = lshr i64 %or.i.i.i.10.i239, 63
  %conv.i.i.i.10.i241 = trunc i64 %shr.i.i.i.10.i240 to i32
  %xor.i26.i.10.i242 = xor i32 %conv.i.i.i.10.i241, 1
  %and.i.10.i243 = and i32 %xor.i26.i.10.i242, %or.i.9.i226
  %or.i.10.i244 = or i32 %and.i.10.i243, %conv.i.i.10.i237
  %conv.i.10.i245 = zext i32 %or.i.9.i226 to i64
  %sub8.i.10.i246 = sub i64 %sub.i.10.i231, %conv.i.10.i245
  store i64 %sub8.i.10.i246, i64* %arrayidx.i.10.i229, align 16, !tbaa !3
  %arrayidx.i.11.i247 = getelementptr inbounds [16 x i64], [16 x i64]* %tt3, i64 0, i64 11
  %71 = load i64, i64* %arrayidx.i.11.i247, align 8, !tbaa !3
  %arrayidx2.i.11.i248 = getelementptr inbounds [16 x i64], [16 x i64]* %tt1, i64 0, i64 11
  %72 = load i64, i64* %arrayidx2.i.11.i248, align 8, !tbaa !3
  %sub.i.11.i249 = sub i64 %71, %72
  %xor.i.i.11.i250 = xor i64 %72, %71
  %xor1.i.i.11.i251 = xor i64 %sub.i.11.i249, %72
  %or.i.i.11.i252 = or i64 %xor1.i.i.11.i251, %xor.i.i.11.i250
  %xor2.i.i.11.i253 = xor i64 %or.i.i.11.i252, %71
  %shr.i.i.11.i254 = lshr i64 %xor2.i.i.11.i253, 63
  %conv.i.i.11.i255 = trunc i64 %shr.i.i.11.i254 to i32
  %sub.i.i.i.11.i256 = sub i64 0, %sub.i.11.i249
  %or.i.i.i.11.i257 = or i64 %sub.i.11.i249, %sub.i.i.i.11.i256
  %shr.i.i.i.11.i258 = lshr i64 %or.i.i.i.11.i257, 63
  %conv.i.i.i.11.i259 = trunc i64 %shr.i.i.i.11.i258 to i32
  %xor.i26.i.11.i260 = xor i32 %conv.i.i.i.11.i259, 1
  %and.i.11.i261 = and i32 %xor.i26.i.11.i260, %or.i.10.i244
  %or.i.11.i262 = or i32 %and.i.11.i261, %conv.i.i.11.i255
  %conv.i.11.i263 = zext i32 %or.i.10.i244 to i64
  %sub8.i.11.i264 = sub i64 %sub.i.11.i249, %conv.i.11.i263
  store i64 %sub8.i.11.i264, i64* %arrayidx.i.11.i247, align 8, !tbaa !3
  %arrayidx.i.12.i265 = getelementptr inbounds [16 x i64], [16 x i64]* %tt3, i64 0, i64 12
  %73 = load i64, i64* %arrayidx.i.12.i265, align 16, !tbaa !3
  %arrayidx2.i.12.i266 = getelementptr inbounds [16 x i64], [16 x i64]* %tt1, i64 0, i64 12
  %74 = load i64, i64* %arrayidx2.i.12.i266, align 16, !tbaa !3
  %sub.i.12.i267 = sub i64 %73, %74
  %xor.i.i.12.i268 = xor i64 %74, %73
  %xor1.i.i.12.i269 = xor i64 %sub.i.12.i267, %74
  %or.i.i.12.i270 = or i64 %xor1.i.i.12.i269, %xor.i.i.12.i268
  %xor2.i.i.12.i271 = xor i64 %or.i.i.12.i270, %73
  %shr.i.i.12.i272 = lshr i64 %xor2.i.i.12.i271, 63
  %conv.i.i.12.i273 = trunc i64 %shr.i.i.12.i272 to i32
  %sub.i.i.i.12.i274 = sub i64 0, %sub.i.12.i267
  %or.i.i.i.12.i275 = or i64 %sub.i.12.i267, %sub.i.i.i.12.i274
  %shr.i.i.i.12.i276 = lshr i64 %or.i.i.i.12.i275, 63
  %conv.i.i.i.12.i277 = trunc i64 %shr.i.i.i.12.i276 to i32
  %xor.i26.i.12.i278 = xor i32 %conv.i.i.i.12.i277, 1
  %and.i.12.i279 = and i32 %xor.i26.i.12.i278, %or.i.11.i262
  %or.i.12.i280 = or i32 %and.i.12.i279, %conv.i.i.12.i273
  %conv.i.12.i281 = zext i32 %or.i.11.i262 to i64
  %sub8.i.12.i282 = sub i64 %sub.i.12.i267, %conv.i.12.i281
  store i64 %sub8.i.12.i282, i64* %arrayidx.i.12.i265, align 16, !tbaa !3
  %arrayidx.i.13.i283 = getelementptr inbounds [16 x i64], [16 x i64]* %tt3, i64 0, i64 13
  %75 = load i64, i64* %arrayidx.i.13.i283, align 8, !tbaa !3
  %arrayidx2.i.13.i284 = getelementptr inbounds [16 x i64], [16 x i64]* %tt1, i64 0, i64 13
  %76 = load i64, i64* %arrayidx2.i.13.i284, align 8, !tbaa !3
  %sub.i.13.i285 = sub i64 %75, %76
  %xor.i.i.13.i286 = xor i64 %76, %75
  %xor1.i.i.13.i287 = xor i64 %sub.i.13.i285, %76
  %or.i.i.13.i288 = or i64 %xor1.i.i.13.i287, %xor.i.i.13.i286
  %xor2.i.i.13.i289 = xor i64 %or.i.i.13.i288, %75
  %shr.i.i.13.i290 = lshr i64 %xor2.i.i.13.i289, 63
  %conv.i.i.13.i291 = trunc i64 %shr.i.i.13.i290 to i32
  %sub.i.i.i.13.i292 = sub i64 0, %sub.i.13.i285
  %or.i.i.i.13.i293 = or i64 %sub.i.13.i285, %sub.i.i.i.13.i292
  %shr.i.i.i.13.i294 = lshr i64 %or.i.i.i.13.i293, 63
  %conv.i.i.i.13.i295 = trunc i64 %shr.i.i.i.13.i294 to i32
  %xor.i26.i.13.i296 = xor i32 %conv.i.i.i.13.i295, 1
  %and.i.13.i297 = and i32 %xor.i26.i.13.i296, %or.i.12.i280
  %or.i.13.i298 = or i32 %and.i.13.i297, %conv.i.i.13.i291
  %conv.i.13.i299 = zext i32 %or.i.12.i280 to i64
  %sub8.i.13.i300 = sub i64 %sub.i.13.i285, %conv.i.13.i299
  store i64 %sub8.i.13.i300, i64* %arrayidx.i.13.i283, align 8, !tbaa !3
  %arrayidx.i.14.i301 = getelementptr inbounds [16 x i64], [16 x i64]* %tt3, i64 0, i64 14
  %77 = load i64, i64* %arrayidx.i.14.i301, align 16, !tbaa !3
  %arrayidx2.i.14.i302 = getelementptr inbounds [16 x i64], [16 x i64]* %tt1, i64 0, i64 14
  %78 = load i64, i64* %arrayidx2.i.14.i302, align 16, !tbaa !3
  %sub.i.14.i303 = sub i64 %77, %78
  %xor.i.i.14.i304 = xor i64 %78, %77
  %xor1.i.i.14.i305 = xor i64 %sub.i.14.i303, %78
  %or.i.i.14.i306 = or i64 %xor1.i.i.14.i305, %xor.i.i.14.i304
  %xor2.i.i.14.i307 = xor i64 %or.i.i.14.i306, %77
  %shr.i.i.14.i308 = lshr i64 %xor2.i.i.14.i307, 63
  %conv.i.i.14.i309 = trunc i64 %shr.i.i.14.i308 to i32
  %sub.i.i.i.14.i310 = sub i64 0, %sub.i.14.i303
  %or.i.i.i.14.i311 = or i64 %sub.i.14.i303, %sub.i.i.i.14.i310
  %shr.i.i.i.14.i312 = lshr i64 %or.i.i.i.14.i311, 63
  %conv.i.i.i.14.i313 = trunc i64 %shr.i.i.i.14.i312 to i32
  %xor.i26.i.14.i314 = xor i32 %conv.i.i.i.14.i313, 1
  %and.i.14.i315 = and i32 %xor.i26.i.14.i314, %or.i.13.i298
  %or.i.14.i316 = or i32 %and.i.14.i315, %conv.i.i.14.i309
  %conv.i.14.i317 = zext i32 %or.i.13.i298 to i64
  %sub8.i.14.i318 = sub i64 %sub.i.14.i303, %conv.i.14.i317
  store i64 %sub8.i.14.i318, i64* %arrayidx.i.14.i301, align 16, !tbaa !3
  %arrayidx.i.15.i319 = getelementptr inbounds [16 x i64], [16 x i64]* %tt3, i64 0, i64 15
  %79 = load i64, i64* %arrayidx.i.15.i319, align 8, !tbaa !3
  %arrayidx2.i.15.i320 = getelementptr inbounds [16 x i64], [16 x i64]* %tt1, i64 0, i64 15
  %80 = load i64, i64* %arrayidx2.i.15.i320, align 8, !tbaa !3
  %sub.i.15.i321 = sub i64 %79, %80
  %conv.i.15.i322 = zext i32 %or.i.14.i316 to i64
  %sub8.i.15.i323 = sub i64 %sub.i.15.i321, %conv.i.15.i322
  store i64 %sub8.i.15.i323, i64* %arrayidx.i.15.i319, align 8, !tbaa !3
  %81 = load i64, i64* %arraydecay18, align 16, !tbaa !3
  %sub.i9.i = sub i64 %sub.i.i61, %81
  %xor.i.i10.i = xor i64 %81, %sub.i.i61
  %xor1.i.i11.i = xor i64 %sub.i9.i, %81
  %or.i.i12.i = or i64 %xor1.i.i11.i, %xor.i.i10.i
  %xor2.i.i13.i = xor i64 %or.i.i12.i, %sub.i.i61
  %shr.i.i14.i = lshr i64 %xor2.i.i13.i, 63
  %conv.i.i15.i = trunc i64 %shr.i.i14.i to i32
  store i64 %sub.i9.i, i64* %arraydecay21, align 16, !tbaa !3
  %arrayidx2.i8.1.i = getelementptr inbounds [16 x i64], [16 x i64]* %tt2, i64 0, i64 1
  %82 = load i64, i64* %arrayidx2.i8.1.i, align 8, !tbaa !3
  %sub.i9.1.i = sub i64 %sub8.i.1.i84, %82
  %xor.i.i10.1.i = xor i64 %82, %sub8.i.1.i84
  %xor1.i.i11.1.i = xor i64 %sub.i9.1.i, %82
  %or.i.i12.1.i = or i64 %xor1.i.i11.1.i, %xor.i.i10.1.i
  %xor2.i.i13.1.i = xor i64 %or.i.i12.1.i, %sub8.i.1.i84
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
  store i64 %sub8.i24.1.i, i64* %arrayidx.i.1.i68, align 8, !tbaa !3
  %arrayidx2.i8.2.i = getelementptr inbounds [16 x i64], [16 x i64]* %tt2, i64 0, i64 2
  %83 = load i64, i64* %arrayidx2.i8.2.i, align 16, !tbaa !3
  %sub.i9.2.i = sub i64 %sub8.i.2.i102, %83
  %xor.i.i10.2.i = xor i64 %83, %sub8.i.2.i102
  %xor1.i.i11.2.i = xor i64 %sub.i9.2.i, %83
  %or.i.i12.2.i = or i64 %xor1.i.i11.2.i, %xor.i.i10.2.i
  %xor2.i.i13.2.i = xor i64 %or.i.i12.2.i, %sub8.i.2.i102
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
  store i64 %sub8.i24.2.i, i64* %arrayidx.i.2.i85, align 16, !tbaa !3
  %arrayidx2.i8.3.i = getelementptr inbounds [16 x i64], [16 x i64]* %tt2, i64 0, i64 3
  %84 = load i64, i64* %arrayidx2.i8.3.i, align 8, !tbaa !3
  %sub.i9.3.i = sub i64 %sub8.i.3.i120, %84
  %xor.i.i10.3.i = xor i64 %84, %sub8.i.3.i120
  %xor1.i.i11.3.i = xor i64 %sub.i9.3.i, %84
  %or.i.i12.3.i = or i64 %xor1.i.i11.3.i, %xor.i.i10.3.i
  %xor2.i.i13.3.i = xor i64 %or.i.i12.3.i, %sub8.i.3.i120
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
  store i64 %sub8.i24.3.i, i64* %arrayidx.i.3.i103, align 8, !tbaa !3
  %arrayidx2.i8.4.i = getelementptr inbounds [16 x i64], [16 x i64]* %tt2, i64 0, i64 4
  %85 = load i64, i64* %arrayidx2.i8.4.i, align 16, !tbaa !3
  %sub.i9.4.i = sub i64 %sub8.i.4.i138, %85
  %xor.i.i10.4.i = xor i64 %85, %sub8.i.4.i138
  %xor1.i.i11.4.i = xor i64 %sub.i9.4.i, %85
  %or.i.i12.4.i = or i64 %xor1.i.i11.4.i, %xor.i.i10.4.i
  %xor2.i.i13.4.i = xor i64 %or.i.i12.4.i, %sub8.i.4.i138
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
  store i64 %sub8.i24.4.i, i64* %arrayidx.i.4.i121, align 16, !tbaa !3
  %arrayidx2.i8.5.i = getelementptr inbounds [16 x i64], [16 x i64]* %tt2, i64 0, i64 5
  %86 = load i64, i64* %arrayidx2.i8.5.i, align 8, !tbaa !3
  %sub.i9.5.i = sub i64 %sub8.i.5.i156, %86
  %xor.i.i10.5.i = xor i64 %86, %sub8.i.5.i156
  %xor1.i.i11.5.i = xor i64 %sub.i9.5.i, %86
  %or.i.i12.5.i = or i64 %xor1.i.i11.5.i, %xor.i.i10.5.i
  %xor2.i.i13.5.i = xor i64 %or.i.i12.5.i, %sub8.i.5.i156
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
  store i64 %sub8.i24.5.i, i64* %arrayidx.i.5.i139, align 8, !tbaa !3
  %arrayidx2.i8.6.i = getelementptr inbounds [16 x i64], [16 x i64]* %tt2, i64 0, i64 6
  %87 = load i64, i64* %arrayidx2.i8.6.i, align 16, !tbaa !3
  %sub.i9.6.i = sub i64 %sub8.i.6.i174, %87
  %xor.i.i10.6.i = xor i64 %87, %sub8.i.6.i174
  %xor1.i.i11.6.i = xor i64 %sub.i9.6.i, %87
  %or.i.i12.6.i = or i64 %xor1.i.i11.6.i, %xor.i.i10.6.i
  %xor2.i.i13.6.i = xor i64 %or.i.i12.6.i, %sub8.i.6.i174
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
  store i64 %sub8.i24.6.i, i64* %arrayidx.i.6.i157, align 16, !tbaa !3
  %arrayidx2.i8.7.i = getelementptr inbounds [16 x i64], [16 x i64]* %tt2, i64 0, i64 7
  %88 = load i64, i64* %arrayidx2.i8.7.i, align 8, !tbaa !3
  %sub.i9.7.i = sub i64 %sub8.i.7.i192, %88
  %xor.i.i10.7.i = xor i64 %88, %sub8.i.7.i192
  %xor1.i.i11.7.i = xor i64 %sub.i9.7.i, %88
  %or.i.i12.7.i = or i64 %xor1.i.i11.7.i, %xor.i.i10.7.i
  %xor2.i.i13.7.i = xor i64 %or.i.i12.7.i, %sub8.i.7.i192
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
  store i64 %sub8.i24.7.i, i64* %arrayidx.i.7.i175, align 8, !tbaa !3
  %arrayidx2.i8.8.i = getelementptr inbounds [16 x i64], [16 x i64]* %tt2, i64 0, i64 8
  %89 = load i64, i64* %arrayidx2.i8.8.i, align 16, !tbaa !3
  %sub.i9.8.i = sub i64 %sub8.i.8.i210, %89
  %xor.i.i10.8.i = xor i64 %89, %sub8.i.8.i210
  %xor1.i.i11.8.i = xor i64 %sub.i9.8.i, %89
  %or.i.i12.8.i = or i64 %xor1.i.i11.8.i, %xor.i.i10.8.i
  %xor2.i.i13.8.i = xor i64 %or.i.i12.8.i, %sub8.i.8.i210
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
  store i64 %sub8.i24.8.i, i64* %arrayidx.i.8.i193, align 16, !tbaa !3
  %arrayidx2.i8.9.i = getelementptr inbounds [16 x i64], [16 x i64]* %tt2, i64 0, i64 9
  %90 = load i64, i64* %arrayidx2.i8.9.i, align 8, !tbaa !3
  %sub.i9.9.i = sub i64 %sub8.i.9.i228, %90
  %xor.i.i10.9.i = xor i64 %90, %sub8.i.9.i228
  %xor1.i.i11.9.i = xor i64 %sub.i9.9.i, %90
  %or.i.i12.9.i = or i64 %xor1.i.i11.9.i, %xor.i.i10.9.i
  %xor2.i.i13.9.i = xor i64 %or.i.i12.9.i, %sub8.i.9.i228
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
  store i64 %sub8.i24.9.i, i64* %arrayidx.i.9.i211, align 8, !tbaa !3
  %arrayidx2.i8.10.i = getelementptr inbounds [16 x i64], [16 x i64]* %tt2, i64 0, i64 10
  %91 = load i64, i64* %arrayidx2.i8.10.i, align 16, !tbaa !3
  %sub.i9.10.i = sub i64 %sub8.i.10.i246, %91
  %xor.i.i10.10.i = xor i64 %91, %sub8.i.10.i246
  %xor1.i.i11.10.i = xor i64 %sub.i9.10.i, %91
  %or.i.i12.10.i = or i64 %xor1.i.i11.10.i, %xor.i.i10.10.i
  %xor2.i.i13.10.i = xor i64 %or.i.i12.10.i, %sub8.i.10.i246
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
  store i64 %sub8.i24.10.i, i64* %arrayidx.i.10.i229, align 16, !tbaa !3
  %arrayidx2.i8.11.i = getelementptr inbounds [16 x i64], [16 x i64]* %tt2, i64 0, i64 11
  %92 = load i64, i64* %arrayidx2.i8.11.i, align 8, !tbaa !3
  %sub.i9.11.i = sub i64 %sub8.i.11.i264, %92
  %xor.i.i10.11.i = xor i64 %92, %sub8.i.11.i264
  %xor1.i.i11.11.i = xor i64 %sub.i9.11.i, %92
  %or.i.i12.11.i = or i64 %xor1.i.i11.11.i, %xor.i.i10.11.i
  %xor2.i.i13.11.i = xor i64 %or.i.i12.11.i, %sub8.i.11.i264
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
  store i64 %sub8.i24.11.i, i64* %arrayidx.i.11.i247, align 8, !tbaa !3
  %arrayidx2.i8.12.i = getelementptr inbounds [16 x i64], [16 x i64]* %tt2, i64 0, i64 12
  %93 = load i64, i64* %arrayidx2.i8.12.i, align 16, !tbaa !3
  %sub.i9.12.i = sub i64 %sub8.i.12.i282, %93
  %xor.i.i10.12.i = xor i64 %93, %sub8.i.12.i282
  %xor1.i.i11.12.i = xor i64 %sub.i9.12.i, %93
  %or.i.i12.12.i = or i64 %xor1.i.i11.12.i, %xor.i.i10.12.i
  %xor2.i.i13.12.i = xor i64 %or.i.i12.12.i, %sub8.i.12.i282
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
  store i64 %sub8.i24.12.i, i64* %arrayidx.i.12.i265, align 16, !tbaa !3
  %arrayidx2.i8.13.i = getelementptr inbounds [16 x i64], [16 x i64]* %tt2, i64 0, i64 13
  %94 = load i64, i64* %arrayidx2.i8.13.i, align 8, !tbaa !3
  %sub.i9.13.i = sub i64 %sub8.i.13.i300, %94
  %xor.i.i10.13.i = xor i64 %94, %sub8.i.13.i300
  %xor1.i.i11.13.i = xor i64 %sub.i9.13.i, %94
  %or.i.i12.13.i = or i64 %xor1.i.i11.13.i, %xor.i.i10.13.i
  %xor2.i.i13.13.i = xor i64 %or.i.i12.13.i, %sub8.i.13.i300
  %shr.i.i14.13.i = lshr i64 %xor2.i.i13.13.i, 63
  %conv.i.i15.13.i = trunc i64 %shr.i.i14.13.i to i32
  %sub.i.i.i16.13.i = sub i64 0, %sub.i9.13.i
  %or.i.i.i17.13.i = or i64 %sub.i9.13.i, %sub.i.i.i16.13.i
  %shr.i.i.i18.13.i = lshr i64 %or.i.i.i17.13.i, 63
  %conv.i.i.i19.13.i = trunc i64 %shr.i.i.i18.13.i to i32
  %xor.i26.i20.13.i = xor i32 %conv.i.i.i19.13.i, 1
  %and.i21.13.i = and i32 %xor.i26.i20.13.i, %or.i22.12.i
  %or.i22.13.i = or i32 %and.i21.13.i, %conv.i.i15.13.i
  %conv.i23.13.i = zext i32 %or.i22.12.i to i64
  %sub8.i24.13.i = sub i64 %sub.i9.13.i, %conv.i23.13.i
  store i64 %sub8.i24.13.i, i64* %arrayidx.i.13.i283, align 8, !tbaa !3
  %arrayidx2.i8.14.i = getelementptr inbounds [16 x i64], [16 x i64]* %tt2, i64 0, i64 14
  %95 = load i64, i64* %arrayidx2.i8.14.i, align 16, !tbaa !3
  %sub.i9.14.i = sub i64 %sub8.i.14.i318, %95
  %xor.i.i10.14.i = xor i64 %95, %sub8.i.14.i318
  %xor1.i.i11.14.i = xor i64 %sub.i9.14.i, %95
  %or.i.i12.14.i = or i64 %xor1.i.i11.14.i, %xor.i.i10.14.i
  %xor2.i.i13.14.i = xor i64 %or.i.i12.14.i, %sub8.i.14.i318
  %shr.i.i14.14.i = lshr i64 %xor2.i.i13.14.i, 63
  %conv.i.i15.14.i = trunc i64 %shr.i.i14.14.i to i32
  %sub.i.i.i16.14.i = sub i64 0, %sub.i9.14.i
  %or.i.i.i17.14.i = or i64 %sub.i9.14.i, %sub.i.i.i16.14.i
  %shr.i.i.i18.14.i = lshr i64 %or.i.i.i17.14.i, 63
  %conv.i.i.i19.14.i = trunc i64 %shr.i.i.i18.14.i to i32
  %xor.i26.i20.14.i = xor i32 %conv.i.i.i19.14.i, 1
  %and.i21.14.i = and i32 %xor.i26.i20.14.i, %or.i22.13.i
  %or.i22.14.i = or i32 %and.i21.14.i, %conv.i.i15.14.i
  %conv.i23.14.i = zext i32 %or.i22.13.i to i64
  %sub8.i24.14.i = sub i64 %sub.i9.14.i, %conv.i23.14.i
  store i64 %sub8.i24.14.i, i64* %arrayidx.i.14.i301, align 16, !tbaa !3
  %arrayidx2.i8.15.i = getelementptr inbounds [16 x i64], [16 x i64]* %tt2, i64 0, i64 15
  %96 = load i64, i64* %arrayidx2.i8.15.i, align 8, !tbaa !3
  %sub.i9.15.i = sub i64 %sub8.i.15.i323, %96
  %conv.i23.15.i = zext i32 %or.i22.14.i to i64
  %sub8.i24.15.i = sub i64 %sub.i9.15.i, %conv.i23.15.i
  store i64 %sub8.i24.15.i, i64* %arrayidx.i.15.i319, align 8, !tbaa !3
  %sub.i.i = sub i64 %50, %81
  %xor.i.i.i = xor i64 %81, %50
  %xor1.i.i.i = xor i64 %sub.i.i, %81
  %or.i.i.i = or i64 %xor1.i.i.i, %xor.i.i.i
  %xor2.i.i.i = xor i64 %or.i.i.i, %50
  %shr.i.i.i = lshr i64 %xor2.i.i.i, 63
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  store i64 %sub.i.i, i64* %arraydecay13, align 16, !tbaa !3
  %sub.i.1.i = sub i64 %52, %82
  %xor.i.i.1.i = xor i64 %82, %52
  %xor1.i.i.1.i = xor i64 %sub.i.1.i, %82
  %or.i.i.1.i = or i64 %xor1.i.i.1.i, %xor.i.i.1.i
  %xor2.i.i.1.i43 = xor i64 %or.i.i.1.i, %52
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
  store i64 %sub8.i.1.i, i64* %arrayidx2.i.1.i69, align 8, !tbaa !3
  %sub.i.2.i = sub i64 %54, %83
  %xor.i.i.2.i = xor i64 %83, %54
  %xor1.i.i.2.i = xor i64 %sub.i.2.i, %83
  %or.i.i.2.i = or i64 %xor1.i.i.2.i, %xor.i.i.2.i
  %xor2.i.i.2.i46 = xor i64 %or.i.i.2.i, %54
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
  store i64 %sub8.i.2.i, i64* %arrayidx2.i.2.i86, align 16, !tbaa !3
  %sub.i.3.i = sub i64 %56, %84
  %xor.i.i.3.i = xor i64 %84, %56
  %xor1.i.i.3.i = xor i64 %sub.i.3.i, %84
  %or.i.i.3.i = or i64 %xor1.i.i.3.i, %xor.i.i.3.i
  %xor2.i.i.3.i49 = xor i64 %or.i.i.3.i, %56
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
  store i64 %sub8.i.3.i, i64* %arrayidx2.i.3.i104, align 8, !tbaa !3
  %sub.i.4.i = sub i64 %58, %85
  %xor.i.i.4.i = xor i64 %85, %58
  %xor1.i.i.4.i = xor i64 %sub.i.4.i, %85
  %or.i.i.4.i = or i64 %xor1.i.i.4.i, %xor.i.i.4.i
  %xor2.i.i.4.i52 = xor i64 %or.i.i.4.i, %58
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
  store i64 %sub8.i.4.i, i64* %arrayidx2.i.4.i122, align 16, !tbaa !3
  %sub.i.5.i = sub i64 %60, %86
  %xor.i.i.5.i = xor i64 %86, %60
  %xor1.i.i.5.i = xor i64 %sub.i.5.i, %86
  %or.i.i.5.i = or i64 %xor1.i.i.5.i, %xor.i.i.5.i
  %xor2.i.i.5.i55 = xor i64 %or.i.i.5.i, %60
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
  store i64 %sub8.i.5.i, i64* %arrayidx2.i.5.i140, align 8, !tbaa !3
  %sub.i.6.i = sub i64 %62, %87
  %xor.i.i.6.i = xor i64 %87, %62
  %xor1.i.i.6.i = xor i64 %sub.i.6.i, %87
  %or.i.i.6.i = or i64 %xor1.i.i.6.i, %xor.i.i.6.i
  %xor2.i.i.6.i58 = xor i64 %or.i.i.6.i, %62
  %shr.i.i.6.i = lshr i64 %xor2.i.i.6.i58, 63
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
  store i64 %sub8.i.6.i, i64* %arrayidx2.i.6.i158, align 16, !tbaa !3
  %sub.i.7.i = sub i64 %64, %88
  %xor.i.i.7.i = xor i64 %88, %64
  %xor1.i.i.7.i = xor i64 %sub.i.7.i, %88
  %or.i.i.7.i = or i64 %xor1.i.i.7.i, %xor.i.i.7.i
  %xor2.i.i.7.i = xor i64 %or.i.i.7.i, %64
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
  store i64 %sub8.i.7.i, i64* %arrayidx2.i.7.i176, align 8, !tbaa !3
  %sub.i.8.i = sub i64 %66, %89
  %xor.i.i.8.i = xor i64 %89, %66
  %xor1.i.i.8.i = xor i64 %sub.i.8.i, %89
  %or.i.i.8.i = or i64 %xor1.i.i.8.i, %xor.i.i.8.i
  %xor2.i.i.8.i = xor i64 %or.i.i.8.i, %66
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
  store i64 %sub8.i.8.i, i64* %arrayidx2.i.8.i194, align 16, !tbaa !3
  %sub.i.9.i = sub i64 %68, %90
  %xor.i.i.9.i = xor i64 %90, %68
  %xor1.i.i.9.i = xor i64 %sub.i.9.i, %90
  %or.i.i.9.i = or i64 %xor1.i.i.9.i, %xor.i.i.9.i
  %xor2.i.i.9.i = xor i64 %or.i.i.9.i, %68
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
  store i64 %sub8.i.9.i, i64* %arrayidx2.i.9.i212, align 8, !tbaa !3
  %sub.i.10.i = sub i64 %70, %91
  %xor.i.i.10.i = xor i64 %91, %70
  %xor1.i.i.10.i = xor i64 %sub.i.10.i, %91
  %or.i.i.10.i = or i64 %xor1.i.i.10.i, %xor.i.i.10.i
  %xor2.i.i.10.i = xor i64 %or.i.i.10.i, %70
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
  store i64 %sub8.i.10.i, i64* %arrayidx2.i.10.i230, align 16, !tbaa !3
  %sub.i.11.i = sub i64 %72, %92
  %xor.i.i.11.i = xor i64 %92, %72
  %xor1.i.i.11.i = xor i64 %sub.i.11.i, %92
  %or.i.i.11.i = or i64 %xor1.i.i.11.i, %xor.i.i.11.i
  %xor2.i.i.11.i = xor i64 %or.i.i.11.i, %72
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
  store i64 %sub8.i.11.i, i64* %arrayidx2.i.11.i248, align 8, !tbaa !3
  %sub.i.12.i = sub i64 %74, %93
  %xor.i.i.12.i = xor i64 %93, %74
  %xor1.i.i.12.i = xor i64 %sub.i.12.i, %93
  %or.i.i.12.i = or i64 %xor1.i.i.12.i, %xor.i.i.12.i
  %xor2.i.i.12.i = xor i64 %or.i.i.12.i, %74
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
  store i64 %sub8.i.12.i, i64* %arrayidx2.i.12.i266, align 16, !tbaa !3
  %sub.i.13.i = sub i64 %76, %94
  %xor.i.i.13.i = xor i64 %94, %76
  %xor1.i.i.13.i = xor i64 %sub.i.13.i, %94
  %or.i.i.13.i = or i64 %xor1.i.i.13.i, %xor.i.i.13.i
  %xor2.i.i.13.i = xor i64 %or.i.i.13.i, %76
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
  %sub.i.14.i = sub i64 %78, %95
  %xor.i.i.14.i = xor i64 %95, %78
  %xor1.i.i.14.i = xor i64 %sub.i.14.i, %95
  %or.i.i.14.i = or i64 %xor1.i.i.14.i, %xor.i.i.14.i
  %xor2.i.i.14.i = xor i64 %or.i.i.14.i, %78
  %shr.i.i.14.i = lshr i64 %xor2.i.i.14.i, 63
  %conv.i.i.14.i = trunc i64 %shr.i.i.14.i to i32
  %sub.i.i.i.14.i = sub i64 0, %sub.i.14.i
  %or.i.i.i.14.i = or i64 %sub.i.14.i, %sub.i.i.i.14.i
  %shr.i.i.i.14.i = lshr i64 %or.i.i.i.14.i, 63
  %conv.i.i.i.14.i = trunc i64 %shr.i.i.i.14.i to i32
  %xor.i26.i.14.i = xor i32 %conv.i.i.i.14.i, 1
  %and.i.14.i = and i32 %xor.i26.i.14.i, %or.i.13.i
  %or.i.14.i = or i32 %and.i.14.i, %conv.i.i.14.i
  %conv.i.14.i = zext i32 %or.i.13.i to i64
  %sub8.i.14.i = sub i64 %sub.i.14.i, %conv.i.14.i
  %sub.i.15.i = sub i64 %80, %96
  %xor.i.i.15.i = xor i64 %96, %80
  %xor1.i.i.15.i = xor i64 %sub.i.15.i, %96
  %or.i.i.15.i = or i64 %xor1.i.i.15.i, %xor.i.i.15.i
  %xor2.i.i.15.i = xor i64 %or.i.i.15.i, %80
  %shr.i.i.15.i = lshr i64 %xor2.i.i.15.i, 63
  %conv.i.i.15.i = trunc i64 %shr.i.i.15.i to i32
  %sub.i.i.i.15.i = sub i64 0, %sub.i.15.i
  %or.i.i.i.15.i = or i64 %sub.i.15.i, %sub.i.i.i.15.i
  %shr.i.i.i.15.i = lshr i64 %or.i.i.i.15.i, 63
  %conv.i.i.i.15.i = trunc i64 %shr.i.i.i.15.i to i32
  %xor.i26.i.15.i = xor i32 %conv.i.i.i.15.i, 1
  %and.i.15.i = and i32 %xor.i26.i.15.i, %or.i.14.i
  %or.i.15.i = or i32 %and.i.15.i, %conv.i.i.15.i
  %conv.i.15.i = zext i32 %or.i.14.i to i64
  %sub8.i.15.i = sub i64 %sub.i.15.i, %conv.i.15.i
  %conv.i = zext i32 %or.i.15.i to i64
  %sub.i = sub nsw i64 0, %conv.i
  %and.3.i = and i64 %sub.i, -6052837899185946625
  %and.4.i = and i64 %sub.i, 1371447078966912928
  %and.5.i = and i64 %sub.i, 1989455001339985327
  %and.6.i = and i64 %sub.i, 6937169319750509776
  %and.7.i = and i64 %sub.i, 18127602061483550
  %add3.i.i.i = sub i64 %sub8.i.8.i, %conv.i
  store i64 %add3.i.i.i, i64* %arrayidx2.i.8.i194, align 16, !tbaa !3
  %xor.i23.i.i.i = xor i64 %add3.i.i.i, %sub8.i.8.i
  %xor1.i24.i.i.i = xor i64 %sub8.i.8.i, %sub.i
  %or.i25.i.i.i = or i64 %xor.i23.i.i.i, %xor1.i24.i.i.i
  %xor2.i26.i.i.i = xor i64 %or.i25.i.i.i, %add3.i.i.i
  %or29.i.i.i = lshr i64 %xor2.i26.i.i.i, 63
  %add.i.1.i.i = add i64 %or29.i.i.i, %sub8.i.9.i
  %add3.i.1.i.i = sub i64 %add.i.1.i.i, %conv.i
  store i64 %add3.i.1.i.i, i64* %arrayidx2.i.9.i212, align 8, !tbaa !3
  %97 = xor i64 %add.i.1.i.i, -9223372036854775808
  %xor2.i.i.1.i.i = and i64 %97, %sub8.i.9.i
  %xor.i23.i.1.i.i = xor i64 %add3.i.1.i.i, %add.i.1.i.i
  %xor1.i24.i.1.i.i = xor i64 %add.i.1.i.i, %sub.i
  %or.i25.i.1.i.i = or i64 %xor.i23.i.1.i.i, %xor1.i24.i.1.i.i
  %xor2.i26.i.1.i.i = xor i64 %or.i25.i.1.i.i, %add3.i.1.i.i
  %shr.i30.i.1.i.i = or i64 %xor2.i26.i.1.i.i, %xor2.i.i.1.i.i
  %or29.i.1.i.i = lshr i64 %shr.i30.i.1.i.i, 63
  %add.i.2.i.i = add i64 %or29.i.1.i.i, %sub8.i.10.i
  %add3.i.2.i.i = sub i64 %add.i.2.i.i, %conv.i
  store i64 %add3.i.2.i.i, i64* %arrayidx2.i.10.i230, align 16, !tbaa !3
  %98 = xor i64 %add.i.2.i.i, -9223372036854775808
  %xor2.i.i.2.i.i = and i64 %98, %sub8.i.10.i
  %xor.i23.i.2.i.i = xor i64 %add3.i.2.i.i, %add.i.2.i.i
  %xor1.i24.i.2.i.i = xor i64 %add.i.2.i.i, %sub.i
  %or.i25.i.2.i.i = or i64 %xor.i23.i.2.i.i, %xor1.i24.i.2.i.i
  %xor2.i26.i.2.i.i = xor i64 %or.i25.i.2.i.i, %add3.i.2.i.i
  %shr.i30.i.2.i.i = or i64 %xor2.i26.i.2.i.i, %xor2.i.i.2.i.i
  %or29.i.2.i.i = lshr i64 %shr.i30.i.2.i.i, 63
  %add.i.3.i.i = add i64 %or29.i.2.i.i, %sub8.i.11.i
  %add3.i.3.i.i = add i64 %add.i.3.i.i, %and.3.i
  store i64 %add3.i.3.i.i, i64* %arrayidx2.i.11.i248, align 8, !tbaa !3
  %99 = xor i64 %add.i.3.i.i, -9223372036854775808
  %xor2.i.i.3.i.i = and i64 %99, %sub8.i.11.i
  %xor.i23.i.3.i.i = xor i64 %add3.i.3.i.i, %add.i.3.i.i
  %xor1.i24.i.3.i.i = xor i64 %add.i.3.i.i, %sub.i
  %or.i25.i.3.i.i = or i64 %xor.i23.i.3.i.i, %xor1.i24.i.3.i.i
  %xor2.i26.i.3.i.i = xor i64 %or.i25.i.3.i.i, %add3.i.3.i.i
  %shr.i30.i.3.i.i = or i64 %xor2.i26.i.3.i.i, %xor2.i.i.3.i.i
  %or29.i.3.i.i = lshr i64 %shr.i30.i.3.i.i, 63
  %add.i.4.i.i = add i64 %or29.i.3.i.i, %sub8.i.12.i
  %add3.i.4.i.i = add i64 %add.i.4.i.i, %and.4.i
  store i64 %add3.i.4.i.i, i64* %arrayidx2.i.12.i266, align 16, !tbaa !3
  %100 = xor i64 %add.i.4.i.i, -9223372036854775808
  %xor2.i.i.4.i.i = and i64 %100, %sub8.i.12.i
  %101 = xor i64 %add3.i.4.i.i, -9223372036854775808
  %xor2.i26.i.4.i.i = and i64 %101, %add.i.4.i.i
  %shr.i30.i.4.i.i = or i64 %xor2.i26.i.4.i.i, %xor2.i.i.4.i.i
  %or29.i.4.i.i = lshr i64 %shr.i30.i.4.i.i, 63
  %add.i.5.i.i = add i64 %or29.i.4.i.i, %sub8.i.13.i
  %add3.i.5.i.i = add i64 %add.i.5.i.i, %and.5.i
  store i64 %add3.i.5.i.i, i64* %arrayidx2.i.13.i284, align 8, !tbaa !3
  %102 = xor i64 %add.i.5.i.i, -9223372036854775808
  %xor2.i.i.5.i.i = and i64 %102, %sub8.i.13.i
  %103 = xor i64 %add3.i.5.i.i, -9223372036854775808
  %xor2.i26.i.5.i.i = and i64 %103, %add.i.5.i.i
  %shr.i30.i.5.i.i = or i64 %xor2.i26.i.5.i.i, %xor2.i.i.5.i.i
  %or29.i.5.i.i = lshr i64 %shr.i30.i.5.i.i, 63
  %add.i.6.i.i = add i64 %or29.i.5.i.i, %sub8.i.14.i
  %add3.i.6.i.i = add i64 %add.i.6.i.i, %and.6.i
  store i64 %add3.i.6.i.i, i64* %arrayidx2.i.14.i302, align 16, !tbaa !3
  %104 = xor i64 %add.i.6.i.i, -9223372036854775808
  %xor2.i.i.6.i.i = and i64 %104, %sub8.i.14.i
  %105 = xor i64 %add3.i.6.i.i, -9223372036854775808
  %xor2.i26.i.6.i.i = and i64 %105, %add.i.6.i.i
  %shr.i30.i.6.i.i = or i64 %xor2.i26.i.6.i.i, %xor2.i.i.6.i.i
  %or29.i.6.i.i = lshr i64 %shr.i30.i.6.i.i, 63
  %add.i.7.i.i = add i64 %and.7.i, %sub8.i.15.i
  %add3.i.7.i.i = add i64 %add.i.7.i.i, %or29.i.6.i.i
  store i64 %add3.i.7.i.i, i64* %arrayidx2.i.15.i320, align 8, !tbaa !3
  %arraydecay30 = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 1, i64 0
  call void @rdc_mont(i64* nonnull %arraydecay21, i64* nonnull %arraydecay30) #10
  %arraydecay33 = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 0, i64 0
  call void @rdc_mont(i64* nonnull %arraydecay13, i64* %arraydecay33) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @fp2inv503_mont([8 x i64]* %a) local_unnamed_addr #4 {
entry:
  %temp.i = alloca [16 x i64], align 16
  %t1 = alloca [2 x [8 x i64]], align 16
  %0 = bitcast [2 x [8 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #10
  %arraydecay = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t1, i64 0, i64 0, i64 0
  %1 = bitcast [16 x i64]* %temp.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 128, i1 false) #10
  %arraydecay.i = getelementptr inbounds [16 x i64], [16 x i64]* %temp.i, i64 0, i64 0
  call void @mp_mul(i64* %arraydecay, i64* %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay2) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #10
  %arraydecay4 = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 0
  %arraydecay6 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t1, i64 0, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay4, i64* nonnull %arraydecay4, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay6) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #10
  call void @fpadd503(i64* nonnull %arraydecay2, i64* nonnull %arraydecay6, i64* nonnull %arraydecay2) #10
  call void @fpinv503_mont(i64* nonnull %arraydecay2)
  call void @fpneg503(i64* nonnull %arraydecay4) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* %arraydecay, i64* nonnull %arraydecay2, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay4, i64* nonnull %arraydecay2, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay4) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @to_fp2mont([8 x i64]* %a, [8 x i64]* %mc) local_unnamed_addr #4 {
entry:
  %temp.i.i = alloca [16 x i64], align 16
  %arraydecay = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [8 x i64], [8 x i64]* %mc, i64 0, i64 0
  %0 = bitcast [16 x i64]* %temp.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 128, i1 false) #10
  %arraydecay.i.i = getelementptr inbounds [16 x i64], [16 x i64]* %temp.i.i, i64 0, i64 0
  call void @mp_mul(i64* %arraydecay, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* %arraydecay2) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #10
  %arraydecay4 = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 0
  %arraydecay6 = getelementptr inbounds [8 x i64], [8 x i64]* %mc, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay4, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay6) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @from_fp2mont([8 x i64]* %ma, [8 x i64]* %c) local_unnamed_addr #4 {
entry:
  %temp.i.i = alloca [16 x i64], align 16
  %one.i = alloca [8 x i64], align 16
  %arraydecay = getelementptr inbounds [8 x i64], [8 x i64]* %ma, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 0, i64 0
  %0 = bitcast [8 x i64]* %one.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 64, i1 false) #10
  %arrayidx.i = getelementptr inbounds [8 x i64], [8 x i64]* %one.i, i64 0, i64 0
  store i64 1, i64* %arrayidx.i, align 16, !tbaa !3
  %1 = bitcast [16 x i64]* %temp.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 128, i1 false) #10
  %arraydecay.i.i = getelementptr inbounds [16 x i64], [16 x i64]* %temp.i.i, i64 0, i64 0
  call void @mp_mul(i64* %arraydecay, i64* nonnull %arrayidx.i, i64* nonnull %arraydecay.i.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* %arraydecay2) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #10
  call void @fpcorrection503(i64* %arraydecay2) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #10
  %arraydecay4 = getelementptr inbounds [8 x i64], [8 x i64]* %ma, i64 1, i64 0
  %arraydecay6 = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 64, i1 false) #10
  store i64 1, i64* %arrayidx.i, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay4, i64* nonnull %arrayidx.i, i64* nonnull %arraydecay.i.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i, i64* nonnull %arraydecay6) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #10
  call void @fpcorrection503(i64* nonnull %arraydecay6) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #10
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
define zeroext i8 @is_sqr_fp2([8 x i64]* %a, i64* %s) local_unnamed_addr #4 {
entry:
  %temp.i = alloca [16 x i64], align 16
  %a0 = alloca [8 x i64], align 16
  %a1 = alloca [8 x i64], align 16
  %z = alloca [8 x i64], align 16
  %temp = alloca [8 x i64], align 16
  %0 = bitcast [8 x i64]* %a0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #10
  %1 = bitcast [8 x i64]* %a1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #10
  %2 = bitcast [8 x i64]* %z to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #10
  %3 = bitcast [8 x i64]* %temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #10
  %arraydecay = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [8 x i64], [8 x i64]* %a0, i64 0, i64 0
  %4 = bitcast [16 x i64]* %temp.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %4) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %4, i8 0, i64 128, i1 false) #10
  %arraydecay.i = getelementptr inbounds [16 x i64], [16 x i64]* %temp.i, i64 0, i64 0
  call void @mp_mul(i64* %arraydecay, i64* %arraydecay, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay1) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %4) #10
  %arraydecay3 = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 0
  %arraydecay4 = getelementptr inbounds [8 x i64], [8 x i64]* %a1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %4) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %4, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay3, i64* nonnull %arraydecay3, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay4) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %4) #10
  %arraydecay7 = getelementptr inbounds [8 x i64], [8 x i64]* %z, i64 0, i64 0
  call void @fpadd503(i64* nonnull %arraydecay1, i64* nonnull %arraydecay4, i64* nonnull %arraydecay7) #10
  %5 = bitcast [8 x i64]* %z to <4 x i64>*
  %6 = load <4 x i64>, <4 x i64>* %5, align 16, !tbaa !3
  %7 = bitcast i64* %s to <4 x i64>*
  store <4 x i64> %6, <4 x i64>* %7, align 8, !tbaa !3
  %arrayidx.4.i = getelementptr inbounds [8 x i64], [8 x i64]* %z, i64 0, i64 4
  %arrayidx2.4.i = getelementptr inbounds i64, i64* %s, i64 4
  %8 = bitcast i64* %arrayidx.4.i to <4 x i64>*
  %9 = load <4 x i64>, <4 x i64>* %8, align 16, !tbaa !3
  %10 = bitcast i64* %arrayidx2.4.i to <4 x i64>*
  store <4 x i64> %9, <4 x i64>* %10, align 8, !tbaa !3
  br label %for.body

for.cond9.preheader:                              ; preds = %for.body
  %arraydecay12 = getelementptr inbounds [8 x i64], [8 x i64]* %temp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %4) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %4, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* %s, i64* %s, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay12) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %4) #10
  br label %for.body11

for.body:                                         ; preds = %for.body, %entry
  %i.046 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %4) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %4, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* %s, i64* %s, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* %s) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %4) #10
  %inc = add nuw nsw i32 %i.046, 1
  %exitcond47 = icmp eq i32 %inc, 248
  br i1 %exitcond47, label %for.cond9.preheader, label %for.body

for.body11:                                       ; preds = %for.body11, %for.cond9.preheader
  %i.145 = phi i32 [ 0, %for.cond9.preheader ], [ %inc15, %for.body11 ]
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %4) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %4, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* %s, i64* nonnull %arraydecay12, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* %s) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %4) #10
  %inc15 = add nuw nsw i32 %i.145, 1
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %4) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %4, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* %s, i64* %s, i64* nonnull %arraydecay.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay12) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %4) #10
  %exitcond = icmp eq i32 %inc15, 159
  br i1 %exitcond, label %for.end16, label %for.body11

for.end16:                                        ; preds = %for.body11
  call void @fpcorrection503(i64* nonnull %arraydecay12) #10
  call void @fpcorrection503(i64* nonnull %arraydecay7) #10
  %call = call i32 @memcmp(i8* nonnull %3, i8* nonnull %2, i64 63)
  %cmp22 = icmp eq i32 %call, 0
  %. = zext i1 %cmp22 to i8
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #10
  ret i8 %.
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #7

; Function Attrs: nounwind ssp uwtable
define void @xDBL(%struct.point_proj* %P, %struct.point_proj* %Q, [8 x i64]* %A24plus, [8 x i64]* %C24) local_unnamed_addr #4 {
entry:
  %t0 = alloca [2 x [8 x i64]], align 16
  %t1 = alloca [2 x [8 x i64]], align 16
  %0 = bitcast [2 x [8 x i64]]* %t0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #10
  %1 = bitcast [2 x [8 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #10
  %arraydecay = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0
  %arraydecay1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 0
  %arraydecay2 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t0, i64 0, i64 0
  %arraydecay.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds [8 x i64], [8 x i64]* %arraydecay1, i64 0, i64 0
  %arraydecay4.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t0, i64 0, i64 0, i64 0
  call void @mp_sub503_p2(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i) #10
  %arraydecay6.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 1, i64 0
  %arraydecay8.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 1, i64 0
  %arraydecay10.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t0, i64 0, i64 1, i64 0
  call void @mp_sub503_p2(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i) #10
  %arraydecay7 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t1, i64 0, i64 0
  call fastcc void @mp2_add([8 x i64]* %arraydecay, [8 x i64]* nonnull %arraydecay1, [8 x i64]* nonnull %arraydecay7)
  call void @fp2sqr503_mont([8 x i64]* nonnull %arraydecay2, [8 x i64]* nonnull %arraydecay2)
  call void @fp2sqr503_mont([8 x i64]* nonnull %arraydecay7, [8 x i64]* nonnull %arraydecay7)
  %arraydecay14 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 0
  call void @fp2mul503_mont([8 x i64]* %C24, [8 x i64]* nonnull %arraydecay2, [8 x i64]* nonnull %arraydecay14)
  %arraydecay19 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay7, [8 x i64]* nonnull %arraydecay14, [8 x i64]* %arraydecay19)
  %arraydecay.i44 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t1, i64 0, i64 0, i64 0
  call void @mp_sub503_p2(i64* nonnull %arraydecay.i44, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay.i44) #10
  %arraydecay6.i47 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t1, i64 0, i64 1, i64 0
  call void @mp_sub503_p2(i64* nonnull %arraydecay6.i47, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay6.i47) #10
  call void @fp2mul503_mont([8 x i64]* %A24plus, [8 x i64]* nonnull %arraydecay7, [8 x i64]* nonnull %arraydecay2)
  call fastcc void @mp2_add([8 x i64]* nonnull %arraydecay14, [8 x i64]* nonnull %arraydecay2, [8 x i64]* nonnull %arraydecay14)
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay14, [8 x i64]* nonnull %arraydecay7, [8 x i64]* nonnull %arraydecay14)
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #10
  ret void
}

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define internal fastcc void @mp2_add([8 x i64]* nocapture readonly %a, [8 x i64]* nocapture readonly %b, [8 x i64]* nocapture %c) unnamed_addr #3 {
entry:
  %arraydecay = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 0, i64 0
  %0 = load i64, i64* %arraydecay, align 8, !tbaa !3
  %1 = load i64, i64* %arraydecay2, align 8, !tbaa !3
  %add3.i.i = add i64 %1, %0
  store i64 %add3.i.i, i64* %arraydecay4, align 8, !tbaa !3
  %xor.i23.i.i = xor i64 %add3.i.i, %0
  %xor1.i24.i.i = xor i64 %1, %0
  %or.i25.i.i = or i64 %xor.i23.i.i, %xor1.i24.i.i
  %xor2.i26.i.i = xor i64 %or.i25.i.i, %add3.i.i
  %or29.i.i = lshr i64 %xor2.i26.i.i, 63
  %arrayidx.i.1.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 1
  %2 = load i64, i64* %arrayidx.i.1.i, align 8, !tbaa !3
  %add.i.1.i = add i64 %or29.i.i, %2
  %arrayidx2.i.1.i = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 0, i64 1
  %3 = load i64, i64* %arrayidx2.i.1.i, align 8, !tbaa !3
  %add3.i.1.i = add i64 %add.i.1.i, %3
  %arrayidx5.i.1.i = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 0, i64 1
  store i64 %add3.i.1.i, i64* %arrayidx5.i.1.i, align 8, !tbaa !3
  %4 = xor i64 %add.i.1.i, -9223372036854775808
  %xor2.i.i.1.i = and i64 %4, %2
  %xor.i23.i.1.i = xor i64 %add3.i.1.i, %add.i.1.i
  %xor1.i24.i.1.i = xor i64 %add.i.1.i, %3
  %or.i25.i.1.i = or i64 %xor.i23.i.1.i, %xor1.i24.i.1.i
  %xor2.i26.i.1.i = xor i64 %or.i25.i.1.i, %add3.i.1.i
  %shr.i30.i.1.i = or i64 %xor2.i26.i.1.i, %xor2.i.i.1.i
  %or29.i.1.i = lshr i64 %shr.i30.i.1.i, 63
  %arrayidx.i.2.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 2
  %5 = load i64, i64* %arrayidx.i.2.i, align 8, !tbaa !3
  %add.i.2.i = add i64 %or29.i.1.i, %5
  %arrayidx2.i.2.i = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 0, i64 2
  %6 = load i64, i64* %arrayidx2.i.2.i, align 8, !tbaa !3
  %add3.i.2.i = add i64 %add.i.2.i, %6
  %arrayidx5.i.2.i = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 0, i64 2
  store i64 %add3.i.2.i, i64* %arrayidx5.i.2.i, align 8, !tbaa !3
  %7 = xor i64 %add.i.2.i, -9223372036854775808
  %xor2.i.i.2.i = and i64 %7, %5
  %xor.i23.i.2.i = xor i64 %add3.i.2.i, %add.i.2.i
  %xor1.i24.i.2.i = xor i64 %add.i.2.i, %6
  %or.i25.i.2.i = or i64 %xor.i23.i.2.i, %xor1.i24.i.2.i
  %xor2.i26.i.2.i = xor i64 %or.i25.i.2.i, %add3.i.2.i
  %shr.i30.i.2.i = or i64 %xor2.i26.i.2.i, %xor2.i.i.2.i
  %or29.i.2.i = lshr i64 %shr.i30.i.2.i, 63
  %arrayidx.i.3.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 3
  %8 = load i64, i64* %arrayidx.i.3.i, align 8, !tbaa !3
  %add.i.3.i = add i64 %or29.i.2.i, %8
  %arrayidx2.i.3.i = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 0, i64 3
  %9 = load i64, i64* %arrayidx2.i.3.i, align 8, !tbaa !3
  %add3.i.3.i = add i64 %add.i.3.i, %9
  %arrayidx5.i.3.i = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 0, i64 3
  store i64 %add3.i.3.i, i64* %arrayidx5.i.3.i, align 8, !tbaa !3
  %10 = xor i64 %add.i.3.i, -9223372036854775808
  %xor2.i.i.3.i = and i64 %10, %8
  %xor.i23.i.3.i = xor i64 %add3.i.3.i, %add.i.3.i
  %xor1.i24.i.3.i = xor i64 %add.i.3.i, %9
  %or.i25.i.3.i = or i64 %xor.i23.i.3.i, %xor1.i24.i.3.i
  %xor2.i26.i.3.i = xor i64 %or.i25.i.3.i, %add3.i.3.i
  %shr.i30.i.3.i = or i64 %xor2.i26.i.3.i, %xor2.i.i.3.i
  %or29.i.3.i = lshr i64 %shr.i30.i.3.i, 63
  %arrayidx.i.4.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 4
  %11 = load i64, i64* %arrayidx.i.4.i, align 8, !tbaa !3
  %add.i.4.i = add i64 %or29.i.3.i, %11
  %arrayidx2.i.4.i = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 0, i64 4
  %12 = load i64, i64* %arrayidx2.i.4.i, align 8, !tbaa !3
  %add3.i.4.i = add i64 %add.i.4.i, %12
  %arrayidx5.i.4.i = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 0, i64 4
  store i64 %add3.i.4.i, i64* %arrayidx5.i.4.i, align 8, !tbaa !3
  %13 = xor i64 %add.i.4.i, -9223372036854775808
  %xor2.i.i.4.i = and i64 %13, %11
  %xor.i23.i.4.i = xor i64 %add3.i.4.i, %add.i.4.i
  %xor1.i24.i.4.i = xor i64 %add.i.4.i, %12
  %or.i25.i.4.i = or i64 %xor.i23.i.4.i, %xor1.i24.i.4.i
  %xor2.i26.i.4.i = xor i64 %or.i25.i.4.i, %add3.i.4.i
  %shr.i30.i.4.i = or i64 %xor2.i26.i.4.i, %xor2.i.i.4.i
  %or29.i.4.i = lshr i64 %shr.i30.i.4.i, 63
  %arrayidx.i.5.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 5
  %14 = load i64, i64* %arrayidx.i.5.i, align 8, !tbaa !3
  %add.i.5.i = add i64 %or29.i.4.i, %14
  %arrayidx2.i.5.i = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 0, i64 5
  %15 = load i64, i64* %arrayidx2.i.5.i, align 8, !tbaa !3
  %add3.i.5.i = add i64 %add.i.5.i, %15
  %arrayidx5.i.5.i = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 0, i64 5
  store i64 %add3.i.5.i, i64* %arrayidx5.i.5.i, align 8, !tbaa !3
  %16 = xor i64 %add.i.5.i, -9223372036854775808
  %xor2.i.i.5.i = and i64 %16, %14
  %xor.i23.i.5.i = xor i64 %add3.i.5.i, %add.i.5.i
  %xor1.i24.i.5.i = xor i64 %add.i.5.i, %15
  %or.i25.i.5.i = or i64 %xor.i23.i.5.i, %xor1.i24.i.5.i
  %xor2.i26.i.5.i = xor i64 %or.i25.i.5.i, %add3.i.5.i
  %shr.i30.i.5.i = or i64 %xor2.i26.i.5.i, %xor2.i.i.5.i
  %or29.i.5.i = lshr i64 %shr.i30.i.5.i, 63
  %arrayidx.i.6.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 6
  %17 = load i64, i64* %arrayidx.i.6.i, align 8, !tbaa !3
  %add.i.6.i = add i64 %or29.i.5.i, %17
  %arrayidx2.i.6.i = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 0, i64 6
  %18 = load i64, i64* %arrayidx2.i.6.i, align 8, !tbaa !3
  %add3.i.6.i = add i64 %add.i.6.i, %18
  %arrayidx5.i.6.i = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 0, i64 6
  store i64 %add3.i.6.i, i64* %arrayidx5.i.6.i, align 8, !tbaa !3
  %19 = xor i64 %add.i.6.i, -9223372036854775808
  %xor2.i.i.6.i = and i64 %19, %17
  %xor.i23.i.6.i = xor i64 %add3.i.6.i, %add.i.6.i
  %xor1.i24.i.6.i = xor i64 %add.i.6.i, %18
  %or.i25.i.6.i = or i64 %xor.i23.i.6.i, %xor1.i24.i.6.i
  %xor2.i26.i.6.i = xor i64 %or.i25.i.6.i, %add3.i.6.i
  %shr.i30.i.6.i = or i64 %xor2.i26.i.6.i, %xor2.i.i.6.i
  %or29.i.6.i = lshr i64 %shr.i30.i.6.i, 63
  %arrayidx.i.7.i = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 0, i64 7
  %20 = load i64, i64* %arrayidx.i.7.i, align 8, !tbaa !3
  %arrayidx2.i.7.i = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 0, i64 7
  %21 = load i64, i64* %arrayidx2.i.7.i, align 8, !tbaa !3
  %add.i.7.i = add i64 %21, %20
  %add3.i.7.i = add i64 %add.i.7.i, %or29.i.6.i
  %arrayidx5.i.7.i = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 0, i64 7
  store i64 %add3.i.7.i, i64* %arrayidx5.i.7.i, align 8, !tbaa !3
  %arraydecay6 = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 0
  %arraydecay8 = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 1, i64 0
  %arraydecay10 = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 1, i64 0
  %22 = load i64, i64* %arraydecay6, align 8, !tbaa !3
  %23 = load i64, i64* %arraydecay8, align 8, !tbaa !3
  %add3.i.i14 = add i64 %23, %22
  store i64 %add3.i.i14, i64* %arraydecay10, align 8, !tbaa !3
  %xor.i23.i.i15 = xor i64 %add3.i.i14, %22
  %xor1.i24.i.i16 = xor i64 %23, %22
  %or.i25.i.i17 = or i64 %xor.i23.i.i15, %xor1.i24.i.i16
  %xor2.i26.i.i18 = xor i64 %or.i25.i.i17, %add3.i.i14
  %or29.i.i19 = lshr i64 %xor2.i26.i.i18, 63
  %arrayidx.i.1.i20 = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 1
  %24 = load i64, i64* %arrayidx.i.1.i20, align 8, !tbaa !3
  %add.i.1.i21 = add i64 %or29.i.i19, %24
  %arrayidx2.i.1.i22 = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 1, i64 1
  %25 = load i64, i64* %arrayidx2.i.1.i22, align 8, !tbaa !3
  %add3.i.1.i23 = add i64 %add.i.1.i21, %25
  %arrayidx5.i.1.i24 = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 1, i64 1
  store i64 %add3.i.1.i23, i64* %arrayidx5.i.1.i24, align 8, !tbaa !3
  %26 = xor i64 %add.i.1.i21, -9223372036854775808
  %xor2.i.i.1.i25 = and i64 %26, %24
  %xor.i23.i.1.i26 = xor i64 %add3.i.1.i23, %add.i.1.i21
  %xor1.i24.i.1.i27 = xor i64 %add.i.1.i21, %25
  %or.i25.i.1.i28 = or i64 %xor.i23.i.1.i26, %xor1.i24.i.1.i27
  %xor2.i26.i.1.i29 = xor i64 %or.i25.i.1.i28, %add3.i.1.i23
  %shr.i30.i.1.i30 = or i64 %xor2.i26.i.1.i29, %xor2.i.i.1.i25
  %or29.i.1.i31 = lshr i64 %shr.i30.i.1.i30, 63
  %arrayidx.i.2.i32 = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 2
  %27 = load i64, i64* %arrayidx.i.2.i32, align 8, !tbaa !3
  %add.i.2.i33 = add i64 %or29.i.1.i31, %27
  %arrayidx2.i.2.i34 = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 1, i64 2
  %28 = load i64, i64* %arrayidx2.i.2.i34, align 8, !tbaa !3
  %add3.i.2.i35 = add i64 %add.i.2.i33, %28
  %arrayidx5.i.2.i36 = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 1, i64 2
  store i64 %add3.i.2.i35, i64* %arrayidx5.i.2.i36, align 8, !tbaa !3
  %29 = xor i64 %add.i.2.i33, -9223372036854775808
  %xor2.i.i.2.i37 = and i64 %29, %27
  %xor.i23.i.2.i38 = xor i64 %add3.i.2.i35, %add.i.2.i33
  %xor1.i24.i.2.i39 = xor i64 %add.i.2.i33, %28
  %or.i25.i.2.i40 = or i64 %xor.i23.i.2.i38, %xor1.i24.i.2.i39
  %xor2.i26.i.2.i41 = xor i64 %or.i25.i.2.i40, %add3.i.2.i35
  %shr.i30.i.2.i42 = or i64 %xor2.i26.i.2.i41, %xor2.i.i.2.i37
  %or29.i.2.i43 = lshr i64 %shr.i30.i.2.i42, 63
  %arrayidx.i.3.i44 = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 3
  %30 = load i64, i64* %arrayidx.i.3.i44, align 8, !tbaa !3
  %add.i.3.i45 = add i64 %or29.i.2.i43, %30
  %arrayidx2.i.3.i46 = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 1, i64 3
  %31 = load i64, i64* %arrayidx2.i.3.i46, align 8, !tbaa !3
  %add3.i.3.i47 = add i64 %add.i.3.i45, %31
  %arrayidx5.i.3.i48 = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 1, i64 3
  store i64 %add3.i.3.i47, i64* %arrayidx5.i.3.i48, align 8, !tbaa !3
  %32 = xor i64 %add.i.3.i45, -9223372036854775808
  %xor2.i.i.3.i49 = and i64 %32, %30
  %xor.i23.i.3.i50 = xor i64 %add3.i.3.i47, %add.i.3.i45
  %xor1.i24.i.3.i51 = xor i64 %add.i.3.i45, %31
  %or.i25.i.3.i52 = or i64 %xor.i23.i.3.i50, %xor1.i24.i.3.i51
  %xor2.i26.i.3.i53 = xor i64 %or.i25.i.3.i52, %add3.i.3.i47
  %shr.i30.i.3.i54 = or i64 %xor2.i26.i.3.i53, %xor2.i.i.3.i49
  %or29.i.3.i55 = lshr i64 %shr.i30.i.3.i54, 63
  %arrayidx.i.4.i56 = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 4
  %33 = load i64, i64* %arrayidx.i.4.i56, align 8, !tbaa !3
  %add.i.4.i57 = add i64 %or29.i.3.i55, %33
  %arrayidx2.i.4.i58 = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 1, i64 4
  %34 = load i64, i64* %arrayidx2.i.4.i58, align 8, !tbaa !3
  %add3.i.4.i59 = add i64 %add.i.4.i57, %34
  %arrayidx5.i.4.i60 = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 1, i64 4
  store i64 %add3.i.4.i59, i64* %arrayidx5.i.4.i60, align 8, !tbaa !3
  %35 = xor i64 %add.i.4.i57, -9223372036854775808
  %xor2.i.i.4.i61 = and i64 %35, %33
  %xor.i23.i.4.i62 = xor i64 %add3.i.4.i59, %add.i.4.i57
  %xor1.i24.i.4.i63 = xor i64 %add.i.4.i57, %34
  %or.i25.i.4.i64 = or i64 %xor.i23.i.4.i62, %xor1.i24.i.4.i63
  %xor2.i26.i.4.i65 = xor i64 %or.i25.i.4.i64, %add3.i.4.i59
  %shr.i30.i.4.i66 = or i64 %xor2.i26.i.4.i65, %xor2.i.i.4.i61
  %or29.i.4.i67 = lshr i64 %shr.i30.i.4.i66, 63
  %arrayidx.i.5.i68 = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 5
  %36 = load i64, i64* %arrayidx.i.5.i68, align 8, !tbaa !3
  %add.i.5.i69 = add i64 %or29.i.4.i67, %36
  %arrayidx2.i.5.i70 = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 1, i64 5
  %37 = load i64, i64* %arrayidx2.i.5.i70, align 8, !tbaa !3
  %add3.i.5.i71 = add i64 %add.i.5.i69, %37
  %arrayidx5.i.5.i72 = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 1, i64 5
  store i64 %add3.i.5.i71, i64* %arrayidx5.i.5.i72, align 8, !tbaa !3
  %38 = xor i64 %add.i.5.i69, -9223372036854775808
  %xor2.i.i.5.i73 = and i64 %38, %36
  %xor.i23.i.5.i74 = xor i64 %add3.i.5.i71, %add.i.5.i69
  %xor1.i24.i.5.i75 = xor i64 %add.i.5.i69, %37
  %or.i25.i.5.i76 = or i64 %xor.i23.i.5.i74, %xor1.i24.i.5.i75
  %xor2.i26.i.5.i77 = xor i64 %or.i25.i.5.i76, %add3.i.5.i71
  %shr.i30.i.5.i78 = or i64 %xor2.i26.i.5.i77, %xor2.i.i.5.i73
  %or29.i.5.i79 = lshr i64 %shr.i30.i.5.i78, 63
  %arrayidx.i.6.i80 = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 6
  %39 = load i64, i64* %arrayidx.i.6.i80, align 8, !tbaa !3
  %add.i.6.i81 = add i64 %or29.i.5.i79, %39
  %arrayidx2.i.6.i82 = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 1, i64 6
  %40 = load i64, i64* %arrayidx2.i.6.i82, align 8, !tbaa !3
  %add3.i.6.i83 = add i64 %add.i.6.i81, %40
  %arrayidx5.i.6.i84 = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 1, i64 6
  store i64 %add3.i.6.i83, i64* %arrayidx5.i.6.i84, align 8, !tbaa !3
  %41 = xor i64 %add.i.6.i81, -9223372036854775808
  %xor2.i.i.6.i85 = and i64 %41, %39
  %xor.i23.i.6.i86 = xor i64 %add3.i.6.i83, %add.i.6.i81
  %xor1.i24.i.6.i87 = xor i64 %add.i.6.i81, %40
  %or.i25.i.6.i88 = or i64 %xor.i23.i.6.i86, %xor1.i24.i.6.i87
  %xor2.i26.i.6.i89 = xor i64 %or.i25.i.6.i88, %add3.i.6.i83
  %shr.i30.i.6.i90 = or i64 %xor2.i26.i.6.i89, %xor2.i.i.6.i85
  %or29.i.6.i91 = lshr i64 %shr.i30.i.6.i90, 63
  %arrayidx.i.7.i92 = getelementptr inbounds [8 x i64], [8 x i64]* %a, i64 1, i64 7
  %42 = load i64, i64* %arrayidx.i.7.i92, align 8, !tbaa !3
  %arrayidx2.i.7.i94 = getelementptr inbounds [8 x i64], [8 x i64]* %b, i64 1, i64 7
  %43 = load i64, i64* %arrayidx2.i.7.i94, align 8, !tbaa !3
  %add.i.7.i93 = add i64 %43, %42
  %add3.i.7.i95 = add i64 %add.i.7.i93, %or29.i.6.i91
  %arrayidx5.i.7.i96 = getelementptr inbounds [8 x i64], [8 x i64]* %c, i64 1, i64 7
  store i64 %add3.i.7.i95, i64* %arrayidx5.i.7.i96, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @xDBLe(%struct.point_proj* nocapture readonly %P, %struct.point_proj* %Q, [8 x i64]* %A24plus, [8 x i64]* %C24, i32 %e) local_unnamed_addr #4 {
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
  %cmp5 = icmp sgt i32 %e, 0
  br i1 %cmp5, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret void

for.body:                                         ; preds = %entry, %for.body
  %i.06 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  tail call void @xDBL(%struct.point_proj* %Q, %struct.point_proj* %Q, [8 x i64]* %A24plus, [8 x i64]* %C24)
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond = icmp eq i32 %inc, %e
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nounwind ssp uwtable
define void @get_4_isog(%struct.point_proj* %P, [8 x i64]* %A24plus, [8 x i64]* %C24, [2 x [8 x i64]]* %coeff) local_unnamed_addr #4 {
entry:
  %arraydecay = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0
  %arraydecay1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 0
  %arraydecay.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds [8 x i64], [8 x i64]* %arraydecay1, i64 0, i64 0
  %arraydecay4.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %coeff, i64 1, i64 0, i64 0
  tail call void @mp_sub503_p2(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i) #10
  %arraydecay6.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 1, i64 0
  %arraydecay8.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 1, i64 0
  %arraydecay10.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %coeff, i64 1, i64 1, i64 0
  tail call void @mp_sub503_p2(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i) #10
  %arraydecay8 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %coeff, i64 2, i64 0
  tail call fastcc void @mp2_add([8 x i64]* %arraydecay, [8 x i64]* nonnull %arraydecay1, [8 x i64]* nonnull %arraydecay8)
  %arraydecay12 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %coeff, i64 0, i64 0
  tail call void @fp2sqr503_mont([8 x i64]* nonnull %arraydecay1, [8 x i64]* %arraydecay12)
  tail call fastcc void @mp2_add([8 x i64]* %arraydecay12, [8 x i64]* %arraydecay12, [8 x i64]* %arraydecay12)
  tail call void @fp2sqr503_mont([8 x i64]* %arraydecay12, [8 x i64]* %C24)
  tail call fastcc void @mp2_add([8 x i64]* %arraydecay12, [8 x i64]* %arraydecay12, [8 x i64]* %arraydecay12)
  tail call void @fp2sqr503_mont([8 x i64]* %arraydecay, [8 x i64]* %A24plus)
  tail call fastcc void @mp2_add([8 x i64]* %A24plus, [8 x i64]* %A24plus, [8 x i64]* %A24plus)
  tail call void @fp2sqr503_mont([8 x i64]* %A24plus, [8 x i64]* %A24plus)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @eval_4_isog(%struct.point_proj* %P, [2 x [8 x i64]]* %coeff) local_unnamed_addr #4 {
entry:
  %t0 = alloca [2 x [8 x i64]], align 16
  %t1 = alloca [2 x [8 x i64]], align 16
  %0 = bitcast [2 x [8 x i64]]* %t0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #10
  %1 = bitcast [2 x [8 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #10
  %arraydecay = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0
  %arraydecay1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 0
  %arraydecay2 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t0, i64 0, i64 0
  call fastcc void @mp2_add([8 x i64]* %arraydecay, [8 x i64]* nonnull %arraydecay1, [8 x i64]* nonnull %arraydecay2)
  %arraydecay7 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t1, i64 0, i64 0
  %arraydecay.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds [8 x i64], [8 x i64]* %arraydecay1, i64 0, i64 0
  %arraydecay4.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t1, i64 0, i64 0, i64 0
  call void @mp_sub503_p2(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i) #10
  %arraydecay6.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 1, i64 0
  %arraydecay8.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 1, i64 0
  %arraydecay10.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t1, i64 0, i64 1, i64 0
  call void @mp_sub503_p2(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i) #10
  %arraydecay9 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %coeff, i64 1, i64 0
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay2, [8 x i64]* nonnull %arraydecay9, [8 x i64]* %arraydecay)
  %arraydecay14 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %coeff, i64 2, i64 0
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay7, [8 x i64]* nonnull %arraydecay14, [8 x i64]* nonnull %arraydecay1)
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay2, [8 x i64]* nonnull %arraydecay7, [8 x i64]* nonnull %arraydecay2)
  %arraydecay21 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %coeff, i64 0, i64 0
  call void @fp2mul503_mont([8 x i64]* %arraydecay21, [8 x i64]* nonnull %arraydecay2, [8 x i64]* nonnull %arraydecay2)
  call fastcc void @mp2_add([8 x i64]* %arraydecay, [8 x i64]* nonnull %arraydecay1, [8 x i64]* nonnull %arraydecay7)
  call void @mp_sub503_p2(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay2.i) #10
  call void @mp_sub503_p2(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay8.i) #10
  call void @fp2sqr503_mont([8 x i64]* nonnull %arraydecay7, [8 x i64]* nonnull %arraydecay7)
  call void @fp2sqr503_mont([8 x i64]* nonnull %arraydecay1, [8 x i64]* nonnull %arraydecay1)
  call fastcc void @mp2_add([8 x i64]* nonnull %arraydecay7, [8 x i64]* nonnull %arraydecay2, [8 x i64]* %arraydecay)
  %arraydecay2.i86 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t0, i64 0, i64 0, i64 0
  call void @mp_sub503_p2(i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay2.i86, i64* nonnull %arraydecay2.i86) #10
  %arraydecay8.i89 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t0, i64 0, i64 1, i64 0
  call void @mp_sub503_p2(i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay8.i89, i64* nonnull %arraydecay8.i89) #10
  call void @fp2mul503_mont([8 x i64]* %arraydecay, [8 x i64]* nonnull %arraydecay7, [8 x i64]* %arraydecay)
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay1, [8 x i64]* nonnull %arraydecay2, [8 x i64]* nonnull %arraydecay1)
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @xTPL(%struct.point_proj* %P, %struct.point_proj* %Q, [8 x i64]* %A24minus, [8 x i64]* %A24plus) local_unnamed_addr #4 {
entry:
  %t0 = alloca [2 x [8 x i64]], align 16
  %t1 = alloca [2 x [8 x i64]], align 16
  %t2 = alloca [2 x [8 x i64]], align 16
  %t3 = alloca [2 x [8 x i64]], align 16
  %t4 = alloca [2 x [8 x i64]], align 16
  %t5 = alloca [2 x [8 x i64]], align 16
  %t6 = alloca [2 x [8 x i64]], align 16
  %0 = bitcast [2 x [8 x i64]]* %t0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #10
  %1 = bitcast [2 x [8 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #10
  %2 = bitcast [2 x [8 x i64]]* %t2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  %3 = bitcast [2 x [8 x i64]]* %t3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #10
  %4 = bitcast [2 x [8 x i64]]* %t4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %4) #10
  %5 = bitcast [2 x [8 x i64]]* %t5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #10
  %6 = bitcast [2 x [8 x i64]]* %t6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6) #10
  %arraydecay = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0
  %arraydecay1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 0
  %arraydecay2 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t0, i64 0, i64 0
  %arraydecay.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds [8 x i64], [8 x i64]* %arraydecay1, i64 0, i64 0
  %arraydecay4.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t0, i64 0, i64 0, i64 0
  call void @mp_sub503_p2(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i) #10
  %arraydecay6.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 1, i64 0
  %arraydecay8.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 1, i64 0
  %arraydecay10.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t0, i64 0, i64 1, i64 0
  call void @mp_sub503_p2(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i) #10
  %arraydecay4 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t2, i64 0, i64 0
  call void @fp2sqr503_mont([8 x i64]* nonnull %arraydecay2, [8 x i64]* nonnull %arraydecay4)
  %arraydecay9 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t1, i64 0, i64 0
  call fastcc void @mp2_add([8 x i64]* %arraydecay, [8 x i64]* nonnull %arraydecay1, [8 x i64]* nonnull %arraydecay9)
  %arraydecay11 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t3, i64 0, i64 0
  call void @fp2sqr503_mont([8 x i64]* nonnull %arraydecay9, [8 x i64]* nonnull %arraydecay11)
  %arraydecay16 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t4, i64 0, i64 0
  call fastcc void @mp2_add([8 x i64]* %arraydecay, [8 x i64]* %arraydecay, [8 x i64]* nonnull %arraydecay16)
  call fastcc void @mp2_add([8 x i64]* nonnull %arraydecay1, [8 x i64]* nonnull %arraydecay1, [8 x i64]* nonnull %arraydecay2)
  call void @fp2sqr503_mont([8 x i64]* nonnull %arraydecay16, [8 x i64]* nonnull %arraydecay9)
  %arraydecay.i75 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t1, i64 0, i64 0, i64 0
  %arraydecay2.i76 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t3, i64 0, i64 0, i64 0
  call void @mp_sub503_p2(i64* nonnull %arraydecay.i75, i64* nonnull %arraydecay2.i76, i64* nonnull %arraydecay.i75) #10
  %arraydecay6.i78 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t1, i64 0, i64 1, i64 0
  %arraydecay8.i79 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t3, i64 0, i64 1, i64 0
  call void @mp_sub503_p2(i64* nonnull %arraydecay6.i78, i64* nonnull %arraydecay8.i79, i64* nonnull %arraydecay6.i78) #10
  %arraydecay2.i82 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t2, i64 0, i64 0, i64 0
  call void @mp_sub503_p2(i64* nonnull %arraydecay.i75, i64* nonnull %arraydecay2.i82, i64* nonnull %arraydecay.i75) #10
  %arraydecay8.i85 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t2, i64 0, i64 1, i64 0
  call void @mp_sub503_p2(i64* nonnull %arraydecay6.i78, i64* nonnull %arraydecay8.i85, i64* nonnull %arraydecay6.i78) #10
  %arraydecay31 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t5, i64 0, i64 0
  call void @fp2mul503_mont([8 x i64]* %A24plus, [8 x i64]* nonnull %arraydecay11, [8 x i64]* nonnull %arraydecay31)
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay11, [8 x i64]* nonnull %arraydecay31, [8 x i64]* nonnull %arraydecay11)
  %arraydecay36 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t6, i64 0, i64 0
  call void @fp2mul503_mont([8 x i64]* %A24minus, [8 x i64]* nonnull %arraydecay4, [8 x i64]* nonnull %arraydecay36)
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay4, [8 x i64]* nonnull %arraydecay36, [8 x i64]* nonnull %arraydecay4)
  call void @mp_sub503_p2(i64* nonnull %arraydecay2.i82, i64* nonnull %arraydecay2.i76, i64* nonnull %arraydecay2.i76) #10
  call void @mp_sub503_p2(i64* nonnull %arraydecay8.i85, i64* nonnull %arraydecay8.i79, i64* nonnull %arraydecay8.i79) #10
  %arraydecay.i93 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t5, i64 0, i64 0, i64 0
  %arraydecay2.i94 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t6, i64 0, i64 0, i64 0
  call void @mp_sub503_p2(i64* nonnull %arraydecay.i93, i64* nonnull %arraydecay2.i94, i64* nonnull %arraydecay2.i82) #10
  %arraydecay6.i96 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t5, i64 0, i64 1, i64 0
  %arraydecay8.i97 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t6, i64 0, i64 1, i64 0
  call void @mp_sub503_p2(i64* nonnull %arraydecay6.i96, i64* nonnull %arraydecay8.i97, i64* nonnull %arraydecay8.i85) #10
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay9, [8 x i64]* nonnull %arraydecay4, [8 x i64]* nonnull %arraydecay9)
  call void @fpadd503(i64* nonnull %arraydecay2.i76, i64* nonnull %arraydecay.i75, i64* nonnull %arraydecay2.i82) #10
  call void @fpadd503(i64* nonnull %arraydecay8.i79, i64* nonnull %arraydecay6.i78, i64* nonnull %arraydecay8.i85) #10
  call void @fp2sqr503_mont([8 x i64]* nonnull %arraydecay4, [8 x i64]* nonnull %arraydecay4)
  %arraydecay57 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay16, [8 x i64]* nonnull %arraydecay4, [8 x i64]* %arraydecay57)
  call void @fpsub503(i64* nonnull %arraydecay2.i76, i64* nonnull %arraydecay.i75, i64* nonnull %arraydecay.i75) #10
  call void @fpsub503(i64* nonnull %arraydecay8.i79, i64* nonnull %arraydecay6.i78, i64* nonnull %arraydecay6.i78) #10
  call void @fp2sqr503_mont([8 x i64]* nonnull %arraydecay9, [8 x i64]* nonnull %arraydecay9)
  %arraydecay66 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 0
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay2, [8 x i64]* nonnull %arraydecay9, [8 x i64]* nonnull %arraydecay66)
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @xTPLe(%struct.point_proj* nocapture readonly %P, %struct.point_proj* %Q, [8 x i64]* %A24minus, [8 x i64]* %A24plus, i32 %e) local_unnamed_addr #4 {
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
  %cmp5 = icmp sgt i32 %e, 0
  br i1 %cmp5, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret void

for.body:                                         ; preds = %entry, %for.body
  %i.06 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  tail call void @xTPL(%struct.point_proj* %Q, %struct.point_proj* %Q, [8 x i64]* %A24minus, [8 x i64]* %A24plus)
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond = icmp eq i32 %inc, %e
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nounwind ssp uwtable
define void @get_3_isog(%struct.point_proj* %P, [8 x i64]* %A24minus, [8 x i64]* %A24plus, [2 x [8 x i64]]* %coeff) local_unnamed_addr #4 {
entry:
  %t0 = alloca [2 x [8 x i64]], align 16
  %t1 = alloca [2 x [8 x i64]], align 16
  %t2 = alloca [2 x [8 x i64]], align 16
  %t3 = alloca [2 x [8 x i64]], align 16
  %t4 = alloca [2 x [8 x i64]], align 16
  %0 = bitcast [2 x [8 x i64]]* %t0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #10
  %1 = bitcast [2 x [8 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #10
  %2 = bitcast [2 x [8 x i64]]* %t2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  %3 = bitcast [2 x [8 x i64]]* %t3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #10
  %4 = bitcast [2 x [8 x i64]]* %t4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %4) #10
  %arraydecay = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0
  %arraydecay1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 0
  %arraydecay2 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %coeff, i64 0, i64 0
  %arraydecay.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds [8 x i64], [8 x i64]* %arraydecay1, i64 0, i64 0
  %arraydecay4.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %coeff, i64 0, i64 0, i64 0
  tail call void @mp_sub503_p2(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* %arraydecay4.i) #10
  %arraydecay6.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 1, i64 0
  %arraydecay8.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 1, i64 0
  %arraydecay10.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %coeff, i64 0, i64 1, i64 0
  tail call void @mp_sub503_p2(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i) #10
  %arraydecay5 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t0, i64 0, i64 0
  call void @fp2sqr503_mont([8 x i64]* %arraydecay2, [8 x i64]* nonnull %arraydecay5)
  %arraydecay11 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %coeff, i64 1, i64 0
  call fastcc void @mp2_add([8 x i64]* %arraydecay, [8 x i64]* nonnull %arraydecay1, [8 x i64]* nonnull %arraydecay11)
  %arraydecay14 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t1, i64 0, i64 0
  call void @fp2sqr503_mont([8 x i64]* nonnull %arraydecay11, [8 x i64]* nonnull %arraydecay14)
  %arraydecay19 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t3, i64 0, i64 0
  call fastcc void @mp2_add([8 x i64]* %arraydecay, [8 x i64]* %arraydecay, [8 x i64]* nonnull %arraydecay19)
  call void @fp2sqr503_mont([8 x i64]* nonnull %arraydecay19, [8 x i64]* nonnull %arraydecay19)
  %arraydecay24 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t2, i64 0, i64 0
  %arraydecay.i58 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t3, i64 0, i64 0, i64 0
  %arraydecay2.i59 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t0, i64 0, i64 0, i64 0
  %arraydecay4.i60 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t2, i64 0, i64 0, i64 0
  call void @fpsub503(i64* nonnull %arraydecay.i58, i64* nonnull %arraydecay2.i59, i64* nonnull %arraydecay4.i60) #10
  %arraydecay6.i61 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t3, i64 0, i64 1, i64 0
  %arraydecay8.i62 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t0, i64 0, i64 1, i64 0
  %arraydecay10.i63 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t2, i64 0, i64 1, i64 0
  call void @fpsub503(i64* nonnull %arraydecay6.i61, i64* nonnull %arraydecay8.i62, i64* nonnull %arraydecay10.i63) #10
  %arraydecay2.i65 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t1, i64 0, i64 0, i64 0
  call void @fpsub503(i64* nonnull %arraydecay.i58, i64* nonnull %arraydecay2.i65, i64* nonnull %arraydecay.i58) #10
  %arraydecay8.i68 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t1, i64 0, i64 1, i64 0
  call void @fpsub503(i64* nonnull %arraydecay6.i61, i64* nonnull %arraydecay8.i68, i64* nonnull %arraydecay6.i61) #10
  %arraydecay30 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t4, i64 0, i64 0
  call fastcc void @mp2_add([8 x i64]* nonnull %arraydecay5, [8 x i64]* nonnull %arraydecay19, [8 x i64]* nonnull %arraydecay30)
  call fastcc void @mp2_add([8 x i64]* nonnull %arraydecay30, [8 x i64]* nonnull %arraydecay30, [8 x i64]* nonnull %arraydecay30)
  call fastcc void @mp2_add([8 x i64]* nonnull %arraydecay14, [8 x i64]* nonnull %arraydecay30, [8 x i64]* nonnull %arraydecay30)
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay24, [8 x i64]* nonnull %arraydecay30, [8 x i64]* %A24minus)
  call fastcc void @mp2_add([8 x i64]* nonnull %arraydecay14, [8 x i64]* nonnull %arraydecay24, [8 x i64]* nonnull %arraydecay30)
  call fastcc void @mp2_add([8 x i64]* nonnull %arraydecay30, [8 x i64]* nonnull %arraydecay30, [8 x i64]* nonnull %arraydecay30)
  call fastcc void @mp2_add([8 x i64]* nonnull %arraydecay5, [8 x i64]* nonnull %arraydecay30, [8 x i64]* nonnull %arraydecay30)
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay19, [8 x i64]* nonnull %arraydecay30, [8 x i64]* %A24plus)
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @eval_3_isog(%struct.point_proj* %Q, [2 x [8 x i64]]* %coeff) local_unnamed_addr #4 {
entry:
  %t0 = alloca [2 x [8 x i64]], align 16
  %t1 = alloca [2 x [8 x i64]], align 16
  %t2 = alloca [2 x [8 x i64]], align 16
  %0 = bitcast [2 x [8 x i64]]* %t0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #10
  %1 = bitcast [2 x [8 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #10
  %2 = bitcast [2 x [8 x i64]]* %t2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  %arraydecay = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0
  %arraydecay1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 0
  %arraydecay2 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t0, i64 0, i64 0
  call fastcc void @mp2_add([8 x i64]* %arraydecay, [8 x i64]* nonnull %arraydecay1, [8 x i64]* nonnull %arraydecay2)
  %arraydecay7 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t1, i64 0, i64 0
  %arraydecay.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds [8 x i64], [8 x i64]* %arraydecay1, i64 0, i64 0
  %arraydecay4.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t1, i64 0, i64 0, i64 0
  call void @mp_sub503_p2(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i) #10
  %arraydecay6.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 1, i64 0
  %arraydecay8.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 1, i64 0
  %arraydecay10.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t1, i64 0, i64 1, i64 0
  call void @mp_sub503_p2(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i) #10
  %arraydecay8 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %coeff, i64 0, i64 0
  call void @fp2mul503_mont([8 x i64]* %arraydecay8, [8 x i64]* nonnull %arraydecay2, [8 x i64]* nonnull %arraydecay2)
  %arraydecay12 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %coeff, i64 1, i64 0
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay12, [8 x i64]* nonnull %arraydecay7, [8 x i64]* nonnull %arraydecay7)
  %arraydecay17 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t2, i64 0, i64 0
  call fastcc void @mp2_add([8 x i64]* nonnull %arraydecay2, [8 x i64]* nonnull %arraydecay7, [8 x i64]* nonnull %arraydecay17)
  %arraydecay2.i44 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t0, i64 0, i64 0, i64 0
  call void @mp_sub503_p2(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay2.i44, i64* nonnull %arraydecay2.i44) #10
  %arraydecay8.i47 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t0, i64 0, i64 1, i64 0
  call void @mp_sub503_p2(i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay8.i47, i64* nonnull %arraydecay8.i47) #10
  call void @fp2sqr503_mont([8 x i64]* nonnull %arraydecay17, [8 x i64]* nonnull %arraydecay17)
  call void @fp2sqr503_mont([8 x i64]* nonnull %arraydecay2, [8 x i64]* nonnull %arraydecay2)
  call void @fp2mul503_mont([8 x i64]* %arraydecay, [8 x i64]* nonnull %arraydecay17, [8 x i64]* %arraydecay)
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay1, [8 x i64]* nonnull %arraydecay2, [8 x i64]* nonnull %arraydecay1)
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @inv_3_way([8 x i64]* %z1, [8 x i64]* %z2, [8 x i64]* %z3) local_unnamed_addr #4 {
entry:
  %t0 = alloca [2 x [8 x i64]], align 16
  %t1 = alloca [2 x [8 x i64]], align 16
  %t2 = alloca [2 x [8 x i64]], align 16
  %0 = bitcast [2 x [8 x i64]]* %t0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #10
  %1 = bitcast [2 x [8 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #10
  %2 = bitcast [2 x [8 x i64]]* %t2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  %arraydecay = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t0, i64 0, i64 0
  call void @fp2mul503_mont([8 x i64]* %z1, [8 x i64]* %z2, [8 x i64]* nonnull %arraydecay)
  %arraydecay2 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t1, i64 0, i64 0
  call void @fp2mul503_mont([8 x i64]* %z3, [8 x i64]* nonnull %arraydecay, [8 x i64]* nonnull %arraydecay2)
  call void @fp2inv503_mont([8 x i64]* nonnull %arraydecay2)
  %arraydecay5 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t2, i64 0, i64 0
  call void @fp2mul503_mont([8 x i64]* %z3, [8 x i64]* nonnull %arraydecay2, [8 x i64]* nonnull %arraydecay5)
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay, [8 x i64]* nonnull %arraydecay2, [8 x i64]* %z3)
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay5, [8 x i64]* %z2, [8 x i64]* nonnull %arraydecay)
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay5, [8 x i64]* %z1, [8 x i64]* %z2)
  %3 = bitcast [2 x [8 x i64]]* %t0 to <4 x i64>*
  %4 = load <4 x i64>, <4 x i64>* %3, align 16, !tbaa !3
  %5 = bitcast [8 x i64]* %z1 to <4 x i64>*
  store <4 x i64> %4, <4 x i64>* %5, align 8, !tbaa !3
  %arrayidx.4.i.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t0, i64 0, i64 0, i64 4
  %arrayidx2.4.i.i = getelementptr inbounds [8 x i64], [8 x i64]* %z1, i64 0, i64 4
  %6 = bitcast i64* %arrayidx.4.i.i to <4 x i64>*
  %7 = load <4 x i64>, <4 x i64>* %6, align 16, !tbaa !3
  %8 = bitcast i64* %arrayidx2.4.i.i to <4 x i64>*
  store <4 x i64> %7, <4 x i64>* %8, align 8, !tbaa !3
  %arraydecay4.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t0, i64 0, i64 1, i64 0
  %arraydecay6.i = getelementptr inbounds [8 x i64], [8 x i64]* %z1, i64 1, i64 0
  %9 = bitcast i64* %arraydecay4.i to <4 x i64>*
  %10 = load <4 x i64>, <4 x i64>* %9, align 16, !tbaa !3
  %11 = bitcast i64* %arraydecay6.i to <4 x i64>*
  store <4 x i64> %10, <4 x i64>* %11, align 8, !tbaa !3
  %arrayidx.4.i15.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t0, i64 0, i64 1, i64 4
  %arrayidx2.4.i16.i = getelementptr inbounds [8 x i64], [8 x i64]* %z1, i64 1, i64 4
  %12 = bitcast i64* %arrayidx.4.i15.i to <4 x i64>*
  %13 = load <4 x i64>, <4 x i64>* %12, align 16, !tbaa !3
  %14 = bitcast i64* %arrayidx2.4.i16.i to <4 x i64>*
  store <4 x i64> %13, <4 x i64>* %14, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @get_A([8 x i64]* %xP, [8 x i64]* %xQ, [8 x i64]* %xR, [8 x i64]* %A) local_unnamed_addr #4 {
entry:
  %t0 = alloca [2 x [8 x i64]], align 16
  %t1 = alloca [2 x [8 x i64]], align 16
  %one = alloca [2 x [8 x i64]], align 16
  %0 = bitcast [2 x [8 x i64]]* %t0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #10
  %1 = bitcast [2 x [8 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #10
  %2 = bitcast [2 x [8 x i64]]* %one to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  %3 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %one, i64 0, i64 1
  %4 = bitcast [8 x i64]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %4, i8 0, i64 64, i1 false)
  %arraydecay = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %one, i64 0, i64 0, i64 0
  store i64 1017, i64* %arraydecay, align 16, !tbaa !3
  %arrayidx2.1.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %one, i64 0, i64 0, i64 1
  %arrayidx2.3.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %one, i64 0, i64 0, i64 3
  %5 = bitcast i64* %arrayidx2.1.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 16, i1 false)
  %6 = bitcast i64* %arrayidx2.3.i to <4 x i64>*
  store <4 x i64> <i64 -5476377146882523136, i64 7190870292575474356, i64 5866111745285600125, i64 -8444962029219724990>, <4 x i64>* %6, align 8, !tbaa !3
  %arrayidx2.7.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %one, i64 0, i64 0, i64 7
  store i64 10972777180780883, i64* %arrayidx2.7.i, align 8, !tbaa !3
  %arraydecay1 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t1, i64 0, i64 0
  %arraydecay.i33 = getelementptr inbounds [8 x i64], [8 x i64]* %xP, i64 0, i64 0
  %arraydecay2.i34 = getelementptr inbounds [8 x i64], [8 x i64]* %xQ, i64 0, i64 0
  %arraydecay4.i35 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t1, i64 0, i64 0, i64 0
  call void @fpadd503(i64* %arraydecay.i33, i64* %arraydecay2.i34, i64* nonnull %arraydecay4.i35) #10
  %arraydecay6.i36 = getelementptr inbounds [8 x i64], [8 x i64]* %xP, i64 1, i64 0
  %arraydecay8.i37 = getelementptr inbounds [8 x i64], [8 x i64]* %xQ, i64 1, i64 0
  %arraydecay10.i38 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t1, i64 0, i64 1, i64 0
  call void @fpadd503(i64* nonnull %arraydecay6.i36, i64* nonnull %arraydecay8.i37, i64* nonnull %arraydecay10.i38) #10
  %arraydecay2 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t0, i64 0, i64 0
  call void @fp2mul503_mont([8 x i64]* %xP, [8 x i64]* %xQ, [8 x i64]* nonnull %arraydecay2)
  call void @fp2mul503_mont([8 x i64]* %xR, [8 x i64]* nonnull %arraydecay1, [8 x i64]* %A)
  %arraydecay.i39 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t0, i64 0, i64 0, i64 0
  %arraydecay2.i40 = getelementptr inbounds [8 x i64], [8 x i64]* %A, i64 0, i64 0
  call void @fpadd503(i64* nonnull %arraydecay.i39, i64* %arraydecay2.i40, i64* %arraydecay2.i40) #10
  %arraydecay6.i42 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t0, i64 0, i64 1, i64 0
  %arraydecay8.i43 = getelementptr inbounds [8 x i64], [8 x i64]* %A, i64 1, i64 0
  call void @fpadd503(i64* nonnull %arraydecay6.i42, i64* nonnull %arraydecay8.i43, i64* nonnull %arraydecay8.i43) #10
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay2, [8 x i64]* %xR, [8 x i64]* nonnull %arraydecay2)
  call void @fpsub503(i64* %arraydecay2.i40, i64* nonnull %arraydecay, i64* %arraydecay2.i40) #10
  %arraydecay8.i49 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %one, i64 0, i64 1, i64 0
  call void @fpsub503(i64* nonnull %arraydecay8.i43, i64* nonnull %arraydecay8.i49, i64* nonnull %arraydecay8.i43) #10
  call void @fpadd503(i64* nonnull %arraydecay.i39, i64* nonnull %arraydecay.i39, i64* nonnull %arraydecay.i39) #10
  call void @fpadd503(i64* nonnull %arraydecay6.i42, i64* nonnull %arraydecay6.i42, i64* nonnull %arraydecay6.i42) #10
  %arraydecay2.i58 = getelementptr inbounds [8 x i64], [8 x i64]* %xR, i64 0, i64 0
  call void @fpadd503(i64* nonnull %arraydecay4.i35, i64* %arraydecay2.i58, i64* nonnull %arraydecay4.i35) #10
  %arraydecay8.i61 = getelementptr inbounds [8 x i64], [8 x i64]* %xR, i64 1, i64 0
  call void @fpadd503(i64* nonnull %arraydecay10.i38, i64* nonnull %arraydecay8.i61, i64* nonnull %arraydecay10.i38) #10
  call void @fpadd503(i64* nonnull %arraydecay.i39, i64* nonnull %arraydecay.i39, i64* nonnull %arraydecay.i39) #10
  call void @fpadd503(i64* nonnull %arraydecay6.i42, i64* nonnull %arraydecay6.i42, i64* nonnull %arraydecay6.i42) #10
  call void @fp2sqr503_mont([8 x i64]* %A, [8 x i64]* %A)
  call void @fp2inv503_mont([8 x i64]* nonnull %arraydecay2)
  call void @fp2mul503_mont([8 x i64]* %A, [8 x i64]* nonnull %arraydecay2, [8 x i64]* %A)
  call void @fpsub503(i64* %arraydecay2.i40, i64* nonnull %arraydecay4.i35, i64* %arraydecay2.i40) #10
  call void @fpsub503(i64* nonnull %arraydecay8.i43, i64* nonnull %arraydecay10.i38, i64* nonnull %arraydecay8.i43) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @j_inv([8 x i64]* %A, [8 x i64]* %C, [8 x i64]* %jinv) local_unnamed_addr #4 {
entry:
  %t0 = alloca [2 x [8 x i64]], align 16
  %t1 = alloca [2 x [8 x i64]], align 16
  %0 = bitcast [2 x [8 x i64]]* %t0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #10
  %1 = bitcast [2 x [8 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #10
  tail call void @fp2sqr503_mont([8 x i64]* %A, [8 x i64]* %jinv)
  %arraydecay = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t1, i64 0, i64 0
  call void @fp2sqr503_mont([8 x i64]* %C, [8 x i64]* nonnull %arraydecay)
  %arraydecay3 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t0, i64 0, i64 0
  %arraydecay.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t1, i64 0, i64 0, i64 0
  %arraydecay4.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t0, i64 0, i64 0, i64 0
  call void @fpadd503(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay.i, i64* nonnull %arraydecay4.i) #10
  %arraydecay6.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t1, i64 0, i64 1, i64 0
  %arraydecay10.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t0, i64 0, i64 1, i64 0
  call void @fpadd503(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay10.i) #10
  %arraydecay.i39 = getelementptr inbounds [8 x i64], [8 x i64]* %jinv, i64 0, i64 0
  call void @fpsub503(i64* %arraydecay.i39, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i) #10
  %arraydecay6.i42 = getelementptr inbounds [8 x i64], [8 x i64]* %jinv, i64 1, i64 0
  call void @fpsub503(i64* nonnull %arraydecay6.i42, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i) #10
  call void @fpsub503(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay.i, i64* nonnull %arraydecay4.i) #10
  call void @fpsub503(i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay10.i) #10
  call void @fpsub503(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay.i, i64* %arraydecay.i39) #10
  call void @fpsub503(i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i42) #10
  call void @fp2sqr503_mont([8 x i64]* nonnull %arraydecay, [8 x i64]* nonnull %arraydecay)
  call void @fp2mul503_mont([8 x i64]* %jinv, [8 x i64]* nonnull %arraydecay, [8 x i64]* %jinv)
  call void @fpadd503(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i) #10
  call void @fpadd503(i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i) #10
  call void @fpadd503(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i) #10
  call void @fpadd503(i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i) #10
  call void @fp2sqr503_mont([8 x i64]* nonnull %arraydecay3, [8 x i64]* nonnull %arraydecay)
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay3, [8 x i64]* nonnull %arraydecay, [8 x i64]* nonnull %arraydecay3)
  call void @fpadd503(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i) #10
  call void @fpadd503(i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i) #10
  call void @fpadd503(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i) #10
  call void @fpadd503(i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i) #10
  call void @fp2inv503_mont([8 x i64]* %jinv)
  call void @fp2mul503_mont([8 x i64]* %jinv, [8 x i64]* nonnull %arraydecay3, [8 x i64]* %jinv)
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @xDBLADD(%struct.point_proj* %P, %struct.point_proj* %Q, [8 x i64]* %XPQ, [8 x i64]* %ZPQ, [8 x i64]* %A24) local_unnamed_addr #4 {
entry:
  %t0 = alloca [2 x [8 x i64]], align 16
  %t1 = alloca [2 x [8 x i64]], align 16
  %t2 = alloca [2 x [8 x i64]], align 16
  %0 = bitcast [2 x [8 x i64]]* %t0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #10
  %1 = bitcast [2 x [8 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #10
  %2 = bitcast [2 x [8 x i64]]* %t2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  %arraydecay = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0
  %arraydecay1 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 0
  %arraydecay2 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t0, i64 0, i64 0
  call fastcc void @mp2_add([8 x i64]* %arraydecay, [8 x i64]* nonnull %arraydecay1, [8 x i64]* nonnull %arraydecay2)
  %arraydecay7 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t1, i64 0, i64 0
  %arraydecay.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds [8 x i64], [8 x i64]* %arraydecay1, i64 0, i64 0
  %arraydecay4.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t1, i64 0, i64 0, i64 0
  call void @mp_sub503_p2(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i) #10
  %arraydecay6.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 1, i64 0
  %arraydecay8.i = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 1, i64 0
  %arraydecay10.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t1, i64 0, i64 1, i64 0
  call void @mp_sub503_p2(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i) #10
  call void @fp2sqr503_mont([8 x i64]* nonnull %arraydecay2, [8 x i64]* %arraydecay)
  %arraydecay12 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0
  %arraydecay14 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 0
  %arraydecay15 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t2, i64 0, i64 0
  %arraydecay.i112 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0, i64 0
  %arraydecay2.i113 = getelementptr inbounds [8 x i64], [8 x i64]* %arraydecay14, i64 0, i64 0
  %arraydecay4.i114 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t2, i64 0, i64 0, i64 0
  call void @mp_sub503_p2(i64* %arraydecay.i112, i64* nonnull %arraydecay2.i113, i64* nonnull %arraydecay4.i114) #10
  %arraydecay6.i115 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 1, i64 0
  %arraydecay8.i116 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 1, i64 0
  %arraydecay10.i117 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t2, i64 0, i64 1, i64 0
  call void @mp_sub503_p2(i64* nonnull %arraydecay6.i115, i64* nonnull %arraydecay8.i116, i64* nonnull %arraydecay10.i117) #10
  call fastcc void @mp2_add([8 x i64]* %arraydecay12, [8 x i64]* nonnull %arraydecay14, [8 x i64]* %arraydecay12)
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay2, [8 x i64]* nonnull %arraydecay15, [8 x i64]* nonnull %arraydecay2)
  call void @fp2sqr503_mont([8 x i64]* nonnull %arraydecay7, [8 x i64]* nonnull %arraydecay1)
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay7, [8 x i64]* %arraydecay12, [8 x i64]* nonnull %arraydecay7)
  call void @mp_sub503_p2(i64* %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i114) #10
  call void @mp_sub503_p2(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i117) #10
  call void @fp2mul503_mont([8 x i64]* %arraydecay, [8 x i64]* nonnull %arraydecay1, [8 x i64]* %arraydecay)
  call void @fp2mul503_mont([8 x i64]* %A24, [8 x i64]* nonnull %arraydecay15, [8 x i64]* %arraydecay12)
  %arraydecay.i124 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t0, i64 0, i64 0, i64 0
  call void @mp_sub503_p2(i64* nonnull %arraydecay.i124, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay2.i113) #10
  %arraydecay6.i127 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t0, i64 0, i64 1, i64 0
  call void @mp_sub503_p2(i64* nonnull %arraydecay6.i127, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay8.i116) #10
  call fastcc void @mp2_add([8 x i64]* %arraydecay12, [8 x i64]* nonnull %arraydecay1, [8 x i64]* nonnull %arraydecay1)
  call fastcc void @mp2_add([8 x i64]* nonnull %arraydecay2, [8 x i64]* nonnull %arraydecay7, [8 x i64]* %arraydecay12)
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay1, [8 x i64]* nonnull %arraydecay15, [8 x i64]* nonnull %arraydecay1)
  call void @fp2sqr503_mont([8 x i64]* nonnull %arraydecay14, [8 x i64]* nonnull %arraydecay14)
  call void @fp2sqr503_mont([8 x i64]* %arraydecay12, [8 x i64]* %arraydecay12)
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay14, [8 x i64]* %XPQ, [8 x i64]* nonnull %arraydecay14)
  call void @fp2mul503_mont([8 x i64]* %arraydecay12, [8 x i64]* %ZPQ, [8 x i64]* %arraydecay12)
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @xTPL_fast(%struct.point_proj* %P, %struct.point_proj* %Q, [8 x i64]* %A2) local_unnamed_addr #4 {
entry:
  %t1 = alloca [2 x [8 x i64]], align 16
  %t2 = alloca [2 x [8 x i64]], align 16
  %t3 = alloca [2 x [8 x i64]], align 16
  %t4 = alloca [2 x [8 x i64]], align 16
  %0 = bitcast [2 x [8 x i64]]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #10
  %1 = bitcast [2 x [8 x i64]]* %t2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #10
  %2 = bitcast [2 x [8 x i64]]* %t3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  %3 = bitcast [2 x [8 x i64]]* %t4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #10
  %arraydecay = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0
  %arraydecay1 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t1, i64 0, i64 0
  call void @fp2sqr503_mont([8 x i64]* %arraydecay, [8 x i64]* nonnull %arraydecay1)
  %arraydecay2 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 0
  %arraydecay3 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t2, i64 0, i64 0
  call void @fp2sqr503_mont([8 x i64]* nonnull %arraydecay2, [8 x i64]* nonnull %arraydecay3)
  %arraydecay6 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t3, i64 0, i64 0
  %arraydecay.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t1, i64 0, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t2, i64 0, i64 0, i64 0
  %arraydecay4.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t3, i64 0, i64 0, i64 0
  call void @fpadd503(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i) #10
  %arraydecay6.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t1, i64 0, i64 1, i64 0
  %arraydecay8.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t2, i64 0, i64 1, i64 0
  %arraydecay10.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t3, i64 0, i64 1, i64 0
  call void @fpadd503(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i) #10
  %arraydecay11 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t4, i64 0, i64 0
  %arraydecay.i71 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 0, i64 0
  %arraydecay2.i72 = getelementptr inbounds [8 x i64], [8 x i64]* %arraydecay2, i64 0, i64 0
  %arraydecay4.i73 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t4, i64 0, i64 0, i64 0
  call void @fpadd503(i64* %arraydecay.i71, i64* nonnull %arraydecay2.i72, i64* nonnull %arraydecay4.i73) #10
  %arraydecay6.i74 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 0, i64 1, i64 0
  %arraydecay8.i75 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %P, i64 0, i32 1, i64 1, i64 0
  %arraydecay10.i76 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t4, i64 0, i64 1, i64 0
  call void @fpadd503(i64* nonnull %arraydecay6.i74, i64* nonnull %arraydecay8.i75, i64* nonnull %arraydecay10.i76) #10
  call void @fp2sqr503_mont([8 x i64]* nonnull %arraydecay11, [8 x i64]* nonnull %arraydecay11)
  call void @fpsub503(i64* nonnull %arraydecay4.i73, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i73) #10
  call void @fpsub503(i64* nonnull %arraydecay10.i76, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i76) #10
  call void @fp2mul503_mont([8 x i64]* %A2, [8 x i64]* nonnull %arraydecay11, [8 x i64]* nonnull %arraydecay11)
  call void @fpadd503(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i73, i64* nonnull %arraydecay4.i73) #10
  call void @fpadd503(i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay10.i76, i64* nonnull %arraydecay10.i76) #10
  call void @fpsub503(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i) #10
  call void @fpsub503(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i) #10
  call void @fp2sqr503_mont([8 x i64]* nonnull %arraydecay6, [8 x i64]* nonnull %arraydecay6)
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay1, [8 x i64]* nonnull %arraydecay11, [8 x i64]* nonnull %arraydecay1)
  call void @fpadd503(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay.i, i64* nonnull %arraydecay.i) #10
  call void @fpadd503(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i) #10
  call void @fpadd503(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay.i, i64* nonnull %arraydecay.i) #10
  call void @fpadd503(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i) #10
  call void @fpsub503(i64* nonnull %arraydecay.i, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay.i) #10
  call void @fpsub503(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay6.i) #10
  call void @fp2sqr503_mont([8 x i64]* nonnull %arraydecay1, [8 x i64]* nonnull %arraydecay1)
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay3, [8 x i64]* nonnull %arraydecay11, [8 x i64]* nonnull %arraydecay3)
  call void @fpadd503(i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay2.i) #10
  call void @fpadd503(i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay8.i) #10
  call void @fpadd503(i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay2.i) #10
  call void @fpadd503(i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay8.i) #10
  call void @fpsub503(i64* nonnull %arraydecay2.i, i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay2.i) #10
  call void @fpsub503(i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay10.i, i64* nonnull %arraydecay8.i) #10
  call void @fp2sqr503_mont([8 x i64]* nonnull %arraydecay3, [8 x i64]* nonnull %arraydecay3)
  %arraydecay59 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 0, i64 0
  call void @fp2mul503_mont([8 x i64]* %arraydecay, [8 x i64]* nonnull %arraydecay3, [8 x i64]* %arraydecay59)
  %arraydecay64 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %Q, i64 0, i32 1, i64 0
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay2, [8 x i64]* nonnull %arraydecay1, [8 x i64]* nonnull %arraydecay64)
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @xTPLe_fast(%struct.point_proj* nocapture readonly %P, %struct.point_proj* %Q, [8 x i64]* %A2, i32 %e) local_unnamed_addr #4 {
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
  %cmp5 = icmp sgt i32 %e, 0
  br i1 %cmp5, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret void

for.body:                                         ; preds = %entry, %for.body
  %i.06 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  tail call void @xTPL_fast(%struct.point_proj* %Q, %struct.point_proj* %Q, [8 x i64]* %A2)
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond = icmp eq i32 %inc, %e
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nounwind ssp uwtable
define i32 @random_mod_order_A_SIDHp503(i8* %random_digits) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @randombytes(i8* %random_digits, i64 32) #10
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds i8, i8* %random_digits, i64 31
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %1 = and i8 %0, 3
  store i8 %1, i8* %arrayidx, align 1, !tbaa !7
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i32 @randombytes(i8*, i64) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define i32 @random_mod_order_B_SIDHp503(i8* %random_digits) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @randombytes(i8* %random_digits, i64 32) #10
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds i8, i8* %random_digits, i64 31
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %1 = and i8 %0, 15
  store i8 %1, i8* %arrayidx, align 1, !tbaa !7
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind ssp uwtable
define i32 @EphemeralKeyGeneration_A_SIDHp503(i8* %PrivateKeyA, i8* %PublicKeyA) local_unnamed_addr #4 {
entry:
  %temp.i.i.i.i = alloca [16 x i64], align 16
  %one.i.i.i = alloca [8 x i64], align 16
  %t.i = alloca [2 x [8 x i64]], align 16
  %R = alloca [1 x %struct.point_proj], align 16
  %phiP = alloca [1 x %struct.point_proj], align 16
  %phiQ = alloca [1 x %struct.point_proj], align 16
  %phiR = alloca [1 x %struct.point_proj], align 16
  %pts = alloca [7 x [1 x %struct.point_proj]], align 16
  %XPA = alloca [2 x [8 x i64]], align 16
  %XQA = alloca [2 x [8 x i64]], align 16
  %XRA = alloca [2 x [8 x i64]], align 16
  %coeff = alloca [3 x [2 x [8 x i64]]], align 16
  %A24plus = alloca [2 x [8 x i64]], align 16
  %C24 = alloca [2 x [8 x i64]], align 16
  %A = alloca [2 x [8 x i64]], align 16
  %pts_index = alloca [7 x i32], align 16
  %SecretKeyA = alloca [4 x i64], align 16
  %0 = bitcast [1 x %struct.point_proj]* %R to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #10
  %1 = bitcast [1 x %struct.point_proj]* %phiP to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 256, i1 false)
  %2 = bitcast [1 x %struct.point_proj]* %phiQ to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 256, i1 false)
  %3 = bitcast [1 x %struct.point_proj]* %phiR to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %3) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %3, i8 0, i64 256, i1 false)
  %4 = bitcast [7 x [1 x %struct.point_proj]]* %pts to i8*
  call void @llvm.lifetime.start.p0i8(i64 1792, i8* nonnull %4) #10
  %5 = bitcast [2 x [8 x i64]]* %XPA to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #10
  %6 = bitcast [2 x [8 x i64]]* %XQA to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6) #10
  %7 = bitcast [2 x [8 x i64]]* %XRA to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %7) #10
  %8 = bitcast [3 x [2 x [8 x i64]]]* %coeff to i8*
  call void @llvm.lifetime.start.p0i8(i64 384, i8* nonnull %8) #10
  %9 = bitcast [2 x [8 x i64]]* %A24plus to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %9) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 128, i1 false)
  %10 = bitcast [2 x [8 x i64]]* %C24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %10) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 128, i1 false)
  %11 = bitcast [2 x [8 x i64]]* %A to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 128, i1 false)
  %12 = bitcast [7 x i32]* %pts_index to i8*
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %12) #10
  %13 = bitcast [4 x i64]* %SecretKeyA to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %13) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %13, i8 0, i64 32, i1 false)
  %arraydecay = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %XPA, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %XQA, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %XRA, i64 0, i64 0
  %14 = bitcast [2 x [8 x i64]]* %XPA to <4 x i64>*
  store <4 x i64> <i64 6703660896400103571, i64 -5909411912860498377, i64 3678485159306027873, i64 -1093120675051731550>, <4 x i64>* %14, align 16, !tbaa !3
  %arrayidx2.4.i.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %XPA, i64 0, i64 0, i64 4
  %15 = bitcast i64* %arrayidx2.4.i.i to <4 x i64>*
  store <4 x i64> <i64 2873992082182551772, i64 7171536194148839865, i64 -8265119447870746812, i64 16352189888232255>, <4 x i64>* %15, align 16, !tbaa !3
  %arraydecay2.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %XPA, i64 0, i64 1, i64 0
  %16 = bitcast i64* %arraydecay2.i to <4 x i64>*
  store <4 x i64> <i64 9094247284453741849, i64 -3193704231875796372, i64 -4566050114418754087, i64 -54528743463601070>, <4 x i64>* %16, align 16, !tbaa !3
  %arrayidx2.4.i86.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %XPA, i64 0, i64 1, i64 4
  %17 = bitcast i64* %arrayidx2.4.i86.i to <4 x i64>*
  store <4 x i64> <i64 -3047936482764286209, i64 1922054504381246808, i64 -1396317688998530438, i64 7612225463883843>, <4 x i64>* %17, align 16, !tbaa !3
  %18 = bitcast [2 x [8 x i64]]* %XQA to <4 x i64>*
  store <4 x i64> <i64 5585423759613901741, i64 2458739554285137871, i64 8711841994324700402, i64 7897112202292909028>, <4 x i64>* %18, align 16, !tbaa !3
  %arrayidx2.4.i72.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %XQA, i64 0, i64 0, i64 4
  %19 = bitcast i64* %arrayidx2.4.i72.i to <4 x i64>*
  store <4 x i64> <i64 5786141083180541608, i64 -1166217168022687708, i64 -3785477569279922225, i64 4594121609494003>, <4 x i64>* %19, align 16, !tbaa !3
  %arraydecay8.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %XQA, i64 0, i64 1, i64 0
  %20 = bitcast i64* %arraydecay8.i to <4 x i64>*
  store <4 x i64> <i64 969679319129173575, i64 -2352131510239393043, i64 -5157801319708392578, i64 -8562986439770759325>, <4 x i64>* %20, align 16, !tbaa !3
  %arrayidx2.4.i58.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %XQA, i64 0, i64 1, i64 4
  %21 = bitcast i64* %arrayidx2.4.i58.i to <4 x i64>*
  store <4 x i64> <i64 -6951028502467660703, i64 -9067673585621255480, i64 -1528728095638149651, i64 1716330900454016>, <4 x i64>* %21, align 16, !tbaa !3
  %22 = bitcast [2 x [8 x i64]]* %XRA to <4 x i64>*
  store <4 x i64> <i64 2133917679667870743, i64 6131595433662066731, i64 4132892201466249495, i64 4243264721812232392>, <4 x i64>* %22, align 16, !tbaa !3
  %arrayidx2.4.i44.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %XRA, i64 0, i64 0, i64 4
  %23 = bitcast i64* %arrayidx2.4.i44.i to <4 x i64>*
  store <4 x i64> <i64 6868906156409292872, i64 -520717866781942678, i64 -2868022759630592540, i64 12061138545445877>, <4 x i64>* %23, align 16, !tbaa !3
  %arraydecay14.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %XRA, i64 0, i64 1, i64 0
  %24 = bitcast i64* %arraydecay14.i to <4 x i64>*
  store <4 x i64> <i64 -4294522333240218021, i64 8869864843183837084, i64 -8701368168747863904, i64 -4965310479604401471>, <4 x i64>* %24, align 16, !tbaa !3
  %arrayidx2.4.i30.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %XRA, i64 0, i64 1, i64 4
  %25 = bitcast i64* %arrayidx2.4.i30.i to <4 x i64>*
  store <4 x i64> <i64 -6825489128068601256, i64 -8596507567827754495, i64 3990273888349394775, i64 1829864135412729>, <4 x i64>* %25, align 16, !tbaa !3
  %arraydecay3 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0
  %arraydecay.i188 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 0, i64 0
  %26 = bitcast [1 x %struct.point_proj]* %phiP to <4 x i64>*
  store <4 x i64> <i64 -2350017237560825637, i64 -4392041795693706226, i64 4385548945328509436, i64 -771423915569509155>, <4 x i64>* %26, align 16, !tbaa !3
  %arrayidx2.4.i.i192 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 0, i64 4
  %27 = bitcast i64* %arrayidx2.4.i.i192 to <4 x i64>*
  store <4 x i64> <i64 4241169154243281967, i64 -9055620440120322608, i64 7121043649763917783, i64 8110065236168021>, <4 x i64>* %27, align 16, !tbaa !3
  %arraydecay2.i196 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 1, i64 0
  %arraydecay5.i204 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 0, i64 0
  %28 = bitcast i64* %arraydecay2.i196 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %28, i8 0, i64 64, i1 false)
  %29 = bitcast [1 x %struct.point_proj]* %phiQ to <4 x i64>*
  store <4 x i64> <i64 3329382374260773473, i64 3539711558809017592, i64 6589269349358072822, i64 3923158083819410753>, <4 x i64>* %29, align 16, !tbaa !3
  %arrayidx2.4.i72.i208 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 0, i64 4
  %30 = bitcast i64* %arrayidx2.4.i72.i208 to <4 x i64>*
  store <4 x i64> <i64 -5273354194737115313, i64 1859160943325703733, i64 -794327878939895329, i64 15124960556656395>, <4 x i64>* %30, align 16, !tbaa !3
  %arraydecay8.i212 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 1, i64 0
  %arraydecay11.i220 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 0, i64 0
  %31 = bitcast i64* %arraydecay8.i212 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %31, i8 0, i64 64, i1 false)
  %32 = bitcast [1 x %struct.point_proj]* %phiR to <4 x i64>*
  store <4 x i64> <i64 3317107392457288018, i64 -3242006345699259022, i64 2378317285299659333, i64 2752067541212454492>, <4 x i64>* %32, align 16, !tbaa !3
  %arrayidx2.4.i44.i224 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 0, i64 4
  %33 = bitcast i64* %arrayidx2.4.i44.i224 to <4 x i64>*
  store <4 x i64> <i64 5401008318620329606, i64 -3485230783958939245, i64 -925585022753670519, i64 3869545957505286>, <4 x i64>* %33, align 16, !tbaa !3
  %arraydecay14.i228 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 1, i64 0
  %34 = bitcast i64* %arraydecay14.i228 to <4 x i64>*
  store <4 x i64> <i64 279293490929988356, i64 -7404656326429938090, i64 -9205024153151674593, i64 1152299110578731394>, <4 x i64>* %34, align 16, !tbaa !3
  %arrayidx2.4.i30.i232 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 1, i64 4
  %35 = bitcast i64* %arrayidx2.4.i30.i232 to <4 x i64>*
  store <4 x i64> <i64 -1908147126641080015, i64 1402013848611896279, i64 564564276466162271, i64 16163713578947404>, <4 x i64>* %35, align 16, !tbaa !3
  %Z = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 1
  %arraydecay12 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %Z, i64 0, i64 0, i64 0
  store i64 1017, i64* %arraydecay12, align 16, !tbaa !3
  %arrayidx2.1.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.3.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 1, i64 0, i64 3
  %36 = bitcast i64* %arrayidx2.1.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %36, i8 0, i64 16, i1 false)
  %37 = bitcast i64* %arrayidx2.3.i to <4 x i64>*
  store <4 x i64> <i64 -5476377146882523136, i64 7190870292575474356, i64 5866111745285600125, i64 -8444962029219724990>, <4 x i64>* %37, align 8, !tbaa !3
  %arrayidx2.7.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 1, i64 0, i64 7
  store i64 10972777180780883, i64* %arrayidx2.7.i, align 8, !tbaa !3
  %Z14 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 1
  %arraydecay16 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %Z14, i64 0, i64 0, i64 0
  store i64 1017, i64* %arraydecay16, align 16, !tbaa !3
  %arrayidx2.1.i236 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.3.i238 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 1, i64 0, i64 3
  %38 = bitcast i64* %arrayidx2.1.i236 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %38, i8 0, i64 16, i1 false)
  %39 = bitcast i64* %arrayidx2.3.i238 to <4 x i64>*
  store <4 x i64> <i64 -5476377146882523136, i64 7190870292575474356, i64 5866111745285600125, i64 -8444962029219724990>, <4 x i64>* %39, align 8, !tbaa !3
  %arrayidx2.7.i242 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 1, i64 0, i64 7
  store i64 10972777180780883, i64* %arrayidx2.7.i242, align 8, !tbaa !3
  %Z18 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 1
  %arraydecay20 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %Z18, i64 0, i64 0, i64 0
  store i64 1017, i64* %arraydecay20, align 16, !tbaa !3
  %arrayidx2.1.i243 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.3.i245 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 1, i64 0, i64 3
  %40 = bitcast i64* %arrayidx2.1.i243 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %40, i8 0, i64 16, i1 false)
  %41 = bitcast i64* %arrayidx2.3.i245 to <4 x i64>*
  store <4 x i64> <i64 -5476377146882523136, i64 7190870292575474356, i64 5866111745285600125, i64 -8444962029219724990>, <4 x i64>* %41, align 8, !tbaa !3
  %arrayidx2.7.i249 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 1, i64 0, i64 7
  store i64 10972777180780883, i64* %arrayidx2.7.i249, align 8, !tbaa !3
  %arraydecay22 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A24plus, i64 0, i64 0, i64 0
  store i64 1017, i64* %arraydecay22, align 16, !tbaa !3
  %arrayidx2.1.i250 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A24plus, i64 0, i64 0, i64 1
  %arrayidx2.3.i252 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A24plus, i64 0, i64 0, i64 3
  %42 = bitcast i64* %arrayidx2.1.i250 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %42, i8 0, i64 16, i1 false)
  %43 = bitcast i64* %arrayidx2.3.i252 to <4 x i64>*
  store <4 x i64> <i64 -5476377146882523136, i64 7190870292575474356, i64 5866111745285600125, i64 -8444962029219724990>, <4 x i64>* %43, align 8, !tbaa !3
  %arrayidx2.7.i256 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A24plus, i64 0, i64 0, i64 7
  store i64 10972777180780883, i64* %arrayidx2.7.i256, align 8, !tbaa !3
  %arraydecay23 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A24plus, i64 0, i64 0
  call fastcc void @mp2_add([8 x i64]* nonnull %arraydecay23, [8 x i64]* nonnull %arraydecay23, [8 x i64]* nonnull %arraydecay23)
  %arraydecay28 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %C24, i64 0, i64 0
  call fastcc void @mp2_add([8 x i64]* nonnull %arraydecay23, [8 x i64]* nonnull %arraydecay23, [8 x i64]* nonnull %arraydecay28)
  %arraydecay31 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A, i64 0, i64 0
  call fastcc void @mp2_add([8 x i64]* nonnull %arraydecay23, [8 x i64]* nonnull %arraydecay28, [8 x i64]* nonnull %arraydecay31)
  call fastcc void @mp2_add([8 x i64]* nonnull %arraydecay28, [8 x i64]* nonnull %arraydecay28, [8 x i64]* nonnull %arraydecay23)
  %arraydecay35 = getelementptr inbounds [4 x i64], [4 x i64]* %SecretKeyA, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %13, i8* align 1 %PrivateKeyA, i64 32, i1 false)
  %arraydecay40 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0
  call fastcc void @LADDER3PT([8 x i64]* nonnull %arraydecay, [8 x i64]* nonnull %arraydecay1, [8 x i64]* nonnull %arraydecay2, i64* nonnull %arraydecay35, i32 0, %struct.point_proj* nonnull %arraydecay40, [8 x i64]* nonnull %arraydecay31)
  %arrayidx.4.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 0, i64 4
  %arraydecay4.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 1, i64 0
  %arrayidx.4.i15.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 1, i64 4
  %arraydecay.i266 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 0, i64 0
  %arrayidx.4.i.i274 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 0, i64 4
  %arraydecay4.i282 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 1, i64 0
  %arrayidx.4.i15.i290 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 1, i64 4
  %arraydecay70 = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %coeff, i64 0, i64 0
  %44 = bitcast [1 x %struct.point_proj]* %R to <4 x i64>*
  %45 = bitcast i64* %arrayidx.4.i.i to <4 x i64>*
  %46 = bitcast i64* %arraydecay4.i to <4 x i64>*
  %47 = bitcast i64* %arrayidx.4.i15.i to <4 x i64>*
  %48 = bitcast i64* %arraydecay.i266 to <4 x i64>*
  %49 = bitcast i64* %arrayidx.4.i.i274 to <4 x i64>*
  %50 = bitcast i64* %arraydecay4.i282 to <4 x i64>*
  %51 = bitcast i64* %arrayidx.4.i15.i290 to <4 x i64>*
  %52 = bitcast [1 x %struct.point_proj]* %R to <4 x i64>*
  %53 = bitcast i64* %arrayidx.4.i.i to <4 x i64>*
  %54 = bitcast i64* %arraydecay4.i to <4 x i64>*
  %55 = bitcast i64* %arrayidx.4.i15.i to <4 x i64>*
  %56 = bitcast i64* %arraydecay.i266 to <4 x i64>*
  %57 = bitcast i64* %arrayidx.4.i.i274 to <4 x i64>*
  %58 = bitcast i64* %arraydecay4.i282 to <4 x i64>*
  %59 = bitcast i64* %arrayidx.4.i15.i290 to <4 x i64>*
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.end, %entry
  %ii.0396 = phi i32 [ 0, %entry ], [ %ii.1.lcssa, %for.end ]
  %npts.0395 = phi i32 [ 0, %entry ], [ %sub85, %for.end ]
  %index.0394 = phi i32 [ 0, %entry ], [ %93, %for.end ]
  %row.0393 = phi i32 [ 1, %entry ], [ %inc108, %for.end ]
  %sub = sub nuw nsw i32 125, %row.0393
  %cmp42386 = icmp ult i32 %index.0394, %sub
  br i1 %cmp42386, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %ii.1389 = phi i32 [ %inc60, %while.body ], [ %ii.0396, %while.cond.preheader ]
  %npts.1388 = phi i32 [ %inc, %while.body ], [ %npts.0395, %while.cond.preheader ]
  %index.1387 = phi i32 [ %add, %while.body ], [ %index.0394, %while.cond.preheader ]
  %idxprom = zext i32 %npts.1388 to i64
  %arraydecay2.i258 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 0, i64 0
  %60 = load <4 x i64>, <4 x i64>* %44, align 16, !tbaa !3
  %61 = bitcast i64* %arraydecay2.i258 to <4 x i64>*
  store <4 x i64> %60, <4 x i64>* %61, align 16, !tbaa !3
  %arrayidx2.4.i.i262 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 0, i64 4
  %62 = load <4 x i64>, <4 x i64>* %45, align 16, !tbaa !3
  %63 = bitcast i64* %arrayidx2.4.i.i262 to <4 x i64>*
  store <4 x i64> %62, <4 x i64>* %63, align 16, !tbaa !3
  %arraydecay6.i = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 1, i64 0
  %64 = load <4 x i64>, <4 x i64>* %46, align 16, !tbaa !3
  %65 = bitcast i64* %arraydecay6.i to <4 x i64>*
  store <4 x i64> %64, <4 x i64>* %65, align 16, !tbaa !3
  %arrayidx2.4.i16.i = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 1, i64 4
  %66 = load <4 x i64>, <4 x i64>* %47, align 16, !tbaa !3
  %67 = bitcast i64* %arrayidx2.4.i16.i to <4 x i64>*
  store <4 x i64> %66, <4 x i64>* %67, align 16, !tbaa !3
  %arraydecay2.i267 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 0, i64 0
  %68 = load <4 x i64>, <4 x i64>* %48, align 16, !tbaa !3
  %69 = bitcast i64* %arraydecay2.i267 to <4 x i64>*
  store <4 x i64> %68, <4 x i64>* %69, align 16, !tbaa !3
  %arrayidx2.4.i.i275 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 0, i64 4
  %70 = load <4 x i64>, <4 x i64>* %49, align 16, !tbaa !3
  %71 = bitcast i64* %arrayidx2.4.i.i275 to <4 x i64>*
  store <4 x i64> %70, <4 x i64>* %71, align 16, !tbaa !3
  %arraydecay6.i283 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 1, i64 0
  %72 = load <4 x i64>, <4 x i64>* %50, align 16, !tbaa !3
  %73 = bitcast i64* %arraydecay6.i283 to <4 x i64>*
  store <4 x i64> %72, <4 x i64>* %73, align 16, !tbaa !3
  %arrayidx2.4.i16.i291 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 1, i64 4
  %74 = load <4 x i64>, <4 x i64>* %51, align 16, !tbaa !3
  %75 = bitcast i64* %arrayidx2.4.i16.i291 to <4 x i64>*
  store <4 x i64> %74, <4 x i64>* %75, align 16, !tbaa !3
  %inc = add i32 %npts.1388, 1
  %arrayidx59 = getelementptr inbounds [7 x i32], [7 x i32]* %pts_index, i64 0, i64 %idxprom
  store i32 %index.1387, i32* %arrayidx59, align 4, !tbaa !59
  %inc60 = add i32 %ii.1389, 1
  %idxprom61 = zext i32 %ii.1389 to i64
  %arrayidx62 = getelementptr inbounds [124 x i32], [124 x i32]* @strat_Alice, i64 0, i64 %idxprom61
  %76 = load i32, i32* %arrayidx62, align 4, !tbaa !59
  %mul = shl i32 %76, 1
  call void @xDBLe(%struct.point_proj* nonnull %arraydecay40, %struct.point_proj* nonnull %arraydecay40, [8 x i64]* nonnull %arraydecay23, [8 x i64]* nonnull %arraydecay28, i32 %mul)
  %add = add i32 %76, %index.1387
  %cmp42 = icmp ult i32 %add, %sub
  br i1 %cmp42, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %npts.1.lcssa = phi i32 [ %npts.0395, %while.cond.preheader ], [ %inc, %while.body ]
  %ii.1.lcssa = phi i32 [ %ii.0396, %while.cond.preheader ], [ %inc60, %while.body ]
  call void @get_4_isog(%struct.point_proj* nonnull %arraydecay40, [8 x i64]* nonnull %arraydecay23, [8 x i64]* nonnull %arraydecay28, [2 x [8 x i64]]* nonnull %arraydecay70)
  %cmp72391 = icmp eq i32 %npts.1.lcssa, 0
  br i1 %cmp72391, label %for.end, label %for.body73.preheader

for.body73.preheader:                             ; preds = %while.end
  %wide.trip.count = zext i32 %npts.1.lcssa to i64
  br label %for.body73

for.body73:                                       ; preds = %for.body73, %for.body73.preheader
  %indvars.iv = phi i64 [ 0, %for.body73.preheader ], [ %indvars.iv.next, %for.body73 ]
  %arraydecay76 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %indvars.iv, i64 0
  call void @eval_4_isog(%struct.point_proj* nonnull %arraydecay76, [2 x [8 x i64]]* nonnull %arraydecay70)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.end, label %for.body73

for.end:                                          ; preds = %for.body73, %while.end
  call void @eval_4_isog(%struct.point_proj* nonnull %arraydecay3, [2 x [8 x i64]]* nonnull %arraydecay70)
  call void @eval_4_isog(%struct.point_proj* nonnull %arraydecay5, [2 x [8 x i64]]* nonnull %arraydecay70)
  call void @eval_4_isog(%struct.point_proj* nonnull %arraydecay8, [2 x [8 x i64]]* nonnull %arraydecay70)
  %sub85 = add i32 %npts.1.lcssa, -1
  %idxprom86 = zext i32 %sub85 to i64
  %arraydecay.i298 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 0, i64 0, i64 0
  %77 = bitcast i64* %arraydecay.i298 to <4 x i64>*
  %78 = load <4 x i64>, <4 x i64>* %77, align 16, !tbaa !3
  store <4 x i64> %78, <4 x i64>* %52, align 16, !tbaa !3
  %arrayidx.4.i.i306 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 0, i64 0, i64 4
  %79 = bitcast i64* %arrayidx.4.i.i306 to <4 x i64>*
  %80 = load <4 x i64>, <4 x i64>* %79, align 16, !tbaa !3
  store <4 x i64> %80, <4 x i64>* %53, align 16, !tbaa !3
  %arraydecay4.i314 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 0, i64 1, i64 0
  %81 = bitcast i64* %arraydecay4.i314 to <4 x i64>*
  %82 = load <4 x i64>, <4 x i64>* %81, align 16, !tbaa !3
  store <4 x i64> %82, <4 x i64>* %54, align 16, !tbaa !3
  %arrayidx.4.i15.i322 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 0, i64 1, i64 4
  %83 = bitcast i64* %arrayidx.4.i15.i322 to <4 x i64>*
  %84 = load <4 x i64>, <4 x i64>* %83, align 16, !tbaa !3
  store <4 x i64> %84, <4 x i64>* %55, align 16, !tbaa !3
  %arraydecay.i342 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 1, i64 0, i64 0
  %85 = bitcast i64* %arraydecay.i342 to <4 x i64>*
  %86 = load <4 x i64>, <4 x i64>* %85, align 16, !tbaa !3
  store <4 x i64> %86, <4 x i64>* %56, align 16, !tbaa !3
  %arrayidx.4.i.i350 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 1, i64 0, i64 4
  %87 = bitcast i64* %arrayidx.4.i.i350 to <4 x i64>*
  %88 = load <4 x i64>, <4 x i64>* %87, align 16, !tbaa !3
  store <4 x i64> %88, <4 x i64>* %57, align 16, !tbaa !3
  %arraydecay4.i358 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 1, i64 1, i64 0
  %89 = bitcast i64* %arraydecay4.i358 to <4 x i64>*
  %90 = load <4 x i64>, <4 x i64>* %89, align 16, !tbaa !3
  store <4 x i64> %90, <4 x i64>* %58, align 16, !tbaa !3
  %arrayidx.4.i15.i366 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 1, i64 1, i64 4
  %91 = bitcast i64* %arrayidx.4.i15.i366 to <4 x i64>*
  %92 = load <4 x i64>, <4 x i64>* %91, align 16, !tbaa !3
  store <4 x i64> %92, <4 x i64>* %59, align 16, !tbaa !3
  %arrayidx105 = getelementptr inbounds [7 x i32], [7 x i32]* %pts_index, i64 0, i64 %idxprom86
  %93 = load i32, i32* %arrayidx105, align 4, !tbaa !59
  %inc108 = add nuw nsw i32 %row.0393, 1
  %exitcond397 = icmp eq i32 %inc108, 125
  br i1 %exitcond397, label %for.end109, label %while.cond.preheader

for.end109:                                       ; preds = %for.end
  %arraydecay4 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 0
  %arraydecay7 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 0
  %arraydecay10 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 0
  call void @get_4_isog(%struct.point_proj* nonnull %arraydecay40, [8 x i64]* nonnull %arraydecay23, [8 x i64]* nonnull %arraydecay28, [2 x [8 x i64]]* nonnull %arraydecay70)
  call void @eval_4_isog(%struct.point_proj* nonnull %arraydecay3, [2 x [8 x i64]]* nonnull %arraydecay70)
  call void @eval_4_isog(%struct.point_proj* nonnull %arraydecay5, [2 x [8 x i64]]* nonnull %arraydecay70)
  call void @eval_4_isog(%struct.point_proj* nonnull %arraydecay8, [2 x [8 x i64]]* nonnull %arraydecay70)
  %arraydecay122 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %Z, i64 0, i64 0
  %arraydecay125 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %Z14, i64 0, i64 0
  %arraydecay128 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %Z18, i64 0, i64 0
  call void @inv_3_way([8 x i64]* nonnull %arraydecay122, [8 x i64]* nonnull %arraydecay125, [8 x i64]* nonnull %arraydecay128)
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay4, [8 x i64]* nonnull %arraydecay122, [8 x i64]* nonnull %arraydecay4)
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay7, [8 x i64]* nonnull %arraydecay125, [8 x i64]* nonnull %arraydecay7)
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay10, [8 x i64]* nonnull %arraydecay128, [8 x i64]* nonnull %arraydecay10)
  %94 = bitcast [2 x [8 x i64]]* %t.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %94) #10
  %arraydecay2.i.i378 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t.i, i64 0, i64 0, i64 0
  %95 = bitcast [8 x i64]* %one.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %95) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %95, i8 0, i64 64, i1 false) #10
  %arrayidx.i.i.i379 = getelementptr inbounds [8 x i64], [8 x i64]* %one.i.i.i, i64 0, i64 0
  store i64 1, i64* %arrayidx.i.i.i379, align 16, !tbaa !3
  %96 = bitcast [16 x i64]* %temp.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %96) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %96, i8 0, i64 128, i1 false) #10
  %arraydecay.i.i.i.i380 = getelementptr inbounds [16 x i64], [16 x i64]* %temp.i.i.i.i, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay.i188, i64* nonnull %arrayidx.i.i.i379, i64* nonnull %arraydecay.i.i.i.i380, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i380, i64* nonnull %arraydecay2.i.i378) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %96) #10
  call void @fpcorrection503(i64* nonnull %arraydecay2.i.i378) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %95) #10
  %arraydecay6.i.i382 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t.i, i64 0, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %95) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %95, i8 0, i64 64, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i379, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %96) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %96, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2.i196, i64* nonnull %arrayidx.i.i.i379, i64* nonnull %arraydecay.i.i.i.i380, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i380, i64* nonnull %arraydecay6.i.i382) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %96) #10
  call void @fpcorrection503(i64* nonnull %arraydecay6.i.i382) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %95) #10
  %97 = call i64 @llvm.objectsize.i64.p0i8(i8* %PublicKeyA, i1 false, i1 true) #10
  %call.i.i383 = call i8* @__memcpy_chk(i8* %PublicKeyA, i8* nonnull %94, i64 63, i64 %97) #10
  %add.ptr.i384 = getelementptr inbounds i8, i8* %PublicKeyA, i64 63
  %98 = bitcast i64* %arraydecay6.i.i382 to i8*
  %99 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr.i384, i1 false, i1 true) #10
  %call.i5.i385 = call i8* @__memcpy_chk(i8* nonnull %add.ptr.i384, i8* nonnull %98, i64 63, i64 %99) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %94) #10
  %add.ptr = getelementptr inbounds i8, i8* %PublicKeyA, i64 126
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %94) #10
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %95) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %95, i8 0, i64 64, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i379, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %96) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %96, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay5.i204, i64* nonnull %arrayidx.i.i.i379, i64* nonnull %arraydecay.i.i.i.i380, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i380, i64* nonnull %arraydecay2.i.i378) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %96) #10
  call void @fpcorrection503(i64* nonnull %arraydecay2.i.i378) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %95) #10
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %95) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %95, i8 0, i64 64, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i379, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %96) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %96, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.i212, i64* nonnull %arrayidx.i.i.i379, i64* nonnull %arraydecay.i.i.i.i380, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i380, i64* nonnull %arraydecay6.i.i382) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %96) #10
  call void @fpcorrection503(i64* nonnull %arraydecay6.i.i382) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %95) #10
  %100 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr, i1 false, i1 true) #10
  %call.i.i339 = call i8* @__memcpy_chk(i8* nonnull %add.ptr, i8* nonnull %94, i64 63, i64 %100) #10
  %add.ptr.i340 = getelementptr inbounds i8, i8* %PublicKeyA, i64 189
  %101 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr.i340, i1 false, i1 true) #10
  %call.i5.i341 = call i8* @__memcpy_chk(i8* nonnull %add.ptr.i340, i8* nonnull %98, i64 63, i64 %101) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %94) #10
  %add.ptr165 = getelementptr inbounds i8, i8* %PublicKeyA, i64 252
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %94) #10
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %95) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %95, i8 0, i64 64, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i379, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %96) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %96, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay11.i220, i64* nonnull %arrayidx.i.i.i379, i64* nonnull %arraydecay.i.i.i.i380, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i380, i64* nonnull %arraydecay2.i.i378) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %96) #10
  call void @fpcorrection503(i64* nonnull %arraydecay2.i.i378) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %95) #10
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %95) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %95, i8 0, i64 64, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i379, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %96) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %96, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay14.i228, i64* nonnull %arrayidx.i.i.i379, i64* nonnull %arraydecay.i.i.i.i380, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i380, i64* nonnull %arraydecay6.i.i382) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %96) #10
  call void @fpcorrection503(i64* nonnull %arraydecay6.i.i382) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %95) #10
  %102 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr165, i1 false, i1 true) #10
  %call.i.i = call i8* @__memcpy_chk(i8* nonnull %add.ptr165, i8* nonnull %94, i64 63, i64 %102) #10
  %add.ptr.i = getelementptr inbounds i8, i8* %PublicKeyA, i64 315
  %103 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr.i, i1 false, i1 true) #10
  %call.i5.i = call i8* @__memcpy_chk(i8* nonnull %add.ptr.i, i8* nonnull %98, i64 63, i64 %103) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %94) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %13) #10
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %12) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %11) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %10) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %9) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 1792, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #10
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @LADDER3PT([8 x i64]* nocapture readonly %xP, [8 x i64]* nocapture readonly %xQ, [8 x i64]* nocapture readonly %xPQ, i64* nocapture readonly %m, i32 %AliceOrBob, %struct.point_proj* %R, [8 x i64]* nocapture readonly %A) unnamed_addr #4 {
entry:
  %R0 = alloca [1 x %struct.point_proj], align 16
  %R2 = alloca [1 x %struct.point_proj], align 16
  %A24 = alloca [2 x [8 x i64]], align 16
  %0 = bitcast [1 x %struct.point_proj]* %R0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 256, i1 false)
  %1 = bitcast [1 x %struct.point_proj]* %R2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 256, i1 false)
  %2 = bitcast [2 x [8 x i64]]* %A24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #10
  %3 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A24, i64 0, i64 1
  %4 = bitcast [8 x i64]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %4, i8 0, i64 64, i1 false)
  %cmp = icmp eq i32 %AliceOrBob, 0
  %. = select i1 %cmp, i32 250, i32 252
  %arraydecay = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A24, i64 0, i64 0, i64 0
  store i64 1017, i64* %arraydecay, align 16, !tbaa !3
  %arrayidx2.1.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A24, i64 0, i64 0, i64 1
  %arrayidx2.3.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A24, i64 0, i64 0, i64 3
  %5 = bitcast i64* %arrayidx2.1.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 16, i1 false)
  %6 = bitcast i64* %arrayidx2.3.i to <4 x i64>*
  store <4 x i64> <i64 -5476377146882523136, i64 7190870292575474356, i64 5866111745285600125, i64 -8444962029219724990>, <4 x i64>* %6, align 8, !tbaa !3
  %arrayidx2.7.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A24, i64 0, i64 0, i64 7
  store i64 10972777180780883, i64* %arrayidx2.7.i, align 8, !tbaa !3
  %arraydecay1 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A24, i64 0, i64 0
  call fastcc void @mp2_add([8 x i64]* nonnull %arraydecay1, [8 x i64]* nonnull %arraydecay1, [8 x i64]* nonnull %arraydecay1)
  call fastcc void @mp2_add([8 x i64]* %A, [8 x i64]* nonnull %arraydecay1, [8 x i64]* nonnull %arraydecay1)
  call void @fpdiv2_503(i64* nonnull %arraydecay, i64* nonnull %arraydecay) #10
  %arraydecay4.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A24, i64 0, i64 1, i64 0
  call void @fpdiv2_503(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i) #10
  call void @fpdiv2_503(i64* nonnull %arraydecay, i64* nonnull %arraydecay) #10
  call void @fpdiv2_503(i64* nonnull %arraydecay4.i, i64* nonnull %arraydecay4.i) #10
  %arraydecay10 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R0, i64 0, i64 0
  %7 = bitcast [8 x i64]* %xQ to <4 x i64>*
  %8 = load <4 x i64>, <4 x i64>* %7, align 8, !tbaa !3
  %9 = bitcast [1 x %struct.point_proj]* %R0 to <4 x i64>*
  store <4 x i64> %8, <4 x i64>* %9, align 16, !tbaa !3
  %arrayidx.4.i.i = getelementptr inbounds [8 x i64], [8 x i64]* %xQ, i64 0, i64 4
  %arrayidx2.4.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R0, i64 0, i64 0, i32 0, i64 0, i64 4
  %10 = bitcast i64* %arrayidx.4.i.i to <4 x i64>*
  %11 = load <4 x i64>, <4 x i64>* %10, align 8, !tbaa !3
  %12 = bitcast i64* %arrayidx2.4.i.i to <4 x i64>*
  store <4 x i64> %11, <4 x i64>* %12, align 16, !tbaa !3
  %arraydecay4.i69 = getelementptr inbounds [8 x i64], [8 x i64]* %xQ, i64 1, i64 0
  %arraydecay6.i70 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R0, i64 0, i64 0, i32 0, i64 1, i64 0
  %13 = bitcast i64* %arraydecay4.i69 to <4 x i64>*
  %14 = load <4 x i64>, <4 x i64>* %13, align 8, !tbaa !3
  %15 = bitcast i64* %arraydecay6.i70 to <4 x i64>*
  store <4 x i64> %14, <4 x i64>* %15, align 16, !tbaa !3
  %arrayidx.4.i15.i = getelementptr inbounds [8 x i64], [8 x i64]* %xQ, i64 1, i64 4
  %arrayidx2.4.i16.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R0, i64 0, i64 0, i32 0, i64 1, i64 4
  %16 = bitcast i64* %arrayidx.4.i15.i to <4 x i64>*
  %17 = load <4 x i64>, <4 x i64>* %16, align 8, !tbaa !3
  %18 = bitcast i64* %arrayidx2.4.i16.i to <4 x i64>*
  store <4 x i64> %17, <4 x i64>* %18, align 16, !tbaa !3
  %19 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R0, i64 0, i64 0, i32 1, i64 0, i64 0
  store i64 1017, i64* %19, align 16, !tbaa !3
  %arrayidx2.1.i71 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R0, i64 0, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.3.i73 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R0, i64 0, i64 0, i32 1, i64 0, i64 3
  %20 = bitcast i64* %arrayidx2.1.i71 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %20, i8 0, i64 16, i1 false)
  %21 = bitcast i64* %arrayidx2.3.i73 to <4 x i64>*
  store <4 x i64> <i64 -5476377146882523136, i64 7190870292575474356, i64 5866111745285600125, i64 -8444962029219724990>, <4 x i64>* %21, align 8, !tbaa !3
  %arrayidx2.7.i77 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R0, i64 0, i64 0, i32 1, i64 0, i64 7
  store i64 10972777180780883, i64* %arrayidx2.7.i77, align 8, !tbaa !3
  %arraydecay14 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0
  %22 = bitcast [8 x i64]* %xPQ to <4 x i64>*
  %23 = load <4 x i64>, <4 x i64>* %22, align 8, !tbaa !3
  %24 = bitcast [1 x %struct.point_proj]* %R2 to <4 x i64>*
  store <4 x i64> %23, <4 x i64>* %24, align 16, !tbaa !3
  %arrayidx.4.i.i86 = getelementptr inbounds [8 x i64], [8 x i64]* %xPQ, i64 0, i64 4
  %arrayidx2.4.i.i87 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 0, i64 0, i64 4
  %25 = bitcast i64* %arrayidx.4.i.i86 to <4 x i64>*
  %26 = load <4 x i64>, <4 x i64>* %25, align 8, !tbaa !3
  %27 = bitcast i64* %arrayidx2.4.i.i87 to <4 x i64>*
  store <4 x i64> %26, <4 x i64>* %27, align 16, !tbaa !3
  %arraydecay4.i94 = getelementptr inbounds [8 x i64], [8 x i64]* %xPQ, i64 1, i64 0
  %arraydecay6.i95 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 0, i64 1, i64 0
  %28 = bitcast i64* %arraydecay4.i94 to <4 x i64>*
  %29 = load <4 x i64>, <4 x i64>* %28, align 8, !tbaa !3
  %30 = bitcast i64* %arraydecay6.i95 to <4 x i64>*
  store <4 x i64> %29, <4 x i64>* %30, align 16, !tbaa !3
  %arrayidx.4.i15.i102 = getelementptr inbounds [8 x i64], [8 x i64]* %xPQ, i64 1, i64 4
  %arrayidx2.4.i16.i103 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 0, i64 1, i64 4
  %31 = bitcast i64* %arrayidx.4.i15.i102 to <4 x i64>*
  %32 = load <4 x i64>, <4 x i64>* %31, align 8, !tbaa !3
  %33 = bitcast i64* %arrayidx2.4.i16.i103 to <4 x i64>*
  store <4 x i64> %32, <4 x i64>* %33, align 16, !tbaa !3
  %34 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 0, i64 0
  store i64 1017, i64* %34, align 16, !tbaa !3
  %arrayidx2.1.i178 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.2.i179 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 0, i64 2
  %arrayidx2.3.i180 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 0, i64 3
  %35 = bitcast i64* %arrayidx2.1.i178 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %35, i8 0, i64 16, i1 false)
  %arrayidx2.4.i181 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 0, i64 4
  %36 = bitcast i64* %arrayidx2.3.i180 to <4 x i64>*
  store <4 x i64> <i64 -5476377146882523136, i64 7190870292575474356, i64 5866111745285600125, i64 -8444962029219724990>, <4 x i64>* %36, align 8, !tbaa !3
  %arrayidx2.7.i184 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 0, i64 7
  store i64 10972777180780883, i64* %arrayidx2.7.i184, align 8, !tbaa !3
  %arraydecay21 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0
  %arraydecay.i146 = getelementptr inbounds [8 x i64], [8 x i64]* %xP, i64 0, i64 0
  %arraydecay2.i147 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0, i64 0
  %37 = load i64, i64* %arraydecay.i146, align 8, !tbaa !3
  store i64 %37, i64* %arraydecay2.i147, align 8, !tbaa !3
  %arrayidx.1.i.i148 = getelementptr inbounds [8 x i64], [8 x i64]* %xP, i64 0, i64 1
  %38 = load i64, i64* %arrayidx.1.i.i148, align 8, !tbaa !3
  %arrayidx2.1.i.i149 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0, i64 1
  store i64 %38, i64* %arrayidx2.1.i.i149, align 8, !tbaa !3
  %arrayidx.2.i.i150 = getelementptr inbounds [8 x i64], [8 x i64]* %xP, i64 0, i64 2
  %39 = load i64, i64* %arrayidx.2.i.i150, align 8, !tbaa !3
  %arrayidx2.2.i.i151 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0, i64 2
  store i64 %39, i64* %arrayidx2.2.i.i151, align 8, !tbaa !3
  %arrayidx.3.i.i152 = getelementptr inbounds [8 x i64], [8 x i64]* %xP, i64 0, i64 3
  %40 = load i64, i64* %arrayidx.3.i.i152, align 8, !tbaa !3
  %arrayidx2.3.i.i153 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0, i64 3
  store i64 %40, i64* %arrayidx2.3.i.i153, align 8, !tbaa !3
  %arrayidx.4.i.i154 = getelementptr inbounds [8 x i64], [8 x i64]* %xP, i64 0, i64 4
  %41 = load i64, i64* %arrayidx.4.i.i154, align 8, !tbaa !3
  %arrayidx2.4.i.i155 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0, i64 4
  store i64 %41, i64* %arrayidx2.4.i.i155, align 8, !tbaa !3
  %arrayidx.5.i.i156 = getelementptr inbounds [8 x i64], [8 x i64]* %xP, i64 0, i64 5
  %42 = load i64, i64* %arrayidx.5.i.i156, align 8, !tbaa !3
  %arrayidx2.5.i.i157 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0, i64 5
  store i64 %42, i64* %arrayidx2.5.i.i157, align 8, !tbaa !3
  %arrayidx.6.i.i158 = getelementptr inbounds [8 x i64], [8 x i64]* %xP, i64 0, i64 6
  %43 = load i64, i64* %arrayidx.6.i.i158, align 8, !tbaa !3
  %arrayidx2.6.i.i159 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0, i64 6
  store i64 %43, i64* %arrayidx2.6.i.i159, align 8, !tbaa !3
  %arrayidx.7.i.i160 = getelementptr inbounds [8 x i64], [8 x i64]* %xP, i64 0, i64 7
  %44 = load i64, i64* %arrayidx.7.i.i160, align 8, !tbaa !3
  %arrayidx2.7.i.i161 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 0, i64 7
  store i64 %44, i64* %arrayidx2.7.i.i161, align 8, !tbaa !3
  %arraydecay4.i162 = getelementptr inbounds [8 x i64], [8 x i64]* %xP, i64 1, i64 0
  %arraydecay6.i163 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 0
  %45 = load i64, i64* %arraydecay4.i162, align 8, !tbaa !3
  store i64 %45, i64* %arraydecay6.i163, align 8, !tbaa !3
  %arrayidx.1.i9.i164 = getelementptr inbounds [8 x i64], [8 x i64]* %xP, i64 1, i64 1
  %46 = load i64, i64* %arrayidx.1.i9.i164, align 8, !tbaa !3
  %arrayidx2.1.i10.i165 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 1
  store i64 %46, i64* %arrayidx2.1.i10.i165, align 8, !tbaa !3
  %arrayidx.2.i11.i166 = getelementptr inbounds [8 x i64], [8 x i64]* %xP, i64 1, i64 2
  %47 = load i64, i64* %arrayidx.2.i11.i166, align 8, !tbaa !3
  %arrayidx2.2.i12.i167 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 2
  store i64 %47, i64* %arrayidx2.2.i12.i167, align 8, !tbaa !3
  %arrayidx.3.i13.i168 = getelementptr inbounds [8 x i64], [8 x i64]* %xP, i64 1, i64 3
  %48 = load i64, i64* %arrayidx.3.i13.i168, align 8, !tbaa !3
  %arrayidx2.3.i14.i169 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 3
  store i64 %48, i64* %arrayidx2.3.i14.i169, align 8, !tbaa !3
  %arrayidx.4.i15.i170 = getelementptr inbounds [8 x i64], [8 x i64]* %xP, i64 1, i64 4
  %49 = load i64, i64* %arrayidx.4.i15.i170, align 8, !tbaa !3
  %arrayidx2.4.i16.i171 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 4
  store i64 %49, i64* %arrayidx2.4.i16.i171, align 8, !tbaa !3
  %arrayidx.5.i17.i172 = getelementptr inbounds [8 x i64], [8 x i64]* %xP, i64 1, i64 5
  %50 = load i64, i64* %arrayidx.5.i17.i172, align 8, !tbaa !3
  %arrayidx2.5.i18.i173 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 5
  store i64 %50, i64* %arrayidx2.5.i18.i173, align 8, !tbaa !3
  %arrayidx.6.i19.i174 = getelementptr inbounds [8 x i64], [8 x i64]* %xP, i64 1, i64 6
  %51 = load i64, i64* %arrayidx.6.i19.i174, align 8, !tbaa !3
  %arrayidx2.6.i20.i175 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 6
  store i64 %51, i64* %arrayidx2.6.i20.i175, align 8, !tbaa !3
  %arrayidx.7.i21.i176 = getelementptr inbounds [8 x i64], [8 x i64]* %xP, i64 1, i64 7
  %52 = load i64, i64* %arrayidx.7.i21.i176, align 8, !tbaa !3
  %arrayidx2.7.i22.i177 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 0, i64 1, i64 7
  store i64 %52, i64* %arrayidx2.7.i22.i177, align 8, !tbaa !3
  %Z22 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1
  %arraydecay23 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %Z22, i64 0, i64 0
  %53 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %Z22, i64 0, i64 0, i64 0
  store i64 1017, i64* %53, align 8, !tbaa !3
  %arrayidx2.1.i139 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.2.i140 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 0, i64 2
  %arrayidx2.3.i141 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 0, i64 3
  %54 = bitcast i64* %arrayidx2.1.i139 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %54, i8 0, i64 16, i1 false)
  %arrayidx2.4.i142 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 0, i64 4
  %55 = bitcast i64* %arrayidx2.3.i141 to <4 x i64>*
  store <4 x i64> <i64 -5476377146882523136, i64 7190870292575474356, i64 5866111745285600125, i64 -8444962029219724990>, <4 x i64>* %55, align 8, !tbaa !3
  %arrayidx2.7.i145 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 0, i64 7
  store i64 10972777180780883, i64* %arrayidx2.7.i145, align 8, !tbaa !3
  %arraydecay26 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 1, i64 0
  %a5.i = bitcast i64* %arraydecay26 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %a5.i, i8 0, i64 64, i1 false) #10
  %arrayidx54.i123 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 0, i64 0
  %arrayidx86.i130 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 1, i64 0
  %arrayidx82.i129.2 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 1, i64 2
  %arrayidx82.i129.3 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 1, i64 3
  %arrayidx82.i129.4 = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 1, i64 4
  %arrayidx86.i130.4 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 1, i64 4
  %56 = bitcast [1 x %struct.point_proj]* %R2 to <4 x i64>*
  %57 = bitcast i64* %arraydecay6.i95 to <4 x i64>*
  %58 = bitcast i64* %34 to <2 x i64>*
  %59 = bitcast i64* %arrayidx86.i130 to <4 x i64>*
  %60 = bitcast i64* %arrayidx54.i123 to <2 x i64>*
  %61 = bitcast i64* %34 to <2 x i64>*
  %62 = bitcast %struct.point_proj* %R to <4 x i64>*
  %63 = bitcast [1 x %struct.point_proj]* %R2 to <4 x i64>*
  %64 = bitcast i64* %arraydecay6.i163 to <4 x i64>*
  %65 = bitcast i64* %arraydecay6.i95 to <4 x i64>*
  %66 = bitcast i64* %arraydecay26 to <4 x i64>*
  %67 = bitcast i64* %arrayidx86.i130 to <4 x i64>*
  %68 = bitcast i64* %arrayidx2.4.i.i155 to <4 x i64>*
  %69 = bitcast i64* %arrayidx2.4.i.i87 to <4 x i64>*
  %70 = bitcast i64* %arrayidx2.4.i16.i171 to <4 x i64>*
  %71 = bitcast i64* %arrayidx2.4.i16.i103 to <4 x i64>*
  %72 = bitcast i64* %arrayidx2.4.i142 to <4 x i64>*
  %73 = bitcast i64* %arrayidx2.4.i181 to <4 x i64>*
  %74 = bitcast i64* %arrayidx82.i129.4 to <4 x i64>*
  %75 = bitcast i64* %arrayidx86.i130.4 to <4 x i64>*
  %76 = bitcast i64* %arrayidx2.4.i.i155 to <4 x i64>*
  %77 = bitcast i64* %arrayidx2.4.i.i87 to <4 x i64>*
  %78 = bitcast i64* %arrayidx2.4.i16.i171 to <4 x i64>*
  %79 = bitcast i64* %arrayidx2.4.i16.i103 to <4 x i64>*
  %80 = bitcast i64* %arrayidx2.4.i142 to <4 x i64>*
  %81 = bitcast i64* %arrayidx2.4.i181 to <4 x i64>*
  %82 = bitcast i64* %arrayidx82.i129.4 to <4 x i64>*
  %83 = bitcast i64* %arrayidx86.i130.4 to <4 x i64>*
  %84 = bitcast i64* %arrayidx54.i123 to <2 x i64>*
  %85 = bitcast i64* %arraydecay26 to <2 x i64>*
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %86 = phi i64 [ 0, %entry ], [ %.pre197, %for.body.for.body_crit_edge ]
  %87 = phi i64 [ 0, %entry ], [ %.pre196, %for.body.for.body_crit_edge ]
  %88 = phi i64 [ %47, %entry ], [ %.pre195, %for.body.for.body_crit_edge ]
  %89 = phi i64 [ %39, %entry ], [ %.pre194, %for.body.for.body_crit_edge ]
  %90 = phi i64 [ %46, %entry ], [ %.pre191, %for.body.for.body_crit_edge ]
  %91 = phi i64 [ %38, %entry ], [ %.pre190, %for.body.for.body_crit_edge ]
  %92 = phi i64 [ %45, %entry ], [ %.pre187, %for.body.for.body_crit_edge ]
  %93 = phi i64 [ %37, %entry ], [ %.pre, %for.body.for.body_crit_edge ]
  %prevbit.0186 = phi i32 [ 0, %entry ], [ %conv, %for.body.for.body_crit_edge ]
  %i.0185 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %94 = phi <2 x i64> [ <i64 1017, i64 0>, %entry ], [ %169, %for.body.for.body_crit_edge ]
  %95 = phi <2 x i64> [ zeroinitializer, %entry ], [ %170, %for.body.for.body_crit_edge ]
  %96 = lshr i32 %i.0185, 6
  %97 = zext i32 %96 to i64
  %arrayidx28 = getelementptr inbounds i64, i64* %m, i64 %97
  %98 = load i64, i64* %arrayidx28, align 8, !tbaa !3
  %and = and i32 %i.0185, 63
  %sh_prom = zext i32 %and to i64
  %shr29 = lshr i64 %98, %sh_prom
  %99 = trunc i64 %shr29 to i32
  %conv = and i32 %99, 1
  %xor = xor i32 %conv, %prevbit.0186
  %100 = zext i32 %xor to i64
  %sub = sub nsw i64 0, %100
  %101 = load i64, i64* %arrayidx2.3.i.i153, align 8, !tbaa !3
  %102 = load <4 x i64>, <4 x i64>* %56, align 16, !tbaa !3
  %103 = insertelement <4 x i64> undef, i64 %93, i32 0
  %104 = insertelement <4 x i64> %103, i64 %91, i32 1
  %105 = insertelement <4 x i64> %104, i64 %89, i32 2
  %106 = insertelement <4 x i64> %105, i64 %101, i32 3
  %107 = xor <4 x i64> %102, %106
  %108 = insertelement <4 x i64> undef, i64 %sub, i32 0
  %109 = shufflevector <4 x i64> %108, <4 x i64> undef, <4 x i32> zeroinitializer
  %110 = and <4 x i64> %107, %109
  %111 = load i64, i64* %arrayidx2.3.i14.i169, align 8, !tbaa !3
  %112 = load <4 x i64>, <4 x i64>* %57, align 16, !tbaa !3
  %113 = insertelement <4 x i64> undef, i64 %92, i32 0
  %114 = insertelement <4 x i64> %113, i64 %90, i32 1
  %115 = insertelement <4 x i64> %114, i64 %88, i32 2
  %116 = insertelement <4 x i64> %115, i64 %111, i32 3
  %117 = xor <4 x i64> %112, %116
  %118 = and <4 x i64> %117, %109
  %119 = load <2 x i64>, <2 x i64>* %58, align 16, !tbaa !3
  %120 = xor <2 x i64> %119, %94
  %121 = insertelement <2 x i64> undef, i64 %sub, i32 0
  %122 = shufflevector <2 x i64> %121, <2 x i64> undef, <2 x i32> zeroinitializer
  %123 = and <2 x i64> %120, %122
  %124 = load i64, i64* %arrayidx82.i129.2, align 8, !tbaa !3
  %125 = load i64, i64* %arrayidx82.i129.3, align 8, !tbaa !3
  %126 = load <4 x i64>, <4 x i64>* %59, align 16, !tbaa !3
  %127 = extractelement <2 x i64> %95, i32 0
  %128 = insertelement <4 x i64> undef, i64 %127, i32 0
  %129 = extractelement <2 x i64> %95, i32 1
  %130 = insertelement <4 x i64> %128, i64 %129, i32 1
  %131 = insertelement <4 x i64> %130, i64 %124, i32 2
  %132 = insertelement <4 x i64> %131, i64 %125, i32 3
  %133 = xor <4 x i64> %126, %132
  %134 = and <4 x i64> %133, %109
  %135 = xor <2 x i64> %123, %94
  store <2 x i64> %135, <2 x i64>* %60, align 8, !tbaa !3
  %136 = xor <2 x i64> %123, %119
  store <2 x i64> %136, <2 x i64>* %61, align 16, !tbaa !3
  %xor59.i125.2 = xor i64 %86, %87
  %and60.i126.2 = and i64 %xor59.i125.2, %sub
  %xor65.i127.2 = xor i64 %and60.i126.2, %87
  store i64 %xor65.i127.2, i64* %arrayidx2.2.i140, align 8, !tbaa !3
  %xor74.i128.2 = xor i64 %and60.i126.2, %86
  store i64 %xor74.i128.2, i64* %arrayidx2.2.i179, align 16, !tbaa !3
  %137 = xor <4 x i64> %110, %106
  store <4 x i64> %137, <4 x i64>* %62, align 8, !tbaa !3
  %138 = xor <4 x i64> %110, %102
  store <4 x i64> %138, <4 x i64>* %63, align 16, !tbaa !3
  %139 = xor <4 x i64> %118, %116
  store <4 x i64> %139, <4 x i64>* %64, align 8, !tbaa !3
  %140 = xor <4 x i64> %118, %112
  store <4 x i64> %140, <4 x i64>* %65, align 16, !tbaa !3
  %141 = load i64, i64* %arrayidx2.3.i141, align 8, !tbaa !3
  %142 = load i64, i64* %arrayidx2.3.i180, align 8, !tbaa !3
  %xor59.i125.3 = xor i64 %142, %141
  %and60.i126.3 = and i64 %xor59.i125.3, %sub
  %xor65.i127.3 = xor i64 %and60.i126.3, %141
  store i64 %xor65.i127.3, i64* %arrayidx2.3.i141, align 8, !tbaa !3
  %xor74.i128.3 = xor i64 %and60.i126.3, %142
  store i64 %xor74.i128.3, i64* %arrayidx2.3.i180, align 8, !tbaa !3
  %143 = xor <4 x i64> %134, %132
  store <4 x i64> %143, <4 x i64>* %66, align 8, !tbaa !3
  %144 = xor <4 x i64> %134, %126
  store <4 x i64> %144, <4 x i64>* %67, align 16, !tbaa !3
  %145 = load <4 x i64>, <4 x i64>* %68, align 8, !tbaa !3
  %146 = load <4 x i64>, <4 x i64>* %69, align 16, !tbaa !3
  %147 = xor <4 x i64> %146, %145
  %148 = and <4 x i64> %147, %109
  %149 = load <4 x i64>, <4 x i64>* %70, align 8, !tbaa !3
  %150 = load <4 x i64>, <4 x i64>* %71, align 16, !tbaa !3
  %151 = xor <4 x i64> %150, %149
  %152 = and <4 x i64> %151, %109
  %153 = load <4 x i64>, <4 x i64>* %72, align 8, !tbaa !3
  %154 = load <4 x i64>, <4 x i64>* %73, align 16, !tbaa !3
  %155 = xor <4 x i64> %154, %153
  %156 = and <4 x i64> %155, %109
  %157 = load <4 x i64>, <4 x i64>* %74, align 8, !tbaa !3
  %158 = load <4 x i64>, <4 x i64>* %75, align 16, !tbaa !3
  %159 = xor <4 x i64> %158, %157
  %160 = and <4 x i64> %159, %109
  %161 = xor <4 x i64> %148, %145
  store <4 x i64> %161, <4 x i64>* %76, align 8, !tbaa !3
  %162 = xor <4 x i64> %148, %146
  store <4 x i64> %162, <4 x i64>* %77, align 16, !tbaa !3
  %163 = xor <4 x i64> %152, %149
  store <4 x i64> %163, <4 x i64>* %78, align 8, !tbaa !3
  %164 = xor <4 x i64> %152, %150
  store <4 x i64> %164, <4 x i64>* %79, align 16, !tbaa !3
  %165 = xor <4 x i64> %156, %153
  store <4 x i64> %165, <4 x i64>* %80, align 8, !tbaa !3
  %166 = xor <4 x i64> %156, %154
  store <4 x i64> %166, <4 x i64>* %81, align 16, !tbaa !3
  %167 = xor <4 x i64> %160, %157
  store <4 x i64> %167, <4 x i64>* %82, align 8, !tbaa !3
  %168 = xor <4 x i64> %160, %158
  store <4 x i64> %168, <4 x i64>* %83, align 16, !tbaa !3
  call void @xDBLADD(%struct.point_proj* nonnull %arraydecay10, %struct.point_proj* nonnull %arraydecay14, [8 x i64]* nonnull %arraydecay21, [8 x i64]* nonnull %arraydecay23, [8 x i64]* nonnull %arraydecay1)
  %inc = add nuw nsw i32 %i.0185, 1
  %exitcond = icmp eq i32 %inc, %.
  br i1 %exitcond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load i64, i64* %arraydecay2.i147, align 8, !tbaa !3
  %.pre187 = load i64, i64* %arraydecay6.i163, align 8, !tbaa !3
  %.pre190 = load i64, i64* %arrayidx2.1.i.i149, align 8, !tbaa !3
  %.pre191 = load i64, i64* %arrayidx2.1.i10.i165, align 8, !tbaa !3
  %169 = load <2 x i64>, <2 x i64>* %84, align 8, !tbaa !3
  %170 = load <2 x i64>, <2 x i64>* %85, align 8, !tbaa !3
  %.pre194 = load i64, i64* %arrayidx2.2.i.i151, align 8, !tbaa !3
  %.pre195 = load i64, i64* %arrayidx2.2.i12.i167, align 8, !tbaa !3
  %.pre196 = load i64, i64* %arrayidx2.2.i140, align 8, !tbaa !3
  %.pre197 = load i64, i64* %arrayidx2.2.i179, align 16, !tbaa !3
  br label %for.body

for.end:                                          ; preds = %for.body
  %arrayidx86.i130.le = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 1, i64 0
  %arrayidx82.i129.4.le = getelementptr inbounds %struct.point_proj, %struct.point_proj* %R, i64 0, i32 1, i64 1, i64 4
  %arrayidx86.i130.4.le = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 1, i64 4
  %arrayidx86.i130.6.le = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R2, i64 0, i64 0, i32 1, i64 1, i64 6
  %171 = zext i32 %conv to i64
  %sub42 = sub nsw i64 0, %171
  %172 = bitcast %struct.point_proj* %R to <4 x i64>*
  %173 = load <4 x i64>, <4 x i64>* %172, align 8, !tbaa !3
  %174 = bitcast [1 x %struct.point_proj]* %R2 to <4 x i64>*
  %175 = load <4 x i64>, <4 x i64>* %174, align 16, !tbaa !3
  %176 = xor <4 x i64> %175, %173
  %177 = insertelement <4 x i64> undef, i64 %sub42, i32 0
  %178 = shufflevector <4 x i64> %177, <4 x i64> undef, <4 x i32> zeroinitializer
  %179 = and <4 x i64> %176, %178
  %180 = bitcast i64* %arraydecay6.i163 to <4 x i64>*
  %181 = load <4 x i64>, <4 x i64>* %180, align 8, !tbaa !3
  %182 = bitcast i64* %arraydecay6.i95 to <4 x i64>*
  %183 = load <4 x i64>, <4 x i64>* %182, align 16, !tbaa !3
  %184 = xor <4 x i64> %183, %181
  %185 = and <4 x i64> %184, %178
  %186 = bitcast i64* %arrayidx54.i123 to <4 x i64>*
  %187 = load <4 x i64>, <4 x i64>* %186, align 8, !tbaa !3
  %188 = bitcast i64* %34 to <4 x i64>*
  %189 = load <4 x i64>, <4 x i64>* %188, align 16, !tbaa !3
  %190 = xor <4 x i64> %189, %187
  %191 = and <4 x i64> %190, %178
  %192 = bitcast i64* %arraydecay26 to <4 x i64>*
  %193 = load <4 x i64>, <4 x i64>* %192, align 8, !tbaa !3
  %194 = bitcast i64* %arrayidx86.i130.le to <4 x i64>*
  %195 = load <4 x i64>, <4 x i64>* %194, align 16, !tbaa !3
  %196 = xor <4 x i64> %195, %193
  %197 = and <4 x i64> %196, %178
  %198 = xor <4 x i64> %179, %173
  %199 = bitcast %struct.point_proj* %R to <4 x i64>*
  store <4 x i64> %198, <4 x i64>* %199, align 8, !tbaa !3
  %200 = xor <4 x i64> %179, %175
  %201 = bitcast [1 x %struct.point_proj]* %R2 to <4 x i64>*
  store <4 x i64> %200, <4 x i64>* %201, align 16, !tbaa !3
  %202 = xor <4 x i64> %185, %181
  %203 = bitcast i64* %arraydecay6.i163 to <4 x i64>*
  store <4 x i64> %202, <4 x i64>* %203, align 8, !tbaa !3
  %204 = xor <4 x i64> %185, %183
  %205 = bitcast i64* %arraydecay6.i95 to <4 x i64>*
  store <4 x i64> %204, <4 x i64>* %205, align 16, !tbaa !3
  %206 = xor <4 x i64> %191, %187
  %207 = bitcast i64* %arrayidx54.i123 to <4 x i64>*
  store <4 x i64> %206, <4 x i64>* %207, align 8, !tbaa !3
  %208 = xor <4 x i64> %191, %189
  %209 = bitcast i64* %34 to <4 x i64>*
  store <4 x i64> %208, <4 x i64>* %209, align 16, !tbaa !3
  %210 = xor <4 x i64> %197, %193
  %211 = bitcast i64* %arraydecay26 to <4 x i64>*
  store <4 x i64> %210, <4 x i64>* %211, align 8, !tbaa !3
  %212 = xor <4 x i64> %197, %195
  %213 = bitcast i64* %arrayidx86.i130.le to <4 x i64>*
  store <4 x i64> %212, <4 x i64>* %213, align 16, !tbaa !3
  %214 = bitcast i64* %arrayidx2.4.i.i155 to <4 x i64>*
  %215 = load <4 x i64>, <4 x i64>* %214, align 8, !tbaa !3
  %216 = bitcast i64* %arrayidx2.4.i.i87 to <4 x i64>*
  %217 = load <4 x i64>, <4 x i64>* %216, align 16, !tbaa !3
  %218 = xor <4 x i64> %217, %215
  %219 = and <4 x i64> %218, %178
  %220 = bitcast i64* %arrayidx2.4.i16.i171 to <4 x i64>*
  %221 = load <4 x i64>, <4 x i64>* %220, align 8, !tbaa !3
  %222 = bitcast i64* %arrayidx2.4.i16.i103 to <4 x i64>*
  %223 = load <4 x i64>, <4 x i64>* %222, align 16, !tbaa !3
  %224 = xor <4 x i64> %223, %221
  %225 = and <4 x i64> %224, %178
  %226 = bitcast i64* %arrayidx2.4.i142 to <4 x i64>*
  %227 = load <4 x i64>, <4 x i64>* %226, align 8, !tbaa !3
  %228 = bitcast i64* %arrayidx2.4.i181 to <4 x i64>*
  %229 = load <4 x i64>, <4 x i64>* %228, align 16, !tbaa !3
  %230 = xor <4 x i64> %229, %227
  %231 = and <4 x i64> %230, %178
  %232 = bitcast i64* %arrayidx82.i129.4.le to <4 x i64>*
  %233 = load <4 x i64>, <4 x i64>* %232, align 8, !tbaa !3
  %234 = bitcast i64* %arrayidx86.i130.4.le to <4 x i64>*
  %235 = load <4 x i64>, <4 x i64>* %234, align 16, !tbaa !3
  %236 = xor <4 x i64> %235, %233
  %237 = and <4 x i64> %236, %178
  %238 = xor <4 x i64> %237, %235
  %239 = shufflevector <4 x i64> %238, <4 x i64> undef, <2 x i32> <i32 0, i32 1>
  %240 = bitcast i64* %arrayidx86.i130.4.le to <2 x i64>*
  store <2 x i64> %239, <2 x i64>* %240, align 16, !tbaa !3
  %241 = extractelement <4 x i64> %237, i32 2
  %242 = extractelement <4 x i64> %235, i32 2
  %xor102.i.6 = xor i64 %241, %242
  store i64 %xor102.i.6, i64* %arrayidx86.i130.6.le, align 16, !tbaa !3
  %243 = xor <4 x i64> %219, %215
  %244 = bitcast i64* %arrayidx2.4.i.i155 to <4 x i64>*
  store <4 x i64> %243, <4 x i64>* %244, align 8, !tbaa !3
  %245 = xor <4 x i64> %219, %217
  %246 = bitcast i64* %arrayidx2.4.i.i87 to <4 x i64>*
  store <4 x i64> %245, <4 x i64>* %246, align 16, !tbaa !3
  %247 = xor <4 x i64> %225, %221
  %248 = bitcast i64* %arrayidx2.4.i16.i171 to <4 x i64>*
  store <4 x i64> %247, <4 x i64>* %248, align 8, !tbaa !3
  %249 = xor <4 x i64> %225, %223
  %250 = bitcast i64* %arrayidx2.4.i16.i103 to <4 x i64>*
  store <4 x i64> %249, <4 x i64>* %250, align 16, !tbaa !3
  %251 = xor <4 x i64> %231, %227
  %252 = bitcast i64* %arrayidx2.4.i142 to <4 x i64>*
  store <4 x i64> %251, <4 x i64>* %252, align 8, !tbaa !3
  %253 = xor <4 x i64> %231, %229
  %254 = bitcast i64* %arrayidx2.4.i181 to <4 x i64>*
  store <4 x i64> %253, <4 x i64>* %254, align 16, !tbaa !3
  %255 = xor <4 x i64> %237, %233
  %256 = bitcast i64* %arrayidx82.i129.4.le to <4 x i64>*
  store <4 x i64> %255, <4 x i64>* %256, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @EphemeralKeyGeneration_B_SIDHp503(i8* %PrivateKeyB, i8* %PublicKeyB) local_unnamed_addr #4 {
entry:
  %temp.i.i.i.i = alloca [16 x i64], align 16
  %one.i.i.i = alloca [8 x i64], align 16
  %t.i = alloca [2 x [8 x i64]], align 16
  %R = alloca [1 x %struct.point_proj], align 16
  %phiP = alloca [1 x %struct.point_proj], align 16
  %phiQ = alloca [1 x %struct.point_proj], align 16
  %phiR = alloca [1 x %struct.point_proj], align 16
  %pts = alloca [8 x [1 x %struct.point_proj]], align 16
  %XPB = alloca [2 x [8 x i64]], align 16
  %XQB = alloca [2 x [8 x i64]], align 16
  %XRB = alloca [2 x [8 x i64]], align 16
  %coeff = alloca [3 x [2 x [8 x i64]]], align 16
  %A24plus = alloca [2 x [8 x i64]], align 16
  %A24minus = alloca [2 x [8 x i64]], align 16
  %A = alloca [2 x [8 x i64]], align 16
  %pts_index = alloca [8 x i32], align 16
  %SecretKeyB = alloca [4 x i64], align 16
  %0 = bitcast [1 x %struct.point_proj]* %R to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #10
  %1 = bitcast [1 x %struct.point_proj]* %phiP to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 256, i1 false)
  %2 = bitcast [1 x %struct.point_proj]* %phiQ to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 256, i1 false)
  %3 = bitcast [1 x %struct.point_proj]* %phiR to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %3) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %3, i8 0, i64 256, i1 false)
  %4 = bitcast [8 x [1 x %struct.point_proj]]* %pts to i8*
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %4) #10
  %5 = bitcast [2 x [8 x i64]]* %XPB to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #10
  %6 = bitcast [2 x [8 x i64]]* %XQB to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6) #10
  %7 = bitcast [2 x [8 x i64]]* %XRB to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %7) #10
  %8 = bitcast [3 x [2 x [8 x i64]]]* %coeff to i8*
  call void @llvm.lifetime.start.p0i8(i64 384, i8* nonnull %8) #10
  %9 = bitcast [2 x [8 x i64]]* %A24plus to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %9) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 128, i1 false)
  %10 = bitcast [2 x [8 x i64]]* %A24minus to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %10) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 128, i1 false)
  %11 = bitcast [2 x [8 x i64]]* %A to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 128, i1 false)
  %12 = bitcast [8 x i32]* %pts_index to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %12) #10
  %13 = bitcast [4 x i64]* %SecretKeyB to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %13) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %13, i8 0, i64 32, i1 false)
  %arraydecay = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %XPB, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %XQB, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %XRB, i64 0, i64 0
  %14 = bitcast [2 x [8 x i64]]* %XPB to <4 x i64>*
  store <4 x i64> <i64 -2350017237560825637, i64 -4392041795693706226, i64 4385548945328509436, i64 -771423915569509155>, <4 x i64>* %14, align 16, !tbaa !3
  %arrayidx2.4.i.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %XPB, i64 0, i64 0, i64 4
  %15 = bitcast i64* %arrayidx2.4.i.i to <4 x i64>*
  store <4 x i64> <i64 4241169154243281967, i64 -9055620440120322608, i64 7121043649763917783, i64 8110065236168021>, <4 x i64>* %15, align 16, !tbaa !3
  %arraydecay2.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %XPB, i64 0, i64 1, i64 0
  %16 = bitcast i64* %arraydecay2.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %16, i8 0, i64 64, i1 false)
  %17 = bitcast [2 x [8 x i64]]* %XQB to <4 x i64>*
  store <4 x i64> <i64 3329382374260773473, i64 3539711558809017592, i64 6589269349358072822, i64 3923158083819410753>, <4 x i64>* %17, align 16, !tbaa !3
  %arrayidx2.4.i72.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %XQB, i64 0, i64 0, i64 4
  %18 = bitcast i64* %arrayidx2.4.i72.i to <4 x i64>*
  store <4 x i64> <i64 -5273354194737115313, i64 1859160943325703733, i64 -794327878939895329, i64 15124960556656395>, <4 x i64>* %18, align 16, !tbaa !3
  %arraydecay8.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %XQB, i64 0, i64 1, i64 0
  %19 = bitcast i64* %arraydecay8.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %19, i8 0, i64 64, i1 false)
  %20 = bitcast [2 x [8 x i64]]* %XRB to <4 x i64>*
  store <4 x i64> <i64 3317107392457288018, i64 -3242006345699259022, i64 2378317285299659333, i64 2752067541212454492>, <4 x i64>* %20, align 16, !tbaa !3
  %arrayidx2.4.i44.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %XRB, i64 0, i64 0, i64 4
  %21 = bitcast i64* %arrayidx2.4.i44.i to <4 x i64>*
  store <4 x i64> <i64 5401008318620329606, i64 -3485230783958939245, i64 -925585022753670519, i64 3869545957505286>, <4 x i64>* %21, align 16, !tbaa !3
  %arraydecay14.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %XRB, i64 0, i64 1, i64 0
  %22 = bitcast i64* %arraydecay14.i to <4 x i64>*
  store <4 x i64> <i64 279293490929988356, i64 -7404656326429938090, i64 -9205024153151674593, i64 1152299110578731394>, <4 x i64>* %22, align 16, !tbaa !3
  %arrayidx2.4.i30.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %XRB, i64 0, i64 1, i64 4
  %23 = bitcast i64* %arrayidx2.4.i30.i to <4 x i64>*
  store <4 x i64> <i64 -1908147126641080015, i64 1402013848611896279, i64 564564276466162271, i64 16163713578947404>, <4 x i64>* %23, align 16, !tbaa !3
  %arraydecay3 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0
  %arraydecay.i188 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 0, i64 0
  %24 = bitcast [1 x %struct.point_proj]* %phiP to <4 x i64>*
  store <4 x i64> <i64 6703660896400103571, i64 -5909411912860498377, i64 3678485159306027873, i64 -1093120675051731550>, <4 x i64>* %24, align 16, !tbaa !3
  %arrayidx2.4.i.i192 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 0, i64 4
  %25 = bitcast i64* %arrayidx2.4.i.i192 to <4 x i64>*
  store <4 x i64> <i64 2873992082182551772, i64 7171536194148839865, i64 -8265119447870746812, i64 16352189888232255>, <4 x i64>* %25, align 16, !tbaa !3
  %arraydecay2.i196 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 1, i64 0
  %26 = bitcast i64* %arraydecay2.i196 to <4 x i64>*
  store <4 x i64> <i64 9094247284453741849, i64 -3193704231875796372, i64 -4566050114418754087, i64 -54528743463601070>, <4 x i64>* %26, align 16, !tbaa !3
  %arrayidx2.4.i86.i200 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 1, i64 4
  %27 = bitcast i64* %arrayidx2.4.i86.i200 to <4 x i64>*
  store <4 x i64> <i64 -3047936482764286209, i64 1922054504381246808, i64 -1396317688998530438, i64 7612225463883843>, <4 x i64>* %27, align 16, !tbaa !3
  %arraydecay5.i204 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 0, i64 0
  %28 = bitcast [1 x %struct.point_proj]* %phiQ to <4 x i64>*
  store <4 x i64> <i64 5585423759613901741, i64 2458739554285137871, i64 8711841994324700402, i64 7897112202292909028>, <4 x i64>* %28, align 16, !tbaa !3
  %arrayidx2.4.i72.i208 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 0, i64 4
  %29 = bitcast i64* %arrayidx2.4.i72.i208 to <4 x i64>*
  store <4 x i64> <i64 5786141083180541608, i64 -1166217168022687708, i64 -3785477569279922225, i64 4594121609494003>, <4 x i64>* %29, align 16, !tbaa !3
  %arraydecay8.i212 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 1, i64 0
  %30 = bitcast i64* %arraydecay8.i212 to <4 x i64>*
  store <4 x i64> <i64 969679319129173575, i64 -2352131510239393043, i64 -5157801319708392578, i64 -8562986439770759325>, <4 x i64>* %30, align 16, !tbaa !3
  %arrayidx2.4.i58.i216 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 1, i64 4
  %31 = bitcast i64* %arrayidx2.4.i58.i216 to <4 x i64>*
  store <4 x i64> <i64 -6951028502467660703, i64 -9067673585621255480, i64 -1528728095638149651, i64 1716330900454016>, <4 x i64>* %31, align 16, !tbaa !3
  %arraydecay11.i220 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 0, i64 0
  %32 = bitcast [1 x %struct.point_proj]* %phiR to <4 x i64>*
  store <4 x i64> <i64 2133917679667870743, i64 6131595433662066731, i64 4132892201466249495, i64 4243264721812232392>, <4 x i64>* %32, align 16, !tbaa !3
  %arrayidx2.4.i44.i224 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 0, i64 4
  %33 = bitcast i64* %arrayidx2.4.i44.i224 to <4 x i64>*
  store <4 x i64> <i64 6868906156409292872, i64 -520717866781942678, i64 -2868022759630592540, i64 12061138545445877>, <4 x i64>* %33, align 16, !tbaa !3
  %arraydecay14.i228 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 1, i64 0
  %34 = bitcast i64* %arraydecay14.i228 to <4 x i64>*
  store <4 x i64> <i64 -4294522333240218021, i64 8869864843183837084, i64 -8701368168747863904, i64 -4965310479604401471>, <4 x i64>* %34, align 16, !tbaa !3
  %arrayidx2.4.i30.i232 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 1, i64 4
  %35 = bitcast i64* %arrayidx2.4.i30.i232 to <4 x i64>*
  store <4 x i64> <i64 -6825489128068601256, i64 -8596507567827754495, i64 3990273888349394775, i64 1829864135412729>, <4 x i64>* %35, align 16, !tbaa !3
  %Z = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 1
  %arraydecay12 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %Z, i64 0, i64 0, i64 0
  store i64 1017, i64* %arraydecay12, align 16, !tbaa !3
  %arrayidx2.1.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.3.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 1, i64 0, i64 3
  %36 = bitcast i64* %arrayidx2.1.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %36, i8 0, i64 16, i1 false)
  %37 = bitcast i64* %arrayidx2.3.i to <4 x i64>*
  store <4 x i64> <i64 -5476377146882523136, i64 7190870292575474356, i64 5866111745285600125, i64 -8444962029219724990>, <4 x i64>* %37, align 8, !tbaa !3
  %arrayidx2.7.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 1, i64 0, i64 7
  store i64 10972777180780883, i64* %arrayidx2.7.i, align 8, !tbaa !3
  %Z14 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 1
  %arraydecay16 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %Z14, i64 0, i64 0, i64 0
  store i64 1017, i64* %arraydecay16, align 16, !tbaa !3
  %arrayidx2.1.i236 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.3.i238 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 1, i64 0, i64 3
  %38 = bitcast i64* %arrayidx2.1.i236 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %38, i8 0, i64 16, i1 false)
  %39 = bitcast i64* %arrayidx2.3.i238 to <4 x i64>*
  store <4 x i64> <i64 -5476377146882523136, i64 7190870292575474356, i64 5866111745285600125, i64 -8444962029219724990>, <4 x i64>* %39, align 8, !tbaa !3
  %arrayidx2.7.i242 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 1, i64 0, i64 7
  store i64 10972777180780883, i64* %arrayidx2.7.i242, align 8, !tbaa !3
  %Z18 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 1
  %arraydecay20 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %Z18, i64 0, i64 0, i64 0
  store i64 1017, i64* %arraydecay20, align 16, !tbaa !3
  %arrayidx2.1.i243 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.3.i245 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 1, i64 0, i64 3
  %40 = bitcast i64* %arrayidx2.1.i243 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %40, i8 0, i64 16, i1 false)
  %41 = bitcast i64* %arrayidx2.3.i245 to <4 x i64>*
  store <4 x i64> <i64 -5476377146882523136, i64 7190870292575474356, i64 5866111745285600125, i64 -8444962029219724990>, <4 x i64>* %41, align 8, !tbaa !3
  %arrayidx2.7.i249 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 1, i64 0, i64 7
  store i64 10972777180780883, i64* %arrayidx2.7.i249, align 8, !tbaa !3
  %arraydecay22 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A24plus, i64 0, i64 0, i64 0
  store i64 1017, i64* %arraydecay22, align 16, !tbaa !3
  %arrayidx2.1.i250 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A24plus, i64 0, i64 0, i64 1
  %arrayidx2.3.i252 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A24plus, i64 0, i64 0, i64 3
  %42 = bitcast i64* %arrayidx2.1.i250 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %42, i8 0, i64 16, i1 false)
  %43 = bitcast i64* %arrayidx2.3.i252 to <4 x i64>*
  store <4 x i64> <i64 -5476377146882523136, i64 7190870292575474356, i64 5866111745285600125, i64 -8444962029219724990>, <4 x i64>* %43, align 8, !tbaa !3
  %arrayidx2.7.i256 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A24plus, i64 0, i64 0, i64 7
  store i64 10972777180780883, i64* %arrayidx2.7.i256, align 8, !tbaa !3
  %arraydecay23 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A24plus, i64 0, i64 0
  call fastcc void @mp2_add([8 x i64]* nonnull %arraydecay23, [8 x i64]* nonnull %arraydecay23, [8 x i64]* nonnull %arraydecay23)
  %arraydecay28 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A24minus, i64 0, i64 0
  call fastcc void @mp2_add([8 x i64]* nonnull %arraydecay23, [8 x i64]* nonnull %arraydecay23, [8 x i64]* nonnull %arraydecay28)
  %arraydecay31 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A, i64 0, i64 0
  call fastcc void @mp2_add([8 x i64]* nonnull %arraydecay23, [8 x i64]* nonnull %arraydecay28, [8 x i64]* nonnull %arraydecay31)
  call fastcc void @mp2_add([8 x i64]* nonnull %arraydecay28, [8 x i64]* nonnull %arraydecay28, [8 x i64]* nonnull %arraydecay23)
  %arraydecay35 = getelementptr inbounds [4 x i64], [4 x i64]* %SecretKeyB, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %13, i8* align 1 %PrivateKeyB, i64 32, i1 false)
  %arraydecay40 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0
  call fastcc void @LADDER3PT([8 x i64]* nonnull %arraydecay, [8 x i64]* nonnull %arraydecay1, [8 x i64]* nonnull %arraydecay2, i64* nonnull %arraydecay35, i32 1, %struct.point_proj* nonnull %arraydecay40, [8 x i64]* nonnull %arraydecay31)
  %arrayidx.4.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 0, i64 4
  %arraydecay4.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 1, i64 0
  %arrayidx.4.i15.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 1, i64 4
  %arraydecay.i266 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 0, i64 0
  %arrayidx.4.i.i274 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 0, i64 4
  %arraydecay4.i282 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 1, i64 0
  %arrayidx.4.i15.i290 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 1, i64 4
  %arraydecay70 = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %coeff, i64 0, i64 0
  %44 = bitcast [1 x %struct.point_proj]* %R to <4 x i64>*
  %45 = bitcast i64* %arrayidx.4.i.i to <4 x i64>*
  %46 = bitcast i64* %arraydecay4.i to <4 x i64>*
  %47 = bitcast i64* %arrayidx.4.i15.i to <4 x i64>*
  %48 = bitcast i64* %arraydecay.i266 to <4 x i64>*
  %49 = bitcast i64* %arrayidx.4.i.i274 to <4 x i64>*
  %50 = bitcast i64* %arraydecay4.i282 to <4 x i64>*
  %51 = bitcast i64* %arrayidx.4.i15.i290 to <4 x i64>*
  %52 = bitcast [1 x %struct.point_proj]* %R to <4 x i64>*
  %53 = bitcast i64* %arrayidx.4.i.i to <4 x i64>*
  %54 = bitcast i64* %arraydecay4.i to <4 x i64>*
  %55 = bitcast i64* %arrayidx.4.i15.i to <4 x i64>*
  %56 = bitcast i64* %arraydecay.i266 to <4 x i64>*
  %57 = bitcast i64* %arrayidx.4.i.i274 to <4 x i64>*
  %58 = bitcast i64* %arraydecay4.i282 to <4 x i64>*
  %59 = bitcast i64* %arrayidx.4.i15.i290 to <4 x i64>*
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.end, %entry
  %ii.0396 = phi i32 [ 0, %entry ], [ %ii.1.lcssa, %for.end ]
  %npts.0395 = phi i32 [ 0, %entry ], [ %sub85, %for.end ]
  %index.0394 = phi i32 [ 0, %entry ], [ %93, %for.end ]
  %row.0393 = phi i32 [ 1, %entry ], [ %inc108, %for.end ]
  %sub = sub nuw nsw i32 159, %row.0393
  %cmp42386 = icmp ult i32 %index.0394, %sub
  br i1 %cmp42386, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %ii.1389 = phi i32 [ %inc60, %while.body ], [ %ii.0396, %while.cond.preheader ]
  %npts.1388 = phi i32 [ %inc, %while.body ], [ %npts.0395, %while.cond.preheader ]
  %index.1387 = phi i32 [ %add, %while.body ], [ %index.0394, %while.cond.preheader ]
  %idxprom = zext i32 %npts.1388 to i64
  %arraydecay2.i258 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 0, i64 0
  %60 = load <4 x i64>, <4 x i64>* %44, align 16, !tbaa !3
  %61 = bitcast i64* %arraydecay2.i258 to <4 x i64>*
  store <4 x i64> %60, <4 x i64>* %61, align 16, !tbaa !3
  %arrayidx2.4.i.i262 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 0, i64 4
  %62 = load <4 x i64>, <4 x i64>* %45, align 16, !tbaa !3
  %63 = bitcast i64* %arrayidx2.4.i.i262 to <4 x i64>*
  store <4 x i64> %62, <4 x i64>* %63, align 16, !tbaa !3
  %arraydecay6.i = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 1, i64 0
  %64 = load <4 x i64>, <4 x i64>* %46, align 16, !tbaa !3
  %65 = bitcast i64* %arraydecay6.i to <4 x i64>*
  store <4 x i64> %64, <4 x i64>* %65, align 16, !tbaa !3
  %arrayidx2.4.i16.i = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 1, i64 4
  %66 = load <4 x i64>, <4 x i64>* %47, align 16, !tbaa !3
  %67 = bitcast i64* %arrayidx2.4.i16.i to <4 x i64>*
  store <4 x i64> %66, <4 x i64>* %67, align 16, !tbaa !3
  %arraydecay2.i267 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 0, i64 0
  %68 = load <4 x i64>, <4 x i64>* %48, align 16, !tbaa !3
  %69 = bitcast i64* %arraydecay2.i267 to <4 x i64>*
  store <4 x i64> %68, <4 x i64>* %69, align 16, !tbaa !3
  %arrayidx2.4.i.i275 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 0, i64 4
  %70 = load <4 x i64>, <4 x i64>* %49, align 16, !tbaa !3
  %71 = bitcast i64* %arrayidx2.4.i.i275 to <4 x i64>*
  store <4 x i64> %70, <4 x i64>* %71, align 16, !tbaa !3
  %arraydecay6.i283 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 1, i64 0
  %72 = load <4 x i64>, <4 x i64>* %50, align 16, !tbaa !3
  %73 = bitcast i64* %arraydecay6.i283 to <4 x i64>*
  store <4 x i64> %72, <4 x i64>* %73, align 16, !tbaa !3
  %arrayidx2.4.i16.i291 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 1, i64 4
  %74 = load <4 x i64>, <4 x i64>* %51, align 16, !tbaa !3
  %75 = bitcast i64* %arrayidx2.4.i16.i291 to <4 x i64>*
  store <4 x i64> %74, <4 x i64>* %75, align 16, !tbaa !3
  %inc = add i32 %npts.1388, 1
  %arrayidx59 = getelementptr inbounds [8 x i32], [8 x i32]* %pts_index, i64 0, i64 %idxprom
  store i32 %index.1387, i32* %arrayidx59, align 4, !tbaa !59
  %inc60 = add i32 %ii.1389, 1
  %idxprom61 = zext i32 %ii.1389 to i64
  %arrayidx62 = getelementptr inbounds [158 x i32], [158 x i32]* @strat_Bob, i64 0, i64 %idxprom61
  %76 = load i32, i32* %arrayidx62, align 4, !tbaa !59
  call void @xTPLe(%struct.point_proj* nonnull %arraydecay40, %struct.point_proj* nonnull %arraydecay40, [8 x i64]* nonnull %arraydecay28, [8 x i64]* nonnull %arraydecay23, i32 %76)
  %add = add i32 %76, %index.1387
  %cmp42 = icmp ult i32 %add, %sub
  br i1 %cmp42, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %npts.1.lcssa = phi i32 [ %npts.0395, %while.cond.preheader ], [ %inc, %while.body ]
  %ii.1.lcssa = phi i32 [ %ii.0396, %while.cond.preheader ], [ %inc60, %while.body ]
  call void @get_3_isog(%struct.point_proj* nonnull %arraydecay40, [8 x i64]* nonnull %arraydecay28, [8 x i64]* nonnull %arraydecay23, [2 x [8 x i64]]* nonnull %arraydecay70)
  %cmp72391 = icmp eq i32 %npts.1.lcssa, 0
  br i1 %cmp72391, label %for.end, label %for.body73.preheader

for.body73.preheader:                             ; preds = %while.end
  %wide.trip.count = zext i32 %npts.1.lcssa to i64
  br label %for.body73

for.body73:                                       ; preds = %for.body73, %for.body73.preheader
  %indvars.iv = phi i64 [ 0, %for.body73.preheader ], [ %indvars.iv.next, %for.body73 ]
  %arraydecay76 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %indvars.iv, i64 0
  call void @eval_3_isog(%struct.point_proj* nonnull %arraydecay76, [2 x [8 x i64]]* nonnull %arraydecay70)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.end, label %for.body73

for.end:                                          ; preds = %for.body73, %while.end
  call void @eval_3_isog(%struct.point_proj* nonnull %arraydecay3, [2 x [8 x i64]]* nonnull %arraydecay70)
  call void @eval_3_isog(%struct.point_proj* nonnull %arraydecay5, [2 x [8 x i64]]* nonnull %arraydecay70)
  call void @eval_3_isog(%struct.point_proj* nonnull %arraydecay8, [2 x [8 x i64]]* nonnull %arraydecay70)
  %sub85 = add i32 %npts.1.lcssa, -1
  %idxprom86 = zext i32 %sub85 to i64
  %arraydecay.i298 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 0, i64 0, i64 0
  %77 = bitcast i64* %arraydecay.i298 to <4 x i64>*
  %78 = load <4 x i64>, <4 x i64>* %77, align 16, !tbaa !3
  store <4 x i64> %78, <4 x i64>* %52, align 16, !tbaa !3
  %arrayidx.4.i.i306 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 0, i64 0, i64 4
  %79 = bitcast i64* %arrayidx.4.i.i306 to <4 x i64>*
  %80 = load <4 x i64>, <4 x i64>* %79, align 16, !tbaa !3
  store <4 x i64> %80, <4 x i64>* %53, align 16, !tbaa !3
  %arraydecay4.i314 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 0, i64 1, i64 0
  %81 = bitcast i64* %arraydecay4.i314 to <4 x i64>*
  %82 = load <4 x i64>, <4 x i64>* %81, align 16, !tbaa !3
  store <4 x i64> %82, <4 x i64>* %54, align 16, !tbaa !3
  %arrayidx.4.i15.i322 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 0, i64 1, i64 4
  %83 = bitcast i64* %arrayidx.4.i15.i322 to <4 x i64>*
  %84 = load <4 x i64>, <4 x i64>* %83, align 16, !tbaa !3
  store <4 x i64> %84, <4 x i64>* %55, align 16, !tbaa !3
  %arraydecay.i342 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 1, i64 0, i64 0
  %85 = bitcast i64* %arraydecay.i342 to <4 x i64>*
  %86 = load <4 x i64>, <4 x i64>* %85, align 16, !tbaa !3
  store <4 x i64> %86, <4 x i64>* %56, align 16, !tbaa !3
  %arrayidx.4.i.i350 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 1, i64 0, i64 4
  %87 = bitcast i64* %arrayidx.4.i.i350 to <4 x i64>*
  %88 = load <4 x i64>, <4 x i64>* %87, align 16, !tbaa !3
  store <4 x i64> %88, <4 x i64>* %57, align 16, !tbaa !3
  %arraydecay4.i358 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 1, i64 1, i64 0
  %89 = bitcast i64* %arraydecay4.i358 to <4 x i64>*
  %90 = load <4 x i64>, <4 x i64>* %89, align 16, !tbaa !3
  store <4 x i64> %90, <4 x i64>* %58, align 16, !tbaa !3
  %arrayidx.4.i15.i366 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom86, i64 0, i32 1, i64 1, i64 4
  %91 = bitcast i64* %arrayidx.4.i15.i366 to <4 x i64>*
  %92 = load <4 x i64>, <4 x i64>* %91, align 16, !tbaa !3
  store <4 x i64> %92, <4 x i64>* %59, align 16, !tbaa !3
  %arrayidx105 = getelementptr inbounds [8 x i32], [8 x i32]* %pts_index, i64 0, i64 %idxprom86
  %93 = load i32, i32* %arrayidx105, align 4, !tbaa !59
  %inc108 = add nuw nsw i32 %row.0393, 1
  %exitcond397 = icmp eq i32 %inc108, 159
  br i1 %exitcond397, label %for.end109, label %while.cond.preheader

for.end109:                                       ; preds = %for.end
  %arraydecay4 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiP, i64 0, i64 0, i32 0, i64 0
  %arraydecay7 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiQ, i64 0, i64 0, i32 0, i64 0
  %arraydecay10 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %phiR, i64 0, i64 0, i32 0, i64 0
  call void @get_3_isog(%struct.point_proj* nonnull %arraydecay40, [8 x i64]* nonnull %arraydecay28, [8 x i64]* nonnull %arraydecay23, [2 x [8 x i64]]* nonnull %arraydecay70)
  call void @eval_3_isog(%struct.point_proj* nonnull %arraydecay3, [2 x [8 x i64]]* nonnull %arraydecay70)
  call void @eval_3_isog(%struct.point_proj* nonnull %arraydecay5, [2 x [8 x i64]]* nonnull %arraydecay70)
  call void @eval_3_isog(%struct.point_proj* nonnull %arraydecay8, [2 x [8 x i64]]* nonnull %arraydecay70)
  %arraydecay122 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %Z, i64 0, i64 0
  %arraydecay125 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %Z14, i64 0, i64 0
  %arraydecay128 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %Z18, i64 0, i64 0
  call void @inv_3_way([8 x i64]* nonnull %arraydecay122, [8 x i64]* nonnull %arraydecay125, [8 x i64]* nonnull %arraydecay128)
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay4, [8 x i64]* nonnull %arraydecay122, [8 x i64]* nonnull %arraydecay4)
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay7, [8 x i64]* nonnull %arraydecay125, [8 x i64]* nonnull %arraydecay7)
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay10, [8 x i64]* nonnull %arraydecay128, [8 x i64]* nonnull %arraydecay10)
  %94 = bitcast [2 x [8 x i64]]* %t.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %94) #10
  %arraydecay2.i.i378 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t.i, i64 0, i64 0, i64 0
  %95 = bitcast [8 x i64]* %one.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %95) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %95, i8 0, i64 64, i1 false) #10
  %arrayidx.i.i.i379 = getelementptr inbounds [8 x i64], [8 x i64]* %one.i.i.i, i64 0, i64 0
  store i64 1, i64* %arrayidx.i.i.i379, align 16, !tbaa !3
  %96 = bitcast [16 x i64]* %temp.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %96) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %96, i8 0, i64 128, i1 false) #10
  %arraydecay.i.i.i.i380 = getelementptr inbounds [16 x i64], [16 x i64]* %temp.i.i.i.i, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay.i188, i64* nonnull %arrayidx.i.i.i379, i64* nonnull %arraydecay.i.i.i.i380, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i380, i64* nonnull %arraydecay2.i.i378) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %96) #10
  call void @fpcorrection503(i64* nonnull %arraydecay2.i.i378) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %95) #10
  %arraydecay6.i.i382 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t.i, i64 0, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %95) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %95, i8 0, i64 64, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i379, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %96) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %96, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2.i196, i64* nonnull %arrayidx.i.i.i379, i64* nonnull %arraydecay.i.i.i.i380, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i380, i64* nonnull %arraydecay6.i.i382) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %96) #10
  call void @fpcorrection503(i64* nonnull %arraydecay6.i.i382) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %95) #10
  %97 = call i64 @llvm.objectsize.i64.p0i8(i8* %PublicKeyB, i1 false, i1 true) #10
  %call.i.i383 = call i8* @__memcpy_chk(i8* %PublicKeyB, i8* nonnull %94, i64 63, i64 %97) #10
  %add.ptr.i384 = getelementptr inbounds i8, i8* %PublicKeyB, i64 63
  %98 = bitcast i64* %arraydecay6.i.i382 to i8*
  %99 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr.i384, i1 false, i1 true) #10
  %call.i5.i385 = call i8* @__memcpy_chk(i8* nonnull %add.ptr.i384, i8* nonnull %98, i64 63, i64 %99) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %94) #10
  %add.ptr = getelementptr inbounds i8, i8* %PublicKeyB, i64 126
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %94) #10
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %95) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %95, i8 0, i64 64, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i379, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %96) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %96, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay5.i204, i64* nonnull %arrayidx.i.i.i379, i64* nonnull %arraydecay.i.i.i.i380, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i380, i64* nonnull %arraydecay2.i.i378) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %96) #10
  call void @fpcorrection503(i64* nonnull %arraydecay2.i.i378) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %95) #10
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %95) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %95, i8 0, i64 64, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i379, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %96) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %96, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay8.i212, i64* nonnull %arrayidx.i.i.i379, i64* nonnull %arraydecay.i.i.i.i380, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i380, i64* nonnull %arraydecay6.i.i382) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %96) #10
  call void @fpcorrection503(i64* nonnull %arraydecay6.i.i382) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %95) #10
  %100 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr, i1 false, i1 true) #10
  %call.i.i339 = call i8* @__memcpy_chk(i8* nonnull %add.ptr, i8* nonnull %94, i64 63, i64 %100) #10
  %add.ptr.i340 = getelementptr inbounds i8, i8* %PublicKeyB, i64 189
  %101 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr.i340, i1 false, i1 true) #10
  %call.i5.i341 = call i8* @__memcpy_chk(i8* nonnull %add.ptr.i340, i8* nonnull %98, i64 63, i64 %101) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %94) #10
  %add.ptr165 = getelementptr inbounds i8, i8* %PublicKeyB, i64 252
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %94) #10
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %95) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %95, i8 0, i64 64, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i379, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %96) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %96, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay11.i220, i64* nonnull %arrayidx.i.i.i379, i64* nonnull %arraydecay.i.i.i.i380, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i380, i64* nonnull %arraydecay2.i.i378) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %96) #10
  call void @fpcorrection503(i64* nonnull %arraydecay2.i.i378) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %95) #10
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %95) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %95, i8 0, i64 64, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i379, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %96) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %96, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay14.i228, i64* nonnull %arrayidx.i.i.i379, i64* nonnull %arraydecay.i.i.i.i380, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i380, i64* nonnull %arraydecay6.i.i382) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %96) #10
  call void @fpcorrection503(i64* nonnull %arraydecay6.i.i382) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %95) #10
  %102 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr165, i1 false, i1 true) #10
  %call.i.i = call i8* @__memcpy_chk(i8* nonnull %add.ptr165, i8* nonnull %94, i64 63, i64 %102) #10
  %add.ptr.i = getelementptr inbounds i8, i8* %PublicKeyB, i64 315
  %103 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr.i, i1 false, i1 true) #10
  %call.i5.i = call i8* @__memcpy_chk(i8* nonnull %add.ptr.i, i8* nonnull %98, i64 63, i64 %103) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %94) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %13) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %12) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %11) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %10) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %9) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #10
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define i32 @EphemeralSecretAgreement_A_SIDHp503(i8* %PrivateKeyA, i8* %PublicKeyB, i8* %SharedSecretA) local_unnamed_addr #4 {
entry:
  %one.i.i.i = alloca [8 x i64], align 16
  %t.i = alloca [2 x [8 x i64]], align 16
  %temp.i.i.i.i = alloca [16 x i64], align 16
  %R = alloca [1 x %struct.point_proj], align 16
  %pts = alloca [7 x [1 x %struct.point_proj]], align 16
  %coeff = alloca [3 x [2 x [8 x i64]]], align 16
  %PKB = alloca [3 x [2 x [8 x i64]]], align 16
  %jinv = alloca [2 x [8 x i64]], align 16
  %A24plus = alloca [2 x [8 x i64]], align 16
  %C24 = alloca [2 x [8 x i64]], align 16
  %A = alloca [2 x [8 x i64]], align 16
  %pts_index = alloca [7 x i32], align 16
  %SecretKeyA = alloca [4 x i64], align 16
  %0 = bitcast [1 x %struct.point_proj]* %R to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #10
  %1 = bitcast [7 x [1 x %struct.point_proj]]* %pts to i8*
  call void @llvm.lifetime.start.p0i8(i64 1792, i8* nonnull %1) #10
  %2 = bitcast [3 x [2 x [8 x i64]]]* %coeff to i8*
  call void @llvm.lifetime.start.p0i8(i64 384, i8* nonnull %2) #10
  %3 = bitcast [3 x [2 x [8 x i64]]]* %PKB to i8*
  call void @llvm.lifetime.start.p0i8(i64 384, i8* nonnull %3) #10
  %4 = bitcast [2 x [8 x i64]]* %jinv to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %4) #10
  %5 = bitcast [2 x [8 x i64]]* %A24plus to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %5, i8 0, i64 128, i1 false)
  %6 = bitcast [2 x [8 x i64]]* %C24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %6, i8 0, i64 128, i1 false)
  %7 = bitcast [2 x [8 x i64]]* %A to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %7) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %7, i8 0, i64 128, i1 false)
  %8 = bitcast [7 x i32]* %pts_index to i8*
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %8) #10
  %9 = bitcast [4 x i64]* %SecretKeyA to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 32, i1 false)
  %arraydecay = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %PKB, i64 0, i64 0, i64 0
  %arraydecay.i = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %PKB, i64 0, i64 0, i64 0, i64 0
  %arrayidx.i.i = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %PKB, i64 0, i64 0, i64 0, i64 7
  store i64 0, i64* %arrayidx.i.i, align 8, !tbaa !3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %3, i8* align 1 %PublicKeyB, i64 63, i1 false)
  %add.ptr.i = getelementptr inbounds i8, i8* %PublicKeyB, i64 63
  %arraydecay2.i = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %PKB, i64 0, i64 0, i64 1, i64 0
  %arrayidx.i7.i = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %PKB, i64 0, i64 0, i64 1, i64 7
  store i64 0, i64* %arrayidx.i7.i, align 8, !tbaa !3
  %10 = bitcast i64* %arraydecay2.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %10, i8* nonnull align 1 %add.ptr.i, i64 63, i1 false)
  %11 = bitcast [16 x i64]* %temp.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 128, i1 false) #10
  %arraydecay.i.i.i.i = getelementptr inbounds [16 x i64], [16 x i64]* %temp.i.i.i.i, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay.i, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay.i) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %11) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2.i, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay2.i) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %11) #10
  %add.ptr = getelementptr inbounds i8, i8* %PublicKeyB, i64 126
  %arraydecay2 = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %PKB, i64 0, i64 1, i64 0
  %arraydecay.i135 = getelementptr inbounds [8 x i64], [8 x i64]* %arraydecay2, i64 0, i64 0
  %arrayidx.i.i136 = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %PKB, i64 0, i64 1, i64 0, i64 7
  store i64 0, i64* %arrayidx.i.i136, align 8, !tbaa !3
  %12 = bitcast [8 x i64]* %arraydecay2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %12, i8* nonnull align 1 %add.ptr, i64 63, i1 false)
  %add.ptr.i138 = getelementptr inbounds i8, i8* %PublicKeyB, i64 189
  %arraydecay2.i139 = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %PKB, i64 0, i64 1, i64 1, i64 0
  %arrayidx.i7.i140 = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %PKB, i64 0, i64 1, i64 1, i64 7
  store i64 0, i64* %arrayidx.i7.i140, align 8, !tbaa !3
  %13 = bitcast i64* %arraydecay2.i139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %13, i8* nonnull align 1 %add.ptr.i138, i64 63, i1 false)
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay.i135, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay.i135) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %11) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2.i139, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay2.i139) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %11) #10
  %add.ptr3 = getelementptr inbounds i8, i8* %PublicKeyB, i64 252
  %arraydecay5 = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %PKB, i64 0, i64 2, i64 0
  %arraydecay.i144 = getelementptr inbounds [8 x i64], [8 x i64]* %arraydecay5, i64 0, i64 0
  %arrayidx.i.i145 = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %PKB, i64 0, i64 2, i64 0, i64 7
  store i64 0, i64* %arrayidx.i.i145, align 8, !tbaa !3
  %14 = bitcast [8 x i64]* %arraydecay5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %14, i8* nonnull align 1 %add.ptr3, i64 63, i1 false)
  %add.ptr.i147 = getelementptr inbounds i8, i8* %PublicKeyB, i64 315
  %arraydecay2.i148 = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %PKB, i64 0, i64 2, i64 1, i64 0
  %arrayidx.i7.i149 = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %PKB, i64 0, i64 2, i64 1, i64 7
  store i64 0, i64* %arrayidx.i7.i149, align 8, !tbaa !3
  %15 = bitcast i64* %arraydecay2.i148 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %15, i8* nonnull align 1 %add.ptr.i147, i64 63, i1 false)
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay.i144, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay.i144) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %11) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2.i148, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay2.i148) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %11) #10
  %arraydecay12 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A, i64 0, i64 0
  call void @get_A([8 x i64]* nonnull %arraydecay, [8 x i64]* nonnull %arraydecay2, [8 x i64]* nonnull %arraydecay5, [8 x i64]* nonnull %arraydecay12)
  %arrayidx5.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %C24, i64 0, i64 0, i64 0
  store i64 2034, i64* %arrayidx5.i, align 16, !tbaa !3
  %arrayidx5.i.1 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %C24, i64 0, i64 0, i64 1
  %arrayidx5.i.3 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %C24, i64 0, i64 0, i64 3
  %16 = bitcast i64* %arrayidx5.i.1 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %16, i8 0, i64 16, i1 false)
  %17 = bitcast i64* %arrayidx5.i.3 to <4 x i64>*
  store <4 x i64> <i64 7493989779944505344, i64 -4065003488558602903, i64 -6714520583138351366, i64 1556820015270101636>, <4 x i64>* %17, align 8, !tbaa !3
  %arrayidx5.i.7 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %C24, i64 0, i64 0, i64 7
  store i64 21945554361561767, i64* %arrayidx5.i.7, align 8, !tbaa !3
  %arraydecay16 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %C24, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A24plus, i64 0, i64 0
  call fastcc void @mp2_add([8 x i64]* nonnull %arraydecay12, [8 x i64]* nonnull %arraydecay16, [8 x i64]* nonnull %arraydecay17)
  store i64 4068, i64* %arrayidx5.i, align 16, !tbaa !3
  %18 = bitcast i64* %arrayidx5.i.1 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %18, i8 0, i64 16, i1 false)
  %19 = bitcast i64* %arrayidx5.i.3 to <4 x i64>*
  store <4 x i64> <i64 -3458764513820540928, i64 -8130006977117205806, i64 5017702907432848885, i64 3113640030540203273>, <4 x i64>* %19, align 8, !tbaa !3
  store i64 43891108723123534, i64* %arrayidx5.i.7, align 8, !tbaa !3
  %arraydecay25 = getelementptr inbounds [4 x i64], [4 x i64]* %SecretKeyA, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %9, i8* align 1 %PrivateKeyA, i64 32, i1 false)
  %arraydecay33 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0
  call fastcc void @LADDER3PT([8 x i64]* nonnull %arraydecay, [8 x i64]* nonnull %arraydecay2, [8 x i64]* nonnull %arraydecay5, i64* nonnull %arraydecay25, i32 0, %struct.point_proj* nonnull %arraydecay33, [8 x i64]* nonnull %arraydecay12)
  %arraydecay61 = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %coeff, i64 0, i64 0
  %arrayidx.4.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 0, i64 4
  %arraydecay4.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 1, i64 0
  %arrayidx.4.i15.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 1, i64 4
  %arraydecay.i174 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 0, i64 0
  %arrayidx.4.i.i182 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 0, i64 4
  %arraydecay4.i190 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 1, i64 0
  %arrayidx.4.i15.i198 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 1, i64 4
  %20 = bitcast [1 x %struct.point_proj]* %R to <4 x i64>*
  %21 = bitcast i64* %arrayidx.4.i.i to <4 x i64>*
  %22 = bitcast i64* %arraydecay4.i to <4 x i64>*
  %23 = bitcast i64* %arrayidx.4.i15.i to <4 x i64>*
  %24 = bitcast i64* %arraydecay.i174 to <4 x i64>*
  %25 = bitcast i64* %arrayidx.4.i.i182 to <4 x i64>*
  %26 = bitcast i64* %arraydecay4.i190 to <4 x i64>*
  %27 = bitcast i64* %arrayidx.4.i15.i198 to <4 x i64>*
  %28 = bitcast [1 x %struct.point_proj]* %R to <4 x i64>*
  %29 = bitcast i64* %arrayidx.4.i.i to <4 x i64>*
  %30 = bitcast i64* %arraydecay4.i to <4 x i64>*
  %31 = bitcast i64* %arrayidx.4.i15.i to <4 x i64>*
  %32 = bitcast i64* %arraydecay.i174 to <4 x i64>*
  %33 = bitcast i64* %arrayidx.4.i.i182 to <4 x i64>*
  %34 = bitcast i64* %arraydecay4.i190 to <4 x i64>*
  %35 = bitcast i64* %arrayidx.4.i15.i198 to <4 x i64>*
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.end, %entry
  %ii.0294 = phi i32 [ 0, %entry ], [ %ii.1.lcssa, %for.end ]
  %npts.0293 = phi i32 [ 0, %entry ], [ %sub70, %for.end ]
  %index.0292 = phi i32 [ 0, %entry ], [ %69, %for.end ]
  %row.0291 = phi i32 [ 1, %entry ], [ %inc93, %for.end ]
  %sub = sub nuw nsw i32 125, %row.0291
  %cmp35284 = icmp ult i32 %index.0292, %sub
  br i1 %cmp35284, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %ii.1287 = phi i32 [ %inc51, %while.body ], [ %ii.0294, %while.cond.preheader ]
  %npts.1286 = phi i32 [ %inc, %while.body ], [ %npts.0293, %while.cond.preheader ]
  %index.1285 = phi i32 [ %add, %while.body ], [ %index.0292, %while.cond.preheader ]
  %idxprom = zext i32 %npts.1286 to i64
  %arraydecay2.i173 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 0, i64 0
  %36 = load <4 x i64>, <4 x i64>* %20, align 16, !tbaa !3
  %37 = bitcast i64* %arraydecay2.i173 to <4 x i64>*
  store <4 x i64> %36, <4 x i64>* %37, align 16, !tbaa !3
  %arrayidx2.4.i.i = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 0, i64 4
  %38 = load <4 x i64>, <4 x i64>* %21, align 16, !tbaa !3
  %39 = bitcast i64* %arrayidx2.4.i.i to <4 x i64>*
  store <4 x i64> %38, <4 x i64>* %39, align 16, !tbaa !3
  %arraydecay6.i = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 1, i64 0
  %40 = load <4 x i64>, <4 x i64>* %22, align 16, !tbaa !3
  %41 = bitcast i64* %arraydecay6.i to <4 x i64>*
  store <4 x i64> %40, <4 x i64>* %41, align 16, !tbaa !3
  %arrayidx2.4.i16.i = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 1, i64 4
  %42 = load <4 x i64>, <4 x i64>* %23, align 16, !tbaa !3
  %43 = bitcast i64* %arrayidx2.4.i16.i to <4 x i64>*
  store <4 x i64> %42, <4 x i64>* %43, align 16, !tbaa !3
  %arraydecay2.i175 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 0, i64 0
  %44 = load <4 x i64>, <4 x i64>* %24, align 16, !tbaa !3
  %45 = bitcast i64* %arraydecay2.i175 to <4 x i64>*
  store <4 x i64> %44, <4 x i64>* %45, align 16, !tbaa !3
  %arrayidx2.4.i.i183 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 0, i64 4
  %46 = load <4 x i64>, <4 x i64>* %25, align 16, !tbaa !3
  %47 = bitcast i64* %arrayidx2.4.i.i183 to <4 x i64>*
  store <4 x i64> %46, <4 x i64>* %47, align 16, !tbaa !3
  %arraydecay6.i191 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 1, i64 0
  %48 = load <4 x i64>, <4 x i64>* %26, align 16, !tbaa !3
  %49 = bitcast i64* %arraydecay6.i191 to <4 x i64>*
  store <4 x i64> %48, <4 x i64>* %49, align 16, !tbaa !3
  %arrayidx2.4.i16.i199 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 1, i64 4
  %50 = load <4 x i64>, <4 x i64>* %27, align 16, !tbaa !3
  %51 = bitcast i64* %arrayidx2.4.i16.i199 to <4 x i64>*
  store <4 x i64> %50, <4 x i64>* %51, align 16, !tbaa !3
  %inc = add i32 %npts.1286, 1
  %arrayidx50 = getelementptr inbounds [7 x i32], [7 x i32]* %pts_index, i64 0, i64 %idxprom
  store i32 %index.1285, i32* %arrayidx50, align 4, !tbaa !59
  %inc51 = add i32 %ii.1287, 1
  %idxprom52 = zext i32 %ii.1287 to i64
  %arrayidx53 = getelementptr inbounds [124 x i32], [124 x i32]* @strat_Alice, i64 0, i64 %idxprom52
  %52 = load i32, i32* %arrayidx53, align 4, !tbaa !59
  %mul = shl i32 %52, 1
  call void @xDBLe(%struct.point_proj* nonnull %arraydecay33, %struct.point_proj* nonnull %arraydecay33, [8 x i64]* nonnull %arraydecay17, [8 x i64]* nonnull %arraydecay16, i32 %mul)
  %add = add i32 %52, %index.1285
  %cmp35 = icmp ult i32 %add, %sub
  br i1 %cmp35, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %npts.1.lcssa = phi i32 [ %npts.0293, %while.cond.preheader ], [ %inc, %while.body ]
  %ii.1.lcssa = phi i32 [ %ii.0294, %while.cond.preheader ], [ %inc51, %while.body ]
  call void @get_4_isog(%struct.point_proj* nonnull %arraydecay33, [8 x i64]* nonnull %arraydecay17, [8 x i64]* nonnull %arraydecay16, [2 x [8 x i64]]* nonnull %arraydecay61)
  %cmp63289 = icmp eq i32 %npts.1.lcssa, 0
  br i1 %cmp63289, label %for.end, label %for.body64.preheader

for.body64.preheader:                             ; preds = %while.end
  %wide.trip.count = zext i32 %npts.1.lcssa to i64
  br label %for.body64

for.body64:                                       ; preds = %for.body64, %for.body64.preheader
  %indvars.iv = phi i64 [ 0, %for.body64.preheader ], [ %indvars.iv.next, %for.body64 ]
  %arraydecay67 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %indvars.iv, i64 0
  call void @eval_4_isog(%struct.point_proj* nonnull %arraydecay67, [2 x [8 x i64]]* nonnull %arraydecay61)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.end, label %for.body64

for.end:                                          ; preds = %for.body64, %while.end
  %sub70 = add i32 %npts.1.lcssa, -1
  %idxprom71 = zext i32 %sub70 to i64
  %arraydecay.i206 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom71, i64 0, i32 0, i64 0, i64 0
  %53 = bitcast i64* %arraydecay.i206 to <4 x i64>*
  %54 = load <4 x i64>, <4 x i64>* %53, align 16, !tbaa !3
  store <4 x i64> %54, <4 x i64>* %28, align 16, !tbaa !3
  %arrayidx.4.i.i214 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom71, i64 0, i32 0, i64 0, i64 4
  %55 = bitcast i64* %arrayidx.4.i.i214 to <4 x i64>*
  %56 = load <4 x i64>, <4 x i64>* %55, align 16, !tbaa !3
  store <4 x i64> %56, <4 x i64>* %29, align 16, !tbaa !3
  %arraydecay4.i222 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom71, i64 0, i32 0, i64 1, i64 0
  %57 = bitcast i64* %arraydecay4.i222 to <4 x i64>*
  %58 = load <4 x i64>, <4 x i64>* %57, align 16, !tbaa !3
  store <4 x i64> %58, <4 x i64>* %30, align 16, !tbaa !3
  %arrayidx.4.i15.i230 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom71, i64 0, i32 0, i64 1, i64 4
  %59 = bitcast i64* %arrayidx.4.i15.i230 to <4 x i64>*
  %60 = load <4 x i64>, <4 x i64>* %59, align 16, !tbaa !3
  store <4 x i64> %60, <4 x i64>* %31, align 16, !tbaa !3
  %arraydecay.i238 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom71, i64 0, i32 1, i64 0, i64 0
  %61 = bitcast i64* %arraydecay.i238 to <4 x i64>*
  %62 = load <4 x i64>, <4 x i64>* %61, align 16, !tbaa !3
  store <4 x i64> %62, <4 x i64>* %32, align 16, !tbaa !3
  %arrayidx.4.i.i246 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom71, i64 0, i32 1, i64 0, i64 4
  %63 = bitcast i64* %arrayidx.4.i.i246 to <4 x i64>*
  %64 = load <4 x i64>, <4 x i64>* %63, align 16, !tbaa !3
  store <4 x i64> %64, <4 x i64>* %33, align 16, !tbaa !3
  %arraydecay4.i254 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom71, i64 0, i32 1, i64 1, i64 0
  %65 = bitcast i64* %arraydecay4.i254 to <4 x i64>*
  %66 = load <4 x i64>, <4 x i64>* %65, align 16, !tbaa !3
  store <4 x i64> %66, <4 x i64>* %34, align 16, !tbaa !3
  %arrayidx.4.i15.i262 = getelementptr inbounds [7 x [1 x %struct.point_proj]], [7 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom71, i64 0, i32 1, i64 1, i64 4
  %67 = bitcast i64* %arrayidx.4.i15.i262 to <4 x i64>*
  %68 = load <4 x i64>, <4 x i64>* %67, align 16, !tbaa !3
  store <4 x i64> %68, <4 x i64>* %35, align 16, !tbaa !3
  %arrayidx90 = getelementptr inbounds [7 x i32], [7 x i32]* %pts_index, i64 0, i64 %idxprom71
  %69 = load i32, i32* %arrayidx90, align 4, !tbaa !59
  %inc93 = add nuw nsw i32 %row.0291, 1
  %exitcond295 = icmp eq i32 %inc93, 125
  br i1 %exitcond295, label %for.end94, label %while.cond.preheader

for.end94:                                        ; preds = %for.end
  call void @get_4_isog(%struct.point_proj* nonnull %arraydecay33, [8 x i64]* nonnull %arraydecay17, [8 x i64]* nonnull %arraydecay16, [2 x [8 x i64]]* nonnull %arraydecay61)
  call fastcc void @mp2_add([8 x i64]* nonnull %arraydecay17, [8 x i64]* nonnull %arraydecay17, [8 x i64]* nonnull %arraydecay17)
  %arraydecay.i270 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A24plus, i64 0, i64 0, i64 0
  call void @fpsub503(i64* nonnull %arraydecay.i270, i64* nonnull %arrayidx5.i, i64* nonnull %arraydecay.i270) #10
  %arraydecay6.i273 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A24plus, i64 0, i64 1, i64 0
  %arraydecay8.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %C24, i64 0, i64 1, i64 0
  call void @fpsub503(i64* nonnull %arraydecay6.i273, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay6.i273) #10
  call void @fpadd503(i64* nonnull %arraydecay.i270, i64* nonnull %arraydecay.i270, i64* nonnull %arraydecay.i270) #10
  call void @fpadd503(i64* nonnull %arraydecay6.i273, i64* nonnull %arraydecay6.i273, i64* nonnull %arraydecay6.i273) #10
  %arraydecay110 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %jinv, i64 0, i64 0
  call void @j_inv([8 x i64]* nonnull %arraydecay17, [8 x i64]* nonnull %arraydecay16, [8 x i64]* nonnull %arraydecay110)
  %70 = bitcast [2 x [8 x i64]]* %t.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %70) #10
  %arraydecay.i.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %jinv, i64 0, i64 0, i64 0
  %arraydecay2.i.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t.i, i64 0, i64 0, i64 0
  %71 = bitcast [8 x i64]* %one.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %71) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %71, i8 0, i64 64, i1 false) #10
  %arrayidx.i.i.i = getelementptr inbounds [8 x i64], [8 x i64]* %one.i.i.i, i64 0, i64 0
  store i64 1, i64* %arrayidx.i.i.i, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay.i.i, i64* nonnull %arrayidx.i.i.i, i64* nonnull %arraydecay.i.i.i.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay2.i.i) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %11) #10
  call void @fpcorrection503(i64* nonnull %arraydecay2.i.i) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %71) #10
  %arraydecay4.i.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %jinv, i64 0, i64 1, i64 0
  %arraydecay6.i.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %t.i, i64 0, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %71) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %71, i8 0, i64 64, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay4.i.i, i64* nonnull %arrayidx.i.i.i, i64* nonnull %arraydecay.i.i.i.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay6.i.i) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %11) #10
  call void @fpcorrection503(i64* nonnull %arraydecay6.i.i) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %71) #10
  %72 = call i64 @llvm.objectsize.i64.p0i8(i8* %SharedSecretA, i1 false, i1 true) #10
  %call.i.i282 = call i8* @__memcpy_chk(i8* %SharedSecretA, i8* nonnull %70, i64 63, i64 %72) #10
  %add.ptr.i283 = getelementptr inbounds i8, i8* %SharedSecretA, i64 63
  %73 = bitcast i64* %arraydecay6.i.i to i8*
  %74 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr.i283, i1 false, i1 true) #10
  %call.i5.i = call i8* @__memcpy_chk(i8* nonnull %add.ptr.i283, i8* nonnull %73, i64 63, i64 %74) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %70) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #10
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 1792, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #10
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define i32 @EphemeralSecretAgreement_B_extended(i8* %PrivateKeyB, i8* %PublicKeyA, i8* %SharedSecretB, i32 %sike) local_unnamed_addr #4 {
entry:
  %one.i.i.i = alloca [8 x i64], align 16
  %P.i = alloca [1 x %struct.point_proj], align 16
  %Q.i = alloca [1 x %struct.point_proj], align 16
  %A2.i = alloca [2 x [8 x i64]], align 16
  %tmp1.i = alloca [2 x [8 x i64]], align 16
  %tmp2.i = alloca [2 x [8 x i64]], align 16
  %temp.i.i.i.i = alloca [16 x i64], align 16
  %R = alloca [1 x %struct.point_proj], align 16
  %pts = alloca [8 x [1 x %struct.point_proj]], align 16
  %coeff = alloca [3 x [2 x [8 x i64]]], align 16
  %PKB = alloca [3 x [2 x [8 x i64]]], align 16
  %jinv = alloca [2 x [8 x i64]], align 16
  %A24plus = alloca [2 x [8 x i64]], align 16
  %A24minus = alloca [2 x [8 x i64]], align 16
  %A = alloca [2 x [8 x i64]], align 16
  %pts_index = alloca [8 x i32], align 16
  %SecretKeyB = alloca [4 x i64], align 16
  %0 = bitcast [1 x %struct.point_proj]* %R to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #10
  %1 = bitcast [8 x [1 x %struct.point_proj]]* %pts to i8*
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %1) #10
  %2 = bitcast [3 x [2 x [8 x i64]]]* %coeff to i8*
  call void @llvm.lifetime.start.p0i8(i64 384, i8* nonnull %2) #10
  %3 = bitcast [3 x [2 x [8 x i64]]]* %PKB to i8*
  call void @llvm.lifetime.start.p0i8(i64 384, i8* nonnull %3) #10
  %4 = bitcast [2 x [8 x i64]]* %jinv to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %4) #10
  %5 = bitcast [2 x [8 x i64]]* %A24plus to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %5, i8 0, i64 128, i1 false)
  %6 = bitcast [2 x [8 x i64]]* %A24minus to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %6, i8 0, i64 128, i1 false)
  %7 = bitcast [2 x [8 x i64]]* %A to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %7) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %7, i8 0, i64 128, i1 false)
  %8 = bitcast [8 x i32]* %pts_index to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #10
  %9 = bitcast [4 x i64]* %SecretKeyB to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 32, i1 false)
  %arraydecay = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %PKB, i64 0, i64 0, i64 0
  %arraydecay.i = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %PKB, i64 0, i64 0, i64 0, i64 0
  %arrayidx.i.i = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %PKB, i64 0, i64 0, i64 0, i64 7
  store i64 0, i64* %arrayidx.i.i, align 8, !tbaa !3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %3, i8* align 1 %PublicKeyA, i64 63, i1 false)
  %add.ptr.i = getelementptr inbounds i8, i8* %PublicKeyA, i64 63
  %arraydecay2.i = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %PKB, i64 0, i64 0, i64 1, i64 0
  %arrayidx.i7.i = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %PKB, i64 0, i64 0, i64 1, i64 7
  store i64 0, i64* %arrayidx.i7.i, align 8, !tbaa !3
  %10 = bitcast i64* %arraydecay2.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %10, i8* nonnull align 1 %add.ptr.i, i64 63, i1 false)
  %11 = bitcast [16 x i64]* %temp.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 128, i1 false) #10
  %arraydecay.i.i.i.i = getelementptr inbounds [16 x i64], [16 x i64]* %temp.i.i.i.i, i64 0, i64 0
  call void @mp_mul(i64* nonnull %arraydecay.i, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay.i) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %11) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2.i, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay2.i) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %11) #10
  %add.ptr = getelementptr inbounds i8, i8* %PublicKeyA, i64 126
  %arraydecay2 = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %PKB, i64 0, i64 1, i64 0
  %arraydecay.i155 = getelementptr inbounds [8 x i64], [8 x i64]* %arraydecay2, i64 0, i64 0
  %arrayidx.i.i156 = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %PKB, i64 0, i64 1, i64 0, i64 7
  store i64 0, i64* %arrayidx.i.i156, align 8, !tbaa !3
  %12 = bitcast [8 x i64]* %arraydecay2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %12, i8* nonnull align 1 %add.ptr, i64 63, i1 false)
  %add.ptr.i158 = getelementptr inbounds i8, i8* %PublicKeyA, i64 189
  %arraydecay2.i159 = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %PKB, i64 0, i64 1, i64 1, i64 0
  %arrayidx.i7.i160 = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %PKB, i64 0, i64 1, i64 1, i64 7
  store i64 0, i64* %arrayidx.i7.i160, align 8, !tbaa !3
  %13 = bitcast i64* %arraydecay2.i159 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %13, i8* nonnull align 1 %add.ptr.i158, i64 63, i1 false)
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay.i155, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay.i155) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %11) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2.i159, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay2.i159) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %11) #10
  %add.ptr3 = getelementptr inbounds i8, i8* %PublicKeyA, i64 252
  %arraydecay5 = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %PKB, i64 0, i64 2, i64 0
  %arraydecay.i164 = getelementptr inbounds [8 x i64], [8 x i64]* %arraydecay5, i64 0, i64 0
  %arrayidx.i.i165 = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %PKB, i64 0, i64 2, i64 0, i64 7
  store i64 0, i64* %arrayidx.i.i165, align 8, !tbaa !3
  %14 = bitcast [8 x i64]* %arraydecay5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %14, i8* nonnull align 1 %add.ptr3, i64 63, i1 false)
  %add.ptr.i167 = getelementptr inbounds i8, i8* %PublicKeyA, i64 315
  %arraydecay2.i168 = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %PKB, i64 0, i64 2, i64 1, i64 0
  %arrayidx.i7.i169 = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %PKB, i64 0, i64 2, i64 1, i64 7
  store i64 0, i64* %arrayidx.i7.i169, align 8, !tbaa !3
  %15 = bitcast i64* %arraydecay2.i168 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %15, i8* nonnull align 1 %add.ptr.i167, i64 63, i1 false)
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay.i164, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay.i164) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %11) #10
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay2.i168, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @Montgomery_R2, i64 0, i64 0), i64* nonnull %arraydecay.i.i.i.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay2.i168) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %11) #10
  %arraydecay12 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A, i64 0, i64 0
  call void @get_A([8 x i64]* nonnull %arraydecay, [8 x i64]* nonnull %arraydecay2, [8 x i64]* nonnull %arraydecay5, [8 x i64]* nonnull %arraydecay12)
  %arrayidx5.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A24minus, i64 0, i64 0, i64 0
  store i64 2034, i64* %arrayidx5.i, align 16, !tbaa !3
  %arrayidx5.i.1 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A24minus, i64 0, i64 0, i64 1
  %arrayidx5.i.3 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A24minus, i64 0, i64 0, i64 3
  %16 = bitcast i64* %arrayidx5.i.1 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %16, i8 0, i64 16, i1 false)
  %17 = bitcast i64* %arrayidx5.i.3 to <4 x i64>*
  store <4 x i64> <i64 7493989779944505344, i64 -4065003488558602903, i64 -6714520583138351366, i64 1556820015270101636>, <4 x i64>* %17, align 8, !tbaa !3
  %arrayidx5.i.7 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A24minus, i64 0, i64 0, i64 7
  store i64 21945554361561767, i64* %arrayidx5.i.7, align 8, !tbaa !3
  %arraydecay16 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A24minus, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A24plus, i64 0, i64 0
  call fastcc void @mp2_add([8 x i64]* nonnull %arraydecay12, [8 x i64]* nonnull %arraydecay16, [8 x i64]* nonnull %arraydecay17)
  %arraydecay.i172 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A, i64 0, i64 0, i64 0
  call void @mp_sub503_p2(i64* nonnull %arraydecay.i172, i64* nonnull %arrayidx5.i, i64* nonnull %arrayidx5.i) #10
  %arraydecay6.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A, i64 0, i64 1, i64 0
  %arraydecay8.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A24minus, i64 0, i64 1, i64 0
  call void @mp_sub503_p2(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay8.i) #10
  %cmp = icmp eq i32 %sike, 1
  br i1 %cmp, label %if.then, label %if.end28

if.then:                                          ; preds = %entry
  %18 = bitcast [1 x %struct.point_proj]* %P.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %18) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %18, i8 0, i64 256, i1 false) #10
  %19 = bitcast [1 x %struct.point_proj]* %Q.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %19) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %19, i8 0, i64 256, i1 false) #10
  %20 = bitcast [2 x [8 x i64]]* %A2.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %20) #10
  %21 = bitcast [2 x [8 x i64]]* %tmp1.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %21) #10
  %22 = bitcast [2 x [8 x i64]]* %tmp2.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %22) #10
  %arraydecay.i174 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A2.i, i64 0, i64 0
  %arraydecay2.i.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A2.i, i64 0, i64 0, i64 0
  call void @fpdiv2_503(i64* nonnull %arraydecay.i172, i64* nonnull %arraydecay2.i.i) #10
  %arraydecay6.i.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A2.i, i64 0, i64 1, i64 0
  call void @fpdiv2_503(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i.i) #10
  %arraydecay2.i175 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0
  %arraydecay3.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 0, i64 0
  %23 = bitcast [3 x [2 x [8 x i64]]]* %PKB to <4 x i64>*
  %24 = load <4 x i64>, <4 x i64>* %23, align 16, !tbaa !3
  %25 = bitcast [1 x %struct.point_proj]* %P.i to <4 x i64>*
  store <4 x i64> %24, <4 x i64>* %25, align 16, !tbaa !3
  %arrayidx.4.i.i.i = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %PKB, i64 0, i64 0, i64 0, i64 4
  %arrayidx2.4.i.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 0, i64 0, i64 4
  %26 = bitcast i64* %arrayidx.4.i.i.i to <4 x i64>*
  %27 = load <4 x i64>, <4 x i64>* %26, align 16, !tbaa !3
  %28 = bitcast i64* %arrayidx2.4.i.i.i to <4 x i64>*
  store <4 x i64> %27, <4 x i64>* %28, align 16, !tbaa !3
  %arraydecay6.i4.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 0, i64 1, i64 0
  %29 = bitcast i64* %arraydecay2.i to <4 x i64>*
  %30 = load <4 x i64>, <4 x i64>* %29, align 16, !tbaa !3
  %31 = bitcast i64* %arraydecay6.i4.i to <4 x i64>*
  store <4 x i64> %30, <4 x i64>* %31, align 16, !tbaa !3
  %arrayidx.4.i15.i.i = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %PKB, i64 0, i64 0, i64 1, i64 4
  %arrayidx2.4.i16.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 0, i64 1, i64 4
  %32 = bitcast i64* %arrayidx.4.i15.i.i to <4 x i64>*
  %33 = load <4 x i64>, <4 x i64>* %32, align 16, !tbaa !3
  %34 = bitcast i64* %arrayidx2.4.i16.i.i to <4 x i64>*
  store <4 x i64> %33, <4 x i64>* %34, align 16, !tbaa !3
  %Z.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1
  %arraydecay5.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %Z.i, i64 0, i64 0
  %35 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %Z.i, i64 0, i64 0, i64 0
  store i64 1017, i64* %35, align 16, !tbaa !3
  %arrayidx2.1.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.2.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 0, i64 2
  %arrayidx2.3.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 0, i64 3
  %36 = bitcast i64* %arrayidx2.1.i.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %36, i8 0, i64 16, i1 false) #10
  %arrayidx2.4.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 0, i64 4
  %arrayidx2.5.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 0, i64 5
  %arrayidx2.6.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 0, i64 6
  %37 = bitcast i64* %arrayidx2.3.i.i to <4 x i64>*
  store <4 x i64> <i64 -5476377146882523136, i64 7190870292575474356, i64 5866111745285600125, i64 -8444962029219724990>, <4 x i64>* %37, align 8, !tbaa !3
  %arrayidx2.7.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 0, i64 7
  store i64 10972777180780883, i64* %arrayidx2.7.i.i, align 8, !tbaa !3
  %arraydecay8.i176 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0
  %arraydecay10.i177 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 0, i64 0
  %arraydecay.i86.i = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %PKB, i64 0, i64 1, i64 0, i64 0
  %38 = bitcast i64* %arraydecay.i86.i to <4 x i64>*
  %39 = load <4 x i64>, <4 x i64>* %38, align 16, !tbaa !3
  %40 = bitcast [1 x %struct.point_proj]* %Q.i to <4 x i64>*
  store <4 x i64> %39, <4 x i64>* %40, align 16, !tbaa !3
  %arrayidx.4.i.i94.i = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %PKB, i64 0, i64 1, i64 0, i64 4
  %arrayidx2.4.i.i95.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 0, i64 0, i64 4
  %41 = bitcast i64* %arrayidx.4.i.i94.i to <4 x i64>*
  %42 = load <4 x i64>, <4 x i64>* %41, align 16, !tbaa !3
  %43 = bitcast i64* %arrayidx2.4.i.i95.i to <4 x i64>*
  store <4 x i64> %42, <4 x i64>* %43, align 16, !tbaa !3
  %arraydecay6.i103.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 0, i64 1, i64 0
  %44 = bitcast i64* %arraydecay2.i159 to <4 x i64>*
  %45 = load <4 x i64>, <4 x i64>* %44, align 16, !tbaa !3
  %46 = bitcast i64* %arraydecay6.i103.i to <4 x i64>*
  store <4 x i64> %45, <4 x i64>* %46, align 16, !tbaa !3
  %arrayidx.4.i15.i110.i = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %PKB, i64 0, i64 1, i64 1, i64 4
  %arrayidx2.4.i16.i111.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 0, i64 1, i64 4
  %47 = bitcast i64* %arrayidx.4.i15.i110.i to <4 x i64>*
  %48 = load <4 x i64>, <4 x i64>* %47, align 16, !tbaa !3
  %49 = bitcast i64* %arrayidx2.4.i16.i111.i to <4 x i64>*
  store <4 x i64> %48, <4 x i64>* %49, align 16, !tbaa !3
  %Z12.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1
  %arraydecay13.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %Z12.i, i64 0, i64 0
  %50 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %Z12.i, i64 0, i64 0, i64 0
  store i64 1017, i64* %50, align 16, !tbaa !3
  %arrayidx2.1.i118.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 0, i64 1
  %arrayidx2.2.i119.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 0, i64 2
  %arrayidx2.3.i120.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 0, i64 3
  %51 = bitcast i64* %arrayidx2.1.i118.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %51, i8 0, i64 16, i1 false) #10
  %arrayidx2.4.i121.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 0, i64 4
  %arrayidx2.5.i122.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 0, i64 5
  %arrayidx2.6.i123.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 0, i64 6
  %52 = bitcast i64* %arrayidx2.3.i120.i to <4 x i64>*
  store <4 x i64> <i64 -5476377146882523136, i64 7190870292575474356, i64 5866111745285600125, i64 -8444962029219724990>, <4 x i64>* %52, align 8, !tbaa !3
  %arrayidx2.7.i124.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 0, i64 7
  store i64 10972777180780883, i64* %arrayidx2.7.i124.i, align 8, !tbaa !3
  call void @xTPLe_fast(%struct.point_proj* nonnull %arraydecay2.i175, %struct.point_proj* nonnull %arraydecay2.i175, [8 x i64]* nonnull %arraydecay.i174, i32 158) #10
  call void @xTPLe_fast(%struct.point_proj* nonnull %arraydecay8.i176, %struct.point_proj* nonnull %arraydecay8.i176, [8 x i64]* nonnull %arraydecay.i174, i32 158) #10
  call void @fpcorrection503(i64* nonnull %35) #10
  %arraydecay2.i128.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 0
  call void @fpcorrection503(i64* nonnull %arraydecay2.i128.i) #10
  call void @fpcorrection503(i64* nonnull %50) #10
  %arraydecay2.i130.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 0
  call void @fpcorrection503(i64* nonnull %arraydecay2.i130.i) #10
  %53 = load i64, i64* %35, align 16, !tbaa !3
  %54 = load i64, i64* %arrayidx2.1.i.i, align 8
  %55 = or i64 %54, %53
  %56 = load i64, i64* %arrayidx2.2.i.i, align 16
  %57 = or i64 %55, %56
  %58 = load i64, i64* %arrayidx2.3.i.i, align 8
  %59 = or i64 %57, %58
  %60 = load i64, i64* %arrayidx2.4.i.i, align 16
  %61 = or i64 %59, %60
  %62 = load i64, i64* %arrayidx2.5.i.i, align 8
  %63 = or i64 %61, %62
  %64 = load i64, i64* %arrayidx2.6.i.i, align 16
  %65 = or i64 %63, %64
  %66 = load i64, i64* %arrayidx2.7.i.i, align 8
  %67 = or i64 %65, %66
  %68 = load i64, i64* %arraydecay2.i128.i, align 16
  %69 = or i64 %67, %68
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %for.cond.i160.i, label %lor.lhs.false.i

for.cond.i160.i:                                  ; preds = %if.then
  %arrayidx.1.i158.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 1
  %71 = load i64, i64* %arrayidx.1.i158.i, align 8, !tbaa !3
  %cmp1.1.i159.i = icmp eq i64 %71, 0
  br i1 %cmp1.1.i159.i, label %for.cond.1.i164.i, label %lor.lhs.false.i

for.cond.1.i164.i:                                ; preds = %for.cond.i160.i
  %arrayidx.2.i162.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 2
  %72 = load i64, i64* %arrayidx.2.i162.i, align 16, !tbaa !3
  %cmp1.2.i163.i = icmp eq i64 %72, 0
  br i1 %cmp1.2.i163.i, label %for.cond.2.i167.i, label %lor.lhs.false.i

for.cond.2.i167.i:                                ; preds = %for.cond.1.i164.i
  %arrayidx.3.i165.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 3
  %73 = load i64, i64* %arrayidx.3.i165.i, align 8, !tbaa !3
  %cmp1.3.i166.i = icmp eq i64 %73, 0
  br i1 %cmp1.3.i166.i, label %for.cond.3.i170.i, label %lor.lhs.false.i

for.cond.3.i170.i:                                ; preds = %for.cond.2.i167.i
  %arrayidx.4.i168.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 4
  %74 = load i64, i64* %arrayidx.4.i168.i, align 16, !tbaa !3
  %cmp1.4.i169.i = icmp eq i64 %74, 0
  br i1 %cmp1.4.i169.i, label %for.cond.4.i173.i, label %lor.lhs.false.i

for.cond.4.i173.i:                                ; preds = %for.cond.3.i170.i
  %arrayidx.5.i171.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 5
  %75 = load i64, i64* %arrayidx.5.i171.i, align 8, !tbaa !3
  %cmp1.5.i172.i = icmp eq i64 %75, 0
  br i1 %cmp1.5.i172.i, label %for.cond.5.i176.i, label %lor.lhs.false.i

for.cond.5.i176.i:                                ; preds = %for.cond.4.i173.i
  %arrayidx.6.i174.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 6
  %76 = load i64, i64* %arrayidx.6.i174.i, align 16, !tbaa !3
  %cmp1.6.i175.i = icmp eq i64 %76, 0
  br i1 %cmp1.6.i175.i, label %is_felm_zero.exit181.i, label %lor.lhs.false.i

is_felm_zero.exit181.i:                           ; preds = %for.cond.5.i176.i
  %arrayidx.7.i177.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 7
  %77 = load i64, i64* %arrayidx.7.i177.i, align 8, !tbaa !3
  %cmp1.7.i178.i = icmp eq i64 %77, 0
  br i1 %cmp1.7.i178.i, label %cleanup.critedge, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %is_felm_zero.exit181.i, %for.cond.5.i176.i, %for.cond.4.i173.i, %for.cond.3.i170.i, %for.cond.2.i167.i, %for.cond.1.i164.i, %for.cond.i160.i, %if.then
  %78 = load i64, i64* %50, align 16, !tbaa !3
  %79 = load i64, i64* %arrayidx2.1.i118.i, align 8
  %80 = or i64 %79, %78
  %81 = load i64, i64* %arrayidx2.2.i119.i, align 16
  %82 = or i64 %80, %81
  %83 = load i64, i64* %arrayidx2.3.i120.i, align 8
  %84 = or i64 %82, %83
  %85 = load i64, i64* %arrayidx2.4.i121.i, align 16
  %86 = or i64 %84, %85
  %87 = load i64, i64* %arrayidx2.5.i122.i, align 8
  %88 = or i64 %86, %87
  %89 = load i64, i64* %arrayidx2.6.i123.i, align 16
  %90 = or i64 %88, %89
  %91 = load i64, i64* %arrayidx2.7.i124.i, align 8
  %92 = or i64 %90, %91
  %93 = load i64, i64* %arraydecay2.i130.i, align 16
  %94 = or i64 %92, %93
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %for.cond.i212.i, label %if.end.i

for.cond.i212.i:                                  ; preds = %lor.lhs.false.i
  %arrayidx.1.i210.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 1
  %96 = load i64, i64* %arrayidx.1.i210.i, align 8, !tbaa !3
  %cmp1.1.i211.i = icmp eq i64 %96, 0
  br i1 %cmp1.1.i211.i, label %for.cond.1.i216.i, label %if.end.i

for.cond.1.i216.i:                                ; preds = %for.cond.i212.i
  %arrayidx.2.i214.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 2
  %97 = load i64, i64* %arrayidx.2.i214.i, align 16, !tbaa !3
  %cmp1.2.i215.i = icmp eq i64 %97, 0
  br i1 %cmp1.2.i215.i, label %for.cond.2.i219.i, label %if.end.i

for.cond.2.i219.i:                                ; preds = %for.cond.1.i216.i
  %arrayidx.3.i217.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 3
  %98 = load i64, i64* %arrayidx.3.i217.i, align 8, !tbaa !3
  %cmp1.3.i218.i = icmp eq i64 %98, 0
  br i1 %cmp1.3.i218.i, label %for.cond.3.i222.i, label %if.end.i

for.cond.3.i222.i:                                ; preds = %for.cond.2.i219.i
  %arrayidx.4.i220.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 4
  %99 = load i64, i64* %arrayidx.4.i220.i, align 16, !tbaa !3
  %cmp1.4.i221.i = icmp eq i64 %99, 0
  br i1 %cmp1.4.i221.i, label %for.cond.4.i225.i, label %if.end.i

for.cond.4.i225.i:                                ; preds = %for.cond.3.i222.i
  %arrayidx.5.i223.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 5
  %100 = load i64, i64* %arrayidx.5.i223.i, align 8, !tbaa !3
  %cmp1.5.i224.i = icmp eq i64 %100, 0
  br i1 %cmp1.5.i224.i, label %for.cond.5.i228.i, label %if.end.i

for.cond.5.i228.i:                                ; preds = %for.cond.4.i225.i
  %arrayidx.6.i226.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 6
  %101 = load i64, i64* %arrayidx.6.i226.i, align 16, !tbaa !3
  %cmp1.6.i227.i = icmp eq i64 %101, 0
  br i1 %cmp1.6.i227.i, label %is_felm_zero.exit233.i, label %if.end.i

is_felm_zero.exit233.i:                           ; preds = %for.cond.5.i228.i
  %arrayidx.7.i229.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 7
  %102 = load i64, i64* %arrayidx.7.i229.i, align 8, !tbaa !3
  %cmp1.7.i230.i = icmp eq i64 %102, 0
  br i1 %cmp1.7.i230.i, label %cleanup.critedge319, label %if.end.i

if.end.i:                                         ; preds = %is_felm_zero.exit233.i, %for.cond.5.i228.i, %for.cond.4.i225.i, %for.cond.3.i222.i, %for.cond.2.i219.i, %for.cond.1.i216.i, %for.cond.i212.i, %lor.lhs.false.i
  %arraydecay55.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %tmp1.i, i64 0, i64 0
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay3.i, [8 x i64]* nonnull %arraydecay13.i, [8 x i64]* nonnull %arraydecay55.i) #10
  %arraydecay62.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %tmp2.i, i64 0, i64 0
  call void @fp2mul503_mont([8 x i64]* nonnull %arraydecay5.i, [8 x i64]* nonnull %arraydecay10.i177, [8 x i64]* nonnull %arraydecay62.i) #10
  %arraydecay.i235.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %tmp1.i, i64 0, i64 0, i64 0
  call void @fpcorrection503(i64* nonnull %arraydecay.i235.i) #10
  %arraydecay2.i236.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %tmp1.i, i64 0, i64 1, i64 0
  call void @fpcorrection503(i64* nonnull %arraydecay2.i236.i) #10
  %arraydecay.i237.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %tmp2.i, i64 0, i64 0, i64 0
  call void @fpcorrection503(i64* nonnull %arraydecay.i237.i) #10
  %arraydecay2.i238.i = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %tmp2.i, i64 0, i64 1, i64 0
  call void @fpcorrection503(i64* nonnull %arraydecay2.i238.i) #10
  %call67.i = call i32 @memcmp(i8* nonnull %21, i8* nonnull %22, i64 126) #10
  %cmp.i = icmp eq i32 %call67.i, 0
  br i1 %cmp.i, label %cleanup.critedge320, label %if.end69.i

if.end69.i:                                       ; preds = %if.end.i
  call void @xTPL_fast(%struct.point_proj* nonnull %arraydecay2.i175, %struct.point_proj* nonnull %arraydecay2.i175, [8 x i64]* nonnull %arraydecay.i174) #10
  call void @xTPL_fast(%struct.point_proj* nonnull %arraydecay8.i176, %struct.point_proj* nonnull %arraydecay8.i176, [8 x i64]* nonnull %arraydecay.i174) #10
  call void @fpcorrection503(i64* nonnull %35) #10
  call void @fpcorrection503(i64* nonnull %arraydecay2.i128.i) #10
  call void @fpcorrection503(i64* nonnull %50) #10
  call void @fpcorrection503(i64* nonnull %arraydecay2.i130.i) #10
  %103 = load i64, i64* %35, align 16, !tbaa !3
  %104 = load i64, i64* %arrayidx2.1.i.i, align 8
  %105 = or i64 %104, %103
  %106 = load i64, i64* %arrayidx2.2.i.i, align 16
  %107 = or i64 %105, %106
  %108 = load i64, i64* %arrayidx2.3.i.i, align 8
  %109 = or i64 %107, %108
  %110 = load i64, i64* %arrayidx2.4.i.i, align 16
  %111 = or i64 %109, %110
  %112 = load i64, i64* %arrayidx2.5.i.i, align 8
  %113 = or i64 %111, %112
  %114 = load i64, i64* %arrayidx2.6.i.i, align 16
  %115 = or i64 %113, %114
  %116 = load i64, i64* %arrayidx2.7.i.i, align 8
  %117 = or i64 %115, %116
  %118 = load i64, i64* %arraydecay2.i128.i, align 16
  %119 = or i64 %117, %118
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %for.cond.i35.i, label %publickey_validation.exit

for.cond.i35.i:                                   ; preds = %if.end69.i
  %arrayidx.1.i33.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 1
  %121 = load i64, i64* %arrayidx.1.i33.i, align 8, !tbaa !3
  %cmp1.1.i34.i = icmp eq i64 %121, 0
  br i1 %cmp1.1.i34.i, label %for.cond.1.i39.i, label %publickey_validation.exit

for.cond.1.i39.i:                                 ; preds = %for.cond.i35.i
  %arrayidx.2.i37.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 2
  %122 = load i64, i64* %arrayidx.2.i37.i, align 16, !tbaa !3
  %cmp1.2.i38.i = icmp eq i64 %122, 0
  br i1 %cmp1.2.i38.i, label %for.cond.2.i42.i, label %publickey_validation.exit

for.cond.2.i42.i:                                 ; preds = %for.cond.1.i39.i
  %arrayidx.3.i40.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 3
  %123 = load i64, i64* %arrayidx.3.i40.i, align 8, !tbaa !3
  %cmp1.3.i41.i = icmp eq i64 %123, 0
  br i1 %cmp1.3.i41.i, label %for.cond.3.i45.i, label %publickey_validation.exit

for.cond.3.i45.i:                                 ; preds = %for.cond.2.i42.i
  %arrayidx.4.i43.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 4
  %124 = load i64, i64* %arrayidx.4.i43.i, align 16, !tbaa !3
  %cmp1.4.i44.i = icmp eq i64 %124, 0
  br i1 %cmp1.4.i44.i, label %for.cond.4.i48.i, label %publickey_validation.exit

for.cond.4.i48.i:                                 ; preds = %for.cond.3.i45.i
  %arrayidx.5.i46.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 5
  %125 = load i64, i64* %arrayidx.5.i46.i, align 8, !tbaa !3
  %cmp1.5.i47.i = icmp eq i64 %125, 0
  br i1 %cmp1.5.i47.i, label %for.cond.5.i51.i, label %publickey_validation.exit

for.cond.5.i51.i:                                 ; preds = %for.cond.4.i48.i
  %arrayidx.6.i49.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 6
  %126 = load i64, i64* %arrayidx.6.i49.i, align 16, !tbaa !3
  %cmp1.6.i50.i = icmp eq i64 %126, 0
  br i1 %cmp1.6.i50.i, label %is_felm_zero.exit56.i, label %publickey_validation.exit

is_felm_zero.exit56.i:                            ; preds = %for.cond.5.i51.i
  %arrayidx.7.i52.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %P.i, i64 0, i64 0, i32 1, i64 1, i64 7
  %127 = load i64, i64* %arrayidx.7.i52.i, align 8, !tbaa !3
  %128 = load i64, i64* %50, align 16
  %129 = or i64 %128, %127
  %130 = load i64, i64* %arrayidx2.1.i118.i, align 8
  %131 = or i64 %129, %130
  %132 = load i64, i64* %arrayidx2.2.i119.i, align 16
  %133 = or i64 %131, %132
  %134 = load i64, i64* %arrayidx2.3.i120.i, align 8
  %135 = or i64 %133, %134
  %136 = load i64, i64* %arrayidx2.4.i121.i, align 16
  %137 = or i64 %135, %136
  %138 = load i64, i64* %arrayidx2.5.i122.i, align 8
  %139 = or i64 %137, %138
  %140 = load i64, i64* %arrayidx2.6.i123.i, align 16
  %141 = or i64 %139, %140
  %142 = load i64, i64* %arrayidx2.7.i124.i, align 8
  %143 = or i64 %141, %142
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %lor.lhs.false102.i, label %cleanup.critedge321

lor.lhs.false102.i:                               ; preds = %is_felm_zero.exit56.i
  %145 = load i64, i64* %arraydecay2.i130.i, align 16, !tbaa !3
  %cmp1.i.i = icmp eq i64 %145, 0
  br i1 %cmp1.i.i, label %for.cond.i.i, label %is_felm_zero.exit.thread.i

for.cond.i.i:                                     ; preds = %lor.lhs.false102.i
  %arrayidx.1.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 1
  %146 = load i64, i64* %arrayidx.1.i.i, align 8, !tbaa !3
  %cmp1.1.i.i = icmp eq i64 %146, 0
  br i1 %cmp1.1.i.i, label %for.cond.1.i.i, label %is_felm_zero.exit.thread.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %arrayidx.2.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 2
  %147 = load i64, i64* %arrayidx.2.i.i, align 16, !tbaa !3
  %cmp1.2.i.i = icmp eq i64 %147, 0
  br i1 %cmp1.2.i.i, label %for.cond.2.i.i, label %is_felm_zero.exit.thread.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %arrayidx.3.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 3
  %148 = load i64, i64* %arrayidx.3.i.i, align 8, !tbaa !3
  %cmp1.3.i.i = icmp eq i64 %148, 0
  br i1 %cmp1.3.i.i, label %for.cond.3.i.i, label %is_felm_zero.exit.thread.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  %arrayidx.4.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 4
  %149 = load i64, i64* %arrayidx.4.i.i, align 16, !tbaa !3
  %cmp1.4.i.i = icmp eq i64 %149, 0
  br i1 %cmp1.4.i.i, label %for.cond.4.i.i, label %is_felm_zero.exit.thread.i

for.cond.4.i.i:                                   ; preds = %for.cond.3.i.i
  %arrayidx.5.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 5
  %150 = load i64, i64* %arrayidx.5.i.i, align 8, !tbaa !3
  %cmp1.5.i.i = icmp eq i64 %150, 0
  br i1 %cmp1.5.i.i, label %for.cond.5.i.i, label %is_felm_zero.exit.thread.i

for.cond.5.i.i:                                   ; preds = %for.cond.4.i.i
  %arrayidx.6.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 6
  %151 = load i64, i64* %arrayidx.6.i.i, align 16, !tbaa !3
  %cmp1.6.i.i = icmp eq i64 %151, 0
  br i1 %cmp1.6.i.i, label %is_felm_zero.exit.i, label %is_felm_zero.exit.thread.i

is_felm_zero.exit.i:                              ; preds = %for.cond.5.i.i
  %arrayidx.7.i.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %Q.i, i64 0, i64 0, i32 1, i64 1, i64 7
  %152 = load i64, i64* %arrayidx.7.i.i, align 8, !tbaa !3
  %cmp1.7.i.i = icmp eq i64 %152, 0
  br i1 %cmp1.7.i.i, label %if.end28.critedge, label %is_felm_zero.exit.thread.i

is_felm_zero.exit.thread.i:                       ; preds = %is_felm_zero.exit.i, %for.cond.5.i.i, %for.cond.4.i.i, %for.cond.3.i.i, %for.cond.2.i.i, %for.cond.1.i.i, %for.cond.i.i, %lor.lhs.false102.i
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %22) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %21) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %20) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %19) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %18) #10
  br label %cleanup

publickey_validation.exit:                        ; preds = %if.end69.i, %for.cond.i35.i, %for.cond.1.i39.i, %for.cond.2.i42.i, %for.cond.3.i45.i, %for.cond.4.i48.i, %for.cond.5.i51.i
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %22) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %21) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %20) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %19) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %18) #10
  br label %cleanup

if.end28.critedge:                                ; preds = %is_felm_zero.exit.i
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %22) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %21) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %20) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %19) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %18) #10
  br label %if.end28

if.end28:                                         ; preds = %if.end28.critedge, %entry
  %arraydecay29 = getelementptr inbounds [4 x i64], [4 x i64]* %SecretKeyB, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %9, i8* align 1 %PrivateKeyB, i64 32, i1 false)
  %arraydecay37 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0
  call fastcc void @LADDER3PT([8 x i64]* nonnull %arraydecay, [8 x i64]* nonnull %arraydecay2, [8 x i64]* nonnull %arraydecay5, i64* nonnull %arraydecay29, i32 1, %struct.point_proj* nonnull %arraydecay37, [8 x i64]* nonnull %arraydecay12)
  %arraydecay66 = getelementptr inbounds [3 x [2 x [8 x i64]]], [3 x [2 x [8 x i64]]]* %coeff, i64 0, i64 0
  %arrayidx.4.i.i187 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 0, i64 4
  %arraydecay4.i195 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 1, i64 0
  %arrayidx.4.i15.i = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 0, i64 1, i64 4
  %arraydecay.i197 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 0, i64 0
  %arrayidx.4.i.i205 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 0, i64 4
  %arraydecay4.i213 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 1, i64 0
  %arrayidx.4.i15.i221 = getelementptr inbounds [1 x %struct.point_proj], [1 x %struct.point_proj]* %R, i64 0, i64 0, i32 1, i64 1, i64 4
  %153 = bitcast [1 x %struct.point_proj]* %R to <4 x i64>*
  %154 = bitcast i64* %arrayidx.4.i.i187 to <4 x i64>*
  %155 = bitcast i64* %arraydecay4.i195 to <4 x i64>*
  %156 = bitcast i64* %arrayidx.4.i15.i to <4 x i64>*
  %157 = bitcast i64* %arraydecay.i197 to <4 x i64>*
  %158 = bitcast i64* %arrayidx.4.i.i205 to <4 x i64>*
  %159 = bitcast i64* %arraydecay4.i213 to <4 x i64>*
  %160 = bitcast i64* %arrayidx.4.i15.i221 to <4 x i64>*
  %161 = bitcast [1 x %struct.point_proj]* %R to <4 x i64>*
  %162 = bitcast i64* %arrayidx.4.i.i187 to <4 x i64>*
  %163 = bitcast i64* %arraydecay4.i195 to <4 x i64>*
  %164 = bitcast i64* %arrayidx.4.i15.i to <4 x i64>*
  %165 = bitcast i64* %arraydecay.i197 to <4 x i64>*
  %166 = bitcast i64* %arrayidx.4.i.i205 to <4 x i64>*
  %167 = bitcast i64* %arraydecay4.i213 to <4 x i64>*
  %168 = bitcast i64* %arrayidx.4.i15.i221 to <4 x i64>*
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.end, %if.end28
  %ii.0333 = phi i32 [ 0, %if.end28 ], [ %ii.1.lcssa, %for.end ]
  %npts.0332 = phi i32 [ 0, %if.end28 ], [ %sub75, %for.end ]
  %index.0331 = phi i32 [ 0, %if.end28 ], [ %202, %for.end ]
  %row.0330 = phi i32 [ 1, %if.end28 ], [ %inc98, %for.end ]
  %sub = sub nuw nsw i32 159, %row.0330
  %cmp40323 = icmp ult i32 %index.0331, %sub
  br i1 %cmp40323, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %ii.1326 = phi i32 [ %inc56, %while.body ], [ %ii.0333, %while.cond.preheader ]
  %npts.1325 = phi i32 [ %inc, %while.body ], [ %npts.0332, %while.cond.preheader ]
  %index.1324 = phi i32 [ %add, %while.body ], [ %index.0331, %while.cond.preheader ]
  %idxprom = zext i32 %npts.1325 to i64
  %arraydecay2.i180 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 0, i64 0
  %169 = load <4 x i64>, <4 x i64>* %153, align 16, !tbaa !3
  %170 = bitcast i64* %arraydecay2.i180 to <4 x i64>*
  store <4 x i64> %169, <4 x i64>* %170, align 16, !tbaa !3
  %arrayidx2.4.i.i188 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 0, i64 4
  %171 = load <4 x i64>, <4 x i64>* %154, align 16, !tbaa !3
  %172 = bitcast i64* %arrayidx2.4.i.i188 to <4 x i64>*
  store <4 x i64> %171, <4 x i64>* %172, align 16, !tbaa !3
  %arraydecay6.i196 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 1, i64 0
  %173 = load <4 x i64>, <4 x i64>* %155, align 16, !tbaa !3
  %174 = bitcast i64* %arraydecay6.i196 to <4 x i64>*
  store <4 x i64> %173, <4 x i64>* %174, align 16, !tbaa !3
  %arrayidx2.4.i16.i = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 0, i64 1, i64 4
  %175 = load <4 x i64>, <4 x i64>* %156, align 16, !tbaa !3
  %176 = bitcast i64* %arrayidx2.4.i16.i to <4 x i64>*
  store <4 x i64> %175, <4 x i64>* %176, align 16, !tbaa !3
  %arraydecay2.i198 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 0, i64 0
  %177 = load <4 x i64>, <4 x i64>* %157, align 16, !tbaa !3
  %178 = bitcast i64* %arraydecay2.i198 to <4 x i64>*
  store <4 x i64> %177, <4 x i64>* %178, align 16, !tbaa !3
  %arrayidx2.4.i.i206 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 0, i64 4
  %179 = load <4 x i64>, <4 x i64>* %158, align 16, !tbaa !3
  %180 = bitcast i64* %arrayidx2.4.i.i206 to <4 x i64>*
  store <4 x i64> %179, <4 x i64>* %180, align 16, !tbaa !3
  %arraydecay6.i214 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 1, i64 0
  %181 = load <4 x i64>, <4 x i64>* %159, align 16, !tbaa !3
  %182 = bitcast i64* %arraydecay6.i214 to <4 x i64>*
  store <4 x i64> %181, <4 x i64>* %182, align 16, !tbaa !3
  %arrayidx2.4.i16.i222 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom, i64 0, i32 1, i64 1, i64 4
  %183 = load <4 x i64>, <4 x i64>* %160, align 16, !tbaa !3
  %184 = bitcast i64* %arrayidx2.4.i16.i222 to <4 x i64>*
  store <4 x i64> %183, <4 x i64>* %184, align 16, !tbaa !3
  %inc = add i32 %npts.1325, 1
  %arrayidx55 = getelementptr inbounds [8 x i32], [8 x i32]* %pts_index, i64 0, i64 %idxprom
  store i32 %index.1324, i32* %arrayidx55, align 4, !tbaa !59
  %inc56 = add i32 %ii.1326, 1
  %idxprom57 = zext i32 %ii.1326 to i64
  %arrayidx58 = getelementptr inbounds [158 x i32], [158 x i32]* @strat_Bob, i64 0, i64 %idxprom57
  %185 = load i32, i32* %arrayidx58, align 4, !tbaa !59
  call void @xTPLe(%struct.point_proj* nonnull %arraydecay37, %struct.point_proj* nonnull %arraydecay37, [8 x i64]* nonnull %arraydecay16, [8 x i64]* nonnull %arraydecay17, i32 %185)
  %add = add i32 %185, %index.1324
  %cmp40 = icmp ult i32 %add, %sub
  br i1 %cmp40, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %npts.1.lcssa = phi i32 [ %npts.0332, %while.cond.preheader ], [ %inc, %while.body ]
  %ii.1.lcssa = phi i32 [ %ii.0333, %while.cond.preheader ], [ %inc56, %while.body ]
  call void @get_3_isog(%struct.point_proj* nonnull %arraydecay37, [8 x i64]* nonnull %arraydecay16, [8 x i64]* nonnull %arraydecay17, [2 x [8 x i64]]* nonnull %arraydecay66)
  %cmp68328 = icmp eq i32 %npts.1.lcssa, 0
  br i1 %cmp68328, label %for.end, label %for.body69.preheader

for.body69.preheader:                             ; preds = %while.end
  %wide.trip.count = zext i32 %npts.1.lcssa to i64
  br label %for.body69

for.body69:                                       ; preds = %for.body69, %for.body69.preheader
  %indvars.iv = phi i64 [ 0, %for.body69.preheader ], [ %indvars.iv.next, %for.body69 ]
  %arraydecay72 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %indvars.iv, i64 0
  call void @eval_3_isog(%struct.point_proj* nonnull %arraydecay72, [2 x [8 x i64]]* nonnull %arraydecay66)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.end, label %for.body69

for.end:                                          ; preds = %for.body69, %while.end
  %sub75 = add i32 %npts.1.lcssa, -1
  %idxprom76 = zext i32 %sub75 to i64
  %arraydecay.i229 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom76, i64 0, i32 0, i64 0, i64 0
  %186 = bitcast i64* %arraydecay.i229 to <4 x i64>*
  %187 = load <4 x i64>, <4 x i64>* %186, align 16, !tbaa !3
  store <4 x i64> %187, <4 x i64>* %161, align 16, !tbaa !3
  %arrayidx.4.i.i237 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom76, i64 0, i32 0, i64 0, i64 4
  %188 = bitcast i64* %arrayidx.4.i.i237 to <4 x i64>*
  %189 = load <4 x i64>, <4 x i64>* %188, align 16, !tbaa !3
  store <4 x i64> %189, <4 x i64>* %162, align 16, !tbaa !3
  %arraydecay4.i245 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom76, i64 0, i32 0, i64 1, i64 0
  %190 = bitcast i64* %arraydecay4.i245 to <4 x i64>*
  %191 = load <4 x i64>, <4 x i64>* %190, align 16, !tbaa !3
  store <4 x i64> %191, <4 x i64>* %163, align 16, !tbaa !3
  %arrayidx.4.i15.i253 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom76, i64 0, i32 0, i64 1, i64 4
  %192 = bitcast i64* %arrayidx.4.i15.i253 to <4 x i64>*
  %193 = load <4 x i64>, <4 x i64>* %192, align 16, !tbaa !3
  store <4 x i64> %193, <4 x i64>* %164, align 16, !tbaa !3
  %arraydecay.i261 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom76, i64 0, i32 1, i64 0, i64 0
  %194 = bitcast i64* %arraydecay.i261 to <4 x i64>*
  %195 = load <4 x i64>, <4 x i64>* %194, align 16, !tbaa !3
  store <4 x i64> %195, <4 x i64>* %165, align 16, !tbaa !3
  %arrayidx.4.i.i269 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom76, i64 0, i32 1, i64 0, i64 4
  %196 = bitcast i64* %arrayidx.4.i.i269 to <4 x i64>*
  %197 = load <4 x i64>, <4 x i64>* %196, align 16, !tbaa !3
  store <4 x i64> %197, <4 x i64>* %166, align 16, !tbaa !3
  %arraydecay4.i277 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom76, i64 0, i32 1, i64 1, i64 0
  %198 = bitcast i64* %arraydecay4.i277 to <4 x i64>*
  %199 = load <4 x i64>, <4 x i64>* %198, align 16, !tbaa !3
  store <4 x i64> %199, <4 x i64>* %167, align 16, !tbaa !3
  %arrayidx.4.i15.i285 = getelementptr inbounds [8 x [1 x %struct.point_proj]], [8 x [1 x %struct.point_proj]]* %pts, i64 0, i64 %idxprom76, i64 0, i32 1, i64 1, i64 4
  %200 = bitcast i64* %arrayidx.4.i15.i285 to <4 x i64>*
  %201 = load <4 x i64>, <4 x i64>* %200, align 16, !tbaa !3
  store <4 x i64> %201, <4 x i64>* %168, align 16, !tbaa !3
  %arrayidx95 = getelementptr inbounds [8 x i32], [8 x i32]* %pts_index, i64 0, i64 %idxprom76
  %202 = load i32, i32* %arrayidx95, align 4, !tbaa !59
  %inc98 = add nuw nsw i32 %row.0330, 1
  %exitcond334 = icmp eq i32 %inc98, 159
  br i1 %exitcond334, label %for.end99, label %while.cond.preheader

for.end99:                                        ; preds = %for.end
  call void @get_3_isog(%struct.point_proj* nonnull %arraydecay37, [8 x i64]* nonnull %arraydecay16, [8 x i64]* nonnull %arraydecay17, [2 x [8 x i64]]* nonnull %arraydecay66)
  %arraydecay.i293 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A24plus, i64 0, i64 0, i64 0
  call void @fpadd503(i64* nonnull %arraydecay.i293, i64* nonnull %arrayidx5.i, i64* nonnull %arraydecay.i172) #10
  %arraydecay6.i296 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A24plus, i64 0, i64 1, i64 0
  call void @fpadd503(i64* nonnull %arraydecay6.i296, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay6.i) #10
  call void @fpadd503(i64* nonnull %arraydecay.i172, i64* nonnull %arraydecay.i172, i64* nonnull %arraydecay.i172) #10
  call void @fpadd503(i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i, i64* nonnull %arraydecay6.i) #10
  call void @fpsub503(i64* nonnull %arraydecay.i293, i64* nonnull %arrayidx5.i, i64* nonnull %arraydecay.i293) #10
  call void @fpsub503(i64* nonnull %arraydecay6.i296, i64* nonnull %arraydecay8.i, i64* nonnull %arraydecay6.i296) #10
  %arraydecay115 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %jinv, i64 0, i64 0
  call void @j_inv([8 x i64]* nonnull %arraydecay12, [8 x i64]* nonnull %arraydecay17, [8 x i64]* nonnull %arraydecay115)
  %203 = bitcast [2 x [8 x i64]]* %A2.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %203) #10
  %arraydecay.i.i312 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %jinv, i64 0, i64 0, i64 0
  %arraydecay2.i.i313 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A2.i, i64 0, i64 0, i64 0
  %204 = bitcast [8 x i64]* %one.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %204) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %204, i8 0, i64 64, i1 false) #10
  %arrayidx.i.i.i = getelementptr inbounds [8 x i64], [8 x i64]* %one.i.i.i, i64 0, i64 0
  store i64 1, i64* %arrayidx.i.i.i, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay.i.i312, i64* nonnull %arrayidx.i.i.i, i64* nonnull %arraydecay.i.i.i.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay2.i.i313) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %11) #10
  call void @fpcorrection503(i64* nonnull %arraydecay2.i.i313) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %204) #10
  %arraydecay4.i.i315 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %jinv, i64 0, i64 1, i64 0
  %arraydecay6.i.i316 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %A2.i, i64 0, i64 1, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %204) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %204, i8 0, i64 64, i1 false) #10
  store i64 1, i64* %arrayidx.i.i.i, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %11) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 128, i1 false) #10
  call void @mp_mul(i64* nonnull %arraydecay4.i.i315, i64* nonnull %arrayidx.i.i.i, i64* nonnull %arraydecay.i.i.i.i, i32 8) #10
  call void @rdc_mont(i64* nonnull %arraydecay.i.i.i.i, i64* nonnull %arraydecay6.i.i316) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %11) #10
  call void @fpcorrection503(i64* nonnull %arraydecay6.i.i316) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %204) #10
  %205 = call i64 @llvm.objectsize.i64.p0i8(i8* %SharedSecretB, i1 false, i1 true) #10
  %call.i.i317 = call i8* @__memcpy_chk(i8* %SharedSecretB, i8* nonnull %203, i64 63, i64 %205) #10
  %add.ptr.i318 = getelementptr inbounds i8, i8* %SharedSecretB, i64 63
  %206 = bitcast i64* %arraydecay6.i.i316 to i8*
  %207 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %add.ptr.i318, i1 false, i1 true) #10
  %call.i5.i = call i8* @__memcpy_chk(i8* nonnull %add.ptr.i318, i8* nonnull %206, i64 63, i64 %207) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %203) #10
  br label %cleanup

cleanup.critedge:                                 ; preds = %is_felm_zero.exit181.i
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %22) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %21) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %20) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %19) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %18) #10
  br label %cleanup

cleanup.critedge319:                              ; preds = %is_felm_zero.exit233.i
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %22) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %21) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %20) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %19) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %18) #10
  br label %cleanup

cleanup.critedge320:                              ; preds = %if.end.i
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %22) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %21) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %20) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %19) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %18) #10
  br label %cleanup

cleanup.critedge321:                              ; preds = %is_felm_zero.exit56.i
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %22) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %21) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %20) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %19) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %18) #10
  br label %cleanup

cleanup:                                          ; preds = %publickey_validation.exit, %is_felm_zero.exit.thread.i, %cleanup.critedge321, %cleanup.critedge320, %cleanup.critedge319, %cleanup.critedge, %for.end99
  %retval.0 = phi i32 [ 0, %for.end99 ], [ 1, %publickey_validation.exit ], [ 1, %cleanup.critedge ], [ 1, %cleanup.critedge319 ], [ 1, %cleanup.critedge320 ], [ 1, %cleanup.critedge321 ], [ 1, %is_felm_zero.exit.thread.i ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind ssp uwtable
define i32 @EphemeralSecretAgreement_B_SIDHp503(i8* %PrivateKeyB, i8* %PublicKeyA, i8* %SharedSecretB) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @EphemeralSecretAgreement_B_extended(i8* %PrivateKeyB, i8* %PublicKeyA, i8* %SharedSecretB, i32 0)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @crypto_kem_keypair_SIKEp503(i8* %pk, i8* %sk) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @randombytes(i8* %sk, i64 24) #10
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %sk, i64 24
  %call.i = tail call i32 @randombytes(i8* nonnull %add.ptr, i64 32) #10
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx.i = getelementptr inbounds i8, i8* %sk, i64 55
  %0 = load i8, i8* %arrayidx.i, align 1, !tbaa !7
  %1 = and i8 %0, 15
  store i8 %1, i8* %arrayidx.i, align 1, !tbaa !7
  %call4 = tail call i32 @EphemeralKeyGeneration_B_SIDHp503(i8* nonnull %add.ptr, i8* %pk)
  %arrayidx = getelementptr inbounds i8, i8* %sk, i64 56
  %2 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %arrayidx, i1 false, i1 true)
  %call6 = tail call i8* @__memcpy_chk(i8* nonnull %arrayidx, i8* %pk, i64 378, i64 %2) #10
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
define i32 @crypto_kem_enc_SIKEp503(i8* %ct, i8* %ss, i8* %pk) local_unnamed_addr #4 {
entry:
  %ephemeralsk = alloca [32 x i8], align 16
  %jinvariant = alloca [126 x i8], align 16
  %h = alloca [24 x i8], align 16
  %temp = alloca [426 x i8], align 16
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %ephemeralsk, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #10
  %1 = getelementptr inbounds [126 x i8], [126 x i8]* %jinvariant, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 126, i8* nonnull %1) #10
  %2 = getelementptr inbounds [24 x i8], [24 x i8]* %h, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #10
  %3 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 426, i8* nonnull %3) #10
  %call = call i32 @randombytes(i8* nonnull %3, i64 24) #10
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 24
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %arrayidx, i8* align 1 %pk, i64 378, i1 false)
  call void @shake256(i8* nonnull %0, i64 32, i8* nonnull %3, i64 402) #10
  %arrayidx3 = getelementptr inbounds [32 x i8], [32 x i8]* %ephemeralsk, i64 0, i64 31
  %4 = load i8, i8* %arrayidx3, align 1, !tbaa !7
  %5 = and i8 %4, 3
  store i8 %5, i8* %arrayidx3, align 1, !tbaa !7
  %call6 = call i32 @EphemeralKeyGeneration_A_SIDHp503(i8* nonnull %0, i8* %ct)
  %call9 = call i32 @EphemeralSecretAgreement_A_SIDHp503(i8* nonnull %0, i8* %pk, i8* nonnull %1)
  call void @shake256(i8* nonnull %2, i64 24, i8* nonnull %1, i64 126) #10
  %arrayidx21 = getelementptr inbounds i8, i8* %ct, i64 378
  %6 = bitcast [426 x i8]* %temp to <16 x i8>*
  %7 = load <16 x i8>, <16 x i8>* %6, align 16, !tbaa !7
  %8 = bitcast [24 x i8]* %h to <16 x i8>*
  %9 = load <16 x i8>, <16 x i8>* %8, align 16, !tbaa !7
  %10 = xor <16 x i8> %9, %7
  %11 = bitcast i8* %arrayidx21 to <16 x i8>*
  store <16 x i8> %10, <16 x i8>* %11, align 1, !tbaa !7
  %arrayidx14.16 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 16
  %12 = load i8, i8* %arrayidx14.16, align 16, !tbaa !7
  %arrayidx17.16 = getelementptr inbounds [24 x i8], [24 x i8]* %h, i64 0, i64 16
  %13 = load i8, i8* %arrayidx17.16, align 16, !tbaa !7
  %xor35.16 = xor i8 %13, %12
  %arrayidx21.16 = getelementptr inbounds i8, i8* %ct, i64 394
  store i8 %xor35.16, i8* %arrayidx21.16, align 1, !tbaa !7
  %arrayidx14.17 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 17
  %14 = load i8, i8* %arrayidx14.17, align 1, !tbaa !7
  %arrayidx17.17 = getelementptr inbounds [24 x i8], [24 x i8]* %h, i64 0, i64 17
  %15 = load i8, i8* %arrayidx17.17, align 1, !tbaa !7
  %xor35.17 = xor i8 %15, %14
  %arrayidx21.17 = getelementptr inbounds i8, i8* %ct, i64 395
  store i8 %xor35.17, i8* %arrayidx21.17, align 1, !tbaa !7
  %arrayidx14.18 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 18
  %16 = load i8, i8* %arrayidx14.18, align 2, !tbaa !7
  %arrayidx17.18 = getelementptr inbounds [24 x i8], [24 x i8]* %h, i64 0, i64 18
  %17 = load i8, i8* %arrayidx17.18, align 2, !tbaa !7
  %xor35.18 = xor i8 %17, %16
  %arrayidx21.18 = getelementptr inbounds i8, i8* %ct, i64 396
  store i8 %xor35.18, i8* %arrayidx21.18, align 1, !tbaa !7
  %arrayidx14.19 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 19
  %18 = load i8, i8* %arrayidx14.19, align 1, !tbaa !7
  %arrayidx17.19 = getelementptr inbounds [24 x i8], [24 x i8]* %h, i64 0, i64 19
  %19 = load i8, i8* %arrayidx17.19, align 1, !tbaa !7
  %xor35.19 = xor i8 %19, %18
  %arrayidx21.19 = getelementptr inbounds i8, i8* %ct, i64 397
  store i8 %xor35.19, i8* %arrayidx21.19, align 1, !tbaa !7
  %arrayidx14.20 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 20
  %20 = load i8, i8* %arrayidx14.20, align 4, !tbaa !7
  %arrayidx17.20 = getelementptr inbounds [24 x i8], [24 x i8]* %h, i64 0, i64 20
  %21 = load i8, i8* %arrayidx17.20, align 4, !tbaa !7
  %xor35.20 = xor i8 %21, %20
  %arrayidx21.20 = getelementptr inbounds i8, i8* %ct, i64 398
  store i8 %xor35.20, i8* %arrayidx21.20, align 1, !tbaa !7
  %arrayidx14.21 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 21
  %22 = load i8, i8* %arrayidx14.21, align 1, !tbaa !7
  %arrayidx17.21 = getelementptr inbounds [24 x i8], [24 x i8]* %h, i64 0, i64 21
  %23 = load i8, i8* %arrayidx17.21, align 1, !tbaa !7
  %xor35.21 = xor i8 %23, %22
  %arrayidx21.21 = getelementptr inbounds i8, i8* %ct, i64 399
  store i8 %xor35.21, i8* %arrayidx21.21, align 1, !tbaa !7
  %arrayidx14.22 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 22
  %24 = load i8, i8* %arrayidx14.22, align 2, !tbaa !7
  %arrayidx17.22 = getelementptr inbounds [24 x i8], [24 x i8]* %h, i64 0, i64 22
  %25 = load i8, i8* %arrayidx17.22, align 2, !tbaa !7
  %xor35.22 = xor i8 %25, %24
  %arrayidx21.22 = getelementptr inbounds i8, i8* %ct, i64 400
  store i8 %xor35.22, i8* %arrayidx21.22, align 1, !tbaa !7
  %arrayidx14.23 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 23
  %26 = load i8, i8* %arrayidx14.23, align 1, !tbaa !7
  %arrayidx17.23 = getelementptr inbounds [24 x i8], [24 x i8]* %h, i64 0, i64 23
  %27 = load i8, i8* %arrayidx17.23, align 1, !tbaa !7
  %xor35.23 = xor i8 %27, %26
  %arrayidx21.23 = getelementptr inbounds i8, i8* %ct, i64 401
  store i8 %xor35.23, i8* %arrayidx21.23, align 1, !tbaa !7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %arrayidx, i8* align 1 %ct, i64 402, i1 false)
  call void @shake256(i8* %ss, i64 24, i8* nonnull %3, i64 426) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 426, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 126, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

declare void @shake256(i8*, i64, i8*, i64) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define i32 @crypto_kem_dec_SIKEp503(i8* %ss, i8* %ct, i8* %sk) local_unnamed_addr #4 {
entry:
  %ephemeralsk_ = alloca [32 x i8], align 16
  %jinvariant_ = alloca [126 x i8], align 16
  %h_ = alloca [24 x i8], align 16
  %c0_ = alloca [378 x i8], align 16
  %temp = alloca [426 x i8], align 16
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %ephemeralsk_, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #10
  %1 = getelementptr inbounds [126 x i8], [126 x i8]* %jinvariant_, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 126, i8* nonnull %1) #10
  %2 = getelementptr inbounds [24 x i8], [24 x i8]* %h_, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #10
  %3 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 378, i8* nonnull %3) #10
  %4 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 426, i8* nonnull %4) #10
  %add.ptr = getelementptr inbounds i8, i8* %sk, i64 24
  %call = call i32 @EphemeralSecretAgreement_B_extended(i8* nonnull %add.ptr, i8* %ct, i8* nonnull %1, i32 1)
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %entry.Hashing_crit_edge

entry.Hashing_crit_edge:                          ; preds = %entry
  %.pre = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 1
  %.pre43 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 2
  %.pre44 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 3
  %.pre45 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 4
  %.pre46 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 5
  %.pre47 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 6
  %.pre48 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 7
  %.pre49 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 8
  %.pre50 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 9
  %.pre51 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 10
  %.pre52 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 11
  %.pre53 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 12
  %.pre54 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 13
  %.pre55 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 14
  %.pre56 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 15
  %.pre57 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 16
  %.pre58 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 17
  %.pre59 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 18
  %.pre60 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 19
  %.pre61 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 20
  %.pre62 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 21
  %.pre63 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 22
  %.pre64 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 23
  %.pre65 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 24
  br label %Hashing

if.end:                                           ; preds = %entry
  call void @shake256(i8* nonnull %2, i64 24, i8* nonnull %1, i64 126) #10
  %arrayidx = getelementptr inbounds i8, i8* %ct, i64 378
  %arrayidx9.1 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 1
  %arrayidx9.2 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 2
  %arrayidx9.3 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 3
  %arrayidx9.4 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 4
  %arrayidx9.5 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 5
  %arrayidx9.6 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 6
  %arrayidx9.7 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 7
  %arrayidx9.8 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 8
  %arrayidx9.9 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 9
  %arrayidx9.10 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 10
  %arrayidx9.11 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 11
  %arrayidx9.12 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 12
  %arrayidx9.13 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 13
  %arrayidx9.14 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 14
  %5 = bitcast i8* %arrayidx to <16 x i8>*
  %6 = load <16 x i8>, <16 x i8>* %5, align 1, !tbaa !7
  %7 = bitcast [24 x i8]* %h_ to <16 x i8>*
  %8 = load <16 x i8>, <16 x i8>* %7, align 16, !tbaa !7
  %9 = xor <16 x i8> %8, %6
  %arrayidx9.15 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 15
  %10 = bitcast [426 x i8]* %temp to <16 x i8>*
  store <16 x i8> %9, <16 x i8>* %10, align 16, !tbaa !7
  %arrayidx.16 = getelementptr inbounds i8, i8* %ct, i64 394
  %11 = load i8, i8* %arrayidx.16, align 1, !tbaa !7
  %arrayidx5.16 = getelementptr inbounds [24 x i8], [24 x i8]* %h_, i64 0, i64 16
  %12 = load i8, i8* %arrayidx5.16, align 16, !tbaa !7
  %xor35.16 = xor i8 %12, %11
  %arrayidx9.16 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 16
  store i8 %xor35.16, i8* %arrayidx9.16, align 16, !tbaa !7
  %arrayidx.17 = getelementptr inbounds i8, i8* %ct, i64 395
  %13 = load i8, i8* %arrayidx.17, align 1, !tbaa !7
  %arrayidx5.17 = getelementptr inbounds [24 x i8], [24 x i8]* %h_, i64 0, i64 17
  %14 = load i8, i8* %arrayidx5.17, align 1, !tbaa !7
  %xor35.17 = xor i8 %14, %13
  %arrayidx9.17 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 17
  store i8 %xor35.17, i8* %arrayidx9.17, align 1, !tbaa !7
  %arrayidx.18 = getelementptr inbounds i8, i8* %ct, i64 396
  %15 = load i8, i8* %arrayidx.18, align 1, !tbaa !7
  %arrayidx5.18 = getelementptr inbounds [24 x i8], [24 x i8]* %h_, i64 0, i64 18
  %16 = load i8, i8* %arrayidx5.18, align 2, !tbaa !7
  %xor35.18 = xor i8 %16, %15
  %arrayidx9.18 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 18
  store i8 %xor35.18, i8* %arrayidx9.18, align 2, !tbaa !7
  %arrayidx.19 = getelementptr inbounds i8, i8* %ct, i64 397
  %17 = load i8, i8* %arrayidx.19, align 1, !tbaa !7
  %arrayidx5.19 = getelementptr inbounds [24 x i8], [24 x i8]* %h_, i64 0, i64 19
  %18 = load i8, i8* %arrayidx5.19, align 1, !tbaa !7
  %xor35.19 = xor i8 %18, %17
  %arrayidx9.19 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 19
  store i8 %xor35.19, i8* %arrayidx9.19, align 1, !tbaa !7
  %arrayidx.20 = getelementptr inbounds i8, i8* %ct, i64 398
  %19 = load i8, i8* %arrayidx.20, align 1, !tbaa !7
  %arrayidx5.20 = getelementptr inbounds [24 x i8], [24 x i8]* %h_, i64 0, i64 20
  %20 = load i8, i8* %arrayidx5.20, align 4, !tbaa !7
  %xor35.20 = xor i8 %20, %19
  %arrayidx9.20 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 20
  store i8 %xor35.20, i8* %arrayidx9.20, align 4, !tbaa !7
  %arrayidx.21 = getelementptr inbounds i8, i8* %ct, i64 399
  %21 = load i8, i8* %arrayidx.21, align 1, !tbaa !7
  %arrayidx5.21 = getelementptr inbounds [24 x i8], [24 x i8]* %h_, i64 0, i64 21
  %22 = load i8, i8* %arrayidx5.21, align 1, !tbaa !7
  %xor35.21 = xor i8 %22, %21
  %arrayidx9.21 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 21
  store i8 %xor35.21, i8* %arrayidx9.21, align 1, !tbaa !7
  %arrayidx.22 = getelementptr inbounds i8, i8* %ct, i64 400
  %23 = load i8, i8* %arrayidx.22, align 1, !tbaa !7
  %arrayidx5.22 = getelementptr inbounds [24 x i8], [24 x i8]* %h_, i64 0, i64 22
  %24 = load i8, i8* %arrayidx5.22, align 2, !tbaa !7
  %xor35.22 = xor i8 %24, %23
  %arrayidx9.22 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 22
  store i8 %xor35.22, i8* %arrayidx9.22, align 2, !tbaa !7
  %arrayidx.23 = getelementptr inbounds i8, i8* %ct, i64 401
  %25 = load i8, i8* %arrayidx.23, align 1, !tbaa !7
  %arrayidx5.23 = getelementptr inbounds [24 x i8], [24 x i8]* %h_, i64 0, i64 23
  %26 = load i8, i8* %arrayidx5.23, align 1, !tbaa !7
  %xor35.23 = xor i8 %26, %25
  %arrayidx9.23 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 23
  store i8 %xor35.23, i8* %arrayidx9.23, align 1, !tbaa !7
  %arrayidx10 = getelementptr inbounds [426 x i8], [426 x i8]* %temp, i64 0, i64 24
  %arrayidx11 = getelementptr inbounds i8, i8* %sk, i64 56
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %arrayidx10, i8* nonnull align 1 %arrayidx11, i64 378, i1 false)
  call void @shake256(i8* nonnull %0, i64 32, i8* nonnull %4, i64 402) #10
  %arrayidx14 = getelementptr inbounds [32 x i8], [32 x i8]* %ephemeralsk_, i64 0, i64 31
  %27 = load i8, i8* %arrayidx14, align 1, !tbaa !7
  %28 = and i8 %27, 3
  store i8 %28, i8* %arrayidx14, align 1, !tbaa !7
  %call19 = call i32 @EphemeralKeyGeneration_A_SIDHp503(i8* nonnull %0, i8* nonnull %3)
  %29 = bitcast [378 x i8]* %c0_ to <8 x i8>*
  %wide.load = load <8 x i8>, <8 x i8>* %29, align 16, !tbaa !7
  %30 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 8
  %31 = bitcast i8* %30 to <8 x i8>*
  %wide.load72 = load <8 x i8>, <8 x i8>* %31, align 8, !tbaa !7
  %32 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 16
  %33 = bitcast i8* %32 to <8 x i8>*
  %wide.load73 = load <8 x i8>, <8 x i8>* %33, align 16, !tbaa !7
  %34 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 24
  %35 = bitcast i8* %34 to <8 x i8>*
  %wide.load74 = load <8 x i8>, <8 x i8>* %35, align 8, !tbaa !7
  %36 = bitcast i8* %ct to <8 x i8>*
  %wide.load75 = load <8 x i8>, <8 x i8>* %36, align 1, !tbaa !7
  %37 = getelementptr inbounds i8, i8* %ct, i64 8
  %38 = bitcast i8* %37 to <8 x i8>*
  %wide.load76 = load <8 x i8>, <8 x i8>* %38, align 1, !tbaa !7
  %39 = getelementptr inbounds i8, i8* %ct, i64 16
  %40 = bitcast i8* %39 to <8 x i8>*
  %wide.load77 = load <8 x i8>, <8 x i8>* %40, align 1, !tbaa !7
  %41 = getelementptr inbounds i8, i8* %ct, i64 24
  %42 = bitcast i8* %41 to <8 x i8>*
  %wide.load78 = load <8 x i8>, <8 x i8>* %42, align 1, !tbaa !7
  %43 = xor <8 x i8> %wide.load75, %wide.load
  %44 = xor <8 x i8> %wide.load76, %wide.load72
  %45 = xor <8 x i8> %wide.load77, %wide.load73
  %46 = xor <8 x i8> %wide.load78, %wide.load74
  %47 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 32
  %48 = bitcast i8* %47 to <8 x i8>*
  %wide.load.1 = load <8 x i8>, <8 x i8>* %48, align 16, !tbaa !7
  %49 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 40
  %50 = bitcast i8* %49 to <8 x i8>*
  %wide.load72.1 = load <8 x i8>, <8 x i8>* %50, align 8, !tbaa !7
  %51 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 48
  %52 = bitcast i8* %51 to <8 x i8>*
  %wide.load73.1 = load <8 x i8>, <8 x i8>* %52, align 16, !tbaa !7
  %53 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 56
  %54 = bitcast i8* %53 to <8 x i8>*
  %wide.load74.1 = load <8 x i8>, <8 x i8>* %54, align 8, !tbaa !7
  %55 = getelementptr inbounds i8, i8* %ct, i64 32
  %56 = bitcast i8* %55 to <8 x i8>*
  %wide.load75.1 = load <8 x i8>, <8 x i8>* %56, align 1, !tbaa !7
  %57 = getelementptr inbounds i8, i8* %ct, i64 40
  %58 = bitcast i8* %57 to <8 x i8>*
  %wide.load76.1 = load <8 x i8>, <8 x i8>* %58, align 1, !tbaa !7
  %59 = getelementptr inbounds i8, i8* %ct, i64 48
  %60 = bitcast i8* %59 to <8 x i8>*
  %wide.load77.1 = load <8 x i8>, <8 x i8>* %60, align 1, !tbaa !7
  %61 = getelementptr inbounds i8, i8* %ct, i64 56
  %62 = bitcast i8* %61 to <8 x i8>*
  %wide.load78.1 = load <8 x i8>, <8 x i8>* %62, align 1, !tbaa !7
  %63 = xor <8 x i8> %wide.load75.1, %wide.load.1
  %64 = xor <8 x i8> %wide.load76.1, %wide.load72.1
  %65 = xor <8 x i8> %wide.load77.1, %wide.load73.1
  %66 = xor <8 x i8> %wide.load78.1, %wide.load74.1
  %67 = or <8 x i8> %43, %63
  %68 = or <8 x i8> %44, %64
  %69 = or <8 x i8> %45, %65
  %70 = or <8 x i8> %46, %66
  %71 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 64
  %72 = bitcast i8* %71 to <8 x i8>*
  %wide.load.2 = load <8 x i8>, <8 x i8>* %72, align 16, !tbaa !7
  %73 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 72
  %74 = bitcast i8* %73 to <8 x i8>*
  %wide.load72.2 = load <8 x i8>, <8 x i8>* %74, align 8, !tbaa !7
  %75 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 80
  %76 = bitcast i8* %75 to <8 x i8>*
  %wide.load73.2 = load <8 x i8>, <8 x i8>* %76, align 16, !tbaa !7
  %77 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 88
  %78 = bitcast i8* %77 to <8 x i8>*
  %wide.load74.2 = load <8 x i8>, <8 x i8>* %78, align 8, !tbaa !7
  %79 = getelementptr inbounds i8, i8* %ct, i64 64
  %80 = bitcast i8* %79 to <8 x i8>*
  %wide.load75.2 = load <8 x i8>, <8 x i8>* %80, align 1, !tbaa !7
  %81 = getelementptr inbounds i8, i8* %ct, i64 72
  %82 = bitcast i8* %81 to <8 x i8>*
  %wide.load76.2 = load <8 x i8>, <8 x i8>* %82, align 1, !tbaa !7
  %83 = getelementptr inbounds i8, i8* %ct, i64 80
  %84 = bitcast i8* %83 to <8 x i8>*
  %wide.load77.2 = load <8 x i8>, <8 x i8>* %84, align 1, !tbaa !7
  %85 = getelementptr inbounds i8, i8* %ct, i64 88
  %86 = bitcast i8* %85 to <8 x i8>*
  %wide.load78.2 = load <8 x i8>, <8 x i8>* %86, align 1, !tbaa !7
  %87 = xor <8 x i8> %wide.load75.2, %wide.load.2
  %88 = xor <8 x i8> %wide.load76.2, %wide.load72.2
  %89 = xor <8 x i8> %wide.load77.2, %wide.load73.2
  %90 = xor <8 x i8> %wide.load78.2, %wide.load74.2
  %91 = or <8 x i8> %67, %87
  %92 = or <8 x i8> %68, %88
  %93 = or <8 x i8> %69, %89
  %94 = or <8 x i8> %70, %90
  %95 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 96
  %96 = bitcast i8* %95 to <8 x i8>*
  %wide.load.3 = load <8 x i8>, <8 x i8>* %96, align 16, !tbaa !7
  %97 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 104
  %98 = bitcast i8* %97 to <8 x i8>*
  %wide.load72.3 = load <8 x i8>, <8 x i8>* %98, align 8, !tbaa !7
  %99 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 112
  %100 = bitcast i8* %99 to <8 x i8>*
  %wide.load73.3 = load <8 x i8>, <8 x i8>* %100, align 16, !tbaa !7
  %101 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 120
  %102 = bitcast i8* %101 to <8 x i8>*
  %wide.load74.3 = load <8 x i8>, <8 x i8>* %102, align 8, !tbaa !7
  %103 = getelementptr inbounds i8, i8* %ct, i64 96
  %104 = bitcast i8* %103 to <8 x i8>*
  %wide.load75.3 = load <8 x i8>, <8 x i8>* %104, align 1, !tbaa !7
  %105 = getelementptr inbounds i8, i8* %ct, i64 104
  %106 = bitcast i8* %105 to <8 x i8>*
  %wide.load76.3 = load <8 x i8>, <8 x i8>* %106, align 1, !tbaa !7
  %107 = getelementptr inbounds i8, i8* %ct, i64 112
  %108 = bitcast i8* %107 to <8 x i8>*
  %wide.load77.3 = load <8 x i8>, <8 x i8>* %108, align 1, !tbaa !7
  %109 = getelementptr inbounds i8, i8* %ct, i64 120
  %110 = bitcast i8* %109 to <8 x i8>*
  %wide.load78.3 = load <8 x i8>, <8 x i8>* %110, align 1, !tbaa !7
  %111 = xor <8 x i8> %wide.load75.3, %wide.load.3
  %112 = xor <8 x i8> %wide.load76.3, %wide.load72.3
  %113 = xor <8 x i8> %wide.load77.3, %wide.load73.3
  %114 = xor <8 x i8> %wide.load78.3, %wide.load74.3
  %115 = or <8 x i8> %91, %111
  %116 = or <8 x i8> %92, %112
  %117 = or <8 x i8> %93, %113
  %118 = or <8 x i8> %94, %114
  %119 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 128
  %120 = bitcast i8* %119 to <8 x i8>*
  %wide.load.4 = load <8 x i8>, <8 x i8>* %120, align 16, !tbaa !7
  %121 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 136
  %122 = bitcast i8* %121 to <8 x i8>*
  %wide.load72.4 = load <8 x i8>, <8 x i8>* %122, align 8, !tbaa !7
  %123 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 144
  %124 = bitcast i8* %123 to <8 x i8>*
  %wide.load73.4 = load <8 x i8>, <8 x i8>* %124, align 16, !tbaa !7
  %125 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 152
  %126 = bitcast i8* %125 to <8 x i8>*
  %wide.load74.4 = load <8 x i8>, <8 x i8>* %126, align 8, !tbaa !7
  %127 = getelementptr inbounds i8, i8* %ct, i64 128
  %128 = bitcast i8* %127 to <8 x i8>*
  %wide.load75.4 = load <8 x i8>, <8 x i8>* %128, align 1, !tbaa !7
  %129 = getelementptr inbounds i8, i8* %ct, i64 136
  %130 = bitcast i8* %129 to <8 x i8>*
  %wide.load76.4 = load <8 x i8>, <8 x i8>* %130, align 1, !tbaa !7
  %131 = getelementptr inbounds i8, i8* %ct, i64 144
  %132 = bitcast i8* %131 to <8 x i8>*
  %wide.load77.4 = load <8 x i8>, <8 x i8>* %132, align 1, !tbaa !7
  %133 = getelementptr inbounds i8, i8* %ct, i64 152
  %134 = bitcast i8* %133 to <8 x i8>*
  %wide.load78.4 = load <8 x i8>, <8 x i8>* %134, align 1, !tbaa !7
  %135 = xor <8 x i8> %wide.load75.4, %wide.load.4
  %136 = xor <8 x i8> %wide.load76.4, %wide.load72.4
  %137 = xor <8 x i8> %wide.load77.4, %wide.load73.4
  %138 = xor <8 x i8> %wide.load78.4, %wide.load74.4
  %139 = or <8 x i8> %115, %135
  %140 = or <8 x i8> %116, %136
  %141 = or <8 x i8> %117, %137
  %142 = or <8 x i8> %118, %138
  %143 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 160
  %144 = bitcast i8* %143 to <8 x i8>*
  %wide.load.5 = load <8 x i8>, <8 x i8>* %144, align 16, !tbaa !7
  %145 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 168
  %146 = bitcast i8* %145 to <8 x i8>*
  %wide.load72.5 = load <8 x i8>, <8 x i8>* %146, align 8, !tbaa !7
  %147 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 176
  %148 = bitcast i8* %147 to <8 x i8>*
  %wide.load73.5 = load <8 x i8>, <8 x i8>* %148, align 16, !tbaa !7
  %149 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 184
  %150 = bitcast i8* %149 to <8 x i8>*
  %wide.load74.5 = load <8 x i8>, <8 x i8>* %150, align 8, !tbaa !7
  %151 = getelementptr inbounds i8, i8* %ct, i64 160
  %152 = bitcast i8* %151 to <8 x i8>*
  %wide.load75.5 = load <8 x i8>, <8 x i8>* %152, align 1, !tbaa !7
  %153 = getelementptr inbounds i8, i8* %ct, i64 168
  %154 = bitcast i8* %153 to <8 x i8>*
  %wide.load76.5 = load <8 x i8>, <8 x i8>* %154, align 1, !tbaa !7
  %155 = getelementptr inbounds i8, i8* %ct, i64 176
  %156 = bitcast i8* %155 to <8 x i8>*
  %wide.load77.5 = load <8 x i8>, <8 x i8>* %156, align 1, !tbaa !7
  %157 = getelementptr inbounds i8, i8* %ct, i64 184
  %158 = bitcast i8* %157 to <8 x i8>*
  %wide.load78.5 = load <8 x i8>, <8 x i8>* %158, align 1, !tbaa !7
  %159 = xor <8 x i8> %wide.load75.5, %wide.load.5
  %160 = xor <8 x i8> %wide.load76.5, %wide.load72.5
  %161 = xor <8 x i8> %wide.load77.5, %wide.load73.5
  %162 = xor <8 x i8> %wide.load78.5, %wide.load74.5
  %163 = or <8 x i8> %139, %159
  %164 = or <8 x i8> %140, %160
  %165 = or <8 x i8> %141, %161
  %166 = or <8 x i8> %142, %162
  %167 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 192
  %168 = bitcast i8* %167 to <8 x i8>*
  %wide.load.6 = load <8 x i8>, <8 x i8>* %168, align 16, !tbaa !7
  %169 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 200
  %170 = bitcast i8* %169 to <8 x i8>*
  %wide.load72.6 = load <8 x i8>, <8 x i8>* %170, align 8, !tbaa !7
  %171 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 208
  %172 = bitcast i8* %171 to <8 x i8>*
  %wide.load73.6 = load <8 x i8>, <8 x i8>* %172, align 16, !tbaa !7
  %173 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 216
  %174 = bitcast i8* %173 to <8 x i8>*
  %wide.load74.6 = load <8 x i8>, <8 x i8>* %174, align 8, !tbaa !7
  %175 = getelementptr inbounds i8, i8* %ct, i64 192
  %176 = bitcast i8* %175 to <8 x i8>*
  %wide.load75.6 = load <8 x i8>, <8 x i8>* %176, align 1, !tbaa !7
  %177 = getelementptr inbounds i8, i8* %ct, i64 200
  %178 = bitcast i8* %177 to <8 x i8>*
  %wide.load76.6 = load <8 x i8>, <8 x i8>* %178, align 1, !tbaa !7
  %179 = getelementptr inbounds i8, i8* %ct, i64 208
  %180 = bitcast i8* %179 to <8 x i8>*
  %wide.load77.6 = load <8 x i8>, <8 x i8>* %180, align 1, !tbaa !7
  %181 = getelementptr inbounds i8, i8* %ct, i64 216
  %182 = bitcast i8* %181 to <8 x i8>*
  %wide.load78.6 = load <8 x i8>, <8 x i8>* %182, align 1, !tbaa !7
  %183 = xor <8 x i8> %wide.load75.6, %wide.load.6
  %184 = xor <8 x i8> %wide.load76.6, %wide.load72.6
  %185 = xor <8 x i8> %wide.load77.6, %wide.load73.6
  %186 = xor <8 x i8> %wide.load78.6, %wide.load74.6
  %187 = or <8 x i8> %163, %183
  %188 = or <8 x i8> %164, %184
  %189 = or <8 x i8> %165, %185
  %190 = or <8 x i8> %166, %186
  %191 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 224
  %192 = bitcast i8* %191 to <8 x i8>*
  %wide.load.7 = load <8 x i8>, <8 x i8>* %192, align 16, !tbaa !7
  %193 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 232
  %194 = bitcast i8* %193 to <8 x i8>*
  %wide.load72.7 = load <8 x i8>, <8 x i8>* %194, align 8, !tbaa !7
  %195 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 240
  %196 = bitcast i8* %195 to <8 x i8>*
  %wide.load73.7 = load <8 x i8>, <8 x i8>* %196, align 16, !tbaa !7
  %197 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 248
  %198 = bitcast i8* %197 to <8 x i8>*
  %wide.load74.7 = load <8 x i8>, <8 x i8>* %198, align 8, !tbaa !7
  %199 = getelementptr inbounds i8, i8* %ct, i64 224
  %200 = bitcast i8* %199 to <8 x i8>*
  %wide.load75.7 = load <8 x i8>, <8 x i8>* %200, align 1, !tbaa !7
  %201 = getelementptr inbounds i8, i8* %ct, i64 232
  %202 = bitcast i8* %201 to <8 x i8>*
  %wide.load76.7 = load <8 x i8>, <8 x i8>* %202, align 1, !tbaa !7
  %203 = getelementptr inbounds i8, i8* %ct, i64 240
  %204 = bitcast i8* %203 to <8 x i8>*
  %wide.load77.7 = load <8 x i8>, <8 x i8>* %204, align 1, !tbaa !7
  %205 = getelementptr inbounds i8, i8* %ct, i64 248
  %206 = bitcast i8* %205 to <8 x i8>*
  %wide.load78.7 = load <8 x i8>, <8 x i8>* %206, align 1, !tbaa !7
  %207 = xor <8 x i8> %wide.load75.7, %wide.load.7
  %208 = xor <8 x i8> %wide.load76.7, %wide.load72.7
  %209 = xor <8 x i8> %wide.load77.7, %wide.load73.7
  %210 = xor <8 x i8> %wide.load78.7, %wide.load74.7
  %211 = or <8 x i8> %187, %207
  %212 = or <8 x i8> %188, %208
  %213 = or <8 x i8> %189, %209
  %214 = or <8 x i8> %190, %210
  %215 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 256
  %216 = bitcast i8* %215 to <8 x i8>*
  %wide.load.8 = load <8 x i8>, <8 x i8>* %216, align 16, !tbaa !7
  %217 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 264
  %218 = bitcast i8* %217 to <8 x i8>*
  %wide.load72.8 = load <8 x i8>, <8 x i8>* %218, align 8, !tbaa !7
  %219 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 272
  %220 = bitcast i8* %219 to <8 x i8>*
  %wide.load73.8 = load <8 x i8>, <8 x i8>* %220, align 16, !tbaa !7
  %221 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 280
  %222 = bitcast i8* %221 to <8 x i8>*
  %wide.load74.8 = load <8 x i8>, <8 x i8>* %222, align 8, !tbaa !7
  %223 = getelementptr inbounds i8, i8* %ct, i64 256
  %224 = bitcast i8* %223 to <8 x i8>*
  %wide.load75.8 = load <8 x i8>, <8 x i8>* %224, align 1, !tbaa !7
  %225 = getelementptr inbounds i8, i8* %ct, i64 264
  %226 = bitcast i8* %225 to <8 x i8>*
  %wide.load76.8 = load <8 x i8>, <8 x i8>* %226, align 1, !tbaa !7
  %227 = getelementptr inbounds i8, i8* %ct, i64 272
  %228 = bitcast i8* %227 to <8 x i8>*
  %wide.load77.8 = load <8 x i8>, <8 x i8>* %228, align 1, !tbaa !7
  %229 = getelementptr inbounds i8, i8* %ct, i64 280
  %230 = bitcast i8* %229 to <8 x i8>*
  %wide.load78.8 = load <8 x i8>, <8 x i8>* %230, align 1, !tbaa !7
  %231 = xor <8 x i8> %wide.load75.8, %wide.load.8
  %232 = xor <8 x i8> %wide.load76.8, %wide.load72.8
  %233 = xor <8 x i8> %wide.load77.8, %wide.load73.8
  %234 = xor <8 x i8> %wide.load78.8, %wide.load74.8
  %235 = or <8 x i8> %211, %231
  %236 = or <8 x i8> %212, %232
  %237 = or <8 x i8> %213, %233
  %238 = or <8 x i8> %214, %234
  %239 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 288
  %240 = bitcast i8* %239 to <8 x i8>*
  %wide.load.9 = load <8 x i8>, <8 x i8>* %240, align 16, !tbaa !7
  %241 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 296
  %242 = bitcast i8* %241 to <8 x i8>*
  %wide.load72.9 = load <8 x i8>, <8 x i8>* %242, align 8, !tbaa !7
  %243 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 304
  %244 = bitcast i8* %243 to <8 x i8>*
  %wide.load73.9 = load <8 x i8>, <8 x i8>* %244, align 16, !tbaa !7
  %245 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 312
  %246 = bitcast i8* %245 to <8 x i8>*
  %wide.load74.9 = load <8 x i8>, <8 x i8>* %246, align 8, !tbaa !7
  %247 = getelementptr inbounds i8, i8* %ct, i64 288
  %248 = bitcast i8* %247 to <8 x i8>*
  %wide.load75.9 = load <8 x i8>, <8 x i8>* %248, align 1, !tbaa !7
  %249 = getelementptr inbounds i8, i8* %ct, i64 296
  %250 = bitcast i8* %249 to <8 x i8>*
  %wide.load76.9 = load <8 x i8>, <8 x i8>* %250, align 1, !tbaa !7
  %251 = getelementptr inbounds i8, i8* %ct, i64 304
  %252 = bitcast i8* %251 to <8 x i8>*
  %wide.load77.9 = load <8 x i8>, <8 x i8>* %252, align 1, !tbaa !7
  %253 = getelementptr inbounds i8, i8* %ct, i64 312
  %254 = bitcast i8* %253 to <8 x i8>*
  %wide.load78.9 = load <8 x i8>, <8 x i8>* %254, align 1, !tbaa !7
  %255 = xor <8 x i8> %wide.load75.9, %wide.load.9
  %256 = xor <8 x i8> %wide.load76.9, %wide.load72.9
  %257 = xor <8 x i8> %wide.load77.9, %wide.load73.9
  %258 = xor <8 x i8> %wide.load78.9, %wide.load74.9
  %259 = or <8 x i8> %235, %255
  %260 = or <8 x i8> %236, %256
  %261 = or <8 x i8> %237, %257
  %262 = or <8 x i8> %238, %258
  %263 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 320
  %264 = bitcast i8* %263 to <8 x i8>*
  %wide.load.10 = load <8 x i8>, <8 x i8>* %264, align 16, !tbaa !7
  %265 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 328
  %266 = bitcast i8* %265 to <8 x i8>*
  %wide.load72.10 = load <8 x i8>, <8 x i8>* %266, align 8, !tbaa !7
  %267 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 336
  %268 = bitcast i8* %267 to <8 x i8>*
  %wide.load73.10 = load <8 x i8>, <8 x i8>* %268, align 16, !tbaa !7
  %269 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 344
  %270 = bitcast i8* %269 to <8 x i8>*
  %wide.load74.10 = load <8 x i8>, <8 x i8>* %270, align 8, !tbaa !7
  %271 = getelementptr inbounds i8, i8* %ct, i64 320
  %272 = bitcast i8* %271 to <8 x i8>*
  %wide.load75.10 = load <8 x i8>, <8 x i8>* %272, align 1, !tbaa !7
  %273 = getelementptr inbounds i8, i8* %ct, i64 328
  %274 = bitcast i8* %273 to <8 x i8>*
  %wide.load76.10 = load <8 x i8>, <8 x i8>* %274, align 1, !tbaa !7
  %275 = getelementptr inbounds i8, i8* %ct, i64 336
  %276 = bitcast i8* %275 to <8 x i8>*
  %wide.load77.10 = load <8 x i8>, <8 x i8>* %276, align 1, !tbaa !7
  %277 = getelementptr inbounds i8, i8* %ct, i64 344
  %278 = bitcast i8* %277 to <8 x i8>*
  %wide.load78.10 = load <8 x i8>, <8 x i8>* %278, align 1, !tbaa !7
  %279 = xor <8 x i8> %wide.load75.10, %wide.load.10
  %280 = xor <8 x i8> %wide.load76.10, %wide.load72.10
  %281 = xor <8 x i8> %wide.load77.10, %wide.load73.10
  %282 = xor <8 x i8> %wide.load78.10, %wide.load74.10
  %283 = or <8 x i8> %259, %279
  %284 = or <8 x i8> %260, %280
  %285 = or <8 x i8> %261, %281
  %286 = or <8 x i8> %262, %282
  %bin.rdx89 = or <8 x i8> %284, %283
  %bin.rdx7990 = or <8 x i8> %285, %bin.rdx89
  %bin.rdx8091 = or <8 x i8> %286, %bin.rdx7990
  %bin.rdx80 = zext <8 x i8> %bin.rdx8091 to <8 x i32>
  %rdx.shuf = shufflevector <8 x i32> %bin.rdx80, <8 x i32> undef, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx81 = or <8 x i32> %rdx.shuf, %bin.rdx80
  %rdx.shuf82 = shufflevector <8 x i32> %bin.rdx81, <8 x i32> undef, <8 x i32> <i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx83 = or <8 x i32> %bin.rdx81, %rdx.shuf82
  %rdx.shuf84 = shufflevector <8 x i32> %bin.rdx83, <8 x i32> undef, <8 x i32> <i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx85 = or <8 x i32> %bin.rdx83, %rdx.shuf84
  %287 = extractelement <8 x i32> %bin.rdx85, i32 0
  %arrayidx.i = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 352
  %288 = load i8, i8* %arrayidx.i, align 16, !tbaa !7
  %arrayidx2.i = getelementptr inbounds i8, i8* %ct, i64 352
  %289 = load i8, i8* %arrayidx2.i, align 1, !tbaa !7
  %xor13.i = xor i8 %289, %288
  %xor.i = zext i8 %xor13.i to i32
  %or.i = or i32 %287, %xor.i
  %arrayidx.i.1 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 353
  %290 = load i8, i8* %arrayidx.i.1, align 1, !tbaa !7
  %arrayidx2.i.1 = getelementptr inbounds i8, i8* %ct, i64 353
  %291 = load i8, i8* %arrayidx2.i.1, align 1, !tbaa !7
  %xor13.i.1 = xor i8 %291, %290
  %xor.i.1 = zext i8 %xor13.i.1 to i32
  %or.i.1 = or i32 %or.i, %xor.i.1
  %arrayidx.i.2 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 354
  %292 = load i8, i8* %arrayidx.i.2, align 2, !tbaa !7
  %arrayidx2.i.2 = getelementptr inbounds i8, i8* %ct, i64 354
  %293 = load i8, i8* %arrayidx2.i.2, align 1, !tbaa !7
  %xor13.i.2 = xor i8 %293, %292
  %xor.i.2 = zext i8 %xor13.i.2 to i32
  %or.i.2 = or i32 %or.i.1, %xor.i.2
  %arrayidx.i.3 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 355
  %294 = load i8, i8* %arrayidx.i.3, align 1, !tbaa !7
  %arrayidx2.i.3 = getelementptr inbounds i8, i8* %ct, i64 355
  %295 = load i8, i8* %arrayidx2.i.3, align 1, !tbaa !7
  %xor13.i.3 = xor i8 %295, %294
  %xor.i.3 = zext i8 %xor13.i.3 to i32
  %or.i.3 = or i32 %or.i.2, %xor.i.3
  %arrayidx.i.4 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 356
  %296 = load i8, i8* %arrayidx.i.4, align 4, !tbaa !7
  %arrayidx2.i.4 = getelementptr inbounds i8, i8* %ct, i64 356
  %297 = load i8, i8* %arrayidx2.i.4, align 1, !tbaa !7
  %xor13.i.4 = xor i8 %297, %296
  %xor.i.4 = zext i8 %xor13.i.4 to i32
  %or.i.4 = or i32 %or.i.3, %xor.i.4
  %arrayidx.i.5 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 357
  %298 = load i8, i8* %arrayidx.i.5, align 1, !tbaa !7
  %arrayidx2.i.5 = getelementptr inbounds i8, i8* %ct, i64 357
  %299 = load i8, i8* %arrayidx2.i.5, align 1, !tbaa !7
  %xor13.i.5 = xor i8 %299, %298
  %xor.i.5 = zext i8 %xor13.i.5 to i32
  %or.i.5 = or i32 %or.i.4, %xor.i.5
  %arrayidx.i.6 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 358
  %300 = load i8, i8* %arrayidx.i.6, align 2, !tbaa !7
  %arrayidx2.i.6 = getelementptr inbounds i8, i8* %ct, i64 358
  %301 = load i8, i8* %arrayidx2.i.6, align 1, !tbaa !7
  %xor13.i.6 = xor i8 %301, %300
  %xor.i.6 = zext i8 %xor13.i.6 to i32
  %or.i.6 = or i32 %or.i.5, %xor.i.6
  %arrayidx.i.7 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 359
  %302 = load i8, i8* %arrayidx.i.7, align 1, !tbaa !7
  %arrayidx2.i.7 = getelementptr inbounds i8, i8* %ct, i64 359
  %303 = load i8, i8* %arrayidx2.i.7, align 1, !tbaa !7
  %xor13.i.7 = xor i8 %303, %302
  %xor.i.7 = zext i8 %xor13.i.7 to i32
  %or.i.7 = or i32 %or.i.6, %xor.i.7
  %arrayidx.i.8 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 360
  %304 = load i8, i8* %arrayidx.i.8, align 8, !tbaa !7
  %arrayidx2.i.8 = getelementptr inbounds i8, i8* %ct, i64 360
  %305 = load i8, i8* %arrayidx2.i.8, align 1, !tbaa !7
  %xor13.i.8 = xor i8 %305, %304
  %xor.i.8 = zext i8 %xor13.i.8 to i32
  %or.i.8 = or i32 %or.i.7, %xor.i.8
  %arrayidx.i.9 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 361
  %306 = load i8, i8* %arrayidx.i.9, align 1, !tbaa !7
  %arrayidx2.i.9 = getelementptr inbounds i8, i8* %ct, i64 361
  %307 = load i8, i8* %arrayidx2.i.9, align 1, !tbaa !7
  %xor13.i.9 = xor i8 %307, %306
  %xor.i.9 = zext i8 %xor13.i.9 to i32
  %or.i.9 = or i32 %or.i.8, %xor.i.9
  %arrayidx.i.10 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 362
  %308 = load i8, i8* %arrayidx.i.10, align 2, !tbaa !7
  %arrayidx2.i.10 = getelementptr inbounds i8, i8* %ct, i64 362
  %309 = load i8, i8* %arrayidx2.i.10, align 1, !tbaa !7
  %xor13.i.10 = xor i8 %309, %308
  %xor.i.10 = zext i8 %xor13.i.10 to i32
  %or.i.10 = or i32 %or.i.9, %xor.i.10
  %arrayidx.i.11 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 363
  %310 = load i8, i8* %arrayidx.i.11, align 1, !tbaa !7
  %arrayidx2.i.11 = getelementptr inbounds i8, i8* %ct, i64 363
  %311 = load i8, i8* %arrayidx2.i.11, align 1, !tbaa !7
  %xor13.i.11 = xor i8 %311, %310
  %xor.i.11 = zext i8 %xor13.i.11 to i32
  %or.i.11 = or i32 %or.i.10, %xor.i.11
  %arrayidx.i.12 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 364
  %312 = load i8, i8* %arrayidx.i.12, align 4, !tbaa !7
  %arrayidx2.i.12 = getelementptr inbounds i8, i8* %ct, i64 364
  %313 = load i8, i8* %arrayidx2.i.12, align 1, !tbaa !7
  %xor13.i.12 = xor i8 %313, %312
  %xor.i.12 = zext i8 %xor13.i.12 to i32
  %or.i.12 = or i32 %or.i.11, %xor.i.12
  %arrayidx.i.13 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 365
  %314 = load i8, i8* %arrayidx.i.13, align 1, !tbaa !7
  %arrayidx2.i.13 = getelementptr inbounds i8, i8* %ct, i64 365
  %315 = load i8, i8* %arrayidx2.i.13, align 1, !tbaa !7
  %xor13.i.13 = xor i8 %315, %314
  %xor.i.13 = zext i8 %xor13.i.13 to i32
  %or.i.13 = or i32 %or.i.12, %xor.i.13
  %arrayidx.i.14 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 366
  %316 = load i8, i8* %arrayidx.i.14, align 2, !tbaa !7
  %arrayidx2.i.14 = getelementptr inbounds i8, i8* %ct, i64 366
  %317 = load i8, i8* %arrayidx2.i.14, align 1, !tbaa !7
  %xor13.i.14 = xor i8 %317, %316
  %xor.i.14 = zext i8 %xor13.i.14 to i32
  %or.i.14 = or i32 %or.i.13, %xor.i.14
  %arrayidx.i.15 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 367
  %318 = load i8, i8* %arrayidx.i.15, align 1, !tbaa !7
  %arrayidx2.i.15 = getelementptr inbounds i8, i8* %ct, i64 367
  %319 = load i8, i8* %arrayidx2.i.15, align 1, !tbaa !7
  %xor13.i.15 = xor i8 %319, %318
  %xor.i.15 = zext i8 %xor13.i.15 to i32
  %or.i.15 = or i32 %or.i.14, %xor.i.15
  %arrayidx.i.16 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 368
  %320 = load i8, i8* %arrayidx.i.16, align 16, !tbaa !7
  %arrayidx2.i.16 = getelementptr inbounds i8, i8* %ct, i64 368
  %321 = load i8, i8* %arrayidx2.i.16, align 1, !tbaa !7
  %xor13.i.16 = xor i8 %321, %320
  %xor.i.16 = zext i8 %xor13.i.16 to i32
  %or.i.16 = or i32 %or.i.15, %xor.i.16
  %arrayidx.i.17 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 369
  %322 = load i8, i8* %arrayidx.i.17, align 1, !tbaa !7
  %arrayidx2.i.17 = getelementptr inbounds i8, i8* %ct, i64 369
  %323 = load i8, i8* %arrayidx2.i.17, align 1, !tbaa !7
  %xor13.i.17 = xor i8 %323, %322
  %xor.i.17 = zext i8 %xor13.i.17 to i32
  %or.i.17 = or i32 %or.i.16, %xor.i.17
  %arrayidx.i.18 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 370
  %324 = load i8, i8* %arrayidx.i.18, align 2, !tbaa !7
  %arrayidx2.i.18 = getelementptr inbounds i8, i8* %ct, i64 370
  %325 = load i8, i8* %arrayidx2.i.18, align 1, !tbaa !7
  %xor13.i.18 = xor i8 %325, %324
  %xor.i.18 = zext i8 %xor13.i.18 to i32
  %or.i.18 = or i32 %or.i.17, %xor.i.18
  %arrayidx.i.19 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 371
  %326 = load i8, i8* %arrayidx.i.19, align 1, !tbaa !7
  %arrayidx2.i.19 = getelementptr inbounds i8, i8* %ct, i64 371
  %327 = load i8, i8* %arrayidx2.i.19, align 1, !tbaa !7
  %xor13.i.19 = xor i8 %327, %326
  %xor.i.19 = zext i8 %xor13.i.19 to i32
  %or.i.19 = or i32 %or.i.18, %xor.i.19
  %arrayidx.i.20 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 372
  %328 = load i8, i8* %arrayidx.i.20, align 4, !tbaa !7
  %arrayidx2.i.20 = getelementptr inbounds i8, i8* %ct, i64 372
  %329 = load i8, i8* %arrayidx2.i.20, align 1, !tbaa !7
  %xor13.i.20 = xor i8 %329, %328
  %xor.i.20 = zext i8 %xor13.i.20 to i32
  %or.i.20 = or i32 %or.i.19, %xor.i.20
  %arrayidx.i.21 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 373
  %330 = load i8, i8* %arrayidx.i.21, align 1, !tbaa !7
  %arrayidx2.i.21 = getelementptr inbounds i8, i8* %ct, i64 373
  %331 = load i8, i8* %arrayidx2.i.21, align 1, !tbaa !7
  %xor13.i.21 = xor i8 %331, %330
  %xor.i.21 = zext i8 %xor13.i.21 to i32
  %or.i.21 = or i32 %or.i.20, %xor.i.21
  %arrayidx.i.22 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 374
  %332 = load i8, i8* %arrayidx.i.22, align 2, !tbaa !7
  %arrayidx2.i.22 = getelementptr inbounds i8, i8* %ct, i64 374
  %333 = load i8, i8* %arrayidx2.i.22, align 1, !tbaa !7
  %xor13.i.22 = xor i8 %333, %332
  %xor.i.22 = zext i8 %xor13.i.22 to i32
  %or.i.22 = or i32 %or.i.21, %xor.i.22
  %arrayidx.i.23 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 375
  %334 = load i8, i8* %arrayidx.i.23, align 1, !tbaa !7
  %arrayidx2.i.23 = getelementptr inbounds i8, i8* %ct, i64 375
  %335 = load i8, i8* %arrayidx2.i.23, align 1, !tbaa !7
  %xor13.i.23 = xor i8 %335, %334
  %xor.i.23 = zext i8 %xor13.i.23 to i32
  %or.i.23 = or i32 %or.i.22, %xor.i.23
  %arrayidx.i.24 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 376
  %336 = load i8, i8* %arrayidx.i.24, align 8, !tbaa !7
  %arrayidx2.i.24 = getelementptr inbounds i8, i8* %ct, i64 376
  %337 = load i8, i8* %arrayidx2.i.24, align 1, !tbaa !7
  %xor13.i.24 = xor i8 %337, %336
  %xor.i.24 = zext i8 %xor13.i.24 to i32
  %or.i.24 = or i32 %or.i.23, %xor.i.24
  %arrayidx.i.25 = getelementptr inbounds [378 x i8], [378 x i8]* %c0_, i64 0, i64 377
  %338 = load i8, i8* %arrayidx.i.25, align 1, !tbaa !7
  %arrayidx2.i.25 = getelementptr inbounds i8, i8* %ct, i64 377
  %339 = load i8, i8* %arrayidx2.i.25, align 1, !tbaa !7
  %xor13.i.25 = xor i8 %339, %338
  %xor.i.25 = zext i8 %xor13.i.25 to i32
  %or.i.25 = or i32 %or.i.24, %xor.i.25
  %phitmp.i = sub i32 0, %or.i.25
  %phitmp17.i = ashr i32 %phitmp.i, 31
  %phitmp18.i = trunc i32 %phitmp17.i to i8
  br label %Hashing

Hashing:                                          ; preds = %entry.Hashing_crit_edge, %if.end
  %arrayidx23.pre-phi = phi i8* [ %.pre65, %entry.Hashing_crit_edge ], [ %arrayidx10, %if.end ]
  %arrayidx3.i.23.pre-phi = phi i8* [ %.pre64, %entry.Hashing_crit_edge ], [ %arrayidx9.23, %if.end ]
  %arrayidx3.i.22.pre-phi = phi i8* [ %.pre63, %entry.Hashing_crit_edge ], [ %arrayidx9.22, %if.end ]
  %arrayidx3.i.21.pre-phi = phi i8* [ %.pre62, %entry.Hashing_crit_edge ], [ %arrayidx9.21, %if.end ]
  %arrayidx3.i.20.pre-phi = phi i8* [ %.pre61, %entry.Hashing_crit_edge ], [ %arrayidx9.20, %if.end ]
  %arrayidx3.i.19.pre-phi = phi i8* [ %.pre60, %entry.Hashing_crit_edge ], [ %arrayidx9.19, %if.end ]
  %arrayidx3.i.18.pre-phi = phi i8* [ %.pre59, %entry.Hashing_crit_edge ], [ %arrayidx9.18, %if.end ]
  %arrayidx3.i.17.pre-phi = phi i8* [ %.pre58, %entry.Hashing_crit_edge ], [ %arrayidx9.17, %if.end ]
  %arrayidx3.i.16.pre-phi = phi i8* [ %.pre57, %entry.Hashing_crit_edge ], [ %arrayidx9.16, %if.end ]
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
  %340 = load i8, i8* %sk, align 1, !tbaa !7
  %341 = load i8, i8* %4, align 16, !tbaa !7
  %xor16.i = xor i8 %341, %340
  %and18.i = and i8 %xor16.i, %selector.0
  %xor819.i = xor i8 %and18.i, %341
  store i8 %xor819.i, i8* %4, align 16, !tbaa !7
  %arrayidx.i37.1 = getelementptr inbounds i8, i8* %sk, i64 1
  %342 = load i8, i8* %arrayidx.i37.1, align 1, !tbaa !7
  %343 = load i8, i8* %arrayidx3.i.1.pre-phi, align 1, !tbaa !7
  %xor16.i.1 = xor i8 %343, %342
  %and18.i.1 = and i8 %xor16.i.1, %selector.0
  %xor819.i.1 = xor i8 %and18.i.1, %343
  store i8 %xor819.i.1, i8* %arrayidx3.i.1.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.2 = getelementptr inbounds i8, i8* %sk, i64 2
  %344 = load i8, i8* %arrayidx.i37.2, align 1, !tbaa !7
  %345 = load i8, i8* %arrayidx3.i.2.pre-phi, align 1, !tbaa !7
  %xor16.i.2 = xor i8 %345, %344
  %and18.i.2 = and i8 %xor16.i.2, %selector.0
  %xor819.i.2 = xor i8 %and18.i.2, %345
  store i8 %xor819.i.2, i8* %arrayidx3.i.2.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.3 = getelementptr inbounds i8, i8* %sk, i64 3
  %346 = load i8, i8* %arrayidx.i37.3, align 1, !tbaa !7
  %347 = load i8, i8* %arrayidx3.i.3.pre-phi, align 1, !tbaa !7
  %xor16.i.3 = xor i8 %347, %346
  %and18.i.3 = and i8 %xor16.i.3, %selector.0
  %xor819.i.3 = xor i8 %and18.i.3, %347
  store i8 %xor819.i.3, i8* %arrayidx3.i.3.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.4 = getelementptr inbounds i8, i8* %sk, i64 4
  %348 = load i8, i8* %arrayidx.i37.4, align 1, !tbaa !7
  %349 = load i8, i8* %arrayidx3.i.4.pre-phi, align 1, !tbaa !7
  %xor16.i.4 = xor i8 %349, %348
  %and18.i.4 = and i8 %xor16.i.4, %selector.0
  %xor819.i.4 = xor i8 %and18.i.4, %349
  store i8 %xor819.i.4, i8* %arrayidx3.i.4.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.5 = getelementptr inbounds i8, i8* %sk, i64 5
  %350 = load i8, i8* %arrayidx.i37.5, align 1, !tbaa !7
  %351 = load i8, i8* %arrayidx3.i.5.pre-phi, align 1, !tbaa !7
  %xor16.i.5 = xor i8 %351, %350
  %and18.i.5 = and i8 %xor16.i.5, %selector.0
  %xor819.i.5 = xor i8 %and18.i.5, %351
  store i8 %xor819.i.5, i8* %arrayidx3.i.5.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.6 = getelementptr inbounds i8, i8* %sk, i64 6
  %352 = load i8, i8* %arrayidx.i37.6, align 1, !tbaa !7
  %353 = load i8, i8* %arrayidx3.i.6.pre-phi, align 1, !tbaa !7
  %xor16.i.6 = xor i8 %353, %352
  %and18.i.6 = and i8 %xor16.i.6, %selector.0
  %xor819.i.6 = xor i8 %and18.i.6, %353
  store i8 %xor819.i.6, i8* %arrayidx3.i.6.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.7 = getelementptr inbounds i8, i8* %sk, i64 7
  %354 = load i8, i8* %arrayidx.i37.7, align 1, !tbaa !7
  %355 = load i8, i8* %arrayidx3.i.7.pre-phi, align 1, !tbaa !7
  %xor16.i.7 = xor i8 %355, %354
  %and18.i.7 = and i8 %xor16.i.7, %selector.0
  %xor819.i.7 = xor i8 %and18.i.7, %355
  store i8 %xor819.i.7, i8* %arrayidx3.i.7.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.8 = getelementptr inbounds i8, i8* %sk, i64 8
  %356 = load i8, i8* %arrayidx.i37.8, align 1, !tbaa !7
  %357 = load i8, i8* %arrayidx3.i.8.pre-phi, align 1, !tbaa !7
  %xor16.i.8 = xor i8 %357, %356
  %and18.i.8 = and i8 %xor16.i.8, %selector.0
  %xor819.i.8 = xor i8 %and18.i.8, %357
  store i8 %xor819.i.8, i8* %arrayidx3.i.8.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.9 = getelementptr inbounds i8, i8* %sk, i64 9
  %358 = load i8, i8* %arrayidx.i37.9, align 1, !tbaa !7
  %359 = load i8, i8* %arrayidx3.i.9.pre-phi, align 1, !tbaa !7
  %xor16.i.9 = xor i8 %359, %358
  %and18.i.9 = and i8 %xor16.i.9, %selector.0
  %xor819.i.9 = xor i8 %and18.i.9, %359
  store i8 %xor819.i.9, i8* %arrayidx3.i.9.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.10 = getelementptr inbounds i8, i8* %sk, i64 10
  %360 = load i8, i8* %arrayidx.i37.10, align 1, !tbaa !7
  %361 = load i8, i8* %arrayidx3.i.10.pre-phi, align 1, !tbaa !7
  %xor16.i.10 = xor i8 %361, %360
  %and18.i.10 = and i8 %xor16.i.10, %selector.0
  %xor819.i.10 = xor i8 %and18.i.10, %361
  store i8 %xor819.i.10, i8* %arrayidx3.i.10.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.11 = getelementptr inbounds i8, i8* %sk, i64 11
  %362 = load i8, i8* %arrayidx.i37.11, align 1, !tbaa !7
  %363 = load i8, i8* %arrayidx3.i.11.pre-phi, align 1, !tbaa !7
  %xor16.i.11 = xor i8 %363, %362
  %and18.i.11 = and i8 %xor16.i.11, %selector.0
  %xor819.i.11 = xor i8 %and18.i.11, %363
  store i8 %xor819.i.11, i8* %arrayidx3.i.11.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.12 = getelementptr inbounds i8, i8* %sk, i64 12
  %364 = load i8, i8* %arrayidx.i37.12, align 1, !tbaa !7
  %365 = load i8, i8* %arrayidx3.i.12.pre-phi, align 1, !tbaa !7
  %xor16.i.12 = xor i8 %365, %364
  %and18.i.12 = and i8 %xor16.i.12, %selector.0
  %xor819.i.12 = xor i8 %and18.i.12, %365
  store i8 %xor819.i.12, i8* %arrayidx3.i.12.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.13 = getelementptr inbounds i8, i8* %sk, i64 13
  %366 = load i8, i8* %arrayidx.i37.13, align 1, !tbaa !7
  %367 = load i8, i8* %arrayidx3.i.13.pre-phi, align 1, !tbaa !7
  %xor16.i.13 = xor i8 %367, %366
  %and18.i.13 = and i8 %xor16.i.13, %selector.0
  %xor819.i.13 = xor i8 %and18.i.13, %367
  store i8 %xor819.i.13, i8* %arrayidx3.i.13.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.14 = getelementptr inbounds i8, i8* %sk, i64 14
  %368 = load i8, i8* %arrayidx.i37.14, align 1, !tbaa !7
  %369 = load i8, i8* %arrayidx3.i.14.pre-phi, align 1, !tbaa !7
  %xor16.i.14 = xor i8 %369, %368
  %and18.i.14 = and i8 %xor16.i.14, %selector.0
  %xor819.i.14 = xor i8 %and18.i.14, %369
  store i8 %xor819.i.14, i8* %arrayidx3.i.14.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.15 = getelementptr inbounds i8, i8* %sk, i64 15
  %370 = load i8, i8* %arrayidx.i37.15, align 1, !tbaa !7
  %371 = load i8, i8* %arrayidx3.i.15.pre-phi, align 1, !tbaa !7
  %xor16.i.15 = xor i8 %371, %370
  %and18.i.15 = and i8 %xor16.i.15, %selector.0
  %xor819.i.15 = xor i8 %and18.i.15, %371
  store i8 %xor819.i.15, i8* %arrayidx3.i.15.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.16 = getelementptr inbounds i8, i8* %sk, i64 16
  %372 = load i8, i8* %arrayidx.i37.16, align 1, !tbaa !7
  %373 = load i8, i8* %arrayidx3.i.16.pre-phi, align 1, !tbaa !7
  %xor16.i.16 = xor i8 %373, %372
  %and18.i.16 = and i8 %xor16.i.16, %selector.0
  %xor819.i.16 = xor i8 %and18.i.16, %373
  store i8 %xor819.i.16, i8* %arrayidx3.i.16.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.17 = getelementptr inbounds i8, i8* %sk, i64 17
  %374 = load i8, i8* %arrayidx.i37.17, align 1, !tbaa !7
  %375 = load i8, i8* %arrayidx3.i.17.pre-phi, align 1, !tbaa !7
  %xor16.i.17 = xor i8 %375, %374
  %and18.i.17 = and i8 %xor16.i.17, %selector.0
  %xor819.i.17 = xor i8 %and18.i.17, %375
  store i8 %xor819.i.17, i8* %arrayidx3.i.17.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.18 = getelementptr inbounds i8, i8* %sk, i64 18
  %376 = load i8, i8* %arrayidx.i37.18, align 1, !tbaa !7
  %377 = load i8, i8* %arrayidx3.i.18.pre-phi, align 1, !tbaa !7
  %xor16.i.18 = xor i8 %377, %376
  %and18.i.18 = and i8 %xor16.i.18, %selector.0
  %xor819.i.18 = xor i8 %and18.i.18, %377
  store i8 %xor819.i.18, i8* %arrayidx3.i.18.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.19 = getelementptr inbounds i8, i8* %sk, i64 19
  %378 = load i8, i8* %arrayidx.i37.19, align 1, !tbaa !7
  %379 = load i8, i8* %arrayidx3.i.19.pre-phi, align 1, !tbaa !7
  %xor16.i.19 = xor i8 %379, %378
  %and18.i.19 = and i8 %xor16.i.19, %selector.0
  %xor819.i.19 = xor i8 %and18.i.19, %379
  store i8 %xor819.i.19, i8* %arrayidx3.i.19.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.20 = getelementptr inbounds i8, i8* %sk, i64 20
  %380 = load i8, i8* %arrayidx.i37.20, align 1, !tbaa !7
  %381 = load i8, i8* %arrayidx3.i.20.pre-phi, align 1, !tbaa !7
  %xor16.i.20 = xor i8 %381, %380
  %and18.i.20 = and i8 %xor16.i.20, %selector.0
  %xor819.i.20 = xor i8 %and18.i.20, %381
  store i8 %xor819.i.20, i8* %arrayidx3.i.20.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.21 = getelementptr inbounds i8, i8* %sk, i64 21
  %382 = load i8, i8* %arrayidx.i37.21, align 1, !tbaa !7
  %383 = load i8, i8* %arrayidx3.i.21.pre-phi, align 1, !tbaa !7
  %xor16.i.21 = xor i8 %383, %382
  %and18.i.21 = and i8 %xor16.i.21, %selector.0
  %xor819.i.21 = xor i8 %and18.i.21, %383
  store i8 %xor819.i.21, i8* %arrayidx3.i.21.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.22 = getelementptr inbounds i8, i8* %sk, i64 22
  %384 = load i8, i8* %arrayidx.i37.22, align 1, !tbaa !7
  %385 = load i8, i8* %arrayidx3.i.22.pre-phi, align 1, !tbaa !7
  %xor16.i.22 = xor i8 %385, %384
  %and18.i.22 = and i8 %xor16.i.22, %selector.0
  %xor819.i.22 = xor i8 %and18.i.22, %385
  store i8 %xor819.i.22, i8* %arrayidx3.i.22.pre-phi, align 1, !tbaa !7
  %arrayidx.i37.23 = getelementptr inbounds i8, i8* %sk, i64 23
  %386 = load i8, i8* %arrayidx.i37.23, align 1, !tbaa !7
  %387 = load i8, i8* %arrayidx3.i.23.pre-phi, align 1, !tbaa !7
  %xor16.i.23 = xor i8 %387, %386
  %and18.i.23 = and i8 %xor16.i.23, %selector.0
  %xor819.i.23 = xor i8 %and18.i.23, %387
  store i8 %xor819.i.23, i8* %arrayidx3.i.23.pre-phi, align 1, !tbaa !7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %arrayidx23.pre-phi, i8* align 1 %ct, i64 402, i1 false)
  call void @shake256(i8* %ss, i64 24, i8* nonnull %4, i64 426) #10
  call void @llvm.lifetime.end.p0i8(i64 426, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 378, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 126, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #10
  ret i32 0
}

declare void @mp_sub503_p2(i64*, i64*, i64*) local_unnamed_addr #5

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

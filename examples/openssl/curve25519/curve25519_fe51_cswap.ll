; ModuleID = 'crypto/ec/curve25519.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define void @fe51_cswap(i64* nocapture %f, i64* nocapture %g, i32 %b) #0 {
entry:
  %conv = zext i32 %b to i64
  %sub = sub nsw i64 0, %conv
  %0 = load i64, i64* %f, align 8, !tbaa !5
  %1 = load i64, i64* %g, align 8, !tbaa !5
  %xor = xor i64 %1, %0
  %and = and i64 %xor, %sub
  %xor6 = xor i64 %and, %0
  store i64 %xor6, i64* %f, align 8, !tbaa !5
  %2 = load i64, i64* %g, align 8, !tbaa !5
  %xor9 = xor i64 %and, %2
  store i64 %xor9, i64* %g, align 8, !tbaa !5
  %arrayidx.1 = getelementptr inbounds i64, i64* %f, i64 1
  %3 = load i64, i64* %arrayidx.1, align 8, !tbaa !5
  %arrayidx3.1 = getelementptr inbounds i64, i64* %g, i64 1
  %4 = load i64, i64* %arrayidx3.1, align 8, !tbaa !5
  %xor.1 = xor i64 %4, %3
  %and.1 = and i64 %xor.1, %sub
  %xor6.1 = xor i64 %and.1, %3
  store i64 %xor6.1, i64* %arrayidx.1, align 8, !tbaa !5
  %5 = load i64, i64* %arrayidx3.1, align 8, !tbaa !5
  %xor9.1 = xor i64 %and.1, %5
  store i64 %xor9.1, i64* %arrayidx3.1, align 8, !tbaa !5
  %arrayidx.2 = getelementptr inbounds i64, i64* %f, i64 2
  %6 = load i64, i64* %arrayidx.2, align 8, !tbaa !5
  %arrayidx3.2 = getelementptr inbounds i64, i64* %g, i64 2
  %7 = load i64, i64* %arrayidx3.2, align 8, !tbaa !5
  %xor.2 = xor i64 %7, %6
  %and.2 = and i64 %xor.2, %sub
  %xor6.2 = xor i64 %and.2, %6
  store i64 %xor6.2, i64* %arrayidx.2, align 8, !tbaa !5
  %8 = load i64, i64* %arrayidx3.2, align 8, !tbaa !5
  %xor9.2 = xor i64 %and.2, %8
  store i64 %xor9.2, i64* %arrayidx3.2, align 8, !tbaa !5
  %arrayidx.3 = getelementptr inbounds i64, i64* %f, i64 3
  %9 = load i64, i64* %arrayidx.3, align 8, !tbaa !5
  %arrayidx3.3 = getelementptr inbounds i64, i64* %g, i64 3
  %10 = load i64, i64* %arrayidx3.3, align 8, !tbaa !5
  %xor.3 = xor i64 %10, %9
  %and.3 = and i64 %xor.3, %sub
  %xor6.3 = xor i64 %and.3, %9
  store i64 %xor6.3, i64* %arrayidx.3, align 8, !tbaa !5
  %11 = load i64, i64* %arrayidx3.3, align 8, !tbaa !5
  %xor9.3 = xor i64 %and.3, %11
  store i64 %xor9.3, i64* %arrayidx3.3, align 8, !tbaa !5
  %arrayidx.4 = getelementptr inbounds i64, i64* %f, i64 4
  %12 = load i64, i64* %arrayidx.4, align 8, !tbaa !5
  %arrayidx3.4 = getelementptr inbounds i64, i64* %g, i64 4
  %13 = load i64, i64* %arrayidx3.4, align 8, !tbaa !5
  %xor.4 = xor i64 %13, %12
  %and.4 = and i64 %xor.4, %sub
  %xor6.4 = xor i64 %and.4, %12
  store i64 %xor6.4, i64* %arrayidx.4, align 8, !tbaa !5
  %14 = load i64, i64* %arrayidx3.4, align 8, !tbaa !5
  %xor9.4 = xor i64 %and.4, %14
  store i64 %xor9.4, i64* %arrayidx3.4, align 8, !tbaa !5
  ret void
}

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long long", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !3, i64 0}

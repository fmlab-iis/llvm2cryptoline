; ModuleID = 'crypto/ec/curve25519.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define void @fe51_add(i64* nocapture %h, i64* nocapture readonly %f, i64* nocapture readonly %g) #0 {
entry:
  %0 = load i64, i64* %f, align 8, !tbaa !2
  %1 = load i64, i64* %g, align 8, !tbaa !2
  %add = add i64 %1, %0
  store i64 %add, i64* %h, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds i64, i64* %f, i64 1
  %2 = load i64, i64* %arrayidx3, align 8, !tbaa !2
  %arrayidx4 = getelementptr inbounds i64, i64* %g, i64 1
  %3 = load i64, i64* %arrayidx4, align 8, !tbaa !2
  %add5 = add i64 %3, %2
  %arrayidx6 = getelementptr inbounds i64, i64* %h, i64 1
  store i64 %add5, i64* %arrayidx6, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds i64, i64* %f, i64 2
  %4 = load i64, i64* %arrayidx7, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds i64, i64* %g, i64 2
  %5 = load i64, i64* %arrayidx8, align 8, !tbaa !2
  %add9 = add i64 %5, %4
  %arrayidx10 = getelementptr inbounds i64, i64* %h, i64 2
  store i64 %add9, i64* %arrayidx10, align 8, !tbaa !2
  %arrayidx11 = getelementptr inbounds i64, i64* %f, i64 3
  %6 = load i64, i64* %arrayidx11, align 8, !tbaa !2
  %arrayidx12 = getelementptr inbounds i64, i64* %g, i64 3
  %7 = load i64, i64* %arrayidx12, align 8, !tbaa !2
  %add13 = add i64 %7, %6
  %arrayidx14 = getelementptr inbounds i64, i64* %h, i64 3
  store i64 %add13, i64* %arrayidx14, align 8, !tbaa !2
  %arrayidx15 = getelementptr inbounds i64, i64* %f, i64 4
  %8 = load i64, i64* %arrayidx15, align 8, !tbaa !2
  %arrayidx16 = getelementptr inbounds i64, i64* %g, i64 4
  %9 = load i64, i64* %arrayidx16, align 8, !tbaa !2
  %add17 = add i64 %9, %8
  %arrayidx18 = getelementptr inbounds i64, i64* %h, i64 4
  store i64 %add17, i64* %arrayidx18, align 8, !tbaa !2
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
!3 = !{!"long long", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!4, !4, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !4, i64 0}

; ModuleID = 'crypto/ec/curve25519.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define void @fe51_sub(i64* nocapture %h, i64* nocapture readonly %f, i64* nocapture readonly %g) #0 {
entry:
  %0 = load i64, i64* %f, align 8, !tbaa !5
  %add = add i64 %0, 4503599627370458
  %1 = load i64, i64* %g, align 8, !tbaa !5
  %sub = sub i64 %add, %1
  store i64 %sub, i64* %h, align 8, !tbaa !5
  %arrayidx3 = getelementptr inbounds i64, i64* %f, i64 1
  %2 = load i64, i64* %arrayidx3, align 8, !tbaa !5
  %add4 = add i64 %2, 4503599627370494
  %arrayidx5 = getelementptr inbounds i64, i64* %g, i64 1
  %3 = load i64, i64* %arrayidx5, align 8, !tbaa !5
  %sub6 = sub i64 %add4, %3
  %arrayidx7 = getelementptr inbounds i64, i64* %h, i64 1
  store i64 %sub6, i64* %arrayidx7, align 8, !tbaa !5
  %arrayidx8 = getelementptr inbounds i64, i64* %f, i64 2
  %4 = load i64, i64* %arrayidx8, align 8, !tbaa !5
  %add9 = add i64 %4, 4503599627370494
  %arrayidx10 = getelementptr inbounds i64, i64* %g, i64 2
  %5 = load i64, i64* %arrayidx10, align 8, !tbaa !5
  %sub11 = sub i64 %add9, %5
  %arrayidx12 = getelementptr inbounds i64, i64* %h, i64 2
  store i64 %sub11, i64* %arrayidx12, align 8, !tbaa !5
  %arrayidx13 = getelementptr inbounds i64, i64* %f, i64 3
  %6 = load i64, i64* %arrayidx13, align 8, !tbaa !5
  %add14 = add i64 %6, 4503599627370494
  %arrayidx15 = getelementptr inbounds i64, i64* %g, i64 3
  %7 = load i64, i64* %arrayidx15, align 8, !tbaa !5
  %sub16 = sub i64 %add14, %7
  %arrayidx17 = getelementptr inbounds i64, i64* %h, i64 3
  store i64 %sub16, i64* %arrayidx17, align 8, !tbaa !5
  %arrayidx18 = getelementptr inbounds i64, i64* %f, i64 4
  %8 = load i64, i64* %arrayidx18, align 8, !tbaa !5
  %add19 = add i64 %8, 4503599627370494
  %arrayidx20 = getelementptr inbounds i64, i64* %g, i64 4
  %9 = load i64, i64* %arrayidx20, align 8, !tbaa !5
  %sub21 = sub i64 %add19, %9
  %arrayidx22 = getelementptr inbounds i64, i64* %h, i64 4
  store i64 %sub21, i64* %arrayidx22, align 8, !tbaa !5
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

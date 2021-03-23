; ModuleID = 'reduce.c'
source_filename = "reduce.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: norecurse nounwind readnone ssp uwtable
define signext i16 @PQCLEAN_KYBER512_CLEAN_montgomery_reduce(i32 %a) local_unnamed_addr #0 {
entry:
  %sext = mul i32 %a, -218038272
  %conv2 = ashr exact i32 %sext, 16
  %0 = mul nsw i32 %conv2, -3329
  %sub = add i32 %0, %a
  %1 = lshr i32 %sub, 16
  %conv4 = trunc i32 %1 to i16
  ret i16 %conv4
}

; Function Attrs: norecurse nounwind readnone ssp uwtable
define signext i16 @PQCLEAN_KYBER512_CLEAN_barrett_reduce(i16 signext %a) local_unnamed_addr #0 {
entry:
  %conv = sext i16 %a to i32
  %mul = mul nsw i32 %conv, 20159
  %add = add nsw i32 %mul, 33554432
  %shr = ashr i32 %add, 26
  %sext = mul i32 %shr, 218169344
  %0 = lshr exact i32 %sext, 16
  %1 = trunc i32 %0 to i16
  %conv7 = sub i16 %a, %1
  ret i16 %conv7
}

attributes #0 = { norecurse nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}

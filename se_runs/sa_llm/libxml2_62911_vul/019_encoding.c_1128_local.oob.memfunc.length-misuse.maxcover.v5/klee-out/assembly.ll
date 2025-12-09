; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/019_encoding.c_1128_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/019_encoding.c_1128_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_62911_vul/019_encoding.c_1128_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca [100 x i8], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @xmlInitParser(), !dbg !15
  call void @llvm.dbg.declare(metadata [100 x i8]* %2, metadata !16, metadata !DIExpression()), !dbg !21
  %4 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0, !dbg !22
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 100, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)), !dbg !23
  %5 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 99, !dbg !24
  store i8 0, i8* %5, align 1, !dbg !25
  call void @llvm.dbg.declare(metadata i32* %3, metadata !26, metadata !DIExpression()), !dbg !27
  %6 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0, !dbg !28
  %7 = call i32 @xmlDelEncodingAlias(i8* noundef %6), !dbg !29
  store i32 %7, i32* %3, align 4, !dbg !27
  %8 = load i32, i32* %3, align 4, !dbg !30
  %9 = icmp eq i32 %8, 0, !dbg !32
  br i1 %9, label %10, label %12, !dbg !33

10:                                               ; preds = %0
  %11 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.2, i64 0, i64 0), i32 noundef 24, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !34
  br label %12, !dbg !36

12:                                               ; preds = %10, %0
  call void @xmlCleanupParser(), !dbg !37
  ret i32 0, !dbg !38
}

declare void @xmlInitParser() #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #1

declare i32 @xmlDelEncodingAlias(i8* noundef) #1

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlCleanupParser() #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/019_encoding.c_1128_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "059eb76a633a5687ad3013430759ca3a")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.6"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !11, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocation(line: 8, column: 5, scope: !10)
!16 = !DILocalVariable(name: "alias", scope: !10, file: !1, line: 11, type: !17)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 800, elements: !19)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !{!20}
!20 = !DISubrange(count: 100)
!21 = !DILocation(line: 11, column: 10, scope: !10)
!22 = !DILocation(line: 12, column: 24, scope: !10)
!23 = !DILocation(line: 12, column: 5, scope: !10)
!24 = !DILocation(line: 14, column: 5, scope: !10)
!25 = !DILocation(line: 14, column: 28, scope: !10)
!26 = !DILocalVariable(name: "result", scope: !10, file: !1, line: 17, type: !13)
!27 = !DILocation(line: 17, column: 9, scope: !10)
!28 = !DILocation(line: 17, column: 38, scope: !10)
!29 = !DILocation(line: 17, column: 18, scope: !10)
!30 = !DILocation(line: 23, column: 9, scope: !31)
!31 = distinct !DILexicalBlock(scope: !10, file: !1, line: 23, column: 9)
!32 = !DILocation(line: 23, column: 16, scope: !31)
!33 = !DILocation(line: 23, column: 9, scope: !10)
!34 = !DILocation(line: 24, column: 9, scope: !35)
!35 = distinct !DILexicalBlock(scope: !31, file: !1, line: 23, column: 22)
!36 = !DILocation(line: 25, column: 5, scope: !35)
!37 = !DILocation(line: 28, column: 5, scope: !10)
!38 = !DILocation(line: 29, column: 5, scope: !10)

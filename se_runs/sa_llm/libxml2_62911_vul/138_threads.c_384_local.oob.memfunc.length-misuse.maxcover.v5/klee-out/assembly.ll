; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/138_threads.c_384_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/138_threads.c_384_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"pthread_id\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"thread_id\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/138_threads.c_384_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pthread_self() #0 !dbg !12 {
  %1 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %1, metadata !18, metadata !DIExpression()), !dbg !19
  %2 = bitcast i64* %1 to i8*, !dbg !20
  call void @klee_make_symbolic(i8* noundef %2, i64 noundef 8, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)), !dbg !21
  %3 = load i64, i64* %1, align 8, !dbg !22
  ret i64 %3, !dbg !23
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlGetThreadId() #0 !dbg !24 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !26, metadata !DIExpression()), !dbg !27
  store i32 0, i32* %1, align 4, !dbg !27
  ret i32 0, !dbg !28
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlInitParser() #0 !dbg !29 {
  ret void, !dbg !32
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !33 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !34, metadata !DIExpression()), !dbg !35
  %4 = bitcast i32* %2 to i8*, !dbg !36
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)), !dbg !37
  %5 = load i32, i32* %2, align 4, !dbg !38
  %6 = icmp sge i32 %5, 0, !dbg !39
  %7 = zext i1 %6 to i32, !dbg !39
  %8 = sext i32 %7 to i64, !dbg !38
  call void @klee_assume(i64 noundef %8), !dbg !40
  call void @xmlInitParser(), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %3, metadata !42, metadata !DIExpression()), !dbg !43
  %9 = call i32 @xmlGetThreadId(), !dbg !44
  store i32 %9, i32* %3, align 4, !dbg !43
  %10 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !45
  ret i32 0, !dbg !46
}

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/138_threads.c_384_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "b0ab16c98830c4307ee91d5d0dc1f7e2")
!2 = !{!3}
!3 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "pthread_self", scope: !1, file: !1, line: 15, type: !13, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !1, line: 14, baseType: !16)
!16 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!17 = !{}
!18 = !DILocalVariable(name: "id", scope: !12, file: !1, line: 16, type: !15)
!19 = !DILocation(line: 16, column: 15, scope: !12)
!20 = !DILocation(line: 17, column: 24, scope: !12)
!21 = !DILocation(line: 17, column: 5, scope: !12)
!22 = !DILocation(line: 18, column: 12, scope: !12)
!23 = !DILocation(line: 18, column: 5, scope: !12)
!24 = distinct !DISubprogram(name: "xmlGetThreadId", scope: !1, file: !1, line: 22, type: !25, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!25 = !DISubroutineType(types: !2)
!26 = !DILocalVariable(name: "ret", scope: !24, file: !1, line: 23, type: !3)
!27 = !DILocation(line: 23, column: 9, scope: !24)
!28 = !DILocation(line: 37, column: 5, scope: !24)
!29 = distinct !DISubprogram(name: "xmlInitParser", scope: !1, file: !1, line: 42, type: !30, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!30 = !DISubroutineType(types: !31)
!31 = !{null}
!32 = !DILocation(line: 44, column: 1, scope: !29)
!33 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 46, type: !25, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!34 = !DILocalVariable(name: "thread_id", scope: !33, file: !1, line: 47, type: !3)
!35 = !DILocation(line: 47, column: 9, scope: !33)
!36 = !DILocation(line: 50, column: 24, scope: !33)
!37 = !DILocation(line: 50, column: 5, scope: !33)
!38 = !DILocation(line: 53, column: 17, scope: !33)
!39 = !DILocation(line: 53, column: 27, scope: !33)
!40 = !DILocation(line: 53, column: 5, scope: !33)
!41 = !DILocation(line: 56, column: 5, scope: !33)
!42 = !DILocalVariable(name: "result", scope: !33, file: !1, line: 59, type: !3)
!43 = !DILocation(line: 59, column: 9, scope: !33)
!44 = !DILocation(line: 59, column: 18, scope: !33)
!45 = !DILocation(line: 69, column: 5, scope: !33)
!46 = !DILocation(line: 71, column: 5, scope: !33)

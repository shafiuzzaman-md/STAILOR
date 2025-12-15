; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/117_threads.c_638_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/117_threads.c_638_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"pthread_t_id\00", align 1
@libxml_is_threaded = external global i32, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"libxml_is_threaded\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_55980_vul/117_threads.c_638_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone readnone uwtable willreturn
define dso_local i64 @pthread_self() #0 !dbg !12 {
  %1 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %1, metadata !19, metadata !DIExpression()), !dbg !20
  %2 = bitcast i64* %1 to i8*, !dbg !21
  call void @klee_make_symbolic(i8* noundef %2, i64 noundef 8, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)), !dbg !22
  %3 = load i64, i64* %1, align 8, !dbg !23
  ret i64 %3, !dbg !24
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlGetThreadId() #3 !dbg !25 {
  ret i32 0, !dbg !27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #3 !dbg !28 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @klee_make_symbolic(i8* noundef bitcast (i32* @libxml_is_threaded to i8*), i64 noundef 4, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)), !dbg !29
  %3 = load i32, i32* @libxml_is_threaded, align 4, !dbg !30
  %4 = icmp ne i32 %3, 0, !dbg !31
  %5 = zext i1 %4 to i32, !dbg !31
  %6 = sext i32 %5 to i64, !dbg !30
  call void @klee_assume(i64 noundef %6), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %2, metadata !33, metadata !DIExpression()), !dbg !34
  %7 = call i32 @xmlGetThreadId(), !dbg !35
  store i32 %7, i32* %2, align 4, !dbg !34
  %8 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !36
  %9 = load i32, i32* %2, align 4, !dbg !37
  ret i32 %9, !dbg !38
}

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

attributes #0 = { noinline nounwind optnone readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/117_threads.c_638_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "f3c0722ed0101da60210c94f9c3a55b8")
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
!12 = distinct !DISubprogram(name: "pthread_self", scope: !1, file: !1, line: 13, type: !13, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !16, line: 27, baseType: !17)
!16 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "8a5acdbeec491eca11cf81cb1ef77ea7")
!17 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!18 = !{}
!19 = !DILocalVariable(name: "id", scope: !12, file: !1, line: 14, type: !15)
!20 = !DILocation(line: 14, column: 15, scope: !12)
!21 = !DILocation(line: 15, column: 24, scope: !12)
!22 = !DILocation(line: 15, column: 5, scope: !12)
!23 = !DILocation(line: 16, column: 12, scope: !12)
!24 = !DILocation(line: 16, column: 5, scope: !12)
!25 = distinct !DISubprogram(name: "xmlGetThreadId", scope: !1, file: !1, line: 20, type: !26, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!26 = !DISubroutineType(types: !2)
!27 = !DILocation(line: 34, column: 5, scope: !25)
!28 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 38, type: !26, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!29 = !DILocation(line: 40, column: 5, scope: !28)
!30 = !DILocation(line: 43, column: 17, scope: !28)
!31 = !DILocation(line: 43, column: 36, scope: !28)
!32 = !DILocation(line: 43, column: 5, scope: !28)
!33 = !DILocalVariable(name: "result", scope: !28, file: !1, line: 46, type: !3)
!34 = !DILocation(line: 46, column: 9, scope: !28)
!35 = !DILocation(line: 46, column: 18, scope: !28)
!36 = !DILocation(line: 56, column: 5, scope: !28)
!37 = !DILocation(line: 58, column: 12, scope: !28)
!38 = !DILocation(line: 58, column: 5, scope: !28)

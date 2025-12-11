; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/264_timsort.h_402_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/264_timsort.h_402_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"curr\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"(B <= size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/264_timsort.h_402_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.TIM_SORT = private unnamed_addr constant [45 x i8] c"void TIM_SORT(SORT_TYPE *, int, SORT_TYPE *)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"dst\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"storage\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TIM_SORT(i32* noundef %0, i32 noundef %1, i32* noundef %2) #0 !dbg !14 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !20, metadata !DIExpression()), !dbg !21
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %7, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i32* %8, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %9, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %10, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %11, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %12, metadata !34, metadata !DIExpression()), !dbg !35
  %13 = bitcast i32* %7 to i8*, !dbg !36
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !37
  %14 = bitcast i32* %8 to i8*, !dbg !38
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !39
  %15 = bitcast i32* %9 to i8*, !dbg !40
  call void @klee_make_symbolic(i8* noundef %15, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !41
  %16 = load i32, i32* %7, align 4, !dbg !42
  %17 = icmp sge i32 %16, 0, !dbg !43
  %18 = zext i1 %17 to i32, !dbg !43
  %19 = sext i32 %18 to i64, !dbg !42
  call void @klee_assume(i64 noundef %19), !dbg !44
  %20 = load i32, i32* %8, align 4, !dbg !45
  %21 = icmp sge i32 %20, 0, !dbg !46
  %22 = zext i1 %21 to i32, !dbg !46
  %23 = sext i32 %22 to i64, !dbg !45
  call void @klee_assume(i64 noundef %23), !dbg !47
  %24 = load i32, i32* %9, align 4, !dbg !48
  %25 = icmp sge i32 %24, 0, !dbg !49
  %26 = zext i1 %25 to i32, !dbg !49
  %27 = sext i32 %26 to i64, !dbg !48
  call void @klee_assume(i64 noundef %27), !dbg !50
  %28 = load i32, i32* %7, align 4, !dbg !51
  %29 = load i32, i32* %8, align 4, !dbg !52
  %30 = add nsw i32 %28, %29, !dbg !53
  %31 = load i32, i32* %9, align 4, !dbg !54
  %32 = add nsw i32 %30, %31, !dbg !55
  %33 = load i32, i32* %5, align 4, !dbg !56
  %34 = icmp sle i32 %32, %33, !dbg !57
  %35 = zext i1 %34 to i32, !dbg !57
  %36 = sext i32 %35 to i64, !dbg !51
  call void @klee_assume(i64 noundef %36), !dbg !58
  %37 = load i32, i32* %7, align 4, !dbg !59
  %38 = load i32, i32* %8, align 4, !dbg !60
  %39 = add nsw i32 %37, %38, !dbg !61
  %40 = icmp sge i32 %39, 0, !dbg !62
  %41 = zext i1 %40 to i32, !dbg !62
  %42 = sext i32 %41 to i64, !dbg !59
  call void @klee_assume(i64 noundef %42), !dbg !63
  %43 = load i32, i32* %9, align 4, !dbg !64
  %44 = load i32, i32* %5, align 4, !dbg !64
  %45 = icmp sle i32 %43, %44, !dbg !64
  br i1 %45, label %46, label %48, !dbg !64

46:                                               ; preds = %3
  br i1 true, label %47, label %48, !dbg !64

47:                                               ; preds = %46
  br label %50, !dbg !64

48:                                               ; preds = %46, %3
  %49 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.5, i64 0, i64 0), i32 noundef 34, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.TIM_SORT, i64 0, i64 0)), !dbg !64
  br label %50, !dbg !64

50:                                               ; preds = %48, %47
  %51 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.5, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.TIM_SORT, i64 0, i64 0)), !dbg !65
  ret void, !dbg !66
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !67 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !70, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.declare(metadata i32** %3, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata i32** %4, metadata !74, metadata !DIExpression()), !dbg !75
  %5 = bitcast i32* %2 to i8*, !dbg !76
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)), !dbg !77
  %6 = load i32, i32* %2, align 4, !dbg !78
  %7 = icmp sge i32 %6, 0, !dbg !79
  %8 = zext i1 %7 to i32, !dbg !79
  %9 = sext i32 %8 to i64, !dbg !78
  call void @klee_assume(i64 noundef %9), !dbg !80
  %10 = load i32, i32* %2, align 4, !dbg !81
  %11 = icmp sle i32 %10, 1024, !dbg !82
  %12 = zext i1 %11 to i32, !dbg !82
  %13 = sext i32 %12 to i64, !dbg !81
  call void @klee_assume(i64 noundef %13), !dbg !83
  %14 = load i32, i32* %2, align 4, !dbg !84
  %15 = sext i32 %14 to i64, !dbg !84
  %16 = mul i64 %15, 4, !dbg !85
  %17 = call noalias i8* @malloc(i64 noundef %16) #5, !dbg !86
  %18 = bitcast i8* %17 to i32*, !dbg !87
  store i32* %18, i32** %3, align 8, !dbg !88
  %19 = load i32, i32* %2, align 4, !dbg !89
  %20 = sext i32 %19 to i64, !dbg !89
  %21 = mul i64 %20, 4, !dbg !90
  %22 = call noalias i8* @malloc(i64 noundef %21) #5, !dbg !91
  %23 = bitcast i8* %22 to i32*, !dbg !92
  store i32* %23, i32** %4, align 8, !dbg !93
  %24 = load i32, i32* %2, align 4, !dbg !94
  %25 = icmp sgt i32 %24, 0, !dbg !96
  br i1 %25, label %26, label %37, !dbg !97

26:                                               ; preds = %0
  %27 = load i32*, i32** %3, align 8, !dbg !98
  %28 = bitcast i32* %27 to i8*, !dbg !98
  %29 = load i32, i32* %2, align 4, !dbg !100
  %30 = sext i32 %29 to i64, !dbg !100
  %31 = mul i64 %30, 4, !dbg !101
  call void @klee_make_symbolic(i8* noundef %28, i64 noundef %31, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)), !dbg !102
  %32 = load i32*, i32** %4, align 8, !dbg !103
  %33 = bitcast i32* %32 to i8*, !dbg !103
  %34 = load i32, i32* %2, align 4, !dbg !104
  %35 = sext i32 %34 to i64, !dbg !104
  %36 = mul i64 %35, 4, !dbg !105
  call void @klee_make_symbolic(i8* noundef %33, i64 noundef %36, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)), !dbg !106
  br label %37, !dbg !107

37:                                               ; preds = %26, %0
  %38 = load i32*, i32** %3, align 8, !dbg !108
  %39 = load i32, i32* %2, align 4, !dbg !109
  %40 = load i32*, i32** %4, align 8, !dbg !110
  call void @TIM_SORT(i32* noundef %38, i32 noundef %39, i32* noundef %40), !dbg !111
  %41 = load i32*, i32** %3, align 8, !dbg !112
  %42 = bitcast i32* %41 to i8*, !dbg !112
  call void @free(i8* noundef %42) #5, !dbg !113
  %43 = load i32*, i32** %4, align 8, !dbg !114
  %44 = bitcast i32* %43 to i8*, !dbg !114
  call void @free(i8* noundef %44) #5, !dbg !115
  ret i32 0, !dbg !116
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/264_timsort.h_402_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "dcd23b94bc5c3cfba80d2e49b13b1b03")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "SORT_TYPE", file: !1, line: 10, baseType: !5)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "TIM_SORT", scope: !1, file: !1, line: 13, type: !15, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !3, !5, !3}
!17 = !{}
!18 = !DILocalVariable(name: "dst", arg: 1, scope: !14, file: !1, line: 13, type: !3)
!19 = !DILocation(line: 13, column: 26, scope: !14)
!20 = !DILocalVariable(name: "size", arg: 2, scope: !14, file: !1, line: 13, type: !5)
!21 = !DILocation(line: 13, column: 35, scope: !14)
!22 = !DILocalVariable(name: "storage", arg: 3, scope: !14, file: !1, line: 13, type: !3)
!23 = !DILocation(line: 13, column: 52, scope: !14)
!24 = !DILocalVariable(name: "curr", scope: !14, file: !1, line: 14, type: !5)
!25 = !DILocation(line: 14, column: 9, scope: !14)
!26 = !DILocalVariable(name: "A", scope: !14, file: !1, line: 14, type: !5)
!27 = !DILocation(line: 14, column: 15, scope: !14)
!28 = !DILocalVariable(name: "B", scope: !14, file: !1, line: 14, type: !5)
!29 = !DILocation(line: 14, column: 18, scope: !14)
!30 = !DILocalVariable(name: "i", scope: !14, file: !1, line: 15, type: !5)
!31 = !DILocation(line: 15, column: 9, scope: !14)
!32 = !DILocalVariable(name: "j", scope: !14, file: !1, line: 15, type: !5)
!33 = !DILocation(line: 15, column: 12, scope: !14)
!34 = !DILocalVariable(name: "k", scope: !14, file: !1, line: 15, type: !5)
!35 = !DILocation(line: 15, column: 15, scope: !14)
!36 = !DILocation(line: 18, column: 24, scope: !14)
!37 = !DILocation(line: 18, column: 5, scope: !14)
!38 = !DILocation(line: 19, column: 24, scope: !14)
!39 = !DILocation(line: 19, column: 5, scope: !14)
!40 = !DILocation(line: 20, column: 24, scope: !14)
!41 = !DILocation(line: 20, column: 5, scope: !14)
!42 = !DILocation(line: 23, column: 17, scope: !14)
!43 = !DILocation(line: 23, column: 22, scope: !14)
!44 = !DILocation(line: 23, column: 5, scope: !14)
!45 = !DILocation(line: 24, column: 17, scope: !14)
!46 = !DILocation(line: 24, column: 19, scope: !14)
!47 = !DILocation(line: 24, column: 5, scope: !14)
!48 = !DILocation(line: 25, column: 17, scope: !14)
!49 = !DILocation(line: 25, column: 19, scope: !14)
!50 = !DILocation(line: 25, column: 5, scope: !14)
!51 = !DILocation(line: 26, column: 17, scope: !14)
!52 = !DILocation(line: 26, column: 24, scope: !14)
!53 = !DILocation(line: 26, column: 22, scope: !14)
!54 = !DILocation(line: 26, column: 28, scope: !14)
!55 = !DILocation(line: 26, column: 26, scope: !14)
!56 = !DILocation(line: 26, column: 33, scope: !14)
!57 = !DILocation(line: 26, column: 30, scope: !14)
!58 = !DILocation(line: 26, column: 5, scope: !14)
!59 = !DILocation(line: 27, column: 17, scope: !14)
!60 = !DILocation(line: 27, column: 24, scope: !14)
!61 = !DILocation(line: 27, column: 22, scope: !14)
!62 = !DILocation(line: 27, column: 26, scope: !14)
!63 = !DILocation(line: 27, column: 5, scope: !14)
!64 = !DILocation(line: 34, column: 5, scope: !14)
!65 = !DILocation(line: 37, column: 5, scope: !14)
!66 = !DILocation(line: 38, column: 1, scope: !14)
!67 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 40, type: !68, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!68 = !DISubroutineType(types: !69)
!69 = !{!5}
!70 = !DILocalVariable(name: "size", scope: !67, file: !1, line: 41, type: !5)
!71 = !DILocation(line: 41, column: 9, scope: !67)
!72 = !DILocalVariable(name: "dst", scope: !67, file: !1, line: 42, type: !3)
!73 = !DILocation(line: 42, column: 16, scope: !67)
!74 = !DILocalVariable(name: "storage", scope: !67, file: !1, line: 43, type: !3)
!75 = !DILocation(line: 43, column: 16, scope: !67)
!76 = !DILocation(line: 46, column: 24, scope: !67)
!77 = !DILocation(line: 46, column: 5, scope: !67)
!78 = !DILocation(line: 47, column: 17, scope: !67)
!79 = !DILocation(line: 47, column: 22, scope: !67)
!80 = !DILocation(line: 47, column: 5, scope: !67)
!81 = !DILocation(line: 48, column: 17, scope: !67)
!82 = !DILocation(line: 48, column: 22, scope: !67)
!83 = !DILocation(line: 48, column: 5, scope: !67)
!84 = !DILocation(line: 51, column: 31, scope: !67)
!85 = !DILocation(line: 51, column: 36, scope: !67)
!86 = !DILocation(line: 51, column: 24, scope: !67)
!87 = !DILocation(line: 51, column: 11, scope: !67)
!88 = !DILocation(line: 51, column: 9, scope: !67)
!89 = !DILocation(line: 52, column: 35, scope: !67)
!90 = !DILocation(line: 52, column: 40, scope: !67)
!91 = !DILocation(line: 52, column: 28, scope: !67)
!92 = !DILocation(line: 52, column: 15, scope: !67)
!93 = !DILocation(line: 52, column: 13, scope: !67)
!94 = !DILocation(line: 55, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !67, file: !1, line: 55, column: 9)
!96 = !DILocation(line: 55, column: 14, scope: !95)
!97 = !DILocation(line: 55, column: 9, scope: !67)
!98 = !DILocation(line: 56, column: 28, scope: !99)
!99 = distinct !DILexicalBlock(scope: !95, file: !1, line: 55, column: 19)
!100 = !DILocation(line: 56, column: 33, scope: !99)
!101 = !DILocation(line: 56, column: 38, scope: !99)
!102 = !DILocation(line: 56, column: 9, scope: !99)
!103 = !DILocation(line: 57, column: 28, scope: !99)
!104 = !DILocation(line: 57, column: 37, scope: !99)
!105 = !DILocation(line: 57, column: 42, scope: !99)
!106 = !DILocation(line: 57, column: 9, scope: !99)
!107 = !DILocation(line: 58, column: 5, scope: !99)
!108 = !DILocation(line: 61, column: 14, scope: !67)
!109 = !DILocation(line: 61, column: 19, scope: !67)
!110 = !DILocation(line: 61, column: 25, scope: !67)
!111 = !DILocation(line: 61, column: 5, scope: !67)
!112 = !DILocation(line: 64, column: 10, scope: !67)
!113 = !DILocation(line: 64, column: 5, scope: !67)
!114 = !DILocation(line: 65, column: 10, scope: !67)
!115 = !DILocation(line: 65, column: 5, scope: !67)
!116 = !DILocation(line: 67, column: 5, scope: !67)

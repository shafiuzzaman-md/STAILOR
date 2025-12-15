; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/198_runtest.c_628_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/198_runtest.c_628_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"(res1 <= 4096) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_55980_vul/198_runtest.c_628_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [48 x i8] c"int target_function(const char *, const char *)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"r1\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"r2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_function(i8* noundef %0, i8* noundef %1) #0 !dbg !10 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [4096 x i8], align 16
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !18, metadata !DIExpression()), !dbg !19
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %6, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %7, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i64* %8, metadata !26, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i64* %9, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i64* %10, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata [4096 x i8]* %11, metadata !37, metadata !DIExpression()), !dbg !41
  %12 = load i8*, i8** %4, align 8, !dbg !42
  %13 = call i32 (i8*, i32, ...) @open(i8* noundef %12, i32 noundef 0), !dbg !43
  store i32 %13, i32* %6, align 4, !dbg !44
  %14 = load i32, i32* %6, align 4, !dbg !45
  %15 = icmp slt i32 %14, 0, !dbg !47
  br i1 %15, label %16, label %17, !dbg !48

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !49
  br label %63, !dbg !49

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8, !dbg !51
  %19 = call i32 (i8*, i32, ...) @open(i8* noundef %18, i32 noundef 577, i32 noundef 420), !dbg !52
  store i32 %19, i32* %7, align 4, !dbg !53
  %20 = load i32, i32* %7, align 4, !dbg !54
  %21 = icmp slt i32 %20, 0, !dbg !56
  br i1 %21, label %22, label %25, !dbg !57

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4, !dbg !58
  %24 = call i32 @close(i32 noundef %23), !dbg !60
  store i32 -1, i32* %3, align 4, !dbg !61
  br label %63, !dbg !61

25:                                               ; preds = %17
  store i64 0, i64* %10, align 8, !dbg !62
  br label %26, !dbg !63

26:                                               ; preds = %57, %25
  %27 = load i32, i32* %6, align 4, !dbg !64
  %28 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0, !dbg !66
  %29 = call i64 @read(i32 noundef %27, i8* noundef %28, i64 noundef 4096), !dbg !67
  store i64 %29, i64* %8, align 8, !dbg !68
  %30 = load i64, i64* %8, align 8, !dbg !69
  %31 = icmp sle i64 %30, 4096, !dbg !69
  br i1 %31, label %32, label %34, !dbg !69

32:                                               ; preds = %26
  br i1 true, label %33, label %34, !dbg !69

33:                                               ; preds = %32
  br label %36, !dbg !69

34:                                               ; preds = %32, %26
  %35 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !69
  br label %36, !dbg !69

36:                                               ; preds = %34, %33
  %37 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !70
  %38 = load i64, i64* %8, align 8, !dbg !71
  %39 = icmp sle i64 %38, 0, !dbg !73
  br i1 %39, label %40, label %41, !dbg !74

40:                                               ; preds = %36
  br label %58, !dbg !75

41:                                               ; preds = %36
  %42 = load i64, i64* %8, align 8, !dbg !76
  %43 = load i64, i64* %10, align 8, !dbg !77
  %44 = add nsw i64 %43, %42, !dbg !77
  store i64 %44, i64* %10, align 8, !dbg !77
  %45 = load i32, i32* %7, align 4, !dbg !78
  %46 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0, !dbg !79
  %47 = load i64, i64* %8, align 8, !dbg !80
  %48 = call i64 @write(i32 noundef %45, i8* noundef %46, i64 noundef %47), !dbg !81
  store i64 %48, i64* %9, align 8, !dbg !82
  %49 = load i64, i64* %9, align 8, !dbg !83
  %50 = icmp sle i64 %49, 0, !dbg !85
  br i1 %50, label %55, label %51, !dbg !86

51:                                               ; preds = %41
  %52 = load i64, i64* %9, align 8, !dbg !87
  %53 = load i64, i64* %8, align 8, !dbg !88
  %54 = icmp ne i64 %52, %53, !dbg !89
  br i1 %54, label %55, label %56, !dbg !90

55:                                               ; preds = %51, %41
  br label %58, !dbg !91

56:                                               ; preds = %51
  br label %57, !dbg !92

57:                                               ; preds = %56
  br i1 true, label %26, label %58, !dbg !92, !llvm.loop !93

58:                                               ; preds = %57, %55, %40
  %59 = load i32, i32* %7, align 4, !dbg !95
  %60 = call i32 @close(i32 noundef %59), !dbg !96
  %61 = load i32, i32* %6, align 4, !dbg !97
  %62 = call i32 @close(i32 noundef %61), !dbg !98
  store i32 0, i32* %3, align 4, !dbg !99
  br label %63, !dbg !99

63:                                               ; preds = %58, %22, %16
  %64 = load i32, i32* %3, align 4, !dbg !100
  ret i32 %64, !dbg !100
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @open(i8* noundef, i32 noundef, ...) #2

declare i32 @close(i32 noundef) #2

declare i64 @read(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare i64 @write(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !101 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !104, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !109, metadata !DIExpression()), !dbg !110
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !111
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 256, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)), !dbg !112
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !113
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 256, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)), !dbg !114
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !115
  store i8 0, i8* %6, align 1, !dbg !116
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !117
  store i8 0, i8* %7, align 1, !dbg !118
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !119
  %9 = load i8, i8* %8, align 16, !dbg !119
  %10 = sext i8 %9 to i32, !dbg !119
  %11 = icmp ne i32 %10, 0, !dbg !120
  %12 = zext i1 %11 to i32, !dbg !120
  %13 = sext i32 %12 to i64, !dbg !119
  call void @klee_assume(i64 noundef %13), !dbg !121
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !122
  %15 = load i8, i8* %14, align 16, !dbg !122
  %16 = sext i8 %15 to i32, !dbg !122
  %17 = icmp ne i32 %16, 0, !dbg !123
  %18 = zext i1 %17 to i32, !dbg !123
  %19 = sext i32 %18 to i64, !dbg !122
  call void @klee_assume(i64 noundef %19), !dbg !124
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !125
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !126
  %22 = call i32 @target_function(i8* noundef %20, i8* noundef %21), !dbg !127
  ret i32 0, !dbg !128
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/198_runtest.c_628_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "4676c2fdbbc061a6499521ccc33792a7")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.6"}
!10 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 12, type: !11, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !14}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !{}
!18 = !DILocalVariable(name: "r1", arg: 1, scope: !10, file: !1, line: 12, type: !14)
!19 = !DILocation(line: 12, column: 33, scope: !10)
!20 = !DILocalVariable(name: "r2", arg: 2, scope: !10, file: !1, line: 12, type: !14)
!21 = !DILocation(line: 12, column: 49, scope: !10)
!22 = !DILocalVariable(name: "fd1", scope: !10, file: !1, line: 13, type: !13)
!23 = !DILocation(line: 13, column: 9, scope: !10)
!24 = !DILocalVariable(name: "fd2", scope: !10, file: !1, line: 13, type: !13)
!25 = !DILocation(line: 13, column: 14, scope: !10)
!26 = !DILocalVariable(name: "res1", scope: !10, file: !1, line: 14, type: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !28, line: 220, baseType: !29)
!28 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "877e832a8bb8424f9180387a13787475")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !30, line: 194, baseType: !31)
!30 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!31 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!32 = !DILocation(line: 14, column: 13, scope: !10)
!33 = !DILocalVariable(name: "res2", scope: !10, file: !1, line: 14, type: !27)
!34 = !DILocation(line: 14, column: 19, scope: !10)
!35 = !DILocalVariable(name: "total", scope: !10, file: !1, line: 15, type: !31)
!36 = !DILocation(line: 15, column: 10, scope: !10)
!37 = !DILocalVariable(name: "bytes1", scope: !10, file: !1, line: 16, type: !38)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 32768, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 4096)
!41 = !DILocation(line: 16, column: 10, scope: !10)
!42 = !DILocation(line: 18, column: 16, scope: !10)
!43 = !DILocation(line: 18, column: 11, scope: !10)
!44 = !DILocation(line: 18, column: 9, scope: !10)
!45 = !DILocation(line: 19, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !10, file: !1, line: 19, column: 9)
!47 = !DILocation(line: 19, column: 13, scope: !46)
!48 = !DILocation(line: 19, column: 9, scope: !10)
!49 = !DILocation(line: 20, column: 9, scope: !50)
!50 = distinct !DILexicalBlock(scope: !46, file: !1, line: 19, column: 18)
!51 = !DILocation(line: 23, column: 16, scope: !10)
!52 = !DILocation(line: 23, column: 11, scope: !10)
!53 = !DILocation(line: 23, column: 9, scope: !10)
!54 = !DILocation(line: 24, column: 9, scope: !55)
!55 = distinct !DILexicalBlock(scope: !10, file: !1, line: 24, column: 9)
!56 = !DILocation(line: 24, column: 13, scope: !55)
!57 = !DILocation(line: 24, column: 9, scope: !10)
!58 = !DILocation(line: 25, column: 15, scope: !59)
!59 = distinct !DILexicalBlock(scope: !55, file: !1, line: 24, column: 18)
!60 = !DILocation(line: 25, column: 9, scope: !59)
!61 = !DILocation(line: 26, column: 9, scope: !59)
!62 = !DILocation(line: 29, column: 11, scope: !10)
!63 = !DILocation(line: 30, column: 5, scope: !10)
!64 = !DILocation(line: 32, column: 21, scope: !65)
!65 = distinct !DILexicalBlock(scope: !10, file: !1, line: 30, column: 8)
!66 = !DILocation(line: 32, column: 26, scope: !65)
!67 = !DILocation(line: 32, column: 16, scope: !65)
!68 = !DILocation(line: 32, column: 14, scope: !65)
!69 = !DILocation(line: 35, column: 9, scope: !65)
!70 = !DILocation(line: 38, column: 9, scope: !65)
!71 = !DILocation(line: 40, column: 13, scope: !72)
!72 = distinct !DILexicalBlock(scope: !65, file: !1, line: 40, column: 13)
!73 = !DILocation(line: 40, column: 18, scope: !72)
!74 = !DILocation(line: 40, column: 13, scope: !65)
!75 = !DILocation(line: 41, column: 13, scope: !72)
!76 = !DILocation(line: 42, column: 18, scope: !65)
!77 = !DILocation(line: 42, column: 15, scope: !65)
!78 = !DILocation(line: 43, column: 22, scope: !65)
!79 = !DILocation(line: 43, column: 27, scope: !65)
!80 = !DILocation(line: 43, column: 35, scope: !65)
!81 = !DILocation(line: 43, column: 16, scope: !65)
!82 = !DILocation(line: 43, column: 14, scope: !65)
!83 = !DILocation(line: 44, column: 13, scope: !84)
!84 = distinct !DILexicalBlock(scope: !65, file: !1, line: 44, column: 13)
!85 = !DILocation(line: 44, column: 18, scope: !84)
!86 = !DILocation(line: 44, column: 23, scope: !84)
!87 = !DILocation(line: 44, column: 26, scope: !84)
!88 = !DILocation(line: 44, column: 34, scope: !84)
!89 = !DILocation(line: 44, column: 31, scope: !84)
!90 = !DILocation(line: 44, column: 13, scope: !65)
!91 = !DILocation(line: 45, column: 13, scope: !84)
!92 = !DILocation(line: 46, column: 5, scope: !65)
!93 = distinct !{!93, !63, !94}
!94 = !DILocation(line: 46, column: 15, scope: !10)
!95 = !DILocation(line: 48, column: 11, scope: !10)
!96 = !DILocation(line: 48, column: 5, scope: !10)
!97 = !DILocation(line: 49, column: 11, scope: !10)
!98 = !DILocation(line: 49, column: 5, scope: !10)
!99 = !DILocation(line: 50, column: 5, scope: !10)
!100 = !DILocation(line: 51, column: 1, scope: !10)
!101 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !102, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!102 = !DISubroutineType(types: !103)
!103 = !{!13}
!104 = !DILocalVariable(name: "r1", scope: !101, file: !1, line: 55, type: !105)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 2048, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 256)
!108 = !DILocation(line: 55, column: 10, scope: !101)
!109 = !DILocalVariable(name: "r2", scope: !101, file: !1, line: 56, type: !105)
!110 = !DILocation(line: 56, column: 10, scope: !101)
!111 = !DILocation(line: 58, column: 24, scope: !101)
!112 = !DILocation(line: 58, column: 5, scope: !101)
!113 = !DILocation(line: 59, column: 24, scope: !101)
!114 = !DILocation(line: 59, column: 5, scope: !101)
!115 = !DILocation(line: 62, column: 5, scope: !101)
!116 = !DILocation(line: 62, column: 13, scope: !101)
!117 = !DILocation(line: 63, column: 5, scope: !101)
!118 = !DILocation(line: 63, column: 13, scope: !101)
!119 = !DILocation(line: 66, column: 17, scope: !101)
!120 = !DILocation(line: 66, column: 23, scope: !101)
!121 = !DILocation(line: 66, column: 5, scope: !101)
!122 = !DILocation(line: 67, column: 17, scope: !101)
!123 = !DILocation(line: 67, column: 23, scope: !101)
!124 = !DILocation(line: 67, column: 5, scope: !101)
!125 = !DILocation(line: 70, column: 21, scope: !101)
!126 = !DILocation(line: 70, column: 25, scope: !101)
!127 = !DILocation(line: 70, column: 5, scope: !101)
!128 = !DILocation(line: 72, column: 5, scope: !101)

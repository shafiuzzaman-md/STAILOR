; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/099_testlimits.c_115_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/099_testlimits.c_115_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hugeTest = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"URI\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"huge:test\00", align 1
@hugeTests = internal global [10 x %struct.hugeTest] zeroinitializer, align 16, !dbg !0
@currentTest = internal global i32 0, align 4, !dbg !7
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"(strlen(URI) >= 5) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/099_testlimits.c_115_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"huge:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !27 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !31, metadata !DIExpression()), !dbg !35
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !36
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 256, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !37
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !38
  %7 = load i8, i8* %6, align 1, !dbg !38
  %8 = sext i8 %7 to i32, !dbg !38
  %9 = icmp eq i32 %8, 0, !dbg !39
  %10 = zext i1 %9 to i32, !dbg !39
  %11 = sext i32 %10 to i64, !dbg !38
  call void @klee_assume(i64 noundef %11), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %3, metadata !41, metadata !DIExpression()), !dbg !43
  store i32 0, i32* %3, align 4, !dbg !43
  br label %12, !dbg !44

12:                                               ; preds = %20, %0
  %13 = load i32, i32* %3, align 4, !dbg !45
  %14 = icmp slt i32 %13, 10, !dbg !47
  br i1 %14, label %15, label %23, !dbg !48

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4, !dbg !49
  %17 = sext i32 %16 to i64, !dbg !51
  %18 = getelementptr inbounds [10 x %struct.hugeTest], [10 x %struct.hugeTest]* @hugeTests, i64 0, i64 %17, !dbg !51
  %19 = getelementptr inbounds %struct.hugeTest, %struct.hugeTest* %18, i32 0, i32 0, !dbg !52
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %19, align 8, !dbg !53
  br label %20, !dbg !54

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4, !dbg !55
  %22 = add nsw i32 %21, 1, !dbg !55
  store i32 %22, i32* %3, align 4, !dbg !55
  br label %12, !dbg !56, !llvm.loop !57

23:                                               ; preds = %12
  store i32 0, i32* @currentTest, align 4, !dbg !60
  call void @llvm.dbg.declare(metadata i8** %4, metadata !61, metadata !DIExpression()), !dbg !62
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !63
  %25 = call i8* @hugeOpen(i8* noundef %24), !dbg !64
  store i8* %25, i8** %4, align 8, !dbg !62
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !65
  %27 = call i64 @strlen(i8* noundef %26) #5, !dbg !65
  %28 = icmp uge i64 %27, 5, !dbg !65
  br i1 %28, label %29, label %31, !dbg !65

29:                                               ; preds = %23
  br i1 true, label %30, label %31, !dbg !65

30:                                               ; preds = %29
  br label %33, !dbg !65

31:                                               ; preds = %29, %23
  %32 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.4, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !65
  br label %33, !dbg !65

33:                                               ; preds = %31, %30
  %34 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.4, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !66
  ret i32 0, !dbg !67
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hugeOpen(i8* noundef %0) #0 !dbg !68 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !71, metadata !DIExpression()), !dbg !72
  %4 = load i8*, i8** %3, align 8, !dbg !73
  %5 = icmp eq i8* %4, null, !dbg !75
  br i1 %5, label %10, label %6, !dbg !76

6:                                                ; preds = %1
  %7 = load i8*, i8** %3, align 8, !dbg !77
  %8 = call i32 @strncmp(i8* noundef %7, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 noundef 5) #5, !dbg !78
  %9 = icmp ne i32 %8, 0, !dbg !78
  br i1 %9, label %10, label %11, !dbg !79

10:                                               ; preds = %6, %1
  store i8* null, i8** %2, align 8, !dbg !80
  br label %35, !dbg !80

11:                                               ; preds = %6
  store i32 0, i32* @currentTest, align 4, !dbg !81
  br label %12, !dbg !83

12:                                               ; preds = %31, %11
  %13 = load i32, i32* @currentTest, align 4, !dbg !84
  %14 = sext i32 %13 to i64, !dbg !84
  %15 = icmp ult i64 %14, 10, !dbg !86
  br i1 %15, label %16, label %34, !dbg !87

16:                                               ; preds = %12
  %17 = load i32, i32* @currentTest, align 4, !dbg !88
  %18 = sext i32 %17 to i64, !dbg !90
  %19 = getelementptr inbounds [10 x %struct.hugeTest], [10 x %struct.hugeTest]* @hugeTests, i64 0, i64 %18, !dbg !90
  %20 = getelementptr inbounds %struct.hugeTest, %struct.hugeTest* %19, i32 0, i32 0, !dbg !91
  %21 = load i8*, i8** %20, align 8, !dbg !91
  %22 = load i8*, i8** %3, align 8, !dbg !92
  %23 = call i32 @strcmp(i8* noundef %21, i8* noundef %22) #5, !dbg !93
  %24 = icmp ne i32 %23, 0, !dbg !93
  br i1 %24, label %30, label %25, !dbg !94

25:                                               ; preds = %16
  %26 = load i32, i32* @currentTest, align 4, !dbg !95
  %27 = sext i32 %26 to i64, !dbg !96
  %28 = getelementptr inbounds [10 x %struct.hugeTest], [10 x %struct.hugeTest]* @hugeTests, i64 0, i64 %27, !dbg !96
  %29 = bitcast %struct.hugeTest* %28 to i8*, !dbg !97
  store i8* %29, i8** %2, align 8, !dbg !98
  br label %35, !dbg !98

30:                                               ; preds = %16
  br label %31, !dbg !99

31:                                               ; preds = %30
  %32 = load i32, i32* @currentTest, align 4, !dbg !100
  %33 = add nsw i32 %32, 1, !dbg !100
  store i32 %33, i32* @currentTest, align 4, !dbg !100
  br label %12, !dbg !101, !llvm.loop !102

34:                                               ; preds = %12
  store i8* null, i8** %2, align 8, !dbg !104
  br label %35, !dbg !104

35:                                               ; preds = %34, %25, %10
  %36 = load i8*, i8** %2, align 8, !dbg !105
  ret i8* %36, !dbg !105
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hugeTests", scope: !2, file: !3, line: 20, type: !10, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/099_testlimits.c_115_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "454c4f6f28132b6aa08da75ff454efac")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!7, !0}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "currentTest", scope: !2, file: !3, line: 11, type: !9, isLocal: true, isDefinition: true)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 640, elements: !17)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hugeTest", file: !3, line: 14, size: 64, elements: !12)
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !11, file: !3, line: 15, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !{!18}
!18 = !DISubrange(count: 10)
!19 = !{i32 7, !"Dwarf Version", i32 5}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{i32 7, !"PIC Level", i32 2}
!23 = !{i32 7, !"PIE Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"Ubuntu clang version 14.0.6"}
!27 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 22, type: !28, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !30)
!28 = !DISubroutineType(types: !29)
!29 = !{!9}
!30 = !{}
!31 = !DILocalVariable(name: "URI", scope: !27, file: !3, line: 24, type: !32)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 2048, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 256)
!35 = !DILocation(line: 24, column: 10, scope: !27)
!36 = !DILocation(line: 25, column: 24, scope: !27)
!37 = !DILocation(line: 25, column: 5, scope: !27)
!38 = !DILocation(line: 28, column: 17, scope: !27)
!39 = !DILocation(line: 28, column: 26, scope: !27)
!40 = !DILocation(line: 28, column: 5, scope: !27)
!41 = !DILocalVariable(name: "i", scope: !42, file: !3, line: 31, type: !9)
!42 = distinct !DILexicalBlock(scope: !27, file: !3, line: 31, column: 5)
!43 = !DILocation(line: 31, column: 14, scope: !42)
!44 = !DILocation(line: 31, column: 10, scope: !42)
!45 = !DILocation(line: 31, column: 21, scope: !46)
!46 = distinct !DILexicalBlock(scope: !42, file: !3, line: 31, column: 5)
!47 = !DILocation(line: 31, column: 23, scope: !46)
!48 = !DILocation(line: 31, column: 5, scope: !42)
!49 = !DILocation(line: 32, column: 19, scope: !50)
!50 = distinct !DILexicalBlock(scope: !46, file: !3, line: 31, column: 34)
!51 = !DILocation(line: 32, column: 9, scope: !50)
!52 = !DILocation(line: 32, column: 22, scope: !50)
!53 = !DILocation(line: 32, column: 27, scope: !50)
!54 = !DILocation(line: 33, column: 5, scope: !50)
!55 = !DILocation(line: 31, column: 30, scope: !46)
!56 = !DILocation(line: 31, column: 5, scope: !46)
!57 = distinct !{!57, !48, !58, !59}
!58 = !DILocation(line: 33, column: 5, scope: !42)
!59 = !{!"llvm.loop.mustprogress"}
!60 = !DILocation(line: 36, column: 17, scope: !27)
!61 = !DILocalVariable(name: "result", scope: !27, file: !3, line: 39, type: !5)
!62 = !DILocation(line: 39, column: 11, scope: !27)
!63 = !DILocation(line: 39, column: 29, scope: !27)
!64 = !DILocation(line: 39, column: 20, scope: !27)
!65 = !DILocation(line: 45, column: 5, scope: !27)
!66 = !DILocation(line: 48, column: 5, scope: !27)
!67 = !DILocation(line: 50, column: 5, scope: !27)
!68 = distinct !DISubprogram(name: "hugeOpen", scope: !3, file: !3, line: 55, type: !69, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !30)
!69 = !DISubroutineType(types: !70)
!70 = !{!5, !14}
!71 = !DILocalVariable(name: "URI", arg: 1, scope: !68, file: !3, line: 55, type: !14)
!72 = !DILocation(line: 55, column: 22, scope: !68)
!73 = !DILocation(line: 56, column: 10, scope: !74)
!74 = distinct !DILexicalBlock(scope: !68, file: !3, line: 56, column: 9)
!75 = !DILocation(line: 56, column: 14, scope: !74)
!76 = !DILocation(line: 56, column: 23, scope: !74)
!77 = !DILocation(line: 56, column: 35, scope: !74)
!78 = !DILocation(line: 56, column: 27, scope: !74)
!79 = !DILocation(line: 56, column: 9, scope: !68)
!80 = !DILocation(line: 57, column: 9, scope: !74)
!81 = !DILocation(line: 59, column: 22, scope: !82)
!82 = distinct !DILexicalBlock(scope: !68, file: !3, line: 59, column: 5)
!83 = !DILocation(line: 59, column: 10, scope: !82)
!84 = !DILocation(line: 59, column: 27, scope: !85)
!85 = distinct !DILexicalBlock(scope: !82, file: !3, line: 59, column: 5)
!86 = !DILocation(line: 59, column: 39, scope: !85)
!87 = !DILocation(line: 59, column: 5, scope: !82)
!88 = !DILocation(line: 61, column: 32, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !3, line: 61, column: 14)
!90 = !DILocation(line: 61, column: 22, scope: !89)
!91 = !DILocation(line: 61, column: 45, scope: !89)
!92 = !DILocation(line: 61, column: 51, scope: !89)
!93 = !DILocation(line: 61, column: 15, scope: !89)
!94 = !DILocation(line: 61, column: 14, scope: !85)
!95 = !DILocation(line: 62, column: 39, scope: !89)
!96 = !DILocation(line: 62, column: 29, scope: !89)
!97 = !DILocation(line: 62, column: 21, scope: !89)
!98 = !DILocation(line: 62, column: 14, scope: !89)
!99 = !DILocation(line: 61, column: 54, scope: !89)
!100 = !DILocation(line: 60, column: 21, scope: !85)
!101 = !DILocation(line: 59, column: 5, scope: !85)
!102 = distinct !{!102, !87, !103, !59}
!103 = !DILocation(line: 62, column: 50, scope: !82)
!104 = !DILocation(line: 64, column: 5, scope: !68)
!105 = !DILocation(line: 65, column: 1, scope: !68)

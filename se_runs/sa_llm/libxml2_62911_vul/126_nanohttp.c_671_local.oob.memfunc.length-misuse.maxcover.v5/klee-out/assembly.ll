; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/126_nanohttp.c_671_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/126_nanohttp.c_671_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNanoHTTPCtxt = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"HTTP/\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"(strlen(line) >= 5) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/126_nanohttp.c_671_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlNanoHTTPScanAnswer = private unnamed_addr constant [61 x i8] c"void xmlNanoHTTPScanAnswer(xmlNanoHTTPCtxtPtr, const char *)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"line\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlNanoHTTPScanAnswer(%struct._xmlNanoHTTPCtxt* noundef %0, i8* noundef %1) #0 !dbg !12 {
  %3 = alloca %struct._xmlNanoHTTPCtxt*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct._xmlNanoHTTPCtxt* %0, %struct._xmlNanoHTTPCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNanoHTTPCtxt** %3, metadata !25, metadata !DIExpression()), !dbg !26
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i8** %5, metadata !29, metadata !DIExpression()), !dbg !30
  %8 = load i8*, i8** %4, align 8, !dbg !31
  store i8* %8, i8** %5, align 8, !dbg !30
  %9 = load i8*, i8** %4, align 8, !dbg !32
  %10 = icmp eq i8* %9, null, !dbg !34
  br i1 %10, label %11, label %12, !dbg !35

11:                                               ; preds = %2
  br label %82, !dbg !36

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8, !dbg !37
  %14 = call i32 @strncmp(i8* noundef %13, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 noundef 5) #5, !dbg !39
  %15 = icmp ne i32 %14, 0, !dbg !39
  br i1 %15, label %82, label %16, !dbg !40

16:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata i32* %6, metadata !41, metadata !DIExpression()), !dbg !43
  store i32 0, i32* %6, align 4, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %7, metadata !44, metadata !DIExpression()), !dbg !45
  store i32 0, i32* %7, align 4, !dbg !45
  %17 = load i8*, i8** %5, align 8, !dbg !46
  %18 = getelementptr inbounds i8, i8* %17, i64 5, !dbg !46
  store i8* %18, i8** %5, align 8, !dbg !46
  br label %19, !dbg !47

19:                                               ; preds = %31, %16
  %20 = load i8*, i8** %5, align 8, !dbg !48
  %21 = load i8, i8* %20, align 1, !dbg !49
  %22 = sext i8 %21 to i32, !dbg !49
  %23 = icmp sge i32 %22, 48, !dbg !50
  br i1 %23, label %24, label %29, !dbg !51

24:                                               ; preds = %19
  %25 = load i8*, i8** %5, align 8, !dbg !52
  %26 = load i8, i8* %25, align 1, !dbg !53
  %27 = sext i8 %26 to i32, !dbg !53
  %28 = icmp sle i32 %27, 57, !dbg !54
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i1 [ false, %19 ], [ %28, %24 ], !dbg !55
  br i1 %30, label %31, label %41, !dbg !47

31:                                               ; preds = %29
  %32 = load i32, i32* %6, align 4, !dbg !56
  %33 = mul nsw i32 %32, 10, !dbg !58
  %34 = load i8*, i8** %5, align 8, !dbg !59
  %35 = load i8, i8* %34, align 1, !dbg !60
  %36 = sext i8 %35 to i32, !dbg !60
  %37 = sub nsw i32 %36, 48, !dbg !61
  %38 = add nsw i32 %33, %37, !dbg !62
  store i32 %38, i32* %6, align 4, !dbg !63
  %39 = load i8*, i8** %5, align 8, !dbg !64
  %40 = getelementptr inbounds i8, i8* %39, i32 1, !dbg !64
  store i8* %40, i8** %5, align 8, !dbg !64
  br label %19, !dbg !47, !llvm.loop !65

41:                                               ; preds = %29
  %42 = load i8*, i8** %5, align 8, !dbg !68
  %43 = load i8, i8* %42, align 1, !dbg !70
  %44 = sext i8 %43 to i32, !dbg !70
  %45 = icmp eq i32 %44, 46, !dbg !71
  br i1 %45, label %46, label %72, !dbg !72

46:                                               ; preds = %41
  %47 = load i8*, i8** %5, align 8, !dbg !73
  %48 = getelementptr inbounds i8, i8* %47, i32 1, !dbg !73
  store i8* %48, i8** %5, align 8, !dbg !73
  br label %49, !dbg !75

49:                                               ; preds = %61, %46
  %50 = load i8*, i8** %5, align 8, !dbg !76
  %51 = load i8, i8* %50, align 1, !dbg !77
  %52 = sext i8 %51 to i32, !dbg !77
  %53 = icmp sge i32 %52, 48, !dbg !78
  br i1 %53, label %54, label %59, !dbg !79

54:                                               ; preds = %49
  %55 = load i8*, i8** %5, align 8, !dbg !80
  %56 = load i8, i8* %55, align 1, !dbg !81
  %57 = sext i8 %56 to i32, !dbg !81
  %58 = icmp sle i32 %57, 57, !dbg !82
  br label %59

59:                                               ; preds = %54, %49
  %60 = phi i1 [ false, %49 ], [ %58, %54 ], !dbg !83
  br i1 %60, label %61, label %71, !dbg !75

61:                                               ; preds = %59
  %62 = load i32, i32* %7, align 4, !dbg !84
  %63 = mul nsw i32 %62, 10, !dbg !86
  %64 = load i8*, i8** %5, align 8, !dbg !87
  %65 = load i8, i8* %64, align 1, !dbg !88
  %66 = sext i8 %65 to i32, !dbg !88
  %67 = sub nsw i32 %66, 48, !dbg !89
  %68 = add nsw i32 %63, %67, !dbg !90
  store i32 %68, i32* %7, align 4, !dbg !91
  %69 = load i8*, i8** %5, align 8, !dbg !92
  %70 = getelementptr inbounds i8, i8* %69, i32 1, !dbg !92
  store i8* %70, i8** %5, align 8, !dbg !92
  br label %49, !dbg !75, !llvm.loop !93

71:                                               ; preds = %59
  br label %72, !dbg !95

72:                                               ; preds = %71, %41
  %73 = load i8*, i8** %4, align 8, !dbg !96
  %74 = call i64 @strlen(i8* noundef %73) #5, !dbg !96
  %75 = icmp uge i64 %74, 5, !dbg !96
  br i1 %75, label %76, label %78, !dbg !96

76:                                               ; preds = %72
  br i1 true, label %77, label %78, !dbg !96

77:                                               ; preds = %76
  br label %80, !dbg !96

78:                                               ; preds = %76, %72
  %79 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.xmlNanoHTTPScanAnswer, i64 0, i64 0)), !dbg !96
  br label %80, !dbg !96

80:                                               ; preds = %78, %77
  %81 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.xmlNanoHTTPScanAnswer, i64 0, i64 0)), !dbg !97
  br label %82, !dbg !98

82:                                               ; preds = %11, %80, %12
  ret void, !dbg !99
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !100 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlNanoHTTPCtxt, align 4
  %3 = alloca [256 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlNanoHTTPCtxt* %2, metadata !103, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !106, metadata !DIExpression()), !dbg !110
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !111
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !112
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !113
  %6 = load i8, i8* %5, align 1, !dbg !113
  %7 = sext i8 %6 to i32, !dbg !113
  %8 = icmp eq i32 %7, 0, !dbg !114
  %9 = zext i1 %8 to i32, !dbg !114
  %10 = sext i32 %9 to i64, !dbg !113
  call void @klee_assume(i64 noundef %10), !dbg !115
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !116
  call void @xmlNanoHTTPScanAnswer(%struct._xmlNanoHTTPCtxt* noundef %2, i8* noundef %11), !dbg !117
  ret i32 0, !dbg !118
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/126_nanohttp.c_671_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "52fae1d2c872aa59e57192d08af2b541")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "xmlNanoHTTPScanAnswer", scope: !1, file: !1, line: 13, type: !13, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15, !21}
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNanoHTTPCtxtPtr", file: !1, line: 11, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNanoHTTPCtxt", file: !1, line: 9, size: 32, elements: !18)
!18 = !{!19}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !17, file: !1, line: 10, baseType: !20, size: 32)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !{}
!25 = !DILocalVariable(name: "ctxt", arg: 1, scope: !12, file: !1, line: 13, type: !15)
!26 = !DILocation(line: 13, column: 47, scope: !12)
!27 = !DILocalVariable(name: "line", arg: 2, scope: !12, file: !1, line: 13, type: !21)
!28 = !DILocation(line: 13, column: 65, scope: !12)
!29 = !DILocalVariable(name: "cur", scope: !12, file: !1, line: 14, type: !21)
!30 = !DILocation(line: 14, column: 17, scope: !12)
!31 = !DILocation(line: 14, column: 23, scope: !12)
!32 = !DILocation(line: 16, column: 9, scope: !33)
!33 = distinct !DILexicalBlock(scope: !12, file: !1, line: 16, column: 9)
!34 = !DILocation(line: 16, column: 14, scope: !33)
!35 = !DILocation(line: 16, column: 9, scope: !12)
!36 = !DILocation(line: 16, column: 23, scope: !33)
!37 = !DILocation(line: 18, column: 18, scope: !38)
!38 = distinct !DILexicalBlock(scope: !12, file: !1, line: 18, column: 9)
!39 = !DILocation(line: 18, column: 10, scope: !38)
!40 = !DILocation(line: 18, column: 9, scope: !12)
!41 = !DILocalVariable(name: "version", scope: !42, file: !1, line: 19, type: !20)
!42 = distinct !DILexicalBlock(scope: !38, file: !1, line: 18, column: 37)
!43 = !DILocation(line: 19, column: 13, scope: !42)
!44 = !DILocalVariable(name: "ret", scope: !42, file: !1, line: 20, type: !20)
!45 = !DILocation(line: 20, column: 13, scope: !42)
!46 = !DILocation(line: 22, column: 13, scope: !42)
!47 = !DILocation(line: 23, column: 9, scope: !42)
!48 = !DILocation(line: 23, column: 18, scope: !42)
!49 = !DILocation(line: 23, column: 17, scope: !42)
!50 = !DILocation(line: 23, column: 22, scope: !42)
!51 = !DILocation(line: 23, column: 30, scope: !42)
!52 = !DILocation(line: 23, column: 35, scope: !42)
!53 = !DILocation(line: 23, column: 34, scope: !42)
!54 = !DILocation(line: 23, column: 39, scope: !42)
!55 = !DILocation(line: 0, scope: !42)
!56 = !DILocation(line: 24, column: 23, scope: !57)
!57 = distinct !DILexicalBlock(scope: !42, file: !1, line: 23, column: 48)
!58 = !DILocation(line: 24, column: 31, scope: !57)
!59 = !DILocation(line: 24, column: 40, scope: !57)
!60 = !DILocation(line: 24, column: 39, scope: !57)
!61 = !DILocation(line: 24, column: 44, scope: !57)
!62 = !DILocation(line: 24, column: 36, scope: !57)
!63 = !DILocation(line: 24, column: 21, scope: !57)
!64 = !DILocation(line: 25, column: 16, scope: !57)
!65 = distinct !{!65, !47, !66, !67}
!66 = !DILocation(line: 26, column: 9, scope: !42)
!67 = !{!"llvm.loop.mustprogress"}
!68 = !DILocation(line: 28, column: 14, scope: !69)
!69 = distinct !DILexicalBlock(scope: !42, file: !1, line: 28, column: 13)
!70 = !DILocation(line: 28, column: 13, scope: !69)
!71 = !DILocation(line: 28, column: 18, scope: !69)
!72 = !DILocation(line: 28, column: 13, scope: !42)
!73 = !DILocation(line: 29, column: 16, scope: !74)
!74 = distinct !DILexicalBlock(scope: !69, file: !1, line: 28, column: 26)
!75 = !DILocation(line: 30, column: 13, scope: !74)
!76 = !DILocation(line: 30, column: 22, scope: !74)
!77 = !DILocation(line: 30, column: 21, scope: !74)
!78 = !DILocation(line: 30, column: 26, scope: !74)
!79 = !DILocation(line: 30, column: 34, scope: !74)
!80 = !DILocation(line: 30, column: 39, scope: !74)
!81 = !DILocation(line: 30, column: 38, scope: !74)
!82 = !DILocation(line: 30, column: 43, scope: !74)
!83 = !DILocation(line: 0, scope: !74)
!84 = !DILocation(line: 31, column: 23, scope: !85)
!85 = distinct !DILexicalBlock(scope: !74, file: !1, line: 30, column: 52)
!86 = !DILocation(line: 31, column: 27, scope: !85)
!87 = !DILocation(line: 31, column: 36, scope: !85)
!88 = !DILocation(line: 31, column: 35, scope: !85)
!89 = !DILocation(line: 31, column: 40, scope: !85)
!90 = !DILocation(line: 31, column: 32, scope: !85)
!91 = !DILocation(line: 31, column: 21, scope: !85)
!92 = !DILocation(line: 32, column: 20, scope: !85)
!93 = distinct !{!93, !75, !94, !67}
!94 = !DILocation(line: 33, column: 13, scope: !74)
!95 = !DILocation(line: 34, column: 9, scope: !74)
!96 = !DILocation(line: 36, column: 9, scope: !42)
!97 = !DILocation(line: 37, column: 9, scope: !42)
!98 = !DILocation(line: 38, column: 5, scope: !42)
!99 = !DILocation(line: 39, column: 1, scope: !12)
!100 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 41, type: !101, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!101 = !DISubroutineType(types: !102)
!102 = !{!20}
!103 = !DILocalVariable(name: "ctxt", scope: !100, file: !1, line: 42, type: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNanoHTTPCtxt", file: !1, line: 11, baseType: !17)
!105 = !DILocation(line: 42, column: 21, scope: !100)
!106 = !DILocalVariable(name: "line", scope: !100, file: !1, line: 43, type: !107)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 256)
!110 = !DILocation(line: 43, column: 10, scope: !100)
!111 = !DILocation(line: 45, column: 24, scope: !100)
!112 = !DILocation(line: 45, column: 5, scope: !100)
!113 = !DILocation(line: 46, column: 17, scope: !100)
!114 = !DILocation(line: 46, column: 27, scope: !100)
!115 = !DILocation(line: 46, column: 5, scope: !100)
!116 = !DILocation(line: 48, column: 34, scope: !100)
!117 = !DILocation(line: 48, column: 5, scope: !100)
!118 = !DILocation(line: 50, column: 5, scope: !100)

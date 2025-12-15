; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/170_nanohttp.c_680_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/170_nanohttp.c_680_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNanoHTTPCtxt = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"HTTP/\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"(strlen(line) >= 5) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/170_nanohttp.c_680_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlNanoHTTPScanAnswer = private unnamed_addr constant [61 x i8] c"void xmlNanoHTTPScanAnswer(xmlNanoHTTPCtxtPtr, const char *)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlNanoHTTPCtxt, align 4
  %3 = alloca [256 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlNanoHTTPCtxt* %2, metadata !17, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !23, metadata !DIExpression()), !dbg !28
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !29
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !30
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !31
  %6 = load i8, i8* %5, align 1, !dbg !31
  %7 = sext i8 %6 to i32, !dbg !31
  %8 = icmp eq i32 %7, 0, !dbg !32
  %9 = zext i1 %8 to i32, !dbg !32
  %10 = sext i32 %9 to i64, !dbg !31
  call void @klee_assume(i64 noundef %10), !dbg !33
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !34
  call void @xmlNanoHTTPScanAnswer(%struct._xmlNanoHTTPCtxt* noundef %2, i8* noundef %11), !dbg !35
  ret i32 0, !dbg !36
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmlNanoHTTPScanAnswer(%struct._xmlNanoHTTPCtxt* noundef %0, i8* noundef %1) #0 !dbg !37 {
  %3 = alloca %struct._xmlNanoHTTPCtxt*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct._xmlNanoHTTPCtxt* %0, %struct._xmlNanoHTTPCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNanoHTTPCtxt** %3, metadata !44, metadata !DIExpression()), !dbg !45
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata i8** %5, metadata !48, metadata !DIExpression()), !dbg !49
  %8 = load i8*, i8** %4, align 8, !dbg !50
  store i8* %8, i8** %5, align 8, !dbg !49
  %9 = load i8*, i8** %4, align 8, !dbg !51
  %10 = icmp eq i8* %9, null, !dbg !53
  br i1 %10, label %11, label %12, !dbg !54

11:                                               ; preds = %2
  br label %52, !dbg !55

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8, !dbg !56
  %14 = call i32 @strncmp(i8* noundef %13, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 noundef 5) #5, !dbg !58
  %15 = icmp ne i32 %14, 0, !dbg !58
  br i1 %15, label %52, label %16, !dbg !59

16:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata i32* %6, metadata !60, metadata !DIExpression()), !dbg !62
  store i32 0, i32* %6, align 4, !dbg !62
  call void @llvm.dbg.declare(metadata i32* %7, metadata !63, metadata !DIExpression()), !dbg !64
  store i32 0, i32* %7, align 4, !dbg !64
  %17 = load i8*, i8** %5, align 8, !dbg !65
  %18 = getelementptr inbounds i8, i8* %17, i64 5, !dbg !65
  store i8* %18, i8** %5, align 8, !dbg !65
  br label %19, !dbg !66

19:                                               ; preds = %31, %16
  %20 = load i8*, i8** %5, align 8, !dbg !67
  %21 = load i8, i8* %20, align 1, !dbg !68
  %22 = sext i8 %21 to i32, !dbg !68
  %23 = icmp sge i32 %22, 48, !dbg !69
  br i1 %23, label %24, label %29, !dbg !70

24:                                               ; preds = %19
  %25 = load i8*, i8** %5, align 8, !dbg !71
  %26 = load i8, i8* %25, align 1, !dbg !72
  %27 = sext i8 %26 to i32, !dbg !72
  %28 = icmp sle i32 %27, 57, !dbg !73
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i1 [ false, %19 ], [ %28, %24 ], !dbg !74
  br i1 %30, label %31, label %42, !dbg !66

31:                                               ; preds = %29
  %32 = load i32, i32* %6, align 4, !dbg !75
  %33 = mul nsw i32 %32, 10, !dbg !75
  store i32 %33, i32* %6, align 4, !dbg !75
  %34 = load i8*, i8** %5, align 8, !dbg !77
  %35 = load i8, i8* %34, align 1, !dbg !78
  %36 = sext i8 %35 to i32, !dbg !78
  %37 = sub nsw i32 %36, 48, !dbg !79
  %38 = load i32, i32* %6, align 4, !dbg !80
  %39 = add nsw i32 %38, %37, !dbg !80
  store i32 %39, i32* %6, align 4, !dbg !80
  %40 = load i8*, i8** %5, align 8, !dbg !81
  %41 = getelementptr inbounds i8, i8* %40, i32 1, !dbg !81
  store i8* %41, i8** %5, align 8, !dbg !81
  br label %19, !dbg !66, !llvm.loop !82

42:                                               ; preds = %29
  %43 = load i8*, i8** %4, align 8, !dbg !85
  %44 = call i64 @strlen(i8* noundef %43) #5, !dbg !85
  %45 = icmp uge i64 %44, 5, !dbg !85
  br i1 %45, label %46, label %48, !dbg !85

46:                                               ; preds = %42
  br i1 true, label %47, label %48, !dbg !85

47:                                               ; preds = %46
  br label %50, !dbg !85

48:                                               ; preds = %46, %42
  %49 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 29, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.xmlNanoHTTPScanAnswer, i64 0, i64 0)), !dbg !85
  br label %50, !dbg !85

50:                                               ; preds = %48, %47
  %51 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 30, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.xmlNanoHTTPScanAnswer, i64 0, i64 0)), !dbg !86
  br label %52, !dbg !87

52:                                               ; preds = %11, %50, %12
  ret void, !dbg !88
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/170_nanohttp.c_680_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "51914e334f994d3c558be817041989c3")
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
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 34, type: !13, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "ctxt", scope: !12, file: !1, line: 35, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNanoHTTPCtxt", file: !1, line: 11, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNanoHTTPCtxt", file: !1, line: 9, size: 32, elements: !20)
!20 = !{!21}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !19, file: !1, line: 10, baseType: !15, size: 32)
!22 = !DILocation(line: 35, column: 21, scope: !12)
!23 = !DILocalVariable(name: "line", scope: !12, file: !1, line: 36, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 2048, elements: !26)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!26 = !{!27}
!27 = !DISubrange(count: 256)
!28 = !DILocation(line: 36, column: 10, scope: !12)
!29 = !DILocation(line: 38, column: 24, scope: !12)
!30 = !DILocation(line: 38, column: 5, scope: !12)
!31 = !DILocation(line: 39, column: 17, scope: !12)
!32 = !DILocation(line: 39, column: 27, scope: !12)
!33 = !DILocation(line: 39, column: 5, scope: !12)
!34 = !DILocation(line: 41, column: 34, scope: !12)
!35 = !DILocation(line: 41, column: 5, scope: !12)
!36 = !DILocation(line: 43, column: 5, scope: !12)
!37 = distinct !DISubprogram(name: "xmlNanoHTTPScanAnswer", scope: !1, file: !1, line: 13, type: !38, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !16)
!38 = !DISubroutineType(types: !39)
!39 = !{null, !40, !42}
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNanoHTTPCtxtPtr", file: !1, line: 11, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!44 = !DILocalVariable(name: "ctxt", arg: 1, scope: !37, file: !1, line: 13, type: !40)
!45 = !DILocation(line: 13, column: 54, scope: !37)
!46 = !DILocalVariable(name: "line", arg: 2, scope: !37, file: !1, line: 13, type: !42)
!47 = !DILocation(line: 13, column: 72, scope: !37)
!48 = !DILocalVariable(name: "cur", scope: !37, file: !1, line: 14, type: !42)
!49 = !DILocation(line: 14, column: 17, scope: !37)
!50 = !DILocation(line: 14, column: 23, scope: !37)
!51 = !DILocation(line: 16, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !37, file: !1, line: 16, column: 9)
!53 = !DILocation(line: 16, column: 14, scope: !52)
!54 = !DILocation(line: 16, column: 9, scope: !37)
!55 = !DILocation(line: 16, column: 23, scope: !52)
!56 = !DILocation(line: 18, column: 18, scope: !57)
!57 = distinct !DILexicalBlock(scope: !37, file: !1, line: 18, column: 9)
!58 = !DILocation(line: 18, column: 10, scope: !57)
!59 = !DILocation(line: 18, column: 9, scope: !37)
!60 = !DILocalVariable(name: "version", scope: !61, file: !1, line: 19, type: !15)
!61 = distinct !DILexicalBlock(scope: !57, file: !1, line: 18, column: 37)
!62 = !DILocation(line: 19, column: 13, scope: !61)
!63 = !DILocalVariable(name: "ret", scope: !61, file: !1, line: 20, type: !15)
!64 = !DILocation(line: 20, column: 13, scope: !61)
!65 = !DILocation(line: 22, column: 13, scope: !61)
!66 = !DILocation(line: 23, column: 9, scope: !61)
!67 = !DILocation(line: 23, column: 18, scope: !61)
!68 = !DILocation(line: 23, column: 17, scope: !61)
!69 = !DILocation(line: 23, column: 22, scope: !61)
!70 = !DILocation(line: 23, column: 30, scope: !61)
!71 = !DILocation(line: 23, column: 35, scope: !61)
!72 = !DILocation(line: 23, column: 34, scope: !61)
!73 = !DILocation(line: 23, column: 39, scope: !61)
!74 = !DILocation(line: 0, scope: !61)
!75 = !DILocation(line: 24, column: 21, scope: !76)
!76 = distinct !DILexicalBlock(scope: !61, file: !1, line: 23, column: 48)
!77 = !DILocation(line: 25, column: 25, scope: !76)
!78 = !DILocation(line: 25, column: 24, scope: !76)
!79 = !DILocation(line: 25, column: 29, scope: !76)
!80 = !DILocation(line: 25, column: 21, scope: !76)
!81 = !DILocation(line: 26, column: 16, scope: !76)
!82 = distinct !{!82, !66, !83, !84}
!83 = !DILocation(line: 27, column: 9, scope: !61)
!84 = !{!"llvm.loop.mustprogress"}
!85 = !DILocation(line: 29, column: 9, scope: !61)
!86 = !DILocation(line: 30, column: 9, scope: !61)
!87 = !DILocation(line: 31, column: 5, scope: !61)
!88 = !DILocation(line: 32, column: 1, scope: !37)

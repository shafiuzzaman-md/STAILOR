; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/310_xmlschemas.c_24077_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/310_xmlschemas.c_24077_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaValidationCtxt = type { i8**, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"allocated_elements\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"(allocated_elements >= 10) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [110 x i8] c"se_runs/sa_llm/libxml2_62911_vul/310_xmlschemas.c_24077_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSchemaFormatQName = private unnamed_addr constant [50 x i8] c"char *xmlSchemaFormatQName(xmlSchemaValidCtxtPtr)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"depth\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlSchemaFormatQName(%struct._xmlSchemaValidationCtxt* noundef %0) #0 !dbg !12 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._xmlSchemaValidationCtxt*, align 8
  %4 = alloca i32, align 4
  store %struct._xmlSchemaValidationCtxt* %0, %struct._xmlSchemaValidationCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaValidationCtxt** %3, metadata !29, metadata !DIExpression()), !dbg !30
  %5 = load %struct._xmlSchemaValidationCtxt*, %struct._xmlSchemaValidationCtxt** %3, align 8, !dbg !31
  %6 = getelementptr inbounds %struct._xmlSchemaValidationCtxt, %struct._xmlSchemaValidationCtxt* %5, i32 0, i32 0, !dbg !33
  %7 = load i8**, i8*** %6, align 8, !dbg !33
  %8 = icmp eq i8** %7, null, !dbg !34
  br i1 %8, label %9, label %10, !dbg !35

9:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !36
  br label %24, !dbg !36

10:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %4, metadata !38, metadata !DIExpression()), !dbg !39
  %11 = bitcast i32* %4 to i8*, !dbg !40
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)), !dbg !41
  %12 = load i32, i32* %4, align 4, !dbg !42
  %13 = icmp sge i32 %12, 0, !dbg !43
  %14 = zext i1 %13 to i32, !dbg !43
  %15 = sext i32 %14 to i64, !dbg !42
  call void @klee_assume(i64 noundef %15), !dbg !44
  %16 = load i32, i32* %4, align 4, !dbg !45
  %17 = icmp sge i32 %16, 10, !dbg !45
  br i1 %17, label %18, label %20, !dbg !45

18:                                               ; preds = %10
  br i1 true, label %19, label %20, !dbg !45

19:                                               ; preds = %18
  br label %22, !dbg !45

20:                                               ; preds = %18, %10
  %21 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.3, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.xmlSchemaFormatQName, i64 0, i64 0)), !dbg !45
  br label %22, !dbg !45

22:                                               ; preds = %20, %19
  %23 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.3, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.xmlSchemaFormatQName, i64 0, i64 0)), !dbg !46
  store i8* null, i8** %2, align 8, !dbg !47
  br label %24, !dbg !47

24:                                               ; preds = %22, %9
  %25 = load i8*, i8** %2, align 8, !dbg !48
  ret i8* %25, !dbg !48
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlSchemaValidationCtxt* @create_vctxt() #0 !dbg !49 {
  %1 = alloca %struct._xmlSchemaValidationCtxt*, align 8
  %2 = alloca %struct._xmlSchemaValidationCtxt*, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaValidationCtxt** %2, metadata !52, metadata !DIExpression()), !dbg !53
  %3 = call noalias i8* @malloc(i64 noundef 16) #5, !dbg !54
  %4 = bitcast i8* %3 to %struct._xmlSchemaValidationCtxt*, !dbg !54
  store %struct._xmlSchemaValidationCtxt* %4, %struct._xmlSchemaValidationCtxt** %2, align 8, !dbg !53
  %5 = load %struct._xmlSchemaValidationCtxt*, %struct._xmlSchemaValidationCtxt** %2, align 8, !dbg !55
  %6 = icmp ne %struct._xmlSchemaValidationCtxt* %5, null, !dbg !55
  br i1 %6, label %8, label %7, !dbg !57

7:                                                ; preds = %0
  store %struct._xmlSchemaValidationCtxt* null, %struct._xmlSchemaValidationCtxt** %1, align 8, !dbg !58
  br label %19, !dbg !58

8:                                                ; preds = %0
  %9 = load %struct._xmlSchemaValidationCtxt*, %struct._xmlSchemaValidationCtxt** %2, align 8, !dbg !59
  %10 = getelementptr inbounds %struct._xmlSchemaValidationCtxt, %struct._xmlSchemaValidationCtxt* %9, i32 0, i32 2, !dbg !60
  %11 = bitcast i32* %10 to i8*, !dbg !61
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)), !dbg !62
  %12 = load %struct._xmlSchemaValidationCtxt*, %struct._xmlSchemaValidationCtxt** %2, align 8, !dbg !63
  %13 = getelementptr inbounds %struct._xmlSchemaValidationCtxt, %struct._xmlSchemaValidationCtxt* %12, i32 0, i32 1, !dbg !64
  store i32 5, i32* %13, align 8, !dbg !65
  %14 = call noalias i8* @malloc(i64 noundef 80) #5, !dbg !66
  %15 = bitcast i8* %14 to i8**, !dbg !66
  %16 = load %struct._xmlSchemaValidationCtxt*, %struct._xmlSchemaValidationCtxt** %2, align 8, !dbg !67
  %17 = getelementptr inbounds %struct._xmlSchemaValidationCtxt, %struct._xmlSchemaValidationCtxt* %16, i32 0, i32 0, !dbg !68
  store i8** %15, i8*** %17, align 8, !dbg !69
  %18 = load %struct._xmlSchemaValidationCtxt*, %struct._xmlSchemaValidationCtxt** %2, align 8, !dbg !70
  store %struct._xmlSchemaValidationCtxt* %18, %struct._xmlSchemaValidationCtxt** %1, align 8, !dbg !71
  br label %19, !dbg !71

19:                                               ; preds = %8, %7
  %20 = load %struct._xmlSchemaValidationCtxt*, %struct._xmlSchemaValidationCtxt** %1, align 8, !dbg !72
  ret %struct._xmlSchemaValidationCtxt* %20, !dbg !72
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !73 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaValidationCtxt*, align 8
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaValidationCtxt** %2, metadata !76, metadata !DIExpression()), !dbg !77
  %4 = call %struct._xmlSchemaValidationCtxt* @create_vctxt(), !dbg !78
  store %struct._xmlSchemaValidationCtxt* %4, %struct._xmlSchemaValidationCtxt** %2, align 8, !dbg !77
  %5 = load %struct._xmlSchemaValidationCtxt*, %struct._xmlSchemaValidationCtxt** %2, align 8, !dbg !79
  %6 = icmp ne %struct._xmlSchemaValidationCtxt* %5, null, !dbg !79
  br i1 %6, label %8, label %7, !dbg !81

7:                                                ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !82
  br label %35, !dbg !82

8:                                                ; preds = %0
  %9 = load %struct._xmlSchemaValidationCtxt*, %struct._xmlSchemaValidationCtxt** %2, align 8, !dbg !83
  %10 = getelementptr inbounds %struct._xmlSchemaValidationCtxt, %struct._xmlSchemaValidationCtxt* %9, i32 0, i32 2, !dbg !84
  %11 = load i32, i32* %10, align 4, !dbg !84
  %12 = icmp sge i32 %11, 5, !dbg !85
  %13 = zext i1 %12 to i32, !dbg !85
  %14 = sext i32 %13 to i64, !dbg !83
  call void @klee_assume(i64 noundef %14), !dbg !86
  %15 = load %struct._xmlSchemaValidationCtxt*, %struct._xmlSchemaValidationCtxt** %2, align 8, !dbg !87
  %16 = getelementptr inbounds %struct._xmlSchemaValidationCtxt, %struct._xmlSchemaValidationCtxt* %15, i32 0, i32 0, !dbg !88
  %17 = load i8**, i8*** %16, align 8, !dbg !88
  %18 = icmp ne i8** %17, null, !dbg !89
  %19 = zext i1 %18 to i32, !dbg !89
  %20 = sext i32 %19 to i64, !dbg !87
  call void @klee_assume(i64 noundef %20), !dbg !90
  call void @llvm.dbg.declare(metadata i8** %3, metadata !91, metadata !DIExpression()), !dbg !92
  %21 = load %struct._xmlSchemaValidationCtxt*, %struct._xmlSchemaValidationCtxt** %2, align 8, !dbg !93
  %22 = call i8* @xmlSchemaFormatQName(%struct._xmlSchemaValidationCtxt* noundef %21), !dbg !94
  store i8* %22, i8** %3, align 8, !dbg !92
  %23 = load %struct._xmlSchemaValidationCtxt*, %struct._xmlSchemaValidationCtxt** %2, align 8, !dbg !95
  %24 = getelementptr inbounds %struct._xmlSchemaValidationCtxt, %struct._xmlSchemaValidationCtxt* %23, i32 0, i32 0, !dbg !97
  %25 = load i8**, i8*** %24, align 8, !dbg !97
  %26 = icmp ne i8** %25, null, !dbg !95
  br i1 %26, label %27, label %32, !dbg !98

27:                                               ; preds = %8
  %28 = load %struct._xmlSchemaValidationCtxt*, %struct._xmlSchemaValidationCtxt** %2, align 8, !dbg !99
  %29 = getelementptr inbounds %struct._xmlSchemaValidationCtxt, %struct._xmlSchemaValidationCtxt* %28, i32 0, i32 0, !dbg !100
  %30 = load i8**, i8*** %29, align 8, !dbg !100
  %31 = bitcast i8** %30 to i8*, !dbg !99
  call void @free(i8* noundef %31) #5, !dbg !101
  br label %32, !dbg !101

32:                                               ; preds = %27, %8
  %33 = load %struct._xmlSchemaValidationCtxt*, %struct._xmlSchemaValidationCtxt** %2, align 8, !dbg !102
  %34 = bitcast %struct._xmlSchemaValidationCtxt* %33 to i8*, !dbg !102
  call void @free(i8* noundef %34) #5, !dbg !103
  store i32 0, i32* %1, align 4, !dbg !104
  br label %35, !dbg !104

35:                                               ; preds = %32, %7
  %36 = load i32, i32* %1, align 4, !dbg !105
  ret i32 %36, !dbg !105
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/310_xmlschemas.c_24077_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "866294fc6ae9367a0968d4d5a23c540c")
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
!12 = distinct !DISubprogram(name: "xmlSchemaFormatQName", scope: !1, file: !1, line: 22, type: !13, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !17}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValidCtxtPtr", file: !1, line: 11, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValidationCtxt", file: !1, line: 10, baseType: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaValidationCtxt", file: !1, line: 15, size: 128, elements: !21)
!21 = !{!22, !25, !27}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "elemInfos", scope: !20, file: !1, line: 16, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaNodeInfoPtr", file: !1, line: 12, baseType: !3)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "sizeElemInfos", scope: !20, file: !1, line: 17, baseType: !26, size: 32, offset: 64)
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !20, file: !1, line: 18, baseType: !26, size: 32, offset: 96)
!28 = !{}
!29 = !DILocalVariable(name: "vctxt", arg: 1, scope: !12, file: !1, line: 22, type: !17)
!30 = !DILocation(line: 22, column: 50, scope: !12)
!31 = !DILocation(line: 24, column: 9, scope: !32)
!32 = distinct !DILexicalBlock(scope: !12, file: !1, line: 24, column: 9)
!33 = !DILocation(line: 24, column: 16, scope: !32)
!34 = !DILocation(line: 24, column: 26, scope: !32)
!35 = !DILocation(line: 24, column: 9, scope: !12)
!36 = !DILocation(line: 26, column: 9, scope: !37)
!37 = distinct !DILexicalBlock(scope: !32, file: !1, line: 24, column: 35)
!38 = !DILocalVariable(name: "allocated_elements", scope: !12, file: !1, line: 39, type: !26)
!39 = !DILocation(line: 39, column: 9, scope: !12)
!40 = !DILocation(line: 40, column: 24, scope: !12)
!41 = !DILocation(line: 40, column: 5, scope: !12)
!42 = !DILocation(line: 43, column: 17, scope: !12)
!43 = !DILocation(line: 43, column: 36, scope: !12)
!44 = !DILocation(line: 43, column: 5, scope: !12)
!45 = !DILocation(line: 46, column: 5, scope: !12)
!46 = !DILocation(line: 49, column: 5, scope: !12)
!47 = !DILocation(line: 52, column: 5, scope: !12)
!48 = !DILocation(line: 53, column: 1, scope: !12)
!49 = distinct !DISubprogram(name: "create_vctxt", scope: !1, file: !1, line: 56, type: !50, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!50 = !DISubroutineType(types: !51)
!51 = !{!17}
!52 = !DILocalVariable(name: "vctxt", scope: !49, file: !1, line: 57, type: !17)
!53 = !DILocation(line: 57, column: 27, scope: !49)
!54 = !DILocation(line: 57, column: 35, scope: !49)
!55 = !DILocation(line: 58, column: 10, scope: !56)
!56 = distinct !DILexicalBlock(scope: !49, file: !1, line: 58, column: 9)
!57 = !DILocation(line: 58, column: 9, scope: !49)
!58 = !DILocation(line: 58, column: 17, scope: !56)
!59 = !DILocation(line: 61, column: 25, scope: !49)
!60 = !DILocation(line: 61, column: 32, scope: !49)
!61 = !DILocation(line: 61, column: 24, scope: !49)
!62 = !DILocation(line: 61, column: 5, scope: !49)
!63 = !DILocation(line: 65, column: 5, scope: !49)
!64 = !DILocation(line: 65, column: 12, scope: !49)
!65 = !DILocation(line: 65, column: 26, scope: !49)
!66 = !DILocation(line: 68, column: 24, scope: !49)
!67 = !DILocation(line: 68, column: 5, scope: !49)
!68 = !DILocation(line: 68, column: 12, scope: !49)
!69 = !DILocation(line: 68, column: 22, scope: !49)
!70 = !DILocation(line: 70, column: 12, scope: !49)
!71 = !DILocation(line: 70, column: 5, scope: !49)
!72 = !DILocation(line: 71, column: 1, scope: !49)
!73 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 73, type: !74, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!74 = !DISubroutineType(types: !75)
!75 = !{!26}
!76 = !DILocalVariable(name: "vctxt", scope: !73, file: !1, line: 75, type: !17)
!77 = !DILocation(line: 75, column: 27, scope: !73)
!78 = !DILocation(line: 75, column: 35, scope: !73)
!79 = !DILocation(line: 76, column: 10, scope: !80)
!80 = distinct !DILexicalBlock(scope: !73, file: !1, line: 76, column: 9)
!81 = !DILocation(line: 76, column: 9, scope: !73)
!82 = !DILocation(line: 76, column: 17, scope: !80)
!83 = !DILocation(line: 81, column: 17, scope: !73)
!84 = !DILocation(line: 81, column: 24, scope: !73)
!85 = !DILocation(line: 81, column: 30, scope: !73)
!86 = !DILocation(line: 81, column: 5, scope: !73)
!87 = !DILocation(line: 84, column: 17, scope: !73)
!88 = !DILocation(line: 84, column: 24, scope: !73)
!89 = !DILocation(line: 84, column: 34, scope: !73)
!90 = !DILocation(line: 84, column: 5, scope: !73)
!91 = !DILocalVariable(name: "result", scope: !73, file: !1, line: 87, type: !15)
!92 = !DILocation(line: 87, column: 11, scope: !73)
!93 = !DILocation(line: 87, column: 41, scope: !73)
!94 = !DILocation(line: 87, column: 20, scope: !73)
!95 = !DILocation(line: 90, column: 9, scope: !96)
!96 = distinct !DILexicalBlock(scope: !73, file: !1, line: 90, column: 9)
!97 = !DILocation(line: 90, column: 16, scope: !96)
!98 = !DILocation(line: 90, column: 9, scope: !73)
!99 = !DILocation(line: 90, column: 32, scope: !96)
!100 = !DILocation(line: 90, column: 39, scope: !96)
!101 = !DILocation(line: 90, column: 27, scope: !96)
!102 = !DILocation(line: 91, column: 10, scope: !73)
!103 = !DILocation(line: 91, column: 5, scope: !73)
!104 = !DILocation(line: 93, column: 5, scope: !73)
!105 = !DILocation(line: 94, column: 1, scope: !73)

; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/090_pattern.c_261_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/090_pattern.c_261_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDict = type {}
%struct._xmlPattern = type { i8*, %struct._xmlDict*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"(comp != ((void*)0)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_55980_vul/090_pattern.c_261_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlFreePattern = private unnamed_addr constant [34 x i8] c"void xmlFreePattern(xmlPattern *)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"comp\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"steps_is_null\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"dict_is_null\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !24 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !27, metadata !DIExpression()), !dbg !28
  ret void, !dbg !29
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlDictFree(%struct._xmlDict* noundef %0) #0 !dbg !30 {
  %2 = alloca %struct._xmlDict*, align 8
  store %struct._xmlDict* %0, %struct._xmlDict** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDict** %2, metadata !33, metadata !DIExpression()), !dbg !34
  ret void, !dbg !35
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFreePattern(%struct._xmlPattern* noundef %0) #0 !dbg !36 {
  %2 = alloca %struct._xmlPattern*, align 8
  store %struct._xmlPattern* %0, %struct._xmlPattern** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlPattern** %2, metadata !39, metadata !DIExpression()), !dbg !40
  %3 = load %struct._xmlPattern*, %struct._xmlPattern** %2, align 8, !dbg !41
  %4 = getelementptr inbounds %struct._xmlPattern, %struct._xmlPattern* %3, i32 0, i32 0, !dbg !43
  %5 = load i8*, i8** %4, align 8, !dbg !43
  %6 = icmp ne i8* %5, null, !dbg !44
  br i1 %6, label %7, label %11, !dbg !45

7:                                                ; preds = %1
  %8 = load %struct._xmlPattern*, %struct._xmlPattern** %2, align 8, !dbg !46
  %9 = getelementptr inbounds %struct._xmlPattern, %struct._xmlPattern* %8, i32 0, i32 0, !dbg !48
  %10 = load i8*, i8** %9, align 8, !dbg !48
  call void @xmlFree(i8* noundef %10), !dbg !49
  br label %11, !dbg !50

11:                                               ; preds = %7, %1
  %12 = load %struct._xmlPattern*, %struct._xmlPattern** %2, align 8, !dbg !51
  %13 = getelementptr inbounds %struct._xmlPattern, %struct._xmlPattern* %12, i32 0, i32 1, !dbg !53
  %14 = load %struct._xmlDict*, %struct._xmlDict** %13, align 8, !dbg !53
  %15 = icmp ne %struct._xmlDict* %14, null, !dbg !54
  br i1 %15, label %16, label %20, !dbg !55

16:                                               ; preds = %11
  %17 = load %struct._xmlPattern*, %struct._xmlPattern** %2, align 8, !dbg !56
  %18 = getelementptr inbounds %struct._xmlPattern, %struct._xmlPattern* %17, i32 0, i32 1, !dbg !58
  %19 = load %struct._xmlDict*, %struct._xmlDict** %18, align 8, !dbg !58
  call void @xmlDictFree(%struct._xmlDict* noundef %19), !dbg !59
  br label %20, !dbg !60

20:                                               ; preds = %16, %11
  %21 = load %struct._xmlPattern*, %struct._xmlPattern** %2, align 8, !dbg !61
  %22 = icmp ne %struct._xmlPattern* %21, null, !dbg !61
  br i1 %22, label %23, label %25, !dbg !61

23:                                               ; preds = %20
  br i1 true, label %24, label %25, !dbg !61

24:                                               ; preds = %23
  br label %27, !dbg !61

25:                                               ; preds = %23, %20
  %26 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.xmlFreePattern, i64 0, i64 0)), !dbg !61
  br label %27, !dbg !61

27:                                               ; preds = %25, %24
  %28 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.xmlFreePattern, i64 0, i64 0)), !dbg !62
  %29 = load %struct._xmlPattern*, %struct._xmlPattern** %2, align 8, !dbg !63
  %30 = bitcast %struct._xmlPattern* %29 to i8*, !dbg !63
  call void @xmlFree(i8* noundef %30), !dbg !64
  ret void, !dbg !65
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !66 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlPattern*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlPattern** %2, metadata !69, metadata !DIExpression()), !dbg !70
  %5 = call noalias i8* @malloc(i64 noundef 24) #5, !dbg !71
  %6 = bitcast i8* %5 to %struct._xmlPattern*, !dbg !72
  store %struct._xmlPattern* %6, %struct._xmlPattern** %2, align 8, !dbg !70
  %7 = load %struct._xmlPattern*, %struct._xmlPattern** %2, align 8, !dbg !73
  %8 = bitcast %struct._xmlPattern* %7 to i8*, !dbg !73
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 24, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !dbg !74
  call void @llvm.dbg.declare(metadata i32* %3, metadata !75, metadata !DIExpression()), !dbg !76
  %9 = bitcast i32* %3 to i8*, !dbg !77
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)), !dbg !78
  call void @llvm.dbg.declare(metadata i32* %4, metadata !79, metadata !DIExpression()), !dbg !80
  %10 = bitcast i32* %4 to i8*, !dbg !81
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)), !dbg !82
  %11 = load i32, i32* %3, align 4, !dbg !83
  %12 = icmp ne i32 %11, 0, !dbg !83
  br i1 %12, label %13, label %16, !dbg !85

13:                                               ; preds = %0
  %14 = load %struct._xmlPattern*, %struct._xmlPattern** %2, align 8, !dbg !86
  %15 = getelementptr inbounds %struct._xmlPattern, %struct._xmlPattern* %14, i32 0, i32 0, !dbg !88
  store i8* null, i8** %15, align 8, !dbg !89
  br label %20, !dbg !90

16:                                               ; preds = %0
  %17 = call noalias i8* @malloc(i64 noundef 1) #5, !dbg !91
  %18 = load %struct._xmlPattern*, %struct._xmlPattern** %2, align 8, !dbg !93
  %19 = getelementptr inbounds %struct._xmlPattern, %struct._xmlPattern* %18, i32 0, i32 0, !dbg !94
  store i8* %17, i8** %19, align 8, !dbg !95
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i32, i32* %4, align 4, !dbg !96
  %22 = icmp ne i32 %21, 0, !dbg !96
  br i1 %22, label %23, label %26, !dbg !98

23:                                               ; preds = %20
  %24 = load %struct._xmlPattern*, %struct._xmlPattern** %2, align 8, !dbg !99
  %25 = getelementptr inbounds %struct._xmlPattern, %struct._xmlPattern* %24, i32 0, i32 1, !dbg !101
  store %struct._xmlDict* null, %struct._xmlDict** %25, align 8, !dbg !102
  br label %31, !dbg !103

26:                                               ; preds = %20
  %27 = call noalias i8* @malloc(i64 noundef 0) #5, !dbg !104
  %28 = bitcast i8* %27 to %struct._xmlDict*, !dbg !106
  %29 = load %struct._xmlPattern*, %struct._xmlPattern** %2, align 8, !dbg !107
  %30 = getelementptr inbounds %struct._xmlPattern, %struct._xmlPattern* %29, i32 0, i32 1, !dbg !108
  store %struct._xmlDict* %28, %struct._xmlDict** %30, align 8, !dbg !109
  br label %31

31:                                               ; preds = %26, %23
  %32 = load %struct._xmlPattern*, %struct._xmlPattern** %2, align 8, !dbg !110
  %33 = icmp ne %struct._xmlPattern* %32, null, !dbg !111
  %34 = zext i1 %33 to i32, !dbg !111
  %35 = sext i32 %34 to i64, !dbg !110
  call void @klee_assume(i64 noundef %35), !dbg !112
  %36 = load %struct._xmlPattern*, %struct._xmlPattern** %2, align 8, !dbg !113
  call void @xmlFreePattern(%struct._xmlPattern* noundef %36), !dbg !114
  ret i32 0, !dbg !115
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/090_pattern.c_261_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "36793d25d28a87c53de4e041220409d1")
!2 = !{!3, !4, !10}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlPattern", file: !1, line: 10, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlPattern", file: !1, line: 14, size: 192, elements: !7)
!7 = !{!8, !9, !14}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "steps", scope: !6, file: !1, line: 15, baseType: !3, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !6, file: !1, line: 16, baseType: !10, size: 64, offset: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !1, line: 11, baseType: !12)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !1, line: 21, elements: !13)
!13 = !{}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !6, file: !1, line: 18, baseType: !15, size: 32, offset: 128)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 7, !"PIC Level", i32 2}
!20 = !{i32 7, !"PIE Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"Ubuntu clang version 14.0.6"}
!24 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 26, type: !25, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !3}
!27 = !DILocalVariable(name: "ptr", arg: 1, scope: !24, file: !1, line: 26, type: !3)
!28 = !DILocation(line: 26, column: 20, scope: !24)
!29 = !DILocation(line: 28, column: 1, scope: !24)
!30 = distinct !DISubprogram(name: "xmlDictFree", scope: !1, file: !1, line: 30, type: !31, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !10}
!33 = !DILocalVariable(name: "dict", arg: 1, scope: !30, file: !1, line: 30, type: !10)
!34 = !DILocation(line: 30, column: 27, scope: !30)
!35 = !DILocation(line: 32, column: 1, scope: !30)
!36 = distinct !DISubprogram(name: "xmlFreePattern", scope: !1, file: !1, line: 35, type: !37, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !4}
!39 = !DILocalVariable(name: "comp", arg: 1, scope: !36, file: !1, line: 35, type: !4)
!40 = !DILocation(line: 35, column: 33, scope: !36)
!41 = !DILocation(line: 37, column: 9, scope: !42)
!42 = distinct !DILexicalBlock(scope: !36, file: !1, line: 37, column: 9)
!43 = !DILocation(line: 37, column: 15, scope: !42)
!44 = !DILocation(line: 37, column: 21, scope: !42)
!45 = !DILocation(line: 37, column: 9, scope: !36)
!46 = !DILocation(line: 38, column: 17, scope: !47)
!47 = distinct !DILexicalBlock(scope: !42, file: !1, line: 37, column: 30)
!48 = !DILocation(line: 38, column: 23, scope: !47)
!49 = !DILocation(line: 38, column: 9, scope: !47)
!50 = !DILocation(line: 39, column: 5, scope: !47)
!51 = !DILocation(line: 40, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !36, file: !1, line: 40, column: 9)
!53 = !DILocation(line: 40, column: 15, scope: !52)
!54 = !DILocation(line: 40, column: 20, scope: !52)
!55 = !DILocation(line: 40, column: 9, scope: !36)
!56 = !DILocation(line: 41, column: 21, scope: !57)
!57 = distinct !DILexicalBlock(scope: !52, file: !1, line: 40, column: 29)
!58 = !DILocation(line: 41, column: 27, scope: !57)
!59 = !DILocation(line: 41, column: 9, scope: !57)
!60 = !DILocation(line: 42, column: 5, scope: !57)
!61 = !DILocation(line: 46, column: 5, scope: !36)
!62 = !DILocation(line: 49, column: 5, scope: !36)
!63 = !DILocation(line: 53, column: 13, scope: !36)
!64 = !DILocation(line: 53, column: 5, scope: !36)
!65 = !DILocation(line: 54, column: 1, scope: !36)
!66 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 56, type: !67, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!67 = !DISubroutineType(types: !68)
!68 = !{!15}
!69 = !DILocalVariable(name: "comp", scope: !66, file: !1, line: 58, type: !4)
!70 = !DILocation(line: 58, column: 17, scope: !66)
!71 = !DILocation(line: 58, column: 38, scope: !66)
!72 = !DILocation(line: 58, column: 24, scope: !66)
!73 = !DILocation(line: 61, column: 24, scope: !66)
!74 = !DILocation(line: 61, column: 5, scope: !66)
!75 = !DILocalVariable(name: "steps_is_null", scope: !66, file: !1, line: 64, type: !15)
!76 = !DILocation(line: 64, column: 9, scope: !66)
!77 = !DILocation(line: 65, column: 24, scope: !66)
!78 = !DILocation(line: 65, column: 5, scope: !66)
!79 = !DILocalVariable(name: "dict_is_null", scope: !66, file: !1, line: 68, type: !15)
!80 = !DILocation(line: 68, column: 9, scope: !66)
!81 = !DILocation(line: 69, column: 24, scope: !66)
!82 = !DILocation(line: 69, column: 5, scope: !66)
!83 = !DILocation(line: 72, column: 9, scope: !84)
!84 = distinct !DILexicalBlock(scope: !66, file: !1, line: 72, column: 9)
!85 = !DILocation(line: 72, column: 9, scope: !66)
!86 = !DILocation(line: 73, column: 9, scope: !87)
!87 = distinct !DILexicalBlock(scope: !84, file: !1, line: 72, column: 24)
!88 = !DILocation(line: 73, column: 15, scope: !87)
!89 = !DILocation(line: 73, column: 21, scope: !87)
!90 = !DILocation(line: 74, column: 5, scope: !87)
!91 = !DILocation(line: 75, column: 23, scope: !92)
!92 = distinct !DILexicalBlock(scope: !84, file: !1, line: 74, column: 12)
!93 = !DILocation(line: 75, column: 9, scope: !92)
!94 = !DILocation(line: 75, column: 15, scope: !92)
!95 = !DILocation(line: 75, column: 21, scope: !92)
!96 = !DILocation(line: 78, column: 9, scope: !97)
!97 = distinct !DILexicalBlock(scope: !66, file: !1, line: 78, column: 9)
!98 = !DILocation(line: 78, column: 9, scope: !66)
!99 = !DILocation(line: 79, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !97, file: !1, line: 78, column: 23)
!101 = !DILocation(line: 79, column: 15, scope: !100)
!102 = !DILocation(line: 79, column: 20, scope: !100)
!103 = !DILocation(line: 80, column: 5, scope: !100)
!104 = !DILocation(line: 81, column: 33, scope: !105)
!105 = distinct !DILexicalBlock(scope: !97, file: !1, line: 80, column: 12)
!106 = !DILocation(line: 81, column: 22, scope: !105)
!107 = !DILocation(line: 81, column: 9, scope: !105)
!108 = !DILocation(line: 81, column: 15, scope: !105)
!109 = !DILocation(line: 81, column: 20, scope: !105)
!110 = !DILocation(line: 85, column: 17, scope: !66)
!111 = !DILocation(line: 85, column: 22, scope: !66)
!112 = !DILocation(line: 85, column: 5, scope: !66)
!113 = !DILocation(line: 88, column: 20, scope: !66)
!114 = !DILocation(line: 88, column: 5, scope: !66)
!115 = !DILocation(line: 90, column: 5, scope: !66)

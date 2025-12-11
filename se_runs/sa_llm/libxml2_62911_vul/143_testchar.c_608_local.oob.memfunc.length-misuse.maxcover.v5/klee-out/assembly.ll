; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/143_testchar.c_608_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/143_testchar.c_608_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlParserCtxt = type opaque
%struct._xmlParserInputBuffer = type opaque
%struct._xmlParserInput = type opaque

@.str = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.1 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/143_testchar.c_608_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.testDocumentRanges = private unnamed_addr constant [29 x i8] c"int testDocumentRanges(void)\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"symbolic_choice\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @testDocumentRanges() #0 !dbg !17 {
  %1 = alloca [5 x i8], align 1
  %2 = alloca %struct._xmlParserCtxt*, align 8
  %3 = alloca %struct._xmlParserInputBuffer*, align 8
  %4 = alloca %struct._xmlParserInput*, align 8
  %5 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata [5 x i8]* %1, metadata !22, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata %struct._xmlParserInputBuffer** %3, metadata !30, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata %struct._xmlParserInput** %4, metadata !36, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %5, metadata !42, metadata !DIExpression()), !dbg !43
  store i32 0, i32* %5, align 4, !dbg !43
  %6 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0, !dbg !44
  %7 = call i8* @memset(i8* %6, i32 0, i64 5), !dbg !44
  %8 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.1, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.testDocumentRanges, i64 0, i64 0)), !dbg !45
  %9 = load i32, i32* %5, align 4, !dbg !46
  ret i32 %9, !dbg !47
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlParserCtxt* @xmlCreateMemoryParserCtxt(i8* noundef %0, i32 noundef %1) #0 !dbg !48 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlParserCtxt*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !53, metadata !DIExpression()), !dbg !54
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %5, metadata !57, metadata !DIExpression()), !dbg !58
  %6 = call noalias i8* @malloc(i64 noundef 128) #7, !dbg !59
  %7 = bitcast i8* %6 to %struct._xmlParserCtxt*, !dbg !60
  store %struct._xmlParserCtxt* %7, %struct._xmlParserCtxt** %5, align 8, !dbg !58
  %8 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !61
  %9 = icmp ne %struct._xmlParserCtxt* %8, null, !dbg !61
  br i1 %9, label %10, label %14, !dbg !63

10:                                               ; preds = %2
  %11 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !64
  %12 = bitcast %struct._xmlParserCtxt* %11 to i8*, !dbg !66
  %13 = call i8* @memset(i8* %12, i32 0, i64 128), !dbg !66
  br label %14, !dbg !67

14:                                               ; preds = %10, %2
  %15 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !68
  ret %struct._xmlParserCtxt* %15, !dbg !69
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlCtxtReset(%struct._xmlParserCtxt* noundef %0) #0 !dbg !70 {
  %2 = alloca %struct._xmlParserCtxt*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !73, metadata !DIExpression()), !dbg !74
  %3 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !75
  ret void, !dbg !76
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFreeParserCtxt(%struct._xmlParserCtxt* noundef %0) #0 !dbg !77 {
  %2 = alloca %struct._xmlParserCtxt*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !78, metadata !DIExpression()), !dbg !79
  %3 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !80
  %4 = bitcast %struct._xmlParserCtxt* %3 to i8*, !dbg !80
  call void @free(i8* noundef %4) #7, !dbg !81
  ret void, !dbg !82
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !83 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !84, metadata !DIExpression()), !dbg !85
  %3 = bitcast i32* %2 to i8*, !dbg !86
  call void @klee_make_symbolic(i8* noundef %3, i64 noundef 4, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)), !dbg !87
  %4 = load i32, i32* %2, align 4, !dbg !88
  %5 = icmp sge i32 %4, 0, !dbg !89
  %6 = zext i1 %5 to i32, !dbg !89
  %7 = sext i32 %6 to i64, !dbg !88
  call void @klee_assume(i64 noundef %7), !dbg !90
  %8 = load i32, i32* %2, align 4, !dbg !91
  %9 = icmp sle i32 %8, 100, !dbg !92
  %10 = zext i1 %9 to i32, !dbg !92
  %11 = sext i32 %10 to i64, !dbg !91
  call void @klee_assume(i64 noundef %11), !dbg !93
  %12 = call i32 @testDocumentRanges(), !dbg !94
  ret i32 0, !dbg !95
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !96 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !104, metadata !DIExpression()), !dbg !105
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !106, metadata !DIExpression()), !dbg !107
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i8** %7, metadata !110, metadata !DIExpression()), !dbg !112
  %8 = load i8*, i8** %4, align 8, !dbg !113
  store i8* %8, i8** %7, align 8, !dbg !112
  br label %9, !dbg !114

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !115
  %11 = add i64 %10, -1, !dbg !115
  store i64 %11, i64* %6, align 8, !dbg !115
  %12 = icmp ugt i64 %10, 0, !dbg !116
  br i1 %12, label %13, label %18, !dbg !114

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !117
  %15 = trunc i32 %14 to i8, !dbg !117
  %16 = load i8*, i8** %7, align 8, !dbg !118
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !118
  store i8* %17, i8** %7, align 8, !dbg !118
  store i8 %15, i8* %16, align 1, !dbg !119
  br label %9, !dbg !114, !llvm.loop !120

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !122
  ret i8* %19, !dbg !123
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16, !16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/143_testchar.c_608_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "4697a891863f3106edac36d2ca96e197")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxtPtr", file: !1, line: 11, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 10, baseType: !6)
!6 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 10, flags: DIFlagFwdDecl)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"Ubuntu clang version 14.0.6"}
!17 = distinct !DISubprogram(name: "testDocumentRanges", scope: !1, file: !1, line: 18, type: !18, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!18 = !DISubroutineType(types: !19)
!19 = !{!20}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !{}
!22 = !DILocalVariable(name: "data", scope: !17, file: !1, line: 19, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 40, elements: !25)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !{!26}
!26 = !DISubrange(count: 5)
!27 = !DILocation(line: 19, column: 10, scope: !17)
!28 = !DILocalVariable(name: "ctxt", scope: !17, file: !1, line: 20, type: !3)
!29 = !DILocation(line: 20, column: 22, scope: !17)
!30 = !DILocalVariable(name: "buf", scope: !17, file: !1, line: 21, type: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputBufferPtr", file: !1, line: 13, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputBuffer", file: !1, line: 12, baseType: !34)
!34 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInputBuffer", file: !1, line: 12, flags: DIFlagFwdDecl)
!35 = !DILocation(line: 21, column: 29, scope: !17)
!36 = !DILocalVariable(name: "input", scope: !17, file: !1, line: 22, type: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputPtr", file: !1, line: 15, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInput", file: !1, line: 14, baseType: !40)
!40 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInput", file: !1, line: 14, flags: DIFlagFwdDecl)
!41 = !DILocation(line: 22, column: 23, scope: !17)
!42 = !DILocalVariable(name: "test_ret", scope: !17, file: !1, line: 23, type: !20)
!43 = !DILocation(line: 23, column: 9, scope: !17)
!44 = !DILocation(line: 26, column: 5, scope: !17)
!45 = !DILocation(line: 32, column: 5, scope: !17)
!46 = !DILocation(line: 34, column: 12, scope: !17)
!47 = !DILocation(line: 34, column: 5, scope: !17)
!48 = distinct !DISubprogram(name: "xmlCreateMemoryParserCtxt", scope: !1, file: !1, line: 38, type: !49, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!49 = !DISubroutineType(types: !50)
!50 = !{!3, !51, !20}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!53 = !DILocalVariable(name: "buffer", arg: 1, scope: !48, file: !1, line: 38, type: !51)
!54 = !DILocation(line: 38, column: 56, scope: !48)
!55 = !DILocalVariable(name: "size", arg: 2, scope: !48, file: !1, line: 38, type: !20)
!56 = !DILocation(line: 38, column: 68, scope: !48)
!57 = !DILocalVariable(name: "ctxt", scope: !48, file: !1, line: 40, type: !3)
!58 = !DILocation(line: 40, column: 22, scope: !48)
!59 = !DILocation(line: 40, column: 47, scope: !48)
!60 = !DILocation(line: 40, column: 29, scope: !48)
!61 = !DILocation(line: 41, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !48, file: !1, line: 41, column: 9)
!63 = !DILocation(line: 41, column: 9, scope: !48)
!64 = !DILocation(line: 42, column: 16, scope: !65)
!65 = distinct !DILexicalBlock(scope: !62, file: !1, line: 41, column: 15)
!66 = !DILocation(line: 42, column: 9, scope: !65)
!67 = !DILocation(line: 43, column: 5, scope: !65)
!68 = !DILocation(line: 44, column: 12, scope: !48)
!69 = !DILocation(line: 44, column: 5, scope: !48)
!70 = distinct !DISubprogram(name: "xmlCtxtReset", scope: !1, file: !1, line: 48, type: !71, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !3}
!73 = !DILocalVariable(name: "ctxt", arg: 1, scope: !70, file: !1, line: 48, type: !3)
!74 = !DILocation(line: 48, column: 36, scope: !70)
!75 = !DILocation(line: 50, column: 11, scope: !70)
!76 = !DILocation(line: 51, column: 1, scope: !70)
!77 = distinct !DISubprogram(name: "xmlFreeParserCtxt", scope: !1, file: !1, line: 54, type: !71, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!78 = !DILocalVariable(name: "ctxt", arg: 1, scope: !77, file: !1, line: 54, type: !3)
!79 = !DILocation(line: 54, column: 41, scope: !77)
!80 = !DILocation(line: 55, column: 10, scope: !77)
!81 = !DILocation(line: 55, column: 5, scope: !77)
!82 = !DILocation(line: 56, column: 1, scope: !77)
!83 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 58, type: !18, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!84 = !DILocalVariable(name: "symbolic_choice", scope: !83, file: !1, line: 60, type: !20)
!85 = !DILocation(line: 60, column: 9, scope: !83)
!86 = !DILocation(line: 61, column: 24, scope: !83)
!87 = !DILocation(line: 61, column: 5, scope: !83)
!88 = !DILocation(line: 64, column: 17, scope: !83)
!89 = !DILocation(line: 64, column: 33, scope: !83)
!90 = !DILocation(line: 64, column: 5, scope: !83)
!91 = !DILocation(line: 65, column: 17, scope: !83)
!92 = !DILocation(line: 65, column: 33, scope: !83)
!93 = !DILocation(line: 65, column: 5, scope: !83)
!94 = !DILocation(line: 68, column: 5, scope: !83)
!95 = !DILocation(line: 70, column: 5, scope: !83)
!96 = distinct !DISubprogram(name: "memset", scope: !97, file: !97, line: 12, type: !98, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !21)
!97 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!98 = !DISubroutineType(types: !99)
!99 = !{!100, !100, !20, !101}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !102, line: 46, baseType: !103)
!102 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!103 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!104 = !DILocalVariable(name: "dst", arg: 1, scope: !96, file: !97, line: 12, type: !100)
!105 = !DILocation(line: 12, column: 20, scope: !96)
!106 = !DILocalVariable(name: "s", arg: 2, scope: !96, file: !97, line: 12, type: !20)
!107 = !DILocation(line: 12, column: 29, scope: !96)
!108 = !DILocalVariable(name: "count", arg: 3, scope: !96, file: !97, line: 12, type: !101)
!109 = !DILocation(line: 12, column: 39, scope: !96)
!110 = !DILocalVariable(name: "a", scope: !96, file: !97, line: 13, type: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!112 = !DILocation(line: 13, column: 9, scope: !96)
!113 = !DILocation(line: 13, column: 13, scope: !96)
!114 = !DILocation(line: 14, column: 3, scope: !96)
!115 = !DILocation(line: 14, column: 15, scope: !96)
!116 = !DILocation(line: 14, column: 18, scope: !96)
!117 = !DILocation(line: 15, column: 12, scope: !96)
!118 = !DILocation(line: 15, column: 7, scope: !96)
!119 = !DILocation(line: 15, column: 10, scope: !96)
!120 = distinct !{!120, !114, !117, !121}
!121 = !{!"llvm.loop.mustprogress"}
!122 = !DILocation(line: 16, column: 10, scope: !96)
!123 = !DILocation(line: 16, column: 3, scope: !96)

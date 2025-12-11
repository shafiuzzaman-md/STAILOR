; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/297_xmlregexp.c_804_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/297_xmlregexp.c_804_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegParserCtxt = type { i32 }
%struct._xmlRegAtom = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"allocating atom\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_62911_vul/297_xmlregexp.c_804_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlFAGenerateTransitions = private unnamed_addr constant [55 x i8] c"void xmlFAGenerateTransitions(xmlRegParserCtxt *, int)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRegexpErrMemory(%struct._xmlRegParserCtxt* noundef %0, i8* noundef %1) #0 !dbg !29 {
  %3 = alloca %struct._xmlRegParserCtxt*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlRegParserCtxt* %0, %struct._xmlRegParserCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegParserCtxt** %3, metadata !41, metadata !DIExpression()), !dbg !42
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !43, metadata !DIExpression()), !dbg !44
  ret void, !dbg !45
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !46 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !52, metadata !DIExpression()), !dbg !53
  %3 = load i64, i64* %2, align 8, !dbg !54
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !55
  ret i8* %4, !dbg !56
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRegAtom* @xmlRegNewAtom(%struct._xmlRegParserCtxt* noundef %0, i32 noundef %1) #0 !dbg !57 {
  %3 = alloca %struct._xmlRegAtom*, align 8
  %4 = alloca %struct._xmlRegParserCtxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._xmlRegAtom*, align 8
  store %struct._xmlRegParserCtxt* %0, %struct._xmlRegParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegParserCtxt** %4, metadata !60, metadata !DIExpression()), !dbg !61
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %6, metadata !64, metadata !DIExpression()), !dbg !65
  %7 = call i8* @xmlMalloc(i64 noundef 16), !dbg !66
  %8 = bitcast i8* %7 to %struct._xmlRegAtom*, !dbg !67
  store %struct._xmlRegAtom* %8, %struct._xmlRegAtom** %6, align 8, !dbg !68
  %9 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !69
  %10 = icmp eq %struct._xmlRegAtom* %9, null, !dbg !71
  br i1 %10, label %11, label %13, !dbg !72

11:                                               ; preds = %2
  %12 = load %struct._xmlRegParserCtxt*, %struct._xmlRegParserCtxt** %4, align 8, !dbg !73
  call void @xmlRegexpErrMemory(%struct._xmlRegParserCtxt* noundef %12, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !75
  store %struct._xmlRegAtom* null, %struct._xmlRegAtom** %3, align 8, !dbg !76
  br label %27, !dbg !76

13:                                               ; preds = %2
  %14 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !77
  %15 = bitcast %struct._xmlRegAtom* %14 to i8*, !dbg !78
  %16 = call i8* @memset(i8* %15, i32 0, i64 16), !dbg !78
  %17 = load i32, i32* %5, align 4, !dbg !79
  %18 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !80
  %19 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %18, i32 0, i32 0, !dbg !81
  store i32 %17, i32* %19, align 4, !dbg !82
  %20 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !83
  %21 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %20, i32 0, i32 1, !dbg !84
  store i32 1, i32* %21, align 4, !dbg !85
  %22 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !86
  %23 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %22, i32 0, i32 2, !dbg !87
  store i32 0, i32* %23, align 4, !dbg !88
  %24 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !89
  %25 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %24, i32 0, i32 3, !dbg !90
  store i32 0, i32* %25, align 4, !dbg !91
  %26 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !92
  store %struct._xmlRegAtom* %26, %struct._xmlRegAtom** %3, align 8, !dbg !93
  br label %27, !dbg !93

27:                                               ; preds = %13, %11
  %28 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %3, align 8, !dbg !94
  ret %struct._xmlRegAtom* %28, !dbg !94
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFAGenerateTransitions(%struct._xmlRegParserCtxt* noundef %0, i32 noundef %1) #0 !dbg !95 {
  %3 = alloca %struct._xmlRegParserCtxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlRegAtom*, align 8
  store %struct._xmlRegParserCtxt* %0, %struct._xmlRegParserCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegParserCtxt** %3, metadata !98, metadata !DIExpression()), !dbg !99
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !100, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %5, metadata !102, metadata !DIExpression()), !dbg !103
  %6 = load %struct._xmlRegParserCtxt*, %struct._xmlRegParserCtxt** %3, align 8, !dbg !104
  %7 = load i32, i32* %4, align 4, !dbg !105
  %8 = call %struct._xmlRegAtom* @xmlRegNewAtom(%struct._xmlRegParserCtxt* noundef %6, i32 noundef %7), !dbg !106
  store %struct._xmlRegAtom* %8, %struct._xmlRegAtom** %5, align 8, !dbg !103
  %9 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %5, align 8, !dbg !107
  %10 = icmp ne %struct._xmlRegAtom* %9, null, !dbg !109
  br i1 %10, label %11, label %13, !dbg !110

11:                                               ; preds = %2
  %12 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.2, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.xmlFAGenerateTransitions, i64 0, i64 0)), !dbg !111
  br label %13, !dbg !113

13:                                               ; preds = %11, %2
  ret void, !dbg !114
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !115 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRegParserCtxt, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRegParserCtxt* %2, metadata !118, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.declare(metadata i32* %3, metadata !120, metadata !DIExpression()), !dbg !121
  %4 = getelementptr inbounds %struct._xmlRegParserCtxt, %struct._xmlRegParserCtxt* %2, i32 0, i32 0, !dbg !122
  store i32 0, i32* %4, align 4, !dbg !123
  %5 = bitcast i32* %3 to i8*, !dbg !124
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !125
  %6 = load i32, i32* %3, align 4, !dbg !126
  call void @xmlFAGenerateTransitions(%struct._xmlRegParserCtxt* noundef %2, i32 noundef %6), !dbg !127
  ret i32 0, !dbg !128
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !129 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !133, metadata !DIExpression()), !dbg !134
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !135, metadata !DIExpression()), !dbg !136
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !137, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata i8** %7, metadata !139, metadata !DIExpression()), !dbg !141
  %8 = load i8*, i8** %4, align 8, !dbg !142
  store i8* %8, i8** %7, align 8, !dbg !141
  br label %9, !dbg !143

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !144
  %11 = add i64 %10, -1, !dbg !144
  store i64 %11, i64* %6, align 8, !dbg !144
  %12 = icmp ugt i64 %10, 0, !dbg !145
  br i1 %12, label %13, label %18, !dbg !143

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !146
  %15 = trunc i32 %14 to i8, !dbg !146
  %16 = load i8*, i8** %7, align 8, !dbg !147
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !147
  store i8* %17, i8** %7, align 8, !dbg !147
  store i8 %15, i8* %16, align 1, !dbg !148
  br label %9, !dbg !143, !llvm.loop !149

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !151
  ret i8* %19, !dbg !152
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28, !28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !7, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/297_xmlregexp.c_804_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "fe71a17b62396259bc4c2a0f2f7bf7b2")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 13, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{!6}
!6 = !DIEnumerator(name: "XML_REGEXP_QUANT_ONCE", value: 1)
!7 = !{!8, !18}
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegAtomPtr", file: !1, line: 11, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegAtom", file: !1, line: 10, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegAtom", file: !1, line: 17, size: 128, elements: !12)
!12 = !{!13, !15, !16, !17}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !11, file: !1, line: 18, baseType: !14, size: 32)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "quant", scope: !11, file: !1, line: 19, baseType: !14, size: 32, offset: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !11, file: !1, line: 20, baseType: !14, size: 32, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !11, file: !1, line: 21, baseType: !14, size: 32, offset: 96)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!19 = distinct !DICompileUnit(language: DW_LANG_C99, file: !20, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{i32 7, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"Ubuntu clang version 14.0.6"}
!29 = distinct !DISubprogram(name: "xmlRegexpErrMemory", scope: !1, file: !1, line: 31, type: !30, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !40)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32, !37}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegParserCtxt", file: !1, line: 28, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegParserCtxt", file: !1, line: 25, size: 32, elements: !35)
!35 = !{!36}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !34, file: !1, line: 27, baseType: !14, size: 32)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!40 = !{}
!41 = !DILocalVariable(name: "ctxt", arg: 1, scope: !29, file: !1, line: 31, type: !32)
!42 = !DILocation(line: 31, column: 43, scope: !29)
!43 = !DILocalVariable(name: "msg", arg: 2, scope: !29, file: !1, line: 31, type: !37)
!44 = !DILocation(line: 31, column: 61, scope: !29)
!45 = !DILocation(line: 33, column: 1, scope: !29)
!46 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 35, type: !47, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !40)
!47 = !DISubroutineType(types: !48)
!48 = !{!18, !49}
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !50, line: 46, baseType: !51)
!50 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!51 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!52 = !DILocalVariable(name: "size", arg: 1, scope: !46, file: !1, line: 35, type: !49)
!53 = !DILocation(line: 35, column: 24, scope: !46)
!54 = !DILocation(line: 36, column: 19, scope: !46)
!55 = !DILocation(line: 36, column: 12, scope: !46)
!56 = !DILocation(line: 36, column: 5, scope: !46)
!57 = distinct !DISubprogram(name: "xmlRegNewAtom", scope: !1, file: !1, line: 40, type: !58, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !40)
!58 = !DISubroutineType(types: !59)
!59 = !{!8, !32, !14}
!60 = !DILocalVariable(name: "ctxt", arg: 1, scope: !57, file: !1, line: 40, type: !32)
!61 = !DILocation(line: 40, column: 47, scope: !57)
!62 = !DILocalVariable(name: "type", arg: 2, scope: !57, file: !1, line: 40, type: !14)
!63 = !DILocation(line: 40, column: 57, scope: !57)
!64 = !DILocalVariable(name: "ret", scope: !57, file: !1, line: 41, type: !8)
!65 = !DILocation(line: 41, column: 19, scope: !57)
!66 = !DILocation(line: 43, column: 27, scope: !57)
!67 = !DILocation(line: 43, column: 11, scope: !57)
!68 = !DILocation(line: 43, column: 9, scope: !57)
!69 = !DILocation(line: 44, column: 9, scope: !70)
!70 = distinct !DILexicalBlock(scope: !57, file: !1, line: 44, column: 9)
!71 = !DILocation(line: 44, column: 13, scope: !70)
!72 = !DILocation(line: 44, column: 9, scope: !57)
!73 = !DILocation(line: 45, column: 28, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !1, line: 44, column: 22)
!75 = !DILocation(line: 45, column: 9, scope: !74)
!76 = !DILocation(line: 46, column: 9, scope: !74)
!77 = !DILocation(line: 49, column: 12, scope: !57)
!78 = !DILocation(line: 49, column: 5, scope: !57)
!79 = !DILocation(line: 50, column: 17, scope: !57)
!80 = !DILocation(line: 50, column: 5, scope: !57)
!81 = !DILocation(line: 50, column: 10, scope: !57)
!82 = !DILocation(line: 50, column: 15, scope: !57)
!83 = !DILocation(line: 51, column: 5, scope: !57)
!84 = !DILocation(line: 51, column: 10, scope: !57)
!85 = !DILocation(line: 51, column: 16, scope: !57)
!86 = !DILocation(line: 52, column: 5, scope: !57)
!87 = !DILocation(line: 52, column: 10, scope: !57)
!88 = !DILocation(line: 52, column: 14, scope: !57)
!89 = !DILocation(line: 53, column: 5, scope: !57)
!90 = !DILocation(line: 53, column: 10, scope: !57)
!91 = !DILocation(line: 53, column: 14, scope: !57)
!92 = !DILocation(line: 54, column: 12, scope: !57)
!93 = !DILocation(line: 54, column: 5, scope: !57)
!94 = !DILocation(line: 55, column: 1, scope: !57)
!95 = distinct !DISubprogram(name: "xmlFAGenerateTransitions", scope: !1, file: !1, line: 58, type: !96, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !40)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !32, !14}
!98 = !DILocalVariable(name: "ctxt", arg: 1, scope: !95, file: !1, line: 58, type: !32)
!99 = !DILocation(line: 58, column: 49, scope: !95)
!100 = !DILocalVariable(name: "type", arg: 2, scope: !95, file: !1, line: 58, type: !14)
!101 = !DILocation(line: 58, column: 59, scope: !95)
!102 = !DILocalVariable(name: "atom", scope: !95, file: !1, line: 59, type: !8)
!103 = !DILocation(line: 59, column: 19, scope: !95)
!104 = !DILocation(line: 59, column: 40, scope: !95)
!105 = !DILocation(line: 59, column: 46, scope: !95)
!106 = !DILocation(line: 59, column: 26, scope: !95)
!107 = !DILocation(line: 60, column: 9, scope: !108)
!108 = distinct !DILexicalBlock(scope: !95, file: !1, line: 60, column: 9)
!109 = !DILocation(line: 60, column: 14, scope: !108)
!110 = !DILocation(line: 60, column: 9, scope: !95)
!111 = !DILocation(line: 64, column: 9, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !1, line: 60, column: 23)
!113 = !DILocation(line: 65, column: 5, scope: !112)
!114 = !DILocation(line: 66, column: 1, scope: !95)
!115 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 68, type: !116, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !40)
!116 = !DISubroutineType(types: !117)
!117 = !{!14}
!118 = !DILocalVariable(name: "ctxt", scope: !115, file: !1, line: 69, type: !33)
!119 = !DILocation(line: 69, column: 22, scope: !115)
!120 = !DILocalVariable(name: "type", scope: !115, file: !1, line: 70, type: !14)
!121 = !DILocation(line: 70, column: 9, scope: !115)
!122 = !DILocation(line: 73, column: 10, scope: !115)
!123 = !DILocation(line: 73, column: 14, scope: !115)
!124 = !DILocation(line: 76, column: 24, scope: !115)
!125 = !DILocation(line: 76, column: 5, scope: !115)
!126 = !DILocation(line: 79, column: 37, scope: !115)
!127 = !DILocation(line: 79, column: 5, scope: !115)
!128 = !DILocation(line: 81, column: 5, scope: !115)
!129 = distinct !DISubprogram(name: "memset", scope: !130, file: !130, line: 12, type: !131, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !40)
!130 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!131 = !DISubroutineType(types: !132)
!132 = !{!18, !18, !14, !49}
!133 = !DILocalVariable(name: "dst", arg: 1, scope: !129, file: !130, line: 12, type: !18)
!134 = !DILocation(line: 12, column: 20, scope: !129)
!135 = !DILocalVariable(name: "s", arg: 2, scope: !129, file: !130, line: 12, type: !14)
!136 = !DILocation(line: 12, column: 29, scope: !129)
!137 = !DILocalVariable(name: "count", arg: 3, scope: !129, file: !130, line: 12, type: !49)
!138 = !DILocation(line: 12, column: 39, scope: !129)
!139 = !DILocalVariable(name: "a", scope: !129, file: !130, line: 13, type: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!141 = !DILocation(line: 13, column: 9, scope: !129)
!142 = !DILocation(line: 13, column: 13, scope: !129)
!143 = !DILocation(line: 14, column: 3, scope: !129)
!144 = !DILocation(line: 14, column: 15, scope: !129)
!145 = !DILocation(line: 14, column: 18, scope: !129)
!146 = !DILocation(line: 15, column: 12, scope: !129)
!147 = !DILocation(line: 15, column: 7, scope: !129)
!148 = !DILocation(line: 15, column: 10, scope: !129)
!149 = distinct !{!149, !143, !146, !150}
!150 = !{!"llvm.loop.mustprogress"}
!151 = !DILocation(line: 16, column: 10, scope: !129)
!152 = !DILocation(line: 16, column: 3, scope: !129)

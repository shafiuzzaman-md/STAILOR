; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/390_xmlschemas.c_3375_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/390_xmlschemas.c_3375_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaParserCtxt = type { i32 }
%struct._xmlNode = type { i32 }
%struct._xmlSchemaAnnot = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [102 x i8] c"(annotation != ((void*)0) && sizeof(xmlSchemaAnnot) <= sizeof(xmlSchemaAnnot)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/390_xmlschemas.c_3375_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSchemaParseSchema = private unnamed_addr constant [61 x i8] c"void xmlSchemaParseSchema(xmlSchemaParserCtxt *, xmlNodePtr)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"allocating annotation\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaPErrMemory(%struct._xmlSchemaParserCtxt* noundef %0, i8* noundef %1, %struct._xmlNode* noundef %2) #0 !dbg !20 {
  %4 = alloca %struct._xmlSchemaParserCtxt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._xmlNode*, align 8
  store %struct._xmlSchemaParserCtxt* %0, %struct._xmlSchemaParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %4, metadata !39, metadata !DIExpression()), !dbg !40
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !41, metadata !DIExpression()), !dbg !42
  store %struct._xmlNode* %2, %struct._xmlNode** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %6, metadata !43, metadata !DIExpression()), !dbg !44
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
define dso_local i32 @main() #0 !dbg !57 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaParserCtxt, align 4
  %3 = alloca %struct._xmlNode*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt* %2, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !62, metadata !DIExpression()), !dbg !63
  %4 = bitcast %struct._xmlNode** %3 to i8*, !dbg !64
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !65
  %5 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !66
  %6 = icmp ne %struct._xmlNode* %5, null, !dbg !67
  %7 = zext i1 %6 to i32, !dbg !67
  %8 = sext i32 %7 to i64, !dbg !66
  call void @klee_assume(i64 noundef %8), !dbg !68
  %9 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !69
  call void @xmlSchemaParseSchema(%struct._xmlSchemaParserCtxt* noundef %2, %struct._xmlNode* noundef %9), !dbg !70
  ret i32 0, !dbg !71
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmlSchemaParseSchema(%struct._xmlSchemaParserCtxt* noundef %0, %struct._xmlNode* noundef %1) #0 !dbg !72 {
  %3 = alloca %struct._xmlSchemaParserCtxt*, align 8
  %4 = alloca %struct._xmlNode*, align 8
  %5 = alloca %struct._xmlSchemaAnnot*, align 8
  store %struct._xmlSchemaParserCtxt* %0, %struct._xmlSchemaParserCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %3, metadata !75, metadata !DIExpression()), !dbg !76
  store %struct._xmlNode* %1, %struct._xmlNode** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !77, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaAnnot** %5, metadata !79, metadata !DIExpression()), !dbg !80
  %6 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %3, align 8, !dbg !81
  %7 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !82
  %8 = call %struct._xmlSchemaAnnot* @xmlSchemaNewAnnotation(%struct._xmlSchemaParserCtxt* noundef %6, %struct._xmlNode* noundef %7), !dbg !83
  store %struct._xmlSchemaAnnot* %8, %struct._xmlSchemaAnnot** %5, align 8, !dbg !84
  %9 = load %struct._xmlSchemaAnnot*, %struct._xmlSchemaAnnot** %5, align 8, !dbg !85
  %10 = icmp ne %struct._xmlSchemaAnnot* %9, null, !dbg !87
  br i1 %10, label %11, label %22, !dbg !88

11:                                               ; preds = %2
  %12 = load %struct._xmlSchemaAnnot*, %struct._xmlSchemaAnnot** %5, align 8, !dbg !89
  %13 = icmp ne %struct._xmlSchemaAnnot* %12, null, !dbg !89
  br i1 %13, label %14, label %16, !dbg !89

14:                                               ; preds = %11
  br i1 true, label %15, label %16, !dbg !89

15:                                               ; preds = %14
  br label %18, !dbg !89

16:                                               ; preds = %14, %11
  %17 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.3, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.xmlSchemaParseSchema, i64 0, i64 0)), !dbg !89
  br label %18, !dbg !89

18:                                               ; preds = %16, %15
  %19 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.3, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.xmlSchemaParseSchema, i64 0, i64 0)), !dbg !91
  %20 = load %struct._xmlSchemaAnnot*, %struct._xmlSchemaAnnot** %5, align 8, !dbg !92
  %21 = bitcast %struct._xmlSchemaAnnot* %20 to i8*, !dbg !92
  call void @free(i8* noundef %21) #7, !dbg !93
  br label %22, !dbg !94

22:                                               ; preds = %18, %2
  ret void, !dbg !95
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._xmlSchemaAnnot* @xmlSchemaNewAnnotation(%struct._xmlSchemaParserCtxt* noundef %0, %struct._xmlNode* noundef %1) #0 !dbg !96 {
  %3 = alloca %struct._xmlSchemaAnnot*, align 8
  %4 = alloca %struct._xmlSchemaParserCtxt*, align 8
  %5 = alloca %struct._xmlNode*, align 8
  %6 = alloca %struct._xmlSchemaAnnot*, align 8
  store %struct._xmlSchemaParserCtxt* %0, %struct._xmlSchemaParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %4, metadata !99, metadata !DIExpression()), !dbg !100
  store %struct._xmlNode* %1, %struct._xmlNode** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaAnnot** %6, metadata !103, metadata !DIExpression()), !dbg !104
  %7 = call i8* @xmlMalloc(i64 noundef 8), !dbg !105
  %8 = bitcast i8* %7 to %struct._xmlSchemaAnnot*, !dbg !106
  store %struct._xmlSchemaAnnot* %8, %struct._xmlSchemaAnnot** %6, align 8, !dbg !107
  %9 = load %struct._xmlSchemaAnnot*, %struct._xmlSchemaAnnot** %6, align 8, !dbg !108
  %10 = icmp eq %struct._xmlSchemaAnnot* %9, null, !dbg !110
  br i1 %10, label %11, label %14, !dbg !111

11:                                               ; preds = %2
  %12 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %4, align 8, !dbg !112
  %13 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !114
  call void @xmlSchemaPErrMemory(%struct._xmlSchemaParserCtxt* noundef %12, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), %struct._xmlNode* noundef %13), !dbg !115
  store %struct._xmlSchemaAnnot* null, %struct._xmlSchemaAnnot** %3, align 8, !dbg !116
  br label %23, !dbg !116

14:                                               ; preds = %2
  %15 = load %struct._xmlSchemaAnnot*, %struct._xmlSchemaAnnot** %6, align 8, !dbg !117
  %16 = bitcast %struct._xmlSchemaAnnot* %15 to i8*, !dbg !118
  %17 = call i8* @memset(i8* %16, i32 0, i64 8), !dbg !118
  %18 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !119
  %19 = bitcast %struct._xmlNode* %18 to i8*, !dbg !119
  %20 = load %struct._xmlSchemaAnnot*, %struct._xmlSchemaAnnot** %6, align 8, !dbg !120
  %21 = getelementptr inbounds %struct._xmlSchemaAnnot, %struct._xmlSchemaAnnot* %20, i32 0, i32 0, !dbg !121
  store i8* %19, i8** %21, align 8, !dbg !122
  %22 = load %struct._xmlSchemaAnnot*, %struct._xmlSchemaAnnot** %6, align 8, !dbg !123
  store %struct._xmlSchemaAnnot* %22, %struct._xmlSchemaAnnot** %3, align 8, !dbg !124
  br label %23, !dbg !124

23:                                               ; preds = %14, %11
  %24 = load %struct._xmlSchemaAnnot*, %struct._xmlSchemaAnnot** %3, align 8, !dbg !125
  ret %struct._xmlSchemaAnnot* %24, !dbg !125
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !126 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !130, metadata !DIExpression()), !dbg !131
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !132, metadata !DIExpression()), !dbg !133
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !134, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata i8** %7, metadata !136, metadata !DIExpression()), !dbg !138
  %8 = load i8*, i8** %4, align 8, !dbg !139
  store i8* %8, i8** %7, align 8, !dbg !138
  br label %9, !dbg !140

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !141
  %11 = add i64 %10, -1, !dbg !141
  store i64 %11, i64* %6, align 8, !dbg !141
  %12 = icmp ugt i64 %10, 0, !dbg !142
  br i1 %12, label %13, label %18, !dbg !140

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !143
  %15 = trunc i32 %14 to i8, !dbg !143
  %16 = load i8*, i8** %7, align 8, !dbg !144
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !144
  store i8* %17, i8** %7, align 8, !dbg !144
  store i8 %15, i8* %16, align 1, !dbg !145
  br label %9, !dbg !140, !llvm.loop !146

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !148
  ret i8* %19, !dbg !149
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19, !19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/390_xmlschemas.c_3375_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "b9af85e64754e271249e9fe29de3b688")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaAnnotPtr", file: !1, line: 11, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaAnnot", file: !1, line: 10, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaAnnot", file: !1, line: 17, size: 64, elements: !8)
!8 = !{!9}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !7, file: !1, line: 18, baseType: !3, size: 64)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !11, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!11 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"Ubuntu clang version 14.0.6"}
!20 = distinct !DISubprogram(name: "xmlSchemaPErrMemory", scope: !1, file: !1, line: 30, type: !21, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !38)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !23, !29, !32}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxt", file: !1, line: 12, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaParserCtxt", file: !1, line: 21, size: 32, elements: !26)
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !25, file: !1, line: 22, baseType: !28, size: 32)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 14, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 13, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 25, size: 32, elements: !36)
!36 = !{!37}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !35, file: !1, line: 26, baseType: !28, size: 32)
!38 = !{}
!39 = !DILocalVariable(name: "ctxt", arg: 1, scope: !20, file: !1, line: 30, type: !23)
!40 = !DILocation(line: 30, column: 47, scope: !20)
!41 = !DILocalVariable(name: "msg", arg: 2, scope: !20, file: !1, line: 30, type: !29)
!42 = !DILocation(line: 30, column: 65, scope: !20)
!43 = !DILocalVariable(name: "node", arg: 3, scope: !20, file: !1, line: 30, type: !32)
!44 = !DILocation(line: 30, column: 81, scope: !20)
!45 = !DILocation(line: 32, column: 1, scope: !20)
!46 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 34, type: !47, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !38)
!47 = !DISubroutineType(types: !48)
!48 = !{!3, !49}
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !50, line: 46, baseType: !51)
!50 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!51 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!52 = !DILocalVariable(name: "size", arg: 1, scope: !46, file: !1, line: 34, type: !49)
!53 = !DILocation(line: 34, column: 24, scope: !46)
!54 = !DILocation(line: 35, column: 19, scope: !46)
!55 = !DILocation(line: 35, column: 12, scope: !46)
!56 = !DILocation(line: 35, column: 5, scope: !46)
!57 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 75, type: !58, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !38)
!58 = !DISubroutineType(types: !59)
!59 = !{!28}
!60 = !DILocalVariable(name: "ctxt", scope: !57, file: !1, line: 76, type: !24)
!61 = !DILocation(line: 76, column: 25, scope: !57)
!62 = !DILocalVariable(name: "node", scope: !57, file: !1, line: 77, type: !32)
!63 = !DILocation(line: 77, column: 16, scope: !57)
!64 = !DILocation(line: 80, column: 24, scope: !57)
!65 = !DILocation(line: 80, column: 5, scope: !57)
!66 = !DILocation(line: 83, column: 17, scope: !57)
!67 = !DILocation(line: 83, column: 22, scope: !57)
!68 = !DILocation(line: 83, column: 5, scope: !57)
!69 = !DILocation(line: 86, column: 33, scope: !57)
!70 = !DILocation(line: 86, column: 5, scope: !57)
!71 = !DILocation(line: 88, column: 5, scope: !57)
!72 = distinct !DISubprogram(name: "xmlSchemaParseSchema", scope: !1, file: !1, line: 56, type: !73, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !38)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !23, !32}
!75 = !DILocalVariable(name: "ctxt", arg: 1, scope: !72, file: !1, line: 56, type: !23)
!76 = !DILocation(line: 56, column: 55, scope: !72)
!77 = !DILocalVariable(name: "node", arg: 2, scope: !72, file: !1, line: 56, type: !32)
!78 = !DILocation(line: 56, column: 72, scope: !72)
!79 = !DILocalVariable(name: "annotation", scope: !72, file: !1, line: 57, type: !4)
!80 = !DILocation(line: 57, column: 23, scope: !72)
!81 = !DILocation(line: 59, column: 41, scope: !72)
!82 = !DILocation(line: 59, column: 47, scope: !72)
!83 = !DILocation(line: 59, column: 18, scope: !72)
!84 = !DILocation(line: 59, column: 16, scope: !72)
!85 = !DILocation(line: 60, column: 9, scope: !86)
!86 = distinct !DILexicalBlock(scope: !72, file: !1, line: 60, column: 9)
!87 = !DILocation(line: 60, column: 20, scope: !86)
!88 = !DILocation(line: 60, column: 9, scope: !72)
!89 = !DILocation(line: 66, column: 9, scope: !90)
!90 = distinct !DILexicalBlock(scope: !86, file: !1, line: 60, column: 29)
!91 = !DILocation(line: 69, column: 9, scope: !90)
!92 = !DILocation(line: 71, column: 14, scope: !90)
!93 = !DILocation(line: 71, column: 9, scope: !90)
!94 = !DILocation(line: 72, column: 5, scope: !90)
!95 = !DILocation(line: 73, column: 1, scope: !72)
!96 = distinct !DISubprogram(name: "xmlSchemaNewAnnotation", scope: !1, file: !1, line: 39, type: !97, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !38)
!97 = !DISubroutineType(types: !98)
!98 = !{!4, !23, !32}
!99 = !DILocalVariable(name: "ctxt", arg: 1, scope: !96, file: !1, line: 39, type: !23)
!100 = !DILocation(line: 39, column: 70, scope: !96)
!101 = !DILocalVariable(name: "node", arg: 2, scope: !96, file: !1, line: 39, type: !32)
!102 = !DILocation(line: 39, column: 87, scope: !96)
!103 = !DILocalVariable(name: "ret", scope: !96, file: !1, line: 40, type: !4)
!104 = !DILocation(line: 40, column: 23, scope: !96)
!105 = !DILocation(line: 42, column: 31, scope: !96)
!106 = !DILocation(line: 42, column: 11, scope: !96)
!107 = !DILocation(line: 42, column: 9, scope: !96)
!108 = !DILocation(line: 43, column: 9, scope: !109)
!109 = distinct !DILexicalBlock(scope: !96, file: !1, line: 43, column: 9)
!110 = !DILocation(line: 43, column: 13, scope: !109)
!111 = !DILocation(line: 43, column: 9, scope: !96)
!112 = !DILocation(line: 44, column: 29, scope: !113)
!113 = distinct !DILexicalBlock(scope: !109, file: !1, line: 43, column: 22)
!114 = !DILocation(line: 44, column: 60, scope: !113)
!115 = !DILocation(line: 44, column: 9, scope: !113)
!116 = !DILocation(line: 45, column: 9, scope: !113)
!117 = !DILocation(line: 49, column: 12, scope: !96)
!118 = !DILocation(line: 49, column: 5, scope: !96)
!119 = !DILocation(line: 51, column: 20, scope: !96)
!120 = !DILocation(line: 51, column: 5, scope: !96)
!121 = !DILocation(line: 51, column: 10, scope: !96)
!122 = !DILocation(line: 51, column: 18, scope: !96)
!123 = !DILocation(line: 52, column: 13, scope: !96)
!124 = !DILocation(line: 52, column: 5, scope: !96)
!125 = !DILocation(line: 53, column: 1, scope: !96)
!126 = distinct !DISubprogram(name: "memset", scope: !127, file: !127, line: 12, type: !128, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !38)
!127 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!128 = !DISubroutineType(types: !129)
!129 = !{!3, !3, !28, !49}
!130 = !DILocalVariable(name: "dst", arg: 1, scope: !126, file: !127, line: 12, type: !3)
!131 = !DILocation(line: 12, column: 20, scope: !126)
!132 = !DILocalVariable(name: "s", arg: 2, scope: !126, file: !127, line: 12, type: !28)
!133 = !DILocation(line: 12, column: 29, scope: !126)
!134 = !DILocalVariable(name: "count", arg: 3, scope: !126, file: !127, line: 12, type: !49)
!135 = !DILocation(line: 12, column: 39, scope: !126)
!136 = !DILocalVariable(name: "a", scope: !126, file: !127, line: 13, type: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!138 = !DILocation(line: 13, column: 9, scope: !126)
!139 = !DILocation(line: 13, column: 13, scope: !126)
!140 = !DILocation(line: 14, column: 3, scope: !126)
!141 = !DILocation(line: 14, column: 15, scope: !126)
!142 = !DILocation(line: 14, column: 18, scope: !126)
!143 = !DILocation(line: 15, column: 12, scope: !126)
!144 = !DILocation(line: 15, column: 7, scope: !126)
!145 = !DILocation(line: 15, column: 10, scope: !126)
!146 = distinct !{!146, !140, !143, !147}
!147 = !{!"llvm.loop.mustprogress"}
!148 = !DILocation(line: 16, column: 10, scope: !126)
!149 = !DILocation(line: 16, column: 3, scope: !126)

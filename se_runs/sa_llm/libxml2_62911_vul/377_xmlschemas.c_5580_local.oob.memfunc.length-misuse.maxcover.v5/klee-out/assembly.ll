; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/377_xmlschemas.c_5580_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/377_xmlschemas.c_5580_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaParserCtxt = type { i32 }
%struct._xmlSchemaIDC = type { i8*, i8*, i32, %struct._xmlNode* }
%struct._xmlNode = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"alloc_size\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"allocating an identity-constraint definition\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"(alloc_size >= sizeof(xmlSchemaIDC)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/377_xmlschemas.c_5580_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSchemaParseRedefine = private unnamed_addr constant [104 x i8] c"xmlSchemaIDC *xmlSchemaParseRedefine(xmlSchemaParserCtxt *, const char *, const char *, int, xmlNode *)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"nsName\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"category\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaPErrMemory(%struct._xmlSchemaParserCtxt* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !31 {
  %4 = alloca %struct._xmlSchemaParserCtxt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._xmlSchemaParserCtxt* %0, %struct._xmlSchemaParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %4, metadata !40, metadata !DIExpression()), !dbg !41
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !42, metadata !DIExpression()), !dbg !43
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !44, metadata !DIExpression()), !dbg !45
  %7 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %4, align 8, !dbg !46
  %8 = load i8*, i8** %5, align 8, !dbg !47
  %9 = load i8*, i8** %6, align 8, !dbg !48
  ret void, !dbg !49
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlSchemaIDC* @xmlSchemaParseRedefine(%struct._xmlSchemaParserCtxt* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3, %struct._xmlNode* noundef %4) #0 !dbg !50 {
  %6 = alloca %struct._xmlSchemaIDC*, align 8
  %7 = alloca %struct._xmlSchemaParserCtxt*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct._xmlNode*, align 8
  %12 = alloca %struct._xmlSchemaIDC*, align 8
  %13 = alloca i64, align 8
  store %struct._xmlSchemaParserCtxt* %0, %struct._xmlSchemaParserCtxt** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %7, metadata !53, metadata !DIExpression()), !dbg !54
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !55, metadata !DIExpression()), !dbg !56
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !57, metadata !DIExpression()), !dbg !58
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !59, metadata !DIExpression()), !dbg !60
  store %struct._xmlNode* %4, %struct._xmlNode** %11, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %11, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaIDC** %12, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i64* %13, metadata !65, metadata !DIExpression()), !dbg !69
  %14 = bitcast i64* %13 to i8*, !dbg !70
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 8, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)), !dbg !71
  %15 = load i64, i64* %13, align 8, !dbg !72
  %16 = icmp ugt i64 %15, 0, !dbg !73
  %17 = zext i1 %16 to i32, !dbg !73
  %18 = sext i32 %17 to i64, !dbg !72
  call void @klee_assume(i64 noundef %18), !dbg !74
  %19 = load i64, i64* %13, align 8, !dbg !75
  %20 = icmp ule i64 %19, 1024, !dbg !76
  %21 = zext i1 %20 to i32, !dbg !76
  %22 = sext i32 %21 to i64, !dbg !75
  call void @klee_assume(i64 noundef %22), !dbg !77
  %23 = load i64, i64* %13, align 8, !dbg !78
  %24 = call noalias i8* @malloc(i64 noundef %23) #7, !dbg !79
  %25 = bitcast i8* %24 to %struct._xmlSchemaIDC*, !dbg !80
  store %struct._xmlSchemaIDC* %25, %struct._xmlSchemaIDC** %12, align 8, !dbg !81
  %26 = load %struct._xmlSchemaIDC*, %struct._xmlSchemaIDC** %12, align 8, !dbg !82
  %27 = icmp eq %struct._xmlSchemaIDC* %26, null, !dbg !84
  br i1 %27, label %28, label %30, !dbg !85

28:                                               ; preds = %5
  %29 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %7, align 8, !dbg !86
  call void @xmlSchemaPErrMemory(%struct._xmlSchemaParserCtxt* noundef %29, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* noundef null), !dbg !88
  store %struct._xmlSchemaIDC* null, %struct._xmlSchemaIDC** %6, align 8, !dbg !89
  br label %55, !dbg !89

30:                                               ; preds = %5
  %31 = load i64, i64* %13, align 8, !dbg !90
  %32 = icmp uge i64 %31, 32, !dbg !90
  br i1 %32, label %33, label %35, !dbg !90

33:                                               ; preds = %30
  br i1 true, label %34, label %35, !dbg !90

34:                                               ; preds = %33
  br label %37, !dbg !90

35:                                               ; preds = %33, %30
  %36 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @__PRETTY_FUNCTION__.xmlSchemaParseRedefine, i64 0, i64 0)), !dbg !90
  br label %37, !dbg !90

37:                                               ; preds = %35, %34
  %38 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @__PRETTY_FUNCTION__.xmlSchemaParseRedefine, i64 0, i64 0)), !dbg !91
  %39 = load %struct._xmlSchemaIDC*, %struct._xmlSchemaIDC** %12, align 8, !dbg !92
  %40 = bitcast %struct._xmlSchemaIDC* %39 to i8*, !dbg !93
  %41 = call i8* @memset(i8* %40, i32 0, i64 32), !dbg !93
  %42 = load i8*, i8** %8, align 8, !dbg !94
  %43 = load %struct._xmlSchemaIDC*, %struct._xmlSchemaIDC** %12, align 8, !dbg !95
  %44 = getelementptr inbounds %struct._xmlSchemaIDC, %struct._xmlSchemaIDC* %43, i32 0, i32 0, !dbg !96
  store i8* %42, i8** %44, align 8, !dbg !97
  %45 = load i8*, i8** %9, align 8, !dbg !98
  %46 = load %struct._xmlSchemaIDC*, %struct._xmlSchemaIDC** %12, align 8, !dbg !99
  %47 = getelementptr inbounds %struct._xmlSchemaIDC, %struct._xmlSchemaIDC* %46, i32 0, i32 1, !dbg !100
  store i8* %45, i8** %47, align 8, !dbg !101
  %48 = load i32, i32* %10, align 4, !dbg !102
  %49 = load %struct._xmlSchemaIDC*, %struct._xmlSchemaIDC** %12, align 8, !dbg !103
  %50 = getelementptr inbounds %struct._xmlSchemaIDC, %struct._xmlSchemaIDC* %49, i32 0, i32 2, !dbg !104
  store i32 %48, i32* %50, align 8, !dbg !105
  %51 = load %struct._xmlNode*, %struct._xmlNode** %11, align 8, !dbg !106
  %52 = load %struct._xmlSchemaIDC*, %struct._xmlSchemaIDC** %12, align 8, !dbg !107
  %53 = getelementptr inbounds %struct._xmlSchemaIDC, %struct._xmlSchemaIDC* %52, i32 0, i32 3, !dbg !108
  store %struct._xmlNode* %51, %struct._xmlNode** %53, align 8, !dbg !109
  %54 = load %struct._xmlSchemaIDC*, %struct._xmlSchemaIDC** %12, align 8, !dbg !110
  store %struct._xmlSchemaIDC* %54, %struct._xmlSchemaIDC** %6, align 8, !dbg !111
  br label %55, !dbg !111

55:                                               ; preds = %37, %28
  %56 = load %struct._xmlSchemaIDC*, %struct._xmlSchemaIDC** %6, align 8, !dbg !112
  ret %struct._xmlSchemaIDC* %56, !dbg !112
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !113 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaParserCtxt, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._xmlNode, align 4
  %7 = alloca %struct._xmlSchemaIDC*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt* %2, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata i8** %3, metadata !118, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.declare(metadata i8** %4, metadata !120, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata i32* %5, metadata !122, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.declare(metadata %struct._xmlNode* %6, metadata !124, metadata !DIExpression()), !dbg !125
  %8 = bitcast i8** %3 to i8*, !dbg !126
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)), !dbg !127
  %9 = bitcast i8** %4 to i8*, !dbg !128
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)), !dbg !129
  %10 = bitcast i32* %5 to i8*, !dbg !130
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)), !dbg !131
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaIDC** %7, metadata !132, metadata !DIExpression()), !dbg !133
  %11 = load i8*, i8** %3, align 8, !dbg !134
  %12 = load i8*, i8** %4, align 8, !dbg !135
  %13 = load i32, i32* %5, align 4, !dbg !136
  %14 = call %struct._xmlSchemaIDC* @xmlSchemaParseRedefine(%struct._xmlSchemaParserCtxt* noundef %2, i8* noundef %11, i8* noundef %12, i32 noundef %13, %struct._xmlNode* noundef %6), !dbg !137
  store %struct._xmlSchemaIDC* %14, %struct._xmlSchemaIDC** %7, align 8, !dbg !133
  %15 = load %struct._xmlSchemaIDC*, %struct._xmlSchemaIDC** %7, align 8, !dbg !138
  %16 = icmp ne %struct._xmlSchemaIDC* %15, null, !dbg !140
  br i1 %16, label %17, label %20, !dbg !141

17:                                               ; preds = %0
  %18 = load %struct._xmlSchemaIDC*, %struct._xmlSchemaIDC** %7, align 8, !dbg !142
  %19 = bitcast %struct._xmlSchemaIDC* %18 to i8*, !dbg !142
  call void @free(i8* noundef %19) #7, !dbg !144
  br label %20, !dbg !145

20:                                               ; preds = %17, %0
  ret i32 0, !dbg !146
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !147 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !151, metadata !DIExpression()), !dbg !152
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !153, metadata !DIExpression()), !dbg !154
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !155, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.declare(metadata i8** %7, metadata !157, metadata !DIExpression()), !dbg !159
  %8 = load i8*, i8** %4, align 8, !dbg !160
  store i8* %8, i8** %7, align 8, !dbg !159
  br label %9, !dbg !161

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !162
  %11 = add i64 %10, -1, !dbg !162
  store i64 %11, i64* %6, align 8, !dbg !162
  %12 = icmp ugt i64 %10, 0, !dbg !163
  br i1 %12, label %13, label %18, !dbg !161

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !164
  %15 = trunc i32 %14 to i8, !dbg !164
  %16 = load i8*, i8** %7, align 8, !dbg !165
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !165
  store i8* %17, i8** %7, align 8, !dbg !165
  store i8 %15, i8* %16, align 1, !dbg !166
  br label %9, !dbg !161, !llvm.loop !167

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !169
  ret i8* %19, !dbg !170
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30, !30}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/377_xmlschemas.c_5580_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "4b29b02f5dc98a8ea1b8fd54029d6b22")
!2 = !{!3, !20}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaIDC", file: !1, line: 11, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaIDC", file: !1, line: 19, size: 256, elements: !6)
!6 = !{!7, !11, !12, !14}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "targetNamespace", scope: !5, file: !1, line: 20, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5, file: !1, line: 21, baseType: !8, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5, file: !1, line: 22, baseType: !13, size: 32, offset: 128)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5, file: !1, line: 23, baseType: !15, size: 64, offset: 192)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 12, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 26, size: 32, elements: !18)
!18 = !{!19}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !17, file: !1, line: 27, baseType: !13, size: 32)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = distinct !DICompileUnit(language: DW_LANG_C99, file: !22, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!22 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!23 = !{i32 7, !"Dwarf Version", i32 5}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = !{i32 7, !"PIC Level", i32 2}
!27 = !{i32 7, !"PIE Level", i32 2}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"Ubuntu clang version 14.0.6"}
!31 = distinct !DISubprogram(name: "xmlSchemaPErrMemory", scope: !1, file: !1, line: 31, type: !32, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !34, !8, !8}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxt", file: !1, line: 10, baseType: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaParserCtxt", file: !1, line: 15, size: 32, elements: !37)
!37 = !{!38}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !36, file: !1, line: 16, baseType: !13, size: 32)
!39 = !{}
!40 = !DILocalVariable(name: "ctxt", arg: 1, scope: !31, file: !1, line: 31, type: !34)
!41 = !DILocation(line: 31, column: 47, scope: !31)
!42 = !DILocalVariable(name: "msg", arg: 2, scope: !31, file: !1, line: 31, type: !8)
!43 = !DILocation(line: 31, column: 65, scope: !31)
!44 = !DILocalVariable(name: "extra", arg: 3, scope: !31, file: !1, line: 31, type: !8)
!45 = !DILocation(line: 31, column: 82, scope: !31)
!46 = !DILocation(line: 32, column: 11, scope: !31)
!47 = !DILocation(line: 32, column: 23, scope: !31)
!48 = !DILocation(line: 32, column: 34, scope: !31)
!49 = !DILocation(line: 33, column: 1, scope: !31)
!50 = distinct !DISubprogram(name: "xmlSchemaParseRedefine", scope: !1, file: !1, line: 36, type: !51, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!51 = !DISubroutineType(types: !52)
!52 = !{!3, !34, !8, !8, !13, !15}
!53 = !DILocalVariable(name: "ctxt", arg: 1, scope: !50, file: !1, line: 36, type: !34)
!54 = !DILocation(line: 36, column: 59, scope: !50)
!55 = !DILocalVariable(name: "nsName", arg: 2, scope: !50, file: !1, line: 37, type: !8)
!56 = !DILocation(line: 37, column: 50, scope: !50)
!57 = !DILocalVariable(name: "name", arg: 3, scope: !50, file: !1, line: 38, type: !8)
!58 = !DILocation(line: 38, column: 50, scope: !50)
!59 = !DILocalVariable(name: "category", arg: 4, scope: !50, file: !1, line: 39, type: !13)
!60 = !DILocation(line: 39, column: 42, scope: !50)
!61 = !DILocalVariable(name: "node", arg: 5, scope: !50, file: !1, line: 40, type: !15)
!62 = !DILocation(line: 40, column: 47, scope: !50)
!63 = !DILocalVariable(name: "ret", scope: !50, file: !1, line: 41, type: !3)
!64 = !DILocation(line: 41, column: 19, scope: !50)
!65 = !DILocalVariable(name: "alloc_size", scope: !50, file: !1, line: 44, type: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !67, line: 46, baseType: !68)
!67 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!68 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!69 = !DILocation(line: 44, column: 12, scope: !50)
!70 = !DILocation(line: 45, column: 24, scope: !50)
!71 = !DILocation(line: 45, column: 5, scope: !50)
!72 = !DILocation(line: 48, column: 17, scope: !50)
!73 = !DILocation(line: 48, column: 28, scope: !50)
!74 = !DILocation(line: 48, column: 5, scope: !50)
!75 = !DILocation(line: 49, column: 17, scope: !50)
!76 = !DILocation(line: 49, column: 28, scope: !50)
!77 = !DILocation(line: 49, column: 5, scope: !50)
!78 = !DILocation(line: 52, column: 33, scope: !50)
!79 = !DILocation(line: 52, column: 26, scope: !50)
!80 = !DILocation(line: 52, column: 11, scope: !50)
!81 = !DILocation(line: 52, column: 9, scope: !50)
!82 = !DILocation(line: 54, column: 9, scope: !83)
!83 = distinct !DILexicalBlock(scope: !50, file: !1, line: 54, column: 9)
!84 = !DILocation(line: 54, column: 13, scope: !83)
!85 = !DILocation(line: 54, column: 9, scope: !50)
!86 = !DILocation(line: 55, column: 29, scope: !87)
!87 = distinct !DILexicalBlock(scope: !83, file: !1, line: 54, column: 22)
!88 = !DILocation(line: 55, column: 9, scope: !87)
!89 = !DILocation(line: 56, column: 9, scope: !87)
!90 = !DILocation(line: 61, column: 5, scope: !50)
!91 = !DILocation(line: 64, column: 5, scope: !50)
!92 = !DILocation(line: 66, column: 12, scope: !50)
!93 = !DILocation(line: 66, column: 5, scope: !50)
!94 = !DILocation(line: 69, column: 28, scope: !50)
!95 = !DILocation(line: 69, column: 5, scope: !50)
!96 = !DILocation(line: 69, column: 10, scope: !50)
!97 = !DILocation(line: 69, column: 26, scope: !50)
!98 = !DILocation(line: 70, column: 17, scope: !50)
!99 = !DILocation(line: 70, column: 5, scope: !50)
!100 = !DILocation(line: 70, column: 10, scope: !50)
!101 = !DILocation(line: 70, column: 15, scope: !50)
!102 = !DILocation(line: 71, column: 17, scope: !50)
!103 = !DILocation(line: 71, column: 5, scope: !50)
!104 = !DILocation(line: 71, column: 10, scope: !50)
!105 = !DILocation(line: 71, column: 15, scope: !50)
!106 = !DILocation(line: 72, column: 17, scope: !50)
!107 = !DILocation(line: 72, column: 5, scope: !50)
!108 = !DILocation(line: 72, column: 10, scope: !50)
!109 = !DILocation(line: 72, column: 15, scope: !50)
!110 = !DILocation(line: 74, column: 12, scope: !50)
!111 = !DILocation(line: 74, column: 5, scope: !50)
!112 = !DILocation(line: 75, column: 1, scope: !50)
!113 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 77, type: !114, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!114 = !DISubroutineType(types: !115)
!115 = !{!13}
!116 = !DILocalVariable(name: "ctxt", scope: !113, file: !1, line: 79, type: !35)
!117 = !DILocation(line: 79, column: 25, scope: !113)
!118 = !DILocalVariable(name: "nsName", scope: !113, file: !1, line: 80, type: !8)
!119 = !DILocation(line: 80, column: 17, scope: !113)
!120 = !DILocalVariable(name: "name", scope: !113, file: !1, line: 81, type: !8)
!121 = !DILocation(line: 81, column: 17, scope: !113)
!122 = !DILocalVariable(name: "category", scope: !113, file: !1, line: 82, type: !13)
!123 = !DILocation(line: 82, column: 9, scope: !113)
!124 = !DILocalVariable(name: "node", scope: !113, file: !1, line: 83, type: !16)
!125 = !DILocation(line: 83, column: 13, scope: !113)
!126 = !DILocation(line: 86, column: 24, scope: !113)
!127 = !DILocation(line: 86, column: 5, scope: !113)
!128 = !DILocation(line: 87, column: 24, scope: !113)
!129 = !DILocation(line: 87, column: 5, scope: !113)
!130 = !DILocation(line: 88, column: 24, scope: !113)
!131 = !DILocation(line: 88, column: 5, scope: !113)
!132 = !DILocalVariable(name: "result", scope: !113, file: !1, line: 91, type: !3)
!133 = !DILocation(line: 91, column: 19, scope: !113)
!134 = !DILocation(line: 91, column: 58, scope: !113)
!135 = !DILocation(line: 91, column: 66, scope: !113)
!136 = !DILocation(line: 91, column: 72, scope: !113)
!137 = !DILocation(line: 91, column: 28, scope: !113)
!138 = !DILocation(line: 94, column: 9, scope: !139)
!139 = distinct !DILexicalBlock(scope: !113, file: !1, line: 94, column: 9)
!140 = !DILocation(line: 94, column: 16, scope: !139)
!141 = !DILocation(line: 94, column: 9, scope: !113)
!142 = !DILocation(line: 95, column: 14, scope: !143)
!143 = distinct !DILexicalBlock(scope: !139, file: !1, line: 94, column: 25)
!144 = !DILocation(line: 95, column: 9, scope: !143)
!145 = !DILocation(line: 96, column: 5, scope: !143)
!146 = !DILocation(line: 98, column: 5, scope: !113)
!147 = distinct !DISubprogram(name: "memset", scope: !148, file: !148, line: 12, type: !149, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !39)
!148 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!149 = !DISubroutineType(types: !150)
!150 = !{!20, !20, !13, !66}
!151 = !DILocalVariable(name: "dst", arg: 1, scope: !147, file: !148, line: 12, type: !20)
!152 = !DILocation(line: 12, column: 20, scope: !147)
!153 = !DILocalVariable(name: "s", arg: 2, scope: !147, file: !148, line: 12, type: !13)
!154 = !DILocation(line: 12, column: 29, scope: !147)
!155 = !DILocalVariable(name: "count", arg: 3, scope: !147, file: !148, line: 12, type: !66)
!156 = !DILocation(line: 12, column: 39, scope: !147)
!157 = !DILocalVariable(name: "a", scope: !147, file: !148, line: 13, type: !158)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!159 = !DILocation(line: 13, column: 9, scope: !147)
!160 = !DILocation(line: 13, column: 13, scope: !147)
!161 = !DILocation(line: 14, column: 3, scope: !147)
!162 = !DILocation(line: 14, column: 15, scope: !147)
!163 = !DILocation(line: 14, column: 18, scope: !147)
!164 = !DILocation(line: 15, column: 12, scope: !147)
!165 = !DILocation(line: 15, column: 7, scope: !147)
!166 = !DILocation(line: 15, column: 10, scope: !147)
!167 = distinct !{!167, !161, !164, !168}
!168 = !{!"llvm.loop.mustprogress"}
!169 = !DILocation(line: 16, column: 10, scope: !147)
!170 = !DILocation(line: 16, column: 3, scope: !147)

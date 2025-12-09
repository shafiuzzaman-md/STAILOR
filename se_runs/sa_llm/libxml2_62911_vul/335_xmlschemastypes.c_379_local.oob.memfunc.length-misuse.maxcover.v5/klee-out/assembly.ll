; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/335_xmlschemastypes.c_379_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/335_xmlschemastypes.c_379_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaParserCtxt = type opaque
%struct._xmlSchema = type { i8*, i8*, i8*, i8*, %struct._xmlDoc*, %struct._xmlSchemaAnnot*, i32, %struct._xmlHashTable*, %struct._xmlHashTable*, %struct._xmlHashTable*, %struct._xmlHashTable*, %struct._xmlHashTable*, %struct._xmlHashTable*, i8*, %struct._xmlHashTable*, %struct._xmlDict*, i8*, i32, i32, %struct._xmlHashTable*, i8* }
%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlSchemaAnnot = type { %struct._xmlSchemaAnnot*, %struct._xmlNode* }
%struct._xmlDict = type opaque
%struct._xmlHashTable = type opaque

@.str = private unnamed_addr constant [11 x i8] c"schema_len\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"schema_data\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [113 x i8] c"se_runs/sa_llm/libxml2_62911_vul/335_xmlschemastypes.c_379_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"/home/shafi/tools/klee/runtime/Intrinsic/klee_range.c\00", align 1
@.str.1.5 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str.2.6 = private unnamed_addr constant [5 x i8] c"user\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !57 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaParserCtxt*, align 8
  %3 = alloca %struct._xmlSchema*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %2, metadata !62, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata %struct._xmlSchema** %3, metadata !69, metadata !DIExpression()), !dbg !223
  call void @llvm.dbg.declare(metadata i8** %4, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.declare(metadata i32* %5, metadata !226, metadata !DIExpression()), !dbg !227
  %6 = call i32 @klee_range(i32 noundef 1, i32 noundef 1024, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)), !dbg !228
  store i32 %6, i32* %5, align 4, !dbg !229
  %7 = load i32, i32* %5, align 4, !dbg !230
  %8 = add nsw i32 %7, 1, !dbg !231
  %9 = sext i32 %8 to i64, !dbg !230
  %10 = call noalias i8* @malloc(i64 noundef %9) #6, !dbg !232
  store i8* %10, i8** %4, align 8, !dbg !233
  %11 = load i8*, i8** %4, align 8, !dbg !234
  %12 = load i32, i32* %5, align 4, !dbg !235
  %13 = add nsw i32 %12, 1, !dbg !236
  %14 = sext i32 %13 to i64, !dbg !235
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef %14, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)), !dbg !237
  %15 = load i8*, i8** %4, align 8, !dbg !238
  %16 = load i32, i32* %5, align 4, !dbg !239
  %17 = sext i32 %16 to i64, !dbg !240
  %18 = getelementptr inbounds i8, i8* %15, i64 %17, !dbg !240
  store i8 0, i8* %18, align 1, !dbg !241
  call void @xmlInitParser(), !dbg !242
  %19 = load i8*, i8** %4, align 8, !dbg !243
  %20 = call %struct._xmlSchemaParserCtxt* @xmlSchemaNewParserCtxt(i8* noundef %19), !dbg !244
  store %struct._xmlSchemaParserCtxt* %20, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !245
  %21 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !246
  %22 = icmp eq %struct._xmlSchemaParserCtxt* %21, null, !dbg !248
  br i1 %22, label %23, label %25, !dbg !249

23:                                               ; preds = %0
  %24 = load i8*, i8** %4, align 8, !dbg !250
  call void @free(i8* noundef %24) #6, !dbg !252
  call void @xmlCleanupParser(), !dbg !253
  store i32 0, i32* %1, align 4, !dbg !254
  br label %36, !dbg !254

25:                                               ; preds = %0
  %26 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !255
  %27 = call %struct._xmlSchema* @xmlSchemaParse(%struct._xmlSchemaParserCtxt* noundef %26), !dbg !256
  store %struct._xmlSchema* %27, %struct._xmlSchema** %3, align 8, !dbg !257
  %28 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([113 x i8], [113 x i8]* @.str.3, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !258
  %29 = load %struct._xmlSchema*, %struct._xmlSchema** %3, align 8, !dbg !259
  %30 = icmp ne %struct._xmlSchema* %29, null, !dbg !261
  br i1 %30, label %31, label %33, !dbg !262

31:                                               ; preds = %25
  %32 = load %struct._xmlSchema*, %struct._xmlSchema** %3, align 8, !dbg !263
  call void @xmlSchemaFree(%struct._xmlSchema* noundef %32), !dbg !265
  br label %33, !dbg !266

33:                                               ; preds = %31, %25
  %34 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !267
  call void @xmlSchemaFreeParserCtxt(%struct._xmlSchemaParserCtxt* noundef %34), !dbg !268
  %35 = load i8*, i8** %4, align 8, !dbg !269
  call void @free(i8* noundef %35) #6, !dbg !270
  call void @xmlCleanupParser(), !dbg !271
  store i32 0, i32* %1, align 4, !dbg !272
  br label %36, !dbg !272

36:                                               ; preds = %33, %23
  %37 = load i32, i32* %1, align 4, !dbg !273
  ret i32 %37, !dbg !273
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @xmlInitParser() #3

declare %struct._xmlSchemaParserCtxt* @xmlSchemaNewParserCtxt(i8* noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

declare void @xmlCleanupParser() #3

declare %struct._xmlSchema* @xmlSchemaParse(%struct._xmlSchemaParserCtxt* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

declare void @xmlSchemaFree(%struct._xmlSchema* noundef) #3

declare void @xmlSchemaFreeParserCtxt(%struct._xmlSchemaParserCtxt* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @klee_range(i32 noundef %0, i32 noundef %1, i8* noundef %2) #5 !dbg !274 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !278, metadata !DIExpression()), !dbg !279
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !280, metadata !DIExpression()), !dbg !281
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !282, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.declare(metadata i32* %8, metadata !284, metadata !DIExpression()), !dbg !285
  %9 = load i32, i32* %5, align 4, !dbg !286
  %10 = load i32, i32* %6, align 4, !dbg !288
  %11 = icmp sge i32 %9, %10, !dbg !289
  br i1 %11, label %12, label %13, !dbg !290

12:                                               ; preds = %3
  call void @klee_report_error(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 noundef 16, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.6, i64 0, i64 0)) #7, !dbg !291
  unreachable, !dbg !291

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4, !dbg !292
  %15 = add nsw i32 %14, 1, !dbg !294
  %16 = load i32, i32* %6, align 4, !dbg !295
  %17 = icmp eq i32 %15, %16, !dbg !296
  br i1 %17, label %18, label %20, !dbg !297

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4, !dbg !298
  store i32 %19, i32* %4, align 4, !dbg !300
  br label %44, !dbg !300

20:                                               ; preds = %13
  %21 = bitcast i32* %8 to i8*, !dbg !301
  %22 = load i8*, i8** %7, align 8, !dbg !303
  call void @klee_make_symbolic(i8* noundef %21, i64 noundef 4, i8* noundef %22), !dbg !304
  %23 = load i32, i32* %5, align 4, !dbg !305
  %24 = icmp eq i32 %23, 0, !dbg !307
  br i1 %24, label %25, label %31, !dbg !308

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4, !dbg !309
  %27 = load i32, i32* %6, align 4, !dbg !311
  %28 = icmp ult i32 %26, %27, !dbg !312
  %29 = zext i1 %28 to i32, !dbg !312
  %30 = sext i32 %29 to i64, !dbg !313
  call void @klee_assume(i64 noundef %30), !dbg !314
  br label %42, !dbg !315

31:                                               ; preds = %20
  %32 = load i32, i32* %5, align 4, !dbg !316
  %33 = load i32, i32* %8, align 4, !dbg !318
  %34 = icmp sle i32 %32, %33, !dbg !319
  %35 = zext i1 %34 to i32, !dbg !319
  %36 = sext i32 %35 to i64, !dbg !316
  call void @klee_assume(i64 noundef %36), !dbg !320
  %37 = load i32, i32* %8, align 4, !dbg !321
  %38 = load i32, i32* %6, align 4, !dbg !322
  %39 = icmp slt i32 %37, %38, !dbg !323
  %40 = zext i1 %39 to i32, !dbg !323
  %41 = sext i32 %40 to i64, !dbg !321
  call void @klee_assume(i64 noundef %41), !dbg !324
  br label %42

42:                                               ; preds = %31, %25
  %43 = load i32, i32* %8, align 4, !dbg !325
  store i32 %43, i32* %4, align 4, !dbg !326
  br label %44, !dbg !326

44:                                               ; preds = %42, %18
  %45 = load i32, i32* %4, align 4, !dbg !327
  ret i32 %45, !dbg !327
}

; Function Attrs: noreturn
declare void @klee_report_error(i8* noundef, i32 noundef, i8* noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

!llvm.dbg.cu = !{!0, !46}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56, !56}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/335_xmlschemastypes.c_379_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "e5ee61f5f9c1b92afd6891a29de0d90d")
!2 = !{!3, !28}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 159, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/usr/include/libxml2/libxml/tree.h", directory: "", checksumkind: CSK_MD5, checksum: "750bac4395c48684302094dba58dc4a1")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!7 = !DIEnumerator(name: "XML_ELEMENT_NODE", value: 1)
!8 = !DIEnumerator(name: "XML_ATTRIBUTE_NODE", value: 2)
!9 = !DIEnumerator(name: "XML_TEXT_NODE", value: 3)
!10 = !DIEnumerator(name: "XML_CDATA_SECTION_NODE", value: 4)
!11 = !DIEnumerator(name: "XML_ENTITY_REF_NODE", value: 5)
!12 = !DIEnumerator(name: "XML_ENTITY_NODE", value: 6)
!13 = !DIEnumerator(name: "XML_PI_NODE", value: 7)
!14 = !DIEnumerator(name: "XML_COMMENT_NODE", value: 8)
!15 = !DIEnumerator(name: "XML_DOCUMENT_NODE", value: 9)
!16 = !DIEnumerator(name: "XML_DOCUMENT_TYPE_NODE", value: 10)
!17 = !DIEnumerator(name: "XML_DOCUMENT_FRAG_NODE", value: 11)
!18 = !DIEnumerator(name: "XML_NOTATION_NODE", value: 12)
!19 = !DIEnumerator(name: "XML_HTML_DOCUMENT_NODE", value: 13)
!20 = !DIEnumerator(name: "XML_DTD_NODE", value: 14)
!21 = !DIEnumerator(name: "XML_ELEMENT_DECL", value: 15)
!22 = !DIEnumerator(name: "XML_ATTRIBUTE_DECL", value: 16)
!23 = !DIEnumerator(name: "XML_ENTITY_DECL", value: 17)
!24 = !DIEnumerator(name: "XML_NAMESPACE_DECL", value: 18)
!25 = !DIEnumerator(name: "XML_XINCLUDE_START", value: 19)
!26 = !DIEnumerator(name: "XML_XINCLUDE_END", value: 20)
!27 = !DIEnumerator(name: "XML_DOCB_DOCUMENT_NODE", value: 21)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 206, baseType: !5, size: 32, elements: !29)
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !39}
!30 = !DIEnumerator(name: "XML_ATTRIBUTE_CDATA", value: 1)
!31 = !DIEnumerator(name: "XML_ATTRIBUTE_ID", value: 2)
!32 = !DIEnumerator(name: "XML_ATTRIBUTE_IDREF", value: 3)
!33 = !DIEnumerator(name: "XML_ATTRIBUTE_IDREFS", value: 4)
!34 = !DIEnumerator(name: "XML_ATTRIBUTE_ENTITY", value: 5)
!35 = !DIEnumerator(name: "XML_ATTRIBUTE_ENTITIES", value: 6)
!36 = !DIEnumerator(name: "XML_ATTRIBUTE_NMTOKEN", value: 7)
!37 = !DIEnumerator(name: "XML_ATTRIBUTE_NMTOKENS", value: 8)
!38 = !DIEnumerator(name: "XML_ATTRIBUTE_ENUMERATION", value: 9)
!39 = !DIEnumerator(name: "XML_ATTRIBUTE_NOTATION", value: 10)
!40 = !{!41, !44, !45}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!46 = distinct !DICompileUnit(language: DW_LANG_C89, file: !47, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !48, splitDebugInlining: false, nameTableKind: None)
!47 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Intrinsic/klee_range.c", directory: "/home/shafi/tools/klee/build/runtime/Intrinsic", checksumkind: CSK_MD5, checksum: "967b9ed6e7b3db2f47ee33010ec31c43")
!48 = !{!5}
!49 = !{i32 7, !"Dwarf Version", i32 5}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = !{i32 7, !"PIC Level", i32 2}
!53 = !{i32 7, !"PIE Level", i32 2}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"Ubuntu clang version 14.0.6"}
!57 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !58, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !61)
!58 = !DISubroutineType(types: !59)
!59 = !{!60}
!60 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!61 = !{}
!62 = !DILocalVariable(name: "ctxt", scope: !57, file: !1, line: 8, type: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxtPtr", file: !64, line: 113, baseType: !65)
!64 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlschemas.h", directory: "", checksumkind: CSK_MD5, checksum: "c087d0e891d6909b14966bccde02fcfc")
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxt", file: !64, line: 112, baseType: !67)
!67 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaParserCtxt", file: !64, line: 112, flags: DIFlagFwdDecl)
!68 = !DILocation(line: 8, column: 28, scope: !57)
!69 = !DILocalVariable(name: "schema", scope: !57, file: !1, line: 9, type: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaPtr", file: !64, line: 85, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchema", file: !64, line: 84, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchema", file: !74, line: 923, size: 1280, elements: !75)
!74 = !DIFile(filename: "/usr/include/libxml2/libxml/schemasInternals.h", directory: "", checksumkind: CSK_MD5, checksum: "5072dee68b3423ac6f13185b984cc325")
!75 = !{!76, !82, !83, !84, !85, !188, !200, !201, !207, !208, !209, !210, !211, !212, !213, !214, !218, !219, !220, !221, !222}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !73, file: !74, line: 924, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !80, line: 28, baseType: !81)
!80 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!81 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "targetNamespace", scope: !73, file: !74, line: 925, baseType: !77, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !73, file: !74, line: 926, baseType: !77, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !73, file: !74, line: 927, baseType: !77, size: 64, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !73, file: !74, line: 928, baseType: !86, size: 64, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !90)
!90 = !{!91, !92, !94, !95, !146, !147, !148, !149, !150, !151, !152, !153, !173, !174, !175, !176, !177, !178, !179, !180, !181, !185, !186, !187}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !89, file: !4, line: 560, baseType: !44, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !4, line: 561, baseType: !93, size: 32, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !89, file: !4, line: 562, baseType: !45, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !89, file: !4, line: 563, baseType: !96, size: 64, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !98)
!98 = !{!99, !100, !101, !102, !103, !104, !105, !106, !107, !109, !122, !124, !141, !142, !143, !145}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !97, file: !4, line: 493, baseType: !44, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !97, file: !4, line: 494, baseType: !93, size: 32, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !97, file: !4, line: 495, baseType: !77, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !97, file: !4, line: 496, baseType: !96, size: 64, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !97, file: !4, line: 497, baseType: !96, size: 64, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !97, file: !4, line: 498, baseType: !96, size: 64, offset: 320)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !97, file: !4, line: 499, baseType: !96, size: 64, offset: 384)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !97, file: !4, line: 500, baseType: !96, size: 64, offset: 448)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !97, file: !4, line: 501, baseType: !108, size: 64, offset: 512)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !97, file: !4, line: 504, baseType: !110, size: 64, offset: 576)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !113)
!113 = !{!114, !116, !118, !119, !120, !121}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !112, file: !4, line: 389, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !112, file: !4, line: 390, baseType: !117, size: 32, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !93)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !112, file: !4, line: 391, baseType: !77, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !112, file: !4, line: 392, baseType: !77, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !112, file: !4, line: 393, baseType: !44, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !112, file: !4, line: 394, baseType: !108, size: 64, offset: 320)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !97, file: !4, line: 505, baseType: !123, size: 64, offset: 640)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !97, file: !4, line: 506, baseType: !125, size: 64, offset: 704)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !127)
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !140}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !126, file: !4, line: 434, baseType: !44, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !126, file: !4, line: 435, baseType: !93, size: 32, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !126, file: !4, line: 436, baseType: !77, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !126, file: !4, line: 437, baseType: !96, size: 64, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !126, file: !4, line: 438, baseType: !96, size: 64, offset: 256)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !126, file: !4, line: 439, baseType: !96, size: 64, offset: 320)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !126, file: !4, line: 440, baseType: !125, size: 64, offset: 384)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !126, file: !4, line: 441, baseType: !125, size: 64, offset: 448)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !126, file: !4, line: 442, baseType: !108, size: 64, offset: 512)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !126, file: !4, line: 443, baseType: !110, size: 64, offset: 576)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !126, file: !4, line: 444, baseType: !139, size: 32, offset: 640)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !126, file: !4, line: 445, baseType: !44, size: 64, offset: 704)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !97, file: !4, line: 507, baseType: !110, size: 64, offset: 768)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !97, file: !4, line: 508, baseType: !44, size: 64, offset: 832)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !97, file: !4, line: 509, baseType: !144, size: 16, offset: 896)
!144 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !97, file: !4, line: 510, baseType: !144, size: 16, offset: 912)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !89, file: !4, line: 564, baseType: !96, size: 64, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !89, file: !4, line: 565, baseType: !96, size: 64, offset: 320)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !89, file: !4, line: 566, baseType: !96, size: 64, offset: 384)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !89, file: !4, line: 567, baseType: !96, size: 64, offset: 448)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !89, file: !4, line: 568, baseType: !108, size: 64, offset: 512)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !89, file: !4, line: 571, baseType: !60, size: 32, offset: 576)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !89, file: !4, line: 572, baseType: !60, size: 32, offset: 608)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !89, file: !4, line: 578, baseType: !154, size: 64, offset: 640)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !156)
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !155, file: !4, line: 406, baseType: !44, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !155, file: !4, line: 407, baseType: !93, size: 32, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !155, file: !4, line: 408, baseType: !77, size: 64, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !155, file: !4, line: 409, baseType: !96, size: 64, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !155, file: !4, line: 410, baseType: !96, size: 64, offset: 256)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !155, file: !4, line: 411, baseType: !108, size: 64, offset: 320)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !155, file: !4, line: 412, baseType: !96, size: 64, offset: 384)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !155, file: !4, line: 413, baseType: !96, size: 64, offset: 448)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !155, file: !4, line: 414, baseType: !108, size: 64, offset: 512)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !155, file: !4, line: 417, baseType: !44, size: 64, offset: 576)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !155, file: !4, line: 418, baseType: !44, size: 64, offset: 640)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !155, file: !4, line: 419, baseType: !44, size: 64, offset: 704)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !155, file: !4, line: 420, baseType: !44, size: 64, offset: 768)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !155, file: !4, line: 421, baseType: !77, size: 64, offset: 832)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !155, file: !4, line: 422, baseType: !77, size: 64, offset: 896)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !155, file: !4, line: 423, baseType: !44, size: 64, offset: 960)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !89, file: !4, line: 579, baseType: !154, size: 64, offset: 704)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !89, file: !4, line: 580, baseType: !115, size: 64, offset: 768)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !89, file: !4, line: 581, baseType: !77, size: 64, offset: 832)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !89, file: !4, line: 582, baseType: !77, size: 64, offset: 896)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !89, file: !4, line: 583, baseType: !44, size: 64, offset: 960)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !89, file: !4, line: 584, baseType: !44, size: 64, offset: 1024)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !89, file: !4, line: 585, baseType: !77, size: 64, offset: 1088)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !89, file: !4, line: 586, baseType: !60, size: 32, offset: 1152)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !89, file: !4, line: 588, baseType: !182, size: 64, offset: 1216)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !184, line: 24, flags: DIFlagFwdDecl)
!184 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!185 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !89, file: !4, line: 589, baseType: !44, size: 64, offset: 1280)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !89, file: !4, line: 590, baseType: !60, size: 32, offset: 1344)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !89, file: !4, line: 592, baseType: !60, size: 32, offset: 1376)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "annot", scope: !73, file: !74, line: 929, baseType: !189, size: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaAnnotPtr", file: !74, line: 149, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaAnnot", file: !74, line: 148, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaAnnot", file: !74, line: 150, size: 128, elements: !193)
!193 = !{!194, !196}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !192, file: !74, line: 151, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !192, file: !74, line: 152, baseType: !197, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !97)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !73, file: !74, line: 930, baseType: !60, size: 32, offset: 384)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "typeDecl", scope: !73, file: !74, line: 932, baseType: !202, size: 64, offset: 448)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !203, line: 22, baseType: !204)
!203 = !DIFile(filename: "/usr/include/libxml2/libxml/hash.h", directory: "", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !203, line: 21, baseType: !206)
!206 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !203, line: 21, flags: DIFlagFwdDecl)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "attrDecl", scope: !73, file: !74, line: 933, baseType: !202, size: 64, offset: 512)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "attrgrpDecl", scope: !73, file: !74, line: 934, baseType: !202, size: 64, offset: 576)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "elemDecl", scope: !73, file: !74, line: 935, baseType: !202, size: 64, offset: 640)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "notaDecl", scope: !73, file: !74, line: 936, baseType: !202, size: 64, offset: 704)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "schemasImports", scope: !73, file: !74, line: 938, baseType: !202, size: 64, offset: 768)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !73, file: !74, line: 940, baseType: !44, size: 64, offset: 832)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "groupDecl", scope: !73, file: !74, line: 941, baseType: !202, size: 64, offset: 896)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !73, file: !74, line: 942, baseType: !215, size: 64, offset: 960)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !184, line: 25, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !184, line: 24, baseType: !183)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "includes", scope: !73, file: !74, line: 943, baseType: !44, size: 64, offset: 1024)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "preserve", scope: !73, file: !74, line: 944, baseType: !60, size: 32, offset: 1088)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !73, file: !74, line: 945, baseType: !60, size: 32, offset: 1120)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "idcDef", scope: !73, file: !74, line: 946, baseType: !202, size: 64, offset: 1152)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "volatiles", scope: !73, file: !74, line: 947, baseType: !44, size: 64, offset: 1216)
!223 = !DILocation(line: 9, column: 18, scope: !57)
!224 = !DILocalVariable(name: "schema_data", scope: !57, file: !1, line: 10, type: !41)
!225 = !DILocation(line: 10, column: 17, scope: !57)
!226 = !DILocalVariable(name: "schema_len", scope: !57, file: !1, line: 11, type: !60)
!227 = !DILocation(line: 11, column: 9, scope: !57)
!228 = !DILocation(line: 14, column: 18, scope: !57)
!229 = !DILocation(line: 14, column: 16, scope: !57)
!230 = !DILocation(line: 15, column: 39, scope: !57)
!231 = !DILocation(line: 15, column: 50, scope: !57)
!232 = !DILocation(line: 15, column: 32, scope: !57)
!233 = !DILocation(line: 15, column: 17, scope: !57)
!234 = !DILocation(line: 16, column: 31, scope: !57)
!235 = !DILocation(line: 16, column: 44, scope: !57)
!236 = !DILocation(line: 16, column: 55, scope: !57)
!237 = !DILocation(line: 16, column: 5, scope: !57)
!238 = !DILocation(line: 18, column: 13, scope: !57)
!239 = !DILocation(line: 18, column: 26, scope: !57)
!240 = !DILocation(line: 18, column: 5, scope: !57)
!241 = !DILocation(line: 18, column: 38, scope: !57)
!242 = !DILocation(line: 21, column: 5, scope: !57)
!243 = !DILocation(line: 24, column: 35, scope: !57)
!244 = !DILocation(line: 24, column: 12, scope: !57)
!245 = !DILocation(line: 24, column: 10, scope: !57)
!246 = !DILocation(line: 25, column: 9, scope: !247)
!247 = distinct !DILexicalBlock(scope: !57, file: !1, line: 25, column: 9)
!248 = !DILocation(line: 25, column: 14, scope: !247)
!249 = !DILocation(line: 25, column: 9, scope: !57)
!250 = !DILocation(line: 26, column: 21, scope: !251)
!251 = distinct !DILexicalBlock(scope: !247, file: !1, line: 25, column: 23)
!252 = !DILocation(line: 26, column: 9, scope: !251)
!253 = !DILocation(line: 27, column: 9, scope: !251)
!254 = !DILocation(line: 28, column: 9, scope: !251)
!255 = !DILocation(line: 33, column: 29, scope: !57)
!256 = !DILocation(line: 33, column: 14, scope: !57)
!257 = !DILocation(line: 33, column: 12, scope: !57)
!258 = !DILocation(line: 37, column: 5, scope: !57)
!259 = !DILocation(line: 40, column: 9, scope: !260)
!260 = distinct !DILexicalBlock(scope: !57, file: !1, line: 40, column: 9)
!261 = !DILocation(line: 40, column: 16, scope: !260)
!262 = !DILocation(line: 40, column: 9, scope: !57)
!263 = !DILocation(line: 41, column: 23, scope: !264)
!264 = distinct !DILexicalBlock(scope: !260, file: !1, line: 40, column: 25)
!265 = !DILocation(line: 41, column: 9, scope: !264)
!266 = !DILocation(line: 42, column: 5, scope: !264)
!267 = !DILocation(line: 43, column: 29, scope: !57)
!268 = !DILocation(line: 43, column: 5, scope: !57)
!269 = !DILocation(line: 44, column: 17, scope: !57)
!270 = !DILocation(line: 44, column: 5, scope: !57)
!271 = !DILocation(line: 45, column: 5, scope: !57)
!272 = !DILocation(line: 46, column: 5, scope: !57)
!273 = !DILocation(line: 47, column: 1, scope: !57)
!274 = distinct !DISubprogram(name: "klee_range", scope: !275, file: !275, line: 12, type: !276, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !46, retainedNodes: !61)
!275 = !DIFile(filename: "runtime/Intrinsic/klee_range.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "967b9ed6e7b3db2f47ee33010ec31c43")
!276 = !DISubroutineType(types: !277)
!277 = !{!60, !60, !60, !41}
!278 = !DILocalVariable(name: "start", arg: 1, scope: !274, file: !275, line: 12, type: !60)
!279 = !DILocation(line: 12, column: 20, scope: !274)
!280 = !DILocalVariable(name: "end", arg: 2, scope: !274, file: !275, line: 12, type: !60)
!281 = !DILocation(line: 12, column: 31, scope: !274)
!282 = !DILocalVariable(name: "name", arg: 3, scope: !274, file: !275, line: 12, type: !41)
!283 = !DILocation(line: 12, column: 48, scope: !274)
!284 = !DILocalVariable(name: "x", scope: !274, file: !275, line: 13, type: !60)
!285 = !DILocation(line: 13, column: 7, scope: !274)
!286 = !DILocation(line: 15, column: 7, scope: !287)
!287 = distinct !DILexicalBlock(scope: !274, file: !275, line: 15, column: 7)
!288 = !DILocation(line: 15, column: 16, scope: !287)
!289 = !DILocation(line: 15, column: 13, scope: !287)
!290 = !DILocation(line: 15, column: 7, scope: !274)
!291 = !DILocation(line: 16, column: 5, scope: !287)
!292 = !DILocation(line: 18, column: 7, scope: !293)
!293 = distinct !DILexicalBlock(scope: !274, file: !275, line: 18, column: 7)
!294 = !DILocation(line: 18, column: 12, scope: !293)
!295 = !DILocation(line: 18, column: 16, scope: !293)
!296 = !DILocation(line: 18, column: 14, scope: !293)
!297 = !DILocation(line: 18, column: 7, scope: !274)
!298 = !DILocation(line: 19, column: 12, scope: !299)
!299 = distinct !DILexicalBlock(scope: !293, file: !275, line: 18, column: 21)
!300 = !DILocation(line: 19, column: 5, scope: !299)
!301 = !DILocation(line: 21, column: 24, scope: !302)
!302 = distinct !DILexicalBlock(scope: !293, file: !275, line: 20, column: 10)
!303 = !DILocation(line: 21, column: 38, scope: !302)
!304 = !DILocation(line: 21, column: 5, scope: !302)
!305 = !DILocation(line: 24, column: 9, scope: !306)
!306 = distinct !DILexicalBlock(scope: !302, file: !275, line: 24, column: 9)
!307 = !DILocation(line: 24, column: 14, scope: !306)
!308 = !DILocation(line: 24, column: 9, scope: !302)
!309 = !DILocation(line: 25, column: 30, scope: !310)
!310 = distinct !DILexicalBlock(scope: !306, file: !275, line: 24, column: 19)
!311 = !DILocation(line: 25, column: 45, scope: !310)
!312 = !DILocation(line: 25, column: 32, scope: !310)
!313 = !DILocation(line: 25, column: 19, scope: !310)
!314 = !DILocation(line: 25, column: 7, scope: !310)
!315 = !DILocation(line: 26, column: 5, scope: !310)
!316 = !DILocation(line: 27, column: 19, scope: !317)
!317 = distinct !DILexicalBlock(scope: !306, file: !275, line: 26, column: 12)
!318 = !DILocation(line: 27, column: 28, scope: !317)
!319 = !DILocation(line: 27, column: 25, scope: !317)
!320 = !DILocation(line: 27, column: 7, scope: !317)
!321 = !DILocation(line: 28, column: 19, scope: !317)
!322 = !DILocation(line: 28, column: 23, scope: !317)
!323 = !DILocation(line: 28, column: 21, scope: !317)
!324 = !DILocation(line: 28, column: 7, scope: !317)
!325 = !DILocation(line: 31, column: 12, scope: !302)
!326 = !DILocation(line: 31, column: 5, scope: !302)
!327 = !DILocation(line: 33, column: 1, scope: !274)

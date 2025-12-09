; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/329_xmlschemas.c_22989_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/329_xmlschemas.c_22989_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaParserCtxt = type opaque
%struct._xmlSchemaValidCtxt = type opaque
%struct._xmlSchema = type { i8*, i8*, i8*, i8*, %struct._xmlDoc*, %struct._xmlSchemaAnnot*, i32, %struct._xmlHashTable*, %struct._xmlHashTable*, %struct._xmlHashTable*, %struct._xmlHashTable*, %struct._xmlHashTable*, %struct._xmlHashTable*, i8*, %struct._xmlHashTable*, %struct._xmlDict*, i8*, i32, i32, %struct._xmlHashTable*, i8* }
%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlSchemaAnnot = type { %struct._xmlSchemaAnnot*, %struct._xmlNode* }
%struct._xmlDict = type opaque
%struct._xmlHashTable = type opaque

@.str = private unnamed_addr constant [11 x i8] c"schema_buf\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"doc_buf\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"noname.xml\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [110 x i8] c"se_runs/sa_llm/libxml2_62911_vul/329_xmlschemas.c_22989_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !50 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaParserCtxt*, align 8
  %3 = alloca %struct._xmlSchemaValidCtxt*, align 8
  %4 = alloca %struct._xmlSchema*, align 8
  %5 = alloca %struct._xmlDoc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1024 x i8], align 16
  %8 = alloca [1024 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %2, metadata !55, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaValidCtxt** %3, metadata !62, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata %struct._xmlSchema** %4, metadata !68, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %5, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.declare(metadata i32* %6, metadata !227, metadata !DIExpression()), !dbg !228
  call void @xmlInitParser(), !dbg !229
  call void @llvm.dbg.declare(metadata [1024 x i8]* %7, metadata !230, metadata !DIExpression()), !dbg !234
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0, !dbg !235
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 1024, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)), !dbg !236
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 1023, !dbg !237
  store i8 0, i8* %10, align 1, !dbg !238
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0, !dbg !239
  %12 = call %struct._xmlSchemaParserCtxt* @xmlSchemaNewParserCtxt(i8* noundef %11), !dbg !240
  store %struct._xmlSchemaParserCtxt* %12, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !241
  %13 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !242
  %14 = icmp eq %struct._xmlSchemaParserCtxt* %13, null, !dbg !244
  br i1 %14, label %15, label %16, !dbg !245

15:                                               ; preds = %0
  call void @xmlCleanupParser(), !dbg !246
  store i32 0, i32* %1, align 4, !dbg !248
  br label %48, !dbg !248

16:                                               ; preds = %0
  %17 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !249
  %18 = call %struct._xmlSchema* @xmlSchemaParse(%struct._xmlSchemaParserCtxt* noundef %17), !dbg !250
  store %struct._xmlSchema* %18, %struct._xmlSchema** %4, align 8, !dbg !251
  %19 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !252
  call void @xmlSchemaFreeParserCtxt(%struct._xmlSchemaParserCtxt* noundef %19), !dbg !253
  %20 = load %struct._xmlSchema*, %struct._xmlSchema** %4, align 8, !dbg !254
  %21 = icmp eq %struct._xmlSchema* %20, null, !dbg !256
  br i1 %21, label %22, label %23, !dbg !257

22:                                               ; preds = %16
  call void @xmlCleanupParser(), !dbg !258
  store i32 0, i32* %1, align 4, !dbg !260
  br label %48, !dbg !260

23:                                               ; preds = %16
  %24 = load %struct._xmlSchema*, %struct._xmlSchema** %4, align 8, !dbg !261
  %25 = call %struct._xmlSchemaValidCtxt* @xmlSchemaNewValidCtxt(%struct._xmlSchema* noundef %24), !dbg !262
  store %struct._xmlSchemaValidCtxt* %25, %struct._xmlSchemaValidCtxt** %3, align 8, !dbg !263
  %26 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %3, align 8, !dbg !264
  %27 = icmp eq %struct._xmlSchemaValidCtxt* %26, null, !dbg !266
  br i1 %27, label %28, label %30, !dbg !267

28:                                               ; preds = %23
  %29 = load %struct._xmlSchema*, %struct._xmlSchema** %4, align 8, !dbg !268
  call void @xmlSchemaFree(%struct._xmlSchema* noundef %29), !dbg !270
  call void @xmlCleanupParser(), !dbg !271
  store i32 0, i32* %1, align 4, !dbg !272
  br label %48, !dbg !272

30:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata [1024 x i8]* %8, metadata !273, metadata !DIExpression()), !dbg !274
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0, !dbg !275
  call void @klee_make_symbolic(i8* noundef %31, i64 noundef 1024, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !276
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 1023, !dbg !277
  store i8 0, i8* %32, align 1, !dbg !278
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0, !dbg !279
  %34 = call %struct._xmlDoc* @xmlReadMemory(i8* noundef %33, i32 noundef 1023, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* noundef null, i32 noundef 0), !dbg !280
  store %struct._xmlDoc* %34, %struct._xmlDoc** %5, align 8, !dbg !281
  %35 = load %struct._xmlDoc*, %struct._xmlDoc** %5, align 8, !dbg !282
  %36 = icmp eq %struct._xmlDoc* %35, null, !dbg !284
  br i1 %36, label %37, label %40, !dbg !285

37:                                               ; preds = %30
  %38 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %3, align 8, !dbg !286
  call void @xmlSchemaFreeValidCtxt(%struct._xmlSchemaValidCtxt* noundef %38), !dbg !288
  %39 = load %struct._xmlSchema*, %struct._xmlSchema** %4, align 8, !dbg !289
  call void @xmlSchemaFree(%struct._xmlSchema* noundef %39), !dbg !290
  call void @xmlCleanupParser(), !dbg !291
  store i32 0, i32* %1, align 4, !dbg !292
  br label %48, !dbg !292

40:                                               ; preds = %30
  %41 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %3, align 8, !dbg !293
  %42 = load %struct._xmlDoc*, %struct._xmlDoc** %5, align 8, !dbg !294
  %43 = call i32 @xmlSchemaValidateDoc(%struct._xmlSchemaValidCtxt* noundef %41, %struct._xmlDoc* noundef %42), !dbg !295
  store i32 %43, i32* %6, align 4, !dbg !296
  %44 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.4, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !297
  %45 = load %struct._xmlDoc*, %struct._xmlDoc** %5, align 8, !dbg !298
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %45), !dbg !299
  %46 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %3, align 8, !dbg !300
  call void @xmlSchemaFreeValidCtxt(%struct._xmlSchemaValidCtxt* noundef %46), !dbg !301
  %47 = load %struct._xmlSchema*, %struct._xmlSchema** %4, align 8, !dbg !302
  call void @xmlSchemaFree(%struct._xmlSchema* noundef %47), !dbg !303
  call void @xmlCleanupParser(), !dbg !304
  store i32 0, i32* %1, align 4, !dbg !305
  br label %48, !dbg !305

48:                                               ; preds = %40, %37, %28, %22, %15
  %49 = load i32, i32* %1, align 4, !dbg !306
  ret i32 %49, !dbg !306
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @xmlInitParser() #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare %struct._xmlSchemaParserCtxt* @xmlSchemaNewParserCtxt(i8* noundef) #2

declare void @xmlCleanupParser() #2

declare %struct._xmlSchema* @xmlSchemaParse(%struct._xmlSchemaParserCtxt* noundef) #2

declare void @xmlSchemaFreeParserCtxt(%struct._xmlSchemaParserCtxt* noundef) #2

declare %struct._xmlSchemaValidCtxt* @xmlSchemaNewValidCtxt(%struct._xmlSchema* noundef) #2

declare void @xmlSchemaFree(%struct._xmlSchema* noundef) #2

declare %struct._xmlDoc* @xmlReadMemory(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) #2

declare void @xmlSchemaFreeValidCtxt(%struct._xmlSchemaValidCtxt* noundef) #2

declare i32 @xmlSchemaValidateDoc(%struct._xmlSchemaValidCtxt* noundef, %struct._xmlDoc* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/329_xmlschemas.c_22989_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "0c545182e3474f1238bbc3b8a8bfe5ce")
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
!40 = !{!41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !{i32 7, !"Dwarf Version", i32 5}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 4}
!45 = !{i32 7, !"PIC Level", i32 2}
!46 = !{i32 7, !"PIE Level", i32 2}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"Ubuntu clang version 14.0.6"}
!50 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !51, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !54)
!51 = !DISubroutineType(types: !52)
!52 = !{!53}
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !{}
!55 = !DILocalVariable(name: "pctxt", scope: !50, file: !1, line: 8, type: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxtPtr", file: !57, line: 113, baseType: !58)
!57 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlschemas.h", directory: "", checksumkind: CSK_MD5, checksum: "c087d0e891d6909b14966bccde02fcfc")
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxt", file: !57, line: 112, baseType: !60)
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaParserCtxt", file: !57, line: 112, flags: DIFlagFwdDecl)
!61 = !DILocation(line: 8, column: 28, scope: !50)
!62 = !DILocalVariable(name: "vctxt", scope: !50, file: !1, line: 9, type: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValidCtxtPtr", file: !57, line: 116, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValidCtxt", file: !57, line: 115, baseType: !66)
!66 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaValidCtxt", file: !57, line: 115, flags: DIFlagFwdDecl)
!67 = !DILocation(line: 9, column: 27, scope: !50)
!68 = !DILocalVariable(name: "schema", scope: !50, file: !1, line: 10, type: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaPtr", file: !57, line: 85, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchema", file: !57, line: 84, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchema", file: !73, line: 923, size: 1280, elements: !74)
!73 = !DIFile(filename: "/usr/include/libxml2/libxml/schemasInternals.h", directory: "", checksumkind: CSK_MD5, checksum: "5072dee68b3423ac6f13185b984cc325")
!74 = !{!75, !81, !82, !83, !84, !189, !201, !202, !208, !209, !210, !211, !212, !213, !214, !215, !219, !220, !221, !222, !223}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !72, file: !73, line: 924, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !79, line: 28, baseType: !80)
!79 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!80 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "targetNamespace", scope: !72, file: !73, line: 925, baseType: !76, size: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !72, file: !73, line: 926, baseType: !76, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !72, file: !73, line: 927, baseType: !76, size: 64, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !72, file: !73, line: 928, baseType: !85, size: 64, offset: 256)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !89)
!89 = !{!90, !91, !93, !96, !147, !148, !149, !150, !151, !152, !153, !154, !174, !175, !176, !177, !178, !179, !180, !181, !182, !186, !187, !188}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !88, file: !4, line: 560, baseType: !41, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !88, file: !4, line: 561, baseType: !92, size: 32, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !88, file: !4, line: 562, baseType: !94, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !88, file: !4, line: 563, baseType: !97, size: 64, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !99)
!99 = !{!100, !101, !102, !103, !104, !105, !106, !107, !108, !110, !123, !125, !142, !143, !144, !146}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !98, file: !4, line: 493, baseType: !41, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !98, file: !4, line: 494, baseType: !92, size: 32, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !98, file: !4, line: 495, baseType: !76, size: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !98, file: !4, line: 496, baseType: !97, size: 64, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !98, file: !4, line: 497, baseType: !97, size: 64, offset: 256)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !98, file: !4, line: 498, baseType: !97, size: 64, offset: 320)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !98, file: !4, line: 499, baseType: !97, size: 64, offset: 384)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !98, file: !4, line: 500, baseType: !97, size: 64, offset: 448)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !98, file: !4, line: 501, baseType: !109, size: 64, offset: 512)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !98, file: !4, line: 504, baseType: !111, size: 64, offset: 576)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !113)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !114)
!114 = !{!115, !117, !119, !120, !121, !122}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !113, file: !4, line: 389, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !113, file: !4, line: 390, baseType: !118, size: 32, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !92)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !113, file: !4, line: 391, baseType: !76, size: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !113, file: !4, line: 392, baseType: !76, size: 64, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !113, file: !4, line: 393, baseType: !41, size: 64, offset: 256)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !113, file: !4, line: 394, baseType: !109, size: 64, offset: 320)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !98, file: !4, line: 505, baseType: !124, size: 64, offset: 640)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !98, file: !4, line: 506, baseType: !126, size: 64, offset: 704)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !128)
!128 = !{!129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !141}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !127, file: !4, line: 434, baseType: !41, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !127, file: !4, line: 435, baseType: !92, size: 32, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !127, file: !4, line: 436, baseType: !76, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !127, file: !4, line: 437, baseType: !97, size: 64, offset: 192)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !127, file: !4, line: 438, baseType: !97, size: 64, offset: 256)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !127, file: !4, line: 439, baseType: !97, size: 64, offset: 320)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !127, file: !4, line: 440, baseType: !126, size: 64, offset: 384)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !127, file: !4, line: 441, baseType: !126, size: 64, offset: 448)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !127, file: !4, line: 442, baseType: !109, size: 64, offset: 512)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !127, file: !4, line: 443, baseType: !111, size: 64, offset: 576)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !127, file: !4, line: 444, baseType: !140, size: 32, offset: 640)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !127, file: !4, line: 445, baseType: !41, size: 64, offset: 704)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !98, file: !4, line: 507, baseType: !111, size: 64, offset: 768)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !98, file: !4, line: 508, baseType: !41, size: 64, offset: 832)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !98, file: !4, line: 509, baseType: !145, size: 16, offset: 896)
!145 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !98, file: !4, line: 510, baseType: !145, size: 16, offset: 912)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !88, file: !4, line: 564, baseType: !97, size: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !88, file: !4, line: 565, baseType: !97, size: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !88, file: !4, line: 566, baseType: !97, size: 64, offset: 384)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !88, file: !4, line: 567, baseType: !97, size: 64, offset: 448)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !88, file: !4, line: 568, baseType: !109, size: 64, offset: 512)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !88, file: !4, line: 571, baseType: !53, size: 32, offset: 576)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !88, file: !4, line: 572, baseType: !53, size: 32, offset: 608)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !88, file: !4, line: 578, baseType: !155, size: 64, offset: 640)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !157)
!157 = !{!158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !156, file: !4, line: 406, baseType: !41, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !156, file: !4, line: 407, baseType: !92, size: 32, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !156, file: !4, line: 408, baseType: !76, size: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !156, file: !4, line: 409, baseType: !97, size: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !156, file: !4, line: 410, baseType: !97, size: 64, offset: 256)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !156, file: !4, line: 411, baseType: !109, size: 64, offset: 320)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !156, file: !4, line: 412, baseType: !97, size: 64, offset: 384)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !156, file: !4, line: 413, baseType: !97, size: 64, offset: 448)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !156, file: !4, line: 414, baseType: !109, size: 64, offset: 512)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !156, file: !4, line: 417, baseType: !41, size: 64, offset: 576)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !156, file: !4, line: 418, baseType: !41, size: 64, offset: 640)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !156, file: !4, line: 419, baseType: !41, size: 64, offset: 704)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !156, file: !4, line: 420, baseType: !41, size: 64, offset: 768)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !156, file: !4, line: 421, baseType: !76, size: 64, offset: 832)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !156, file: !4, line: 422, baseType: !76, size: 64, offset: 896)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !156, file: !4, line: 423, baseType: !41, size: 64, offset: 960)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !88, file: !4, line: 579, baseType: !155, size: 64, offset: 704)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !88, file: !4, line: 580, baseType: !116, size: 64, offset: 768)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !88, file: !4, line: 581, baseType: !76, size: 64, offset: 832)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !88, file: !4, line: 582, baseType: !76, size: 64, offset: 896)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !88, file: !4, line: 583, baseType: !41, size: 64, offset: 960)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !88, file: !4, line: 584, baseType: !41, size: 64, offset: 1024)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !88, file: !4, line: 585, baseType: !76, size: 64, offset: 1088)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !88, file: !4, line: 586, baseType: !53, size: 32, offset: 1152)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !88, file: !4, line: 588, baseType: !183, size: 64, offset: 1216)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !185, line: 24, flags: DIFlagFwdDecl)
!185 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!186 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !88, file: !4, line: 589, baseType: !41, size: 64, offset: 1280)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !88, file: !4, line: 590, baseType: !53, size: 32, offset: 1344)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !88, file: !4, line: 592, baseType: !53, size: 32, offset: 1376)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "annot", scope: !72, file: !73, line: 929, baseType: !190, size: 64, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaAnnotPtr", file: !73, line: 149, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaAnnot", file: !73, line: 148, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaAnnot", file: !73, line: 150, size: 128, elements: !194)
!194 = !{!195, !197}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !193, file: !73, line: 151, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !193, file: !73, line: 152, baseType: !198, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !98)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !72, file: !73, line: 930, baseType: !53, size: 32, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "typeDecl", scope: !72, file: !73, line: 932, baseType: !203, size: 64, offset: 448)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !204, line: 22, baseType: !205)
!204 = !DIFile(filename: "/usr/include/libxml2/libxml/hash.h", directory: "", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !204, line: 21, baseType: !207)
!207 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !204, line: 21, flags: DIFlagFwdDecl)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "attrDecl", scope: !72, file: !73, line: 933, baseType: !203, size: 64, offset: 512)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "attrgrpDecl", scope: !72, file: !73, line: 934, baseType: !203, size: 64, offset: 576)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "elemDecl", scope: !72, file: !73, line: 935, baseType: !203, size: 64, offset: 640)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "notaDecl", scope: !72, file: !73, line: 936, baseType: !203, size: 64, offset: 704)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "schemasImports", scope: !72, file: !73, line: 938, baseType: !203, size: 64, offset: 768)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !72, file: !73, line: 940, baseType: !41, size: 64, offset: 832)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "groupDecl", scope: !72, file: !73, line: 941, baseType: !203, size: 64, offset: 896)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !72, file: !73, line: 942, baseType: !216, size: 64, offset: 960)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !185, line: 25, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !185, line: 24, baseType: !184)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "includes", scope: !72, file: !73, line: 943, baseType: !41, size: 64, offset: 1024)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "preserve", scope: !72, file: !73, line: 944, baseType: !53, size: 32, offset: 1088)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !72, file: !73, line: 945, baseType: !53, size: 32, offset: 1120)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "idcDef", scope: !72, file: !73, line: 946, baseType: !203, size: 64, offset: 1152)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "volatiles", scope: !72, file: !73, line: 947, baseType: !41, size: 64, offset: 1216)
!224 = !DILocation(line: 10, column: 18, scope: !50)
!225 = !DILocalVariable(name: "doc", scope: !50, file: !1, line: 11, type: !85)
!226 = !DILocation(line: 11, column: 15, scope: !50)
!227 = !DILocalVariable(name: "ret", scope: !50, file: !1, line: 12, type: !53)
!228 = !DILocation(line: 12, column: 9, scope: !50)
!229 = !DILocation(line: 15, column: 5, scope: !50)
!230 = !DILocalVariable(name: "schema_buf", scope: !50, file: !1, line: 18, type: !231)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 8192, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 1024)
!234 = !DILocation(line: 18, column: 10, scope: !50)
!235 = !DILocation(line: 19, column: 24, scope: !50)
!236 = !DILocation(line: 19, column: 5, scope: !50)
!237 = !DILocation(line: 21, column: 5, scope: !50)
!238 = !DILocation(line: 21, column: 38, scope: !50)
!239 = !DILocation(line: 24, column: 36, scope: !50)
!240 = !DILocation(line: 24, column: 13, scope: !50)
!241 = !DILocation(line: 24, column: 11, scope: !50)
!242 = !DILocation(line: 25, column: 9, scope: !243)
!243 = distinct !DILexicalBlock(scope: !50, file: !1, line: 25, column: 9)
!244 = !DILocation(line: 25, column: 15, scope: !243)
!245 = !DILocation(line: 25, column: 9, scope: !50)
!246 = !DILocation(line: 26, column: 9, scope: !247)
!247 = distinct !DILexicalBlock(scope: !243, file: !1, line: 25, column: 24)
!248 = !DILocation(line: 27, column: 9, scope: !247)
!249 = !DILocation(line: 29, column: 29, scope: !50)
!250 = !DILocation(line: 29, column: 14, scope: !50)
!251 = !DILocation(line: 29, column: 12, scope: !50)
!252 = !DILocation(line: 30, column: 29, scope: !50)
!253 = !DILocation(line: 30, column: 5, scope: !50)
!254 = !DILocation(line: 31, column: 9, scope: !255)
!255 = distinct !DILexicalBlock(scope: !50, file: !1, line: 31, column: 9)
!256 = !DILocation(line: 31, column: 16, scope: !255)
!257 = !DILocation(line: 31, column: 9, scope: !50)
!258 = !DILocation(line: 32, column: 9, scope: !259)
!259 = distinct !DILexicalBlock(scope: !255, file: !1, line: 31, column: 25)
!260 = !DILocation(line: 33, column: 9, scope: !259)
!261 = !DILocation(line: 37, column: 35, scope: !50)
!262 = !DILocation(line: 37, column: 13, scope: !50)
!263 = !DILocation(line: 37, column: 11, scope: !50)
!264 = !DILocation(line: 38, column: 9, scope: !265)
!265 = distinct !DILexicalBlock(scope: !50, file: !1, line: 38, column: 9)
!266 = !DILocation(line: 38, column: 15, scope: !265)
!267 = !DILocation(line: 38, column: 9, scope: !50)
!268 = !DILocation(line: 39, column: 23, scope: !269)
!269 = distinct !DILexicalBlock(scope: !265, file: !1, line: 38, column: 24)
!270 = !DILocation(line: 39, column: 9, scope: !269)
!271 = !DILocation(line: 40, column: 9, scope: !269)
!272 = !DILocation(line: 41, column: 9, scope: !269)
!273 = !DILocalVariable(name: "doc_buf", scope: !50, file: !1, line: 45, type: !231)
!274 = !DILocation(line: 45, column: 10, scope: !50)
!275 = !DILocation(line: 46, column: 24, scope: !50)
!276 = !DILocation(line: 46, column: 5, scope: !50)
!277 = !DILocation(line: 47, column: 5, scope: !50)
!278 = !DILocation(line: 47, column: 32, scope: !50)
!279 = !DILocation(line: 49, column: 25, scope: !50)
!280 = !DILocation(line: 49, column: 11, scope: !50)
!281 = !DILocation(line: 49, column: 9, scope: !50)
!282 = !DILocation(line: 50, column: 9, scope: !283)
!283 = distinct !DILexicalBlock(scope: !50, file: !1, line: 50, column: 9)
!284 = !DILocation(line: 50, column: 13, scope: !283)
!285 = !DILocation(line: 50, column: 9, scope: !50)
!286 = !DILocation(line: 51, column: 32, scope: !287)
!287 = distinct !DILexicalBlock(scope: !283, file: !1, line: 50, column: 22)
!288 = !DILocation(line: 51, column: 9, scope: !287)
!289 = !DILocation(line: 52, column: 23, scope: !287)
!290 = !DILocation(line: 52, column: 9, scope: !287)
!291 = !DILocation(line: 53, column: 9, scope: !287)
!292 = !DILocation(line: 54, column: 9, scope: !287)
!293 = !DILocation(line: 58, column: 32, scope: !50)
!294 = !DILocation(line: 58, column: 39, scope: !50)
!295 = !DILocation(line: 58, column: 11, scope: !50)
!296 = !DILocation(line: 58, column: 9, scope: !50)
!297 = !DILocation(line: 65, column: 5, scope: !50)
!298 = !DILocation(line: 68, column: 16, scope: !50)
!299 = !DILocation(line: 68, column: 5, scope: !50)
!300 = !DILocation(line: 69, column: 28, scope: !50)
!301 = !DILocation(line: 69, column: 5, scope: !50)
!302 = !DILocation(line: 70, column: 19, scope: !50)
!303 = !DILocation(line: 70, column: 5, scope: !50)
!304 = !DILocation(line: 71, column: 5, scope: !50)
!305 = !DILocation(line: 72, column: 5, scope: !50)
!306 = !DILocation(line: 73, column: 1, scope: !50)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/327_xmlschemas.c_22809_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/327_xmlschemas.c_22809_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaValidCtxt = type opaque
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

@.str = private unnamed_addr constant [9 x i8] c"test.xsd\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"xml_data\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"noname.xml\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [110 x i8] c"se_runs/sa_llm/libxml2_62911_vul/327_xmlschemas.c_22809_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !52 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaValidCtxt*, align 8
  %3 = alloca %struct._xmlSchemaParserCtxt*, align 8
  %4 = alloca %struct._xmlSchema*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct._xmlDoc*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaValidCtxt** %2, metadata !57, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %3, metadata !64, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata %struct._xmlSchema** %4, metadata !70, metadata !DIExpression()), !dbg !224
  store %struct._xmlSchema* null, %struct._xmlSchema** %4, align 8, !dbg !224
  call void @llvm.dbg.declare(metadata i8** %5, metadata !225, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.declare(metadata i64* %6, metadata !229, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %7, metadata !234, metadata !DIExpression()), !dbg !235
  call void @xmlInitParser(), !dbg !236
  call void @xmlCheckVersion(i32 noundef 20914), !dbg !237
  %8 = call %struct._xmlSchemaParserCtxt* @xmlSchemaNewParserCtxt(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !238
  store %struct._xmlSchemaParserCtxt* %8, %struct._xmlSchemaParserCtxt** %3, align 8, !dbg !239
  %9 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %3, align 8, !dbg !240
  %10 = icmp eq %struct._xmlSchemaParserCtxt* %9, null, !dbg !242
  br i1 %10, label %11, label %12, !dbg !243

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !244
  br label %58, !dbg !244

12:                                               ; preds = %0
  %13 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %3, align 8, !dbg !246
  %14 = call %struct._xmlSchema* @xmlSchemaParse(%struct._xmlSchemaParserCtxt* noundef %13), !dbg !247
  store %struct._xmlSchema* %14, %struct._xmlSchema** %4, align 8, !dbg !248
  %15 = load %struct._xmlSchema*, %struct._xmlSchema** %4, align 8, !dbg !249
  %16 = icmp eq %struct._xmlSchema* %15, null, !dbg !251
  br i1 %16, label %17, label %19, !dbg !252

17:                                               ; preds = %12
  %18 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %3, align 8, !dbg !253
  call void @xmlSchemaFreeParserCtxt(%struct._xmlSchemaParserCtxt* noundef %18), !dbg !255
  store i32 0, i32* %1, align 4, !dbg !256
  br label %58, !dbg !256

19:                                               ; preds = %12
  %20 = load %struct._xmlSchema*, %struct._xmlSchema** %4, align 8, !dbg !257
  %21 = call %struct._xmlSchemaValidCtxt* @xmlSchemaNewValidCtxt(%struct._xmlSchema* noundef %20), !dbg !258
  store %struct._xmlSchemaValidCtxt* %21, %struct._xmlSchemaValidCtxt** %2, align 8, !dbg !259
  %22 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %2, align 8, !dbg !260
  %23 = icmp eq %struct._xmlSchemaValidCtxt* %22, null, !dbg !262
  br i1 %23, label %24, label %27, !dbg !263

24:                                               ; preds = %19
  %25 = load %struct._xmlSchema*, %struct._xmlSchema** %4, align 8, !dbg !264
  call void @xmlSchemaFree(%struct._xmlSchema* noundef %25), !dbg !266
  %26 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %3, align 8, !dbg !267
  call void @xmlSchemaFreeParserCtxt(%struct._xmlSchemaParserCtxt* noundef %26), !dbg !268
  store i32 0, i32* %1, align 4, !dbg !269
  br label %58, !dbg !269

27:                                               ; preds = %19
  store i64 1024, i64* %6, align 8, !dbg !270
  %28 = load i64, i64* %6, align 8, !dbg !271
  %29 = call noalias i8* @malloc(i64 noundef %28) #5, !dbg !272
  store i8* %29, i8** %5, align 8, !dbg !273
  %30 = load i8*, i8** %5, align 8, !dbg !274
  %31 = load i64, i64* %6, align 8, !dbg !275
  call void @klee_make_symbolic(i8* noundef %30, i64 noundef %31, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !276
  %32 = load i8*, i8** %5, align 8, !dbg !277
  %33 = load i64, i64* %6, align 8, !dbg !278
  %34 = sub i64 %33, 1, !dbg !279
  %35 = getelementptr inbounds i8, i8* %32, i64 %34, !dbg !280
  store i8 0, i8* %35, align 1, !dbg !281
  %36 = load i8*, i8** %5, align 8, !dbg !282
  %37 = load i64, i64* %6, align 8, !dbg !283
  %38 = sub i64 %37, 1, !dbg !284
  %39 = trunc i64 %38 to i32, !dbg !283
  %40 = call %struct._xmlDoc* @xmlReadMemory(i8* noundef %36, i32 noundef %39, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* noundef null, i32 noundef 0), !dbg !285
  store %struct._xmlDoc* %40, %struct._xmlDoc** %7, align 8, !dbg !286
  %41 = load %struct._xmlDoc*, %struct._xmlDoc** %7, align 8, !dbg !287
  %42 = icmp eq %struct._xmlDoc* %41, null, !dbg !289
  br i1 %42, label %43, label %48, !dbg !290

43:                                               ; preds = %27
  %44 = load i8*, i8** %5, align 8, !dbg !291
  call void @free(i8* noundef %44) #5, !dbg !293
  %45 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %2, align 8, !dbg !294
  call void @xmlSchemaFreeValidCtxt(%struct._xmlSchemaValidCtxt* noundef %45), !dbg !295
  %46 = load %struct._xmlSchema*, %struct._xmlSchema** %4, align 8, !dbg !296
  call void @xmlSchemaFree(%struct._xmlSchema* noundef %46), !dbg !297
  %47 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %3, align 8, !dbg !298
  call void @xmlSchemaFreeParserCtxt(%struct._xmlSchemaParserCtxt* noundef %47), !dbg !299
  store i32 0, i32* %1, align 4, !dbg !300
  br label %58, !dbg !300

48:                                               ; preds = %27
  %49 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %2, align 8, !dbg !301
  %50 = load %struct._xmlDoc*, %struct._xmlDoc** %7, align 8, !dbg !302
  %51 = call i32 @xmlSchemaValidateDoc(%struct._xmlSchemaValidCtxt* noundef %49, %struct._xmlDoc* noundef %50), !dbg !303
  %52 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.4, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !304
  %53 = load %struct._xmlDoc*, %struct._xmlDoc** %7, align 8, !dbg !305
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %53), !dbg !306
  %54 = load i8*, i8** %5, align 8, !dbg !307
  call void @free(i8* noundef %54) #5, !dbg !308
  %55 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %2, align 8, !dbg !309
  call void @xmlSchemaFreeValidCtxt(%struct._xmlSchemaValidCtxt* noundef %55), !dbg !310
  %56 = load %struct._xmlSchema*, %struct._xmlSchema** %4, align 8, !dbg !311
  call void @xmlSchemaFree(%struct._xmlSchema* noundef %56), !dbg !312
  %57 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %3, align 8, !dbg !313
  call void @xmlSchemaFreeParserCtxt(%struct._xmlSchemaParserCtxt* noundef %57), !dbg !314
  call void @xmlCleanupParser(), !dbg !315
  store i32 0, i32* %1, align 4, !dbg !316
  br label %58, !dbg !316

58:                                               ; preds = %48, %43, %24, %17, %11
  %59 = load i32, i32* %1, align 4, !dbg !317
  ret i32 %59, !dbg !317
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @xmlInitParser() #2

declare void @xmlCheckVersion(i32 noundef) #2

declare %struct._xmlSchemaParserCtxt* @xmlSchemaNewParserCtxt(i8* noundef) #2

declare %struct._xmlSchema* @xmlSchemaParse(%struct._xmlSchemaParserCtxt* noundef) #2

declare void @xmlSchemaFreeParserCtxt(%struct._xmlSchemaParserCtxt* noundef) #2

declare %struct._xmlSchemaValidCtxt* @xmlSchemaNewValidCtxt(%struct._xmlSchema* noundef) #2

declare void @xmlSchemaFree(%struct._xmlSchema* noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare %struct._xmlDoc* @xmlReadMemory(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

declare void @xmlSchemaFreeValidCtxt(%struct._xmlSchemaValidCtxt* noundef) #2

declare i32 @xmlSchemaValidateDoc(%struct._xmlSchemaValidCtxt* noundef, %struct._xmlDoc* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare void @xmlCleanupParser() #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/327_xmlschemas.c_22809_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "08a11423f0077aa2785d31afbb2bd36c")
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
!40 = !{!41, !42}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!44 = !{i32 7, !"Dwarf Version", i32 5}
!45 = !{i32 2, !"Debug Info Version", i32 3}
!46 = !{i32 1, !"wchar_size", i32 4}
!47 = !{i32 7, !"PIC Level", i32 2}
!48 = !{i32 7, !"PIE Level", i32 2}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"Ubuntu clang version 14.0.6"}
!52 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !53, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !56)
!53 = !DISubroutineType(types: !54)
!54 = !{!55}
!55 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!56 = !{}
!57 = !DILocalVariable(name: "vctxt", scope: !52, file: !1, line: 8, type: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValidCtxtPtr", file: !59, line: 116, baseType: !60)
!59 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlschemas.h", directory: "", checksumkind: CSK_MD5, checksum: "c087d0e891d6909b14966bccde02fcfc")
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValidCtxt", file: !59, line: 115, baseType: !62)
!62 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaValidCtxt", file: !59, line: 115, flags: DIFlagFwdDecl)
!63 = !DILocation(line: 8, column: 27, scope: !52)
!64 = !DILocalVariable(name: "pctxt", scope: !52, file: !1, line: 9, type: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxtPtr", file: !59, line: 113, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxt", file: !59, line: 112, baseType: !68)
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaParserCtxt", file: !59, line: 112, flags: DIFlagFwdDecl)
!69 = !DILocation(line: 9, column: 28, scope: !52)
!70 = !DILocalVariable(name: "schema", scope: !52, file: !1, line: 10, type: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaPtr", file: !59, line: 85, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchema", file: !59, line: 84, baseType: !74)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchema", file: !75, line: 923, size: 1280, elements: !76)
!75 = !DIFile(filename: "/usr/include/libxml2/libxml/schemasInternals.h", directory: "", checksumkind: CSK_MD5, checksum: "5072dee68b3423ac6f13185b984cc325")
!76 = !{!77, !83, !84, !85, !86, !189, !201, !202, !208, !209, !210, !211, !212, !213, !214, !215, !219, !220, !221, !222, !223}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !74, file: !75, line: 924, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !81, line: 28, baseType: !82)
!81 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!82 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "targetNamespace", scope: !74, file: !75, line: 925, baseType: !78, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !74, file: !75, line: 926, baseType: !78, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !74, file: !75, line: 927, baseType: !78, size: 64, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !74, file: !75, line: 928, baseType: !87, size: 64, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !91)
!91 = !{!92, !93, !95, !96, !147, !148, !149, !150, !151, !152, !153, !154, !174, !175, !176, !177, !178, !179, !180, !181, !182, !186, !187, !188}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !90, file: !4, line: 560, baseType: !41, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !90, file: !4, line: 561, baseType: !94, size: 32, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !90, file: !4, line: 562, baseType: !42, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !90, file: !4, line: 563, baseType: !97, size: 64, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !99)
!99 = !{!100, !101, !102, !103, !104, !105, !106, !107, !108, !110, !123, !125, !142, !143, !144, !146}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !98, file: !4, line: 493, baseType: !41, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !98, file: !4, line: 494, baseType: !94, size: 32, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !98, file: !4, line: 495, baseType: !78, size: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !98, file: !4, line: 496, baseType: !97, size: 64, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !98, file: !4, line: 497, baseType: !97, size: 64, offset: 256)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !98, file: !4, line: 498, baseType: !97, size: 64, offset: 320)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !98, file: !4, line: 499, baseType: !97, size: 64, offset: 384)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !98, file: !4, line: 500, baseType: !97, size: 64, offset: 448)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !98, file: !4, line: 501, baseType: !109, size: 64, offset: 512)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !98, file: !4, line: 504, baseType: !111, size: 64, offset: 576)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !113)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !114)
!114 = !{!115, !117, !119, !120, !121, !122}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !113, file: !4, line: 389, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !113, file: !4, line: 390, baseType: !118, size: 32, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !94)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !113, file: !4, line: 391, baseType: !78, size: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !113, file: !4, line: 392, baseType: !78, size: 64, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !113, file: !4, line: 393, baseType: !41, size: 64, offset: 256)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !113, file: !4, line: 394, baseType: !109, size: 64, offset: 320)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !98, file: !4, line: 505, baseType: !124, size: 64, offset: 640)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !98, file: !4, line: 506, baseType: !126, size: 64, offset: 704)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !128)
!128 = !{!129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !141}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !127, file: !4, line: 434, baseType: !41, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !127, file: !4, line: 435, baseType: !94, size: 32, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !127, file: !4, line: 436, baseType: !78, size: 64, offset: 128)
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
!147 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !90, file: !4, line: 564, baseType: !97, size: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !90, file: !4, line: 565, baseType: !97, size: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !90, file: !4, line: 566, baseType: !97, size: 64, offset: 384)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !90, file: !4, line: 567, baseType: !97, size: 64, offset: 448)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !90, file: !4, line: 568, baseType: !109, size: 64, offset: 512)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !90, file: !4, line: 571, baseType: !55, size: 32, offset: 576)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !90, file: !4, line: 572, baseType: !55, size: 32, offset: 608)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !90, file: !4, line: 578, baseType: !155, size: 64, offset: 640)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !157)
!157 = !{!158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !156, file: !4, line: 406, baseType: !41, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !156, file: !4, line: 407, baseType: !94, size: 32, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !156, file: !4, line: 408, baseType: !78, size: 64, offset: 128)
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
!171 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !156, file: !4, line: 421, baseType: !78, size: 64, offset: 832)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !156, file: !4, line: 422, baseType: !78, size: 64, offset: 896)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !156, file: !4, line: 423, baseType: !41, size: 64, offset: 960)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !90, file: !4, line: 579, baseType: !155, size: 64, offset: 704)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !90, file: !4, line: 580, baseType: !116, size: 64, offset: 768)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !90, file: !4, line: 581, baseType: !78, size: 64, offset: 832)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !90, file: !4, line: 582, baseType: !78, size: 64, offset: 896)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !90, file: !4, line: 583, baseType: !41, size: 64, offset: 960)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !90, file: !4, line: 584, baseType: !41, size: 64, offset: 1024)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !90, file: !4, line: 585, baseType: !78, size: 64, offset: 1088)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !90, file: !4, line: 586, baseType: !55, size: 32, offset: 1152)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !90, file: !4, line: 588, baseType: !183, size: 64, offset: 1216)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !185, line: 24, flags: DIFlagFwdDecl)
!185 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!186 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !90, file: !4, line: 589, baseType: !41, size: 64, offset: 1280)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !90, file: !4, line: 590, baseType: !55, size: 32, offset: 1344)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !90, file: !4, line: 592, baseType: !55, size: 32, offset: 1376)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "annot", scope: !74, file: !75, line: 929, baseType: !190, size: 64, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaAnnotPtr", file: !75, line: 149, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaAnnot", file: !75, line: 148, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaAnnot", file: !75, line: 150, size: 128, elements: !194)
!194 = !{!195, !197}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !193, file: !75, line: 151, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !193, file: !75, line: 152, baseType: !198, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !98)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !74, file: !75, line: 930, baseType: !55, size: 32, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "typeDecl", scope: !74, file: !75, line: 932, baseType: !203, size: 64, offset: 448)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !204, line: 22, baseType: !205)
!204 = !DIFile(filename: "/usr/include/libxml2/libxml/hash.h", directory: "", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !204, line: 21, baseType: !207)
!207 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !204, line: 21, flags: DIFlagFwdDecl)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "attrDecl", scope: !74, file: !75, line: 933, baseType: !203, size: 64, offset: 512)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "attrgrpDecl", scope: !74, file: !75, line: 934, baseType: !203, size: 64, offset: 576)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "elemDecl", scope: !74, file: !75, line: 935, baseType: !203, size: 64, offset: 640)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "notaDecl", scope: !74, file: !75, line: 936, baseType: !203, size: 64, offset: 704)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "schemasImports", scope: !74, file: !75, line: 938, baseType: !203, size: 64, offset: 768)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !74, file: !75, line: 940, baseType: !41, size: 64, offset: 832)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "groupDecl", scope: !74, file: !75, line: 941, baseType: !203, size: 64, offset: 896)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !74, file: !75, line: 942, baseType: !216, size: 64, offset: 960)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !185, line: 25, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !185, line: 24, baseType: !184)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "includes", scope: !74, file: !75, line: 943, baseType: !41, size: 64, offset: 1024)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "preserve", scope: !74, file: !75, line: 944, baseType: !55, size: 32, offset: 1088)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !74, file: !75, line: 945, baseType: !55, size: 32, offset: 1120)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "idcDef", scope: !74, file: !75, line: 946, baseType: !203, size: 64, offset: 1152)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "volatiles", scope: !74, file: !75, line: 947, baseType: !41, size: 64, offset: 1216)
!224 = !DILocation(line: 10, column: 18, scope: !52)
!225 = !DILocalVariable(name: "xml_data", scope: !52, file: !1, line: 11, type: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!228 = !DILocation(line: 11, column: 17, scope: !52)
!229 = !DILocalVariable(name: "xml_size", scope: !52, file: !1, line: 12, type: !230)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !231, line: 46, baseType: !232)
!231 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!232 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!233 = !DILocation(line: 12, column: 12, scope: !52)
!234 = !DILocalVariable(name: "doc", scope: !52, file: !1, line: 13, type: !87)
!235 = !DILocation(line: 13, column: 15, scope: !52)
!236 = !DILocation(line: 16, column: 5, scope: !52)
!237 = !DILocation(line: 17, column: 5, scope: !52)
!238 = !DILocation(line: 20, column: 13, scope: !52)
!239 = !DILocation(line: 20, column: 11, scope: !52)
!240 = !DILocation(line: 21, column: 9, scope: !241)
!241 = distinct !DILexicalBlock(scope: !52, file: !1, line: 21, column: 9)
!242 = !DILocation(line: 21, column: 15, scope: !241)
!243 = !DILocation(line: 21, column: 9, scope: !52)
!244 = !DILocation(line: 22, column: 9, scope: !245)
!245 = distinct !DILexicalBlock(scope: !241, file: !1, line: 21, column: 24)
!246 = !DILocation(line: 26, column: 29, scope: !52)
!247 = !DILocation(line: 26, column: 14, scope: !52)
!248 = !DILocation(line: 26, column: 12, scope: !52)
!249 = !DILocation(line: 27, column: 9, scope: !250)
!250 = distinct !DILexicalBlock(scope: !52, file: !1, line: 27, column: 9)
!251 = !DILocation(line: 27, column: 16, scope: !250)
!252 = !DILocation(line: 27, column: 9, scope: !52)
!253 = !DILocation(line: 28, column: 33, scope: !254)
!254 = distinct !DILexicalBlock(scope: !250, file: !1, line: 27, column: 25)
!255 = !DILocation(line: 28, column: 9, scope: !254)
!256 = !DILocation(line: 29, column: 9, scope: !254)
!257 = !DILocation(line: 33, column: 35, scope: !52)
!258 = !DILocation(line: 33, column: 13, scope: !52)
!259 = !DILocation(line: 33, column: 11, scope: !52)
!260 = !DILocation(line: 34, column: 9, scope: !261)
!261 = distinct !DILexicalBlock(scope: !52, file: !1, line: 34, column: 9)
!262 = !DILocation(line: 34, column: 15, scope: !261)
!263 = !DILocation(line: 34, column: 9, scope: !52)
!264 = !DILocation(line: 35, column: 23, scope: !265)
!265 = distinct !DILexicalBlock(scope: !261, file: !1, line: 34, column: 24)
!266 = !DILocation(line: 35, column: 9, scope: !265)
!267 = !DILocation(line: 36, column: 33, scope: !265)
!268 = !DILocation(line: 36, column: 9, scope: !265)
!269 = !DILocation(line: 37, column: 9, scope: !265)
!270 = !DILocation(line: 41, column: 14, scope: !52)
!271 = !DILocation(line: 42, column: 30, scope: !52)
!272 = !DILocation(line: 42, column: 23, scope: !52)
!273 = !DILocation(line: 42, column: 14, scope: !52)
!274 = !DILocation(line: 43, column: 31, scope: !52)
!275 = !DILocation(line: 43, column: 41, scope: !52)
!276 = !DILocation(line: 43, column: 5, scope: !52)
!277 = !DILocation(line: 45, column: 13, scope: !52)
!278 = !DILocation(line: 45, column: 23, scope: !52)
!279 = !DILocation(line: 45, column: 32, scope: !52)
!280 = !DILocation(line: 45, column: 5, scope: !52)
!281 = !DILocation(line: 45, column: 37, scope: !52)
!282 = !DILocation(line: 48, column: 25, scope: !52)
!283 = !DILocation(line: 48, column: 35, scope: !52)
!284 = !DILocation(line: 48, column: 44, scope: !52)
!285 = !DILocation(line: 48, column: 11, scope: !52)
!286 = !DILocation(line: 48, column: 9, scope: !52)
!287 = !DILocation(line: 49, column: 9, scope: !288)
!288 = distinct !DILexicalBlock(scope: !52, file: !1, line: 49, column: 9)
!289 = !DILocation(line: 49, column: 13, scope: !288)
!290 = !DILocation(line: 49, column: 9, scope: !52)
!291 = !DILocation(line: 50, column: 21, scope: !292)
!292 = distinct !DILexicalBlock(scope: !288, file: !1, line: 49, column: 22)
!293 = !DILocation(line: 50, column: 9, scope: !292)
!294 = !DILocation(line: 51, column: 32, scope: !292)
!295 = !DILocation(line: 51, column: 9, scope: !292)
!296 = !DILocation(line: 52, column: 23, scope: !292)
!297 = !DILocation(line: 52, column: 9, scope: !292)
!298 = !DILocation(line: 53, column: 33, scope: !292)
!299 = !DILocation(line: 53, column: 9, scope: !292)
!300 = !DILocation(line: 54, column: 9, scope: !292)
!301 = !DILocation(line: 58, column: 26, scope: !52)
!302 = !DILocation(line: 58, column: 33, scope: !52)
!303 = !DILocation(line: 58, column: 5, scope: !52)
!304 = !DILocation(line: 62, column: 5, scope: !52)
!305 = !DILocation(line: 65, column: 16, scope: !52)
!306 = !DILocation(line: 65, column: 5, scope: !52)
!307 = !DILocation(line: 66, column: 17, scope: !52)
!308 = !DILocation(line: 66, column: 5, scope: !52)
!309 = !DILocation(line: 67, column: 28, scope: !52)
!310 = !DILocation(line: 67, column: 5, scope: !52)
!311 = !DILocation(line: 68, column: 19, scope: !52)
!312 = !DILocation(line: 68, column: 5, scope: !52)
!313 = !DILocation(line: 69, column: 29, scope: !52)
!314 = !DILocation(line: 69, column: 5, scope: !52)
!315 = !DILocation(line: 70, column: 5, scope: !52)
!316 = !DILocation(line: 72, column: 5, scope: !52)
!317 = !DILocation(line: 73, column: 1, scope: !52)

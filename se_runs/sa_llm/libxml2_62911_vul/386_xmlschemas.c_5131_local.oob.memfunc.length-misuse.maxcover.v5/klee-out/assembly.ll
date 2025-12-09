; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/386_xmlschemas.c_5131_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/386_xmlschemas.c_5131_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaParserCtxt = type opaque
%struct._xmlSchemaAttribute = type { i32, %struct._xmlSchemaAttribute*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._xmlSchemaAnnot*, %struct._xmlSchemaType*, i32, i8*, %struct._xmlSchemaType*, %struct._xmlNode*, i8*, i32, i8*, %struct._xmlSchemaVal*, %struct._xmlSchemaAttribute* }
%struct._xmlSchemaAnnot = type { %struct._xmlSchemaAnnot*, %struct._xmlNode* }
%struct._xmlSchemaType = type { i32, %struct._xmlSchemaType*, i8*, i8*, i8*, i8*, %struct._xmlSchemaAnnot*, %struct._xmlSchemaType*, %struct._xmlSchemaAttribute*, %struct._xmlNode*, i32, i32, i32, i32, i8*, i8*, %struct._xmlSchemaType*, %struct._xmlSchemaFacet*, %struct._xmlSchemaType*, i32, %struct._xmlSchemaAttributeLink**, %struct._xmlSchemaWildcard*, i32, %struct._xmlSchemaTypeLink*, %struct._xmlSchemaFacetLink*, i8*, %struct._xmlSchemaType*, %struct._xmlRegexp*, i8*, i8* }
%struct._xmlSchemaFacet = type { i32, %struct._xmlSchemaFacet*, i8*, i8*, %struct._xmlSchemaAnnot*, %struct._xmlNode*, i32, i32, %struct._xmlSchemaVal*, %struct._xmlRegexp* }
%struct._xmlSchemaAttributeLink = type { %struct._xmlSchemaAttributeLink*, %struct._xmlSchemaAttribute* }
%struct._xmlSchemaWildcard = type { i32, i8*, %struct._xmlSchemaAnnot*, %struct._xmlNode*, i32, i32, i32, i32, %struct._xmlSchemaWildcardNs*, %struct._xmlSchemaWildcardNs*, i32 }
%struct._xmlSchemaWildcardNs = type { %struct._xmlSchemaWildcardNs*, i8* }
%struct._xmlSchemaTypeLink = type { %struct._xmlSchemaTypeLink*, %struct._xmlSchemaType* }
%struct._xmlSchemaFacetLink = type { %struct._xmlSchemaFacetLink*, %struct._xmlSchemaFacet* }
%struct._xmlRegexp = type opaque
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlDict = type opaque
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlSchemaVal = type opaque

@.str = private unnamed_addr constant [9 x i8] c"test.xsd\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"nsName\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"topLevel\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/386_xmlschemas.c_5131_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !103 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaParserCtxt*, align 8
  %3 = alloca %struct._xmlSchemaAttribute*, align 8
  %4 = alloca %struct._xmlNode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %2, metadata !108, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaAttribute** %3, metadata !115, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !371, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.declare(metadata i8** %5, metadata !373, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.declare(metadata i8** %6, metadata !375, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.declare(metadata i32* %7, metadata !377, metadata !DIExpression()), !dbg !378
  %8 = call %struct._xmlSchemaParserCtxt* @xmlSchemaNewParserCtxt(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !379
  store %struct._xmlSchemaParserCtxt* %8, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !380
  %9 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !381
  %10 = icmp eq %struct._xmlSchemaParserCtxt* %9, null, !dbg !383
  br i1 %10, label %11, label %12, !dbg !384

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !385
  br label %31, !dbg !385

12:                                               ; preds = %0
  %13 = bitcast %struct._xmlNode** %4 to i8*, !dbg !386
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !387
  %14 = bitcast i8** %5 to i8*, !dbg !388
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !389
  %15 = bitcast i8** %6 to i8*, !dbg !390
  call void @klee_make_symbolic(i8* noundef %15, i64 noundef 8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !391
  %16 = bitcast i32* %7 to i8*, !dbg !392
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !393
  %17 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !394
  %18 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !395
  %19 = load i8*, i8** %5, align 8, !dbg !396
  %20 = load i8*, i8** %6, align 8, !dbg !397
  %21 = load i32, i32* %7, align 4, !dbg !398
  %22 = call i32 (%struct._xmlSchemaParserCtxt*, i8*, %struct._xmlNode*, i8*, i8*, i32, ...) bitcast (i32 (...)* @xmlSchemaNewAttribute to i32 (%struct._xmlSchemaParserCtxt*, i8*, %struct._xmlNode*, i8*, i8*, i32, ...)*)(%struct._xmlSchemaParserCtxt* noundef %17, i8* noundef null, %struct._xmlNode* noundef %18, i8* noundef %19, i8* noundef %20, i32 noundef %21), !dbg !399
  %23 = sext i32 %22 to i64, !dbg !399
  %24 = inttoptr i64 %23 to %struct._xmlSchemaAttribute*, !dbg !399
  store %struct._xmlSchemaAttribute* %24, %struct._xmlSchemaAttribute** %3, align 8, !dbg !400
  %25 = load %struct._xmlSchemaAttribute*, %struct._xmlSchemaAttribute** %3, align 8, !dbg !401
  %26 = icmp ne %struct._xmlSchemaAttribute* %25, null, !dbg !403
  br i1 %26, label %27, label %29, !dbg !404

27:                                               ; preds = %12
  %28 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.6, i64 0, i64 0), i32 noundef 25, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !405
  br label %29, !dbg !407

29:                                               ; preds = %27, %12
  %30 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !408
  call void @xmlSchemaFreeParserCtxt(%struct._xmlSchemaParserCtxt* noundef %30), !dbg !409
  store i32 0, i32* %1, align 4, !dbg !410
  br label %31, !dbg !410

31:                                               ; preds = %29, %11
  %32 = load i32, i32* %1, align 4, !dbg !411
  ret i32 %32, !dbg !411
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._xmlSchemaParserCtxt* @xmlSchemaNewParserCtxt(i8* noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare i32 @xmlSchemaNewAttribute(...) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlSchemaFreeParserCtxt(%struct._xmlSchemaParserCtxt* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !93, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/386_xmlschemas.c_5131_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "9aa30bba4317f8f2fbf6ecb7ecc7aad6")
!2 = !{!3, !47, !71, !83}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 82, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/usr/include/libxml2/libxml/schemasInternals.h", directory: "", checksumkind: CSK_MD5, checksum: "5072dee68b3423ac6f13185b984cc325")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!7 = !DIEnumerator(name: "XML_SCHEMA_TYPE_BASIC", value: 1)
!8 = !DIEnumerator(name: "XML_SCHEMA_TYPE_ANY", value: 2)
!9 = !DIEnumerator(name: "XML_SCHEMA_TYPE_FACET", value: 3)
!10 = !DIEnumerator(name: "XML_SCHEMA_TYPE_SIMPLE", value: 4)
!11 = !DIEnumerator(name: "XML_SCHEMA_TYPE_COMPLEX", value: 5)
!12 = !DIEnumerator(name: "XML_SCHEMA_TYPE_SEQUENCE", value: 6)
!13 = !DIEnumerator(name: "XML_SCHEMA_TYPE_CHOICE", value: 7)
!14 = !DIEnumerator(name: "XML_SCHEMA_TYPE_ALL", value: 8)
!15 = !DIEnumerator(name: "XML_SCHEMA_TYPE_SIMPLE_CONTENT", value: 9)
!16 = !DIEnumerator(name: "XML_SCHEMA_TYPE_COMPLEX_CONTENT", value: 10)
!17 = !DIEnumerator(name: "XML_SCHEMA_TYPE_UR", value: 11)
!18 = !DIEnumerator(name: "XML_SCHEMA_TYPE_RESTRICTION", value: 12)
!19 = !DIEnumerator(name: "XML_SCHEMA_TYPE_EXTENSION", value: 13)
!20 = !DIEnumerator(name: "XML_SCHEMA_TYPE_ELEMENT", value: 14)
!21 = !DIEnumerator(name: "XML_SCHEMA_TYPE_ATTRIBUTE", value: 15)
!22 = !DIEnumerator(name: "XML_SCHEMA_TYPE_ATTRIBUTEGROUP", value: 16)
!23 = !DIEnumerator(name: "XML_SCHEMA_TYPE_GROUP", value: 17)
!24 = !DIEnumerator(name: "XML_SCHEMA_TYPE_NOTATION", value: 18)
!25 = !DIEnumerator(name: "XML_SCHEMA_TYPE_LIST", value: 19)
!26 = !DIEnumerator(name: "XML_SCHEMA_TYPE_UNION", value: 20)
!27 = !DIEnumerator(name: "XML_SCHEMA_TYPE_ANY_ATTRIBUTE", value: 21)
!28 = !DIEnumerator(name: "XML_SCHEMA_TYPE_IDC_UNIQUE", value: 22)
!29 = !DIEnumerator(name: "XML_SCHEMA_TYPE_IDC_KEY", value: 23)
!30 = !DIEnumerator(name: "XML_SCHEMA_TYPE_IDC_KEYREF", value: 24)
!31 = !DIEnumerator(name: "XML_SCHEMA_TYPE_PARTICLE", value: 25)
!32 = !DIEnumerator(name: "XML_SCHEMA_TYPE_ATTRIBUTE_USE", value: 26)
!33 = !DIEnumerator(name: "XML_SCHEMA_FACET_MININCLUSIVE", value: 1000)
!34 = !DIEnumerator(name: "XML_SCHEMA_FACET_MINEXCLUSIVE", value: 1001)
!35 = !DIEnumerator(name: "XML_SCHEMA_FACET_MAXINCLUSIVE", value: 1002)
!36 = !DIEnumerator(name: "XML_SCHEMA_FACET_MAXEXCLUSIVE", value: 1003)
!37 = !DIEnumerator(name: "XML_SCHEMA_FACET_TOTALDIGITS", value: 1004)
!38 = !DIEnumerator(name: "XML_SCHEMA_FACET_FRACTIONDIGITS", value: 1005)
!39 = !DIEnumerator(name: "XML_SCHEMA_FACET_PATTERN", value: 1006)
!40 = !DIEnumerator(name: "XML_SCHEMA_FACET_ENUMERATION", value: 1007)
!41 = !DIEnumerator(name: "XML_SCHEMA_FACET_WHITESPACE", value: 1008)
!42 = !DIEnumerator(name: "XML_SCHEMA_FACET_LENGTH", value: 1009)
!43 = !DIEnumerator(name: "XML_SCHEMA_FACET_MAXLENGTH", value: 1010)
!44 = !DIEnumerator(name: "XML_SCHEMA_FACET_MINLENGTH", value: 1011)
!45 = !DIEnumerator(name: "XML_SCHEMA_EXTRA_QNAMEREF", value: 2000)
!46 = !DIEnumerator(name: "XML_SCHEMA_EXTRA_ATTR_USE_PROHIB", value: 2001)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !48, line: 159, baseType: !5, size: 32, elements: !49)
!48 = !DIFile(filename: "/usr/include/libxml2/libxml/tree.h", directory: "", checksumkind: CSK_MD5, checksum: "750bac4395c48684302094dba58dc4a1")
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70}
!50 = !DIEnumerator(name: "XML_ELEMENT_NODE", value: 1)
!51 = !DIEnumerator(name: "XML_ATTRIBUTE_NODE", value: 2)
!52 = !DIEnumerator(name: "XML_TEXT_NODE", value: 3)
!53 = !DIEnumerator(name: "XML_CDATA_SECTION_NODE", value: 4)
!54 = !DIEnumerator(name: "XML_ENTITY_REF_NODE", value: 5)
!55 = !DIEnumerator(name: "XML_ENTITY_NODE", value: 6)
!56 = !DIEnumerator(name: "XML_PI_NODE", value: 7)
!57 = !DIEnumerator(name: "XML_COMMENT_NODE", value: 8)
!58 = !DIEnumerator(name: "XML_DOCUMENT_NODE", value: 9)
!59 = !DIEnumerator(name: "XML_DOCUMENT_TYPE_NODE", value: 10)
!60 = !DIEnumerator(name: "XML_DOCUMENT_FRAG_NODE", value: 11)
!61 = !DIEnumerator(name: "XML_NOTATION_NODE", value: 12)
!62 = !DIEnumerator(name: "XML_HTML_DOCUMENT_NODE", value: 13)
!63 = !DIEnumerator(name: "XML_DTD_NODE", value: 14)
!64 = !DIEnumerator(name: "XML_ELEMENT_DECL", value: 15)
!65 = !DIEnumerator(name: "XML_ATTRIBUTE_DECL", value: 16)
!66 = !DIEnumerator(name: "XML_ENTITY_DECL", value: 17)
!67 = !DIEnumerator(name: "XML_NAMESPACE_DECL", value: 18)
!68 = !DIEnumerator(name: "XML_XINCLUDE_START", value: 19)
!69 = !DIEnumerator(name: "XML_XINCLUDE_END", value: 20)
!70 = !DIEnumerator(name: "XML_DOCB_DOCUMENT_NODE", value: 21)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !48, line: 206, baseType: !5, size: 32, elements: !72)
!72 = !{!73, !74, !75, !76, !77, !78, !79, !80, !81, !82}
!73 = !DIEnumerator(name: "XML_ATTRIBUTE_CDATA", value: 1)
!74 = !DIEnumerator(name: "XML_ATTRIBUTE_ID", value: 2)
!75 = !DIEnumerator(name: "XML_ATTRIBUTE_IDREF", value: 3)
!76 = !DIEnumerator(name: "XML_ATTRIBUTE_IDREFS", value: 4)
!77 = !DIEnumerator(name: "XML_ATTRIBUTE_ENTITY", value: 5)
!78 = !DIEnumerator(name: "XML_ATTRIBUTE_ENTITIES", value: 6)
!79 = !DIEnumerator(name: "XML_ATTRIBUTE_NMTOKEN", value: 7)
!80 = !DIEnumerator(name: "XML_ATTRIBUTE_NMTOKENS", value: 8)
!81 = !DIEnumerator(name: "XML_ATTRIBUTE_ENUMERATION", value: 9)
!82 = !DIEnumerator(name: "XML_ATTRIBUTE_NOTATION", value: 10)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 125, baseType: !5, size: 32, elements: !84)
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92}
!85 = !DIEnumerator(name: "XML_SCHEMA_CONTENT_UNKNOWN", value: 0)
!86 = !DIEnumerator(name: "XML_SCHEMA_CONTENT_EMPTY", value: 1)
!87 = !DIEnumerator(name: "XML_SCHEMA_CONTENT_ELEMENTS", value: 2)
!88 = !DIEnumerator(name: "XML_SCHEMA_CONTENT_MIXED", value: 3)
!89 = !DIEnumerator(name: "XML_SCHEMA_CONTENT_SIMPLE", value: 4)
!90 = !DIEnumerator(name: "XML_SCHEMA_CONTENT_MIXED_OR_ELEMENTS", value: 5)
!91 = !DIEnumerator(name: "XML_SCHEMA_CONTENT_BASIC", value: 6)
!92 = !DIEnumerator(name: "XML_SCHEMA_CONTENT_ANY", value: 7)
!93 = !{!94}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!95 = !{i32 7, !"Dwarf Version", i32 5}
!96 = !{i32 2, !"Debug Info Version", i32 3}
!97 = !{i32 1, !"wchar_size", i32 4}
!98 = !{i32 7, !"PIC Level", i32 2}
!99 = !{i32 7, !"PIE Level", i32 2}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"Ubuntu clang version 14.0.6"}
!103 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !104, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !107)
!104 = !DISubroutineType(types: !105)
!105 = !{!106}
!106 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!107 = !{}
!108 = !DILocalVariable(name: "ctxt", scope: !103, file: !1, line: 8, type: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxtPtr", file: !110, line: 113, baseType: !111)
!110 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlschemas.h", directory: "", checksumkind: CSK_MD5, checksum: "c087d0e891d6909b14966bccde02fcfc")
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxt", file: !110, line: 112, baseType: !113)
!113 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaParserCtxt", file: !110, line: 112, flags: DIFlagFwdDecl)
!114 = !DILocation(line: 8, column: 28, scope: !103)
!115 = !DILocalVariable(name: "attr", scope: !103, file: !1, line: 9, type: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaAttributePtr", file: !4, line: 247, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaAttribute", file: !4, line: 246, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaAttribute", file: !4, line: 248, size: 1216, elements: !120)
!120 = !{!121, !123, !125, !131, !132, !133, !134, !135, !136, !249, !361, !362, !363, !364, !365, !366, !367, !368, !369}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !119, file: !4, line: 249, baseType: !122, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaTypeType", file: !4, line: 123, baseType: !3)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !119, file: !4, line: 250, baseType: !124, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !119, file: !4, line: 251, baseType: !126, size: 64, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !129, line: 28, baseType: !130)
!129 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!130 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !119, file: !4, line: 252, baseType: !126, size: 64, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !119, file: !4, line: 253, baseType: !126, size: 64, offset: 256)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "refNs", scope: !119, file: !4, line: 254, baseType: !126, size: 64, offset: 320)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "typeName", scope: !119, file: !4, line: 255, baseType: !126, size: 64, offset: 384)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "typeNs", scope: !119, file: !4, line: 256, baseType: !126, size: 64, offset: 448)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "annot", scope: !119, file: !4, line: 257, baseType: !137, size: 64, offset: 512)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaAnnotPtr", file: !4, line: 149, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaAnnot", file: !4, line: 148, baseType: !140)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaAnnot", file: !4, line: 150, size: 128, elements: !141)
!141 = !{!142, !144}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !140, file: !4, line: 151, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !140, file: !4, line: 152, baseType: !145, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !48, line: 491, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !48, line: 490, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !48, line: 492, size: 960, elements: !149)
!149 = !{!150, !151, !153, !154, !156, !157, !158, !159, !160, !222, !225, !227, !244, !245, !246, !248}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !148, file: !48, line: 493, baseType: !94, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !148, file: !48, line: 494, baseType: !152, size: 32, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !48, line: 183, baseType: !47)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !148, file: !48, line: 495, baseType: !126, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !148, file: !48, line: 496, baseType: !155, size: 64, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !148, file: !48, line: 497, baseType: !155, size: 64, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !148, file: !48, line: 498, baseType: !155, size: 64, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !148, file: !48, line: 499, baseType: !155, size: 64, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !148, file: !48, line: 500, baseType: !155, size: 64, offset: 448)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !148, file: !48, line: 501, baseType: !161, size: 64, offset: 512)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !48, line: 559, size: 1408, elements: !163)
!163 = !{!164, !165, !166, !169, !170, !171, !172, !173, !174, !175, !176, !177, !197, !198, !209, !210, !211, !212, !213, !214, !215, !219, !220, !221}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !162, file: !48, line: 560, baseType: !94, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !162, file: !48, line: 561, baseType: !152, size: 32, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !162, file: !48, line: 562, baseType: !167, size: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !162, file: !48, line: 563, baseType: !155, size: 64, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !162, file: !48, line: 564, baseType: !155, size: 64, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !162, file: !48, line: 565, baseType: !155, size: 64, offset: 320)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !162, file: !48, line: 566, baseType: !155, size: 64, offset: 384)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !162, file: !48, line: 567, baseType: !155, size: 64, offset: 448)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !162, file: !48, line: 568, baseType: !161, size: 64, offset: 512)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !162, file: !48, line: 571, baseType: !106, size: 32, offset: 576)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !162, file: !48, line: 572, baseType: !106, size: 32, offset: 608)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !162, file: !48, line: 578, baseType: !178, size: 64, offset: 640)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !48, line: 405, size: 1024, elements: !180)
!180 = !{!181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !179, file: !48, line: 406, baseType: !94, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !179, file: !48, line: 407, baseType: !152, size: 32, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !179, file: !48, line: 408, baseType: !126, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !179, file: !48, line: 409, baseType: !155, size: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !179, file: !48, line: 410, baseType: !155, size: 64, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !179, file: !48, line: 411, baseType: !161, size: 64, offset: 320)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !179, file: !48, line: 412, baseType: !155, size: 64, offset: 384)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !179, file: !48, line: 413, baseType: !155, size: 64, offset: 448)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !179, file: !48, line: 414, baseType: !161, size: 64, offset: 512)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !179, file: !48, line: 417, baseType: !94, size: 64, offset: 576)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !179, file: !48, line: 418, baseType: !94, size: 64, offset: 640)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !179, file: !48, line: 419, baseType: !94, size: 64, offset: 704)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !179, file: !48, line: 420, baseType: !94, size: 64, offset: 768)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !179, file: !48, line: 421, baseType: !126, size: 64, offset: 832)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !179, file: !48, line: 422, baseType: !126, size: 64, offset: 896)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !179, file: !48, line: 423, baseType: !94, size: 64, offset: 960)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !162, file: !48, line: 579, baseType: !178, size: 64, offset: 704)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !162, file: !48, line: 580, baseType: !199, size: 64, offset: 768)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !48, line: 388, size: 384, elements: !201)
!201 = !{!202, !203, !205, !206, !207, !208}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !200, file: !48, line: 389, baseType: !199, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !200, file: !48, line: 390, baseType: !204, size: 32, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !48, line: 374, baseType: !152)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !200, file: !48, line: 391, baseType: !126, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !200, file: !48, line: 392, baseType: !126, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !200, file: !48, line: 393, baseType: !94, size: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !200, file: !48, line: 394, baseType: !161, size: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !162, file: !48, line: 581, baseType: !126, size: 64, offset: 832)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !162, file: !48, line: 582, baseType: !126, size: 64, offset: 896)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !162, file: !48, line: 583, baseType: !94, size: 64, offset: 960)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !162, file: !48, line: 584, baseType: !94, size: 64, offset: 1024)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !162, file: !48, line: 585, baseType: !126, size: 64, offset: 1088)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !162, file: !48, line: 586, baseType: !106, size: 32, offset: 1152)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !162, file: !48, line: 588, baseType: !216, size: 64, offset: 1216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !218, line: 24, flags: DIFlagFwdDecl)
!218 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!219 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !162, file: !48, line: 589, baseType: !94, size: 64, offset: 1280)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !162, file: !48, line: 590, baseType: !106, size: 32, offset: 1344)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !162, file: !48, line: 592, baseType: !106, size: 32, offset: 1376)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !148, file: !48, line: 504, baseType: !223, size: 64, offset: 576)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !48, line: 386, baseType: !200)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !148, file: !48, line: 505, baseType: !226, size: 64, offset: 640)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !148, file: !48, line: 506, baseType: !228, size: 64, offset: 704)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !48, line: 433, size: 768, elements: !230)
!230 = !{!231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !243}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !229, file: !48, line: 434, baseType: !94, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !229, file: !48, line: 435, baseType: !152, size: 32, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !229, file: !48, line: 436, baseType: !126, size: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !229, file: !48, line: 437, baseType: !155, size: 64, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !229, file: !48, line: 438, baseType: !155, size: 64, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !229, file: !48, line: 439, baseType: !155, size: 64, offset: 320)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !229, file: !48, line: 440, baseType: !228, size: 64, offset: 384)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !229, file: !48, line: 441, baseType: !228, size: 64, offset: 448)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !229, file: !48, line: 442, baseType: !161, size: 64, offset: 512)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !229, file: !48, line: 443, baseType: !223, size: 64, offset: 576)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !229, file: !48, line: 444, baseType: !242, size: 32, offset: 640)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !48, line: 217, baseType: !71)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !229, file: !48, line: 445, baseType: !94, size: 64, offset: 704)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !148, file: !48, line: 507, baseType: !223, size: 64, offset: 768)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !148, file: !48, line: 508, baseType: !94, size: 64, offset: 832)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !148, file: !48, line: 509, baseType: !247, size: 16, offset: 896)
!247 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !148, file: !48, line: 510, baseType: !247, size: 16, offset: 912)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !119, file: !4, line: 259, baseType: !250, size: 64, offset: 576)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaTypePtr", file: !4, line: 140, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaType", file: !4, line: 139, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaType", file: !4, line: 602, size: 1792, elements: !254)
!254 = !{!255, !256, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !271, !272, !273, !274, !300, !301, !302, !312, !337, !338, !347, !356, !357, !358, !359, !360}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !253, file: !4, line: 603, baseType: !122, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !253, file: !4, line: 604, baseType: !257, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !253, file: !4, line: 605, baseType: !126, size: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !253, file: !4, line: 606, baseType: !126, size: 64, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !253, file: !4, line: 607, baseType: !126, size: 64, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "refNs", scope: !253, file: !4, line: 608, baseType: !126, size: 64, offset: 320)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "annot", scope: !253, file: !4, line: 609, baseType: !137, size: 64, offset: 384)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "subtypes", scope: !253, file: !4, line: 610, baseType: !250, size: 64, offset: 448)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !253, file: !4, line: 611, baseType: !116, size: 64, offset: 512)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !253, file: !4, line: 612, baseType: !145, size: 64, offset: 576)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "minOccurs", scope: !253, file: !4, line: 613, baseType: !106, size: 32, offset: 640)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "maxOccurs", scope: !253, file: !4, line: 614, baseType: !106, size: 32, offset: 672)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !253, file: !4, line: 616, baseType: !106, size: 32, offset: 704)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "contentType", scope: !253, file: !4, line: 617, baseType: !270, size: 32, offset: 736)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaContentType", file: !4, line: 134, baseType: !83)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !253, file: !4, line: 618, baseType: !126, size: 64, offset: 768)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "baseNs", scope: !253, file: !4, line: 619, baseType: !126, size: 64, offset: 832)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "baseType", scope: !253, file: !4, line: 620, baseType: !250, size: 64, offset: 896)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "facets", scope: !253, file: !4, line: 621, baseType: !275, size: 64, offset: 960)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaFacetPtr", file: !4, line: 143, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaFacet", file: !4, line: 142, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaFacet", file: !4, line: 823, size: 576, elements: !279)
!279 = !{!280, !281, !283, !284, !285, !286, !287, !288, !289, !294}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !278, file: !4, line: 824, baseType: !122, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !278, file: !4, line: 825, baseType: !282, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !278, file: !4, line: 826, baseType: !126, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !278, file: !4, line: 827, baseType: !126, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "annot", scope: !278, file: !4, line: 828, baseType: !137, size: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !278, file: !4, line: 829, baseType: !145, size: 64, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "fixed", scope: !278, file: !4, line: 830, baseType: !106, size: 32, offset: 384)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "whitespace", scope: !278, file: !4, line: 831, baseType: !106, size: 32, offset: 416)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !278, file: !4, line: 832, baseType: !290, size: 64, offset: 448)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValPtr", file: !4, line: 137, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaVal", file: !4, line: 136, baseType: !293)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaVal", file: !4, line: 136, flags: DIFlagFwdDecl)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "regexp", scope: !278, file: !4, line: 833, baseType: !295, size: 64, offset: 512)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexpPtr", file: !296, line: 29, baseType: !297)
!296 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlregexp.h", directory: "", checksumkind: CSK_MD5, checksum: "fea3110c96e8cd9013900e1c8e5b6c0b")
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexp", file: !296, line: 28, baseType: !299)
!299 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegexp", file: !296, line: 28, flags: DIFlagFwdDecl)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "redef", scope: !253, file: !4, line: 622, baseType: !257, size: 64, offset: 1024)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "recurse", scope: !253, file: !4, line: 623, baseType: !106, size: 32, offset: 1088)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "attributeUses", scope: !253, file: !4, line: 624, baseType: !303, size: 64, offset: 1152)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaAttributeLinkPtr", file: !4, line: 277, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaAttributeLink", file: !4, line: 276, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaAttributeLink", file: !4, line: 278, size: 128, elements: !308)
!308 = !{!309, !311}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !307, file: !4, line: 279, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !307, file: !4, line: 280, baseType: !124, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "attributeWildcard", scope: !253, file: !4, line: 625, baseType: !313, size: 64, offset: 1216)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaWildcardPtr", file: !4, line: 306, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaWildcard", file: !4, line: 305, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaWildcard", file: !4, line: 307, size: 576, elements: !317)
!317 = !{!318, !319, !320, !321, !322, !323, !324, !325, !326, !335, !336}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !316, file: !4, line: 308, baseType: !122, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !316, file: !4, line: 309, baseType: !126, size: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "annot", scope: !316, file: !4, line: 310, baseType: !137, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !316, file: !4, line: 311, baseType: !145, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "minOccurs", scope: !316, file: !4, line: 312, baseType: !106, size: 32, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "maxOccurs", scope: !316, file: !4, line: 313, baseType: !106, size: 32, offset: 288)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "processContents", scope: !316, file: !4, line: 314, baseType: !106, size: 32, offset: 320)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "any", scope: !316, file: !4, line: 315, baseType: !106, size: 32, offset: 352)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "nsSet", scope: !316, file: !4, line: 316, baseType: !327, size: 64, offset: 384)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaWildcardNsPtr", file: !4, line: 295, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaWildcardNs", file: !4, line: 294, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaWildcardNs", file: !4, line: 296, size: 128, elements: !331)
!331 = !{!332, !334}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !330, file: !4, line: 297, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !330, file: !4, line: 298, baseType: !126, size: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "negNsSet", scope: !316, file: !4, line: 317, baseType: !327, size: 64, offset: 448)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !316, file: !4, line: 318, baseType: !106, size: 32, offset: 512)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "builtInType", scope: !253, file: !4, line: 626, baseType: !106, size: 32, offset: 1280)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "memberTypes", scope: !253, file: !4, line: 627, baseType: !339, size: 64, offset: 1344)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaTypeLinkPtr", file: !4, line: 386, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaTypeLink", file: !4, line: 385, baseType: !342)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaTypeLink", file: !4, line: 387, size: 128, elements: !343)
!343 = !{!344, !346}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !342, file: !4, line: 388, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !342, file: !4, line: 389, baseType: !250, size: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "facetSet", scope: !253, file: !4, line: 628, baseType: !348, size: 64, offset: 1408)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaFacetLinkPtr", file: !4, line: 397, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaFacetLink", file: !4, line: 396, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaFacetLink", file: !4, line: 398, size: 128, elements: !352)
!352 = !{!353, !355}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !351, file: !4, line: 399, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "facet", scope: !351, file: !4, line: 400, baseType: !275, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "refPrefix", scope: !253, file: !4, line: 629, baseType: !126, size: 64, offset: 1472)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "contentTypeDef", scope: !253, file: !4, line: 630, baseType: !250, size: 64, offset: 1536)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "contModel", scope: !253, file: !4, line: 632, baseType: !295, size: 64, offset: 1600)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "targetNamespace", scope: !253, file: !4, line: 633, baseType: !126, size: 64, offset: 1664)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "attrUses", scope: !253, file: !4, line: 634, baseType: !94, size: 64, offset: 1728)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "occurs", scope: !119, file: !4, line: 260, baseType: !106, size: 32, offset: 640)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "defValue", scope: !119, file: !4, line: 261, baseType: !126, size: 64, offset: 704)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "subtypes", scope: !119, file: !4, line: 262, baseType: !250, size: 64, offset: 768)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !119, file: !4, line: 263, baseType: !145, size: 64, offset: 832)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "targetNamespace", scope: !119, file: !4, line: 264, baseType: !126, size: 64, offset: 896)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !119, file: !4, line: 265, baseType: !106, size: 32, offset: 960)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "refPrefix", scope: !119, file: !4, line: 266, baseType: !126, size: 64, offset: 1024)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "defVal", scope: !119, file: !4, line: 267, baseType: !290, size: 64, offset: 1088)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "refDecl", scope: !119, file: !4, line: 268, baseType: !116, size: 64, offset: 1152)
!370 = !DILocation(line: 9, column: 27, scope: !103)
!371 = !DILocalVariable(name: "node", scope: !103, file: !1, line: 10, type: !145)
!372 = !DILocation(line: 10, column: 16, scope: !103)
!373 = !DILocalVariable(name: "name", scope: !103, file: !1, line: 11, type: !226)
!374 = !DILocation(line: 11, column: 14, scope: !103)
!375 = !DILocalVariable(name: "nsName", scope: !103, file: !1, line: 12, type: !226)
!376 = !DILocation(line: 12, column: 14, scope: !103)
!377 = !DILocalVariable(name: "topLevel", scope: !103, file: !1, line: 13, type: !106)
!378 = !DILocation(line: 13, column: 9, scope: !103)
!379 = !DILocation(line: 15, column: 12, scope: !103)
!380 = !DILocation(line: 15, column: 10, scope: !103)
!381 = !DILocation(line: 16, column: 9, scope: !382)
!382 = distinct !DILexicalBlock(scope: !103, file: !1, line: 16, column: 9)
!383 = !DILocation(line: 16, column: 14, scope: !382)
!384 = !DILocation(line: 16, column: 9, scope: !103)
!385 = !DILocation(line: 16, column: 23, scope: !382)
!386 = !DILocation(line: 18, column: 24, scope: !103)
!387 = !DILocation(line: 18, column: 5, scope: !103)
!388 = !DILocation(line: 19, column: 24, scope: !103)
!389 = !DILocation(line: 19, column: 5, scope: !103)
!390 = !DILocation(line: 20, column: 24, scope: !103)
!391 = !DILocation(line: 20, column: 5, scope: !103)
!392 = !DILocation(line: 21, column: 24, scope: !103)
!393 = !DILocation(line: 21, column: 5, scope: !103)
!394 = !DILocation(line: 23, column: 34, scope: !103)
!395 = !DILocation(line: 23, column: 46, scope: !103)
!396 = !DILocation(line: 23, column: 52, scope: !103)
!397 = !DILocation(line: 23, column: 58, scope: !103)
!398 = !DILocation(line: 23, column: 66, scope: !103)
!399 = !DILocation(line: 23, column: 12, scope: !103)
!400 = !DILocation(line: 23, column: 10, scope: !103)
!401 = !DILocation(line: 24, column: 9, scope: !402)
!402 = distinct !DILexicalBlock(scope: !103, file: !1, line: 24, column: 9)
!403 = !DILocation(line: 24, column: 14, scope: !402)
!404 = !DILocation(line: 24, column: 9, scope: !103)
!405 = !DILocation(line: 25, column: 9, scope: !406)
!406 = distinct !DILexicalBlock(scope: !402, file: !1, line: 24, column: 23)
!407 = !DILocation(line: 26, column: 5, scope: !406)
!408 = !DILocation(line: 28, column: 29, scope: !103)
!409 = !DILocation(line: 28, column: 5, scope: !103)
!410 = !DILocation(line: 29, column: 5, scope: !103)
!411 = !DILocation(line: 30, column: 1, scope: !103)

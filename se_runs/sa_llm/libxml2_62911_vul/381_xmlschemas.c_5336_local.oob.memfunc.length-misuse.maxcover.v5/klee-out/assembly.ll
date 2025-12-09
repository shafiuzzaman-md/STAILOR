; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/381_xmlschemas.c_5336_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/381_xmlschemas.c_5336_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaParserCtxt = type opaque
%struct._xmlSchemaType = type { i32, %struct._xmlSchemaType*, i8*, i8*, i8*, i8*, %struct._xmlSchemaAnnot*, %struct._xmlSchemaType*, %struct._xmlSchemaAttribute*, %struct._xmlNode*, i32, i32, i32, i32, i8*, i8*, %struct._xmlSchemaType*, %struct._xmlSchemaFacet*, %struct._xmlSchemaType*, i32, %struct._xmlSchemaAttributeLink**, %struct._xmlSchemaWildcard*, i32, %struct._xmlSchemaTypeLink*, %struct._xmlSchemaFacetLink*, i8*, %struct._xmlSchemaType*, %struct._xmlRegexp*, i8*, i8* }
%struct._xmlSchemaAnnot = type { %struct._xmlSchemaAnnot*, %struct._xmlNode* }
%struct._xmlSchemaAttribute = type { i32, %struct._xmlSchemaAttribute*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._xmlSchemaAnnot*, %struct._xmlSchemaType*, i32, i8*, %struct._xmlSchemaType*, %struct._xmlNode*, i8*, i32, i8*, %struct._xmlSchemaVal*, %struct._xmlSchemaAttribute* }
%struct._xmlSchemaVal = type opaque
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlDict = type opaque
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlSchemaFacet = type { i32, %struct._xmlSchemaFacet*, i8*, i8*, %struct._xmlSchemaAnnot*, %struct._xmlNode*, i32, i32, %struct._xmlSchemaVal*, %struct._xmlRegexp* }
%struct._xmlSchemaAttributeLink = type { %struct._xmlSchemaAttributeLink*, %struct._xmlSchemaAttribute* }
%struct._xmlSchemaWildcard = type { i32, i8*, %struct._xmlSchemaAnnot*, %struct._xmlNode*, i32, i32, i32, i32, %struct._xmlSchemaWildcardNs*, %struct._xmlSchemaWildcardNs*, i32 }
%struct._xmlSchemaWildcardNs = type { %struct._xmlSchemaWildcardNs*, i8* }
%struct._xmlSchemaTypeLink = type { %struct._xmlSchemaTypeLink*, %struct._xmlSchemaType* }
%struct._xmlSchemaFacetLink = type { %struct._xmlSchemaFacetLink*, %struct._xmlSchemaFacet* }
%struct._xmlRegexp = type opaque

@.str = private unnamed_addr constant [9 x i8] c"test.xsd\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"topLevel\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"name_buf\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ns_buf\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/381_xmlschemas.c_5336_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@xmlFree = external global void (i8*)*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !108 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaParserCtxt*, align 8
  %3 = alloca %struct._xmlSchemaType*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._xmlNode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [10 x i8], align 1
  %10 = alloca [10 x i8], align 1
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %2, metadata !113, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaType** %3, metadata !120, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.declare(metadata i8** %4, metadata !371, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.declare(metadata i8** %5, metadata !373, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %6, metadata !375, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.declare(metadata i32* %7, metadata !377, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.declare(metadata i32* %8, metadata !379, metadata !DIExpression()), !dbg !380
  call void @xmlInitParser(), !dbg !381
  %11 = call %struct._xmlSchemaParserCtxt* @xmlSchemaNewParserCtxt(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !382
  store %struct._xmlSchemaParserCtxt* %11, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !383
  %12 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !384
  %13 = icmp eq %struct._xmlSchemaParserCtxt* %12, null, !dbg !386
  br i1 %13, label %14, label %15, !dbg !387

14:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !388
  br label %42, !dbg !388

15:                                               ; preds = %0
  %16 = bitcast i32* %7 to i8*, !dbg !390
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !391
  %17 = bitcast i32* %8 to i8*, !dbg !392
  call void @klee_make_symbolic(i8* noundef %17, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !393
  call void @llvm.dbg.declare(metadata [10 x i8]* %9, metadata !394, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.declare(metadata [10 x i8]* %10, metadata !399, metadata !DIExpression()), !dbg !400
  %18 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0, !dbg !401
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef 10, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !402
  %19 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0, !dbg !403
  call void @klee_make_symbolic(i8* noundef %19, i64 noundef 10, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)), !dbg !404
  %20 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 9, !dbg !405
  store i8 0, i8* %20, align 1, !dbg !406
  %21 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 9, !dbg !407
  store i8 0, i8* %21, align 1, !dbg !408
  %22 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0, !dbg !409
  store i8* %22, i8** %4, align 8, !dbg !410
  %23 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0, !dbg !411
  store i8* %23, i8** %5, align 8, !dbg !412
  store %struct._xmlNode* null, %struct._xmlNode** %6, align 8, !dbg !413
  %24 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !414
  %25 = load i32, i32* %7, align 4, !dbg !415
  %26 = load i8*, i8** %4, align 8, !dbg !416
  %27 = load i8*, i8** %5, align 8, !dbg !417
  %28 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !418
  %29 = load i32, i32* %8, align 4, !dbg !419
  %30 = call i32 (%struct._xmlSchemaParserCtxt*, i32, i8*, i8*, %struct._xmlNode*, i32, ...) bitcast (i32 (...)* @xmlSchemaNewType to i32 (%struct._xmlSchemaParserCtxt*, i32, i8*, i8*, %struct._xmlNode*, i32, ...)*)(%struct._xmlSchemaParserCtxt* noundef %24, i32 noundef %25, i8* noundef %26, i8* noundef %27, %struct._xmlNode* noundef %28, i32 noundef %29), !dbg !420
  %31 = sext i32 %30 to i64, !dbg !420
  %32 = inttoptr i64 %31 to %struct._xmlSchemaType*, !dbg !420
  store %struct._xmlSchemaType* %32, %struct._xmlSchemaType** %3, align 8, !dbg !421
  %33 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.6, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !422
  %34 = load %struct._xmlSchemaType*, %struct._xmlSchemaType** %3, align 8, !dbg !423
  %35 = icmp ne %struct._xmlSchemaType* %34, null, !dbg !423
  br i1 %35, label %36, label %40, !dbg !425

36:                                               ; preds = %15
  %37 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !426
  %38 = load %struct._xmlSchemaType*, %struct._xmlSchemaType** %3, align 8, !dbg !428
  %39 = bitcast %struct._xmlSchemaType* %38 to i8*, !dbg !428
  call void %37(i8* noundef %39), !dbg !426
  br label %40, !dbg !429

40:                                               ; preds = %36, %15
  %41 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !430
  call void @xmlSchemaFreeParserCtxt(%struct._xmlSchemaParserCtxt* noundef %41), !dbg !431
  call void @xmlCleanupParser(), !dbg !432
  store i32 0, i32* %1, align 4, !dbg !433
  br label %42, !dbg !433

42:                                               ; preds = %40, %14
  %43 = load i32, i32* %1, align 4, !dbg !434
  ret i32 %43, !dbg !434
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @xmlInitParser() #2

declare %struct._xmlSchemaParserCtxt* @xmlSchemaNewParserCtxt(i8* noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare i32 @xmlSchemaNewType(...) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlSchemaFreeParserCtxt(%struct._xmlSchemaParserCtxt* noundef) #2

declare void @xmlCleanupParser() #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !93, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/381_xmlschemas.c_5336_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "5abade13305c0d27584f68ae5c80f053")
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
!93 = !{!94, !95}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !98, line: 28, baseType: !99)
!98 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!99 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!100 = !{i32 7, !"Dwarf Version", i32 5}
!101 = !{i32 2, !"Debug Info Version", i32 3}
!102 = !{i32 1, !"wchar_size", i32 4}
!103 = !{i32 7, !"PIC Level", i32 2}
!104 = !{i32 7, !"PIE Level", i32 2}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"Ubuntu clang version 14.0.6"}
!108 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 8, type: !109, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!109 = !DISubroutineType(types: !110)
!110 = !{!111}
!111 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!112 = !{}
!113 = !DILocalVariable(name: "ctxt", scope: !108, file: !1, line: 9, type: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxtPtr", file: !115, line: 113, baseType: !116)
!115 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlschemas.h", directory: "", checksumkind: CSK_MD5, checksum: "c087d0e891d6909b14966bccde02fcfc")
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxt", file: !115, line: 112, baseType: !118)
!118 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaParserCtxt", file: !115, line: 112, flags: DIFlagFwdDecl)
!119 = !DILocation(line: 9, column: 28, scope: !108)
!120 = !DILocalVariable(name: "typePtr", scope: !108, file: !1, line: 10, type: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaTypePtr", file: !4, line: 140, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaType", file: !4, line: 139, baseType: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaType", file: !4, line: 602, size: 1792, elements: !125)
!125 = !{!126, !128, !130, !131, !132, !133, !134, !247, !248, !278, !279, !280, !281, !282, !284, !285, !286, !287, !309, !310, !311, !321, !346, !347, !356, !365, !366, !367, !368, !369}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !124, file: !4, line: 603, baseType: !127, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaTypeType", file: !4, line: 123, baseType: !3)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !124, file: !4, line: 604, baseType: !129, size: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !124, file: !4, line: 605, baseType: !95, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !124, file: !4, line: 606, baseType: !95, size: 64, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !124, file: !4, line: 607, baseType: !95, size: 64, offset: 256)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "refNs", scope: !124, file: !4, line: 608, baseType: !95, size: 64, offset: 320)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "annot", scope: !124, file: !4, line: 609, baseType: !135, size: 64, offset: 384)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaAnnotPtr", file: !4, line: 149, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaAnnot", file: !4, line: 148, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaAnnot", file: !4, line: 150, size: 128, elements: !139)
!139 = !{!140, !142}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !138, file: !4, line: 151, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !138, file: !4, line: 152, baseType: !143, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !48, line: 491, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !48, line: 490, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !48, line: 492, size: 960, elements: !147)
!147 = !{!148, !149, !151, !152, !154, !155, !156, !157, !158, !220, !223, !225, !242, !243, !244, !246}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !146, file: !48, line: 493, baseType: !94, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !146, file: !48, line: 494, baseType: !150, size: 32, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !48, line: 183, baseType: !47)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !146, file: !48, line: 495, baseType: !95, size: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !146, file: !48, line: 496, baseType: !153, size: 64, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !146, file: !48, line: 497, baseType: !153, size: 64, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !146, file: !48, line: 498, baseType: !153, size: 64, offset: 320)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !146, file: !48, line: 499, baseType: !153, size: 64, offset: 384)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !146, file: !48, line: 500, baseType: !153, size: 64, offset: 448)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !146, file: !48, line: 501, baseType: !159, size: 64, offset: 512)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !48, line: 559, size: 1408, elements: !161)
!161 = !{!162, !163, !164, !167, !168, !169, !170, !171, !172, !173, !174, !175, !195, !196, !207, !208, !209, !210, !211, !212, !213, !217, !218, !219}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !160, file: !48, line: 560, baseType: !94, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !160, file: !48, line: 561, baseType: !150, size: 32, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !160, file: !48, line: 562, baseType: !165, size: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !160, file: !48, line: 563, baseType: !153, size: 64, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !160, file: !48, line: 564, baseType: !153, size: 64, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !160, file: !48, line: 565, baseType: !153, size: 64, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !160, file: !48, line: 566, baseType: !153, size: 64, offset: 384)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !160, file: !48, line: 567, baseType: !153, size: 64, offset: 448)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !160, file: !48, line: 568, baseType: !159, size: 64, offset: 512)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !160, file: !48, line: 571, baseType: !111, size: 32, offset: 576)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !160, file: !48, line: 572, baseType: !111, size: 32, offset: 608)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !160, file: !48, line: 578, baseType: !176, size: 64, offset: 640)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !48, line: 405, size: 1024, elements: !178)
!178 = !{!179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !177, file: !48, line: 406, baseType: !94, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !177, file: !48, line: 407, baseType: !150, size: 32, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !177, file: !48, line: 408, baseType: !95, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !177, file: !48, line: 409, baseType: !153, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !177, file: !48, line: 410, baseType: !153, size: 64, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !177, file: !48, line: 411, baseType: !159, size: 64, offset: 320)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !177, file: !48, line: 412, baseType: !153, size: 64, offset: 384)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !177, file: !48, line: 413, baseType: !153, size: 64, offset: 448)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !177, file: !48, line: 414, baseType: !159, size: 64, offset: 512)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !177, file: !48, line: 417, baseType: !94, size: 64, offset: 576)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !177, file: !48, line: 418, baseType: !94, size: 64, offset: 640)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !177, file: !48, line: 419, baseType: !94, size: 64, offset: 704)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !177, file: !48, line: 420, baseType: !94, size: 64, offset: 768)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !177, file: !48, line: 421, baseType: !95, size: 64, offset: 832)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !177, file: !48, line: 422, baseType: !95, size: 64, offset: 896)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !177, file: !48, line: 423, baseType: !94, size: 64, offset: 960)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !160, file: !48, line: 579, baseType: !176, size: 64, offset: 704)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !160, file: !48, line: 580, baseType: !197, size: 64, offset: 768)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !48, line: 388, size: 384, elements: !199)
!199 = !{!200, !201, !203, !204, !205, !206}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !198, file: !48, line: 389, baseType: !197, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !198, file: !48, line: 390, baseType: !202, size: 32, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !48, line: 374, baseType: !150)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !198, file: !48, line: 391, baseType: !95, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !198, file: !48, line: 392, baseType: !95, size: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !198, file: !48, line: 393, baseType: !94, size: 64, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !198, file: !48, line: 394, baseType: !159, size: 64, offset: 320)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !160, file: !48, line: 581, baseType: !95, size: 64, offset: 832)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !160, file: !48, line: 582, baseType: !95, size: 64, offset: 896)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !160, file: !48, line: 583, baseType: !94, size: 64, offset: 960)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !160, file: !48, line: 584, baseType: !94, size: 64, offset: 1024)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !160, file: !48, line: 585, baseType: !95, size: 64, offset: 1088)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !160, file: !48, line: 586, baseType: !111, size: 32, offset: 1152)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !160, file: !48, line: 588, baseType: !214, size: 64, offset: 1216)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !216, line: 24, flags: DIFlagFwdDecl)
!216 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!217 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !160, file: !48, line: 589, baseType: !94, size: 64, offset: 1280)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !160, file: !48, line: 590, baseType: !111, size: 32, offset: 1344)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !160, file: !48, line: 592, baseType: !111, size: 32, offset: 1376)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !146, file: !48, line: 504, baseType: !221, size: 64, offset: 576)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !48, line: 386, baseType: !198)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !146, file: !48, line: 505, baseType: !224, size: 64, offset: 640)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !146, file: !48, line: 506, baseType: !226, size: 64, offset: 704)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !48, line: 433, size: 768, elements: !228)
!228 = !{!229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !241}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !227, file: !48, line: 434, baseType: !94, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !227, file: !48, line: 435, baseType: !150, size: 32, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !227, file: !48, line: 436, baseType: !95, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !227, file: !48, line: 437, baseType: !153, size: 64, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !227, file: !48, line: 438, baseType: !153, size: 64, offset: 256)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !227, file: !48, line: 439, baseType: !153, size: 64, offset: 320)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !227, file: !48, line: 440, baseType: !226, size: 64, offset: 384)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !227, file: !48, line: 441, baseType: !226, size: 64, offset: 448)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !227, file: !48, line: 442, baseType: !159, size: 64, offset: 512)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !227, file: !48, line: 443, baseType: !221, size: 64, offset: 576)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !227, file: !48, line: 444, baseType: !240, size: 32, offset: 640)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !48, line: 217, baseType: !71)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !227, file: !48, line: 445, baseType: !94, size: 64, offset: 704)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !146, file: !48, line: 507, baseType: !221, size: 64, offset: 768)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !146, file: !48, line: 508, baseType: !94, size: 64, offset: 832)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !146, file: !48, line: 509, baseType: !245, size: 16, offset: 896)
!245 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !146, file: !48, line: 510, baseType: !245, size: 16, offset: 912)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "subtypes", scope: !124, file: !4, line: 610, baseType: !121, size: 64, offset: 448)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !124, file: !4, line: 611, baseType: !249, size: 64, offset: 512)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaAttributePtr", file: !4, line: 247, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaAttribute", file: !4, line: 246, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaAttribute", file: !4, line: 248, size: 1216, elements: !253)
!253 = !{!254, !255, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !277}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !252, file: !4, line: 249, baseType: !127, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !252, file: !4, line: 250, baseType: !256, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !252, file: !4, line: 251, baseType: !95, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !252, file: !4, line: 252, baseType: !95, size: 64, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !252, file: !4, line: 253, baseType: !95, size: 64, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "refNs", scope: !252, file: !4, line: 254, baseType: !95, size: 64, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "typeName", scope: !252, file: !4, line: 255, baseType: !95, size: 64, offset: 384)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "typeNs", scope: !252, file: !4, line: 256, baseType: !95, size: 64, offset: 448)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "annot", scope: !252, file: !4, line: 257, baseType: !135, size: 64, offset: 512)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !252, file: !4, line: 259, baseType: !121, size: 64, offset: 576)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "occurs", scope: !252, file: !4, line: 260, baseType: !111, size: 32, offset: 640)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "defValue", scope: !252, file: !4, line: 261, baseType: !95, size: 64, offset: 704)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "subtypes", scope: !252, file: !4, line: 262, baseType: !121, size: 64, offset: 768)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !252, file: !4, line: 263, baseType: !143, size: 64, offset: 832)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "targetNamespace", scope: !252, file: !4, line: 264, baseType: !95, size: 64, offset: 896)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !252, file: !4, line: 265, baseType: !111, size: 32, offset: 960)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "refPrefix", scope: !252, file: !4, line: 266, baseType: !95, size: 64, offset: 1024)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "defVal", scope: !252, file: !4, line: 267, baseType: !273, size: 64, offset: 1088)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValPtr", file: !4, line: 137, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaVal", file: !4, line: 136, baseType: !276)
!276 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaVal", file: !4, line: 136, flags: DIFlagFwdDecl)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "refDecl", scope: !252, file: !4, line: 268, baseType: !249, size: 64, offset: 1152)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !124, file: !4, line: 612, baseType: !143, size: 64, offset: 576)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "minOccurs", scope: !124, file: !4, line: 613, baseType: !111, size: 32, offset: 640)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "maxOccurs", scope: !124, file: !4, line: 614, baseType: !111, size: 32, offset: 672)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !124, file: !4, line: 616, baseType: !111, size: 32, offset: 704)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "contentType", scope: !124, file: !4, line: 617, baseType: !283, size: 32, offset: 736)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaContentType", file: !4, line: 134, baseType: !83)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !124, file: !4, line: 618, baseType: !95, size: 64, offset: 768)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "baseNs", scope: !124, file: !4, line: 619, baseType: !95, size: 64, offset: 832)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "baseType", scope: !124, file: !4, line: 620, baseType: !121, size: 64, offset: 896)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "facets", scope: !124, file: !4, line: 621, baseType: !288, size: 64, offset: 960)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaFacetPtr", file: !4, line: 143, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaFacet", file: !4, line: 142, baseType: !291)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaFacet", file: !4, line: 823, size: 576, elements: !292)
!292 = !{!293, !294, !296, !297, !298, !299, !300, !301, !302, !303}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !291, file: !4, line: 824, baseType: !127, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !291, file: !4, line: 825, baseType: !295, size: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !291, file: !4, line: 826, baseType: !95, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !291, file: !4, line: 827, baseType: !95, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "annot", scope: !291, file: !4, line: 828, baseType: !135, size: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !291, file: !4, line: 829, baseType: !143, size: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "fixed", scope: !291, file: !4, line: 830, baseType: !111, size: 32, offset: 384)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "whitespace", scope: !291, file: !4, line: 831, baseType: !111, size: 32, offset: 416)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !291, file: !4, line: 832, baseType: !273, size: 64, offset: 448)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "regexp", scope: !291, file: !4, line: 833, baseType: !304, size: 64, offset: 512)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexpPtr", file: !305, line: 29, baseType: !306)
!305 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlregexp.h", directory: "", checksumkind: CSK_MD5, checksum: "fea3110c96e8cd9013900e1c8e5b6c0b")
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexp", file: !305, line: 28, baseType: !308)
!308 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegexp", file: !305, line: 28, flags: DIFlagFwdDecl)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "redef", scope: !124, file: !4, line: 622, baseType: !129, size: 64, offset: 1024)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "recurse", scope: !124, file: !4, line: 623, baseType: !111, size: 32, offset: 1088)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "attributeUses", scope: !124, file: !4, line: 624, baseType: !312, size: 64, offset: 1152)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaAttributeLinkPtr", file: !4, line: 277, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaAttributeLink", file: !4, line: 276, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaAttributeLink", file: !4, line: 278, size: 128, elements: !317)
!317 = !{!318, !320}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !316, file: !4, line: 279, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !316, file: !4, line: 280, baseType: !256, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "attributeWildcard", scope: !124, file: !4, line: 625, baseType: !322, size: 64, offset: 1216)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaWildcardPtr", file: !4, line: 306, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaWildcard", file: !4, line: 305, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaWildcard", file: !4, line: 307, size: 576, elements: !326)
!326 = !{!327, !328, !329, !330, !331, !332, !333, !334, !335, !344, !345}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !325, file: !4, line: 308, baseType: !127, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !325, file: !4, line: 309, baseType: !95, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "annot", scope: !325, file: !4, line: 310, baseType: !135, size: 64, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !325, file: !4, line: 311, baseType: !143, size: 64, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "minOccurs", scope: !325, file: !4, line: 312, baseType: !111, size: 32, offset: 256)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "maxOccurs", scope: !325, file: !4, line: 313, baseType: !111, size: 32, offset: 288)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "processContents", scope: !325, file: !4, line: 314, baseType: !111, size: 32, offset: 320)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "any", scope: !325, file: !4, line: 315, baseType: !111, size: 32, offset: 352)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "nsSet", scope: !325, file: !4, line: 316, baseType: !336, size: 64, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaWildcardNsPtr", file: !4, line: 295, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaWildcardNs", file: !4, line: 294, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaWildcardNs", file: !4, line: 296, size: 128, elements: !340)
!340 = !{!341, !343}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !339, file: !4, line: 297, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !339, file: !4, line: 298, baseType: !95, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "negNsSet", scope: !325, file: !4, line: 317, baseType: !336, size: 64, offset: 448)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !325, file: !4, line: 318, baseType: !111, size: 32, offset: 512)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "builtInType", scope: !124, file: !4, line: 626, baseType: !111, size: 32, offset: 1280)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "memberTypes", scope: !124, file: !4, line: 627, baseType: !348, size: 64, offset: 1344)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaTypeLinkPtr", file: !4, line: 386, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaTypeLink", file: !4, line: 385, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaTypeLink", file: !4, line: 387, size: 128, elements: !352)
!352 = !{!353, !355}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !351, file: !4, line: 388, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !351, file: !4, line: 389, baseType: !121, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "facetSet", scope: !124, file: !4, line: 628, baseType: !357, size: 64, offset: 1408)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaFacetLinkPtr", file: !4, line: 397, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaFacetLink", file: !4, line: 396, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaFacetLink", file: !4, line: 398, size: 128, elements: !361)
!361 = !{!362, !364}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !360, file: !4, line: 399, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "facet", scope: !360, file: !4, line: 400, baseType: !288, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "refPrefix", scope: !124, file: !4, line: 629, baseType: !95, size: 64, offset: 1472)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "contentTypeDef", scope: !124, file: !4, line: 630, baseType: !121, size: 64, offset: 1536)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "contModel", scope: !124, file: !4, line: 632, baseType: !304, size: 64, offset: 1600)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "targetNamespace", scope: !124, file: !4, line: 633, baseType: !95, size: 64, offset: 1664)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "attrUses", scope: !124, file: !4, line: 634, baseType: !94, size: 64, offset: 1728)
!370 = !DILocation(line: 10, column: 22, scope: !108)
!371 = !DILocalVariable(name: "name", scope: !108, file: !1, line: 11, type: !95)
!372 = !DILocation(line: 11, column: 20, scope: !108)
!373 = !DILocalVariable(name: "nsName", scope: !108, file: !1, line: 12, type: !95)
!374 = !DILocation(line: 12, column: 20, scope: !108)
!375 = !DILocalVariable(name: "node", scope: !108, file: !1, line: 13, type: !143)
!376 = !DILocation(line: 13, column: 16, scope: !108)
!377 = !DILocalVariable(name: "type", scope: !108, file: !1, line: 14, type: !111)
!378 = !DILocation(line: 14, column: 9, scope: !108)
!379 = !DILocalVariable(name: "topLevel", scope: !108, file: !1, line: 15, type: !111)
!380 = !DILocation(line: 15, column: 9, scope: !108)
!381 = !DILocation(line: 18, column: 5, scope: !108)
!382 = !DILocation(line: 21, column: 12, scope: !108)
!383 = !DILocation(line: 21, column: 10, scope: !108)
!384 = !DILocation(line: 22, column: 9, scope: !385)
!385 = distinct !DILexicalBlock(scope: !108, file: !1, line: 22, column: 9)
!386 = !DILocation(line: 22, column: 14, scope: !385)
!387 = !DILocation(line: 22, column: 9, scope: !108)
!388 = !DILocation(line: 23, column: 9, scope: !389)
!389 = distinct !DILexicalBlock(scope: !385, file: !1, line: 22, column: 23)
!390 = !DILocation(line: 27, column: 24, scope: !108)
!391 = !DILocation(line: 27, column: 5, scope: !108)
!392 = !DILocation(line: 28, column: 24, scope: !108)
!393 = !DILocation(line: 28, column: 5, scope: !108)
!394 = !DILocalVariable(name: "name_buf", scope: !108, file: !1, line: 33, type: !395)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 80, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 10)
!398 = !DILocation(line: 33, column: 10, scope: !108)
!399 = !DILocalVariable(name: "ns_buf", scope: !108, file: !1, line: 34, type: !395)
!400 = !DILocation(line: 34, column: 10, scope: !108)
!401 = !DILocation(line: 35, column: 24, scope: !108)
!402 = !DILocation(line: 35, column: 5, scope: !108)
!403 = !DILocation(line: 36, column: 24, scope: !108)
!404 = !DILocation(line: 36, column: 5, scope: !108)
!405 = !DILocation(line: 38, column: 5, scope: !108)
!406 = !DILocation(line: 38, column: 28, scope: !108)
!407 = !DILocation(line: 39, column: 5, scope: !108)
!408 = !DILocation(line: 39, column: 26, scope: !108)
!409 = !DILocation(line: 40, column: 29, scope: !108)
!410 = !DILocation(line: 40, column: 10, scope: !108)
!411 = !DILocation(line: 41, column: 31, scope: !108)
!412 = !DILocation(line: 41, column: 12, scope: !108)
!413 = !DILocation(line: 44, column: 10, scope: !108)
!414 = !DILocation(line: 49, column: 32, scope: !108)
!415 = !DILocation(line: 49, column: 38, scope: !108)
!416 = !DILocation(line: 49, column: 44, scope: !108)
!417 = !DILocation(line: 49, column: 50, scope: !108)
!418 = !DILocation(line: 49, column: 58, scope: !108)
!419 = !DILocation(line: 49, column: 64, scope: !108)
!420 = !DILocation(line: 49, column: 15, scope: !108)
!421 = !DILocation(line: 49, column: 13, scope: !108)
!422 = !DILocation(line: 55, column: 5, scope: !108)
!423 = !DILocation(line: 58, column: 9, scope: !424)
!424 = distinct !DILexicalBlock(scope: !108, file: !1, line: 58, column: 9)
!425 = !DILocation(line: 58, column: 9, scope: !108)
!426 = !DILocation(line: 59, column: 9, scope: !427)
!427 = distinct !DILexicalBlock(scope: !424, file: !1, line: 58, column: 18)
!428 = !DILocation(line: 59, column: 17, scope: !427)
!429 = !DILocation(line: 60, column: 5, scope: !427)
!430 = !DILocation(line: 61, column: 29, scope: !108)
!431 = !DILocation(line: 61, column: 5, scope: !108)
!432 = !DILocation(line: 62, column: 5, scope: !108)
!433 = !DILocation(line: 64, column: 5, scope: !108)
!434 = !DILocation(line: 65, column: 1, scope: !108)

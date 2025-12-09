; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/348_xpath.c_4708_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/348_xpath.c_4708_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque
%struct._xmlXPathContext = type { %struct._xmlDoc*, %struct._xmlNode*, i32, i32, %struct._xmlHashTable*, i32, i32, %struct._xmlXPathType*, i32, i32, %struct._xmlHashTable*, i32, i32, %struct._xmlXPathAxis*, %struct._xmlNs**, i32, i8*, i32, i32, i32, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlHashTable*, %struct._xmlXPathObject* (i8*, i8*, i8*)*, i8*, i8*, i8*, i8*, void (%struct._xmlXPathParserContext*, i32)* (i8*, i8*, i8*)*, i8*, %struct._xmlNs**, i32, i8*, void (i8*, %struct._xmlError*)*, %struct._xmlError, %struct._xmlNode*, %struct._xmlDict*, i32, i8*, i64, i64, i32 }
%struct._xmlXPathType = type { i8*, i32 (%struct._xmlXPathObject*, i32)* }
%struct._xmlXPathObject = type { i32, %struct._xmlNodeSet*, i32, double, i8*, i8*, i32, i8*, i32 }
%struct._xmlNodeSet = type { i32, i32, %struct._xmlNode** }
%struct._xmlXPathAxis = type { i8*, %struct._xmlXPathObject* (%struct._xmlXPathParserContext*, %struct._xmlXPathObject*)* }
%struct._xmlXPathParserContext = type { i8*, i8*, i32, %struct._xmlXPathContext*, %struct._xmlXPathObject*, i32, i32, %struct._xmlXPathObject**, %struct._xmlXPathCompExpr*, i32, %struct._xmlNode*, i32 }
%struct._xmlXPathCompExpr = type opaque
%struct._xmlHashTable = type opaque
%struct._xmlError = type { i32, i32, i8*, i32, i8*, i32, i8*, i8*, i8*, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"<root/>\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"noname.xml\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/348_xpath.c_4708_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !70 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca %struct._xmlXPathContext*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct._xmlXPathObject*, align 8
  store i32 0, i32* %1, align 4
  call void @xmlInitParser(), !dbg !75
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !76, metadata !DIExpression()), !dbg !186
  %7 = call %struct._xmlDoc* @xmlReadMemory(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef 7, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* noundef null, i32 noundef 0), !dbg !187
  store %struct._xmlDoc* %7, %struct._xmlDoc** %2, align 8, !dbg !186
  %8 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !188
  %9 = icmp eq %struct._xmlDoc* %8, null, !dbg !190
  br i1 %9, label %10, label %11, !dbg !191

10:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !192
  br label %30, !dbg !192

11:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata %struct._xmlXPathContext** %3, metadata !194, metadata !DIExpression()), !dbg !360
  %12 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !361
  %13 = call %struct._xmlXPathContext* @xmlXPathNewContext(%struct._xmlDoc* noundef %12), !dbg !362
  store %struct._xmlXPathContext* %13, %struct._xmlXPathContext** %3, align 8, !dbg !360
  %14 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %3, align 8, !dbg !363
  %15 = icmp eq %struct._xmlXPathContext* %14, null, !dbg !365
  br i1 %15, label %16, label %18, !dbg !366

16:                                               ; preds = %11
  %17 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !367
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %17), !dbg !369
  store i32 1, i32* %1, align 4, !dbg !370
  br label %30, !dbg !370

18:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata i32* %4, metadata !371, metadata !DIExpression()), !dbg !372
  store i32 42, i32* %4, align 4, !dbg !372
  call void @llvm.dbg.declare(metadata i8** %5, metadata !373, metadata !DIExpression()), !dbg !374
  %19 = bitcast i32* %4 to i8*, !dbg !375
  store i8* %19, i8** %5, align 8, !dbg !374
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %6, metadata !376, metadata !DIExpression()), !dbg !377
  %20 = load i8*, i8** %5, align 8, !dbg !378
  %21 = call %struct._xmlXPathObject* @xmlXPathWrapExternal(i8* noundef %20), !dbg !379
  store %struct._xmlXPathObject* %21, %struct._xmlXPathObject** %6, align 8, !dbg !377
  %22 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %6, align 8, !dbg !380
  %23 = icmp ne %struct._xmlXPathObject* %22, null, !dbg !382
  br i1 %23, label %24, label %27, !dbg !383

24:                                               ; preds = %18
  %25 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0), i32 noundef 30, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !384
  %26 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %6, align 8, !dbg !386
  call void @xmlXPathFreeObject(%struct._xmlXPathObject* noundef %26), !dbg !387
  br label %27, !dbg !388

27:                                               ; preds = %24, %18
  %28 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %3, align 8, !dbg !389
  call void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef %28), !dbg !390
  %29 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !391
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %29), !dbg !392
  call void @xmlCleanupParser(), !dbg !393
  store i32 0, i32* %1, align 4, !dbg !394
  br label %30, !dbg !394

30:                                               ; preds = %27, %16, %10
  %31 = load i32, i32* %1, align 4, !dbg !395
  ret i32 %31, !dbg !395
}

declare void @xmlInitParser() #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare %struct._xmlDoc* @xmlReadMemory(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) #1

declare %struct._xmlXPathContext* @xmlXPathNewContext(%struct._xmlDoc* noundef) #1

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #1

declare %struct._xmlXPathObject* @xmlXPathWrapExternal(i8* noundef) #1

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlXPathFreeObject(%struct._xmlXPathObject* noundef) #1

declare void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef) #1

declare void @xmlCleanupParser() #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !60, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/348_xpath.c_4708_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "8deffae57002850a298ddacf01c618e9")
!2 = !{!3, !28, !40, !53}
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
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 101, baseType: !5, size: 32, elements: !42)
!41 = !DIFile(filename: "/usr/include/libxml2/libxml/xpath.h", directory: "", checksumkind: CSK_MD5, checksum: "cfaed99b28e3427ed83cde3f31c59a84")
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!43 = !DIEnumerator(name: "XPATH_UNDEFINED", value: 0)
!44 = !DIEnumerator(name: "XPATH_NODESET", value: 1)
!45 = !DIEnumerator(name: "XPATH_BOOLEAN", value: 2)
!46 = !DIEnumerator(name: "XPATH_NUMBER", value: 3)
!47 = !DIEnumerator(name: "XPATH_STRING", value: 4)
!48 = !DIEnumerator(name: "XPATH_POINT", value: 5)
!49 = !DIEnumerator(name: "XPATH_RANGE", value: 6)
!50 = !DIEnumerator(name: "XPATH_LOCATIONSET", value: 7)
!51 = !DIEnumerator(name: "XPATH_USERS", value: 8)
!52 = !DIEnumerator(name: "XPATH_XSLT_TREE", value: 9)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !54, line: 24, baseType: !5, size: 32, elements: !55)
!54 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlerror.h", directory: "", checksumkind: CSK_MD5, checksum: "28cd85987165565f9306b9b66a2b4e88")
!55 = !{!56, !57, !58, !59}
!56 = !DIEnumerator(name: "XML_ERR_NONE", value: 0)
!57 = !DIEnumerator(name: "XML_ERR_WARNING", value: 1)
!58 = !DIEnumerator(name: "XML_ERR_ERROR", value: 2)
!59 = !DIEnumerator(name: "XML_ERR_FATAL", value: 3)
!60 = !{!61}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!62 = !{i32 7, !"Dwarf Version", i32 5}
!63 = !{i32 2, !"Debug Info Version", i32 3}
!64 = !{i32 1, !"wchar_size", i32 4}
!65 = !{i32 7, !"PIC Level", i32 2}
!66 = !{i32 7, !"PIE Level", i32 2}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"Ubuntu clang version 14.0.6"}
!70 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !71, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !74)
!71 = !DISubroutineType(types: !72)
!72 = !{!73}
!73 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!74 = !{}
!75 = !DILocation(line: 8, column: 5, scope: !70)
!76 = !DILocalVariable(name: "doc", scope: !70, file: !1, line: 11, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !81)
!81 = !{!82, !83, !85, !88, !144, !145, !146, !147, !148, !149, !150, !151, !171, !172, !173, !174, !175, !176, !177, !178, !179, !183, !184, !185}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !80, file: !4, line: 560, baseType: !61, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !80, file: !4, line: 561, baseType: !84, size: 32, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !80, file: !4, line: 562, baseType: !86, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !80, file: !4, line: 563, baseType: !89, size: 64, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !91)
!91 = !{!92, !93, !94, !100, !101, !102, !103, !104, !105, !107, !120, !122, !139, !140, !141, !143}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !90, file: !4, line: 493, baseType: !61, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !90, file: !4, line: 494, baseType: !84, size: 32, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !90, file: !4, line: 495, baseType: !95, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !98, line: 28, baseType: !99)
!98 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!99 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !90, file: !4, line: 496, baseType: !89, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !90, file: !4, line: 497, baseType: !89, size: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !90, file: !4, line: 498, baseType: !89, size: 64, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !90, file: !4, line: 499, baseType: !89, size: 64, offset: 384)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !90, file: !4, line: 500, baseType: !89, size: 64, offset: 448)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !90, file: !4, line: 501, baseType: !106, size: 64, offset: 512)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !90, file: !4, line: 504, baseType: !108, size: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !111)
!111 = !{!112, !114, !116, !117, !118, !119}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !110, file: !4, line: 389, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !110, file: !4, line: 390, baseType: !115, size: 32, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !84)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !110, file: !4, line: 391, baseType: !95, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !110, file: !4, line: 392, baseType: !95, size: 64, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !110, file: !4, line: 393, baseType: !61, size: 64, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !110, file: !4, line: 394, baseType: !106, size: 64, offset: 320)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !90, file: !4, line: 505, baseType: !121, size: 64, offset: 640)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !90, file: !4, line: 506, baseType: !123, size: 64, offset: 704)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !125)
!125 = !{!126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !138}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !124, file: !4, line: 434, baseType: !61, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !124, file: !4, line: 435, baseType: !84, size: 32, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !124, file: !4, line: 436, baseType: !95, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !124, file: !4, line: 437, baseType: !89, size: 64, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !124, file: !4, line: 438, baseType: !89, size: 64, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !124, file: !4, line: 439, baseType: !89, size: 64, offset: 320)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !124, file: !4, line: 440, baseType: !123, size: 64, offset: 384)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !124, file: !4, line: 441, baseType: !123, size: 64, offset: 448)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !124, file: !4, line: 442, baseType: !106, size: 64, offset: 512)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !124, file: !4, line: 443, baseType: !108, size: 64, offset: 576)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !124, file: !4, line: 444, baseType: !137, size: 32, offset: 640)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !124, file: !4, line: 445, baseType: !61, size: 64, offset: 704)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !90, file: !4, line: 507, baseType: !108, size: 64, offset: 768)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !90, file: !4, line: 508, baseType: !61, size: 64, offset: 832)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !90, file: !4, line: 509, baseType: !142, size: 16, offset: 896)
!142 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !90, file: !4, line: 510, baseType: !142, size: 16, offset: 912)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !80, file: !4, line: 564, baseType: !89, size: 64, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !80, file: !4, line: 565, baseType: !89, size: 64, offset: 320)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !80, file: !4, line: 566, baseType: !89, size: 64, offset: 384)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !80, file: !4, line: 567, baseType: !89, size: 64, offset: 448)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !80, file: !4, line: 568, baseType: !106, size: 64, offset: 512)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !80, file: !4, line: 571, baseType: !73, size: 32, offset: 576)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !80, file: !4, line: 572, baseType: !73, size: 32, offset: 608)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !80, file: !4, line: 578, baseType: !152, size: 64, offset: 640)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !154)
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !153, file: !4, line: 406, baseType: !61, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !153, file: !4, line: 407, baseType: !84, size: 32, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !153, file: !4, line: 408, baseType: !95, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !153, file: !4, line: 409, baseType: !89, size: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !153, file: !4, line: 410, baseType: !89, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !153, file: !4, line: 411, baseType: !106, size: 64, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !153, file: !4, line: 412, baseType: !89, size: 64, offset: 384)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !153, file: !4, line: 413, baseType: !89, size: 64, offset: 448)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !153, file: !4, line: 414, baseType: !106, size: 64, offset: 512)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !153, file: !4, line: 417, baseType: !61, size: 64, offset: 576)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !153, file: !4, line: 418, baseType: !61, size: 64, offset: 640)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !153, file: !4, line: 419, baseType: !61, size: 64, offset: 704)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !153, file: !4, line: 420, baseType: !61, size: 64, offset: 768)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !153, file: !4, line: 421, baseType: !95, size: 64, offset: 832)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !153, file: !4, line: 422, baseType: !95, size: 64, offset: 896)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !153, file: !4, line: 423, baseType: !61, size: 64, offset: 960)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !80, file: !4, line: 579, baseType: !152, size: 64, offset: 704)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !80, file: !4, line: 580, baseType: !113, size: 64, offset: 768)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !80, file: !4, line: 581, baseType: !95, size: 64, offset: 832)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !80, file: !4, line: 582, baseType: !95, size: 64, offset: 896)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !80, file: !4, line: 583, baseType: !61, size: 64, offset: 960)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !80, file: !4, line: 584, baseType: !61, size: 64, offset: 1024)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !80, file: !4, line: 585, baseType: !95, size: 64, offset: 1088)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !80, file: !4, line: 586, baseType: !73, size: 32, offset: 1152)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !80, file: !4, line: 588, baseType: !180, size: 64, offset: 1216)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !182, line: 24, flags: DIFlagFwdDecl)
!182 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!183 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !80, file: !4, line: 589, baseType: !61, size: 64, offset: 1280)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !80, file: !4, line: 590, baseType: !73, size: 32, offset: 1344)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !80, file: !4, line: 592, baseType: !73, size: 32, offset: 1376)
!186 = !DILocation(line: 11, column: 15, scope: !70)
!187 = !DILocation(line: 11, column: 21, scope: !70)
!188 = !DILocation(line: 12, column: 9, scope: !189)
!189 = distinct !DILexicalBlock(scope: !70, file: !1, line: 12, column: 9)
!190 = !DILocation(line: 12, column: 13, scope: !189)
!191 = !DILocation(line: 12, column: 9, scope: !70)
!192 = !DILocation(line: 13, column: 9, scope: !193)
!193 = distinct !DILexicalBlock(scope: !189, file: !1, line: 12, column: 22)
!194 = !DILocalVariable(name: "xpathCtx", scope: !70, file: !1, line: 15, type: !195)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathContextPtr", file: !41, line: 40, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathContext", file: !41, line: 39, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathContext", file: !41, line: 290, size: 3008, elements: !199)
!199 = !{!200, !201, !205, !206, !207, !213, !214, !215, !252, !253, !254, !255, !256, !257, !291, !294, !295, !296, !297, !298, !299, !300, !301, !302, !307, !308, !309, !310, !311, !320, !321, !322, !323, !324, !348, !349, !350, !354, !355, !356, !358, !359}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !198, file: !41, line: 291, baseType: !77, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !198, file: !41, line: 292, baseType: !202, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !90)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "nb_variables_unused", scope: !198, file: !41, line: 294, baseType: !73, size: 32, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "max_variables_unused", scope: !198, file: !41, line: 295, baseType: !73, size: 32, offset: 160)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "varHash", scope: !198, file: !41, line: 296, baseType: !208, size: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !209, line: 22, baseType: !210)
!209 = !DIFile(filename: "/usr/include/libxml2/libxml/hash.h", directory: "", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !209, line: 21, baseType: !212)
!212 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !209, line: 21, flags: DIFlagFwdDecl)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "nb_types", scope: !198, file: !41, line: 298, baseType: !73, size: 32, offset: 256)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "max_types", scope: !198, file: !41, line: 299, baseType: !73, size: 32, offset: 288)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !198, file: !41, line: 300, baseType: !216, size: 64, offset: 320)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathTypePtr", file: !41, line: 145, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathType", file: !41, line: 144, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathType", file: !41, line: 146, size: 128, elements: !220)
!220 = !{!221, !222}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !219, file: !41, line: 147, baseType: !95, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !219, file: !41, line: 148, baseType: !223, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathConvertFunc", file: !41, line: 138, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!73, !227, !73}
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectPtr", file: !41, line: 115, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObject", file: !41, line: 114, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathObject", file: !41, line: 116, size: 576, elements: !231)
!231 = !{!232, !234, !244, !245, !247, !248, !249, !250, !251}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !230, file: !41, line: 117, baseType: !233, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectType", file: !41, line: 112, baseType: !40)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "nodesetval", scope: !230, file: !41, line: 118, baseType: !235, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSetPtr", file: !41, line: 82, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSet", file: !41, line: 81, baseType: !238)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNodeSet", file: !41, line: 83, size: 128, elements: !239)
!239 = !{!240, !241, !242}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !238, file: !41, line: 84, baseType: !73, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !238, file: !41, line: 85, baseType: !73, size: 32, offset: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !238, file: !41, line: 86, baseType: !243, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "boolval", scope: !230, file: !41, line: 119, baseType: !73, size: 32, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "floatval", scope: !230, file: !41, line: 120, baseType: !246, size: 64, offset: 192)
!246 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "stringval", scope: !230, file: !41, line: 121, baseType: !121, size: 64, offset: 256)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !230, file: !41, line: 122, baseType: !61, size: 64, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !230, file: !41, line: 123, baseType: !73, size: 32, offset: 384)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "user2", scope: !230, file: !41, line: 124, baseType: !61, size: 64, offset: 448)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "index2", scope: !230, file: !41, line: 125, baseType: !73, size: 32, offset: 512)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "nb_funcs_unused", scope: !198, file: !41, line: 302, baseType: !73, size: 32, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "max_funcs_unused", scope: !198, file: !41, line: 303, baseType: !73, size: 32, offset: 416)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "funcHash", scope: !198, file: !41, line: 304, baseType: !208, size: 64, offset: 448)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "nb_axis", scope: !198, file: !41, line: 306, baseType: !73, size: 32, offset: 512)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "max_axis", scope: !198, file: !41, line: 307, baseType: !73, size: 32, offset: 544)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "axis", scope: !198, file: !41, line: 308, baseType: !258, size: 64, offset: 576)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxisPtr", file: !41, line: 204, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxis", file: !41, line: 203, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathAxis", file: !41, line: 205, size: 128, elements: !262)
!262 = !{!263, !264}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !261, file: !41, line: 206, baseType: !95, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !261, file: !41, line: 207, baseType: !265, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxisFunc", file: !41, line: 196, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!227, !269, !227}
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathParserContextPtr", file: !41, line: 42, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathParserContext", file: !41, line: 41, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathParserContext", file: !41, line: 377, size: 704, elements: !273)
!273 = !{!274, !275, !276, !277, !278, !279, !280, !281, !283, !288, !289, !290}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !272, file: !41, line: 378, baseType: !95, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !272, file: !41, line: 379, baseType: !95, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !272, file: !41, line: 381, baseType: !73, size: 32, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !272, file: !41, line: 383, baseType: !195, size: 64, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !272, file: !41, line: 384, baseType: !227, size: 64, offset: 256)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "valueNr", scope: !272, file: !41, line: 385, baseType: !73, size: 32, offset: 320)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "valueMax", scope: !272, file: !41, line: 386, baseType: !73, size: 32, offset: 352)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "valueTab", scope: !272, file: !41, line: 387, baseType: !282, size: 64, offset: 384)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !272, file: !41, line: 389, baseType: !284, size: 64, offset: 448)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathCompExprPtr", file: !41, line: 369, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathCompExpr", file: !41, line: 368, baseType: !287)
!287 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathCompExpr", file: !41, line: 368, flags: DIFlagFwdDecl)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "xptr", scope: !272, file: !41, line: 390, baseType: !73, size: 32, offset: 512)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ancestor", scope: !272, file: !41, line: 391, baseType: !202, size: 64, offset: 576)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "valueFrame", scope: !272, file: !41, line: 393, baseType: !73, size: 32, offset: 640)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !198, file: !41, line: 311, baseType: !292, size: 64, offset: 640)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !4, line: 387, baseType: !108)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "nsNr", scope: !198, file: !41, line: 312, baseType: !73, size: 32, offset: 704)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !198, file: !41, line: 313, baseType: !61, size: 64, offset: 768)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "contextSize", scope: !198, file: !41, line: 316, baseType: !73, size: 32, offset: 832)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "proximityPosition", scope: !198, file: !41, line: 317, baseType: !73, size: 32, offset: 864)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "xptr", scope: !198, file: !41, line: 320, baseType: !73, size: 32, offset: 896)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "here", scope: !198, file: !41, line: 321, baseType: !202, size: 64, offset: 960)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !198, file: !41, line: 322, baseType: !202, size: 64, offset: 1024)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "nsHash", scope: !198, file: !41, line: 325, baseType: !208, size: 64, offset: 1088)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "varLookupFunc", scope: !198, file: !41, line: 326, baseType: !303, size: 64, offset: 1152)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathVariableLookupFunc", file: !41, line: 237, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!227, !61, !95, !95}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "varLookupData", scope: !198, file: !41, line: 327, baseType: !61, size: 64, offset: 1216)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !198, file: !41, line: 330, baseType: !61, size: 64, offset: 1280)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !198, file: !41, line: 333, baseType: !95, size: 64, offset: 1344)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "functionURI", scope: !198, file: !41, line: 334, baseType: !95, size: 64, offset: 1408)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "funcLookupFunc", scope: !198, file: !41, line: 337, baseType: !312, size: 64, offset: 1472)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathFuncLookupFunc", file: !41, line: 252, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!316, !61, !95, !95}
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathFunction", file: !41, line: 220, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !269, !73}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "funcLookupData", scope: !198, file: !41, line: 338, baseType: !61, size: 64, offset: 1536)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tmpNsList", scope: !198, file: !41, line: 341, baseType: !292, size: 64, offset: 1600)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tmpNsNr", scope: !198, file: !41, line: 342, baseType: !73, size: 32, offset: 1664)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !198, file: !41, line: 345, baseType: !61, size: 64, offset: 1728)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !198, file: !41, line: 346, baseType: !325, size: 64, offset: 1792)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStructuredErrorFunc", file: !54, line: 856, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !61, !329}
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorPtr", file: !54, line: 77, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlError", file: !54, line: 76, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlError", file: !54, line: 78, size: 704, elements: !333)
!333 = !{!334, !335, !336, !337, !339, !340, !341, !342, !343, !344, !345, !346, !347}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !332, file: !54, line: 79, baseType: !73, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !332, file: !54, line: 80, baseType: !73, size: 32, offset: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !332, file: !54, line: 81, baseType: !86, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !332, file: !54, line: 82, baseType: !338, size: 32, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorLevel", file: !54, line: 29, baseType: !53)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !332, file: !54, line: 83, baseType: !86, size: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !332, file: !54, line: 84, baseType: !73, size: 32, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "str1", scope: !332, file: !54, line: 85, baseType: !86, size: 64, offset: 320)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "str2", scope: !332, file: !54, line: 86, baseType: !86, size: 64, offset: 384)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "str3", scope: !332, file: !54, line: 87, baseType: !86, size: 64, offset: 448)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "int1", scope: !332, file: !54, line: 88, baseType: !73, size: 32, offset: 512)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "int2", scope: !332, file: !54, line: 89, baseType: !73, size: 32, offset: 544)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "ctxt", scope: !332, file: !54, line: 90, baseType: !61, size: 64, offset: 576)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !332, file: !54, line: 91, baseType: !61, size: 64, offset: 640)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "lastError", scope: !198, file: !41, line: 347, baseType: !331, size: 704, offset: 1856)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "debugNode", scope: !198, file: !41, line: 348, baseType: !202, size: 64, offset: 2560)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !198, file: !41, line: 351, baseType: !351, size: 64, offset: 2624)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !182, line: 25, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !182, line: 24, baseType: !181)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !198, file: !41, line: 353, baseType: !73, size: 32, offset: 2688)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !198, file: !41, line: 356, baseType: !61, size: 64, offset: 2752)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "opLimit", scope: !198, file: !41, line: 359, baseType: !357, size: 64, offset: 2816)
!357 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "opCount", scope: !198, file: !41, line: 360, baseType: !357, size: 64, offset: 2880)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !198, file: !41, line: 361, baseType: !73, size: 32, offset: 2944)
!360 = !DILocation(line: 15, column: 24, scope: !70)
!361 = !DILocation(line: 15, column: 54, scope: !70)
!362 = !DILocation(line: 15, column: 35, scope: !70)
!363 = !DILocation(line: 16, column: 9, scope: !364)
!364 = distinct !DILexicalBlock(scope: !70, file: !1, line: 16, column: 9)
!365 = !DILocation(line: 16, column: 18, scope: !364)
!366 = !DILocation(line: 16, column: 9, scope: !70)
!367 = !DILocation(line: 17, column: 20, scope: !368)
!368 = distinct !DILexicalBlock(scope: !364, file: !1, line: 16, column: 27)
!369 = !DILocation(line: 17, column: 9, scope: !368)
!370 = !DILocation(line: 18, column: 9, scope: !368)
!371 = !DILocalVariable(name: "dummy_val", scope: !70, file: !1, line: 22, type: !73)
!372 = !DILocation(line: 22, column: 9, scope: !70)
!373 = !DILocalVariable(name: "external_val", scope: !70, file: !1, line: 23, type: !61)
!374 = !DILocation(line: 23, column: 11, scope: !70)
!375 = !DILocation(line: 23, column: 26, scope: !70)
!376 = !DILocalVariable(name: "result", scope: !70, file: !1, line: 26, type: !227)
!377 = !DILocation(line: 26, column: 23, scope: !70)
!378 = !DILocation(line: 26, column: 53, scope: !70)
!379 = !DILocation(line: 26, column: 32, scope: !70)
!380 = !DILocation(line: 29, column: 9, scope: !381)
!381 = distinct !DILexicalBlock(scope: !70, file: !1, line: 29, column: 9)
!382 = !DILocation(line: 29, column: 16, scope: !381)
!383 = !DILocation(line: 29, column: 9, scope: !70)
!384 = !DILocation(line: 30, column: 9, scope: !385)
!385 = distinct !DILexicalBlock(scope: !381, file: !1, line: 29, column: 25)
!386 = !DILocation(line: 32, column: 28, scope: !385)
!387 = !DILocation(line: 32, column: 9, scope: !385)
!388 = !DILocation(line: 33, column: 5, scope: !385)
!389 = !DILocation(line: 36, column: 25, scope: !70)
!390 = !DILocation(line: 36, column: 5, scope: !70)
!391 = !DILocation(line: 37, column: 16, scope: !70)
!392 = !DILocation(line: 37, column: 5, scope: !70)
!393 = !DILocation(line: 38, column: 5, scope: !70)
!394 = !DILocation(line: 40, column: 5, scope: !70)
!395 = !DILocation(line: 41, column: 1, scope: !70)

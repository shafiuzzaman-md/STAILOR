; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/344_xpath.c_5444_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/344_xpath.c_5444_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
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

@.str = private unnamed_addr constant [9 x i8] c"xml_data\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"noname.xml\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/344_xpath.c_5444_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !70 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca %struct._xmlDoc*, align 8
  %4 = alloca %struct._xmlXPathContext*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [1024 x i8]* %2, metadata !75, metadata !DIExpression()), !dbg !80
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !81
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 1024, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !82
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 1023, !dbg !83
  store i8 0, i8* %6, align 1, !dbg !84
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %3, metadata !85, metadata !DIExpression()), !dbg !194
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !195
  %8 = call %struct._xmlDoc* @xmlReadMemory(i8* noundef %7, i32 noundef 1023, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* noundef null, i32 noundef 0), !dbg !196
  store %struct._xmlDoc* %8, %struct._xmlDoc** %3, align 8, !dbg !194
  %9 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !197
  %10 = icmp eq %struct._xmlDoc* %9, null, !dbg !199
  br i1 %10, label %11, label %12, !dbg !200

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !201
  br label %23, !dbg !201

12:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata %struct._xmlXPathContext** %4, metadata !203, metadata !DIExpression()), !dbg !369
  %13 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !370
  %14 = call %struct._xmlXPathContext* @xmlXPathNewContext(%struct._xmlDoc* noundef %13), !dbg !371
  store %struct._xmlXPathContext* %14, %struct._xmlXPathContext** %4, align 8, !dbg !369
  %15 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %4, align 8, !dbg !372
  %16 = icmp eq %struct._xmlXPathContext* %15, null, !dbg !374
  br i1 %16, label %17, label %19, !dbg !375

17:                                               ; preds = %12
  %18 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !376
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %18), !dbg !378
  store i32 0, i32* %1, align 4, !dbg !379
  br label %23, !dbg !379

19:                                               ; preds = %12
  %20 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0), i32 noundef 28, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !380
  %21 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %4, align 8, !dbg !381
  call void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef %21), !dbg !382
  %22 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !383
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %22), !dbg !384
  store i32 0, i32* %1, align 4, !dbg !385
  br label %23, !dbg !385

23:                                               ; preds = %19, %17, %11
  %24 = load i32, i32* %1, align 4, !dbg !386
  ret i32 %24, !dbg !386
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare %struct._xmlDoc* @xmlReadMemory(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) #2

declare %struct._xmlXPathContext* @xmlXPathNewContext(%struct._xmlDoc* noundef) #2

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !60, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/344_xpath.c_5444_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "1af86d3abb76538e98932b8e4f127ad2")
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
!70 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !71, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !74)
!71 = !DISubroutineType(types: !72)
!72 = !{!73}
!73 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!74 = !{}
!75 = !DILocalVariable(name: "xml_data", scope: !70, file: !1, line: 7, type: !76)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 8192, elements: !78)
!77 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!78 = !{!79}
!79 = !DISubrange(count: 1024)
!80 = !DILocation(line: 7, column: 10, scope: !70)
!81 = !DILocation(line: 8, column: 24, scope: !70)
!82 = !DILocation(line: 8, column: 5, scope: !70)
!83 = !DILocation(line: 10, column: 5, scope: !70)
!84 = !DILocation(line: 10, column: 34, scope: !70)
!85 = !DILocalVariable(name: "doc", scope: !70, file: !1, line: 13, type: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !90)
!90 = !{!91, !92, !94, !96, !152, !153, !154, !155, !156, !157, !158, !159, !179, !180, !181, !182, !183, !184, !185, !186, !187, !191, !192, !193}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !89, file: !4, line: 560, baseType: !61, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !4, line: 561, baseType: !93, size: 32, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !89, file: !4, line: 562, baseType: !95, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !89, file: !4, line: 563, baseType: !97, size: 64, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !99)
!99 = !{!100, !101, !102, !108, !109, !110, !111, !112, !113, !115, !128, !130, !147, !148, !149, !151}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !98, file: !4, line: 493, baseType: !61, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !98, file: !4, line: 494, baseType: !93, size: 32, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !98, file: !4, line: 495, baseType: !103, size: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !106, line: 28, baseType: !107)
!106 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!107 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !98, file: !4, line: 496, baseType: !97, size: 64, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !98, file: !4, line: 497, baseType: !97, size: 64, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !98, file: !4, line: 498, baseType: !97, size: 64, offset: 320)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !98, file: !4, line: 499, baseType: !97, size: 64, offset: 384)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !98, file: !4, line: 500, baseType: !97, size: 64, offset: 448)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !98, file: !4, line: 501, baseType: !114, size: 64, offset: 512)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !98, file: !4, line: 504, baseType: !116, size: 64, offset: 576)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !118)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !119)
!119 = !{!120, !122, !124, !125, !126, !127}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !118, file: !4, line: 389, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !118, file: !4, line: 390, baseType: !123, size: 32, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !93)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !118, file: !4, line: 391, baseType: !103, size: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !118, file: !4, line: 392, baseType: !103, size: 64, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !118, file: !4, line: 393, baseType: !61, size: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !118, file: !4, line: 394, baseType: !114, size: 64, offset: 320)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !98, file: !4, line: 505, baseType: !129, size: 64, offset: 640)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !98, file: !4, line: 506, baseType: !131, size: 64, offset: 704)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !133)
!133 = !{!134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !146}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !132, file: !4, line: 434, baseType: !61, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !132, file: !4, line: 435, baseType: !93, size: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !132, file: !4, line: 436, baseType: !103, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !132, file: !4, line: 437, baseType: !97, size: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !132, file: !4, line: 438, baseType: !97, size: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !132, file: !4, line: 439, baseType: !97, size: 64, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !132, file: !4, line: 440, baseType: !131, size: 64, offset: 384)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !132, file: !4, line: 441, baseType: !131, size: 64, offset: 448)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !132, file: !4, line: 442, baseType: !114, size: 64, offset: 512)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !132, file: !4, line: 443, baseType: !116, size: 64, offset: 576)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !132, file: !4, line: 444, baseType: !145, size: 32, offset: 640)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !132, file: !4, line: 445, baseType: !61, size: 64, offset: 704)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !98, file: !4, line: 507, baseType: !116, size: 64, offset: 768)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !98, file: !4, line: 508, baseType: !61, size: 64, offset: 832)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !98, file: !4, line: 509, baseType: !150, size: 16, offset: 896)
!150 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !98, file: !4, line: 510, baseType: !150, size: 16, offset: 912)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !89, file: !4, line: 564, baseType: !97, size: 64, offset: 256)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !89, file: !4, line: 565, baseType: !97, size: 64, offset: 320)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !89, file: !4, line: 566, baseType: !97, size: 64, offset: 384)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !89, file: !4, line: 567, baseType: !97, size: 64, offset: 448)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !89, file: !4, line: 568, baseType: !114, size: 64, offset: 512)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !89, file: !4, line: 571, baseType: !73, size: 32, offset: 576)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !89, file: !4, line: 572, baseType: !73, size: 32, offset: 608)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !89, file: !4, line: 578, baseType: !160, size: 64, offset: 640)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !162)
!162 = !{!163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !161, file: !4, line: 406, baseType: !61, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !161, file: !4, line: 407, baseType: !93, size: 32, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !161, file: !4, line: 408, baseType: !103, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !161, file: !4, line: 409, baseType: !97, size: 64, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !161, file: !4, line: 410, baseType: !97, size: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !161, file: !4, line: 411, baseType: !114, size: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !161, file: !4, line: 412, baseType: !97, size: 64, offset: 384)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !161, file: !4, line: 413, baseType: !97, size: 64, offset: 448)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !161, file: !4, line: 414, baseType: !114, size: 64, offset: 512)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !161, file: !4, line: 417, baseType: !61, size: 64, offset: 576)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !161, file: !4, line: 418, baseType: !61, size: 64, offset: 640)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !161, file: !4, line: 419, baseType: !61, size: 64, offset: 704)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !161, file: !4, line: 420, baseType: !61, size: 64, offset: 768)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !161, file: !4, line: 421, baseType: !103, size: 64, offset: 832)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !161, file: !4, line: 422, baseType: !103, size: 64, offset: 896)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !161, file: !4, line: 423, baseType: !61, size: 64, offset: 960)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !89, file: !4, line: 579, baseType: !160, size: 64, offset: 704)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !89, file: !4, line: 580, baseType: !121, size: 64, offset: 768)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !89, file: !4, line: 581, baseType: !103, size: 64, offset: 832)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !89, file: !4, line: 582, baseType: !103, size: 64, offset: 896)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !89, file: !4, line: 583, baseType: !61, size: 64, offset: 960)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !89, file: !4, line: 584, baseType: !61, size: 64, offset: 1024)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !89, file: !4, line: 585, baseType: !103, size: 64, offset: 1088)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !89, file: !4, line: 586, baseType: !73, size: 32, offset: 1152)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !89, file: !4, line: 588, baseType: !188, size: 64, offset: 1216)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !190, line: 24, flags: DIFlagFwdDecl)
!190 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!191 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !89, file: !4, line: 589, baseType: !61, size: 64, offset: 1280)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !89, file: !4, line: 590, baseType: !73, size: 32, offset: 1344)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !89, file: !4, line: 592, baseType: !73, size: 32, offset: 1376)
!194 = !DILocation(line: 13, column: 15, scope: !70)
!195 = !DILocation(line: 13, column: 35, scope: !70)
!196 = !DILocation(line: 13, column: 21, scope: !70)
!197 = !DILocation(line: 14, column: 9, scope: !198)
!198 = distinct !DILexicalBlock(scope: !70, file: !1, line: 14, column: 9)
!199 = !DILocation(line: 14, column: 13, scope: !198)
!200 = !DILocation(line: 14, column: 9, scope: !70)
!201 = !DILocation(line: 16, column: 9, scope: !202)
!202 = distinct !DILexicalBlock(scope: !198, file: !1, line: 14, column: 22)
!203 = !DILocalVariable(name: "ctxt", scope: !70, file: !1, line: 20, type: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathContextPtr", file: !41, line: 40, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathContext", file: !41, line: 39, baseType: !207)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathContext", file: !41, line: 290, size: 3008, elements: !208)
!208 = !{!209, !210, !214, !215, !216, !222, !223, !224, !261, !262, !263, !264, !265, !266, !300, !303, !304, !305, !306, !307, !308, !309, !310, !311, !316, !317, !318, !319, !320, !329, !330, !331, !332, !333, !357, !358, !359, !363, !364, !365, !367, !368}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !207, file: !41, line: 291, baseType: !86, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !207, file: !41, line: 292, baseType: !211, size: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !98)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "nb_variables_unused", scope: !207, file: !41, line: 294, baseType: !73, size: 32, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "max_variables_unused", scope: !207, file: !41, line: 295, baseType: !73, size: 32, offset: 160)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "varHash", scope: !207, file: !41, line: 296, baseType: !217, size: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !218, line: 22, baseType: !219)
!218 = !DIFile(filename: "/usr/include/libxml2/libxml/hash.h", directory: "", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !218, line: 21, baseType: !221)
!221 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !218, line: 21, flags: DIFlagFwdDecl)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "nb_types", scope: !207, file: !41, line: 298, baseType: !73, size: 32, offset: 256)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "max_types", scope: !207, file: !41, line: 299, baseType: !73, size: 32, offset: 288)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !207, file: !41, line: 300, baseType: !225, size: 64, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathTypePtr", file: !41, line: 145, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathType", file: !41, line: 144, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathType", file: !41, line: 146, size: 128, elements: !229)
!229 = !{!230, !231}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !228, file: !41, line: 147, baseType: !103, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !228, file: !41, line: 148, baseType: !232, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathConvertFunc", file: !41, line: 138, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!73, !236, !73}
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectPtr", file: !41, line: 115, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObject", file: !41, line: 114, baseType: !239)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathObject", file: !41, line: 116, size: 576, elements: !240)
!240 = !{!241, !243, !253, !254, !256, !257, !258, !259, !260}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !239, file: !41, line: 117, baseType: !242, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectType", file: !41, line: 112, baseType: !40)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "nodesetval", scope: !239, file: !41, line: 118, baseType: !244, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSetPtr", file: !41, line: 82, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSet", file: !41, line: 81, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNodeSet", file: !41, line: 83, size: 128, elements: !248)
!248 = !{!249, !250, !251}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !247, file: !41, line: 84, baseType: !73, size: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !247, file: !41, line: 85, baseType: !73, size: 32, offset: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !247, file: !41, line: 86, baseType: !252, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "boolval", scope: !239, file: !41, line: 119, baseType: !73, size: 32, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "floatval", scope: !239, file: !41, line: 120, baseType: !255, size: 64, offset: 192)
!255 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "stringval", scope: !239, file: !41, line: 121, baseType: !129, size: 64, offset: 256)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !239, file: !41, line: 122, baseType: !61, size: 64, offset: 320)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !239, file: !41, line: 123, baseType: !73, size: 32, offset: 384)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "user2", scope: !239, file: !41, line: 124, baseType: !61, size: 64, offset: 448)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "index2", scope: !239, file: !41, line: 125, baseType: !73, size: 32, offset: 512)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "nb_funcs_unused", scope: !207, file: !41, line: 302, baseType: !73, size: 32, offset: 384)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "max_funcs_unused", scope: !207, file: !41, line: 303, baseType: !73, size: 32, offset: 416)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "funcHash", scope: !207, file: !41, line: 304, baseType: !217, size: 64, offset: 448)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "nb_axis", scope: !207, file: !41, line: 306, baseType: !73, size: 32, offset: 512)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "max_axis", scope: !207, file: !41, line: 307, baseType: !73, size: 32, offset: 544)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "axis", scope: !207, file: !41, line: 308, baseType: !267, size: 64, offset: 576)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxisPtr", file: !41, line: 204, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxis", file: !41, line: 203, baseType: !270)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathAxis", file: !41, line: 205, size: 128, elements: !271)
!271 = !{!272, !273}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !270, file: !41, line: 206, baseType: !103, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !270, file: !41, line: 207, baseType: !274, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxisFunc", file: !41, line: 196, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!236, !278, !236}
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathParserContextPtr", file: !41, line: 42, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathParserContext", file: !41, line: 41, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathParserContext", file: !41, line: 377, size: 704, elements: !282)
!282 = !{!283, !284, !285, !286, !287, !288, !289, !290, !292, !297, !298, !299}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !281, file: !41, line: 378, baseType: !103, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !281, file: !41, line: 379, baseType: !103, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !281, file: !41, line: 381, baseType: !73, size: 32, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !281, file: !41, line: 383, baseType: !204, size: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !281, file: !41, line: 384, baseType: !236, size: 64, offset: 256)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "valueNr", scope: !281, file: !41, line: 385, baseType: !73, size: 32, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "valueMax", scope: !281, file: !41, line: 386, baseType: !73, size: 32, offset: 352)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "valueTab", scope: !281, file: !41, line: 387, baseType: !291, size: 64, offset: 384)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !281, file: !41, line: 389, baseType: !293, size: 64, offset: 448)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathCompExprPtr", file: !41, line: 369, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathCompExpr", file: !41, line: 368, baseType: !296)
!296 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathCompExpr", file: !41, line: 368, flags: DIFlagFwdDecl)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "xptr", scope: !281, file: !41, line: 390, baseType: !73, size: 32, offset: 512)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ancestor", scope: !281, file: !41, line: 391, baseType: !211, size: 64, offset: 576)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "valueFrame", scope: !281, file: !41, line: 393, baseType: !73, size: 32, offset: 640)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !207, file: !41, line: 311, baseType: !301, size: 64, offset: 640)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !4, line: 387, baseType: !116)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "nsNr", scope: !207, file: !41, line: 312, baseType: !73, size: 32, offset: 704)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !207, file: !41, line: 313, baseType: !61, size: 64, offset: 768)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "contextSize", scope: !207, file: !41, line: 316, baseType: !73, size: 32, offset: 832)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "proximityPosition", scope: !207, file: !41, line: 317, baseType: !73, size: 32, offset: 864)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "xptr", scope: !207, file: !41, line: 320, baseType: !73, size: 32, offset: 896)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "here", scope: !207, file: !41, line: 321, baseType: !211, size: 64, offset: 960)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !207, file: !41, line: 322, baseType: !211, size: 64, offset: 1024)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "nsHash", scope: !207, file: !41, line: 325, baseType: !217, size: 64, offset: 1088)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "varLookupFunc", scope: !207, file: !41, line: 326, baseType: !312, size: 64, offset: 1152)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathVariableLookupFunc", file: !41, line: 237, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!236, !61, !103, !103}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "varLookupData", scope: !207, file: !41, line: 327, baseType: !61, size: 64, offset: 1216)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !207, file: !41, line: 330, baseType: !61, size: 64, offset: 1280)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !207, file: !41, line: 333, baseType: !103, size: 64, offset: 1344)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "functionURI", scope: !207, file: !41, line: 334, baseType: !103, size: 64, offset: 1408)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "funcLookupFunc", scope: !207, file: !41, line: 337, baseType: !321, size: 64, offset: 1472)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathFuncLookupFunc", file: !41, line: 252, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!325, !61, !103, !103}
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathFunction", file: !41, line: 220, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !278, !73}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "funcLookupData", scope: !207, file: !41, line: 338, baseType: !61, size: 64, offset: 1536)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tmpNsList", scope: !207, file: !41, line: 341, baseType: !301, size: 64, offset: 1600)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tmpNsNr", scope: !207, file: !41, line: 342, baseType: !73, size: 32, offset: 1664)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !207, file: !41, line: 345, baseType: !61, size: 64, offset: 1728)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !207, file: !41, line: 346, baseType: !334, size: 64, offset: 1792)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStructuredErrorFunc", file: !54, line: 856, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !61, !338}
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorPtr", file: !54, line: 77, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlError", file: !54, line: 76, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlError", file: !54, line: 78, size: 704, elements: !342)
!342 = !{!343, !344, !345, !346, !348, !349, !350, !351, !352, !353, !354, !355, !356}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !341, file: !54, line: 79, baseType: !73, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !341, file: !54, line: 80, baseType: !73, size: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !341, file: !54, line: 81, baseType: !95, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !341, file: !54, line: 82, baseType: !347, size: 32, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorLevel", file: !54, line: 29, baseType: !53)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !341, file: !54, line: 83, baseType: !95, size: 64, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !341, file: !54, line: 84, baseType: !73, size: 32, offset: 256)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "str1", scope: !341, file: !54, line: 85, baseType: !95, size: 64, offset: 320)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "str2", scope: !341, file: !54, line: 86, baseType: !95, size: 64, offset: 384)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "str3", scope: !341, file: !54, line: 87, baseType: !95, size: 64, offset: 448)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "int1", scope: !341, file: !54, line: 88, baseType: !73, size: 32, offset: 512)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "int2", scope: !341, file: !54, line: 89, baseType: !73, size: 32, offset: 544)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ctxt", scope: !341, file: !54, line: 90, baseType: !61, size: 64, offset: 576)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !341, file: !54, line: 91, baseType: !61, size: 64, offset: 640)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "lastError", scope: !207, file: !41, line: 347, baseType: !340, size: 704, offset: 1856)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "debugNode", scope: !207, file: !41, line: 348, baseType: !211, size: 64, offset: 2560)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !207, file: !41, line: 351, baseType: !360, size: 64, offset: 2624)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !190, line: 25, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !190, line: 24, baseType: !189)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !207, file: !41, line: 353, baseType: !73, size: 32, offset: 2688)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !207, file: !41, line: 356, baseType: !61, size: 64, offset: 2752)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "opLimit", scope: !207, file: !41, line: 359, baseType: !366, size: 64, offset: 2816)
!366 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "opCount", scope: !207, file: !41, line: 360, baseType: !366, size: 64, offset: 2880)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !207, file: !41, line: 361, baseType: !73, size: 32, offset: 2944)
!369 = !DILocation(line: 20, column: 24, scope: !70)
!370 = !DILocation(line: 20, column: 50, scope: !70)
!371 = !DILocation(line: 20, column: 31, scope: !70)
!372 = !DILocation(line: 21, column: 9, scope: !373)
!373 = distinct !DILexicalBlock(scope: !70, file: !1, line: 21, column: 9)
!374 = !DILocation(line: 21, column: 14, scope: !373)
!375 = !DILocation(line: 21, column: 9, scope: !70)
!376 = !DILocation(line: 22, column: 20, scope: !377)
!377 = distinct !DILexicalBlock(scope: !373, file: !1, line: 21, column: 23)
!378 = !DILocation(line: 22, column: 9, scope: !377)
!379 = !DILocation(line: 23, column: 9, scope: !377)
!380 = !DILocation(line: 28, column: 5, scope: !70)
!381 = !DILocation(line: 31, column: 25, scope: !70)
!382 = !DILocation(line: 31, column: 5, scope: !70)
!383 = !DILocation(line: 32, column: 16, scope: !70)
!384 = !DILocation(line: 32, column: 5, scope: !70)
!385 = !DILocation(line: 33, column: 5, scope: !70)
!386 = !DILocation(line: 34, column: 1, scope: !70)

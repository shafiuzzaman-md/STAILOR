; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/352_xpath.c_4581_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/352_xpath.c_4581_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
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

@.str = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"<root/>\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"noname.xml\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/352_xpath.c_4581_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !70 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca %struct._xmlDoc*, align 8
  %4 = alloca %struct._xmlXPathContext*, align 8
  %5 = alloca %struct._xmlXPathObject*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata double* %2, metadata !75, metadata !DIExpression()), !dbg !77
  %6 = bitcast double* %2 to i8*, !dbg !78
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !79
  call void @xmlXPathInit(), !dbg !80
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %3, metadata !81, metadata !DIExpression()), !dbg !191
  %7 = call %struct._xmlDoc* @xmlReadMemory(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 7, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* noundef null, i32 noundef 0), !dbg !192
  store %struct._xmlDoc* %7, %struct._xmlDoc** %3, align 8, !dbg !191
  %8 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !193
  %9 = icmp eq %struct._xmlDoc* %8, null, !dbg !195
  br i1 %9, label %10, label %11, !dbg !196

10:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !197
  br label %29, !dbg !197

11:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata %struct._xmlXPathContext** %4, metadata !198, metadata !DIExpression()), !dbg !363
  %12 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !364
  %13 = call %struct._xmlXPathContext* @xmlXPathNewContext(%struct._xmlDoc* noundef %12), !dbg !365
  store %struct._xmlXPathContext* %13, %struct._xmlXPathContext** %4, align 8, !dbg !363
  %14 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %4, align 8, !dbg !366
  %15 = icmp eq %struct._xmlXPathContext* %14, null, !dbg !368
  br i1 %15, label %16, label %18, !dbg !369

16:                                               ; preds = %11
  %17 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !370
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %17), !dbg !372
  store i32 0, i32* %1, align 4, !dbg !373
  br label %29, !dbg !373

18:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %5, metadata !374, metadata !DIExpression()), !dbg !375
  %19 = load double, double* %2, align 8, !dbg !376
  %20 = call %struct._xmlXPathObject* @xmlXPathNewFloat(double noundef %19), !dbg !377
  store %struct._xmlXPathObject* %20, %struct._xmlXPathObject** %5, align 8, !dbg !375
  %21 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %5, align 8, !dbg !378
  %22 = icmp ne %struct._xmlXPathObject* %21, null, !dbg !380
  br i1 %22, label %23, label %26, !dbg !381

23:                                               ; preds = %18
  %24 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.4, i64 0, i64 0), i32 noundef 24, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !382
  %25 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %5, align 8, !dbg !384
  call void @xmlXPathFreeObject(%struct._xmlXPathObject* noundef %25), !dbg !385
  br label %26, !dbg !386

26:                                               ; preds = %23, %18
  %27 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %4, align 8, !dbg !387
  call void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef %27), !dbg !388
  %28 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !389
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %28), !dbg !390
  call void @xmlCleanupParser(), !dbg !391
  store i32 0, i32* %1, align 4, !dbg !392
  br label %29, !dbg !392

29:                                               ; preds = %26, %16, %10
  %30 = load i32, i32* %1, align 4, !dbg !393
  ret i32 %30, !dbg !393
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @xmlXPathInit() #2

declare %struct._xmlDoc* @xmlReadMemory(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) #2

declare %struct._xmlXPathContext* @xmlXPathNewContext(%struct._xmlDoc* noundef) #2

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare %struct._xmlXPathObject* @xmlXPathNewFloat(double noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlXPathFreeObject(%struct._xmlXPathObject* noundef) #2

declare void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef) #2

declare void @xmlCleanupParser() #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !60, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/352_xpath.c_4581_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "3f2e5ef247208aa6ee492f91d04c8bf8")
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
!75 = !DILocalVariable(name: "val", scope: !70, file: !1, line: 8, type: !76)
!76 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!77 = !DILocation(line: 8, column: 12, scope: !70)
!78 = !DILocation(line: 9, column: 24, scope: !70)
!79 = !DILocation(line: 9, column: 5, scope: !70)
!80 = !DILocation(line: 11, column: 5, scope: !70)
!81 = !DILocalVariable(name: "doc", scope: !70, file: !1, line: 13, type: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !86)
!86 = !{!87, !88, !90, !93, !149, !150, !151, !152, !153, !154, !155, !156, !176, !177, !178, !179, !180, !181, !182, !183, !184, !188, !189, !190}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !85, file: !4, line: 560, baseType: !61, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !85, file: !4, line: 561, baseType: !89, size: 32, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !85, file: !4, line: 562, baseType: !91, size: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !85, file: !4, line: 563, baseType: !94, size: 64, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !96)
!96 = !{!97, !98, !99, !105, !106, !107, !108, !109, !110, !112, !125, !127, !144, !145, !146, !148}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !95, file: !4, line: 493, baseType: !61, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !95, file: !4, line: 494, baseType: !89, size: 32, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !95, file: !4, line: 495, baseType: !100, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !103, line: 28, baseType: !104)
!103 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!104 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !95, file: !4, line: 496, baseType: !94, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !95, file: !4, line: 497, baseType: !94, size: 64, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !95, file: !4, line: 498, baseType: !94, size: 64, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !95, file: !4, line: 499, baseType: !94, size: 64, offset: 384)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !95, file: !4, line: 500, baseType: !94, size: 64, offset: 448)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !95, file: !4, line: 501, baseType: !111, size: 64, offset: 512)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !95, file: !4, line: 504, baseType: !113, size: 64, offset: 576)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !116)
!116 = !{!117, !119, !121, !122, !123, !124}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !115, file: !4, line: 389, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !115, file: !4, line: 390, baseType: !120, size: 32, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !89)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !115, file: !4, line: 391, baseType: !100, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !115, file: !4, line: 392, baseType: !100, size: 64, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !115, file: !4, line: 393, baseType: !61, size: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !115, file: !4, line: 394, baseType: !111, size: 64, offset: 320)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !95, file: !4, line: 505, baseType: !126, size: 64, offset: 640)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !95, file: !4, line: 506, baseType: !128, size: 64, offset: 704)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !130)
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !143}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !129, file: !4, line: 434, baseType: !61, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !129, file: !4, line: 435, baseType: !89, size: 32, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !129, file: !4, line: 436, baseType: !100, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !129, file: !4, line: 437, baseType: !94, size: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !129, file: !4, line: 438, baseType: !94, size: 64, offset: 256)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !129, file: !4, line: 439, baseType: !94, size: 64, offset: 320)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !129, file: !4, line: 440, baseType: !128, size: 64, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !129, file: !4, line: 441, baseType: !128, size: 64, offset: 448)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !129, file: !4, line: 442, baseType: !111, size: 64, offset: 512)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !129, file: !4, line: 443, baseType: !113, size: 64, offset: 576)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !129, file: !4, line: 444, baseType: !142, size: 32, offset: 640)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !129, file: !4, line: 445, baseType: !61, size: 64, offset: 704)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !95, file: !4, line: 507, baseType: !113, size: 64, offset: 768)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !95, file: !4, line: 508, baseType: !61, size: 64, offset: 832)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !95, file: !4, line: 509, baseType: !147, size: 16, offset: 896)
!147 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !95, file: !4, line: 510, baseType: !147, size: 16, offset: 912)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !85, file: !4, line: 564, baseType: !94, size: 64, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !85, file: !4, line: 565, baseType: !94, size: 64, offset: 320)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !85, file: !4, line: 566, baseType: !94, size: 64, offset: 384)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !85, file: !4, line: 567, baseType: !94, size: 64, offset: 448)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !85, file: !4, line: 568, baseType: !111, size: 64, offset: 512)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !85, file: !4, line: 571, baseType: !73, size: 32, offset: 576)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !85, file: !4, line: 572, baseType: !73, size: 32, offset: 608)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !85, file: !4, line: 578, baseType: !157, size: 64, offset: 640)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !159)
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !158, file: !4, line: 406, baseType: !61, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !158, file: !4, line: 407, baseType: !89, size: 32, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !158, file: !4, line: 408, baseType: !100, size: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !158, file: !4, line: 409, baseType: !94, size: 64, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !158, file: !4, line: 410, baseType: !94, size: 64, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !158, file: !4, line: 411, baseType: !111, size: 64, offset: 320)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !158, file: !4, line: 412, baseType: !94, size: 64, offset: 384)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !158, file: !4, line: 413, baseType: !94, size: 64, offset: 448)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !158, file: !4, line: 414, baseType: !111, size: 64, offset: 512)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !158, file: !4, line: 417, baseType: !61, size: 64, offset: 576)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !158, file: !4, line: 418, baseType: !61, size: 64, offset: 640)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !158, file: !4, line: 419, baseType: !61, size: 64, offset: 704)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !158, file: !4, line: 420, baseType: !61, size: 64, offset: 768)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !158, file: !4, line: 421, baseType: !100, size: 64, offset: 832)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !158, file: !4, line: 422, baseType: !100, size: 64, offset: 896)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !158, file: !4, line: 423, baseType: !61, size: 64, offset: 960)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !85, file: !4, line: 579, baseType: !157, size: 64, offset: 704)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !85, file: !4, line: 580, baseType: !118, size: 64, offset: 768)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !85, file: !4, line: 581, baseType: !100, size: 64, offset: 832)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !85, file: !4, line: 582, baseType: !100, size: 64, offset: 896)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !85, file: !4, line: 583, baseType: !61, size: 64, offset: 960)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !85, file: !4, line: 584, baseType: !61, size: 64, offset: 1024)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !85, file: !4, line: 585, baseType: !100, size: 64, offset: 1088)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !85, file: !4, line: 586, baseType: !73, size: 32, offset: 1152)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !85, file: !4, line: 588, baseType: !185, size: 64, offset: 1216)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !187, line: 24, flags: DIFlagFwdDecl)
!187 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!188 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !85, file: !4, line: 589, baseType: !61, size: 64, offset: 1280)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !85, file: !4, line: 590, baseType: !73, size: 32, offset: 1344)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !85, file: !4, line: 592, baseType: !73, size: 32, offset: 1376)
!191 = !DILocation(line: 13, column: 15, scope: !70)
!192 = !DILocation(line: 13, column: 21, scope: !70)
!193 = !DILocation(line: 14, column: 9, scope: !194)
!194 = distinct !DILexicalBlock(scope: !70, file: !1, line: 14, column: 9)
!195 = !DILocation(line: 14, column: 13, scope: !194)
!196 = !DILocation(line: 14, column: 9, scope: !70)
!197 = !DILocation(line: 14, column: 22, scope: !194)
!198 = !DILocalVariable(name: "ctx", scope: !70, file: !1, line: 16, type: !199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathContextPtr", file: !41, line: 40, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathContext", file: !41, line: 39, baseType: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathContext", file: !41, line: 290, size: 3008, elements: !203)
!203 = !{!204, !205, !209, !210, !211, !217, !218, !219, !255, !256, !257, !258, !259, !260, !294, !297, !298, !299, !300, !301, !302, !303, !304, !305, !310, !311, !312, !313, !314, !323, !324, !325, !326, !327, !351, !352, !353, !357, !358, !359, !361, !362}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !202, file: !41, line: 291, baseType: !82, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !202, file: !41, line: 292, baseType: !206, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !95)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "nb_variables_unused", scope: !202, file: !41, line: 294, baseType: !73, size: 32, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "max_variables_unused", scope: !202, file: !41, line: 295, baseType: !73, size: 32, offset: 160)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "varHash", scope: !202, file: !41, line: 296, baseType: !212, size: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !213, line: 22, baseType: !214)
!213 = !DIFile(filename: "/usr/include/libxml2/libxml/hash.h", directory: "", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !213, line: 21, baseType: !216)
!216 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !213, line: 21, flags: DIFlagFwdDecl)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "nb_types", scope: !202, file: !41, line: 298, baseType: !73, size: 32, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "max_types", scope: !202, file: !41, line: 299, baseType: !73, size: 32, offset: 288)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !202, file: !41, line: 300, baseType: !220, size: 64, offset: 320)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathTypePtr", file: !41, line: 145, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathType", file: !41, line: 144, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathType", file: !41, line: 146, size: 128, elements: !224)
!224 = !{!225, !226}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !223, file: !41, line: 147, baseType: !100, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !223, file: !41, line: 148, baseType: !227, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathConvertFunc", file: !41, line: 138, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!73, !231, !73}
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectPtr", file: !41, line: 115, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObject", file: !41, line: 114, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathObject", file: !41, line: 116, size: 576, elements: !235)
!235 = !{!236, !238, !248, !249, !250, !251, !252, !253, !254}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !234, file: !41, line: 117, baseType: !237, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectType", file: !41, line: 112, baseType: !40)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "nodesetval", scope: !234, file: !41, line: 118, baseType: !239, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSetPtr", file: !41, line: 82, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSet", file: !41, line: 81, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNodeSet", file: !41, line: 83, size: 128, elements: !243)
!243 = !{!244, !245, !246}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !242, file: !41, line: 84, baseType: !73, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !242, file: !41, line: 85, baseType: !73, size: 32, offset: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !242, file: !41, line: 86, baseType: !247, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "boolval", scope: !234, file: !41, line: 119, baseType: !73, size: 32, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "floatval", scope: !234, file: !41, line: 120, baseType: !76, size: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "stringval", scope: !234, file: !41, line: 121, baseType: !126, size: 64, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !234, file: !41, line: 122, baseType: !61, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !234, file: !41, line: 123, baseType: !73, size: 32, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "user2", scope: !234, file: !41, line: 124, baseType: !61, size: 64, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "index2", scope: !234, file: !41, line: 125, baseType: !73, size: 32, offset: 512)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "nb_funcs_unused", scope: !202, file: !41, line: 302, baseType: !73, size: 32, offset: 384)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "max_funcs_unused", scope: !202, file: !41, line: 303, baseType: !73, size: 32, offset: 416)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "funcHash", scope: !202, file: !41, line: 304, baseType: !212, size: 64, offset: 448)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "nb_axis", scope: !202, file: !41, line: 306, baseType: !73, size: 32, offset: 512)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "max_axis", scope: !202, file: !41, line: 307, baseType: !73, size: 32, offset: 544)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "axis", scope: !202, file: !41, line: 308, baseType: !261, size: 64, offset: 576)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxisPtr", file: !41, line: 204, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxis", file: !41, line: 203, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathAxis", file: !41, line: 205, size: 128, elements: !265)
!265 = !{!266, !267}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !264, file: !41, line: 206, baseType: !100, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !264, file: !41, line: 207, baseType: !268, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxisFunc", file: !41, line: 196, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!231, !272, !231}
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathParserContextPtr", file: !41, line: 42, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathParserContext", file: !41, line: 41, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathParserContext", file: !41, line: 377, size: 704, elements: !276)
!276 = !{!277, !278, !279, !280, !281, !282, !283, !284, !286, !291, !292, !293}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !275, file: !41, line: 378, baseType: !100, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !275, file: !41, line: 379, baseType: !100, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !275, file: !41, line: 381, baseType: !73, size: 32, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !275, file: !41, line: 383, baseType: !199, size: 64, offset: 192)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !275, file: !41, line: 384, baseType: !231, size: 64, offset: 256)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "valueNr", scope: !275, file: !41, line: 385, baseType: !73, size: 32, offset: 320)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "valueMax", scope: !275, file: !41, line: 386, baseType: !73, size: 32, offset: 352)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "valueTab", scope: !275, file: !41, line: 387, baseType: !285, size: 64, offset: 384)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !275, file: !41, line: 389, baseType: !287, size: 64, offset: 448)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathCompExprPtr", file: !41, line: 369, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathCompExpr", file: !41, line: 368, baseType: !290)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathCompExpr", file: !41, line: 368, flags: DIFlagFwdDecl)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "xptr", scope: !275, file: !41, line: 390, baseType: !73, size: 32, offset: 512)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ancestor", scope: !275, file: !41, line: 391, baseType: !206, size: 64, offset: 576)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "valueFrame", scope: !275, file: !41, line: 393, baseType: !73, size: 32, offset: 640)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !202, file: !41, line: 311, baseType: !295, size: 64, offset: 640)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !4, line: 387, baseType: !113)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "nsNr", scope: !202, file: !41, line: 312, baseType: !73, size: 32, offset: 704)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !202, file: !41, line: 313, baseType: !61, size: 64, offset: 768)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "contextSize", scope: !202, file: !41, line: 316, baseType: !73, size: 32, offset: 832)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "proximityPosition", scope: !202, file: !41, line: 317, baseType: !73, size: 32, offset: 864)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "xptr", scope: !202, file: !41, line: 320, baseType: !73, size: 32, offset: 896)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "here", scope: !202, file: !41, line: 321, baseType: !206, size: 64, offset: 960)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !202, file: !41, line: 322, baseType: !206, size: 64, offset: 1024)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "nsHash", scope: !202, file: !41, line: 325, baseType: !212, size: 64, offset: 1088)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "varLookupFunc", scope: !202, file: !41, line: 326, baseType: !306, size: 64, offset: 1152)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathVariableLookupFunc", file: !41, line: 237, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!231, !61, !100, !100}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "varLookupData", scope: !202, file: !41, line: 327, baseType: !61, size: 64, offset: 1216)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !202, file: !41, line: 330, baseType: !61, size: 64, offset: 1280)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !202, file: !41, line: 333, baseType: !100, size: 64, offset: 1344)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "functionURI", scope: !202, file: !41, line: 334, baseType: !100, size: 64, offset: 1408)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "funcLookupFunc", scope: !202, file: !41, line: 337, baseType: !315, size: 64, offset: 1472)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathFuncLookupFunc", file: !41, line: 252, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!319, !61, !100, !100}
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathFunction", file: !41, line: 220, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !272, !73}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "funcLookupData", scope: !202, file: !41, line: 338, baseType: !61, size: 64, offset: 1536)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tmpNsList", scope: !202, file: !41, line: 341, baseType: !295, size: 64, offset: 1600)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tmpNsNr", scope: !202, file: !41, line: 342, baseType: !73, size: 32, offset: 1664)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !202, file: !41, line: 345, baseType: !61, size: 64, offset: 1728)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !202, file: !41, line: 346, baseType: !328, size: 64, offset: 1792)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStructuredErrorFunc", file: !54, line: 856, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{null, !61, !332}
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorPtr", file: !54, line: 77, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlError", file: !54, line: 76, baseType: !335)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlError", file: !54, line: 78, size: 704, elements: !336)
!336 = !{!337, !338, !339, !340, !342, !343, !344, !345, !346, !347, !348, !349, !350}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !335, file: !54, line: 79, baseType: !73, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !335, file: !54, line: 80, baseType: !73, size: 32, offset: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !335, file: !54, line: 81, baseType: !91, size: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !335, file: !54, line: 82, baseType: !341, size: 32, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorLevel", file: !54, line: 29, baseType: !53)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !335, file: !54, line: 83, baseType: !91, size: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !335, file: !54, line: 84, baseType: !73, size: 32, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "str1", scope: !335, file: !54, line: 85, baseType: !91, size: 64, offset: 320)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "str2", scope: !335, file: !54, line: 86, baseType: !91, size: 64, offset: 384)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "str3", scope: !335, file: !54, line: 87, baseType: !91, size: 64, offset: 448)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "int1", scope: !335, file: !54, line: 88, baseType: !73, size: 32, offset: 512)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "int2", scope: !335, file: !54, line: 89, baseType: !73, size: 32, offset: 544)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ctxt", scope: !335, file: !54, line: 90, baseType: !61, size: 64, offset: 576)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !335, file: !54, line: 91, baseType: !61, size: 64, offset: 640)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "lastError", scope: !202, file: !41, line: 347, baseType: !334, size: 704, offset: 1856)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "debugNode", scope: !202, file: !41, line: 348, baseType: !206, size: 64, offset: 2560)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !202, file: !41, line: 351, baseType: !354, size: 64, offset: 2624)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !187, line: 25, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !187, line: 24, baseType: !186)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !202, file: !41, line: 353, baseType: !73, size: 32, offset: 2688)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !202, file: !41, line: 356, baseType: !61, size: 64, offset: 2752)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "opLimit", scope: !202, file: !41, line: 359, baseType: !360, size: 64, offset: 2816)
!360 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "opCount", scope: !202, file: !41, line: 360, baseType: !360, size: 64, offset: 2880)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !202, file: !41, line: 361, baseType: !73, size: 32, offset: 2944)
!363 = !DILocation(line: 16, column: 24, scope: !70)
!364 = !DILocation(line: 16, column: 49, scope: !70)
!365 = !DILocation(line: 16, column: 30, scope: !70)
!366 = !DILocation(line: 17, column: 9, scope: !367)
!367 = distinct !DILexicalBlock(scope: !70, file: !1, line: 17, column: 9)
!368 = !DILocation(line: 17, column: 13, scope: !367)
!369 = !DILocation(line: 17, column: 9, scope: !70)
!370 = !DILocation(line: 18, column: 20, scope: !371)
!371 = distinct !DILexicalBlock(scope: !367, file: !1, line: 17, column: 22)
!372 = !DILocation(line: 18, column: 9, scope: !371)
!373 = !DILocation(line: 19, column: 9, scope: !371)
!374 = !DILocalVariable(name: "obj", scope: !70, file: !1, line: 22, type: !231)
!375 = !DILocation(line: 22, column: 23, scope: !70)
!376 = !DILocation(line: 22, column: 46, scope: !70)
!377 = !DILocation(line: 22, column: 29, scope: !70)
!378 = !DILocation(line: 23, column: 9, scope: !379)
!379 = distinct !DILexicalBlock(scope: !70, file: !1, line: 23, column: 9)
!380 = !DILocation(line: 23, column: 13, scope: !379)
!381 = !DILocation(line: 23, column: 9, scope: !70)
!382 = !DILocation(line: 24, column: 9, scope: !383)
!383 = distinct !DILexicalBlock(scope: !379, file: !1, line: 23, column: 22)
!384 = !DILocation(line: 25, column: 28, scope: !383)
!385 = !DILocation(line: 25, column: 9, scope: !383)
!386 = !DILocation(line: 26, column: 5, scope: !383)
!387 = !DILocation(line: 28, column: 25, scope: !70)
!388 = !DILocation(line: 28, column: 5, scope: !70)
!389 = !DILocation(line: 29, column: 16, scope: !70)
!390 = !DILocation(line: 29, column: 5, scope: !70)
!391 = !DILocation(line: 30, column: 5, scope: !70)
!392 = !DILocation(line: 31, column: 5, scope: !70)
!393 = !DILocation(line: 32, column: 1, scope: !70)

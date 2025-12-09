; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/367_xpath.c_1021_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/367_xpath.c_1021_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
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
@.str.2 = private unnamed_addr constant [11 x i8] c"xpath_expr\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/367_xpath.c_1021_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !75 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca %struct._xmlDoc*, align 8
  %4 = alloca %struct._xmlXPathContext*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca %struct._xmlXPathCompExpr*, align 8
  store i32 0, i32* %1, align 4
  call void @xmlInitParser(), !dbg !80
  call void @llvm.dbg.declare(metadata [1024 x i8]* %2, metadata !81, metadata !DIExpression()), !dbg !86
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !87
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 1024, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !88
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 1023, !dbg !89
  store i8 0, i8* %8, align 1, !dbg !90
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %3, metadata !91, metadata !DIExpression()), !dbg !195
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !196
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !197
  %11 = call i64 @strlen(i8* noundef %10) #5, !dbg !198
  %12 = trunc i64 %11 to i32, !dbg !198
  %13 = call %struct._xmlDoc* @xmlReadMemory(i8* noundef %9, i32 noundef %12, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* noundef null, i32 noundef 0), !dbg !199
  store %struct._xmlDoc* %13, %struct._xmlDoc** %3, align 8, !dbg !195
  %14 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !200
  %15 = icmp eq %struct._xmlDoc* %14, null, !dbg !202
  br i1 %15, label %16, label %17, !dbg !203

16:                                               ; preds = %0
  call void @xmlCleanupParser(), !dbg !204
  store i32 0, i32* %1, align 4, !dbg !206
  br label %39, !dbg !206

17:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata %struct._xmlXPathContext** %4, metadata !207, metadata !DIExpression()), !dbg !373
  %18 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !374
  %19 = call %struct._xmlXPathContext* @xmlXPathNewContext(%struct._xmlDoc* noundef %18), !dbg !375
  store %struct._xmlXPathContext* %19, %struct._xmlXPathContext** %4, align 8, !dbg !373
  %20 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %4, align 8, !dbg !376
  %21 = icmp eq %struct._xmlXPathContext* %20, null, !dbg !378
  br i1 %21, label %22, label %24, !dbg !379

22:                                               ; preds = %17
  %23 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !380
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %23), !dbg !382
  call void @xmlCleanupParser(), !dbg !383
  store i32 0, i32* %1, align 4, !dbg !384
  br label %39, !dbg !384

24:                                               ; preds = %17
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !385, metadata !DIExpression()), !dbg !389
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !390
  call void @klee_make_symbolic(i8* noundef %25, i64 noundef 256, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)), !dbg !391
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 255, !dbg !392
  store i8 0, i8* %26, align 1, !dbg !393
  call void @llvm.dbg.declare(metadata %struct._xmlXPathCompExpr** %6, metadata !394, metadata !DIExpression()), !dbg !395
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !396
  %28 = call %struct._xmlXPathCompExpr* @xmlXPathCompile(i8* noundef %27), !dbg !397
  store %struct._xmlXPathCompExpr* %28, %struct._xmlXPathCompExpr** %6, align 8, !dbg !395
  %29 = load %struct._xmlXPathCompExpr*, %struct._xmlXPathCompExpr** %6, align 8, !dbg !398
  %30 = icmp eq %struct._xmlXPathCompExpr* %29, null, !dbg !400
  br i1 %30, label %31, label %34, !dbg !401

31:                                               ; preds = %24
  %32 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %4, align 8, !dbg !402
  call void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef %32), !dbg !404
  %33 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !405
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %33), !dbg !406
  call void @xmlCleanupParser(), !dbg !407
  store i32 0, i32* %1, align 4, !dbg !408
  br label %39, !dbg !408

34:                                               ; preds = %24
  %35 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.4, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !409
  %36 = load %struct._xmlXPathCompExpr*, %struct._xmlXPathCompExpr** %6, align 8, !dbg !410
  call void @xmlXPathFreeCompExpr(%struct._xmlXPathCompExpr* noundef %36), !dbg !411
  %37 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %4, align 8, !dbg !412
  call void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef %37), !dbg !413
  %38 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !414
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %38), !dbg !415
  call void @xmlCleanupParser(), !dbg !416
  store i32 0, i32* %1, align 4, !dbg !417
  br label %39, !dbg !417

39:                                               ; preds = %34, %31, %22, %16
  %40 = load i32, i32* %1, align 4, !dbg !418
  ret i32 %40, !dbg !418
}

declare void @xmlInitParser() #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #1

declare %struct._xmlDoc* @xmlReadMemory(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

declare void @xmlCleanupParser() #1

declare %struct._xmlXPathContext* @xmlXPathNewContext(%struct._xmlDoc* noundef) #1

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #1

declare %struct._xmlXPathCompExpr* @xmlXPathCompile(i8* noundef) #1

declare void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef) #1

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

declare void @xmlXPathFreeCompExpr(%struct._xmlXPathCompExpr* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !60, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/367_xpath.c_1021_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "308fbe8a4ac3d25d22279cfa8eb9b452")
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
!60 = !{!61, !62}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !65, line: 28, baseType: !66)
!65 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!66 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!67 = !{i32 7, !"Dwarf Version", i32 5}
!68 = !{i32 2, !"Debug Info Version", i32 3}
!69 = !{i32 1, !"wchar_size", i32 4}
!70 = !{i32 7, !"PIC Level", i32 2}
!71 = !{i32 7, !"PIE Level", i32 2}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"Ubuntu clang version 14.0.6"}
!75 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !76, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !79)
!76 = !DISubroutineType(types: !77)
!77 = !{!78}
!78 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!79 = !{}
!80 = !DILocation(line: 8, column: 5, scope: !75)
!81 = !DILocalVariable(name: "xml_data", scope: !75, file: !1, line: 11, type: !82)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 8192, elements: !84)
!83 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!84 = !{!85}
!85 = !DISubrange(count: 1024)
!86 = !DILocation(line: 11, column: 10, scope: !75)
!87 = !DILocation(line: 12, column: 24, scope: !75)
!88 = !DILocation(line: 12, column: 5, scope: !75)
!89 = !DILocation(line: 14, column: 5, scope: !75)
!90 = !DILocation(line: 14, column: 34, scope: !75)
!91 = !DILocalVariable(name: "doc", scope: !75, file: !1, line: 16, type: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !96)
!96 = !{!97, !98, !100, !102, !153, !154, !155, !156, !157, !158, !159, !160, !180, !181, !182, !183, !184, !185, !186, !187, !188, !192, !193, !194}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !95, file: !4, line: 560, baseType: !61, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !95, file: !4, line: 561, baseType: !99, size: 32, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !95, file: !4, line: 562, baseType: !101, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !95, file: !4, line: 563, baseType: !103, size: 64, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !105)
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113, !114, !116, !129, !131, !148, !149, !150, !152}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !104, file: !4, line: 493, baseType: !61, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !104, file: !4, line: 494, baseType: !99, size: 32, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !104, file: !4, line: 495, baseType: !62, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !104, file: !4, line: 496, baseType: !103, size: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !104, file: !4, line: 497, baseType: !103, size: 64, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !104, file: !4, line: 498, baseType: !103, size: 64, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !104, file: !4, line: 499, baseType: !103, size: 64, offset: 384)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !104, file: !4, line: 500, baseType: !103, size: 64, offset: 448)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !104, file: !4, line: 501, baseType: !115, size: 64, offset: 512)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !104, file: !4, line: 504, baseType: !117, size: 64, offset: 576)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !120)
!120 = !{!121, !123, !125, !126, !127, !128}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !119, file: !4, line: 389, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !119, file: !4, line: 390, baseType: !124, size: 32, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !99)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !119, file: !4, line: 391, baseType: !62, size: 64, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !119, file: !4, line: 392, baseType: !62, size: 64, offset: 192)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !119, file: !4, line: 393, baseType: !61, size: 64, offset: 256)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !119, file: !4, line: 394, baseType: !115, size: 64, offset: 320)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !104, file: !4, line: 505, baseType: !130, size: 64, offset: 640)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !104, file: !4, line: 506, baseType: !132, size: 64, offset: 704)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !134)
!134 = !{!135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !147}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !133, file: !4, line: 434, baseType: !61, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !133, file: !4, line: 435, baseType: !99, size: 32, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !133, file: !4, line: 436, baseType: !62, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !133, file: !4, line: 437, baseType: !103, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !133, file: !4, line: 438, baseType: !103, size: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !133, file: !4, line: 439, baseType: !103, size: 64, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !133, file: !4, line: 440, baseType: !132, size: 64, offset: 384)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !133, file: !4, line: 441, baseType: !132, size: 64, offset: 448)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !133, file: !4, line: 442, baseType: !115, size: 64, offset: 512)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !133, file: !4, line: 443, baseType: !117, size: 64, offset: 576)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !133, file: !4, line: 444, baseType: !146, size: 32, offset: 640)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !133, file: !4, line: 445, baseType: !61, size: 64, offset: 704)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !104, file: !4, line: 507, baseType: !117, size: 64, offset: 768)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !104, file: !4, line: 508, baseType: !61, size: 64, offset: 832)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !104, file: !4, line: 509, baseType: !151, size: 16, offset: 896)
!151 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !104, file: !4, line: 510, baseType: !151, size: 16, offset: 912)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !95, file: !4, line: 564, baseType: !103, size: 64, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !95, file: !4, line: 565, baseType: !103, size: 64, offset: 320)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !95, file: !4, line: 566, baseType: !103, size: 64, offset: 384)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !95, file: !4, line: 567, baseType: !103, size: 64, offset: 448)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !95, file: !4, line: 568, baseType: !115, size: 64, offset: 512)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !95, file: !4, line: 571, baseType: !78, size: 32, offset: 576)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !95, file: !4, line: 572, baseType: !78, size: 32, offset: 608)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !95, file: !4, line: 578, baseType: !161, size: 64, offset: 640)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !163)
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !162, file: !4, line: 406, baseType: !61, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !162, file: !4, line: 407, baseType: !99, size: 32, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !162, file: !4, line: 408, baseType: !62, size: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !162, file: !4, line: 409, baseType: !103, size: 64, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !162, file: !4, line: 410, baseType: !103, size: 64, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !162, file: !4, line: 411, baseType: !115, size: 64, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !162, file: !4, line: 412, baseType: !103, size: 64, offset: 384)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !162, file: !4, line: 413, baseType: !103, size: 64, offset: 448)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !162, file: !4, line: 414, baseType: !115, size: 64, offset: 512)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !162, file: !4, line: 417, baseType: !61, size: 64, offset: 576)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !162, file: !4, line: 418, baseType: !61, size: 64, offset: 640)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !162, file: !4, line: 419, baseType: !61, size: 64, offset: 704)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !162, file: !4, line: 420, baseType: !61, size: 64, offset: 768)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !162, file: !4, line: 421, baseType: !62, size: 64, offset: 832)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !162, file: !4, line: 422, baseType: !62, size: 64, offset: 896)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !162, file: !4, line: 423, baseType: !61, size: 64, offset: 960)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !95, file: !4, line: 579, baseType: !161, size: 64, offset: 704)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !95, file: !4, line: 580, baseType: !122, size: 64, offset: 768)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !95, file: !4, line: 581, baseType: !62, size: 64, offset: 832)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !95, file: !4, line: 582, baseType: !62, size: 64, offset: 896)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !95, file: !4, line: 583, baseType: !61, size: 64, offset: 960)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !95, file: !4, line: 584, baseType: !61, size: 64, offset: 1024)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !95, file: !4, line: 585, baseType: !62, size: 64, offset: 1088)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !95, file: !4, line: 586, baseType: !78, size: 32, offset: 1152)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !95, file: !4, line: 588, baseType: !189, size: 64, offset: 1216)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !191, line: 24, flags: DIFlagFwdDecl)
!191 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!192 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !95, file: !4, line: 589, baseType: !61, size: 64, offset: 1280)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !95, file: !4, line: 590, baseType: !78, size: 32, offset: 1344)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !95, file: !4, line: 592, baseType: !78, size: 32, offset: 1376)
!195 = !DILocation(line: 16, column: 15, scope: !75)
!196 = !DILocation(line: 16, column: 35, scope: !75)
!197 = !DILocation(line: 16, column: 52, scope: !75)
!198 = !DILocation(line: 16, column: 45, scope: !75)
!199 = !DILocation(line: 16, column: 21, scope: !75)
!200 = !DILocation(line: 17, column: 9, scope: !201)
!201 = distinct !DILexicalBlock(scope: !75, file: !1, line: 17, column: 9)
!202 = !DILocation(line: 17, column: 13, scope: !201)
!203 = !DILocation(line: 17, column: 9, scope: !75)
!204 = !DILocation(line: 18, column: 9, scope: !205)
!205 = distinct !DILexicalBlock(scope: !201, file: !1, line: 17, column: 22)
!206 = !DILocation(line: 19, column: 9, scope: !205)
!207 = !DILocalVariable(name: "xpathCtx", scope: !75, file: !1, line: 22, type: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathContextPtr", file: !41, line: 40, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathContext", file: !41, line: 39, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathContext", file: !41, line: 290, size: 3008, elements: !212)
!212 = !{!213, !214, !218, !219, !220, !226, !227, !228, !265, !266, !267, !268, !269, !270, !304, !307, !308, !309, !310, !311, !312, !313, !314, !315, !320, !321, !322, !323, !324, !333, !334, !335, !336, !337, !361, !362, !363, !367, !368, !369, !371, !372}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !211, file: !41, line: 291, baseType: !92, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !211, file: !41, line: 292, baseType: !215, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !104)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "nb_variables_unused", scope: !211, file: !41, line: 294, baseType: !78, size: 32, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "max_variables_unused", scope: !211, file: !41, line: 295, baseType: !78, size: 32, offset: 160)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "varHash", scope: !211, file: !41, line: 296, baseType: !221, size: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !222, line: 22, baseType: !223)
!222 = !DIFile(filename: "/usr/include/libxml2/libxml/hash.h", directory: "", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !222, line: 21, baseType: !225)
!225 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !222, line: 21, flags: DIFlagFwdDecl)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "nb_types", scope: !211, file: !41, line: 298, baseType: !78, size: 32, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "max_types", scope: !211, file: !41, line: 299, baseType: !78, size: 32, offset: 288)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !211, file: !41, line: 300, baseType: !229, size: 64, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathTypePtr", file: !41, line: 145, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathType", file: !41, line: 144, baseType: !232)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathType", file: !41, line: 146, size: 128, elements: !233)
!233 = !{!234, !235}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !232, file: !41, line: 147, baseType: !62, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !232, file: !41, line: 148, baseType: !236, size: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathConvertFunc", file: !41, line: 138, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!78, !240, !78}
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectPtr", file: !41, line: 115, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObject", file: !41, line: 114, baseType: !243)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathObject", file: !41, line: 116, size: 576, elements: !244)
!244 = !{!245, !247, !257, !258, !260, !261, !262, !263, !264}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !243, file: !41, line: 117, baseType: !246, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectType", file: !41, line: 112, baseType: !40)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "nodesetval", scope: !243, file: !41, line: 118, baseType: !248, size: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSetPtr", file: !41, line: 82, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSet", file: !41, line: 81, baseType: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNodeSet", file: !41, line: 83, size: 128, elements: !252)
!252 = !{!253, !254, !255}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !251, file: !41, line: 84, baseType: !78, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !251, file: !41, line: 85, baseType: !78, size: 32, offset: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !251, file: !41, line: 86, baseType: !256, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "boolval", scope: !243, file: !41, line: 119, baseType: !78, size: 32, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "floatval", scope: !243, file: !41, line: 120, baseType: !259, size: 64, offset: 192)
!259 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "stringval", scope: !243, file: !41, line: 121, baseType: !130, size: 64, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !243, file: !41, line: 122, baseType: !61, size: 64, offset: 320)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !243, file: !41, line: 123, baseType: !78, size: 32, offset: 384)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "user2", scope: !243, file: !41, line: 124, baseType: !61, size: 64, offset: 448)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "index2", scope: !243, file: !41, line: 125, baseType: !78, size: 32, offset: 512)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "nb_funcs_unused", scope: !211, file: !41, line: 302, baseType: !78, size: 32, offset: 384)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "max_funcs_unused", scope: !211, file: !41, line: 303, baseType: !78, size: 32, offset: 416)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "funcHash", scope: !211, file: !41, line: 304, baseType: !221, size: 64, offset: 448)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "nb_axis", scope: !211, file: !41, line: 306, baseType: !78, size: 32, offset: 512)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "max_axis", scope: !211, file: !41, line: 307, baseType: !78, size: 32, offset: 544)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "axis", scope: !211, file: !41, line: 308, baseType: !271, size: 64, offset: 576)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxisPtr", file: !41, line: 204, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxis", file: !41, line: 203, baseType: !274)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathAxis", file: !41, line: 205, size: 128, elements: !275)
!275 = !{!276, !277}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !274, file: !41, line: 206, baseType: !62, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !274, file: !41, line: 207, baseType: !278, size: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxisFunc", file: !41, line: 196, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!240, !282, !240}
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathParserContextPtr", file: !41, line: 42, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathParserContext", file: !41, line: 41, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathParserContext", file: !41, line: 377, size: 704, elements: !286)
!286 = !{!287, !288, !289, !290, !291, !292, !293, !294, !296, !301, !302, !303}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !285, file: !41, line: 378, baseType: !62, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !285, file: !41, line: 379, baseType: !62, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !285, file: !41, line: 381, baseType: !78, size: 32, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !285, file: !41, line: 383, baseType: !208, size: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !285, file: !41, line: 384, baseType: !240, size: 64, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "valueNr", scope: !285, file: !41, line: 385, baseType: !78, size: 32, offset: 320)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "valueMax", scope: !285, file: !41, line: 386, baseType: !78, size: 32, offset: 352)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "valueTab", scope: !285, file: !41, line: 387, baseType: !295, size: 64, offset: 384)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !285, file: !41, line: 389, baseType: !297, size: 64, offset: 448)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathCompExprPtr", file: !41, line: 369, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathCompExpr", file: !41, line: 368, baseType: !300)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathCompExpr", file: !41, line: 368, flags: DIFlagFwdDecl)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "xptr", scope: !285, file: !41, line: 390, baseType: !78, size: 32, offset: 512)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ancestor", scope: !285, file: !41, line: 391, baseType: !215, size: 64, offset: 576)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "valueFrame", scope: !285, file: !41, line: 393, baseType: !78, size: 32, offset: 640)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !211, file: !41, line: 311, baseType: !305, size: 64, offset: 640)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !4, line: 387, baseType: !117)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "nsNr", scope: !211, file: !41, line: 312, baseType: !78, size: 32, offset: 704)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !211, file: !41, line: 313, baseType: !61, size: 64, offset: 768)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "contextSize", scope: !211, file: !41, line: 316, baseType: !78, size: 32, offset: 832)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "proximityPosition", scope: !211, file: !41, line: 317, baseType: !78, size: 32, offset: 864)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "xptr", scope: !211, file: !41, line: 320, baseType: !78, size: 32, offset: 896)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "here", scope: !211, file: !41, line: 321, baseType: !215, size: 64, offset: 960)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !211, file: !41, line: 322, baseType: !215, size: 64, offset: 1024)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "nsHash", scope: !211, file: !41, line: 325, baseType: !221, size: 64, offset: 1088)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "varLookupFunc", scope: !211, file: !41, line: 326, baseType: !316, size: 64, offset: 1152)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathVariableLookupFunc", file: !41, line: 237, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!240, !61, !62, !62}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "varLookupData", scope: !211, file: !41, line: 327, baseType: !61, size: 64, offset: 1216)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !211, file: !41, line: 330, baseType: !61, size: 64, offset: 1280)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !211, file: !41, line: 333, baseType: !62, size: 64, offset: 1344)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "functionURI", scope: !211, file: !41, line: 334, baseType: !62, size: 64, offset: 1408)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "funcLookupFunc", scope: !211, file: !41, line: 337, baseType: !325, size: 64, offset: 1472)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathFuncLookupFunc", file: !41, line: 252, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!329, !61, !62, !62}
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathFunction", file: !41, line: 220, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !282, !78}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "funcLookupData", scope: !211, file: !41, line: 338, baseType: !61, size: 64, offset: 1536)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tmpNsList", scope: !211, file: !41, line: 341, baseType: !305, size: 64, offset: 1600)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tmpNsNr", scope: !211, file: !41, line: 342, baseType: !78, size: 32, offset: 1664)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !211, file: !41, line: 345, baseType: !61, size: 64, offset: 1728)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !211, file: !41, line: 346, baseType: !338, size: 64, offset: 1792)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStructuredErrorFunc", file: !54, line: 856, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !61, !342}
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorPtr", file: !54, line: 77, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlError", file: !54, line: 76, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlError", file: !54, line: 78, size: 704, elements: !346)
!346 = !{!347, !348, !349, !350, !352, !353, !354, !355, !356, !357, !358, !359, !360}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !345, file: !54, line: 79, baseType: !78, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !345, file: !54, line: 80, baseType: !78, size: 32, offset: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !345, file: !54, line: 81, baseType: !101, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !345, file: !54, line: 82, baseType: !351, size: 32, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorLevel", file: !54, line: 29, baseType: !53)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !345, file: !54, line: 83, baseType: !101, size: 64, offset: 192)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !345, file: !54, line: 84, baseType: !78, size: 32, offset: 256)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "str1", scope: !345, file: !54, line: 85, baseType: !101, size: 64, offset: 320)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "str2", scope: !345, file: !54, line: 86, baseType: !101, size: 64, offset: 384)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "str3", scope: !345, file: !54, line: 87, baseType: !101, size: 64, offset: 448)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "int1", scope: !345, file: !54, line: 88, baseType: !78, size: 32, offset: 512)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "int2", scope: !345, file: !54, line: 89, baseType: !78, size: 32, offset: 544)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "ctxt", scope: !345, file: !54, line: 90, baseType: !61, size: 64, offset: 576)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !345, file: !54, line: 91, baseType: !61, size: 64, offset: 640)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "lastError", scope: !211, file: !41, line: 347, baseType: !344, size: 704, offset: 1856)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "debugNode", scope: !211, file: !41, line: 348, baseType: !215, size: 64, offset: 2560)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !211, file: !41, line: 351, baseType: !364, size: 64, offset: 2624)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !191, line: 25, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !191, line: 24, baseType: !190)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !211, file: !41, line: 353, baseType: !78, size: 32, offset: 2688)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !211, file: !41, line: 356, baseType: !61, size: 64, offset: 2752)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "opLimit", scope: !211, file: !41, line: 359, baseType: !370, size: 64, offset: 2816)
!370 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "opCount", scope: !211, file: !41, line: 360, baseType: !370, size: 64, offset: 2880)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !211, file: !41, line: 361, baseType: !78, size: 32, offset: 2944)
!373 = !DILocation(line: 22, column: 24, scope: !75)
!374 = !DILocation(line: 22, column: 54, scope: !75)
!375 = !DILocation(line: 22, column: 35, scope: !75)
!376 = !DILocation(line: 23, column: 9, scope: !377)
!377 = distinct !DILexicalBlock(scope: !75, file: !1, line: 23, column: 9)
!378 = !DILocation(line: 23, column: 18, scope: !377)
!379 = !DILocation(line: 23, column: 9, scope: !75)
!380 = !DILocation(line: 24, column: 20, scope: !381)
!381 = distinct !DILexicalBlock(scope: !377, file: !1, line: 23, column: 27)
!382 = !DILocation(line: 24, column: 9, scope: !381)
!383 = !DILocation(line: 25, column: 9, scope: !381)
!384 = !DILocation(line: 26, column: 9, scope: !381)
!385 = !DILocalVariable(name: "xpath_expr", scope: !75, file: !1, line: 30, type: !386)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 2048, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 256)
!389 = !DILocation(line: 30, column: 10, scope: !75)
!390 = !DILocation(line: 31, column: 24, scope: !75)
!391 = !DILocation(line: 31, column: 5, scope: !75)
!392 = !DILocation(line: 32, column: 5, scope: !75)
!393 = !DILocation(line: 32, column: 38, scope: !75)
!394 = !DILocalVariable(name: "compExpr", scope: !75, file: !1, line: 35, type: !297)
!395 = !DILocation(line: 35, column: 25, scope: !75)
!396 = !DILocation(line: 35, column: 69, scope: !75)
!397 = !DILocation(line: 35, column: 36, scope: !75)
!398 = !DILocation(line: 36, column: 9, scope: !399)
!399 = distinct !DILexicalBlock(scope: !75, file: !1, line: 36, column: 9)
!400 = !DILocation(line: 36, column: 18, scope: !399)
!401 = !DILocation(line: 36, column: 9, scope: !75)
!402 = !DILocation(line: 37, column: 29, scope: !403)
!403 = distinct !DILexicalBlock(scope: !399, file: !1, line: 36, column: 27)
!404 = !DILocation(line: 37, column: 9, scope: !403)
!405 = !DILocation(line: 38, column: 20, scope: !403)
!406 = !DILocation(line: 38, column: 9, scope: !403)
!407 = !DILocation(line: 39, column: 9, scope: !403)
!408 = !DILocation(line: 40, column: 9, scope: !403)
!409 = !DILocation(line: 44, column: 5, scope: !75)
!410 = !DILocation(line: 46, column: 26, scope: !75)
!411 = !DILocation(line: 46, column: 5, scope: !75)
!412 = !DILocation(line: 47, column: 25, scope: !75)
!413 = !DILocation(line: 47, column: 5, scope: !75)
!414 = !DILocation(line: 48, column: 16, scope: !75)
!415 = !DILocation(line: 48, column: 5, scope: !75)
!416 = !DILocation(line: 49, column: 5, scope: !75)
!417 = !DILocation(line: 50, column: 5, scope: !75)
!418 = !DILocation(line: 51, column: 1, scope: !75)

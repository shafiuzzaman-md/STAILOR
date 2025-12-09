; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/346_xpath.c_4970_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/346_xpath.c_4970_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
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

@.str = private unnamed_addr constant [11 x i8] c"cache_size\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"<root><a/><b/></root>\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"noname.xml\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"//*\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/346_xpath.c_4970_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !74 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca %struct._xmlXPathContext*, align 8
  %4 = alloca %struct._xmlXPathObject*, align 8
  %5 = alloca %struct._xmlNode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !79, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.declare(metadata %struct._xmlXPathContext** %3, metadata !186, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %4, metadata !353, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !355, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.declare(metadata i8** %6, metadata !357, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.declare(metadata i32* %7, metadata !359, metadata !DIExpression()), !dbg !360
  %8 = bitcast i32* %7 to i8*, !dbg !361
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)), !dbg !362
  %9 = load i32, i32* %7, align 4, !dbg !363
  %10 = icmp sge i32 %9, 0, !dbg !364
  %11 = zext i1 %10 to i32, !dbg !364
  %12 = sext i32 %11 to i64, !dbg !363
  call void @klee_assume(i64 noundef %12), !dbg !365
  %13 = load i32, i32* %7, align 4, !dbg !366
  %14 = icmp slt i32 %13, 100, !dbg !367
  %15 = zext i1 %14 to i32, !dbg !367
  %16 = sext i32 %15 to i64, !dbg !366
  call void @klee_assume(i64 noundef %16), !dbg !368
  %17 = call %struct._xmlDoc* @xmlReadMemory(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef -1, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* noundef null, i32 noundef 0), !dbg !369
  store %struct._xmlDoc* %17, %struct._xmlDoc** %2, align 8, !dbg !370
  %18 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !371
  %19 = icmp eq %struct._xmlDoc* %18, null, !dbg !373
  br i1 %19, label %20, label %21, !dbg !374

20:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !375
  br label %54, !dbg !375

21:                                               ; preds = %0
  %22 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !376
  %23 = call %struct._xmlXPathContext* @xmlXPathNewContext(%struct._xmlDoc* noundef %22), !dbg !377
  store %struct._xmlXPathContext* %23, %struct._xmlXPathContext** %3, align 8, !dbg !378
  %24 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %3, align 8, !dbg !379
  %25 = icmp eq %struct._xmlXPathContext* %24, null, !dbg !381
  br i1 %25, label %26, label %28, !dbg !382

26:                                               ; preds = %21
  %27 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !383
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %27), !dbg !385
  store i32 1, i32* %1, align 4, !dbg !386
  br label %54, !dbg !386

28:                                               ; preds = %21
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8, !dbg !387
  %29 = load i8*, i8** %6, align 8, !dbg !388
  %30 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %3, align 8, !dbg !389
  %31 = call %struct._xmlXPathObject* @xmlXPathEvalExpression(i8* noundef %29, %struct._xmlXPathContext* noundef %30), !dbg !390
  store %struct._xmlXPathObject* %31, %struct._xmlXPathObject** %4, align 8, !dbg !391
  %32 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !392
  %33 = icmp eq %struct._xmlXPathObject* %32, null, !dbg !394
  br i1 %33, label %34, label %37, !dbg !395

34:                                               ; preds = %28
  %35 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %3, align 8, !dbg !396
  call void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef %35), !dbg !398
  %36 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !399
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %36), !dbg !400
  store i32 1, i32* %1, align 4, !dbg !401
  br label %54, !dbg !401

37:                                               ; preds = %28
  %38 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !402
  %39 = call %struct._xmlNode* @xmlDocGetRootElement(%struct._xmlDoc* noundef %38), !dbg !403
  store %struct._xmlNode* %39, %struct._xmlNode** %5, align 8, !dbg !404
  %40 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !405
  %41 = icmp eq %struct._xmlNode* %40, null, !dbg !407
  br i1 %41, label %42, label %46, !dbg !408

42:                                               ; preds = %37
  %43 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !409
  call void @xmlXPathFreeObject(%struct._xmlXPathObject* noundef %43), !dbg !411
  %44 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %3, align 8, !dbg !412
  call void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef %44), !dbg !413
  %45 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !414
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %45), !dbg !415
  store i32 1, i32* %1, align 4, !dbg !416
  br label %54, !dbg !416

46:                                               ; preds = %37
  %47 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !417
  %48 = load i32, i32* %7, align 4, !dbg !418
  %49 = call i32 (%struct._xmlXPathObject*, i32, ...) bitcast (i32 (...)* @xmlXPathCacheObject to i32 (%struct._xmlXPathObject*, i32, ...)*)(%struct._xmlXPathObject* noundef %47, i32 noundef %48), !dbg !419
  %50 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.5, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !420
  %51 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !421
  call void @xmlXPathFreeObject(%struct._xmlXPathObject* noundef %51), !dbg !422
  %52 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %3, align 8, !dbg !423
  call void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef %52), !dbg !424
  %53 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !425
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %53), !dbg !426
  store i32 0, i32* %1, align 4, !dbg !427
  br label %54, !dbg !427

54:                                               ; preds = %46, %42, %34, %26, %20
  %55 = load i32, i32* %1, align 4, !dbg !428
  ret i32 %55, !dbg !428
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

declare %struct._xmlDoc* @xmlReadMemory(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) #2

declare %struct._xmlXPathContext* @xmlXPathNewContext(%struct._xmlDoc* noundef) #2

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare %struct._xmlXPathObject* @xmlXPathEvalExpression(i8* noundef, %struct._xmlXPathContext* noundef) #2

declare void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef) #2

declare %struct._xmlNode* @xmlDocGetRootElement(%struct._xmlDoc* noundef) #2

declare void @xmlXPathFreeObject(%struct._xmlXPathObject* noundef) #2

declare i32 @xmlXPathCacheObject(...) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !60, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/346_xpath.c_4970_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "3d1ccc9f15fc5f322a86969a26e094a1")
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
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !64, line: 28, baseType: !65)
!64 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!65 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!66 = !{i32 7, !"Dwarf Version", i32 5}
!67 = !{i32 2, !"Debug Info Version", i32 3}
!68 = !{i32 1, !"wchar_size", i32 4}
!69 = !{i32 7, !"PIC Level", i32 2}
!70 = !{i32 7, !"PIE Level", i32 2}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"Ubuntu clang version 14.0.6"}
!74 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !75, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !78)
!75 = !DISubroutineType(types: !76)
!76 = !{!77}
!77 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!78 = !{}
!79 = !DILocalVariable(name: "doc", scope: !74, file: !1, line: 7, type: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !84)
!84 = !{!85, !86, !88, !91, !143, !144, !145, !146, !147, !148, !149, !150, !170, !171, !172, !173, !174, !175, !176, !177, !178, !182, !183, !184}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !83, file: !4, line: 560, baseType: !61, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !83, file: !4, line: 561, baseType: !87, size: 32, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !83, file: !4, line: 562, baseType: !89, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !83, file: !4, line: 563, baseType: !92, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !94)
!94 = !{!95, !96, !97, !100, !101, !102, !103, !104, !105, !107, !120, !121, !138, !139, !140, !142}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !93, file: !4, line: 493, baseType: !61, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !93, file: !4, line: 494, baseType: !87, size: 32, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !93, file: !4, line: 495, baseType: !98, size: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !93, file: !4, line: 496, baseType: !92, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !93, file: !4, line: 497, baseType: !92, size: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !93, file: !4, line: 498, baseType: !92, size: 64, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !93, file: !4, line: 499, baseType: !92, size: 64, offset: 384)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !93, file: !4, line: 500, baseType: !92, size: 64, offset: 448)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !93, file: !4, line: 501, baseType: !106, size: 64, offset: 512)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !93, file: !4, line: 504, baseType: !108, size: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !111)
!111 = !{!112, !114, !116, !117, !118, !119}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !110, file: !4, line: 389, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !110, file: !4, line: 390, baseType: !115, size: 32, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !87)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !110, file: !4, line: 391, baseType: !98, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !110, file: !4, line: 392, baseType: !98, size: 64, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !110, file: !4, line: 393, baseType: !61, size: 64, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !110, file: !4, line: 394, baseType: !106, size: 64, offset: 320)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !93, file: !4, line: 505, baseType: !62, size: 64, offset: 640)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !93, file: !4, line: 506, baseType: !122, size: 64, offset: 704)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !124)
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !137}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !123, file: !4, line: 434, baseType: !61, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !123, file: !4, line: 435, baseType: !87, size: 32, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !123, file: !4, line: 436, baseType: !98, size: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !123, file: !4, line: 437, baseType: !92, size: 64, offset: 192)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !123, file: !4, line: 438, baseType: !92, size: 64, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !123, file: !4, line: 439, baseType: !92, size: 64, offset: 320)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !123, file: !4, line: 440, baseType: !122, size: 64, offset: 384)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !123, file: !4, line: 441, baseType: !122, size: 64, offset: 448)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !123, file: !4, line: 442, baseType: !106, size: 64, offset: 512)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !123, file: !4, line: 443, baseType: !108, size: 64, offset: 576)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !123, file: !4, line: 444, baseType: !136, size: 32, offset: 640)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !123, file: !4, line: 445, baseType: !61, size: 64, offset: 704)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !93, file: !4, line: 507, baseType: !108, size: 64, offset: 768)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !93, file: !4, line: 508, baseType: !61, size: 64, offset: 832)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !93, file: !4, line: 509, baseType: !141, size: 16, offset: 896)
!141 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !93, file: !4, line: 510, baseType: !141, size: 16, offset: 912)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !83, file: !4, line: 564, baseType: !92, size: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !83, file: !4, line: 565, baseType: !92, size: 64, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !83, file: !4, line: 566, baseType: !92, size: 64, offset: 384)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !83, file: !4, line: 567, baseType: !92, size: 64, offset: 448)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !83, file: !4, line: 568, baseType: !106, size: 64, offset: 512)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !83, file: !4, line: 571, baseType: !77, size: 32, offset: 576)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !83, file: !4, line: 572, baseType: !77, size: 32, offset: 608)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !83, file: !4, line: 578, baseType: !151, size: 64, offset: 640)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !153)
!153 = !{!154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !152, file: !4, line: 406, baseType: !61, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !152, file: !4, line: 407, baseType: !87, size: 32, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !152, file: !4, line: 408, baseType: !98, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !152, file: !4, line: 409, baseType: !92, size: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !152, file: !4, line: 410, baseType: !92, size: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !152, file: !4, line: 411, baseType: !106, size: 64, offset: 320)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !152, file: !4, line: 412, baseType: !92, size: 64, offset: 384)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !152, file: !4, line: 413, baseType: !92, size: 64, offset: 448)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !152, file: !4, line: 414, baseType: !106, size: 64, offset: 512)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !152, file: !4, line: 417, baseType: !61, size: 64, offset: 576)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !152, file: !4, line: 418, baseType: !61, size: 64, offset: 640)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !152, file: !4, line: 419, baseType: !61, size: 64, offset: 704)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !152, file: !4, line: 420, baseType: !61, size: 64, offset: 768)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !152, file: !4, line: 421, baseType: !98, size: 64, offset: 832)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !152, file: !4, line: 422, baseType: !98, size: 64, offset: 896)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !152, file: !4, line: 423, baseType: !61, size: 64, offset: 960)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !83, file: !4, line: 579, baseType: !151, size: 64, offset: 704)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !83, file: !4, line: 580, baseType: !113, size: 64, offset: 768)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !83, file: !4, line: 581, baseType: !98, size: 64, offset: 832)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !83, file: !4, line: 582, baseType: !98, size: 64, offset: 896)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !83, file: !4, line: 583, baseType: !61, size: 64, offset: 960)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !83, file: !4, line: 584, baseType: !61, size: 64, offset: 1024)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !83, file: !4, line: 585, baseType: !98, size: 64, offset: 1088)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !83, file: !4, line: 586, baseType: !77, size: 32, offset: 1152)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !83, file: !4, line: 588, baseType: !179, size: 64, offset: 1216)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !181, line: 24, flags: DIFlagFwdDecl)
!181 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!182 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !83, file: !4, line: 589, baseType: !61, size: 64, offset: 1280)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !83, file: !4, line: 590, baseType: !77, size: 32, offset: 1344)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !83, file: !4, line: 592, baseType: !77, size: 32, offset: 1376)
!185 = !DILocation(line: 7, column: 15, scope: !74)
!186 = !DILocalVariable(name: "ctx", scope: !74, file: !1, line: 8, type: !187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathContextPtr", file: !41, line: 40, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathContext", file: !41, line: 39, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathContext", file: !41, line: 290, size: 3008, elements: !191)
!191 = !{!192, !193, !197, !198, !199, !205, !206, !207, !244, !245, !246, !247, !248, !249, !283, !286, !287, !288, !289, !290, !291, !292, !293, !294, !299, !300, !301, !302, !303, !312, !313, !314, !315, !316, !340, !341, !342, !346, !347, !348, !350, !351}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !190, file: !41, line: 291, baseType: !80, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !190, file: !41, line: 292, baseType: !194, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !93)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "nb_variables_unused", scope: !190, file: !41, line: 294, baseType: !77, size: 32, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "max_variables_unused", scope: !190, file: !41, line: 295, baseType: !77, size: 32, offset: 160)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "varHash", scope: !190, file: !41, line: 296, baseType: !200, size: 64, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !201, line: 22, baseType: !202)
!201 = !DIFile(filename: "/usr/include/libxml2/libxml/hash.h", directory: "", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !201, line: 21, baseType: !204)
!204 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !201, line: 21, flags: DIFlagFwdDecl)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "nb_types", scope: !190, file: !41, line: 298, baseType: !77, size: 32, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "max_types", scope: !190, file: !41, line: 299, baseType: !77, size: 32, offset: 288)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !190, file: !41, line: 300, baseType: !208, size: 64, offset: 320)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathTypePtr", file: !41, line: 145, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathType", file: !41, line: 144, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathType", file: !41, line: 146, size: 128, elements: !212)
!212 = !{!213, !214}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !211, file: !41, line: 147, baseType: !98, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !211, file: !41, line: 148, baseType: !215, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathConvertFunc", file: !41, line: 138, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!77, !219, !77}
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectPtr", file: !41, line: 115, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObject", file: !41, line: 114, baseType: !222)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathObject", file: !41, line: 116, size: 576, elements: !223)
!223 = !{!224, !226, !236, !237, !239, !240, !241, !242, !243}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !222, file: !41, line: 117, baseType: !225, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectType", file: !41, line: 112, baseType: !40)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "nodesetval", scope: !222, file: !41, line: 118, baseType: !227, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSetPtr", file: !41, line: 82, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSet", file: !41, line: 81, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNodeSet", file: !41, line: 83, size: 128, elements: !231)
!231 = !{!232, !233, !234}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !230, file: !41, line: 84, baseType: !77, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !230, file: !41, line: 85, baseType: !77, size: 32, offset: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !230, file: !41, line: 86, baseType: !235, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "boolval", scope: !222, file: !41, line: 119, baseType: !77, size: 32, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "floatval", scope: !222, file: !41, line: 120, baseType: !238, size: 64, offset: 192)
!238 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "stringval", scope: !222, file: !41, line: 121, baseType: !62, size: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !222, file: !41, line: 122, baseType: !61, size: 64, offset: 320)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !222, file: !41, line: 123, baseType: !77, size: 32, offset: 384)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "user2", scope: !222, file: !41, line: 124, baseType: !61, size: 64, offset: 448)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "index2", scope: !222, file: !41, line: 125, baseType: !77, size: 32, offset: 512)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "nb_funcs_unused", scope: !190, file: !41, line: 302, baseType: !77, size: 32, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "max_funcs_unused", scope: !190, file: !41, line: 303, baseType: !77, size: 32, offset: 416)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "funcHash", scope: !190, file: !41, line: 304, baseType: !200, size: 64, offset: 448)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "nb_axis", scope: !190, file: !41, line: 306, baseType: !77, size: 32, offset: 512)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "max_axis", scope: !190, file: !41, line: 307, baseType: !77, size: 32, offset: 544)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "axis", scope: !190, file: !41, line: 308, baseType: !250, size: 64, offset: 576)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxisPtr", file: !41, line: 204, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxis", file: !41, line: 203, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathAxis", file: !41, line: 205, size: 128, elements: !254)
!254 = !{!255, !256}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !253, file: !41, line: 206, baseType: !98, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !253, file: !41, line: 207, baseType: !257, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxisFunc", file: !41, line: 196, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!219, !261, !219}
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathParserContextPtr", file: !41, line: 42, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathParserContext", file: !41, line: 41, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathParserContext", file: !41, line: 377, size: 704, elements: !265)
!265 = !{!266, !267, !268, !269, !270, !271, !272, !273, !275, !280, !281, !282}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !264, file: !41, line: 378, baseType: !98, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !264, file: !41, line: 379, baseType: !98, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !264, file: !41, line: 381, baseType: !77, size: 32, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !264, file: !41, line: 383, baseType: !187, size: 64, offset: 192)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !264, file: !41, line: 384, baseType: !219, size: 64, offset: 256)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "valueNr", scope: !264, file: !41, line: 385, baseType: !77, size: 32, offset: 320)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "valueMax", scope: !264, file: !41, line: 386, baseType: !77, size: 32, offset: 352)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "valueTab", scope: !264, file: !41, line: 387, baseType: !274, size: 64, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !264, file: !41, line: 389, baseType: !276, size: 64, offset: 448)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathCompExprPtr", file: !41, line: 369, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathCompExpr", file: !41, line: 368, baseType: !279)
!279 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathCompExpr", file: !41, line: 368, flags: DIFlagFwdDecl)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "xptr", scope: !264, file: !41, line: 390, baseType: !77, size: 32, offset: 512)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "ancestor", scope: !264, file: !41, line: 391, baseType: !194, size: 64, offset: 576)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "valueFrame", scope: !264, file: !41, line: 393, baseType: !77, size: 32, offset: 640)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !190, file: !41, line: 311, baseType: !284, size: 64, offset: 640)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !4, line: 387, baseType: !108)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "nsNr", scope: !190, file: !41, line: 312, baseType: !77, size: 32, offset: 704)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !190, file: !41, line: 313, baseType: !61, size: 64, offset: 768)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "contextSize", scope: !190, file: !41, line: 316, baseType: !77, size: 32, offset: 832)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "proximityPosition", scope: !190, file: !41, line: 317, baseType: !77, size: 32, offset: 864)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "xptr", scope: !190, file: !41, line: 320, baseType: !77, size: 32, offset: 896)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "here", scope: !190, file: !41, line: 321, baseType: !194, size: 64, offset: 960)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !190, file: !41, line: 322, baseType: !194, size: 64, offset: 1024)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "nsHash", scope: !190, file: !41, line: 325, baseType: !200, size: 64, offset: 1088)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "varLookupFunc", scope: !190, file: !41, line: 326, baseType: !295, size: 64, offset: 1152)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathVariableLookupFunc", file: !41, line: 237, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!219, !61, !98, !98}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "varLookupData", scope: !190, file: !41, line: 327, baseType: !61, size: 64, offset: 1216)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !190, file: !41, line: 330, baseType: !61, size: 64, offset: 1280)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !190, file: !41, line: 333, baseType: !98, size: 64, offset: 1344)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "functionURI", scope: !190, file: !41, line: 334, baseType: !98, size: 64, offset: 1408)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "funcLookupFunc", scope: !190, file: !41, line: 337, baseType: !304, size: 64, offset: 1472)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathFuncLookupFunc", file: !41, line: 252, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!308, !61, !98, !98}
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathFunction", file: !41, line: 220, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !261, !77}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "funcLookupData", scope: !190, file: !41, line: 338, baseType: !61, size: 64, offset: 1536)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "tmpNsList", scope: !190, file: !41, line: 341, baseType: !284, size: 64, offset: 1600)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "tmpNsNr", scope: !190, file: !41, line: 342, baseType: !77, size: 32, offset: 1664)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !190, file: !41, line: 345, baseType: !61, size: 64, offset: 1728)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !190, file: !41, line: 346, baseType: !317, size: 64, offset: 1792)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStructuredErrorFunc", file: !54, line: 856, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !61, !321}
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorPtr", file: !54, line: 77, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlError", file: !54, line: 76, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlError", file: !54, line: 78, size: 704, elements: !325)
!325 = !{!326, !327, !328, !329, !331, !332, !333, !334, !335, !336, !337, !338, !339}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !324, file: !54, line: 79, baseType: !77, size: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !324, file: !54, line: 80, baseType: !77, size: 32, offset: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !324, file: !54, line: 81, baseType: !89, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !324, file: !54, line: 82, baseType: !330, size: 32, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorLevel", file: !54, line: 29, baseType: !53)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !324, file: !54, line: 83, baseType: !89, size: 64, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !324, file: !54, line: 84, baseType: !77, size: 32, offset: 256)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "str1", scope: !324, file: !54, line: 85, baseType: !89, size: 64, offset: 320)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "str2", scope: !324, file: !54, line: 86, baseType: !89, size: 64, offset: 384)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "str3", scope: !324, file: !54, line: 87, baseType: !89, size: 64, offset: 448)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "int1", scope: !324, file: !54, line: 88, baseType: !77, size: 32, offset: 512)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "int2", scope: !324, file: !54, line: 89, baseType: !77, size: 32, offset: 544)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "ctxt", scope: !324, file: !54, line: 90, baseType: !61, size: 64, offset: 576)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !324, file: !54, line: 91, baseType: !61, size: 64, offset: 640)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "lastError", scope: !190, file: !41, line: 347, baseType: !323, size: 704, offset: 1856)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "debugNode", scope: !190, file: !41, line: 348, baseType: !194, size: 64, offset: 2560)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !190, file: !41, line: 351, baseType: !343, size: 64, offset: 2624)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !181, line: 25, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !181, line: 24, baseType: !180)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !190, file: !41, line: 353, baseType: !77, size: 32, offset: 2688)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !190, file: !41, line: 356, baseType: !61, size: 64, offset: 2752)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "opLimit", scope: !190, file: !41, line: 359, baseType: !349, size: 64, offset: 2816)
!349 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "opCount", scope: !190, file: !41, line: 360, baseType: !349, size: 64, offset: 2880)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !190, file: !41, line: 361, baseType: !77, size: 32, offset: 2944)
!352 = !DILocation(line: 8, column: 24, scope: !74)
!353 = !DILocalVariable(name: "obj", scope: !74, file: !1, line: 9, type: !219)
!354 = !DILocation(line: 9, column: 23, scope: !74)
!355 = !DILocalVariable(name: "node", scope: !74, file: !1, line: 10, type: !194)
!356 = !DILocation(line: 10, column: 16, scope: !74)
!357 = !DILocalVariable(name: "xpath_expr", scope: !74, file: !1, line: 11, type: !62)
!358 = !DILocation(line: 11, column: 14, scope: !74)
!359 = !DILocalVariable(name: "cache_size", scope: !74, file: !1, line: 12, type: !77)
!360 = !DILocation(line: 12, column: 9, scope: !74)
!361 = !DILocation(line: 14, column: 24, scope: !74)
!362 = !DILocation(line: 14, column: 5, scope: !74)
!363 = !DILocation(line: 15, column: 17, scope: !74)
!364 = !DILocation(line: 15, column: 28, scope: !74)
!365 = !DILocation(line: 15, column: 5, scope: !74)
!366 = !DILocation(line: 16, column: 17, scope: !74)
!367 = !DILocation(line: 16, column: 28, scope: !74)
!368 = !DILocation(line: 16, column: 5, scope: !74)
!369 = !DILocation(line: 18, column: 11, scope: !74)
!370 = !DILocation(line: 18, column: 9, scope: !74)
!371 = !DILocation(line: 19, column: 9, scope: !372)
!372 = distinct !DILexicalBlock(scope: !74, file: !1, line: 19, column: 9)
!373 = !DILocation(line: 19, column: 13, scope: !372)
!374 = !DILocation(line: 19, column: 9, scope: !74)
!375 = !DILocation(line: 19, column: 22, scope: !372)
!376 = !DILocation(line: 21, column: 30, scope: !74)
!377 = !DILocation(line: 21, column: 11, scope: !74)
!378 = !DILocation(line: 21, column: 9, scope: !74)
!379 = !DILocation(line: 22, column: 9, scope: !380)
!380 = distinct !DILexicalBlock(scope: !74, file: !1, line: 22, column: 9)
!381 = !DILocation(line: 22, column: 13, scope: !380)
!382 = !DILocation(line: 22, column: 9, scope: !74)
!383 = !DILocation(line: 23, column: 20, scope: !384)
!384 = distinct !DILexicalBlock(scope: !380, file: !1, line: 22, column: 22)
!385 = !DILocation(line: 23, column: 9, scope: !384)
!386 = !DILocation(line: 24, column: 9, scope: !384)
!387 = !DILocation(line: 27, column: 16, scope: !74)
!388 = !DILocation(line: 28, column: 34, scope: !74)
!389 = !DILocation(line: 28, column: 46, scope: !74)
!390 = !DILocation(line: 28, column: 11, scope: !74)
!391 = !DILocation(line: 28, column: 9, scope: !74)
!392 = !DILocation(line: 29, column: 9, scope: !393)
!393 = distinct !DILexicalBlock(scope: !74, file: !1, line: 29, column: 9)
!394 = !DILocation(line: 29, column: 13, scope: !393)
!395 = !DILocation(line: 29, column: 9, scope: !74)
!396 = !DILocation(line: 30, column: 29, scope: !397)
!397 = distinct !DILexicalBlock(scope: !393, file: !1, line: 29, column: 22)
!398 = !DILocation(line: 30, column: 9, scope: !397)
!399 = !DILocation(line: 31, column: 20, scope: !397)
!400 = !DILocation(line: 31, column: 9, scope: !397)
!401 = !DILocation(line: 32, column: 9, scope: !397)
!402 = !DILocation(line: 35, column: 33, scope: !74)
!403 = !DILocation(line: 35, column: 12, scope: !74)
!404 = !DILocation(line: 35, column: 10, scope: !74)
!405 = !DILocation(line: 36, column: 9, scope: !406)
!406 = distinct !DILexicalBlock(scope: !74, file: !1, line: 36, column: 9)
!407 = !DILocation(line: 36, column: 14, scope: !406)
!408 = !DILocation(line: 36, column: 9, scope: !74)
!409 = !DILocation(line: 37, column: 28, scope: !410)
!410 = distinct !DILexicalBlock(scope: !406, file: !1, line: 36, column: 23)
!411 = !DILocation(line: 37, column: 9, scope: !410)
!412 = !DILocation(line: 38, column: 29, scope: !410)
!413 = !DILocation(line: 38, column: 9, scope: !410)
!414 = !DILocation(line: 39, column: 20, scope: !410)
!415 = !DILocation(line: 39, column: 9, scope: !410)
!416 = !DILocation(line: 40, column: 9, scope: !410)
!417 = !DILocation(line: 43, column: 25, scope: !74)
!418 = !DILocation(line: 43, column: 30, scope: !74)
!419 = !DILocation(line: 43, column: 5, scope: !74)
!420 = !DILocation(line: 45, column: 5, scope: !74)
!421 = !DILocation(line: 47, column: 24, scope: !74)
!422 = !DILocation(line: 47, column: 5, scope: !74)
!423 = !DILocation(line: 48, column: 25, scope: !74)
!424 = !DILocation(line: 48, column: 5, scope: !74)
!425 = !DILocation(line: 49, column: 16, scope: !74)
!426 = !DILocation(line: 49, column: 5, scope: !74)
!427 = !DILocation(line: 50, column: 5, scope: !74)
!428 = !DILocation(line: 51, column: 1, scope: !74)

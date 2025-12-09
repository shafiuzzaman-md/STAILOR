; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/368_xpath.c_1031_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/368_xpath.c_1031_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlXPathCompExpr = type opaque
%struct._xmlXPathParserContext = type { i8*, i8*, i32, %struct._xmlXPathContext*, %struct._xmlXPathObject*, i32, i32, %struct._xmlXPathObject**, %struct._xmlXPathCompExpr*, i32, %struct._xmlNode*, i32 }
%struct._xmlXPathContext = type { %struct._xmlDoc*, %struct._xmlNode*, i32, i32, %struct._xmlHashTable*, i32, i32, %struct._xmlXPathType*, i32, i32, %struct._xmlHashTable*, i32, i32, %struct._xmlXPathAxis*, %struct._xmlNs**, i32, i8*, i32, i32, i32, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlHashTable*, %struct._xmlXPathObject* (i8*, i8*, i8*)*, i8*, i8*, i8*, i8*, void (%struct._xmlXPathParserContext*, i32)* (i8*, i8*, i8*)*, i8*, %struct._xmlNs**, i32, i8*, void (i8*, %struct._xmlError*)*, %struct._xmlError, %struct._xmlNode*, %struct._xmlDict*, i32, i8*, i64, i64, i32 }
%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlXPathType = type { i8*, i32 (%struct._xmlXPathObject*, i32)* }
%struct._xmlXPathAxis = type { i8*, %struct._xmlXPathObject* (%struct._xmlXPathParserContext*, %struct._xmlXPathObject*)* }
%struct._xmlHashTable = type opaque
%struct._xmlError = type { i32, i32, i8*, i32, i8*, i32, i8*, i8*, i8*, i32, i32, i8*, i8* }
%struct._xmlDict = type opaque
%struct._xmlXPathObject = type { i32, %struct._xmlNodeSet*, i32, double, i8*, i8*, i32, i8*, i32 }
%struct._xmlNodeSet = type { i32, i32, %struct._xmlNode** }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }

@.str = private unnamed_addr constant [5 x i8] c"expr\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/368_xpath.c_1031_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !73 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlXPathCompExpr*, align 8
  %3 = alloca %struct._xmlXPathParserContext*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct._xmlDoc*, align 8
  %7 = alloca %struct._xmlNode*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlXPathCompExpr** %2, metadata !78, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata %struct._xmlXPathParserContext** %3, metadata !84, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.declare(metadata i8** %4, metadata !353, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.declare(metadata i64* %5, metadata !355, metadata !DIExpression()), !dbg !358
  store i64 100, i64* %5, align 8, !dbg !359
  %8 = load i64, i64* %5, align 8, !dbg !360
  %9 = add i64 %8, 1, !dbg !361
  %10 = call noalias i8* @malloc(i64 noundef %9) #5, !dbg !362
  store i8* %10, i8** %4, align 8, !dbg !363
  %11 = load i8*, i8** %4, align 8, !dbg !364
  %12 = icmp ne i8* %11, null, !dbg !364
  br i1 %12, label %14, label %13, !dbg !366

13:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !367
  br label %58, !dbg !367

14:                                               ; preds = %0
  %15 = load i8*, i8** %4, align 8, !dbg !368
  %16 = load i64, i64* %5, align 8, !dbg !369
  %17 = add i64 %16, 1, !dbg !370
  call void @klee_make_symbolic(i8* noundef %15, i64 noundef %17, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !371
  %18 = load i8*, i8** %4, align 8, !dbg !372
  %19 = load i64, i64* %5, align 8, !dbg !373
  %20 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !372
  store i8 0, i8* %20, align 1, !dbg !374
  call void @xmlInitParser(), !dbg !375
  call void @xmlCheckVersion(i32 noundef 20914), !dbg !376
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %6, metadata !377, metadata !DIExpression()), !dbg !378
  %21 = call %struct._xmlDoc* @xmlNewDoc(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !379
  store %struct._xmlDoc* %21, %struct._xmlDoc** %6, align 8, !dbg !378
  %22 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !380
  %23 = icmp ne %struct._xmlDoc* %22, null, !dbg !380
  br i1 %23, label %25, label %24, !dbg !382

24:                                               ; preds = %14
  br label %56, !dbg !383

25:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %7, metadata !384, metadata !DIExpression()), !dbg !385
  %26 = call %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !386
  store %struct._xmlNode* %26, %struct._xmlNode** %7, align 8, !dbg !385
  %27 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !387
  %28 = icmp ne %struct._xmlNode* %27, null, !dbg !387
  br i1 %28, label %31, label %29, !dbg !389

29:                                               ; preds = %25
  %30 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !390
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %30), !dbg !392
  br label %56, !dbg !393

31:                                               ; preds = %25
  %32 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !394
  %33 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !395
  %34 = call %struct._xmlNode* @xmlDocSetRootElement(%struct._xmlDoc* noundef %32, %struct._xmlNode* noundef %33), !dbg !396
  %35 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !397
  %36 = call %struct._xmlXPathContext* @xmlXPathNewContext(%struct._xmlDoc* noundef %35), !dbg !398
  %37 = bitcast %struct._xmlXPathContext* %36 to %struct._xmlXPathParserContext*, !dbg !398
  store %struct._xmlXPathParserContext* %37, %struct._xmlXPathParserContext** %3, align 8, !dbg !399
  %38 = load %struct._xmlXPathParserContext*, %struct._xmlXPathParserContext** %3, align 8, !dbg !400
  %39 = icmp ne %struct._xmlXPathParserContext* %38, null, !dbg !400
  br i1 %39, label %42, label %40, !dbg !402

40:                                               ; preds = %31
  %41 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !403
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %41), !dbg !405
  br label %56, !dbg !406

42:                                               ; preds = %31
  %43 = load %struct._xmlXPathParserContext*, %struct._xmlXPathParserContext** %3, align 8, !dbg !407
  %44 = bitcast %struct._xmlXPathParserContext* %43 to %struct._xmlXPathContext*, !dbg !407
  %45 = load i8*, i8** %4, align 8, !dbg !408
  %46 = call %struct._xmlXPathCompExpr* @xmlXPathCtxtCompile(%struct._xmlXPathContext* noundef %44, i8* noundef %45), !dbg !409
  store %struct._xmlXPathCompExpr* %46, %struct._xmlXPathCompExpr** %2, align 8, !dbg !410
  %47 = load %struct._xmlXPathCompExpr*, %struct._xmlXPathCompExpr** %2, align 8, !dbg !411
  %48 = icmp ne %struct._xmlXPathCompExpr* %47, null, !dbg !411
  br i1 %48, label %49, label %52, !dbg !413

49:                                               ; preds = %42
  %50 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.4, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !414
  %51 = load %struct._xmlXPathCompExpr*, %struct._xmlXPathCompExpr** %2, align 8, !dbg !416
  call void @xmlXPathFreeCompExpr(%struct._xmlXPathCompExpr* noundef %51), !dbg !417
  br label %52, !dbg !418

52:                                               ; preds = %49, %42
  %53 = load %struct._xmlXPathParserContext*, %struct._xmlXPathParserContext** %3, align 8, !dbg !419
  %54 = bitcast %struct._xmlXPathParserContext* %53 to %struct._xmlXPathContext*, !dbg !419
  call void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef %54), !dbg !420
  %55 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !421
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %55), !dbg !422
  br label %56, !dbg !422

56:                                               ; preds = %52, %40, %29, %24
  call void @llvm.dbg.label(metadata !423), !dbg !424
  %57 = load i8*, i8** %4, align 8, !dbg !425
  call void @free(i8* noundef %57) #5, !dbg !426
  call void @xmlCleanupParser(), !dbg !427
  store i32 0, i32* %1, align 4, !dbg !428
  br label %58, !dbg !428

58:                                               ; preds = %56, %13
  %59 = load i32, i32* %1, align 4, !dbg !429
  ret i32 %59, !dbg !429
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @xmlInitParser() #3

declare void @xmlCheckVersion(i32 noundef) #3

declare %struct._xmlDoc* @xmlNewDoc(i8* noundef) #3

declare %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef, i8* noundef) #3

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #3

declare %struct._xmlNode* @xmlDocSetRootElement(%struct._xmlDoc* noundef, %struct._xmlNode* noundef) #3

declare %struct._xmlXPathContext* @xmlXPathNewContext(%struct._xmlDoc* noundef) #3

declare %struct._xmlXPathCompExpr* @xmlXPathCtxtCompile(%struct._xmlXPathContext* noundef, i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

declare void @xmlXPathFreeCompExpr(%struct._xmlXPathCompExpr* noundef) #3

declare void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

declare void @xmlCleanupParser() #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !60, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/368_xpath.c_1031_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "813c6ca7e0f09a0251e6938698f8cd07")
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
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !63, line: 28, baseType: !64)
!63 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!64 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!65 = !{i32 7, !"Dwarf Version", i32 5}
!66 = !{i32 2, !"Debug Info Version", i32 3}
!67 = !{i32 1, !"wchar_size", i32 4}
!68 = !{i32 7, !"PIC Level", i32 2}
!69 = !{i32 7, !"PIE Level", i32 2}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"Ubuntu clang version 14.0.6"}
!73 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !74, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !77)
!74 = !DISubroutineType(types: !75)
!75 = !{!76}
!76 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!77 = !{}
!78 = !DILocalVariable(name: "comp", scope: !73, file: !1, line: 6, type: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathCompExprPtr", file: !41, line: 369, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathCompExpr", file: !41, line: 368, baseType: !82)
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathCompExpr", file: !41, line: 368, flags: DIFlagFwdDecl)
!83 = !DILocation(line: 6, column: 25, scope: !73)
!84 = !DILocalVariable(name: "ctxt", scope: !73, file: !1, line: 7, type: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathParserContextPtr", file: !41, line: 42, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathParserContext", file: !41, line: 41, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathParserContext", file: !41, line: 377, size: 704, elements: !89)
!89 = !{!90, !93, !94, !95, !343, !344, !345, !346, !348, !349, !350, !351}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !88, file: !41, line: 378, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !88, file: !41, line: 379, baseType: !91, size: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !88, file: !41, line: 381, baseType: !76, size: 32, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !88, file: !41, line: 383, baseType: !96, size: 64, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathContextPtr", file: !41, line: 40, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathContext", file: !41, line: 39, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathContext", file: !41, line: 290, size: 3008, elements: !100)
!100 = !{!101, !206, !210, !211, !212, !218, !219, !220, !257, !258, !259, !260, !261, !262, !274, !277, !278, !279, !280, !281, !282, !283, !284, !285, !290, !291, !292, !293, !294, !303, !304, !305, !306, !307, !331, !332, !333, !337, !338, !339, !341, !342}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !99, file: !41, line: 291, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !106)
!106 = !{!107, !109, !111, !114, !164, !165, !166, !167, !168, !169, !170, !171, !191, !192, !193, !194, !195, !196, !197, !198, !199, !203, !204, !205}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !105, file: !4, line: 560, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !105, file: !4, line: 561, baseType: !110, size: 32, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !105, file: !4, line: 562, baseType: !112, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !105, file: !4, line: 563, baseType: !115, size: 64, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124, !125, !126, !128, !141, !142, !159, !160, !161, !163}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !116, file: !4, line: 493, baseType: !108, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !116, file: !4, line: 494, baseType: !110, size: 32, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !116, file: !4, line: 495, baseType: !91, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !116, file: !4, line: 496, baseType: !115, size: 64, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !116, file: !4, line: 497, baseType: !115, size: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !116, file: !4, line: 498, baseType: !115, size: 64, offset: 320)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !116, file: !4, line: 499, baseType: !115, size: 64, offset: 384)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !116, file: !4, line: 500, baseType: !115, size: 64, offset: 448)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !116, file: !4, line: 501, baseType: !127, size: 64, offset: 512)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !116, file: !4, line: 504, baseType: !129, size: 64, offset: 576)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !132)
!132 = !{!133, !135, !137, !138, !139, !140}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !131, file: !4, line: 389, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !131, file: !4, line: 390, baseType: !136, size: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !110)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !131, file: !4, line: 391, baseType: !91, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !131, file: !4, line: 392, baseType: !91, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !131, file: !4, line: 393, baseType: !108, size: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !131, file: !4, line: 394, baseType: !127, size: 64, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !116, file: !4, line: 505, baseType: !61, size: 64, offset: 640)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !116, file: !4, line: 506, baseType: !143, size: 64, offset: 704)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !145)
!145 = !{!146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !158}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !144, file: !4, line: 434, baseType: !108, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !144, file: !4, line: 435, baseType: !110, size: 32, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !144, file: !4, line: 436, baseType: !91, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !144, file: !4, line: 437, baseType: !115, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !144, file: !4, line: 438, baseType: !115, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !144, file: !4, line: 439, baseType: !115, size: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !144, file: !4, line: 440, baseType: !143, size: 64, offset: 384)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !144, file: !4, line: 441, baseType: !143, size: 64, offset: 448)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !144, file: !4, line: 442, baseType: !127, size: 64, offset: 512)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !144, file: !4, line: 443, baseType: !129, size: 64, offset: 576)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !144, file: !4, line: 444, baseType: !157, size: 32, offset: 640)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !144, file: !4, line: 445, baseType: !108, size: 64, offset: 704)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !116, file: !4, line: 507, baseType: !129, size: 64, offset: 768)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !116, file: !4, line: 508, baseType: !108, size: 64, offset: 832)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !116, file: !4, line: 509, baseType: !162, size: 16, offset: 896)
!162 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !116, file: !4, line: 510, baseType: !162, size: 16, offset: 912)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !105, file: !4, line: 564, baseType: !115, size: 64, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !105, file: !4, line: 565, baseType: !115, size: 64, offset: 320)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !105, file: !4, line: 566, baseType: !115, size: 64, offset: 384)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !105, file: !4, line: 567, baseType: !115, size: 64, offset: 448)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !105, file: !4, line: 568, baseType: !127, size: 64, offset: 512)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !105, file: !4, line: 571, baseType: !76, size: 32, offset: 576)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !105, file: !4, line: 572, baseType: !76, size: 32, offset: 608)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !105, file: !4, line: 578, baseType: !172, size: 64, offset: 640)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !174)
!174 = !{!175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !173, file: !4, line: 406, baseType: !108, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !173, file: !4, line: 407, baseType: !110, size: 32, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !173, file: !4, line: 408, baseType: !91, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !173, file: !4, line: 409, baseType: !115, size: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !173, file: !4, line: 410, baseType: !115, size: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !173, file: !4, line: 411, baseType: !127, size: 64, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !173, file: !4, line: 412, baseType: !115, size: 64, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !173, file: !4, line: 413, baseType: !115, size: 64, offset: 448)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !173, file: !4, line: 414, baseType: !127, size: 64, offset: 512)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !173, file: !4, line: 417, baseType: !108, size: 64, offset: 576)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !173, file: !4, line: 418, baseType: !108, size: 64, offset: 640)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !173, file: !4, line: 419, baseType: !108, size: 64, offset: 704)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !173, file: !4, line: 420, baseType: !108, size: 64, offset: 768)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !173, file: !4, line: 421, baseType: !91, size: 64, offset: 832)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !173, file: !4, line: 422, baseType: !91, size: 64, offset: 896)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !173, file: !4, line: 423, baseType: !108, size: 64, offset: 960)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !105, file: !4, line: 579, baseType: !172, size: 64, offset: 704)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !105, file: !4, line: 580, baseType: !134, size: 64, offset: 768)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !105, file: !4, line: 581, baseType: !91, size: 64, offset: 832)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !105, file: !4, line: 582, baseType: !91, size: 64, offset: 896)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !105, file: !4, line: 583, baseType: !108, size: 64, offset: 960)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !105, file: !4, line: 584, baseType: !108, size: 64, offset: 1024)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !105, file: !4, line: 585, baseType: !91, size: 64, offset: 1088)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !105, file: !4, line: 586, baseType: !76, size: 32, offset: 1152)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !105, file: !4, line: 588, baseType: !200, size: 64, offset: 1216)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !202, line: 24, flags: DIFlagFwdDecl)
!202 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!203 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !105, file: !4, line: 589, baseType: !108, size: 64, offset: 1280)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !105, file: !4, line: 590, baseType: !76, size: 32, offset: 1344)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !105, file: !4, line: 592, baseType: !76, size: 32, offset: 1376)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !99, file: !41, line: 292, baseType: !207, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !116)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "nb_variables_unused", scope: !99, file: !41, line: 294, baseType: !76, size: 32, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "max_variables_unused", scope: !99, file: !41, line: 295, baseType: !76, size: 32, offset: 160)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "varHash", scope: !99, file: !41, line: 296, baseType: !213, size: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !214, line: 22, baseType: !215)
!214 = !DIFile(filename: "/usr/include/libxml2/libxml/hash.h", directory: "", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !214, line: 21, baseType: !217)
!217 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !214, line: 21, flags: DIFlagFwdDecl)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "nb_types", scope: !99, file: !41, line: 298, baseType: !76, size: 32, offset: 256)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "max_types", scope: !99, file: !41, line: 299, baseType: !76, size: 32, offset: 288)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !99, file: !41, line: 300, baseType: !221, size: 64, offset: 320)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathTypePtr", file: !41, line: 145, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathType", file: !41, line: 144, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathType", file: !41, line: 146, size: 128, elements: !225)
!225 = !{!226, !227}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !224, file: !41, line: 147, baseType: !91, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !224, file: !41, line: 148, baseType: !228, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathConvertFunc", file: !41, line: 138, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!76, !232, !76}
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectPtr", file: !41, line: 115, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObject", file: !41, line: 114, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathObject", file: !41, line: 116, size: 576, elements: !236)
!236 = !{!237, !239, !249, !250, !252, !253, !254, !255, !256}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !235, file: !41, line: 117, baseType: !238, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectType", file: !41, line: 112, baseType: !40)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "nodesetval", scope: !235, file: !41, line: 118, baseType: !240, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSetPtr", file: !41, line: 82, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSet", file: !41, line: 81, baseType: !243)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNodeSet", file: !41, line: 83, size: 128, elements: !244)
!244 = !{!245, !246, !247}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !243, file: !41, line: 84, baseType: !76, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !243, file: !41, line: 85, baseType: !76, size: 32, offset: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !243, file: !41, line: 86, baseType: !248, size: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "boolval", scope: !235, file: !41, line: 119, baseType: !76, size: 32, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "floatval", scope: !235, file: !41, line: 120, baseType: !251, size: 64, offset: 192)
!251 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "stringval", scope: !235, file: !41, line: 121, baseType: !61, size: 64, offset: 256)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !235, file: !41, line: 122, baseType: !108, size: 64, offset: 320)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !235, file: !41, line: 123, baseType: !76, size: 32, offset: 384)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "user2", scope: !235, file: !41, line: 124, baseType: !108, size: 64, offset: 448)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "index2", scope: !235, file: !41, line: 125, baseType: !76, size: 32, offset: 512)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "nb_funcs_unused", scope: !99, file: !41, line: 302, baseType: !76, size: 32, offset: 384)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "max_funcs_unused", scope: !99, file: !41, line: 303, baseType: !76, size: 32, offset: 416)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "funcHash", scope: !99, file: !41, line: 304, baseType: !213, size: 64, offset: 448)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "nb_axis", scope: !99, file: !41, line: 306, baseType: !76, size: 32, offset: 512)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "max_axis", scope: !99, file: !41, line: 307, baseType: !76, size: 32, offset: 544)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "axis", scope: !99, file: !41, line: 308, baseType: !263, size: 64, offset: 576)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxisPtr", file: !41, line: 204, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxis", file: !41, line: 203, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathAxis", file: !41, line: 205, size: 128, elements: !267)
!267 = !{!268, !269}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !266, file: !41, line: 206, baseType: !91, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !266, file: !41, line: 207, baseType: !270, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxisFunc", file: !41, line: 196, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!232, !85, !232}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !99, file: !41, line: 311, baseType: !275, size: 64, offset: 640)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !4, line: 387, baseType: !129)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "nsNr", scope: !99, file: !41, line: 312, baseType: !76, size: 32, offset: 704)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !99, file: !41, line: 313, baseType: !108, size: 64, offset: 768)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "contextSize", scope: !99, file: !41, line: 316, baseType: !76, size: 32, offset: 832)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "proximityPosition", scope: !99, file: !41, line: 317, baseType: !76, size: 32, offset: 864)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "xptr", scope: !99, file: !41, line: 320, baseType: !76, size: 32, offset: 896)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "here", scope: !99, file: !41, line: 321, baseType: !207, size: 64, offset: 960)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !99, file: !41, line: 322, baseType: !207, size: 64, offset: 1024)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "nsHash", scope: !99, file: !41, line: 325, baseType: !213, size: 64, offset: 1088)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "varLookupFunc", scope: !99, file: !41, line: 326, baseType: !286, size: 64, offset: 1152)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathVariableLookupFunc", file: !41, line: 237, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!232, !108, !91, !91}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "varLookupData", scope: !99, file: !41, line: 327, baseType: !108, size: 64, offset: 1216)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !99, file: !41, line: 330, baseType: !108, size: 64, offset: 1280)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !99, file: !41, line: 333, baseType: !91, size: 64, offset: 1344)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "functionURI", scope: !99, file: !41, line: 334, baseType: !91, size: 64, offset: 1408)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "funcLookupFunc", scope: !99, file: !41, line: 337, baseType: !295, size: 64, offset: 1472)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathFuncLookupFunc", file: !41, line: 252, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!299, !108, !91, !91}
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathFunction", file: !41, line: 220, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !85, !76}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "funcLookupData", scope: !99, file: !41, line: 338, baseType: !108, size: 64, offset: 1536)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "tmpNsList", scope: !99, file: !41, line: 341, baseType: !275, size: 64, offset: 1600)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "tmpNsNr", scope: !99, file: !41, line: 342, baseType: !76, size: 32, offset: 1664)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !99, file: !41, line: 345, baseType: !108, size: 64, offset: 1728)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !99, file: !41, line: 346, baseType: !308, size: 64, offset: 1792)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStructuredErrorFunc", file: !54, line: 856, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !108, !312}
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorPtr", file: !54, line: 77, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlError", file: !54, line: 76, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlError", file: !54, line: 78, size: 704, elements: !316)
!316 = !{!317, !318, !319, !320, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !315, file: !54, line: 79, baseType: !76, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !315, file: !54, line: 80, baseType: !76, size: 32, offset: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !315, file: !54, line: 81, baseType: !112, size: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !315, file: !54, line: 82, baseType: !321, size: 32, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorLevel", file: !54, line: 29, baseType: !53)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !315, file: !54, line: 83, baseType: !112, size: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !315, file: !54, line: 84, baseType: !76, size: 32, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "str1", scope: !315, file: !54, line: 85, baseType: !112, size: 64, offset: 320)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "str2", scope: !315, file: !54, line: 86, baseType: !112, size: 64, offset: 384)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "str3", scope: !315, file: !54, line: 87, baseType: !112, size: 64, offset: 448)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "int1", scope: !315, file: !54, line: 88, baseType: !76, size: 32, offset: 512)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "int2", scope: !315, file: !54, line: 89, baseType: !76, size: 32, offset: 544)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "ctxt", scope: !315, file: !54, line: 90, baseType: !108, size: 64, offset: 576)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !315, file: !54, line: 91, baseType: !108, size: 64, offset: 640)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "lastError", scope: !99, file: !41, line: 347, baseType: !314, size: 704, offset: 1856)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "debugNode", scope: !99, file: !41, line: 348, baseType: !207, size: 64, offset: 2560)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !99, file: !41, line: 351, baseType: !334, size: 64, offset: 2624)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !202, line: 25, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !202, line: 24, baseType: !201)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !99, file: !41, line: 353, baseType: !76, size: 32, offset: 2688)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !99, file: !41, line: 356, baseType: !108, size: 64, offset: 2752)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "opLimit", scope: !99, file: !41, line: 359, baseType: !340, size: 64, offset: 2816)
!340 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "opCount", scope: !99, file: !41, line: 360, baseType: !340, size: 64, offset: 2880)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !99, file: !41, line: 361, baseType: !76, size: 32, offset: 2944)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !88, file: !41, line: 384, baseType: !232, size: 64, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "valueNr", scope: !88, file: !41, line: 385, baseType: !76, size: 32, offset: 320)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "valueMax", scope: !88, file: !41, line: 386, baseType: !76, size: 32, offset: 352)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "valueTab", scope: !88, file: !41, line: 387, baseType: !347, size: 64, offset: 384)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !88, file: !41, line: 389, baseType: !79, size: 64, offset: 448)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "xptr", scope: !88, file: !41, line: 390, baseType: !76, size: 32, offset: 512)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ancestor", scope: !88, file: !41, line: 391, baseType: !207, size: 64, offset: 576)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "valueFrame", scope: !88, file: !41, line: 393, baseType: !76, size: 32, offset: 640)
!352 = !DILocation(line: 7, column: 30, scope: !73)
!353 = !DILocalVariable(name: "expr", scope: !73, file: !1, line: 8, type: !61)
!354 = !DILocation(line: 8, column: 14, scope: !73)
!355 = !DILocalVariable(name: "expr_len", scope: !73, file: !1, line: 9, type: !356)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !357, line: 46, baseType: !340)
!357 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!358 = !DILocation(line: 9, column: 12, scope: !73)
!359 = !DILocation(line: 12, column: 14, scope: !73)
!360 = !DILocation(line: 13, column: 30, scope: !73)
!361 = !DILocation(line: 13, column: 39, scope: !73)
!362 = !DILocation(line: 13, column: 23, scope: !73)
!363 = !DILocation(line: 13, column: 10, scope: !73)
!364 = !DILocation(line: 14, column: 10, scope: !365)
!365 = distinct !DILexicalBlock(scope: !73, file: !1, line: 14, column: 9)
!366 = !DILocation(line: 14, column: 9, scope: !73)
!367 = !DILocation(line: 14, column: 16, scope: !365)
!368 = !DILocation(line: 15, column: 24, scope: !73)
!369 = !DILocation(line: 15, column: 30, scope: !73)
!370 = !DILocation(line: 15, column: 39, scope: !73)
!371 = !DILocation(line: 15, column: 5, scope: !73)
!372 = !DILocation(line: 16, column: 5, scope: !73)
!373 = !DILocation(line: 16, column: 10, scope: !73)
!374 = !DILocation(line: 16, column: 20, scope: !73)
!375 = !DILocation(line: 19, column: 5, scope: !73)
!376 = !DILocation(line: 20, column: 5, scope: !73)
!377 = !DILocalVariable(name: "doc", scope: !73, file: !1, line: 23, type: !102)
!378 = !DILocation(line: 23, column: 15, scope: !73)
!379 = !DILocation(line: 23, column: 21, scope: !73)
!380 = !DILocation(line: 24, column: 10, scope: !381)
!381 = distinct !DILexicalBlock(scope: !73, file: !1, line: 24, column: 9)
!382 = !DILocation(line: 24, column: 9, scope: !73)
!383 = !DILocation(line: 24, column: 15, scope: !381)
!384 = !DILocalVariable(name: "root", scope: !73, file: !1, line: 25, type: !207)
!385 = !DILocation(line: 25, column: 16, scope: !73)
!386 = !DILocation(line: 25, column: 23, scope: !73)
!387 = !DILocation(line: 26, column: 10, scope: !388)
!388 = distinct !DILexicalBlock(scope: !73, file: !1, line: 26, column: 9)
!389 = !DILocation(line: 26, column: 9, scope: !73)
!390 = !DILocation(line: 27, column: 20, scope: !391)
!391 = distinct !DILexicalBlock(scope: !388, file: !1, line: 26, column: 16)
!392 = !DILocation(line: 27, column: 9, scope: !391)
!393 = !DILocation(line: 28, column: 9, scope: !391)
!394 = !DILocation(line: 30, column: 26, scope: !73)
!395 = !DILocation(line: 30, column: 31, scope: !73)
!396 = !DILocation(line: 30, column: 5, scope: !73)
!397 = !DILocation(line: 32, column: 31, scope: !73)
!398 = !DILocation(line: 32, column: 12, scope: !73)
!399 = !DILocation(line: 32, column: 10, scope: !73)
!400 = !DILocation(line: 33, column: 10, scope: !401)
!401 = distinct !DILexicalBlock(scope: !73, file: !1, line: 33, column: 9)
!402 = !DILocation(line: 33, column: 9, scope: !73)
!403 = !DILocation(line: 34, column: 20, scope: !404)
!404 = distinct !DILexicalBlock(scope: !401, file: !1, line: 33, column: 16)
!405 = !DILocation(line: 34, column: 9, scope: !404)
!406 = !DILocation(line: 35, column: 9, scope: !404)
!407 = !DILocation(line: 40, column: 32, scope: !73)
!408 = !DILocation(line: 40, column: 38, scope: !73)
!409 = !DILocation(line: 40, column: 12, scope: !73)
!410 = !DILocation(line: 40, column: 10, scope: !73)
!411 = !DILocation(line: 41, column: 9, scope: !412)
!412 = distinct !DILexicalBlock(scope: !73, file: !1, line: 41, column: 9)
!413 = !DILocation(line: 41, column: 9, scope: !73)
!414 = !DILocation(line: 51, column: 9, scope: !415)
!415 = distinct !DILexicalBlock(scope: !412, file: !1, line: 41, column: 15)
!416 = !DILocation(line: 52, column: 30, scope: !415)
!417 = !DILocation(line: 52, column: 9, scope: !415)
!418 = !DILocation(line: 53, column: 5, scope: !415)
!419 = !DILocation(line: 56, column: 25, scope: !73)
!420 = !DILocation(line: 56, column: 5, scope: !73)
!421 = !DILocation(line: 57, column: 16, scope: !73)
!422 = !DILocation(line: 57, column: 5, scope: !73)
!423 = !DILabel(scope: !73, name: "cleanup", file: !1, line: 59)
!424 = !DILocation(line: 59, column: 1, scope: !73)
!425 = !DILocation(line: 60, column: 10, scope: !73)
!426 = !DILocation(line: 60, column: 5, scope: !73)
!427 = !DILocation(line: 61, column: 5, scope: !73)
!428 = !DILocation(line: 62, column: 5, scope: !73)
!429 = !DILocation(line: 63, column: 1, scope: !73)

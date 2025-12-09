; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/363_xpath.c_2995_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/363_xpath.c_2995_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
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
@.str.3 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/363_xpath.c_2995_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !70 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca %struct._xmlDoc*, align 8
  %4 = alloca %struct._xmlXPathContext*, align 8
  %5 = alloca %struct._xmlNode*, align 8
  %6 = alloca %struct._xmlXPathObject*, align 8
  %7 = alloca %struct._xmlXPathObject*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @xmlInitParser(), !dbg !75
  call void @llvm.dbg.declare(metadata [1024 x i8]* %2, metadata !76, metadata !DIExpression()), !dbg !81
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !82
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 1024, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !83
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 1023, !dbg !84
  store i8 0, i8* %10, align 1, !dbg !85
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %3, metadata !86, metadata !DIExpression()), !dbg !195
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !196
  %12 = call %struct._xmlDoc* @xmlReadMemory(i8* noundef %11, i32 noundef 1023, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* noundef null, i32 noundef 0), !dbg !197
  store %struct._xmlDoc* %12, %struct._xmlDoc** %3, align 8, !dbg !195
  %13 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !198
  %14 = icmp eq %struct._xmlDoc* %13, null, !dbg !200
  br i1 %14, label %15, label %16, !dbg !201

15:                                               ; preds = %0
  call void @xmlCleanupParser(), !dbg !202
  store i32 0, i32* %1, align 4, !dbg !204
  br label %69, !dbg !204

16:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata %struct._xmlXPathContext** %4, metadata !205, metadata !DIExpression()), !dbg !371
  %17 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !372
  %18 = call %struct._xmlXPathContext* @xmlXPathNewContext(%struct._xmlDoc* noundef %17), !dbg !373
  store %struct._xmlXPathContext* %18, %struct._xmlXPathContext** %4, align 8, !dbg !371
  %19 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %4, align 8, !dbg !374
  %20 = icmp eq %struct._xmlXPathContext* %19, null, !dbg !376
  br i1 %20, label %21, label %23, !dbg !377

21:                                               ; preds = %16
  %22 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !378
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %22), !dbg !380
  call void @xmlCleanupParser(), !dbg !381
  store i32 0, i32* %1, align 4, !dbg !382
  br label %69, !dbg !382

23:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !383, metadata !DIExpression()), !dbg !384
  %24 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !385
  %25 = call %struct._xmlNode* @xmlDocGetRootElement(%struct._xmlDoc* noundef %24), !dbg !386
  store %struct._xmlNode* %25, %struct._xmlNode** %5, align 8, !dbg !384
  %26 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !387
  %27 = icmp eq %struct._xmlNode* %26, null, !dbg !389
  br i1 %27, label %28, label %31, !dbg !390

28:                                               ; preds = %23
  %29 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %4, align 8, !dbg !391
  call void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef %29), !dbg !393
  %30 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !394
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %30), !dbg !395
  call void @xmlCleanupParser(), !dbg !396
  store i32 0, i32* %1, align 4, !dbg !397
  br label %69, !dbg !397

31:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %6, metadata !398, metadata !DIExpression()), !dbg !399
  %32 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !400
  %33 = call %struct._xmlXPathObject* @xmlXPathNewNodeSet(%struct._xmlNode* noundef %32), !dbg !401
  store %struct._xmlXPathObject* %33, %struct._xmlXPathObject** %6, align 8, !dbg !399
  %34 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %6, align 8, !dbg !402
  %35 = icmp eq %struct._xmlXPathObject* %34, null, !dbg !404
  br i1 %35, label %36, label %39, !dbg !405

36:                                               ; preds = %31
  %37 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %4, align 8, !dbg !406
  call void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef %37), !dbg !408
  %38 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !409
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %38), !dbg !410
  call void @xmlCleanupParser(), !dbg !411
  store i32 0, i32* %1, align 4, !dbg !412
  br label %69, !dbg !412

39:                                               ; preds = %31
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %7, metadata !413, metadata !DIExpression()), !dbg !414
  %40 = call %struct._xmlXPathObject* @xmlXPathNewNodeSet(%struct._xmlNode* noundef null), !dbg !415
  store %struct._xmlXPathObject* %40, %struct._xmlXPathObject** %7, align 8, !dbg !414
  %41 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %7, align 8, !dbg !416
  %42 = icmp eq %struct._xmlXPathObject* %41, null, !dbg !418
  br i1 %42, label %43, label %48, !dbg !419

43:                                               ; preds = %39
  %44 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %6, align 8, !dbg !420
  %45 = bitcast %struct._xmlXPathObject* %44 to %struct._xmlNodeSet*, !dbg !420
  call void @xmlXPathFreeNodeSet(%struct._xmlNodeSet* noundef %45), !dbg !422
  %46 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %4, align 8, !dbg !423
  call void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef %46), !dbg !424
  %47 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !425
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %47), !dbg !426
  call void @xmlCleanupParser(), !dbg !427
  store i32 0, i32* %1, align 4, !dbg !428
  br label %69, !dbg !428

48:                                               ; preds = %39
  call void @llvm.dbg.declare(metadata i32* %8, metadata !429, metadata !DIExpression()), !dbg !430
  store i32 0, i32* %8, align 4, !dbg !431
  br label %49, !dbg !433

49:                                               ; preds = %58, %48
  %50 = load i32, i32* %8, align 4, !dbg !434
  %51 = icmp slt i32 %50, 2, !dbg !436
  br i1 %51, label %52, label %61, !dbg !437

52:                                               ; preds = %49
  %53 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %7, align 8, !dbg !438
  %54 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %53, i32 0, i32 1, !dbg !440
  %55 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %54, align 8, !dbg !440
  %56 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !441
  %57 = call i32 @xmlXPathNodeSetAdd(%struct._xmlNodeSet* noundef %55, %struct._xmlNode* noundef %56), !dbg !442
  br label %58, !dbg !443

58:                                               ; preds = %52
  %59 = load i32, i32* %8, align 4, !dbg !444
  %60 = add nsw i32 %59, 1, !dbg !444
  store i32 %60, i32* %8, align 4, !dbg !444
  br label %49, !dbg !445, !llvm.loop !446

61:                                               ; preds = %49
  %62 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0), i32 noundef 74, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !449
  %63 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %7, align 8, !dbg !450
  %64 = bitcast %struct._xmlXPathObject* %63 to %struct._xmlNodeSet*, !dbg !450
  call void @xmlXPathFreeNodeSet(%struct._xmlNodeSet* noundef %64), !dbg !451
  %65 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %6, align 8, !dbg !452
  %66 = bitcast %struct._xmlXPathObject* %65 to %struct._xmlNodeSet*, !dbg !452
  call void @xmlXPathFreeNodeSet(%struct._xmlNodeSet* noundef %66), !dbg !453
  %67 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %4, align 8, !dbg !454
  call void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef %67), !dbg !455
  %68 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !456
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %68), !dbg !457
  call void @xmlCleanupParser(), !dbg !458
  store i32 0, i32* %1, align 4, !dbg !459
  br label %69, !dbg !459

69:                                               ; preds = %61, %43, %36, %28, %21, %15
  %70 = load i32, i32* %1, align 4, !dbg !460
  ret i32 %70, !dbg !460
}

declare void @xmlInitParser() #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #1

declare %struct._xmlDoc* @xmlReadMemory(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) #1

declare void @xmlCleanupParser() #1

declare %struct._xmlXPathContext* @xmlXPathNewContext(%struct._xmlDoc* noundef) #1

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #1

declare %struct._xmlNode* @xmlDocGetRootElement(%struct._xmlDoc* noundef) #1

declare void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef) #1

declare %struct._xmlXPathObject* @xmlXPathNewNodeSet(%struct._xmlNode* noundef) #1

declare void @xmlXPathFreeNodeSet(%struct._xmlNodeSet* noundef) #1

declare i32 @xmlXPathNodeSetAdd(%struct._xmlNodeSet* noundef, %struct._xmlNode* noundef) #1

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !60, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/363_xpath.c_2995_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "f8d519b72ca3d54d0873d7ea9dafa570")
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
!70 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !71, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !74)
!71 = !DISubroutineType(types: !72)
!72 = !{!73}
!73 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!74 = !{}
!75 = !DILocation(line: 7, column: 5, scope: !70)
!76 = !DILocalVariable(name: "xml_data", scope: !70, file: !1, line: 10, type: !77)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 8192, elements: !79)
!78 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!79 = !{!80}
!80 = !DISubrange(count: 1024)
!81 = !DILocation(line: 10, column: 10, scope: !70)
!82 = !DILocation(line: 11, column: 24, scope: !70)
!83 = !DILocation(line: 11, column: 5, scope: !70)
!84 = !DILocation(line: 13, column: 5, scope: !70)
!85 = !DILocation(line: 13, column: 34, scope: !70)
!86 = !DILocalVariable(name: "doc", scope: !70, file: !1, line: 15, type: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !91)
!91 = !{!92, !93, !95, !97, !153, !154, !155, !156, !157, !158, !159, !160, !180, !181, !182, !183, !184, !185, !186, !187, !188, !192, !193, !194}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !90, file: !4, line: 560, baseType: !61, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !90, file: !4, line: 561, baseType: !94, size: 32, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !90, file: !4, line: 562, baseType: !96, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !90, file: !4, line: 563, baseType: !98, size: 64, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !100)
!100 = !{!101, !102, !103, !109, !110, !111, !112, !113, !114, !116, !129, !131, !148, !149, !150, !152}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !99, file: !4, line: 493, baseType: !61, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !99, file: !4, line: 494, baseType: !94, size: 32, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !99, file: !4, line: 495, baseType: !104, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !107, line: 28, baseType: !108)
!107 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!108 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !99, file: !4, line: 496, baseType: !98, size: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !99, file: !4, line: 497, baseType: !98, size: 64, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !99, file: !4, line: 498, baseType: !98, size: 64, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !99, file: !4, line: 499, baseType: !98, size: 64, offset: 384)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !99, file: !4, line: 500, baseType: !98, size: 64, offset: 448)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !99, file: !4, line: 501, baseType: !115, size: 64, offset: 512)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !99, file: !4, line: 504, baseType: !117, size: 64, offset: 576)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !120)
!120 = !{!121, !123, !125, !126, !127, !128}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !119, file: !4, line: 389, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !119, file: !4, line: 390, baseType: !124, size: 32, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !94)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !119, file: !4, line: 391, baseType: !104, size: 64, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !119, file: !4, line: 392, baseType: !104, size: 64, offset: 192)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !119, file: !4, line: 393, baseType: !61, size: 64, offset: 256)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !119, file: !4, line: 394, baseType: !115, size: 64, offset: 320)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !99, file: !4, line: 505, baseType: !130, size: 64, offset: 640)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !99, file: !4, line: 506, baseType: !132, size: 64, offset: 704)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !134)
!134 = !{!135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !147}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !133, file: !4, line: 434, baseType: !61, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !133, file: !4, line: 435, baseType: !94, size: 32, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !133, file: !4, line: 436, baseType: !104, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !133, file: !4, line: 437, baseType: !98, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !133, file: !4, line: 438, baseType: !98, size: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !133, file: !4, line: 439, baseType: !98, size: 64, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !133, file: !4, line: 440, baseType: !132, size: 64, offset: 384)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !133, file: !4, line: 441, baseType: !132, size: 64, offset: 448)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !133, file: !4, line: 442, baseType: !115, size: 64, offset: 512)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !133, file: !4, line: 443, baseType: !117, size: 64, offset: 576)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !133, file: !4, line: 444, baseType: !146, size: 32, offset: 640)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !133, file: !4, line: 445, baseType: !61, size: 64, offset: 704)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !99, file: !4, line: 507, baseType: !117, size: 64, offset: 768)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !99, file: !4, line: 508, baseType: !61, size: 64, offset: 832)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !99, file: !4, line: 509, baseType: !151, size: 16, offset: 896)
!151 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !99, file: !4, line: 510, baseType: !151, size: 16, offset: 912)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !90, file: !4, line: 564, baseType: !98, size: 64, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !90, file: !4, line: 565, baseType: !98, size: 64, offset: 320)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !90, file: !4, line: 566, baseType: !98, size: 64, offset: 384)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !90, file: !4, line: 567, baseType: !98, size: 64, offset: 448)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !90, file: !4, line: 568, baseType: !115, size: 64, offset: 512)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !90, file: !4, line: 571, baseType: !73, size: 32, offset: 576)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !90, file: !4, line: 572, baseType: !73, size: 32, offset: 608)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !90, file: !4, line: 578, baseType: !161, size: 64, offset: 640)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !163)
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !162, file: !4, line: 406, baseType: !61, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !162, file: !4, line: 407, baseType: !94, size: 32, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !162, file: !4, line: 408, baseType: !104, size: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !162, file: !4, line: 409, baseType: !98, size: 64, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !162, file: !4, line: 410, baseType: !98, size: 64, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !162, file: !4, line: 411, baseType: !115, size: 64, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !162, file: !4, line: 412, baseType: !98, size: 64, offset: 384)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !162, file: !4, line: 413, baseType: !98, size: 64, offset: 448)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !162, file: !4, line: 414, baseType: !115, size: 64, offset: 512)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !162, file: !4, line: 417, baseType: !61, size: 64, offset: 576)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !162, file: !4, line: 418, baseType: !61, size: 64, offset: 640)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !162, file: !4, line: 419, baseType: !61, size: 64, offset: 704)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !162, file: !4, line: 420, baseType: !61, size: 64, offset: 768)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !162, file: !4, line: 421, baseType: !104, size: 64, offset: 832)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !162, file: !4, line: 422, baseType: !104, size: 64, offset: 896)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !162, file: !4, line: 423, baseType: !61, size: 64, offset: 960)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !90, file: !4, line: 579, baseType: !161, size: 64, offset: 704)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !90, file: !4, line: 580, baseType: !122, size: 64, offset: 768)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !90, file: !4, line: 581, baseType: !104, size: 64, offset: 832)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !90, file: !4, line: 582, baseType: !104, size: 64, offset: 896)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !90, file: !4, line: 583, baseType: !61, size: 64, offset: 960)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !90, file: !4, line: 584, baseType: !61, size: 64, offset: 1024)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !90, file: !4, line: 585, baseType: !104, size: 64, offset: 1088)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !90, file: !4, line: 586, baseType: !73, size: 32, offset: 1152)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !90, file: !4, line: 588, baseType: !189, size: 64, offset: 1216)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !191, line: 24, flags: DIFlagFwdDecl)
!191 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!192 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !90, file: !4, line: 589, baseType: !61, size: 64, offset: 1280)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !90, file: !4, line: 590, baseType: !73, size: 32, offset: 1344)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !90, file: !4, line: 592, baseType: !73, size: 32, offset: 1376)
!195 = !DILocation(line: 15, column: 15, scope: !70)
!196 = !DILocation(line: 15, column: 35, scope: !70)
!197 = !DILocation(line: 15, column: 21, scope: !70)
!198 = !DILocation(line: 16, column: 9, scope: !199)
!199 = distinct !DILexicalBlock(scope: !70, file: !1, line: 16, column: 9)
!200 = !DILocation(line: 16, column: 13, scope: !199)
!201 = !DILocation(line: 16, column: 9, scope: !70)
!202 = !DILocation(line: 17, column: 9, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !1, line: 16, column: 22)
!204 = !DILocation(line: 18, column: 9, scope: !203)
!205 = !DILocalVariable(name: "ctx", scope: !70, file: !1, line: 22, type: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathContextPtr", file: !41, line: 40, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathContext", file: !41, line: 39, baseType: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathContext", file: !41, line: 290, size: 3008, elements: !210)
!210 = !{!211, !212, !216, !217, !218, !224, !225, !226, !263, !264, !265, !266, !267, !268, !302, !305, !306, !307, !308, !309, !310, !311, !312, !313, !318, !319, !320, !321, !322, !331, !332, !333, !334, !335, !359, !360, !361, !365, !366, !367, !369, !370}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !209, file: !41, line: 291, baseType: !87, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !209, file: !41, line: 292, baseType: !213, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !99)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "nb_variables_unused", scope: !209, file: !41, line: 294, baseType: !73, size: 32, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "max_variables_unused", scope: !209, file: !41, line: 295, baseType: !73, size: 32, offset: 160)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "varHash", scope: !209, file: !41, line: 296, baseType: !219, size: 64, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !220, line: 22, baseType: !221)
!220 = !DIFile(filename: "/usr/include/libxml2/libxml/hash.h", directory: "", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !220, line: 21, baseType: !223)
!223 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !220, line: 21, flags: DIFlagFwdDecl)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "nb_types", scope: !209, file: !41, line: 298, baseType: !73, size: 32, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "max_types", scope: !209, file: !41, line: 299, baseType: !73, size: 32, offset: 288)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !209, file: !41, line: 300, baseType: !227, size: 64, offset: 320)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathTypePtr", file: !41, line: 145, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathType", file: !41, line: 144, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathType", file: !41, line: 146, size: 128, elements: !231)
!231 = !{!232, !233}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !230, file: !41, line: 147, baseType: !104, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !230, file: !41, line: 148, baseType: !234, size: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathConvertFunc", file: !41, line: 138, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!73, !238, !73}
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectPtr", file: !41, line: 115, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObject", file: !41, line: 114, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathObject", file: !41, line: 116, size: 576, elements: !242)
!242 = !{!243, !245, !255, !256, !258, !259, !260, !261, !262}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !241, file: !41, line: 117, baseType: !244, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectType", file: !41, line: 112, baseType: !40)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "nodesetval", scope: !241, file: !41, line: 118, baseType: !246, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSetPtr", file: !41, line: 82, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSet", file: !41, line: 81, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNodeSet", file: !41, line: 83, size: 128, elements: !250)
!250 = !{!251, !252, !253}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !249, file: !41, line: 84, baseType: !73, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !249, file: !41, line: 85, baseType: !73, size: 32, offset: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !249, file: !41, line: 86, baseType: !254, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "boolval", scope: !241, file: !41, line: 119, baseType: !73, size: 32, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "floatval", scope: !241, file: !41, line: 120, baseType: !257, size: 64, offset: 192)
!257 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "stringval", scope: !241, file: !41, line: 121, baseType: !130, size: 64, offset: 256)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !241, file: !41, line: 122, baseType: !61, size: 64, offset: 320)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !241, file: !41, line: 123, baseType: !73, size: 32, offset: 384)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "user2", scope: !241, file: !41, line: 124, baseType: !61, size: 64, offset: 448)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "index2", scope: !241, file: !41, line: 125, baseType: !73, size: 32, offset: 512)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "nb_funcs_unused", scope: !209, file: !41, line: 302, baseType: !73, size: 32, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "max_funcs_unused", scope: !209, file: !41, line: 303, baseType: !73, size: 32, offset: 416)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "funcHash", scope: !209, file: !41, line: 304, baseType: !219, size: 64, offset: 448)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "nb_axis", scope: !209, file: !41, line: 306, baseType: !73, size: 32, offset: 512)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "max_axis", scope: !209, file: !41, line: 307, baseType: !73, size: 32, offset: 544)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "axis", scope: !209, file: !41, line: 308, baseType: !269, size: 64, offset: 576)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxisPtr", file: !41, line: 204, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxis", file: !41, line: 203, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathAxis", file: !41, line: 205, size: 128, elements: !273)
!273 = !{!274, !275}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !272, file: !41, line: 206, baseType: !104, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !272, file: !41, line: 207, baseType: !276, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxisFunc", file: !41, line: 196, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!238, !280, !238}
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathParserContextPtr", file: !41, line: 42, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathParserContext", file: !41, line: 41, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathParserContext", file: !41, line: 377, size: 704, elements: !284)
!284 = !{!285, !286, !287, !288, !289, !290, !291, !292, !294, !299, !300, !301}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !283, file: !41, line: 378, baseType: !104, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !283, file: !41, line: 379, baseType: !104, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !283, file: !41, line: 381, baseType: !73, size: 32, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !283, file: !41, line: 383, baseType: !206, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !283, file: !41, line: 384, baseType: !238, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "valueNr", scope: !283, file: !41, line: 385, baseType: !73, size: 32, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "valueMax", scope: !283, file: !41, line: 386, baseType: !73, size: 32, offset: 352)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "valueTab", scope: !283, file: !41, line: 387, baseType: !293, size: 64, offset: 384)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !283, file: !41, line: 389, baseType: !295, size: 64, offset: 448)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathCompExprPtr", file: !41, line: 369, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathCompExpr", file: !41, line: 368, baseType: !298)
!298 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathCompExpr", file: !41, line: 368, flags: DIFlagFwdDecl)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "xptr", scope: !283, file: !41, line: 390, baseType: !73, size: 32, offset: 512)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ancestor", scope: !283, file: !41, line: 391, baseType: !213, size: 64, offset: 576)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "valueFrame", scope: !283, file: !41, line: 393, baseType: !73, size: 32, offset: 640)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !209, file: !41, line: 311, baseType: !303, size: 64, offset: 640)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !4, line: 387, baseType: !117)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "nsNr", scope: !209, file: !41, line: 312, baseType: !73, size: 32, offset: 704)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !209, file: !41, line: 313, baseType: !61, size: 64, offset: 768)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "contextSize", scope: !209, file: !41, line: 316, baseType: !73, size: 32, offset: 832)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "proximityPosition", scope: !209, file: !41, line: 317, baseType: !73, size: 32, offset: 864)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "xptr", scope: !209, file: !41, line: 320, baseType: !73, size: 32, offset: 896)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "here", scope: !209, file: !41, line: 321, baseType: !213, size: 64, offset: 960)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !209, file: !41, line: 322, baseType: !213, size: 64, offset: 1024)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "nsHash", scope: !209, file: !41, line: 325, baseType: !219, size: 64, offset: 1088)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "varLookupFunc", scope: !209, file: !41, line: 326, baseType: !314, size: 64, offset: 1152)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathVariableLookupFunc", file: !41, line: 237, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!238, !61, !104, !104}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "varLookupData", scope: !209, file: !41, line: 327, baseType: !61, size: 64, offset: 1216)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !209, file: !41, line: 330, baseType: !61, size: 64, offset: 1280)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !209, file: !41, line: 333, baseType: !104, size: 64, offset: 1344)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "functionURI", scope: !209, file: !41, line: 334, baseType: !104, size: 64, offset: 1408)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "funcLookupFunc", scope: !209, file: !41, line: 337, baseType: !323, size: 64, offset: 1472)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathFuncLookupFunc", file: !41, line: 252, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!327, !61, !104, !104}
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathFunction", file: !41, line: 220, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !280, !73}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "funcLookupData", scope: !209, file: !41, line: 338, baseType: !61, size: 64, offset: 1536)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "tmpNsList", scope: !209, file: !41, line: 341, baseType: !303, size: 64, offset: 1600)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tmpNsNr", scope: !209, file: !41, line: 342, baseType: !73, size: 32, offset: 1664)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !209, file: !41, line: 345, baseType: !61, size: 64, offset: 1728)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !209, file: !41, line: 346, baseType: !336, size: 64, offset: 1792)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStructuredErrorFunc", file: !54, line: 856, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !61, !340}
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorPtr", file: !54, line: 77, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlError", file: !54, line: 76, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlError", file: !54, line: 78, size: 704, elements: !344)
!344 = !{!345, !346, !347, !348, !350, !351, !352, !353, !354, !355, !356, !357, !358}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !343, file: !54, line: 79, baseType: !73, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !343, file: !54, line: 80, baseType: !73, size: 32, offset: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !343, file: !54, line: 81, baseType: !96, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !343, file: !54, line: 82, baseType: !349, size: 32, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorLevel", file: !54, line: 29, baseType: !53)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !343, file: !54, line: 83, baseType: !96, size: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !343, file: !54, line: 84, baseType: !73, size: 32, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "str1", scope: !343, file: !54, line: 85, baseType: !96, size: 64, offset: 320)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "str2", scope: !343, file: !54, line: 86, baseType: !96, size: 64, offset: 384)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "str3", scope: !343, file: !54, line: 87, baseType: !96, size: 64, offset: 448)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "int1", scope: !343, file: !54, line: 88, baseType: !73, size: 32, offset: 512)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "int2", scope: !343, file: !54, line: 89, baseType: !73, size: 32, offset: 544)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ctxt", scope: !343, file: !54, line: 90, baseType: !61, size: 64, offset: 576)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !343, file: !54, line: 91, baseType: !61, size: 64, offset: 640)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "lastError", scope: !209, file: !41, line: 347, baseType: !342, size: 704, offset: 1856)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "debugNode", scope: !209, file: !41, line: 348, baseType: !213, size: 64, offset: 2560)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !209, file: !41, line: 351, baseType: !362, size: 64, offset: 2624)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !191, line: 25, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !191, line: 24, baseType: !190)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !209, file: !41, line: 353, baseType: !73, size: 32, offset: 2688)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !209, file: !41, line: 356, baseType: !61, size: 64, offset: 2752)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "opLimit", scope: !209, file: !41, line: 359, baseType: !368, size: 64, offset: 2816)
!368 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "opCount", scope: !209, file: !41, line: 360, baseType: !368, size: 64, offset: 2880)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !209, file: !41, line: 361, baseType: !73, size: 32, offset: 2944)
!371 = !DILocation(line: 22, column: 24, scope: !70)
!372 = !DILocation(line: 22, column: 49, scope: !70)
!373 = !DILocation(line: 22, column: 30, scope: !70)
!374 = !DILocation(line: 23, column: 9, scope: !375)
!375 = distinct !DILexicalBlock(scope: !70, file: !1, line: 23, column: 9)
!376 = !DILocation(line: 23, column: 13, scope: !375)
!377 = !DILocation(line: 23, column: 9, scope: !70)
!378 = !DILocation(line: 24, column: 20, scope: !379)
!379 = distinct !DILexicalBlock(scope: !375, file: !1, line: 23, column: 22)
!380 = !DILocation(line: 24, column: 9, scope: !379)
!381 = !DILocation(line: 25, column: 9, scope: !379)
!382 = !DILocation(line: 26, column: 9, scope: !379)
!383 = !DILocalVariable(name: "root", scope: !70, file: !1, line: 31, type: !213)
!384 = !DILocation(line: 31, column: 16, scope: !70)
!385 = !DILocation(line: 31, column: 44, scope: !70)
!386 = !DILocation(line: 31, column: 23, scope: !70)
!387 = !DILocation(line: 32, column: 9, scope: !388)
!388 = distinct !DILexicalBlock(scope: !70, file: !1, line: 32, column: 9)
!389 = !DILocation(line: 32, column: 14, scope: !388)
!390 = !DILocation(line: 32, column: 9, scope: !70)
!391 = !DILocation(line: 33, column: 29, scope: !392)
!392 = distinct !DILexicalBlock(scope: !388, file: !1, line: 32, column: 23)
!393 = !DILocation(line: 33, column: 9, scope: !392)
!394 = !DILocation(line: 34, column: 20, scope: !392)
!395 = !DILocation(line: 34, column: 9, scope: !392)
!396 = !DILocation(line: 35, column: 9, scope: !392)
!397 = !DILocation(line: 36, column: 9, scope: !392)
!398 = !DILocalVariable(name: "node_set", scope: !70, file: !1, line: 40, type: !238)
!399 = !DILocation(line: 40, column: 23, scope: !70)
!400 = !DILocation(line: 40, column: 53, scope: !70)
!401 = !DILocation(line: 40, column: 34, scope: !70)
!402 = !DILocation(line: 41, column: 9, scope: !403)
!403 = distinct !DILexicalBlock(scope: !70, file: !1, line: 41, column: 9)
!404 = !DILocation(line: 41, column: 18, scope: !403)
!405 = !DILocation(line: 41, column: 9, scope: !70)
!406 = !DILocation(line: 42, column: 29, scope: !407)
!407 = distinct !DILexicalBlock(scope: !403, file: !1, line: 41, column: 27)
!408 = !DILocation(line: 42, column: 9, scope: !407)
!409 = !DILocation(line: 43, column: 20, scope: !407)
!410 = !DILocation(line: 43, column: 9, scope: !407)
!411 = !DILocation(line: 44, column: 9, scope: !407)
!412 = !DILocation(line: 45, column: 9, scope: !407)
!413 = !DILocalVariable(name: "target_set", scope: !70, file: !1, line: 54, type: !238)
!414 = !DILocation(line: 54, column: 23, scope: !70)
!415 = !DILocation(line: 54, column: 36, scope: !70)
!416 = !DILocation(line: 55, column: 9, scope: !417)
!417 = distinct !DILexicalBlock(scope: !70, file: !1, line: 55, column: 9)
!418 = !DILocation(line: 55, column: 20, scope: !417)
!419 = !DILocation(line: 55, column: 9, scope: !70)
!420 = !DILocation(line: 56, column: 29, scope: !421)
!421 = distinct !DILexicalBlock(scope: !417, file: !1, line: 55, column: 29)
!422 = !DILocation(line: 56, column: 9, scope: !421)
!423 = !DILocation(line: 57, column: 29, scope: !421)
!424 = !DILocation(line: 57, column: 9, scope: !421)
!425 = !DILocation(line: 58, column: 20, scope: !421)
!426 = !DILocation(line: 58, column: 9, scope: !421)
!427 = !DILocation(line: 59, column: 9, scope: !421)
!428 = !DILocation(line: 60, column: 9, scope: !421)
!429 = !DILocalVariable(name: "i", scope: !70, file: !1, line: 65, type: !73)
!430 = !DILocation(line: 65, column: 9, scope: !70)
!431 = !DILocation(line: 66, column: 12, scope: !432)
!432 = distinct !DILexicalBlock(scope: !70, file: !1, line: 66, column: 5)
!433 = !DILocation(line: 66, column: 10, scope: !432)
!434 = !DILocation(line: 66, column: 17, scope: !435)
!435 = distinct !DILexicalBlock(scope: !432, file: !1, line: 66, column: 5)
!436 = !DILocation(line: 66, column: 19, scope: !435)
!437 = !DILocation(line: 66, column: 5, scope: !432)
!438 = !DILocation(line: 68, column: 28, scope: !439)
!439 = distinct !DILexicalBlock(scope: !435, file: !1, line: 66, column: 29)
!440 = !DILocation(line: 68, column: 40, scope: !439)
!441 = !DILocation(line: 68, column: 52, scope: !439)
!442 = !DILocation(line: 68, column: 9, scope: !439)
!443 = !DILocation(line: 69, column: 5, scope: !439)
!444 = !DILocation(line: 66, column: 25, scope: !435)
!445 = !DILocation(line: 66, column: 5, scope: !435)
!446 = distinct !{!446, !437, !447, !448}
!447 = !DILocation(line: 69, column: 5, scope: !432)
!448 = !{!"llvm.loop.mustprogress"}
!449 = !DILocation(line: 74, column: 5, scope: !70)
!450 = !DILocation(line: 77, column: 25, scope: !70)
!451 = !DILocation(line: 77, column: 5, scope: !70)
!452 = !DILocation(line: 78, column: 25, scope: !70)
!453 = !DILocation(line: 78, column: 5, scope: !70)
!454 = !DILocation(line: 79, column: 25, scope: !70)
!455 = !DILocation(line: 79, column: 5, scope: !70)
!456 = !DILocation(line: 80, column: 16, scope: !70)
!457 = !DILocation(line: 80, column: 5, scope: !70)
!458 = !DILocation(line: 81, column: 5, scope: !70)
!459 = !DILocation(line: 83, column: 5, scope: !70)
!460 = !DILocation(line: 84, column: 1, scope: !70)

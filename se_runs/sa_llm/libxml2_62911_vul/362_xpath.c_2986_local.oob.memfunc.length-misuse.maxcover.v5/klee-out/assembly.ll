; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/362_xpath.c_2986_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/362_xpath.c_2986_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlDict = type opaque
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlXPathContext = type { %struct._xmlDoc*, %struct._xmlNode*, i32, i32, %struct._xmlHashTable*, i32, i32, %struct._xmlXPathType*, i32, i32, %struct._xmlHashTable*, i32, i32, %struct._xmlXPathAxis*, %struct._xmlNs**, i32, i8*, i32, i32, i32, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlHashTable*, %struct._xmlXPathObject* (i8*, i8*, i8*)*, i8*, i8*, i8*, i8*, void (%struct._xmlXPathParserContext*, i32)* (i8*, i8*, i8*)*, i8*, %struct._xmlNs**, i32, i8*, void (i8*, %struct._xmlError*)*, %struct._xmlError, %struct._xmlNode*, %struct._xmlDict*, i32, i8*, i64, i64, i32 }
%struct._xmlXPathType = type { i8*, i32 (%struct._xmlXPathObject*, i32)* }
%struct._xmlXPathObject = type { i32, %struct._xmlNodeSet*, i32, double, i8*, i8*, i32, i8*, i32 }
%struct._xmlNodeSet = type { i32, i32, %struct._xmlNode** }
%struct._xmlXPathAxis = type { i8*, %struct._xmlXPathObject* (%struct._xmlXPathParserContext*, %struct._xmlXPathObject*)* }
%struct._xmlXPathParserContext = type { i8*, i8*, i32, %struct._xmlXPathContext*, %struct._xmlXPathObject*, i32, i32, %struct._xmlXPathObject**, %struct._xmlXPathCompExpr*, i32, %struct._xmlNode*, i32 }
%struct._xmlXPathCompExpr = type opaque
%struct._xmlHashTable = type opaque
%struct._xmlError = type { i32, i32, i8*, i32, i8*, i32, i8*, i8*, i8*, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [13 x i8] c"symbolic_val\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"input_len\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"noname.xml\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/362_xpath.c_2986_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !75 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlNode*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca %struct._xmlDoc*, align 8
  %6 = alloca %struct._xmlXPathContext*, align 8
  %7 = alloca %struct._xmlXPathObject*, align 8
  %8 = alloca %struct._xmlNode*, align 8
  %9 = alloca %struct._xmlNodeSet*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %2, metadata !80, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.declare(metadata [1024 x i8]* %3, metadata !186, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.declare(metadata i64* %4, metadata !191, metadata !DIExpression()), !dbg !195
  %10 = bitcast %struct._xmlNode** %2 to i8*, !dbg !196
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 8, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)), !dbg !197
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !198
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 1024, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)), !dbg !199
  %12 = bitcast i64* %4 to i8*, !dbg !200
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 8, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)), !dbg !201
  %13 = load i64, i64* %4, align 8, !dbg !202
  %14 = icmp ult i64 %13, 1024, !dbg !203
  %15 = zext i1 %14 to i32, !dbg !203
  %16 = sext i32 %15 to i64, !dbg !202
  call void @klee_assume(i64 noundef %16), !dbg !204
  %17 = load i64, i64* %4, align 8, !dbg !205
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 %17, !dbg !206
  store i8 0, i8* %18, align 1, !dbg !207
  call void @xmlInitParser(), !dbg !208
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %5, metadata !209, metadata !DIExpression()), !dbg !213
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !214
  %20 = load i64, i64* %4, align 8, !dbg !215
  %21 = trunc i64 %20 to i32, !dbg !215
  %22 = call %struct._xmlDoc* @xmlReadMemory(i8* noundef %19, i32 noundef %21, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* noundef null, i32 noundef 0), !dbg !216
  store %struct._xmlDoc* %22, %struct._xmlDoc** %5, align 8, !dbg !213
  %23 = load %struct._xmlDoc*, %struct._xmlDoc** %5, align 8, !dbg !217
  %24 = icmp eq %struct._xmlDoc* %23, null, !dbg !219
  br i1 %24, label %25, label %26, !dbg !220

25:                                               ; preds = %0
  call void @xmlCleanupParser(), !dbg !221
  store i32 0, i32* %1, align 4, !dbg !223
  br label %80, !dbg !223

26:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata %struct._xmlXPathContext** %6, metadata !224, metadata !DIExpression()), !dbg !386
  %27 = load %struct._xmlDoc*, %struct._xmlDoc** %5, align 8, !dbg !387
  %28 = call %struct._xmlXPathContext* @xmlXPathNewContext(%struct._xmlDoc* noundef %27), !dbg !388
  store %struct._xmlXPathContext* %28, %struct._xmlXPathContext** %6, align 8, !dbg !386
  %29 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %6, align 8, !dbg !389
  %30 = icmp eq %struct._xmlXPathContext* %29, null, !dbg !391
  br i1 %30, label %31, label %33, !dbg !392

31:                                               ; preds = %26
  %32 = load %struct._xmlDoc*, %struct._xmlDoc** %5, align 8, !dbg !393
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %32), !dbg !395
  call void @xmlCleanupParser(), !dbg !396
  store i32 0, i32* %1, align 4, !dbg !397
  br label %80, !dbg !397

33:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %7, metadata !398, metadata !DIExpression()), !dbg !399
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !400
  %35 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %6, align 8, !dbg !401
  %36 = call %struct._xmlXPathObject* @xmlXPathEvalExpression(i8* noundef %34, %struct._xmlXPathContext* noundef %35), !dbg !402
  store %struct._xmlXPathObject* %36, %struct._xmlXPathObject** %7, align 8, !dbg !399
  %37 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %7, align 8, !dbg !403
  %38 = icmp ne %struct._xmlXPathObject* %37, null, !dbg !405
  br i1 %38, label %39, label %72, !dbg !406

39:                                               ; preds = %33
  %40 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %7, align 8, !dbg !407
  %41 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %40, i32 0, i32 0, !dbg !408
  %42 = load i32, i32* %41, align 8, !dbg !408
  %43 = icmp eq i32 %42, 1, !dbg !409
  br i1 %43, label %44, label %72, !dbg !410

44:                                               ; preds = %39
  %45 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %7, align 8, !dbg !411
  %46 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %45, i32 0, i32 1, !dbg !412
  %47 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %46, align 8, !dbg !412
  %48 = icmp ne %struct._xmlNodeSet* %47, null, !dbg !413
  br i1 %48, label %49, label %72, !dbg !414

49:                                               ; preds = %44
  %50 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %7, align 8, !dbg !415
  %51 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %50, i32 0, i32 1, !dbg !416
  %52 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %51, align 8, !dbg !416
  %53 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %52, i32 0, i32 0, !dbg !417
  %54 = load i32, i32* %53, align 8, !dbg !417
  %55 = icmp sgt i32 %54, 0, !dbg !418
  br i1 %55, label %56, label %72, !dbg !419

56:                                               ; preds = %49
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %8, metadata !420, metadata !DIExpression()), !dbg !422
  %57 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %7, align 8, !dbg !423
  %58 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %57, i32 0, i32 1, !dbg !424
  %59 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %58, align 8, !dbg !424
  %60 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %59, i32 0, i32 2, !dbg !425
  %61 = load %struct._xmlNode**, %struct._xmlNode*** %60, align 8, !dbg !425
  %62 = getelementptr inbounds %struct._xmlNode*, %struct._xmlNode** %61, i64 0, !dbg !423
  %63 = load %struct._xmlNode*, %struct._xmlNode** %62, align 8, !dbg !423
  store %struct._xmlNode* %63, %struct._xmlNode** %8, align 8, !dbg !422
  call void @llvm.dbg.declare(metadata %struct._xmlNodeSet** %9, metadata !426, metadata !DIExpression()), !dbg !427
  %64 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !428
  %65 = call %struct._xmlNodeSet* @xmlXPathNodeSetCreate(%struct._xmlNode* noundef %64), !dbg !429
  store %struct._xmlNodeSet* %65, %struct._xmlNodeSet** %9, align 8, !dbg !427
  %66 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %9, align 8, !dbg !430
  %67 = icmp ne %struct._xmlNodeSet* %66, null, !dbg !432
  br i1 %67, label %68, label %71, !dbg !433

68:                                               ; preds = %56
  %69 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.5, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !434
  %70 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %9, align 8, !dbg !436
  call void @xmlXPathFreeNodeSet(%struct._xmlNodeSet* noundef %70), !dbg !437
  br label %71, !dbg !438

71:                                               ; preds = %68, %56
  br label %72, !dbg !439

72:                                               ; preds = %71, %49, %44, %39, %33
  %73 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %7, align 8, !dbg !440
  %74 = icmp ne %struct._xmlXPathObject* %73, null, !dbg !442
  br i1 %74, label %75, label %77, !dbg !443

75:                                               ; preds = %72
  %76 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %7, align 8, !dbg !444
  call void @xmlXPathFreeObject(%struct._xmlXPathObject* noundef %76), !dbg !445
  br label %77, !dbg !445

77:                                               ; preds = %75, %72
  %78 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %6, align 8, !dbg !446
  call void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef %78), !dbg !447
  %79 = load %struct._xmlDoc*, %struct._xmlDoc** %5, align 8, !dbg !448
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %79), !dbg !449
  call void @xmlCleanupParser(), !dbg !450
  store i32 0, i32* %1, align 4, !dbg !451
  br label %80, !dbg !451

80:                                               ; preds = %77, %31, %25
  %81 = load i32, i32* %1, align 4, !dbg !452
  ret i32 %81, !dbg !452
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

declare void @xmlInitParser() #2

declare %struct._xmlDoc* @xmlReadMemory(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) #2

declare void @xmlCleanupParser() #2

declare %struct._xmlXPathContext* @xmlXPathNewContext(%struct._xmlDoc* noundef) #2

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare %struct._xmlXPathObject* @xmlXPathEvalExpression(i8* noundef, %struct._xmlXPathContext* noundef) #2

declare %struct._xmlNodeSet* @xmlXPathNodeSetCreate(%struct._xmlNode* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlXPathFreeNodeSet(%struct._xmlNodeSet* noundef) #2

declare void @xmlXPathFreeObject(%struct._xmlXPathObject* noundef) #2

declare void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !60, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/362_xpath.c_2986_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "346038f00558ade901bdb1b2fb48c580")
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
!80 = !DILocalVariable(name: "symbolic_val", scope: !75, file: !1, line: 8, type: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !85)
!85 = !{!86, !87, !89, !90, !92, !93, !94, !95, !96, !158, !161, !163, !180, !181, !182, !184}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !84, file: !4, line: 493, baseType: !61, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !84, file: !4, line: 494, baseType: !88, size: 32, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !84, file: !4, line: 495, baseType: !62, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !84, file: !4, line: 496, baseType: !91, size: 64, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !84, file: !4, line: 497, baseType: !91, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !84, file: !4, line: 498, baseType: !91, size: 64, offset: 320)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !84, file: !4, line: 499, baseType: !91, size: 64, offset: 384)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !84, file: !4, line: 500, baseType: !91, size: 64, offset: 448)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !84, file: !4, line: 501, baseType: !97, size: 64, offset: 512)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !99)
!99 = !{!100, !101, !102, !105, !106, !107, !108, !109, !110, !111, !112, !113, !133, !134, !145, !146, !147, !148, !149, !150, !151, !155, !156, !157}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !98, file: !4, line: 560, baseType: !61, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !98, file: !4, line: 561, baseType: !88, size: 32, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !98, file: !4, line: 562, baseType: !103, size: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !98, file: !4, line: 563, baseType: !91, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !98, file: !4, line: 564, baseType: !91, size: 64, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !98, file: !4, line: 565, baseType: !91, size: 64, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !98, file: !4, line: 566, baseType: !91, size: 64, offset: 384)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !98, file: !4, line: 567, baseType: !91, size: 64, offset: 448)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !98, file: !4, line: 568, baseType: !97, size: 64, offset: 512)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !98, file: !4, line: 571, baseType: !78, size: 32, offset: 576)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !98, file: !4, line: 572, baseType: !78, size: 32, offset: 608)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !98, file: !4, line: 578, baseType: !114, size: 64, offset: 640)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !116)
!116 = !{!117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !115, file: !4, line: 406, baseType: !61, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !115, file: !4, line: 407, baseType: !88, size: 32, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !115, file: !4, line: 408, baseType: !62, size: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !115, file: !4, line: 409, baseType: !91, size: 64, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !115, file: !4, line: 410, baseType: !91, size: 64, offset: 256)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !115, file: !4, line: 411, baseType: !97, size: 64, offset: 320)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !115, file: !4, line: 412, baseType: !91, size: 64, offset: 384)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !115, file: !4, line: 413, baseType: !91, size: 64, offset: 448)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !115, file: !4, line: 414, baseType: !97, size: 64, offset: 512)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !115, file: !4, line: 417, baseType: !61, size: 64, offset: 576)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !115, file: !4, line: 418, baseType: !61, size: 64, offset: 640)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !115, file: !4, line: 419, baseType: !61, size: 64, offset: 704)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !115, file: !4, line: 420, baseType: !61, size: 64, offset: 768)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !115, file: !4, line: 421, baseType: !62, size: 64, offset: 832)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !115, file: !4, line: 422, baseType: !62, size: 64, offset: 896)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !115, file: !4, line: 423, baseType: !61, size: 64, offset: 960)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !98, file: !4, line: 579, baseType: !114, size: 64, offset: 704)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !98, file: !4, line: 580, baseType: !135, size: 64, offset: 768)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !137)
!137 = !{!138, !139, !141, !142, !143, !144}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !136, file: !4, line: 389, baseType: !135, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !136, file: !4, line: 390, baseType: !140, size: 32, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !88)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !136, file: !4, line: 391, baseType: !62, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !136, file: !4, line: 392, baseType: !62, size: 64, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !136, file: !4, line: 393, baseType: !61, size: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !136, file: !4, line: 394, baseType: !97, size: 64, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !98, file: !4, line: 581, baseType: !62, size: 64, offset: 832)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !98, file: !4, line: 582, baseType: !62, size: 64, offset: 896)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !98, file: !4, line: 583, baseType: !61, size: 64, offset: 960)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !98, file: !4, line: 584, baseType: !61, size: 64, offset: 1024)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !98, file: !4, line: 585, baseType: !62, size: 64, offset: 1088)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !98, file: !4, line: 586, baseType: !78, size: 32, offset: 1152)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !98, file: !4, line: 588, baseType: !152, size: 64, offset: 1216)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !154, line: 24, flags: DIFlagFwdDecl)
!154 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!155 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !98, file: !4, line: 589, baseType: !61, size: 64, offset: 1280)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !98, file: !4, line: 590, baseType: !78, size: 32, offset: 1344)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !98, file: !4, line: 592, baseType: !78, size: 32, offset: 1376)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !84, file: !4, line: 504, baseType: !159, size: 64, offset: 576)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !136)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !84, file: !4, line: 505, baseType: !162, size: 64, offset: 640)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !84, file: !4, line: 506, baseType: !164, size: 64, offset: 704)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !166)
!166 = !{!167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !179}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !165, file: !4, line: 434, baseType: !61, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !165, file: !4, line: 435, baseType: !88, size: 32, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !165, file: !4, line: 436, baseType: !62, size: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !165, file: !4, line: 437, baseType: !91, size: 64, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !165, file: !4, line: 438, baseType: !91, size: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !165, file: !4, line: 439, baseType: !91, size: 64, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !165, file: !4, line: 440, baseType: !164, size: 64, offset: 384)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !165, file: !4, line: 441, baseType: !164, size: 64, offset: 448)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !165, file: !4, line: 442, baseType: !97, size: 64, offset: 512)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !165, file: !4, line: 443, baseType: !159, size: 64, offset: 576)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !165, file: !4, line: 444, baseType: !178, size: 32, offset: 640)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !165, file: !4, line: 445, baseType: !61, size: 64, offset: 704)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !84, file: !4, line: 507, baseType: !159, size: 64, offset: 768)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !84, file: !4, line: 508, baseType: !61, size: 64, offset: 832)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !84, file: !4, line: 509, baseType: !183, size: 16, offset: 896)
!183 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !84, file: !4, line: 510, baseType: !183, size: 16, offset: 912)
!185 = !DILocation(line: 8, column: 16, scope: !75)
!186 = !DILocalVariable(name: "input", scope: !75, file: !1, line: 9, type: !187)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 8192, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 1024)
!190 = !DILocation(line: 9, column: 10, scope: !75)
!191 = !DILocalVariable(name: "input_len", scope: !75, file: !1, line: 10, type: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !193, line: 46, baseType: !194)
!193 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!194 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!195 = !DILocation(line: 10, column: 12, scope: !75)
!196 = !DILocation(line: 12, column: 24, scope: !75)
!197 = !DILocation(line: 12, column: 5, scope: !75)
!198 = !DILocation(line: 13, column: 24, scope: !75)
!199 = !DILocation(line: 13, column: 5, scope: !75)
!200 = !DILocation(line: 14, column: 24, scope: !75)
!201 = !DILocation(line: 14, column: 5, scope: !75)
!202 = !DILocation(line: 15, column: 17, scope: !75)
!203 = !DILocation(line: 15, column: 27, scope: !75)
!204 = !DILocation(line: 15, column: 5, scope: !75)
!205 = !DILocation(line: 16, column: 11, scope: !75)
!206 = !DILocation(line: 16, column: 5, scope: !75)
!207 = !DILocation(line: 16, column: 22, scope: !75)
!208 = !DILocation(line: 18, column: 5, scope: !75)
!209 = !DILocalVariable(name: "doc", scope: !75, file: !1, line: 19, type: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !98)
!213 = !DILocation(line: 19, column: 15, scope: !75)
!214 = !DILocation(line: 19, column: 35, scope: !75)
!215 = !DILocation(line: 19, column: 42, scope: !75)
!216 = !DILocation(line: 19, column: 21, scope: !75)
!217 = !DILocation(line: 20, column: 9, scope: !218)
!218 = distinct !DILexicalBlock(scope: !75, file: !1, line: 20, column: 9)
!219 = !DILocation(line: 20, column: 13, scope: !218)
!220 = !DILocation(line: 20, column: 9, scope: !75)
!221 = !DILocation(line: 21, column: 9, scope: !222)
!222 = distinct !DILexicalBlock(scope: !218, file: !1, line: 20, column: 22)
!223 = !DILocation(line: 22, column: 9, scope: !222)
!224 = !DILocalVariable(name: "ctx", scope: !75, file: !1, line: 25, type: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathContextPtr", file: !41, line: 40, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathContext", file: !41, line: 39, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathContext", file: !41, line: 290, size: 3008, elements: !229)
!229 = !{!230, !231, !232, !233, !234, !240, !241, !242, !279, !280, !281, !282, !283, !284, !318, !321, !322, !323, !324, !325, !326, !327, !328, !329, !334, !335, !336, !337, !338, !347, !348, !349, !350, !351, !375, !376, !377, !381, !382, !383, !384, !385}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !228, file: !41, line: 291, baseType: !210, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !228, file: !41, line: 292, baseType: !81, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "nb_variables_unused", scope: !228, file: !41, line: 294, baseType: !78, size: 32, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "max_variables_unused", scope: !228, file: !41, line: 295, baseType: !78, size: 32, offset: 160)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "varHash", scope: !228, file: !41, line: 296, baseType: !235, size: 64, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !236, line: 22, baseType: !237)
!236 = !DIFile(filename: "/usr/include/libxml2/libxml/hash.h", directory: "", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !236, line: 21, baseType: !239)
!239 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !236, line: 21, flags: DIFlagFwdDecl)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "nb_types", scope: !228, file: !41, line: 298, baseType: !78, size: 32, offset: 256)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "max_types", scope: !228, file: !41, line: 299, baseType: !78, size: 32, offset: 288)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !228, file: !41, line: 300, baseType: !243, size: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathTypePtr", file: !41, line: 145, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathType", file: !41, line: 144, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathType", file: !41, line: 146, size: 128, elements: !247)
!247 = !{!248, !249}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !246, file: !41, line: 147, baseType: !62, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !246, file: !41, line: 148, baseType: !250, size: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathConvertFunc", file: !41, line: 138, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!78, !254, !78}
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectPtr", file: !41, line: 115, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObject", file: !41, line: 114, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathObject", file: !41, line: 116, size: 576, elements: !258)
!258 = !{!259, !261, !271, !272, !274, !275, !276, !277, !278}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !257, file: !41, line: 117, baseType: !260, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectType", file: !41, line: 112, baseType: !40)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "nodesetval", scope: !257, file: !41, line: 118, baseType: !262, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSetPtr", file: !41, line: 82, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSet", file: !41, line: 81, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNodeSet", file: !41, line: 83, size: 128, elements: !266)
!266 = !{!267, !268, !269}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !265, file: !41, line: 84, baseType: !78, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !265, file: !41, line: 85, baseType: !78, size: 32, offset: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !265, file: !41, line: 86, baseType: !270, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "boolval", scope: !257, file: !41, line: 119, baseType: !78, size: 32, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "floatval", scope: !257, file: !41, line: 120, baseType: !273, size: 64, offset: 192)
!273 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "stringval", scope: !257, file: !41, line: 121, baseType: !162, size: 64, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !257, file: !41, line: 122, baseType: !61, size: 64, offset: 320)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !257, file: !41, line: 123, baseType: !78, size: 32, offset: 384)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "user2", scope: !257, file: !41, line: 124, baseType: !61, size: 64, offset: 448)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "index2", scope: !257, file: !41, line: 125, baseType: !78, size: 32, offset: 512)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "nb_funcs_unused", scope: !228, file: !41, line: 302, baseType: !78, size: 32, offset: 384)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "max_funcs_unused", scope: !228, file: !41, line: 303, baseType: !78, size: 32, offset: 416)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "funcHash", scope: !228, file: !41, line: 304, baseType: !235, size: 64, offset: 448)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "nb_axis", scope: !228, file: !41, line: 306, baseType: !78, size: 32, offset: 512)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "max_axis", scope: !228, file: !41, line: 307, baseType: !78, size: 32, offset: 544)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "axis", scope: !228, file: !41, line: 308, baseType: !285, size: 64, offset: 576)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxisPtr", file: !41, line: 204, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxis", file: !41, line: 203, baseType: !288)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathAxis", file: !41, line: 205, size: 128, elements: !289)
!289 = !{!290, !291}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !288, file: !41, line: 206, baseType: !62, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !288, file: !41, line: 207, baseType: !292, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxisFunc", file: !41, line: 196, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!254, !296, !254}
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathParserContextPtr", file: !41, line: 42, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathParserContext", file: !41, line: 41, baseType: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathParserContext", file: !41, line: 377, size: 704, elements: !300)
!300 = !{!301, !302, !303, !304, !305, !306, !307, !308, !310, !315, !316, !317}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !299, file: !41, line: 378, baseType: !62, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !299, file: !41, line: 379, baseType: !62, size: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !299, file: !41, line: 381, baseType: !78, size: 32, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !299, file: !41, line: 383, baseType: !225, size: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !299, file: !41, line: 384, baseType: !254, size: 64, offset: 256)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "valueNr", scope: !299, file: !41, line: 385, baseType: !78, size: 32, offset: 320)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "valueMax", scope: !299, file: !41, line: 386, baseType: !78, size: 32, offset: 352)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "valueTab", scope: !299, file: !41, line: 387, baseType: !309, size: 64, offset: 384)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !299, file: !41, line: 389, baseType: !311, size: 64, offset: 448)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathCompExprPtr", file: !41, line: 369, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathCompExpr", file: !41, line: 368, baseType: !314)
!314 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathCompExpr", file: !41, line: 368, flags: DIFlagFwdDecl)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "xptr", scope: !299, file: !41, line: 390, baseType: !78, size: 32, offset: 512)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "ancestor", scope: !299, file: !41, line: 391, baseType: !81, size: 64, offset: 576)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "valueFrame", scope: !299, file: !41, line: 393, baseType: !78, size: 32, offset: 640)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !228, file: !41, line: 311, baseType: !319, size: 64, offset: 640)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !4, line: 387, baseType: !159)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "nsNr", scope: !228, file: !41, line: 312, baseType: !78, size: 32, offset: 704)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !228, file: !41, line: 313, baseType: !61, size: 64, offset: 768)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "contextSize", scope: !228, file: !41, line: 316, baseType: !78, size: 32, offset: 832)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "proximityPosition", scope: !228, file: !41, line: 317, baseType: !78, size: 32, offset: 864)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "xptr", scope: !228, file: !41, line: 320, baseType: !78, size: 32, offset: 896)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "here", scope: !228, file: !41, line: 321, baseType: !81, size: 64, offset: 960)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !228, file: !41, line: 322, baseType: !81, size: 64, offset: 1024)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "nsHash", scope: !228, file: !41, line: 325, baseType: !235, size: 64, offset: 1088)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "varLookupFunc", scope: !228, file: !41, line: 326, baseType: !330, size: 64, offset: 1152)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathVariableLookupFunc", file: !41, line: 237, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!254, !61, !62, !62}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "varLookupData", scope: !228, file: !41, line: 327, baseType: !61, size: 64, offset: 1216)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !228, file: !41, line: 330, baseType: !61, size: 64, offset: 1280)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !228, file: !41, line: 333, baseType: !62, size: 64, offset: 1344)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "functionURI", scope: !228, file: !41, line: 334, baseType: !62, size: 64, offset: 1408)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "funcLookupFunc", scope: !228, file: !41, line: 337, baseType: !339, size: 64, offset: 1472)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathFuncLookupFunc", file: !41, line: 252, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!343, !61, !62, !62}
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathFunction", file: !41, line: 220, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !296, !78}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "funcLookupData", scope: !228, file: !41, line: 338, baseType: !61, size: 64, offset: 1536)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tmpNsList", scope: !228, file: !41, line: 341, baseType: !319, size: 64, offset: 1600)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tmpNsNr", scope: !228, file: !41, line: 342, baseType: !78, size: 32, offset: 1664)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !228, file: !41, line: 345, baseType: !61, size: 64, offset: 1728)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !228, file: !41, line: 346, baseType: !352, size: 64, offset: 1792)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStructuredErrorFunc", file: !54, line: 856, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !61, !356}
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorPtr", file: !54, line: 77, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlError", file: !54, line: 76, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlError", file: !54, line: 78, size: 704, elements: !360)
!360 = !{!361, !362, !363, !364, !366, !367, !368, !369, !370, !371, !372, !373, !374}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !359, file: !54, line: 79, baseType: !78, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !359, file: !54, line: 80, baseType: !78, size: 32, offset: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !359, file: !54, line: 81, baseType: !103, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !359, file: !54, line: 82, baseType: !365, size: 32, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorLevel", file: !54, line: 29, baseType: !53)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !359, file: !54, line: 83, baseType: !103, size: 64, offset: 192)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !359, file: !54, line: 84, baseType: !78, size: 32, offset: 256)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "str1", scope: !359, file: !54, line: 85, baseType: !103, size: 64, offset: 320)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "str2", scope: !359, file: !54, line: 86, baseType: !103, size: 64, offset: 384)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "str3", scope: !359, file: !54, line: 87, baseType: !103, size: 64, offset: 448)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "int1", scope: !359, file: !54, line: 88, baseType: !78, size: 32, offset: 512)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "int2", scope: !359, file: !54, line: 89, baseType: !78, size: 32, offset: 544)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "ctxt", scope: !359, file: !54, line: 90, baseType: !61, size: 64, offset: 576)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !359, file: !54, line: 91, baseType: !61, size: 64, offset: 640)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "lastError", scope: !228, file: !41, line: 347, baseType: !358, size: 704, offset: 1856)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "debugNode", scope: !228, file: !41, line: 348, baseType: !81, size: 64, offset: 2560)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !228, file: !41, line: 351, baseType: !378, size: 64, offset: 2624)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !154, line: 25, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !154, line: 24, baseType: !153)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !228, file: !41, line: 353, baseType: !78, size: 32, offset: 2688)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !228, file: !41, line: 356, baseType: !61, size: 64, offset: 2752)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "opLimit", scope: !228, file: !41, line: 359, baseType: !194, size: 64, offset: 2816)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "opCount", scope: !228, file: !41, line: 360, baseType: !194, size: 64, offset: 2880)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !228, file: !41, line: 361, baseType: !78, size: 32, offset: 2944)
!386 = !DILocation(line: 25, column: 24, scope: !75)
!387 = !DILocation(line: 25, column: 49, scope: !75)
!388 = !DILocation(line: 25, column: 30, scope: !75)
!389 = !DILocation(line: 26, column: 9, scope: !390)
!390 = distinct !DILexicalBlock(scope: !75, file: !1, line: 26, column: 9)
!391 = !DILocation(line: 26, column: 13, scope: !390)
!392 = !DILocation(line: 26, column: 9, scope: !75)
!393 = !DILocation(line: 27, column: 20, scope: !394)
!394 = distinct !DILexicalBlock(scope: !390, file: !1, line: 26, column: 22)
!395 = !DILocation(line: 27, column: 9, scope: !394)
!396 = !DILocation(line: 28, column: 9, scope: !394)
!397 = !DILocation(line: 29, column: 9, scope: !394)
!398 = !DILocalVariable(name: "result", scope: !75, file: !1, line: 32, type: !254)
!399 = !DILocation(line: 32, column: 23, scope: !75)
!400 = !DILocation(line: 32, column: 71, scope: !75)
!401 = !DILocation(line: 32, column: 78, scope: !75)
!402 = !DILocation(line: 32, column: 32, scope: !75)
!403 = !DILocation(line: 33, column: 9, scope: !404)
!404 = distinct !DILexicalBlock(scope: !75, file: !1, line: 33, column: 9)
!405 = !DILocation(line: 33, column: 16, scope: !404)
!406 = !DILocation(line: 33, column: 24, scope: !404)
!407 = !DILocation(line: 33, column: 27, scope: !404)
!408 = !DILocation(line: 33, column: 35, scope: !404)
!409 = !DILocation(line: 33, column: 40, scope: !404)
!410 = !DILocation(line: 33, column: 57, scope: !404)
!411 = !DILocation(line: 33, column: 60, scope: !404)
!412 = !DILocation(line: 33, column: 68, scope: !404)
!413 = !DILocation(line: 33, column: 79, scope: !404)
!414 = !DILocation(line: 33, column: 87, scope: !404)
!415 = !DILocation(line: 33, column: 90, scope: !404)
!416 = !DILocation(line: 33, column: 98, scope: !404)
!417 = !DILocation(line: 33, column: 110, scope: !404)
!418 = !DILocation(line: 33, column: 117, scope: !404)
!419 = !DILocation(line: 33, column: 9, scope: !75)
!420 = !DILocalVariable(name: "node", scope: !421, file: !1, line: 34, type: !81)
!421 = distinct !DILexicalBlock(scope: !404, file: !1, line: 33, column: 122)
!422 = !DILocation(line: 34, column: 20, scope: !421)
!423 = !DILocation(line: 34, column: 27, scope: !421)
!424 = !DILocation(line: 34, column: 35, scope: !421)
!425 = !DILocation(line: 34, column: 47, scope: !421)
!426 = !DILocalVariable(name: "nodeset", scope: !421, file: !1, line: 35, type: !262)
!427 = !DILocation(line: 35, column: 23, scope: !421)
!428 = !DILocation(line: 35, column: 55, scope: !421)
!429 = !DILocation(line: 35, column: 33, scope: !421)
!430 = !DILocation(line: 36, column: 13, scope: !431)
!431 = distinct !DILexicalBlock(scope: !421, file: !1, line: 36, column: 13)
!432 = !DILocation(line: 36, column: 21, scope: !431)
!433 = !DILocation(line: 36, column: 13, scope: !421)
!434 = !DILocation(line: 37, column: 13, scope: !435)
!435 = distinct !DILexicalBlock(scope: !431, file: !1, line: 36, column: 30)
!436 = !DILocation(line: 38, column: 33, scope: !435)
!437 = !DILocation(line: 38, column: 13, scope: !435)
!438 = !DILocation(line: 39, column: 9, scope: !435)
!439 = !DILocation(line: 40, column: 5, scope: !421)
!440 = !DILocation(line: 42, column: 9, scope: !441)
!441 = distinct !DILexicalBlock(scope: !75, file: !1, line: 42, column: 9)
!442 = !DILocation(line: 42, column: 16, scope: !441)
!443 = !DILocation(line: 42, column: 9, scope: !75)
!444 = !DILocation(line: 42, column: 44, scope: !441)
!445 = !DILocation(line: 42, column: 25, scope: !441)
!446 = !DILocation(line: 43, column: 25, scope: !75)
!447 = !DILocation(line: 43, column: 5, scope: !75)
!448 = !DILocation(line: 44, column: 16, scope: !75)
!449 = !DILocation(line: 44, column: 5, scope: !75)
!450 = !DILocation(line: 45, column: 5, scope: !75)
!451 = !DILocation(line: 46, column: 5, scope: !75)
!452 = !DILocation(line: 47, column: 1, scope: !75)

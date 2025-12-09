; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/324_xpath.c_9202_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/324_xpath.c_9202_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
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

@.str = private unnamed_addr constant [12 x i8] c"xml_content\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"expr_buf\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"noname.xml\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/324_xpath.c_9202_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !79 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca %struct._xmlXPathContext*, align 8
  %4 = alloca %struct._xmlXPathObject*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [256 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !84, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.declare(metadata %struct._xmlXPathContext** %3, metadata !188, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %4, metadata !355, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.declare(metadata i8** %5, metadata !357, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.declare(metadata i64* %6, metadata !359, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.declare(metadata i8** %7, metadata !363, metadata !DIExpression()), !dbg !364
  call void @xmlInitParser(), !dbg !365
  call void @xmlCheckVersion(i32 noundef 20914), !dbg !366
  store i64 1024, i64* %6, align 8, !dbg !367
  %9 = load i64, i64* %6, align 8, !dbg !368
  %10 = add i64 %9, 1, !dbg !369
  %11 = call noalias i8* @malloc(i64 noundef %10) #5, !dbg !370
  store i8* %11, i8** %5, align 8, !dbg !371
  %12 = load i8*, i8** %5, align 8, !dbg !372
  %13 = load i64, i64* %6, align 8, !dbg !373
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef %13, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)), !dbg !374
  %14 = load i8*, i8** %5, align 8, !dbg !375
  %15 = load i64, i64* %6, align 8, !dbg !376
  %16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !375
  store i8 0, i8* %16, align 1, !dbg !377
  call void @llvm.dbg.declare(metadata [256 x i8]* %8, metadata !378, metadata !DIExpression()), !dbg !382
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0, !dbg !383
  call void @klee_make_symbolic(i8* noundef %17, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !384
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 255, !dbg !385
  store i8 0, i8* %18, align 1, !dbg !386
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0, !dbg !387
  store i8* %19, i8** %7, align 8, !dbg !388
  %20 = load i8*, i8** %5, align 8, !dbg !389
  %21 = load i64, i64* %6, align 8, !dbg !390
  %22 = trunc i64 %21 to i32, !dbg !390
  %23 = call %struct._xmlDoc* @xmlReadMemory(i8* noundef %20, i32 noundef %22, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* noundef null, i32 noundef 0), !dbg !391
  store %struct._xmlDoc* %23, %struct._xmlDoc** %2, align 8, !dbg !392
  %24 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !393
  %25 = icmp eq %struct._xmlDoc* %24, null, !dbg !395
  br i1 %25, label %26, label %28, !dbg !396

26:                                               ; preds = %0
  %27 = load i8*, i8** %5, align 8, !dbg !397
  call void @free(i8* noundef %27) #5, !dbg !399
  call void @xmlCleanupParser(), !dbg !400
  store i32 0, i32* %1, align 4, !dbg !401
  br label %67, !dbg !401

28:                                               ; preds = %0
  %29 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !402
  %30 = call %struct._xmlXPathContext* @xmlXPathNewContext(%struct._xmlDoc* noundef %29), !dbg !403
  store %struct._xmlXPathContext* %30, %struct._xmlXPathContext** %3, align 8, !dbg !404
  %31 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %3, align 8, !dbg !405
  %32 = icmp eq %struct._xmlXPathContext* %31, null, !dbg !407
  br i1 %32, label %33, label %36, !dbg !408

33:                                               ; preds = %28
  %34 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !409
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %34), !dbg !411
  %35 = load i8*, i8** %5, align 8, !dbg !412
  call void @free(i8* noundef %35) #5, !dbg !413
  call void @xmlCleanupParser(), !dbg !414
  store i32 0, i32* %1, align 4, !dbg !415
  br label %67, !dbg !415

36:                                               ; preds = %28
  %37 = load i8*, i8** %7, align 8, !dbg !416
  %38 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %3, align 8, !dbg !417
  %39 = call %struct._xmlXPathObject* @xmlXPathEvalExpression(i8* noundef %37, %struct._xmlXPathContext* noundef %38), !dbg !418
  store %struct._xmlXPathObject* %39, %struct._xmlXPathObject** %4, align 8, !dbg !419
  %40 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !420
  %41 = icmp ne %struct._xmlXPathObject* %40, null, !dbg !422
  br i1 %41, label %42, label %63, !dbg !423

42:                                               ; preds = %36
  %43 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !424
  %44 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %43, i32 0, i32 0, !dbg !427
  %45 = load i32, i32* %44, align 8, !dbg !427
  %46 = icmp eq i32 %45, 1, !dbg !428
  br i1 %46, label %47, label %61, !dbg !429

47:                                               ; preds = %42
  %48 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !430
  %49 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %48, i32 0, i32 1, !dbg !431
  %50 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %49, align 8, !dbg !431
  %51 = icmp ne %struct._xmlNodeSet* %50, null, !dbg !430
  br i1 %51, label %52, label %61, !dbg !432

52:                                               ; preds = %47
  %53 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !433
  %54 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %53, i32 0, i32 1, !dbg !434
  %55 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %54, align 8, !dbg !434
  %56 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %55, i32 0, i32 0, !dbg !435
  %57 = load i32, i32* %56, align 8, !dbg !435
  %58 = icmp sgt i32 %57, 1, !dbg !436
  br i1 %58, label %59, label %61, !dbg !437

59:                                               ; preds = %52
  %60 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.4, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !438
  br label %61, !dbg !440

61:                                               ; preds = %59, %52, %47, %42
  %62 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !441
  call void @xmlXPathFreeObject(%struct._xmlXPathObject* noundef %62), !dbg !442
  br label %63, !dbg !443

63:                                               ; preds = %61, %36
  %64 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %3, align 8, !dbg !444
  call void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef %64), !dbg !445
  %65 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !446
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %65), !dbg !447
  %66 = load i8*, i8** %5, align 8, !dbg !448
  call void @free(i8* noundef %66) #5, !dbg !449
  call void @xmlCleanupParser(), !dbg !450
  store i32 0, i32* %1, align 4, !dbg !451
  br label %67, !dbg !451

67:                                               ; preds = %63, %33, %26
  %68 = load i32, i32* %1, align 4, !dbg !452
  ret i32 %68, !dbg !452
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @xmlInitParser() #2

declare void @xmlCheckVersion(i32 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare %struct._xmlDoc* @xmlReadMemory(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

declare void @xmlCleanupParser() #2

declare %struct._xmlXPathContext* @xmlXPathNewContext(%struct._xmlDoc* noundef) #2

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare %struct._xmlXPathObject* @xmlXPathEvalExpression(i8* noundef, %struct._xmlXPathContext* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

declare void @xmlXPathFreeObject(%struct._xmlXPathObject* noundef) #2

declare void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !60, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/324_xpath.c_9202_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "b16a9d8fba0a3b856e293a83eaee57ea")
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
!60 = !{!61, !65, !68, !69}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !63, line: 28, baseType: !64)
!63 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!64 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!71 = !{i32 7, !"Dwarf Version", i32 5}
!72 = !{i32 2, !"Debug Info Version", i32 3}
!73 = !{i32 1, !"wchar_size", i32 4}
!74 = !{i32 7, !"PIC Level", i32 2}
!75 = !{i32 7, !"PIE Level", i32 2}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"Ubuntu clang version 14.0.6"}
!79 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !80, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !83)
!80 = !DISubroutineType(types: !81)
!81 = !{!82}
!82 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!83 = !{}
!84 = !DILocalVariable(name: "doc", scope: !79, file: !1, line: 8, type: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !89)
!89 = !{!90, !91, !93, !95, !145, !146, !147, !148, !149, !150, !151, !152, !172, !173, !174, !175, !176, !177, !178, !179, !180, !184, !185, !186}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !88, file: !4, line: 560, baseType: !68, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !88, file: !4, line: 561, baseType: !92, size: 32, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !88, file: !4, line: 562, baseType: !94, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !88, file: !4, line: 563, baseType: !96, size: 64, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !98)
!98 = !{!99, !100, !101, !102, !103, !104, !105, !106, !107, !109, !122, !123, !140, !141, !142, !144}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !97, file: !4, line: 493, baseType: !68, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !97, file: !4, line: 494, baseType: !92, size: 32, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !97, file: !4, line: 495, baseType: !69, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !97, file: !4, line: 496, baseType: !96, size: 64, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !97, file: !4, line: 497, baseType: !96, size: 64, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !97, file: !4, line: 498, baseType: !96, size: 64, offset: 320)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !97, file: !4, line: 499, baseType: !96, size: 64, offset: 384)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !97, file: !4, line: 500, baseType: !96, size: 64, offset: 448)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !97, file: !4, line: 501, baseType: !108, size: 64, offset: 512)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !97, file: !4, line: 504, baseType: !110, size: 64, offset: 576)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !113)
!113 = !{!114, !116, !118, !119, !120, !121}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !112, file: !4, line: 389, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !112, file: !4, line: 390, baseType: !117, size: 32, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !92)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !112, file: !4, line: 391, baseType: !69, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !112, file: !4, line: 392, baseType: !69, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !112, file: !4, line: 393, baseType: !68, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !112, file: !4, line: 394, baseType: !108, size: 64, offset: 320)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !97, file: !4, line: 505, baseType: !61, size: 64, offset: 640)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !97, file: !4, line: 506, baseType: !124, size: 64, offset: 704)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !139}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !125, file: !4, line: 434, baseType: !68, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !125, file: !4, line: 435, baseType: !92, size: 32, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !125, file: !4, line: 436, baseType: !69, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !125, file: !4, line: 437, baseType: !96, size: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !125, file: !4, line: 438, baseType: !96, size: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !125, file: !4, line: 439, baseType: !96, size: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !125, file: !4, line: 440, baseType: !124, size: 64, offset: 384)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !125, file: !4, line: 441, baseType: !124, size: 64, offset: 448)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !125, file: !4, line: 442, baseType: !108, size: 64, offset: 512)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !125, file: !4, line: 443, baseType: !110, size: 64, offset: 576)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !125, file: !4, line: 444, baseType: !138, size: 32, offset: 640)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !125, file: !4, line: 445, baseType: !68, size: 64, offset: 704)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !97, file: !4, line: 507, baseType: !110, size: 64, offset: 768)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !97, file: !4, line: 508, baseType: !68, size: 64, offset: 832)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !97, file: !4, line: 509, baseType: !143, size: 16, offset: 896)
!143 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !97, file: !4, line: 510, baseType: !143, size: 16, offset: 912)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !88, file: !4, line: 564, baseType: !96, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !88, file: !4, line: 565, baseType: !96, size: 64, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !88, file: !4, line: 566, baseType: !96, size: 64, offset: 384)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !88, file: !4, line: 567, baseType: !96, size: 64, offset: 448)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !88, file: !4, line: 568, baseType: !108, size: 64, offset: 512)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !88, file: !4, line: 571, baseType: !82, size: 32, offset: 576)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !88, file: !4, line: 572, baseType: !82, size: 32, offset: 608)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !88, file: !4, line: 578, baseType: !153, size: 64, offset: 640)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !155)
!155 = !{!156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !154, file: !4, line: 406, baseType: !68, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !154, file: !4, line: 407, baseType: !92, size: 32, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !154, file: !4, line: 408, baseType: !69, size: 64, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !154, file: !4, line: 409, baseType: !96, size: 64, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !154, file: !4, line: 410, baseType: !96, size: 64, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !154, file: !4, line: 411, baseType: !108, size: 64, offset: 320)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !154, file: !4, line: 412, baseType: !96, size: 64, offset: 384)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !154, file: !4, line: 413, baseType: !96, size: 64, offset: 448)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !154, file: !4, line: 414, baseType: !108, size: 64, offset: 512)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !154, file: !4, line: 417, baseType: !68, size: 64, offset: 576)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !154, file: !4, line: 418, baseType: !68, size: 64, offset: 640)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !154, file: !4, line: 419, baseType: !68, size: 64, offset: 704)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !154, file: !4, line: 420, baseType: !68, size: 64, offset: 768)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !154, file: !4, line: 421, baseType: !69, size: 64, offset: 832)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !154, file: !4, line: 422, baseType: !69, size: 64, offset: 896)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !154, file: !4, line: 423, baseType: !68, size: 64, offset: 960)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !88, file: !4, line: 579, baseType: !153, size: 64, offset: 704)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !88, file: !4, line: 580, baseType: !115, size: 64, offset: 768)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !88, file: !4, line: 581, baseType: !69, size: 64, offset: 832)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !88, file: !4, line: 582, baseType: !69, size: 64, offset: 896)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !88, file: !4, line: 583, baseType: !68, size: 64, offset: 960)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !88, file: !4, line: 584, baseType: !68, size: 64, offset: 1024)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !88, file: !4, line: 585, baseType: !69, size: 64, offset: 1088)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !88, file: !4, line: 586, baseType: !82, size: 32, offset: 1152)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !88, file: !4, line: 588, baseType: !181, size: 64, offset: 1216)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !183, line: 24, flags: DIFlagFwdDecl)
!183 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!184 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !88, file: !4, line: 589, baseType: !68, size: 64, offset: 1280)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !88, file: !4, line: 590, baseType: !82, size: 32, offset: 1344)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !88, file: !4, line: 592, baseType: !82, size: 32, offset: 1376)
!187 = !DILocation(line: 8, column: 15, scope: !79)
!188 = !DILocalVariable(name: "ctx", scope: !79, file: !1, line: 9, type: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathContextPtr", file: !41, line: 40, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathContext", file: !41, line: 39, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathContext", file: !41, line: 290, size: 3008, elements: !193)
!193 = !{!194, !195, !199, !200, !201, !207, !208, !209, !246, !247, !248, !249, !250, !251, !285, !288, !289, !290, !291, !292, !293, !294, !295, !296, !301, !302, !303, !304, !305, !314, !315, !316, !317, !318, !342, !343, !344, !348, !349, !350, !352, !353}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !192, file: !41, line: 291, baseType: !85, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !192, file: !41, line: 292, baseType: !196, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !97)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "nb_variables_unused", scope: !192, file: !41, line: 294, baseType: !82, size: 32, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "max_variables_unused", scope: !192, file: !41, line: 295, baseType: !82, size: 32, offset: 160)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "varHash", scope: !192, file: !41, line: 296, baseType: !202, size: 64, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !203, line: 22, baseType: !204)
!203 = !DIFile(filename: "/usr/include/libxml2/libxml/hash.h", directory: "", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !203, line: 21, baseType: !206)
!206 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !203, line: 21, flags: DIFlagFwdDecl)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "nb_types", scope: !192, file: !41, line: 298, baseType: !82, size: 32, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "max_types", scope: !192, file: !41, line: 299, baseType: !82, size: 32, offset: 288)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !192, file: !41, line: 300, baseType: !210, size: 64, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathTypePtr", file: !41, line: 145, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathType", file: !41, line: 144, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathType", file: !41, line: 146, size: 128, elements: !214)
!214 = !{!215, !216}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !213, file: !41, line: 147, baseType: !69, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !213, file: !41, line: 148, baseType: !217, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathConvertFunc", file: !41, line: 138, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!82, !221, !82}
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectPtr", file: !41, line: 115, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObject", file: !41, line: 114, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathObject", file: !41, line: 116, size: 576, elements: !225)
!225 = !{!226, !228, !238, !239, !241, !242, !243, !244, !245}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !224, file: !41, line: 117, baseType: !227, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectType", file: !41, line: 112, baseType: !40)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "nodesetval", scope: !224, file: !41, line: 118, baseType: !229, size: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSetPtr", file: !41, line: 82, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSet", file: !41, line: 81, baseType: !232)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNodeSet", file: !41, line: 83, size: 128, elements: !233)
!233 = !{!234, !235, !236}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !232, file: !41, line: 84, baseType: !82, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !232, file: !41, line: 85, baseType: !82, size: 32, offset: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !232, file: !41, line: 86, baseType: !237, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "boolval", scope: !224, file: !41, line: 119, baseType: !82, size: 32, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "floatval", scope: !224, file: !41, line: 120, baseType: !240, size: 64, offset: 192)
!240 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "stringval", scope: !224, file: !41, line: 121, baseType: !61, size: 64, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !224, file: !41, line: 122, baseType: !68, size: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !224, file: !41, line: 123, baseType: !82, size: 32, offset: 384)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "user2", scope: !224, file: !41, line: 124, baseType: !68, size: 64, offset: 448)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "index2", scope: !224, file: !41, line: 125, baseType: !82, size: 32, offset: 512)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "nb_funcs_unused", scope: !192, file: !41, line: 302, baseType: !82, size: 32, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "max_funcs_unused", scope: !192, file: !41, line: 303, baseType: !82, size: 32, offset: 416)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "funcHash", scope: !192, file: !41, line: 304, baseType: !202, size: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "nb_axis", scope: !192, file: !41, line: 306, baseType: !82, size: 32, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "max_axis", scope: !192, file: !41, line: 307, baseType: !82, size: 32, offset: 544)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "axis", scope: !192, file: !41, line: 308, baseType: !252, size: 64, offset: 576)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxisPtr", file: !41, line: 204, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxis", file: !41, line: 203, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathAxis", file: !41, line: 205, size: 128, elements: !256)
!256 = !{!257, !258}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !255, file: !41, line: 206, baseType: !69, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !255, file: !41, line: 207, baseType: !259, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxisFunc", file: !41, line: 196, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!221, !263, !221}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathParserContextPtr", file: !41, line: 42, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathParserContext", file: !41, line: 41, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathParserContext", file: !41, line: 377, size: 704, elements: !267)
!267 = !{!268, !269, !270, !271, !272, !273, !274, !275, !277, !282, !283, !284}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !266, file: !41, line: 378, baseType: !69, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !266, file: !41, line: 379, baseType: !69, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !266, file: !41, line: 381, baseType: !82, size: 32, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !266, file: !41, line: 383, baseType: !189, size: 64, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !266, file: !41, line: 384, baseType: !221, size: 64, offset: 256)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "valueNr", scope: !266, file: !41, line: 385, baseType: !82, size: 32, offset: 320)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "valueMax", scope: !266, file: !41, line: 386, baseType: !82, size: 32, offset: 352)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "valueTab", scope: !266, file: !41, line: 387, baseType: !276, size: 64, offset: 384)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !266, file: !41, line: 389, baseType: !278, size: 64, offset: 448)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathCompExprPtr", file: !41, line: 369, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathCompExpr", file: !41, line: 368, baseType: !281)
!281 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathCompExpr", file: !41, line: 368, flags: DIFlagFwdDecl)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "xptr", scope: !266, file: !41, line: 390, baseType: !82, size: 32, offset: 512)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ancestor", scope: !266, file: !41, line: 391, baseType: !196, size: 64, offset: 576)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "valueFrame", scope: !266, file: !41, line: 393, baseType: !82, size: 32, offset: 640)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !192, file: !41, line: 311, baseType: !286, size: 64, offset: 640)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !4, line: 387, baseType: !110)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "nsNr", scope: !192, file: !41, line: 312, baseType: !82, size: 32, offset: 704)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !192, file: !41, line: 313, baseType: !68, size: 64, offset: 768)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "contextSize", scope: !192, file: !41, line: 316, baseType: !82, size: 32, offset: 832)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "proximityPosition", scope: !192, file: !41, line: 317, baseType: !82, size: 32, offset: 864)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "xptr", scope: !192, file: !41, line: 320, baseType: !82, size: 32, offset: 896)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "here", scope: !192, file: !41, line: 321, baseType: !196, size: 64, offset: 960)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !192, file: !41, line: 322, baseType: !196, size: 64, offset: 1024)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "nsHash", scope: !192, file: !41, line: 325, baseType: !202, size: 64, offset: 1088)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "varLookupFunc", scope: !192, file: !41, line: 326, baseType: !297, size: 64, offset: 1152)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathVariableLookupFunc", file: !41, line: 237, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!221, !68, !69, !69}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "varLookupData", scope: !192, file: !41, line: 327, baseType: !68, size: 64, offset: 1216)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !192, file: !41, line: 330, baseType: !68, size: 64, offset: 1280)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !192, file: !41, line: 333, baseType: !69, size: 64, offset: 1344)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "functionURI", scope: !192, file: !41, line: 334, baseType: !69, size: 64, offset: 1408)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "funcLookupFunc", scope: !192, file: !41, line: 337, baseType: !306, size: 64, offset: 1472)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathFuncLookupFunc", file: !41, line: 252, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!310, !68, !69, !69}
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathFunction", file: !41, line: 220, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !263, !82}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "funcLookupData", scope: !192, file: !41, line: 338, baseType: !68, size: 64, offset: 1536)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tmpNsList", scope: !192, file: !41, line: 341, baseType: !286, size: 64, offset: 1600)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tmpNsNr", scope: !192, file: !41, line: 342, baseType: !82, size: 32, offset: 1664)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !192, file: !41, line: 345, baseType: !68, size: 64, offset: 1728)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !192, file: !41, line: 346, baseType: !319, size: 64, offset: 1792)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStructuredErrorFunc", file: !54, line: 856, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !68, !323}
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorPtr", file: !54, line: 77, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlError", file: !54, line: 76, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlError", file: !54, line: 78, size: 704, elements: !327)
!327 = !{!328, !329, !330, !331, !333, !334, !335, !336, !337, !338, !339, !340, !341}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !326, file: !54, line: 79, baseType: !82, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !326, file: !54, line: 80, baseType: !82, size: 32, offset: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !326, file: !54, line: 81, baseType: !94, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !326, file: !54, line: 82, baseType: !332, size: 32, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorLevel", file: !54, line: 29, baseType: !53)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !326, file: !54, line: 83, baseType: !94, size: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !326, file: !54, line: 84, baseType: !82, size: 32, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "str1", scope: !326, file: !54, line: 85, baseType: !94, size: 64, offset: 320)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "str2", scope: !326, file: !54, line: 86, baseType: !94, size: 64, offset: 384)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "str3", scope: !326, file: !54, line: 87, baseType: !94, size: 64, offset: 448)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "int1", scope: !326, file: !54, line: 88, baseType: !82, size: 32, offset: 512)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "int2", scope: !326, file: !54, line: 89, baseType: !82, size: 32, offset: 544)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "ctxt", scope: !326, file: !54, line: 90, baseType: !68, size: 64, offset: 576)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !326, file: !54, line: 91, baseType: !68, size: 64, offset: 640)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "lastError", scope: !192, file: !41, line: 347, baseType: !325, size: 704, offset: 1856)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "debugNode", scope: !192, file: !41, line: 348, baseType: !196, size: 64, offset: 2560)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !192, file: !41, line: 351, baseType: !345, size: 64, offset: 2624)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !183, line: 25, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !183, line: 24, baseType: !182)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !192, file: !41, line: 353, baseType: !82, size: 32, offset: 2688)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !192, file: !41, line: 356, baseType: !68, size: 64, offset: 2752)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "opLimit", scope: !192, file: !41, line: 359, baseType: !351, size: 64, offset: 2816)
!351 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "opCount", scope: !192, file: !41, line: 360, baseType: !351, size: 64, offset: 2880)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !192, file: !41, line: 361, baseType: !82, size: 32, offset: 2944)
!354 = !DILocation(line: 9, column: 24, scope: !79)
!355 = !DILocalVariable(name: "res", scope: !79, file: !1, line: 10, type: !221)
!356 = !DILocation(line: 10, column: 23, scope: !79)
!357 = !DILocalVariable(name: "xml_content", scope: !79, file: !1, line: 11, type: !61)
!358 = !DILocation(line: 11, column: 14, scope: !79)
!359 = !DILocalVariable(name: "xml_len", scope: !79, file: !1, line: 12, type: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !361, line: 46, baseType: !351)
!361 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!362 = !DILocation(line: 12, column: 12, scope: !79)
!363 = !DILocalVariable(name: "xpath_expr", scope: !79, file: !1, line: 13, type: !65)
!364 = !DILocation(line: 13, column: 17, scope: !79)
!365 = !DILocation(line: 16, column: 5, scope: !79)
!366 = !DILocation(line: 17, column: 5, scope: !79)
!367 = !DILocation(line: 20, column: 13, scope: !79)
!368 = !DILocation(line: 21, column: 37, scope: !79)
!369 = !DILocation(line: 21, column: 45, scope: !79)
!370 = !DILocation(line: 21, column: 30, scope: !79)
!371 = !DILocation(line: 21, column: 17, scope: !79)
!372 = !DILocation(line: 22, column: 24, scope: !79)
!373 = !DILocation(line: 22, column: 37, scope: !79)
!374 = !DILocation(line: 22, column: 5, scope: !79)
!375 = !DILocation(line: 23, column: 5, scope: !79)
!376 = !DILocation(line: 23, column: 17, scope: !79)
!377 = !DILocation(line: 23, column: 26, scope: !79)
!378 = !DILocalVariable(name: "expr_buf", scope: !79, file: !1, line: 26, type: !379)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 2048, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 256)
!382 = !DILocation(line: 26, column: 10, scope: !79)
!383 = !DILocation(line: 27, column: 24, scope: !79)
!384 = !DILocation(line: 27, column: 5, scope: !79)
!385 = !DILocation(line: 28, column: 5, scope: !79)
!386 = !DILocation(line: 28, column: 36, scope: !79)
!387 = !DILocation(line: 29, column: 18, scope: !79)
!388 = !DILocation(line: 29, column: 16, scope: !79)
!389 = !DILocation(line: 32, column: 39, scope: !79)
!390 = !DILocation(line: 32, column: 52, scope: !79)
!391 = !DILocation(line: 32, column: 11, scope: !79)
!392 = !DILocation(line: 32, column: 9, scope: !79)
!393 = !DILocation(line: 33, column: 9, scope: !394)
!394 = distinct !DILexicalBlock(scope: !79, file: !1, line: 33, column: 9)
!395 = !DILocation(line: 33, column: 13, scope: !394)
!396 = !DILocation(line: 33, column: 9, scope: !79)
!397 = !DILocation(line: 34, column: 14, scope: !398)
!398 = distinct !DILexicalBlock(scope: !394, file: !1, line: 33, column: 22)
!399 = !DILocation(line: 34, column: 9, scope: !398)
!400 = !DILocation(line: 35, column: 9, scope: !398)
!401 = !DILocation(line: 36, column: 9, scope: !398)
!402 = !DILocation(line: 40, column: 30, scope: !79)
!403 = !DILocation(line: 40, column: 11, scope: !79)
!404 = !DILocation(line: 40, column: 9, scope: !79)
!405 = !DILocation(line: 41, column: 9, scope: !406)
!406 = distinct !DILexicalBlock(scope: !79, file: !1, line: 41, column: 9)
!407 = !DILocation(line: 41, column: 13, scope: !406)
!408 = !DILocation(line: 41, column: 9, scope: !79)
!409 = !DILocation(line: 42, column: 20, scope: !410)
!410 = distinct !DILexicalBlock(scope: !406, file: !1, line: 41, column: 22)
!411 = !DILocation(line: 42, column: 9, scope: !410)
!412 = !DILocation(line: 43, column: 14, scope: !410)
!413 = !DILocation(line: 43, column: 9, scope: !410)
!414 = !DILocation(line: 44, column: 9, scope: !410)
!415 = !DILocation(line: 45, column: 9, scope: !410)
!416 = !DILocation(line: 49, column: 51, scope: !79)
!417 = !DILocation(line: 49, column: 63, scope: !79)
!418 = !DILocation(line: 49, column: 11, scope: !79)
!419 = !DILocation(line: 49, column: 9, scope: !79)
!420 = !DILocation(line: 50, column: 9, scope: !421)
!421 = distinct !DILexicalBlock(scope: !79, file: !1, line: 50, column: 9)
!422 = !DILocation(line: 50, column: 13, scope: !421)
!423 = !DILocation(line: 50, column: 9, scope: !79)
!424 = !DILocation(line: 58, column: 13, scope: !425)
!425 = distinct !DILexicalBlock(scope: !426, file: !1, line: 58, column: 13)
!426 = distinct !DILexicalBlock(scope: !421, file: !1, line: 50, column: 22)
!427 = !DILocation(line: 58, column: 18, scope: !425)
!428 = !DILocation(line: 58, column: 23, scope: !425)
!429 = !DILocation(line: 58, column: 40, scope: !425)
!430 = !DILocation(line: 58, column: 43, scope: !425)
!431 = !DILocation(line: 58, column: 48, scope: !425)
!432 = !DILocation(line: 58, column: 59, scope: !425)
!433 = !DILocation(line: 58, column: 62, scope: !425)
!434 = !DILocation(line: 58, column: 67, scope: !425)
!435 = !DILocation(line: 58, column: 79, scope: !425)
!436 = !DILocation(line: 58, column: 86, scope: !425)
!437 = !DILocation(line: 58, column: 13, scope: !426)
!438 = !DILocation(line: 63, column: 13, scope: !439)
!439 = distinct !DILexicalBlock(scope: !425, file: !1, line: 58, column: 91)
!440 = !DILocation(line: 64, column: 9, scope: !439)
!441 = !DILocation(line: 65, column: 28, scope: !426)
!442 = !DILocation(line: 65, column: 9, scope: !426)
!443 = !DILocation(line: 66, column: 5, scope: !426)
!444 = !DILocation(line: 69, column: 25, scope: !79)
!445 = !DILocation(line: 69, column: 5, scope: !79)
!446 = !DILocation(line: 70, column: 16, scope: !79)
!447 = !DILocation(line: 70, column: 5, scope: !79)
!448 = !DILocation(line: 71, column: 10, scope: !79)
!449 = !DILocation(line: 71, column: 5, scope: !79)
!450 = !DILocation(line: 72, column: 5, scope: !79)
!451 = !DILocation(line: 73, column: 5, scope: !79)
!452 = !DILocation(line: 74, column: 1, scope: !79)

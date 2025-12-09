; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/036_parserInternals.c_1857_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/036_parserInternals.c_1857_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlParserCtxt = type { %struct._xmlSAXHandler*, i8*, %struct._xmlDoc*, i32, i32, i8*, i8*, i32, i32, %struct._xmlParserInput*, i32, i32, %struct._xmlParserInput**, %struct._xmlNode*, i32, i32, %struct._xmlNode**, i32, %struct._xmlParserNodeInfoSeq, i32, i32, i32, i32, i32, i32, %struct._xmlValidCtxt, i32, i32, i8*, i8*, i32, i32, i8**, i64, i64, i32, i32, i32, i8*, i8*, i8*, i32*, i32, i32, i32*, i32, %struct._xmlParserInput*, i32, i32, i32, i32, i8*, i32, i32, i8*, i32, i32, %struct._xmlDict*, i8**, i32, i32, i8*, i8*, i8*, i32, i32, i32, i8**, i32*, %struct._xmlStartTag*, %struct._xmlHashTable*, %struct._xmlHashTable*, i32, i32, i32, i32, %struct._xmlNode*, i32, %struct._xmlAttr*, %struct._xmlError, i32, i64, i64, %struct._xmlParserNodeInfo*, i32, i32, %struct._xmlParserNodeInfo*, i32, i64 }
%struct._xmlSAXHandler = type { void (i8*, i8*, i8*, i8*)*, i32 (i8*)*, i32 (i8*)*, i32 (i8*)*, %struct._xmlParserInput* (i8*, i8*, i8*)*, %struct._xmlEntity* (i8*, i8*)*, void (i8*, i8*, i32, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i32, i32, i8*, %struct._xmlEnumeration*)*, void (i8*, i8*, i32, %struct._xmlElementContent*)*, void (i8*, i8*, i8*, i8*, i8*)*, void (i8*, %struct._xmlSAXLocator*)*, void (i8*)*, void (i8*)*, void (i8*, i8*, i8**)*, void (i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*, i32)*, void (i8*, i8*, i32)*, void (i8*, i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*, ...)*, void (i8*, i8*, ...)*, void (i8*, i8*, ...)*, %struct._xmlEntity* (i8*, i8*)*, void (i8*, i8*, i32)*, void (i8*, i8*, i8*, i8*)*, i32, i8*, void (i8*, i8*, i8*, i8*, i32, i8**, i32, i32, i8**)*, void (i8*, i8*, i8*, i8*)*, void (i8*, %struct._xmlError*)* }
%struct._xmlEnumeration = type { %struct._xmlEnumeration*, i8* }
%struct._xmlElementContent = type { i32, i32, i8*, %struct._xmlElementContent*, %struct._xmlElementContent*, %struct._xmlElementContent*, i8* }
%struct._xmlSAXLocator = type { i8* (i8*)*, i8* (i8*)*, i32 (i8*)*, i32 (i8*)* }
%struct._xmlEntity = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDtd*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i32, i32, i8*, i8*, %struct._xmlEntity*, i8*, i32, i32 }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlParserNodeInfoSeq = type { i64, i64, %struct._xmlParserNodeInfo* }
%struct._xmlValidCtxt = type { i8*, void (i8*, i8*, ...)*, void (i8*, i8*, ...)*, %struct._xmlNode*, i32, i32, %struct._xmlNode**, i32, %struct._xmlDoc*, i32, %struct._xmlValidState*, i32, i32, %struct._xmlValidState*, %struct._xmlAutomata*, %struct._xmlAutomataState* }
%struct._xmlValidState = type opaque
%struct._xmlAutomata = type opaque
%struct._xmlAutomataState = type opaque
%struct._xmlParserInput = type { %struct._xmlParserInputBuffer*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i64, void (i8*)*, i8*, i8*, i32, i32 }
%struct._xmlParserInputBuffer = type { i8*, i32 (i8*, i8*, i32)*, i32 (i8*)*, %struct._xmlCharEncodingHandler*, %struct._xmlBuf*, %struct._xmlBuf*, i32, i32, i64 }
%struct._xmlCharEncodingHandler = type { i8*, i32 (i8*, i32*, i8*, i32*)*, i32 (i8*, i32*, i8*, i32*)*, i8*, i8*, %struct._uconv_t*, %struct._uconv_t* }
%struct._uconv_t = type { %struct.UConverter*, %struct.UConverter*, [1024 x i16], i16*, i16* }
%struct.UConverter = type opaque
%struct._xmlBuf = type opaque
%struct._xmlDict = type opaque
%struct._xmlStartTag = type opaque
%struct._xmlHashTable = type opaque
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlError = type { i32, i32, i8*, i32, i8*, i32, i8*, i8*, i8*, i32, i32, i8*, i8* }
%struct._xmlParserNodeInfo = type { %struct._xmlNode*, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [11 x i8] c"sax_struct\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"userData\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [114 x i8] c"se_runs/sa_llm/libxml2_62911_vul/036_parserInternals.c_1857_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !112 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt*, align 8
  %3 = alloca %struct._xmlSAXHandler*, align 8
  %4 = alloca %struct._xmlSAXHandler, align 8
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !116, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler** %3, metadata !689, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler* %4, metadata !694, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.declare(metadata i8** %5, metadata !696, metadata !DIExpression()), !dbg !697
  %6 = call %struct._xmlParserCtxt* @xmlNewParserCtxt(), !dbg !698
  store %struct._xmlParserCtxt* %6, %struct._xmlParserCtxt** %2, align 8, !dbg !699
  %7 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !700
  %8 = icmp eq %struct._xmlParserCtxt* %7, null, !dbg !702
  br i1 %8, label %9, label %10, !dbg !703

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !704
  br label %52, !dbg !704

10:                                               ; preds = %0
  store %struct._xmlSAXHandler* %4, %struct._xmlSAXHandler** %3, align 8, !dbg !705
  %11 = bitcast %struct._xmlSAXHandler* %4 to i8*, !dbg !706
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 256, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)), !dbg !707
  %12 = bitcast i8** %5 to i8*, !dbg !708
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !709
  %13 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !710
  %14 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %13, i32 0, i32 27, !dbg !712
  %15 = load i32, i32* %14, align 8, !dbg !712
  %16 = icmp eq i32 %15, -554844497, !dbg !713
  br i1 %16, label %17, label %25, !dbg !714

17:                                               ; preds = %10
  %18 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !715
  %19 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %18, i32 0, i32 0, !dbg !717
  %20 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %19, align 8, !dbg !717
  %21 = bitcast %struct._xmlSAXHandler* %20 to i8*, !dbg !718
  %22 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !719
  %23 = bitcast %struct._xmlSAXHandler* %22 to i8*, !dbg !718
  %24 = call i8* @memcpy(i8* %21, i8* %23, i64 256), !dbg !718
  br label %39, !dbg !720

25:                                               ; preds = %10
  %26 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !721
  %27 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %26, i32 0, i32 0, !dbg !723
  %28 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %27, align 8, !dbg !723
  %29 = bitcast %struct._xmlSAXHandler* %28 to i8*, !dbg !724
  %30 = call i8* @memset(i8* %29, i32 0, i64 256), !dbg !724
  %31 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.3, i64 0, i64 0), i32 noundef 22, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !725
  %32 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !726
  %33 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %32, i32 0, i32 0, !dbg !727
  %34 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %33, align 8, !dbg !727
  %35 = bitcast %struct._xmlSAXHandler* %34 to i8*, !dbg !728
  %36 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !729
  %37 = bitcast %struct._xmlSAXHandler* %36 to i8*, !dbg !728
  %38 = call i8* @memcpy(i8* %35, i8* %37, i64 224), !dbg !728
  br label %39

39:                                               ; preds = %25, %17
  %40 = load i8*, i8** %5, align 8, !dbg !730
  %41 = icmp ne i8* %40, null, !dbg !730
  br i1 %41, label %42, label %44, !dbg !730

42:                                               ; preds = %39
  %43 = load i8*, i8** %5, align 8, !dbg !731
  br label %47, !dbg !730

44:                                               ; preds = %39
  %45 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !732
  %46 = bitcast %struct._xmlParserCtxt* %45 to i8*, !dbg !732
  br label %47, !dbg !730

47:                                               ; preds = %44, %42
  %48 = phi i8* [ %43, %42 ], [ %46, %44 ], !dbg !730
  %49 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !733
  %50 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %49, i32 0, i32 1, !dbg !734
  store i8* %48, i8** %50, align 8, !dbg !735
  %51 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !736
  call void @xmlFreeParserCtxt(%struct._xmlParserCtxt* noundef %51), !dbg !737
  store i32 0, i32* %1, align 4, !dbg !738
  br label %52, !dbg !738

52:                                               ; preds = %47, %9
  %53 = load i32, i32* %1, align 4, !dbg !739
  ret i32 %53, !dbg !739
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._xmlParserCtxt* @xmlNewParserCtxt() #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

declare void @xmlFreeParserCtxt(%struct._xmlParserCtxt* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !740 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !748, metadata !DIExpression()), !dbg !749
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !750, metadata !DIExpression()), !dbg !751
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !752, metadata !DIExpression()), !dbg !753
  call void @llvm.dbg.declare(metadata i8** %7, metadata !754, metadata !DIExpression()), !dbg !755
  %9 = load i8*, i8** %4, align 8, !dbg !756
  store i8* %9, i8** %7, align 8, !dbg !755
  call void @llvm.dbg.declare(metadata i8** %8, metadata !757, metadata !DIExpression()), !dbg !758
  %10 = load i8*, i8** %5, align 8, !dbg !759
  store i8* %10, i8** %8, align 8, !dbg !758
  br label %11, !dbg !760

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !761
  %13 = add i64 %12, -1, !dbg !761
  store i64 %13, i64* %6, align 8, !dbg !761
  %14 = icmp ugt i64 %12, 0, !dbg !762
  br i1 %14, label %15, label %21, !dbg !760

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !763
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !763
  store i8* %17, i8** %8, align 8, !dbg !763
  %18 = load i8, i8* %16, align 1, !dbg !764
  %19 = load i8*, i8** %7, align 8, !dbg !765
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !765
  store i8* %20, i8** %7, align 8, !dbg !765
  store i8 %18, i8* %19, align 1, !dbg !766
  br label %11, !dbg !760, !llvm.loop !767

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !769
  ret i8* %22, !dbg !770
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !771 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !775, metadata !DIExpression()), !dbg !776
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !777, metadata !DIExpression()), !dbg !778
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !779, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.declare(metadata i8** %7, metadata !781, metadata !DIExpression()), !dbg !782
  %8 = load i8*, i8** %4, align 8, !dbg !783
  store i8* %8, i8** %7, align 8, !dbg !782
  br label %9, !dbg !784

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !785
  %11 = add i64 %10, -1, !dbg !785
  store i64 %11, i64* %6, align 8, !dbg !785
  %12 = icmp ugt i64 %10, 0, !dbg !786
  br i1 %12, label %13, label %18, !dbg !784

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !787
  %15 = trunc i32 %14 to i8, !dbg !787
  %16 = load i8*, i8** %7, align 8, !dbg !788
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !788
  store i8* %17, i8** %7, align 8, !dbg !788
  store i8 %15, i8* %16, align 1, !dbg !789
  br label %9, !dbg !784, !llvm.loop !790

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !791
  ret i8* %19, !dbg !792
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !100, !102}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111, !111, !111}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !98, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/036_parserInternals.c_1857_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "84b3e515ec1e3d6da2769bb98a965680")
!2 = !{!3, !28, !40, !49, !55, !61, !68, !90}
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
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 24, baseType: !5, size: 32, elements: !42)
!41 = !DIFile(filename: "/usr/include/libxml2/libxml/entities.h", directory: "", checksumkind: CSK_MD5, checksum: "16467595fdaff28420d1657b1658f267")
!42 = !{!43, !44, !45, !46, !47, !48}
!43 = !DIEnumerator(name: "XML_INTERNAL_GENERAL_ENTITY", value: 1)
!44 = !DIEnumerator(name: "XML_EXTERNAL_GENERAL_PARSED_ENTITY", value: 2)
!45 = !DIEnumerator(name: "XML_EXTERNAL_GENERAL_UNPARSED_ENTITY", value: 3)
!46 = !DIEnumerator(name: "XML_INTERNAL_PARAMETER_ENTITY", value: 4)
!47 = !DIEnumerator(name: "XML_EXTERNAL_PARAMETER_ENTITY", value: 5)
!48 = !DIEnumerator(name: "XML_INTERNAL_PREDEFINED_ENTITY", value: 6)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 278, baseType: !5, size: 32, elements: !50)
!50 = !{!51, !52, !53, !54}
!51 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_PCDATA", value: 1)
!52 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_ELEMENT", value: 2)
!53 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_SEQ", value: 3)
!54 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_OR", value: 4)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 290, baseType: !5, size: 32, elements: !56)
!56 = !{!57, !58, !59, !60}
!57 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_ONCE", value: 1)
!58 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_OPT", value: 2)
!59 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_MULT", value: 3)
!60 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_PLUS", value: 4)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !62, line: 24, baseType: !5, size: 32, elements: !63)
!62 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlerror.h", directory: "", checksumkind: CSK_MD5, checksum: "28cd85987165565f9306b9b66a2b4e88")
!63 = !{!64, !65, !66, !67}
!64 = !DIEnumerator(name: "XML_ERR_NONE", value: 0)
!65 = !DIEnumerator(name: "XML_ERR_WARNING", value: 1)
!66 = !DIEnumerator(name: "XML_ERR_ERROR", value: 2)
!67 = !DIEnumerator(name: "XML_ERR_FATAL", value: 3)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !69, line: 112, baseType: !70, size: 32, elements: !71)
!69 = !DIFile(filename: "/usr/include/libxml2/libxml/parser.h", directory: "", checksumkind: CSK_MD5, checksum: "2c1184d6dda41f6d85836f47834fed62")
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89}
!72 = !DIEnumerator(name: "XML_PARSER_EOF", value: -1)
!73 = !DIEnumerator(name: "XML_PARSER_START", value: 0)
!74 = !DIEnumerator(name: "XML_PARSER_MISC", value: 1)
!75 = !DIEnumerator(name: "XML_PARSER_PI", value: 2)
!76 = !DIEnumerator(name: "XML_PARSER_DTD", value: 3)
!77 = !DIEnumerator(name: "XML_PARSER_PROLOG", value: 4)
!78 = !DIEnumerator(name: "XML_PARSER_COMMENT", value: 5)
!79 = !DIEnumerator(name: "XML_PARSER_START_TAG", value: 6)
!80 = !DIEnumerator(name: "XML_PARSER_CONTENT", value: 7)
!81 = !DIEnumerator(name: "XML_PARSER_CDATA_SECTION", value: 8)
!82 = !DIEnumerator(name: "XML_PARSER_END_TAG", value: 9)
!83 = !DIEnumerator(name: "XML_PARSER_ENTITY_DECL", value: 10)
!84 = !DIEnumerator(name: "XML_PARSER_ENTITY_VALUE", value: 11)
!85 = !DIEnumerator(name: "XML_PARSER_ATTRIBUTE_VALUE", value: 12)
!86 = !DIEnumerator(name: "XML_PARSER_SYSTEM_LITERAL", value: 13)
!87 = !DIEnumerator(name: "XML_PARSER_EPILOG", value: 14)
!88 = !DIEnumerator(name: "XML_PARSER_IGNORE", value: 15)
!89 = !DIEnumerator(name: "XML_PARSER_PUBLIC_LITERAL", value: 16)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !69, line: 163, baseType: !5, size: 32, elements: !91)
!91 = !{!92, !93, !94, !95, !96, !97}
!92 = !DIEnumerator(name: "XML_PARSE_UNKNOWN", value: 0)
!93 = !DIEnumerator(name: "XML_PARSE_DOM", value: 1)
!94 = !DIEnumerator(name: "XML_PARSE_SAX", value: 2)
!95 = !DIEnumerator(name: "XML_PARSE_PUSH_DOM", value: 3)
!96 = !DIEnumerator(name: "XML_PARSE_PUSH_SAX", value: 4)
!97 = !DIEnumerator(name: "XML_PARSE_READER", value: 5)
!98 = !{!99}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!100 = distinct !DICompileUnit(language: DW_LANG_C99, file: !101, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!101 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!102 = distinct !DICompileUnit(language: DW_LANG_C99, file: !103, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!103 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!104 = !{i32 7, !"Dwarf Version", i32 5}
!105 = !{i32 2, !"Debug Info Version", i32 3}
!106 = !{i32 1, !"wchar_size", i32 4}
!107 = !{i32 7, !"PIC Level", i32 2}
!108 = !{i32 7, !"PIE Level", i32 2}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"Ubuntu clang version 14.0.6"}
!112 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !113, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !115)
!113 = !DISubroutineType(types: !114)
!114 = !{!70}
!115 = !{}
!116 = !DILocalVariable(name: "ctxt", scope: !112, file: !1, line: 6, type: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxtPtr", file: !4, line: 39, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !4, line: 38, baseType: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !69, line: 186, size: 6016, elements: !121)
!121 = !{!122, !524, !525, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !540, !544, !545, !546, !548, !549, !567, !568, !569, !570, !571, !572, !573, !608, !610, !611, !612, !613, !614, !615, !616, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !660, !666, !667, !668, !669, !670, !671, !672, !673, !677, !678, !680, !681, !682, !683, !684, !685, !686, !687}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "sax", scope: !120, file: !69, line: 187, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXHandler", file: !69, line: 721, size: 2048, elements: !125)
!125 = !{!126, !136, !141, !143, !145, !252, !380, !385, !387, !400, !420, !425, !442, !447, !449, !455, !460, !462, !467, !469, !474, !476, !481, !483, !485, !487, !489, !491, !492, !493, !498, !500}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "internalSubset", scope: !124, file: !69, line: 722, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "internalSubsetSAXFunc", file: !69, line: 364, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{null, !99, !131, !131, !131}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !134, line: 28, baseType: !135)
!134 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!135 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "isStandalone", scope: !124, file: !69, line: 723, baseType: !137, size: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "isStandaloneSAXFunc", file: !69, line: 642, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{!70, !99}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "hasInternalSubset", scope: !124, file: !69, line: 724, baseType: !142, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "hasInternalSubsetSAXFunc", file: !69, line: 651, baseType: !138)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "hasExternalSubset", scope: !124, file: !69, line: 725, baseType: !144, size: 64, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "hasExternalSubsetSAXFunc", file: !69, line: 661, baseType: !138)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "resolveEntity", scope: !124, file: !69, line: 726, baseType: !146, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "resolveEntitySAXFunc", file: !69, line: 352, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!150, !99, !131, !131}
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputPtr", file: !4, line: 36, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInput", file: !4, line: 35, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInput", file: !69, line: 54, size: 832, elements: !154)
!154 = !{!155, !231, !234, !235, !236, !237, !238, !239, !240, !241, !242, !248, !249, !250, !251}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !153, file: !69, line: 56, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputBufferPtr", file: !4, line: 29, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputBuffer", file: !4, line: 28, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInputBuffer", file: !160, line: 125, size: 512, elements: !161)
!160 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlIO.h", directory: "", checksumkind: CSK_MD5, checksum: "a868e7a396360b2f16d10eac4a34669c")
!161 = !{!162, !163, !170, !172, !221, !226, !227, !228, !229}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !159, file: !160, line: 126, baseType: !99, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "readcallback", scope: !159, file: !160, line: 127, baseType: !164, size: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlInputReadCallback", file: !160, line: 54, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!70, !99, !168, !70}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "closecallback", scope: !159, file: !160, line: 128, baseType: !171, size: 64, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlInputCloseCallback", file: !160, line: 63, baseType: !138)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !159, file: !160, line: 130, baseType: !173, size: 64, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandlerPtr", file: !174, line: 145, baseType: !175)
!174 = !DIFile(filename: "/usr/include/libxml2/libxml/encoding.h", directory: "", checksumkind: CSK_MD5, checksum: "807b84fade38abad3ae0d9b6af714dbc")
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandler", file: !174, line: 144, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlCharEncodingHandler", file: !174, line: 146, size: 448, elements: !178)
!178 = !{!179, !180, !189, !191, !194, !195, !220}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !177, file: !174, line: 147, baseType: !168, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !177, file: !174, line: 148, baseType: !181, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingInputFunc", file: !174, line: 101, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!70, !185, !186, !187, !186}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !177, file: !174, line: 149, baseType: !190, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingOutputFunc", file: !174, line: 123, baseType: !182)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_in", scope: !177, file: !174, line: 151, baseType: !192, size: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !193, line: 29, baseType: !99)
!193 = !DIFile(filename: "/usr/include/iconv.h", directory: "", checksumkind: CSK_MD5, checksum: "edfee9bcfa398c9184cc8f95deb97c16")
!194 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_out", scope: !177, file: !174, line: 152, baseType: !192, size: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_in", scope: !177, file: !174, line: 155, baseType: !196, size: 64, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "uconv_t", file: !174, line: 141, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_uconv_t", file: !174, line: 134, size: 16640, elements: !199)
!199 = !{!200, !205, !206, !217, !219}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "uconv", scope: !198, file: !174, line: 135, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "UConverter", file: !203, line: 96, baseType: !204)
!203 = !DIFile(filename: "/usr/include/unicode/ucnv_err.h", directory: "", checksumkind: CSK_MD5, checksum: "a507bbb125e54d860485ec054a4a55ed")
!204 = !DICompositeType(tag: DW_TAG_structure_type, name: "UConverter", file: !203, line: 93, flags: DIFlagFwdDecl)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !198, file: !174, line: 136, baseType: !201, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_buf", scope: !198, file: !174, line: 137, baseType: !207, size: 16384, offset: 128)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 16384, elements: !215)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "UChar", file: !209, line: 388, baseType: !210)
!209 = !DIFile(filename: "/usr/include/unicode/umachine.h", directory: "", checksumkind: CSK_MD5, checksum: "2d902ff00eac765b305cb113b74d34df")
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !211, line: 25, baseType: !212)
!211 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !213, line: 40, baseType: !214)
!213 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!214 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!215 = !{!216}
!216 = !DISubrange(count: 1024)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_source", scope: !198, file: !174, line: 138, baseType: !218, size: 64, offset: 16512)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_target", scope: !198, file: !174, line: 139, baseType: !218, size: 64, offset: 16576)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_out", scope: !177, file: !174, line: 156, baseType: !196, size: 64, offset: 384)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !159, file: !160, line: 132, baseType: !222, size: 64, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufPtr", file: !4, line: 114, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !4, line: 105, baseType: !225)
!225 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !4, line: 105, flags: DIFlagFwdDecl)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !159, file: !160, line: 133, baseType: !222, size: 64, offset: 320)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "compressed", scope: !159, file: !160, line: 134, baseType: !70, size: 32, offset: 384)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !159, file: !160, line: 135, baseType: !70, size: 32, offset: 416)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "rawconsumed", scope: !159, file: !160, line: 136, baseType: !230, size: 64, offset: 448)
!230 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !153, file: !69, line: 58, baseType: !232, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !153, file: !69, line: 59, baseType: !232, size: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !153, file: !69, line: 60, baseType: !131, size: 64, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !153, file: !69, line: 61, baseType: !131, size: 64, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !153, file: !69, line: 62, baseType: !131, size: 64, offset: 320)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !153, file: !69, line: 63, baseType: !70, size: 32, offset: 384)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !153, file: !69, line: 64, baseType: !70, size: 32, offset: 416)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !153, file: !69, line: 65, baseType: !70, size: 32, offset: 448)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "consumed", scope: !153, file: !69, line: 71, baseType: !230, size: 64, offset: 512)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !153, file: !69, line: 72, baseType: !243, size: 64, offset: 576)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputDeallocate", file: !69, line: 52, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !247}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !153, file: !69, line: 73, baseType: !131, size: 64, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !153, file: !69, line: 74, baseType: !131, size: 64, offset: 704)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !153, file: !69, line: 75, baseType: !70, size: 32, offset: 768)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !153, file: !69, line: 76, baseType: !70, size: 32, offset: 800)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "getEntity", scope: !124, file: !69, line: 727, baseType: !253, size: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "getEntitySAXFunc", file: !69, line: 390, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!257, !99, !131}
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntityPtr", file: !4, line: 49, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntity", file: !4, line: 48, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEntity", file: !41, line: 38, size: 1088, elements: !261)
!261 = !{!262, !263, !265, !266, !363, !364, !365, !366, !367, !368, !369, !370, !371, !373, !374, !375, !377, !378, !379}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !260, file: !41, line: 39, baseType: !99, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !260, file: !41, line: 40, baseType: !264, size: 32, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !260, file: !41, line: 41, baseType: !131, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !260, file: !41, line: 42, baseType: !267, size: 64, offset: 192)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !269)
!269 = !{!270, !271, !272, !273, !274, !275, !276, !277, !278, !338, !341, !342, !359, !360, !361, !362}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !268, file: !4, line: 493, baseType: !99, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !268, file: !4, line: 494, baseType: !264, size: 32, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !268, file: !4, line: 495, baseType: !131, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !268, file: !4, line: 496, baseType: !267, size: 64, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !268, file: !4, line: 497, baseType: !267, size: 64, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !268, file: !4, line: 498, baseType: !267, size: 64, offset: 320)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !268, file: !4, line: 499, baseType: !267, size: 64, offset: 384)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !268, file: !4, line: 500, baseType: !267, size: 64, offset: 448)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !268, file: !4, line: 501, baseType: !279, size: 64, offset: 512)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !281)
!281 = !{!282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !313, !314, !325, !326, !327, !328, !329, !330, !331, !335, !336, !337}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !280, file: !4, line: 560, baseType: !99, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !280, file: !4, line: 561, baseType: !264, size: 32, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !280, file: !4, line: 562, baseType: !168, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !280, file: !4, line: 563, baseType: !267, size: 64, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !280, file: !4, line: 564, baseType: !267, size: 64, offset: 256)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !280, file: !4, line: 565, baseType: !267, size: 64, offset: 320)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !280, file: !4, line: 566, baseType: !267, size: 64, offset: 384)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !280, file: !4, line: 567, baseType: !267, size: 64, offset: 448)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !280, file: !4, line: 568, baseType: !279, size: 64, offset: 512)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !280, file: !4, line: 571, baseType: !70, size: 32, offset: 576)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !280, file: !4, line: 572, baseType: !70, size: 32, offset: 608)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !280, file: !4, line: 578, baseType: !294, size: 64, offset: 640)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !296)
!296 = !{!297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !295, file: !4, line: 406, baseType: !99, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !295, file: !4, line: 407, baseType: !264, size: 32, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !295, file: !4, line: 408, baseType: !131, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !295, file: !4, line: 409, baseType: !267, size: 64, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !295, file: !4, line: 410, baseType: !267, size: 64, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !295, file: !4, line: 411, baseType: !279, size: 64, offset: 320)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !295, file: !4, line: 412, baseType: !267, size: 64, offset: 384)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !295, file: !4, line: 413, baseType: !267, size: 64, offset: 448)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !295, file: !4, line: 414, baseType: !279, size: 64, offset: 512)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !295, file: !4, line: 417, baseType: !99, size: 64, offset: 576)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !295, file: !4, line: 418, baseType: !99, size: 64, offset: 640)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !295, file: !4, line: 419, baseType: !99, size: 64, offset: 704)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !295, file: !4, line: 420, baseType: !99, size: 64, offset: 768)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !295, file: !4, line: 421, baseType: !131, size: 64, offset: 832)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !295, file: !4, line: 422, baseType: !131, size: 64, offset: 896)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !295, file: !4, line: 423, baseType: !99, size: 64, offset: 960)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !280, file: !4, line: 579, baseType: !294, size: 64, offset: 704)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !280, file: !4, line: 580, baseType: !315, size: 64, offset: 768)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !317)
!317 = !{!318, !319, !321, !322, !323, !324}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !316, file: !4, line: 389, baseType: !315, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !316, file: !4, line: 390, baseType: !320, size: 32, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !264)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !316, file: !4, line: 391, baseType: !131, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !316, file: !4, line: 392, baseType: !131, size: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !316, file: !4, line: 393, baseType: !99, size: 64, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !316, file: !4, line: 394, baseType: !279, size: 64, offset: 320)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !280, file: !4, line: 581, baseType: !131, size: 64, offset: 832)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !280, file: !4, line: 582, baseType: !131, size: 64, offset: 896)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !280, file: !4, line: 583, baseType: !99, size: 64, offset: 960)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !280, file: !4, line: 584, baseType: !99, size: 64, offset: 1024)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !280, file: !4, line: 585, baseType: !131, size: 64, offset: 1088)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !280, file: !4, line: 586, baseType: !70, size: 32, offset: 1152)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !280, file: !4, line: 588, baseType: !332, size: 64, offset: 1216)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !334, line: 24, flags: DIFlagFwdDecl)
!334 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!335 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !280, file: !4, line: 589, baseType: !99, size: 64, offset: 1280)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !280, file: !4, line: 590, baseType: !70, size: 32, offset: 1344)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !280, file: !4, line: 592, baseType: !70, size: 32, offset: 1376)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !268, file: !4, line: 504, baseType: !339, size: 64, offset: 576)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !316)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !268, file: !4, line: 505, baseType: !247, size: 64, offset: 640)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !268, file: !4, line: 506, baseType: !343, size: 64, offset: 704)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !345)
!345 = !{!346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !358}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !344, file: !4, line: 434, baseType: !99, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !344, file: !4, line: 435, baseType: !264, size: 32, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !344, file: !4, line: 436, baseType: !131, size: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !344, file: !4, line: 437, baseType: !267, size: 64, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !344, file: !4, line: 438, baseType: !267, size: 64, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !344, file: !4, line: 439, baseType: !267, size: 64, offset: 320)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !344, file: !4, line: 440, baseType: !343, size: 64, offset: 384)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !344, file: !4, line: 441, baseType: !343, size: 64, offset: 448)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !344, file: !4, line: 442, baseType: !279, size: 64, offset: 512)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !344, file: !4, line: 443, baseType: !339, size: 64, offset: 576)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !344, file: !4, line: 444, baseType: !357, size: 32, offset: 640)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !344, file: !4, line: 445, baseType: !99, size: 64, offset: 704)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !268, file: !4, line: 507, baseType: !339, size: 64, offset: 768)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !268, file: !4, line: 508, baseType: !99, size: 64, offset: 832)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !268, file: !4, line: 509, baseType: !214, size: 16, offset: 896)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !268, file: !4, line: 510, baseType: !214, size: 16, offset: 912)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !260, file: !41, line: 43, baseType: !267, size: 64, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !260, file: !41, line: 44, baseType: !294, size: 64, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !260, file: !41, line: 45, baseType: !267, size: 64, offset: 384)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !260, file: !41, line: 46, baseType: !267, size: 64, offset: 448)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !260, file: !41, line: 47, baseType: !279, size: 64, offset: 512)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !260, file: !41, line: 49, baseType: !247, size: 64, offset: 576)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !260, file: !41, line: 50, baseType: !247, size: 64, offset: 640)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !260, file: !41, line: 51, baseType: !70, size: 32, offset: 704)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "etype", scope: !260, file: !41, line: 52, baseType: !372, size: 32, offset: 736)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntityType", file: !41, line: 31, baseType: !40)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !260, file: !41, line: 53, baseType: !131, size: 64, offset: 768)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !260, file: !41, line: 54, baseType: !131, size: 64, offset: 832)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "nexte", scope: !260, file: !41, line: 56, baseType: !376, size: 64, offset: 896)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "URI", scope: !260, file: !41, line: 57, baseType: !131, size: 64, offset: 960)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !260, file: !41, line: 58, baseType: !70, size: 32, offset: 1024)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "checked", scope: !260, file: !41, line: 59, baseType: !70, size: 32, offset: 1056)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "entityDecl", scope: !124, file: !69, line: 728, baseType: !381, size: 64, offset: 384)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "entityDeclSAXFunc", file: !69, line: 414, baseType: !382)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !99, !131, !70, !131, !131, !247}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "notationDecl", scope: !124, file: !69, line: 729, baseType: !386, size: 64, offset: 448)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "notationDeclSAXFunc", file: !69, line: 429, baseType: !128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "attributeDecl", scope: !124, file: !69, line: 730, baseType: !388, size: 64, offset: 512)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "attributeDeclSAXFunc", file: !69, line: 445, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !99, !131, !131, !70, !70, !131, !392}
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEnumerationPtr", file: !4, line: 239, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEnumeration", file: !4, line: 238, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEnumeration", file: !4, line: 240, size: 128, elements: !396)
!396 = !{!397, !399}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !395, file: !4, line: 241, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !395, file: !4, line: 242, baseType: !131, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "elementDecl", scope: !124, file: !69, line: 731, baseType: !401, size: 64, offset: 576)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "elementDeclSAXFunc", file: !69, line: 461, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !99, !131, !70, !405}
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentPtr", file: !4, line: 305, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContent", file: !4, line: 304, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlElementContent", file: !4, line: 306, size: 384, elements: !409)
!409 = !{!410, !412, !414, !415, !417, !418, !419}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !408, file: !4, line: 307, baseType: !411, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentType", file: !4, line: 283, baseType: !49)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "ocur", scope: !408, file: !4, line: 308, baseType: !413, size: 32, offset: 32)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentOccur", file: !4, line: 295, baseType: !55)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !408, file: !4, line: 309, baseType: !131, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !408, file: !4, line: 310, baseType: !416, size: 64, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !408, file: !4, line: 311, baseType: !416, size: 64, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !408, file: !4, line: 312, baseType: !416, size: 64, offset: 256)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !408, file: !4, line: 313, baseType: !131, size: 64, offset: 320)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "unparsedEntityDecl", scope: !124, file: !69, line: 732, baseType: !421, size: 64, offset: 640)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "unparsedEntityDeclSAXFunc", file: !69, line: 475, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !99, !131, !131, !131, !131}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "setDocumentLocator", scope: !124, file: !69, line: 733, baseType: !426, size: 64, offset: 704)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "setDocumentLocatorSAXFunc", file: !69, line: 488, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !99, !430}
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXLocatorPtr", file: !4, line: 42, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXLocator", file: !4, line: 41, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXLocator", file: !69, line: 323, size: 256, elements: !434)
!434 = !{!435, !439, !440, !441}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "getPublicId", scope: !433, file: !69, line: 324, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!131, !99}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "getSystemId", scope: !433, file: !69, line: 325, baseType: !436, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "getLineNumber", scope: !433, file: !69, line: 326, baseType: !138, size: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "getColumnNumber", scope: !433, file: !69, line: 327, baseType: !138, size: 64, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "startDocument", scope: !124, file: !69, line: 734, baseType: !443, size: 64, offset: 768)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "startDocumentSAXFunc", file: !69, line: 496, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !99}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "endDocument", scope: !124, file: !69, line: 735, baseType: !448, size: 64, offset: 832)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "endDocumentSAXFunc", file: !69, line: 503, baseType: !444)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "startElement", scope: !124, file: !69, line: 736, baseType: !450, size: 64, offset: 896)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "startElementSAXFunc", file: !69, line: 512, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !99, !131, !454}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "endElement", scope: !124, file: !69, line: 737, baseType: !456, size: 64, offset: 960)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "endElementSAXFunc", file: !69, line: 522, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !99, !131}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !124, file: !69, line: 738, baseType: !461, size: 64, offset: 1024)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "referenceSAXFunc", file: !69, line: 545, baseType: !457)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "characters", scope: !124, file: !69, line: 739, baseType: !463, size: 64, offset: 1088)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "charactersSAXFunc", file: !69, line: 555, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !99, !131, !70}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "ignorableWhitespace", scope: !124, file: !69, line: 740, baseType: !468, size: 64, offset: 1152)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "ignorableWhitespaceSAXFunc", file: !69, line: 567, baseType: !464)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "processingInstruction", scope: !124, file: !69, line: 741, baseType: !470, size: 64, offset: 1216)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "processingInstructionSAXFunc", file: !69, line: 578, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !99, !131, !131}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !124, file: !69, line: 742, baseType: !475, size: 64, offset: 1280)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "commentSAXFunc", file: !69, line: 588, baseType: !457)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "warning", scope: !124, file: !69, line: 743, baseType: !477, size: 64, offset: 1344)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "warningSAXFunc", file: !69, line: 610, baseType: !478)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !99, !232, null}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !124, file: !69, line: 744, baseType: !482, size: 64, offset: 1408)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "errorSAXFunc", file: !69, line: 620, baseType: !478)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "fatalError", scope: !124, file: !69, line: 745, baseType: !484, size: 64, offset: 1472)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "fatalErrorSAXFunc", file: !69, line: 632, baseType: !478)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "getParameterEntity", scope: !124, file: !69, line: 746, baseType: !486, size: 64, offset: 1536)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "getParameterEntitySAXFunc", file: !69, line: 401, baseType: !254)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "cdataBlock", scope: !124, file: !69, line: 747, baseType: !488, size: 64, offset: 1600)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "cdataBlockSAXFunc", file: !69, line: 598, baseType: !464)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "externalSubset", scope: !124, file: !69, line: 748, baseType: !490, size: 64, offset: 1664)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "externalSubsetSAXFunc", file: !69, line: 377, baseType: !128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !124, file: !69, line: 749, baseType: !5, size: 32, offset: 1728)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !124, file: !69, line: 751, baseType: !99, size: 64, offset: 1792)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "startElementNs", scope: !124, file: !69, line: 752, baseType: !494, size: 64, offset: 1856)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "startElementNsSAX2Func", file: !69, line: 694, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !99, !131, !131, !131, !70, !454, !70, !70, !454}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "endElementNs", scope: !124, file: !69, line: 753, baseType: !499, size: 64, offset: 1920)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "endElementNsSAX2Func", file: !69, line: 715, baseType: !128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "serror", scope: !124, file: !69, line: 754, baseType: !501, size: 64, offset: 1984)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStructuredErrorFunc", file: !62, line: 856, baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !99, !505}
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorPtr", file: !62, line: 77, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlError", file: !62, line: 76, baseType: !508)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlError", file: !62, line: 78, size: 704, elements: !509)
!509 = !{!510, !511, !512, !513, !515, !516, !517, !518, !519, !520, !521, !522, !523}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !508, file: !62, line: 79, baseType: !70, size: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !508, file: !62, line: 80, baseType: !70, size: 32, offset: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !508, file: !62, line: 81, baseType: !168, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !508, file: !62, line: 82, baseType: !514, size: 32, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorLevel", file: !62, line: 29, baseType: !61)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !508, file: !62, line: 83, baseType: !168, size: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !508, file: !62, line: 84, baseType: !70, size: 32, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "str1", scope: !508, file: !62, line: 85, baseType: !168, size: 64, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "str2", scope: !508, file: !62, line: 86, baseType: !168, size: 64, offset: 384)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "str3", scope: !508, file: !62, line: 87, baseType: !168, size: 64, offset: 448)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "int1", scope: !508, file: !62, line: 88, baseType: !70, size: 32, offset: 512)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "int2", scope: !508, file: !62, line: 89, baseType: !70, size: 32, offset: 544)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "ctxt", scope: !508, file: !62, line: 90, baseType: !99, size: 64, offset: 576)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !508, file: !62, line: 91, baseType: !99, size: 64, offset: 640)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !120, file: !69, line: 188, baseType: !99, size: 64, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "myDoc", scope: !120, file: !69, line: 189, baseType: !526, size: 64, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !280)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "wellFormed", scope: !120, file: !69, line: 190, baseType: !70, size: 32, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "replaceEntities", scope: !120, file: !69, line: 191, baseType: !70, size: 32, offset: 224)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !120, file: !69, line: 192, baseType: !131, size: 64, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !120, file: !69, line: 193, baseType: !131, size: 64, offset: 320)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !120, file: !69, line: 194, baseType: !70, size: 32, offset: 384)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "html", scope: !120, file: !69, line: 195, baseType: !70, size: 32, offset: 416)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !120, file: !69, line: 201, baseType: !150, size: 64, offset: 448)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "inputNr", scope: !120, file: !69, line: 202, baseType: !70, size: 32, offset: 512)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "inputMax", scope: !120, file: !69, line: 203, baseType: !70, size: 32, offset: 544)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "inputTab", scope: !120, file: !69, line: 204, baseType: !539, size: 64, offset: 576)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !120, file: !69, line: 207, baseType: !541, size: 64, offset: 640)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !268)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !120, file: !69, line: 208, baseType: !70, size: 32, offset: 704)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !120, file: !69, line: 209, baseType: !70, size: 32, offset: 736)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !120, file: !69, line: 210, baseType: !547, size: 64, offset: 768)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "record_info", scope: !120, file: !69, line: 212, baseType: !70, size: 32, offset: 832)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "node_seq", scope: !120, file: !69, line: 213, baseType: !550, size: 192, offset: 896)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserNodeInfoSeq", file: !69, line: 98, baseType: !551)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserNodeInfoSeq", file: !69, line: 100, size: 192, elements: !552)
!552 = !{!553, !554, !555}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !551, file: !69, line: 101, baseType: !230, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !551, file: !69, line: 102, baseType: !230, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !551, file: !69, line: 103, baseType: !556, size: 64, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserNodeInfo", file: !69, line: 86, baseType: !558)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserNodeInfo", file: !69, line: 89, size: 320, elements: !559)
!559 = !{!560, !563, !564, !565, !566}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !558, file: !69, line: 90, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "begin_pos", scope: !558, file: !69, line: 92, baseType: !230, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "begin_line", scope: !558, file: !69, line: 93, baseType: !230, size: 64, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "end_pos", scope: !558, file: !69, line: 94, baseType: !230, size: 64, offset: 192)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !558, file: !69, line: 95, baseType: !230, size: 64, offset: 256)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "errNo", scope: !120, file: !69, line: 215, baseType: !70, size: 32, offset: 1088)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "hasExternalSubset", scope: !120, file: !69, line: 217, baseType: !70, size: 32, offset: 1120)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "hasPErefs", scope: !120, file: !69, line: 218, baseType: !70, size: 32, offset: 1152)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "external", scope: !120, file: !69, line: 219, baseType: !70, size: 32, offset: 1184)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !120, file: !69, line: 221, baseType: !70, size: 32, offset: 1216)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !120, file: !69, line: 222, baseType: !70, size: 32, offset: 1248)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "vctxt", scope: !120, file: !69, line: 223, baseType: !574, size: 896, offset: 1280)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidCtxt", file: !575, line: 80, baseType: !576)
!575 = !DIFile(filename: "/usr/include/libxml2/libxml/valid.h", directory: "", checksumkind: CSK_MD5, checksum: "3c082c0a5b81e1bc9fd9a21b69014584")
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlValidCtxt", file: !575, line: 82, size: 896, elements: !577)
!577 = !{!578, !579, !581, !583, !584, !585, !586, !587, !588, !589, !590, !594, !595, !596, !597, !603}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !576, file: !575, line: 83, baseType: !99, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !576, file: !575, line: 84, baseType: !580, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidityErrorFunc", file: !575, line: 42, baseType: !478)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "warning", scope: !576, file: !575, line: 85, baseType: !582, size: 64, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidityWarningFunc", file: !575, line: 57, baseType: !478)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !576, file: !575, line: 88, baseType: !541, size: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !576, file: !575, line: 89, baseType: !70, size: 32, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !576, file: !575, line: 90, baseType: !70, size: 32, offset: 288)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !576, file: !575, line: 91, baseType: !547, size: 64, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "finishDtd", scope: !576, file: !575, line: 93, baseType: !5, size: 32, offset: 384)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !576, file: !575, line: 94, baseType: !526, size: 64, offset: 448)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !576, file: !575, line: 95, baseType: !70, size: 32, offset: 512)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "vstate", scope: !576, file: !575, line: 98, baseType: !591, size: 64, offset: 576)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidState", file: !575, line: 28, baseType: !593)
!593 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlValidState", file: !575, line: 28, flags: DIFlagFwdDecl)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "vstateNr", scope: !576, file: !575, line: 99, baseType: !70, size: 32, offset: 640)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "vstateMax", scope: !576, file: !575, line: 100, baseType: !70, size: 32, offset: 672)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "vstateTab", scope: !576, file: !575, line: 101, baseType: !591, size: 64, offset: 704)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "am", scope: !576, file: !575, line: 104, baseType: !598, size: 64, offset: 768)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAutomataPtr", file: !599, line: 30, baseType: !600)
!599 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlautomata.h", directory: "", checksumkind: CSK_MD5, checksum: "3c3c0a7d353bacfbede7c2decf27e62a")
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAutomata", file: !599, line: 29, baseType: !602)
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAutomata", file: !599, line: 29, flags: DIFlagFwdDecl)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !576, file: !575, line: 105, baseType: !604, size: 64, offset: 832)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAutomataStatePtr", file: !599, line: 38, baseType: !605)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAutomataState", file: !599, line: 37, baseType: !607)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAutomataState", file: !599, line: 37, flags: DIFlagFwdDecl)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !120, file: !69, line: 225, baseType: !609, size: 32, offset: 2176)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputState", file: !69, line: 131, baseType: !68)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !120, file: !69, line: 226, baseType: !70, size: 32, offset: 2208)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !120, file: !69, line: 228, baseType: !168, size: 64, offset: 2240)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !120, file: !69, line: 231, baseType: !131, size: 64, offset: 2304)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "nameNr", scope: !120, file: !69, line: 232, baseType: !70, size: 32, offset: 2368)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "nameMax", scope: !120, file: !69, line: 233, baseType: !70, size: 32, offset: 2400)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "nameTab", scope: !120, file: !69, line: 234, baseType: !454, size: 64, offset: 2432)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "nbChars", scope: !120, file: !69, line: 236, baseType: !617, size: 64, offset: 2496)
!617 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "checkIndex", scope: !120, file: !69, line: 237, baseType: !617, size: 64, offset: 2560)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "keepBlanks", scope: !120, file: !69, line: 238, baseType: !70, size: 32, offset: 2624)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "disableSAX", scope: !120, file: !69, line: 239, baseType: !70, size: 32, offset: 2656)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "inSubset", scope: !120, file: !69, line: 240, baseType: !70, size: 32, offset: 2688)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "intSubName", scope: !120, file: !69, line: 241, baseType: !131, size: 64, offset: 2752)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "extSubURI", scope: !120, file: !69, line: 242, baseType: !247, size: 64, offset: 2816)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "extSubSystem", scope: !120, file: !69, line: 243, baseType: !247, size: 64, offset: 2880)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !120, file: !69, line: 246, baseType: !186, size: 64, offset: 2944)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "spaceNr", scope: !120, file: !69, line: 247, baseType: !70, size: 32, offset: 3008)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "spaceMax", scope: !120, file: !69, line: 248, baseType: !70, size: 32, offset: 3040)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "spaceTab", scope: !120, file: !69, line: 249, baseType: !186, size: 64, offset: 3072)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !120, file: !69, line: 251, baseType: !70, size: 32, offset: 3136)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !120, file: !69, line: 252, baseType: !150, size: 64, offset: 3200)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !120, file: !69, line: 253, baseType: !70, size: 32, offset: 3264)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "nodelen", scope: !120, file: !69, line: 255, baseType: !70, size: 32, offset: 3296)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "nodemem", scope: !120, file: !69, line: 256, baseType: !70, size: 32, offset: 3328)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "pedantic", scope: !120, file: !69, line: 257, baseType: !70, size: 32, offset: 3360)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !120, file: !69, line: 258, baseType: !99, size: 64, offset: 3392)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "loadsubset", scope: !120, file: !69, line: 260, baseType: !70, size: 32, offset: 3456)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "linenumbers", scope: !120, file: !69, line: 261, baseType: !70, size: 32, offset: 3488)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "catalogs", scope: !120, file: !69, line: 262, baseType: !99, size: 64, offset: 3520)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "recovery", scope: !120, file: !69, line: 263, baseType: !70, size: 32, offset: 3584)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "progressive", scope: !120, file: !69, line: 264, baseType: !70, size: 32, offset: 3616)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !120, file: !69, line: 265, baseType: !642, size: 64, offset: 3648)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !334, line: 25, baseType: !643)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !334, line: 24, baseType: !333)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "atts", scope: !120, file: !69, line: 266, baseType: !454, size: 64, offset: 3712)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "maxatts", scope: !120, file: !69, line: 267, baseType: !70, size: 32, offset: 3776)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "docdict", scope: !120, file: !69, line: 268, baseType: !70, size: 32, offset: 3808)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "str_xml", scope: !120, file: !69, line: 273, baseType: !131, size: 64, offset: 3840)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "str_xmlns", scope: !120, file: !69, line: 274, baseType: !131, size: 64, offset: 3904)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "str_xml_ns", scope: !120, file: !69, line: 275, baseType: !131, size: 64, offset: 3968)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "sax2", scope: !120, file: !69, line: 280, baseType: !70, size: 32, offset: 4032)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "nsNr", scope: !120, file: !69, line: 281, baseType: !70, size: 32, offset: 4064)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "nsMax", scope: !120, file: !69, line: 282, baseType: !70, size: 32, offset: 4096)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "nsTab", scope: !120, file: !69, line: 283, baseType: !454, size: 64, offset: 4160)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "attallocs", scope: !120, file: !69, line: 284, baseType: !186, size: 64, offset: 4224)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "pushTab", scope: !120, file: !69, line: 285, baseType: !657, size: 64, offset: 4288)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStartTag", file: !69, line: 172, baseType: !659)
!659 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlStartTag", file: !69, line: 172, flags: DIFlagFwdDecl)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "attsDefault", scope: !120, file: !69, line: 286, baseType: !661, size: 64, offset: 4352)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !662, line: 22, baseType: !663)
!662 = !DIFile(filename: "/usr/include/libxml2/libxml/hash.h", directory: "", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !662, line: 21, baseType: !665)
!665 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !662, line: 21, flags: DIFlagFwdDecl)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "attsSpecial", scope: !120, file: !69, line: 287, baseType: !661, size: 64, offset: 4416)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "nsWellFormed", scope: !120, file: !69, line: 288, baseType: !70, size: 32, offset: 4480)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !120, file: !69, line: 289, baseType: !70, size: 32, offset: 4512)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "dictNames", scope: !120, file: !69, line: 294, baseType: !70, size: 32, offset: 4544)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "freeElemsNr", scope: !120, file: !69, line: 295, baseType: !70, size: 32, offset: 4576)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "freeElems", scope: !120, file: !69, line: 296, baseType: !541, size: 64, offset: 4608)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "freeAttrsNr", scope: !120, file: !69, line: 297, baseType: !70, size: 32, offset: 4672)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "freeAttrs", scope: !120, file: !69, line: 298, baseType: !674, size: 64, offset: 4736)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttrPtr", file: !4, line: 432, baseType: !675)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttr", file: !4, line: 431, baseType: !344)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "lastError", scope: !120, file: !69, line: 303, baseType: !507, size: 704, offset: 4800)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "parseMode", scope: !120, file: !69, line: 304, baseType: !679, size: 32, offset: 5504)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserMode", file: !69, line: 170, baseType: !90)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "nbentities", scope: !120, file: !69, line: 305, baseType: !230, size: 64, offset: 5568)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "sizeentities", scope: !120, file: !69, line: 306, baseType: !230, size: 64, offset: 5632)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfo", scope: !120, file: !69, line: 309, baseType: !556, size: 64, offset: 5696)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfoNr", scope: !120, file: !69, line: 310, baseType: !70, size: 32, offset: 5760)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfoMax", scope: !120, file: !69, line: 311, baseType: !70, size: 32, offset: 5792)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfoTab", scope: !120, file: !69, line: 312, baseType: !556, size: 64, offset: 5824)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "input_id", scope: !120, file: !69, line: 314, baseType: !70, size: 32, offset: 5888)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "sizeentcopy", scope: !120, file: !69, line: 315, baseType: !230, size: 64, offset: 5952)
!688 = !DILocation(line: 6, column: 22, scope: !112)
!689 = !DILocalVariable(name: "sax", scope: !112, file: !1, line: 7, type: !690)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXHandlerPtr", file: !4, line: 45, baseType: !691)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXHandler", file: !4, line: 44, baseType: !124)
!693 = !DILocation(line: 7, column: 22, scope: !112)
!694 = !DILocalVariable(name: "sax_struct", scope: !112, file: !1, line: 8, type: !692)
!695 = !DILocation(line: 8, column: 19, scope: !112)
!696 = !DILocalVariable(name: "userData", scope: !112, file: !1, line: 9, type: !99)
!697 = !DILocation(line: 9, column: 11, scope: !112)
!698 = !DILocation(line: 11, column: 12, scope: !112)
!699 = !DILocation(line: 11, column: 10, scope: !112)
!700 = !DILocation(line: 12, column: 9, scope: !701)
!701 = distinct !DILexicalBlock(scope: !112, file: !1, line: 12, column: 9)
!702 = !DILocation(line: 12, column: 14, scope: !701)
!703 = !DILocation(line: 12, column: 9, scope: !112)
!704 = !DILocation(line: 12, column: 23, scope: !701)
!705 = !DILocation(line: 14, column: 9, scope: !112)
!706 = !DILocation(line: 15, column: 24, scope: !112)
!707 = !DILocation(line: 15, column: 5, scope: !112)
!708 = !DILocation(line: 16, column: 24, scope: !112)
!709 = !DILocation(line: 16, column: 5, scope: !112)
!710 = !DILocation(line: 18, column: 9, scope: !711)
!711 = distinct !DILexicalBlock(scope: !112, file: !1, line: 18, column: 9)
!712 = !DILocation(line: 18, column: 14, scope: !711)
!713 = !DILocation(line: 18, column: 26, scope: !711)
!714 = !DILocation(line: 18, column: 9, scope: !112)
!715 = !DILocation(line: 19, column: 16, scope: !716)
!716 = distinct !DILexicalBlock(scope: !711, file: !1, line: 18, column: 45)
!717 = !DILocation(line: 19, column: 22, scope: !716)
!718 = !DILocation(line: 19, column: 9, scope: !716)
!719 = !DILocation(line: 19, column: 27, scope: !716)
!720 = !DILocation(line: 20, column: 5, scope: !716)
!721 = !DILocation(line: 21, column: 16, scope: !722)
!722 = distinct !DILexicalBlock(scope: !711, file: !1, line: 20, column: 12)
!723 = !DILocation(line: 21, column: 22, scope: !722)
!724 = !DILocation(line: 21, column: 9, scope: !722)
!725 = !DILocation(line: 22, column: 9, scope: !722)
!726 = !DILocation(line: 23, column: 16, scope: !722)
!727 = !DILocation(line: 23, column: 22, scope: !722)
!728 = !DILocation(line: 23, column: 9, scope: !722)
!729 = !DILocation(line: 23, column: 27, scope: !722)
!730 = !DILocation(line: 25, column: 22, scope: !112)
!731 = !DILocation(line: 25, column: 33, scope: !112)
!732 = !DILocation(line: 25, column: 44, scope: !112)
!733 = !DILocation(line: 25, column: 5, scope: !112)
!734 = !DILocation(line: 25, column: 11, scope: !112)
!735 = !DILocation(line: 25, column: 20, scope: !112)
!736 = !DILocation(line: 27, column: 23, scope: !112)
!737 = !DILocation(line: 27, column: 5, scope: !112)
!738 = !DILocation(line: 28, column: 5, scope: !112)
!739 = !DILocation(line: 29, column: 1, scope: !112)
!740 = distinct !DISubprogram(name: "memcpy", scope: !741, file: !741, line: 12, type: !742, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !115)
!741 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!742 = !DISubroutineType(types: !743)
!743 = !{!99, !99, !744, !746}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !747, line: 46, baseType: !230)
!747 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!748 = !DILocalVariable(name: "destaddr", arg: 1, scope: !740, file: !741, line: 12, type: !99)
!749 = !DILocation(line: 12, column: 20, scope: !740)
!750 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !740, file: !741, line: 12, type: !744)
!751 = !DILocation(line: 12, column: 42, scope: !740)
!752 = !DILocalVariable(name: "len", arg: 3, scope: !740, file: !741, line: 12, type: !746)
!753 = !DILocation(line: 12, column: 58, scope: !740)
!754 = !DILocalVariable(name: "dest", scope: !740, file: !741, line: 13, type: !168)
!755 = !DILocation(line: 13, column: 9, scope: !740)
!756 = !DILocation(line: 13, column: 16, scope: !740)
!757 = !DILocalVariable(name: "src", scope: !740, file: !741, line: 14, type: !232)
!758 = !DILocation(line: 14, column: 15, scope: !740)
!759 = !DILocation(line: 14, column: 21, scope: !740)
!760 = !DILocation(line: 16, column: 3, scope: !740)
!761 = !DILocation(line: 16, column: 13, scope: !740)
!762 = !DILocation(line: 16, column: 16, scope: !740)
!763 = !DILocation(line: 17, column: 19, scope: !740)
!764 = !DILocation(line: 17, column: 15, scope: !740)
!765 = !DILocation(line: 17, column: 10, scope: !740)
!766 = !DILocation(line: 17, column: 13, scope: !740)
!767 = distinct !{!767, !760, !763, !768}
!768 = !{!"llvm.loop.mustprogress"}
!769 = !DILocation(line: 18, column: 10, scope: !740)
!770 = !DILocation(line: 18, column: 3, scope: !740)
!771 = distinct !DISubprogram(name: "memset", scope: !772, file: !772, line: 12, type: !773, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !115)
!772 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!773 = !DISubroutineType(types: !774)
!774 = !{!99, !99, !70, !746}
!775 = !DILocalVariable(name: "dst", arg: 1, scope: !771, file: !772, line: 12, type: !99)
!776 = !DILocation(line: 12, column: 20, scope: !771)
!777 = !DILocalVariable(name: "s", arg: 2, scope: !771, file: !772, line: 12, type: !70)
!778 = !DILocation(line: 12, column: 29, scope: !771)
!779 = !DILocalVariable(name: "count", arg: 3, scope: !771, file: !772, line: 12, type: !746)
!780 = !DILocation(line: 12, column: 39, scope: !771)
!781 = !DILocalVariable(name: "a", scope: !771, file: !772, line: 13, type: !168)
!782 = !DILocation(line: 13, column: 9, scope: !771)
!783 = !DILocation(line: 13, column: 13, scope: !771)
!784 = !DILocation(line: 14, column: 3, scope: !771)
!785 = !DILocation(line: 14, column: 15, scope: !771)
!786 = !DILocation(line: 14, column: 18, scope: !771)
!787 = !DILocation(line: 15, column: 12, scope: !771)
!788 = !DILocation(line: 15, column: 7, scope: !771)
!789 = !DILocation(line: 15, column: 10, scope: !771)
!790 = distinct !{!790, !784, !787, !768}
!791 = !DILocation(line: 16, column: 10, scope: !771)
!792 = !DILocation(line: 16, column: 3, scope: !771)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/050_HTMLparser.c_2318_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/050_HTMLparser.c_2318_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
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

@.str = private unnamed_addr constant [10 x i8] c"html_size\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"html_data\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/050_HTMLparser.c_2318_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"/home/shafi/tools/klee/runtime/Intrinsic/klee_range.c\00", align 1
@.str.1.5 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str.2.6 = private unnamed_addr constant [5 x i8] c"user\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !113 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !117, metadata !DIExpression()), !dbg !689
  call void @llvm.dbg.declare(metadata i8** %3, metadata !690, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.declare(metadata i32* %4, metadata !692, metadata !DIExpression()), !dbg !693
  %5 = call i32 @klee_range(i32 noundef 1, i32 noundef 1024, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)), !dbg !694
  store i32 %5, i32* %4, align 4, !dbg !695
  %6 = load i32, i32* %4, align 4, !dbg !696
  %7 = sext i32 %6 to i64, !dbg !696
  %8 = call noalias i8* @malloc(i64 noundef %7) #6, !dbg !697
  store i8* %8, i8** %3, align 8, !dbg !698
  %9 = load i8*, i8** %3, align 8, !dbg !699
  %10 = load i32, i32* %4, align 4, !dbg !700
  %11 = sext i32 %10 to i64, !dbg !700
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef %11, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)), !dbg !701
  %12 = load i8*, i8** %3, align 8, !dbg !702
  %13 = load i32, i32* %4, align 4, !dbg !703
  %14 = call %struct._xmlParserCtxt* @htmlCreateMemoryParserCtxt(i8* noundef %12, i32 noundef %13), !dbg !704
  store %struct._xmlParserCtxt* %14, %struct._xmlParserCtxt** %2, align 8, !dbg !705
  %15 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !706
  %16 = icmp eq %struct._xmlParserCtxt* %15, null, !dbg !708
  br i1 %16, label %17, label %19, !dbg !709

17:                                               ; preds = %0
  %18 = load i8*, i8** %3, align 8, !dbg !710
  call void @free(i8* noundef %18) #6, !dbg !712
  store i32 0, i32* %1, align 4, !dbg !713
  br label %37, !dbg !713

19:                                               ; preds = %0
  %20 = load i32, i32* %4, align 4, !dbg !714
  %21 = icmp sge i32 %20, 4, !dbg !716
  br i1 %21, label %22, label %31, !dbg !717

22:                                               ; preds = %19
  %23 = load i8*, i8** %3, align 8, !dbg !718
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !718
  store i8 60, i8* %24, align 1, !dbg !720
  %25 = load i8*, i8** %3, align 8, !dbg !721
  %26 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !721
  store i8 33, i8* %26, align 1, !dbg !722
  %27 = load i8*, i8** %3, align 8, !dbg !723
  %28 = getelementptr inbounds i8, i8* %27, i64 2, !dbg !723
  store i8 45, i8* %28, align 1, !dbg !724
  %29 = load i8*, i8** %3, align 8, !dbg !725
  %30 = getelementptr inbounds i8, i8* %29, i64 3, !dbg !725
  store i8 45, i8* %30, align 1, !dbg !726
  br label %31, !dbg !727

31:                                               ; preds = %22, %19
  %32 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !728
  %33 = call i32 @htmlParseDocument(%struct._xmlParserCtxt* noundef %32), !dbg !729
  %34 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.3, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !730
  %35 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !731
  call void @htmlFreeParserCtxt(%struct._xmlParserCtxt* noundef %35), !dbg !732
  %36 = load i8*, i8** %3, align 8, !dbg !733
  call void @free(i8* noundef %36) #6, !dbg !734
  store i32 0, i32* %1, align 4, !dbg !735
  br label %37, !dbg !735

37:                                               ; preds = %31, %17
  %38 = load i32, i32* %1, align 4, !dbg !736
  ret i32 %38, !dbg !736
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare %struct._xmlParserCtxt* @htmlCreateMemoryParserCtxt(i8* noundef, i32 noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

declare i32 @htmlParseDocument(%struct._xmlParserCtxt* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

declare void @htmlFreeParserCtxt(%struct._xmlParserCtxt* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @klee_range(i32 noundef %0, i32 noundef %1, i8* noundef %2) #5 !dbg !737 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !741, metadata !DIExpression()), !dbg !742
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !743, metadata !DIExpression()), !dbg !744
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !745, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.declare(metadata i32* %8, metadata !747, metadata !DIExpression()), !dbg !748
  %9 = load i32, i32* %5, align 4, !dbg !749
  %10 = load i32, i32* %6, align 4, !dbg !751
  %11 = icmp sge i32 %9, %10, !dbg !752
  br i1 %11, label %12, label %13, !dbg !753

12:                                               ; preds = %3
  call void @klee_report_error(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 noundef 16, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.6, i64 0, i64 0)) #7, !dbg !754
  unreachable, !dbg !754

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4, !dbg !755
  %15 = add nsw i32 %14, 1, !dbg !757
  %16 = load i32, i32* %6, align 4, !dbg !758
  %17 = icmp eq i32 %15, %16, !dbg !759
  br i1 %17, label %18, label %20, !dbg !760

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4, !dbg !761
  store i32 %19, i32* %4, align 4, !dbg !763
  br label %44, !dbg !763

20:                                               ; preds = %13
  %21 = bitcast i32* %8 to i8*, !dbg !764
  %22 = load i8*, i8** %7, align 8, !dbg !766
  call void @klee_make_symbolic(i8* noundef %21, i64 noundef 4, i8* noundef %22), !dbg !767
  %23 = load i32, i32* %5, align 4, !dbg !768
  %24 = icmp eq i32 %23, 0, !dbg !770
  br i1 %24, label %25, label %31, !dbg !771

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4, !dbg !772
  %27 = load i32, i32* %6, align 4, !dbg !774
  %28 = icmp ult i32 %26, %27, !dbg !775
  %29 = zext i1 %28 to i32, !dbg !775
  %30 = sext i32 %29 to i64, !dbg !776
  call void @klee_assume(i64 noundef %30), !dbg !777
  br label %42, !dbg !778

31:                                               ; preds = %20
  %32 = load i32, i32* %5, align 4, !dbg !779
  %33 = load i32, i32* %8, align 4, !dbg !781
  %34 = icmp sle i32 %32, %33, !dbg !782
  %35 = zext i1 %34 to i32, !dbg !782
  %36 = sext i32 %35 to i64, !dbg !779
  call void @klee_assume(i64 noundef %36), !dbg !783
  %37 = load i32, i32* %8, align 4, !dbg !784
  %38 = load i32, i32* %6, align 4, !dbg !785
  %39 = icmp slt i32 %37, %38, !dbg !786
  %40 = zext i1 %39 to i32, !dbg !786
  %41 = sext i32 %40 to i64, !dbg !784
  call void @klee_assume(i64 noundef %41), !dbg !787
  br label %42

42:                                               ; preds = %31, %25
  %43 = load i32, i32* %8, align 4, !dbg !788
  store i32 %43, i32* %4, align 4, !dbg !789
  br label %44, !dbg !789

44:                                               ; preds = %42, %18
  %45 = load i32, i32* %4, align 4, !dbg !790
  ret i32 %45, !dbg !790
}

; Function Attrs: noreturn
declare void @klee_report_error(i8* noundef, i32 noundef, i8* noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

!llvm.dbg.cu = !{!0, !102}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112, !112}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !98, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/050_HTMLparser.c_2318_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "32922252f9cd28306af418205e4a9e3c")
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
!98 = !{!99, !101}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!102 = distinct !DICompileUnit(language: DW_LANG_C89, file: !103, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !104, splitDebugInlining: false, nameTableKind: None)
!103 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Intrinsic/klee_range.c", directory: "/home/shafi/tools/klee/build/runtime/Intrinsic", checksumkind: CSK_MD5, checksum: "967b9ed6e7b3db2f47ee33010ec31c43")
!104 = !{!5}
!105 = !{i32 7, !"Dwarf Version", i32 5}
!106 = !{i32 2, !"Debug Info Version", i32 3}
!107 = !{i32 1, !"wchar_size", i32 4}
!108 = !{i32 7, !"PIC Level", i32 2}
!109 = !{i32 7, !"PIE Level", i32 2}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"Ubuntu clang version 14.0.6"}
!113 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !114, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !116)
!114 = !DISubroutineType(types: !115)
!115 = !{!70}
!116 = !{}
!117 = !DILocalVariable(name: "ctxt", scope: !113, file: !1, line: 7, type: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "htmlParserCtxtPtr", file: !119, line: 28, baseType: !120)
!119 = !DIFile(filename: "/usr/include/libxml2/libxml/HTMLparser.h", directory: "", checksumkind: CSK_MD5, checksum: "d57891c89573ed6dce04b8133e7438d2")
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxtPtr", file: !4, line: 39, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !4, line: 38, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !69, line: 186, size: 6016, elements: !124)
!124 = !{!125, !525, !526, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !541, !545, !546, !547, !549, !550, !568, !569, !570, !571, !572, !573, !574, !609, !611, !612, !613, !614, !615, !616, !617, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !661, !667, !668, !669, !670, !671, !672, !673, !674, !678, !679, !681, !682, !683, !684, !685, !686, !687, !688}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "sax", scope: !123, file: !69, line: 187, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXHandler", file: !69, line: 721, size: 2048, elements: !128)
!128 = !{!129, !139, !144, !146, !148, !253, !381, !386, !388, !401, !421, !426, !443, !448, !450, !456, !461, !463, !468, !470, !475, !477, !482, !484, !486, !488, !490, !492, !493, !494, !499, !501}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "internalSubset", scope: !127, file: !69, line: 722, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "internalSubsetSAXFunc", file: !69, line: 364, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !101, !134, !134, !134}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !137, line: 28, baseType: !138)
!137 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!138 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "isStandalone", scope: !127, file: !69, line: 723, baseType: !140, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "isStandaloneSAXFunc", file: !69, line: 642, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!70, !101}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "hasInternalSubset", scope: !127, file: !69, line: 724, baseType: !145, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "hasInternalSubsetSAXFunc", file: !69, line: 651, baseType: !141)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "hasExternalSubset", scope: !127, file: !69, line: 725, baseType: !147, size: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "hasExternalSubsetSAXFunc", file: !69, line: 661, baseType: !141)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "resolveEntity", scope: !127, file: !69, line: 726, baseType: !149, size: 64, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "resolveEntitySAXFunc", file: !69, line: 352, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!153, !101, !134, !134}
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputPtr", file: !4, line: 36, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInput", file: !4, line: 35, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInput", file: !69, line: 54, size: 832, elements: !157)
!157 = !{!158, !232, !235, !236, !237, !238, !239, !240, !241, !242, !243, !249, !250, !251, !252}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !156, file: !69, line: 56, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputBufferPtr", file: !4, line: 29, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputBuffer", file: !4, line: 28, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInputBuffer", file: !163, line: 125, size: 512, elements: !164)
!163 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlIO.h", directory: "", checksumkind: CSK_MD5, checksum: "a868e7a396360b2f16d10eac4a34669c")
!164 = !{!165, !166, !171, !173, !222, !227, !228, !229, !230}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !162, file: !163, line: 126, baseType: !101, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "readcallback", scope: !162, file: !163, line: 127, baseType: !167, size: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlInputReadCallback", file: !163, line: 54, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!70, !101, !99, !70}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "closecallback", scope: !162, file: !163, line: 128, baseType: !172, size: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlInputCloseCallback", file: !163, line: 63, baseType: !141)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !162, file: !163, line: 130, baseType: !174, size: 64, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandlerPtr", file: !175, line: 145, baseType: !176)
!175 = !DIFile(filename: "/usr/include/libxml2/libxml/encoding.h", directory: "", checksumkind: CSK_MD5, checksum: "807b84fade38abad3ae0d9b6af714dbc")
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandler", file: !175, line: 144, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlCharEncodingHandler", file: !175, line: 146, size: 448, elements: !179)
!179 = !{!180, !181, !190, !192, !195, !196, !221}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !178, file: !175, line: 147, baseType: !99, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !178, file: !175, line: 148, baseType: !182, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingInputFunc", file: !175, line: 101, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!70, !186, !187, !188, !187}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !178, file: !175, line: 149, baseType: !191, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingOutputFunc", file: !175, line: 123, baseType: !183)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_in", scope: !178, file: !175, line: 151, baseType: !193, size: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !194, line: 29, baseType: !101)
!194 = !DIFile(filename: "/usr/include/iconv.h", directory: "", checksumkind: CSK_MD5, checksum: "edfee9bcfa398c9184cc8f95deb97c16")
!195 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_out", scope: !178, file: !175, line: 152, baseType: !193, size: 64, offset: 256)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_in", scope: !178, file: !175, line: 155, baseType: !197, size: 64, offset: 320)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "uconv_t", file: !175, line: 141, baseType: !199)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_uconv_t", file: !175, line: 134, size: 16640, elements: !200)
!200 = !{!201, !206, !207, !218, !220}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "uconv", scope: !199, file: !175, line: 135, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "UConverter", file: !204, line: 96, baseType: !205)
!204 = !DIFile(filename: "/usr/include/unicode/ucnv_err.h", directory: "", checksumkind: CSK_MD5, checksum: "a507bbb125e54d860485ec054a4a55ed")
!205 = !DICompositeType(tag: DW_TAG_structure_type, name: "UConverter", file: !204, line: 93, flags: DIFlagFwdDecl)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !199, file: !175, line: 136, baseType: !202, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_buf", scope: !199, file: !175, line: 137, baseType: !208, size: 16384, offset: 128)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 16384, elements: !216)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "UChar", file: !210, line: 388, baseType: !211)
!210 = !DIFile(filename: "/usr/include/unicode/umachine.h", directory: "", checksumkind: CSK_MD5, checksum: "2d902ff00eac765b305cb113b74d34df")
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !212, line: 25, baseType: !213)
!212 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !214, line: 40, baseType: !215)
!214 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!215 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!216 = !{!217}
!217 = !DISubrange(count: 1024)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_source", scope: !199, file: !175, line: 138, baseType: !219, size: 64, offset: 16512)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_target", scope: !199, file: !175, line: 139, baseType: !219, size: 64, offset: 16576)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_out", scope: !178, file: !175, line: 156, baseType: !197, size: 64, offset: 384)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !162, file: !163, line: 132, baseType: !223, size: 64, offset: 256)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufPtr", file: !4, line: 114, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !4, line: 105, baseType: !226)
!226 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !4, line: 105, flags: DIFlagFwdDecl)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !162, file: !163, line: 133, baseType: !223, size: 64, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "compressed", scope: !162, file: !163, line: 134, baseType: !70, size: 32, offset: 384)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !162, file: !163, line: 135, baseType: !70, size: 32, offset: 416)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "rawconsumed", scope: !162, file: !163, line: 136, baseType: !231, size: 64, offset: 448)
!231 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !156, file: !69, line: 58, baseType: !233, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !156, file: !69, line: 59, baseType: !233, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !156, file: !69, line: 60, baseType: !134, size: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !156, file: !69, line: 61, baseType: !134, size: 64, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !156, file: !69, line: 62, baseType: !134, size: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !156, file: !69, line: 63, baseType: !70, size: 32, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !156, file: !69, line: 64, baseType: !70, size: 32, offset: 416)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !156, file: !69, line: 65, baseType: !70, size: 32, offset: 448)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "consumed", scope: !156, file: !69, line: 71, baseType: !231, size: 64, offset: 512)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !156, file: !69, line: 72, baseType: !244, size: 64, offset: 576)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputDeallocate", file: !69, line: 52, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !248}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !156, file: !69, line: 73, baseType: !134, size: 64, offset: 640)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !156, file: !69, line: 74, baseType: !134, size: 64, offset: 704)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !156, file: !69, line: 75, baseType: !70, size: 32, offset: 768)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !156, file: !69, line: 76, baseType: !70, size: 32, offset: 800)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "getEntity", scope: !127, file: !69, line: 727, baseType: !254, size: 64, offset: 320)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "getEntitySAXFunc", file: !69, line: 390, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!258, !101, !134}
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntityPtr", file: !4, line: 49, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntity", file: !4, line: 48, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEntity", file: !41, line: 38, size: 1088, elements: !262)
!262 = !{!263, !264, !266, !267, !364, !365, !366, !367, !368, !369, !370, !371, !372, !374, !375, !376, !378, !379, !380}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !261, file: !41, line: 39, baseType: !101, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !261, file: !41, line: 40, baseType: !265, size: 32, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !261, file: !41, line: 41, baseType: !134, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !261, file: !41, line: 42, baseType: !268, size: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !270)
!270 = !{!271, !272, !273, !274, !275, !276, !277, !278, !279, !339, !342, !343, !360, !361, !362, !363}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !269, file: !4, line: 493, baseType: !101, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !269, file: !4, line: 494, baseType: !265, size: 32, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !269, file: !4, line: 495, baseType: !134, size: 64, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !269, file: !4, line: 496, baseType: !268, size: 64, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !269, file: !4, line: 497, baseType: !268, size: 64, offset: 256)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !269, file: !4, line: 498, baseType: !268, size: 64, offset: 320)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !269, file: !4, line: 499, baseType: !268, size: 64, offset: 384)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !269, file: !4, line: 500, baseType: !268, size: 64, offset: 448)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !269, file: !4, line: 501, baseType: !280, size: 64, offset: 512)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !282)
!282 = !{!283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !314, !315, !326, !327, !328, !329, !330, !331, !332, !336, !337, !338}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !281, file: !4, line: 560, baseType: !101, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !281, file: !4, line: 561, baseType: !265, size: 32, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !281, file: !4, line: 562, baseType: !99, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !281, file: !4, line: 563, baseType: !268, size: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !281, file: !4, line: 564, baseType: !268, size: 64, offset: 256)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !281, file: !4, line: 565, baseType: !268, size: 64, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !281, file: !4, line: 566, baseType: !268, size: 64, offset: 384)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !281, file: !4, line: 567, baseType: !268, size: 64, offset: 448)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !281, file: !4, line: 568, baseType: !280, size: 64, offset: 512)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !281, file: !4, line: 571, baseType: !70, size: 32, offset: 576)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !281, file: !4, line: 572, baseType: !70, size: 32, offset: 608)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !281, file: !4, line: 578, baseType: !295, size: 64, offset: 640)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !297)
!297 = !{!298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !296, file: !4, line: 406, baseType: !101, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !296, file: !4, line: 407, baseType: !265, size: 32, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !296, file: !4, line: 408, baseType: !134, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !296, file: !4, line: 409, baseType: !268, size: 64, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !296, file: !4, line: 410, baseType: !268, size: 64, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !296, file: !4, line: 411, baseType: !280, size: 64, offset: 320)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !296, file: !4, line: 412, baseType: !268, size: 64, offset: 384)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !296, file: !4, line: 413, baseType: !268, size: 64, offset: 448)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !296, file: !4, line: 414, baseType: !280, size: 64, offset: 512)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !296, file: !4, line: 417, baseType: !101, size: 64, offset: 576)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !296, file: !4, line: 418, baseType: !101, size: 64, offset: 640)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !296, file: !4, line: 419, baseType: !101, size: 64, offset: 704)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !296, file: !4, line: 420, baseType: !101, size: 64, offset: 768)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !296, file: !4, line: 421, baseType: !134, size: 64, offset: 832)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !296, file: !4, line: 422, baseType: !134, size: 64, offset: 896)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !296, file: !4, line: 423, baseType: !101, size: 64, offset: 960)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !281, file: !4, line: 579, baseType: !295, size: 64, offset: 704)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !281, file: !4, line: 580, baseType: !316, size: 64, offset: 768)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !318)
!318 = !{!319, !320, !322, !323, !324, !325}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !317, file: !4, line: 389, baseType: !316, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !317, file: !4, line: 390, baseType: !321, size: 32, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !265)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !317, file: !4, line: 391, baseType: !134, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !317, file: !4, line: 392, baseType: !134, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !317, file: !4, line: 393, baseType: !101, size: 64, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !317, file: !4, line: 394, baseType: !280, size: 64, offset: 320)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !281, file: !4, line: 581, baseType: !134, size: 64, offset: 832)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !281, file: !4, line: 582, baseType: !134, size: 64, offset: 896)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !281, file: !4, line: 583, baseType: !101, size: 64, offset: 960)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !281, file: !4, line: 584, baseType: !101, size: 64, offset: 1024)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !281, file: !4, line: 585, baseType: !134, size: 64, offset: 1088)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !281, file: !4, line: 586, baseType: !70, size: 32, offset: 1152)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !281, file: !4, line: 588, baseType: !333, size: 64, offset: 1216)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !335, line: 24, flags: DIFlagFwdDecl)
!335 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!336 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !281, file: !4, line: 589, baseType: !101, size: 64, offset: 1280)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !281, file: !4, line: 590, baseType: !70, size: 32, offset: 1344)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !281, file: !4, line: 592, baseType: !70, size: 32, offset: 1376)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !269, file: !4, line: 504, baseType: !340, size: 64, offset: 576)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !317)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !269, file: !4, line: 505, baseType: !248, size: 64, offset: 640)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !269, file: !4, line: 506, baseType: !344, size: 64, offset: 704)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !346)
!346 = !{!347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !359}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !345, file: !4, line: 434, baseType: !101, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !345, file: !4, line: 435, baseType: !265, size: 32, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !345, file: !4, line: 436, baseType: !134, size: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !345, file: !4, line: 437, baseType: !268, size: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !345, file: !4, line: 438, baseType: !268, size: 64, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !345, file: !4, line: 439, baseType: !268, size: 64, offset: 320)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !345, file: !4, line: 440, baseType: !344, size: 64, offset: 384)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !345, file: !4, line: 441, baseType: !344, size: 64, offset: 448)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !345, file: !4, line: 442, baseType: !280, size: 64, offset: 512)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !345, file: !4, line: 443, baseType: !340, size: 64, offset: 576)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !345, file: !4, line: 444, baseType: !358, size: 32, offset: 640)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !345, file: !4, line: 445, baseType: !101, size: 64, offset: 704)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !269, file: !4, line: 507, baseType: !340, size: 64, offset: 768)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !269, file: !4, line: 508, baseType: !101, size: 64, offset: 832)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !269, file: !4, line: 509, baseType: !215, size: 16, offset: 896)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !269, file: !4, line: 510, baseType: !215, size: 16, offset: 912)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !261, file: !41, line: 43, baseType: !268, size: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !261, file: !41, line: 44, baseType: !295, size: 64, offset: 320)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !261, file: !41, line: 45, baseType: !268, size: 64, offset: 384)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !261, file: !41, line: 46, baseType: !268, size: 64, offset: 448)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !261, file: !41, line: 47, baseType: !280, size: 64, offset: 512)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !261, file: !41, line: 49, baseType: !248, size: 64, offset: 576)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !261, file: !41, line: 50, baseType: !248, size: 64, offset: 640)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !261, file: !41, line: 51, baseType: !70, size: 32, offset: 704)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "etype", scope: !261, file: !41, line: 52, baseType: !373, size: 32, offset: 736)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntityType", file: !41, line: 31, baseType: !40)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !261, file: !41, line: 53, baseType: !134, size: 64, offset: 768)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !261, file: !41, line: 54, baseType: !134, size: 64, offset: 832)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "nexte", scope: !261, file: !41, line: 56, baseType: !377, size: 64, offset: 896)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "URI", scope: !261, file: !41, line: 57, baseType: !134, size: 64, offset: 960)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !261, file: !41, line: 58, baseType: !70, size: 32, offset: 1024)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "checked", scope: !261, file: !41, line: 59, baseType: !70, size: 32, offset: 1056)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "entityDecl", scope: !127, file: !69, line: 728, baseType: !382, size: 64, offset: 384)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "entityDeclSAXFunc", file: !69, line: 414, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !101, !134, !70, !134, !134, !248}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "notationDecl", scope: !127, file: !69, line: 729, baseType: !387, size: 64, offset: 448)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "notationDeclSAXFunc", file: !69, line: 429, baseType: !131)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "attributeDecl", scope: !127, file: !69, line: 730, baseType: !389, size: 64, offset: 512)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "attributeDeclSAXFunc", file: !69, line: 445, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !101, !134, !134, !70, !70, !134, !393}
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEnumerationPtr", file: !4, line: 239, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEnumeration", file: !4, line: 238, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEnumeration", file: !4, line: 240, size: 128, elements: !397)
!397 = !{!398, !400}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !396, file: !4, line: 241, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !396, file: !4, line: 242, baseType: !134, size: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "elementDecl", scope: !127, file: !69, line: 731, baseType: !402, size: 64, offset: 576)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "elementDeclSAXFunc", file: !69, line: 461, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !101, !134, !70, !406}
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentPtr", file: !4, line: 305, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContent", file: !4, line: 304, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlElementContent", file: !4, line: 306, size: 384, elements: !410)
!410 = !{!411, !413, !415, !416, !418, !419, !420}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !409, file: !4, line: 307, baseType: !412, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentType", file: !4, line: 283, baseType: !49)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "ocur", scope: !409, file: !4, line: 308, baseType: !414, size: 32, offset: 32)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentOccur", file: !4, line: 295, baseType: !55)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !409, file: !4, line: 309, baseType: !134, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !409, file: !4, line: 310, baseType: !417, size: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !409, file: !4, line: 311, baseType: !417, size: 64, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !409, file: !4, line: 312, baseType: !417, size: 64, offset: 256)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !409, file: !4, line: 313, baseType: !134, size: 64, offset: 320)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "unparsedEntityDecl", scope: !127, file: !69, line: 732, baseType: !422, size: 64, offset: 640)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "unparsedEntityDeclSAXFunc", file: !69, line: 475, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !101, !134, !134, !134, !134}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "setDocumentLocator", scope: !127, file: !69, line: 733, baseType: !427, size: 64, offset: 704)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "setDocumentLocatorSAXFunc", file: !69, line: 488, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !101, !431}
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXLocatorPtr", file: !4, line: 42, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXLocator", file: !4, line: 41, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXLocator", file: !69, line: 323, size: 256, elements: !435)
!435 = !{!436, !440, !441, !442}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "getPublicId", scope: !434, file: !69, line: 324, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!134, !101}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "getSystemId", scope: !434, file: !69, line: 325, baseType: !437, size: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "getLineNumber", scope: !434, file: !69, line: 326, baseType: !141, size: 64, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "getColumnNumber", scope: !434, file: !69, line: 327, baseType: !141, size: 64, offset: 192)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "startDocument", scope: !127, file: !69, line: 734, baseType: !444, size: 64, offset: 768)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "startDocumentSAXFunc", file: !69, line: 496, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !101}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "endDocument", scope: !127, file: !69, line: 735, baseType: !449, size: 64, offset: 832)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "endDocumentSAXFunc", file: !69, line: 503, baseType: !445)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "startElement", scope: !127, file: !69, line: 736, baseType: !451, size: 64, offset: 896)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "startElementSAXFunc", file: !69, line: 512, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !101, !134, !455}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "endElement", scope: !127, file: !69, line: 737, baseType: !457, size: 64, offset: 960)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "endElementSAXFunc", file: !69, line: 522, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !101, !134}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !127, file: !69, line: 738, baseType: !462, size: 64, offset: 1024)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "referenceSAXFunc", file: !69, line: 545, baseType: !458)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "characters", scope: !127, file: !69, line: 739, baseType: !464, size: 64, offset: 1088)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "charactersSAXFunc", file: !69, line: 555, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !101, !134, !70}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "ignorableWhitespace", scope: !127, file: !69, line: 740, baseType: !469, size: 64, offset: 1152)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "ignorableWhitespaceSAXFunc", file: !69, line: 567, baseType: !465)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "processingInstruction", scope: !127, file: !69, line: 741, baseType: !471, size: 64, offset: 1216)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "processingInstructionSAXFunc", file: !69, line: 578, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !101, !134, !134}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !127, file: !69, line: 742, baseType: !476, size: 64, offset: 1280)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "commentSAXFunc", file: !69, line: 588, baseType: !458)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "warning", scope: !127, file: !69, line: 743, baseType: !478, size: 64, offset: 1344)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "warningSAXFunc", file: !69, line: 610, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !101, !233, null}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !127, file: !69, line: 744, baseType: !483, size: 64, offset: 1408)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "errorSAXFunc", file: !69, line: 620, baseType: !479)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "fatalError", scope: !127, file: !69, line: 745, baseType: !485, size: 64, offset: 1472)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "fatalErrorSAXFunc", file: !69, line: 632, baseType: !479)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "getParameterEntity", scope: !127, file: !69, line: 746, baseType: !487, size: 64, offset: 1536)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "getParameterEntitySAXFunc", file: !69, line: 401, baseType: !255)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "cdataBlock", scope: !127, file: !69, line: 747, baseType: !489, size: 64, offset: 1600)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "cdataBlockSAXFunc", file: !69, line: 598, baseType: !465)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "externalSubset", scope: !127, file: !69, line: 748, baseType: !491, size: 64, offset: 1664)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "externalSubsetSAXFunc", file: !69, line: 377, baseType: !131)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !127, file: !69, line: 749, baseType: !5, size: 32, offset: 1728)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !127, file: !69, line: 751, baseType: !101, size: 64, offset: 1792)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "startElementNs", scope: !127, file: !69, line: 752, baseType: !495, size: 64, offset: 1856)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "startElementNsSAX2Func", file: !69, line: 694, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !101, !134, !134, !134, !70, !455, !70, !70, !455}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "endElementNs", scope: !127, file: !69, line: 753, baseType: !500, size: 64, offset: 1920)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "endElementNsSAX2Func", file: !69, line: 715, baseType: !131)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "serror", scope: !127, file: !69, line: 754, baseType: !502, size: 64, offset: 1984)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStructuredErrorFunc", file: !62, line: 856, baseType: !503)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{null, !101, !506}
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorPtr", file: !62, line: 77, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlError", file: !62, line: 76, baseType: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlError", file: !62, line: 78, size: 704, elements: !510)
!510 = !{!511, !512, !513, !514, !516, !517, !518, !519, !520, !521, !522, !523, !524}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !509, file: !62, line: 79, baseType: !70, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !509, file: !62, line: 80, baseType: !70, size: 32, offset: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !509, file: !62, line: 81, baseType: !99, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !509, file: !62, line: 82, baseType: !515, size: 32, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorLevel", file: !62, line: 29, baseType: !61)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !509, file: !62, line: 83, baseType: !99, size: 64, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !509, file: !62, line: 84, baseType: !70, size: 32, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "str1", scope: !509, file: !62, line: 85, baseType: !99, size: 64, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "str2", scope: !509, file: !62, line: 86, baseType: !99, size: 64, offset: 384)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "str3", scope: !509, file: !62, line: 87, baseType: !99, size: 64, offset: 448)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "int1", scope: !509, file: !62, line: 88, baseType: !70, size: 32, offset: 512)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "int2", scope: !509, file: !62, line: 89, baseType: !70, size: 32, offset: 544)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ctxt", scope: !509, file: !62, line: 90, baseType: !101, size: 64, offset: 576)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !509, file: !62, line: 91, baseType: !101, size: 64, offset: 640)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !123, file: !69, line: 188, baseType: !101, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "myDoc", scope: !123, file: !69, line: 189, baseType: !527, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !281)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "wellFormed", scope: !123, file: !69, line: 190, baseType: !70, size: 32, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "replaceEntities", scope: !123, file: !69, line: 191, baseType: !70, size: 32, offset: 224)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !123, file: !69, line: 192, baseType: !134, size: 64, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !123, file: !69, line: 193, baseType: !134, size: 64, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !123, file: !69, line: 194, baseType: !70, size: 32, offset: 384)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "html", scope: !123, file: !69, line: 195, baseType: !70, size: 32, offset: 416)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !123, file: !69, line: 201, baseType: !153, size: 64, offset: 448)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "inputNr", scope: !123, file: !69, line: 202, baseType: !70, size: 32, offset: 512)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "inputMax", scope: !123, file: !69, line: 203, baseType: !70, size: 32, offset: 544)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "inputTab", scope: !123, file: !69, line: 204, baseType: !540, size: 64, offset: 576)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !123, file: !69, line: 207, baseType: !542, size: 64, offset: 640)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !543)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !269)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !123, file: !69, line: 208, baseType: !70, size: 32, offset: 704)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !123, file: !69, line: 209, baseType: !70, size: 32, offset: 736)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !123, file: !69, line: 210, baseType: !548, size: 64, offset: 768)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "record_info", scope: !123, file: !69, line: 212, baseType: !70, size: 32, offset: 832)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "node_seq", scope: !123, file: !69, line: 213, baseType: !551, size: 192, offset: 896)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserNodeInfoSeq", file: !69, line: 98, baseType: !552)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserNodeInfoSeq", file: !69, line: 100, size: 192, elements: !553)
!553 = !{!554, !555, !556}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !552, file: !69, line: 101, baseType: !231, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !552, file: !69, line: 102, baseType: !231, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !552, file: !69, line: 103, baseType: !557, size: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserNodeInfo", file: !69, line: 86, baseType: !559)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserNodeInfo", file: !69, line: 89, size: 320, elements: !560)
!560 = !{!561, !564, !565, !566, !567}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !559, file: !69, line: 90, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "begin_pos", scope: !559, file: !69, line: 92, baseType: !231, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "begin_line", scope: !559, file: !69, line: 93, baseType: !231, size: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "end_pos", scope: !559, file: !69, line: 94, baseType: !231, size: 64, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !559, file: !69, line: 95, baseType: !231, size: 64, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "errNo", scope: !123, file: !69, line: 215, baseType: !70, size: 32, offset: 1088)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "hasExternalSubset", scope: !123, file: !69, line: 217, baseType: !70, size: 32, offset: 1120)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "hasPErefs", scope: !123, file: !69, line: 218, baseType: !70, size: 32, offset: 1152)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "external", scope: !123, file: !69, line: 219, baseType: !70, size: 32, offset: 1184)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !123, file: !69, line: 221, baseType: !70, size: 32, offset: 1216)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !123, file: !69, line: 222, baseType: !70, size: 32, offset: 1248)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "vctxt", scope: !123, file: !69, line: 223, baseType: !575, size: 896, offset: 1280)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidCtxt", file: !576, line: 80, baseType: !577)
!576 = !DIFile(filename: "/usr/include/libxml2/libxml/valid.h", directory: "", checksumkind: CSK_MD5, checksum: "3c082c0a5b81e1bc9fd9a21b69014584")
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlValidCtxt", file: !576, line: 82, size: 896, elements: !578)
!578 = !{!579, !580, !582, !584, !585, !586, !587, !588, !589, !590, !591, !595, !596, !597, !598, !604}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !577, file: !576, line: 83, baseType: !101, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !577, file: !576, line: 84, baseType: !581, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidityErrorFunc", file: !576, line: 42, baseType: !479)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "warning", scope: !577, file: !576, line: 85, baseType: !583, size: 64, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidityWarningFunc", file: !576, line: 57, baseType: !479)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !577, file: !576, line: 88, baseType: !542, size: 64, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !577, file: !576, line: 89, baseType: !70, size: 32, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !577, file: !576, line: 90, baseType: !70, size: 32, offset: 288)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !577, file: !576, line: 91, baseType: !548, size: 64, offset: 320)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "finishDtd", scope: !577, file: !576, line: 93, baseType: !5, size: 32, offset: 384)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !577, file: !576, line: 94, baseType: !527, size: 64, offset: 448)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !577, file: !576, line: 95, baseType: !70, size: 32, offset: 512)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "vstate", scope: !577, file: !576, line: 98, baseType: !592, size: 64, offset: 576)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidState", file: !576, line: 28, baseType: !594)
!594 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlValidState", file: !576, line: 28, flags: DIFlagFwdDecl)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "vstateNr", scope: !577, file: !576, line: 99, baseType: !70, size: 32, offset: 640)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "vstateMax", scope: !577, file: !576, line: 100, baseType: !70, size: 32, offset: 672)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "vstateTab", scope: !577, file: !576, line: 101, baseType: !592, size: 64, offset: 704)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "am", scope: !577, file: !576, line: 104, baseType: !599, size: 64, offset: 768)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAutomataPtr", file: !600, line: 30, baseType: !601)
!600 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlautomata.h", directory: "", checksumkind: CSK_MD5, checksum: "3c3c0a7d353bacfbede7c2decf27e62a")
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAutomata", file: !600, line: 29, baseType: !603)
!603 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAutomata", file: !600, line: 29, flags: DIFlagFwdDecl)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !577, file: !576, line: 105, baseType: !605, size: 64, offset: 832)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAutomataStatePtr", file: !600, line: 38, baseType: !606)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAutomataState", file: !600, line: 37, baseType: !608)
!608 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAutomataState", file: !600, line: 37, flags: DIFlagFwdDecl)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !123, file: !69, line: 225, baseType: !610, size: 32, offset: 2176)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputState", file: !69, line: 131, baseType: !68)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !123, file: !69, line: 226, baseType: !70, size: 32, offset: 2208)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !123, file: !69, line: 228, baseType: !99, size: 64, offset: 2240)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !123, file: !69, line: 231, baseType: !134, size: 64, offset: 2304)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "nameNr", scope: !123, file: !69, line: 232, baseType: !70, size: 32, offset: 2368)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "nameMax", scope: !123, file: !69, line: 233, baseType: !70, size: 32, offset: 2400)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "nameTab", scope: !123, file: !69, line: 234, baseType: !455, size: 64, offset: 2432)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "nbChars", scope: !123, file: !69, line: 236, baseType: !618, size: 64, offset: 2496)
!618 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "checkIndex", scope: !123, file: !69, line: 237, baseType: !618, size: 64, offset: 2560)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "keepBlanks", scope: !123, file: !69, line: 238, baseType: !70, size: 32, offset: 2624)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "disableSAX", scope: !123, file: !69, line: 239, baseType: !70, size: 32, offset: 2656)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "inSubset", scope: !123, file: !69, line: 240, baseType: !70, size: 32, offset: 2688)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "intSubName", scope: !123, file: !69, line: 241, baseType: !134, size: 64, offset: 2752)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "extSubURI", scope: !123, file: !69, line: 242, baseType: !248, size: 64, offset: 2816)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "extSubSystem", scope: !123, file: !69, line: 243, baseType: !248, size: 64, offset: 2880)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !123, file: !69, line: 246, baseType: !187, size: 64, offset: 2944)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "spaceNr", scope: !123, file: !69, line: 247, baseType: !70, size: 32, offset: 3008)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "spaceMax", scope: !123, file: !69, line: 248, baseType: !70, size: 32, offset: 3040)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "spaceTab", scope: !123, file: !69, line: 249, baseType: !187, size: 64, offset: 3072)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !123, file: !69, line: 251, baseType: !70, size: 32, offset: 3136)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !123, file: !69, line: 252, baseType: !153, size: 64, offset: 3200)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !123, file: !69, line: 253, baseType: !70, size: 32, offset: 3264)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "nodelen", scope: !123, file: !69, line: 255, baseType: !70, size: 32, offset: 3296)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "nodemem", scope: !123, file: !69, line: 256, baseType: !70, size: 32, offset: 3328)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "pedantic", scope: !123, file: !69, line: 257, baseType: !70, size: 32, offset: 3360)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !123, file: !69, line: 258, baseType: !101, size: 64, offset: 3392)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "loadsubset", scope: !123, file: !69, line: 260, baseType: !70, size: 32, offset: 3456)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "linenumbers", scope: !123, file: !69, line: 261, baseType: !70, size: 32, offset: 3488)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "catalogs", scope: !123, file: !69, line: 262, baseType: !101, size: 64, offset: 3520)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "recovery", scope: !123, file: !69, line: 263, baseType: !70, size: 32, offset: 3584)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "progressive", scope: !123, file: !69, line: 264, baseType: !70, size: 32, offset: 3616)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !123, file: !69, line: 265, baseType: !643, size: 64, offset: 3648)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !335, line: 25, baseType: !644)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !335, line: 24, baseType: !334)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "atts", scope: !123, file: !69, line: 266, baseType: !455, size: 64, offset: 3712)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "maxatts", scope: !123, file: !69, line: 267, baseType: !70, size: 32, offset: 3776)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "docdict", scope: !123, file: !69, line: 268, baseType: !70, size: 32, offset: 3808)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "str_xml", scope: !123, file: !69, line: 273, baseType: !134, size: 64, offset: 3840)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "str_xmlns", scope: !123, file: !69, line: 274, baseType: !134, size: 64, offset: 3904)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "str_xml_ns", scope: !123, file: !69, line: 275, baseType: !134, size: 64, offset: 3968)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "sax2", scope: !123, file: !69, line: 280, baseType: !70, size: 32, offset: 4032)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "nsNr", scope: !123, file: !69, line: 281, baseType: !70, size: 32, offset: 4064)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "nsMax", scope: !123, file: !69, line: 282, baseType: !70, size: 32, offset: 4096)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "nsTab", scope: !123, file: !69, line: 283, baseType: !455, size: 64, offset: 4160)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "attallocs", scope: !123, file: !69, line: 284, baseType: !187, size: 64, offset: 4224)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "pushTab", scope: !123, file: !69, line: 285, baseType: !658, size: 64, offset: 4288)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStartTag", file: !69, line: 172, baseType: !660)
!660 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlStartTag", file: !69, line: 172, flags: DIFlagFwdDecl)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "attsDefault", scope: !123, file: !69, line: 286, baseType: !662, size: 64, offset: 4352)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !663, line: 22, baseType: !664)
!663 = !DIFile(filename: "/usr/include/libxml2/libxml/hash.h", directory: "", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !663, line: 21, baseType: !666)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !663, line: 21, flags: DIFlagFwdDecl)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "attsSpecial", scope: !123, file: !69, line: 287, baseType: !662, size: 64, offset: 4416)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "nsWellFormed", scope: !123, file: !69, line: 288, baseType: !70, size: 32, offset: 4480)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !123, file: !69, line: 289, baseType: !70, size: 32, offset: 4512)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "dictNames", scope: !123, file: !69, line: 294, baseType: !70, size: 32, offset: 4544)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "freeElemsNr", scope: !123, file: !69, line: 295, baseType: !70, size: 32, offset: 4576)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "freeElems", scope: !123, file: !69, line: 296, baseType: !542, size: 64, offset: 4608)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "freeAttrsNr", scope: !123, file: !69, line: 297, baseType: !70, size: 32, offset: 4672)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "freeAttrs", scope: !123, file: !69, line: 298, baseType: !675, size: 64, offset: 4736)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttrPtr", file: !4, line: 432, baseType: !676)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttr", file: !4, line: 431, baseType: !345)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "lastError", scope: !123, file: !69, line: 303, baseType: !508, size: 704, offset: 4800)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "parseMode", scope: !123, file: !69, line: 304, baseType: !680, size: 32, offset: 5504)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserMode", file: !69, line: 170, baseType: !90)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "nbentities", scope: !123, file: !69, line: 305, baseType: !231, size: 64, offset: 5568)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "sizeentities", scope: !123, file: !69, line: 306, baseType: !231, size: 64, offset: 5632)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfo", scope: !123, file: !69, line: 309, baseType: !557, size: 64, offset: 5696)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfoNr", scope: !123, file: !69, line: 310, baseType: !70, size: 32, offset: 5760)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfoMax", scope: !123, file: !69, line: 311, baseType: !70, size: 32, offset: 5792)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfoTab", scope: !123, file: !69, line: 312, baseType: !557, size: 64, offset: 5824)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "input_id", scope: !123, file: !69, line: 314, baseType: !70, size: 32, offset: 5888)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "sizeentcopy", scope: !123, file: !69, line: 315, baseType: !231, size: 64, offset: 5952)
!689 = !DILocation(line: 7, column: 23, scope: !113)
!690 = !DILocalVariable(name: "html_data", scope: !113, file: !1, line: 8, type: !99)
!691 = !DILocation(line: 8, column: 11, scope: !113)
!692 = !DILocalVariable(name: "html_size", scope: !113, file: !1, line: 9, type: !70)
!693 = !DILocation(line: 9, column: 9, scope: !113)
!694 = !DILocation(line: 12, column: 17, scope: !113)
!695 = !DILocation(line: 12, column: 15, scope: !113)
!696 = !DILocation(line: 13, column: 32, scope: !113)
!697 = !DILocation(line: 13, column: 25, scope: !113)
!698 = !DILocation(line: 13, column: 15, scope: !113)
!699 = !DILocation(line: 14, column: 24, scope: !113)
!700 = !DILocation(line: 14, column: 35, scope: !113)
!701 = !DILocation(line: 14, column: 5, scope: !113)
!702 = !DILocation(line: 17, column: 39, scope: !113)
!703 = !DILocation(line: 17, column: 50, scope: !113)
!704 = !DILocation(line: 17, column: 12, scope: !113)
!705 = !DILocation(line: 17, column: 10, scope: !113)
!706 = !DILocation(line: 18, column: 9, scope: !707)
!707 = distinct !DILexicalBlock(scope: !113, file: !1, line: 18, column: 9)
!708 = !DILocation(line: 18, column: 14, scope: !707)
!709 = !DILocation(line: 18, column: 9, scope: !113)
!710 = !DILocation(line: 19, column: 14, scope: !711)
!711 = distinct !DILexicalBlock(scope: !707, file: !1, line: 18, column: 23)
!712 = !DILocation(line: 19, column: 9, scope: !711)
!713 = !DILocation(line: 20, column: 9, scope: !711)
!714 = !DILocation(line: 27, column: 9, scope: !715)
!715 = distinct !DILexicalBlock(scope: !113, file: !1, line: 27, column: 9)
!716 = !DILocation(line: 27, column: 19, scope: !715)
!717 = !DILocation(line: 27, column: 9, scope: !113)
!718 = !DILocation(line: 28, column: 9, scope: !719)
!719 = distinct !DILexicalBlock(scope: !715, file: !1, line: 27, column: 25)
!720 = !DILocation(line: 28, column: 22, scope: !719)
!721 = !DILocation(line: 29, column: 9, scope: !719)
!722 = !DILocation(line: 29, column: 22, scope: !719)
!723 = !DILocation(line: 30, column: 9, scope: !719)
!724 = !DILocation(line: 30, column: 22, scope: !719)
!725 = !DILocation(line: 31, column: 9, scope: !719)
!726 = !DILocation(line: 31, column: 22, scope: !719)
!727 = !DILocation(line: 32, column: 5, scope: !719)
!728 = !DILocation(line: 35, column: 23, scope: !113)
!729 = !DILocation(line: 35, column: 5, scope: !113)
!730 = !DILocation(line: 38, column: 5, scope: !113)
!731 = !DILocation(line: 41, column: 24, scope: !113)
!732 = !DILocation(line: 41, column: 5, scope: !113)
!733 = !DILocation(line: 42, column: 10, scope: !113)
!734 = !DILocation(line: 42, column: 5, scope: !113)
!735 = !DILocation(line: 43, column: 5, scope: !113)
!736 = !DILocation(line: 44, column: 1, scope: !113)
!737 = distinct !DISubprogram(name: "klee_range", scope: !738, file: !738, line: 12, type: !739, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !116)
!738 = !DIFile(filename: "runtime/Intrinsic/klee_range.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "967b9ed6e7b3db2f47ee33010ec31c43")
!739 = !DISubroutineType(types: !740)
!740 = !{!70, !70, !70, !233}
!741 = !DILocalVariable(name: "start", arg: 1, scope: !737, file: !738, line: 12, type: !70)
!742 = !DILocation(line: 12, column: 20, scope: !737)
!743 = !DILocalVariable(name: "end", arg: 2, scope: !737, file: !738, line: 12, type: !70)
!744 = !DILocation(line: 12, column: 31, scope: !737)
!745 = !DILocalVariable(name: "name", arg: 3, scope: !737, file: !738, line: 12, type: !233)
!746 = !DILocation(line: 12, column: 48, scope: !737)
!747 = !DILocalVariable(name: "x", scope: !737, file: !738, line: 13, type: !70)
!748 = !DILocation(line: 13, column: 7, scope: !737)
!749 = !DILocation(line: 15, column: 7, scope: !750)
!750 = distinct !DILexicalBlock(scope: !737, file: !738, line: 15, column: 7)
!751 = !DILocation(line: 15, column: 16, scope: !750)
!752 = !DILocation(line: 15, column: 13, scope: !750)
!753 = !DILocation(line: 15, column: 7, scope: !737)
!754 = !DILocation(line: 16, column: 5, scope: !750)
!755 = !DILocation(line: 18, column: 7, scope: !756)
!756 = distinct !DILexicalBlock(scope: !737, file: !738, line: 18, column: 7)
!757 = !DILocation(line: 18, column: 12, scope: !756)
!758 = !DILocation(line: 18, column: 16, scope: !756)
!759 = !DILocation(line: 18, column: 14, scope: !756)
!760 = !DILocation(line: 18, column: 7, scope: !737)
!761 = !DILocation(line: 19, column: 12, scope: !762)
!762 = distinct !DILexicalBlock(scope: !756, file: !738, line: 18, column: 21)
!763 = !DILocation(line: 19, column: 5, scope: !762)
!764 = !DILocation(line: 21, column: 24, scope: !765)
!765 = distinct !DILexicalBlock(scope: !756, file: !738, line: 20, column: 10)
!766 = !DILocation(line: 21, column: 38, scope: !765)
!767 = !DILocation(line: 21, column: 5, scope: !765)
!768 = !DILocation(line: 24, column: 9, scope: !769)
!769 = distinct !DILexicalBlock(scope: !765, file: !738, line: 24, column: 9)
!770 = !DILocation(line: 24, column: 14, scope: !769)
!771 = !DILocation(line: 24, column: 9, scope: !765)
!772 = !DILocation(line: 25, column: 30, scope: !773)
!773 = distinct !DILexicalBlock(scope: !769, file: !738, line: 24, column: 19)
!774 = !DILocation(line: 25, column: 45, scope: !773)
!775 = !DILocation(line: 25, column: 32, scope: !773)
!776 = !DILocation(line: 25, column: 19, scope: !773)
!777 = !DILocation(line: 25, column: 7, scope: !773)
!778 = !DILocation(line: 26, column: 5, scope: !773)
!779 = !DILocation(line: 27, column: 19, scope: !780)
!780 = distinct !DILexicalBlock(scope: !769, file: !738, line: 26, column: 12)
!781 = !DILocation(line: 27, column: 28, scope: !780)
!782 = !DILocation(line: 27, column: 25, scope: !780)
!783 = !DILocation(line: 27, column: 7, scope: !780)
!784 = !DILocation(line: 28, column: 19, scope: !780)
!785 = !DILocation(line: 28, column: 23, scope: !780)
!786 = !DILocation(line: 28, column: 21, scope: !780)
!787 = !DILocation(line: 28, column: 7, scope: !780)
!788 = !DILocation(line: 31, column: 12, scope: !765)
!789 = !DILocation(line: 31, column: 5, scope: !765)
!790 = !DILocation(line: 33, column: 1, scope: !737)

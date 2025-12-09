; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/111_testrecurse.c_316_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/111_testrecurse.c_316_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hugeDocParts_t = type { i8*, i8* }
%struct._xmlSAXHandler = type { void (i8*, i8*, i8*, i8*)*, i32 (i8*)*, i32 (i8*)*, i32 (i8*)*, %struct._xmlParserInput* (i8*, i8*, i8*)*, %struct._xmlEntity* (i8*, i8*)*, void (i8*, i8*, i32, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i32, i32, i8*, %struct._xmlEnumeration*)*, void (i8*, i8*, i32, %struct._xmlElementContent*)*, void (i8*, i8*, i8*, i8*, i8*)*, void (i8*, %struct._xmlSAXLocator*)*, void (i8*)*, void (i8*)*, void (i8*, i8*, i8**)*, void (i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*, i32)*, void (i8*, i8*, i32)*, void (i8*, i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*, ...)*, void (i8*, i8*, ...)*, void (i8*, i8*, ...)*, %struct._xmlEntity* (i8*, i8*)*, void (i8*, i8*, i32)*, void (i8*, i8*, i8*, i8*)*, i32, i8*, void (i8*, i8*, i8*, i8*, i32, i8**, i32, i32, i8**)*, void (i8*, i8*, i8*, i8*)*, void (i8*, %struct._xmlError*)* }
%struct._xmlParserInput = type { %struct._xmlParserInputBuffer*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i64, void (i8*)*, i8*, i8*, i32, i32 }
%struct._xmlParserInputBuffer = type { i8*, i32 (i8*, i8*, i32)*, i32 (i8*)*, %struct._xmlCharEncodingHandler*, %struct._xmlBuf*, %struct._xmlBuf*, i32, i32, i64 }
%struct._xmlCharEncodingHandler = type { i8*, i32 (i8*, i32*, i8*, i32*)*, i32 (i8*, i32*, i8*, i32*)*, i8*, i8*, %struct._uconv_t*, %struct._uconv_t* }
%struct._uconv_t = type { %struct.UConverter*, %struct.UConverter*, [1024 x i16], i16*, i16* }
%struct.UConverter = type opaque
%struct._xmlBuf = type opaque
%struct._xmlEnumeration = type { %struct._xmlEnumeration*, i8* }
%struct._xmlElementContent = type { i32, i32, i8*, %struct._xmlElementContent*, %struct._xmlElementContent*, %struct._xmlElementContent*, i8* }
%struct._xmlSAXLocator = type { i8* (i8*)*, i8* (i8*)*, i32 (i8*)*, i32 (i8*)* }
%struct._xmlEntity = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDtd*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i32, i32, i8*, i8*, %struct._xmlEntity*, i8*, i32, i32 }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlDict = type opaque
%struct._xmlError = type { i32, i32, i8*, i32, i8*, i32, i8*, i8*, i8*, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"segment_len\00", align 1
@docParts = internal global %struct.hugeDocParts_t zeroinitializer, align 8, !dbg !0
@.str.2 = private unnamed_addr constant [13 x i8] c"segment_data\00", align 1
@curseg = internal global i32 0, align 4, !dbg !84
@current = internal global i8* null, align 8, !dbg !79
@rlen = internal global i32 0, align 4, !dbg !81
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/111_testrecurse.c_316_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@buffer = internal global [4096 x i8] zeroinitializer, align 16, !dbg !74

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !103 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSAXHandler, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler* %2, metadata !107, metadata !DIExpression()), !dbg !509
  %5 = bitcast %struct._xmlSAXHandler* %2 to i8*, !dbg !510
  %6 = call i8* @memset(i8* %5, i32 0, i64 256), !dbg !510
  call void @llvm.dbg.declare(metadata i32* %3, metadata !511, metadata !DIExpression()), !dbg !512
  %7 = bitcast i32* %3 to i8*, !dbg !513
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !514
  %8 = load i32, i32* %3, align 4, !dbg !515
  %9 = icmp sge i32 %8, 0, !dbg !516
  %10 = zext i1 %9 to i32, !dbg !516
  %11 = sext i32 %10 to i64, !dbg !515
  call void @klee_assume(i64 noundef %11), !dbg !517
  %12 = load i32, i32* %3, align 4, !dbg !518
  %13 = icmp slt i32 %12, 4096, !dbg !519
  %14 = zext i1 %13 to i32, !dbg !519
  %15 = sext i32 %14 to i64, !dbg !518
  call void @klee_assume(i64 noundef %15), !dbg !520
  call void @llvm.dbg.declare(metadata i32* %4, metadata !521, metadata !DIExpression()), !dbg !522
  %16 = bitcast i32* %4 to i8*, !dbg !523
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)), !dbg !524
  %17 = load i32, i32* %4, align 4, !dbg !525
  %18 = icmp sge i32 %17, 0, !dbg !526
  %19 = zext i1 %18 to i32, !dbg !526
  %20 = sext i32 %19 to i64, !dbg !525
  call void @klee_assume(i64 noundef %20), !dbg !527
  %21 = load i32, i32* %4, align 4, !dbg !528
  %22 = icmp slt i32 %21, 4096, !dbg !529
  %23 = zext i1 %22 to i32, !dbg !529
  %24 = sext i32 %23 to i64, !dbg !528
  call void @klee_assume(i64 noundef %24), !dbg !530
  %25 = load i32, i32* %4, align 4, !dbg !531
  %26 = add nsw i32 %25, 1, !dbg !532
  %27 = sext i32 %26 to i64, !dbg !531
  %28 = call noalias i8* @malloc(i64 noundef %27) #9, !dbg !533
  store i8* %28, i8** getelementptr inbounds (%struct.hugeDocParts_t, %struct.hugeDocParts_t* @docParts, i32 0, i32 0), align 8, !dbg !534
  %29 = load i8*, i8** getelementptr inbounds (%struct.hugeDocParts_t, %struct.hugeDocParts_t* @docParts, i32 0, i32 0), align 8, !dbg !535
  %30 = load i32, i32* %4, align 4, !dbg !536
  %31 = add nsw i32 %30, 1, !dbg !537
  %32 = sext i32 %31 to i64, !dbg !536
  call void @klee_make_symbolic(i8* noundef %29, i64 noundef %32, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)), !dbg !538
  %33 = load i8*, i8** getelementptr inbounds (%struct.hugeDocParts_t, %struct.hugeDocParts_t* @docParts, i32 0, i32 0), align 8, !dbg !539
  %34 = load i32, i32* %4, align 4, !dbg !540
  %35 = sext i32 %34 to i64, !dbg !541
  %36 = getelementptr inbounds i8, i8* %33, i64 %35, !dbg !541
  store i8 0, i8* %36, align 1, !dbg !542
  %37 = call noalias i8* @malloc(i64 noundef 1) #9, !dbg !543
  store i8* %37, i8** getelementptr inbounds (%struct.hugeDocParts_t, %struct.hugeDocParts_t* @docParts, i32 0, i32 1), align 8, !dbg !544
  %38 = load i8*, i8** getelementptr inbounds (%struct.hugeDocParts_t, %struct.hugeDocParts_t* @docParts, i32 0, i32 1), align 8, !dbg !545
  %39 = getelementptr inbounds i8, i8* %38, i64 0, !dbg !546
  store i8 0, i8* %39, align 1, !dbg !547
  store i32 0, i32* @curseg, align 4, !dbg !548
  %40 = load i8*, i8** getelementptr inbounds (%struct.hugeDocParts_t, %struct.hugeDocParts_t* @docParts, i32 0, i32 0), align 8, !dbg !549
  store i8* %40, i8** @current, align 8, !dbg !550
  %41 = load i8*, i8** @current, align 8, !dbg !551
  %42 = call i64 @strlen(i8* noundef %41) #10, !dbg !552
  %43 = trunc i64 %42 to i32, !dbg !552
  store i32 %43, i32* @rlen, align 4, !dbg !553
  %44 = load i32, i32* @rlen, align 4, !dbg !554
  %45 = load i32, i32* %3, align 4, !dbg !556
  %46 = icmp sgt i32 %44, %45, !dbg !557
  br i1 %46, label %47, label %53, !dbg !558

47:                                               ; preds = %0
  %48 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !559
  %49 = load i8*, i8** @current, align 8, !dbg !561
  %50 = load i32, i32* %3, align 4, !dbg !562
  %51 = sext i32 %50 to i64, !dbg !562
  %52 = call i8* @memcpy(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @buffer, i64 0, i64 0), i8* %49, i64 %51), !dbg !563
  br label %53, !dbg !564

53:                                               ; preds = %47, %0
  %54 = load i8*, i8** getelementptr inbounds (%struct.hugeDocParts_t, %struct.hugeDocParts_t* @docParts, i32 0, i32 0), align 8, !dbg !565
  call void @free(i8* noundef %54) #9, !dbg !566
  %55 = load i8*, i8** getelementptr inbounds (%struct.hugeDocParts_t, %struct.hugeDocParts_t* @docParts, i32 0, i32 1), align 8, !dbg !567
  call void @free(i8* noundef %55) #9, !dbg !568
  ret i32 0, !dbg !569
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !570 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !578, metadata !DIExpression()), !dbg !579
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !580, metadata !DIExpression()), !dbg !581
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !582, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.declare(metadata i8** %7, metadata !584, metadata !DIExpression()), !dbg !585
  %9 = load i8*, i8** %4, align 8, !dbg !586
  store i8* %9, i8** %7, align 8, !dbg !585
  call void @llvm.dbg.declare(metadata i8** %8, metadata !587, metadata !DIExpression()), !dbg !588
  %10 = load i8*, i8** %5, align 8, !dbg !589
  store i8* %10, i8** %8, align 8, !dbg !588
  br label %11, !dbg !590

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !591
  %13 = add i64 %12, -1, !dbg !591
  store i64 %13, i64* %6, align 8, !dbg !591
  %14 = icmp ugt i64 %12, 0, !dbg !592
  br i1 %14, label %15, label %21, !dbg !590

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !593
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !593
  store i8* %17, i8** %8, align 8, !dbg !593
  %18 = load i8, i8* %16, align 1, !dbg !594
  %19 = load i8*, i8** %7, align 8, !dbg !595
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !595
  store i8* %20, i8** %7, align 8, !dbg !595
  store i8 %18, i8* %19, align 1, !dbg !596
  br label %11, !dbg !590, !llvm.loop !597

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !599
  ret i8* %22, !dbg !600
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !601 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !605, metadata !DIExpression()), !dbg !606
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !607, metadata !DIExpression()), !dbg !608
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !609, metadata !DIExpression()), !dbg !610
  call void @llvm.dbg.declare(metadata i8** %7, metadata !611, metadata !DIExpression()), !dbg !612
  %8 = load i8*, i8** %4, align 8, !dbg !613
  store i8* %8, i8** %7, align 8, !dbg !612
  br label %9, !dbg !614

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !615
  %11 = add i64 %10, -1, !dbg !615
  store i64 %11, i64* %6, align 8, !dbg !615
  %12 = icmp ugt i64 %10, 0, !dbg !616
  br i1 %12, label %13, label %18, !dbg !614

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !617
  %15 = trunc i32 %14 to i8, !dbg !617
  %16 = load i8*, i8** %7, align 8, !dbg !618
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !618
  store i8* %17, i8** %7, align 8, !dbg !618
  store i8 %15, i8* %16, align 1, !dbg !619
  br label %9, !dbg !614, !llvm.loop !620

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !621
  ret i8* %19, !dbg !622
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2, !91, !93}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102, !102, !102}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "docParts", scope: !2, file: !3, line: 22, type: !86, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !70, globals: !73, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/111_testrecurse.c_316_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "5873cd7a992914e9c03a19be134c948f")
!4 = !{!5, !30, !42, !51, !57, !63}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 159, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/libxml2/libxml/tree.h", directory: "", checksumkind: CSK_MD5, checksum: "750bac4395c48684302094dba58dc4a1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!9 = !DIEnumerator(name: "XML_ELEMENT_NODE", value: 1)
!10 = !DIEnumerator(name: "XML_ATTRIBUTE_NODE", value: 2)
!11 = !DIEnumerator(name: "XML_TEXT_NODE", value: 3)
!12 = !DIEnumerator(name: "XML_CDATA_SECTION_NODE", value: 4)
!13 = !DIEnumerator(name: "XML_ENTITY_REF_NODE", value: 5)
!14 = !DIEnumerator(name: "XML_ENTITY_NODE", value: 6)
!15 = !DIEnumerator(name: "XML_PI_NODE", value: 7)
!16 = !DIEnumerator(name: "XML_COMMENT_NODE", value: 8)
!17 = !DIEnumerator(name: "XML_DOCUMENT_NODE", value: 9)
!18 = !DIEnumerator(name: "XML_DOCUMENT_TYPE_NODE", value: 10)
!19 = !DIEnumerator(name: "XML_DOCUMENT_FRAG_NODE", value: 11)
!20 = !DIEnumerator(name: "XML_NOTATION_NODE", value: 12)
!21 = !DIEnumerator(name: "XML_HTML_DOCUMENT_NODE", value: 13)
!22 = !DIEnumerator(name: "XML_DTD_NODE", value: 14)
!23 = !DIEnumerator(name: "XML_ELEMENT_DECL", value: 15)
!24 = !DIEnumerator(name: "XML_ATTRIBUTE_DECL", value: 16)
!25 = !DIEnumerator(name: "XML_ENTITY_DECL", value: 17)
!26 = !DIEnumerator(name: "XML_NAMESPACE_DECL", value: 18)
!27 = !DIEnumerator(name: "XML_XINCLUDE_START", value: 19)
!28 = !DIEnumerator(name: "XML_XINCLUDE_END", value: 20)
!29 = !DIEnumerator(name: "XML_DOCB_DOCUMENT_NODE", value: 21)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 206, baseType: !7, size: 32, elements: !31)
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!32 = !DIEnumerator(name: "XML_ATTRIBUTE_CDATA", value: 1)
!33 = !DIEnumerator(name: "XML_ATTRIBUTE_ID", value: 2)
!34 = !DIEnumerator(name: "XML_ATTRIBUTE_IDREF", value: 3)
!35 = !DIEnumerator(name: "XML_ATTRIBUTE_IDREFS", value: 4)
!36 = !DIEnumerator(name: "XML_ATTRIBUTE_ENTITY", value: 5)
!37 = !DIEnumerator(name: "XML_ATTRIBUTE_ENTITIES", value: 6)
!38 = !DIEnumerator(name: "XML_ATTRIBUTE_NMTOKEN", value: 7)
!39 = !DIEnumerator(name: "XML_ATTRIBUTE_NMTOKENS", value: 8)
!40 = !DIEnumerator(name: "XML_ATTRIBUTE_ENUMERATION", value: 9)
!41 = !DIEnumerator(name: "XML_ATTRIBUTE_NOTATION", value: 10)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !43, line: 24, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "/usr/include/libxml2/libxml/entities.h", directory: "", checksumkind: CSK_MD5, checksum: "16467595fdaff28420d1657b1658f267")
!44 = !{!45, !46, !47, !48, !49, !50}
!45 = !DIEnumerator(name: "XML_INTERNAL_GENERAL_ENTITY", value: 1)
!46 = !DIEnumerator(name: "XML_EXTERNAL_GENERAL_PARSED_ENTITY", value: 2)
!47 = !DIEnumerator(name: "XML_EXTERNAL_GENERAL_UNPARSED_ENTITY", value: 3)
!48 = !DIEnumerator(name: "XML_INTERNAL_PARAMETER_ENTITY", value: 4)
!49 = !DIEnumerator(name: "XML_EXTERNAL_PARAMETER_ENTITY", value: 5)
!50 = !DIEnumerator(name: "XML_INTERNAL_PREDEFINED_ENTITY", value: 6)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 278, baseType: !7, size: 32, elements: !52)
!52 = !{!53, !54, !55, !56}
!53 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_PCDATA", value: 1)
!54 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_ELEMENT", value: 2)
!55 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_SEQ", value: 3)
!56 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_OR", value: 4)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 290, baseType: !7, size: 32, elements: !58)
!58 = !{!59, !60, !61, !62}
!59 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_ONCE", value: 1)
!60 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_OPT", value: 2)
!61 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_MULT", value: 3)
!62 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_PLUS", value: 4)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !64, line: 24, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlerror.h", directory: "", checksumkind: CSK_MD5, checksum: "28cd85987165565f9306b9b66a2b4e88")
!65 = !{!66, !67, !68, !69}
!66 = !DIEnumerator(name: "XML_ERR_NONE", value: 0)
!67 = !DIEnumerator(name: "XML_ERR_WARNING", value: 1)
!68 = !DIEnumerator(name: "XML_ERR_ERROR", value: 2)
!69 = !DIEnumerator(name: "XML_ERR_FATAL", value: 3)
!70 = !{!71}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!73 = !{!74, !79, !81, !0, !84}
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "buffer", scope: !2, file: !3, line: 18, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 32768, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 4096)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "current", scope: !2, file: !3, line: 19, type: !71, isLocal: true, isDefinition: true)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "rlen", scope: !2, file: !3, line: 20, type: !83, isLocal: true, isDefinition: true)
!83 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "curseg", scope: !2, file: !3, line: 21, type: !83, isLocal: true, isDefinition: true)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "hugeDocParts_t", file: !3, line: 16, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 13, size: 128, elements: !88)
!88 = !{!89, !90}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !87, file: !3, line: 14, baseType: !71, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !87, file: !3, line: 15, baseType: !71, size: 64, offset: 64)
!91 = distinct !DICompileUnit(language: DW_LANG_C99, file: !92, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!92 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!93 = distinct !DICompileUnit(language: DW_LANG_C99, file: !94, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!94 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!95 = !{i32 7, !"Dwarf Version", i32 5}
!96 = !{i32 2, !"Debug Info Version", i32 3}
!97 = !{i32 1, !"wchar_size", i32 4}
!98 = !{i32 7, !"PIC Level", i32 2}
!99 = !{i32 7, !"PIE Level", i32 2}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"Ubuntu clang version 14.0.6"}
!103 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 43, type: !104, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !106)
!104 = !DISubroutineType(types: !105)
!105 = !{!83}
!106 = !{}
!107 = !DILocalVariable(name: "sax", scope: !103, file: !3, line: 44, type: !108)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXHandler", file: !6, line: 44, baseType: !109)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXHandler", file: !110, line: 721, size: 2048, elements: !111)
!110 = !DIFile(filename: "/usr/include/libxml2/libxml/parser.h", directory: "", checksumkind: CSK_MD5, checksum: "2c1184d6dda41f6d85836f47834fed62")
!111 = !{!112, !123, !128, !130, !132, !237, !365, !370, !372, !385, !405, !410, !427, !432, !434, !440, !445, !447, !452, !454, !459, !461, !466, !468, !470, !472, !474, !476, !477, !478, !483, !485}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "internalSubset", scope: !109, file: !110, line: 722, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "internalSubsetSAXFunc", file: !110, line: 364, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !117, !118, !118, !118}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !121, line: 28, baseType: !122)
!121 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!122 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "isStandalone", scope: !109, file: !110, line: 723, baseType: !124, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "isStandaloneSAXFunc", file: !110, line: 642, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!83, !117}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "hasInternalSubset", scope: !109, file: !110, line: 724, baseType: !129, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "hasInternalSubsetSAXFunc", file: !110, line: 651, baseType: !125)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "hasExternalSubset", scope: !109, file: !110, line: 725, baseType: !131, size: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "hasExternalSubsetSAXFunc", file: !110, line: 661, baseType: !125)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "resolveEntity", scope: !109, file: !110, line: 726, baseType: !133, size: 64, offset: 256)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "resolveEntitySAXFunc", file: !110, line: 352, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!137, !117, !118, !118}
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputPtr", file: !6, line: 36, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInput", file: !6, line: 35, baseType: !140)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInput", file: !110, line: 54, size: 832, elements: !141)
!141 = !{!142, !216, !219, !220, !221, !222, !223, !224, !225, !226, !227, !233, !234, !235, !236}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !140, file: !110, line: 56, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputBufferPtr", file: !6, line: 29, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputBuffer", file: !6, line: 28, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInputBuffer", file: !147, line: 125, size: 512, elements: !148)
!147 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlIO.h", directory: "", checksumkind: CSK_MD5, checksum: "a868e7a396360b2f16d10eac4a34669c")
!148 = !{!149, !150, !155, !157, !206, !211, !212, !213, !214}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !146, file: !147, line: 126, baseType: !117, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "readcallback", scope: !146, file: !147, line: 127, baseType: !151, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlInputReadCallback", file: !147, line: 54, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!83, !117, !71, !83}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "closecallback", scope: !146, file: !147, line: 128, baseType: !156, size: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlInputCloseCallback", file: !147, line: 63, baseType: !125)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !146, file: !147, line: 130, baseType: !158, size: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandlerPtr", file: !159, line: 145, baseType: !160)
!159 = !DIFile(filename: "/usr/include/libxml2/libxml/encoding.h", directory: "", checksumkind: CSK_MD5, checksum: "807b84fade38abad3ae0d9b6af714dbc")
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandler", file: !159, line: 144, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlCharEncodingHandler", file: !159, line: 146, size: 448, elements: !163)
!163 = !{!164, !165, !174, !176, !179, !180, !205}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !162, file: !159, line: 147, baseType: !71, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !162, file: !159, line: 148, baseType: !166, size: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingInputFunc", file: !159, line: 101, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!83, !170, !171, !172, !171}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !162, file: !159, line: 149, baseType: !175, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingOutputFunc", file: !159, line: 123, baseType: !167)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_in", scope: !162, file: !159, line: 151, baseType: !177, size: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !178, line: 29, baseType: !117)
!178 = !DIFile(filename: "/usr/include/iconv.h", directory: "", checksumkind: CSK_MD5, checksum: "edfee9bcfa398c9184cc8f95deb97c16")
!179 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_out", scope: !162, file: !159, line: 152, baseType: !177, size: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_in", scope: !162, file: !159, line: 155, baseType: !181, size: 64, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "uconv_t", file: !159, line: 141, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_uconv_t", file: !159, line: 134, size: 16640, elements: !184)
!184 = !{!185, !190, !191, !202, !204}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "uconv", scope: !183, file: !159, line: 135, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "UConverter", file: !188, line: 96, baseType: !189)
!188 = !DIFile(filename: "/usr/include/unicode/ucnv_err.h", directory: "", checksumkind: CSK_MD5, checksum: "a507bbb125e54d860485ec054a4a55ed")
!189 = !DICompositeType(tag: DW_TAG_structure_type, name: "UConverter", file: !188, line: 93, flags: DIFlagFwdDecl)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !183, file: !159, line: 136, baseType: !186, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_buf", scope: !183, file: !159, line: 137, baseType: !192, size: 16384, offset: 128)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 16384, elements: !200)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "UChar", file: !194, line: 388, baseType: !195)
!194 = !DIFile(filename: "/usr/include/unicode/umachine.h", directory: "", checksumkind: CSK_MD5, checksum: "2d902ff00eac765b305cb113b74d34df")
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !196, line: 25, baseType: !197)
!196 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !198, line: 40, baseType: !199)
!198 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!199 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!200 = !{!201}
!201 = !DISubrange(count: 1024)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_source", scope: !183, file: !159, line: 138, baseType: !203, size: 64, offset: 16512)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_target", scope: !183, file: !159, line: 139, baseType: !203, size: 64, offset: 16576)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_out", scope: !162, file: !159, line: 156, baseType: !181, size: 64, offset: 384)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !146, file: !147, line: 132, baseType: !207, size: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufPtr", file: !6, line: 114, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !6, line: 105, baseType: !210)
!210 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !6, line: 105, flags: DIFlagFwdDecl)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !146, file: !147, line: 133, baseType: !207, size: 64, offset: 320)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "compressed", scope: !146, file: !147, line: 134, baseType: !83, size: 32, offset: 384)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !146, file: !147, line: 135, baseType: !83, size: 32, offset: 416)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "rawconsumed", scope: !146, file: !147, line: 136, baseType: !215, size: 64, offset: 448)
!215 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !140, file: !110, line: 58, baseType: !217, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !140, file: !110, line: 59, baseType: !217, size: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !140, file: !110, line: 60, baseType: !118, size: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !140, file: !110, line: 61, baseType: !118, size: 64, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !140, file: !110, line: 62, baseType: !118, size: 64, offset: 320)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !140, file: !110, line: 63, baseType: !83, size: 32, offset: 384)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !140, file: !110, line: 64, baseType: !83, size: 32, offset: 416)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !140, file: !110, line: 65, baseType: !83, size: 32, offset: 448)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "consumed", scope: !140, file: !110, line: 71, baseType: !215, size: 64, offset: 512)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !140, file: !110, line: 72, baseType: !228, size: 64, offset: 576)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputDeallocate", file: !110, line: 52, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !232}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !140, file: !110, line: 73, baseType: !118, size: 64, offset: 640)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !140, file: !110, line: 74, baseType: !118, size: 64, offset: 704)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !140, file: !110, line: 75, baseType: !83, size: 32, offset: 768)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !140, file: !110, line: 76, baseType: !83, size: 32, offset: 800)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "getEntity", scope: !109, file: !110, line: 727, baseType: !238, size: 64, offset: 320)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "getEntitySAXFunc", file: !110, line: 390, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!242, !117, !118}
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntityPtr", file: !6, line: 49, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntity", file: !6, line: 48, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEntity", file: !43, line: 38, size: 1088, elements: !246)
!246 = !{!247, !248, !250, !251, !348, !349, !350, !351, !352, !353, !354, !355, !356, !358, !359, !360, !362, !363, !364}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !245, file: !43, line: 39, baseType: !117, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !245, file: !43, line: 40, baseType: !249, size: 32, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !6, line: 183, baseType: !5)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !245, file: !43, line: 41, baseType: !118, size: 64, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !245, file: !43, line: 42, baseType: !252, size: 64, offset: 192)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !6, line: 492, size: 960, elements: !254)
!254 = !{!255, !256, !257, !258, !259, !260, !261, !262, !263, !323, !326, !327, !344, !345, !346, !347}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !253, file: !6, line: 493, baseType: !117, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !253, file: !6, line: 494, baseType: !249, size: 32, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !253, file: !6, line: 495, baseType: !118, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !253, file: !6, line: 496, baseType: !252, size: 64, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !253, file: !6, line: 497, baseType: !252, size: 64, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !253, file: !6, line: 498, baseType: !252, size: 64, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !253, file: !6, line: 499, baseType: !252, size: 64, offset: 384)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !253, file: !6, line: 500, baseType: !252, size: 64, offset: 448)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !253, file: !6, line: 501, baseType: !264, size: 64, offset: 512)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !6, line: 559, size: 1408, elements: !266)
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !298, !299, !310, !311, !312, !313, !314, !315, !316, !320, !321, !322}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !265, file: !6, line: 560, baseType: !117, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !265, file: !6, line: 561, baseType: !249, size: 32, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !265, file: !6, line: 562, baseType: !71, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !265, file: !6, line: 563, baseType: !252, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !265, file: !6, line: 564, baseType: !252, size: 64, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !265, file: !6, line: 565, baseType: !252, size: 64, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !265, file: !6, line: 566, baseType: !252, size: 64, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !265, file: !6, line: 567, baseType: !252, size: 64, offset: 448)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !265, file: !6, line: 568, baseType: !264, size: 64, offset: 512)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !265, file: !6, line: 571, baseType: !83, size: 32, offset: 576)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !265, file: !6, line: 572, baseType: !83, size: 32, offset: 608)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !265, file: !6, line: 578, baseType: !279, size: 64, offset: 640)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !6, line: 405, size: 1024, elements: !281)
!281 = !{!282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !280, file: !6, line: 406, baseType: !117, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !280, file: !6, line: 407, baseType: !249, size: 32, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !280, file: !6, line: 408, baseType: !118, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !280, file: !6, line: 409, baseType: !252, size: 64, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !280, file: !6, line: 410, baseType: !252, size: 64, offset: 256)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !280, file: !6, line: 411, baseType: !264, size: 64, offset: 320)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !280, file: !6, line: 412, baseType: !252, size: 64, offset: 384)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !280, file: !6, line: 413, baseType: !252, size: 64, offset: 448)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !280, file: !6, line: 414, baseType: !264, size: 64, offset: 512)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !280, file: !6, line: 417, baseType: !117, size: 64, offset: 576)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !280, file: !6, line: 418, baseType: !117, size: 64, offset: 640)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !280, file: !6, line: 419, baseType: !117, size: 64, offset: 704)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !280, file: !6, line: 420, baseType: !117, size: 64, offset: 768)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !280, file: !6, line: 421, baseType: !118, size: 64, offset: 832)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !280, file: !6, line: 422, baseType: !118, size: 64, offset: 896)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !280, file: !6, line: 423, baseType: !117, size: 64, offset: 960)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !265, file: !6, line: 579, baseType: !279, size: 64, offset: 704)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !265, file: !6, line: 580, baseType: !300, size: 64, offset: 768)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !6, line: 388, size: 384, elements: !302)
!302 = !{!303, !304, !306, !307, !308, !309}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !301, file: !6, line: 389, baseType: !300, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !301, file: !6, line: 390, baseType: !305, size: 32, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !6, line: 374, baseType: !249)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !301, file: !6, line: 391, baseType: !118, size: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !301, file: !6, line: 392, baseType: !118, size: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !301, file: !6, line: 393, baseType: !117, size: 64, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !301, file: !6, line: 394, baseType: !264, size: 64, offset: 320)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !265, file: !6, line: 581, baseType: !118, size: 64, offset: 832)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !265, file: !6, line: 582, baseType: !118, size: 64, offset: 896)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !265, file: !6, line: 583, baseType: !117, size: 64, offset: 960)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !265, file: !6, line: 584, baseType: !117, size: 64, offset: 1024)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !265, file: !6, line: 585, baseType: !118, size: 64, offset: 1088)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !265, file: !6, line: 586, baseType: !83, size: 32, offset: 1152)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !265, file: !6, line: 588, baseType: !317, size: 64, offset: 1216)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !319, line: 24, flags: DIFlagFwdDecl)
!319 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!320 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !265, file: !6, line: 589, baseType: !117, size: 64, offset: 1280)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !265, file: !6, line: 590, baseType: !83, size: 32, offset: 1344)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !265, file: !6, line: 592, baseType: !83, size: 32, offset: 1376)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !253, file: !6, line: 504, baseType: !324, size: 64, offset: 576)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !6, line: 386, baseType: !301)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !253, file: !6, line: 505, baseType: !232, size: 64, offset: 640)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !253, file: !6, line: 506, baseType: !328, size: 64, offset: 704)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !6, line: 433, size: 768, elements: !330)
!330 = !{!331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !343}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !329, file: !6, line: 434, baseType: !117, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !329, file: !6, line: 435, baseType: !249, size: 32, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !329, file: !6, line: 436, baseType: !118, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !329, file: !6, line: 437, baseType: !252, size: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !329, file: !6, line: 438, baseType: !252, size: 64, offset: 256)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !329, file: !6, line: 439, baseType: !252, size: 64, offset: 320)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !329, file: !6, line: 440, baseType: !328, size: 64, offset: 384)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !329, file: !6, line: 441, baseType: !328, size: 64, offset: 448)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !329, file: !6, line: 442, baseType: !264, size: 64, offset: 512)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !329, file: !6, line: 443, baseType: !324, size: 64, offset: 576)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !329, file: !6, line: 444, baseType: !342, size: 32, offset: 640)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !6, line: 217, baseType: !30)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !329, file: !6, line: 445, baseType: !117, size: 64, offset: 704)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !253, file: !6, line: 507, baseType: !324, size: 64, offset: 768)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !253, file: !6, line: 508, baseType: !117, size: 64, offset: 832)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !253, file: !6, line: 509, baseType: !199, size: 16, offset: 896)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !253, file: !6, line: 510, baseType: !199, size: 16, offset: 912)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !245, file: !43, line: 43, baseType: !252, size: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !245, file: !43, line: 44, baseType: !279, size: 64, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !245, file: !43, line: 45, baseType: !252, size: 64, offset: 384)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !245, file: !43, line: 46, baseType: !252, size: 64, offset: 448)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !245, file: !43, line: 47, baseType: !264, size: 64, offset: 512)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !245, file: !43, line: 49, baseType: !232, size: 64, offset: 576)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !245, file: !43, line: 50, baseType: !232, size: 64, offset: 640)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !245, file: !43, line: 51, baseType: !83, size: 32, offset: 704)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "etype", scope: !245, file: !43, line: 52, baseType: !357, size: 32, offset: 736)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntityType", file: !43, line: 31, baseType: !42)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !245, file: !43, line: 53, baseType: !118, size: 64, offset: 768)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !245, file: !43, line: 54, baseType: !118, size: 64, offset: 832)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "nexte", scope: !245, file: !43, line: 56, baseType: !361, size: 64, offset: 896)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "URI", scope: !245, file: !43, line: 57, baseType: !118, size: 64, offset: 960)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !245, file: !43, line: 58, baseType: !83, size: 32, offset: 1024)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "checked", scope: !245, file: !43, line: 59, baseType: !83, size: 32, offset: 1056)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "entityDecl", scope: !109, file: !110, line: 728, baseType: !366, size: 64, offset: 384)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "entityDeclSAXFunc", file: !110, line: 414, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !117, !118, !83, !118, !118, !232}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "notationDecl", scope: !109, file: !110, line: 729, baseType: !371, size: 64, offset: 448)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "notationDeclSAXFunc", file: !110, line: 429, baseType: !114)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "attributeDecl", scope: !109, file: !110, line: 730, baseType: !373, size: 64, offset: 512)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "attributeDeclSAXFunc", file: !110, line: 445, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !117, !118, !118, !83, !83, !118, !377}
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEnumerationPtr", file: !6, line: 239, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEnumeration", file: !6, line: 238, baseType: !380)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEnumeration", file: !6, line: 240, size: 128, elements: !381)
!381 = !{!382, !384}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !380, file: !6, line: 241, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !380, file: !6, line: 242, baseType: !118, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "elementDecl", scope: !109, file: !110, line: 731, baseType: !386, size: 64, offset: 576)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "elementDeclSAXFunc", file: !110, line: 461, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !117, !118, !83, !390}
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentPtr", file: !6, line: 305, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContent", file: !6, line: 304, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlElementContent", file: !6, line: 306, size: 384, elements: !394)
!394 = !{!395, !397, !399, !400, !402, !403, !404}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !393, file: !6, line: 307, baseType: !396, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentType", file: !6, line: 283, baseType: !51)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "ocur", scope: !393, file: !6, line: 308, baseType: !398, size: 32, offset: 32)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentOccur", file: !6, line: 295, baseType: !57)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !393, file: !6, line: 309, baseType: !118, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !393, file: !6, line: 310, baseType: !401, size: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !393, file: !6, line: 311, baseType: !401, size: 64, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !393, file: !6, line: 312, baseType: !401, size: 64, offset: 256)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !393, file: !6, line: 313, baseType: !118, size: 64, offset: 320)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "unparsedEntityDecl", scope: !109, file: !110, line: 732, baseType: !406, size: 64, offset: 640)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "unparsedEntityDeclSAXFunc", file: !110, line: 475, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !117, !118, !118, !118, !118}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "setDocumentLocator", scope: !109, file: !110, line: 733, baseType: !411, size: 64, offset: 704)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "setDocumentLocatorSAXFunc", file: !110, line: 488, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !117, !415}
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXLocatorPtr", file: !6, line: 42, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXLocator", file: !6, line: 41, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXLocator", file: !110, line: 323, size: 256, elements: !419)
!419 = !{!420, !424, !425, !426}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "getPublicId", scope: !418, file: !110, line: 324, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{!118, !117}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "getSystemId", scope: !418, file: !110, line: 325, baseType: !421, size: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "getLineNumber", scope: !418, file: !110, line: 326, baseType: !125, size: 64, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "getColumnNumber", scope: !418, file: !110, line: 327, baseType: !125, size: 64, offset: 192)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "startDocument", scope: !109, file: !110, line: 734, baseType: !428, size: 64, offset: 768)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "startDocumentSAXFunc", file: !110, line: 496, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !117}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "endDocument", scope: !109, file: !110, line: 735, baseType: !433, size: 64, offset: 832)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "endDocumentSAXFunc", file: !110, line: 503, baseType: !429)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "startElement", scope: !109, file: !110, line: 736, baseType: !435, size: 64, offset: 896)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "startElementSAXFunc", file: !110, line: 512, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !117, !118, !439}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "endElement", scope: !109, file: !110, line: 737, baseType: !441, size: 64, offset: 960)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "endElementSAXFunc", file: !110, line: 522, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !117, !118}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !109, file: !110, line: 738, baseType: !446, size: 64, offset: 1024)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "referenceSAXFunc", file: !110, line: 545, baseType: !442)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "characters", scope: !109, file: !110, line: 739, baseType: !448, size: 64, offset: 1088)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "charactersSAXFunc", file: !110, line: 555, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !117, !118, !83}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "ignorableWhitespace", scope: !109, file: !110, line: 740, baseType: !453, size: 64, offset: 1152)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "ignorableWhitespaceSAXFunc", file: !110, line: 567, baseType: !449)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "processingInstruction", scope: !109, file: !110, line: 741, baseType: !455, size: 64, offset: 1216)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "processingInstructionSAXFunc", file: !110, line: 578, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !117, !118, !118}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !109, file: !110, line: 742, baseType: !460, size: 64, offset: 1280)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "commentSAXFunc", file: !110, line: 588, baseType: !442)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "warning", scope: !109, file: !110, line: 743, baseType: !462, size: 64, offset: 1344)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "warningSAXFunc", file: !110, line: 610, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !117, !217, null}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !109, file: !110, line: 744, baseType: !467, size: 64, offset: 1408)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "errorSAXFunc", file: !110, line: 620, baseType: !463)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "fatalError", scope: !109, file: !110, line: 745, baseType: !469, size: 64, offset: 1472)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "fatalErrorSAXFunc", file: !110, line: 632, baseType: !463)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "getParameterEntity", scope: !109, file: !110, line: 746, baseType: !471, size: 64, offset: 1536)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "getParameterEntitySAXFunc", file: !110, line: 401, baseType: !239)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "cdataBlock", scope: !109, file: !110, line: 747, baseType: !473, size: 64, offset: 1600)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "cdataBlockSAXFunc", file: !110, line: 598, baseType: !449)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "externalSubset", scope: !109, file: !110, line: 748, baseType: !475, size: 64, offset: 1664)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "externalSubsetSAXFunc", file: !110, line: 377, baseType: !114)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !109, file: !110, line: 749, baseType: !7, size: 32, offset: 1728)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !109, file: !110, line: 751, baseType: !117, size: 64, offset: 1792)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "startElementNs", scope: !109, file: !110, line: 752, baseType: !479, size: 64, offset: 1856)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "startElementNsSAX2Func", file: !110, line: 694, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !117, !118, !118, !118, !83, !439, !83, !83, !439}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "endElementNs", scope: !109, file: !110, line: 753, baseType: !484, size: 64, offset: 1920)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "endElementNsSAX2Func", file: !110, line: 715, baseType: !114)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "serror", scope: !109, file: !110, line: 754, baseType: !486, size: 64, offset: 1984)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStructuredErrorFunc", file: !64, line: 856, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !117, !490}
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorPtr", file: !64, line: 77, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlError", file: !64, line: 76, baseType: !493)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlError", file: !64, line: 78, size: 704, elements: !494)
!494 = !{!495, !496, !497, !498, !500, !501, !502, !503, !504, !505, !506, !507, !508}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !493, file: !64, line: 79, baseType: !83, size: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !493, file: !64, line: 80, baseType: !83, size: 32, offset: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !493, file: !64, line: 81, baseType: !71, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !493, file: !64, line: 82, baseType: !499, size: 32, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorLevel", file: !64, line: 29, baseType: !63)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !493, file: !64, line: 83, baseType: !71, size: 64, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !493, file: !64, line: 84, baseType: !83, size: 32, offset: 256)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "str1", scope: !493, file: !64, line: 85, baseType: !71, size: 64, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "str2", scope: !493, file: !64, line: 86, baseType: !71, size: 64, offset: 384)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "str3", scope: !493, file: !64, line: 87, baseType: !71, size: 64, offset: 448)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "int1", scope: !493, file: !64, line: 88, baseType: !83, size: 32, offset: 512)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "int2", scope: !493, file: !64, line: 89, baseType: !83, size: 32, offset: 544)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "ctxt", scope: !493, file: !64, line: 90, baseType: !117, size: 64, offset: 576)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !493, file: !64, line: 91, baseType: !117, size: 64, offset: 640)
!509 = !DILocation(line: 44, column: 19, scope: !103)
!510 = !DILocation(line: 45, column: 5, scope: !103)
!511 = !DILocalVariable(name: "len", scope: !103, file: !3, line: 47, type: !83)
!512 = !DILocation(line: 47, column: 9, scope: !103)
!513 = !DILocation(line: 48, column: 24, scope: !103)
!514 = !DILocation(line: 48, column: 5, scope: !103)
!515 = !DILocation(line: 49, column: 17, scope: !103)
!516 = !DILocation(line: 49, column: 21, scope: !103)
!517 = !DILocation(line: 49, column: 5, scope: !103)
!518 = !DILocation(line: 50, column: 17, scope: !103)
!519 = !DILocation(line: 50, column: 21, scope: !103)
!520 = !DILocation(line: 50, column: 5, scope: !103)
!521 = !DILocalVariable(name: "segment_len", scope: !103, file: !3, line: 52, type: !83)
!522 = !DILocation(line: 52, column: 9, scope: !103)
!523 = !DILocation(line: 53, column: 24, scope: !103)
!524 = !DILocation(line: 53, column: 5, scope: !103)
!525 = !DILocation(line: 54, column: 17, scope: !103)
!526 = !DILocation(line: 54, column: 29, scope: !103)
!527 = !DILocation(line: 54, column: 5, scope: !103)
!528 = !DILocation(line: 55, column: 17, scope: !103)
!529 = !DILocation(line: 55, column: 29, scope: !103)
!530 = !DILocation(line: 55, column: 5, scope: !103)
!531 = !DILocation(line: 57, column: 38, scope: !103)
!532 = !DILocation(line: 57, column: 50, scope: !103)
!533 = !DILocation(line: 57, column: 31, scope: !103)
!534 = !DILocation(line: 57, column: 22, scope: !103)
!535 = !DILocation(line: 58, column: 33, scope: !103)
!536 = !DILocation(line: 58, column: 42, scope: !103)
!537 = !DILocation(line: 58, column: 54, scope: !103)
!538 = !DILocation(line: 58, column: 5, scope: !103)
!539 = !DILocation(line: 59, column: 14, scope: !103)
!540 = !DILocation(line: 59, column: 22, scope: !103)
!541 = !DILocation(line: 59, column: 5, scope: !103)
!542 = !DILocation(line: 59, column: 35, scope: !103)
!543 = !DILocation(line: 61, column: 30, scope: !103)
!544 = !DILocation(line: 61, column: 21, scope: !103)
!545 = !DILocation(line: 62, column: 14, scope: !103)
!546 = !DILocation(line: 62, column: 5, scope: !103)
!547 = !DILocation(line: 62, column: 24, scope: !103)
!548 = !DILocation(line: 64, column: 12, scope: !103)
!549 = !DILocation(line: 65, column: 24, scope: !103)
!550 = !DILocation(line: 65, column: 13, scope: !103)
!551 = !DILocation(line: 66, column: 19, scope: !103)
!552 = !DILocation(line: 66, column: 12, scope: !103)
!553 = !DILocation(line: 66, column: 10, scope: !103)
!554 = !DILocation(line: 68, column: 9, scope: !555)
!555 = distinct !DILexicalBlock(scope: !103, file: !3, line: 68, column: 9)
!556 = !DILocation(line: 68, column: 16, scope: !555)
!557 = !DILocation(line: 68, column: 14, scope: !555)
!558 = !DILocation(line: 68, column: 9, scope: !103)
!559 = !DILocation(line: 69, column: 9, scope: !560)
!560 = distinct !DILexicalBlock(scope: !555, file: !3, line: 68, column: 21)
!561 = !DILocation(line: 70, column: 24, scope: !560)
!562 = !DILocation(line: 70, column: 33, scope: !560)
!563 = !DILocation(line: 70, column: 9, scope: !560)
!564 = !DILocation(line: 71, column: 5, scope: !560)
!565 = !DILocation(line: 73, column: 19, scope: !103)
!566 = !DILocation(line: 73, column: 5, scope: !103)
!567 = !DILocation(line: 74, column: 19, scope: !103)
!568 = !DILocation(line: 74, column: 5, scope: !103)
!569 = !DILocation(line: 75, column: 5, scope: !103)
!570 = distinct !DISubprogram(name: "memcpy", scope: !571, file: !571, line: 12, type: !572, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !91, retainedNodes: !106)
!571 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!572 = !DISubroutineType(types: !573)
!573 = !{!117, !117, !574, !576}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !577, line: 46, baseType: !215)
!577 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!578 = !DILocalVariable(name: "destaddr", arg: 1, scope: !570, file: !571, line: 12, type: !117)
!579 = !DILocation(line: 12, column: 20, scope: !570)
!580 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !570, file: !571, line: 12, type: !574)
!581 = !DILocation(line: 12, column: 42, scope: !570)
!582 = !DILocalVariable(name: "len", arg: 3, scope: !570, file: !571, line: 12, type: !576)
!583 = !DILocation(line: 12, column: 58, scope: !570)
!584 = !DILocalVariable(name: "dest", scope: !570, file: !571, line: 13, type: !71)
!585 = !DILocation(line: 13, column: 9, scope: !570)
!586 = !DILocation(line: 13, column: 16, scope: !570)
!587 = !DILocalVariable(name: "src", scope: !570, file: !571, line: 14, type: !217)
!588 = !DILocation(line: 14, column: 15, scope: !570)
!589 = !DILocation(line: 14, column: 21, scope: !570)
!590 = !DILocation(line: 16, column: 3, scope: !570)
!591 = !DILocation(line: 16, column: 13, scope: !570)
!592 = !DILocation(line: 16, column: 16, scope: !570)
!593 = !DILocation(line: 17, column: 19, scope: !570)
!594 = !DILocation(line: 17, column: 15, scope: !570)
!595 = !DILocation(line: 17, column: 10, scope: !570)
!596 = !DILocation(line: 17, column: 13, scope: !570)
!597 = distinct !{!597, !590, !593, !598}
!598 = !{!"llvm.loop.mustprogress"}
!599 = !DILocation(line: 18, column: 10, scope: !570)
!600 = !DILocation(line: 18, column: 3, scope: !570)
!601 = distinct !DISubprogram(name: "memset", scope: !602, file: !602, line: 12, type: !603, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !93, retainedNodes: !106)
!602 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!603 = !DISubroutineType(types: !604)
!604 = !{!117, !117, !83, !576}
!605 = !DILocalVariable(name: "dst", arg: 1, scope: !601, file: !602, line: 12, type: !117)
!606 = !DILocation(line: 12, column: 20, scope: !601)
!607 = !DILocalVariable(name: "s", arg: 2, scope: !601, file: !602, line: 12, type: !83)
!608 = !DILocation(line: 12, column: 29, scope: !601)
!609 = !DILocalVariable(name: "count", arg: 3, scope: !601, file: !602, line: 12, type: !576)
!610 = !DILocation(line: 12, column: 39, scope: !601)
!611 = !DILocalVariable(name: "a", scope: !601, file: !602, line: 13, type: !71)
!612 = !DILocation(line: 13, column: 9, scope: !601)
!613 = !DILocation(line: 13, column: 13, scope: !601)
!614 = !DILocation(line: 14, column: 3, scope: !601)
!615 = !DILocation(line: 14, column: 15, scope: !601)
!616 = !DILocation(line: 14, column: 18, scope: !601)
!617 = !DILocation(line: 15, column: 12, scope: !601)
!618 = !DILocation(line: 15, column: 7, scope: !601)
!619 = !DILocation(line: 15, column: 10, scope: !601)
!620 = distinct !{!620, !614, !617, !598}
!621 = !DILocation(line: 16, column: 10, scope: !601)
!622 = !DILocation(line: 16, column: 3, scope: !601)

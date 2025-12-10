; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/003_SAX2.c_1767_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/003_SAX2.c_1767_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
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

@.str = private unnamed_addr constant [12 x i8] c"freeElemsNr\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"dictNames\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@xmlMalloc = external global i8* (i64)*, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"xmlSAX2Characters\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/003_SAX2.c_1767_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@xmlFree = external global void (i8*)*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !219 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt*, align 8
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !223, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !687, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.declare(metadata i32* %4, metadata !689, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.declare(metadata i32* %5, metadata !691, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.declare(metadata i8** %6, metadata !693, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.declare(metadata i32* %7, metadata !695, metadata !DIExpression()), !dbg !696
  %9 = call i32 (...) @xmlCreateParserCtxt(), !dbg !697
  %10 = sext i32 %9 to i64, !dbg !697
  %11 = inttoptr i64 %10 to %struct._xmlParserCtxt*, !dbg !697
  store %struct._xmlParserCtxt* %11, %struct._xmlParserCtxt** %2, align 8, !dbg !698
  %12 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !699
  %13 = icmp eq %struct._xmlParserCtxt* %12, null, !dbg !701
  br i1 %13, label %14, label %15, !dbg !702

14:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !703
  br label %91, !dbg !703

15:                                               ; preds = %0
  %16 = bitcast i32* %4 to i8*, !dbg !705
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)), !dbg !706
  %17 = bitcast i32* %5 to i8*, !dbg !707
  call void @klee_make_symbolic(i8* noundef %17, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)), !dbg !708
  %18 = bitcast i32* %7 to i8*, !dbg !709
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !710
  %19 = load i32, i32* %4, align 4, !dbg !711
  %20 = icmp sgt i32 %19, 0, !dbg !713
  br i1 %20, label %21, label %39, !dbg !714

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4, !dbg !715
  %23 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !717
  %24 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %23, i32 0, i32 75, !dbg !718
  store i32 %22, i32* %24, align 4, !dbg !719
  %25 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !720
  %26 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %25, i32 0, i32 76, !dbg !721
  %27 = load %struct._xmlNode*, %struct._xmlNode** %26, align 8, !dbg !721
  store %struct._xmlNode* %27, %struct._xmlNode** %3, align 8, !dbg !722
  %28 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !723
  %29 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %28, i32 0, i32 76, !dbg !724
  %30 = load %struct._xmlNode*, %struct._xmlNode** %29, align 8, !dbg !724
  %31 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %30, i32 0, i32 6, !dbg !725
  %32 = load %struct._xmlNode*, %struct._xmlNode** %31, align 8, !dbg !725
  %33 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !726
  %34 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %33, i32 0, i32 76, !dbg !727
  store %struct._xmlNode* %32, %struct._xmlNode** %34, align 8, !dbg !728
  %35 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !729
  %36 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %35, i32 0, i32 75, !dbg !730
  %37 = load i32, i32* %36, align 4, !dbg !731
  %38 = add nsw i32 %37, -1, !dbg !731
  store i32 %38, i32* %36, align 4, !dbg !731
  br label %43, !dbg !732

39:                                               ; preds = %15
  %40 = load i8* (i64)*, i8* (i64)** @xmlMalloc, align 8, !dbg !733
  %41 = call i8* %40(i64 noundef 120), !dbg !733
  %42 = bitcast i8* %41 to %struct._xmlNode*, !dbg !735
  store %struct._xmlNode* %42, %struct._xmlNode** %3, align 8, !dbg !736
  br label %43

43:                                               ; preds = %39, %21
  %44 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !737
  %45 = icmp eq %struct._xmlNode* %44, null, !dbg !739
  br i1 %45, label %46, label %50, !dbg !740

46:                                               ; preds = %43
  %47 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !741
  %48 = call i32 (%struct._xmlParserCtxt*, i8*, ...) bitcast (i32 (...)* @xmlErrMemory to i32 (%struct._xmlParserCtxt*, i8*, ...)*)(%struct._xmlParserCtxt* noundef %47, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0)), !dbg !743
  %49 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !744
  call void @xmlFreeParserCtxt(%struct._xmlParserCtxt* noundef %49), !dbg !745
  store i32 0, i32* %1, align 4, !dbg !746
  br label %91, !dbg !746

50:                                               ; preds = %43
  %51 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.5, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !747
  %52 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !748
  %53 = bitcast %struct._xmlNode* %52 to i8*, !dbg !749
  %54 = call i8* @memset(i8* %53, i32 0, i64 120), !dbg !749
  %55 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !750
  %56 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %55, i32 0, i32 74, !dbg !752
  %57 = load i32, i32* %56, align 8, !dbg !752
  %58 = icmp ne i32 %57, 0, !dbg !750
  br i1 %58, label %59, label %82, !dbg !753

59:                                               ; preds = %50
  call void @llvm.dbg.declare(metadata i8* %8, metadata !754, metadata !DIExpression()), !dbg !756
  %60 = load i8* (i64)*, i8* (i64)** @xmlMalloc, align 8, !dbg !757
  %61 = load i32, i32* %7, align 4, !dbg !758
  %62 = add nsw i32 %61, 1, !dbg !759
  %63 = sext i32 %62 to i64, !dbg !758
  %64 = call i8* %60(i64 noundef %63), !dbg !757
  store i8* %64, i8** %6, align 8, !dbg !760
  %65 = load i8*, i8** %6, align 8, !dbg !761
  %66 = icmp ne i8* %65, null, !dbg !761
  br i1 %66, label %67, label %81, !dbg !763

67:                                               ; preds = %59
  %68 = load i8*, i8** %6, align 8, !dbg !764
  %69 = load i32, i32* %7, align 4, !dbg !766
  %70 = add nsw i32 %69, 1, !dbg !767
  %71 = sext i32 %70 to i64, !dbg !766
  call void @klee_make_symbolic(i8* noundef %68, i64 noundef %71, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)), !dbg !768
  %72 = load i8*, i8** %6, align 8, !dbg !769
  %73 = load i32, i32* %7, align 4, !dbg !770
  %74 = sext i32 %73 to i64, !dbg !769
  %75 = getelementptr inbounds i8, i8* %72, i64 %74, !dbg !769
  store i8 0, i8* %75, align 1, !dbg !771
  %76 = load i8*, i8** %6, align 8, !dbg !772
  %77 = load i32, i32* %7, align 4, !dbg !773
  %78 = sext i32 %77 to i64, !dbg !772
  %79 = getelementptr inbounds i8, i8* %76, i64 %78, !dbg !772
  %80 = load i8, i8* %79, align 1, !dbg !772
  store i8 %80, i8* %8, align 1, !dbg !774
  br label %81, !dbg !775

81:                                               ; preds = %67, %59
  br label %82, !dbg !776

82:                                               ; preds = %81, %50
  %83 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !777
  call void @xmlFreeParserCtxt(%struct._xmlParserCtxt* noundef %83), !dbg !778
  %84 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !779
  %85 = icmp ne %struct._xmlNode* %84, null, !dbg !779
  br i1 %85, label %86, label %90, !dbg !781

86:                                               ; preds = %82
  %87 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !782
  %88 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !784
  %89 = bitcast %struct._xmlNode* %88 to i8*, !dbg !784
  call void %87(i8* noundef %89), !dbg !782
  br label %90, !dbg !785

90:                                               ; preds = %86, %82
  store i32 0, i32* %1, align 4, !dbg !786
  br label %91, !dbg !786

91:                                               ; preds = %90, %46, %14
  %92 = load i32, i32* %1, align 4, !dbg !787
  ret i32 %92, !dbg !787
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @xmlCreateParserCtxt(...) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare i32 @xmlErrMemory(...) #2

declare void @xmlFreeParserCtxt(%struct._xmlParserCtxt* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !788 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !794, metadata !DIExpression()), !dbg !795
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !796, metadata !DIExpression()), !dbg !797
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !798, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.declare(metadata i8** %7, metadata !800, metadata !DIExpression()), !dbg !801
  %8 = load i8*, i8** %4, align 8, !dbg !802
  store i8* %8, i8** %7, align 8, !dbg !801
  br label %9, !dbg !803

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !804
  %11 = add i64 %10, -1, !dbg !804
  store i64 %11, i64* %6, align 8, !dbg !804
  %12 = icmp ugt i64 %10, 0, !dbg !805
  br i1 %12, label %13, label %18, !dbg !803

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !806
  %15 = trunc i32 %14 to i8, !dbg !806
  %16 = load i8*, i8** %7, align 8, !dbg !807
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !807
  store i8* %17, i8** %7, align 8, !dbg !807
  store i8 %15, i8* %16, align 1, !dbg !808
  br label %9, !dbg !803, !llvm.loop !809

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !811
  ret i8* %19, !dbg !812
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !209}
!llvm.module.flags = !{!211, !212, !213, !214, !215, !216, !217}
!llvm.ident = !{!218, !218}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !98, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/003_SAX2.c_1767_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "49ea17c1607cde98b2f95564561fc61a")
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
!98 = !{!99, !100, !127}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !104)
!104 = !{!105, !106, !108, !114, !116, !117, !118, !119, !120, !182, !185, !187, !204, !205, !206, !208}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !103, file: !4, line: 493, baseType: !99, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !103, file: !4, line: 494, baseType: !107, size: 32, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !103, file: !4, line: 495, baseType: !109, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !112, line: 28, baseType: !113)
!112 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!113 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !103, file: !4, line: 496, baseType: !115, size: 64, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !103, file: !4, line: 497, baseType: !115, size: 64, offset: 256)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !103, file: !4, line: 498, baseType: !115, size: 64, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !103, file: !4, line: 499, baseType: !115, size: 64, offset: 384)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !103, file: !4, line: 500, baseType: !115, size: 64, offset: 448)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !103, file: !4, line: 501, baseType: !121, size: 64, offset: 512)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !123)
!123 = !{!124, !125, !126, !129, !130, !131, !132, !133, !134, !135, !136, !137, !157, !158, !169, !170, !171, !172, !173, !174, !175, !179, !180, !181}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !122, file: !4, line: 560, baseType: !99, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !122, file: !4, line: 561, baseType: !107, size: 32, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !122, file: !4, line: 562, baseType: !127, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !122, file: !4, line: 563, baseType: !115, size: 64, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !122, file: !4, line: 564, baseType: !115, size: 64, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !122, file: !4, line: 565, baseType: !115, size: 64, offset: 320)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !122, file: !4, line: 566, baseType: !115, size: 64, offset: 384)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !122, file: !4, line: 567, baseType: !115, size: 64, offset: 448)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !122, file: !4, line: 568, baseType: !121, size: 64, offset: 512)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !122, file: !4, line: 571, baseType: !70, size: 32, offset: 576)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !122, file: !4, line: 572, baseType: !70, size: 32, offset: 608)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !122, file: !4, line: 578, baseType: !138, size: 64, offset: 640)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !139, file: !4, line: 406, baseType: !99, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !139, file: !4, line: 407, baseType: !107, size: 32, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !139, file: !4, line: 408, baseType: !109, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !139, file: !4, line: 409, baseType: !115, size: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !139, file: !4, line: 410, baseType: !115, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !139, file: !4, line: 411, baseType: !121, size: 64, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !139, file: !4, line: 412, baseType: !115, size: 64, offset: 384)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !139, file: !4, line: 413, baseType: !115, size: 64, offset: 448)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !139, file: !4, line: 414, baseType: !121, size: 64, offset: 512)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !139, file: !4, line: 417, baseType: !99, size: 64, offset: 576)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !139, file: !4, line: 418, baseType: !99, size: 64, offset: 640)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !139, file: !4, line: 419, baseType: !99, size: 64, offset: 704)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !139, file: !4, line: 420, baseType: !99, size: 64, offset: 768)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !139, file: !4, line: 421, baseType: !109, size: 64, offset: 832)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !139, file: !4, line: 422, baseType: !109, size: 64, offset: 896)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !139, file: !4, line: 423, baseType: !99, size: 64, offset: 960)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !122, file: !4, line: 579, baseType: !138, size: 64, offset: 704)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !122, file: !4, line: 580, baseType: !159, size: 64, offset: 768)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !161)
!161 = !{!162, !163, !165, !166, !167, !168}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !160, file: !4, line: 389, baseType: !159, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !160, file: !4, line: 390, baseType: !164, size: 32, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !107)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !160, file: !4, line: 391, baseType: !109, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !160, file: !4, line: 392, baseType: !109, size: 64, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !160, file: !4, line: 393, baseType: !99, size: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !160, file: !4, line: 394, baseType: !121, size: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !122, file: !4, line: 581, baseType: !109, size: 64, offset: 832)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !122, file: !4, line: 582, baseType: !109, size: 64, offset: 896)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !122, file: !4, line: 583, baseType: !99, size: 64, offset: 960)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !122, file: !4, line: 584, baseType: !99, size: 64, offset: 1024)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !122, file: !4, line: 585, baseType: !109, size: 64, offset: 1088)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !122, file: !4, line: 586, baseType: !70, size: 32, offset: 1152)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !122, file: !4, line: 588, baseType: !176, size: 64, offset: 1216)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !178, line: 24, flags: DIFlagFwdDecl)
!178 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!179 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !122, file: !4, line: 589, baseType: !99, size: 64, offset: 1280)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !122, file: !4, line: 590, baseType: !70, size: 32, offset: 1344)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !122, file: !4, line: 592, baseType: !70, size: 32, offset: 1376)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !103, file: !4, line: 504, baseType: !183, size: 64, offset: 576)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !160)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !103, file: !4, line: 505, baseType: !186, size: 64, offset: 640)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !103, file: !4, line: 506, baseType: !188, size: 64, offset: 704)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !190)
!190 = !{!191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !203}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !189, file: !4, line: 434, baseType: !99, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !189, file: !4, line: 435, baseType: !107, size: 32, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !189, file: !4, line: 436, baseType: !109, size: 64, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !189, file: !4, line: 437, baseType: !115, size: 64, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !189, file: !4, line: 438, baseType: !115, size: 64, offset: 256)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !189, file: !4, line: 439, baseType: !115, size: 64, offset: 320)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !189, file: !4, line: 440, baseType: !188, size: 64, offset: 384)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !189, file: !4, line: 441, baseType: !188, size: 64, offset: 448)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !189, file: !4, line: 442, baseType: !121, size: 64, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !189, file: !4, line: 443, baseType: !183, size: 64, offset: 576)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !189, file: !4, line: 444, baseType: !202, size: 32, offset: 640)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !189, file: !4, line: 445, baseType: !99, size: 64, offset: 704)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !103, file: !4, line: 507, baseType: !183, size: 64, offset: 768)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !103, file: !4, line: 508, baseType: !99, size: 64, offset: 832)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !103, file: !4, line: 509, baseType: !207, size: 16, offset: 896)
!207 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !103, file: !4, line: 510, baseType: !207, size: 16, offset: 912)
!209 = distinct !DICompileUnit(language: DW_LANG_C99, file: !210, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!210 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!211 = !{i32 7, !"Dwarf Version", i32 5}
!212 = !{i32 2, !"Debug Info Version", i32 3}
!213 = !{i32 1, !"wchar_size", i32 4}
!214 = !{i32 7, !"PIC Level", i32 2}
!215 = !{i32 7, !"PIE Level", i32 2}
!216 = !{i32 7, !"uwtable", i32 1}
!217 = !{i32 7, !"frame-pointer", i32 2}
!218 = !{!"Ubuntu clang version 14.0.6"}
!219 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !220, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !222)
!220 = !DISubroutineType(types: !221)
!221 = !{!70}
!222 = !{}
!223 = !DILocalVariable(name: "ctxt", scope: !219, file: !1, line: 6, type: !224)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxtPtr", file: !4, line: 39, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !4, line: 38, baseType: !227)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !69, line: 186, size: 6016, elements: !228)
!228 = !{!229, !525, !526, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !541, !542, !543, !544, !546, !547, !565, !566, !567, !568, !569, !570, !571, !606, !608, !609, !610, !611, !612, !613, !614, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !658, !664, !665, !666, !667, !668, !669, !670, !671, !675, !676, !678, !679, !680, !681, !682, !683, !684, !685}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "sax", scope: !227, file: !69, line: 187, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXHandler", file: !69, line: 721, size: 2048, elements: !232)
!232 = !{!233, !238, !243, !245, !247, !350, !381, !386, !388, !401, !421, !426, !443, !448, !450, !456, !461, !463, !468, !470, !475, !477, !482, !484, !486, !488, !490, !492, !493, !494, !499, !501}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "internalSubset", scope: !231, file: !69, line: 722, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "internalSubsetSAXFunc", file: !69, line: 364, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{null, !99, !109, !109, !109}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "isStandalone", scope: !231, file: !69, line: 723, baseType: !239, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "isStandaloneSAXFunc", file: !69, line: 642, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!70, !99}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "hasInternalSubset", scope: !231, file: !69, line: 724, baseType: !244, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "hasInternalSubsetSAXFunc", file: !69, line: 651, baseType: !240)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "hasExternalSubset", scope: !231, file: !69, line: 725, baseType: !246, size: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "hasExternalSubsetSAXFunc", file: !69, line: 661, baseType: !240)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "resolveEntity", scope: !231, file: !69, line: 726, baseType: !248, size: 64, offset: 256)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "resolveEntitySAXFunc", file: !69, line: 352, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!252, !99, !109, !109}
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputPtr", file: !4, line: 36, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInput", file: !4, line: 35, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInput", file: !69, line: 54, size: 832, elements: !256)
!256 = !{!257, !330, !333, !334, !335, !336, !337, !338, !339, !340, !341, !346, !347, !348, !349}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !255, file: !69, line: 56, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputBufferPtr", file: !4, line: 29, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputBuffer", file: !4, line: 28, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInputBuffer", file: !262, line: 125, size: 512, elements: !263)
!262 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlIO.h", directory: "", checksumkind: CSK_MD5, checksum: "a868e7a396360b2f16d10eac4a34669c")
!263 = !{!264, !265, !270, !272, !320, !325, !326, !327, !328}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !261, file: !262, line: 126, baseType: !99, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "readcallback", scope: !261, file: !262, line: 127, baseType: !266, size: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlInputReadCallback", file: !262, line: 54, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!70, !99, !127, !70}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "closecallback", scope: !261, file: !262, line: 128, baseType: !271, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlInputCloseCallback", file: !262, line: 63, baseType: !240)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !261, file: !262, line: 130, baseType: !273, size: 64, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandlerPtr", file: !274, line: 145, baseType: !275)
!274 = !DIFile(filename: "/usr/include/libxml2/libxml/encoding.h", directory: "", checksumkind: CSK_MD5, checksum: "807b84fade38abad3ae0d9b6af714dbc")
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandler", file: !274, line: 144, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlCharEncodingHandler", file: !274, line: 146, size: 448, elements: !278)
!278 = !{!279, !280, !289, !291, !294, !295, !319}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !277, file: !274, line: 147, baseType: !127, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !277, file: !274, line: 148, baseType: !281, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingInputFunc", file: !274, line: 101, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!70, !285, !286, !287, !286}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !277, file: !274, line: 149, baseType: !290, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingOutputFunc", file: !274, line: 123, baseType: !282)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_in", scope: !277, file: !274, line: 151, baseType: !292, size: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !293, line: 29, baseType: !99)
!293 = !DIFile(filename: "/usr/include/iconv.h", directory: "", checksumkind: CSK_MD5, checksum: "edfee9bcfa398c9184cc8f95deb97c16")
!294 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_out", scope: !277, file: !274, line: 152, baseType: !292, size: 64, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_in", scope: !277, file: !274, line: 155, baseType: !296, size: 64, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "uconv_t", file: !274, line: 141, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_uconv_t", file: !274, line: 134, size: 16640, elements: !299)
!299 = !{!300, !305, !306, !316, !318}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "uconv", scope: !298, file: !274, line: 135, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "UConverter", file: !303, line: 96, baseType: !304)
!303 = !DIFile(filename: "/usr/include/unicode/ucnv_err.h", directory: "", checksumkind: CSK_MD5, checksum: "a507bbb125e54d860485ec054a4a55ed")
!304 = !DICompositeType(tag: DW_TAG_structure_type, name: "UConverter", file: !303, line: 93, flags: DIFlagFwdDecl)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !298, file: !274, line: 136, baseType: !301, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_buf", scope: !298, file: !274, line: 137, baseType: !307, size: 16384, offset: 128)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 16384, elements: !314)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "UChar", file: !309, line: 388, baseType: !310)
!309 = !DIFile(filename: "/usr/include/unicode/umachine.h", directory: "", checksumkind: CSK_MD5, checksum: "2d902ff00eac765b305cb113b74d34df")
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !311, line: 25, baseType: !312)
!311 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !313, line: 40, baseType: !207)
!313 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!314 = !{!315}
!315 = !DISubrange(count: 1024)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_source", scope: !298, file: !274, line: 138, baseType: !317, size: 64, offset: 16512)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_target", scope: !298, file: !274, line: 139, baseType: !317, size: 64, offset: 16576)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_out", scope: !277, file: !274, line: 156, baseType: !296, size: 64, offset: 384)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !261, file: !262, line: 132, baseType: !321, size: 64, offset: 256)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufPtr", file: !4, line: 114, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !4, line: 105, baseType: !324)
!324 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !4, line: 105, flags: DIFlagFwdDecl)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !261, file: !262, line: 133, baseType: !321, size: 64, offset: 320)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "compressed", scope: !261, file: !262, line: 134, baseType: !70, size: 32, offset: 384)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !261, file: !262, line: 135, baseType: !70, size: 32, offset: 416)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "rawconsumed", scope: !261, file: !262, line: 136, baseType: !329, size: 64, offset: 448)
!329 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !255, file: !69, line: 58, baseType: !331, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !255, file: !69, line: 59, baseType: !331, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !255, file: !69, line: 60, baseType: !109, size: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !255, file: !69, line: 61, baseType: !109, size: 64, offset: 256)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !255, file: !69, line: 62, baseType: !109, size: 64, offset: 320)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !255, file: !69, line: 63, baseType: !70, size: 32, offset: 384)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !255, file: !69, line: 64, baseType: !70, size: 32, offset: 416)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !255, file: !69, line: 65, baseType: !70, size: 32, offset: 448)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "consumed", scope: !255, file: !69, line: 71, baseType: !329, size: 64, offset: 512)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !255, file: !69, line: 72, baseType: !342, size: 64, offset: 576)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputDeallocate", file: !69, line: 52, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !186}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !255, file: !69, line: 73, baseType: !109, size: 64, offset: 640)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !255, file: !69, line: 74, baseType: !109, size: 64, offset: 704)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !255, file: !69, line: 75, baseType: !70, size: 32, offset: 768)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !255, file: !69, line: 76, baseType: !70, size: 32, offset: 800)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "getEntity", scope: !231, file: !69, line: 727, baseType: !351, size: 64, offset: 320)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "getEntitySAXFunc", file: !69, line: 390, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!355, !99, !109}
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntityPtr", file: !4, line: 49, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntity", file: !4, line: 48, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEntity", file: !41, line: 38, size: 1088, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !374, !375, !376, !378, !379, !380}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !358, file: !41, line: 39, baseType: !99, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !358, file: !41, line: 40, baseType: !107, size: 32, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !358, file: !41, line: 41, baseType: !109, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !358, file: !41, line: 42, baseType: !115, size: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !358, file: !41, line: 43, baseType: !115, size: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !358, file: !41, line: 44, baseType: !138, size: 64, offset: 320)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !358, file: !41, line: 45, baseType: !115, size: 64, offset: 384)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !358, file: !41, line: 46, baseType: !115, size: 64, offset: 448)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !358, file: !41, line: 47, baseType: !121, size: 64, offset: 512)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !358, file: !41, line: 49, baseType: !186, size: 64, offset: 576)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !358, file: !41, line: 50, baseType: !186, size: 64, offset: 640)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !358, file: !41, line: 51, baseType: !70, size: 32, offset: 704)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "etype", scope: !358, file: !41, line: 52, baseType: !373, size: 32, offset: 736)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntityType", file: !41, line: 31, baseType: !40)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !358, file: !41, line: 53, baseType: !109, size: 64, offset: 768)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !358, file: !41, line: 54, baseType: !109, size: 64, offset: 832)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "nexte", scope: !358, file: !41, line: 56, baseType: !377, size: 64, offset: 896)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "URI", scope: !358, file: !41, line: 57, baseType: !109, size: 64, offset: 960)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !358, file: !41, line: 58, baseType: !70, size: 32, offset: 1024)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "checked", scope: !358, file: !41, line: 59, baseType: !70, size: 32, offset: 1056)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "entityDecl", scope: !231, file: !69, line: 728, baseType: !382, size: 64, offset: 384)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "entityDeclSAXFunc", file: !69, line: 414, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !99, !109, !70, !109, !109, !186}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "notationDecl", scope: !231, file: !69, line: 729, baseType: !387, size: 64, offset: 448)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "notationDeclSAXFunc", file: !69, line: 429, baseType: !235)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "attributeDecl", scope: !231, file: !69, line: 730, baseType: !389, size: 64, offset: 512)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "attributeDeclSAXFunc", file: !69, line: 445, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !99, !109, !109, !70, !70, !109, !393}
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEnumerationPtr", file: !4, line: 239, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEnumeration", file: !4, line: 238, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEnumeration", file: !4, line: 240, size: 128, elements: !397)
!397 = !{!398, !400}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !396, file: !4, line: 241, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !396, file: !4, line: 242, baseType: !109, size: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "elementDecl", scope: !231, file: !69, line: 731, baseType: !402, size: 64, offset: 576)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "elementDeclSAXFunc", file: !69, line: 461, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !99, !109, !70, !406}
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentPtr", file: !4, line: 305, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContent", file: !4, line: 304, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlElementContent", file: !4, line: 306, size: 384, elements: !410)
!410 = !{!411, !413, !415, !416, !418, !419, !420}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !409, file: !4, line: 307, baseType: !412, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentType", file: !4, line: 283, baseType: !49)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "ocur", scope: !409, file: !4, line: 308, baseType: !414, size: 32, offset: 32)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentOccur", file: !4, line: 295, baseType: !55)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !409, file: !4, line: 309, baseType: !109, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !409, file: !4, line: 310, baseType: !417, size: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !409, file: !4, line: 311, baseType: !417, size: 64, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !409, file: !4, line: 312, baseType: !417, size: 64, offset: 256)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !409, file: !4, line: 313, baseType: !109, size: 64, offset: 320)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "unparsedEntityDecl", scope: !231, file: !69, line: 732, baseType: !422, size: 64, offset: 640)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "unparsedEntityDeclSAXFunc", file: !69, line: 475, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !99, !109, !109, !109, !109}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "setDocumentLocator", scope: !231, file: !69, line: 733, baseType: !427, size: 64, offset: 704)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "setDocumentLocatorSAXFunc", file: !69, line: 488, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !99, !431}
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXLocatorPtr", file: !4, line: 42, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXLocator", file: !4, line: 41, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXLocator", file: !69, line: 323, size: 256, elements: !435)
!435 = !{!436, !440, !441, !442}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "getPublicId", scope: !434, file: !69, line: 324, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!109, !99}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "getSystemId", scope: !434, file: !69, line: 325, baseType: !437, size: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "getLineNumber", scope: !434, file: !69, line: 326, baseType: !240, size: 64, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "getColumnNumber", scope: !434, file: !69, line: 327, baseType: !240, size: 64, offset: 192)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "startDocument", scope: !231, file: !69, line: 734, baseType: !444, size: 64, offset: 768)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "startDocumentSAXFunc", file: !69, line: 496, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !99}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "endDocument", scope: !231, file: !69, line: 735, baseType: !449, size: 64, offset: 832)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "endDocumentSAXFunc", file: !69, line: 503, baseType: !445)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "startElement", scope: !231, file: !69, line: 736, baseType: !451, size: 64, offset: 896)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "startElementSAXFunc", file: !69, line: 512, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !99, !109, !455}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "endElement", scope: !231, file: !69, line: 737, baseType: !457, size: 64, offset: 960)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "endElementSAXFunc", file: !69, line: 522, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !99, !109}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !231, file: !69, line: 738, baseType: !462, size: 64, offset: 1024)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "referenceSAXFunc", file: !69, line: 545, baseType: !458)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "characters", scope: !231, file: !69, line: 739, baseType: !464, size: 64, offset: 1088)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "charactersSAXFunc", file: !69, line: 555, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !99, !109, !70}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "ignorableWhitespace", scope: !231, file: !69, line: 740, baseType: !469, size: 64, offset: 1152)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "ignorableWhitespaceSAXFunc", file: !69, line: 567, baseType: !465)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "processingInstruction", scope: !231, file: !69, line: 741, baseType: !471, size: 64, offset: 1216)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "processingInstructionSAXFunc", file: !69, line: 578, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !99, !109, !109}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !231, file: !69, line: 742, baseType: !476, size: 64, offset: 1280)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "commentSAXFunc", file: !69, line: 588, baseType: !458)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "warning", scope: !231, file: !69, line: 743, baseType: !478, size: 64, offset: 1344)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "warningSAXFunc", file: !69, line: 610, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !99, !331, null}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !231, file: !69, line: 744, baseType: !483, size: 64, offset: 1408)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "errorSAXFunc", file: !69, line: 620, baseType: !479)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "fatalError", scope: !231, file: !69, line: 745, baseType: !485, size: 64, offset: 1472)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "fatalErrorSAXFunc", file: !69, line: 632, baseType: !479)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "getParameterEntity", scope: !231, file: !69, line: 746, baseType: !487, size: 64, offset: 1536)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "getParameterEntitySAXFunc", file: !69, line: 401, baseType: !352)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "cdataBlock", scope: !231, file: !69, line: 747, baseType: !489, size: 64, offset: 1600)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "cdataBlockSAXFunc", file: !69, line: 598, baseType: !465)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "externalSubset", scope: !231, file: !69, line: 748, baseType: !491, size: 64, offset: 1664)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "externalSubsetSAXFunc", file: !69, line: 377, baseType: !235)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !231, file: !69, line: 749, baseType: !5, size: 32, offset: 1728)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !231, file: !69, line: 751, baseType: !99, size: 64, offset: 1792)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "startElementNs", scope: !231, file: !69, line: 752, baseType: !495, size: 64, offset: 1856)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "startElementNsSAX2Func", file: !69, line: 694, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !99, !109, !109, !109, !70, !455, !70, !70, !455}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "endElementNs", scope: !231, file: !69, line: 753, baseType: !500, size: 64, offset: 1920)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "endElementNsSAX2Func", file: !69, line: 715, baseType: !235)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "serror", scope: !231, file: !69, line: 754, baseType: !502, size: 64, offset: 1984)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStructuredErrorFunc", file: !62, line: 856, baseType: !503)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{null, !99, !506}
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorPtr", file: !62, line: 77, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlError", file: !62, line: 76, baseType: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlError", file: !62, line: 78, size: 704, elements: !510)
!510 = !{!511, !512, !513, !514, !516, !517, !518, !519, !520, !521, !522, !523, !524}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !509, file: !62, line: 79, baseType: !70, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !509, file: !62, line: 80, baseType: !70, size: 32, offset: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !509, file: !62, line: 81, baseType: !127, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !509, file: !62, line: 82, baseType: !515, size: 32, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorLevel", file: !62, line: 29, baseType: !61)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !509, file: !62, line: 83, baseType: !127, size: 64, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !509, file: !62, line: 84, baseType: !70, size: 32, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "str1", scope: !509, file: !62, line: 85, baseType: !127, size: 64, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "str2", scope: !509, file: !62, line: 86, baseType: !127, size: 64, offset: 384)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "str3", scope: !509, file: !62, line: 87, baseType: !127, size: 64, offset: 448)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "int1", scope: !509, file: !62, line: 88, baseType: !70, size: 32, offset: 512)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "int2", scope: !509, file: !62, line: 89, baseType: !70, size: 32, offset: 544)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ctxt", scope: !509, file: !62, line: 90, baseType: !99, size: 64, offset: 576)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !509, file: !62, line: 91, baseType: !99, size: 64, offset: 640)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !227, file: !69, line: 188, baseType: !99, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "myDoc", scope: !227, file: !69, line: 189, baseType: !527, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !122)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "wellFormed", scope: !227, file: !69, line: 190, baseType: !70, size: 32, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "replaceEntities", scope: !227, file: !69, line: 191, baseType: !70, size: 32, offset: 224)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !227, file: !69, line: 192, baseType: !109, size: 64, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !227, file: !69, line: 193, baseType: !109, size: 64, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !227, file: !69, line: 194, baseType: !70, size: 32, offset: 384)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "html", scope: !227, file: !69, line: 195, baseType: !70, size: 32, offset: 416)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !227, file: !69, line: 201, baseType: !252, size: 64, offset: 448)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "inputNr", scope: !227, file: !69, line: 202, baseType: !70, size: 32, offset: 512)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "inputMax", scope: !227, file: !69, line: 203, baseType: !70, size: 32, offset: 544)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "inputTab", scope: !227, file: !69, line: 204, baseType: !540, size: 64, offset: 576)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !227, file: !69, line: 207, baseType: !100, size: 64, offset: 640)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !227, file: !69, line: 208, baseType: !70, size: 32, offset: 704)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !227, file: !69, line: 209, baseType: !70, size: 32, offset: 736)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !227, file: !69, line: 210, baseType: !545, size: 64, offset: 768)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "record_info", scope: !227, file: !69, line: 212, baseType: !70, size: 32, offset: 832)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "node_seq", scope: !227, file: !69, line: 213, baseType: !548, size: 192, offset: 896)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserNodeInfoSeq", file: !69, line: 98, baseType: !549)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserNodeInfoSeq", file: !69, line: 100, size: 192, elements: !550)
!550 = !{!551, !552, !553}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !549, file: !69, line: 101, baseType: !329, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !549, file: !69, line: 102, baseType: !329, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !549, file: !69, line: 103, baseType: !554, size: 64, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserNodeInfo", file: !69, line: 86, baseType: !556)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserNodeInfo", file: !69, line: 89, size: 320, elements: !557)
!557 = !{!558, !561, !562, !563, !564}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !556, file: !69, line: 90, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "begin_pos", scope: !556, file: !69, line: 92, baseType: !329, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "begin_line", scope: !556, file: !69, line: 93, baseType: !329, size: 64, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "end_pos", scope: !556, file: !69, line: 94, baseType: !329, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !556, file: !69, line: 95, baseType: !329, size: 64, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "errNo", scope: !227, file: !69, line: 215, baseType: !70, size: 32, offset: 1088)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "hasExternalSubset", scope: !227, file: !69, line: 217, baseType: !70, size: 32, offset: 1120)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "hasPErefs", scope: !227, file: !69, line: 218, baseType: !70, size: 32, offset: 1152)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "external", scope: !227, file: !69, line: 219, baseType: !70, size: 32, offset: 1184)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !227, file: !69, line: 221, baseType: !70, size: 32, offset: 1216)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !227, file: !69, line: 222, baseType: !70, size: 32, offset: 1248)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "vctxt", scope: !227, file: !69, line: 223, baseType: !572, size: 896, offset: 1280)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidCtxt", file: !573, line: 80, baseType: !574)
!573 = !DIFile(filename: "/usr/include/libxml2/libxml/valid.h", directory: "", checksumkind: CSK_MD5, checksum: "3c082c0a5b81e1bc9fd9a21b69014584")
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlValidCtxt", file: !573, line: 82, size: 896, elements: !575)
!575 = !{!576, !577, !579, !581, !582, !583, !584, !585, !586, !587, !588, !592, !593, !594, !595, !601}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !574, file: !573, line: 83, baseType: !99, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !574, file: !573, line: 84, baseType: !578, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidityErrorFunc", file: !573, line: 42, baseType: !479)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "warning", scope: !574, file: !573, line: 85, baseType: !580, size: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidityWarningFunc", file: !573, line: 57, baseType: !479)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !574, file: !573, line: 88, baseType: !100, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !574, file: !573, line: 89, baseType: !70, size: 32, offset: 256)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !574, file: !573, line: 90, baseType: !70, size: 32, offset: 288)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !574, file: !573, line: 91, baseType: !545, size: 64, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "finishDtd", scope: !574, file: !573, line: 93, baseType: !5, size: 32, offset: 384)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !574, file: !573, line: 94, baseType: !527, size: 64, offset: 448)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !574, file: !573, line: 95, baseType: !70, size: 32, offset: 512)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "vstate", scope: !574, file: !573, line: 98, baseType: !589, size: 64, offset: 576)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidState", file: !573, line: 28, baseType: !591)
!591 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlValidState", file: !573, line: 28, flags: DIFlagFwdDecl)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "vstateNr", scope: !574, file: !573, line: 99, baseType: !70, size: 32, offset: 640)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "vstateMax", scope: !574, file: !573, line: 100, baseType: !70, size: 32, offset: 672)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "vstateTab", scope: !574, file: !573, line: 101, baseType: !589, size: 64, offset: 704)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "am", scope: !574, file: !573, line: 104, baseType: !596, size: 64, offset: 768)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAutomataPtr", file: !597, line: 30, baseType: !598)
!597 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlautomata.h", directory: "", checksumkind: CSK_MD5, checksum: "3c3c0a7d353bacfbede7c2decf27e62a")
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAutomata", file: !597, line: 29, baseType: !600)
!600 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAutomata", file: !597, line: 29, flags: DIFlagFwdDecl)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !574, file: !573, line: 105, baseType: !602, size: 64, offset: 832)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAutomataStatePtr", file: !597, line: 38, baseType: !603)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAutomataState", file: !597, line: 37, baseType: !605)
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAutomataState", file: !597, line: 37, flags: DIFlagFwdDecl)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !227, file: !69, line: 225, baseType: !607, size: 32, offset: 2176)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputState", file: !69, line: 131, baseType: !68)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !227, file: !69, line: 226, baseType: !70, size: 32, offset: 2208)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !227, file: !69, line: 228, baseType: !127, size: 64, offset: 2240)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !227, file: !69, line: 231, baseType: !109, size: 64, offset: 2304)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "nameNr", scope: !227, file: !69, line: 232, baseType: !70, size: 32, offset: 2368)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "nameMax", scope: !227, file: !69, line: 233, baseType: !70, size: 32, offset: 2400)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "nameTab", scope: !227, file: !69, line: 234, baseType: !455, size: 64, offset: 2432)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "nbChars", scope: !227, file: !69, line: 236, baseType: !615, size: 64, offset: 2496)
!615 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "checkIndex", scope: !227, file: !69, line: 237, baseType: !615, size: 64, offset: 2560)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "keepBlanks", scope: !227, file: !69, line: 238, baseType: !70, size: 32, offset: 2624)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "disableSAX", scope: !227, file: !69, line: 239, baseType: !70, size: 32, offset: 2656)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "inSubset", scope: !227, file: !69, line: 240, baseType: !70, size: 32, offset: 2688)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "intSubName", scope: !227, file: !69, line: 241, baseType: !109, size: 64, offset: 2752)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "extSubURI", scope: !227, file: !69, line: 242, baseType: !186, size: 64, offset: 2816)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "extSubSystem", scope: !227, file: !69, line: 243, baseType: !186, size: 64, offset: 2880)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !227, file: !69, line: 246, baseType: !286, size: 64, offset: 2944)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "spaceNr", scope: !227, file: !69, line: 247, baseType: !70, size: 32, offset: 3008)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "spaceMax", scope: !227, file: !69, line: 248, baseType: !70, size: 32, offset: 3040)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "spaceTab", scope: !227, file: !69, line: 249, baseType: !286, size: 64, offset: 3072)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !227, file: !69, line: 251, baseType: !70, size: 32, offset: 3136)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !227, file: !69, line: 252, baseType: !252, size: 64, offset: 3200)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !227, file: !69, line: 253, baseType: !70, size: 32, offset: 3264)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "nodelen", scope: !227, file: !69, line: 255, baseType: !70, size: 32, offset: 3296)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "nodemem", scope: !227, file: !69, line: 256, baseType: !70, size: 32, offset: 3328)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "pedantic", scope: !227, file: !69, line: 257, baseType: !70, size: 32, offset: 3360)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !227, file: !69, line: 258, baseType: !99, size: 64, offset: 3392)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "loadsubset", scope: !227, file: !69, line: 260, baseType: !70, size: 32, offset: 3456)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "linenumbers", scope: !227, file: !69, line: 261, baseType: !70, size: 32, offset: 3488)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "catalogs", scope: !227, file: !69, line: 262, baseType: !99, size: 64, offset: 3520)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "recovery", scope: !227, file: !69, line: 263, baseType: !70, size: 32, offset: 3584)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "progressive", scope: !227, file: !69, line: 264, baseType: !70, size: 32, offset: 3616)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !227, file: !69, line: 265, baseType: !640, size: 64, offset: 3648)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !178, line: 25, baseType: !641)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !178, line: 24, baseType: !177)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "atts", scope: !227, file: !69, line: 266, baseType: !455, size: 64, offset: 3712)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "maxatts", scope: !227, file: !69, line: 267, baseType: !70, size: 32, offset: 3776)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "docdict", scope: !227, file: !69, line: 268, baseType: !70, size: 32, offset: 3808)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "str_xml", scope: !227, file: !69, line: 273, baseType: !109, size: 64, offset: 3840)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "str_xmlns", scope: !227, file: !69, line: 274, baseType: !109, size: 64, offset: 3904)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "str_xml_ns", scope: !227, file: !69, line: 275, baseType: !109, size: 64, offset: 3968)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "sax2", scope: !227, file: !69, line: 280, baseType: !70, size: 32, offset: 4032)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "nsNr", scope: !227, file: !69, line: 281, baseType: !70, size: 32, offset: 4064)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "nsMax", scope: !227, file: !69, line: 282, baseType: !70, size: 32, offset: 4096)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "nsTab", scope: !227, file: !69, line: 283, baseType: !455, size: 64, offset: 4160)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "attallocs", scope: !227, file: !69, line: 284, baseType: !286, size: 64, offset: 4224)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "pushTab", scope: !227, file: !69, line: 285, baseType: !655, size: 64, offset: 4288)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStartTag", file: !69, line: 172, baseType: !657)
!657 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlStartTag", file: !69, line: 172, flags: DIFlagFwdDecl)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "attsDefault", scope: !227, file: !69, line: 286, baseType: !659, size: 64, offset: 4352)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !660, line: 22, baseType: !661)
!660 = !DIFile(filename: "/usr/include/libxml2/libxml/hash.h", directory: "", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !660, line: 21, baseType: !663)
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !660, line: 21, flags: DIFlagFwdDecl)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "attsSpecial", scope: !227, file: !69, line: 287, baseType: !659, size: 64, offset: 4416)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "nsWellFormed", scope: !227, file: !69, line: 288, baseType: !70, size: 32, offset: 4480)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !227, file: !69, line: 289, baseType: !70, size: 32, offset: 4512)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "dictNames", scope: !227, file: !69, line: 294, baseType: !70, size: 32, offset: 4544)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "freeElemsNr", scope: !227, file: !69, line: 295, baseType: !70, size: 32, offset: 4576)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "freeElems", scope: !227, file: !69, line: 296, baseType: !100, size: 64, offset: 4608)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "freeAttrsNr", scope: !227, file: !69, line: 297, baseType: !70, size: 32, offset: 4672)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "freeAttrs", scope: !227, file: !69, line: 298, baseType: !672, size: 64, offset: 4736)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttrPtr", file: !4, line: 432, baseType: !673)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttr", file: !4, line: 431, baseType: !189)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "lastError", scope: !227, file: !69, line: 303, baseType: !508, size: 704, offset: 4800)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "parseMode", scope: !227, file: !69, line: 304, baseType: !677, size: 32, offset: 5504)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserMode", file: !69, line: 170, baseType: !90)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "nbentities", scope: !227, file: !69, line: 305, baseType: !329, size: 64, offset: 5568)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "sizeentities", scope: !227, file: !69, line: 306, baseType: !329, size: 64, offset: 5632)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfo", scope: !227, file: !69, line: 309, baseType: !554, size: 64, offset: 5696)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfoNr", scope: !227, file: !69, line: 310, baseType: !70, size: 32, offset: 5760)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfoMax", scope: !227, file: !69, line: 311, baseType: !70, size: 32, offset: 5792)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfoTab", scope: !227, file: !69, line: 312, baseType: !554, size: 64, offset: 5824)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "input_id", scope: !227, file: !69, line: 314, baseType: !70, size: 32, offset: 5888)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "sizeentcopy", scope: !227, file: !69, line: 315, baseType: !329, size: 64, offset: 5952)
!686 = !DILocation(line: 6, column: 22, scope: !219)
!687 = !DILocalVariable(name: "ret", scope: !219, file: !1, line: 7, type: !100)
!688 = !DILocation(line: 7, column: 16, scope: !219)
!689 = !DILocalVariable(name: "freeElemsNr", scope: !219, file: !1, line: 8, type: !70)
!690 = !DILocation(line: 8, column: 9, scope: !219)
!691 = !DILocalVariable(name: "dictNames", scope: !219, file: !1, line: 9, type: !70)
!692 = !DILocation(line: 9, column: 9, scope: !219)
!693 = !DILocalVariable(name: "str", scope: !219, file: !1, line: 10, type: !127)
!694 = !DILocation(line: 10, column: 11, scope: !219)
!695 = !DILocalVariable(name: "len", scope: !219, file: !1, line: 11, type: !70)
!696 = !DILocation(line: 11, column: 9, scope: !219)
!697 = !DILocation(line: 13, column: 12, scope: !219)
!698 = !DILocation(line: 13, column: 10, scope: !219)
!699 = !DILocation(line: 14, column: 9, scope: !700)
!700 = distinct !DILexicalBlock(scope: !219, file: !1, line: 14, column: 9)
!701 = !DILocation(line: 14, column: 14, scope: !700)
!702 = !DILocation(line: 14, column: 9, scope: !219)
!703 = !DILocation(line: 15, column: 9, scope: !704)
!704 = distinct !DILexicalBlock(scope: !700, file: !1, line: 14, column: 23)
!705 = !DILocation(line: 18, column: 24, scope: !219)
!706 = !DILocation(line: 18, column: 5, scope: !219)
!707 = !DILocation(line: 19, column: 24, scope: !219)
!708 = !DILocation(line: 19, column: 5, scope: !219)
!709 = !DILocation(line: 20, column: 24, scope: !219)
!710 = !DILocation(line: 20, column: 5, scope: !219)
!711 = !DILocation(line: 22, column: 9, scope: !712)
!712 = distinct !DILexicalBlock(scope: !219, file: !1, line: 22, column: 9)
!713 = !DILocation(line: 22, column: 21, scope: !712)
!714 = !DILocation(line: 22, column: 9, scope: !219)
!715 = !DILocation(line: 23, column: 29, scope: !716)
!716 = distinct !DILexicalBlock(scope: !712, file: !1, line: 22, column: 26)
!717 = !DILocation(line: 23, column: 9, scope: !716)
!718 = !DILocation(line: 23, column: 15, scope: !716)
!719 = !DILocation(line: 23, column: 27, scope: !716)
!720 = !DILocation(line: 24, column: 28, scope: !716)
!721 = !DILocation(line: 24, column: 34, scope: !716)
!722 = !DILocation(line: 24, column: 13, scope: !716)
!723 = !DILocation(line: 25, column: 27, scope: !716)
!724 = !DILocation(line: 25, column: 33, scope: !716)
!725 = !DILocation(line: 25, column: 44, scope: !716)
!726 = !DILocation(line: 25, column: 9, scope: !716)
!727 = !DILocation(line: 25, column: 15, scope: !716)
!728 = !DILocation(line: 25, column: 25, scope: !716)
!729 = !DILocation(line: 26, column: 9, scope: !716)
!730 = !DILocation(line: 26, column: 15, scope: !716)
!731 = !DILocation(line: 26, column: 26, scope: !716)
!732 = !DILocation(line: 27, column: 5, scope: !716)
!733 = !DILocation(line: 28, column: 28, scope: !734)
!734 = distinct !DILexicalBlock(scope: !712, file: !1, line: 27, column: 12)
!735 = !DILocation(line: 28, column: 15, scope: !734)
!736 = !DILocation(line: 28, column: 13, scope: !734)
!737 = !DILocation(line: 31, column: 9, scope: !738)
!738 = distinct !DILexicalBlock(scope: !219, file: !1, line: 31, column: 9)
!739 = !DILocation(line: 31, column: 13, scope: !738)
!740 = !DILocation(line: 31, column: 9, scope: !219)
!741 = !DILocation(line: 32, column: 22, scope: !742)
!742 = distinct !DILexicalBlock(scope: !738, file: !1, line: 31, column: 22)
!743 = !DILocation(line: 32, column: 9, scope: !742)
!744 = !DILocation(line: 33, column: 27, scope: !742)
!745 = !DILocation(line: 33, column: 9, scope: !742)
!746 = !DILocation(line: 34, column: 9, scope: !742)
!747 = !DILocation(line: 37, column: 5, scope: !219)
!748 = !DILocation(line: 38, column: 12, scope: !219)
!749 = !DILocation(line: 38, column: 5, scope: !219)
!750 = !DILocation(line: 40, column: 9, scope: !751)
!751 = distinct !DILexicalBlock(scope: !219, file: !1, line: 40, column: 9)
!752 = !DILocation(line: 40, column: 15, scope: !751)
!753 = !DILocation(line: 40, column: 9, scope: !219)
!754 = !DILocalVariable(name: "cur", scope: !755, file: !1, line: 41, type: !111)
!755 = distinct !DILexicalBlock(scope: !751, file: !1, line: 40, column: 26)
!756 = !DILocation(line: 41, column: 17, scope: !755)
!757 = !DILocation(line: 42, column: 23, scope: !755)
!758 = !DILocation(line: 42, column: 33, scope: !755)
!759 = !DILocation(line: 42, column: 37, scope: !755)
!760 = !DILocation(line: 42, column: 13, scope: !755)
!761 = !DILocation(line: 43, column: 13, scope: !762)
!762 = distinct !DILexicalBlock(scope: !755, file: !1, line: 43, column: 13)
!763 = !DILocation(line: 43, column: 13, scope: !755)
!764 = !DILocation(line: 44, column: 32, scope: !765)
!765 = distinct !DILexicalBlock(scope: !762, file: !1, line: 43, column: 18)
!766 = !DILocation(line: 44, column: 37, scope: !765)
!767 = !DILocation(line: 44, column: 41, scope: !765)
!768 = !DILocation(line: 44, column: 13, scope: !765)
!769 = !DILocation(line: 45, column: 13, scope: !765)
!770 = !DILocation(line: 45, column: 17, scope: !765)
!771 = !DILocation(line: 45, column: 22, scope: !765)
!772 = !DILocation(line: 46, column: 19, scope: !765)
!773 = !DILocation(line: 46, column: 23, scope: !765)
!774 = !DILocation(line: 46, column: 17, scope: !765)
!775 = !DILocation(line: 47, column: 9, scope: !765)
!776 = !DILocation(line: 48, column: 5, scope: !755)
!777 = !DILocation(line: 50, column: 23, scope: !219)
!778 = !DILocation(line: 50, column: 5, scope: !219)
!779 = !DILocation(line: 51, column: 9, scope: !780)
!780 = distinct !DILexicalBlock(scope: !219, file: !1, line: 51, column: 9)
!781 = !DILocation(line: 51, column: 9, scope: !219)
!782 = !DILocation(line: 52, column: 9, scope: !783)
!783 = distinct !DILexicalBlock(scope: !780, file: !1, line: 51, column: 14)
!784 = !DILocation(line: 52, column: 17, scope: !783)
!785 = !DILocation(line: 53, column: 5, scope: !783)
!786 = !DILocation(line: 54, column: 5, scope: !219)
!787 = !DILocation(line: 55, column: 1, scope: !219)
!788 = distinct !DISubprogram(name: "memset", scope: !789, file: !789, line: 12, type: !790, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !209, retainedNodes: !222)
!789 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!790 = !DISubroutineType(types: !791)
!791 = !{!99, !99, !70, !792}
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !793, line: 46, baseType: !329)
!793 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!794 = !DILocalVariable(name: "dst", arg: 1, scope: !788, file: !789, line: 12, type: !99)
!795 = !DILocation(line: 12, column: 20, scope: !788)
!796 = !DILocalVariable(name: "s", arg: 2, scope: !788, file: !789, line: 12, type: !70)
!797 = !DILocation(line: 12, column: 29, scope: !788)
!798 = !DILocalVariable(name: "count", arg: 3, scope: !788, file: !789, line: 12, type: !792)
!799 = !DILocation(line: 12, column: 39, scope: !788)
!800 = !DILocalVariable(name: "a", scope: !788, file: !789, line: 13, type: !127)
!801 = !DILocation(line: 13, column: 9, scope: !788)
!802 = !DILocation(line: 13, column: 13, scope: !788)
!803 = !DILocation(line: 14, column: 3, scope: !788)
!804 = !DILocation(line: 14, column: 15, scope: !788)
!805 = !DILocation(line: 14, column: 18, scope: !788)
!806 = !DILocation(line: 15, column: 12, scope: !788)
!807 = !DILocation(line: 15, column: 7, scope: !788)
!808 = !DILocation(line: 15, column: 10, scope: !788)
!809 = distinct !{!809, !803, !806, !810}
!810 = !{!"llvm.loop.mustprogress"}
!811 = !DILocation(line: 16, column: 10, scope: !788)
!812 = !DILocation(line: 16, column: 3, scope: !788)

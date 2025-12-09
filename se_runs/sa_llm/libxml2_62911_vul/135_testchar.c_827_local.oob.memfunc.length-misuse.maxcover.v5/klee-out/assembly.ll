; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/135_testchar.c_827_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/135_testchar.c_827_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque
%struct._xmlParserCtxt = type { %struct._xmlSAXHandler*, i8*, %struct._xmlDoc*, i32, i32, i8*, i8*, i32, i32, %struct._xmlParserInput*, i32, i32, %struct._xmlParserInput**, %struct._xmlNode*, i32, i32, %struct._xmlNode**, i32, %struct._xmlParserNodeInfoSeq, i32, i32, i32, i32, i32, i32, %struct._xmlValidCtxt, i32, i32, i8*, i8*, i32, i32, i8**, i64, i64, i32, i32, i32, i8*, i8*, i8*, i32*, i32, i32, i32*, i32, %struct._xmlParserInput*, i32, i32, i32, i32, i8*, i32, i32, i8*, i32, i32, %struct._xmlDict*, i8**, i32, i32, i8*, i8*, i8*, i32, i32, i32, i8**, i32*, %struct._xmlStartTag*, %struct._xmlHashTable*, %struct._xmlHashTable*, i32, i32, i32, i32, %struct._xmlNode*, i32, %struct._xmlAttr*, %struct._xmlError, i32, i64, i64, %struct._xmlParserNodeInfo*, i32, i32, %struct._xmlParserNodeInfo*, i32, i64 }
%struct._xmlSAXHandler = type { void (i8*, i8*, i8*, i8*)*, i32 (i8*)*, i32 (i8*)*, i32 (i8*)*, %struct._xmlParserInput* (i8*, i8*, i8*)*, %struct._xmlEntity* (i8*, i8*)*, void (i8*, i8*, i32, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i32, i32, i8*, %struct._xmlEnumeration*)*, void (i8*, i8*, i32, %struct._xmlElementContent*)*, void (i8*, i8*, i8*, i8*, i8*)*, void (i8*, %struct._xmlSAXLocator*)*, void (i8*)*, void (i8*)*, void (i8*, i8*, i8**)*, void (i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*, i32)*, void (i8*, i8*, i32)*, void (i8*, i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*, ...)*, void (i8*, i8*, ...)*, void (i8*, i8*, ...)*, %struct._xmlEntity* (i8*, i8*)*, void (i8*, i8*, i32)*, void (i8*, i8*, i8*, i8*)*, i32, i8*, void (i8*, i8*, i8*, i8*, i32, i8**, i32, i32, i8**)*, void (i8*, i8*, i8*, i8*)*, void (i8*, %struct._xmlError*)* }
%struct._xmlEnumeration = type { %struct._xmlEnumeration*, i8* }
%struct._xmlElementContent = type { i32, i32, i8*, %struct._xmlElementContent*, %struct._xmlElementContent*, %struct._xmlElementContent*, i8* }
%struct._xmlSAXLocator = type { i8* (i8*)*, i8* (i8*)*, i32 (i8*)*, i32 (i8*)* }
%struct._xmlEntity = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDtd*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i32, i32, i8*, i8*, %struct._xmlEntity*, i8*, i32, i32 }
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
%struct._xmlStartTag = type opaque
%struct._xmlHashTable = type opaque
%struct._xmlError = type { i32, i32, i8*, i32, i8*, i32, i8*, i8*, i8*, i32, i32, i8*, i8* }
%struct._xmlParserNodeInfo = type { %struct._xmlNode*, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"&#x3B1;\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"<?xml version=\221.0\22?>\0A<d>\00", align 1
@xmlFree = external global void (i8*)*, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"outSize\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/135_testchar.c_827_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !118 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca %struct._xmlParserCtxt*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._xmlNode*, align 8
  %8 = alloca [7008 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !122, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %3, metadata !227, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.declare(metadata i8** %4, metadata !691, metadata !DIExpression()), !dbg !692
  store i8* null, i8** %4, align 8, !dbg !692
  call void @llvm.dbg.declare(metadata i32* %5, metadata !693, metadata !DIExpression()), !dbg !694
  store i32 0, i32* %5, align 4, !dbg !694
  call void @llvm.dbg.declare(metadata i32* %6, metadata !695, metadata !DIExpression()), !dbg !696
  %11 = call %struct._xmlParserCtxt* @xmlNewParserCtxt(), !dbg !697
  store %struct._xmlParserCtxt* %11, %struct._xmlParserCtxt** %3, align 8, !dbg !698
  %12 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !699
  %13 = icmp eq %struct._xmlParserCtxt* %12, null, !dbg !701
  br i1 %13, label %14, label %15, !dbg !702

14:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !703
  br label %105, !dbg !703

15:                                               ; preds = %0
  %16 = call %struct._xmlDoc* @xmlNewDoc(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !705
  store %struct._xmlDoc* %16, %struct._xmlDoc** %2, align 8, !dbg !706
  %17 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !707
  %18 = icmp eq %struct._xmlDoc* %17, null, !dbg !709
  br i1 %18, label %19, label %21, !dbg !710

19:                                               ; preds = %15
  %20 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !711
  call void @xmlFreeParserCtxt(%struct._xmlParserCtxt* noundef %20), !dbg !713
  store i32 1, i32* %1, align 4, !dbg !714
  br label %105, !dbg !714

21:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %7, metadata !715, metadata !DIExpression()), !dbg !716
  %22 = call %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !717
  store %struct._xmlNode* %22, %struct._xmlNode** %7, align 8, !dbg !716
  %23 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !718
  %24 = icmp eq %struct._xmlNode* %23, null, !dbg !720
  br i1 %24, label %25, label %28, !dbg !721

25:                                               ; preds = %21
  %26 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !722
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %26), !dbg !724
  %27 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !725
  call void @xmlFreeParserCtxt(%struct._xmlParserCtxt* noundef %27), !dbg !726
  store i32 1, i32* %1, align 4, !dbg !727
  br label %105, !dbg !727

28:                                               ; preds = %21
  %29 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !728
  %30 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !729
  %31 = call %struct._xmlNode* @xmlDocSetRootElement(%struct._xmlDoc* noundef %29, %struct._xmlNode* noundef %30), !dbg !730
  call void @llvm.dbg.declare(metadata [7008 x i8]* %8, metadata !731, metadata !DIExpression()), !dbg !735
  store i32 0, i32* %6, align 4, !dbg !736
  br label %32, !dbg !738

32:                                               ; preds = %42, %28
  %33 = load i32, i32* %6, align 4, !dbg !739
  %34 = icmp slt i32 %33, 1001, !dbg !741
  br i1 %34, label %35, label %45, !dbg !742

35:                                               ; preds = %32
  %36 = getelementptr inbounds [7008 x i8], [7008 x i8]* %8, i64 0, i64 0, !dbg !743
  %37 = load i32, i32* %6, align 4, !dbg !745
  %38 = mul nsw i32 %37, 7, !dbg !746
  %39 = sext i32 %38 to i64, !dbg !747
  %40 = getelementptr inbounds i8, i8* %36, i64 %39, !dbg !747
  %41 = call i8* @memcpy(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 7), !dbg !748
  br label %42, !dbg !749

42:                                               ; preds = %35
  %43 = load i32, i32* %6, align 4, !dbg !750
  %44 = add nsw i32 %43, 1, !dbg !750
  store i32 %44, i32* %6, align 4, !dbg !750
  br label %32, !dbg !751, !llvm.loop !752

45:                                               ; preds = %32
  %46 = getelementptr inbounds [7008 x i8], [7008 x i8]* %8, i64 0, i64 7007, !dbg !755
  store i8 0, i8* %46, align 1, !dbg !756
  %47 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !757
  %48 = getelementptr inbounds [7008 x i8], [7008 x i8]* %8, i64 0, i64 0, !dbg !758
  call void @xmlNodeSetContent(%struct._xmlNode* noundef %47, i8* noundef %48), !dbg !759
  %49 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !760
  %50 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !761
  %51 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %50, i32 0, i32 2, !dbg !762
  store %struct._xmlDoc* %49, %struct._xmlDoc** %51, align 8, !dbg !763
  %52 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !764
  %53 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %52, i32 0, i32 2, !dbg !765
  %54 = load %struct._xmlDoc*, %struct._xmlDoc** %53, align 8, !dbg !765
  call void @xmlDocDumpMemory(%struct._xmlDoc* noundef %54, i8** noundef %4, i32* noundef %5), !dbg !766
  %55 = load i8*, i8** %4, align 8, !dbg !767
  %56 = call i32 @strncmp(i8* noundef %55, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 noundef 25) #7, !dbg !769
  %57 = icmp ne i32 %56, 0, !dbg !770
  br i1 %57, label %58, label %63, !dbg !771

58:                                               ; preds = %45
  %59 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !772
  %60 = load i8*, i8** %4, align 8, !dbg !774
  call void %59(i8* noundef %60), !dbg !772
  %61 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !775
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %61), !dbg !776
  %62 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !777
  call void @xmlFreeParserCtxt(%struct._xmlParserCtxt* noundef %62), !dbg !778
  store i32 1, i32* %1, align 4, !dbg !779
  br label %105, !dbg !779

63:                                               ; preds = %45
  call void @llvm.dbg.declare(metadata i32* %9, metadata !780, metadata !DIExpression()), !dbg !781
  %64 = bitcast i32* %9 to i8*, !dbg !782
  call void @klee_make_symbolic(i8* noundef %64, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)), !dbg !783
  %65 = load i32, i32* %9, align 4, !dbg !784
  %66 = icmp sge i32 %65, 25, !dbg !785
  %67 = zext i1 %66 to i32, !dbg !785
  %68 = sext i32 %67 to i64, !dbg !784
  call void @klee_assume(i64 noundef %68), !dbg !786
  %69 = load i32, i32* %9, align 4, !dbg !787
  %70 = load i32, i32* %5, align 4, !dbg !788
  %71 = icmp sle i32 %69, %70, !dbg !789
  %72 = zext i1 %71 to i32, !dbg !789
  %73 = sext i32 %72 to i64, !dbg !787
  call void @klee_assume(i64 noundef %73), !dbg !790
  call void @llvm.dbg.declare(metadata i32* %10, metadata !791, metadata !DIExpression()), !dbg !792
  %74 = bitcast i32* %10 to i8*, !dbg !793
  call void @klee_make_symbolic(i8* noundef %74, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)), !dbg !794
  %75 = load i32, i32* %10, align 4, !dbg !795
  %76 = icmp sge i32 %75, 25, !dbg !796
  %77 = zext i1 %76 to i32, !dbg !796
  %78 = sext i32 %77 to i64, !dbg !795
  call void @klee_assume(i64 noundef %78), !dbg !797
  %79 = load i32, i32* %10, align 4, !dbg !798
  %80 = icmp slt i32 %79, 7032, !dbg !799
  %81 = zext i1 %80 to i32, !dbg !799
  %82 = sext i32 %81 to i64, !dbg !798
  call void @klee_assume(i64 noundef %82), !dbg !800
  %83 = load i32, i32* %10, align 4, !dbg !801
  %84 = sub nsw i32 %83, 25, !dbg !802
  %85 = srem i32 %84, 7, !dbg !803
  %86 = icmp eq i32 %85, 0, !dbg !804
  %87 = zext i1 %86 to i32, !dbg !804
  %88 = sext i32 %87 to i64, !dbg !805
  call void @klee_assume(i64 noundef %88), !dbg !806
  %89 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.7, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !807
  %90 = load i32, i32* %10, align 4, !dbg !808
  %91 = add nsw i32 %90, 7, !dbg !810
  %92 = load i32, i32* %9, align 4, !dbg !811
  %93 = icmp sle i32 %91, %92, !dbg !812
  br i1 %93, label %94, label %100, !dbg !813

94:                                               ; preds = %63
  %95 = load i8*, i8** %4, align 8, !dbg !814
  %96 = load i32, i32* %10, align 4, !dbg !816
  %97 = sext i32 %96 to i64, !dbg !817
  %98 = getelementptr inbounds i8, i8* %95, i64 %97, !dbg !817
  %99 = call i32 @memcmp(i8* noundef %98, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 noundef 7) #7, !dbg !818
  br label %100, !dbg !819

100:                                              ; preds = %94, %63
  %101 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !820
  %102 = load i8*, i8** %4, align 8, !dbg !821
  call void %101(i8* noundef %102), !dbg !820
  %103 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !822
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %103), !dbg !823
  %104 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !824
  call void @xmlFreeParserCtxt(%struct._xmlParserCtxt* noundef %104), !dbg !825
  store i32 0, i32* %1, align 4, !dbg !826
  br label %105, !dbg !826

105:                                              ; preds = %100, %58, %25, %19, %14
  %106 = load i32, i32* %1, align 4, !dbg !827
  ret i32 %106, !dbg !827
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._xmlParserCtxt* @xmlNewParserCtxt() #2

declare %struct._xmlDoc* @xmlNewDoc(i8* noundef) #2

declare void @xmlFreeParserCtxt(%struct._xmlParserCtxt* noundef) #2

declare %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef, i8* noundef) #2

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare %struct._xmlNode* @xmlDocSetRootElement(%struct._xmlDoc* noundef, %struct._xmlNode* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare void @xmlNodeSetContent(%struct._xmlNode* noundef, i8* noundef) #2

declare void @xmlDocDumpMemory(%struct._xmlDoc* noundef, i8** noundef, i32* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #4

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @memcmp(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !828 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !836, metadata !DIExpression()), !dbg !837
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !838, metadata !DIExpression()), !dbg !839
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !840, metadata !DIExpression()), !dbg !841
  %10 = load i64, i64* %7, align 8, !dbg !842
  %11 = icmp ne i64 %10, 0, !dbg !844
  br i1 %11, label %12, label %39, !dbg !845

12:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i8** %8, metadata !846, metadata !DIExpression()), !dbg !848
  %13 = load i8*, i8** %5, align 8, !dbg !849
  store i8* %13, i8** %8, align 8, !dbg !848
  call void @llvm.dbg.declare(metadata i8** %9, metadata !850, metadata !DIExpression()), !dbg !851
  %14 = load i8*, i8** %6, align 8, !dbg !852
  store i8* %14, i8** %9, align 8, !dbg !851
  br label %15, !dbg !853

15:                                               ; preds = %35, %12
  %16 = load i8*, i8** %8, align 8, !dbg !854
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !854
  store i8* %17, i8** %8, align 8, !dbg !854
  %18 = load i8, i8* %16, align 1, !dbg !857
  %19 = zext i8 %18 to i32, !dbg !857
  %20 = load i8*, i8** %9, align 8, !dbg !858
  %21 = getelementptr inbounds i8, i8* %20, i32 1, !dbg !858
  store i8* %21, i8** %9, align 8, !dbg !858
  %22 = load i8, i8* %20, align 1, !dbg !859
  %23 = zext i8 %22 to i32, !dbg !859
  %24 = icmp ne i32 %19, %23, !dbg !860
  br i1 %24, label %25, label %35, !dbg !861

25:                                               ; preds = %15
  %26 = load i8*, i8** %8, align 8, !dbg !862
  %27 = getelementptr inbounds i8, i8* %26, i32 -1, !dbg !862
  store i8* %27, i8** %8, align 8, !dbg !862
  %28 = load i8, i8* %27, align 1, !dbg !864
  %29 = zext i8 %28 to i32, !dbg !864
  %30 = load i8*, i8** %9, align 8, !dbg !865
  %31 = getelementptr inbounds i8, i8* %30, i32 -1, !dbg !865
  store i8* %31, i8** %9, align 8, !dbg !865
  %32 = load i8, i8* %31, align 1, !dbg !866
  %33 = zext i8 %32 to i32, !dbg !866
  %34 = sub nsw i32 %29, %33, !dbg !867
  store i32 %34, i32* %4, align 4, !dbg !868
  br label %40, !dbg !868

35:                                               ; preds = %15
  %36 = load i64, i64* %7, align 8, !dbg !869
  %37 = add i64 %36, -1, !dbg !869
  store i64 %37, i64* %7, align 8, !dbg !869
  %38 = icmp ne i64 %37, 0, !dbg !870
  br i1 %38, label %15, label %39, !dbg !871, !llvm.loop !872

39:                                               ; preds = %35, %3
  store i32 0, i32* %4, align 4, !dbg !874
  br label %40, !dbg !874

40:                                               ; preds = %39, %25
  %41 = load i32, i32* %4, align 4, !dbg !875
  ret i32 %41, !dbg !875
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !876 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !880, metadata !DIExpression()), !dbg !881
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !882, metadata !DIExpression()), !dbg !883
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !884, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.declare(metadata i8** %7, metadata !886, metadata !DIExpression()), !dbg !887
  %9 = load i8*, i8** %4, align 8, !dbg !888
  store i8* %9, i8** %7, align 8, !dbg !887
  call void @llvm.dbg.declare(metadata i8** %8, metadata !889, metadata !DIExpression()), !dbg !890
  %10 = load i8*, i8** %5, align 8, !dbg !891
  store i8* %10, i8** %8, align 8, !dbg !890
  br label %11, !dbg !892

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !893
  %13 = add i64 %12, -1, !dbg !893
  store i64 %13, i64* %6, align 8, !dbg !893
  %14 = icmp ugt i64 %12, 0, !dbg !894
  br i1 %14, label %15, label %21, !dbg !892

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !895
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !895
  store i8* %17, i8** %8, align 8, !dbg !895
  %18 = load i8, i8* %16, align 1, !dbg !896
  %19 = load i8*, i8** %7, align 8, !dbg !897
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !897
  store i8* %20, i8** %7, align 8, !dbg !897
  store i8 %18, i8* %19, align 1, !dbg !898
  br label %11, !dbg !892, !llvm.loop !899

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !900
  ret i8* %22, !dbg !901
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !106, !108}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117, !117, !117}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !98, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/135_testchar.c_827_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "b2dc5eb98586762f489c2cb35d53af6f")
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
!98 = !{!99, !100, !104}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !102, line: 28, baseType: !103)
!102 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!103 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!106 = distinct !DICompileUnit(language: DW_LANG_C99, file: !107, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!107 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcmp.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6a01b8a9953e07eca8ec791434d4f8e8")
!108 = distinct !DICompileUnit(language: DW_LANG_C99, file: !109, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!109 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!110 = !{i32 7, !"Dwarf Version", i32 5}
!111 = !{i32 2, !"Debug Info Version", i32 3}
!112 = !{i32 1, !"wchar_size", i32 4}
!113 = !{i32 7, !"PIC Level", i32 2}
!114 = !{i32 7, !"PIE Level", i32 2}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"Ubuntu clang version 14.0.6"}
!118 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !119, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !121)
!119 = !DISubroutineType(types: !120)
!120 = !{!70}
!121 = !{}
!122 = !DILocalVariable(name: "doc", scope: !118, file: !1, line: 7, type: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !127)
!127 = !{!128, !129, !131, !132, !184, !185, !186, !187, !188, !189, !190, !191, !211, !212, !213, !214, !215, !216, !217, !218, !219, !223, !224, !225}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !126, file: !4, line: 560, baseType: !99, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !126, file: !4, line: 561, baseType: !130, size: 32, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !126, file: !4, line: 562, baseType: !104, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !126, file: !4, line: 563, baseType: !133, size: 64, offset: 192)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !135)
!135 = !{!136, !137, !138, !141, !142, !143, !144, !145, !146, !148, !161, !162, !179, !180, !181, !183}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !134, file: !4, line: 493, baseType: !99, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !134, file: !4, line: 494, baseType: !130, size: 32, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !134, file: !4, line: 495, baseType: !139, size: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !134, file: !4, line: 496, baseType: !133, size: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !134, file: !4, line: 497, baseType: !133, size: 64, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !134, file: !4, line: 498, baseType: !133, size: 64, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !134, file: !4, line: 499, baseType: !133, size: 64, offset: 384)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !134, file: !4, line: 500, baseType: !133, size: 64, offset: 448)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !134, file: !4, line: 501, baseType: !147, size: 64, offset: 512)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !134, file: !4, line: 504, baseType: !149, size: 64, offset: 576)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !152)
!152 = !{!153, !155, !157, !158, !159, !160}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !151, file: !4, line: 389, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !151, file: !4, line: 390, baseType: !156, size: 32, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !130)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !151, file: !4, line: 391, baseType: !139, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !151, file: !4, line: 392, baseType: !139, size: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !151, file: !4, line: 393, baseType: !99, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !151, file: !4, line: 394, baseType: !147, size: 64, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !134, file: !4, line: 505, baseType: !100, size: 64, offset: 640)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !134, file: !4, line: 506, baseType: !163, size: 64, offset: 704)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !165)
!165 = !{!166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !178}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !164, file: !4, line: 434, baseType: !99, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !164, file: !4, line: 435, baseType: !130, size: 32, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !164, file: !4, line: 436, baseType: !139, size: 64, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !164, file: !4, line: 437, baseType: !133, size: 64, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !164, file: !4, line: 438, baseType: !133, size: 64, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !164, file: !4, line: 439, baseType: !133, size: 64, offset: 320)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !164, file: !4, line: 440, baseType: !163, size: 64, offset: 384)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !164, file: !4, line: 441, baseType: !163, size: 64, offset: 448)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !164, file: !4, line: 442, baseType: !147, size: 64, offset: 512)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !164, file: !4, line: 443, baseType: !149, size: 64, offset: 576)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !164, file: !4, line: 444, baseType: !177, size: 32, offset: 640)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !164, file: !4, line: 445, baseType: !99, size: 64, offset: 704)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !134, file: !4, line: 507, baseType: !149, size: 64, offset: 768)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !134, file: !4, line: 508, baseType: !99, size: 64, offset: 832)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !134, file: !4, line: 509, baseType: !182, size: 16, offset: 896)
!182 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !134, file: !4, line: 510, baseType: !182, size: 16, offset: 912)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !126, file: !4, line: 564, baseType: !133, size: 64, offset: 256)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !126, file: !4, line: 565, baseType: !133, size: 64, offset: 320)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !126, file: !4, line: 566, baseType: !133, size: 64, offset: 384)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !126, file: !4, line: 567, baseType: !133, size: 64, offset: 448)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !126, file: !4, line: 568, baseType: !147, size: 64, offset: 512)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !126, file: !4, line: 571, baseType: !70, size: 32, offset: 576)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !126, file: !4, line: 572, baseType: !70, size: 32, offset: 608)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !126, file: !4, line: 578, baseType: !192, size: 64, offset: 640)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !194)
!194 = !{!195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !193, file: !4, line: 406, baseType: !99, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !193, file: !4, line: 407, baseType: !130, size: 32, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !193, file: !4, line: 408, baseType: !139, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !193, file: !4, line: 409, baseType: !133, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !193, file: !4, line: 410, baseType: !133, size: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !193, file: !4, line: 411, baseType: !147, size: 64, offset: 320)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !193, file: !4, line: 412, baseType: !133, size: 64, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !193, file: !4, line: 413, baseType: !133, size: 64, offset: 448)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !193, file: !4, line: 414, baseType: !147, size: 64, offset: 512)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !193, file: !4, line: 417, baseType: !99, size: 64, offset: 576)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !193, file: !4, line: 418, baseType: !99, size: 64, offset: 640)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !193, file: !4, line: 419, baseType: !99, size: 64, offset: 704)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !193, file: !4, line: 420, baseType: !99, size: 64, offset: 768)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !193, file: !4, line: 421, baseType: !139, size: 64, offset: 832)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !193, file: !4, line: 422, baseType: !139, size: 64, offset: 896)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !193, file: !4, line: 423, baseType: !99, size: 64, offset: 960)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !126, file: !4, line: 579, baseType: !192, size: 64, offset: 704)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !126, file: !4, line: 580, baseType: !154, size: 64, offset: 768)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !126, file: !4, line: 581, baseType: !139, size: 64, offset: 832)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !126, file: !4, line: 582, baseType: !139, size: 64, offset: 896)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !126, file: !4, line: 583, baseType: !99, size: 64, offset: 960)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !126, file: !4, line: 584, baseType: !99, size: 64, offset: 1024)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !126, file: !4, line: 585, baseType: !139, size: 64, offset: 1088)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !126, file: !4, line: 586, baseType: !70, size: 32, offset: 1152)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !126, file: !4, line: 588, baseType: !220, size: 64, offset: 1216)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !222, line: 24, flags: DIFlagFwdDecl)
!222 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!223 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !126, file: !4, line: 589, baseType: !99, size: 64, offset: 1280)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !126, file: !4, line: 590, baseType: !70, size: 32, offset: 1344)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !126, file: !4, line: 592, baseType: !70, size: 32, offset: 1376)
!226 = !DILocation(line: 7, column: 15, scope: !118)
!227 = !DILocalVariable(name: "ctxt", scope: !118, file: !1, line: 8, type: !228)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxtPtr", file: !4, line: 39, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !4, line: 38, baseType: !231)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !69, line: 186, size: 6016, elements: !232)
!232 = !{!233, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !542, !546, !547, !548, !550, !551, !569, !570, !571, !572, !573, !574, !575, !610, !612, !613, !614, !615, !616, !617, !618, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !662, !668, !669, !670, !671, !672, !673, !674, !675, !679, !680, !682, !683, !684, !685, !686, !687, !688, !689}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "sax", scope: !231, file: !69, line: 187, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXHandler", file: !69, line: 721, size: 2048, elements: !236)
!236 = !{!237, !242, !247, !249, !251, !354, !385, !390, !392, !405, !425, !430, !447, !452, !454, !460, !465, !467, !472, !474, !479, !481, !486, !488, !490, !492, !494, !496, !497, !498, !503, !505}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "internalSubset", scope: !235, file: !69, line: 722, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "internalSubsetSAXFunc", file: !69, line: 364, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{null, !99, !139, !139, !139}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "isStandalone", scope: !235, file: !69, line: 723, baseType: !243, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "isStandaloneSAXFunc", file: !69, line: 642, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!70, !99}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "hasInternalSubset", scope: !235, file: !69, line: 724, baseType: !248, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "hasInternalSubsetSAXFunc", file: !69, line: 651, baseType: !244)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "hasExternalSubset", scope: !235, file: !69, line: 725, baseType: !250, size: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "hasExternalSubsetSAXFunc", file: !69, line: 661, baseType: !244)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "resolveEntity", scope: !235, file: !69, line: 726, baseType: !252, size: 64, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "resolveEntitySAXFunc", file: !69, line: 352, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!256, !99, !139, !139}
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputPtr", file: !4, line: 36, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInput", file: !4, line: 35, baseType: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInput", file: !69, line: 54, size: 832, elements: !260)
!260 = !{!261, !334, !337, !338, !339, !340, !341, !342, !343, !344, !345, !350, !351, !352, !353}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !259, file: !69, line: 56, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputBufferPtr", file: !4, line: 29, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputBuffer", file: !4, line: 28, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInputBuffer", file: !266, line: 125, size: 512, elements: !267)
!266 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlIO.h", directory: "", checksumkind: CSK_MD5, checksum: "a868e7a396360b2f16d10eac4a34669c")
!267 = !{!268, !269, !274, !276, !324, !329, !330, !331, !332}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !265, file: !266, line: 126, baseType: !99, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "readcallback", scope: !265, file: !266, line: 127, baseType: !270, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlInputReadCallback", file: !266, line: 54, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!70, !99, !104, !70}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "closecallback", scope: !265, file: !266, line: 128, baseType: !275, size: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlInputCloseCallback", file: !266, line: 63, baseType: !244)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !265, file: !266, line: 130, baseType: !277, size: 64, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandlerPtr", file: !278, line: 145, baseType: !279)
!278 = !DIFile(filename: "/usr/include/libxml2/libxml/encoding.h", directory: "", checksumkind: CSK_MD5, checksum: "807b84fade38abad3ae0d9b6af714dbc")
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandler", file: !278, line: 144, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlCharEncodingHandler", file: !278, line: 146, size: 448, elements: !282)
!282 = !{!283, !284, !293, !295, !298, !299, !323}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !281, file: !278, line: 147, baseType: !104, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !281, file: !278, line: 148, baseType: !285, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingInputFunc", file: !278, line: 101, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!70, !289, !290, !291, !290}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !281, file: !278, line: 149, baseType: !294, size: 64, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingOutputFunc", file: !278, line: 123, baseType: !286)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_in", scope: !281, file: !278, line: 151, baseType: !296, size: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !297, line: 29, baseType: !99)
!297 = !DIFile(filename: "/usr/include/iconv.h", directory: "", checksumkind: CSK_MD5, checksum: "edfee9bcfa398c9184cc8f95deb97c16")
!298 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_out", scope: !281, file: !278, line: 152, baseType: !296, size: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_in", scope: !281, file: !278, line: 155, baseType: !300, size: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "uconv_t", file: !278, line: 141, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_uconv_t", file: !278, line: 134, size: 16640, elements: !303)
!303 = !{!304, !309, !310, !320, !322}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "uconv", scope: !302, file: !278, line: 135, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "UConverter", file: !307, line: 96, baseType: !308)
!307 = !DIFile(filename: "/usr/include/unicode/ucnv_err.h", directory: "", checksumkind: CSK_MD5, checksum: "a507bbb125e54d860485ec054a4a55ed")
!308 = !DICompositeType(tag: DW_TAG_structure_type, name: "UConverter", file: !307, line: 93, flags: DIFlagFwdDecl)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !302, file: !278, line: 136, baseType: !305, size: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_buf", scope: !302, file: !278, line: 137, baseType: !311, size: 16384, offset: 128)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 16384, elements: !318)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "UChar", file: !313, line: 388, baseType: !314)
!313 = !DIFile(filename: "/usr/include/unicode/umachine.h", directory: "", checksumkind: CSK_MD5, checksum: "2d902ff00eac765b305cb113b74d34df")
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !315, line: 25, baseType: !316)
!315 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !317, line: 40, baseType: !182)
!317 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!318 = !{!319}
!319 = !DISubrange(count: 1024)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_source", scope: !302, file: !278, line: 138, baseType: !321, size: 64, offset: 16512)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_target", scope: !302, file: !278, line: 139, baseType: !321, size: 64, offset: 16576)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_out", scope: !281, file: !278, line: 156, baseType: !300, size: 64, offset: 384)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !265, file: !266, line: 132, baseType: !325, size: 64, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufPtr", file: !4, line: 114, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !4, line: 105, baseType: !328)
!328 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !4, line: 105, flags: DIFlagFwdDecl)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !265, file: !266, line: 133, baseType: !325, size: 64, offset: 320)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "compressed", scope: !265, file: !266, line: 134, baseType: !70, size: 32, offset: 384)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !265, file: !266, line: 135, baseType: !70, size: 32, offset: 416)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "rawconsumed", scope: !265, file: !266, line: 136, baseType: !333, size: 64, offset: 448)
!333 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !259, file: !69, line: 58, baseType: !335, size: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !259, file: !69, line: 59, baseType: !335, size: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !259, file: !69, line: 60, baseType: !139, size: 64, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !259, file: !69, line: 61, baseType: !139, size: 64, offset: 256)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !259, file: !69, line: 62, baseType: !139, size: 64, offset: 320)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !259, file: !69, line: 63, baseType: !70, size: 32, offset: 384)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !259, file: !69, line: 64, baseType: !70, size: 32, offset: 416)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !259, file: !69, line: 65, baseType: !70, size: 32, offset: 448)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "consumed", scope: !259, file: !69, line: 71, baseType: !333, size: 64, offset: 512)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !259, file: !69, line: 72, baseType: !346, size: 64, offset: 576)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputDeallocate", file: !69, line: 52, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !100}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !259, file: !69, line: 73, baseType: !139, size: 64, offset: 640)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !259, file: !69, line: 74, baseType: !139, size: 64, offset: 704)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !259, file: !69, line: 75, baseType: !70, size: 32, offset: 768)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !259, file: !69, line: 76, baseType: !70, size: 32, offset: 800)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "getEntity", scope: !235, file: !69, line: 727, baseType: !355, size: 64, offset: 320)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "getEntitySAXFunc", file: !69, line: 390, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{!359, !99, !139}
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntityPtr", file: !4, line: 49, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntity", file: !4, line: 48, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEntity", file: !41, line: 38, size: 1088, elements: !363)
!363 = !{!364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !378, !379, !380, !382, !383, !384}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !362, file: !41, line: 39, baseType: !99, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !362, file: !41, line: 40, baseType: !130, size: 32, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !362, file: !41, line: 41, baseType: !139, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !362, file: !41, line: 42, baseType: !133, size: 64, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !362, file: !41, line: 43, baseType: !133, size: 64, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !362, file: !41, line: 44, baseType: !192, size: 64, offset: 320)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !362, file: !41, line: 45, baseType: !133, size: 64, offset: 384)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !362, file: !41, line: 46, baseType: !133, size: 64, offset: 448)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !362, file: !41, line: 47, baseType: !147, size: 64, offset: 512)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !362, file: !41, line: 49, baseType: !100, size: 64, offset: 576)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !362, file: !41, line: 50, baseType: !100, size: 64, offset: 640)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !362, file: !41, line: 51, baseType: !70, size: 32, offset: 704)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "etype", scope: !362, file: !41, line: 52, baseType: !377, size: 32, offset: 736)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntityType", file: !41, line: 31, baseType: !40)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !362, file: !41, line: 53, baseType: !139, size: 64, offset: 768)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !362, file: !41, line: 54, baseType: !139, size: 64, offset: 832)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "nexte", scope: !362, file: !41, line: 56, baseType: !381, size: 64, offset: 896)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "URI", scope: !362, file: !41, line: 57, baseType: !139, size: 64, offset: 960)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !362, file: !41, line: 58, baseType: !70, size: 32, offset: 1024)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "checked", scope: !362, file: !41, line: 59, baseType: !70, size: 32, offset: 1056)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "entityDecl", scope: !235, file: !69, line: 728, baseType: !386, size: 64, offset: 384)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "entityDeclSAXFunc", file: !69, line: 414, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !99, !139, !70, !139, !139, !100}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "notationDecl", scope: !235, file: !69, line: 729, baseType: !391, size: 64, offset: 448)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "notationDeclSAXFunc", file: !69, line: 429, baseType: !239)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "attributeDecl", scope: !235, file: !69, line: 730, baseType: !393, size: 64, offset: 512)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "attributeDeclSAXFunc", file: !69, line: 445, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !99, !139, !139, !70, !70, !139, !397}
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEnumerationPtr", file: !4, line: 239, baseType: !398)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEnumeration", file: !4, line: 238, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEnumeration", file: !4, line: 240, size: 128, elements: !401)
!401 = !{!402, !404}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !400, file: !4, line: 241, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !400, file: !4, line: 242, baseType: !139, size: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "elementDecl", scope: !235, file: !69, line: 731, baseType: !406, size: 64, offset: 576)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "elementDeclSAXFunc", file: !69, line: 461, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !99, !139, !70, !410}
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentPtr", file: !4, line: 305, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContent", file: !4, line: 304, baseType: !413)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlElementContent", file: !4, line: 306, size: 384, elements: !414)
!414 = !{!415, !417, !419, !420, !422, !423, !424}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !413, file: !4, line: 307, baseType: !416, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentType", file: !4, line: 283, baseType: !49)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "ocur", scope: !413, file: !4, line: 308, baseType: !418, size: 32, offset: 32)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentOccur", file: !4, line: 295, baseType: !55)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !413, file: !4, line: 309, baseType: !139, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !413, file: !4, line: 310, baseType: !421, size: 64, offset: 128)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !413, file: !4, line: 311, baseType: !421, size: 64, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !413, file: !4, line: 312, baseType: !421, size: 64, offset: 256)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !413, file: !4, line: 313, baseType: !139, size: 64, offset: 320)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "unparsedEntityDecl", scope: !235, file: !69, line: 732, baseType: !426, size: 64, offset: 640)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "unparsedEntityDeclSAXFunc", file: !69, line: 475, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !99, !139, !139, !139, !139}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "setDocumentLocator", scope: !235, file: !69, line: 733, baseType: !431, size: 64, offset: 704)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "setDocumentLocatorSAXFunc", file: !69, line: 488, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !99, !435}
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXLocatorPtr", file: !4, line: 42, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXLocator", file: !4, line: 41, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXLocator", file: !69, line: 323, size: 256, elements: !439)
!439 = !{!440, !444, !445, !446}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "getPublicId", scope: !438, file: !69, line: 324, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!139, !99}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "getSystemId", scope: !438, file: !69, line: 325, baseType: !441, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "getLineNumber", scope: !438, file: !69, line: 326, baseType: !244, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "getColumnNumber", scope: !438, file: !69, line: 327, baseType: !244, size: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "startDocument", scope: !235, file: !69, line: 734, baseType: !448, size: 64, offset: 768)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "startDocumentSAXFunc", file: !69, line: 496, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !99}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "endDocument", scope: !235, file: !69, line: 735, baseType: !453, size: 64, offset: 832)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "endDocumentSAXFunc", file: !69, line: 503, baseType: !449)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "startElement", scope: !235, file: !69, line: 736, baseType: !455, size: 64, offset: 896)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "startElementSAXFunc", file: !69, line: 512, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !99, !139, !459}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "endElement", scope: !235, file: !69, line: 737, baseType: !461, size: 64, offset: 960)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "endElementSAXFunc", file: !69, line: 522, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !99, !139}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !235, file: !69, line: 738, baseType: !466, size: 64, offset: 1024)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "referenceSAXFunc", file: !69, line: 545, baseType: !462)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "characters", scope: !235, file: !69, line: 739, baseType: !468, size: 64, offset: 1088)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "charactersSAXFunc", file: !69, line: 555, baseType: !469)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !99, !139, !70}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "ignorableWhitespace", scope: !235, file: !69, line: 740, baseType: !473, size: 64, offset: 1152)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "ignorableWhitespaceSAXFunc", file: !69, line: 567, baseType: !469)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "processingInstruction", scope: !235, file: !69, line: 741, baseType: !475, size: 64, offset: 1216)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "processingInstructionSAXFunc", file: !69, line: 578, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !99, !139, !139}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !235, file: !69, line: 742, baseType: !480, size: 64, offset: 1280)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "commentSAXFunc", file: !69, line: 588, baseType: !462)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "warning", scope: !235, file: !69, line: 743, baseType: !482, size: 64, offset: 1344)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "warningSAXFunc", file: !69, line: 610, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{null, !99, !335, null}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !235, file: !69, line: 744, baseType: !487, size: 64, offset: 1408)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "errorSAXFunc", file: !69, line: 620, baseType: !483)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "fatalError", scope: !235, file: !69, line: 745, baseType: !489, size: 64, offset: 1472)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "fatalErrorSAXFunc", file: !69, line: 632, baseType: !483)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "getParameterEntity", scope: !235, file: !69, line: 746, baseType: !491, size: 64, offset: 1536)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "getParameterEntitySAXFunc", file: !69, line: 401, baseType: !356)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "cdataBlock", scope: !235, file: !69, line: 747, baseType: !493, size: 64, offset: 1600)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "cdataBlockSAXFunc", file: !69, line: 598, baseType: !469)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "externalSubset", scope: !235, file: !69, line: 748, baseType: !495, size: 64, offset: 1664)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "externalSubsetSAXFunc", file: !69, line: 377, baseType: !239)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !235, file: !69, line: 749, baseType: !5, size: 32, offset: 1728)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !235, file: !69, line: 751, baseType: !99, size: 64, offset: 1792)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "startElementNs", scope: !235, file: !69, line: 752, baseType: !499, size: 64, offset: 1856)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "startElementNsSAX2Func", file: !69, line: 694, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !99, !139, !139, !139, !70, !459, !70, !70, !459}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "endElementNs", scope: !235, file: !69, line: 753, baseType: !504, size: 64, offset: 1920)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "endElementNsSAX2Func", file: !69, line: 715, baseType: !239)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "serror", scope: !235, file: !69, line: 754, baseType: !506, size: 64, offset: 1984)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStructuredErrorFunc", file: !62, line: 856, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !99, !510}
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorPtr", file: !62, line: 77, baseType: !511)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlError", file: !62, line: 76, baseType: !513)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlError", file: !62, line: 78, size: 704, elements: !514)
!514 = !{!515, !516, !517, !518, !520, !521, !522, !523, !524, !525, !526, !527, !528}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !513, file: !62, line: 79, baseType: !70, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !513, file: !62, line: 80, baseType: !70, size: 32, offset: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !513, file: !62, line: 81, baseType: !104, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !513, file: !62, line: 82, baseType: !519, size: 32, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorLevel", file: !62, line: 29, baseType: !61)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !513, file: !62, line: 83, baseType: !104, size: 64, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !513, file: !62, line: 84, baseType: !70, size: 32, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "str1", scope: !513, file: !62, line: 85, baseType: !104, size: 64, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "str2", scope: !513, file: !62, line: 86, baseType: !104, size: 64, offset: 384)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "str3", scope: !513, file: !62, line: 87, baseType: !104, size: 64, offset: 448)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "int1", scope: !513, file: !62, line: 88, baseType: !70, size: 32, offset: 512)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "int2", scope: !513, file: !62, line: 89, baseType: !70, size: 32, offset: 544)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ctxt", scope: !513, file: !62, line: 90, baseType: !99, size: 64, offset: 576)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !513, file: !62, line: 91, baseType: !99, size: 64, offset: 640)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !231, file: !69, line: 188, baseType: !99, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "myDoc", scope: !231, file: !69, line: 189, baseType: !123, size: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "wellFormed", scope: !231, file: !69, line: 190, baseType: !70, size: 32, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "replaceEntities", scope: !231, file: !69, line: 191, baseType: !70, size: 32, offset: 224)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !231, file: !69, line: 192, baseType: !139, size: 64, offset: 256)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !231, file: !69, line: 193, baseType: !139, size: 64, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !231, file: !69, line: 194, baseType: !70, size: 32, offset: 384)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "html", scope: !231, file: !69, line: 195, baseType: !70, size: 32, offset: 416)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !231, file: !69, line: 201, baseType: !256, size: 64, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "inputNr", scope: !231, file: !69, line: 202, baseType: !70, size: 32, offset: 512)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "inputMax", scope: !231, file: !69, line: 203, baseType: !70, size: 32, offset: 544)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "inputTab", scope: !231, file: !69, line: 204, baseType: !541, size: 64, offset: 576)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !231, file: !69, line: 207, baseType: !543, size: 64, offset: 640)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !134)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !231, file: !69, line: 208, baseType: !70, size: 32, offset: 704)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !231, file: !69, line: 209, baseType: !70, size: 32, offset: 736)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !231, file: !69, line: 210, baseType: !549, size: 64, offset: 768)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "record_info", scope: !231, file: !69, line: 212, baseType: !70, size: 32, offset: 832)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "node_seq", scope: !231, file: !69, line: 213, baseType: !552, size: 192, offset: 896)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserNodeInfoSeq", file: !69, line: 98, baseType: !553)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserNodeInfoSeq", file: !69, line: 100, size: 192, elements: !554)
!554 = !{!555, !556, !557}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !553, file: !69, line: 101, baseType: !333, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !553, file: !69, line: 102, baseType: !333, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !553, file: !69, line: 103, baseType: !558, size: 64, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserNodeInfo", file: !69, line: 86, baseType: !560)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserNodeInfo", file: !69, line: 89, size: 320, elements: !561)
!561 = !{!562, !565, !566, !567, !568}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !560, file: !69, line: 90, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "begin_pos", scope: !560, file: !69, line: 92, baseType: !333, size: 64, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "begin_line", scope: !560, file: !69, line: 93, baseType: !333, size: 64, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "end_pos", scope: !560, file: !69, line: 94, baseType: !333, size: 64, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !560, file: !69, line: 95, baseType: !333, size: 64, offset: 256)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "errNo", scope: !231, file: !69, line: 215, baseType: !70, size: 32, offset: 1088)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "hasExternalSubset", scope: !231, file: !69, line: 217, baseType: !70, size: 32, offset: 1120)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "hasPErefs", scope: !231, file: !69, line: 218, baseType: !70, size: 32, offset: 1152)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "external", scope: !231, file: !69, line: 219, baseType: !70, size: 32, offset: 1184)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !231, file: !69, line: 221, baseType: !70, size: 32, offset: 1216)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !231, file: !69, line: 222, baseType: !70, size: 32, offset: 1248)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "vctxt", scope: !231, file: !69, line: 223, baseType: !576, size: 896, offset: 1280)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidCtxt", file: !577, line: 80, baseType: !578)
!577 = !DIFile(filename: "/usr/include/libxml2/libxml/valid.h", directory: "", checksumkind: CSK_MD5, checksum: "3c082c0a5b81e1bc9fd9a21b69014584")
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlValidCtxt", file: !577, line: 82, size: 896, elements: !579)
!579 = !{!580, !581, !583, !585, !586, !587, !588, !589, !590, !591, !592, !596, !597, !598, !599, !605}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !578, file: !577, line: 83, baseType: !99, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !578, file: !577, line: 84, baseType: !582, size: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidityErrorFunc", file: !577, line: 42, baseType: !483)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "warning", scope: !578, file: !577, line: 85, baseType: !584, size: 64, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidityWarningFunc", file: !577, line: 57, baseType: !483)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !578, file: !577, line: 88, baseType: !543, size: 64, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !578, file: !577, line: 89, baseType: !70, size: 32, offset: 256)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !578, file: !577, line: 90, baseType: !70, size: 32, offset: 288)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !578, file: !577, line: 91, baseType: !549, size: 64, offset: 320)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "finishDtd", scope: !578, file: !577, line: 93, baseType: !5, size: 32, offset: 384)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !578, file: !577, line: 94, baseType: !123, size: 64, offset: 448)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !578, file: !577, line: 95, baseType: !70, size: 32, offset: 512)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "vstate", scope: !578, file: !577, line: 98, baseType: !593, size: 64, offset: 576)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidState", file: !577, line: 28, baseType: !595)
!595 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlValidState", file: !577, line: 28, flags: DIFlagFwdDecl)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "vstateNr", scope: !578, file: !577, line: 99, baseType: !70, size: 32, offset: 640)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "vstateMax", scope: !578, file: !577, line: 100, baseType: !70, size: 32, offset: 672)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "vstateTab", scope: !578, file: !577, line: 101, baseType: !593, size: 64, offset: 704)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "am", scope: !578, file: !577, line: 104, baseType: !600, size: 64, offset: 768)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAutomataPtr", file: !601, line: 30, baseType: !602)
!601 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlautomata.h", directory: "", checksumkind: CSK_MD5, checksum: "3c3c0a7d353bacfbede7c2decf27e62a")
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAutomata", file: !601, line: 29, baseType: !604)
!604 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAutomata", file: !601, line: 29, flags: DIFlagFwdDecl)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !578, file: !577, line: 105, baseType: !606, size: 64, offset: 832)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAutomataStatePtr", file: !601, line: 38, baseType: !607)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAutomataState", file: !601, line: 37, baseType: !609)
!609 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAutomataState", file: !601, line: 37, flags: DIFlagFwdDecl)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !231, file: !69, line: 225, baseType: !611, size: 32, offset: 2176)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputState", file: !69, line: 131, baseType: !68)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !231, file: !69, line: 226, baseType: !70, size: 32, offset: 2208)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !231, file: !69, line: 228, baseType: !104, size: 64, offset: 2240)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !231, file: !69, line: 231, baseType: !139, size: 64, offset: 2304)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "nameNr", scope: !231, file: !69, line: 232, baseType: !70, size: 32, offset: 2368)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "nameMax", scope: !231, file: !69, line: 233, baseType: !70, size: 32, offset: 2400)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "nameTab", scope: !231, file: !69, line: 234, baseType: !459, size: 64, offset: 2432)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "nbChars", scope: !231, file: !69, line: 236, baseType: !619, size: 64, offset: 2496)
!619 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "checkIndex", scope: !231, file: !69, line: 237, baseType: !619, size: 64, offset: 2560)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "keepBlanks", scope: !231, file: !69, line: 238, baseType: !70, size: 32, offset: 2624)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "disableSAX", scope: !231, file: !69, line: 239, baseType: !70, size: 32, offset: 2656)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "inSubset", scope: !231, file: !69, line: 240, baseType: !70, size: 32, offset: 2688)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "intSubName", scope: !231, file: !69, line: 241, baseType: !139, size: 64, offset: 2752)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "extSubURI", scope: !231, file: !69, line: 242, baseType: !100, size: 64, offset: 2816)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "extSubSystem", scope: !231, file: !69, line: 243, baseType: !100, size: 64, offset: 2880)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !231, file: !69, line: 246, baseType: !290, size: 64, offset: 2944)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "spaceNr", scope: !231, file: !69, line: 247, baseType: !70, size: 32, offset: 3008)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "spaceMax", scope: !231, file: !69, line: 248, baseType: !70, size: 32, offset: 3040)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "spaceTab", scope: !231, file: !69, line: 249, baseType: !290, size: 64, offset: 3072)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !231, file: !69, line: 251, baseType: !70, size: 32, offset: 3136)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !231, file: !69, line: 252, baseType: !256, size: 64, offset: 3200)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !231, file: !69, line: 253, baseType: !70, size: 32, offset: 3264)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "nodelen", scope: !231, file: !69, line: 255, baseType: !70, size: 32, offset: 3296)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "nodemem", scope: !231, file: !69, line: 256, baseType: !70, size: 32, offset: 3328)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "pedantic", scope: !231, file: !69, line: 257, baseType: !70, size: 32, offset: 3360)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !231, file: !69, line: 258, baseType: !99, size: 64, offset: 3392)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "loadsubset", scope: !231, file: !69, line: 260, baseType: !70, size: 32, offset: 3456)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "linenumbers", scope: !231, file: !69, line: 261, baseType: !70, size: 32, offset: 3488)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "catalogs", scope: !231, file: !69, line: 262, baseType: !99, size: 64, offset: 3520)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "recovery", scope: !231, file: !69, line: 263, baseType: !70, size: 32, offset: 3584)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "progressive", scope: !231, file: !69, line: 264, baseType: !70, size: 32, offset: 3616)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !231, file: !69, line: 265, baseType: !644, size: 64, offset: 3648)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !222, line: 25, baseType: !645)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !222, line: 24, baseType: !221)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "atts", scope: !231, file: !69, line: 266, baseType: !459, size: 64, offset: 3712)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "maxatts", scope: !231, file: !69, line: 267, baseType: !70, size: 32, offset: 3776)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "docdict", scope: !231, file: !69, line: 268, baseType: !70, size: 32, offset: 3808)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "str_xml", scope: !231, file: !69, line: 273, baseType: !139, size: 64, offset: 3840)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "str_xmlns", scope: !231, file: !69, line: 274, baseType: !139, size: 64, offset: 3904)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "str_xml_ns", scope: !231, file: !69, line: 275, baseType: !139, size: 64, offset: 3968)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "sax2", scope: !231, file: !69, line: 280, baseType: !70, size: 32, offset: 4032)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "nsNr", scope: !231, file: !69, line: 281, baseType: !70, size: 32, offset: 4064)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "nsMax", scope: !231, file: !69, line: 282, baseType: !70, size: 32, offset: 4096)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "nsTab", scope: !231, file: !69, line: 283, baseType: !459, size: 64, offset: 4160)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "attallocs", scope: !231, file: !69, line: 284, baseType: !290, size: 64, offset: 4224)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "pushTab", scope: !231, file: !69, line: 285, baseType: !659, size: 64, offset: 4288)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStartTag", file: !69, line: 172, baseType: !661)
!661 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlStartTag", file: !69, line: 172, flags: DIFlagFwdDecl)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "attsDefault", scope: !231, file: !69, line: 286, baseType: !663, size: 64, offset: 4352)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !664, line: 22, baseType: !665)
!664 = !DIFile(filename: "/usr/include/libxml2/libxml/hash.h", directory: "", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !664, line: 21, baseType: !667)
!667 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !664, line: 21, flags: DIFlagFwdDecl)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "attsSpecial", scope: !231, file: !69, line: 287, baseType: !663, size: 64, offset: 4416)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "nsWellFormed", scope: !231, file: !69, line: 288, baseType: !70, size: 32, offset: 4480)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !231, file: !69, line: 289, baseType: !70, size: 32, offset: 4512)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "dictNames", scope: !231, file: !69, line: 294, baseType: !70, size: 32, offset: 4544)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "freeElemsNr", scope: !231, file: !69, line: 295, baseType: !70, size: 32, offset: 4576)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "freeElems", scope: !231, file: !69, line: 296, baseType: !543, size: 64, offset: 4608)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "freeAttrsNr", scope: !231, file: !69, line: 297, baseType: !70, size: 32, offset: 4672)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "freeAttrs", scope: !231, file: !69, line: 298, baseType: !676, size: 64, offset: 4736)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttrPtr", file: !4, line: 432, baseType: !677)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttr", file: !4, line: 431, baseType: !164)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "lastError", scope: !231, file: !69, line: 303, baseType: !512, size: 704, offset: 4800)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "parseMode", scope: !231, file: !69, line: 304, baseType: !681, size: 32, offset: 5504)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserMode", file: !69, line: 170, baseType: !90)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "nbentities", scope: !231, file: !69, line: 305, baseType: !333, size: 64, offset: 5568)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "sizeentities", scope: !231, file: !69, line: 306, baseType: !333, size: 64, offset: 5632)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfo", scope: !231, file: !69, line: 309, baseType: !558, size: 64, offset: 5696)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfoNr", scope: !231, file: !69, line: 310, baseType: !70, size: 32, offset: 5760)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfoMax", scope: !231, file: !69, line: 311, baseType: !70, size: 32, offset: 5792)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfoTab", scope: !231, file: !69, line: 312, baseType: !558, size: 64, offset: 5824)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "input_id", scope: !231, file: !69, line: 314, baseType: !70, size: 32, offset: 5888)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "sizeentcopy", scope: !231, file: !69, line: 315, baseType: !333, size: 64, offset: 5952)
!690 = !DILocation(line: 8, column: 22, scope: !118)
!691 = !DILocalVariable(name: "out", scope: !118, file: !1, line: 9, type: !100)
!692 = !DILocation(line: 9, column: 14, scope: !118)
!693 = !DILocalVariable(name: "outSize", scope: !118, file: !1, line: 10, type: !70)
!694 = !DILocation(line: 10, column: 9, scope: !118)
!695 = !DILocalVariable(name: "i", scope: !118, file: !1, line: 11, type: !70)
!696 = !DILocation(line: 11, column: 9, scope: !118)
!697 = !DILocation(line: 14, column: 12, scope: !118)
!698 = !DILocation(line: 14, column: 10, scope: !118)
!699 = !DILocation(line: 15, column: 9, scope: !700)
!700 = distinct !DILexicalBlock(scope: !118, file: !1, line: 15, column: 9)
!701 = !DILocation(line: 15, column: 14, scope: !700)
!702 = !DILocation(line: 15, column: 9, scope: !118)
!703 = !DILocation(line: 16, column: 9, scope: !704)
!704 = distinct !DILexicalBlock(scope: !700, file: !1, line: 15, column: 23)
!705 = !DILocation(line: 20, column: 11, scope: !118)
!706 = !DILocation(line: 20, column: 9, scope: !118)
!707 = !DILocation(line: 21, column: 9, scope: !708)
!708 = distinct !DILexicalBlock(scope: !118, file: !1, line: 21, column: 9)
!709 = !DILocation(line: 21, column: 13, scope: !708)
!710 = !DILocation(line: 21, column: 9, scope: !118)
!711 = !DILocation(line: 22, column: 27, scope: !712)
!712 = distinct !DILexicalBlock(scope: !708, file: !1, line: 21, column: 22)
!713 = !DILocation(line: 22, column: 9, scope: !712)
!714 = !DILocation(line: 23, column: 9, scope: !712)
!715 = !DILocalVariable(name: "root", scope: !118, file: !1, line: 27, type: !543)
!716 = !DILocation(line: 27, column: 16, scope: !118)
!717 = !DILocation(line: 27, column: 23, scope: !118)
!718 = !DILocation(line: 28, column: 9, scope: !719)
!719 = distinct !DILexicalBlock(scope: !118, file: !1, line: 28, column: 9)
!720 = !DILocation(line: 28, column: 14, scope: !719)
!721 = !DILocation(line: 28, column: 9, scope: !118)
!722 = !DILocation(line: 29, column: 20, scope: !723)
!723 = distinct !DILexicalBlock(scope: !719, file: !1, line: 28, column: 23)
!724 = !DILocation(line: 29, column: 9, scope: !723)
!725 = !DILocation(line: 30, column: 27, scope: !723)
!726 = !DILocation(line: 30, column: 9, scope: !723)
!727 = !DILocation(line: 31, column: 9, scope: !723)
!728 = !DILocation(line: 33, column: 26, scope: !118)
!729 = !DILocation(line: 33, column: 31, scope: !118)
!730 = !DILocation(line: 33, column: 5, scope: !118)
!731 = !DILocalVariable(name: "content", scope: !118, file: !1, line: 38, type: !732)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 56064, elements: !733)
!733 = !{!734}
!734 = !DISubrange(count: 7008)
!735 = !DILocation(line: 38, column: 10, scope: !118)
!736 = !DILocation(line: 39, column: 12, scope: !737)
!737 = distinct !DILexicalBlock(scope: !118, file: !1, line: 39, column: 5)
!738 = !DILocation(line: 39, column: 10, scope: !737)
!739 = !DILocation(line: 39, column: 17, scope: !740)
!740 = distinct !DILexicalBlock(scope: !737, file: !1, line: 39, column: 5)
!741 = !DILocation(line: 39, column: 19, scope: !740)
!742 = !DILocation(line: 39, column: 5, scope: !737)
!743 = !DILocation(line: 40, column: 16, scope: !744)
!744 = distinct !DILexicalBlock(scope: !740, file: !1, line: 39, column: 32)
!745 = !DILocation(line: 40, column: 26, scope: !744)
!746 = !DILocation(line: 40, column: 28, scope: !744)
!747 = !DILocation(line: 40, column: 24, scope: !744)
!748 = !DILocation(line: 40, column: 9, scope: !744)
!749 = !DILocation(line: 41, column: 5, scope: !744)
!750 = !DILocation(line: 39, column: 27, scope: !740)
!751 = !DILocation(line: 39, column: 5, scope: !740)
!752 = distinct !{!752, !742, !753, !754}
!753 = !DILocation(line: 41, column: 5, scope: !737)
!754 = !{!"llvm.loop.mustprogress"}
!755 = !DILocation(line: 42, column: 5, scope: !118)
!756 = !DILocation(line: 42, column: 23, scope: !118)
!757 = !DILocation(line: 43, column: 23, scope: !118)
!758 = !DILocation(line: 43, column: 38, scope: !118)
!759 = !DILocation(line: 43, column: 5, scope: !118)
!760 = !DILocation(line: 46, column: 19, scope: !118)
!761 = !DILocation(line: 46, column: 5, scope: !118)
!762 = !DILocation(line: 46, column: 11, scope: !118)
!763 = !DILocation(line: 46, column: 17, scope: !118)
!764 = !DILocation(line: 49, column: 22, scope: !118)
!765 = !DILocation(line: 49, column: 28, scope: !118)
!766 = !DILocation(line: 49, column: 5, scope: !118)
!767 = !DILocation(line: 54, column: 26, scope: !768)
!768 = distinct !DILexicalBlock(scope: !118, file: !1, line: 54, column: 9)
!769 = !DILocation(line: 54, column: 9, scope: !768)
!770 = !DILocation(line: 54, column: 67, scope: !768)
!771 = !DILocation(line: 54, column: 9, scope: !118)
!772 = !DILocation(line: 55, column: 9, scope: !773)
!773 = distinct !DILexicalBlock(scope: !768, file: !1, line: 54, column: 73)
!774 = !DILocation(line: 55, column: 17, scope: !773)
!775 = !DILocation(line: 56, column: 20, scope: !773)
!776 = !DILocation(line: 56, column: 9, scope: !773)
!777 = !DILocation(line: 57, column: 27, scope: !773)
!778 = !DILocation(line: 57, column: 9, scope: !773)
!779 = !DILocation(line: 58, column: 9, scope: !773)
!780 = !DILocalVariable(name: "symbolic_outSize", scope: !118, file: !1, line: 68, type: !70)
!781 = !DILocation(line: 68, column: 9, scope: !118)
!782 = !DILocation(line: 69, column: 24, scope: !118)
!783 = !DILocation(line: 69, column: 5, scope: !118)
!784 = !DILocation(line: 71, column: 17, scope: !118)
!785 = !DILocation(line: 71, column: 34, scope: !118)
!786 = !DILocation(line: 71, column: 5, scope: !118)
!787 = !DILocation(line: 72, column: 17, scope: !118)
!788 = !DILocation(line: 72, column: 37, scope: !118)
!789 = !DILocation(line: 72, column: 34, scope: !118)
!790 = !DILocation(line: 72, column: 5, scope: !118)
!791 = !DILocalVariable(name: "symbolic_i", scope: !118, file: !1, line: 78, type: !70)
!792 = !DILocation(line: 78, column: 9, scope: !118)
!793 = !DILocation(line: 79, column: 24, scope: !118)
!794 = !DILocation(line: 79, column: 5, scope: !118)
!795 = !DILocation(line: 80, column: 17, scope: !118)
!796 = !DILocation(line: 80, column: 28, scope: !118)
!797 = !DILocation(line: 80, column: 5, scope: !118)
!798 = !DILocation(line: 81, column: 17, scope: !118)
!799 = !DILocation(line: 81, column: 28, scope: !118)
!800 = !DILocation(line: 81, column: 5, scope: !118)
!801 = !DILocation(line: 82, column: 18, scope: !118)
!802 = !DILocation(line: 82, column: 29, scope: !118)
!803 = !DILocation(line: 82, column: 35, scope: !118)
!804 = !DILocation(line: 82, column: 39, scope: !118)
!805 = !DILocation(line: 82, column: 17, scope: !118)
!806 = !DILocation(line: 82, column: 5, scope: !118)
!807 = !DILocation(line: 87, column: 5, scope: !118)
!808 = !DILocation(line: 95, column: 9, scope: !809)
!809 = distinct !DILexicalBlock(scope: !118, file: !1, line: 95, column: 9)
!810 = !DILocation(line: 95, column: 20, scope: !809)
!811 = !DILocation(line: 95, column: 27, scope: !809)
!812 = !DILocation(line: 95, column: 24, scope: !809)
!813 = !DILocation(line: 95, column: 9, scope: !118)
!814 = !DILocation(line: 96, column: 16, scope: !815)
!815 = distinct !DILexicalBlock(scope: !809, file: !1, line: 95, column: 45)
!816 = !DILocation(line: 96, column: 22, scope: !815)
!817 = !DILocation(line: 96, column: 20, scope: !815)
!818 = !DILocation(line: 96, column: 9, scope: !815)
!819 = !DILocation(line: 97, column: 5, scope: !815)
!820 = !DILocation(line: 100, column: 5, scope: !118)
!821 = !DILocation(line: 100, column: 13, scope: !118)
!822 = !DILocation(line: 101, column: 16, scope: !118)
!823 = !DILocation(line: 101, column: 5, scope: !118)
!824 = !DILocation(line: 102, column: 23, scope: !118)
!825 = !DILocation(line: 102, column: 5, scope: !118)
!826 = !DILocation(line: 103, column: 5, scope: !118)
!827 = !DILocation(line: 104, column: 1, scope: !118)
!828 = distinct !DISubprogram(name: "memcmp", scope: !829, file: !829, line: 42, type: !830, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !121)
!829 = !DIFile(filename: "runtime/Freestanding/memcmp.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6a01b8a9953e07eca8ec791434d4f8e8")
!830 = !DISubroutineType(types: !831)
!831 = !{!70, !832, !832, !834}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !835, line: 46, baseType: !333)
!835 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!836 = !DILocalVariable(name: "s1", arg: 1, scope: !828, file: !829, line: 42, type: !832)
!837 = !DILocation(line: 42, column: 24, scope: !828)
!838 = !DILocalVariable(name: "s2", arg: 2, scope: !828, file: !829, line: 42, type: !832)
!839 = !DILocation(line: 42, column: 40, scope: !828)
!840 = !DILocalVariable(name: "n", arg: 3, scope: !828, file: !829, line: 42, type: !834)
!841 = !DILocation(line: 42, column: 51, scope: !828)
!842 = !DILocation(line: 43, column: 7, scope: !843)
!843 = distinct !DILexicalBlock(scope: !828, file: !829, line: 43, column: 7)
!844 = !DILocation(line: 43, column: 9, scope: !843)
!845 = !DILocation(line: 43, column: 7, scope: !828)
!846 = !DILocalVariable(name: "p1", scope: !847, file: !829, line: 44, type: !291)
!847 = distinct !DILexicalBlock(scope: !843, file: !829, line: 43, column: 15)
!848 = !DILocation(line: 44, column: 26, scope: !847)
!849 = !DILocation(line: 44, column: 31, scope: !847)
!850 = !DILocalVariable(name: "p2", scope: !847, file: !829, line: 44, type: !291)
!851 = !DILocation(line: 44, column: 36, scope: !847)
!852 = !DILocation(line: 44, column: 41, scope: !847)
!853 = !DILocation(line: 46, column: 5, scope: !847)
!854 = !DILocation(line: 47, column: 14, scope: !855)
!855 = distinct !DILexicalBlock(scope: !856, file: !829, line: 47, column: 11)
!856 = distinct !DILexicalBlock(scope: !847, file: !829, line: 46, column: 8)
!857 = !DILocation(line: 47, column: 11, scope: !855)
!858 = !DILocation(line: 47, column: 23, scope: !855)
!859 = !DILocation(line: 47, column: 20, scope: !855)
!860 = !DILocation(line: 47, column: 17, scope: !855)
!861 = !DILocation(line: 47, column: 11, scope: !856)
!862 = !DILocation(line: 48, column: 18, scope: !863)
!863 = distinct !DILexicalBlock(scope: !855, file: !829, line: 47, column: 27)
!864 = !DILocation(line: 48, column: 17, scope: !863)
!865 = !DILocation(line: 48, column: 26, scope: !863)
!866 = !DILocation(line: 48, column: 25, scope: !863)
!867 = !DILocation(line: 48, column: 23, scope: !863)
!868 = !DILocation(line: 48, column: 9, scope: !863)
!869 = !DILocation(line: 50, column: 14, scope: !847)
!870 = !DILocation(line: 50, column: 18, scope: !847)
!871 = !DILocation(line: 50, column: 5, scope: !856)
!872 = distinct !{!872, !853, !873, !754}
!873 = !DILocation(line: 50, column: 22, scope: !847)
!874 = !DILocation(line: 52, column: 3, scope: !828)
!875 = !DILocation(line: 53, column: 1, scope: !828)
!876 = distinct !DISubprogram(name: "memcpy", scope: !877, file: !877, line: 12, type: !878, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !121)
!877 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!878 = !DISubroutineType(types: !879)
!879 = !{!99, !99, !832, !834}
!880 = !DILocalVariable(name: "destaddr", arg: 1, scope: !876, file: !877, line: 12, type: !99)
!881 = !DILocation(line: 12, column: 20, scope: !876)
!882 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !876, file: !877, line: 12, type: !832)
!883 = !DILocation(line: 12, column: 42, scope: !876)
!884 = !DILocalVariable(name: "len", arg: 3, scope: !876, file: !877, line: 12, type: !834)
!885 = !DILocation(line: 12, column: 58, scope: !876)
!886 = !DILocalVariable(name: "dest", scope: !876, file: !877, line: 13, type: !104)
!887 = !DILocation(line: 13, column: 9, scope: !876)
!888 = !DILocation(line: 13, column: 16, scope: !876)
!889 = !DILocalVariable(name: "src", scope: !876, file: !877, line: 14, type: !335)
!890 = !DILocation(line: 14, column: 15, scope: !876)
!891 = !DILocation(line: 14, column: 21, scope: !876)
!892 = !DILocation(line: 16, column: 3, scope: !876)
!893 = !DILocation(line: 16, column: 13, scope: !876)
!894 = !DILocation(line: 16, column: 16, scope: !876)
!895 = !DILocation(line: 17, column: 19, scope: !876)
!896 = !DILocation(line: 17, column: 15, scope: !876)
!897 = !DILocation(line: 17, column: 10, scope: !876)
!898 = !DILocation(line: 17, column: 13, scope: !876)
!899 = distinct !{!899, !892, !895, !754}
!900 = !DILocation(line: 18, column: 10, scope: !876)
!901 = !DILocation(line: 18, column: 3, scope: !876)

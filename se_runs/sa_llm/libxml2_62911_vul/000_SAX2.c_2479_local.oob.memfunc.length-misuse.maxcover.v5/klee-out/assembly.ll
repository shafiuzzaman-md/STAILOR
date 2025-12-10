; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/000_SAX2.c_2479_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/000_SAX2.c_2479_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
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

@.str = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"nodelen\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"nodemem\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"coalesceText\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"ch\00", align 1
@xmlRealloc = external global i8* (i8*, i64)*, align 8
@.str.9 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.10 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/000_SAX2.c_2479_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !114 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt*, align 8
  %3 = alloca %struct._xmlDoc*, align 8
  %4 = alloca %struct._xmlNode*, align 8
  %5 = alloca %struct._xmlNode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !118, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %3, metadata !687, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !689, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !691, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.declare(metadata i8** %6, metadata !693, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.declare(metadata i32* %7, metadata !695, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.declare(metadata i32* %8, metadata !697, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.declare(metadata i32* %9, metadata !699, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.declare(metadata i32* %10, metadata !701, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.declare(metadata i32* %11, metadata !703, metadata !DIExpression()), !dbg !704
  %13 = call i32 (...) @xmlCreateParserCtxt(), !dbg !705
  %14 = sext i32 %13 to i64, !dbg !705
  %15 = inttoptr i64 %14 to %struct._xmlParserCtxt*, !dbg !705
  store %struct._xmlParserCtxt* %15, %struct._xmlParserCtxt** %2, align 8, !dbg !706
  %16 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !707
  %17 = icmp eq %struct._xmlParserCtxt* %16, null, !dbg !709
  br i1 %17, label %18, label %19, !dbg !710

18:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !711
  br label %209, !dbg !711

19:                                               ; preds = %0
  %20 = call %struct._xmlDoc* @xmlNewDoc(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !712
  store %struct._xmlDoc* %20, %struct._xmlDoc** %3, align 8, !dbg !713
  %21 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !714
  %22 = icmp eq %struct._xmlDoc* %21, null, !dbg !716
  br i1 %22, label %23, label %25, !dbg !717

23:                                               ; preds = %19
  %24 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !718
  call void @xmlFreeParserCtxt(%struct._xmlParserCtxt* noundef %24), !dbg !720
  store i32 1, i32* %1, align 4, !dbg !721
  br label %209, !dbg !721

25:                                               ; preds = %19
  %26 = call %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !722
  store %struct._xmlNode* %26, %struct._xmlNode** %4, align 8, !dbg !723
  %27 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !724
  %28 = icmp eq %struct._xmlNode* %27, null, !dbg !726
  br i1 %28, label %29, label %32, !dbg !727

29:                                               ; preds = %25
  %30 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !728
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %30), !dbg !730
  %31 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !731
  call void @xmlFreeParserCtxt(%struct._xmlParserCtxt* noundef %31), !dbg !732
  store i32 1, i32* %1, align 4, !dbg !733
  br label %209, !dbg !733

32:                                               ; preds = %25
  %33 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !734
  %34 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !735
  %35 = call %struct._xmlNode* @xmlDocSetRootElement(%struct._xmlDoc* noundef %33, %struct._xmlNode* noundef %34), !dbg !736
  %36 = call %struct._xmlNode* @xmlNewText(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)), !dbg !737
  store %struct._xmlNode* %36, %struct._xmlNode** %5, align 8, !dbg !738
  %37 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !739
  %38 = icmp eq %struct._xmlNode* %37, null, !dbg !741
  br i1 %38, label %39, label %42, !dbg !742

39:                                               ; preds = %32
  %40 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !743
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %40), !dbg !745
  %41 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !746
  call void @xmlFreeParserCtxt(%struct._xmlParserCtxt* noundef %41), !dbg !747
  store i32 1, i32* %1, align 4, !dbg !748
  br label %209, !dbg !748

42:                                               ; preds = %32
  %43 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !749
  %44 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !750
  %45 = call %struct._xmlNode* @xmlAddChild(%struct._xmlNode* noundef %43, %struct._xmlNode* noundef %44), !dbg !751
  %46 = bitcast i32* %7 to i8*, !dbg !752
  call void @klee_make_symbolic(i8* noundef %46, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !753
  %47 = load i32, i32* %7, align 4, !dbg !754
  %48 = icmp sge i32 %47, 0, !dbg !755
  %49 = zext i1 %48 to i32, !dbg !755
  %50 = sext i32 %49 to i64, !dbg !754
  call void @klee_assume(i64 noundef %50), !dbg !756
  %51 = bitcast i32* %8 to i8*, !dbg !757
  call void @klee_make_symbolic(i8* noundef %51, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)), !dbg !758
  %52 = load i32, i32* %8, align 4, !dbg !759
  %53 = icmp sge i32 %52, 0, !dbg !760
  %54 = zext i1 %53 to i32, !dbg !760
  %55 = sext i32 %54 to i64, !dbg !759
  call void @klee_assume(i64 noundef %55), !dbg !761
  %56 = bitcast i32* %9 to i8*, !dbg !762
  call void @klee_make_symbolic(i8* noundef %56, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)), !dbg !763
  %57 = load i32, i32* %9, align 4, !dbg !764
  %58 = icmp sge i32 %57, 0, !dbg !765
  %59 = zext i1 %58 to i32, !dbg !765
  %60 = sext i32 %59 to i64, !dbg !764
  call void @klee_assume(i64 noundef %60), !dbg !766
  %61 = bitcast i32* %10 to i8*, !dbg !767
  call void @klee_make_symbolic(i8* noundef %61, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)), !dbg !768
  %62 = load i32, i32* %10, align 4, !dbg !769
  %63 = icmp sge i32 %62, 0, !dbg !770
  %64 = zext i1 %63 to i32, !dbg !770
  %65 = sext i32 %64 to i64, !dbg !769
  call void @klee_assume(i64 noundef %65), !dbg !771
  %66 = bitcast i32* %11 to i8*, !dbg !772
  call void @klee_make_symbolic(i8* noundef %66, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0)), !dbg !773
  %67 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !774
  %68 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !775
  %69 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %68, i32 0, i32 13, !dbg !776
  store %struct._xmlNode* %67, %struct._xmlNode** %69, align 8, !dbg !777
  %70 = load i32, i32* %8, align 4, !dbg !778
  %71 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !779
  %72 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %71, i32 0, i32 48, !dbg !780
  store i32 %70, i32* %72, align 4, !dbg !781
  %73 = load i32, i32* %9, align 4, !dbg !782
  %74 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !783
  %75 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %74, i32 0, i32 49, !dbg !784
  store i32 %73, i32* %75, align 8, !dbg !785
  %76 = load i32, i32* %7, align 4, !dbg !786
  %77 = add nsw i32 %76, 1, !dbg !787
  %78 = sext i32 %77 to i64, !dbg !788
  %79 = mul i64 %78, 1, !dbg !789
  %80 = call noalias i8* @malloc(i64 noundef %79) #7, !dbg !790
  store i8* %80, i8** %6, align 8, !dbg !791
  %81 = load i8*, i8** %6, align 8, !dbg !792
  %82 = icmp eq i8* %81, null, !dbg !794
  br i1 %82, label %83, label %86, !dbg !795

83:                                               ; preds = %42
  %84 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !796
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %84), !dbg !798
  %85 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !799
  call void @xmlFreeParserCtxt(%struct._xmlParserCtxt* noundef %85), !dbg !800
  store i32 1, i32* %1, align 4, !dbg !801
  br label %209, !dbg !801

86:                                               ; preds = %42
  %87 = load i8*, i8** %6, align 8, !dbg !802
  %88 = load i32, i32* %7, align 4, !dbg !803
  %89 = add nsw i32 %88, 1, !dbg !804
  %90 = sext i32 %89 to i64, !dbg !805
  %91 = mul i64 %90, 1, !dbg !806
  call void @klee_make_symbolic(i8* noundef %87, i64 noundef %91, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)), !dbg !807
  %92 = load i8*, i8** %6, align 8, !dbg !808
  %93 = load i32, i32* %7, align 4, !dbg !809
  %94 = sext i32 %93 to i64, !dbg !808
  %95 = getelementptr inbounds i8, i8* %92, i64 %94, !dbg !808
  store i8 0, i8* %95, align 1, !dbg !810
  %96 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !811
  %97 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %96, i32 0, i32 1, !dbg !813
  %98 = load i32, i32* %97, align 8, !dbg !813
  %99 = icmp eq i32 %98, 3, !dbg !814
  br i1 %99, label %100, label %132, !dbg !815

100:                                              ; preds = %86
  %101 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !816
  %102 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %101, i32 0, i32 10, !dbg !817
  %103 = load i8*, i8** %102, align 8, !dbg !817
  %104 = icmp ne i8* %103, null, !dbg !818
  br i1 %104, label %105, label %132, !dbg !819

105:                                              ; preds = %100
  %106 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !820
  %107 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %106, i32 0, i32 49, !dbg !821
  %108 = load i32, i32* %107, align 8, !dbg !821
  %109 = icmp eq i32 %108, 0, !dbg !822
  br i1 %109, label %110, label %132, !dbg !823

110:                                              ; preds = %105
  %111 = load i32, i32* %10, align 4, !dbg !824
  %112 = icmp sgt i32 %111, 0, !dbg !825
  br i1 %112, label %113, label %132, !dbg !826

113:                                              ; preds = %110
  %114 = load i32, i32* %10, align 4, !dbg !827
  %115 = sext i32 %114 to i64, !dbg !827
  %116 = mul i64 %115, 1, !dbg !829
  %117 = call noalias i8* @malloc(i64 noundef %116) #7, !dbg !830
  %118 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !831
  %119 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %118, i32 0, i32 10, !dbg !832
  store i8* %117, i8** %119, align 8, !dbg !833
  %120 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !834
  %121 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %120, i32 0, i32 10, !dbg !836
  %122 = load i8*, i8** %121, align 8, !dbg !836
  %123 = icmp eq i8* %122, null, !dbg !837
  br i1 %123, label %124, label %128, !dbg !838

124:                                              ; preds = %113
  %125 = load i8*, i8** %6, align 8, !dbg !839
  call void @free(i8* noundef %125) #7, !dbg !841
  %126 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !842
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %126), !dbg !843
  %127 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !844
  call void @xmlFreeParserCtxt(%struct._xmlParserCtxt* noundef %127), !dbg !845
  store i32 1, i32* %1, align 4, !dbg !846
  br label %209, !dbg !846

128:                                              ; preds = %113
  %129 = load i32, i32* %10, align 4, !dbg !847
  %130 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !848
  %131 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %130, i32 0, i32 49, !dbg !849
  store i32 %129, i32* %131, align 8, !dbg !850
  br label %132, !dbg !851

132:                                              ; preds = %128, %110, %105, %100, %86
  %133 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !852
  %134 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %133, i32 0, i32 1, !dbg !854
  %135 = load i32, i32* %134, align 8, !dbg !854
  %136 = icmp eq i32 %135, 3, !dbg !855
  br i1 %136, label %137, label %179, !dbg !856

137:                                              ; preds = %132
  %138 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !857
  %139 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %138, i32 0, i32 10, !dbg !858
  %140 = load i8*, i8** %139, align 8, !dbg !858
  %141 = icmp ne i8* %140, null, !dbg !859
  br i1 %141, label %142, label %179, !dbg !860

142:                                              ; preds = %137
  %143 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !861
  %144 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %143, i32 0, i32 49, !dbg !862
  %145 = load i32, i32* %144, align 8, !dbg !862
  %146 = icmp sgt i32 %145, 0, !dbg !863
  br i1 %146, label %147, label %179, !dbg !864

147:                                              ; preds = %142
  %148 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !865
  %149 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %148, i32 0, i32 48, !dbg !866
  %150 = load i32, i32* %149, align 4, !dbg !866
  %151 = load i32, i32* %7, align 4, !dbg !867
  %152 = add nsw i32 %150, %151, !dbg !868
  %153 = add nsw i32 %152, 1, !dbg !869
  %154 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !870
  %155 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %154, i32 0, i32 49, !dbg !871
  %156 = load i32, i32* %155, align 8, !dbg !871
  %157 = icmp sgt i32 %153, %156, !dbg !872
  br i1 %157, label %158, label %179, !dbg !873

158:                                              ; preds = %147
  call void @llvm.dbg.declare(metadata i8** %12, metadata !874, metadata !DIExpression()), !dbg !876
  %159 = load i8* (i8*, i64)*, i8* (i8*, i64)** @xmlRealloc, align 8, !dbg !877
  %160 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !878
  %161 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %160, i32 0, i32 10, !dbg !879
  %162 = load i8*, i8** %161, align 8, !dbg !879
  %163 = load i32, i32* %10, align 4, !dbg !880
  %164 = sext i32 %163 to i64, !dbg !880
  %165 = call i8* %159(i8* noundef %162, i64 noundef %164), !dbg !877
  store i8* %165, i8** %12, align 8, !dbg !876
  %166 = load i8*, i8** %12, align 8, !dbg !881
  %167 = icmp eq i8* %166, null, !dbg !883
  br i1 %167, label %168, label %172, !dbg !884

168:                                              ; preds = %158
  %169 = load i8*, i8** %6, align 8, !dbg !885
  call void @free(i8* noundef %169) #7, !dbg !887
  %170 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !888
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %170), !dbg !889
  %171 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !890
  call void @xmlFreeParserCtxt(%struct._xmlParserCtxt* noundef %171), !dbg !891
  store i32 1, i32* %1, align 4, !dbg !892
  br label %209, !dbg !892

172:                                              ; preds = %158
  %173 = load i32, i32* %10, align 4, !dbg !893
  %174 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !894
  %175 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %174, i32 0, i32 49, !dbg !895
  store i32 %173, i32* %175, align 8, !dbg !896
  %176 = load i8*, i8** %12, align 8, !dbg !897
  %177 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !898
  %178 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %177, i32 0, i32 10, !dbg !899
  store i8* %176, i8** %178, align 8, !dbg !900
  br label %179, !dbg !901

179:                                              ; preds = %172, %147, %142, %137, %132
  %180 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.10, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !902
  %181 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !903
  %182 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %181, i32 0, i32 10, !dbg !904
  %183 = load i8*, i8** %182, align 8, !dbg !904
  %184 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !905
  %185 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %184, i32 0, i32 48, !dbg !906
  %186 = load i32, i32* %185, align 4, !dbg !906
  %187 = sext i32 %186 to i64, !dbg !903
  %188 = getelementptr inbounds i8, i8* %183, i64 %187, !dbg !903
  %189 = load i8*, i8** %6, align 8, !dbg !907
  %190 = load i32, i32* %7, align 4, !dbg !908
  %191 = sext i32 %190 to i64, !dbg !908
  %192 = call i8* @memcpy(i8* %188, i8* %189, i64 %191), !dbg !909
  %193 = load i32, i32* %7, align 4, !dbg !910
  %194 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !911
  %195 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %194, i32 0, i32 48, !dbg !912
  %196 = load i32, i32* %195, align 4, !dbg !913
  %197 = add nsw i32 %196, %193, !dbg !913
  store i32 %197, i32* %195, align 4, !dbg !913
  %198 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !914
  %199 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %198, i32 0, i32 10, !dbg !915
  %200 = load i8*, i8** %199, align 8, !dbg !915
  %201 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !916
  %202 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %201, i32 0, i32 48, !dbg !917
  %203 = load i32, i32* %202, align 4, !dbg !917
  %204 = sext i32 %203 to i64, !dbg !914
  %205 = getelementptr inbounds i8, i8* %200, i64 %204, !dbg !914
  store i8 0, i8* %205, align 1, !dbg !918
  %206 = load i8*, i8** %6, align 8, !dbg !919
  call void @free(i8* noundef %206) #7, !dbg !920
  %207 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !921
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %207), !dbg !922
  %208 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !923
  call void @xmlFreeParserCtxt(%struct._xmlParserCtxt* noundef %208), !dbg !924
  store i32 0, i32* %1, align 4, !dbg !925
  br label %209, !dbg !925

209:                                              ; preds = %179, %168, %124, %83, %39, %29, %23, %18
  %210 = load i32, i32* %1, align 4, !dbg !926
  ret i32 %210, !dbg !926
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @xmlCreateParserCtxt(...) #2

declare %struct._xmlDoc* @xmlNewDoc(i8* noundef) #2

declare void @xmlFreeParserCtxt(%struct._xmlParserCtxt* noundef) #2

declare %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef, i8* noundef) #2

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare %struct._xmlNode* @xmlDocSetRootElement(%struct._xmlDoc* noundef, %struct._xmlNode* noundef) #2

declare %struct._xmlNode* @xmlNewText(i8* noundef) #2

declare %struct._xmlNode* @xmlAddChild(%struct._xmlNode* noundef, %struct._xmlNode* noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !927 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !935, metadata !DIExpression()), !dbg !936
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !937, metadata !DIExpression()), !dbg !938
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !939, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.declare(metadata i8** %7, metadata !941, metadata !DIExpression()), !dbg !942
  %9 = load i8*, i8** %4, align 8, !dbg !943
  store i8* %9, i8** %7, align 8, !dbg !942
  call void @llvm.dbg.declare(metadata i8** %8, metadata !944, metadata !DIExpression()), !dbg !945
  %10 = load i8*, i8** %5, align 8, !dbg !946
  store i8* %10, i8** %8, align 8, !dbg !945
  br label %11, !dbg !947

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !948
  %13 = add i64 %12, -1, !dbg !948
  store i64 %13, i64* %6, align 8, !dbg !948
  %14 = icmp ugt i64 %12, 0, !dbg !949
  br i1 %14, label %15, label %21, !dbg !947

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !950
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !950
  store i8* %17, i8** %8, align 8, !dbg !950
  %18 = load i8, i8* %16, align 1, !dbg !951
  %19 = load i8*, i8** %7, align 8, !dbg !952
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !952
  store i8* %20, i8** %7, align 8, !dbg !952
  store i8 %18, i8* %19, align 1, !dbg !953
  br label %11, !dbg !947, !llvm.loop !954

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !956
  ret i8* %22, !dbg !957
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !104}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113, !113}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !98, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/000_SAX2.c_2479_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "5fb234525cdc237933d50529183b9b2d")
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
!98 = !{!99, !100}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !102, line: 28, baseType: !103)
!102 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!103 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!104 = distinct !DICompileUnit(language: DW_LANG_C99, file: !105, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!105 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!106 = !{i32 7, !"Dwarf Version", i32 5}
!107 = !{i32 2, !"Debug Info Version", i32 3}
!108 = !{i32 1, !"wchar_size", i32 4}
!109 = !{i32 7, !"PIC Level", i32 2}
!110 = !{i32 7, !"PIE Level", i32 2}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"Ubuntu clang version 14.0.6"}
!114 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !115, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !117)
!115 = !DISubroutineType(types: !116)
!116 = !{!70}
!117 = !{}
!118 = !DILocalVariable(name: "ctxt", scope: !114, file: !1, line: 6, type: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxtPtr", file: !4, line: 39, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !4, line: 38, baseType: !122)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !69, line: 186, size: 6016, elements: !123)
!123 = !{!124, !522, !523, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !538, !542, !543, !544, !546, !547, !565, !566, !567, !568, !569, !570, !571, !606, !608, !609, !610, !611, !612, !613, !614, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !658, !664, !665, !666, !667, !668, !669, !670, !671, !675, !676, !678, !679, !680, !681, !682, !683, !684, !685}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "sax", scope: !122, file: !69, line: 187, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXHandler", file: !69, line: 721, size: 2048, elements: !127)
!127 = !{!128, !135, !140, !142, !144, !250, !378, !383, !385, !398, !418, !423, !440, !445, !447, !453, !458, !460, !465, !467, !472, !474, !479, !481, !483, !485, !487, !489, !490, !491, !496, !498}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "internalSubset", scope: !126, file: !69, line: 722, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "internalSubsetSAXFunc", file: !69, line: 364, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !99, !133, !133, !133}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "isStandalone", scope: !126, file: !69, line: 723, baseType: !136, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "isStandaloneSAXFunc", file: !69, line: 642, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!70, !99}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "hasInternalSubset", scope: !126, file: !69, line: 724, baseType: !141, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "hasInternalSubsetSAXFunc", file: !69, line: 651, baseType: !137)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "hasExternalSubset", scope: !126, file: !69, line: 725, baseType: !143, size: 64, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "hasExternalSubsetSAXFunc", file: !69, line: 661, baseType: !137)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "resolveEntity", scope: !126, file: !69, line: 726, baseType: !145, size: 64, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "resolveEntitySAXFunc", file: !69, line: 352, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!149, !99, !133, !133}
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputPtr", file: !4, line: 36, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInput", file: !4, line: 35, baseType: !152)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInput", file: !69, line: 54, size: 832, elements: !153)
!153 = !{!154, !230, !233, !234, !235, !236, !237, !238, !239, !240, !241, !246, !247, !248, !249}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !152, file: !69, line: 56, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputBufferPtr", file: !4, line: 29, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputBuffer", file: !4, line: 28, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInputBuffer", file: !159, line: 125, size: 512, elements: !160)
!159 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlIO.h", directory: "", checksumkind: CSK_MD5, checksum: "a868e7a396360b2f16d10eac4a34669c")
!160 = !{!161, !162, !169, !171, !220, !225, !226, !227, !228}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !158, file: !159, line: 126, baseType: !99, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "readcallback", scope: !158, file: !159, line: 127, baseType: !163, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlInputReadCallback", file: !159, line: 54, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{!70, !99, !167, !70}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "closecallback", scope: !158, file: !159, line: 128, baseType: !170, size: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlInputCloseCallback", file: !159, line: 63, baseType: !137)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !158, file: !159, line: 130, baseType: !172, size: 64, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandlerPtr", file: !173, line: 145, baseType: !174)
!173 = !DIFile(filename: "/usr/include/libxml2/libxml/encoding.h", directory: "", checksumkind: CSK_MD5, checksum: "807b84fade38abad3ae0d9b6af714dbc")
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandler", file: !173, line: 144, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlCharEncodingHandler", file: !173, line: 146, size: 448, elements: !177)
!177 = !{!178, !179, !188, !190, !193, !194, !219}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !176, file: !173, line: 147, baseType: !167, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !176, file: !173, line: 148, baseType: !180, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingInputFunc", file: !173, line: 101, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!70, !184, !185, !186, !185}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !176, file: !173, line: 149, baseType: !189, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingOutputFunc", file: !173, line: 123, baseType: !181)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_in", scope: !176, file: !173, line: 151, baseType: !191, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !192, line: 29, baseType: !99)
!192 = !DIFile(filename: "/usr/include/iconv.h", directory: "", checksumkind: CSK_MD5, checksum: "edfee9bcfa398c9184cc8f95deb97c16")
!193 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_out", scope: !176, file: !173, line: 152, baseType: !191, size: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_in", scope: !176, file: !173, line: 155, baseType: !195, size: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "uconv_t", file: !173, line: 141, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_uconv_t", file: !173, line: 134, size: 16640, elements: !198)
!198 = !{!199, !204, !205, !216, !218}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "uconv", scope: !197, file: !173, line: 135, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "UConverter", file: !202, line: 96, baseType: !203)
!202 = !DIFile(filename: "/usr/include/unicode/ucnv_err.h", directory: "", checksumkind: CSK_MD5, checksum: "a507bbb125e54d860485ec054a4a55ed")
!203 = !DICompositeType(tag: DW_TAG_structure_type, name: "UConverter", file: !202, line: 93, flags: DIFlagFwdDecl)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !197, file: !173, line: 136, baseType: !200, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_buf", scope: !197, file: !173, line: 137, baseType: !206, size: 16384, offset: 128)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 16384, elements: !214)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "UChar", file: !208, line: 388, baseType: !209)
!208 = !DIFile(filename: "/usr/include/unicode/umachine.h", directory: "", checksumkind: CSK_MD5, checksum: "2d902ff00eac765b305cb113b74d34df")
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !210, line: 25, baseType: !211)
!210 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !212, line: 40, baseType: !213)
!212 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!213 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!214 = !{!215}
!215 = !DISubrange(count: 1024)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_source", scope: !197, file: !173, line: 138, baseType: !217, size: 64, offset: 16512)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_target", scope: !197, file: !173, line: 139, baseType: !217, size: 64, offset: 16576)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_out", scope: !176, file: !173, line: 156, baseType: !195, size: 64, offset: 384)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !158, file: !159, line: 132, baseType: !221, size: 64, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufPtr", file: !4, line: 114, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !4, line: 105, baseType: !224)
!224 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !4, line: 105, flags: DIFlagFwdDecl)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !158, file: !159, line: 133, baseType: !221, size: 64, offset: 320)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "compressed", scope: !158, file: !159, line: 134, baseType: !70, size: 32, offset: 384)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !158, file: !159, line: 135, baseType: !70, size: 32, offset: 416)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "rawconsumed", scope: !158, file: !159, line: 136, baseType: !229, size: 64, offset: 448)
!229 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !152, file: !69, line: 58, baseType: !231, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !152, file: !69, line: 59, baseType: !231, size: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !152, file: !69, line: 60, baseType: !133, size: 64, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !152, file: !69, line: 61, baseType: !133, size: 64, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !152, file: !69, line: 62, baseType: !133, size: 64, offset: 320)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !152, file: !69, line: 63, baseType: !70, size: 32, offset: 384)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !152, file: !69, line: 64, baseType: !70, size: 32, offset: 416)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !152, file: !69, line: 65, baseType: !70, size: 32, offset: 448)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "consumed", scope: !152, file: !69, line: 71, baseType: !229, size: 64, offset: 512)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !152, file: !69, line: 72, baseType: !242, size: 64, offset: 576)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputDeallocate", file: !69, line: 52, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{null, !100}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !152, file: !69, line: 73, baseType: !133, size: 64, offset: 640)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !152, file: !69, line: 74, baseType: !133, size: 64, offset: 704)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !152, file: !69, line: 75, baseType: !70, size: 32, offset: 768)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !152, file: !69, line: 76, baseType: !70, size: 32, offset: 800)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "getEntity", scope: !126, file: !69, line: 727, baseType: !251, size: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "getEntitySAXFunc", file: !69, line: 390, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!255, !99, !133}
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntityPtr", file: !4, line: 49, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntity", file: !4, line: 48, baseType: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEntity", file: !41, line: 38, size: 1088, elements: !259)
!259 = !{!260, !261, !263, !264, !361, !362, !363, !364, !365, !366, !367, !368, !369, !371, !372, !373, !375, !376, !377}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !258, file: !41, line: 39, baseType: !99, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !258, file: !41, line: 40, baseType: !262, size: 32, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !258, file: !41, line: 41, baseType: !133, size: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !258, file: !41, line: 42, baseType: !265, size: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !267)
!267 = !{!268, !269, !270, !271, !272, !273, !274, !275, !276, !336, !339, !340, !357, !358, !359, !360}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !266, file: !4, line: 493, baseType: !99, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !266, file: !4, line: 494, baseType: !262, size: 32, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !266, file: !4, line: 495, baseType: !133, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !266, file: !4, line: 496, baseType: !265, size: 64, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !266, file: !4, line: 497, baseType: !265, size: 64, offset: 256)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !266, file: !4, line: 498, baseType: !265, size: 64, offset: 320)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !266, file: !4, line: 499, baseType: !265, size: 64, offset: 384)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !266, file: !4, line: 500, baseType: !265, size: 64, offset: 448)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !266, file: !4, line: 501, baseType: !277, size: 64, offset: 512)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !279)
!279 = !{!280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !311, !312, !323, !324, !325, !326, !327, !328, !329, !333, !334, !335}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !278, file: !4, line: 560, baseType: !99, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !278, file: !4, line: 561, baseType: !262, size: 32, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !278, file: !4, line: 562, baseType: !167, size: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !278, file: !4, line: 563, baseType: !265, size: 64, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !278, file: !4, line: 564, baseType: !265, size: 64, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !278, file: !4, line: 565, baseType: !265, size: 64, offset: 320)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !278, file: !4, line: 566, baseType: !265, size: 64, offset: 384)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !278, file: !4, line: 567, baseType: !265, size: 64, offset: 448)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !278, file: !4, line: 568, baseType: !277, size: 64, offset: 512)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !278, file: !4, line: 571, baseType: !70, size: 32, offset: 576)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !278, file: !4, line: 572, baseType: !70, size: 32, offset: 608)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !278, file: !4, line: 578, baseType: !292, size: 64, offset: 640)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !294)
!294 = !{!295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !293, file: !4, line: 406, baseType: !99, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !293, file: !4, line: 407, baseType: !262, size: 32, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !293, file: !4, line: 408, baseType: !133, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !293, file: !4, line: 409, baseType: !265, size: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !293, file: !4, line: 410, baseType: !265, size: 64, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !293, file: !4, line: 411, baseType: !277, size: 64, offset: 320)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !293, file: !4, line: 412, baseType: !265, size: 64, offset: 384)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !293, file: !4, line: 413, baseType: !265, size: 64, offset: 448)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !293, file: !4, line: 414, baseType: !277, size: 64, offset: 512)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !293, file: !4, line: 417, baseType: !99, size: 64, offset: 576)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !293, file: !4, line: 418, baseType: !99, size: 64, offset: 640)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !293, file: !4, line: 419, baseType: !99, size: 64, offset: 704)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !293, file: !4, line: 420, baseType: !99, size: 64, offset: 768)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !293, file: !4, line: 421, baseType: !133, size: 64, offset: 832)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !293, file: !4, line: 422, baseType: !133, size: 64, offset: 896)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !293, file: !4, line: 423, baseType: !99, size: 64, offset: 960)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !278, file: !4, line: 579, baseType: !292, size: 64, offset: 704)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !278, file: !4, line: 580, baseType: !313, size: 64, offset: 768)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !315)
!315 = !{!316, !317, !319, !320, !321, !322}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !4, line: 389, baseType: !313, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !314, file: !4, line: 390, baseType: !318, size: 32, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !262)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !314, file: !4, line: 391, baseType: !133, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !314, file: !4, line: 392, baseType: !133, size: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !314, file: !4, line: 393, baseType: !99, size: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !314, file: !4, line: 394, baseType: !277, size: 64, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !278, file: !4, line: 581, baseType: !133, size: 64, offset: 832)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !278, file: !4, line: 582, baseType: !133, size: 64, offset: 896)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !278, file: !4, line: 583, baseType: !99, size: 64, offset: 960)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !278, file: !4, line: 584, baseType: !99, size: 64, offset: 1024)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !278, file: !4, line: 585, baseType: !133, size: 64, offset: 1088)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !278, file: !4, line: 586, baseType: !70, size: 32, offset: 1152)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !278, file: !4, line: 588, baseType: !330, size: 64, offset: 1216)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !332, line: 24, flags: DIFlagFwdDecl)
!332 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!333 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !278, file: !4, line: 589, baseType: !99, size: 64, offset: 1280)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !278, file: !4, line: 590, baseType: !70, size: 32, offset: 1344)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !278, file: !4, line: 592, baseType: !70, size: 32, offset: 1376)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !266, file: !4, line: 504, baseType: !337, size: 64, offset: 576)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !314)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !266, file: !4, line: 505, baseType: !100, size: 64, offset: 640)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !266, file: !4, line: 506, baseType: !341, size: 64, offset: 704)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !343)
!343 = !{!344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !356}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !342, file: !4, line: 434, baseType: !99, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !342, file: !4, line: 435, baseType: !262, size: 32, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !342, file: !4, line: 436, baseType: !133, size: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !342, file: !4, line: 437, baseType: !265, size: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !342, file: !4, line: 438, baseType: !265, size: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !342, file: !4, line: 439, baseType: !265, size: 64, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !342, file: !4, line: 440, baseType: !341, size: 64, offset: 384)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !342, file: !4, line: 441, baseType: !341, size: 64, offset: 448)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !342, file: !4, line: 442, baseType: !277, size: 64, offset: 512)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !342, file: !4, line: 443, baseType: !337, size: 64, offset: 576)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !342, file: !4, line: 444, baseType: !355, size: 32, offset: 640)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !342, file: !4, line: 445, baseType: !99, size: 64, offset: 704)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !266, file: !4, line: 507, baseType: !337, size: 64, offset: 768)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !266, file: !4, line: 508, baseType: !99, size: 64, offset: 832)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !266, file: !4, line: 509, baseType: !213, size: 16, offset: 896)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !266, file: !4, line: 510, baseType: !213, size: 16, offset: 912)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !258, file: !41, line: 43, baseType: !265, size: 64, offset: 256)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !258, file: !41, line: 44, baseType: !292, size: 64, offset: 320)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !258, file: !41, line: 45, baseType: !265, size: 64, offset: 384)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !258, file: !41, line: 46, baseType: !265, size: 64, offset: 448)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !258, file: !41, line: 47, baseType: !277, size: 64, offset: 512)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !258, file: !41, line: 49, baseType: !100, size: 64, offset: 576)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !258, file: !41, line: 50, baseType: !100, size: 64, offset: 640)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !258, file: !41, line: 51, baseType: !70, size: 32, offset: 704)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "etype", scope: !258, file: !41, line: 52, baseType: !370, size: 32, offset: 736)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntityType", file: !41, line: 31, baseType: !40)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !258, file: !41, line: 53, baseType: !133, size: 64, offset: 768)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !258, file: !41, line: 54, baseType: !133, size: 64, offset: 832)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "nexte", scope: !258, file: !41, line: 56, baseType: !374, size: 64, offset: 896)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "URI", scope: !258, file: !41, line: 57, baseType: !133, size: 64, offset: 960)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !258, file: !41, line: 58, baseType: !70, size: 32, offset: 1024)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "checked", scope: !258, file: !41, line: 59, baseType: !70, size: 32, offset: 1056)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "entityDecl", scope: !126, file: !69, line: 728, baseType: !379, size: 64, offset: 384)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "entityDeclSAXFunc", file: !69, line: 414, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !99, !133, !70, !133, !133, !100}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "notationDecl", scope: !126, file: !69, line: 729, baseType: !384, size: 64, offset: 448)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "notationDeclSAXFunc", file: !69, line: 429, baseType: !130)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "attributeDecl", scope: !126, file: !69, line: 730, baseType: !386, size: 64, offset: 512)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "attributeDeclSAXFunc", file: !69, line: 445, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !99, !133, !133, !70, !70, !133, !390}
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEnumerationPtr", file: !4, line: 239, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEnumeration", file: !4, line: 238, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEnumeration", file: !4, line: 240, size: 128, elements: !394)
!394 = !{!395, !397}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !393, file: !4, line: 241, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !393, file: !4, line: 242, baseType: !133, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "elementDecl", scope: !126, file: !69, line: 731, baseType: !399, size: 64, offset: 576)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "elementDeclSAXFunc", file: !69, line: 461, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !99, !133, !70, !403}
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentPtr", file: !4, line: 305, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContent", file: !4, line: 304, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlElementContent", file: !4, line: 306, size: 384, elements: !407)
!407 = !{!408, !410, !412, !413, !415, !416, !417}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !406, file: !4, line: 307, baseType: !409, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentType", file: !4, line: 283, baseType: !49)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "ocur", scope: !406, file: !4, line: 308, baseType: !411, size: 32, offset: 32)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentOccur", file: !4, line: 295, baseType: !55)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !406, file: !4, line: 309, baseType: !133, size: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !406, file: !4, line: 310, baseType: !414, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !406, file: !4, line: 311, baseType: !414, size: 64, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !406, file: !4, line: 312, baseType: !414, size: 64, offset: 256)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !406, file: !4, line: 313, baseType: !133, size: 64, offset: 320)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "unparsedEntityDecl", scope: !126, file: !69, line: 732, baseType: !419, size: 64, offset: 640)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "unparsedEntityDeclSAXFunc", file: !69, line: 475, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !99, !133, !133, !133, !133}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "setDocumentLocator", scope: !126, file: !69, line: 733, baseType: !424, size: 64, offset: 704)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "setDocumentLocatorSAXFunc", file: !69, line: 488, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !99, !428}
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXLocatorPtr", file: !4, line: 42, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXLocator", file: !4, line: 41, baseType: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXLocator", file: !69, line: 323, size: 256, elements: !432)
!432 = !{!433, !437, !438, !439}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "getPublicId", scope: !431, file: !69, line: 324, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!133, !99}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "getSystemId", scope: !431, file: !69, line: 325, baseType: !434, size: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "getLineNumber", scope: !431, file: !69, line: 326, baseType: !137, size: 64, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "getColumnNumber", scope: !431, file: !69, line: 327, baseType: !137, size: 64, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "startDocument", scope: !126, file: !69, line: 734, baseType: !441, size: 64, offset: 768)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "startDocumentSAXFunc", file: !69, line: 496, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !99}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "endDocument", scope: !126, file: !69, line: 735, baseType: !446, size: 64, offset: 832)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "endDocumentSAXFunc", file: !69, line: 503, baseType: !442)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "startElement", scope: !126, file: !69, line: 736, baseType: !448, size: 64, offset: 896)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "startElementSAXFunc", file: !69, line: 512, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !99, !133, !452}
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "endElement", scope: !126, file: !69, line: 737, baseType: !454, size: 64, offset: 960)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "endElementSAXFunc", file: !69, line: 522, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !99, !133}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !126, file: !69, line: 738, baseType: !459, size: 64, offset: 1024)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "referenceSAXFunc", file: !69, line: 545, baseType: !455)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "characters", scope: !126, file: !69, line: 739, baseType: !461, size: 64, offset: 1088)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "charactersSAXFunc", file: !69, line: 555, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !99, !133, !70}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "ignorableWhitespace", scope: !126, file: !69, line: 740, baseType: !466, size: 64, offset: 1152)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "ignorableWhitespaceSAXFunc", file: !69, line: 567, baseType: !462)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "processingInstruction", scope: !126, file: !69, line: 741, baseType: !468, size: 64, offset: 1216)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "processingInstructionSAXFunc", file: !69, line: 578, baseType: !469)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !99, !133, !133}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !126, file: !69, line: 742, baseType: !473, size: 64, offset: 1280)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "commentSAXFunc", file: !69, line: 588, baseType: !455)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "warning", scope: !126, file: !69, line: 743, baseType: !475, size: 64, offset: 1344)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "warningSAXFunc", file: !69, line: 610, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !99, !231, null}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !126, file: !69, line: 744, baseType: !480, size: 64, offset: 1408)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "errorSAXFunc", file: !69, line: 620, baseType: !476)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "fatalError", scope: !126, file: !69, line: 745, baseType: !482, size: 64, offset: 1472)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "fatalErrorSAXFunc", file: !69, line: 632, baseType: !476)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "getParameterEntity", scope: !126, file: !69, line: 746, baseType: !484, size: 64, offset: 1536)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "getParameterEntitySAXFunc", file: !69, line: 401, baseType: !252)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "cdataBlock", scope: !126, file: !69, line: 747, baseType: !486, size: 64, offset: 1600)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "cdataBlockSAXFunc", file: !69, line: 598, baseType: !462)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "externalSubset", scope: !126, file: !69, line: 748, baseType: !488, size: 64, offset: 1664)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "externalSubsetSAXFunc", file: !69, line: 377, baseType: !130)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !126, file: !69, line: 749, baseType: !5, size: 32, offset: 1728)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !126, file: !69, line: 751, baseType: !99, size: 64, offset: 1792)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "startElementNs", scope: !126, file: !69, line: 752, baseType: !492, size: 64, offset: 1856)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "startElementNsSAX2Func", file: !69, line: 694, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !99, !133, !133, !133, !70, !452, !70, !70, !452}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "endElementNs", scope: !126, file: !69, line: 753, baseType: !497, size: 64, offset: 1920)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "endElementNsSAX2Func", file: !69, line: 715, baseType: !130)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "serror", scope: !126, file: !69, line: 754, baseType: !499, size: 64, offset: 1984)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStructuredErrorFunc", file: !62, line: 856, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !99, !503}
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorPtr", file: !62, line: 77, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlError", file: !62, line: 76, baseType: !506)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlError", file: !62, line: 78, size: 704, elements: !507)
!507 = !{!508, !509, !510, !511, !513, !514, !515, !516, !517, !518, !519, !520, !521}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !506, file: !62, line: 79, baseType: !70, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !506, file: !62, line: 80, baseType: !70, size: 32, offset: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !506, file: !62, line: 81, baseType: !167, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !506, file: !62, line: 82, baseType: !512, size: 32, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorLevel", file: !62, line: 29, baseType: !61)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !506, file: !62, line: 83, baseType: !167, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !506, file: !62, line: 84, baseType: !70, size: 32, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "str1", scope: !506, file: !62, line: 85, baseType: !167, size: 64, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "str2", scope: !506, file: !62, line: 86, baseType: !167, size: 64, offset: 384)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "str3", scope: !506, file: !62, line: 87, baseType: !167, size: 64, offset: 448)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "int1", scope: !506, file: !62, line: 88, baseType: !70, size: 32, offset: 512)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "int2", scope: !506, file: !62, line: 89, baseType: !70, size: 32, offset: 544)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ctxt", scope: !506, file: !62, line: 90, baseType: !99, size: 64, offset: 576)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !506, file: !62, line: 91, baseType: !99, size: 64, offset: 640)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !122, file: !69, line: 188, baseType: !99, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "myDoc", scope: !122, file: !69, line: 189, baseType: !524, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !278)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "wellFormed", scope: !122, file: !69, line: 190, baseType: !70, size: 32, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "replaceEntities", scope: !122, file: !69, line: 191, baseType: !70, size: 32, offset: 224)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !122, file: !69, line: 192, baseType: !133, size: 64, offset: 256)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !122, file: !69, line: 193, baseType: !133, size: 64, offset: 320)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !122, file: !69, line: 194, baseType: !70, size: 32, offset: 384)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "html", scope: !122, file: !69, line: 195, baseType: !70, size: 32, offset: 416)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !122, file: !69, line: 201, baseType: !149, size: 64, offset: 448)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "inputNr", scope: !122, file: !69, line: 202, baseType: !70, size: 32, offset: 512)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "inputMax", scope: !122, file: !69, line: 203, baseType: !70, size: 32, offset: 544)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "inputTab", scope: !122, file: !69, line: 204, baseType: !537, size: 64, offset: 576)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !122, file: !69, line: 207, baseType: !539, size: 64, offset: 640)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !266)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !122, file: !69, line: 208, baseType: !70, size: 32, offset: 704)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !122, file: !69, line: 209, baseType: !70, size: 32, offset: 736)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !122, file: !69, line: 210, baseType: !545, size: 64, offset: 768)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "record_info", scope: !122, file: !69, line: 212, baseType: !70, size: 32, offset: 832)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "node_seq", scope: !122, file: !69, line: 213, baseType: !548, size: 192, offset: 896)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserNodeInfoSeq", file: !69, line: 98, baseType: !549)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserNodeInfoSeq", file: !69, line: 100, size: 192, elements: !550)
!550 = !{!551, !552, !553}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !549, file: !69, line: 101, baseType: !229, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !549, file: !69, line: 102, baseType: !229, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !549, file: !69, line: 103, baseType: !554, size: 64, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserNodeInfo", file: !69, line: 86, baseType: !556)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserNodeInfo", file: !69, line: 89, size: 320, elements: !557)
!557 = !{!558, !561, !562, !563, !564}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !556, file: !69, line: 90, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "begin_pos", scope: !556, file: !69, line: 92, baseType: !229, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "begin_line", scope: !556, file: !69, line: 93, baseType: !229, size: 64, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "end_pos", scope: !556, file: !69, line: 94, baseType: !229, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !556, file: !69, line: 95, baseType: !229, size: 64, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "errNo", scope: !122, file: !69, line: 215, baseType: !70, size: 32, offset: 1088)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "hasExternalSubset", scope: !122, file: !69, line: 217, baseType: !70, size: 32, offset: 1120)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "hasPErefs", scope: !122, file: !69, line: 218, baseType: !70, size: 32, offset: 1152)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "external", scope: !122, file: !69, line: 219, baseType: !70, size: 32, offset: 1184)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !122, file: !69, line: 221, baseType: !70, size: 32, offset: 1216)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !122, file: !69, line: 222, baseType: !70, size: 32, offset: 1248)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "vctxt", scope: !122, file: !69, line: 223, baseType: !572, size: 896, offset: 1280)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidCtxt", file: !573, line: 80, baseType: !574)
!573 = !DIFile(filename: "/usr/include/libxml2/libxml/valid.h", directory: "", checksumkind: CSK_MD5, checksum: "3c082c0a5b81e1bc9fd9a21b69014584")
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlValidCtxt", file: !573, line: 82, size: 896, elements: !575)
!575 = !{!576, !577, !579, !581, !582, !583, !584, !585, !586, !587, !588, !592, !593, !594, !595, !601}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !574, file: !573, line: 83, baseType: !99, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !574, file: !573, line: 84, baseType: !578, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidityErrorFunc", file: !573, line: 42, baseType: !476)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "warning", scope: !574, file: !573, line: 85, baseType: !580, size: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidityWarningFunc", file: !573, line: 57, baseType: !476)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !574, file: !573, line: 88, baseType: !539, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !574, file: !573, line: 89, baseType: !70, size: 32, offset: 256)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !574, file: !573, line: 90, baseType: !70, size: 32, offset: 288)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !574, file: !573, line: 91, baseType: !545, size: 64, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "finishDtd", scope: !574, file: !573, line: 93, baseType: !5, size: 32, offset: 384)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !574, file: !573, line: 94, baseType: !524, size: 64, offset: 448)
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
!606 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !122, file: !69, line: 225, baseType: !607, size: 32, offset: 2176)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputState", file: !69, line: 131, baseType: !68)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !122, file: !69, line: 226, baseType: !70, size: 32, offset: 2208)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !122, file: !69, line: 228, baseType: !167, size: 64, offset: 2240)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !122, file: !69, line: 231, baseType: !133, size: 64, offset: 2304)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "nameNr", scope: !122, file: !69, line: 232, baseType: !70, size: 32, offset: 2368)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "nameMax", scope: !122, file: !69, line: 233, baseType: !70, size: 32, offset: 2400)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "nameTab", scope: !122, file: !69, line: 234, baseType: !452, size: 64, offset: 2432)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "nbChars", scope: !122, file: !69, line: 236, baseType: !615, size: 64, offset: 2496)
!615 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "checkIndex", scope: !122, file: !69, line: 237, baseType: !615, size: 64, offset: 2560)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "keepBlanks", scope: !122, file: !69, line: 238, baseType: !70, size: 32, offset: 2624)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "disableSAX", scope: !122, file: !69, line: 239, baseType: !70, size: 32, offset: 2656)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "inSubset", scope: !122, file: !69, line: 240, baseType: !70, size: 32, offset: 2688)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "intSubName", scope: !122, file: !69, line: 241, baseType: !133, size: 64, offset: 2752)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "extSubURI", scope: !122, file: !69, line: 242, baseType: !100, size: 64, offset: 2816)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "extSubSystem", scope: !122, file: !69, line: 243, baseType: !100, size: 64, offset: 2880)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !122, file: !69, line: 246, baseType: !185, size: 64, offset: 2944)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "spaceNr", scope: !122, file: !69, line: 247, baseType: !70, size: 32, offset: 3008)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "spaceMax", scope: !122, file: !69, line: 248, baseType: !70, size: 32, offset: 3040)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "spaceTab", scope: !122, file: !69, line: 249, baseType: !185, size: 64, offset: 3072)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !122, file: !69, line: 251, baseType: !70, size: 32, offset: 3136)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !122, file: !69, line: 252, baseType: !149, size: 64, offset: 3200)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !122, file: !69, line: 253, baseType: !70, size: 32, offset: 3264)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "nodelen", scope: !122, file: !69, line: 255, baseType: !70, size: 32, offset: 3296)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "nodemem", scope: !122, file: !69, line: 256, baseType: !70, size: 32, offset: 3328)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "pedantic", scope: !122, file: !69, line: 257, baseType: !70, size: 32, offset: 3360)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !122, file: !69, line: 258, baseType: !99, size: 64, offset: 3392)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "loadsubset", scope: !122, file: !69, line: 260, baseType: !70, size: 32, offset: 3456)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "linenumbers", scope: !122, file: !69, line: 261, baseType: !70, size: 32, offset: 3488)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "catalogs", scope: !122, file: !69, line: 262, baseType: !99, size: 64, offset: 3520)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "recovery", scope: !122, file: !69, line: 263, baseType: !70, size: 32, offset: 3584)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "progressive", scope: !122, file: !69, line: 264, baseType: !70, size: 32, offset: 3616)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !122, file: !69, line: 265, baseType: !640, size: 64, offset: 3648)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !332, line: 25, baseType: !641)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !332, line: 24, baseType: !331)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "atts", scope: !122, file: !69, line: 266, baseType: !452, size: 64, offset: 3712)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "maxatts", scope: !122, file: !69, line: 267, baseType: !70, size: 32, offset: 3776)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "docdict", scope: !122, file: !69, line: 268, baseType: !70, size: 32, offset: 3808)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "str_xml", scope: !122, file: !69, line: 273, baseType: !133, size: 64, offset: 3840)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "str_xmlns", scope: !122, file: !69, line: 274, baseType: !133, size: 64, offset: 3904)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "str_xml_ns", scope: !122, file: !69, line: 275, baseType: !133, size: 64, offset: 3968)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "sax2", scope: !122, file: !69, line: 280, baseType: !70, size: 32, offset: 4032)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "nsNr", scope: !122, file: !69, line: 281, baseType: !70, size: 32, offset: 4064)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "nsMax", scope: !122, file: !69, line: 282, baseType: !70, size: 32, offset: 4096)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "nsTab", scope: !122, file: !69, line: 283, baseType: !452, size: 64, offset: 4160)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "attallocs", scope: !122, file: !69, line: 284, baseType: !185, size: 64, offset: 4224)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "pushTab", scope: !122, file: !69, line: 285, baseType: !655, size: 64, offset: 4288)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStartTag", file: !69, line: 172, baseType: !657)
!657 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlStartTag", file: !69, line: 172, flags: DIFlagFwdDecl)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "attsDefault", scope: !122, file: !69, line: 286, baseType: !659, size: 64, offset: 4352)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !660, line: 22, baseType: !661)
!660 = !DIFile(filename: "/usr/include/libxml2/libxml/hash.h", directory: "", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !660, line: 21, baseType: !663)
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !660, line: 21, flags: DIFlagFwdDecl)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "attsSpecial", scope: !122, file: !69, line: 287, baseType: !659, size: 64, offset: 4416)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "nsWellFormed", scope: !122, file: !69, line: 288, baseType: !70, size: 32, offset: 4480)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !122, file: !69, line: 289, baseType: !70, size: 32, offset: 4512)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "dictNames", scope: !122, file: !69, line: 294, baseType: !70, size: 32, offset: 4544)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "freeElemsNr", scope: !122, file: !69, line: 295, baseType: !70, size: 32, offset: 4576)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "freeElems", scope: !122, file: !69, line: 296, baseType: !539, size: 64, offset: 4608)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "freeAttrsNr", scope: !122, file: !69, line: 297, baseType: !70, size: 32, offset: 4672)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "freeAttrs", scope: !122, file: !69, line: 298, baseType: !672, size: 64, offset: 4736)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttrPtr", file: !4, line: 432, baseType: !673)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttr", file: !4, line: 431, baseType: !342)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "lastError", scope: !122, file: !69, line: 303, baseType: !505, size: 704, offset: 4800)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "parseMode", scope: !122, file: !69, line: 304, baseType: !677, size: 32, offset: 5504)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserMode", file: !69, line: 170, baseType: !90)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "nbentities", scope: !122, file: !69, line: 305, baseType: !229, size: 64, offset: 5568)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "sizeentities", scope: !122, file: !69, line: 306, baseType: !229, size: 64, offset: 5632)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfo", scope: !122, file: !69, line: 309, baseType: !554, size: 64, offset: 5696)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfoNr", scope: !122, file: !69, line: 310, baseType: !70, size: 32, offset: 5760)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfoMax", scope: !122, file: !69, line: 311, baseType: !70, size: 32, offset: 5792)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfoTab", scope: !122, file: !69, line: 312, baseType: !554, size: 64, offset: 5824)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "input_id", scope: !122, file: !69, line: 314, baseType: !70, size: 32, offset: 5888)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "sizeentcopy", scope: !122, file: !69, line: 315, baseType: !229, size: 64, offset: 5952)
!686 = !DILocation(line: 6, column: 22, scope: !114)
!687 = !DILocalVariable(name: "doc", scope: !114, file: !1, line: 7, type: !524)
!688 = !DILocation(line: 7, column: 15, scope: !114)
!689 = !DILocalVariable(name: "node", scope: !114, file: !1, line: 8, type: !539)
!690 = !DILocation(line: 8, column: 16, scope: !114)
!691 = !DILocalVariable(name: "lastChild", scope: !114, file: !1, line: 8, type: !539)
!692 = !DILocation(line: 8, column: 22, scope: !114)
!693 = !DILocalVariable(name: "ch", scope: !114, file: !1, line: 9, type: !100)
!694 = !DILocation(line: 9, column: 14, scope: !114)
!695 = !DILocalVariable(name: "len", scope: !114, file: !1, line: 10, type: !70)
!696 = !DILocation(line: 10, column: 9, scope: !114)
!697 = !DILocalVariable(name: "nodelen", scope: !114, file: !1, line: 10, type: !70)
!698 = !DILocation(line: 10, column: 14, scope: !114)
!699 = !DILocalVariable(name: "nodemem", scope: !114, file: !1, line: 10, type: !70)
!700 = !DILocation(line: 10, column: 23, scope: !114)
!701 = !DILocalVariable(name: "size", scope: !114, file: !1, line: 10, type: !70)
!702 = !DILocation(line: 10, column: 32, scope: !114)
!703 = !DILocalVariable(name: "coalesceText", scope: !114, file: !1, line: 11, type: !70)
!704 = !DILocation(line: 11, column: 9, scope: !114)
!705 = !DILocation(line: 13, column: 12, scope: !114)
!706 = !DILocation(line: 13, column: 10, scope: !114)
!707 = !DILocation(line: 14, column: 9, scope: !708)
!708 = distinct !DILexicalBlock(scope: !114, file: !1, line: 14, column: 9)
!709 = !DILocation(line: 14, column: 14, scope: !708)
!710 = !DILocation(line: 14, column: 9, scope: !114)
!711 = !DILocation(line: 14, column: 23, scope: !708)
!712 = !DILocation(line: 16, column: 11, scope: !114)
!713 = !DILocation(line: 16, column: 9, scope: !114)
!714 = !DILocation(line: 17, column: 9, scope: !715)
!715 = distinct !DILexicalBlock(scope: !114, file: !1, line: 17, column: 9)
!716 = !DILocation(line: 17, column: 13, scope: !715)
!717 = !DILocation(line: 17, column: 9, scope: !114)
!718 = !DILocation(line: 18, column: 27, scope: !719)
!719 = distinct !DILexicalBlock(scope: !715, file: !1, line: 17, column: 22)
!720 = !DILocation(line: 18, column: 9, scope: !719)
!721 = !DILocation(line: 19, column: 9, scope: !719)
!722 = !DILocation(line: 22, column: 12, scope: !114)
!723 = !DILocation(line: 22, column: 10, scope: !114)
!724 = !DILocation(line: 23, column: 9, scope: !725)
!725 = distinct !DILexicalBlock(scope: !114, file: !1, line: 23, column: 9)
!726 = !DILocation(line: 23, column: 14, scope: !725)
!727 = !DILocation(line: 23, column: 9, scope: !114)
!728 = !DILocation(line: 24, column: 20, scope: !729)
!729 = distinct !DILexicalBlock(scope: !725, file: !1, line: 23, column: 23)
!730 = !DILocation(line: 24, column: 9, scope: !729)
!731 = !DILocation(line: 25, column: 27, scope: !729)
!732 = !DILocation(line: 25, column: 9, scope: !729)
!733 = !DILocation(line: 26, column: 9, scope: !729)
!734 = !DILocation(line: 28, column: 26, scope: !114)
!735 = !DILocation(line: 28, column: 31, scope: !114)
!736 = !DILocation(line: 28, column: 5, scope: !114)
!737 = !DILocation(line: 30, column: 17, scope: !114)
!738 = !DILocation(line: 30, column: 15, scope: !114)
!739 = !DILocation(line: 31, column: 9, scope: !740)
!740 = distinct !DILexicalBlock(scope: !114, file: !1, line: 31, column: 9)
!741 = !DILocation(line: 31, column: 19, scope: !740)
!742 = !DILocation(line: 31, column: 9, scope: !114)
!743 = !DILocation(line: 32, column: 20, scope: !744)
!744 = distinct !DILexicalBlock(scope: !740, file: !1, line: 31, column: 28)
!745 = !DILocation(line: 32, column: 9, scope: !744)
!746 = !DILocation(line: 33, column: 27, scope: !744)
!747 = !DILocation(line: 33, column: 9, scope: !744)
!748 = !DILocation(line: 34, column: 9, scope: !744)
!749 = !DILocation(line: 36, column: 17, scope: !114)
!750 = !DILocation(line: 36, column: 23, scope: !114)
!751 = !DILocation(line: 36, column: 5, scope: !114)
!752 = !DILocation(line: 38, column: 24, scope: !114)
!753 = !DILocation(line: 38, column: 5, scope: !114)
!754 = !DILocation(line: 39, column: 17, scope: !114)
!755 = !DILocation(line: 39, column: 21, scope: !114)
!756 = !DILocation(line: 39, column: 5, scope: !114)
!757 = !DILocation(line: 40, column: 24, scope: !114)
!758 = !DILocation(line: 40, column: 5, scope: !114)
!759 = !DILocation(line: 41, column: 17, scope: !114)
!760 = !DILocation(line: 41, column: 25, scope: !114)
!761 = !DILocation(line: 41, column: 5, scope: !114)
!762 = !DILocation(line: 42, column: 24, scope: !114)
!763 = !DILocation(line: 42, column: 5, scope: !114)
!764 = !DILocation(line: 43, column: 17, scope: !114)
!765 = !DILocation(line: 43, column: 25, scope: !114)
!766 = !DILocation(line: 43, column: 5, scope: !114)
!767 = !DILocation(line: 44, column: 24, scope: !114)
!768 = !DILocation(line: 44, column: 5, scope: !114)
!769 = !DILocation(line: 45, column: 17, scope: !114)
!770 = !DILocation(line: 45, column: 22, scope: !114)
!771 = !DILocation(line: 45, column: 5, scope: !114)
!772 = !DILocation(line: 46, column: 24, scope: !114)
!773 = !DILocation(line: 46, column: 5, scope: !114)
!774 = !DILocation(line: 48, column: 18, scope: !114)
!775 = !DILocation(line: 48, column: 5, scope: !114)
!776 = !DILocation(line: 48, column: 11, scope: !114)
!777 = !DILocation(line: 48, column: 16, scope: !114)
!778 = !DILocation(line: 49, column: 21, scope: !114)
!779 = !DILocation(line: 49, column: 5, scope: !114)
!780 = !DILocation(line: 49, column: 11, scope: !114)
!781 = !DILocation(line: 49, column: 19, scope: !114)
!782 = !DILocation(line: 50, column: 21, scope: !114)
!783 = !DILocation(line: 50, column: 5, scope: !114)
!784 = !DILocation(line: 50, column: 11, scope: !114)
!785 = !DILocation(line: 50, column: 19, scope: !114)
!786 = !DILocation(line: 52, column: 29, scope: !114)
!787 = !DILocation(line: 52, column: 33, scope: !114)
!788 = !DILocation(line: 52, column: 28, scope: !114)
!789 = !DILocation(line: 52, column: 38, scope: !114)
!790 = !DILocation(line: 52, column: 21, scope: !114)
!791 = !DILocation(line: 52, column: 8, scope: !114)
!792 = !DILocation(line: 53, column: 9, scope: !793)
!793 = distinct !DILexicalBlock(scope: !114, file: !1, line: 53, column: 9)
!794 = !DILocation(line: 53, column: 12, scope: !793)
!795 = !DILocation(line: 53, column: 9, scope: !114)
!796 = !DILocation(line: 54, column: 20, scope: !797)
!797 = distinct !DILexicalBlock(scope: !793, file: !1, line: 53, column: 21)
!798 = !DILocation(line: 54, column: 9, scope: !797)
!799 = !DILocation(line: 55, column: 27, scope: !797)
!800 = !DILocation(line: 55, column: 9, scope: !797)
!801 = !DILocation(line: 56, column: 9, scope: !797)
!802 = !DILocation(line: 58, column: 24, scope: !114)
!803 = !DILocation(line: 58, column: 29, scope: !114)
!804 = !DILocation(line: 58, column: 33, scope: !114)
!805 = !DILocation(line: 58, column: 28, scope: !114)
!806 = !DILocation(line: 58, column: 38, scope: !114)
!807 = !DILocation(line: 58, column: 5, scope: !114)
!808 = !DILocation(line: 59, column: 5, scope: !114)
!809 = !DILocation(line: 59, column: 8, scope: !114)
!810 = !DILocation(line: 59, column: 13, scope: !114)
!811 = !DILocation(line: 61, column: 9, scope: !812)
!812 = distinct !DILexicalBlock(scope: !114, file: !1, line: 61, column: 9)
!813 = !DILocation(line: 61, column: 20, scope: !812)
!814 = !DILocation(line: 61, column: 25, scope: !812)
!815 = !DILocation(line: 61, column: 42, scope: !812)
!816 = !DILocation(line: 61, column: 45, scope: !812)
!817 = !DILocation(line: 61, column: 56, scope: !812)
!818 = !DILocation(line: 61, column: 64, scope: !812)
!819 = !DILocation(line: 61, column: 72, scope: !812)
!820 = !DILocation(line: 62, column: 9, scope: !812)
!821 = !DILocation(line: 62, column: 15, scope: !812)
!822 = !DILocation(line: 62, column: 23, scope: !812)
!823 = !DILocation(line: 62, column: 28, scope: !812)
!824 = !DILocation(line: 62, column: 31, scope: !812)
!825 = !DILocation(line: 62, column: 36, scope: !812)
!826 = !DILocation(line: 61, column: 9, scope: !114)
!827 = !DILocation(line: 63, column: 48, scope: !828)
!828 = distinct !DILexicalBlock(scope: !812, file: !1, line: 62, column: 41)
!829 = !DILocation(line: 63, column: 53, scope: !828)
!830 = !DILocation(line: 63, column: 41, scope: !828)
!831 = !DILocation(line: 63, column: 9, scope: !828)
!832 = !DILocation(line: 63, column: 20, scope: !828)
!833 = !DILocation(line: 63, column: 28, scope: !828)
!834 = !DILocation(line: 64, column: 13, scope: !835)
!835 = distinct !DILexicalBlock(scope: !828, file: !1, line: 64, column: 13)
!836 = !DILocation(line: 64, column: 24, scope: !835)
!837 = !DILocation(line: 64, column: 32, scope: !835)
!838 = !DILocation(line: 64, column: 13, scope: !828)
!839 = !DILocation(line: 65, column: 18, scope: !840)
!840 = distinct !DILexicalBlock(scope: !835, file: !1, line: 64, column: 41)
!841 = !DILocation(line: 65, column: 13, scope: !840)
!842 = !DILocation(line: 66, column: 24, scope: !840)
!843 = !DILocation(line: 66, column: 13, scope: !840)
!844 = !DILocation(line: 67, column: 31, scope: !840)
!845 = !DILocation(line: 67, column: 13, scope: !840)
!846 = !DILocation(line: 68, column: 13, scope: !840)
!847 = !DILocation(line: 70, column: 25, scope: !828)
!848 = !DILocation(line: 70, column: 9, scope: !828)
!849 = !DILocation(line: 70, column: 15, scope: !828)
!850 = !DILocation(line: 70, column: 23, scope: !828)
!851 = !DILocation(line: 71, column: 5, scope: !828)
!852 = !DILocation(line: 73, column: 9, scope: !853)
!853 = distinct !DILexicalBlock(scope: !114, file: !1, line: 73, column: 9)
!854 = !DILocation(line: 73, column: 20, scope: !853)
!855 = !DILocation(line: 73, column: 25, scope: !853)
!856 = !DILocation(line: 73, column: 42, scope: !853)
!857 = !DILocation(line: 73, column: 45, scope: !853)
!858 = !DILocation(line: 73, column: 56, scope: !853)
!859 = !DILocation(line: 73, column: 64, scope: !853)
!860 = !DILocation(line: 73, column: 72, scope: !853)
!861 = !DILocation(line: 74, column: 9, scope: !853)
!862 = !DILocation(line: 74, column: 15, scope: !853)
!863 = !DILocation(line: 74, column: 23, scope: !853)
!864 = !DILocation(line: 74, column: 27, scope: !853)
!865 = !DILocation(line: 74, column: 31, scope: !853)
!866 = !DILocation(line: 74, column: 37, scope: !853)
!867 = !DILocation(line: 74, column: 47, scope: !853)
!868 = !DILocation(line: 74, column: 45, scope: !853)
!869 = !DILocation(line: 74, column: 51, scope: !853)
!870 = !DILocation(line: 74, column: 58, scope: !853)
!871 = !DILocation(line: 74, column: 64, scope: !853)
!872 = !DILocation(line: 74, column: 56, scope: !853)
!873 = !DILocation(line: 73, column: 9, scope: !114)
!874 = !DILocalVariable(name: "newbuf", scope: !875, file: !1, line: 75, type: !100)
!875 = distinct !DILexicalBlock(scope: !853, file: !1, line: 74, column: 73)
!876 = !DILocation(line: 75, column: 18, scope: !875)
!877 = !DILocation(line: 75, column: 38, scope: !875)
!878 = !DILocation(line: 75, column: 49, scope: !875)
!879 = !DILocation(line: 75, column: 60, scope: !875)
!880 = !DILocation(line: 75, column: 69, scope: !875)
!881 = !DILocation(line: 76, column: 13, scope: !882)
!882 = distinct !DILexicalBlock(scope: !875, file: !1, line: 76, column: 13)
!883 = !DILocation(line: 76, column: 20, scope: !882)
!884 = !DILocation(line: 76, column: 13, scope: !875)
!885 = !DILocation(line: 77, column: 18, scope: !886)
!886 = distinct !DILexicalBlock(scope: !882, file: !1, line: 76, column: 29)
!887 = !DILocation(line: 77, column: 13, scope: !886)
!888 = !DILocation(line: 78, column: 24, scope: !886)
!889 = !DILocation(line: 78, column: 13, scope: !886)
!890 = !DILocation(line: 79, column: 31, scope: !886)
!891 = !DILocation(line: 79, column: 13, scope: !886)
!892 = !DILocation(line: 80, column: 13, scope: !886)
!893 = !DILocation(line: 82, column: 25, scope: !875)
!894 = !DILocation(line: 82, column: 9, scope: !875)
!895 = !DILocation(line: 82, column: 15, scope: !875)
!896 = !DILocation(line: 82, column: 23, scope: !875)
!897 = !DILocation(line: 83, column: 30, scope: !875)
!898 = !DILocation(line: 83, column: 9, scope: !875)
!899 = !DILocation(line: 83, column: 20, scope: !875)
!900 = !DILocation(line: 83, column: 28, scope: !875)
!901 = !DILocation(line: 84, column: 5, scope: !875)
!902 = !DILocation(line: 86, column: 5, scope: !114)
!903 = !DILocation(line: 87, column: 13, scope: !114)
!904 = !DILocation(line: 87, column: 24, scope: !114)
!905 = !DILocation(line: 87, column: 32, scope: !114)
!906 = !DILocation(line: 87, column: 38, scope: !114)
!907 = !DILocation(line: 87, column: 48, scope: !114)
!908 = !DILocation(line: 87, column: 52, scope: !114)
!909 = !DILocation(line: 87, column: 5, scope: !114)
!910 = !DILocation(line: 88, column: 22, scope: !114)
!911 = !DILocation(line: 88, column: 5, scope: !114)
!912 = !DILocation(line: 88, column: 11, scope: !114)
!913 = !DILocation(line: 88, column: 19, scope: !114)
!914 = !DILocation(line: 89, column: 5, scope: !114)
!915 = !DILocation(line: 89, column: 16, scope: !114)
!916 = !DILocation(line: 89, column: 24, scope: !114)
!917 = !DILocation(line: 89, column: 30, scope: !114)
!918 = !DILocation(line: 89, column: 39, scope: !114)
!919 = !DILocation(line: 91, column: 10, scope: !114)
!920 = !DILocation(line: 91, column: 5, scope: !114)
!921 = !DILocation(line: 92, column: 16, scope: !114)
!922 = !DILocation(line: 92, column: 5, scope: !114)
!923 = !DILocation(line: 93, column: 23, scope: !114)
!924 = !DILocation(line: 93, column: 5, scope: !114)
!925 = !DILocation(line: 94, column: 5, scope: !114)
!926 = !DILocation(line: 95, column: 1, scope: !114)
!927 = distinct !DISubprogram(name: "memcpy", scope: !928, file: !928, line: 12, type: !929, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !117)
!928 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!929 = !DISubroutineType(types: !930)
!930 = !{!99, !99, !931, !933}
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !934, line: 46, baseType: !229)
!934 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!935 = !DILocalVariable(name: "destaddr", arg: 1, scope: !927, file: !928, line: 12, type: !99)
!936 = !DILocation(line: 12, column: 20, scope: !927)
!937 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !927, file: !928, line: 12, type: !931)
!938 = !DILocation(line: 12, column: 42, scope: !927)
!939 = !DILocalVariable(name: "len", arg: 3, scope: !927, file: !928, line: 12, type: !933)
!940 = !DILocation(line: 12, column: 58, scope: !927)
!941 = !DILocalVariable(name: "dest", scope: !927, file: !928, line: 13, type: !167)
!942 = !DILocation(line: 13, column: 9, scope: !927)
!943 = !DILocation(line: 13, column: 16, scope: !927)
!944 = !DILocalVariable(name: "src", scope: !927, file: !928, line: 14, type: !231)
!945 = !DILocation(line: 14, column: 15, scope: !927)
!946 = !DILocation(line: 14, column: 21, scope: !927)
!947 = !DILocation(line: 16, column: 3, scope: !927)
!948 = !DILocation(line: 16, column: 13, scope: !927)
!949 = !DILocation(line: 16, column: 16, scope: !927)
!950 = !DILocation(line: 17, column: 19, scope: !927)
!951 = !DILocation(line: 17, column: 15, scope: !927)
!952 = !DILocation(line: 17, column: 10, scope: !927)
!953 = !DILocation(line: 17, column: 13, scope: !927)
!954 = distinct !{!954, !947, !950, !955}
!955 = !{!"llvm.loop.mustprogress"}
!956 = !DILocation(line: 18, column: 10, scope: !927)
!957 = !DILocation(line: 18, column: 3, scope: !927)

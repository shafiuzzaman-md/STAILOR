; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/070_parser.c_11894_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/070_parser.c_11894_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
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

@.str = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"<![CDATA[\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/070_parser.c_11894_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !513 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt*, align 8
  %3 = alloca %struct._xmlParserInput*, align 8
  %4 = alloca %struct._xmlSAXHandler*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !517, metadata !DIExpression()), !dbg !689
  call void @llvm.dbg.declare(metadata %struct._xmlParserInput** %3, metadata !690, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler** %4, metadata !692, metadata !DIExpression()), !dbg !693
  %8 = call %struct._xmlParserCtxt* @xmlNewParserCtxt(), !dbg !694
  store %struct._xmlParserCtxt* %8, %struct._xmlParserCtxt** %2, align 8, !dbg !695
  %9 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !696
  %10 = icmp eq %struct._xmlParserCtxt* %9, null, !dbg !698
  br i1 %10, label %11, label %12, !dbg !699

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !700
  br label %159, !dbg !700

12:                                               ; preds = %0
  %13 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !701
  %14 = call %struct._xmlParserInput* @xmlNewInputStream(%struct._xmlParserCtxt* noundef %13), !dbg !702
  store %struct._xmlParserInput* %14, %struct._xmlParserInput** %3, align 8, !dbg !703
  %15 = load %struct._xmlParserInput*, %struct._xmlParserInput** %3, align 8, !dbg !704
  %16 = icmp eq %struct._xmlParserInput* %15, null, !dbg !706
  br i1 %16, label %17, label %19, !dbg !707

17:                                               ; preds = %12
  %18 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !708
  call void @xmlFreeParserCtxt(%struct._xmlParserCtxt* noundef %18), !dbg !710
  store i32 0, i32* %1, align 4, !dbg !711
  br label %159, !dbg !711

19:                                               ; preds = %12
  %20 = load %struct._xmlParserInput*, %struct._xmlParserInput** %3, align 8, !dbg !712
  %21 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !713
  %22 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %21, i32 0, i32 9, !dbg !714
  store %struct._xmlParserInput* %20, %struct._xmlParserInput** %22, align 8, !dbg !715
  %23 = call noalias i8* @malloc(i64 noundef 256) #8, !dbg !716
  %24 = bitcast i8* %23 to %struct._xmlSAXHandler*, !dbg !717
  store %struct._xmlSAXHandler* %24, %struct._xmlSAXHandler** %4, align 8, !dbg !718
  %25 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %4, align 8, !dbg !719
  %26 = icmp eq %struct._xmlSAXHandler* %25, null, !dbg !721
  br i1 %26, label %27, label %30, !dbg !722

27:                                               ; preds = %19
  %28 = load %struct._xmlParserInput*, %struct._xmlParserInput** %3, align 8, !dbg !723
  call void @xmlFreeInputStream(%struct._xmlParserInput* noundef %28), !dbg !725
  %29 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !726
  call void @xmlFreeParserCtxt(%struct._xmlParserCtxt* noundef %29), !dbg !727
  store i32 0, i32* %1, align 4, !dbg !728
  br label %159, !dbg !728

30:                                               ; preds = %19
  %31 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %4, align 8, !dbg !729
  %32 = bitcast %struct._xmlSAXHandler* %31 to i8*, !dbg !730
  %33 = call i8* @memset(i8* %32, i32 0, i64 256), !dbg !730
  %34 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %4, align 8, !dbg !731
  %35 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !732
  %36 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %35, i32 0, i32 0, !dbg !733
  store %struct._xmlSAXHandler* %34, %struct._xmlSAXHandler** %36, align 8, !dbg !734
  %37 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !735
  %38 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %37, i32 0, i32 36, !dbg !736
  store i32 0, i32* %38, align 4, !dbg !737
  %39 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !738
  %40 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %39, i32 0, i32 1, !dbg !739
  store i8* null, i8** %40, align 8, !dbg !740
  %41 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %4, align 8, !dbg !741
  %42 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %41, i32 0, i32 25, !dbg !742
  store void (i8*, i8*, i32)* inttoptr (i64 1 to void (i8*, i8*, i32)*), void (i8*, i8*, i32)** %42, align 8, !dbg !743
  call void @llvm.dbg.declare(metadata i64* %5, metadata !744, metadata !DIExpression()), !dbg !747
  store i64 20, i64* %5, align 8, !dbg !747
  call void @llvm.dbg.declare(metadata i8** %6, metadata !748, metadata !DIExpression()), !dbg !749
  %43 = load i64, i64* %5, align 8, !dbg !750
  %44 = call noalias i8* @malloc(i64 noundef %43) #8, !dbg !751
  store i8* %44, i8** %6, align 8, !dbg !749
  %45 = load i8*, i8** %6, align 8, !dbg !752
  %46 = icmp eq i8* %45, null, !dbg !754
  br i1 %46, label %47, label %52, !dbg !755

47:                                               ; preds = %30
  %48 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %4, align 8, !dbg !756
  %49 = bitcast %struct._xmlSAXHandler* %48 to i8*, !dbg !756
  call void @free(i8* noundef %49) #8, !dbg !758
  %50 = load %struct._xmlParserInput*, %struct._xmlParserInput** %3, align 8, !dbg !759
  call void @xmlFreeInputStream(%struct._xmlParserInput* noundef %50), !dbg !760
  %51 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !761
  call void @xmlFreeParserCtxt(%struct._xmlParserCtxt* noundef %51), !dbg !762
  store i32 0, i32* %1, align 4, !dbg !763
  br label %159, !dbg !763

52:                                               ; preds = %30
  %53 = load i8*, i8** %6, align 8, !dbg !764
  %54 = load i64, i64* %5, align 8, !dbg !765
  call void @klee_make_symbolic(i8* noundef %53, i64 noundef %54, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)), !dbg !766
  %55 = load i8*, i8** %6, align 8, !dbg !767
  %56 = load i64, i64* %5, align 8, !dbg !768
  %57 = sub i64 %56, 1, !dbg !769
  %58 = getelementptr inbounds i8, i8* %55, i64 %57, !dbg !767
  store i8 0, i8* %58, align 1, !dbg !770
  %59 = load i8*, i8** %6, align 8, !dbg !771
  %60 = load %struct._xmlParserInput*, %struct._xmlParserInput** %3, align 8, !dbg !772
  %61 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %60, i32 0, i32 3, !dbg !773
  store i8* %59, i8** %61, align 8, !dbg !774
  %62 = load i8*, i8** %6, align 8, !dbg !775
  %63 = load %struct._xmlParserInput*, %struct._xmlParserInput** %3, align 8, !dbg !776
  %64 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %63, i32 0, i32 4, !dbg !777
  store i8* %62, i8** %64, align 8, !dbg !778
  call void @llvm.dbg.declare(metadata i32* %7, metadata !779, metadata !DIExpression()), !dbg !780
  %65 = bitcast i32* %7 to i8*, !dbg !781
  call void @klee_make_symbolic(i8* noundef %65, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !782
  %66 = load %struct._xmlParserInput*, %struct._xmlParserInput** %3, align 8, !dbg !783
  %67 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %66, i32 0, i32 4, !dbg !784
  %68 = load i8*, i8** %67, align 8, !dbg !785
  %69 = getelementptr inbounds i8, i8* %68, i64 9, !dbg !785
  store i8* %69, i8** %67, align 8, !dbg !785
  %70 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !786
  %71 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %70, i32 0, i32 0, !dbg !788
  %72 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %71, align 8, !dbg !788
  %73 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %72, i32 0, i32 25, !dbg !789
  %74 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %73, align 8, !dbg !789
  %75 = icmp ne void (i8*, i8*, i32)* %74, null, !dbg !790
  br i1 %75, label %76, label %116, !dbg !791

76:                                               ; preds = %52
  %77 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !792
  %78 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %77, i32 0, i32 36, !dbg !793
  %79 = load i32, i32* %78, align 4, !dbg !793
  %80 = icmp ne i32 %79, 0, !dbg !792
  br i1 %80, label %116, label %81, !dbg !794

81:                                               ; preds = %76
  %82 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !795
  %83 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %82, i32 0, i32 9, !dbg !798
  %84 = load %struct._xmlParserInput*, %struct._xmlParserInput** %83, align 8, !dbg !798
  %85 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %84, i32 0, i32 4, !dbg !799
  %86 = load i8*, i8** %85, align 8, !dbg !799
  %87 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !800
  %88 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %87, i32 0, i32 9, !dbg !801
  %89 = load %struct._xmlParserInput*, %struct._xmlParserInput** %88, align 8, !dbg !801
  %90 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %89, i32 0, i32 3, !dbg !802
  %91 = load i8*, i8** %90, align 8, !dbg !802
  %92 = ptrtoint i8* %86 to i64, !dbg !803
  %93 = ptrtoint i8* %91 to i64, !dbg !803
  %94 = sub i64 %92, %93, !dbg !803
  %95 = icmp sge i64 %94, 9, !dbg !804
  br i1 %95, label %96, label %115, !dbg !805

96:                                               ; preds = %81
  %97 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !806
  %98 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %97, i32 0, i32 9, !dbg !807
  %99 = load %struct._xmlParserInput*, %struct._xmlParserInput** %98, align 8, !dbg !807
  %100 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %99, i32 0, i32 4, !dbg !808
  %101 = load i8*, i8** %100, align 8, !dbg !808
  %102 = getelementptr inbounds i8, i8* %101, i64 -9, !dbg !806
  %103 = call i32 @strncmp(i8* noundef %102, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 noundef 9) #9, !dbg !809
  %104 = icmp ne i32 %103, 0, !dbg !809
  br i1 %104, label %115, label %105, !dbg !810

105:                                              ; preds = %96
  %106 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !811
  %107 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !813
  %108 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %107, i32 0, i32 0, !dbg !814
  %109 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %108, align 8, !dbg !814
  %110 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %109, i32 0, i32 25, !dbg !815
  %111 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %110, align 8, !dbg !815
  %112 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !816
  %113 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %112, i32 0, i32 1, !dbg !817
  %114 = load i8*, i8** %113, align 8, !dbg !817
  call void %111(i8* noundef %114, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 noundef 0), !dbg !813
  br label %115, !dbg !818

115:                                              ; preds = %105, %96, %81
  br label %153, !dbg !819

116:                                              ; preds = %76, %52
  %117 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !820
  %118 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %117, i32 0, i32 0, !dbg !822
  %119 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %118, align 8, !dbg !822
  %120 = icmp ne %struct._xmlSAXHandler* %119, null, !dbg !823
  br i1 %120, label %121, label %152, !dbg !824

121:                                              ; preds = %116
  %122 = load i32, i32* %7, align 4, !dbg !825
  %123 = icmp sgt i32 %122, 0, !dbg !826
  br i1 %123, label %124, label %152, !dbg !827

124:                                              ; preds = %121
  %125 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !828
  %126 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %125, i32 0, i32 36, !dbg !829
  %127 = load i32, i32* %126, align 4, !dbg !829
  %128 = icmp ne i32 %127, 0, !dbg !828
  br i1 %128, label %152, label %129, !dbg !830

129:                                              ; preds = %124
  %130 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !831
  %131 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %130, i32 0, i32 0, !dbg !834
  %132 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %131, align 8, !dbg !834
  %133 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %132, i32 0, i32 25, !dbg !835
  %134 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %133, align 8, !dbg !835
  %135 = icmp ne void (i8*, i8*, i32)* %134, null, !dbg !836
  br i1 %135, label %136, label %151, !dbg !837

136:                                              ; preds = %129
  %137 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !838
  %138 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %137, i32 0, i32 0, !dbg !839
  %139 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %138, align 8, !dbg !839
  %140 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %139, i32 0, i32 25, !dbg !840
  %141 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %140, align 8, !dbg !840
  %142 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !841
  %143 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %142, i32 0, i32 1, !dbg !842
  %144 = load i8*, i8** %143, align 8, !dbg !842
  %145 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !843
  %146 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %145, i32 0, i32 9, !dbg !844
  %147 = load %struct._xmlParserInput*, %struct._xmlParserInput** %146, align 8, !dbg !844
  %148 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %147, i32 0, i32 4, !dbg !845
  %149 = load i8*, i8** %148, align 8, !dbg !845
  %150 = load i32, i32* %7, align 4, !dbg !846
  call void %141(i8* noundef %144, i8* noundef %149, i32 noundef %150), !dbg !838
  br label %151, !dbg !838

151:                                              ; preds = %136, %129
  br label %152, !dbg !847

152:                                              ; preds = %151, %124, %121, %116
  br label %153

153:                                              ; preds = %152, %115
  %154 = load i8*, i8** %6, align 8, !dbg !848
  call void @free(i8* noundef %154) #8, !dbg !849
  %155 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %4, align 8, !dbg !850
  %156 = bitcast %struct._xmlSAXHandler* %155 to i8*, !dbg !850
  call void @free(i8* noundef %156) #8, !dbg !851
  %157 = load %struct._xmlParserInput*, %struct._xmlParserInput** %3, align 8, !dbg !852
  call void @xmlFreeInputStream(%struct._xmlParserInput* noundef %157), !dbg !853
  %158 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !854
  call void @xmlFreeParserCtxt(%struct._xmlParserCtxt* noundef %158), !dbg !855
  store i32 0, i32* %1, align 4, !dbg !856
  br label %159, !dbg !856

159:                                              ; preds = %153, %47, %27, %17, %11
  %160 = load i32, i32* %1, align 4, !dbg !857
  ret i32 %160, !dbg !857
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._xmlParserCtxt* @xmlNewParserCtxt() #2

declare %struct._xmlParserInput* @xmlNewInputStream(%struct._xmlParserCtxt* noundef) #2

declare void @xmlFreeParserCtxt(%struct._xmlParserCtxt* noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

declare void @xmlFreeInputStream(%struct._xmlParserInput* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !858 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !862, metadata !DIExpression()), !dbg !863
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !864, metadata !DIExpression()), !dbg !865
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !866, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.declare(metadata i8** %7, metadata !868, metadata !DIExpression()), !dbg !869
  %8 = load i8*, i8** %4, align 8, !dbg !870
  store i8* %8, i8** %7, align 8, !dbg !869
  br label %9, !dbg !871

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !872
  %11 = add i64 %10, -1, !dbg !872
  store i64 %11, i64* %6, align 8, !dbg !872
  %12 = icmp ugt i64 %10, 0, !dbg !873
  br i1 %12, label %13, label %18, !dbg !871

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !874
  %15 = trunc i32 %14 to i8, !dbg !874
  %16 = load i8*, i8** %7, align 8, !dbg !875
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !875
  store i8* %17, i8** %7, align 8, !dbg !875
  store i8 %15, i8* %16, align 1, !dbg !876
  br label %9, !dbg !871, !llvm.loop !877

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !879
  ret i8* %19, !dbg !880
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !503}
!llvm.module.flags = !{!505, !506, !507, !508, !509, !510, !511}
!llvm.ident = !{!512, !512}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !98, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/070_parser.c_11894_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "04feb6aa45716ab3858146f6888780e0")
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
!98 = !{!99, !100, !467, !147, !110, !226, !211}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXHandlerPtr", file: !4, line: 45, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXHandler", file: !4, line: 44, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXHandler", file: !69, line: 721, size: 2048, elements: !104)
!104 = !{!105, !115, !120, !122, !124, !231, !359, !364, !366, !379, !399, !404, !421, !426, !428, !434, !439, !441, !446, !448, !453, !455, !460, !462, !464, !466, !468, !470, !471, !472, !477, !479}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "internalSubset", scope: !103, file: !69, line: 722, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "internalSubsetSAXFunc", file: !69, line: 364, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !99, !110, !110, !110}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !113, line: 28, baseType: !114)
!113 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!114 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "isStandalone", scope: !103, file: !69, line: 723, baseType: !116, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "isStandaloneSAXFunc", file: !69, line: 642, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{!70, !99}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "hasInternalSubset", scope: !103, file: !69, line: 724, baseType: !121, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "hasInternalSubsetSAXFunc", file: !69, line: 651, baseType: !117)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "hasExternalSubset", scope: !103, file: !69, line: 725, baseType: !123, size: 64, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "hasExternalSubsetSAXFunc", file: !69, line: 661, baseType: !117)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "resolveEntity", scope: !103, file: !69, line: 726, baseType: !125, size: 64, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "resolveEntitySAXFunc", file: !69, line: 352, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!129, !99, !110, !110}
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputPtr", file: !4, line: 36, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInput", file: !4, line: 35, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInput", file: !69, line: 54, size: 832, elements: !133)
!133 = !{!134, !210, !213, !214, !215, !216, !217, !218, !219, !220, !221, !227, !228, !229, !230}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !132, file: !69, line: 56, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputBufferPtr", file: !4, line: 29, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputBuffer", file: !4, line: 28, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInputBuffer", file: !139, line: 125, size: 512, elements: !140)
!139 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlIO.h", directory: "", checksumkind: CSK_MD5, checksum: "a868e7a396360b2f16d10eac4a34669c")
!140 = !{!141, !142, !149, !151, !200, !205, !206, !207, !208}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !138, file: !139, line: 126, baseType: !99, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "readcallback", scope: !138, file: !139, line: 127, baseType: !143, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlInputReadCallback", file: !139, line: 54, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{!70, !99, !147, !70}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "closecallback", scope: !138, file: !139, line: 128, baseType: !150, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlInputCloseCallback", file: !139, line: 63, baseType: !117)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !138, file: !139, line: 130, baseType: !152, size: 64, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandlerPtr", file: !153, line: 145, baseType: !154)
!153 = !DIFile(filename: "/usr/include/libxml2/libxml/encoding.h", directory: "", checksumkind: CSK_MD5, checksum: "807b84fade38abad3ae0d9b6af714dbc")
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandler", file: !153, line: 144, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlCharEncodingHandler", file: !153, line: 146, size: 448, elements: !157)
!157 = !{!158, !159, !168, !170, !173, !174, !199}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !156, file: !153, line: 147, baseType: !147, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !156, file: !153, line: 148, baseType: !160, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingInputFunc", file: !153, line: 101, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!70, !164, !165, !166, !165}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !156, file: !153, line: 149, baseType: !169, size: 64, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingOutputFunc", file: !153, line: 123, baseType: !161)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_in", scope: !156, file: !153, line: 151, baseType: !171, size: 64, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !172, line: 29, baseType: !99)
!172 = !DIFile(filename: "/usr/include/iconv.h", directory: "", checksumkind: CSK_MD5, checksum: "edfee9bcfa398c9184cc8f95deb97c16")
!173 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_out", scope: !156, file: !153, line: 152, baseType: !171, size: 64, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_in", scope: !156, file: !153, line: 155, baseType: !175, size: 64, offset: 320)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "uconv_t", file: !153, line: 141, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_uconv_t", file: !153, line: 134, size: 16640, elements: !178)
!178 = !{!179, !184, !185, !196, !198}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "uconv", scope: !177, file: !153, line: 135, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "UConverter", file: !182, line: 96, baseType: !183)
!182 = !DIFile(filename: "/usr/include/unicode/ucnv_err.h", directory: "", checksumkind: CSK_MD5, checksum: "a507bbb125e54d860485ec054a4a55ed")
!183 = !DICompositeType(tag: DW_TAG_structure_type, name: "UConverter", file: !182, line: 93, flags: DIFlagFwdDecl)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !177, file: !153, line: 136, baseType: !180, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_buf", scope: !177, file: !153, line: 137, baseType: !186, size: 16384, offset: 128)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 16384, elements: !194)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "UChar", file: !188, line: 388, baseType: !189)
!188 = !DIFile(filename: "/usr/include/unicode/umachine.h", directory: "", checksumkind: CSK_MD5, checksum: "2d902ff00eac765b305cb113b74d34df")
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !190, line: 25, baseType: !191)
!190 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !192, line: 40, baseType: !193)
!192 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!193 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!194 = !{!195}
!195 = !DISubrange(count: 1024)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_source", scope: !177, file: !153, line: 138, baseType: !197, size: 64, offset: 16512)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_target", scope: !177, file: !153, line: 139, baseType: !197, size: 64, offset: 16576)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_out", scope: !156, file: !153, line: 156, baseType: !175, size: 64, offset: 384)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !138, file: !139, line: 132, baseType: !201, size: 64, offset: 256)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufPtr", file: !4, line: 114, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !4, line: 105, baseType: !204)
!204 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !4, line: 105, flags: DIFlagFwdDecl)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !138, file: !139, line: 133, baseType: !201, size: 64, offset: 320)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "compressed", scope: !138, file: !139, line: 134, baseType: !70, size: 32, offset: 384)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !138, file: !139, line: 135, baseType: !70, size: 32, offset: 416)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "rawconsumed", scope: !138, file: !139, line: 136, baseType: !209, size: 64, offset: 448)
!209 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !132, file: !69, line: 58, baseType: !211, size: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !132, file: !69, line: 59, baseType: !211, size: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !132, file: !69, line: 60, baseType: !110, size: 64, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !132, file: !69, line: 61, baseType: !110, size: 64, offset: 256)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !132, file: !69, line: 62, baseType: !110, size: 64, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !132, file: !69, line: 63, baseType: !70, size: 32, offset: 384)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !132, file: !69, line: 64, baseType: !70, size: 32, offset: 416)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !132, file: !69, line: 65, baseType: !70, size: 32, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "consumed", scope: !132, file: !69, line: 71, baseType: !209, size: 64, offset: 512)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !132, file: !69, line: 72, baseType: !222, size: 64, offset: 576)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputDeallocate", file: !69, line: 52, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !226}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !132, file: !69, line: 73, baseType: !110, size: 64, offset: 640)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !132, file: !69, line: 74, baseType: !110, size: 64, offset: 704)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !132, file: !69, line: 75, baseType: !70, size: 32, offset: 768)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !132, file: !69, line: 76, baseType: !70, size: 32, offset: 800)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "getEntity", scope: !103, file: !69, line: 727, baseType: !232, size: 64, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "getEntitySAXFunc", file: !69, line: 390, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!236, !99, !110}
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntityPtr", file: !4, line: 49, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntity", file: !4, line: 48, baseType: !239)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEntity", file: !41, line: 38, size: 1088, elements: !240)
!240 = !{!241, !242, !244, !245, !342, !343, !344, !345, !346, !347, !348, !349, !350, !352, !353, !354, !356, !357, !358}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !239, file: !41, line: 39, baseType: !99, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !239, file: !41, line: 40, baseType: !243, size: 32, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !239, file: !41, line: 41, baseType: !110, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !239, file: !41, line: 42, baseType: !246, size: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !248)
!248 = !{!249, !250, !251, !252, !253, !254, !255, !256, !257, !317, !320, !321, !338, !339, !340, !341}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !247, file: !4, line: 493, baseType: !99, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !247, file: !4, line: 494, baseType: !243, size: 32, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !247, file: !4, line: 495, baseType: !110, size: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !247, file: !4, line: 496, baseType: !246, size: 64, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !247, file: !4, line: 497, baseType: !246, size: 64, offset: 256)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !247, file: !4, line: 498, baseType: !246, size: 64, offset: 320)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !247, file: !4, line: 499, baseType: !246, size: 64, offset: 384)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !247, file: !4, line: 500, baseType: !246, size: 64, offset: 448)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !247, file: !4, line: 501, baseType: !258, size: 64, offset: 512)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !260)
!260 = !{!261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !292, !293, !304, !305, !306, !307, !308, !309, !310, !314, !315, !316}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !259, file: !4, line: 560, baseType: !99, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !259, file: !4, line: 561, baseType: !243, size: 32, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !259, file: !4, line: 562, baseType: !147, size: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !259, file: !4, line: 563, baseType: !246, size: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !259, file: !4, line: 564, baseType: !246, size: 64, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !259, file: !4, line: 565, baseType: !246, size: 64, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !259, file: !4, line: 566, baseType: !246, size: 64, offset: 384)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !259, file: !4, line: 567, baseType: !246, size: 64, offset: 448)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !259, file: !4, line: 568, baseType: !258, size: 64, offset: 512)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !259, file: !4, line: 571, baseType: !70, size: 32, offset: 576)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !259, file: !4, line: 572, baseType: !70, size: 32, offset: 608)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !259, file: !4, line: 578, baseType: !273, size: 64, offset: 640)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !275)
!275 = !{!276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !274, file: !4, line: 406, baseType: !99, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !274, file: !4, line: 407, baseType: !243, size: 32, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !274, file: !4, line: 408, baseType: !110, size: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !274, file: !4, line: 409, baseType: !246, size: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !274, file: !4, line: 410, baseType: !246, size: 64, offset: 256)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !274, file: !4, line: 411, baseType: !258, size: 64, offset: 320)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !274, file: !4, line: 412, baseType: !246, size: 64, offset: 384)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !274, file: !4, line: 413, baseType: !246, size: 64, offset: 448)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !274, file: !4, line: 414, baseType: !258, size: 64, offset: 512)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !274, file: !4, line: 417, baseType: !99, size: 64, offset: 576)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !274, file: !4, line: 418, baseType: !99, size: 64, offset: 640)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !274, file: !4, line: 419, baseType: !99, size: 64, offset: 704)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !274, file: !4, line: 420, baseType: !99, size: 64, offset: 768)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !274, file: !4, line: 421, baseType: !110, size: 64, offset: 832)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !274, file: !4, line: 422, baseType: !110, size: 64, offset: 896)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !274, file: !4, line: 423, baseType: !99, size: 64, offset: 960)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !259, file: !4, line: 579, baseType: !273, size: 64, offset: 704)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !259, file: !4, line: 580, baseType: !294, size: 64, offset: 768)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !296)
!296 = !{!297, !298, !300, !301, !302, !303}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !295, file: !4, line: 389, baseType: !294, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !295, file: !4, line: 390, baseType: !299, size: 32, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !243)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !295, file: !4, line: 391, baseType: !110, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !295, file: !4, line: 392, baseType: !110, size: 64, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !295, file: !4, line: 393, baseType: !99, size: 64, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !295, file: !4, line: 394, baseType: !258, size: 64, offset: 320)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !259, file: !4, line: 581, baseType: !110, size: 64, offset: 832)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !259, file: !4, line: 582, baseType: !110, size: 64, offset: 896)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !259, file: !4, line: 583, baseType: !99, size: 64, offset: 960)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !259, file: !4, line: 584, baseType: !99, size: 64, offset: 1024)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !259, file: !4, line: 585, baseType: !110, size: 64, offset: 1088)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !259, file: !4, line: 586, baseType: !70, size: 32, offset: 1152)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !259, file: !4, line: 588, baseType: !311, size: 64, offset: 1216)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !313, line: 24, flags: DIFlagFwdDecl)
!313 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!314 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !259, file: !4, line: 589, baseType: !99, size: 64, offset: 1280)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !259, file: !4, line: 590, baseType: !70, size: 32, offset: 1344)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !259, file: !4, line: 592, baseType: !70, size: 32, offset: 1376)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !247, file: !4, line: 504, baseType: !318, size: 64, offset: 576)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !295)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !247, file: !4, line: 505, baseType: !226, size: 64, offset: 640)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !247, file: !4, line: 506, baseType: !322, size: 64, offset: 704)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !324)
!324 = !{!325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !337}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !323, file: !4, line: 434, baseType: !99, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !323, file: !4, line: 435, baseType: !243, size: 32, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !323, file: !4, line: 436, baseType: !110, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !323, file: !4, line: 437, baseType: !246, size: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !323, file: !4, line: 438, baseType: !246, size: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !323, file: !4, line: 439, baseType: !246, size: 64, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !323, file: !4, line: 440, baseType: !322, size: 64, offset: 384)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !323, file: !4, line: 441, baseType: !322, size: 64, offset: 448)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !323, file: !4, line: 442, baseType: !258, size: 64, offset: 512)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !323, file: !4, line: 443, baseType: !318, size: 64, offset: 576)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !323, file: !4, line: 444, baseType: !336, size: 32, offset: 640)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !323, file: !4, line: 445, baseType: !99, size: 64, offset: 704)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !247, file: !4, line: 507, baseType: !318, size: 64, offset: 768)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !247, file: !4, line: 508, baseType: !99, size: 64, offset: 832)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !247, file: !4, line: 509, baseType: !193, size: 16, offset: 896)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !247, file: !4, line: 510, baseType: !193, size: 16, offset: 912)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !239, file: !41, line: 43, baseType: !246, size: 64, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !239, file: !41, line: 44, baseType: !273, size: 64, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !239, file: !41, line: 45, baseType: !246, size: 64, offset: 384)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !239, file: !41, line: 46, baseType: !246, size: 64, offset: 448)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !239, file: !41, line: 47, baseType: !258, size: 64, offset: 512)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !239, file: !41, line: 49, baseType: !226, size: 64, offset: 576)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !239, file: !41, line: 50, baseType: !226, size: 64, offset: 640)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !239, file: !41, line: 51, baseType: !70, size: 32, offset: 704)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "etype", scope: !239, file: !41, line: 52, baseType: !351, size: 32, offset: 736)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntityType", file: !41, line: 31, baseType: !40)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !239, file: !41, line: 53, baseType: !110, size: 64, offset: 768)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !239, file: !41, line: 54, baseType: !110, size: 64, offset: 832)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "nexte", scope: !239, file: !41, line: 56, baseType: !355, size: 64, offset: 896)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "URI", scope: !239, file: !41, line: 57, baseType: !110, size: 64, offset: 960)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !239, file: !41, line: 58, baseType: !70, size: 32, offset: 1024)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "checked", scope: !239, file: !41, line: 59, baseType: !70, size: 32, offset: 1056)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "entityDecl", scope: !103, file: !69, line: 728, baseType: !360, size: 64, offset: 384)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "entityDeclSAXFunc", file: !69, line: 414, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !99, !110, !70, !110, !110, !226}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "notationDecl", scope: !103, file: !69, line: 729, baseType: !365, size: 64, offset: 448)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "notationDeclSAXFunc", file: !69, line: 429, baseType: !107)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "attributeDecl", scope: !103, file: !69, line: 730, baseType: !367, size: 64, offset: 512)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "attributeDeclSAXFunc", file: !69, line: 445, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !99, !110, !110, !70, !70, !110, !371}
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEnumerationPtr", file: !4, line: 239, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEnumeration", file: !4, line: 238, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEnumeration", file: !4, line: 240, size: 128, elements: !375)
!375 = !{!376, !378}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !374, file: !4, line: 241, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !374, file: !4, line: 242, baseType: !110, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "elementDecl", scope: !103, file: !69, line: 731, baseType: !380, size: 64, offset: 576)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "elementDeclSAXFunc", file: !69, line: 461, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !99, !110, !70, !384}
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentPtr", file: !4, line: 305, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContent", file: !4, line: 304, baseType: !387)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlElementContent", file: !4, line: 306, size: 384, elements: !388)
!388 = !{!389, !391, !393, !394, !396, !397, !398}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !387, file: !4, line: 307, baseType: !390, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentType", file: !4, line: 283, baseType: !49)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "ocur", scope: !387, file: !4, line: 308, baseType: !392, size: 32, offset: 32)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentOccur", file: !4, line: 295, baseType: !55)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !387, file: !4, line: 309, baseType: !110, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !387, file: !4, line: 310, baseType: !395, size: 64, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !387, file: !4, line: 311, baseType: !395, size: 64, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !387, file: !4, line: 312, baseType: !395, size: 64, offset: 256)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !387, file: !4, line: 313, baseType: !110, size: 64, offset: 320)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "unparsedEntityDecl", scope: !103, file: !69, line: 732, baseType: !400, size: 64, offset: 640)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "unparsedEntityDeclSAXFunc", file: !69, line: 475, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !99, !110, !110, !110, !110}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "setDocumentLocator", scope: !103, file: !69, line: 733, baseType: !405, size: 64, offset: 704)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "setDocumentLocatorSAXFunc", file: !69, line: 488, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !99, !409}
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXLocatorPtr", file: !4, line: 42, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXLocator", file: !4, line: 41, baseType: !412)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXLocator", file: !69, line: 323, size: 256, elements: !413)
!413 = !{!414, !418, !419, !420}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "getPublicId", scope: !412, file: !69, line: 324, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!110, !99}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "getSystemId", scope: !412, file: !69, line: 325, baseType: !415, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "getLineNumber", scope: !412, file: !69, line: 326, baseType: !117, size: 64, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "getColumnNumber", scope: !412, file: !69, line: 327, baseType: !117, size: 64, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "startDocument", scope: !103, file: !69, line: 734, baseType: !422, size: 64, offset: 768)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "startDocumentSAXFunc", file: !69, line: 496, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !99}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "endDocument", scope: !103, file: !69, line: 735, baseType: !427, size: 64, offset: 832)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "endDocumentSAXFunc", file: !69, line: 503, baseType: !423)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "startElement", scope: !103, file: !69, line: 736, baseType: !429, size: 64, offset: 896)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "startElementSAXFunc", file: !69, line: 512, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !99, !110, !433}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "endElement", scope: !103, file: !69, line: 737, baseType: !435, size: 64, offset: 960)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "endElementSAXFunc", file: !69, line: 522, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !99, !110}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !103, file: !69, line: 738, baseType: !440, size: 64, offset: 1024)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "referenceSAXFunc", file: !69, line: 545, baseType: !436)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "characters", scope: !103, file: !69, line: 739, baseType: !442, size: 64, offset: 1088)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "charactersSAXFunc", file: !69, line: 555, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !99, !110, !70}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ignorableWhitespace", scope: !103, file: !69, line: 740, baseType: !447, size: 64, offset: 1152)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "ignorableWhitespaceSAXFunc", file: !69, line: 567, baseType: !443)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "processingInstruction", scope: !103, file: !69, line: 741, baseType: !449, size: 64, offset: 1216)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "processingInstructionSAXFunc", file: !69, line: 578, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !99, !110, !110}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !103, file: !69, line: 742, baseType: !454, size: 64, offset: 1280)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "commentSAXFunc", file: !69, line: 588, baseType: !436)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "warning", scope: !103, file: !69, line: 743, baseType: !456, size: 64, offset: 1344)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "warningSAXFunc", file: !69, line: 610, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !99, !211, null}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !103, file: !69, line: 744, baseType: !461, size: 64, offset: 1408)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "errorSAXFunc", file: !69, line: 620, baseType: !457)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "fatalError", scope: !103, file: !69, line: 745, baseType: !463, size: 64, offset: 1472)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "fatalErrorSAXFunc", file: !69, line: 632, baseType: !457)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "getParameterEntity", scope: !103, file: !69, line: 746, baseType: !465, size: 64, offset: 1536)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "getParameterEntitySAXFunc", file: !69, line: 401, baseType: !233)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "cdataBlock", scope: !103, file: !69, line: 747, baseType: !467, size: 64, offset: 1600)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "cdataBlockSAXFunc", file: !69, line: 598, baseType: !443)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "externalSubset", scope: !103, file: !69, line: 748, baseType: !469, size: 64, offset: 1664)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "externalSubsetSAXFunc", file: !69, line: 377, baseType: !107)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !103, file: !69, line: 749, baseType: !5, size: 32, offset: 1728)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !103, file: !69, line: 751, baseType: !99, size: 64, offset: 1792)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "startElementNs", scope: !103, file: !69, line: 752, baseType: !473, size: 64, offset: 1856)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "startElementNsSAX2Func", file: !69, line: 694, baseType: !474)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !99, !110, !110, !110, !70, !433, !70, !70, !433}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "endElementNs", scope: !103, file: !69, line: 753, baseType: !478, size: 64, offset: 1920)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "endElementNsSAX2Func", file: !69, line: 715, baseType: !107)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "serror", scope: !103, file: !69, line: 754, baseType: !480, size: 64, offset: 1984)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStructuredErrorFunc", file: !62, line: 856, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !99, !484}
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorPtr", file: !62, line: 77, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlError", file: !62, line: 76, baseType: !487)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlError", file: !62, line: 78, size: 704, elements: !488)
!488 = !{!489, !490, !491, !492, !494, !495, !496, !497, !498, !499, !500, !501, !502}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !487, file: !62, line: 79, baseType: !70, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !487, file: !62, line: 80, baseType: !70, size: 32, offset: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !487, file: !62, line: 81, baseType: !147, size: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !487, file: !62, line: 82, baseType: !493, size: 32, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorLevel", file: !62, line: 29, baseType: !61)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !487, file: !62, line: 83, baseType: !147, size: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !487, file: !62, line: 84, baseType: !70, size: 32, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "str1", scope: !487, file: !62, line: 85, baseType: !147, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "str2", scope: !487, file: !62, line: 86, baseType: !147, size: 64, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "str3", scope: !487, file: !62, line: 87, baseType: !147, size: 64, offset: 448)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "int1", scope: !487, file: !62, line: 88, baseType: !70, size: 32, offset: 512)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "int2", scope: !487, file: !62, line: 89, baseType: !70, size: 32, offset: 544)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "ctxt", scope: !487, file: !62, line: 90, baseType: !99, size: 64, offset: 576)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !487, file: !62, line: 91, baseType: !99, size: 64, offset: 640)
!503 = distinct !DICompileUnit(language: DW_LANG_C99, file: !504, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!504 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!505 = !{i32 7, !"Dwarf Version", i32 5}
!506 = !{i32 2, !"Debug Info Version", i32 3}
!507 = !{i32 1, !"wchar_size", i32 4}
!508 = !{i32 7, !"PIC Level", i32 2}
!509 = !{i32 7, !"PIE Level", i32 2}
!510 = !{i32 7, !"uwtable", i32 1}
!511 = !{i32 7, !"frame-pointer", i32 2}
!512 = !{!"Ubuntu clang version 14.0.6"}
!513 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !514, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !516)
!514 = !DISubroutineType(types: !515)
!515 = !{!70}
!516 = !{}
!517 = !DILocalVariable(name: "ctxt", scope: !513, file: !1, line: 7, type: !518)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxtPtr", file: !4, line: 39, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !4, line: 38, baseType: !521)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !69, line: 186, size: 6016, elements: !522)
!522 = !{!523, !525, !526, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !541, !545, !546, !547, !549, !550, !568, !569, !570, !571, !572, !573, !574, !609, !611, !612, !613, !614, !615, !616, !617, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !661, !667, !668, !669, !670, !671, !672, !673, !674, !678, !679, !681, !682, !683, !684, !685, !686, !687, !688}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "sax", scope: !521, file: !69, line: 187, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !521, file: !69, line: 188, baseType: !99, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "myDoc", scope: !521, file: !69, line: 189, baseType: !527, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !259)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "wellFormed", scope: !521, file: !69, line: 190, baseType: !70, size: 32, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "replaceEntities", scope: !521, file: !69, line: 191, baseType: !70, size: 32, offset: 224)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !521, file: !69, line: 192, baseType: !110, size: 64, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !521, file: !69, line: 193, baseType: !110, size: 64, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !521, file: !69, line: 194, baseType: !70, size: 32, offset: 384)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "html", scope: !521, file: !69, line: 195, baseType: !70, size: 32, offset: 416)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !521, file: !69, line: 201, baseType: !129, size: 64, offset: 448)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "inputNr", scope: !521, file: !69, line: 202, baseType: !70, size: 32, offset: 512)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "inputMax", scope: !521, file: !69, line: 203, baseType: !70, size: 32, offset: 544)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "inputTab", scope: !521, file: !69, line: 204, baseType: !540, size: 64, offset: 576)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !521, file: !69, line: 207, baseType: !542, size: 64, offset: 640)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !543)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !247)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !521, file: !69, line: 208, baseType: !70, size: 32, offset: 704)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !521, file: !69, line: 209, baseType: !70, size: 32, offset: 736)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !521, file: !69, line: 210, baseType: !548, size: 64, offset: 768)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "record_info", scope: !521, file: !69, line: 212, baseType: !70, size: 32, offset: 832)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "node_seq", scope: !521, file: !69, line: 213, baseType: !551, size: 192, offset: 896)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserNodeInfoSeq", file: !69, line: 98, baseType: !552)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserNodeInfoSeq", file: !69, line: 100, size: 192, elements: !553)
!553 = !{!554, !555, !556}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !552, file: !69, line: 101, baseType: !209, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !552, file: !69, line: 102, baseType: !209, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !552, file: !69, line: 103, baseType: !557, size: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserNodeInfo", file: !69, line: 86, baseType: !559)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserNodeInfo", file: !69, line: 89, size: 320, elements: !560)
!560 = !{!561, !564, !565, !566, !567}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !559, file: !69, line: 90, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "begin_pos", scope: !559, file: !69, line: 92, baseType: !209, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "begin_line", scope: !559, file: !69, line: 93, baseType: !209, size: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "end_pos", scope: !559, file: !69, line: 94, baseType: !209, size: 64, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !559, file: !69, line: 95, baseType: !209, size: 64, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "errNo", scope: !521, file: !69, line: 215, baseType: !70, size: 32, offset: 1088)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "hasExternalSubset", scope: !521, file: !69, line: 217, baseType: !70, size: 32, offset: 1120)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "hasPErefs", scope: !521, file: !69, line: 218, baseType: !70, size: 32, offset: 1152)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "external", scope: !521, file: !69, line: 219, baseType: !70, size: 32, offset: 1184)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !521, file: !69, line: 221, baseType: !70, size: 32, offset: 1216)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !521, file: !69, line: 222, baseType: !70, size: 32, offset: 1248)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "vctxt", scope: !521, file: !69, line: 223, baseType: !575, size: 896, offset: 1280)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidCtxt", file: !576, line: 80, baseType: !577)
!576 = !DIFile(filename: "/usr/include/libxml2/libxml/valid.h", directory: "", checksumkind: CSK_MD5, checksum: "3c082c0a5b81e1bc9fd9a21b69014584")
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlValidCtxt", file: !576, line: 82, size: 896, elements: !578)
!578 = !{!579, !580, !582, !584, !585, !586, !587, !588, !589, !590, !591, !595, !596, !597, !598, !604}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !577, file: !576, line: 83, baseType: !99, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !577, file: !576, line: 84, baseType: !581, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidityErrorFunc", file: !576, line: 42, baseType: !457)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "warning", scope: !577, file: !576, line: 85, baseType: !583, size: 64, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidityWarningFunc", file: !576, line: 57, baseType: !457)
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
!609 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !521, file: !69, line: 225, baseType: !610, size: 32, offset: 2176)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputState", file: !69, line: 131, baseType: !68)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !521, file: !69, line: 226, baseType: !70, size: 32, offset: 2208)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !521, file: !69, line: 228, baseType: !147, size: 64, offset: 2240)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !521, file: !69, line: 231, baseType: !110, size: 64, offset: 2304)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "nameNr", scope: !521, file: !69, line: 232, baseType: !70, size: 32, offset: 2368)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "nameMax", scope: !521, file: !69, line: 233, baseType: !70, size: 32, offset: 2400)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "nameTab", scope: !521, file: !69, line: 234, baseType: !433, size: 64, offset: 2432)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "nbChars", scope: !521, file: !69, line: 236, baseType: !618, size: 64, offset: 2496)
!618 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "checkIndex", scope: !521, file: !69, line: 237, baseType: !618, size: 64, offset: 2560)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "keepBlanks", scope: !521, file: !69, line: 238, baseType: !70, size: 32, offset: 2624)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "disableSAX", scope: !521, file: !69, line: 239, baseType: !70, size: 32, offset: 2656)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "inSubset", scope: !521, file: !69, line: 240, baseType: !70, size: 32, offset: 2688)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "intSubName", scope: !521, file: !69, line: 241, baseType: !110, size: 64, offset: 2752)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "extSubURI", scope: !521, file: !69, line: 242, baseType: !226, size: 64, offset: 2816)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "extSubSystem", scope: !521, file: !69, line: 243, baseType: !226, size: 64, offset: 2880)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !521, file: !69, line: 246, baseType: !165, size: 64, offset: 2944)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "spaceNr", scope: !521, file: !69, line: 247, baseType: !70, size: 32, offset: 3008)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "spaceMax", scope: !521, file: !69, line: 248, baseType: !70, size: 32, offset: 3040)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "spaceTab", scope: !521, file: !69, line: 249, baseType: !165, size: 64, offset: 3072)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !521, file: !69, line: 251, baseType: !70, size: 32, offset: 3136)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !521, file: !69, line: 252, baseType: !129, size: 64, offset: 3200)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !521, file: !69, line: 253, baseType: !70, size: 32, offset: 3264)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "nodelen", scope: !521, file: !69, line: 255, baseType: !70, size: 32, offset: 3296)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "nodemem", scope: !521, file: !69, line: 256, baseType: !70, size: 32, offset: 3328)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "pedantic", scope: !521, file: !69, line: 257, baseType: !70, size: 32, offset: 3360)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !521, file: !69, line: 258, baseType: !99, size: 64, offset: 3392)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "loadsubset", scope: !521, file: !69, line: 260, baseType: !70, size: 32, offset: 3456)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "linenumbers", scope: !521, file: !69, line: 261, baseType: !70, size: 32, offset: 3488)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "catalogs", scope: !521, file: !69, line: 262, baseType: !99, size: 64, offset: 3520)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "recovery", scope: !521, file: !69, line: 263, baseType: !70, size: 32, offset: 3584)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "progressive", scope: !521, file: !69, line: 264, baseType: !70, size: 32, offset: 3616)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !521, file: !69, line: 265, baseType: !643, size: 64, offset: 3648)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !313, line: 25, baseType: !644)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !313, line: 24, baseType: !312)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "atts", scope: !521, file: !69, line: 266, baseType: !433, size: 64, offset: 3712)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "maxatts", scope: !521, file: !69, line: 267, baseType: !70, size: 32, offset: 3776)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "docdict", scope: !521, file: !69, line: 268, baseType: !70, size: 32, offset: 3808)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "str_xml", scope: !521, file: !69, line: 273, baseType: !110, size: 64, offset: 3840)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "str_xmlns", scope: !521, file: !69, line: 274, baseType: !110, size: 64, offset: 3904)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "str_xml_ns", scope: !521, file: !69, line: 275, baseType: !110, size: 64, offset: 3968)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "sax2", scope: !521, file: !69, line: 280, baseType: !70, size: 32, offset: 4032)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "nsNr", scope: !521, file: !69, line: 281, baseType: !70, size: 32, offset: 4064)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "nsMax", scope: !521, file: !69, line: 282, baseType: !70, size: 32, offset: 4096)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "nsTab", scope: !521, file: !69, line: 283, baseType: !433, size: 64, offset: 4160)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "attallocs", scope: !521, file: !69, line: 284, baseType: !165, size: 64, offset: 4224)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "pushTab", scope: !521, file: !69, line: 285, baseType: !658, size: 64, offset: 4288)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStartTag", file: !69, line: 172, baseType: !660)
!660 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlStartTag", file: !69, line: 172, flags: DIFlagFwdDecl)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "attsDefault", scope: !521, file: !69, line: 286, baseType: !662, size: 64, offset: 4352)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !663, line: 22, baseType: !664)
!663 = !DIFile(filename: "/usr/include/libxml2/libxml/hash.h", directory: "", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !663, line: 21, baseType: !666)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !663, line: 21, flags: DIFlagFwdDecl)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "attsSpecial", scope: !521, file: !69, line: 287, baseType: !662, size: 64, offset: 4416)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "nsWellFormed", scope: !521, file: !69, line: 288, baseType: !70, size: 32, offset: 4480)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !521, file: !69, line: 289, baseType: !70, size: 32, offset: 4512)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "dictNames", scope: !521, file: !69, line: 294, baseType: !70, size: 32, offset: 4544)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "freeElemsNr", scope: !521, file: !69, line: 295, baseType: !70, size: 32, offset: 4576)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "freeElems", scope: !521, file: !69, line: 296, baseType: !542, size: 64, offset: 4608)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "freeAttrsNr", scope: !521, file: !69, line: 297, baseType: !70, size: 32, offset: 4672)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "freeAttrs", scope: !521, file: !69, line: 298, baseType: !675, size: 64, offset: 4736)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttrPtr", file: !4, line: 432, baseType: !676)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttr", file: !4, line: 431, baseType: !323)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "lastError", scope: !521, file: !69, line: 303, baseType: !486, size: 704, offset: 4800)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "parseMode", scope: !521, file: !69, line: 304, baseType: !680, size: 32, offset: 5504)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserMode", file: !69, line: 170, baseType: !90)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "nbentities", scope: !521, file: !69, line: 305, baseType: !209, size: 64, offset: 5568)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "sizeentities", scope: !521, file: !69, line: 306, baseType: !209, size: 64, offset: 5632)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfo", scope: !521, file: !69, line: 309, baseType: !557, size: 64, offset: 5696)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfoNr", scope: !521, file: !69, line: 310, baseType: !70, size: 32, offset: 5760)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfoMax", scope: !521, file: !69, line: 311, baseType: !70, size: 32, offset: 5792)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfoTab", scope: !521, file: !69, line: 312, baseType: !557, size: 64, offset: 5824)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "input_id", scope: !521, file: !69, line: 314, baseType: !70, size: 32, offset: 5888)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "sizeentcopy", scope: !521, file: !69, line: 315, baseType: !209, size: 64, offset: 5952)
!689 = !DILocation(line: 7, column: 22, scope: !513)
!690 = !DILocalVariable(name: "input", scope: !513, file: !1, line: 8, type: !129)
!691 = !DILocation(line: 8, column: 23, scope: !513)
!692 = !DILocalVariable(name: "sax", scope: !513, file: !1, line: 9, type: !100)
!693 = !DILocation(line: 9, column: 22, scope: !513)
!694 = !DILocation(line: 11, column: 12, scope: !513)
!695 = !DILocation(line: 11, column: 10, scope: !513)
!696 = !DILocation(line: 12, column: 9, scope: !697)
!697 = distinct !DILexicalBlock(scope: !513, file: !1, line: 12, column: 9)
!698 = !DILocation(line: 12, column: 14, scope: !697)
!699 = !DILocation(line: 12, column: 9, scope: !513)
!700 = !DILocation(line: 12, column: 23, scope: !697)
!701 = !DILocation(line: 14, column: 31, scope: !513)
!702 = !DILocation(line: 14, column: 13, scope: !513)
!703 = !DILocation(line: 14, column: 11, scope: !513)
!704 = !DILocation(line: 15, column: 9, scope: !705)
!705 = distinct !DILexicalBlock(scope: !513, file: !1, line: 15, column: 9)
!706 = !DILocation(line: 15, column: 15, scope: !705)
!707 = !DILocation(line: 15, column: 9, scope: !513)
!708 = !DILocation(line: 16, column: 27, scope: !709)
!709 = distinct !DILexicalBlock(scope: !705, file: !1, line: 15, column: 24)
!710 = !DILocation(line: 16, column: 9, scope: !709)
!711 = !DILocation(line: 17, column: 9, scope: !709)
!712 = !DILocation(line: 19, column: 19, scope: !513)
!713 = !DILocation(line: 19, column: 5, scope: !513)
!714 = !DILocation(line: 19, column: 11, scope: !513)
!715 = !DILocation(line: 19, column: 17, scope: !513)
!716 = !DILocation(line: 21, column: 30, scope: !513)
!717 = !DILocation(line: 21, column: 11, scope: !513)
!718 = !DILocation(line: 21, column: 9, scope: !513)
!719 = !DILocation(line: 22, column: 9, scope: !720)
!720 = distinct !DILexicalBlock(scope: !513, file: !1, line: 22, column: 9)
!721 = !DILocation(line: 22, column: 13, scope: !720)
!722 = !DILocation(line: 22, column: 9, scope: !513)
!723 = !DILocation(line: 23, column: 28, scope: !724)
!724 = distinct !DILexicalBlock(scope: !720, file: !1, line: 22, column: 22)
!725 = !DILocation(line: 23, column: 9, scope: !724)
!726 = !DILocation(line: 24, column: 27, scope: !724)
!727 = !DILocation(line: 24, column: 9, scope: !724)
!728 = !DILocation(line: 25, column: 9, scope: !724)
!729 = !DILocation(line: 27, column: 12, scope: !513)
!730 = !DILocation(line: 27, column: 5, scope: !513)
!731 = !DILocation(line: 28, column: 17, scope: !513)
!732 = !DILocation(line: 28, column: 5, scope: !513)
!733 = !DILocation(line: 28, column: 11, scope: !513)
!734 = !DILocation(line: 28, column: 15, scope: !513)
!735 = !DILocation(line: 30, column: 5, scope: !513)
!736 = !DILocation(line: 30, column: 11, scope: !513)
!737 = !DILocation(line: 30, column: 22, scope: !513)
!738 = !DILocation(line: 31, column: 5, scope: !513)
!739 = !DILocation(line: 31, column: 11, scope: !513)
!740 = !DILocation(line: 31, column: 20, scope: !513)
!741 = !DILocation(line: 33, column: 5, scope: !513)
!742 = !DILocation(line: 33, column: 10, scope: !513)
!743 = !DILocation(line: 33, column: 21, scope: !513)
!744 = !DILocalVariable(name: "buffer_size", scope: !513, file: !1, line: 35, type: !745)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !746, line: 46, baseType: !209)
!746 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!747 = !DILocation(line: 35, column: 12, scope: !513)
!748 = !DILocalVariable(name: "buffer", scope: !513, file: !1, line: 36, type: !147)
!749 = !DILocation(line: 36, column: 11, scope: !513)
!750 = !DILocation(line: 36, column: 36, scope: !513)
!751 = !DILocation(line: 36, column: 29, scope: !513)
!752 = !DILocation(line: 37, column: 9, scope: !753)
!753 = distinct !DILexicalBlock(scope: !513, file: !1, line: 37, column: 9)
!754 = !DILocation(line: 37, column: 16, scope: !753)
!755 = !DILocation(line: 37, column: 9, scope: !513)
!756 = !DILocation(line: 38, column: 14, scope: !757)
!757 = distinct !DILexicalBlock(scope: !753, file: !1, line: 37, column: 25)
!758 = !DILocation(line: 38, column: 9, scope: !757)
!759 = !DILocation(line: 39, column: 28, scope: !757)
!760 = !DILocation(line: 39, column: 9, scope: !757)
!761 = !DILocation(line: 40, column: 27, scope: !757)
!762 = !DILocation(line: 40, column: 9, scope: !757)
!763 = !DILocation(line: 41, column: 9, scope: !757)
!764 = !DILocation(line: 44, column: 24, scope: !513)
!765 = !DILocation(line: 44, column: 32, scope: !513)
!766 = !DILocation(line: 44, column: 5, scope: !513)
!767 = !DILocation(line: 45, column: 5, scope: !513)
!768 = !DILocation(line: 45, column: 12, scope: !513)
!769 = !DILocation(line: 45, column: 24, scope: !513)
!770 = !DILocation(line: 45, column: 29, scope: !513)
!771 = !DILocation(line: 47, column: 37, scope: !513)
!772 = !DILocation(line: 47, column: 5, scope: !513)
!773 = !DILocation(line: 47, column: 12, scope: !513)
!774 = !DILocation(line: 47, column: 17, scope: !513)
!775 = !DILocation(line: 48, column: 30, scope: !513)
!776 = !DILocation(line: 48, column: 5, scope: !513)
!777 = !DILocation(line: 48, column: 12, scope: !513)
!778 = !DILocation(line: 48, column: 16, scope: !513)
!779 = !DILocalVariable(name: "base", scope: !513, file: !1, line: 50, type: !70)
!780 = !DILocation(line: 50, column: 9, scope: !513)
!781 = !DILocation(line: 51, column: 24, scope: !513)
!782 = !DILocation(line: 51, column: 5, scope: !513)
!783 = !DILocation(line: 53, column: 5, scope: !513)
!784 = !DILocation(line: 53, column: 12, scope: !513)
!785 = !DILocation(line: 53, column: 16, scope: !513)
!786 = !DILocation(line: 55, column: 10, scope: !787)
!787 = distinct !DILexicalBlock(scope: !513, file: !1, line: 55, column: 9)
!788 = !DILocation(line: 55, column: 16, scope: !787)
!789 = !DILocation(line: 55, column: 21, scope: !787)
!790 = !DILocation(line: 55, column: 32, scope: !787)
!791 = !DILocation(line: 55, column: 41, scope: !787)
!792 = !DILocation(line: 55, column: 46, scope: !787)
!793 = !DILocation(line: 55, column: 52, scope: !787)
!794 = !DILocation(line: 55, column: 9, scope: !513)
!795 = !DILocation(line: 56, column: 14, scope: !796)
!796 = distinct !DILexicalBlock(scope: !797, file: !1, line: 56, column: 13)
!797 = distinct !DILexicalBlock(scope: !787, file: !1, line: 55, column: 65)
!798 = !DILocation(line: 56, column: 20, scope: !796)
!799 = !DILocation(line: 56, column: 27, scope: !796)
!800 = !DILocation(line: 56, column: 33, scope: !796)
!801 = !DILocation(line: 56, column: 39, scope: !796)
!802 = !DILocation(line: 56, column: 46, scope: !796)
!803 = !DILocation(line: 56, column: 31, scope: !796)
!804 = !DILocation(line: 56, column: 51, scope: !796)
!805 = !DILocation(line: 56, column: 57, scope: !796)
!806 = !DILocation(line: 57, column: 38, scope: !796)
!807 = !DILocation(line: 57, column: 44, scope: !796)
!808 = !DILocation(line: 57, column: 51, scope: !796)
!809 = !DILocation(line: 57, column: 15, scope: !796)
!810 = !DILocation(line: 56, column: 13, scope: !797)
!811 = !DILocation(line: 58, column: 13, scope: !812)
!812 = distinct !DILexicalBlock(scope: !796, file: !1, line: 57, column: 78)
!813 = !DILocation(line: 59, column: 13, scope: !812)
!814 = !DILocation(line: 59, column: 19, scope: !812)
!815 = !DILocation(line: 59, column: 24, scope: !812)
!816 = !DILocation(line: 59, column: 35, scope: !812)
!817 = !DILocation(line: 59, column: 41, scope: !812)
!818 = !DILocation(line: 60, column: 9, scope: !812)
!819 = !DILocation(line: 61, column: 5, scope: !797)
!820 = !DILocation(line: 61, column: 17, scope: !821)
!821 = distinct !DILexicalBlock(scope: !787, file: !1, line: 61, column: 16)
!822 = !DILocation(line: 61, column: 23, scope: !821)
!823 = !DILocation(line: 61, column: 27, scope: !821)
!824 = !DILocation(line: 61, column: 36, scope: !821)
!825 = !DILocation(line: 61, column: 40, scope: !821)
!826 = !DILocation(line: 61, column: 45, scope: !821)
!827 = !DILocation(line: 61, column: 50, scope: !821)
!828 = !DILocation(line: 61, column: 55, scope: !821)
!829 = !DILocation(line: 61, column: 61, scope: !821)
!830 = !DILocation(line: 61, column: 16, scope: !787)
!831 = !DILocation(line: 62, column: 13, scope: !832)
!832 = distinct !DILexicalBlock(scope: !833, file: !1, line: 62, column: 13)
!833 = distinct !DILexicalBlock(scope: !821, file: !1, line: 61, column: 74)
!834 = !DILocation(line: 62, column: 19, scope: !832)
!835 = !DILocation(line: 62, column: 24, scope: !832)
!836 = !DILocation(line: 62, column: 35, scope: !832)
!837 = !DILocation(line: 62, column: 13, scope: !833)
!838 = !DILocation(line: 63, column: 13, scope: !832)
!839 = !DILocation(line: 63, column: 19, scope: !832)
!840 = !DILocation(line: 63, column: 24, scope: !832)
!841 = !DILocation(line: 63, column: 35, scope: !832)
!842 = !DILocation(line: 63, column: 41, scope: !832)
!843 = !DILocation(line: 63, column: 51, scope: !832)
!844 = !DILocation(line: 63, column: 57, scope: !832)
!845 = !DILocation(line: 63, column: 64, scope: !832)
!846 = !DILocation(line: 63, column: 69, scope: !832)
!847 = !DILocation(line: 64, column: 5, scope: !833)
!848 = !DILocation(line: 66, column: 10, scope: !513)
!849 = !DILocation(line: 66, column: 5, scope: !513)
!850 = !DILocation(line: 67, column: 10, scope: !513)
!851 = !DILocation(line: 67, column: 5, scope: !513)
!852 = !DILocation(line: 68, column: 24, scope: !513)
!853 = !DILocation(line: 68, column: 5, scope: !513)
!854 = !DILocation(line: 69, column: 23, scope: !513)
!855 = !DILocation(line: 69, column: 5, scope: !513)
!856 = !DILocation(line: 70, column: 5, scope: !513)
!857 = !DILocation(line: 71, column: 1, scope: !513)
!858 = distinct !DISubprogram(name: "memset", scope: !859, file: !859, line: 12, type: !860, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !503, retainedNodes: !516)
!859 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!860 = !DISubroutineType(types: !861)
!861 = !{!99, !99, !70, !745}
!862 = !DILocalVariable(name: "dst", arg: 1, scope: !858, file: !859, line: 12, type: !99)
!863 = !DILocation(line: 12, column: 20, scope: !858)
!864 = !DILocalVariable(name: "s", arg: 2, scope: !858, file: !859, line: 12, type: !70)
!865 = !DILocation(line: 12, column: 29, scope: !858)
!866 = !DILocalVariable(name: "count", arg: 3, scope: !858, file: !859, line: 12, type: !745)
!867 = !DILocation(line: 12, column: 39, scope: !858)
!868 = !DILocalVariable(name: "a", scope: !858, file: !859, line: 13, type: !147)
!869 = !DILocation(line: 13, column: 9, scope: !858)
!870 = !DILocation(line: 13, column: 13, scope: !858)
!871 = !DILocation(line: 14, column: 3, scope: !858)
!872 = !DILocation(line: 14, column: 15, scope: !858)
!873 = !DILocation(line: 14, column: 18, scope: !858)
!874 = !DILocation(line: 15, column: 12, scope: !858)
!875 = !DILocation(line: 15, column: 7, scope: !858)
!876 = !DILocation(line: 15, column: 10, scope: !858)
!877 = distinct !{!877, !871, !874, !878}
!878 = !{!"llvm.loop.mustprogress"}
!879 = !DILocation(line: 16, column: 10, scope: !858)
!880 = !DILocation(line: 16, column: 3, scope: !858)

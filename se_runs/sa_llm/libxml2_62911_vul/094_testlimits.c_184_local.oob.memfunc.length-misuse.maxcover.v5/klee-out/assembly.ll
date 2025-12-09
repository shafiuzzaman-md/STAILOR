; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/094_testlimits.c_184_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/094_testlimits.c_184_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
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

@.str = private unnamed_addr constant [12 x i8] c"buffer_data\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"buffer_len\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"rlen\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"instate\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"maxlen\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"curlen\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"dotlen\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.11 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/094_testlimits.c_184_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !110 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !114, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.declare(metadata i8** %3, metadata !687, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.declare(metadata i32* %4, metadata !689, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.declare(metadata i32* %5, metadata !691, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.declare(metadata i32* %6, metadata !693, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.declare(metadata i32* %7, metadata !695, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.declare(metadata i8** %8, metadata !697, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.declare(metadata i8** %9, metadata !699, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.declare(metadata i32* %10, metadata !701, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.declare(metadata i32* %11, metadata !703, metadata !DIExpression()), !dbg !704
  call void @llvm.dbg.declare(metadata i32* %12, metadata !705, metadata !DIExpression()), !dbg !706
  %13 = call %struct._xmlParserCtxt* @xmlCreatePushParserCtxt(%struct._xmlSAXHandler* noundef null, i8* noundef null, i8* noundef null, i32 noundef 0, i8* noundef null), !dbg !707
  store %struct._xmlParserCtxt* %13, %struct._xmlParserCtxt** %2, align 8, !dbg !708
  %14 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !709
  %15 = icmp eq %struct._xmlParserCtxt* %14, null, !dbg !711
  br i1 %15, label %16, label %17, !dbg !712

16:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !713
  br label %84, !dbg !713

17:                                               ; preds = %0
  %18 = bitcast i8** %3 to i8*, !dbg !714
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef 8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)), !dbg !715
  %19 = bitcast i32* %4 to i8*, !dbg !716
  call void @klee_make_symbolic(i8* noundef %19, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)), !dbg !717
  %20 = load i32, i32* %4, align 4, !dbg !718
  %21 = icmp sge i32 %20, 0, !dbg !719
  %22 = zext i1 %21 to i32, !dbg !719
  %23 = sext i32 %22 to i64, !dbg !718
  call void @klee_assume(i64 noundef %23), !dbg !720
  %24 = bitcast i32* %5 to i8*, !dbg !721
  call void @klee_make_symbolic(i8* noundef %24, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !722
  %25 = load i32, i32* %5, align 4, !dbg !723
  %26 = icmp sge i32 %25, 0, !dbg !724
  %27 = zext i1 %26 to i32, !dbg !724
  %28 = sext i32 %27 to i64, !dbg !723
  call void @klee_assume(i64 noundef %28), !dbg !725
  %29 = bitcast i32* %6 to i8*, !dbg !726
  call void @klee_make_symbolic(i8* noundef %29, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !727
  %30 = load i32, i32* %6, align 4, !dbg !728
  %31 = icmp sge i32 %30, 0, !dbg !729
  %32 = zext i1 %31 to i32, !dbg !729
  %33 = sext i32 %32 to i64, !dbg !728
  call void @klee_assume(i64 noundef %33), !dbg !730
  %34 = bitcast i32* %7 to i8*, !dbg !731
  call void @klee_make_symbolic(i8* noundef %34, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)), !dbg !732
  %35 = bitcast i8** %8 to i8*, !dbg !733
  call void @klee_make_symbolic(i8* noundef %35, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)), !dbg !734
  %36 = bitcast i8** %9 to i8*, !dbg !735
  call void @klee_make_symbolic(i8* noundef %36, i64 noundef 8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)), !dbg !736
  %37 = bitcast i32* %10 to i8*, !dbg !737
  call void @klee_make_symbolic(i8* noundef %37, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)), !dbg !738
  %38 = load i32, i32* %10, align 4, !dbg !739
  %39 = icmp sge i32 %38, 0, !dbg !740
  %40 = zext i1 %39 to i32, !dbg !740
  %41 = sext i32 %40 to i64, !dbg !739
  call void @klee_assume(i64 noundef %41), !dbg !741
  %42 = bitcast i32* %11 to i8*, !dbg !742
  call void @klee_make_symbolic(i8* noundef %42, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !743
  %43 = load i32, i32* %11, align 4, !dbg !744
  %44 = icmp sge i32 %43, 0, !dbg !745
  %45 = zext i1 %44 to i32, !dbg !745
  %46 = sext i32 %45 to i64, !dbg !744
  call void @klee_assume(i64 noundef %46), !dbg !746
  %47 = bitcast i32* %12 to i8*, !dbg !747
  call void @klee_make_symbolic(i8* noundef %47, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)), !dbg !748
  %48 = load i32, i32* %12, align 4, !dbg !749
  %49 = icmp sge i32 %48, 0, !dbg !750
  %50 = zext i1 %49 to i32, !dbg !750
  %51 = sext i32 %50 to i64, !dbg !749
  call void @klee_assume(i64 noundef %51), !dbg !751
  %52 = load i32, i32* %7, align 4, !dbg !752
  %53 = icmp eq i32 %52, 0, !dbg !754
  br i1 %53, label %54, label %82, !dbg !755

54:                                               ; preds = %17
  %55 = load i32, i32* %6, align 4, !dbg !756
  %56 = load i32, i32* %5, align 4, !dbg !759
  %57 = icmp sge i32 %55, %56, !dbg !760
  br i1 %57, label %58, label %68, !dbg !761

58:                                               ; preds = %54
  %59 = load i32, i32* %5, align 4, !dbg !762
  store i32 %59, i32* %6, align 4, !dbg !764
  store i32 0, i32* %5, align 4, !dbg !765
  %60 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.11, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !766
  %61 = load i8*, i8** %9, align 8, !dbg !767
  %62 = load i8*, i8** %8, align 8, !dbg !768
  %63 = load i32, i32* %6, align 4, !dbg !769
  %64 = sext i32 %63 to i64, !dbg !769
  %65 = call i8* @memcpy(i8* %61, i8* %62, i64 %64), !dbg !770
  store i32 1, i32* %7, align 4, !dbg !771
  store i32 0, i32* %11, align 4, !dbg !772
  %66 = load i32, i32* %10, align 4, !dbg !773
  %67 = sdiv i32 %66, 10, !dbg !774
  store i32 %67, i32* %12, align 4, !dbg !775
  br label %81, !dbg !776

68:                                               ; preds = %54
  %69 = load i8*, i8** %9, align 8, !dbg !777
  %70 = load i8*, i8** %8, align 8, !dbg !779
  %71 = load i32, i32* %6, align 4, !dbg !780
  %72 = sext i32 %71 to i64, !dbg !780
  %73 = call i8* @memcpy(i8* %69, i8* %70, i64 %72), !dbg !781
  %74 = load i32, i32* %6, align 4, !dbg !782
  %75 = load i32, i32* %5, align 4, !dbg !783
  %76 = sub nsw i32 %75, %74, !dbg !783
  store i32 %76, i32* %5, align 4, !dbg !783
  %77 = load i32, i32* %6, align 4, !dbg !784
  %78 = load i8*, i8** %8, align 8, !dbg !785
  %79 = sext i32 %77 to i64, !dbg !785
  %80 = getelementptr inbounds i8, i8* %78, i64 %79, !dbg !785
  store i8* %80, i8** %8, align 8, !dbg !785
  br label %81

81:                                               ; preds = %68, %58
  br label %82, !dbg !786

82:                                               ; preds = %81, %17
  %83 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !787
  call void @xmlFreeParserCtxt(%struct._xmlParserCtxt* noundef %83), !dbg !788
  store i32 0, i32* %1, align 4, !dbg !789
  br label %84, !dbg !789

84:                                               ; preds = %82, %16
  %85 = load i32, i32* %1, align 4, !dbg !790
  ret i32 %85, !dbg !790
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._xmlParserCtxt* @xmlCreatePushParserCtxt(%struct._xmlSAXHandler* noundef, i8* noundef, i8* noundef, i32 noundef, i8* noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare void @xmlFreeParserCtxt(%struct._xmlParserCtxt* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !791 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !799, metadata !DIExpression()), !dbg !800
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !801, metadata !DIExpression()), !dbg !802
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !803, metadata !DIExpression()), !dbg !804
  call void @llvm.dbg.declare(metadata i8** %7, metadata !805, metadata !DIExpression()), !dbg !806
  %9 = load i8*, i8** %4, align 8, !dbg !807
  store i8* %9, i8** %7, align 8, !dbg !806
  call void @llvm.dbg.declare(metadata i8** %8, metadata !808, metadata !DIExpression()), !dbg !809
  %10 = load i8*, i8** %5, align 8, !dbg !810
  store i8* %10, i8** %8, align 8, !dbg !809
  br label %11, !dbg !811

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !812
  %13 = add i64 %12, -1, !dbg !812
  store i64 %13, i64* %6, align 8, !dbg !812
  %14 = icmp ugt i64 %12, 0, !dbg !813
  br i1 %14, label %15, label %21, !dbg !811

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !814
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !814
  store i8* %17, i8** %8, align 8, !dbg !814
  %18 = load i8, i8* %16, align 1, !dbg !815
  %19 = load i8*, i8** %7, align 8, !dbg !816
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !816
  store i8* %20, i8** %7, align 8, !dbg !816
  store i8 %18, i8* %19, align 1, !dbg !817
  br label %11, !dbg !811, !llvm.loop !818

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !820
  ret i8* %22, !dbg !821
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !100}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109, !109}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !98, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/094_testlimits.c_184_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "606fd881fdf280984e492c43258e54ff")
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
!102 = !{i32 7, !"Dwarf Version", i32 5}
!103 = !{i32 2, !"Debug Info Version", i32 3}
!104 = !{i32 1, !"wchar_size", i32 4}
!105 = !{i32 7, !"PIC Level", i32 2}
!106 = !{i32 7, !"PIE Level", i32 2}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"Ubuntu clang version 14.0.6"}
!110 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 8, type: !111, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !113)
!111 = !DISubroutineType(types: !112)
!112 = !{!70}
!113 = !{}
!114 = !DILocalVariable(name: "ctxt", scope: !110, file: !1, line: 9, type: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxtPtr", file: !4, line: 39, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !4, line: 38, baseType: !118)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !69, line: 186, size: 6016, elements: !119)
!119 = !{!120, !522, !523, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !538, !542, !543, !544, !546, !547, !565, !566, !567, !568, !569, !570, !571, !606, !608, !609, !610, !611, !612, !613, !614, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !658, !664, !665, !666, !667, !668, !669, !670, !671, !675, !676, !678, !679, !680, !681, !682, !683, !684, !685}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "sax", scope: !118, file: !69, line: 187, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXHandler", file: !69, line: 721, size: 2048, elements: !123)
!123 = !{!124, !134, !139, !141, !143, !250, !378, !383, !385, !398, !418, !423, !440, !445, !447, !453, !458, !460, !465, !467, !472, !474, !479, !481, !483, !485, !487, !489, !490, !491, !496, !498}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "internalSubset", scope: !122, file: !69, line: 722, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "internalSubsetSAXFunc", file: !69, line: 364, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !99, !129, !129, !129}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !132, line: 28, baseType: !133)
!132 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!133 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "isStandalone", scope: !122, file: !69, line: 723, baseType: !135, size: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "isStandaloneSAXFunc", file: !69, line: 642, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!70, !99}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "hasInternalSubset", scope: !122, file: !69, line: 724, baseType: !140, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "hasInternalSubsetSAXFunc", file: !69, line: 651, baseType: !136)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "hasExternalSubset", scope: !122, file: !69, line: 725, baseType: !142, size: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "hasExternalSubsetSAXFunc", file: !69, line: 661, baseType: !136)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "resolveEntity", scope: !122, file: !69, line: 726, baseType: !144, size: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "resolveEntitySAXFunc", file: !69, line: 352, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!148, !99, !129, !129}
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputPtr", file: !4, line: 36, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInput", file: !4, line: 35, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInput", file: !69, line: 54, size: 832, elements: !152)
!152 = !{!153, !229, !232, !233, !234, !235, !236, !237, !238, !239, !240, !246, !247, !248, !249}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !151, file: !69, line: 56, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputBufferPtr", file: !4, line: 29, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputBuffer", file: !4, line: 28, baseType: !157)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInputBuffer", file: !158, line: 125, size: 512, elements: !159)
!158 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlIO.h", directory: "", checksumkind: CSK_MD5, checksum: "a868e7a396360b2f16d10eac4a34669c")
!159 = !{!160, !161, !168, !170, !219, !224, !225, !226, !227}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !157, file: !158, line: 126, baseType: !99, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "readcallback", scope: !157, file: !158, line: 127, baseType: !162, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlInputReadCallback", file: !158, line: 54, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!70, !99, !166, !70}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "closecallback", scope: !157, file: !158, line: 128, baseType: !169, size: 64, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlInputCloseCallback", file: !158, line: 63, baseType: !136)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !157, file: !158, line: 130, baseType: !171, size: 64, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandlerPtr", file: !172, line: 145, baseType: !173)
!172 = !DIFile(filename: "/usr/include/libxml2/libxml/encoding.h", directory: "", checksumkind: CSK_MD5, checksum: "807b84fade38abad3ae0d9b6af714dbc")
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandler", file: !172, line: 144, baseType: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlCharEncodingHandler", file: !172, line: 146, size: 448, elements: !176)
!176 = !{!177, !178, !187, !189, !192, !193, !218}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !175, file: !172, line: 147, baseType: !166, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !175, file: !172, line: 148, baseType: !179, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingInputFunc", file: !172, line: 101, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{!70, !183, !184, !185, !184}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !175, file: !172, line: 149, baseType: !188, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingOutputFunc", file: !172, line: 123, baseType: !180)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_in", scope: !175, file: !172, line: 151, baseType: !190, size: 64, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !191, line: 29, baseType: !99)
!191 = !DIFile(filename: "/usr/include/iconv.h", directory: "", checksumkind: CSK_MD5, checksum: "edfee9bcfa398c9184cc8f95deb97c16")
!192 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_out", scope: !175, file: !172, line: 152, baseType: !190, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_in", scope: !175, file: !172, line: 155, baseType: !194, size: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "uconv_t", file: !172, line: 141, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_uconv_t", file: !172, line: 134, size: 16640, elements: !197)
!197 = !{!198, !203, !204, !215, !217}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "uconv", scope: !196, file: !172, line: 135, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "UConverter", file: !201, line: 96, baseType: !202)
!201 = !DIFile(filename: "/usr/include/unicode/ucnv_err.h", directory: "", checksumkind: CSK_MD5, checksum: "a507bbb125e54d860485ec054a4a55ed")
!202 = !DICompositeType(tag: DW_TAG_structure_type, name: "UConverter", file: !201, line: 93, flags: DIFlagFwdDecl)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !196, file: !172, line: 136, baseType: !199, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_buf", scope: !196, file: !172, line: 137, baseType: !205, size: 16384, offset: 128)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 16384, elements: !213)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "UChar", file: !207, line: 388, baseType: !208)
!207 = !DIFile(filename: "/usr/include/unicode/umachine.h", directory: "", checksumkind: CSK_MD5, checksum: "2d902ff00eac765b305cb113b74d34df")
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !209, line: 25, baseType: !210)
!209 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !211, line: 40, baseType: !212)
!211 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!212 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!213 = !{!214}
!214 = !DISubrange(count: 1024)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_source", scope: !196, file: !172, line: 138, baseType: !216, size: 64, offset: 16512)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_target", scope: !196, file: !172, line: 139, baseType: !216, size: 64, offset: 16576)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_out", scope: !175, file: !172, line: 156, baseType: !194, size: 64, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !157, file: !158, line: 132, baseType: !220, size: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufPtr", file: !4, line: 114, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !4, line: 105, baseType: !223)
!223 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !4, line: 105, flags: DIFlagFwdDecl)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !157, file: !158, line: 133, baseType: !220, size: 64, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "compressed", scope: !157, file: !158, line: 134, baseType: !70, size: 32, offset: 384)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !157, file: !158, line: 135, baseType: !70, size: 32, offset: 416)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "rawconsumed", scope: !157, file: !158, line: 136, baseType: !228, size: 64, offset: 448)
!228 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !151, file: !69, line: 58, baseType: !230, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !151, file: !69, line: 59, baseType: !230, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !151, file: !69, line: 60, baseType: !129, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !151, file: !69, line: 61, baseType: !129, size: 64, offset: 256)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !151, file: !69, line: 62, baseType: !129, size: 64, offset: 320)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !151, file: !69, line: 63, baseType: !70, size: 32, offset: 384)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !151, file: !69, line: 64, baseType: !70, size: 32, offset: 416)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !151, file: !69, line: 65, baseType: !70, size: 32, offset: 448)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "consumed", scope: !151, file: !69, line: 71, baseType: !228, size: 64, offset: 512)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !151, file: !69, line: 72, baseType: !241, size: 64, offset: 576)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputDeallocate", file: !69, line: 52, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{null, !245}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !151, file: !69, line: 73, baseType: !129, size: 64, offset: 640)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !151, file: !69, line: 74, baseType: !129, size: 64, offset: 704)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !151, file: !69, line: 75, baseType: !70, size: 32, offset: 768)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !151, file: !69, line: 76, baseType: !70, size: 32, offset: 800)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "getEntity", scope: !122, file: !69, line: 727, baseType: !251, size: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "getEntitySAXFunc", file: !69, line: 390, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!255, !99, !129}
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntityPtr", file: !4, line: 49, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntity", file: !4, line: 48, baseType: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEntity", file: !41, line: 38, size: 1088, elements: !259)
!259 = !{!260, !261, !263, !264, !361, !362, !363, !364, !365, !366, !367, !368, !369, !371, !372, !373, !375, !376, !377}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !258, file: !41, line: 39, baseType: !99, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !258, file: !41, line: 40, baseType: !262, size: 32, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !258, file: !41, line: 41, baseType: !129, size: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !258, file: !41, line: 42, baseType: !265, size: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !267)
!267 = !{!268, !269, !270, !271, !272, !273, !274, !275, !276, !336, !339, !340, !357, !358, !359, !360}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !266, file: !4, line: 493, baseType: !99, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !266, file: !4, line: 494, baseType: !262, size: 32, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !266, file: !4, line: 495, baseType: !129, size: 64, offset: 128)
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
!282 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !278, file: !4, line: 562, baseType: !166, size: 64, offset: 128)
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
!297 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !293, file: !4, line: 408, baseType: !129, size: 64, offset: 128)
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
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !293, file: !4, line: 421, baseType: !129, size: 64, offset: 832)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !293, file: !4, line: 422, baseType: !129, size: 64, offset: 896)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !293, file: !4, line: 423, baseType: !99, size: 64, offset: 960)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !278, file: !4, line: 579, baseType: !292, size: 64, offset: 704)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !278, file: !4, line: 580, baseType: !313, size: 64, offset: 768)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !315)
!315 = !{!316, !317, !319, !320, !321, !322}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !4, line: 389, baseType: !313, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !314, file: !4, line: 390, baseType: !318, size: 32, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !262)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !314, file: !4, line: 391, baseType: !129, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !314, file: !4, line: 392, baseType: !129, size: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !314, file: !4, line: 393, baseType: !99, size: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !314, file: !4, line: 394, baseType: !277, size: 64, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !278, file: !4, line: 581, baseType: !129, size: 64, offset: 832)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !278, file: !4, line: 582, baseType: !129, size: 64, offset: 896)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !278, file: !4, line: 583, baseType: !99, size: 64, offset: 960)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !278, file: !4, line: 584, baseType: !99, size: 64, offset: 1024)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !278, file: !4, line: 585, baseType: !129, size: 64, offset: 1088)
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
!339 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !266, file: !4, line: 505, baseType: !245, size: 64, offset: 640)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !266, file: !4, line: 506, baseType: !341, size: 64, offset: 704)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !343)
!343 = !{!344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !356}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !342, file: !4, line: 434, baseType: !99, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !342, file: !4, line: 435, baseType: !262, size: 32, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !342, file: !4, line: 436, baseType: !129, size: 64, offset: 128)
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
!359 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !266, file: !4, line: 509, baseType: !212, size: 16, offset: 896)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !266, file: !4, line: 510, baseType: !212, size: 16, offset: 912)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !258, file: !41, line: 43, baseType: !265, size: 64, offset: 256)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !258, file: !41, line: 44, baseType: !292, size: 64, offset: 320)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !258, file: !41, line: 45, baseType: !265, size: 64, offset: 384)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !258, file: !41, line: 46, baseType: !265, size: 64, offset: 448)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !258, file: !41, line: 47, baseType: !277, size: 64, offset: 512)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !258, file: !41, line: 49, baseType: !245, size: 64, offset: 576)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !258, file: !41, line: 50, baseType: !245, size: 64, offset: 640)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !258, file: !41, line: 51, baseType: !70, size: 32, offset: 704)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "etype", scope: !258, file: !41, line: 52, baseType: !370, size: 32, offset: 736)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntityType", file: !41, line: 31, baseType: !40)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !258, file: !41, line: 53, baseType: !129, size: 64, offset: 768)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !258, file: !41, line: 54, baseType: !129, size: 64, offset: 832)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "nexte", scope: !258, file: !41, line: 56, baseType: !374, size: 64, offset: 896)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "URI", scope: !258, file: !41, line: 57, baseType: !129, size: 64, offset: 960)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !258, file: !41, line: 58, baseType: !70, size: 32, offset: 1024)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "checked", scope: !258, file: !41, line: 59, baseType: !70, size: 32, offset: 1056)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "entityDecl", scope: !122, file: !69, line: 728, baseType: !379, size: 64, offset: 384)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "entityDeclSAXFunc", file: !69, line: 414, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !99, !129, !70, !129, !129, !245}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "notationDecl", scope: !122, file: !69, line: 729, baseType: !384, size: 64, offset: 448)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "notationDeclSAXFunc", file: !69, line: 429, baseType: !126)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "attributeDecl", scope: !122, file: !69, line: 730, baseType: !386, size: 64, offset: 512)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "attributeDeclSAXFunc", file: !69, line: 445, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !99, !129, !129, !70, !70, !129, !390}
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEnumerationPtr", file: !4, line: 239, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEnumeration", file: !4, line: 238, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEnumeration", file: !4, line: 240, size: 128, elements: !394)
!394 = !{!395, !397}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !393, file: !4, line: 241, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !393, file: !4, line: 242, baseType: !129, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "elementDecl", scope: !122, file: !69, line: 731, baseType: !399, size: 64, offset: 576)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "elementDeclSAXFunc", file: !69, line: 461, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !99, !129, !70, !403}
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentPtr", file: !4, line: 305, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContent", file: !4, line: 304, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlElementContent", file: !4, line: 306, size: 384, elements: !407)
!407 = !{!408, !410, !412, !413, !415, !416, !417}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !406, file: !4, line: 307, baseType: !409, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentType", file: !4, line: 283, baseType: !49)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "ocur", scope: !406, file: !4, line: 308, baseType: !411, size: 32, offset: 32)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentOccur", file: !4, line: 295, baseType: !55)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !406, file: !4, line: 309, baseType: !129, size: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !406, file: !4, line: 310, baseType: !414, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !406, file: !4, line: 311, baseType: !414, size: 64, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !406, file: !4, line: 312, baseType: !414, size: 64, offset: 256)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !406, file: !4, line: 313, baseType: !129, size: 64, offset: 320)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "unparsedEntityDecl", scope: !122, file: !69, line: 732, baseType: !419, size: 64, offset: 640)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "unparsedEntityDeclSAXFunc", file: !69, line: 475, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !99, !129, !129, !129, !129}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "setDocumentLocator", scope: !122, file: !69, line: 733, baseType: !424, size: 64, offset: 704)
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
!436 = !{!129, !99}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "getSystemId", scope: !431, file: !69, line: 325, baseType: !434, size: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "getLineNumber", scope: !431, file: !69, line: 326, baseType: !136, size: 64, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "getColumnNumber", scope: !431, file: !69, line: 327, baseType: !136, size: 64, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "startDocument", scope: !122, file: !69, line: 734, baseType: !441, size: 64, offset: 768)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "startDocumentSAXFunc", file: !69, line: 496, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !99}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "endDocument", scope: !122, file: !69, line: 735, baseType: !446, size: 64, offset: 832)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "endDocumentSAXFunc", file: !69, line: 503, baseType: !442)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "startElement", scope: !122, file: !69, line: 736, baseType: !448, size: 64, offset: 896)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "startElementSAXFunc", file: !69, line: 512, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !99, !129, !452}
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "endElement", scope: !122, file: !69, line: 737, baseType: !454, size: 64, offset: 960)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "endElementSAXFunc", file: !69, line: 522, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !99, !129}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !122, file: !69, line: 738, baseType: !459, size: 64, offset: 1024)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "referenceSAXFunc", file: !69, line: 545, baseType: !455)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "characters", scope: !122, file: !69, line: 739, baseType: !461, size: 64, offset: 1088)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "charactersSAXFunc", file: !69, line: 555, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !99, !129, !70}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "ignorableWhitespace", scope: !122, file: !69, line: 740, baseType: !466, size: 64, offset: 1152)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "ignorableWhitespaceSAXFunc", file: !69, line: 567, baseType: !462)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "processingInstruction", scope: !122, file: !69, line: 741, baseType: !468, size: 64, offset: 1216)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "processingInstructionSAXFunc", file: !69, line: 578, baseType: !469)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !99, !129, !129}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !122, file: !69, line: 742, baseType: !473, size: 64, offset: 1280)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "commentSAXFunc", file: !69, line: 588, baseType: !455)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "warning", scope: !122, file: !69, line: 743, baseType: !475, size: 64, offset: 1344)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "warningSAXFunc", file: !69, line: 610, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !99, !230, null}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !122, file: !69, line: 744, baseType: !480, size: 64, offset: 1408)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "errorSAXFunc", file: !69, line: 620, baseType: !476)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "fatalError", scope: !122, file: !69, line: 745, baseType: !482, size: 64, offset: 1472)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "fatalErrorSAXFunc", file: !69, line: 632, baseType: !476)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "getParameterEntity", scope: !122, file: !69, line: 746, baseType: !484, size: 64, offset: 1536)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "getParameterEntitySAXFunc", file: !69, line: 401, baseType: !252)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "cdataBlock", scope: !122, file: !69, line: 747, baseType: !486, size: 64, offset: 1600)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "cdataBlockSAXFunc", file: !69, line: 598, baseType: !462)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "externalSubset", scope: !122, file: !69, line: 748, baseType: !488, size: 64, offset: 1664)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "externalSubsetSAXFunc", file: !69, line: 377, baseType: !126)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !122, file: !69, line: 749, baseType: !5, size: 32, offset: 1728)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !122, file: !69, line: 751, baseType: !99, size: 64, offset: 1792)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "startElementNs", scope: !122, file: !69, line: 752, baseType: !492, size: 64, offset: 1856)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "startElementNsSAX2Func", file: !69, line: 694, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !99, !129, !129, !129, !70, !452, !70, !70, !452}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "endElementNs", scope: !122, file: !69, line: 753, baseType: !497, size: 64, offset: 1920)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "endElementNsSAX2Func", file: !69, line: 715, baseType: !126)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "serror", scope: !122, file: !69, line: 754, baseType: !499, size: 64, offset: 1984)
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
!510 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !506, file: !62, line: 81, baseType: !166, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !506, file: !62, line: 82, baseType: !512, size: 32, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorLevel", file: !62, line: 29, baseType: !61)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !506, file: !62, line: 83, baseType: !166, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !506, file: !62, line: 84, baseType: !70, size: 32, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "str1", scope: !506, file: !62, line: 85, baseType: !166, size: 64, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "str2", scope: !506, file: !62, line: 86, baseType: !166, size: 64, offset: 384)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "str3", scope: !506, file: !62, line: 87, baseType: !166, size: 64, offset: 448)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "int1", scope: !506, file: !62, line: 88, baseType: !70, size: 32, offset: 512)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "int2", scope: !506, file: !62, line: 89, baseType: !70, size: 32, offset: 544)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ctxt", scope: !506, file: !62, line: 90, baseType: !99, size: 64, offset: 576)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !506, file: !62, line: 91, baseType: !99, size: 64, offset: 640)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !118, file: !69, line: 188, baseType: !99, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "myDoc", scope: !118, file: !69, line: 189, baseType: !524, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !278)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "wellFormed", scope: !118, file: !69, line: 190, baseType: !70, size: 32, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "replaceEntities", scope: !118, file: !69, line: 191, baseType: !70, size: 32, offset: 224)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !118, file: !69, line: 192, baseType: !129, size: 64, offset: 256)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !118, file: !69, line: 193, baseType: !129, size: 64, offset: 320)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !118, file: !69, line: 194, baseType: !70, size: 32, offset: 384)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "html", scope: !118, file: !69, line: 195, baseType: !70, size: 32, offset: 416)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !118, file: !69, line: 201, baseType: !148, size: 64, offset: 448)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "inputNr", scope: !118, file: !69, line: 202, baseType: !70, size: 32, offset: 512)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "inputMax", scope: !118, file: !69, line: 203, baseType: !70, size: 32, offset: 544)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "inputTab", scope: !118, file: !69, line: 204, baseType: !537, size: 64, offset: 576)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !118, file: !69, line: 207, baseType: !539, size: 64, offset: 640)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !266)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !118, file: !69, line: 208, baseType: !70, size: 32, offset: 704)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !118, file: !69, line: 209, baseType: !70, size: 32, offset: 736)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !118, file: !69, line: 210, baseType: !545, size: 64, offset: 768)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "record_info", scope: !118, file: !69, line: 212, baseType: !70, size: 32, offset: 832)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "node_seq", scope: !118, file: !69, line: 213, baseType: !548, size: 192, offset: 896)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserNodeInfoSeq", file: !69, line: 98, baseType: !549)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserNodeInfoSeq", file: !69, line: 100, size: 192, elements: !550)
!550 = !{!551, !552, !553}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !549, file: !69, line: 101, baseType: !228, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !549, file: !69, line: 102, baseType: !228, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !549, file: !69, line: 103, baseType: !554, size: 64, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserNodeInfo", file: !69, line: 86, baseType: !556)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserNodeInfo", file: !69, line: 89, size: 320, elements: !557)
!557 = !{!558, !561, !562, !563, !564}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !556, file: !69, line: 90, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "begin_pos", scope: !556, file: !69, line: 92, baseType: !228, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "begin_line", scope: !556, file: !69, line: 93, baseType: !228, size: 64, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "end_pos", scope: !556, file: !69, line: 94, baseType: !228, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !556, file: !69, line: 95, baseType: !228, size: 64, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "errNo", scope: !118, file: !69, line: 215, baseType: !70, size: 32, offset: 1088)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "hasExternalSubset", scope: !118, file: !69, line: 217, baseType: !70, size: 32, offset: 1120)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "hasPErefs", scope: !118, file: !69, line: 218, baseType: !70, size: 32, offset: 1152)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "external", scope: !118, file: !69, line: 219, baseType: !70, size: 32, offset: 1184)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !118, file: !69, line: 221, baseType: !70, size: 32, offset: 1216)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !118, file: !69, line: 222, baseType: !70, size: 32, offset: 1248)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "vctxt", scope: !118, file: !69, line: 223, baseType: !572, size: 896, offset: 1280)
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
!606 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !118, file: !69, line: 225, baseType: !607, size: 32, offset: 2176)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputState", file: !69, line: 131, baseType: !68)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !118, file: !69, line: 226, baseType: !70, size: 32, offset: 2208)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !118, file: !69, line: 228, baseType: !166, size: 64, offset: 2240)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !118, file: !69, line: 231, baseType: !129, size: 64, offset: 2304)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "nameNr", scope: !118, file: !69, line: 232, baseType: !70, size: 32, offset: 2368)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "nameMax", scope: !118, file: !69, line: 233, baseType: !70, size: 32, offset: 2400)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "nameTab", scope: !118, file: !69, line: 234, baseType: !452, size: 64, offset: 2432)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "nbChars", scope: !118, file: !69, line: 236, baseType: !615, size: 64, offset: 2496)
!615 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "checkIndex", scope: !118, file: !69, line: 237, baseType: !615, size: 64, offset: 2560)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "keepBlanks", scope: !118, file: !69, line: 238, baseType: !70, size: 32, offset: 2624)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "disableSAX", scope: !118, file: !69, line: 239, baseType: !70, size: 32, offset: 2656)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "inSubset", scope: !118, file: !69, line: 240, baseType: !70, size: 32, offset: 2688)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "intSubName", scope: !118, file: !69, line: 241, baseType: !129, size: 64, offset: 2752)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "extSubURI", scope: !118, file: !69, line: 242, baseType: !245, size: 64, offset: 2816)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "extSubSystem", scope: !118, file: !69, line: 243, baseType: !245, size: 64, offset: 2880)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !118, file: !69, line: 246, baseType: !184, size: 64, offset: 2944)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "spaceNr", scope: !118, file: !69, line: 247, baseType: !70, size: 32, offset: 3008)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "spaceMax", scope: !118, file: !69, line: 248, baseType: !70, size: 32, offset: 3040)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "spaceTab", scope: !118, file: !69, line: 249, baseType: !184, size: 64, offset: 3072)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !118, file: !69, line: 251, baseType: !70, size: 32, offset: 3136)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !118, file: !69, line: 252, baseType: !148, size: 64, offset: 3200)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !118, file: !69, line: 253, baseType: !70, size: 32, offset: 3264)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "nodelen", scope: !118, file: !69, line: 255, baseType: !70, size: 32, offset: 3296)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "nodemem", scope: !118, file: !69, line: 256, baseType: !70, size: 32, offset: 3328)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "pedantic", scope: !118, file: !69, line: 257, baseType: !70, size: 32, offset: 3360)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !118, file: !69, line: 258, baseType: !99, size: 64, offset: 3392)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "loadsubset", scope: !118, file: !69, line: 260, baseType: !70, size: 32, offset: 3456)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "linenumbers", scope: !118, file: !69, line: 261, baseType: !70, size: 32, offset: 3488)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "catalogs", scope: !118, file: !69, line: 262, baseType: !99, size: 64, offset: 3520)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "recovery", scope: !118, file: !69, line: 263, baseType: !70, size: 32, offset: 3584)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "progressive", scope: !118, file: !69, line: 264, baseType: !70, size: 32, offset: 3616)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !118, file: !69, line: 265, baseType: !640, size: 64, offset: 3648)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !332, line: 25, baseType: !641)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !332, line: 24, baseType: !331)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "atts", scope: !118, file: !69, line: 266, baseType: !452, size: 64, offset: 3712)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "maxatts", scope: !118, file: !69, line: 267, baseType: !70, size: 32, offset: 3776)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "docdict", scope: !118, file: !69, line: 268, baseType: !70, size: 32, offset: 3808)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "str_xml", scope: !118, file: !69, line: 273, baseType: !129, size: 64, offset: 3840)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "str_xmlns", scope: !118, file: !69, line: 274, baseType: !129, size: 64, offset: 3904)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "str_xml_ns", scope: !118, file: !69, line: 275, baseType: !129, size: 64, offset: 3968)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "sax2", scope: !118, file: !69, line: 280, baseType: !70, size: 32, offset: 4032)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "nsNr", scope: !118, file: !69, line: 281, baseType: !70, size: 32, offset: 4064)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "nsMax", scope: !118, file: !69, line: 282, baseType: !70, size: 32, offset: 4096)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "nsTab", scope: !118, file: !69, line: 283, baseType: !452, size: 64, offset: 4160)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "attallocs", scope: !118, file: !69, line: 284, baseType: !184, size: 64, offset: 4224)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "pushTab", scope: !118, file: !69, line: 285, baseType: !655, size: 64, offset: 4288)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStartTag", file: !69, line: 172, baseType: !657)
!657 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlStartTag", file: !69, line: 172, flags: DIFlagFwdDecl)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "attsDefault", scope: !118, file: !69, line: 286, baseType: !659, size: 64, offset: 4352)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !660, line: 22, baseType: !661)
!660 = !DIFile(filename: "/usr/include/libxml2/libxml/hash.h", directory: "", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !660, line: 21, baseType: !663)
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !660, line: 21, flags: DIFlagFwdDecl)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "attsSpecial", scope: !118, file: !69, line: 287, baseType: !659, size: 64, offset: 4416)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "nsWellFormed", scope: !118, file: !69, line: 288, baseType: !70, size: 32, offset: 4480)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !118, file: !69, line: 289, baseType: !70, size: 32, offset: 4512)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "dictNames", scope: !118, file: !69, line: 294, baseType: !70, size: 32, offset: 4544)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "freeElemsNr", scope: !118, file: !69, line: 295, baseType: !70, size: 32, offset: 4576)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "freeElems", scope: !118, file: !69, line: 296, baseType: !539, size: 64, offset: 4608)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "freeAttrsNr", scope: !118, file: !69, line: 297, baseType: !70, size: 32, offset: 4672)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "freeAttrs", scope: !118, file: !69, line: 298, baseType: !672, size: 64, offset: 4736)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttrPtr", file: !4, line: 432, baseType: !673)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttr", file: !4, line: 431, baseType: !342)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "lastError", scope: !118, file: !69, line: 303, baseType: !505, size: 704, offset: 4800)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "parseMode", scope: !118, file: !69, line: 304, baseType: !677, size: 32, offset: 5504)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserMode", file: !69, line: 170, baseType: !90)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "nbentities", scope: !118, file: !69, line: 305, baseType: !228, size: 64, offset: 5568)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "sizeentities", scope: !118, file: !69, line: 306, baseType: !228, size: 64, offset: 5632)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfo", scope: !118, file: !69, line: 309, baseType: !554, size: 64, offset: 5696)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfoNr", scope: !118, file: !69, line: 310, baseType: !70, size: 32, offset: 5760)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfoMax", scope: !118, file: !69, line: 311, baseType: !70, size: 32, offset: 5792)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfoTab", scope: !118, file: !69, line: 312, baseType: !554, size: 64, offset: 5824)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "input_id", scope: !118, file: !69, line: 314, baseType: !70, size: 32, offset: 5888)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "sizeentcopy", scope: !118, file: !69, line: 315, baseType: !228, size: 64, offset: 5952)
!686 = !DILocation(line: 9, column: 22, scope: !110)
!687 = !DILocalVariable(name: "buffer_data", scope: !110, file: !1, line: 10, type: !230)
!688 = !DILocation(line: 10, column: 17, scope: !110)
!689 = !DILocalVariable(name: "buffer_len", scope: !110, file: !1, line: 11, type: !70)
!690 = !DILocation(line: 11, column: 9, scope: !110)
!691 = !DILocalVariable(name: "rlen", scope: !110, file: !1, line: 12, type: !70)
!692 = !DILocation(line: 12, column: 9, scope: !110)
!693 = !DILocalVariable(name: "len", scope: !110, file: !1, line: 13, type: !70)
!694 = !DILocation(line: 13, column: 9, scope: !110)
!695 = !DILocalVariable(name: "instate", scope: !110, file: !1, line: 14, type: !70)
!696 = !DILocation(line: 14, column: 9, scope: !110)
!697 = !DILocalVariable(name: "current", scope: !110, file: !1, line: 15, type: !166)
!698 = !DILocation(line: 15, column: 11, scope: !110)
!699 = !DILocalVariable(name: "buffer", scope: !110, file: !1, line: 16, type: !166)
!700 = !DILocation(line: 16, column: 11, scope: !110)
!701 = !DILocalVariable(name: "maxlen", scope: !110, file: !1, line: 17, type: !70)
!702 = !DILocation(line: 17, column: 9, scope: !110)
!703 = !DILocalVariable(name: "curlen", scope: !110, file: !1, line: 18, type: !70)
!704 = !DILocation(line: 18, column: 9, scope: !110)
!705 = !DILocalVariable(name: "dotlen", scope: !110, file: !1, line: 19, type: !70)
!706 = !DILocation(line: 19, column: 9, scope: !110)
!707 = !DILocation(line: 21, column: 12, scope: !110)
!708 = !DILocation(line: 21, column: 10, scope: !110)
!709 = !DILocation(line: 22, column: 9, scope: !710)
!710 = distinct !DILexicalBlock(scope: !110, file: !1, line: 22, column: 9)
!711 = !DILocation(line: 22, column: 14, scope: !710)
!712 = !DILocation(line: 22, column: 9, scope: !110)
!713 = !DILocation(line: 22, column: 23, scope: !710)
!714 = !DILocation(line: 24, column: 24, scope: !110)
!715 = !DILocation(line: 24, column: 5, scope: !110)
!716 = !DILocation(line: 25, column: 24, scope: !110)
!717 = !DILocation(line: 25, column: 5, scope: !110)
!718 = !DILocation(line: 26, column: 17, scope: !110)
!719 = !DILocation(line: 26, column: 28, scope: !110)
!720 = !DILocation(line: 26, column: 5, scope: !110)
!721 = !DILocation(line: 27, column: 24, scope: !110)
!722 = !DILocation(line: 27, column: 5, scope: !110)
!723 = !DILocation(line: 28, column: 17, scope: !110)
!724 = !DILocation(line: 28, column: 22, scope: !110)
!725 = !DILocation(line: 28, column: 5, scope: !110)
!726 = !DILocation(line: 29, column: 24, scope: !110)
!727 = !DILocation(line: 29, column: 5, scope: !110)
!728 = !DILocation(line: 30, column: 17, scope: !110)
!729 = !DILocation(line: 30, column: 21, scope: !110)
!730 = !DILocation(line: 30, column: 5, scope: !110)
!731 = !DILocation(line: 31, column: 24, scope: !110)
!732 = !DILocation(line: 31, column: 5, scope: !110)
!733 = !DILocation(line: 32, column: 24, scope: !110)
!734 = !DILocation(line: 32, column: 5, scope: !110)
!735 = !DILocation(line: 33, column: 24, scope: !110)
!736 = !DILocation(line: 33, column: 5, scope: !110)
!737 = !DILocation(line: 34, column: 24, scope: !110)
!738 = !DILocation(line: 34, column: 5, scope: !110)
!739 = !DILocation(line: 35, column: 17, scope: !110)
!740 = !DILocation(line: 35, column: 24, scope: !110)
!741 = !DILocation(line: 35, column: 5, scope: !110)
!742 = !DILocation(line: 36, column: 24, scope: !110)
!743 = !DILocation(line: 36, column: 5, scope: !110)
!744 = !DILocation(line: 37, column: 17, scope: !110)
!745 = !DILocation(line: 37, column: 24, scope: !110)
!746 = !DILocation(line: 37, column: 5, scope: !110)
!747 = !DILocation(line: 38, column: 24, scope: !110)
!748 = !DILocation(line: 38, column: 5, scope: !110)
!749 = !DILocation(line: 39, column: 17, scope: !110)
!750 = !DILocation(line: 39, column: 24, scope: !110)
!751 = !DILocation(line: 39, column: 5, scope: !110)
!752 = !DILocation(line: 41, column: 9, scope: !753)
!753 = distinct !DILexicalBlock(scope: !110, file: !1, line: 41, column: 9)
!754 = !DILocation(line: 41, column: 17, scope: !753)
!755 = !DILocation(line: 41, column: 9, scope: !110)
!756 = !DILocation(line: 42, column: 13, scope: !757)
!757 = distinct !DILexicalBlock(scope: !758, file: !1, line: 42, column: 13)
!758 = distinct !DILexicalBlock(scope: !753, file: !1, line: 41, column: 23)
!759 = !DILocation(line: 42, column: 20, scope: !757)
!760 = !DILocation(line: 42, column: 17, scope: !757)
!761 = !DILocation(line: 42, column: 13, scope: !758)
!762 = !DILocation(line: 43, column: 19, scope: !763)
!763 = distinct !DILexicalBlock(scope: !757, file: !1, line: 42, column: 26)
!764 = !DILocation(line: 43, column: 17, scope: !763)
!765 = !DILocation(line: 44, column: 18, scope: !763)
!766 = !DILocation(line: 45, column: 13, scope: !763)
!767 = !DILocation(line: 46, column: 20, scope: !763)
!768 = !DILocation(line: 46, column: 28, scope: !763)
!769 = !DILocation(line: 46, column: 37, scope: !763)
!770 = !DILocation(line: 46, column: 13, scope: !763)
!771 = !DILocation(line: 47, column: 21, scope: !763)
!772 = !DILocation(line: 48, column: 20, scope: !763)
!773 = !DILocation(line: 49, column: 22, scope: !763)
!774 = !DILocation(line: 49, column: 29, scope: !763)
!775 = !DILocation(line: 49, column: 20, scope: !763)
!776 = !DILocation(line: 50, column: 9, scope: !763)
!777 = !DILocation(line: 51, column: 20, scope: !778)
!778 = distinct !DILexicalBlock(scope: !757, file: !1, line: 50, column: 16)
!779 = !DILocation(line: 51, column: 28, scope: !778)
!780 = !DILocation(line: 51, column: 37, scope: !778)
!781 = !DILocation(line: 51, column: 13, scope: !778)
!782 = !DILocation(line: 52, column: 21, scope: !778)
!783 = !DILocation(line: 52, column: 18, scope: !778)
!784 = !DILocation(line: 53, column: 24, scope: !778)
!785 = !DILocation(line: 53, column: 21, scope: !778)
!786 = !DILocation(line: 55, column: 5, scope: !758)
!787 = !DILocation(line: 57, column: 23, scope: !110)
!788 = !DILocation(line: 57, column: 5, scope: !110)
!789 = !DILocation(line: 58, column: 5, scope: !110)
!790 = !DILocation(line: 59, column: 1, scope: !110)
!791 = distinct !DISubprogram(name: "memcpy", scope: !792, file: !792, line: 12, type: !793, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !113)
!792 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!793 = !DISubroutineType(types: !794)
!794 = !{!99, !99, !795, !797}
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !798, line: 46, baseType: !228)
!798 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!799 = !DILocalVariable(name: "destaddr", arg: 1, scope: !791, file: !792, line: 12, type: !99)
!800 = !DILocation(line: 12, column: 20, scope: !791)
!801 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !791, file: !792, line: 12, type: !795)
!802 = !DILocation(line: 12, column: 42, scope: !791)
!803 = !DILocalVariable(name: "len", arg: 3, scope: !791, file: !792, line: 12, type: !797)
!804 = !DILocation(line: 12, column: 58, scope: !791)
!805 = !DILocalVariable(name: "dest", scope: !791, file: !792, line: 13, type: !166)
!806 = !DILocation(line: 13, column: 9, scope: !791)
!807 = !DILocation(line: 13, column: 16, scope: !791)
!808 = !DILocalVariable(name: "src", scope: !791, file: !792, line: 14, type: !230)
!809 = !DILocation(line: 14, column: 15, scope: !791)
!810 = !DILocation(line: 14, column: 21, scope: !791)
!811 = !DILocation(line: 16, column: 3, scope: !791)
!812 = !DILocation(line: 16, column: 13, scope: !791)
!813 = !DILocation(line: 16, column: 16, scope: !791)
!814 = !DILocation(line: 17, column: 19, scope: !791)
!815 = !DILocation(line: 17, column: 15, scope: !791)
!816 = !DILocation(line: 17, column: 10, scope: !791)
!817 = !DILocation(line: 17, column: 13, scope: !791)
!818 = distinct !{!818, !811, !814, !819}
!819 = !{!"llvm.loop.mustprogress"}
!820 = !DILocation(line: 18, column: 10, scope: !791)
!821 = !DILocation(line: 18, column: 3, scope: !791)

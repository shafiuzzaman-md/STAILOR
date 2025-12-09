; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/099_runtest.c_3328_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/099_runtest.c_3328_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque
%struct._xmlParserInputBuffer = type { i8*, i32 (i8*, i8*, i32)*, i32 (i8*)*, %struct._xmlCharEncodingHandler*, %struct._xmlBuf*, %struct._xmlBuf*, i32, i32, i64 }
%struct._xmlCharEncodingHandler = type { i8*, i32 (i8*, i32*, i8*, i32*)*, i32 (i8*, i32*, i8*, i32*)*, i8*, i8*, %struct._uconv_t*, %struct._uconv_t* }
%struct._uconv_t = type { %struct.UConverter*, %struct.UConverter*, [1024 x i16], i16*, i16* }
%struct.UConverter = type opaque
%struct._xmlBuf = type opaque
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
%struct._xmlStartTag = type opaque
%struct._xmlHashTable = type opaque
%struct._xmlError = type { i32, i32, i8*, i32, i8*, i32, i8*, i8*, i8*, i32, i32, i8*, i8* }
%struct._xmlParserNodeInfo = type { %struct._xmlNode*, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"url_len\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"url_data\00", align 1
@urip_rlen = internal global i32 0, align 4, !dbg !0
@.str.2 = private unnamed_addr constant [9 x i8] c"test.xml\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/099_runtest.c_3328_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.uripRead = private unnamed_addr constant [34 x i8] c"int uripRead(void *, char *, int)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !148 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlDoc*, align 8
  %5 = alloca %struct._xmlParserInputBuffer*, align 8
  %6 = alloca %struct._xmlParserCtxt*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !152, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.declare(metadata i32* %3, metadata !154, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %4, metadata !156, metadata !DIExpression()), !dbg !265
  %7 = bitcast i32* %3 to i8*, !dbg !266
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !267
  %8 = load i32, i32* %3, align 4, !dbg !268
  %9 = icmp sge i32 %8, 0, !dbg !269
  br i1 %9, label %10, label %13, !dbg !270

10:                                               ; preds = %0
  %11 = load i32, i32* %3, align 4, !dbg !271
  %12 = icmp slt i32 %11, 1024, !dbg !272
  br label %13

13:                                               ; preds = %10, %0
  %14 = phi i1 [ false, %0 ], [ %12, %10 ], !dbg !273
  %15 = zext i1 %14 to i32, !dbg !270
  %16 = sext i32 %15 to i64, !dbg !268
  call void @klee_assume(i64 noundef %16), !dbg !274
  %17 = load i32, i32* %3, align 4, !dbg !275
  %18 = add nsw i32 %17, 1, !dbg !276
  %19 = sext i32 %18 to i64, !dbg !275
  %20 = call noalias i8* @malloc(i64 noundef %19) #7, !dbg !277
  store i8* %20, i8** %2, align 8, !dbg !278
  %21 = load i8*, i8** %2, align 8, !dbg !279
  %22 = load i32, i32* %3, align 4, !dbg !280
  %23 = add nsw i32 %22, 1, !dbg !281
  %24 = sext i32 %23 to i64, !dbg !280
  call void @klee_make_symbolic(i8* noundef %21, i64 noundef %24, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !282
  %25 = load i32, i32* %3, align 4, !dbg !283
  store i32 %25, i32* @urip_rlen, align 4, !dbg !284
  call void @llvm.dbg.declare(metadata %struct._xmlParserInputBuffer** %5, metadata !285, metadata !DIExpression()), !dbg !355
  %26 = load i8*, i8** %2, align 8, !dbg !356
  %27 = load i32, i32* %3, align 4, !dbg !357
  %28 = call %struct._xmlParserInputBuffer* @create_custom_input_buffer(i8* noundef %26, i32 noundef %27), !dbg !358
  store %struct._xmlParserInputBuffer* %28, %struct._xmlParserInputBuffer** %5, align 8, !dbg !355
  %29 = load %struct._xmlParserInputBuffer*, %struct._xmlParserInputBuffer** %5, align 8, !dbg !359
  %30 = icmp eq %struct._xmlParserInputBuffer* %29, null, !dbg !361
  br i1 %30, label %31, label %33, !dbg !362

31:                                               ; preds = %13
  %32 = load i8*, i8** %2, align 8, !dbg !363
  call void @free(i8* noundef %32) #7, !dbg !365
  store i32 1, i32* %1, align 4, !dbg !366
  br label %57, !dbg !366

33:                                               ; preds = %13
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %6, metadata !367, metadata !DIExpression()), !dbg !753
  %34 = load %struct._xmlParserInputBuffer*, %struct._xmlParserInputBuffer** %5, align 8, !dbg !754
  %35 = getelementptr inbounds %struct._xmlParserInputBuffer, %struct._xmlParserInputBuffer* %34, i32 0, i32 1, !dbg !755
  %36 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %35, align 8, !dbg !755
  %37 = load i8*, i8** %2, align 8, !dbg !756
  %38 = call %struct._xmlParserCtxt* @xmlCreateIOParserCtxt(%struct._xmlSAXHandler* noundef null, i8* noundef null, i32 (i8*, i8*, i32)* noundef %36, i32 (i8*)* noundef null, i8* noundef %37, i32 noundef 0), !dbg !757
  store %struct._xmlParserCtxt* %38, %struct._xmlParserCtxt** %6, align 8, !dbg !753
  %39 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %6, align 8, !dbg !758
  %40 = icmp eq %struct._xmlParserCtxt* %39, null, !dbg !760
  br i1 %40, label %41, label %44, !dbg !761

41:                                               ; preds = %33
  %42 = load %struct._xmlParserInputBuffer*, %struct._xmlParserInputBuffer** %5, align 8, !dbg !762
  call void @xmlFreeParserInputBuffer(%struct._xmlParserInputBuffer* noundef %42), !dbg !764
  %43 = load i8*, i8** %2, align 8, !dbg !765
  call void @free(i8* noundef %43) #7, !dbg !766
  store i32 1, i32* %1, align 4, !dbg !767
  br label %57, !dbg !767

44:                                               ; preds = %33
  %45 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %6, align 8, !dbg !768
  %46 = call i32 (%struct._xmlParserCtxt*, i8*, i8*, i32, ...) bitcast (i32 (...)* @xmlDoRead to i32 (%struct._xmlParserCtxt*, i8*, i8*, i32, ...)*)(%struct._xmlParserCtxt* noundef %45, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef null, i32 noundef 0), !dbg !769
  %47 = sext i32 %46 to i64, !dbg !769
  %48 = inttoptr i64 %47 to %struct._xmlDoc*, !dbg !769
  store %struct._xmlDoc* %48, %struct._xmlDoc** %4, align 8, !dbg !770
  %49 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !771
  %50 = icmp ne %struct._xmlDoc* %49, null, !dbg !771
  br i1 %50, label %51, label %53, !dbg !773

51:                                               ; preds = %44
  %52 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !774
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %52), !dbg !775
  br label %53, !dbg !775

53:                                               ; preds = %51, %44
  %54 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %6, align 8, !dbg !776
  call void @xmlFreeParserCtxt(%struct._xmlParserCtxt* noundef %54), !dbg !777
  %55 = load %struct._xmlParserInputBuffer*, %struct._xmlParserInputBuffer** %5, align 8, !dbg !778
  call void @xmlFreeParserInputBuffer(%struct._xmlParserInputBuffer* noundef %55), !dbg !779
  %56 = load i8*, i8** %2, align 8, !dbg !780
  call void @free(i8* noundef %56) #7, !dbg !781
  store i32 0, i32* %1, align 4, !dbg !782
  br label %57, !dbg !782

57:                                               ; preds = %53, %41, %31
  %58 = load i32, i32* %1, align 4, !dbg !783
  ret i32 %58, !dbg !783
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._xmlParserInputBuffer* @create_custom_input_buffer(i8* noundef %0, i32 noundef %1) #0 !dbg !784 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlParserInputBuffer*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !787, metadata !DIExpression()), !dbg !788
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !789, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.declare(metadata %struct._xmlParserInputBuffer** %5, metadata !791, metadata !DIExpression()), !dbg !792
  %6 = call %struct._xmlParserInputBuffer* @xmlAllocParserInputBuffer(i32 noundef 0), !dbg !793
  store %struct._xmlParserInputBuffer* %6, %struct._xmlParserInputBuffer** %5, align 8, !dbg !792
  %7 = load %struct._xmlParserInputBuffer*, %struct._xmlParserInputBuffer** %5, align 8, !dbg !794
  %8 = icmp ne %struct._xmlParserInputBuffer* %7, null, !dbg !794
  br i1 %8, label %9, label %15, !dbg !796

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8, !dbg !797
  %11 = load %struct._xmlParserInputBuffer*, %struct._xmlParserInputBuffer** %5, align 8, !dbg !799
  %12 = getelementptr inbounds %struct._xmlParserInputBuffer, %struct._xmlParserInputBuffer* %11, i32 0, i32 0, !dbg !800
  store i8* %10, i8** %12, align 8, !dbg !801
  %13 = load %struct._xmlParserInputBuffer*, %struct._xmlParserInputBuffer** %5, align 8, !dbg !802
  %14 = getelementptr inbounds %struct._xmlParserInputBuffer, %struct._xmlParserInputBuffer* %13, i32 0, i32 1, !dbg !803
  store i32 (i8*, i8*, i32)* @uripRead, i32 (i8*, i8*, i32)** %14, align 8, !dbg !804
  br label %15, !dbg !805

15:                                               ; preds = %9, %2
  %16 = load %struct._xmlParserInputBuffer*, %struct._xmlParserInputBuffer** %5, align 8, !dbg !806
  ret %struct._xmlParserInputBuffer* %16, !dbg !807
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

declare %struct._xmlParserCtxt* @xmlCreateIOParserCtxt(%struct._xmlSAXHandler* noundef, i8* noundef, i32 (i8*, i8*, i32)* noundef, i32 (i8*)* noundef, i8* noundef, i32 noundef) #2

declare void @xmlFreeParserInputBuffer(%struct._xmlParserInputBuffer* noundef) #2

declare i32 @xmlDoRead(...) #2

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare void @xmlFreeParserCtxt(%struct._xmlParserCtxt* noundef) #2

declare %struct._xmlParserInputBuffer* @xmlAllocParserInputBuffer(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uripRead(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !808 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !809, metadata !DIExpression()), !dbg !810
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !811, metadata !DIExpression()), !dbg !812
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !813, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.declare(metadata i8** %8, metadata !815, metadata !DIExpression()), !dbg !816
  %9 = load i8*, i8** %5, align 8, !dbg !817
  store i8* %9, i8** %8, align 8, !dbg !816
  %10 = load i8*, i8** %5, align 8, !dbg !818
  %11 = icmp eq i8* %10, null, !dbg !820
  br i1 %11, label %18, label %12, !dbg !821

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8, !dbg !822
  %14 = icmp eq i8* %13, null, !dbg !823
  br i1 %14, label %18, label %15, !dbg !824

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4, !dbg !825
  %17 = icmp slt i32 %16, 0, !dbg !826
  br i1 %17, label %18, label %19, !dbg !827

18:                                               ; preds = %15, %12, %3
  store i32 -1, i32* %4, align 4, !dbg !828
  br label %36, !dbg !828

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4, !dbg !829
  %21 = load i32, i32* @urip_rlen, align 4, !dbg !831
  %22 = icmp sgt i32 %20, %21, !dbg !832
  br i1 %22, label %23, label %25, !dbg !833

23:                                               ; preds = %19
  %24 = load i32, i32* @urip_rlen, align 4, !dbg !834
  store i32 %24, i32* %7, align 4, !dbg !835
  br label %25, !dbg !836

25:                                               ; preds = %23, %19
  %26 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 18, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.uripRead, i64 0, i64 0)), !dbg !837
  %27 = load i8*, i8** %6, align 8, !dbg !838
  %28 = load i8*, i8** %8, align 8, !dbg !839
  %29 = load i32, i32* %7, align 4, !dbg !840
  %30 = sext i32 %29 to i64, !dbg !840
  %31 = call i8* @memcpy(i8* %27, i8* %28, i64 %30), !dbg !841
  %32 = load i32, i32* %7, align 4, !dbg !842
  %33 = load i32, i32* @urip_rlen, align 4, !dbg !843
  %34 = sub nsw i32 %33, %32, !dbg !843
  store i32 %34, i32* @urip_rlen, align 4, !dbg !843
  %35 = load i32, i32* %7, align 4, !dbg !844
  store i32 %35, i32* %4, align 4, !dbg !845
  br label %36, !dbg !845

36:                                               ; preds = %25, %18
  %37 = load i32, i32* %4, align 4, !dbg !846
  ret i32 %37, !dbg !846
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !847 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !855, metadata !DIExpression()), !dbg !856
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !857, metadata !DIExpression()), !dbg !858
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !859, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.declare(metadata i8** %7, metadata !861, metadata !DIExpression()), !dbg !862
  %9 = load i8*, i8** %4, align 8, !dbg !863
  store i8* %9, i8** %7, align 8, !dbg !862
  call void @llvm.dbg.declare(metadata i8** %8, metadata !864, metadata !DIExpression()), !dbg !865
  %10 = load i8*, i8** %5, align 8, !dbg !866
  store i8* %10, i8** %8, align 8, !dbg !865
  br label %11, !dbg !867

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !868
  %13 = add i64 %12, -1, !dbg !868
  store i64 %13, i64* %6, align 8, !dbg !868
  %14 = icmp ugt i64 %12, 0, !dbg !869
  br i1 %14, label %15, label %21, !dbg !867

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !870
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !870
  store i8* %17, i8** %8, align 8, !dbg !870
  %18 = load i8, i8* %16, align 1, !dbg !871
  %19 = load i8*, i8** %7, align 8, !dbg !872
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !872
  store i8* %20, i8** %7, align 8, !dbg !872
  store i8 %18, i8* %19, align 1, !dbg !873
  br label %11, !dbg !867, !llvm.loop !874

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !876
  ret i8* %22, !dbg !877
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2, !138}
!llvm.module.flags = !{!140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147, !147}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "urip_rlen", scope: !2, file: !3, line: 7, type: !72, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !127, globals: !137, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/099_runtest.c_3328_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "d7e6a81a0cc91cc99b01bd78f77c516b")
!4 = !{!5, !30, !42, !51, !57, !63, !70, !92, !100}
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
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !71, line: 112, baseType: !72, size: 32, elements: !73)
!71 = !DIFile(filename: "/usr/include/libxml2/libxml/parser.h", directory: "", checksumkind: CSK_MD5, checksum: "2c1184d6dda41f6d85836f47834fed62")
!72 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!73 = !{!74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91}
!74 = !DIEnumerator(name: "XML_PARSER_EOF", value: -1)
!75 = !DIEnumerator(name: "XML_PARSER_START", value: 0)
!76 = !DIEnumerator(name: "XML_PARSER_MISC", value: 1)
!77 = !DIEnumerator(name: "XML_PARSER_PI", value: 2)
!78 = !DIEnumerator(name: "XML_PARSER_DTD", value: 3)
!79 = !DIEnumerator(name: "XML_PARSER_PROLOG", value: 4)
!80 = !DIEnumerator(name: "XML_PARSER_COMMENT", value: 5)
!81 = !DIEnumerator(name: "XML_PARSER_START_TAG", value: 6)
!82 = !DIEnumerator(name: "XML_PARSER_CONTENT", value: 7)
!83 = !DIEnumerator(name: "XML_PARSER_CDATA_SECTION", value: 8)
!84 = !DIEnumerator(name: "XML_PARSER_END_TAG", value: 9)
!85 = !DIEnumerator(name: "XML_PARSER_ENTITY_DECL", value: 10)
!86 = !DIEnumerator(name: "XML_PARSER_ENTITY_VALUE", value: 11)
!87 = !DIEnumerator(name: "XML_PARSER_ATTRIBUTE_VALUE", value: 12)
!88 = !DIEnumerator(name: "XML_PARSER_SYSTEM_LITERAL", value: 13)
!89 = !DIEnumerator(name: "XML_PARSER_EPILOG", value: 14)
!90 = !DIEnumerator(name: "XML_PARSER_IGNORE", value: 15)
!91 = !DIEnumerator(name: "XML_PARSER_PUBLIC_LITERAL", value: 16)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !71, line: 163, baseType: !7, size: 32, elements: !93)
!93 = !{!94, !95, !96, !97, !98, !99}
!94 = !DIEnumerator(name: "XML_PARSE_UNKNOWN", value: 0)
!95 = !DIEnumerator(name: "XML_PARSE_DOM", value: 1)
!96 = !DIEnumerator(name: "XML_PARSE_SAX", value: 2)
!97 = !DIEnumerator(name: "XML_PARSE_PUSH_DOM", value: 3)
!98 = !DIEnumerator(name: "XML_PARSE_PUSH_SAX", value: 4)
!99 = !DIEnumerator(name: "XML_PARSE_READER", value: 5)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !101, line: 58, baseType: !72, size: 32, elements: !102)
!101 = !DIFile(filename: "/usr/include/libxml2/libxml/encoding.h", directory: "", checksumkind: CSK_MD5, checksum: "807b84fade38abad3ae0d9b6af714dbc")
!102 = !{!103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126}
!103 = !DIEnumerator(name: "XML_CHAR_ENCODING_ERROR", value: -1)
!104 = !DIEnumerator(name: "XML_CHAR_ENCODING_NONE", value: 0)
!105 = !DIEnumerator(name: "XML_CHAR_ENCODING_UTF8", value: 1)
!106 = !DIEnumerator(name: "XML_CHAR_ENCODING_UTF16LE", value: 2)
!107 = !DIEnumerator(name: "XML_CHAR_ENCODING_UTF16BE", value: 3)
!108 = !DIEnumerator(name: "XML_CHAR_ENCODING_UCS4LE", value: 4)
!109 = !DIEnumerator(name: "XML_CHAR_ENCODING_UCS4BE", value: 5)
!110 = !DIEnumerator(name: "XML_CHAR_ENCODING_EBCDIC", value: 6)
!111 = !DIEnumerator(name: "XML_CHAR_ENCODING_UCS4_2143", value: 7)
!112 = !DIEnumerator(name: "XML_CHAR_ENCODING_UCS4_3412", value: 8)
!113 = !DIEnumerator(name: "XML_CHAR_ENCODING_UCS2", value: 9)
!114 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_1", value: 10)
!115 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_2", value: 11)
!116 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_3", value: 12)
!117 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_4", value: 13)
!118 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_5", value: 14)
!119 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_6", value: 15)
!120 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_7", value: 16)
!121 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_8", value: 17)
!122 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_9", value: 18)
!123 = !DIEnumerator(name: "XML_CHAR_ENCODING_2022_JP", value: 19)
!124 = !DIEnumerator(name: "XML_CHAR_ENCODING_SHIFT_JIS", value: 20)
!125 = !DIEnumerator(name: "XML_CHAR_ENCODING_EUC_JP", value: 21)
!126 = !DIEnumerator(name: "XML_CHAR_ENCODING_ASCII", value: 22)
!127 = !{!128, !131, !132}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!130 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlInputCloseCallback", file: !133, line: 63, baseType: !134)
!133 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlIO.h", directory: "", checksumkind: CSK_MD5, checksum: "a868e7a396360b2f16d10eac4a34669c")
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!72, !131}
!137 = !{!0}
!138 = distinct !DICompileUnit(language: DW_LANG_C99, file: !139, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!139 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!140 = !{i32 7, !"Dwarf Version", i32 5}
!141 = !{i32 2, !"Debug Info Version", i32 3}
!142 = !{i32 1, !"wchar_size", i32 4}
!143 = !{i32 7, !"PIC Level", i32 2}
!144 = !{i32 7, !"PIE Level", i32 2}
!145 = !{i32 7, !"uwtable", i32 1}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = !{!"Ubuntu clang version 14.0.6"}
!148 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 34, type: !149, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!149 = !DISubroutineType(types: !150)
!150 = !{!72}
!151 = !{}
!152 = !DILocalVariable(name: "url_data", scope: !148, file: !3, line: 35, type: !128)
!153 = !DILocation(line: 35, column: 17, scope: !148)
!154 = !DILocalVariable(name: "url_len", scope: !148, file: !3, line: 36, type: !72)
!155 = !DILocation(line: 36, column: 9, scope: !148)
!156 = !DILocalVariable(name: "doc", scope: !148, file: !3, line: 37, type: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !6, line: 558, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !6, line: 557, baseType: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !6, line: 559, size: 1408, elements: !161)
!161 = !{!162, !163, !165, !167, !223, !224, !225, !226, !227, !228, !229, !230, !250, !251, !252, !253, !254, !255, !256, !257, !258, !262, !263, !264}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !160, file: !6, line: 560, baseType: !131, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !160, file: !6, line: 561, baseType: !164, size: 32, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !6, line: 183, baseType: !5)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !160, file: !6, line: 562, baseType: !166, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !160, file: !6, line: 563, baseType: !168, size: 64, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !6, line: 492, size: 960, elements: !170)
!170 = !{!171, !172, !173, !179, !180, !181, !182, !183, !184, !186, !199, !201, !218, !219, !220, !222}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !169, file: !6, line: 493, baseType: !131, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !169, file: !6, line: 494, baseType: !164, size: 32, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !169, file: !6, line: 495, baseType: !174, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !177, line: 28, baseType: !178)
!177 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!178 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !169, file: !6, line: 496, baseType: !168, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !169, file: !6, line: 497, baseType: !168, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !169, file: !6, line: 498, baseType: !168, size: 64, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !169, file: !6, line: 499, baseType: !168, size: 64, offset: 384)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !169, file: !6, line: 500, baseType: !168, size: 64, offset: 448)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !169, file: !6, line: 501, baseType: !185, size: 64, offset: 512)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !169, file: !6, line: 504, baseType: !187, size: 64, offset: 576)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !6, line: 386, baseType: !189)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !6, line: 388, size: 384, elements: !190)
!190 = !{!191, !193, !195, !196, !197, !198}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !189, file: !6, line: 389, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !189, file: !6, line: 390, baseType: !194, size: 32, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !6, line: 374, baseType: !164)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !189, file: !6, line: 391, baseType: !174, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !189, file: !6, line: 392, baseType: !174, size: 64, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !189, file: !6, line: 393, baseType: !131, size: 64, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !189, file: !6, line: 394, baseType: !185, size: 64, offset: 320)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !169, file: !6, line: 505, baseType: !200, size: 64, offset: 640)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !169, file: !6, line: 506, baseType: !202, size: 64, offset: 704)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !6, line: 433, size: 768, elements: !204)
!204 = !{!205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !217}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !203, file: !6, line: 434, baseType: !131, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !203, file: !6, line: 435, baseType: !164, size: 32, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !203, file: !6, line: 436, baseType: !174, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !203, file: !6, line: 437, baseType: !168, size: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !203, file: !6, line: 438, baseType: !168, size: 64, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !203, file: !6, line: 439, baseType: !168, size: 64, offset: 320)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !203, file: !6, line: 440, baseType: !202, size: 64, offset: 384)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !203, file: !6, line: 441, baseType: !202, size: 64, offset: 448)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !203, file: !6, line: 442, baseType: !185, size: 64, offset: 512)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !203, file: !6, line: 443, baseType: !187, size: 64, offset: 576)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !203, file: !6, line: 444, baseType: !216, size: 32, offset: 640)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !6, line: 217, baseType: !30)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !203, file: !6, line: 445, baseType: !131, size: 64, offset: 704)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !169, file: !6, line: 507, baseType: !187, size: 64, offset: 768)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !169, file: !6, line: 508, baseType: !131, size: 64, offset: 832)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !169, file: !6, line: 509, baseType: !221, size: 16, offset: 896)
!221 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !169, file: !6, line: 510, baseType: !221, size: 16, offset: 912)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !160, file: !6, line: 564, baseType: !168, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !160, file: !6, line: 565, baseType: !168, size: 64, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !160, file: !6, line: 566, baseType: !168, size: 64, offset: 384)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !160, file: !6, line: 567, baseType: !168, size: 64, offset: 448)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !160, file: !6, line: 568, baseType: !185, size: 64, offset: 512)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !160, file: !6, line: 571, baseType: !72, size: 32, offset: 576)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !160, file: !6, line: 572, baseType: !72, size: 32, offset: 608)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !160, file: !6, line: 578, baseType: !231, size: 64, offset: 640)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !6, line: 405, size: 1024, elements: !233)
!233 = !{!234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !232, file: !6, line: 406, baseType: !131, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !232, file: !6, line: 407, baseType: !164, size: 32, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !232, file: !6, line: 408, baseType: !174, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !232, file: !6, line: 409, baseType: !168, size: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !232, file: !6, line: 410, baseType: !168, size: 64, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !232, file: !6, line: 411, baseType: !185, size: 64, offset: 320)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !232, file: !6, line: 412, baseType: !168, size: 64, offset: 384)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !232, file: !6, line: 413, baseType: !168, size: 64, offset: 448)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !232, file: !6, line: 414, baseType: !185, size: 64, offset: 512)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !232, file: !6, line: 417, baseType: !131, size: 64, offset: 576)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !232, file: !6, line: 418, baseType: !131, size: 64, offset: 640)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !232, file: !6, line: 419, baseType: !131, size: 64, offset: 704)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !232, file: !6, line: 420, baseType: !131, size: 64, offset: 768)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !232, file: !6, line: 421, baseType: !174, size: 64, offset: 832)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !232, file: !6, line: 422, baseType: !174, size: 64, offset: 896)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !232, file: !6, line: 423, baseType: !131, size: 64, offset: 960)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !160, file: !6, line: 579, baseType: !231, size: 64, offset: 704)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !160, file: !6, line: 580, baseType: !192, size: 64, offset: 768)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !160, file: !6, line: 581, baseType: !174, size: 64, offset: 832)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !160, file: !6, line: 582, baseType: !174, size: 64, offset: 896)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !160, file: !6, line: 583, baseType: !131, size: 64, offset: 960)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !160, file: !6, line: 584, baseType: !131, size: 64, offset: 1024)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !160, file: !6, line: 585, baseType: !174, size: 64, offset: 1088)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !160, file: !6, line: 586, baseType: !72, size: 32, offset: 1152)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !160, file: !6, line: 588, baseType: !259, size: 64, offset: 1216)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !261, line: 24, flags: DIFlagFwdDecl)
!261 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!262 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !160, file: !6, line: 589, baseType: !131, size: 64, offset: 1280)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !160, file: !6, line: 590, baseType: !72, size: 32, offset: 1344)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !160, file: !6, line: 592, baseType: !72, size: 32, offset: 1376)
!265 = !DILocation(line: 37, column: 15, scope: !148)
!266 = !DILocation(line: 40, column: 24, scope: !148)
!267 = !DILocation(line: 40, column: 5, scope: !148)
!268 = !DILocation(line: 42, column: 17, scope: !148)
!269 = !DILocation(line: 42, column: 25, scope: !148)
!270 = !DILocation(line: 42, column: 30, scope: !148)
!271 = !DILocation(line: 42, column: 33, scope: !148)
!272 = !DILocation(line: 42, column: 41, scope: !148)
!273 = !DILocation(line: 0, scope: !148)
!274 = !DILocation(line: 42, column: 5, scope: !148)
!275 = !DILocation(line: 43, column: 37, scope: !148)
!276 = !DILocation(line: 43, column: 45, scope: !148)
!277 = !DILocation(line: 43, column: 30, scope: !148)
!278 = !DILocation(line: 43, column: 14, scope: !148)
!279 = !DILocation(line: 44, column: 32, scope: !148)
!280 = !DILocation(line: 44, column: 42, scope: !148)
!281 = !DILocation(line: 44, column: 50, scope: !148)
!282 = !DILocation(line: 44, column: 5, scope: !148)
!283 = !DILocation(line: 47, column: 17, scope: !148)
!284 = !DILocation(line: 47, column: 15, scope: !148)
!285 = !DILocalVariable(name: "buf", scope: !148, file: !3, line: 50, type: !286)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputBufferPtr", file: !6, line: 29, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputBuffer", file: !6, line: 28, baseType: !289)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInputBuffer", file: !133, line: 125, size: 512, elements: !290)
!290 = !{!291, !292, !297, !298, !345, !350, !351, !352, !353}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !289, file: !133, line: 126, baseType: !131, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "readcallback", scope: !289, file: !133, line: 127, baseType: !293, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlInputReadCallback", file: !133, line: 54, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!72, !131, !166, !72}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "closecallback", scope: !289, file: !133, line: 128, baseType: !132, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !289, file: !133, line: 130, baseType: !299, size: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandlerPtr", file: !101, line: 145, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandler", file: !101, line: 144, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlCharEncodingHandler", file: !101, line: 146, size: 448, elements: !303)
!303 = !{!304, !305, !314, !316, !319, !320, !344}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !302, file: !101, line: 147, baseType: !166, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !302, file: !101, line: 148, baseType: !306, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingInputFunc", file: !101, line: 101, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!72, !310, !311, !312, !311}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !302, file: !101, line: 149, baseType: !315, size: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingOutputFunc", file: !101, line: 123, baseType: !307)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_in", scope: !302, file: !101, line: 151, baseType: !317, size: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !318, line: 29, baseType: !131)
!318 = !DIFile(filename: "/usr/include/iconv.h", directory: "", checksumkind: CSK_MD5, checksum: "edfee9bcfa398c9184cc8f95deb97c16")
!319 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_out", scope: !302, file: !101, line: 152, baseType: !317, size: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_in", scope: !302, file: !101, line: 155, baseType: !321, size: 64, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "uconv_t", file: !101, line: 141, baseType: !323)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_uconv_t", file: !101, line: 134, size: 16640, elements: !324)
!324 = !{!325, !330, !331, !341, !343}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "uconv", scope: !323, file: !101, line: 135, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "UConverter", file: !328, line: 96, baseType: !329)
!328 = !DIFile(filename: "/usr/include/unicode/ucnv_err.h", directory: "", checksumkind: CSK_MD5, checksum: "a507bbb125e54d860485ec054a4a55ed")
!329 = !DICompositeType(tag: DW_TAG_structure_type, name: "UConverter", file: !328, line: 93, flags: DIFlagFwdDecl)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !323, file: !101, line: 136, baseType: !326, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_buf", scope: !323, file: !101, line: 137, baseType: !332, size: 16384, offset: 128)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 16384, elements: !339)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "UChar", file: !334, line: 388, baseType: !335)
!334 = !DIFile(filename: "/usr/include/unicode/umachine.h", directory: "", checksumkind: CSK_MD5, checksum: "2d902ff00eac765b305cb113b74d34df")
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !336, line: 25, baseType: !337)
!336 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !338, line: 40, baseType: !221)
!338 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!339 = !{!340}
!340 = !DISubrange(count: 1024)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_source", scope: !323, file: !101, line: 138, baseType: !342, size: 64, offset: 16512)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_target", scope: !323, file: !101, line: 139, baseType: !342, size: 64, offset: 16576)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_out", scope: !302, file: !101, line: 156, baseType: !321, size: 64, offset: 384)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !289, file: !133, line: 132, baseType: !346, size: 64, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufPtr", file: !6, line: 114, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !6, line: 105, baseType: !349)
!349 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !6, line: 105, flags: DIFlagFwdDecl)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !289, file: !133, line: 133, baseType: !346, size: 64, offset: 320)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "compressed", scope: !289, file: !133, line: 134, baseType: !72, size: 32, offset: 384)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !289, file: !133, line: 135, baseType: !72, size: 32, offset: 416)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "rawconsumed", scope: !289, file: !133, line: 136, baseType: !354, size: 64, offset: 448)
!354 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!355 = !DILocation(line: 50, column: 29, scope: !148)
!356 = !DILocation(line: 50, column: 62, scope: !148)
!357 = !DILocation(line: 50, column: 72, scope: !148)
!358 = !DILocation(line: 50, column: 35, scope: !148)
!359 = !DILocation(line: 51, column: 9, scope: !360)
!360 = distinct !DILexicalBlock(scope: !148, file: !3, line: 51, column: 9)
!361 = !DILocation(line: 51, column: 13, scope: !360)
!362 = !DILocation(line: 51, column: 9, scope: !148)
!363 = !DILocation(line: 52, column: 22, scope: !364)
!364 = distinct !DILexicalBlock(scope: !360, file: !3, line: 51, column: 22)
!365 = !DILocation(line: 52, column: 9, scope: !364)
!366 = !DILocation(line: 53, column: 9, scope: !364)
!367 = !DILocalVariable(name: "ctxt", scope: !148, file: !3, line: 57, type: !368)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxtPtr", file: !6, line: 39, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !6, line: 38, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !71, line: 186, size: 6016, elements: !372)
!372 = !{!373, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !605, !609, !610, !611, !613, !614, !632, !633, !634, !635, !636, !637, !638, !673, !675, !676, !677, !678, !679, !680, !681, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !725, !731, !732, !733, !734, !735, !736, !737, !738, !742, !743, !745, !746, !747, !748, !749, !750, !751, !752}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "sax", scope: !371, file: !71, line: 187, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXHandler", file: !71, line: 721, size: 2048, elements: !376)
!376 = !{!377, !382, !384, !386, !388, !417, !448, !453, !455, !468, !488, !493, !510, !515, !517, !523, !528, !530, !535, !537, !542, !544, !549, !551, !553, !555, !557, !559, !560, !561, !566, !568}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "internalSubset", scope: !375, file: !71, line: 722, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "internalSubsetSAXFunc", file: !71, line: 364, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !131, !174, !174, !174}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "isStandalone", scope: !375, file: !71, line: 723, baseType: !383, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "isStandaloneSAXFunc", file: !71, line: 642, baseType: !134)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "hasInternalSubset", scope: !375, file: !71, line: 724, baseType: !385, size: 64, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "hasInternalSubsetSAXFunc", file: !71, line: 651, baseType: !134)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "hasExternalSubset", scope: !375, file: !71, line: 725, baseType: !387, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "hasExternalSubsetSAXFunc", file: !71, line: 661, baseType: !134)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "resolveEntity", scope: !375, file: !71, line: 726, baseType: !389, size: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "resolveEntitySAXFunc", file: !71, line: 352, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{!393, !131, !174, !174}
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputPtr", file: !6, line: 36, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInput", file: !6, line: 35, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInput", file: !71, line: 54, size: 832, elements: !397)
!397 = !{!398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !413, !414, !415, !416}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !396, file: !71, line: 56, baseType: !286, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !396, file: !71, line: 58, baseType: !128, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !396, file: !71, line: 59, baseType: !128, size: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !396, file: !71, line: 60, baseType: !174, size: 64, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !396, file: !71, line: 61, baseType: !174, size: 64, offset: 256)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !396, file: !71, line: 62, baseType: !174, size: 64, offset: 320)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !396, file: !71, line: 63, baseType: !72, size: 32, offset: 384)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !396, file: !71, line: 64, baseType: !72, size: 32, offset: 416)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !396, file: !71, line: 65, baseType: !72, size: 32, offset: 448)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "consumed", scope: !396, file: !71, line: 71, baseType: !354, size: 64, offset: 512)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !396, file: !71, line: 72, baseType: !409, size: 64, offset: 576)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputDeallocate", file: !71, line: 52, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !200}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !396, file: !71, line: 73, baseType: !174, size: 64, offset: 640)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !396, file: !71, line: 74, baseType: !174, size: 64, offset: 704)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !396, file: !71, line: 75, baseType: !72, size: 32, offset: 768)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !396, file: !71, line: 76, baseType: !72, size: 32, offset: 800)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "getEntity", scope: !375, file: !71, line: 727, baseType: !418, size: 64, offset: 320)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "getEntitySAXFunc", file: !71, line: 390, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!422, !131, !174}
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntityPtr", file: !6, line: 49, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntity", file: !6, line: 48, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEntity", file: !43, line: 38, size: 1088, elements: !426)
!426 = !{!427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !441, !442, !443, !445, !446, !447}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !425, file: !43, line: 39, baseType: !131, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !425, file: !43, line: 40, baseType: !164, size: 32, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !425, file: !43, line: 41, baseType: !174, size: 64, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !425, file: !43, line: 42, baseType: !168, size: 64, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !425, file: !43, line: 43, baseType: !168, size: 64, offset: 256)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !425, file: !43, line: 44, baseType: !231, size: 64, offset: 320)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !425, file: !43, line: 45, baseType: !168, size: 64, offset: 384)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !425, file: !43, line: 46, baseType: !168, size: 64, offset: 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !425, file: !43, line: 47, baseType: !185, size: 64, offset: 512)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !425, file: !43, line: 49, baseType: !200, size: 64, offset: 576)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !425, file: !43, line: 50, baseType: !200, size: 64, offset: 640)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !425, file: !43, line: 51, baseType: !72, size: 32, offset: 704)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "etype", scope: !425, file: !43, line: 52, baseType: !440, size: 32, offset: 736)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntityType", file: !43, line: 31, baseType: !42)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !425, file: !43, line: 53, baseType: !174, size: 64, offset: 768)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !425, file: !43, line: 54, baseType: !174, size: 64, offset: 832)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "nexte", scope: !425, file: !43, line: 56, baseType: !444, size: 64, offset: 896)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "URI", scope: !425, file: !43, line: 57, baseType: !174, size: 64, offset: 960)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !425, file: !43, line: 58, baseType: !72, size: 32, offset: 1024)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "checked", scope: !425, file: !43, line: 59, baseType: !72, size: 32, offset: 1056)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "entityDecl", scope: !375, file: !71, line: 728, baseType: !449, size: 64, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "entityDeclSAXFunc", file: !71, line: 414, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !131, !174, !72, !174, !174, !200}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "notationDecl", scope: !375, file: !71, line: 729, baseType: !454, size: 64, offset: 448)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "notationDeclSAXFunc", file: !71, line: 429, baseType: !379)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "attributeDecl", scope: !375, file: !71, line: 730, baseType: !456, size: 64, offset: 512)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "attributeDeclSAXFunc", file: !71, line: 445, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !131, !174, !174, !72, !72, !174, !460}
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEnumerationPtr", file: !6, line: 239, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEnumeration", file: !6, line: 238, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEnumeration", file: !6, line: 240, size: 128, elements: !464)
!464 = !{!465, !467}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !463, file: !6, line: 241, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !463, file: !6, line: 242, baseType: !174, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "elementDecl", scope: !375, file: !71, line: 731, baseType: !469, size: 64, offset: 576)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "elementDeclSAXFunc", file: !71, line: 461, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !131, !174, !72, !473}
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentPtr", file: !6, line: 305, baseType: !474)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContent", file: !6, line: 304, baseType: !476)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlElementContent", file: !6, line: 306, size: 384, elements: !477)
!477 = !{!478, !480, !482, !483, !485, !486, !487}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !476, file: !6, line: 307, baseType: !479, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentType", file: !6, line: 283, baseType: !51)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "ocur", scope: !476, file: !6, line: 308, baseType: !481, size: 32, offset: 32)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentOccur", file: !6, line: 295, baseType: !57)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !476, file: !6, line: 309, baseType: !174, size: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !476, file: !6, line: 310, baseType: !484, size: 64, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !476, file: !6, line: 311, baseType: !484, size: 64, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !476, file: !6, line: 312, baseType: !484, size: 64, offset: 256)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !476, file: !6, line: 313, baseType: !174, size: 64, offset: 320)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "unparsedEntityDecl", scope: !375, file: !71, line: 732, baseType: !489, size: 64, offset: 640)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "unparsedEntityDeclSAXFunc", file: !71, line: 475, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !131, !174, !174, !174, !174}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "setDocumentLocator", scope: !375, file: !71, line: 733, baseType: !494, size: 64, offset: 704)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "setDocumentLocatorSAXFunc", file: !71, line: 488, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !131, !498}
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXLocatorPtr", file: !6, line: 42, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXLocator", file: !6, line: 41, baseType: !501)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXLocator", file: !71, line: 323, size: 256, elements: !502)
!502 = !{!503, !507, !508, !509}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "getPublicId", scope: !501, file: !71, line: 324, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!174, !131}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "getSystemId", scope: !501, file: !71, line: 325, baseType: !504, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "getLineNumber", scope: !501, file: !71, line: 326, baseType: !134, size: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "getColumnNumber", scope: !501, file: !71, line: 327, baseType: !134, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "startDocument", scope: !375, file: !71, line: 734, baseType: !511, size: 64, offset: 768)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "startDocumentSAXFunc", file: !71, line: 496, baseType: !512)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !131}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "endDocument", scope: !375, file: !71, line: 735, baseType: !516, size: 64, offset: 832)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "endDocumentSAXFunc", file: !71, line: 503, baseType: !512)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "startElement", scope: !375, file: !71, line: 736, baseType: !518, size: 64, offset: 896)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "startElementSAXFunc", file: !71, line: 512, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !131, !174, !522}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "endElement", scope: !375, file: !71, line: 737, baseType: !524, size: 64, offset: 960)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "endElementSAXFunc", file: !71, line: 522, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !131, !174}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !375, file: !71, line: 738, baseType: !529, size: 64, offset: 1024)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "referenceSAXFunc", file: !71, line: 545, baseType: !525)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "characters", scope: !375, file: !71, line: 739, baseType: !531, size: 64, offset: 1088)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "charactersSAXFunc", file: !71, line: 555, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{null, !131, !174, !72}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "ignorableWhitespace", scope: !375, file: !71, line: 740, baseType: !536, size: 64, offset: 1152)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "ignorableWhitespaceSAXFunc", file: !71, line: 567, baseType: !532)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "processingInstruction", scope: !375, file: !71, line: 741, baseType: !538, size: 64, offset: 1216)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "processingInstructionSAXFunc", file: !71, line: 578, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{null, !131, !174, !174}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !375, file: !71, line: 742, baseType: !543, size: 64, offset: 1280)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "commentSAXFunc", file: !71, line: 588, baseType: !525)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "warning", scope: !375, file: !71, line: 743, baseType: !545, size: 64, offset: 1344)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "warningSAXFunc", file: !71, line: 610, baseType: !546)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !131, !128, null}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !375, file: !71, line: 744, baseType: !550, size: 64, offset: 1408)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "errorSAXFunc", file: !71, line: 620, baseType: !546)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "fatalError", scope: !375, file: !71, line: 745, baseType: !552, size: 64, offset: 1472)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "fatalErrorSAXFunc", file: !71, line: 632, baseType: !546)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "getParameterEntity", scope: !375, file: !71, line: 746, baseType: !554, size: 64, offset: 1536)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "getParameterEntitySAXFunc", file: !71, line: 401, baseType: !419)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "cdataBlock", scope: !375, file: !71, line: 747, baseType: !556, size: 64, offset: 1600)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "cdataBlockSAXFunc", file: !71, line: 598, baseType: !532)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "externalSubset", scope: !375, file: !71, line: 748, baseType: !558, size: 64, offset: 1664)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "externalSubsetSAXFunc", file: !71, line: 377, baseType: !379)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !375, file: !71, line: 749, baseType: !7, size: 32, offset: 1728)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !375, file: !71, line: 751, baseType: !131, size: 64, offset: 1792)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "startElementNs", scope: !375, file: !71, line: 752, baseType: !562, size: 64, offset: 1856)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "startElementNsSAX2Func", file: !71, line: 694, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{null, !131, !174, !174, !174, !72, !522, !72, !72, !522}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "endElementNs", scope: !375, file: !71, line: 753, baseType: !567, size: 64, offset: 1920)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "endElementNsSAX2Func", file: !71, line: 715, baseType: !379)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "serror", scope: !375, file: !71, line: 754, baseType: !569, size: 64, offset: 1984)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStructuredErrorFunc", file: !64, line: 856, baseType: !570)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !131, !573}
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorPtr", file: !64, line: 77, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlError", file: !64, line: 76, baseType: !576)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlError", file: !64, line: 78, size: 704, elements: !577)
!577 = !{!578, !579, !580, !581, !583, !584, !585, !586, !587, !588, !589, !590, !591}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !576, file: !64, line: 79, baseType: !72, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !576, file: !64, line: 80, baseType: !72, size: 32, offset: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !576, file: !64, line: 81, baseType: !166, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !576, file: !64, line: 82, baseType: !582, size: 32, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorLevel", file: !64, line: 29, baseType: !63)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !576, file: !64, line: 83, baseType: !166, size: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !576, file: !64, line: 84, baseType: !72, size: 32, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "str1", scope: !576, file: !64, line: 85, baseType: !166, size: 64, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "str2", scope: !576, file: !64, line: 86, baseType: !166, size: 64, offset: 384)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "str3", scope: !576, file: !64, line: 87, baseType: !166, size: 64, offset: 448)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "int1", scope: !576, file: !64, line: 88, baseType: !72, size: 32, offset: 512)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "int2", scope: !576, file: !64, line: 89, baseType: !72, size: 32, offset: 544)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "ctxt", scope: !576, file: !64, line: 90, baseType: !131, size: 64, offset: 576)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !576, file: !64, line: 91, baseType: !131, size: 64, offset: 640)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !371, file: !71, line: 188, baseType: !131, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "myDoc", scope: !371, file: !71, line: 189, baseType: !157, size: 64, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "wellFormed", scope: !371, file: !71, line: 190, baseType: !72, size: 32, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "replaceEntities", scope: !371, file: !71, line: 191, baseType: !72, size: 32, offset: 224)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !371, file: !71, line: 192, baseType: !174, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !371, file: !71, line: 193, baseType: !174, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !371, file: !71, line: 194, baseType: !72, size: 32, offset: 384)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "html", scope: !371, file: !71, line: 195, baseType: !72, size: 32, offset: 416)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !371, file: !71, line: 201, baseType: !393, size: 64, offset: 448)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "inputNr", scope: !371, file: !71, line: 202, baseType: !72, size: 32, offset: 512)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "inputMax", scope: !371, file: !71, line: 203, baseType: !72, size: 32, offset: 544)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "inputTab", scope: !371, file: !71, line: 204, baseType: !604, size: 64, offset: 576)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !371, file: !71, line: 207, baseType: !606, size: 64, offset: 640)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !6, line: 491, baseType: !607)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !6, line: 490, baseType: !169)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !371, file: !71, line: 208, baseType: !72, size: 32, offset: 704)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !371, file: !71, line: 209, baseType: !72, size: 32, offset: 736)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !371, file: !71, line: 210, baseType: !612, size: 64, offset: 768)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "record_info", scope: !371, file: !71, line: 212, baseType: !72, size: 32, offset: 832)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "node_seq", scope: !371, file: !71, line: 213, baseType: !615, size: 192, offset: 896)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserNodeInfoSeq", file: !71, line: 98, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserNodeInfoSeq", file: !71, line: 100, size: 192, elements: !617)
!617 = !{!618, !619, !620}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !616, file: !71, line: 101, baseType: !354, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !616, file: !71, line: 102, baseType: !354, size: 64, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !616, file: !71, line: 103, baseType: !621, size: 64, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserNodeInfo", file: !71, line: 86, baseType: !623)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserNodeInfo", file: !71, line: 89, size: 320, elements: !624)
!624 = !{!625, !628, !629, !630, !631}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !623, file: !71, line: 90, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "begin_pos", scope: !623, file: !71, line: 92, baseType: !354, size: 64, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "begin_line", scope: !623, file: !71, line: 93, baseType: !354, size: 64, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "end_pos", scope: !623, file: !71, line: 94, baseType: !354, size: 64, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !623, file: !71, line: 95, baseType: !354, size: 64, offset: 256)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "errNo", scope: !371, file: !71, line: 215, baseType: !72, size: 32, offset: 1088)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "hasExternalSubset", scope: !371, file: !71, line: 217, baseType: !72, size: 32, offset: 1120)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "hasPErefs", scope: !371, file: !71, line: 218, baseType: !72, size: 32, offset: 1152)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "external", scope: !371, file: !71, line: 219, baseType: !72, size: 32, offset: 1184)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !371, file: !71, line: 221, baseType: !72, size: 32, offset: 1216)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !371, file: !71, line: 222, baseType: !72, size: 32, offset: 1248)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "vctxt", scope: !371, file: !71, line: 223, baseType: !639, size: 896, offset: 1280)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidCtxt", file: !640, line: 80, baseType: !641)
!640 = !DIFile(filename: "/usr/include/libxml2/libxml/valid.h", directory: "", checksumkind: CSK_MD5, checksum: "3c082c0a5b81e1bc9fd9a21b69014584")
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlValidCtxt", file: !640, line: 82, size: 896, elements: !642)
!642 = !{!643, !644, !646, !648, !649, !650, !651, !652, !653, !654, !655, !659, !660, !661, !662, !668}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !641, file: !640, line: 83, baseType: !131, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !641, file: !640, line: 84, baseType: !645, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidityErrorFunc", file: !640, line: 42, baseType: !546)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "warning", scope: !641, file: !640, line: 85, baseType: !647, size: 64, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidityWarningFunc", file: !640, line: 57, baseType: !546)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !641, file: !640, line: 88, baseType: !606, size: 64, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !641, file: !640, line: 89, baseType: !72, size: 32, offset: 256)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !641, file: !640, line: 90, baseType: !72, size: 32, offset: 288)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !641, file: !640, line: 91, baseType: !612, size: 64, offset: 320)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "finishDtd", scope: !641, file: !640, line: 93, baseType: !7, size: 32, offset: 384)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !641, file: !640, line: 94, baseType: !157, size: 64, offset: 448)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !641, file: !640, line: 95, baseType: !72, size: 32, offset: 512)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "vstate", scope: !641, file: !640, line: 98, baseType: !656, size: 64, offset: 576)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidState", file: !640, line: 28, baseType: !658)
!658 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlValidState", file: !640, line: 28, flags: DIFlagFwdDecl)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "vstateNr", scope: !641, file: !640, line: 99, baseType: !72, size: 32, offset: 640)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "vstateMax", scope: !641, file: !640, line: 100, baseType: !72, size: 32, offset: 672)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "vstateTab", scope: !641, file: !640, line: 101, baseType: !656, size: 64, offset: 704)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "am", scope: !641, file: !640, line: 104, baseType: !663, size: 64, offset: 768)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAutomataPtr", file: !664, line: 30, baseType: !665)
!664 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlautomata.h", directory: "", checksumkind: CSK_MD5, checksum: "3c3c0a7d353bacfbede7c2decf27e62a")
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAutomata", file: !664, line: 29, baseType: !667)
!667 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAutomata", file: !664, line: 29, flags: DIFlagFwdDecl)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !641, file: !640, line: 105, baseType: !669, size: 64, offset: 832)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAutomataStatePtr", file: !664, line: 38, baseType: !670)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAutomataState", file: !664, line: 37, baseType: !672)
!672 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAutomataState", file: !664, line: 37, flags: DIFlagFwdDecl)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !371, file: !71, line: 225, baseType: !674, size: 32, offset: 2176)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputState", file: !71, line: 131, baseType: !70)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !371, file: !71, line: 226, baseType: !72, size: 32, offset: 2208)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !371, file: !71, line: 228, baseType: !166, size: 64, offset: 2240)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !371, file: !71, line: 231, baseType: !174, size: 64, offset: 2304)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "nameNr", scope: !371, file: !71, line: 232, baseType: !72, size: 32, offset: 2368)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "nameMax", scope: !371, file: !71, line: 233, baseType: !72, size: 32, offset: 2400)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "nameTab", scope: !371, file: !71, line: 234, baseType: !522, size: 64, offset: 2432)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "nbChars", scope: !371, file: !71, line: 236, baseType: !682, size: 64, offset: 2496)
!682 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "checkIndex", scope: !371, file: !71, line: 237, baseType: !682, size: 64, offset: 2560)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "keepBlanks", scope: !371, file: !71, line: 238, baseType: !72, size: 32, offset: 2624)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "disableSAX", scope: !371, file: !71, line: 239, baseType: !72, size: 32, offset: 2656)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "inSubset", scope: !371, file: !71, line: 240, baseType: !72, size: 32, offset: 2688)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "intSubName", scope: !371, file: !71, line: 241, baseType: !174, size: 64, offset: 2752)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "extSubURI", scope: !371, file: !71, line: 242, baseType: !200, size: 64, offset: 2816)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "extSubSystem", scope: !371, file: !71, line: 243, baseType: !200, size: 64, offset: 2880)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !371, file: !71, line: 246, baseType: !311, size: 64, offset: 2944)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "spaceNr", scope: !371, file: !71, line: 247, baseType: !72, size: 32, offset: 3008)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "spaceMax", scope: !371, file: !71, line: 248, baseType: !72, size: 32, offset: 3040)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "spaceTab", scope: !371, file: !71, line: 249, baseType: !311, size: 64, offset: 3072)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !371, file: !71, line: 251, baseType: !72, size: 32, offset: 3136)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !371, file: !71, line: 252, baseType: !393, size: 64, offset: 3200)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !371, file: !71, line: 253, baseType: !72, size: 32, offset: 3264)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "nodelen", scope: !371, file: !71, line: 255, baseType: !72, size: 32, offset: 3296)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "nodemem", scope: !371, file: !71, line: 256, baseType: !72, size: 32, offset: 3328)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "pedantic", scope: !371, file: !71, line: 257, baseType: !72, size: 32, offset: 3360)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !371, file: !71, line: 258, baseType: !131, size: 64, offset: 3392)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "loadsubset", scope: !371, file: !71, line: 260, baseType: !72, size: 32, offset: 3456)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "linenumbers", scope: !371, file: !71, line: 261, baseType: !72, size: 32, offset: 3488)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "catalogs", scope: !371, file: !71, line: 262, baseType: !131, size: 64, offset: 3520)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "recovery", scope: !371, file: !71, line: 263, baseType: !72, size: 32, offset: 3584)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "progressive", scope: !371, file: !71, line: 264, baseType: !72, size: 32, offset: 3616)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !371, file: !71, line: 265, baseType: !707, size: 64, offset: 3648)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !261, line: 25, baseType: !708)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !261, line: 24, baseType: !260)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "atts", scope: !371, file: !71, line: 266, baseType: !522, size: 64, offset: 3712)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "maxatts", scope: !371, file: !71, line: 267, baseType: !72, size: 32, offset: 3776)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "docdict", scope: !371, file: !71, line: 268, baseType: !72, size: 32, offset: 3808)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "str_xml", scope: !371, file: !71, line: 273, baseType: !174, size: 64, offset: 3840)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "str_xmlns", scope: !371, file: !71, line: 274, baseType: !174, size: 64, offset: 3904)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "str_xml_ns", scope: !371, file: !71, line: 275, baseType: !174, size: 64, offset: 3968)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "sax2", scope: !371, file: !71, line: 280, baseType: !72, size: 32, offset: 4032)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "nsNr", scope: !371, file: !71, line: 281, baseType: !72, size: 32, offset: 4064)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "nsMax", scope: !371, file: !71, line: 282, baseType: !72, size: 32, offset: 4096)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "nsTab", scope: !371, file: !71, line: 283, baseType: !522, size: 64, offset: 4160)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "attallocs", scope: !371, file: !71, line: 284, baseType: !311, size: 64, offset: 4224)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "pushTab", scope: !371, file: !71, line: 285, baseType: !722, size: 64, offset: 4288)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStartTag", file: !71, line: 172, baseType: !724)
!724 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlStartTag", file: !71, line: 172, flags: DIFlagFwdDecl)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "attsDefault", scope: !371, file: !71, line: 286, baseType: !726, size: 64, offset: 4352)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !727, line: 22, baseType: !728)
!727 = !DIFile(filename: "/usr/include/libxml2/libxml/hash.h", directory: "", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !727, line: 21, baseType: !730)
!730 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !727, line: 21, flags: DIFlagFwdDecl)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "attsSpecial", scope: !371, file: !71, line: 287, baseType: !726, size: 64, offset: 4416)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "nsWellFormed", scope: !371, file: !71, line: 288, baseType: !72, size: 32, offset: 4480)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !371, file: !71, line: 289, baseType: !72, size: 32, offset: 4512)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "dictNames", scope: !371, file: !71, line: 294, baseType: !72, size: 32, offset: 4544)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "freeElemsNr", scope: !371, file: !71, line: 295, baseType: !72, size: 32, offset: 4576)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "freeElems", scope: !371, file: !71, line: 296, baseType: !606, size: 64, offset: 4608)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "freeAttrsNr", scope: !371, file: !71, line: 297, baseType: !72, size: 32, offset: 4672)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "freeAttrs", scope: !371, file: !71, line: 298, baseType: !739, size: 64, offset: 4736)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttrPtr", file: !6, line: 432, baseType: !740)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttr", file: !6, line: 431, baseType: !203)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "lastError", scope: !371, file: !71, line: 303, baseType: !575, size: 704, offset: 4800)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "parseMode", scope: !371, file: !71, line: 304, baseType: !744, size: 32, offset: 5504)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserMode", file: !71, line: 170, baseType: !92)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "nbentities", scope: !371, file: !71, line: 305, baseType: !354, size: 64, offset: 5568)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "sizeentities", scope: !371, file: !71, line: 306, baseType: !354, size: 64, offset: 5632)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfo", scope: !371, file: !71, line: 309, baseType: !621, size: 64, offset: 5696)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfoNr", scope: !371, file: !71, line: 310, baseType: !72, size: 32, offset: 5760)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfoMax", scope: !371, file: !71, line: 311, baseType: !72, size: 32, offset: 5792)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfoTab", scope: !371, file: !71, line: 312, baseType: !621, size: 64, offset: 5824)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "input_id", scope: !371, file: !71, line: 314, baseType: !72, size: 32, offset: 5888)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "sizeentcopy", scope: !371, file: !71, line: 315, baseType: !354, size: 64, offset: 5952)
!753 = !DILocation(line: 57, column: 22, scope: !148)
!754 = !DILocation(line: 58, column: 51, scope: !148)
!755 = !DILocation(line: 58, column: 56, scope: !148)
!756 = !DILocation(line: 60, column: 59, scope: !148)
!757 = !DILocation(line: 57, column: 29, scope: !148)
!758 = !DILocation(line: 62, column: 9, scope: !759)
!759 = distinct !DILexicalBlock(scope: !148, file: !3, line: 62, column: 9)
!760 = !DILocation(line: 62, column: 14, scope: !759)
!761 = !DILocation(line: 62, column: 9, scope: !148)
!762 = !DILocation(line: 63, column: 34, scope: !763)
!763 = distinct !DILexicalBlock(scope: !759, file: !3, line: 62, column: 23)
!764 = !DILocation(line: 63, column: 9, scope: !763)
!765 = !DILocation(line: 64, column: 22, scope: !763)
!766 = !DILocation(line: 64, column: 9, scope: !763)
!767 = !DILocation(line: 65, column: 9, scope: !763)
!768 = !DILocation(line: 69, column: 21, scope: !148)
!769 = !DILocation(line: 69, column: 11, scope: !148)
!770 = !DILocation(line: 69, column: 9, scope: !148)
!771 = !DILocation(line: 72, column: 9, scope: !772)
!772 = distinct !DILexicalBlock(scope: !148, file: !3, line: 72, column: 9)
!773 = !DILocation(line: 72, column: 9, scope: !148)
!774 = !DILocation(line: 72, column: 25, scope: !772)
!775 = !DILocation(line: 72, column: 14, scope: !772)
!776 = !DILocation(line: 73, column: 23, scope: !148)
!777 = !DILocation(line: 73, column: 5, scope: !148)
!778 = !DILocation(line: 74, column: 30, scope: !148)
!779 = !DILocation(line: 74, column: 5, scope: !148)
!780 = !DILocation(line: 75, column: 18, scope: !148)
!781 = !DILocation(line: 75, column: 5, scope: !148)
!782 = !DILocation(line: 77, column: 5, scope: !148)
!783 = !DILocation(line: 78, column: 1, scope: !148)
!784 = distinct !DISubprogram(name: "create_custom_input_buffer", scope: !3, file: !3, line: 25, type: !785, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!785 = !DISubroutineType(types: !786)
!786 = !{!286, !128, !72}
!787 = !DILocalVariable(name: "data", arg: 1, scope: !784, file: !3, line: 25, type: !128)
!788 = !DILocation(line: 25, column: 71, scope: !784)
!789 = !DILocalVariable(name: "size", arg: 2, scope: !784, file: !3, line: 25, type: !72)
!790 = !DILocation(line: 25, column: 81, scope: !784)
!791 = !DILocalVariable(name: "buf", scope: !784, file: !3, line: 26, type: !286)
!792 = !DILocation(line: 26, column: 29, scope: !784)
!793 = !DILocation(line: 26, column: 35, scope: !784)
!794 = !DILocation(line: 27, column: 9, scope: !795)
!795 = distinct !DILexicalBlock(scope: !784, file: !3, line: 27, column: 9)
!796 = !DILocation(line: 27, column: 9, scope: !784)
!797 = !DILocation(line: 28, column: 32, scope: !798)
!798 = distinct !DILexicalBlock(scope: !795, file: !3, line: 27, column: 14)
!799 = !DILocation(line: 28, column: 9, scope: !798)
!800 = !DILocation(line: 28, column: 14, scope: !798)
!801 = !DILocation(line: 28, column: 22, scope: !798)
!802 = !DILocation(line: 29, column: 9, scope: !798)
!803 = !DILocation(line: 29, column: 14, scope: !798)
!804 = !DILocation(line: 29, column: 27, scope: !798)
!805 = !DILocation(line: 30, column: 5, scope: !798)
!806 = !DILocation(line: 31, column: 12, scope: !784)
!807 = !DILocation(line: 31, column: 5, scope: !784)
!808 = distinct !DISubprogram(name: "uripRead", scope: !3, file: !3, line: 10, type: !295, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!809 = !DILocalVariable(name: "context", arg: 1, scope: !808, file: !3, line: 10, type: !131)
!810 = !DILocation(line: 10, column: 27, scope: !808)
!811 = !DILocalVariable(name: "buffer", arg: 2, scope: !808, file: !3, line: 10, type: !166)
!812 = !DILocation(line: 10, column: 42, scope: !808)
!813 = !DILocalVariable(name: "len", arg: 3, scope: !808, file: !3, line: 10, type: !72)
!814 = !DILocation(line: 10, column: 54, scope: !808)
!815 = !DILocalVariable(name: "ptr", scope: !808, file: !3, line: 11, type: !128)
!816 = !DILocation(line: 11, column: 17, scope: !808)
!817 = !DILocation(line: 11, column: 38, scope: !808)
!818 = !DILocation(line: 13, column: 10, scope: !819)
!819 = distinct !DILexicalBlock(scope: !808, file: !3, line: 13, column: 9)
!820 = !DILocation(line: 13, column: 18, scope: !819)
!821 = !DILocation(line: 13, column: 27, scope: !819)
!822 = !DILocation(line: 13, column: 31, scope: !819)
!823 = !DILocation(line: 13, column: 38, scope: !819)
!824 = !DILocation(line: 13, column: 47, scope: !819)
!825 = !DILocation(line: 13, column: 51, scope: !819)
!826 = !DILocation(line: 13, column: 55, scope: !819)
!827 = !DILocation(line: 13, column: 9, scope: !808)
!828 = !DILocation(line: 14, column: 9, scope: !819)
!829 = !DILocation(line: 16, column: 9, scope: !830)
!830 = distinct !DILexicalBlock(scope: !808, file: !3, line: 16, column: 9)
!831 = !DILocation(line: 16, column: 15, scope: !830)
!832 = !DILocation(line: 16, column: 13, scope: !830)
!833 = !DILocation(line: 16, column: 9, scope: !808)
!834 = !DILocation(line: 16, column: 32, scope: !830)
!835 = !DILocation(line: 16, column: 30, scope: !830)
!836 = !DILocation(line: 16, column: 26, scope: !830)
!837 = !DILocation(line: 18, column: 5, scope: !808)
!838 = !DILocation(line: 19, column: 12, scope: !808)
!839 = !DILocation(line: 19, column: 20, scope: !808)
!840 = !DILocation(line: 19, column: 25, scope: !808)
!841 = !DILocation(line: 19, column: 5, scope: !808)
!842 = !DILocation(line: 20, column: 18, scope: !808)
!843 = !DILocation(line: 20, column: 15, scope: !808)
!844 = !DILocation(line: 21, column: 12, scope: !808)
!845 = !DILocation(line: 21, column: 5, scope: !808)
!846 = !DILocation(line: 22, column: 1, scope: !808)
!847 = distinct !DISubprogram(name: "memcpy", scope: !848, file: !848, line: 12, type: !849, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !138, retainedNodes: !151)
!848 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!849 = !DISubroutineType(types: !850)
!850 = !{!131, !131, !851, !853}
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !854, line: 46, baseType: !354)
!854 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!855 = !DILocalVariable(name: "destaddr", arg: 1, scope: !847, file: !848, line: 12, type: !131)
!856 = !DILocation(line: 12, column: 20, scope: !847)
!857 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !847, file: !848, line: 12, type: !851)
!858 = !DILocation(line: 12, column: 42, scope: !847)
!859 = !DILocalVariable(name: "len", arg: 3, scope: !847, file: !848, line: 12, type: !853)
!860 = !DILocation(line: 12, column: 58, scope: !847)
!861 = !DILocalVariable(name: "dest", scope: !847, file: !848, line: 13, type: !166)
!862 = !DILocation(line: 13, column: 9, scope: !847)
!863 = !DILocation(line: 13, column: 16, scope: !847)
!864 = !DILocalVariable(name: "src", scope: !847, file: !848, line: 14, type: !128)
!865 = !DILocation(line: 14, column: 15, scope: !847)
!866 = !DILocation(line: 14, column: 21, scope: !847)
!867 = !DILocation(line: 16, column: 3, scope: !847)
!868 = !DILocation(line: 16, column: 13, scope: !847)
!869 = !DILocation(line: 16, column: 16, scope: !847)
!870 = !DILocation(line: 17, column: 19, scope: !847)
!871 = !DILocation(line: 17, column: 15, scope: !847)
!872 = !DILocation(line: 17, column: 10, scope: !847)
!873 = !DILocation(line: 17, column: 13, scope: !847)
!874 = distinct !{!874, !867, !870, !875}
!875 = !{!"llvm.loop.mustprogress"}
!876 = !DILocation(line: 18, column: 10, scope: !847)
!877 = !DILocation(line: 18, column: 3, scope: !847)

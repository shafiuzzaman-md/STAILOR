; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/345_xpath.c_4967_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/345_xpath.c_4967_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
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

@.str = private unnamed_addr constant [8 x i8] c"<root/>\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"noname.xml\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"http://example.com\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"pref\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"symbolic_int\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/345_xpath.c_4967_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !183 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca %struct._xmlXPathContext*, align 8
  %4 = alloca %struct._xmlXPathObject*, align 8
  %5 = alloca %struct._xmlNode*, align 8
  %6 = alloca %struct._xmlNs*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !187, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata %struct._xmlXPathContext** %3, metadata !192, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %4, metadata !355, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !357, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %6, metadata !359, metadata !DIExpression()), !dbg !360
  %8 = call %struct._xmlDoc* @xmlReadMemory(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef 7, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* noundef null, i32 noundef 0), !dbg !361
  store %struct._xmlDoc* %8, %struct._xmlDoc** %2, align 8, !dbg !362
  %9 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !363
  %10 = icmp eq %struct._xmlDoc* %9, null, !dbg !365
  br i1 %10, label %11, label %12, !dbg !366

11:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !367
  br label %111, !dbg !367

12:                                               ; preds = %0
  %13 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !368
  %14 = call %struct._xmlXPathContext* @xmlXPathNewContext(%struct._xmlDoc* noundef %13), !dbg !369
  store %struct._xmlXPathContext* %14, %struct._xmlXPathContext** %3, align 8, !dbg !370
  %15 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %3, align 8, !dbg !371
  %16 = icmp eq %struct._xmlXPathContext* %15, null, !dbg !373
  br i1 %16, label %17, label %19, !dbg !374

17:                                               ; preds = %12
  %18 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !375
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %18), !dbg !377
  store i32 1, i32* %1, align 4, !dbg !378
  br label %111, !dbg !378

19:                                               ; preds = %12
  %20 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !379
  %21 = call %struct._xmlNode* @xmlDocGetRootElement(%struct._xmlDoc* noundef %20), !dbg !380
  store %struct._xmlNode* %21, %struct._xmlNode** %5, align 8, !dbg !381
  %22 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !382
  %23 = icmp eq %struct._xmlNode* %22, null, !dbg !384
  br i1 %23, label %24, label %27, !dbg !385

24:                                               ; preds = %19
  %25 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %3, align 8, !dbg !386
  call void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef %25), !dbg !388
  %26 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !389
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %26), !dbg !390
  store i32 1, i32* %1, align 4, !dbg !391
  br label %111, !dbg !391

27:                                               ; preds = %19
  %28 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !392
  %29 = call %struct._xmlNs* @xmlNewNs(%struct._xmlNode* noundef %28, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !393
  store %struct._xmlNs* %29, %struct._xmlNs** %6, align 8, !dbg !394
  %30 = load %struct._xmlNs*, %struct._xmlNs** %6, align 8, !dbg !395
  %31 = icmp eq %struct._xmlNs* %30, null, !dbg !397
  br i1 %31, label %32, label %35, !dbg !398

32:                                               ; preds = %27
  %33 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %3, align 8, !dbg !399
  call void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef %33), !dbg !401
  %34 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !402
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %34), !dbg !403
  store i32 1, i32* %1, align 4, !dbg !404
  br label %111, !dbg !404

35:                                               ; preds = %27
  %36 = call %struct._xmlXPathObject* @xmlXPathNewNodeSet(%struct._xmlNode* noundef null), !dbg !405
  store %struct._xmlXPathObject* %36, %struct._xmlXPathObject** %4, align 8, !dbg !406
  %37 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !407
  %38 = icmp eq %struct._xmlXPathObject* %37, null, !dbg !409
  br i1 %38, label %39, label %42, !dbg !410

39:                                               ; preds = %35
  %40 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %3, align 8, !dbg !411
  call void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef %40), !dbg !413
  %41 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !414
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %41), !dbg !415
  store i32 1, i32* %1, align 4, !dbg !416
  br label %111, !dbg !416

42:                                               ; preds = %35
  call void @llvm.dbg.declare(metadata i32* %7, metadata !417, metadata !DIExpression()), !dbg !418
  %43 = bitcast i32* %7 to i8*, !dbg !419
  call void @klee_make_symbolic(i8* noundef %43, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)), !dbg !420
  %44 = load i32, i32* %7, align 4, !dbg !421
  %45 = icmp sgt i32 %44, 0, !dbg !423
  br i1 %45, label %46, label %103, !dbg !424

46:                                               ; preds = %42
  %47 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !425
  %48 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %47, i32 0, i32 1, !dbg !427
  %49 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %48, align 8, !dbg !427
  %50 = load %struct._xmlNs*, %struct._xmlNs** %6, align 8, !dbg !428
  %51 = bitcast %struct._xmlNs* %50 to %struct._xmlNode*, !dbg !429
  %52 = call i32 @xmlXPathNodeSetAddUnique(%struct._xmlNodeSet* noundef %49, %struct._xmlNode* noundef %51), !dbg !430
  %53 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !431
  %54 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %53, i32 0, i32 1, !dbg !433
  %55 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %54, align 8, !dbg !433
  %56 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %55, i32 0, i32 0, !dbg !434
  %57 = load i32, i32* %56, align 8, !dbg !434
  %58 = icmp eq i32 %57, 1, !dbg !435
  br i1 %58, label %59, label %90, !dbg !436

59:                                               ; preds = %46
  %60 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.6, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !437
  %61 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !439
  %62 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %61, i32 0, i32 1, !dbg !441
  %63 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %62, align 8, !dbg !441
  %64 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %63, i32 0, i32 2, !dbg !442
  %65 = load %struct._xmlNode**, %struct._xmlNode*** %64, align 8, !dbg !442
  %66 = getelementptr inbounds %struct._xmlNode*, %struct._xmlNode** %65, i64 0, !dbg !439
  %67 = load %struct._xmlNode*, %struct._xmlNode** %66, align 8, !dbg !439
  %68 = icmp ne %struct._xmlNode* %67, null, !dbg !443
  br i1 %68, label %69, label %89, !dbg !444

69:                                               ; preds = %59
  %70 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !445
  %71 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %70, i32 0, i32 1, !dbg !446
  %72 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %71, align 8, !dbg !446
  %73 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %72, i32 0, i32 2, !dbg !447
  %74 = load %struct._xmlNode**, %struct._xmlNode*** %73, align 8, !dbg !447
  %75 = getelementptr inbounds %struct._xmlNode*, %struct._xmlNode** %74, i64 0, !dbg !445
  %76 = load %struct._xmlNode*, %struct._xmlNode** %75, align 8, !dbg !445
  %77 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %76, i32 0, i32 1, !dbg !448
  %78 = load i32, i32* %77, align 8, !dbg !448
  %79 = icmp eq i32 %78, 18, !dbg !449
  br i1 %79, label %80, label %89, !dbg !450

80:                                               ; preds = %69
  %81 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !451
  %82 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %81, i32 0, i32 1, !dbg !453
  %83 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %82, align 8, !dbg !453
  %84 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %83, i32 0, i32 2, !dbg !454
  %85 = load %struct._xmlNode**, %struct._xmlNode*** %84, align 8, !dbg !454
  %86 = getelementptr inbounds %struct._xmlNode*, %struct._xmlNode** %85, i64 0, !dbg !451
  %87 = load %struct._xmlNode*, %struct._xmlNode** %86, align 8, !dbg !451
  %88 = bitcast %struct._xmlNode* %87 to %struct._xmlNs*, !dbg !455
  call void @xmlXPathNodeSetFreeNs(%struct._xmlNs* noundef %88), !dbg !456
  br label %89, !dbg !457

89:                                               ; preds = %80, %69, %59
  br label %90, !dbg !458

90:                                               ; preds = %89, %46
  %91 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !459
  %92 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %91, i32 0, i32 1, !dbg !460
  %93 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %92, align 8, !dbg !460
  %94 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %93, i32 0, i32 0, !dbg !461
  store i32 0, i32* %94, align 8, !dbg !462
  %95 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !463
  %96 = bitcast %struct._xmlXPathObject* %95 to i8*, !dbg !464
  %97 = call i8* @memset(i8* %96, i32 0, i64 72), !dbg !464
  %98 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !465
  %99 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %98, i32 0, i32 1, !dbg !466
  %100 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %99, align 8, !dbg !466
  %101 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !467
  %102 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %101, i32 0, i32 1, !dbg !468
  store %struct._xmlNodeSet* %100, %struct._xmlNodeSet** %102, align 8, !dbg !469
  br label %107, !dbg !470

103:                                              ; preds = %42
  %104 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !471
  %105 = bitcast %struct._xmlXPathObject* %104 to i8*, !dbg !473
  %106 = call i8* @memset(i8* %105, i32 0, i64 72), !dbg !473
  br label %107

107:                                              ; preds = %103, %90
  %108 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !474
  call void @xmlXPathFreeObject(%struct._xmlXPathObject* noundef %108), !dbg !475
  %109 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %3, align 8, !dbg !476
  call void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef %109), !dbg !477
  %110 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !478
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %110), !dbg !479
  store i32 0, i32* %1, align 4, !dbg !480
  br label %111, !dbg !480

111:                                              ; preds = %107, %39, %32, %24, %17, %11
  %112 = load i32, i32* %1, align 4, !dbg !481
  ret i32 %112, !dbg !481
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._xmlDoc* @xmlReadMemory(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) #2

declare %struct._xmlXPathContext* @xmlXPathNewContext(%struct._xmlDoc* noundef) #2

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare %struct._xmlNode* @xmlDocGetRootElement(%struct._xmlDoc* noundef) #2

declare void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef) #2

declare %struct._xmlNs* @xmlNewNs(%struct._xmlNode* noundef, i8* noundef, i8* noundef) #2

declare %struct._xmlXPathObject* @xmlXPathNewNodeSet(%struct._xmlNode* noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare i32 @xmlXPathNodeSetAddUnique(%struct._xmlNodeSet* noundef, %struct._xmlNode* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlXPathNodeSetFreeNs(%struct._xmlNs* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare void @xmlXPathFreeObject(%struct._xmlXPathObject* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !482 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !488, metadata !DIExpression()), !dbg !489
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !490, metadata !DIExpression()), !dbg !491
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !492, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.declare(metadata i8** %7, metadata !494, metadata !DIExpression()), !dbg !495
  %8 = load i8*, i8** %4, align 8, !dbg !496
  store i8* %8, i8** %7, align 8, !dbg !495
  br label %9, !dbg !497

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !498
  %11 = add i64 %10, -1, !dbg !498
  store i64 %11, i64* %6, align 8, !dbg !498
  %12 = icmp ugt i64 %10, 0, !dbg !499
  br i1 %12, label %13, label %18, !dbg !497

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !500
  %15 = trunc i32 %14 to i8, !dbg !500
  %16 = load i8*, i8** %7, align 8, !dbg !501
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !501
  store i8* %17, i8** %7, align 8, !dbg !501
  store i8 %15, i8* %16, align 1, !dbg !502
  br label %9, !dbg !497, !llvm.loop !503

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !505
  ret i8* %19, !dbg !506
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !173}
!llvm.module.flags = !{!175, !176, !177, !178, !179, !180, !181}
!llvm.ident = !{!182, !182}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !60, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/345_xpath.c_4967_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "2bac54b463733ff62a74c348c98ae67d")
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
!60 = !{!61, !62, !67, !172}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !65, line: 28, baseType: !66)
!65 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!66 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !71)
!71 = !{!72, !73, !75, !76, !78, !79, !80, !81, !82, !145, !148, !150, !167, !168, !169, !171}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !70, file: !4, line: 493, baseType: !61, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !70, file: !4, line: 494, baseType: !74, size: 32, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !70, file: !4, line: 495, baseType: !62, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !70, file: !4, line: 496, baseType: !77, size: 64, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !70, file: !4, line: 497, baseType: !77, size: 64, offset: 256)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !70, file: !4, line: 498, baseType: !77, size: 64, offset: 320)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !70, file: !4, line: 499, baseType: !77, size: 64, offset: 384)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !70, file: !4, line: 500, baseType: !77, size: 64, offset: 448)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !70, file: !4, line: 501, baseType: !83, size: 64, offset: 512)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !85)
!85 = !{!86, !87, !88, !91, !92, !93, !94, !95, !96, !97, !99, !100, !120, !121, !132, !133, !134, !135, !136, !137, !138, !142, !143, !144}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !84, file: !4, line: 560, baseType: !61, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !84, file: !4, line: 561, baseType: !74, size: 32, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !84, file: !4, line: 562, baseType: !89, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !84, file: !4, line: 563, baseType: !77, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !84, file: !4, line: 564, baseType: !77, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !84, file: !4, line: 565, baseType: !77, size: 64, offset: 320)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !84, file: !4, line: 566, baseType: !77, size: 64, offset: 384)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !84, file: !4, line: 567, baseType: !77, size: 64, offset: 448)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !84, file: !4, line: 568, baseType: !83, size: 64, offset: 512)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !84, file: !4, line: 571, baseType: !98, size: 32, offset: 576)
!98 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !84, file: !4, line: 572, baseType: !98, size: 32, offset: 608)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !84, file: !4, line: 578, baseType: !101, size: 64, offset: 640)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !103)
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !102, file: !4, line: 406, baseType: !61, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !102, file: !4, line: 407, baseType: !74, size: 32, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !102, file: !4, line: 408, baseType: !62, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !102, file: !4, line: 409, baseType: !77, size: 64, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !102, file: !4, line: 410, baseType: !77, size: 64, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !102, file: !4, line: 411, baseType: !83, size: 64, offset: 320)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !102, file: !4, line: 412, baseType: !77, size: 64, offset: 384)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !102, file: !4, line: 413, baseType: !77, size: 64, offset: 448)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !102, file: !4, line: 414, baseType: !83, size: 64, offset: 512)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !102, file: !4, line: 417, baseType: !61, size: 64, offset: 576)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !102, file: !4, line: 418, baseType: !61, size: 64, offset: 640)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !102, file: !4, line: 419, baseType: !61, size: 64, offset: 704)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !102, file: !4, line: 420, baseType: !61, size: 64, offset: 768)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !102, file: !4, line: 421, baseType: !62, size: 64, offset: 832)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !102, file: !4, line: 422, baseType: !62, size: 64, offset: 896)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !102, file: !4, line: 423, baseType: !61, size: 64, offset: 960)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !84, file: !4, line: 579, baseType: !101, size: 64, offset: 704)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !84, file: !4, line: 580, baseType: !122, size: 64, offset: 768)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !124)
!124 = !{!125, !126, !128, !129, !130, !131}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !123, file: !4, line: 389, baseType: !122, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !123, file: !4, line: 390, baseType: !127, size: 32, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !74)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !123, file: !4, line: 391, baseType: !62, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !123, file: !4, line: 392, baseType: !62, size: 64, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !123, file: !4, line: 393, baseType: !61, size: 64, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !123, file: !4, line: 394, baseType: !83, size: 64, offset: 320)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !84, file: !4, line: 581, baseType: !62, size: 64, offset: 832)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !84, file: !4, line: 582, baseType: !62, size: 64, offset: 896)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !84, file: !4, line: 583, baseType: !61, size: 64, offset: 960)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !84, file: !4, line: 584, baseType: !61, size: 64, offset: 1024)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !84, file: !4, line: 585, baseType: !62, size: 64, offset: 1088)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !84, file: !4, line: 586, baseType: !98, size: 32, offset: 1152)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !84, file: !4, line: 588, baseType: !139, size: 64, offset: 1216)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !141, line: 24, flags: DIFlagFwdDecl)
!141 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!142 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !84, file: !4, line: 589, baseType: !61, size: 64, offset: 1280)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !84, file: !4, line: 590, baseType: !98, size: 32, offset: 1344)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !84, file: !4, line: 592, baseType: !98, size: 32, offset: 1376)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !70, file: !4, line: 504, baseType: !146, size: 64, offset: 576)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !123)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !70, file: !4, line: 505, baseType: !149, size: 64, offset: 640)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !70, file: !4, line: 506, baseType: !151, size: 64, offset: 704)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !153)
!153 = !{!154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !166}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !152, file: !4, line: 434, baseType: !61, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !152, file: !4, line: 435, baseType: !74, size: 32, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !152, file: !4, line: 436, baseType: !62, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !152, file: !4, line: 437, baseType: !77, size: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !152, file: !4, line: 438, baseType: !77, size: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !152, file: !4, line: 439, baseType: !77, size: 64, offset: 320)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !152, file: !4, line: 440, baseType: !151, size: 64, offset: 384)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !152, file: !4, line: 441, baseType: !151, size: 64, offset: 448)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !152, file: !4, line: 442, baseType: !83, size: 64, offset: 512)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !152, file: !4, line: 443, baseType: !146, size: 64, offset: 576)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !152, file: !4, line: 444, baseType: !165, size: 32, offset: 640)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !152, file: !4, line: 445, baseType: !61, size: 64, offset: 704)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !70, file: !4, line: 507, baseType: !146, size: 64, offset: 768)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !70, file: !4, line: 508, baseType: !61, size: 64, offset: 832)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !70, file: !4, line: 509, baseType: !170, size: 16, offset: 896)
!170 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !70, file: !4, line: 510, baseType: !170, size: 16, offset: 912)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !4, line: 387, baseType: !146)
!173 = distinct !DICompileUnit(language: DW_LANG_C99, file: !174, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!174 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!175 = !{i32 7, !"Dwarf Version", i32 5}
!176 = !{i32 2, !"Debug Info Version", i32 3}
!177 = !{i32 1, !"wchar_size", i32 4}
!178 = !{i32 7, !"PIC Level", i32 2}
!179 = !{i32 7, !"PIE Level", i32 2}
!180 = !{i32 7, !"uwtable", i32 1}
!181 = !{i32 7, !"frame-pointer", i32 2}
!182 = !{!"Ubuntu clang version 14.0.6"}
!183 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !184, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !186)
!184 = !DISubroutineType(types: !185)
!185 = !{!98}
!186 = !{}
!187 = !DILocalVariable(name: "doc", scope: !183, file: !1, line: 7, type: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !84)
!191 = !DILocation(line: 7, column: 15, scope: !183)
!192 = !DILocalVariable(name: "ctx", scope: !183, file: !1, line: 8, type: !193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathContextPtr", file: !41, line: 40, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathContext", file: !41, line: 39, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathContext", file: !41, line: 290, size: 3008, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !208, !209, !210, !247, !248, !249, !250, !251, !252, !286, !288, !289, !290, !291, !292, !293, !294, !295, !296, !301, !302, !303, !304, !305, !314, !315, !316, !317, !318, !342, !343, !344, !348, !349, !350, !352, !353}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !196, file: !41, line: 291, baseType: !188, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !196, file: !41, line: 292, baseType: !67, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "nb_variables_unused", scope: !196, file: !41, line: 294, baseType: !98, size: 32, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "max_variables_unused", scope: !196, file: !41, line: 295, baseType: !98, size: 32, offset: 160)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "varHash", scope: !196, file: !41, line: 296, baseType: !203, size: 64, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !204, line: 22, baseType: !205)
!204 = !DIFile(filename: "/usr/include/libxml2/libxml/hash.h", directory: "", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !204, line: 21, baseType: !207)
!207 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !204, line: 21, flags: DIFlagFwdDecl)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "nb_types", scope: !196, file: !41, line: 298, baseType: !98, size: 32, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "max_types", scope: !196, file: !41, line: 299, baseType: !98, size: 32, offset: 288)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !196, file: !41, line: 300, baseType: !211, size: 64, offset: 320)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathTypePtr", file: !41, line: 145, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathType", file: !41, line: 144, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathType", file: !41, line: 146, size: 128, elements: !215)
!215 = !{!216, !217}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !214, file: !41, line: 147, baseType: !62, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !214, file: !41, line: 148, baseType: !218, size: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathConvertFunc", file: !41, line: 138, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!98, !222, !98}
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectPtr", file: !41, line: 115, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObject", file: !41, line: 114, baseType: !225)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathObject", file: !41, line: 116, size: 576, elements: !226)
!226 = !{!227, !229, !239, !240, !242, !243, !244, !245, !246}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !225, file: !41, line: 117, baseType: !228, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectType", file: !41, line: 112, baseType: !40)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "nodesetval", scope: !225, file: !41, line: 118, baseType: !230, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSetPtr", file: !41, line: 82, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSet", file: !41, line: 81, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNodeSet", file: !41, line: 83, size: 128, elements: !234)
!234 = !{!235, !236, !237}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !233, file: !41, line: 84, baseType: !98, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !233, file: !41, line: 85, baseType: !98, size: 32, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !233, file: !41, line: 86, baseType: !238, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "boolval", scope: !225, file: !41, line: 119, baseType: !98, size: 32, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "floatval", scope: !225, file: !41, line: 120, baseType: !241, size: 64, offset: 192)
!241 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "stringval", scope: !225, file: !41, line: 121, baseType: !149, size: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !225, file: !41, line: 122, baseType: !61, size: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !225, file: !41, line: 123, baseType: !98, size: 32, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "user2", scope: !225, file: !41, line: 124, baseType: !61, size: 64, offset: 448)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "index2", scope: !225, file: !41, line: 125, baseType: !98, size: 32, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "nb_funcs_unused", scope: !196, file: !41, line: 302, baseType: !98, size: 32, offset: 384)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "max_funcs_unused", scope: !196, file: !41, line: 303, baseType: !98, size: 32, offset: 416)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "funcHash", scope: !196, file: !41, line: 304, baseType: !203, size: 64, offset: 448)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "nb_axis", scope: !196, file: !41, line: 306, baseType: !98, size: 32, offset: 512)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "max_axis", scope: !196, file: !41, line: 307, baseType: !98, size: 32, offset: 544)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "axis", scope: !196, file: !41, line: 308, baseType: !253, size: 64, offset: 576)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxisPtr", file: !41, line: 204, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxis", file: !41, line: 203, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathAxis", file: !41, line: 205, size: 128, elements: !257)
!257 = !{!258, !259}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !256, file: !41, line: 206, baseType: !62, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !256, file: !41, line: 207, baseType: !260, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxisFunc", file: !41, line: 196, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!222, !264, !222}
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathParserContextPtr", file: !41, line: 42, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathParserContext", file: !41, line: 41, baseType: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathParserContext", file: !41, line: 377, size: 704, elements: !268)
!268 = !{!269, !270, !271, !272, !273, !274, !275, !276, !278, !283, !284, !285}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !267, file: !41, line: 378, baseType: !62, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !267, file: !41, line: 379, baseType: !62, size: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !267, file: !41, line: 381, baseType: !98, size: 32, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !267, file: !41, line: 383, baseType: !193, size: 64, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !267, file: !41, line: 384, baseType: !222, size: 64, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "valueNr", scope: !267, file: !41, line: 385, baseType: !98, size: 32, offset: 320)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "valueMax", scope: !267, file: !41, line: 386, baseType: !98, size: 32, offset: 352)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "valueTab", scope: !267, file: !41, line: 387, baseType: !277, size: 64, offset: 384)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !267, file: !41, line: 389, baseType: !279, size: 64, offset: 448)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathCompExprPtr", file: !41, line: 369, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathCompExpr", file: !41, line: 368, baseType: !282)
!282 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathCompExpr", file: !41, line: 368, flags: DIFlagFwdDecl)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "xptr", scope: !267, file: !41, line: 390, baseType: !98, size: 32, offset: 512)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ancestor", scope: !267, file: !41, line: 391, baseType: !67, size: 64, offset: 576)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "valueFrame", scope: !267, file: !41, line: 393, baseType: !98, size: 32, offset: 640)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !196, file: !41, line: 311, baseType: !287, size: 64, offset: 640)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "nsNr", scope: !196, file: !41, line: 312, baseType: !98, size: 32, offset: 704)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !196, file: !41, line: 313, baseType: !61, size: 64, offset: 768)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "contextSize", scope: !196, file: !41, line: 316, baseType: !98, size: 32, offset: 832)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "proximityPosition", scope: !196, file: !41, line: 317, baseType: !98, size: 32, offset: 864)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "xptr", scope: !196, file: !41, line: 320, baseType: !98, size: 32, offset: 896)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "here", scope: !196, file: !41, line: 321, baseType: !67, size: 64, offset: 960)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !196, file: !41, line: 322, baseType: !67, size: 64, offset: 1024)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "nsHash", scope: !196, file: !41, line: 325, baseType: !203, size: 64, offset: 1088)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "varLookupFunc", scope: !196, file: !41, line: 326, baseType: !297, size: 64, offset: 1152)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathVariableLookupFunc", file: !41, line: 237, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!222, !61, !62, !62}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "varLookupData", scope: !196, file: !41, line: 327, baseType: !61, size: 64, offset: 1216)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !196, file: !41, line: 330, baseType: !61, size: 64, offset: 1280)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !196, file: !41, line: 333, baseType: !62, size: 64, offset: 1344)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "functionURI", scope: !196, file: !41, line: 334, baseType: !62, size: 64, offset: 1408)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "funcLookupFunc", scope: !196, file: !41, line: 337, baseType: !306, size: 64, offset: 1472)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathFuncLookupFunc", file: !41, line: 252, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!310, !61, !62, !62}
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathFunction", file: !41, line: 220, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !264, !98}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "funcLookupData", scope: !196, file: !41, line: 338, baseType: !61, size: 64, offset: 1536)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tmpNsList", scope: !196, file: !41, line: 341, baseType: !287, size: 64, offset: 1600)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tmpNsNr", scope: !196, file: !41, line: 342, baseType: !98, size: 32, offset: 1664)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !196, file: !41, line: 345, baseType: !61, size: 64, offset: 1728)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !196, file: !41, line: 346, baseType: !319, size: 64, offset: 1792)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStructuredErrorFunc", file: !54, line: 856, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !61, !323}
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorPtr", file: !54, line: 77, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlError", file: !54, line: 76, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlError", file: !54, line: 78, size: 704, elements: !327)
!327 = !{!328, !329, !330, !331, !333, !334, !335, !336, !337, !338, !339, !340, !341}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !326, file: !54, line: 79, baseType: !98, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !326, file: !54, line: 80, baseType: !98, size: 32, offset: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !326, file: !54, line: 81, baseType: !89, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !326, file: !54, line: 82, baseType: !332, size: 32, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorLevel", file: !54, line: 29, baseType: !53)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !326, file: !54, line: 83, baseType: !89, size: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !326, file: !54, line: 84, baseType: !98, size: 32, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "str1", scope: !326, file: !54, line: 85, baseType: !89, size: 64, offset: 320)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "str2", scope: !326, file: !54, line: 86, baseType: !89, size: 64, offset: 384)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "str3", scope: !326, file: !54, line: 87, baseType: !89, size: 64, offset: 448)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "int1", scope: !326, file: !54, line: 88, baseType: !98, size: 32, offset: 512)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "int2", scope: !326, file: !54, line: 89, baseType: !98, size: 32, offset: 544)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "ctxt", scope: !326, file: !54, line: 90, baseType: !61, size: 64, offset: 576)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !326, file: !54, line: 91, baseType: !61, size: 64, offset: 640)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "lastError", scope: !196, file: !41, line: 347, baseType: !325, size: 704, offset: 1856)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "debugNode", scope: !196, file: !41, line: 348, baseType: !67, size: 64, offset: 2560)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !196, file: !41, line: 351, baseType: !345, size: 64, offset: 2624)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !141, line: 25, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !141, line: 24, baseType: !140)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !196, file: !41, line: 353, baseType: !98, size: 32, offset: 2688)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !196, file: !41, line: 356, baseType: !61, size: 64, offset: 2752)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "opLimit", scope: !196, file: !41, line: 359, baseType: !351, size: 64, offset: 2816)
!351 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "opCount", scope: !196, file: !41, line: 360, baseType: !351, size: 64, offset: 2880)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !196, file: !41, line: 361, baseType: !98, size: 32, offset: 2944)
!354 = !DILocation(line: 8, column: 24, scope: !183)
!355 = !DILocalVariable(name: "obj", scope: !183, file: !1, line: 9, type: !222)
!356 = !DILocation(line: 9, column: 23, scope: !183)
!357 = !DILocalVariable(name: "node", scope: !183, file: !1, line: 10, type: !67)
!358 = !DILocation(line: 10, column: 16, scope: !183)
!359 = !DILocalVariable(name: "ns", scope: !183, file: !1, line: 11, type: !172)
!360 = !DILocation(line: 11, column: 14, scope: !183)
!361 = !DILocation(line: 13, column: 11, scope: !183)
!362 = !DILocation(line: 13, column: 9, scope: !183)
!363 = !DILocation(line: 14, column: 9, scope: !364)
!364 = distinct !DILexicalBlock(scope: !183, file: !1, line: 14, column: 9)
!365 = !DILocation(line: 14, column: 13, scope: !364)
!366 = !DILocation(line: 14, column: 9, scope: !183)
!367 = !DILocation(line: 14, column: 22, scope: !364)
!368 = !DILocation(line: 16, column: 30, scope: !183)
!369 = !DILocation(line: 16, column: 11, scope: !183)
!370 = !DILocation(line: 16, column: 9, scope: !183)
!371 = !DILocation(line: 17, column: 9, scope: !372)
!372 = distinct !DILexicalBlock(scope: !183, file: !1, line: 17, column: 9)
!373 = !DILocation(line: 17, column: 13, scope: !372)
!374 = !DILocation(line: 17, column: 9, scope: !183)
!375 = !DILocation(line: 18, column: 20, scope: !376)
!376 = distinct !DILexicalBlock(scope: !372, file: !1, line: 17, column: 22)
!377 = !DILocation(line: 18, column: 9, scope: !376)
!378 = !DILocation(line: 19, column: 9, scope: !376)
!379 = !DILocation(line: 22, column: 33, scope: !183)
!380 = !DILocation(line: 22, column: 12, scope: !183)
!381 = !DILocation(line: 22, column: 10, scope: !183)
!382 = !DILocation(line: 23, column: 9, scope: !383)
!383 = distinct !DILexicalBlock(scope: !183, file: !1, line: 23, column: 9)
!384 = !DILocation(line: 23, column: 14, scope: !383)
!385 = !DILocation(line: 23, column: 9, scope: !183)
!386 = !DILocation(line: 24, column: 29, scope: !387)
!387 = distinct !DILexicalBlock(scope: !383, file: !1, line: 23, column: 23)
!388 = !DILocation(line: 24, column: 9, scope: !387)
!389 = !DILocation(line: 25, column: 20, scope: !387)
!390 = !DILocation(line: 25, column: 9, scope: !387)
!391 = !DILocation(line: 26, column: 9, scope: !387)
!392 = !DILocation(line: 29, column: 19, scope: !183)
!393 = !DILocation(line: 29, column: 10, scope: !183)
!394 = !DILocation(line: 29, column: 8, scope: !183)
!395 = !DILocation(line: 30, column: 9, scope: !396)
!396 = distinct !DILexicalBlock(scope: !183, file: !1, line: 30, column: 9)
!397 = !DILocation(line: 30, column: 12, scope: !396)
!398 = !DILocation(line: 30, column: 9, scope: !183)
!399 = !DILocation(line: 31, column: 29, scope: !400)
!400 = distinct !DILexicalBlock(scope: !396, file: !1, line: 30, column: 21)
!401 = !DILocation(line: 31, column: 9, scope: !400)
!402 = !DILocation(line: 32, column: 20, scope: !400)
!403 = !DILocation(line: 32, column: 9, scope: !400)
!404 = !DILocation(line: 33, column: 9, scope: !400)
!405 = !DILocation(line: 36, column: 11, scope: !183)
!406 = !DILocation(line: 36, column: 9, scope: !183)
!407 = !DILocation(line: 37, column: 9, scope: !408)
!408 = distinct !DILexicalBlock(scope: !183, file: !1, line: 37, column: 9)
!409 = !DILocation(line: 37, column: 13, scope: !408)
!410 = !DILocation(line: 37, column: 9, scope: !183)
!411 = !DILocation(line: 38, column: 29, scope: !412)
!412 = distinct !DILexicalBlock(scope: !408, file: !1, line: 37, column: 22)
!413 = !DILocation(line: 38, column: 9, scope: !412)
!414 = !DILocation(line: 39, column: 20, scope: !412)
!415 = !DILocation(line: 39, column: 9, scope: !412)
!416 = !DILocation(line: 40, column: 9, scope: !412)
!417 = !DILocalVariable(name: "symbolic_int", scope: !183, file: !1, line: 43, type: !98)
!418 = !DILocation(line: 43, column: 9, scope: !183)
!419 = !DILocation(line: 44, column: 24, scope: !183)
!420 = !DILocation(line: 44, column: 5, scope: !183)
!421 = !DILocation(line: 46, column: 9, scope: !422)
!422 = distinct !DILexicalBlock(scope: !183, file: !1, line: 46, column: 9)
!423 = !DILocation(line: 46, column: 22, scope: !422)
!424 = !DILocation(line: 46, column: 9, scope: !183)
!425 = !DILocation(line: 47, column: 34, scope: !426)
!426 = distinct !DILexicalBlock(scope: !422, file: !1, line: 46, column: 27)
!427 = !DILocation(line: 47, column: 39, scope: !426)
!428 = !DILocation(line: 47, column: 63, scope: !426)
!429 = !DILocation(line: 47, column: 51, scope: !426)
!430 = !DILocation(line: 47, column: 9, scope: !426)
!431 = !DILocation(line: 48, column: 13, scope: !432)
!432 = distinct !DILexicalBlock(scope: !426, file: !1, line: 48, column: 13)
!433 = !DILocation(line: 48, column: 18, scope: !432)
!434 = !DILocation(line: 48, column: 30, scope: !432)
!435 = !DILocation(line: 48, column: 37, scope: !432)
!436 = !DILocation(line: 48, column: 13, scope: !426)
!437 = !DILocation(line: 49, column: 13, scope: !438)
!438 = distinct !DILexicalBlock(scope: !432, file: !1, line: 48, column: 43)
!439 = !DILocation(line: 50, column: 18, scope: !440)
!440 = distinct !DILexicalBlock(scope: !438, file: !1, line: 50, column: 17)
!441 = !DILocation(line: 50, column: 23, scope: !440)
!442 = !DILocation(line: 50, column: 35, scope: !440)
!443 = !DILocation(line: 50, column: 46, scope: !440)
!444 = !DILocation(line: 50, column: 55, scope: !440)
!445 = !DILocation(line: 51, column: 18, scope: !440)
!446 = !DILocation(line: 51, column: 23, scope: !440)
!447 = !DILocation(line: 51, column: 35, scope: !440)
!448 = !DILocation(line: 51, column: 47, scope: !440)
!449 = !DILocation(line: 51, column: 52, scope: !440)
!450 = !DILocation(line: 50, column: 17, scope: !438)
!451 = !DILocation(line: 52, column: 49, scope: !452)
!452 = distinct !DILexicalBlock(scope: !440, file: !1, line: 51, column: 76)
!453 = !DILocation(line: 52, column: 54, scope: !452)
!454 = !DILocation(line: 52, column: 66, scope: !452)
!455 = !DILocation(line: 52, column: 39, scope: !452)
!456 = !DILocation(line: 52, column: 17, scope: !452)
!457 = !DILocation(line: 53, column: 13, scope: !452)
!458 = !DILocation(line: 54, column: 9, scope: !438)
!459 = !DILocation(line: 55, column: 9, scope: !426)
!460 = !DILocation(line: 55, column: 14, scope: !426)
!461 = !DILocation(line: 55, column: 26, scope: !426)
!462 = !DILocation(line: 55, column: 33, scope: !426)
!463 = !DILocation(line: 56, column: 16, scope: !426)
!464 = !DILocation(line: 56, column: 9, scope: !426)
!465 = !DILocation(line: 57, column: 27, scope: !426)
!466 = !DILocation(line: 57, column: 32, scope: !426)
!467 = !DILocation(line: 57, column: 9, scope: !426)
!468 = !DILocation(line: 57, column: 14, scope: !426)
!469 = !DILocation(line: 57, column: 25, scope: !426)
!470 = !DILocation(line: 58, column: 5, scope: !426)
!471 = !DILocation(line: 59, column: 16, scope: !472)
!472 = distinct !DILexicalBlock(scope: !422, file: !1, line: 58, column: 12)
!473 = !DILocation(line: 59, column: 9, scope: !472)
!474 = !DILocation(line: 62, column: 24, scope: !183)
!475 = !DILocation(line: 62, column: 5, scope: !183)
!476 = !DILocation(line: 63, column: 25, scope: !183)
!477 = !DILocation(line: 63, column: 5, scope: !183)
!478 = !DILocation(line: 64, column: 16, scope: !183)
!479 = !DILocation(line: 64, column: 5, scope: !183)
!480 = !DILocation(line: 65, column: 5, scope: !183)
!481 = !DILocation(line: 66, column: 1, scope: !183)
!482 = distinct !DISubprogram(name: "memset", scope: !483, file: !483, line: 12, type: !484, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !173, retainedNodes: !186)
!483 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!484 = !DISubroutineType(types: !485)
!485 = !{!61, !61, !98, !486}
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !487, line: 46, baseType: !351)
!487 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!488 = !DILocalVariable(name: "dst", arg: 1, scope: !482, file: !483, line: 12, type: !61)
!489 = !DILocation(line: 12, column: 20, scope: !482)
!490 = !DILocalVariable(name: "s", arg: 2, scope: !482, file: !483, line: 12, type: !98)
!491 = !DILocation(line: 12, column: 29, scope: !482)
!492 = !DILocalVariable(name: "count", arg: 3, scope: !482, file: !483, line: 12, type: !486)
!493 = !DILocation(line: 12, column: 39, scope: !482)
!494 = !DILocalVariable(name: "a", scope: !482, file: !483, line: 13, type: !89)
!495 = !DILocation(line: 13, column: 9, scope: !482)
!496 = !DILocation(line: 13, column: 13, scope: !482)
!497 = !DILocation(line: 14, column: 3, scope: !482)
!498 = !DILocation(line: 14, column: 15, scope: !482)
!499 = !DILocation(line: 14, column: 18, scope: !482)
!500 = !DILocation(line: 15, column: 12, scope: !482)
!501 = !DILocation(line: 15, column: 7, scope: !482)
!502 = !DILocation(line: 15, column: 10, scope: !482)
!503 = distinct !{!503, !497, !500, !504}
!504 = !{!"llvm.loop.mustprogress"}
!505 = !DILocation(line: 16, column: 10, scope: !482)
!506 = !DILocation(line: 16, column: 3, scope: !482)

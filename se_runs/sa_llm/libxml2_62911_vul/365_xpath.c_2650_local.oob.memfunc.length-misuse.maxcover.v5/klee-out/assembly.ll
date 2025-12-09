; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/365_xpath.c_2650_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/365_xpath.c_2650_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
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

@.str = private unnamed_addr constant [22 x i8] c"<root><a/><b/></root>\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"noname.xml\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"//a\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"//b\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"buffersize\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"work\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/365_xpath.c_2650_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !77 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca %struct._xmlXPathContext*, align 8
  %4 = alloca %struct._xmlXPathObject*, align 8
  %5 = alloca %struct._xmlXPathObject*, align 8
  %6 = alloca %struct._xmlNode*, align 8
  %7 = alloca %struct._xmlNode*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [256 x i8], align 16
  %12 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !82, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.declare(metadata %struct._xmlXPathContext** %3, metadata !188, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %4, metadata !355, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %5, metadata !357, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %6, metadata !359, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %7, metadata !361, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.declare(metadata [256 x i8]* %8, metadata !363, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.declare(metadata i32* %9, metadata !368, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.declare(metadata i32* %10, metadata !370, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.declare(metadata [256 x i8]* %11, metadata !372, metadata !DIExpression()), !dbg !374
  call void @xmlInitParser(), !dbg !375
  call void @xmlCheckVersion(i32 noundef 20914), !dbg !376
  call void @llvm.dbg.declare(metadata i8** %12, metadata !377, metadata !DIExpression()), !dbg !380
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %12, align 8, !dbg !380
  %13 = load i8*, i8** %12, align 8, !dbg !381
  %14 = load i8*, i8** %12, align 8, !dbg !382
  %15 = call i64 @strlen(i8* noundef %14) #7, !dbg !383
  %16 = trunc i64 %15 to i32, !dbg !383
  %17 = call %struct._xmlDoc* @xmlReadMemory(i8* noundef %13, i32 noundef %16, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* noundef null, i32 noundef 0), !dbg !384
  store %struct._xmlDoc* %17, %struct._xmlDoc** %2, align 8, !dbg !385
  %18 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !386
  %19 = icmp eq %struct._xmlDoc* %18, null, !dbg !388
  br i1 %19, label %20, label %21, !dbg !389

20:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !390
  br label %127, !dbg !390

21:                                               ; preds = %0
  %22 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !392
  %23 = call %struct._xmlXPathContext* @xmlXPathNewContext(%struct._xmlDoc* noundef %22), !dbg !393
  store %struct._xmlXPathContext* %23, %struct._xmlXPathContext** %3, align 8, !dbg !394
  %24 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %3, align 8, !dbg !395
  %25 = icmp eq %struct._xmlXPathContext* %24, null, !dbg !397
  br i1 %25, label %26, label %28, !dbg !398

26:                                               ; preds = %21
  %27 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !399
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %27), !dbg !401
  store i32 1, i32* %1, align 4, !dbg !402
  br label %127, !dbg !402

28:                                               ; preds = %21
  %29 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %3, align 8, !dbg !403
  %30 = call %struct._xmlXPathObject* @xmlXPathEvalExpression(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %struct._xmlXPathContext* noundef %29), !dbg !404
  store %struct._xmlXPathObject* %30, %struct._xmlXPathObject** %4, align 8, !dbg !405
  %31 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %3, align 8, !dbg !406
  %32 = call %struct._xmlXPathObject* @xmlXPathEvalExpression(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct._xmlXPathContext* noundef %31), !dbg !407
  store %struct._xmlXPathObject* %32, %struct._xmlXPathObject** %5, align 8, !dbg !408
  %33 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !409
  %34 = icmp eq %struct._xmlXPathObject* %33, null, !dbg !411
  br i1 %34, label %72, label %35, !dbg !412

35:                                               ; preds = %28
  %36 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %5, align 8, !dbg !413
  %37 = icmp eq %struct._xmlXPathObject* %36, null, !dbg !414
  br i1 %37, label %72, label %38, !dbg !415

38:                                               ; preds = %35
  %39 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !416
  %40 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %39, i32 0, i32 0, !dbg !417
  %41 = load i32, i32* %40, align 8, !dbg !417
  %42 = icmp ne i32 %41, 1, !dbg !418
  br i1 %42, label %72, label %43, !dbg !419

43:                                               ; preds = %38
  %44 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %5, align 8, !dbg !420
  %45 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %44, i32 0, i32 0, !dbg !421
  %46 = load i32, i32* %45, align 8, !dbg !421
  %47 = icmp ne i32 %46, 1, !dbg !422
  br i1 %47, label %72, label %48, !dbg !423

48:                                               ; preds = %43
  %49 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !424
  %50 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %49, i32 0, i32 1, !dbg !425
  %51 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %50, align 8, !dbg !425
  %52 = icmp eq %struct._xmlNodeSet* %51, null, !dbg !426
  br i1 %52, label %72, label %53, !dbg !427

53:                                               ; preds = %48
  %54 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %5, align 8, !dbg !428
  %55 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %54, i32 0, i32 1, !dbg !429
  %56 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %55, align 8, !dbg !429
  %57 = icmp eq %struct._xmlNodeSet* %56, null, !dbg !430
  br i1 %57, label %72, label %58, !dbg !431

58:                                               ; preds = %53
  %59 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !432
  %60 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %59, i32 0, i32 1, !dbg !433
  %61 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %60, align 8, !dbg !433
  %62 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %61, i32 0, i32 0, !dbg !434
  %63 = load i32, i32* %62, align 8, !dbg !434
  %64 = icmp eq i32 %63, 0, !dbg !435
  br i1 %64, label %72, label %65, !dbg !436

65:                                               ; preds = %58
  %66 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %5, align 8, !dbg !437
  %67 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %66, i32 0, i32 1, !dbg !438
  %68 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %67, align 8, !dbg !438
  %69 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %68, i32 0, i32 0, !dbg !439
  %70 = load i32, i32* %69, align 8, !dbg !439
  %71 = icmp eq i32 %70, 0, !dbg !440
  br i1 %71, label %72, label %77, !dbg !441

72:                                               ; preds = %65, %58, %53, %48, %43, %38, %35, %28
  %73 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !442
  call void @xmlXPathFreeObject(%struct._xmlXPathObject* noundef %73), !dbg !444
  %74 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %5, align 8, !dbg !445
  call void @xmlXPathFreeObject(%struct._xmlXPathObject* noundef %74), !dbg !446
  %75 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %3, align 8, !dbg !447
  call void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef %75), !dbg !448
  %76 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !449
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %76), !dbg !450
  store i32 1, i32* %1, align 4, !dbg !451
  br label %127, !dbg !451

77:                                               ; preds = %65
  %78 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !452
  %79 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %78, i32 0, i32 1, !dbg !453
  %80 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %79, align 8, !dbg !453
  %81 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %80, i32 0, i32 2, !dbg !454
  %82 = load %struct._xmlNode**, %struct._xmlNode*** %81, align 8, !dbg !454
  %83 = getelementptr inbounds %struct._xmlNode*, %struct._xmlNode** %82, i64 0, !dbg !452
  %84 = load %struct._xmlNode*, %struct._xmlNode** %83, align 8, !dbg !452
  store %struct._xmlNode* %84, %struct._xmlNode** %6, align 8, !dbg !455
  %85 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %5, align 8, !dbg !456
  %86 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %85, i32 0, i32 1, !dbg !457
  %87 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %86, align 8, !dbg !457
  %88 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %87, i32 0, i32 2, !dbg !458
  %89 = load %struct._xmlNode**, %struct._xmlNode*** %88, align 8, !dbg !458
  %90 = getelementptr inbounds %struct._xmlNode*, %struct._xmlNode** %89, i64 0, !dbg !456
  %91 = load %struct._xmlNode*, %struct._xmlNode** %90, align 8, !dbg !456
  store %struct._xmlNode* %91, %struct._xmlNode** %7, align 8, !dbg !459
  %92 = bitcast i32* %9 to i8*, !dbg !460
  call void @klee_make_symbolic(i8* noundef %92, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)), !dbg !461
  %93 = load i32, i32* %9, align 4, !dbg !462
  %94 = icmp sge i32 %93, 0, !dbg !463
  %95 = zext i1 %94 to i32, !dbg !463
  %96 = sext i32 %95 to i64, !dbg !462
  call void @klee_assume(i64 noundef %96), !dbg !464
  %97 = load i32, i32* %9, align 4, !dbg !465
  %98 = icmp sle i32 %97, 256, !dbg !466
  %99 = zext i1 %98 to i32, !dbg !466
  %100 = sext i32 %99 to i64, !dbg !465
  call void @klee_assume(i64 noundef %100), !dbg !467
  %101 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !468
  call void @klee_make_symbolic(i8* noundef %101, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !469
  %102 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 255, !dbg !470
  store i8 0, i8* %102, align 1, !dbg !471
  %103 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !472
  %104 = call i64 @strlen(i8* noundef %103) #7, !dbg !473
  %105 = add i64 %104, 1, !dbg !474
  %106 = trunc i64 %105 to i32, !dbg !473
  store i32 %106, i32* %10, align 4, !dbg !475
  %107 = load i32, i32* %10, align 4, !dbg !476
  %108 = load i32, i32* %9, align 4, !dbg !478
  %109 = icmp sgt i32 %107, %108, !dbg !479
  br i1 %109, label %110, label %116, !dbg !480

110:                                              ; preds = %77
  %111 = load i32, i32* %9, align 4, !dbg !481
  %112 = sub nsw i32 %111, 1, !dbg !483
  %113 = sext i32 %112 to i64, !dbg !484
  %114 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 %113, !dbg !484
  store i8 0, i8* %114, align 1, !dbg !485
  %115 = load i32, i32* %9, align 4, !dbg !486
  store i32 %115, i32* %10, align 4, !dbg !487
  br label %116, !dbg !488

116:                                              ; preds = %110, %77
  %117 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.7, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !489
  %118 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0, !dbg !490
  %119 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !490
  %120 = load i32, i32* %10, align 4, !dbg !491
  %121 = sext i32 %120 to i64, !dbg !491
  %122 = call i8* @memmove(i8* %118, i8* %119, i64 %121), !dbg !490
  %123 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !492
  call void @xmlXPathFreeObject(%struct._xmlXPathObject* noundef %123), !dbg !493
  %124 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %5, align 8, !dbg !494
  call void @xmlXPathFreeObject(%struct._xmlXPathObject* noundef %124), !dbg !495
  %125 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %3, align 8, !dbg !496
  call void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef %125), !dbg !497
  %126 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !498
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %126), !dbg !499
  call void @xmlCleanupParser(), !dbg !500
  store i32 0, i32* %1, align 4, !dbg !501
  br label %127, !dbg !501

127:                                              ; preds = %116, %72, %26, %20
  %128 = load i32, i32* %1, align 4, !dbg !502
  ret i32 %128, !dbg !502
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @xmlInitParser() #2

declare void @xmlCheckVersion(i32 noundef) #2

declare %struct._xmlDoc* @xmlReadMemory(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

declare %struct._xmlXPathContext* @xmlXPathNewContext(%struct._xmlDoc* noundef) #2

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare %struct._xmlXPathObject* @xmlXPathEvalExpression(i8* noundef, %struct._xmlXPathContext* noundef) #2

declare void @xmlXPathFreeObject(%struct._xmlXPathObject* noundef) #2

declare void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

declare void @xmlCleanupParser() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !503 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !511, metadata !DIExpression()), !dbg !512
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !513, metadata !DIExpression()), !dbg !514
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !515, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.declare(metadata i8** %8, metadata !517, metadata !DIExpression()), !dbg !518
  %10 = load i8*, i8** %5, align 8, !dbg !519
  store i8* %10, i8** %8, align 8, !dbg !518
  call void @llvm.dbg.declare(metadata i8** %9, metadata !520, metadata !DIExpression()), !dbg !521
  %11 = load i8*, i8** %6, align 8, !dbg !522
  store i8* %11, i8** %9, align 8, !dbg !521
  %12 = load i8*, i8** %6, align 8, !dbg !523
  %13 = load i8*, i8** %5, align 8, !dbg !525
  %14 = icmp eq i8* %12, %13, !dbg !526
  br i1 %14, label %15, label %17, !dbg !527

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !528
  store i8* %16, i8** %4, align 8, !dbg !529
  br label %52, !dbg !529

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !530
  %19 = load i8*, i8** %5, align 8, !dbg !532
  %20 = icmp ugt i8* %18, %19, !dbg !533
  br i1 %20, label %21, label %31, !dbg !534

21:                                               ; preds = %17, %25
  %22 = load i64, i64* %7, align 8, !dbg !535
  %23 = add i64 %22, -1, !dbg !535
  store i64 %23, i64* %7, align 8, !dbg !535
  %24 = icmp ne i64 %22, 0, !dbg !537
  br i1 %24, label %25, label %50, !dbg !537

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8, !dbg !538
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !538
  store i8* %27, i8** %9, align 8, !dbg !538
  %28 = load i8, i8* %26, align 1, !dbg !539
  %29 = load i8*, i8** %8, align 8, !dbg !540
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !540
  store i8* %30, i8** %8, align 8, !dbg !540
  store i8 %28, i8* %29, align 1, !dbg !541
  br label %21, !dbg !537, !llvm.loop !542

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8, !dbg !544
  %33 = sub i64 %32, 1, !dbg !546
  %34 = load i8*, i8** %8, align 8, !dbg !547
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !547
  store i8* %35, i8** %8, align 8, !dbg !547
  %36 = load i64, i64* %7, align 8, !dbg !548
  %37 = sub i64 %36, 1, !dbg !549
  %38 = load i8*, i8** %9, align 8, !dbg !550
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !550
  store i8* %39, i8** %9, align 8, !dbg !550
  br label %40, !dbg !551

40:                                               ; preds = %44, %31
  %41 = load i64, i64* %7, align 8, !dbg !552
  %42 = add i64 %41, -1, !dbg !552
  store i64 %42, i64* %7, align 8, !dbg !552
  %43 = icmp ne i64 %41, 0, !dbg !551
  br i1 %43, label %44, label %50, !dbg !551

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8, !dbg !553
  %46 = getelementptr inbounds i8, i8* %45, i32 -1, !dbg !553
  store i8* %46, i8** %9, align 8, !dbg !553
  %47 = load i8, i8* %45, align 1, !dbg !554
  %48 = load i8*, i8** %8, align 8, !dbg !555
  %49 = getelementptr inbounds i8, i8* %48, i32 -1, !dbg !555
  store i8* %49, i8** %8, align 8, !dbg !555
  store i8 %47, i8* %48, align 1, !dbg !556
  br label %40, !dbg !551, !llvm.loop !557

50:                                               ; preds = %40, %21
  %51 = load i8*, i8** %5, align 8, !dbg !558
  store i8* %51, i8** %4, align 8, !dbg !559
  br label %52, !dbg !559

52:                                               ; preds = %50, %15
  %53 = load i8*, i8** %4, align 8, !dbg !560
  ret i8* %53, !dbg !560
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76, !76}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !60, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/365_xpath.c_2650_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "5191a43486833dbeb6e0a6086656d915")
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
!60 = !{!61, !62}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !65, line: 28, baseType: !66)
!65 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!66 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!67 = distinct !DICompileUnit(language: DW_LANG_C99, file: !68, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!68 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!69 = !{i32 7, !"Dwarf Version", i32 5}
!70 = !{i32 2, !"Debug Info Version", i32 3}
!71 = !{i32 1, !"wchar_size", i32 4}
!72 = !{i32 7, !"PIC Level", i32 2}
!73 = !{i32 7, !"PIE Level", i32 2}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"Ubuntu clang version 14.0.6"}
!77 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !78, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !81)
!78 = !DISubroutineType(types: !79)
!79 = !{!80}
!80 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!81 = !{}
!82 = !DILocalVariable(name: "doc", scope: !77, file: !1, line: 8, type: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !87)
!87 = !{!88, !89, !91, !94, !145, !146, !147, !148, !149, !150, !151, !152, !172, !173, !174, !175, !176, !177, !178, !179, !180, !184, !185, !186}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !86, file: !4, line: 560, baseType: !61, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !86, file: !4, line: 561, baseType: !90, size: 32, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !86, file: !4, line: 562, baseType: !92, size: 64, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !86, file: !4, line: 563, baseType: !95, size: 64, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !97)
!97 = !{!98, !99, !100, !101, !102, !103, !104, !105, !106, !108, !121, !123, !140, !141, !142, !144}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !96, file: !4, line: 493, baseType: !61, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !96, file: !4, line: 494, baseType: !90, size: 32, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !96, file: !4, line: 495, baseType: !62, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !96, file: !4, line: 496, baseType: !95, size: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !96, file: !4, line: 497, baseType: !95, size: 64, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !96, file: !4, line: 498, baseType: !95, size: 64, offset: 320)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !96, file: !4, line: 499, baseType: !95, size: 64, offset: 384)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !96, file: !4, line: 500, baseType: !95, size: 64, offset: 448)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !96, file: !4, line: 501, baseType: !107, size: 64, offset: 512)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !96, file: !4, line: 504, baseType: !109, size: 64, offset: 576)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !112)
!112 = !{!113, !115, !117, !118, !119, !120}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !111, file: !4, line: 389, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !111, file: !4, line: 390, baseType: !116, size: 32, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !90)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !111, file: !4, line: 391, baseType: !62, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !111, file: !4, line: 392, baseType: !62, size: 64, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !111, file: !4, line: 393, baseType: !61, size: 64, offset: 256)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !111, file: !4, line: 394, baseType: !107, size: 64, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !96, file: !4, line: 505, baseType: !122, size: 64, offset: 640)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !96, file: !4, line: 506, baseType: !124, size: 64, offset: 704)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !139}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !125, file: !4, line: 434, baseType: !61, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !125, file: !4, line: 435, baseType: !90, size: 32, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !125, file: !4, line: 436, baseType: !62, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !125, file: !4, line: 437, baseType: !95, size: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !125, file: !4, line: 438, baseType: !95, size: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !125, file: !4, line: 439, baseType: !95, size: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !125, file: !4, line: 440, baseType: !124, size: 64, offset: 384)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !125, file: !4, line: 441, baseType: !124, size: 64, offset: 448)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !125, file: !4, line: 442, baseType: !107, size: 64, offset: 512)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !125, file: !4, line: 443, baseType: !109, size: 64, offset: 576)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !125, file: !4, line: 444, baseType: !138, size: 32, offset: 640)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !125, file: !4, line: 445, baseType: !61, size: 64, offset: 704)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !96, file: !4, line: 507, baseType: !109, size: 64, offset: 768)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !96, file: !4, line: 508, baseType: !61, size: 64, offset: 832)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !96, file: !4, line: 509, baseType: !143, size: 16, offset: 896)
!143 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !96, file: !4, line: 510, baseType: !143, size: 16, offset: 912)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !86, file: !4, line: 564, baseType: !95, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !86, file: !4, line: 565, baseType: !95, size: 64, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !86, file: !4, line: 566, baseType: !95, size: 64, offset: 384)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !86, file: !4, line: 567, baseType: !95, size: 64, offset: 448)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !86, file: !4, line: 568, baseType: !107, size: 64, offset: 512)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !86, file: !4, line: 571, baseType: !80, size: 32, offset: 576)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !86, file: !4, line: 572, baseType: !80, size: 32, offset: 608)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !86, file: !4, line: 578, baseType: !153, size: 64, offset: 640)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !155)
!155 = !{!156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !154, file: !4, line: 406, baseType: !61, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !154, file: !4, line: 407, baseType: !90, size: 32, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !154, file: !4, line: 408, baseType: !62, size: 64, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !154, file: !4, line: 409, baseType: !95, size: 64, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !154, file: !4, line: 410, baseType: !95, size: 64, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !154, file: !4, line: 411, baseType: !107, size: 64, offset: 320)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !154, file: !4, line: 412, baseType: !95, size: 64, offset: 384)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !154, file: !4, line: 413, baseType: !95, size: 64, offset: 448)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !154, file: !4, line: 414, baseType: !107, size: 64, offset: 512)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !154, file: !4, line: 417, baseType: !61, size: 64, offset: 576)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !154, file: !4, line: 418, baseType: !61, size: 64, offset: 640)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !154, file: !4, line: 419, baseType: !61, size: 64, offset: 704)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !154, file: !4, line: 420, baseType: !61, size: 64, offset: 768)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !154, file: !4, line: 421, baseType: !62, size: 64, offset: 832)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !154, file: !4, line: 422, baseType: !62, size: 64, offset: 896)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !154, file: !4, line: 423, baseType: !61, size: 64, offset: 960)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !86, file: !4, line: 579, baseType: !153, size: 64, offset: 704)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !86, file: !4, line: 580, baseType: !114, size: 64, offset: 768)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !86, file: !4, line: 581, baseType: !62, size: 64, offset: 832)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !86, file: !4, line: 582, baseType: !62, size: 64, offset: 896)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !86, file: !4, line: 583, baseType: !61, size: 64, offset: 960)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !86, file: !4, line: 584, baseType: !61, size: 64, offset: 1024)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !86, file: !4, line: 585, baseType: !62, size: 64, offset: 1088)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !86, file: !4, line: 586, baseType: !80, size: 32, offset: 1152)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !86, file: !4, line: 588, baseType: !181, size: 64, offset: 1216)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !183, line: 24, flags: DIFlagFwdDecl)
!183 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!184 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !86, file: !4, line: 589, baseType: !61, size: 64, offset: 1280)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !86, file: !4, line: 590, baseType: !80, size: 32, offset: 1344)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !86, file: !4, line: 592, baseType: !80, size: 32, offset: 1376)
!187 = !DILocation(line: 8, column: 15, scope: !77)
!188 = !DILocalVariable(name: "ctx", scope: !77, file: !1, line: 9, type: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathContextPtr", file: !41, line: 40, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathContext", file: !41, line: 39, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathContext", file: !41, line: 290, size: 3008, elements: !193)
!193 = !{!194, !195, !199, !200, !201, !207, !208, !209, !246, !247, !248, !249, !250, !251, !285, !288, !289, !290, !291, !292, !293, !294, !295, !296, !301, !302, !303, !304, !305, !314, !315, !316, !317, !318, !342, !343, !344, !348, !349, !350, !352, !353}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !192, file: !41, line: 291, baseType: !83, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !192, file: !41, line: 292, baseType: !196, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !96)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "nb_variables_unused", scope: !192, file: !41, line: 294, baseType: !80, size: 32, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "max_variables_unused", scope: !192, file: !41, line: 295, baseType: !80, size: 32, offset: 160)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "varHash", scope: !192, file: !41, line: 296, baseType: !202, size: 64, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !203, line: 22, baseType: !204)
!203 = !DIFile(filename: "/usr/include/libxml2/libxml/hash.h", directory: "", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !203, line: 21, baseType: !206)
!206 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !203, line: 21, flags: DIFlagFwdDecl)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "nb_types", scope: !192, file: !41, line: 298, baseType: !80, size: 32, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "max_types", scope: !192, file: !41, line: 299, baseType: !80, size: 32, offset: 288)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !192, file: !41, line: 300, baseType: !210, size: 64, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathTypePtr", file: !41, line: 145, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathType", file: !41, line: 144, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathType", file: !41, line: 146, size: 128, elements: !214)
!214 = !{!215, !216}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !213, file: !41, line: 147, baseType: !62, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !213, file: !41, line: 148, baseType: !217, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathConvertFunc", file: !41, line: 138, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!80, !221, !80}
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectPtr", file: !41, line: 115, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObject", file: !41, line: 114, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathObject", file: !41, line: 116, size: 576, elements: !225)
!225 = !{!226, !228, !238, !239, !241, !242, !243, !244, !245}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !224, file: !41, line: 117, baseType: !227, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectType", file: !41, line: 112, baseType: !40)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "nodesetval", scope: !224, file: !41, line: 118, baseType: !229, size: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSetPtr", file: !41, line: 82, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSet", file: !41, line: 81, baseType: !232)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNodeSet", file: !41, line: 83, size: 128, elements: !233)
!233 = !{!234, !235, !236}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !232, file: !41, line: 84, baseType: !80, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !232, file: !41, line: 85, baseType: !80, size: 32, offset: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !232, file: !41, line: 86, baseType: !237, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "boolval", scope: !224, file: !41, line: 119, baseType: !80, size: 32, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "floatval", scope: !224, file: !41, line: 120, baseType: !240, size: 64, offset: 192)
!240 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "stringval", scope: !224, file: !41, line: 121, baseType: !122, size: 64, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !224, file: !41, line: 122, baseType: !61, size: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !224, file: !41, line: 123, baseType: !80, size: 32, offset: 384)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "user2", scope: !224, file: !41, line: 124, baseType: !61, size: 64, offset: 448)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "index2", scope: !224, file: !41, line: 125, baseType: !80, size: 32, offset: 512)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "nb_funcs_unused", scope: !192, file: !41, line: 302, baseType: !80, size: 32, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "max_funcs_unused", scope: !192, file: !41, line: 303, baseType: !80, size: 32, offset: 416)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "funcHash", scope: !192, file: !41, line: 304, baseType: !202, size: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "nb_axis", scope: !192, file: !41, line: 306, baseType: !80, size: 32, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "max_axis", scope: !192, file: !41, line: 307, baseType: !80, size: 32, offset: 544)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "axis", scope: !192, file: !41, line: 308, baseType: !252, size: 64, offset: 576)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxisPtr", file: !41, line: 204, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxis", file: !41, line: 203, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathAxis", file: !41, line: 205, size: 128, elements: !256)
!256 = !{!257, !258}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !255, file: !41, line: 206, baseType: !62, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !255, file: !41, line: 207, baseType: !259, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxisFunc", file: !41, line: 196, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!221, !263, !221}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathParserContextPtr", file: !41, line: 42, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathParserContext", file: !41, line: 41, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathParserContext", file: !41, line: 377, size: 704, elements: !267)
!267 = !{!268, !269, !270, !271, !272, !273, !274, !275, !277, !282, !283, !284}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !266, file: !41, line: 378, baseType: !62, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !266, file: !41, line: 379, baseType: !62, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !266, file: !41, line: 381, baseType: !80, size: 32, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !266, file: !41, line: 383, baseType: !189, size: 64, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !266, file: !41, line: 384, baseType: !221, size: 64, offset: 256)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "valueNr", scope: !266, file: !41, line: 385, baseType: !80, size: 32, offset: 320)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "valueMax", scope: !266, file: !41, line: 386, baseType: !80, size: 32, offset: 352)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "valueTab", scope: !266, file: !41, line: 387, baseType: !276, size: 64, offset: 384)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !266, file: !41, line: 389, baseType: !278, size: 64, offset: 448)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathCompExprPtr", file: !41, line: 369, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathCompExpr", file: !41, line: 368, baseType: !281)
!281 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathCompExpr", file: !41, line: 368, flags: DIFlagFwdDecl)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "xptr", scope: !266, file: !41, line: 390, baseType: !80, size: 32, offset: 512)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ancestor", scope: !266, file: !41, line: 391, baseType: !196, size: 64, offset: 576)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "valueFrame", scope: !266, file: !41, line: 393, baseType: !80, size: 32, offset: 640)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !192, file: !41, line: 311, baseType: !286, size: 64, offset: 640)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !4, line: 387, baseType: !109)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "nsNr", scope: !192, file: !41, line: 312, baseType: !80, size: 32, offset: 704)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !192, file: !41, line: 313, baseType: !61, size: 64, offset: 768)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "contextSize", scope: !192, file: !41, line: 316, baseType: !80, size: 32, offset: 832)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "proximityPosition", scope: !192, file: !41, line: 317, baseType: !80, size: 32, offset: 864)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "xptr", scope: !192, file: !41, line: 320, baseType: !80, size: 32, offset: 896)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "here", scope: !192, file: !41, line: 321, baseType: !196, size: 64, offset: 960)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !192, file: !41, line: 322, baseType: !196, size: 64, offset: 1024)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "nsHash", scope: !192, file: !41, line: 325, baseType: !202, size: 64, offset: 1088)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "varLookupFunc", scope: !192, file: !41, line: 326, baseType: !297, size: 64, offset: 1152)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathVariableLookupFunc", file: !41, line: 237, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!221, !61, !62, !62}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "varLookupData", scope: !192, file: !41, line: 327, baseType: !61, size: 64, offset: 1216)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !192, file: !41, line: 330, baseType: !61, size: 64, offset: 1280)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !192, file: !41, line: 333, baseType: !62, size: 64, offset: 1344)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "functionURI", scope: !192, file: !41, line: 334, baseType: !62, size: 64, offset: 1408)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "funcLookupFunc", scope: !192, file: !41, line: 337, baseType: !306, size: 64, offset: 1472)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathFuncLookupFunc", file: !41, line: 252, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!310, !61, !62, !62}
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathFunction", file: !41, line: 220, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !263, !80}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "funcLookupData", scope: !192, file: !41, line: 338, baseType: !61, size: 64, offset: 1536)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tmpNsList", scope: !192, file: !41, line: 341, baseType: !286, size: 64, offset: 1600)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tmpNsNr", scope: !192, file: !41, line: 342, baseType: !80, size: 32, offset: 1664)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !192, file: !41, line: 345, baseType: !61, size: 64, offset: 1728)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !192, file: !41, line: 346, baseType: !319, size: 64, offset: 1792)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStructuredErrorFunc", file: !54, line: 856, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !61, !323}
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorPtr", file: !54, line: 77, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlError", file: !54, line: 76, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlError", file: !54, line: 78, size: 704, elements: !327)
!327 = !{!328, !329, !330, !331, !333, !334, !335, !336, !337, !338, !339, !340, !341}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !326, file: !54, line: 79, baseType: !80, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !326, file: !54, line: 80, baseType: !80, size: 32, offset: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !326, file: !54, line: 81, baseType: !92, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !326, file: !54, line: 82, baseType: !332, size: 32, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorLevel", file: !54, line: 29, baseType: !53)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !326, file: !54, line: 83, baseType: !92, size: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !326, file: !54, line: 84, baseType: !80, size: 32, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "str1", scope: !326, file: !54, line: 85, baseType: !92, size: 64, offset: 320)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "str2", scope: !326, file: !54, line: 86, baseType: !92, size: 64, offset: 384)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "str3", scope: !326, file: !54, line: 87, baseType: !92, size: 64, offset: 448)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "int1", scope: !326, file: !54, line: 88, baseType: !80, size: 32, offset: 512)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "int2", scope: !326, file: !54, line: 89, baseType: !80, size: 32, offset: 544)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "ctxt", scope: !326, file: !54, line: 90, baseType: !61, size: 64, offset: 576)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !326, file: !54, line: 91, baseType: !61, size: 64, offset: 640)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "lastError", scope: !192, file: !41, line: 347, baseType: !325, size: 704, offset: 1856)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "debugNode", scope: !192, file: !41, line: 348, baseType: !196, size: 64, offset: 2560)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !192, file: !41, line: 351, baseType: !345, size: 64, offset: 2624)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !183, line: 25, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !183, line: 24, baseType: !182)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !192, file: !41, line: 353, baseType: !80, size: 32, offset: 2688)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !192, file: !41, line: 356, baseType: !61, size: 64, offset: 2752)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "opLimit", scope: !192, file: !41, line: 359, baseType: !351, size: 64, offset: 2816)
!351 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "opCount", scope: !192, file: !41, line: 360, baseType: !351, size: 64, offset: 2880)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !192, file: !41, line: 361, baseType: !80, size: 32, offset: 2944)
!354 = !DILocation(line: 9, column: 24, scope: !77)
!355 = !DILocalVariable(name: "obj1", scope: !77, file: !1, line: 10, type: !221)
!356 = !DILocation(line: 10, column: 23, scope: !77)
!357 = !DILocalVariable(name: "obj2", scope: !77, file: !1, line: 10, type: !221)
!358 = !DILocation(line: 10, column: 29, scope: !77)
!359 = !DILocalVariable(name: "node1", scope: !77, file: !1, line: 11, type: !196)
!360 = !DILocation(line: 11, column: 16, scope: !77)
!361 = !DILocalVariable(name: "node2", scope: !77, file: !1, line: 11, type: !196)
!362 = !DILocation(line: 11, column: 23, scope: !77)
!363 = !DILocalVariable(name: "buffer", scope: !77, file: !1, line: 12, type: !364)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 2048, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 256)
!367 = !DILocation(line: 12, column: 13, scope: !77)
!368 = !DILocalVariable(name: "buffersize", scope: !77, file: !1, line: 13, type: !80)
!369 = !DILocation(line: 13, column: 9, scope: !77)
!370 = !DILocalVariable(name: "size", scope: !77, file: !1, line: 14, type: !80)
!371 = !DILocation(line: 14, column: 9, scope: !77)
!372 = !DILocalVariable(name: "work", scope: !77, file: !1, line: 15, type: !373)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 2048, elements: !365)
!374 = !DILocation(line: 15, column: 10, scope: !77)
!375 = !DILocation(line: 18, column: 5, scope: !77)
!376 = !DILocation(line: 19, column: 5, scope: !77)
!377 = !DILocalVariable(name: "xml_content", scope: !77, file: !1, line: 22, type: !378)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!380 = !DILocation(line: 22, column: 17, scope: !77)
!381 = !DILocation(line: 23, column: 25, scope: !77)
!382 = !DILocation(line: 23, column: 45, scope: !77)
!383 = !DILocation(line: 23, column: 38, scope: !77)
!384 = !DILocation(line: 23, column: 11, scope: !77)
!385 = !DILocation(line: 23, column: 9, scope: !77)
!386 = !DILocation(line: 24, column: 9, scope: !387)
!387 = distinct !DILexicalBlock(scope: !77, file: !1, line: 24, column: 9)
!388 = !DILocation(line: 24, column: 13, scope: !387)
!389 = !DILocation(line: 24, column: 9, scope: !77)
!390 = !DILocation(line: 25, column: 9, scope: !391)
!391 = distinct !DILexicalBlock(scope: !387, file: !1, line: 24, column: 22)
!392 = !DILocation(line: 29, column: 30, scope: !77)
!393 = !DILocation(line: 29, column: 11, scope: !77)
!394 = !DILocation(line: 29, column: 9, scope: !77)
!395 = !DILocation(line: 30, column: 9, scope: !396)
!396 = distinct !DILexicalBlock(scope: !77, file: !1, line: 30, column: 9)
!397 = !DILocation(line: 30, column: 13, scope: !396)
!398 = !DILocation(line: 30, column: 9, scope: !77)
!399 = !DILocation(line: 31, column: 20, scope: !400)
!400 = distinct !DILexicalBlock(scope: !396, file: !1, line: 30, column: 22)
!401 = !DILocation(line: 31, column: 9, scope: !400)
!402 = !DILocation(line: 32, column: 9, scope: !400)
!403 = !DILocation(line: 36, column: 58, scope: !77)
!404 = !DILocation(line: 36, column: 12, scope: !77)
!405 = !DILocation(line: 36, column: 10, scope: !77)
!406 = !DILocation(line: 37, column: 58, scope: !77)
!407 = !DILocation(line: 37, column: 12, scope: !77)
!408 = !DILocation(line: 37, column: 10, scope: !77)
!409 = !DILocation(line: 38, column: 9, scope: !410)
!410 = distinct !DILexicalBlock(scope: !77, file: !1, line: 38, column: 9)
!411 = !DILocation(line: 38, column: 14, scope: !410)
!412 = !DILocation(line: 38, column: 22, scope: !410)
!413 = !DILocation(line: 38, column: 25, scope: !410)
!414 = !DILocation(line: 38, column: 30, scope: !410)
!415 = !DILocation(line: 38, column: 38, scope: !410)
!416 = !DILocation(line: 38, column: 41, scope: !410)
!417 = !DILocation(line: 38, column: 47, scope: !410)
!418 = !DILocation(line: 38, column: 52, scope: !410)
!419 = !DILocation(line: 38, column: 69, scope: !410)
!420 = !DILocation(line: 38, column: 72, scope: !410)
!421 = !DILocation(line: 38, column: 78, scope: !410)
!422 = !DILocation(line: 38, column: 83, scope: !410)
!423 = !DILocation(line: 38, column: 100, scope: !410)
!424 = !DILocation(line: 39, column: 9, scope: !410)
!425 = !DILocation(line: 39, column: 15, scope: !410)
!426 = !DILocation(line: 39, column: 26, scope: !410)
!427 = !DILocation(line: 39, column: 34, scope: !410)
!428 = !DILocation(line: 39, column: 37, scope: !410)
!429 = !DILocation(line: 39, column: 43, scope: !410)
!430 = !DILocation(line: 39, column: 54, scope: !410)
!431 = !DILocation(line: 39, column: 62, scope: !410)
!432 = !DILocation(line: 40, column: 9, scope: !410)
!433 = !DILocation(line: 40, column: 15, scope: !410)
!434 = !DILocation(line: 40, column: 27, scope: !410)
!435 = !DILocation(line: 40, column: 34, scope: !410)
!436 = !DILocation(line: 40, column: 39, scope: !410)
!437 = !DILocation(line: 40, column: 42, scope: !410)
!438 = !DILocation(line: 40, column: 48, scope: !410)
!439 = !DILocation(line: 40, column: 60, scope: !410)
!440 = !DILocation(line: 40, column: 67, scope: !410)
!441 = !DILocation(line: 38, column: 9, scope: !77)
!442 = !DILocation(line: 41, column: 28, scope: !443)
!443 = distinct !DILexicalBlock(scope: !410, file: !1, line: 40, column: 73)
!444 = !DILocation(line: 41, column: 9, scope: !443)
!445 = !DILocation(line: 42, column: 28, scope: !443)
!446 = !DILocation(line: 42, column: 9, scope: !443)
!447 = !DILocation(line: 43, column: 29, scope: !443)
!448 = !DILocation(line: 43, column: 9, scope: !443)
!449 = !DILocation(line: 44, column: 20, scope: !443)
!450 = !DILocation(line: 44, column: 9, scope: !443)
!451 = !DILocation(line: 45, column: 9, scope: !443)
!452 = !DILocation(line: 48, column: 13, scope: !77)
!453 = !DILocation(line: 48, column: 19, scope: !77)
!454 = !DILocation(line: 48, column: 31, scope: !77)
!455 = !DILocation(line: 48, column: 11, scope: !77)
!456 = !DILocation(line: 49, column: 13, scope: !77)
!457 = !DILocation(line: 49, column: 19, scope: !77)
!458 = !DILocation(line: 49, column: 31, scope: !77)
!459 = !DILocation(line: 49, column: 11, scope: !77)
!460 = !DILocation(line: 52, column: 24, scope: !77)
!461 = !DILocation(line: 52, column: 5, scope: !77)
!462 = !DILocation(line: 54, column: 17, scope: !77)
!463 = !DILocation(line: 54, column: 28, scope: !77)
!464 = !DILocation(line: 54, column: 5, scope: !77)
!465 = !DILocation(line: 55, column: 17, scope: !77)
!466 = !DILocation(line: 55, column: 28, scope: !77)
!467 = !DILocation(line: 55, column: 5, scope: !77)
!468 = !DILocation(line: 58, column: 24, scope: !77)
!469 = !DILocation(line: 58, column: 5, scope: !77)
!470 = !DILocation(line: 60, column: 5, scope: !77)
!471 = !DILocation(line: 60, column: 15, scope: !77)
!472 = !DILocation(line: 63, column: 19, scope: !77)
!473 = !DILocation(line: 63, column: 12, scope: !77)
!474 = !DILocation(line: 63, column: 25, scope: !77)
!475 = !DILocation(line: 63, column: 10, scope: !77)
!476 = !DILocation(line: 64, column: 9, scope: !477)
!477 = distinct !DILexicalBlock(scope: !77, file: !1, line: 64, column: 9)
!478 = !DILocation(line: 64, column: 16, scope: !477)
!479 = !DILocation(line: 64, column: 14, scope: !477)
!480 = !DILocation(line: 64, column: 9, scope: !77)
!481 = !DILocation(line: 65, column: 14, scope: !482)
!482 = distinct !DILexicalBlock(scope: !477, file: !1, line: 64, column: 28)
!483 = !DILocation(line: 65, column: 25, scope: !482)
!484 = !DILocation(line: 65, column: 9, scope: !482)
!485 = !DILocation(line: 65, column: 30, scope: !482)
!486 = !DILocation(line: 66, column: 16, scope: !482)
!487 = !DILocation(line: 66, column: 14, scope: !482)
!488 = !DILocation(line: 67, column: 5, scope: !482)
!489 = !DILocation(line: 70, column: 5, scope: !77)
!490 = !DILocation(line: 73, column: 5, scope: !77)
!491 = !DILocation(line: 73, column: 27, scope: !77)
!492 = !DILocation(line: 76, column: 24, scope: !77)
!493 = !DILocation(line: 76, column: 5, scope: !77)
!494 = !DILocation(line: 77, column: 24, scope: !77)
!495 = !DILocation(line: 77, column: 5, scope: !77)
!496 = !DILocation(line: 78, column: 25, scope: !77)
!497 = !DILocation(line: 78, column: 5, scope: !77)
!498 = !DILocation(line: 79, column: 16, scope: !77)
!499 = !DILocation(line: 79, column: 5, scope: !77)
!500 = !DILocation(line: 80, column: 5, scope: !77)
!501 = !DILocation(line: 82, column: 5, scope: !77)
!502 = !DILocation(line: 83, column: 1, scope: !77)
!503 = distinct !DISubprogram(name: "memmove", scope: !504, file: !504, line: 12, type: !505, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !81)
!504 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!505 = !DISubroutineType(types: !506)
!506 = !{!61, !61, !507, !509}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !510, line: 46, baseType: !351)
!510 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!511 = !DILocalVariable(name: "dst", arg: 1, scope: !503, file: !504, line: 12, type: !61)
!512 = !DILocation(line: 12, column: 21, scope: !503)
!513 = !DILocalVariable(name: "src", arg: 2, scope: !503, file: !504, line: 12, type: !507)
!514 = !DILocation(line: 12, column: 38, scope: !503)
!515 = !DILocalVariable(name: "count", arg: 3, scope: !503, file: !504, line: 12, type: !509)
!516 = !DILocation(line: 12, column: 50, scope: !503)
!517 = !DILocalVariable(name: "a", scope: !503, file: !504, line: 13, type: !92)
!518 = !DILocation(line: 13, column: 9, scope: !503)
!519 = !DILocation(line: 13, column: 13, scope: !503)
!520 = !DILocalVariable(name: "b", scope: !503, file: !504, line: 14, type: !378)
!521 = !DILocation(line: 14, column: 15, scope: !503)
!522 = !DILocation(line: 14, column: 19, scope: !503)
!523 = !DILocation(line: 16, column: 7, scope: !524)
!524 = distinct !DILexicalBlock(scope: !503, file: !504, line: 16, column: 7)
!525 = !DILocation(line: 16, column: 14, scope: !524)
!526 = !DILocation(line: 16, column: 11, scope: !524)
!527 = !DILocation(line: 16, column: 7, scope: !503)
!528 = !DILocation(line: 17, column: 12, scope: !524)
!529 = !DILocation(line: 17, column: 5, scope: !524)
!530 = !DILocation(line: 19, column: 7, scope: !531)
!531 = distinct !DILexicalBlock(scope: !503, file: !504, line: 19, column: 7)
!532 = !DILocation(line: 19, column: 13, scope: !531)
!533 = !DILocation(line: 19, column: 11, scope: !531)
!534 = !DILocation(line: 19, column: 7, scope: !503)
!535 = !DILocation(line: 20, column: 17, scope: !536)
!536 = distinct !DILexicalBlock(scope: !531, file: !504, line: 19, column: 18)
!537 = !DILocation(line: 20, column: 5, scope: !536)
!538 = !DILocation(line: 21, column: 16, scope: !536)
!539 = !DILocation(line: 21, column: 14, scope: !536)
!540 = !DILocation(line: 21, column: 9, scope: !536)
!541 = !DILocation(line: 21, column: 12, scope: !536)
!542 = distinct !{!542, !537, !538, !543}
!543 = !{!"llvm.loop.mustprogress"}
!544 = !DILocation(line: 23, column: 10, scope: !545)
!545 = distinct !DILexicalBlock(scope: !531, file: !504, line: 22, column: 10)
!546 = !DILocation(line: 23, column: 16, scope: !545)
!547 = !DILocation(line: 23, column: 7, scope: !545)
!548 = !DILocation(line: 24, column: 10, scope: !545)
!549 = !DILocation(line: 24, column: 16, scope: !545)
!550 = !DILocation(line: 24, column: 7, scope: !545)
!551 = !DILocation(line: 25, column: 5, scope: !545)
!552 = !DILocation(line: 25, column: 17, scope: !545)
!553 = !DILocation(line: 26, column: 16, scope: !545)
!554 = !DILocation(line: 26, column: 14, scope: !545)
!555 = !DILocation(line: 26, column: 9, scope: !545)
!556 = !DILocation(line: 26, column: 12, scope: !545)
!557 = distinct !{!557, !551, !553, !543}
!558 = !DILocation(line: 29, column: 10, scope: !503)
!559 = !DILocation(line: 29, column: 3, scope: !503)
!560 = !DILocation(line: 30, column: 1, scope: !503)

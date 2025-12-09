; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/340_xpath.c_6225_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/340_xpath.c_6225_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
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

@.str = private unnamed_addr constant [26 x i8] c"<root><a/><b/><c/></root>\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"noname.xml\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"//*\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ns1_nodeNr\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"ns2_nodeNr\00", align 1
@xmlMalloc = external global i8* (i64)*, align 8
@xmlFree = external global void (i8*)*, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/340_xpath.c_6225_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !78 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca %struct._xmlXPathContext*, align 8
  %4 = alloca %struct._xmlXPathObject*, align 8
  %5 = alloca %struct._xmlXPathObject*, align 8
  %6 = alloca %struct._xmlNodeSet*, align 8
  %7 = alloca %struct._xmlNodeSet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !83, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.declare(metadata %struct._xmlXPathContext** %3, metadata !190, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %4, metadata !357, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %5, metadata !359, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.declare(metadata %struct._xmlNodeSet** %6, metadata !361, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.declare(metadata %struct._xmlNodeSet** %7, metadata !363, metadata !DIExpression()), !dbg !364
  %12 = call %struct._xmlDoc* @xmlReadMemory(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 27, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* noundef null, i32 noundef 0), !dbg !365
  store %struct._xmlDoc* %12, %struct._xmlDoc** %2, align 8, !dbg !366
  %13 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !367
  %14 = icmp eq %struct._xmlDoc* %13, null, !dbg !369
  br i1 %14, label %15, label %16, !dbg !370

15:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !371
  br label %135, !dbg !371

16:                                               ; preds = %0
  %17 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !372
  %18 = call %struct._xmlXPathContext* @xmlXPathNewContext(%struct._xmlDoc* noundef %17), !dbg !373
  store %struct._xmlXPathContext* %18, %struct._xmlXPathContext** %3, align 8, !dbg !374
  %19 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %3, align 8, !dbg !375
  %20 = icmp eq %struct._xmlXPathContext* %19, null, !dbg !377
  br i1 %20, label %21, label %23, !dbg !378

21:                                               ; preds = %16
  %22 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !379
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %22), !dbg !381
  store i32 1, i32* %1, align 4, !dbg !382
  br label %135, !dbg !382

23:                                               ; preds = %16
  %24 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %3, align 8, !dbg !383
  %25 = call %struct._xmlXPathObject* @xmlXPathEvalExpression(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %struct._xmlXPathContext* noundef %24), !dbg !384
  store %struct._xmlXPathObject* %25, %struct._xmlXPathObject** %4, align 8, !dbg !385
  %26 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !386
  %27 = icmp eq %struct._xmlXPathObject* %26, null, !dbg !388
  br i1 %27, label %38, label %28, !dbg !389

28:                                               ; preds = %23
  %29 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !390
  %30 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %29, i32 0, i32 0, !dbg !391
  %31 = load i32, i32* %30, align 8, !dbg !391
  %32 = icmp ne i32 %31, 1, !dbg !392
  br i1 %32, label %38, label %33, !dbg !393

33:                                               ; preds = %28
  %34 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !394
  %35 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %34, i32 0, i32 1, !dbg !395
  %36 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %35, align 8, !dbg !395
  %37 = icmp eq %struct._xmlNodeSet* %36, null, !dbg !396
  br i1 %37, label %38, label %41, !dbg !397

38:                                               ; preds = %33, %28, %23
  %39 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %3, align 8, !dbg !398
  call void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef %39), !dbg !400
  %40 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !401
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %40), !dbg !402
  store i32 1, i32* %1, align 4, !dbg !403
  br label %135, !dbg !403

41:                                               ; preds = %33
  %42 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !404
  %43 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %42, i32 0, i32 1, !dbg !405
  %44 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %43, align 8, !dbg !405
  store %struct._xmlNodeSet* %44, %struct._xmlNodeSet** %6, align 8, !dbg !406
  %45 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %3, align 8, !dbg !407
  %46 = call %struct._xmlXPathObject* @xmlXPathEvalExpression(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %struct._xmlXPathContext* noundef %45), !dbg !408
  store %struct._xmlXPathObject* %46, %struct._xmlXPathObject** %5, align 8, !dbg !409
  %47 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %5, align 8, !dbg !410
  %48 = icmp eq %struct._xmlXPathObject* %47, null, !dbg !412
  br i1 %48, label %59, label %49, !dbg !413

49:                                               ; preds = %41
  %50 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %5, align 8, !dbg !414
  %51 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %50, i32 0, i32 0, !dbg !415
  %52 = load i32, i32* %51, align 8, !dbg !415
  %53 = icmp ne i32 %52, 1, !dbg !416
  br i1 %53, label %59, label %54, !dbg !417

54:                                               ; preds = %49
  %55 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %5, align 8, !dbg !418
  %56 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %55, i32 0, i32 1, !dbg !419
  %57 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %56, align 8, !dbg !419
  %58 = icmp eq %struct._xmlNodeSet* %57, null, !dbg !420
  br i1 %58, label %59, label %63, !dbg !421

59:                                               ; preds = %54, %49, %41
  %60 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !422
  call void @xmlXPathFreeObject(%struct._xmlXPathObject* noundef %60), !dbg !424
  %61 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %3, align 8, !dbg !425
  call void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef %61), !dbg !426
  %62 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !427
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %62), !dbg !428
  store i32 1, i32* %1, align 4, !dbg !429
  br label %135, !dbg !429

63:                                               ; preds = %54
  %64 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %5, align 8, !dbg !430
  %65 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %64, i32 0, i32 1, !dbg !431
  %66 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %65, align 8, !dbg !431
  store %struct._xmlNodeSet* %66, %struct._xmlNodeSet** %7, align 8, !dbg !432
  call void @llvm.dbg.declare(metadata i32* %8, metadata !433, metadata !DIExpression()), !dbg !434
  %67 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %6, align 8, !dbg !435
  %68 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %67, i32 0, i32 0, !dbg !436
  %69 = load i32, i32* %68, align 8, !dbg !436
  store i32 %69, i32* %8, align 4, !dbg !434
  call void @llvm.dbg.declare(metadata i32* %9, metadata !437, metadata !DIExpression()), !dbg !438
  %70 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %7, align 8, !dbg !439
  %71 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %70, i32 0, i32 0, !dbg !440
  %72 = load i32, i32* %71, align 8, !dbg !440
  store i32 %72, i32* %9, align 4, !dbg !438
  %73 = bitcast i32* %8 to i8*, !dbg !441
  call void @klee_make_symbolic(i8* noundef %73, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)), !dbg !442
  %74 = bitcast i32* %9 to i8*, !dbg !443
  call void @klee_make_symbolic(i8* noundef %74, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)), !dbg !444
  %75 = load i32, i32* %8, align 4, !dbg !445
  %76 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %6, align 8, !dbg !446
  %77 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %76, i32 0, i32 0, !dbg !447
  store i32 %75, i32* %77, align 8, !dbg !448
  %78 = load i32, i32* %9, align 4, !dbg !449
  %79 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %7, align 8, !dbg !450
  %80 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %79, i32 0, i32 0, !dbg !451
  store i32 %78, i32* %80, align 8, !dbg !452
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !453, metadata !DIExpression()), !dbg !454
  %81 = load i8* (i64)*, i8* (i64)** @xmlMalloc, align 8, !dbg !455
  %82 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %6, align 8, !dbg !456
  %83 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %82, i32 0, i32 0, !dbg !457
  %84 = load i32, i32* %83, align 8, !dbg !457
  %85 = sext i32 %84 to i64, !dbg !456
  %86 = mul i64 %85, 8, !dbg !458
  %87 = call i8* %81(i64 noundef %86), !dbg !455
  %88 = bitcast i8* %87 to i8**, !dbg !459
  store i8** %88, i8*** %10, align 8, !dbg !454
  %89 = load i8**, i8*** %10, align 8, !dbg !460
  %90 = icmp eq i8** %89, null, !dbg !462
  br i1 %90, label %91, label %96, !dbg !463

91:                                               ; preds = %63
  %92 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %5, align 8, !dbg !464
  call void @xmlXPathFreeObject(%struct._xmlXPathObject* noundef %92), !dbg !466
  %93 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !467
  call void @xmlXPathFreeObject(%struct._xmlXPathObject* noundef %93), !dbg !468
  %94 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %3, align 8, !dbg !469
  call void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef %94), !dbg !470
  %95 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !471
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %95), !dbg !472
  store i32 1, i32* %1, align 4, !dbg !473
  br label %135, !dbg !473

96:                                               ; preds = %63
  call void @llvm.dbg.declare(metadata i32** %11, metadata !474, metadata !DIExpression()), !dbg !475
  %97 = load i8* (i64)*, i8* (i64)** @xmlMalloc, align 8, !dbg !476
  %98 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %6, align 8, !dbg !477
  %99 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %98, i32 0, i32 0, !dbg !478
  %100 = load i32, i32* %99, align 8, !dbg !478
  %101 = sext i32 %100 to i64, !dbg !477
  %102 = mul i64 %101, 4, !dbg !479
  %103 = call i8* %97(i64 noundef %102), !dbg !476
  %104 = bitcast i8* %103 to i32*, !dbg !480
  store i32* %104, i32** %11, align 8, !dbg !475
  %105 = load i32*, i32** %11, align 8, !dbg !481
  %106 = icmp eq i32* %105, null, !dbg !483
  br i1 %106, label %107, label %115, !dbg !484

107:                                              ; preds = %96
  %108 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !485
  %109 = load i8**, i8*** %10, align 8, !dbg !487
  %110 = bitcast i8** %109 to i8*, !dbg !487
  call void %108(i8* noundef %110), !dbg !485
  %111 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %5, align 8, !dbg !488
  call void @xmlXPathFreeObject(%struct._xmlXPathObject* noundef %111), !dbg !489
  %112 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !490
  call void @xmlXPathFreeObject(%struct._xmlXPathObject* noundef %112), !dbg !491
  %113 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %3, align 8, !dbg !492
  call void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef %113), !dbg !493
  %114 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !494
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %114), !dbg !495
  store i32 1, i32* %1, align 4, !dbg !496
  br label %135, !dbg !496

115:                                              ; preds = %96
  %116 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.6, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !497
  %117 = load i8**, i8*** %10, align 8, !dbg !498
  %118 = bitcast i8** %117 to i8*, !dbg !499
  %119 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %6, align 8, !dbg !500
  %120 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %119, i32 0, i32 0, !dbg !501
  %121 = load i32, i32* %120, align 8, !dbg !501
  %122 = sext i32 %121 to i64, !dbg !500
  %123 = mul i64 %122, 8, !dbg !502
  %124 = call i8* @memset(i8* %118, i32 0, i64 %123), !dbg !499
  %125 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %5, align 8, !dbg !503
  call void @xmlXPathFreeObject(%struct._xmlXPathObject* noundef %125), !dbg !504
  %126 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !505
  call void @xmlXPathFreeObject(%struct._xmlXPathObject* noundef %126), !dbg !506
  %127 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %3, align 8, !dbg !507
  call void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef %127), !dbg !508
  %128 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !509
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %128), !dbg !510
  %129 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !511
  %130 = load i8**, i8*** %10, align 8, !dbg !512
  %131 = bitcast i8** %130 to i8*, !dbg !512
  call void %129(i8* noundef %131), !dbg !511
  %132 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !513
  %133 = load i32*, i32** %11, align 8, !dbg !514
  %134 = bitcast i32* %133 to i8*, !dbg !514
  call void %132(i8* noundef %134), !dbg !513
  store i32 0, i32* %1, align 4, !dbg !515
  br label %135, !dbg !515

135:                                              ; preds = %115, %107, %91, %59, %38, %21, %15
  %136 = load i32, i32* %1, align 4, !dbg !516
  ret i32 %136, !dbg !516
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._xmlDoc* @xmlReadMemory(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) #2

declare %struct._xmlXPathContext* @xmlXPathNewContext(%struct._xmlDoc* noundef) #2

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare %struct._xmlXPathObject* @xmlXPathEvalExpression(i8* noundef, %struct._xmlXPathContext* noundef) #2

declare void @xmlXPathFreeContext(%struct._xmlXPathContext* noundef) #2

declare void @xmlXPathFreeObject(%struct._xmlXPathObject* noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !517 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !523, metadata !DIExpression()), !dbg !524
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !525, metadata !DIExpression()), !dbg !526
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !527, metadata !DIExpression()), !dbg !528
  call void @llvm.dbg.declare(metadata i8** %7, metadata !529, metadata !DIExpression()), !dbg !530
  %8 = load i8*, i8** %4, align 8, !dbg !531
  store i8* %8, i8** %7, align 8, !dbg !530
  br label %9, !dbg !532

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !533
  %11 = add i64 %10, -1, !dbg !533
  store i64 %11, i64* %6, align 8, !dbg !533
  %12 = icmp ugt i64 %10, 0, !dbg !534
  br i1 %12, label %13, label %18, !dbg !532

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !535
  %15 = trunc i32 %14 to i8, !dbg !535
  %16 = load i8*, i8** %7, align 8, !dbg !536
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !536
  store i8* %17, i8** %7, align 8, !dbg !536
  store i8 %15, i8* %16, align 1, !dbg !537
  br label %9, !dbg !532, !llvm.loop !538

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !540
  ret i8* %19, !dbg !541
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77, !77}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !60, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/340_xpath.c_6225_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "3dc0ba087c8fb163b63ea4a64268340a")
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
!60 = !{!61, !62, !66, !67}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !64, line: 28, baseType: !65)
!64 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!65 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!68 = distinct !DICompileUnit(language: DW_LANG_C99, file: !69, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!69 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!70 = !{i32 7, !"Dwarf Version", i32 5}
!71 = !{i32 2, !"Debug Info Version", i32 3}
!72 = !{i32 1, !"wchar_size", i32 4}
!73 = !{i32 7, !"PIC Level", i32 2}
!74 = !{i32 7, !"PIE Level", i32 2}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"Ubuntu clang version 14.0.6"}
!78 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !79, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !82)
!79 = !DISubroutineType(types: !80)
!80 = !{!81}
!81 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!82 = !{}
!83 = !DILocalVariable(name: "doc", scope: !78, file: !1, line: 8, type: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !88)
!88 = !{!89, !90, !92, !95, !147, !148, !149, !150, !151, !152, !153, !154, !174, !175, !176, !177, !178, !179, !180, !181, !182, !186, !187, !188}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !87, file: !4, line: 560, baseType: !61, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !87, file: !4, line: 561, baseType: !91, size: 32, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !87, file: !4, line: 562, baseType: !93, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !87, file: !4, line: 563, baseType: !96, size: 64, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !98)
!98 = !{!99, !100, !101, !104, !105, !106, !107, !108, !109, !111, !124, !125, !142, !143, !144, !146}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !97, file: !4, line: 493, baseType: !61, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !97, file: !4, line: 494, baseType: !91, size: 32, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !97, file: !4, line: 495, baseType: !102, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !97, file: !4, line: 496, baseType: !96, size: 64, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !97, file: !4, line: 497, baseType: !96, size: 64, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !97, file: !4, line: 498, baseType: !96, size: 64, offset: 320)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !97, file: !4, line: 499, baseType: !96, size: 64, offset: 384)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !97, file: !4, line: 500, baseType: !96, size: 64, offset: 448)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !97, file: !4, line: 501, baseType: !110, size: 64, offset: 512)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !97, file: !4, line: 504, baseType: !112, size: 64, offset: 576)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !115)
!115 = !{!116, !118, !120, !121, !122, !123}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !114, file: !4, line: 389, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !114, file: !4, line: 390, baseType: !119, size: 32, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !91)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !114, file: !4, line: 391, baseType: !102, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !114, file: !4, line: 392, baseType: !102, size: 64, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !114, file: !4, line: 393, baseType: !61, size: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !114, file: !4, line: 394, baseType: !110, size: 64, offset: 320)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !97, file: !4, line: 505, baseType: !62, size: 64, offset: 640)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !97, file: !4, line: 506, baseType: !126, size: 64, offset: 704)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !128)
!128 = !{!129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !141}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !127, file: !4, line: 434, baseType: !61, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !127, file: !4, line: 435, baseType: !91, size: 32, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !127, file: !4, line: 436, baseType: !102, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !127, file: !4, line: 437, baseType: !96, size: 64, offset: 192)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !127, file: !4, line: 438, baseType: !96, size: 64, offset: 256)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !127, file: !4, line: 439, baseType: !96, size: 64, offset: 320)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !127, file: !4, line: 440, baseType: !126, size: 64, offset: 384)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !127, file: !4, line: 441, baseType: !126, size: 64, offset: 448)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !127, file: !4, line: 442, baseType: !110, size: 64, offset: 512)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !127, file: !4, line: 443, baseType: !112, size: 64, offset: 576)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !127, file: !4, line: 444, baseType: !140, size: 32, offset: 640)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !127, file: !4, line: 445, baseType: !61, size: 64, offset: 704)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !97, file: !4, line: 507, baseType: !112, size: 64, offset: 768)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !97, file: !4, line: 508, baseType: !61, size: 64, offset: 832)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !97, file: !4, line: 509, baseType: !145, size: 16, offset: 896)
!145 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !97, file: !4, line: 510, baseType: !145, size: 16, offset: 912)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !87, file: !4, line: 564, baseType: !96, size: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !87, file: !4, line: 565, baseType: !96, size: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !87, file: !4, line: 566, baseType: !96, size: 64, offset: 384)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !87, file: !4, line: 567, baseType: !96, size: 64, offset: 448)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !87, file: !4, line: 568, baseType: !110, size: 64, offset: 512)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !87, file: !4, line: 571, baseType: !81, size: 32, offset: 576)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !87, file: !4, line: 572, baseType: !81, size: 32, offset: 608)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !87, file: !4, line: 578, baseType: !155, size: 64, offset: 640)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !157)
!157 = !{!158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !156, file: !4, line: 406, baseType: !61, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !156, file: !4, line: 407, baseType: !91, size: 32, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !156, file: !4, line: 408, baseType: !102, size: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !156, file: !4, line: 409, baseType: !96, size: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !156, file: !4, line: 410, baseType: !96, size: 64, offset: 256)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !156, file: !4, line: 411, baseType: !110, size: 64, offset: 320)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !156, file: !4, line: 412, baseType: !96, size: 64, offset: 384)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !156, file: !4, line: 413, baseType: !96, size: 64, offset: 448)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !156, file: !4, line: 414, baseType: !110, size: 64, offset: 512)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !156, file: !4, line: 417, baseType: !61, size: 64, offset: 576)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !156, file: !4, line: 418, baseType: !61, size: 64, offset: 640)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !156, file: !4, line: 419, baseType: !61, size: 64, offset: 704)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !156, file: !4, line: 420, baseType: !61, size: 64, offset: 768)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !156, file: !4, line: 421, baseType: !102, size: 64, offset: 832)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !156, file: !4, line: 422, baseType: !102, size: 64, offset: 896)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !156, file: !4, line: 423, baseType: !61, size: 64, offset: 960)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !87, file: !4, line: 579, baseType: !155, size: 64, offset: 704)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !87, file: !4, line: 580, baseType: !117, size: 64, offset: 768)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !87, file: !4, line: 581, baseType: !102, size: 64, offset: 832)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !87, file: !4, line: 582, baseType: !102, size: 64, offset: 896)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !87, file: !4, line: 583, baseType: !61, size: 64, offset: 960)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !87, file: !4, line: 584, baseType: !61, size: 64, offset: 1024)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !87, file: !4, line: 585, baseType: !102, size: 64, offset: 1088)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !87, file: !4, line: 586, baseType: !81, size: 32, offset: 1152)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !87, file: !4, line: 588, baseType: !183, size: 64, offset: 1216)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !185, line: 24, flags: DIFlagFwdDecl)
!185 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!186 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !87, file: !4, line: 589, baseType: !61, size: 64, offset: 1280)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !87, file: !4, line: 590, baseType: !81, size: 32, offset: 1344)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !87, file: !4, line: 592, baseType: !81, size: 32, offset: 1376)
!189 = !DILocation(line: 8, column: 15, scope: !78)
!190 = !DILocalVariable(name: "ctx", scope: !78, file: !1, line: 9, type: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathContextPtr", file: !41, line: 40, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathContext", file: !41, line: 39, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathContext", file: !41, line: 290, size: 3008, elements: !195)
!195 = !{!196, !197, !201, !202, !203, !209, !210, !211, !248, !249, !250, !251, !252, !253, !287, !290, !291, !292, !293, !294, !295, !296, !297, !298, !303, !304, !305, !306, !307, !316, !317, !318, !319, !320, !344, !345, !346, !350, !351, !352, !354, !355}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !194, file: !41, line: 291, baseType: !84, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !194, file: !41, line: 292, baseType: !198, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !97)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "nb_variables_unused", scope: !194, file: !41, line: 294, baseType: !81, size: 32, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "max_variables_unused", scope: !194, file: !41, line: 295, baseType: !81, size: 32, offset: 160)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "varHash", scope: !194, file: !41, line: 296, baseType: !204, size: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !205, line: 22, baseType: !206)
!205 = !DIFile(filename: "/usr/include/libxml2/libxml/hash.h", directory: "", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !205, line: 21, baseType: !208)
!208 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !205, line: 21, flags: DIFlagFwdDecl)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "nb_types", scope: !194, file: !41, line: 298, baseType: !81, size: 32, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "max_types", scope: !194, file: !41, line: 299, baseType: !81, size: 32, offset: 288)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !194, file: !41, line: 300, baseType: !212, size: 64, offset: 320)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathTypePtr", file: !41, line: 145, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathType", file: !41, line: 144, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathType", file: !41, line: 146, size: 128, elements: !216)
!216 = !{!217, !218}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !215, file: !41, line: 147, baseType: !102, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !215, file: !41, line: 148, baseType: !219, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathConvertFunc", file: !41, line: 138, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!81, !223, !81}
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectPtr", file: !41, line: 115, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObject", file: !41, line: 114, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathObject", file: !41, line: 116, size: 576, elements: !227)
!227 = !{!228, !230, !240, !241, !243, !244, !245, !246, !247}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !226, file: !41, line: 117, baseType: !229, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectType", file: !41, line: 112, baseType: !40)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "nodesetval", scope: !226, file: !41, line: 118, baseType: !231, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSetPtr", file: !41, line: 82, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSet", file: !41, line: 81, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNodeSet", file: !41, line: 83, size: 128, elements: !235)
!235 = !{!236, !237, !238}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !234, file: !41, line: 84, baseType: !81, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !234, file: !41, line: 85, baseType: !81, size: 32, offset: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !234, file: !41, line: 86, baseType: !239, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "boolval", scope: !226, file: !41, line: 119, baseType: !81, size: 32, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "floatval", scope: !226, file: !41, line: 120, baseType: !242, size: 64, offset: 192)
!242 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "stringval", scope: !226, file: !41, line: 121, baseType: !62, size: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !226, file: !41, line: 122, baseType: !61, size: 64, offset: 320)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !226, file: !41, line: 123, baseType: !81, size: 32, offset: 384)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "user2", scope: !226, file: !41, line: 124, baseType: !61, size: 64, offset: 448)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "index2", scope: !226, file: !41, line: 125, baseType: !81, size: 32, offset: 512)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "nb_funcs_unused", scope: !194, file: !41, line: 302, baseType: !81, size: 32, offset: 384)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "max_funcs_unused", scope: !194, file: !41, line: 303, baseType: !81, size: 32, offset: 416)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "funcHash", scope: !194, file: !41, line: 304, baseType: !204, size: 64, offset: 448)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "nb_axis", scope: !194, file: !41, line: 306, baseType: !81, size: 32, offset: 512)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "max_axis", scope: !194, file: !41, line: 307, baseType: !81, size: 32, offset: 544)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "axis", scope: !194, file: !41, line: 308, baseType: !254, size: 64, offset: 576)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxisPtr", file: !41, line: 204, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxis", file: !41, line: 203, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathAxis", file: !41, line: 205, size: 128, elements: !258)
!258 = !{!259, !260}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !257, file: !41, line: 206, baseType: !102, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !257, file: !41, line: 207, baseType: !261, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathAxisFunc", file: !41, line: 196, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!223, !265, !223}
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathParserContextPtr", file: !41, line: 42, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathParserContext", file: !41, line: 41, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathParserContext", file: !41, line: 377, size: 704, elements: !269)
!269 = !{!270, !271, !272, !273, !274, !275, !276, !277, !279, !284, !285, !286}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !268, file: !41, line: 378, baseType: !102, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !268, file: !41, line: 379, baseType: !102, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !268, file: !41, line: 381, baseType: !81, size: 32, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !268, file: !41, line: 383, baseType: !191, size: 64, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !268, file: !41, line: 384, baseType: !223, size: 64, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "valueNr", scope: !268, file: !41, line: 385, baseType: !81, size: 32, offset: 320)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "valueMax", scope: !268, file: !41, line: 386, baseType: !81, size: 32, offset: 352)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "valueTab", scope: !268, file: !41, line: 387, baseType: !278, size: 64, offset: 384)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !268, file: !41, line: 389, baseType: !280, size: 64, offset: 448)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathCompExprPtr", file: !41, line: 369, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathCompExpr", file: !41, line: 368, baseType: !283)
!283 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathCompExpr", file: !41, line: 368, flags: DIFlagFwdDecl)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "xptr", scope: !268, file: !41, line: 390, baseType: !81, size: 32, offset: 512)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "ancestor", scope: !268, file: !41, line: 391, baseType: !198, size: 64, offset: 576)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "valueFrame", scope: !268, file: !41, line: 393, baseType: !81, size: 32, offset: 640)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !194, file: !41, line: 311, baseType: !288, size: 64, offset: 640)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !4, line: 387, baseType: !112)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "nsNr", scope: !194, file: !41, line: 312, baseType: !81, size: 32, offset: 704)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !194, file: !41, line: 313, baseType: !61, size: 64, offset: 768)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "contextSize", scope: !194, file: !41, line: 316, baseType: !81, size: 32, offset: 832)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "proximityPosition", scope: !194, file: !41, line: 317, baseType: !81, size: 32, offset: 864)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "xptr", scope: !194, file: !41, line: 320, baseType: !81, size: 32, offset: 896)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "here", scope: !194, file: !41, line: 321, baseType: !198, size: 64, offset: 960)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !194, file: !41, line: 322, baseType: !198, size: 64, offset: 1024)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "nsHash", scope: !194, file: !41, line: 325, baseType: !204, size: 64, offset: 1088)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "varLookupFunc", scope: !194, file: !41, line: 326, baseType: !299, size: 64, offset: 1152)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathVariableLookupFunc", file: !41, line: 237, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!223, !61, !102, !102}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "varLookupData", scope: !194, file: !41, line: 327, baseType: !61, size: 64, offset: 1216)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !194, file: !41, line: 330, baseType: !61, size: 64, offset: 1280)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !194, file: !41, line: 333, baseType: !102, size: 64, offset: 1344)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "functionURI", scope: !194, file: !41, line: 334, baseType: !102, size: 64, offset: 1408)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "funcLookupFunc", scope: !194, file: !41, line: 337, baseType: !308, size: 64, offset: 1472)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathFuncLookupFunc", file: !41, line: 252, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!312, !61, !102, !102}
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathFunction", file: !41, line: 220, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !265, !81}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "funcLookupData", scope: !194, file: !41, line: 338, baseType: !61, size: 64, offset: 1536)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tmpNsList", scope: !194, file: !41, line: 341, baseType: !288, size: 64, offset: 1600)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tmpNsNr", scope: !194, file: !41, line: 342, baseType: !81, size: 32, offset: 1664)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !194, file: !41, line: 345, baseType: !61, size: 64, offset: 1728)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !194, file: !41, line: 346, baseType: !321, size: 64, offset: 1792)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStructuredErrorFunc", file: !54, line: 856, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !61, !325}
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorPtr", file: !54, line: 77, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlError", file: !54, line: 76, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlError", file: !54, line: 78, size: 704, elements: !329)
!329 = !{!330, !331, !332, !333, !335, !336, !337, !338, !339, !340, !341, !342, !343}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !328, file: !54, line: 79, baseType: !81, size: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !328, file: !54, line: 80, baseType: !81, size: 32, offset: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !328, file: !54, line: 81, baseType: !93, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !328, file: !54, line: 82, baseType: !334, size: 32, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorLevel", file: !54, line: 29, baseType: !53)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !328, file: !54, line: 83, baseType: !93, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !328, file: !54, line: 84, baseType: !81, size: 32, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "str1", scope: !328, file: !54, line: 85, baseType: !93, size: 64, offset: 320)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "str2", scope: !328, file: !54, line: 86, baseType: !93, size: 64, offset: 384)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "str3", scope: !328, file: !54, line: 87, baseType: !93, size: 64, offset: 448)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "int1", scope: !328, file: !54, line: 88, baseType: !81, size: 32, offset: 512)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "int2", scope: !328, file: !54, line: 89, baseType: !81, size: 32, offset: 544)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "ctxt", scope: !328, file: !54, line: 90, baseType: !61, size: 64, offset: 576)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !328, file: !54, line: 91, baseType: !61, size: 64, offset: 640)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "lastError", scope: !194, file: !41, line: 347, baseType: !327, size: 704, offset: 1856)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "debugNode", scope: !194, file: !41, line: 348, baseType: !198, size: 64, offset: 2560)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !194, file: !41, line: 351, baseType: !347, size: 64, offset: 2624)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !185, line: 25, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !185, line: 24, baseType: !184)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !194, file: !41, line: 353, baseType: !81, size: 32, offset: 2688)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !194, file: !41, line: 356, baseType: !61, size: 64, offset: 2752)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "opLimit", scope: !194, file: !41, line: 359, baseType: !353, size: 64, offset: 2816)
!353 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "opCount", scope: !194, file: !41, line: 360, baseType: !353, size: 64, offset: 2880)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !194, file: !41, line: 361, baseType: !81, size: 32, offset: 2944)
!356 = !DILocation(line: 9, column: 24, scope: !78)
!357 = !DILocalVariable(name: "obj1", scope: !78, file: !1, line: 10, type: !223)
!358 = !DILocation(line: 10, column: 23, scope: !78)
!359 = !DILocalVariable(name: "obj2", scope: !78, file: !1, line: 10, type: !223)
!360 = !DILocation(line: 10, column: 29, scope: !78)
!361 = !DILocalVariable(name: "ns1", scope: !78, file: !1, line: 11, type: !231)
!362 = !DILocation(line: 11, column: 19, scope: !78)
!363 = !DILocalVariable(name: "ns2", scope: !78, file: !1, line: 11, type: !231)
!364 = !DILocation(line: 11, column: 24, scope: !78)
!365 = !DILocation(line: 13, column: 11, scope: !78)
!366 = !DILocation(line: 13, column: 9, scope: !78)
!367 = !DILocation(line: 14, column: 9, scope: !368)
!368 = distinct !DILexicalBlock(scope: !78, file: !1, line: 14, column: 9)
!369 = !DILocation(line: 14, column: 13, scope: !368)
!370 = !DILocation(line: 14, column: 9, scope: !78)
!371 = !DILocation(line: 14, column: 22, scope: !368)
!372 = !DILocation(line: 16, column: 30, scope: !78)
!373 = !DILocation(line: 16, column: 11, scope: !78)
!374 = !DILocation(line: 16, column: 9, scope: !78)
!375 = !DILocation(line: 17, column: 9, scope: !376)
!376 = distinct !DILexicalBlock(scope: !78, file: !1, line: 17, column: 9)
!377 = !DILocation(line: 17, column: 13, scope: !376)
!378 = !DILocation(line: 17, column: 9, scope: !78)
!379 = !DILocation(line: 18, column: 20, scope: !380)
!380 = distinct !DILexicalBlock(scope: !376, file: !1, line: 17, column: 22)
!381 = !DILocation(line: 18, column: 9, scope: !380)
!382 = !DILocation(line: 19, column: 9, scope: !380)
!383 = !DILocation(line: 22, column: 52, scope: !78)
!384 = !DILocation(line: 22, column: 12, scope: !78)
!385 = !DILocation(line: 22, column: 10, scope: !78)
!386 = !DILocation(line: 23, column: 9, scope: !387)
!387 = distinct !DILexicalBlock(scope: !78, file: !1, line: 23, column: 9)
!388 = !DILocation(line: 23, column: 14, scope: !387)
!389 = !DILocation(line: 23, column: 22, scope: !387)
!390 = !DILocation(line: 23, column: 25, scope: !387)
!391 = !DILocation(line: 23, column: 31, scope: !387)
!392 = !DILocation(line: 23, column: 36, scope: !387)
!393 = !DILocation(line: 23, column: 53, scope: !387)
!394 = !DILocation(line: 23, column: 56, scope: !387)
!395 = !DILocation(line: 23, column: 62, scope: !387)
!396 = !DILocation(line: 23, column: 73, scope: !387)
!397 = !DILocation(line: 23, column: 9, scope: !78)
!398 = !DILocation(line: 24, column: 29, scope: !399)
!399 = distinct !DILexicalBlock(scope: !387, file: !1, line: 23, column: 82)
!400 = !DILocation(line: 24, column: 9, scope: !399)
!401 = !DILocation(line: 25, column: 20, scope: !399)
!402 = !DILocation(line: 25, column: 9, scope: !399)
!403 = !DILocation(line: 26, column: 9, scope: !399)
!404 = !DILocation(line: 28, column: 11, scope: !78)
!405 = !DILocation(line: 28, column: 17, scope: !78)
!406 = !DILocation(line: 28, column: 9, scope: !78)
!407 = !DILocation(line: 30, column: 52, scope: !78)
!408 = !DILocation(line: 30, column: 12, scope: !78)
!409 = !DILocation(line: 30, column: 10, scope: !78)
!410 = !DILocation(line: 31, column: 9, scope: !411)
!411 = distinct !DILexicalBlock(scope: !78, file: !1, line: 31, column: 9)
!412 = !DILocation(line: 31, column: 14, scope: !411)
!413 = !DILocation(line: 31, column: 22, scope: !411)
!414 = !DILocation(line: 31, column: 25, scope: !411)
!415 = !DILocation(line: 31, column: 31, scope: !411)
!416 = !DILocation(line: 31, column: 36, scope: !411)
!417 = !DILocation(line: 31, column: 53, scope: !411)
!418 = !DILocation(line: 31, column: 56, scope: !411)
!419 = !DILocation(line: 31, column: 62, scope: !411)
!420 = !DILocation(line: 31, column: 73, scope: !411)
!421 = !DILocation(line: 31, column: 9, scope: !78)
!422 = !DILocation(line: 32, column: 28, scope: !423)
!423 = distinct !DILexicalBlock(scope: !411, file: !1, line: 31, column: 82)
!424 = !DILocation(line: 32, column: 9, scope: !423)
!425 = !DILocation(line: 33, column: 29, scope: !423)
!426 = !DILocation(line: 33, column: 9, scope: !423)
!427 = !DILocation(line: 34, column: 20, scope: !423)
!428 = !DILocation(line: 34, column: 9, scope: !423)
!429 = !DILocation(line: 35, column: 9, scope: !423)
!430 = !DILocation(line: 37, column: 11, scope: !78)
!431 = !DILocation(line: 37, column: 17, scope: !78)
!432 = !DILocation(line: 37, column: 9, scope: !78)
!433 = !DILocalVariable(name: "ns1_nodeNr", scope: !78, file: !1, line: 39, type: !81)
!434 = !DILocation(line: 39, column: 9, scope: !78)
!435 = !DILocation(line: 39, column: 22, scope: !78)
!436 = !DILocation(line: 39, column: 27, scope: !78)
!437 = !DILocalVariable(name: "ns2_nodeNr", scope: !78, file: !1, line: 40, type: !81)
!438 = !DILocation(line: 40, column: 9, scope: !78)
!439 = !DILocation(line: 40, column: 22, scope: !78)
!440 = !DILocation(line: 40, column: 27, scope: !78)
!441 = !DILocation(line: 42, column: 24, scope: !78)
!442 = !DILocation(line: 42, column: 5, scope: !78)
!443 = !DILocation(line: 43, column: 24, scope: !78)
!444 = !DILocation(line: 43, column: 5, scope: !78)
!445 = !DILocation(line: 45, column: 19, scope: !78)
!446 = !DILocation(line: 45, column: 5, scope: !78)
!447 = !DILocation(line: 45, column: 10, scope: !78)
!448 = !DILocation(line: 45, column: 17, scope: !78)
!449 = !DILocation(line: 46, column: 19, scope: !78)
!450 = !DILocation(line: 46, column: 5, scope: !78)
!451 = !DILocation(line: 46, column: 10, scope: !78)
!452 = !DILocation(line: 46, column: 17, scope: !78)
!453 = !DILocalVariable(name: "values1", scope: !78, file: !1, line: 48, type: !66)
!454 = !DILocation(line: 48, column: 15, scope: !78)
!455 = !DILocation(line: 48, column: 38, scope: !78)
!456 = !DILocation(line: 48, column: 48, scope: !78)
!457 = !DILocation(line: 48, column: 53, scope: !78)
!458 = !DILocation(line: 48, column: 60, scope: !78)
!459 = !DILocation(line: 48, column: 25, scope: !78)
!460 = !DILocation(line: 49, column: 9, scope: !461)
!461 = distinct !DILexicalBlock(scope: !78, file: !1, line: 49, column: 9)
!462 = !DILocation(line: 49, column: 17, scope: !461)
!463 = !DILocation(line: 49, column: 9, scope: !78)
!464 = !DILocation(line: 50, column: 28, scope: !465)
!465 = distinct !DILexicalBlock(scope: !461, file: !1, line: 49, column: 26)
!466 = !DILocation(line: 50, column: 9, scope: !465)
!467 = !DILocation(line: 51, column: 28, scope: !465)
!468 = !DILocation(line: 51, column: 9, scope: !465)
!469 = !DILocation(line: 52, column: 29, scope: !465)
!470 = !DILocation(line: 52, column: 9, scope: !465)
!471 = !DILocation(line: 53, column: 20, scope: !465)
!472 = !DILocation(line: 53, column: 9, scope: !465)
!473 = !DILocation(line: 54, column: 9, scope: !465)
!474 = !DILocalVariable(name: "hashs1", scope: !78, file: !1, line: 57, type: !67)
!475 = !DILocation(line: 57, column: 19, scope: !78)
!476 = !DILocation(line: 57, column: 45, scope: !78)
!477 = !DILocation(line: 57, column: 55, scope: !78)
!478 = !DILocation(line: 57, column: 60, scope: !78)
!479 = !DILocation(line: 57, column: 67, scope: !78)
!480 = !DILocation(line: 57, column: 28, scope: !78)
!481 = !DILocation(line: 58, column: 9, scope: !482)
!482 = distinct !DILexicalBlock(scope: !78, file: !1, line: 58, column: 9)
!483 = !DILocation(line: 58, column: 16, scope: !482)
!484 = !DILocation(line: 58, column: 9, scope: !78)
!485 = !DILocation(line: 59, column: 9, scope: !486)
!486 = distinct !DILexicalBlock(scope: !482, file: !1, line: 58, column: 25)
!487 = !DILocation(line: 59, column: 17, scope: !486)
!488 = !DILocation(line: 60, column: 28, scope: !486)
!489 = !DILocation(line: 60, column: 9, scope: !486)
!490 = !DILocation(line: 61, column: 28, scope: !486)
!491 = !DILocation(line: 61, column: 9, scope: !486)
!492 = !DILocation(line: 62, column: 29, scope: !486)
!493 = !DILocation(line: 62, column: 9, scope: !486)
!494 = !DILocation(line: 63, column: 20, scope: !486)
!495 = !DILocation(line: 63, column: 9, scope: !486)
!496 = !DILocation(line: 64, column: 9, scope: !486)
!497 = !DILocation(line: 67, column: 5, scope: !78)
!498 = !DILocation(line: 68, column: 12, scope: !78)
!499 = !DILocation(line: 68, column: 5, scope: !78)
!500 = !DILocation(line: 68, column: 24, scope: !78)
!501 = !DILocation(line: 68, column: 29, scope: !78)
!502 = !DILocation(line: 68, column: 36, scope: !78)
!503 = !DILocation(line: 70, column: 24, scope: !78)
!504 = !DILocation(line: 70, column: 5, scope: !78)
!505 = !DILocation(line: 71, column: 24, scope: !78)
!506 = !DILocation(line: 71, column: 5, scope: !78)
!507 = !DILocation(line: 72, column: 25, scope: !78)
!508 = !DILocation(line: 72, column: 5, scope: !78)
!509 = !DILocation(line: 73, column: 16, scope: !78)
!510 = !DILocation(line: 73, column: 5, scope: !78)
!511 = !DILocation(line: 74, column: 5, scope: !78)
!512 = !DILocation(line: 74, column: 13, scope: !78)
!513 = !DILocation(line: 75, column: 5, scope: !78)
!514 = !DILocation(line: 75, column: 13, scope: !78)
!515 = !DILocation(line: 76, column: 5, scope: !78)
!516 = !DILocation(line: 77, column: 1, scope: !78)
!517 = distinct !DISubprogram(name: "memset", scope: !518, file: !518, line: 12, type: !519, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !82)
!518 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!519 = !DISubroutineType(types: !520)
!520 = !{!61, !61, !81, !521}
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !522, line: 46, baseType: !353)
!522 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!523 = !DILocalVariable(name: "dst", arg: 1, scope: !517, file: !518, line: 12, type: !61)
!524 = !DILocation(line: 12, column: 20, scope: !517)
!525 = !DILocalVariable(name: "s", arg: 2, scope: !517, file: !518, line: 12, type: !81)
!526 = !DILocation(line: 12, column: 29, scope: !517)
!527 = !DILocalVariable(name: "count", arg: 3, scope: !517, file: !518, line: 12, type: !521)
!528 = !DILocation(line: 12, column: 39, scope: !517)
!529 = !DILocalVariable(name: "a", scope: !517, file: !518, line: 13, type: !93)
!530 = !DILocation(line: 13, column: 9, scope: !517)
!531 = !DILocation(line: 13, column: 13, scope: !517)
!532 = !DILocation(line: 14, column: 3, scope: !517)
!533 = !DILocation(line: 14, column: 15, scope: !517)
!534 = !DILocation(line: 14, column: 18, scope: !517)
!535 = !DILocation(line: 15, column: 12, scope: !517)
!536 = !DILocation(line: 15, column: 7, scope: !517)
!537 = !DILocation(line: 15, column: 10, scope: !517)
!538 = distinct !{!538, !532, !535, !539}
!539 = !{!"llvm.loop.mustprogress"}
!540 = !DILocation(line: 16, column: 10, scope: !517)
!541 = !DILocation(line: 16, column: 3, scope: !517)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/276_valid.c_854_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/276_valid.c_854_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque
%struct._xmlElement = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDtd*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, %struct._xmlElementContent*, %struct._xmlAttribute*, i8*, %struct._xmlRegexp* }
%struct._xmlElementContent = type { i32, i32, i8*, %struct._xmlElementContent*, %struct._xmlElementContent*, %struct._xmlElementContent*, i8* }
%struct._xmlAttribute = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDtd*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlAttribute*, i32, i32, i8*, %struct._xmlEnumeration*, i8*, i8* }
%struct._xmlEnumeration = type { %struct._xmlEnumeration*, i8* }
%struct._xmlRegexp = type opaque

@.str = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"noname.xml\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"elem\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@xmlMalloc = external global i8* (i64)*, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/276_valid.c_854_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@xmlFree = external global void (i8*)*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !99 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca %struct._xmlDtd*, align 8
  %4 = alloca %struct._xmlElement*, align 8
  %5 = alloca %struct._xmlElementContent, align 8
  %6 = alloca %struct._xmlElementContent*, align 8
  %7 = alloca %struct._xmlDict*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct._xmlElementContent*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !104, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata %struct._xmlDtd** %3, metadata !208, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.declare(metadata %struct._xmlElement** %4, metadata !213, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent* %5, metadata !271, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent** %6, metadata !273, metadata !DIExpression()), !dbg !274
  store %struct._xmlElementContent* %5, %struct._xmlElementContent** %6, align 8, !dbg !274
  call void @llvm.dbg.declare(metadata %struct._xmlDict** %7, metadata !275, metadata !DIExpression()), !dbg !279
  store %struct._xmlDict* null, %struct._xmlDict** %7, align 8, !dbg !279
  call void @llvm.dbg.declare(metadata i8** %8, metadata !280, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.declare(metadata i64* %9, metadata !282, metadata !DIExpression()), !dbg !286
  store i64 1024, i64* %9, align 8, !dbg !287
  %11 = load i64, i64* %9, align 8, !dbg !288
  %12 = call noalias i8* @malloc(i64 noundef %11) #7, !dbg !289
  store i8* %12, i8** %8, align 8, !dbg !290
  %13 = load i8*, i8** %8, align 8, !dbg !291
  %14 = icmp ne i8* %13, null, !dbg !291
  br i1 %14, label %16, label %15, !dbg !293

15:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !294
  br label %111, !dbg !294

16:                                               ; preds = %0
  %17 = load i8*, i8** %8, align 8, !dbg !295
  %18 = load i64, i64* %9, align 8, !dbg !296
  call void @klee_make_symbolic(i8* noundef %17, i64 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)), !dbg !297
  %19 = load i8*, i8** %8, align 8, !dbg !298
  %20 = load i64, i64* %9, align 8, !dbg !299
  %21 = trunc i64 %20 to i32, !dbg !299
  %22 = call %struct._xmlDoc* @xmlReadMemory(i8* noundef %19, i32 noundef %21, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* noundef null, i32 noundef 0), !dbg !300
  store %struct._xmlDoc* %22, %struct._xmlDoc** %2, align 8, !dbg !301
  %23 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !302
  %24 = icmp ne %struct._xmlDoc* %23, null, !dbg !302
  br i1 %24, label %27, label %25, !dbg !304

25:                                               ; preds = %16
  %26 = load i8*, i8** %8, align 8, !dbg !305
  call void @free(i8* noundef %26) #7, !dbg !307
  store i32 2, i32* %1, align 4, !dbg !308
  br label %111, !dbg !308

27:                                               ; preds = %16
  %28 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !309
  %29 = call %struct._xmlDtd* @xmlNewDtd(%struct._xmlDoc* noundef %28, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* noundef null, i8* noundef null), !dbg !310
  store %struct._xmlDtd* %29, %struct._xmlDtd** %3, align 8, !dbg !311
  %30 = load %struct._xmlDtd*, %struct._xmlDtd** %3, align 8, !dbg !312
  %31 = icmp ne %struct._xmlDtd* %30, null, !dbg !312
  br i1 %31, label %35, label %32, !dbg !314

32:                                               ; preds = %27
  %33 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !315
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %33), !dbg !317
  %34 = load i8*, i8** %8, align 8, !dbg !318
  call void @free(i8* noundef %34) #7, !dbg !319
  store i32 3, i32* %1, align 4, !dbg !320
  br label %111, !dbg !320

35:                                               ; preds = %27
  %36 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !321
  %37 = call %struct._xmlNode* @xmlNewDocNode(%struct._xmlDoc* noundef %36, %struct._xmlNs* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef null), !dbg !322
  %38 = bitcast %struct._xmlNode* %37 to %struct._xmlElement*, !dbg !322
  store %struct._xmlElement* %38, %struct._xmlElement** %4, align 8, !dbg !323
  %39 = load %struct._xmlElement*, %struct._xmlElement** %4, align 8, !dbg !324
  %40 = icmp ne %struct._xmlElement* %39, null, !dbg !324
  br i1 %40, label %45, label %41, !dbg !326

41:                                               ; preds = %35
  %42 = load %struct._xmlDtd*, %struct._xmlDtd** %3, align 8, !dbg !327
  call void @xmlFreeDtd(%struct._xmlDtd* noundef %42), !dbg !329
  %43 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !330
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %43), !dbg !331
  %44 = load i8*, i8** %8, align 8, !dbg !332
  call void @free(i8* noundef %44) #7, !dbg !333
  store i32 4, i32* %1, align 4, !dbg !334
  br label %111, !dbg !334

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %5, i32 0, i32 0, !dbg !335
  store i32 1, i32* %46, align 8, !dbg !336
  %47 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %5, i32 0, i32 1, !dbg !337
  store i32 1, i32* %47, align 4, !dbg !338
  %48 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %5, i32 0, i32 2, !dbg !339
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %48, align 8, !dbg !340
  %49 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !341
  %50 = getelementptr inbounds %struct._xmlDoc, %struct._xmlDoc* %49, i32 0, i32 20, !dbg !342
  %51 = load %struct._xmlDict*, %struct._xmlDict** %50, align 8, !dbg !342
  store %struct._xmlDict* %51, %struct._xmlDict** %7, align 8, !dbg !343
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent** %10, metadata !344, metadata !DIExpression()), !dbg !345
  %52 = load i8* (i64)*, i8* (i64)** @xmlMalloc, align 8, !dbg !346
  %53 = call i8* %52(i64 noundef 48), !dbg !346
  %54 = bitcast i8* %53 to %struct._xmlElementContent*, !dbg !347
  store %struct._xmlElementContent* %54, %struct._xmlElementContent** %10, align 8, !dbg !345
  %55 = load %struct._xmlElementContent*, %struct._xmlElementContent** %10, align 8, !dbg !348
  %56 = icmp eq %struct._xmlElementContent* %55, null, !dbg !350
  br i1 %56, label %57, label %64, !dbg !351

57:                                               ; preds = %45
  %58 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @xmlVErrMemory to i32 (i8*, i8*, ...)*)(i8* noundef null, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)), !dbg !352
  %59 = load %struct._xmlElement*, %struct._xmlElement** %4, align 8, !dbg !354
  %60 = bitcast %struct._xmlElement* %59 to %struct._xmlNode*, !dbg !354
  call void @xmlFreeNode(%struct._xmlNode* noundef %60), !dbg !355
  %61 = load %struct._xmlDtd*, %struct._xmlDtd** %3, align 8, !dbg !356
  call void @xmlFreeDtd(%struct._xmlDtd* noundef %61), !dbg !357
  %62 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !358
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %62), !dbg !359
  %63 = load i8*, i8** %8, align 8, !dbg !360
  call void @free(i8* noundef %63) #7, !dbg !361
  store i32 5, i32* %1, align 4, !dbg !362
  br label %111, !dbg !362

64:                                               ; preds = %45
  %65 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.7, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !363
  %66 = load %struct._xmlElementContent*, %struct._xmlElementContent** %10, align 8, !dbg !364
  %67 = bitcast %struct._xmlElementContent* %66 to i8*, !dbg !365
  %68 = call i8* @memset(i8* %67, i32 0, i64 48), !dbg !365
  %69 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !366
  %70 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %69, i32 0, i32 0, !dbg !367
  %71 = load i32, i32* %70, align 8, !dbg !367
  %72 = load %struct._xmlElementContent*, %struct._xmlElementContent** %10, align 8, !dbg !368
  %73 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %72, i32 0, i32 0, !dbg !369
  store i32 %71, i32* %73, align 8, !dbg !370
  %74 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !371
  %75 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %74, i32 0, i32 1, !dbg !372
  %76 = load i32, i32* %75, align 4, !dbg !372
  %77 = load %struct._xmlElementContent*, %struct._xmlElementContent** %10, align 8, !dbg !373
  %78 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %77, i32 0, i32 1, !dbg !374
  store i32 %76, i32* %78, align 4, !dbg !375
  %79 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !376
  %80 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %79, i32 0, i32 2, !dbg !378
  %81 = load i8*, i8** %80, align 8, !dbg !378
  %82 = icmp ne i8* %81, null, !dbg !379
  br i1 %82, label %83, label %102, !dbg !380

83:                                               ; preds = %64
  %84 = load %struct._xmlDict*, %struct._xmlDict** %7, align 8, !dbg !381
  %85 = icmp ne %struct._xmlDict* %84, null, !dbg !381
  br i1 %85, label %86, label %94, !dbg !384

86:                                               ; preds = %83
  %87 = load %struct._xmlDict*, %struct._xmlDict** %7, align 8, !dbg !385
  %88 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !386
  %89 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %88, i32 0, i32 2, !dbg !387
  %90 = load i8*, i8** %89, align 8, !dbg !387
  %91 = call i8* @xmlDictLookup(%struct._xmlDict* noundef %87, i8* noundef %90, i32 noundef -1), !dbg !388
  %92 = load %struct._xmlElementContent*, %struct._xmlElementContent** %10, align 8, !dbg !389
  %93 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %92, i32 0, i32 2, !dbg !390
  store i8* %91, i8** %93, align 8, !dbg !391
  br label %101, !dbg !389

94:                                               ; preds = %83
  %95 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !392
  %96 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %95, i32 0, i32 2, !dbg !393
  %97 = load i8*, i8** %96, align 8, !dbg !393
  %98 = call i8* @xmlStrdup(i8* noundef %97), !dbg !394
  %99 = load %struct._xmlElementContent*, %struct._xmlElementContent** %10, align 8, !dbg !395
  %100 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %99, i32 0, i32 2, !dbg !396
  store i8* %98, i8** %100, align 8, !dbg !397
  br label %101

101:                                              ; preds = %94, %86
  br label %102, !dbg !398

102:                                              ; preds = %101, %64
  %103 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !399
  %104 = load %struct._xmlElementContent*, %struct._xmlElementContent** %10, align 8, !dbg !400
  %105 = bitcast %struct._xmlElementContent* %104 to i8*, !dbg !400
  call void %103(i8* noundef %105), !dbg !399
  %106 = load %struct._xmlElement*, %struct._xmlElement** %4, align 8, !dbg !401
  %107 = bitcast %struct._xmlElement* %106 to %struct._xmlNode*, !dbg !401
  call void @xmlFreeNode(%struct._xmlNode* noundef %107), !dbg !402
  %108 = load %struct._xmlDtd*, %struct._xmlDtd** %3, align 8, !dbg !403
  call void @xmlFreeDtd(%struct._xmlDtd* noundef %108), !dbg !404
  %109 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !405
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %109), !dbg !406
  %110 = load i8*, i8** %8, align 8, !dbg !407
  call void @free(i8* noundef %110) #7, !dbg !408
  store i32 0, i32* %1, align 4, !dbg !409
  br label %111, !dbg !409

111:                                              ; preds = %102, %57, %41, %32, %25, %15
  %112 = load i32, i32* %1, align 4, !dbg !410
  ret i32 %112, !dbg !410
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare %struct._xmlDoc* @xmlReadMemory(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

declare %struct._xmlDtd* @xmlNewDtd(%struct._xmlDoc* noundef, i8* noundef, i8* noundef, i8* noundef) #3

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #3

declare %struct._xmlNode* @xmlNewDocNode(%struct._xmlDoc* noundef, %struct._xmlNs* noundef, i8* noundef, i8* noundef) #3

declare void @xmlFreeDtd(%struct._xmlDtd* noundef) #3

declare i32 @xmlVErrMemory(...) #3

declare void @xmlFreeNode(%struct._xmlNode* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

declare i8* @xmlDictLookup(%struct._xmlDict* noundef, i8* noundef, i32 noundef) #3

declare i8* @xmlStrdup(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !411 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !415, metadata !DIExpression()), !dbg !416
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !417, metadata !DIExpression()), !dbg !418
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !419, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.declare(metadata i8** %7, metadata !421, metadata !DIExpression()), !dbg !422
  %8 = load i8*, i8** %4, align 8, !dbg !423
  store i8* %8, i8** %7, align 8, !dbg !422
  br label %9, !dbg !424

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !425
  %11 = add i64 %10, -1, !dbg !425
  store i64 %11, i64* %6, align 8, !dbg !425
  %12 = icmp ugt i64 %10, 0, !dbg !426
  br i1 %12, label %13, label %18, !dbg !424

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !427
  %15 = trunc i32 %14 to i8, !dbg !427
  %16 = load i8*, i8** %7, align 8, !dbg !428
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !428
  store i8* %17, i8** %7, align 8, !dbg !428
  store i8 %15, i8* %16, align 1, !dbg !429
  br label %9, !dbg !424, !llvm.loop !430

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !432
  ret i8* %19, !dbg !433
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !89}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98, !98}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !65, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/276_valid.c_854_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "d6e59f19e7488a1aa58b632ce86ffe55")
!2 = !{!3, !28, !40, !47, !53, !59}
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
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 322, baseType: !5, size: 32, elements: !41)
!41 = !{!42, !43, !44, !45, !46}
!42 = !DIEnumerator(name: "XML_ELEMENT_TYPE_UNDEFINED", value: 0)
!43 = !DIEnumerator(name: "XML_ELEMENT_TYPE_EMPTY", value: 1)
!44 = !DIEnumerator(name: "XML_ELEMENT_TYPE_ANY", value: 2)
!45 = !DIEnumerator(name: "XML_ELEMENT_TYPE_MIXED", value: 3)
!46 = !DIEnumerator(name: "XML_ELEMENT_TYPE_ELEMENT", value: 4)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 278, baseType: !5, size: 32, elements: !48)
!48 = !{!49, !50, !51, !52}
!49 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_PCDATA", value: 1)
!50 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_ELEMENT", value: 2)
!51 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_SEQ", value: 3)
!52 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_OR", value: 4)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 290, baseType: !5, size: 32, elements: !54)
!54 = !{!55, !56, !57, !58}
!55 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_ONCE", value: 1)
!56 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_OPT", value: 2)
!57 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_MULT", value: 3)
!58 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_PLUS", value: 4)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 225, baseType: !5, size: 32, elements: !60)
!60 = !{!61, !62, !63, !64}
!61 = !DIEnumerator(name: "XML_ATTRIBUTE_NONE", value: 1)
!62 = !DIEnumerator(name: "XML_ATTRIBUTE_REQUIRED", value: 2)
!63 = !DIEnumerator(name: "XML_ATTRIBUTE_IMPLIED", value: 3)
!64 = !DIEnumerator(name: "XML_ATTRIBUTE_FIXED", value: 4)
!65 = !{!66, !68, !73, !88}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !71, line: 28, baseType: !72)
!71 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!72 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentPtr", file: !4, line: 305, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContent", file: !4, line: 304, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlElementContent", file: !4, line: 306, size: 384, elements: !77)
!77 = !{!78, !80, !82, !83, !85, !86, !87}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !76, file: !4, line: 307, baseType: !79, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentType", file: !4, line: 283, baseType: !47)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "ocur", scope: !76, file: !4, line: 308, baseType: !81, size: 32, offset: 32)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentOccur", file: !4, line: 295, baseType: !53)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !76, file: !4, line: 309, baseType: !68, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !76, file: !4, line: 310, baseType: !84, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !76, file: !4, line: 311, baseType: !84, size: 64, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !76, file: !4, line: 312, baseType: !84, size: 64, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !76, file: !4, line: 313, baseType: !68, size: 64, offset: 320)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!89 = distinct !DICompileUnit(language: DW_LANG_C99, file: !90, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!90 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!91 = !{i32 7, !"Dwarf Version", i32 5}
!92 = !{i32 2, !"Debug Info Version", i32 3}
!93 = !{i32 1, !"wchar_size", i32 4}
!94 = !{i32 7, !"PIC Level", i32 2}
!95 = !{i32 7, !"PIE Level", i32 2}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"Ubuntu clang version 14.0.6"}
!99 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !100, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !103)
!100 = !DISubroutineType(types: !101)
!101 = !{!102}
!102 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!103 = !{}
!104 = !DILocalVariable(name: "doc", scope: !99, file: !1, line: 8, type: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !108)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !109)
!109 = !{!110, !111, !113, !114, !165, !166, !167, !168, !169, !170, !171, !172, !192, !193, !194, !195, !196, !197, !198, !199, !200, !204, !205, !206}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !108, file: !4, line: 560, baseType: !88, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !108, file: !4, line: 561, baseType: !112, size: 32, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !108, file: !4, line: 562, baseType: !66, size: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !108, file: !4, line: 563, baseType: !115, size: 64, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124, !125, !126, !128, !141, !143, !160, !161, !162, !164}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !116, file: !4, line: 493, baseType: !88, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !116, file: !4, line: 494, baseType: !112, size: 32, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !116, file: !4, line: 495, baseType: !68, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !116, file: !4, line: 496, baseType: !115, size: 64, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !116, file: !4, line: 497, baseType: !115, size: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !116, file: !4, line: 498, baseType: !115, size: 64, offset: 320)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !116, file: !4, line: 499, baseType: !115, size: 64, offset: 384)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !116, file: !4, line: 500, baseType: !115, size: 64, offset: 448)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !116, file: !4, line: 501, baseType: !127, size: 64, offset: 512)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !116, file: !4, line: 504, baseType: !129, size: 64, offset: 576)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !132)
!132 = !{!133, !135, !137, !138, !139, !140}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !131, file: !4, line: 389, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !131, file: !4, line: 390, baseType: !136, size: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !112)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !131, file: !4, line: 391, baseType: !68, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !131, file: !4, line: 392, baseType: !68, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !131, file: !4, line: 393, baseType: !88, size: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !131, file: !4, line: 394, baseType: !127, size: 64, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !116, file: !4, line: 505, baseType: !142, size: 64, offset: 640)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !116, file: !4, line: 506, baseType: !144, size: 64, offset: 704)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !146)
!146 = !{!147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !159}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !145, file: !4, line: 434, baseType: !88, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !145, file: !4, line: 435, baseType: !112, size: 32, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !145, file: !4, line: 436, baseType: !68, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !145, file: !4, line: 437, baseType: !115, size: 64, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !145, file: !4, line: 438, baseType: !115, size: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !145, file: !4, line: 439, baseType: !115, size: 64, offset: 320)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !145, file: !4, line: 440, baseType: !144, size: 64, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !145, file: !4, line: 441, baseType: !144, size: 64, offset: 448)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !145, file: !4, line: 442, baseType: !127, size: 64, offset: 512)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !145, file: !4, line: 443, baseType: !129, size: 64, offset: 576)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !145, file: !4, line: 444, baseType: !158, size: 32, offset: 640)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !145, file: !4, line: 445, baseType: !88, size: 64, offset: 704)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !116, file: !4, line: 507, baseType: !129, size: 64, offset: 768)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !116, file: !4, line: 508, baseType: !88, size: 64, offset: 832)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !116, file: !4, line: 509, baseType: !163, size: 16, offset: 896)
!163 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !116, file: !4, line: 510, baseType: !163, size: 16, offset: 912)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !108, file: !4, line: 564, baseType: !115, size: 64, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !108, file: !4, line: 565, baseType: !115, size: 64, offset: 320)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !108, file: !4, line: 566, baseType: !115, size: 64, offset: 384)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !108, file: !4, line: 567, baseType: !115, size: 64, offset: 448)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !108, file: !4, line: 568, baseType: !127, size: 64, offset: 512)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !108, file: !4, line: 571, baseType: !102, size: 32, offset: 576)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !108, file: !4, line: 572, baseType: !102, size: 32, offset: 608)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !108, file: !4, line: 578, baseType: !173, size: 64, offset: 640)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !175)
!175 = !{!176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !174, file: !4, line: 406, baseType: !88, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !174, file: !4, line: 407, baseType: !112, size: 32, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !174, file: !4, line: 408, baseType: !68, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !174, file: !4, line: 409, baseType: !115, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !174, file: !4, line: 410, baseType: !115, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !174, file: !4, line: 411, baseType: !127, size: 64, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !174, file: !4, line: 412, baseType: !115, size: 64, offset: 384)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !174, file: !4, line: 413, baseType: !115, size: 64, offset: 448)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !174, file: !4, line: 414, baseType: !127, size: 64, offset: 512)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !174, file: !4, line: 417, baseType: !88, size: 64, offset: 576)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !174, file: !4, line: 418, baseType: !88, size: 64, offset: 640)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !174, file: !4, line: 419, baseType: !88, size: 64, offset: 704)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !174, file: !4, line: 420, baseType: !88, size: 64, offset: 768)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !174, file: !4, line: 421, baseType: !68, size: 64, offset: 832)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !174, file: !4, line: 422, baseType: !68, size: 64, offset: 896)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !174, file: !4, line: 423, baseType: !88, size: 64, offset: 960)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !108, file: !4, line: 579, baseType: !173, size: 64, offset: 704)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !108, file: !4, line: 580, baseType: !134, size: 64, offset: 768)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !108, file: !4, line: 581, baseType: !68, size: 64, offset: 832)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !108, file: !4, line: 582, baseType: !68, size: 64, offset: 896)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !108, file: !4, line: 583, baseType: !88, size: 64, offset: 960)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !108, file: !4, line: 584, baseType: !88, size: 64, offset: 1024)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !108, file: !4, line: 585, baseType: !68, size: 64, offset: 1088)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !108, file: !4, line: 586, baseType: !102, size: 32, offset: 1152)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !108, file: !4, line: 588, baseType: !201, size: 64, offset: 1216)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !203, line: 24, flags: DIFlagFwdDecl)
!203 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!204 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !108, file: !4, line: 589, baseType: !88, size: 64, offset: 1280)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !108, file: !4, line: 590, baseType: !102, size: 32, offset: 1344)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !108, file: !4, line: 592, baseType: !102, size: 32, offset: 1376)
!207 = !DILocation(line: 8, column: 15, scope: !99)
!208 = !DILocalVariable(name: "dtd", scope: !99, file: !1, line: 9, type: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDtdPtr", file: !4, line: 404, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDtd", file: !4, line: 403, baseType: !174)
!212 = !DILocation(line: 9, column: 15, scope: !99)
!213 = !DILocalVariable(name: "elem", scope: !99, file: !1, line: 10, type: !214)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementPtr", file: !4, line: 345, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElement", file: !4, line: 344, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlElement", file: !4, line: 346, size: 896, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !230, !231, !263, !264}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !217, file: !4, line: 347, baseType: !88, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !217, file: !4, line: 348, baseType: !112, size: 32, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !217, file: !4, line: 349, baseType: !68, size: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !217, file: !4, line: 350, baseType: !115, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !217, file: !4, line: 351, baseType: !115, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !217, file: !4, line: 352, baseType: !173, size: 64, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !217, file: !4, line: 353, baseType: !115, size: 64, offset: 384)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !217, file: !4, line: 354, baseType: !115, size: 64, offset: 448)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !217, file: !4, line: 355, baseType: !127, size: 64, offset: 512)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "etype", scope: !217, file: !4, line: 357, baseType: !229, size: 32, offset: 576)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementTypeVal", file: !4, line: 328, baseType: !40)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !217, file: !4, line: 358, baseType: !73, size: 64, offset: 640)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !217, file: !4, line: 359, baseType: !232, size: 64, offset: 704)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributePtr", file: !4, line: 252, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttribute", file: !4, line: 251, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttribute", file: !4, line: 253, size: 960, elements: !236)
!236 = !{!237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !248, !249, !251, !252, !261, !262}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !235, file: !4, line: 254, baseType: !88, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !235, file: !4, line: 255, baseType: !112, size: 32, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !235, file: !4, line: 256, baseType: !68, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !235, file: !4, line: 257, baseType: !115, size: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !235, file: !4, line: 258, baseType: !115, size: 64, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !235, file: !4, line: 259, baseType: !173, size: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !235, file: !4, line: 260, baseType: !115, size: 64, offset: 384)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !235, file: !4, line: 261, baseType: !115, size: 64, offset: 448)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !235, file: !4, line: 262, baseType: !127, size: 64, offset: 512)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "nexth", scope: !235, file: !4, line: 264, baseType: !247, size: 64, offset: 576)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !235, file: !4, line: 265, baseType: !158, size: 32, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !235, file: !4, line: 266, baseType: !250, size: 32, offset: 672)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeDefault", file: !4, line: 230, baseType: !59)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "defaultValue", scope: !235, file: !4, line: 267, baseType: !68, size: 64, offset: 704)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !235, file: !4, line: 268, baseType: !253, size: 64, offset: 768)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEnumerationPtr", file: !4, line: 239, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEnumeration", file: !4, line: 238, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEnumeration", file: !4, line: 240, size: 128, elements: !257)
!257 = !{!258, !260}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !256, file: !4, line: 241, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !256, file: !4, line: 242, baseType: !68, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !235, file: !4, line: 269, baseType: !68, size: 64, offset: 832)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !235, file: !4, line: 270, baseType: !68, size: 64, offset: 896)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !217, file: !4, line: 360, baseType: !68, size: 64, offset: 768)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "contModel", scope: !217, file: !4, line: 362, baseType: !265, size: 64, offset: 832)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexpPtr", file: !266, line: 29, baseType: !267)
!266 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlregexp.h", directory: "", checksumkind: CSK_MD5, checksum: "fea3110c96e8cd9013900e1c8e5b6c0b")
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexp", file: !266, line: 28, baseType: !269)
!269 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegexp", file: !266, line: 28, flags: DIFlagFwdDecl)
!270 = !DILocation(line: 10, column: 19, scope: !99)
!271 = !DILocalVariable(name: "content", scope: !99, file: !1, line: 11, type: !75)
!272 = !DILocation(line: 11, column: 23, scope: !99)
!273 = !DILocalVariable(name: "cur", scope: !99, file: !1, line: 12, type: !73)
!274 = !DILocation(line: 12, column: 26, scope: !99)
!275 = !DILocalVariable(name: "dict", scope: !99, file: !1, line: 13, type: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !203, line: 25, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !203, line: 24, baseType: !202)
!279 = !DILocation(line: 13, column: 16, scope: !99)
!280 = !DILocalVariable(name: "buffer", scope: !99, file: !1, line: 14, type: !66)
!281 = !DILocation(line: 14, column: 11, scope: !99)
!282 = !DILocalVariable(name: "buffer_size", scope: !99, file: !1, line: 15, type: !283)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !284, line: 46, baseType: !285)
!284 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!285 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!286 = !DILocation(line: 15, column: 12, scope: !99)
!287 = !DILocation(line: 17, column: 17, scope: !99)
!288 = !DILocation(line: 18, column: 29, scope: !99)
!289 = !DILocation(line: 18, column: 22, scope: !99)
!290 = !DILocation(line: 18, column: 12, scope: !99)
!291 = !DILocation(line: 19, column: 10, scope: !292)
!292 = distinct !DILexicalBlock(scope: !99, file: !1, line: 19, column: 9)
!293 = !DILocation(line: 19, column: 9, scope: !99)
!294 = !DILocation(line: 19, column: 18, scope: !292)
!295 = !DILocation(line: 21, column: 24, scope: !99)
!296 = !DILocation(line: 21, column: 32, scope: !99)
!297 = !DILocation(line: 21, column: 5, scope: !99)
!298 = !DILocation(line: 23, column: 25, scope: !99)
!299 = !DILocation(line: 23, column: 33, scope: !99)
!300 = !DILocation(line: 23, column: 11, scope: !99)
!301 = !DILocation(line: 23, column: 9, scope: !99)
!302 = !DILocation(line: 24, column: 10, scope: !303)
!303 = distinct !DILexicalBlock(scope: !99, file: !1, line: 24, column: 9)
!304 = !DILocation(line: 24, column: 9, scope: !99)
!305 = !DILocation(line: 25, column: 14, scope: !306)
!306 = distinct !DILexicalBlock(scope: !303, file: !1, line: 24, column: 15)
!307 = !DILocation(line: 25, column: 9, scope: !306)
!308 = !DILocation(line: 26, column: 9, scope: !306)
!309 = !DILocation(line: 29, column: 21, scope: !99)
!310 = !DILocation(line: 29, column: 11, scope: !99)
!311 = !DILocation(line: 29, column: 9, scope: !99)
!312 = !DILocation(line: 30, column: 10, scope: !313)
!313 = distinct !DILexicalBlock(scope: !99, file: !1, line: 30, column: 9)
!314 = !DILocation(line: 30, column: 9, scope: !99)
!315 = !DILocation(line: 31, column: 20, scope: !316)
!316 = distinct !DILexicalBlock(scope: !313, file: !1, line: 30, column: 15)
!317 = !DILocation(line: 31, column: 9, scope: !316)
!318 = !DILocation(line: 32, column: 14, scope: !316)
!319 = !DILocation(line: 32, column: 9, scope: !316)
!320 = !DILocation(line: 33, column: 9, scope: !316)
!321 = !DILocation(line: 36, column: 26, scope: !99)
!322 = !DILocation(line: 36, column: 12, scope: !99)
!323 = !DILocation(line: 36, column: 10, scope: !99)
!324 = !DILocation(line: 37, column: 10, scope: !325)
!325 = distinct !DILexicalBlock(scope: !99, file: !1, line: 37, column: 9)
!326 = !DILocation(line: 37, column: 9, scope: !99)
!327 = !DILocation(line: 38, column: 20, scope: !328)
!328 = distinct !DILexicalBlock(scope: !325, file: !1, line: 37, column: 16)
!329 = !DILocation(line: 38, column: 9, scope: !328)
!330 = !DILocation(line: 39, column: 20, scope: !328)
!331 = !DILocation(line: 39, column: 9, scope: !328)
!332 = !DILocation(line: 40, column: 14, scope: !328)
!333 = !DILocation(line: 40, column: 9, scope: !328)
!334 = !DILocation(line: 41, column: 9, scope: !328)
!335 = !DILocation(line: 44, column: 13, scope: !99)
!336 = !DILocation(line: 44, column: 18, scope: !99)
!337 = !DILocation(line: 45, column: 13, scope: !99)
!338 = !DILocation(line: 45, column: 18, scope: !99)
!339 = !DILocation(line: 46, column: 13, scope: !99)
!340 = !DILocation(line: 46, column: 18, scope: !99)
!341 = !DILocation(line: 48, column: 12, scope: !99)
!342 = !DILocation(line: 48, column: 17, scope: !99)
!343 = !DILocation(line: 48, column: 10, scope: !99)
!344 = !DILocalVariable(name: "ret", scope: !99, file: !1, line: 50, type: !73)
!345 = !DILocation(line: 50, column: 26, scope: !99)
!346 = !DILocation(line: 50, column: 55, scope: !99)
!347 = !DILocation(line: 50, column: 32, scope: !99)
!348 = !DILocation(line: 51, column: 9, scope: !349)
!349 = distinct !DILexicalBlock(scope: !99, file: !1, line: 51, column: 9)
!350 = !DILocation(line: 51, column: 13, scope: !349)
!351 = !DILocation(line: 51, column: 9, scope: !99)
!352 = !DILocation(line: 52, column: 9, scope: !353)
!353 = distinct !DILexicalBlock(scope: !349, file: !1, line: 51, column: 22)
!354 = !DILocation(line: 53, column: 21, scope: !353)
!355 = !DILocation(line: 53, column: 9, scope: !353)
!356 = !DILocation(line: 54, column: 20, scope: !353)
!357 = !DILocation(line: 54, column: 9, scope: !353)
!358 = !DILocation(line: 55, column: 20, scope: !353)
!359 = !DILocation(line: 55, column: 9, scope: !353)
!360 = !DILocation(line: 56, column: 14, scope: !353)
!361 = !DILocation(line: 56, column: 9, scope: !353)
!362 = !DILocation(line: 57, column: 9, scope: !353)
!363 = !DILocation(line: 60, column: 5, scope: !99)
!364 = !DILocation(line: 61, column: 12, scope: !99)
!365 = !DILocation(line: 61, column: 5, scope: !99)
!366 = !DILocation(line: 63, column: 17, scope: !99)
!367 = !DILocation(line: 63, column: 22, scope: !99)
!368 = !DILocation(line: 63, column: 5, scope: !99)
!369 = !DILocation(line: 63, column: 10, scope: !99)
!370 = !DILocation(line: 63, column: 15, scope: !99)
!371 = !DILocation(line: 64, column: 17, scope: !99)
!372 = !DILocation(line: 64, column: 22, scope: !99)
!373 = !DILocation(line: 64, column: 5, scope: !99)
!374 = !DILocation(line: 64, column: 10, scope: !99)
!375 = !DILocation(line: 64, column: 15, scope: !99)
!376 = !DILocation(line: 65, column: 9, scope: !377)
!377 = distinct !DILexicalBlock(scope: !99, file: !1, line: 65, column: 9)
!378 = !DILocation(line: 65, column: 14, scope: !377)
!379 = !DILocation(line: 65, column: 19, scope: !377)
!380 = !DILocation(line: 65, column: 9, scope: !99)
!381 = !DILocation(line: 66, column: 13, scope: !382)
!382 = distinct !DILexicalBlock(scope: !383, file: !1, line: 66, column: 13)
!383 = distinct !DILexicalBlock(scope: !377, file: !1, line: 65, column: 28)
!384 = !DILocation(line: 66, column: 13, scope: !383)
!385 = !DILocation(line: 67, column: 39, scope: !382)
!386 = !DILocation(line: 67, column: 45, scope: !382)
!387 = !DILocation(line: 67, column: 50, scope: !382)
!388 = !DILocation(line: 67, column: 25, scope: !382)
!389 = !DILocation(line: 67, column: 13, scope: !382)
!390 = !DILocation(line: 67, column: 18, scope: !382)
!391 = !DILocation(line: 67, column: 23, scope: !382)
!392 = !DILocation(line: 69, column: 35, scope: !382)
!393 = !DILocation(line: 69, column: 40, scope: !382)
!394 = !DILocation(line: 69, column: 25, scope: !382)
!395 = !DILocation(line: 69, column: 13, scope: !382)
!396 = !DILocation(line: 69, column: 18, scope: !382)
!397 = !DILocation(line: 69, column: 23, scope: !382)
!398 = !DILocation(line: 70, column: 5, scope: !383)
!399 = !DILocation(line: 72, column: 5, scope: !99)
!400 = !DILocation(line: 72, column: 13, scope: !99)
!401 = !DILocation(line: 73, column: 17, scope: !99)
!402 = !DILocation(line: 73, column: 5, scope: !99)
!403 = !DILocation(line: 74, column: 16, scope: !99)
!404 = !DILocation(line: 74, column: 5, scope: !99)
!405 = !DILocation(line: 75, column: 16, scope: !99)
!406 = !DILocation(line: 75, column: 5, scope: !99)
!407 = !DILocation(line: 76, column: 10, scope: !99)
!408 = !DILocation(line: 76, column: 5, scope: !99)
!409 = !DILocation(line: 77, column: 5, scope: !99)
!410 = !DILocation(line: 78, column: 1, scope: !99)
!411 = distinct !DISubprogram(name: "memset", scope: !412, file: !412, line: 12, type: !413, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !103)
!412 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!413 = !DISubroutineType(types: !414)
!414 = !{!88, !88, !102, !283}
!415 = !DILocalVariable(name: "dst", arg: 1, scope: !411, file: !412, line: 12, type: !88)
!416 = !DILocation(line: 12, column: 20, scope: !411)
!417 = !DILocalVariable(name: "s", arg: 2, scope: !411, file: !412, line: 12, type: !102)
!418 = !DILocation(line: 12, column: 29, scope: !411)
!419 = !DILocalVariable(name: "count", arg: 3, scope: !411, file: !412, line: 12, type: !283)
!420 = !DILocation(line: 12, column: 39, scope: !411)
!421 = !DILocalVariable(name: "a", scope: !411, file: !412, line: 13, type: !66)
!422 = !DILocation(line: 13, column: 9, scope: !411)
!423 = !DILocation(line: 13, column: 13, scope: !411)
!424 = !DILocation(line: 14, column: 3, scope: !411)
!425 = !DILocation(line: 14, column: 15, scope: !411)
!426 = !DILocation(line: 14, column: 18, scope: !411)
!427 = !DILocation(line: 15, column: 12, scope: !411)
!428 = !DILocation(line: 15, column: 7, scope: !411)
!429 = !DILocation(line: 15, column: 10, scope: !411)
!430 = distinct !{!430, !424, !427, !431}
!431 = !{!"llvm.loop.mustprogress"}
!432 = !DILocation(line: 16, column: 10, scope: !411)
!433 = !DILocation(line: 16, column: 3, scope: !411)

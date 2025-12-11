; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/009_HTMLparser.c_4975_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/009_HTMLparser.c_4975_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._htmlSAXHandler = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct._xmlParserCtxt = type { i8*, %struct._htmlSAXHandler*, i8*, %struct._htmlParserInput**, i32, i32, i32, i8*, i32, i32, i8*, i32, i8*, i8*, i8*, i8*, i64, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._htmlParserInput = type opaque

@.str = private unnamed_addr constant [4 x i8] c"sax\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"userData\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"(ctxt->sax != ((void*)0)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/009_HTMLparser.c_4975_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.htmlParseComment = private unnamed_addr constant [40 x i8] c"void htmlParseComment(xmlParserCtxtPtr)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"ctxt_sax\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSAX2InitHtmlDefaultSAXHandler(%struct._htmlSAXHandler* noundef %0) #0 !dbg !275 {
  %2 = alloca %struct._htmlSAXHandler*, align 8
  store %struct._htmlSAXHandler* %0, %struct._htmlSAXHandler** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._htmlSAXHandler** %2, metadata !279, metadata !DIExpression()), !dbg !280
  %3 = load %struct._htmlSAXHandler*, %struct._htmlSAXHandler** %2, align 8, !dbg !281
  %4 = icmp ne %struct._htmlSAXHandler* %3, null, !dbg !281
  br i1 %4, label %5, label %8, !dbg !283

5:                                                ; preds = %1
  %6 = load %struct._htmlSAXHandler*, %struct._htmlSAXHandler** %2, align 8, !dbg !284
  %7 = getelementptr inbounds %struct._htmlSAXHandler, %struct._htmlSAXHandler* %6, i32 0, i32 27, !dbg !286
  store i32 1, i32* %7, align 8, !dbg !287
  br label %8, !dbg !288

8:                                                ; preds = %5, %1
  ret void, !dbg !289
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @htmlParseComment(%struct._xmlParserCtxt* noundef %0) #0 !dbg !290 {
  %2 = alloca %struct._xmlParserCtxt*, align 8
  %3 = alloca %struct._htmlSAXHandler*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !293, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.declare(metadata %struct._htmlSAXHandler** %3, metadata !295, metadata !DIExpression()), !dbg !296
  %5 = bitcast %struct._htmlSAXHandler** %3 to i8*, !dbg !297
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !298
  call void @llvm.dbg.declare(metadata i8** %4, metadata !299, metadata !DIExpression()), !dbg !300
  %6 = bitcast i8** %4 to i8*, !dbg !301
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !302
  %7 = load %struct._htmlSAXHandler*, %struct._htmlSAXHandler** %3, align 8, !dbg !303
  %8 = icmp eq %struct._htmlSAXHandler* %7, null, !dbg !305
  br i1 %8, label %9, label %22, !dbg !306

9:                                                ; preds = %1
  %10 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !307
  %11 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %10, i32 0, i32 1, !dbg !309
  %12 = load %struct._htmlSAXHandler*, %struct._htmlSAXHandler** %11, align 8, !dbg !309
  %13 = bitcast %struct._htmlSAXHandler* %12 to i8*, !dbg !310
  %14 = call i8* @memset(i8* %13, i32 0, i64 224), !dbg !310
  %15 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !311
  %16 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %15, i32 0, i32 1, !dbg !312
  %17 = load %struct._htmlSAXHandler*, %struct._htmlSAXHandler** %16, align 8, !dbg !312
  call void @xmlSAX2InitHtmlDefaultSAXHandler(%struct._htmlSAXHandler* noundef %17), !dbg !313
  %18 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !314
  %19 = bitcast %struct._xmlParserCtxt* %18 to i8*, !dbg !314
  %20 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !315
  %21 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %20, i32 0, i32 2, !dbg !316
  store i8* %19, i8** %21, align 8, !dbg !317
  br label %51, !dbg !318

22:                                               ; preds = %1
  %23 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !319
  %24 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %23, i32 0, i32 1, !dbg !319
  %25 = load %struct._htmlSAXHandler*, %struct._htmlSAXHandler** %24, align 8, !dbg !319
  %26 = icmp ne %struct._htmlSAXHandler* %25, null, !dbg !319
  br i1 %26, label %27, label %29, !dbg !319

27:                                               ; preds = %22
  br i1 true, label %28, label %29, !dbg !319

28:                                               ; preds = %27
  br label %31, !dbg !319

29:                                               ; preds = %27, %22
  %30 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0), i32 noundef 296, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.htmlParseComment, i64 0, i64 0)), !dbg !319
  br label %31, !dbg !319

31:                                               ; preds = %29, %28
  %32 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0), i32 noundef 299, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.htmlParseComment, i64 0, i64 0)), !dbg !321
  %33 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !322
  %34 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %33, i32 0, i32 1, !dbg !323
  %35 = load %struct._htmlSAXHandler*, %struct._htmlSAXHandler** %34, align 8, !dbg !323
  %36 = bitcast %struct._htmlSAXHandler* %35 to i8*, !dbg !324
  %37 = load %struct._htmlSAXHandler*, %struct._htmlSAXHandler** %3, align 8, !dbg !325
  %38 = bitcast %struct._htmlSAXHandler* %37 to i8*, !dbg !324
  %39 = call i8* @memcpy(i8* %36, i8* %38, i64 224), !dbg !324
  %40 = load i8*, i8** %4, align 8, !dbg !326
  %41 = icmp ne i8* %40, null, !dbg !326
  br i1 %41, label %42, label %44, !dbg !326

42:                                               ; preds = %31
  %43 = load i8*, i8** %4, align 8, !dbg !327
  br label %47, !dbg !326

44:                                               ; preds = %31
  %45 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !328
  %46 = bitcast %struct._xmlParserCtxt* %45 to i8*, !dbg !328
  br label %47, !dbg !326

47:                                               ; preds = %44, %42
  %48 = phi i8* [ %43, %42 ], [ %46, %44 ], !dbg !326
  %49 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !329
  %50 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %49, i32 0, i32 2, !dbg !330
  store i8* %48, i8** %50, align 8, !dbg !331
  br label %51

51:                                               ; preds = %47, %9
  ret void, !dbg !332
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !333 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !336, metadata !DIExpression()), !dbg !337
  %3 = call noalias i8* @malloc(i64 noundef 1688) #8, !dbg !338
  %4 = bitcast i8* %3 to %struct._xmlParserCtxt*, !dbg !339
  store %struct._xmlParserCtxt* %4, %struct._xmlParserCtxt** %2, align 8, !dbg !337
  %5 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !340
  %6 = icmp ne %struct._xmlParserCtxt* %5, null, !dbg !340
  br i1 %6, label %8, label %7, !dbg !342

7:                                                ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !343
  br label %32, !dbg !343

8:                                                ; preds = %0
  %9 = call noalias i8* @malloc(i64 noundef 224) #8, !dbg !344
  %10 = bitcast i8* %9 to %struct._htmlSAXHandler*, !dbg !345
  %11 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !346
  %12 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %11, i32 0, i32 1, !dbg !347
  store %struct._htmlSAXHandler* %10, %struct._htmlSAXHandler** %12, align 8, !dbg !348
  %13 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !349
  %14 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %13, i32 0, i32 1, !dbg !350
  %15 = load %struct._htmlSAXHandler*, %struct._htmlSAXHandler** %14, align 8, !dbg !350
  %16 = bitcast %struct._htmlSAXHandler* %15 to i8*, !dbg !349
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 224, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)), !dbg !351
  %17 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !352
  %18 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %17, i32 0, i32 3, !dbg !353
  store %struct._htmlParserInput** null, %struct._htmlParserInput*** %18, align 8, !dbg !354
  %19 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !355
  %20 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %19, i32 0, i32 4, !dbg !356
  store i32 0, i32* %20, align 8, !dbg !357
  %21 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !358
  %22 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %21, i32 0, i32 5, !dbg !359
  store i32 0, i32* %22, align 4, !dbg !360
  %23 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !361
  %24 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %23, i32 0, i32 6, !dbg !362
  store i32 0, i32* %24, align 8, !dbg !363
  %25 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !364
  call void @htmlParseComment(%struct._xmlParserCtxt* noundef %25), !dbg !365
  %26 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !366
  %27 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %26, i32 0, i32 1, !dbg !367
  %28 = load %struct._htmlSAXHandler*, %struct._htmlSAXHandler** %27, align 8, !dbg !367
  %29 = bitcast %struct._htmlSAXHandler* %28 to i8*, !dbg !366
  call void @free(i8* noundef %29) #8, !dbg !368
  %30 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !369
  %31 = bitcast %struct._xmlParserCtxt* %30 to i8*, !dbg !369
  call void @free(i8* noundef %31) #8, !dbg !370
  store i32 0, i32* %1, align 4, !dbg !371
  br label %32, !dbg !371

32:                                               ; preds = %8, %7
  %33 = load i32, i32* %1, align 4, !dbg !372
  ret i32 %33, !dbg !372
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !373 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !381, metadata !DIExpression()), !dbg !382
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !383, metadata !DIExpression()), !dbg !384
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !385, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.declare(metadata i8** %7, metadata !387, metadata !DIExpression()), !dbg !390
  %9 = load i8*, i8** %4, align 8, !dbg !391
  store i8* %9, i8** %7, align 8, !dbg !390
  call void @llvm.dbg.declare(metadata i8** %8, metadata !392, metadata !DIExpression()), !dbg !395
  %10 = load i8*, i8** %5, align 8, !dbg !396
  store i8* %10, i8** %8, align 8, !dbg !395
  br label %11, !dbg !397

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !398
  %13 = add i64 %12, -1, !dbg !398
  store i64 %13, i64* %6, align 8, !dbg !398
  %14 = icmp ugt i64 %12, 0, !dbg !399
  br i1 %14, label %15, label %21, !dbg !397

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !400
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !400
  store i8* %17, i8** %8, align 8, !dbg !400
  %18 = load i8, i8* %16, align 1, !dbg !401
  %19 = load i8*, i8** %7, align 8, !dbg !402
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !402
  store i8* %20, i8** %7, align 8, !dbg !402
  store i8 %18, i8* %19, align 1, !dbg !403
  br label %11, !dbg !397, !llvm.loop !404

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !406
  ret i8* %22, !dbg !407
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !408 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !412, metadata !DIExpression()), !dbg !413
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !414, metadata !DIExpression()), !dbg !415
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !416, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.declare(metadata i8** %7, metadata !418, metadata !DIExpression()), !dbg !419
  %8 = load i8*, i8** %4, align 8, !dbg !420
  store i8* %8, i8** %7, align 8, !dbg !419
  br label %9, !dbg !421

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !422
  %11 = add i64 %10, -1, !dbg !422
  store i64 %11, i64* %6, align 8, !dbg !422
  %12 = icmp ugt i64 %10, 0, !dbg !423
  br i1 %12, label %13, label %18, !dbg !421

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !424
  %15 = trunc i32 %14 to i8, !dbg !424
  %16 = load i8*, i8** %7, align 8, !dbg !425
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !425
  store i8* %17, i8** %7, align 8, !dbg !425
  store i8 %15, i8* %16, align 1, !dbg !426
  br label %9, !dbg !421, !llvm.loop !427

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !428
  ret i8* %19, !dbg !429
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0, !263, !265}
!llvm.module.flags = !{!267, !268, !269, !270, !271, !272, !273}
!llvm.ident = !{!274, !274, !274}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/009_HTMLparser.c_4975_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "e267801f20a803491ff096b143df94da")
!2 = !{!3, !4, !11}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxtPtr", file: !1, line: 11, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 10, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 50, size: 13504, elements: !8)
!8 = !{!9, !10, !44, !45, !51, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "sax2", scope: !7, file: !1, line: 51, baseType: !3, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "sax", scope: !7, file: !1, line: 52, baseType: !11, size: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "htmlSAXHandler", file: !1, line: 12, baseType: !13)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_htmlSAXHandler", file: !1, line: 18, size: 1792, elements: !14)
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "internalSubset", scope: !13, file: !1, line: 19, baseType: !3, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "isStandalone", scope: !13, file: !1, line: 20, baseType: !3, size: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "hasInternalSubset", scope: !13, file: !1, line: 21, baseType: !3, size: 64, offset: 128)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "hasExternalSubset", scope: !13, file: !1, line: 22, baseType: !3, size: 64, offset: 192)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "resolveEntity", scope: !13, file: !1, line: 23, baseType: !3, size: 64, offset: 256)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "getEntity", scope: !13, file: !1, line: 24, baseType: !3, size: 64, offset: 320)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "entityDecl", scope: !13, file: !1, line: 25, baseType: !3, size: 64, offset: 384)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "notationDecl", scope: !13, file: !1, line: 26, baseType: !3, size: 64, offset: 448)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "attributeDecl", scope: !13, file: !1, line: 27, baseType: !3, size: 64, offset: 512)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "elementDecl", scope: !13, file: !1, line: 28, baseType: !3, size: 64, offset: 576)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "unparsedEntityDecl", scope: !13, file: !1, line: 29, baseType: !3, size: 64, offset: 640)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "setDocumentLocator", scope: !13, file: !1, line: 30, baseType: !3, size: 64, offset: 704)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "startDocument", scope: !13, file: !1, line: 31, baseType: !3, size: 64, offset: 768)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "endDocument", scope: !13, file: !1, line: 32, baseType: !3, size: 64, offset: 832)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "startElement", scope: !13, file: !1, line: 33, baseType: !3, size: 64, offset: 896)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "endElement", scope: !13, file: !1, line: 34, baseType: !3, size: 64, offset: 960)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !13, file: !1, line: 35, baseType: !3, size: 64, offset: 1024)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "characters", scope: !13, file: !1, line: 36, baseType: !3, size: 64, offset: 1088)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ignorableWhitespace", scope: !13, file: !1, line: 37, baseType: !3, size: 64, offset: 1152)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "processingInstruction", scope: !13, file: !1, line: 38, baseType: !3, size: 64, offset: 1216)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !13, file: !1, line: 39, baseType: !3, size: 64, offset: 1280)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "warning", scope: !13, file: !1, line: 40, baseType: !3, size: 64, offset: 1344)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !13, file: !1, line: 41, baseType: !3, size: 64, offset: 1408)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "fatalError", scope: !13, file: !1, line: 42, baseType: !3, size: 64, offset: 1472)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "getParameterEntity", scope: !13, file: !1, line: 43, baseType: !3, size: 64, offset: 1536)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "cdataBlock", scope: !13, file: !1, line: 44, baseType: !3, size: 64, offset: 1600)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "externalSubset", scope: !13, file: !1, line: 45, baseType: !3, size: 64, offset: 1664)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !13, file: !1, line: 46, baseType: !43, size: 32, offset: 1728)
!43 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !7, file: !1, line: 53, baseType: !3, size: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "inputTab", scope: !7, file: !1, line: 54, baseType: !46, size: 64, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "htmlParserInputPtr", file: !1, line: 15, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "htmlParserInput", file: !1, line: 14, baseType: !50)
!50 = !DICompositeType(tag: DW_TAG_structure_type, name: "_htmlParserInput", file: !1, line: 14, flags: DIFlagFwdDecl)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "inputNr", scope: !7, file: !1, line: 55, baseType: !52, size: 32, offset: 256)
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "inputMax", scope: !7, file: !1, line: 56, baseType: !52, size: 32, offset: 288)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "inputFree", scope: !7, file: !1, line: 57, baseType: !52, size: 32, offset: 320)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !7, file: !1, line: 58, baseType: !3, size: 64, offset: 384)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !7, file: !1, line: 59, baseType: !52, size: 32, offset: 448)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !7, file: !1, line: 60, baseType: !52, size: 32, offset: 480)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "errNo", scope: !7, file: !1, line: 61, baseType: !3, size: 64, offset: 512)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !7, file: !1, line: 62, baseType: !52, size: 32, offset: 576)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !7, file: !1, line: 63, baseType: !3, size: 64, offset: 640)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "vctxt", scope: !7, file: !1, line: 64, baseType: !3, size: 64, offset: 704)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "lastError", scope: !7, file: !1, line: 65, baseType: !3, size: 64, offset: 768)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "parseMode", scope: !7, file: !1, line: 66, baseType: !3, size: 64, offset: 832)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "nsNr", scope: !7, file: !1, line: 67, baseType: !65, size: 64, offset: 896)
!65 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "nsTab", scope: !7, file: !1, line: 68, baseType: !3, size: 64, offset: 960)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "attsall", scope: !7, file: !1, line: 69, baseType: !3, size: 64, offset: 1024)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "pushTab", scope: !7, file: !1, line: 70, baseType: !3, size: 64, offset: 1088)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "attsMax", scope: !7, file: !1, line: 71, baseType: !52, size: 32, offset: 1152)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "pushMax", scope: !7, file: !1, line: 72, baseType: !52, size: 32, offset: 1184)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !7, file: !1, line: 73, baseType: !3, size: 64, offset: 1216)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "nameNr", scope: !7, file: !1, line: 74, baseType: !3, size: 64, offset: 1280)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "nameMax", scope: !7, file: !1, line: 75, baseType: !3, size: 64, offset: 1344)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "nbChars", scope: !7, file: !1, line: 76, baseType: !3, size: 64, offset: 1408)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "checkIndex", scope: !7, file: !1, line: 77, baseType: !3, size: 64, offset: 1472)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "keepBlanks", scope: !7, file: !1, line: 78, baseType: !3, size: 64, offset: 1536)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "disableSAX", scope: !7, file: !1, line: 79, baseType: !3, size: 64, offset: 1600)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "inSubset", scope: !7, file: !1, line: 80, baseType: !3, size: 64, offset: 1664)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "intSubName", scope: !7, file: !1, line: 81, baseType: !3, size: 64, offset: 1728)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "extSubURI", scope: !7, file: !1, line: 82, baseType: !3, size: 64, offset: 1792)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "extSubSystem", scope: !7, file: !1, line: 83, baseType: !3, size: 64, offset: 1856)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !7, file: !1, line: 84, baseType: !3, size: 64, offset: 1920)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "spaceNr", scope: !7, file: !1, line: 85, baseType: !3, size: 64, offset: 1984)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "spaceMax", scope: !7, file: !1, line: 86, baseType: !3, size: 64, offset: 2048)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "spaceTab", scope: !7, file: !1, line: 87, baseType: !3, size: 64, offset: 2112)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !7, file: !1, line: 88, baseType: !3, size: 64, offset: 2176)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !7, file: !1, line: 89, baseType: !3, size: 64, offset: 2240)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !7, file: !1, line: 90, baseType: !3, size: 64, offset: 2304)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !7, file: !1, line: 91, baseType: !52, size: 32, offset: 2368)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "wellFormed", scope: !7, file: !1, line: 92, baseType: !3, size: 64, offset: 2432)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "nsWellFormed", scope: !7, file: !1, line: 93, baseType: !3, size: 64, offset: 2496)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !7, file: !1, line: 94, baseType: !3, size: 64, offset: 2560)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !7, file: !1, line: 95, baseType: !3, size: 64, offset: 2624)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "vstate", scope: !7, file: !1, line: 96, baseType: !3, size: 64, offset: 2688)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "vstateNr", scope: !7, file: !1, line: 97, baseType: !3, size: 64, offset: 2752)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "vstateMax", scope: !7, file: !1, line: 98, baseType: !3, size: 64, offset: 2816)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "vstateTab", scope: !7, file: !1, line: 99, baseType: !3, size: 64, offset: 2880)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !7, file: !1, line: 100, baseType: !3, size: 64, offset: 2944)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !7, file: !1, line: 101, baseType: !3, size: 64, offset: 3008)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !7, file: !1, line: 102, baseType: !3, size: 64, offset: 3072)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !7, file: !1, line: 103, baseType: !3, size: 64, offset: 3136)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "inputNr2", scope: !7, file: !1, line: 104, baseType: !3, size: 64, offset: 3200)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "inputMax2", scope: !7, file: !1, line: 105, baseType: !3, size: 64, offset: 3264)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "inputFree2", scope: !7, file: !1, line: 106, baseType: !3, size: 64, offset: 3328)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !7, file: !1, line: 107, baseType: !3, size: 64, offset: 3392)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr2", scope: !7, file: !1, line: 108, baseType: !3, size: 64, offset: 3456)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax2", scope: !7, file: !1, line: 109, baseType: !3, size: 64, offset: 3520)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "nodeFree", scope: !7, file: !1, line: 110, baseType: !3, size: 64, offset: 3584)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !7, file: !1, line: 111, baseType: !3, size: 64, offset: 3648)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "curChar", scope: !7, file: !1, line: 112, baseType: !3, size: 64, offset: 3712)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !7, file: !1, line: 113, baseType: !3, size: 64, offset: 3776)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "curBase", scope: !7, file: !1, line: 114, baseType: !3, size: 64, offset: 3840)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !7, file: !1, line: 115, baseType: !3, size: 64, offset: 3904)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "errNo2", scope: !7, file: !1, line: 116, baseType: !3, size: 64, offset: 3968)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "oldError", scope: !7, file: !1, line: 117, baseType: !3, size: 64, offset: 4032)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "oldErrNo", scope: !7, file: !1, line: 118, baseType: !3, size: 64, offset: 4096)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "progressive", scope: !7, file: !1, line: 119, baseType: !3, size: 64, offset: 4160)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "instate2", scope: !7, file: !1, line: 120, baseType: !3, size: 64, offset: 4224)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "token2", scope: !7, file: !1, line: 121, baseType: !3, size: 64, offset: 4288)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "directory2", scope: !7, file: !1, line: 122, baseType: !3, size: 64, offset: 4352)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "nsTab2", scope: !7, file: !1, line: 123, baseType: !3, size: 64, offset: 4416)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "attsall2", scope: !7, file: !1, line: 124, baseType: !3, size: 64, offset: 4480)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "pushTab2", scope: !7, file: !1, line: 125, baseType: !3, size: 64, offset: 4544)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "attsMax2", scope: !7, file: !1, line: 126, baseType: !3, size: 64, offset: 4608)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "pushMax2", scope: !7, file: !1, line: 127, baseType: !3, size: 64, offset: 4672)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "name2", scope: !7, file: !1, line: 128, baseType: !3, size: 64, offset: 4736)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "nameNr2", scope: !7, file: !1, line: 129, baseType: !3, size: 64, offset: 4800)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "nameMax2", scope: !7, file: !1, line: 130, baseType: !3, size: 64, offset: 4864)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nbChars2", scope: !7, file: !1, line: 131, baseType: !3, size: 64, offset: 4928)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "checkIndex2", scope: !7, file: !1, line: 132, baseType: !3, size: 64, offset: 4992)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "keepBlanks2", scope: !7, file: !1, line: 133, baseType: !3, size: 64, offset: 5056)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "disableSAX2", scope: !7, file: !1, line: 134, baseType: !3, size: 64, offset: 5120)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "inSubset2", scope: !7, file: !1, line: 135, baseType: !3, size: 64, offset: 5184)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "intSubName2", scope: !7, file: !1, line: 136, baseType: !3, size: 64, offset: 5248)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "extSubURI2", scope: !7, file: !1, line: 137, baseType: !3, size: 64, offset: 5312)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "extSubSystem2", scope: !7, file: !1, line: 138, baseType: !3, size: 64, offset: 5376)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "space2", scope: !7, file: !1, line: 139, baseType: !3, size: 64, offset: 5440)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "spaceNr2", scope: !7, file: !1, line: 140, baseType: !3, size: 64, offset: 5504)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "spaceMax2", scope: !7, file: !1, line: 141, baseType: !3, size: 64, offset: 5568)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "spaceTab2", scope: !7, file: !1, line: 142, baseType: !3, size: 64, offset: 5632)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "depth2", scope: !7, file: !1, line: 143, baseType: !3, size: 64, offset: 5696)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "entity2", scope: !7, file: !1, line: 144, baseType: !3, size: 64, offset: 5760)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "charset2", scope: !7, file: !1, line: 145, baseType: !3, size: 64, offset: 5824)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "flags2", scope: !7, file: !1, line: 146, baseType: !52, size: 32, offset: 5888)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "wellFormed2", scope: !7, file: !1, line: 147, baseType: !3, size: 64, offset: 5952)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nsWellFormed2", scope: !7, file: !1, line: 148, baseType: !3, size: 64, offset: 6016)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "valid2", scope: !7, file: !1, line: 149, baseType: !3, size: 64, offset: 6080)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "validate2", scope: !7, file: !1, line: 150, baseType: !3, size: 64, offset: 6144)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "vstate2", scope: !7, file: !1, line: 151, baseType: !3, size: 64, offset: 6208)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "vstateNr2", scope: !7, file: !1, line: 152, baseType: !3, size: 64, offset: 6272)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "vstateMax2", scope: !7, file: !1, line: 153, baseType: !3, size: 64, offset: 6336)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "vstateTab2", scope: !7, file: !1, line: 154, baseType: !3, size: 64, offset: 6400)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "instate3", scope: !7, file: !1, line: 155, baseType: !3, size: 64, offset: 6464)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "token3", scope: !7, file: !1, line: 156, baseType: !3, size: 64, offset: 6528)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "directory3", scope: !7, file: !1, line: 157, baseType: !3, size: 64, offset: 6592)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "input3", scope: !7, file: !1, line: 158, baseType: !3, size: 64, offset: 6656)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "inputNr3", scope: !7, file: !1, line: 159, baseType: !3, size: 64, offset: 6720)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "inputMax3", scope: !7, file: !1, line: 160, baseType: !3, size: 64, offset: 6784)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "inputFree3", scope: !7, file: !1, line: 161, baseType: !3, size: 64, offset: 6848)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "node3", scope: !7, file: !1, line: 162, baseType: !3, size: 64, offset: 6912)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr3", scope: !7, file: !1, line: 163, baseType: !3, size: 64, offset: 6976)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax3", scope: !7, file: !1, line: 164, baseType: !3, size: 64, offset: 7040)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nodeFree3", scope: !7, file: !1, line: 165, baseType: !3, size: 64, offset: 7104)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "cur3", scope: !7, file: !1, line: 166, baseType: !3, size: 64, offset: 7168)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "curChar3", scope: !7, file: !1, line: 167, baseType: !3, size: 64, offset: 7232)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "base3", scope: !7, file: !1, line: 168, baseType: !3, size: 64, offset: 7296)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "curBase3", scope: !7, file: !1, line: 169, baseType: !3, size: 64, offset: 7360)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "error3", scope: !7, file: !1, line: 170, baseType: !3, size: 64, offset: 7424)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "errNo3", scope: !7, file: !1, line: 171, baseType: !3, size: 64, offset: 7488)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "oldError3", scope: !7, file: !1, line: 172, baseType: !3, size: 64, offset: 7552)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "oldErrNo3", scope: !7, file: !1, line: 173, baseType: !3, size: 64, offset: 7616)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "progressive3", scope: !7, file: !1, line: 174, baseType: !3, size: 64, offset: 7680)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "instate4", scope: !7, file: !1, line: 175, baseType: !3, size: 64, offset: 7744)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "token4", scope: !7, file: !1, line: 176, baseType: !3, size: 64, offset: 7808)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "directory4", scope: !7, file: !1, line: 177, baseType: !3, size: 64, offset: 7872)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nsTab4", scope: !7, file: !1, line: 178, baseType: !3, size: 64, offset: 7936)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "attsall4", scope: !7, file: !1, line: 179, baseType: !3, size: 64, offset: 8000)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "pushTab4", scope: !7, file: !1, line: 180, baseType: !3, size: 64, offset: 8064)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "attsMax4", scope: !7, file: !1, line: 181, baseType: !3, size: 64, offset: 8128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pushMax4", scope: !7, file: !1, line: 182, baseType: !3, size: 64, offset: 8192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "name4", scope: !7, file: !1, line: 183, baseType: !3, size: 64, offset: 8256)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nameNr4", scope: !7, file: !1, line: 184, baseType: !3, size: 64, offset: 8320)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nameMax4", scope: !7, file: !1, line: 185, baseType: !3, size: 64, offset: 8384)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nbChars4", scope: !7, file: !1, line: 186, baseType: !3, size: 64, offset: 8448)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "checkIndex4", scope: !7, file: !1, line: 187, baseType: !3, size: 64, offset: 8512)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "keepBlanks4", scope: !7, file: !1, line: 188, baseType: !3, size: 64, offset: 8576)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "disableSAX4", scope: !7, file: !1, line: 189, baseType: !3, size: 64, offset: 8640)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "inSubset4", scope: !7, file: !1, line: 190, baseType: !3, size: 64, offset: 8704)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "intSubName4", scope: !7, file: !1, line: 191, baseType: !3, size: 64, offset: 8768)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "extSubURI4", scope: !7, file: !1, line: 192, baseType: !3, size: 64, offset: 8832)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "extSubSystem4", scope: !7, file: !1, line: 193, baseType: !3, size: 64, offset: 8896)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "space4", scope: !7, file: !1, line: 194, baseType: !3, size: 64, offset: 8960)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "spaceNr4", scope: !7, file: !1, line: 195, baseType: !3, size: 64, offset: 9024)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "spaceMax4", scope: !7, file: !1, line: 196, baseType: !3, size: 64, offset: 9088)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "spaceTab4", scope: !7, file: !1, line: 197, baseType: !3, size: 64, offset: 9152)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "depth4", scope: !7, file: !1, line: 198, baseType: !3, size: 64, offset: 9216)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "entity4", scope: !7, file: !1, line: 199, baseType: !3, size: 64, offset: 9280)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "charset4", scope: !7, file: !1, line: 200, baseType: !3, size: 64, offset: 9344)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "flags4", scope: !7, file: !1, line: 201, baseType: !52, size: 32, offset: 9408)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "wellFormed4", scope: !7, file: !1, line: 202, baseType: !3, size: 64, offset: 9472)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "nsWellFormed4", scope: !7, file: !1, line: 203, baseType: !3, size: 64, offset: 9536)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "valid4", scope: !7, file: !1, line: 204, baseType: !3, size: 64, offset: 9600)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "validate4", scope: !7, file: !1, line: 205, baseType: !3, size: 64, offset: 9664)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "vstate4", scope: !7, file: !1, line: 206, baseType: !3, size: 64, offset: 9728)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "vstateNr4", scope: !7, file: !1, line: 207, baseType: !3, size: 64, offset: 9792)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "vstateMax4", scope: !7, file: !1, line: 208, baseType: !3, size: 64, offset: 9856)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "vstateTab4", scope: !7, file: !1, line: 209, baseType: !3, size: 64, offset: 9920)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "instate5", scope: !7, file: !1, line: 210, baseType: !3, size: 64, offset: 9984)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "token5", scope: !7, file: !1, line: 211, baseType: !3, size: 64, offset: 10048)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "directory5", scope: !7, file: !1, line: 212, baseType: !3, size: 64, offset: 10112)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "input5", scope: !7, file: !1, line: 213, baseType: !3, size: 64, offset: 10176)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "inputNr5", scope: !7, file: !1, line: 214, baseType: !3, size: 64, offset: 10240)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "inputMax5", scope: !7, file: !1, line: 215, baseType: !3, size: 64, offset: 10304)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "inputFree5", scope: !7, file: !1, line: 216, baseType: !3, size: 64, offset: 10368)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "node5", scope: !7, file: !1, line: 217, baseType: !3, size: 64, offset: 10432)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr5", scope: !7, file: !1, line: 218, baseType: !3, size: 64, offset: 10496)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax5", scope: !7, file: !1, line: 219, baseType: !3, size: 64, offset: 10560)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "nodeFree5", scope: !7, file: !1, line: 220, baseType: !3, size: 64, offset: 10624)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "cur5", scope: !7, file: !1, line: 221, baseType: !3, size: 64, offset: 10688)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "curChar5", scope: !7, file: !1, line: 222, baseType: !3, size: 64, offset: 10752)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "base5", scope: !7, file: !1, line: 223, baseType: !3, size: 64, offset: 10816)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "curBase5", scope: !7, file: !1, line: 224, baseType: !3, size: 64, offset: 10880)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "error5", scope: !7, file: !1, line: 225, baseType: !3, size: 64, offset: 10944)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "errNo5", scope: !7, file: !1, line: 226, baseType: !3, size: 64, offset: 11008)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "oldError5", scope: !7, file: !1, line: 227, baseType: !3, size: 64, offset: 11072)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "oldErrNo5", scope: !7, file: !1, line: 228, baseType: !3, size: 64, offset: 11136)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "progressive5", scope: !7, file: !1, line: 229, baseType: !3, size: 64, offset: 11200)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "instate6", scope: !7, file: !1, line: 230, baseType: !3, size: 64, offset: 11264)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "token6", scope: !7, file: !1, line: 231, baseType: !3, size: 64, offset: 11328)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "directory6", scope: !7, file: !1, line: 232, baseType: !3, size: 64, offset: 11392)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "nsTab6", scope: !7, file: !1, line: 233, baseType: !3, size: 64, offset: 11456)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "attsall6", scope: !7, file: !1, line: 234, baseType: !3, size: 64, offset: 11520)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "pushTab6", scope: !7, file: !1, line: 235, baseType: !3, size: 64, offset: 11584)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "attsMax6", scope: !7, file: !1, line: 236, baseType: !3, size: 64, offset: 11648)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "pushMax6", scope: !7, file: !1, line: 237, baseType: !3, size: 64, offset: 11712)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "name6", scope: !7, file: !1, line: 238, baseType: !3, size: 64, offset: 11776)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "nameNr6", scope: !7, file: !1, line: 239, baseType: !3, size: 64, offset: 11840)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "nameMax6", scope: !7, file: !1, line: 240, baseType: !3, size: 64, offset: 11904)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "nbChars6", scope: !7, file: !1, line: 241, baseType: !3, size: 64, offset: 11968)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "checkIndex6", scope: !7, file: !1, line: 242, baseType: !3, size: 64, offset: 12032)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "keepBlanks6", scope: !7, file: !1, line: 243, baseType: !3, size: 64, offset: 12096)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "disableSAX6", scope: !7, file: !1, line: 244, baseType: !3, size: 64, offset: 12160)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "inSubset6", scope: !7, file: !1, line: 245, baseType: !3, size: 64, offset: 12224)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "intSubName6", scope: !7, file: !1, line: 246, baseType: !3, size: 64, offset: 12288)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "extSubURI6", scope: !7, file: !1, line: 247, baseType: !3, size: 64, offset: 12352)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "extSubSystem6", scope: !7, file: !1, line: 248, baseType: !3, size: 64, offset: 12416)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "space6", scope: !7, file: !1, line: 249, baseType: !3, size: 64, offset: 12480)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "spaceNr6", scope: !7, file: !1, line: 250, baseType: !3, size: 64, offset: 12544)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "spaceMax6", scope: !7, file: !1, line: 251, baseType: !3, size: 64, offset: 12608)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "spaceTab6", scope: !7, file: !1, line: 252, baseType: !3, size: 64, offset: 12672)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "depth6", scope: !7, file: !1, line: 253, baseType: !3, size: 64, offset: 12736)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "entity6", scope: !7, file: !1, line: 254, baseType: !3, size: 64, offset: 12800)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "charset6", scope: !7, file: !1, line: 255, baseType: !3, size: 64, offset: 12864)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "flags6", scope: !7, file: !1, line: 256, baseType: !52, size: 32, offset: 12928)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "wellFormed6", scope: !7, file: !1, line: 257, baseType: !3, size: 64, offset: 12992)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "nsWellFormed6", scope: !7, file: !1, line: 258, baseType: !3, size: 64, offset: 13056)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "valid6", scope: !7, file: !1, line: 259, baseType: !3, size: 64, offset: 13120)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "validate6", scope: !7, file: !1, line: 260, baseType: !3, size: 64, offset: 13184)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "vstate6", scope: !7, file: !1, line: 261, baseType: !3, size: 64, offset: 13248)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "vstateNr6", scope: !7, file: !1, line: 262, baseType: !3, size: 64, offset: 13312)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "vstateMax6", scope: !7, file: !1, line: 263, baseType: !3, size: 64, offset: 13376)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "vstateTab6", scope: !7, file: !1, line: 264, baseType: !3, size: 64, offset: 13440)
!263 = distinct !DICompileUnit(language: DW_LANG_C99, file: !264, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!264 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!265 = distinct !DICompileUnit(language: DW_LANG_C99, file: !266, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!266 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!267 = !{i32 7, !"Dwarf Version", i32 5}
!268 = !{i32 2, !"Debug Info Version", i32 3}
!269 = !{i32 1, !"wchar_size", i32 4}
!270 = !{i32 7, !"PIC Level", i32 2}
!271 = !{i32 7, !"PIE Level", i32 2}
!272 = !{i32 7, !"uwtable", i32 1}
!273 = !{i32 7, !"frame-pointer", i32 2}
!274 = !{!"Ubuntu clang version 14.0.6"}
!275 = distinct !DISubprogram(name: "xmlSAX2InitHtmlDefaultSAXHandler", scope: !1, file: !1, line: 268, type: !276, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !278)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !11}
!278 = !{}
!279 = !DILocalVariable(name: "handler", arg: 1, scope: !275, file: !1, line: 268, type: !11)
!280 = !DILocation(line: 268, column: 55, scope: !275)
!281 = !DILocation(line: 270, column: 9, scope: !282)
!282 = distinct !DILexicalBlock(scope: !275, file: !1, line: 270, column: 9)
!283 = !DILocation(line: 270, column: 9, scope: !275)
!284 = !DILocation(line: 271, column: 9, scope: !285)
!285 = distinct !DILexicalBlock(scope: !282, file: !1, line: 270, column: 18)
!286 = !DILocation(line: 271, column: 18, scope: !285)
!287 = !DILocation(line: 271, column: 30, scope: !285)
!288 = !DILocation(line: 272, column: 5, scope: !285)
!289 = !DILocation(line: 273, column: 1, scope: !275)
!290 = distinct !DISubprogram(name: "htmlParseComment", scope: !1, file: !1, line: 276, type: !291, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !278)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !4}
!293 = !DILocalVariable(name: "ctxt", arg: 1, scope: !290, file: !1, line: 276, type: !4)
!294 = !DILocation(line: 276, column: 40, scope: !290)
!295 = !DILocalVariable(name: "sax", scope: !290, file: !1, line: 281, type: !11)
!296 = !DILocation(line: 281, column: 21, scope: !290)
!297 = !DILocation(line: 282, column: 24, scope: !290)
!298 = !DILocation(line: 282, column: 5, scope: !290)
!299 = !DILocalVariable(name: "userData", scope: !290, file: !1, line: 285, type: !3)
!300 = !DILocation(line: 285, column: 11, scope: !290)
!301 = !DILocation(line: 286, column: 24, scope: !290)
!302 = !DILocation(line: 286, column: 5, scope: !290)
!303 = !DILocation(line: 289, column: 9, scope: !304)
!304 = distinct !DILexicalBlock(scope: !290, file: !1, line: 289, column: 9)
!305 = !DILocation(line: 289, column: 13, scope: !304)
!306 = !DILocation(line: 289, column: 9, scope: !290)
!307 = !DILocation(line: 290, column: 16, scope: !308)
!308 = distinct !DILexicalBlock(scope: !304, file: !1, line: 289, column: 22)
!309 = !DILocation(line: 290, column: 22, scope: !308)
!310 = !DILocation(line: 290, column: 9, scope: !308)
!311 = !DILocation(line: 291, column: 42, scope: !308)
!312 = !DILocation(line: 291, column: 48, scope: !308)
!313 = !DILocation(line: 291, column: 9, scope: !308)
!314 = !DILocation(line: 292, column: 26, scope: !308)
!315 = !DILocation(line: 292, column: 9, scope: !308)
!316 = !DILocation(line: 292, column: 15, scope: !308)
!317 = !DILocation(line: 292, column: 24, scope: !308)
!318 = !DILocation(line: 293, column: 5, scope: !308)
!319 = !DILocation(line: 296, column: 9, scope: !320)
!320 = distinct !DILexicalBlock(scope: !304, file: !1, line: 293, column: 12)
!321 = !DILocation(line: 299, column: 9, scope: !320)
!322 = !DILocation(line: 301, column: 16, scope: !320)
!323 = !DILocation(line: 301, column: 22, scope: !320)
!324 = !DILocation(line: 301, column: 9, scope: !320)
!325 = !DILocation(line: 301, column: 27, scope: !320)
!326 = !DILocation(line: 302, column: 26, scope: !320)
!327 = !DILocation(line: 302, column: 37, scope: !320)
!328 = !DILocation(line: 302, column: 48, scope: !320)
!329 = !DILocation(line: 302, column: 9, scope: !320)
!330 = !DILocation(line: 302, column: 15, scope: !320)
!331 = !DILocation(line: 302, column: 24, scope: !320)
!332 = !DILocation(line: 304, column: 1, scope: !290)
!333 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 306, type: !334, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !278)
!334 = !DISubroutineType(types: !335)
!335 = !{!52}
!336 = !DILocalVariable(name: "ctxt", scope: !333, file: !1, line: 308, type: !4)
!337 = !DILocation(line: 308, column: 22, scope: !333)
!338 = !DILocation(line: 308, column: 47, scope: !333)
!339 = !DILocation(line: 308, column: 29, scope: !333)
!340 = !DILocation(line: 309, column: 10, scope: !341)
!341 = distinct !DILexicalBlock(scope: !333, file: !1, line: 309, column: 9)
!342 = !DILocation(line: 309, column: 9, scope: !333)
!343 = !DILocation(line: 309, column: 16, scope: !341)
!344 = !DILocation(line: 312, column: 34, scope: !333)
!345 = !DILocation(line: 312, column: 17, scope: !333)
!346 = !DILocation(line: 312, column: 5, scope: !333)
!347 = !DILocation(line: 312, column: 11, scope: !333)
!348 = !DILocation(line: 312, column: 15, scope: !333)
!349 = !DILocation(line: 313, column: 24, scope: !333)
!350 = !DILocation(line: 313, column: 30, scope: !333)
!351 = !DILocation(line: 313, column: 5, scope: !333)
!352 = !DILocation(line: 316, column: 5, scope: !333)
!353 = !DILocation(line: 316, column: 11, scope: !333)
!354 = !DILocation(line: 316, column: 20, scope: !333)
!355 = !DILocation(line: 317, column: 5, scope: !333)
!356 = !DILocation(line: 317, column: 11, scope: !333)
!357 = !DILocation(line: 317, column: 19, scope: !333)
!358 = !DILocation(line: 318, column: 5, scope: !333)
!359 = !DILocation(line: 318, column: 11, scope: !333)
!360 = !DILocation(line: 318, column: 20, scope: !333)
!361 = !DILocation(line: 319, column: 5, scope: !333)
!362 = !DILocation(line: 319, column: 11, scope: !333)
!363 = !DILocation(line: 319, column: 21, scope: !333)
!364 = !DILocation(line: 322, column: 22, scope: !333)
!365 = !DILocation(line: 322, column: 5, scope: !333)
!366 = !DILocation(line: 325, column: 10, scope: !333)
!367 = !DILocation(line: 325, column: 16, scope: !333)
!368 = !DILocation(line: 325, column: 5, scope: !333)
!369 = !DILocation(line: 326, column: 10, scope: !333)
!370 = !DILocation(line: 326, column: 5, scope: !333)
!371 = !DILocation(line: 328, column: 5, scope: !333)
!372 = !DILocation(line: 329, column: 1, scope: !333)
!373 = distinct !DISubprogram(name: "memcpy", scope: !374, file: !374, line: 12, type: !375, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !278)
!374 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!375 = !DISubroutineType(types: !376)
!376 = !{!3, !3, !377, !379}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !380, line: 46, baseType: !65)
!380 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!381 = !DILocalVariable(name: "destaddr", arg: 1, scope: !373, file: !374, line: 12, type: !3)
!382 = !DILocation(line: 12, column: 20, scope: !373)
!383 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !373, file: !374, line: 12, type: !377)
!384 = !DILocation(line: 12, column: 42, scope: !373)
!385 = !DILocalVariable(name: "len", arg: 3, scope: !373, file: !374, line: 12, type: !379)
!386 = !DILocation(line: 12, column: 58, scope: !373)
!387 = !DILocalVariable(name: "dest", scope: !373, file: !374, line: 13, type: !388)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!390 = !DILocation(line: 13, column: 9, scope: !373)
!391 = !DILocation(line: 13, column: 16, scope: !373)
!392 = !DILocalVariable(name: "src", scope: !373, file: !374, line: 14, type: !393)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!395 = !DILocation(line: 14, column: 15, scope: !373)
!396 = !DILocation(line: 14, column: 21, scope: !373)
!397 = !DILocation(line: 16, column: 3, scope: !373)
!398 = !DILocation(line: 16, column: 13, scope: !373)
!399 = !DILocation(line: 16, column: 16, scope: !373)
!400 = !DILocation(line: 17, column: 19, scope: !373)
!401 = !DILocation(line: 17, column: 15, scope: !373)
!402 = !DILocation(line: 17, column: 10, scope: !373)
!403 = !DILocation(line: 17, column: 13, scope: !373)
!404 = distinct !{!404, !397, !400, !405}
!405 = !{!"llvm.loop.mustprogress"}
!406 = !DILocation(line: 18, column: 10, scope: !373)
!407 = !DILocation(line: 18, column: 3, scope: !373)
!408 = distinct !DISubprogram(name: "memset", scope: !409, file: !409, line: 12, type: !410, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !265, retainedNodes: !278)
!409 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!410 = !DISubroutineType(types: !411)
!411 = !{!3, !3, !52, !379}
!412 = !DILocalVariable(name: "dst", arg: 1, scope: !408, file: !409, line: 12, type: !3)
!413 = !DILocation(line: 12, column: 20, scope: !408)
!414 = !DILocalVariable(name: "s", arg: 2, scope: !408, file: !409, line: 12, type: !52)
!415 = !DILocation(line: 12, column: 29, scope: !408)
!416 = !DILocalVariable(name: "count", arg: 3, scope: !408, file: !409, line: 12, type: !379)
!417 = !DILocation(line: 12, column: 39, scope: !408)
!418 = !DILocalVariable(name: "a", scope: !408, file: !409, line: 13, type: !388)
!419 = !DILocation(line: 13, column: 9, scope: !408)
!420 = !DILocation(line: 13, column: 13, scope: !408)
!421 = !DILocation(line: 14, column: 3, scope: !408)
!422 = !DILocation(line: 14, column: 15, scope: !408)
!423 = !DILocation(line: 14, column: 18, scope: !408)
!424 = !DILocation(line: 15, column: 12, scope: !408)
!425 = !DILocation(line: 15, column: 7, scope: !408)
!426 = !DILocation(line: 15, column: 10, scope: !408)
!427 = distinct !{!427, !421, !424, !405}
!428 = !DILocation(line: 16, column: 10, scope: !408)
!429 = !DILocation(line: 16, column: 3, scope: !408)

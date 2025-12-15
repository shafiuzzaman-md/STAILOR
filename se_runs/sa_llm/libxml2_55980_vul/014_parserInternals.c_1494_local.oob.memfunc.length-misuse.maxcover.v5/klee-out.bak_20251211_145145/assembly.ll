; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/014_parserInternals.c_1494_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/014_parserInternals.c_1494_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlParserCtxt = type { %struct._xmlSAXHandler*, i8*, i32, i8* }
%struct._xmlSAXHandler = type { i32, [100 x i8] }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"(ctxt->sax != ((void*)0) && sizeof(xmlSAXHandler) <= 4096) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [114 x i8] c"se_runs/sa_llm/libxml2_55980_vul/014_parserInternals.c_1494_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlCtxtUseOptionsInternal = private unnamed_addr constant [73 x i8] c"void xmlCtxtUseOptionsInternal(xmlParserCtxt *, xmlSAXHandler *, void *)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ctxt\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"sax\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"userData\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlCtxtUseOptionsInternal(%struct._xmlParserCtxt* noundef %0, %struct._xmlSAXHandler* noundef %1, i8* noundef %2) #0 !dbg !35 {
  %4 = alloca %struct._xmlParserCtxt*, align 8
  %5 = alloca %struct._xmlSAXHandler*, align 8
  %6 = alloca i8*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %4, metadata !39, metadata !DIExpression()), !dbg !40
  store %struct._xmlSAXHandler* %1, %struct._xmlSAXHandler** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler** %5, metadata !41, metadata !DIExpression()), !dbg !42
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !43, metadata !DIExpression()), !dbg !44
  %7 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %5, align 8, !dbg !45
  %8 = icmp eq %struct._xmlSAXHandler* %7, null, !dbg !47
  br i1 %8, label %9, label %19, !dbg !48

9:                                                ; preds = %3
  %10 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !49
  %11 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %10, i32 0, i32 0, !dbg !51
  %12 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %11, align 8, !dbg !51
  %13 = bitcast %struct._xmlSAXHandler* %12 to i8*, !dbg !52
  %14 = call i8* @memset(i8* %13, i32 0, i64 104), !dbg !52
  %15 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !53
  %16 = bitcast %struct._xmlParserCtxt* %15 to i8*, !dbg !53
  %17 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !54
  %18 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %17, i32 0, i32 1, !dbg !55
  store i8* %16, i8** %18, align 8, !dbg !56
  br label %67, !dbg !57

19:                                               ; preds = %3
  %20 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %5, align 8, !dbg !58
  %21 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %20, i32 0, i32 0, !dbg !61
  %22 = load i32, i32* %21, align 4, !dbg !61
  %23 = icmp eq i32 %22, -559038737, !dbg !62
  br i1 %23, label %24, label %32, !dbg !63

24:                                               ; preds = %19
  %25 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !64
  %26 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %25, i32 0, i32 0, !dbg !66
  %27 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %26, align 8, !dbg !66
  %28 = bitcast %struct._xmlSAXHandler* %27 to i8*, !dbg !67
  %29 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %5, align 8, !dbg !68
  %30 = bitcast %struct._xmlSAXHandler* %29 to i8*, !dbg !67
  %31 = call i8* @memcpy(i8* %28, i8* %30, i64 104), !dbg !67
  br label %55, !dbg !69

32:                                               ; preds = %19
  %33 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !70
  %34 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %33, i32 0, i32 0, !dbg !70
  %35 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %34, align 8, !dbg !70
  %36 = icmp ne %struct._xmlSAXHandler* %35, null, !dbg !70
  br i1 %36, label %37, label %39, !dbg !70

37:                                               ; preds = %32
  br i1 true, label %38, label %39, !dbg !70

38:                                               ; preds = %37
  br label %41, !dbg !70

39:                                               ; preds = %37, %32
  %40 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.2, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.xmlCtxtUseOptionsInternal, i64 0, i64 0)), !dbg !70
  br label %41, !dbg !70

41:                                               ; preds = %39, %38
  %42 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.2, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.xmlCtxtUseOptionsInternal, i64 0, i64 0)), !dbg !72
  %43 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !73
  %44 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %43, i32 0, i32 0, !dbg !74
  %45 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %44, align 8, !dbg !74
  %46 = bitcast %struct._xmlSAXHandler* %45 to i8*, !dbg !75
  %47 = call i8* @memset(i8* %46, i32 0, i64 104), !dbg !75
  %48 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !76
  %49 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %48, i32 0, i32 0, !dbg !77
  %50 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %49, align 8, !dbg !77
  %51 = bitcast %struct._xmlSAXHandler* %50 to i8*, !dbg !78
  %52 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %5, align 8, !dbg !79
  %53 = bitcast %struct._xmlSAXHandler* %52 to i8*, !dbg !78
  %54 = call i8* @memcpy(i8* %51, i8* %53, i64 8), !dbg !78
  br label %55

55:                                               ; preds = %41, %24
  %56 = load i8*, i8** %6, align 8, !dbg !80
  %57 = icmp ne i8* %56, null, !dbg !80
  br i1 %57, label %58, label %60, !dbg !80

58:                                               ; preds = %55
  %59 = load i8*, i8** %6, align 8, !dbg !81
  br label %63, !dbg !80

60:                                               ; preds = %55
  %61 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !82
  %62 = bitcast %struct._xmlParserCtxt* %61 to i8*, !dbg !82
  br label %63, !dbg !80

63:                                               ; preds = %60, %58
  %64 = phi i8* [ %59, %58 ], [ %62, %60 ], !dbg !80
  %65 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !83
  %66 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %65, i32 0, i32 1, !dbg !84
  store i8* %64, i8** %66, align 8, !dbg !85
  br label %67

67:                                               ; preds = %63, %9
  %68 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !86
  %69 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %68, i32 0, i32 2, !dbg !87
  store i32 0, i32* %69, align 8, !dbg !88
  %70 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !89
  %71 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %70, i32 0, i32 3, !dbg !90
  store i8* null, i8** %71, align 8, !dbg !91
  ret void, !dbg !92
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !93 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt*, align 8
  %3 = alloca %struct._xmlSAXHandler*, align 8
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !96, metadata !DIExpression()), !dbg !97
  %5 = call noalias i8* @malloc(i64 noundef 32) #8, !dbg !98
  %6 = bitcast i8* %5 to %struct._xmlParserCtxt*, !dbg !99
  store %struct._xmlParserCtxt* %6, %struct._xmlParserCtxt** %2, align 8, !dbg !97
  %7 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !100
  %8 = bitcast %struct._xmlParserCtxt* %7 to i8*, !dbg !100
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 32, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !dbg !101
  %9 = call noalias i8* @malloc(i64 noundef 104) #8, !dbg !102
  %10 = bitcast i8* %9 to %struct._xmlSAXHandler*, !dbg !103
  %11 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !104
  %12 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %11, i32 0, i32 0, !dbg !105
  store %struct._xmlSAXHandler* %10, %struct._xmlSAXHandler** %12, align 8, !dbg !106
  %13 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !107
  %14 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %13, i32 0, i32 0, !dbg !108
  %15 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %14, align 8, !dbg !108
  %16 = icmp ne %struct._xmlSAXHandler* %15, null, !dbg !109
  %17 = zext i1 %16 to i32, !dbg !109
  %18 = sext i32 %17 to i64, !dbg !107
  call void @klee_assume(i64 noundef %18), !dbg !110
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler** %3, metadata !111, metadata !DIExpression()), !dbg !112
  %19 = call noalias i8* @malloc(i64 noundef 104) #8, !dbg !113
  %20 = bitcast i8* %19 to %struct._xmlSAXHandler*, !dbg !114
  store %struct._xmlSAXHandler* %20, %struct._xmlSAXHandler** %3, align 8, !dbg !112
  %21 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !115
  %22 = bitcast %struct._xmlSAXHandler* %21 to i8*, !dbg !115
  call void @klee_make_symbolic(i8* noundef %22, i64 noundef 104, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)), !dbg !116
  call void @llvm.dbg.declare(metadata i8** %4, metadata !117, metadata !DIExpression()), !dbg !118
  %23 = bitcast i8** %4 to i8*, !dbg !119
  call void @klee_make_symbolic(i8* noundef %23, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)), !dbg !120
  %24 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !121
  %25 = icmp ne %struct._xmlSAXHandler* %24, null, !dbg !122
  %26 = zext i1 %25 to i32, !dbg !122
  %27 = sext i32 %26 to i64, !dbg !121
  call void @klee_assume(i64 noundef %27), !dbg !123
  %28 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !124
  %29 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %28, i32 0, i32 0, !dbg !125
  %30 = load i32, i32* %29, align 4, !dbg !125
  %31 = icmp ne i32 %30, -559038737, !dbg !126
  %32 = zext i1 %31 to i32, !dbg !126
  %33 = sext i32 %32 to i64, !dbg !124
  call void @klee_assume(i64 noundef %33), !dbg !127
  %34 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !128
  %35 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !129
  %36 = load i8*, i8** %4, align 8, !dbg !130
  call void @xmlCtxtUseOptionsInternal(%struct._xmlParserCtxt* noundef %34, %struct._xmlSAXHandler* noundef %35, i8* noundef %36), !dbg !131
  %37 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !132
  %38 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %37, i32 0, i32 0, !dbg !133
  %39 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %38, align 8, !dbg !133
  %40 = bitcast %struct._xmlSAXHandler* %39 to i8*, !dbg !132
  call void @free(i8* noundef %40) #8, !dbg !134
  %41 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !135
  %42 = bitcast %struct._xmlSAXHandler* %41 to i8*, !dbg !135
  call void @free(i8* noundef %42) #8, !dbg !136
  %43 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !137
  %44 = bitcast %struct._xmlParserCtxt* %43 to i8*, !dbg !137
  call void @free(i8* noundef %44) #8, !dbg !138
  ret i32 0, !dbg !139
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #5

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #6

declare void @klee_assume(i64 noundef) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !140 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !149, metadata !DIExpression()), !dbg !150
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !151, metadata !DIExpression()), !dbg !152
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata i8** %7, metadata !155, metadata !DIExpression()), !dbg !157
  %9 = load i8*, i8** %4, align 8, !dbg !158
  store i8* %9, i8** %7, align 8, !dbg !157
  call void @llvm.dbg.declare(metadata i8** %8, metadata !159, metadata !DIExpression()), !dbg !162
  %10 = load i8*, i8** %5, align 8, !dbg !163
  store i8* %10, i8** %8, align 8, !dbg !162
  br label %11, !dbg !164

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !165
  %13 = add i64 %12, -1, !dbg !165
  store i64 %13, i64* %6, align 8, !dbg !165
  %14 = icmp ugt i64 %12, 0, !dbg !166
  br i1 %14, label %15, label %21, !dbg !164

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !167
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !167
  store i8* %17, i8** %8, align 8, !dbg !167
  %18 = load i8, i8* %16, align 1, !dbg !168
  %19 = load i8*, i8** %7, align 8, !dbg !169
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !169
  store i8* %20, i8** %7, align 8, !dbg !169
  store i8 %18, i8* %19, align 1, !dbg !170
  br label %11, !dbg !164, !llvm.loop !171

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !173
  ret i8* %22, !dbg !174
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !175 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !179, metadata !DIExpression()), !dbg !180
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !181, metadata !DIExpression()), !dbg !182
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !183, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata i8** %7, metadata !185, metadata !DIExpression()), !dbg !186
  %8 = load i8*, i8** %4, align 8, !dbg !187
  store i8* %8, i8** %7, align 8, !dbg !186
  br label %9, !dbg !188

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !189
  %11 = add i64 %10, -1, !dbg !189
  store i64 %11, i64* %6, align 8, !dbg !189
  %12 = icmp ugt i64 %10, 0, !dbg !190
  br i1 %12, label %13, label %18, !dbg !188

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !191
  %15 = trunc i32 %14 to i8, !dbg !191
  %16 = load i8*, i8** %7, align 8, !dbg !192
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !192
  store i8* %17, i8** %7, align 8, !dbg !192
  store i8 %15, i8* %16, align 1, !dbg !193
  br label %9, !dbg !188, !llvm.loop !194

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !195
  ret i8* %19, !dbg !196
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34, !34, !34}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/014_parserInternals.c_1494_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "302002beafa9718710d1ee990ce735a7")
!2 = !{!3, !4, !9}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 27, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 22, size: 256, elements: !7)
!7 = !{!8, !20, !21, !22}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "sax", scope: !6, file: !1, line: 23, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXHandler", file: !1, line: 20, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXHandler", file: !1, line: 16, size: 832, elements: !12)
!12 = !{!13, !15}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !11, file: !1, line: 17, baseType: !14, size: 32)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !11, file: !1, line: 19, baseType: !16, size: 800, offset: 32)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 800, elements: !18)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19}
!19 = !DISubrange(count: 100)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !6, file: !1, line: 24, baseType: !3, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "maxatts", scope: !6, file: !1, line: 25, baseType: !14, size: 32, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "atts", scope: !6, file: !1, line: 26, baseType: !3, size: 64, offset: 192)
!23 = distinct !DICompileUnit(language: DW_LANG_C99, file: !24, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!24 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!25 = distinct !DICompileUnit(language: DW_LANG_C99, file: !26, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!26 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!27 = !{i32 7, !"Dwarf Version", i32 5}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"Ubuntu clang version 14.0.6"}
!35 = distinct !DISubprogram(name: "xmlCtxtUseOptionsInternal", scope: !1, file: !1, line: 30, type: !36, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !38)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !4, !9, !3}
!38 = !{}
!39 = !DILocalVariable(name: "ctxt", arg: 1, scope: !35, file: !1, line: 30, type: !4)
!40 = !DILocation(line: 30, column: 47, scope: !35)
!41 = !DILocalVariable(name: "sax", arg: 2, scope: !35, file: !1, line: 30, type: !9)
!42 = !DILocation(line: 30, column: 68, scope: !35)
!43 = !DILocalVariable(name: "userData", arg: 3, scope: !35, file: !1, line: 30, type: !3)
!44 = !DILocation(line: 30, column: 79, scope: !35)
!45 = !DILocation(line: 31, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !35, file: !1, line: 31, column: 9)
!47 = !DILocation(line: 31, column: 13, scope: !46)
!48 = !DILocation(line: 31, column: 9, scope: !35)
!49 = !DILocation(line: 32, column: 16, scope: !50)
!50 = distinct !DILexicalBlock(scope: !46, file: !1, line: 31, column: 22)
!51 = !DILocation(line: 32, column: 22, scope: !50)
!52 = !DILocation(line: 32, column: 9, scope: !50)
!53 = !DILocation(line: 33, column: 26, scope: !50)
!54 = !DILocation(line: 33, column: 9, scope: !50)
!55 = !DILocation(line: 33, column: 15, scope: !50)
!56 = !DILocation(line: 33, column: 24, scope: !50)
!57 = !DILocation(line: 34, column: 5, scope: !50)
!58 = !DILocation(line: 35, column: 13, scope: !59)
!59 = distinct !DILexicalBlock(scope: !60, file: !1, line: 35, column: 13)
!60 = distinct !DILexicalBlock(scope: !46, file: !1, line: 34, column: 12)
!61 = !DILocation(line: 35, column: 18, scope: !59)
!62 = !DILocation(line: 35, column: 30, scope: !59)
!63 = !DILocation(line: 35, column: 13, scope: !60)
!64 = !DILocation(line: 36, column: 20, scope: !65)
!65 = distinct !DILexicalBlock(scope: !59, file: !1, line: 35, column: 45)
!66 = !DILocation(line: 36, column: 26, scope: !65)
!67 = !DILocation(line: 36, column: 13, scope: !65)
!68 = !DILocation(line: 36, column: 31, scope: !65)
!69 = !DILocation(line: 37, column: 9, scope: !65)
!70 = !DILocation(line: 40, column: 13, scope: !71)
!71 = distinct !DILexicalBlock(scope: !59, file: !1, line: 37, column: 16)
!72 = !DILocation(line: 41, column: 13, scope: !71)
!73 = !DILocation(line: 42, column: 20, scope: !71)
!74 = !DILocation(line: 42, column: 26, scope: !71)
!75 = !DILocation(line: 42, column: 13, scope: !71)
!76 = !DILocation(line: 43, column: 20, scope: !71)
!77 = !DILocation(line: 43, column: 26, scope: !71)
!78 = !DILocation(line: 43, column: 13, scope: !71)
!79 = !DILocation(line: 43, column: 31, scope: !71)
!80 = !DILocation(line: 45, column: 26, scope: !60)
!81 = !DILocation(line: 45, column: 37, scope: !60)
!82 = !DILocation(line: 45, column: 48, scope: !60)
!83 = !DILocation(line: 45, column: 9, scope: !60)
!84 = !DILocation(line: 45, column: 15, scope: !60)
!85 = !DILocation(line: 45, column: 24, scope: !60)
!86 = !DILocation(line: 47, column: 5, scope: !35)
!87 = !DILocation(line: 47, column: 11, scope: !35)
!88 = !DILocation(line: 47, column: 19, scope: !35)
!89 = !DILocation(line: 48, column: 5, scope: !35)
!90 = !DILocation(line: 48, column: 11, scope: !35)
!91 = !DILocation(line: 48, column: 16, scope: !35)
!92 = !DILocation(line: 49, column: 1, scope: !35)
!93 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 51, type: !94, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !38)
!94 = !DISubroutineType(types: !95)
!95 = !{!14}
!96 = !DILocalVariable(name: "ctxt", scope: !93, file: !1, line: 53, type: !4)
!97 = !DILocation(line: 53, column: 20, scope: !93)
!98 = !DILocation(line: 53, column: 44, scope: !93)
!99 = !DILocation(line: 53, column: 27, scope: !93)
!100 = !DILocation(line: 54, column: 24, scope: !93)
!101 = !DILocation(line: 54, column: 5, scope: !93)
!102 = !DILocation(line: 57, column: 34, scope: !93)
!103 = !DILocation(line: 57, column: 17, scope: !93)
!104 = !DILocation(line: 57, column: 5, scope: !93)
!105 = !DILocation(line: 57, column: 11, scope: !93)
!106 = !DILocation(line: 57, column: 15, scope: !93)
!107 = !DILocation(line: 58, column: 17, scope: !93)
!108 = !DILocation(line: 58, column: 23, scope: !93)
!109 = !DILocation(line: 58, column: 27, scope: !93)
!110 = !DILocation(line: 58, column: 5, scope: !93)
!111 = !DILocalVariable(name: "sax", scope: !93, file: !1, line: 61, type: !9)
!112 = !DILocation(line: 61, column: 20, scope: !93)
!113 = !DILocation(line: 61, column: 43, scope: !93)
!114 = !DILocation(line: 61, column: 26, scope: !93)
!115 = !DILocation(line: 62, column: 24, scope: !93)
!116 = !DILocation(line: 62, column: 5, scope: !93)
!117 = !DILocalVariable(name: "userData", scope: !93, file: !1, line: 65, type: !3)
!118 = !DILocation(line: 65, column: 11, scope: !93)
!119 = !DILocation(line: 66, column: 24, scope: !93)
!120 = !DILocation(line: 66, column: 5, scope: !93)
!121 = !DILocation(line: 69, column: 17, scope: !93)
!122 = !DILocation(line: 69, column: 21, scope: !93)
!123 = !DILocation(line: 69, column: 5, scope: !93)
!124 = !DILocation(line: 73, column: 17, scope: !93)
!125 = !DILocation(line: 73, column: 22, scope: !93)
!126 = !DILocation(line: 73, column: 34, scope: !93)
!127 = !DILocation(line: 73, column: 5, scope: !93)
!128 = !DILocation(line: 76, column: 31, scope: !93)
!129 = !DILocation(line: 76, column: 37, scope: !93)
!130 = !DILocation(line: 76, column: 42, scope: !93)
!131 = !DILocation(line: 76, column: 5, scope: !93)
!132 = !DILocation(line: 79, column: 10, scope: !93)
!133 = !DILocation(line: 79, column: 16, scope: !93)
!134 = !DILocation(line: 79, column: 5, scope: !93)
!135 = !DILocation(line: 80, column: 10, scope: !93)
!136 = !DILocation(line: 80, column: 5, scope: !93)
!137 = !DILocation(line: 81, column: 10, scope: !93)
!138 = !DILocation(line: 81, column: 5, scope: !93)
!139 = !DILocation(line: 83, column: 5, scope: !93)
!140 = distinct !DISubprogram(name: "memcpy", scope: !141, file: !141, line: 12, type: !142, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !38)
!141 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!142 = !DISubroutineType(types: !143)
!143 = !{!3, !3, !144, !146}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !147, line: 46, baseType: !148)
!147 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!148 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!149 = !DILocalVariable(name: "destaddr", arg: 1, scope: !140, file: !141, line: 12, type: !3)
!150 = !DILocation(line: 12, column: 20, scope: !140)
!151 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !140, file: !141, line: 12, type: !144)
!152 = !DILocation(line: 12, column: 42, scope: !140)
!153 = !DILocalVariable(name: "len", arg: 3, scope: !140, file: !141, line: 12, type: !146)
!154 = !DILocation(line: 12, column: 58, scope: !140)
!155 = !DILocalVariable(name: "dest", scope: !140, file: !141, line: 13, type: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!157 = !DILocation(line: 13, column: 9, scope: !140)
!158 = !DILocation(line: 13, column: 16, scope: !140)
!159 = !DILocalVariable(name: "src", scope: !140, file: !141, line: 14, type: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!162 = !DILocation(line: 14, column: 15, scope: !140)
!163 = !DILocation(line: 14, column: 21, scope: !140)
!164 = !DILocation(line: 16, column: 3, scope: !140)
!165 = !DILocation(line: 16, column: 13, scope: !140)
!166 = !DILocation(line: 16, column: 16, scope: !140)
!167 = !DILocation(line: 17, column: 19, scope: !140)
!168 = !DILocation(line: 17, column: 15, scope: !140)
!169 = !DILocation(line: 17, column: 10, scope: !140)
!170 = !DILocation(line: 17, column: 13, scope: !140)
!171 = distinct !{!171, !164, !167, !172}
!172 = !{!"llvm.loop.mustprogress"}
!173 = !DILocation(line: 18, column: 10, scope: !140)
!174 = !DILocation(line: 18, column: 3, scope: !140)
!175 = distinct !DISubprogram(name: "memset", scope: !176, file: !176, line: 12, type: !177, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !38)
!176 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!177 = !DISubroutineType(types: !178)
!178 = !{!3, !3, !14, !146}
!179 = !DILocalVariable(name: "dst", arg: 1, scope: !175, file: !176, line: 12, type: !3)
!180 = !DILocation(line: 12, column: 20, scope: !175)
!181 = !DILocalVariable(name: "s", arg: 2, scope: !175, file: !176, line: 12, type: !14)
!182 = !DILocation(line: 12, column: 29, scope: !175)
!183 = !DILocalVariable(name: "count", arg: 3, scope: !175, file: !176, line: 12, type: !146)
!184 = !DILocation(line: 12, column: 39, scope: !175)
!185 = !DILocalVariable(name: "a", scope: !175, file: !176, line: 13, type: !156)
!186 = !DILocation(line: 13, column: 9, scope: !175)
!187 = !DILocation(line: 13, column: 13, scope: !175)
!188 = !DILocation(line: 14, column: 3, scope: !175)
!189 = !DILocation(line: 14, column: 15, scope: !175)
!190 = !DILocation(line: 14, column: 18, scope: !175)
!191 = !DILocation(line: 15, column: 12, scope: !175)
!192 = !DILocation(line: 15, column: 7, scope: !175)
!193 = !DILocation(line: 15, column: 10, scope: !175)
!194 = distinct !{!194, !188, !191, !172}
!195 = !DILocation(line: 16, column: 10, scope: !175)
!196 = !DILocation(line: 16, column: 3, scope: !175)

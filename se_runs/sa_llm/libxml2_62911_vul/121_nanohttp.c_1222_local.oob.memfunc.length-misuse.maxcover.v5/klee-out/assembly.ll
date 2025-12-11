; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/121_nanohttp.c_1222_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/121_nanohttp.c_1222_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNanoHTTPCtxt = type { i8*, i8*, i32, i32, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, i32, i8* }

@.str = private unnamed_addr constant [9 x i8] c"recv_ret\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ctxt\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"read_len\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [86 x i8] c"(read_len <= (ctxt->inptr - ctxt->inrptr) && read_len <= 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_62911_vul/121_nanohttp.c_1222_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlNanoHTTPMethodRedir = private unnamed_addr constant [94 x i8] c"int xmlNanoHTTPMethodRedir(const char *, const char *, const char *, char **, char **, int *)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"URL\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"input\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlNanoHTTPRecv(%struct._xmlNanoHTTPCtxt* noundef %0) #0 !dbg !35 {
  %2 = alloca %struct._xmlNanoHTTPCtxt*, align 8
  %3 = alloca i32, align 4
  store %struct._xmlNanoHTTPCtxt* %0, %struct._xmlNanoHTTPCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNanoHTTPCtxt** %2, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %3, metadata !41, metadata !DIExpression()), !dbg !42
  %4 = bitcast i32* %3 to i8*, !dbg !43
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !44
  %5 = load i32, i32* %3, align 4, !dbg !45
  %6 = icmp sge i32 %5, -1, !dbg !46
  br i1 %6, label %7, label %10, !dbg !47

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4, !dbg !48
  %9 = icmp sle i32 %8, 10, !dbg !49
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi i1 [ false, %1 ], [ %9, %7 ], !dbg !50
  %12 = zext i1 %11 to i32, !dbg !47
  %13 = sext i32 %12 to i64, !dbg !45
  call void @klee_assume(i64 noundef %13), !dbg !51
  %14 = load i32, i32* %3, align 4, !dbg !52
  ret i32 %14, !dbg !53
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlNanoHTTPRead(%struct._xmlNanoHTTPCtxt* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !54 {
  %4 = alloca %struct._xmlNanoHTTPCtxt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct._xmlNanoHTTPCtxt* %0, %struct._xmlNanoHTTPCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNanoHTTPCtxt** %4, metadata !57, metadata !DIExpression()), !dbg !58
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !59, metadata !DIExpression()), !dbg !60
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !61, metadata !DIExpression()), !dbg !62
  br label %7, !dbg !63

7:                                                ; preds = %25, %3
  %8 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %4, align 8, !dbg !64
  %9 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %8, i32 0, i32 0, !dbg !65
  %10 = load i8*, i8** %9, align 8, !dbg !65
  %11 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %4, align 8, !dbg !66
  %12 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %11, i32 0, i32 1, !dbg !67
  %13 = load i8*, i8** %12, align 8, !dbg !67
  %14 = ptrtoint i8* %10 to i64, !dbg !68
  %15 = ptrtoint i8* %13 to i64, !dbg !68
  %16 = sub i64 %14, %15, !dbg !68
  %17 = load i32, i32* %6, align 4, !dbg !69
  %18 = sext i32 %17 to i64, !dbg !69
  %19 = icmp slt i64 %16, %18, !dbg !70
  br i1 %19, label %20, label %26, !dbg !63

20:                                               ; preds = %7
  %21 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %4, align 8, !dbg !71
  %22 = call i32 @xmlNanoHTTPRecv(%struct._xmlNanoHTTPCtxt* noundef %21), !dbg !74
  %23 = icmp sle i32 %22, 0, !dbg !75
  br i1 %23, label %24, label %25, !dbg !76

24:                                               ; preds = %20
  br label %26, !dbg !77

25:                                               ; preds = %20
  br label %7, !dbg !63, !llvm.loop !78

26:                                               ; preds = %24, %7
  %27 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %4, align 8, !dbg !81
  %28 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %27, i32 0, i32 0, !dbg !83
  %29 = load i8*, i8** %28, align 8, !dbg !83
  %30 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %4, align 8, !dbg !84
  %31 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %30, i32 0, i32 1, !dbg !85
  %32 = load i8*, i8** %31, align 8, !dbg !85
  %33 = ptrtoint i8* %29 to i64, !dbg !86
  %34 = ptrtoint i8* %32 to i64, !dbg !86
  %35 = sub i64 %33, %34, !dbg !86
  %36 = load i32, i32* %6, align 4, !dbg !87
  %37 = sext i32 %36 to i64, !dbg !87
  %38 = icmp slt i64 %35, %37, !dbg !88
  br i1 %38, label %39, label %50, !dbg !89

39:                                               ; preds = %26
  %40 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %4, align 8, !dbg !90
  %41 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %40, i32 0, i32 0, !dbg !91
  %42 = load i8*, i8** %41, align 8, !dbg !91
  %43 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %4, align 8, !dbg !92
  %44 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %43, i32 0, i32 1, !dbg !93
  %45 = load i8*, i8** %44, align 8, !dbg !93
  %46 = ptrtoint i8* %42 to i64, !dbg !94
  %47 = ptrtoint i8* %45 to i64, !dbg !94
  %48 = sub i64 %46, %47, !dbg !94
  %49 = trunc i64 %48 to i32, !dbg !90
  store i32 %49, i32* %6, align 4, !dbg !95
  br label %50, !dbg !96

50:                                               ; preds = %39, %26
  %51 = load i8*, i8** %5, align 8, !dbg !97
  %52 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %4, align 8, !dbg !98
  %53 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %52, i32 0, i32 1, !dbg !99
  %54 = load i8*, i8** %53, align 8, !dbg !99
  %55 = load i32, i32* %6, align 4, !dbg !100
  %56 = sext i32 %55 to i64, !dbg !100
  %57 = call i8* @memcpy(i8* %51, i8* %54, i64 %56), !dbg !101
  %58 = load i32, i32* %6, align 4, !dbg !102
  %59 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %4, align 8, !dbg !103
  %60 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %59, i32 0, i32 1, !dbg !104
  %61 = load i8*, i8** %60, align 8, !dbg !105
  %62 = sext i32 %58 to i64, !dbg !105
  %63 = getelementptr inbounds i8, i8* %61, i64 %62, !dbg !105
  store i8* %63, i8** %60, align 8, !dbg !105
  %64 = load i32, i32* %6, align 4, !dbg !106
  ret i32 %64, !dbg !107
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlNanoHTTPMethodRedir(i8* noundef %0, i8* noundef %1, i8* noundef %2, i8** noundef %3, i8** noundef %4, i32* noundef %5) #0 !dbg !108 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct._xmlNanoHTTPCtxt*, align 8
  %15 = alloca [1024 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !115, metadata !DIExpression()), !dbg !116
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !117, metadata !DIExpression()), !dbg !118
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !119, metadata !DIExpression()), !dbg !120
  store i8** %3, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !121, metadata !DIExpression()), !dbg !122
  store i8** %4, i8*** %12, align 8
  call void @llvm.dbg.declare(metadata i8*** %12, metadata !123, metadata !DIExpression()), !dbg !124
  store i32* %5, i32** %13, align 8
  call void @llvm.dbg.declare(metadata i32** %13, metadata !125, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.declare(metadata %struct._xmlNanoHTTPCtxt** %14, metadata !127, metadata !DIExpression()), !dbg !128
  %19 = call noalias i8* @malloc(i64 noundef 96) #7, !dbg !129
  %20 = bitcast i8* %19 to %struct._xmlNanoHTTPCtxt*, !dbg !130
  store %struct._xmlNanoHTTPCtxt* %20, %struct._xmlNanoHTTPCtxt** %14, align 8, !dbg !128
  %21 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %14, align 8, !dbg !131
  %22 = icmp ne %struct._xmlNanoHTTPCtxt* %21, null, !dbg !131
  br i1 %22, label %24, label %23, !dbg !133

23:                                               ; preds = %6
  store i32 -1, i32* %7, align 4, !dbg !134
  br label %109, !dbg !134

24:                                               ; preds = %6
  call void @llvm.dbg.declare(metadata [1024 x i8]* %15, metadata !135, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata i32* %16, metadata !140, metadata !DIExpression()), !dbg !141
  %25 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %14, align 8, !dbg !142
  %26 = bitcast %struct._xmlNanoHTTPCtxt* %25 to i8*, !dbg !142
  call void @klee_make_symbolic(i8* noundef %26, i64 noundef 96, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !143
  %27 = bitcast i32* %16 to i8*, !dbg !144
  call void @klee_make_symbolic(i8* noundef %27, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !145
  %28 = load i32, i32* %16, align 4, !dbg !146
  %29 = icmp sge i32 %28, 0, !dbg !147
  br i1 %29, label %30, label %33, !dbg !148

30:                                               ; preds = %24
  %31 = load i32, i32* %16, align 4, !dbg !149
  %32 = icmp slt i32 %31, 2048, !dbg !150
  br label %33

33:                                               ; preds = %30, %24
  %34 = phi i1 [ false, %24 ], [ %32, %30 ], !dbg !151
  %35 = zext i1 %34 to i32, !dbg !148
  %36 = sext i32 %35 to i64, !dbg !146
  call void @klee_assume(i64 noundef %36), !dbg !152
  %37 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %14, align 8, !dbg !153
  %38 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %37, i32 0, i32 0, !dbg !154
  %39 = load i8*, i8** %38, align 8, !dbg !154
  %40 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %14, align 8, !dbg !155
  %41 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %40, i32 0, i32 1, !dbg !156
  %42 = load i8*, i8** %41, align 8, !dbg !156
  %43 = icmp uge i8* %39, %42, !dbg !157
  %44 = zext i1 %43 to i32, !dbg !157
  %45 = sext i32 %44 to i64, !dbg !153
  call void @klee_assume(i64 noundef %45), !dbg !158
  %46 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %14, align 8, !dbg !159
  %47 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %46, i32 0, i32 0, !dbg !160
  %48 = load i8*, i8** %47, align 8, !dbg !160
  %49 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %14, align 8, !dbg !161
  %50 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %49, i32 0, i32 1, !dbg !162
  %51 = load i8*, i8** %50, align 8, !dbg !162
  %52 = ptrtoint i8* %48 to i64, !dbg !163
  %53 = ptrtoint i8* %51 to i64, !dbg !163
  %54 = sub i64 %52, %53, !dbg !163
  %55 = icmp sge i64 %54, 0, !dbg !164
  %56 = zext i1 %55 to i32, !dbg !164
  %57 = sext i32 %56 to i64, !dbg !159
  call void @klee_assume(i64 noundef %57), !dbg !165
  %58 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %14, align 8, !dbg !166
  %59 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %58, i32 0, i32 0, !dbg !167
  %60 = load i8*, i8** %59, align 8, !dbg !167
  %61 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %14, align 8, !dbg !168
  %62 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %61, i32 0, i32 1, !dbg !169
  %63 = load i8*, i8** %62, align 8, !dbg !169
  %64 = ptrtoint i8* %60 to i64, !dbg !170
  %65 = ptrtoint i8* %63 to i64, !dbg !170
  %66 = sub i64 %64, %65, !dbg !170
  %67 = icmp slt i64 %66, 2048, !dbg !171
  %68 = zext i1 %67 to i32, !dbg !171
  %69 = sext i32 %68 to i64, !dbg !166
  call void @klee_assume(i64 noundef %69), !dbg !172
  call void @llvm.dbg.declare(metadata i8** %17, metadata !173, metadata !DIExpression()), !dbg !174
  %70 = load i32, i32* %16, align 4, !dbg !175
  %71 = add nsw i32 %70, 1, !dbg !176
  %72 = sext i32 %71 to i64, !dbg !175
  %73 = call noalias i8* @malloc(i64 noundef %72) #7, !dbg !177
  store i8* %73, i8** %17, align 8, !dbg !174
  %74 = load i8*, i8** %17, align 8, !dbg !178
  %75 = icmp ne i8* %74, null, !dbg !178
  br i1 %75, label %79, label %76, !dbg !180

76:                                               ; preds = %33
  %77 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %14, align 8, !dbg !181
  %78 = bitcast %struct._xmlNanoHTTPCtxt* %77 to i8*, !dbg !181
  call void @free(i8* noundef %78) #7, !dbg !183
  store i32 -1, i32* %7, align 4, !dbg !184
  br label %109, !dbg !184

79:                                               ; preds = %33
  call void @llvm.dbg.declare(metadata i32* %18, metadata !185, metadata !DIExpression()), !dbg !186
  %80 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %14, align 8, !dbg !187
  %81 = load i8*, i8** %17, align 8, !dbg !188
  %82 = load i32, i32* %16, align 4, !dbg !189
  %83 = call i32 @xmlNanoHTTPRead(%struct._xmlNanoHTTPCtxt* noundef %80, i8* noundef %81, i32 noundef %82), !dbg !190
  store i32 %83, i32* %18, align 4, !dbg !186
  %84 = load i32, i32* %16, align 4, !dbg !191
  %85 = sext i32 %84 to i64, !dbg !191
  %86 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %14, align 8, !dbg !191
  %87 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %86, i32 0, i32 0, !dbg !191
  %88 = load i8*, i8** %87, align 8, !dbg !191
  %89 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %14, align 8, !dbg !191
  %90 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %89, i32 0, i32 1, !dbg !191
  %91 = load i8*, i8** %90, align 8, !dbg !191
  %92 = ptrtoint i8* %88 to i64, !dbg !191
  %93 = ptrtoint i8* %91 to i64, !dbg !191
  %94 = sub i64 %92, %93, !dbg !191
  %95 = icmp sle i64 %85, %94, !dbg !191
  br i1 %95, label %96, label %101, !dbg !191

96:                                               ; preds = %79
  %97 = load i32, i32* %16, align 4, !dbg !191
  %98 = icmp sle i32 %97, 1024, !dbg !191
  br i1 %98, label %99, label %101, !dbg !191

99:                                               ; preds = %96
  br i1 true, label %100, label %101, !dbg !191

100:                                              ; preds = %99
  br label %103, !dbg !191

101:                                              ; preds = %99, %96, %79
  %102 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.5, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @__PRETTY_FUNCTION__.xmlNanoHTTPMethodRedir, i64 0, i64 0)), !dbg !191
  br label %103, !dbg !191

103:                                              ; preds = %101, %100
  %104 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.5, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @__PRETTY_FUNCTION__.xmlNanoHTTPMethodRedir, i64 0, i64 0)), !dbg !192
  %105 = load i8*, i8** %17, align 8, !dbg !193
  call void @free(i8* noundef %105) #7, !dbg !194
  %106 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %14, align 8, !dbg !195
  %107 = bitcast %struct._xmlNanoHTTPCtxt* %106 to i8*, !dbg !195
  call void @free(i8* noundef %107) #7, !dbg !196
  %108 = load i32, i32* %18, align 4, !dbg !197
  store i32 %108, i32* %7, align 4, !dbg !198
  br label %109, !dbg !198

109:                                              ; preds = %103, %76, %23
  %110 = load i32, i32* %7, align 4, !dbg !199
  ret i32 %110, !dbg !199
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !200 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [16 x i8], align 16
  %4 = alloca [256 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !203, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata [16 x i8]* %3, metadata !208, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !213, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata i8** %5, metadata !215, metadata !DIExpression()), !dbg !216
  store i8* null, i8** %5, align 8, !dbg !216
  call void @llvm.dbg.declare(metadata i8** %6, metadata !217, metadata !DIExpression()), !dbg !218
  store i8* null, i8** %6, align 8, !dbg !218
  call void @llvm.dbg.declare(metadata i32* %7, metadata !219, metadata !DIExpression()), !dbg !220
  store i32 0, i32* %7, align 4, !dbg !220
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !221
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 256, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)), !dbg !222
  %9 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0, !dbg !223
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !224
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !225
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 256, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)), !dbg !226
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !227
  store i8 0, i8* %11, align 1, !dbg !228
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 15, !dbg !229
  store i8 0, i8* %12, align 1, !dbg !230
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 255, !dbg !231
  store i8 0, i8* %13, align 1, !dbg !232
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !233
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0, !dbg !234
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !235
  %17 = call i32 @xmlNanoHTTPMethodRedir(i8* noundef %14, i8* noundef %15, i8* noundef %16, i8** noundef %5, i8** noundef %6, i32* noundef %7), !dbg !236
  ret i32 0, !dbg !237
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !238 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !247, metadata !DIExpression()), !dbg !248
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !249, metadata !DIExpression()), !dbg !250
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !251, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.declare(metadata i8** %7, metadata !253, metadata !DIExpression()), !dbg !254
  %9 = load i8*, i8** %4, align 8, !dbg !255
  store i8* %9, i8** %7, align 8, !dbg !254
  call void @llvm.dbg.declare(metadata i8** %8, metadata !256, metadata !DIExpression()), !dbg !257
  %10 = load i8*, i8** %5, align 8, !dbg !258
  store i8* %10, i8** %8, align 8, !dbg !257
  br label %11, !dbg !259

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !260
  %13 = add i64 %12, -1, !dbg !260
  store i64 %13, i64* %6, align 8, !dbg !260
  %14 = icmp ugt i64 %12, 0, !dbg !261
  br i1 %14, label %15, label %21, !dbg !259

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !262
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !262
  store i8* %17, i8** %8, align 8, !dbg !262
  %18 = load i8, i8* %16, align 1, !dbg !263
  %19 = load i8*, i8** %7, align 8, !dbg !264
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !264
  store i8* %20, i8** %7, align 8, !dbg !264
  store i8 %18, i8* %19, align 1, !dbg !265
  br label %11, !dbg !259, !llvm.loop !266

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !267
  ret i8* %22, !dbg !268
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34, !34}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/121_nanohttp.c_1222_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "ca9f5009bb967192ffd4c8a362fbd5ac")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNanoHTTPCtxt", file: !1, line: 25, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNanoHTTPCtxt", file: !1, line: 10, size: 768, elements: !6)
!6 = !{!7, !10, !11, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "inptr", scope: !5, file: !1, line: 11, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "inrptr", scope: !5, file: !1, line: 12, baseType: !8, size: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5, file: !1, line: 13, baseType: !12, size: 32, offset: 128)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !5, file: !1, line: 14, baseType: !12, size: 32, offset: 160)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "contenttype", scope: !5, file: !1, line: 15, baseType: !8, size: 64, offset: 192)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !5, file: !1, line: 16, baseType: !8, size: 64, offset: 256)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "mime", scope: !5, file: !1, line: 17, baseType: !8, size: 64, offset: 320)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !5, file: !1, line: 18, baseType: !12, size: 32, offset: 384)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "authHeader", scope: !5, file: !1, line: 19, baseType: !8, size: 64, offset: 448)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !5, file: !1, line: 20, baseType: !8, size: 64, offset: 512)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "proxyAuthHeader", scope: !5, file: !1, line: 21, baseType: !8, size: 64, offset: 576)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5, file: !1, line: 22, baseType: !12, size: 32, offset: 640)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !5, file: !1, line: 23, baseType: !12, size: 32, offset: 672)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !5, file: !1, line: 24, baseType: !24, size: 64, offset: 704)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = distinct !DICompileUnit(language: DW_LANG_C99, file: !26, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!26 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!27 = !{i32 7, !"Dwarf Version", i32 5}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"Ubuntu clang version 14.0.6"}
!35 = distinct !DISubprogram(name: "xmlNanoHTTPRecv", scope: !1, file: !1, line: 28, type: !36, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !38)
!36 = !DISubroutineType(types: !37)
!37 = !{!12, !3}
!38 = !{}
!39 = !DILocalVariable(name: "ctxt", arg: 1, scope: !35, file: !1, line: 28, type: !3)
!40 = !DILocation(line: 28, column: 38, scope: !35)
!41 = !DILocalVariable(name: "ret", scope: !35, file: !1, line: 30, type: !12)
!42 = !DILocation(line: 30, column: 9, scope: !35)
!43 = !DILocation(line: 31, column: 24, scope: !35)
!44 = !DILocation(line: 31, column: 5, scope: !35)
!45 = !DILocation(line: 32, column: 17, scope: !35)
!46 = !DILocation(line: 32, column: 21, scope: !35)
!47 = !DILocation(line: 32, column: 27, scope: !35)
!48 = !DILocation(line: 32, column: 30, scope: !35)
!49 = !DILocation(line: 32, column: 34, scope: !35)
!50 = !DILocation(line: 0, scope: !35)
!51 = !DILocation(line: 32, column: 5, scope: !35)
!52 = !DILocation(line: 33, column: 12, scope: !35)
!53 = !DILocation(line: 33, column: 5, scope: !35)
!54 = distinct !DISubprogram(name: "xmlNanoHTTPRead", scope: !1, file: !1, line: 37, type: !55, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !38)
!55 = !DISubroutineType(types: !56)
!56 = !{!12, !3, !24, !12}
!57 = !DILocalVariable(name: "ctxt", arg: 1, scope: !54, file: !1, line: 37, type: !3)
!58 = !DILocation(line: 37, column: 38, scope: !54)
!59 = !DILocalVariable(name: "dest", arg: 2, scope: !54, file: !1, line: 37, type: !24)
!60 = !DILocation(line: 37, column: 50, scope: !54)
!61 = !DILocalVariable(name: "len", arg: 3, scope: !54, file: !1, line: 37, type: !12)
!62 = !DILocation(line: 37, column: 60, scope: !54)
!63 = !DILocation(line: 39, column: 5, scope: !54)
!64 = !DILocation(line: 39, column: 12, scope: !54)
!65 = !DILocation(line: 39, column: 18, scope: !54)
!66 = !DILocation(line: 39, column: 26, scope: !54)
!67 = !DILocation(line: 39, column: 32, scope: !54)
!68 = !DILocation(line: 39, column: 24, scope: !54)
!69 = !DILocation(line: 39, column: 41, scope: !54)
!70 = !DILocation(line: 39, column: 39, scope: !54)
!71 = !DILocation(line: 40, column: 29, scope: !72)
!72 = distinct !DILexicalBlock(scope: !73, file: !1, line: 40, column: 13)
!73 = distinct !DILexicalBlock(scope: !54, file: !1, line: 39, column: 46)
!74 = !DILocation(line: 40, column: 13, scope: !72)
!75 = !DILocation(line: 40, column: 35, scope: !72)
!76 = !DILocation(line: 40, column: 13, scope: !73)
!77 = !DILocation(line: 40, column: 41, scope: !72)
!78 = distinct !{!78, !63, !79, !80}
!79 = !DILocation(line: 41, column: 5, scope: !54)
!80 = !{!"llvm.loop.mustprogress"}
!81 = !DILocation(line: 42, column: 9, scope: !82)
!82 = distinct !DILexicalBlock(scope: !54, file: !1, line: 42, column: 9)
!83 = !DILocation(line: 42, column: 15, scope: !82)
!84 = !DILocation(line: 42, column: 23, scope: !82)
!85 = !DILocation(line: 42, column: 29, scope: !82)
!86 = !DILocation(line: 42, column: 21, scope: !82)
!87 = !DILocation(line: 42, column: 38, scope: !82)
!88 = !DILocation(line: 42, column: 36, scope: !82)
!89 = !DILocation(line: 42, column: 9, scope: !54)
!90 = !DILocation(line: 43, column: 15, scope: !82)
!91 = !DILocation(line: 43, column: 21, scope: !82)
!92 = !DILocation(line: 43, column: 29, scope: !82)
!93 = !DILocation(line: 43, column: 35, scope: !82)
!94 = !DILocation(line: 43, column: 27, scope: !82)
!95 = !DILocation(line: 43, column: 13, scope: !82)
!96 = !DILocation(line: 43, column: 9, scope: !82)
!97 = !DILocation(line: 46, column: 12, scope: !54)
!98 = !DILocation(line: 46, column: 18, scope: !54)
!99 = !DILocation(line: 46, column: 24, scope: !54)
!100 = !DILocation(line: 46, column: 32, scope: !54)
!101 = !DILocation(line: 46, column: 5, scope: !54)
!102 = !DILocation(line: 48, column: 21, scope: !54)
!103 = !DILocation(line: 48, column: 5, scope: !54)
!104 = !DILocation(line: 48, column: 11, scope: !54)
!105 = !DILocation(line: 48, column: 18, scope: !54)
!106 = !DILocation(line: 49, column: 12, scope: !54)
!107 = !DILocation(line: 49, column: 5, scope: !54)
!108 = distinct !DISubprogram(name: "xmlNanoHTTPMethodRedir", scope: !1, file: !1, line: 53, type: !109, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !38)
!109 = !DISubroutineType(types: !110)
!110 = !{!12, !111, !111, !111, !113, !113, !114}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!115 = !DILocalVariable(name: "URL", arg: 1, scope: !108, file: !1, line: 53, type: !111)
!116 = !DILocation(line: 53, column: 40, scope: !108)
!117 = !DILocalVariable(name: "method", arg: 2, scope: !108, file: !1, line: 53, type: !111)
!118 = !DILocation(line: 53, column: 57, scope: !108)
!119 = !DILocalVariable(name: "input", arg: 3, scope: !108, file: !1, line: 53, type: !111)
!120 = !DILocation(line: 53, column: 77, scope: !108)
!121 = !DILocalVariable(name: "contentType", arg: 4, scope: !108, file: !1, line: 54, type: !113)
!122 = !DILocation(line: 54, column: 35, scope: !108)
!123 = !DILocalVariable(name: "redir", arg: 5, scope: !108, file: !1, line: 54, type: !113)
!124 = !DILocation(line: 54, column: 55, scope: !108)
!125 = !DILocalVariable(name: "status", arg: 6, scope: !108, file: !1, line: 54, type: !114)
!126 = !DILocation(line: 54, column: 67, scope: !108)
!127 = !DILocalVariable(name: "ctxt", scope: !108, file: !1, line: 56, type: !3)
!128 = !DILocation(line: 56, column: 22, scope: !108)
!129 = !DILocation(line: 56, column: 47, scope: !108)
!130 = !DILocation(line: 56, column: 29, scope: !108)
!131 = !DILocation(line: 57, column: 10, scope: !132)
!132 = distinct !DILexicalBlock(scope: !108, file: !1, line: 57, column: 9)
!133 = !DILocation(line: 57, column: 9, scope: !108)
!134 = !DILocation(line: 57, column: 16, scope: !132)
!135 = !DILocalVariable(name: "buffer", scope: !108, file: !1, line: 60, type: !136)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8192, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 1024)
!139 = !DILocation(line: 60, column: 10, scope: !108)
!140 = !DILocalVariable(name: "read_len", scope: !108, file: !1, line: 61, type: !12)
!141 = !DILocation(line: 61, column: 9, scope: !108)
!142 = !DILocation(line: 63, column: 24, scope: !108)
!143 = !DILocation(line: 63, column: 5, scope: !108)
!144 = !DILocation(line: 64, column: 24, scope: !108)
!145 = !DILocation(line: 64, column: 5, scope: !108)
!146 = !DILocation(line: 67, column: 17, scope: !108)
!147 = !DILocation(line: 67, column: 26, scope: !108)
!148 = !DILocation(line: 67, column: 31, scope: !108)
!149 = !DILocation(line: 67, column: 34, scope: !108)
!150 = !DILocation(line: 67, column: 43, scope: !108)
!151 = !DILocation(line: 0, scope: !108)
!152 = !DILocation(line: 67, column: 5, scope: !108)
!153 = !DILocation(line: 68, column: 17, scope: !108)
!154 = !DILocation(line: 68, column: 23, scope: !108)
!155 = !DILocation(line: 68, column: 32, scope: !108)
!156 = !DILocation(line: 68, column: 38, scope: !108)
!157 = !DILocation(line: 68, column: 29, scope: !108)
!158 = !DILocation(line: 68, column: 5, scope: !108)
!159 = !DILocation(line: 69, column: 17, scope: !108)
!160 = !DILocation(line: 69, column: 23, scope: !108)
!161 = !DILocation(line: 69, column: 31, scope: !108)
!162 = !DILocation(line: 69, column: 37, scope: !108)
!163 = !DILocation(line: 69, column: 29, scope: !108)
!164 = !DILocation(line: 69, column: 44, scope: !108)
!165 = !DILocation(line: 69, column: 5, scope: !108)
!166 = !DILocation(line: 70, column: 17, scope: !108)
!167 = !DILocation(line: 70, column: 23, scope: !108)
!168 = !DILocation(line: 70, column: 31, scope: !108)
!169 = !DILocation(line: 70, column: 37, scope: !108)
!170 = !DILocation(line: 70, column: 29, scope: !108)
!171 = !DILocation(line: 70, column: 44, scope: !108)
!172 = !DILocation(line: 70, column: 5, scope: !108)
!173 = !DILocalVariable(name: "dest", scope: !108, file: !1, line: 73, type: !24)
!174 = !DILocation(line: 73, column: 11, scope: !108)
!175 = !DILocation(line: 73, column: 25, scope: !108)
!176 = !DILocation(line: 73, column: 34, scope: !108)
!177 = !DILocation(line: 73, column: 18, scope: !108)
!178 = !DILocation(line: 74, column: 10, scope: !179)
!179 = distinct !DILexicalBlock(scope: !108, file: !1, line: 74, column: 9)
!180 = !DILocation(line: 74, column: 9, scope: !108)
!181 = !DILocation(line: 75, column: 14, scope: !182)
!182 = distinct !DILexicalBlock(scope: !179, file: !1, line: 74, column: 16)
!183 = !DILocation(line: 75, column: 9, scope: !182)
!184 = !DILocation(line: 76, column: 9, scope: !182)
!185 = !DILocalVariable(name: "result", scope: !108, file: !1, line: 80, type: !12)
!186 = !DILocation(line: 80, column: 9, scope: !108)
!187 = !DILocation(line: 80, column: 34, scope: !108)
!188 = !DILocation(line: 80, column: 40, scope: !108)
!189 = !DILocation(line: 80, column: 46, scope: !108)
!190 = !DILocation(line: 80, column: 18, scope: !108)
!191 = !DILocation(line: 87, column: 5, scope: !108)
!192 = !DILocation(line: 90, column: 5, scope: !108)
!193 = !DILocation(line: 92, column: 10, scope: !108)
!194 = !DILocation(line: 92, column: 5, scope: !108)
!195 = !DILocation(line: 93, column: 10, scope: !108)
!196 = !DILocation(line: 93, column: 5, scope: !108)
!197 = !DILocation(line: 94, column: 12, scope: !108)
!198 = !DILocation(line: 94, column: 5, scope: !108)
!199 = !DILocation(line: 95, column: 1, scope: !108)
!200 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 97, type: !201, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !38)
!201 = !DISubroutineType(types: !202)
!202 = !{!12}
!203 = !DILocalVariable(name: "URL", scope: !200, file: !1, line: 99, type: !204)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2048, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 256)
!207 = !DILocation(line: 99, column: 10, scope: !200)
!208 = !DILocalVariable(name: "method", scope: !200, file: !1, line: 100, type: !209)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 128, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 16)
!212 = !DILocation(line: 100, column: 10, scope: !200)
!213 = !DILocalVariable(name: "input", scope: !200, file: !1, line: 101, type: !204)
!214 = !DILocation(line: 101, column: 10, scope: !200)
!215 = !DILocalVariable(name: "contentType", scope: !200, file: !1, line: 102, type: !8)
!216 = !DILocation(line: 102, column: 11, scope: !200)
!217 = !DILocalVariable(name: "redir", scope: !200, file: !1, line: 103, type: !8)
!218 = !DILocation(line: 103, column: 11, scope: !200)
!219 = !DILocalVariable(name: "status", scope: !200, file: !1, line: 104, type: !12)
!220 = !DILocation(line: 104, column: 9, scope: !200)
!221 = !DILocation(line: 106, column: 24, scope: !200)
!222 = !DILocation(line: 106, column: 5, scope: !200)
!223 = !DILocation(line: 107, column: 24, scope: !200)
!224 = !DILocation(line: 107, column: 5, scope: !200)
!225 = !DILocation(line: 108, column: 24, scope: !200)
!226 = !DILocation(line: 108, column: 5, scope: !200)
!227 = !DILocation(line: 111, column: 5, scope: !200)
!228 = !DILocation(line: 111, column: 14, scope: !200)
!229 = !DILocation(line: 112, column: 5, scope: !200)
!230 = !DILocation(line: 112, column: 16, scope: !200)
!231 = !DILocation(line: 113, column: 5, scope: !200)
!232 = !DILocation(line: 113, column: 16, scope: !200)
!233 = !DILocation(line: 116, column: 28, scope: !200)
!234 = !DILocation(line: 116, column: 33, scope: !200)
!235 = !DILocation(line: 116, column: 41, scope: !200)
!236 = !DILocation(line: 116, column: 5, scope: !200)
!237 = !DILocation(line: 118, column: 5, scope: !200)
!238 = distinct !DISubprogram(name: "memcpy", scope: !239, file: !239, line: 12, type: !240, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !38)
!239 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!240 = !DISubroutineType(types: !241)
!241 = !{!24, !24, !242, !244}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !245, line: 46, baseType: !246)
!245 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!246 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!247 = !DILocalVariable(name: "destaddr", arg: 1, scope: !238, file: !239, line: 12, type: !24)
!248 = !DILocation(line: 12, column: 20, scope: !238)
!249 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !238, file: !239, line: 12, type: !242)
!250 = !DILocation(line: 12, column: 42, scope: !238)
!251 = !DILocalVariable(name: "len", arg: 3, scope: !238, file: !239, line: 12, type: !244)
!252 = !DILocation(line: 12, column: 58, scope: !238)
!253 = !DILocalVariable(name: "dest", scope: !238, file: !239, line: 13, type: !8)
!254 = !DILocation(line: 13, column: 9, scope: !238)
!255 = !DILocation(line: 13, column: 16, scope: !238)
!256 = !DILocalVariable(name: "src", scope: !238, file: !239, line: 14, type: !111)
!257 = !DILocation(line: 14, column: 15, scope: !238)
!258 = !DILocation(line: 14, column: 21, scope: !238)
!259 = !DILocation(line: 16, column: 3, scope: !238)
!260 = !DILocation(line: 16, column: 13, scope: !238)
!261 = !DILocation(line: 16, column: 16, scope: !238)
!262 = !DILocation(line: 17, column: 19, scope: !238)
!263 = !DILocation(line: 17, column: 15, scope: !238)
!264 = !DILocation(line: 17, column: 10, scope: !238)
!265 = !DILocation(line: 17, column: 13, scope: !238)
!266 = distinct !{!266, !259, !262, !80}
!267 = !DILocation(line: 18, column: 10, scope: !238)
!268 = !DILocation(line: 18, column: 3, scope: !238)

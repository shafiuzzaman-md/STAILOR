; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/163_nanohttp.c_1242_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/163_nanohttp.c_1242_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNanoHTTPCtxt = type { i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"bytes_received\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"new_data\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"(len <= (ctxt->inptr - ctxt->inrptr)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_55980_vul/163_nanohttp.c_1242_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlNanoHTTPRead = private unnamed_addr constant [41 x i8] c"int xmlNanoHTTPRead(void *, char *, int)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"ctxt\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"len\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlNanoHTTPRecv(%struct._xmlNanoHTTPCtxt* noundef %0) #0 !dbg !25 {
  %2 = alloca %struct._xmlNanoHTTPCtxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct._xmlNanoHTTPCtxt* %0, %struct._xmlNanoHTTPCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNanoHTTPCtxt** %2, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %3, metadata !31, metadata !DIExpression()), !dbg !32
  %7 = bitcast i32* %3 to i8*, !dbg !33
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !34
  %8 = load i32, i32* %3, align 4, !dbg !35
  %9 = icmp sge i32 %8, -1, !dbg !36
  br i1 %9, label %10, label %13, !dbg !37

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4, !dbg !38
  %12 = icmp sle i32 %11, 1024, !dbg !39
  br label %13

13:                                               ; preds = %10, %1
  %14 = phi i1 [ false, %1 ], [ %12, %10 ], !dbg !40
  %15 = zext i1 %14 to i32, !dbg !37
  %16 = sext i32 %15 to i64, !dbg !35
  call void @klee_assume(i64 noundef %16), !dbg !41
  %17 = load i32, i32* %3, align 4, !dbg !42
  %18 = icmp sgt i32 %17, 0, !dbg !44
  br i1 %18, label %19, label %86, !dbg !45

19:                                               ; preds = %13
  call void @llvm.dbg.declare(metadata i8** %4, metadata !46, metadata !DIExpression()), !dbg !48
  %20 = load i32, i32* %3, align 4, !dbg !49
  %21 = sext i32 %20 to i64, !dbg !49
  %22 = call noalias i8* @malloc(i64 noundef %21) #7, !dbg !50
  store i8* %22, i8** %4, align 8, !dbg !48
  %23 = load i8*, i8** %4, align 8, !dbg !51
  %24 = load i32, i32* %3, align 4, !dbg !52
  %25 = sext i32 %24 to i64, !dbg !52
  call void @klee_make_symbolic(i8* noundef %23, i64 noundef %25, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !53
  %26 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !54
  %27 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %26, i32 0, i32 0, !dbg !56
  %28 = load i8*, i8** %27, align 8, !dbg !56
  %29 = icmp eq i8* %28, null, !dbg !57
  br i1 %29, label %30, label %37, !dbg !58

30:                                               ; preds = %19
  %31 = load i8*, i8** %4, align 8, !dbg !59
  %32 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !61
  %33 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %32, i32 0, i32 0, !dbg !62
  store i8* %31, i8** %33, align 8, !dbg !63
  %34 = load i8*, i8** %4, align 8, !dbg !64
  %35 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !65
  %36 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %35, i32 0, i32 1, !dbg !66
  store i8* %34, i8** %36, align 8, !dbg !67
  br label %85, !dbg !68

37:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata i8** %5, metadata !69, metadata !DIExpression()), !dbg !71
  %38 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !72
  %39 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %38, i32 0, i32 0, !dbg !73
  %40 = load i8*, i8** %39, align 8, !dbg !73
  store i8* %40, i8** %5, align 8, !dbg !71
  call void @llvm.dbg.declare(metadata i64* %6, metadata !74, metadata !DIExpression()), !dbg !78
  %41 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !79
  %42 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %41, i32 0, i32 0, !dbg !80
  %43 = load i8*, i8** %42, align 8, !dbg !80
  %44 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !81
  %45 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %44, i32 0, i32 1, !dbg !82
  %46 = load i8*, i8** %45, align 8, !dbg !82
  %47 = ptrtoint i8* %43 to i64, !dbg !83
  %48 = ptrtoint i8* %46 to i64, !dbg !83
  %49 = sub i64 %47, %48, !dbg !83
  store i64 %49, i64* %6, align 8, !dbg !78
  %50 = load i64, i64* %6, align 8, !dbg !84
  %51 = load i32, i32* %3, align 4, !dbg !85
  %52 = sext i32 %51 to i64, !dbg !85
  %53 = add i64 %50, %52, !dbg !86
  %54 = call noalias i8* @malloc(i64 noundef %53) #7, !dbg !87
  %55 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !88
  %56 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %55, i32 0, i32 0, !dbg !89
  store i8* %54, i8** %56, align 8, !dbg !90
  %57 = load i64, i64* %6, align 8, !dbg !91
  %58 = icmp ugt i64 %57, 0, !dbg !93
  br i1 %58, label %59, label %68, !dbg !94

59:                                               ; preds = %37
  %60 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !95
  %61 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %60, i32 0, i32 0, !dbg !97
  %62 = load i8*, i8** %61, align 8, !dbg !97
  %63 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !98
  %64 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %63, i32 0, i32 1, !dbg !99
  %65 = load i8*, i8** %64, align 8, !dbg !99
  %66 = load i64, i64* %6, align 8, !dbg !100
  %67 = call i8* @memcpy(i8* %62, i8* %65, i64 %66), !dbg !101
  br label %68, !dbg !102

68:                                               ; preds = %59, %37
  %69 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !103
  %70 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %69, i32 0, i32 0, !dbg !104
  %71 = load i8*, i8** %70, align 8, !dbg !104
  %72 = load i64, i64* %6, align 8, !dbg !105
  %73 = getelementptr inbounds i8, i8* %71, i64 %72, !dbg !106
  %74 = load i8*, i8** %4, align 8, !dbg !107
  %75 = load i32, i32* %3, align 4, !dbg !108
  %76 = sext i32 %75 to i64, !dbg !108
  %77 = call i8* @memcpy(i8* %73, i8* %74, i64 %76), !dbg !109
  %78 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !110
  %79 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %78, i32 0, i32 0, !dbg !111
  %80 = load i8*, i8** %79, align 8, !dbg !111
  %81 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !112
  %82 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %81, i32 0, i32 1, !dbg !113
  store i8* %80, i8** %82, align 8, !dbg !114
  %83 = load i8*, i8** %5, align 8, !dbg !115
  call void @free(i8* noundef %83) #7, !dbg !116
  %84 = load i8*, i8** %4, align 8, !dbg !117
  call void @free(i8* noundef %84) #7, !dbg !118
  br label %85

85:                                               ; preds = %68, %30
  br label %86, !dbg !119

86:                                               ; preds = %85, %13
  %87 = load i32, i32* %3, align 4, !dbg !120
  ret i32 %87, !dbg !121
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlNanoHTTPRead(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !122 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._xmlNanoHTTPCtxt*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !125, metadata !DIExpression()), !dbg !126
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !127, metadata !DIExpression()), !dbg !128
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !129, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata %struct._xmlNanoHTTPCtxt** %8, metadata !131, metadata !DIExpression()), !dbg !132
  %9 = load i8*, i8** %5, align 8, !dbg !133
  %10 = bitcast i8* %9 to %struct._xmlNanoHTTPCtxt*, !dbg !134
  store %struct._xmlNanoHTTPCtxt* %10, %struct._xmlNanoHTTPCtxt** %8, align 8, !dbg !132
  %11 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %8, align 8, !dbg !135
  %12 = icmp eq %struct._xmlNanoHTTPCtxt* %11, null, !dbg !137
  br i1 %12, label %19, label %13, !dbg !138

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8, !dbg !139
  %15 = icmp eq i8* %14, null, !dbg !140
  br i1 %15, label %19, label %16, !dbg !141

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4, !dbg !142
  %18 = icmp sle i32 %17, 0, !dbg !143
  br i1 %18, label %19, label %20, !dbg !144

19:                                               ; preds = %16, %13, %3
  store i32 -1, i32* %4, align 4, !dbg !145
  br label %97, !dbg !145

20:                                               ; preds = %16
  br label %21, !dbg !147

21:                                               ; preds = %39, %20
  %22 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %8, align 8, !dbg !148
  %23 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %22, i32 0, i32 0, !dbg !149
  %24 = load i8*, i8** %23, align 8, !dbg !149
  %25 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %8, align 8, !dbg !150
  %26 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %25, i32 0, i32 1, !dbg !151
  %27 = load i8*, i8** %26, align 8, !dbg !151
  %28 = ptrtoint i8* %24 to i64, !dbg !152
  %29 = ptrtoint i8* %27 to i64, !dbg !152
  %30 = sub i64 %28, %29, !dbg !152
  %31 = load i32, i32* %7, align 4, !dbg !153
  %32 = sext i32 %31 to i64, !dbg !153
  %33 = icmp slt i64 %30, %32, !dbg !154
  br i1 %33, label %34, label %40, !dbg !147

34:                                               ; preds = %21
  %35 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %8, align 8, !dbg !155
  %36 = call i32 @xmlNanoHTTPRecv(%struct._xmlNanoHTTPCtxt* noundef %35), !dbg !158
  %37 = icmp sle i32 %36, 0, !dbg !159
  br i1 %37, label %38, label %39, !dbg !160

38:                                               ; preds = %34
  br label %40, !dbg !161

39:                                               ; preds = %34
  br label %21, !dbg !147, !llvm.loop !162

40:                                               ; preds = %38, %21
  %41 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %8, align 8, !dbg !165
  %42 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %41, i32 0, i32 0, !dbg !167
  %43 = load i8*, i8** %42, align 8, !dbg !167
  %44 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %8, align 8, !dbg !168
  %45 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %44, i32 0, i32 1, !dbg !169
  %46 = load i8*, i8** %45, align 8, !dbg !169
  %47 = ptrtoint i8* %43 to i64, !dbg !170
  %48 = ptrtoint i8* %46 to i64, !dbg !170
  %49 = sub i64 %47, %48, !dbg !170
  %50 = load i32, i32* %7, align 4, !dbg !171
  %51 = sext i32 %50 to i64, !dbg !171
  %52 = icmp slt i64 %49, %51, !dbg !172
  br i1 %52, label %53, label %64, !dbg !173

53:                                               ; preds = %40
  %54 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %8, align 8, !dbg !174
  %55 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %54, i32 0, i32 0, !dbg !175
  %56 = load i8*, i8** %55, align 8, !dbg !175
  %57 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %8, align 8, !dbg !176
  %58 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %57, i32 0, i32 1, !dbg !177
  %59 = load i8*, i8** %58, align 8, !dbg !177
  %60 = ptrtoint i8* %56 to i64, !dbg !178
  %61 = ptrtoint i8* %59 to i64, !dbg !178
  %62 = sub i64 %60, %61, !dbg !178
  %63 = trunc i64 %62 to i32, !dbg !174
  store i32 %63, i32* %7, align 4, !dbg !179
  br label %64, !dbg !180

64:                                               ; preds = %53, %40
  %65 = load i32, i32* %7, align 4, !dbg !181
  %66 = sext i32 %65 to i64, !dbg !181
  %67 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %8, align 8, !dbg !181
  %68 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %67, i32 0, i32 0, !dbg !181
  %69 = load i8*, i8** %68, align 8, !dbg !181
  %70 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %8, align 8, !dbg !181
  %71 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %70, i32 0, i32 1, !dbg !181
  %72 = load i8*, i8** %71, align 8, !dbg !181
  %73 = ptrtoint i8* %69 to i64, !dbg !181
  %74 = ptrtoint i8* %72 to i64, !dbg !181
  %75 = sub i64 %73, %74, !dbg !181
  %76 = icmp sle i64 %66, %75, !dbg !181
  br i1 %76, label %77, label %79, !dbg !181

77:                                               ; preds = %64
  br i1 true, label %78, label %79, !dbg !181

78:                                               ; preds = %77
  br label %81, !dbg !181

79:                                               ; preds = %77, %64
  %80 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.4, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.xmlNanoHTTPRead, i64 0, i64 0)), !dbg !181
  br label %81, !dbg !181

81:                                               ; preds = %79, %78
  %82 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.4, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.xmlNanoHTTPRead, i64 0, i64 0)), !dbg !182
  %83 = load i8*, i8** %6, align 8, !dbg !183
  %84 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %8, align 8, !dbg !184
  %85 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %84, i32 0, i32 1, !dbg !185
  %86 = load i8*, i8** %85, align 8, !dbg !185
  %87 = load i32, i32* %7, align 4, !dbg !186
  %88 = sext i32 %87 to i64, !dbg !186
  %89 = call i8* @memcpy(i8* %83, i8* %86, i64 %88), !dbg !187
  %90 = load i32, i32* %7, align 4, !dbg !188
  %91 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %8, align 8, !dbg !189
  %92 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %91, i32 0, i32 1, !dbg !190
  %93 = load i8*, i8** %92, align 8, !dbg !191
  %94 = sext i32 %90 to i64, !dbg !191
  %95 = getelementptr inbounds i8, i8* %93, i64 %94, !dbg !191
  store i8* %95, i8** %92, align 8, !dbg !191
  %96 = load i32, i32* %7, align 4, !dbg !192
  store i32 %96, i32* %4, align 4, !dbg !193
  br label %97, !dbg !193

97:                                               ; preds = %81, %19
  %98 = load i32, i32* %4, align 4, !dbg !194
  ret i32 %98, !dbg !194
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !195 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlNanoHTTPCtxt, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlNanoHTTPCtxt* %2, metadata !198, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.declare(metadata [1024 x i8]* %3, metadata !200, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.declare(metadata i32* %4, metadata !205, metadata !DIExpression()), !dbg !206
  %6 = bitcast %struct._xmlNanoHTTPCtxt* %2 to i8*, !dbg !207
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 24, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)), !dbg !208
  %7 = bitcast i32* %4 to i8*, !dbg !209
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)), !dbg !210
  %8 = load i32, i32* %4, align 4, !dbg !211
  %9 = icmp sgt i32 %8, 0, !dbg !212
  br i1 %9, label %10, label %13, !dbg !213

10:                                               ; preds = %0
  %11 = load i32, i32* %4, align 4, !dbg !214
  %12 = icmp sle i32 %11, 1024, !dbg !215
  br label %13

13:                                               ; preds = %10, %0
  %14 = phi i1 [ false, %0 ], [ %12, %10 ], !dbg !216
  %15 = zext i1 %14 to i32, !dbg !213
  %16 = sext i32 %15 to i64, !dbg !211
  call void @klee_assume(i64 noundef %16), !dbg !217
  %17 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %2, i32 0, i32 0, !dbg !218
  %18 = load i8*, i8** %17, align 8, !dbg !218
  %19 = icmp ne i8* %18, null, !dbg !219
  %20 = zext i1 %19 to i32, !dbg !219
  %21 = sext i32 %20 to i64, !dbg !220
  call void @klee_assume(i64 noundef %21), !dbg !221
  %22 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %2, i32 0, i32 1, !dbg !222
  %23 = load i8*, i8** %22, align 8, !dbg !222
  %24 = icmp ne i8* %23, null, !dbg !223
  %25 = zext i1 %24 to i32, !dbg !223
  %26 = sext i32 %25 to i64, !dbg !224
  call void @klee_assume(i64 noundef %26), !dbg !225
  %27 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %2, i32 0, i32 0, !dbg !226
  %28 = load i8*, i8** %27, align 8, !dbg !226
  %29 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %2, i32 0, i32 1, !dbg !227
  %30 = load i8*, i8** %29, align 8, !dbg !227
  %31 = icmp uge i8* %28, %30, !dbg !228
  %32 = zext i1 %31 to i32, !dbg !228
  %33 = sext i32 %32 to i64, !dbg !229
  call void @klee_assume(i64 noundef %33), !dbg !230
  call void @llvm.dbg.declare(metadata i64* %5, metadata !231, metadata !DIExpression()), !dbg !232
  %34 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %2, i32 0, i32 0, !dbg !233
  %35 = load i8*, i8** %34, align 8, !dbg !233
  %36 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %2, i32 0, i32 1, !dbg !234
  %37 = load i8*, i8** %36, align 8, !dbg !234
  %38 = ptrtoint i8* %35 to i64, !dbg !235
  %39 = ptrtoint i8* %37 to i64, !dbg !235
  %40 = sub i64 %38, %39, !dbg !235
  store i64 %40, i64* %5, align 8, !dbg !232
  %41 = load i64, i64* %5, align 8, !dbg !236
  %42 = icmp ule i64 %41, 2048, !dbg !237
  %43 = zext i1 %42 to i32, !dbg !237
  %44 = sext i32 %43 to i64, !dbg !236
  call void @klee_assume(i64 noundef %44), !dbg !238
  %45 = load i64, i64* %5, align 8, !dbg !239
  %46 = icmp ugt i64 %45, 0, !dbg !241
  br i1 %46, label %47, label %53, !dbg !242

47:                                               ; preds = %13
  %48 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %2, i32 0, i32 1, !dbg !243
  %49 = load i8*, i8** %48, align 8, !dbg !243
  %50 = icmp ne i8* %49, null, !dbg !245
  %51 = zext i1 %50 to i32, !dbg !245
  %52 = sext i32 %51 to i64, !dbg !246
  call void @klee_assume(i64 noundef %52), !dbg !247
  br label %53, !dbg !248

53:                                               ; preds = %47, %13
  %54 = bitcast %struct._xmlNanoHTTPCtxt* %2 to i8*, !dbg !249
  %55 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !250
  %56 = load i32, i32* %4, align 4, !dbg !251
  %57 = call i32 @xmlNanoHTTPRead(i8* noundef %54, i8* noundef %55, i32 noundef %56), !dbg !252
  ret i32 0, !dbg !253
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !254 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !260, metadata !DIExpression()), !dbg !261
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !262, metadata !DIExpression()), !dbg !263
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !264, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.declare(metadata i8** %7, metadata !266, metadata !DIExpression()), !dbg !267
  %9 = load i8*, i8** %4, align 8, !dbg !268
  store i8* %9, i8** %7, align 8, !dbg !267
  call void @llvm.dbg.declare(metadata i8** %8, metadata !269, metadata !DIExpression()), !dbg !272
  %10 = load i8*, i8** %5, align 8, !dbg !273
  store i8* %10, i8** %8, align 8, !dbg !272
  br label %11, !dbg !274

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !275
  %13 = add i64 %12, -1, !dbg !275
  store i64 %13, i64* %6, align 8, !dbg !275
  %14 = icmp ugt i64 %12, 0, !dbg !276
  br i1 %14, label %15, label %21, !dbg !274

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !277
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !277
  store i8* %17, i8** %8, align 8, !dbg !277
  %18 = load i8, i8* %16, align 1, !dbg !278
  %19 = load i8*, i8** %7, align 8, !dbg !279
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !279
  store i8* %20, i8** %7, align 8, !dbg !279
  store i8 %18, i8* %19, align 1, !dbg !280
  br label %11, !dbg !274, !llvm.loop !281

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !282
  ret i8* %22, !dbg !283
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24, !24}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/163_nanohttp.c_1242_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "151888b51f7c21e1381b8e78902a03c9")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNanoHTTPCtxt", file: !1, line: 14, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNanoHTTPCtxt", file: !1, line: 9, size: 192, elements: !7)
!7 = !{!8, !11, !12, !14}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "inptr", scope: !6, file: !1, line: 10, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "inrptr", scope: !6, file: !1, line: 11, baseType: !9, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !6, file: !1, line: 12, baseType: !13, size: 32, offset: 128)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !6, file: !1, line: 13, baseType: !13, size: 32, offset: 160)
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 7, !"PIC Level", i32 2}
!21 = !{i32 7, !"PIE Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"Ubuntu clang version 14.0.6"}
!25 = distinct !DISubprogram(name: "xmlNanoHTTPRecv", scope: !1, file: !1, line: 16, type: !26, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!26 = !DISubroutineType(types: !27)
!27 = !{!13, !4}
!28 = !{}
!29 = !DILocalVariable(name: "ctxt", arg: 1, scope: !25, file: !1, line: 16, type: !4)
!30 = !DILocation(line: 16, column: 38, scope: !25)
!31 = !DILocalVariable(name: "bytes_received", scope: !25, file: !1, line: 17, type: !13)
!32 = !DILocation(line: 17, column: 9, scope: !25)
!33 = !DILocation(line: 18, column: 24, scope: !25)
!34 = !DILocation(line: 18, column: 5, scope: !25)
!35 = !DILocation(line: 19, column: 17, scope: !25)
!36 = !DILocation(line: 19, column: 32, scope: !25)
!37 = !DILocation(line: 19, column: 38, scope: !25)
!38 = !DILocation(line: 19, column: 41, scope: !25)
!39 = !DILocation(line: 19, column: 56, scope: !25)
!40 = !DILocation(line: 0, scope: !25)
!41 = !DILocation(line: 19, column: 5, scope: !25)
!42 = !DILocation(line: 21, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !25, file: !1, line: 21, column: 9)
!44 = !DILocation(line: 21, column: 24, scope: !43)
!45 = !DILocation(line: 21, column: 9, scope: !25)
!46 = !DILocalVariable(name: "new_data", scope: !47, file: !1, line: 22, type: !9)
!47 = distinct !DILexicalBlock(scope: !43, file: !1, line: 21, column: 29)
!48 = !DILocation(line: 22, column: 15, scope: !47)
!49 = !DILocation(line: 22, column: 33, scope: !47)
!50 = !DILocation(line: 22, column: 26, scope: !47)
!51 = !DILocation(line: 23, column: 28, scope: !47)
!52 = !DILocation(line: 23, column: 38, scope: !47)
!53 = !DILocation(line: 23, column: 9, scope: !47)
!54 = !DILocation(line: 25, column: 13, scope: !55)
!55 = distinct !DILexicalBlock(scope: !47, file: !1, line: 25, column: 13)
!56 = !DILocation(line: 25, column: 19, scope: !55)
!57 = !DILocation(line: 25, column: 25, scope: !55)
!58 = !DILocation(line: 25, column: 13, scope: !47)
!59 = !DILocation(line: 26, column: 27, scope: !60)
!60 = distinct !DILexicalBlock(scope: !55, file: !1, line: 25, column: 34)
!61 = !DILocation(line: 26, column: 13, scope: !60)
!62 = !DILocation(line: 26, column: 19, scope: !60)
!63 = !DILocation(line: 26, column: 25, scope: !60)
!64 = !DILocation(line: 27, column: 28, scope: !60)
!65 = !DILocation(line: 27, column: 13, scope: !60)
!66 = !DILocation(line: 27, column: 19, scope: !60)
!67 = !DILocation(line: 27, column: 26, scope: !60)
!68 = !DILocation(line: 28, column: 9, scope: !60)
!69 = !DILocalVariable(name: "old_ptr", scope: !70, file: !1, line: 29, type: !9)
!70 = distinct !DILexicalBlock(scope: !55, file: !1, line: 28, column: 16)
!71 = !DILocation(line: 29, column: 19, scope: !70)
!72 = !DILocation(line: 29, column: 29, scope: !70)
!73 = !DILocation(line: 29, column: 35, scope: !70)
!74 = !DILocalVariable(name: "old_size", scope: !70, file: !1, line: 30, type: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 46, baseType: !77)
!76 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!77 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!78 = !DILocation(line: 30, column: 20, scope: !70)
!79 = !DILocation(line: 30, column: 31, scope: !70)
!80 = !DILocation(line: 30, column: 37, scope: !70)
!81 = !DILocation(line: 30, column: 45, scope: !70)
!82 = !DILocation(line: 30, column: 51, scope: !70)
!83 = !DILocation(line: 30, column: 43, scope: !70)
!84 = !DILocation(line: 31, column: 34, scope: !70)
!85 = !DILocation(line: 31, column: 45, scope: !70)
!86 = !DILocation(line: 31, column: 43, scope: !70)
!87 = !DILocation(line: 31, column: 27, scope: !70)
!88 = !DILocation(line: 31, column: 13, scope: !70)
!89 = !DILocation(line: 31, column: 19, scope: !70)
!90 = !DILocation(line: 31, column: 25, scope: !70)
!91 = !DILocation(line: 32, column: 17, scope: !92)
!92 = distinct !DILexicalBlock(scope: !70, file: !1, line: 32, column: 17)
!93 = !DILocation(line: 32, column: 26, scope: !92)
!94 = !DILocation(line: 32, column: 17, scope: !70)
!95 = !DILocation(line: 33, column: 24, scope: !96)
!96 = distinct !DILexicalBlock(scope: !92, file: !1, line: 32, column: 31)
!97 = !DILocation(line: 33, column: 30, scope: !96)
!98 = !DILocation(line: 33, column: 37, scope: !96)
!99 = !DILocation(line: 33, column: 43, scope: !96)
!100 = !DILocation(line: 33, column: 51, scope: !96)
!101 = !DILocation(line: 33, column: 17, scope: !96)
!102 = !DILocation(line: 34, column: 13, scope: !96)
!103 = !DILocation(line: 35, column: 20, scope: !70)
!104 = !DILocation(line: 35, column: 26, scope: !70)
!105 = !DILocation(line: 35, column: 34, scope: !70)
!106 = !DILocation(line: 35, column: 32, scope: !70)
!107 = !DILocation(line: 35, column: 44, scope: !70)
!108 = !DILocation(line: 35, column: 54, scope: !70)
!109 = !DILocation(line: 35, column: 13, scope: !70)
!110 = !DILocation(line: 36, column: 28, scope: !70)
!111 = !DILocation(line: 36, column: 34, scope: !70)
!112 = !DILocation(line: 36, column: 13, scope: !70)
!113 = !DILocation(line: 36, column: 19, scope: !70)
!114 = !DILocation(line: 36, column: 26, scope: !70)
!115 = !DILocation(line: 37, column: 18, scope: !70)
!116 = !DILocation(line: 37, column: 13, scope: !70)
!117 = !DILocation(line: 38, column: 18, scope: !70)
!118 = !DILocation(line: 38, column: 13, scope: !70)
!119 = !DILocation(line: 40, column: 5, scope: !47)
!120 = !DILocation(line: 42, column: 12, scope: !25)
!121 = !DILocation(line: 42, column: 5, scope: !25)
!122 = distinct !DISubprogram(name: "xmlNanoHTTPRead", scope: !1, file: !1, line: 45, type: !123, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!123 = !DISubroutineType(types: !124)
!124 = !{!13, !3, !9, !13}
!125 = !DILocalVariable(name: "ctx", arg: 1, scope: !122, file: !1, line: 45, type: !3)
!126 = !DILocation(line: 45, column: 27, scope: !122)
!127 = !DILocalVariable(name: "dest", arg: 2, scope: !122, file: !1, line: 45, type: !9)
!128 = !DILocation(line: 45, column: 38, scope: !122)
!129 = !DILocalVariable(name: "len", arg: 3, scope: !122, file: !1, line: 45, type: !13)
!130 = !DILocation(line: 45, column: 48, scope: !122)
!131 = !DILocalVariable(name: "ctxt", scope: !122, file: !1, line: 46, type: !4)
!132 = !DILocation(line: 46, column: 22, scope: !122)
!133 = !DILocation(line: 46, column: 48, scope: !122)
!134 = !DILocation(line: 46, column: 29, scope: !122)
!135 = !DILocation(line: 48, column: 9, scope: !136)
!136 = distinct !DILexicalBlock(scope: !122, file: !1, line: 48, column: 9)
!137 = !DILocation(line: 48, column: 14, scope: !136)
!138 = !DILocation(line: 48, column: 22, scope: !136)
!139 = !DILocation(line: 48, column: 25, scope: !136)
!140 = !DILocation(line: 48, column: 30, scope: !136)
!141 = !DILocation(line: 48, column: 38, scope: !136)
!142 = !DILocation(line: 48, column: 41, scope: !136)
!143 = !DILocation(line: 48, column: 45, scope: !136)
!144 = !DILocation(line: 48, column: 9, scope: !122)
!145 = !DILocation(line: 49, column: 9, scope: !146)
!146 = distinct !DILexicalBlock(scope: !136, file: !1, line: 48, column: 51)
!147 = !DILocation(line: 52, column: 5, scope: !122)
!148 = !DILocation(line: 52, column: 12, scope: !122)
!149 = !DILocation(line: 52, column: 18, scope: !122)
!150 = !DILocation(line: 52, column: 26, scope: !122)
!151 = !DILocation(line: 52, column: 32, scope: !122)
!152 = !DILocation(line: 52, column: 24, scope: !122)
!153 = !DILocation(line: 52, column: 41, scope: !122)
!154 = !DILocation(line: 52, column: 39, scope: !122)
!155 = !DILocation(line: 53, column: 29, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !1, line: 53, column: 13)
!157 = distinct !DILexicalBlock(scope: !122, file: !1, line: 52, column: 46)
!158 = !DILocation(line: 53, column: 13, scope: !156)
!159 = !DILocation(line: 53, column: 35, scope: !156)
!160 = !DILocation(line: 53, column: 13, scope: !157)
!161 = !DILocation(line: 53, column: 41, scope: !156)
!162 = distinct !{!162, !147, !163, !164}
!163 = !DILocation(line: 54, column: 5, scope: !122)
!164 = !{!"llvm.loop.mustprogress"}
!165 = !DILocation(line: 55, column: 9, scope: !166)
!166 = distinct !DILexicalBlock(scope: !122, file: !1, line: 55, column: 9)
!167 = !DILocation(line: 55, column: 15, scope: !166)
!168 = !DILocation(line: 55, column: 23, scope: !166)
!169 = !DILocation(line: 55, column: 29, scope: !166)
!170 = !DILocation(line: 55, column: 21, scope: !166)
!171 = !DILocation(line: 55, column: 38, scope: !166)
!172 = !DILocation(line: 55, column: 36, scope: !166)
!173 = !DILocation(line: 55, column: 9, scope: !122)
!174 = !DILocation(line: 56, column: 15, scope: !166)
!175 = !DILocation(line: 56, column: 21, scope: !166)
!176 = !DILocation(line: 56, column: 29, scope: !166)
!177 = !DILocation(line: 56, column: 35, scope: !166)
!178 = !DILocation(line: 56, column: 27, scope: !166)
!179 = !DILocation(line: 56, column: 13, scope: !166)
!180 = !DILocation(line: 56, column: 9, scope: !166)
!181 = !DILocation(line: 58, column: 5, scope: !122)
!182 = !DILocation(line: 59, column: 5, scope: !122)
!183 = !DILocation(line: 61, column: 12, scope: !122)
!184 = !DILocation(line: 61, column: 18, scope: !122)
!185 = !DILocation(line: 61, column: 24, scope: !122)
!186 = !DILocation(line: 61, column: 32, scope: !122)
!187 = !DILocation(line: 61, column: 5, scope: !122)
!188 = !DILocation(line: 62, column: 21, scope: !122)
!189 = !DILocation(line: 62, column: 5, scope: !122)
!190 = !DILocation(line: 62, column: 11, scope: !122)
!191 = !DILocation(line: 62, column: 18, scope: !122)
!192 = !DILocation(line: 63, column: 12, scope: !122)
!193 = !DILocation(line: 63, column: 5, scope: !122)
!194 = !DILocation(line: 64, column: 1, scope: !122)
!195 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 66, type: !196, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!196 = !DISubroutineType(types: !197)
!197 = !{!13}
!198 = !DILocalVariable(name: "ctxt", scope: !195, file: !1, line: 67, type: !5)
!199 = !DILocation(line: 67, column: 21, scope: !195)
!200 = !DILocalVariable(name: "dest", scope: !195, file: !1, line: 68, type: !201)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 8192, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 1024)
!204 = !DILocation(line: 68, column: 10, scope: !195)
!205 = !DILocalVariable(name: "len", scope: !195, file: !1, line: 69, type: !13)
!206 = !DILocation(line: 69, column: 9, scope: !195)
!207 = !DILocation(line: 71, column: 24, scope: !195)
!208 = !DILocation(line: 71, column: 5, scope: !195)
!209 = !DILocation(line: 72, column: 24, scope: !195)
!210 = !DILocation(line: 72, column: 5, scope: !195)
!211 = !DILocation(line: 74, column: 17, scope: !195)
!212 = !DILocation(line: 74, column: 21, scope: !195)
!213 = !DILocation(line: 74, column: 25, scope: !195)
!214 = !DILocation(line: 74, column: 28, scope: !195)
!215 = !DILocation(line: 74, column: 32, scope: !195)
!216 = !DILocation(line: 0, scope: !195)
!217 = !DILocation(line: 74, column: 5, scope: !195)
!218 = !DILocation(line: 75, column: 22, scope: !195)
!219 = !DILocation(line: 75, column: 28, scope: !195)
!220 = !DILocation(line: 75, column: 17, scope: !195)
!221 = !DILocation(line: 75, column: 5, scope: !195)
!222 = !DILocation(line: 76, column: 22, scope: !195)
!223 = !DILocation(line: 76, column: 29, scope: !195)
!224 = !DILocation(line: 76, column: 17, scope: !195)
!225 = !DILocation(line: 76, column: 5, scope: !195)
!226 = !DILocation(line: 77, column: 22, scope: !195)
!227 = !DILocation(line: 77, column: 36, scope: !195)
!228 = !DILocation(line: 77, column: 28, scope: !195)
!229 = !DILocation(line: 77, column: 17, scope: !195)
!230 = !DILocation(line: 77, column: 5, scope: !195)
!231 = !DILocalVariable(name: "available_data", scope: !195, file: !1, line: 79, type: !75)
!232 = !DILocation(line: 79, column: 12, scope: !195)
!233 = !DILocation(line: 79, column: 34, scope: !195)
!234 = !DILocation(line: 79, column: 47, scope: !195)
!235 = !DILocation(line: 79, column: 40, scope: !195)
!236 = !DILocation(line: 80, column: 17, scope: !195)
!237 = !DILocation(line: 80, column: 32, scope: !195)
!238 = !DILocation(line: 80, column: 5, scope: !195)
!239 = !DILocation(line: 82, column: 9, scope: !240)
!240 = distinct !DILexicalBlock(scope: !195, file: !1, line: 82, column: 9)
!241 = !DILocation(line: 82, column: 24, scope: !240)
!242 = !DILocation(line: 82, column: 9, scope: !195)
!243 = !DILocation(line: 83, column: 26, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !1, line: 82, column: 29)
!245 = !DILocation(line: 83, column: 33, scope: !244)
!246 = !DILocation(line: 83, column: 21, scope: !244)
!247 = !DILocation(line: 83, column: 9, scope: !244)
!248 = !DILocation(line: 84, column: 5, scope: !244)
!249 = !DILocation(line: 86, column: 21, scope: !195)
!250 = !DILocation(line: 86, column: 28, scope: !195)
!251 = !DILocation(line: 86, column: 34, scope: !195)
!252 = !DILocation(line: 86, column: 5, scope: !195)
!253 = !DILocation(line: 88, column: 5, scope: !195)
!254 = distinct !DISubprogram(name: "memcpy", scope: !255, file: !255, line: 12, type: !256, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !28)
!255 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!256 = !DISubroutineType(types: !257)
!257 = !{!3, !3, !258, !75}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!260 = !DILocalVariable(name: "destaddr", arg: 1, scope: !254, file: !255, line: 12, type: !3)
!261 = !DILocation(line: 12, column: 20, scope: !254)
!262 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !254, file: !255, line: 12, type: !258)
!263 = !DILocation(line: 12, column: 42, scope: !254)
!264 = !DILocalVariable(name: "len", arg: 3, scope: !254, file: !255, line: 12, type: !75)
!265 = !DILocation(line: 12, column: 58, scope: !254)
!266 = !DILocalVariable(name: "dest", scope: !254, file: !255, line: 13, type: !9)
!267 = !DILocation(line: 13, column: 9, scope: !254)
!268 = !DILocation(line: 13, column: 16, scope: !254)
!269 = !DILocalVariable(name: "src", scope: !254, file: !255, line: 14, type: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!272 = !DILocation(line: 14, column: 15, scope: !254)
!273 = !DILocation(line: 14, column: 21, scope: !254)
!274 = !DILocation(line: 16, column: 3, scope: !254)
!275 = !DILocation(line: 16, column: 13, scope: !254)
!276 = !DILocation(line: 16, column: 16, scope: !254)
!277 = !DILocation(line: 17, column: 19, scope: !254)
!278 = !DILocation(line: 17, column: 15, scope: !254)
!279 = !DILocation(line: 17, column: 10, scope: !254)
!280 = !DILocation(line: 17, column: 13, scope: !254)
!281 = distinct !{!281, !274, !277, !164}
!282 = !DILocation(line: 18, column: 10, scope: !254)
!283 = !DILocation(line: 18, column: 3, scope: !254)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/245_xmlregexp.c_3474_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/245_xmlregexp.c_3474_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegExecCtxt = type { i32*, i32* }
%struct._xmlRegexp = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"creating execution context\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [123 x i8] c"(comp->nbCounters >= 0 && comp->nbCounters * sizeof(int) * 2 <= comp->nbCounters * sizeof(int) * 2) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/245_xmlregexp.c_3474_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlRegNewExecCtxt = private unnamed_addr constant [66 x i8] c"xmlRegExecCtxtPtr xmlRegNewExecCtxt(xmlRegexpPtr, void *, void *)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"nbCounters\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"regexp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRegexpErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !29 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !36, metadata !DIExpression()), !dbg !37
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !38, metadata !DIExpression()), !dbg !39
  ret void, !dbg !40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !41 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !44, metadata !DIExpression()), !dbg !45
  %3 = load i8*, i8** %2, align 8, !dbg !46
  call void @free(i8* noundef %3) #7, !dbg !47
  ret void, !dbg !48
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRegExecCtxt* @xmlRegNewExecCtxt(%struct._xmlRegexp* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !49 {
  %4 = alloca %struct._xmlRegExecCtxt*, align 8
  %5 = alloca %struct._xmlRegexp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._xmlRegExecCtxt*, align 8
  store %struct._xmlRegexp* %0, %struct._xmlRegexp** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegexp** %5, metadata !52, metadata !DIExpression()), !dbg !53
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !54, metadata !DIExpression()), !dbg !55
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecCtxt** %8, metadata !58, metadata !DIExpression()), !dbg !59
  %9 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !60
  %10 = bitcast i8* %9 to %struct._xmlRegExecCtxt*, !dbg !61
  store %struct._xmlRegExecCtxt* %10, %struct._xmlRegExecCtxt** %8, align 8, !dbg !62
  %11 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %8, align 8, !dbg !63
  %12 = icmp eq %struct._xmlRegExecCtxt* %11, null, !dbg !65
  br i1 %12, label %13, label %14, !dbg !66

13:                                               ; preds = %3
  call void @xmlRegexpErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0)), !dbg !67
  store %struct._xmlRegExecCtxt* null, %struct._xmlRegExecCtxt** %4, align 8, !dbg !69
  br label %90, !dbg !69

14:                                               ; preds = %3
  %15 = load %struct._xmlRegexp*, %struct._xmlRegexp** %5, align 8, !dbg !70
  %16 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %15, i32 0, i32 0, !dbg !72
  %17 = load i32, i32* %16, align 4, !dbg !72
  %18 = icmp sge i32 %17, 0, !dbg !73
  br i1 %18, label %19, label %83, !dbg !74

19:                                               ; preds = %14
  %20 = load %struct._xmlRegexp*, %struct._xmlRegexp** %5, align 8, !dbg !75
  %21 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %20, i32 0, i32 0, !dbg !77
  %22 = load i32, i32* %21, align 4, !dbg !77
  %23 = sext i32 %22 to i64, !dbg !75
  %24 = mul i64 %23, 4, !dbg !78
  %25 = mul i64 %24, 2, !dbg !79
  %26 = call noalias i8* @malloc(i64 noundef %25) #7, !dbg !80
  %27 = bitcast i8* %26 to i32*, !dbg !81
  %28 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %8, align 8, !dbg !82
  %29 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %28, i32 0, i32 0, !dbg !83
  store i32* %27, i32** %29, align 8, !dbg !84
  %30 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %8, align 8, !dbg !85
  %31 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %30, i32 0, i32 0, !dbg !87
  %32 = load i32*, i32** %31, align 8, !dbg !87
  %33 = icmp eq i32* %32, null, !dbg !88
  br i1 %33, label %34, label %37, !dbg !89

34:                                               ; preds = %19
  call void @xmlRegexpErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0)), !dbg !90
  %35 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %8, align 8, !dbg !92
  %36 = bitcast %struct._xmlRegExecCtxt* %35 to i8*, !dbg !92
  call void @xmlFree(i8* noundef %36), !dbg !93
  store %struct._xmlRegExecCtxt* null, %struct._xmlRegExecCtxt** %4, align 8, !dbg !94
  br label %90, !dbg !94

37:                                               ; preds = %19
  %38 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %8, align 8, !dbg !95
  %39 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %38, i32 0, i32 0, !dbg !96
  %40 = load i32*, i32** %39, align 8, !dbg !96
  %41 = bitcast i32* %40 to i8*, !dbg !97
  %42 = load %struct._xmlRegexp*, %struct._xmlRegexp** %5, align 8, !dbg !98
  %43 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %42, i32 0, i32 0, !dbg !99
  %44 = load i32, i32* %43, align 4, !dbg !99
  %45 = sext i32 %44 to i64, !dbg !98
  %46 = mul i64 %45, 4, !dbg !100
  %47 = mul i64 %46, 2, !dbg !101
  %48 = call i8* @memset(i8* %41, i32 0, i64 %47), !dbg !97
  %49 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %8, align 8, !dbg !102
  %50 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %49, i32 0, i32 0, !dbg !103
  %51 = load i32*, i32** %50, align 8, !dbg !103
  %52 = load %struct._xmlRegexp*, %struct._xmlRegexp** %5, align 8, !dbg !104
  %53 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %52, i32 0, i32 0, !dbg !105
  %54 = load i32, i32* %53, align 4, !dbg !105
  %55 = sext i32 %54 to i64, !dbg !102
  %56 = getelementptr inbounds i32, i32* %51, i64 %55, !dbg !102
  %57 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %8, align 8, !dbg !106
  %58 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %57, i32 0, i32 1, !dbg !107
  store i32* %56, i32** %58, align 8, !dbg !108
  %59 = load %struct._xmlRegexp*, %struct._xmlRegexp** %5, align 8, !dbg !109
  %60 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %59, i32 0, i32 0, !dbg !109
  %61 = load i32, i32* %60, align 4, !dbg !109
  %62 = icmp sge i32 %61, 0, !dbg !109
  br i1 %62, label %63, label %79, !dbg !109

63:                                               ; preds = %37
  %64 = load %struct._xmlRegexp*, %struct._xmlRegexp** %5, align 8, !dbg !109
  %65 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %64, i32 0, i32 0, !dbg !109
  %66 = load i32, i32* %65, align 4, !dbg !109
  %67 = sext i32 %66 to i64, !dbg !109
  %68 = mul i64 %67, 4, !dbg !109
  %69 = mul i64 %68, 2, !dbg !109
  %70 = load %struct._xmlRegexp*, %struct._xmlRegexp** %5, align 8, !dbg !109
  %71 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %70, i32 0, i32 0, !dbg !109
  %72 = load i32, i32* %71, align 4, !dbg !109
  %73 = sext i32 %72 to i64, !dbg !109
  %74 = mul i64 %73, 4, !dbg !109
  %75 = mul i64 %74, 2, !dbg !109
  %76 = icmp ule i64 %69, %75, !dbg !109
  br i1 %76, label %77, label %79, !dbg !109

77:                                               ; preds = %63
  br i1 true, label %78, label %79, !dbg !109

78:                                               ; preds = %77
  br label %81, !dbg !109

79:                                               ; preds = %77, %63, %37
  %80 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([123 x i8], [123 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @__PRETTY_FUNCTION__.xmlRegNewExecCtxt, i64 0, i64 0)), !dbg !109
  br label %81, !dbg !109

81:                                               ; preds = %79, %78
  %82 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @__PRETTY_FUNCTION__.xmlRegNewExecCtxt, i64 0, i64 0)), !dbg !110
  br label %88, !dbg !111

83:                                               ; preds = %14
  %84 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %8, align 8, !dbg !112
  %85 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %84, i32 0, i32 0, !dbg !114
  store i32* null, i32** %85, align 8, !dbg !115
  %86 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %8, align 8, !dbg !116
  %87 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %86, i32 0, i32 1, !dbg !117
  store i32* null, i32** %87, align 8, !dbg !118
  br label %88

88:                                               ; preds = %83, %81
  %89 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %8, align 8, !dbg !119
  store %struct._xmlRegExecCtxt* %89, %struct._xmlRegExecCtxt** %4, align 8, !dbg !120
  br label %90, !dbg !120

90:                                               ; preds = %88, %34, %13
  %91 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %4, align 8, !dbg !121
  ret %struct._xmlRegExecCtxt* %91, !dbg !121
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRegExecCtxt* @xmlRegNewParserCtxt(i8* noundef %0) #0 !dbg !122 {
  %2 = alloca %struct._xmlRegExecCtxt*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._xmlRegexp*, align 8
  %5 = alloca %struct._xmlRegExecCtxt*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !125, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.declare(metadata %struct._xmlRegexp** %4, metadata !127, metadata !DIExpression()), !dbg !128
  %6 = call noalias i8* @malloc(i64 noundef 4) #7, !dbg !129
  %7 = bitcast i8* %6 to %struct._xmlRegexp*, !dbg !130
  store %struct._xmlRegexp* %7, %struct._xmlRegexp** %4, align 8, !dbg !128
  %8 = load %struct._xmlRegexp*, %struct._xmlRegexp** %4, align 8, !dbg !131
  %9 = icmp eq %struct._xmlRegexp* %8, null, !dbg !133
  br i1 %9, label %10, label %11, !dbg !134

10:                                               ; preds = %1
  store %struct._xmlRegExecCtxt* null, %struct._xmlRegExecCtxt** %2, align 8, !dbg !135
  br label %33, !dbg !135

11:                                               ; preds = %1
  %12 = load %struct._xmlRegexp*, %struct._xmlRegexp** %4, align 8, !dbg !136
  %13 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %12, i32 0, i32 0, !dbg !137
  %14 = bitcast i32* %13 to i8*, !dbg !138
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0)), !dbg !139
  %15 = load %struct._xmlRegexp*, %struct._xmlRegexp** %4, align 8, !dbg !140
  %16 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %15, i32 0, i32 0, !dbg !141
  %17 = load i32, i32* %16, align 4, !dbg !141
  %18 = icmp sge i32 %17, -10, !dbg !142
  br i1 %18, label %19, label %24, !dbg !143

19:                                               ; preds = %11
  %20 = load %struct._xmlRegexp*, %struct._xmlRegexp** %4, align 8, !dbg !144
  %21 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %20, i32 0, i32 0, !dbg !145
  %22 = load i32, i32* %21, align 4, !dbg !145
  %23 = icmp sle i32 %22, 100, !dbg !146
  br label %24

24:                                               ; preds = %19, %11
  %25 = phi i1 [ false, %11 ], [ %23, %19 ], !dbg !147
  %26 = zext i1 %25 to i32, !dbg !143
  %27 = sext i32 %26 to i64, !dbg !140
  call void @klee_assume(i64 noundef %27), !dbg !148
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecCtxt** %5, metadata !149, metadata !DIExpression()), !dbg !150
  %28 = load %struct._xmlRegexp*, %struct._xmlRegexp** %4, align 8, !dbg !151
  %29 = call %struct._xmlRegExecCtxt* @xmlRegNewExecCtxt(%struct._xmlRegexp* noundef %28, i8* noundef null, i8* noundef null), !dbg !152
  store %struct._xmlRegExecCtxt* %29, %struct._xmlRegExecCtxt** %5, align 8, !dbg !150
  %30 = load %struct._xmlRegexp*, %struct._xmlRegexp** %4, align 8, !dbg !153
  %31 = bitcast %struct._xmlRegexp* %30 to i8*, !dbg !153
  call void @free(i8* noundef %31) #7, !dbg !154
  %32 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !155
  store %struct._xmlRegExecCtxt* %32, %struct._xmlRegExecCtxt** %2, align 8, !dbg !156
  br label %33, !dbg !156

33:                                               ; preds = %24, %10
  %34 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !157
  ret %struct._xmlRegExecCtxt* %34, !dbg !157
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !158 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca %struct._xmlRegExecCtxt*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !161, metadata !DIExpression()), !dbg !165
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !166
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 256, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)), !dbg !167
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecCtxt** %3, metadata !168, metadata !DIExpression()), !dbg !169
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !170
  %6 = call %struct._xmlRegExecCtxt* @xmlRegNewParserCtxt(i8* noundef %5), !dbg !171
  store %struct._xmlRegExecCtxt* %6, %struct._xmlRegExecCtxt** %3, align 8, !dbg !169
  %7 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !172
  %8 = icmp ne %struct._xmlRegExecCtxt* %7, null, !dbg !174
  br i1 %8, label %9, label %22, !dbg !175

9:                                                ; preds = %0
  %10 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !176
  %11 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %10, i32 0, i32 0, !dbg !179
  %12 = load i32*, i32** %11, align 8, !dbg !179
  %13 = icmp ne i32* %12, null, !dbg !180
  br i1 %13, label %14, label %19, !dbg !181

14:                                               ; preds = %9
  %15 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !182
  %16 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %15, i32 0, i32 0, !dbg !184
  %17 = load i32*, i32** %16, align 8, !dbg !184
  %18 = bitcast i32* %17 to i8*, !dbg !182
  call void @free(i8* noundef %18) #7, !dbg !185
  br label %19, !dbg !186

19:                                               ; preds = %14, %9
  %20 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !187
  %21 = bitcast %struct._xmlRegExecCtxt* %20 to i8*, !dbg !187
  call void @free(i8* noundef %21) #7, !dbg !188
  br label %22, !dbg !189

22:                                               ; preds = %19, %0
  ret i32 0, !dbg !190
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !191 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !198, metadata !DIExpression()), !dbg !199
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !200, metadata !DIExpression()), !dbg !201
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !202, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.declare(metadata i8** %7, metadata !204, metadata !DIExpression()), !dbg !206
  %8 = load i8*, i8** %4, align 8, !dbg !207
  store i8* %8, i8** %7, align 8, !dbg !206
  br label %9, !dbg !208

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !209
  %11 = add i64 %10, -1, !dbg !209
  store i64 %11, i64* %6, align 8, !dbg !209
  %12 = icmp ugt i64 %10, 0, !dbg !210
  br i1 %12, label %13, label %18, !dbg !208

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !211
  %15 = trunc i32 %14 to i8, !dbg !211
  %16 = load i8*, i8** %7, align 8, !dbg !212
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !212
  store i8* %17, i8** %7, align 8, !dbg !212
  store i8 %15, i8* %16, align 1, !dbg !213
  br label %9, !dbg !208, !llvm.loop !214

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !216
  ret i8* %19, !dbg !217
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28, !28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/245_xmlregexp.c_3474_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "b655f0991a12175996cb6d8063c88cfc")
!2 = !{!3, !12, !9, !13}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegExecCtxtPtr", file: !1, line: 11, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegExecCtxt", file: !1, line: 10, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegExecCtxt", file: !1, line: 22, size: 128, elements: !7)
!7 = !{!8, !11}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !6, file: !1, line: 23, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "errCounts", scope: !6, file: !1, line: 24, baseType: !9, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexpPtr", file: !1, line: 13, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexp", file: !1, line: 12, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegexp", file: !1, line: 16, size: 32, elements: !17)
!17 = !{!18}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "nbCounters", scope: !16, file: !1, line: 17, baseType: !10, size: 32)
!19 = distinct !DICompileUnit(language: DW_LANG_C99, file: !20, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{i32 7, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"Ubuntu clang version 14.0.6"}
!29 = distinct !DISubprogram(name: "xmlRegexpErrMemory", scope: !1, file: !1, line: 29, type: !30, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !12, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!35 = !{}
!36 = !DILocalVariable(name: "ctxt", arg: 1, scope: !29, file: !1, line: 29, type: !12)
!37 = !DILocation(line: 29, column: 31, scope: !29)
!38 = !DILocalVariable(name: "msg", arg: 2, scope: !29, file: !1, line: 29, type: !32)
!39 = !DILocation(line: 29, column: 49, scope: !29)
!40 = !DILocation(line: 31, column: 1, scope: !29)
!41 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 33, type: !42, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !12}
!44 = !DILocalVariable(name: "ptr", arg: 1, scope: !41, file: !1, line: 33, type: !12)
!45 = !DILocation(line: 33, column: 20, scope: !41)
!46 = !DILocation(line: 34, column: 10, scope: !41)
!47 = !DILocation(line: 34, column: 5, scope: !41)
!48 = !DILocation(line: 35, column: 1, scope: !41)
!49 = distinct !DISubprogram(name: "xmlRegNewExecCtxt", scope: !1, file: !1, line: 38, type: !50, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!50 = !DISubroutineType(types: !51)
!51 = !{!3, !13, !12, !12}
!52 = !DILocalVariable(name: "comp", arg: 1, scope: !49, file: !1, line: 38, type: !13)
!53 = !DILocation(line: 38, column: 50, scope: !49)
!54 = !DILocalVariable(name: "callback", arg: 2, scope: !49, file: !1, line: 38, type: !12)
!55 = !DILocation(line: 38, column: 62, scope: !49)
!56 = !DILocalVariable(name: "data", arg: 3, scope: !49, file: !1, line: 38, type: !12)
!57 = !DILocation(line: 38, column: 78, scope: !49)
!58 = !DILocalVariable(name: "exec", scope: !49, file: !1, line: 39, type: !3)
!59 = !DILocation(line: 39, column: 23, scope: !49)
!60 = !DILocation(line: 41, column: 31, scope: !49)
!61 = !DILocation(line: 41, column: 12, scope: !49)
!62 = !DILocation(line: 41, column: 10, scope: !49)
!63 = !DILocation(line: 42, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !49, file: !1, line: 42, column: 9)
!65 = !DILocation(line: 42, column: 14, scope: !64)
!66 = !DILocation(line: 42, column: 9, scope: !49)
!67 = !DILocation(line: 43, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !1, line: 42, column: 23)
!69 = !DILocation(line: 44, column: 9, scope: !68)
!70 = !DILocation(line: 47, column: 9, scope: !71)
!71 = distinct !DILexicalBlock(scope: !49, file: !1, line: 47, column: 9)
!72 = !DILocation(line: 47, column: 15, scope: !71)
!73 = !DILocation(line: 47, column: 26, scope: !71)
!74 = !DILocation(line: 47, column: 9, scope: !49)
!75 = !DILocation(line: 48, column: 38, scope: !76)
!76 = distinct !DILexicalBlock(scope: !71, file: !1, line: 47, column: 32)
!77 = !DILocation(line: 48, column: 44, scope: !76)
!78 = !DILocation(line: 48, column: 55, scope: !76)
!79 = !DILocation(line: 48, column: 69, scope: !76)
!80 = !DILocation(line: 48, column: 31, scope: !76)
!81 = !DILocation(line: 48, column: 24, scope: !76)
!82 = !DILocation(line: 48, column: 9, scope: !76)
!83 = !DILocation(line: 48, column: 15, scope: !76)
!84 = !DILocation(line: 48, column: 22, scope: !76)
!85 = !DILocation(line: 49, column: 13, scope: !86)
!86 = distinct !DILexicalBlock(scope: !76, file: !1, line: 49, column: 13)
!87 = !DILocation(line: 49, column: 19, scope: !86)
!88 = !DILocation(line: 49, column: 26, scope: !86)
!89 = !DILocation(line: 49, column: 13, scope: !76)
!90 = !DILocation(line: 50, column: 13, scope: !91)
!91 = distinct !DILexicalBlock(scope: !86, file: !1, line: 49, column: 35)
!92 = !DILocation(line: 51, column: 21, scope: !91)
!93 = !DILocation(line: 51, column: 13, scope: !91)
!94 = !DILocation(line: 52, column: 13, scope: !91)
!95 = !DILocation(line: 55, column: 16, scope: !76)
!96 = !DILocation(line: 55, column: 22, scope: !76)
!97 = !DILocation(line: 55, column: 9, scope: !76)
!98 = !DILocation(line: 55, column: 33, scope: !76)
!99 = !DILocation(line: 55, column: 39, scope: !76)
!100 = !DILocation(line: 55, column: 50, scope: !76)
!101 = !DILocation(line: 55, column: 64, scope: !76)
!102 = !DILocation(line: 56, column: 28, scope: !76)
!103 = !DILocation(line: 56, column: 34, scope: !76)
!104 = !DILocation(line: 56, column: 41, scope: !76)
!105 = !DILocation(line: 56, column: 47, scope: !76)
!106 = !DILocation(line: 56, column: 9, scope: !76)
!107 = !DILocation(line: 56, column: 15, scope: !76)
!108 = !DILocation(line: 56, column: 25, scope: !76)
!109 = !DILocation(line: 59, column: 9, scope: !76)
!110 = !DILocation(line: 62, column: 9, scope: !76)
!111 = !DILocation(line: 63, column: 5, scope: !76)
!112 = !DILocation(line: 64, column: 9, scope: !113)
!113 = distinct !DILexicalBlock(scope: !71, file: !1, line: 63, column: 12)
!114 = !DILocation(line: 64, column: 15, scope: !113)
!115 = !DILocation(line: 64, column: 22, scope: !113)
!116 = !DILocation(line: 65, column: 9, scope: !113)
!117 = !DILocation(line: 65, column: 15, scope: !113)
!118 = !DILocation(line: 65, column: 25, scope: !113)
!119 = !DILocation(line: 68, column: 12, scope: !49)
!120 = !DILocation(line: 68, column: 5, scope: !49)
!121 = !DILocation(line: 69, column: 1, scope: !49)
!122 = distinct !DISubprogram(name: "xmlRegNewParserCtxt", scope: !1, file: !1, line: 72, type: !123, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!123 = !DISubroutineType(types: !124)
!124 = !{!3, !32}
!125 = !DILocalVariable(name: "regexp", arg: 1, scope: !122, file: !1, line: 72, type: !32)
!126 = !DILocation(line: 72, column: 51, scope: !122)
!127 = !DILocalVariable(name: "comp", scope: !122, file: !1, line: 74, type: !13)
!128 = !DILocation(line: 74, column: 18, scope: !122)
!129 = !DILocation(line: 74, column: 39, scope: !122)
!130 = !DILocation(line: 74, column: 25, scope: !122)
!131 = !DILocation(line: 75, column: 9, scope: !132)
!132 = distinct !DILexicalBlock(scope: !122, file: !1, line: 75, column: 9)
!133 = !DILocation(line: 75, column: 14, scope: !132)
!134 = !DILocation(line: 75, column: 9, scope: !122)
!135 = !DILocation(line: 75, column: 23, scope: !132)
!136 = !DILocation(line: 78, column: 25, scope: !122)
!137 = !DILocation(line: 78, column: 31, scope: !122)
!138 = !DILocation(line: 78, column: 24, scope: !122)
!139 = !DILocation(line: 78, column: 5, scope: !122)
!140 = !DILocation(line: 81, column: 17, scope: !122)
!141 = !DILocation(line: 81, column: 23, scope: !122)
!142 = !DILocation(line: 81, column: 34, scope: !122)
!143 = !DILocation(line: 81, column: 41, scope: !122)
!144 = !DILocation(line: 81, column: 44, scope: !122)
!145 = !DILocation(line: 81, column: 50, scope: !122)
!146 = !DILocation(line: 81, column: 61, scope: !122)
!147 = !DILocation(line: 0, scope: !122)
!148 = !DILocation(line: 81, column: 5, scope: !122)
!149 = !DILocalVariable(name: "exec", scope: !122, file: !1, line: 83, type: !3)
!150 = !DILocation(line: 83, column: 23, scope: !122)
!151 = !DILocation(line: 83, column: 48, scope: !122)
!152 = !DILocation(line: 83, column: 30, scope: !122)
!153 = !DILocation(line: 85, column: 10, scope: !122)
!154 = !DILocation(line: 85, column: 5, scope: !122)
!155 = !DILocation(line: 86, column: 12, scope: !122)
!156 = !DILocation(line: 86, column: 5, scope: !122)
!157 = !DILocation(line: 87, column: 1, scope: !122)
!158 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 89, type: !159, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!159 = !DISubroutineType(types: !160)
!160 = !{!10}
!161 = !DILocalVariable(name: "regexp", scope: !158, file: !1, line: 91, type: !162)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 2048, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 256)
!165 = !DILocation(line: 91, column: 10, scope: !158)
!166 = !DILocation(line: 92, column: 24, scope: !158)
!167 = !DILocation(line: 92, column: 5, scope: !158)
!168 = !DILocalVariable(name: "ctxt", scope: !158, file: !1, line: 95, type: !3)
!169 = !DILocation(line: 95, column: 23, scope: !158)
!170 = !DILocation(line: 95, column: 50, scope: !158)
!171 = !DILocation(line: 95, column: 30, scope: !158)
!172 = !DILocation(line: 98, column: 9, scope: !173)
!173 = distinct !DILexicalBlock(scope: !158, file: !1, line: 98, column: 9)
!174 = !DILocation(line: 98, column: 14, scope: !173)
!175 = !DILocation(line: 98, column: 9, scope: !158)
!176 = !DILocation(line: 99, column: 13, scope: !177)
!177 = distinct !DILexicalBlock(scope: !178, file: !1, line: 99, column: 13)
!178 = distinct !DILexicalBlock(scope: !173, file: !1, line: 98, column: 23)
!179 = !DILocation(line: 99, column: 19, scope: !177)
!180 = !DILocation(line: 99, column: 26, scope: !177)
!181 = !DILocation(line: 99, column: 13, scope: !178)
!182 = !DILocation(line: 100, column: 18, scope: !183)
!183 = distinct !DILexicalBlock(scope: !177, file: !1, line: 99, column: 35)
!184 = !DILocation(line: 100, column: 24, scope: !183)
!185 = !DILocation(line: 100, column: 13, scope: !183)
!186 = !DILocation(line: 101, column: 9, scope: !183)
!187 = !DILocation(line: 102, column: 14, scope: !178)
!188 = !DILocation(line: 102, column: 9, scope: !178)
!189 = !DILocation(line: 103, column: 5, scope: !178)
!190 = !DILocation(line: 105, column: 5, scope: !158)
!191 = distinct !DISubprogram(name: "memset", scope: !192, file: !192, line: 12, type: !193, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !35)
!192 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!193 = !DISubroutineType(types: !194)
!194 = !{!12, !12, !10, !195}
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !196, line: 46, baseType: !197)
!196 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!197 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!198 = !DILocalVariable(name: "dst", arg: 1, scope: !191, file: !192, line: 12, type: !12)
!199 = !DILocation(line: 12, column: 20, scope: !191)
!200 = !DILocalVariable(name: "s", arg: 2, scope: !191, file: !192, line: 12, type: !10)
!201 = !DILocation(line: 12, column: 29, scope: !191)
!202 = !DILocalVariable(name: "count", arg: 3, scope: !191, file: !192, line: 12, type: !195)
!203 = !DILocation(line: 12, column: 39, scope: !191)
!204 = !DILocalVariable(name: "a", scope: !191, file: !192, line: 13, type: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!206 = !DILocation(line: 13, column: 9, scope: !191)
!207 = !DILocation(line: 13, column: 13, scope: !191)
!208 = !DILocation(line: 14, column: 3, scope: !191)
!209 = !DILocation(line: 14, column: 15, scope: !191)
!210 = !DILocation(line: 14, column: 18, scope: !191)
!211 = !DILocation(line: 15, column: 12, scope: !191)
!212 = !DILocation(line: 15, column: 7, scope: !191)
!213 = !DILocation(line: 15, column: 10, scope: !191)
!214 = distinct !{!214, !208, !211, !215}
!215 = !{!"llvm.loop.mustprogress"}
!216 = !DILocation(line: 16, column: 10, scope: !191)
!217 = !DILocation(line: 16, column: 3, scope: !191)

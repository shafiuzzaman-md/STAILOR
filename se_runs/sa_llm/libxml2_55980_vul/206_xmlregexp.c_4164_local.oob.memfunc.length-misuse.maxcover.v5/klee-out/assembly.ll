; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/206_xmlregexp.c_4164_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/206_xmlregexp.c_4164_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegExecCtxt = type { %struct._xmlRegState*, i8*, %struct._xmlRegState*, i32*, i32*, %struct._xmlRegexp*, i32 }
%struct._xmlRegState = type { i32 }
%struct._xmlRegexp = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"progress\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"nbCounters\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"(exec->comp->nbCounters <= nbCounters) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_55980_vul/206_xmlregexp.c_4164_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !45 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !49, metadata !DIExpression()), !dbg !50
  %3 = load i8*, i8** %2, align 8, !dbg !51
  %4 = icmp ne i8* %3, null, !dbg !51
  br i1 %4, label %5, label %7, !dbg !53

5:                                                ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !54
  call void @free(i8* noundef %6) #8, !dbg !55
  br label %7, !dbg !55

7:                                                ; preds = %5, %1
  ret void, !dbg !56
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !57 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !62, metadata !DIExpression()), !dbg !63
  %6 = load i8*, i8** %3, align 8, !dbg !64
  %7 = icmp ne i8* %6, null, !dbg !64
  br i1 %7, label %9, label %8, !dbg !66

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !67
  br label %24, !dbg !67

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !68, metadata !DIExpression()), !dbg !72
  %10 = load i8*, i8** %3, align 8, !dbg !73
  %11 = call i64 @strlen(i8* noundef %10) #9, !dbg !74
  %12 = add i64 %11, 1, !dbg !75
  store i64 %12, i64* %4, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata i8** %5, metadata !76, metadata !DIExpression()), !dbg !77
  %13 = load i64, i64* %4, align 8, !dbg !78
  %14 = call noalias i8* @malloc(i64 noundef %13) #8, !dbg !79
  store i8* %14, i8** %5, align 8, !dbg !77
  %15 = load i8*, i8** %5, align 8, !dbg !80
  %16 = icmp ne i8* %15, null, !dbg !80
  br i1 %16, label %17, label %22, !dbg !82

17:                                               ; preds = %9
  %18 = load i8*, i8** %5, align 8, !dbg !83
  %19 = load i8*, i8** %3, align 8, !dbg !84
  %20 = load i64, i64* %4, align 8, !dbg !85
  %21 = call i8* @memcpy(i8* %18, i8* %19, i64 %20), !dbg !86
  br label %22, !dbg !86

22:                                               ; preds = %17, %9
  %23 = load i8*, i8** %5, align 8, !dbg !87
  store i8* %23, i8** %2, align 8, !dbg !88
  br label %24, !dbg !88

24:                                               ; preds = %22, %8
  %25 = load i8*, i8** %2, align 8, !dbg !89
  ret i8* %25, !dbg !89
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFARegExecRollBack(%struct._xmlRegExecCtxt* noundef %0) #0 !dbg !90 {
  %2 = alloca %struct._xmlRegExecCtxt*, align 8
  store %struct._xmlRegExecCtxt* %0, %struct._xmlRegExecCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecCtxt** %2, metadata !94, metadata !DIExpression()), !dbg !95
  %3 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !96
  %4 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %3, i32 0, i32 6, !dbg !97
  store i32 0, i32* %4, align 8, !dbg !98
  ret void, !dbg !99
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !100 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlRegExecCtxt*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !103, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !105, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i32* %4, metadata !110, metadata !DIExpression()), !dbg !111
  %6 = bitcast i32* %2 to i8*, !dbg !112
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !113
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !114
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 256, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)), !dbg !115
  %8 = bitcast i32* %4 to i8*, !dbg !116
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)), !dbg !117
  %9 = load i32, i32* %2, align 4, !dbg !118
  %10 = icmp ne i32 %9, 0, !dbg !119
  %11 = zext i1 %10 to i32, !dbg !119
  %12 = sext i32 %11 to i64, !dbg !118
  call void @klee_assume(i64 noundef %12), !dbg !120
  %13 = load i32, i32* %4, align 4, !dbg !121
  %14 = icmp sgt i32 %13, 0, !dbg !122
  %15 = zext i1 %14 to i32, !dbg !122
  %16 = sext i32 %15 to i64, !dbg !121
  call void @klee_assume(i64 noundef %16), !dbg !123
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecCtxt** %5, metadata !124, metadata !DIExpression()), !dbg !125
  %17 = call noalias i8* @malloc(i64 noundef 56) #8, !dbg !126
  %18 = bitcast i8* %17 to %struct._xmlRegExecCtxt*, !dbg !127
  store %struct._xmlRegExecCtxt* %18, %struct._xmlRegExecCtxt** %5, align 8, !dbg !125
  %19 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !128
  %20 = icmp ne %struct._xmlRegExecCtxt* %19, null, !dbg !129
  %21 = zext i1 %20 to i32, !dbg !129
  %22 = sext i32 %21 to i64, !dbg !128
  call void @klee_assume(i64 noundef %22), !dbg !130
  %23 = call noalias i8* @malloc(i64 noundef 4) #8, !dbg !131
  %24 = bitcast i8* %23 to %struct._xmlRegState*, !dbg !132
  %25 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !133
  %26 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %25, i32 0, i32 0, !dbg !134
  store %struct._xmlRegState* %24, %struct._xmlRegState** %26, align 8, !dbg !135
  %27 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !136
  %28 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %27, i32 0, i32 0, !dbg !137
  %29 = load %struct._xmlRegState*, %struct._xmlRegState** %28, align 8, !dbg !137
  %30 = icmp ne %struct._xmlRegState* %29, null, !dbg !138
  %31 = zext i1 %30 to i32, !dbg !138
  %32 = sext i32 %31 to i64, !dbg !136
  call void @klee_assume(i64 noundef %32), !dbg !139
  %33 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !140
  %34 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %33, i32 0, i32 0, !dbg !141
  %35 = load %struct._xmlRegState*, %struct._xmlRegState** %34, align 8, !dbg !141
  %36 = getelementptr inbounds %struct._xmlRegState, %struct._xmlRegState* %35, i32 0, i32 0, !dbg !142
  store i32 1, i32* %36, align 4, !dbg !143
  %37 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !144
  %38 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %37, i32 0, i32 1, !dbg !145
  store i8* null, i8** %38, align 8, !dbg !146
  %39 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !147
  %40 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %39, i32 0, i32 2, !dbg !148
  store %struct._xmlRegState* null, %struct._xmlRegState** %40, align 8, !dbg !149
  %41 = call noalias i8* @malloc(i64 noundef 4) #8, !dbg !150
  %42 = bitcast i8* %41 to %struct._xmlRegexp*, !dbg !151
  %43 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !152
  %44 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %43, i32 0, i32 5, !dbg !153
  store %struct._xmlRegexp* %42, %struct._xmlRegexp** %44, align 8, !dbg !154
  %45 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !155
  %46 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %45, i32 0, i32 5, !dbg !156
  %47 = load %struct._xmlRegexp*, %struct._xmlRegexp** %46, align 8, !dbg !156
  %48 = icmp ne %struct._xmlRegexp* %47, null, !dbg !157
  %49 = zext i1 %48 to i32, !dbg !157
  %50 = sext i32 %49 to i64, !dbg !155
  call void @klee_assume(i64 noundef %50), !dbg !158
  %51 = load i32, i32* %4, align 4, !dbg !159
  %52 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !160
  %53 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %52, i32 0, i32 5, !dbg !161
  %54 = load %struct._xmlRegexp*, %struct._xmlRegexp** %53, align 8, !dbg !161
  %55 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %54, i32 0, i32 0, !dbg !162
  store i32 %51, i32* %55, align 4, !dbg !163
  %56 = load i32, i32* %4, align 4, !dbg !164
  %57 = sext i32 %56 to i64, !dbg !164
  %58 = mul i64 %57, 4, !dbg !165
  %59 = call noalias i8* @malloc(i64 noundef %58) #8, !dbg !166
  %60 = bitcast i8* %59 to i32*, !dbg !167
  %61 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !168
  %62 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %61, i32 0, i32 4, !dbg !169
  store i32* %60, i32** %62, align 8, !dbg !170
  %63 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !171
  %64 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %63, i32 0, i32 4, !dbg !172
  %65 = load i32*, i32** %64, align 8, !dbg !172
  %66 = icmp ne i32* %65, null, !dbg !173
  %67 = zext i1 %66 to i32, !dbg !173
  %68 = sext i32 %67 to i64, !dbg !171
  call void @klee_assume(i64 noundef %68), !dbg !174
  %69 = load i32, i32* %4, align 4, !dbg !175
  %70 = sext i32 %69 to i64, !dbg !175
  %71 = mul i64 %70, 4, !dbg !176
  %72 = call noalias i8* @malloc(i64 noundef %71) #8, !dbg !177
  %73 = bitcast i8* %72 to i32*, !dbg !178
  %74 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !179
  %75 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %74, i32 0, i32 3, !dbg !180
  store i32* %73, i32** %75, align 8, !dbg !181
  %76 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !182
  %77 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %76, i32 0, i32 3, !dbg !183
  %78 = load i32*, i32** %77, align 8, !dbg !183
  %79 = icmp ne i32* %78, null, !dbg !184
  %80 = zext i1 %79 to i32, !dbg !184
  %81 = sext i32 %80 to i64, !dbg !182
  call void @klee_assume(i64 noundef %81), !dbg !185
  %82 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !186
  %83 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %82, i32 0, i32 5, !dbg !186
  %84 = load %struct._xmlRegexp*, %struct._xmlRegexp** %83, align 8, !dbg !186
  %85 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %84, i32 0, i32 0, !dbg !186
  %86 = load i32, i32* %85, align 4, !dbg !186
  %87 = load i32, i32* %4, align 4, !dbg !186
  %88 = icmp sle i32 %86, %87, !dbg !186
  br i1 %88, label %89, label %91, !dbg !186

89:                                               ; preds = %0
  br i1 true, label %90, label %91, !dbg !186

90:                                               ; preds = %89
  br label %93, !dbg !186

91:                                               ; preds = %89, %0
  %92 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.5, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !186
  br label %93, !dbg !186

93:                                               ; preds = %91, %90
  %94 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.5, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !187
  %95 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !188
  %96 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %95, i32 0, i32 4, !dbg !189
  %97 = load i32*, i32** %96, align 8, !dbg !189
  %98 = bitcast i32* %97 to i8*, !dbg !188
  call void @free(i8* noundef %98) #8, !dbg !190
  %99 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !191
  %100 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %99, i32 0, i32 3, !dbg !192
  %101 = load i32*, i32** %100, align 8, !dbg !192
  %102 = bitcast i32* %101 to i8*, !dbg !191
  call void @free(i8* noundef %102) #8, !dbg !193
  %103 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !194
  %104 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %103, i32 0, i32 5, !dbg !195
  %105 = load %struct._xmlRegexp*, %struct._xmlRegexp** %104, align 8, !dbg !195
  %106 = bitcast %struct._xmlRegexp* %105 to i8*, !dbg !194
  call void @free(i8* noundef %106) #8, !dbg !196
  %107 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !197
  %108 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %107, i32 0, i32 0, !dbg !198
  %109 = load %struct._xmlRegState*, %struct._xmlRegState** %108, align 8, !dbg !198
  %110 = bitcast %struct._xmlRegState* %109 to i8*, !dbg !197
  call void @free(i8* noundef %110) #8, !dbg !199
  %111 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !200
  %112 = bitcast %struct._xmlRegExecCtxt* %111 to i8*, !dbg !200
  call void @free(i8* noundef %112) #8, !dbg !201
  ret i32 0, !dbg !202
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !203 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !209, metadata !DIExpression()), !dbg !210
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !211, metadata !DIExpression()), !dbg !212
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !213, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata i8** %7, metadata !215, metadata !DIExpression()), !dbg !216
  %9 = load i8*, i8** %4, align 8, !dbg !217
  store i8* %9, i8** %7, align 8, !dbg !216
  call void @llvm.dbg.declare(metadata i8** %8, metadata !218, metadata !DIExpression()), !dbg !219
  %10 = load i8*, i8** %5, align 8, !dbg !220
  store i8* %10, i8** %8, align 8, !dbg !219
  br label %11, !dbg !221

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !222
  %13 = add i64 %12, -1, !dbg !222
  store i64 %13, i64* %6, align 8, !dbg !222
  %14 = icmp ugt i64 %12, 0, !dbg !223
  br i1 %14, label %15, label %21, !dbg !221

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !224
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !224
  store i8* %17, i8** %8, align 8, !dbg !224
  %18 = load i8, i8* %16, align 1, !dbg !225
  %19 = load i8*, i8** %7, align 8, !dbg !226
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !226
  store i8* %20, i8** %7, align 8, !dbg !226
  store i8 %18, i8* %19, align 1, !dbg !227
  br label %11, !dbg !221, !llvm.loop !228

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !230
  ret i8* %22, !dbg !231
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44, !44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !7, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/206_xmlregexp.c_4164_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "0e356ddbeaa0d39f0559d0e10782eb48")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 15, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{!6}
!6 = !DIEnumerator(name: "XML_REGEXP_SINK_STATE", value: 0)
!7 = !{!8, !10, !34, !15, !28, !24}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegExecCtxt", file: !1, line: 10, baseType: !12)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegExecCtxt", file: !1, line: 27, size: 448, elements: !13)
!13 = !{!14, !21, !22, !23, !26, !27, !33}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !12, file: !1, line: 28, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegState", file: !1, line: 13, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegState", file: !1, line: 19, size: 32, elements: !18)
!18 = !{!19}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !17, file: !1, line: 20, baseType: !20, size: 32)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegExpStateType", file: !1, line: 17, baseType: !3)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "errString", scope: !12, file: !1, line: 29, baseType: !8, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "errState", scope: !12, file: !1, line: 30, baseType: !15, size: 64, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "errCounts", scope: !12, file: !1, line: 31, baseType: !24, size: 64, offset: 192)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !12, file: !1, line: 32, baseType: !24, size: 64, offset: 256)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !12, file: !1, line: 33, baseType: !28, size: 64, offset: 320)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexp", file: !1, line: 12, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegexp", file: !1, line: 23, size: 32, elements: !31)
!31 = !{!32}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "nbCounters", scope: !30, file: !1, line: 24, baseType: !25, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "determinist", scope: !12, file: !1, line: 34, baseType: !25, size: 32, offset: 384)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!35 = distinct !DICompileUnit(language: DW_LANG_C99, file: !36, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!36 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!37 = !{i32 7, !"Dwarf Version", i32 5}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = !{i32 1, !"wchar_size", i32 4}
!40 = !{i32 7, !"PIC Level", i32 2}
!41 = !{i32 7, !"PIE Level", i32 2}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"Ubuntu clang version 14.0.6"}
!45 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 38, type: !46, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !48)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !34}
!48 = !{}
!49 = !DILocalVariable(name: "mem", arg: 1, scope: !45, file: !1, line: 38, type: !34)
!50 = !DILocation(line: 38, column: 20, scope: !45)
!51 = !DILocation(line: 39, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !45, file: !1, line: 39, column: 9)
!53 = !DILocation(line: 39, column: 9, scope: !45)
!54 = !DILocation(line: 39, column: 19, scope: !52)
!55 = !DILocation(line: 39, column: 14, scope: !52)
!56 = !DILocation(line: 40, column: 1, scope: !45)
!57 = distinct !DISubprogram(name: "xmlStrdup", scope: !1, file: !1, line: 42, type: !58, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !48)
!58 = !DISubroutineType(types: !59)
!59 = !{!8, !60}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!62 = !DILocalVariable(name: "cur", arg: 1, scope: !57, file: !1, line: 42, type: !60)
!63 = !DILocation(line: 42, column: 29, scope: !57)
!64 = !DILocation(line: 43, column: 10, scope: !65)
!65 = distinct !DILexicalBlock(scope: !57, file: !1, line: 43, column: 9)
!66 = !DILocation(line: 43, column: 9, scope: !57)
!67 = !DILocation(line: 43, column: 15, scope: !65)
!68 = !DILocalVariable(name: "len", scope: !57, file: !1, line: 44, type: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 46, baseType: !71)
!70 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!71 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!72 = !DILocation(line: 44, column: 12, scope: !57)
!73 = !DILocation(line: 44, column: 25, scope: !57)
!74 = !DILocation(line: 44, column: 18, scope: !57)
!75 = !DILocation(line: 44, column: 30, scope: !57)
!76 = !DILocalVariable(name: "res", scope: !57, file: !1, line: 45, type: !8)
!77 = !DILocation(line: 45, column: 11, scope: !57)
!78 = !DILocation(line: 45, column: 31, scope: !57)
!79 = !DILocation(line: 45, column: 24, scope: !57)
!80 = !DILocation(line: 46, column: 9, scope: !81)
!81 = distinct !DILexicalBlock(scope: !57, file: !1, line: 46, column: 9)
!82 = !DILocation(line: 46, column: 9, scope: !57)
!83 = !DILocation(line: 46, column: 21, scope: !81)
!84 = !DILocation(line: 46, column: 26, scope: !81)
!85 = !DILocation(line: 46, column: 31, scope: !81)
!86 = !DILocation(line: 46, column: 14, scope: !81)
!87 = !DILocation(line: 47, column: 12, scope: !57)
!88 = !DILocation(line: 47, column: 5, scope: !57)
!89 = !DILocation(line: 48, column: 1, scope: !57)
!90 = distinct !DISubprogram(name: "xmlFARegExecRollBack", scope: !1, file: !1, line: 50, type: !91, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !48)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !93}
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegExecCtxtPtr", file: !1, line: 11, baseType: !10)
!94 = !DILocalVariable(name: "exec", arg: 1, scope: !90, file: !1, line: 50, type: !93)
!95 = !DILocation(line: 50, column: 45, scope: !90)
!96 = !DILocation(line: 52, column: 5, scope: !90)
!97 = !DILocation(line: 52, column: 11, scope: !90)
!98 = !DILocation(line: 52, column: 23, scope: !90)
!99 = !DILocation(line: 53, column: 1, scope: !90)
!100 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 56, type: !101, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !48)
!101 = !DISubroutineType(types: !102)
!102 = !{!25}
!103 = !DILocalVariable(name: "progress", scope: !100, file: !1, line: 58, type: !25)
!104 = !DILocation(line: 58, column: 9, scope: !100)
!105 = !DILocalVariable(name: "value", scope: !100, file: !1, line: 59, type: !106)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2048, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 256)
!109 = !DILocation(line: 59, column: 10, scope: !100)
!110 = !DILocalVariable(name: "nbCounters", scope: !100, file: !1, line: 60, type: !25)
!111 = !DILocation(line: 60, column: 9, scope: !100)
!112 = !DILocation(line: 62, column: 24, scope: !100)
!113 = !DILocation(line: 62, column: 5, scope: !100)
!114 = !DILocation(line: 63, column: 24, scope: !100)
!115 = !DILocation(line: 63, column: 5, scope: !100)
!116 = !DILocation(line: 64, column: 24, scope: !100)
!117 = !DILocation(line: 64, column: 5, scope: !100)
!118 = !DILocation(line: 67, column: 17, scope: !100)
!119 = !DILocation(line: 67, column: 26, scope: !100)
!120 = !DILocation(line: 67, column: 5, scope: !100)
!121 = !DILocation(line: 68, column: 17, scope: !100)
!122 = !DILocation(line: 68, column: 28, scope: !100)
!123 = !DILocation(line: 68, column: 5, scope: !100)
!124 = !DILocalVariable(name: "exec", scope: !100, file: !1, line: 71, type: !10)
!125 = !DILocation(line: 71, column: 21, scope: !100)
!126 = !DILocation(line: 71, column: 45, scope: !100)
!127 = !DILocation(line: 71, column: 28, scope: !100)
!128 = !DILocation(line: 72, column: 17, scope: !100)
!129 = !DILocation(line: 72, column: 22, scope: !100)
!130 = !DILocation(line: 72, column: 5, scope: !100)
!131 = !DILocation(line: 74, column: 33, scope: !100)
!132 = !DILocation(line: 74, column: 19, scope: !100)
!133 = !DILocation(line: 74, column: 5, scope: !100)
!134 = !DILocation(line: 74, column: 11, scope: !100)
!135 = !DILocation(line: 74, column: 17, scope: !100)
!136 = !DILocation(line: 75, column: 17, scope: !100)
!137 = !DILocation(line: 75, column: 23, scope: !100)
!138 = !DILocation(line: 75, column: 29, scope: !100)
!139 = !DILocation(line: 75, column: 5, scope: !100)
!140 = !DILocation(line: 76, column: 5, scope: !100)
!141 = !DILocation(line: 76, column: 11, scope: !100)
!142 = !DILocation(line: 76, column: 18, scope: !100)
!143 = !DILocation(line: 76, column: 23, scope: !100)
!144 = !DILocation(line: 78, column: 5, scope: !100)
!145 = !DILocation(line: 78, column: 11, scope: !100)
!146 = !DILocation(line: 78, column: 21, scope: !100)
!147 = !DILocation(line: 79, column: 5, scope: !100)
!148 = !DILocation(line: 79, column: 11, scope: !100)
!149 = !DILocation(line: 79, column: 20, scope: !100)
!150 = !DILocation(line: 81, column: 30, scope: !100)
!151 = !DILocation(line: 81, column: 18, scope: !100)
!152 = !DILocation(line: 81, column: 5, scope: !100)
!153 = !DILocation(line: 81, column: 11, scope: !100)
!154 = !DILocation(line: 81, column: 16, scope: !100)
!155 = !DILocation(line: 82, column: 17, scope: !100)
!156 = !DILocation(line: 82, column: 23, scope: !100)
!157 = !DILocation(line: 82, column: 28, scope: !100)
!158 = !DILocation(line: 82, column: 5, scope: !100)
!159 = !DILocation(line: 83, column: 30, scope: !100)
!160 = !DILocation(line: 83, column: 5, scope: !100)
!161 = !DILocation(line: 83, column: 11, scope: !100)
!162 = !DILocation(line: 83, column: 17, scope: !100)
!163 = !DILocation(line: 83, column: 28, scope: !100)
!164 = !DILocation(line: 86, column: 33, scope: !100)
!165 = !DILocation(line: 86, column: 44, scope: !100)
!166 = !DILocation(line: 86, column: 26, scope: !100)
!167 = !DILocation(line: 86, column: 20, scope: !100)
!168 = !DILocation(line: 86, column: 5, scope: !100)
!169 = !DILocation(line: 86, column: 11, scope: !100)
!170 = !DILocation(line: 86, column: 18, scope: !100)
!171 = !DILocation(line: 87, column: 17, scope: !100)
!172 = !DILocation(line: 87, column: 23, scope: !100)
!173 = !DILocation(line: 87, column: 30, scope: !100)
!174 = !DILocation(line: 87, column: 5, scope: !100)
!175 = !DILocation(line: 89, column: 36, scope: !100)
!176 = !DILocation(line: 89, column: 47, scope: !100)
!177 = !DILocation(line: 89, column: 29, scope: !100)
!178 = !DILocation(line: 89, column: 23, scope: !100)
!179 = !DILocation(line: 89, column: 5, scope: !100)
!180 = !DILocation(line: 89, column: 11, scope: !100)
!181 = !DILocation(line: 89, column: 21, scope: !100)
!182 = !DILocation(line: 90, column: 17, scope: !100)
!183 = !DILocation(line: 90, column: 23, scope: !100)
!184 = !DILocation(line: 90, column: 33, scope: !100)
!185 = !DILocation(line: 90, column: 5, scope: !100)
!186 = !DILocation(line: 94, column: 5, scope: !100)
!187 = !DILocation(line: 97, column: 5, scope: !100)
!188 = !DILocation(line: 100, column: 10, scope: !100)
!189 = !DILocation(line: 100, column: 16, scope: !100)
!190 = !DILocation(line: 100, column: 5, scope: !100)
!191 = !DILocation(line: 101, column: 10, scope: !100)
!192 = !DILocation(line: 101, column: 16, scope: !100)
!193 = !DILocation(line: 101, column: 5, scope: !100)
!194 = !DILocation(line: 102, column: 10, scope: !100)
!195 = !DILocation(line: 102, column: 16, scope: !100)
!196 = !DILocation(line: 102, column: 5, scope: !100)
!197 = !DILocation(line: 103, column: 10, scope: !100)
!198 = !DILocation(line: 103, column: 16, scope: !100)
!199 = !DILocation(line: 103, column: 5, scope: !100)
!200 = !DILocation(line: 104, column: 10, scope: !100)
!201 = !DILocation(line: 104, column: 5, scope: !100)
!202 = !DILocation(line: 106, column: 5, scope: !100)
!203 = distinct !DISubprogram(name: "memcpy", scope: !204, file: !204, line: 12, type: !205, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !48)
!204 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!205 = !DISubroutineType(types: !206)
!206 = !{!34, !34, !207, !69}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!209 = !DILocalVariable(name: "destaddr", arg: 1, scope: !203, file: !204, line: 12, type: !34)
!210 = !DILocation(line: 12, column: 20, scope: !203)
!211 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !203, file: !204, line: 12, type: !207)
!212 = !DILocation(line: 12, column: 42, scope: !203)
!213 = !DILocalVariable(name: "len", arg: 3, scope: !203, file: !204, line: 12, type: !69)
!214 = !DILocation(line: 12, column: 58, scope: !203)
!215 = !DILocalVariable(name: "dest", scope: !203, file: !204, line: 13, type: !8)
!216 = !DILocation(line: 13, column: 9, scope: !203)
!217 = !DILocation(line: 13, column: 16, scope: !203)
!218 = !DILocalVariable(name: "src", scope: !203, file: !204, line: 14, type: !60)
!219 = !DILocation(line: 14, column: 15, scope: !203)
!220 = !DILocation(line: 14, column: 21, scope: !203)
!221 = !DILocation(line: 16, column: 3, scope: !203)
!222 = !DILocation(line: 16, column: 13, scope: !203)
!223 = !DILocation(line: 16, column: 16, scope: !203)
!224 = !DILocation(line: 17, column: 19, scope: !203)
!225 = !DILocation(line: 17, column: 15, scope: !203)
!226 = !DILocation(line: 17, column: 10, scope: !203)
!227 = !DILocation(line: 17, column: 13, scope: !203)
!228 = distinct !{!228, !221, !224, !229}
!229 = !{!"llvm.loop.mustprogress"}
!230 = !DILocation(line: 18, column: 10, scope: !203)
!231 = !DILocation(line: 18, column: 3, scope: !203)

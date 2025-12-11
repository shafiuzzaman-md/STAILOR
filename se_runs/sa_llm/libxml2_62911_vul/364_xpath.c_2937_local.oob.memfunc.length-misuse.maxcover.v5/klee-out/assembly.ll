; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/364_xpath.c_2937_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/364_xpath.c_2937_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNs = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [23 x i8] c"duplicating namespace\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ns\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"href_buf\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"prefix_buf\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"(result != ((void*)0)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/364_xpath.c_2937_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !27 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !34, metadata !DIExpression()), !dbg !35
  %3 = load i64, i64* %2, align 8, !dbg !36
  %4 = call noalias i8* @malloc(i64 noundef %3) #9, !dbg !37
  ret i8* %4, !dbg !38
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !39 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !44, metadata !DIExpression()), !dbg !45
  %6 = load i8*, i8** %3, align 8, !dbg !46
  %7 = icmp eq i8* %6, null, !dbg !48
  br i1 %7, label %8, label %9, !dbg !49

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !50
  br label %24, !dbg !50

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !51, metadata !DIExpression()), !dbg !52
  %10 = load i8*, i8** %3, align 8, !dbg !53
  %11 = call i64 @strlen(i8* noundef %10) #10, !dbg !54
  %12 = add i64 %11, 1, !dbg !55
  store i64 %12, i64* %4, align 8, !dbg !52
  call void @llvm.dbg.declare(metadata i8** %5, metadata !56, metadata !DIExpression()), !dbg !57
  %13 = load i64, i64* %4, align 8, !dbg !58
  %14 = call noalias i8* @malloc(i64 noundef %13) #9, !dbg !59
  store i8* %14, i8** %5, align 8, !dbg !57
  %15 = load i8*, i8** %5, align 8, !dbg !60
  %16 = icmp ne i8* %15, null, !dbg !60
  br i1 %16, label %17, label %22, !dbg !62

17:                                               ; preds = %9
  %18 = load i8*, i8** %5, align 8, !dbg !63
  %19 = load i8*, i8** %3, align 8, !dbg !64
  %20 = load i64, i64* %4, align 8, !dbg !65
  %21 = call i8* @memcpy(i8* %18, i8* %19, i64 %20), !dbg !66
  br label %22, !dbg !66

22:                                               ; preds = %17, %9
  %23 = load i8*, i8** %5, align 8, !dbg !67
  store i8* %23, i8** %2, align 8, !dbg !68
  br label %24, !dbg !68

24:                                               ; preds = %22, %8
  %25 = load i8*, i8** %2, align 8, !dbg !69
  ret i8* %25, !dbg !69
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlXPathErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !70 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !73, metadata !DIExpression()), !dbg !74
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !75, metadata !DIExpression()), !dbg !76
  ret void, !dbg !77
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNs* @xmlXPathCmpNodesExt(i8* noundef %0, i8* noundef %1) #0 !dbg !78 {
  %3 = alloca %struct._xmlNs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._xmlNs*, align 8
  %7 = alloca %struct._xmlNs*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !81, metadata !DIExpression()), !dbg !82
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !83, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %6, metadata !85, metadata !DIExpression()), !dbg !86
  %8 = load i8*, i8** %4, align 8, !dbg !87
  %9 = bitcast i8* %8 to %struct._xmlNs*, !dbg !88
  store %struct._xmlNs* %9, %struct._xmlNs** %6, align 8, !dbg !86
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %7, metadata !89, metadata !DIExpression()), !dbg !90
  %10 = call i8* @xmlMalloc(i64 noundef 24), !dbg !91
  %11 = bitcast i8* %10 to %struct._xmlNs*, !dbg !92
  store %struct._xmlNs* %11, %struct._xmlNs** %7, align 8, !dbg !93
  %12 = load %struct._xmlNs*, %struct._xmlNs** %7, align 8, !dbg !94
  %13 = icmp eq %struct._xmlNs* %12, null, !dbg !96
  br i1 %13, label %14, label %15, !dbg !97

14:                                               ; preds = %2
  call void @xmlXPathErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0)), !dbg !98
  store %struct._xmlNs* null, %struct._xmlNs** %3, align 8, !dbg !100
  br label %52, !dbg !100

15:                                               ; preds = %2
  %16 = load %struct._xmlNs*, %struct._xmlNs** %7, align 8, !dbg !101
  %17 = bitcast %struct._xmlNs* %16 to i8*, !dbg !102
  %18 = call i8* @memset(i8* %17, i32 0, i64 24), !dbg !102
  %19 = load %struct._xmlNs*, %struct._xmlNs** %7, align 8, !dbg !103
  %20 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %19, i32 0, i32 0, !dbg !104
  store i32 1, i32* %20, align 8, !dbg !105
  %21 = load %struct._xmlNs*, %struct._xmlNs** %6, align 8, !dbg !106
  %22 = icmp ne %struct._xmlNs* %21, null, !dbg !106
  br i1 %22, label %23, label %35, !dbg !108

23:                                               ; preds = %15
  %24 = load %struct._xmlNs*, %struct._xmlNs** %6, align 8, !dbg !109
  %25 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %24, i32 0, i32 1, !dbg !110
  %26 = load i8*, i8** %25, align 8, !dbg !110
  %27 = icmp ne i8* %26, null, !dbg !111
  br i1 %27, label %28, label %35, !dbg !112

28:                                               ; preds = %23
  %29 = load %struct._xmlNs*, %struct._xmlNs** %6, align 8, !dbg !113
  %30 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %29, i32 0, i32 1, !dbg !114
  %31 = load i8*, i8** %30, align 8, !dbg !114
  %32 = call i8* @xmlStrdup(i8* noundef %31), !dbg !115
  %33 = load %struct._xmlNs*, %struct._xmlNs** %7, align 8, !dbg !116
  %34 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %33, i32 0, i32 1, !dbg !117
  store i8* %32, i8** %34, align 8, !dbg !118
  br label %35, !dbg !116

35:                                               ; preds = %28, %23, %15
  %36 = load %struct._xmlNs*, %struct._xmlNs** %6, align 8, !dbg !119
  %37 = icmp ne %struct._xmlNs* %36, null, !dbg !119
  br i1 %37, label %38, label %50, !dbg !121

38:                                               ; preds = %35
  %39 = load %struct._xmlNs*, %struct._xmlNs** %6, align 8, !dbg !122
  %40 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %39, i32 0, i32 2, !dbg !123
  %41 = load i8*, i8** %40, align 8, !dbg !123
  %42 = icmp ne i8* %41, null, !dbg !124
  br i1 %42, label %43, label %50, !dbg !125

43:                                               ; preds = %38
  %44 = load %struct._xmlNs*, %struct._xmlNs** %6, align 8, !dbg !126
  %45 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %44, i32 0, i32 2, !dbg !127
  %46 = load i8*, i8** %45, align 8, !dbg !127
  %47 = call i8* @xmlStrdup(i8* noundef %46), !dbg !128
  %48 = load %struct._xmlNs*, %struct._xmlNs** %7, align 8, !dbg !129
  %49 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %48, i32 0, i32 2, !dbg !130
  store i8* %47, i8** %49, align 8, !dbg !131
  br label %50, !dbg !129

50:                                               ; preds = %43, %38, %35
  %51 = load %struct._xmlNs*, %struct._xmlNs** %7, align 8, !dbg !132
  store %struct._xmlNs* %51, %struct._xmlNs** %3, align 8, !dbg !133
  br label %52, !dbg !133

52:                                               ; preds = %50, %14
  %53 = load %struct._xmlNs*, %struct._xmlNs** %3, align 8, !dbg !134
  ret %struct._xmlNs* %53, !dbg !134
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !135 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlNs, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca [256 x i8], align 16
  %5 = alloca %struct._xmlNs*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlNs* %2, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !140, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !145, metadata !DIExpression()), !dbg !146
  %6 = bitcast %struct._xmlNs* %2 to i8*, !dbg !147
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !148
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !149
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !150
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !151
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 256, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)), !dbg !152
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !153
  %10 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %2, i32 0, i32 1, !dbg !154
  store i8* %9, i8** %10, align 8, !dbg !155
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !156
  %12 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %2, i32 0, i32 2, !dbg !157
  store i8* %11, i8** %12, align 8, !dbg !158
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !159
  store i8 0, i8* %13, align 1, !dbg !160
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 255, !dbg !161
  store i8 0, i8* %14, align 1, !dbg !162
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %5, metadata !163, metadata !DIExpression()), !dbg !164
  %15 = bitcast %struct._xmlNs* %2 to i8*, !dbg !165
  %16 = call %struct._xmlNs* @xmlXPathCmpNodesExt(i8* noundef %15, i8* noundef null), !dbg !166
  store %struct._xmlNs* %16, %struct._xmlNs** %5, align 8, !dbg !164
  %17 = load %struct._xmlNs*, %struct._xmlNs** %5, align 8, !dbg !167
  %18 = icmp ne %struct._xmlNs* %17, null, !dbg !169
  br i1 %18, label %19, label %36, !dbg !170

19:                                               ; preds = %0
  %20 = load %struct._xmlNs*, %struct._xmlNs** %5, align 8, !dbg !171
  %21 = icmp ne %struct._xmlNs* %20, null, !dbg !171
  br i1 %21, label %22, label %24, !dbg !171

22:                                               ; preds = %19
  br i1 true, label %23, label %24, !dbg !171

23:                                               ; preds = %22
  br label %26, !dbg !171

24:                                               ; preds = %22, %19
  %25 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.6, i64 0, i64 0), i32 noundef 111, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !171
  br label %26, !dbg !171

26:                                               ; preds = %24, %23
  %27 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.6, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !173
  %28 = load %struct._xmlNs*, %struct._xmlNs** %5, align 8, !dbg !174
  %29 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %28, i32 0, i32 1, !dbg !175
  %30 = load i8*, i8** %29, align 8, !dbg !175
  call void @free(i8* noundef %30) #9, !dbg !176
  %31 = load %struct._xmlNs*, %struct._xmlNs** %5, align 8, !dbg !177
  %32 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %31, i32 0, i32 2, !dbg !178
  %33 = load i8*, i8** %32, align 8, !dbg !178
  call void @free(i8* noundef %33) #9, !dbg !179
  %34 = load %struct._xmlNs*, %struct._xmlNs** %5, align 8, !dbg !180
  %35 = bitcast %struct._xmlNs* %34 to i8*, !dbg !180
  call void @free(i8* noundef %35) #9, !dbg !181
  br label %36, !dbg !182

36:                                               ; preds = %26, %0
  ret i32 0, !dbg !183
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #6

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #7

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !184 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !190, metadata !DIExpression()), !dbg !191
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !192, metadata !DIExpression()), !dbg !193
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !194, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.declare(metadata i8** %7, metadata !196, metadata !DIExpression()), !dbg !197
  %9 = load i8*, i8** %4, align 8, !dbg !198
  store i8* %9, i8** %7, align 8, !dbg !197
  call void @llvm.dbg.declare(metadata i8** %8, metadata !199, metadata !DIExpression()), !dbg !200
  %10 = load i8*, i8** %5, align 8, !dbg !201
  store i8* %10, i8** %8, align 8, !dbg !200
  br label %11, !dbg !202

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !203
  %13 = add i64 %12, -1, !dbg !203
  store i64 %13, i64* %6, align 8, !dbg !203
  %14 = icmp ugt i64 %12, 0, !dbg !204
  br i1 %14, label %15, label %21, !dbg !202

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !205
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !205
  store i8* %17, i8** %8, align 8, !dbg !205
  %18 = load i8, i8* %16, align 1, !dbg !206
  %19 = load i8*, i8** %7, align 8, !dbg !207
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !207
  store i8* %20, i8** %7, align 8, !dbg !207
  store i8 %18, i8* %19, align 1, !dbg !208
  br label %11, !dbg !202, !llvm.loop !209

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !211
  ret i8* %22, !dbg !212
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !213 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !217, metadata !DIExpression()), !dbg !218
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !219, metadata !DIExpression()), !dbg !220
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !221, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.declare(metadata i8** %7, metadata !223, metadata !DIExpression()), !dbg !224
  %8 = load i8*, i8** %4, align 8, !dbg !225
  store i8* %8, i8** %7, align 8, !dbg !224
  br label %9, !dbg !226

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !227
  %11 = add i64 %10, -1, !dbg !227
  store i64 %11, i64* %6, align 8, !dbg !227
  %12 = icmp ugt i64 %10, 0, !dbg !228
  br i1 %12, label %13, label %18, !dbg !226

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !229
  %15 = trunc i32 %14 to i8, !dbg !229
  %16 = load i8*, i8** %7, align 8, !dbg !230
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !230
  store i8* %17, i8** %7, align 8, !dbg !230
  store i8 %15, i8* %16, align 1, !dbg !231
  br label %9, !dbg !226, !llvm.loop !232

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !233
  ret i8* %19, !dbg !234
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26, !26, !26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/364_xpath.c_2937_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "32ed9bccc6b1350021dba9bdda9d1648")
!2 = !{!3, !4, !6}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !1, line: 11, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !1, line: 10, baseType: !9)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !1, line: 13, size: 192, elements: !10)
!10 = !{!11, !13, !14}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !9, file: !1, line: 14, baseType: !12, size: 32)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !9, file: !1, line: 15, baseType: !3, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !9, file: !1, line: 16, baseType: !3, size: 64, offset: 128)
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!19 = !{i32 7, !"Dwarf Version", i32 5}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{i32 7, !"PIC Level", i32 2}
!23 = !{i32 7, !"PIE Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"Ubuntu clang version 14.0.6"}
!27 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 20, type: !28, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!28 = !DISubroutineType(types: !29)
!29 = !{!3, !30}
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 46, baseType: !32)
!31 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!32 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!33 = !{}
!34 = !DILocalVariable(name: "size", arg: 1, scope: !27, file: !1, line: 20, type: !30)
!35 = !DILocation(line: 20, column: 24, scope: !27)
!36 = !DILocation(line: 21, column: 19, scope: !27)
!37 = !DILocation(line: 21, column: 12, scope: !27)
!38 = !DILocation(line: 21, column: 5, scope: !27)
!39 = distinct !DISubprogram(name: "xmlStrdup", scope: !1, file: !1, line: 24, type: !40, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!40 = !DISubroutineType(types: !41)
!41 = !{!4, !42}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!44 = !DILocalVariable(name: "cur", arg: 1, scope: !39, file: !1, line: 24, type: !42)
!45 = !DILocation(line: 24, column: 29, scope: !39)
!46 = !DILocation(line: 25, column: 9, scope: !47)
!47 = distinct !DILexicalBlock(scope: !39, file: !1, line: 25, column: 9)
!48 = !DILocation(line: 25, column: 13, scope: !47)
!49 = !DILocation(line: 25, column: 9, scope: !39)
!50 = !DILocation(line: 25, column: 22, scope: !47)
!51 = !DILocalVariable(name: "len", scope: !39, file: !1, line: 26, type: !30)
!52 = !DILocation(line: 26, column: 12, scope: !39)
!53 = !DILocation(line: 26, column: 25, scope: !39)
!54 = !DILocation(line: 26, column: 18, scope: !39)
!55 = !DILocation(line: 26, column: 30, scope: !39)
!56 = !DILocalVariable(name: "copy", scope: !39, file: !1, line: 27, type: !4)
!57 = !DILocation(line: 27, column: 11, scope: !39)
!58 = !DILocation(line: 27, column: 32, scope: !39)
!59 = !DILocation(line: 27, column: 25, scope: !39)
!60 = !DILocation(line: 28, column: 9, scope: !61)
!61 = distinct !DILexicalBlock(scope: !39, file: !1, line: 28, column: 9)
!62 = !DILocation(line: 28, column: 9, scope: !39)
!63 = !DILocation(line: 28, column: 22, scope: !61)
!64 = !DILocation(line: 28, column: 28, scope: !61)
!65 = !DILocation(line: 28, column: 33, scope: !61)
!66 = !DILocation(line: 28, column: 15, scope: !61)
!67 = !DILocation(line: 29, column: 12, scope: !39)
!68 = !DILocation(line: 29, column: 5, scope: !39)
!69 = !DILocation(line: 30, column: 1, scope: !39)
!70 = distinct !DISubprogram(name: "xmlXPathErrMemory", scope: !1, file: !1, line: 32, type: !71, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !3, !42}
!73 = !DILocalVariable(name: "ctxt", arg: 1, scope: !70, file: !1, line: 32, type: !3)
!74 = !DILocation(line: 32, column: 30, scope: !70)
!75 = !DILocalVariable(name: "msg", arg: 2, scope: !70, file: !1, line: 32, type: !42)
!76 = !DILocation(line: 32, column: 48, scope: !70)
!77 = !DILocation(line: 34, column: 1, scope: !70)
!78 = distinct !DISubprogram(name: "xmlXPathCmpNodesExt", scope: !1, file: !1, line: 40, type: !79, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!79 = !DISubroutineType(types: !80)
!80 = !{!6, !3, !3}
!81 = !DILocalVariable(name: "node1", arg: 1, scope: !78, file: !1, line: 40, type: !3)
!82 = !DILocation(line: 40, column: 36, scope: !78)
!83 = !DILocalVariable(name: "node2", arg: 2, scope: !78, file: !1, line: 40, type: !3)
!84 = !DILocation(line: 40, column: 49, scope: !78)
!85 = !DILocalVariable(name: "ns", scope: !78, file: !1, line: 41, type: !6)
!86 = !DILocation(line: 41, column: 14, scope: !78)
!87 = !DILocation(line: 41, column: 29, scope: !78)
!88 = !DILocation(line: 41, column: 19, scope: !78)
!89 = !DILocalVariable(name: "cur", scope: !78, file: !1, line: 42, type: !6)
!90 = !DILocation(line: 42, column: 14, scope: !78)
!91 = !DILocation(line: 45, column: 22, scope: !78)
!92 = !DILocation(line: 45, column: 11, scope: !78)
!93 = !DILocation(line: 45, column: 9, scope: !78)
!94 = !DILocation(line: 46, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !78, file: !1, line: 46, column: 9)
!96 = !DILocation(line: 46, column: 13, scope: !95)
!97 = !DILocation(line: 46, column: 9, scope: !78)
!98 = !DILocation(line: 47, column: 9, scope: !99)
!99 = distinct !DILexicalBlock(scope: !95, file: !1, line: 46, column: 22)
!100 = !DILocation(line: 48, column: 9, scope: !99)
!101 = !DILocation(line: 54, column: 12, scope: !78)
!102 = !DILocation(line: 54, column: 5, scope: !78)
!103 = !DILocation(line: 57, column: 5, scope: !78)
!104 = !DILocation(line: 57, column: 10, scope: !78)
!105 = !DILocation(line: 57, column: 15, scope: !78)
!106 = !DILocation(line: 58, column: 9, scope: !107)
!107 = distinct !DILexicalBlock(scope: !78, file: !1, line: 58, column: 9)
!108 = !DILocation(line: 58, column: 12, scope: !107)
!109 = !DILocation(line: 58, column: 15, scope: !107)
!110 = !DILocation(line: 58, column: 19, scope: !107)
!111 = !DILocation(line: 58, column: 24, scope: !107)
!112 = !DILocation(line: 58, column: 9, scope: !78)
!113 = !DILocation(line: 59, column: 38, scope: !107)
!114 = !DILocation(line: 59, column: 42, scope: !107)
!115 = !DILocation(line: 59, column: 21, scope: !107)
!116 = !DILocation(line: 59, column: 9, scope: !107)
!117 = !DILocation(line: 59, column: 14, scope: !107)
!118 = !DILocation(line: 59, column: 19, scope: !107)
!119 = !DILocation(line: 60, column: 9, scope: !120)
!120 = distinct !DILexicalBlock(scope: !78, file: !1, line: 60, column: 9)
!121 = !DILocation(line: 60, column: 12, scope: !120)
!122 = !DILocation(line: 60, column: 15, scope: !120)
!123 = !DILocation(line: 60, column: 19, scope: !120)
!124 = !DILocation(line: 60, column: 26, scope: !120)
!125 = !DILocation(line: 60, column: 9, scope: !78)
!126 = !DILocation(line: 61, column: 40, scope: !120)
!127 = !DILocation(line: 61, column: 44, scope: !120)
!128 = !DILocation(line: 61, column: 23, scope: !120)
!129 = !DILocation(line: 61, column: 9, scope: !120)
!130 = !DILocation(line: 61, column: 14, scope: !120)
!131 = !DILocation(line: 61, column: 21, scope: !120)
!132 = !DILocation(line: 63, column: 12, scope: !78)
!133 = !DILocation(line: 63, column: 5, scope: !78)
!134 = !DILocation(line: 64, column: 1, scope: !78)
!135 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 66, type: !136, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!136 = !DISubroutineType(types: !137)
!137 = !{!12}
!138 = !DILocalVariable(name: "ns", scope: !135, file: !1, line: 68, type: !8)
!139 = !DILocation(line: 68, column: 11, scope: !135)
!140 = !DILocalVariable(name: "href_buf", scope: !135, file: !1, line: 69, type: !141)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 2048, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 256)
!144 = !DILocation(line: 69, column: 10, scope: !135)
!145 = !DILocalVariable(name: "prefix_buf", scope: !135, file: !1, line: 70, type: !141)
!146 = !DILocation(line: 70, column: 10, scope: !135)
!147 = !DILocation(line: 73, column: 24, scope: !135)
!148 = !DILocation(line: 73, column: 5, scope: !135)
!149 = !DILocation(line: 76, column: 24, scope: !135)
!150 = !DILocation(line: 76, column: 5, scope: !135)
!151 = !DILocation(line: 77, column: 24, scope: !135)
!152 = !DILocation(line: 77, column: 5, scope: !135)
!153 = !DILocation(line: 80, column: 15, scope: !135)
!154 = !DILocation(line: 80, column: 8, scope: !135)
!155 = !DILocation(line: 80, column: 13, scope: !135)
!156 = !DILocation(line: 81, column: 17, scope: !135)
!157 = !DILocation(line: 81, column: 8, scope: !135)
!158 = !DILocation(line: 81, column: 15, scope: !135)
!159 = !DILocation(line: 84, column: 5, scope: !135)
!160 = !DILocation(line: 84, column: 19, scope: !135)
!161 = !DILocation(line: 85, column: 5, scope: !135)
!162 = !DILocation(line: 85, column: 21, scope: !135)
!163 = !DILocalVariable(name: "result", scope: !135, file: !1, line: 88, type: !6)
!164 = !DILocation(line: 88, column: 14, scope: !135)
!165 = !DILocation(line: 88, column: 43, scope: !135)
!166 = !DILocation(line: 88, column: 23, scope: !135)
!167 = !DILocation(line: 107, column: 9, scope: !168)
!168 = distinct !DILexicalBlock(scope: !135, file: !1, line: 107, column: 9)
!169 = !DILocation(line: 107, column: 16, scope: !168)
!170 = !DILocation(line: 107, column: 9, scope: !135)
!171 = !DILocation(line: 111, column: 9, scope: !172)
!172 = distinct !DILexicalBlock(scope: !168, file: !1, line: 107, column: 25)
!173 = !DILocation(line: 114, column: 9, scope: !172)
!174 = !DILocation(line: 117, column: 14, scope: !172)
!175 = !DILocation(line: 117, column: 22, scope: !172)
!176 = !DILocation(line: 117, column: 9, scope: !172)
!177 = !DILocation(line: 118, column: 14, scope: !172)
!178 = !DILocation(line: 118, column: 22, scope: !172)
!179 = !DILocation(line: 118, column: 9, scope: !172)
!180 = !DILocation(line: 119, column: 14, scope: !172)
!181 = !DILocation(line: 119, column: 9, scope: !172)
!182 = !DILocation(line: 120, column: 5, scope: !172)
!183 = !DILocation(line: 122, column: 5, scope: !135)
!184 = distinct !DISubprogram(name: "memcpy", scope: !185, file: !185, line: 12, type: !186, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !33)
!185 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!186 = !DISubroutineType(types: !187)
!187 = !{!3, !3, !188, !30}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!190 = !DILocalVariable(name: "destaddr", arg: 1, scope: !184, file: !185, line: 12, type: !3)
!191 = !DILocation(line: 12, column: 20, scope: !184)
!192 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !184, file: !185, line: 12, type: !188)
!193 = !DILocation(line: 12, column: 42, scope: !184)
!194 = !DILocalVariable(name: "len", arg: 3, scope: !184, file: !185, line: 12, type: !30)
!195 = !DILocation(line: 12, column: 58, scope: !184)
!196 = !DILocalVariable(name: "dest", scope: !184, file: !185, line: 13, type: !4)
!197 = !DILocation(line: 13, column: 9, scope: !184)
!198 = !DILocation(line: 13, column: 16, scope: !184)
!199 = !DILocalVariable(name: "src", scope: !184, file: !185, line: 14, type: !42)
!200 = !DILocation(line: 14, column: 15, scope: !184)
!201 = !DILocation(line: 14, column: 21, scope: !184)
!202 = !DILocation(line: 16, column: 3, scope: !184)
!203 = !DILocation(line: 16, column: 13, scope: !184)
!204 = !DILocation(line: 16, column: 16, scope: !184)
!205 = !DILocation(line: 17, column: 19, scope: !184)
!206 = !DILocation(line: 17, column: 15, scope: !184)
!207 = !DILocation(line: 17, column: 10, scope: !184)
!208 = !DILocation(line: 17, column: 13, scope: !184)
!209 = distinct !{!209, !202, !205, !210}
!210 = !{!"llvm.loop.mustprogress"}
!211 = !DILocation(line: 18, column: 10, scope: !184)
!212 = !DILocation(line: 18, column: 3, scope: !184)
!213 = distinct !DISubprogram(name: "memset", scope: !214, file: !214, line: 12, type: !215, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !33)
!214 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!215 = !DISubroutineType(types: !216)
!216 = !{!3, !3, !12, !30}
!217 = !DILocalVariable(name: "dst", arg: 1, scope: !213, file: !214, line: 12, type: !3)
!218 = !DILocation(line: 12, column: 20, scope: !213)
!219 = !DILocalVariable(name: "s", arg: 2, scope: !213, file: !214, line: 12, type: !12)
!220 = !DILocation(line: 12, column: 29, scope: !213)
!221 = !DILocalVariable(name: "count", arg: 3, scope: !213, file: !214, line: 12, type: !30)
!222 = !DILocation(line: 12, column: 39, scope: !213)
!223 = !DILocalVariable(name: "a", scope: !213, file: !214, line: 13, type: !4)
!224 = !DILocation(line: 13, column: 9, scope: !213)
!225 = !DILocation(line: 13, column: 13, scope: !213)
!226 = !DILocation(line: 14, column: 3, scope: !213)
!227 = !DILocation(line: 14, column: 15, scope: !213)
!228 = !DILocation(line: 14, column: 18, scope: !213)
!229 = !DILocation(line: 15, column: 12, scope: !213)
!230 = !DILocation(line: 15, column: 7, scope: !213)
!231 = !DILocation(line: 15, column: 10, scope: !213)
!232 = distinct !{!232, !226, !229, !210}
!233 = !DILocation(line: 16, column: 10, scope: !213)
!234 = !DILocation(line: 16, column: 3, scope: !213)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/034_parserInternals.c_1854_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/034_parserInternals.c_1854_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSAXHandler = type { i32 }
%struct._xmlParserCtxt = type { %struct._xmlSAXHandler*, i8* }

@.str = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.1 = private unnamed_addr constant [114 x i8] c"se_runs/sa_llm/libxml2_62911_vul/034_parserInternals.c_1854_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.setupSAXHandler = private unnamed_addr constant [63 x i8] c"void setupSAXHandler(xmlParserCtxt *, xmlSAXHandler *, void *)\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"sax_initialized\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSAXVersion(%struct._xmlSAXHandler* noundef %0, i32 noundef %1) #0 !dbg !16 {
  %3 = alloca %struct._xmlSAXHandler*, align 8
  %4 = alloca i32, align 4
  store %struct._xmlSAXHandler* %0, %struct._xmlSAXHandler** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler** %3, metadata !26, metadata !DIExpression()), !dbg !27
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !28, metadata !DIExpression()), !dbg !29
  %5 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !30
  %6 = icmp ne %struct._xmlSAXHandler* %5, null, !dbg !30
  br i1 %6, label %7, label %14, !dbg !32

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4, !dbg !33
  %9 = icmp eq i32 %8, 2, !dbg !35
  %10 = zext i1 %9 to i64, !dbg !36
  %11 = select i1 %9, i32 -559038737, i32 0, !dbg !36
  %12 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !37
  %13 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %12, i32 0, i32 0, !dbg !38
  store i32 %11, i32* %13, align 4, !dbg !39
  br label %14, !dbg !40

14:                                               ; preds = %7, %2
  ret void, !dbg !41
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlNextChar(%struct._xmlParserCtxt* noundef %0) #0 !dbg !42 {
  %2 = alloca %struct._xmlParserCtxt*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !51, metadata !DIExpression()), !dbg !52
  ret void, !dbg !53
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setupSAXHandler(%struct._xmlParserCtxt* noundef %0, %struct._xmlSAXHandler* noundef %1, i8* noundef %2) #0 !dbg !54 {
  %4 = alloca %struct._xmlParserCtxt*, align 8
  %5 = alloca %struct._xmlSAXHandler*, align 8
  %6 = alloca i8*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %4, metadata !57, metadata !DIExpression()), !dbg !58
  store %struct._xmlSAXHandler* %1, %struct._xmlSAXHandler** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler** %5, metadata !59, metadata !DIExpression()), !dbg !60
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !61, metadata !DIExpression()), !dbg !62
  %7 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %5, align 8, !dbg !63
  %8 = icmp eq %struct._xmlSAXHandler* %7, null, !dbg !65
  br i1 %8, label %9, label %22, !dbg !66

9:                                                ; preds = %3
  %10 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !67
  %11 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %10, i32 0, i32 0, !dbg !69
  %12 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %11, align 8, !dbg !69
  %13 = bitcast %struct._xmlSAXHandler* %12 to i8*, !dbg !70
  %14 = call i8* @memset(i8* %13, i32 0, i64 4), !dbg !70
  %15 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !71
  %16 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %15, i32 0, i32 0, !dbg !72
  %17 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %16, align 8, !dbg !72
  call void @xmlSAXVersion(%struct._xmlSAXHandler* noundef %17, i32 noundef 2), !dbg !73
  %18 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !74
  %19 = bitcast %struct._xmlParserCtxt* %18 to i8*, !dbg !74
  %20 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !75
  %21 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %20, i32 0, i32 1, !dbg !76
  store i8* %19, i8** %21, align 8, !dbg !77
  br label %61, !dbg !78

22:                                               ; preds = %3
  %23 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %5, align 8, !dbg !79
  %24 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %23, i32 0, i32 0, !dbg !82
  %25 = load i32, i32* %24, align 4, !dbg !82
  %26 = icmp eq i32 %25, -559038737, !dbg !83
  br i1 %26, label %27, label %35, !dbg !84

27:                                               ; preds = %22
  %28 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !85
  %29 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %28, i32 0, i32 0, !dbg !87
  %30 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %29, align 8, !dbg !87
  %31 = bitcast %struct._xmlSAXHandler* %30 to i8*, !dbg !88
  %32 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %5, align 8, !dbg !89
  %33 = bitcast %struct._xmlSAXHandler* %32 to i8*, !dbg !88
  %34 = call i8* @memcpy(i8* %31, i8* %33, i64 4), !dbg !88
  br label %49, !dbg !90

35:                                               ; preds = %22
  %36 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !91
  %37 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %36, i32 0, i32 0, !dbg !93
  %38 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %37, align 8, !dbg !93
  %39 = bitcast %struct._xmlSAXHandler* %38 to i8*, !dbg !94
  %40 = call i8* @memset(i8* %39, i32 0, i64 4), !dbg !94
  %41 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !95
  %42 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %41, i32 0, i32 0, !dbg !96
  %43 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %42, align 8, !dbg !96
  %44 = bitcast %struct._xmlSAXHandler* %43 to i8*, !dbg !97
  %45 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %5, align 8, !dbg !98
  %46 = bitcast %struct._xmlSAXHandler* %45 to i8*, !dbg !97
  %47 = call i8* @memcpy(i8* %44, i8* %46, i64 0), !dbg !97
  %48 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.1, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.setupSAXHandler, i64 0, i64 0)), !dbg !99
  br label %49

49:                                               ; preds = %35, %27
  %50 = load i8*, i8** %6, align 8, !dbg !100
  %51 = icmp ne i8* %50, null, !dbg !100
  br i1 %51, label %52, label %54, !dbg !100

52:                                               ; preds = %49
  %53 = load i8*, i8** %6, align 8, !dbg !101
  br label %57, !dbg !100

54:                                               ; preds = %49
  %55 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !102
  %56 = bitcast %struct._xmlParserCtxt* %55 to i8*, !dbg !102
  br label %57, !dbg !100

57:                                               ; preds = %54, %52
  %58 = phi i8* [ %53, %52 ], [ %56, %54 ], !dbg !100
  %59 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !103
  %60 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %59, i32 0, i32 1, !dbg !104
  store i8* %58, i8** %60, align 8, !dbg !105
  br label %61

61:                                               ; preds = %57, %9
  ret void, !dbg !106
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !107 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt*, align 8
  %3 = alloca %struct._xmlSAXHandler*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !110, metadata !DIExpression()), !dbg !111
  %4 = call noalias i8* @malloc(i64 noundef 16) #8, !dbg !112
  %5 = bitcast i8* %4 to %struct._xmlParserCtxt*, !dbg !112
  store %struct._xmlParserCtxt* %5, %struct._xmlParserCtxt** %2, align 8, !dbg !111
  %6 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !113
  %7 = icmp ne %struct._xmlParserCtxt* %6, null, !dbg !113
  br i1 %7, label %9, label %8, !dbg !115

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !116
  br label %57, !dbg !116

9:                                                ; preds = %0
  %10 = call noalias i8* @malloc(i64 noundef 4) #8, !dbg !117
  %11 = bitcast i8* %10 to %struct._xmlSAXHandler*, !dbg !117
  %12 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !118
  %13 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %12, i32 0, i32 0, !dbg !119
  store %struct._xmlSAXHandler* %11, %struct._xmlSAXHandler** %13, align 8, !dbg !120
  %14 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !121
  %15 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %14, i32 0, i32 0, !dbg !123
  %16 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %15, align 8, !dbg !123
  %17 = icmp ne %struct._xmlSAXHandler* %16, null, !dbg !121
  br i1 %17, label %21, label %18, !dbg !124

18:                                               ; preds = %9
  %19 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !125
  %20 = bitcast %struct._xmlParserCtxt* %19 to i8*, !dbg !125
  call void @free(i8* noundef %20) #8, !dbg !127
  store i32 0, i32* %1, align 4, !dbg !128
  br label %57, !dbg !128

21:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler** %3, metadata !129, metadata !DIExpression()), !dbg !130
  %22 = call noalias i8* @malloc(i64 noundef 4) #8, !dbg !131
  %23 = bitcast i8* %22 to %struct._xmlSAXHandler*, !dbg !131
  store %struct._xmlSAXHandler* %23, %struct._xmlSAXHandler** %3, align 8, !dbg !130
  %24 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !132
  %25 = icmp ne %struct._xmlSAXHandler* %24, null, !dbg !132
  br i1 %25, label %33, label %26, !dbg !134

26:                                               ; preds = %21
  %27 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !135
  %28 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %27, i32 0, i32 0, !dbg !137
  %29 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %28, align 8, !dbg !137
  %30 = bitcast %struct._xmlSAXHandler* %29 to i8*, !dbg !135
  call void @free(i8* noundef %30) #8, !dbg !138
  %31 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !139
  %32 = bitcast %struct._xmlParserCtxt* %31 to i8*, !dbg !139
  call void @free(i8* noundef %32) #8, !dbg !140
  store i32 0, i32* %1, align 4, !dbg !141
  br label %57, !dbg !141

33:                                               ; preds = %21
  %34 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !142
  %35 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %34, i32 0, i32 0, !dbg !143
  %36 = bitcast i32* %35 to i8*, !dbg !144
  call void @klee_make_symbolic(i8* noundef %36, i64 noundef 4, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)), !dbg !145
  %37 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !146
  %38 = icmp ne %struct._xmlSAXHandler* %37, null, !dbg !147
  %39 = zext i1 %38 to i32, !dbg !147
  %40 = sext i32 %39 to i64, !dbg !146
  call void @klee_assume(i64 noundef %40), !dbg !148
  %41 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !149
  %42 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %41, i32 0, i32 0, !dbg !150
  %43 = load i32, i32* %42, align 4, !dbg !150
  %44 = icmp ne i32 %43, -559038737, !dbg !151
  %45 = zext i1 %44 to i32, !dbg !151
  %46 = sext i32 %45 to i64, !dbg !149
  call void @klee_assume(i64 noundef %46), !dbg !152
  %47 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !153
  %48 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !154
  call void @setupSAXHandler(%struct._xmlParserCtxt* noundef %47, %struct._xmlSAXHandler* noundef %48, i8* noundef null), !dbg !155
  %49 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !156
  %50 = bitcast %struct._xmlSAXHandler* %49 to i8*, !dbg !156
  call void @free(i8* noundef %50) #8, !dbg !157
  %51 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !158
  %52 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %51, i32 0, i32 0, !dbg !159
  %53 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %52, align 8, !dbg !159
  %54 = bitcast %struct._xmlSAXHandler* %53 to i8*, !dbg !158
  call void @free(i8* noundef %54) #8, !dbg !160
  %55 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !161
  %56 = bitcast %struct._xmlParserCtxt* %55 to i8*, !dbg !161
  call void @free(i8* noundef %56) #8, !dbg !162
  store i32 0, i32* %1, align 4, !dbg !163
  br label %57, !dbg !163

57:                                               ; preds = %33, %26, %18, %8
  %58 = load i32, i32* %1, align 4, !dbg !164
  ret i32 %58, !dbg !164
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #5

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #6

declare void @klee_assume(i64 noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !165 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !174, metadata !DIExpression()), !dbg !175
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !176, metadata !DIExpression()), !dbg !177
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata i8** %7, metadata !180, metadata !DIExpression()), !dbg !183
  %9 = load i8*, i8** %4, align 8, !dbg !184
  store i8* %9, i8** %7, align 8, !dbg !183
  call void @llvm.dbg.declare(metadata i8** %8, metadata !185, metadata !DIExpression()), !dbg !188
  %10 = load i8*, i8** %5, align 8, !dbg !189
  store i8* %10, i8** %8, align 8, !dbg !188
  br label %11, !dbg !190

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !191
  %13 = add i64 %12, -1, !dbg !191
  store i64 %13, i64* %6, align 8, !dbg !191
  %14 = icmp ugt i64 %12, 0, !dbg !192
  br i1 %14, label %15, label %21, !dbg !190

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !193
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !193
  store i8* %17, i8** %8, align 8, !dbg !193
  %18 = load i8, i8* %16, align 1, !dbg !194
  %19 = load i8*, i8** %7, align 8, !dbg !195
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !195
  store i8* %20, i8** %7, align 8, !dbg !195
  store i8 %18, i8* %19, align 1, !dbg !196
  br label %11, !dbg !190, !llvm.loop !197

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !199
  ret i8* %22, !dbg !200
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !201 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !205, metadata !DIExpression()), !dbg !206
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !207, metadata !DIExpression()), !dbg !208
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !209, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.declare(metadata i8** %7, metadata !211, metadata !DIExpression()), !dbg !212
  %8 = load i8*, i8** %4, align 8, !dbg !213
  store i8* %8, i8** %7, align 8, !dbg !212
  br label %9, !dbg !214

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !215
  %11 = add i64 %10, -1, !dbg !215
  store i64 %11, i64* %6, align 8, !dbg !215
  %12 = icmp ugt i64 %10, 0, !dbg !216
  br i1 %12, label %13, label %18, !dbg !214

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !217
  %15 = trunc i32 %14 to i8, !dbg !217
  %16 = load i8*, i8** %7, align 8, !dbg !218
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !218
  store i8* %17, i8** %7, align 8, !dbg !218
  store i8 %15, i8* %16, align 1, !dbg !219
  br label %9, !dbg !214, !llvm.loop !220

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !221
  ret i8* %19, !dbg !222
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

!llvm.dbg.cu = !{!0, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15, !15, !15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/034_parserInternals.c_1854_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "52a6fcec4bf556704186cae0ec6fe523")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 14.0.6"}
!16 = distinct !DISubprogram(name: "xmlSAXVersion", scope: !1, file: !1, line: 31, type: !17, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !19, !24}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXHandler", file: !1, line: 10, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXHandler", file: !1, line: 15, size: 32, elements: !22)
!22 = !{!23}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !21, file: !1, line: 16, baseType: !24, size: 32)
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !{}
!26 = !DILocalVariable(name: "sax", arg: 1, scope: !16, file: !1, line: 31, type: !19)
!27 = !DILocation(line: 31, column: 35, scope: !16)
!28 = !DILocalVariable(name: "version", arg: 2, scope: !16, file: !1, line: 31, type: !24)
!29 = !DILocation(line: 31, column: 44, scope: !16)
!30 = !DILocation(line: 33, column: 9, scope: !31)
!31 = distinct !DILexicalBlock(scope: !16, file: !1, line: 33, column: 9)
!32 = !DILocation(line: 33, column: 9, scope: !16)
!33 = !DILocation(line: 34, column: 29, scope: !34)
!34 = distinct !DILexicalBlock(scope: !31, file: !1, line: 33, column: 14)
!35 = !DILocation(line: 34, column: 37, scope: !34)
!36 = !DILocation(line: 34, column: 28, scope: !34)
!37 = !DILocation(line: 34, column: 9, scope: !34)
!38 = !DILocation(line: 34, column: 14, scope: !34)
!39 = !DILocation(line: 34, column: 26, scope: !34)
!40 = !DILocation(line: 35, column: 5, scope: !34)
!41 = !DILocation(line: 36, column: 1, scope: !16)
!42 = distinct !DISubprogram(name: "xmlNextChar", scope: !1, file: !1, line: 39, type: !43, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !45}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 12, baseType: !47)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 24, size: 128, elements: !48)
!48 = !{!49, !50}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "sax", scope: !47, file: !1, line: 25, baseType: !19, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !47, file: !1, line: 26, baseType: !3, size: 64, offset: 64)
!51 = !DILocalVariable(name: "ctxt", arg: 1, scope: !42, file: !1, line: 39, type: !45)
!52 = !DILocation(line: 39, column: 33, scope: !42)
!53 = !DILocation(line: 43, column: 1, scope: !42)
!54 = distinct !DISubprogram(name: "setupSAXHandler", scope: !1, file: !1, line: 46, type: !55, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !45, !19, !3}
!57 = !DILocalVariable(name: "ctxt", arg: 1, scope: !54, file: !1, line: 46, type: !45)
!58 = !DILocation(line: 46, column: 37, scope: !54)
!59 = !DILocalVariable(name: "sax", arg: 2, scope: !54, file: !1, line: 46, type: !19)
!60 = !DILocation(line: 46, column: 58, scope: !54)
!61 = !DILocalVariable(name: "userData", arg: 3, scope: !54, file: !1, line: 46, type: !3)
!62 = !DILocation(line: 46, column: 69, scope: !54)
!63 = !DILocation(line: 47, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !54, file: !1, line: 47, column: 9)
!65 = !DILocation(line: 47, column: 13, scope: !64)
!66 = !DILocation(line: 47, column: 9, scope: !54)
!67 = !DILocation(line: 48, column: 16, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !1, line: 47, column: 22)
!69 = !DILocation(line: 48, column: 22, scope: !68)
!70 = !DILocation(line: 48, column: 9, scope: !68)
!71 = !DILocation(line: 49, column: 23, scope: !68)
!72 = !DILocation(line: 49, column: 29, scope: !68)
!73 = !DILocation(line: 49, column: 9, scope: !68)
!74 = !DILocation(line: 50, column: 26, scope: !68)
!75 = !DILocation(line: 50, column: 9, scope: !68)
!76 = !DILocation(line: 50, column: 15, scope: !68)
!77 = !DILocation(line: 50, column: 24, scope: !68)
!78 = !DILocation(line: 51, column: 5, scope: !68)
!79 = !DILocation(line: 52, column: 13, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !1, line: 52, column: 13)
!81 = distinct !DILexicalBlock(scope: !64, file: !1, line: 51, column: 12)
!82 = !DILocation(line: 52, column: 18, scope: !80)
!83 = !DILocation(line: 52, column: 30, scope: !80)
!84 = !DILocation(line: 52, column: 13, scope: !81)
!85 = !DILocation(line: 53, column: 20, scope: !86)
!86 = distinct !DILexicalBlock(scope: !80, file: !1, line: 52, column: 45)
!87 = !DILocation(line: 53, column: 26, scope: !86)
!88 = !DILocation(line: 53, column: 13, scope: !86)
!89 = !DILocation(line: 53, column: 31, scope: !86)
!90 = !DILocation(line: 54, column: 9, scope: !86)
!91 = !DILocation(line: 55, column: 20, scope: !92)
!92 = distinct !DILexicalBlock(scope: !80, file: !1, line: 54, column: 16)
!93 = !DILocation(line: 55, column: 26, scope: !92)
!94 = !DILocation(line: 55, column: 13, scope: !92)
!95 = !DILocation(line: 58, column: 20, scope: !92)
!96 = !DILocation(line: 58, column: 26, scope: !92)
!97 = !DILocation(line: 58, column: 13, scope: !92)
!98 = !DILocation(line: 58, column: 31, scope: !92)
!99 = !DILocation(line: 65, column: 13, scope: !92)
!100 = !DILocation(line: 67, column: 26, scope: !81)
!101 = !DILocation(line: 67, column: 37, scope: !81)
!102 = !DILocation(line: 67, column: 48, scope: !81)
!103 = !DILocation(line: 67, column: 9, scope: !81)
!104 = !DILocation(line: 67, column: 15, scope: !81)
!105 = !DILocation(line: 67, column: 24, scope: !81)
!106 = !DILocation(line: 69, column: 1, scope: !54)
!107 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 71, type: !108, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!108 = !DISubroutineType(types: !109)
!109 = !{!24}
!110 = !DILocalVariable(name: "ctxt", scope: !107, file: !1, line: 73, type: !45)
!111 = !DILocation(line: 73, column: 20, scope: !107)
!112 = !DILocation(line: 73, column: 27, scope: !107)
!113 = !DILocation(line: 74, column: 10, scope: !114)
!114 = distinct !DILexicalBlock(scope: !107, file: !1, line: 74, column: 9)
!115 = !DILocation(line: 74, column: 9, scope: !107)
!116 = !DILocation(line: 74, column: 16, scope: !114)
!117 = !DILocation(line: 77, column: 17, scope: !107)
!118 = !DILocation(line: 77, column: 5, scope: !107)
!119 = !DILocation(line: 77, column: 11, scope: !107)
!120 = !DILocation(line: 77, column: 15, scope: !107)
!121 = !DILocation(line: 78, column: 10, scope: !122)
!122 = distinct !DILexicalBlock(scope: !107, file: !1, line: 78, column: 9)
!123 = !DILocation(line: 78, column: 16, scope: !122)
!124 = !DILocation(line: 78, column: 9, scope: !107)
!125 = !DILocation(line: 79, column: 14, scope: !126)
!126 = distinct !DILexicalBlock(scope: !122, file: !1, line: 78, column: 21)
!127 = !DILocation(line: 79, column: 9, scope: !126)
!128 = !DILocation(line: 80, column: 9, scope: !126)
!129 = !DILocalVariable(name: "sax", scope: !107, file: !1, line: 84, type: !19)
!130 = !DILocation(line: 84, column: 20, scope: !107)
!131 = !DILocation(line: 84, column: 26, scope: !107)
!132 = !DILocation(line: 85, column: 10, scope: !133)
!133 = distinct !DILexicalBlock(scope: !107, file: !1, line: 85, column: 9)
!134 = !DILocation(line: 85, column: 9, scope: !107)
!135 = !DILocation(line: 86, column: 14, scope: !136)
!136 = distinct !DILexicalBlock(scope: !133, file: !1, line: 85, column: 15)
!137 = !DILocation(line: 86, column: 20, scope: !136)
!138 = !DILocation(line: 86, column: 9, scope: !136)
!139 = !DILocation(line: 87, column: 14, scope: !136)
!140 = !DILocation(line: 87, column: 9, scope: !136)
!141 = !DILocation(line: 88, column: 9, scope: !136)
!142 = !DILocation(line: 92, column: 25, scope: !107)
!143 = !DILocation(line: 92, column: 30, scope: !107)
!144 = !DILocation(line: 92, column: 24, scope: !107)
!145 = !DILocation(line: 92, column: 5, scope: !107)
!146 = !DILocation(line: 95, column: 17, scope: !107)
!147 = !DILocation(line: 95, column: 21, scope: !107)
!148 = !DILocation(line: 95, column: 5, scope: !107)
!149 = !DILocation(line: 98, column: 17, scope: !107)
!150 = !DILocation(line: 98, column: 22, scope: !107)
!151 = !DILocation(line: 98, column: 34, scope: !107)
!152 = !DILocation(line: 98, column: 5, scope: !107)
!153 = !DILocation(line: 101, column: 21, scope: !107)
!154 = !DILocation(line: 101, column: 27, scope: !107)
!155 = !DILocation(line: 101, column: 5, scope: !107)
!156 = !DILocation(line: 104, column: 10, scope: !107)
!157 = !DILocation(line: 104, column: 5, scope: !107)
!158 = !DILocation(line: 105, column: 10, scope: !107)
!159 = !DILocation(line: 105, column: 16, scope: !107)
!160 = !DILocation(line: 105, column: 5, scope: !107)
!161 = !DILocation(line: 106, column: 10, scope: !107)
!162 = !DILocation(line: 106, column: 5, scope: !107)
!163 = !DILocation(line: 108, column: 5, scope: !107)
!164 = !DILocation(line: 109, column: 1, scope: !107)
!165 = distinct !DISubprogram(name: "memcpy", scope: !166, file: !166, line: 12, type: !167, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !25)
!166 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!167 = !DISubroutineType(types: !168)
!168 = !{!3, !3, !169, !171}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !172, line: 46, baseType: !173)
!172 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!173 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!174 = !DILocalVariable(name: "destaddr", arg: 1, scope: !165, file: !166, line: 12, type: !3)
!175 = !DILocation(line: 12, column: 20, scope: !165)
!176 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !165, file: !166, line: 12, type: !169)
!177 = !DILocation(line: 12, column: 42, scope: !165)
!178 = !DILocalVariable(name: "len", arg: 3, scope: !165, file: !166, line: 12, type: !171)
!179 = !DILocation(line: 12, column: 58, scope: !165)
!180 = !DILocalVariable(name: "dest", scope: !165, file: !166, line: 13, type: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!183 = !DILocation(line: 13, column: 9, scope: !165)
!184 = !DILocation(line: 13, column: 16, scope: !165)
!185 = !DILocalVariable(name: "src", scope: !165, file: !166, line: 14, type: !186)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!188 = !DILocation(line: 14, column: 15, scope: !165)
!189 = !DILocation(line: 14, column: 21, scope: !165)
!190 = !DILocation(line: 16, column: 3, scope: !165)
!191 = !DILocation(line: 16, column: 13, scope: !165)
!192 = !DILocation(line: 16, column: 16, scope: !165)
!193 = !DILocation(line: 17, column: 19, scope: !165)
!194 = !DILocation(line: 17, column: 15, scope: !165)
!195 = !DILocation(line: 17, column: 10, scope: !165)
!196 = !DILocation(line: 17, column: 13, scope: !165)
!197 = distinct !{!197, !190, !193, !198}
!198 = !{!"llvm.loop.mustprogress"}
!199 = !DILocation(line: 18, column: 10, scope: !165)
!200 = !DILocation(line: 18, column: 3, scope: !165)
!201 = distinct !DISubprogram(name: "memset", scope: !202, file: !202, line: 12, type: !203, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !25)
!202 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!203 = !DISubroutineType(types: !204)
!204 = !{!3, !3, !24, !171}
!205 = !DILocalVariable(name: "dst", arg: 1, scope: !201, file: !202, line: 12, type: !3)
!206 = !DILocation(line: 12, column: 20, scope: !201)
!207 = !DILocalVariable(name: "s", arg: 2, scope: !201, file: !202, line: 12, type: !24)
!208 = !DILocation(line: 12, column: 29, scope: !201)
!209 = !DILocalVariable(name: "count", arg: 3, scope: !201, file: !202, line: 12, type: !171)
!210 = !DILocation(line: 12, column: 39, scope: !201)
!211 = !DILocalVariable(name: "a", scope: !201, file: !202, line: 13, type: !181)
!212 = !DILocation(line: 13, column: 9, scope: !201)
!213 = !DILocation(line: 13, column: 13, scope: !201)
!214 = !DILocation(line: 14, column: 3, scope: !201)
!215 = !DILocation(line: 14, column: 15, scope: !201)
!216 = !DILocation(line: 14, column: 18, scope: !201)
!217 = !DILocation(line: 15, column: 12, scope: !201)
!218 = !DILocation(line: 15, column: 7, scope: !201)
!219 = !DILocation(line: 15, column: 10, scope: !201)
!220 = distinct !{!220, !214, !217, !198}
!221 = !DILocation(line: 16, column: 10, scope: !201)
!222 = !DILocation(line: 16, column: 3, scope: !201)

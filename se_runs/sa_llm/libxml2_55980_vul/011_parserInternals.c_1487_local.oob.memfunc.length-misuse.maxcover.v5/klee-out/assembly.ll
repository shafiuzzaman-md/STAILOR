; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/011_parserInternals.c_1487_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/011_parserInternals.c_1487_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSAXHandler = type { i32 }
%struct._xmlParserCtxt = type { %struct._xmlSAXHandler*, i8* }

@.str = private unnamed_addr constant [34 x i8] c"cannot initialize parser context\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Valid pointer for memset\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [79 x i8] c"(ctxt->sax != ((void*)0) && \22Valid pointer for memset\22) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [114 x i8] c"se_runs/sa_llm/libxml2_55980_vul/011_parserInternals.c_1487_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [54 x i8] c"int target_function(xmlParserCtxt *, xmlSAXHandler *)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"sax_ptr\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"sax_initialized\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !22 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !29, metadata !DIExpression()), !dbg !30
  %3 = load i64, i64* %2, align 8, !dbg !31
  %4 = call noalias i8* @malloc(i64 noundef %3) #8, !dbg !32
  ret i8* %4, !dbg !33
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !34 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !40, metadata !DIExpression()), !dbg !41
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !42, metadata !DIExpression()), !dbg !43
  ret void, !dbg !44
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSAXVersion(%struct._xmlSAXHandler* noundef %0, i32 noundef %1) #0 !dbg !45 {
  %3 = alloca %struct._xmlSAXHandler*, align 8
  %4 = alloca i32, align 4
  store %struct._xmlSAXHandler* %0, %struct._xmlSAXHandler** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler** %3, metadata !48, metadata !DIExpression()), !dbg !49
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !50, metadata !DIExpression()), !dbg !51
  ret void, !dbg !52
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_function(%struct._xmlParserCtxt* noundef %0, %struct._xmlSAXHandler* noundef %1) #0 !dbg !53 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlParserCtxt*, align 8
  %5 = alloca %struct._xmlSAXHandler*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %4, metadata !62, metadata !DIExpression()), !dbg !63
  store %struct._xmlSAXHandler* %1, %struct._xmlSAXHandler** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler** %5, metadata !64, metadata !DIExpression()), !dbg !65
  %6 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !66
  %7 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %6, i32 0, i32 0, !dbg !68
  %8 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %7, align 8, !dbg !68
  %9 = icmp eq %struct._xmlSAXHandler* %8, null, !dbg !69
  br i1 %9, label %10, label %15, !dbg !70

10:                                               ; preds = %2
  %11 = call i8* @xmlMalloc(i64 noundef 4), !dbg !71
  %12 = bitcast i8* %11 to %struct._xmlSAXHandler*, !dbg !73
  %13 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !74
  %14 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %13, i32 0, i32 0, !dbg !75
  store %struct._xmlSAXHandler* %12, %struct._xmlSAXHandler** %14, align 8, !dbg !76
  br label %15, !dbg !77

15:                                               ; preds = %10, %2
  %16 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !78
  %17 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %16, i32 0, i32 0, !dbg !80
  %18 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %17, align 8, !dbg !80
  %19 = icmp eq %struct._xmlSAXHandler* %18, null, !dbg !81
  br i1 %19, label %20, label %21, !dbg !82

20:                                               ; preds = %15
  call void @xmlErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0)), !dbg !83
  store i32 -1, i32* %3, align 4, !dbg !85
  br label %76, !dbg !85

21:                                               ; preds = %15
  %22 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %5, align 8, !dbg !86
  %23 = icmp eq %struct._xmlSAXHandler* %22, null, !dbg !88
  br i1 %23, label %24, label %48, !dbg !89

24:                                               ; preds = %21
  %25 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !90
  %26 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %25, i32 0, i32 0, !dbg !92
  %27 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %26, align 8, !dbg !92
  %28 = bitcast %struct._xmlSAXHandler* %27 to i8*, !dbg !93
  %29 = call i8* @memset(i8* %28, i32 0, i64 4), !dbg !93
  %30 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !94
  %31 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %30, i32 0, i32 0, !dbg !94
  %32 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %31, align 8, !dbg !94
  %33 = icmp ne %struct._xmlSAXHandler* %32, null, !dbg !94
  br i1 %33, label %34, label %37, !dbg !94

34:                                               ; preds = %24
  br i1 true, label %35, label %37, !dbg !94

35:                                               ; preds = %34
  br i1 true, label %36, label %37, !dbg !94

36:                                               ; preds = %35
  br label %39, !dbg !94

37:                                               ; preds = %35, %34, %24
  %38 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.4, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !94
  br label %39, !dbg !94

39:                                               ; preds = %37, %36
  %40 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.4, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !95
  %41 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !96
  %42 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %41, i32 0, i32 0, !dbg !97
  %43 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %42, align 8, !dbg !97
  call void @xmlSAXVersion(%struct._xmlSAXHandler* noundef %43, i32 noundef 2), !dbg !98
  %44 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !99
  %45 = bitcast %struct._xmlParserCtxt* %44 to i8*, !dbg !99
  %46 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !100
  %47 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %46, i32 0, i32 1, !dbg !101
  store i8* %45, i8** %47, align 8, !dbg !102
  br label %75, !dbg !103

48:                                               ; preds = %21
  %49 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %5, align 8, !dbg !104
  %50 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %49, i32 0, i32 0, !dbg !107
  %51 = load i32, i32* %50, align 4, !dbg !107
  %52 = icmp eq i32 %51, -554844433, !dbg !108
  br i1 %52, label %53, label %61, !dbg !109

53:                                               ; preds = %48
  %54 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !110
  %55 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %54, i32 0, i32 0, !dbg !112
  %56 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %55, align 8, !dbg !112
  %57 = bitcast %struct._xmlSAXHandler* %56 to i8*, !dbg !113
  %58 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %5, align 8, !dbg !114
  %59 = bitcast %struct._xmlSAXHandler* %58 to i8*, !dbg !113
  %60 = call i8* @memcpy(i8* %57, i8* %59, i64 4), !dbg !113
  br label %74, !dbg !115

61:                                               ; preds = %48
  %62 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !116
  %63 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %62, i32 0, i32 0, !dbg !118
  %64 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %63, align 8, !dbg !118
  %65 = bitcast %struct._xmlSAXHandler* %64 to i8*, !dbg !119
  %66 = call i8* @memset(i8* %65, i32 0, i64 4), !dbg !119
  %67 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !120
  %68 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %67, i32 0, i32 0, !dbg !121
  %69 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %68, align 8, !dbg !121
  %70 = bitcast %struct._xmlSAXHandler* %69 to i8*, !dbg !122
  %71 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %5, align 8, !dbg !123
  %72 = bitcast %struct._xmlSAXHandler* %71 to i8*, !dbg !122
  %73 = call i8* @memcpy(i8* %70, i8* %72, i64 4), !dbg !122
  br label %74

74:                                               ; preds = %61, %53
  br label %75

75:                                               ; preds = %74, %39
  store i32 0, i32* %3, align 4, !dbg !124
  br label %76, !dbg !124

76:                                               ; preds = %75, %20
  %77 = load i32, i32* %3, align 4, !dbg !125
  ret i32 %77, !dbg !125
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !126 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt, align 8
  %3 = alloca %struct._xmlSAXHandler*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt* %2, metadata !129, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler** %3, metadata !131, metadata !DIExpression()), !dbg !132
  %5 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 0, !dbg !133
  store %struct._xmlSAXHandler* null, %struct._xmlSAXHandler** %5, align 8, !dbg !134
  %6 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 1, !dbg !135
  store i8* null, i8** %6, align 8, !dbg !136
  %7 = bitcast %struct._xmlSAXHandler** %3 to i8*, !dbg !137
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)), !dbg !138
  %8 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !139
  %9 = icmp ne %struct._xmlSAXHandler* %8, null, !dbg !141
  br i1 %9, label %10, label %20, !dbg !142

10:                                               ; preds = %0
  %11 = call noalias i8* @malloc(i64 noundef 4) #8, !dbg !143
  %12 = bitcast i8* %11 to %struct._xmlSAXHandler*, !dbg !145
  store %struct._xmlSAXHandler* %12, %struct._xmlSAXHandler** %3, align 8, !dbg !146
  %13 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !147
  %14 = icmp ne %struct._xmlSAXHandler* %13, null, !dbg !148
  %15 = zext i1 %14 to i32, !dbg !148
  %16 = sext i32 %15 to i64, !dbg !147
  call void @klee_assume(i64 noundef %16), !dbg !149
  %17 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !150
  %18 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %17, i32 0, i32 0, !dbg !151
  %19 = bitcast i32* %18 to i8*, !dbg !152
  call void @klee_make_symbolic(i8* noundef %19, i64 noundef 4, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0)), !dbg !153
  br label %20, !dbg !154

20:                                               ; preds = %10, %0
  call void @llvm.dbg.declare(metadata i32* %4, metadata !155, metadata !DIExpression()), !dbg !156
  %21 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !157
  %22 = call i32 @target_function(%struct._xmlParserCtxt* noundef %2, %struct._xmlSAXHandler* noundef %21), !dbg !158
  store i32 %22, i32* %4, align 4, !dbg !156
  %23 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 0, !dbg !159
  %24 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %23, align 8, !dbg !159
  %25 = icmp ne %struct._xmlSAXHandler* %24, null, !dbg !161
  br i1 %25, label %26, label %30, !dbg !162

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 0, !dbg !163
  %28 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %27, align 8, !dbg !163
  %29 = bitcast %struct._xmlSAXHandler* %28 to i8*, !dbg !165
  call void @free(i8* noundef %29) #8, !dbg !166
  br label %30, !dbg !167

30:                                               ; preds = %26, %20
  %31 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !168
  %32 = icmp ne %struct._xmlSAXHandler* %31, null, !dbg !170
  br i1 %32, label %33, label %36, !dbg !171

33:                                               ; preds = %30
  %34 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !172
  %35 = bitcast %struct._xmlSAXHandler* %34 to i8*, !dbg !172
  call void @free(i8* noundef %35) #8, !dbg !174
  br label %36, !dbg !175

36:                                               ; preds = %33, %30
  ret i32 0, !dbg !176
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #6

declare void @klee_assume(i64 noundef) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !177 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !183, metadata !DIExpression()), !dbg !184
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !185, metadata !DIExpression()), !dbg !186
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !187, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.declare(metadata i8** %7, metadata !189, metadata !DIExpression()), !dbg !191
  %9 = load i8*, i8** %4, align 8, !dbg !192
  store i8* %9, i8** %7, align 8, !dbg !191
  call void @llvm.dbg.declare(metadata i8** %8, metadata !193, metadata !DIExpression()), !dbg !194
  %10 = load i8*, i8** %5, align 8, !dbg !195
  store i8* %10, i8** %8, align 8, !dbg !194
  br label %11, !dbg !196

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !197
  %13 = add i64 %12, -1, !dbg !197
  store i64 %13, i64* %6, align 8, !dbg !197
  %14 = icmp ugt i64 %12, 0, !dbg !198
  br i1 %14, label %15, label %21, !dbg !196

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !199
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !199
  store i8* %17, i8** %8, align 8, !dbg !199
  %18 = load i8, i8* %16, align 1, !dbg !200
  %19 = load i8*, i8** %7, align 8, !dbg !201
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !201
  store i8* %20, i8** %7, align 8, !dbg !201
  store i8 %18, i8* %19, align 1, !dbg !202
  br label %11, !dbg !196, !llvm.loop !203

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !205
  ret i8* %22, !dbg !206
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !207 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !211, metadata !DIExpression()), !dbg !212
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !213, metadata !DIExpression()), !dbg !214
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !215, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata i8** %7, metadata !217, metadata !DIExpression()), !dbg !218
  %8 = load i8*, i8** %4, align 8, !dbg !219
  store i8* %8, i8** %7, align 8, !dbg !218
  br label %9, !dbg !220

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !221
  %11 = add i64 %10, -1, !dbg !221
  store i64 %11, i64* %6, align 8, !dbg !221
  %12 = icmp ugt i64 %10, 0, !dbg !222
  br i1 %12, label %13, label %18, !dbg !220

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !223
  %15 = trunc i32 %14 to i8, !dbg !223
  %16 = load i8*, i8** %7, align 8, !dbg !224
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !224
  store i8* %17, i8** %7, align 8, !dbg !224
  store i8 %15, i8* %16, align 1, !dbg !225
  br label %9, !dbg !220, !llvm.loop !226

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !227
  ret i8* %19, !dbg !228
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21, !21, !21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/011_parserInternals.c_1487_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "bf22f71b7367b30184f2328a840514ce")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXHandler", file: !1, line: 13, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXHandler", file: !1, line: 10, size: 32, elements: !7)
!7 = !{!8}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !6, file: !1, line: 11, baseType: !9, size: 32)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !11, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!11 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!12 = distinct !DICompileUnit(language: DW_LANG_C99, file: !13, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!14 = !{i32 7, !"Dwarf Version", i32 5}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{i32 7, !"PIC Level", i32 2}
!18 = !{i32 7, !"PIE Level", i32 2}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"Ubuntu clang version 14.0.6"}
!22 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 27, type: !23, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!23 = !DISubroutineType(types: !24)
!24 = !{!3, !25}
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 46, baseType: !27)
!26 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!27 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!28 = !{}
!29 = !DILocalVariable(name: "size", arg: 1, scope: !22, file: !1, line: 27, type: !25)
!30 = !DILocation(line: 27, column: 24, scope: !22)
!31 = !DILocation(line: 28, column: 19, scope: !22)
!32 = !DILocation(line: 28, column: 12, scope: !22)
!33 = !DILocation(line: 28, column: 5, scope: !22)
!34 = distinct !DISubprogram(name: "xmlErrMemory", scope: !1, file: !1, line: 31, type: !35, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !3, !37}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!40 = !DILocalVariable(name: "ctx", arg: 1, scope: !34, file: !1, line: 31, type: !3)
!41 = !DILocation(line: 31, column: 25, scope: !34)
!42 = !DILocalVariable(name: "msg", arg: 2, scope: !34, file: !1, line: 31, type: !37)
!43 = !DILocation(line: 31, column: 42, scope: !34)
!44 = !DILocation(line: 33, column: 1, scope: !34)
!45 = distinct !DISubprogram(name: "xmlSAXVersion", scope: !1, file: !1, line: 35, type: !46, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !4, !9}
!48 = !DILocalVariable(name: "sax", arg: 1, scope: !45, file: !1, line: 35, type: !4)
!49 = !DILocation(line: 35, column: 35, scope: !45)
!50 = !DILocalVariable(name: "version", arg: 2, scope: !45, file: !1, line: 35, type: !9)
!51 = !DILocation(line: 35, column: 44, scope: !45)
!52 = !DILocation(line: 37, column: 1, scope: !45)
!53 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 40, type: !54, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!54 = !DISubroutineType(types: !55)
!55 = !{!9, !56, !4}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 19, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 15, size: 128, elements: !59)
!59 = !{!60, !61}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "sax", scope: !58, file: !1, line: 16, baseType: !4, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !58, file: !1, line: 17, baseType: !3, size: 64, offset: 64)
!62 = !DILocalVariable(name: "ctxt", arg: 1, scope: !53, file: !1, line: 40, type: !56)
!63 = !DILocation(line: 40, column: 36, scope: !53)
!64 = !DILocalVariable(name: "sax", arg: 2, scope: !53, file: !1, line: 40, type: !4)
!65 = !DILocation(line: 40, column: 57, scope: !53)
!66 = !DILocation(line: 41, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !53, file: !1, line: 41, column: 9)
!68 = !DILocation(line: 41, column: 15, scope: !67)
!69 = !DILocation(line: 41, column: 19, scope: !67)
!70 = !DILocation(line: 41, column: 9, scope: !53)
!71 = !DILocation(line: 42, column: 39, scope: !72)
!72 = distinct !DILexicalBlock(scope: !67, file: !1, line: 41, column: 28)
!73 = !DILocation(line: 42, column: 21, scope: !72)
!74 = !DILocation(line: 42, column: 9, scope: !72)
!75 = !DILocation(line: 42, column: 15, scope: !72)
!76 = !DILocation(line: 42, column: 19, scope: !72)
!77 = !DILocation(line: 43, column: 5, scope: !72)
!78 = !DILocation(line: 44, column: 9, scope: !79)
!79 = distinct !DILexicalBlock(scope: !53, file: !1, line: 44, column: 9)
!80 = !DILocation(line: 44, column: 15, scope: !79)
!81 = !DILocation(line: 44, column: 19, scope: !79)
!82 = !DILocation(line: 44, column: 9, scope: !53)
!83 = !DILocation(line: 45, column: 9, scope: !84)
!84 = distinct !DILexicalBlock(scope: !79, file: !1, line: 44, column: 28)
!85 = !DILocation(line: 46, column: 9, scope: !84)
!86 = !DILocation(line: 48, column: 9, scope: !87)
!87 = distinct !DILexicalBlock(scope: !53, file: !1, line: 48, column: 9)
!88 = !DILocation(line: 48, column: 13, scope: !87)
!89 = !DILocation(line: 48, column: 9, scope: !53)
!90 = !DILocation(line: 50, column: 16, scope: !91)
!91 = distinct !DILexicalBlock(scope: !87, file: !1, line: 48, column: 22)
!92 = !DILocation(line: 50, column: 22, scope: !91)
!93 = !DILocation(line: 50, column: 9, scope: !91)
!94 = !DILocation(line: 54, column: 9, scope: !91)
!95 = !DILocation(line: 57, column: 9, scope: !91)
!96 = !DILocation(line: 59, column: 23, scope: !91)
!97 = !DILocation(line: 59, column: 29, scope: !91)
!98 = !DILocation(line: 59, column: 9, scope: !91)
!99 = !DILocation(line: 60, column: 26, scope: !91)
!100 = !DILocation(line: 60, column: 9, scope: !91)
!101 = !DILocation(line: 60, column: 15, scope: !91)
!102 = !DILocation(line: 60, column: 24, scope: !91)
!103 = !DILocation(line: 61, column: 5, scope: !91)
!104 = !DILocation(line: 62, column: 13, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !1, line: 62, column: 13)
!106 = distinct !DILexicalBlock(scope: !87, file: !1, line: 61, column: 12)
!107 = !DILocation(line: 62, column: 18, scope: !105)
!108 = !DILocation(line: 62, column: 30, scope: !105)
!109 = !DILocation(line: 62, column: 13, scope: !106)
!110 = !DILocation(line: 63, column: 20, scope: !111)
!111 = distinct !DILexicalBlock(scope: !105, file: !1, line: 62, column: 45)
!112 = !DILocation(line: 63, column: 26, scope: !111)
!113 = !DILocation(line: 63, column: 13, scope: !111)
!114 = !DILocation(line: 63, column: 31, scope: !111)
!115 = !DILocation(line: 64, column: 9, scope: !111)
!116 = !DILocation(line: 65, column: 20, scope: !117)
!117 = distinct !DILexicalBlock(scope: !105, file: !1, line: 64, column: 16)
!118 = !DILocation(line: 65, column: 26, scope: !117)
!119 = !DILocation(line: 65, column: 13, scope: !117)
!120 = !DILocation(line: 66, column: 20, scope: !117)
!121 = !DILocation(line: 66, column: 26, scope: !117)
!122 = !DILocation(line: 66, column: 13, scope: !117)
!123 = !DILocation(line: 66, column: 31, scope: !117)
!124 = !DILocation(line: 69, column: 5, scope: !53)
!125 = !DILocation(line: 70, column: 1, scope: !53)
!126 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 72, type: !127, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!127 = !DISubroutineType(types: !128)
!128 = !{!9}
!129 = !DILocalVariable(name: "ctxt", scope: !126, file: !1, line: 74, type: !57)
!130 = !DILocation(line: 74, column: 19, scope: !126)
!131 = !DILocalVariable(name: "sax_ptr", scope: !126, file: !1, line: 75, type: !4)
!132 = !DILocation(line: 75, column: 20, scope: !126)
!133 = !DILocation(line: 78, column: 10, scope: !126)
!134 = !DILocation(line: 78, column: 14, scope: !126)
!135 = !DILocation(line: 79, column: 10, scope: !126)
!136 = !DILocation(line: 79, column: 19, scope: !126)
!137 = !DILocation(line: 82, column: 24, scope: !126)
!138 = !DILocation(line: 82, column: 5, scope: !126)
!139 = !DILocation(line: 85, column: 9, scope: !140)
!140 = distinct !DILexicalBlock(scope: !126, file: !1, line: 85, column: 9)
!141 = !DILocation(line: 85, column: 17, scope: !140)
!142 = !DILocation(line: 85, column: 9, scope: !126)
!143 = !DILocation(line: 87, column: 35, scope: !144)
!144 = distinct !DILexicalBlock(scope: !140, file: !1, line: 85, column: 26)
!145 = !DILocation(line: 87, column: 19, scope: !144)
!146 = !DILocation(line: 87, column: 17, scope: !144)
!147 = !DILocation(line: 88, column: 21, scope: !144)
!148 = !DILocation(line: 88, column: 29, scope: !144)
!149 = !DILocation(line: 88, column: 9, scope: !144)
!150 = !DILocation(line: 91, column: 29, scope: !144)
!151 = !DILocation(line: 91, column: 38, scope: !144)
!152 = !DILocation(line: 91, column: 28, scope: !144)
!153 = !DILocation(line: 91, column: 9, scope: !144)
!154 = !DILocation(line: 92, column: 5, scope: !144)
!155 = !DILocalVariable(name: "result", scope: !126, file: !1, line: 95, type: !9)
!156 = !DILocation(line: 95, column: 9, scope: !126)
!157 = !DILocation(line: 95, column: 41, scope: !126)
!158 = !DILocation(line: 95, column: 18, scope: !126)
!159 = !DILocation(line: 98, column: 14, scope: !160)
!160 = distinct !DILexicalBlock(scope: !126, file: !1, line: 98, column: 9)
!161 = !DILocation(line: 98, column: 18, scope: !160)
!162 = !DILocation(line: 98, column: 9, scope: !126)
!163 = !DILocation(line: 99, column: 19, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !1, line: 98, column: 27)
!165 = !DILocation(line: 99, column: 14, scope: !164)
!166 = !DILocation(line: 99, column: 9, scope: !164)
!167 = !DILocation(line: 100, column: 5, scope: !164)
!168 = !DILocation(line: 101, column: 9, scope: !169)
!169 = distinct !DILexicalBlock(scope: !126, file: !1, line: 101, column: 9)
!170 = !DILocation(line: 101, column: 17, scope: !169)
!171 = !DILocation(line: 101, column: 9, scope: !126)
!172 = !DILocation(line: 102, column: 14, scope: !173)
!173 = distinct !DILexicalBlock(scope: !169, file: !1, line: 101, column: 26)
!174 = !DILocation(line: 102, column: 9, scope: !173)
!175 = !DILocation(line: 103, column: 5, scope: !173)
!176 = !DILocation(line: 105, column: 5, scope: !126)
!177 = distinct !DISubprogram(name: "memcpy", scope: !178, file: !178, line: 12, type: !179, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !28)
!178 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!179 = !DISubroutineType(types: !180)
!180 = !{!3, !3, !181, !25}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!183 = !DILocalVariable(name: "destaddr", arg: 1, scope: !177, file: !178, line: 12, type: !3)
!184 = !DILocation(line: 12, column: 20, scope: !177)
!185 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !177, file: !178, line: 12, type: !181)
!186 = !DILocation(line: 12, column: 42, scope: !177)
!187 = !DILocalVariable(name: "len", arg: 3, scope: !177, file: !178, line: 12, type: !25)
!188 = !DILocation(line: 12, column: 58, scope: !177)
!189 = !DILocalVariable(name: "dest", scope: !177, file: !178, line: 13, type: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!191 = !DILocation(line: 13, column: 9, scope: !177)
!192 = !DILocation(line: 13, column: 16, scope: !177)
!193 = !DILocalVariable(name: "src", scope: !177, file: !178, line: 14, type: !37)
!194 = !DILocation(line: 14, column: 15, scope: !177)
!195 = !DILocation(line: 14, column: 21, scope: !177)
!196 = !DILocation(line: 16, column: 3, scope: !177)
!197 = !DILocation(line: 16, column: 13, scope: !177)
!198 = !DILocation(line: 16, column: 16, scope: !177)
!199 = !DILocation(line: 17, column: 19, scope: !177)
!200 = !DILocation(line: 17, column: 15, scope: !177)
!201 = !DILocation(line: 17, column: 10, scope: !177)
!202 = !DILocation(line: 17, column: 13, scope: !177)
!203 = distinct !{!203, !196, !199, !204}
!204 = !{!"llvm.loop.mustprogress"}
!205 = !DILocation(line: 18, column: 10, scope: !177)
!206 = !DILocation(line: 18, column: 3, scope: !177)
!207 = distinct !DISubprogram(name: "memset", scope: !208, file: !208, line: 12, type: !209, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !28)
!208 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!209 = !DISubroutineType(types: !210)
!210 = !{!3, !3, !9, !25}
!211 = !DILocalVariable(name: "dst", arg: 1, scope: !207, file: !208, line: 12, type: !3)
!212 = !DILocation(line: 12, column: 20, scope: !207)
!213 = !DILocalVariable(name: "s", arg: 2, scope: !207, file: !208, line: 12, type: !9)
!214 = !DILocation(line: 12, column: 29, scope: !207)
!215 = !DILocalVariable(name: "count", arg: 3, scope: !207, file: !208, line: 12, type: !25)
!216 = !DILocation(line: 12, column: 39, scope: !207)
!217 = !DILocalVariable(name: "a", scope: !207, file: !208, line: 13, type: !190)
!218 = !DILocation(line: 13, column: 9, scope: !207)
!219 = !DILocation(line: 13, column: 13, scope: !207)
!220 = !DILocation(line: 14, column: 3, scope: !207)
!221 = !DILocation(line: 14, column: 15, scope: !207)
!222 = !DILocation(line: 14, column: 18, scope: !207)
!223 = !DILocation(line: 15, column: 12, scope: !207)
!224 = !DILocation(line: 15, column: 7, scope: !207)
!225 = !DILocation(line: 15, column: 10, scope: !207)
!226 = distinct !{!226, !220, !223, !204}
!227 = !DILocation(line: 16, column: 10, scope: !207)
!228 = !DILocation(line: 16, column: 3, scope: !207)

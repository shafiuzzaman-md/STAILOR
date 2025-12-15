; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/291_relaxng.c_1991_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/291_relaxng.c_1991_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRelaxNGParserCtxt = type { %struct._xmlRelaxNGDocument* }
%struct._xmlRelaxNGDocument = type { %struct._xmlDoc*, i8*, %struct._xmlRelaxNGDocument*, i32 }
%struct._xmlDoc = type opaque
%struct._xmlNode = type opaque

@.str = private unnamed_addr constant [40 x i8] c"xmlRelaxNG: allocate memory for doc %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Allocation succeeded\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"(ret != ((void*)0) && \22Allocation succeeded\22) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/291_relaxng.c_1991_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlRelaxNGParseDocument = private unnamed_addr constant [82 x i8] c"xmlRelaxNGDocument *xmlRelaxNGParseDocument(xmlRelaxNGParserCtxt *, const char *)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"URL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRngPErr(%struct._xmlRelaxNGParserCtxt* noundef %0, %struct._xmlNode* noundef %1, i32 noundef %2, i8* noundef %3, i8* noundef %4, i8* noundef %5) #0 !dbg !38 {
  %7 = alloca %struct._xmlRelaxNGParserCtxt*, align 8
  %8 = alloca %struct._xmlNode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct._xmlRelaxNGParserCtxt* %0, %struct._xmlRelaxNGParserCtxt** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGParserCtxt** %7, metadata !49, metadata !DIExpression()), !dbg !50
  store %struct._xmlNode* %1, %struct._xmlNode** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %8, metadata !51, metadata !DIExpression()), !dbg !52
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !53, metadata !DIExpression()), !dbg !54
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !55, metadata !DIExpression()), !dbg !56
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !57, metadata !DIExpression()), !dbg !58
  store i8* %5, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !59, metadata !DIExpression()), !dbg !60
  ret void, !dbg !61
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFreeDoc(%struct._xmlDoc* noundef %0) #0 !dbg !62 {
  %2 = alloca %struct._xmlDoc*, align 8
  store %struct._xmlDoc* %0, %struct._xmlDoc** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !65, metadata !DIExpression()), !dbg !66
  ret void, !dbg !67
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlDoc* @xmlReadDoc(i8* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3) #0 !dbg !68 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !71, metadata !DIExpression()), !dbg !72
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !73, metadata !DIExpression()), !dbg !74
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !75, metadata !DIExpression()), !dbg !76
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !77, metadata !DIExpression()), !dbg !78
  ret %struct._xmlDoc* inttoptr (i64 1 to %struct._xmlDoc*), !dbg !79
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !80 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !83, metadata !DIExpression()), !dbg !84
  %6 = load i8*, i8** %3, align 8, !dbg !85
  %7 = icmp eq i8* %6, null, !dbg !87
  br i1 %7, label %8, label %9, !dbg !88

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !89
  br label %24, !dbg !89

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !90, metadata !DIExpression()), !dbg !94
  %10 = load i8*, i8** %3, align 8, !dbg !95
  %11 = call i64 @strlen(i8* noundef %10) #9, !dbg !96
  %12 = add i64 %11, 1, !dbg !97
  store i64 %12, i64* %4, align 8, !dbg !94
  call void @llvm.dbg.declare(metadata i8** %5, metadata !98, metadata !DIExpression()), !dbg !99
  %13 = load i64, i64* %4, align 8, !dbg !100
  %14 = call noalias i8* @malloc(i64 noundef %13) #10, !dbg !101
  store i8* %14, i8** %5, align 8, !dbg !99
  %15 = load i8*, i8** %5, align 8, !dbg !102
  %16 = icmp ne i8* %15, null, !dbg !102
  br i1 %16, label %17, label %22, !dbg !104

17:                                               ; preds = %9
  %18 = load i8*, i8** %5, align 8, !dbg !105
  %19 = load i8*, i8** %3, align 8, !dbg !106
  %20 = load i64, i64* %4, align 8, !dbg !107
  %21 = call i8* @memcpy(i8* %18, i8* %19, i64 %20), !dbg !108
  br label %22, !dbg !108

22:                                               ; preds = %17, %9
  %23 = load i8*, i8** %5, align 8, !dbg !109
  store i8* %23, i8** %2, align 8, !dbg !110
  br label %24, !dbg !110

24:                                               ; preds = %22, %8
  %25 = load i8*, i8** %2, align 8, !dbg !111
  ret i8* %25, !dbg !111
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRelaxNGDocument* @xmlRelaxNGParseDocument(%struct._xmlRelaxNGParserCtxt* noundef %0, i8* noundef %1) #0 !dbg !112 {
  %3 = alloca %struct._xmlRelaxNGDocument*, align 8
  %4 = alloca %struct._xmlRelaxNGParserCtxt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._xmlDoc*, align 8
  %7 = alloca %struct._xmlRelaxNGDocument*, align 8
  store %struct._xmlRelaxNGParserCtxt* %0, %struct._xmlRelaxNGParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGParserCtxt** %4, metadata !115, metadata !DIExpression()), !dbg !116
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !117, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %6, metadata !119, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGDocument** %7, metadata !121, metadata !DIExpression()), !dbg !122
  %8 = load i8*, i8** %5, align 8, !dbg !123
  %9 = call %struct._xmlDoc* @xmlReadDoc(i8* noundef null, i8* noundef %8, i8* noundef null, i32 noundef 0), !dbg !124
  store %struct._xmlDoc* %9, %struct._xmlDoc** %6, align 8, !dbg !125
  %10 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !126
  %11 = icmp eq %struct._xmlDoc* %10, null, !dbg !128
  br i1 %11, label %12, label %13, !dbg !129

12:                                               ; preds = %2
  store %struct._xmlRelaxNGDocument* null, %struct._xmlRelaxNGDocument** %3, align 8, !dbg !130
  br label %55, !dbg !130

13:                                               ; preds = %2
  %14 = call noalias i8* @malloc(i64 noundef 32) #10, !dbg !132
  %15 = bitcast i8* %14 to %struct._xmlRelaxNGDocument*, !dbg !133
  store %struct._xmlRelaxNGDocument* %15, %struct._xmlRelaxNGDocument** %7, align 8, !dbg !134
  %16 = load %struct._xmlRelaxNGDocument*, %struct._xmlRelaxNGDocument** %7, align 8, !dbg !135
  %17 = icmp eq %struct._xmlRelaxNGDocument* %16, null, !dbg !137
  br i1 %17, label %18, label %24, !dbg !138

18:                                               ; preds = %13
  %19 = load %struct._xmlRelaxNGParserCtxt*, %struct._xmlRelaxNGParserCtxt** %4, align 8, !dbg !139
  %20 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !141
  %21 = bitcast %struct._xmlDoc* %20 to %struct._xmlNode*, !dbg !142
  %22 = load i8*, i8** %5, align 8, !dbg !143
  call void @xmlRngPErr(%struct._xmlRelaxNGParserCtxt* noundef %19, %struct._xmlNode* noundef %21, i32 noundef 1000, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* noundef %22, i8* noundef null), !dbg !144
  %23 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !145
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %23), !dbg !146
  store %struct._xmlRelaxNGDocument* null, %struct._xmlRelaxNGDocument** %3, align 8, !dbg !147
  br label %55, !dbg !147

24:                                               ; preds = %13
  %25 = load %struct._xmlRelaxNGDocument*, %struct._xmlRelaxNGDocument** %7, align 8, !dbg !148
  %26 = icmp ne %struct._xmlRelaxNGDocument* %25, null, !dbg !148
  br i1 %26, label %27, label %30, !dbg !148

27:                                               ; preds = %24
  br i1 true, label %28, label %30, !dbg !148

28:                                               ; preds = %27
  br i1 true, label %29, label %30, !dbg !148

29:                                               ; preds = %28
  br label %32, !dbg !148

30:                                               ; preds = %28, %27, %24
  %31 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 74, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @__PRETTY_FUNCTION__.xmlRelaxNGParseDocument, i64 0, i64 0)), !dbg !148
  br label %32, !dbg !148

32:                                               ; preds = %30, %29
  %33 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @__PRETTY_FUNCTION__.xmlRelaxNGParseDocument, i64 0, i64 0)), !dbg !149
  %34 = load %struct._xmlRelaxNGDocument*, %struct._xmlRelaxNGDocument** %7, align 8, !dbg !150
  %35 = bitcast %struct._xmlRelaxNGDocument* %34 to i8*, !dbg !151
  %36 = call i8* @memset(i8* %35, i32 0, i64 32), !dbg !151
  %37 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !152
  %38 = load %struct._xmlRelaxNGDocument*, %struct._xmlRelaxNGDocument** %7, align 8, !dbg !153
  %39 = getelementptr inbounds %struct._xmlRelaxNGDocument, %struct._xmlRelaxNGDocument* %38, i32 0, i32 0, !dbg !154
  store %struct._xmlDoc* %37, %struct._xmlDoc** %39, align 8, !dbg !155
  %40 = load i8*, i8** %5, align 8, !dbg !156
  %41 = call i8* @xmlStrdup(i8* noundef %40), !dbg !157
  %42 = load %struct._xmlRelaxNGDocument*, %struct._xmlRelaxNGDocument** %7, align 8, !dbg !158
  %43 = getelementptr inbounds %struct._xmlRelaxNGDocument, %struct._xmlRelaxNGDocument* %42, i32 0, i32 1, !dbg !159
  store i8* %41, i8** %43, align 8, !dbg !160
  %44 = load %struct._xmlRelaxNGParserCtxt*, %struct._xmlRelaxNGParserCtxt** %4, align 8, !dbg !161
  %45 = getelementptr inbounds %struct._xmlRelaxNGParserCtxt, %struct._xmlRelaxNGParserCtxt* %44, i32 0, i32 0, !dbg !162
  %46 = load %struct._xmlRelaxNGDocument*, %struct._xmlRelaxNGDocument** %45, align 8, !dbg !162
  %47 = load %struct._xmlRelaxNGDocument*, %struct._xmlRelaxNGDocument** %7, align 8, !dbg !163
  %48 = getelementptr inbounds %struct._xmlRelaxNGDocument, %struct._xmlRelaxNGDocument* %47, i32 0, i32 2, !dbg !164
  store %struct._xmlRelaxNGDocument* %46, %struct._xmlRelaxNGDocument** %48, align 8, !dbg !165
  %49 = load %struct._xmlRelaxNGDocument*, %struct._xmlRelaxNGDocument** %7, align 8, !dbg !166
  %50 = getelementptr inbounds %struct._xmlRelaxNGDocument, %struct._xmlRelaxNGDocument* %49, i32 0, i32 3, !dbg !167
  store i32 1, i32* %50, align 8, !dbg !168
  %51 = load %struct._xmlRelaxNGDocument*, %struct._xmlRelaxNGDocument** %7, align 8, !dbg !169
  %52 = load %struct._xmlRelaxNGParserCtxt*, %struct._xmlRelaxNGParserCtxt** %4, align 8, !dbg !170
  %53 = getelementptr inbounds %struct._xmlRelaxNGParserCtxt, %struct._xmlRelaxNGParserCtxt* %52, i32 0, i32 0, !dbg !171
  store %struct._xmlRelaxNGDocument* %51, %struct._xmlRelaxNGDocument** %53, align 8, !dbg !172
  %54 = load %struct._xmlRelaxNGDocument*, %struct._xmlRelaxNGDocument** %7, align 8, !dbg !173
  store %struct._xmlRelaxNGDocument* %54, %struct._xmlRelaxNGDocument** %3, align 8, !dbg !174
  br label %55, !dbg !174

55:                                               ; preds = %32, %18, %12
  %56 = load %struct._xmlRelaxNGDocument*, %struct._xmlRelaxNGDocument** %3, align 8, !dbg !175
  ret %struct._xmlRelaxNGDocument* %56, !dbg !175
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !176 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRelaxNGParserCtxt, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca %struct._xmlRelaxNGDocument*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGParserCtxt* %2, metadata !179, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !181, metadata !DIExpression()), !dbg !185
  %5 = getelementptr inbounds %struct._xmlRelaxNGParserCtxt, %struct._xmlRelaxNGParserCtxt* %2, i32 0, i32 0, !dbg !186
  store %struct._xmlRelaxNGDocument* null, %struct._xmlRelaxNGDocument** %5, align 8, !dbg !187
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !188
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 256, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)), !dbg !189
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !190
  %8 = load i8, i8* %7, align 1, !dbg !190
  %9 = sext i8 %8 to i32, !dbg !190
  %10 = icmp eq i32 %9, 0, !dbg !191
  %11 = zext i1 %10 to i32, !dbg !191
  %12 = sext i32 %11 to i64, !dbg !190
  call void @klee_assume(i64 noundef %12), !dbg !192
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGDocument** %4, metadata !193, metadata !DIExpression()), !dbg !194
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !195
  %14 = call %struct._xmlRelaxNGDocument* @xmlRelaxNGParseDocument(%struct._xmlRelaxNGParserCtxt* noundef %2, i8* noundef %13), !dbg !196
  store %struct._xmlRelaxNGDocument* %14, %struct._xmlRelaxNGDocument** %4, align 8, !dbg !194
  %15 = load %struct._xmlRelaxNGDocument*, %struct._xmlRelaxNGDocument** %4, align 8, !dbg !197
  %16 = icmp ne %struct._xmlRelaxNGDocument* %15, null, !dbg !197
  br i1 %16, label %17, label %23, !dbg !199

17:                                               ; preds = %0
  %18 = load %struct._xmlRelaxNGDocument*, %struct._xmlRelaxNGDocument** %4, align 8, !dbg !200
  %19 = getelementptr inbounds %struct._xmlRelaxNGDocument, %struct._xmlRelaxNGDocument* %18, i32 0, i32 1, !dbg !202
  %20 = load i8*, i8** %19, align 8, !dbg !202
  call void @free(i8* noundef %20) #10, !dbg !203
  %21 = load %struct._xmlRelaxNGDocument*, %struct._xmlRelaxNGDocument** %4, align 8, !dbg !204
  %22 = bitcast %struct._xmlRelaxNGDocument* %21 to i8*, !dbg !204
  call void @free(i8* noundef %22) #10, !dbg !205
  br label %23, !dbg !206

23:                                               ; preds = %17, %0
  ret i32 0, !dbg !207
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #7

declare void @klee_assume(i64 noundef) #7

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !208 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !214, metadata !DIExpression()), !dbg !215
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !216, metadata !DIExpression()), !dbg !217
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !218, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata i8** %7, metadata !220, metadata !DIExpression()), !dbg !221
  %9 = load i8*, i8** %4, align 8, !dbg !222
  store i8* %9, i8** %7, align 8, !dbg !221
  call void @llvm.dbg.declare(metadata i8** %8, metadata !223, metadata !DIExpression()), !dbg !224
  %10 = load i8*, i8** %5, align 8, !dbg !225
  store i8* %10, i8** %8, align 8, !dbg !224
  br label %11, !dbg !226

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !227
  %13 = add i64 %12, -1, !dbg !227
  store i64 %13, i64* %6, align 8, !dbg !227
  %14 = icmp ugt i64 %12, 0, !dbg !228
  br i1 %14, label %15, label %21, !dbg !226

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !229
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !229
  store i8* %17, i8** %8, align 8, !dbg !229
  %18 = load i8, i8* %16, align 1, !dbg !230
  %19 = load i8*, i8** %7, align 8, !dbg !231
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !231
  store i8* %20, i8** %7, align 8, !dbg !231
  store i8 %18, i8* %19, align 1, !dbg !232
  br label %11, !dbg !226, !llvm.loop !233

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !235
  ret i8* %22, !dbg !236
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !237 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !241, metadata !DIExpression()), !dbg !242
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !243, metadata !DIExpression()), !dbg !244
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !245, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i8** %7, metadata !247, metadata !DIExpression()), !dbg !248
  %8 = load i8*, i8** %4, align 8, !dbg !249
  store i8* %8, i8** %7, align 8, !dbg !248
  br label %9, !dbg !250

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !251
  %11 = add i64 %10, -1, !dbg !251
  store i64 %11, i64* %6, align 8, !dbg !251
  %12 = icmp ugt i64 %10, 0, !dbg !252
  br i1 %12, label %13, label %18, !dbg !250

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !253
  %15 = trunc i32 %14 to i8, !dbg !253
  %16 = load i8*, i8** %7, align 8, !dbg !254
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !254
  store i8* %17, i8** %7, align 8, !dbg !254
  store i8 %15, i8* %16, align 1, !dbg !255
  br label %9, !dbg !250, !llvm.loop !256

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !257
  ret i8* %19, !dbg !258
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!0, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37, !37, !37}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !7, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/291_relaxng.c_1991_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "323da0d4ded54145154d36b3b999e273")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 26, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{!6}
!6 = !DIEnumerator(name: "XML_ERR_NO_MEMORY", value: 1000)
!7 = !{!8, !11, !12, !14, !23}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !1, line: 12, baseType: !10)
!10 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 12, flags: DIFlagFwdDecl)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGDocument", file: !1, line: 10, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGDocument", file: !1, line: 15, size: 256, elements: !17)
!17 = !{!18, !19, !20, !21}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !16, file: !1, line: 16, baseType: !8, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !16, file: !1, line: 17, baseType: !12, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !16, file: !1, line: 18, baseType: !14, size: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "externalRef", scope: !16, file: !1, line: 19, baseType: !22, size: 32, offset: 192)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 13, baseType: !25)
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 13, flags: DIFlagFwdDecl)
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!30 = !{i32 7, !"Dwarf Version", i32 5}
!31 = !{i32 2, !"Debug Info Version", i32 3}
!32 = !{i32 1, !"wchar_size", i32 4}
!33 = !{i32 7, !"PIC Level", i32 2}
!34 = !{i32 7, !"PIE Level", i32 2}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"Ubuntu clang version 14.0.6"}
!38 = distinct !DISubprogram(name: "xmlRngPErr", scope: !1, file: !1, line: 31, type: !39, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !48)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41, !23, !22, !46, !46, !11}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGParserCtxt", file: !1, line: 11, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGParserCtxt", file: !1, line: 22, size: 64, elements: !44)
!44 = !{!45}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "documents", scope: !43, file: !1, line: 23, baseType: !14, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!48 = !{}
!49 = !DILocalVariable(name: "ctxt", arg: 1, scope: !38, file: !1, line: 31, type: !41)
!50 = !DILocation(line: 31, column: 39, scope: !38)
!51 = !DILocalVariable(name: "node", arg: 2, scope: !38, file: !1, line: 31, type: !23)
!52 = !DILocation(line: 31, column: 54, scope: !38)
!53 = !DILocalVariable(name: "error", arg: 3, scope: !38, file: !1, line: 31, type: !22)
!54 = !DILocation(line: 31, column: 64, scope: !38)
!55 = !DILocalVariable(name: "msg", arg: 4, scope: !38, file: !1, line: 31, type: !46)
!56 = !DILocation(line: 31, column: 83, scope: !38)
!57 = !DILocalVariable(name: "arg1", arg: 5, scope: !38, file: !1, line: 31, type: !46)
!58 = !DILocation(line: 31, column: 100, scope: !38)
!59 = !DILocalVariable(name: "arg2", arg: 6, scope: !38, file: !1, line: 31, type: !11)
!60 = !DILocation(line: 31, column: 112, scope: !38)
!61 = !DILocation(line: 33, column: 1, scope: !38)
!62 = distinct !DISubprogram(name: "xmlFreeDoc", scope: !1, file: !1, line: 35, type: !63, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !48)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !8}
!65 = !DILocalVariable(name: "doc", arg: 1, scope: !62, file: !1, line: 35, type: !8)
!66 = !DILocation(line: 35, column: 25, scope: !62)
!67 = !DILocation(line: 37, column: 1, scope: !62)
!68 = distinct !DISubprogram(name: "xmlReadDoc", scope: !1, file: !1, line: 39, type: !69, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !48)
!69 = !DISubroutineType(types: !70)
!70 = !{!8, !46, !46, !46, !22}
!71 = !DILocalVariable(name: "buffer", arg: 1, scope: !68, file: !1, line: 39, type: !46)
!72 = !DILocation(line: 39, column: 32, scope: !68)
!73 = !DILocalVariable(name: "URL", arg: 2, scope: !68, file: !1, line: 39, type: !46)
!74 = !DILocation(line: 39, column: 52, scope: !68)
!75 = !DILocalVariable(name: "encoding", arg: 3, scope: !68, file: !1, line: 39, type: !46)
!76 = !DILocation(line: 39, column: 69, scope: !68)
!77 = !DILocalVariable(name: "options", arg: 4, scope: !68, file: !1, line: 39, type: !22)
!78 = !DILocation(line: 39, column: 83, scope: !68)
!79 = !DILocation(line: 41, column: 5, scope: !68)
!80 = distinct !DISubprogram(name: "xmlStrdup", scope: !1, file: !1, line: 44, type: !81, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !48)
!81 = !DISubroutineType(types: !82)
!82 = !{!12, !46}
!83 = !DILocalVariable(name: "cur", arg: 1, scope: !80, file: !1, line: 44, type: !46)
!84 = !DILocation(line: 44, column: 29, scope: !80)
!85 = !DILocation(line: 45, column: 9, scope: !86)
!86 = distinct !DILexicalBlock(scope: !80, file: !1, line: 45, column: 9)
!87 = !DILocation(line: 45, column: 13, scope: !86)
!88 = !DILocation(line: 45, column: 9, scope: !80)
!89 = !DILocation(line: 45, column: 22, scope: !86)
!90 = !DILocalVariable(name: "len", scope: !80, file: !1, line: 46, type: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !92, line: 46, baseType: !93)
!92 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!93 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!94 = !DILocation(line: 46, column: 12, scope: !80)
!95 = !DILocation(line: 46, column: 25, scope: !80)
!96 = !DILocation(line: 46, column: 18, scope: !80)
!97 = !DILocation(line: 46, column: 30, scope: !80)
!98 = !DILocalVariable(name: "copy", scope: !80, file: !1, line: 47, type: !12)
!99 = !DILocation(line: 47, column: 11, scope: !80)
!100 = !DILocation(line: 47, column: 32, scope: !80)
!101 = !DILocation(line: 47, column: 25, scope: !80)
!102 = !DILocation(line: 48, column: 9, scope: !103)
!103 = distinct !DILexicalBlock(scope: !80, file: !1, line: 48, column: 9)
!104 = !DILocation(line: 48, column: 9, scope: !80)
!105 = !DILocation(line: 48, column: 22, scope: !103)
!106 = !DILocation(line: 48, column: 28, scope: !103)
!107 = !DILocation(line: 48, column: 33, scope: !103)
!108 = !DILocation(line: 48, column: 15, scope: !103)
!109 = !DILocation(line: 49, column: 12, scope: !80)
!110 = !DILocation(line: 49, column: 5, scope: !80)
!111 = !DILocation(line: 50, column: 1, scope: !80)
!112 = distinct !DISubprogram(name: "xmlRelaxNGParseDocument", scope: !1, file: !1, line: 53, type: !113, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !48)
!113 = !DISubroutineType(types: !114)
!114 = !{!14, !41, !46}
!115 = !DILocalVariable(name: "ctxt", arg: 1, scope: !112, file: !1, line: 53, type: !41)
!116 = !DILocation(line: 53, column: 67, scope: !112)
!117 = !DILocalVariable(name: "URL", arg: 2, scope: !112, file: !1, line: 53, type: !46)
!118 = !DILocation(line: 53, column: 85, scope: !112)
!119 = !DILocalVariable(name: "doc", scope: !112, file: !1, line: 54, type: !8)
!120 = !DILocation(line: 54, column: 13, scope: !112)
!121 = !DILocalVariable(name: "ret", scope: !112, file: !1, line: 55, type: !14)
!122 = !DILocation(line: 55, column: 25, scope: !112)
!123 = !DILocation(line: 58, column: 28, scope: !112)
!124 = !DILocation(line: 58, column: 11, scope: !112)
!125 = !DILocation(line: 58, column: 9, scope: !112)
!126 = !DILocation(line: 59, column: 9, scope: !127)
!127 = distinct !DILexicalBlock(scope: !112, file: !1, line: 59, column: 9)
!128 = !DILocation(line: 59, column: 13, scope: !127)
!129 = !DILocation(line: 59, column: 9, scope: !112)
!130 = !DILocation(line: 60, column: 9, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !1, line: 59, column: 22)
!132 = !DILocation(line: 64, column: 33, scope: !112)
!133 = !DILocation(line: 64, column: 11, scope: !112)
!134 = !DILocation(line: 64, column: 9, scope: !112)
!135 = !DILocation(line: 65, column: 9, scope: !136)
!136 = distinct !DILexicalBlock(scope: !112, file: !1, line: 65, column: 9)
!137 = !DILocation(line: 65, column: 13, scope: !136)
!138 = !DILocation(line: 65, column: 9, scope: !112)
!139 = !DILocation(line: 66, column: 20, scope: !140)
!140 = distinct !DILexicalBlock(scope: !136, file: !1, line: 65, column: 22)
!141 = !DILocation(line: 66, column: 37, scope: !140)
!142 = !DILocation(line: 66, column: 26, scope: !140)
!143 = !DILocation(line: 67, column: 64, scope: !140)
!144 = !DILocation(line: 66, column: 9, scope: !140)
!145 = !DILocation(line: 68, column: 20, scope: !140)
!146 = !DILocation(line: 68, column: 9, scope: !140)
!147 = !DILocation(line: 69, column: 9, scope: !140)
!148 = !DILocation(line: 74, column: 5, scope: !112)
!149 = !DILocation(line: 77, column: 5, scope: !112)
!150 = !DILocation(line: 79, column: 12, scope: !112)
!151 = !DILocation(line: 79, column: 5, scope: !112)
!152 = !DILocation(line: 80, column: 16, scope: !112)
!153 = !DILocation(line: 80, column: 5, scope: !112)
!154 = !DILocation(line: 80, column: 10, scope: !112)
!155 = !DILocation(line: 80, column: 14, scope: !112)
!156 = !DILocation(line: 81, column: 27, scope: !112)
!157 = !DILocation(line: 81, column: 17, scope: !112)
!158 = !DILocation(line: 81, column: 5, scope: !112)
!159 = !DILocation(line: 81, column: 10, scope: !112)
!160 = !DILocation(line: 81, column: 15, scope: !112)
!161 = !DILocation(line: 82, column: 17, scope: !112)
!162 = !DILocation(line: 82, column: 23, scope: !112)
!163 = !DILocation(line: 82, column: 5, scope: !112)
!164 = !DILocation(line: 82, column: 10, scope: !112)
!165 = !DILocation(line: 82, column: 15, scope: !112)
!166 = !DILocation(line: 83, column: 5, scope: !112)
!167 = !DILocation(line: 83, column: 10, scope: !112)
!168 = !DILocation(line: 83, column: 22, scope: !112)
!169 = !DILocation(line: 84, column: 23, scope: !112)
!170 = !DILocation(line: 84, column: 5, scope: !112)
!171 = !DILocation(line: 84, column: 11, scope: !112)
!172 = !DILocation(line: 84, column: 21, scope: !112)
!173 = !DILocation(line: 86, column: 12, scope: !112)
!174 = !DILocation(line: 86, column: 5, scope: !112)
!175 = !DILocation(line: 87, column: 1, scope: !112)
!176 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 89, type: !177, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !48)
!177 = !DISubroutineType(types: !178)
!178 = !{!22}
!179 = !DILocalVariable(name: "ctxt", scope: !176, file: !1, line: 90, type: !42)
!180 = !DILocation(line: 90, column: 26, scope: !176)
!181 = !DILocalVariable(name: "URL", scope: !176, file: !1, line: 91, type: !182)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2048, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 256)
!185 = !DILocation(line: 91, column: 10, scope: !176)
!186 = !DILocation(line: 94, column: 10, scope: !176)
!187 = !DILocation(line: 94, column: 20, scope: !176)
!188 = !DILocation(line: 97, column: 24, scope: !176)
!189 = !DILocation(line: 97, column: 5, scope: !176)
!190 = !DILocation(line: 99, column: 17, scope: !176)
!191 = !DILocation(line: 99, column: 26, scope: !176)
!192 = !DILocation(line: 99, column: 5, scope: !176)
!193 = !DILocalVariable(name: "result", scope: !176, file: !1, line: 102, type: !14)
!194 = !DILocation(line: 102, column: 25, scope: !176)
!195 = !DILocation(line: 102, column: 65, scope: !176)
!196 = !DILocation(line: 102, column: 34, scope: !176)
!197 = !DILocation(line: 105, column: 9, scope: !198)
!198 = distinct !DILexicalBlock(scope: !176, file: !1, line: 105, column: 9)
!199 = !DILocation(line: 105, column: 9, scope: !176)
!200 = !DILocation(line: 106, column: 14, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !1, line: 105, column: 17)
!202 = !DILocation(line: 106, column: 22, scope: !201)
!203 = !DILocation(line: 106, column: 9, scope: !201)
!204 = !DILocation(line: 107, column: 14, scope: !201)
!205 = !DILocation(line: 107, column: 9, scope: !201)
!206 = !DILocation(line: 108, column: 5, scope: !201)
!207 = !DILocation(line: 110, column: 5, scope: !176)
!208 = distinct !DISubprogram(name: "memcpy", scope: !209, file: !209, line: 12, type: !210, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !48)
!209 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!210 = !DISubroutineType(types: !211)
!211 = !{!11, !11, !212, !91}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!214 = !DILocalVariable(name: "destaddr", arg: 1, scope: !208, file: !209, line: 12, type: !11)
!215 = !DILocation(line: 12, column: 20, scope: !208)
!216 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !208, file: !209, line: 12, type: !212)
!217 = !DILocation(line: 12, column: 42, scope: !208)
!218 = !DILocalVariable(name: "len", arg: 3, scope: !208, file: !209, line: 12, type: !91)
!219 = !DILocation(line: 12, column: 58, scope: !208)
!220 = !DILocalVariable(name: "dest", scope: !208, file: !209, line: 13, type: !12)
!221 = !DILocation(line: 13, column: 9, scope: !208)
!222 = !DILocation(line: 13, column: 16, scope: !208)
!223 = !DILocalVariable(name: "src", scope: !208, file: !209, line: 14, type: !46)
!224 = !DILocation(line: 14, column: 15, scope: !208)
!225 = !DILocation(line: 14, column: 21, scope: !208)
!226 = !DILocation(line: 16, column: 3, scope: !208)
!227 = !DILocation(line: 16, column: 13, scope: !208)
!228 = !DILocation(line: 16, column: 16, scope: !208)
!229 = !DILocation(line: 17, column: 19, scope: !208)
!230 = !DILocation(line: 17, column: 15, scope: !208)
!231 = !DILocation(line: 17, column: 10, scope: !208)
!232 = !DILocation(line: 17, column: 13, scope: !208)
!233 = distinct !{!233, !226, !229, !234}
!234 = !{!"llvm.loop.mustprogress"}
!235 = !DILocation(line: 18, column: 10, scope: !208)
!236 = !DILocation(line: 18, column: 3, scope: !208)
!237 = distinct !DISubprogram(name: "memset", scope: !238, file: !238, line: 12, type: !239, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !48)
!238 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!239 = !DISubroutineType(types: !240)
!240 = !{!11, !11, !22, !91}
!241 = !DILocalVariable(name: "dst", arg: 1, scope: !237, file: !238, line: 12, type: !11)
!242 = !DILocation(line: 12, column: 20, scope: !237)
!243 = !DILocalVariable(name: "s", arg: 2, scope: !237, file: !238, line: 12, type: !22)
!244 = !DILocation(line: 12, column: 29, scope: !237)
!245 = !DILocalVariable(name: "count", arg: 3, scope: !237, file: !238, line: 12, type: !91)
!246 = !DILocation(line: 12, column: 39, scope: !237)
!247 = !DILocalVariable(name: "a", scope: !237, file: !238, line: 13, type: !12)
!248 = !DILocation(line: 13, column: 9, scope: !237)
!249 = !DILocation(line: 13, column: 13, scope: !237)
!250 = !DILocation(line: 14, column: 3, scope: !237)
!251 = !DILocation(line: 14, column: 15, scope: !237)
!252 = !DILocation(line: 14, column: 18, scope: !237)
!253 = !DILocation(line: 15, column: 12, scope: !237)
!254 = !DILocation(line: 15, column: 7, scope: !237)
!255 = !DILocation(line: 15, column: 10, scope: !237)
!256 = distinct !{!256, !250, !253, !234}
!257 = !DILocation(line: 16, column: 10, scope: !237)
!258 = !DILocation(line: 16, column: 3, scope: !237)

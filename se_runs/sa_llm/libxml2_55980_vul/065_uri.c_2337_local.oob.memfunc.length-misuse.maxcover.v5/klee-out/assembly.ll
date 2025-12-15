; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/065_uri.c_2337_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/065_uri.c_2337_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlURI = type { i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, i8* }

@.str = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"uptr\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"(len <= (int)strlen(val) + 1) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_55980_vul/065_uri.c_2337_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.vulnerable_function = private unnamed_addr constant [53 x i8] c"char *vulnerable_function(char *, const char *, int)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlURIEscapeStr(i8* noundef %0, i8* noundef %1) #0 !dbg !15 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !23, metadata !DIExpression()), !dbg !24
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !25, metadata !DIExpression()), !dbg !26
  %7 = load i8*, i8** %4, align 8, !dbg !27
  call void @llvm.dbg.declare(metadata i64* %5, metadata !28, metadata !DIExpression()), !dbg !32
  %8 = load i8*, i8** %3, align 8, !dbg !33
  %9 = call i64 @strlen(i8* noundef %8) #8, !dbg !34
  store i64 %9, i64* %5, align 8, !dbg !32
  call void @llvm.dbg.declare(metadata i8** %6, metadata !35, metadata !DIExpression()), !dbg !36
  %10 = load i64, i64* %5, align 8, !dbg !37
  %11 = add i64 %10, 1, !dbg !38
  %12 = call noalias i8* @malloc(i64 noundef %11) #9, !dbg !39
  store i8* %12, i8** %6, align 8, !dbg !36
  %13 = load i8*, i8** %6, align 8, !dbg !40
  %14 = icmp ne i8* %13, null, !dbg !40
  br i1 %14, label %15, label %21, !dbg !42

15:                                               ; preds = %2
  %16 = load i8*, i8** %6, align 8, !dbg !43
  %17 = load i8*, i8** %3, align 8, !dbg !45
  %18 = load i64, i64* %5, align 8, !dbg !46
  %19 = add i64 %18, 1, !dbg !47
  %20 = call i8* @memcpy(i8* %16, i8* %17, i64 %19), !dbg !48
  br label %21, !dbg !49

21:                                               ; preds = %15, %2
  %22 = load i8*, i8** %6, align 8, !dbg !50
  ret i8* %22, !dbg !51
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFreeURI(%struct._xmlURI* noundef %0) #0 !dbg !52 {
  %2 = alloca %struct._xmlURI*, align 8
  store %struct._xmlURI* %0, %struct._xmlURI** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlURI** %2, metadata !70, metadata !DIExpression()), !dbg !71
  %3 = load %struct._xmlURI*, %struct._xmlURI** %2, align 8, !dbg !72
  %4 = icmp ne %struct._xmlURI* %3, null, !dbg !72
  br i1 %4, label %5, label %35, !dbg !74

5:                                                ; preds = %1
  %6 = load %struct._xmlURI*, %struct._xmlURI** %2, align 8, !dbg !75
  %7 = getelementptr inbounds %struct._xmlURI, %struct._xmlURI* %6, i32 0, i32 0, !dbg !77
  %8 = load i8*, i8** %7, align 8, !dbg !77
  call void @free(i8* noundef %8) #9, !dbg !78
  %9 = load %struct._xmlURI*, %struct._xmlURI** %2, align 8, !dbg !79
  %10 = getelementptr inbounds %struct._xmlURI, %struct._xmlURI* %9, i32 0, i32 1, !dbg !80
  %11 = load i8*, i8** %10, align 8, !dbg !80
  call void @free(i8* noundef %11) #9, !dbg !81
  %12 = load %struct._xmlURI*, %struct._xmlURI** %2, align 8, !dbg !82
  %13 = getelementptr inbounds %struct._xmlURI, %struct._xmlURI* %12, i32 0, i32 2, !dbg !83
  %14 = load i8*, i8** %13, align 8, !dbg !83
  call void @free(i8* noundef %14) #9, !dbg !84
  %15 = load %struct._xmlURI*, %struct._xmlURI** %2, align 8, !dbg !85
  %16 = getelementptr inbounds %struct._xmlURI, %struct._xmlURI* %15, i32 0, i32 3, !dbg !86
  %17 = load i8*, i8** %16, align 8, !dbg !86
  call void @free(i8* noundef %17) #9, !dbg !87
  %18 = load %struct._xmlURI*, %struct._xmlURI** %2, align 8, !dbg !88
  %19 = getelementptr inbounds %struct._xmlURI, %struct._xmlURI* %18, i32 0, i32 4, !dbg !89
  %20 = load i8*, i8** %19, align 8, !dbg !89
  call void @free(i8* noundef %20) #9, !dbg !90
  %21 = load %struct._xmlURI*, %struct._xmlURI** %2, align 8, !dbg !91
  %22 = getelementptr inbounds %struct._xmlURI, %struct._xmlURI* %21, i32 0, i32 6, !dbg !92
  %23 = load i8*, i8** %22, align 8, !dbg !92
  call void @free(i8* noundef %23) #9, !dbg !93
  %24 = load %struct._xmlURI*, %struct._xmlURI** %2, align 8, !dbg !94
  %25 = getelementptr inbounds %struct._xmlURI, %struct._xmlURI* %24, i32 0, i32 7, !dbg !95
  %26 = load i8*, i8** %25, align 8, !dbg !95
  call void @free(i8* noundef %26) #9, !dbg !96
  %27 = load %struct._xmlURI*, %struct._xmlURI** %2, align 8, !dbg !97
  %28 = getelementptr inbounds %struct._xmlURI, %struct._xmlURI* %27, i32 0, i32 8, !dbg !98
  %29 = load i8*, i8** %28, align 8, !dbg !98
  call void @free(i8* noundef %29) #9, !dbg !99
  %30 = load %struct._xmlURI*, %struct._xmlURI** %2, align 8, !dbg !100
  %31 = getelementptr inbounds %struct._xmlURI, %struct._xmlURI* %30, i32 0, i32 10, !dbg !101
  %32 = load i8*, i8** %31, align 8, !dbg !101
  call void @free(i8* noundef %32) #9, !dbg !102
  %33 = load %struct._xmlURI*, %struct._xmlURI** %2, align 8, !dbg !103
  %34 = bitcast %struct._xmlURI* %33 to i8*, !dbg !103
  call void @free(i8* noundef %34) #9, !dbg !104
  br label %35, !dbg !105

35:                                               ; preds = %5, %1
  ret void, !dbg !106
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlURIUnescapeString(i8* noundef %0, i32 noundef %1, i8* noundef %2) #0 !dbg !107 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !110, metadata !DIExpression()), !dbg !111
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !112, metadata !DIExpression()), !dbg !113
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata i8** %8, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata i8** %9, metadata !118, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.declare(metadata i8** %10, metadata !120, metadata !DIExpression()), !dbg !121
  %11 = load i8*, i8** %5, align 8, !dbg !122
  %12 = icmp eq i8* %11, null, !dbg !124
  br i1 %12, label %13, label %14, !dbg !125

13:                                               ; preds = %3
  store i8* null, i8** %4, align 8, !dbg !126
  br label %63, !dbg !126

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4, !dbg !127
  %16 = icmp sle i32 %15, 0, !dbg !129
  br i1 %16, label %17, label %21, !dbg !130

17:                                               ; preds = %14
  %18 = load i8*, i8** %5, align 8, !dbg !131
  %19 = call i64 @strlen(i8* noundef %18) #8, !dbg !132
  %20 = trunc i64 %19 to i32, !dbg !132
  store i32 %20, i32* %6, align 4, !dbg !133
  br label %21, !dbg !134

21:                                               ; preds = %17, %14
  %22 = load i8*, i8** %7, align 8, !dbg !135
  %23 = icmp eq i8* %22, null, !dbg !137
  br i1 %23, label %24, label %33, !dbg !138

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4, !dbg !139
  %26 = add nsw i32 %25, 1, !dbg !141
  %27 = sext i32 %26 to i64, !dbg !139
  %28 = call noalias i8* @malloc(i64 noundef %27) #9, !dbg !142
  store i8* %28, i8** %8, align 8, !dbg !143
  %29 = load i8*, i8** %8, align 8, !dbg !144
  %30 = icmp eq i8* %29, null, !dbg !146
  br i1 %30, label %31, label %32, !dbg !147

31:                                               ; preds = %24
  store i8* null, i8** %4, align 8, !dbg !148
  br label %63, !dbg !148

32:                                               ; preds = %24
  br label %35, !dbg !149

33:                                               ; preds = %21
  %34 = load i8*, i8** %7, align 8, !dbg !150
  store i8* %34, i8** %8, align 8, !dbg !152
  br label %35

35:                                               ; preds = %33, %32
  %36 = load i8*, i8** %8, align 8, !dbg !153
  store i8* %36, i8** %9, align 8, !dbg !154
  %37 = load i8*, i8** %5, align 8, !dbg !155
  store i8* %37, i8** %10, align 8, !dbg !156
  br label %38, !dbg !157

38:                                               ; preds = %54, %35
  %39 = load i8*, i8** %10, align 8, !dbg !158
  %40 = load i8, i8* %39, align 1, !dbg !159
  %41 = sext i8 %40 to i32, !dbg !159
  %42 = icmp ne i32 %41, 0, !dbg !160
  br i1 %42, label %43, label %52, !dbg !161

43:                                               ; preds = %38
  %44 = load i8*, i8** %10, align 8, !dbg !162
  %45 = load i8*, i8** %5, align 8, !dbg !163
  %46 = ptrtoint i8* %44 to i64, !dbg !164
  %47 = ptrtoint i8* %45 to i64, !dbg !164
  %48 = sub i64 %46, %47, !dbg !164
  %49 = load i32, i32* %6, align 4, !dbg !165
  %50 = sext i32 %49 to i64, !dbg !165
  %51 = icmp slt i64 %48, %50, !dbg !166
  br label %52

52:                                               ; preds = %43, %38
  %53 = phi i1 [ false, %38 ], [ %51, %43 ], !dbg !167
  br i1 %53, label %54, label %60, !dbg !157

54:                                               ; preds = %52
  %55 = load i8*, i8** %10, align 8, !dbg !168
  %56 = getelementptr inbounds i8, i8* %55, i32 1, !dbg !168
  store i8* %56, i8** %10, align 8, !dbg !168
  %57 = load i8, i8* %55, align 1, !dbg !170
  %58 = load i8*, i8** %9, align 8, !dbg !171
  %59 = getelementptr inbounds i8, i8* %58, i32 1, !dbg !171
  store i8* %59, i8** %9, align 8, !dbg !171
  store i8 %57, i8* %58, align 1, !dbg !172
  br label %38, !dbg !157, !llvm.loop !173

60:                                               ; preds = %52
  %61 = load i8*, i8** %9, align 8, !dbg !176
  store i8 0, i8* %61, align 1, !dbg !177
  %62 = load i8*, i8** %8, align 8, !dbg !178
  store i8* %62, i8** %4, align 8, !dbg !179
  br label %63, !dbg !179

63:                                               ; preds = %60, %31, %13
  %64 = load i8*, i8** %4, align 8, !dbg !180
  ret i8* %64, !dbg !180
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !181 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !184, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.declare(metadata i8** %3, metadata !189, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.declare(metadata i32* %4, metadata !191, metadata !DIExpression()), !dbg !192
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !193
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 256, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)), !dbg !194
  %6 = bitcast i32* %4 to i8*, !dbg !195
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !196
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !197
  store i8 0, i8* %7, align 1, !dbg !198
  %8 = call noalias i8* @malloc(i64 noundef 256) #9, !dbg !199
  store i8* %8, i8** %3, align 8, !dbg !200
  %9 = load i8*, i8** %3, align 8, !dbg !201
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !202
  %10 = load i8*, i8** %3, align 8, !dbg !203
  %11 = getelementptr inbounds i8, i8* %10, i64 255, !dbg !203
  store i8 0, i8* %11, align 1, !dbg !204
  %12 = load i32, i32* %4, align 4, !dbg !205
  %13 = icmp sgt i32 %12, 0, !dbg !206
  %14 = zext i1 %13 to i32, !dbg !206
  %15 = sext i32 %14 to i64, !dbg !205
  call void @klee_assume(i64 noundef %15), !dbg !207
  %16 = load i32, i32* %4, align 4, !dbg !208
  %17 = icmp slt i32 %16, 256, !dbg !209
  %18 = zext i1 %17 to i32, !dbg !209
  %19 = sext i32 %18 to i64, !dbg !208
  call void @klee_assume(i64 noundef %19), !dbg !210
  %20 = load i8*, i8** %3, align 8, !dbg !211
  %21 = icmp ne i8* %20, null, !dbg !212
  %22 = zext i1 %21 to i32, !dbg !212
  %23 = sext i32 %22 to i64, !dbg !211
  call void @klee_assume(i64 noundef %23), !dbg !213
  %24 = load i8*, i8** %3, align 8, !dbg !214
  %25 = getelementptr inbounds i8, i8* %24, i64 0, !dbg !214
  %26 = load i8, i8* %25, align 1, !dbg !214
  %27 = sext i8 %26 to i32, !dbg !214
  %28 = icmp ne i32 %27, 47, !dbg !215
  %29 = zext i1 %28 to i32, !dbg !215
  %30 = sext i32 %29 to i64, !dbg !214
  call void @klee_assume(i64 noundef %30), !dbg !216
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !217
  %32 = load i8*, i8** %3, align 8, !dbg !218
  %33 = load i32, i32* %4, align 4, !dbg !219
  %34 = call i8* @vulnerable_function(i8* noundef %31, i8* noundef %32, i32 noundef %33), !dbg !220
  %35 = load i8*, i8** %3, align 8, !dbg !221
  call void @free(i8* noundef %35) #9, !dbg !222
  ret i32 0, !dbg !223
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vulnerable_function(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !224 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !227, metadata !DIExpression()), !dbg !228
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !229, metadata !DIExpression()), !dbg !230
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !231, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.declare(metadata i8** %7, metadata !233, metadata !DIExpression()), !dbg !234
  %8 = load i8*, i8** %4, align 8, !dbg !235
  store i8* %8, i8** %7, align 8, !dbg !234
  %9 = load i8*, i8** %5, align 8, !dbg !236
  %10 = icmp ne i8* %9, null, !dbg !238
  br i1 %10, label %11, label %67, !dbg !239

11:                                               ; preds = %3
  %12 = load i8*, i8** %7, align 8, !dbg !240
  %13 = load i8*, i8** %4, align 8, !dbg !243
  %14 = icmp ugt i8* %12, %13, !dbg !244
  br i1 %14, label %15, label %43, !dbg !245

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4, !dbg !246
  %17 = icmp sgt i32 %16, 0, !dbg !247
  br i1 %17, label %18, label %43, !dbg !248

18:                                               ; preds = %15
  %19 = load i8*, i8** %5, align 8, !dbg !249
  %20 = getelementptr inbounds i8, i8* %19, i64 0, !dbg !249
  %21 = load i8, i8* %20, align 1, !dbg !249
  %22 = sext i8 %21 to i32, !dbg !249
  %23 = icmp eq i32 %22, 47, !dbg !250
  br i1 %23, label %24, label %43, !dbg !251

24:                                               ; preds = %18
  %25 = load i8*, i8** %7, align 8, !dbg !252
  %26 = getelementptr inbounds i8, i8* %25, i64 -1, !dbg !252
  %27 = load i8, i8* %26, align 1, !dbg !252
  %28 = sext i8 %27 to i32, !dbg !252
  %29 = icmp eq i32 %28, 47, !dbg !253
  br i1 %29, label %30, label %43, !dbg !254

30:                                               ; preds = %24
  %31 = load i8*, i8** %7, align 8, !dbg !255
  %32 = load i8*, i8** %5, align 8, !dbg !257
  %33 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !258
  %34 = load i32, i32* %6, align 4, !dbg !259
  %35 = sub nsw i32 %34, 1, !dbg !260
  %36 = sext i32 %35 to i64, !dbg !259
  %37 = call i8* @memcpy(i8* %31, i8* %33, i64 %36), !dbg !261
  %38 = load i8*, i8** %7, align 8, !dbg !262
  %39 = load i32, i32* %6, align 4, !dbg !263
  %40 = sub nsw i32 %39, 2, !dbg !264
  %41 = sext i32 %40 to i64, !dbg !262
  %42 = getelementptr inbounds i8, i8* %38, i64 %41, !dbg !262
  store i8 0, i8* %42, align 1, !dbg !265
  br label %66, !dbg !266

43:                                               ; preds = %24, %18, %15, %11
  %44 = load i8*, i8** %7, align 8, !dbg !267
  %45 = load i8*, i8** %5, align 8, !dbg !269
  %46 = load i32, i32* %6, align 4, !dbg !270
  %47 = sext i32 %46 to i64, !dbg !270
  %48 = call i8* @memcpy(i8* %44, i8* %45, i64 %47), !dbg !271
  %49 = load i8*, i8** %7, align 8, !dbg !272
  %50 = load i32, i32* %6, align 4, !dbg !273
  %51 = sub nsw i32 %50, 1, !dbg !274
  %52 = sext i32 %51 to i64, !dbg !272
  %53 = getelementptr inbounds i8, i8* %49, i64 %52, !dbg !272
  store i8 0, i8* %53, align 1, !dbg !275
  %54 = load i32, i32* %6, align 4, !dbg !276
  %55 = load i8*, i8** %4, align 8, !dbg !276
  %56 = call i64 @strlen(i8* noundef %55) #8, !dbg !276
  %57 = trunc i64 %56 to i32, !dbg !276
  %58 = add nsw i32 %57, 1, !dbg !276
  %59 = icmp sle i32 %54, %58, !dbg !276
  br i1 %59, label %60, label %62, !dbg !276

60:                                               ; preds = %43
  br i1 true, label %61, label %62, !dbg !276

61:                                               ; preds = %60
  br label %64, !dbg !276

62:                                               ; preds = %60, %43
  %63 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.5, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.vulnerable_function, i64 0, i64 0)), !dbg !276
  br label %64, !dbg !276

64:                                               ; preds = %62, %61
  %65 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.5, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.vulnerable_function, i64 0, i64 0)), !dbg !277
  br label %66

66:                                               ; preds = %64, %30
  br label %73, !dbg !278

67:                                               ; preds = %3
  %68 = load i8*, i8** %7, align 8, !dbg !279
  %69 = load i32, i32* %6, align 4, !dbg !281
  %70 = sub nsw i32 %69, 1, !dbg !282
  %71 = sext i32 %70 to i64, !dbg !279
  %72 = getelementptr inbounds i8, i8* %68, i64 %71, !dbg !279
  store i8 0, i8* %72, align 1, !dbg !283
  br label %73

73:                                               ; preds = %67, %66
  %74 = load i8*, i8** %4, align 8, !dbg !284
  ret i8* %74, !dbg !285
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !286 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !292, metadata !DIExpression()), !dbg !293
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !294, metadata !DIExpression()), !dbg !295
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !296, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.declare(metadata i8** %7, metadata !298, metadata !DIExpression()), !dbg !299
  %9 = load i8*, i8** %4, align 8, !dbg !300
  store i8* %9, i8** %7, align 8, !dbg !299
  call void @llvm.dbg.declare(metadata i8** %8, metadata !301, metadata !DIExpression()), !dbg !302
  %10 = load i8*, i8** %5, align 8, !dbg !303
  store i8* %10, i8** %8, align 8, !dbg !302
  br label %11, !dbg !304

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !305
  %13 = add i64 %12, -1, !dbg !305
  store i64 %13, i64* %6, align 8, !dbg !305
  %14 = icmp ugt i64 %12, 0, !dbg !306
  br i1 %14, label %15, label %21, !dbg !304

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !307
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !307
  store i8* %17, i8** %8, align 8, !dbg !307
  %18 = load i8, i8* %16, align 1, !dbg !308
  %19 = load i8*, i8** %7, align 8, !dbg !309
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !309
  store i8* %20, i8** %7, align 8, !dbg !309
  store i8 %18, i8* %19, align 1, !dbg !310
  br label %11, !dbg !304, !llvm.loop !311

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !312
  ret i8* %22, !dbg !313
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14, !14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/065_uri.c_2337_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "83447792cbf44ecfa6d7343a420baecd")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!6 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"Ubuntu clang version 14.0.6"}
!15 = distinct !DISubprogram(name: "xmlURIEscapeStr", scope: !1, file: !1, line: 26, type: !16, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !20, !20}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!22 = !{}
!23 = !DILocalVariable(name: "str", arg: 1, scope: !15, file: !1, line: 26, type: !20)
!24 = !DILocation(line: 26, column: 35, scope: !15)
!25 = !DILocalVariable(name: "list", arg: 2, scope: !15, file: !1, line: 26, type: !20)
!26 = !DILocation(line: 26, column: 52, scope: !15)
!27 = !DILocation(line: 27, column: 11, scope: !15)
!28 = !DILocalVariable(name: "len", scope: !15, file: !1, line: 28, type: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 46, baseType: !31)
!30 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!31 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!32 = !DILocation(line: 28, column: 12, scope: !15)
!33 = !DILocation(line: 28, column: 25, scope: !15)
!34 = !DILocation(line: 28, column: 18, scope: !15)
!35 = !DILocalVariable(name: "escaped", scope: !15, file: !1, line: 29, type: !18)
!36 = !DILocation(line: 29, column: 11, scope: !15)
!37 = !DILocation(line: 29, column: 28, scope: !15)
!38 = !DILocation(line: 29, column: 32, scope: !15)
!39 = !DILocation(line: 29, column: 21, scope: !15)
!40 = !DILocation(line: 30, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !15, file: !1, line: 30, column: 9)
!42 = !DILocation(line: 30, column: 9, scope: !15)
!43 = !DILocation(line: 31, column: 16, scope: !44)
!44 = distinct !DILexicalBlock(scope: !41, file: !1, line: 30, column: 18)
!45 = !DILocation(line: 31, column: 25, scope: !44)
!46 = !DILocation(line: 31, column: 30, scope: !44)
!47 = !DILocation(line: 31, column: 34, scope: !44)
!48 = !DILocation(line: 31, column: 9, scope: !44)
!49 = !DILocation(line: 32, column: 5, scope: !44)
!50 = !DILocation(line: 33, column: 12, scope: !15)
!51 = !DILocation(line: 33, column: 5, scope: !15)
!52 = distinct !DISubprogram(name: "xmlFreeURI", scope: !1, file: !1, line: 37, type: !53, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !55}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlURI", file: !1, line: 10, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlURI", file: !1, line: 11, size: 704, elements: !58)
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "scheme", scope: !57, file: !1, line: 12, baseType: !18, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !57, file: !1, line: 13, baseType: !18, size: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "authority", scope: !57, file: !1, line: 14, baseType: !18, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !57, file: !1, line: 15, baseType: !18, size: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !57, file: !1, line: 16, baseType: !18, size: 64, offset: 256)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !57, file: !1, line: 17, baseType: !4, size: 32, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !57, file: !1, line: 18, baseType: !18, size: 64, offset: 384)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !57, file: !1, line: 19, baseType: !18, size: 64, offset: 448)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "fragment", scope: !57, file: !1, line: 20, baseType: !18, size: 64, offset: 512)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !57, file: !1, line: 21, baseType: !4, size: 32, offset: 576)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "query_raw", scope: !57, file: !1, line: 22, baseType: !18, size: 64, offset: 640)
!70 = !DILocalVariable(name: "uri", arg: 1, scope: !52, file: !1, line: 37, type: !55)
!71 = !DILocation(line: 37, column: 25, scope: !52)
!72 = !DILocation(line: 38, column: 9, scope: !73)
!73 = distinct !DILexicalBlock(scope: !52, file: !1, line: 38, column: 9)
!74 = !DILocation(line: 38, column: 9, scope: !52)
!75 = !DILocation(line: 39, column: 14, scope: !76)
!76 = distinct !DILexicalBlock(scope: !73, file: !1, line: 38, column: 14)
!77 = !DILocation(line: 39, column: 19, scope: !76)
!78 = !DILocation(line: 39, column: 9, scope: !76)
!79 = !DILocation(line: 40, column: 14, scope: !76)
!80 = !DILocation(line: 40, column: 19, scope: !76)
!81 = !DILocation(line: 40, column: 9, scope: !76)
!82 = !DILocation(line: 41, column: 14, scope: !76)
!83 = !DILocation(line: 41, column: 19, scope: !76)
!84 = !DILocation(line: 41, column: 9, scope: !76)
!85 = !DILocation(line: 42, column: 14, scope: !76)
!86 = !DILocation(line: 42, column: 19, scope: !76)
!87 = !DILocation(line: 42, column: 9, scope: !76)
!88 = !DILocation(line: 43, column: 14, scope: !76)
!89 = !DILocation(line: 43, column: 19, scope: !76)
!90 = !DILocation(line: 43, column: 9, scope: !76)
!91 = !DILocation(line: 44, column: 14, scope: !76)
!92 = !DILocation(line: 44, column: 19, scope: !76)
!93 = !DILocation(line: 44, column: 9, scope: !76)
!94 = !DILocation(line: 45, column: 14, scope: !76)
!95 = !DILocation(line: 45, column: 19, scope: !76)
!96 = !DILocation(line: 45, column: 9, scope: !76)
!97 = !DILocation(line: 46, column: 14, scope: !76)
!98 = !DILocation(line: 46, column: 19, scope: !76)
!99 = !DILocation(line: 46, column: 9, scope: !76)
!100 = !DILocation(line: 47, column: 14, scope: !76)
!101 = !DILocation(line: 47, column: 19, scope: !76)
!102 = !DILocation(line: 47, column: 9, scope: !76)
!103 = !DILocation(line: 48, column: 14, scope: !76)
!104 = !DILocation(line: 48, column: 9, scope: !76)
!105 = !DILocation(line: 49, column: 5, scope: !76)
!106 = !DILocation(line: 50, column: 1, scope: !52)
!107 = distinct !DISubprogram(name: "xmlURIUnescapeString", scope: !1, file: !1, line: 53, type: !108, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!108 = !DISubroutineType(types: !109)
!109 = !{!18, !20, !4, !18}
!110 = !DILocalVariable(name: "str", arg: 1, scope: !107, file: !1, line: 53, type: !20)
!111 = !DILocation(line: 53, column: 40, scope: !107)
!112 = !DILocalVariable(name: "len", arg: 2, scope: !107, file: !1, line: 53, type: !4)
!113 = !DILocation(line: 53, column: 49, scope: !107)
!114 = !DILocalVariable(name: "target", arg: 3, scope: !107, file: !1, line: 53, type: !18)
!115 = !DILocation(line: 53, column: 60, scope: !107)
!116 = !DILocalVariable(name: "ret", scope: !107, file: !1, line: 54, type: !18)
!117 = !DILocation(line: 54, column: 11, scope: !107)
!118 = !DILocalVariable(name: "out", scope: !107, file: !1, line: 54, type: !18)
!119 = !DILocation(line: 54, column: 17, scope: !107)
!120 = !DILocalVariable(name: "in", scope: !107, file: !1, line: 55, type: !20)
!121 = !DILocation(line: 55, column: 17, scope: !107)
!122 = !DILocation(line: 57, column: 9, scope: !123)
!123 = distinct !DILexicalBlock(scope: !107, file: !1, line: 57, column: 9)
!124 = !DILocation(line: 57, column: 13, scope: !123)
!125 = !DILocation(line: 57, column: 9, scope: !107)
!126 = !DILocation(line: 57, column: 22, scope: !123)
!127 = !DILocation(line: 58, column: 9, scope: !128)
!128 = distinct !DILexicalBlock(scope: !107, file: !1, line: 58, column: 9)
!129 = !DILocation(line: 58, column: 13, scope: !128)
!130 = !DILocation(line: 58, column: 9, scope: !107)
!131 = !DILocation(line: 58, column: 32, scope: !128)
!132 = !DILocation(line: 58, column: 25, scope: !128)
!133 = !DILocation(line: 58, column: 23, scope: !128)
!134 = !DILocation(line: 58, column: 19, scope: !128)
!135 = !DILocation(line: 59, column: 9, scope: !136)
!136 = distinct !DILexicalBlock(scope: !107, file: !1, line: 59, column: 9)
!137 = !DILocation(line: 59, column: 16, scope: !136)
!138 = !DILocation(line: 59, column: 9, scope: !107)
!139 = !DILocation(line: 60, column: 22, scope: !140)
!140 = distinct !DILexicalBlock(scope: !136, file: !1, line: 59, column: 25)
!141 = !DILocation(line: 60, column: 26, scope: !140)
!142 = !DILocation(line: 60, column: 15, scope: !140)
!143 = !DILocation(line: 60, column: 13, scope: !140)
!144 = !DILocation(line: 61, column: 13, scope: !145)
!145 = distinct !DILexicalBlock(scope: !140, file: !1, line: 61, column: 13)
!146 = !DILocation(line: 61, column: 17, scope: !145)
!147 = !DILocation(line: 61, column: 13, scope: !140)
!148 = !DILocation(line: 61, column: 26, scope: !145)
!149 = !DILocation(line: 62, column: 5, scope: !140)
!150 = !DILocation(line: 63, column: 15, scope: !151)
!151 = distinct !DILexicalBlock(scope: !136, file: !1, line: 62, column: 12)
!152 = !DILocation(line: 63, column: 13, scope: !151)
!153 = !DILocation(line: 66, column: 11, scope: !107)
!154 = !DILocation(line: 66, column: 9, scope: !107)
!155 = !DILocation(line: 67, column: 10, scope: !107)
!156 = !DILocation(line: 67, column: 8, scope: !107)
!157 = !DILocation(line: 70, column: 5, scope: !107)
!158 = !DILocation(line: 70, column: 14, scope: !107)
!159 = !DILocation(line: 70, column: 13, scope: !107)
!160 = !DILocation(line: 70, column: 17, scope: !107)
!161 = !DILocation(line: 70, column: 23, scope: !107)
!162 = !DILocation(line: 70, column: 28, scope: !107)
!163 = !DILocation(line: 70, column: 33, scope: !107)
!164 = !DILocation(line: 70, column: 31, scope: !107)
!165 = !DILocation(line: 70, column: 40, scope: !107)
!166 = !DILocation(line: 70, column: 38, scope: !107)
!167 = !DILocation(line: 0, scope: !107)
!168 = !DILocation(line: 71, column: 21, scope: !169)
!169 = distinct !DILexicalBlock(scope: !107, file: !1, line: 70, column: 46)
!170 = !DILocation(line: 71, column: 18, scope: !169)
!171 = !DILocation(line: 71, column: 13, scope: !169)
!172 = !DILocation(line: 71, column: 16, scope: !169)
!173 = distinct !{!173, !157, !174, !175}
!174 = !DILocation(line: 72, column: 5, scope: !107)
!175 = !{!"llvm.loop.mustprogress"}
!176 = !DILocation(line: 73, column: 6, scope: !107)
!177 = !DILocation(line: 73, column: 10, scope: !107)
!178 = !DILocation(line: 75, column: 12, scope: !107)
!179 = !DILocation(line: 75, column: 5, scope: !107)
!180 = !DILocation(line: 76, column: 1, scope: !107)
!181 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 106, type: !182, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!182 = !DISubroutineType(types: !183)
!183 = !{!4}
!184 = !DILocalVariable(name: "buffer", scope: !181, file: !1, line: 107, type: !185)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 2048, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 256)
!188 = !DILocation(line: 107, column: 10, scope: !181)
!189 = !DILocalVariable(name: "uptr", scope: !181, file: !1, line: 108, type: !18)
!190 = !DILocation(line: 108, column: 11, scope: !181)
!191 = !DILocalVariable(name: "len", scope: !181, file: !1, line: 109, type: !4)
!192 = !DILocation(line: 109, column: 9, scope: !181)
!193 = !DILocation(line: 112, column: 24, scope: !181)
!194 = !DILocation(line: 112, column: 5, scope: !181)
!195 = !DILocation(line: 113, column: 24, scope: !181)
!196 = !DILocation(line: 113, column: 5, scope: !181)
!197 = !DILocation(line: 116, column: 5, scope: !181)
!198 = !DILocation(line: 116, column: 17, scope: !181)
!199 = !DILocation(line: 119, column: 12, scope: !181)
!200 = !DILocation(line: 119, column: 10, scope: !181)
!201 = !DILocation(line: 120, column: 24, scope: !181)
!202 = !DILocation(line: 120, column: 5, scope: !181)
!203 = !DILocation(line: 121, column: 5, scope: !181)
!204 = !DILocation(line: 121, column: 15, scope: !181)
!205 = !DILocation(line: 124, column: 17, scope: !181)
!206 = !DILocation(line: 124, column: 21, scope: !181)
!207 = !DILocation(line: 124, column: 5, scope: !181)
!208 = !DILocation(line: 125, column: 17, scope: !181)
!209 = !DILocation(line: 125, column: 21, scope: !181)
!210 = !DILocation(line: 125, column: 5, scope: !181)
!211 = !DILocation(line: 126, column: 17, scope: !181)
!212 = !DILocation(line: 126, column: 22, scope: !181)
!213 = !DILocation(line: 126, column: 5, scope: !181)
!214 = !DILocation(line: 135, column: 17, scope: !181)
!215 = !DILocation(line: 135, column: 25, scope: !181)
!216 = !DILocation(line: 135, column: 5, scope: !181)
!217 = !DILocation(line: 138, column: 25, scope: !181)
!218 = !DILocation(line: 138, column: 33, scope: !181)
!219 = !DILocation(line: 138, column: 39, scope: !181)
!220 = !DILocation(line: 138, column: 5, scope: !181)
!221 = !DILocation(line: 140, column: 10, scope: !181)
!222 = !DILocation(line: 140, column: 5, scope: !181)
!223 = !DILocation(line: 141, column: 5, scope: !181)
!224 = distinct !DISubprogram(name: "vulnerable_function", scope: !1, file: !1, line: 79, type: !225, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !22)
!225 = !DISubroutineType(types: !226)
!226 = !{!18, !18, !20, !4}
!227 = !DILocalVariable(name: "val", arg: 1, scope: !224, file: !1, line: 79, type: !18)
!228 = !DILocation(line: 79, column: 40, scope: !224)
!229 = !DILocalVariable(name: "uptr", arg: 2, scope: !224, file: !1, line: 79, type: !20)
!230 = !DILocation(line: 79, column: 57, scope: !224)
!231 = !DILocalVariable(name: "len", arg: 3, scope: !224, file: !1, line: 79, type: !4)
!232 = !DILocation(line: 79, column: 67, scope: !224)
!233 = !DILocalVariable(name: "vptr", scope: !224, file: !1, line: 80, type: !18)
!234 = !DILocation(line: 80, column: 11, scope: !224)
!235 = !DILocation(line: 80, column: 18, scope: !224)
!236 = !DILocation(line: 82, column: 9, scope: !237)
!237 = distinct !DILexicalBlock(scope: !224, file: !1, line: 82, column: 9)
!238 = !DILocation(line: 82, column: 14, scope: !237)
!239 = !DILocation(line: 82, column: 9, scope: !224)
!240 = !DILocation(line: 83, column: 14, scope: !241)
!241 = distinct !DILexicalBlock(scope: !242, file: !1, line: 83, column: 13)
!242 = distinct !DILexicalBlock(scope: !237, file: !1, line: 82, column: 23)
!243 = !DILocation(line: 83, column: 21, scope: !241)
!244 = !DILocation(line: 83, column: 19, scope: !241)
!245 = !DILocation(line: 83, column: 26, scope: !241)
!246 = !DILocation(line: 83, column: 30, scope: !241)
!247 = !DILocation(line: 83, column: 34, scope: !241)
!248 = !DILocation(line: 83, column: 39, scope: !241)
!249 = !DILocation(line: 84, column: 14, scope: !241)
!250 = !DILocation(line: 84, column: 22, scope: !241)
!251 = !DILocation(line: 84, column: 30, scope: !241)
!252 = !DILocation(line: 84, column: 34, scope: !241)
!253 = !DILocation(line: 84, column: 43, scope: !241)
!254 = !DILocation(line: 83, column: 13, scope: !242)
!255 = !DILocation(line: 85, column: 20, scope: !256)
!256 = distinct !DILexicalBlock(scope: !241, file: !1, line: 84, column: 52)
!257 = !DILocation(line: 85, column: 26, scope: !256)
!258 = !DILocation(line: 85, column: 31, scope: !256)
!259 = !DILocation(line: 85, column: 36, scope: !256)
!260 = !DILocation(line: 85, column: 40, scope: !256)
!261 = !DILocation(line: 85, column: 13, scope: !256)
!262 = !DILocation(line: 86, column: 13, scope: !256)
!263 = !DILocation(line: 86, column: 18, scope: !256)
!264 = !DILocation(line: 86, column: 22, scope: !256)
!265 = !DILocation(line: 86, column: 27, scope: !256)
!266 = !DILocation(line: 87, column: 9, scope: !256)
!267 = !DILocation(line: 89, column: 20, scope: !268)
!268 = distinct !DILexicalBlock(scope: !241, file: !1, line: 87, column: 16)
!269 = !DILocation(line: 89, column: 26, scope: !268)
!270 = !DILocation(line: 89, column: 32, scope: !268)
!271 = !DILocation(line: 89, column: 13, scope: !268)
!272 = !DILocation(line: 90, column: 13, scope: !268)
!273 = !DILocation(line: 90, column: 18, scope: !268)
!274 = !DILocation(line: 90, column: 22, scope: !268)
!275 = !DILocation(line: 90, column: 27, scope: !268)
!276 = !DILocation(line: 93, column: 13, scope: !268)
!277 = !DILocation(line: 96, column: 13, scope: !268)
!278 = !DILocation(line: 98, column: 5, scope: !242)
!279 = !DILocation(line: 99, column: 9, scope: !280)
!280 = distinct !DILexicalBlock(scope: !237, file: !1, line: 98, column: 12)
!281 = !DILocation(line: 99, column: 14, scope: !280)
!282 = !DILocation(line: 99, column: 18, scope: !280)
!283 = !DILocation(line: 99, column: 23, scope: !280)
!284 = !DILocation(line: 102, column: 12, scope: !224)
!285 = !DILocation(line: 102, column: 5, scope: !224)
!286 = distinct !DISubprogram(name: "memcpy", scope: !287, file: !287, line: 12, type: !288, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !22)
!287 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!288 = !DISubroutineType(types: !289)
!289 = !{!3, !3, !290, !29}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!292 = !DILocalVariable(name: "destaddr", arg: 1, scope: !286, file: !287, line: 12, type: !3)
!293 = !DILocation(line: 12, column: 20, scope: !286)
!294 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !286, file: !287, line: 12, type: !290)
!295 = !DILocation(line: 12, column: 42, scope: !286)
!296 = !DILocalVariable(name: "len", arg: 3, scope: !286, file: !287, line: 12, type: !29)
!297 = !DILocation(line: 12, column: 58, scope: !286)
!298 = !DILocalVariable(name: "dest", scope: !286, file: !287, line: 13, type: !18)
!299 = !DILocation(line: 13, column: 9, scope: !286)
!300 = !DILocation(line: 13, column: 16, scope: !286)
!301 = !DILocalVariable(name: "src", scope: !286, file: !287, line: 14, type: !20)
!302 = !DILocation(line: 14, column: 15, scope: !286)
!303 = !DILocation(line: 14, column: 21, scope: !286)
!304 = !DILocation(line: 16, column: 3, scope: !286)
!305 = !DILocation(line: 16, column: 13, scope: !286)
!306 = !DILocation(line: 16, column: 16, scope: !286)
!307 = !DILocation(line: 17, column: 19, scope: !286)
!308 = !DILocation(line: 17, column: 15, scope: !286)
!309 = !DILocation(line: 17, column: 10, scope: !286)
!310 = !DILocation(line: 17, column: 13, scope: !286)
!311 = distinct !{!311, !304, !307, !175}
!312 = !DILocation(line: 18, column: 10, scope: !286)
!313 = !DILocation(line: 18, column: 3, scope: !286)

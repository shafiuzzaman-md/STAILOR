; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/230_valid.c_3329_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/230_valid.c_3329_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlElement = type { i32, i8*, i8*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"malloc_ptr\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"strdup_ptr\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"(cur != ((void*)0) && sizeof(xmlElement) > 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_55980_vul/230_valid.c_3329_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlAddElementDecl = private unnamed_addr constant [73 x i8] c"xmlElementPtr xmlAddElementDecl(void *, const char *, const char *, int)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"table\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlHashLookup2(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !26 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !32, metadata !DIExpression()), !dbg !33
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !34, metadata !DIExpression()), !dbg !35
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !36, metadata !DIExpression()), !dbg !37
  ret i8* null, !dbg !38
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !39 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i8** %3, metadata !47, metadata !DIExpression()), !dbg !48
  %4 = load i64, i64* %2, align 8, !dbg !49
  %5 = call noalias i8* @malloc(i64 noundef %4) #8, !dbg !50
  store i8* %5, i8** %3, align 8, !dbg !48
  %6 = load i8*, i8** %3, align 8, !dbg !51
  %7 = load i64, i64* %2, align 8, !dbg !52
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef %7, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)), !dbg !53
  %8 = load i8*, i8** %3, align 8, !dbg !54
  ret i8* %8, !dbg !55
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !56 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !59, metadata !DIExpression()), !dbg !60
  %7 = load i8*, i8** %3, align 8, !dbg !61
  %8 = icmp eq i8* %7, null, !dbg !63
  br i1 %8, label %9, label %10, !dbg !64

9:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !65
  br label %40, !dbg !65

10:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !66, metadata !DIExpression()), !dbg !67
  %11 = load i8*, i8** %3, align 8, !dbg !68
  %12 = call i64 @strlen(i8* noundef %11) #9, !dbg !69
  %13 = add i64 %12, 1, !dbg !70
  store i64 %13, i64* %4, align 8, !dbg !67
  call void @llvm.dbg.declare(metadata i8** %5, metadata !71, metadata !DIExpression()), !dbg !72
  %14 = load i64, i64* %4, align 8, !dbg !73
  %15 = call noalias i8* @malloc(i64 noundef %14) #8, !dbg !74
  store i8* %15, i8** %5, align 8, !dbg !72
  %16 = load i8*, i8** %5, align 8, !dbg !75
  %17 = load i64, i64* %4, align 8, !dbg !76
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef %17, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)), !dbg !77
  call void @llvm.dbg.declare(metadata i64* %6, metadata !78, metadata !DIExpression()), !dbg !80
  store i64 0, i64* %6, align 8, !dbg !80
  br label %18, !dbg !81

18:                                               ; preds = %31, %10
  %19 = load i64, i64* %6, align 8, !dbg !82
  %20 = load i64, i64* %4, align 8, !dbg !84
  %21 = sub i64 %20, 1, !dbg !85
  %22 = icmp ult i64 %19, %21, !dbg !86
  br i1 %22, label %23, label %34, !dbg !87

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8, !dbg !88
  %25 = load i64, i64* %6, align 8, !dbg !90
  %26 = getelementptr inbounds i8, i8* %24, i64 %25, !dbg !88
  %27 = load i8, i8* %26, align 1, !dbg !88
  %28 = load i8*, i8** %5, align 8, !dbg !91
  %29 = load i64, i64* %6, align 8, !dbg !92
  %30 = getelementptr inbounds i8, i8* %28, i64 %29, !dbg !91
  store i8 %27, i8* %30, align 1, !dbg !93
  br label %31, !dbg !94

31:                                               ; preds = %23
  %32 = load i64, i64* %6, align 8, !dbg !95
  %33 = add i64 %32, 1, !dbg !95
  store i64 %33, i64* %6, align 8, !dbg !95
  br label %18, !dbg !96, !llvm.loop !97

34:                                               ; preds = %18
  %35 = load i8*, i8** %5, align 8, !dbg !100
  %36 = load i64, i64* %4, align 8, !dbg !101
  %37 = sub i64 %36, 1, !dbg !102
  %38 = getelementptr inbounds i8, i8* %35, i64 %37, !dbg !100
  store i8 0, i8* %38, align 1, !dbg !103
  %39 = load i8*, i8** %5, align 8, !dbg !104
  store i8* %39, i8** %2, align 8, !dbg !105
  br label %40, !dbg !105

40:                                               ; preds = %34, %9
  %41 = load i8*, i8** %2, align 8, !dbg !106
  ret i8* %41, !dbg !106
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlVErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !107 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !110, metadata !DIExpression()), !dbg !111
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !112, metadata !DIExpression()), !dbg !113
  %5 = load i8*, i8** %3, align 8, !dbg !114
  %6 = load i8*, i8** %4, align 8, !dbg !115
  ret void, !dbg !116
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlElement* @xmlAddElementDecl(i8* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3) #0 !dbg !117 {
  %5 = alloca %struct._xmlElement*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct._xmlElement*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !120, metadata !DIExpression()), !dbg !121
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !122, metadata !DIExpression()), !dbg !123
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !124, metadata !DIExpression()), !dbg !125
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !126, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.declare(metadata i8** %10, metadata !128, metadata !DIExpression()), !dbg !129
  %12 = load i8*, i8** %7, align 8, !dbg !130
  store i8* %12, i8** %10, align 8, !dbg !129
  call void @llvm.dbg.declare(metadata %struct._xmlElement** %11, metadata !131, metadata !DIExpression()), !dbg !132
  %13 = load i8*, i8** %7, align 8, !dbg !133
  %14 = icmp eq i8* %13, null, !dbg !135
  br i1 %14, label %15, label %16, !dbg !136

15:                                               ; preds = %4
  store %struct._xmlElement* null, %struct._xmlElement** %5, align 8, !dbg !137
  br label %59, !dbg !137

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8, !dbg !138
  %18 = load i8*, i8** %7, align 8, !dbg !139
  %19 = load i8*, i8** %8, align 8, !dbg !140
  %20 = call i8* @xmlHashLookup2(i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !141
  %21 = bitcast i8* %20 to %struct._xmlElement*, !dbg !141
  store %struct._xmlElement* %21, %struct._xmlElement** %11, align 8, !dbg !142
  %22 = load %struct._xmlElement*, %struct._xmlElement** %11, align 8, !dbg !143
  %23 = icmp eq %struct._xmlElement* %22, null, !dbg !145
  br i1 %23, label %24, label %57, !dbg !146

24:                                               ; preds = %16
  %25 = load i32, i32* %9, align 4, !dbg !147
  %26 = icmp ne i32 %25, 0, !dbg !148
  br i1 %26, label %27, label %57, !dbg !149

27:                                               ; preds = %24
  %28 = call i8* @xmlMalloc(i64 noundef 32), !dbg !150
  %29 = bitcast i8* %28 to %struct._xmlElement*, !dbg !152
  store %struct._xmlElement* %29, %struct._xmlElement** %11, align 8, !dbg !153
  %30 = load %struct._xmlElement*, %struct._xmlElement** %11, align 8, !dbg !154
  %31 = icmp eq %struct._xmlElement* %30, null, !dbg !156
  br i1 %31, label %32, label %33, !dbg !157

32:                                               ; preds = %27
  call void @xmlVErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)), !dbg !158
  store %struct._xmlElement* null, %struct._xmlElement** %5, align 8, !dbg !160
  br label %59, !dbg !160

33:                                               ; preds = %27
  %34 = load %struct._xmlElement*, %struct._xmlElement** %11, align 8, !dbg !161
  %35 = bitcast %struct._xmlElement* %34 to i8*, !dbg !162
  %36 = call i8* @memset(i8* %35, i32 0, i64 32), !dbg !162
  %37 = load %struct._xmlElement*, %struct._xmlElement** %11, align 8, !dbg !163
  %38 = icmp ne %struct._xmlElement* %37, null, !dbg !163
  br i1 %38, label %39, label %41, !dbg !163

39:                                               ; preds = %33
  br i1 true, label %40, label %41, !dbg !163

40:                                               ; preds = %39
  br label %43, !dbg !163

41:                                               ; preds = %39, %33
  %42 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.5, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.xmlAddElementDecl, i64 0, i64 0)), !dbg !163
  br label %43, !dbg !163

43:                                               ; preds = %41, %40
  %44 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.5, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.xmlAddElementDecl, i64 0, i64 0)), !dbg !164
  %45 = load %struct._xmlElement*, %struct._xmlElement** %11, align 8, !dbg !165
  %46 = getelementptr inbounds %struct._xmlElement, %struct._xmlElement* %45, i32 0, i32 0, !dbg !166
  store i32 1, i32* %46, align 8, !dbg !167
  %47 = load i8*, i8** %7, align 8, !dbg !168
  %48 = call i8* @xmlStrdup(i8* noundef %47), !dbg !169
  %49 = load %struct._xmlElement*, %struct._xmlElement** %11, align 8, !dbg !170
  %50 = getelementptr inbounds %struct._xmlElement, %struct._xmlElement* %49, i32 0, i32 1, !dbg !171
  store i8* %48, i8** %50, align 8, !dbg !172
  %51 = load i8*, i8** %8, align 8, !dbg !173
  %52 = call i8* @xmlStrdup(i8* noundef %51), !dbg !174
  %53 = load %struct._xmlElement*, %struct._xmlElement** %11, align 8, !dbg !175
  %54 = getelementptr inbounds %struct._xmlElement, %struct._xmlElement* %53, i32 0, i32 2, !dbg !176
  store i8* %52, i8** %54, align 8, !dbg !177
  %55 = load %struct._xmlElement*, %struct._xmlElement** %11, align 8, !dbg !178
  %56 = getelementptr inbounds %struct._xmlElement, %struct._xmlElement* %55, i32 0, i32 3, !dbg !179
  store i32 0, i32* %56, align 8, !dbg !180
  br label %57, !dbg !181

57:                                               ; preds = %43, %24, %16
  %58 = load %struct._xmlElement*, %struct._xmlElement** %11, align 8, !dbg !182
  store %struct._xmlElement* %58, %struct._xmlElement** %5, align 8, !dbg !183
  br label %59, !dbg !183

59:                                               ; preds = %57, %32, %15
  %60 = load %struct._xmlElement*, %struct._xmlElement** %5, align 8, !dbg !184
  ret %struct._xmlElement* %60, !dbg !184
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !185 {
  %1 = alloca i32, align 4
  %2 = alloca [32 x i8], align 16
  %3 = alloca [32 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct._xmlElement*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [32 x i8]* %2, metadata !188, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.declare(metadata [32 x i8]* %3, metadata !193, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.declare(metadata i32* %4, metadata !195, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.declare(metadata i8** %5, metadata !197, metadata !DIExpression()), !dbg !198
  %7 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0, !dbg !199
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 32, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)), !dbg !200
  %8 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0, !dbg !201
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 32, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !202
  %9 = bitcast i32* %4 to i8*, !dbg !203
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)), !dbg !204
  %10 = bitcast i8** %5 to i8*, !dbg !205
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)), !dbg !206
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 31, !dbg !207
  %12 = load i8, i8* %11, align 1, !dbg !207
  %13 = sext i8 %12 to i32, !dbg !207
  %14 = icmp eq i32 %13, 0, !dbg !208
  %15 = zext i1 %14 to i32, !dbg !208
  %16 = sext i32 %15 to i64, !dbg !207
  call void @klee_assume(i64 noundef %16), !dbg !209
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 31, !dbg !210
  %18 = load i8, i8* %17, align 1, !dbg !210
  %19 = sext i8 %18 to i32, !dbg !210
  %20 = icmp eq i32 %19, 0, !dbg !211
  %21 = zext i1 %20 to i32, !dbg !211
  %22 = sext i32 %21 to i64, !dbg !210
  call void @klee_assume(i64 noundef %22), !dbg !212
  %23 = load i32, i32* %4, align 4, !dbg !213
  %24 = icmp ne i32 %23, 0, !dbg !214
  %25 = zext i1 %24 to i32, !dbg !214
  %26 = sext i32 %25 to i64, !dbg !213
  call void @klee_assume(i64 noundef %26), !dbg !215
  call void @llvm.dbg.declare(metadata %struct._xmlElement** %6, metadata !216, metadata !DIExpression()), !dbg !217
  %27 = load i8*, i8** %5, align 8, !dbg !218
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0, !dbg !219
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0, !dbg !220
  %30 = load i32, i32* %4, align 4, !dbg !221
  %31 = call %struct._xmlElement* @xmlAddElementDecl(i8* noundef %27, i8* noundef %28, i8* noundef %29, i32 noundef %30), !dbg !222
  store %struct._xmlElement* %31, %struct._xmlElement** %6, align 8, !dbg !217
  %32 = load %struct._xmlElement*, %struct._xmlElement** %6, align 8, !dbg !223
  %33 = icmp ne %struct._xmlElement* %32, null, !dbg !225
  br i1 %33, label %34, label %55, !dbg !226

34:                                               ; preds = %0
  %35 = load %struct._xmlElement*, %struct._xmlElement** %6, align 8, !dbg !227
  %36 = getelementptr inbounds %struct._xmlElement, %struct._xmlElement* %35, i32 0, i32 1, !dbg !230
  %37 = load i8*, i8** %36, align 8, !dbg !230
  %38 = icmp ne i8* %37, null, !dbg !231
  br i1 %38, label %39, label %43, !dbg !232

39:                                               ; preds = %34
  %40 = load %struct._xmlElement*, %struct._xmlElement** %6, align 8, !dbg !233
  %41 = getelementptr inbounds %struct._xmlElement, %struct._xmlElement* %40, i32 0, i32 1, !dbg !234
  %42 = load i8*, i8** %41, align 8, !dbg !234
  call void @free(i8* noundef %42) #8, !dbg !235
  br label %43, !dbg !235

43:                                               ; preds = %39, %34
  %44 = load %struct._xmlElement*, %struct._xmlElement** %6, align 8, !dbg !236
  %45 = getelementptr inbounds %struct._xmlElement, %struct._xmlElement* %44, i32 0, i32 2, !dbg !238
  %46 = load i8*, i8** %45, align 8, !dbg !238
  %47 = icmp ne i8* %46, null, !dbg !239
  br i1 %47, label %48, label %52, !dbg !240

48:                                               ; preds = %43
  %49 = load %struct._xmlElement*, %struct._xmlElement** %6, align 8, !dbg !241
  %50 = getelementptr inbounds %struct._xmlElement, %struct._xmlElement* %49, i32 0, i32 2, !dbg !242
  %51 = load i8*, i8** %50, align 8, !dbg !242
  call void @free(i8* noundef %51) #8, !dbg !243
  br label %52, !dbg !243

52:                                               ; preds = %48, %43
  %53 = load %struct._xmlElement*, %struct._xmlElement** %6, align 8, !dbg !244
  %54 = bitcast %struct._xmlElement* %53 to i8*, !dbg !244
  call void @free(i8* noundef %54) #8, !dbg !245
  br label %55, !dbg !246

55:                                               ; preds = %52, %0
  ret i32 0, !dbg !247
}

declare void @klee_assume(i64 noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !248 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !252, metadata !DIExpression()), !dbg !253
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !254, metadata !DIExpression()), !dbg !255
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !256, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i8** %7, metadata !258, metadata !DIExpression()), !dbg !259
  %8 = load i8*, i8** %4, align 8, !dbg !260
  store i8* %8, i8** %7, align 8, !dbg !259
  br label %9, !dbg !261

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !262
  %11 = add i64 %10, -1, !dbg !262
  store i64 %11, i64* %6, align 8, !dbg !262
  %12 = icmp ugt i64 %10, 0, !dbg !263
  br i1 %12, label %13, label %18, !dbg !261

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !264
  %15 = trunc i32 %14 to i8, !dbg !264
  %16 = load i8*, i8** %7, align 8, !dbg !265
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !265
  store i8* %17, i8** %7, align 8, !dbg !265
  store i8 %15, i8* %16, align 1, !dbg !266
  br label %9, !dbg !261, !llvm.loop !267

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !268
  ret i8* %19, !dbg !269
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25, !25}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/230_valid.c_3329_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "92b8644fb899d654a5e7db4e7bfa418d")
!2 = !{!3, !4, !6}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementPtr", file: !1, line: 11, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElement", file: !1, line: 10, baseType: !9)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlElement", file: !1, line: 13, size: 256, elements: !10)
!10 = !{!11, !13, !14, !15}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !9, file: !1, line: 14, baseType: !12, size: 32)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !9, file: !1, line: 15, baseType: !3, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !9, file: !1, line: 16, baseType: !3, size: 64, offset: 128)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "etype", scope: !9, file: !1, line: 17, baseType: !12, size: 32, offset: 192)
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !17, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!18 = !{i32 7, !"Dwarf Version", i32 5}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{i32 7, !"PIC Level", i32 2}
!22 = !{i32 7, !"PIE Level", i32 2}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"Ubuntu clang version 14.0.6"}
!26 = distinct !DISubprogram(name: "xmlHashLookup2", scope: !1, file: !1, line: 21, type: !27, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!27 = !DISubroutineType(types: !28)
!28 = !{!3, !3, !29, !29}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!31 = !{}
!32 = !DILocalVariable(name: "table", arg: 1, scope: !26, file: !1, line: 21, type: !3)
!33 = !DILocation(line: 21, column: 28, scope: !26)
!34 = !DILocalVariable(name: "name", arg: 2, scope: !26, file: !1, line: 21, type: !29)
!35 = !DILocation(line: 21, column: 47, scope: !26)
!36 = !DILocalVariable(name: "prefix", arg: 3, scope: !26, file: !1, line: 21, type: !29)
!37 = !DILocation(line: 21, column: 65, scope: !26)
!38 = !DILocation(line: 22, column: 5, scope: !26)
!39 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 26, type: !40, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!40 = !DISubroutineType(types: !41)
!41 = !{!3, !42}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !43, line: 46, baseType: !44)
!43 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!44 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!45 = !DILocalVariable(name: "size", arg: 1, scope: !39, file: !1, line: 26, type: !42)
!46 = !DILocation(line: 26, column: 24, scope: !39)
!47 = !DILocalVariable(name: "ptr", scope: !39, file: !1, line: 27, type: !3)
!48 = !DILocation(line: 27, column: 11, scope: !39)
!49 = !DILocation(line: 27, column: 24, scope: !39)
!50 = !DILocation(line: 27, column: 17, scope: !39)
!51 = !DILocation(line: 28, column: 24, scope: !39)
!52 = !DILocation(line: 28, column: 29, scope: !39)
!53 = !DILocation(line: 28, column: 5, scope: !39)
!54 = !DILocation(line: 29, column: 12, scope: !39)
!55 = !DILocation(line: 29, column: 5, scope: !39)
!56 = distinct !DISubprogram(name: "xmlStrdup", scope: !1, file: !1, line: 33, type: !57, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!57 = !DISubroutineType(types: !58)
!58 = !{!4, !29}
!59 = !DILocalVariable(name: "cur", arg: 1, scope: !56, file: !1, line: 33, type: !29)
!60 = !DILocation(line: 33, column: 29, scope: !56)
!61 = !DILocation(line: 34, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !56, file: !1, line: 34, column: 9)
!63 = !DILocation(line: 34, column: 13, scope: !62)
!64 = !DILocation(line: 34, column: 9, scope: !56)
!65 = !DILocation(line: 34, column: 22, scope: !62)
!66 = !DILocalVariable(name: "len", scope: !56, file: !1, line: 35, type: !42)
!67 = !DILocation(line: 35, column: 12, scope: !56)
!68 = !DILocation(line: 35, column: 25, scope: !56)
!69 = !DILocation(line: 35, column: 18, scope: !56)
!70 = !DILocation(line: 35, column: 30, scope: !56)
!71 = !DILocalVariable(name: "dup", scope: !56, file: !1, line: 36, type: !4)
!72 = !DILocation(line: 36, column: 11, scope: !56)
!73 = !DILocation(line: 36, column: 31, scope: !56)
!74 = !DILocation(line: 36, column: 24, scope: !56)
!75 = !DILocation(line: 37, column: 24, scope: !56)
!76 = !DILocation(line: 37, column: 29, scope: !56)
!77 = !DILocation(line: 37, column: 5, scope: !56)
!78 = !DILocalVariable(name: "i", scope: !79, file: !1, line: 38, type: !42)
!79 = distinct !DILexicalBlock(scope: !56, file: !1, line: 38, column: 5)
!80 = !DILocation(line: 38, column: 17, scope: !79)
!81 = !DILocation(line: 38, column: 10, scope: !79)
!82 = !DILocation(line: 38, column: 24, scope: !83)
!83 = distinct !DILexicalBlock(scope: !79, file: !1, line: 38, column: 5)
!84 = !DILocation(line: 38, column: 28, scope: !83)
!85 = !DILocation(line: 38, column: 32, scope: !83)
!86 = !DILocation(line: 38, column: 26, scope: !83)
!87 = !DILocation(line: 38, column: 5, scope: !79)
!88 = !DILocation(line: 39, column: 18, scope: !89)
!89 = distinct !DILexicalBlock(scope: !83, file: !1, line: 38, column: 42)
!90 = !DILocation(line: 39, column: 22, scope: !89)
!91 = !DILocation(line: 39, column: 9, scope: !89)
!92 = !DILocation(line: 39, column: 13, scope: !89)
!93 = !DILocation(line: 39, column: 16, scope: !89)
!94 = !DILocation(line: 40, column: 5, scope: !89)
!95 = !DILocation(line: 38, column: 38, scope: !83)
!96 = !DILocation(line: 38, column: 5, scope: !83)
!97 = distinct !{!97, !87, !98, !99}
!98 = !DILocation(line: 40, column: 5, scope: !79)
!99 = !{!"llvm.loop.mustprogress"}
!100 = !DILocation(line: 41, column: 5, scope: !56)
!101 = !DILocation(line: 41, column: 9, scope: !56)
!102 = !DILocation(line: 41, column: 13, scope: !56)
!103 = !DILocation(line: 41, column: 18, scope: !56)
!104 = !DILocation(line: 42, column: 12, scope: !56)
!105 = !DILocation(line: 42, column: 5, scope: !56)
!106 = !DILocation(line: 43, column: 1, scope: !56)
!107 = distinct !DISubprogram(name: "xmlVErrMemory", scope: !1, file: !1, line: 46, type: !108, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !3, !29}
!110 = !DILocalVariable(name: "ctxt", arg: 1, scope: !107, file: !1, line: 46, type: !3)
!111 = !DILocation(line: 46, column: 26, scope: !107)
!112 = !DILocalVariable(name: "msg", arg: 2, scope: !107, file: !1, line: 46, type: !29)
!113 = !DILocation(line: 46, column: 44, scope: !107)
!114 = !DILocation(line: 47, column: 11, scope: !107)
!115 = !DILocation(line: 48, column: 11, scope: !107)
!116 = !DILocation(line: 49, column: 1, scope: !107)
!117 = distinct !DISubprogram(name: "xmlAddElementDecl", scope: !1, file: !1, line: 52, type: !118, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!118 = !DISubroutineType(types: !119)
!119 = !{!6, !3, !29, !29, !12}
!120 = !DILocalVariable(name: "table", arg: 1, scope: !117, file: !1, line: 52, type: !3)
!121 = !DILocation(line: 52, column: 39, scope: !117)
!122 = !DILocalVariable(name: "name", arg: 2, scope: !117, file: !1, line: 52, type: !29)
!123 = !DILocation(line: 52, column: 58, scope: !117)
!124 = !DILocalVariable(name: "prefix", arg: 3, scope: !117, file: !1, line: 52, type: !29)
!125 = !DILocation(line: 52, column: 76, scope: !117)
!126 = !DILocalVariable(name: "create", arg: 4, scope: !117, file: !1, line: 52, type: !12)
!127 = !DILocation(line: 52, column: 88, scope: !117)
!128 = !DILocalVariable(name: "uqname", scope: !117, file: !1, line: 53, type: !29)
!129 = !DILocation(line: 53, column: 17, scope: !117)
!130 = !DILocation(line: 53, column: 26, scope: !117)
!131 = !DILocalVariable(name: "cur", scope: !117, file: !1, line: 54, type: !6)
!132 = !DILocation(line: 54, column: 19, scope: !117)
!133 = !DILocation(line: 56, column: 9, scope: !134)
!134 = distinct !DILexicalBlock(scope: !117, file: !1, line: 56, column: 9)
!135 = !DILocation(line: 56, column: 14, scope: !134)
!136 = !DILocation(line: 56, column: 9, scope: !117)
!137 = !DILocation(line: 57, column: 9, scope: !134)
!138 = !DILocation(line: 59, column: 26, scope: !117)
!139 = !DILocation(line: 59, column: 33, scope: !117)
!140 = !DILocation(line: 59, column: 39, scope: !117)
!141 = !DILocation(line: 59, column: 11, scope: !117)
!142 = !DILocation(line: 59, column: 9, scope: !117)
!143 = !DILocation(line: 60, column: 10, scope: !144)
!144 = distinct !DILexicalBlock(scope: !117, file: !1, line: 60, column: 9)
!145 = !DILocation(line: 60, column: 14, scope: !144)
!146 = !DILocation(line: 60, column: 23, scope: !144)
!147 = !DILocation(line: 60, column: 27, scope: !144)
!148 = !DILocation(line: 60, column: 26, scope: !144)
!149 = !DILocation(line: 60, column: 9, scope: !117)
!150 = !DILocation(line: 61, column: 31, scope: !151)
!151 = distinct !DILexicalBlock(scope: !144, file: !1, line: 60, column: 36)
!152 = !DILocation(line: 61, column: 15, scope: !151)
!153 = !DILocation(line: 61, column: 13, scope: !151)
!154 = !DILocation(line: 62, column: 13, scope: !155)
!155 = distinct !DILexicalBlock(scope: !151, file: !1, line: 62, column: 13)
!156 = !DILocation(line: 62, column: 17, scope: !155)
!157 = !DILocation(line: 62, column: 13, scope: !151)
!158 = !DILocation(line: 63, column: 13, scope: !159)
!159 = distinct !DILexicalBlock(scope: !155, file: !1, line: 62, column: 26)
!160 = !DILocation(line: 64, column: 13, scope: !159)
!161 = !DILocation(line: 67, column: 16, scope: !151)
!162 = !DILocation(line: 67, column: 9, scope: !151)
!163 = !DILocation(line: 70, column: 9, scope: !151)
!164 = !DILocation(line: 73, column: 9, scope: !151)
!165 = !DILocation(line: 75, column: 9, scope: !151)
!166 = !DILocation(line: 75, column: 14, scope: !151)
!167 = !DILocation(line: 75, column: 19, scope: !151)
!168 = !DILocation(line: 76, column: 31, scope: !151)
!169 = !DILocation(line: 76, column: 21, scope: !151)
!170 = !DILocation(line: 76, column: 9, scope: !151)
!171 = !DILocation(line: 76, column: 14, scope: !151)
!172 = !DILocation(line: 76, column: 19, scope: !151)
!173 = !DILocation(line: 77, column: 33, scope: !151)
!174 = !DILocation(line: 77, column: 23, scope: !151)
!175 = !DILocation(line: 77, column: 9, scope: !151)
!176 = !DILocation(line: 77, column: 14, scope: !151)
!177 = !DILocation(line: 77, column: 21, scope: !151)
!178 = !DILocation(line: 78, column: 9, scope: !151)
!179 = !DILocation(line: 78, column: 14, scope: !151)
!180 = !DILocation(line: 78, column: 20, scope: !151)
!181 = !DILocation(line: 79, column: 5, scope: !151)
!182 = !DILocation(line: 80, column: 12, scope: !117)
!183 = !DILocation(line: 80, column: 5, scope: !117)
!184 = !DILocation(line: 81, column: 1, scope: !117)
!185 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 83, type: !186, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!186 = !DISubroutineType(types: !187)
!187 = !{!12}
!188 = !DILocalVariable(name: "name", scope: !185, file: !1, line: 85, type: !189)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 256, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 32)
!192 = !DILocation(line: 85, column: 10, scope: !185)
!193 = !DILocalVariable(name: "prefix", scope: !185, file: !1, line: 86, type: !189)
!194 = !DILocation(line: 86, column: 10, scope: !185)
!195 = !DILocalVariable(name: "create", scope: !185, file: !1, line: 87, type: !12)
!196 = !DILocation(line: 87, column: 9, scope: !185)
!197 = !DILocalVariable(name: "table", scope: !185, file: !1, line: 88, type: !3)
!198 = !DILocation(line: 88, column: 11, scope: !185)
!199 = !DILocation(line: 90, column: 24, scope: !185)
!200 = !DILocation(line: 90, column: 5, scope: !185)
!201 = !DILocation(line: 91, column: 24, scope: !185)
!202 = !DILocation(line: 91, column: 5, scope: !185)
!203 = !DILocation(line: 92, column: 24, scope: !185)
!204 = !DILocation(line: 92, column: 5, scope: !185)
!205 = !DILocation(line: 93, column: 24, scope: !185)
!206 = !DILocation(line: 93, column: 5, scope: !185)
!207 = !DILocation(line: 96, column: 17, scope: !185)
!208 = !DILocation(line: 96, column: 26, scope: !185)
!209 = !DILocation(line: 96, column: 5, scope: !185)
!210 = !DILocation(line: 97, column: 17, scope: !185)
!211 = !DILocation(line: 97, column: 28, scope: !185)
!212 = !DILocation(line: 97, column: 5, scope: !185)
!213 = !DILocation(line: 100, column: 17, scope: !185)
!214 = !DILocation(line: 100, column: 24, scope: !185)
!215 = !DILocation(line: 100, column: 5, scope: !185)
!216 = !DILocalVariable(name: "result", scope: !185, file: !1, line: 103, type: !6)
!217 = !DILocation(line: 103, column: 19, scope: !185)
!218 = !DILocation(line: 103, column: 46, scope: !185)
!219 = !DILocation(line: 103, column: 53, scope: !185)
!220 = !DILocation(line: 103, column: 59, scope: !185)
!221 = !DILocation(line: 103, column: 67, scope: !185)
!222 = !DILocation(line: 103, column: 28, scope: !185)
!223 = !DILocation(line: 106, column: 9, scope: !224)
!224 = distinct !DILexicalBlock(scope: !185, file: !1, line: 106, column: 9)
!225 = !DILocation(line: 106, column: 16, scope: !224)
!226 = !DILocation(line: 106, column: 9, scope: !185)
!227 = !DILocation(line: 107, column: 13, scope: !228)
!228 = distinct !DILexicalBlock(scope: !229, file: !1, line: 107, column: 13)
!229 = distinct !DILexicalBlock(scope: !224, file: !1, line: 106, column: 25)
!230 = !DILocation(line: 107, column: 21, scope: !228)
!231 = !DILocation(line: 107, column: 26, scope: !228)
!232 = !DILocation(line: 107, column: 13, scope: !229)
!233 = !DILocation(line: 107, column: 40, scope: !228)
!234 = !DILocation(line: 107, column: 48, scope: !228)
!235 = !DILocation(line: 107, column: 35, scope: !228)
!236 = !DILocation(line: 108, column: 13, scope: !237)
!237 = distinct !DILexicalBlock(scope: !229, file: !1, line: 108, column: 13)
!238 = !DILocation(line: 108, column: 21, scope: !237)
!239 = !DILocation(line: 108, column: 28, scope: !237)
!240 = !DILocation(line: 108, column: 13, scope: !229)
!241 = !DILocation(line: 108, column: 42, scope: !237)
!242 = !DILocation(line: 108, column: 50, scope: !237)
!243 = !DILocation(line: 108, column: 37, scope: !237)
!244 = !DILocation(line: 109, column: 14, scope: !229)
!245 = !DILocation(line: 109, column: 9, scope: !229)
!246 = !DILocation(line: 110, column: 5, scope: !229)
!247 = !DILocation(line: 112, column: 5, scope: !185)
!248 = distinct !DISubprogram(name: "memset", scope: !249, file: !249, line: 12, type: !250, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !31)
!249 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!250 = !DISubroutineType(types: !251)
!251 = !{!3, !3, !12, !42}
!252 = !DILocalVariable(name: "dst", arg: 1, scope: !248, file: !249, line: 12, type: !3)
!253 = !DILocation(line: 12, column: 20, scope: !248)
!254 = !DILocalVariable(name: "s", arg: 2, scope: !248, file: !249, line: 12, type: !12)
!255 = !DILocation(line: 12, column: 29, scope: !248)
!256 = !DILocalVariable(name: "count", arg: 3, scope: !248, file: !249, line: 12, type: !42)
!257 = !DILocation(line: 12, column: 39, scope: !248)
!258 = !DILocalVariable(name: "a", scope: !248, file: !249, line: 13, type: !4)
!259 = !DILocation(line: 13, column: 9, scope: !248)
!260 = !DILocation(line: 13, column: 13, scope: !248)
!261 = !DILocation(line: 14, column: 3, scope: !248)
!262 = !DILocation(line: 14, column: 15, scope: !248)
!263 = !DILocation(line: 14, column: 18, scope: !248)
!264 = !DILocation(line: 15, column: 12, scope: !248)
!265 = !DILocation(line: 15, column: 7, scope: !248)
!266 = !DILocation(line: 15, column: 10, scope: !248)
!267 = distinct !{!267, !261, !264, !99}
!268 = !DILocation(line: 16, column: 10, scope: !248)
!269 = !DILocation(line: 16, column: 3, scope: !248)

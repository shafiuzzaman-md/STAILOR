; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/276_valid.c_854_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/276_valid.c_854_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDict = type opaque
%struct._xmlElementContent = type { i32, i32, i8*, %struct._xmlElementContent*, %struct._xmlElementContent*, i8* }

@.str = private unnamed_addr constant [19 x i8] c"dict_lookup_result\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"cur_type\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"cur_ocur\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"name_buf\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"dict\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.7 = private unnamed_addr constant [76 x i8] c"(ret != ((void*)0) && sizeof(xmlElementContent) > 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.8 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/276_valid.c_854_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlCopyElementContent = private unnamed_addr constant [77 x i8] c"xmlElementContentPtr xmlCopyElementContent(xmlElementContentPtr, xmlDictPtr)\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlVErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !29 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !33, metadata !DIExpression()), !dbg !34
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !35, metadata !DIExpression()), !dbg !36
  ret void, !dbg !37
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !38 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !44, metadata !DIExpression()), !dbg !45
  %3 = load i64, i64* %2, align 8, !dbg !46
  %4 = call noalias i8* @malloc(i64 noundef %3) #8, !dbg !47
  ret i8* %4, !dbg !48
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlDictLookup(%struct._xmlDict* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !49 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._xmlDict*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct._xmlDict* %0, %struct._xmlDict** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDict** %5, metadata !56, metadata !DIExpression()), !dbg !57
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !58, metadata !DIExpression()), !dbg !59
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !60, metadata !DIExpression()), !dbg !61
  %9 = load i8*, i8** %6, align 8, !dbg !62
  %10 = icmp eq i8* %9, null, !dbg !64
  br i1 %10, label %11, label %12, !dbg !65

11:                                               ; preds = %3
  store i8* null, i8** %4, align 8, !dbg !66
  br label %37, !dbg !66

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4, !dbg !67
  %14 = icmp eq i32 %13, -1, !dbg !69
  br i1 %14, label %15, label %19, !dbg !70

15:                                               ; preds = %12
  %16 = load i8*, i8** %6, align 8, !dbg !71
  %17 = call i64 @strlen(i8* noundef %16) #9, !dbg !72
  %18 = trunc i64 %17 to i32, !dbg !72
  store i32 %18, i32* %7, align 4, !dbg !73
  br label %19, !dbg !74

19:                                               ; preds = %15, %12
  call void @llvm.dbg.declare(metadata i8** %8, metadata !75, metadata !DIExpression()), !dbg !77
  %20 = load i32, i32* %7, align 4, !dbg !78
  %21 = add nsw i32 %20, 1, !dbg !79
  %22 = sext i32 %21 to i64, !dbg !78
  %23 = call noalias i8* @malloc(i64 noundef %22) #8, !dbg !80
  store i8* %23, i8** %8, align 8, !dbg !77
  %24 = load i8*, i8** %8, align 8, !dbg !81
  %25 = icmp ne i8* %24, null, !dbg !81
  br i1 %25, label %26, label %35, !dbg !83

26:                                               ; preds = %19
  %27 = load i8*, i8** %8, align 8, !dbg !84
  %28 = load i32, i32* %7, align 4, !dbg !86
  %29 = add nsw i32 %28, 1, !dbg !87
  %30 = sext i32 %29 to i64, !dbg !86
  call void @klee_make_symbolic(i8* noundef %27, i64 noundef %30, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)), !dbg !88
  %31 = load i8*, i8** %8, align 8, !dbg !89
  %32 = load i32, i32* %7, align 4, !dbg !90
  %33 = sext i32 %32 to i64, !dbg !89
  %34 = getelementptr inbounds i8, i8* %31, i64 %33, !dbg !89
  store i8 0, i8* %34, align 1, !dbg !91
  br label %35, !dbg !92

35:                                               ; preds = %26, %19
  %36 = load i8*, i8** %8, align 8, !dbg !93
  store i8* %36, i8** %4, align 8, !dbg !94
  br label %37, !dbg !94

37:                                               ; preds = %35, %11
  %38 = load i8*, i8** %4, align 8, !dbg !95
  ret i8* %38, !dbg !95
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !96 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlElementContent, align 8
  %3 = alloca %struct._xmlDict*, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca %struct._xmlElementContent*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent* %2, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata %struct._xmlDict** %3, metadata !101, metadata !DIExpression()), !dbg !102
  %6 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %2, i32 0, i32 0, !dbg !103
  %7 = bitcast i32* %6 to i8*, !dbg !104
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !105
  %8 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %2, i32 0, i32 1, !dbg !106
  %9 = bitcast i32* %8 to i8*, !dbg !107
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !108
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !109, metadata !DIExpression()), !dbg !113
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !114
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !115
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !116
  %12 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %2, i32 0, i32 2, !dbg !117
  store i8* %11, i8** %12, align 8, !dbg !118
  %13 = bitcast %struct._xmlDict** %3 to i8*, !dbg !119
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !dbg !120
  %14 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %2, i32 0, i32 0, !dbg !121
  %15 = load i32, i32* %14, align 8, !dbg !121
  %16 = icmp sge i32 %15, 0, !dbg !122
  br i1 %16, label %17, label %21, !dbg !123

17:                                               ; preds = %0
  %18 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %2, i32 0, i32 0, !dbg !124
  %19 = load i32, i32* %18, align 8, !dbg !124
  %20 = icmp sle i32 %19, 10, !dbg !125
  br label %21

21:                                               ; preds = %17, %0
  %22 = phi i1 [ false, %0 ], [ %20, %17 ], !dbg !126
  %23 = zext i1 %22 to i32, !dbg !123
  %24 = sext i32 %23 to i64, !dbg !127
  call void @klee_assume(i64 noundef %24), !dbg !128
  %25 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %2, i32 0, i32 1, !dbg !129
  %26 = load i32, i32* %25, align 4, !dbg !129
  %27 = icmp sge i32 %26, 0, !dbg !130
  br i1 %27, label %28, label %32, !dbg !131

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %2, i32 0, i32 1, !dbg !132
  %30 = load i32, i32* %29, align 4, !dbg !132
  %31 = icmp sle i32 %30, 10, !dbg !133
  br label %32

32:                                               ; preds = %28, %21
  %33 = phi i1 [ false, %21 ], [ %31, %28 ], !dbg !126
  %34 = zext i1 %33 to i32, !dbg !131
  %35 = sext i32 %34 to i64, !dbg !134
  call void @klee_assume(i64 noundef %35), !dbg !135
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent** %5, metadata !136, metadata !DIExpression()), !dbg !137
  %36 = load %struct._xmlDict*, %struct._xmlDict** %3, align 8, !dbg !138
  %37 = call %struct._xmlElementContent* @xmlCopyElementContent(%struct._xmlElementContent* noundef %2, %struct._xmlDict* noundef %36), !dbg !139
  store %struct._xmlElementContent* %37, %struct._xmlElementContent** %5, align 8, !dbg !137
  %38 = load %struct._xmlElementContent*, %struct._xmlElementContent** %5, align 8, !dbg !140
  %39 = icmp ne %struct._xmlElementContent* %38, null, !dbg !142
  br i1 %39, label %40, label %46, !dbg !143

40:                                               ; preds = %32
  %41 = load %struct._xmlElementContent*, %struct._xmlElementContent** %5, align 8, !dbg !144
  %42 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %41, i32 0, i32 2, !dbg !146
  %43 = load i8*, i8** %42, align 8, !dbg !146
  call void @free(i8* noundef %43) #8, !dbg !147
  %44 = load %struct._xmlElementContent*, %struct._xmlElementContent** %5, align 8, !dbg !148
  %45 = bitcast %struct._xmlElementContent* %44 to i8*, !dbg !148
  call void @free(i8* noundef %45) #8, !dbg !149
  br label %46, !dbg !150

46:                                               ; preds = %40, %32
  ret i32 0, !dbg !151
}

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlElementContent* @xmlCopyElementContent(%struct._xmlElementContent* noundef %0, %struct._xmlDict* noundef %1) #0 !dbg !152 {
  %3 = alloca %struct._xmlElementContent*, align 8
  %4 = alloca %struct._xmlElementContent*, align 8
  %5 = alloca %struct._xmlDict*, align 8
  %6 = alloca %struct._xmlElementContent*, align 8
  store %struct._xmlElementContent* %0, %struct._xmlElementContent** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent** %4, metadata !155, metadata !DIExpression()), !dbg !156
  store %struct._xmlDict* %1, %struct._xmlDict** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDict** %5, metadata !157, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent** %6, metadata !159, metadata !DIExpression()), !dbg !160
  %7 = call i8* @xmlMalloc(i64 noundef 40), !dbg !161
  %8 = bitcast i8* %7 to %struct._xmlElementContent*, !dbg !162
  store %struct._xmlElementContent* %8, %struct._xmlElementContent** %6, align 8, !dbg !163
  %9 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !164
  %10 = icmp eq %struct._xmlElementContent* %9, null, !dbg !166
  br i1 %10, label %11, label %12, !dbg !167

11:                                               ; preds = %2
  call void @xmlVErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)), !dbg !168
  store %struct._xmlElementContent* null, %struct._xmlElementContent** %3, align 8, !dbg !170
  br label %64, !dbg !170

12:                                               ; preds = %2
  %13 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !171
  %14 = icmp ne %struct._xmlElementContent* %13, null, !dbg !171
  br i1 %14, label %15, label %17, !dbg !171

15:                                               ; preds = %12
  br i1 true, label %16, label %17, !dbg !171

16:                                               ; preds = %15
  br label %19, !dbg !171

17:                                               ; preds = %15, %12
  %18 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.8, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @__PRETTY_FUNCTION__.xmlCopyElementContent, i64 0, i64 0)), !dbg !171
  br label %19, !dbg !171

19:                                               ; preds = %17, %16
  %20 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.8, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @__PRETTY_FUNCTION__.xmlCopyElementContent, i64 0, i64 0)), !dbg !172
  %21 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !173
  %22 = bitcast %struct._xmlElementContent* %21 to i8*, !dbg !174
  %23 = call i8* @memset(i8* %22, i32 0, i64 40), !dbg !174
  %24 = load %struct._xmlElementContent*, %struct._xmlElementContent** %4, align 8, !dbg !175
  %25 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %24, i32 0, i32 0, !dbg !176
  %26 = load i32, i32* %25, align 8, !dbg !176
  %27 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !177
  %28 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %27, i32 0, i32 0, !dbg !178
  store i32 %26, i32* %28, align 8, !dbg !179
  %29 = load %struct._xmlElementContent*, %struct._xmlElementContent** %4, align 8, !dbg !180
  %30 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %29, i32 0, i32 1, !dbg !181
  %31 = load i32, i32* %30, align 4, !dbg !181
  %32 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !182
  %33 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %32, i32 0, i32 1, !dbg !183
  store i32 %31, i32* %33, align 4, !dbg !184
  %34 = load %struct._xmlElementContent*, %struct._xmlElementContent** %4, align 8, !dbg !185
  %35 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %34, i32 0, i32 2, !dbg !187
  %36 = load i8*, i8** %35, align 8, !dbg !187
  %37 = icmp ne i8* %36, null, !dbg !188
  br i1 %37, label %38, label %53, !dbg !189

38:                                               ; preds = %19
  %39 = load %struct._xmlDict*, %struct._xmlDict** %5, align 8, !dbg !190
  %40 = icmp ne %struct._xmlDict* %39, null, !dbg !190
  br i1 %40, label %41, label %49, !dbg !193

41:                                               ; preds = %38
  %42 = load %struct._xmlDict*, %struct._xmlDict** %5, align 8, !dbg !194
  %43 = load %struct._xmlElementContent*, %struct._xmlElementContent** %4, align 8, !dbg !195
  %44 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %43, i32 0, i32 2, !dbg !196
  %45 = load i8*, i8** %44, align 8, !dbg !196
  %46 = call i8* @xmlDictLookup(%struct._xmlDict* noundef %42, i8* noundef %45, i32 noundef -1), !dbg !197
  %47 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !198
  %48 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %47, i32 0, i32 2, !dbg !199
  store i8* %46, i8** %48, align 8, !dbg !200
  br label %52, !dbg !198

49:                                               ; preds = %38
  %50 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !201
  %51 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %50, i32 0, i32 2, !dbg !202
  store i8* null, i8** %51, align 8, !dbg !203
  br label %52

52:                                               ; preds = %49, %41
  br label %56, !dbg !204

53:                                               ; preds = %19
  %54 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !205
  %55 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %54, i32 0, i32 2, !dbg !207
  store i8* null, i8** %55, align 8, !dbg !208
  br label %56

56:                                               ; preds = %53, %52
  %57 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !209
  %58 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %57, i32 0, i32 3, !dbg !210
  store %struct._xmlElementContent* null, %struct._xmlElementContent** %58, align 8, !dbg !211
  %59 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !212
  %60 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %59, i32 0, i32 4, !dbg !213
  store %struct._xmlElementContent* null, %struct._xmlElementContent** %60, align 8, !dbg !214
  %61 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !215
  %62 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %61, i32 0, i32 5, !dbg !216
  store i8* null, i8** %62, align 8, !dbg !217
  %63 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !218
  store %struct._xmlElementContent* %63, %struct._xmlElementContent** %3, align 8, !dbg !219
  br label %64, !dbg !219

64:                                               ; preds = %56, %11
  %65 = load %struct._xmlElementContent*, %struct._xmlElementContent** %3, align 8, !dbg !220
  ret %struct._xmlElementContent* %65, !dbg !220
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !221 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !225, metadata !DIExpression()), !dbg !226
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !227, metadata !DIExpression()), !dbg !228
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !229, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.declare(metadata i8** %7, metadata !231, metadata !DIExpression()), !dbg !232
  %8 = load i8*, i8** %4, align 8, !dbg !233
  store i8* %8, i8** %7, align 8, !dbg !232
  br label %9, !dbg !234

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !235
  %11 = add i64 %10, -1, !dbg !235
  store i64 %11, i64* %6, align 8, !dbg !235
  %12 = icmp ugt i64 %10, 0, !dbg !236
  br i1 %12, label %13, label %18, !dbg !234

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !237
  %15 = trunc i32 %14 to i8, !dbg !237
  %16 = load i8*, i8** %7, align 8, !dbg !238
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !238
  store i8* %17, i8** %7, align 8, !dbg !238
  store i8 %15, i8* %16, align 1, !dbg !239
  br label %9, !dbg !234, !llvm.loop !240

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !242
  ret i8* %19, !dbg !243
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28, !28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/276_valid.c_854_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "29b44472c15a6d9a7301ae6c23136330")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentPtr", file: !1, line: 11, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContent", file: !1, line: 10, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlElementContent", file: !1, line: 13, size: 320, elements: !8)
!8 = !{!9, !11, !12, !16, !17, !18}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7, file: !1, line: 14, baseType: !10, size: 32)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "ocur", scope: !7, file: !1, line: 15, baseType: !10, size: 32, offset: 32)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !7, file: !1, line: 16, baseType: !13, size: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !7, file: !1, line: 17, baseType: !4, size: 64, offset: 128)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !7, file: !1, line: 18, baseType: !4, size: 64, offset: 192)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !7, file: !1, line: 19, baseType: !13, size: 64, offset: 256)
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
!29 = distinct !DISubprogram(name: "xmlVErrMemory", scope: !1, file: !1, line: 26, type: !30, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !3, !13}
!32 = !{}
!33 = !DILocalVariable(name: "ctxt", arg: 1, scope: !29, file: !1, line: 26, type: !3)
!34 = !DILocation(line: 26, column: 26, scope: !29)
!35 = !DILocalVariable(name: "msg", arg: 2, scope: !29, file: !1, line: 26, type: !13)
!36 = !DILocation(line: 26, column: 44, scope: !29)
!37 = !DILocation(line: 28, column: 1, scope: !29)
!38 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 30, type: !39, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!39 = !DISubroutineType(types: !40)
!40 = !{!3, !41}
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !42, line: 46, baseType: !43)
!42 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!43 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!44 = !DILocalVariable(name: "size", arg: 1, scope: !38, file: !1, line: 30, type: !41)
!45 = !DILocation(line: 30, column: 24, scope: !38)
!46 = !DILocation(line: 31, column: 19, scope: !38)
!47 = !DILocation(line: 31, column: 12, scope: !38)
!48 = !DILocation(line: 31, column: 5, scope: !38)
!49 = distinct !DISubprogram(name: "xmlDictLookup", scope: !1, file: !1, line: 34, type: !50, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!50 = !DISubroutineType(types: !51)
!51 = !{!13, !52, !13, !10}
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !1, line: 23, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !1, line: 22, baseType: !55)
!55 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !1, line: 22, flags: DIFlagFwdDecl)
!56 = !DILocalVariable(name: "dict", arg: 1, scope: !49, file: !1, line: 34, type: !52)
!57 = !DILocation(line: 34, column: 38, scope: !49)
!58 = !DILocalVariable(name: "name", arg: 2, scope: !49, file: !1, line: 34, type: !13)
!59 = !DILocation(line: 34, column: 56, scope: !49)
!60 = !DILocalVariable(name: "len", arg: 3, scope: !49, file: !1, line: 34, type: !10)
!61 = !DILocation(line: 34, column: 66, scope: !49)
!62 = !DILocation(line: 35, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !49, file: !1, line: 35, column: 9)
!64 = !DILocation(line: 35, column: 14, scope: !63)
!65 = !DILocation(line: 35, column: 9, scope: !49)
!66 = !DILocation(line: 35, column: 23, scope: !63)
!67 = !DILocation(line: 36, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !49, file: !1, line: 36, column: 9)
!69 = !DILocation(line: 36, column: 13, scope: !68)
!70 = !DILocation(line: 36, column: 9, scope: !49)
!71 = !DILocation(line: 36, column: 33, scope: !68)
!72 = !DILocation(line: 36, column: 26, scope: !68)
!73 = !DILocation(line: 36, column: 24, scope: !68)
!74 = !DILocation(line: 36, column: 20, scope: !68)
!75 = !DILocalVariable(name: "result", scope: !49, file: !1, line: 39, type: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!77 = !DILocation(line: 39, column: 11, scope: !49)
!78 = !DILocation(line: 39, column: 27, scope: !49)
!79 = !DILocation(line: 39, column: 31, scope: !49)
!80 = !DILocation(line: 39, column: 20, scope: !49)
!81 = !DILocation(line: 40, column: 9, scope: !82)
!82 = distinct !DILexicalBlock(scope: !49, file: !1, line: 40, column: 9)
!83 = !DILocation(line: 40, column: 9, scope: !49)
!84 = !DILocation(line: 41, column: 28, scope: !85)
!85 = distinct !DILexicalBlock(scope: !82, file: !1, line: 40, column: 17)
!86 = !DILocation(line: 41, column: 36, scope: !85)
!87 = !DILocation(line: 41, column: 40, scope: !85)
!88 = !DILocation(line: 41, column: 9, scope: !85)
!89 = !DILocation(line: 42, column: 9, scope: !85)
!90 = !DILocation(line: 42, column: 16, scope: !85)
!91 = !DILocation(line: 42, column: 21, scope: !85)
!92 = !DILocation(line: 43, column: 5, scope: !85)
!93 = !DILocation(line: 44, column: 12, scope: !49)
!94 = !DILocation(line: 44, column: 5, scope: !49)
!95 = !DILocation(line: 45, column: 1, scope: !49)
!96 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 51, type: !97, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!97 = !DISubroutineType(types: !98)
!98 = !{!10}
!99 = !DILocalVariable(name: "cur", scope: !96, file: !1, line: 53, type: !6)
!100 = !DILocation(line: 53, column: 23, scope: !96)
!101 = !DILocalVariable(name: "dict", scope: !96, file: !1, line: 54, type: !52)
!102 = !DILocation(line: 54, column: 16, scope: !96)
!103 = !DILocation(line: 57, column: 29, scope: !96)
!104 = !DILocation(line: 57, column: 24, scope: !96)
!105 = !DILocation(line: 57, column: 5, scope: !96)
!106 = !DILocation(line: 58, column: 29, scope: !96)
!107 = !DILocation(line: 58, column: 24, scope: !96)
!108 = !DILocation(line: 58, column: 5, scope: !96)
!109 = !DILocalVariable(name: "name_buf", scope: !96, file: !1, line: 61, type: !110)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 2048, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 256)
!113 = !DILocation(line: 61, column: 10, scope: !96)
!114 = !DILocation(line: 62, column: 24, scope: !96)
!115 = !DILocation(line: 62, column: 5, scope: !96)
!116 = !DILocation(line: 63, column: 16, scope: !96)
!117 = !DILocation(line: 63, column: 9, scope: !96)
!118 = !DILocation(line: 63, column: 14, scope: !96)
!119 = !DILocation(line: 66, column: 24, scope: !96)
!120 = !DILocation(line: 66, column: 5, scope: !96)
!121 = !DILocation(line: 69, column: 21, scope: !96)
!122 = !DILocation(line: 69, column: 26, scope: !96)
!123 = !DILocation(line: 69, column: 31, scope: !96)
!124 = !DILocation(line: 69, column: 38, scope: !96)
!125 = !DILocation(line: 69, column: 43, scope: !96)
!126 = !DILocation(line: 0, scope: !96)
!127 = !DILocation(line: 69, column: 17, scope: !96)
!128 = !DILocation(line: 69, column: 5, scope: !96)
!129 = !DILocation(line: 70, column: 21, scope: !96)
!130 = !DILocation(line: 70, column: 26, scope: !96)
!131 = !DILocation(line: 70, column: 31, scope: !96)
!132 = !DILocation(line: 70, column: 38, scope: !96)
!133 = !DILocation(line: 70, column: 43, scope: !96)
!134 = !DILocation(line: 70, column: 17, scope: !96)
!135 = !DILocation(line: 70, column: 5, scope: !96)
!136 = !DILocalVariable(name: "ret", scope: !96, file: !1, line: 73, type: !4)
!137 = !DILocation(line: 73, column: 26, scope: !96)
!138 = !DILocation(line: 73, column: 60, scope: !96)
!139 = !DILocation(line: 73, column: 32, scope: !96)
!140 = !DILocation(line: 76, column: 9, scope: !141)
!141 = distinct !DILexicalBlock(scope: !96, file: !1, line: 76, column: 9)
!142 = !DILocation(line: 76, column: 13, scope: !141)
!143 = !DILocation(line: 76, column: 9, scope: !96)
!144 = !DILocation(line: 77, column: 21, scope: !145)
!145 = distinct !DILexicalBlock(scope: !141, file: !1, line: 76, column: 22)
!146 = !DILocation(line: 77, column: 26, scope: !145)
!147 = !DILocation(line: 77, column: 9, scope: !145)
!148 = !DILocation(line: 78, column: 14, scope: !145)
!149 = !DILocation(line: 78, column: 9, scope: !145)
!150 = !DILocation(line: 79, column: 5, scope: !145)
!151 = !DILocation(line: 81, column: 5, scope: !96)
!152 = distinct !DISubprogram(name: "xmlCopyElementContent", scope: !1, file: !1, line: 85, type: !153, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!153 = !DISubroutineType(types: !154)
!154 = !{!4, !4, !52}
!155 = !DILocalVariable(name: "cur", arg: 1, scope: !152, file: !1, line: 85, type: !4)
!156 = !DILocation(line: 85, column: 65, scope: !152)
!157 = !DILocalVariable(name: "dict", arg: 2, scope: !152, file: !1, line: 85, type: !52)
!158 = !DILocation(line: 85, column: 81, scope: !152)
!159 = !DILocalVariable(name: "ret", scope: !152, file: !1, line: 86, type: !4)
!160 = !DILocation(line: 86, column: 26, scope: !152)
!161 = !DILocation(line: 89, column: 34, scope: !152)
!162 = !DILocation(line: 89, column: 11, scope: !152)
!163 = !DILocation(line: 89, column: 9, scope: !152)
!164 = !DILocation(line: 90, column: 9, scope: !165)
!165 = distinct !DILexicalBlock(scope: !152, file: !1, line: 90, column: 9)
!166 = !DILocation(line: 90, column: 13, scope: !165)
!167 = !DILocation(line: 90, column: 9, scope: !152)
!168 = !DILocation(line: 91, column: 9, scope: !169)
!169 = distinct !DILexicalBlock(scope: !165, file: !1, line: 90, column: 22)
!170 = !DILocation(line: 92, column: 9, scope: !169)
!171 = !DILocation(line: 99, column: 5, scope: !152)
!172 = !DILocation(line: 102, column: 5, scope: !152)
!173 = !DILocation(line: 104, column: 12, scope: !152)
!174 = !DILocation(line: 104, column: 5, scope: !152)
!175 = !DILocation(line: 105, column: 17, scope: !152)
!176 = !DILocation(line: 105, column: 22, scope: !152)
!177 = !DILocation(line: 105, column: 5, scope: !152)
!178 = !DILocation(line: 105, column: 10, scope: !152)
!179 = !DILocation(line: 105, column: 15, scope: !152)
!180 = !DILocation(line: 106, column: 17, scope: !152)
!181 = !DILocation(line: 106, column: 22, scope: !152)
!182 = !DILocation(line: 106, column: 5, scope: !152)
!183 = !DILocation(line: 106, column: 10, scope: !152)
!184 = !DILocation(line: 106, column: 15, scope: !152)
!185 = !DILocation(line: 108, column: 9, scope: !186)
!186 = distinct !DILexicalBlock(scope: !152, file: !1, line: 108, column: 9)
!187 = !DILocation(line: 108, column: 14, scope: !186)
!188 = !DILocation(line: 108, column: 19, scope: !186)
!189 = !DILocation(line: 108, column: 9, scope: !152)
!190 = !DILocation(line: 109, column: 13, scope: !191)
!191 = distinct !DILexicalBlock(scope: !192, file: !1, line: 109, column: 13)
!192 = distinct !DILexicalBlock(scope: !186, file: !1, line: 108, column: 28)
!193 = !DILocation(line: 109, column: 13, scope: !192)
!194 = !DILocation(line: 110, column: 39, scope: !191)
!195 = !DILocation(line: 110, column: 45, scope: !191)
!196 = !DILocation(line: 110, column: 50, scope: !191)
!197 = !DILocation(line: 110, column: 25, scope: !191)
!198 = !DILocation(line: 110, column: 13, scope: !191)
!199 = !DILocation(line: 110, column: 18, scope: !191)
!200 = !DILocation(line: 110, column: 23, scope: !191)
!201 = !DILocation(line: 112, column: 13, scope: !191)
!202 = !DILocation(line: 112, column: 18, scope: !191)
!203 = !DILocation(line: 112, column: 23, scope: !191)
!204 = !DILocation(line: 113, column: 5, scope: !192)
!205 = !DILocation(line: 114, column: 9, scope: !206)
!206 = distinct !DILexicalBlock(scope: !186, file: !1, line: 113, column: 12)
!207 = !DILocation(line: 114, column: 14, scope: !206)
!208 = !DILocation(line: 114, column: 19, scope: !206)
!209 = !DILocation(line: 118, column: 5, scope: !152)
!210 = !DILocation(line: 118, column: 10, scope: !152)
!211 = !DILocation(line: 118, column: 13, scope: !152)
!212 = !DILocation(line: 119, column: 5, scope: !152)
!213 = !DILocation(line: 119, column: 10, scope: !152)
!214 = !DILocation(line: 119, column: 13, scope: !152)
!215 = !DILocation(line: 120, column: 5, scope: !152)
!216 = !DILocation(line: 120, column: 10, scope: !152)
!217 = !DILocation(line: 120, column: 17, scope: !152)
!218 = !DILocation(line: 122, column: 12, scope: !152)
!219 = !DILocation(line: 122, column: 5, scope: !152)
!220 = !DILocation(line: 123, column: 1, scope: !152)
!221 = distinct !DISubprogram(name: "memset", scope: !222, file: !222, line: 12, type: !223, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !32)
!222 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!223 = !DISubroutineType(types: !224)
!224 = !{!3, !3, !10, !41}
!225 = !DILocalVariable(name: "dst", arg: 1, scope: !221, file: !222, line: 12, type: !3)
!226 = !DILocation(line: 12, column: 20, scope: !221)
!227 = !DILocalVariable(name: "s", arg: 2, scope: !221, file: !222, line: 12, type: !10)
!228 = !DILocation(line: 12, column: 29, scope: !221)
!229 = !DILocalVariable(name: "count", arg: 3, scope: !221, file: !222, line: 12, type: !41)
!230 = !DILocation(line: 12, column: 39, scope: !221)
!231 = !DILocalVariable(name: "a", scope: !221, file: !222, line: 13, type: !76)
!232 = !DILocation(line: 13, column: 9, scope: !221)
!233 = !DILocation(line: 13, column: 13, scope: !221)
!234 = !DILocation(line: 14, column: 3, scope: !221)
!235 = !DILocation(line: 14, column: 15, scope: !221)
!236 = !DILocation(line: 14, column: 18, scope: !221)
!237 = !DILocation(line: 15, column: 12, scope: !221)
!238 = !DILocation(line: 15, column: 7, scope: !221)
!239 = !DILocation(line: 15, column: 10, scope: !221)
!240 = distinct !{!240, !234, !237, !241}
!241 = !{!"llvm.loop.mustprogress"}
!242 = !DILocation(line: 16, column: 10, scope: !221)
!243 = !DILocation(line: 16, column: 3, scope: !221)

; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/248_valid.c_1555_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/248_valid.c_1555_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlValidCtxt = type {}
%struct._xmlElement = type { i32, i8* }

@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"(ret != ((void*)0) && sizeof(xmlElement) > 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_55980_vul/248_valid.c_1555_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlNewElementDecl = private unnamed_addr constant [88 x i8] c"xmlElement *xmlNewElementDecl(xmlValidCtxt *, const char *, const char *, const char *)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"uqname\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"ns\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"uqname_flag\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"ns_flag\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"/home/shafi/tools/klee/runtime/Intrinsic/klee_range.c\00", align 1
@.str.1.11 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str.2.12 = private unnamed_addr constant [5 x i8] c"user\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlVErrMemory(%struct._xmlValidCtxt* noundef %0, i8* noundef %1) #0 !dbg !20 {
  %3 = alloca %struct._xmlValidCtxt*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlValidCtxt* %0, %struct._xmlValidCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlValidCtxt** %3, metadata !30, metadata !DIExpression()), !dbg !31
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !32, metadata !DIExpression()), !dbg !33
  ret void, !dbg !34
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !35 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !39, metadata !DIExpression()), !dbg !40
  %6 = load i8*, i8** %3, align 8, !dbg !41
  %7 = icmp eq i8* %6, null, !dbg !43
  br i1 %7, label %8, label %9, !dbg !44

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !45
  br label %24, !dbg !45

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !46, metadata !DIExpression()), !dbg !50
  %10 = load i8*, i8** %3, align 8, !dbg !51
  %11 = call i64 @strlen(i8* noundef %10) #9, !dbg !52
  %12 = add i64 %11, 1, !dbg !53
  store i64 %12, i64* %4, align 8, !dbg !50
  call void @llvm.dbg.declare(metadata i8** %5, metadata !54, metadata !DIExpression()), !dbg !55
  %13 = load i64, i64* %4, align 8, !dbg !56
  %14 = call noalias i8* @malloc(i64 noundef %13) #10, !dbg !57
  store i8* %14, i8** %5, align 8, !dbg !55
  %15 = load i8*, i8** %5, align 8, !dbg !58
  %16 = icmp ne i8* %15, null, !dbg !58
  br i1 %16, label %17, label %22, !dbg !60

17:                                               ; preds = %9
  %18 = load i8*, i8** %5, align 8, !dbg !61
  %19 = load i8*, i8** %3, align 8, !dbg !62
  %20 = load i64, i64* %4, align 8, !dbg !63
  %21 = call i8* @memcpy(i8* %18, i8* %19, i64 %20), !dbg !64
  br label %22, !dbg !64

22:                                               ; preds = %17, %9
  %23 = load i8*, i8** %5, align 8, !dbg !65
  store i8* %23, i8** %2, align 8, !dbg !66
  br label %24, !dbg !66

24:                                               ; preds = %22, %8
  %25 = load i8*, i8** %2, align 8, !dbg !67
  ret i8* %25, !dbg !67
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !68 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !71, metadata !DIExpression()), !dbg !72
  %3 = load i8*, i8** %2, align 8, !dbg !73
  call void @free(i8* noundef %3) #10, !dbg !74
  ret void, !dbg !75
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlElement* @xmlNewElementDecl(%struct._xmlValidCtxt* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #0 !dbg !76 {
  %5 = alloca %struct._xmlElement*, align 8
  %6 = alloca %struct._xmlValidCtxt*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._xmlElement*, align 8
  store %struct._xmlValidCtxt* %0, %struct._xmlValidCtxt** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlValidCtxt** %6, metadata !86, metadata !DIExpression()), !dbg !87
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !88, metadata !DIExpression()), !dbg !89
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !90, metadata !DIExpression()), !dbg !91
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata %struct._xmlElement** %10, metadata !94, metadata !DIExpression()), !dbg !95
  %11 = call noalias i8* @malloc(i64 noundef 16) #10, !dbg !96
  %12 = bitcast i8* %11 to %struct._xmlElement*, !dbg !96
  store %struct._xmlElement* %12, %struct._xmlElement** %10, align 8, !dbg !95
  %13 = load %struct._xmlElement*, %struct._xmlElement** %10, align 8, !dbg !97
  %14 = icmp eq %struct._xmlElement* %13, null, !dbg !99
  br i1 %14, label %15, label %27, !dbg !100

15:                                               ; preds = %4
  %16 = load %struct._xmlValidCtxt*, %struct._xmlValidCtxt** %6, align 8, !dbg !101
  call void @xmlVErrMemory(%struct._xmlValidCtxt* noundef %16, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)), !dbg !103
  %17 = load i8*, i8** %8, align 8, !dbg !104
  %18 = icmp ne i8* %17, null, !dbg !106
  br i1 %18, label %19, label %21, !dbg !107

19:                                               ; preds = %15
  %20 = load i8*, i8** %8, align 8, !dbg !108
  call void @xmlFree(i8* noundef %20), !dbg !109
  br label %21, !dbg !109

21:                                               ; preds = %19, %15
  %22 = load i8*, i8** %9, align 8, !dbg !110
  %23 = icmp ne i8* %22, null, !dbg !112
  br i1 %23, label %24, label %26, !dbg !113

24:                                               ; preds = %21
  %25 = load i8*, i8** %9, align 8, !dbg !114
  call void @xmlFree(i8* noundef %25), !dbg !115
  br label %26, !dbg !115

26:                                               ; preds = %24, %21
  store %struct._xmlElement* null, %struct._xmlElement** %5, align 8, !dbg !116
  br label %55, !dbg !116

27:                                               ; preds = %4
  %28 = load %struct._xmlElement*, %struct._xmlElement** %10, align 8, !dbg !117
  %29 = bitcast %struct._xmlElement* %28 to i8*, !dbg !118
  %30 = call i8* @memset(i8* %29, i32 0, i64 16), !dbg !118
  %31 = load %struct._xmlElement*, %struct._xmlElement** %10, align 8, !dbg !119
  %32 = icmp ne %struct._xmlElement* %31, null, !dbg !119
  br i1 %32, label %33, label %35, !dbg !119

33:                                               ; preds = %27
  br i1 true, label %34, label %35, !dbg !119

34:                                               ; preds = %33
  br label %37, !dbg !119

35:                                               ; preds = %33, %27
  %36 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @__PRETTY_FUNCTION__.xmlNewElementDecl, i64 0, i64 0)), !dbg !119
  br label %37, !dbg !119

37:                                               ; preds = %35, %34
  %38 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @__PRETTY_FUNCTION__.xmlNewElementDecl, i64 0, i64 0)), !dbg !120
  %39 = load %struct._xmlElement*, %struct._xmlElement** %10, align 8, !dbg !121
  %40 = getelementptr inbounds %struct._xmlElement, %struct._xmlElement* %39, i32 0, i32 0, !dbg !122
  store i32 1, i32* %40, align 8, !dbg !123
  %41 = load i8*, i8** %7, align 8, !dbg !124
  %42 = call i8* @xmlStrdup(i8* noundef %41), !dbg !125
  %43 = load %struct._xmlElement*, %struct._xmlElement** %10, align 8, !dbg !126
  %44 = getelementptr inbounds %struct._xmlElement, %struct._xmlElement* %43, i32 0, i32 1, !dbg !127
  store i8* %42, i8** %44, align 8, !dbg !128
  %45 = load %struct._xmlElement*, %struct._xmlElement** %10, align 8, !dbg !129
  %46 = getelementptr inbounds %struct._xmlElement, %struct._xmlElement* %45, i32 0, i32 1, !dbg !131
  %47 = load i8*, i8** %46, align 8, !dbg !131
  %48 = icmp eq i8* %47, null, !dbg !132
  br i1 %48, label %49, label %53, !dbg !133

49:                                               ; preds = %37
  %50 = load %struct._xmlValidCtxt*, %struct._xmlValidCtxt** %6, align 8, !dbg !134
  call void @xmlVErrMemory(%struct._xmlValidCtxt* noundef %50, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)), !dbg !136
  %51 = load %struct._xmlElement*, %struct._xmlElement** %10, align 8, !dbg !137
  %52 = bitcast %struct._xmlElement* %51 to i8*, !dbg !137
  call void @free(i8* noundef %52) #10, !dbg !138
  store %struct._xmlElement* null, %struct._xmlElement** %5, align 8, !dbg !139
  br label %55, !dbg !139

53:                                               ; preds = %37
  %54 = load %struct._xmlElement*, %struct._xmlElement** %10, align 8, !dbg !140
  store %struct._xmlElement* %54, %struct._xmlElement** %5, align 8, !dbg !141
  br label %55, !dbg !141

55:                                               ; preds = %53, %49, %26
  %56 = load %struct._xmlElement*, %struct._xmlElement** %5, align 8, !dbg !142
  ret %struct._xmlElement* %56, !dbg !142
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !143 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlValidCtxt, align 1
  %3 = alloca [32 x i8], align 16
  %4 = alloca [32 x i8], align 16
  %5 = alloca [32 x i8], align 16
  %6 = alloca %struct._xmlElement*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlValidCtxt* %2, metadata !146, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata [32 x i8]* %3, metadata !148, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.declare(metadata [32 x i8]* %4, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata [32 x i8]* %5, metadata !155, metadata !DIExpression()), !dbg !156
  %7 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0, !dbg !157
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 32, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !158
  %8 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0, !dbg !159
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 32, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)), !dbg !160
  %9 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0, !dbg !161
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 32, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)), !dbg !162
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 31, !dbg !163
  store i8 0, i8* %10, align 1, !dbg !164
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 31, !dbg !165
  store i8 0, i8* %11, align 1, !dbg !166
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 31, !dbg !167
  store i8 0, i8* %12, align 1, !dbg !168
  call void @llvm.dbg.declare(metadata %struct._xmlElement** %6, metadata !169, metadata !DIExpression()), !dbg !170
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0, !dbg !171
  %14 = call i32 @klee_range(i32 noundef 0, i32 noundef 2, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)), !dbg !172
  %15 = icmp ne i32 %14, 0, !dbg !172
  br i1 %15, label %16, label %18, !dbg !172

16:                                               ; preds = %0
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0, !dbg !173
  br label %19, !dbg !172

18:                                               ; preds = %0
  br label %19, !dbg !172

19:                                               ; preds = %18, %16
  %20 = phi i8* [ %17, %16 ], [ null, %18 ], !dbg !172
  %21 = call i32 @klee_range(i32 noundef 0, i32 noundef 2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)), !dbg !174
  %22 = icmp ne i32 %21, 0, !dbg !174
  br i1 %22, label %23, label %25, !dbg !174

23:                                               ; preds = %19
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0, !dbg !175
  br label %26, !dbg !174

25:                                               ; preds = %19
  br label %26, !dbg !174

26:                                               ; preds = %25, %23
  %27 = phi i8* [ %24, %23 ], [ null, %25 ], !dbg !174
  %28 = call %struct._xmlElement* @xmlNewElementDecl(%struct._xmlValidCtxt* noundef %2, i8* noundef %13, i8* noundef %20, i8* noundef %27), !dbg !176
  store %struct._xmlElement* %28, %struct._xmlElement** %6, align 8, !dbg !170
  %29 = load %struct._xmlElement*, %struct._xmlElement** %6, align 8, !dbg !177
  %30 = icmp ne %struct._xmlElement* %29, null, !dbg !179
  br i1 %30, label %31, label %37, !dbg !180

31:                                               ; preds = %26
  %32 = load %struct._xmlElement*, %struct._xmlElement** %6, align 8, !dbg !181
  %33 = getelementptr inbounds %struct._xmlElement, %struct._xmlElement* %32, i32 0, i32 1, !dbg !183
  %34 = load i8*, i8** %33, align 8, !dbg !183
  call void @free(i8* noundef %34) #10, !dbg !184
  %35 = load %struct._xmlElement*, %struct._xmlElement** %6, align 8, !dbg !185
  %36 = bitcast %struct._xmlElement* %35 to i8*, !dbg !185
  call void @free(i8* noundef %36) #10, !dbg !186
  br label %37, !dbg !187

37:                                               ; preds = %31, %26
  ret i32 0, !dbg !188
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #7

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @klee_range(i32 noundef %0, i32 noundef %1, i8* noundef %2) #8 !dbg !189 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !193, metadata !DIExpression()), !dbg !194
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !195, metadata !DIExpression()), !dbg !196
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !197, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.declare(metadata i32* %8, metadata !199, metadata !DIExpression()), !dbg !200
  %9 = load i32, i32* %5, align 4, !dbg !201
  %10 = load i32, i32* %6, align 4, !dbg !203
  %11 = icmp sge i32 %9, %10, !dbg !204
  br i1 %11, label %12, label %13, !dbg !205

12:                                               ; preds = %3
  call void @klee_report_error(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i32 noundef 16, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.12, i64 0, i64 0)) #11, !dbg !206
  unreachable, !dbg !206

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4, !dbg !207
  %15 = add nsw i32 %14, 1, !dbg !209
  %16 = load i32, i32* %6, align 4, !dbg !210
  %17 = icmp eq i32 %15, %16, !dbg !211
  br i1 %17, label %18, label %20, !dbg !212

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4, !dbg !213
  store i32 %19, i32* %4, align 4, !dbg !215
  br label %44, !dbg !215

20:                                               ; preds = %13
  %21 = bitcast i32* %8 to i8*, !dbg !216
  %22 = load i8*, i8** %7, align 8, !dbg !218
  call void @klee_make_symbolic(i8* noundef %21, i64 noundef 4, i8* noundef %22), !dbg !219
  %23 = load i32, i32* %5, align 4, !dbg !220
  %24 = icmp eq i32 %23, 0, !dbg !222
  br i1 %24, label %25, label %31, !dbg !223

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4, !dbg !224
  %27 = load i32, i32* %6, align 4, !dbg !226
  %28 = icmp ult i32 %26, %27, !dbg !227
  %29 = zext i1 %28 to i32, !dbg !227
  %30 = sext i32 %29 to i64, !dbg !228
  call void @klee_assume(i64 noundef %30), !dbg !229
  br label %42, !dbg !230

31:                                               ; preds = %20
  %32 = load i32, i32* %5, align 4, !dbg !231
  %33 = load i32, i32* %8, align 4, !dbg !233
  %34 = icmp sle i32 %32, %33, !dbg !234
  %35 = zext i1 %34 to i32, !dbg !234
  %36 = sext i32 %35 to i64, !dbg !231
  call void @klee_assume(i64 noundef %36), !dbg !235
  %37 = load i32, i32* %8, align 4, !dbg !236
  %38 = load i32, i32* %6, align 4, !dbg !237
  %39 = icmp slt i32 %37, %38, !dbg !238
  %40 = zext i1 %39 to i32, !dbg !238
  %41 = sext i32 %40 to i64, !dbg !236
  call void @klee_assume(i64 noundef %41), !dbg !239
  br label %42

42:                                               ; preds = %31, %25
  %43 = load i32, i32* %8, align 4, !dbg !240
  store i32 %43, i32* %4, align 4, !dbg !241
  br label %44, !dbg !241

44:                                               ; preds = %42, %18
  %45 = load i32, i32* %4, align 4, !dbg !242
  ret i32 %45, !dbg !242
}

; Function Attrs: noreturn
declare void @klee_report_error(i8* noundef, i32 noundef, i8* noundef, i8* noundef) #6

declare void @klee_assume(i64 noundef) #7

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !243 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !249, metadata !DIExpression()), !dbg !250
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !251, metadata !DIExpression()), !dbg !252
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !253, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.declare(metadata i8** %7, metadata !255, metadata !DIExpression()), !dbg !256
  %9 = load i8*, i8** %4, align 8, !dbg !257
  store i8* %9, i8** %7, align 8, !dbg !256
  call void @llvm.dbg.declare(metadata i8** %8, metadata !258, metadata !DIExpression()), !dbg !259
  %10 = load i8*, i8** %5, align 8, !dbg !260
  store i8* %10, i8** %8, align 8, !dbg !259
  br label %11, !dbg !261

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !262
  %13 = add i64 %12, -1, !dbg !262
  store i64 %13, i64* %6, align 8, !dbg !262
  %14 = icmp ugt i64 %12, 0, !dbg !263
  br i1 %14, label %15, label %21, !dbg !261

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !264
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !264
  store i8* %17, i8** %8, align 8, !dbg !264
  %18 = load i8, i8* %16, align 1, !dbg !265
  %19 = load i8*, i8** %7, align 8, !dbg !266
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !266
  store i8* %20, i8** %7, align 8, !dbg !266
  store i8 %18, i8* %19, align 1, !dbg !267
  br label %11, !dbg !261, !llvm.loop !268

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !270
  ret i8* %22, !dbg !271
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !272 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !276, metadata !DIExpression()), !dbg !277
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !278, metadata !DIExpression()), !dbg !279
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !280, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.declare(metadata i8** %7, metadata !282, metadata !DIExpression()), !dbg !283
  %8 = load i8*, i8** %4, align 8, !dbg !284
  store i8* %8, i8** %7, align 8, !dbg !283
  br label %9, !dbg !285

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !286
  %11 = add i64 %10, -1, !dbg !286
  store i64 %11, i64* %6, align 8, !dbg !286
  %12 = icmp ugt i64 %10, 0, !dbg !287
  br i1 %12, label %13, label %18, !dbg !285

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !288
  %15 = trunc i32 %14 to i8, !dbg !288
  %16 = load i8*, i8** %7, align 8, !dbg !289
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !289
  store i8* %17, i8** %7, align 8, !dbg !289
  store i8 %15, i8* %16, align 1, !dbg !290
  br label %9, !dbg !285, !llvm.loop !291

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !292
  ret i8* %19, !dbg !293
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { noreturn }

!llvm.dbg.cu = !{!0, !4, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19, !19, !19, !19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/248_valid.c_1555_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "487842b7db1b17c320e3109b0a838b73")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C89, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !6, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Intrinsic/klee_range.c", directory: "/home/shafi/tools/klee/build/runtime/Intrinsic", checksumkind: CSK_MD5, checksum: "967b9ed6e7b3db2f47ee33010ec31c43")
!6 = !{!7}
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !9, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!9 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !11, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!11 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"Ubuntu clang version 14.0.6"}
!20 = distinct !DISubprogram(name: "xmlVErrMemory", scope: !1, file: !1, line: 23, type: !21, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !23, !27}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidCtxt", file: !1, line: 17, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlValidCtxt", file: !1, line: 18, elements: !26)
!26 = !{}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!30 = !DILocalVariable(name: "ctxt", arg: 1, scope: !20, file: !1, line: 23, type: !23)
!31 = !DILocation(line: 23, column: 34, scope: !20)
!32 = !DILocalVariable(name: "msg", arg: 2, scope: !20, file: !1, line: 23, type: !27)
!33 = !DILocation(line: 23, column: 52, scope: !20)
!34 = !DILocation(line: 25, column: 1, scope: !20)
!35 = distinct !DISubprogram(name: "xmlStrdup", scope: !1, file: !1, line: 27, type: !36, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!36 = !DISubroutineType(types: !37)
!37 = !{!38, !27}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!39 = !DILocalVariable(name: "name", arg: 1, scope: !35, file: !1, line: 27, type: !27)
!40 = !DILocation(line: 27, column: 29, scope: !35)
!41 = !DILocation(line: 28, column: 9, scope: !42)
!42 = distinct !DILexicalBlock(scope: !35, file: !1, line: 28, column: 9)
!43 = !DILocation(line: 28, column: 14, scope: !42)
!44 = !DILocation(line: 28, column: 9, scope: !35)
!45 = !DILocation(line: 28, column: 23, scope: !42)
!46 = !DILocalVariable(name: "len", scope: !35, file: !1, line: 29, type: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !48, line: 46, baseType: !49)
!48 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!49 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!50 = !DILocation(line: 29, column: 12, scope: !35)
!51 = !DILocation(line: 29, column: 25, scope: !35)
!52 = !DILocation(line: 29, column: 18, scope: !35)
!53 = !DILocation(line: 29, column: 31, scope: !35)
!54 = !DILocalVariable(name: "dup", scope: !35, file: !1, line: 30, type: !38)
!55 = !DILocation(line: 30, column: 11, scope: !35)
!56 = !DILocation(line: 30, column: 24, scope: !35)
!57 = !DILocation(line: 30, column: 17, scope: !35)
!58 = !DILocation(line: 31, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !35, file: !1, line: 31, column: 9)
!60 = !DILocation(line: 31, column: 9, scope: !35)
!61 = !DILocation(line: 31, column: 21, scope: !59)
!62 = !DILocation(line: 31, column: 26, scope: !59)
!63 = !DILocation(line: 31, column: 32, scope: !59)
!64 = !DILocation(line: 31, column: 14, scope: !59)
!65 = !DILocation(line: 32, column: 12, scope: !35)
!66 = !DILocation(line: 32, column: 5, scope: !35)
!67 = !DILocation(line: 33, column: 1, scope: !35)
!68 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 35, type: !69, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !3}
!71 = !DILocalVariable(name: "ptr", arg: 1, scope: !68, file: !1, line: 35, type: !3)
!72 = !DILocation(line: 35, column: 20, scope: !68)
!73 = !DILocation(line: 36, column: 10, scope: !68)
!74 = !DILocation(line: 36, column: 5, scope: !68)
!75 = !DILocation(line: 37, column: 1, scope: !68)
!76 = distinct !DISubprogram(name: "xmlNewElementDecl", scope: !1, file: !1, line: 40, type: !77, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!77 = !DISubroutineType(types: !78)
!78 = !{!79, !23, !27, !27, !27}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElement", file: !1, line: 10, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlElement", file: !1, line: 11, size: 128, elements: !82)
!82 = !{!83, !85}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !81, file: !1, line: 12, baseType: !84, size: 32)
!84 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !81, file: !1, line: 13, baseType: !38, size: 64, offset: 64)
!86 = !DILocalVariable(name: "ctxt", arg: 1, scope: !76, file: !1, line: 40, type: !23)
!87 = !DILocation(line: 40, column: 45, scope: !76)
!88 = !DILocalVariable(name: "name", arg: 2, scope: !76, file: !1, line: 40, type: !27)
!89 = !DILocation(line: 40, column: 63, scope: !76)
!90 = !DILocalVariable(name: "uqname", arg: 3, scope: !76, file: !1, line: 40, type: !27)
!91 = !DILocation(line: 40, column: 81, scope: !76)
!92 = !DILocalVariable(name: "ns", arg: 4, scope: !76, file: !1, line: 40, type: !27)
!93 = !DILocation(line: 40, column: 101, scope: !76)
!94 = !DILocalVariable(name: "ret", scope: !76, file: !1, line: 41, type: !79)
!95 = !DILocation(line: 41, column: 17, scope: !76)
!96 = !DILocation(line: 41, column: 23, scope: !76)
!97 = !DILocation(line: 42, column: 9, scope: !98)
!98 = distinct !DILexicalBlock(scope: !76, file: !1, line: 42, column: 9)
!99 = !DILocation(line: 42, column: 13, scope: !98)
!100 = !DILocation(line: 42, column: 9, scope: !76)
!101 = !DILocation(line: 43, column: 23, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !1, line: 42, column: 22)
!103 = !DILocation(line: 43, column: 9, scope: !102)
!104 = !DILocation(line: 44, column: 13, scope: !105)
!105 = distinct !DILexicalBlock(scope: !102, file: !1, line: 44, column: 13)
!106 = !DILocation(line: 44, column: 20, scope: !105)
!107 = !DILocation(line: 44, column: 13, scope: !102)
!108 = !DILocation(line: 45, column: 28, scope: !105)
!109 = !DILocation(line: 45, column: 13, scope: !105)
!110 = !DILocation(line: 46, column: 13, scope: !111)
!111 = distinct !DILexicalBlock(scope: !102, file: !1, line: 46, column: 13)
!112 = !DILocation(line: 46, column: 16, scope: !111)
!113 = !DILocation(line: 46, column: 13, scope: !102)
!114 = !DILocation(line: 47, column: 28, scope: !111)
!115 = !DILocation(line: 47, column: 13, scope: !111)
!116 = !DILocation(line: 48, column: 9, scope: !102)
!117 = !DILocation(line: 52, column: 12, scope: !76)
!118 = !DILocation(line: 52, column: 5, scope: !76)
!119 = !DILocation(line: 55, column: 5, scope: !76)
!120 = !DILocation(line: 58, column: 5, scope: !76)
!121 = !DILocation(line: 60, column: 5, scope: !76)
!122 = !DILocation(line: 60, column: 10, scope: !76)
!123 = !DILocation(line: 60, column: 15, scope: !76)
!124 = !DILocation(line: 61, column: 27, scope: !76)
!125 = !DILocation(line: 61, column: 17, scope: !76)
!126 = !DILocation(line: 61, column: 5, scope: !76)
!127 = !DILocation(line: 61, column: 10, scope: !76)
!128 = !DILocation(line: 61, column: 15, scope: !76)
!129 = !DILocation(line: 62, column: 9, scope: !130)
!130 = distinct !DILexicalBlock(scope: !76, file: !1, line: 62, column: 9)
!131 = !DILocation(line: 62, column: 14, scope: !130)
!132 = !DILocation(line: 62, column: 19, scope: !130)
!133 = !DILocation(line: 62, column: 9, scope: !76)
!134 = !DILocation(line: 63, column: 23, scope: !135)
!135 = distinct !DILexicalBlock(scope: !130, file: !1, line: 62, column: 28)
!136 = !DILocation(line: 63, column: 9, scope: !135)
!137 = !DILocation(line: 64, column: 14, scope: !135)
!138 = !DILocation(line: 64, column: 9, scope: !135)
!139 = !DILocation(line: 65, column: 9, scope: !135)
!140 = !DILocation(line: 67, column: 12, scope: !76)
!141 = !DILocation(line: 67, column: 5, scope: !76)
!142 = !DILocation(line: 68, column: 1, scope: !76)
!143 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 70, type: !144, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!144 = !DISubroutineType(types: !145)
!145 = !{!84}
!146 = !DILocalVariable(name: "ctxt", scope: !143, file: !1, line: 72, type: !24)
!147 = !DILocation(line: 72, column: 18, scope: !143)
!148 = !DILocalVariable(name: "name", scope: !143, file: !1, line: 73, type: !149)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 256, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 32)
!152 = !DILocation(line: 73, column: 10, scope: !143)
!153 = !DILocalVariable(name: "uqname", scope: !143, file: !1, line: 74, type: !149)
!154 = !DILocation(line: 74, column: 10, scope: !143)
!155 = !DILocalVariable(name: "ns", scope: !143, file: !1, line: 75, type: !149)
!156 = !DILocation(line: 75, column: 10, scope: !143)
!157 = !DILocation(line: 78, column: 24, scope: !143)
!158 = !DILocation(line: 78, column: 5, scope: !143)
!159 = !DILocation(line: 79, column: 24, scope: !143)
!160 = !DILocation(line: 79, column: 5, scope: !143)
!161 = !DILocation(line: 80, column: 24, scope: !143)
!162 = !DILocation(line: 80, column: 5, scope: !143)
!163 = !DILocation(line: 83, column: 5, scope: !143)
!164 = !DILocation(line: 83, column: 14, scope: !143)
!165 = !DILocation(line: 84, column: 5, scope: !143)
!166 = !DILocation(line: 84, column: 16, scope: !143)
!167 = !DILocation(line: 85, column: 5, scope: !143)
!168 = !DILocation(line: 85, column: 12, scope: !143)
!169 = !DILocalVariable(name: "elem", scope: !143, file: !1, line: 88, type: !79)
!170 = !DILocation(line: 88, column: 17, scope: !143)
!171 = !DILocation(line: 88, column: 49, scope: !143)
!172 = !DILocation(line: 89, column: 42, scope: !143)
!173 = !DILocation(line: 89, column: 76, scope: !143)
!174 = !DILocation(line: 90, column: 42, scope: !143)
!175 = !DILocation(line: 90, column: 72, scope: !143)
!176 = !DILocation(line: 88, column: 24, scope: !143)
!177 = !DILocation(line: 93, column: 9, scope: !178)
!178 = distinct !DILexicalBlock(scope: !143, file: !1, line: 93, column: 9)
!179 = !DILocation(line: 93, column: 14, scope: !178)
!180 = !DILocation(line: 93, column: 9, scope: !143)
!181 = !DILocation(line: 94, column: 14, scope: !182)
!182 = distinct !DILexicalBlock(scope: !178, file: !1, line: 93, column: 23)
!183 = !DILocation(line: 94, column: 20, scope: !182)
!184 = !DILocation(line: 94, column: 9, scope: !182)
!185 = !DILocation(line: 95, column: 14, scope: !182)
!186 = !DILocation(line: 95, column: 9, scope: !182)
!187 = !DILocation(line: 96, column: 5, scope: !182)
!188 = !DILocation(line: 98, column: 5, scope: !143)
!189 = distinct !DISubprogram(name: "klee_range", scope: !190, file: !190, line: 12, type: !191, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !26)
!190 = !DIFile(filename: "runtime/Intrinsic/klee_range.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "967b9ed6e7b3db2f47ee33010ec31c43")
!191 = !DISubroutineType(types: !192)
!192 = !{!84, !84, !84, !27}
!193 = !DILocalVariable(name: "start", arg: 1, scope: !189, file: !190, line: 12, type: !84)
!194 = !DILocation(line: 12, column: 20, scope: !189)
!195 = !DILocalVariable(name: "end", arg: 2, scope: !189, file: !190, line: 12, type: !84)
!196 = !DILocation(line: 12, column: 31, scope: !189)
!197 = !DILocalVariable(name: "name", arg: 3, scope: !189, file: !190, line: 12, type: !27)
!198 = !DILocation(line: 12, column: 48, scope: !189)
!199 = !DILocalVariable(name: "x", scope: !189, file: !190, line: 13, type: !84)
!200 = !DILocation(line: 13, column: 7, scope: !189)
!201 = !DILocation(line: 15, column: 7, scope: !202)
!202 = distinct !DILexicalBlock(scope: !189, file: !190, line: 15, column: 7)
!203 = !DILocation(line: 15, column: 16, scope: !202)
!204 = !DILocation(line: 15, column: 13, scope: !202)
!205 = !DILocation(line: 15, column: 7, scope: !189)
!206 = !DILocation(line: 16, column: 5, scope: !202)
!207 = !DILocation(line: 18, column: 7, scope: !208)
!208 = distinct !DILexicalBlock(scope: !189, file: !190, line: 18, column: 7)
!209 = !DILocation(line: 18, column: 12, scope: !208)
!210 = !DILocation(line: 18, column: 16, scope: !208)
!211 = !DILocation(line: 18, column: 14, scope: !208)
!212 = !DILocation(line: 18, column: 7, scope: !189)
!213 = !DILocation(line: 19, column: 12, scope: !214)
!214 = distinct !DILexicalBlock(scope: !208, file: !190, line: 18, column: 21)
!215 = !DILocation(line: 19, column: 5, scope: !214)
!216 = !DILocation(line: 21, column: 24, scope: !217)
!217 = distinct !DILexicalBlock(scope: !208, file: !190, line: 20, column: 10)
!218 = !DILocation(line: 21, column: 38, scope: !217)
!219 = !DILocation(line: 21, column: 5, scope: !217)
!220 = !DILocation(line: 24, column: 9, scope: !221)
!221 = distinct !DILexicalBlock(scope: !217, file: !190, line: 24, column: 9)
!222 = !DILocation(line: 24, column: 14, scope: !221)
!223 = !DILocation(line: 24, column: 9, scope: !217)
!224 = !DILocation(line: 25, column: 30, scope: !225)
!225 = distinct !DILexicalBlock(scope: !221, file: !190, line: 24, column: 19)
!226 = !DILocation(line: 25, column: 45, scope: !225)
!227 = !DILocation(line: 25, column: 32, scope: !225)
!228 = !DILocation(line: 25, column: 19, scope: !225)
!229 = !DILocation(line: 25, column: 7, scope: !225)
!230 = !DILocation(line: 26, column: 5, scope: !225)
!231 = !DILocation(line: 27, column: 19, scope: !232)
!232 = distinct !DILexicalBlock(scope: !221, file: !190, line: 26, column: 12)
!233 = !DILocation(line: 27, column: 28, scope: !232)
!234 = !DILocation(line: 27, column: 25, scope: !232)
!235 = !DILocation(line: 27, column: 7, scope: !232)
!236 = !DILocation(line: 28, column: 19, scope: !232)
!237 = !DILocation(line: 28, column: 23, scope: !232)
!238 = !DILocation(line: 28, column: 21, scope: !232)
!239 = !DILocation(line: 28, column: 7, scope: !232)
!240 = !DILocation(line: 31, column: 12, scope: !217)
!241 = !DILocation(line: 31, column: 5, scope: !217)
!242 = !DILocation(line: 33, column: 1, scope: !189)
!243 = distinct !DISubprogram(name: "memcpy", scope: !244, file: !244, line: 12, type: !245, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !26)
!244 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!245 = !DISubroutineType(types: !246)
!246 = !{!3, !3, !247, !47}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!249 = !DILocalVariable(name: "destaddr", arg: 1, scope: !243, file: !244, line: 12, type: !3)
!250 = !DILocation(line: 12, column: 20, scope: !243)
!251 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !243, file: !244, line: 12, type: !247)
!252 = !DILocation(line: 12, column: 42, scope: !243)
!253 = !DILocalVariable(name: "len", arg: 3, scope: !243, file: !244, line: 12, type: !47)
!254 = !DILocation(line: 12, column: 58, scope: !243)
!255 = !DILocalVariable(name: "dest", scope: !243, file: !244, line: 13, type: !38)
!256 = !DILocation(line: 13, column: 9, scope: !243)
!257 = !DILocation(line: 13, column: 16, scope: !243)
!258 = !DILocalVariable(name: "src", scope: !243, file: !244, line: 14, type: !27)
!259 = !DILocation(line: 14, column: 15, scope: !243)
!260 = !DILocation(line: 14, column: 21, scope: !243)
!261 = !DILocation(line: 16, column: 3, scope: !243)
!262 = !DILocation(line: 16, column: 13, scope: !243)
!263 = !DILocation(line: 16, column: 16, scope: !243)
!264 = !DILocation(line: 17, column: 19, scope: !243)
!265 = !DILocation(line: 17, column: 15, scope: !243)
!266 = !DILocation(line: 17, column: 10, scope: !243)
!267 = !DILocation(line: 17, column: 13, scope: !243)
!268 = distinct !{!268, !261, !264, !269}
!269 = !{!"llvm.loop.mustprogress"}
!270 = !DILocation(line: 18, column: 10, scope: !243)
!271 = !DILocation(line: 18, column: 3, scope: !243)
!272 = distinct !DISubprogram(name: "memset", scope: !273, file: !273, line: 12, type: !274, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !26)
!273 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!274 = !DISubroutineType(types: !275)
!275 = !{!3, !3, !84, !47}
!276 = !DILocalVariable(name: "dst", arg: 1, scope: !272, file: !273, line: 12, type: !3)
!277 = !DILocation(line: 12, column: 20, scope: !272)
!278 = !DILocalVariable(name: "s", arg: 2, scope: !272, file: !273, line: 12, type: !84)
!279 = !DILocation(line: 12, column: 29, scope: !272)
!280 = !DILocalVariable(name: "count", arg: 3, scope: !272, file: !273, line: 12, type: !47)
!281 = !DILocation(line: 12, column: 39, scope: !272)
!282 = !DILocalVariable(name: "a", scope: !272, file: !273, line: 13, type: !38)
!283 = !DILocation(line: 13, column: 9, scope: !272)
!284 = !DILocation(line: 13, column: 13, scope: !272)
!285 = !DILocation(line: 14, column: 3, scope: !272)
!286 = !DILocation(line: 14, column: 15, scope: !272)
!287 = !DILocation(line: 14, column: 18, scope: !272)
!288 = !DILocation(line: 15, column: 12, scope: !272)
!289 = !DILocation(line: 15, column: 7, scope: !272)
!290 = !DILocation(line: 15, column: 10, scope: !272)
!291 = distinct !{!291, !285, !288, !269}
!292 = !DILocation(line: 16, column: 10, scope: !272)
!293 = !DILocation(line: 16, column: 3, scope: !272)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/207_libxml.c_349_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/207_libxml.c_349_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PyObject = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"ret_data\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"xmlPythonFileRead: result is not a String\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"(len <= 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/207_libxml.c_349_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlPythonFileRead = private unnamed_addr constant [43 x i8] c"int xmlPythonFileRead(void *, char *, int)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"s#\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"libxml\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PyString_AsStringAndSize(%struct.PyObject* noundef %0, i8** noundef %1, i32* noundef %2) #0 !dbg !14 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.PyObject*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  store %struct.PyObject* %0, %struct.PyObject** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.PyObject** %5, metadata !30, metadata !DIExpression()), !dbg !31
  store i8** %1, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !32, metadata !DIExpression()), !dbg !33
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !34, metadata !DIExpression()), !dbg !35
  %8 = load %struct.PyObject*, %struct.PyObject** %5, align 8, !dbg !36
  %9 = icmp eq %struct.PyObject* %8, null, !dbg !38
  br i1 %9, label %15, label %10, !dbg !39

10:                                               ; preds = %3
  %11 = load %struct.PyObject*, %struct.PyObject** %5, align 8, !dbg !40
  %12 = getelementptr inbounds %struct.PyObject, %struct.PyObject* %11, i32 0, i32 1, !dbg !41
  %13 = load i8*, i8** %12, align 8, !dbg !41
  %14 = icmp eq i8* %13, null, !dbg !42
  br i1 %14, label %15, label %16, !dbg !43

15:                                               ; preds = %10, %3
  store i32 -1, i32* %4, align 4, !dbg !44
  br label %25, !dbg !44

16:                                               ; preds = %10
  %17 = load %struct.PyObject*, %struct.PyObject** %5, align 8, !dbg !46
  %18 = getelementptr inbounds %struct.PyObject, %struct.PyObject* %17, i32 0, i32 1, !dbg !47
  %19 = load i8*, i8** %18, align 8, !dbg !47
  %20 = load i8**, i8*** %6, align 8, !dbg !48
  store i8* %19, i8** %20, align 8, !dbg !49
  %21 = load %struct.PyObject*, %struct.PyObject** %5, align 8, !dbg !50
  %22 = getelementptr inbounds %struct.PyObject, %struct.PyObject* %21, i32 0, i32 2, !dbg !51
  %23 = load i32, i32* %22, align 8, !dbg !51
  %24 = load i32*, i32** %7, align 8, !dbg !52
  store i32 %23, i32* %24, align 4, !dbg !53
  store i32 0, i32* %4, align 4, !dbg !54
  br label %25, !dbg !54

25:                                               ; preds = %16, %15
  %26 = load i32, i32* %4, align 4, !dbg !55
  ret i32 %26, !dbg !55
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @PyFile_AsFile(%struct.PyObject* noundef %0) #0 !dbg !56 {
  %2 = alloca %struct.PyObject*, align 8
  store %struct.PyObject* %0, %struct.PyObject** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.PyObject** %2, metadata !59, metadata !DIExpression()), !dbg !60
  %3 = call noalias i8* @malloc(i64 noundef 1) #7, !dbg !61
  ret i8* %3, !dbg !62
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.PyObject* @Py_InitModule(i8* noundef %0, i8* noundef %1) #0 !dbg !63 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !66, metadata !DIExpression()), !dbg !67
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !68, metadata !DIExpression()), !dbg !69
  %5 = call noalias i8* @malloc(i64 noundef 24) #7, !dbg !70
  %6 = bitcast i8* %5 to %struct.PyObject*, !dbg !70
  ret %struct.PyObject* %6, !dbg !71
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PyArg_ParseTuple(%struct.PyObject* noundef %0, i8* noundef %1, ...) #0 !dbg !72 {
  %3 = alloca %struct.PyObject*, align 8
  %4 = alloca i8*, align 8
  store %struct.PyObject* %0, %struct.PyObject** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.PyObject** %3, metadata !75, metadata !DIExpression()), !dbg !76
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !77, metadata !DIExpression()), !dbg !78
  ret i32 1, !dbg !79
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.PyObject* @Py_BuildValue(i8* noundef %0, ...) #0 !dbg !80 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.PyObject*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !83, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata %struct.PyObject** %3, metadata !85, metadata !DIExpression()), !dbg !86
  %4 = call noalias i8* @malloc(i64 noundef 24) #7, !dbg !87
  %5 = bitcast i8* %4 to %struct.PyObject*, !dbg !87
  store %struct.PyObject* %5, %struct.PyObject** %3, align 8, !dbg !86
  %6 = load %struct.PyObject*, %struct.PyObject** %3, align 8, !dbg !88
  %7 = getelementptr inbounds %struct.PyObject, %struct.PyObject* %6, i32 0, i32 0, !dbg !89
  store i32 1, i32* %7, align 8, !dbg !90
  %8 = call noalias i8* @malloc(i64 noundef 100) #7, !dbg !91
  %9 = load %struct.PyObject*, %struct.PyObject** %3, align 8, !dbg !92
  %10 = getelementptr inbounds %struct.PyObject, %struct.PyObject* %9, i32 0, i32 1, !dbg !93
  store i8* %8, i8** %10, align 8, !dbg !94
  %11 = load %struct.PyObject*, %struct.PyObject** %3, align 8, !dbg !95
  %12 = getelementptr inbounds %struct.PyObject, %struct.PyObject* %11, i32 0, i32 2, !dbg !96
  store i32 100, i32* %12, align 8, !dbg !97
  %13 = load %struct.PyObject*, %struct.PyObject** %3, align 8, !dbg !98
  ret %struct.PyObject* %13, !dbg !99
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Py_DECREF(%struct.PyObject* noundef %0) #0 !dbg !100 {
  %2 = alloca %struct.PyObject*, align 8
  store %struct.PyObject* %0, %struct.PyObject** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.PyObject** %2, metadata !103, metadata !DIExpression()), !dbg !104
  %3 = load %struct.PyObject*, %struct.PyObject** %2, align 8, !dbg !105
  %4 = icmp ne %struct.PyObject* %3, null, !dbg !105
  br i1 %4, label %5, label %17, !dbg !107

5:                                                ; preds = %1
  %6 = load %struct.PyObject*, %struct.PyObject** %2, align 8, !dbg !108
  %7 = getelementptr inbounds %struct.PyObject, %struct.PyObject* %6, i32 0, i32 0, !dbg !109
  %8 = load i32, i32* %7, align 8, !dbg !110
  %9 = add nsw i32 %8, -1, !dbg !110
  store i32 %9, i32* %7, align 8, !dbg !110
  %10 = icmp sle i32 %9, 0, !dbg !111
  br i1 %10, label %11, label %17, !dbg !112

11:                                               ; preds = %5
  %12 = load %struct.PyObject*, %struct.PyObject** %2, align 8, !dbg !113
  %13 = getelementptr inbounds %struct.PyObject, %struct.PyObject* %12, i32 0, i32 1, !dbg !115
  %14 = load i8*, i8** %13, align 8, !dbg !115
  call void @free(i8* noundef %14) #7, !dbg !116
  %15 = load %struct.PyObject*, %struct.PyObject** %2, align 8, !dbg !117
  %16 = bitcast %struct.PyObject* %15 to i8*, !dbg !117
  call void @free(i8* noundef %16) #7, !dbg !118
  br label %17, !dbg !119

17:                                               ; preds = %11, %5, %1
  ret void, !dbg !120
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.PyObject* @PyObject_CallObject(%struct.PyObject* noundef %0, %struct.PyObject* noundef %1) #0 !dbg !121 {
  %3 = alloca %struct.PyObject*, align 8
  %4 = alloca %struct.PyObject*, align 8
  %5 = alloca %struct.PyObject*, align 8
  %6 = alloca i32, align 4
  store %struct.PyObject* %0, %struct.PyObject** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.PyObject** %3, metadata !124, metadata !DIExpression()), !dbg !125
  store %struct.PyObject* %1, %struct.PyObject** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.PyObject** %4, metadata !126, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.declare(metadata %struct.PyObject** %5, metadata !128, metadata !DIExpression()), !dbg !129
  %7 = call noalias i8* @malloc(i64 noundef 24) #7, !dbg !130
  %8 = bitcast i8* %7 to %struct.PyObject*, !dbg !130
  store %struct.PyObject* %8, %struct.PyObject** %5, align 8, !dbg !129
  %9 = load %struct.PyObject*, %struct.PyObject** %5, align 8, !dbg !131
  %10 = getelementptr inbounds %struct.PyObject, %struct.PyObject* %9, i32 0, i32 0, !dbg !132
  store i32 1, i32* %10, align 8, !dbg !133
  call void @llvm.dbg.declare(metadata i32* %6, metadata !134, metadata !DIExpression()), !dbg !135
  store i32 100, i32* %6, align 4, !dbg !135
  %11 = load i32, i32* %6, align 4, !dbg !136
  %12 = sext i32 %11 to i64, !dbg !136
  %13 = call noalias i8* @malloc(i64 noundef %12) #7, !dbg !137
  %14 = load %struct.PyObject*, %struct.PyObject** %5, align 8, !dbg !138
  %15 = getelementptr inbounds %struct.PyObject, %struct.PyObject* %14, i32 0, i32 1, !dbg !139
  store i8* %13, i8** %15, align 8, !dbg !140
  %16 = load i32, i32* %6, align 4, !dbg !141
  %17 = load %struct.PyObject*, %struct.PyObject** %5, align 8, !dbg !142
  %18 = getelementptr inbounds %struct.PyObject, %struct.PyObject* %17, i32 0, i32 2, !dbg !143
  store i32 %16, i32* %18, align 8, !dbg !144
  %19 = load %struct.PyObject*, %struct.PyObject** %5, align 8, !dbg !145
  %20 = getelementptr inbounds %struct.PyObject, %struct.PyObject* %19, i32 0, i32 1, !dbg !146
  %21 = load i8*, i8** %20, align 8, !dbg !146
  %22 = load i32, i32* %6, align 4, !dbg !147
  %23 = sext i32 %22 to i64, !dbg !147
  call void @klee_make_symbolic(i8* noundef %21, i64 noundef %23, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !148
  %24 = load %struct.PyObject*, %struct.PyObject** %5, align 8, !dbg !149
  ret %struct.PyObject* %24, !dbg !150
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlPythonFileRead(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !151 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.PyObject*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !154, metadata !DIExpression()), !dbg !155
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !156, metadata !DIExpression()), !dbg !157
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !158, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.declare(metadata %struct.PyObject** %8, metadata !160, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.declare(metadata i8** %9, metadata !162, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.declare(metadata i32* %10, metadata !164, metadata !DIExpression()), !dbg !165
  %11 = call %struct.PyObject* @PyObject_CallObject(%struct.PyObject* noundef null, %struct.PyObject* noundef null), !dbg !166
  store %struct.PyObject* %11, %struct.PyObject** %8, align 8, !dbg !167
  %12 = load %struct.PyObject*, %struct.PyObject** %8, align 8, !dbg !168
  %13 = icmp eq %struct.PyObject* %12, null, !dbg !170
  br i1 %13, label %14, label %15, !dbg !171

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4, !dbg !172
  br label %49, !dbg !172

15:                                               ; preds = %3
  %16 = load %struct.PyObject*, %struct.PyObject** %8, align 8, !dbg !174
  %17 = call i32 @PyString_AsStringAndSize(%struct.PyObject* noundef %16, i8** noundef %9, i32* noundef %10), !dbg !176
  %18 = icmp slt i32 %17, 0, !dbg !177
  br i1 %18, label %19, label %22, !dbg !178

19:                                               ; preds = %15
  %20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0)), !dbg !179
  %21 = load %struct.PyObject*, %struct.PyObject** %8, align 8, !dbg !181
  call void @Py_DECREF(%struct.PyObject* noundef %21), !dbg !182
  store i32 -1, i32* %4, align 4, !dbg !183
  br label %49, !dbg !183

22:                                               ; preds = %15
  %23 = load i32, i32* %10, align 4, !dbg !184
  %24 = load i32, i32* %7, align 4, !dbg !186
  %25 = icmp sgt i32 %23, %24, !dbg !187
  br i1 %25, label %26, label %32, !dbg !188

26:                                               ; preds = %22
  %27 = load i8*, i8** %6, align 8, !dbg !189
  %28 = load i8*, i8** %9, align 8, !dbg !191
  %29 = load i32, i32* %7, align 4, !dbg !192
  %30 = sext i32 %29 to i64, !dbg !192
  %31 = call i8* @memcpy(i8* %27, i8* %28, i64 %30), !dbg !193
  br label %38, !dbg !194

32:                                               ; preds = %22
  %33 = load i8*, i8** %6, align 8, !dbg !195
  %34 = load i8*, i8** %9, align 8, !dbg !197
  %35 = load i32, i32* %10, align 4, !dbg !198
  %36 = sext i32 %35 to i64, !dbg !198
  %37 = call i8* @memcpy(i8* %33, i8* %34, i64 %36), !dbg !199
  br label %38

38:                                               ; preds = %32, %26
  %39 = load i32, i32* %7, align 4, !dbg !200
  %40 = icmp sle i32 %39, 1024, !dbg !200
  br i1 %40, label %41, label %43, !dbg !200

41:                                               ; preds = %38
  br i1 true, label %42, label %43, !dbg !200

42:                                               ; preds = %41
  br label %45, !dbg !200

43:                                               ; preds = %41, %38
  %44 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.4, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.xmlPythonFileRead, i64 0, i64 0)), !dbg !200
  br label %45, !dbg !200

45:                                               ; preds = %43, %42
  %46 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.4, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.xmlPythonFileRead, i64 0, i64 0)), !dbg !201
  %47 = load %struct.PyObject*, %struct.PyObject** %8, align 8, !dbg !202
  call void @Py_DECREF(%struct.PyObject* noundef %47), !dbg !203
  %48 = load i32, i32* %10, align 4, !dbg !204
  store i32 %48, i32* %4, align 4, !dbg !205
  br label %49, !dbg !205

49:                                               ; preds = %45, %19, %14
  %50 = load i32, i32* %4, align 4, !dbg !206
  ret i32 %50, !dbg !206
}

declare i32 @printf(i8* noundef, ...) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libxml_xmlCreatePushParser(%struct.PyObject* noundef %0, %struct.PyObject* noundef %1) #0 !dbg !207 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.PyObject*, align 8
  %5 = alloca %struct.PyObject*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.PyObject* %0, %struct.PyObject** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.PyObject** %4, metadata !210, metadata !DIExpression()), !dbg !211
  store %struct.PyObject* %1, %struct.PyObject** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.PyObject** %5, metadata !212, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.declare(metadata i8** %6, metadata !214, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.declare(metadata i32* %7, metadata !216, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.declare(metadata i8** %8, metadata !218, metadata !DIExpression()), !dbg !219
  %9 = call noalias i8* @malloc(i64 noundef 100) #7, !dbg !220
  store i8* %9, i8** %8, align 8, !dbg !219
  %10 = load %struct.PyObject*, %struct.PyObject** %5, align 8, !dbg !221
  %11 = call i32 (%struct.PyObject*, i8*, ...) @PyArg_ParseTuple(%struct.PyObject* noundef %10, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** noundef %6, i32* noundef %7), !dbg !223
  %12 = icmp ne i32 %11, 0, !dbg !223
  br i1 %12, label %14, label %13, !dbg !224

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !225
  br label %31, !dbg !225

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !227
  %16 = load i32, i32* %7, align 4, !dbg !228
  %17 = sext i32 %16 to i64, !dbg !228
  call void @klee_make_symbolic(i8* noundef %15, i64 noundef %17, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)), !dbg !229
  %18 = bitcast i32* %7 to i8*, !dbg !230
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)), !dbg !231
  %19 = load i32, i32* %7, align 4, !dbg !232
  %20 = icmp sge i32 %19, 0, !dbg !233
  %21 = zext i1 %20 to i32, !dbg !233
  %22 = sext i32 %21 to i64, !dbg !232
  call void @klee_assume(i64 noundef %22), !dbg !234
  %23 = load i32, i32* %7, align 4, !dbg !235
  %24 = icmp sle i32 %23, 2048, !dbg !236
  %25 = zext i1 %24 to i32, !dbg !236
  %26 = sext i32 %25 to i64, !dbg !235
  call void @klee_assume(i64 noundef %26), !dbg !237
  %27 = load i8*, i8** %8, align 8, !dbg !238
  %28 = load i8*, i8** %6, align 8, !dbg !239
  %29 = load i32, i32* %7, align 4, !dbg !240
  %30 = call i32 @xmlPythonFileRead(i8* noundef %27, i8* noundef %28, i32 noundef %29), !dbg !241
  store i32 %30, i32* %3, align 4, !dbg !242
  br label %31, !dbg !242

31:                                               ; preds = %14, %13
  %32 = load i32, i32* %3, align 4, !dbg !243
  ret i32 %32, !dbg !243
}

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !244 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.PyObject*, align 8
  %3 = alloca %struct.PyObject*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.PyObject** %2, metadata !247, metadata !DIExpression()), !dbg !248
  %4 = call noalias i8* @malloc(i64 noundef 24) #7, !dbg !249
  %5 = bitcast i8* %4 to %struct.PyObject*, !dbg !249
  store %struct.PyObject* %5, %struct.PyObject** %2, align 8, !dbg !248
  call void @llvm.dbg.declare(metadata %struct.PyObject** %3, metadata !250, metadata !DIExpression()), !dbg !251
  %6 = call noalias i8* @malloc(i64 noundef 24) #7, !dbg !252
  %7 = bitcast i8* %6 to %struct.PyObject*, !dbg !252
  store %struct.PyObject* %7, %struct.PyObject** %3, align 8, !dbg !251
  %8 = load %struct.PyObject*, %struct.PyObject** %2, align 8, !dbg !253
  %9 = getelementptr inbounds %struct.PyObject, %struct.PyObject* %8, i32 0, i32 0, !dbg !254
  store i32 1, i32* %9, align 8, !dbg !255
  %10 = load %struct.PyObject*, %struct.PyObject** %3, align 8, !dbg !256
  %11 = getelementptr inbounds %struct.PyObject, %struct.PyObject* %10, i32 0, i32 0, !dbg !257
  store i32 1, i32* %11, align 8, !dbg !258
  %12 = call %struct.PyObject* @Py_InitModule(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* noundef null), !dbg !259
  %13 = load %struct.PyObject*, %struct.PyObject** %2, align 8, !dbg !260
  %14 = load %struct.PyObject*, %struct.PyObject** %3, align 8, !dbg !261
  %15 = call i32 @libxml_xmlCreatePushParser(%struct.PyObject* noundef %13, %struct.PyObject* noundef %14), !dbg !262
  %16 = load %struct.PyObject*, %struct.PyObject** %2, align 8, !dbg !263
  call void @Py_DECREF(%struct.PyObject* noundef %16), !dbg !264
  %17 = load %struct.PyObject*, %struct.PyObject** %3, align 8, !dbg !265
  call void @Py_DECREF(%struct.PyObject* noundef %17), !dbg !266
  ret i32 0, !dbg !267
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !268 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !277, metadata !DIExpression()), !dbg !278
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !279, metadata !DIExpression()), !dbg !280
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !281, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.declare(metadata i8** %7, metadata !283, metadata !DIExpression()), !dbg !284
  %9 = load i8*, i8** %4, align 8, !dbg !285
  store i8* %9, i8** %7, align 8, !dbg !284
  call void @llvm.dbg.declare(metadata i8** %8, metadata !286, metadata !DIExpression()), !dbg !289
  %10 = load i8*, i8** %5, align 8, !dbg !290
  store i8* %10, i8** %8, align 8, !dbg !289
  br label %11, !dbg !291

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !292
  %13 = add i64 %12, -1, !dbg !292
  store i64 %13, i64* %6, align 8, !dbg !292
  %14 = icmp ugt i64 %12, 0, !dbg !293
  br i1 %14, label %15, label %21, !dbg !291

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !294
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !294
  store i8* %17, i8** %8, align 8, !dbg !294
  %18 = load i8, i8* %16, align 1, !dbg !295
  %19 = load i8*, i8** %7, align 8, !dbg !296
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !296
  store i8* %20, i8** %7, align 8, !dbg !296
  store i8 %18, i8* %19, align 1, !dbg !297
  br label %11, !dbg !291, !llvm.loop !298

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !300
  ret i8* %22, !dbg !301
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/207_libxml.c_349_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "e5c210ffc76708914b7d407e622b0956")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "PyString_AsStringAndSize", scope: !1, file: !1, line: 18, type: !15, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !18, !27, !28}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !1, line: 10, baseType: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PyObject", file: !1, line: 11, size: 192, elements: !21)
!21 = !{!22, !23, !26}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !20, file: !1, line: 12, baseType: !17, size: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !20, file: !1, line: 13, baseType: !24, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !20, file: !1, line: 14, baseType: !17, size: 32, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!29 = !{}
!30 = !DILocalVariable(name: "obj", arg: 1, scope: !14, file: !1, line: 18, type: !18)
!31 = !DILocation(line: 18, column: 40, scope: !14)
!32 = !DILocalVariable(name: "buffer", arg: 2, scope: !14, file: !1, line: 18, type: !27)
!33 = !DILocation(line: 18, column: 52, scope: !14)
!34 = !DILocalVariable(name: "length", arg: 3, scope: !14, file: !1, line: 18, type: !28)
!35 = !DILocation(line: 18, column: 65, scope: !14)
!36 = !DILocation(line: 19, column: 9, scope: !37)
!37 = distinct !DILexicalBlock(scope: !14, file: !1, line: 19, column: 9)
!38 = !DILocation(line: 19, column: 13, scope: !37)
!39 = !DILocation(line: 19, column: 21, scope: !37)
!40 = !DILocation(line: 19, column: 24, scope: !37)
!41 = !DILocation(line: 19, column: 29, scope: !37)
!42 = !DILocation(line: 19, column: 34, scope: !37)
!43 = !DILocation(line: 19, column: 9, scope: !14)
!44 = !DILocation(line: 20, column: 9, scope: !45)
!45 = distinct !DILexicalBlock(scope: !37, file: !1, line: 19, column: 43)
!46 = !DILocation(line: 22, column: 15, scope: !14)
!47 = !DILocation(line: 22, column: 20, scope: !14)
!48 = !DILocation(line: 22, column: 6, scope: !14)
!49 = !DILocation(line: 22, column: 13, scope: !14)
!50 = !DILocation(line: 23, column: 15, scope: !14)
!51 = !DILocation(line: 23, column: 20, scope: !14)
!52 = !DILocation(line: 23, column: 6, scope: !14)
!53 = !DILocation(line: 23, column: 13, scope: !14)
!54 = !DILocation(line: 24, column: 5, scope: !14)
!55 = !DILocation(line: 25, column: 1, scope: !14)
!56 = distinct !DISubprogram(name: "PyFile_AsFile", scope: !1, file: !1, line: 28, type: !57, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!57 = !DISubroutineType(types: !58)
!58 = !{!3, !18}
!59 = !DILocalVariable(name: "f", arg: 1, scope: !56, file: !1, line: 28, type: !18)
!60 = !DILocation(line: 28, column: 31, scope: !56)
!61 = !DILocation(line: 29, column: 12, scope: !56)
!62 = !DILocation(line: 29, column: 5, scope: !56)
!63 = distinct !DISubprogram(name: "Py_InitModule", scope: !1, file: !1, line: 33, type: !64, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!64 = !DISubroutineType(types: !65)
!65 = !{!18, !24, !3}
!66 = !DILocalVariable(name: "name", arg: 1, scope: !63, file: !1, line: 33, type: !24)
!67 = !DILocation(line: 33, column: 31, scope: !63)
!68 = !DILocalVariable(name: "methods", arg: 2, scope: !63, file: !1, line: 33, type: !3)
!69 = !DILocation(line: 33, column: 43, scope: !63)
!70 = !DILocation(line: 34, column: 12, scope: !63)
!71 = !DILocation(line: 34, column: 5, scope: !63)
!72 = distinct !DISubprogram(name: "PyArg_ParseTuple", scope: !1, file: !1, line: 38, type: !73, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!73 = !DISubroutineType(types: !74)
!74 = !{!17, !18, !24, null}
!75 = !DILocalVariable(name: "args", arg: 1, scope: !72, file: !1, line: 38, type: !18)
!76 = !DILocation(line: 38, column: 32, scope: !72)
!77 = !DILocalVariable(name: "format", arg: 2, scope: !72, file: !1, line: 38, type: !24)
!78 = !DILocation(line: 38, column: 44, scope: !72)
!79 = !DILocation(line: 39, column: 5, scope: !72)
!80 = distinct !DISubprogram(name: "Py_BuildValue", scope: !1, file: !1, line: 43, type: !81, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!81 = !DISubroutineType(types: !82)
!82 = !{!18, !24, null}
!83 = !DILocalVariable(name: "format", arg: 1, scope: !80, file: !1, line: 43, type: !24)
!84 = !DILocation(line: 43, column: 31, scope: !80)
!85 = !DILocalVariable(name: "obj", scope: !80, file: !1, line: 44, type: !18)
!86 = !DILocation(line: 44, column: 15, scope: !80)
!87 = !DILocation(line: 44, column: 21, scope: !80)
!88 = !DILocation(line: 45, column: 5, scope: !80)
!89 = !DILocation(line: 45, column: 10, scope: !80)
!90 = !DILocation(line: 45, column: 17, scope: !80)
!91 = !DILocation(line: 46, column: 17, scope: !80)
!92 = !DILocation(line: 46, column: 5, scope: !80)
!93 = !DILocation(line: 46, column: 10, scope: !80)
!94 = !DILocation(line: 46, column: 15, scope: !80)
!95 = !DILocation(line: 47, column: 5, scope: !80)
!96 = !DILocation(line: 47, column: 10, scope: !80)
!97 = !DILocation(line: 47, column: 17, scope: !80)
!98 = !DILocation(line: 48, column: 12, scope: !80)
!99 = !DILocation(line: 48, column: 5, scope: !80)
!100 = distinct !DISubprogram(name: "Py_DECREF", scope: !1, file: !1, line: 52, type: !101, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !18}
!103 = !DILocalVariable(name: "obj", arg: 1, scope: !100, file: !1, line: 52, type: !18)
!104 = !DILocation(line: 52, column: 26, scope: !100)
!105 = !DILocation(line: 53, column: 9, scope: !106)
!106 = distinct !DILexicalBlock(scope: !100, file: !1, line: 53, column: 9)
!107 = !DILocation(line: 53, column: 13, scope: !106)
!108 = !DILocation(line: 53, column: 18, scope: !106)
!109 = !DILocation(line: 53, column: 23, scope: !106)
!110 = !DILocation(line: 53, column: 16, scope: !106)
!111 = !DILocation(line: 53, column: 30, scope: !106)
!112 = !DILocation(line: 53, column: 9, scope: !100)
!113 = !DILocation(line: 54, column: 14, scope: !114)
!114 = distinct !DILexicalBlock(scope: !106, file: !1, line: 53, column: 36)
!115 = !DILocation(line: 54, column: 19, scope: !114)
!116 = !DILocation(line: 54, column: 9, scope: !114)
!117 = !DILocation(line: 55, column: 14, scope: !114)
!118 = !DILocation(line: 55, column: 9, scope: !114)
!119 = !DILocation(line: 56, column: 5, scope: !114)
!120 = !DILocation(line: 57, column: 1, scope: !100)
!121 = distinct !DISubprogram(name: "PyObject_CallObject", scope: !1, file: !1, line: 60, type: !122, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!122 = !DISubroutineType(types: !123)
!123 = !{!18, !18, !18}
!124 = !DILocalVariable(name: "callable", arg: 1, scope: !121, file: !1, line: 60, type: !18)
!125 = !DILocation(line: 60, column: 41, scope: !121)
!126 = !DILocalVariable(name: "args", arg: 2, scope: !121, file: !1, line: 60, type: !18)
!127 = !DILocation(line: 60, column: 61, scope: !121)
!128 = !DILocalVariable(name: "obj", scope: !121, file: !1, line: 61, type: !18)
!129 = !DILocation(line: 61, column: 15, scope: !121)
!130 = !DILocation(line: 61, column: 21, scope: !121)
!131 = !DILocation(line: 62, column: 5, scope: !121)
!132 = !DILocation(line: 62, column: 10, scope: !121)
!133 = !DILocation(line: 62, column: 17, scope: !121)
!134 = !DILocalVariable(name: "data_size", scope: !121, file: !1, line: 65, type: !17)
!135 = !DILocation(line: 65, column: 9, scope: !121)
!136 = !DILocation(line: 66, column: 24, scope: !121)
!137 = !DILocation(line: 66, column: 17, scope: !121)
!138 = !DILocation(line: 66, column: 5, scope: !121)
!139 = !DILocation(line: 66, column: 10, scope: !121)
!140 = !DILocation(line: 66, column: 15, scope: !121)
!141 = !DILocation(line: 67, column: 19, scope: !121)
!142 = !DILocation(line: 67, column: 5, scope: !121)
!143 = !DILocation(line: 67, column: 10, scope: !121)
!144 = !DILocation(line: 67, column: 17, scope: !121)
!145 = !DILocation(line: 68, column: 24, scope: !121)
!146 = !DILocation(line: 68, column: 29, scope: !121)
!147 = !DILocation(line: 68, column: 35, scope: !121)
!148 = !DILocation(line: 68, column: 5, scope: !121)
!149 = !DILocation(line: 70, column: 12, scope: !121)
!150 = !DILocation(line: 70, column: 5, scope: !121)
!151 = distinct !DISubprogram(name: "xmlPythonFileRead", scope: !1, file: !1, line: 74, type: !152, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!152 = !DISubroutineType(types: !153)
!153 = !{!17, !3, !24, !17}
!154 = !DILocalVariable(name: "context", arg: 1, scope: !151, file: !1, line: 74, type: !3)
!155 = !DILocation(line: 74, column: 29, scope: !151)
!156 = !DILocalVariable(name: "buffer", arg: 2, scope: !151, file: !1, line: 74, type: !24)
!157 = !DILocation(line: 74, column: 44, scope: !151)
!158 = !DILocalVariable(name: "len", arg: 3, scope: !151, file: !1, line: 74, type: !17)
!159 = !DILocation(line: 74, column: 56, scope: !151)
!160 = !DILocalVariable(name: "ret", scope: !151, file: !1, line: 75, type: !18)
!161 = !DILocation(line: 75, column: 15, scope: !151)
!162 = !DILocalVariable(name: "data", scope: !151, file: !1, line: 76, type: !24)
!163 = !DILocation(line: 76, column: 11, scope: !151)
!164 = !DILocalVariable(name: "lenread", scope: !151, file: !1, line: 77, type: !17)
!165 = !DILocation(line: 77, column: 9, scope: !151)
!166 = !DILocation(line: 80, column: 11, scope: !151)
!167 = !DILocation(line: 80, column: 9, scope: !151)
!168 = !DILocation(line: 81, column: 9, scope: !169)
!169 = distinct !DILexicalBlock(scope: !151, file: !1, line: 81, column: 9)
!170 = !DILocation(line: 81, column: 13, scope: !169)
!171 = !DILocation(line: 81, column: 9, scope: !151)
!172 = !DILocation(line: 82, column: 9, scope: !173)
!173 = distinct !DILexicalBlock(scope: !169, file: !1, line: 81, column: 22)
!174 = !DILocation(line: 86, column: 34, scope: !175)
!175 = distinct !DILexicalBlock(scope: !151, file: !1, line: 86, column: 9)
!176 = !DILocation(line: 86, column: 9, scope: !175)
!177 = !DILocation(line: 86, column: 56, scope: !175)
!178 = !DILocation(line: 86, column: 9, scope: !151)
!179 = !DILocation(line: 87, column: 9, scope: !180)
!180 = distinct !DILexicalBlock(scope: !175, file: !1, line: 86, column: 61)
!181 = !DILocation(line: 88, column: 19, scope: !180)
!182 = !DILocation(line: 88, column: 9, scope: !180)
!183 = !DILocation(line: 89, column: 9, scope: !180)
!184 = !DILocation(line: 93, column: 9, scope: !185)
!185 = distinct !DILexicalBlock(scope: !151, file: !1, line: 93, column: 9)
!186 = !DILocation(line: 93, column: 19, scope: !185)
!187 = !DILocation(line: 93, column: 17, scope: !185)
!188 = !DILocation(line: 93, column: 9, scope: !151)
!189 = !DILocation(line: 94, column: 16, scope: !190)
!190 = distinct !DILexicalBlock(scope: !185, file: !1, line: 93, column: 24)
!191 = !DILocation(line: 94, column: 24, scope: !190)
!192 = !DILocation(line: 94, column: 30, scope: !190)
!193 = !DILocation(line: 94, column: 9, scope: !190)
!194 = !DILocation(line: 95, column: 5, scope: !190)
!195 = !DILocation(line: 96, column: 16, scope: !196)
!196 = distinct !DILexicalBlock(scope: !185, file: !1, line: 95, column: 12)
!197 = !DILocation(line: 96, column: 24, scope: !196)
!198 = !DILocation(line: 96, column: 30, scope: !196)
!199 = !DILocation(line: 96, column: 9, scope: !196)
!200 = !DILocation(line: 102, column: 5, scope: !151)
!201 = !DILocation(line: 105, column: 5, scope: !151)
!202 = !DILocation(line: 107, column: 15, scope: !151)
!203 = !DILocation(line: 107, column: 5, scope: !151)
!204 = !DILocation(line: 108, column: 12, scope: !151)
!205 = !DILocation(line: 108, column: 5, scope: !151)
!206 = !DILocation(line: 109, column: 1, scope: !151)
!207 = distinct !DISubprogram(name: "libxml_xmlCreatePushParser", scope: !1, file: !1, line: 112, type: !208, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!208 = !DISubroutineType(types: !209)
!209 = !{!17, !18, !18}
!210 = !DILocalVariable(name: "self", arg: 1, scope: !207, file: !1, line: 112, type: !18)
!211 = !DILocation(line: 112, column: 42, scope: !207)
!212 = !DILocalVariable(name: "args", arg: 2, scope: !207, file: !1, line: 112, type: !18)
!213 = !DILocation(line: 112, column: 58, scope: !207)
!214 = !DILocalVariable(name: "buffer", scope: !207, file: !1, line: 113, type: !24)
!215 = !DILocation(line: 113, column: 11, scope: !207)
!216 = !DILocalVariable(name: "len", scope: !207, file: !1, line: 114, type: !17)
!217 = !DILocation(line: 114, column: 9, scope: !207)
!218 = !DILocalVariable(name: "context", scope: !207, file: !1, line: 115, type: !3)
!219 = !DILocation(line: 115, column: 11, scope: !207)
!220 = !DILocation(line: 115, column: 21, scope: !207)
!221 = !DILocation(line: 118, column: 27, scope: !222)
!222 = distinct !DILexicalBlock(scope: !207, file: !1, line: 118, column: 9)
!223 = !DILocation(line: 118, column: 10, scope: !222)
!224 = !DILocation(line: 118, column: 9, scope: !207)
!225 = !DILocation(line: 119, column: 9, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !1, line: 118, column: 55)
!227 = !DILocation(line: 123, column: 24, scope: !207)
!228 = !DILocation(line: 123, column: 32, scope: !207)
!229 = !DILocation(line: 123, column: 5, scope: !207)
!230 = !DILocation(line: 124, column: 24, scope: !207)
!231 = !DILocation(line: 124, column: 5, scope: !207)
!232 = !DILocation(line: 127, column: 17, scope: !207)
!233 = !DILocation(line: 127, column: 21, scope: !207)
!234 = !DILocation(line: 127, column: 5, scope: !207)
!235 = !DILocation(line: 128, column: 17, scope: !207)
!236 = !DILocation(line: 128, column: 21, scope: !207)
!237 = !DILocation(line: 128, column: 5, scope: !207)
!238 = !DILocation(line: 131, column: 30, scope: !207)
!239 = !DILocation(line: 131, column: 39, scope: !207)
!240 = !DILocation(line: 131, column: 47, scope: !207)
!241 = !DILocation(line: 131, column: 12, scope: !207)
!242 = !DILocation(line: 131, column: 5, scope: !207)
!243 = !DILocation(line: 132, column: 1, scope: !207)
!244 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 134, type: !245, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!245 = !DISubroutineType(types: !246)
!246 = !{!17}
!247 = !DILocalVariable(name: "self", scope: !244, file: !1, line: 136, type: !18)
!248 = !DILocation(line: 136, column: 15, scope: !244)
!249 = !DILocation(line: 136, column: 22, scope: !244)
!250 = !DILocalVariable(name: "args", scope: !244, file: !1, line: 137, type: !18)
!251 = !DILocation(line: 137, column: 15, scope: !244)
!252 = !DILocation(line: 137, column: 22, scope: !244)
!253 = !DILocation(line: 139, column: 5, scope: !244)
!254 = !DILocation(line: 139, column: 11, scope: !244)
!255 = !DILocation(line: 139, column: 18, scope: !244)
!256 = !DILocation(line: 140, column: 5, scope: !244)
!257 = !DILocation(line: 140, column: 11, scope: !244)
!258 = !DILocation(line: 140, column: 18, scope: !244)
!259 = !DILocation(line: 143, column: 5, scope: !244)
!260 = !DILocation(line: 146, column: 32, scope: !244)
!261 = !DILocation(line: 146, column: 38, scope: !244)
!262 = !DILocation(line: 146, column: 5, scope: !244)
!263 = !DILocation(line: 149, column: 15, scope: !244)
!264 = !DILocation(line: 149, column: 5, scope: !244)
!265 = !DILocation(line: 150, column: 15, scope: !244)
!266 = !DILocation(line: 150, column: 5, scope: !244)
!267 = !DILocation(line: 152, column: 5, scope: !244)
!268 = distinct !DISubprogram(name: "memcpy", scope: !269, file: !269, line: 12, type: !270, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !29)
!269 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!270 = !DISubroutineType(types: !271)
!271 = !{!3, !3, !272, !274}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !275, line: 46, baseType: !276)
!275 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!276 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!277 = !DILocalVariable(name: "destaddr", arg: 1, scope: !268, file: !269, line: 12, type: !3)
!278 = !DILocation(line: 12, column: 20, scope: !268)
!279 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !268, file: !269, line: 12, type: !272)
!280 = !DILocation(line: 12, column: 42, scope: !268)
!281 = !DILocalVariable(name: "len", arg: 3, scope: !268, file: !269, line: 12, type: !274)
!282 = !DILocation(line: 12, column: 58, scope: !268)
!283 = !DILocalVariable(name: "dest", scope: !268, file: !269, line: 13, type: !24)
!284 = !DILocation(line: 13, column: 9, scope: !268)
!285 = !DILocation(line: 13, column: 16, scope: !268)
!286 = !DILocalVariable(name: "src", scope: !268, file: !269, line: 14, type: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!289 = !DILocation(line: 14, column: 15, scope: !268)
!290 = !DILocation(line: 14, column: 21, scope: !268)
!291 = !DILocation(line: 16, column: 3, scope: !268)
!292 = !DILocation(line: 16, column: 13, scope: !268)
!293 = !DILocation(line: 16, column: 16, scope: !268)
!294 = !DILocation(line: 17, column: 19, scope: !268)
!295 = !DILocation(line: 17, column: 15, scope: !268)
!296 = !DILocation(line: 17, column: 10, scope: !268)
!297 = !DILocation(line: 17, column: 13, scope: !268)
!298 = distinct !{!298, !291, !294, !299}
!299 = !{!"llvm.loop.mustprogress"}
!300 = !DILocation(line: 18, column: 10, scope: !268)
!301 = !DILocation(line: 18, column: 3, scope: !268)

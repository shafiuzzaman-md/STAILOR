; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/210_libxml.c_287_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/210_libxml.c_287_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._object = type { i32, i8* }

@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@PyObject_CallMethod.dummy_data = internal global [10 x i8] c"test data\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@PyString_AsString.data = internal global [256 x i8] zeroinitializer, align 16, !dbg !19
@.str.2 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"lenread\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"(i)\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"xmlPythonFileReadRaw: result is not a String\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.8 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/210_libxml.c_287_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlPythonFileReadRaw = private unnamed_addr constant [50 x i8] c"int xmlPythonFileReadRaw(PyObject *, char *, int)\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"xml_input\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"xml_len\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"dummy.xml\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._object* @PyFile_FromString(i8* noundef %0, i8* noundef %1) #0 !dbg !41 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._object*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !44, metadata !DIExpression()), !dbg !45
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata %struct._object** %5, metadata !48, metadata !DIExpression()), !dbg !49
  %6 = call noalias i8* @malloc(i64 noundef 16) #8, !dbg !50
  %7 = bitcast i8* %6 to %struct._object*, !dbg !51
  store %struct._object* %7, %struct._object** %5, align 8, !dbg !49
  %8 = load %struct._object*, %struct._object** %5, align 8, !dbg !52
  %9 = icmp ne %struct._object* %8, null, !dbg !52
  br i1 %9, label %10, label %15, !dbg !54

10:                                               ; preds = %2
  %11 = load %struct._object*, %struct._object** %5, align 8, !dbg !55
  %12 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !57
  store i32 1, i32* %12, align 8, !dbg !58
  %13 = load %struct._object*, %struct._object** %5, align 8, !dbg !59
  %14 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !60
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %14, align 8, !dbg !61
  br label %15, !dbg !62

15:                                               ; preds = %10, %2
  %16 = load %struct._object*, %struct._object** %5, align 8, !dbg !63
  ret %struct._object* %16, !dbg !64
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._object* @PyObject_CallMethod(%struct._object* noundef %0, i8* noundef %1, i8* noundef %2, ...) #0 !dbg !2 {
  %4 = alloca %struct._object*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._object*, align 8
  store %struct._object* %0, %struct._object** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._object** %4, metadata !65, metadata !DIExpression()), !dbg !66
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !67, metadata !DIExpression()), !dbg !68
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !69, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata %struct._object** %7, metadata !71, metadata !DIExpression()), !dbg !72
  %8 = call noalias i8* @malloc(i64 noundef 16) #8, !dbg !73
  %9 = bitcast i8* %8 to %struct._object*, !dbg !74
  store %struct._object* %9, %struct._object** %7, align 8, !dbg !72
  %10 = load %struct._object*, %struct._object** %7, align 8, !dbg !75
  %11 = icmp ne %struct._object* %10, null, !dbg !75
  br i1 %11, label %12, label %17, !dbg !77

12:                                               ; preds = %3
  %13 = load %struct._object*, %struct._object** %7, align 8, !dbg !78
  %14 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !80
  store i32 1, i32* %14, align 8, !dbg !81
  %15 = load %struct._object*, %struct._object** %7, align 8, !dbg !82
  %16 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !83
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8, !dbg !84
  br label %17, !dbg !85

17:                                               ; preds = %12, %3
  %18 = load %struct._object*, %struct._object** %7, align 8, !dbg !86
  ret %struct._object* %18, !dbg !87
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PyString_Check(%struct._object* noundef %0) #0 !dbg !88 {
  %2 = alloca %struct._object*, align 8
  store %struct._object* %0, %struct._object** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._object** %2, metadata !91, metadata !DIExpression()), !dbg !92
  %3 = load %struct._object*, %struct._object** %2, align 8, !dbg !93
  %4 = icmp ne %struct._object* %3, null, !dbg !93
  br i1 %4, label %5, label %11, !dbg !94

5:                                                ; preds = %1
  %6 = load %struct._object*, %struct._object** %2, align 8, !dbg !95
  %7 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1, !dbg !96
  %8 = load i8*, i8** %7, align 8, !dbg !96
  %9 = call i32 @strcmp(i8* noundef %8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !97
  %10 = icmp eq i32 %9, 0, !dbg !98
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ], !dbg !99
  %13 = zext i1 %12 to i32, !dbg !94
  ret i32 %13, !dbg !100
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @PyString_AsString(%struct._object* noundef %0) #0 !dbg !21 {
  %2 = alloca %struct._object*, align 8
  store %struct._object* %0, %struct._object** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._object** %2, metadata !101, metadata !DIExpression()), !dbg !102
  call void @klee_make_symbolic(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @PyString_AsString.data, i64 0, i64 0), i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !103
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @PyString_AsString.data, i64 0, i64 0), !dbg !104
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PyString_Size(%struct._object* noundef %0) #0 !dbg !105 {
  %2 = alloca %struct._object*, align 8
  %3 = alloca i32, align 4
  store %struct._object* %0, %struct._object** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._object** %2, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i32* %3, metadata !108, metadata !DIExpression()), !dbg !109
  %4 = bitcast i32* %3 to i8*, !dbg !110
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)), !dbg !111
  %5 = load i32, i32* %3, align 4, !dbg !112
  %6 = icmp sge i32 %5, 0, !dbg !113
  %7 = zext i1 %6 to i32, !dbg !113
  %8 = sext i32 %7 to i64, !dbg !112
  call void @klee_assume(i64 noundef %8), !dbg !114
  %9 = load i32, i32* %3, align 4, !dbg !115
  ret i32 %9, !dbg !116
}

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Py_DECREF(%struct._object* noundef %0) #0 !dbg !117 {
  %2 = alloca %struct._object*, align 8
  store %struct._object* %0, %struct._object** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._object** %2, metadata !120, metadata !DIExpression()), !dbg !121
  %3 = load %struct._object*, %struct._object** %2, align 8, !dbg !122
  %4 = icmp ne %struct._object* %3, null, !dbg !122
  br i1 %4, label %5, label %14, !dbg !124

5:                                                ; preds = %1
  %6 = load %struct._object*, %struct._object** %2, align 8, !dbg !125
  %7 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !126
  %8 = load i32, i32* %7, align 8, !dbg !127
  %9 = add nsw i32 %8, -1, !dbg !127
  store i32 %9, i32* %7, align 8, !dbg !127
  %10 = icmp eq i32 %9, 0, !dbg !128
  br i1 %10, label %11, label %14, !dbg !129

11:                                               ; preds = %5
  %12 = load %struct._object*, %struct._object** %2, align 8, !dbg !130
  %13 = bitcast %struct._object* %12 to i8*, !dbg !130
  call void @free(i8* noundef %13) #8, !dbg !132
  br label %14, !dbg !133

14:                                               ; preds = %11, %5, %1
  ret void, !dbg !134
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlPythonFileReadRaw(%struct._object* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !135 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._object*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._object*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct._object* %0, %struct._object** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._object** %5, metadata !138, metadata !DIExpression()), !dbg !139
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !140, metadata !DIExpression()), !dbg !141
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !142, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata %struct._object** %8, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i8** %9, metadata !146, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata i32* %10, metadata !148, metadata !DIExpression()), !dbg !149
  %11 = load %struct._object*, %struct._object** %5, align 8, !dbg !150
  %12 = load i32, i32* %7, align 4, !dbg !151
  %13 = call %struct._object* (%struct._object*, i8*, i8*, ...) @PyObject_CallMethod(%struct._object* noundef %11, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 noundef %12), !dbg !152
  store %struct._object* %13, %struct._object** %8, align 8, !dbg !153
  %14 = load %struct._object*, %struct._object** %8, align 8, !dbg !154
  %15 = icmp eq %struct._object* %14, null, !dbg !156
  br i1 %15, label %16, label %17, !dbg !157

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4, !dbg !158
  br label %49, !dbg !158

17:                                               ; preds = %3
  %18 = load %struct._object*, %struct._object** %8, align 8, !dbg !160
  %19 = call i32 @PyString_Check(%struct._object* noundef %18), !dbg !162
  %20 = icmp ne i32 %19, 0, !dbg !162
  br i1 %20, label %21, label %26, !dbg !163

21:                                               ; preds = %17
  %22 = load %struct._object*, %struct._object** %8, align 8, !dbg !164
  %23 = call i8* @PyString_AsString(%struct._object* noundef %22), !dbg !166
  store i8* %23, i8** %9, align 8, !dbg !167
  %24 = load %struct._object*, %struct._object** %8, align 8, !dbg !168
  %25 = call i32 @PyString_Size(%struct._object* noundef %24), !dbg !169
  store i32 %25, i32* %10, align 4, !dbg !170
  br label %29, !dbg !171

26:                                               ; preds = %17
  %27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0)), !dbg !172
  %28 = load %struct._object*, %struct._object** %8, align 8, !dbg !174
  call void @Py_DECREF(%struct._object* noundef %28), !dbg !175
  store i32 -1, i32* %4, align 4, !dbg !176
  br label %49, !dbg !176

29:                                               ; preds = %21
  %30 = load i32, i32* %10, align 4, !dbg !177
  %31 = load i32, i32* %7, align 4, !dbg !179
  %32 = icmp sgt i32 %30, %31, !dbg !180
  br i1 %32, label %33, label %40, !dbg !181

33:                                               ; preds = %29
  %34 = load i8*, i8** %6, align 8, !dbg !182
  %35 = load i8*, i8** %9, align 8, !dbg !184
  %36 = load i32, i32* %7, align 4, !dbg !185
  %37 = sext i32 %36 to i64, !dbg !185
  %38 = call i8* @memcpy(i8* %34, i8* %35, i64 %37), !dbg !186
  %39 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.8, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.xmlPythonFileReadRaw, i64 0, i64 0)), !dbg !187
  br label %46, !dbg !188

40:                                               ; preds = %29
  %41 = load i8*, i8** %6, align 8, !dbg !189
  %42 = load i8*, i8** %9, align 8, !dbg !191
  %43 = load i32, i32* %10, align 4, !dbg !192
  %44 = sext i32 %43 to i64, !dbg !192
  %45 = call i8* @memcpy(i8* %41, i8* %42, i64 %44), !dbg !193
  br label %46

46:                                               ; preds = %40, %33
  %47 = load %struct._object*, %struct._object** %8, align 8, !dbg !194
  call void @Py_DECREF(%struct._object* noundef %47), !dbg !195
  %48 = load i32, i32* %10, align 4, !dbg !196
  store i32 %48, i32* %4, align 4, !dbg !197
  br label %49, !dbg !197

49:                                               ; preds = %46, %26, %16
  %50 = load i32, i32* %4, align 4, !dbg !198
  ret i32 %50, !dbg !198
}

declare i32 @printf(i8* noundef, ...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !199 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [2048 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct._object*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !202, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.declare(metadata [1024 x i8]* %3, metadata !204, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.declare(metadata [2048 x i8]* %4, metadata !209, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.declare(metadata i32* %5, metadata !214, metadata !DIExpression()), !dbg !215
  %8 = bitcast i32* %2 to i8*, !dbg !216
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)), !dbg !217
  %9 = load i32, i32* %2, align 4, !dbg !218
  %10 = icmp sge i32 %9, 0, !dbg !219
  %11 = zext i1 %10 to i32, !dbg !219
  %12 = sext i32 %11 to i64, !dbg !218
  call void @klee_assume(i64 noundef %12), !dbg !220
  %13 = load i32, i32* %2, align 4, !dbg !221
  %14 = icmp slt i32 %13, 1024, !dbg !222
  %15 = zext i1 %14 to i32, !dbg !222
  %16 = sext i32 %15 to i64, !dbg !221
  call void @klee_assume(i64 noundef %16), !dbg !223
  %17 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0, !dbg !224
  call void @klee_make_symbolic(i8* noundef %17, i64 noundef 2048, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)), !dbg !225
  %18 = bitcast i32* %5 to i8*, !dbg !226
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0)), !dbg !227
  %19 = load i32, i32* %5, align 4, !dbg !228
  %20 = icmp sge i32 %19, 0, !dbg !229
  %21 = zext i1 %20 to i32, !dbg !229
  %22 = sext i32 %21 to i64, !dbg !228
  call void @klee_assume(i64 noundef %22), !dbg !230
  %23 = load i32, i32* %5, align 4, !dbg !231
  %24 = sext i32 %23 to i64, !dbg !231
  %25 = icmp ult i64 %24, 2048, !dbg !232
  %26 = zext i1 %25 to i32, !dbg !232
  %27 = sext i32 %26 to i64, !dbg !231
  call void @klee_assume(i64 noundef %27), !dbg !233
  call void @llvm.dbg.declare(metadata %struct._object** %6, metadata !234, metadata !DIExpression()), !dbg !235
  %28 = call %struct._object* @PyFile_FromString(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)), !dbg !236
  store %struct._object* %28, %struct._object** %6, align 8, !dbg !235
  %29 = load %struct._object*, %struct._object** %6, align 8, !dbg !237
  %30 = icmp ne %struct._object* %29, null, !dbg !237
  br i1 %30, label %32, label %31, !dbg !239

31:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !240
  br label %38, !dbg !240

32:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata i32* %7, metadata !241, metadata !DIExpression()), !dbg !242
  %33 = load %struct._object*, %struct._object** %6, align 8, !dbg !243
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !244
  %35 = load i32, i32* %2, align 4, !dbg !245
  %36 = call i32 @xmlPythonFileReadRaw(%struct._object* noundef %33, i8* noundef %34, i32 noundef %35), !dbg !246
  store i32 %36, i32* %7, align 4, !dbg !242
  %37 = load %struct._object*, %struct._object** %6, align 8, !dbg !247
  call void @Py_DECREF(%struct._object* noundef %37), !dbg !248
  store i32 0, i32* %1, align 4, !dbg !249
  br label %38, !dbg !249

38:                                               ; preds = %32, %31
  %39 = load i32, i32* %1, align 4, !dbg !250
  ret i32 %39, !dbg !250
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !251 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !260, metadata !DIExpression()), !dbg !261
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !262, metadata !DIExpression()), !dbg !263
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !264, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.declare(metadata i8** %7, metadata !266, metadata !DIExpression()), !dbg !267
  %9 = load i8*, i8** %4, align 8, !dbg !268
  store i8* %9, i8** %7, align 8, !dbg !267
  call void @llvm.dbg.declare(metadata i8** %8, metadata !269, metadata !DIExpression()), !dbg !272
  %10 = load i8*, i8** %5, align 8, !dbg !273
  store i8* %10, i8** %8, align 8, !dbg !272
  br label %11, !dbg !274

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !275
  %13 = add i64 %12, -1, !dbg !275
  store i64 %13, i64* %6, align 8, !dbg !275
  %14 = icmp ugt i64 %12, 0, !dbg !276
  br i1 %14, label %15, label %21, !dbg !274

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !277
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !277
  store i8* %17, i8** %8, align 8, !dbg !277
  %18 = load i8, i8* %16, align 1, !dbg !278
  %19 = load i8*, i8** %7, align 8, !dbg !279
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !279
  store i8* %20, i8** %7, align 8, !dbg !279
  store i8 %18, i8* %19, align 1, !dbg !280
  br label %11, !dbg !274, !llvm.loop !281

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !283
  ret i8* %22, !dbg !284
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!15, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40, !40}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dummy_data", scope: !2, file: !3, line: 25, type: !28, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "PyObject_CallMethod", scope: !3, file: !3, line: 23, type: !4, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !24)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/210_libxml.c_287_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "2f296d5ec902bcc678dc77fe078788c7")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !6, !13, !13, null}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !3, line: 12, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !3, line: 9, size: 128, elements: !9)
!9 = !{!10, !12}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !8, file: !3, line: 10, baseType: !11, size: 32)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !8, file: !3, line: 11, baseType: !13, size: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !16, globals: !18, splitDebugInlining: false, nameTableKind: None)
!16 = !{!6, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !{!0, !19}
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "data", scope: !21, file: !3, line: 39, type: !25, isLocal: true, isDefinition: true)
!21 = distinct !DISubprogram(name: "PyString_AsString", scope: !3, file: !3, line: 38, type: !22, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !24)
!22 = !DISubroutineType(types: !23)
!23 = !{!13, !6}
!24 = !{}
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2048, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 256)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 80, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 10)
!31 = distinct !DICompileUnit(language: DW_LANG_C99, file: !32, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!32 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!33 = !{i32 7, !"Dwarf Version", i32 5}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{i32 1, !"wchar_size", i32 4}
!36 = !{i32 7, !"PIC Level", i32 2}
!37 = !{i32 7, !"PIE Level", i32 2}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"Ubuntu clang version 14.0.6"}
!41 = distinct !DISubprogram(name: "PyFile_FromString", scope: !3, file: !3, line: 14, type: !42, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !24)
!42 = !DISubroutineType(types: !43)
!43 = !{!6, !13, !13}
!44 = !DILocalVariable(name: "filename", arg: 1, scope: !41, file: !3, line: 14, type: !13)
!45 = !DILocation(line: 14, column: 35, scope: !41)
!46 = !DILocalVariable(name: "mode", arg: 2, scope: !41, file: !3, line: 14, type: !13)
!47 = !DILocation(line: 14, column: 51, scope: !41)
!48 = !DILocalVariable(name: "obj", scope: !41, file: !3, line: 15, type: !6)
!49 = !DILocation(line: 15, column: 15, scope: !41)
!50 = !DILocation(line: 15, column: 32, scope: !41)
!51 = !DILocation(line: 15, column: 21, scope: !41)
!52 = !DILocation(line: 16, column: 9, scope: !53)
!53 = distinct !DILexicalBlock(scope: !41, file: !3, line: 16, column: 9)
!54 = !DILocation(line: 16, column: 9, scope: !41)
!55 = !DILocation(line: 17, column: 9, scope: !56)
!56 = distinct !DILexicalBlock(scope: !53, file: !3, line: 16, column: 14)
!57 = !DILocation(line: 17, column: 14, scope: !56)
!58 = !DILocation(line: 17, column: 24, scope: !56)
!59 = !DILocation(line: 18, column: 9, scope: !56)
!60 = !DILocation(line: 18, column: 14, scope: !56)
!61 = !DILocation(line: 18, column: 22, scope: !56)
!62 = !DILocation(line: 19, column: 5, scope: !56)
!63 = !DILocation(line: 20, column: 12, scope: !41)
!64 = !DILocation(line: 20, column: 5, scope: !41)
!65 = !DILocalVariable(name: "o", arg: 1, scope: !2, file: !3, line: 23, type: !6)
!66 = !DILocation(line: 23, column: 41, scope: !2)
!67 = !DILocalVariable(name: "method", arg: 2, scope: !2, file: !3, line: 23, type: !13)
!68 = !DILocation(line: 23, column: 50, scope: !2)
!69 = !DILocalVariable(name: "format", arg: 3, scope: !2, file: !3, line: 23, type: !13)
!70 = !DILocation(line: 23, column: 64, scope: !2)
!71 = !DILocalVariable(name: "obj", scope: !2, file: !3, line: 26, type: !6)
!72 = !DILocation(line: 26, column: 15, scope: !2)
!73 = !DILocation(line: 26, column: 32, scope: !2)
!74 = !DILocation(line: 26, column: 21, scope: !2)
!75 = !DILocation(line: 27, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !2, file: !3, line: 27, column: 9)
!77 = !DILocation(line: 27, column: 9, scope: !2)
!78 = !DILocation(line: 28, column: 9, scope: !79)
!79 = distinct !DILexicalBlock(scope: !76, file: !3, line: 27, column: 14)
!80 = !DILocation(line: 28, column: 14, scope: !79)
!81 = !DILocation(line: 28, column: 24, scope: !79)
!82 = !DILocation(line: 29, column: 9, scope: !79)
!83 = !DILocation(line: 29, column: 14, scope: !79)
!84 = !DILocation(line: 29, column: 22, scope: !79)
!85 = !DILocation(line: 30, column: 5, scope: !79)
!86 = !DILocation(line: 31, column: 12, scope: !2)
!87 = !DILocation(line: 31, column: 5, scope: !2)
!88 = distinct !DISubprogram(name: "PyString_Check", scope: !3, file: !3, line: 34, type: !89, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !24)
!89 = !DISubroutineType(types: !90)
!90 = !{!11, !6}
!91 = !DILocalVariable(name: "o", arg: 1, scope: !88, file: !3, line: 34, type: !6)
!92 = !DILocation(line: 34, column: 30, scope: !88)
!93 = !DILocation(line: 35, column: 13, scope: !88)
!94 = !DILocation(line: 35, column: 15, scope: !88)
!95 = !DILocation(line: 35, column: 25, scope: !88)
!96 = !DILocation(line: 35, column: 28, scope: !88)
!97 = !DILocation(line: 35, column: 18, scope: !88)
!98 = !DILocation(line: 35, column: 47, scope: !88)
!99 = !DILocation(line: 0, scope: !88)
!100 = !DILocation(line: 35, column: 5, scope: !88)
!101 = !DILocalVariable(name: "o", arg: 1, scope: !21, file: !3, line: 38, type: !6)
!102 = !DILocation(line: 38, column: 35, scope: !21)
!103 = !DILocation(line: 40, column: 5, scope: !21)
!104 = !DILocation(line: 41, column: 5, scope: !21)
!105 = distinct !DISubprogram(name: "PyString_Size", scope: !3, file: !3, line: 44, type: !89, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !24)
!106 = !DILocalVariable(name: "o", arg: 1, scope: !105, file: !3, line: 44, type: !6)
!107 = !DILocation(line: 44, column: 29, scope: !105)
!108 = !DILocalVariable(name: "size", scope: !105, file: !3, line: 45, type: !11)
!109 = !DILocation(line: 45, column: 9, scope: !105)
!110 = !DILocation(line: 46, column: 24, scope: !105)
!111 = !DILocation(line: 46, column: 5, scope: !105)
!112 = !DILocation(line: 48, column: 17, scope: !105)
!113 = !DILocation(line: 48, column: 22, scope: !105)
!114 = !DILocation(line: 48, column: 5, scope: !105)
!115 = !DILocation(line: 49, column: 12, scope: !105)
!116 = !DILocation(line: 49, column: 5, scope: !105)
!117 = distinct !DISubprogram(name: "Py_DECREF", scope: !3, file: !3, line: 52, type: !118, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !24)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !6}
!120 = !DILocalVariable(name: "o", arg: 1, scope: !117, file: !3, line: 52, type: !6)
!121 = !DILocation(line: 52, column: 26, scope: !117)
!122 = !DILocation(line: 53, column: 9, scope: !123)
!123 = distinct !DILexicalBlock(scope: !117, file: !3, line: 53, column: 9)
!124 = !DILocation(line: 53, column: 11, scope: !123)
!125 = !DILocation(line: 53, column: 17, scope: !123)
!126 = !DILocation(line: 53, column: 20, scope: !123)
!127 = !DILocation(line: 53, column: 14, scope: !123)
!128 = !DILocation(line: 53, column: 31, scope: !123)
!129 = !DILocation(line: 53, column: 9, scope: !117)
!130 = !DILocation(line: 54, column: 14, scope: !131)
!131 = distinct !DILexicalBlock(scope: !123, file: !3, line: 53, column: 37)
!132 = !DILocation(line: 54, column: 9, scope: !131)
!133 = !DILocation(line: 55, column: 5, scope: !131)
!134 = !DILocation(line: 56, column: 1, scope: !117)
!135 = distinct !DISubprogram(name: "xmlPythonFileReadRaw", scope: !3, file: !3, line: 59, type: !136, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !24)
!136 = !DISubroutineType(types: !137)
!137 = !{!11, !6, !13, !11}
!138 = !DILocalVariable(name: "f", arg: 1, scope: !135, file: !3, line: 59, type: !6)
!139 = !DILocation(line: 59, column: 36, scope: !135)
!140 = !DILocalVariable(name: "buffer", arg: 2, scope: !135, file: !3, line: 59, type: !13)
!141 = !DILocation(line: 59, column: 45, scope: !135)
!142 = !DILocalVariable(name: "len", arg: 3, scope: !135, file: !3, line: 59, type: !11)
!143 = !DILocation(line: 59, column: 57, scope: !135)
!144 = !DILocalVariable(name: "ret", scope: !135, file: !3, line: 60, type: !6)
!145 = !DILocation(line: 60, column: 15, scope: !135)
!146 = !DILocalVariable(name: "data", scope: !135, file: !3, line: 61, type: !13)
!147 = !DILocation(line: 61, column: 11, scope: !135)
!148 = !DILocalVariable(name: "lenread", scope: !135, file: !3, line: 62, type: !11)
!149 = !DILocation(line: 62, column: 9, scope: !135)
!150 = !DILocation(line: 64, column: 31, scope: !135)
!151 = !DILocation(line: 64, column: 49, scope: !135)
!152 = !DILocation(line: 64, column: 11, scope: !135)
!153 = !DILocation(line: 64, column: 9, scope: !135)
!154 = !DILocation(line: 65, column: 9, scope: !155)
!155 = distinct !DILexicalBlock(scope: !135, file: !3, line: 65, column: 9)
!156 = !DILocation(line: 65, column: 13, scope: !155)
!157 = !DILocation(line: 65, column: 9, scope: !135)
!158 = !DILocation(line: 66, column: 9, scope: !159)
!159 = distinct !DILexicalBlock(scope: !155, file: !3, line: 65, column: 22)
!160 = !DILocation(line: 68, column: 24, scope: !161)
!161 = distinct !DILexicalBlock(scope: !135, file: !3, line: 68, column: 9)
!162 = !DILocation(line: 68, column: 9, scope: !161)
!163 = !DILocation(line: 68, column: 9, scope: !135)
!164 = !DILocation(line: 69, column: 34, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !3, line: 68, column: 30)
!166 = !DILocation(line: 69, column: 16, scope: !165)
!167 = !DILocation(line: 69, column: 14, scope: !165)
!168 = !DILocation(line: 70, column: 33, scope: !165)
!169 = !DILocation(line: 70, column: 19, scope: !165)
!170 = !DILocation(line: 70, column: 17, scope: !165)
!171 = !DILocation(line: 71, column: 5, scope: !165)
!172 = !DILocation(line: 72, column: 9, scope: !173)
!173 = distinct !DILexicalBlock(scope: !161, file: !3, line: 71, column: 12)
!174 = !DILocation(line: 73, column: 19, scope: !173)
!175 = !DILocation(line: 73, column: 9, scope: !173)
!176 = !DILocation(line: 74, column: 9, scope: !173)
!177 = !DILocation(line: 78, column: 9, scope: !178)
!178 = distinct !DILexicalBlock(scope: !135, file: !3, line: 78, column: 9)
!179 = !DILocation(line: 78, column: 19, scope: !178)
!180 = !DILocation(line: 78, column: 17, scope: !178)
!181 = !DILocation(line: 78, column: 9, scope: !135)
!182 = !DILocation(line: 80, column: 16, scope: !183)
!183 = distinct !DILexicalBlock(scope: !178, file: !3, line: 78, column: 24)
!184 = !DILocation(line: 80, column: 24, scope: !183)
!185 = !DILocation(line: 80, column: 30, scope: !183)
!186 = !DILocation(line: 80, column: 9, scope: !183)
!187 = !DILocation(line: 81, column: 9, scope: !183)
!188 = !DILocation(line: 82, column: 5, scope: !183)
!189 = !DILocation(line: 83, column: 16, scope: !190)
!190 = distinct !DILexicalBlock(scope: !178, file: !3, line: 82, column: 12)
!191 = !DILocation(line: 83, column: 24, scope: !190)
!192 = !DILocation(line: 83, column: 30, scope: !190)
!193 = !DILocation(line: 83, column: 9, scope: !190)
!194 = !DILocation(line: 85, column: 15, scope: !135)
!195 = !DILocation(line: 85, column: 5, scope: !135)
!196 = !DILocation(line: 86, column: 12, scope: !135)
!197 = !DILocation(line: 86, column: 5, scope: !135)
!198 = !DILocation(line: 87, column: 1, scope: !135)
!199 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 89, type: !200, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !24)
!200 = !DISubroutineType(types: !201)
!201 = !{!11}
!202 = !DILocalVariable(name: "len", scope: !199, file: !3, line: 91, type: !11)
!203 = !DILocation(line: 91, column: 9, scope: !199)
!204 = !DILocalVariable(name: "buffer", scope: !199, file: !3, line: 92, type: !205)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8192, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 1024)
!208 = !DILocation(line: 92, column: 10, scope: !199)
!209 = !DILocalVariable(name: "xml_input", scope: !199, file: !3, line: 93, type: !210)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 16384, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 2048)
!213 = !DILocation(line: 93, column: 10, scope: !199)
!214 = !DILocalVariable(name: "xml_len", scope: !199, file: !3, line: 94, type: !11)
!215 = !DILocation(line: 94, column: 9, scope: !199)
!216 = !DILocation(line: 96, column: 24, scope: !199)
!217 = !DILocation(line: 96, column: 5, scope: !199)
!218 = !DILocation(line: 97, column: 17, scope: !199)
!219 = !DILocation(line: 97, column: 21, scope: !199)
!220 = !DILocation(line: 97, column: 5, scope: !199)
!221 = !DILocation(line: 98, column: 17, scope: !199)
!222 = !DILocation(line: 98, column: 21, scope: !199)
!223 = !DILocation(line: 98, column: 5, scope: !199)
!224 = !DILocation(line: 100, column: 24, scope: !199)
!225 = !DILocation(line: 100, column: 5, scope: !199)
!226 = !DILocation(line: 101, column: 24, scope: !199)
!227 = !DILocation(line: 101, column: 5, scope: !199)
!228 = !DILocation(line: 102, column: 17, scope: !199)
!229 = !DILocation(line: 102, column: 25, scope: !199)
!230 = !DILocation(line: 102, column: 5, scope: !199)
!231 = !DILocation(line: 103, column: 17, scope: !199)
!232 = !DILocation(line: 103, column: 25, scope: !199)
!233 = !DILocation(line: 103, column: 5, scope: !199)
!234 = !DILocalVariable(name: "f", scope: !199, file: !3, line: 106, type: !6)
!235 = !DILocation(line: 106, column: 15, scope: !199)
!236 = !DILocation(line: 106, column: 19, scope: !199)
!237 = !DILocation(line: 107, column: 10, scope: !238)
!238 = distinct !DILexicalBlock(scope: !199, file: !3, line: 107, column: 9)
!239 = !DILocation(line: 107, column: 9, scope: !199)
!240 = !DILocation(line: 107, column: 13, scope: !238)
!241 = !DILocalVariable(name: "result", scope: !199, file: !3, line: 110, type: !11)
!242 = !DILocation(line: 110, column: 9, scope: !199)
!243 = !DILocation(line: 110, column: 39, scope: !199)
!244 = !DILocation(line: 110, column: 42, scope: !199)
!245 = !DILocation(line: 110, column: 50, scope: !199)
!246 = !DILocation(line: 110, column: 18, scope: !199)
!247 = !DILocation(line: 113, column: 15, scope: !199)
!248 = !DILocation(line: 113, column: 5, scope: !199)
!249 = !DILocation(line: 115, column: 5, scope: !199)
!250 = !DILocation(line: 116, column: 1, scope: !199)
!251 = distinct !DISubprogram(name: "memcpy", scope: !252, file: !252, line: 12, type: !253, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !24)
!252 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!253 = !DISubroutineType(types: !254)
!254 = !{!17, !17, !255, !257}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !258, line: 46, baseType: !259)
!258 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!259 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!260 = !DILocalVariable(name: "destaddr", arg: 1, scope: !251, file: !252, line: 12, type: !17)
!261 = !DILocation(line: 12, column: 20, scope: !251)
!262 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !251, file: !252, line: 12, type: !255)
!263 = !DILocation(line: 12, column: 42, scope: !251)
!264 = !DILocalVariable(name: "len", arg: 3, scope: !251, file: !252, line: 12, type: !257)
!265 = !DILocation(line: 12, column: 58, scope: !251)
!266 = !DILocalVariable(name: "dest", scope: !251, file: !252, line: 13, type: !13)
!267 = !DILocation(line: 13, column: 9, scope: !251)
!268 = !DILocation(line: 13, column: 16, scope: !251)
!269 = !DILocalVariable(name: "src", scope: !251, file: !252, line: 14, type: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!272 = !DILocation(line: 14, column: 15, scope: !251)
!273 = !DILocation(line: 14, column: 21, scope: !251)
!274 = !DILocation(line: 16, column: 3, scope: !251)
!275 = !DILocation(line: 16, column: 13, scope: !251)
!276 = !DILocation(line: 16, column: 16, scope: !251)
!277 = !DILocation(line: 17, column: 19, scope: !251)
!278 = !DILocation(line: 17, column: 15, scope: !251)
!279 = !DILocation(line: 17, column: 10, scope: !251)
!280 = !DILocation(line: 17, column: 13, scope: !251)
!281 = distinct !{!281, !274, !277, !282}
!282 = !{!"llvm.loop.mustprogress"}
!283 = !DILocation(line: 18, column: 10, scope: !251)
!284 = !DILocation(line: 18, column: 3, scope: !251)

; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/297_libxml.c_393_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/297_libxml.c_393_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PyObject = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"(i)\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"xmlPythonFileRead: result is not a String\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"(lenread <= len) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_55980_vul/297_libxml.c_393_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlPythonFileRead = private unnamed_addr constant [43 x i8] c"int xmlPythonFileRead(void *, char *, int)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"ret_data\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"ret_length\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !24 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.PyObject, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.PyObject* %2, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata [1024 x i8]* %3, metadata !30, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %4, metadata !35, metadata !DIExpression()), !dbg !36
  %5 = getelementptr inbounds %struct.PyObject, %struct.PyObject* %2, i32 0, i32 0, !dbg !37
  store i32 1, i32* %5, align 8, !dbg !38
  %6 = getelementptr inbounds %struct.PyObject, %struct.PyObject* %2, i32 0, i32 1, !dbg !39
  store i8* null, i8** %6, align 8, !dbg !40
  %7 = getelementptr inbounds %struct.PyObject, %struct.PyObject* %2, i32 0, i32 2, !dbg !41
  store i32 0, i32* %7, align 8, !dbg !42
  %8 = bitcast i32* %4 to i8*, !dbg !43
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !44
  %9 = load i32, i32* %4, align 4, !dbg !45
  %10 = icmp sgt i32 %9, 0, !dbg !46
  br i1 %10, label %11, label %14, !dbg !47

11:                                               ; preds = %0
  %12 = load i32, i32* %4, align 4, !dbg !48
  %13 = icmp sle i32 %12, 1024, !dbg !49
  br label %14

14:                                               ; preds = %11, %0
  %15 = phi i1 [ false, %0 ], [ %13, %11 ], !dbg !50
  %16 = zext i1 %15 to i32, !dbg !47
  %17 = sext i32 %16 to i64, !dbg !45
  call void @klee_assume(i64 noundef %17), !dbg !51
  %18 = bitcast %struct.PyObject* %2 to i8*, !dbg !52
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !53
  %20 = load i32, i32* %4, align 4, !dbg !54
  %21 = call i32 @xmlPythonFileRead(i8* noundef %18, i8* noundef %19, i32 noundef %20), !dbg !55
  ret i32 0, !dbg !56
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmlPythonFileRead(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !57 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.PyObject*, align 8
  %9 = alloca %struct.PyObject*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !60, metadata !DIExpression()), !dbg !61
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !62, metadata !DIExpression()), !dbg !63
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata %struct.PyObject** %8, metadata !66, metadata !DIExpression()), !dbg !67
  %12 = load i8*, i8** %5, align 8, !dbg !68
  %13 = bitcast i8* %12 to %struct.PyObject*, !dbg !69
  store %struct.PyObject* %13, %struct.PyObject** %8, align 8, !dbg !67
  call void @llvm.dbg.declare(metadata %struct.PyObject** %9, metadata !70, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.declare(metadata i8** %10, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata i32* %11, metadata !74, metadata !DIExpression()), !dbg !75
  %14 = load %struct.PyObject*, %struct.PyObject** %8, align 8, !dbg !76
  %15 = load i32, i32* %7, align 4, !dbg !77
  %16 = call %struct.PyObject* (%struct.PyObject*, i8*, ...) @PyObject_CallFunction(%struct.PyObject* noundef %14, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %15), !dbg !78
  store %struct.PyObject* %16, %struct.PyObject** %9, align 8, !dbg !79
  %17 = load %struct.PyObject*, %struct.PyObject** %9, align 8, !dbg !80
  %18 = icmp eq %struct.PyObject* %17, null, !dbg !82
  br i1 %18, label %19, label %20, !dbg !83

19:                                               ; preds = %3
  store i32 -1, i32* %4, align 4, !dbg !84
  br label %60, !dbg !84

20:                                               ; preds = %3
  %21 = call %struct.PyObject* @PyErr_Occurred(), !dbg !86
  %22 = icmp ne %struct.PyObject* %21, null, !dbg !88
  br i1 %22, label %23, label %25, !dbg !89

23:                                               ; preds = %20
  %24 = load %struct.PyObject*, %struct.PyObject** %9, align 8, !dbg !90
  call void @Py_DECREF(%struct.PyObject* noundef %24), !dbg !92
  store i32 -1, i32* %4, align 4, !dbg !93
  br label %60, !dbg !93

25:                                               ; preds = %20
  %26 = load %struct.PyObject*, %struct.PyObject** %9, align 8, !dbg !94
  %27 = call i32 @PyString_AsStringAndSize(%struct.PyObject* noundef %26, i8** noundef %10, i32* noundef %11), !dbg !96
  %28 = icmp slt i32 %27, 0, !dbg !97
  br i1 %28, label %29, label %32, !dbg !98

29:                                               ; preds = %25
  %30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0)), !dbg !99
  %31 = load %struct.PyObject*, %struct.PyObject** %9, align 8, !dbg !101
  call void @Py_DECREF(%struct.PyObject* noundef %31), !dbg !102
  store i32 -1, i32* %4, align 4, !dbg !103
  br label %60, !dbg !103

32:                                               ; preds = %25
  %33 = load i32, i32* %11, align 4, !dbg !104
  %34 = load i32, i32* %7, align 4, !dbg !106
  %35 = icmp sgt i32 %33, %34, !dbg !107
  br i1 %35, label %36, label %42, !dbg !108

36:                                               ; preds = %32
  %37 = load i8*, i8** %6, align 8, !dbg !109
  %38 = load i8*, i8** %10, align 8, !dbg !111
  %39 = load i32, i32* %7, align 4, !dbg !112
  %40 = sext i32 %39 to i64, !dbg !112
  %41 = call i8* @memcpy(i8* %37, i8* %38, i64 %40), !dbg !113
  br label %57, !dbg !114

42:                                               ; preds = %32
  %43 = load i32, i32* %11, align 4, !dbg !115
  %44 = load i32, i32* %7, align 4, !dbg !115
  %45 = icmp sle i32 %43, %44, !dbg !115
  br i1 %45, label %46, label %48, !dbg !115

46:                                               ; preds = %42
  br i1 true, label %47, label %48, !dbg !115

47:                                               ; preds = %46
  br label %50, !dbg !115

48:                                               ; preds = %46, %42
  %49 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.5, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.xmlPythonFileRead, i64 0, i64 0)), !dbg !115
  br label %50, !dbg !115

50:                                               ; preds = %48, %47
  %51 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.5, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.xmlPythonFileRead, i64 0, i64 0)), !dbg !117
  %52 = load i8*, i8** %6, align 8, !dbg !118
  %53 = load i8*, i8** %10, align 8, !dbg !119
  %54 = load i32, i32* %11, align 4, !dbg !120
  %55 = sext i32 %54 to i64, !dbg !120
  %56 = call i8* @memcpy(i8* %52, i8* %53, i64 %55), !dbg !121
  br label %57

57:                                               ; preds = %50, %36
  %58 = load %struct.PyObject*, %struct.PyObject** %9, align 8, !dbg !122
  call void @Py_DECREF(%struct.PyObject* noundef %58), !dbg !123
  %59 = load i32, i32* %11, align 4, !dbg !124
  store i32 %59, i32* %4, align 4, !dbg !125
  br label %60, !dbg !125

60:                                               ; preds = %57, %29, %23, %19
  %61 = load i32, i32* %4, align 4, !dbg !126
  ret i32 %61, !dbg !126
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.PyObject* @PyObject_CallFunction(%struct.PyObject* noundef %0, i8* noundef %1, ...) #0 !dbg !127 {
  %3 = alloca %struct.PyObject*, align 8
  %4 = alloca %struct.PyObject*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.PyObject*, align 8
  store %struct.PyObject* %0, %struct.PyObject** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.PyObject** %4, metadata !132, metadata !DIExpression()), !dbg !133
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !134, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata %struct.PyObject** %6, metadata !136, metadata !DIExpression()), !dbg !137
  %7 = call noalias i8* @malloc(i64 noundef 24) #7, !dbg !138
  %8 = bitcast i8* %7 to %struct.PyObject*, !dbg !138
  store %struct.PyObject* %8, %struct.PyObject** %6, align 8, !dbg !137
  %9 = load %struct.PyObject*, %struct.PyObject** %6, align 8, !dbg !139
  %10 = icmp eq %struct.PyObject* %9, null, !dbg !141
  br i1 %10, label %11, label %12, !dbg !142

11:                                               ; preds = %2
  store %struct.PyObject* null, %struct.PyObject** %3, align 8, !dbg !143
  br label %38, !dbg !143

12:                                               ; preds = %2
  %13 = call noalias i8* @malloc(i64 noundef 1024) #7, !dbg !144
  %14 = load %struct.PyObject*, %struct.PyObject** %6, align 8, !dbg !145
  %15 = getelementptr inbounds %struct.PyObject, %struct.PyObject* %14, i32 0, i32 1, !dbg !146
  store i8* %13, i8** %15, align 8, !dbg !147
  %16 = load %struct.PyObject*, %struct.PyObject** %6, align 8, !dbg !148
  %17 = getelementptr inbounds %struct.PyObject, %struct.PyObject* %16, i32 0, i32 1, !dbg !149
  %18 = load i8*, i8** %17, align 8, !dbg !149
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef 1024, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)), !dbg !150
  %19 = load %struct.PyObject*, %struct.PyObject** %6, align 8, !dbg !151
  %20 = getelementptr inbounds %struct.PyObject, %struct.PyObject* %19, i32 0, i32 2, !dbg !152
  %21 = bitcast i32* %20 to i8*, !dbg !153
  call void @klee_make_symbolic(i8* noundef %21, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0)), !dbg !154
  %22 = load %struct.PyObject*, %struct.PyObject** %6, align 8, !dbg !155
  %23 = getelementptr inbounds %struct.PyObject, %struct.PyObject* %22, i32 0, i32 0, !dbg !156
  store i32 1, i32* %23, align 8, !dbg !157
  %24 = load %struct.PyObject*, %struct.PyObject** %6, align 8, !dbg !158
  %25 = getelementptr inbounds %struct.PyObject, %struct.PyObject* %24, i32 0, i32 2, !dbg !159
  %26 = load i32, i32* %25, align 8, !dbg !159
  %27 = icmp sge i32 %26, 0, !dbg !160
  br i1 %27, label %28, label %33, !dbg !161

28:                                               ; preds = %12
  %29 = load %struct.PyObject*, %struct.PyObject** %6, align 8, !dbg !162
  %30 = getelementptr inbounds %struct.PyObject, %struct.PyObject* %29, i32 0, i32 2, !dbg !163
  %31 = load i32, i32* %30, align 8, !dbg !163
  %32 = icmp slt i32 %31, 1024, !dbg !164
  br label %33

33:                                               ; preds = %28, %12
  %34 = phi i1 [ false, %12 ], [ %32, %28 ], !dbg !165
  %35 = zext i1 %34 to i32, !dbg !161
  %36 = sext i32 %35 to i64, !dbg !158
  call void @klee_assume(i64 noundef %36), !dbg !166
  %37 = load %struct.PyObject*, %struct.PyObject** %6, align 8, !dbg !167
  store %struct.PyObject* %37, %struct.PyObject** %3, align 8, !dbg !168
  br label %38, !dbg !168

38:                                               ; preds = %33, %11
  %39 = load %struct.PyObject*, %struct.PyObject** %3, align 8, !dbg !169
  ret %struct.PyObject* %39, !dbg !169
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.PyObject* @PyErr_Occurred() #0 !dbg !170 {
  ret %struct.PyObject* null, !dbg !173
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Py_DECREF(%struct.PyObject* noundef %0) #0 !dbg !174 {
  %2 = alloca %struct.PyObject*, align 8
  store %struct.PyObject* %0, %struct.PyObject** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.PyObject** %2, metadata !177, metadata !DIExpression()), !dbg !178
  %3 = load %struct.PyObject*, %struct.PyObject** %2, align 8, !dbg !179
  %4 = icmp eq %struct.PyObject* %3, null, !dbg !181
  br i1 %4, label %5, label %6, !dbg !182

5:                                                ; preds = %1
  br label %21, !dbg !183

6:                                                ; preds = %1
  %7 = load %struct.PyObject*, %struct.PyObject** %2, align 8, !dbg !184
  %8 = getelementptr inbounds %struct.PyObject, %struct.PyObject* %7, i32 0, i32 0, !dbg !185
  %9 = load i32, i32* %8, align 8, !dbg !186
  %10 = add nsw i32 %9, -1, !dbg !186
  store i32 %10, i32* %8, align 8, !dbg !186
  %11 = load %struct.PyObject*, %struct.PyObject** %2, align 8, !dbg !187
  %12 = getelementptr inbounds %struct.PyObject, %struct.PyObject* %11, i32 0, i32 0, !dbg !189
  %13 = load i32, i32* %12, align 8, !dbg !189
  %14 = icmp sle i32 %13, 0, !dbg !190
  br i1 %14, label %15, label %21, !dbg !191

15:                                               ; preds = %6
  %16 = load %struct.PyObject*, %struct.PyObject** %2, align 8, !dbg !192
  %17 = getelementptr inbounds %struct.PyObject, %struct.PyObject* %16, i32 0, i32 1, !dbg !194
  %18 = load i8*, i8** %17, align 8, !dbg !194
  call void @free(i8* noundef %18) #7, !dbg !195
  %19 = load %struct.PyObject*, %struct.PyObject** %2, align 8, !dbg !196
  %20 = bitcast %struct.PyObject* %19 to i8*, !dbg !196
  call void @free(i8* noundef %20) #7, !dbg !197
  br label %21, !dbg !198

21:                                               ; preds = %5, %15, %6
  ret void, !dbg !199
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PyString_AsStringAndSize(%struct.PyObject* noundef %0, i8** noundef %1, i32* noundef %2) #0 !dbg !200 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.PyObject*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  store %struct.PyObject* %0, %struct.PyObject** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.PyObject** %5, metadata !205, metadata !DIExpression()), !dbg !206
  store i8** %1, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !207, metadata !DIExpression()), !dbg !208
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !209, metadata !DIExpression()), !dbg !210
  %8 = load %struct.PyObject*, %struct.PyObject** %5, align 8, !dbg !211
  %9 = icmp eq %struct.PyObject* %8, null, !dbg !213
  br i1 %9, label %15, label %10, !dbg !214

10:                                               ; preds = %3
  %11 = load %struct.PyObject*, %struct.PyObject** %5, align 8, !dbg !215
  %12 = getelementptr inbounds %struct.PyObject, %struct.PyObject* %11, i32 0, i32 1, !dbg !216
  %13 = load i8*, i8** %12, align 8, !dbg !216
  %14 = icmp eq i8* %13, null, !dbg !217
  br i1 %14, label %15, label %16, !dbg !218

15:                                               ; preds = %10, %3
  store i32 -1, i32* %4, align 4, !dbg !219
  br label %25, !dbg !219

16:                                               ; preds = %10
  %17 = load %struct.PyObject*, %struct.PyObject** %5, align 8, !dbg !221
  %18 = getelementptr inbounds %struct.PyObject, %struct.PyObject* %17, i32 0, i32 1, !dbg !222
  %19 = load i8*, i8** %18, align 8, !dbg !222
  %20 = load i8**, i8*** %6, align 8, !dbg !223
  store i8* %19, i8** %20, align 8, !dbg !224
  %21 = load %struct.PyObject*, %struct.PyObject** %5, align 8, !dbg !225
  %22 = getelementptr inbounds %struct.PyObject, %struct.PyObject* %21, i32 0, i32 2, !dbg !226
  %23 = load i32, i32* %22, align 8, !dbg !226
  %24 = load i32*, i32** %7, align 8, !dbg !227
  store i32 %23, i32* %24, align 4, !dbg !228
  store i32 0, i32* %4, align 4, !dbg !229
  br label %25, !dbg !229

25:                                               ; preds = %16, %15
  %26 = load i32, i32* %4, align 4, !dbg !230
  ret i32 %26, !dbg !230
}

declare i32 @printf(i8* noundef, ...) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !231 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !240, metadata !DIExpression()), !dbg !241
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !242, metadata !DIExpression()), !dbg !243
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !244, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.declare(metadata i8** %7, metadata !246, metadata !DIExpression()), !dbg !247
  %9 = load i8*, i8** %4, align 8, !dbg !248
  store i8* %9, i8** %7, align 8, !dbg !247
  call void @llvm.dbg.declare(metadata i8** %8, metadata !249, metadata !DIExpression()), !dbg !250
  %10 = load i8*, i8** %5, align 8, !dbg !251
  store i8* %10, i8** %8, align 8, !dbg !250
  br label %11, !dbg !252

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !253
  %13 = add i64 %12, -1, !dbg !253
  store i64 %13, i64* %6, align 8, !dbg !253
  %14 = icmp ugt i64 %12, 0, !dbg !254
  br i1 %14, label %15, label %21, !dbg !252

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !255
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !255
  store i8* %17, i8** %8, align 8, !dbg !255
  %18 = load i8, i8* %16, align 1, !dbg !256
  %19 = load i8*, i8** %7, align 8, !dbg !257
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !257
  store i8* %20, i8** %7, align 8, !dbg !257
  store i8 %18, i8* %19, align 1, !dbg !258
  br label %11, !dbg !252, !llvm.loop !259

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !261
  ret i8* %22, !dbg !262
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23, !23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/297_libxml.c_393_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "d21ddc98b44cf8f2824c9375ef50d4c8")
!2 = !{!3, !13}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !1, line: 14, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PyObject", file: !1, line: 10, size: 192, elements: !6)
!6 = !{!7, !9, !12}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !5, file: !1, line: 11, baseType: !8, size: 32)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5, file: !1, line: 12, baseType: !10, size: 64, offset: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5, file: !1, line: 13, baseType: !8, size: 32, offset: 128)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !15, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 7, !"PIC Level", i32 2}
!20 = !{i32 7, !"PIE Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"Ubuntu clang version 14.0.6"}
!24 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 106, type: !25, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !27)
!25 = !DISubroutineType(types: !26)
!26 = !{!8}
!27 = !{}
!28 = !DILocalVariable(name: "f_obj", scope: !24, file: !1, line: 108, type: !4)
!29 = !DILocation(line: 108, column: 14, scope: !24)
!30 = !DILocalVariable(name: "buffer", scope: !24, file: !1, line: 109, type: !31)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8192, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 1024)
!34 = !DILocation(line: 109, column: 10, scope: !24)
!35 = !DILocalVariable(name: "len", scope: !24, file: !1, line: 110, type: !8)
!36 = !DILocation(line: 110, column: 9, scope: !24)
!37 = !DILocation(line: 113, column: 11, scope: !24)
!38 = !DILocation(line: 113, column: 18, scope: !24)
!39 = !DILocation(line: 114, column: 11, scope: !24)
!40 = !DILocation(line: 114, column: 16, scope: !24)
!41 = !DILocation(line: 115, column: 11, scope: !24)
!42 = !DILocation(line: 115, column: 18, scope: !24)
!43 = !DILocation(line: 118, column: 24, scope: !24)
!44 = !DILocation(line: 118, column: 5, scope: !24)
!45 = !DILocation(line: 120, column: 17, scope: !24)
!46 = !DILocation(line: 120, column: 21, scope: !24)
!47 = !DILocation(line: 120, column: 25, scope: !24)
!48 = !DILocation(line: 120, column: 28, scope: !24)
!49 = !DILocation(line: 120, column: 32, scope: !24)
!50 = !DILocation(line: 0, scope: !24)
!51 = !DILocation(line: 120, column: 5, scope: !24)
!52 = !DILocation(line: 123, column: 23, scope: !24)
!53 = !DILocation(line: 123, column: 31, scope: !24)
!54 = !DILocation(line: 123, column: 39, scope: !24)
!55 = !DILocation(line: 123, column: 5, scope: !24)
!56 = !DILocation(line: 125, column: 5, scope: !24)
!57 = distinct !DISubprogram(name: "xmlPythonFileRead", scope: !1, file: !1, line: 65, type: !58, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !27)
!58 = !DISubroutineType(types: !59)
!59 = !{!8, !13, !10, !8}
!60 = !DILocalVariable(name: "context", arg: 1, scope: !57, file: !1, line: 65, type: !13)
!61 = !DILocation(line: 65, column: 36, scope: !57)
!62 = !DILocalVariable(name: "buffer", arg: 2, scope: !57, file: !1, line: 65, type: !10)
!63 = !DILocation(line: 65, column: 51, scope: !57)
!64 = !DILocalVariable(name: "len", arg: 3, scope: !57, file: !1, line: 65, type: !8)
!65 = !DILocation(line: 65, column: 63, scope: !57)
!66 = !DILocalVariable(name: "f", scope: !57, file: !1, line: 66, type: !3)
!67 = !DILocation(line: 66, column: 15, scope: !57)
!68 = !DILocation(line: 66, column: 30, scope: !57)
!69 = !DILocation(line: 66, column: 19, scope: !57)
!70 = !DILocalVariable(name: "ret", scope: !57, file: !1, line: 67, type: !3)
!71 = !DILocation(line: 67, column: 15, scope: !57)
!72 = !DILocalVariable(name: "data", scope: !57, file: !1, line: 68, type: !10)
!73 = !DILocation(line: 68, column: 11, scope: !57)
!74 = !DILocalVariable(name: "lenread", scope: !57, file: !1, line: 69, type: !8)
!75 = !DILocation(line: 69, column: 9, scope: !57)
!76 = !DILocation(line: 72, column: 33, scope: !57)
!77 = !DILocation(line: 72, column: 43, scope: !57)
!78 = !DILocation(line: 72, column: 11, scope: !57)
!79 = !DILocation(line: 72, column: 9, scope: !57)
!80 = !DILocation(line: 73, column: 9, scope: !81)
!81 = distinct !DILexicalBlock(scope: !57, file: !1, line: 73, column: 9)
!82 = !DILocation(line: 73, column: 13, scope: !81)
!83 = !DILocation(line: 73, column: 9, scope: !57)
!84 = !DILocation(line: 74, column: 9, scope: !85)
!85 = distinct !DILexicalBlock(scope: !81, file: !1, line: 73, column: 22)
!86 = !DILocation(line: 77, column: 9, scope: !87)
!87 = distinct !DILexicalBlock(scope: !57, file: !1, line: 77, column: 9)
!88 = !DILocation(line: 77, column: 26, scope: !87)
!89 = !DILocation(line: 77, column: 9, scope: !57)
!90 = !DILocation(line: 78, column: 19, scope: !91)
!91 = distinct !DILexicalBlock(scope: !87, file: !1, line: 77, column: 35)
!92 = !DILocation(line: 78, column: 9, scope: !91)
!93 = !DILocation(line: 79, column: 9, scope: !91)
!94 = !DILocation(line: 83, column: 34, scope: !95)
!95 = distinct !DILexicalBlock(scope: !57, file: !1, line: 83, column: 9)
!96 = !DILocation(line: 83, column: 9, scope: !95)
!97 = !DILocation(line: 83, column: 56, scope: !95)
!98 = !DILocation(line: 83, column: 9, scope: !57)
!99 = !DILocation(line: 84, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !95, file: !1, line: 83, column: 61)
!101 = !DILocation(line: 85, column: 19, scope: !100)
!102 = !DILocation(line: 85, column: 9, scope: !100)
!103 = !DILocation(line: 86, column: 9, scope: !100)
!104 = !DILocation(line: 90, column: 9, scope: !105)
!105 = distinct !DILexicalBlock(scope: !57, file: !1, line: 90, column: 9)
!106 = !DILocation(line: 90, column: 19, scope: !105)
!107 = !DILocation(line: 90, column: 17, scope: !105)
!108 = !DILocation(line: 90, column: 9, scope: !57)
!109 = !DILocation(line: 91, column: 16, scope: !110)
!110 = distinct !DILexicalBlock(scope: !105, file: !1, line: 90, column: 24)
!111 = !DILocation(line: 91, column: 24, scope: !110)
!112 = !DILocation(line: 91, column: 30, scope: !110)
!113 = !DILocation(line: 91, column: 9, scope: !110)
!114 = !DILocation(line: 92, column: 5, scope: !110)
!115 = !DILocation(line: 95, column: 9, scope: !116)
!116 = distinct !DILexicalBlock(scope: !105, file: !1, line: 92, column: 12)
!117 = !DILocation(line: 97, column: 9, scope: !116)
!118 = !DILocation(line: 98, column: 16, scope: !116)
!119 = !DILocation(line: 98, column: 24, scope: !116)
!120 = !DILocation(line: 98, column: 30, scope: !116)
!121 = !DILocation(line: 98, column: 9, scope: !116)
!122 = !DILocation(line: 101, column: 15, scope: !57)
!123 = !DILocation(line: 101, column: 5, scope: !57)
!124 = !DILocation(line: 102, column: 12, scope: !57)
!125 = !DILocation(line: 102, column: 5, scope: !57)
!126 = !DILocation(line: 103, column: 1, scope: !57)
!127 = distinct !DISubprogram(name: "PyObject_CallFunction", scope: !1, file: !1, line: 32, type: !128, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !27)
!128 = !DISubroutineType(types: !129)
!129 = !{!3, !3, !130, null}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!132 = !DILocalVariable(name: "callable", arg: 1, scope: !127, file: !1, line: 32, type: !3)
!133 = !DILocation(line: 32, column: 50, scope: !127)
!134 = !DILocalVariable(name: "format", arg: 2, scope: !127, file: !1, line: 32, type: !130)
!135 = !DILocation(line: 32, column: 72, scope: !127)
!136 = !DILocalVariable(name: "ret", scope: !127, file: !1, line: 34, type: !3)
!137 = !DILocation(line: 34, column: 15, scope: !127)
!138 = !DILocation(line: 34, column: 21, scope: !127)
!139 = !DILocation(line: 35, column: 9, scope: !140)
!140 = distinct !DILexicalBlock(scope: !127, file: !1, line: 35, column: 9)
!141 = !DILocation(line: 35, column: 13, scope: !140)
!142 = !DILocation(line: 35, column: 9, scope: !127)
!143 = !DILocation(line: 35, column: 22, scope: !140)
!144 = !DILocation(line: 38, column: 17, scope: !127)
!145 = !DILocation(line: 38, column: 5, scope: !127)
!146 = !DILocation(line: 38, column: 10, scope: !127)
!147 = !DILocation(line: 38, column: 15, scope: !127)
!148 = !DILocation(line: 39, column: 24, scope: !127)
!149 = !DILocation(line: 39, column: 29, scope: !127)
!150 = !DILocation(line: 39, column: 5, scope: !127)
!151 = !DILocation(line: 40, column: 25, scope: !127)
!152 = !DILocation(line: 40, column: 30, scope: !127)
!153 = !DILocation(line: 40, column: 24, scope: !127)
!154 = !DILocation(line: 40, column: 5, scope: !127)
!155 = !DILocation(line: 41, column: 5, scope: !127)
!156 = !DILocation(line: 41, column: 10, scope: !127)
!157 = !DILocation(line: 41, column: 17, scope: !127)
!158 = !DILocation(line: 44, column: 17, scope: !127)
!159 = !DILocation(line: 44, column: 22, scope: !127)
!160 = !DILocation(line: 44, column: 29, scope: !127)
!161 = !DILocation(line: 44, column: 34, scope: !127)
!162 = !DILocation(line: 44, column: 37, scope: !127)
!163 = !DILocation(line: 44, column: 42, scope: !127)
!164 = !DILocation(line: 44, column: 49, scope: !127)
!165 = !DILocation(line: 0, scope: !127)
!166 = !DILocation(line: 44, column: 5, scope: !127)
!167 = !DILocation(line: 46, column: 12, scope: !127)
!168 = !DILocation(line: 46, column: 5, scope: !127)
!169 = !DILocation(line: 47, column: 1, scope: !127)
!170 = distinct !DISubprogram(name: "PyErr_Occurred", scope: !1, file: !1, line: 60, type: !171, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !27)
!171 = !DISubroutineType(types: !172)
!172 = !{!3}
!173 = !DILocation(line: 61, column: 5, scope: !170)
!174 = distinct !DISubprogram(name: "Py_DECREF", scope: !1, file: !1, line: 50, type: !175, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !27)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !3}
!177 = !DILocalVariable(name: "obj", arg: 1, scope: !174, file: !1, line: 50, type: !3)
!178 = !DILocation(line: 50, column: 33, scope: !174)
!179 = !DILocation(line: 51, column: 9, scope: !180)
!180 = distinct !DILexicalBlock(scope: !174, file: !1, line: 51, column: 9)
!181 = !DILocation(line: 51, column: 13, scope: !180)
!182 = !DILocation(line: 51, column: 9, scope: !174)
!183 = !DILocation(line: 51, column: 22, scope: !180)
!184 = !DILocation(line: 52, column: 5, scope: !174)
!185 = !DILocation(line: 52, column: 10, scope: !174)
!186 = !DILocation(line: 52, column: 16, scope: !174)
!187 = !DILocation(line: 53, column: 9, scope: !188)
!188 = distinct !DILexicalBlock(scope: !174, file: !1, line: 53, column: 9)
!189 = !DILocation(line: 53, column: 14, scope: !188)
!190 = !DILocation(line: 53, column: 21, scope: !188)
!191 = !DILocation(line: 53, column: 9, scope: !174)
!192 = !DILocation(line: 54, column: 14, scope: !193)
!193 = distinct !DILexicalBlock(scope: !188, file: !1, line: 53, column: 27)
!194 = !DILocation(line: 54, column: 19, scope: !193)
!195 = !DILocation(line: 54, column: 9, scope: !193)
!196 = !DILocation(line: 55, column: 14, scope: !193)
!197 = !DILocation(line: 55, column: 9, scope: !193)
!198 = !DILocation(line: 56, column: 5, scope: !193)
!199 = !DILocation(line: 57, column: 1, scope: !174)
!200 = distinct !DISubprogram(name: "PyString_AsStringAndSize", scope: !1, file: !1, line: 17, type: !201, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !27)
!201 = !DISubroutineType(types: !202)
!202 = !{!8, !3, !203, !204}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!205 = !DILocalVariable(name: "obj", arg: 1, scope: !200, file: !1, line: 17, type: !3)
!206 = !DILocation(line: 17, column: 47, scope: !200)
!207 = !DILocalVariable(name: "buffer", arg: 2, scope: !200, file: !1, line: 17, type: !203)
!208 = !DILocation(line: 17, column: 59, scope: !200)
!209 = !DILocalVariable(name: "length", arg: 3, scope: !200, file: !1, line: 17, type: !204)
!210 = !DILocation(line: 17, column: 72, scope: !200)
!211 = !DILocation(line: 18, column: 9, scope: !212)
!212 = distinct !DILexicalBlock(scope: !200, file: !1, line: 18, column: 9)
!213 = !DILocation(line: 18, column: 13, scope: !212)
!214 = !DILocation(line: 18, column: 21, scope: !212)
!215 = !DILocation(line: 18, column: 24, scope: !212)
!216 = !DILocation(line: 18, column: 29, scope: !212)
!217 = !DILocation(line: 18, column: 34, scope: !212)
!218 = !DILocation(line: 18, column: 9, scope: !200)
!219 = !DILocation(line: 19, column: 9, scope: !220)
!220 = distinct !DILexicalBlock(scope: !212, file: !1, line: 18, column: 43)
!221 = !DILocation(line: 21, column: 15, scope: !200)
!222 = !DILocation(line: 21, column: 20, scope: !200)
!223 = !DILocation(line: 21, column: 6, scope: !200)
!224 = !DILocation(line: 21, column: 13, scope: !200)
!225 = !DILocation(line: 22, column: 15, scope: !200)
!226 = !DILocation(line: 22, column: 20, scope: !200)
!227 = !DILocation(line: 22, column: 6, scope: !200)
!228 = !DILocation(line: 22, column: 13, scope: !200)
!229 = !DILocation(line: 23, column: 5, scope: !200)
!230 = !DILocation(line: 24, column: 1, scope: !200)
!231 = distinct !DISubprogram(name: "memcpy", scope: !232, file: !232, line: 12, type: !233, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !27)
!232 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!233 = !DISubroutineType(types: !234)
!234 = !{!13, !13, !235, !237}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !238, line: 46, baseType: !239)
!238 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!239 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!240 = !DILocalVariable(name: "destaddr", arg: 1, scope: !231, file: !232, line: 12, type: !13)
!241 = !DILocation(line: 12, column: 20, scope: !231)
!242 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !231, file: !232, line: 12, type: !235)
!243 = !DILocation(line: 12, column: 42, scope: !231)
!244 = !DILocalVariable(name: "len", arg: 3, scope: !231, file: !232, line: 12, type: !237)
!245 = !DILocation(line: 12, column: 58, scope: !231)
!246 = !DILocalVariable(name: "dest", scope: !231, file: !232, line: 13, type: !10)
!247 = !DILocation(line: 13, column: 9, scope: !231)
!248 = !DILocation(line: 13, column: 16, scope: !231)
!249 = !DILocalVariable(name: "src", scope: !231, file: !232, line: 14, type: !130)
!250 = !DILocation(line: 14, column: 15, scope: !231)
!251 = !DILocation(line: 14, column: 21, scope: !231)
!252 = !DILocation(line: 16, column: 3, scope: !231)
!253 = !DILocation(line: 16, column: 13, scope: !231)
!254 = !DILocation(line: 16, column: 16, scope: !231)
!255 = !DILocation(line: 17, column: 19, scope: !231)
!256 = !DILocation(line: 17, column: 15, scope: !231)
!257 = !DILocation(line: 17, column: 10, scope: !231)
!258 = !DILocation(line: 17, column: 13, scope: !231)
!259 = distinct !{!259, !252, !255, !260}
!260 = !{!"llvm.loop.mustprogress"}
!261 = !DILocation(line: 18, column: 10, scope: !231)
!262 = !DILocation(line: 18, column: 3, scope: !231)

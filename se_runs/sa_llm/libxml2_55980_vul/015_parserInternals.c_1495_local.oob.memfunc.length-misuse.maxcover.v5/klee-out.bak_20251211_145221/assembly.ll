; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/015_parserInternals.c_1495_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/015_parserInternals.c_1495_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlParserCtxt = type { %struct._xmlSAXHandler*, i8*, i32, i8*, i8* }
%struct._xmlSAXHandler = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.1 = private unnamed_addr constant [114 x i8] c"se_runs/sa_llm/libxml2_55980_vul/015_parserInternals.c_1495_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlCtxtReset = private unnamed_addr constant [35 x i8] c"void xmlCtxtReset(xmlParserCtxt *)\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"sax_initialized\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"test\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlParserCtxt* @xmlCreateMemoryParserCtxt(i8* noundef %0, i32 noundef %1) #0 !dbg !31 {
  %3 = alloca %struct._xmlParserCtxt*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._xmlParserCtxt*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !38, metadata !DIExpression()), !dbg !39
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %6, metadata !42, metadata !DIExpression()), !dbg !43
  %7 = call noalias i8* @malloc(i64 noundef 40) #8, !dbg !44
  %8 = bitcast i8* %7 to %struct._xmlParserCtxt*, !dbg !45
  store %struct._xmlParserCtxt* %8, %struct._xmlParserCtxt** %6, align 8, !dbg !43
  %9 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %6, align 8, !dbg !46
  %10 = icmp ne %struct._xmlParserCtxt* %9, null, !dbg !46
  br i1 %10, label %12, label %11, !dbg !48

11:                                               ; preds = %2
  store %struct._xmlParserCtxt* null, %struct._xmlParserCtxt** %3, align 8, !dbg !49
  br label %34, !dbg !49

12:                                               ; preds = %2
  %13 = call noalias i8* @malloc(i64 noundef 4) #8, !dbg !50
  %14 = bitcast i8* %13 to %struct._xmlSAXHandler*, !dbg !51
  %15 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %6, align 8, !dbg !52
  %16 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %15, i32 0, i32 0, !dbg !53
  store %struct._xmlSAXHandler* %14, %struct._xmlSAXHandler** %16, align 8, !dbg !54
  %17 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %6, align 8, !dbg !55
  %18 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %17, i32 0, i32 0, !dbg !57
  %19 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %18, align 8, !dbg !57
  %20 = icmp ne %struct._xmlSAXHandler* %19, null, !dbg !55
  br i1 %20, label %24, label %21, !dbg !58

21:                                               ; preds = %12
  %22 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %6, align 8, !dbg !59
  %23 = bitcast %struct._xmlParserCtxt* %22 to i8*, !dbg !59
  call void @free(i8* noundef %23) #8, !dbg !61
  store %struct._xmlParserCtxt* null, %struct._xmlParserCtxt** %3, align 8, !dbg !62
  br label %34, !dbg !62

24:                                               ; preds = %12
  %25 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %6, align 8, !dbg !63
  %26 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %25, i32 0, i32 1, !dbg !64
  store i8* null, i8** %26, align 8, !dbg !65
  %27 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %6, align 8, !dbg !66
  %28 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %27, i32 0, i32 2, !dbg !67
  store i32 0, i32* %28, align 8, !dbg !68
  %29 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %6, align 8, !dbg !69
  %30 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %29, i32 0, i32 3, !dbg !70
  store i8* null, i8** %30, align 8, !dbg !71
  %31 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %6, align 8, !dbg !72
  %32 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %31, i32 0, i32 4, !dbg !73
  store i8* null, i8** %32, align 8, !dbg !74
  %33 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %6, align 8, !dbg !75
  store %struct._xmlParserCtxt* %33, %struct._xmlParserCtxt** %3, align 8, !dbg !76
  br label %34, !dbg !76

34:                                               ; preds = %24, %21, %11
  %35 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !77
  ret %struct._xmlParserCtxt* %35, !dbg !77
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlInitParserCtxt(%struct._xmlParserCtxt* noundef %0) #0 !dbg !78 {
  %2 = alloca %struct._xmlParserCtxt*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !81, metadata !DIExpression()), !dbg !82
  %3 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !83
  %4 = icmp ne %struct._xmlParserCtxt* %3, null, !dbg !83
  br i1 %4, label %5, label %15, !dbg !85

5:                                                ; preds = %1
  %6 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !86
  %7 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %6, i32 0, i32 0, !dbg !87
  %8 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %7, align 8, !dbg !87
  %9 = icmp ne %struct._xmlSAXHandler* %8, null, !dbg !86
  br i1 %9, label %10, label %15, !dbg !88

10:                                               ; preds = %5
  %11 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !89
  %12 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %11, i32 0, i32 0, !dbg !91
  %13 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %12, align 8, !dbg !91
  %14 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %13, i32 0, i32 0, !dbg !92
  store i32 0, i32* %14, align 4, !dbg !93
  br label %15, !dbg !94

15:                                               ; preds = %10, %5, %1
  ret void, !dbg !95
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlCtxtReset(%struct._xmlParserCtxt* noundef %0) #0 !dbg !96 {
  %2 = alloca %struct._xmlParserCtxt*, align 8
  %3 = alloca %struct._xmlSAXHandler*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !97, metadata !DIExpression()), !dbg !98
  %4 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !99
  %5 = icmp ne %struct._xmlParserCtxt* %4, null, !dbg !99
  br i1 %5, label %7, label %6, !dbg !101

6:                                                ; preds = %1
  br label %70, !dbg !102

7:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler** %3, metadata !103, metadata !DIExpression()), !dbg !104
  %8 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !105
  %9 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %8, i32 0, i32 0, !dbg !106
  %10 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %9, align 8, !dbg !106
  store %struct._xmlSAXHandler* %10, %struct._xmlSAXHandler** %3, align 8, !dbg !104
  %11 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !107
  %12 = icmp ne %struct._xmlSAXHandler* %11, null, !dbg !107
  br i1 %12, label %33, label %13, !dbg !109

13:                                               ; preds = %7
  %14 = call noalias i8* @malloc(i64 noundef 4) #8, !dbg !110
  %15 = bitcast i8* %14 to %struct._xmlSAXHandler*, !dbg !112
  %16 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !113
  %17 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %16, i32 0, i32 0, !dbg !114
  store %struct._xmlSAXHandler* %15, %struct._xmlSAXHandler** %17, align 8, !dbg !115
  %18 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !116
  %19 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %18, i32 0, i32 0, !dbg !118
  %20 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %19, align 8, !dbg !118
  %21 = icmp ne %struct._xmlSAXHandler* %20, null, !dbg !116
  br i1 %21, label %22, label %28, !dbg !119

22:                                               ; preds = %13
  %23 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !120
  %24 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %23, i32 0, i32 0, !dbg !122
  %25 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %24, align 8, !dbg !122
  %26 = bitcast %struct._xmlSAXHandler* %25 to i8*, !dbg !123
  %27 = call i8* @memset(i8* %26, i32 0, i64 4), !dbg !123
  br label %28, !dbg !124

28:                                               ; preds = %22, %13
  %29 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !125
  %30 = bitcast %struct._xmlParserCtxt* %29 to i8*, !dbg !125
  %31 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !126
  %32 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %31, i32 0, i32 1, !dbg !127
  store i8* %30, i8** %32, align 8, !dbg !128
  br label %65, !dbg !129

33:                                               ; preds = %7
  %34 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !130
  %35 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %34, i32 0, i32 0, !dbg !133
  %36 = load i32, i32* %35, align 4, !dbg !133
  %37 = icmp eq i32 %36, 2, !dbg !134
  br i1 %37, label %38, label %46, !dbg !135

38:                                               ; preds = %33
  %39 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !136
  %40 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %39, i32 0, i32 0, !dbg !138
  %41 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %40, align 8, !dbg !138
  %42 = bitcast %struct._xmlSAXHandler* %41 to i8*, !dbg !139
  %43 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !140
  %44 = bitcast %struct._xmlSAXHandler* %43 to i8*, !dbg !139
  %45 = call i8* @memcpy(i8* %42, i8* %44, i64 4), !dbg !139
  br label %60, !dbg !141

46:                                               ; preds = %33
  %47 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !142
  %48 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %47, i32 0, i32 0, !dbg !144
  %49 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %48, align 8, !dbg !144
  %50 = bitcast %struct._xmlSAXHandler* %49 to i8*, !dbg !145
  %51 = call i8* @memset(i8* %50, i32 0, i64 4), !dbg !145
  %52 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.1, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.xmlCtxtReset, i64 0, i64 0)), !dbg !146
  %53 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !147
  %54 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %53, i32 0, i32 0, !dbg !148
  %55 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %54, align 8, !dbg !148
  %56 = bitcast %struct._xmlSAXHandler* %55 to i8*, !dbg !149
  %57 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !150
  %58 = bitcast %struct._xmlSAXHandler* %57 to i8*, !dbg !149
  %59 = call i8* @memcpy(i8* %56, i8* %58, i64 4), !dbg !149
  br label %60

60:                                               ; preds = %46, %38
  %61 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !151
  %62 = bitcast %struct._xmlParserCtxt* %61 to i8*, !dbg !151
  %63 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !152
  %64 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %63, i32 0, i32 1, !dbg !153
  store i8* %62, i8** %64, align 8, !dbg !154
  br label %65

65:                                               ; preds = %60, %28
  %66 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !155
  %67 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %66, i32 0, i32 2, !dbg !156
  store i32 0, i32* %67, align 8, !dbg !157
  %68 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !158
  %69 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %68, i32 0, i32 3, !dbg !159
  store i8* null, i8** %69, align 8, !dbg !160
  br label %70, !dbg !161

70:                                               ; preds = %65, %6
  ret void, !dbg !161
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlCtxtResetPush(%struct._xmlParserCtxt* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i8* noundef %4) #0 !dbg !162 {
  %6 = alloca %struct._xmlParserCtxt*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %6, metadata !165, metadata !DIExpression()), !dbg !166
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !167, metadata !DIExpression()), !dbg !168
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !169, metadata !DIExpression()), !dbg !170
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !171, metadata !DIExpression()), !dbg !172
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !173, metadata !DIExpression()), !dbg !174
  %11 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %6, align 8, !dbg !175
  call void @xmlCtxtReset(%struct._xmlParserCtxt* noundef %11), !dbg !176
  ret void, !dbg !177
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFreeParserCtxt(%struct._xmlParserCtxt* noundef %0) #0 !dbg !178 {
  %2 = alloca %struct._xmlParserCtxt*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !179, metadata !DIExpression()), !dbg !180
  %3 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !181
  %4 = icmp ne %struct._xmlParserCtxt* %3, null, !dbg !181
  br i1 %4, label %5, label %18, !dbg !183

5:                                                ; preds = %1
  %6 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !184
  %7 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %6, i32 0, i32 0, !dbg !187
  %8 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %7, align 8, !dbg !187
  %9 = icmp ne %struct._xmlSAXHandler* %8, null, !dbg !184
  br i1 %9, label %10, label %15, !dbg !188

10:                                               ; preds = %5
  %11 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !189
  %12 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %11, i32 0, i32 0, !dbg !190
  %13 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %12, align 8, !dbg !190
  %14 = bitcast %struct._xmlSAXHandler* %13 to i8*, !dbg !189
  call void @free(i8* noundef %14) #8, !dbg !191
  br label %15, !dbg !191

15:                                               ; preds = %10, %5
  %16 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !192
  %17 = bitcast %struct._xmlParserCtxt* %16 to i8*, !dbg !192
  call void @free(i8* noundef %17) #8, !dbg !193
  br label %18, !dbg !194

18:                                               ; preds = %15, %1
  ret void, !dbg !195
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !196 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct._xmlParserCtxt*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !199, metadata !DIExpression()), !dbg !200
  %4 = bitcast i32* %2 to i8*, !dbg !201
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)), !dbg !202
  %5 = load i32, i32* %2, align 4, !dbg !203
  %6 = icmp sge i32 %5, 0, !dbg !204
  br i1 %6, label %7, label %10, !dbg !205

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4, !dbg !206
  %9 = icmp sle i32 %8, 3, !dbg !207
  br label %10

10:                                               ; preds = %7, %0
  %11 = phi i1 [ false, %0 ], [ %9, %7 ], !dbg !208
  %12 = zext i1 %11 to i32, !dbg !205
  %13 = sext i32 %12 to i64, !dbg !203
  call void @klee_assume(i64 noundef %13), !dbg !209
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %3, metadata !210, metadata !DIExpression()), !dbg !211
  %14 = call %struct._xmlParserCtxt* @xmlCreateMemoryParserCtxt(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef 4), !dbg !212
  store %struct._xmlParserCtxt* %14, %struct._xmlParserCtxt** %3, align 8, !dbg !211
  %15 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !213
  %16 = icmp ne %struct._xmlParserCtxt* %15, null, !dbg !213
  br i1 %16, label %18, label %17, !dbg !215

17:                                               ; preds = %10
  store i32 1, i32* %1, align 4, !dbg !216
  br label %33, !dbg !216

18:                                               ; preds = %10
  %19 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !217
  call void @xmlInitParserCtxt(%struct._xmlParserCtxt* noundef %19), !dbg !218
  %20 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !219
  %21 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %20, i32 0, i32 0, !dbg !221
  %22 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %21, align 8, !dbg !221
  %23 = icmp ne %struct._xmlSAXHandler* %22, null, !dbg !219
  br i1 %23, label %24, label %30, !dbg !222

24:                                               ; preds = %18
  %25 = load i32, i32* %2, align 4, !dbg !223
  %26 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !225
  %27 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %26, i32 0, i32 0, !dbg !226
  %28 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %27, align 8, !dbg !226
  %29 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %28, i32 0, i32 0, !dbg !227
  store i32 %25, i32* %29, align 4, !dbg !228
  br label %30, !dbg !229

30:                                               ; preds = %24, %18
  %31 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !230
  call void @xmlCtxtReset(%struct._xmlParserCtxt* noundef %31), !dbg !231
  %32 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !232
  call void @xmlFreeParserCtxt(%struct._xmlParserCtxt* noundef %32), !dbg !233
  store i32 0, i32* %1, align 4, !dbg !234
  br label %33, !dbg !234

33:                                               ; preds = %30, %17
  %34 = load i32, i32* %1, align 4, !dbg !235
  ret i32 %34, !dbg !235
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #6

declare void @klee_assume(i64 noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !236 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !245, metadata !DIExpression()), !dbg !246
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !247, metadata !DIExpression()), !dbg !248
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !249, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.declare(metadata i8** %7, metadata !251, metadata !DIExpression()), !dbg !253
  %9 = load i8*, i8** %4, align 8, !dbg !254
  store i8* %9, i8** %7, align 8, !dbg !253
  call void @llvm.dbg.declare(metadata i8** %8, metadata !255, metadata !DIExpression()), !dbg !256
  %10 = load i8*, i8** %5, align 8, !dbg !257
  store i8* %10, i8** %8, align 8, !dbg !256
  br label %11, !dbg !258

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !259
  %13 = add i64 %12, -1, !dbg !259
  store i64 %13, i64* %6, align 8, !dbg !259
  %14 = icmp ugt i64 %12, 0, !dbg !260
  br i1 %14, label %15, label %21, !dbg !258

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !261
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !261
  store i8* %17, i8** %8, align 8, !dbg !261
  %18 = load i8, i8* %16, align 1, !dbg !262
  %19 = load i8*, i8** %7, align 8, !dbg !263
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !263
  store i8* %20, i8** %7, align 8, !dbg !263
  store i8 %18, i8* %19, align 1, !dbg !264
  br label %11, !dbg !258, !llvm.loop !265

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !267
  ret i8* %22, !dbg !268
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !269 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !273, metadata !DIExpression()), !dbg !274
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !275, metadata !DIExpression()), !dbg !276
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !277, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.declare(metadata i8** %7, metadata !279, metadata !DIExpression()), !dbg !280
  %8 = load i8*, i8** %4, align 8, !dbg !281
  store i8* %8, i8** %7, align 8, !dbg !280
  br label %9, !dbg !282

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !283
  %11 = add i64 %10, -1, !dbg !283
  store i64 %11, i64* %6, align 8, !dbg !283
  %12 = icmp ugt i64 %10, 0, !dbg !284
  br i1 %12, label %13, label %18, !dbg !282

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !285
  %15 = trunc i32 %14 to i8, !dbg !285
  %16 = load i8*, i8** %7, align 8, !dbg !286
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !286
  store i8* %17, i8** %7, align 8, !dbg !286
  store i8 %15, i8* %16, align 1, !dbg !287
  br label %9, !dbg !282, !llvm.loop !288

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !289
  ret i8* %19, !dbg !290
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30, !30, !30}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/015_parserInternals.c_1495_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "c7d500750b61b328a89f2f7573acf07c")
!2 = !{!3, !8, !15}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 12, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 25, size: 320, elements: !6)
!6 = !{!7, !14, !16, !17, !18}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "sax", scope: !5, file: !1, line: 26, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXHandler", file: !1, line: 10, baseType: !10)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXHandler", file: !1, line: 15, size: 32, elements: !11)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !10, file: !1, line: 16, baseType: !13, size: 32)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !5, file: !1, line: 27, baseType: !15, size: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "maxatts", scope: !5, file: !1, line: 28, baseType: !13, size: 32, offset: 128)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "atts", scope: !5, file: !1, line: 29, baseType: !15, size: 64, offset: 192)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "inputTab", scope: !5, file: !1, line: 30, baseType: !15, size: 64, offset: 256)
!19 = distinct !DICompileUnit(language: DW_LANG_C99, file: !20, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!21 = distinct !DICompileUnit(language: DW_LANG_C99, file: !22, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!22 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!23 = !{i32 7, !"Dwarf Version", i32 5}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = !{i32 7, !"PIC Level", i32 2}
!27 = !{i32 7, !"PIE Level", i32 2}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"Ubuntu clang version 14.0.6"}
!31 = distinct !DISubprogram(name: "xmlCreateMemoryParserCtxt", scope: !1, file: !1, line: 42, type: !32, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!32 = !DISubroutineType(types: !33)
!33 = !{!3, !34, !13}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !{}
!38 = !DILocalVariable(name: "buffer", arg: 1, scope: !31, file: !1, line: 42, type: !34)
!39 = !DILocation(line: 42, column: 54, scope: !31)
!40 = !DILocalVariable(name: "size", arg: 2, scope: !31, file: !1, line: 42, type: !13)
!41 = !DILocation(line: 42, column: 66, scope: !31)
!42 = !DILocalVariable(name: "ctxt", scope: !31, file: !1, line: 43, type: !3)
!43 = !DILocation(line: 43, column: 20, scope: !31)
!44 = !DILocation(line: 43, column: 43, scope: !31)
!45 = !DILocation(line: 43, column: 27, scope: !31)
!46 = !DILocation(line: 44, column: 10, scope: !47)
!47 = distinct !DILexicalBlock(scope: !31, file: !1, line: 44, column: 9)
!48 = !DILocation(line: 44, column: 9, scope: !31)
!49 = !DILocation(line: 44, column: 16, scope: !47)
!50 = !DILocation(line: 46, column: 33, scope: !31)
!51 = !DILocation(line: 46, column: 17, scope: !31)
!52 = !DILocation(line: 46, column: 5, scope: !31)
!53 = !DILocation(line: 46, column: 11, scope: !31)
!54 = !DILocation(line: 46, column: 15, scope: !31)
!55 = !DILocation(line: 47, column: 10, scope: !56)
!56 = distinct !DILexicalBlock(scope: !31, file: !1, line: 47, column: 9)
!57 = !DILocation(line: 47, column: 16, scope: !56)
!58 = !DILocation(line: 47, column: 9, scope: !31)
!59 = !DILocation(line: 48, column: 14, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !1, line: 47, column: 21)
!61 = !DILocation(line: 48, column: 9, scope: !60)
!62 = !DILocation(line: 49, column: 9, scope: !60)
!63 = !DILocation(line: 52, column: 5, scope: !31)
!64 = !DILocation(line: 52, column: 11, scope: !31)
!65 = !DILocation(line: 52, column: 20, scope: !31)
!66 = !DILocation(line: 53, column: 5, scope: !31)
!67 = !DILocation(line: 53, column: 11, scope: !31)
!68 = !DILocation(line: 53, column: 19, scope: !31)
!69 = !DILocation(line: 54, column: 5, scope: !31)
!70 = !DILocation(line: 54, column: 11, scope: !31)
!71 = !DILocation(line: 54, column: 16, scope: !31)
!72 = !DILocation(line: 55, column: 5, scope: !31)
!73 = !DILocation(line: 55, column: 11, scope: !31)
!74 = !DILocation(line: 55, column: 20, scope: !31)
!75 = !DILocation(line: 57, column: 12, scope: !31)
!76 = !DILocation(line: 57, column: 5, scope: !31)
!77 = !DILocation(line: 58, column: 1, scope: !31)
!78 = distinct !DISubprogram(name: "xmlInitParserCtxt", scope: !1, file: !1, line: 60, type: !79, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !3}
!81 = !DILocalVariable(name: "ctxt", arg: 1, scope: !78, file: !1, line: 60, type: !3)
!82 = !DILocation(line: 60, column: 39, scope: !78)
!83 = !DILocation(line: 62, column: 9, scope: !84)
!84 = distinct !DILexicalBlock(scope: !78, file: !1, line: 62, column: 9)
!85 = !DILocation(line: 62, column: 14, scope: !84)
!86 = !DILocation(line: 62, column: 17, scope: !84)
!87 = !DILocation(line: 62, column: 23, scope: !84)
!88 = !DILocation(line: 62, column: 9, scope: !78)
!89 = !DILocation(line: 63, column: 9, scope: !90)
!90 = distinct !DILexicalBlock(scope: !84, file: !1, line: 62, column: 28)
!91 = !DILocation(line: 63, column: 15, scope: !90)
!92 = !DILocation(line: 63, column: 20, scope: !90)
!93 = !DILocation(line: 63, column: 32, scope: !90)
!94 = !DILocation(line: 64, column: 5, scope: !90)
!95 = !DILocation(line: 65, column: 1, scope: !78)
!96 = distinct !DISubprogram(name: "xmlCtxtReset", scope: !1, file: !1, line: 67, type: !79, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!97 = !DILocalVariable(name: "ctxt", arg: 1, scope: !96, file: !1, line: 67, type: !3)
!98 = !DILocation(line: 67, column: 34, scope: !96)
!99 = !DILocation(line: 69, column: 10, scope: !100)
!100 = distinct !DILexicalBlock(scope: !96, file: !1, line: 69, column: 9)
!101 = !DILocation(line: 69, column: 9, scope: !96)
!102 = !DILocation(line: 69, column: 16, scope: !100)
!103 = !DILocalVariable(name: "sax", scope: !96, file: !1, line: 72, type: !8)
!104 = !DILocation(line: 72, column: 20, scope: !96)
!105 = !DILocation(line: 72, column: 26, scope: !96)
!106 = !DILocation(line: 72, column: 32, scope: !96)
!107 = !DILocation(line: 74, column: 10, scope: !108)
!108 = distinct !DILexicalBlock(scope: !96, file: !1, line: 74, column: 9)
!109 = !DILocation(line: 74, column: 9, scope: !96)
!110 = !DILocation(line: 76, column: 37, scope: !111)
!111 = distinct !DILexicalBlock(scope: !108, file: !1, line: 74, column: 15)
!112 = !DILocation(line: 76, column: 21, scope: !111)
!113 = !DILocation(line: 76, column: 9, scope: !111)
!114 = !DILocation(line: 76, column: 15, scope: !111)
!115 = !DILocation(line: 76, column: 19, scope: !111)
!116 = !DILocation(line: 77, column: 13, scope: !117)
!117 = distinct !DILexicalBlock(scope: !111, file: !1, line: 77, column: 13)
!118 = !DILocation(line: 77, column: 19, scope: !117)
!119 = !DILocation(line: 77, column: 13, scope: !111)
!120 = !DILocation(line: 78, column: 20, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !1, line: 77, column: 24)
!122 = !DILocation(line: 78, column: 26, scope: !121)
!123 = !DILocation(line: 78, column: 13, scope: !121)
!124 = !DILocation(line: 80, column: 9, scope: !121)
!125 = !DILocation(line: 81, column: 26, scope: !111)
!126 = !DILocation(line: 81, column: 9, scope: !111)
!127 = !DILocation(line: 81, column: 15, scope: !111)
!128 = !DILocation(line: 81, column: 24, scope: !111)
!129 = !DILocation(line: 82, column: 5, scope: !111)
!130 = !DILocation(line: 83, column: 13, scope: !131)
!131 = distinct !DILexicalBlock(scope: !132, file: !1, line: 83, column: 13)
!132 = distinct !DILexicalBlock(scope: !108, file: !1, line: 82, column: 12)
!133 = !DILocation(line: 83, column: 18, scope: !131)
!134 = !DILocation(line: 83, column: 30, scope: !131)
!135 = !DILocation(line: 83, column: 13, scope: !132)
!136 = !DILocation(line: 84, column: 20, scope: !137)
!137 = distinct !DILexicalBlock(scope: !131, file: !1, line: 83, column: 36)
!138 = !DILocation(line: 84, column: 26, scope: !137)
!139 = !DILocation(line: 84, column: 13, scope: !137)
!140 = !DILocation(line: 84, column: 31, scope: !137)
!141 = !DILocation(line: 85, column: 9, scope: !137)
!142 = !DILocation(line: 86, column: 20, scope: !143)
!143 = distinct !DILexicalBlock(scope: !131, file: !1, line: 85, column: 16)
!144 = !DILocation(line: 86, column: 26, scope: !143)
!145 = !DILocation(line: 86, column: 13, scope: !143)
!146 = !DILocation(line: 97, column: 13, scope: !143)
!147 = !DILocation(line: 99, column: 20, scope: !143)
!148 = !DILocation(line: 99, column: 26, scope: !143)
!149 = !DILocation(line: 99, column: 13, scope: !143)
!150 = !DILocation(line: 99, column: 31, scope: !143)
!151 = !DILocation(line: 101, column: 26, scope: !132)
!152 = !DILocation(line: 101, column: 9, scope: !132)
!153 = !DILocation(line: 101, column: 15, scope: !132)
!154 = !DILocation(line: 101, column: 24, scope: !132)
!155 = !DILocation(line: 104, column: 5, scope: !96)
!156 = !DILocation(line: 104, column: 11, scope: !96)
!157 = !DILocation(line: 104, column: 19, scope: !96)
!158 = !DILocation(line: 105, column: 5, scope: !96)
!159 = !DILocation(line: 105, column: 11, scope: !96)
!160 = !DILocation(line: 105, column: 16, scope: !96)
!161 = !DILocation(line: 106, column: 1, scope: !96)
!162 = distinct !DISubprogram(name: "xmlCtxtResetPush", scope: !1, file: !1, line: 108, type: !163, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !3, !34, !13, !34, !34}
!165 = !DILocalVariable(name: "ctxt", arg: 1, scope: !162, file: !1, line: 108, type: !3)
!166 = !DILocation(line: 108, column: 38, scope: !162)
!167 = !DILocalVariable(name: "chunk", arg: 2, scope: !162, file: !1, line: 108, type: !34)
!168 = !DILocation(line: 108, column: 56, scope: !162)
!169 = !DILocalVariable(name: "size", arg: 3, scope: !162, file: !1, line: 108, type: !13)
!170 = !DILocation(line: 108, column: 67, scope: !162)
!171 = !DILocalVariable(name: "filename", arg: 4, scope: !162, file: !1, line: 108, type: !34)
!172 = !DILocation(line: 108, column: 85, scope: !162)
!173 = !DILocalVariable(name: "encoding", arg: 5, scope: !162, file: !1, line: 108, type: !34)
!174 = !DILocation(line: 108, column: 107, scope: !162)
!175 = !DILocation(line: 110, column: 18, scope: !162)
!176 = !DILocation(line: 110, column: 5, scope: !162)
!177 = !DILocation(line: 111, column: 1, scope: !162)
!178 = distinct !DISubprogram(name: "xmlFreeParserCtxt", scope: !1, file: !1, line: 113, type: !79, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!179 = !DILocalVariable(name: "ctxt", arg: 1, scope: !178, file: !1, line: 113, type: !3)
!180 = !DILocation(line: 113, column: 39, scope: !178)
!181 = !DILocation(line: 114, column: 9, scope: !182)
!182 = distinct !DILexicalBlock(scope: !178, file: !1, line: 114, column: 9)
!183 = !DILocation(line: 114, column: 9, scope: !178)
!184 = !DILocation(line: 115, column: 13, scope: !185)
!185 = distinct !DILexicalBlock(scope: !186, file: !1, line: 115, column: 13)
!186 = distinct !DILexicalBlock(scope: !182, file: !1, line: 114, column: 15)
!187 = !DILocation(line: 115, column: 19, scope: !185)
!188 = !DILocation(line: 115, column: 13, scope: !186)
!189 = !DILocation(line: 115, column: 29, scope: !185)
!190 = !DILocation(line: 115, column: 35, scope: !185)
!191 = !DILocation(line: 115, column: 24, scope: !185)
!192 = !DILocation(line: 116, column: 14, scope: !186)
!193 = !DILocation(line: 116, column: 9, scope: !186)
!194 = !DILocation(line: 117, column: 5, scope: !186)
!195 = !DILocation(line: 118, column: 1, scope: !178)
!196 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 120, type: !197, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!197 = !DISubroutineType(types: !198)
!198 = !{!13}
!199 = !DILocalVariable(name: "sax_initialized", scope: !196, file: !1, line: 122, type: !13)
!200 = !DILocation(line: 122, column: 9, scope: !196)
!201 = !DILocation(line: 123, column: 24, scope: !196)
!202 = !DILocation(line: 123, column: 5, scope: !196)
!203 = !DILocation(line: 126, column: 17, scope: !196)
!204 = !DILocation(line: 126, column: 33, scope: !196)
!205 = !DILocation(line: 126, column: 38, scope: !196)
!206 = !DILocation(line: 126, column: 41, scope: !196)
!207 = !DILocation(line: 126, column: 57, scope: !196)
!208 = !DILocation(line: 0, scope: !196)
!209 = !DILocation(line: 126, column: 5, scope: !196)
!210 = !DILocalVariable(name: "ctxt", scope: !196, file: !1, line: 129, type: !3)
!211 = !DILocation(line: 129, column: 20, scope: !196)
!212 = !DILocation(line: 129, column: 27, scope: !196)
!213 = !DILocation(line: 130, column: 10, scope: !214)
!214 = distinct !DILexicalBlock(scope: !196, file: !1, line: 130, column: 9)
!215 = !DILocation(line: 130, column: 9, scope: !196)
!216 = !DILocation(line: 130, column: 16, scope: !214)
!217 = !DILocation(line: 133, column: 23, scope: !196)
!218 = !DILocation(line: 133, column: 5, scope: !196)
!219 = !DILocation(line: 136, column: 9, scope: !220)
!220 = distinct !DILexicalBlock(scope: !196, file: !1, line: 136, column: 9)
!221 = !DILocation(line: 136, column: 15, scope: !220)
!222 = !DILocation(line: 136, column: 9, scope: !196)
!223 = !DILocation(line: 137, column: 34, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !1, line: 136, column: 20)
!225 = !DILocation(line: 137, column: 9, scope: !224)
!226 = !DILocation(line: 137, column: 15, scope: !224)
!227 = !DILocation(line: 137, column: 20, scope: !224)
!228 = !DILocation(line: 137, column: 32, scope: !224)
!229 = !DILocation(line: 138, column: 5, scope: !224)
!230 = !DILocation(line: 141, column: 18, scope: !196)
!231 = !DILocation(line: 141, column: 5, scope: !196)
!232 = !DILocation(line: 144, column: 23, scope: !196)
!233 = !DILocation(line: 144, column: 5, scope: !196)
!234 = !DILocation(line: 146, column: 5, scope: !196)
!235 = !DILocation(line: 147, column: 1, scope: !196)
!236 = distinct !DISubprogram(name: "memcpy", scope: !237, file: !237, line: 12, type: !238, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !37)
!237 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!238 = !DISubroutineType(types: !239)
!239 = !{!15, !15, !240, !242}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !243, line: 46, baseType: !244)
!243 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!244 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!245 = !DILocalVariable(name: "destaddr", arg: 1, scope: !236, file: !237, line: 12, type: !15)
!246 = !DILocation(line: 12, column: 20, scope: !236)
!247 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !236, file: !237, line: 12, type: !240)
!248 = !DILocation(line: 12, column: 42, scope: !236)
!249 = !DILocalVariable(name: "len", arg: 3, scope: !236, file: !237, line: 12, type: !242)
!250 = !DILocation(line: 12, column: 58, scope: !236)
!251 = !DILocalVariable(name: "dest", scope: !236, file: !237, line: 13, type: !252)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!253 = !DILocation(line: 13, column: 9, scope: !236)
!254 = !DILocation(line: 13, column: 16, scope: !236)
!255 = !DILocalVariable(name: "src", scope: !236, file: !237, line: 14, type: !34)
!256 = !DILocation(line: 14, column: 15, scope: !236)
!257 = !DILocation(line: 14, column: 21, scope: !236)
!258 = !DILocation(line: 16, column: 3, scope: !236)
!259 = !DILocation(line: 16, column: 13, scope: !236)
!260 = !DILocation(line: 16, column: 16, scope: !236)
!261 = !DILocation(line: 17, column: 19, scope: !236)
!262 = !DILocation(line: 17, column: 15, scope: !236)
!263 = !DILocation(line: 17, column: 10, scope: !236)
!264 = !DILocation(line: 17, column: 13, scope: !236)
!265 = distinct !{!265, !258, !261, !266}
!266 = !{!"llvm.loop.mustprogress"}
!267 = !DILocation(line: 18, column: 10, scope: !236)
!268 = !DILocation(line: 18, column: 3, scope: !236)
!269 = distinct !DISubprogram(name: "memset", scope: !270, file: !270, line: 12, type: !271, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !37)
!270 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!271 = !DISubroutineType(types: !272)
!272 = !{!15, !15, !13, !242}
!273 = !DILocalVariable(name: "dst", arg: 1, scope: !269, file: !270, line: 12, type: !15)
!274 = !DILocation(line: 12, column: 20, scope: !269)
!275 = !DILocalVariable(name: "s", arg: 2, scope: !269, file: !270, line: 12, type: !13)
!276 = !DILocation(line: 12, column: 29, scope: !269)
!277 = !DILocalVariable(name: "count", arg: 3, scope: !269, file: !270, line: 12, type: !242)
!278 = !DILocation(line: 12, column: 39, scope: !269)
!279 = !DILocalVariable(name: "a", scope: !269, file: !270, line: 13, type: !252)
!280 = !DILocation(line: 13, column: 9, scope: !269)
!281 = !DILocation(line: 13, column: 13, scope: !269)
!282 = !DILocation(line: 14, column: 3, scope: !269)
!283 = !DILocation(line: 14, column: 15, scope: !269)
!284 = !DILocation(line: 14, column: 18, scope: !269)
!285 = !DILocation(line: 15, column: 12, scope: !269)
!286 = !DILocation(line: 15, column: 7, scope: !269)
!287 = !DILocation(line: 15, column: 10, scope: !269)
!288 = distinct !{!288, !282, !285, !266}
!289 = !DILocation(line: 16, column: 10, scope: !269)
!290 = !DILocation(line: 16, column: 3, scope: !269)

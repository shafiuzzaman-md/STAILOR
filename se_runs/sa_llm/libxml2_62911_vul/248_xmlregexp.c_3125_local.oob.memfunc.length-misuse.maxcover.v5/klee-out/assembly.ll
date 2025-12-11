; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/248_xmlregexp.c_3125_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/248_xmlregexp.c_3125_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegExecCtxt = type { i32*, %struct._xmlRegRollback*, i32, i32, i8* }
%struct._xmlRegRollback = type { i32* }
%struct._xmlRegexp = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"(exec->rollbacks[exec->nbRollbacks].counts != ((void*)0)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/248_xmlregexp.c_3125_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlRegexpExecSave = private unnamed_addr constant [42 x i8] c"void xmlRegexpExecSave(xmlRegExecCtxtPtr)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"nbCounters\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"status\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRegexpExecSave(%struct._xmlRegExecCtxt* noundef %0) #0 !dbg !27 {
  %2 = alloca %struct._xmlRegExecCtxt*, align 8
  %3 = alloca %struct._xmlRegexp*, align 8
  store %struct._xmlRegExecCtxt* %0, %struct._xmlRegExecCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecCtxt** %2, metadata !41, metadata !DIExpression()), !dbg !42
  %4 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !43
  %5 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %4, i32 0, i32 0, !dbg !45
  %6 = load i32*, i32** %5, align 8, !dbg !45
  %7 = icmp ne i32* %6, null, !dbg !43
  br i1 %7, label %8, label %51, !dbg !46

8:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata %struct._xmlRegexp** %3, metadata !47, metadata !DIExpression()), !dbg !49
  %9 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !50
  %10 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %9, i32 0, i32 4, !dbg !51
  %11 = load i8*, i8** %10, align 8, !dbg !51
  %12 = bitcast i8* %11 to %struct._xmlRegexp*, !dbg !52
  store %struct._xmlRegexp* %12, %struct._xmlRegexp** %3, align 8, !dbg !49
  %13 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !53
  %14 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %13, i32 0, i32 0, !dbg !54
  %15 = load i32*, i32** %14, align 8, !dbg !54
  %16 = bitcast i32* %15 to i8*, !dbg !55
  %17 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !56
  %18 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %17, i32 0, i32 1, !dbg !57
  %19 = load %struct._xmlRegRollback*, %struct._xmlRegRollback** %18, align 8, !dbg !57
  %20 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !58
  %21 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %20, i32 0, i32 2, !dbg !59
  %22 = load i32, i32* %21, align 8, !dbg !59
  %23 = sext i32 %22 to i64, !dbg !56
  %24 = getelementptr inbounds %struct._xmlRegRollback, %struct._xmlRegRollback* %19, i64 %23, !dbg !56
  %25 = getelementptr inbounds %struct._xmlRegRollback, %struct._xmlRegRollback* %24, i32 0, i32 0, !dbg !60
  %26 = load i32*, i32** %25, align 8, !dbg !60
  %27 = bitcast i32* %26 to i8*, !dbg !55
  %28 = load %struct._xmlRegexp*, %struct._xmlRegexp** %3, align 8, !dbg !61
  %29 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %28, i32 0, i32 0, !dbg !62
  %30 = load i32, i32* %29, align 4, !dbg !62
  %31 = sext i32 %30 to i64, !dbg !61
  %32 = mul i64 %31, 4, !dbg !63
  %33 = call i8* @memcpy(i8* %16, i8* %27, i64 %32), !dbg !55
  %34 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !64
  %35 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %34, i32 0, i32 1, !dbg !64
  %36 = load %struct._xmlRegRollback*, %struct._xmlRegRollback** %35, align 8, !dbg !64
  %37 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !64
  %38 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %37, i32 0, i32 2, !dbg !64
  %39 = load i32, i32* %38, align 8, !dbg !64
  %40 = sext i32 %39 to i64, !dbg !64
  %41 = getelementptr inbounds %struct._xmlRegRollback, %struct._xmlRegRollback* %36, i64 %40, !dbg !64
  %42 = getelementptr inbounds %struct._xmlRegRollback, %struct._xmlRegRollback* %41, i32 0, i32 0, !dbg !64
  %43 = load i32*, i32** %42, align 8, !dbg !64
  %44 = icmp ne i32* %43, null, !dbg !64
  br i1 %44, label %45, label %47, !dbg !64

45:                                               ; preds = %8
  br i1 true, label %46, label %47, !dbg !64

46:                                               ; preds = %45
  br label %49, !dbg !64

47:                                               ; preds = %45, %8
  %48 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.xmlRegexpExecSave, i64 0, i64 0)), !dbg !64
  br label %49, !dbg !64

49:                                               ; preds = %47, %46
  %50 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.xmlRegexpExecSave, i64 0, i64 0)), !dbg !65
  br label %51, !dbg !66

51:                                               ; preds = %49, %1
  ret void, !dbg !67
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRegexp* @xmlRegexpCompile(i8* noundef %0) #0 !dbg !68 {
  %2 = alloca %struct._xmlRegexp*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._xmlRegexp*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata %struct._xmlRegexp** %4, metadata !76, metadata !DIExpression()), !dbg !77
  %5 = call noalias i8* @malloc(i64 noundef 4) #7, !dbg !78
  %6 = bitcast i8* %5 to %struct._xmlRegexp*, !dbg !79
  store %struct._xmlRegexp* %6, %struct._xmlRegexp** %4, align 8, !dbg !80
  %7 = load %struct._xmlRegexp*, %struct._xmlRegexp** %4, align 8, !dbg !81
  %8 = icmp eq %struct._xmlRegexp* %7, null, !dbg !83
  br i1 %8, label %9, label %10, !dbg !84

9:                                                ; preds = %1
  store %struct._xmlRegexp* null, %struct._xmlRegexp** %2, align 8, !dbg !85
  br label %27, !dbg !85

10:                                               ; preds = %1
  %11 = load %struct._xmlRegexp*, %struct._xmlRegexp** %4, align 8, !dbg !86
  %12 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %11, i32 0, i32 0, !dbg !87
  %13 = bitcast i32* %12 to i8*, !dbg !88
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)), !dbg !89
  %14 = load %struct._xmlRegexp*, %struct._xmlRegexp** %4, align 8, !dbg !90
  %15 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %14, i32 0, i32 0, !dbg !91
  %16 = load i32, i32* %15, align 4, !dbg !91
  %17 = icmp sge i32 %16, 0, !dbg !92
  %18 = zext i1 %17 to i32, !dbg !92
  %19 = sext i32 %18 to i64, !dbg !90
  call void @klee_assume(i64 noundef %19), !dbg !93
  %20 = load %struct._xmlRegexp*, %struct._xmlRegexp** %4, align 8, !dbg !94
  %21 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %20, i32 0, i32 0, !dbg !95
  %22 = load i32, i32* %21, align 4, !dbg !95
  %23 = icmp sle i32 %22, 100, !dbg !96
  %24 = zext i1 %23 to i32, !dbg !96
  %25 = sext i32 %24 to i64, !dbg !94
  call void @klee_assume(i64 noundef %25), !dbg !97
  %26 = load %struct._xmlRegexp*, %struct._xmlRegexp** %4, align 8, !dbg !98
  store %struct._xmlRegexp* %26, %struct._xmlRegexp** %2, align 8, !dbg !99
  br label %27, !dbg !99

27:                                               ; preds = %10, %9
  %28 = load %struct._xmlRegexp*, %struct._xmlRegexp** %2, align 8, !dbg !100
  ret %struct._xmlRegexp* %28, !dbg !100
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !101 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRegExecCtxt, align 8
  %3 = alloca %struct._xmlRegexp*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecCtxt* %2, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata %struct._xmlRegexp** %3, metadata !106, metadata !DIExpression()), !dbg !107
  %4 = call %struct._xmlRegexp* @xmlRegexpCompile(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !108
  store %struct._xmlRegexp* %4, %struct._xmlRegexp** %3, align 8, !dbg !109
  %5 = load %struct._xmlRegexp*, %struct._xmlRegexp** %3, align 8, !dbg !110
  %6 = icmp eq %struct._xmlRegexp* %5, null, !dbg !112
  br i1 %6, label %7, label %8, !dbg !113

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !114
  br label %69, !dbg !114

8:                                                ; preds = %0
  %9 = load %struct._xmlRegexp*, %struct._xmlRegexp** %3, align 8, !dbg !115
  %10 = bitcast %struct._xmlRegexp* %9 to i8*, !dbg !115
  %11 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 4, !dbg !116
  store i8* %10, i8** %11, align 8, !dbg !117
  %12 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 2, !dbg !118
  store i32 0, i32* %12, align 8, !dbg !119
  %13 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 3, !dbg !120
  %14 = bitcast i32* %13 to i8*, !dbg !121
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)), !dbg !122
  %15 = call noalias i8* @malloc(i64 noundef 8) #7, !dbg !123
  %16 = bitcast i8* %15 to %struct._xmlRegRollback*, !dbg !124
  %17 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 1, !dbg !125
  store %struct._xmlRegRollback* %16, %struct._xmlRegRollback** %17, align 8, !dbg !126
  %18 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 1, !dbg !127
  %19 = load %struct._xmlRegRollback*, %struct._xmlRegRollback** %18, align 8, !dbg !127
  %20 = icmp eq %struct._xmlRegRollback* %19, null, !dbg !129
  br i1 %20, label %21, label %22, !dbg !130

21:                                               ; preds = %8
  store i32 0, i32* %1, align 4, !dbg !131
  br label %69, !dbg !131

22:                                               ; preds = %8
  %23 = load %struct._xmlRegexp*, %struct._xmlRegexp** %3, align 8, !dbg !132
  %24 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %23, i32 0, i32 0, !dbg !133
  %25 = load i32, i32* %24, align 4, !dbg !133
  %26 = sext i32 %25 to i64, !dbg !132
  %27 = mul i64 %26, 4, !dbg !134
  %28 = call noalias i8* @malloc(i64 noundef %27) #7, !dbg !135
  %29 = bitcast i8* %28 to i32*, !dbg !136
  %30 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 1, !dbg !137
  %31 = load %struct._xmlRegRollback*, %struct._xmlRegRollback** %30, align 8, !dbg !137
  %32 = getelementptr inbounds %struct._xmlRegRollback, %struct._xmlRegRollback* %31, i64 0, !dbg !138
  %33 = getelementptr inbounds %struct._xmlRegRollback, %struct._xmlRegRollback* %32, i32 0, i32 0, !dbg !139
  store i32* %29, i32** %33, align 8, !dbg !140
  %34 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 1, !dbg !141
  %35 = load %struct._xmlRegRollback*, %struct._xmlRegRollback** %34, align 8, !dbg !141
  %36 = getelementptr inbounds %struct._xmlRegRollback, %struct._xmlRegRollback* %35, i64 0, !dbg !143
  %37 = getelementptr inbounds %struct._xmlRegRollback, %struct._xmlRegRollback* %36, i32 0, i32 0, !dbg !144
  %38 = load i32*, i32** %37, align 8, !dbg !144
  %39 = icmp eq i32* %38, null, !dbg !145
  br i1 %39, label %40, label %41, !dbg !146

40:                                               ; preds = %22
  store i32 0, i32* %1, align 4, !dbg !147
  br label %69, !dbg !147

41:                                               ; preds = %22
  %42 = load %struct._xmlRegexp*, %struct._xmlRegexp** %3, align 8, !dbg !148
  %43 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %42, i32 0, i32 0, !dbg !149
  %44 = load i32, i32* %43, align 4, !dbg !149
  %45 = sext i32 %44 to i64, !dbg !148
  %46 = mul i64 %45, 4, !dbg !150
  %47 = call noalias i8* @malloc(i64 noundef %46) #7, !dbg !151
  %48 = bitcast i8* %47 to i32*, !dbg !152
  %49 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 0, !dbg !153
  store i32* %48, i32** %49, align 8, !dbg !154
  %50 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 0, !dbg !155
  %51 = load i32*, i32** %50, align 8, !dbg !155
  %52 = icmp eq i32* %51, null, !dbg !157
  br i1 %52, label %53, label %54, !dbg !158

53:                                               ; preds = %41
  store i32 0, i32* %1, align 4, !dbg !159
  br label %69, !dbg !159

54:                                               ; preds = %41
  call void @xmlRegexpExecSave(%struct._xmlRegExecCtxt* noundef %2), !dbg !160
  %55 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 1, !dbg !161
  %56 = load %struct._xmlRegRollback*, %struct._xmlRegRollback** %55, align 8, !dbg !161
  %57 = getelementptr inbounds %struct._xmlRegRollback, %struct._xmlRegRollback* %56, i64 0, !dbg !162
  %58 = getelementptr inbounds %struct._xmlRegRollback, %struct._xmlRegRollback* %57, i32 0, i32 0, !dbg !163
  %59 = load i32*, i32** %58, align 8, !dbg !163
  %60 = bitcast i32* %59 to i8*, !dbg !162
  call void @free(i8* noundef %60) #7, !dbg !164
  %61 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 1, !dbg !165
  %62 = load %struct._xmlRegRollback*, %struct._xmlRegRollback** %61, align 8, !dbg !165
  %63 = bitcast %struct._xmlRegRollback* %62 to i8*, !dbg !166
  call void @free(i8* noundef %63) #7, !dbg !167
  %64 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 0, !dbg !168
  %65 = load i32*, i32** %64, align 8, !dbg !168
  %66 = bitcast i32* %65 to i8*, !dbg !169
  call void @free(i8* noundef %66) #7, !dbg !170
  %67 = load %struct._xmlRegexp*, %struct._xmlRegexp** %3, align 8, !dbg !171
  %68 = bitcast %struct._xmlRegexp* %67 to i8*, !dbg !171
  call void @free(i8* noundef %68) #7, !dbg !172
  store i32 0, i32* %1, align 4, !dbg !173
  br label %69, !dbg !173

69:                                               ; preds = %54, %53, %40, %21, %7
  %70 = load i32, i32* %1, align 4, !dbg !174
  ret i32 %70, !dbg !174
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !175 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !184, metadata !DIExpression()), !dbg !185
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !186, metadata !DIExpression()), !dbg !187
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !188, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.declare(metadata i8** %7, metadata !190, metadata !DIExpression()), !dbg !192
  %9 = load i8*, i8** %4, align 8, !dbg !193
  store i8* %9, i8** %7, align 8, !dbg !192
  call void @llvm.dbg.declare(metadata i8** %8, metadata !194, metadata !DIExpression()), !dbg !195
  %10 = load i8*, i8** %5, align 8, !dbg !196
  store i8* %10, i8** %8, align 8, !dbg !195
  br label %11, !dbg !197

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !198
  %13 = add i64 %12, -1, !dbg !198
  store i64 %13, i64* %6, align 8, !dbg !198
  %14 = icmp ugt i64 %12, 0, !dbg !199
  br i1 %14, label %15, label %21, !dbg !197

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !200
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !200
  store i8* %17, i8** %8, align 8, !dbg !200
  %18 = load i8, i8* %16, align 1, !dbg !201
  %19 = load i8*, i8** %7, align 8, !dbg !202
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !202
  store i8* %20, i8** %7, align 8, !dbg !202
  store i8 %18, i8* %19, align 1, !dbg !203
  br label %11, !dbg !197, !llvm.loop !204

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !206
  ret i8* %22, !dbg !207
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26, !26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/248_xmlregexp.c_3125_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "de30ebbb944da86d39c1a42d98379406")
!2 = !{!3, !10, !11, !16}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexpPtr", file: !1, line: 13, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexp", file: !1, line: 12, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegexp", file: !1, line: 29, size: 32, elements: !7)
!7 = !{!8}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "nbCounters", scope: !6, file: !1, line: 30, baseType: !9, size: 32)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegRollback", file: !1, line: 15, baseType: !13)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegRollback", file: !1, line: 25, size: 64, elements: !14)
!14 = !{!15}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !13, file: !1, line: 26, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!19 = !{i32 7, !"Dwarf Version", i32 5}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{i32 7, !"PIC Level", i32 2}
!23 = !{i32 7, !"PIE Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"Ubuntu clang version 14.0.6"}
!27 = distinct !DISubprogram(name: "xmlRegexpExecSave", scope: !1, file: !1, line: 33, type: !28, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !40)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30}
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegExecCtxtPtr", file: !1, line: 10, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegExecCtxt", file: !1, line: 9, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegExecCtxt", file: !1, line: 17, size: 256, elements: !34)
!34 = !{!35, !36, !37, !38, !39}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !33, file: !1, line: 18, baseType: !16, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "rollbacks", scope: !33, file: !1, line: 19, baseType: !11, size: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "nbRollbacks", scope: !33, file: !1, line: 20, baseType: !9, size: 32, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !33, file: !1, line: 21, baseType: !9, size: 32, offset: 160)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !33, file: !1, line: 22, baseType: !10, size: 64, offset: 192)
!40 = !{}
!41 = !DILocalVariable(name: "exec", arg: 1, scope: !27, file: !1, line: 33, type: !30)
!42 = !DILocation(line: 33, column: 42, scope: !27)
!43 = !DILocation(line: 34, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !27, file: !1, line: 34, column: 9)
!45 = !DILocation(line: 34, column: 15, scope: !44)
!46 = !DILocation(line: 34, column: 9, scope: !27)
!47 = !DILocalVariable(name: "comp", scope: !48, file: !1, line: 35, type: !3)
!48 = distinct !DILexicalBlock(scope: !44, file: !1, line: 34, column: 23)
!49 = !DILocation(line: 35, column: 22, scope: !48)
!50 = !DILocation(line: 35, column: 43, scope: !48)
!51 = !DILocation(line: 35, column: 49, scope: !48)
!52 = !DILocation(line: 35, column: 29, scope: !48)
!53 = !DILocation(line: 36, column: 16, scope: !48)
!54 = !DILocation(line: 36, column: 22, scope: !48)
!55 = !DILocation(line: 36, column: 9, scope: !48)
!56 = !DILocation(line: 36, column: 30, scope: !48)
!57 = !DILocation(line: 36, column: 36, scope: !48)
!58 = !DILocation(line: 36, column: 46, scope: !48)
!59 = !DILocation(line: 36, column: 52, scope: !48)
!60 = !DILocation(line: 36, column: 65, scope: !48)
!61 = !DILocation(line: 37, column: 16, scope: !48)
!62 = !DILocation(line: 37, column: 22, scope: !48)
!63 = !DILocation(line: 37, column: 33, scope: !48)
!64 = !DILocation(line: 39, column: 9, scope: !48)
!65 = !DILocation(line: 40, column: 9, scope: !48)
!66 = !DILocation(line: 41, column: 5, scope: !48)
!67 = !DILocation(line: 42, column: 1, scope: !27)
!68 = distinct !DISubprogram(name: "xmlRegexpCompile", scope: !1, file: !1, line: 44, type: !69, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !40)
!69 = !DISubroutineType(types: !70)
!70 = !{!3, !71}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!73 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!74 = !DILocalVariable(name: "regexp", arg: 1, scope: !68, file: !1, line: 44, type: !71)
!75 = !DILocation(line: 44, column: 43, scope: !68)
!76 = !DILocalVariable(name: "ret", scope: !68, file: !1, line: 45, type: !3)
!77 = !DILocation(line: 45, column: 18, scope: !68)
!78 = !DILocation(line: 46, column: 25, scope: !68)
!79 = !DILocation(line: 46, column: 11, scope: !68)
!80 = !DILocation(line: 46, column: 9, scope: !68)
!81 = !DILocation(line: 47, column: 9, scope: !82)
!82 = distinct !DILexicalBlock(scope: !68, file: !1, line: 47, column: 9)
!83 = !DILocation(line: 47, column: 13, scope: !82)
!84 = !DILocation(line: 47, column: 9, scope: !68)
!85 = !DILocation(line: 47, column: 22, scope: !82)
!86 = !DILocation(line: 49, column: 25, scope: !68)
!87 = !DILocation(line: 49, column: 30, scope: !68)
!88 = !DILocation(line: 49, column: 24, scope: !68)
!89 = !DILocation(line: 49, column: 5, scope: !68)
!90 = !DILocation(line: 50, column: 17, scope: !68)
!91 = !DILocation(line: 50, column: 22, scope: !68)
!92 = !DILocation(line: 50, column: 33, scope: !68)
!93 = !DILocation(line: 50, column: 5, scope: !68)
!94 = !DILocation(line: 51, column: 17, scope: !68)
!95 = !DILocation(line: 51, column: 22, scope: !68)
!96 = !DILocation(line: 51, column: 33, scope: !68)
!97 = !DILocation(line: 51, column: 5, scope: !68)
!98 = !DILocation(line: 53, column: 12, scope: !68)
!99 = !DILocation(line: 53, column: 5, scope: !68)
!100 = !DILocation(line: 54, column: 1, scope: !68)
!101 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 56, type: !102, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !40)
!102 = !DISubroutineType(types: !103)
!103 = !{!9}
!104 = !DILocalVariable(name: "exec", scope: !101, file: !1, line: 57, type: !32)
!105 = !DILocation(line: 57, column: 20, scope: !101)
!106 = !DILocalVariable(name: "comp", scope: !101, file: !1, line: 58, type: !3)
!107 = !DILocation(line: 58, column: 18, scope: !101)
!108 = !DILocation(line: 60, column: 12, scope: !101)
!109 = !DILocation(line: 60, column: 10, scope: !101)
!110 = !DILocation(line: 61, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !101, file: !1, line: 61, column: 9)
!112 = !DILocation(line: 61, column: 14, scope: !111)
!113 = !DILocation(line: 61, column: 9, scope: !101)
!114 = !DILocation(line: 61, column: 23, scope: !111)
!115 = !DILocation(line: 63, column: 17, scope: !101)
!116 = !DILocation(line: 63, column: 10, scope: !101)
!117 = !DILocation(line: 63, column: 15, scope: !101)
!118 = !DILocation(line: 64, column: 10, scope: !101)
!119 = !DILocation(line: 64, column: 22, scope: !101)
!120 = !DILocation(line: 66, column: 30, scope: !101)
!121 = !DILocation(line: 66, column: 24, scope: !101)
!122 = !DILocation(line: 66, column: 5, scope: !101)
!123 = !DILocation(line: 68, column: 39, scope: !101)
!124 = !DILocation(line: 68, column: 22, scope: !101)
!125 = !DILocation(line: 68, column: 10, scope: !101)
!126 = !DILocation(line: 68, column: 20, scope: !101)
!127 = !DILocation(line: 69, column: 14, scope: !128)
!128 = distinct !DILexicalBlock(scope: !101, file: !1, line: 69, column: 9)
!129 = !DILocation(line: 69, column: 24, scope: !128)
!130 = !DILocation(line: 69, column: 9, scope: !101)
!131 = !DILocation(line: 69, column: 33, scope: !128)
!132 = !DILocation(line: 71, column: 45, scope: !101)
!133 = !DILocation(line: 71, column: 51, scope: !101)
!134 = !DILocation(line: 71, column: 62, scope: !101)
!135 = !DILocation(line: 71, column: 38, scope: !101)
!136 = !DILocation(line: 71, column: 32, scope: !101)
!137 = !DILocation(line: 71, column: 10, scope: !101)
!138 = !DILocation(line: 71, column: 5, scope: !101)
!139 = !DILocation(line: 71, column: 23, scope: !101)
!140 = !DILocation(line: 71, column: 30, scope: !101)
!141 = !DILocation(line: 72, column: 14, scope: !142)
!142 = distinct !DILexicalBlock(scope: !101, file: !1, line: 72, column: 9)
!143 = !DILocation(line: 72, column: 9, scope: !142)
!144 = !DILocation(line: 72, column: 27, scope: !142)
!145 = !DILocation(line: 72, column: 34, scope: !142)
!146 = !DILocation(line: 72, column: 9, scope: !101)
!147 = !DILocation(line: 72, column: 43, scope: !142)
!148 = !DILocation(line: 74, column: 32, scope: !101)
!149 = !DILocation(line: 74, column: 38, scope: !101)
!150 = !DILocation(line: 74, column: 49, scope: !101)
!151 = !DILocation(line: 74, column: 25, scope: !101)
!152 = !DILocation(line: 74, column: 19, scope: !101)
!153 = !DILocation(line: 74, column: 10, scope: !101)
!154 = !DILocation(line: 74, column: 17, scope: !101)
!155 = !DILocation(line: 75, column: 14, scope: !156)
!156 = distinct !DILexicalBlock(scope: !101, file: !1, line: 75, column: 9)
!157 = !DILocation(line: 75, column: 21, scope: !156)
!158 = !DILocation(line: 75, column: 9, scope: !101)
!159 = !DILocation(line: 75, column: 30, scope: !156)
!160 = !DILocation(line: 77, column: 5, scope: !101)
!161 = !DILocation(line: 79, column: 15, scope: !101)
!162 = !DILocation(line: 79, column: 10, scope: !101)
!163 = !DILocation(line: 79, column: 28, scope: !101)
!164 = !DILocation(line: 79, column: 5, scope: !101)
!165 = !DILocation(line: 80, column: 15, scope: !101)
!166 = !DILocation(line: 80, column: 10, scope: !101)
!167 = !DILocation(line: 80, column: 5, scope: !101)
!168 = !DILocation(line: 81, column: 15, scope: !101)
!169 = !DILocation(line: 81, column: 10, scope: !101)
!170 = !DILocation(line: 81, column: 5, scope: !101)
!171 = !DILocation(line: 82, column: 10, scope: !101)
!172 = !DILocation(line: 82, column: 5, scope: !101)
!173 = !DILocation(line: 84, column: 5, scope: !101)
!174 = !DILocation(line: 85, column: 1, scope: !101)
!175 = distinct !DISubprogram(name: "memcpy", scope: !176, file: !176, line: 12, type: !177, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !40)
!176 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!177 = !DISubroutineType(types: !178)
!178 = !{!10, !10, !179, !181}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !182, line: 46, baseType: !183)
!182 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!183 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!184 = !DILocalVariable(name: "destaddr", arg: 1, scope: !175, file: !176, line: 12, type: !10)
!185 = !DILocation(line: 12, column: 20, scope: !175)
!186 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !175, file: !176, line: 12, type: !179)
!187 = !DILocation(line: 12, column: 42, scope: !175)
!188 = !DILocalVariable(name: "len", arg: 3, scope: !175, file: !176, line: 12, type: !181)
!189 = !DILocation(line: 12, column: 58, scope: !175)
!190 = !DILocalVariable(name: "dest", scope: !175, file: !176, line: 13, type: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!192 = !DILocation(line: 13, column: 9, scope: !175)
!193 = !DILocation(line: 13, column: 16, scope: !175)
!194 = !DILocalVariable(name: "src", scope: !175, file: !176, line: 14, type: !71)
!195 = !DILocation(line: 14, column: 15, scope: !175)
!196 = !DILocation(line: 14, column: 21, scope: !175)
!197 = !DILocation(line: 16, column: 3, scope: !175)
!198 = !DILocation(line: 16, column: 13, scope: !175)
!199 = !DILocation(line: 16, column: 16, scope: !175)
!200 = !DILocation(line: 17, column: 19, scope: !175)
!201 = !DILocation(line: 17, column: 15, scope: !175)
!202 = !DILocation(line: 17, column: 10, scope: !175)
!203 = !DILocation(line: 17, column: 13, scope: !175)
!204 = distinct !{!204, !197, !200, !205}
!205 = !{!"llvm.loop.mustprogress"}
!206 = !DILocation(line: 18, column: 10, scope: !175)
!207 = !DILocation(line: 18, column: 3, scope: !175)

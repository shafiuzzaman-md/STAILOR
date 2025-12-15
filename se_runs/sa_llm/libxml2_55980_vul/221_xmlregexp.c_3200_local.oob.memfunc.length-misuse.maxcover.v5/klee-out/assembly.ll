; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/221_xmlregexp.c_3200_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/221_xmlregexp.c_3200_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegExecCtxt = type { %struct._xmlRegExecRollback*, i32, i32, i8*, i32, i32, %struct._xmlRegexp* }
%struct._xmlRegExecRollback = type { i8*, i32, i32, i32* }
%struct._xmlRegexp = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"nbCounters\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"saving regexp\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [212 x i8] c"((exec->maxRollbacks - len) >= 0 && (size_t)(exec->maxRollbacks - len) <= (exec->maxRollbacks * sizeof(xmlRegExecRollback) - len * sizeof(xmlRegExecRollback)) / sizeof(xmlRegExecRollback)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_55980_vul/221_xmlregexp.c_3200_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.simulate_vulnerable_path = private unnamed_addr constant [53 x i8] c"void simulate_vulnerable_path(xmlRegExecCtxt *, int)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRegexpErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !30 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !37, metadata !DIExpression()), !dbg !38
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !39, metadata !DIExpression()), !dbg !40
  %5 = load i8*, i8** %3, align 8, !dbg !41
  %6 = load i8*, i8** %4, align 8, !dbg !42
  ret void, !dbg !43
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !44 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !47, metadata !DIExpression()), !dbg !48
  %3 = load i64, i64* %2, align 8, !dbg !49
  %4 = call noalias i8* @malloc(i64 noundef %3) #5, !dbg !50
  ret i8* %4, !dbg !51
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !52 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRegExecCtxt, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecCtxt* %2, metadata !55, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %3, metadata !67, metadata !DIExpression()), !dbg !68
  %4 = bitcast %struct._xmlRegExecCtxt* %2 to i8*, !dbg !69
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 40, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !70
  %5 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 1, !dbg !71
  %6 = load i32, i32* %5, align 8, !dbg !71
  %7 = icmp sge i32 %6, 0, !dbg !72
  %8 = zext i1 %7 to i32, !dbg !72
  %9 = sext i32 %8 to i64, !dbg !73
  call void @klee_assume(i64 noundef %9), !dbg !74
  %10 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 1, !dbg !75
  %11 = load i32, i32* %10, align 8, !dbg !75
  %12 = icmp slt i32 %11, 10000, !dbg !76
  %13 = zext i1 %12 to i32, !dbg !76
  %14 = sext i32 %13 to i64, !dbg !77
  call void @klee_assume(i64 noundef %14), !dbg !78
  %15 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 2, !dbg !79
  %16 = load i32, i32* %15, align 4, !dbg !79
  %17 = icmp sge i32 %16, 0, !dbg !80
  %18 = zext i1 %17 to i32, !dbg !80
  %19 = sext i32 %18 to i64, !dbg !81
  call void @klee_assume(i64 noundef %19), !dbg !82
  %20 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 2, !dbg !83
  %21 = load i32, i32* %20, align 4, !dbg !83
  %22 = icmp slt i32 %21, 10000, !dbg !84
  %23 = zext i1 %22 to i32, !dbg !84
  %24 = sext i32 %23 to i64, !dbg !85
  call void @klee_assume(i64 noundef %24), !dbg !86
  %25 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 5, !dbg !87
  %26 = load i32, i32* %25, align 4, !dbg !87
  %27 = icmp sge i32 %26, 0, !dbg !88
  %28 = zext i1 %27 to i32, !dbg !88
  %29 = sext i32 %28 to i64, !dbg !89
  call void @klee_assume(i64 noundef %29), !dbg !90
  %30 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 5, !dbg !91
  %31 = load i32, i32* %30, align 4, !dbg !91
  %32 = icmp slt i32 %31, 10000, !dbg !92
  %33 = zext i1 %32 to i32, !dbg !92
  %34 = sext i32 %33 to i64, !dbg !93
  call void @klee_assume(i64 noundef %34), !dbg !94
  %35 = call noalias i8* @malloc(i64 noundef 4) #5, !dbg !95
  %36 = bitcast i8* %35 to %struct._xmlRegexp*, !dbg !96
  %37 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 6, !dbg !97
  store %struct._xmlRegexp* %36, %struct._xmlRegexp** %37, align 8, !dbg !98
  %38 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 6, !dbg !99
  %39 = load %struct._xmlRegexp*, %struct._xmlRegexp** %38, align 8, !dbg !99
  %40 = icmp ne %struct._xmlRegexp* %39, null, !dbg !101
  br i1 %40, label %41, label %60, !dbg !102

41:                                               ; preds = %0
  %42 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 6, !dbg !103
  %43 = load %struct._xmlRegexp*, %struct._xmlRegexp** %42, align 8, !dbg !103
  %44 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %43, i32 0, i32 0, !dbg !105
  %45 = bitcast i32* %44 to i8*, !dbg !106
  call void @klee_make_symbolic(i8* noundef %45, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)), !dbg !107
  %46 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 6, !dbg !108
  %47 = load %struct._xmlRegexp*, %struct._xmlRegexp** %46, align 8, !dbg !108
  %48 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %47, i32 0, i32 0, !dbg !109
  %49 = load i32, i32* %48, align 4, !dbg !109
  %50 = icmp sge i32 %49, 0, !dbg !110
  %51 = zext i1 %50 to i32, !dbg !110
  %52 = sext i32 %51 to i64, !dbg !111
  call void @klee_assume(i64 noundef %52), !dbg !112
  %53 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 6, !dbg !113
  %54 = load %struct._xmlRegexp*, %struct._xmlRegexp** %53, align 8, !dbg !113
  %55 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %54, i32 0, i32 0, !dbg !114
  %56 = load i32, i32* %55, align 4, !dbg !114
  %57 = icmp slt i32 %56, 100, !dbg !115
  %58 = zext i1 %57 to i32, !dbg !115
  %59 = sext i32 %58 to i64, !dbg !116
  call void @klee_assume(i64 noundef %59), !dbg !117
  br label %60, !dbg !118

60:                                               ; preds = %41, %0
  %61 = bitcast i32* %3 to i8*, !dbg !119
  call void @klee_make_symbolic(i8* noundef %61, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !120
  %62 = load i32, i32* %3, align 4, !dbg !121
  %63 = icmp sge i32 %62, 0, !dbg !122
  %64 = zext i1 %63 to i32, !dbg !122
  %65 = sext i32 %64 to i64, !dbg !121
  call void @klee_assume(i64 noundef %65), !dbg !123
  %66 = load i32, i32* %3, align 4, !dbg !124
  %67 = icmp slt i32 %66, 10000, !dbg !125
  %68 = zext i1 %67 to i32, !dbg !125
  %69 = sext i32 %68 to i64, !dbg !124
  call void @klee_assume(i64 noundef %69), !dbg !126
  %70 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 0, !dbg !127
  store %struct._xmlRegExecRollback* null, %struct._xmlRegExecRollback** %70, align 8, !dbg !128
  %71 = load i32, i32* %3, align 4, !dbg !129
  call void @simulate_vulnerable_path(%struct._xmlRegExecCtxt* noundef %2, i32 noundef %71), !dbg !130
  %72 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 6, !dbg !131
  %73 = load %struct._xmlRegexp*, %struct._xmlRegexp** %72, align 8, !dbg !131
  %74 = icmp ne %struct._xmlRegexp* %73, null, !dbg !133
  br i1 %74, label %75, label %79, !dbg !134

75:                                               ; preds = %60
  %76 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 6, !dbg !135
  %77 = load %struct._xmlRegexp*, %struct._xmlRegexp** %76, align 8, !dbg !135
  %78 = bitcast %struct._xmlRegexp* %77 to i8*, !dbg !136
  call void @free(i8* noundef %78) #5, !dbg !137
  br label %79, !dbg !137

79:                                               ; preds = %75, %60
  %80 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 0, !dbg !138
  %81 = load %struct._xmlRegExecRollback*, %struct._xmlRegExecRollback** %80, align 8, !dbg !138
  %82 = icmp ne %struct._xmlRegExecRollback* %81, null, !dbg !140
  br i1 %82, label %83, label %87, !dbg !141

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 0, !dbg !142
  %85 = load %struct._xmlRegExecRollback*, %struct._xmlRegExecRollback** %84, align 8, !dbg !142
  %86 = bitcast %struct._xmlRegExecRollback* %85 to i8*, !dbg !143
  call void @free(i8* noundef %86) #5, !dbg !144
  br label %87, !dbg !144

87:                                               ; preds = %83, %79
  ret i32 0, !dbg !145
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @simulate_vulnerable_path(%struct._xmlRegExecCtxt* noundef %0, i32 noundef %1) #0 !dbg !146 {
  %3 = alloca %struct._xmlRegExecCtxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlRegExecRollback*, align 8
  store %struct._xmlRegExecCtxt* %0, %struct._xmlRegExecCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecCtxt** %3, metadata !150, metadata !DIExpression()), !dbg !151
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !152, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecRollback** %5, metadata !154, metadata !DIExpression()), !dbg !155
  %6 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !156
  %7 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %6, i32 0, i32 1, !dbg !158
  %8 = load i32, i32* %7, align 8, !dbg !158
  %9 = load i32, i32* %4, align 4, !dbg !159
  %10 = icmp sle i32 %8, %9, !dbg !160
  br i1 %10, label %11, label %80, !dbg !161

11:                                               ; preds = %2
  %12 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !162
  %13 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %12, i32 0, i32 1, !dbg !164
  %14 = load i32, i32* %13, align 8, !dbg !164
  %15 = icmp eq i32 %14, 0, !dbg !165
  br i1 %15, label %16, label %17, !dbg !166

16:                                               ; preds = %11
  br label %22, !dbg !166

17:                                               ; preds = %11
  %18 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !167
  %19 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %18, i32 0, i32 1, !dbg !168
  %20 = load i32, i32* %19, align 8, !dbg !168
  %21 = mul nsw i32 %20, 2, !dbg !169
  br label %22, !dbg !166

22:                                               ; preds = %17, %16
  %23 = phi i32 [ 4, %16 ], [ %21, %17 ], !dbg !166
  %24 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !170
  %25 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %24, i32 0, i32 1, !dbg !171
  store i32 %23, i32* %25, align 8, !dbg !172
  %26 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !173
  %27 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %26, i32 0, i32 1, !dbg !174
  %28 = load i32, i32* %27, align 8, !dbg !174
  %29 = sext i32 %28 to i64, !dbg !173
  %30 = mul i64 %29, 24, !dbg !175
  %31 = call noalias i8* @malloc(i64 noundef %30) #5, !dbg !176
  %32 = bitcast i8* %31 to %struct._xmlRegExecRollback*, !dbg !177
  store %struct._xmlRegExecRollback* %32, %struct._xmlRegExecRollback** %5, align 8, !dbg !178
  %33 = load %struct._xmlRegExecRollback*, %struct._xmlRegExecRollback** %5, align 8, !dbg !179
  %34 = icmp eq %struct._xmlRegExecRollback* %33, null, !dbg !181
  br i1 %34, label %35, label %40, !dbg !182

35:                                               ; preds = %22
  call void @xmlRegexpErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0)), !dbg !183
  %36 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !185
  %37 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %36, i32 0, i32 1, !dbg !186
  %38 = load i32, i32* %37, align 8, !dbg !187
  %39 = sdiv i32 %38, 2, !dbg !187
  store i32 %39, i32* %37, align 8, !dbg !187
  br label %80, !dbg !188

40:                                               ; preds = %22
  %41 = load %struct._xmlRegExecRollback*, %struct._xmlRegExecRollback** %5, align 8, !dbg !189
  %42 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !190
  %43 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %42, i32 0, i32 0, !dbg !191
  store %struct._xmlRegExecRollback* %41, %struct._xmlRegExecRollback** %43, align 8, !dbg !192
  %44 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !193
  %45 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %44, i32 0, i32 0, !dbg !194
  %46 = load %struct._xmlRegExecRollback*, %struct._xmlRegExecRollback** %45, align 8, !dbg !194
  %47 = load i32, i32* %4, align 4, !dbg !195
  %48 = sext i32 %47 to i64, !dbg !193
  %49 = getelementptr inbounds %struct._xmlRegExecRollback, %struct._xmlRegExecRollback* %46, i64 %48, !dbg !193
  store %struct._xmlRegExecRollback* %49, %struct._xmlRegExecRollback** %5, align 8, !dbg !196
  %50 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !197
  %51 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %50, i32 0, i32 1, !dbg !197
  %52 = load i32, i32* %51, align 8, !dbg !197
  %53 = load i32, i32* %4, align 4, !dbg !197
  %54 = sub nsw i32 %52, %53, !dbg !197
  %55 = icmp sge i32 %54, 0, !dbg !197
  br i1 %55, label %56, label %76, !dbg !197

56:                                               ; preds = %40
  %57 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !197
  %58 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %57, i32 0, i32 1, !dbg !197
  %59 = load i32, i32* %58, align 8, !dbg !197
  %60 = load i32, i32* %4, align 4, !dbg !197
  %61 = sub nsw i32 %59, %60, !dbg !197
  %62 = sext i32 %61 to i64, !dbg !197
  %63 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !197
  %64 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %63, i32 0, i32 1, !dbg !197
  %65 = load i32, i32* %64, align 8, !dbg !197
  %66 = sext i32 %65 to i64, !dbg !197
  %67 = mul i64 %66, 24, !dbg !197
  %68 = load i32, i32* %4, align 4, !dbg !197
  %69 = sext i32 %68 to i64, !dbg !197
  %70 = mul i64 %69, 24, !dbg !197
  %71 = sub i64 %67, %70, !dbg !197
  %72 = udiv i64 %71, 24, !dbg !197
  %73 = icmp ule i64 %62, %72, !dbg !197
  br i1 %73, label %74, label %76, !dbg !197

74:                                               ; preds = %56
  br i1 true, label %75, label %76, !dbg !197

75:                                               ; preds = %74
  br label %78, !dbg !197

76:                                               ; preds = %74, %56, %40
  %77 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([212 x i8], [212 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.simulate_vulnerable_path, i64 0, i64 0)), !dbg !197
  br label %78, !dbg !197

78:                                               ; preds = %76, %75
  %79 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.simulate_vulnerable_path, i64 0, i64 0)), !dbg !198
  br label %80, !dbg !199

80:                                               ; preds = %35, %78, %2
  ret void, !dbg !200
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/221_xmlregexp.c_3200_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "39d443ed08a3ec5f751c835b08801316")
!2 = !{!3, !9, !14, !19}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexp", file: !1, line: 18, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegexp", file: !1, line: 19, size: 32, elements: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "nbCounters", scope: !5, file: !1, line: 20, baseType: !8, size: 32)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegExecRollback", file: !1, line: 10, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegExecRollback", file: !1, line: 11, size: 192, elements: !12)
!12 = !{!13, !15, !16, !17}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !11, file: !1, line: 12, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !11, file: !1, line: 13, baseType: !8, size: 32, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "nextbranch", scope: !11, file: !1, line: 14, baseType: !8, size: 32, offset: 96)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !11, file: !1, line: 15, baseType: !18, size: 64, offset: 128)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 46, baseType: !21)
!20 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!21 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!22 = !{i32 7, !"Dwarf Version", i32 5}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{i32 7, !"PIC Level", i32 2}
!26 = !{i32 7, !"PIE Level", i32 2}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"Ubuntu clang version 14.0.6"}
!30 = distinct !DISubprogram(name: "xmlRegexpErrMemory", scope: !1, file: !1, line: 35, type: !31, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !14, !33}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!36 = !{}
!37 = !DILocalVariable(name: "a", arg: 1, scope: !30, file: !1, line: 35, type: !14)
!38 = !DILocation(line: 35, column: 31, scope: !30)
!39 = !DILocalVariable(name: "b", arg: 2, scope: !30, file: !1, line: 35, type: !33)
!40 = !DILocation(line: 35, column: 46, scope: !30)
!41 = !DILocation(line: 36, column: 11, scope: !30)
!42 = !DILocation(line: 36, column: 20, scope: !30)
!43 = !DILocation(line: 37, column: 1, scope: !30)
!44 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 39, type: !45, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!45 = !DISubroutineType(types: !46)
!46 = !{!14, !19}
!47 = !DILocalVariable(name: "size", arg: 1, scope: !44, file: !1, line: 39, type: !19)
!48 = !DILocation(line: 39, column: 24, scope: !44)
!49 = !DILocation(line: 40, column: 19, scope: !44)
!50 = !DILocation(line: 40, column: 12, scope: !44)
!51 = !DILocation(line: 40, column: 5, scope: !44)
!52 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 76, type: !53, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!53 = !DISubroutineType(types: !54)
!54 = !{!8}
!55 = !DILocalVariable(name: "exec", scope: !52, file: !1, line: 77, type: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegExecCtxt", file: !1, line: 23, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegExecCtxt", file: !1, line: 24, size: 320, elements: !58)
!58 = !{!59, !60, !61, !62, !63, !64, !65}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "rollbacks", scope: !57, file: !1, line: 25, baseType: !9, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "maxRollbacks", scope: !57, file: !1, line: 26, baseType: !8, size: 32, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "nbRollbacks", scope: !57, file: !1, line: 27, baseType: !8, size: 32, offset: 96)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !57, file: !1, line: 28, baseType: !14, size: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !57, file: !1, line: 29, baseType: !8, size: 32, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "transno", scope: !57, file: !1, line: 30, baseType: !8, size: 32, offset: 224)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !57, file: !1, line: 31, baseType: !3, size: 64, offset: 256)
!66 = !DILocation(line: 77, column: 20, scope: !52)
!67 = !DILocalVariable(name: "len", scope: !52, file: !1, line: 78, type: !8)
!68 = !DILocation(line: 78, column: 9, scope: !52)
!69 = !DILocation(line: 81, column: 24, scope: !52)
!70 = !DILocation(line: 81, column: 5, scope: !52)
!71 = !DILocation(line: 84, column: 22, scope: !52)
!72 = !DILocation(line: 84, column: 35, scope: !52)
!73 = !DILocation(line: 84, column: 17, scope: !52)
!74 = !DILocation(line: 84, column: 5, scope: !52)
!75 = !DILocation(line: 85, column: 22, scope: !52)
!76 = !DILocation(line: 85, column: 35, scope: !52)
!77 = !DILocation(line: 85, column: 17, scope: !52)
!78 = !DILocation(line: 85, column: 5, scope: !52)
!79 = !DILocation(line: 86, column: 22, scope: !52)
!80 = !DILocation(line: 86, column: 34, scope: !52)
!81 = !DILocation(line: 86, column: 17, scope: !52)
!82 = !DILocation(line: 86, column: 5, scope: !52)
!83 = !DILocation(line: 87, column: 22, scope: !52)
!84 = !DILocation(line: 87, column: 34, scope: !52)
!85 = !DILocation(line: 87, column: 17, scope: !52)
!86 = !DILocation(line: 87, column: 5, scope: !52)
!87 = !DILocation(line: 88, column: 22, scope: !52)
!88 = !DILocation(line: 88, column: 30, scope: !52)
!89 = !DILocation(line: 88, column: 17, scope: !52)
!90 = !DILocation(line: 88, column: 5, scope: !52)
!91 = !DILocation(line: 89, column: 22, scope: !52)
!92 = !DILocation(line: 89, column: 30, scope: !52)
!93 = !DILocation(line: 89, column: 17, scope: !52)
!94 = !DILocation(line: 89, column: 5, scope: !52)
!95 = !DILocation(line: 92, column: 29, scope: !52)
!96 = !DILocation(line: 92, column: 17, scope: !52)
!97 = !DILocation(line: 92, column: 10, scope: !52)
!98 = !DILocation(line: 92, column: 15, scope: !52)
!99 = !DILocation(line: 93, column: 14, scope: !100)
!100 = distinct !DILexicalBlock(scope: !52, file: !1, line: 93, column: 9)
!101 = !DILocation(line: 93, column: 9, scope: !100)
!102 = !DILocation(line: 93, column: 9, scope: !52)
!103 = !DILocation(line: 94, column: 34, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !1, line: 93, column: 20)
!105 = !DILocation(line: 94, column: 40, scope: !104)
!106 = !DILocation(line: 94, column: 28, scope: !104)
!107 = !DILocation(line: 94, column: 9, scope: !104)
!108 = !DILocation(line: 95, column: 26, scope: !104)
!109 = !DILocation(line: 95, column: 32, scope: !104)
!110 = !DILocation(line: 95, column: 43, scope: !104)
!111 = !DILocation(line: 95, column: 21, scope: !104)
!112 = !DILocation(line: 95, column: 9, scope: !104)
!113 = !DILocation(line: 96, column: 26, scope: !104)
!114 = !DILocation(line: 96, column: 32, scope: !104)
!115 = !DILocation(line: 96, column: 43, scope: !104)
!116 = !DILocation(line: 96, column: 21, scope: !104)
!117 = !DILocation(line: 96, column: 9, scope: !104)
!118 = !DILocation(line: 97, column: 5, scope: !104)
!119 = !DILocation(line: 100, column: 24, scope: !52)
!120 = !DILocation(line: 100, column: 5, scope: !52)
!121 = !DILocation(line: 101, column: 17, scope: !52)
!122 = !DILocation(line: 101, column: 21, scope: !52)
!123 = !DILocation(line: 101, column: 5, scope: !52)
!124 = !DILocation(line: 102, column: 17, scope: !52)
!125 = !DILocation(line: 102, column: 21, scope: !52)
!126 = !DILocation(line: 102, column: 5, scope: !52)
!127 = !DILocation(line: 105, column: 10, scope: !52)
!128 = !DILocation(line: 105, column: 20, scope: !52)
!129 = !DILocation(line: 108, column: 37, scope: !52)
!130 = !DILocation(line: 108, column: 5, scope: !52)
!131 = !DILocation(line: 111, column: 14, scope: !132)
!132 = distinct !DILexicalBlock(scope: !52, file: !1, line: 111, column: 9)
!133 = !DILocation(line: 111, column: 9, scope: !132)
!134 = !DILocation(line: 111, column: 9, scope: !52)
!135 = !DILocation(line: 111, column: 30, scope: !132)
!136 = !DILocation(line: 111, column: 25, scope: !132)
!137 = !DILocation(line: 111, column: 20, scope: !132)
!138 = !DILocation(line: 112, column: 14, scope: !139)
!139 = distinct !DILexicalBlock(scope: !52, file: !1, line: 112, column: 9)
!140 = !DILocation(line: 112, column: 9, scope: !139)
!141 = !DILocation(line: 112, column: 9, scope: !52)
!142 = !DILocation(line: 112, column: 35, scope: !139)
!143 = !DILocation(line: 112, column: 30, scope: !139)
!144 = !DILocation(line: 112, column: 25, scope: !139)
!145 = !DILocation(line: 114, column: 5, scope: !52)
!146 = distinct !DISubprogram(name: "simulate_vulnerable_path", scope: !1, file: !1, line: 44, type: !147, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !36)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !149, !8}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!150 = !DILocalVariable(name: "exec", arg: 1, scope: !146, file: !1, line: 44, type: !149)
!151 = !DILocation(line: 44, column: 54, scope: !146)
!152 = !DILocalVariable(name: "len", arg: 2, scope: !146, file: !1, line: 44, type: !8)
!153 = !DILocation(line: 44, column: 64, scope: !146)
!154 = !DILocalVariable(name: "tmp", scope: !146, file: !1, line: 45, type: !9)
!155 = !DILocation(line: 45, column: 25, scope: !146)
!156 = !DILocation(line: 48, column: 9, scope: !157)
!157 = distinct !DILexicalBlock(scope: !146, file: !1, line: 48, column: 9)
!158 = !DILocation(line: 48, column: 15, scope: !157)
!159 = !DILocation(line: 48, column: 31, scope: !157)
!160 = !DILocation(line: 48, column: 28, scope: !157)
!161 = !DILocation(line: 48, column: 9, scope: !146)
!162 = !DILocation(line: 50, column: 31, scope: !163)
!163 = distinct !DILexicalBlock(scope: !157, file: !1, line: 48, column: 36)
!164 = !DILocation(line: 50, column: 37, scope: !163)
!165 = !DILocation(line: 50, column: 50, scope: !163)
!166 = !DILocation(line: 50, column: 30, scope: !163)
!167 = !DILocation(line: 50, column: 62, scope: !163)
!168 = !DILocation(line: 50, column: 68, scope: !163)
!169 = !DILocation(line: 50, column: 81, scope: !163)
!170 = !DILocation(line: 50, column: 9, scope: !163)
!171 = !DILocation(line: 50, column: 15, scope: !163)
!172 = !DILocation(line: 50, column: 28, scope: !163)
!173 = !DILocation(line: 52, column: 13, scope: !163)
!174 = !DILocation(line: 52, column: 19, scope: !163)
!175 = !DILocation(line: 52, column: 32, scope: !163)
!176 = !DILocation(line: 51, column: 36, scope: !163)
!177 = !DILocation(line: 51, column: 15, scope: !163)
!178 = !DILocation(line: 51, column: 13, scope: !163)
!179 = !DILocation(line: 53, column: 13, scope: !180)
!180 = distinct !DILexicalBlock(scope: !163, file: !1, line: 53, column: 13)
!181 = !DILocation(line: 53, column: 17, scope: !180)
!182 = !DILocation(line: 53, column: 13, scope: !163)
!183 = !DILocation(line: 54, column: 13, scope: !184)
!184 = distinct !DILexicalBlock(scope: !180, file: !1, line: 53, column: 26)
!185 = !DILocation(line: 55, column: 13, scope: !184)
!186 = !DILocation(line: 55, column: 19, scope: !184)
!187 = !DILocation(line: 55, column: 32, scope: !184)
!188 = !DILocation(line: 56, column: 13, scope: !184)
!189 = !DILocation(line: 58, column: 27, scope: !163)
!190 = !DILocation(line: 58, column: 9, scope: !163)
!191 = !DILocation(line: 58, column: 15, scope: !163)
!192 = !DILocation(line: 58, column: 25, scope: !163)
!193 = !DILocation(line: 59, column: 16, scope: !163)
!194 = !DILocation(line: 59, column: 22, scope: !163)
!195 = !DILocation(line: 59, column: 32, scope: !163)
!196 = !DILocation(line: 59, column: 13, scope: !163)
!197 = !DILocation(line: 63, column: 9, scope: !163)
!198 = !DILocation(line: 69, column: 9, scope: !163)
!199 = !DILocation(line: 72, column: 9, scope: !163)
!200 = !DILocation(line: 74, column: 1, scope: !146)

; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/097_testlimits.c_352_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/097_testlimits.c_352_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TestContext = type { i8*, i8*, i32, i32, i32, i32, i32, [4096 x i8] }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"(ctx->len <= 4096) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_55980_vul/097_testlimits.c_352_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.process_buffer = private unnamed_addr constant [35 x i8] c"void process_buffer(TestContext *)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"rlen\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"instate\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"curlen\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"maxlen\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_buffer(%struct.TestContext* noundef %0) #0 !dbg !12 {
  %2 = alloca %struct.TestContext*, align 8
  store %struct.TestContext* %0, %struct.TestContext** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.TestContext** %2, metadata !34, metadata !DIExpression()), !dbg !35
  %3 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !36
  %4 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %3, i32 0, i32 4, !dbg !38
  %5 = load i32, i32* %4, align 8, !dbg !38
  %6 = icmp eq i32 %5, 2, !dbg !39
  br i1 %6, label %7, label %76, !dbg !40

7:                                                ; preds = %1
  %8 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !41
  %9 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %8, i32 0, i32 2, !dbg !44
  %10 = load i32, i32* %9, align 8, !dbg !44
  %11 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !45
  %12 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %11, i32 0, i32 3, !dbg !46
  %13 = load i32, i32* %12, align 4, !dbg !46
  %14 = icmp sge i32 %10, %13, !dbg !47
  br i1 %14, label %15, label %38, !dbg !48

15:                                               ; preds = %7
  %16 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !49
  %17 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %16, i32 0, i32 3, !dbg !51
  %18 = load i32, i32* %17, align 4, !dbg !51
  %19 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !52
  %20 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %19, i32 0, i32 2, !dbg !53
  store i32 %18, i32* %20, align 8, !dbg !54
  %21 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !55
  %22 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %21, i32 0, i32 3, !dbg !56
  store i32 0, i32* %22, align 4, !dbg !57
  %23 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !58
  %24 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %23, i32 0, i32 0, !dbg !59
  %25 = load i8*, i8** %24, align 8, !dbg !59
  %26 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !60
  %27 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %26, i32 0, i32 1, !dbg !61
  %28 = load i8*, i8** %27, align 8, !dbg !61
  %29 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !62
  %30 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %29, i32 0, i32 2, !dbg !63
  %31 = load i32, i32* %30, align 8, !dbg !63
  %32 = sext i32 %31 to i64, !dbg !62
  %33 = call i8* @memcpy(i8* %25, i8* %28, i64 %32), !dbg !64
  %34 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !65
  %35 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %34, i32 0, i32 4, !dbg !66
  store i32 3, i32* %35, align 8, !dbg !67
  %36 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !68
  %37 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %36, i32 0, i32 5, !dbg !69
  store i32 0, i32* %37, align 4, !dbg !70
  br label %75, !dbg !71

38:                                               ; preds = %7
  %39 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !72
  %40 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %39, i32 0, i32 2, !dbg !72
  %41 = load i32, i32* %40, align 8, !dbg !72
  %42 = icmp sle i32 %41, 4096, !dbg !72
  br i1 %42, label %43, label %45, !dbg !72

43:                                               ; preds = %38
  br i1 true, label %44, label %45, !dbg !72

44:                                               ; preds = %43
  br label %47, !dbg !72

45:                                               ; preds = %43, %38
  %46 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.process_buffer, i64 0, i64 0)), !dbg !72
  br label %47, !dbg !72

47:                                               ; preds = %45, %44
  %48 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.process_buffer, i64 0, i64 0)), !dbg !74
  %49 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !75
  %50 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %49, i32 0, i32 0, !dbg !76
  %51 = load i8*, i8** %50, align 8, !dbg !76
  %52 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !77
  %53 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %52, i32 0, i32 1, !dbg !78
  %54 = load i8*, i8** %53, align 8, !dbg !78
  %55 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !79
  %56 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %55, i32 0, i32 2, !dbg !80
  %57 = load i32, i32* %56, align 8, !dbg !80
  %58 = sext i32 %57 to i64, !dbg !79
  %59 = call i8* @memcpy(i8* %51, i8* %54, i64 %58), !dbg !81
  %60 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !82
  %61 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %60, i32 0, i32 2, !dbg !83
  %62 = load i32, i32* %61, align 8, !dbg !83
  %63 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !84
  %64 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %63, i32 0, i32 3, !dbg !85
  %65 = load i32, i32* %64, align 4, !dbg !86
  %66 = sub nsw i32 %65, %62, !dbg !86
  store i32 %66, i32* %64, align 4, !dbg !86
  %67 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !87
  %68 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %67, i32 0, i32 2, !dbg !88
  %69 = load i32, i32* %68, align 8, !dbg !88
  %70 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !89
  %71 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %70, i32 0, i32 1, !dbg !90
  %72 = load i8*, i8** %71, align 8, !dbg !91
  %73 = sext i32 %69 to i64, !dbg !91
  %74 = getelementptr inbounds i8, i8* %72, i64 %73, !dbg !91
  store i8* %74, i8** %71, align 8, !dbg !91
  br label %75

75:                                               ; preds = %47, %15
  br label %120, !dbg !92

76:                                               ; preds = %1
  %77 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !93
  %78 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %77, i32 0, i32 4, !dbg !95
  %79 = load i32, i32* %78, align 8, !dbg !95
  %80 = icmp eq i32 %79, 1, !dbg !96
  br i1 %80, label %81, label %119, !dbg !97

81:                                               ; preds = %76
  %82 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !98
  %83 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %82, i32 0, i32 2, !dbg !101
  %84 = load i32, i32* %83, align 8, !dbg !101
  %85 = icmp sgt i32 %84, 4096, !dbg !102
  br i1 %85, label %86, label %89, !dbg !103

86:                                               ; preds = %81
  %87 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !104
  %88 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %87, i32 0, i32 2, !dbg !105
  store i32 4096, i32* %88, align 8, !dbg !106
  br label %89, !dbg !104

89:                                               ; preds = %86, %81
  %90 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !107
  %91 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %90, i32 0, i32 0, !dbg !108
  %92 = load i8*, i8** %91, align 8, !dbg !108
  %93 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !109
  %94 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %93, i32 0, i32 7, !dbg !110
  %95 = getelementptr inbounds [4096 x i8], [4096 x i8]* %94, i64 0, i64 0, !dbg !109
  %96 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !111
  %97 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %96, i32 0, i32 2, !dbg !112
  %98 = load i32, i32* %97, align 8, !dbg !112
  %99 = sext i32 %98 to i64, !dbg !111
  %100 = call i8* @memcpy(i8* %92, i8* %95, i64 %99), !dbg !113
  %101 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !114
  %102 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %101, i32 0, i32 2, !dbg !115
  %103 = load i32, i32* %102, align 8, !dbg !115
  %104 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !116
  %105 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %104, i32 0, i32 5, !dbg !117
  %106 = load i32, i32* %105, align 4, !dbg !118
  %107 = add nsw i32 %106, %103, !dbg !118
  store i32 %107, i32* %105, align 4, !dbg !118
  %108 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !119
  %109 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %108, i32 0, i32 5, !dbg !121
  %110 = load i32, i32* %109, align 4, !dbg !121
  %111 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !122
  %112 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %111, i32 0, i32 6, !dbg !123
  %113 = load i32, i32* %112, align 8, !dbg !123
  %114 = icmp sge i32 %110, %113, !dbg !124
  br i1 %114, label %115, label %118, !dbg !125

115:                                              ; preds = %89
  %116 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !126
  %117 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %116, i32 0, i32 4, !dbg !128
  store i32 2, i32* %117, align 8, !dbg !129
  br label %118, !dbg !130

118:                                              ; preds = %115, %89
  br label %119, !dbg !131

119:                                              ; preds = %118, %76
  br label %120

120:                                              ; preds = %119, %75
  ret void, !dbg !132
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !133 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TestContext, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.TestContext* %2, metadata !136, metadata !DIExpression()), !dbg !137
  %3 = call noalias i8* @malloc(i64 noundef 4096) #7, !dbg !138
  %4 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %2, i32 0, i32 0, !dbg !139
  store i8* %3, i8** %4, align 8, !dbg !140
  %5 = call noalias i8* @malloc(i64 noundef 4096) #7, !dbg !141
  %6 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %2, i32 0, i32 1, !dbg !142
  store i8* %5, i8** %6, align 8, !dbg !143
  %7 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %2, i32 0, i32 2, !dbg !144
  %8 = bitcast i32* %7 to i8*, !dbg !145
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)), !dbg !146
  %9 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %2, i32 0, i32 3, !dbg !147
  %10 = bitcast i32* %9 to i8*, !dbg !148
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !149
  %11 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %2, i32 0, i32 4, !dbg !150
  %12 = bitcast i32* %11 to i8*, !dbg !151
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)), !dbg !152
  %13 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %2, i32 0, i32 5, !dbg !153
  %14 = bitcast i32* %13 to i8*, !dbg !154
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)), !dbg !155
  %15 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %2, i32 0, i32 6, !dbg !156
  %16 = bitcast i32* %15 to i8*, !dbg !157
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !158
  %17 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %2, i32 0, i32 2, !dbg !159
  %18 = load i32, i32* %17, align 8, !dbg !159
  %19 = icmp sge i32 %18, 0, !dbg !160
  %20 = zext i1 %19 to i32, !dbg !160
  %21 = sext i32 %20 to i64, !dbg !161
  call void @klee_assume(i64 noundef %21), !dbg !162
  %22 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %2, i32 0, i32 3, !dbg !163
  %23 = load i32, i32* %22, align 4, !dbg !163
  %24 = icmp sge i32 %23, 0, !dbg !164
  %25 = zext i1 %24 to i32, !dbg !164
  %26 = sext i32 %25 to i64, !dbg !165
  call void @klee_assume(i64 noundef %26), !dbg !166
  %27 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %2, i32 0, i32 4, !dbg !167
  %28 = load i32, i32* %27, align 8, !dbg !167
  %29 = icmp sge i32 %28, 0, !dbg !168
  br i1 %29, label %30, label %34, !dbg !169

30:                                               ; preds = %0
  %31 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %2, i32 0, i32 4, !dbg !170
  %32 = load i32, i32* %31, align 8, !dbg !170
  %33 = icmp sle i32 %32, 3, !dbg !171
  br label %34

34:                                               ; preds = %30, %0
  %35 = phi i1 [ false, %0 ], [ %33, %30 ], !dbg !172
  %36 = zext i1 %35 to i32, !dbg !169
  %37 = sext i32 %36 to i64, !dbg !173
  call void @klee_assume(i64 noundef %37), !dbg !174
  %38 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %2, i32 0, i32 5, !dbg !175
  %39 = load i32, i32* %38, align 4, !dbg !175
  %40 = icmp sge i32 %39, 0, !dbg !176
  %41 = zext i1 %40 to i32, !dbg !176
  %42 = sext i32 %41 to i64, !dbg !177
  call void @klee_assume(i64 noundef %42), !dbg !178
  %43 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %2, i32 0, i32 6, !dbg !179
  %44 = load i32, i32* %43, align 8, !dbg !179
  %45 = icmp sge i32 %44, 0, !dbg !180
  %46 = zext i1 %45 to i32, !dbg !180
  %47 = sext i32 %46 to i64, !dbg !181
  call void @klee_assume(i64 noundef %47), !dbg !182
  %48 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %2, i32 0, i32 4, !dbg !183
  %49 = load i32, i32* %48, align 8, !dbg !183
  %50 = icmp eq i32 %49, 2, !dbg !184
  %51 = zext i1 %50 to i32, !dbg !184
  %52 = sext i32 %51 to i64, !dbg !185
  call void @klee_assume(i64 noundef %52), !dbg !186
  %53 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %2, i32 0, i32 2, !dbg !187
  %54 = load i32, i32* %53, align 8, !dbg !187
  %55 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %2, i32 0, i32 3, !dbg !188
  %56 = load i32, i32* %55, align 4, !dbg !188
  %57 = icmp slt i32 %54, %56, !dbg !189
  %58 = zext i1 %57 to i32, !dbg !189
  %59 = sext i32 %58 to i64, !dbg !190
  call void @klee_assume(i64 noundef %59), !dbg !191
  call void @process_buffer(%struct.TestContext* noundef %2), !dbg !192
  %60 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %2, i32 0, i32 0, !dbg !193
  %61 = load i8*, i8** %60, align 8, !dbg !193
  call void @free(i8* noundef %61) #7, !dbg !194
  %62 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %2, i32 0, i32 1, !dbg !195
  %63 = load i8*, i8** %62, align 8, !dbg !195
  call void @free(i8* noundef %63) #7, !dbg !196
  ret i32 0, !dbg !197
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !198 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !208, metadata !DIExpression()), !dbg !209
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !210, metadata !DIExpression()), !dbg !211
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !212, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.declare(metadata i8** %7, metadata !214, metadata !DIExpression()), !dbg !215
  %9 = load i8*, i8** %4, align 8, !dbg !216
  store i8* %9, i8** %7, align 8, !dbg !215
  call void @llvm.dbg.declare(metadata i8** %8, metadata !217, metadata !DIExpression()), !dbg !220
  %10 = load i8*, i8** %5, align 8, !dbg !221
  store i8* %10, i8** %8, align 8, !dbg !220
  br label %11, !dbg !222

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !223
  %13 = add i64 %12, -1, !dbg !223
  store i64 %13, i64* %6, align 8, !dbg !223
  %14 = icmp ugt i64 %12, 0, !dbg !224
  br i1 %14, label %15, label %21, !dbg !222

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !225
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !225
  store i8* %17, i8** %8, align 8, !dbg !225
  %18 = load i8, i8* %16, align 1, !dbg !226
  %19 = load i8*, i8** %7, align 8, !dbg !227
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !227
  store i8* %20, i8** %7, align 8, !dbg !227
  store i8 %18, i8* %19, align 1, !dbg !228
  br label %11, !dbg !222, !llvm.loop !229

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !231
  ret i8* %22, !dbg !232
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11, !11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/097_testlimits.c_352_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "7f7c5f4d1bdb992fc483a8fd54c90933")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "process_buffer", scope: !1, file: !1, line: 22, type: !13, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "TestContext", file: !1, line: 20, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 11, size: 33088, elements: !18)
!18 = !{!19, !22, !23, !25, !26, !27, !28, !29}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !17, file: !1, line: 12, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !17, file: !1, line: 13, baseType: !20, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !17, file: !1, line: 14, baseType: !24, size: 32, offset: 128)
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "rlen", scope: !17, file: !1, line: 15, baseType: !24, size: 32, offset: 160)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !17, file: !1, line: 16, baseType: !24, size: 32, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "curlen", scope: !17, file: !1, line: 17, baseType: !24, size: 32, offset: 224)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !17, file: !1, line: 18, baseType: !24, size: 32, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "filling", scope: !17, file: !1, line: 19, baseType: !30, size: 32768, offset: 288)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 32768, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 4096)
!33 = !{}
!34 = !DILocalVariable(name: "ctx", arg: 1, scope: !12, file: !1, line: 22, type: !15)
!35 = !DILocation(line: 22, column: 34, scope: !12)
!36 = !DILocation(line: 23, column: 9, scope: !37)
!37 = distinct !DILexicalBlock(scope: !12, file: !1, line: 23, column: 9)
!38 = !DILocation(line: 23, column: 14, scope: !37)
!39 = !DILocation(line: 23, column: 22, scope: !37)
!40 = !DILocation(line: 23, column: 9, scope: !12)
!41 = !DILocation(line: 24, column: 13, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 24, column: 13)
!43 = distinct !DILexicalBlock(scope: !37, file: !1, line: 23, column: 28)
!44 = !DILocation(line: 24, column: 18, scope: !42)
!45 = !DILocation(line: 24, column: 25, scope: !42)
!46 = !DILocation(line: 24, column: 30, scope: !42)
!47 = !DILocation(line: 24, column: 22, scope: !42)
!48 = !DILocation(line: 24, column: 13, scope: !43)
!49 = !DILocation(line: 25, column: 24, scope: !50)
!50 = distinct !DILexicalBlock(scope: !42, file: !1, line: 24, column: 36)
!51 = !DILocation(line: 25, column: 29, scope: !50)
!52 = !DILocation(line: 25, column: 13, scope: !50)
!53 = !DILocation(line: 25, column: 18, scope: !50)
!54 = !DILocation(line: 25, column: 22, scope: !50)
!55 = !DILocation(line: 26, column: 13, scope: !50)
!56 = !DILocation(line: 26, column: 18, scope: !50)
!57 = !DILocation(line: 26, column: 23, scope: !50)
!58 = !DILocation(line: 27, column: 20, scope: !50)
!59 = !DILocation(line: 27, column: 25, scope: !50)
!60 = !DILocation(line: 27, column: 33, scope: !50)
!61 = !DILocation(line: 27, column: 38, scope: !50)
!62 = !DILocation(line: 27, column: 47, scope: !50)
!63 = !DILocation(line: 27, column: 52, scope: !50)
!64 = !DILocation(line: 27, column: 13, scope: !50)
!65 = !DILocation(line: 28, column: 13, scope: !50)
!66 = !DILocation(line: 28, column: 18, scope: !50)
!67 = !DILocation(line: 28, column: 26, scope: !50)
!68 = !DILocation(line: 29, column: 13, scope: !50)
!69 = !DILocation(line: 29, column: 18, scope: !50)
!70 = !DILocation(line: 29, column: 25, scope: !50)
!71 = !DILocation(line: 30, column: 9, scope: !50)
!72 = !DILocation(line: 31, column: 13, scope: !73)
!73 = distinct !DILexicalBlock(scope: !42, file: !1, line: 30, column: 16)
!74 = !DILocation(line: 32, column: 13, scope: !73)
!75 = !DILocation(line: 33, column: 20, scope: !73)
!76 = !DILocation(line: 33, column: 25, scope: !73)
!77 = !DILocation(line: 33, column: 33, scope: !73)
!78 = !DILocation(line: 33, column: 38, scope: !73)
!79 = !DILocation(line: 33, column: 47, scope: !73)
!80 = !DILocation(line: 33, column: 52, scope: !73)
!81 = !DILocation(line: 33, column: 13, scope: !73)
!82 = !DILocation(line: 34, column: 26, scope: !73)
!83 = !DILocation(line: 34, column: 31, scope: !73)
!84 = !DILocation(line: 34, column: 13, scope: !73)
!85 = !DILocation(line: 34, column: 18, scope: !73)
!86 = !DILocation(line: 34, column: 23, scope: !73)
!87 = !DILocation(line: 35, column: 29, scope: !73)
!88 = !DILocation(line: 35, column: 34, scope: !73)
!89 = !DILocation(line: 35, column: 13, scope: !73)
!90 = !DILocation(line: 35, column: 18, scope: !73)
!91 = !DILocation(line: 35, column: 26, scope: !73)
!92 = !DILocation(line: 37, column: 5, scope: !43)
!93 = !DILocation(line: 37, column: 16, scope: !94)
!94 = distinct !DILexicalBlock(scope: !37, file: !1, line: 37, column: 16)
!95 = !DILocation(line: 37, column: 21, scope: !94)
!96 = !DILocation(line: 37, column: 29, scope: !94)
!97 = !DILocation(line: 37, column: 16, scope: !37)
!98 = !DILocation(line: 38, column: 13, scope: !99)
!99 = distinct !DILexicalBlock(scope: !100, file: !1, line: 38, column: 13)
!100 = distinct !DILexicalBlock(scope: !94, file: !1, line: 37, column: 35)
!101 = !DILocation(line: 38, column: 18, scope: !99)
!102 = !DILocation(line: 38, column: 22, scope: !99)
!103 = !DILocation(line: 38, column: 13, scope: !100)
!104 = !DILocation(line: 38, column: 31, scope: !99)
!105 = !DILocation(line: 38, column: 36, scope: !99)
!106 = !DILocation(line: 38, column: 40, scope: !99)
!107 = !DILocation(line: 39, column: 16, scope: !100)
!108 = !DILocation(line: 39, column: 21, scope: !100)
!109 = !DILocation(line: 39, column: 30, scope: !100)
!110 = !DILocation(line: 39, column: 35, scope: !100)
!111 = !DILocation(line: 39, column: 47, scope: !100)
!112 = !DILocation(line: 39, column: 52, scope: !100)
!113 = !DILocation(line: 39, column: 9, scope: !100)
!114 = !DILocation(line: 40, column: 24, scope: !100)
!115 = !DILocation(line: 40, column: 29, scope: !100)
!116 = !DILocation(line: 40, column: 9, scope: !100)
!117 = !DILocation(line: 40, column: 14, scope: !100)
!118 = !DILocation(line: 40, column: 21, scope: !100)
!119 = !DILocation(line: 41, column: 13, scope: !120)
!120 = distinct !DILexicalBlock(scope: !100, file: !1, line: 41, column: 13)
!121 = !DILocation(line: 41, column: 18, scope: !120)
!122 = !DILocation(line: 41, column: 28, scope: !120)
!123 = !DILocation(line: 41, column: 33, scope: !120)
!124 = !DILocation(line: 41, column: 25, scope: !120)
!125 = !DILocation(line: 41, column: 13, scope: !100)
!126 = !DILocation(line: 42, column: 13, scope: !127)
!127 = distinct !DILexicalBlock(scope: !120, file: !1, line: 41, column: 41)
!128 = !DILocation(line: 42, column: 18, scope: !127)
!129 = !DILocation(line: 42, column: 26, scope: !127)
!130 = !DILocation(line: 43, column: 9, scope: !127)
!131 = !DILocation(line: 44, column: 5, scope: !100)
!132 = !DILocation(line: 45, column: 1, scope: !12)
!133 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 47, type: !134, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!134 = !DISubroutineType(types: !135)
!135 = !{!24}
!136 = !DILocalVariable(name: "ctx", scope: !133, file: !1, line: 48, type: !16)
!137 = !DILocation(line: 48, column: 17, scope: !133)
!138 = !DILocation(line: 50, column: 18, scope: !133)
!139 = !DILocation(line: 50, column: 9, scope: !133)
!140 = !DILocation(line: 50, column: 16, scope: !133)
!141 = !DILocation(line: 51, column: 19, scope: !133)
!142 = !DILocation(line: 51, column: 9, scope: !133)
!143 = !DILocation(line: 51, column: 17, scope: !133)
!144 = !DILocation(line: 53, column: 29, scope: !133)
!145 = !DILocation(line: 53, column: 24, scope: !133)
!146 = !DILocation(line: 53, column: 5, scope: !133)
!147 = !DILocation(line: 54, column: 29, scope: !133)
!148 = !DILocation(line: 54, column: 24, scope: !133)
!149 = !DILocation(line: 54, column: 5, scope: !133)
!150 = !DILocation(line: 55, column: 29, scope: !133)
!151 = !DILocation(line: 55, column: 24, scope: !133)
!152 = !DILocation(line: 55, column: 5, scope: !133)
!153 = !DILocation(line: 56, column: 29, scope: !133)
!154 = !DILocation(line: 56, column: 24, scope: !133)
!155 = !DILocation(line: 56, column: 5, scope: !133)
!156 = !DILocation(line: 57, column: 29, scope: !133)
!157 = !DILocation(line: 57, column: 24, scope: !133)
!158 = !DILocation(line: 57, column: 5, scope: !133)
!159 = !DILocation(line: 59, column: 21, scope: !133)
!160 = !DILocation(line: 59, column: 25, scope: !133)
!161 = !DILocation(line: 59, column: 17, scope: !133)
!162 = !DILocation(line: 59, column: 5, scope: !133)
!163 = !DILocation(line: 60, column: 21, scope: !133)
!164 = !DILocation(line: 60, column: 26, scope: !133)
!165 = !DILocation(line: 60, column: 17, scope: !133)
!166 = !DILocation(line: 60, column: 5, scope: !133)
!167 = !DILocation(line: 61, column: 21, scope: !133)
!168 = !DILocation(line: 61, column: 29, scope: !133)
!169 = !DILocation(line: 61, column: 34, scope: !133)
!170 = !DILocation(line: 61, column: 41, scope: !133)
!171 = !DILocation(line: 61, column: 49, scope: !133)
!172 = !DILocation(line: 0, scope: !133)
!173 = !DILocation(line: 61, column: 17, scope: !133)
!174 = !DILocation(line: 61, column: 5, scope: !133)
!175 = !DILocation(line: 62, column: 21, scope: !133)
!176 = !DILocation(line: 62, column: 28, scope: !133)
!177 = !DILocation(line: 62, column: 17, scope: !133)
!178 = !DILocation(line: 62, column: 5, scope: !133)
!179 = !DILocation(line: 63, column: 21, scope: !133)
!180 = !DILocation(line: 63, column: 28, scope: !133)
!181 = !DILocation(line: 63, column: 17, scope: !133)
!182 = !DILocation(line: 63, column: 5, scope: !133)
!183 = !DILocation(line: 65, column: 21, scope: !133)
!184 = !DILocation(line: 65, column: 29, scope: !133)
!185 = !DILocation(line: 65, column: 17, scope: !133)
!186 = !DILocation(line: 65, column: 5, scope: !133)
!187 = !DILocation(line: 66, column: 21, scope: !133)
!188 = !DILocation(line: 66, column: 31, scope: !133)
!189 = !DILocation(line: 66, column: 25, scope: !133)
!190 = !DILocation(line: 66, column: 17, scope: !133)
!191 = !DILocation(line: 66, column: 5, scope: !133)
!192 = !DILocation(line: 68, column: 5, scope: !133)
!193 = !DILocation(line: 70, column: 14, scope: !133)
!194 = !DILocation(line: 70, column: 5, scope: !133)
!195 = !DILocation(line: 71, column: 14, scope: !133)
!196 = !DILocation(line: 71, column: 5, scope: !133)
!197 = !DILocation(line: 73, column: 5, scope: !133)
!198 = distinct !DISubprogram(name: "memcpy", scope: !199, file: !199, line: 12, type: !200, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !33)
!199 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!200 = !DISubroutineType(types: !201)
!201 = !{!202, !202, !203, !205}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !206, line: 46, baseType: !207)
!206 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!207 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!208 = !DILocalVariable(name: "destaddr", arg: 1, scope: !198, file: !199, line: 12, type: !202)
!209 = !DILocation(line: 12, column: 20, scope: !198)
!210 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !198, file: !199, line: 12, type: !203)
!211 = !DILocation(line: 12, column: 42, scope: !198)
!212 = !DILocalVariable(name: "len", arg: 3, scope: !198, file: !199, line: 12, type: !205)
!213 = !DILocation(line: 12, column: 58, scope: !198)
!214 = !DILocalVariable(name: "dest", scope: !198, file: !199, line: 13, type: !20)
!215 = !DILocation(line: 13, column: 9, scope: !198)
!216 = !DILocation(line: 13, column: 16, scope: !198)
!217 = !DILocalVariable(name: "src", scope: !198, file: !199, line: 14, type: !218)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!220 = !DILocation(line: 14, column: 15, scope: !198)
!221 = !DILocation(line: 14, column: 21, scope: !198)
!222 = !DILocation(line: 16, column: 3, scope: !198)
!223 = !DILocation(line: 16, column: 13, scope: !198)
!224 = !DILocation(line: 16, column: 16, scope: !198)
!225 = !DILocation(line: 17, column: 19, scope: !198)
!226 = !DILocation(line: 17, column: 15, scope: !198)
!227 = !DILocation(line: 17, column: 10, scope: !198)
!228 = !DILocation(line: 17, column: 13, scope: !198)
!229 = distinct !{!229, !222, !225, !230}
!230 = !{!"llvm.loop.mustprogress"}
!231 = !DILocation(line: 18, column: 10, scope: !198)
!232 = !DILocation(line: 18, column: 3, scope: !198)

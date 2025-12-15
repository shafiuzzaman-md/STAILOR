; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/096_testlimits.c_348_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/096_testlimits.c_348_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TestContext = type { i8*, i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [95 x i8] c"(ctx->len <= (int)(ctx->buffer + 4096 - ctx->current) && ctx->len >= 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_55980_vul/096_testlimits.c_348_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.test_limits_function = private unnamed_addr constant [41 x i8] c"void test_limits_function(TestContext *)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"rlen\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"instate\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_limits_function(%struct.TestContext* noundef %0) #0 !dbg !14 {
  %2 = alloca %struct.TestContext*, align 8
  store %struct.TestContext* %0, %struct.TestContext** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.TestContext** %2, metadata !30, metadata !DIExpression()), !dbg !31
  %3 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !32
  %4 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %3, i32 0, i32 4, !dbg !34
  %5 = load i32, i32* %4, align 8, !dbg !34
  %6 = icmp eq i32 %5, 2, !dbg !35
  br i1 %6, label %7, label %92, !dbg !36

7:                                                ; preds = %1
  %8 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !37
  %9 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %8, i32 0, i32 2, !dbg !40
  %10 = load i32, i32* %9, align 8, !dbg !40
  %11 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !41
  %12 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %11, i32 0, i32 3, !dbg !42
  %13 = load i32, i32* %12, align 4, !dbg !42
  %14 = icmp sge i32 %10, %13, !dbg !43
  br i1 %14, label %15, label %64, !dbg !44

15:                                               ; preds = %7
  %16 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !45
  %17 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %16, i32 0, i32 3, !dbg !47
  %18 = load i32, i32* %17, align 4, !dbg !47
  %19 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !48
  %20 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %19, i32 0, i32 2, !dbg !49
  store i32 %18, i32* %20, align 8, !dbg !50
  %21 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !51
  %22 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %21, i32 0, i32 3, !dbg !52
  store i32 0, i32* %22, align 4, !dbg !53
  %23 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !54
  %24 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %23, i32 0, i32 2, !dbg !54
  %25 = load i32, i32* %24, align 8, !dbg !54
  %26 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !54
  %27 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %26, i32 0, i32 0, !dbg !54
  %28 = load i8*, i8** %27, align 8, !dbg !54
  %29 = getelementptr inbounds i8, i8* %28, i64 4096, !dbg !54
  %30 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !54
  %31 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %30, i32 0, i32 1, !dbg !54
  %32 = load i8*, i8** %31, align 8, !dbg !54
  %33 = ptrtoint i8* %29 to i64, !dbg !54
  %34 = ptrtoint i8* %32 to i64, !dbg !54
  %35 = sub i64 %33, %34, !dbg !54
  %36 = trunc i64 %35 to i32, !dbg !54
  %37 = icmp sle i32 %25, %36, !dbg !54
  br i1 %37, label %38, label %45, !dbg !54

38:                                               ; preds = %15
  %39 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !54
  %40 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %39, i32 0, i32 2, !dbg !54
  %41 = load i32, i32* %40, align 8, !dbg !54
  %42 = icmp sge i32 %41, 0, !dbg !54
  br i1 %42, label %43, label %45, !dbg !54

43:                                               ; preds = %38
  br i1 true, label %44, label %45, !dbg !54

44:                                               ; preds = %43
  br label %47, !dbg !54

45:                                               ; preds = %43, %38, %15
  %46 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 noundef 28, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.test_limits_function, i64 0, i64 0)), !dbg !54
  br label %47, !dbg !54

47:                                               ; preds = %45, %44
  %48 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 noundef 29, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.test_limits_function, i64 0, i64 0)), !dbg !55
  %49 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !56
  %50 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %49, i32 0, i32 0, !dbg !57
  %51 = load i8*, i8** %50, align 8, !dbg !57
  %52 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !58
  %53 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %52, i32 0, i32 1, !dbg !59
  %54 = load i8*, i8** %53, align 8, !dbg !59
  %55 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !60
  %56 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %55, i32 0, i32 2, !dbg !61
  %57 = load i32, i32* %56, align 8, !dbg !61
  %58 = sext i32 %57 to i64, !dbg !60
  %59 = call i8* @memcpy(i8* %51, i8* %54, i64 %58), !dbg !62
  %60 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !63
  %61 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %60, i32 0, i32 4, !dbg !64
  store i32 3, i32* %61, align 8, !dbg !65
  %62 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !66
  %63 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %62, i32 0, i32 5, !dbg !67
  store i32 0, i32* %63, align 4, !dbg !68
  br label %91, !dbg !69

64:                                               ; preds = %7
  %65 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !70
  %66 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %65, i32 0, i32 0, !dbg !72
  %67 = load i8*, i8** %66, align 8, !dbg !72
  %68 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !73
  %69 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %68, i32 0, i32 1, !dbg !74
  %70 = load i8*, i8** %69, align 8, !dbg !74
  %71 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !75
  %72 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %71, i32 0, i32 2, !dbg !76
  %73 = load i32, i32* %72, align 8, !dbg !76
  %74 = sext i32 %73 to i64, !dbg !75
  %75 = call i8* @memcpy(i8* %67, i8* %70, i64 %74), !dbg !77
  %76 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !78
  %77 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %76, i32 0, i32 2, !dbg !79
  %78 = load i32, i32* %77, align 8, !dbg !79
  %79 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !80
  %80 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %79, i32 0, i32 3, !dbg !81
  %81 = load i32, i32* %80, align 4, !dbg !82
  %82 = sub nsw i32 %81, %78, !dbg !82
  store i32 %82, i32* %80, align 4, !dbg !82
  %83 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !83
  %84 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %83, i32 0, i32 2, !dbg !84
  %85 = load i32, i32* %84, align 8, !dbg !84
  %86 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !85
  %87 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %86, i32 0, i32 1, !dbg !86
  %88 = load i8*, i8** %87, align 8, !dbg !87
  %89 = sext i32 %85 to i64, !dbg !87
  %90 = getelementptr inbounds i8, i8* %88, i64 %89, !dbg !87
  store i8* %90, i8** %87, align 8, !dbg !87
  br label %91

91:                                               ; preds = %64, %47
  br label %92, !dbg !88

92:                                               ; preds = %91, %1
  ret void, !dbg !89
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !90 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TestContext*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.TestContext** %2, metadata !92, metadata !DIExpression()), !dbg !93
  %3 = call noalias i8* @malloc(i64 noundef 32) #7, !dbg !94
  %4 = bitcast i8* %3 to %struct.TestContext*, !dbg !94
  store %struct.TestContext* %4, %struct.TestContext** %2, align 8, !dbg !93
  %5 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !95
  %6 = icmp ne %struct.TestContext* %5, null, !dbg !95
  br i1 %6, label %8, label %7, !dbg !97

7:                                                ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !98
  br label %99, !dbg !98

8:                                                ; preds = %0
  %9 = call noalias i8* @malloc(i64 noundef 4096) #7, !dbg !99
  %10 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !100
  %11 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %10, i32 0, i32 0, !dbg !101
  store i8* %9, i8** %11, align 8, !dbg !102
  %12 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !103
  %13 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %12, i32 0, i32 0, !dbg !105
  %14 = load i8*, i8** %13, align 8, !dbg !105
  %15 = icmp ne i8* %14, null, !dbg !103
  br i1 %15, label %19, label %16, !dbg !106

16:                                               ; preds = %8
  %17 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !107
  %18 = bitcast %struct.TestContext* %17 to i8*, !dbg !107
  call void @free(i8* noundef %18) #7, !dbg !109
  store i32 1, i32* %1, align 4, !dbg !110
  br label %99, !dbg !110

19:                                               ; preds = %8
  %20 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !111
  %21 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %20, i32 0, i32 0, !dbg !112
  %22 = load i8*, i8** %21, align 8, !dbg !112
  call void @klee_make_symbolic(i8* noundef %22, i64 noundef 4096, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)), !dbg !113
  %23 = call noalias i8* @malloc(i64 noundef 4096) #7, !dbg !114
  %24 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !115
  %25 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %24, i32 0, i32 1, !dbg !116
  store i8* %23, i8** %25, align 8, !dbg !117
  %26 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !118
  %27 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %26, i32 0, i32 1, !dbg !120
  %28 = load i8*, i8** %27, align 8, !dbg !120
  %29 = icmp ne i8* %28, null, !dbg !118
  br i1 %29, label %36, label %30, !dbg !121

30:                                               ; preds = %19
  %31 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !122
  %32 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %31, i32 0, i32 0, !dbg !124
  %33 = load i8*, i8** %32, align 8, !dbg !124
  call void @free(i8* noundef %33) #7, !dbg !125
  %34 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !126
  %35 = bitcast %struct.TestContext* %34 to i8*, !dbg !126
  call void @free(i8* noundef %35) #7, !dbg !127
  store i32 1, i32* %1, align 4, !dbg !128
  br label %99, !dbg !128

36:                                               ; preds = %19
  %37 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !129
  %38 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %37, i32 0, i32 1, !dbg !130
  %39 = load i8*, i8** %38, align 8, !dbg !130
  call void @klee_make_symbolic(i8* noundef %39, i64 noundef 4096, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)), !dbg !131
  %40 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !132
  %41 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %40, i32 0, i32 2, !dbg !133
  %42 = bitcast i32* %41 to i8*, !dbg !134
  call void @klee_make_symbolic(i8* noundef %42, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)), !dbg !135
  %43 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !136
  %44 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %43, i32 0, i32 3, !dbg !137
  %45 = bitcast i32* %44 to i8*, !dbg !138
  call void @klee_make_symbolic(i8* noundef %45, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)), !dbg !139
  %46 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !140
  %47 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %46, i32 0, i32 4, !dbg !141
  %48 = bitcast i32* %47 to i8*, !dbg !142
  call void @klee_make_symbolic(i8* noundef %48, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)), !dbg !143
  %49 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !144
  %50 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %49, i32 0, i32 4, !dbg !145
  %51 = load i32, i32* %50, align 8, !dbg !145
  %52 = icmp eq i32 %51, 2, !dbg !146
  %53 = zext i1 %52 to i32, !dbg !146
  %54 = sext i32 %53 to i64, !dbg !144
  call void @klee_assume(i64 noundef %54), !dbg !147
  %55 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !148
  %56 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %55, i32 0, i32 2, !dbg !149
  %57 = load i32, i32* %56, align 8, !dbg !149
  %58 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !150
  %59 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %58, i32 0, i32 3, !dbg !151
  %60 = load i32, i32* %59, align 4, !dbg !151
  %61 = icmp sge i32 %57, %60, !dbg !152
  %62 = zext i1 %61 to i32, !dbg !152
  %63 = sext i32 %62 to i64, !dbg !148
  call void @klee_assume(i64 noundef %63), !dbg !153
  %64 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !154
  %65 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %64, i32 0, i32 3, !dbg !155
  %66 = load i32, i32* %65, align 4, !dbg !155
  %67 = icmp sge i32 %66, 0, !dbg !156
  %68 = zext i1 %67 to i32, !dbg !156
  %69 = sext i32 %68 to i64, !dbg !154
  call void @klee_assume(i64 noundef %69), !dbg !157
  %70 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !158
  %71 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %70, i32 0, i32 2, !dbg !159
  %72 = load i32, i32* %71, align 8, !dbg !159
  %73 = icmp sge i32 %72, 0, !dbg !160
  %74 = zext i1 %73 to i32, !dbg !160
  %75 = sext i32 %74 to i64, !dbg !158
  call void @klee_assume(i64 noundef %75), !dbg !161
  %76 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !162
  %77 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %76, i32 0, i32 3, !dbg !163
  %78 = load i32, i32* %77, align 4, !dbg !163
  %79 = icmp sle i32 %78, 4096, !dbg !164
  %80 = zext i1 %79 to i32, !dbg !164
  %81 = sext i32 %80 to i64, !dbg !162
  call void @klee_assume(i64 noundef %81), !dbg !165
  %82 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !166
  %83 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %82, i32 0, i32 2, !dbg !167
  %84 = load i32, i32* %83, align 8, !dbg !167
  %85 = icmp sle i32 %84, 4096, !dbg !168
  %86 = zext i1 %85 to i32, !dbg !168
  %87 = sext i32 %86 to i64, !dbg !166
  call void @klee_assume(i64 noundef %87), !dbg !169
  %88 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !170
  %89 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %88, i32 0, i32 5, !dbg !171
  store i32 0, i32* %89, align 4, !dbg !172
  %90 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !173
  call void @test_limits_function(%struct.TestContext* noundef %90), !dbg !174
  %91 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !175
  %92 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %91, i32 0, i32 1, !dbg !176
  %93 = load i8*, i8** %92, align 8, !dbg !176
  call void @free(i8* noundef %93) #7, !dbg !177
  %94 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !178
  %95 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %94, i32 0, i32 0, !dbg !179
  %96 = load i8*, i8** %95, align 8, !dbg !179
  call void @free(i8* noundef %96) #7, !dbg !180
  %97 = load %struct.TestContext*, %struct.TestContext** %2, align 8, !dbg !181
  %98 = bitcast %struct.TestContext* %97 to i8*, !dbg !181
  call void @free(i8* noundef %98) #7, !dbg !182
  store i32 0, i32* %1, align 4, !dbg !183
  br label %99, !dbg !183

99:                                               ; preds = %36, %30, %16, %7
  %100 = load i32, i32* %1, align 4, !dbg !184
  ret i32 %100, !dbg !184
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !185 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !195, metadata !DIExpression()), !dbg !196
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !197, metadata !DIExpression()), !dbg !198
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !199, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.declare(metadata i8** %7, metadata !201, metadata !DIExpression()), !dbg !202
  %9 = load i8*, i8** %4, align 8, !dbg !203
  store i8* %9, i8** %7, align 8, !dbg !202
  call void @llvm.dbg.declare(metadata i8** %8, metadata !204, metadata !DIExpression()), !dbg !207
  %10 = load i8*, i8** %5, align 8, !dbg !208
  store i8* %10, i8** %8, align 8, !dbg !207
  br label %11, !dbg !209

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !210
  %13 = add i64 %12, -1, !dbg !210
  store i64 %13, i64* %6, align 8, !dbg !210
  %14 = icmp ugt i64 %12, 0, !dbg !211
  br i1 %14, label %15, label %21, !dbg !209

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !212
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !212
  store i8* %17, i8** %8, align 8, !dbg !212
  %18 = load i8, i8* %16, align 1, !dbg !213
  %19 = load i8*, i8** %7, align 8, !dbg !214
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !214
  store i8* %20, i8** %7, align 8, !dbg !214
  store i8 %18, i8* %19, align 1, !dbg !215
  br label %11, !dbg !209, !llvm.loop !216

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !218
  ret i8* %22, !dbg !219
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/096_testlimits.c_348_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "abd395b0f8b9b03f363845d36888be06")
!2 = !{!3}
!3 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
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
!14 = distinct !DISubprogram(name: "test_limits_function", scope: !1, file: !1, line: 20, type: !15, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "TestContext", file: !1, line: 17, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 10, size: 256, elements: !20)
!20 = !{!21, !24, !25, !26, !27, !28}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !19, file: !1, line: 11, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !19, file: !1, line: 12, baseType: !22, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !19, file: !1, line: 13, baseType: !3, size: 32, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "rlen", scope: !19, file: !1, line: 14, baseType: !3, size: 32, offset: 160)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !19, file: !1, line: 15, baseType: !3, size: 32, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "curlen", scope: !19, file: !1, line: 16, baseType: !3, size: 32, offset: 224)
!29 = !{}
!30 = !DILocalVariable(name: "ctx", arg: 1, scope: !14, file: !1, line: 20, type: !17)
!31 = !DILocation(line: 20, column: 40, scope: !14)
!32 = !DILocation(line: 21, column: 9, scope: !33)
!33 = distinct !DILexicalBlock(scope: !14, file: !1, line: 21, column: 9)
!34 = !DILocation(line: 21, column: 14, scope: !33)
!35 = !DILocation(line: 21, column: 22, scope: !33)
!36 = !DILocation(line: 21, column: 9, scope: !14)
!37 = !DILocation(line: 22, column: 13, scope: !38)
!38 = distinct !DILexicalBlock(scope: !39, file: !1, line: 22, column: 13)
!39 = distinct !DILexicalBlock(scope: !33, file: !1, line: 21, column: 28)
!40 = !DILocation(line: 22, column: 18, scope: !38)
!41 = !DILocation(line: 22, column: 25, scope: !38)
!42 = !DILocation(line: 22, column: 30, scope: !38)
!43 = !DILocation(line: 22, column: 22, scope: !38)
!44 = !DILocation(line: 22, column: 13, scope: !39)
!45 = !DILocation(line: 23, column: 24, scope: !46)
!46 = distinct !DILexicalBlock(scope: !38, file: !1, line: 22, column: 36)
!47 = !DILocation(line: 23, column: 29, scope: !46)
!48 = !DILocation(line: 23, column: 13, scope: !46)
!49 = !DILocation(line: 23, column: 18, scope: !46)
!50 = !DILocation(line: 23, column: 22, scope: !46)
!51 = !DILocation(line: 24, column: 13, scope: !46)
!52 = !DILocation(line: 24, column: 18, scope: !46)
!53 = !DILocation(line: 24, column: 23, scope: !46)
!54 = !DILocation(line: 28, column: 13, scope: !46)
!55 = !DILocation(line: 29, column: 13, scope: !46)
!56 = !DILocation(line: 31, column: 20, scope: !46)
!57 = !DILocation(line: 31, column: 25, scope: !46)
!58 = !DILocation(line: 31, column: 33, scope: !46)
!59 = !DILocation(line: 31, column: 38, scope: !46)
!60 = !DILocation(line: 31, column: 47, scope: !46)
!61 = !DILocation(line: 31, column: 52, scope: !46)
!62 = !DILocation(line: 31, column: 13, scope: !46)
!63 = !DILocation(line: 32, column: 13, scope: !46)
!64 = !DILocation(line: 32, column: 18, scope: !46)
!65 = !DILocation(line: 32, column: 26, scope: !46)
!66 = !DILocation(line: 33, column: 13, scope: !46)
!67 = !DILocation(line: 33, column: 18, scope: !46)
!68 = !DILocation(line: 33, column: 25, scope: !46)
!69 = !DILocation(line: 34, column: 9, scope: !46)
!70 = !DILocation(line: 35, column: 20, scope: !71)
!71 = distinct !DILexicalBlock(scope: !38, file: !1, line: 34, column: 16)
!72 = !DILocation(line: 35, column: 25, scope: !71)
!73 = !DILocation(line: 35, column: 33, scope: !71)
!74 = !DILocation(line: 35, column: 38, scope: !71)
!75 = !DILocation(line: 35, column: 47, scope: !71)
!76 = !DILocation(line: 35, column: 52, scope: !71)
!77 = !DILocation(line: 35, column: 13, scope: !71)
!78 = !DILocation(line: 36, column: 26, scope: !71)
!79 = !DILocation(line: 36, column: 31, scope: !71)
!80 = !DILocation(line: 36, column: 13, scope: !71)
!81 = !DILocation(line: 36, column: 18, scope: !71)
!82 = !DILocation(line: 36, column: 23, scope: !71)
!83 = !DILocation(line: 37, column: 29, scope: !71)
!84 = !DILocation(line: 37, column: 34, scope: !71)
!85 = !DILocation(line: 37, column: 13, scope: !71)
!86 = !DILocation(line: 37, column: 18, scope: !71)
!87 = !DILocation(line: 37, column: 26, scope: !71)
!88 = !DILocation(line: 39, column: 5, scope: !39)
!89 = !DILocation(line: 40, column: 1, scope: !14)
!90 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 42, type: !91, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!91 = !DISubroutineType(types: !2)
!92 = !DILocalVariable(name: "ctx", scope: !90, file: !1, line: 44, type: !17)
!93 = !DILocation(line: 44, column: 18, scope: !90)
!94 = !DILocation(line: 44, column: 24, scope: !90)
!95 = !DILocation(line: 45, column: 10, scope: !96)
!96 = distinct !DILexicalBlock(scope: !90, file: !1, line: 45, column: 9)
!97 = !DILocation(line: 45, column: 9, scope: !90)
!98 = !DILocation(line: 45, column: 15, scope: !96)
!99 = !DILocation(line: 48, column: 19, scope: !90)
!100 = !DILocation(line: 48, column: 5, scope: !90)
!101 = !DILocation(line: 48, column: 10, scope: !90)
!102 = !DILocation(line: 48, column: 17, scope: !90)
!103 = !DILocation(line: 49, column: 10, scope: !104)
!104 = distinct !DILexicalBlock(scope: !90, file: !1, line: 49, column: 9)
!105 = !DILocation(line: 49, column: 15, scope: !104)
!106 = !DILocation(line: 49, column: 9, scope: !90)
!107 = !DILocation(line: 50, column: 14, scope: !108)
!108 = distinct !DILexicalBlock(scope: !104, file: !1, line: 49, column: 23)
!109 = !DILocation(line: 50, column: 9, scope: !108)
!110 = !DILocation(line: 51, column: 9, scope: !108)
!111 = !DILocation(line: 55, column: 24, scope: !90)
!112 = !DILocation(line: 55, column: 29, scope: !90)
!113 = !DILocation(line: 55, column: 5, scope: !90)
!114 = !DILocation(line: 58, column: 20, scope: !90)
!115 = !DILocation(line: 58, column: 5, scope: !90)
!116 = !DILocation(line: 58, column: 10, scope: !90)
!117 = !DILocation(line: 58, column: 18, scope: !90)
!118 = !DILocation(line: 59, column: 10, scope: !119)
!119 = distinct !DILexicalBlock(scope: !90, file: !1, line: 59, column: 9)
!120 = !DILocation(line: 59, column: 15, scope: !119)
!121 = !DILocation(line: 59, column: 9, scope: !90)
!122 = !DILocation(line: 60, column: 14, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !1, line: 59, column: 24)
!124 = !DILocation(line: 60, column: 19, scope: !123)
!125 = !DILocation(line: 60, column: 9, scope: !123)
!126 = !DILocation(line: 61, column: 14, scope: !123)
!127 = !DILocation(line: 61, column: 9, scope: !123)
!128 = !DILocation(line: 62, column: 9, scope: !123)
!129 = !DILocation(line: 64, column: 24, scope: !90)
!130 = !DILocation(line: 64, column: 29, scope: !90)
!131 = !DILocation(line: 64, column: 5, scope: !90)
!132 = !DILocation(line: 67, column: 25, scope: !90)
!133 = !DILocation(line: 67, column: 30, scope: !90)
!134 = !DILocation(line: 67, column: 24, scope: !90)
!135 = !DILocation(line: 67, column: 5, scope: !90)
!136 = !DILocation(line: 68, column: 25, scope: !90)
!137 = !DILocation(line: 68, column: 30, scope: !90)
!138 = !DILocation(line: 68, column: 24, scope: !90)
!139 = !DILocation(line: 68, column: 5, scope: !90)
!140 = !DILocation(line: 69, column: 25, scope: !90)
!141 = !DILocation(line: 69, column: 30, scope: !90)
!142 = !DILocation(line: 69, column: 24, scope: !90)
!143 = !DILocation(line: 69, column: 5, scope: !90)
!144 = !DILocation(line: 72, column: 17, scope: !90)
!145 = !DILocation(line: 72, column: 22, scope: !90)
!146 = !DILocation(line: 72, column: 30, scope: !90)
!147 = !DILocation(line: 72, column: 5, scope: !90)
!148 = !DILocation(line: 73, column: 17, scope: !90)
!149 = !DILocation(line: 73, column: 22, scope: !90)
!150 = !DILocation(line: 73, column: 29, scope: !90)
!151 = !DILocation(line: 73, column: 34, scope: !90)
!152 = !DILocation(line: 73, column: 26, scope: !90)
!153 = !DILocation(line: 73, column: 5, scope: !90)
!154 = !DILocation(line: 74, column: 17, scope: !90)
!155 = !DILocation(line: 74, column: 22, scope: !90)
!156 = !DILocation(line: 74, column: 27, scope: !90)
!157 = !DILocation(line: 74, column: 5, scope: !90)
!158 = !DILocation(line: 75, column: 17, scope: !90)
!159 = !DILocation(line: 75, column: 22, scope: !90)
!160 = !DILocation(line: 75, column: 26, scope: !90)
!161 = !DILocation(line: 75, column: 5, scope: !90)
!162 = !DILocation(line: 76, column: 17, scope: !90)
!163 = !DILocation(line: 76, column: 22, scope: !90)
!164 = !DILocation(line: 76, column: 27, scope: !90)
!165 = !DILocation(line: 76, column: 5, scope: !90)
!166 = !DILocation(line: 77, column: 17, scope: !90)
!167 = !DILocation(line: 77, column: 22, scope: !90)
!168 = !DILocation(line: 77, column: 26, scope: !90)
!169 = !DILocation(line: 77, column: 5, scope: !90)
!170 = !DILocation(line: 80, column: 5, scope: !90)
!171 = !DILocation(line: 80, column: 10, scope: !90)
!172 = !DILocation(line: 80, column: 17, scope: !90)
!173 = !DILocation(line: 83, column: 26, scope: !90)
!174 = !DILocation(line: 83, column: 5, scope: !90)
!175 = !DILocation(line: 86, column: 10, scope: !90)
!176 = !DILocation(line: 86, column: 15, scope: !90)
!177 = !DILocation(line: 86, column: 5, scope: !90)
!178 = !DILocation(line: 87, column: 10, scope: !90)
!179 = !DILocation(line: 87, column: 15, scope: !90)
!180 = !DILocation(line: 87, column: 5, scope: !90)
!181 = !DILocation(line: 88, column: 10, scope: !90)
!182 = !DILocation(line: 88, column: 5, scope: !90)
!183 = !DILocation(line: 90, column: 5, scope: !90)
!184 = !DILocation(line: 91, column: 1, scope: !90)
!185 = distinct !DISubprogram(name: "memcpy", scope: !186, file: !186, line: 12, type: !187, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !29)
!186 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!187 = !DISubroutineType(types: !188)
!188 = !{!189, !189, !190, !192}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !193, line: 46, baseType: !194)
!193 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!194 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!195 = !DILocalVariable(name: "destaddr", arg: 1, scope: !185, file: !186, line: 12, type: !189)
!196 = !DILocation(line: 12, column: 20, scope: !185)
!197 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !185, file: !186, line: 12, type: !190)
!198 = !DILocation(line: 12, column: 42, scope: !185)
!199 = !DILocalVariable(name: "len", arg: 3, scope: !185, file: !186, line: 12, type: !192)
!200 = !DILocation(line: 12, column: 58, scope: !185)
!201 = !DILocalVariable(name: "dest", scope: !185, file: !186, line: 13, type: !22)
!202 = !DILocation(line: 13, column: 9, scope: !185)
!203 = !DILocation(line: 13, column: 16, scope: !185)
!204 = !DILocalVariable(name: "src", scope: !185, file: !186, line: 14, type: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!207 = !DILocation(line: 14, column: 15, scope: !185)
!208 = !DILocation(line: 14, column: 21, scope: !185)
!209 = !DILocation(line: 16, column: 3, scope: !185)
!210 = !DILocation(line: 16, column: 13, scope: !185)
!211 = !DILocation(line: 16, column: 16, scope: !185)
!212 = !DILocation(line: 17, column: 19, scope: !185)
!213 = !DILocation(line: 17, column: 15, scope: !185)
!214 = !DILocation(line: 17, column: 10, scope: !185)
!215 = !DILocation(line: 17, column: 13, scope: !185)
!216 = distinct !{!216, !209, !212, !217}
!217 = !{!"llvm.loop.mustprogress"}
!218 = !DILocation(line: 18, column: 10, scope: !185)
!219 = !DILocation(line: 18, column: 3, scope: !185)

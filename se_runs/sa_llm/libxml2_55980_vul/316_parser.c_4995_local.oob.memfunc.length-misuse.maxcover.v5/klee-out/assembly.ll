; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/316_parser.c_4995_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/316_parser.c_4995_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlParserCtxt = type { i32, %struct._xmlParserInput*, i32 }
%struct._xmlParserInput = type { i8* }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"(len + nbchar <= len + 100) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_55980_vul/316_parser.c_4995_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [43 x i8] c"void target_function(xmlParserCtxt *, int)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Comment too big found\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"state_val\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"input_cur\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"nbchar\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"maxLength\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !23 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !27, metadata !DIExpression()), !dbg !28
  %3 = load i8*, i8** %2, align 8, !dbg !29
  call void @free(i8* noundef %3) #7, !dbg !30
  ret void, !dbg !31
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlErrMemory(%struct._xmlParserCtxt* noundef %0, i8* noundef %1) #0 !dbg !32 {
  %3 = alloca %struct._xmlParserCtxt*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %3, metadata !50, metadata !DIExpression()), !dbg !51
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !52, metadata !DIExpression()), !dbg !53
  %5 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !54
  %6 = load i8*, i8** %4, align 8, !dbg !55
  ret void, !dbg !56
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFatalErrMsgStr(%struct._xmlParserCtxt* noundef %0, i32 noundef %1, i8* noundef %2, i8* noundef %3) #0 !dbg !57 {
  %5 = alloca %struct._xmlParserCtxt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %5, metadata !60, metadata !DIExpression()), !dbg !61
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !62, metadata !DIExpression()), !dbg !63
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !64, metadata !DIExpression()), !dbg !65
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !66, metadata !DIExpression()), !dbg !67
  %9 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !68
  %10 = load i32, i32* %6, align 4, !dbg !69
  %11 = load i8*, i8** %7, align 8, !dbg !70
  %12 = load i8*, i8** %8, align 8, !dbg !71
  ret void, !dbg !72
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @target_function(%struct._xmlParserCtxt* noundef %0, i32 noundef %1) #0 !dbg !73 {
  %3 = alloca %struct._xmlParserCtxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %3, metadata !76, metadata !DIExpression()), !dbg !77
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !78, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata i8** %5, metadata !80, metadata !DIExpression()), !dbg !82
  store i8* null, i8** %5, align 8, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %6, metadata !83, metadata !DIExpression()), !dbg !84
  store i32 0, i32* %6, align 4, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %7, metadata !85, metadata !DIExpression()), !dbg !86
  store i32 0, i32* %7, align 4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %8, metadata !87, metadata !DIExpression()), !dbg !88
  %10 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !89
  %11 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %10, i32 0, i32 0, !dbg !90
  %12 = load i32, i32* %11, align 8, !dbg !90
  store i32 %12, i32* %8, align 4, !dbg !88
  br label %13, !dbg !91

13:                                               ; preds = %2
  %14 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !92
  %15 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %14, i32 0, i32 0, !dbg !93
  %16 = load i32, i32* %15, align 8, !dbg !93
  %17 = icmp eq i32 %16, 6, !dbg !94
  br i1 %17, label %18, label %88, !dbg !91

18:                                               ; preds = %13
  %19 = load i8*, i8** %5, align 8, !dbg !95
  %20 = icmp eq i8* %19, null, !dbg !98
  br i1 %20, label %21, label %31, !dbg !99

21:                                               ; preds = %18
  %22 = call noalias i8* @malloc(i64 noundef 100) #7, !dbg !100
  store i8* %22, i8** %5, align 8, !dbg !102
  %23 = load i8*, i8** %5, align 8, !dbg !103
  %24 = icmp eq i8* %23, null, !dbg !105
  br i1 %24, label %25, label %30, !dbg !106

25:                                               ; preds = %21
  %26 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !107
  call void @xmlErrMemory(%struct._xmlParserCtxt* noundef %26, i8* noundef null), !dbg !109
  %27 = load i32, i32* %8, align 4, !dbg !110
  %28 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !111
  %29 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %28, i32 0, i32 0, !dbg !112
  store i32 %27, i32* %29, align 8, !dbg !113
  br label %88, !dbg !114

30:                                               ; preds = %21
  br label %49, !dbg !115

31:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata i8** %9, metadata !116, metadata !DIExpression()), !dbg !118
  %32 = load i8*, i8** %5, align 8, !dbg !119
  %33 = load i32, i32* %6, align 4, !dbg !120
  %34 = load i32, i32* %7, align 4, !dbg !121
  %35 = add nsw i32 %33, %34, !dbg !122
  %36 = add nsw i32 %35, 100, !dbg !123
  %37 = sext i32 %36 to i64, !dbg !120
  %38 = call i8* @realloc(i8* noundef %32, i64 noundef %37) #7, !dbg !124
  store i8* %38, i8** %9, align 8, !dbg !118
  %39 = load i8*, i8** %9, align 8, !dbg !125
  %40 = icmp eq i8* %39, null, !dbg !127
  br i1 %40, label %41, label %47, !dbg !128

41:                                               ; preds = %31
  %42 = load i8*, i8** %5, align 8, !dbg !129
  call void @xmlFree(i8* noundef %42), !dbg !131
  %43 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !132
  call void @xmlErrMemory(%struct._xmlParserCtxt* noundef %43, i8* noundef null), !dbg !133
  %44 = load i32, i32* %8, align 4, !dbg !134
  %45 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !135
  %46 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %45, i32 0, i32 0, !dbg !136
  store i32 %44, i32* %46, align 8, !dbg !137
  br label %88, !dbg !138

47:                                               ; preds = %31
  %48 = load i8*, i8** %9, align 8, !dbg !139
  store i8* %48, i8** %5, align 8, !dbg !140
  br label %49

49:                                               ; preds = %47, %30
  %50 = load i8*, i8** %5, align 8, !dbg !141
  %51 = load i32, i32* %6, align 4, !dbg !142
  %52 = sext i32 %51 to i64, !dbg !141
  %53 = getelementptr inbounds i8, i8* %50, i64 %52, !dbg !141
  %54 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !143
  %55 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %54, i32 0, i32 1, !dbg !144
  %56 = load %struct._xmlParserInput*, %struct._xmlParserInput** %55, align 8, !dbg !144
  %57 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %56, i32 0, i32 0, !dbg !145
  %58 = load i8*, i8** %57, align 8, !dbg !145
  %59 = load i32, i32* %7, align 4, !dbg !146
  %60 = sext i32 %59 to i64, !dbg !146
  %61 = call i8* @memcpy(i8* %53, i8* %58, i64 %60), !dbg !147
  %62 = load i32, i32* %6, align 4, !dbg !148
  %63 = load i32, i32* %7, align 4, !dbg !148
  %64 = add nsw i32 %62, %63, !dbg !148
  %65 = load i32, i32* %6, align 4, !dbg !148
  %66 = add nsw i32 %65, 100, !dbg !148
  %67 = icmp sle i32 %64, %66, !dbg !148
  br i1 %67, label %68, label %70, !dbg !148

68:                                               ; preds = %49
  br i1 true, label %69, label %70, !dbg !148

69:                                               ; preds = %68
  br label %72, !dbg !148

70:                                               ; preds = %68, %49
  %71 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !148
  br label %72, !dbg !148

72:                                               ; preds = %70, %69
  %73 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !149
  %74 = load i32, i32* %7, align 4, !dbg !150
  %75 = load i32, i32* %6, align 4, !dbg !151
  %76 = add nsw i32 %75, %74, !dbg !151
  store i32 %76, i32* %6, align 4, !dbg !151
  %77 = load i8*, i8** %5, align 8, !dbg !152
  %78 = load i32, i32* %6, align 4, !dbg !153
  %79 = sext i32 %78 to i64, !dbg !152
  %80 = getelementptr inbounds i8, i8* %77, i64 %79, !dbg !152
  store i8 0, i8* %80, align 1, !dbg !154
  %81 = load i32, i32* %6, align 4, !dbg !155
  %82 = load i32, i32* %4, align 4, !dbg !157
  %83 = icmp sgt i32 %81, %82, !dbg !158
  br i1 %83, label %84, label %87, !dbg !159

84:                                               ; preds = %72
  %85 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !160
  call void @xmlFatalErrMsgStr(%struct._xmlParserCtxt* noundef %85, i32 noundef 1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* noundef null), !dbg !162
  %86 = load i8*, i8** %5, align 8, !dbg !163
  call void @xmlFree(i8* noundef %86), !dbg !164
  br label %88, !dbg !165

87:                                               ; preds = %72
  br label %88, !dbg !166

88:                                               ; preds = %25, %41, %84, %87, %13
  ret void, !dbg !167
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !168 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt, align 8
  %3 = alloca %struct._xmlParserInput, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [100 x i8], align 16
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt* %2, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata %struct._xmlParserInput* %3, metadata !173, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata i32* %4, metadata !175, metadata !DIExpression()), !dbg !176
  %8 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 1, !dbg !177
  store %struct._xmlParserInput* %3, %struct._xmlParserInput** %8, align 8, !dbg !178
  call void @llvm.dbg.declare(metadata i32* %5, metadata !179, metadata !DIExpression()), !dbg !180
  %9 = bitcast i32* %5 to i8*, !dbg !181
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)), !dbg !182
  %10 = load i32, i32* %5, align 4, !dbg !183
  %11 = icmp eq i32 %10, 6, !dbg !184
  %12 = zext i1 %11 to i32, !dbg !184
  %13 = sext i32 %12 to i64, !dbg !183
  call void @klee_assume(i64 noundef %13), !dbg !185
  %14 = load i32, i32* %5, align 4, !dbg !186
  %15 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 0, !dbg !187
  store i32 %14, i32* %15, align 8, !dbg !188
  call void @llvm.dbg.declare(metadata [100 x i8]* %6, metadata !189, metadata !DIExpression()), !dbg !193
  %16 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0, !dbg !194
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 100, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)), !dbg !195
  %17 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0, !dbg !196
  %18 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %3, i32 0, i32 0, !dbg !197
  store i8* %17, i8** %18, align 8, !dbg !198
  call void @llvm.dbg.declare(metadata i32* %7, metadata !199, metadata !DIExpression()), !dbg !200
  %19 = bitcast i32* %7 to i8*, !dbg !201
  call void @klee_make_symbolic(i8* noundef %19, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)), !dbg !202
  %20 = load i32, i32* %7, align 4, !dbg !203
  %21 = icmp sge i32 %20, 0, !dbg !204
  br i1 %21, label %22, label %25, !dbg !205

22:                                               ; preds = %0
  %23 = load i32, i32* %7, align 4, !dbg !206
  %24 = icmp slt i32 %23, 100, !dbg !207
  br label %25

25:                                               ; preds = %22, %0
  %26 = phi i1 [ false, %0 ], [ %24, %22 ], !dbg !208
  %27 = zext i1 %26 to i32, !dbg !205
  %28 = sext i32 %27 to i64, !dbg !203
  call void @klee_assume(i64 noundef %28), !dbg !209
  %29 = bitcast i32* %4 to i8*, !dbg !210
  call void @klee_make_symbolic(i8* noundef %29, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)), !dbg !211
  %30 = load i32, i32* %4, align 4, !dbg !212
  %31 = icmp sge i32 %30, 0, !dbg !213
  br i1 %31, label %32, label %35, !dbg !214

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4, !dbg !215
  %34 = icmp slt i32 %33, 1000, !dbg !216
  br label %35

35:                                               ; preds = %32, %25
  %36 = phi i1 [ false, %25 ], [ %34, %32 ], !dbg !208
  %37 = zext i1 %36 to i32, !dbg !214
  %38 = sext i32 %37 to i64, !dbg !212
  call void @klee_assume(i64 noundef %38), !dbg !217
  %39 = load i32, i32* %4, align 4, !dbg !218
  call void @target_function(%struct._xmlParserCtxt* noundef %2, i32 noundef %39), !dbg !219
  ret i32 0, !dbg !220
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !221 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !230, metadata !DIExpression()), !dbg !231
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !232, metadata !DIExpression()), !dbg !233
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !234, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i8** %7, metadata !236, metadata !DIExpression()), !dbg !237
  %9 = load i8*, i8** %4, align 8, !dbg !238
  store i8* %9, i8** %7, align 8, !dbg !237
  call void @llvm.dbg.declare(metadata i8** %8, metadata !239, metadata !DIExpression()), !dbg !240
  %10 = load i8*, i8** %5, align 8, !dbg !241
  store i8* %10, i8** %8, align 8, !dbg !240
  br label %11, !dbg !242

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !243
  %13 = add i64 %12, -1, !dbg !243
  store i64 %13, i64* %6, align 8, !dbg !243
  %14 = icmp ugt i64 %12, 0, !dbg !244
  br i1 %14, label %15, label %21, !dbg !242

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !245
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !245
  store i8* %17, i8** %8, align 8, !dbg !245
  %18 = load i8, i8* %16, align 1, !dbg !246
  %19 = load i8*, i8** %7, align 8, !dbg !247
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !247
  store i8* %20, i8** %7, align 8, !dbg !247
  store i8 %18, i8* %19, align 1, !dbg !248
  br label %11, !dbg !242, !llvm.loop !249

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !251
  ret i8* %22, !dbg !252
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22, !22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !10, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/316_parser.c_4995_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "d3eee295faa780e8f2a86f67530ae0a2")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 13, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "XML_PARSER_EOF", value: -1)
!7 = !DIEnumerator(name: "XML_PARSER_START", value: 0)
!8 = !DIEnumerator(name: "XML_PARSER_MISC", value: 1)
!9 = !DIEnumerator(name: "XML_PARSER_COMMENT", value: 6)
!10 = !{!11, !12}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputState", file: !1, line: 18, baseType: !3)
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !14, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 7, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"Ubuntu clang version 14.0.6"}
!23 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 30, type: !24, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !11}
!26 = !{}
!27 = !DILocalVariable(name: "ptr", arg: 1, scope: !23, file: !1, line: 30, type: !11)
!28 = !DILocation(line: 30, column: 20, scope: !23)
!29 = !DILocation(line: 31, column: 10, scope: !23)
!30 = !DILocation(line: 31, column: 5, scope: !23)
!31 = !DILocation(line: 32, column: 1, scope: !23)
!32 = distinct !DISubprogram(name: "xmlErrMemory", scope: !1, file: !1, line: 34, type: !33, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !35, !46}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 10, baseType: !37)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 24, size: 192, elements: !38)
!38 = !{!39, !40, !49}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !37, file: !1, line: 25, baseType: !12, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !37, file: !1, line: 26, baseType: !41, size: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInput", file: !1, line: 11, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInput", file: !1, line: 20, size: 64, elements: !44)
!44 = !{!45}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !43, file: !1, line: 21, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "errNo", scope: !37, file: !1, line: 27, baseType: !4, size: 32, offset: 128)
!50 = !DILocalVariable(name: "ctxt", arg: 1, scope: !32, file: !1, line: 34, type: !35)
!51 = !DILocation(line: 34, column: 34, scope: !32)
!52 = !DILocalVariable(name: "extra", arg: 2, scope: !32, file: !1, line: 34, type: !46)
!53 = !DILocation(line: 34, column: 52, scope: !32)
!54 = !DILocation(line: 35, column: 11, scope: !32)
!55 = !DILocation(line: 35, column: 23, scope: !32)
!56 = !DILocation(line: 36, column: 1, scope: !32)
!57 = distinct !DISubprogram(name: "xmlFatalErrMsgStr", scope: !1, file: !1, line: 38, type: !58, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !35, !4, !46, !46}
!60 = !DILocalVariable(name: "ctxt", arg: 1, scope: !57, file: !1, line: 38, type: !35)
!61 = !DILocation(line: 38, column: 39, scope: !57)
!62 = !DILocalVariable(name: "err", arg: 2, scope: !57, file: !1, line: 38, type: !4)
!63 = !DILocation(line: 38, column: 49, scope: !57)
!64 = !DILocalVariable(name: "msg", arg: 3, scope: !57, file: !1, line: 38, type: !46)
!65 = !DILocation(line: 38, column: 66, scope: !57)
!66 = !DILocalVariable(name: "str", arg: 4, scope: !57, file: !1, line: 38, type: !46)
!67 = !DILocation(line: 38, column: 83, scope: !57)
!68 = !DILocation(line: 39, column: 11, scope: !57)
!69 = !DILocation(line: 39, column: 23, scope: !57)
!70 = !DILocation(line: 39, column: 34, scope: !57)
!71 = !DILocation(line: 39, column: 45, scope: !57)
!72 = !DILocation(line: 40, column: 1, scope: !57)
!73 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 43, type: !74, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !35, !4}
!76 = !DILocalVariable(name: "ctxt", arg: 1, scope: !73, file: !1, line: 43, type: !35)
!77 = !DILocation(line: 43, column: 37, scope: !73)
!78 = !DILocalVariable(name: "maxLength", arg: 2, scope: !73, file: !1, line: 43, type: !4)
!79 = !DILocation(line: 43, column: 47, scope: !73)
!80 = !DILocalVariable(name: "buf", scope: !73, file: !1, line: 44, type: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!82 = !DILocation(line: 44, column: 11, scope: !73)
!83 = !DILocalVariable(name: "len", scope: !73, file: !1, line: 45, type: !4)
!84 = !DILocation(line: 45, column: 9, scope: !73)
!85 = !DILocalVariable(name: "nbchar", scope: !73, file: !1, line: 46, type: !4)
!86 = !DILocation(line: 46, column: 9, scope: !73)
!87 = !DILocalVariable(name: "state", scope: !73, file: !1, line: 47, type: !12)
!88 = !DILocation(line: 47, column: 25, scope: !73)
!89 = !DILocation(line: 47, column: 33, scope: !73)
!90 = !DILocation(line: 47, column: 39, scope: !73)
!91 = !DILocation(line: 50, column: 5, scope: !73)
!92 = !DILocation(line: 50, column: 12, scope: !73)
!93 = !DILocation(line: 50, column: 18, scope: !73)
!94 = !DILocation(line: 50, column: 26, scope: !73)
!95 = !DILocation(line: 51, column: 13, scope: !96)
!96 = distinct !DILexicalBlock(scope: !97, file: !1, line: 51, column: 13)
!97 = distinct !DILexicalBlock(scope: !73, file: !1, line: 50, column: 49)
!98 = !DILocation(line: 51, column: 17, scope: !96)
!99 = !DILocation(line: 51, column: 13, scope: !97)
!100 = !DILocation(line: 52, column: 19, scope: !101)
!101 = distinct !DILexicalBlock(scope: !96, file: !1, line: 51, column: 26)
!102 = !DILocation(line: 52, column: 17, scope: !101)
!103 = !DILocation(line: 53, column: 17, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !1, line: 53, column: 17)
!105 = !DILocation(line: 53, column: 21, scope: !104)
!106 = !DILocation(line: 53, column: 17, scope: !101)
!107 = !DILocation(line: 54, column: 30, scope: !108)
!108 = distinct !DILexicalBlock(scope: !104, file: !1, line: 53, column: 30)
!109 = !DILocation(line: 54, column: 17, scope: !108)
!110 = !DILocation(line: 55, column: 33, scope: !108)
!111 = !DILocation(line: 55, column: 17, scope: !108)
!112 = !DILocation(line: 55, column: 23, scope: !108)
!113 = !DILocation(line: 55, column: 31, scope: !108)
!114 = !DILocation(line: 56, column: 17, scope: !108)
!115 = !DILocation(line: 58, column: 9, scope: !101)
!116 = !DILocalVariable(name: "new_buf", scope: !117, file: !1, line: 59, type: !81)
!117 = distinct !DILexicalBlock(scope: !96, file: !1, line: 58, column: 16)
!118 = !DILocation(line: 59, column: 19, scope: !117)
!119 = !DILocation(line: 59, column: 37, scope: !117)
!120 = !DILocation(line: 59, column: 42, scope: !117)
!121 = !DILocation(line: 59, column: 48, scope: !117)
!122 = !DILocation(line: 59, column: 46, scope: !117)
!123 = !DILocation(line: 59, column: 55, scope: !117)
!124 = !DILocation(line: 59, column: 29, scope: !117)
!125 = !DILocation(line: 60, column: 17, scope: !126)
!126 = distinct !DILexicalBlock(scope: !117, file: !1, line: 60, column: 17)
!127 = !DILocation(line: 60, column: 25, scope: !126)
!128 = !DILocation(line: 60, column: 17, scope: !117)
!129 = !DILocation(line: 61, column: 25, scope: !130)
!130 = distinct !DILexicalBlock(scope: !126, file: !1, line: 60, column: 34)
!131 = !DILocation(line: 61, column: 17, scope: !130)
!132 = !DILocation(line: 62, column: 30, scope: !130)
!133 = !DILocation(line: 62, column: 17, scope: !130)
!134 = !DILocation(line: 63, column: 33, scope: !130)
!135 = !DILocation(line: 63, column: 17, scope: !130)
!136 = !DILocation(line: 63, column: 23, scope: !130)
!137 = !DILocation(line: 63, column: 31, scope: !130)
!138 = !DILocation(line: 64, column: 17, scope: !130)
!139 = !DILocation(line: 66, column: 19, scope: !117)
!140 = !DILocation(line: 66, column: 17, scope: !117)
!141 = !DILocation(line: 70, column: 17, scope: !97)
!142 = !DILocation(line: 70, column: 21, scope: !97)
!143 = !DILocation(line: 70, column: 27, scope: !97)
!144 = !DILocation(line: 70, column: 33, scope: !97)
!145 = !DILocation(line: 70, column: 40, scope: !97)
!146 = !DILocation(line: 70, column: 45, scope: !97)
!147 = !DILocation(line: 70, column: 9, scope: !97)
!148 = !DILocation(line: 73, column: 9, scope: !97)
!149 = !DILocation(line: 76, column: 9, scope: !97)
!150 = !DILocation(line: 78, column: 16, scope: !97)
!151 = !DILocation(line: 78, column: 13, scope: !97)
!152 = !DILocation(line: 79, column: 9, scope: !97)
!153 = !DILocation(line: 79, column: 13, scope: !97)
!154 = !DILocation(line: 79, column: 18, scope: !97)
!155 = !DILocation(line: 81, column: 13, scope: !156)
!156 = distinct !DILexicalBlock(scope: !97, file: !1, line: 81, column: 13)
!157 = !DILocation(line: 81, column: 19, scope: !156)
!158 = !DILocation(line: 81, column: 17, scope: !156)
!159 = !DILocation(line: 81, column: 13, scope: !97)
!160 = !DILocation(line: 82, column: 31, scope: !161)
!161 = distinct !DILexicalBlock(scope: !156, file: !1, line: 81, column: 30)
!162 = !DILocation(line: 82, column: 13, scope: !161)
!163 = !DILocation(line: 83, column: 21, scope: !161)
!164 = !DILocation(line: 83, column: 13, scope: !161)
!165 = !DILocation(line: 84, column: 13, scope: !161)
!166 = !DILocation(line: 88, column: 9, scope: !97)
!167 = !DILocation(line: 90, column: 1, scope: !73)
!168 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 92, type: !169, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!169 = !DISubroutineType(types: !170)
!170 = !{!4}
!171 = !DILocalVariable(name: "ctxt", scope: !168, file: !1, line: 94, type: !36)
!172 = !DILocation(line: 94, column: 19, scope: !168)
!173 = !DILocalVariable(name: "input", scope: !168, file: !1, line: 95, type: !42)
!174 = !DILocation(line: 95, column: 20, scope: !168)
!175 = !DILocalVariable(name: "maxLength", scope: !168, file: !1, line: 96, type: !4)
!176 = !DILocation(line: 96, column: 9, scope: !168)
!177 = !DILocation(line: 99, column: 10, scope: !168)
!178 = !DILocation(line: 99, column: 16, scope: !168)
!179 = !DILocalVariable(name: "state_val", scope: !168, file: !1, line: 102, type: !4)
!180 = !DILocation(line: 102, column: 9, scope: !168)
!181 = !DILocation(line: 103, column: 24, scope: !168)
!182 = !DILocation(line: 103, column: 5, scope: !168)
!183 = !DILocation(line: 104, column: 17, scope: !168)
!184 = !DILocation(line: 104, column: 27, scope: !168)
!185 = !DILocation(line: 104, column: 5, scope: !168)
!186 = !DILocation(line: 105, column: 41, scope: !168)
!187 = !DILocation(line: 105, column: 10, scope: !168)
!188 = !DILocation(line: 105, column: 18, scope: !168)
!189 = !DILocalVariable(name: "input_cur", scope: !168, file: !1, line: 108, type: !190)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 800, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 100)
!193 = !DILocation(line: 108, column: 10, scope: !168)
!194 = !DILocation(line: 109, column: 24, scope: !168)
!195 = !DILocation(line: 109, column: 5, scope: !168)
!196 = !DILocation(line: 110, column: 17, scope: !168)
!197 = !DILocation(line: 110, column: 11, scope: !168)
!198 = !DILocation(line: 110, column: 15, scope: !168)
!199 = !DILocalVariable(name: "nbchar", scope: !168, file: !1, line: 113, type: !4)
!200 = !DILocation(line: 113, column: 9, scope: !168)
!201 = !DILocation(line: 114, column: 24, scope: !168)
!202 = !DILocation(line: 114, column: 5, scope: !168)
!203 = !DILocation(line: 115, column: 17, scope: !168)
!204 = !DILocation(line: 115, column: 24, scope: !168)
!205 = !DILocation(line: 115, column: 29, scope: !168)
!206 = !DILocation(line: 115, column: 32, scope: !168)
!207 = !DILocation(line: 115, column: 39, scope: !168)
!208 = !DILocation(line: 0, scope: !168)
!209 = !DILocation(line: 115, column: 5, scope: !168)
!210 = !DILocation(line: 118, column: 24, scope: !168)
!211 = !DILocation(line: 118, column: 5, scope: !168)
!212 = !DILocation(line: 119, column: 17, scope: !168)
!213 = !DILocation(line: 119, column: 27, scope: !168)
!214 = !DILocation(line: 119, column: 32, scope: !168)
!215 = !DILocation(line: 119, column: 35, scope: !168)
!216 = !DILocation(line: 119, column: 45, scope: !168)
!217 = !DILocation(line: 119, column: 5, scope: !168)
!218 = !DILocation(line: 122, column: 28, scope: !168)
!219 = !DILocation(line: 122, column: 5, scope: !168)
!220 = !DILocation(line: 124, column: 5, scope: !168)
!221 = distinct !DISubprogram(name: "memcpy", scope: !222, file: !222, line: 12, type: !223, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !26)
!222 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!223 = !DISubroutineType(types: !224)
!224 = !{!11, !11, !225, !227}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !228, line: 46, baseType: !229)
!228 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!229 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!230 = !DILocalVariable(name: "destaddr", arg: 1, scope: !221, file: !222, line: 12, type: !11)
!231 = !DILocation(line: 12, column: 20, scope: !221)
!232 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !221, file: !222, line: 12, type: !225)
!233 = !DILocation(line: 12, column: 42, scope: !221)
!234 = !DILocalVariable(name: "len", arg: 3, scope: !221, file: !222, line: 12, type: !227)
!235 = !DILocation(line: 12, column: 58, scope: !221)
!236 = !DILocalVariable(name: "dest", scope: !221, file: !222, line: 13, type: !81)
!237 = !DILocation(line: 13, column: 9, scope: !221)
!238 = !DILocation(line: 13, column: 16, scope: !221)
!239 = !DILocalVariable(name: "src", scope: !221, file: !222, line: 14, type: !46)
!240 = !DILocation(line: 14, column: 15, scope: !221)
!241 = !DILocation(line: 14, column: 21, scope: !221)
!242 = !DILocation(line: 16, column: 3, scope: !221)
!243 = !DILocation(line: 16, column: 13, scope: !221)
!244 = !DILocation(line: 16, column: 16, scope: !221)
!245 = !DILocation(line: 17, column: 19, scope: !221)
!246 = !DILocation(line: 17, column: 15, scope: !221)
!247 = !DILocation(line: 17, column: 10, scope: !221)
!248 = !DILocation(line: 17, column: 13, scope: !221)
!249 = distinct !{!249, !242, !245, !250}
!250 = !{!"llvm.loop.mustprogress"}
!251 = !DILocation(line: 18, column: 10, scope: !221)
!252 = !DILocation(line: 18, column: 3, scope: !221)

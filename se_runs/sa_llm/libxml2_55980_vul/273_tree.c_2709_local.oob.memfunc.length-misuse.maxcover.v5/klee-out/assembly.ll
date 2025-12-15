; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/273_tree.c_2709_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/273_tree.c_2709_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNode = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8* }

@.str = private unnamed_addr constant [14 x i8] c"building text\00", align 1
@xmlStringText = dso_local global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), align 8, !dbg !0
@__xmlRegisterCallbacks = dso_local global i32 0, align 4, !dbg !26
@xmlRegisterNodeDefaultValue = dso_local global void (i8*)* null, align 8, !dbg !28
@.str.1 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Allocation succeeded\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.6 = private unnamed_addr constant [72 x i8] c"(result != ((void*)0) && \22Allocation succeeded\22) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/273_tree.c_2709_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNode* @xmlNewTextLen(i8* noundef %0, i32 noundef %1) #0 !dbg !45 {
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._xmlNode*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !49, metadata !DIExpression()), !dbg !50
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %6, metadata !53, metadata !DIExpression()), !dbg !54
  %7 = call i8* @xmlMalloc(i64 noundef 72), !dbg !55
  %8 = bitcast i8* %7 to %struct._xmlNode*, !dbg !56
  store %struct._xmlNode* %8, %struct._xmlNode** %6, align 8, !dbg !57
  %9 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !58
  %10 = icmp eq %struct._xmlNode* %9, null, !dbg !60
  br i1 %10, label %11, label %12, !dbg !61

11:                                               ; preds = %2
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)), !dbg !62
  store %struct._xmlNode* null, %struct._xmlNode** %3, align 8, !dbg !64
  br label %41, !dbg !64

12:                                               ; preds = %2
  %13 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !65
  %14 = bitcast %struct._xmlNode* %13 to i8*, !dbg !66
  %15 = call i8* @memset(i8* %14, i32 0, i64 72), !dbg !66
  %16 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !67
  %17 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %16, i32 0, i32 6, !dbg !68
  store i32 3, i32* %17, align 8, !dbg !69
  %18 = load i8*, i8** @xmlStringText, align 8, !dbg !70
  %19 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !71
  %20 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %19, i32 0, i32 7, !dbg !72
  store i8* %18, i8** %20, align 8, !dbg !73
  %21 = load i8*, i8** %4, align 8, !dbg !74
  %22 = icmp ne i8* %21, null, !dbg !76
  br i1 %22, label %23, label %29, !dbg !77

23:                                               ; preds = %12
  %24 = load i8*, i8** %4, align 8, !dbg !78
  %25 = load i32, i32* %5, align 4, !dbg !80
  %26 = call i8* @xmlStrndup(i8* noundef %24, i32 noundef %25), !dbg !81
  %27 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !82
  %28 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %27, i32 0, i32 8, !dbg !83
  store i8* %26, i8** %28, align 8, !dbg !84
  br label %29, !dbg !85

29:                                               ; preds = %23, %12
  %30 = load i32, i32* @__xmlRegisterCallbacks, align 4, !dbg !86
  %31 = icmp ne i32 %30, 0, !dbg !88
  br i1 %31, label %32, label %39, !dbg !89

32:                                               ; preds = %29
  %33 = load void (i8*)*, void (i8*)** @xmlRegisterNodeDefaultValue, align 8, !dbg !90
  %34 = icmp ne void (i8*)* %33, null, !dbg !91
  br i1 %34, label %35, label %39, !dbg !92

35:                                               ; preds = %32
  %36 = load void (i8*)*, void (i8*)** @xmlRegisterNodeDefaultValue, align 8, !dbg !93
  %37 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !94
  %38 = bitcast %struct._xmlNode* %37 to i8*, !dbg !94
  call void %36(i8* noundef %38), !dbg !93
  br label %39, !dbg !93

39:                                               ; preds = %35, %32, %29
  %40 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !95
  store %struct._xmlNode* %40, %struct._xmlNode** %3, align 8, !dbg !96
  br label %41, !dbg !96

41:                                               ; preds = %39, %11
  %42 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !97
  ret %struct._xmlNode* %42, !dbg !97
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !98 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !104, metadata !DIExpression()), !dbg !105
  %3 = load i64, i64* %2, align 8, !dbg !106
  %4 = call noalias i8* @malloc(i64 noundef %3) #8, !dbg !107
  ret i8* %4, !dbg !108
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !109 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !112, metadata !DIExpression()), !dbg !113
  ret void, !dbg !114
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrndup(i8* noundef %0, i32 noundef %1) #0 !dbg !115 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !118, metadata !DIExpression()), !dbg !119
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !120, metadata !DIExpression()), !dbg !121
  %7 = load i8*, i8** %4, align 8, !dbg !122
  %8 = icmp eq i8* %7, null, !dbg !124
  br i1 %8, label %12, label %9, !dbg !125

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4, !dbg !126
  %11 = icmp slt i32 %10, 0, !dbg !127
  br i1 %11, label %12, label %13, !dbg !128

12:                                               ; preds = %9, %2
  store i8* null, i8** %3, align 8, !dbg !129
  br label %32, !dbg !129

13:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata i8** %6, metadata !130, metadata !DIExpression()), !dbg !131
  %14 = load i32, i32* %5, align 4, !dbg !132
  %15 = add nsw i32 %14, 1, !dbg !133
  %16 = sext i32 %15 to i64, !dbg !132
  %17 = call noalias i8* @malloc(i64 noundef %16) #8, !dbg !134
  store i8* %17, i8** %6, align 8, !dbg !131
  %18 = load i8*, i8** %6, align 8, !dbg !135
  %19 = icmp eq i8* %18, null, !dbg !137
  br i1 %19, label %20, label %21, !dbg !138

20:                                               ; preds = %13
  store i8* null, i8** %3, align 8, !dbg !139
  br label %32, !dbg !139

21:                                               ; preds = %13
  %22 = load i8*, i8** %6, align 8, !dbg !140
  %23 = load i8*, i8** %4, align 8, !dbg !141
  %24 = load i32, i32* %5, align 4, !dbg !142
  %25 = sext i32 %24 to i64, !dbg !142
  %26 = call i8* @memcpy(i8* %22, i8* %23, i64 %25), !dbg !143
  %27 = load i8*, i8** %6, align 8, !dbg !144
  %28 = load i32, i32* %5, align 4, !dbg !145
  %29 = sext i32 %28 to i64, !dbg !144
  %30 = getelementptr inbounds i8, i8* %27, i64 %29, !dbg !144
  store i8 0, i8* %30, align 1, !dbg !146
  %31 = load i8*, i8** %6, align 8, !dbg !147
  store i8* %31, i8** %3, align 8, !dbg !148
  br label %32, !dbg !148

32:                                               ; preds = %21, %20, %12
  %33 = load i8*, i8** %3, align 8, !dbg !149
  ret i8* %33, !dbg !149
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !150 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlNode*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !153, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.declare(metadata i32* %3, metadata !158, metadata !DIExpression()), !dbg !159
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !160
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 256, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)), !dbg !161
  %6 = bitcast i32* %3 to i8*, !dbg !162
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !163
  %7 = load i32, i32* %3, align 4, !dbg !164
  %8 = icmp sge i32 %7, 0, !dbg !165
  %9 = zext i1 %8 to i32, !dbg !165
  %10 = sext i32 %9 to i64, !dbg !164
  call void @klee_assume(i64 noundef %10), !dbg !166
  %11 = load i32, i32* %3, align 4, !dbg !167
  %12 = icmp sle i32 %11, 256, !dbg !168
  %13 = zext i1 %12 to i32, !dbg !168
  %14 = sext i32 %13 to i64, !dbg !167
  call void @klee_assume(i64 noundef %14), !dbg !169
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !170, metadata !DIExpression()), !dbg !171
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !172
  %16 = load i32, i32* %3, align 4, !dbg !173
  %17 = call %struct._xmlNode* @xmlNewTextLen(i8* noundef %15, i32 noundef %16), !dbg !174
  store %struct._xmlNode* %17, %struct._xmlNode** %4, align 8, !dbg !171
  %18 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !175
  %19 = icmp ne %struct._xmlNode* %18, null, !dbg !177
  br i1 %19, label %20, label %35, !dbg !178

20:                                               ; preds = %0
  %21 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !179
  %22 = icmp ne %struct._xmlNode* %21, null, !dbg !179
  br i1 %22, label %23, label %26, !dbg !179

23:                                               ; preds = %20
  br i1 true, label %24, label %26, !dbg !179

24:                                               ; preds = %23
  br i1 true, label %25, label %26, !dbg !179

25:                                               ; preds = %24
  br label %28, !dbg !179

26:                                               ; preds = %24, %23, %20
  %27 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.7, i64 0, i64 0), i32 noundef 113, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !179
  br label %28, !dbg !179

28:                                               ; preds = %26, %25
  %29 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.7, i64 0, i64 0), i32 noundef 116, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !181
  %30 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !182
  %31 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %30, i32 0, i32 8, !dbg !183
  %32 = load i8*, i8** %31, align 8, !dbg !183
  call void @free(i8* noundef %32) #8, !dbg !184
  %33 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !185
  %34 = bitcast %struct._xmlNode* %33 to i8*, !dbg !185
  call void @free(i8* noundef %34) #8, !dbg !186
  br label %35, !dbg !187

35:                                               ; preds = %28, %0
  ret i32 0, !dbg !188
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !189 {
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
  call void @llvm.dbg.declare(metadata i8** %8, metadata !204, metadata !DIExpression()), !dbg !205
  %10 = load i8*, i8** %5, align 8, !dbg !206
  store i8* %10, i8** %8, align 8, !dbg !205
  br label %11, !dbg !207

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !208
  %13 = add i64 %12, -1, !dbg !208
  store i64 %13, i64* %6, align 8, !dbg !208
  %14 = icmp ugt i64 %12, 0, !dbg !209
  br i1 %14, label %15, label %21, !dbg !207

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !210
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !210
  store i8* %17, i8** %8, align 8, !dbg !210
  %18 = load i8, i8* %16, align 1, !dbg !211
  %19 = load i8*, i8** %7, align 8, !dbg !212
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !212
  store i8* %20, i8** %7, align 8, !dbg !212
  store i8 %18, i8* %19, align 1, !dbg !213
  br label %11, !dbg !207, !llvm.loop !214

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !216
  ret i8* %22, !dbg !217
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !218 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !222, metadata !DIExpression()), !dbg !223
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !224, metadata !DIExpression()), !dbg !225
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !226, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.declare(metadata i8** %7, metadata !228, metadata !DIExpression()), !dbg !229
  %8 = load i8*, i8** %4, align 8, !dbg !230
  store i8* %8, i8** %7, align 8, !dbg !229
  br label %9, !dbg !231

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !232
  %11 = add i64 %10, -1, !dbg !232
  store i64 %11, i64* %6, align 8, !dbg !232
  %12 = icmp ugt i64 %10, 0, !dbg !233
  br i1 %12, label %13, label %18, !dbg !231

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !234
  %15 = trunc i32 %14 to i8, !dbg !234
  %16 = load i8*, i8** %7, align 8, !dbg !235
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !235
  store i8* %17, i8** %7, align 8, !dbg !235
  store i8 %15, i8* %16, align 1, !dbg !236
  br label %9, !dbg !231, !llvm.loop !237

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !238
  ret i8* %19, !dbg !239
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44, !44, !44}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xmlStringText", scope: !2, file: !3, line: 85, type: !20, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !25, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/273_tree.c_2709_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "0f9e410b3b38063a2060605e3beaf6e7")
!4 = !{!5, !11, !24}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !3, line: 25, baseType: !6)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !3, line: 10, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !3, line: 11, size: 576, elements: !9)
!9 = !{!10, !12, !13, !14, !15, !16, !17, !19, !23}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !8, file: !3, line: 12, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !8, file: !3, line: 13, baseType: !11, size: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !8, file: !3, line: 14, baseType: !11, size: 64, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !8, file: !3, line: 15, baseType: !11, size: 64, offset: 192)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !8, file: !3, line: 16, baseType: !11, size: 64, offset: 256)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !8, file: !3, line: 17, baseType: !11, size: 64, offset: 320)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !8, file: !3, line: 18, baseType: !18, size: 32, offset: 384)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !8, file: !3, line: 19, baseType: !20, size: 64, offset: 448)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !8, file: !3, line: 20, baseType: !24, size: 64, offset: 512)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!25 = !{!26, !28, !0}
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "__xmlRegisterCallbacks", scope: !2, file: !3, line: 83, type: !18, isLocal: false, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "xmlRegisterNodeDefaultValue", scope: !2, file: !3, line: 84, type: !30, isLocal: false, isDefinition: true)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !11}
!33 = distinct !DICompileUnit(language: DW_LANG_C99, file: !34, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!34 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!35 = distinct !DICompileUnit(language: DW_LANG_C99, file: !36, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!36 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!37 = !{i32 7, !"Dwarf Version", i32 5}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = !{i32 1, !"wchar_size", i32 4}
!40 = !{i32 7, !"PIC Level", i32 2}
!41 = !{i32 7, !"PIE Level", i32 2}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"Ubuntu clang version 14.0.6"}
!45 = distinct !DISubprogram(name: "xmlNewTextLen", scope: !3, file: !3, line: 39, type: !46, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !48)
!46 = !DISubroutineType(types: !47)
!47 = !{!5, !20, !18}
!48 = !{}
!49 = !DILocalVariable(name: "content", arg: 1, scope: !45, file: !3, line: 39, type: !20)
!50 = !DILocation(line: 39, column: 38, scope: !45)
!51 = !DILocalVariable(name: "len", arg: 2, scope: !45, file: !3, line: 39, type: !18)
!52 = !DILocation(line: 39, column: 51, scope: !45)
!53 = !DILocalVariable(name: "cur", scope: !45, file: !3, line: 40, type: !5)
!54 = !DILocation(line: 40, column: 16, scope: !45)
!55 = !DILocation(line: 45, column: 24, scope: !45)
!56 = !DILocation(line: 45, column: 11, scope: !45)
!57 = !DILocation(line: 45, column: 9, scope: !45)
!58 = !DILocation(line: 46, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !45, file: !3, line: 46, column: 9)
!60 = !DILocation(line: 46, column: 13, scope: !59)
!61 = !DILocation(line: 46, column: 9, scope: !45)
!62 = !DILocation(line: 47, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !3, line: 46, column: 22)
!64 = !DILocation(line: 48, column: 9, scope: !63)
!65 = !DILocation(line: 50, column: 12, scope: !45)
!66 = !DILocation(line: 50, column: 5, scope: !45)
!67 = !DILocation(line: 51, column: 5, scope: !45)
!68 = !DILocation(line: 51, column: 10, scope: !45)
!69 = !DILocation(line: 51, column: 15, scope: !45)
!70 = !DILocation(line: 53, column: 17, scope: !45)
!71 = !DILocation(line: 53, column: 5, scope: !45)
!72 = !DILocation(line: 53, column: 10, scope: !45)
!73 = !DILocation(line: 53, column: 15, scope: !45)
!74 = !DILocation(line: 54, column: 9, scope: !75)
!75 = distinct !DILexicalBlock(scope: !45, file: !3, line: 54, column: 9)
!76 = !DILocation(line: 54, column: 17, scope: !75)
!77 = !DILocation(line: 54, column: 9, scope: !45)
!78 = !DILocation(line: 55, column: 35, scope: !79)
!79 = distinct !DILexicalBlock(scope: !75, file: !3, line: 54, column: 26)
!80 = !DILocation(line: 55, column: 44, scope: !79)
!81 = !DILocation(line: 55, column: 24, scope: !79)
!82 = !DILocation(line: 55, column: 9, scope: !79)
!83 = !DILocation(line: 55, column: 14, scope: !79)
!84 = !DILocation(line: 55, column: 22, scope: !79)
!85 = !DILocation(line: 56, column: 5, scope: !79)
!86 = !DILocation(line: 58, column: 10, scope: !87)
!87 = distinct !DILexicalBlock(scope: !45, file: !3, line: 58, column: 9)
!88 = !DILocation(line: 58, column: 9, scope: !87)
!89 = !DILocation(line: 58, column: 34, scope: !87)
!90 = !DILocation(line: 58, column: 38, scope: !87)
!91 = !DILocation(line: 58, column: 37, scope: !87)
!92 = !DILocation(line: 58, column: 9, scope: !45)
!93 = !DILocation(line: 59, column: 9, scope: !87)
!94 = !DILocation(line: 59, column: 37, scope: !87)
!95 = !DILocation(line: 61, column: 12, scope: !45)
!96 = !DILocation(line: 61, column: 5, scope: !45)
!97 = !DILocation(line: 62, column: 1, scope: !45)
!98 = distinct !DISubprogram(name: "xmlMalloc", scope: !3, file: !3, line: 65, type: !99, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !48)
!99 = !DISubroutineType(types: !100)
!100 = !{!11, !101}
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !102, line: 46, baseType: !103)
!102 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!103 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!104 = !DILocalVariable(name: "size", arg: 1, scope: !98, file: !3, line: 65, type: !101)
!105 = !DILocation(line: 65, column: 24, scope: !98)
!106 = !DILocation(line: 66, column: 19, scope: !98)
!107 = !DILocation(line: 66, column: 12, scope: !98)
!108 = !DILocation(line: 66, column: 5, scope: !98)
!109 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !3, file: !3, line: 78, type: !110, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !48)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !20}
!112 = !DILocalVariable(name: "extra", arg: 1, scope: !109, file: !3, line: 78, type: !20)
!113 = !DILocation(line: 78, column: 35, scope: !109)
!114 = !DILocation(line: 80, column: 1, scope: !109)
!115 = distinct !DISubprogram(name: "xmlStrndup", scope: !3, file: !3, line: 69, type: !116, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !48)
!116 = !DISubroutineType(types: !117)
!117 = !{!24, !20, !18}
!118 = !DILocalVariable(name: "cur", arg: 1, scope: !115, file: !3, line: 69, type: !20)
!119 = !DILocation(line: 69, column: 30, scope: !115)
!120 = !DILocalVariable(name: "len", arg: 2, scope: !115, file: !3, line: 69, type: !18)
!121 = !DILocation(line: 69, column: 39, scope: !115)
!122 = !DILocation(line: 70, column: 9, scope: !123)
!123 = distinct !DILexicalBlock(scope: !115, file: !3, line: 70, column: 9)
!124 = !DILocation(line: 70, column: 13, scope: !123)
!125 = !DILocation(line: 70, column: 21, scope: !123)
!126 = !DILocation(line: 70, column: 24, scope: !123)
!127 = !DILocation(line: 70, column: 28, scope: !123)
!128 = !DILocation(line: 70, column: 9, scope: !115)
!129 = !DILocation(line: 70, column: 33, scope: !123)
!130 = !DILocalVariable(name: "dup", scope: !115, file: !3, line: 71, type: !24)
!131 = !DILocation(line: 71, column: 11, scope: !115)
!132 = !DILocation(line: 71, column: 32, scope: !115)
!133 = !DILocation(line: 71, column: 36, scope: !115)
!134 = !DILocation(line: 71, column: 25, scope: !115)
!135 = !DILocation(line: 72, column: 9, scope: !136)
!136 = distinct !DILexicalBlock(scope: !115, file: !3, line: 72, column: 9)
!137 = !DILocation(line: 72, column: 13, scope: !136)
!138 = !DILocation(line: 72, column: 9, scope: !115)
!139 = !DILocation(line: 72, column: 22, scope: !136)
!140 = !DILocation(line: 73, column: 12, scope: !115)
!141 = !DILocation(line: 73, column: 17, scope: !115)
!142 = !DILocation(line: 73, column: 22, scope: !115)
!143 = !DILocation(line: 73, column: 5, scope: !115)
!144 = !DILocation(line: 74, column: 5, scope: !115)
!145 = !DILocation(line: 74, column: 9, scope: !115)
!146 = !DILocation(line: 74, column: 14, scope: !115)
!147 = !DILocation(line: 75, column: 12, scope: !115)
!148 = !DILocation(line: 75, column: 5, scope: !115)
!149 = !DILocation(line: 76, column: 1, scope: !115)
!150 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 87, type: !151, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !48)
!151 = !DISubroutineType(types: !152)
!152 = !{!18}
!153 = !DILocalVariable(name: "content", scope: !150, file: !3, line: 89, type: !154)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 256)
!157 = !DILocation(line: 89, column: 10, scope: !150)
!158 = !DILocalVariable(name: "len", scope: !150, file: !3, line: 90, type: !18)
!159 = !DILocation(line: 90, column: 9, scope: !150)
!160 = !DILocation(line: 92, column: 24, scope: !150)
!161 = !DILocation(line: 92, column: 5, scope: !150)
!162 = !DILocation(line: 93, column: 24, scope: !150)
!163 = !DILocation(line: 93, column: 5, scope: !150)
!164 = !DILocation(line: 96, column: 17, scope: !150)
!165 = !DILocation(line: 96, column: 21, scope: !150)
!166 = !DILocation(line: 96, column: 5, scope: !150)
!167 = !DILocation(line: 97, column: 17, scope: !150)
!168 = !DILocation(line: 97, column: 21, scope: !150)
!169 = !DILocation(line: 97, column: 5, scope: !150)
!170 = !DILocalVariable(name: "result", scope: !150, file: !3, line: 100, type: !5)
!171 = !DILocation(line: 100, column: 16, scope: !150)
!172 = !DILocation(line: 100, column: 39, scope: !150)
!173 = !DILocation(line: 100, column: 48, scope: !150)
!174 = !DILocation(line: 100, column: 25, scope: !150)
!175 = !DILocation(line: 110, column: 9, scope: !176)
!176 = distinct !DILexicalBlock(scope: !150, file: !3, line: 110, column: 9)
!177 = !DILocation(line: 110, column: 16, scope: !176)
!178 = !DILocation(line: 110, column: 9, scope: !150)
!179 = !DILocation(line: 113, column: 9, scope: !180)
!180 = distinct !DILexicalBlock(scope: !176, file: !3, line: 110, column: 25)
!181 = !DILocation(line: 116, column: 9, scope: !180)
!182 = !DILocation(line: 119, column: 14, scope: !180)
!183 = !DILocation(line: 119, column: 22, scope: !180)
!184 = !DILocation(line: 119, column: 9, scope: !180)
!185 = !DILocation(line: 120, column: 14, scope: !180)
!186 = !DILocation(line: 120, column: 9, scope: !180)
!187 = !DILocation(line: 121, column: 5, scope: !180)
!188 = !DILocation(line: 123, column: 5, scope: !150)
!189 = distinct !DISubprogram(name: "memcpy", scope: !190, file: !190, line: 12, type: !191, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !48)
!190 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!191 = !DISubroutineType(types: !192)
!192 = !{!11, !11, !193, !101}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!195 = !DILocalVariable(name: "destaddr", arg: 1, scope: !189, file: !190, line: 12, type: !11)
!196 = !DILocation(line: 12, column: 20, scope: !189)
!197 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !189, file: !190, line: 12, type: !193)
!198 = !DILocation(line: 12, column: 42, scope: !189)
!199 = !DILocalVariable(name: "len", arg: 3, scope: !189, file: !190, line: 12, type: !101)
!200 = !DILocation(line: 12, column: 58, scope: !189)
!201 = !DILocalVariable(name: "dest", scope: !189, file: !190, line: 13, type: !24)
!202 = !DILocation(line: 13, column: 9, scope: !189)
!203 = !DILocation(line: 13, column: 16, scope: !189)
!204 = !DILocalVariable(name: "src", scope: !189, file: !190, line: 14, type: !20)
!205 = !DILocation(line: 14, column: 15, scope: !189)
!206 = !DILocation(line: 14, column: 21, scope: !189)
!207 = !DILocation(line: 16, column: 3, scope: !189)
!208 = !DILocation(line: 16, column: 13, scope: !189)
!209 = !DILocation(line: 16, column: 16, scope: !189)
!210 = !DILocation(line: 17, column: 19, scope: !189)
!211 = !DILocation(line: 17, column: 15, scope: !189)
!212 = !DILocation(line: 17, column: 10, scope: !189)
!213 = !DILocation(line: 17, column: 13, scope: !189)
!214 = distinct !{!214, !207, !210, !215}
!215 = !{!"llvm.loop.mustprogress"}
!216 = !DILocation(line: 18, column: 10, scope: !189)
!217 = !DILocation(line: 18, column: 3, scope: !189)
!218 = distinct !DISubprogram(name: "memset", scope: !219, file: !219, line: 12, type: !220, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !48)
!219 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!220 = !DISubroutineType(types: !221)
!221 = !{!11, !11, !18, !101}
!222 = !DILocalVariable(name: "dst", arg: 1, scope: !218, file: !219, line: 12, type: !11)
!223 = !DILocation(line: 12, column: 20, scope: !218)
!224 = !DILocalVariable(name: "s", arg: 2, scope: !218, file: !219, line: 12, type: !18)
!225 = !DILocation(line: 12, column: 29, scope: !218)
!226 = !DILocalVariable(name: "count", arg: 3, scope: !218, file: !219, line: 12, type: !101)
!227 = !DILocation(line: 12, column: 39, scope: !218)
!228 = !DILocalVariable(name: "a", scope: !218, file: !219, line: 13, type: !24)
!229 = !DILocation(line: 13, column: 9, scope: !218)
!230 = !DILocation(line: 13, column: 13, scope: !218)
!231 = !DILocation(line: 14, column: 3, scope: !218)
!232 = !DILocation(line: 14, column: 15, scope: !218)
!233 = !DILocation(line: 14, column: 18, scope: !218)
!234 = !DILocation(line: 15, column: 12, scope: !218)
!235 = !DILocation(line: 15, column: 7, scope: !218)
!236 = !DILocation(line: 15, column: 10, scope: !218)
!237 = distinct !{!237, !231, !234, !215}
!238 = !DILocation(line: 16, column: 10, scope: !218)
!239 = !DILocation(line: 16, column: 3, scope: !218)

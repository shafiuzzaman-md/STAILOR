; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/292_tree.c_761_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/292_tree.c_761_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNs = type { i8*, i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [17 x i8] c"xmlMalloc_memory\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"building namespace\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_55980_vul/292_tree.c_761_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [71 x i8] c"xmlNsPtr target_function(const unsigned char *, const unsigned char *)\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"href\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !34 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i8** %3, metadata !43, metadata !DIExpression()), !dbg !44
  %4 = load i64, i64* %2, align 8, !dbg !45
  %5 = call noalias i8* @malloc(i64 noundef %4) #9, !dbg !46
  store i8* %5, i8** %3, align 8, !dbg !44
  %6 = load i8*, i8** %3, align 8, !dbg !47
  %7 = icmp ne i8* %6, null, !dbg !47
  br i1 %7, label %8, label %11, !dbg !49

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !50
  %10 = load i64, i64* %2, align 8, !dbg !52
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef %10, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !53
  br label %11, !dbg !54

11:                                               ; preds = %8, %1
  %12 = load i8*, i8** %3, align 8, !dbg !55
  ret i8* %12, !dbg !56
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !57 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !60, metadata !DIExpression()), !dbg !61
  %6 = load i8*, i8** %3, align 8, !dbg !62
  %7 = icmp ne i8* %6, null, !dbg !62
  br i1 %7, label %9, label %8, !dbg !64

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !65
  br label %24, !dbg !65

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !66, metadata !DIExpression()), !dbg !67
  %10 = load i8*, i8** %3, align 8, !dbg !68
  %11 = call i64 @strlen(i8* noundef %10) #10, !dbg !69
  %12 = add i64 %11, 1, !dbg !70
  store i64 %12, i64* %4, align 8, !dbg !67
  call void @llvm.dbg.declare(metadata i8** %5, metadata !71, metadata !DIExpression()), !dbg !72
  %13 = load i64, i64* %4, align 8, !dbg !73
  %14 = call noalias i8* @malloc(i64 noundef %13) #9, !dbg !74
  store i8* %14, i8** %5, align 8, !dbg !72
  %15 = load i8*, i8** %5, align 8, !dbg !75
  %16 = icmp ne i8* %15, null, !dbg !75
  br i1 %16, label %17, label %22, !dbg !77

17:                                               ; preds = %9
  %18 = load i8*, i8** %5, align 8, !dbg !78
  %19 = load i8*, i8** %3, align 8, !dbg !80
  %20 = load i64, i64* %4, align 8, !dbg !81
  %21 = call i8* @memcpy(i8* %18, i8* %19, i64 %20), !dbg !82
  br label %22, !dbg !83

22:                                               ; preds = %17, %9
  %23 = load i8*, i8** %5, align 8, !dbg !84
  store i8* %23, i8** %2, align 8, !dbg !85
  br label %24, !dbg !85

24:                                               ; preds = %22, %8
  %25 = load i8*, i8** %2, align 8, !dbg !86
  ret i8* %25, !dbg !86
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !87 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !90, metadata !DIExpression()), !dbg !91
  ret void, !dbg !92
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNs* @target_function(i8* noundef %0, i8* noundef %1) #0 !dbg !93 {
  %3 = alloca %struct._xmlNs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._xmlNs*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !96, metadata !DIExpression()), !dbg !97
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !98, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %6, metadata !100, metadata !DIExpression()), !dbg !101
  %7 = call i8* @xmlMalloc(i64 noundef 40), !dbg !102
  %8 = bitcast i8* %7 to %struct._xmlNs*, !dbg !103
  store %struct._xmlNs* %8, %struct._xmlNs** %6, align 8, !dbg !104
  %9 = load %struct._xmlNs*, %struct._xmlNs** %6, align 8, !dbg !105
  %10 = icmp eq %struct._xmlNs* %9, null, !dbg !107
  br i1 %10, label %11, label %12, !dbg !108

11:                                               ; preds = %2
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)), !dbg !109
  store %struct._xmlNs* null, %struct._xmlNs** %3, align 8, !dbg !111
  br label %36, !dbg !111

12:                                               ; preds = %2
  %13 = load %struct._xmlNs*, %struct._xmlNs** %6, align 8, !dbg !112
  %14 = bitcast %struct._xmlNs* %13 to i8*, !dbg !113
  %15 = call i8* @memset(i8* %14, i32 0, i64 40), !dbg !113
  %16 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.3, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !114
  %17 = load %struct._xmlNs*, %struct._xmlNs** %6, align 8, !dbg !115
  %18 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %17, i32 0, i32 1, !dbg !116
  store i32 1, i32* %18, align 8, !dbg !117
  %19 = load i8*, i8** %4, align 8, !dbg !118
  %20 = icmp ne i8* %19, null, !dbg !120
  br i1 %20, label %21, label %26, !dbg !121

21:                                               ; preds = %12
  %22 = load i8*, i8** %4, align 8, !dbg !122
  %23 = call i8* @xmlStrdup(i8* noundef %22), !dbg !123
  %24 = load %struct._xmlNs*, %struct._xmlNs** %6, align 8, !dbg !124
  %25 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %24, i32 0, i32 2, !dbg !125
  store i8* %23, i8** %25, align 8, !dbg !126
  br label %26, !dbg !124

26:                                               ; preds = %21, %12
  %27 = load i8*, i8** %5, align 8, !dbg !127
  %28 = icmp ne i8* %27, null, !dbg !129
  br i1 %28, label %29, label %34, !dbg !130

29:                                               ; preds = %26
  %30 = load i8*, i8** %5, align 8, !dbg !131
  %31 = call i8* @xmlStrdup(i8* noundef %30), !dbg !132
  %32 = load %struct._xmlNs*, %struct._xmlNs** %6, align 8, !dbg !133
  %33 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %32, i32 0, i32 3, !dbg !134
  store i8* %31, i8** %33, align 8, !dbg !135
  br label %34, !dbg !133

34:                                               ; preds = %29, %26
  %35 = load %struct._xmlNs*, %struct._xmlNs** %6, align 8, !dbg !136
  store %struct._xmlNs* %35, %struct._xmlNs** %3, align 8, !dbg !137
  br label %36, !dbg !137

36:                                               ; preds = %34, %11
  %37 = load %struct._xmlNs*, %struct._xmlNs** %3, align 8, !dbg !138
  ret %struct._xmlNs* %37, !dbg !138
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !139 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca %struct._xmlNs*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !142, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !147, metadata !DIExpression()), !dbg !148
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !149
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !dbg !150
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !151
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 256, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)), !dbg !152
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !153
  store i8 0, i8* %7, align 1, !dbg !154
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !155
  store i8 0, i8* %8, align 1, !dbg !156
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %4, metadata !157, metadata !DIExpression()), !dbg !158
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !159
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !160
  %11 = call %struct._xmlNs* @target_function(i8* noundef %9, i8* noundef %10), !dbg !161
  store %struct._xmlNs* %11, %struct._xmlNs** %4, align 8, !dbg !158
  %12 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !162
  %13 = icmp ne %struct._xmlNs* %12, null, !dbg !162
  br i1 %13, label %14, label %35, !dbg !164

14:                                               ; preds = %0
  %15 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !165
  %16 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %15, i32 0, i32 2, !dbg !168
  %17 = load i8*, i8** %16, align 8, !dbg !168
  %18 = icmp ne i8* %17, null, !dbg !165
  br i1 %18, label %19, label %23, !dbg !169

19:                                               ; preds = %14
  %20 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !170
  %21 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %20, i32 0, i32 2, !dbg !171
  %22 = load i8*, i8** %21, align 8, !dbg !171
  call void @free(i8* noundef %22) #9, !dbg !172
  br label %23, !dbg !172

23:                                               ; preds = %19, %14
  %24 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !173
  %25 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %24, i32 0, i32 3, !dbg !175
  %26 = load i8*, i8** %25, align 8, !dbg !175
  %27 = icmp ne i8* %26, null, !dbg !173
  br i1 %27, label %28, label %32, !dbg !176

28:                                               ; preds = %23
  %29 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !177
  %30 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %29, i32 0, i32 3, !dbg !178
  %31 = load i8*, i8** %30, align 8, !dbg !178
  call void @free(i8* noundef %31) #9, !dbg !179
  br label %32, !dbg !179

32:                                               ; preds = %28, %23
  %33 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !180
  %34 = bitcast %struct._xmlNs* %33 to i8*, !dbg !180
  call void @free(i8* noundef %34) #9, !dbg !181
  br label %35, !dbg !182

35:                                               ; preds = %32, %0
  ret i32 0, !dbg !183
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !184 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !190, metadata !DIExpression()), !dbg !191
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !192, metadata !DIExpression()), !dbg !193
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !194, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.declare(metadata i8** %7, metadata !196, metadata !DIExpression()), !dbg !198
  %9 = load i8*, i8** %4, align 8, !dbg !199
  store i8* %9, i8** %7, align 8, !dbg !198
  call void @llvm.dbg.declare(metadata i8** %8, metadata !200, metadata !DIExpression()), !dbg !201
  %10 = load i8*, i8** %5, align 8, !dbg !202
  store i8* %10, i8** %8, align 8, !dbg !201
  br label %11, !dbg !203

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !204
  %13 = add i64 %12, -1, !dbg !204
  store i64 %13, i64* %6, align 8, !dbg !204
  %14 = icmp ugt i64 %12, 0, !dbg !205
  br i1 %14, label %15, label %21, !dbg !203

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !206
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !206
  store i8* %17, i8** %8, align 8, !dbg !206
  %18 = load i8, i8* %16, align 1, !dbg !207
  %19 = load i8*, i8** %7, align 8, !dbg !208
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !208
  store i8* %20, i8** %7, align 8, !dbg !208
  store i8 %18, i8* %19, align 1, !dbg !209
  br label %11, !dbg !203, !llvm.loop !210

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !212
  ret i8* %22, !dbg !213
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !214 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !218, metadata !DIExpression()), !dbg !219
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !220, metadata !DIExpression()), !dbg !221
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !222, metadata !DIExpression()), !dbg !223
  call void @llvm.dbg.declare(metadata i8** %7, metadata !224, metadata !DIExpression()), !dbg !225
  %8 = load i8*, i8** %4, align 8, !dbg !226
  store i8* %8, i8** %7, align 8, !dbg !225
  br label %9, !dbg !227

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !228
  %11 = add i64 %10, -1, !dbg !228
  store i64 %11, i64* %6, align 8, !dbg !228
  %12 = icmp ugt i64 %10, 0, !dbg !229
  br i1 %12, label %13, label %18, !dbg !227

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !230
  %15 = trunc i32 %14 to i8, !dbg !230
  %16 = load i8*, i8** %7, align 8, !dbg !231
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !231
  store i8* %17, i8** %7, align 8, !dbg !231
  store i8 %15, i8* %16, align 1, !dbg !232
  br label %9, !dbg !227, !llvm.loop !233

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !234
  ret i8* %19, !dbg !235
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33, !33, !33}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/292_tree.c_761_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "750abbcfeb0311d58494c3c3143c45c3")
!2 = !{!3, !6, !8, !14}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !1, line: 19, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !1, line: 10, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !1, line: 11, size: 320, elements: !12)
!12 = !{!13, !15, !17, !20, !21}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !11, file: !1, line: 12, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !11, file: !1, line: 13, baseType: !16, size: 32, offset: 64)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !11, file: !1, line: 14, baseType: !18, size: 64, offset: 128)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !11, file: !1, line: 15, baseType: !18, size: 64, offset: 192)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !11, file: !1, line: 16, baseType: !14, size: 64, offset: 256)
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!26 = !{i32 7, !"Dwarf Version", i32 5}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{i32 7, !"PIC Level", i32 2}
!30 = !{i32 7, !"PIE Level", i32 2}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"Ubuntu clang version 14.0.6"}
!34 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 22, type: !35, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !40)
!35 = !DISubroutineType(types: !36)
!36 = !{!14, !37}
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !38, line: 46, baseType: !39)
!38 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!39 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!40 = !{}
!41 = !DILocalVariable(name: "size", arg: 1, scope: !34, file: !1, line: 22, type: !37)
!42 = !DILocation(line: 22, column: 24, scope: !34)
!43 = !DILocalVariable(name: "ptr", scope: !34, file: !1, line: 23, type: !14)
!44 = !DILocation(line: 23, column: 11, scope: !34)
!45 = !DILocation(line: 23, column: 24, scope: !34)
!46 = !DILocation(line: 23, column: 17, scope: !34)
!47 = !DILocation(line: 24, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !34, file: !1, line: 24, column: 9)
!49 = !DILocation(line: 24, column: 9, scope: !34)
!50 = !DILocation(line: 25, column: 28, scope: !51)
!51 = distinct !DILexicalBlock(scope: !48, file: !1, line: 24, column: 14)
!52 = !DILocation(line: 25, column: 33, scope: !51)
!53 = !DILocation(line: 25, column: 9, scope: !51)
!54 = !DILocation(line: 26, column: 5, scope: !51)
!55 = !DILocation(line: 27, column: 12, scope: !34)
!56 = !DILocation(line: 27, column: 5, scope: !34)
!57 = distinct !DISubprogram(name: "xmlStrdup", scope: !1, file: !1, line: 31, type: !58, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !40)
!58 = !DISubroutineType(types: !59)
!59 = !{!6, !18}
!60 = !DILocalVariable(name: "str", arg: 1, scope: !57, file: !1, line: 31, type: !18)
!61 = !DILocation(line: 31, column: 47, scope: !57)
!62 = !DILocation(line: 32, column: 10, scope: !63)
!63 = distinct !DILexicalBlock(scope: !57, file: !1, line: 32, column: 9)
!64 = !DILocation(line: 32, column: 9, scope: !57)
!65 = !DILocation(line: 32, column: 15, scope: !63)
!66 = !DILocalVariable(name: "len", scope: !57, file: !1, line: 33, type: !37)
!67 = !DILocation(line: 33, column: 12, scope: !57)
!68 = !DILocation(line: 33, column: 38, scope: !57)
!69 = !DILocation(line: 33, column: 18, scope: !57)
!70 = !DILocation(line: 33, column: 43, scope: !57)
!71 = !DILocalVariable(name: "dup", scope: !57, file: !1, line: 34, type: !6)
!72 = !DILocation(line: 34, column: 20, scope: !57)
!73 = !DILocation(line: 34, column: 49, scope: !57)
!74 = !DILocation(line: 34, column: 42, scope: !57)
!75 = !DILocation(line: 35, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !57, file: !1, line: 35, column: 9)
!77 = !DILocation(line: 35, column: 9, scope: !57)
!78 = !DILocation(line: 36, column: 16, scope: !79)
!79 = distinct !DILexicalBlock(scope: !76, file: !1, line: 35, column: 14)
!80 = !DILocation(line: 36, column: 21, scope: !79)
!81 = !DILocation(line: 36, column: 26, scope: !79)
!82 = !DILocation(line: 36, column: 9, scope: !79)
!83 = !DILocation(line: 37, column: 5, scope: !79)
!84 = !DILocation(line: 38, column: 12, scope: !57)
!85 = !DILocation(line: 38, column: 5, scope: !57)
!86 = !DILocation(line: 39, column: 1, scope: !57)
!87 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !1, file: !1, line: 42, type: !88, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !40)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !3}
!90 = !DILocalVariable(name: "msg", arg: 1, scope: !87, file: !1, line: 42, type: !3)
!91 = !DILocation(line: 42, column: 35, scope: !87)
!92 = !DILocation(line: 44, column: 1, scope: !87)
!93 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 47, type: !94, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !40)
!94 = !DISubroutineType(types: !95)
!95 = !{!8, !18, !18}
!96 = !DILocalVariable(name: "href", arg: 1, scope: !93, file: !1, line: 47, type: !18)
!97 = !DILocation(line: 47, column: 47, scope: !93)
!98 = !DILocalVariable(name: "prefix", arg: 2, scope: !93, file: !1, line: 47, type: !18)
!99 = !DILocation(line: 47, column: 74, scope: !93)
!100 = !DILocalVariable(name: "cur", scope: !93, file: !1, line: 48, type: !8)
!101 = !DILocation(line: 48, column: 14, scope: !93)
!102 = !DILocation(line: 50, column: 22, scope: !93)
!103 = !DILocation(line: 50, column: 11, scope: !93)
!104 = !DILocation(line: 50, column: 9, scope: !93)
!105 = !DILocation(line: 51, column: 9, scope: !106)
!106 = distinct !DILexicalBlock(scope: !93, file: !1, line: 51, column: 9)
!107 = !DILocation(line: 51, column: 13, scope: !106)
!108 = !DILocation(line: 51, column: 9, scope: !93)
!109 = !DILocation(line: 52, column: 9, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !1, line: 51, column: 22)
!111 = !DILocation(line: 53, column: 9, scope: !110)
!112 = !DILocation(line: 57, column: 12, scope: !93)
!113 = !DILocation(line: 57, column: 5, scope: !93)
!114 = !DILocation(line: 63, column: 5, scope: !93)
!115 = !DILocation(line: 65, column: 5, scope: !93)
!116 = !DILocation(line: 65, column: 10, scope: !93)
!117 = !DILocation(line: 65, column: 15, scope: !93)
!118 = !DILocation(line: 67, column: 9, scope: !119)
!119 = distinct !DILexicalBlock(scope: !93, file: !1, line: 67, column: 9)
!120 = !DILocation(line: 67, column: 14, scope: !119)
!121 = !DILocation(line: 67, column: 9, scope: !93)
!122 = !DILocation(line: 68, column: 31, scope: !119)
!123 = !DILocation(line: 68, column: 21, scope: !119)
!124 = !DILocation(line: 68, column: 9, scope: !119)
!125 = !DILocation(line: 68, column: 14, scope: !119)
!126 = !DILocation(line: 68, column: 19, scope: !119)
!127 = !DILocation(line: 69, column: 9, scope: !128)
!128 = distinct !DILexicalBlock(scope: !93, file: !1, line: 69, column: 9)
!129 = !DILocation(line: 69, column: 16, scope: !128)
!130 = !DILocation(line: 69, column: 9, scope: !93)
!131 = !DILocation(line: 70, column: 33, scope: !128)
!132 = !DILocation(line: 70, column: 23, scope: !128)
!133 = !DILocation(line: 70, column: 9, scope: !128)
!134 = !DILocation(line: 70, column: 14, scope: !128)
!135 = !DILocation(line: 70, column: 21, scope: !128)
!136 = !DILocation(line: 72, column: 12, scope: !93)
!137 = !DILocation(line: 72, column: 5, scope: !93)
!138 = !DILocation(line: 73, column: 1, scope: !93)
!139 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 75, type: !140, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !40)
!140 = !DISubroutineType(types: !141)
!141 = !{!16}
!142 = !DILocalVariable(name: "href", scope: !139, file: !1, line: 77, type: !143)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 256)
!146 = !DILocation(line: 77, column: 19, scope: !139)
!147 = !DILocalVariable(name: "prefix", scope: !139, file: !1, line: 78, type: !143)
!148 = !DILocation(line: 78, column: 19, scope: !139)
!149 = !DILocation(line: 80, column: 24, scope: !139)
!150 = !DILocation(line: 80, column: 5, scope: !139)
!151 = !DILocation(line: 81, column: 24, scope: !139)
!152 = !DILocation(line: 81, column: 5, scope: !139)
!153 = !DILocation(line: 84, column: 5, scope: !139)
!154 = !DILocation(line: 84, column: 15, scope: !139)
!155 = !DILocation(line: 85, column: 5, scope: !139)
!156 = !DILocation(line: 85, column: 17, scope: !139)
!157 = !DILocalVariable(name: "result", scope: !139, file: !1, line: 88, type: !8)
!158 = !DILocation(line: 88, column: 14, scope: !139)
!159 = !DILocation(line: 88, column: 39, scope: !139)
!160 = !DILocation(line: 88, column: 45, scope: !139)
!161 = !DILocation(line: 88, column: 23, scope: !139)
!162 = !DILocation(line: 91, column: 9, scope: !163)
!163 = distinct !DILexicalBlock(scope: !139, file: !1, line: 91, column: 9)
!164 = !DILocation(line: 91, column: 9, scope: !139)
!165 = !DILocation(line: 92, column: 13, scope: !166)
!166 = distinct !DILexicalBlock(scope: !167, file: !1, line: 92, column: 13)
!167 = distinct !DILexicalBlock(scope: !163, file: !1, line: 91, column: 17)
!168 = !DILocation(line: 92, column: 21, scope: !166)
!169 = !DILocation(line: 92, column: 13, scope: !167)
!170 = !DILocation(line: 92, column: 39, scope: !166)
!171 = !DILocation(line: 92, column: 47, scope: !166)
!172 = !DILocation(line: 92, column: 27, scope: !166)
!173 = !DILocation(line: 93, column: 13, scope: !174)
!174 = distinct !DILexicalBlock(scope: !167, file: !1, line: 93, column: 13)
!175 = !DILocation(line: 93, column: 21, scope: !174)
!176 = !DILocation(line: 93, column: 13, scope: !167)
!177 = !DILocation(line: 93, column: 41, scope: !174)
!178 = !DILocation(line: 93, column: 49, scope: !174)
!179 = !DILocation(line: 93, column: 29, scope: !174)
!180 = !DILocation(line: 94, column: 14, scope: !167)
!181 = !DILocation(line: 94, column: 9, scope: !167)
!182 = !DILocation(line: 95, column: 5, scope: !167)
!183 = !DILocation(line: 97, column: 5, scope: !139)
!184 = distinct !DISubprogram(name: "memcpy", scope: !185, file: !185, line: 12, type: !186, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !40)
!185 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!186 = !DISubroutineType(types: !187)
!187 = !{!14, !14, !188, !37}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!190 = !DILocalVariable(name: "destaddr", arg: 1, scope: !184, file: !185, line: 12, type: !14)
!191 = !DILocation(line: 12, column: 20, scope: !184)
!192 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !184, file: !185, line: 12, type: !188)
!193 = !DILocation(line: 12, column: 42, scope: !184)
!194 = !DILocalVariable(name: "len", arg: 3, scope: !184, file: !185, line: 12, type: !37)
!195 = !DILocation(line: 12, column: 58, scope: !184)
!196 = !DILocalVariable(name: "dest", scope: !184, file: !185, line: 13, type: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!198 = !DILocation(line: 13, column: 9, scope: !184)
!199 = !DILocation(line: 13, column: 16, scope: !184)
!200 = !DILocalVariable(name: "src", scope: !184, file: !185, line: 14, type: !3)
!201 = !DILocation(line: 14, column: 15, scope: !184)
!202 = !DILocation(line: 14, column: 21, scope: !184)
!203 = !DILocation(line: 16, column: 3, scope: !184)
!204 = !DILocation(line: 16, column: 13, scope: !184)
!205 = !DILocation(line: 16, column: 16, scope: !184)
!206 = !DILocation(line: 17, column: 19, scope: !184)
!207 = !DILocation(line: 17, column: 15, scope: !184)
!208 = !DILocation(line: 17, column: 10, scope: !184)
!209 = !DILocation(line: 17, column: 13, scope: !184)
!210 = distinct !{!210, !203, !206, !211}
!211 = !{!"llvm.loop.mustprogress"}
!212 = !DILocation(line: 18, column: 10, scope: !184)
!213 = !DILocation(line: 18, column: 3, scope: !184)
!214 = distinct !DISubprogram(name: "memset", scope: !215, file: !215, line: 12, type: !216, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !40)
!215 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!216 = !DISubroutineType(types: !217)
!217 = !{!14, !14, !16, !37}
!218 = !DILocalVariable(name: "dst", arg: 1, scope: !214, file: !215, line: 12, type: !14)
!219 = !DILocation(line: 12, column: 20, scope: !214)
!220 = !DILocalVariable(name: "s", arg: 2, scope: !214, file: !215, line: 12, type: !16)
!221 = !DILocation(line: 12, column: 29, scope: !214)
!222 = !DILocalVariable(name: "count", arg: 3, scope: !214, file: !215, line: 12, type: !37)
!223 = !DILocation(line: 12, column: 39, scope: !214)
!224 = !DILocalVariable(name: "a", scope: !214, file: !215, line: 13, type: !197)
!225 = !DILocation(line: 13, column: 9, scope: !214)
!226 = !DILocation(line: 13, column: 13, scope: !214)
!227 = !DILocation(line: 14, column: 3, scope: !214)
!228 = !DILocation(line: 14, column: 15, scope: !214)
!229 = !DILocation(line: 14, column: 18, scope: !214)
!230 = !DILocation(line: 15, column: 12, scope: !214)
!231 = !DILocation(line: 15, column: 7, scope: !214)
!232 = !DILocation(line: 15, column: 10, scope: !214)
!233 = distinct !{!233, !227, !230, !211}
!234 = !DILocation(line: 16, column: 10, scope: !214)
!235 = !DILocation(line: 16, column: 3, scope: !214)

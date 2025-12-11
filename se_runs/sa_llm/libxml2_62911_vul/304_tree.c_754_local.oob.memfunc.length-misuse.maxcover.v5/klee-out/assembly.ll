; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/304_tree.c_754_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/304_tree.c_754_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNs = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [19 x i8] c"building namespace\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"(sizeof(xmlNs) <= __builtin_object_size(cur, 0)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/304_tree.c_754_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlNewNs = private unnamed_addr constant [54 x i8] c"xmlNsPtr xmlNewNs(void *, const char *, const char *)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"href\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !27 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !33, metadata !DIExpression()), !dbg !34
  ret void, !dbg !35
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !36 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !42, metadata !DIExpression()), !dbg !43
  %3 = load i64, i64* %2, align 8, !dbg !44
  %4 = call noalias i8* @malloc(i64 noundef %3) #9, !dbg !45
  ret i8* %4, !dbg !46
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !47 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !50, metadata !DIExpression()), !dbg !51
  %6 = load i8*, i8** %3, align 8, !dbg !52
  %7 = icmp eq i8* %6, null, !dbg !54
  br i1 %7, label %8, label %9, !dbg !55

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !56
  br label %24, !dbg !56

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !57, metadata !DIExpression()), !dbg !58
  %10 = load i8*, i8** %3, align 8, !dbg !59
  %11 = call i64 @strlen(i8* noundef %10) #10, !dbg !60
  %12 = add i64 %11, 1, !dbg !61
  store i64 %12, i64* %4, align 8, !dbg !58
  call void @llvm.dbg.declare(metadata i8** %5, metadata !62, metadata !DIExpression()), !dbg !63
  %13 = load i64, i64* %4, align 8, !dbg !64
  %14 = call noalias i8* @malloc(i64 noundef %13) #9, !dbg !65
  store i8* %14, i8** %5, align 8, !dbg !63
  %15 = load i8*, i8** %5, align 8, !dbg !66
  %16 = icmp ne i8* %15, null, !dbg !66
  br i1 %16, label %17, label %22, !dbg !68

17:                                               ; preds = %9
  %18 = load i8*, i8** %5, align 8, !dbg !69
  %19 = load i8*, i8** %3, align 8, !dbg !70
  %20 = load i64, i64* %4, align 8, !dbg !71
  %21 = call i8* @memcpy(i8* %18, i8* %19, i64 %20), !dbg !72
  br label %22, !dbg !72

22:                                               ; preds = %17, %9
  %23 = load i8*, i8** %5, align 8, !dbg !73
  store i8* %23, i8** %2, align 8, !dbg !74
  br label %24, !dbg !74

24:                                               ; preds = %22, %8
  %25 = load i8*, i8** %2, align 8, !dbg !75
  ret i8* %25, !dbg !75
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNs* @xmlNewNs(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !76 {
  %4 = alloca %struct._xmlNs*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._xmlNs*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !79, metadata !DIExpression()), !dbg !80
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !81, metadata !DIExpression()), !dbg !82
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !83, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %8, metadata !85, metadata !DIExpression()), !dbg !86
  %9 = call i8* @xmlMalloc(i64 noundef 24), !dbg !87
  %10 = bitcast i8* %9 to %struct._xmlNs*, !dbg !88
  store %struct._xmlNs* %10, %struct._xmlNs** %8, align 8, !dbg !89
  %11 = load %struct._xmlNs*, %struct._xmlNs** %8, align 8, !dbg !90
  %12 = icmp eq %struct._xmlNs* %11, null, !dbg !92
  br i1 %12, label %13, label %14, !dbg !93

13:                                               ; preds = %3
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)), !dbg !94
  store %struct._xmlNs* null, %struct._xmlNs** %4, align 8, !dbg !96
  br label %46, !dbg !96

14:                                               ; preds = %3
  %15 = load %struct._xmlNs*, %struct._xmlNs** %8, align 8, !dbg !97
  %16 = bitcast %struct._xmlNs* %15 to i8*, !dbg !97
  %17 = icmp ule i64 24, -1, !dbg !97
  br i1 %17, label %18, label %20, !dbg !97

18:                                               ; preds = %14
  br i1 true, label %19, label %20, !dbg !97

19:                                               ; preds = %18
  br label %22, !dbg !97

20:                                               ; preds = %18, %14
  %21 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.3, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.xmlNewNs, i64 0, i64 0)), !dbg !97
  br label %22, !dbg !97

22:                                               ; preds = %20, %19
  %23 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.3, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.xmlNewNs, i64 0, i64 0)), !dbg !98
  %24 = load %struct._xmlNs*, %struct._xmlNs** %8, align 8, !dbg !99
  %25 = bitcast %struct._xmlNs* %24 to i8*, !dbg !100
  %26 = call i8* @memset(i8* %25, i32 0, i64 24), !dbg !100
  %27 = load %struct._xmlNs*, %struct._xmlNs** %8, align 8, !dbg !101
  %28 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %27, i32 0, i32 0, !dbg !102
  store i32 1, i32* %28, align 8, !dbg !103
  %29 = load i8*, i8** %6, align 8, !dbg !104
  %30 = icmp ne i8* %29, null, !dbg !106
  br i1 %30, label %31, label %36, !dbg !107

31:                                               ; preds = %22
  %32 = load i8*, i8** %6, align 8, !dbg !108
  %33 = call i8* @xmlStrdup(i8* noundef %32), !dbg !109
  %34 = load %struct._xmlNs*, %struct._xmlNs** %8, align 8, !dbg !110
  %35 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %34, i32 0, i32 1, !dbg !111
  store i8* %33, i8** %35, align 8, !dbg !112
  br label %36, !dbg !110

36:                                               ; preds = %31, %22
  %37 = load i8*, i8** %7, align 8, !dbg !113
  %38 = icmp ne i8* %37, null, !dbg !115
  br i1 %38, label %39, label %44, !dbg !116

39:                                               ; preds = %36
  %40 = load i8*, i8** %7, align 8, !dbg !117
  %41 = call i8* @xmlStrdup(i8* noundef %40), !dbg !118
  %42 = load %struct._xmlNs*, %struct._xmlNs** %8, align 8, !dbg !119
  %43 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %42, i32 0, i32 2, !dbg !120
  store i8* %41, i8** %43, align 8, !dbg !121
  br label %44, !dbg !119

44:                                               ; preds = %39, %36
  %45 = load %struct._xmlNs*, %struct._xmlNs** %8, align 8, !dbg !122
  store %struct._xmlNs* %45, %struct._xmlNs** %4, align 8, !dbg !123
  br label %46, !dbg !123

46:                                               ; preds = %44, %13
  %47 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !124
  ret %struct._xmlNs* %47, !dbg !124
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !125 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca %struct._xmlNs*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !128, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !133, metadata !DIExpression()), !dbg !134
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !135
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !136
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !137
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 256, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)), !dbg !138
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !139
  store i8 0, i8* %7, align 1, !dbg !140
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !141
  store i8 0, i8* %8, align 1, !dbg !142
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %4, metadata !143, metadata !DIExpression()), !dbg !144
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !145
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !146
  %11 = call %struct._xmlNs* @xmlNewNs(i8* noundef null, i8* noundef %9, i8* noundef %10), !dbg !147
  store %struct._xmlNs* %11, %struct._xmlNs** %4, align 8, !dbg !144
  %12 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !148
  %13 = icmp ne %struct._xmlNs* %12, null, !dbg !150
  br i1 %13, label %14, label %35, !dbg !151

14:                                               ; preds = %0
  %15 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !152
  %16 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %15, i32 0, i32 1, !dbg !155
  %17 = load i8*, i8** %16, align 8, !dbg !155
  %18 = icmp ne i8* %17, null, !dbg !152
  br i1 %18, label %19, label %23, !dbg !156

19:                                               ; preds = %14
  %20 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !157
  %21 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %20, i32 0, i32 1, !dbg !158
  %22 = load i8*, i8** %21, align 8, !dbg !158
  call void @free(i8* noundef %22) #9, !dbg !159
  br label %23, !dbg !159

23:                                               ; preds = %19, %14
  %24 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !160
  %25 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %24, i32 0, i32 2, !dbg !162
  %26 = load i8*, i8** %25, align 8, !dbg !162
  %27 = icmp ne i8* %26, null, !dbg !160
  br i1 %27, label %28, label %32, !dbg !163

28:                                               ; preds = %23
  %29 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !164
  %30 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %29, i32 0, i32 2, !dbg !165
  %31 = load i8*, i8** %30, align 8, !dbg !165
  call void @free(i8* noundef %31) #9, !dbg !166
  br label %32, !dbg !166

32:                                               ; preds = %28, %23
  %33 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !167
  %34 = bitcast %struct._xmlNs* %33 to i8*, !dbg !167
  call void @free(i8* noundef %34) #9, !dbg !168
  br label %35, !dbg !169

35:                                               ; preds = %32, %0
  ret i32 0, !dbg !170
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #7

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !171 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !177, metadata !DIExpression()), !dbg !178
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !179, metadata !DIExpression()), !dbg !180
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !181, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata i8** %7, metadata !183, metadata !DIExpression()), !dbg !184
  %9 = load i8*, i8** %4, align 8, !dbg !185
  store i8* %9, i8** %7, align 8, !dbg !184
  call void @llvm.dbg.declare(metadata i8** %8, metadata !186, metadata !DIExpression()), !dbg !187
  %10 = load i8*, i8** %5, align 8, !dbg !188
  store i8* %10, i8** %8, align 8, !dbg !187
  br label %11, !dbg !189

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !190
  %13 = add i64 %12, -1, !dbg !190
  store i64 %13, i64* %6, align 8, !dbg !190
  %14 = icmp ugt i64 %12, 0, !dbg !191
  br i1 %14, label %15, label %21, !dbg !189

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !192
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !192
  store i8* %17, i8** %8, align 8, !dbg !192
  %18 = load i8, i8* %16, align 1, !dbg !193
  %19 = load i8*, i8** %7, align 8, !dbg !194
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !194
  store i8* %20, i8** %7, align 8, !dbg !194
  store i8 %18, i8* %19, align 1, !dbg !195
  br label %11, !dbg !189, !llvm.loop !196

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !198
  ret i8* %22, !dbg !199
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !200 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !204, metadata !DIExpression()), !dbg !205
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !206, metadata !DIExpression()), !dbg !207
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !208, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.declare(metadata i8** %7, metadata !210, metadata !DIExpression()), !dbg !211
  %8 = load i8*, i8** %4, align 8, !dbg !212
  store i8* %8, i8** %7, align 8, !dbg !211
  br label %9, !dbg !213

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !214
  %11 = add i64 %10, -1, !dbg !214
  store i64 %11, i64* %6, align 8, !dbg !214
  %12 = icmp ugt i64 %10, 0, !dbg !215
  br i1 %12, label %13, label %18, !dbg !213

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !216
  %15 = trunc i32 %14 to i8, !dbg !216
  %16 = load i8*, i8** %7, align 8, !dbg !217
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !217
  store i8* %17, i8** %7, align 8, !dbg !217
  store i8 %15, i8* %16, align 1, !dbg !218
  br label %9, !dbg !213, !llvm.loop !219

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !220
  ret i8* %19, !dbg !221
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26, !26, !26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/304_tree.c_754_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "3a15d24b3d9d737c75bc3f298d87d26f")
!2 = !{!3, !4, !6}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !1, line: 11, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !1, line: 10, baseType: !9)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !1, line: 13, size: 192, elements: !10)
!10 = !{!11, !13, !14}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !9, file: !1, line: 14, baseType: !12, size: 32)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !9, file: !1, line: 15, baseType: !4, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !9, file: !1, line: 16, baseType: !4, size: 64, offset: 128)
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!19 = !{i32 7, !"Dwarf Version", i32 5}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{i32 7, !"PIC Level", i32 2}
!23 = !{i32 7, !"PIE Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"Ubuntu clang version 14.0.6"}
!27 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !1, file: !1, line: 20, type: !28, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!32 = !{}
!33 = !DILocalVariable(name: "msg", arg: 1, scope: !27, file: !1, line: 20, type: !30)
!34 = !DILocation(line: 20, column: 35, scope: !27)
!35 = !DILocation(line: 22, column: 1, scope: !27)
!36 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 24, type: !37, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!37 = !DISubroutineType(types: !38)
!38 = !{!3, !39}
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !40, line: 46, baseType: !41)
!40 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!41 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!42 = !DILocalVariable(name: "size", arg: 1, scope: !36, file: !1, line: 24, type: !39)
!43 = !DILocation(line: 24, column: 24, scope: !36)
!44 = !DILocation(line: 25, column: 19, scope: !36)
!45 = !DILocation(line: 25, column: 12, scope: !36)
!46 = !DILocation(line: 25, column: 5, scope: !36)
!47 = distinct !DISubprogram(name: "xmlStrdup", scope: !1, file: !1, line: 28, type: !48, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!48 = !DISubroutineType(types: !49)
!49 = !{!4, !30}
!50 = !DILocalVariable(name: "str", arg: 1, scope: !47, file: !1, line: 28, type: !30)
!51 = !DILocation(line: 28, column: 29, scope: !47)
!52 = !DILocation(line: 29, column: 9, scope: !53)
!53 = distinct !DILexicalBlock(scope: !47, file: !1, line: 29, column: 9)
!54 = !DILocation(line: 29, column: 13, scope: !53)
!55 = !DILocation(line: 29, column: 9, scope: !47)
!56 = !DILocation(line: 29, column: 22, scope: !53)
!57 = !DILocalVariable(name: "len", scope: !47, file: !1, line: 30, type: !39)
!58 = !DILocation(line: 30, column: 12, scope: !47)
!59 = !DILocation(line: 30, column: 25, scope: !47)
!60 = !DILocation(line: 30, column: 18, scope: !47)
!61 = !DILocation(line: 30, column: 30, scope: !47)
!62 = !DILocalVariable(name: "copy", scope: !47, file: !1, line: 31, type: !4)
!63 = !DILocation(line: 31, column: 11, scope: !47)
!64 = !DILocation(line: 31, column: 33, scope: !47)
!65 = !DILocation(line: 31, column: 26, scope: !47)
!66 = !DILocation(line: 32, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !47, file: !1, line: 32, column: 9)
!68 = !DILocation(line: 32, column: 9, scope: !47)
!69 = !DILocation(line: 32, column: 22, scope: !67)
!70 = !DILocation(line: 32, column: 28, scope: !67)
!71 = !DILocation(line: 32, column: 33, scope: !67)
!72 = !DILocation(line: 32, column: 15, scope: !67)
!73 = !DILocation(line: 33, column: 12, scope: !47)
!74 = !DILocation(line: 33, column: 5, scope: !47)
!75 = !DILocation(line: 34, column: 1, scope: !47)
!76 = distinct !DISubprogram(name: "xmlNewNs", scope: !1, file: !1, line: 37, type: !77, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!77 = !DISubroutineType(types: !78)
!78 = !{!6, !3, !30, !30}
!79 = !DILocalVariable(name: "node", arg: 1, scope: !76, file: !1, line: 37, type: !3)
!80 = !DILocation(line: 37, column: 25, scope: !76)
!81 = !DILocalVariable(name: "href", arg: 2, scope: !76, file: !1, line: 37, type: !30)
!82 = !DILocation(line: 37, column: 43, scope: !76)
!83 = !DILocalVariable(name: "prefix", arg: 3, scope: !76, file: !1, line: 37, type: !30)
!84 = !DILocation(line: 37, column: 61, scope: !76)
!85 = !DILocalVariable(name: "cur", scope: !76, file: !1, line: 38, type: !6)
!86 = !DILocation(line: 38, column: 14, scope: !76)
!87 = !DILocation(line: 41, column: 22, scope: !76)
!88 = !DILocation(line: 41, column: 11, scope: !76)
!89 = !DILocation(line: 41, column: 9, scope: !76)
!90 = !DILocation(line: 42, column: 9, scope: !91)
!91 = distinct !DILexicalBlock(scope: !76, file: !1, line: 42, column: 9)
!92 = !DILocation(line: 42, column: 13, scope: !91)
!93 = !DILocation(line: 42, column: 9, scope: !76)
!94 = !DILocation(line: 43, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !91, file: !1, line: 42, column: 22)
!96 = !DILocation(line: 44, column: 9, scope: !95)
!97 = !DILocation(line: 49, column: 5, scope: !76)
!98 = !DILocation(line: 52, column: 5, scope: !76)
!99 = !DILocation(line: 54, column: 12, scope: !76)
!100 = !DILocation(line: 54, column: 5, scope: !76)
!101 = !DILocation(line: 55, column: 5, scope: !76)
!102 = !DILocation(line: 55, column: 10, scope: !76)
!103 = !DILocation(line: 55, column: 15, scope: !76)
!104 = !DILocation(line: 57, column: 9, scope: !105)
!105 = distinct !DILexicalBlock(scope: !76, file: !1, line: 57, column: 9)
!106 = !DILocation(line: 57, column: 14, scope: !105)
!107 = !DILocation(line: 57, column: 9, scope: !76)
!108 = !DILocation(line: 58, column: 31, scope: !105)
!109 = !DILocation(line: 58, column: 21, scope: !105)
!110 = !DILocation(line: 58, column: 9, scope: !105)
!111 = !DILocation(line: 58, column: 14, scope: !105)
!112 = !DILocation(line: 58, column: 19, scope: !105)
!113 = !DILocation(line: 59, column: 9, scope: !114)
!114 = distinct !DILexicalBlock(scope: !76, file: !1, line: 59, column: 9)
!115 = !DILocation(line: 59, column: 16, scope: !114)
!116 = !DILocation(line: 59, column: 9, scope: !76)
!117 = !DILocation(line: 60, column: 33, scope: !114)
!118 = !DILocation(line: 60, column: 23, scope: !114)
!119 = !DILocation(line: 60, column: 9, scope: !114)
!120 = !DILocation(line: 60, column: 14, scope: !114)
!121 = !DILocation(line: 60, column: 21, scope: !114)
!122 = !DILocation(line: 62, column: 12, scope: !76)
!123 = !DILocation(line: 62, column: 5, scope: !76)
!124 = !DILocation(line: 63, column: 1, scope: !76)
!125 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 65, type: !126, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!126 = !DISubroutineType(types: !127)
!127 = !{!12}
!128 = !DILocalVariable(name: "href", scope: !125, file: !1, line: 67, type: !129)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 2048, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 256)
!132 = !DILocation(line: 67, column: 10, scope: !125)
!133 = !DILocalVariable(name: "prefix", scope: !125, file: !1, line: 68, type: !129)
!134 = !DILocation(line: 68, column: 10, scope: !125)
!135 = !DILocation(line: 70, column: 24, scope: !125)
!136 = !DILocation(line: 70, column: 5, scope: !125)
!137 = !DILocation(line: 71, column: 24, scope: !125)
!138 = !DILocation(line: 71, column: 5, scope: !125)
!139 = !DILocation(line: 74, column: 5, scope: !125)
!140 = !DILocation(line: 74, column: 15, scope: !125)
!141 = !DILocation(line: 75, column: 5, scope: !125)
!142 = !DILocation(line: 75, column: 17, scope: !125)
!143 = !DILocalVariable(name: "ns", scope: !125, file: !1, line: 78, type: !6)
!144 = !DILocation(line: 78, column: 14, scope: !125)
!145 = !DILocation(line: 78, column: 34, scope: !125)
!146 = !DILocation(line: 78, column: 40, scope: !125)
!147 = !DILocation(line: 78, column: 19, scope: !125)
!148 = !DILocation(line: 81, column: 9, scope: !149)
!149 = distinct !DILexicalBlock(scope: !125, file: !1, line: 81, column: 9)
!150 = !DILocation(line: 81, column: 12, scope: !149)
!151 = !DILocation(line: 81, column: 9, scope: !125)
!152 = !DILocation(line: 82, column: 13, scope: !153)
!153 = distinct !DILexicalBlock(scope: !154, file: !1, line: 82, column: 13)
!154 = distinct !DILexicalBlock(scope: !149, file: !1, line: 81, column: 21)
!155 = !DILocation(line: 82, column: 17, scope: !153)
!156 = !DILocation(line: 82, column: 13, scope: !154)
!157 = !DILocation(line: 82, column: 28, scope: !153)
!158 = !DILocation(line: 82, column: 32, scope: !153)
!159 = !DILocation(line: 82, column: 23, scope: !153)
!160 = !DILocation(line: 83, column: 13, scope: !161)
!161 = distinct !DILexicalBlock(scope: !154, file: !1, line: 83, column: 13)
!162 = !DILocation(line: 83, column: 17, scope: !161)
!163 = !DILocation(line: 83, column: 13, scope: !154)
!164 = !DILocation(line: 83, column: 30, scope: !161)
!165 = !DILocation(line: 83, column: 34, scope: !161)
!166 = !DILocation(line: 83, column: 25, scope: !161)
!167 = !DILocation(line: 84, column: 14, scope: !154)
!168 = !DILocation(line: 84, column: 9, scope: !154)
!169 = !DILocation(line: 85, column: 5, scope: !154)
!170 = !DILocation(line: 87, column: 5, scope: !125)
!171 = distinct !DISubprogram(name: "memcpy", scope: !172, file: !172, line: 12, type: !173, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !32)
!172 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!173 = !DISubroutineType(types: !174)
!174 = !{!3, !3, !175, !39}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!177 = !DILocalVariable(name: "destaddr", arg: 1, scope: !171, file: !172, line: 12, type: !3)
!178 = !DILocation(line: 12, column: 20, scope: !171)
!179 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !171, file: !172, line: 12, type: !175)
!180 = !DILocation(line: 12, column: 42, scope: !171)
!181 = !DILocalVariable(name: "len", arg: 3, scope: !171, file: !172, line: 12, type: !39)
!182 = !DILocation(line: 12, column: 58, scope: !171)
!183 = !DILocalVariable(name: "dest", scope: !171, file: !172, line: 13, type: !4)
!184 = !DILocation(line: 13, column: 9, scope: !171)
!185 = !DILocation(line: 13, column: 16, scope: !171)
!186 = !DILocalVariable(name: "src", scope: !171, file: !172, line: 14, type: !30)
!187 = !DILocation(line: 14, column: 15, scope: !171)
!188 = !DILocation(line: 14, column: 21, scope: !171)
!189 = !DILocation(line: 16, column: 3, scope: !171)
!190 = !DILocation(line: 16, column: 13, scope: !171)
!191 = !DILocation(line: 16, column: 16, scope: !171)
!192 = !DILocation(line: 17, column: 19, scope: !171)
!193 = !DILocation(line: 17, column: 15, scope: !171)
!194 = !DILocation(line: 17, column: 10, scope: !171)
!195 = !DILocation(line: 17, column: 13, scope: !171)
!196 = distinct !{!196, !189, !192, !197}
!197 = !{!"llvm.loop.mustprogress"}
!198 = !DILocation(line: 18, column: 10, scope: !171)
!199 = !DILocation(line: 18, column: 3, scope: !171)
!200 = distinct !DISubprogram(name: "memset", scope: !201, file: !201, line: 12, type: !202, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !32)
!201 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!202 = !DISubroutineType(types: !203)
!203 = !{!3, !3, !12, !39}
!204 = !DILocalVariable(name: "dst", arg: 1, scope: !200, file: !201, line: 12, type: !3)
!205 = !DILocation(line: 12, column: 20, scope: !200)
!206 = !DILocalVariable(name: "s", arg: 2, scope: !200, file: !201, line: 12, type: !12)
!207 = !DILocation(line: 12, column: 29, scope: !200)
!208 = !DILocalVariable(name: "count", arg: 3, scope: !200, file: !201, line: 12, type: !39)
!209 = !DILocation(line: 12, column: 39, scope: !200)
!210 = !DILocalVariable(name: "a", scope: !200, file: !201, line: 13, type: !4)
!211 = !DILocation(line: 13, column: 9, scope: !200)
!212 = !DILocation(line: 13, column: 13, scope: !200)
!213 = !DILocation(line: 14, column: 3, scope: !200)
!214 = !DILocation(line: 14, column: 15, scope: !200)
!215 = !DILocation(line: 14, column: 18, scope: !200)
!216 = !DILocation(line: 15, column: 12, scope: !200)
!217 = !DILocation(line: 15, column: 7, scope: !200)
!218 = !DILocation(line: 15, column: 10, scope: !200)
!219 = distinct !{!219, !213, !216, !197}
!220 = !DILocation(line: 16, column: 10, scope: !200)
!221 = !DILocation(line: 16, column: 3, scope: !200)

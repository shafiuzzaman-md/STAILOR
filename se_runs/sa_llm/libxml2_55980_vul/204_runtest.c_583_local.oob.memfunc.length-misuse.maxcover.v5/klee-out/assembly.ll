; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/204_runtest.c_583_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/204_runtest.c_583_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@baseFilename.result = internal global [256 x i8] zeroinitializer, align 16, !dbg !0
@.str = private unnamed_addr constant [20 x i8] c"baseFilename_result\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".tmp\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"(strlen(suffix) < sizeof(suffixbuff)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.8 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_55980_vul/204_runtest.c_583_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.testFilename = private unnamed_addr constant [61 x i8] c"char *testFilename(const char *, const char *, const char *)\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @baseFilename(i8* noundef %0) #0 !dbg !2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !28, metadata !DIExpression()), !dbg !29
  call void @klee_make_symbolic(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @baseFilename.result, i64 0, i64 0), i64 noundef 256, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0)), !dbg !30
  %3 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @baseFilename.result, i64 0, i64 255), align 1, !dbg !31
  %4 = sext i8 %3 to i32, !dbg !31
  %5 = icmp eq i32 %4, 0, !dbg !32
  %6 = zext i1 %5 to i32, !dbg !32
  %7 = sext i32 %6 to i64, !dbg !31
  call void @klee_assume(i64 noundef %7), !dbg !33
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @baseFilename.result, i64 0, i64 0), !dbg !34
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMemStrdup(i8* noundef %0) #0 !dbg !35 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !36, metadata !DIExpression()), !dbg !37
  %6 = load i8*, i8** %3, align 8, !dbg !38
  %7 = icmp eq i8* %6, null, !dbg !40
  br i1 %7, label %8, label %9, !dbg !41

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !42
  br label %24, !dbg !42

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !43, metadata !DIExpression()), !dbg !47
  %10 = load i8*, i8** %3, align 8, !dbg !48
  %11 = call i64 @strlen(i8* noundef %10) #8, !dbg !49
  %12 = add i64 %11, 1, !dbg !50
  store i64 %12, i64* %4, align 8, !dbg !47
  call void @llvm.dbg.declare(metadata i8** %5, metadata !51, metadata !DIExpression()), !dbg !52
  %13 = load i64, i64* %4, align 8, !dbg !53
  %14 = call noalias i8* @malloc(i64 noundef %13) #9, !dbg !54
  store i8* %14, i8** %5, align 8, !dbg !52
  %15 = load i8*, i8** %5, align 8, !dbg !55
  %16 = icmp ne i8* %15, null, !dbg !55
  br i1 %16, label %17, label %22, !dbg !57

17:                                               ; preds = %9
  %18 = load i8*, i8** %5, align 8, !dbg !58
  %19 = load i8*, i8** %3, align 8, !dbg !59
  %20 = load i64, i64* %4, align 8, !dbg !60
  %21 = call i8* @memcpy(i8* %18, i8* %19, i64 %20), !dbg !61
  br label %22, !dbg !61

22:                                               ; preds = %17, %9
  %23 = load i8*, i8** %5, align 8, !dbg !62
  store i8* %23, i8** %2, align 8, !dbg !63
  br label %24, !dbg !63

24:                                               ; preds = %22, %8
  %25 = load i8*, i8** %2, align 8, !dbg !64
  ret i8* %25, !dbg !64
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !65 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [500 x i8], align 16
  %4 = alloca [256 x i8], align 16
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !69, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata [500 x i8]* %3, metadata !71, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !76, metadata !DIExpression()), !dbg !77
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !78
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !79
  %7 = getelementptr inbounds [500 x i8], [500 x i8]* %3, i64 0, i64 0, !dbg !80
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 500, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)), !dbg !81
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !82
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 256, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !83
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !84
  %10 = load i8, i8* %9, align 1, !dbg !84
  %11 = sext i8 %10 to i32, !dbg !84
  %12 = icmp eq i32 %11, 0, !dbg !85
  %13 = zext i1 %12 to i32, !dbg !85
  %14 = sext i32 %13 to i64, !dbg !84
  call void @klee_assume(i64 noundef %14), !dbg !86
  %15 = getelementptr inbounds [500 x i8], [500 x i8]* %3, i64 0, i64 499, !dbg !87
  %16 = load i8, i8* %15, align 1, !dbg !87
  %17 = sext i8 %16 to i32, !dbg !87
  %18 = icmp eq i32 %17, 0, !dbg !88
  %19 = zext i1 %18 to i32, !dbg !88
  %20 = sext i32 %19 to i64, !dbg !87
  call void @klee_assume(i64 noundef %20), !dbg !89
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 255, !dbg !90
  %22 = load i8, i8* %21, align 1, !dbg !90
  %23 = sext i8 %22 to i32, !dbg !90
  %24 = icmp eq i32 %23, 0, !dbg !91
  %25 = zext i1 %24 to i32, !dbg !91
  %26 = sext i32 %25 to i64, !dbg !90
  call void @klee_assume(i64 noundef %26), !dbg !92
  call void @llvm.dbg.declare(metadata i8** %5, metadata !93, metadata !DIExpression()), !dbg !94
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !95
  %28 = getelementptr inbounds [500 x i8], [500 x i8]* %3, i64 0, i64 0, !dbg !96
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !97
  %30 = call i8* @testFilename(i8* noundef %27, i8* noundef %28, i8* noundef %29), !dbg !98
  store i8* %30, i8** %5, align 8, !dbg !94
  %31 = load i8*, i8** %5, align 8, !dbg !99
  %32 = icmp ne i8* %31, null, !dbg !99
  br i1 %32, label %33, label %35, !dbg !101

33:                                               ; preds = %0
  %34 = load i8*, i8** %5, align 8, !dbg !102
  call void @free(i8* noundef %34) #9, !dbg !103
  br label %35, !dbg !103

35:                                               ; preds = %33, %0
  ret i32 0, !dbg !104
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @testFilename(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !105 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [500 x i8], align 16
  %8 = alloca [500 x i8], align 16
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !108, metadata !DIExpression()), !dbg !109
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !110, metadata !DIExpression()), !dbg !111
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata [500 x i8]* %7, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata [500 x i8]* %8, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata i8** %9, metadata !118, metadata !DIExpression()), !dbg !119
  %10 = load i8*, i8** %4, align 8, !dbg !120
  %11 = call i8* @baseFilename(i8* noundef %10), !dbg !121
  store i8* %11, i8** %9, align 8, !dbg !122
  %12 = load i8*, i8** %5, align 8, !dbg !123
  %13 = icmp eq i8* %12, null, !dbg !125
  br i1 %13, label %14, label %15, !dbg !126

14:                                               ; preds = %3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8, !dbg !127
  br label %15, !dbg !128

15:                                               ; preds = %14, %3
  %16 = load i8*, i8** %6, align 8, !dbg !129
  %17 = icmp eq i8* %16, null, !dbg !131
  br i1 %17, label %18, label %19, !dbg !132

18:                                               ; preds = %15
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8, !dbg !133
  br label %19, !dbg !134

19:                                               ; preds = %18, %15
  %20 = getelementptr inbounds [500 x i8], [500 x i8]* %7, i64 0, i64 0, !dbg !135
  %21 = load i8*, i8** %5, align 8, !dbg !136
  %22 = call i8* @strncpy(i8* noundef %20, i8* noundef %21, i64 noundef 499) #9, !dbg !137
  %23 = load i8*, i8** %5, align 8, !dbg !138
  %24 = call i64 @strlen(i8* noundef %23) #8, !dbg !138
  %25 = icmp ult i64 %24, 500, !dbg !138
  br i1 %25, label %26, label %28, !dbg !138

26:                                               ; preds = %19
  br i1 true, label %27, label %28, !dbg !138

27:                                               ; preds = %26
  br label %30, !dbg !138

28:                                               ; preds = %26, %19
  %29 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.8, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.testFilename, i64 0, i64 0)), !dbg !138
  br label %30, !dbg !138

30:                                               ; preds = %28, %27
  %31 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.8, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.testFilename, i64 0, i64 0)), !dbg !139
  %32 = getelementptr inbounds [500 x i8], [500 x i8]* %8, i64 0, i64 0, !dbg !140
  %33 = load i8*, i8** %6, align 8, !dbg !142
  %34 = load i8*, i8** %9, align 8, !dbg !143
  %35 = getelementptr inbounds [500 x i8], [500 x i8]* %7, i64 0, i64 0, !dbg !144
  %36 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %32, i64 noundef 499, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* noundef %33, i8* noundef %34, i8* noundef %35), !dbg !145
  %37 = icmp sge i32 %36, 499, !dbg !146
  br i1 %37, label %38, label %40, !dbg !147

38:                                               ; preds = %30
  %39 = getelementptr inbounds [500 x i8], [500 x i8]* %8, i64 0, i64 499, !dbg !148
  store i8 0, i8* %39, align 1, !dbg !149
  br label %40, !dbg !148

40:                                               ; preds = %38, %30
  %41 = getelementptr inbounds [500 x i8], [500 x i8]* %8, i64 0, i64 0, !dbg !150
  %42 = call i8* @xmlMemStrdup(i8* noundef %41), !dbg !151
  ret i8* %42, !dbg !152
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: nounwind
declare i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

declare i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !153 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !159, metadata !DIExpression()), !dbg !160
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !161, metadata !DIExpression()), !dbg !162
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !163, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.declare(metadata i8** %7, metadata !165, metadata !DIExpression()), !dbg !166
  %9 = load i8*, i8** %4, align 8, !dbg !167
  store i8* %9, i8** %7, align 8, !dbg !166
  call void @llvm.dbg.declare(metadata i8** %8, metadata !168, metadata !DIExpression()), !dbg !169
  %10 = load i8*, i8** %5, align 8, !dbg !170
  store i8* %10, i8** %8, align 8, !dbg !169
  br label %11, !dbg !171

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !172
  %13 = add i64 %12, -1, !dbg !172
  store i64 %13, i64* %6, align 8, !dbg !172
  %14 = icmp ugt i64 %12, 0, !dbg !173
  br i1 %14, label %15, label %21, !dbg !171

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !174
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !174
  store i8* %17, i8** %8, align 8, !dbg !174
  %18 = load i8, i8* %16, align 1, !dbg !175
  %19 = load i8*, i8** %7, align 8, !dbg !176
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !176
  store i8* %20, i8** %7, align 8, !dbg !176
  store i8 %18, i8* %19, align 1, !dbg !177
  br label %11, !dbg !171, !llvm.loop !178

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !180
  ret i8* %22, !dbg !181
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!10, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27, !27}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "result", scope: !2, file: !3, line: 15, type: !15, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "baseFilename", scope: !3, file: !3, line: 14, type: !4, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !14)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/204_runtest.c_583_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "ae33b27e2da959103b65cbcfa2a314e3")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !8}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !11, globals: !13, splitDebugInlining: false, nameTableKind: None)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !{!0}
!14 = !{}
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 256)
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{i32 7, !"PIC Level", i32 2}
!24 = !{i32 7, !"PIE Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"Ubuntu clang version 14.0.6"}
!28 = !DILocalVariable(name: "filename", arg: 1, scope: !2, file: !3, line: 14, type: !8)
!29 = !DILocation(line: 14, column: 32, scope: !2)
!30 = !DILocation(line: 16, column: 5, scope: !2)
!31 = !DILocation(line: 18, column: 17, scope: !2)
!32 = !DILocation(line: 18, column: 29, scope: !2)
!33 = !DILocation(line: 18, column: 5, scope: !2)
!34 = !DILocation(line: 19, column: 5, scope: !2)
!35 = distinct !DISubprogram(name: "xmlMemStrdup", scope: !3, file: !3, line: 23, type: !4, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !14)
!36 = !DILocalVariable(name: "str", arg: 1, scope: !35, file: !3, line: 23, type: !8)
!37 = !DILocation(line: 23, column: 32, scope: !35)
!38 = !DILocation(line: 24, column: 9, scope: !39)
!39 = distinct !DILexicalBlock(scope: !35, file: !3, line: 24, column: 9)
!40 = !DILocation(line: 24, column: 13, scope: !39)
!41 = !DILocation(line: 24, column: 9, scope: !35)
!42 = !DILocation(line: 24, column: 22, scope: !39)
!43 = !DILocalVariable(name: "len", scope: !35, file: !3, line: 25, type: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 46, baseType: !46)
!45 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!46 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!47 = !DILocation(line: 25, column: 12, scope: !35)
!48 = !DILocation(line: 25, column: 25, scope: !35)
!49 = !DILocation(line: 25, column: 18, scope: !35)
!50 = !DILocation(line: 25, column: 30, scope: !35)
!51 = !DILocalVariable(name: "copy", scope: !35, file: !3, line: 26, type: !6)
!52 = !DILocation(line: 26, column: 11, scope: !35)
!53 = !DILocation(line: 26, column: 25, scope: !35)
!54 = !DILocation(line: 26, column: 18, scope: !35)
!55 = !DILocation(line: 27, column: 9, scope: !56)
!56 = distinct !DILexicalBlock(scope: !35, file: !3, line: 27, column: 9)
!57 = !DILocation(line: 27, column: 9, scope: !35)
!58 = !DILocation(line: 27, column: 22, scope: !56)
!59 = !DILocation(line: 27, column: 28, scope: !56)
!60 = !DILocation(line: 27, column: 33, scope: !56)
!61 = !DILocation(line: 27, column: 15, scope: !56)
!62 = !DILocation(line: 28, column: 12, scope: !35)
!63 = !DILocation(line: 28, column: 5, scope: !35)
!64 = !DILocation(line: 29, column: 1, scope: !35)
!65 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 62, type: !66, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !14)
!66 = !DISubroutineType(types: !67)
!67 = !{!68}
!68 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!69 = !DILocalVariable(name: "filename", scope: !65, file: !3, line: 64, type: !15)
!70 = !DILocation(line: 64, column: 10, scope: !65)
!71 = !DILocalVariable(name: "suffix", scope: !65, file: !3, line: 65, type: !72)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 4000, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 500)
!75 = !DILocation(line: 65, column: 10, scope: !65)
!76 = !DILocalVariable(name: "out", scope: !65, file: !3, line: 66, type: !15)
!77 = !DILocation(line: 66, column: 10, scope: !65)
!78 = !DILocation(line: 68, column: 24, scope: !65)
!79 = !DILocation(line: 68, column: 5, scope: !65)
!80 = !DILocation(line: 69, column: 24, scope: !65)
!81 = !DILocation(line: 69, column: 5, scope: !65)
!82 = !DILocation(line: 70, column: 24, scope: !65)
!83 = !DILocation(line: 70, column: 5, scope: !65)
!84 = !DILocation(line: 73, column: 17, scope: !65)
!85 = !DILocation(line: 73, column: 31, scope: !65)
!86 = !DILocation(line: 73, column: 5, scope: !65)
!87 = !DILocation(line: 74, column: 17, scope: !65)
!88 = !DILocation(line: 74, column: 29, scope: !65)
!89 = !DILocation(line: 74, column: 5, scope: !65)
!90 = !DILocation(line: 75, column: 17, scope: !65)
!91 = !DILocation(line: 75, column: 26, scope: !65)
!92 = !DILocation(line: 75, column: 5, scope: !65)
!93 = !DILocalVariable(name: "result", scope: !65, file: !3, line: 78, type: !6)
!94 = !DILocation(line: 78, column: 11, scope: !65)
!95 = !DILocation(line: 78, column: 33, scope: !65)
!96 = !DILocation(line: 78, column: 43, scope: !65)
!97 = !DILocation(line: 78, column: 51, scope: !65)
!98 = !DILocation(line: 78, column: 20, scope: !65)
!99 = !DILocation(line: 81, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !65, file: !3, line: 81, column: 9)
!101 = !DILocation(line: 81, column: 9, scope: !65)
!102 = !DILocation(line: 81, column: 22, scope: !100)
!103 = !DILocation(line: 81, column: 17, scope: !100)
!104 = !DILocation(line: 83, column: 5, scope: !65)
!105 = distinct !DISubprogram(name: "testFilename", scope: !3, file: !3, line: 32, type: !106, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !10, retainedNodes: !14)
!106 = !DISubroutineType(types: !107)
!107 = !{!6, !8, !8, !8}
!108 = !DILocalVariable(name: "filename", arg: 1, scope: !105, file: !3, line: 32, type: !8)
!109 = !DILocation(line: 32, column: 39, scope: !105)
!110 = !DILocalVariable(name: "suffix", arg: 2, scope: !105, file: !3, line: 32, type: !8)
!111 = !DILocation(line: 32, column: 61, scope: !105)
!112 = !DILocalVariable(name: "out", arg: 3, scope: !105, file: !3, line: 32, type: !8)
!113 = !DILocation(line: 32, column: 81, scope: !105)
!114 = !DILocalVariable(name: "suffixbuff", scope: !105, file: !3, line: 33, type: !72)
!115 = !DILocation(line: 33, column: 10, scope: !105)
!116 = !DILocalVariable(name: "res", scope: !105, file: !3, line: 34, type: !72)
!117 = !DILocation(line: 34, column: 10, scope: !105)
!118 = !DILocalVariable(name: "base", scope: !105, file: !3, line: 35, type: !6)
!119 = !DILocation(line: 35, column: 11, scope: !105)
!120 = !DILocation(line: 37, column: 25, scope: !105)
!121 = !DILocation(line: 37, column: 12, scope: !105)
!122 = !DILocation(line: 37, column: 10, scope: !105)
!123 = !DILocation(line: 38, column: 9, scope: !124)
!124 = distinct !DILexicalBlock(scope: !105, file: !3, line: 38, column: 9)
!125 = !DILocation(line: 38, column: 16, scope: !124)
!126 = !DILocation(line: 38, column: 9, scope: !105)
!127 = !DILocation(line: 39, column: 16, scope: !124)
!128 = !DILocation(line: 39, column: 9, scope: !124)
!129 = !DILocation(line: 40, column: 9, scope: !130)
!130 = distinct !DILexicalBlock(scope: !105, file: !3, line: 40, column: 9)
!131 = !DILocation(line: 40, column: 13, scope: !130)
!132 = !DILocation(line: 40, column: 9, scope: !105)
!133 = !DILocation(line: 41, column: 13, scope: !130)
!134 = !DILocation(line: 41, column: 9, scope: !130)
!135 = !DILocation(line: 44, column: 13, scope: !105)
!136 = !DILocation(line: 44, column: 25, scope: !105)
!137 = !DILocation(line: 44, column: 5, scope: !105)
!138 = !DILocation(line: 47, column: 5, scope: !105)
!139 = !DILocation(line: 50, column: 5, scope: !105)
!140 = !DILocation(line: 57, column: 18, scope: !141)
!141 = distinct !DILexicalBlock(scope: !105, file: !3, line: 57, column: 9)
!142 = !DILocation(line: 57, column: 38, scope: !141)
!143 = !DILocation(line: 57, column: 43, scope: !141)
!144 = !DILocation(line: 57, column: 49, scope: !141)
!145 = !DILocation(line: 57, column: 9, scope: !141)
!146 = !DILocation(line: 57, column: 61, scope: !141)
!147 = !DILocation(line: 57, column: 9, scope: !105)
!148 = !DILocation(line: 58, column: 9, scope: !141)
!149 = !DILocation(line: 58, column: 18, scope: !141)
!150 = !DILocation(line: 59, column: 25, scope: !105)
!151 = !DILocation(line: 59, column: 12, scope: !105)
!152 = !DILocation(line: 59, column: 5, scope: !105)
!153 = distinct !DISubprogram(name: "memcpy", scope: !154, file: !154, line: 12, type: !155, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !14)
!154 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!155 = !DISubroutineType(types: !156)
!156 = !{!12, !12, !157, !44}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!159 = !DILocalVariable(name: "destaddr", arg: 1, scope: !153, file: !154, line: 12, type: !12)
!160 = !DILocation(line: 12, column: 20, scope: !153)
!161 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !153, file: !154, line: 12, type: !157)
!162 = !DILocation(line: 12, column: 42, scope: !153)
!163 = !DILocalVariable(name: "len", arg: 3, scope: !153, file: !154, line: 12, type: !44)
!164 = !DILocation(line: 12, column: 58, scope: !153)
!165 = !DILocalVariable(name: "dest", scope: !153, file: !154, line: 13, type: !6)
!166 = !DILocation(line: 13, column: 9, scope: !153)
!167 = !DILocation(line: 13, column: 16, scope: !153)
!168 = !DILocalVariable(name: "src", scope: !153, file: !154, line: 14, type: !8)
!169 = !DILocation(line: 14, column: 15, scope: !153)
!170 = !DILocation(line: 14, column: 21, scope: !153)
!171 = !DILocation(line: 16, column: 3, scope: !153)
!172 = !DILocation(line: 16, column: 13, scope: !153)
!173 = !DILocation(line: 16, column: 16, scope: !153)
!174 = !DILocation(line: 17, column: 19, scope: !153)
!175 = !DILocation(line: 17, column: 15, scope: !153)
!176 = !DILocation(line: 17, column: 10, scope: !153)
!177 = !DILocation(line: 17, column: 13, scope: !153)
!178 = distinct !{!178, !171, !174, !179}
!179 = !{!"llvm.loop.mustprogress"}
!180 = !DILocation(line: 18, column: 10, scope: !153)
!181 = !DILocation(line: 18, column: 3, scope: !153)

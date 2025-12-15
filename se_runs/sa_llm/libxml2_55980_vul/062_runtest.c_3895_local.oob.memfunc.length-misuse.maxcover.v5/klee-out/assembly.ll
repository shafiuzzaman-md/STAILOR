; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/062_runtest.c_3895_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/062_runtest.c_3895_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"checkTestFile_result\00", align 1
@baseFilename.base = internal global [256 x i8] zeroinitializer, align 16, !dbg !0
@.str.1 = private unnamed_addr constant [20 x i8] c"baseFilename_result\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"result/pattern/%s\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"(len + 5 <= sizeof(xml)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/062_runtest.c_3895_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [39 x i8] c"int target_function(const char *, int)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c".xml\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"update_results\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @checkTestFile(i8* noundef %0) #0 !dbg !25 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %3, metadata !31, metadata !DIExpression()), !dbg !32
  %4 = bitcast i32* %3 to i8*, !dbg !33
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0)), !dbg !34
  %5 = load i32, i32* %3, align 4, !dbg !35
  ret i32 %5, !dbg !36
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @baseFilename(i8* noundef %0) #0 !dbg !2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !37, metadata !DIExpression()), !dbg !38
  call void @klee_make_symbolic(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @baseFilename.base, i64 0, i64 0), i64 noundef 256, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0)), !dbg !39
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @baseFilename.base, i64 0, i64 255), align 1, !dbg !40
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @baseFilename.base, i64 0, i64 0), !dbg !41
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_function(i8* noundef %0, i32 noundef %1) #0 !dbg !42 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [500 x i8], align 16
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !45, metadata !DIExpression()), !dbg !46
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata [1024 x i8]* %6, metadata !49, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata [500 x i8]* %7, metadata !54, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i64* %8, metadata !59, metadata !DIExpression()), !dbg !63
  %9 = load i8*, i8** %4, align 8, !dbg !64
  %10 = call i64 @strlen(i8* noundef %9) #8, !dbg !65
  store i64 %10, i64* %8, align 8, !dbg !66
  %11 = load i64, i64* %8, align 8, !dbg !67
  %12 = icmp ult i64 %11, 4, !dbg !69
  br i1 %12, label %13, label %14, !dbg !70

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !71
  br label %56, !dbg !71

14:                                               ; preds = %2
  %15 = load i64, i64* %8, align 8, !dbg !73
  %16 = sub i64 %15, 4, !dbg !73
  store i64 %16, i64* %8, align 8, !dbg !73
  %17 = load i64, i64* %8, align 8, !dbg !74
  %18 = icmp uge i64 %17, 1024, !dbg !76
  br i1 %18, label %19, label %20, !dbg !77

19:                                               ; preds = %14
  store i32 -1, i32* %3, align 4, !dbg !78
  br label %56, !dbg !78

20:                                               ; preds = %14
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0, !dbg !80
  %22 = load i8*, i8** %4, align 8, !dbg !81
  %23 = load i64, i64* %8, align 8, !dbg !82
  %24 = call i8* @memcpy(i8* %21, i8* %22, i64 %23), !dbg !80
  %25 = load i64, i64* %8, align 8, !dbg !83
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 %25, !dbg !84
  store i8 0, i8* %26, align 1, !dbg !85
  %27 = getelementptr inbounds [500 x i8], [500 x i8]* %7, i64 0, i64 0, !dbg !86
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0, !dbg !88
  %29 = call i8* @baseFilename(i8* noundef %28), !dbg !89
  %30 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %27, i64 noundef 499, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* noundef %29) #9, !dbg !90
  %31 = icmp sge i32 %30, 499, !dbg !91
  br i1 %31, label %32, label %34, !dbg !92

32:                                               ; preds = %20
  %33 = getelementptr inbounds [500 x i8], [500 x i8]* %7, i64 0, i64 499, !dbg !93
  store i8 0, i8* %33, align 1, !dbg !94
  br label %34, !dbg !93

34:                                               ; preds = %32, %20
  %35 = load i64, i64* %8, align 8, !dbg !95
  %36 = add i64 %35, 5, !dbg !95
  %37 = icmp ule i64 %36, 1024, !dbg !95
  br i1 %37, label %38, label %40, !dbg !95

38:                                               ; preds = %34
  br i1 true, label %39, label %40, !dbg !95

39:                                               ; preds = %38
  br label %42, !dbg !95

40:                                               ; preds = %38, %34
  %41 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !95
  br label %42, !dbg !95

42:                                               ; preds = %40, %39
  %43 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !96
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0, !dbg !97
  %45 = load i64, i64* %8, align 8, !dbg !98
  %46 = getelementptr inbounds i8, i8* %44, i64 %45, !dbg !99
  %47 = call i8* @memcpy(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 5), !dbg !100
  %48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0, !dbg !101
  %49 = call i32 @checkTestFile(i8* noundef %48), !dbg !103
  %50 = icmp ne i32 %49, 0, !dbg !103
  br i1 %50, label %55, label %51, !dbg !104

51:                                               ; preds = %42
  %52 = load i32, i32* %5, align 4, !dbg !105
  %53 = icmp ne i32 %52, 0, !dbg !105
  br i1 %53, label %55, label %54, !dbg !106

54:                                               ; preds = %51
  store i32 -1, i32* %3, align 4, !dbg !107
  br label %56, !dbg !107

55:                                               ; preds = %51, %42
  store i32 0, i32* %3, align 4, !dbg !109
  br label %56, !dbg !109

56:                                               ; preds = %55, %54, %19, %13
  %57 = load i32, i32* %3, align 4, !dbg !110
  ret i32 %57, !dbg !110
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind
declare i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !111 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [1024 x i8]* %2, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata i32* %3, metadata !116, metadata !DIExpression()), !dbg !117
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !118
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 1024, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)), !dbg !119
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 1023, !dbg !120
  store i8 0, i8* %6, align 1, !dbg !121
  %7 = bitcast i32* %3 to i8*, !dbg !122
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0)), !dbg !123
  call void @llvm.dbg.declare(metadata i64* %4, metadata !124, metadata !DIExpression()), !dbg !125
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !126
  %9 = call i64 @strlen(i8* noundef %8) #8, !dbg !127
  store i64 %9, i64* %4, align 8, !dbg !125
  %10 = load i64, i64* %4, align 8, !dbg !128
  %11 = icmp uge i64 %10, 4, !dbg !129
  %12 = zext i1 %11 to i32, !dbg !129
  %13 = sext i32 %12 to i64, !dbg !128
  call void @klee_assume(i64 noundef %13), !dbg !130
  %14 = load i64, i64* %4, align 8, !dbg !131
  %15 = icmp ult i64 %14, 1024, !dbg !132
  %16 = zext i1 %15 to i32, !dbg !132
  %17 = sext i32 %16 to i64, !dbg !131
  call void @klee_assume(i64 noundef %17), !dbg !133
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !134
  %19 = load i32, i32* %3, align 4, !dbg !135
  %20 = call i32 @target_function(i8* noundef %18, i32 noundef %19), !dbg !136
  ret i32 0, !dbg !137
}

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !138 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !145, metadata !DIExpression()), !dbg !146
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !147, metadata !DIExpression()), !dbg !148
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !149, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata i8** %7, metadata !151, metadata !DIExpression()), !dbg !153
  %9 = load i8*, i8** %4, align 8, !dbg !154
  store i8* %9, i8** %7, align 8, !dbg !153
  call void @llvm.dbg.declare(metadata i8** %8, metadata !155, metadata !DIExpression()), !dbg !156
  %10 = load i8*, i8** %5, align 8, !dbg !157
  store i8* %10, i8** %8, align 8, !dbg !156
  br label %11, !dbg !158

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !159
  %13 = add i64 %12, -1, !dbg !159
  store i64 %13, i64* %6, align 8, !dbg !159
  %14 = icmp ugt i64 %12, 0, !dbg !160
  br i1 %14, label %15, label %21, !dbg !158

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !161
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !161
  store i8* %17, i8** %8, align 8, !dbg !161
  %18 = load i8, i8* %16, align 1, !dbg !162
  %19 = load i8*, i8** %7, align 8, !dbg !163
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !163
  store i8* %20, i8** %7, align 8, !dbg !163
  store i8 %18, i8* %19, align 1, !dbg !164
  br label %11, !dbg !158, !llvm.loop !165

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !167
  ret i8* %22, !dbg !168
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!9, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24, !24}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "base", scope: !2, file: !3, line: 21, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "baseFilename", scope: !3, file: !3, line: 19, type: !4, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !11)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/062_runtest.c_3895_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "4afd8f0ccb87c2a4035016865f05bdf2")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !10, splitDebugInlining: false, nameTableKind: None)
!10 = !{!0}
!11 = !{}
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !13)
!13 = !{!14}
!14 = !DISubrange(count: 256)
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 7, !"PIC Level", i32 2}
!21 = !{i32 7, !"PIE Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"Ubuntu clang version 14.0.6"}
!25 = distinct !DISubprogram(name: "checkTestFile", scope: !3, file: !3, line: 11, type: !26, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !11)
!26 = !DISubroutineType(types: !27)
!27 = !{!28, !6}
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DILocalVariable(name: "filename", arg: 1, scope: !25, file: !3, line: 11, type: !6)
!30 = !DILocation(line: 11, column: 31, scope: !25)
!31 = !DILocalVariable(name: "result", scope: !25, file: !3, line: 13, type: !28)
!32 = !DILocation(line: 13, column: 9, scope: !25)
!33 = !DILocation(line: 14, column: 24, scope: !25)
!34 = !DILocation(line: 14, column: 5, scope: !25)
!35 = !DILocation(line: 15, column: 12, scope: !25)
!36 = !DILocation(line: 15, column: 5, scope: !25)
!37 = !DILocalVariable(name: "path", arg: 1, scope: !2, file: !3, line: 19, type: !6)
!38 = !DILocation(line: 19, column: 38, scope: !2)
!39 = !DILocation(line: 22, column: 5, scope: !2)
!40 = !DILocation(line: 24, column: 15, scope: !2)
!41 = !DILocation(line: 25, column: 5, scope: !2)
!42 = distinct !DISubprogram(name: "target_function", scope: !3, file: !3, line: 29, type: !43, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !11)
!43 = !DISubroutineType(types: !44)
!44 = !{!28, !6, !28}
!45 = !DILocalVariable(name: "filename", arg: 1, scope: !42, file: !3, line: 29, type: !6)
!46 = !DILocation(line: 29, column: 33, scope: !42)
!47 = !DILocalVariable(name: "update_results", arg: 2, scope: !42, file: !3, line: 29, type: !28)
!48 = !DILocation(line: 29, column: 47, scope: !42)
!49 = !DILocalVariable(name: "xml", scope: !42, file: !3, line: 30, type: !50)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 1024)
!53 = !DILocation(line: 30, column: 10, scope: !42)
!54 = !DILocalVariable(name: "result", scope: !42, file: !3, line: 31, type: !55)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 4000, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 500)
!58 = !DILocation(line: 31, column: 10, scope: !42)
!59 = !DILocalVariable(name: "len", scope: !42, file: !3, line: 32, type: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !61, line: 46, baseType: !62)
!61 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!62 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!63 = !DILocation(line: 32, column: 12, scope: !42)
!64 = !DILocation(line: 34, column: 18, scope: !42)
!65 = !DILocation(line: 34, column: 11, scope: !42)
!66 = !DILocation(line: 34, column: 9, scope: !42)
!67 = !DILocation(line: 35, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !42, file: !3, line: 35, column: 9)
!69 = !DILocation(line: 35, column: 13, scope: !68)
!70 = !DILocation(line: 35, column: 9, scope: !42)
!71 = !DILocation(line: 37, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !68, file: !3, line: 35, column: 18)
!73 = !DILocation(line: 39, column: 9, scope: !42)
!74 = !DILocation(line: 43, column: 9, scope: !75)
!75 = distinct !DILexicalBlock(scope: !42, file: !3, line: 43, column: 9)
!76 = !DILocation(line: 43, column: 13, scope: !75)
!77 = !DILocation(line: 43, column: 9, scope: !42)
!78 = !DILocation(line: 45, column: 9, scope: !79)
!79 = distinct !DILexicalBlock(scope: !75, file: !3, line: 43, column: 29)
!80 = !DILocation(line: 47, column: 5, scope: !42)
!81 = !DILocation(line: 47, column: 17, scope: !42)
!82 = !DILocation(line: 47, column: 27, scope: !42)
!83 = !DILocation(line: 48, column: 9, scope: !42)
!84 = !DILocation(line: 48, column: 5, scope: !42)
!85 = !DILocation(line: 48, column: 14, scope: !42)
!86 = !DILocation(line: 50, column: 18, scope: !87)
!87 = distinct !DILexicalBlock(scope: !42, file: !3, line: 50, column: 9)
!88 = !DILocation(line: 50, column: 65, scope: !87)
!89 = !DILocation(line: 50, column: 52, scope: !87)
!90 = !DILocation(line: 50, column: 9, scope: !87)
!91 = !DILocation(line: 50, column: 71, scope: !87)
!92 = !DILocation(line: 50, column: 9, scope: !42)
!93 = !DILocation(line: 51, column: 9, scope: !87)
!94 = !DILocation(line: 51, column: 21, scope: !87)
!95 = !DILocation(line: 56, column: 5, scope: !42)
!96 = !DILocation(line: 59, column: 5, scope: !42)
!97 = !DILocation(line: 61, column: 12, scope: !42)
!98 = !DILocation(line: 61, column: 18, scope: !42)
!99 = !DILocation(line: 61, column: 16, scope: !42)
!100 = !DILocation(line: 61, column: 5, scope: !42)
!101 = !DILocation(line: 63, column: 24, scope: !102)
!102 = distinct !DILexicalBlock(scope: !42, file: !3, line: 63, column: 9)
!103 = !DILocation(line: 63, column: 10, scope: !102)
!104 = !DILocation(line: 63, column: 29, scope: !102)
!105 = !DILocation(line: 63, column: 33, scope: !102)
!106 = !DILocation(line: 63, column: 9, scope: !42)
!107 = !DILocation(line: 64, column: 9, scope: !108)
!108 = distinct !DILexicalBlock(scope: !102, file: !3, line: 63, column: 49)
!109 = !DILocation(line: 67, column: 5, scope: !42)
!110 = !DILocation(line: 68, column: 1, scope: !42)
!111 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 70, type: !112, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !11)
!112 = !DISubroutineType(types: !113)
!113 = !{!28}
!114 = !DILocalVariable(name: "filename", scope: !111, file: !3, line: 71, type: !50)
!115 = !DILocation(line: 71, column: 10, scope: !111)
!116 = !DILocalVariable(name: "update_results", scope: !111, file: !3, line: 72, type: !28)
!117 = !DILocation(line: 72, column: 9, scope: !111)
!118 = !DILocation(line: 75, column: 24, scope: !111)
!119 = !DILocation(line: 75, column: 5, scope: !111)
!120 = !DILocation(line: 77, column: 5, scope: !111)
!121 = !DILocation(line: 77, column: 36, scope: !111)
!122 = !DILocation(line: 80, column: 24, scope: !111)
!123 = !DILocation(line: 80, column: 5, scope: !111)
!124 = !DILocalVariable(name: "filename_len", scope: !111, file: !3, line: 83, type: !60)
!125 = !DILocation(line: 83, column: 12, scope: !111)
!126 = !DILocation(line: 83, column: 34, scope: !111)
!127 = !DILocation(line: 83, column: 27, scope: !111)
!128 = !DILocation(line: 84, column: 17, scope: !111)
!129 = !DILocation(line: 84, column: 30, scope: !111)
!130 = !DILocation(line: 84, column: 5, scope: !111)
!131 = !DILocation(line: 87, column: 17, scope: !111)
!132 = !DILocation(line: 87, column: 30, scope: !111)
!133 = !DILocation(line: 87, column: 5, scope: !111)
!134 = !DILocation(line: 90, column: 21, scope: !111)
!135 = !DILocation(line: 90, column: 31, scope: !111)
!136 = !DILocation(line: 90, column: 5, scope: !111)
!137 = !DILocation(line: 92, column: 5, scope: !111)
!138 = distinct !DISubprogram(name: "memcpy", scope: !139, file: !139, line: 12, type: !140, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !11)
!139 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!140 = !DISubroutineType(types: !141)
!141 = !{!142, !142, !143, !60}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!145 = !DILocalVariable(name: "destaddr", arg: 1, scope: !138, file: !139, line: 12, type: !142)
!146 = !DILocation(line: 12, column: 20, scope: !138)
!147 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !138, file: !139, line: 12, type: !143)
!148 = !DILocation(line: 12, column: 42, scope: !138)
!149 = !DILocalVariable(name: "len", arg: 3, scope: !138, file: !139, line: 12, type: !60)
!150 = !DILocation(line: 12, column: 58, scope: !138)
!151 = !DILocalVariable(name: "dest", scope: !138, file: !139, line: 13, type: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!153 = !DILocation(line: 13, column: 9, scope: !138)
!154 = !DILocation(line: 13, column: 16, scope: !138)
!155 = !DILocalVariable(name: "src", scope: !138, file: !139, line: 14, type: !6)
!156 = !DILocation(line: 14, column: 15, scope: !138)
!157 = !DILocation(line: 14, column: 21, scope: !138)
!158 = !DILocation(line: 16, column: 3, scope: !138)
!159 = !DILocation(line: 16, column: 13, scope: !138)
!160 = !DILocation(line: 16, column: 16, scope: !138)
!161 = !DILocation(line: 17, column: 19, scope: !138)
!162 = !DILocation(line: 17, column: 15, scope: !138)
!163 = !DILocation(line: 17, column: 10, scope: !138)
!164 = !DILocation(line: 17, column: 13, scope: !138)
!165 = distinct !{!165, !158, !161, !166}
!166 = !{!"llvm.loop.mustprogress"}
!167 = !DILocation(line: 18, column: 10, scope: !138)
!168 = !DILocation(line: 18, column: 3, scope: !138)

; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/081_testrecurse.c_247_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/081_testrecurse.c_247_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@finish = dso_local global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), align 8, !dbg !0
@curseg = dso_local global i32 0, align 4, !dbg !7
@current = dso_local global i8* null, align 8, !dbg !10
@rlen = dso_local global i32 0, align 4, !dbg !14
@len = dso_local global i32 0, align 4, !dbg !16
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"(len <= 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_55980_vul/081_testrecurse.c_247_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [28 x i8] c"int target_function(char *)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"rlen\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"curseg\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"current\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_function(i8* noundef %0) #0 !dbg !28 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !32, metadata !DIExpression()), !dbg !33
  %4 = load i32, i32* @len, align 4, !dbg !34
  %5 = load i32, i32* @rlen, align 4, !dbg !36
  %6 = icmp sge i32 %4, %5, !dbg !37
  br i1 %6, label %7, label %42, !dbg !38

7:                                                ; preds = %1
  %8 = load i32, i32* @curseg, align 4, !dbg !39
  %9 = icmp sge i32 %8, 1001, !dbg !42
  br i1 %9, label %10, label %11, !dbg !43

10:                                               ; preds = %7
  store i32 0, i32* @rlen, align 4, !dbg !44
  store i32 0, i32* %2, align 4, !dbg !46
  br label %43, !dbg !46

11:                                               ; preds = %7
  %12 = load i32, i32* @rlen, align 4, !dbg !47
  store i32 %12, i32* @len, align 4, !dbg !48
  store i32 0, i32* @rlen, align 4, !dbg !49
  %13 = load i32, i32* @len, align 4, !dbg !50
  %14 = icmp sle i32 %13, 1024, !dbg !50
  br i1 %14, label %15, label %17, !dbg !50

15:                                               ; preds = %11
  br i1 true, label %16, label %17, !dbg !50

16:                                               ; preds = %15
  br label %19, !dbg !50

17:                                               ; preds = %15, %11
  %18 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.3, i64 0, i64 0), i32 noundef 26, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !50
  br label %19, !dbg !50

19:                                               ; preds = %17, %16
  %20 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.3, i64 0, i64 0), i32 noundef 27, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !51
  %21 = load i8*, i8** %3, align 8, !dbg !52
  %22 = load i8*, i8** @current, align 8, !dbg !53
  %23 = load i32, i32* @len, align 4, !dbg !54
  %24 = sext i32 %23 to i64, !dbg !54
  %25 = call i8* @memcpy(i8* %21, i8* %22, i64 %24), !dbg !55
  %26 = load i32, i32* @curseg, align 4, !dbg !56
  %27 = add nsw i32 %26, 1, !dbg !56
  store i32 %27, i32* @curseg, align 4, !dbg !56
  %28 = load i32, i32* @curseg, align 4, !dbg !57
  %29 = icmp eq i32 %28, 1000, !dbg !59
  br i1 %29, label %30, label %35, !dbg !60

30:                                               ; preds = %19
  %31 = load i8*, i8** @finish, align 8, !dbg !61
  %32 = call i64 @strlen(i8* noundef %31) #8, !dbg !63
  %33 = trunc i64 %32 to i32, !dbg !63
  store i32 %33, i32* @rlen, align 4, !dbg !64
  %34 = load i8*, i8** @finish, align 8, !dbg !65
  store i8* %34, i8** @current, align 8, !dbg !66
  br label %41, !dbg !67

35:                                               ; preds = %19
  %36 = load i32, i32* @curseg, align 4, !dbg !68
  %37 = srem i32 %36, 100, !dbg !71
  %38 = icmp eq i32 %37, 0, !dbg !72
  br i1 %38, label %39, label %40, !dbg !73

39:                                               ; preds = %35
  br label %40, !dbg !74

40:                                               ; preds = %39, %35
  br label %41

41:                                               ; preds = %40, %30
  br label %42, !dbg !76

42:                                               ; preds = %41, %1
  store i32 1, i32* %2, align 4, !dbg !77
  br label %43, !dbg !77

43:                                               ; preds = %42, %10
  %44 = load i32, i32* %2, align 4, !dbg !78
  ret i32 %44, !dbg !78
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !79 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [1024 x i8]* %2, metadata !82, metadata !DIExpression()), !dbg !86
  call void @klee_make_symbolic(i8* noundef bitcast (i32* @len to i8*), i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)), !dbg !87
  call void @klee_make_symbolic(i8* noundef bitcast (i32* @rlen to i8*), i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)), !dbg !88
  call void @klee_make_symbolic(i8* noundef bitcast (i32* @curseg to i8*), i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)), !dbg !89
  %3 = call noalias i8* @malloc(i64 noundef 1024) #9, !dbg !90
  store i8* %3, i8** @current, align 8, !dbg !91
  %4 = load i8*, i8** @current, align 8, !dbg !92
  %5 = icmp ne i8* %4, null, !dbg !93
  %6 = zext i1 %5 to i32, !dbg !93
  %7 = sext i32 %6 to i64, !dbg !92
  call void @klee_assume(i64 noundef %7), !dbg !94
  %8 = load i8*, i8** @current, align 8, !dbg !95
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 1024, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)), !dbg !96
  %9 = load i32, i32* @len, align 4, !dbg !97
  %10 = icmp sge i32 %9, 0, !dbg !98
  %11 = zext i1 %10 to i32, !dbg !98
  %12 = sext i32 %11 to i64, !dbg !97
  call void @klee_assume(i64 noundef %12), !dbg !99
  %13 = load i32, i32* @rlen, align 4, !dbg !100
  %14 = icmp sge i32 %13, 0, !dbg !101
  %15 = zext i1 %14 to i32, !dbg !101
  %16 = sext i32 %15 to i64, !dbg !100
  call void @klee_assume(i64 noundef %16), !dbg !102
  %17 = load i32, i32* @curseg, align 4, !dbg !103
  %18 = icmp sge i32 %17, 0, !dbg !104
  %19 = zext i1 %18 to i32, !dbg !104
  %20 = sext i32 %19 to i64, !dbg !103
  call void @klee_assume(i64 noundef %20), !dbg !105
  %21 = load i32, i32* @curseg, align 4, !dbg !106
  %22 = icmp slt i32 %21, 1001, !dbg !107
  %23 = zext i1 %22 to i32, !dbg !107
  %24 = sext i32 %23 to i64, !dbg !106
  call void @klee_assume(i64 noundef %24), !dbg !108
  %25 = load i32, i32* @len, align 4, !dbg !109
  %26 = load i32, i32* @rlen, align 4, !dbg !110
  %27 = icmp sge i32 %25, %26, !dbg !111
  %28 = zext i1 %27 to i32, !dbg !111
  %29 = sext i32 %28 to i64, !dbg !109
  call void @klee_assume(i64 noundef %29), !dbg !112
  %30 = load i32, i32* @curseg, align 4, !dbg !113
  %31 = icmp slt i32 %30, 1001, !dbg !114
  %32 = zext i1 %31 to i32, !dbg !114
  %33 = sext i32 %32 to i64, !dbg !113
  call void @klee_assume(i64 noundef %33), !dbg !115
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !116
  %35 = call i32 @target_function(i8* noundef %34), !dbg !117
  %36 = load i8*, i8** @current, align 8, !dbg !118
  call void @free(i8* noundef %36) #9, !dbg !119
  ret i32 0, !dbg !120
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #6

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !121 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !130, metadata !DIExpression()), !dbg !131
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !132, metadata !DIExpression()), !dbg !133
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !134, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata i8** %7, metadata !136, metadata !DIExpression()), !dbg !137
  %9 = load i8*, i8** %4, align 8, !dbg !138
  store i8* %9, i8** %7, align 8, !dbg !137
  call void @llvm.dbg.declare(metadata i8** %8, metadata !139, metadata !DIExpression()), !dbg !142
  %10 = load i8*, i8** %5, align 8, !dbg !143
  store i8* %10, i8** %8, align 8, !dbg !142
  br label %11, !dbg !144

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !145
  %13 = add i64 %12, -1, !dbg !145
  store i64 %13, i64* %6, align 8, !dbg !145
  %14 = icmp ugt i64 %12, 0, !dbg !146
  br i1 %14, label %15, label %21, !dbg !144

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !147
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !147
  store i8* %17, i8** %8, align 8, !dbg !147
  %18 = load i8, i8* %16, align 1, !dbg !148
  %19 = load i8*, i8** %7, align 8, !dbg !149
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !149
  store i8* %20, i8** %7, align 8, !dbg !149
  store i8 %18, i8* %19, align 1, !dbg !150
  br label %11, !dbg !144, !llvm.loop !151

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !153
  ret i8* %22, !dbg !154
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!2, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27, !27}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "finish", scope: !2, file: !3, line: 11, type: !12, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/081_testrecurse.c_247_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "8aaff65251573cdef6ec8903fc14d194")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0, !7, !10, !14, !16}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "curseg", scope: !2, file: !3, line: 12, type: !9, isLocal: false, isDefinition: true)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "current", scope: !2, file: !3, line: 13, type: !12, isLocal: false, isDefinition: true)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "rlen", scope: !2, file: !3, line: 14, type: !9, isLocal: false, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "len", scope: !2, file: !3, line: 15, type: !9, isLocal: false, isDefinition: true)
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
!28 = distinct !DISubprogram(name: "target_function", scope: !3, file: !3, line: 17, type: !29, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !31)
!29 = !DISubroutineType(types: !30)
!30 = !{!9, !12}
!31 = !{}
!32 = !DILocalVariable(name: "buffer", arg: 1, scope: !28, file: !3, line: 17, type: !12)
!33 = !DILocation(line: 17, column: 27, scope: !28)
!34 = !DILocation(line: 18, column: 9, scope: !35)
!35 = distinct !DILexicalBlock(scope: !28, file: !3, line: 18, column: 9)
!36 = !DILocation(line: 18, column: 16, scope: !35)
!37 = !DILocation(line: 18, column: 13, scope: !35)
!38 = !DILocation(line: 18, column: 9, scope: !28)
!39 = !DILocation(line: 19, column: 13, scope: !40)
!40 = distinct !DILexicalBlock(scope: !41, file: !3, line: 19, column: 13)
!41 = distinct !DILexicalBlock(scope: !35, file: !3, line: 18, column: 22)
!42 = !DILocation(line: 19, column: 20, scope: !40)
!43 = !DILocation(line: 19, column: 13, scope: !41)
!44 = !DILocation(line: 20, column: 18, scope: !45)
!45 = distinct !DILexicalBlock(scope: !40, file: !3, line: 19, column: 38)
!46 = !DILocation(line: 21, column: 13, scope: !45)
!47 = !DILocation(line: 23, column: 15, scope: !41)
!48 = !DILocation(line: 23, column: 13, scope: !41)
!49 = !DILocation(line: 24, column: 14, scope: !41)
!50 = !DILocation(line: 26, column: 9, scope: !41)
!51 = !DILocation(line: 27, column: 9, scope: !41)
!52 = !DILocation(line: 29, column: 16, scope: !41)
!53 = !DILocation(line: 29, column: 24, scope: !41)
!54 = !DILocation(line: 29, column: 33, scope: !41)
!55 = !DILocation(line: 29, column: 9, scope: !41)
!56 = !DILocation(line: 30, column: 15, scope: !41)
!57 = !DILocation(line: 31, column: 13, scope: !58)
!58 = distinct !DILexicalBlock(scope: !41, file: !3, line: 31, column: 13)
!59 = !DILocation(line: 31, column: 20, scope: !58)
!60 = !DILocation(line: 31, column: 13, scope: !41)
!61 = !DILocation(line: 32, column: 27, scope: !62)
!62 = distinct !DILexicalBlock(scope: !58, file: !3, line: 31, column: 34)
!63 = !DILocation(line: 32, column: 20, scope: !62)
!64 = !DILocation(line: 32, column: 18, scope: !62)
!65 = !DILocation(line: 33, column: 23, scope: !62)
!66 = !DILocation(line: 33, column: 21, scope: !62)
!67 = !DILocation(line: 34, column: 9, scope: !62)
!68 = !DILocation(line: 35, column: 17, scope: !69)
!69 = distinct !DILexicalBlock(scope: !70, file: !3, line: 35, column: 17)
!70 = distinct !DILexicalBlock(scope: !58, file: !3, line: 34, column: 16)
!71 = !DILocation(line: 35, column: 24, scope: !69)
!72 = !DILocation(line: 35, column: 43, scope: !69)
!73 = !DILocation(line: 35, column: 17, scope: !70)
!74 = !DILocation(line: 37, column: 13, scope: !75)
!75 = distinct !DILexicalBlock(scope: !69, file: !3, line: 35, column: 49)
!76 = !DILocation(line: 39, column: 5, scope: !41)
!77 = !DILocation(line: 40, column: 5, scope: !28)
!78 = !DILocation(line: 41, column: 1, scope: !28)
!79 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 43, type: !80, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !31)
!80 = !DISubroutineType(types: !81)
!81 = !{!9}
!82 = !DILocalVariable(name: "buffer", scope: !79, file: !3, line: 44, type: !83)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8192, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 1024)
!86 = !DILocation(line: 44, column: 10, scope: !79)
!87 = !DILocation(line: 46, column: 5, scope: !79)
!88 = !DILocation(line: 47, column: 5, scope: !79)
!89 = !DILocation(line: 48, column: 5, scope: !79)
!90 = !DILocation(line: 50, column: 15, scope: !79)
!91 = !DILocation(line: 50, column: 13, scope: !79)
!92 = !DILocation(line: 51, column: 17, scope: !79)
!93 = !DILocation(line: 51, column: 25, scope: !79)
!94 = !DILocation(line: 51, column: 5, scope: !79)
!95 = !DILocation(line: 52, column: 24, scope: !79)
!96 = !DILocation(line: 52, column: 5, scope: !79)
!97 = !DILocation(line: 54, column: 17, scope: !79)
!98 = !DILocation(line: 54, column: 21, scope: !79)
!99 = !DILocation(line: 54, column: 5, scope: !79)
!100 = !DILocation(line: 55, column: 17, scope: !79)
!101 = !DILocation(line: 55, column: 22, scope: !79)
!102 = !DILocation(line: 55, column: 5, scope: !79)
!103 = !DILocation(line: 56, column: 17, scope: !79)
!104 = !DILocation(line: 56, column: 24, scope: !79)
!105 = !DILocation(line: 56, column: 5, scope: !79)
!106 = !DILocation(line: 57, column: 17, scope: !79)
!107 = !DILocation(line: 57, column: 24, scope: !79)
!108 = !DILocation(line: 57, column: 5, scope: !79)
!109 = !DILocation(line: 58, column: 17, scope: !79)
!110 = !DILocation(line: 58, column: 24, scope: !79)
!111 = !DILocation(line: 58, column: 21, scope: !79)
!112 = !DILocation(line: 58, column: 5, scope: !79)
!113 = !DILocation(line: 59, column: 17, scope: !79)
!114 = !DILocation(line: 59, column: 24, scope: !79)
!115 = !DILocation(line: 59, column: 5, scope: !79)
!116 = !DILocation(line: 61, column: 21, scope: !79)
!117 = !DILocation(line: 61, column: 5, scope: !79)
!118 = !DILocation(line: 63, column: 10, scope: !79)
!119 = !DILocation(line: 63, column: 5, scope: !79)
!120 = !DILocation(line: 64, column: 5, scope: !79)
!121 = distinct !DISubprogram(name: "memcpy", scope: !122, file: !122, line: 12, type: !123, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !31)
!122 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!123 = !DISubroutineType(types: !124)
!124 = !{!5, !5, !125, !127}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !128, line: 46, baseType: !129)
!128 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!129 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!130 = !DILocalVariable(name: "destaddr", arg: 1, scope: !121, file: !122, line: 12, type: !5)
!131 = !DILocation(line: 12, column: 20, scope: !121)
!132 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !121, file: !122, line: 12, type: !125)
!133 = !DILocation(line: 12, column: 42, scope: !121)
!134 = !DILocalVariable(name: "len", arg: 3, scope: !121, file: !122, line: 12, type: !127)
!135 = !DILocation(line: 12, column: 58, scope: !121)
!136 = !DILocalVariable(name: "dest", scope: !121, file: !122, line: 13, type: !12)
!137 = !DILocation(line: 13, column: 9, scope: !121)
!138 = !DILocation(line: 13, column: 16, scope: !121)
!139 = !DILocalVariable(name: "src", scope: !121, file: !122, line: 14, type: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!142 = !DILocation(line: 14, column: 15, scope: !121)
!143 = !DILocation(line: 14, column: 21, scope: !121)
!144 = !DILocation(line: 16, column: 3, scope: !121)
!145 = !DILocation(line: 16, column: 13, scope: !121)
!146 = !DILocation(line: 16, column: 16, scope: !121)
!147 = !DILocation(line: 17, column: 19, scope: !121)
!148 = !DILocation(line: 17, column: 15, scope: !121)
!149 = !DILocation(line: 17, column: 10, scope: !121)
!150 = !DILocation(line: 17, column: 13, scope: !121)
!151 = distinct !{!151, !144, !147, !152}
!152 = !{!"llvm.loop.mustprogress"}
!153 = !DILocation(line: 18, column: 10, scope: !121)
!154 = !DILocation(line: 18, column: 3, scope: !121)

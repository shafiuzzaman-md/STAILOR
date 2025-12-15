; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/034_runtest.c_4264_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/034_runtest.c_4264_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@baseFilename.result = internal global [256 x i8] zeroinitializer, align 16, !dbg !0
@.str = private unnamed_addr constant [20 x i8] c"baseFilename_result\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"checkTestFile_ret\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"subdir\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"(len <= (int)(sizeof(prefix) - 1)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/034_runtest.c_4264_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @baseFilename(i8* noundef %0) #0 !dbg !2 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !26, metadata !DIExpression()), !dbg !27
  call void @klee_make_symbolic(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @baseFilename.result, i64 0, i64 0), i64 noundef 256, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0)), !dbg !28
  %4 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @baseFilename.result, i64 0, i64 255), align 1, !dbg !29
  %5 = sext i8 %4 to i32, !dbg !29
  %6 = icmp eq i32 %5, 0, !dbg !30
  %7 = zext i1 %6 to i32, !dbg !30
  %8 = sext i32 %7 to i64, !dbg !29
  call void @klee_assume(i64 noundef %8), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %3, metadata !32, metadata !DIExpression()), !dbg !33
  %9 = call i64 @strlen(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @baseFilename.result, i64 0, i64 0)) #5, !dbg !34
  %10 = trunc i64 %9 to i32, !dbg !34
  store i32 %10, i32* %3, align 4, !dbg !33
  %11 = load i32, i32* %3, align 4, !dbg !35
  %12 = icmp sge i32 %11, 4, !dbg !36
  %13 = zext i1 %12 to i32, !dbg !36
  %14 = sext i32 %13 to i64, !dbg !35
  call void @klee_assume(i64 noundef %14), !dbg !37
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @baseFilename.result, i64 0, i64 0), !dbg !38
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @checkTestFile(i8* noundef %0) #0 !dbg !39 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata i32* %3, metadata !44, metadata !DIExpression()), !dbg !45
  %4 = bitcast i32* %3 to i8*, !dbg !46
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0)), !dbg !47
  %5 = load i32, i32* %3, align 4, !dbg !48
  ret i32 %5, !dbg !49
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !50 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [256 x i8], align 16
  %7 = alloca [500 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !54, metadata !DIExpression()), !dbg !55
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !56
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !57
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !58
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 256, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !59
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !60
  %15 = load i8, i8* %14, align 1, !dbg !60
  %16 = sext i8 %15 to i32, !dbg !60
  %17 = icmp eq i32 %16, 0, !dbg !61
  %18 = zext i1 %17 to i32, !dbg !61
  %19 = sext i32 %18 to i64, !dbg !60
  call void @klee_assume(i64 noundef %19), !dbg !62
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !63
  %21 = load i8, i8* %20, align 1, !dbg !63
  %22 = sext i8 %21 to i32, !dbg !63
  %23 = icmp eq i32 %22, 0, !dbg !64
  %24 = zext i1 %23 to i32, !dbg !64
  %25 = sext i32 %24 to i64, !dbg !63
  call void @klee_assume(i64 noundef %25), !dbg !65
  call void @llvm.dbg.declare(metadata i8** %4, metadata !66, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata i32* %5, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata [256 x i8]* %6, metadata !70, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.declare(metadata [500 x i8]* %7, metadata !72, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata i8** %8, metadata !77, metadata !DIExpression()), !dbg !78
  store i8* null, i8** %8, align 8, !dbg !78
  call void @llvm.dbg.declare(metadata i8** %9, metadata !79, metadata !DIExpression()), !dbg !80
  store i8* null, i8** %9, align 8, !dbg !80
  call void @llvm.dbg.declare(metadata i8** %10, metadata !81, metadata !DIExpression()), !dbg !82
  store i8* null, i8** %10, align 8, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %11, metadata !83, metadata !DIExpression()), !dbg !84
  store i32 0, i32* %11, align 4, !dbg !84
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !85
  %27 = call i8* @baseFilename(i8* noundef %26), !dbg !86
  store i8* %27, i8** %4, align 8, !dbg !87
  %28 = load i8*, i8** %4, align 8, !dbg !88
  %29 = call i64 @strlen(i8* noundef %28) #5, !dbg !89
  %30 = trunc i64 %29 to i32, !dbg !89
  store i32 %30, i32* %5, align 4, !dbg !90
  %31 = load i32, i32* %5, align 4, !dbg !91
  %32 = sub nsw i32 %31, 4, !dbg !91
  store i32 %32, i32* %5, align 4, !dbg !91
  %33 = load i32, i32* %5, align 4, !dbg !92
  %34 = icmp sle i32 %33, 255, !dbg !92
  br i1 %34, label %35, label %37, !dbg !92

35:                                               ; preds = %0
  br i1 true, label %36, label %37, !dbg !92

36:                                               ; preds = %35
  br label %39, !dbg !92

37:                                               ; preds = %35, %0
  %38 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.6, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !92
  br label %39, !dbg !92

39:                                               ; preds = %37, %36
  %40 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.6, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !93
  ret i32 0, !dbg !94
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!10}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "result", scope: !2, file: !3, line: 11, type: !15, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "baseFilename", scope: !3, file: !3, line: 10, type: !4, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !14)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/034_runtest.c_4264_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "9faf594a005a691f1f2482ffb28a1aa8")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !8}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !11, globals: !13, splitDebugInlining: false, nameTableKind: None)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!0}
!14 = !{}
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 256)
!18 = !{i32 7, !"Dwarf Version", i32 5}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{i32 7, !"PIC Level", i32 2}
!22 = !{i32 7, !"PIE Level", i32 2}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"Ubuntu clang version 14.0.6"}
!26 = !DILocalVariable(name: "filename", arg: 1, scope: !2, file: !3, line: 10, type: !8)
!27 = !DILocation(line: 10, column: 32, scope: !2)
!28 = !DILocation(line: 12, column: 5, scope: !2)
!29 = !DILocation(line: 15, column: 17, scope: !2)
!30 = !DILocation(line: 15, column: 29, scope: !2)
!31 = !DILocation(line: 15, column: 5, scope: !2)
!32 = !DILocalVariable(name: "len", scope: !2, file: !3, line: 18, type: !12)
!33 = !DILocation(line: 18, column: 9, scope: !2)
!34 = !DILocation(line: 18, column: 15, scope: !2)
!35 = !DILocation(line: 19, column: 17, scope: !2)
!36 = !DILocation(line: 19, column: 21, scope: !2)
!37 = !DILocation(line: 19, column: 5, scope: !2)
!38 = !DILocation(line: 21, column: 5, scope: !2)
!39 = distinct !DISubprogram(name: "checkTestFile", scope: !3, file: !3, line: 25, type: !40, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !14)
!40 = !DISubroutineType(types: !41)
!41 = !{!12, !8}
!42 = !DILocalVariable(name: "buf", arg: 1, scope: !39, file: !3, line: 25, type: !8)
!43 = !DILocation(line: 25, column: 31, scope: !39)
!44 = !DILocalVariable(name: "ret", scope: !39, file: !3, line: 26, type: !12)
!45 = !DILocation(line: 26, column: 9, scope: !39)
!46 = !DILocation(line: 27, column: 24, scope: !39)
!47 = !DILocation(line: 27, column: 5, scope: !39)
!48 = !DILocation(line: 28, column: 12, scope: !39)
!49 = !DILocation(line: 28, column: 5, scope: !39)
!50 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 31, type: !51, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !14)
!51 = !DISubroutineType(types: !11)
!52 = !DILocalVariable(name: "filename", scope: !50, file: !3, line: 33, type: !15)
!53 = !DILocation(line: 33, column: 10, scope: !50)
!54 = !DILocalVariable(name: "subdir", scope: !50, file: !3, line: 34, type: !15)
!55 = !DILocation(line: 34, column: 10, scope: !50)
!56 = !DILocation(line: 37, column: 24, scope: !50)
!57 = !DILocation(line: 37, column: 5, scope: !50)
!58 = !DILocation(line: 38, column: 24, scope: !50)
!59 = !DILocation(line: 38, column: 5, scope: !50)
!60 = !DILocation(line: 41, column: 17, scope: !50)
!61 = !DILocation(line: 41, column: 31, scope: !50)
!62 = !DILocation(line: 41, column: 5, scope: !50)
!63 = !DILocation(line: 42, column: 17, scope: !50)
!64 = !DILocation(line: 42, column: 29, scope: !50)
!65 = !DILocation(line: 42, column: 5, scope: !50)
!66 = !DILocalVariable(name: "base", scope: !50, file: !3, line: 45, type: !6)
!67 = !DILocation(line: 45, column: 11, scope: !50)
!68 = !DILocalVariable(name: "len", scope: !50, file: !3, line: 46, type: !12)
!69 = !DILocation(line: 46, column: 9, scope: !50)
!70 = !DILocalVariable(name: "prefix", scope: !50, file: !3, line: 47, type: !15)
!71 = !DILocation(line: 47, column: 10, scope: !50)
!72 = !DILocalVariable(name: "buf", scope: !50, file: !3, line: 48, type: !73)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 4000, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 500)
!76 = !DILocation(line: 48, column: 10, scope: !50)
!77 = !DILocalVariable(name: "result", scope: !50, file: !3, line: 49, type: !6)
!78 = !DILocation(line: 49, column: 11, scope: !50)
!79 = !DILocalVariable(name: "xpath", scope: !50, file: !3, line: 50, type: !6)
!80 = !DILocation(line: 50, column: 11, scope: !50)
!81 = !DILocalVariable(name: "ns", scope: !50, file: !3, line: 51, type: !6)
!82 = !DILocation(line: 51, column: 11, scope: !50)
!83 = !DILocalVariable(name: "ret", scope: !50, file: !3, line: 52, type: !12)
!84 = !DILocation(line: 52, column: 9, scope: !50)
!85 = !DILocation(line: 55, column: 25, scope: !50)
!86 = !DILocation(line: 55, column: 12, scope: !50)
!87 = !DILocation(line: 55, column: 10, scope: !50)
!88 = !DILocation(line: 56, column: 18, scope: !50)
!89 = !DILocation(line: 56, column: 11, scope: !50)
!90 = !DILocation(line: 56, column: 9, scope: !50)
!91 = !DILocation(line: 57, column: 9, scope: !50)
!92 = !DILocation(line: 62, column: 5, scope: !50)
!93 = !DILocation(line: 65, column: 5, scope: !50)
!94 = !DILocation(line: 71, column: 5, scope: !50)
